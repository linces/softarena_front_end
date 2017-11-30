unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniPanel, uniToolBar,
  uniButton, uniBitBtn, uniImageList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxGDIPlusClasses, uniImage, DCPsha512, DCPmd5,
  DCPcrypt2, DCPblockciphers, DCPrijndael, DCPrc4, DCPsha1, uniGUIFrame, unFrameMenu,
  System.ImageList, Vcl.ImgList, uniEdit, uniGroupBox;

type
  TMainForm = class(TUniForm)
    imgListPrincipal: TUniImageList;
    frmFrameMenu1: TfrmFrameMenu;
    UniImageListAdapter1: TUniImageListAdapter;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniPanel4: TUniPanel;
    UniImage1: TUniImage;
    UniPanel5: TUniPanel;
    UniLabel3: TUniLabel;
    UniLabel6: TUniLabel;
    UniImage2: TUniImage;
    UniPanel6: TUniPanel;
    UniLabel7: TUniLabel;
    UniPanel7: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniLabel4: TUniLabel;
    UniBitBtn2: TUniBitBtn;
    UniLabel5: TUniLabel;
    UniBitBtn3: TUniBitBtn;
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
