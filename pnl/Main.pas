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
  System.ImageList, Vcl.ImgList, uniEdit, uniGroupBox, uniPageControl, UniSFBitBtn;

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
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    Painel: TUniTabSheet;
    UniSFBitBtn1: TUniSFBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure UniSFBitBtn1Click(Sender: TObject);
  private
    procedure CriaForm(Form: TUniForm; Titulo: string; itag: integer);
    function ChecaTabSheet(Nome: String; itag: integer): boolean;
  public
    uniTab: TUniTabSheet;
    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
    procedure TrocaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

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
  i: integer;
begin

  if not Assigned(uniTab) then begin
    ChecaTabSheet(Titulo, itag);
    uniTab := TUniTabSheet.Create(ControlConteudo);
    uniTab.PageControl := ControlConteudo;
    uniTab.Caption := Titulo;
    ControlConteudo.ActivePage := uniTab;
    ControlConteudo.ActivePage.Tag := itag;
    Form.Parent := uniTab;
    Form.Show();
  end;

end;

function TMainForm.ChecaTabSheet(Nome : String; itag: integer):boolean;
var
 i : integer;
begin
  result := false;
 for i := 0 to Pred(Self.ComponentCount) do begin
    if Self.Components[I].ClassType = TUniTabSheet then begin
      if TUniTabSheet(Self.Components[i]).PageControl.Caption = 'Nome' then begin
        ShowMessage(Nome);
        result := true;
      end;
    end;
  end;

end;


procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin

      ControlConteudo.Visible := True;

      {Verificando se a tela j� est� aberto e redireciona a ela}
      for I := 0 to ControlConteudo.PageCount - 1 do
        with ControlConteudo do
          if Pages[I].Caption = descFormFrame  then
            begin
              ControlConteudo.ActivePageIndex := I;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := ControlConteudo;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;
      TabSheet.Align        := alClient;
      TabSheet.Layout       := 'fit';

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      ControlConteudo.ActivePage := TabSheet;
end;

procedure TMainForm.TrocaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin


//    {Verificando se a tela j� est� aberto e redireciona a ela}
      for I := 0 to ControlConteudo.PageCount - 1 do
        with ControlConteudo do
          if Pages[I].Caption = descFormFrame  then
            begin
           ControlConteudo.ActivePage.Close;

      end;


      ControlConteudo.ActivePage := TabSheet;

      ControlConteudo.ActivePage.CleanupInstance;
      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := ControlConteudo;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;
      TabSheet.Align        := alClient;
      TabSheet.Layout       := 'fit';

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      ControlConteudo.ActivePage := TabSheet;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.UniSFBitBtn1Click(Sender: TObject);
begin
 close;
end;

initialization

RegisterAppFormClass(TMainForm);

end.
