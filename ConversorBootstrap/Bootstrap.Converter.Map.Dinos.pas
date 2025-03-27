{MIT License

Copyright (c) 2025 Daniel Fernandes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.}
{ ******************************************************* }

{ Delphi Bootstrap Library }

{ File     :  Bootstrap.Converter.Map.Dinos.pas }
{ Developer: Daniel Fernandes Rodrigures }
{ Email    : dinosdev.daniel@gmail.com }
{ this unit is a part of the Open Source. }
{ licensed under a MIT - see LICENSE.md}

{ ******************************************************* }
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
  Bootstrap.Converter.Labels.Dinos,
  Bootstrap.Converter.Images.Dinos,
  uConst.Form.Controls;
type

  TMap = class
    class procedure MapComponenet(AOwner: TComponent);
  end;
  const tagNotApplyBootstrap = NotApplyBootstrap;
implementation

{ TMap }
uses
  uniGUIForm, uniLabel, uniPanel, uniMemo, uniDbGrid, uniEdit, UniCheckbox, uniButton, uniBitBtn, uniSpeedButton, uniImage,
  uniMenuButton;

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
       TUniBitBtn(lForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if lForm.Components[i] is TUniMenuButton then
       TUniMenuButton(lForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if lForm.Components[i] is TuniImage then
       TuniImage(lForm.Components[i]).ConvertToBootstrap;
  end;

end;

end.
