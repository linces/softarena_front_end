unit unFrameMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel;

type
  TfrmFrameMenu = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniButton15: TUniButton;
    UniPanel5: TUniPanel;
    UniButton10: TUniButton;
    UniPanel6: TUniPanel;
    UniButton9: TUniButton;
    UniButton12: TUniButton;
    UniButton16: TUniButton;
    UniButton17: TUniButton;
    UniButton18: TUniButton;
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Main, unCadPadrao, unListaPadrao;

{$R *.dfm}


procedure TfrmFrameMenu.UniButton14Click(Sender: TObject);
begin
    MainForm.NovaAba(TFrame(TfrmListaPadrao),'Listagem Padrão',True);
end;

procedure TfrmFrameMenu.UniButton3Click(Sender: TObject);
begin
  MainForm.NovaAba(TFrame(TfrmCadPadrao),'Cadastro Padrão',True);
end;

end.
