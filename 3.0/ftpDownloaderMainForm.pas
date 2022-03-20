unit ftpDownloaderMainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, OverbyteIcsFtpCli, OverbyteIcsUrl, OverbyteIcsMultiProgressBar,
  OverbyteIcsWndControl, IdGlobal, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, DlgCountDown;
  //IniFiles;

const
  WM_NEXT_URL = WM_USER + 1;

type
  { We use use derived component to be able to store the data we }
  { need to handle our multiple transfert.                       }
  TMyFtpClient = Class(TFtpClient)
  protected
    FSuccess      : Boolean;
    FSavedMessage : String;
    FURL          : String;
    FBusy         : Boolean;
  end;

  TFtpMultiForm = class(TForm)
    ToolsPanel: TPanel;
    DisplayMemo: TMemo;
    FileListMemo: TMemo;
    Label1: TLabel;
    DoneMemo: TMemo;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);

  private
    FIniFileName : String;
    FInitialized : Boolean;
    FFtpList     : TList;
    FUrlList     : TStringList;
    procedure CreateComponents;
    procedure DeleteComponents;
    procedure StartDownload;
    procedure FtpRequestDone(Sender: TObject; RqType: TFtpRequest;
      ErrCode: Word);
    procedure FtpDisplay(Sender: TObject; var Msg: String);

    procedure WMNextUrl(var msg: TMessage); message WM_NEXT_URL;
    function PickUrl(FtpCli: TMyFtpClient): Boolean;

  public
    procedure Display(Msg : String);
    property IniFileName : String read FIniFileName write FIniFileName;
  end;

var
  FtpMultiForm: TFtpMultiForm;

implementation

uses Unit1, Auth;

{$R *.DFM}

procedure TFtpMultiForm.FormShow(Sender: TObject);
begin
  DisplayMemo.Clear;

  DoneMemo.Clear;
  DisplayMemo.Clear;
  DeleteComponents;
  CreateComponents;

  Form1.ANScopyProgressBar.MinValue := 0;
  Form1.ANScopyProgressBar.Visible := True;
  Form1.ANScopyStatusLabel.Visible := True;
  Form1.ANScopyStatusLabel.Caption := 'Скачивание...';

  StartDownload;
end;

procedure TFtpMultiForm.Display(Msg : String);
begin
    DisplayMemo.Lines.BeginUpdate;
    try
        if DisplayMemo.Lines.Count > 200 then begin
            while DisplayMemo.Lines.Count > 200 do
                DisplayMemo.Lines.Delete(0);
        end;
        DisplayMemo.Lines.Add(Msg);
    finally
        DisplayMemo.Lines.EndUpdate;
        SendMessage(DisplayMemo.Handle, EM_SCROLLCARET, 0, 0);
    end;
end;

procedure TFtpMultiForm.CreateComponents;
var
    I : Integer;
    FtpCli : TMyFtpClient;
begin
    if not Assigned(FFtpList) then
        FFtpList := TList.Create;
    // for I := 1 to StrToInt(ComponentCountEdit.Text) do begin
    // Количество параллельных закачек = 1 (to 1)
    for I := 1 to 1 do begin
        FtpCli               := TMyFtpClient.Create(nil);
        FtpCli.Tag           := I;
        FtpCli.OnRequestDone := FtpRequestDone;
        FtpCli.OnDisplay     := FtpDisplay;
        FFtpList.Add(FtpCli);
    end;
end;

procedure SplitPath(
    const Path     : String;
    var   HostDir  : String;
    var   HostFile : String);
var
    I : Integer;
begin
    I := Length(Path);
    while (I > 0) and (Path[I] <> '/') do
        Dec(I);
    if I = 0 then begin
        HostDir := '';
        HostFile := Path;
    end
    else begin
        HostDir  := Copy(Path, 1, I - 1);
        HostFile := Copy(Path, I + 1, Length(Path));
    end;
end;

function TFtpMultiForm.PickUrl(FtpCli : TMyFtpClient) : Boolean;
var
    URL : String;
    Proto, User, Pass, Host, Port, Path : String;
    HostDir, HostFile : String;
begin
    Result := FALSE;
    while TRUE do begin
        if FUrlList.Count <= 0 then
            Exit;
        URL := FUrlList.Strings[0];
        FUrlList.Delete(0);
        Url := Trim(Url);
        if Url = '' then
            Continue;
        ParseURL(URL, Proto, User, Pass, Host, Port, Path);
        if Path = '' then
            Continue;
        SplitPath(Path, HostDir, HostFile);
        if Proto = '' then
            Proto := 'ftp'
        else
            Proto := LowerCase(Proto);
        if Proto <> 'ftp' then begin
            Display('Bad protocol in url ' + URL);
            Continue;
        end;
        if Port = '' then
            Port := 'ftp';
        if User = '' then begin
            User := 'anonymous';
            if Pass = '' then
                Pass := 'guest@unknown.com';
        end;
        break;
    end;

    FtpCli.FURL          := URL;
    FtpCli.UserName      := PasswordDlg.LoginEdit.Text;
    FtpCli.Password      := PasswordDlg.PassWordEdit.Text;
    FtpCli.HostName      := Host;
    FtpCli.Port          := Port;
    FtpCli.HostDirName   := HostDir;
    FtpCli.HostFileName  := HostFile;
    FtpCli.LocalFileName := Form1.TargetANSedit.Text + '\' + HostFile;
    FtpCli.Binary        := TRUE;
    FtpCli.Passive       := TRUE;
    FtpCli.FBusy         := TRUE;
    FtpCli.OpenAsync;
    Result := TRUE;
end;

procedure TFtpMultiForm.StartDownload;
var
  I : Integer;
begin
    if not Assigned(FUrlList) then
        FUrlList := TStringList.Create
    else
        FUrlList.Clear;
    FUrlList.Assign(FileListMemo.Lines);
    I := 0;
    while (I < FFtpList.Count) and (FUrlList.Count > 0) do begin
        if PickUrl(TMyFtpClient(FFtpList.Items[I])) then
            Inc(I);
    end;
end;

procedure TFtpMultiForm.DeleteComponents;
begin
    if not Assigned(FFtpList) then
        Exit;
    while FFtpList.Count > 0 do begin
        TObject(FFtpList.Items[FFtpList.Count - 1]).Free;
        FFtpList.Delete(FFtpList.Count - 1);
    end;
end;

procedure TFtpMultiForm.FtpDisplay(Sender: TObject; var Msg: String);
var
    FtpCli : TMyFtpClient;
begin
    FtpCli := Sender as TMyFtpClient;
    Display('[' + IntToStr(FtpCli.Tag) + '] ' + Msg);
end;

{ This event handler is used by all FTP component. It is used to start the  }
{ next operation for each transfert.                                        }
procedure TFtpMultiForm.FtpRequestDone(
    Sender  : TObject;
    RqType  : TFtpRequest;
    ErrCode : Word);
var
    FtpCli : TMyFtpClient;
begin
    FtpCli := Sender as TMyFtpClient;
{   Display('OnRequestDone. RqType = ' + IntToStr(Ord(RqType)) + '    ' +
            'ErrCode = ' + IntToStr(ErrCode)); }
    if ErrCode <> 0 then begin
        FtpCli.FSavedMessage := FtpCli.ErrorMessage;
        if RqType = ftpQuitAsync then
            PostMessage(Handle, WM_NEXT_URL, 0, Integer(FtpCli))
        else begin
            { Here we could extend the program to put the failed transfert }
            { on a retry list to try it later. Or simply put it again on   }
            { the list of files. Of course one should detect infinite loop }
            Display('*** ERROR ' + IntToStr(ErrCode) + ' ***');
            Display('*** ' + FtpCli.FSavedMessage + ' ***');
        end;
        Exit;
    end;
    case RqType of
    ftpOpenAsync: FtpCli.UserAsync;
    ftpUserAsync: FtpCli.PassAsync;
    ftpPassAsync: if FtpCli.HostDirName = '' then
                      FtpCli.TypeSetAsync
                  else
                      FtpCli.CwdAsync;
    ftpCwdAsync:  FtpCli.TypeSetAsync;
    ftpTypeSetAsync: FtpCli.GetAsync;
    ftpGetAsync:  begin
                      FtpCli.FSuccess := (FtpCli.StatusCode = 226);
                      { We could optimize by not closing the connection until }
                      { we have the next file to get. If not on same server,  }
                      { we reuse the same connection. If the next file is on  }
                      { another server, then we would close and open the      }
                      { other server.                                         }
                      FtpCli.QuitAsync;
                  end;
    ftpQuitAsync: begin
                      Display('');
                      if FtpCli.FSuccess then
                          Display('File downloaded into "' + FtpCli.LocalFileName + '"')
                      else begin
                          DeleteFile(FtpCli.LocalFileName);
                          Display(FtpCli.FSavedMessage);
                      end;
                      Display('Done.');
                      PostMessage(Handle, WM_NEXT_URL, 0, Integer(FtpCli));
                  end;
    else
        Display('*** Unknown RqType ' + IntToStr(Ord(RqType)) + ' ***');
    end;
end;

procedure TFtpMultiForm.WMNextUrl(var msg: TMessage);
var
    FtpCli : TMyFtpClient;
    I      : Integer;
    Busy   : Boolean;
    ButtonResult : NativeInt;
begin
    // Максимальное значение ANScopyProgressBar привязано к количеству строк
    // в списке файлов для закачки: FileListMemo.Lines.Count - 1
    Form1.ANScopyProgressBar.MinValue := 0;
    Form1.ANScopyProgressBar.MaxValue := FileListMemo.Lines.Count - 1;

    FtpCli := TMyFtpClient(Msg.LParam);
    DoneMemo.Lines.Add(FtpCli.FURL);

    // Прогресс ANScopyProgressBar привязан к количеству строк
    // в списке уже закачанных файлов: DoneMemo.Lines.Count
    Form1.ANScopyProgressBar.Progress := DoneMemo.Lines.Count;

    FtpCli.FBusy := FALSE;
    PickUrl(FtpCli);

    // Check if all FtpCli are not busy anymore
    Busy := FALSE;
    for I := 0 to FFtpList.Count - 1 do
        Busy := Busy or TMyFtpClient(FFtpList.Items[I]).FBusy;
    if not Busy then begin
        Display('Finished !');
        Beep;

        // LaunchCountdown(Handle, 5, cdsByClass, 1, 'Button');
        ButtonResult := MessageBox(Handle,
            'Что-то скачалось... Проверяйте!',
            'ftp downloader',
             MB_OK + MB_ICONINFORMATION);
        Case ButtonResult Of
        ID_OK:
          begin
            ftpMultiForm.Close;
          end;
        end;
    end;
end;

end.
