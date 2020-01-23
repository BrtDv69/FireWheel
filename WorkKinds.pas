unit WorkKinds;

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
  TfrmWorkKinds = class(TfrmLike)
    ibdsMainKinds: TIBDataSet;
    dsMainKinds: TDataSource;
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
    tvWorkKinds: TcxGridDBTableView;
    glWorkKinds: TcxGridLevel;
    ibdsMainKindsID: TIntegerField;
    ibdsMainKindsKIND_NAME: TIBStringField;
    ibdsMainKindsSHORT_NAME: TIBStringField;
    tvWorkKindsKIND_NAME: TcxGridDBColumn;
    tvWorkKindsSHORT_NAME: TcxGridDBColumn;
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
    procedure dsMainKindsStateChange(Sender: TObject);
    procedure ibdsMainKindsNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainKindsAfterDelete(DataSet: TDataSet);
    procedure tvWorkKindsCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvWorkKindsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvWorkKindsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmWorkKinds: TfrmWorkKinds;

implementation

uses DM, Misk, Main;

{$R *.DFM}

procedure TfrmWorkKinds.FormCreate(Sender: TObject);
begin
 FName := 'Виды работ';
 inherited;
 tvWorkKinds.BeginUpdate;
 tvWorkKinds.DataController.ClearSorting(True);
 tvWorkKindsKIND_NAME.SortOrder := soAscending;
 tvWorkKinds.EndUpdate;
 trMain.StartTransaction;
 ibdsMainKinds.Open
end;

procedure TfrmWorkKinds.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmWorkKinds.sbFirstClick(Sender: TObject);
begin
 (cxGrid.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmWorkKinds.sbPriorClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmWorkKinds.sbNextClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmWorkKinds.sbLastClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmWorkKinds.sbAddClick(Sender: TObject);
begin
 ibdsMainKinds.Append
end;

procedure TfrmWorkKinds.sbDeleteClick(Sender: TObject);
begin
 ibdsMainKinds.Delete
end;

procedure TfrmWorkKinds.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainKinds.Bookmark;
 ibdsMainKinds.CancelUpdates;
 StteChange(False);
 try
  ibdsMainKinds.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkKinds.sbApplyClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainKinds.Bookmark;
// try
  ibdsMainKinds.ApplyUpdates;
  trMain.Commit;
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit
 end;}
 ibdsMainKinds.Open;
 StteChange(False);
 try
  ibdsMainKinds.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkKinds.dsMainKindsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmWorkKinds.ibdsMainKindsNewRecord(DataSet: TDataSet);
begin
 ibdsMainKindsID.Value := GetNewID(ibsGen_ID,'GEN_WORK_KINDS_ID')
end;

procedure TfrmWorkKinds.StteChange(Enabled: Boolean);
begin
 If (frmWorkKinds<>nil) then
  Begin
   sbApply.Enabled := Enabled;
   sbCancel.Enabled := Enabled
  End 
end;

procedure TfrmWorkKinds.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmWorkKinds.ibdsMainKindsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmWorkKinds.tvWorkKindsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmWorkKinds.tvWorkKindsFocusedRecordChanged(
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

procedure TfrmWorkKinds.tvWorkKindsKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := MyUpCase(Key)
end;

end.
