object Form2: TForm2
  Left = 611
  Top = 134
  Width = 1061
  Height = 532
  Caption = #1054#1094#1077#1085#1082#1080' '#1087#1086' '#1080#1085#1092#1086#1088#1084#1072#1090#1080#1082#1080
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
    Left = 432
    Top = 0
    Width = 207
    Height = 35
    Caption = #1080#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 72
    Width = 889
    Height = 289
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 24
    Top = 8
    Width = 257
    Height = 41
    Caption = #1053#1072#1079#1072#1076
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
    Left = 656
    Top = 8
  end
  object qry1: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  '#1101#1082#1079#1072#1084#1077#1085'.'#1092#1072#1084#1080#1083#1080#1103'_'#1089#1090#1091#1076#1077#1085#1090#1072', '#1101#1082#1079#1072#1084#1077#1085'.'#1080#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072','#1101#1082#1079#1072#1084#1077#1085'.'#1043#1056 +
        #1059#1055#1055#1040'  FROM '#1101#1082#1079#1072#1084#1077#1085' WHERE ((('#1101#1082#1079#1072#1084#1077#1085'.'#1080#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072')>1));')
    Left = 704
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 744
    Top = 8
  end
end
