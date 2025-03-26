{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Project1;

uses
  uniGUIISAPI,
  Forms,
  Main in 'Main.pas' {MainForm: TUniForm},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Bootstrap.Converter.Buttons.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Buttons.Dinos.pas',
  Bootstrap.Converter.Checkbox.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Checkbox.Dinos.pas',
  Bootstrap.Converter.Edits.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Edits.Dinos.pas',
  Bootstrap.Converter.Grids.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Grids.Dinos.pas',
  Bootstrap.Converter.Labels.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Labels.Dinos.pas',
  Bootstrap.Converter.Map.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Map.Dinos.pas',
  Bootstrap.Converter.Memos.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Memos.Dinos.pas',
  Bootstrap.Converter.Panels.Dinos in '..\ConversorBootstrap\Bootstrap.Converter.Panels.Dinos.pas',
  Bridge.Dinos in '..\ConversorBootstrap\Bridge.Dinos.pas',
  js.SweetAlert.Dinos in '..\ConversorBootstrap\js.SweetAlert.Dinos.pas',
  uConst.Buttons in '..\ConversorBootstrap\uConst.Buttons.pas',
  uConst.Form.Controls in '..\ConversorBootstrap\uConst.Form.Controls.pas',
  uConst.Grids in '..\ConversorBootstrap\uConst.Grids.pas';

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
