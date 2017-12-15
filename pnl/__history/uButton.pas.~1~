unit uButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImageList, uniButton, uniSFCore, UniSFButton, uniSpeedButton, UniSFSpeedButton, uniBitBtn, UniSFBitBtn, uniGroupBox, uniPanel, uniToolBar, Vcl.Menus, uniMainMenu, uniMenuButton, UniSFMenuButton, uniLabel, uniMultiItem, uniComboBox;

type
  TFButton = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniBitBtn1: TUniSFBitBtn;
    UniBitBtn2: TUniSFBitBtn;
    UniBitBtn3: TUniSFBitBtn;
    UniBitBtn4: TUniSFBitBtn;
    UniBitBtn5: TUniSFBitBtn;
    UniBitBtn6: TUniSFBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    UniBitBtn7: TUniSFBitBtn;
    UniBitBtn8: TUniSFBitBtn;
    UniBitBtn9: TUniSFBitBtn;
    UniGroupBox3: TUniGroupBox;
    UniBitBtn10: TUniSFBitBtn;
    UniBitBtn11: TUniSFBitBtn;
    UniBitBtn12: TUniSFBitBtn;
    UniGroupBox4: TUniGroupBox;
    UniSpeedButton1: TUniSFSpeedButton;
    UniSpeedButton2: TUniSFSpeedButton;
    UniSpeedButton3: TUniSFSpeedButton;
    UniSpeedButton4: TUniSFSpeedButton;
    UniGroupBox5: TUniGroupBox;
    UniSpeedButton5: TUniSFSpeedButton;
    UniSpeedButton6: TUniSFSpeedButton;
    UniSpeedButton7: TUniSFSpeedButton;
    UniSpeedButton8: TUniSFSpeedButton;
    UniGroupBox6: TUniGroupBox;
    UniSpeedButton9: TUniSFSpeedButton;
    UniSpeedButton10: TUniSFSpeedButton;
    UniSpeedButton11: TUniSFSpeedButton;
    UniSpeedButton12: TUniSFSpeedButton;
    UniButton1: TUniSFButton;
    UniButton2: TUniSFButton;
    UniButton3: TUniSFButton;
    UniButton4: TUniSFButton;
    UniGroupBox7: TUniGroupBox;
    UniToolBar1: TUniToolBar;
    UniSFBitBtn1: TUniSFBitBtn;
    UniSFBitBtn2: TUniSFBitBtn;
    UniPopupMenu1: TUniPopupMenu;
    One1: TUniMenuItem;
    hree1: TUniMenuItem;
    wo1: TUniMenuItem;
    UniGroupBox8: TUniGroupBox;
    UniSFSpeedButton1: TUniSFMenuButton;
    UniSFSpeedButton2: TUniSFMenuButton;
    UniSFSpeedButton3: TUniSFMenuButton;
    UniSFSpeedButton4: TUniSFMenuButton;
    UniPopupMenu2: TUniPopupMenu;
    UniMenuItem1: TUniMenuItem;
    UniMenuItem2: TUniMenuItem;
    UniMenuItem3: TUniMenuItem;
    UniPopupMenu3: TUniPopupMenu;
    UniMenuItem4: TUniMenuItem;
    UniMenuItem5: TUniMenuItem;
    UniMenuItem6: TUniMenuItem;
    UniPopupMenu4: TUniPopupMenu;
    UniMenuItem7: TUniMenuItem;
    UniMenuItem8: TUniMenuItem;
    UniMenuItem9: TUniMenuItem;
    UniSFBitBtn3: TUniSFBitBtn;
    UniSFBitBtn4: TUniSFBitBtn;
    UniSFBitBtn5: TUniSFBitBtn;
    UniGroupBox9: TUniGroupBox;
    UniSFButton1: TUniSFButton;
    UniSFButton2: TUniSFButton;
    UniSFButton3: TUniSFButton;
    UniSFButton4: TUniSFButton;
    cbStyle: TUniComboBox;
    lbl1: TUniLabel;
    procedure cbStyleChange(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  mainModule;

procedure TFButton.cbStyleChange(Sender: TObject);
begin
  UniButton1.ButtonStyles := TButtonStyles(cbStyle.ItemIndex);
  UniButton2.ButtonStyles := TButtonStyles(cbStyle.ItemIndex);
  UniButton3.ButtonStyles := TButtonStyles(cbStyle.ItemIndex);
  UniButton4.ButtonStyles := TButtonStyles(cbStyle.ItemIndex);
  if (TButtonStyles(cbStyle.ItemIndex) = bs_default) or (TButtonStyles(cbStyle.ItemIndex) = bs_transparent) or (TButtonStyles(cbStyle.ItemIndex) = bs_light) then
  begin
    UniButton1.IconFontColor := fc_inverse;
    UniButton2.IconFontColor := fc_inverse;
    UniButton3.IconFontColor := fc_inverse;
    UniButton4.IconFontColor := fc_inverse;
  end
  else
  begin
    UniButton1.IconFontColor := fc_white;
    UniButton2.IconFontColor := fc_white;
    UniButton3.IconFontColor := fc_white;
    UniButton4.IconFontColor := fc_white;
  end;

end;

procedure TFButton.UniButton4Click(Sender: TObject);
begin
  if integer(TuniSFButton(Sender).IconFont) = 785 then
    TuniSFButton(Sender).IconFont := TFontAwesome(1)
  else
    TuniSFButton(Sender).IconFont := TFontAwesome(Integer(TuniSFButton(Sender).IconFont) + 1);
end;

initialization
  RegisterClasses([TFButton]);

end.


