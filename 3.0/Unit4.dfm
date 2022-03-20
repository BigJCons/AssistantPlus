object DataModule5: TDataModule5
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 560
  Width = 675
  object DataSource1: TDataSource
    Left = 128
    Top = 96
  end
  object DataSource2: TDataSource
    Left = 128
    Top = 216
  end
  object DataSource3: TDataSource
    Left = 128
    Top = 336
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 24
    Top = 88
  end
  object DataSetProvider1: TDataSetProvider
    Left = 58
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 58
    Top = 88
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver170.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver170.bpl'
      'ColumnMetaDataSupported=True'
      'FailIfMissing=True'
      
        'Database=C:\Users\Admin\Documents\RAD Studio\Projects\SQLiteTest' +
        '\Win32\Debug\DB\my_db.db')
    Left = 34
    Top = 8
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 24
    Top = 128
  end
  object SQLQuery3: TSQLQuery
    Params = <>
    Left = 24
    Top = 200
  end
  object SQLQuery4: TSQLQuery
    Params = <>
    Left = 24
    Top = 240
  end
  object DataSetProvider2: TDataSetProvider
    Left = 72
    Top = 240
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 200
  end
  object SQLQuery5: TSQLQuery
    Params = <>
    Left = 24
    Top = 312
  end
  object SQLQuery6: TSQLQuery
    Params = <>
    Left = 24
    Top = 360
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 312
  end
  object DataSetProvider3: TDataSetProvider
    Left = 72
    Top = 360
  end
end
