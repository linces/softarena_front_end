unit model.factoryForm;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,  uniGUIFrame,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniPageControl, uniGUIApplication;

type
  TTipoFormulario=(tpForm01, tpForm02, tpForm03);
  TFormularioFactory = class
  private

  public
     class function GetFormClass(tipo:TTipoFormulario):TUniFrameClass;
end;

implementation

uses UfrmTelaTeste01, UfrmTelaTeste02, unFrameCadastroinicial, unTipoPessoas,  unCadastroPadrao;

{ TFormularioFactory }

class function TFormularioFactory.GetFormClass(
  tipo: TTipoFormulario): TUniFrameClass;
begin
    case tipo of
      tpForm01:   Result:=TuniFrameCadinicial;
      tpForm02:   Result:=TfrmTelaTeste02;
    end;
end;

end.
