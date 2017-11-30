unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniPanel, uniToolBar,
  uniButton, uniBitBtn, uniImageList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxGDIPlusClasses, uniImage, DCPsha512, DCPmd5,
  DCPcrypt2, DCPblockciphers, DCPrijndael, DCPrc4, DCPsha1, uniGUIFrame, unFrameMenu,
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
    UniPageControl1: TUniPageControl;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniPanel4: TUniPanel;
    UniLabel6: TUniLabel;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure UniImage1Click(Sender: TObject);
  private

  public

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
