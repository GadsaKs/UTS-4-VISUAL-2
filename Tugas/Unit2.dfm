object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 153
  Height = 150
  Width = 215
  object zPenjualan: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'uts_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\user\Desktop\Kuliah\Softwares\Delphi 7\LIbrary\libmysql' +
      '\libmysql.dll'
    Left = 8
    Top = 24
  end
  object zSATUAN: TZQuery
    Connection = zPenjualan
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 72
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = zSATUAN
    Left = 136
    Top = 48
  end
end
