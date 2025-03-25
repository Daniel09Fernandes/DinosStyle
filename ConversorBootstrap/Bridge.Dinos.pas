unit Bridge.Dinos;

interface
type
  TBridge = Class
    private
     const initComponenet = 'beforeInit=function beforeInit(sender, config)'+
        '{'+
         '    config.baseCls="[base]";  '+
         '    config.cls="[cls]";'+
        '}';
    public
      class function BridgeElement(ABaseClass, AClass: string):string;
  End;

implementation
uses
  StrUtils, SysUtils;

{ TBridge }

class function  TBridge.BridgeElement(ABaseClass, AClass: string): string;
begin
  result := initComponenet.Replace('[base]', ABaseClass)
                          .Replace('[cls]', AClass);
end;

end.
