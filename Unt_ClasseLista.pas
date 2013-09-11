unit Unt_ClasseLista;

interface

uses
  System.Generics.Collections, Unt_ClasseLinhaBase;

type

  /// <summary>
  /// Responsável por efetivamente enfileirar as instâncias das classes de
  /// geração de linhas e gerar o documento
  /// </summary>
  TGeradorDocumento = class(TObjectList<TLinhaBase>)
  public
    /// <summary>
    /// Responsável por efetivamente gerar o documento a partir da lista
    /// de objetos
    /// </summary>
    function GerarDocumento: string;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TGeradorDocumento }

function TGeradorDocumento.GerarDocumento: string;
var
  oItemLista: TLinhaBase;
  slAux     : TStringList;
begin
  Result := EmptyStr;
  slAux := nil;

  try
    slAux := TStringList.Create;
    for oItemLista in Self.ToArray do
    begin
      slAux.Add(oItemLista.GerarLinha);
    end;

    Result := slAux.Text;
  finally
    if (Assigned(slAux)) then
    begin
      slAux.Free;
    end;
  end;
end;

end.
