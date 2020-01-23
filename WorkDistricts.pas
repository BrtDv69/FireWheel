unit WorkDistricts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, DBCtrls,
  IBSQL, IBDatabase, ImgList, Db, IBCustomDataSet, cxGridLevel, cxClasses,
  cxControls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxStyles, cxMemo, cxGraphics, cxCustomData, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxGridCustomView,
  cxFilter, cxData, cxDBData, Menus, ExtCtrls;

type
 TObjProcedure = procedure of object;

type
  TfrmWorkDistricts = class(TfrmLike)
    ibdsMainDistricts: TIBDataSet;
    dsMainDistricts: TDataSource;
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbDelete: TSpeedButton;
    sbAdd: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbClose: TSpeedButton;
    GridPopupMenu: TcxGridPopupMenu;
    cxGrid: TcxGrid;
    tvWorkDistricts: TcxGridDBTableView;
    glWorkDistricts: TcxGridLevel;
    ibdsMainDistrictsID: TIntegerField;
    ibdsMainDistrictsDISTRICT_NAME: TIBStringField;
    tvWorkDistrictsDISTRICT_NAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure dsMainDistrictsStateChange(Sender: TObject);
    procedure ibdsMainDistrictsNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainDistrictsAfterDelete(DataSet: TDataSet);
    procedure tvWorkDistrictsCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvWorkDistrictsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvWorkDistrictsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmWorkDistricts: TfrmWorkDistricts;

implementation

uses DM, Misk, Main;

{$R *.DFM}

procedure TfrmWorkDistricts.FormCreate(Sender: TObject);
begin
 FName := 'Участки работ';
 inherited;
 tvWorkDistricts.BeginUpdate;
 tvWorkDistricts.DataController.ClearSorting(True);
 tvWorkDistrictsDISTRICT_NAME.SortOrder := soAscending;
 tvWorkDistricts.EndUpdate;
 trMain.StartTransaction;
 ibdsMainDistricts.Open
end;

procedure TfrmWorkDistricts.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmWorkDistricts.sbFirstClick(Sender: TObject);
begin
 (cxGrid.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmWorkDistricts.sbPriorClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmWorkDistricts.sbNextClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmWorkDistricts.sbLastClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmWorkDistricts.sbAddClick(Sender: TObject);
begin
 ibdsMainDistricts.Append
end;

procedure TfrmWorkDistricts.sbDeleteClick(Sender: TObject);
begin
 ibdsMainDistricts.Delete
end;

procedure TfrmWorkDistricts.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainDistricts.Bookmark;
 ibdsMainDistricts.CancelUpdates;
 StteChange(False);
 try
  ibdsMainDistricts.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkDistricts.sbApplyClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainDistricts.Bookmark;
// try
  ibdsMainDistricts.ApplyUpdates;
  trMain.Commit;
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit
 end;}
 ibdsMainDistricts.Open;
 StteChange(False);
 try
  ibdsMainDistricts.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkDistricts.dsMainDistrictsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmWorkDistricts.ibdsMainDistrictsNewRecord(DataSet: TDataSet);
begin
 ibdsMainDistrictsID.Value := GetNewID(ibsGen_ID,'GEN_WORK_DISTRICTS_ID')
end;

procedure TfrmWorkDistricts.StteChange(Enabled: Boolean);
begin
 If (frmWorkDistricts<>nil) then
  Begin
   sbApply.Enabled := Enabled;
   sbCancel.Enabled := Enabled
  End 
end;

procedure TfrmWorkDistricts.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmWorkDistricts.ibdsMainDistrictsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmWorkDistricts.tvWorkDistrictsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmWorkDistricts.tvWorkDistrictsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If NOT (ANewItemRecordFocusingChanged) then
  Begin
   With (cxGrid.FocusedView as TcxGridDBTableView) do
    Begin
     sbFirst.Enabled := (Controller.FocusedRowIndex>0);
     sbLast.Enabled := (Controller.FocusedRowIndex<Pred(ViewData.RowCount))
    End;
   sbPrior.Enabled := sbFirst.Enabled;
   sbNext.Enabled := sbLast.Enabled
  End
end;

procedure TfrmWorkDistricts.tvWorkDistrictsKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := MyUpCase(Key)
end;

end.
