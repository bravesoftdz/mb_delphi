object fExpurgo: TfExpurgo
  Left = 235
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Expurgo'
  ClientHeight = 251
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 57
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 47
      Height = 16
      Caption = 'Usu'#225'rio'
    end
    object Senha: TLabel
      Left = 224
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Senha'
    end
    object editUsuario: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EditSenha: TEdit
      Left = 272
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 1
    end
    object butOk: TBitBtn
      Left = 416
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 2
      OnClick = butOkClick
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565656565FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0066001EB2311FB133006600FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6565659A9A9A9A9A9A65
        6565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565ABABAB9E9E9E9797979C
        9C9C656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        00660047D36D3BCB5E25A83B0066001BA92E1DB132006600FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF656565BFBFBFB5B5B598989865656594
        9494999999656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
        4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF656565C4C4C4CACACAA5A5A5656565FF00FF65
        65658C8C8C989898656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        00660041C563006600FF00FFFF00FFFF00FFFF00FF00660019AA2B006600FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF656565B5B5B5656565FF00FFFF00FFFF
        00FFFF00FF656565939393656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF6565658A8A8A656565FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066
        00006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF656565656565FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565656565FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
    end
  end
  object P_Limpa: TPanel
    Left = 0
    Top = 57
    Width = 550
    Height = 194
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    Visible = False
    object butLimpar: TBitBtn
      Left = 168
      Top = 40
      Width = 193
      Height = 41
      Caption = '&Limpar Banco de Dados'
      TabOrder = 0
      OnClick = butLimparClick
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF2B90EF278DE7FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB
        ABABA5A5A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF2A8FEC278CED2489E42388DD1E84D5FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9A8
        A8A8A2A2A29E9E9E979797FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF298FD63DA2EB3EA3F0379CEA2186DA1A81D1187ECA157C
        C41177BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9D9DB2B2B2B5
        B5B5AEAEAE9B9B9B9393938F8F8F8A8A8A848484FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF3CA2E158BDF260C4F93D9EE557BCF73398DF1E83CD1076
        BC0B73B40B72AF086FAAFF00FFFF00FFFF00FFFF00FFFF00FFACACACC3C3C3CA
        CACAAFAFAFC5C5C5A7A7A79393938484847D7D7D7B7B7B9F9F9FFF00FFFF00FF
        FF00FFFF00FF046B164AB0F953B7F72F87D163C7FB3D9EE55BBFFB55BAFA3499
        DE2D93D80F76B3066DA7FF00FFFF00FFFF00FFFF00FF7D7D7DBFBFBFC3C3C39E
        9E9ECDCDCDAFAFAFC9C9C9C5C5C5A7A7A7A0A0A07F7F7F9C9C9CFF00FFFF00FF
        FF00FF187D5F2B7A83046B162884DE3C99D9227BCE40A0EA5ABEFE4FB2F556B9
        FF56B9FF46AAF3FF00FFFF00FFFF00FFFF00FF9090907575757D7D7DA1A1A1A8
        A8A8969696B3B3B3CACACAC0C0C0C8C8C8C8C8C8BABABAFF00FFFF00FFFF00FF
        0F7D153CBE6131C64831C64831C648046B16046B162D87B63998E844A5F052B6
        FF52B5FFFF00FFFF00FFFF00FFFF00FF8C8C8C9B9B9B9999999999999999997D
        7D7D7D7D7D8F8F8FAEAEAEB8B8B8C6C6C6C6C6C6FF00FFFF00FFFF00FF158722
        31AF4A62F99250EB6F31C6481DA74623987631C64831C648046B16046B16FF00
        FFFF00FFFF00FFFF00FFFF00FF9494948E8E8ECBCBCBBBBBBB999999A8A8A8A3
        A3A39999999999997D7D7D7D7D7DFF00FFFF00FFFF00FFFF00FFFF00FF30AD48
        2BA6414FE77837D0531AB427029D01009B0010A41E32B97246A7ACFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF8C8C8C868686B9B9B9A1A1A185858595959593
        9393A0A0A0939393979797FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0A75102AAE3F22BC32049A060094000CA118027804027804FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF8585858A8A8A8D8D8D95959590909074
        7474838383838383FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        259E3942DC640B9F110077000278040B8717FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FADADAD7373738181818383838F
        8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1D912C
        44DE680FA315006F00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9D9D9DAFAFAF7777777D7D7DFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF13831D43D964
        12AB1C007300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF919191ACACAC7C7C7C7F7F7FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C9A2A1AB127
        007900FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF797979838383828282FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF18A024027F04
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A7A7A868686FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
    end
  end
end
