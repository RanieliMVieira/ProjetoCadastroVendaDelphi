object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Cadastro de Venda'
  ClientHeight = 681
  ClientWidth = 1008
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 41
    Align = alTop
    Caption = 'Venda Com'#233'rcio'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object TPanel
    Left = 0
    Top = 111
    Width = 1008
    Height = 106
    Align = alTop
    TabOrder = 1
    object lblNomeProduto: TLabel
      Left = 201
      Top = 26
      Width = 75
      Height = 13
      Caption = 'lblNomeProduto'
    end
    object lblProduto: TLabel
      Left = 28
      Top = 26
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object lblQuantidade: TLabel
      Left = 10
      Top = 66
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lblQuantidadeItensVenda: TLabel
      Left = 952
      Top = 75
      Width = 10
      Height = 19
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 840
      Top = 79
      Width = 89
      Height = 14
      Caption = 'Qtde de Itens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 137
      Top = 66
      Width = 40
      Height = 13
      Caption = 'Valor R$'
    end
    object edtDescontoProduto: TLabel
      Left = 254
      Top = 66
      Width = 59
      Height = 13
      Caption = 'Desconto %'
    end
    object lblValorTotal: TLabel
      Left = 394
      Top = 66
      Width = 40
      Height = 13
      Caption = 'Total R$'
    end
    object edtProduto: TEdit
      Left = 72
      Top = 24
      Width = 83
      Height = 21
      TabOrder = 3
      OnExit = edtProdutoExit
    end
    object btnBuscaProduto: TButton
      Left = 161
      Top = 24
      Width = 34
      Height = 21
      TabOrder = 0
      TabStop = False
      OnClick = btnBuscaProdutoClick
    end
    object edtQuantidade: TEdit
      Left = 72
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 4
      OnExit = edtQuantidadeExit
      OnKeyPress = edtQuantidadeKeyPress
    end
    object btnConfirmarProduto: TButton
      Left = 524
      Top = 60
      Width = 75
      Height = 29
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = btnConfirmarProdutoClick
    end
    object btnExcluirProduto: TButton
      Left = 605
      Top = 61
      Width = 75
      Height = 29
      Caption = 'Exluir'
      TabOrder = 2
      OnClick = btnExcluirProdutoClick
    end
    object edtValor: TEdit
      Left = 183
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 5
      OnExit = edtValorExit
      OnKeyPress = edtValorKeyPress
    end
    object edtDesconto: TEdit
      Left = 317
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 6
      OnExit = edtDescontoExit
      OnKeyPress = edtDescontoKeyPress
    end
    object edtValorTotal: TEdit
      Left = 440
      Top = 64
      Width = 49
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 7
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 1008
    Height = 70
    Align = alTop
    TabOrder = 2
    object lblNomeCliente: TLabel
      Left = 159
      Top = 39
      Width = 70
      Height = 13
      Caption = 'lblNomeCliente'
    end
    object lblNomeVendedor: TLabel
      Left = 447
      Top = 39
      Width = 83
      Height = 13
      Caption = 'lblNomeVendedor'
    end
    object lblCliente: TLabel
      Left = 33
      Top = 39
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object lblVendedor: TLabel
      Left = 309
      Top = 39
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object lblIDVenda: TLabel
      Left = 21
      Top = 9
      Width = 45
      Height = 13
      Caption = 'N'#186' Venda'
    end
    object lblEmissao: TLabel
      Left = 317
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object edtCliente: TEdit
      Left = 72
      Top = 36
      Width = 41
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      OnExit = edtClienteExit
    end
    object btnBuscaCliente: TButton
      Left = 119
      Top = 36
      Width = 34
      Height = 21
      TabOrder = 3
      TabStop = False
      OnClick = btnBuscaClienteClick
    end
    object edtVendedor: TEdit
      Left = 360
      Top = 36
      Width = 41
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      OnExit = edtVendedorExit
    end
    object btnBuscaVendedor: TButton
      Left = 407
      Top = 36
      Width = 34
      Height = 21
      TabOrder = 4
      TabStop = False
      OnClick = btnBuscaVendedorClick
    end
    object edtIDVenda: TEdit
      Left = 72
      Top = 6
      Width = 41
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object dtpEmissao: TDateTimePicker
      Left = 360
      Top = 6
      Width = 97
      Height = 21
      Date = 44504.000000000000000000
      Time = 0.741592986109026200
      TabOrder = 5
      TabStop = False
    end
  end
  object pnlGridItensVenda: TPanel
    Left = 0
    Top = 217
    Width = 1008
    Height = 364
    Align = alClient
    Caption = 'pnlGridItensVenda'
    TabOrder = 3
    object dbgItensVenda: TDBGrid
      Left = 1
      Top = 1
      Width = 1006
      Height = 362
      Align = alClient
      DataSource = dtmConexao.dtsVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end>
    end
  end
  object TPanel
    Left = 0
    Top = 581
    Width = 1008
    Height = 100
    Align = alBottom
    ParentBackground = False
    TabOrder = 4
    object lblDesconto: TLabel
      Left = 28
      Top = 11
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object lblOBS: TLabel
      Left = 317
      Top = 11
      Width = 20
      Height = 13
      Caption = 'OBS'
    end
    object Label3: TLabel
      Left = 9
      Top = 33
      Width = 13
      Height = 13
      Caption = 'R$'
    end
    object Label4: TLabel
      Left = 11
      Top = 69
      Width = 11
      Height = 13
      Caption = '%'
    end
    object Panel2: TPanel
      Left = 104
      Top = 6
      Width = 187
      Height = 88
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 12
        Top = 58
        Width = 63
        Height = 23
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 117
        Top = 58
        Width = 42
        Height = 23
        Caption = '0,00'
        Color = clDefault
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblSubTotal: TLabel
        Left = 12
        Top = 5
        Width = 69
        Height = 19
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescontoTotal: TLabel
        Left = 12
        Top = 26
        Width = 65
        Height = 19
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSubTotalValor: TLabel
        Left = 119
        Top = 5
        Width = 32
        Height = 19
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescontoValor: TLabel
        Left = 119
        Top = 27
        Width = 32
        Height = 19
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 9
        Top = 52
        Width = 169
        Height = 3
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
      end
    end
    object btnConfirmar: TButton
      Left = 554
      Top = 6
      Width = 106
      Height = 43
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 554
      Top = 54
      Width = 106
      Height = 40
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object mmOBS: TMemo
      Left = 317
      Top = 30
      Width = 185
      Height = 64
      MaxLength = 256
      TabOrder = 3
      OnExit = mmOBSExit
    end
    object edtDescontoValor: TEdit
      Left = 28
      Top = 30
      Width = 45
      Height = 21
      TabOrder = 4
      OnExit = edtDescontoValorExit
    end
    object edtDescontoPorcentual: TEdit
      Left = 28
      Top = 66
      Width = 45
      Height = 21
      TabOrder = 5
      OnExit = edtDescontoPorcentualExit
    end
  end
  object imgButton: TImageList
    Left = 744
    Top = 122
  end
end
