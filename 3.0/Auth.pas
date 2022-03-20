unit Auth;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TPasswordDlg = class(TForm)
    PasswordLabel: TLabel;
    PasswordEdit: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    LoginLabel: TLabel;
    LoginEdit: TEdit;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}
end.
 
