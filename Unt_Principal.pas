unit Unt_Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Unt_ClasseLista;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    mDocumento: TMemo;
    bGerarDocumento: TButton;
    procedure bGerarDocumentoClick(Sender: TObject);
  private

  end;

var
  Form1: TForm1;

implementation

uses
  Unt_ClassesLinhas;

{$R *.dfm}
{ TForm1 }

procedure TForm1.bGerarDocumentoClick(Sender: TObject);
var
  oDocumento: TGeradorDocumento;
  oLinha000 : TLinha000;
  oLinha001 : TLinha001;
  oLinha002 : TLinha002;
  oLinha003 : TLinha003;
  oLinha999 : TLinha999;
begin
  ReportMemoryLeaksOnShutdown := True;
  oDocumento := nil;
  try
    oDocumento := TGeradorDocumento.Create;

    oLinha000 := TLinha000.Create;
    oLinha000.DataGeracao := Now;
    oDocumento.Add(oLinha000);

    oLinha001 := TLinha001.Create;
    oLinha001.NomeContador := 'MONTEIRO LOBATO';
    oLinha001.CRCCOntador := '1234567890';
    oDocumento.Add(oLinha001);

    oLinha002 := TLinha002.Create;
    oLinha002.NomeEmpresa := 'EMPRESA DE SUCESSO LTDA';
    oLinha002.CNPJ := '99999999999999';
    oDocumento.Add(oLinha002);

    oLinha003 := TLinha003.Create;
    oLinha003.DataVenda := Now;
    oLinha003.NomeCliente := 'CLIENTE ABC';
    oLinha003.ValorCompra := 253.45;
    oDocumento.Add(oLinha003);

    oLinha003 := TLinha003.Create;
    oLinha003.DataVenda := Now;
    oLinha003.NomeCliente := 'CLIENTE XYZ';
    oLinha003.ValorCompra := 10000.00;
    oDocumento.Add(oLinha003);

    oLinha003 := TLinha003.Create;
    oLinha003.DataVenda := Now;
    oLinha003.NomeCliente := 'CLIENTE FELIZ';
    oLinha003.ValorCompra := 456;
    oDocumento.Add(oLinha003);

    oLinha999 := TLinha999.Create;
    oDocumento.Add(oLinha999);

    Self.mDocumento.Text := oDocumento.GerarDocumento;
  finally
    if (Assigned(oDocumento)) then
    begin
      oDocumento.Free;
    end;
  end;
end;

end.
