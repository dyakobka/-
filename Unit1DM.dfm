object DM: TDM
  OldCreateOrder = False
  Left = 1104
  Top = 690
  Height = 211
  Width = 277
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN='#1057#1055#1050#1048#1057'20.mdb;DBQ=\\192.168.0.245\share student$\Desktop S' +
      'tudent$\'#1044#1100#1103#1082#1086#1085#1086#1074#1072' '#1042#1077#1088#1086#1085#1080#1082#1072'\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\spkis\spkis\'#1057#1055#1050#1048#1057'20.mdb;' +
      'DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;UID=a' +
      'dmin;"'
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
