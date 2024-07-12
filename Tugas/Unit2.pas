unit Unit2;

interface

uses
  SysUtils, Classes, ZAbstractTable, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    zPenjualan: TZConnection;
    zSATUAN: TZQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses
  Unit1;

{$R *.dfm}

end.
