unit Password;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons;

type
  TPasswordDlg1 = class(TForm)
    Label1: TLabel;
    PasswordEdit: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    LoginEdit: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg1;

implementation

{$R *.dfm}

end.
 
