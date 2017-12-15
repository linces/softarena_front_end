unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniPanel,
  uniPageControl, uniGUIBaseClasses, uniGUIFrame, uniLabel;

type
  TMainForm = class(TUniForm)
    pagePrincipal: TUniPageControl;
    tabHome: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniButton1: TUniButton;
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private

    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);

  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UframeTeste, uframeTeste2,
  uframeTeste3, uframeTeste4;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin

      pagePrincipal.Visible := True;

      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      pagePrincipal.ActivePage := TabSheet;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
    NovaAba(TFrame(TframeTeste4),'TESTE4',True);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
     NovaAba(TFrame(TframeTeste),'TESTE1',True);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
     NovaAba(TFrame(TframeTeste2),'TESTE2',True);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
     NovaAba(TFrame(TframeTeste3),'TESTE3',True);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
