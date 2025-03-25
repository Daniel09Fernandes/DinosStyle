unit Bootstrap.Converter.Edits.Dinos;

interface
uses
  uniEdit, System.Classes;
type
   TDinosConverterEdit = class helper for TUniCustomEdit
   private

   public
      procedure ConvertToBootstrap;
   end;

implementation
uses
  uniGUITypes, Bridge.Dinos, uConst.Form.Controls,
  strutils, SysUtils,
  {$IF FMX.Types.FireMonkeyVersion > 0} FMX.Graphics {$ELSE} Vcl.Graphics {$ENDIF};

{ TDinosConverterFormControl }

procedure TDinosConverterEdit.ConvertToBootstrap;
begin
  Self.Color := clWhite;
  Self.BorderStyle := ubsDefault;

  if TUniEdit(self).EmptyText = '' then
  begin
    TUniEdit(self).EmptyText := self.Text;
    TUniEdit(self).Text := '';
    TUniEdit(self).Caption := '';
  end;

  Self.ClientEvents.UniEvents.add( TBridge.BridgeElement( FormEditGroup, FormEditGroup ) );
end;

end.
