unit Bootstrap.Converter.Grids.Dinos;

interface
uses
  uniDbGrid, System.Classes;

type
  TDinosConverterGrid = class helper for TUniCustomDBGrid
  private

  public
     procedure ConvertToBootstrap;
  end;

implementation

{ TDinosConverterGrid }
uses uniGUITypes, Bridge.Dinos, uConst.Grids,
     strutils, SysUtils;

procedure TDinosConverterGrid.ConvertToBootstrap;
begin
  Self.ClientEvents.UniEvents.add( TBridge.BridgeElement( DinosGrid, DinosGrid ) );
end;

end.
