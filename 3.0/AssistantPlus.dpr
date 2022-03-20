program AssistantPlus;

uses
  Forms,
  unit1 in 'unit1.pas' {Form1},
  AddSystem in 'AddSystem.pas' {Form2},
  About in 'About.pas' {Form3},
  Unit4 in 'Unit4.pas' {DataModule5: TDataModule},
  Auth in 'Auth.pas' {PasswordDlg},
  ftpDownloaderMainForm in 'ftpDownloaderMainForm.pas' {FtpMultiForm},
  Compare in 'Compare.pas' {Form5},
  ConsCheck in 'ConsCheck.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TFtpMultiForm, FtpMultiForm);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
