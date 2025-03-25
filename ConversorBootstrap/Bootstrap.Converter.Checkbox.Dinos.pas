unit Bootstrap.Converter.Checkbox.Dinos;

interface

uses
  UniCheckbox, System.Classes, uConst.Form.Controls;

Type
  TDinosConverterCheckbox = class helper for TUniCustomCheckBox
  private const
    Checkbox = '<div class=''form-check''>   ' +
      '  <input class=''form-check-input'' type=''checkbox'' value='' id=''flexCheckDefault''> '
      + '  <label class=''form-check-label'' for=''flexCheckDefault''>' +
      '     Default checkbox ' + '  </label>' + '</div>';
  public
    procedure ConvertToBootstrap;
  end;

implementation

uses
  uniGUITypes, strutils, SysUtils, {$IF FMX.Types.FireMonkeyVersion > 0} FMX.Graphics {$ELSE} Vcl.Graphics {$ENDIF}, Bridge.Dinos;

{ TDinosConverterCheckbox }

procedure TDinosConverterCheckbox.ConvertToBootstrap;
begin
  Self.ClientEvents.UniEvents.add( TBridge.BridgeElement(FormCheckInput, FormCheckInput));
//  UniSession.AddJS('document.getElementById("' + self.jsID + '").innerHTML = "'
//    + Checkbox + '"');

end;

end.
