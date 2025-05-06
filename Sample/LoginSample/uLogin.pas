unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniEdit, uniLabel, uniGUIBaseClasses, uniPanel, uniImage, Vcl.Imaging.GIFImg;

type
  TFrLogin = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniEdit2: TUniEdit;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniImage1: TUniImage;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1MouseLeave(Sender: TObject);
    procedure UniButton1MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  Bootstrap.Converter.Map.Dinos,
  Bootstrap.Converter.Buttons.Dinos;



procedure TFrLogin.UniButton1MouseEnter(Sender: TObject);
begin
  TUniButton(sender).Font.Color := ClWhite;
end;

procedure TFrLogin.UniButton1MouseLeave(Sender: TObject);
begin
  TUniButton(sender).Font.Color := $00718404;
end;

procedure TFrLogin.UniFrameCreate(Sender: TObject);
begin
  TMap.MapComponenet(self);
  UniButton1.ConvertToBootstrap(TpButtom.tpSuccessOutline);
  UniButton2.ConvertToBootstrap(TpButtom.tpDanger);
end;

end.
