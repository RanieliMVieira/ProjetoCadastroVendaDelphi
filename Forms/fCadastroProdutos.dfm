object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 275
  ClientWidth = 662
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 240
    Width = 662
    Height = 35
    Align = alBottom
    TabOrder = 0
    object btnSalvar: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 240
    Align = alClient
    TabOrder = 1
    ExplicitTop = -5
    object lblDescricao: TLabel
      Left = 43
      Top = 69
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lblMarca: TLabel
      Left = 43
      Top = 124
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object lblPreco: TLabel
      Left = 191
      Top = 124
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
    end
    object lblReferencia: TLabel
      Left = 288
      Top = 181
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
    end
    object lblUnidade: TLabel
      Left = 304
      Top = 124
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object lblSaldo: TLabel
      Left = 43
      Top = 181
      Width = 26
      Height = 13
      Caption = 'Saldo'
    end
    object lblCusto: TLabel
      Left = 163
      Top = 181
      Width = 28
      Height = 13
      Caption = 'Custo'
    end
    object lblImagemProduto: TLabel
      Left = 424
      Top = 15
      Width = 105
      Height = 20
      Caption = 'Imagem Produto'
    end
    object lblCodigoProduto: TLabel
      Left = 43
      Top = 15
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object edtDescricao: TEdit
      Left = 43
      Top = 88
      Width = 318
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 0
    end
    object edtPreco: TEdit
      Left = 191
      Top = 143
      Width = 70
      Height = 21
      TabOrder = 2
      OnExit = edtPrecoExit
      OnKeyPress = edtPrecoKeyPress
    end
    object edtMarca: TEdit
      Left = 43
      Top = 143
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 1
    end
    object edtReferencia: TEdit
      Left = 288
      Top = 200
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object edtSaldo: TEdit
      Left = 43
      Top = 200
      Width = 70
      Height = 21
      TabOrder = 4
    end
    object edtCusto: TEdit
      Left = 163
      Top = 200
      Width = 70
      Height = 21
      TabOrder = 5
    end
    object cbxUnidade: TComboBox
      Left = 304
      Top = 143
      Width = 57
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object pnlFotoProduto: TPanel
      Left = 424
      Top = 32
      Width = 193
      Height = 185
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 7
      object imgFotoProduto: TImage
        Left = 0
        Top = 0
        Width = 189
        Height = 181
        Align = alClient
        ExplicitTop = -22
      end
    end
    object edtCodigoProduto: TEdit
      Left = 43
      Top = 34
      Width = 62
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 8
    end
  end
end
