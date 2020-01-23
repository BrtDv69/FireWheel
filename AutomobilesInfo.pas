unit AutomobilesInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, Math,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, IBCustomDataSet, fr_Class,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLookAndFeelPainters, StdCtrls, dxBar, dxBarExtItems,
  Menus;

type
  TfrmAutomobilesInfo = class(TfrmLike)
    tvAutomobiles: TcxGridDBTableView;
    glAutomobiles: TcxGridLevel;
    cxGrid: TcxGrid;
    Panel4: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbClose: TSpeedButton;
    ibdsMainAutomobiles: TIBDataSet;
    dsMainAutomobiles: TDataSource;
    cxGridPopupMenu: TcxGridPopupMenu;
    ibdsMainAutomobilesID: TIntegerField;
    ibdsMainAutomobilesNAME: TIBStringField;
    ibdsMainAutomobilesSTATE_NUMBER: TIBStringField;
    ibdsMainAutomobilesVALID: TIntegerField;
    ibdsMainAutomobilesMILEAGE: TIntegerField;
    ibdsMainAutomobilesMONTH_MILEAGE: TIntegerField;
    ibdsMainAutomobilesTO_KIND: TIntegerField;
    ibdsMainAutomobilesTO_MILEAGE: TIntegerField;
    tvAutomobilesNAME: TcxGridDBColumn;
    tvAutomobilesSTATE_NUMBER: TcxGridDBColumn;
    tvAutomobilesVALID: TcxGridDBColumn;
    tvAutomobilesMILEAGE: TcxGridDBColumn;
    tvAutomobilesMONTH_MILEAGE: TcxGridDBColumn;
    tvAutomobilesTO_KIND: TcxGridDBColumn;
    tvAutomobilesTO_MILEAGE: TcxGridDBColumn;
    ibdsMainDailyOperations: TIBDataSet;
    dsMainDailyOperations: TDataSource;
    glDailyOperations: TcxGridLevel;
    tvDailyOperations: TcxGridDBTableView;
    ibdsMainDailyOperationsAM_DATE: TDateField;
    ibdsMainDailyOperationsMILEAGE: TIntegerField;
    ibdsMainDailyOperationsTO12_KIND: TIntegerField;
    ibdsMainDailyOperationsPARTS_SHORT_NAME: TIBStringField;
    ibdsMainDailyOperationsAM_ID: TIntegerField;
    tvDailyOperationsAM_DATE: TcxGridDBColumn;
    tvDailyOperationsMILEAGE: TcxGridDBColumn;
    tvDailyOperationsTO12_KIND: TcxGridDBColumn;
    tvDailyOperationsPARTS_SHORT_NAME: TcxGridDBColumn;
    sbRefresh: TSpeedButton;
    sbFilter: TSpeedButton;
    dxBarManager1: TdxBarManager;
    deStart: TdxBarDateCombo;
    deStop: TdxBarDateCombo;
    ibdsMainAutomobilesINVENTORY_NUMBER: TIntegerField;
    ibdsMainAutomobilesMAINTENANCE_MILEAGE: TIntegerField;
    ibdsMainAutomobilesTO_FUTURE_KIND: TIntegerField;
    tvAutomobilesINVENTORY_NUMBER: TcxGridDBColumn;
    tvAutomobilesMAINTENANCE_MILEAGE: TcxGridDBColumn;
    tvAutomobilesTO_FUTURE_KIND: TcxGridDBColumn;
    ibdsMainAutomobilesOverRun: TIntegerField;
    tvAutomobilesOverRun: TcxGridDBColumn;
    sbPrintAccumulatorsTyresList: TSpeedButton;
    PopupMenu1: TPopupMenu;
    ChangeMileage: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tvAutomobilesCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure sbCloseClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure ibdsMainAutomobilesBeforeOpen(DataSet: TDataSet);
    procedure tvAutomobilesDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    procedure deStartChange(Sender: TObject);
    procedure sbFilterClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure tvAutomobilesFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure ibdsMainAutomobilesCalcFields(DataSet: TDataSet);
    procedure sbPrintAccumulatorsTyresListClick(Sender: TObject);
    procedure ChangeMileageClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenAll;
    procedure AfterScroll;
  public
    { Public declarations }
  end;

var
  frmAutomobilesInfo: TfrmAutomobilesInfo;

implementation

uses DM, Misk;

{$R *.dfm}

procedure TfrmAutomobilesInfo.FormCreate(Sender: TObject);
 var D, M, Y: Word;
begin
 FName := 'Информация по автомашинам';
 inherited;
{ Настройки сохраняются
 tvAutomobiles.BeginUpdate;
 tvAutomobiles.DataController.ClearSorting(True);
 tvAutomobilesVALID.SortOrder := soDescending;
 tvAutomobilesNAME.SortOrder := soDescending;
 tvAutomobiles.EndUpdate;
 tvDailyOperations.BeginUpdate;
 tvDailyOperations.DataController.ClearSorting(True);
 tvDailyOperationsAM_DATE.SortOrder := soDescending;
 tvDailyOperations.EndUpdate;}
 DecodeDate(Date, Y, M, D);
 If (M < 12) then
  Begin
   deStart.Date := EncodeDate(Y, M, 1);
   deStop.Date := EncodeDate(Y, M + 1, 1);
  End
 else
  Begin
   deStart.Date := EncodeDate(Y, M, 1);
   deStop.Date := EncodeDate(Y + 1, 1, 1);
  End;
 OpenAll;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select current_role CR from rdb$database');
 ibsGen_ID.ExecQuery;
 ChangeMileage.Enabled := (ibsGen_ID.FieldByName('CR').AsString='ADMIN_ROLE');
 ibsGen_ID.Close
end;

procedure TfrmAutomobilesInfo.tvAutomobilesCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmAutomobilesInfo.OpenAll;
begin
 If (trMain.InTransaction) then
  Begin
   ibdsMainDailyOperations.Close;
   ibdsMainAutomobiles.Close
  End
 else
  trMain.StartTransaction;
 ibdsMainAutomobiles.Open;
 ibdsMainDailyOperations.Open
end;

procedure TfrmAutomobilesInfo.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmAutomobilesInfo.sbRefreshClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAutomobiles.Bookmark;
 If (trMain.InTransaction) then
  trMain.Commit;
 OpenAll;
 try
  ibdsMainAutomobiles.Bookmark := BookMark
 except
 end
end;

procedure TfrmAutomobilesInfo.ibdsMainAutomobilesBeforeOpen(
  DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('START').AsDate := deStart.Date;
 (DataSet as TIBDataSet).ParamByName('STOP').AsDate := deStop.Date
end;

procedure TfrmAutomobilesInfo.tvAutomobilesDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
 ADataSet.Close;
 (ADataSet as TIBDataSet).ParamByName('ID').Value := AMasterDetailKeyValues;
 ADataSet.Open
end;

procedure TfrmAutomobilesInfo.deStartChange(Sender: TObject);
begin
 If (trMain.InTransaction) then
  trMain.Commit
end;

procedure TfrmAutomobilesInfo.sbFilterClick(Sender: TObject);
begin
 (cxGrid.FocusedView as TcxGridDBTableView).Filtering.RunCustomizeDialog(Nil)
end;

procedure TfrmAutomobilesInfo.sbNextClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmAutomobilesInfo.sbPriorClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmAutomobilesInfo.sbFirstClick(Sender: TObject);
begin
 (cxGrid.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmAutomobilesInfo.sbLastClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmAutomobilesInfo.tvAutomobilesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If NOT (ANewItemRecordFocusingChanged) then
  AfterScroll
end;

procedure TfrmAutomobilesInfo.cxGridFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 AfterScroll
end;

procedure TfrmAutomobilesInfo.AfterScroll;
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  Begin
   sbFirst.Enabled := (Controller.FocusedRowIndex>0);
   sbLast.Enabled := (Controller.FocusedRowIndex<Pred(ViewData.RowCount))
  End;
 sbPrior.Enabled := sbFirst.Enabled;
 sbNext.Enabled := sbLast.Enabled
end;

procedure TfrmAutomobilesInfo.ibdsMainAutomobilesCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainAutomobilesOverRun.Value := ibdsMainAutomobilesTO_MILEAGE.AsInteger-ibdsMainAutomobilesMAINTENANCE_MILEAGE.AsInteger;
 If (ibdsMainAutomobilesOverRun.Value<0) then
  ibdsMainAutomobilesOverRun.Value := 0
end;

procedure TfrmAutomobilesInfo.sbPrintAccumulatorsTyresListClick(
  Sender: TObject);
begin
 frVariables.Clear;
 frVariables['Фильтр'] := tvAutomobiles.DataController.Filter.FilterCaption;
 frVariables['На дату'] := Min(deStop.Date,Date);
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainAutomobiles);
end;

procedure TfrmAutomobilesInfo.ChangeMileageClick(Sender: TObject);
 var Mileage: Integer;
begin
 Mileage := 0;
 If MyInputQuery('Изменение пробега с начала эксплуатации','Изменить на, км:','-?\d+',Mileage) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('update AUTOMOBILES A set A.MILEAGE = A.MILEAGE+'+IntToStr(Mileage)+' where (A.ID='+ibdsMainAutomobilesID.AsString+')');
   ibsGen_ID.ExecQuery;
//   try
    trMain.Commit;
{   except
    MessageDlg('Ошибка сохранения!',mtError,[mbOk],0);
    trMain.Rollback
   end;}
   OpenAll
  End
end;

end.
