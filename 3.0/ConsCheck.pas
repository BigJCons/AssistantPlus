unit ConsCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Masks, ShellAPI, ShlObj,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    NumberOfCons: TLabel;
    ConsCheckEdit1: TEdit;
    ConsCheckEdit2: TEdit;
    ConsCheckEdit3: TEdit;
    ConsCheckEdit4: TEdit;
    ConsCheckEdit5: TEdit;
    Cons1path: TBitBtn;
    Cons2path: TBitBtn;
    Cons3path: TBitBtn;
    Cons4path: TBitBtn;
    Cons5path: TBitBtn;
    ConsDel: TBitBtn;
    CheckBoxCons1: TCheckBox;
    CheckBoxCons2: TCheckBox;
    CheckBoxCons3: TCheckBox;
    CheckBoxCons4: TCheckBox;
    CheckBoxCons5: TCheckBox;
    Captcha: TLabel;
    CaptchaEdit: TEdit;
    ConsDelConfirm: TBitBtn;
    ClearCons1path: TBitBtn;
    ClearCons3path: TBitBtn;
    ClearCons4path: TBitBtn;
    ClearCons5path: TBitBtn;
    ClearCons2path: TBitBtn;
    ScanCons: TBitBtn;
    FixCons: TBitBtn;
    CurrentVR: TLabel;
    CurrentExeSize: TLabel;
    CurrentVRSize: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Border1: TPanel;
    Border2: TPanel;
    ComboBox1: TComboBox;
    procedure Cons1pathClick(Sender: TObject);
    procedure Cons2pathClick(Sender: TObject);
    procedure Cons3pathClick(Sender: TObject);
    procedure Cons4pathClick(Sender: TObject);
    procedure Cons5pathClick(Sender: TObject);
    procedure ConsDelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ConsDelConfirmClick(Sender: TObject);
    procedure ClearCons1pathClick(Sender: TObject);
    procedure ClearCons2pathClick(Sender: TObject);
    procedure ClearCons3pathClick(Sender: TObject);
    procedure ClearCons4pathClick(Sender: TObject);
    procedure ClearCons5pathClick(Sender: TObject);
    procedure ScanConsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     Procedure GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
    Message wm_GetMinMaxInfo;
  end;

var
  Form6: TForm6;
RandomCaptcha : smallint;
implementation

uses
  unit1, unit4;

{$R *.dfm}

Procedure TForm6.GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
Begin
    with MinMaxMessage.MinMaxInfo^ Do
    begin
      ptMaxPosition.X := 0;
      ptMaxPosition.Y := 0;
      ptMinTrackSize.X := 1280;
      ptMinTrackSize.Y := 415;
      ptMaxTrackSize.X := 1280;
      ptMaxTrackSize.Y := 415;
    end;
End;

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

//������������ ������ ������ ���� ��� ���������. �� ��������� ������ Edit1 ����� ������������
procedure TForm6.Cons1pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit1.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons2pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit2.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons3pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit3.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons4pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit4.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons5pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := '�������� ����� ��� �����������:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit5.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

//������ ������� ������ ����
procedure TForm6.BitBtn1Click(Sender: TObject);
begin
ShowMessage(ComboBox1.Text);
end;

procedure TForm6.ClearCons1pathClick(Sender: TObject);
begin
ConsCheckEdit1.Text := '�������� �1';
end;

procedure TForm6.ClearCons2pathClick(Sender: TObject);
begin
ConsCheckEdit2.Text := '�������� �2';
end;

procedure TForm6.ClearCons3pathClick(Sender: TObject);
begin
ConsCheckEdit3.Text := '�������� �3';
end;

procedure TForm6.ClearCons4pathClick(Sender: TObject);
begin
ConsCheckEdit4.Text := '�������� �4';
end;

procedure TForm6.ClearCons5pathClick(Sender: TObject);
begin
ConsCheckEdit5.Text := '�������� �5';
end;

//������ ������������ �+ �� ������� �������
procedure TForm6.ScanConsClick(Sender: TObject);
var
F : File of byte;
Size : Integer;
i, j, PositionSharp, PositionType : shortint;
Checksize, distrdata, SQLquery, ComplectName : string;
distrlist, baselist, StandartBaselist, Base4Compare : TStringList;
distr : TextFile;
SR : TSearchRec;
Abracadabra : Boolean;

begin

//������������ � ������� TechInfo ��� �������� ������ �� ������ � ���-�����
DataModule5.ClientDataSet1.Active := False;
DataModule5.SQLQuery1.Close;
DataModule5.SQLQuery1.SQL.Clear;
DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM TechInfo';
DataModule5.SQLQuery1.Open;
DataModule5.ClientDataSet1.Active := True;

(*
��� �� ����������:
������ ������ - DataModule5.SQLQuery1.Fields[0].AsString;
������ ������ - DataModule5.SQLQuery1.Fields[1].AsString;
������ ��� - DataModule5.SQLQuery1.Fields[2].AsString;
���� ��� - DataModule5.SQLQuery1.Fields[3].AsString;
*)

//��������� ��� ������ ����
 if (CheckBoxCons1.Checked = False) and
(CheckBoxCons2.Checked = False) and
(CheckBoxCons3.Checked = False) and
(CheckBoxCons4.Checked = False) and
(CheckBoxCons5.Checked = False) then
ShowMessage('�� ������ �� �������')
else begin
//��� ����������� ���� ������ ��� ��������� �1, �.�. ����������� ��� ���������, �� ����������� ������ ConsCheckEdit
    if CheckBoxCons1.Checked = True then         //��������� ��������� �1
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** ����� ������������� ������� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ComboBox1.Text, 'vr*.res', Memo1.Lines, true);     //���� ��� ����� �� ����� � ����� �� � ����
       i := 2;                       //�������� � 2, �.�. 0-�� � 1-�� ��� ��������� ������
        while i <> Memo1.Lines.Count do         //������� ���� �� ���� �������� �������
         begin
          AssignFile(F, Memo1.Lines[i]);       //������ ������ � ������� ��� ������
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := '��' else Checksize := '���';   //������� � ��������
          Memo1.Lines.Insert(i+1, '������ �����:' + IntToStr(Size));      //��������� ������ ����� �������� � ���������� ��������
          Memo1.Lines.Insert(i+2, '���������� � ��������:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);   //��� �������� ������
          i := i + 4;           //������� �� +4 ��-�� ��� �������������� �������
          CloseFile(F);
         end;

       memo1.Lines.Add('** ����� exe-����� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ComboBox1.Text, 'cons.exe', Memo1.Lines, true);      //���� cons.exe � ���������� ��� � ����
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);     //����� ���������� � ��������� ������ � ����, ��� �����, �.�. ���-���� ������ ����
       Reset(F);
       Size:=Filesize(F);         //������� ������
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := '��' else Checksize := '���';      //������� � ��������
       Memo1.Lines.Add('������ �����:' + IntToStr(Size));      //�.�. ���-���� ������ ����, ��� ����� "����������" ������ ����� ��������, ������� ������ ��������� � �����
       Memo1.Lines.Add('���������� � ��������:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** ����� ������������� **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;                //������� ������-����, ������ ��� ������������� �����, � ������ ��������� ���� ��� �� ��������� �������

       if FindFirst(ComboBox1.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then //���� ��� ������������ � ����� ����� ���������� + \Distr\Din\. �������� �������������� � ��������, ���� ���������.
          begin
            repeat
            AssignFile(distr, ComboBox1.Text + '\Distr\Din\' + SR.Name);     //��������� ������ �����������
            Reset(distr);
            Abracadabra := false;        //����������-������, ������ �� False �� ���������
            while Abracadabra = false do        //���� ������ False ��������� ��������� ���������� ������������
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              //���� � ������ ����������� ���������� ����� (��� ������������) ������ ������ � True, ����� - ������ �� �����
              //������ ������ ����������� ReadLn ��������� ���, ���� �� ��������, ��� ����� ������������ ����� ��������. ������� �� ���������! :)
              end;
            distrlist.Add(distrdata); //����� ��� ������������ � ������-����
            Abracadabra := false;   //����������-������, ������ �� False �� ���������
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='�') and (distrdata[2]='�') and (distrdata[3]='�') then Abracadabra := true else Abracadabra := false;
              //� ���������� ������������ ��� ���������� ������� � ������������ �������. ������ ���������, ���� �� ������ ������� "���".
              end;
            distrlist.Add(distrdata); //����� ��� ������� � ������-����
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);     //������� �� ������
          end;

       //�� ��������� ����������� �������� ���������� ������������ � �����. ������� ��������.
       i:=0;
       repeat
        distrdata := distrlist[i]; //��������� ������ ������ ������-����� � ����������-������
        PositionSharp := AnsiPos('#', distrdata);  //� ��������� ������������� (RAPS, RLAW) �������� �������� �� ������ �������� #. ���� ���.
        if PositionSharp <> 0 then  //���� ������ ������ - ������ ����.
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1); //�������� ��� �� ������, �� ������� ������� # � ��������� � ����������-������.
           end else  //���� ������ �� ������ (��� �������� � LAW12345.DIN) ���� ������� ����
           begin
            for j := 1 to Length(distrdata) do //����������� ������ ������
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
            //�������� �������, ���� ��� ������ � ���������� �������, ����� - ������� �� �����, ����� �� �������� ������� �� ���������� �����.
            end;

        i:=i+1; //��������� �� 1, �.�. � ����������� ���������� �������� ������������� � �� �����������
        distrdata := distrlist[i]; //��������� ������ ������ ������-����� � ����������-������
          PositionType := AnsiPos('���-�', distrdata);
           if PositionType <> 0 then
             SQLquery := SQLquery + '_OVKF' //��������� �� ��� ���-�
             else
               PositionType := AnsiPos('���������', distrdata); //��������� �� ���� "���������", "����" �.�. ��� �������� ����� (���������) � ��������
                  if PositionType <> 0 then  //���� ������ - ��������� � ������� _loc
                  SQLquery := SQLquery + '_loc'
                  else //��������� �� ���-�
                    PositionType := AnsiPos('���-�', distrdata);
                    if PositionType <> 0 then
                    SQLquery := SQLquery + '_OVM-F' else  //��������� � ������� _OVM-F
                    SQLquery := SQLquery + '_set';    //��������� � ������� _set

       SQLquery := SQLquery + '|'; //�������� ��������� ����������� ������������.
       i:=i+1; //��������� �� 1, �.�. � ����������� ���������� �������� ������������� � �� �����������

       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do //��� ����������� ������� ��� ��������� ������������ � ����
          Memo1.Lines.Add(distrlist[i]);

       distrlist.Delimiter := '|';       //��������� ������ �� ������� |
       distrlist.DelimitedText := SQLquery;
       distrlist.Delete(distrlist.Count-1);  //������� ��������� �������, �.�. ��� ������

       //��� ���������� ����������

       baselist := TStringList.Create;                    //������� ������-�����
       StandartBaselist := TStringList.Create;
       Base4Compare := TStringList.Create;

                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //���������� ������� �������� ���������� (��, ������ ����� �������, ��������� ������)
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM Complect';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //�������� � ��������� ������-���� �������� ���� �����
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);          //������� � ��������� ������ ������ �������� ������������ �� �����
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //��������t� ������� ������� ����������
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM Complect WHERE ComplectName=''' + ComplectName + '''';   //������������ �������� ������� ������ � ��
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;  //�������� ������ id ������ ��� ������ �������

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';  //��������� id � �������� ������
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do   //�������� � ������� ������-���� �������� ���� �����
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);
                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //���������� ������� ������ ������ (���-�, ���-� � �.�.)
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM ComplectOff';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //�������� � ��������� ������-���� �������� ���� �����
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);        //������� � ��������� ������ ������ �������� ������������ �� �����
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //��������� ������� ������� ����������
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM ComplectOff WHERE ComplectName=''' + ComplectName + '''';    //������������ �������� ������� ������ � ��
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;    //�������� ������ id ������ ��� ������ �������

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';    //��������� id � �������� ������
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do             //�������� � ������� ������-���� �������� ���� �����
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);

                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //���������� ������� ���. ������
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM AddSystem';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //�������� � ��������� ������-���� �������� ���� �����
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do             //�.�. � �� ��� ������� �� ����� �������� _loc, _set � �.�. - ������� ��
         begin
           PositionSharp := AnsiPos ('_', distrlist[i]);   //������� ������ _
           distrlist[i] := copy(distrlist[i], 1, PositionSharp -1);    //������� ��� ����� ����� �������
         end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);     //������� � ��������� ������ ������ �������� ������������ �� �����
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //��������� ������� ������� ����������
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM AddSystem WHERE ComplectName=''' + ComplectName + '''';   //������������ �������� ������� ������ � ��
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;   //�������� ������ id ������ ��� ������ �������

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';  //��������� id � �������� ������
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do        //�������� � ������� ������-���� �������� ���� �����
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);     // �������� ��� ����������� ����

      StandartBaselist.Text := Base4Compare.Text;  //������ �������� ����� ��, ��� ������� � ����������� � �������������� �������

        //���� ��� ����� � \BASE � ������� � ������� �� � baselist
        //������� �������, ��������� ���������� ������ :)
         baselist.Clear;
        if FindFirst(ComboBox1.Text + '\BASE\*.*', faDirectory, SR) = 0 then
           begin
             repeat
               baselist.Add(SR.Name);
             until FindNext(SR) <> 0;
             FindClose(SR);
           end;

      //������ ����������� �� ���� �� ��������� ��������� ����������� ��� ��� ������������� ��, � ��� �� �������� � ���� ������ ��������������� �������.
      //�������� ���.
      StandartBaselist.Duplicates := dupIgnore;  //������� ��������� ���
      if  StandartBaselist.IndexOf('-') > -1 then StandartBaselist.Delete(StandartBaselist.IndexOf('-')); //���� � ������� ������������ ����������� �������

      //���������� �������� ��� ������� �������� ��������� ������.
      //�������� ���
      baselist.Delete(0);         //������� ������ � ������ - �������� �� ������� ����� � ������� ����������  ( '.' � '..')
      baselist.Delete(0);         //������� 0-�� ������� ������, �.�. ������ ���������

      if baselist.IndexOf('COMMON') > -1 then baselist.Delete(baselist.IndexOf('COMMON'));  //������� �� ������ ��������� ����� Common
      // ����� ���� �������� ����������� ���������, �.�. ��� ����� ���� ������, �� ��� ����� ������ ��� ����������, ���� �� ����� ���������� �+ � ���.

      Base4Compare.Clear;         //������� ������ ����, � ���������� ����� ������������ ��� ��� ��������� ��������� ��� � ������� ���

      //��� ����������� ���������� � ������������� ��� ��� ���������� �������� 2 ������ ����� ����� �����

      //������� ��������� ������, ���������� �� �������������, � ���������� �������������� ������
      for i := 0 to baselist.Count-1 do
        if StandartBaselist.IndexOf(baselist[i]) <0 then Base4Compare.Add(baselist[i]);

      if Base4Compare.Count > 0 then
                                  begin
                                  Base4Compare.Insert(0,'** ������� ���������� ���� **' + #13);  //���� ������ �� ���� - ��������� � 0-�� ������ �����
                                  Base4Compare.Insert(1,'---------------------------');
                                  end
                                else  Base4Compare.Add('** ���������� ����  �� ������**');   //���� ������ ���� - ��������� ����� �� ����� � ������

        Base4Compare.Add(#13);
        j := Base4Compare.Count;   // �.�. � ���������� ���-�� ��������� � �������� ������ ����� ����������, � ��� ���������� �������� ����� - ����������� ������� ���-�� ���������

      //������� ������ ���������� �������������� ���� �� �������, ���������� ��� �� �������������
      for i := 0 to StandartBaselist.Count-1 do
        if baselist.IndexOf(StandartBaselist[i]) <0 then Base4Compare.Add(StandartBaselist[i]);

       if Base4Compare.Count > j then
                                  begin
                                  Base4Compare.Insert(j,'** ������� ����������� ���� **');  //���� �������� ������ ���������� - � ��� ��������� ����������� ����. ������� ����� � ������ ������ ����������� ���.
                                  Base4Compare.Insert(j+1,'---------------------------');
                                  end
                                 else Base4Compare.Add('** ������������� ���� �� ������� **'); //���� �� ���������� - ��������� � �����, ��� �� ������

      if Base4Compare.Count = 2 then //������� ��������� ��������. ���� ������� 2 - ��� ������, ��� �� � �������. ������� �� ���������� � �������� ��������.
          begin
            Base4Compare.Clear;
            Base4Compare.Add('** �������� ������������� ������� **');
          end;
      Memo2.Text := Base4Compare.Text;
      end;

    if CheckBoxCons2.Checked = True then           //��������� ��������� �2
      begin

       memo1.Lines.Clear;
       memo1.Lines.Add('** ����� ������������� ������� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit2.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := '��' else Checksize := '���';
          Memo1.Lines.Insert(i+1, '������ �����:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, '���������� � ��������:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** ����� exe-����� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit2.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := '��' else Checksize := '���';
       Memo1.Lines.Add('������ �����:' + IntToStr(Size));
       Memo1.Lines.Add('���������� � ��������:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** ����� ������������� **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit2.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit2.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='�') and (distrdata[2]='�') and (distrdata[3]='�') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('���������', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;

    if CheckBoxCons3.Checked = True then              //��������� ��������� �3
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** ����� ������������� ������� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit3.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := '��' else Checksize := '���';
          Memo1.Lines.Insert(i+1, '������ �����:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, '���������� � ��������:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** ����� exe-����� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit3.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := '��' else Checksize := '���';
       Memo1.Lines.Add('������ �����:' + IntToStr(Size));
       Memo1.Lines.Add('���������� � ��������:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** ����� ������������� **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit3.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit3.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='�') and (distrdata[2]='�') and (distrdata[3]='�') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('���������', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;

    if CheckBoxCons4.Checked = True then                  //��������� ��������� �4
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** ����� ������������� ������� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit4.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := '��' else Checksize := '���';
          Memo1.Lines.Insert(i+1, '������ �����:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, '���������� � ��������:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** ����� exe-����� **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit4.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := '��' else Checksize := '���';
       Memo1.Lines.Add('������ �����:' + IntToStr(Size));
       Memo1.Lines.Add('���������� � ��������:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** ����� ������������� **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit4.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit4.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='�') and (distrdata[2]='�') and (distrdata[3]='�') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('���������', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);


       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;


    if CheckBoxCons5.Checked = True then                //��������� ��������� �5
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('����� ������������� �������');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit5.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := '��' else Checksize := '���';
          Memo1.Lines.Insert(i+1, '������ �����:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, '���������� � ��������:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('����� exe-�����');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit5.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := '��' else Checksize := '���';
       Memo1.Lines.Add('������ �����:' + IntToStr(Size));
       Memo1.Lines.Add('���������� � ��������:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** ����� ������������� **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit5.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit5.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='�') and (distrdata[2]='�') and (distrdata[3]='�') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('���������', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;
  end;
end;

//������ ���������������� ��������
procedure TForm6.ConsDelClick(Sender: TObject);
begin
if (CheckBoxCons1.Checked = False) and
   (CheckBoxCons2.Checked = False) and
   (CheckBoxCons3.Checked = False) and
   (CheckBoxCons4.Checked = False) and
   (CheckBoxCons5.Checked = False) then
ShowMessage('�� ������ �� �������')
else
  begin
    ShowMessage('�� ��������� ������� ��������� ��������� ���������������' + #13
      + '��������, �� ���������, ��� �������.' + #13
      + '��� ����, ����� ���������, ��� ���� ��������� �������� - ������� �����.' + #13
      + '���� �� ������ �� ��� ������ �������� - ����������� ��� ���������, ����� �� ����� ������ � ������������ ������.'+ #13
      + 'P.S. �� ������������!');

    Randomize;           //������� �������� ����� � �������� 10 000
    RandomCaptcha := 1 + Random(10000);  //��, ���������� ���������� ���, �� ��� ���� �������� � � ������ ���������
    Captcha.Caption := '������� �����: ' + #13 + inttostr(RandomCaptcha);

    Captcha.Visible := True;
    CaptchaEdit.Visible := True;
    ConsDelConfirm.Visible := True;
  end;
end;

//������ �������������� ��������
procedure TForm6.ConsDelConfirmClick(Sender: TObject);
var
pass : string;

begin
If CaptchaEdit.Text = '�����' then ShowMessage('����� �� ���� ���� ������') //��������, ���� ������������ �� ��� �����
  else begin
   try
     pass := CaptchaEdit.Text;
       if StrToInt(pass) = RandomCaptcha then      //��������� � ������
        begin
          if (CheckBoxCons1.Checked = False) and
             (CheckBoxCons2.Checked = False) and
             (CheckBoxCons3.Checked = False) and
             (CheckBoxCons4.Checked = False) and
             (CheckBoxCons5.Checked = False) then
             ShowMessage('�� ������ �� �������') else
             begin
             //��� ������� �+
             ShowMessage('�������!');
              if (CheckBoxCons1.Checked = True) and (ConsCheckEdit1.Text <> '�������� �1') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit1.Text+'\*.*');
                                                                                           CheckBoxCons1.Checked := False;
                                                                                        end;
              if (CheckBoxCons2.Checked = True) and (ConsCheckEdit2.Text <> '�������� �2') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit2.Text+'\*.*');
                                                                                           CheckBoxCons2.Checked := False;
                                                                                        end;
              if (CheckBoxCons3.Checked = True) and (ConsCheckEdit3.Text <> '�������� �3') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit3.Text+'\*.*');
                                                                                           CheckBoxCons3.Checked := False;
                                                                                        end;
              if (CheckBoxCons4.Checked = True) and (ConsCheckEdit4.Text <> '�������� �4') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit4.Text+'\*.*');
                                                                                           CheckBoxCons4.Checked := False;
                                                                                        end;
              if (CheckBoxCons5.Checked = True) and (ConsCheckEdit5.Text <> '�������� �5') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit5.Text+'\*.*');
                                                                                           CheckBoxCons5.Checked := False;
                                                                                        end;
             end;

        end else
        begin
         ShowMessage('����� ������� �������');  //��������, ���� ����� �� �� �����
        end;

   except
     begin
      ShowMessage('������� ������ ���� �����!');  //�������� �� �����, ������ �����
     end;
   end;
end;
end;

//������� ������� ���.������ �� �+ �� �����
procedure TForm6.FormActivate(Sender: TObject);

begin

DataModule5.ClientDataSet1.Active := False;
DataModule5.SQLQuery1.Close;
DataModule5.SQLQuery1.SQL.Clear;
DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM TechInfo';
DataModule5.SQLQuery1.Open;
DataModule5.ClientDataSet1.Active := True;

CurrentVR.Caption := CurrentVR.Caption + DataModule5.SQLQuery1.FieldByName('vrVersion').AsString;
CurrentVRSize.Caption := CurrentVRSize.Caption + DataModule5.SQLQuery1.FieldByName('vrSize').AsString;
CurrentExeSize.Caption := CurrentExeSize.Caption + DataModule5.SQLQuery1.FieldByName('exeSize').AsString;
end;



end.
