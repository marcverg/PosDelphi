unit State.Model.Item.Vendido;

interface

uses Model.State.Aluno.Interfaces;

Type
  TModelAlunoMatriculado = class(TInterfacedObject, iAlunoOperacaoes)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iAlunoOperacaoes;
      function Matricular : iAlunoOperacaoes;
      function CancelarMatricula : iAlunoOperacaoes;
      function Ativar : iAlunoOperacaoes;
      function Inativar : iAlunoOperacaoes;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemVendido }

function TModelAlunoMatriculado.CancelarMatricula: iAlunoOperacaoes;
begin
  Result := Self;
end;

constructor TModelAlunoMatriculado.Create;
begin

end;

function TModelAlunoMatriculado.Inativar: iAlunoOperacaoes;
begin
  Result := Self;
  raise Exception.Create('N�o � poss�vel inativar um aluno matriculado.');
end;

destructor TModelAlunoMatriculado.Destroy;
begin

  inherited;
end;

function TModelAlunoMatriculado.Ativar: iAlunoOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este aluno j� est� ativo.');
end;

class function TModelAlunoMatriculado.New : iAlunoOperacaoes;
begin
  Result := Self.Create;
end;

function TModelAlunoMatriculado.Matricular: iAlunoOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este aluno j� est� matriculado');
end;

end.

