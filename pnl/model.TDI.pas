unit model.TDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,  uniGUIFrame,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,  uniPanel,
  uniPageControl, uniGUIApplication, model.factoryForm;

type
TTDI = class (TUniControl)
   private
      FPageControl:TUniPageControl;
      procedure CriarFormulario(Classe: TUniFrameClass);
      procedure CriarPageControl;
      function NovaAba: TUniTabSheet;
      function Pagina(aClasseForm: TUniFrameClass): TUniTabSheet;
      procedure CheckTab(Sender: TObject; var AllowClose: Boolean);
   public
      constructor Create(AOwner: TUniControl); reintroduce;
      destructor Destroy; override;
      procedure MostrarFormulario(tipoForm:TTipoFormulario; Multi: Boolean);
	   function Formulario(Pagina: Integer): TUniFrame;
     property PageControl: TUniPageControl read FPageControl;
end;

implementation

{ TTDI }

const
  INDEX_FORM = 00;

procedure TTDI.CheckTab(Sender: TObject; var AllowClose: Boolean);
begin
   if FPageControl.PageCount = 1 then
   begin
      FPageControl.Visible := False;
   end;
end;

constructor TTDI.Create(AOwner: TUniControl);
begin
   inherited Create(AOwner);
   AOwner.BringToFront;
   Parent       := AOwner;
   ParentWindow := AOwner.Handle;
   CriarPageControl;
end;

procedure TTDI.CriarFormulario(Classe: TUniFrameClass);
var
  Form: TUniFrame;
  PanelTabSheetNew: TUniPanel;
  newTabSheet:TUniTabSheet;
begin
    if not FPageControl.Visible then
       FPageControl.Visible:=true;
    Application.ProcessMessages;
    Form := TUniFrameClass(Classe).Create(NovaAba);
    with Form do
    begin
      Align       := alClient;
      BorderStyle := TUniBorderStyle.ubsNone;
      Parent      := FPageControl.ActivePage;
      FPageControl.ActivePage.Caption := Hint;
      Show;
    end;
    FPageControl.ActivePageIndex := PageControl.PageCount - 1;
end;

procedure TTDI.CriarPageControl;
begin
    FPageControl := TUniPageControl.Create(Self.Parent);
    with PageControl do
    begin
      Align        := alClient;
      Parent       := Self.Parent;
      ParentWindow := Self.Parent.Handle;
      BringToFront;
      Visible      := false;
    end;
end;

destructor TTDI.Destroy;
begin
  inherited;
end;

function TTDI.Formulario(Pagina: Integer): TUniFrame;
begin
    Result := nil;
  with FPageControl.Pages[Pagina] do
    if ComponentCount > 0 then
      if Components[INDEX_FORM] is TUniFrame then
        Result := TUniFrame(Components[INDEX_FORM]);
end;

procedure TTDI.MostrarFormulario(tipoForm: TTipoFormulario; Multi: Boolean);
var
    Classe: TUniFrameClass;
    Aba:TUniTabSheet;
begin
  if not Multi then
  begin
    classe:=TFormularioFactory.GetFormClass(TipoForm);
    Aba:=Pagina(Classe);
    if Aba <> nil then
      Exit;
  end;
  CriarFormulario(Classe);
end;

function TTDI.NovaAba: TUniTabSheet;
var
  Tab: TUniTabSheet;
begin
  Tab := TUniTabSheet.Create(PageControl);
  Tab.PageControl := PageControl;
  Tab.TabVisible  := True;
  Tab.Caption     := 'Carregando...';
  Tab.OnClose     := CheckTab;
  tab.Closable    :=true;
  PageControl.ActivePageIndex := Tab.PageIndex;
  Result := Tab;
end;

function TTDI.Pagina(aClasseForm: TUniFrameClass): TUniTabSheet;
var
  i: Integer;
begin
  Result := nil;
  i := 0;
  if FPageControl.ActivePage <> nil then
    if Formulario(FPageControl.ActivePageIndex) is aClasseForm then
      i := FPageControl.ActivePageIndex;
  for i := i to FPageControl.PageCount - 1 do
    if Formulario(i) is aClasseForm then
    begin
      Result := FPageControl.Pages[i];
      if not (FPageControl.ActivePage = Result) then
      begin
        Break;
      end;
    end;
end;

end.
