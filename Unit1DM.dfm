object DM: TDM
  OldCreateOrder = False
  Left = 1104
  Top = 690
  Height = 211
  Width = 277
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN='#1057#1055#1050#1048#1057'20;DBQ=C:\Users\dyako\Desktop\'#1059#1095#1077#1073#1072' 3 '#1082#1091#1088#1084' 1 '#1089#1077#1084#1077#1089#1090 +
      #1088'\'#1057#1055#1050#1048#1057'\'#1055#1088#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099'\'#1057#1055#1050#1048#1057'20.mdb;DriverId=25;FIL=MS Acces' +
      's;MaxBufferSize=2048;PageTimeout=5;UID=admin;"'
    Provider = 'MSDASQL.1'
    Left = 32
    Top = 8
  end
  object Q1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 56
  end
  object Q2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 56
  end
  object Q3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 192
    Top = 56
  end
  object Q4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 112
  end
  object Q5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 112
  end
  object Q6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 192
    Top = 112
  end
end