unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBasicGrid, uniDBGrid, uniCheckBox, uniEdit, uniGUIBaseClasses, uniPanel, uniMemo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniLabel, uniBitBtn, uniSpeedButton, uniImageList, uniTimer;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniCheckBox1: TUniCheckBox;
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniMemo1: TUniMemo;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable1Nome: TStringField;
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    FDMemTable1Email: TStringField;
    FDMemTable1Adress: TStringField;
    FDMemTable1Obs: TStringField;
    FDMemTable1SendEmail: TStringField;
    UniImageList1: TUniImageList;
    UniPanel4: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel5: TUniLabel;
    UniPanel5: TUniPanel;
    UniTimer1: TUniTimer;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  StrUtils,
  Bootstrap.Converter.Buttons.Dinos,
//  Bootstrap.Converter.Edits.Dinos,
//  Bootstrap.Converter.Panels.Dinos,
//  Bootstrap.Converter.Memos.Dinos,
//  Bootstrap.Converter.Grids.Dinos,
//  Bootstrap.Converter.Checkbox.Dinos,
//  Bootstrap.Converter.Labels.Dinos,
  Bootstrap.Converter.Map.Dinos,
  js.SweetAlert.Dinos;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  TSweetAlert.jsSweetFireWarning('Aviso', 'Esse aviso, está avisando!');
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  TSweetAlert.jsSweetFireQuestion(
        'Confirmação',
        'Deseja realmente executar esta ação?',
        'Ação foi executada com sucesso!',
        self,
        procedure
        begin
          FDMemTable1.Append;
          FDMemTable1Nome.AsString := UniEdit1.Text;
          FDMemTable1Email.AsString := UniEdit2.Text;
          FDMemTable1Adress.AsString := UniEdit3.Text;
          FDMemTable1Obs.AsString := UniMemo1.Text;
          FDMemTable1SendEmail.AsString := ifthen(UniCheckBox1.Checked, 'S', 'N');
          FDMemTable1.Post;
        end);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  FDMemTable1.Cancel;
  TSweetAlert.jsSweetFireError('Cancelamento', 'Cadastro cancelado!');
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  TMap.MapComponenet(self); //Aqui, vai aplicar para os botoes o tema  tpSuccess
  UniButton2.ConvertToBootstrap(TpButtom.tpDanger);
  UniBitBtn1.ConvertToBootstrap(TpButtom.tpInfo);
  UniSpeedButton1.ConvertToBootstrap(TpButtom.tpSecondaryOutline);

//  UniButton1.ConvertToBootstrap(TpButtom.tpSuccess);
//  UniEdit1.ConvertToBootstrap;
//  UniEdit2.ConvertToBootstrap;
//  UniEdit3.ConvertToBootstrap;
//  UniPanel1.ConvertToBootstrap;
//  UniMemo1.ConvertToBootstrap;
//  UniDBGrid1.ConvertToBootstrap;
//  UniCheckBox1.ConvertToBootstrap;
//  UniLabel1.ConvertToBootstrap;
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  TSweetAlert.jsSweetFireSuccess('Sucesso', 'Isso é um sucesso');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
