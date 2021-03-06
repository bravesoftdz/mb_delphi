unit uITransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfITransporte = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Cod_Cidade: TMaskEdit;
    Desc_Cidade: TEdit;
    Cod_Agencia: TMaskEdit;
    Desc_Agencia: TEdit;
    Cod_Estado: TMaskEdit;
    Nome_Estado: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    GroupBox1: TGroupBox;
    RRelacao: TRadioButton;
    RAniver: TRadioButton;
    Label4: TLabel;
    MesInicial: TMaskEdit;
    Label5: TLabel;
    MesFinal: TMaskEdit;
    RTransp: TRadioButton;
    procedure butSairClick(Sender: TObject);
    procedure Desc_CidadeExit(Sender: TObject);
    procedure Desc_AgenciaExit(Sender: TObject);
    procedure Nome_EstadoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fITransporte: TfITransporte;

implementation

uses uDMRegra, uDM, uCidade, uAgenciador, uEstado, uRTransporte;

{$R *.dfm}

procedure TfITransporte.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfITransporte.Desc_CidadeExit(Sender: TObject);
begin
   if Desc_Cidade.Modified then
   begin
      dmRegra.PesquisaCidade(Desc_Cidade.Text);
      Cod_Cidade.Text:=dm.CidadeCOD_CIDADE.Text;
      Desc_Cidade.Text:=dm.CidadeDESC_CIDADE.Text;
      dm.Cidade.Close;
      fCidade.Free;
      Desc_Cidade.Modified:=false;
   end;
end;

procedure TfITransporte.Desc_AgenciaExit(Sender: TObject);
begin
   if Desc_Agencia.Modified then
   begin
      dmRegra.PesquisaAgenciador(Desc_Agencia.Text);
      Cod_Agencia.Text:=dm.AgenciadorCOD_AGENCIA.Text;
      Desc_Agencia.Text:=dm.AgenciadorNOME.Text;
      dm.Agenciador.Close;
      fAgenciador.Free;
      Desc_Agencia.Modified:=false;
   end;
end;

procedure TfITransporte.Nome_EstadoExit(Sender: TObject);
begin
   if Nome_Estado.Modified then
   begin
      dmRegra.PesquisaEstado(Nome_Estado.Text);
      Cod_Estado.Text:=dm.EstadoID_ESTADO.Text;
      Nome_Estado.Text:=dm.EstadoDESC_ESTADO.Text;
      dm.Estado.Close;
      fEstado.Free;
      Nome_Estado.Modified:=false;
   end;
end;

procedure TfITransporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfITransporte.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfITransporte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      vk_Escape: close;
   end;
end;

procedure TfITransporte.SpeedButton1Click(Sender: TObject);
begin
   if dmRegra.PesquisaCidade('') = true then
   begin
      COD_CIDADE.Text:=dm.CidadeCOD_CIDADE.text;
      DESC_Cidade.Text:=dm.CidadeDESC_CIDADE.Text;
   end;
   dm.Cidade.Close;
   fCidade.Free;
end;

procedure TfITransporte.SpeedButton2Click(Sender: TObject);
begin
   if dmRegra.PesquisaAgenciador('') = true then
   begin
      Cod_Agencia.Text:=dm.AgenciadorCOD_AGENCIA.text;
      Desc_Agencia.Text:=dm.AgenciadorNOME.Text;
   end;
   dm.Agenciador.Close;
   fAgenciador.Free;
end;

procedure TfITransporte.SpeedButton3Click(Sender: TObject);
begin
   if dmRegra.PesquisaEstado('') = true then
   begin
      Cod_Estado.Text:=dm.EstadoID_ESTADO.text;
      Nome_Estado.Text:=dm.EstadoDESC_ESTADO.Text;
   end;
   dm.Estado.Close;
   fEstado.Free;
end;

procedure TfITransporte.butImprimirClick(Sender: TObject);
var
   vlMesIni,
   vlMesFin: Tdate;

begin
   if RAniver.Checked then
   begin
      try
         vlMesIni := strtoDate('01/' + MesInicial.Text + '/1900');
         vlMesFin := strtoDate('01/' + MesFinal.Text + '/1900');
      except
         showMessage('Data Inv�lida');
         MesInicial.SetFocus;
         exit;
      end;
   end;

   frTransporte:=TfrTransporte.create(self);
   with frTransporte do
   begin

      if Cod_Cidade.Text <> '' then
         Qrelatorio.SQL.Add(' and TRA.COD_CIDADE = '+Cod_Cidade.Text);
      if Cod_Estado.Text <> '' then
         Qrelatorio.SQL.Add(' and CID.ID_ESTADO = '+Cod_Estado.Text);

      if RRelacao.Checked then
      begin
         Relatorio.close;
         Qrelatorio.SQL.Add(' order by DDD, MOT.NOME');
         Qrelatorio.Params[0].Text:=vgCod_Empresa;
         Relatorio.open;
         Rel1.Print;
      end;

      if RTransp.Checked then
      begin
         cdsRel.close;
         if Cod_Cidade.Text <> '' then
            QRel.SQL.Add(' and TRA.COD_CIDADE = '+Cod_Cidade.Text);
          if Cod_Estado.Text <> '' then
            QRel.SQL.Add(' and CID.ID_ESTADO = '+Cod_Estado.Text);

          QRel.SQL.Add(' order by cid.DESC_CIDADE, TRA.NOME');
          QRel.Params[0].Text:=vgCod_Empresa;
          cdsRel.open;
          Rel3.Print;
      end;

      if RAniver.Checked then
      begin

         Aniver.close;
         QAniver.SQL.Add(' and TRA.COD_EMPRESA = ' + vgCod_Empresa);
         QAniver.SQL.Add(' where EXTRACT(MONTH FROM TRA.DATANASC) >= ' + MesInicial.text);
         QAniver.SQL.Add(' and EXTRACT(MONTH FROM TRA.DATANASC) <= ' + MesFinal.Text);
         QAniver.SQL.Add(' and TRA.DATANASC IS NOT NULL');

         QAniver.SQL.Add(' order by 2, TRA.DATANASC');

         lblData02.Caption := 'M�s de: ' + MesInicial.Text + ' At�: ' + MesFinal.Text;
         Aniver.open;
         Rel2.Print;
      end;
      free;
   end;
end;

procedure TfITransporte.FormCreate(Sender: TObject);
begin
   MesInicial.Text := formatDateTime('mm',Date);
   MesFinal.Text := formatDateTime('mm',Date);
end;

end.
