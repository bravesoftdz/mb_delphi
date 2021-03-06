object fRMotorista: TfRMotorista
  Left = 192
  Top = 114
  Width = 469
  Height = 308
  Caption = 'fRMotorista'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DbMot: TppDBPipeline
    DataSource = dsMot
    UserName = 'DbMot'
    Left = 232
    Top = 32
  end
  object Rel01: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = Rel01PreviewFormCreate
    Left = 272
    Top = 32
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'DbMot'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'ro de Motoristas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 78317
        mmTop = 0
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10583
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 10583
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fone1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 122767
        mmTop = 10583
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fone2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 150284
        mmTop = 10583
        mmWidth = 10054
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 0
        mmTop = 11906
        mmWidth = 284428
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 32279
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169334
        mmTop = 0
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label8'
        Caption = 'Tonelagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 196850
        mmTop = 10583
        mmWidth = 17727
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_MOTORISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 0
        mmWidth = 103452
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 122767
        mmTop = 0
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FONE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 150284
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText7'
        DataField = 'TONELAGEM'
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 182034
        mmTop = 0
        mmWidth = 32544
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Total =>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 3175
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_MOTORISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbMot'
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COD_CIDADE'
      DataPipeline = DbMot
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbMot'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 794
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'DESC_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbMot'
          mmHeight = 3969
          mmLeft = 21167
          mmTop = 794
          mmWidth = 78581
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'COD_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbMot'
          mmHeight = 3969
          mmLeft = 12700
          mmTop = 794
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Position = lpBottom
          Weight = 0.75
          mmHeight = 2117
          mmLeft = 0
          mmTop = 0
          mmWidth = 284428
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Mot: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMot'
    Left = 144
    Top = 32
  end
  object dspMot: TDataSetProvider
    DataSet = Qmot
    Constraints = True
    Left = 96
    Top = 32
  end
  object dsMot: TDataSource
    DataSet = Mot
    Left = 192
    Top = 32
  end
  object Qmot: TSQLQuery
    SQLConnection = DM.BancoDados
    Params = <>
    SQL.Strings = (
      'select'
      ' MOT.COD_MOTORISTA'
      ' ,MOT.NOME '
      ' ,MOT.FONE2'
      ' ,MOT.DATANASC'
      ' ,MOT.FONE1 '
      ' ,MOT.PLACA'
      ' ,MOT.COD_CIDADE'
      ' ,MOT.TONELAGEM'
      ' ,CID.DESC_CIDADE'
      'from MOTORISTA MOT'
      ' left join CIDADE CID on'
      '   MOT.COD_CIDADE = CID.COD_CIDADE')
    Left = 48
    Top = 32
  end
  object dbAniver: TppDBPipeline
    DataSource = dsAniver
    UserName = 'dbAniver'
    Left = 248
    Top = 96
  end
  object Rel02: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = Rel01PreviewFormCreate
    Left = 296
    Top = 96
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbAniver'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Aniversariantes / Motoristas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 63500
        mmTop = 0
        mmWidth = 76994
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label2'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10583
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label3'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 10583
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label4'
        Caption = 'Fone1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 122767
        mmTop = 10583
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label5'
        Caption = 'Fone2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 150284
        mmTop = 10583
        mmWidth = 10054
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 0
        mmTop = 12700
        mmWidth = 197380
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 32279
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169334
        mmTop = 0
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 10583
        mmWidth = 11113
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_MOTORISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 35983
        mmTop = 0
        mmWidth = 82550
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 0
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        DataField = 'FONE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 148167
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DATANASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label7'
        Caption = 'Total =>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 3175
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_MOTORISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbAniver'
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'COD_CIDADE'
      DataPipeline = dbAniver
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbAniver'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel14: TppLabel
          UserName = 'Label6'
          Caption = 'M'#234's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 794
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText6'
          DataField = 'MES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbAniver'
          mmHeight = 3969
          mmLeft = 10583
          mmTop = 794
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Position = lpBottom
          Weight = 0.75
          mmHeight = 2117
          mmLeft = 0
          mmTop = 6614
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Total do M'#234's =>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 2381
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'COD_MOTORISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3969
          mmLeft = 27517
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Aniver: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAniver'
    Left = 144
    Top = 96
    object AniverDIA: TSmallintField
      FieldName = 'DIA'
    end
    object AniverMES: TSmallintField
      FieldName = 'MES'
    end
    object AniverCOD_MOTORISTA: TIntegerField
      FieldName = 'COD_MOTORISTA'
    end
    object AniverNOME: TStringField
      FieldName = 'NOME'
      Size = 48
    end
    object AniverFONE2: TStringField
      FieldName = 'FONE2'
      Size = 23
    end
    object AniverDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object AniverFONE1: TStringField
      FieldName = 'FONE1'
      Size = 23
    end
    object AniverPLACA: TStringField
      FieldName = 'PLACA'
      Size = 28
    end
    object AniverCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object AniverDESC_CIDADE: TStringField
      FieldName = 'DESC_CIDADE'
      Size = 58
    end
  end
  object dspAniver: TDataSetProvider
    DataSet = QAniver
    Constraints = True
    Left = 96
    Top = 96
  end
  object dsAniver: TDataSource
    DataSet = Aniver
    Left = 192
    Top = 96
  end
  object QAniver: TSQLQuery
    SQLConnection = DM.BancoDados
    Params = <>
    SQL.Strings = (
      'select'
      '  extract(day from MOT.DATANASC) AS DIA'
      ' ,extract(month from MOT.DATANASC) AS MES'
      ' ,MOT.COD_MOTORISTA'
      ' ,MOT.NOME '
      ' ,MOT.FONE2'
      ' ,MOT.DATANASC'
      ' ,MOT.FONE1 '
      ' ,MOT.PLACA'
      ' ,MOT.COD_CIDADE'
      ' ,CID.DESC_CIDADE'
      'from MOTORISTA MOT'
      ' left join CIDADE CID on'
      '   MOT.COD_CIDADE = CID.COD_CIDADE'
      '')
    Left = 48
    Top = 96
  end
end
