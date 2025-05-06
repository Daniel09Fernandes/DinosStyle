unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uLogin,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImage, Vcl.Imaging.jpeg, uniPanel, uniButton;

type
  TMainForm = class(TUniForm)
    UniImage1: TUniImage;
    UniPanel1: TUniPanel;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    FrLogin: TFrLogin;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  Bootstrap.Converter.Panels.Dinos;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  FrLogin := TFrLogin.Create(Self);
  FrLogin.Parent := (UniPanel1);

  // Centralize se necessário
//  FrLogin.Top := (Self.Height - FrLogin.Height) div 2;
//  FrLogin.Left := (Self.Width - FrLogin.Width) div 2;
  FrLogin.Left :=  Round((Screen.Width  / 2)   -  (FrLogin.Width / 2));
  FrLogin.Top  := 20; // Round((Screen.Height / 2)   - (FrLogin.Height / 2));

  FrLogin.Show;
  FrLogin.BringToFront;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniPanel1.Align := alClient;
  UniPanel1.ConvertToBootstrap();
  UniPanel1.Transparence();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
