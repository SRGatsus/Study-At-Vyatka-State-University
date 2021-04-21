object Form6: TForm6
  Left = 226
  Top = 125
  Width = 1026
  Height = 540
  Caption = #1054#1094#1077#1085#1082#1080' '#1087#1086' '#1058#1077#1086#1088#1080#1080
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
    Left = 440
    Top = 0
    Width = 199
    Height = 58
    Caption = #1058#1045#1054#1056#1048#1071
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 72
    Top = 104
    Width = 937
    Height = 329
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 80
    Top = 16
    Width = 273
    Height = 49
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
    Left = 648
    Top = 8
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1089#1090#1091#1076#1077#1085#1090#1099'.'#1092#1072#1084#1080#1083#1080#1103'_'#1089#1090#1091#1076#1077#1085#1090#1072', '#1101#1082#1079#1072#1084#1077#1085'.'#1101#1082'_'#1090#1077#1086#1088#1080#1103', '#1089#1090#1091#1076#1077#1085#1090#1099'.'#1080#1085 +
        #1076#1077#1082#1089'_'#1075#1088#1091#1087#1087#1099
      
        'FROM '#1089#1090#1091#1076#1077#1085#1090#1099' LEFT JOIN '#1101#1082#1079#1072#1084#1077#1085' ON '#1089#1090#1091#1076#1077#1085#1090#1099'.'#1082#1086#1076'_'#1089#1090#1091#1076#1077#1085#1090#1072'='#1101#1082#1079#1072#1084#1077#1085 +
        '.'#1082#1086#1076'_'#1089#1090#1091#1076#1077#1085#1090#1072
      'WHERE ((('#1101#1082#1079#1072#1084#1077#1085'.'#1101#1082'_'#1090#1077#1086#1088#1080#1103')>1));')
    Left = 688
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 728
    Top = 8
  end
end
