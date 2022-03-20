unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    About: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  Procedure GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
  Message wm_GetMinMaxInfo;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

Procedure TForm3.GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
Begin
  With MinMaxMessage.MinMaxInfo^ Do
  Begin
    ptMaxPosition.x:=0;
    ptMaxPosition.Y:=0;
    ptMinTrackSize.X:=480;
    ptMinTrackSize.Y:=240;
    ptMaxTrackSize.X:=480;
    ptMaxTrackSize.Y:=240;
  End;
End;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  Form3.Close;
end;

end.
