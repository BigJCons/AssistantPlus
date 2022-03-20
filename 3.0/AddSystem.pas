unit AddSystem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    BitBtn1: TBitBtn;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
//    procedure SVRAPSSelector(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    procedure SystemSelectAdd(SystemName: string);
    procedure SystemSelectDel(SystemName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox49Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure CheckBox40Click(Sender: TObject);
    procedure CheckBox41Click(Sender: TObject);
    procedure CheckBox42Click(Sender: TObject);
    procedure CheckBox43Click(Sender: TObject);
    procedure CheckBox44Click(Sender: TObject);
    procedure CheckBox45Click(Sender: TObject);
    procedure CheckBox46Click(Sender: TObject);
    procedure CheckBox47Click(Sender: TObject);
    procedure CheckBox48Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure CheckBox21Click(Sender: TObject);
    procedure CheckBox22Click(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
    procedure CheckBox24Click(Sender: TObject);
    procedure CheckBox25Click(Sender: TObject);
    procedure CheckBox26Click(Sender: TObject);
    procedure CheckBox27Click(Sender: TObject);
    procedure CheckBox28Click(Sender: TObject);
    procedure CheckBox29Click(Sender: TObject);
    procedure CheckBox30Click(Sender: TObject);
    procedure CheckBox31Click(Sender: TObject);
    procedure CheckBox32Click(Sender: TObject);
    procedure CheckBox33Click(Sender: TObject);
    procedure CheckBox34Click(Sender: TObject);
    procedure CheckBox35Click(Sender: TObject);
    procedure CheckBox36Click(Sender: TObject);
    procedure CheckBox37Click(Sender: TObject);
    procedure CheckBox38Click(Sender: TObject);
    procedure CheckBox39Click(Sender: TObject);
    procedure CheckBox50Click(Sender: TObject);
    procedure CheckBox51Click(Sender: TObject);
    procedure CheckBox52Click(Sender: TObject);
    procedure CheckBox53Click(Sender: TObject);
    procedure CheckBox54Click(Sender: TObject);
    procedure CheckBox55Click(Sender: TObject);
    procedure CheckBox56Click(Sender: TObject);
    procedure CheckBox57Click(Sender: TObject);
    procedure CheckBox58Click(Sender: TObject);
    procedure CheckBox60Click(Sender: TObject);
    procedure CheckBox59Click(Sender: TObject);
    procedure CheckBox61Click(Sender: TObject);
    procedure CheckBox62Click(Sender: TObject);
    procedure CheckBox63Click(Sender: TObject);
    procedure CheckBox64Click(Sender: TObject);
    procedure CheckBox65Click(Sender: TObject);
    procedure CheckBox66Click(Sender: TObject);
    procedure CheckBox67Click(Sender: TObject);
    procedure CheckBox68Click(Sender: TObject);
    procedure CheckBox69Click(Sender: TObject);
    procedure CheckBox70Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
    Message wm_GetMinMaxInfo;
  end;

var
  Form2: TForm2;
  SQLQuest : string;
  AVV, AVS, ADV, AZS, AMS, APV, ASZ, ASK, AUR, ACN : Boolean;
  RAPS001, RAPS002, RAPS003, RAPS004, RAPS005, RAPS006, RAPS007, RAPS008,
  MAPS, RAPS011, RAPS012, RAPS013, RAPS014, RAPS015, RAPS016, RAPS017,
  RAPS018, RAPS019, RAPS020, RAPS021 : Boolean;

implementation

uses
  Unit4, unit1;

{$R *.dfm}
Procedure TForm2.FormCreate(Sender: TObject);
begin
  AVV := False;
  AVS := False;
  ADV := False;
  AZS := False;
  AMS := False;
  APV := False;
  ASZ := False;
  ASK := False;
  AUR := False;
  ACN := False;
  RAPS001 := False;
  RAPS002 := False;
  RAPS003 := False;
  RAPS004 := False;
  RAPS005 := False;
  RAPS006 := False;
  RAPS007 := False;
  RAPS008 := False;
  MAPS := False;
  RAPS011 := False;
  RAPS012 := False;
  RAPS013 := False;
  RAPS014 := False;
  RAPS015 := False;
  RAPS016 := False;
  RAPS017 := False;
  RAPS018 := False;
  RAPS019 := False;
  RAPS020 := False;
  RAPS021 := False;
end;

procedure TForm2.BitBtn1Click(Sender: TObject); //Çàêðûòü îêíî
begin
Form2.Close;
end;

Procedure TForm2.GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo); //Ôèêñàöèÿ ðàçìåðîâ îêíà
Begin
  With MinMaxMessage.MinMaxInfo^ Do
  Begin
    ptMaxPosition.x:=0;
    ptMaxPosition.Y:=0;
    ptMinTrackSize.X:=1050;
    ptMinTrackSize.Y:=580;
    ptMaxTrackSize.X:=1050;
    ptMaxTrackSize.Y:=580;
  End;
End;

procedure TForm2.SystemSelectAdd(SystemName: string); //Ïðîöåäóðà äîáàâëåíèÿ äîï. ñèñòåìû â ïåðå÷åíü
var i : smallInt;
    AddSizeResult : real;
begin
  DataModule5.ClientDataSet2.Active := False;
  DataModule5.SQLQuery4.Close;
  DataModule5.SQLQuery4.SQL.Clear;
  DataModule5.SQLQuery4.SQL.Text := 'SELECT Base_id FROM AddSystem WHERE ComplectName=''' + SystemName + ''';';
  DataModule5.SQLQuery4.Open;
  DataModule5.ClientDataSet2.Active := True;

  if SQLQuest <> '' then SQLQuest := SQLQuest + ', ' ;

  SQLQuest:= SQLQuest +  DataModule5.SQLQuery4.Fields[0].AsString;

  DataModule5.ClientDataSet2.Active := False;
  DataModule5.SQLQuery3.Close;
  DataModule5.SQLQuery3.SQL.Clear;
  DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM System WHERE id IN (' + SQLQuest + ');';
  DataModule5.SQLQuery3.Open;
  DataModule5.ClientDataSet2.Active := True;

  for i  := 0 to DataModule5.ClientDataSet2.RecordCount - 1 do
        begin
          AddSizeResult := AddSizeResult + StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ));
          DataModule5.SQLQuery3.Next;
        end;
  Form1.AddSysVolumeValue.Caption := FloatToStr(AddSizeResult);
  Form1.AddSysVolumeValue.Visible := True;

  Form1.DBGridEh2.Columns[3].Visible := False;
  Form1.DBGridEh2.Columns[4].Visible := True;
  Form1.DBGridEh2.Columns[4].Width := 65;
end;

procedure TForm2.SystemSelectDel(SystemName: string);   //Ïðîöåäóðà óäàëåíèÿ äîï. ñèñòåìû èç ïåðå÷íÿ
var
  Pstr: string;
  Position: integer;
  var i : smallInt;
  AddSizeResult : real;
begin
  DataModule5.ClientDataSet2.Active := False;
  DataModule5.SQLQuery4.Close;
  DataModule5.SQLQuery4.SQL.Clear;
  DataModule5.SQLQuery4.SQL.Text := 'SELECT Base_id FROM AddSystem WHERE ComplectName=''' + SystemName + ''';';
  DataModule5.SQLQuery4.Open;
  DataModule5.ClientDataSet2.Active := True;

    Pstr := DataModule5.SQLQuery4.Fields[0].AsString;
    if Pstr <> SQLQuest then
      begin
        Position := Pos(Pstr, SQLQuest);
        Delete(SQLQuest, Position, Length(Pstr)+2);
          if SQLQuest[Length(SQLQuest)-1] = ',' then Delete(SQLQuest, Length(SQLQuest)-1, 2);
        DataModule5.ClientDataSet2.Active := False;
        DataModule5.SQLQuery3.Close;
        DataModule5.SQLQuery3.SQL.Clear;
        DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM System WHERE id IN (' + SQLQuest + ');';
        DataModule5.SQLQuery3.Open;
        DataModule5.ClientDataSet2.Active := True;

     for i  := 0 to DataModule5.ClientDataSet2.RecordCount - 1 do
        begin
          AddSizeResult := AddSizeResult + StrToFloat(StringReplace(DataModule5.SQLQuery3.Fields[5].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase] ));
          DataModule5.SQLQuery3.Next;
        end;
     Form1.AddSysVolumeValue.Caption := FloatToStr(AddSizeResult);
     Form1.AddSysVolumeValue.Visible := True;

      end
    else
      begin
        SQLQuest := '';
        DataModule5.ClientDataSet2.Active := False;
        DataModule5.SQLQuery3.Close;
        DataModule5.SQLQuery3.SQL.Clear;
        DataModule5.SQLQuery3.SQL.Text := 'SELECT * FROM System WHERE id=0';
        DataModule5.SQLQuery3.Open;
        DataModule5.ClientDataSet2.Active := True;
        Form1.AddSysVolumeValue.Caption := '0';
        Form1.AddSysVolumeValue.Visible := False;
      end;

end;

procedure TForm2.CheckBox2Click(Sender: TObject);       //Òîìñêèé âûïóñê
var
  SystemName: string;
begin
  SystemName := 'RLAW091';
  if CheckBox2.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox1Click(Sender: TObject);       //ÏÀÑ
var
  SystemName: string;
begin
  SystemName := 'PAS';
  if CheckBox1.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox3Click(Sender: TObject);       //ÝÏ
var
  SystemName: string;
begin
  SystemName := 'EXP';
  if CheckBox3.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox4Click(Sender: TObject);       //ÄÑÑÐ
var
  SystemName: string;
begin
  SystemName := 'ESU';
  if CheckBox4.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox5Click(Sender: TObject);       //ÏÐÑÑ -> ÏÐÀÑ
var
  SystemName: string;
begin
  SystemName := 'PRSS';
  if CheckBox5.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox60Click(Sender: TObject);      //ÈÂÁÑ -> ÈÁÓÔ
var
  SystemName: string;
begin
  SystemName := 'IVBS';
  if CheckBox60.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox61Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IVSR';
  if CheckBox61.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox62Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IVKP';
  if CheckBox62.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox63Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IVGZ';
  if CheckBox63.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox64Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'PISH';
  if CheckBox64.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox65Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'PRSOJ';
  if CheckBox65.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox66Click(Sender: TObject);      //ÔÊÐÍÊ
var
  SystemName: string;
begin
  SystemName := 'FKRNK';
  if CheckBox66.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox67Click(Sender: TObject);      //ÔÊÐÄÐ
var
  SystemName: string;
begin
  SystemName := 'FKRDR';
  if CheckBox67.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox68Click(Sender: TObject);      //ÔÊÐÊÐ
var
  SystemName: string;
begin
  SystemName := 'FKRKR';
  if CheckBox68.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox6Click(Sender: TObject);       //ÐÂÑ
var
  SystemName: string;
begin
  SystemName := 'ARB';
  if CheckBox6.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox7Click(Sender: TObject);       //ÑâÊÀ
var
  SystemName: string;
begin
  SystemName := 'SVA';
  if CheckBox7.Checked=True then
  begin
    if CheckBox8.Checked = True then
    begin
      AVV := True;
      SystemSelectDel('AVV');
    end;
    CheckBox8.OnClick := nil;
    CheckBox8.Checked := True;
    CheckBox8.Enabled:=False;
    CheckBox8.OnClick := CheckBox8Click;

    if CheckBox9.Checked = True then
    begin
      AVS := True;
      SystemSelectDel('AVS');
    end;
    CheckBox9.OnClick := nil;
    CheckBox9.Checked := True;
    CheckBox9.Enabled:=False;
    CheckBox9.OnClick := CheckBox9Click;

    if CheckBox10.Checked = True then
    begin
      ADV := True;
      SystemSelectDel('ADV');
    end;
    CheckBox10.OnClick:=nil;
    CheckBox10.Checked:=True;
    CheckBox10.Enabled:=False;
    CheckBox10.OnClick := CheckBox10Click;

    if CheckBox11.Checked = True then
    begin
      AZS := True;
      SystemSelectDel('AZS');
    end;
    CheckBox11.OnClick:=nil;
    CheckBox11.Checked:=True;
    CheckBox11.Enabled:=False;
    CheckBox11.OnClick := CheckBox11Click;

    if CheckBox12.Checked = True then
    begin
      AMS := True;
      SystemSelectDel('AMS');
    end;
    CheckBox12.OnClick:=nil;
    CheckBox12.Checked:=True;
    CheckBox12.Enabled:=False;
    CheckBox12.OnClick := CheckBox12Click;

    if CheckBox13.Checked = True then
    begin
      APV := True;
      SystemSelectDel('APV');
    end;
    CheckBox13.OnClick:=nil;
    CheckBox13.Checked:=True;
    CheckBox13.Enabled:=False;
    CheckBox13.OnClick := CheckBox13Click;

    if CheckBox14.Checked = True then
    begin
      ASZ := True;
      SystemSelectDel('ASZ');
    end;
    CheckBox14.OnClick:=nil;
    CheckBox14.Checked:=True;
    CheckBox14.Enabled:=False;
    CheckBox14.OnClick := CheckBox14Click;

    if CheckBox15.Checked = True then
    begin
      ASK := True;
      SystemSelectDel('ASK');
    end;
    CheckBox15.OnClick:=nil;
    CheckBox15.Checked:=True;
    CheckBox15.Enabled:=False;
    CheckBox15.OnClick := CheckBox15Click;

    if CheckBox16.Checked = True then
    begin
      AUR := True;
      SystemSelectDel('AUR');
    end;
    CheckBox16.OnClick:=nil;
    CheckBox16.Checked:=True;
    CheckBox16.Enabled:=False;
    CheckBox16.OnClick := CheckBox16Click;

    if CheckBox17.Checked = True then
    begin
      ACN := True;
      SystemSelectDel('ACN');
    end;
    CheckBox17.OnClick:=nil;
    CheckBox17.Checked:=True;
    CheckBox17.Enabled:=False;
    CheckBox17.OnClick := CheckBox17Click;

    SystemSelectAdd(SystemName);
  end
  else
  begin
    CheckBox8.Enabled:=True;
    CheckBox9.Enabled:=True;
    CheckBox10.Enabled:=True;
    CheckBox11.Enabled:=True;
    CheckBox12.Enabled:=True;
    CheckBox13.Enabled:=True;
    CheckBox14.Enabled:=True;
    CheckBox15.Enabled:=True;
    CheckBox16.Enabled:=True;
    CheckBox17.Enabled:=True;

    if AVV = True then
    begin
      CheckBox8.Checked := True;
      SystemSelectAdd('AVV');
      AVV:=False;
    end
    else CheckBox8.Checked := False;

    if AVS = True then
    begin
      CheckBox9.Checked := True;
      SystemSelectAdd('AVS');
      AVS:=False;
    end
    else CheckBox9.Checked := False;

    if ADV = True then
    begin
      CheckBox10.Checked := True;
      SystemSelectAdd('ADV');
      ADV:=False;
    end
    else CheckBox10.Checked := False;

    if AZS = True then
    begin
      CheckBox11.Checked := True;
      SystemSelectAdd('AZS');
      AZS:=False;
    end
    else CheckBox11.Checked := False;

    if AMS = True then
    begin
      CheckBox12.Checked := True;
      SystemSelectAdd('AMS');
      AMS:=False;
    end
    else CheckBox12.Checked := False;

    if APV = True then
    begin
      CheckBox13.Checked := True;
      SystemSelectAdd('APV');
      APV:=False;
    end
    else CheckBox13.Checked := False;

    if ASZ = True then
    begin
      CheckBox14.Checked := True;
      SystemSelectAdd('ASZ');
      ASZ:=False;
    end
    else CheckBox14.Checked := False;

    if ASK = True then
    begin
      CheckBox15.Checked := True;
      SystemSelectAdd('ASK');
      ASK:=False;
    end
    else CheckBox15.Checked := False;

    if AUR = True then
    begin
      CheckBox16.Checked := True;
      SystemSelectAdd('AUR');
      AUR:=False;
    end
    else CheckBox16.Checked := False;

    if ACN = True then
    begin
      CheckBox17.Checked := True;
      SystemSelectAdd('ACN');
      ACN:=False;
    end
    else CheckBox17.Checked := False;

    SystemSelectDel(SystemName);
  end;
end;

procedure TForm2.CheckBox8Click(Sender: TObject);       //ÊÀ ÂÂÎ
var
  SystemName: string;
begin
  SystemName := 'AVV';
  if CheckBox8.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox9Click(Sender: TObject);       //ÊÀ ÂÑÎ
var
  SystemName: string;
begin
  SystemName := 'AVS';
  if CheckBox9.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox10Click(Sender: TObject);      //ÊÀ ÄÂÎ
var
  SystemName: string;
begin
  SystemName := 'ADV';
  if CheckBox10.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox11Click(Sender: TObject);      //ÊÀ ÇÑÎ
var
  SystemName: string;
begin
  SystemName := 'AZS';
  if CheckBox11.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox12Click(Sender: TObject);      //ÊÀ ÌÎ
var
  SystemName: string;
begin
  SystemName := 'AMS';
  if CheckBox12.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox13Click(Sender: TObject);      //ÊÀ ÏÎ
var
  SystemName: string;
begin
  SystemName := 'APV';
  if CheckBox13.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox14Click(Sender: TObject);      //ÊÀ ÑÇÎ
var
  SystemName: string;
begin
  SystemName := 'ASZ';
  if CheckBox14.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox15Click(Sender: TObject);      //ÊÀ ÑKÎ
var
  SystemName: string;
begin
  SystemName := 'ASK';
  if CheckBox15.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox16Click(Sender: TObject);      //ÊÀ ÓÎ
var
  SystemName: string;
begin
  SystemName := 'AUR';
  if CheckBox16.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox17Click(Sender: TObject);      //ÊÀ ÖÎ
var
  SystemName: string;
begin
  SystemName := 'ACN';
  if CheckBox17.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox18Click(Sender: TObject);      //ÊÀÍÑ
var
  SystemName: string;
begin
  SystemName := 'SVN';
  if CheckBox18.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox40Click(Sender: TObject);      //ÑÎÞ
var
  SystemName: string;
begin
  SystemName := 'SOJ';
  if CheckBox40.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox41Click(Sender: TObject);      //ÌÑÏ
var
  SystemName: string;
begin
  SystemName := 'MARB';
  if CheckBox41.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox42Click(Sender: TObject);      //ÑÏáÑÏ
var
  SystemName: string;
begin
  SystemName := 'SARB';
  if CheckBox42.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox43Click(Sender: TObject);      //ÑâåðäëÑÏ
var
  SystemName: string;
begin
  SystemName := 'RASVR';
  if CheckBox43.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox44Click(Sender: TObject);      //ÏÑÐ
var
  SystemName: string;
begin
  SystemName := 'PSR';
  if CheckBox44.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox45Click(Sender: TObject);      //ÂÎ
var
  SystemName: string;
begin
  SystemName := 'QSA';
  if CheckBox45.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox46Click(Sender: TObject);      //Ôèí
var
  SystemName: string;
begin
  SystemName := 'FIN';
  if CheckBox46.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox47Click(Sender: TObject);      //ÊÑ
var
  SystemName: string;
begin
  SystemName := 'KOR';
  if CheckBox47.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox48Click(Sender: TObject);      //ÊÁÎ
var
  SystemName: string;
begin
  SystemName := 'BORG';
  if CheckBox48.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox49Click(Sender: TObject);      //ÊÇ
var
  SystemName: string;
begin
  SystemName := 'CMT';
  if CheckBox49.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox19Click(Sender: TObject);      //ÑâÀÑ
var
  SystemName: string;
begin
  SystemName := 'SVRAPS';
  if CheckBox19.Checked=True then
    begin
        if CheckBox20.Checked = True then
          begin
          RAPS001 := True;
          SystemSelectDel('RAPS001');
          end;

        CheckBox20.OnClick := nil;
        CheckBox20.Checked := True;
        CheckBox20.Enabled:=False;
        CheckBox20.OnClick := CheckBox20Click;

        if CheckBox21.Checked = True then
          begin
          RAPS002 := True;
          SystemSelectDel('RAPS002');
          end;

        CheckBox21.OnClick := nil;
        CheckBox21.Checked := True;
        CheckBox21.Enabled:=False;
        CheckBox21.OnClick := CheckBox21Click;

        if CheckBox22.Checked = True then
          begin
          RAPS003 := True;
          SystemSelectDel('RAPS003');
          end;

        CheckBox22.OnClick := nil;
        CheckBox22.Checked := True;
        CheckBox22.Enabled:=False;
        CheckBox22.OnClick := CheckBox22Click;

        if CheckBox23.Checked = True then
          begin
          RAPS004 := True;
          SystemSelectDel('RAPS004');
          end;

        CheckBox23.OnClick := nil;
        CheckBox23.Checked := True;
        CheckBox23.Enabled:=False;
        CheckBox23.OnClick := CheckBox23Click;

        if CheckBox24.Checked = True then
          begin
          RAPS005 := True;
          SystemSelectDel('RAPS005');
          end;

        CheckBox24.OnClick := nil;
        CheckBox24.Checked := True;
        CheckBox24.Enabled:=False;
        CheckBox24.OnClick := CheckBox24Click;

        if CheckBox25.Checked = True then
          begin
          RAPS006 := True;
          SystemSelectDel('RAPS006');
          end;

        CheckBox25.OnClick := nil;
        CheckBox25.Checked := True;
        CheckBox25.Enabled:=False;
        CheckBox25.OnClick := CheckBox25Click;

        if CheckBox26.Checked = True then
          begin
          RAPS007 := True;
          SystemSelectDel('RAPS007');
          end;

        CheckBox26.OnClick := nil;
        CheckBox26.Checked := True;
        CheckBox26.Enabled:=False;
        CheckBox26.OnClick := CheckBox26Click;

        if CheckBox27.Checked = True then
          begin
          RAPS008 := True;
          SystemSelectDel('RAPS008');
          end;

        CheckBox27.OnClick := nil;
        CheckBox27.Checked := True;
        CheckBox27.Enabled:=False;
        CheckBox27.OnClick := CheckBox27Click;

        if CheckBox28.Checked = True then
          begin
          MAPS := True;
          SystemSelectDel('MAPS');
          end;

        CheckBox28.OnClick := nil;
        CheckBox28.Checked := True;
        CheckBox28.Enabled:=False;
        CheckBox28.OnClick := CheckBox28Click;

        if CheckBox29.Checked = True then
          begin
          RAPS011 := True;
          SystemSelectDel('RAPS011');
          end;

        CheckBox29.OnClick := nil;
        CheckBox29.Checked := True;
        CheckBox29.Enabled:=False;
        CheckBox29.OnClick := CheckBox29Click;

        if CheckBox30.Checked = True then
          begin
          RAPS012 := True;
          SystemSelectDel('RAPS012');
          end;

        CheckBox30.OnClick := nil;
        CheckBox30.Checked := True;
        CheckBox30.Enabled:=False;
        CheckBox30.OnClick := CheckBox30Click;

        if CheckBox31.Checked = True then
          begin
          RAPS013 := True;
          SystemSelectDel('RAPS013');
          end;

        CheckBox31.OnClick := nil;
        CheckBox31.Checked := True;
        CheckBox31.Enabled:=False;
        CheckBox31.OnClick := CheckBox31Click;

        if CheckBox32.Checked = True then
          begin
          RAPS014 := True;
          SystemSelectDel('RAPS014');
          end;

        CheckBox32.OnClick := nil;
        CheckBox32.Checked := True;
        CheckBox32.Enabled:=False;
        CheckBox32.OnClick := CheckBox32Click;

        if CheckBox33.Checked = True then
          begin
          RAPS015 := True;
          SystemSelectDel('RAPS015');
          end;

        CheckBox33.OnClick := nil;
        CheckBox33.Checked := True;
        CheckBox33.Enabled:=False;
        CheckBox33.OnClick := CheckBox33Click;

        if CheckBox34.Checked = True then
          begin
          RAPS016 := True;
          SystemSelectDel('RAPS016');
          end;

        CheckBox34.OnClick := nil;
        CheckBox34.Checked := True;
        CheckBox34.Enabled:=False;
        CheckBox34.OnClick := CheckBox34Click;

        if CheckBox35.Checked = True then
          begin
          RAPS017 := True;
          SystemSelectDel('RAPS017');
          end;

        CheckBox35.OnClick := nil;
        CheckBox35.Checked := True;
        CheckBox35.Enabled:=False;
        CheckBox35.OnClick := CheckBox35Click;

        if CheckBox36.Checked = True then
          begin
          RAPS018 := True;
          SystemSelectDel('RAPS018');
          end;

        CheckBox36.OnClick := nil;
        CheckBox36.Checked := True;
        CheckBox36.Enabled:=False;
        CheckBox36.OnClick := CheckBox36Click;

        if CheckBox37.Checked = True then
          begin
          RAPS019 := True;
          SystemSelectDel('RAPS019');
          end;

        CheckBox37.OnClick := nil;
        CheckBox37.Checked := True;
        CheckBox37.Enabled:=False;
        CheckBox37.OnClick := CheckBox37Click;

        if CheckBox38.Checked = True then
          begin
          RAPS020 := True;
          SystemSelectDel('RAPS020');
          end;

        CheckBox38.OnClick := nil;
        CheckBox38.Checked := True;
        CheckBox38.Enabled:=False;
        CheckBox38.OnClick := CheckBox38Click;

        if CheckBox39.Checked = True then
          begin
          RAPS021 := True;
          SystemSelectDel('RAPS021');
          end;

        CheckBox39.OnClick := nil;
        CheckBox39.Checked := True;
        CheckBox39.Enabled:=False;
        CheckBox39.OnClick := CheckBox39Click;

    SystemSelectAdd(SystemName);
    end
  else
    begin
        CheckBox20.Enabled:=True;
        CheckBox21.Enabled:=True;
        CheckBox22.Enabled:=True;
        CheckBox23.Enabled:=True;
        CheckBox24.Enabled:=True;
        CheckBox25.Enabled:=True;
        CheckBox26.Enabled:=True;
        CheckBox27.Enabled:=True;
        CheckBox28.Enabled:=True;
        CheckBox29.Enabled:=True;
        CheckBox30.Enabled:=True;
        CheckBox31.Enabled:=True;
        CheckBox32.Enabled:=True;
        CheckBox33.Enabled:=True;
        CheckBox34.Enabled:=True;
        CheckBox35.Enabled:=True;
        CheckBox36.Enabled:=True;
        CheckBox37.Enabled:=True;
        CheckBox38.Enabled:=True;
        CheckBox39.Enabled:=True;

        if RAPS001 = True then
          begin
          CheckBox20.Checked := True;
          SystemSelectAdd('RAPS001');
          RAPS001:=False;
          end
          else CheckBox20.Checked := False;

        if RAPS002 = True then
          begin
          CheckBox21.Checked := True;
          SystemSelectAdd('RAPS002');
          RAPS002:=False;
          end
          else CheckBox21.Checked := False;

        if RAPS003 = True then
          begin
          CheckBox22.Checked := True;
          SystemSelectAdd('RAPS003');
          RAPS003:=False;
          end
          else CheckBox22.Checked := False;

        if RAPS004 = True then
          begin
          CheckBox23.Checked := True;
          SystemSelectAdd('RAPS004');
          RAPS004:=False;
          end
          else CheckBox23.Checked := False;

        if RAPS005 = True then
          begin
          CheckBox24.Checked := True;
          SystemSelectAdd('RAPS005');
          RAPS005:=False;
          end
          else CheckBox24.Checked := False;

        if RAPS006 = True then
          begin
          CheckBox25.Checked := True;
          SystemSelectAdd('RAPS006');
          RAPS006:=False;
          end
          else CheckBox25.Checked := False;

        if RAPS007 = True then
          begin
          CheckBox26.Checked := True;
          SystemSelectAdd('RAPS007');
          RAPS007:=False;
          end
          else CheckBox26.Checked := False;

        if RAPS008 = True then
          begin
          CheckBox27.Checked := True;
          SystemSelectAdd('RAPS008');
          RAPS008:=False;
          end
          else CheckBox27.Checked := False;

        if MAPS = True then
          begin
          CheckBox28.Checked := True;
          SystemSelectAdd('MAPS');
          MAPS:=False;
          end
          else CheckBox28.Checked := False;

        if RAPS011 = True then
          begin
          CheckBox29.Checked := True;
          SystemSelectAdd('RAPS011');
          RAPS011:=False;
          end
          else CheckBox29.Checked := False;

        if RAPS012 = True then
          begin
          CheckBox30.Checked := True;
          SystemSelectAdd('RAPS012');
          RAPS012:=False;
          end
          else CheckBox30.Checked := False;

        if RAPS013 = True then
          begin
          CheckBox31.Checked := True;
          SystemSelectAdd('RAPS013');
          RAPS013:=False;
          end
          else CheckBox31.Checked := False;

        if RAPS014 = True then
          begin
          CheckBox32.Checked := True;
          SystemSelectAdd('RAPS014');
          RAPS014:=False;
          end
          else CheckBox32.Checked := False;


        if RAPS015 = True then
          begin
          CheckBox33.Checked := True;
          SystemSelectAdd('RAPS015');
          RAPS015:=False;
          end
          else CheckBox33.Checked := False;

        if RAPS016 = True then
          begin
          CheckBox34.Checked := True;
          SystemSelectAdd('RAPS016');
          RAPS016:=False;
          end
          else CheckBox34.Checked := False;

        if RAPS017 = True then
          begin
          CheckBox35.Checked := True;
          SystemSelectAdd('RAPS017');
          RAPS017:=False;
          end
          else CheckBox35.Checked := False;

        if RAPS018 = True then
          begin
          CheckBox36.Checked := True;
          SystemSelectAdd('RAPS018');
          RAPS018:=False;
          end
          else CheckBox36.Checked := False;

        if RAPS019 = True then
          begin
          CheckBox37.Checked := True;
          SystemSelectAdd('RAPS019');
          RAPS019:=False;
          end
          else CheckBox37.Checked := False;

        if RAPS020 = True then
          begin
          CheckBox38.Checked := True;
          SystemSelectAdd('RAPS020');
          RAPS020:=False;
          end
          else CheckBox38.Checked := False;

        if RAPS021 = True then
          begin
          CheckBox39.Checked := True;
          SystemSelectAdd('RAPS021');
          RAPS021:=False;
          end
          else CheckBox39.Checked := False;

    SystemSelectDel(SystemName);
    end;

end;

procedure TForm2.CheckBox20Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS001';
  if CheckBox20.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox21Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS002';
  if CheckBox21.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox22Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS003';
  if CheckBox22.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox23Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS004';
  if CheckBox23.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox24Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS005';
  if CheckBox24.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox25Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS006';
  if CheckBox25.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox26Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS007';
  if CheckBox26.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox27Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS008';
  if CheckBox27.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox28Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'MAPS';
  if CheckBox28.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox29Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS011';
  if CheckBox29.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox30Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS012';
  if CheckBox30.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox31Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS013';
  if CheckBox31.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox32Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS014';
  if CheckBox32.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox33Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS015';
  if CheckBox33.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox34Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS016';
  if CheckBox34.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox35Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS017';
  if CheckBox35.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox36Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS018';
  if CheckBox36.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox37Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS019';
  if CheckBox37.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox38Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS020';
  if CheckBox38.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox39Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'RAPS021';
  if CheckBox39.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox50Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IVRD';
  if CheckBox50.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox51Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'ORNN';
  if CheckBox51.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox52Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'PAP';
  if CheckBox52.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox53Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'STR';
  if CheckBox53.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox54Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'OTPB';
  if CheckBox54.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox55Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'PRJ';
  if CheckBox55.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox56Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'INT';
  if CheckBox56.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox57Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'MED';
  if CheckBox57.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox58Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IPNK';
  if CheckBox58.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox59Click(Sender: TObject);
var
  SystemName: string;
begin
  SystemName := 'IVPV';
  if CheckBox59.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox69Click(Sender: TObject);      //ÈÏÍÂ(ÁÎ)
var
  SystemName: string;
begin
  SystemName := 'IPNVBO';
  if CheckBox69.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

procedure TForm2.CheckBox70Click(Sender: TObject);      //ÏÐÀÑÂÏ
var
  SystemName: string;
begin
  SystemName := 'PRSSP';
  if CheckBox70.Checked=True then SystemSelectAdd(SystemName)
  else SystemSelectDel(SystemName)
end;

END.


