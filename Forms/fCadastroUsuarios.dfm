object frmCadastroUsuarios: TfrmCadastroUsuarios
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rios'
  ClientHeight = 321
  ClientWidth = 347
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 33
    Align = alTop
    Caption = 'Cadastro de Usu'#225'rios'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 288
    Width = 347
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnSair: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 347
    Height = 255
    Align = alClient
    TabOrder = 2
    object lblNomeUsuario: TLabel
      Left = 31
      Top = 54
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblLogin: TLabel
      Left = 30
      Top = 100
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object lblSenha: TLabel
      Left = 184
      Top = 100
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object lblEmail: TLabel
      Left = 30
      Top = 149
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object lblNivelAcesso: TLabel
      Left = 30
      Top = 195
      Width = 60
      Height = 13
      Caption = 'Nivel Acesso'
    end
    object lblCodigoUsuario: TLabel
      Left = 31
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object edtNomeUsuario: TEdit
      Left = 30
      Top = 73
      Width = 275
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 0
    end
    object edtLogin: TEdit
      Left = 30
      Top = 120
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 1
    end
    object edtSenha: TEdit
      Left = 184
      Top = 117
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 2
    end
    object edtEmail: TEdit
      Left = 30
      Top = 168
      Width = 275
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 60
      TabOrder = 3
    end
    object edtNivelAcesso: TEdit
      Left = 30
      Top = 211
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 4
    end
    object edtCodigoUsuario: TEdit
      Left = 31
      Top = 27
      Width = 49
      Height = 21
      TabOrder = 5
    end
  end
end
