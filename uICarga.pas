unit uICarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, uCidade;

type
  TfICarga = class(TForm)
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Cod_For: TMaskEdit;
    NomeFor: TEdit;
    DataIni: TMaskEdit;
    Datafin: TMaskEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Cod_Cliente: TMaskEdit;
    Nome: TEdit;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    Cod_Contato: TMaskEdit;
    Nome_Contato: TEdit;
    GroupBox1: TGroupBox;
    RCliente: TRadioButton;
    RFor: TRadioButton;
    RContato: TRadioButton;
    RMotorista: TRadioButton;
    RComissao: TRadioButton;
    GroupBox2: TGroupBox;
    RAberto: TRadioButton;
    REntregue: TRadioButton;
    RCancelado: TRadioButton;
    RTodos: TRadioButton;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    Cod_Motorista: TMaskEdit;
    Nome_Motorista: TEdit;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    GTipo: TGroupBox;
    RRelacao: TRadioButton;
    RResumo: TRadioButton;
    Label7: TLabel;
    Placa: TEdit;
    btnUsina: TSpeedButton;
    Label8: TLabel;
    Cod_Usina: TMaskEdit;
    Nome_Usina: TEdit;
    rbRUsina: TRadioButton;
    NumCarga: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Cod_Trans: TEdit;
    Nome_Trans: TEdit;
    btnTrans: TSpeedButton;
    procedure Nome_ContatoExit(Sender: TObject);
    procedure NomeForExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure NomeForEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure Nome_ContatoEnter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure Nome_MotoristaExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Nome_UsinaExit(Sender: TObject);
    procedure btnUsinaClick(Sender: TObject);
    procedure btnTransClick(Sender: TObject);
    procedure Nome_TransExit(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisaFornecedor(Tipo: String);
    procedure PesquisaCliente(Tipo: String);
    procedure PesquisaUsina(Tipo: String);
    procedure PesquisaTransportador(Tipo: string);
    procedure Filtro;
  public
    { Public declarations }
  end;

var
  fICarga: TfICarga;

implementation

uses uDM, uFornecedor, UUtil, uCliente, uDMRegra, uRPedido1, uMotorista,
  uRCarga1, uTransportador;

{$R *.dfm}

{ TfIPedido }

procedure TfICarga.PesquisaTransportador(Tipo: string);
begin
  if Tipo = 'P' then
  begin
     if dmRegra.PesquisaTransportador('') = true then
     begin
        Cod_Trans.Text:=dm.TransportadorCOD_TRANS.text;
        Nome_Trans.Text:=dm.TransportadorNOME.Text;
     end;
     dm.Transportador.Close;
     fTransportador.Free;
  end
  else begin
   if Nome_Trans.Modified then
   begin
      dmRegra.PesquisaTransportador(Nome_Trans.Text);
      Cod_Trans.Text:=dm.TransportadorCOD_TRANS.Text;
      Nome_Trans.Text:=dm.TransportadorNOME.Text;
      dm.Transportador.Close;
      fTransportador.Free;
      Nome_Trans.Modified:=false;
   end;
  end;
end;

procedure TfICarga.PesquisaCliente(Tipo: String);
var vreg: integer;
begin
   if (Cod_Cliente.Modified = false) and (Nome.Modified = false) then exit;
   if ((Cod_Cliente.Text = '') and (Tipo = 'C')) or ((Nome.Text = '') and (Tipo = 'D')) then
   begin
      COD_CLIENTE.Clear;
      NOME.Clear;
      Cod_Cliente.Modified:=false;
      Nome.Modified:=false;
      exit;
   end;
   if Tipo = 'C' then
      ComandoQSql('select COD_CLIENTE, NOME from CLIENTE where COD_CLIENTE = '+Cod_Cliente.Text)
   else
      ComandoQSql('select COD_CLIENTE, NOME from CLIENTE where NOME like  '''+Nome.Text+'%''');
   vreg:=dm.Conta_Reg(dm.Qsql);
   if vreg = 1 then
   begin
      Cod_Cliente.Text:=dm.Qsql.Fields[0].Text;
      Nome.Text:=dm.Qsql.Fields[1].Text;
   end
   else begin
      fCliente:=TfCliente.create(Self);
      fCliente.TipoCad.Text:='P';
      if Tipo = 'D' then
         fCliente.EditNome.Text:=Nome.Text;
      if fCliente.ShowModal = mrOk then
      begin
         Cod_Cliente.Text:=dm.ClienteCOD_CLIENTE.Text;
         Nome.Text:=dm.ClienteNOME.Text;
      end
      else begin
         Cod_Cliente.Clear;
         Nome.Clear;
      end;
      dm.Cliente.close;
      fCliente.Free;
   end;
   dm.Qsql.close;
   Cod_Cliente.Modified:=false;
   Nome.Modified:=false;
end;

procedure TfICarga.PesquisaFornecedor(Tipo: String);
var vreg: integer;
begin
   if (Cod_For.Modified = false) and (NomeFor.Modified = false) then exit;
   if ((Cod_For.Text = '') and (Tipo = 'C')) or ((NomeFor.Text = '') and (Tipo = 'D')) then
   begin
      Cod_For.Clear;
      NomeFor.Clear;
      Cod_For.Modified:=false;
      NomeFor.Modified:=false;
      exit;
   end;
   if Tipo = 'C' then
      ComandoQSql('select Cod_For, NOME from FORNECEDOR where Cod_For = '+Cod_For.Text)
   else
      ComandoQSql('select Cod_For, NOME from FORNECEDOR where NOME like  '''+NomeFor.Text+'%''');
   vreg:=dm.Conta_Reg(dm.Qsql);
   if vreg = 1 then
   begin
      Cod_For.Text:=dm.Qsql.Fields[0].Text;
      NomeFor.Text:=dm.Qsql.Fields[1].Text;
   end
   else begin
      fFornecedor:=TfFornecedor.create(Self);
      fFornecedor.TipoCad.Text:='P';
      if Tipo = 'D' then
         fFornecedor.EditNome.Text:=NomeFor.Text;
      if fFornecedor.ShowModal = mrOk then
      begin
         Cod_For.Text:=dm.FornecedorCod_For.Text;
         NomeFor.Text:=dm.FornecedorNOME.Text;
      end
      else begin
         Cod_For.Clear;
         NomeFor.Clear;
      end;
      dm.Fornecedor.close;
      fFornecedor.Free;
   end;
   dm.Qsql.close;
   Cod_For.Modified:=false;
   NomeFor.Modified:=false;
end;

procedure TfICarga.PesquisaUsina(Tipo: String);
var vreg: integer;
begin
   if (Cod_Usina.Modified = false) and (Nome_Usina.Modified = false) then exit;
   if ((Cod_Usina.Text = '') and (Tipo = 'C')) or ((Nome_Usina.Text = '') and (Tipo = 'D')) then
   begin
      Cod_Usina.Clear;
      Nome_Usina.Clear;
      Cod_Usina.Modified:=false;
      Nome_Usina.Modified:=false;
      exit;
   end;
   if Tipo = 'C' then
      ComandoQSql('select Cod_For, NOME from FORNECEDOR where Cod_For = '+Cod_Usina.Text)
   else
      ComandoQSql('select Cod_For, NOME from FORNECEDOR where NOME like  '''+Nome_Usina.Text+'%''');
   vreg:=dm.Conta_Reg(dm.Qsql);
   if vreg = 1 then
   begin
      Cod_Usina.Text:=dm.Qsql.Fields[0].Text;
      Nome_Usina.Text:=dm.Qsql.Fields[1].Text;
   end
   else begin
      fFornecedor:=TfFornecedor.create(Self);
      fFornecedor.TipoCad.Text:='P';
      if Tipo = 'D' then
         fFornecedor.EditNome.Text:=Nome_Usina.Text;
      if fFornecedor.ShowModal = mrOk then
      begin
         Cod_Usina.Text:=dm.FornecedorCod_For.Text;
         Nome_Usina.Text:=dm.FornecedorNOME.Text;
      end
      else begin
         Cod_Usina.Clear;
         Nome_Usina.Clear;
      end;
      dm.Fornecedor.close;
      fFornecedor.Free;
   end;
   dm.Qsql.close;
   Cod_Usina.Modified:=false;
   Nome_Usina.Modified:=false;
end;

procedure TfICarga.Nome_ContatoExit(Sender: TObject);
begin
   if Nome_Contato.Modified then
   begin
      dmRegra.PesquisaCliente(Nome_Contato.Text);
      COD_CONTATO.Text:=dm.ClienteCOD_CLIENTE.Text;
      Nome_Contato.Text:=dm.ClienteNOME.Text;
      dm.Cliente.Close;
      fCliente.Free;
   end;
end;

procedure TfICarga.NomeForExit(Sender: TObject);
begin
   if NomeFor.Modified then
      PesquisaFornecedor('D');
end;

procedure TfICarga.NomeExit(Sender: TObject);
begin
   if Nome.Modified then
      PesquisaCliente('D');
end;

procedure TfICarga.NomeForEnter(Sender: TObject);
begin
   NomeFor.Modified:=false;
end;

procedure TfICarga.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfICarga.Nome_TransExit(Sender: TObject);
begin
  if Nome_Trans.Modified then
    PesquisaTransportador('C');
end;

procedure TfICarga.Nome_ContatoEnter(Sender: TObject);
begin
   Nome_Contato.Modified:=false;
end;

procedure TfICarga.SpeedButton2Click(Sender: TObject);
begin
   fFornecedor:=TfFornecedor.create(Self);
   fFornecedor.TipoCad.Text:='P';
   if fFornecedor.ShowModal = mrOk then
   begin
      Cod_For.Text:=dm.FornecedorCod_For.Text;
      NomeFor.Text:=dm.FornecedorNOME.Text;
   end;
   dm.Fornecedor.close;
   fFornecedor.Free;
end;

procedure TfICarga.SpeedButton1Click(Sender: TObject);
begin
   fCliente:=TfCliente.create(Self);
   fCliente.TipoCad.Text:='P';
   if fCliente.ShowModal = mrOk then
   begin
      Cod_Cliente.Text:=dm.ClienteCOD_CLIENTE.Text;
      Nome.Text:=dm.ClienteNOME.Text;
   end;
   dm.Cliente.close;
   fCliente.Free;
end;

procedure TfICarga.SpeedButton3Click(Sender: TObject);
begin
   dmRegra.PesquisaCliente(' ');
   COD_CONTATO.Text:=dm.ClienteCOD_CLIENTE.Text;
   Nome_Contato.Text:=dm.ClienteNOME.Text;
   dm.Cliente.Close;
   fCliente.Free;
end;

procedure TfICarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfICarga.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfICarga.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfICarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=caFree;
end;

procedure TfICarga.FormCreate(Sender: TObject);
begin
   DataIni.Text:=Inicio_Mes(datetoStr(Date));
   Datafin.Text:=Fim_Mes(datetoStr(Date));
end;

procedure TfICarga.btnTransClick(Sender: TObject);
begin
  PesquisaTransportador('P');
end;

procedure TfICarga.btnUsinaClick(Sender: TObject);
begin
   fFornecedor:=TfFornecedor.create(Self);
   fFornecedor.TipoCad.Text:='P';
   if fFornecedor.ShowModal = mrOk then
   begin
      Cod_Usina.Text:=dm.FornecedorCod_For.Text;
      Nome_Usina.Text:=dm.FornecedorNOME.Text;
   end;
   dm.Fornecedor.close;
   fFornecedor.Free;
end;

procedure TfICarga.butImprimirClick(Sender: TObject);
var vdata: string;
begin
   frCarga1:=TfrCarga1.create(self);
   with frCarga1 do
   begin
      vData:='Per�odo de: '+DataIni.Text+' At�: '+Datafin.Text;
      lblData.Caption:=vData;
      lblData2.Caption:=vData;
      lblData3.Caption:=vData;
      lblData4.Caption:=vData;
      lblData5.Caption:=vData;
      lblData6.Caption:=vData;
      lblData7.Caption:=vData;
      lblData8.Caption:=vData;
      lblData9.Caption:=vData;
      lblData10.Caption:=vData;
      lblData11.Caption:=vData;
      lblData12.Caption:=vData;
//------------------------------------------------------------------------------
      Filtro;
//------------------------------------------------------------------------------
      if RRelacao.Checked then
      begin
         if RComissao.Checked then
            Rel1.Print;
         if RFor.Checked then
            Rel2.Print;
         if RContato.Checked then
            Rel3.Print;
         if RCliente.Checked then
            Rel4.Print;
         if RMotorista.Checked then
            Rel5.Print;
         if rbRUsina.Checked then
            Rel11.Print;
      end
//------------------------------------------------------------------------------
      else begin
         if RComissao.Checked then
            Rel6.Print;
         if RCliente.Checked then
            Rel7.Print;
         if RFor.Checked then
            Rel8.Print;
         if RContato.Checked then
            Rel9.Print;
         if RMotorista.Checked then
            Rel10.Print;
         if rbRUsina.Checked then
            Rel12.Print;
      end;
      Relatorio.Close;
      free;
   end;
end;

procedure TfICarga.Filtro;
begin
   with frCarga1 do
   begin
      Relatorio.Close;
//------------------------------------------------------------------------------
// Filtro
      if Cod_For.Text <> '' then
         QRelatorio.SQL.Add(' and CAR.COD_FOR = '+Cod_For.Text);
      if Cod_Cliente.Text <> '' then
         QRelatorio.SQL.Add(' and CAR.COD_CLIENTE = '+Cod_Cliente.Text);
      if Cod_Contato.Text <> '' then
         QRelatorio.SQL.Add(' and CAR.COD_CONTATO = '+Cod_Contato.Text);
      if Cod_Motorista.Text <> '' then
         QRelatorio.SQL.Add(' and CAR.COD_MOTORISTA = '+Cod_Motorista.Text);
      if Cod_Usina.Text <> '' then
         QRelatorio.SQL.Add(' and PED.COD_USINA = '+Cod_Usina.Text);
      if trim(Placa.Text) <> '' then
         QRelatorio.SQL.Add(' and MOT.PLACA = '''+Placa.Text+'''');
      if trim(NumCarga.Text) <> '' then
        QRelatorio.SQL.Add(' and CAR.NUM_CARGA = ' + NumCarga.Text);
      if cod_trans.Text <> '' then
        QRelatorio.SQL.Add(' and TRA.COD_TRANS = ' + Cod_Trans.Text);


      if RAberto.Checked then
         QRelatorio.SQL.Add(' and CAR.SITUACAO = ''A''');
      if REntregue.Checked then
         QRelatorio.SQL.Add(' and CAR.SITUACAO = ''E''');
      if RCancelado.Checked then
         QRelatorio.SQL.Add(' and CAR.SITUACAO = ''C''');
//------------------------------------------------------------------------------
// ordem
      if rCliente.Checked then
         QRelatorio.SQL.Add(' order by 1,CAR.NUM_PEDIDO');
      if RFor.Checked then
         QRelatorio.SQL.Add(' order by 2,CAR.NUM_PEDIDO');
      if RContato.Checked then
         QRelatorio.SQL.Add(' order by 4,CAR.NUM_PEDIDO');
      if RMotorista.Checked then
         QRelatorio.SQL.Add(' order by 3,CAR.NUM_PEDIDO');
      if rbRUsina.Checked then
         QRelatorio.SQL.Add(' order by NOME_USINA,PED.COD_USINA');
      if rComissao.Checked then
         QRelatorio.SQL.Add(' order by 2,CAR.NUM_PEDIDO');

      QRelatorio.Params[0].Text:=vgCod_Empresa;
      QRelatorio.Params[1].AsDate:=strtodate(DataIni.Text);
      QRelatorio.Params[2].AsDate:=strtodate(Datafin.Text);
      Relatorio.Open;
   end;
end;

procedure TfICarga.Nome_MotoristaExit(Sender: TObject);
begin
   if Nome_Motorista.Modified then
   begin
      dmRegra.PesquisaMotorista(Nome_Motorista.Text);
      COD_MOTORISTA.Text:=dm.MotoristaCOD_MOTORISTA.Text;
      NOME_MOTORISTA.Text:=dm.MotoristaNOME.Text;
      dm.Motorista.Close;
      fMotorista.Free;
      Nome_Motorista.Modified:=false;
   end;
end;

procedure TfICarga.Nome_UsinaExit(Sender: TObject);
begin
   if NomeFor.Modified then
      PesquisaUsina('D');
end;

procedure TfICarga.SpeedButton4Click(Sender: TObject);
begin
   dmRegra.PesquisaMotorista(' ');
   COD_MOTORISTA.Text:=dm.MotoristaCOD_MOTORISTA.Text;
   NOME_MOTORISTA.Text:=dm.MotoristaNOME.Text;
   dm.Motorista.Close;
   fMotorista.Free;
   Nome_Motorista.Modified:=false;
end;

end.
