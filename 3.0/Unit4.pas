unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB, Unit1, Data.FMTBcd, Data.DbxSqlite,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TDataModule5 = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    SQLConnection1: TSQLConnection;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    SQLQuery5: TSQLQuery;
    SQLQuery6: TSQLQuery;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;
  FSQLiteConnection: TSQLConnection;
implementation

{$R *.dfm}

procedure TDataModule5.DataModuleCreate(Sender: TObject);
var
SRes: TSearchRec;

begin
  FindFirst('SYSTEM\tsk.db', faAnyFile, SRes);

  FSQLiteConnection:=TSQLConnection.Create(self);
  FSQLiteConnection.DriverName:='Sqlite';
  FSQLiteConnection.LoginPrompt:= False;

  //параметры соединения//
  FSQLiteConnection.Params.Values['Database']:='SYSTEM\' + SRes.Name;
  FSQLiteConnection.Params.Values['FailIfMissing']:='False';
  FSQLiteConnection.Connected:=True;

  FindClose(SRes);

  //Грид основной системы
  SQLQuery1.SQLConnection := FSQLiteConnection;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Text := 'SELECT * FROM SYSTEM ORDER BY id';
  SQLQuery1.Open;

  SQLQuery2.SQLConnection := FSQLiteConnection;

  DataSetProvider1.DataSet := SQLQuery1;

  ClientDataSet1.ProviderName := 'DataSetProvider1';
  ClientDataSet1.Active := True;

  DataSource1.DataSet := ClientDataSet1;
  Form1.DBGridEh1.DataSource := DataSource1;


  //Грид доп. систем
  SQLQuery3.SQLConnection := FSQLiteConnection;
  SQLQuery3.SQL.Clear;
  SQLQuery3.SQL.Text := 'SELECT * FROM SYSTEM ORDER BY id';
  SQLQuery3.Open;

  SQLQuery4.SQLConnection := FSQLiteConnection;

  DataSetProvider2.DataSet := SQLQuery3;

  ClientDataSet2.ProviderName := 'DataSetProvider2';
  ClientDataSet2.Active := True;

  DataSource2.DataSet := ClientDataSet2;
  Form1.DBGridEh2.DataSource := DataSource2;

  //Грид офлайн части
  SQLQuery5.SQLConnection := FSQLiteConnection;
  SQLQuery5.SQL.Clear;
  SQLQuery5.SQL.Text := 'SELECT * FROM SYSTEM ORDER BY id';
  SQLQuery5.Open;

  SQLQuery6.SQLConnection := FSQLiteConnection;

  DataSetProvider3.DataSet := SQLQuery5;

  ClientDataSet3.ProviderName := 'DataSetProvider3';
  ClientDataSet3.Active := True;

  DataSource3.DataSet := ClientDataSet3;
  Form1.DBGridEh3.DataSource := DataSource3;


end;

end.
