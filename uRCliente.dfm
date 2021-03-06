object FRCliente: TFRCliente
  Left = 266
  Top = 270
  Width = 351
  Height = 304
  Caption = 'FRCliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object QCliente: TSQLQuery
    SQLConnection = DM.BancoDados
    Params = <>
    SQL.Strings = (
      'select'
      '   CLI.COD_CLIENTE,'
      '   CLI.NOME,'
      '   CLI.CNPJ,'
      '   CLI.INSC_ESTADUAL,'
      '   CLI.FONE,'
      '   CLI.FAX,'
      '   CLI.EMAIL,'
      '   CLI.COD_CIDADE,'
      '   CID.DESC_CIDADE,'
      '   UF.SIGLA'
      'from CLIENTE CLI'
      '   left join CIDADE CID on CLI.COD_CIDADE = CID.COD_CIDADE'
      '   left join ESTADO UF on CID.ID_ESTADO = UF.ID_ESTADO')
    Left = 24
    Top = 16
  end
  object dspCliente: TDataSetProvider
    DataSet = QCliente
    Constraints = True
    Left = 80
    Top = 16
  end
  object Cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 144
    Top = 16
  end
  object dsCliente: TDataSource
    DataSet = Cliente
    Left = 208
    Top = 16
  end
  object dbCliente: TppDBPipeline
    DataSource = dsCliente
    UserName = 'dbCliente'
    Left = 264
    Top = 16
  end
  object Rel1: TppReport
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
    OnPreviewFormCreate = Rel1PreviewFormCreate
    Left = 24
    Top = 72
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbCliente'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Clientes em Ordem Alfab'#233'tica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 80698
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
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
        mmTop = 12700
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
        mmLeft = 12700
        mmTop = 12700
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 12700
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 12700
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 12700
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 12700
        mmWidth = 6085
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 0
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 76200
        mmTop = 0
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'INSC_ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 165100
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Total: ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 1588
        mmWidth = 19579
        BandType = 7
      end
    end
  end
  object Rel2: TppReport
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
    OnPreviewFormCreate = Rel1PreviewFormCreate
    Left = 80
    Top = 72
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbCliente'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Clientes p/Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 58208
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
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
      object ppLabel10: TppLabel
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
        mmTop = 12700
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label3'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 12700
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label4'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 12700
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label5'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 12700
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label6'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 12700
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label7'
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 12700
        mmWidth = 6085
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 0
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        DataField = 'CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 76200
        mmTop = 0
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        DataField = 'INSC_ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        DataField = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 165100
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label8'
        Caption = 'Total Geral: ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 2646
        mmWidth = 31221
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COD_CIDADE'
      DataPipeline = dbCliente
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbCliente'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label9'
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText7'
          DataField = 'COD_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 12700
          mmTop = 794
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText8'
          DataField = 'DESC_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 794
          mmWidth = 58208
          BandType = 3
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText9'
          DataField = 'SIGLA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 103717
          mmTop = 794
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label10'
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 88900
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'COD_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 33867
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Total: ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.75
          mmHeight = 1852
          mmLeft = 0
          mmTop = 2381
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Rel3: TppReport
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
    OnPreviewFormCreate = Rel1PreviewFormCreate
    Left = 128
    Top = 72
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbCliente'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Clientes p/Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 57679
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
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
      object ppLabel21: TppLabel
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
        mmTop = 12700
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label3'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 12700
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label4'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 12700
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label5'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 12700
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label6'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 12700
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label7'
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 12700
        mmWidth = 6085
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 0
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText3'
        DataField = 'CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 76200
        mmTop = 0
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText4'
        DataField = 'INSC_ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText5'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText6'
        DataField = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 165100
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label8'
        Caption = 'Total Geral: ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 2646
        mmWidth = 31221
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'SIGLA'
      DataPipeline = dbCliente
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbCliente'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText24: TppDBText
          UserName = 'DBText9'
          DataField = 'SIGLA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 14817
          mmTop = 794
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label10'
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'COD_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbCliente'
          mmHeight = 3440
          mmLeft = 33867
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label19'
          Caption = 'Total: ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.75
          mmHeight = 1852
          mmLeft = 0
          mmTop = 2381
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Rel4: TppReport
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
    OnPreviewFormCreate = Rel1PreviewFormCreate
    Left = 176
    Top = 72
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbCliente'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Clientes em Ordem Alfab'#233'tica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 80698
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
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
      object ppLabel31: TppLabel
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
      object ppLabel32: TppLabel
        UserName = 'Label3'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 10583
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label4'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 10848
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label5'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 10848
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label6'
        Caption = 'email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 10848
        mmWidth = 8731
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 0
        mmTop = 14817
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 0
        mmWidth = 54769
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText3'
        DataField = 'CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 69850
        mmTop = 0
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText4'
        DataField = 'INSC_ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText5'
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 131234
        mmTop = 0
        mmWidth = 65088
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COD_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbCliente'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label8'
        Caption = 'Total: ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 1588
        mmWidth = 19579
        BandType = 7
      end
    end
  end
  object QAniver: TSQLQuery
    SQLConnection = DM.BancoDados
    Params = <>
    SQL.Strings = (
      'select'
      '   extract(MONTH from CON.DATANASC) AS MES,'
      '   CON.CONTATO,'
      '   CON.EMAIL,'
      '   CON.FONE,'
      '   CON.FAX,'
      '   CON.DATANASC'
      'from CONTATO CON'
      ''
      '')
    Left = 24
    Top = 136
  end
  object dspAniver: TDataSetProvider
    DataSet = QAniver
    Constraints = True
    Left = 80
    Top = 136
  end
  object Aniver: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAniver'
    Left = 136
    Top = 136
    object AniverMES: TSmallintField
      FieldName = 'MES'
    end
    object AniverCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 46
    end
    object AniverEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 86
    end
    object AniverFONE: TStringField
      FieldName = 'FONE'
      Size = 26
    end
    object AniverFAX: TStringField
      FieldName = 'FAX'
      Size = 26
    end
    object AniverDATANASC: TDateField
      FieldName = 'DATANASC'
    end
  end
  object dsAniver: TDataSource
    DataSet = Aniver
    Left = 184
    Top = 136
  end
  object dbAniver: TppDBPipeline
    DataSource = dsAniver
    UserName = 'dbAniver'
    Left = 240
    Top = 136
  end
  object Rel5: TppReport
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
    OnPreviewFormCreate = Rel1PreviewFormCreate
    Left = 240
    Top = 192
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbAniver'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Data Nasc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16933
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19050
        mmTop = 16933
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 16933
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 17463
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141817
        mmTop = 16933
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Relat'#243'rio de Aniversariantes / Contatos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 74348
        BandType = 0
      end
      object lblData05: TppLabel
        UserName = 'lblData05'
        AutoSize = False
        Caption = 'lblData05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 6350
        mmWidth = 74877
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4233
        mmWidth = 12435
        BandType = 0
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 0
        mmWidth = 19844
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 0
        mmTop = 19050
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'DATANASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 19050
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 0
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 141288
        mmTop = 0
        mmWidth = 51329
        BandType = 4
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Total ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 2381
        mmWidth = 11113
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbAniver'
        mmHeight = 3704
        mmLeft = 12700
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'MES'
      DataPipeline = dbAniver
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbAniver'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'M'#234's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 794
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          DataField = 'MES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbAniver'
          mmHeight = 3704
          mmLeft = 8467
          mmTop = 794
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.75
          mmHeight = 2117
          mmLeft = 0
          mmTop = 0
          mmWidth = 197115
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
