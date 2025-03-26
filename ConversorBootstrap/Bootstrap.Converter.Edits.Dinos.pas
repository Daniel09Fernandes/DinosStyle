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

{ File     : Bootstrap.Converter.Edits.Dinos.pas }
{ Developer: Daniel Fernandes Rodrigures }
{ Email    : dinosdev.daniel@gmail.com }
{ this unit is a part of the Open Source. }
{ licensed under a MIT - see LICENSE.md}

{ ******************************************************* }
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
  if self.Tag = NotApplyBootstrap then
    Exit;

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
