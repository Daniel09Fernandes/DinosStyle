unit Bootstrap.Converter.Panels.Dinos;

interface
uses
  uniPanel, System.Classes;

type
  TDinosConverterPanel = class helper for TUniCustomPanel
   private

   public
      procedure ConvertToBootstrap;
   end;
implementation

{ TDinosConverterPanel }
uses
  Bridge.Dinos, uConst.Form.Controls,
  strutils, SysUtils, uniGUITypes;

procedure TDinosConverterPanel.ConvertToBootstrap;
begin
   Self.BorderStyle := ubsDefault;
   Self.ClientEvents.UniEvents.add( TBridge.BridgeElement( FormPanel, FormPanel ));
end;

end.
