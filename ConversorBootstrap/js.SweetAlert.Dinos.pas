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

{ File     : js.SweetAlert.Dinos.pas }
{ Developer: Daniel Fernandes Rodrigures }
{ Email    : dinosdev.daniel@gmail.com }
{ this unit is a part of the Open Source. }
{ licensed under a MIT - see LICENSE.md}

{ ******************************************************* }
unit js.SweetAlert.Dinos;

interface
uses uniGUIClasses, uniGUIApplication, uniGUIForm, SysUtils, uniTimer, System.Classes;

type
  TCalbackAlert = TProc;

  TSweetAlert = class
  private
    class var FCallback: TProc;
    class var FOk: string;
    class var FCallbackTmr: TUniTimer;
    class procedure OnCallback(Sender: TObject);
  public
    class procedure jsSweetFireInfo(ATitulo, AText: string); static;
    class procedure jsSweetFireWarning(ATitulo, AText: string); static;
    class procedure jsSweetFireSuccess(ATitulo, AText: string);
    class procedure jsSweetFireQuestion(ATitulo, AText, AOkText: String; AOwner: TComponent; ACallback: TCalbackAlert; ACallbackExpired: integer = 4000);
    class procedure jsSweetFireError(ATitulo, AText: string);
  end;

implementation

{ TSweetAlert }

class procedure TSweetAlert.jsSweetFireSuccess(ATitulo, AText: string);
const SwalFire = '     Swal.fire({                   '+
                   '       title: "[tlt]", '+
                   '       text: "[txt]",      '+
                   '       icon: "success" '+
                   '     });';
begin
  UniSession.AddJS(SwalFire
    .Replace('[txt]',AText)
    .Replace('[tlt]',ATitulo));
end;

class procedure TSweetAlert.jsSweetFireInfo(ATitulo, AText: string);
const SwalFire = '     Swal.fire({                   '+
                   '       title: "[tlt]", '+
                   '       text: "[txt]",      '+
                   '       icon: "info" '+
                   '     });';
begin
  UniSession.AddJS(SwalFire
    .Replace('[txt]',AText)
    .Replace('[tlt]',ATitulo));
end;

class procedure TSweetAlert.jsSweetFireWarning(ATitulo, AText: string);
const SwalFire = '     Swal.fire({                   '+
                   '       title: "[tlt]", '+
                   '       text: "[txt]",      '+
                   '       icon: "warning", '+
                   '       confirmButtonColor: "#3085d6"'+
                   '     });';
begin
  UniSession.AddJS(SwalFire
    .Replace('[txt]',AText)
    .Replace('[tlt]',ATitulo));
end;


class procedure TSweetAlert.jsSweetFireError(ATitulo, AText: string);
const SwalFire = '     Swal.fire({                   '+
                   '       title: "[tlt]", '+
                   '       text: "[txt]",      '+
                   '       icon: "error" '+
                   '     });';
begin
 UniSession.AddJS(SwalFire
    .Replace('[txt]',AText)
    .Replace('[tlt]',ATitulo));
end;

class procedure TSweetAlert.jsSweetFireQuestion(ATitulo, AText, AOkText: String; AOwner: TComponent; ACallback: TCalbackAlert; ACallbackExpired: integer = 4000);
begin
  FOk := AOkText;
  FCallback := ACallback;
  UniApplication.Cookies.SetCookie('SweetAlertAction', '', Now-1);
  UniSession.AddJS(
                   ' Swal.fire({  '+
                   '  title: "'+ATitulo+'",   '+
                   '   text: "'+AText+'",     '+
                   '   icon: "question",                               '+
                   '   showCancelButton: true,                        '+
                   '   confirmButtonColor: "#3085d6",                 '+
                   '   cancelButtonColor: "#d33",                     '+
                   '   confirmButtonText: "Sim"           '+
                   ' }).then((result) => {                            '+
                   '   if (result.isConfirmed) {                     '+
                   '     document.cookie = "SweetAlertAction=exec; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/"; '+
                   '   } else {document.cookie = "SweetAlertAction=cancelado; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";} '+
                   ' });                                             '
                );

  if Assigned(FCallbackTmr) then
    FreeAndNil(FCallbackTmr);

  FCallbackTmr := TUniTimer.Create(AOwner);
  FCallbackTmr.RunOnce := True;
  FCallbackTmr.Name := 'MyRuntimeTimer';
  FCallbackTmr.Interval := ACallbackExpired;
  FCallbackTmr.Enabled := True;
  FCallbackTmr.Sequenced := True;
  FCallbackTmr.OnTimer := OnCallback;
end;

class procedure TSweetAlert.OnCallback(Sender: TObject);
begin
   var isOk := UniApplication.Cookies.Values['SweetAlertAction'] = 'exec';
   UniApplication.Cookies.SetCookie('SweetAlertAction', '', Now-1);

   if IsOk then
   begin
     FCallback;
     jsSweetFireSuccess('Operação concluida!',FOK);
   end
   else
     jsSweetFireError('Operação cancelada!','');
end;


end.
