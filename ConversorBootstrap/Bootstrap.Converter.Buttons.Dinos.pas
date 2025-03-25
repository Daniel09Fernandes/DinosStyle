unit Bootstrap.Converter.Buttons.Dinos;

interface

uses
   uniButton, System.Classes, uConst.Buttoms;

Type
  TpButtom = TypeButtom;
  //Doc:: https://getbootstrap.com/docs/4.0/components/buttons/
  TDinosConverterButtons = class helper for TUniBaseButton
  private
    function TypeButtomToString(ATypeButtom: TpButtom):string;
  public
    procedure ConvertToBootstrap(ATypeButtom: TpButtom);
  end;

implementation

uses
  uniGUITypes, strutils, SysUtils, Vcl.Graphics, Bridge.Dinos;

{ TDinosConverter }


procedure TDinosConverterButtons.ConvertToBootstrap(ATypeButtom: TypeButtom);
var LBaseCls:string;
begin
  if ATypeButtom <> TpNone then
    Self.Color := clBtnface;

  LBaseCls := IfThen((ATypeButtom <> TpNone),TypeButtomToString(ATypeButtom), '');
  Self.ClientEvents.UniEvents.add( TBridge.BridgeElement('btn', LBaseCls));
end;


function TDinosConverterButtons.TypeButtomToString(ATypeButtom: TypeButtom): string;
begin
    case ATypeButtom of
      tpPrimary: Result := Primary;
      tpSecondary: Result := Secondary;
      tpSuccess: Result := Success;
      tpDanger: Result := Danger;
      tpWarning: Result := Warning;
      tpInfo: Result := Info;
      tpLight: Result := Light;
      tpDark: Result := Dark;
      tpLink: Result := Link;
      tpPrimaryOutline: Result := PrimaryOutline;
      tpSecondaryOutline: Result :=  SecondaryOutline;
      tpSuccessOutline: Result := SuccessOutline;
      tpDangerOutline: Result := DangerOutline;
      tpWarningOutline: Result := WarningOutline;
      tpInfoOutline: Result := InfoOutline;
      tpLightOutline: Result := LightOutline;
      tpDarkOutline: Result := DarkOutline;
      tpLinkOutline: Result := LinkOutline ;
      else
        Result := Primary;
    end;
end;

end.
