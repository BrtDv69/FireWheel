unit Routes;

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
  TfrmRoutes = class(TfrmLike)
    ibdsMainRoutes: TIBDataSet;
    dsMainRoutes: TDataSource;
    Panel4: TPanel;
    sbCancelRoutes: TSpeedButton;
    sbApplyRoutes: TSpeedButton;
    sbDeleteRoutes: TSpeedButton;
    sbAddRoutes: TSpeedButton;
    sbLastRoutes: TSpeedButton;
    sbNextRoutes: TSpeedButton;
    sbPriorRoutes: TSpeedButton;
    sbFirstRoutes: TSpeedButton;
    sbCloseRoutes: TSpeedButton;
    GridPopupMenu: TcxGridPopupMenu;
    ibdsMainRoutesID: TIntegerField;
    ibdsMainRoutesPOINT1_NAME: TIBStringField;
    ibdsMainRoutesPOINT2_NAME: TIBStringField;
    ibdsMainRoutesCOMMENTS: TIBStringField;
    ibdsMainRoutesTOWN_MILEAGE: TIntegerField;
    ibdsMainRoutesSUBURB_MILEAGE: TIntegerField;
    ibdsMainRoutesHIGHWAY_MILEAGE: TIntegerField;
    ibdsMainRoutesUNROAD_MILEAGE: TIntegerField;
    cxGrid: TcxGrid;
    tvRoutes: TcxGridDBTableView;
    glRoutes: TcxGridLevel;
    tvRoutesPOINT1_NAME: TcxGridDBColumn;
    tvRoutesPOINT2_NAME: TcxGridDBColumn;
    tvRoutesCOMMENTS: TcxGridDBColumn;
    tvRoutesTOWN_MILEAGE: TcxGridDBColumn;
    tvRoutesSUBURB_MILEAGE: TcxGridDBColumn;
    tvRoutesHIGHWAY_MILEAGE: TcxGridDBColumn;
    tvRoutesUNROAD_MILEAGE: TcxGridDBColumn;
    ibdsMainRoutesSHORT_NAME: TIBStringField;
    tvRoutesSHORT_NAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseRoutesClick(Sender: TObject);
    procedure ibdsMainRoutesAfterScroll(DataSet: TDataSet);
    procedure sbFirstRoutesClick(Sender: TObject);
    procedure sbPriorRoutesClick(Sender: TObject);
    procedure sbNextRoutesClick(Sender: TObject);
    procedure sbLastRoutesClick(Sender: TObject);
    procedure sbAddRoutesClick(Sender: TObject);
    procedure sbDeleteRoutesClick(Sender: TObject);
    procedure sbCancelRoutesClick(Sender: TObject);
    procedure sbApplyRoutesClick(Sender: TObject);
    procedure dsMainRoutesStateChange(Sender: TObject);
    procedure ibdsMainRoutesNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainRoutesAfterDelete(DataSet: TDataSet);
    procedure tvRoutesCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
  end;

var
  frmRoutes: TfrmRoutes;

implementation

uses DM, Misk, Main, RoadSheets;

{$R *.DFM}

var
  OrderByParts  : String = ' 3 desc, 2 asc';

procedure TfrmRoutes.FormCreate(Sender: TObject);
begin
 FName := 'Справочник маршрутов';
 inherited;
 tvRoutes.BeginUpdate;
 tvRoutes.DataController.ClearSorting(True);
 tvRoutesPOINT1_NAME.SortOrder := soAscending;
 tvRoutesPOINT2_NAME.SortOrder := soAscending;
 tvRoutes.EndUpdate;
 trMain.StartTransaction;
 ibdsMainRoutes.Open
end;

procedure TfrmRoutes.sbCloseRoutesClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRoutes.ibdsMainRoutesAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmRoutes,'Routes')
end;

procedure TfrmRoutes.sbFirstRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.First
end;

procedure TfrmRoutes.sbPriorRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.Prior
end;

procedure TfrmRoutes.sbNextRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.Next
end;

procedure TfrmRoutes.sbLastRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.Last
end;

procedure TfrmRoutes.sbAddRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.Append
end;

procedure TfrmRoutes.sbDeleteRoutesClick(Sender: TObject);
begin
 ibdsMainRoutes.Delete
end;

procedure TfrmRoutes.sbCancelRoutesClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainRoutes.Bookmark;
 ibdsMainRoutes.CancelUpdates;
 StteChange(False);
 try
  ibdsMainRoutes.Bookmark := BookMark
 except
 end
end;

procedure TfrmRoutes.sbApplyRoutesClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainRoutes.Bookmark;
// try
  ibdsMainRoutes.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainRoutes.Bookmark := BookMark
 except
 end;
 If (frmMain.FindComponent('frmRoadSheets')<>nil) then
  try
   frmRoadSheets.ibdsRoutes.Close;
   frmRoadSheets.ibdsRoutes.Open
  except
  end
end;

procedure TfrmRoutes.dsMainRoutesStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmRoutes.ibdsMainRoutesNewRecord(DataSet: TDataSet);
begin
 ibdsMainRoutesID.Value := GetNewID(ibsGen_ID,'GEN_ROUTES_ID');
 ibdsMainRoutesTOWN_MILEAGE.Value := 0;
 ibdsMainRoutesSUBURB_MILEAGE.Value := 0;
 ibdsMainRoutesHIGHWAY_MILEAGE.Value := 0;
 ibdsMainRoutesUNROAD_MILEAGE.Value := 0
end;

procedure TfrmRoutes.StteChange(Enabled: Boolean);
 var k : Integer;
begin
 If (frmRoutes<>nil) then
  For k := 0 to Pred(frmRoutes.ComponentCount) do
   If (Components[k]=sbApplyRoutes) or
      (Components[k]=sbCancelRoutes) then
    (Components[k] as TControl).Enabled := Enabled
end;

procedure TfrmRoutes.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmRoutes.ibdsMainRoutesAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmRoutes.tvRoutesCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

end.
