unit unCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniPanel, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniDBNavigator, uniDBEdit, uniBasicGrid, uniDBGrid, uniEdit, uniLabel, uniBitBtn, UniSFBitBtn, uniGUIFrame,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox;

type
  TfrmCadPadrao = class(TUniFrame)
    dsCadastro: TDataSource;
    FDQuery1: TFDQuery;
    pnlCadastro: TUniPanel;
    UniPanel3: TUniPanel;
    btnIncluir: TUniSFBitBtn;
    btnSalvar: TUniSFBitBtn;
    btnCancelar: TUniSFBitBtn;
    btnExcluir: TUniSFBitBtn;
    btnFiltrar: TUniSFBitBtn;
    btnConsultar: TUniSFBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    cKey, cSQL : string;
  public
    { Public declarations }
  end;

implementation

uses
  Main, MainModule, ServerModule, uniGUIApplication;

{$R *.dfm}



procedure TfrmCadPadrao.btnSalvarClick(Sender: TObject);
begin

 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then begin
  try
     TFDQuery(dsCadastro.DataSet).Post;
     TFDQuery(dsCadastro.DataSet).Transaction.CommitRetaining;
   except
   on E : Exception do begin
     TFDQuery(dsCadastro.DataSet).Transaction.RollbackRetaining;
     ShowMessage('Ocorreu um erro ao tentar gravar os dados: '+E.Message);
   end;
  end;
 end;
end;

procedure TfrmCadPadrao.btnCancelarClick(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
    TFDQuery(dsCadastro.DataSet).Cancel;
end;

procedure TfrmCadPadrao.btnConsultarClick(Sender: TObject);
var
  I: integer;
begin
  dsCadastro.Tag := 1;  // Serve para ativar o modo de sele��o

  if not TFDQuery(dsCadastro.DataSet).Transaction.Active then
    TFDQuery(dsCadastro.DataSet).Transaction.StartTransaction;

  if dsCadastro.DataSet.State = dsInactive then begin
   for I := 0 to Pred(dsCadastro.DataSet.FieldCount) do begin
     if dsCadastro.DataSet.Fields[I].ProviderFlags = [pfInKey, pfInUpdate, pfInWhere] then begin
       cKey := dsCadastro.DataSet.Fields[I].FieldName;
       Break;
     end;
   end;
   dsCadastro.DataSet.Close;
   TFDQuery(dsCadastro.DataSet).SQL.Clear;
   TFDQuery(dsCadastro.DataSet).SQL.Text := cSQL + ' where '+ cKey + ' is null ';
   dsCadastro.DataSet.Open();
  end;
    dsCadastro.DataSet.Insert;

  // Encontrar o edit com a chave prim�ria para limpar o mesmo
  for I := 0 to Pred(Self.ComponentCount) do begin
    if Self.Components[I].ClassType = TUniDBEdit then begin
      if TUniDBEdit(Self.Components[I]).Field.ProviderFlags = [pfInKey, pfInUpdate, pfInWhere] then begin
        TUniDBEdit(Self.Components[I]).Text := '';
        Break;
      end;
    end;
  end;

end;

procedure TfrmCadPadrao.btnExcluirClick(Sender: TObject);
var
  I: integer;
begin

 if (dsCadastro.DataSet.State = dsBrowse) and (not dsCadastro.DataSet.IsEmpty)then begin
   MessageDlg('Confirma exclus�o do registro?',mtConfirmation, mbYesNo,
   procedure(Sender: TComponent; Res: Integer)
   begin
     case Res of
     mrYes:
     begin
       try
         TFDQuery(dsCadastro.DataSet).Delete;
         TFDQuery(dsCadastro.DataSet).Transaction.CommitRetaining;
       except
        on E : Exception do
        begin
          TFDQuery(dsCadastro.DataSet).Transaction.RollbackRetaining;
          ShowMessage('Sistema detectou uma inconsist�ncia ao excluir registro: '+E.Message);
        end;
       end;
     end;
    end;
   end);
 end;


end;

procedure TfrmCadPadrao.btnFiltrarClick(Sender: TObject);
var
 _Where, vls_IgualComeca : string;
 _x, i : integer;
begin
  _Where := '';
  for _x := 0 to Pred(Self.ComponentCount) do begin

    if Self.Components[_x].ClassType = TUniDBEdit then begin
      vls_IgualComeca := ' = ';

      if (TUniDBEdit(Self.Components[_x]).Field <> nil )
       and (Trim(TUniDBEdit(Self.Components[_x]).Field.Text) = '-1')
       and (dsCadastro.Tag = 1) then
       TUniDBEdit(Self.Components[_x]).Field.Text := '';
      if (TUniDBEdit(Self.Components[_x]).Field <> nil)
         and (Trim(TUniDBEdit(Self.Components[_x]).Text) <> EmptyStr)
         and (not(TUniDBEdit(Self.Components[_x]).Field.Calculated))
         and (TUniDBEdit(Self.Components[_x]).Field.FieldKind <> fkInternalCalc)
         and (TUniDBEdit(Self.Components[_x]).DataSource.Name = 'dsCadastro') then
        begin
         if TUniDBEdit(Self.Components[_x]).Field.DataType in [ftInteger, ftLargeint, ftFloat, ftCurrency, ftBCD, ftDate, ftBytes] then begin
           vls_IgualComeca := ' = ';
           if _Where = '' then
            _Where := _Where + ' Where ('+ TUniDBEdit(Self.Components[_x]).Field.FieldName + vls_IgualComeca+'('+ QuotedStr(Trim(StringReplace(TUniDBEdit(Self.Components[_x]).Text,',','.',[rfReplaceAll,rfIgnoreCase])))+')) '
           else
            _Where := _Where + ' and ('+ TUniDBEdit(Self.Components[_x]).Field.FieldName + vls_IgualComeca+'('+ QuotedStr(Trim(StringReplace(TUniDBEdit(Self.Components[_x]).Text,',','.',[rfReplaceAll,rfIgnoreCase])))+')) ';
           end
           else begin
           vls_IgualComeca := ' starting ';

           if _Where = '' then
            _Where := _Where + ' Where ('+ TUniDBEdit(Self.Components[_x]).Field.FieldName + vls_IgualComeca+'('+ QuotedStr(Trim(TUniDBEdit(Self.Components[_x]).Text))+')) '
           else
            _Where := _Where + ' and ('+ TUniDBEdit(Self.Components[_x]).Field.FieldName + vls_IgualComeca+'('+ QuotedStr(Trim(TUniDBEdit(Self.Components[_x]).Text))+')) ';
           end;
        end;
      end;
   end;

  dsCadastro.DataSet.Close;
  TFDQuery(dsCadastro.DataSet).SQL.Text := cSQL + _Where;
  dsCadastro.DataSet.Open;
  dsCadastro.Tag := 0;

end;

procedure TfrmCadPadrao.btnIncluirClick(Sender: TObject);
var
  I: integer;
begin

  if not TFDQuery(dsCadastro.DataSet).Transaction.Active then
     TFDQuery(dsCadastro.DataSet).Transaction.StartTransaction;

   if  dsCadastro.DataSet.State = dsInactive then begin
    for I := 0 to Pred(dsCadastro.DataSet.FieldCount) do begin
      if dsCadastro.DataSet.Fields[I].ProviderFlags = [pfInKey, pfInUpdate, pfInWhere] then begin
        cKey := dsCadastro.DataSet.Fields[I].FieldName;
        Break;
      end;
    end;

    TFDQuery(dsCadastro.DataSet).Close;
    TFDQuery(dsCadastro.DataSet).SQL.Text := cSQL + ' where '+cKey+' is null';
    TFDQuery(dsCadastro.DataSet).Open();
   end;

    TFDQuery(dsCadastro.DataSet).Insert;
end;

procedure TfrmCadPadrao.dsCadastroStateChange(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInactive, dsBrowse]) then
     btnIncluir.Enabled := true
  else if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
     btnIncluir.Enabled := false;

   btnCancelar.Enabled := not(btnIncluir.Enabled);
   btnCancelar.Visible := not(btnIncluir.Enabled);


   if(dsCadastro.Tag = 1) then begin // Em modo edi�ao QBE
    btnSalvar.Enabled := btnIncluir.Enabled;
    btnSalvar.Visible := btnIncluir.Enabled;
    btnConsultar.Enabled := btnIncluir.Enabled;
    btnConsultar.Visible := btnIncluir.Enabled;
    btnFiltrar.Enabled := not btnConsultar.Enabled;
    btnFiltrar.Visible := not btnConsultar.Enabled;
    btnExcluir.Enabled := not btnCancelar.Visible;
    btnExcluir.Visible := btnExcluir.Enabled;
   end
   else
   begin
     btnConsultar.Enabled := btnIncluir.Enabled;
     btnFiltrar.Enabled := not btnConsultar.Visible;
     btnFiltrar.Visible := btnFiltrar.Enabled;

     btnSalvar.Visible := btnSalvar.Enabled;

     btnExcluir.Enabled := btnIncluir.Enabled;
     btnExcluir.Visible := btnExcluir.Enabled;
   end;
end;

procedure TfrmCadPadrao.UniFrameCreate(Sender: TObject);
begin
 Self.Height := MainForm.ControlConteudo.ActivePage.Height;
 Self.Width := MainForm.ControlConteudo.ActivePage.Width;
 cSQL := TFDQuery(dsCadastro.DataSet).SQL.Text;

end;

end.
