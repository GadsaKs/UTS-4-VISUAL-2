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
    procedure Button1Click(Sender: TObject);
    procedure bBATALClick(Sender: TObject);
    procedure bEDITClick(Sender: TObject);
    procedure bSIMPANClick(Sender: TObject);
    procedure bHAPUSClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure eCARI_NAMAChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: String;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Application.MessageBox('And Yakin ingin keluar?','Keluar?',MB_YESNO)=IDYES) then
  close
end;

procedure TForm1.bBATALClick(Sender: TObject);
begin
  eNAMA.Text:= '';
  eDESKRIPSI.Text:= '';
  eCARI_NAMA.Text:= '';
 with DataModule2.zSATUAN do
 begin
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
 end;
end;

procedure TForm1.bEDITClick(Sender: TObject);
begin
if eNAMA.Text= '' then
  begin
    ShowMessage('Nama Tidak boleh kosong');
  end else
with DataModule2.zSATUAN do
  begin
    SQL.Clear;
    SQL.Clear;
    SQL.Add('update satuan set nama="'+eNAMA.text+'", deskripsi="'+eDESKRIPSI.Text+'" where id= "'+a+'"');
    ExecSQL ;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
    ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm1.bSIMPANClick(Sender: TObject);
begin
if eNAMA.Text = '' then
begin
    ShowMessage('Nama Tidak Boleh Kosong!');
end else
Begin // simpan
with DataModule2.zSATUAN do
begin
SQL.Clear;
SQL.Add('INSERT INTO satuan (nama, deskripsi) VALUES (:nama, :deskripsi)');
DataModule2.zSATUAN.ParamByName('nama').Value := eNAMA.Text;
DataModule2.zSATUAN.ParamByName('deskripsi').Value := eDESKRIPSI.Text;

ExecSQL;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm1.bHAPUSClick(Sender: TObject);
begin
with DataModule2.zSATUAN do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id="'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
end;
    ShowMessage('Data Berhasil Dihapus');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  eNAMA.Text:= DataModule2.zSATUAN.Fields[1].AsString;
  eDESKRIPSI.Text:= DataModule2.zSATUAN.Fields[2].AsString;
  a:= DataModule2.zSATUAN.Fields[0].AsString;
end;

procedure TForm1.eCARI_NAMAChange(Sender: TObject);
begin
with DataModule2.zSATUAN do
begin
SQL.Clear;
SQL.Add('select * from satuan where nama like "%'+eCARI_NAMA.Text+'%"');
Open;
end;
end;

end.
