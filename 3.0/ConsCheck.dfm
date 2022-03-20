object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1050#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090#1055#1083#1102#1089
  ClientHeight = 377
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object NumberOfCons: TLabel
    Left = 8
    Top = 21
    Width = 213
    Height = 13
    Caption = #1053#1072#1081#1076#1077#1085#1085#1099#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1099' '#1050#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090#1055#1083#1102#1089
  end
  object Captcha: TLabel
    Left = 287
    Top = 307
    Width = 40
    Height = 13
    Caption = 'Captcha'
    Visible = False
  end
  object CurrentVR: TLabel
    Left = 5
    Top = 205
    Width = 146
    Height = 13
    Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1072#1103' '#1074#1077#1088#1089#1080#1103' '#1084#1086#1076#1091#1083#1103': '
  end
  object CurrentExeSize: TLabel
    Left = 5
    Top = 256
    Width = 165
    Height = 13
    Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1079#1084#1077#1088' exe-'#1092#1072#1081#1083#1072': '
  end
  object CurrentVRSize: TLabel
    Left = 5
    Top = 229
    Width = 148
    Height = 13
    Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1079#1084#1077#1088' '#1084#1086#1076#1091#1083#1103': '
  end
  object ConsCheckEdit1: TEdit
    Left = 28
    Top = 45
    Width = 241
    Height = 21
    TabOrder = 0
    Text = #1050#1086#1084#1087#1083#1077#1082#1090' '#8470'1'
  end
  object ConsCheckEdit2: TEdit
    Left = 28
    Top = 77
    Width = 241
    Height = 21
    TabOrder = 1
    Text = #1050#1086#1084#1087#1083#1077#1082#1090' '#8470'2'
    Visible = False
  end
  object ConsCheckEdit3: TEdit
    Left = 28
    Top = 109
    Width = 241
    Height = 21
    TabOrder = 2
    Text = #1050#1086#1084#1087#1083#1077#1082#1090' '#8470'3'
    Visible = False
  end
  object ConsCheckEdit4: TEdit
    Left = 28
    Top = 141
    Width = 241
    Height = 21
    TabOrder = 3
    Text = #1050#1086#1084#1087#1083#1077#1082#1090' '#8470'4'
    Visible = False
  end
  object ConsCheckEdit5: TEdit
    Left = 28
    Top = 173
    Width = 241
    Height = 21
    TabOrder = 4
    Text = #1050#1086#1084#1087#1083#1077#1082#1090' '#8470'5'
    Visible = False
  end
  object Cons1path: TBitBtn
    Left = 275
    Top = 45
    Width = 106
    Height = 22
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
    TabOrder = 5
    OnClick = Cons1pathClick
  end
  object Cons2path: TBitBtn
    Left = 275
    Top = 77
    Width = 106
    Height = 22
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
    TabOrder = 6
    Visible = False
    OnClick = Cons2pathClick
  end
  object Cons3path: TBitBtn
    Left = 275
    Top = 109
    Width = 106
    Height = 22
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
    TabOrder = 7
    Visible = False
    OnClick = Cons3pathClick
  end
  object Cons4path: TBitBtn
    Left = 275
    Top = 141
    Width = 106
    Height = 22
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
    TabOrder = 8
    Visible = False
    OnClick = Cons4pathClick
  end
  object Cons5path: TBitBtn
    Left = 275
    Top = 173
    Width = 106
    Height = 22
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
    TabOrder = 9
    Visible = False
    OnClick = Cons5pathClick
  end
  object ConsDel: TBitBtn
    Left = 199
    Top = 307
    Width = 75
    Height = 53
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1099
    TabOrder = 10
    WordWrap = True
    OnClick = ConsDelClick
  end
  object CheckBoxCons1: TCheckBox
    Left = 5
    Top = 47
    Width = 17
    Height = 17
    TabOrder = 11
  end
  object CheckBoxCons2: TCheckBox
    Left = 5
    Top = 79
    Width = 17
    Height = 17
    TabOrder = 12
    Visible = False
  end
  object CheckBoxCons3: TCheckBox
    Left = 5
    Top = 111
    Width = 17
    Height = 17
    TabOrder = 13
    Visible = False
  end
  object CheckBoxCons4: TCheckBox
    Left = 5
    Top = 143
    Width = 17
    Height = 17
    TabOrder = 14
    Visible = False
  end
  object CheckBoxCons5: TCheckBox
    Left = 5
    Top = 175
    Width = 17
    Height = 17
    TabOrder = 15
    Visible = False
  end
  object CaptchaEdit: TEdit
    Left = 287
    Top = 339
    Width = 49
    Height = 21
    TabOrder = 16
    Text = #1054#1090#1074#1077#1090
    Visible = False
  end
  object ConsDelConfirm: TBitBtn
    Left = 342
    Top = 339
    Width = 34
    Height = 21
    Caption = 'Del'
    TabOrder = 17
    Visible = False
    OnClick = ConsDelConfirmClick
  end
  object ClearCons1path: TBitBtn
    Left = 387
    Top = 45
    Width = 106
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1099#1073#1086#1088
    TabOrder = 18
    OnClick = ClearCons1pathClick
  end
  object ClearCons3path: TBitBtn
    Left = 387
    Top = 109
    Width = 106
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1099#1073#1086#1088
    TabOrder = 19
    Visible = False
    OnClick = ClearCons3pathClick
  end
  object ClearCons4path: TBitBtn
    Left = 387
    Top = 141
    Width = 106
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1099#1073#1086#1088
    TabOrder = 20
    Visible = False
    OnClick = ClearCons4pathClick
  end
  object ClearCons5path: TBitBtn
    Left = 387
    Top = 173
    Width = 106
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1099#1073#1086#1088
    TabOrder = 21
    Visible = False
    OnClick = ClearCons5pathClick
  end
  object ClearCons2path: TBitBtn
    Left = 387
    Top = 77
    Width = 106
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1099#1073#1086#1088
    TabOrder = 22
    Visible = False
    OnClick = ClearCons2pathClick
  end
  object ScanCons: TBitBtn
    Left = 5
    Top = 307
    Width = 75
    Height = 53
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1099
    TabOrder = 23
    WordWrap = True
    OnClick = ScanConsClick
  end
  object FixCons: TBitBtn
    Left = 103
    Top = 307
    Width = 75
    Height = 53
    Caption = #1055#1086#1095#1080#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1099
    TabOrder = 24
    WordWrap = True
  end
  object Memo1: TMemo
    Left = 508
    Top = 8
    Width = 381
    Height = 361
    ScrollBars = ssVertical
    TabOrder = 25
  end
  object Memo2: TMemo
    Left = 911
    Top = 8
    Width = 345
    Height = 361
    ScrollBars = ssVertical
    TabOrder = 26
  end
  object Border1: TPanel
    Left = 499
    Top = 8
    Width = 3
    Height = 361
    TabOrder = 27
  end
  object Border2: TPanel
    Left = 898
    Top = 8
    Width = 3
    Height = 361
    TabOrder = 28
  end
  object ComboBox1: TComboBox
    Left = 312
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 29
    Text = 'ComboBox1'
  end
end
