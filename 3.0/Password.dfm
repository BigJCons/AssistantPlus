object PasswordDlg1: TPasswordDlg1
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Password Dialog'
  ClientHeight = 135
  ClientWidth = 233
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 49
    Width = 79
    Height = 13
    Caption = 'Enter password:'
  end
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 79
    Height = 13
    Caption = 'Enter password:'
  end
  object PasswordEdit: TEdit
    Left = 8
    Top = 67
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object OKBtn: TButton
    Left = 70
    Top = 99
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 150
    Top = 99
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object LoginEdit: TEdit
    Left = 8
    Top = 22
    Width = 217
    Height = 21
    TabOrder = 0
  end
end
