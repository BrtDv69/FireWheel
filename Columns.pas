unit Columns;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, StdCtrls, Mask, DBCtrls, Grids, ExtCtrls, ComCtrls,
  IBSQL, IBDatabase, ImgList, Db, IBCustomDataSet, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGraphics, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
 TObjProcedure = procedure of object;

type
  TfrmColumns = class(TfrmLike)
    ibdsMainColumns: TIBDataSet;
    dsMainColumns: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelColumns: TSpeedButton;
    sbApplyColumns: TSpeedButton;
    sbDeleteColumns: TSpeedButton;
    sbAddColumns: TSpeedButton;
    sbLastColumns: TSpeedButton;
    sbNextColumns: TSpeedButton;
    sbPriorColumns: TSpeedButton;
    sbFirstColumns: TSpeedButton;
    sbCloseColumns: TSpeedButton;
    pnlComments: TPanel;
    Label16: TLabel;
    sbDetail: TSpeedButton;
    dbedComments: TcxDBMemo;
    dbgColumns: TcxGrid;
    tvColumns: TcxGridDBTableView;
    tvColumnsNAME: TcxGridDBColumn;
    tvColumnsCOMMENTS: TcxGridDBColumn;
    tvColumnsVALID: TcxGridDBColumn;
    lvColumns: TcxGridLevel;
    GridPopupMenu: TcxGridPopupMenu;
    ibdsMainColumnsID: TIntegerField;
    ibdsMainColumnsCOLUMN_NUMBER: TIntegerField;
    ibdsMainColumnsNAME: TIBStringField;
    ibdsMainColumnsADDRESS: TIBStringField;
    ibdsMainColumnsPHONE: TIBStringField;
    ibdsMainColumnsVALID: TIntegerField;
    ibdsMainColumnsCOMMENTS: TIBStringField;
    tvColumnsCOLUMN_NUMBER: TcxGridDBColumn;
    tvColumnsADDRESS: TcxGridDBColumn;
    tvColumnsPHONE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseColumnsClick(Sender: TObject);
    procedure ibdsMainColumnsAfterScroll(DataSet: TDataSet);
    procedure sbFirstColumnsClick(Sender: TObject);
    procedure sbPriorColumnsClick(Sender: TObject);
    procedure sbNextColumnsClick(Sender: TObject);
    procedure sbLastColumnsClick(Sender: TObject);
    procedure sbAddColumnsClick(Sender: TObject);
    procedure sbDeleteColumnsClick(Sender: TObject);
    procedure sbCancelColumnsClick(Sender: TObject);
    procedure sbApplyColumnsClick(Sender: TObject);
    procedure dsMainColumnsStateChange(Sender: TObject);
    procedure ibdsMainColumnsNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainColumnsAfterDelete(DataSet: TDataSet);
    procedure sbDetailClick(Sender: TObject);
    procedure tvColumnsCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvColumnsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmColumns: TfrmColumns;

implementation

uses DM, Misk, Main;

{$R *.DFM}

procedure TfrmColumns.FormCreate(Sender: TObject);
begin
 FName := 'Справочник колонн';
 inherited;
 trMain.StartTransaction;
 ibdsMainColumns.Open;
 frmMain.ImageList1.GetIcon(11,Icon)
end;

procedure TfrmColumns.sbCloseColumnsClick(Sender: TObject);
begin
 Close
end;

procedure TfrmColumns.ibdsMainColumnsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmColumns,'Columns')
end;

procedure TfrmColumns.sbFirstColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.First
end;

procedure TfrmColumns.sbPriorColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.Prior
end;

procedure TfrmColumns.sbNextColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.Next
end;

procedure TfrmColumns.sbLastColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.Last
end;

procedure TfrmColumns.sbAddColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.Insert
end;

procedure TfrmColumns.sbDeleteColumnsClick(Sender: TObject);
begin
 ibdsMainColumns.Delete
end;

procedure TfrmColumns.sbCancelColumnsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainColumns.Bookmark;
 ibdsMainColumns.CancelUpdates;
 StteChange(False);
 try
  ibdsMainColumns.Bookmark := BookMark
 except
 end
end;

procedure TfrmColumns.sbApplyColumnsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainColumns.Bookmark;
// try
  ibdsMainColumns.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainColumns.Bookmark := BookMark
 except
 end
end;

procedure TfrmColumns.dsMainColumnsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmColumns.ibdsMainColumnsNewRecord(DataSet: TDataSet);
begin
 ibdsMainColumnsID.Value := GetNewID(ibsGen_ID,'GEN_COLUMNS_ID');
 ibdsMainColumnsVALID.Value := 1
end;

procedure TfrmColumns.StteChange(Enabled: Boolean);
 var k : Integer;
begin
 If (frmColumns<>nil) then
  For k := 0 to Pred(frmColumns.ComponentCount) do
   If (Components[k]=sbApplyColumns) or
      (Components[k]=sbCancelColumns) then
    (Components[k] as TControl).Enabled := Enabled;
end;

procedure TfrmColumns.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmColumns := nil
end;

procedure TfrmColumns.ibdsMainColumnsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmColumns.sbDetailClick(Sender: TObject);
begin
 pnlComments.Visible := (Sender as TSpeedButton).Down
end;

procedure TfrmColumns.tvColumnsCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmColumns.tvColumnsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

end.
