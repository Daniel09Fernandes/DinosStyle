unit Bootstrap.Converter.Map.Dinos;

interface

uses
  System.Classes,
  Bootstrap.Converter.Buttons.Dinos,
  Bootstrap.Converter.Edits.Dinos,
  Bootstrap.Converter.Panels.Dinos,
  Bootstrap.Converter.Memos.Dinos,
  Bootstrap.Converter.Grids.Dinos,
  Bootstrap.Converter.Checkbox.Dinos,
  Bootstrap.Converter.Labels.Dinos;
type
  TMap = class
    class procedure MapComponenet(AOwner: TComponent);
  end;

implementation

{ TMap }
uses
  uniGUIForm, uniLabel, uniPanel, uniMemo, uniDbGrid, uniEdit, UniCheckbox, uniButton, uniBitBtn, uniSpeedButton;

class procedure TMap.MapComponenet(AOwner: TComponent);
var i: integer;
   lForm: TUniForm;
begin
  if AOwner is TUniForm then
    lForm := TUniForm(AOwner);

  for I := 0 to lForm.ComponentCount -1 do
  begin

    if lForm.Components[i] is TUniLabel then
      TUniLabel(lForm.Components[i]).ConvertToBootstrap
    else
    if lForm.Components[i] is TUniPanel then
      TUniPanel(lForm.Components[i]).ConvertToBootstrap
    else
    if lForm.Components[i] is TUniMemo then
       TUniMemo(lForm.Components[i]).ConvertToBootstrap
    else
    if lForm.Components[i] is TUniDbGrid then
       TUniDbGrid(lForm.Components[i]).ConvertToBootstrap
    else
    if lForm.Components[i] is TUniEdit then
       TUniEdit(lForm.Components[i]).ConvertToBootstrap  
    else
    if lForm.Components[i] is TUniCheckbox then
       TUniCheckbox(lForm.Components[i]).ConvertToBootstrap
    else
    if lForm.Components[i] is TUniButton then
       TUniButton(lForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)   
    else   
    if lForm.Components[i] is TUniBitBtn then
       TUniBitBtn(lForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)        
    else   
    if lForm.Components[i] is TUniSpeedButton then
       TUniBitBtn(lForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess);    
  end;

end;

end.
