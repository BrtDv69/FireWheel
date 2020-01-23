unit Accumulators;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Wwdotdot, Wwdbcomb, wwdbdatetimepicker,
  wwdblook, StdCtrls, Mask, wwdbedit, wwcheckbox, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, Db, IBCustomDataSet, wwclearbuttongroup, wwradiogroup;

type
  TfrmAccumulators = class(TfrmLike)
    Panel1: TPanel;
    dbgAccumulatorsList: TwwDBGrid;
    pnlFilter: TPanel;
    Label42: TLabel;
    cbType: TwwCheckBox;
    edType: TwwDBLookupCombo;
    cbPeriod: TwwCheckBox;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbMileage: TwwCheckBox;
    cbbMileageSign: TwwDBComboBox;
    edMileage: TwwDBEdit;
    pnlText: TPanel;
    lblFilter: TLabel;
    sbUp: TSpeedButton;
    sbDown: TSpeedButton;
    Panel4: TPanel;
    sbLastAccumulatorsList: TSpeedButton;
    sbNextAccumulatorsList: TSpeedButton;
    sbPriorAccumulatorsList: TSpeedButton;
    sbFirstAccumulatorsList: TSpeedButton;
    sbFilterAccumulatorsList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshAccumulatorsList: TSpeedButton;
    sbPrintAccumulatorsList: TSpeedButton;
    ibdsMainAccumulatorsList: TIBDataSet;
    dsMainAccumulatorsList: TDataSource;
    ibdsMainAccumulatorsListNAME: TIBStringField;
    ibdsMainAccumulatorsListSERIAL_NUMBER: TIBStringField;
    ibdsMainAccumulatorsListMILEAGE: TIntegerField;
    ibdsMainAccumulatorsListLOCATION_ID: TIntegerField;
    ibdsMainAccumulatorsListLOCATION: TIBStringField;
    cbLocation: TwwCheckBox;
    cbPersent: TwwCheckBox;
    cbbPersentSign: TwwDBComboBox;
    edPersent: TwwDBEdit;
    edLocation: TwwDBComboBox;
    ibdsMainAccumulatorsListPERSENT_TIME: TIntegerField;
    ibdsFilterArticuls: TIBDataSet;
    ibdsFilterArticulsID: TIntegerField;
    ibdsFilterArticulsNAME: TIBStringField;
    pnlSearch: TPanel;
    edSearch: TwwDBEdit;
    Label1: TLabel;
    sbSearch: TSpeedButton;
    SpeedButton22: TSpeedButton;
    ibdsMainAccumulatorsListPERSENT_MILLEAGE: TIntegerField;
    ibdsMainAccumulatorsListTIME_GONE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure sbRefreshAccumulatorsListClick(Sender: TObject);
    procedure ibdsMainAccumulatorsListBeforeOpen(DataSet: TDataSet);
    procedure sbFilterAccumulatorsListClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure ibdsMainAccumulatorsListAfterOpen(DataSet: TDataSet);
    procedure dbgAccumulatorsListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dbgAccumulatorsListCalcTitleImage(Sender: TObject;
      Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgAccumulatorsListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure sbCloseClick(Sender: TObject);
    procedure sbFirstAccumulatorsListClick(Sender: TObject);
    procedure sbPriorAccumulatorsListClick(Sender: TObject);
    procedure sbNextAccumulatorsListClick(Sender: TObject);
    procedure sbLastAccumulatorsListClick(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure pnlSearchMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbSearchClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgAccumulatorsListCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
    function GetWhereMainAccumulatorsList: String;
    procedure GenerateSelectMainAccumulatorsList;
  public
    { Public declarations }
  end;

var
  frmAccumulators: TfrmAccumulators;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByMainAccumulatorsList  : String = ' 8 asc, 1 asc, 6 asc, 7 asc';
  WhereSqlMainAccumulatorsList : String = '';

procedure TfrmAccumulators.FormCreate(Sender: TObject);
begin
 FName := 'Аккумуляторы';
 inherited;
 trMain.StartTransaction
end;

function TfrmAccumulators.GetWhereMainAccumulatorsList: String;
begin
 lblFilter.Caption := '';
 If (cbLocation.Checked) then
  Begin
   Result := 'and (AC.LOCATION_TYPE='+IntToStr(edLocation.ItemIndex)+') ';
   lblFilter.Caption := 'Место расположения: '+edLocation.Text+'; '
  End;
 If (cbType.Checked) then
  Begin
   Result := Result+'and (A.ID='+ibdsFilterArticulsID.AsString+') ';
   lblFilter.Caption := lblFilter.Caption+'Модель: '+ibdsFilterArticulsNAME.AsString+'; '
  End;
 If (cbPeriod.Checked) then
  Begin
   Result := Result+'and (AC.START_DATE!<'#39+DateToStr(deDateStart.Date)+#39') and (AC.START_DATE!>'#39+DateToStr(deDateStop.Date)+#39')';
   lblFilter.Caption := lblFilter.Caption+'Дата установки с '+deDateStart.Text+' по '+deDateStop.Text+'; '
  End;
 If (cbMileage.Checked) then
  Begin
   Result := Result+'and (AC.MILEAGE'+cbbMileageSign.Text+edMileage.Text+') ';
   lblFilter.Caption := lblFilter.Caption+'Пробег'+cbbMileageSign.Text+edMileage.Text+'; '
  End;
 If (cbPersent.Checked) then
  Begin
   Result := Result+'and (cast(100*(current_date-AC.START_DATE)/A.TIME_MILEAGE_ALLOWED/30.41666666667 as INTEGER)'+cbbPersentSign.Text+edPersent.Text+') ';
   lblFilter.Caption := lblFilter.Caption+'Пробег'+cbbPersentSign.Text+edPersent.Text+'; '
  End;
 lblFilter.Caption := Trim(Copy(lblFilter.Caption,1,Pred(Length(lblFilter.Caption))));
 pnlText.Visible := (sbFirstAccumulatorsList.Down);
 lblFilter.AutoSize := True
end;

procedure TfrmAccumulators.GenerateSelectMainAccumulatorsList;
begin
 WhereSqlMainAccumulatorsList := GetWhereMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[7] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[16] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[25] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[34] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[44] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[53] := WhereSqlMainAccumulatorsList;
 ibdsMainAccumulatorsList.SelectSQL[54] := 'order by '+OrderByMainAccumulatorsList
end;

procedure TfrmAccumulators.sbRefreshAccumulatorsListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsList.Close;
 ibdsMainAccumulatorsList.Open
end;

procedure TfrmAccumulators.ibdsMainAccumulatorsListBeforeOpen(
  DataSet: TDataSet);
begin
 GenerateSelectMainAccumulatorsList
end;

procedure TfrmAccumulators.sbFilterAccumulatorsListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterArticuls.Active := sbFilterAccumulatorsList.Down;
 pnlFilter.Visible := sbFilterAccumulatorsList.Down;
 pnlText.Visible := sbFilterAccumulatorsList.Down;
 BookMark := ibdsMainAccumulatorsList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainAccumulatorsList.Close;
 try
  ibdsMainAccumulatorsList.Open;
 except
  MessageDlg('Неверные установки фильтра!',mtError,[mbOK],0)
 end;
 try
  ibdsMainAccumulatorsList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault
end;

procedure TfrmAccumulators.sbDownClick(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 sbDown.Visible := pnlFilter.Visible;
 sbUp.Visible := Not pnlFilter.Visible
end;

procedure TfrmAccumulators.ibdsMainAccumulatorsListAfterOpen(
  DataSet: TDataSet);
begin
 sbPrintAccumulatorsList.Enabled := True
end;

procedure TfrmAccumulators.dbgAccumulatorsListCalcTitleAttributes(
  Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 If (AFieldName='PERSENT') then
  wwDBGridCalcTitleAttributes(Sender, AFieldName, 'PERSENT_TIME', AFont, ABrush, ATitleAlignment, OrderByMainAccumulatorsList)
 else
  wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainAccumulatorsList)
end;

procedure TfrmAccumulators.dbgAccumulatorsListCalcTitleImage(
  Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainAccumulatorsList)
end;

procedure TfrmAccumulators.dbgAccumulatorsListTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
 If (AFieldName='PERSENT') then
 wwDBGridTitleButtonClick(Sender, 'PERSENT_TIME', OrderByMainAccumulatorsList, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectMainAccumulatorsList)
  else
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainAccumulatorsList, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectMainAccumulatorsList)
end;

procedure TfrmAccumulators.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmAccumulators.sbFirstAccumulatorsListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsList.First
end;

procedure TfrmAccumulators.sbPriorAccumulatorsListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsList.Prior
end;

procedure TfrmAccumulators.sbNextAccumulatorsListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsList.Next
end;

procedure TfrmAccumulators.sbLastAccumulatorsListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsList.Last
end;

procedure TfrmAccumulators.SpeedButton22Click(Sender: TObject);
begin
 pnlSearch.Hide
end;

procedure TfrmAccumulators.pnlSearchMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 (Sender as TPanel).Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmAccumulators.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#6) and (ibdsMainAccumulatorsList.Active) then
  Begin
   pnlSearch.Left := (frmAccumulators.Width-pnlSearch.Width) div 2;
   pnlSearch.Visible := True;
   edSearch.SetFocus
  End
end;

procedure TfrmAccumulators.sbSearchClick(Sender: TObject);
begin
 If (ibdsMainAccumulatorsList.Locate(dbgAccumulatorsList.GetActiveField.FieldName,edSearch.Text,[loCaseInsensitive,loPartialKey])) then
  pnlSearch.Hide
 else
  MessageDlg('Искомое не найдено!',mtInformation,[mbOK],0)
end;

procedure TfrmAccumulators.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F3) and (edSearch.Text<>'') and (ibdsMainAccumulatorsList.Active) then
  If Not (ibdsMainAccumulatorsList.LocateNext(dbgAccumulatorsList.GetActiveField.FieldName,edSearch.Text,[loCaseInsensitive,loPartialKey])) then
   MessageDlg('Поиск окончен!',mtInformation,[mbOK],0)
end;

procedure TfrmAccumulators.dbgAccumulatorsListCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
 If NOT (Highlight) then
  If (ibdsMainAccumulatorsListPERSENT_TIME.AsInteger>=100) or
     (ibdsMainAccumulatorsListPERSENT_MILLEAGE.AsInteger>=100) then
    ABrush.Color := ColorUse100
   else
    ABrush.Color := clWindow
end;

end.
