object Form8: TForm8
  Left = 292
  Top = 242
  Width = 1061
  Height = 539
  Caption = #1054#1090#1083#1080#1095#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 416
    Top = 8
    Width = 233
    Height = 42
    Caption = #1054#1058#1051#1048#1063#1053#1048#1050#1048
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 64
    Width = 1513
    Height = 657
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 56
    Top = 8
    Width = 289
    Height = 41
    Caption = #1053#1040#1047#1040#1044
    TabOrder = 1
    OnClick = btn1Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='#1082#1091#1088#1089#1086#1074#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' ' +
      #1087#1086#1089#1083'.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 688
    Top = 8
  end
  object qry1: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1057#1055#1048#1057#1054#1050'_'#1053#1040'_'#1054#1058#1063#1048#1057#1051#1045#1053#1048#1045';')
    Left = 728
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 768
    Top = 8
  end
end
