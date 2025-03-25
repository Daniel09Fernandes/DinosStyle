unit Bootstrap.Converter.Memos.Dinos;

interface
uses
  uniMemo, System.Classes;
type
   TDinosConverterEdit = class helper for TUniCustomMemo
   private

   public
      procedure ConvertToBootstrap;
   end;
implementation
{ TDinosConverterEdit }

uses uniGUITypes, Bridge.Dinos, uConst.Form.Controls,
     strutils, SysUtils,
     {$IF FMX.Types.FireMonkeyVersion > 0} FMX.Graphics {$ELSE} Vcl.Graphics {$ENDIF};

procedure TDinosConverterEdit.ConvertToBootstrap;
begin
  Self.Color := clWhite;
  Self.ClientEvents.UniEvents.add( TBridge.BridgeElement( FormMemo, FormMemo ) );
end;

end.
