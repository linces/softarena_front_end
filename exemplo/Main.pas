unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniPanel, uniToolBar,
  uniButton, uniBitBtn, uniImageList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxGDIPlusClasses, uniImage,
  uniGUIFrame, unFrameMenu,
  System.ImageList, Vcl.ImgList, uniEdit, uniGroupBox, uniPageControl;

type
  TMainForm = class(TUniForm)
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    frmFrameMenu1: TfrmFrameMenu;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    ControlConteudo: TUniPageControl;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    Painel: TUniTabSheet;
    UniNativeImageList2: TUniNativeImageList;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure UniImage1Click(Sender: TObject);
  private

  public
    uniTab: TUniTabSheet;
    idtabc: integer;
    procedure CriaForm(Form: TUniForm; Titulo: string; nomeaba: string);
    procedure CriaForm3(Form: TUniForm; Titulo, nomeaba: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, unCadastroInicial, unTipoPessoas;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.CriaForm(Form: TUniForm; Titulo: string; nomeaba: string);
var
  i: integer;
begin
  for i := 0 to Pred(MainForm.ComponentCount) do
  begin
    if MainForm.Components[i].ClassType = TUniTabSheet then
    begin
      if MainForm.Components[i].Name = nomeaba then
      begin
        uniTab.PageControl.ActivePage := uniTab;
        exit
      end
      else
      begin
        try
          uniTab := TUniTabSheet.Create(ControlConteudo);
          uniTab.PageControl := ControlConteudo;
          uniTab.Caption := Titulo;
          uniTab.Closable := False;
          uniTab.PageControl.ActivePage.Name := nomeaba;
          uniTab.PageControl.ActivePage := uniTab;
          Form.Parent := uniTab.PageControl.ActivePage;
          Form.Show();
        except
          on E: Exception do
            uniTab.PageControl.ActivePage := uniTab;
        end;
      end;
    end;
  end;

end;

procedure TMainForm.CriaForm3(Form: TUniForm; Titulo: string; nomeaba: string);
begin
  With TUniTabSheet.Create(ControlConteudo) Do
  begin
    ShowMessage('Passou da criacao');
    uniTab.PageControl := ControlConteudo;
    uniTab.Caption := Titulo;
    uniTab.Closable := False;
    uniTab.PageControl.ActivePage.Name := nomeaba;
    uniTab.PageControl.ActivePage := uniTab;
    Form.Parent := uniTab.PageControl.ActivePage;
    Form.ShowModal();
  end;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniImage1Click(Sender: TObject);
begin
  Close;
end;

initialization

RegisterAppFormClass(TMainForm);

end.
