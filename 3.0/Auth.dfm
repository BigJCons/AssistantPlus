object PasswordDlg: TPasswordDlg
  Left = 244
  Top = 194
  BorderStyle = bsDialog
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 136
  ClientWidth = 270
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PasswordLabel: TLabel
    Left = 9
    Top = 51
    Width = 252
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' ftp-'#1089#1077#1088#1074#1077#1088#1091':'
  end
  object LoginLabel: TLabel
    Left = 9
    Top = 6
    Width = 245
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085' '#1076#1083#1103' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' ftp-'#1089#1077#1088#1074#1077#1088#1091':'
  end
  object PasswordEdit: TEdit
    Left = 8
    Top = 69
    Width = 252
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object OKBtn: TButton
    Left = 40
    Top = 101
    Width = 89
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 142
    Top = 101
    Width = 91
    Height = 25
    Cancel = True
    Caption = #1055#1077#1088#1077#1076#1091#1084#1072#1083
    ModalResult = 2
    TabOrder = 3
  end
  object LoginEdit: TEdit
    Left = 8
    Top = 24
    Width = 252
    Height = 21
    TabOrder = 0
  end
end
