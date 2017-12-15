unit UframeTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniEdit, uniButton;

type
  TframeTeste = class(TUniFrame)
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniButton1: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
