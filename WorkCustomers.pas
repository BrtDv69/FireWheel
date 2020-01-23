unit WorkCustomers;

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
  TfrmWorkCustomers = class(TfrmLike)
    ibdsMainCustomers: TIBDataSet;
    dsMainCustomers: TDataSource;
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
    tvWorkCustomers: TcxGridDBTableView;
    glWorkCustomers: TcxGridLevel;
    ibdsMainCustomersID: TIntegerField;
    ibdsMainCustomersCUSTOMER_NAME: TIBStringField;
    tvWorkCustomersCUSTOMER_NAME: TcxGridDBColumn;
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
    procedure dsMainCustomersStateChange(Sender: TObject);
    procedure ibdsMainCustomersNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainCustomersAfterDelete(DataSet: TDataSet);
    procedure tvWorkCustomersCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvWorkCustomersFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvWorkCustomersKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmWorkCustomers: TfrmWorkCustomers;

implementation

uses DM, Misk, Main;

{$R *.DFM}

procedure TfrmWorkCustomers.FormCreate(Sender: TObject);
begin
 FName := 'Заказчики';
 inherited;
 tvWorkCustomers.BeginUpdate;
 tvWorkCustomers.DataController.ClearSorting(True);
 tvWorkCustomersCUSTOMER_NAME.SortOrder := soAscending;
 tvWorkCustomers.EndUpdate;
 trMain.StartTransaction;
 ibdsMainCustomers.Open
end;

procedure TfrmWorkCustomers.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmWorkCustomers.sbFirstClick(Sender: TObject);
begin
 (cxGrid.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmWorkCustomers.sbPriorClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmWorkCustomers.sbNextClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmWorkCustomers.sbLastClick(Sender: TObject);
begin
 With (cxGrid.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmWorkCustomers.sbAddClick(Sender: TObject);
begin
 ibdsMainCustomers.Append
end;

procedure TfrmWorkCustomers.sbDeleteClick(Sender: TObject);
begin
 ibdsMainCustomers.Delete
end;

procedure TfrmWorkCustomers.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainCustomers.Bookmark;
 ibdsMainCustomers.CancelUpdates;
 StteChange(False);
 try
  ibdsMainCustomers.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkCustomers.sbApplyClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainCustomers.Bookmark;
// try
  ibdsMainCustomers.ApplyUpdates;
  trMain.Commit;
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit
 end;}
 ibdsMainCustomers.Open;
 StteChange(False);
 try
  ibdsMainCustomers.Bookmark := BookMark
 except
 end
end;

procedure TfrmWorkCustomers.dsMainCustomersStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmWorkCustomers.ibdsMainCustomersNewRecord(DataSet: TDataSet);
begin
 ibdsMainCustomersID.Value := GetNewID(ibsGen_ID,'GEN_WORK_CUSTOMER_ID')
end;

procedure TfrmWorkCustomers.StteChange(Enabled: Boolean);
begin
 If (frmWorkCustomers<>nil) then
  Begin
   sbApply.Enabled := Enabled;
   sbCancel.Enabled := Enabled
  End 
end;

procedure TfrmWorkCustomers.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmWorkCustomers.ibdsMainCustomersAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmWorkCustomers.tvWorkCustomersCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmWorkCustomers.tvWorkCustomersFocusedRecordChanged(
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

procedure TfrmWorkCustomers.tvWorkCustomersKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := MyUpCase(Key)
end;

end.
