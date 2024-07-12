unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eNAMA: TEdit;
    eDESKRIPSI: TEdit;
    bSIMPAN: TButton;
    bEDIT: TButton;
    bHAPUS: TButton;
    bBATAL: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Button1: TButton;
    eCARI_NAMA: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

end.
