Unit unit1;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ShellAPI, ShlObj, Menus, Grids, DBGrids, AddSystem,
  ComCtrls, Gauges, XPMan, ExtCtrls, ShellAnimations, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, IdFTPCommon, IdGlobal, IniFiles, IdIntercept, IdLogBase,
  IdLogEvent, ClipBrd, IdExplicitTLSClientServerBase, Masks, MidasLib,
  Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, StrUtils, FileCtrl;

Const
    ID = WM_USER + 1;

Type
  TBuffer = array of Char;
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N50: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N11: TMenuItem;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    N3: TMenuItem;
    N19: TMenuItem;
    menuOnline: TMenuItem;
    N54: TMenuItem;
    N97: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    menuLoc: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N110: TMenuItem;
    N01: TMenuItem;
    N111: TMenuItem;
    N28: TMenuItem;
    N112: TMenuItem;
    N02: TMenuItem;
    N113: TMenuItem;
    N03: TMenuItem;
    N115: TMenuItem;
    N04: TMenuItem;
    N117: TMenuItem;
    N05: TMenuItem;
    N119: TMenuItem;
    N06: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N114: TMenuItem;
    N07: TMenuItem;
    N116: TMenuItem;
    N08: TMenuItem;
    N118: TMenuItem;
    N09: TMenuItem;
    N120: TMenuItem;
    N010: TMenuItem;
    N121: TMenuItem;
    N011: TMenuItem;
    N35: TMenuItem;
    N51: TMenuItem;
    N41: TMenuItem;
    N36: TMenuItem;
    N210: TMenuItem;
    N122: TMenuItem;
    N124: TMenuItem;
    N123: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N211: TMenuItem;
    N212: TMenuItem;
    N213: TMenuItem;
    N37: TMenuItem;
    N214: TMenuItem;
    N127: TMenuItem;
    N012: TMenuItem;
    N128: TMenuItem;
    N013: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N014: TMenuItem;
    N131: TMenuItem;
    N215: TMenuItem;
    N132: TMenuItem;
    N015: TMenuItem;
    N133: TMenuItem;
    N216: TMenuItem;
    N134: TMenuItem;
    N016: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N217: TMenuItem;
    N39: TMenuItem;
    N42: TMenuItem;
    N52: TMenuItem;
    N40: TMenuItem;
    N017: TMenuItem;
    N018: TMenuItem;
    N141: TMenuItem;
    N020: TMenuItem;
    N143: TMenuItem;
    N021: TMenuItem;
    N145: TMenuItem;
    N43: TMenuItem;
    N019: TMenuItem;
    N022: TMenuItem;
    N137: TMenuItem;
    N023: TMenuItem;
    N138: TMenuItem;
    N024: TMenuItem;
    N139: TMenuItem;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    N44: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    N45: TMenuItem;
    N46: TMenuItem;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N9: TMenuItem;
    BitBtn7: TBitBtn;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    IdFTP: TIdFTP;
    btnCopy1: TBitBtn;
    btnCopy2: TBitBtn;
    btnCopy3: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    SourceANSedit: TEdit;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    TargetANSedit: TEdit;
    BitBtn9: TBitBtn;
    TemporaryMemo: TMemo;
    Panel2: TPanel;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Panel8: TPanel;
    SourceIBedit: TEdit;
    SourceIBbutton: TBitBtn;
    MainVolumeText: TLabel;
    FinalVolumeText: TLabel;
    AddSysVolumeText: TLabel;
    OffVolumeText: TLabel;
    MainVolumeValue: TLabel;
    FinalVolumeValue: TLabel;
    AddSysVolumeValue: TLabel;
    OffVolumeValue: TLabel;
    AnsFromFtpCheckBox: TCheckBox;
    SingleIBCopyOffButton: TBitBtn;
    SingleIBCopyOnButton: TBitBtn;
    ANScopyStatusLabel: TLabel;
    ANScopyProgressBar: TGauge;
    ANScopyFindFilesLabel: TLabel;
    Panel10: TPanel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Panel11: TPanel;
    Panel12: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    N8: TMenuItem;
    Panel13: TPanel;
    Panel14: TPanel;
    LoadingImage: TImage;
    BaseLoadingImage: TImage;
    BaseFromFtpCheckBox: TCheckBox;
    BASEcopyProgressBar: TGauge;
    BASEcopyStatusLabel: TLabel;
    BASEcopyFindFilesLabel: TLabel;
    CurrentIBname: TLabel;
    CurrentIBnameLabel: TLabel;
    TotalNumIBCountLabel: TLabel;
    TotalNumIBCount: TLabel;
    CurrentNumIBCount: TLabel;
    CurrentNumIBCountLabel: TLabel;
    Compare1: TBitBtn;
    Compare2: TBitBtn;
    CompareButton: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    ConsCheck: TBitBtn;
    SKS: TMenuItem;
    menuSet: TMenuItem;
    procedure N11Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComplectSelect(ComplectName: string);
    procedure ComplectSelectOff(ComplectNameOff: string);
    procedure N26Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N214Click(Sender: TObject);
    procedure N135Click(Sender: TObject);
    procedure N016Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure N216Click(Sender: TObject);
    procedure N133Click(Sender: TObject);
    procedure N015Click(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure N215Click(Sender: TObject);
    procedure N131Click(Sender: TObject);
    procedure N014Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N013Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure N012Click(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure N011Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N212Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N010Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N213Click(Sender: TObject);
    procedure N125Click(Sender: TObject);
    procedure N09Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N08Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure N07Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N06Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N05Click(Sender: TObject);
    procedure N117Click(Sender: TObject);
    procedure N04Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N03Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N02Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N024Click(Sender: TObject);
    procedure N138Click(Sender: TObject);
    procedure N023Click(Sender: TObject);
    procedure N137Click(Sender: TObject);
    procedure N022Click(Sender: TObject);
    procedure N019Click(Sender: TObject);
    procedure N145Click(Sender: TObject);
    procedure N021Click(Sender: TObject);
    procedure N143Click(Sender: TObject);
    procedure N020Click(Sender: TObject);
    procedure N141Click(Sender: TObject);
    procedure N018Click(Sender: TObject);
    procedure N017Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N46Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
     procedure btnCopy1Click(Sender: TObject);
    procedure btnCopy2Click(Sender: TObject);
    procedure btnCopy3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SingleIBCopyOnButtonClick(Sender: TObject);
    procedure SingleIBCopyOffButtonClick(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure AnsFromFtpCheckBoxEvent(Sender: TObject);
    procedure BaseFromFtpCheckBoxEvent(Sender: TObject);
    procedure ListAllFilesCore(Dir: string);
    procedure N8Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure BitBtn4Click(Sender: TObject);
    procedure Compare1Click(Sender: TObject);
    procedure Compare2Click(Sender: TObject);
    procedure CompareButtonClick(Sender: TObject);
    procedure Panel6DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ConsCheckClick(Sender: TObject);
    procedure SKSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  Private
    { Private declarations }
    function FTPFileExists(const RemoteFile: String): Boolean;
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;

  Public
    { Public declarations }
    Procedure GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
    Message wm_GetMinMaxInfo;

End;

Var
  Form1: TForm1;
  SQL_Quest, Cmpr1, Cmpr2, TitleBase : string;
  IniFile : TIniFile;
  OnlineVersion, SingleIBCopy, FtpDownloadAlarm : Boolean;
  DLL : HMODULE;
  Alarm : Boolean;
  ExitProcFlag : Boolean;

  GIF: TGIFImage;

  param1 : string;

Implementation

uses About, Unit4, Auth, ftpDownloaderMainForm, Compare, TlHelp32, ComObj, ActiveX, Registry,
 ConsCheck;

{$R *.dfm}

var
  AverageSpeed: Double=0;

{ ============================== ����������� �������� ������� =====================================}

//�������� ������
procedure CreateBuffer( Names : array of string; var P : TBuffer );
var
  I, J, L : Integer;
begin
  for I := Low( Names ) to High( Names ) do
  begin
    L := Length( P );
    SetLength( P, L + Length( Names[ I ] ) + 1 );
    for J := 0 to Length( Names[ I ] ) - 1 do
      P[ L + J ] := Names[ I, J + 1 ];
    P[ L + J ] := #0;
  end;
  SetLength( P, Length( P ) + 1 );
  P[ Length( P ) ] := #0;
end;

//������� �����������
function CopyFiles( Handle : Hwnd; Src : array of string;
  Dest : string; Move : Boolean; AutoRename : Boolean ) : Integer;
var
  SHFileOpStruct : TSHFileOpStruct;
  SrcBuf : TBuffer;
begin
  CreateBuffer( Src, SrcBuf );
  with SHFileOpStruct do
  begin
    Wnd := Handle;
    wFunc := FO_COPY;
    if Move then wFunc := FO_MOVE;
    pFrom := Pointer( SrcBuf );
    pTo := PChar( Dest + #0 );
    fFlags := 0;
    if AutoRename then fFlags := FOF_RENAMEONCOLLISION;
    fAnyOperationsAborted := False;
    hNameMappings := nil;
    lpszProgressTitle := nil;
  end;
  Result := SHFileOperation( SHFileOpStruct );
  SrcBuf := nil;
end;

//������� ������� ����� ����������
function DelDirNoSilent(dir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_DELETE;
//    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom  := PChar(dir + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;

//������� ��������� ������� ������
function GetLinkParams(LinkFile:string;var IcoIndex:integer;var ShowCmd:DWORD;
var Path,Params,WorkDir,Description,IconPath:string):boolean;
var
  WideFile : WideString;
  buf : array[1..1024] of char;
  i:integer;
  fd : TWin32FindData;

  DefObject : IUnknown;
  DefSLink : IShellLink;
  DefPFile : IPersistFile;
begin
  result := false;
  DefObject := CreateComObject(CLSID_ShellLink);
  DefSLink := DefObject as IShellLink;
  DefPFile := DefObject as IPersistFile;
  WideFile := LinkFile;
  if DefPFile.Load(pwchar(WideFile),0) = S_OK then
  with DefSLink do
  begin
    If GetDescription(@Buf, SizeOf(Buf)) = NOERROR Then
      Description := Copy(Buf, 1, lstrlen(@Buf)) Else Description := '';
    if GetArguments(@buf, sizeof(buf)) = NOERROR then
      Params := copy(buf, 1, lstrlen(@buf)) else Params := '';
    if GetPath(@buf, sizeof(buf),fd,0) = NOERROR then
      Path := copy(buf, 1, lstrlen(@buf)) else Path := '';
    if GetWorkingDirectory(@buf, sizeof(buf)) = NOERROR then
      WorkDir := copy(buf, 1, lstrlen(@buf)) else WorkDir := '';
    if GetIconLocation(@buf, sizeof(buf),i) = NOERROR then
    begin
      IconPath := copy(buf, 1, lstrlen(@buf));
      IcoIndex := i;
    end
    else
    begin
      IconPath := '';
      IcoIndex := 0;
    end;
    if GetShowCmd(i) = NOERROR then
      ShowCmd := i else ShowCmd := SW_SHOW;
    result := true;
  end;
end;

// ������� ������ ������ � �����
procedure DirectorySize(const ADirectory: String; out ATotalSize: Int64);
var
  SR: TSearchRec;
begin
  if FindFirst(ADirectory + '\*.*', faDirectory, sr) = 0 then
  begin
    repeat
      if ((SR.Attr and faDirectory) = SR.Attr) and (SR.Name <> '.') and (SR.Name <> '..') then
        DirectorySize(ADirectory + '\' + Sr.Name, ATotalSize);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;

  if FindFirst(ADirectory + '\*.*', 0, SR) = 0 then
  begin
    repeat
      Inc(ATotalSize, SR.Size);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;


//��������� ������ ������ � �����
procedure GatherFilesFromDirectory(const ADirectory: String;
  var AFileList: TStringList);
var
  SR: TSearchRec;
begin
  if FindFirst(ADirectory + '\*.*', faDirectory, sr) = 0 then
  begin
    repeat
      if ((SR.Attr and faDirectory) = SR.Attr) and (SR.Name <> '.') and (SR.Name <> '..') then
        GatherFilesFromDirectory(ADirectory + '\' + Sr.Name, AFileList);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;

  if FindFirst(ADirectory + '\*.*', 0, SR) = 0 then
  begin
    repeat
      AFileList.Add(ADirectory + '\' + SR.Name);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;

// ����� ������ �� ����� �� ����� ������ ���������, ������� � ����������
procedure FindFiles(StartFolder, Mask: string; List: TStrings; ScanSubFolders: Boolean);
var
  SearchRec: TSearchRec;
  FindResult: Integer;
begin
  List.BeginUpdate;
  try
    StartFolder := IncludeTrailingBackslash(StartFolder);
    FindResult := FindFirst(StartFolder + '*.*', faAnyFile, SearchRec);
    try
      while FindResult = 0 do
        with SearchRec do
        begin
          if (Attr and faDirectory) <> 0 then
          begin
            if ScanSubFolders and (Name <> '.') and (Name <> '..') then
              FindFiles(StartFolder + Name, Mask, List, ScanSubFolders);
          end
          else
          begin
            if MatchesMask(Name, Mask) then
              List.Add(StartFolder + Name);
          end;
          FindResult := FindNext(SearchRec);
        end;
    finally
      FindClose(SearchRec);
    end;
  finally
    List.EndUpdate;
  end;
end;

// ������� ������� �������� ����������
function StartApp(apchOperation, apchFileName, apchParameters, apchDirectory: PChar; awrdShowCmd: Word): Cardinal;
var
    lseiInfo: TShellExecuteInfo;
    ExitCode: DWORD;

    // hw: hwnd;
    // FormRgn: HRGN;

 begin
    Result := 0;
    FillChar(lseiInfo, SizeOf(lseiInfo), Chr(0));
    lseiInfo.cbSize := SizeOf(lseiInfo);
    lseiInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
    lseiInfo.lpVerb := apchOperation;
    lseiInfo.lpFile := apchFileName;
    lseiInfo.lpParameters := apchParameters;
    lseiInfo.lpDirectory := apchDirectory;
    lseiInfo.nShow := awrdShowCmd;
//    if Boolean(ShellExecuteEx(@lseiInfo)) then
//    Result := lseiInfo.hProcess;
    if ShellExecuteEx(@lseiInfo) then
    begin
      // sleep(100);
      // hw:=FindWindow(nil,'WinSCP'); //������� ������ ������� ����
      // ������� ������ ������� ����
      // hw := FindWindow('ConsoleWindowClass', nil);
      // ������ ��� �������� ����� ������ ����������
      // Windows.SetParent(hw, Form1.Handle);
      // C������ ���� � ������� 0,0 � ������������� ����� ��p��� � ������ ����
      // MoveWindow(hw, 0, 0, Form1.ClientWidth, Form1.ClientHeight, True);
      // MoveWindow(hw, 0, 0, 640, 300, True);
      //��������� ����� ������� ������� �������
      // FormRgn := CreateRectRgn(1, 10, 640, 300);
      // SetWindowRgn(hw, FormRgn, True); //�������� ��� ������
      repeat Application.ProcessMessages;
        GetExitCodeProcess(lseiInfo.hProcess, ExitCode);
      until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
      if ExitCode = 1 then FtpDownloadAlarm := True;
              {  begin
                 MessageBox(Form1.Handle,
                   PChar('���-�� ���������... ����������! ' +
                   '��� ����������: ' + IntToStr(ExitCode)),
                   '�������������� ���������',
                   MB_OK + MB_ICONINFORMATION);
                end;   }
    end;
 end;

// ������� ������� ����������
function StartRAR(apchOperation, apchFileName, apchParameters, apchDirectory: PChar; awrdShowCmd: Word): Cardinal;
var
  lseiInfo: TShellExecuteInfo;
  ExitCode: DWORD;
begin
  Result := 0;
  Alarm := False;
  FillChar(lseiInfo, SizeOf(lseiInfo), Chr(0));
  lseiInfo.cbSize := SizeOf(lseiInfo);
  lseiInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
  lseiInfo.lpVerb := apchOperation;
  lseiInfo.lpFile := apchFileName;
  lseiInfo.lpParameters := apchParameters;
  lseiInfo.lpDirectory := apchDirectory;
  lseiInfo.nShow := awrdShowCmd;
  if ShellExecuteEx(@lseiInfo) then
  begin
    repeat Application.ProcessMessages;
      GetExitCodeProcess(lseiInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
    if ExitCode <> 0 then
    begin
//      MessageBox(Form1.Handle, '�� ����� ���������� ������ �������� �������������� ������...',
//                '���-�� ����� �� ���!', MB_OK + MB_ICONINFORMATION);
      Alarm := True;
    end;
  end;
end;

function TForm1.FTPFileExists(const RemoteFile: String): Boolean;
begin
  IdFTP.List (nil, '-la ' + RemoteFile, False);
  Result := IdFTP.DirectoryListing.Count > 0;
end;

// ��������� ��������� ���� ������ �� ����� �� ftp-�������
procedure TForm1.ListAllFilesCore(Dir: string);
var
  ftpContent: TStringList;
  i: SmallInt;
begin
  ftpContent:=TStringList.Create;
  try
    IdFTP.ChangeDir(Dir);
    IdFTP.List(ftpContent, '', False);

    ANScopyProgressBar.MinValue := 0;
    ANScopyProgressBar.MaxValue := ftpContent.Count - 1;

    BASEcopyProgressBar.MinValue := 0;
    BASEcopyProgressBar.MaxValue := ftpContent.Count - 1;

    for i := 0 to ftpContent.Count - 1 do
    begin
      if IdFTP.Size(ftpContent.Strings[i]) = -1 then // ���� ��������� ������� �������� ������
        ListAllFilesCore(ftpContent.Strings[i])
      else
      begin
        // �������� � ����� � ��������� �� ��������� WinSCP
        // TemporaryMemo.Lines.Add('ftp://'+ idFTP.Host + idFTP.RetrieveCurrentDir + '/' + ftpContent.Strings[i]);

        TemporaryMemo.Lines.Add(idFTP.RetrieveCurrentDir + '/' + ftpContent.Strings[i]);

        // TemporaryMemo.Lines.SaveToFile('ans_list.tmp');

        ANScopyStatusLabel.Caption := '�����: ';
        ANScopyFindFilesLabel.Caption := idFTP.RetrieveCurrentDir;
        ANScopyStatusLabel.Update;
        ANScopyFindFilesLabel.Update;
        ANScopyProgressBar.Progress := i;

        BASEcopyStatusLabel.Caption := '�����: ';
        BASEcopyFindFilesLabel.Caption := idFTP.RetrieveCurrentDir;
        BASEcopyStatusLabel.Update;
        BASEcopyFindFilesLabel.Update;
        BASEcopyProgressBar.Progress := i;

        Application.ProcessMessages;
      end;
    end;
    IdFTP.ChangeDirUp;
    IdFTP.List(ftpContent, '', False); // ���������� �����!!!
  finally
    FreeAndNil(ftpContent);
  end;
end;

//��������� ������ ���������
procedure TForm1.ComplectSelect(ComplectName: string);
var
  i : smallint;
  MainSizeResult : real;
begin
  DataModule5.ClientDataSet1.First;
  OnlineVersion:= False;
  MainSizeResult:=0;

  DataModule5.ClientDataSet1.Active := False;
  DataModule5.SQLQuery2.Close;
  DataModule5.SQLQuery2.SQL.Clear;
  DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM Complect WHERE ComplectName=''' + ComplectName + '''';   // �������� ������ �������� ����� �� �� �������� Complect
  DataModule5.SQLQuery2.Open;
  DataModule5.ClientDataSet1.Active := True;

  ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;

  DataModule5.ClientDataSet1.Active := False;
  DataModule5.SQLQuery1.Close;
  DataModule5.SQLQuery1.SQL.Clear;
  DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';   //������������ �������� ���� ���������� ��������� �� ������� System
  DataModule5.SQLQuery1.Open;
  DataModule5.ClientDataSet1.Active := True;

  for i  := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do
      begin
      MainSizeResult := MainSizeResult + StrToFloat(StringReplace(DataModule5.SQLQuery1.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ));
      DataModule5.SQLQuery1.Next;
      end;
   MainVolumeValue.Caption := FloatToStr(MainSizeResult);
   MainVolumeValue.Visible := True;
  for I := 0 to Form2.ComponentCount-1 do
      begin
        if (Form2.components[I] is TCheckBox) and TCheckBox(Form2.components[I]).Checked then
         TCheckBox(Form2.components[I]).Checked:=False;
      end;

  DBGridEh1.Columns[3].Visible := False;
  DBGridEh1.Columns[4].Visible := True;
  DBGridEh1.Columns[4].Width := 65;
  DBGridEh3.Columns[4].Width := 65;
end;

//��������� ����� ��������� � ������� ������
procedure TForm1.ComplectSelectOff(ComplectNameOff: string);
var
  i : smallint;
  OffSizeResult : real;
begin
  DataModule5.ClientDataSet3.First;

  OffSizeResult:=0;

  DataModule5.ClientDataSet3.Active := False;
  DataModule5.SQLQuery6.Close;
  DataModule5.SQLQuery6.SQL.Clear;
  DataModule5.SQLQuery6.SQL.Text := 'SELECT Base_id FROM ComplectOff WHERE ComplectName=''' + ComplectNameOff + '''';
  DataModule5.SQLQuery6.Open;
  DataModule5.ClientDataSet3.Active := True;

  ComplectNameOff:=DataModule5.SQLQuery6.Fields[0].AsString;

  DataModule5.ClientDataSet3.Active := False;
  DataModule5.SQLQuery5.Close;
  DataModule5.SQLQuery5.SQL.Clear;
  DataModule5.SQLQuery5.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectNameOff + ') ORDER BY id ASC;';
  DataModule5.SQLQuery5.Open;
  DataModule5.ClientDataSet3.Active := True;

  for i  := 0 to DataModule5.ClientDataSet3.RecordCount - 1 do
      begin
      OffSizeResult := OffSizeResult + StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ));
      DataModule5.SQLQuery5.Next;
      end;
  OffVolumeValue.Caption := FloatToStr(OffSizeResult);
  OffVolumeValue.Visible := True;

  DBGridEh1.Columns[3].Visible := False;
  DBGridEh1.Columns[4].Visible := True;
  DBGridEh1.Columns[4].Width := 65;
  DBGridEh3.Columns[4].Width := 65;
  end;


{==========================���� ������� ����������=================================}
//�������� �������� ����
Procedure TForm1.GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
Begin
  // ������������� ini-�����
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'AssistantPlus.ini');

  if IniFile.ReadString('MAIN SETTINGS', 'ResizeMainForm', 'False') = 'False' then
  begin
    with MinMaxMessage.MinMaxInfo^ Do
    begin
      ptMaxPosition.X := 0;
      ptMaxPosition.Y := 0;
      ptMinTrackSize.X := 1280;
      ptMinTrackSize.Y := 768;
      ptMaxTrackSize.X := 1280;
      ptMaxTrackSize.Y := 768;
    end;
  end;
End;

// �������� �������� �����
procedure TForm1.FormCreate(Sender: TObject);
var
  SR : TSearchRec;
  DBDate, User : string;
begin
     DLL := LoadLibrary('SYSTEM\sqlite3.dll');
      DeleteFile('MCPlus_old.exe');
if FindFirst('MCPlus_new.exe', faAnyFile, SR) = 0  then
      begin
      MoveFile('MCPlus.exe', 'MCPlus_old.exe');
      MoveFile('MCPlus_new.exe', 'MCPlus.exe');
      Sleep(5000);
      ShellExecute(Handle, nil, PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
      Application.Terminate;
      end;

FindClose(SR);

  // ��� ��� ���������� �������, �������� ��� shift + alt
  RegisterHotKey(Handle, ID, MOD_CONTROL, Ord('S'));

  // �������� ��������
  // GIF := TGIFImage.Create;
  // Image3.Transparent := True; // ��� �������� ��� ���������
  // GIF.AnimationSpeed := 150;   // �������� ��������
  // GIF.Animate := True;
  // GIF.LoadFromFile('82.gif');
  // Image3.Picture.Assign(GIF);
  // ��� ���:
  Form1.DoubleBuffered := True;
  (LoadingImage.Picture.Graphic as TGIFImage).Animate := True;
  (LoadingImage.Picture.Graphic as TGIFImage ).AnimationSpeed := 100;

  (BaseLoadingImage.Picture.Graphic as TGIFImage).Animate := True;
  (BaseLoadingImage.Picture.Graphic as TGIFImage ).AnimationSpeed := 100;


  if FindFirst('*.db', faAnyFile, SR) = 0 then DBDate := Copy(SR.Name, 5  , 10);
  FindClose(SR);

  // ��������� ������������� ini-����� � TForm1.GetMinMax
  // � ����� � ��������� ����������� ������� �������� �����
  // �� ��������� � ��������� ����������� ������
  // ������������� ini-�����
  // IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + '..\AssistantPlus.ini');

  // �������� ������� ����� ������ � ini-����� ����� ������ ������ 2.0
  // ��������� � ini-����� ������ 2.1 (18 ������ 2020)
  // 1. ��������� ������ ��� ������������ � ����������� ������ ���������� *.ANS � ��������� ����
  if IniFile.ValueExists('MAIN SETTINGS', 'LocalAnsDirectory') <> True then
    IniFile.WriteString('MAIN SETTINGS', 'LocalAnsDirectory', '\\VERA\SERVICE\UPDATES');
  // 2. ��������� ������ ��� ������������ � ����������� ������ ���������� *.ANS � ftp-�������
  if IniFile.ValueExists('FTP SETTINGS', 'AnsDirectory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'AnsDirectory', '/SI/Updates');
  // 3. �������� ������ ������ �� 2.1
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.1');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.2 (20 ������ 2020)    -
  // --------------------------------------------------------
  // 1. ��������� ������ ResizeMainForm ��� ����������� ������� �������� �����
  //    �� ��������� � ��������� ����������� ������
  if IniFile.ValueExists('MAIN SETTINGS', 'ResizeMainForm') <> True then
    IniFile.WriteString('MAIN SETTINGS', 'ResizeMainForm', 'False');
  // 2. �������� ������ ������ �� 2.2
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.2');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3 (24 ������� 2020)   -
  // --------------------------------------------------------
  // 1. ������� ������� ���������� ������ *.ANS � ftp-�������
  //    ������ ��� ����� ������������ WinSCP
  // 2. �������� ������ ������ �� 2.3
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.3');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3.1 (28 ������� 2020) -
  // --------------------------------------------------------
  // 1. ���������� ������ "near")": syntax error" ��� ������ ������� "����������� � ����� ������ � ���"
  // 2. ���������� ������, ��������� � �������������� ������� ����� ���������� ��� ����������� �� �� �����
  // 3. �������� ������ ������ �� 2.3.1

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3.2 (09 ������ 2021)  -
  // --------------------------------------------------------
  // 1. ���������� ������ "��� ����� ��� ��� ���������� ����� ������� ������� �����"
  //    ��� ����������� ������ ���������� *.ANS � ftp-�������.
  //    ��� ����������, ����� ��������� ������� �������� � ����� �������������� ������.
  //    ������������ ������ ��� ������� ����� � �� ��������� � ������ ���������.
  // 2. ��������� ���������� ���� ������ ������ ���������� *.ANS � ftp-�������,
  //    ������� ������ ����� 15-20 �����. ������ ����� ������������ �� ������� �������
  //    � ����� ������ ������ ������� ���������� ����� ��.
  //    � ������, ���� �� ������� ���������� �����-���� ����, �� ��������� �����������
  //    ������� ������ ������ ������
  // 3. ������ ������� ������������ WinSCP ������� �� 10 ������.
  // 4. ��������� ����� ��������� �� ������� ���������� ������ ���������� *.ANS � ftp-�������.
  // 5. �������� ������ ������ �� 2.3.2
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.3.2');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3.4 (12 ������ 2021)  -
  // --------------------------------------------------------
  // 1. ��������� ���� NBU (���)
    if IniFile.ValueExists('BASES', 'NBU') <> True then
    IniFile.WriteString('BASES', 'NBU', '\\VERA\DOPHOST1\BASE\');
  // 2. �������� ������ ������ �� 2.3.4
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.3.4');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3.5 (26 ������ 2021)  -
  // --------------------------------------------------------
  // 1. ���������� ������ Thumbs.db
  // 2. ������� ��������� � ���� ������
  // 3. �������� ������ ������ �� 2.3.5
  //  IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.3.5');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.3.6 (06 ������ 2021)  -
  // --------------------------------------------------------
  // 1. ��������� ���� KGL
    if IniFile.ValueExists('BASES', 'KGL') <> True then
    IniFile.WriteString('BASES', 'KGL', '\\VERA\MAINHOST\BASE\');
  // 2. �������� ������ ������ �� 2.3.6
  //  IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.3.6');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.4.2 (05 ��� 2021)     -
  // --------------------------------------------------------
  // 1. ��������� ������� ������� �� ����� ftp
  // 2. �������� ������ LocalBaseListDirectory
  // ������������ ��� ������������ �����-������ base_list.tmp
  // � ������� ��������� ������ ���� �� ������ �� ��� ������� � ftp-�������
  // ��������� ��� ������ tools (��� ������������ �����-������ base_list.tmp �� ����� BASE_LIST_UPDATE)
    if IniFile.ValueExists('MAIN SETTINGS', 'LocalBaseListDirectory') <> True then
    IniFile.WriteString('MAIN SETTINGS', 'LocalBaseListDirectory', '\\VERA\SERVICE\UPDATES');
  // 3. �������� ������ BaseListDirectory
    if IniFile.ValueExists('FTP SETTINGS', 'BaseListDirectory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'BaseListDirectory', '/SI/Updates');
  // 4. �������� ������ Base0Directory
    if IniFile.ValueExists('FTP SETTINGS', 'Base0Directory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'Base0Directory', '/mainhost');
  // 5. �������� ������ Base1Directory
    if IniFile.ValueExists('FTP SETTINGS', 'Base1Directory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'Base1Directory', '/dophost1');
  // 6. �������� ������ Base2Directory
    if IniFile.ValueExists('FTP SETTINGS', 'Base2Directory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'Base2Directory', '/dophost2');
  // 7. � ��������� ����� ��������� ����������� �������� ���������� ���������
  // 8. �������� ������ ������ �� 2.4.2
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.4.2');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.1 (04 ���� 2021)    -
  // --------------------------------------------------------
  // 1. ��������� ������� ��������� ����������
  // 2. �������� ������ ������ �� 2.5.1
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.1');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.2 (10 ���� 2021)    -
  // --------------------------------------------------------
  // 1. �������� ������ SystemArchFilesDirectory
    if IniFile.ValueExists('FTP SETTINGS', 'SystemArchFilesDirectory') <> True then
    IniFile.WriteString('FTP SETTINGS', 'SystemArchFilesDirectory', '/SI/TechInfo/SYSTEM.actual');
  // 2. � ������ /ADM ������ ��� ���������� �� ����� ftp ������������ ����� SYSTEM � RGT
  // 3. � ������ /ADM ������ �������� ������� ��������� ����������
  // 4. �������� ������ ������ �� 2.5.2
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.2');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.3 (10 ���� 2021)    -
  // --------------------------------------------------------
  // 1. ��������� �������� ������� ���������� � �������� �������
  // 2. �������� ������ ������ �� 2.5.3
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.3');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.4 (15 ���� 2021)    -
  // --------------------------------------------------------
  // 1. ��������� ����������� ��������� ������� ������� �� � ftp-������� ��
  // ������� ������� CTRL+S
  // 2. ������� ������� ��� MC � ������ /ADM (��� ��������� ������ ������)
  // 3. �������� ������ ������ �� 2.5.4
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.4');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.5 (09 ������� 2021)    -
  // --------------------------------------------------------
  // 1. ��������� ����� �� ����� � ������������� (FKRNK, FKRDR, FKRKR)
    if IniFile.ValueExists('BASES', 'FKRNK') <> True then
    IniFile.WriteString('BASES', 'FKRNK', '\\VERA\MAINHOST\BASE\');
    if IniFile.ValueExists('BASES', 'FKRDR') <> True then
    IniFile.WriteString('BASES', 'FKRDR', '\\VERA\MAINHOST\BASE\');
    if IniFile.ValueExists('BASES', 'FKRKR') <> True then
    IniFile.WriteString('BASES', 'FKRKR', '\\VERA\MAINHOST\BASE\');
  // 2. �������� ������ ������ �� 2.5.5
  // IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.5');

  // --------------------------------------------------------
  // - ��������� � ini-����� ������ 2.5.6 (10 ������ 2021)    -
  // --------------------------------------------------------
  // 1. ��������� ����� �� ����� � ������������� (FKRNK, FKRDR, FKRKR)
    if IniFile.ValueExists('BASES', 'IPNVBO') <> True then
    IniFile.WriteString('BASES', 'IPNVBO', '\\VERA\MAINHOST\BASE\');
    if IniFile.ValueExists('BASES', 'PRSSP') <> True then
    IniFile.WriteString('BASES', 'PRSSP', '\\VERA\MAINHOST\BASE\');
  // 2. �������� ������ ������ �� 2.5.6
    IniFile.WriteString('MEGACOPIER', 'MCVersion', '2.5.6');

  Form1.Caption := 'MegaCopier (������ ' + IniFile.ReadString('MEGACOPIER', 'MCVersion', '����������') +
    ' / ���� ������ ' + DBDate + ')';

  // ��������� ������� ��������� ���������� ��� ��������� �������������
  // �������� ������ ��� ������������� � ���� Consultant
  User := GetEnvironmentVariable('username');
  if (User = 'pvv') or (User = 'kza') or (User = 'hpa') then
  begin
    Panel6.Color := clMedGray;
    Panel6.Caption := '��������� ����������';
    Panel6.Top := 618;
    Panel6.Height := 18;
    Compare1.Visible := true;
    Compare2.Visible := true;
    CompareButton.Visible := true;
    ConsCheck.Visible := true;
  end;

  // ��������� ������ ��������� � ������ /ADM
  // ��� ������������� ������� ��������� ����������
  param1 := ParamStr(1);
  if (param1 = '/ADM') Or (param1 = '/adm') then
  begin
    Form1.Color := $00FBEAFB;
    Panel6.Color := clMedGray;
    Panel6.Caption := '��������� ����������';
    Panel6.Top := 618;
    Panel6.Height := 18;
    Compare1.Visible := true;
    Compare2.Visible := true;
    CompareButton.Visible := true;
    ConsCheck.Visible := true;
  end;

  TitleBase := Form1.Caption;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  UnregisterHotkey(Handle, ID);
end;

//��������� �����
Procedure TForm1.FormActivate(Sender: TObject);
var
  AssistantNewVersion, DriveChar, iniFilesString, HostName, BaseRecord, BaseNameRecord, vrName, current_ans_list: string;
  SR : TSearchRec;
  DriveType: TDriveType;
  i, HostNamePosition, BaseNamePosition, ansDirLength : SmallInt;
  vrSize, exeSize : Integer;
  TotalSize : Int64;
  ShortSize : Real;
  LastRec : TextFile;
  LastRecDataList, ans_list : TStringlist;
  today :TDateTime;
begin
  DriveChar:=ExtractFileDrive(ParamStr(0));
  DriveType:=TDriveType(GetDriveType(PChar(DriveChar + '\ ')));
  if DriveType = dtNetWork then
  begin
    MessageBox (Handle, '������ ��������� � �������� ������� ��������!' + #13#10 +
                        '���������� ��������� �� ��������� ���� � ����� ��� �������!',
                '������',
      MB_OK + MB_ICONERROR);
    Application.Terminate;
  end;

  if IniFile.ReadString('MAIN SETTINGS', 'RIC','') = 'spb' then
      begin
        SourceIBedit.Visible := true;
        SourceIBbutton.Visible := true;
        SourceIBedit.Enabled := true;
        SourceIBbutton.Enabled := true;
      end;

  // ������������� ������ ���������� ��� ������
  BitBtn1.Glyph.Transparent:=True;
  BitBtn1.Glyph.TransparentColor:=clWhite;
  BitBtn2.Glyph.Transparent:=True;
  BitBtn2.Glyph.TransparentColor:=clWhite;
  BitBtn3.Glyph.Transparent:=True;
  BitBtn3.Glyph.TransparentColor:=clWhite;
  BitBtn4.Glyph.Transparent:=True;
  BitBtn4.Glyph.TransparentColor:=clWhite;
  BitBtn5.Glyph.Transparent:=True;
  BitBtn5.Glyph.TransparentColor:=clWhite;
  BitBtn6.Glyph.Transparent:=True;
  BitBtn6.Glyph.TransparentColor:=clWhite;
  BitBtn7.Glyph.Transparent:=True;
  BitBtn7.Glyph.TransparentColor:=clWhite;
  BitBtn8.Glyph.Transparent:=True;
  BitBtn8.Glyph.TransparentColor:=clWhite;
  BitBtn9.Glyph.Transparent:=True;
  BitBtn9.Glyph.TransparentColor:=clWhite;
  SourceIBbutton.Glyph.Transparent:=True;
  SourceIBbutton.Glyph.TransparentColor:=clWhite;
  Form1.Repaint;

  DataModule5.ClientDataSet1.First;
 (*
  // ��������� ������� ����� ������ Starter
  if FindFirst('*AssistantPlus.exe', faAnyFile, SR) = 0 then
  begin
    AssistantNewVersion := Copy(SR.Name, 4, 17);
    DeleteFile ('..\' + AssistantNewVersion);
    MoveFile (PChar(SR.Name), PChar('..\' + AssistantNewVersion));
    AssistantNewVersion := Copy(SR.Name, 1, 3);
    IniFile.WriteString('MAIN SETTINGS', 'StarterVersion', AssistantNewVersion)
  end;
  FindClose(SR);                      *)

  //����������� ������ "������ �� �������" ��� �������
  DataModule5.ClientDataSet1.Active := False;
  DataModule5.SQLQuery1.Close;
  DataModule5.SQLQuery1.SQL.Clear;
  DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
  DataModule5.SQLQuery1.Open;
  DataModule5.ClientDataSet1.Active := True;

  DataModule5.ClientDataSet2.Active := False;
  DataModule5.SQLQuery3.Close;
  DataModule5.SQLQuery3.SQL.Clear;
  DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
  DataModule5.SQLQuery3.Open;
  DataModule5.ClientDataSet2.Active := True;

  DataModule5.ClientDataSet3.Active := False;
  DataModule5.SQLQuery5.Close;
  DataModule5.SQLQuery5.SQL.Clear;
  DataModule5.SQLQuery5.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
  DataModule5.SQLQuery5.Open;
  DataModule5.ClientDataSet3.Active := True;

  //���������� ��
 param1 := ParamStr(1);
 if (param1 = '/UPDATE') or (param1='/update') then
   begin
    today := Now;

    DataModule5.ClientDataSet1.Active := False;
    DataModule5.SQLQuery1.Close;
    DataModule5.SQLQuery1.SQL.Clear;
    DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM SYSTEM WHERE id >= 10';
    DataModule5.SQLQuery1.Open;
    DataModule5.ClientDataSet1.Active := True;

    DataModule5.ClientDataSet1.First;
    for i := 0 to DataModule5.SQLQuery1.RecordCount do
       begin
       if DataModule5.ClientDataSet1.Fields[3].AsString <> '-' then begin
       iniFilesString := IniFile.ReadString('BASES', DataModule5.ClientDataSet1.Fields[3].AsString,'');
       DirectorySize(iniFilesString + DataModule5.ClientDataSet1.Fields[3].AsString, TotalSize);

       ShortSize := TotalSize;
       ShortSize := trunc((ShortSize/1073741824)*1000)/1000;
       DataModule5.SQLQuery3.Close;
       DataModule5.SQLQuery3.SQL.Clear;
       DataModule5.SQLQuery3.SQL.Text := 'UPDATE System SET Size='
                                           + StringReplace(FloatToStr(ShortSize), ',','.',[rfReplaceAll, rfIgnoreCase])
                                            + ' WHERE id =' + DataModule5.ClientDataSet1.Fields[0].AsString;
       DataModule5.SQLQuery3.ExecSQL(True);

       Delete(iniFilesString, Length(iniFilesString) -5, 6);
       HostNamePosition := LastDelimiter('\', iniFilesString);
       HostName := Copy(iniFilesString, HostNamePosition + 1, Length(iniFilesString) - HostNamePosition);

       AssignFile(LastRec, 'C:\Work\123\last_' + HostName +'.txt');
       Reset(LastRec);
       LastRecDataList := TStringList.Create;
       while not Eof(LastRec) do
          begin
            Readln(LastRec, BaseRecord);
            BaseNamePosition := AnsiPos(',',BaseRecord);
            BaseNameRecord := Copy(BaseRecord, 0, BaseNamePosition-1);
            if DataModule5.ClientDataSet1.Fields[3].AsString = BaseNameRecord then
               begin
               BaseRecord := StringReplace(BaseRecord, ' ', '^^^',[rfReplaceAll, rfIgnoreCase] );
               LastRecDataList.DelimitedText := BaseRecord;

               DataModule5.SQLQuery3.Close;
               DataModule5.SQLQuery3.SQL.Clear;
               DataModule5.SQLQuery3.SQL.Text := 'UPDATE System SET DocAmount=' + LastRecDataList[2] + ' WHERE id =' + DataModule5.ClientDataSet1.Fields[0].AsString;
               DataModule5.SQLQuery3.ExecSQL(True);
               end;
          end;
       end;
       TotalSize := 0;
       DataModule5.ClientDataSet1.Next;
       end;
   LastRecDataList.Free;

   DataModule5.SQLQuery3.Close;
   DataModule5.SQLQuery3.SQL.Clear;
   DataModule5.SQLQuery3.SQL.Text := 'UPDATE TechInfo SET DBDate= "' + DateToStr(today) + '"';
   DataModule5.SQLQuery3.ExecSQL(True);

   if FindFirst(IniFile.ReadString('MEGACOPIER', 'Systempath2','')+ 'vr*.res', faAnyFile, SR) = 0 then
     begin
       repeat
       vrName := SR.Name;
       Delete(vrName, 1, 2);
       Delete(vrName, 7, 4);
       vrSize := SR.Size;
       until FindNext(SR) <> 0 ;
     FindClose(SR);
     end;

   if FindFirst(IniFile.ReadString('MEGACOPIER', 'Systempath2','')+ 'cons.exe', faAnyFile, SR) = 0 then
     begin
      exeSize := SR.Size;
      FindClose(SR);
   end;

   DataModule5.SQLQuery3.Close;
   DataModule5.SQLQuery3.SQL.Clear;
   DataModule5.SQLQuery3.SQL.Text := 'UPDATE TechInfo SET vrVersion= ' + vrName;
   DataModule5.SQLQuery3.ExecSQL(True);

   DataModule5.SQLQuery3.Close;
   DataModule5.SQLQuery3.SQL.Clear;
   DataModule5.SQLQuery3.SQL.Text := 'UPDATE TechInfo SET vrSize= ' + IntToStr(vrSize);
   DataModule5.SQLQuery3.ExecSQL(True);

   DataModule5.SQLQuery3.Close;
   DataModule5.SQLQuery3.SQL.Clear;
   DataModule5.SQLQuery3.SQL.Text := 'UPDATE TechInfo SET exeSize= ' + IntToStr(exeSize);
   DataModule5.SQLQuery3.ExecSQL(True);

   ans_list := TStringList.Create;
   GatherFilesFromDirectory(IniFile.ReadString('MAIN SETTINGS', 'LocalAnsDirectory',''), ans_list);
   ansDirLength := Length (IniFile.ReadString('MAIN SETTINGS', 'LocalAnsDirectory',''));
   for i := 0 to ans_list.Count-1 do
     begin
     current_ans_list := ans_list[i];
     current_ans_list := StringReplace(current_ans_list, '\\', '\', [rfReplaceAll,rfIgnoreCase] );
     current_ans_list := StringReplace(current_ans_list, '\', '/', [rfReplaceAll,rfIgnoreCase]);
     Delete(current_ans_list, 1, ansDirLength);
     end;
   ans_list.Free;
   Application.Terminate;

   end;


end;

function GetProcessByEXE(exename: string): THandle;
var
  hSnapshoot: THandle;
  pe32: TProcessEntry32;
begin
  Result:= 0;
  hSnapshoot:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if (hSnapshoot = 0) then Exit;
  pe32.dwSize:= SizeOf(TProcessEntry32);
  if (Process32First(hSnapshoot, pe32)) then
    repeat
      if (pe32.szExeFile = exename) then
      begin
        Result:= pe32.th32ProcessID;
        exit;
      end;
    until not Process32Next(hSnapshoot, pe32);
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TForm1.WMHotKey(var Msg: TWMHotKey);
var
  Result : Integer;
begin
  if Msg.HotKey = ID then
  begin
    // ���� ��������
    if (GetProcessByEXE('WinSCP.com') <> 0) or (GetProcessByEXE('WinSCP.exe') <> 0) then
    begin
      Result := MessageBox(Self.Handle,
                          '�� �������, ��� ������ �������� ������� ������� �� � ftp-�������?',
                          '������ �����!',
                          MB_YESNO + MB_ICONWARNING + MB_APPLMODAL);
      case Result of
      IDYES :
        begin
          ExitProcFlag := True;
          KillTask('WinSCP.com');
          KillTask('WinSCP.exe');
        end;
      IDNO :
        begin
          exit;
        end;
      end;
    end;
  end;
end;

//�������� ����������
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeLibrary(DLL);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var Result : Integer;
begin
  Result := MessageBox(
    Self.Handle,
    '�� �������, ��� ������ ��������� ������ � ����� �������� ����������?',
    '������ �����!',
    MB_YESNO + MB_ICONWARNING + MB_APPLMODAL);
  case Result of
  IDYES :
    begin
      CanClose:=True;
    end;
  IDNO :
    begin
      CanClose:=False;
    end;
  end;
end;

{===============================���� ������ � ����==============================}
//������ ������ ����������� (�������!)
procedure TForm1.BitBtn3Click(Sender: TObject);
var
  BufferGrid1, BufferGrid2, BufferPath, Base4Copy, SystemFiles4Copy, All4Copy, DelEndSlash : String;
  PassiveMode4WinSCP, SearchGrid, Base4Download, Base4DownloadTemp, IBname : String;
  ftpContent4Copy : TStringList;
  i, j, Progress, NumOfBase4Download : smallint;
  TempProgress :  Single;
  searchResult : TSearchRec;
  SR : TSearchRec;
  Quest, CurrentNumOfBase4Download : Word;
  EmptyFolder : Boolean;
  Check : real;
  StopPosition : Integer;
begin
  if Edit1.Text <> '�������� ����� ��� ����������� --->' then
  begin
    // ������� ������ "\" � ����� ������, ���� ������ "������" �����
    DelEndSlash:=Edit1.Text;
    If Copy(Edit1.Text, length(Edit1.Text), 1) = '\' Then
    Delete(DelEndSlash, Length(DelEndSlash), 1);
    Edit1.Text:=DelEndSlash;
    Edit1.SelStart:=Length(DelEndSlash);

    if CheckBox1.Checked=True then
    begin
    Quest:=MessageBox(handle,
           '��������!!! �� ���������� ����� �������� ���� ������ � ����� ����������. ' +
           '��� ��������, ��� �Ѩ ����� ������� ��� ����������� ��������������! ' +
           '������ ��������, ��� �� ������� ��� ���������, ����� ������� ���, ������ ����������. ' +
           '���� ��������? ����� ����������, ���� ����� ����������� ����������. ' +
           '�� �� ��� ������ ����������?',
           '����� ������ �����!', MB_YESNO + MB_ICONWARNING);
      Case Quest Of
        idyes:
          DelDirNoSilent(Edit1.Text+'\*.*');
        idno:
          Exit;
      end;
    end;

    // ����� ���������� ������� ���� ���������� �� � ftp-�������
    if BaseFromFtpCheckBox.Checked = True then
    begin
      Alarm := False;
      ExitProcFlag := False;
      FtpDownloadAlarm := False;
      DataModule5.SQLQuery1.First;
      DataModule5.SQLQuery3.First;
      DataModule5.SQLQuery5.First;
      Check := StrToFloat(StringReplace(DataModule5.SQLQuery1.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) +
      StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) +
      StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase]));
      if Check <> 0 then
      begin
        //�������� ������ �����
        ForceDirectories(Edit1.Text+'\RECEIVE');
        ForceDirectories(Edit1.Text+'\SEND');
        ForceDirectories(Edit1.Text+'\DISTR\DIN');
        ForceDirectories(Edit1.Text+'\BASE');

        SourceIBedit.Enabled := False;
        idFTP.Host := IniFile.ReadString('FTP SETTINGS', 'Host', '');
        idFTP.Port := StrToInt(IniFile.ReadString('FTP SETTINGS', 'PortSI', ''));
        if IniFile.ReadString('FTP SETTINGS', 'Passive', '') = 'True' then
          idFTP.Passive := True else idFTP.Passive := False;
        idFTP.AutoLogin := True;
        idFTP.Username := PasswordDlg.LoginEdit.Text;
        idFTP.Password := PasswordDlg.PasswordEdit.Text;
        if idFTP.Connected then idFTP.Disconnect;
        try
          idFTP.Connect();
        except on E:Exception do
          begin
            ShowMessage('������ ��� ����������� � ftp-�������: ' + E.Message);
            idFTP.Disconnect;
          end;
        end;
        if idFTP.Connected then
        begin
          Form1.Enabled := False;
          BASEcopyProgressBar.Visible := True;
          idFTP.ChangeDir(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'BaseListDirectory', ''));
          if IdFTP.Size('base_list.tmp') > 0 then
          begin
            idFTP.Get('base_list.tmp', 'base_list.tmp', True);
            TemporaryMemo.Lines.LoadFromFile('base_list.tmp');
          end
          else
          begin
            MessageBox(handle,
                      '�� ������� �� ������ ������ ��. ' +
                      '����� ������������� ����������� ����� ������ ' +
                      '(������������ ����� ������� �� 10-15 �����)...',
                      '��������������', MB_OK + MB_ICONWARNING);
            BASEcopyStatusLabel.Visible := True;
            BASEcopyFindFilesLabel.Visible := True;
            // ������������� �������� ������ ���� ������ *.ANS � ftp-�������
            idFTP.ChangeDir('/');
            ListAllFilesCore(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'Base0Directory', ''));
            ListAllFilesCore(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'Base1Directory', ''));
            ListAllFilesCore(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'Base2Directory', ''));
          end;
          BASEcopyProgressBar.Progress := 0;
          BASEcopyProgressBar.MinValue := 0;
          BASEcopyProgressBar.MaxValue := 100;
          BASEcopyFindFilesLabel.Visible := False;
          idFTP.Disconnect;
        end;

        Base4Download := '';
        SearchGrid := '';
        // �������� ������� �����
        if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
        begin
          DataModule5.ClientDataSet3.First;
          for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
          begin
            SearchGrid := '/' + DataModule5.SQLQuery5.Fields[3].AsString + '/';
            if SearchGrid <> '' then
            begin
              for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                // ���� ������� ����������
                if AnsiPos(SearchGrid, UpperCase(TemporaryMemo.Lines.Strings[j])) <> 0 then
                  Base4Download := Base4Download + TemporaryMemo.Lines.Strings[j] + '|';
                Base4Download := Base4Download + '(' + DataModule5.SQLQuery5.Fields[3].AsString + ')';
              DataModule5.SQLQuery5.Next;
            end
          end;
          // �������� ���.������, ���� ���� ������� �����
          if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
          begin
            DataModule5.ClientDataSet2.First;
            for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
            begin
              SearchGrid := '/' + DataModule5.SQLQuery3.Fields[3].AsString + '/';
              if SearchGrid <> '' then
              begin
                for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                  if AnsiPos(SearchGrid, UpperCase(TemporaryMemo.Lines.Strings[j])) <> 0 then
                    Base4Download := Base4Download + TemporaryMemo.Lines.Strings[j] + '|';
                  Base4Download := Base4Download + '(' + DataModule5.SQLQuery3.Fields[3].AsString + ')';
                DataModule5.SQLQuery3.Next;
              end;
            end;
          end;
        end
        else
        begin
          // �������� �������� �����
          DataModule5.ClientDataSet1.First;
          for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
          begin
            SearchGrid := '/' + DataModule5.SQLQuery1.Fields[3].AsString + '/';
            if (SearchGrid <> '-') then
            begin
              for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                if AnsiPos(SearchGrid, UpperCase(TemporaryMemo.Lines.Strings[j])) <> 0 then
                  Base4Download := Base4Download + TemporaryMemo.Lines.Strings[j] + '|';
                Base4Download := Base4Download + '(' + DataModule5.SQLQuery1.Fields[3].AsString + ')';
              DataModule5.SQLQuery1.Next;
            end;
          end;
          // �������� �������������� ������, ���� ���� ���.�����
          if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
          begin
            for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
            begin
              DataModule5.ClientDataSet2.First;
              begin
                SearchGrid := '/' + DataModule5.SQLQuery3.Fields[3].AsString + '/';
                if (SearchGrid <> '-') then
                begin
                  for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                    if AnsiPos(SearchGrid, UpperCase(TemporaryMemo.Lines.Strings[j])) <> 0 then
                      Base4Download := Base4Download + TemporaryMemo.Lines.Strings[j] + '|';
                    Base4Download := Base4Download + '(' + DataModule5.SQLQuery3.Fields[3].AsString + ')';
                  DataModule5.SQLQuery3.Next;
                end;
              end;
            end;
          end;
        end;

        // ������� ���������� �� � ������ ��� �������
        NumOfBase4Download := -1;
        for i:=1 to Length(Base4Download) do
          if Base4Download[i] = '(' then Inc(NumOfBase4Download);

        CurrentNumOfBase4Download := 0;

        while Length(Base4Download) > 0 do
        begin
          // �������� ������ ������ �� ��� �������
          StopPosition := AnsiPos('(', Base4Download);
          Base4DownloadTemp := Copy(Base4Download, 1, StopPosition - 1);
          Delete(Base4Download, 1, StopPosition);
          // �������� �������� ��
          StopPosition := AnsiPos(')', Base4Download);
          IBname := Copy(Base4Download, 1, StopPosition - 1);
          Delete(Base4Download, 1, StopPosition);
          // �������� ������ ������� ��� WinSCP
          ftpContent4Copy := TStringList.Create;
          ftpContent4Copy.Delimiter := '|';
          ftpContent4Copy.DelimitedText := Base4DownloadTemp;
          // �������� ������ ������ ��� ������� � ftp downloader
          Base4DownloadTemp := '';
          BASEcopyStatusLabel.Visible := True;
          BASEcopyStatusLabel.Caption := '��������...';
          BitBtn3.Enabled := False;
          BaseLoadingImage.Visible := True;

          TotalNumIBCountLabel.Visible := True;
          TotalNumIBCount.Visible := True;
          TotalNumIBCount.Caption := IntToStr(NumOfBase4Download);
          CurrentNumIBCountLabel.Visible := True;
          CurrentNumIBCount.Visible := True;
          CurrentIBnameLabel.Visible := True;
          CurrentIBname.Visible := True;

          for i := 0 to ftpContent4Copy.Count - 2 do
          begin
            Base4DownloadTemp := Base4DownloadTemp + ftpContent4Copy[i] + ' ';
            if i = ftpContent4Copy.Count - 2 then
            begin
              CurrentIBname.Caption := IBname;
              if IniFile.ReadString('FTP SETTINGS', 'Passive', '') = 'True' then
                PassiveMode4WinSCP := 'On' else PassiveMode4WinSCP := 'Off';
              StartApp('open', 'WinSCP.com',
                PChar('-transfer=binary /log=WinSCP.log /logsize=50M ' +
                '/command "option echo on" ' +
                '"open ftp://' + PasswordDlg.LoginEdit.Text + ':' + PasswordDlg.PasswordEdit.Text + '@' +
                  IniFile.ReadString('FTP SETTINGS', 'Host', '') + ':' +
                  IniFile.ReadString('FTP SETTINGS', 'PortSI', '21') + ' -passive=' + PassiveMode4WinSCP +
                  ' -timeout=60' + '" "get -resume -transfer=binary -neweronly ' + Base4DownloadTemp + Edit1.Text + '\BASE\' + IBname + '\" "exit"'),
                '',
                SW_SHOWMINNOACTIVE);
              Base4DownloadTemp := '';
              CurrentNumOfBase4Download := CurrentNumOfBase4Download + 1;
              CurrentNumIBCount.Caption := IntToStr(CurrentNumOfBase4Download);
              Progress := Trunc(100/NumOfBase4Download);
              TempProgress := TempProgress + Frac(100/NumOfBase4Download);
              if TempProgress >= 1 then
              begin
                BASEcopyProgressBar.Progress := BASEcopyProgressBar.Progress + Trunc(TempProgress);
                TempProgress := Frac(TempProgress);
              end;
            BASEcopyProgressBar.Progress := BASEcopyProgressBar.Progress + Progress;
            end;
          end;
          FreeAndNil(ftpContent4Copy);

          // �������� ����� ���������� �������� �������
          Application.ProcessMessages();
          if ExitProcFlag = True then
          begin
            MessageBox(Form1.Handle,
                       PChar('������� ������� ��� ������������� ��������... ' + #10#13#10#13 +
                       '������� ������ "�������" ��� ��� ��� ��������� �������. ' +
                       '��������� �� � ������ ������ ��� ������� �������� � ������, ' +
                       '������� ��������� ����� ����� ���������.' + #10#13#10#13 +
                       '������� ������ "��������", ����� �������� ������ ������ ��� �������� ' +
                       '� ������ ����� �����.'),
                       '��������������',
                       MB_OK + MB_ICONWARNING);

            BASEcopyStatusLabel.Caption := '';
            BASEcopyStatusLabel.Visible := False;
            BASEcopyProgressBar.Visible := False;
            BASEcopyFindFilesLabel.Visible := False;
            BitBtn3.Enabled := True;

            TotalNumIBCountLabel.Visible := False;
            TotalNumIBCount.Visible := False;
            CurrentNumIBCountLabel.Visible := False;
            CurrentNumIBCount.Visible := False;
            CurrentIBnameLabel.Visible := False;
            CurrentIBname.Visible := False;

            BaseLoadingImage.Visible := False;

            // �������������� ������� ������ "��������"
            // if FtpDownloadAlarm = False then BitBtn7Click(Self);
            TemporaryMemo.Lines.Clear;

            Form1.Enabled := True;
            exit;
          end;
        end;

        // ��������� ������ ��������� � ������ /ADM
        param1 := ParamStr(1);
        if (param1 = '/ADM') Or (param1 = '/adm') then
        begin
          // ������� ������ system.actual.rar
          CurrentIBname.Caption := 'SYSTEM';
          StartApp('open', 'SYSTEM\WinSCP.com',
            PChar('-transfer=binary /log=WinSCP.log /logsize=50M ' +
            '/command "option echo on" ' +
            '"open ftp://' + PasswordDlg.LoginEdit.Text + ':' + PasswordDlg.PasswordEdit.Text + '@' +
              IniFile.ReadString('FTP SETTINGS', 'Host', '') + ':' +
              IniFile.ReadString('FTP SETTINGS', 'PortSI', '21') +
              IniFile.ReadString('FTP SETTINGS', 'SystemArchFilesDirectory', '') + ' -passive=' + PassiveMode4WinSCP +
              ' -timeout=60' + '" "get -resume -transfer=binary -neweronly ' + 'system.actual.rar ' + Edit1.Text + '\" "exit"'),
            '',
            SW_SHOWMINNOACTIVE);
          // ���� ����� system.actual.rar � �������������
          if FindFirst(Edit1.Text + '\system.actual.rar', faAnyFile, SR) = 0 then
          begin
            StartRAR('open', PWideChar(ExtractFilePath(Application.ExeName) + 'SYSTEM\UnRAR.exe'),
              PWideChar('x ' + Edit1.Text + '\' + SR.Name + ' -y'),
              PWideChar(Edit1.Text),
              SW_SHOWNORMAL);
            if Alarm = False then DeleteFile(Edit1.Text + '\' + SR.Name)
            else
            MessageBox(Form1.Handle, PWideChar('�� ����� ���������� ������ ' + (ExtractFilePath(Application.ExeName) + 'Arch\' + SR.Name) + ' �������� �������������� ������...'),
                      '���-�� ����� �� ���!', MB_OK + MB_ICONERROR);
          end
          else MessageBox(Form1.Handle, PWideChar('����� �� ������...'),
                         '��������!', MB_OK + MB_ICONWARNING);
          FindClose(SR);
        end;

        BaseLoadingImage.Visible := False;

        if FtpDownloadAlarm = False then
            MessageBox(Form1.Handle,
                       PChar('���-�� ���������... ����������! ' + #10#13 +
                       '��� ����������: ' + IntToStr(ExitCode)),
                       '�������������� ���������',
                       MB_OK + MB_ICONINFORMATION)
          else
            MessageBox(Form1.Handle,
                       PChar('�� ����� ���������� ������ ��������� �����-�� ������... ' +
                       '��� ����������: ' + IntToStr(ExitCode) + #10#13#10#13 +
                       '������� ������ "�������" ��� ��� ��� ��������� �������. ' +
                       '��������� �� � ������ ������ ��� ������� �������� � ������, ' +
                       '������� ��������� ����� ����� ���������.' + #10#13#10#13 +
                       '������� ������ "��������", ����� �������� ������ ������ ��� �������� ' +
                       '� ������ ����� �����.'),
                       '��������������',
                       MB_OK + MB_ICONWARNING);

        BASEcopyStatusLabel.Caption := '';
        BASEcopyStatusLabel.Visible := False;
        BASEcopyProgressBar.Visible := False;
        BASEcopyFindFilesLabel.Visible := False;
        BitBtn3.Enabled := True;

        TotalNumIBCountLabel.Visible := False;
        TotalNumIBCount.Visible := False;
        CurrentNumIBCountLabel.Visible := False;
        CurrentNumIBCount.Visible := False;
        CurrentIBnameLabel.Visible := False;
        CurrentIBname.Visible := False;

        // �������������� ������� ������ "��������"
        if FtpDownloadAlarm = False then BitBtn7Click(Self);
        TemporaryMemo.Lines.Clear;

        Form1.Enabled := True;
      end
      else
      MessageBox (Handle,
                  '�� ������ �� �������...',
                  '��������!',
                  MB_OK + MB_ICONWARNING);

    end

    // ����� ���������� ������� ���� ����������� �� � ���������� �������
    else
    begin
      Base4Copy:='';
      BufferGrid1:='';
      BufferGrid2:='';
      BufferPath :='';
      EmptyFolder := False;
      DataModule5.SQLQuery1.First;
      DataModule5.SQLQuery3.First;
      DataModule5.SQLQuery5.First;

      if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
      begin
        DataModule5.ClientDataSet3.First;
        for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
        begin
          BufferPath := DataModule5.SQLQuery5.Fields[3].AsString;
          if BufferPath = '-' then
          begin
            if EmptyFolder = False then
            begin
              BufferGrid1:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery5.Fields[3].AsString;
              Base4Copy:=Base4Copy + BufferGrid1 + #0;
              DataModule5.SQLQuery5.Next;
              EmptyFolder := True;
            end
            else DataModule5.SQLQuery5.Next;
          end
          else
          begin
            BufferGrid1:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery5.Fields[3].AsString;
            Base4Copy:=Base4Copy + BufferGrid1 + #0;
            DataModule5.SQLQuery5.Next;
          end;
        end;

        if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
        begin
          DataModule5.ClientDataSet2.First;
          for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
          begin
            BufferPath := DataModule5.SQLQuery3.Fields[3].AsString;
            if BufferPath = '-' then
            begin
              if EmptyFolder = False then
              begin
                BufferGrid2:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery3.Fields[3].AsString;
                Base4Copy:=Base4Copy + BufferGrid2 + #0;
                DataModule5.SQLQuery3.Next;
                EmptyFolder := True;
              end
              else DataModule5.SQLQuery3.Next;
            end
            else
            begin
              BufferGrid2:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery3.Fields[3].AsString;
              Base4Copy:=Base4Copy + BufferGrid2 + #0;
              DataModule5.SQLQuery3.Next;
            end;
          end;
        end;
      end else
      begin
        DataModule5.ClientDataSet1.First;
        for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
        begin
          BufferPath := DataModule5.SQLQuery1.Fields[3].AsString;
          if BufferPath = '-' then
          begin
            if EmptyFolder = False then
            begin
              BufferGrid1:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery1.Fields[3].AsString;
              Base4Copy:=Base4Copy + BufferGrid1 + #0;
              DataModule5.SQLQuery1.Next;
              EmptyFolder := True;
            end
            else DataModule5.SQLQuery1.Next;
          end
          else
          begin
            BufferGrid1:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery1.Fields[3].AsString;
            Base4Copy:=Base4Copy + BufferGrid1 + #0;
            DataModule5.SQLQuery1.Next;
          end;
        end;

        if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
        begin
          DataModule5.ClientDataSet2.First;
          for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
          begin
            BufferPath := DataModule5.SQLQuery3.Fields[3].AsString;
            if BufferPath = '-' then
            begin
              if EmptyFolder = False then
              begin
                BufferGrid2:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery3.Fields[3].AsString;
                Base4Copy:=Base4Copy + BufferGrid2 + #0;
                DataModule5.SQLQuery3.Next;
                EmptyFolder := True;
              end
              else DataModule5.SQLQuery3.Next;
            end
            else
            begin
              BufferGrid2:= IniFile.ReadString('BASES', BufferPath, '')+DataModule5.SQLQuery3.Fields[3].AsString;
              Base4Copy:=Base4Copy + BufferGrid2 + #0;
              DataModule5.SQLQuery3.Next;
            end;
          end;
        end;
      end;

    //    Base4Copy:=Base4Copy + #0;
      Form1.Enabled := False;

      // �������� ������ �����
      ForceDirectories(Edit1.Text+'\RECEIVE');
      ForceDirectories(Edit1.Text+'\SEND');
      ForceDirectories(Edit1.Text+'\DISTR\DIN');
      ForceDirectories(Edit1.Text+'\BASE');

      // ����������� ��������� ������
      SystemFiles4Copy := IniFile.ReadString('MEGACOPIER', 'SystemPath1', '') + 'system' + #0
        // + IniFile.ReadString('MEGACOPIER', 'SystemPath1', '') + 'rgt' + #0
        + IniFile.ReadString('MEGACOPIER', 'SystemPath1', '') + 'cons.exe' + #0
        + IniFile.ReadString('MEGACOPIER', 'SystemPath1', '') + 'cons.chm' + #0
        + IniFile.ReadString('MEGACOPIER', 'SystemPath2', '') + 'vr*.res' + #0;

      // ��������� ������ ��������� � ������ /ADM
      param1 := ParamStr(1);
      if (param1 = '/ADM') Or (param1 = '/adm') then
      SystemFiles4Copy := SystemFiles4Copy + IniFile.ReadString('MEGACOPIER', 'SystemPath1', '') + 'rgt' + #0;

      All4Copy:=Base4Copy + SystemFiles4Copy + #0;

      CopyFiles(Handle, [All4Copy], Edit1.Text+'\BASE', False, False);

      RemoveDir(Edit1.Text+'\BASE\-');
      MoveFile(PChar(Edit1.Text + '\BASE\cons.chm'), PChar(Edit1.Text+'\cons.chm'));
      MoveFile(PChar(Edit1.Text + '\BASE\cons.exe'), PChar(Edit1.Text+'\cons.exe'));
      if DirectoryExists(PChar(Edit1.Text + '\BASE\rgt')) then
      MoveFile(PChar(Edit1.Text + '\BASE\rgt'), PChar(Edit1.Text+'\RGT'));
      MoveFile(PChar(Edit1.Text + '\BASE\SYSTEM'), PChar(Edit1.Text+'\SYSTEM'));

      // MoveFile �� �������� � ������ �����. ���������������� ����� � ������� ���� vr*.res
      if FindFirst(PChar(Edit1.Text+'\BASE\vr*.res'), faAnyFile, searchResult) = 0 then
      begin
        repeat
          MoveFile(PChar(Edit1.Text + '\BASE\' + searchResult.Name),PChar(Edit1.Text + '\' + searchResult.Name));
        until FindNext (searchResult) <> 0;
          FindClose(searchResult);
      end;

      Form1.Enabled := True;

      DataModule5.ClientDataSet1.Active := False;
      DataModule5.SQLQuery1.Close;
      DataModule5.SQLQuery1.SQL.Clear;
      DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
      DataModule5.SQLQuery1.Open;
      DataModule5.ClientDataSet1.Active := True;

      DataModule5.ClientDataSet2.Active := False;
      DataModule5.SQLQuery3.Close;
      DataModule5.SQLQuery3.SQL.Clear;
      DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
      DataModule5.SQLQuery3.Open;
      DataModule5.ClientDataSet2.Active := True;

      DataModule5.ClientDataSet3.Active := False;
      DataModule5.SQLQuery5.Close;
      DataModule5.SQLQuery5.SQL.Clear;
      DataModule5.SQLQuery5.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
      DataModule5.SQLQuery5.Open;
      DataModule5.ClientDataSet3.Active := True;

      CheckBox1.Checked:=False;
      for I := 0 to Form2.ComponentCount-2 do
      begin
        if (Form2.components[I] is TCheckBox) and TCheckBox(Form2.components[I]).Checked then
          TCheckBox(Form2.components[I]).Checked:=False;
      end;

      MessageBox(handle,
                 '���-�� �������������... ����������.',
                 '������!', MB_OK + MB_ICONINFORMATION);

      MainVolumeValue.Caption := '0';
      MainVolumeValue.Visible := False;
      AddSysVolumeValue.Caption := '0';
      AddSysVolumeValue.Visible := False;
      OffVolumeValue.Caption := '0';
      OffVolumeValue.Visible := False;
      FinalVolumeValue.Caption := '0';
    end;
  end
  else
  begin
    for i := 1 to 5 do
    begin
      Edit1.Color:=clRed;
      Edit1.Font.Color:=clWhite;
      Edit1.Repaint;
      Sleep(200);
      Edit1.Color:=clWhite;
      Edit1.Font.Color:=clBlack;
      Edit1.Repaint;
      Sleep(200);
    end;
  end;
end;

//������������ ����������
procedure TForm1.BitBtn8Click(Sender: TObject);
var
  SearchGrid, ANS4Copy, ANS4Download : String;
  // All4Copy, DelEndSlash : String;
  ftpContent4Copy : TStringList;
  i, j, Progress : smallint;
  TempProgress :  Single;
  Check : real;
  // F : TextFile;
  PassiveMode4WinSCP: String;
  // Quest : Word;
begin
  FtpDownloadAlarm := False;
  DataModule5.SQLQuery1.First;
  DataModule5.SQLQuery3.First;
  DataModule5.SQLQuery5.First;
  Check := StrToFloat(StringReplace(DataModule5.SQLQuery1.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) +
  StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) +
  StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase]));
  if Check <> 0 then
  begin
    // ���� ����� ��� ����������� �������
    if TargetANSedit.Text <> '�������� ����� ��� ����������� --->' then
    begin
      TemporaryMemo.Lines.Clear;
      DataModule5.SQLQuery1.First;
      DataModule5.SQLQuery3.First;
      DataModule5.SQLQuery5.First;
      // ���� �������� ������ *.ANS ������
      if AnsFromFtpCheckBox.Checked = True then
      begin
        // ���������� ������ ���������� � ftp-������� ���������� �����
        SourceANSedit.Enabled := False;
        idFTP.Host := IniFile.ReadString('FTP SETTINGS', 'Host', '');
        idFTP.Port := StrToInt(IniFile.ReadString('FTP SETTINGS', 'PortSI', ''));
        if IniFile.ReadString('FTP SETTINGS', 'Passive', '') = 'True' then
          idFTP.Passive := True else idFTP.Passive := False;
        idFTP.AutoLogin := True;
        idFTP.Username := PasswordDlg.LoginEdit.Text;
        idFTP.Password := PasswordDlg.PasswordEdit.Text;
        if idFTP.Connected then idFTP.Disconnect;
        try
          idFTP.Connect();
        except on E:Exception do
          begin
            ShowMessage('������ ��� ����������� � ftp-�������: ' + E.Message);
            idFTP.Disconnect;
          end;
        end;
        if idFTP.Connected then
        begin
          Form1.Enabled := False;
          ANScopyProgressBar.Visible := True;
          //ANScopyStatusLabel.Visible := True;
          //ANScopyFindFilesLabel.Visible := True;
          idFTP.ChangeDir(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'AnsDirectory', ''));
          // if not FTPFileExists('ans_list.tmp') then
          if IdFTP.Size('ans_list.tmp') > 0 then
          begin
            //ANScopyStatusLabel.Visible := True;
            //ANScopyStatusLabel.Caption := '��������...';
            idFTP.Get('ans_list.tmp', 'ans_list.tmp', True);
            TemporaryMemo.Lines.LoadFromFile('ans_list.tmp');
          end
          else
          begin
            MessageBox(handle,
                      '�� ������� �� ������ ������ ������ *.ANS. ' +
                      '����� ������������� ����������� ����� ������ ' +
                      '(������������ ����� ������� �� 10-15 �����)...',
                      '��������������', MB_OK + MB_ICONWARNING);
            ANScopyStatusLabel.Visible := True;
            ANScopyFindFilesLabel.Visible := True;
            // ������������� �������� ������ ���� ������ *.ANS � ftp-�������
            idFTP.ChangeDir('/');
            ListAllFilesCore(idFTP.RetrieveCurrentDir + IniFile.ReadString('FTP SETTINGS', 'AnsDirectory', ''));
          end;
          //ANScopyProgressBar.Visible := False;
          ANScopyProgressBar.Progress := 0;
          ANScopyProgressBar.MinValue := 0;
          ANScopyProgressBar.MaxValue := 100;
          //ANScopyStatusLabel.Visible := False;
          ANScopyFindFilesLabel.Visible := False;
          idFTP.Disconnect;
        end;
        ANS4Download := '';
        SearchGrid := '';
        // �������� ������� �����
        if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
        begin
          DataModule5.ClientDataSet3.First;
          for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
          begin
            SearchGrid := '/' + DataModule5.SQLQuery5.Fields[3].AsString + '#';
            if SearchGrid <> '' then
            begin
              for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                // ���� ������� ����������
                if AnsiPos(SearchGrid, TemporaryMemo.Lines.Strings[j]) <> 0 then
                  ANS4Download := ANS4Download + TemporaryMemo.Lines.Strings[j] + '|';
              DataModule5.SQLQuery5.Next;
            end
          end;
          // �������� ���.������, ���� ���� ������� �����
          if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
          begin
            DataModule5.ClientDataSet2.First;
            for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
            begin
              SearchGrid := '/' + DataModule5.SQLQuery3.Fields[3].AsString + '#';
              if SearchGrid <> '' then
              begin
                for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                  if AnsiPos(SearchGrid, TemporaryMemo.Lines.Strings[j]) <> 0 then
                    ANS4Download := ANS4Download + TemporaryMemo.Lines.Strings[j] + '|';
                DataModule5.SQLQuery3.Next;
              end;
            end;
          end;
        end
        else
        begin
          // �������� �������� �����
          DataModule5.ClientDataSet1.First;
          for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
          begin
            SearchGrid := '/' + DataModule5.SQLQuery1.Fields[3].AsString + '#';
            if (SearchGrid <> '-') then
            begin
              for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                if AnsiPos(SearchGrid, TemporaryMemo.Lines.Strings[j]) <> 0 then
                  ANS4Download := ANS4Download + TemporaryMemo.Lines.Strings[j] + '|';
              DataModule5.SQLQuery1.Next;
            end;
          end;
          // �������� �������������� ������, ���� ���� ���.�����
          if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
          begin
            for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
            begin
              DataModule5.ClientDataSet2.First;
              begin
                SearchGrid := '/' + DataModule5.SQLQuery3.Fields[3].AsString + '#';
                if (SearchGrid <> '-') then
                begin
                  for j := TemporaryMemo.Lines.Count - 1 downto 0 do
                    if AnsiPos(SearchGrid, TemporaryMemo.Lines.Strings[j]) <> 0 then
                      ANS4Download := ANS4Download + TemporaryMemo.Lines.Strings[j] + '|';
                  DataModule5.SQLQuery3.Next;
                end;
              end;
            end;
          end;
        end;
        // ����� ������ ���������� ����� ��� ���� ��
        SearchGrid := 'CONS';
        for j := TemporaryMemo.Lines.Count - 1 downto 0 do
          if AnsiPos(SearchGrid, TemporaryMemo.Lines.Strings[j]) <> 0 then
            ANS4Download := ANS4Download + TemporaryMemo.Lines.Strings[j] + '|';
        // �������� � �������� ������ ������ ��� ������� � ftp downloader
        ftpContent4Copy := TStringList.Create;
        ftpContent4Copy.Delimiter := '|';
        ftpContent4Copy.DelimitedText := ANS4Download;
        // j := 0;
        // ftpMultiForm.FileListMemo.Clear;
        ANS4Download := '';
        ANScopyStatusLabel.Visible := True;
        ANScopyStatusLabel.Caption := '��������...';
        BitBtn8.Enabled := False;
        LoadingImage.Visible := True;
        for i := 0 to ftpContent4Copy.Count - 2 do
        begin
          //ANS4Download := ANS4Download + ftpContent4Copy[i] + ' ';
          //ftpMultiForm.FileListMemo.Lines.Add(ftpContent4Copy[i]);
          //Inc(j);
          // TemporaryMemo.Lines.Add(ftpContent4Copy[i]);
          ANS4Download := ANS4Download + ftpContent4Copy[i] + ' ';
          if (i+1) mod 10 = 0 then
          begin
             if IniFile.ReadString('FTP SETTINGS', 'Passive', '') = 'True' then
              PassiveMode4WinSCP := 'On' else PassiveMode4WinSCP := 'Off';
            StartApp('open', 'SYSTEM\WinSCP.com',
              PChar('-transfer=binary /log=WinSCP.log /logsize=50M ' +
              '/command "option echo on" ' +
              '"open ftp://' + PasswordDlg.LoginEdit.Text + ':' + PasswordDlg.PasswordEdit.Text + '@' +
                IniFile.ReadString('FTP SETTINGS', 'Host', '') + ':' +
                IniFile.ReadString('FTP SETTINGS', 'PortSI', '21') + ' -passive=' + PassiveMode4WinSCP +
                ' -timeout=60' + '" "get -resume -transfer=binary -neweronly ' + ANS4Download + TargetANSedit.Text + '\" "exit"'),
              '',
              SW_SHOWMINNOACTIVE);
            ANS4Download := '';
            Progress := Trunc(100/((ftpContent4Copy.Count div 10) + 1));
            TempProgress := TempProgress + Frac(100/((ftpContent4Copy.Count div 10) + 1));
            if TempProgress >= 1 then
            begin
              ANScopyProgressBar.Progress := ANScopyProgressBar.Progress + Trunc(TempProgress);
              TempProgress := Frac(TempProgress);
            end;
            ANScopyProgressBar.Progress := ANScopyProgressBar.Progress + Progress;
          end;
        end;
        if (ftpContent4Copy.Count - 1) mod 10 <> 0 then
        begin
           if IniFile.ReadString('FTP SETTINGS', 'Passive', '') = 'True' then
            PassiveMode4WinSCP := 'On' else PassiveMode4WinSCP := 'Off';
          StartApp('open', 'SYSTEM\WinSCP.com',
            PChar('-transfer=binary /log=WinSCP.log /logsize=50M ' +
            '/command "option echo on" ' +
            '"open ftp://' + PasswordDlg.LoginEdit.Text + ':' + PasswordDlg.PasswordEdit.Text + '@' +
              IniFile.ReadString('FTP SETTINGS', 'Host', '') + ':' +
              IniFile.ReadString('FTP SETTINGS', 'PortSI', '21') + ' -passive=' + PassiveMode4WinSCP +
              ' -timeout=60' + '" "get -resume -transfer=binary -neweronly ' + ANS4Download + TargetANSedit.Text + '\" "exit"'),
            '',
            SW_SHOWMINNOACTIVE);
            ANScopyProgressBar.Progress := 100;
        end;
        FreeAndNil(ftpContent4Copy);
        LoadingImage.Visible := False;

        if FtpDownloadAlarm = False then
          MessageBox(Form1.Handle,
                     PChar('���-�� ���������... ����������! ' + #10#13 +
                     '��� ����������: ' + IntToStr(ExitCode)),
                     '�������������� ���������',
                     MB_OK + MB_ICONINFORMATION)
        else
          MessageBox(Form1.Handle,
                     PChar('�� ����� ���������� ������ ��������� �����-�� ������... ' +
                     '��� ����������: ' + IntToStr(ExitCode) + #10#13#10#13 +
                     '������� ������ "�������" ��� ��� ��� ��������� �������. ' +
                     '��������� �� � ������ ������ ��� ������� �������� � ������, ' +
                     '������� ��������� ����� ����� ���������.'),
                     '��������������',
                     MB_OK + MB_ICONWARNING);

        ANScopyStatusLabel.Visible := False;
        ANScopyStatusLabel.Caption := '';
        ANScopyProgressBar.Visible := False;
        ANScopyStatusLabel.Visible := False;
        ANScopyFindFilesLabel.Visible := False;
        BitBtn8.Enabled := True;
        // �������������� ������� ������ "��������"
        if FtpDownloadAlarm = False then BitBtn7Click(Self);
        TemporaryMemo.Lines.Clear;
      end
      else
      begin
        SourceANSedit.Enabled := True;
        if SourceANSedit.Text <> '�������� �������� ������ *.ANS --->' then
        begin
          ANS4Copy:='';
          SearchGrid:='';
          if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
          begin
            DataModule5.ClientDataSet3.First;
            for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
            begin
              SearchGrid:=DataModule5.SQLQuery5.Fields[3].AsString;
              if SearchGrid <> '' then
              begin
                FindFiles(SourceANSedit.Text, SearchGrid+'#*.ans', TemporaryMemo.Lines, True);
                for j := 0 to TemporaryMemo.Lines.Count-1 do
                ANS4Copy := ANS4Copy + TemporaryMemo.Lines.Strings[j] + #0;
                TemporaryMemo.Lines.Clear;
                DataModule5.SQLQuery5.Next;
              end
              else DataModule5.SQLQuery5.Next;
            end;
            if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
            begin
              DataModule5.ClientDataSet2.First;
              for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
              begin
                SearchGrid:=DataModule5.SQLQuery3.Fields[3].AsString;
                if SearchGrid <> '' then
                begin
                  FindFiles(SourceANSedit.Text, SearchGrid+'#*.ans', TemporaryMemo.Lines, True);
                  for j := 0 to TemporaryMemo.Lines.Count-1 do
                  ANS4Copy := ANS4Copy + TemporaryMemo.Lines.Strings[j] + #0;
                  TemporaryMemo.Lines.Clear;
                  DataModule5.SQLQuery3.Next;
                end
                else DataModule5.SQLQuery3.Next;
              end;
            end;
          end
          else
          begin
            DataModule5.ClientDataSet1.First;
            for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
            begin
              SearchGrid:=DataModule5.SQLQuery1.Fields[3].AsString;
              if SearchGrid <> '' then
              begin
                FindFiles(SourceANSedit.Text, SearchGrid+'#*.ans', TemporaryMemo.Lines, True);
                for j := 0 to TemporaryMemo.Lines.Count-1 do
                ANS4Copy := ANS4Copy + TemporaryMemo.Lines.Strings[j] + #0;
                TemporaryMemo.Lines.Clear;
                DataModule5.SQLQuery1.Next;
              end
              else DataModule5.SQLQuery1.Next;
            end;
            if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase])) <> 0 then
            begin
              for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
              begin
                DataModule5.ClientDataSet2.First;
                begin
                  SearchGrid:=DataModule5.SQLQuery3.Fields[3].AsString;
                  if SearchGrid <> '' then
                  begin
                    FindFiles(SourceANSedit.Text, SearchGrid+'#*.ans', TemporaryMemo.Lines, True);
                    for j := 0 to TemporaryMemo.Lines.Count-1 do
                    ANS4Copy := ANS4Copy + TemporaryMemo.Lines.Strings[j] + #0;
                    TemporaryMemo.Lines.Clear;
                    DataModule5.SQLQuery3.Next;
                  end
                  else DataModule5.SQLQuery3.Next;
                end;
              end;
            end;
          end;

          // ��������� � ������ ����������� ����� ���������� ����� ��� ���� ��
          SearchGrid := 'CONS';
          FindFiles(SourceANSedit.Text, SearchGrid+'#*.ans', TemporaryMemo.Lines, True);
          for j := 0 to TemporaryMemo.Lines.Count-1 do
            ANS4Copy := ANS4Copy + TemporaryMemo.Lines.Strings[j] + #0;
          TemporaryMemo.Lines.Clear;

          Form1.Enabled:=False;
          ANS4Copy := ANS4Copy + #0;
          CopyFiles(Handle, [ANS4Copy], TargetANSedit.Text, False, False);
          MessageBox(Handle,
                    '���-�� �������������... ����������!',
                    '������!',
                     MB_OK + MB_ICONINFORMATION);
          Form1.Enabled:=True;

          // �������������� ������� ������ "��������"
          BitBtn7Click(Self);
          TemporaryMemo.Lines.Clear;
        end
        else
        MessageBox (Handle,
                    '�� ������ �� ���� �������� ������ *.ANS ' + #13#10 +
                    '������� ���� � ����� � ������� ���������� ��� �������� "��������" ����� "C������ � ftp-�������"',
                    '��������!',
                    MB_OK + MB_ICONWARNING);
      end;
    end
    else
    begin
      for i := 1 to 5 do
      begin
        TargetANSedit.Color:=clRed;
        TargetANSedit.Font.Color:=clWhite;
        TargetANSedit.Repaint;
        Sleep(200);
        TargetANSedit.Color:=clWhite;
        TargetANSedit.Font.Color:=clBlack;
        TargetANSedit.Repaint;
        Sleep(200);
      end;
    end;
    Form1.Enabled := True;
  end
  else
  MessageBox (Handle,
              '�� ������ �� �������...',
              '��������!',
              MB_OK + MB_ICONWARNING);
end;

procedure TForm1.AnsFromFtpCheckBoxEvent(Sender: TObject);
begin
  if AnsFromFtpCheckBox.Checked = True then
  begin
    SourceANSedit.Enabled := False;
    PasswordDlg.Height := 165;
    PasswordDlg.LoginLabel.Visible := True;
    PasswordDlg.LoginEdit.Visible := True;
    PasswordDlg.PasswordLabel.Caption := '������� ������ ��� ����������� � ftp-�������:';
    PasswordDlg.LoginLabel.Top := 6;
    PasswordDlg.LoginEdit.Top := 24;
    PasswordDlg.PasswordLabel.Top := 51;
    PasswordDlg.PasswordEdit.Top := 69;
    PasswordDlg.OKBtn.Top := 101;
    PasswordDlg.CancelBtn.Top := 101;
    PasswordDlg.ShowModal;
    if PasswordDlg.ModalResult <> mrOK then AnsFromFtpCheckBox.Checked := False;
  end
  else SourceANSedit.Enabled := True;
end;

procedure TForm1.BaseFromFtpCheckBoxEvent(Sender: TObject);
begin
  if BaseFromFtpCheckBox.Checked = True then
  begin
    // �������� SourceIBedit.Enabled/Disabled ����������� ��� spb
    SourceIBedit.Enabled := False;
    PasswordDlg.Height := 165;
    PasswordDlg.LoginLabel.Visible := True;
    PasswordDlg.LoginEdit.Visible := True;
    PasswordDlg.PasswordLabel.Caption := '������� ������ ��� ����������� � ftp-�������:';
    PasswordDlg.LoginLabel.Top := 6;
    PasswordDlg.LoginEdit.Top := 24;
    PasswordDlg.PasswordLabel.Top := 51;
    PasswordDlg.PasswordEdit.Top := 69;
    PasswordDlg.OKBtn.Top := 101;
    PasswordDlg.CancelBtn.Top := 101;
    PasswordDlg.ShowModal;
    if PasswordDlg.ModalResult <> mrOK then BaseFromFtpCheckBox.Checked := False;
  end
  else SourceIBedit.Enabled := True;
end;

// ����� "�������� ���. �������"
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

// ������ "�����"
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  FreeAndNil(IniFile);
  Form1.Close;
end;

// ������ "Flash"
procedure TForm1.BitBtn5Click(Sender: TObject);
var
  RootPathName, ExecStr: string;
  Result : Integer;
begin
  // �������� ���� ��� ����� ������
  PasswordDlg.Height := 120;
  PasswordDlg.LoginLabel.Visible := False;
  PasswordDlg.LoginEdit.Visible := False;
  PasswordDlg.PasswordLabel.Caption := '������� ������ ��� ������������� ��������:';
  PasswordDlg.PasswordLabel.Top := 6;
  PasswordDlg.PasswordEdit.Top := 24;
  PasswordDlg.OKBtn.Top := 55;
  PasswordDlg.CancelBtn.Top := 55;
  PasswordDlg.ShowModal;
  if PasswordDlg.PasswordEdit.Text = '1366' then
  begin
    Result := MessageBox(
      Self.Handle,
      '����� ����������� �������������� ���������� �����. ' +
      '������������ ������ ����� ����������! ' +
      '�� ��������� ��� ������ ���������?',
      '����� ������ �����!',
      MB_YESNO + MB_ICONWARNING + MB_APPLMODAL);
    case Result of
    IDYES :
      begin
        PasswordDlg.PasswordEdit.Text := '';
        RootPathName:=Copy(Edit1.Text, 1, 2);
        ExecStr:=RootPathName+ ' /fs:NTFS /v:Consultant /q';
        ShellExecute(Form1.Handle, 'open', 'format.com', PChar(ExecStr), nil, SW_SHOWMAXIMIZED)
      end;
    IDNO :
      begin
        PasswordDlg.PasswordEdit.Text := '';
        PasswordDlg.Close;
      end;
    end;
  end
  else
  begin
    MessageBox (Handle,
      '���-�� ��� �� ���...',
      '������',
      MB_OK + MB_ICONERROR);
    PasswordDlg.PasswordEdit.Text := '';
    PasswordDlg.Close;
  end;
end;

//������ "���������� ������"
procedure TForm1.btnCopy1Click(Sender: TObject);
var Buffer : string;
    i : smallint;
begin
LoadKeyboardLayout('00000419', 1);//����� ����� (�������)
Buffer:='';
DataModule5.SQLQuery1.First;
for i:=0 to DataModule5.SQLQuery1.RecordCount - 1 do
    begin
      Buffer:=Buffer + DataModule5.SQLQuery1.Fields[1].AsString + #13#10;
      DataModule5.SQLQuery1.Next;
    end;
  DataModule5.SQLQuery1.Next;
  Clipboard.AsText := Buffer;
  MessageBox(handle,
             '�������� ���������� ������ ����������� � ����� ������.',
             '������', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.btnCopy2Click(Sender: TObject);
var Buffer : string;
    i : smallint;
begin
LoadKeyboardLayout('00000419', 1);//����� ����� (�������)
Buffer:='';
DataModule5.SQLQuery3.First;
for i:=0 to DataModule5.SQLQuery3.RecordCount - 1 do
    begin
      Buffer:=Buffer + DataModule5.SQLQuery3.Fields[1].AsString + #13#10;
      DataModule5.SQLQuery3.Next;
    end;
  DataModule5.SQLQuery3.Next;
  Clipboard.AsText := Buffer;
  MessageBox(handle,
             '�������� ���������� ������ ����������� � ����� ������.',
             '������', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.btnCopy3Click(Sender: TObject);
var Buffer : string;
    i : smallint;
begin
LoadKeyboardLayout('00000419', 1);//����� ����� (�������)
Buffer:='';
DataModule5.SQLQuery5.First;
for i:=0 to DataModule5.SQLQuery5.RecordCount - 1 do
    begin
      Buffer:=Buffer + DataModule5.SQLQuery5.Fields[1].AsString + #13#10;
      DataModule5.SQLQuery5.Next;
    end;
  DataModule5.SQLQuery5.Next;
  Clipboard.AsText := Buffer;
  MessageBox(handle,
             '�������� ���������� ������ ����������� � ����� ������.',
             '������', MB_OK + MB_ICONINFORMATION);
end;

//������ ������ ���� �����������. ���� � ������� ��� ����. ������ ����.
 procedure TForm1.BitBtn4Click(Sender: TObject);
var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form1.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Edit1.Text:=TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

{ ������-�� �� ��������... ����� ������ �� WIN10? �� ��� ���� ���������
  // �������� ������ ����� ����� �� ���� ����������
  RootPathName:=Copy(Edit1.Text, 1, 2);
  //�������� ���������� � �����
  GetVolumeInformation(PChar(RootPathName), VolumeName, MAX_PATH, @VolumeSerialNo,
    MaxComponentLength, FileSystemFlags, FileSystemName, MAX_PATH);
  if FileSystemName <> 'NTFS' then
  begin
  MessageBox (Handle,
      '��������� ����, ������ �����, �� �������������� � NTFS. ' +
      '���� ��� FLASH-���� ��� �������, �� ������������� ����������������� ���. ' +
      '���� �� �� ��������� � ��� ���� ����, �� ������ �������������� ������ ���������. ',
      '��������!',
      MB_OK + MB_ICONINFORMATION);
  end;
}

//������ ������ ���� �� ������ *.ASN
procedure TForm1.BitBtn6Click(Sender: TObject);
var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form1.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '���� �� ������ ���������� *.ANS:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    SourceANSedit.Text:=TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

//������ ������ ���� �� ����� RECEIVE �������
procedure TForm1.BitBtn9Click(Sender: TObject);
var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;

  // VolumeName, FileSystemName : array [0..MAX_PATH-1] of Char;
  // VolumeSerialNo : DWord;
  // MaxComponentLength,FileSystemFlags: Cardinal;

  // RootPathName : string;

begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form1.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '���� �� ����� RECEIVE �������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    TargetANSedit.Text:=TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

//������ "��������"
procedure TForm1.BitBtn7Click(Sender: TObject);
var i : SmallInt;
begin

  CheckBox1.Checked:=False;
  for I := 0 to Form2.ComponentCount-2 do
  begin
    if (Form2.components[I] is TCheckBox) and TCheckBox(Form2.components[I]).Checked then
     TCheckBox(Form2.components[I]).Checked:=False;
  end;
  if DBGridEh1.Columns[4].Visible = False then DBGridEh1.Columns[4].Visible := True;

    MainVolumeValue.Caption := '0';
    MainVolumeValue.Visible := False;
    OffVolumeValue.Caption := '0';
    OffVolumeValue.Visible := False;
    AddSysVolumeValue.Caption := '0';
    AddsysVolumeValue.Visible := False;
    FinalVolumeValue.Caption := '0';

    Form1.Caption := TitleBase;

    DataModule5.ClientDataSet1.Active := False;
    DataModule5.SQLQuery1.Close;
    DataModule5.SQLQuery1.SQL.Clear;
    DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
    DataModule5.SQLQuery1.Open;
    DataModule5.ClientDataSet1.Active := True;

    DataModule5.ClientDataSet2.Active := False;
    DataModule5.SQLQuery3.Close;
    DataModule5.SQLQuery3.SQL.Clear;
    DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
    DataModule5.SQLQuery3.Open;
    DataModule5.ClientDataSet2.Active := True;

    DataModule5.ClientDataSet3.Active := False;
    DataModule5.SQLQuery5.Close;
    DataModule5.SQLQuery5.SQL.Clear;
    DataModule5.SQLQuery5.SQL.Text := 'SELECT * FROM SYSTEM WHERE id=''0''';
    DataModule5.SQLQuery5.Open;
    DataModule5.ClientDataSet3.Active := True;
end;

//����� �������
procedure TForm1.N11Click(Sender: TObject);
begin
  Form3.About.Lines[1] := 'v' + IniFile.ReadString('MEGACOPIER', 'MCVersion', '������������');
  Form3.ShowModal;
end;

//������ "��������� �+"
procedure TForm1.ConsCheckClick(Sender: TObject);
var
    IcoIndex : Integer;
    ShowCmd: DWORD;
    Path, Params, WorkDir, Description, IconPath, TitleName, consexe, delendslash : String;
    DesktopPath: array [0..MAX_PATH] of Char;
    DisplayName : array[0..MAX_PATH] of char;
    TempPath : array[0..MAX_PATH] of char;
    j : SmallInt;
    lpItemID : PItemIDList;
    BrowseInfo : TBrowseInfo;

begin
//������� ��� ������ �� ������� �����, �������� ������ ��, ��� ��������� cons.exe � ����� �� ���� � ����2
    TemporaryMemo.Lines.Clear;
    Memo2.Lines.Clear;
    consexe := 'cons.exe';
    ShGetSpecialFolderPath(Application.Handle,DesktopPath, CSIDL_DESKTOPDIRECTORY, False);
    FindFiles(DesktopPath,'*.lnk', TemporaryMemo.Lines, False);
       for j := 0 to TemporaryMemo.Lines.Count-1 do
        begin
          GetLinkParams(TemporaryMemo.Lines.Strings[j], IcoIndex, ShowCmd, Path, Params, WorkDir, Description, IconPath);
          if pos(consexe, Path)<> 0 then
            begin
            Path := StringReplace(Path, consexe, '', [rfReplaceAll, rfIgnoreCase]);
            DelEndSlash:=Path;
              If Copy(Path, length(Path), 1) = '\' Then Delete(DelEndSlash, Length(DelEndSlash), 1);
            Path:=DelEndSlash;
          Memo2.Lines.Add(Path);
            end;
        end;
    TemporaryMemo.Lines.Clear;

//���� ����� ������� ��� ��� �� ������ 5 - ��������� ���� ������ ����� � ����� ��������� � Edit1 �� ����� ��������
    if (Memo2.Lines.Count = 0) or (Memo2.Lines.Count > 4) then
    begin
    ShowMessage('�� ������� ����� ��������� ��������������� � �������������� ������.'+ #13 + '������� ���� �������.');
      begin
        FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
        BrowseInfo.hwndOwner := Form1.Handle;
        BrowseInfo.pszDisplayName := @DisplayName;
        TitleName := '������� ���� �� ����� ���������������';
        BrowseInfo.lpszTitle := PChar(TitleName);
        BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
        BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
        lpItemID := SHBrowseForFolder(BrowseInfo);
        if lpItemId <> nil then
        begin
          SHGetPathFromIDList(lpItemID, TempPath);
          Form6.ConsCheckEdit1.Text:=TempPath;
          GlobalFreePtr(lpItemID);
        end;
      end;
    end else
    begin
//���� ������� �� 1 �� 5 - �������� ������������ � ����� ���� �� ��� � Edit �� ����� ��������
   ShowMessage('������� ���������� ���������������: ' + inttostr(Memo2.Lines.Count));
//�.�. ���� �� ���� ����� ��� ������ ������������� - ����� ��� ���� ��� �������
   Form6.ConsCheckEdit1.Text:=Memo2.Lines[0];
   Form6.ComboBox1.Items.Add(Memo2.Lines[0]);

//4 �������������� �������� ��� �������� ���-�� ������� � ������������ �������������� Edit'�� � ������
      if Memo2.Lines[1] <> '' then
        begin
        Form6.ConsCheckEdit2.Text:=Memo2.Lines[1];
        Form6.ConsCheckEdit2.Visible := True;
        Form6.Cons2path.Visible := True;
        Form6.CheckBoxCons2.Visible := True;
        Form6.ClearCons2path.Visible := True;

        Form6.ComboBox1.Items.Add(Memo2.Lines[1]);
        end;

      if Memo2.Lines[2] <> '' then
        begin
        Form6.ConsCheckEdit3.Text:=Memo2.Lines[2];
        Form6.ConsCheckEdit3.Visible := True;
        Form6.Cons3path.Visible := True;
        Form6.CheckBoxCons3.Visible := True;
        Form6.ClearCons3path.Visible := True;

        Form6.ComboBox1.Items.Add(Memo2.Lines[2]);
        end;

      if Memo2.Lines[3] <> '' then
        begin
        Form6.ConsCheckEdit4.Text:=Memo2.Lines[3];
        Form6.ConsCheckEdit4.Visible := True;
        Form6.Cons4path.Visible := True;
        Form6.CheckBoxCons4.Visible := True;
        Form6.ClearCons4path.Visible := True;
        end;

      if Memo2.Lines[4] <> '' then
        begin
        Form6.ConsCheckEdit5.Text:=Memo2.Lines[4];
        Form6.ConsCheckEdit5.Visible := True;
        Form6.Cons5path.Visible := True;
        Form6.CheckBoxCons5.Visible := True;
        Form6.ClearCons5path.Visible := True;
        end;
    end;
//Form6 - ����� �������� ���������������
    Form6.ShowModal;
 end;

//������ ��������� ������
procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if MainVolumeValue.Caption<>'-' then
  FinalVolumeValue.Caption:=FloatToStr(StrToFloat(MainVolumeValue.Caption)+StrToFloat(AddSysVolumeValue.Caption))
  else
  FinalVolumeValue.Caption:=FloatToStr(StrToFloat(OffVolumeValue.Caption)+StrToFloat(AddSysVolumeValue.Caption));
end;

//RadioButton'� ��� ������������ �����-����������
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
if OnlineVersion=True then
begin
MessageBox(handle,
             '���������� ��������� ����� ������ ������',
             '����������', MB_OK + MB_ICONINFORMATION);
RadioButton2.Checked:=True;
end
else begin
     DBGridEh1.Columns[3].Visible := True;
     DBGridEh1.Columns[3].Width := 80;
     DBGridEh1.Columns[4].Visible := False;
     end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
DBGridEh1.Columns[3].Visible := False;
DBGridEh1.Columns[4].Visible := True;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
DBGridEh2.Columns[3].Visible := True;
DBGridEh2.Columns[3].Width := 70;
DBGridEh2.Columns[4].Visible := False;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
DBGridEh2.Columns[3].Visible := False;
DBGridEh2.Columns[4].Visible := True;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
DBGridEh3.Columns[3].Visible := True;
DBGridEh3.Columns[3].Width := 65;
DBGridEh3.Columns[4].Visible := False;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
DBGridEh3.Columns[3].Visible := False;
DBGridEh3.Columns[4].Visible := True;
end;

//����������� ��������� ��

//���������� ������
procedure TForm1.SingleIBCopyOffButtonClick(Sender: TObject);
begin
  SingleIBCopy := False;
  BitBtn3.Enabled := True;
  SingleIBCopyOnButton.Visible := True;
  SingleIBCopyOnButton.Enabled := True;
  SingleIBCopyOffButton.Visible := False;
  SingleIBCopyOffButton.Enabled := False;
end;

//��������� ������
procedure TForm1.SingleIBCopyOnButtonClick(Sender: TObject);
begin

  MessageBox(handle,
             '����������� ����� ����������� ��������� �������������� ������. ' +
             '����������� � ��������� ����� �������������� �� ����� �� ������ ��. ' +
             '��� ���������� ������ - ������� �� ������ "���������"',
             '����� ����������� ��������� ��', MB_OK + MB_ICONINFORMATION);
  SingleIBCopy := True;
  BitBtn3.Enabled := False;
  SingleIBCopyOnButton.Visible := False;
  SingleIBCopyOnButton.Enabled := False;
  SingleIBCopyOffButton.Visible := True;
  SingleIBCopyOffButton.Enabled := True;
end;


//���������� ������ �� ������
procedure TForm1.DBGridEh1CellClick(Column: TColumnEh);
var
IB4Copy : string;
i :  ShortInt;
begin
if SingleIBCopy = True then
begin
  if Edit1.Text<>'�������� ����� ��� ����������� --->' then
    begin
    DataModule5.SQLQuery1.First;
    DataModule5.SQLQuery1.MoveBy(DBGridEh1.DataSource.DataSet.RecNo -1);
    IB4Copy := IniFile.ReadString('BASES', DataModule5.SQLQuery1.Fields[3].AsString, '')+DataModule5.SQLQuery1.Fields[3].AsString +#0;
    CopyFiles(Handle, [IB4Copy], Edit1.Text, False, False);
    end else
      begin
       for i := 1 to 5 do
          begin
            Edit1.Color:=clRed;
            Edit1.Font.Color:=clWhite;
            Edit1.Repaint;
            Sleep(200);
            Edit1.Color:=clWhite;
            Edit1.Font.Color:=clBlack;
            Edit1.Repaint;
            Sleep(200);
          end;
      end;
  end;
end;


procedure TForm1.DBGridEh2CellClick(Column: TColumnEh);
var
IB4Copy : string;
i :  ShortInt;
begin
if SingleIBCopy = True then
begin
  if Edit1.Text<>'�������� ����� ��� ����������� --->' then
    begin
    DataModule5.SQLQuery3.First;
    DataModule5.SQLQuery3.MoveBy(DBGridEh2.DataSource.DataSet.RecNo -1);
    IB4Copy := IniFile.ReadString('BASES', DataModule5.SQLQuery3.Fields[3].AsString, '')+DataModule5.SQLQuery3.Fields[3].AsString +#0;
    CopyFiles(Handle, [IB4Copy], Edit1.Text, False, False);
    end else
      begin
       for i := 1 to 5 do
          begin
            Edit1.Color:=clRed;
            Edit1.Font.Color:=clWhite;
            Edit1.Repaint;
            Sleep(200);
            Edit1.Color:=clWhite;
            Edit1.Font.Color:=clBlack;
            Edit1.Repaint;
            Sleep(200);
          end;
      end;
  end;
end;

procedure TForm1.DBGridEh3CellClick(Column: TColumnEh);
var
IB4Copy : string;
i :  ShortInt;
begin
if SingleIBCopy = True then
begin
  if Edit1.Text<>'�������� ����� ��� ����������� --->' then
    begin
    DataModule5.SQLQuery5.First;
    DataModule5.SQLQuery5.MoveBy(DBGridEh3.DataSource.DataSet.RecNo -1);
    IB4Copy := IniFile.ReadString('BASES', DataModule5.SQLQuery5.Fields[3].AsString, '')+DataModule5.SQLQuery5.Fields[3].AsString +#0;
    CopyFiles(Handle, [IB4Copy], Edit1.Text, False, False);
    end else
      begin
       for i := 1 to 5 do
          begin
            Edit1.Color:=clRed;
            Edit1.Font.Color:=clWhite;
            Edit1.Repaint;
            Sleep(200);
            Edit1.Color:=clWhite;
            Edit1.Font.Color:=clBlack;
            Edit1.Repaint;
            Sleep(200);
          end;
      end;
  end;
end;


//��������� ����������

//�������� �������� 1
procedure TForm1.Compare1Click(Sender: TObject);
var
  i : smallint;
  position : Integer;
  Compare1Content, Compare2Content, differenceContent : tStringList;
  BufferGrid1, BufferGrid2, Base4Compare : string;
  S : String;
begin
  Form5.Show;

  Base4Compare:='';
  BufferGrid1:='';
  BufferGrid2:='';
  DataModule5.SQLQuery1.First;
  DataModule5.SQLQuery3.First;
  DataModule5.SQLQuery5.First;

  if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
  begin
    DataModule5.ClientDataSet3.First;
    for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
    begin
      BufferGrid1:= DataModule5.SQLQuery5.Fields[3].AsString;
      Base4Compare:=Base4Compare + BufferGrid1 + '|';
      DataModule5.SQLQuery5.Next;
    end;

    if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
    begin
      DataModule5.ClientDataSet2.First;
      for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
      begin
        BufferGrid2:=DataModule5.SQLQuery3.Fields[3].AsString;
        Base4Compare:=Base4Compare + BufferGrid2 + '|';
        DataModule5.SQLQuery3.Next;
      end;
    end;
  end
  else
  begin
    DataModule5.ClientDataSet1.First;
    for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
    begin
      BufferGrid1:=DataModule5.SQLQuery1.Fields[3].AsString;
      Base4Compare:=Base4Compare + BufferGrid1 + '|';
      DataModule5.SQLQuery1.Next;
    end;

    if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
    begin
      DataModule5.ClientDataSet2.First;
      for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
      begin
       BufferGrid2:=DataModule5.SQLQuery3.Fields[3].AsString;
       Base4Compare:=Base4Compare + BufferGrid2 + '|';
       DataModule5.SQLQuery3.Next;
      end;
    end;
  end;

  Cmpr1 := Base4Compare;
  Form5.Cmpr1Memo.Clear;
  Compare1Content := TStringList.Create;
  Compare1Content.Delimiter := '|';
  Compare1Content.DelimitedText := Cmpr1;
  for i := 0 to Compare1Content.Count -1 do Form5.Cmpr1Memo.Lines.Add(Compare1Content[i]);

  S := Form1.Caption;
  position := AnsiPos(')', S);
  if position <> 0 then Delete(S, 1, position + 2);
  Form5.Label1.Caption := S;
end;


//�������� �������� 2
procedure TForm1.Compare2Click(Sender: TObject);
var
  i : smallint;
  position : Integer;
  Compare1Content, Compare2Content, differenceContent : tStringList;
  BufferGrid1, BufferGrid2, Base4Compare : string;
  S : String;
begin
  Form5.Show;

  Base4Compare:='';
  BufferGrid1:='';
  BufferGrid2:='';
  DataModule5.SQLQuery1.First;
  DataModule5.SQLQuery3.First;
  DataModule5.SQLQuery5.First;

  if StrToFloat(StringReplace(DataModule5.SQLQuery5.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
  begin
    DataModule5.ClientDataSet3.First;
    for i:=0 to DataModule5.ClientDataSet3.RecordCount - 1 do
    begin
      BufferGrid1:= DataModule5.SQLQuery5.Fields[3].AsString;
      Base4Compare:=Base4Compare + BufferGrid1 + '|';
      DataModule5.SQLQuery5.Next;
    end;

    if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
    begin
      DataModule5.ClientDataSet2.First;
      for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
      begin
        BufferGrid2:=DataModule5.SQLQuery3.Fields[3].AsString;
        Base4Compare:=Base4Compare + BufferGrid2 + '|';
        DataModule5.SQLQuery3.Next;
      end;
    end;
  end
  else
  begin
    DataModule5.ClientDataSet1.First;
    for i:=0 to DataModule5.ClientDataSet1.RecordCount - 1 do
    begin
      BufferGrid1:=DataModule5.SQLQuery1.Fields[3].AsString;
      Base4Compare:=Base4Compare + BufferGrid1 + '|';
      DataModule5.SQLQuery1.Next;
    end;

    if StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ))<>0 then
    begin
      DataModule5.ClientDataSet2.First;
      for i:=0 to DataModule5.ClientDataSet2.RecordCount - 1 do
      begin
        BufferGrid2:=DataModule5.SQLQuery3.Fields[3].AsString;
        Base4Compare:=Base4Compare + BufferGrid2 + '|';
        DataModule5.SQLQuery3.Next;
      end;
    end;
  end;

 Cmpr2 := Base4Compare;
 Form5.Cmpr2Memo.Clear;
 Compare2Content := TStringList.Create;
 Compare2Content.Delimiter := '|';
 Compare2Content.DelimitedText := Cmpr2;
 for i := 0 to Compare2Content.Count -1 do Form5.Cmpr2Memo.Lines.Add(Compare2Content[i]);

 S := Form1.Caption;
 position := AnsiPos(')', S);
 if position <> 0 then Delete(S, 1, position + 2);
 Form5.Label2.Caption := S;
end;

//������ ��������!
procedure TForm1.CompareButtonClick(Sender: TObject);
var
Compare1Content, Compare2Content, differenceContent : tStringList;
i, j : smallint;
begin
  Form5.Show;

  Form5.Cmpr1Memo.Clear;
  Compare1Content := TStringList.Create;
  Compare1Content.Delimiter := '|';
  Compare1Content.DelimitedText := Cmpr1;

  Form5.Cmpr2Memo.Clear;
  Compare2Content := tStringList.Create;
  Compare2Content.Delimiter := '|';
  Compare2Content.DelimitedText := Cmpr2;

  // ���� �������� � �������
  differenceContent := tStringList.Create;
  differenceContent.Text := Compare1Content.Text;

  for i := differenceContent.Count -1 downto 0 do
    if Compare2Content.IndexOf(differenceContent[i]) >= 0 then  differenceContent.Delete(i);

  j := 0;
  for i := 0 to differenceContent.Count -1 do
  begin
    Form5.Cmpr1Memo.Lines.Add(differenceContent[i]);
    Inc(j);
  end;
  FreeAndNil(differenceContent);

  differenceContent := tStringList.Create;
  differenceContent.Text := Compare2Content.Text;

  for i := differenceContent.Count -1 downto 0 do
    if Compare1Content.IndexOf(differenceContent[i]) >= 0 then  differenceContent.Delete(i);

  j := 0;
  for i := 0 to differenceContent.Count -1 do
  begin
    Form5.Cmpr2Memo.Lines.Add(differenceContent[i]);
    Inc(j);
  end;

  FreeAndNil(differenceContent);
  FreeAndNil(Compare1Content);
  FreeAndNil(Compare2Content);
end;


{============================ ����� ���������� ��� ����������� ============================}

procedure TForm1.SKSClick(Sender: TObject);    // ����� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKS';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
end;

procedure TForm1.N27Click(Sender: TObject);  //����� ��-����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'LAW';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase + '  ' +menuSet.Caption +'  '+ N27.Caption;
end;

procedure TForm1.N26Click(Sender: TObject);      //����� ����-���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUDP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase + '  ' +menuSet.Caption +'  '+ N26.Caption;
end;

procedure TForm1.N25Click(Sender: TObject);         //����� ���-���

var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BVP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  +menuSet.Caption +'  '+ N25.Caption;
end;


procedure TForm1.N24Click(Sender: TObject);        //����� ���-���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'JURP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  ' +menuSet.Caption +'  '+ N24.Caption;
end;

procedure TForm1.N23Click(Sender: TObject);         //����� ��-���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUD_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption :=TitleBase  + '  '  +menuSet.Caption +'  '+ N23.Caption;
end;

procedure TForm1.N22Click(Sender: TObject);         //����� ���-���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'MBP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  +menuSet.Caption +'  '+ N22.Caption;
end;

procedure TForm1.N21Click(Sender: TObject);          //����� ��:��-���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUHL_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase + '  '  +menuSet.Caption +'  '+ N21.Caption;
end;

procedure TForm1.N20Click(Sender: TObject);          //����� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'KRF';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase + '  '  +menuSet.Caption +'  '+ N20.Caption;
end;

procedure TForm1.N104Click(Sender: TObject);              // ��� ����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'LAW';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N104.Caption;
end;



procedure TForm1.N103Click(Sender: TObject);              //��� ����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUDP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N103.Caption;
end;


procedure TForm1.N102Click(Sender: TObject);             //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BVP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N102.Caption;
end;

procedure TForm1.N101Click(Sender: TObject);            //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'JURP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase + '  '  +menuOnline.Caption +'  '+ N101.Caption;
end;

procedure TForm1.N100Click(Sender: TObject);             //��� ��
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUD_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+N100.Caption;
end;

procedure TForm1.N99Click(Sender: TObject);               //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'MBP_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N99.Caption;
end;

procedure TForm1.Panel6DblClick(Sender: TObject);
var
  i : Word;
begin
  Panel6.Color := clMedGray;
  Panel6.Caption := '��������� ����������';
  i := panel6.Top;
  while i <> 620 do
  begin
    Panel6.Top := i;
    dec(i);
    sleep(50);
    Panel6.Height := Panel6.Height + 1;
    Panel6.Repaint;
  end;
  Compare1.Visible := true;
  Compare2.Visible := true;
  CompareButton.Visible := true;
end;

procedure TForm1.N97Click(Sender: TObject);               //��� ��:��
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUHL_set';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N97.Caption;
end;

procedure TForm1.N54Click(Sender: TObject);             //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'KRF';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +menuOnline.Caption +'  '+ N54.Caption;
end;


procedure TForm1.N16Click(Sender: TObject);             //���� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUDP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N16.Caption;
end;


procedure TForm1.N15Click(Sender: TObject);              //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BVP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N15.Caption;
end;

procedure TForm1.N14Click(Sender: TObject);             //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'JURP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N14.Caption;
end;

procedure TForm1.N13Click(Sender: TObject);              //�� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUD_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N13.Caption;
end;

procedure TForm1.N12Click(Sender: TObject);              //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'MBP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N12.Caption;
end;



procedure TForm1.N6Click(Sender: TObject);              //��:�� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'BUHL_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N6.Caption;
end;



procedure TForm1.N2Click(Sender: TObject);               //��� ���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'KRF';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
   Form1.Caption := TitleBase  + '  '  + menuLoc.Caption +'  '+ N2.Caption;
end;

                                                      //���-�
procedure TForm1.N8Click(Sender: TObject);             //���
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'UMK';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK5_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N8.Caption;
end;



procedure TForm1.N52Click(Sender: TObject);           //���5
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK5_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK5_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N52.Caption;
end;


procedure TForm1.N56Click(Sender: TObject);           //���4
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK4_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK4_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  ' +N37.Caption +'  '+ N42.Caption + '  (' + N56.Caption + ')';
end;

procedure TForm1.N57Click(Sender: TObject);
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK4B_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK4B_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  ' +N37.Caption +'  '+ N42.Caption + '  (' + N57.Caption + ')';
end;


procedure TForm1.N49Click(Sender: TObject);               //���3
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK3_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK3_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase + '  '  +N37.Caption +'  '+ N39.Caption + '  (' + N49.Caption + ')';
end;

procedure TForm1.N55Click(Sender: TObject);
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK3B_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK3B_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N39.Caption + '  (' + N55.Caption + ')';
end;

procedure TForm1.N47Click(Sender: TObject);           //���2
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK2_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK2_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase + '  '  +N37.Caption +'  '+ N217.Caption + '  (' + N47.Caption + ')';
end;

procedure TForm1.N48Click(Sender: TObject);
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK2B_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK2B_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N217.Caption + '  (' + N48.Caption + ')';
end;

procedure TForm1.N45Click(Sender: TObject);           //���1
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK1_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK1_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  ' +N37.Caption +'  '+ N136.Caption + '  (' + N45.Caption + ')' ;
end;


procedure TForm1.N46Click(Sender: TObject);
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK1B_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SPK1B_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
   Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N136.Caption + '  (' + N46.Caption + ')';
end;



procedure TForm1.N214Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOE_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N214.Caption;
end;

procedure TForm1.N135Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOP_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N135.Caption;
end;

procedure TForm1.N016Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOO_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N016.Caption;
end;

procedure TForm1.N134Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOB_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase + '  '  +N37.Caption +'  '+ N134.Caption;
end;

procedure TForm1.N216Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUE_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N216.Caption;
end;

procedure TForm1.N133Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUP_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N133.Caption;
end;

procedure TForm1.N015Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUO_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N015.Caption;
end;

procedure TForm1.N132Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUB_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N132.Caption;
end;

procedure TForm1.N215Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKJE_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N215.Caption;
end;

procedure TForm1.N131Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKJP_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N131.Caption;
end;

procedure TForm1.N014Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKJO_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N014.Caption;
end;

procedure TForm1.N130Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKJB_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N130.Caption;
end;

procedure TForm1.N129Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKBP_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N129.Caption;
end;

procedure TForm1.N013Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKBO_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N013.Caption;
end;

procedure TForm1.N128Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKBB_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N128.Caption;
end;

procedure TForm1.N012Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKZO_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N012.Caption;
end;

procedure TForm1.N127Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKZB_OVKF';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N37.Caption +'  '+ N127.Caption;
end;


                                                       //���

procedure TForm1.N51Click(Sender: TObject);            //���5
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK5_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N51.Caption;
end;

procedure TForm1.N41Click(Sender: TObject);             //���5
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK4_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N41.Caption;
end;

procedure TForm1.N36Click(Sender: TObject);             //���3
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK3_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N36.Caption;
end;

procedure TForm1.N210Click(Sender: TObject);            //���2
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK2_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N210.Caption;
end;

procedure TForm1.N122Click(Sender: TObject);             //���1
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SPK1_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N122.Caption;
end;


procedure TForm1.N211Click(Sender: TObject);              //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N211.Caption;
end;


procedure TForm1.N123Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N123.Caption;
end;

procedure TForm1.N011Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N011.Caption;
end;

procedure TForm1.N121Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N121.Caption;
end;

procedure TForm1.N212Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N212.Caption;
end;

procedure TForm1.N124Click(Sender: TObject);        //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N124.Caption;
end;

procedure TForm1.N010Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N010.Caption;
end;

procedure TForm1.N120Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N120.Caption;
end;

procedure TForm1.N213Click(Sender: TObject);        //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJE_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N213.Caption;
end;

procedure TForm1.N125Click(Sender: TObject);        //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N125.Caption;
end;

procedure TForm1.N09Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N09.Caption;
end;

procedure TForm1.N118Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N118.Caption;
end;

procedure TForm1.N126Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N126.Caption;
end;


procedure TForm1.N08Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N08.Caption;
end;

procedure TForm1.N116Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N16.Caption;
end;

procedure TForm1.N07Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N07.Caption;
end;

procedure TForm1.N114Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N34.Caption +'  '+ N114.Caption;
end;

                                                        //���

procedure TForm1.N06Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N06.Caption;
end;

procedure TForm1.N119Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N119.Caption;
end;

procedure TForm1.N05Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N05.Caption;
end;

procedure TForm1.N117Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N117.Caption;
end;

procedure TForm1.N04Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N04.Caption;
end;

procedure TForm1.N115Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N115.Caption;
end;

procedure TForm1.N03Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N03.Caption;
end;

procedure TForm1.N113Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N113.Caption;
end;

procedure TForm1.N02Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N02.Caption;
end;

procedure TForm1.N112Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZB_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N112.Caption;
end;

procedure TForm1.N31Click(Sender: TObject);           //�����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOEM_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N31.Caption;
end;

procedure TForm1.N30Click(Sender: TObject);         //�����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUEM_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N30.Caption;
end;

procedure TForm1.N32Click(Sender: TObject);        //�����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJEM_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N32.Caption;
end;

procedure TForm1.N33Click(Sender: TObject);        //�����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBEM_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N28.Caption +'  '+ N33.Caption;
end;

                                                    //���/����

procedure TForm1.N95Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N95.Caption;
end;

procedure TForm1.N94Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N94.Caption;
end;

procedure TForm1.N93Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOB_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N93.Caption;
end;


procedure TForm1.N92Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N92.Caption;
end;

procedure TForm1.N91Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N91.Caption;
end;

procedure TForm1.N90Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUB_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N90.Caption;
end;

procedure TForm1.N89Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N89.Caption;
end;

procedure TForm1.N88Click(Sender: TObject);               //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJO_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N88.Caption;
end;

procedure TForm1.N87Click(Sender: TObject);                //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJB_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N87.Caption;
end;

procedure TForm1.N86Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBP_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N86.Caption;
end;

procedure TForm1.N85Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N85.Caption;
end;

procedure TForm1.N110Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBB_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N110.Caption;
end;


procedure TForm1.N01Click(Sender: TObject);             //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N01.Caption;
end;

procedure TForm1.N111Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZB_loc';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'NULL';
  ComplectSelectOff(ComplectNameOff);
  Form1.Caption := TitleBase  + '  '  +N84.Caption +'  '+ N111.Caption;
end;

                                                        //���

procedure TForm1.N139Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N139.Caption;
end;

procedure TForm1.N024Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N139.Caption;
end;

procedure TForm1.N138Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N138.Caption;
end;


procedure TForm1.N023Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N023.Caption;
end;

procedure TForm1.N137Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJP_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N137.Caption;
end;

procedure TForm1.N022Click(Sender: TObject);           //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N022.Caption;
end;

procedure TForm1.N019Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_online';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'OVS';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N43.Caption +'  '+ N019.Caption;
end;
                                                     //���-�
procedure TForm1.N145Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOP_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOP_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N145.Caption;
end;

procedure TForm1.N021Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SBOO_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SBOO_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N021.Caption;

end;

procedure TForm1.N143Click(Sender: TObject);          //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUP_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUP_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N143.Caption;
end;

procedure TForm1.N020Click(Sender: TObject);         //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKUO_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKUO_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N020.Caption;
end;

procedure TForm1.N141Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKJP_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKJP_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N141.Caption;
end;

procedure TForm1.N018Click(Sender: TObject);            //����
var
    ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKBO_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKBO_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N018.Caption;
end;

procedure TForm1.N017Click(Sender: TObject);             //����
var
  ComplectName, ComplectNameOff: string;
begin
  ComplectName:= 'SKZO_OVM-F';
  ComplectSelect(ComplectName);
  ComplectNameOff:= 'SKZO_OVM-F';
  ComplectSelectOff(ComplectNameOff);
  OnlineVersion:= True;
  MainVolumeValue.Caption := '-';
  MainVolumeValue.Visible := True;
  Form1.Caption := TitleBase  + '  '  +N40.Caption +'  '+ N017.Caption;
end;


{============================= ���� ������ � FTP =============================}

//������� ������������� ������ ftp
function GammaDeCoder(source, gamma: AnsiString): AnsiString;
Var
  i, j: Integer;
  res_temp: AnsiString;
begin
  result := '';
  i := 1;
  begin
    For j := 1 to Length(source) div Length(gamma) do
    begin
      res_temp := chr((ord(source[j]) - ord('0')) xor ord(gamma[i]));
      result := result + res_temp;
    end;
  i := i + 1;
  end;
end;


END.

