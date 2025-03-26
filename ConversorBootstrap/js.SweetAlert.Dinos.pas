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
uses uniGUIClasses, uniGUIApplication;

type
  TSweetAlert = class
    private
    public
    class procedure jsSweetFireBasic(AText: string);
    class procedure jsSweetFireWaring(ATitulo, AText:String);
  end;

implementation

{ TSweetAlert }

class procedure TSweetAlert.jsSweetFireBasic(AText: string);
begin
  UniSession.AddJS('Swal.fire("'+AText+'");');
end;

class procedure TSweetAlert.jsSweetFireWaring(ATitulo, AText: String);
begin
 UniSession.AddJS(
                   ' Swal.fire({  '+
                   '  title: "'+ATitulo+'",   '+
                   '   text: "'+AText+'",     '+
                   '   icon: "warning",                               '+
                   '   showCancelButton: true,                        '+
                   '   confirmButtonColor: "#3085d6",                 '+
                   '   cancelButtonColor: "#d33",                     '+
                   '   confirmButtonText: "Sim"           '+
                   ' }).then((result) => {                            '+
                   '   if (result.isConfirmed) {                     '+
                   '     document.cookie = "acao=salvo; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/"; '+
                   '     Swal.fire({                                 '+
                   '       title: "Ac�o executada!",                        '+
                   '       text: "Seus dados foram persistido.",      '+
                   '       icon: "success"                           '+
                   '     });                                         '+
                   '   } else {document.cookie = "acao=cancelado; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";} '+
                   ' });                                             '
                );
end;

end.
