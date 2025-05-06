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
  System.Classes,  uniGUIForm, uniGUIFrame,
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
  private
    class procedure ApplyBootstrap(AForm: TUniForm);  overload;
    class procedure ApplyBootstrap(AFrame: TUniFrame); overload;
    class procedure ApplyBootstrap(AComponenet: TComponent); overload;
  public
    class procedure MapComponenet(AOwner: TComponent);
  end;
  const tagNotApplyBootstrap = NotApplyBootstrap;
implementation

{ TMap }
uses
  uniLabel, uniPanel, uniMemo, uniDbGrid, uniEdit, UniCheckbox, uniButton, uniBitBtn, uniSpeedButton, uniImage,
  uniMenuButton;

class procedure TMap.ApplyBootstrap(AComponenet: TComponent);
begin
  for var I := 0 to AComponenet.ComponentCount -1 do
  begin

    if AComponenet.Components[i] is TUniLabel then
      TUniLabel(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniPanel then
      TUniPanel(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniMemo then
       TUniMemo(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniDbGrid then
       TUniDbGrid(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniEdit then
       TUniEdit(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniCheckbox then
       TUniCheckbox(AComponenet.Components[i]).ConvertToBootstrap
    else
    if AComponenet.Components[i] is TUniButton then
       TUniButton(AComponenet.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AComponenet.Components[i] is TUniBitBtn then
       TUniBitBtn(AComponenet.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AComponenet.Components[i] is TUniSpeedButton then
       TUniBitBtn(AComponenet.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AComponenet.Components[i] is TUniMenuButton then
       TUniMenuButton(AComponenet.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AComponenet.Components[i] is TuniImage then
       TuniImage(AComponenet.Components[i]).ConvertToBootstrap;
  end;
end;

class procedure TMap.MapComponenet(AOwner: TComponent);
var i: integer;
   lForm: TUniForm;
   lFrame: TUniFrame;
begin
  if AOwner is TUniForm then
    ApplyBootstrap(TUniForm(AOwner))
 else if AOwner is TUniFrame then
   ApplyBootstrap(TUniFrame(AOwner))
 else
   ApplyBootstrap(AOwner)
end;

class procedure TMap.ApplyBootstrap(AForm: TUniForm);
begin
  for var I := 0 to AForm.ComponentCount -1 do
  begin

    if AForm.Components[i] is TUniLabel then
      TUniLabel(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniPanel then
      TUniPanel(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniMemo then
       TUniMemo(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniDbGrid then
       TUniDbGrid(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniEdit then
       TUniEdit(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniCheckbox then
       TUniCheckbox(AForm.Components[i]).ConvertToBootstrap
    else
    if AForm.Components[i] is TUniButton then
       TUniButton(AForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AForm.Components[i] is TUniBitBtn then
       TUniBitBtn(AForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AForm.Components[i] is TUniSpeedButton then
       TUniBitBtn(AForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AForm.Components[i] is TUniMenuButton then
       TUniMenuButton(AForm.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AForm.Components[i] is TuniImage then
       TuniImage(AForm.Components[i]).ConvertToBootstrap;
  end;
end;

class procedure TMap.ApplyBootstrap(AFrame: TUniFrame);
begin
  for var I := 0 to AFrame.ComponentCount -1 do
  begin

    if AFrame.Components[i] is TUniLabel then
      TUniLabel(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniPanel then
      TUniPanel(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniMemo then
       TUniMemo(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniDbGrid then
       TUniDbGrid(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniEdit then
       TUniEdit(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniCheckbox then
       TUniCheckbox(AFrame.Components[i]).ConvertToBootstrap
    else
    if AFrame.Components[i] is TUniButton then
       TUniButton(AFrame.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AFrame.Components[i] is TUniBitBtn then
       TUniBitBtn(AFrame.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AFrame.Components[i] is TUniSpeedButton then
       TUniBitBtn(AFrame.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AFrame.Components[i] is TUniMenuButton then
       TUniMenuButton(AFrame.Components[i]).ConvertToBootstrap(TpButtom.tpSuccess)
    else
    if AFrame.Components[i] is TuniImage then
       TuniImage(AFrame.Components[i]).ConvertToBootstrap;
  end;
end;

end.
