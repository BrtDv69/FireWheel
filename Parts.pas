unit Parts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, fcdbtreeview,
  IBSQL, IBDatabase, ImgList, Db, IBCustomDataSet, wwcheckbox, 
  cxGridLevel, cxClasses, cxControls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxStyles, cxMemo, cxGraphics, cxCustomData,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxGridCustomView, cxFilter, cxData, cxDBData;

type
 TObjProcedure = procedure of object;

type
  TfrmParts = class(TfrmLike)
    ibdsMainParts: TIBDataSet;
    dsMainParts: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelParts: TSpeedButton;
    sbApplyParts: TSpeedButton;
    sbDeleteParts: TSpeedButton;
    sbAddParts: TSpeedButton;
    sbLastParts: TSpeedButton;
    sbNextParts: TSpeedButton;
    sbPriorParts: TSpeedButton;
    sbFirstParts: TSpeedButton;
    sbCloseParts: TSpeedButton;
    pnlComments: TPanel;
    Label16: TLabel;
    sbDetail: TSpeedButton;
    ibdsMainPartsID: TIntegerField;
    ibdsMainPartsNAME: TIBStringField;
    ibdsMainPartsSHORT_NAME: TIBStringField;
    ibdsMainPartsVALID: TIntegerField;
    ibdsMainPartsCOMMENTS: TIBStringField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1VALID: TcxGridDBColumn;
    cxGrid1DBTableView1COMMENTS: TcxGridDBColumn;
    dbmComments: TcxDBMemo;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure sbClosePartsClick(Sender: TObject);
    procedure ibdsMainPartsAfterScroll(DataSet: TDataSet);
    procedure sbFirstPartsClick(Sender: TObject);
    procedure sbPriorPartsClick(Sender: TObject);
    procedure sbNextPartsClick(Sender: TObject);
    procedure sbLastPartsClick(Sender: TObject);
    procedure sbAddPartsClick(Sender: TObject);
    procedure sbDeletePartsClick(Sender: TObject);
    procedure sbCancelPartsClick(Sender: TObject);
    procedure sbApplyPartsClick(Sender: TObject);
    procedure dsMainPartsStateChange(Sender: TObject);
    procedure ibdsMainPartsNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainPartsAfterDelete(DataSet: TDataSet);
    procedure sbDetailClick(Sender: TObject);
    procedure dbmCommentsEnter(Sender: TObject);
    procedure dbmCommentsExit(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmParts: TfrmParts;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByParts  : String = ' 3 desc, 2 asc';

procedure TfrmParts.FormCreate(Sender: TObject);
begin
 FName := 'Справочник агрегатов';
 inherited;
 trMain.StartTransaction;
 ibdsMainParts.Open
end;

procedure TfrmParts.sbClosePartsClick(Sender: TObject);
begin
 Close
end;

procedure TfrmParts.ibdsMainPartsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmParts,'Parts')
end;

procedure TfrmParts.sbFirstPartsClick(Sender: TObject);
begin
 ibdsMainParts.First
end;

procedure TfrmParts.sbPriorPartsClick(Sender: TObject);
begin
 ibdsMainParts.Prior
end;

procedure TfrmParts.sbNextPartsClick(Sender: TObject);
begin
 ibdsMainParts.Next
end;

procedure TfrmParts.sbLastPartsClick(Sender: TObject);
begin
 ibdsMainParts.Last
end;

procedure TfrmParts.sbAddPartsClick(Sender: TObject);
begin
 ibdsMainParts.Insert
end;

procedure TfrmParts.sbDeletePartsClick(Sender: TObject);
begin
 ibdsMainParts.Delete
end;

procedure TfrmParts.sbCancelPartsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainParts.Bookmark;
 ibdsMainParts.CancelUpdates;
 StteChange(False);
 try
  ibdsMainParts.Bookmark := BookMark
 except
 end
end;

procedure TfrmParts.sbApplyPartsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainParts.Bookmark;
// try
  ibdsMainParts.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainParts.Bookmark := BookMark
 except
 end
end;

procedure TfrmParts.dsMainPartsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmParts.ibdsMainPartsNewRecord(DataSet: TDataSet);
begin
 ibdsMainPartsID.Value := GetNewID(ibsGen_ID,'GEN_PARTS_ID');
 ibdsMainPartsVALID.Value := 1
end;

procedure TfrmParts.StteChange(Enabled: Boolean);
 var k : Integer;
begin
 If (frmParts<>nil) then
  For k := 0 to Pred(frmParts.ComponentCount) do
   If (Components[k]=sbApplyParts) or
      (Components[k]=sbCancelParts) then
    (Components[k] as TControl).Enabled := Enabled;
end;

procedure TfrmParts.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmParts.ibdsMainPartsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmParts.sbDetailClick(Sender: TObject);
begin
 pnlComments.Visible := (Sender as TSpeedButton).Down
end;

procedure TfrmParts.dbmCommentsEnter(Sender: TObject);
begin
 dbmComments.Style.Color := clWindow
end;

procedure TfrmParts.dbmCommentsExit(Sender: TObject);
begin
 dbmComments.Style.Color := clBtnFace
end;

procedure TfrmParts.cxGrid1DBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

end.
