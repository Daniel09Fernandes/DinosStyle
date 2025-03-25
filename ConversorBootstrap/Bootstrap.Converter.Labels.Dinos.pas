unit Bootstrap.Converter.Labels.Dinos;


interface
uses
  UniLabel, System.Classes;

type
  TDinosConverterLabel = class helper for TUniLabel
   private

   public
      procedure ConvertToBootstrap;
   end;
implementation

{ TDinosConverterPanel }
uses
  Bridge.Dinos, uConst.Form.Controls,
  strutils, SysUtils, uniGUITypes;

procedure TDinosConverterLabel.ConvertToBootstrap;
begin
   TextConversion := txtHTML;
   self.text := '<p class="text-start fw-normal lh-1">'+self.Caption+'</p>';
end;

end.
