unit AccumulatorsTyres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, StdCtrls, Mask, Buttons, Grids, ExtCtrls, Db,
  IBCustomDataSet, fr_Class, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxDBData,
  cxControls, cxGridCustomView, cxGrid, cxGraphics, cxGridDBDataDefinitions, Variants;

type
  TfrmAccumulatorsTyres = class(TfrmLike)
    Panel1: TPanel;
    Panel4: TPanel;
    sbLastAccumulatorsTyresList: TSpeedButton;
    sbNextAccumulatorsTyresList: TSpeedButton;
    sbPriorAccumulatorsTyresList: TSpeedButton;
    sbFirstAccumulatorsTyresList: TSpeedButton;
    sbFilterAccumulatorsTyresList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshAccumulatorsTyresList: TSpeedButton;
    sbPrintAccumulatorsTyresList: TSpeedButton;
    ibdsMainAccumulatorsTyresList: TIBDataSet;
    dsMainAccumulatorsAccumulatorsTyresList: TDataSource;
    ibdsMainAccumulatorsTyresListNAME: TIBStringField;
    ibdsMainAccumulatorsTyresListSERIAL_NUMBER: TIBStringField;
    ibdsMainAccumulatorsTyresListMILEAGE: TIntegerField;
    ibdsMainAccumulatorsTyresListLOCATION_ID: TIntegerField;
    ibdsMainAccumulatorsTyresListLOCATION: TIBStringField;
    ibdsMainAccumulatorsTyresListPERSENT_TIME: TIntegerField;
    ibdsMainAccumulatorsTyresListPERSENT_MILLEAGE: TIntegerField;
    ibdsMainAccumulatorsTyresListTIME_GONE: TFloatField;
    PopupMenu1: TPopupMenu;
    ChangeMileage: TMenuItem;
    ibdsMainAccumulatorsTyresListID: TIntegerField;
    dbg: TcxGrid;
    tvAccumulatorsTyresList: TcxGridDBTableView;
    lvAccumulatorsTyresList: TcxGridLevel;
    tvAccumulatorsTyresListNAME: TcxGridDBColumn;
    tvAccumulatorsTyresListSERIAL_NUMBER: TcxGridDBColumn;
    tvAccumulatorsTyresListMILEAGE: TcxGridDBColumn;
    tvAccumulatorsTyresListLOCATION: TcxGridDBColumn;
    tvAccumulatorsTyresListPERSENT_TIME: TcxGridDBColumn;
    tvAccumulatorsTyresListPERSENT_MILLEAGE: TcxGridDBColumn;
    tvAccumulatorsTyresListTIME_GONE: TcxGridDBColumn;
    N1: TMenuItem;
    ibdsMainAccumulatorsTyresListSTART_DATE: TDateField;
    ibdsMainAccumulatorsTyresListTIME_ALLOWED: TIntegerField;
    ibdsMainAccumulatorsTyresListMILLEAGE_ALLOWED: TIntegerField;
    GridPopupMenu2: TcxGridPopupMenu;
    procedure sbRefreshAccumulatorsTyresListClick(Sender: TObject);
    procedure ibdsMainAccumulatorsTyresListBeforeOpen(DataSet: TDataSet);
    procedure sbFilterAccumulatorsTyresListClick(Sender: TObject);
    procedure ibdsMainAccumulatorsTyresListAfterOpen(DataSet: TDataSet);
    procedure sbCloseClick(Sender: TObject);
    procedure sbFirstAccumulatorsTyresListClick(Sender: TObject);
    procedure sbPriorAccumulatorsTyresListClick(Sender: TObject);
    procedure sbNextAccumulatorsTyresListClick(Sender: TObject);
    procedure sbLastAccumulatorsTyresListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbPrintAccumulatorsTyresListClick(Sender: TObject);
    procedure ChangeMileageClick(Sender: TObject);
    procedure tvAccumulatorsTyresListCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvAccumulatorsTyresListCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvAccumulatorsTyresListDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: String);
    procedure N1Click(Sender: TObject);
    procedure ibdsMainAccumulatorsTyresListCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure GenerateSelectMainAccumulatorsTyresList(WhereSqlMainAccumulatorsTyresList: String);
  public
    { Public declarations }
   GoodType : Integer;
  end;

var
  frmAccumulators: TfrmAccumulatorsTyres;
  frmTyres: TfrmAccumulatorsTyres;

implementation

uses DM, Misk, Main, cxFilter;

{$R *.DFM}

procedure TfrmAccumulatorsTyres.GenerateSelectMainAccumulatorsTyresList(WhereSqlMainAccumulatorsTyresList: String);
begin
 ibdsMainAccumulatorsTyresList.DisableControls;
 try
  ibdsMainAccumulatorsTyresList.Close;
  If (WhereSqlMainAccumulatorsTyresList<>'') and (tvAccumulatorsTyresList.DataController.Filter.Active) then
   Begin
    WhereSqlMainAccumulatorsTyresList := ReplaceStr(WhereSqlMainAccumulatorsTyresList,'NAME','A.NAME');
    WhereSqlMainAccumulatorsTyresList := ' and '+WhereSqlMainAccumulatorsTyresList;
    ibdsMainAccumulatorsTyresList.SelectSQL[6] := WhereSqlMainAccumulatorsTyresList;
    ibdsMainAccumulatorsTyresList.SelectSQL[14] := WhereSqlMainAccumulatorsTyresList;
    ibdsMainAccumulatorsTyresList.SelectSQL[22] := WhereSqlMainAccumulatorsTyresList;
    ibdsMainAccumulatorsTyresList.SelectSQL[31] := WhereSqlMainAccumulatorsTyresList;
    ibdsMainAccumulatorsTyresList.SelectSQL[39] := WhereSqlMainAccumulatorsTyresList
   End;
  ibdsMainAccumulatorsTyresList.Open
 finally
  ibdsMainAccumulatorsTyresList.EnableControls
 end

end;

procedure TfrmAccumulatorsTyres.sbRefreshAccumulatorsTyresListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsTyresList.Close;
 ibdsMainAccumulatorsTyresList.Open
end;

procedure TfrmAccumulatorsTyres.ibdsMainAccumulatorsTyresListBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsMainAccumulatorsTyresList.ParamByName('GOOD_TYPE').AsInteger := GoodType
end;

procedure TfrmAccumulatorsTyres.sbFilterAccumulatorsTyresListClick(Sender: TObject);
begin
 tvAccumulatorsTyresList.Filtering.RunCustomizeDialog(Nil)
end;

procedure TfrmAccumulatorsTyres.ibdsMainAccumulatorsTyresListAfterOpen(
  DataSet: TDataSet);
begin
 sbPrintAccumulatorsTyresList.Enabled := True
end;

procedure TfrmAccumulatorsTyres.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmAccumulatorsTyres.sbFirstAccumulatorsTyresListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsTyresList.First
end;

procedure TfrmAccumulatorsTyres.sbPriorAccumulatorsTyresListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsTyresList.Prior
end;

procedure TfrmAccumulatorsTyres.sbNextAccumulatorsTyresListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsTyresList.Next
end;

procedure TfrmAccumulatorsTyres.sbLastAccumulatorsTyresListClick(Sender: TObject);
begin
 ibdsMainAccumulatorsTyresList.Last
end;

procedure TfrmAccumulatorsTyres.FormCreate(Sender: TObject);
begin
 GoodType := TmpGoodType;
 If (GoodType=2) then
  Begin
   FName := 'Шины';
   Caption := 'Шины';
   Name := 'frmTyres';
   sbPrintAccumulatorsTyresList.Tag := 1
  End
 else
  Begin
   FName := 'Аккумуляторы';
   Caption := 'Аккумуляторы';
   Name := 'frmAccumulators';
   sbPrintAccumulatorsTyresList.Tag := 2
  End;
 inherited;
 trMain.StartTransaction;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select current_role CR from rdb$database');
 ibsGen_ID.ExecQuery;
 ChangeMileage.Enabled := (ibsGen_ID.FieldByName('CR').AsString='ADMIN_ROLE');
 ibsGen_ID.Close;
 ibdsMainAccumulatorsTyresList.Open
end;

procedure TfrmAccumulatorsTyres.sbPrintAccumulatorsTyresListClick(
  Sender: TObject);
begin
 frVariables.Clear;
 frVariables['Фильтр'] := tvAccumulatorsTyresList.DataController.Filter.FilterCaption;
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainAccumulatorsTyresList);
end;

procedure TfrmAccumulatorsTyres.ChangeMileageClick(Sender: TObject);
 var Mileage: Integer;
begin
 Mileage := 0;
 If MyInputQuery('Изменение пробега с начала эксплуатации','Изменить на, км:','-?\d+',Mileage) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('update ACCUMULATORS_TYRES A set A.MILEAGE = A.MILEAGE+'+IntToStr(Mileage)+' where (A.ID='+ibdsMainAccumulatorsTyresListID.AsString+')');
   ibsGen_ID.ExecQuery;
//   try
    trMain.Commit;
{   except
    MessageDlg('Ошибка сохранения!',mtError,[mbOk],0);
    trMain.Rollback
   end;}
   sbRefreshAccumulatorsTyresList.Click
  End
end;

procedure TfrmAccumulatorsTyres.tvAccumulatorsTyresListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmAccumulatorsTyres.tvAccumulatorsTyresListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(Assigned((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field)) or
    (AViewInfo.Item as TcxGridColumn).IsPreview then
  Exit;
 If NOT(AviewInfo.Selected) then
  Begin
   ACanvas.Brush.Color := clWindow;
   If (VarAsType(Sender.DataController.Values[AViewInfo.RecordViewInfo.Index, tvAccumulatorsTyresListPERSENT_TIME.Index], varInteger)>=100) or
      (VarAsType(Sender.DataController.Values[AViewInfo.RecordViewInfo.Index, tvAccumulatorsTyresListPERSENT_MILLEAGE.Index], varInteger)>=100) then
    ACanvas.Brush.Color := ColorUse100;
  End
end;

procedure TfrmAccumulatorsTyres.tvAccumulatorsTyresListDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: String);
begin
 GenerateSelectMainAccumulatorsTyresList(AFilterText)
end;

procedure TfrmAccumulatorsTyres.N1Click(Sender: TObject);
 var Time: Integer;
begin
 Time := 0;
 If MyInputQuery('Изменение пробега с начала эксплуатации','Изменить на, км:','-?\d+',Time) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('update ACCUMULATORS_TYRES A set A.MILEAGE = A.MILEAGE+'+IntToStr(Time)+' where (A.ID='+ibdsMainAccumulatorsTyresListID.AsString+')');
   ibsGen_ID.ExecQuery;
//   try
    trMain.Commit;
{   except
    MessageDlg('Ошибка сохранения!',mtError,[mbOk],0);
    trMain.Rollback
   end;}
   sbRefreshAccumulatorsTyresList.Click
  End
end;

procedure TfrmAccumulatorsTyres.ibdsMainAccumulatorsTyresListCalcFields(
  DataSet: TDataSet);
begin
 If (ibdsMainAccumulatorsTyresListSTART_DATE.IsNull) then
  ibdsMainAccumulatorsTyresListTIME_GONE.AsFloat := 0
 else
  ibdsMainAccumulatorsTyresListTIME_GONE.AsFloat := (Date-ibdsMainAccumulatorsTyresListSTART_DATE.AsFloat)/30.41666666667;
 If (ibdsMainAccumulatorsTyresListTIME_ALLOWED.AsInteger<>0) and NOT(ibdsMainAccumulatorsTyresListSTART_DATE.IsNull) then
  ibdsMainAccumulatorsTyresListPERSENT_TIME.Value := Round(100*(Date-ibdsMainAccumulatorsTyresListSTART_DATE.AsFloat)/ibdsMainAccumulatorsTyresListTIME_ALLOWED.AsInteger/30.41666666667)
 else
  ibdsMainAccumulatorsTyresListPERSENT_TIME.Value := 0;
 If (ibdsMainAccumulatorsTyresListMILLEAGE_ALLOWED.AsInteger<>0) then
  ibdsMainAccumulatorsTyresListPERSENT_MILLEAGE.Value := Round(100*ibdsMainAccumulatorsTyresListMILEAGE.AsInteger/ibdsMainAccumulatorsTyresListMILLEAGE_ALLOWED.AsInteger)
 else
  ibdsMainAccumulatorsTyresListPERSENT_MILLEAGE.AsInteger := 0
end;

end.
