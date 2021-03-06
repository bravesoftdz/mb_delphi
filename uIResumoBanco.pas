unit uIResumoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, FMTBcd, ppCtrls, ppBands,
  ppClass, DB, ppPrnabl, ppCache, DBClient, Provider, SqlExpr, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppViewr, ppVar, ppDesignLayer,
  ppParameter;

type
  TfIResumoBanco = class(TForm)
    DataIni: TMaskEdit;
    Label4: TLabel;
    Datafin: TMaskEdit;
    Label5: TLabel;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    Id_ContaBanco: TMaskEdit;
    Num_Conta: TEdit;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    Rel: TppReport;
    dbRelatorio: TppDBPipeline;
    dsRelatorio: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel5: TppLabel;
    lblData: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppDBCalc6: TppDBCalc;
    QReceber: TSQLQuery;
    Qpagar: TSQLQuery;
    QReceberTOTAL: TFloatField;
    QpagarTOTAL: TFloatField;
    Relatorio: TClientDataSet;
    RelatorioRECEBER: TFloatField;
    RelatorioPAGAR: TFloatField;
    RelatorioSALDO: TFloatField;
    RelatorioNUM_CONTA: TStringField;
    QReceberNUM_CONTA: TStringField;
    QpagarNUM_CONTA: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    procedure butSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butImprimirClick(Sender: TObject);
    procedure Num_ContaExit(Sender: TObject);
    procedure Num_ContaEnter(Sender: TObject);
    procedure RelPreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisaConta(Tipo: String);
    procedure Receber;
    procedure Pagar;
  public
    { Public declarations }
  end;

var
  fIResumoBanco: TfIResumoBanco;

implementation

uses uDM, uContaBanco, UUtil;

{$R *.dfm}

procedure TfIResumoBanco.Pagar;
var
   vConta: Integer;
begin
   vConta:=0;
   if trim(Id_ContaBanco.Text) <> '' then
      vConta:=strToInt(Id_ContaBanco.Text);

   QPagar.Close;
   QPagar.Params.ParamByName('COD_EMPRESA').Text:=vgCod_Empresa;
   QPagar.Params.ParamByName('DATAINI').AsDate:=strtodate(DataIni.Text);
   QPagar.Params.ParamByName('DATAFIN').AsDate:=strtodate(Datafin.Text);
   QPagar.Params.ParamByName('CONTA').AsInteger:=vConta;
   QPagar.Params.ParamByName('CONTA1').AsInteger:=vConta;
   QPagar.Open;

   while not QPagar.Eof do
   begin
      Relatorio.Append;
      RelatorioRECEBER.AsFloat:=0;
      RelatorioPAGAR.AsFloat:=QPagarTOTAL.AsFloat;
      RelatorioSALDO.AsFloat:=0;
      RelatorioNUM_CONTA.Text:=QPagarNUM_CONTA.Text;
      Relatorio.Post;
      QPagar.Next;
   end;
   QPagar.Close;
end;

procedure TfIResumoBanco.Receber;
var
   vConta: Integer;
begin
   vConta:=0;
   if trim(Id_ContaBanco.Text) <> '' then
      vConta:=strToInt(Id_ContaBanco.Text);

   QReceber.Close;
   QReceber.Params.ParamByName('COD_EMPRESA').Text:=vgCod_Empresa;
   QReceber.Params.ParamByName('DATAINI').AsDate:=strtodate(DataIni.Text);
   QReceber.Params.ParamByName('DATAFIN').AsDate:=strtodate(Datafin.Text);
   QReceber.Params.ParamByName('CONTA').AsInteger:=vConta;
   QReceber.Params.ParamByName('CONTA1').AsInteger:=vConta;
   Qreceber.Open;

   while not QReceber.Eof do
   begin
      Relatorio.Append;
      RelatorioRECEBER.AsFloat:=QReceberTOTAL.AsFloat;
      RelatorioPAGAR.AsFloat:=0;
      RelatorioSALDO.AsFloat:=0;
      RelatorioNUM_CONTA.Text:=QReceberNUM_CONTA.Text;
      Relatorio.Post;
      QReceber.Next;
   end;
   QReceber.Close;
end;

procedure TfIResumoBanco.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfIResumoBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      vk_Escape: close;
   end;
end;

procedure TfIResumoBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfIResumoBanco.butImprimirClick(Sender: TObject);
begin
   if ValidaDatas(DataIni.Text,Datafin.Text) = false then
      exit;

   Relatorio.First;
   while not Relatorio.Eof do
      Relatorio.Delete;

   Receber;
   pagar;

   Relatorio.First;
   while not Relatorio.Eof do
   begin
      Relatorio.Edit;
      RelatorioSALDO.AsFloat:=RelatorioRECEBER.AsFloat - RelatorioPAGAR.AsFloat;
      Relatorio.Post;
      Relatorio.Next;
   end;
   lblData.Caption:='Per�odo de: '+DataIni.Text+' At�: '+Datafin.Text;
   Rel.Print;
end;

procedure TfIResumoBanco.PesquisaConta(Tipo: String);
var vreg: integer;
sAtivo: string;
begin
   if ((id_ContaBanco.Text = '') and (Tipo = 'C')) or ((Num_Conta.Text = '') and (Tipo = 'D')) then
   begin
      ID_CONTABANCO.Clear;
      Num_Conta.Clear;
      exit;
   end;
   sAtivo := ' AND ATIVO = ' + QuotedStr('S');
   if Tipo = 'C' then
      ComandoQSql('select ID_CONTABANCO, NUM_CONTA from CONTABANCO where ID_CONTABANCO = '+id_ContaBanco.Text + sAtivo)
   else
      ComandoQSql('select ID_CONTABANCO, NUM_CONTA from CONTABANCO where NUM_CONTA like  '''+Num_Conta.Text+'%''' + sAtivo);
   vreg:=dm.Conta_Reg(dm.Qsql);
   if vreg = 1 then
   begin
      ID_CONTABANCO.Text:=dm.Qsql.Fields[0].Text;
      Num_Conta.Text:=dm.Qsql.Fields[1].Text;
   end
   else begin
      fContaBanco:=TfContaBanco.create(true);
      fContaBanco.TipoCad.Text:='P';
      if Tipo = 'D' then
         fContaBanco.EditNome.Text:=Num_Conta.Text;
      if fContaBanco.ShowModal = mrOk then
      begin
         ID_CONTABANCO.Text:=dm.ContaBancoID_CONTABANCO.Text;
         Num_Conta.Text:=dm.ContaBancoNUM_CONTA.Text;
      end
      else begin
         ID_CONTABANCO.Clear;
         Num_Conta.Clear;
      end;
      dm.ContaBanco.close;
      fContaBanco.Free;
   end;
   dm.Qsql.close;
end;

procedure TfIResumoBanco.Num_ContaExit(Sender: TObject);
begin
   if Num_Conta.Modified then
      PesquisaConta('D');
end;

procedure TfIResumoBanco.Num_ContaEnter(Sender: TObject);
begin
   Num_Conta.Modified:=false;
end;

procedure TfIResumoBanco.RelPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=100; // .zoomSetting:=100;//zswholepage;
end;

procedure TfIResumoBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfIResumoBanco.FormCreate(Sender: TObject);
begin
   DataIni.Text:=Inicio_Mes(datetoStr(Date));
   Datafin.Text:=Fim_Mes(datetoStr(Date));
end;

procedure TfIResumoBanco.SpeedButton3Click(Sender: TObject);
begin
    fContaBanco:=TfContaBanco.create(true);
    fContaBanco.TipoCad.Text:='P';
    if fContaBanco.ShowModal = mrOk then
    begin
       ID_CONTABANCO.Text:=dm.ContaBancoID_CONTABANCO.Text;
       Num_Conta.Text:=dm.ContaBancoNUM_CONTA.Text;
    end;
    dm.ContaBanco.close;
    fContaBanco.Free;
end;


end.
