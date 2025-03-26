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

{ File     : Bootstrap.Converter.Buttons.Dinos.pas }
{ Developer: Daniel Fernandes Rodrigures }
{ Email    : dinosdev.daniel@gmail.com }
{ this unit is a part of the Open Source. }
{ licensed under a MIT - see LICENSE.md}

{ ******************************************************* }
unit Bootstrap.Converter.Buttons.Dinos;

interface

uses
   uniButton, System.Classes, uConst.Buttons;

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
