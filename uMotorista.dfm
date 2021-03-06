inherited fMotorista: TfMotorista
  Caption = 'Motoristas'
  ClientHeight = 602
  OldCreateOrder = True
  ExplicitTop = -121
  ExplicitWidth = 748
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 16
  inherited P_Rodape: TPanel
    Top = 564
    ExplicitTop = 564
  end
  inherited P_Cabec: TGroupBox
    object Label23: TLabel [1]
      Left = 446
      Top = 16
      Width = 26
      Height = 16
      Caption = 'CPF'
    end
    inherited EditNome: TEdit
      Width = 256
      ExplicitWidth = 256
    end
    inherited butPesq: TBitBtn
      Left = 582
      TabOrder = 2
      ExplicitLeft = 582
    end
    inherited ROpcao: TRadioGroup
      TabOrder = 3
    end
    inherited TipoCad: TEdit
      Left = 696
      Top = 27
      TabOrder = 4
      ExplicitLeft = 696
      ExplicitTop = 27
    end
    object edtCPF: TMaskEdit
      Left = 446
      Top = 30
      Width = 105
      Height = 22
      Ctl3D = False
      EditMask = '###.###.###-##;0;_'
      MaxLength = 14
      ParentCtl3D = False
      TabOrder = 1
      Text = ''
    end
  end
  inherited Grade: TDBGrid
    Height = 507
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_MOTORISTA'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 439
        Visible = True
      end>
  end
  inherited P_Cad: TPanel
    Left = 24
    Top = 80
    Width = 721
    Height = 485
    ExplicitLeft = 24
    ExplicitTop = 80
    ExplicitWidth = 721
    ExplicitHeight = 485
    inherited PageControl1: TPageControl
      Width = 715
      Height = 413
      ExplicitWidth = 715
      ExplicitHeight = 413
      inherited sheetCad: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 707
        ExplicitHeight = 382
        inherited Panel3: TPanel
          Width = 707
          Height = 382
          ExplicitWidth = 707
          ExplicitHeight = 382
          object Label4: TLabel [2]
            Left = 24
            Top = 144
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label7: TLabel [3]
            Left = 416
            Top = 184
            Width = 25
            Height = 16
            Caption = 'Cep'
          end
          object Label8: TLabel [4]
            Left = 24
            Top = 184
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label9: TLabel [5]
            Left = 192
            Top = 264
            Width = 59
            Height = 16
            Caption = 'Fone Fixo'
          end
          object Label10: TLabel [6]
            Left = 24
            Top = 104
            Width = 59
            Height = 16
            Caption = 'Endere'#231'o'
          end
          object Label11: TLabel [7]
            Left = 24
            Top = 264
            Width = 76
            Height = 16
            Caption = 'Fone Celular'
          end
          object Label12: TLabel [8]
            Left = 560
            Top = 184
            Width = 43
            Height = 16
            Caption = 'Estado'
          end
          object Label13: TLabel [9]
            Left = 24
            Top = 224
            Width = 94
            Height = 16
            Caption = 'Transportadora'
          end
          object Label14: TLabel [10]
            Left = 416
            Top = 56
            Width = 75
            Height = 16
            Caption = 'Observa'#231#227'o'
          end
          object SpeedButton1: TSpeedButton [11]
            Left = 362
            Top = 200
            Width = 23
            Height = 22
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000420B0000420B00000000000000000000FF00FF2173B5
              636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2173B5218CEF
              2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948CB5BDC6B5BDC69C948CFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
              218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF
              52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              31A5FF52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF31A5FF52BDFF218CEF5A6B73FF00FFD5B9B4D6ADA5D6ADA5D6ADA5D5B9
              B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6A5948CFF
              00FF9C948C9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF31A5FF31A5FF4A4239B69B8BF0E2C0F9EFC8FDF2CBFEF4CCECD8
              C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CB5BDC69C
              948CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFBB9F88F3E3B6FCF3D1FEF6CDFEF7CFFEF9D0FDF7
              D2F5E6C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4EFE1B5FAEDBDFFF1C1FFF3C2FFF5C4FFF7C5FFFA
              C7FDF8D2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EFE3B6FBECBEFDEFBFFEF1C1FFF2C2FFF4C4FFF7
              C5FFF9C7EEE2BBD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EDE1B4F6E9BEFCF1D3FCF0C9FEF0C1FFF1C2FFF4
              C3FFF6C5F6E9C2CBAF9CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EBDEB2F2E6BBFCF2D7FCF1D3FCEEC0FEEFC2FFF2
              C2FEF2C2EFE1BBD2B3A3FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6B5BDC6FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4E4D8B0EDE1B6F3E7BCF8EBC0F9EBBCFBEDBEFAEC
              BDF5E9BAD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD6ADA5EADFBCECE0B6F0E3B6F1E5B7F2E5B7EFE3
              B5F5E7BCD5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E0D4B5EADEB4EBDEB1E8DBB1D6AD
              A5D5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C
              948CFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD5B9B4D6ADA5D6ADA5D9B7A3FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton [12]
            Left = 362
            Top = 240
            Width = 23
            Height = 22
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000420B0000420B00000000000000000000FF00FF2173B5
              636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2173B5218CEF
              2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948CB5BDC6B5BDC69C948CFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
              218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF
              52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              31A5FF52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF31A5FF52BDFF218CEF5A6B73FF00FFD5B9B4D6ADA5D6ADA5D6ADA5D5B9
              B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6A5948CFF
              00FF9C948C9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF31A5FF31A5FF4A4239B69B8BF0E2C0F9EFC8FDF2CBFEF4CCECD8
              C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CB5BDC69C
              948CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFBB9F88F3E3B6FCF3D1FEF6CDFEF7CFFEF9D0FDF7
              D2F5E6C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4EFE1B5FAEDBDFFF1C1FFF3C2FFF5C4FFF7C5FFFA
              C7FDF8D2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EFE3B6FBECBEFDEFBFFEF1C1FFF2C2FFF4C4FFF7
              C5FFF9C7EEE2BBD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EDE1B4F6E9BEFCF1D3FCF0C9FEF0C1FFF1C2FFF4
              C3FFF6C5F6E9C2CBAF9CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EBDEB2F2E6BBFCF2D7FCF1D3FCEEC0FEEFC2FFF2
              C2FEF2C2EFE1BBD2B3A3FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6B5BDC6FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4E4D8B0EDE1B6F3E7BCF8EBC0F9EBBCFBEDBEFAEC
              BDF5E9BAD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD6ADA5EADFBCECE0B6F0E3B6F1E5B7F2E5B7EFE3
              B5F5E7BCD5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E0D4B5EADEB4EBDEB1E8DBB1D6AD
              A5D5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C
              948CFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD5B9B4D6ADA5D6ADA5D9B7A3FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            OnClick = SpeedButton2Click
          end
          object Label15: TLabel [13]
            Left = 24
            Top = 304
            Width = 83
            Height = 16
            Caption = 'Placa Ve'#237'culo'
          end
          object Label16: TLabel [14]
            Left = 416
            Top = 224
            Width = 26
            Height = 16
            Caption = 'CPF'
          end
          object Label17: TLabel [15]
            Left = 560
            Top = 224
            Width = 43
            Height = 16
            Caption = 'Estado'
          end
          object Label18: TLabel [16]
            Left = 192
            Top = 304
            Width = 102
            Height = 16
            Caption = 'Placa Reboque1'
          end
          object Label19: TLabel [17]
            Left = 360
            Top = 304
            Width = 102
            Height = 16
            Caption = 'Placa Reboque2'
          end
          object Label20: TLabel [18]
            Left = 416
            Top = 264
            Width = 104
            Height = 16
            Caption = 'Data Nascimento'
          end
          object Label21: TLabel [19]
            Left = 528
            Top = 304
            Width = 102
            Height = 16
            Caption = 'Placa Reboque3'
          end
          object Label22: TLabel [20]
            Left = 24
            Top = 344
            Width = 29
            Height = 16
            Caption = 'CNH'
          end
          object Label24: TLabel [21]
            Left = 362
            Top = 344
            Width = 66
            Height = 16
            Caption = 'RENAVAN'
          end
          inherited Codigo: TDBEdit
            DataField = 'COD_MOTORISTA'
          end
          inherited Nome: TDBEdit
            DataField = 'NOME'
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 160
            Width = 337
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'BAIRRO'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 416
            Top = 200
            Width = 121
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CEP'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 6
          end
          object Cod_Cidade: TDBEdit
            Left = 24
            Top = 200
            Width = 49
            Height = 22
            TabStop = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'COD_CIDADE'
            DataSource = dsCad
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object Cod_Trans: TDBEdit
            Left = 24
            Top = 240
            Width = 49
            Height = 22
            TabStop = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'COD_TRANS'
            DataSource = dsCad
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object Desc_Cidade: TDBEdit
            Left = 80
            Top = 200
            Width = 281
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DESC_CIDADE'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 5
            OnExit = Desc_CidadeExit
          end
          object DBEdit8: TDBEdit
            Left = 24
            Top = 120
            Width = 369
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ENDERECO'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 24
            Top = 280
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'FONE1'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 12
          end
          object DBEdit10: TDBEdit
            Left = 192
            Top = 280
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'FONE2'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 13
          end
          object Desc_Trans: TDBEdit
            Left = 80
            Top = 240
            Width = 281
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'NOME_TRANS'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 9
            OnEnter = Desc_TransEnter
            OnExit = Desc_TransExit
          end
          object editEstado: TDBEdit
            Left = 560
            Top = 200
            Width = 57
            Height = 22
            TabStop = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SIGLA'
            DataSource = dsCad
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBMemo1: TDBMemo
            Left = 416
            Top = 72
            Width = 281
            Height = 89
            Ctl3D = False
            DataField = 'OBS'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 19
          end
          object DBEdit5: TDBEdit
            Left = 24
            Top = 320
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PLACA'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 15
          end
          object DBEdit6: TDBEdit
            Left = 416
            Top = 240
            Width = 121
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CPF'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 10
          end
          object DBEdit7: TDBEdit
            Left = 560
            Top = 240
            Width = 57
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ESTADO_CPF'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 11
          end
          object DBEdit11: TDBEdit
            Left = 192
            Top = 320
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PLACA_REBOQUE1'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 16
          end
          object DBEdit12: TDBEdit
            Left = 360
            Top = 320
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PLACA_REBOQUE2'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 17
          end
          object DBEdit13: TDBEdit
            Left = 416
            Top = 280
            Width = 121
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DATANASC'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 14
          end
          object DBEdit14: TDBEdit
            Left = 528
            Top = 320
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PLACA_REBOQUE3'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 18
          end
          object DBEdit15: TDBEdit
            Left = 24
            Top = 360
            Width = 313
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CNH'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 20
          end
          object dbedtCNH: TDBEdit
            Left = 362
            Top = 360
            Width = 313
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'RENAVAN'
            DataSource = dsCad
            ParentCtl3D = False
            TabOrder = 21
          end
        end
      end
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 707
        ExplicitHeight = 382
        inherited Panel4: TPanel
          Width = 707
          Height = 382
          ExplicitWidth = 707
          ExplicitHeight = 382
          inherited DBEdit2: TDBEdit
            DataField = 'USU_INC'
          end
          inherited DBEdit3: TDBEdit
            DataField = 'USU_ALT'
          end
        end
      end
    end
    inherited Panel2: TPanel
      Top = 441
      Width = 715
      ExplicitTop = 441
      ExplicitWidth = 715
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel1: TPanel
      Width = 715
      ExplicitWidth = 715
    end
  end
  inherited dsCad: TDataSource
    DataSet = DM.Motorista
  end
end
