unit uRCarga1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppViewr, ppDesignLayer, ppParameter;

type
  TfRCarga1 = class(TForm)
    QRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    Relatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    dbRelatorio: TppDBPipeline;
    Rel1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    lblData: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    RelatorioNOME_CLIENTE: TStringField;
    RelatorioNOME_FORNECEDOR: TStringField;
    RelatorioNOME_MOTORISTA: TStringField;
    RelatorioCOD_CONTATO: TIntegerField;
    RelatorioCOD_CLIENTE: TIntegerField;
    RelatorioCOD_FOR: TIntegerField;
    RelatorioCOD_MOTORISTA: TIntegerField;
    RelatorioDATA: TSQLTimeStampField;
    RelatorioID_CARGA: TIntegerField;
    RelatorioLETRA: TStringField;
    RelatorioNUM_CARGA: TIntegerField;
    RelatorioNUM_PEDIDO: TIntegerField;
    RelatorioQTDE: TFloatField;
    RelatorioQTDE_PEDIDO: TFloatField;
    RelatorioSITUACAO: TStringField;
    RelatorioVALOR_CARREGA: TFloatField;
    RelatorioVALOR_FRETE: TFloatField;
    RelatorioVALOR_PEDIDO: TFloatField;
    RelatorioPERC_COMISSAO: TFloatField;
    RelatorioTOTAL_VENDA: TFloatField;
    RelatorioTOTAL_QTDE: TFloatField;
    RelatorioC_BASECOMISSAO: TFloatField;
    RelatorioC_VALORCOMISSAO: TFloatField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    RelatorioC_NUMCARGA: TStringField;
    Rel2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    lblData2: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine4: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLine6: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLabel30: TppLabel;
    ppDBCalc14: TppDBCalc;
    Rel3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel16: TppLabel;
    lblData3: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine7: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel39: TppLabel;
    ppLine8: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel43: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel44: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel45: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc22: TppDBCalc;
    RelatorioNOME_CONTATO: TStringField;
    Rel4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel31: TppLabel;
    lblData4: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine10: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel54: TppLabel;
    ppLine11: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLabel58: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel59: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppLabel60: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc30: TppDBCalc;
    Rel5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel46: TppLabel;
    lblData5: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine13: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLabel69: TppLabel;
    ppLine14: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppLabel73: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel74: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel75: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppLine15: TppLine;
    ppDBCalc38: TppDBCalc;
    Rel6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel61: TppLabel;
    lblData6: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLine16: TppLine;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel84: TppLabel;
    ppLine17: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel88: TppLabel;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLine18: TppLine;
    Rel7: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel76: TppLabel;
    lblData7: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel89: TppLabel;
    ppLine19: TppLine;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel91: TppLabel;
    ppLine20: TppLine;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppLabel95: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel96: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppLine21: TppLine;
    ppDBCalc50: TppDBCalc;
    Rel8: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel78: TppLabel;
    lblData8: TppLabel;
    ppSystemVariable22: TppSystemVariable;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel81: TppLabel;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppLine22: TppLine;
    ppLabel97: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel98: TppLabel;
    ppLine23: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppLabel101: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppLine24: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    Rel9: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel77: TppLabel;
    lblData9: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine25: TppLine;
    ppLabel105: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel106: TppLabel;
    ppLine26: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppLabel109: TppLabel;
    ppDBCalc57: TppDBCalc;
    ppLine27: TppLine;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    Rel10: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppLabel79: TppLabel;
    lblData10: TppLabel;
    ppSystemVariable28: TppSystemVariable;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLine28: TppLine;
    ppLabel114: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppLabel115: TppLabel;
    ppLine29: TppLine;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppLabel118: TppLabel;
    ppDBCalc63: TppDBCalc;
    ppLine30: TppLine;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    RelatorioTOTAL_LIQUIDO: TFloatField;
    Rel11: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLabel110: TppLabel;
    lblData11: TppLabel;
    ppSystemVariable31: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLine31: TppLine;
    ppDetailBand11: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppSummaryBand11: TppSummaryBand;
    ppLabel127: TppLabel;
    ppLine32: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppLabel131: TppLabel;
    ppDBCalc70: TppDBCalc;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppLabel132: TppLabel;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppLabel133: TppLabel;
    ppDBCalc73: TppDBCalc;
    ppLine33: TppLine;
    ppDBCalc74: TppDBCalc;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList11: TppParameterList;
    RelatorioCOD_USINA: TIntegerField;
    RelatorioNOME_USINA: TStringField;
    Rel12: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppLabel119: TppLabel;
    lblData12: TppLabel;
    ppSystemVariable34: TppSystemVariable;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLine34: TppLine;
    ppLabel138: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppSummaryBand12: TppSummaryBand;
    ppLabel139: TppLabel;
    ppLine35: TppLine;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppLabel142: TppLabel;
    ppDBCalc77: TppDBCalc;
    ppLine36: TppLine;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBCalc78: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    ppParameterList12: TppParameterList;
    procedure RelatorioCalcFields(DataSet: TDataSet);
    procedure Rel1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRCarga1: TfRCarga1;

implementation

uses uDM;

{$R *.dfm}

procedure TfRCarga1.RelatorioCalcFields(DataSet: TDataSet);
var
   vbase: double;
begin
   vbase:=0;
   if RelatorioTOTAL_QTDE.AsFloat > 0 then
      vbase:=(RelatorioTOTAL_LIQUIDO.AsFloat / RelatorioTOTAL_QTDE.AsFloat) * RelatorioQTDE.AsFloat;
   RelatorioC_BASECOMISSAO.AsFloat:=vbase;
   RelatorioC_VALORCOMISSAO.AsFloat:=(vbase * RelatorioPERC_COMISSAO.AsFloat) / 100;

   RelatorioC_NUMCARGA.Text:=RelatorioNUM_CARGA.Text;
   if trim(RelatorioLETRA.Text) <> '' then
      RelatorioC_NUMCARGA.Text:=RelatorioNUM_CARGA.Text+'-'+RelatorioLETRA.Text;
end;

procedure TfRCarga1.Rel1PreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=100; // .zoomSetting:=100;//zswholepage;
end;

end.