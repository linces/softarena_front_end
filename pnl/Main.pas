unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniPanel, uniToolBar,
  uniButton, uniBitBtn, uniImageList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxGDIPlusClasses, uniImage,
  DCPsha512, DCPmd5,
  DCPcrypt2, DCPblockciphers, DCPrijndael, DCPrc4, DCPsha1, uniGUIFrame,
  unFrameMenu,
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
    procedure frmFrameMenu1UniButton13Click(Sender: TObject);
    procedure frmFrameMenu1UniButton3Click(Sender: TObject);
  private
    procedure CriaForm(Form: TUniForm; Titulo: string; itag: integer);

  public
    uniTab: TUniTabSheet;
    idtabc : Integer;
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

procedure TMainForm.CriaForm(Form: TUniForm; Titulo: string; itag: integer);
var
  nd, i: integer;
  TS: TUniTabSheet;
  Nome : string;
begin
   nd := itag;
   Nome := Form.Name;
   TS := uniTab;
  for i := 0 to Pred(MainForm.ComponentCount) do begin

    if MainForm.Components[i].ClassType = TUniTabSheet then begin
      if TUniTabSheet(MainForm.Components[i]).Name = Form.Name then begin
        Break
      end
      else begin
          uniTab := TUniTabSheet.Create(ControlConteudo);
    uniTab.PageControl := ControlConteudo;
    uniTab.Caption := Titulo;
    uniTab.Closable := true;
    uniTab.PageControl.ActivePage.Name := Form.Name;
//    uniTab.PageControl.ActivePage.Tag := itag;

      uniTab.PageControl.ActivePage := uniTab;
          Form.Parent := uniTab;
    Form.Show();
      end;

    end;
  end;



 end;


//procedure TMainForm.CriaForm2(Sender: TObject);
//var
//  Nd : TUniButton;
//  Ts : TUniTabSheet;
//  FrC : TUniFrameClass;
//  Fr : TUniFrame;
//  FClassName, Path: string;
//begin
//  Nd := Tob.;
//  if Nd.Count = 0 then
//  begin
//    Ts := Nd.Data;
//    if not Assigned(Ts) then
//    begin
//      Ts := TUniTabSheet.Create(Self);
//      Ts.PageControl := UniPageControl1;
//
//      Ts.Closable := True;
//      Ts.OnClose := TabSheetClose;
//      Ts.Tag := NativeInt(Nd);
//      Ts.Caption := Nd.Text;
//      Ts.ImageIndex := Nd.ImageIndex;
//
//      FClassName := 'TUni' + FileNames.Values[Nd.Text];
//
//      FrC := TUniFrameClass(FindClass(FClassName));
//
//      Fr := FrC.Create(Self);
//      Fr.Align := alClient;
//      Fr.Parent := Ts;
//
//      Nd.Data := Ts;
//    end;
//    UniPageControl1.ActivePage := Ts;
//  end;
//end;

procedure TMainForm.frmFrameMenu1UniButton13Click(Sender: TObject);
begin
 CriaForm(frmCadastroInicial, 'Cadastro Inicial', 1);
end;

procedure TMainForm.frmFrameMenu1UniButton3Click(Sender: TObject);
begin
 CriaForm(frmTipoPessoas, 'Tipo Pessoas', 2);
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
