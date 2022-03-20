object FtpMultiForm: TFtpMultiForm
  Left = 138
  Top = 123
  BorderStyle = bsNone
  Caption = #1047#1072#1082#1072#1095#1082#1072' '#1089#1087#1080#1089#1082#1072' '#1092#1072#1081#1083#1086#1074' '#1089' ftp-'#1089#1077#1088#1074#1077#1088#1072
  ClientHeight = 347
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolsPanel: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 225
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 179
      Height = 13
      Caption = #1057#1087#1080#1089#1086#1082' '#1092#1072#1081#1083#1086#1074' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 319
      Top = 11
      Width = 71
      Height = 13
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FileListMemo: TMemo
      Left = 8
      Top = 30
      Width = 305
      Height = 189
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object DoneMemo: TMemo
      Left = 319
      Top = 30
      Width = 305
      Height = 189
      Lines.Strings = (
        '')
      ScrollBars = ssBoth
      TabOrder = 1
    end
  end
  object DisplayMemo: TMemo
    Left = 0
    Top = 225
    Width = 636
    Height = 122
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'DisplayMemo')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    ExplicitTop = 169
    ExplicitHeight = 178
  end
end
