unit fCadastroVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dConexao,
  uVendedor,
  Vcl.Mask;

type
  TfrmCadastroVendedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtCodigoVendedor: TEdit;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCEP: TLabel;
    lblCidade: TLabel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    edtCEP: TMaskEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoVendedor: integer;
    Tipo: String;
    procedure IncluirVendedor;
    procedure AlterarVendedor;
  end;

var
  frmCadastroVendedores: TfrmCadastroVendedores;

implementation

{$R *.dfm}

procedure TfrmCadastroVendedores.AlterarVendedor;
var
  lVendedor: Tvendedor;
begin
  lVendedor := Tvendedor.Create;
  try
    lVendedor.IDVENDEDOR := CodigoVendedor;
    lVendedor.NOMEVENDEDOR := edtNome.Text;
    lVendedor.EMAIL := edtEmail.Text;
    lVendedor.ENDERECO := edtEndereco.Text;
    lVendedor.BAIRRO := edtBairro.Text;
    lVendedor.CEP := edtCEP.Text;
    lVendedor.CIDADE := edtCidade.Text;
    lVendedor.Alterar(true);
  finally
    lVendedor.Free;
  end;
end;

procedure TfrmCadastroVendedores.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroVendedores.btnSalvarClick(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
  begin
    ShowMessage
      ('Campo obrigat�rio n�o informado, favor preencher o Nome do Vendedor.');
    edtNome.SetFocus;
    exit;
  end
  else if trim(edtEmail.Text) = '' then
  begin
    ShowMessage
      ('Campo obrigat�rio n�o informado, favor preencher o E-mail do Vendedor.');
    edtEmail.SetFocus;
    exit;
  end
  else
  begin
    if Tipo = 'Incluir' then
    begin
      IncluirVendedor;
    end
    else if Tipo = 'Alterar' then
    begin
      AlterarVendedor;
    end;
    close;
  end;
end;

procedure TfrmCadastroVendedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmCadastroVendedores.FormShow(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmCadastroVendedores.IncluirVendedor;
var
  lVendedor: Tvendedor;
begin
  lVendedor := Tvendedor.Create;
  try
    lVendedor.NOMEVENDEDOR := edtNome.Text;
    lVendedor.EMAIL := edtEmail.Text;
    lVendedor.ENDERECO := edtEndereco.Text;
    lVendedor.BAIRRO := edtBairro.Text;
    lVendedor.CEP := edtCEP.Text;
    lVendedor.CIDADE := edtCidade.Text;
    lVendedor.Incluir(true);
  finally
    lVendedor.Free;
  end;
end;

end.
