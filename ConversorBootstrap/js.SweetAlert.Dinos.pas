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
                   '       title: "Acão executada!",                        '+
                   '       text: "Seus dados foram persistido.",      '+
                   '       icon: "success"                           '+
                   '     });                                         '+
                   '   } else {document.cookie = "acao=cancelado; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";} '+
                   ' });                                             '
                );
end;

end.
