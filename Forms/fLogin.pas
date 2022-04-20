unit fLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, dConexao,
  uUsuario, fMenuPrincipal;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    edtSenha: TEdit;
    btnConfirmar: TButton;
    lblLogin: TLabel;
    lblSenha: TLabel;
    edtLogin: TEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FPermiteLogin: boolean;
    { Private declarations }
  public
    { Public declarations }
    property PermiteLogin: boolean read FPermiteLogin write FPermiteLogin;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnConfirmarClick(Sender: TObject);
var
  lUsuario: TUsuario;
  lMenuPrincipal: TfrmMenuPrincipal;
begin
  lUsuario := TUsuario.Create;
  lMenuPrincipal := TfrmMenuPrincipal.Create(nil);
  try
    if trim(edtLogin.text) = '' then
    begin
      ShowMessage
        ('Campo obrigat�rio n�o informado, favor preencher o Login do Usu�rio!');
      edtLogin.setFocus;
    end
    else if trim(edtSenha.text) = '' then
    begin
      ShowMessage
        ('Campo obrigat�rio n�o informado, favor preencher a Senha do Usu�rio!');
      edtSenha.setFocus;
    end
    else
    begin
      lUsuario.LOGIN := edtLogin.text;
      lUsuario.SENHA := edtSenha.text;
      if lUsuario.VerificaSeUsuarioExisteNoBanco then
      begin
        lUsuario.CarregaNivelUsuario;
        lMenuPrincipal.NivelAcessoMenu := lUsuario.NIVELACESSO;
        lMenuPrincipal.ShowModal;
      end
      else
      begin
        ShowMessage('Login ou Senha inv�lido, favor verificar.');
        edtLogin.setFocus;
      end;
    end;
  finally
    lUsuario.Free;
    lMenuPrincipal.Free;
  end;

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPermiteLogin := false;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtLogin.setFocus;
end;

end.
