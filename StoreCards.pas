unit StoreCards;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Wwdotdot, Wwdbcomb, wwdblook, Mask, wwdbedit,
  StdCtrls, wwcheckbox, wwdbdatetimepicker, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, ComCtrls, Db, IBCustomDataSet, Wwdbspin, fr_Class;

type
 TObjProcedure = procedure of object;

type
  TfrmStoreCards = class(TfrmLike)
    PageControl1: TPageControl;
    tsStoreCardsList: TTabSheet;
    Panel1: TPanel;
    dbgStoreCardsList: TwwDBGrid;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbReFilter: TSpeedButton;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbArticul: TwwCheckBox;
    cbPeriod: TwwCheckBox;
    cbNumber: TwwCheckBox;
    edArticul: TwwDBLookupCombo;
    edNumber: TwwDBEdit;
    pnlText: TPanel;
    lblFilter: TLabel;
    sbUp: TSpeedButton;
    sbDown: TSpeedButton;
    Panel4: TPanel;
    sbCancelStoreCardsList: TSpeedButton;
    sbApplyStoreCardsList: TSpeedButton;
    sbDeleteStoreCardsList: TSpeedButton;
    sbLastStoreCardsList: TSpeedButton;
    sbNextStoreCardsList: TSpeedButton;
    sbPriorStoreCardsList: TSpeedButton;
    sbFirstStoreCardsList: TSpeedButton;
    sbFilterStoreCardsList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshStoreCardsList: TSpeedButton;
    sbPrintStoreCardsList: TSpeedButton;
    tsStoreCard: TTabSheet;
    Panel10: TPanel;
    sbCancelStoreCard: TSpeedButton;
    sbApplyStoreCard: TSpeedButton;
    sbDeleteStoreCard: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbPrintStoreCard: TSpeedButton;
    SpeedButton35: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Label12: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    dbeTovar: TwwDBEdit;
    dbeNDS: TwwDBEdit;
    dbeItogo: TwwDBEdit;
    pnlCommentsStoreCard: TPanel;
    Label11: TLabel;
    wwDBEdit12: TwwDBEdit;
    Panel6: TPanel;
    dbgStoreCardBody: TwwDBGrid;
    cbPrice: TwwCheckBox;
    edPrice: TwwDBEdit;
    cbTotal: TwwCheckBox;
    cbbTotalSign: TwwDBComboBox;
    edTotal: TwwDBEdit;
    cbAmount: TwwCheckBox;
    cbbAmountSign: TwwDBComboBox;
    edAmount: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit4: TwwDBEdit;
    ibdsFilterArticuls: TIBDataSet;
    ibdsFilterArticulsID: TIntegerField;
    ibdsFilterArticulsNAME: TIBStringField;
    ibdsMainStoreCardsList: TIBDataSet;
    dsMainStoreCardsList: TDataSource;
    ibdsMainStoreCardsListID: TIntegerField;
    ibdsMainStoreCardsListNUMBER: TIntegerField;
    ibdsMainStoreCardsListSHORT_NAME: TIBStringField;
    ibdsMainStoreCardsListSTART_DATE: TDateField;
    ibdsMainStoreCardsListARTICUL_NAME: TIBStringField;
    ibdsMainStoreCardsListPRICE: TFloatField;
    ibdsMainStoreCardsListTOTAL: TFloatField;
    ibdsMainStoreCardsListCOMMENTS: TIBStringField;
    ibdsMainStoreCard: TIBDataSet;
    dsMainStoreCard: TDataSource;
    ibdsMainStoreCardBody: TIBDataSet;
    dsMainStoreCardBody: TDataSource;
    ibdsMainStoreCardID: TIntegerField;
    ibdsMainStoreCardNUMBER: TIntegerField;
    ibdsMainStoreCardSHORT_NAME: TIBStringField;
    ibdsMainStoreCardSTART_DATE: TDateField;
    ibdsMainStoreCardARTICUL_NAME: TIBStringField;
    ibdsMainStoreCardPRICE: TFloatField;
    ibdsMainStoreCardTOTAL: TFloatField;
    ibdsMainStoreCardUNITS: TIBStringField;
    ibdsMainStoreCardCOMMENTS: TIBStringField;
    ibdsMainStoreCardBodyNUMBER_STR: TIBStringField;
    ibdsMainStoreCardBodyPRIMARY_DATE: TDateField;
    ibdsMainStoreCardBodyNAME: TIBStringField;
    ibdsMainStoreCardBodyCONTRACTOR_TYPE: TIntegerField;
    ibdsMainStoreCardBodyCONTRACTOR_NAME: TIBStringField;
    ibdsMainStoreCardBodyAMOUNT: TFloatField;
    ibdsMainStoreCardBodyIN_OUT: TIntegerField;
    ibdsMainStoreCardNUMBER_STR: TStringField;
    pnlNumber: TPanel;
    SpeedButton22: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit11: TwwDBEdit;
    ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME: TStringField;
    wwDBEdit1: TwwDBEdit;
    ibdsMainStoreCardBodyID: TIntegerField;
    edAccount: TwwDBLookupCombo;
    ibdsFilterAccounts: TIBDataSet;
    ibdsFilterAccountsSHORT_NAME: TIBStringField;
    ibdsFilterAccountsNAME: TIBStringField;
    ibdsFilterAccountsID: TIntegerField;
    cbAccount: TwwCheckBox;
    ibdsMainStoreCardARTICUL_ID: TIntegerField;
    ibdsMainStoreCardsListARTICUL_ID: TIntegerField;
    ibdsMainStoreCardsListFULL_TOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure ibdsMainStoreCardsListAfterScroll(DataSet: TDataSet);
    procedure sbDeleteStoreCardsListClick(Sender: TObject);
    procedure sbApplyStoreCardsListClick(Sender: TObject);
    procedure sbCancelStoreCardsListClick(Sender: TObject);
    procedure ibdsMainStoreCardCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox2DropDown(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure sbFirstStoreCardsListClick(Sender: TObject);
    procedure sbPriorStoreCardsListClick(Sender: TObject);
    procedure sbNextStoreCardsListClick(Sender: TObject);
    procedure sbLastStoreCardsListClick(Sender: TObject);
    procedure dsMainStoreCardsListStateChange(Sender: TObject);
    procedure dbgStoreCardsListCalcTitleImage(Sender: TObject;
      Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgStoreCardsListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgStoreCardsListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeleteStoreCardClick(Sender: TObject);
    procedure sbCancelStoreCardClick(Sender: TObject);
    procedure sbApplyStoreCardClick(Sender: TObject);
    procedure tsStoreCardShow(Sender: TObject);
    procedure ibdsMainStoreCardBodyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainStoreCardBodyCalcFields(DataSet: TDataSet);
    procedure sbFilterStoreCardsListClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure cbArticulClick(Sender: TObject);
    procedure edArticulChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRefreshStoreCardsListClick(Sender: TObject);
    procedure ibdsFilterArticulsAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterArticulsBeforeClose(DataSet: TDataSet);
    procedure dbgStoreCardsListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainStoreCardsListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainStoreCardAfterDelete(DataSet: TDataSet);
    procedure sbCloseClick(Sender: TObject);
    procedure ibdsMainStoreCardBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainStoreCardBodyNAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbgStoreCardBodyCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure deDateStartChange(Sender: TObject);
    procedure cbbTotalSignChange(Sender: TObject);
    procedure cbbAmountSignChange(Sender: TObject);
    procedure dbgStoreCardBodyDblClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbPrintStoreCardClick(Sender: TObject);
    procedure sbPrintStoreCardsListClick(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainStoreCardsList: String;
    procedure GenerateSelectMainStoreCardsList;
    procedure GenerateSelectMainStoreCardBody;
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
  end;

var
  frmStoreCards: TfrmStoreCards;

implementation

uses DM, Misk, Main, Nakl;

{$R *.DFM}

var
  OrderByMainStoreCardsList  : String = ' 1 asc';
  WhereSqlMainStoreCardsList : String = '';

  OrderByMainStoreCardBody  : String = ' 1 asc';

  Account, ArticulName : String;
  DateStart, DateStop : TDate;

  MainStoreCardsListBookMark, MainStoreCardsListPriorBookMark : String;

procedure TfrmStoreCards.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmStoreCards<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   try
    For k := 0 to Pred(frmStoreCards.ComponentCount) do
     Begin
      If (Components[k].Name='sbApply'+Suf) or
         (Components[k].Name='sbCancel'+Suf) then
       (Components[k] as TControl).Enabled := Enabled;
      If (Components[k] is TTabSheet) and
         (Components[k].Name<>'ts'+Suf) then
       (Components[k] as TTabSheet).TabVisible := NOT Enabled
     End;
   except
   end;
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmStoreCards.GetWhereMainStoreCardsList: String;
begin
 Result := '';
 If (sbFilterStoreCardsList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (SC.START_DATE>='#39+deDateStart.Text+#39') and (SC.START_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbArticul.Checked) then
    Begin
     Result := Result+'and (SC.ARTICUL_ID='+ibdsFilterArticulsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Включающие товар: '+edArticul.Text+'; '
    End;
   If (cbAccount.Checked) then
    Begin
     Result := Result+'and (AC.ID='+ibdsFilterAccountsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Бух.счет: '+edAccount.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (SC.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер документа: '+edNumber.Text+'; '
    End;
   If (cbPrice.Checked) then
    Begin
     Result := Result+'and (SC.PRICE='+edPrice.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Цена: '+edPrice.Text+'; '
    End;
   If (cbTotal.Checked) then
    Begin
     Result := Result+'and (SC.TOTAL'+cbbTotalSign.Text+edTotal.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Остаток'+cbbTotalSign.Text+edTotal.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     Result := Result+'and (SC.TOTAL*SC.PRICE'+cbbAmountSign.Text+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Остаток на сумму'+cbbTotalSign.Text+edAmount.Text+'; '
    End;
   lblFilter.Caption := Trim(Copy(lblFilter.Caption,1,Pred(Length(lblFilter.Caption))));
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmStoreCards.GenerateSelectMainStoreCardsList;
 var k : Integer;
begin
 WhereSqlMainStoreCardsList := GetWhereMainStoreCardsList;
 For k := Pred(ibdsMainStoreCardsList.SelectSQL.Count) downto 6 do
  ibdsMainStoreCardsList.SelectSQL.Delete(k);
 If (WhereSqlMainStoreCardsList<>'') then
  ibdsMainStoreCardsList.SelectSQL.Add(WhereSqlMainStoreCardsList);
 ibdsMainStoreCardsList.SelectSQL.Add('group by SC.ID, SC.NUMBER, AC.SHORT_NAME, SC.START_DATE, A.NAME,');
 ibdsMainStoreCardsList.SelectSQL.Add('SC.ARTICUL_ID, SC.PRICE, SC.TOTAL, SC.COMMENTS');
 If (OrderByMainStoreCardsList<>'') then
  ibdsMainStoreCardsList.SelectSQL.Add('order by'+OrderByMainStoreCardsList)
end;

procedure TfrmStoreCards.GenerateSelectMainStoreCardBody;
begin
 If (OrderByMainStoreCardBody<>'') then
  ibdsMainStoreCardBody.SelectSQL[29] := 'order by'+OrderByMainStoreCardBody
 else
  ibdsMainStoreCardBody.SelectSQL[29] := ''
end;

procedure TfrmStoreCards.FormCreate(Sender: TObject);
begin
 FName := 'Карточки складского учета';
 inherited;
 trMain.StartTransaction;
{ ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
 ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
 ibsAux.ExecQuery;
 sbFilterPrimaryTovarList.Down :=(ibsAux.RecordCount>0);
 While NOT (ibsAux.Eof) do
  Begin
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractor.Name) then
    Begin
     cbContractor.Checked := True;
     Contractor := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbType.Name) then
    Begin
     cbType.Checked := True;
     IType := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
    Begin
     cbPeriod.Checked := True;
     DateStart := ibsAux.FieldByName('FILTER_VALUE').AsDate
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
    Begin
     cbPeriod.Checked := True;
     DateStop := ibsAux.FieldByName('FILTER_VALUE').AsDate
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbArticuls.Name) then
    Begin
     cbArticuls.Checked := True;
     ArticulName := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPrefix.Name) then
    Begin
     cbPrefix.Checked := True;
     edPrefix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbNumber.Name) then
    Begin
     cbNumber.Checked := True;
     edNumber.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbSuffix.Name) then
    Begin
     cbSuffix.Checked := True;
     edSuffix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   ibsAux.Next
  End;
 ibsAux.Close;}
 ibdsFilterArticuls.Active := sbFilterStoreCardsList.Down;
 ibdsFilterAccounts.Active := sbFilterStoreCardsList.Down;
 GenerateSelectMainStoreCardsList;
 GenerateSelectMainStoreCardsList;
 If (StoreCard_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainStoreCardsList.Open
  End
 else
  Begin
   ibdsMainStoreCard.ParamByName('ID').AsInteger := StoreCard_ID;
   PageControl1.ActivePageIndex := 1;
   StoreCard_ID := 0
  End
end;

procedure TfrmStoreCards.SpeedButton35Click(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlCommentsStoreCard.Show
 else
  pnlCommentsStoreCard.Hide
end;

procedure TfrmStoreCards.ibdsMainStoreCardsListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'StoreCardsList')
end;

procedure TfrmStoreCards.sbDeleteStoreCardsListClick(Sender: TObject);
begin
 ibdsMainStoreCardsList.Delete
end;

procedure TfrmStoreCards.sbApplyStoreCardsListClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
//  try
   ibdsMainStoreCardsList.ApplyUpdates;
   trMain.CommitRetaining;
   StteChange('StoreCardsList', False)
{  except
   trMain.RollbackRetaining;
   MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)}
  End;
end;

procedure TfrmStoreCards.sbCancelStoreCardsListClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMainStoreCardsList.CancelUpdates;
   StteChange('StoreCardsList', False)
  End 
end;

procedure TfrmStoreCards.ibdsMainStoreCardCalcFields(DataSet: TDataSet);
begin
 ibdsMainStoreCardNUMBER_STR.Value := ibdsMainStoreCardNUMBER.AsString+'/'+
                                      ibdsMainStoreCardSHORT_NAME.AsString
end;

procedure TfrmStoreCards.wwDBComboBox2DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent.Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left+2;
 pnlNumber.Show
end;

procedure TfrmStoreCards.SpeedButton22Click(Sender: TObject);
begin
 pnlNumber.Hide
end;

procedure TfrmStoreCards.sbFirstStoreCardsListClick(Sender: TObject);
begin
 ibdsMainStoreCardsList.First
end;

procedure TfrmStoreCards.sbPriorStoreCardsListClick(Sender: TObject);
begin
 ibdsMainStoreCardsList.Prior
end;

procedure TfrmStoreCards.sbNextStoreCardsListClick(Sender: TObject);
begin
 ibdsMainStoreCardsList.Next
end;

procedure TfrmStoreCards.sbLastStoreCardsListClick(Sender: TObject);
begin
 ibdsMainStoreCardsList.Last
end;

procedure TfrmStoreCards.dsMainStoreCardsListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmStoreCards.dbgStoreCardsListCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainStoreCardsList);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainStoreCardBody)
 end
end;

procedure TfrmStoreCards.dbgStoreCardsListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmStoreCards.dbgStoreCardsListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainStoreCardsList, (GetKeyState(VK_CONTROL)<0),
                              sbApplyStoreCardsList, sbCancelStoreCardsList, GenerateSelectMainStoreCardsList);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainStoreCardBody, (GetKeyState(VK_CONTROL)<0),
                              nil, nil, GenerateSelectMainStoreCardBody);
 end
end;

procedure TfrmStoreCards.PageControl1Change(Sender: TObject);
 var Active : Boolean;
begin
 Active := (PageControl1.ActivePage<>tsStoreCardsList);
 ibdsMainStoreCard.Active := Active;
 ibdsMainStoreCardBody.Active := Active;
 If Not(Active) and Not(ibdsMainStoreCardsList.Active) then
  Begin
   ibdsMainStoreCardsList.Active := True;
   try
    ibdsMainStoreCardsList.Bookmark := MainStoreCardsListBookMark
   except
   end;
   If (ibdsMainStoreCardsList.Eof) then
    try
     ibdsMainStoreCardsList.Bookmark := MainStoreCardsListPriorBookMark
    except
    end
  End
end;

procedure TfrmStoreCards.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsStoreCardsList) and (StoreCard_ID=0) then
  ibdsMainStoreCard.ParamByName('ID').AsInteger := ibdsMainStoreCardsListID.Value
end;

procedure TfrmStoreCards.sbDeleteStoreCardClick(Sender: TObject);
begin
 ibdsMainStoreCard.Delete
end;

procedure TfrmStoreCards.sbCancelStoreCardClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
  Exit;
 ibdsMainStoreCard.CancelUpdates;
 StteChange('StoreCard', False)
end;

procedure TfrmStoreCards.sbApplyStoreCardClick(Sender: TObject);
 var BookMark : String;
begin
 If (MessageDlg('Cохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
  Exit;
 If (ibdsMainStoreCard.State in [dsEdit,dsInsert]) then
  ibdsMainStoreCard.Post;
 BookMark := ibdsMainStoreCardBody.Bookmark;
// try
  ibdsMainStoreCard.ApplyUpdates;
  trMain.CommitRetaining;
  ibdsMainStoreCardBody.Close;
  ibdsMainStoreCardBody.Open;
  If (ibdsMainStoreCardsList.Active) then
   Begin
    MainStoreCardsListBookMark := ibdsMainStoreCardsList.Bookmark;
    ibdsMainStoreCardsList.Prior;
    MainStoreCardsListPriorBookMark := ibdsMainStoreCardsList.Bookmark;
    ibdsMainStoreCardsList.Close
   End;
  StteChange('StoreCard', False)
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end}
end;

procedure TfrmStoreCards.tsStoreCardShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmStoreCards.ibdsMainStoreCardBodyBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsMainStoreCardBody.ParamByName('ID').AsInteger := ibdsMainStoreCard.ParamByName('ID').AsInteger
end;

procedure TfrmStoreCards.ibdsMainStoreCardBodyCalcFields(
  DataSet: TDataSet);
begin
 Case ibdsMainStoreCardBodyCONTRACTOR_TYPE.AsInteger of
  0 : ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value := 'Поставщик: ';
  1 : ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value := 'Подотчетник: ';
  2 : ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value := 'Водитель: ';
  3 : ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value := 'А/М: '
 end;
 ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value := ibdsMainStoreCardBodyFULL_CONTRACTOR_NAME.Value+
                                                    ibdsMainStoreCardBodyCONTRACTOR_NAME.AsString
end;

procedure TfrmStoreCards.sbFilterStoreCardsListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterArticuls.Active := sbFilterStoreCardsList.Down;
 ibdsFilterAccounts.Active := sbFilterStoreCardsList.Down;
 pnlFilter.Visible := sbFilterStoreCardsList.Down;
 pnlText.Visible := sbFilterStoreCardsList.Down;
 BookMark := ibdsMainStoreCardsList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainStoreCardsList.Close;
 GenerateSelectMainStoreCardsList;
 try
  ibdsMainStoreCardsList.Open;
 except
  MessageDlg('Неверные установки фильтра!',mtError,[mbOK],0)
 end;
 try
  ibdsMainStoreCardsList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault
end;

procedure TfrmStoreCards.sbReFilterClick(Sender: TObject);
begin
 sbFilterStoreCardsList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmStoreCards.sbDownClick(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 sbDown.Visible := pnlFilter.Visible;
 sbUp.Visible := Not pnlFilter.Visible
end;

procedure TfrmStoreCards.cbArticulClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmStoreCards.edArticulChange(Sender: TObject);
begin
 sbReFilter.Visible := ((frmStoreCards.FindComponent('cb'+Copy((Sender as TComponent).Name,3,Length((Sender as TComponent).Name)-2)) as TwwCheckBox).Checked)
end;

procedure TfrmStoreCards.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{ try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterPrimaryTovarIncomeList.Down) then
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('insert into FILTERS (PERSON_ID, FORM_NAME, FILTER_NAME, CHEKED, FILTER_VALUE)');
    ibsAux.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FILTER_NAME, 1, :FILTER_VALUE)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('PERSON_ID').Value := PersonID;
    ibsAux.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
    If (cbContractor.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbContractor.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edContractor.Text;
      ibsAux.ExecQuery
     End;
    If (cbType.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbType.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edType.Text;
      ibsAux.ExecQuery
     End;
    If (cbPeriod.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Start';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStart.Text;
      ibsAux.ExecQuery;
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Stop';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStop.Text;
      ibsAux.ExecQuery
     End;
    If (cbArticuls.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbArticuls.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edArticul.Text;
      ibsAux.ExecQuery
     End;
    If (cbPrefix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPrefix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edPrefix.Text;
      ibsAux.ExecQuery
     End;
    If (cbNumber.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbNumber.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edNumber.Text;
      ibsAux.ExecQuery
     End;
    If (cbSuffix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbSuffix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edSuffix.Text;
      ibsAux.ExecQuery
     End;
   End
  except
  end;}
 inherited
end;

procedure TfrmStoreCards.sbRefreshStoreCardsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainStoreCardsList.Bookmark;
 ibdsMainStoreCardsList.Close;
 ibdsMainStoreCardsList.Open;
 try
  ibdsMainStoreCardsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmStoreCards.ibdsFilterArticulsAfterOpen(DataSet: TDataSet);
begin
 edArticul.Text := ArticulName;
 edAccount.Text := Account;
 If (DataSet=ibdsFilterArticuls) and (ArticulName<>'') then
  ibdsFilterArticuls.Locate('NAME',ArticulName,[]);
 If (DataSet=ibdsFilterAccounts) and (Account<>'') then
  ibdsFilterAccounts.Locate('SHORT_NAME',Account,[]);
 deDateStart.Date := DateStart;
 deDateStop.Date := DateStop;
 sbReFilter.Visible := False
end;

procedure TfrmStoreCards.ibdsFilterArticulsBeforeClose(DataSet: TDataSet);
begin
 ArticulName := edArticul.Text;
 Account := edAccount.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date
end;

procedure TfrmStoreCards.dbgStoreCardsListCalcTitleAttributes(
  Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainStoreCardsList);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainStoreCardBody)
 end
end;

procedure TfrmStoreCards.ibdsMainStoreCardsListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('StoreCardsList', True)
end;

procedure TfrmStoreCards.ibdsMainStoreCardAfterDelete(DataSet: TDataSet);
begin
 StteChange('StoreCard', True)
end;

procedure TfrmStoreCards.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmStoreCards.ibdsMainStoreCardBodyAfterOpen(DataSet: TDataSet);
begin
 sbDeleteStoreCard.Enabled := (ibdsMainStoreCardBody.RecordCount=0)
end;

procedure TfrmStoreCards.ibdsMainStoreCardBodyNAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 Text := ibdsMainStoreCardBodyNAME.AsString;
 AnsiLCase(Text,2,Length(Text)-1);
end;

procedure TfrmStoreCards.dbgStoreCardBodyCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (ibdsMainStoreCardBodyIN_OUT.AsInteger=2) then
  AFont.Style := [fsBold];
end;

procedure TfrmStoreCards.deDateStartChange(Sender: TObject);
begin
 sbReFilter.Visible := cbPeriod.Checked
end;

procedure TfrmStoreCards.cbbTotalSignChange(Sender: TObject);
begin
 sbReFilter.Visible := cbTotal.Checked
end;

procedure TfrmStoreCards.cbbAmountSignChange(Sender: TObject);
begin
 sbReFilter.Visible := cbAmount.Checked
end;

procedure TfrmStoreCards.dbgStoreCardBodyDblClick(Sender: TObject);
begin
 Case ibdsMainStoreCardBodyIN_OUT.AsInteger of
  1 : ;
  2 : Begin
       If (frmMain.FindComponent('frmNaklIn')=nil) then
        Begin
         TempIn_Out := 2;
         Nakl_ID := ibdsMainStoreCardBodyID.AsInteger;
         frmNaklIn := TfrmNakl.Create(frmMain);
         frmNaklIn.Name := 'frmNaklIn'
        End
       else
        Begin
         If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
          frmNaklIn.PageControl1.ActivePageIndex := 1;
         frmNaklIn.ibdsMainPrimaryTovar.Close;
         frmNaklIn.ibdsMainPrimaryTovar.ParamByName('ID').AsInteger := ibdsMainStoreCardBodyID.AsInteger;
         frmNaklIn.ibdsMainPrimaryTovar.Open
        End;
       frmNaklIn.Show;
       frmNaklIn.ibdsMainPrimaryTovarBody.Locate('STORE_CARD_ID',ibdsMainStoreCardID.AsInteger,[])
      End
 End     
end;

procedure TfrmStoreCards.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmStoreCards.sbPrintStoreCardClick(Sender: TObject);
begin
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainStoreCardBody);
end;

procedure TfrmStoreCards.sbPrintStoreCardsListClick(Sender: TObject);
begin
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, nil);
end;

end.
