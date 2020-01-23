unit Fuel;

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
  TfrmFuel = class(TfrmLike)
    ibdsMainFuel: TIBDataSet;
    dsMainFuel: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelFuel: TSpeedButton;
    sbApplyFuel: TSpeedButton;
    sbDeleteFuel: TSpeedButton;
    sbAddFuel: TSpeedButton;
    sbLastFuel: TSpeedButton;
    sbNextFuel: TSpeedButton;
    sbPriorFuel: TSpeedButton;
    sbFirstFuel: TSpeedButton;
    sbCloseFuel: TSpeedButton;
    ibdsMainFuelID: TIntegerField;
    ibdsMainFuelNAME: TIBStringField;
    ibdsMainFuelVALID: TIntegerField;
    ibdsMainFuelCOMMENTS: TIBStringField;
    pnlComments: TPanel;
    Label16: TLabel;
    sbDetail: TSpeedButton;
    dbedComments: TcxDBMemo;
    dbgFuel: TcxGrid;
    tvFuels: TcxGridDBTableView;
    tvFuelsNAME: TcxGridDBColumn;
    tvFuelsCOMMENTS: TcxGridDBColumn;
    tvFuelsVALID: TcxGridDBColumn;
    lvFuels: TcxGridLevel;
    GridPopupMenu: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseFuelClick(Sender: TObject);
    procedure ibdsMainFuelAfterScroll(DataSet: TDataSet);
    procedure sbFirstFuelClick(Sender: TObject);
    procedure sbPriorFuelClick(Sender: TObject);
    procedure sbNextFuelClick(Sender: TObject);
    procedure sbLastFuelClick(Sender: TObject);
    procedure sbAddFuelClick(Sender: TObject);
    procedure sbDeleteFuelClick(Sender: TObject);
    procedure sbCancelFuelClick(Sender: TObject);
    procedure sbApplyFuelClick(Sender: TObject);
    procedure dsMainFuelStateChange(Sender: TObject);
    procedure ibdsMainFuelNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainFuelAfterDelete(DataSet: TDataSet);
    procedure sbDetailClick(Sender: TObject);
    procedure tvFuelsCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvFuelsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function GetWhereFuel: String;
    procedure GenerateSelectMainFuel;
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmFuel: TfrmFuel;

implementation

uses DM, Misk, Main;

{$R *.DFM}

var
  OrderByFuel  : String = ' 3 desc, 2 asc';
  WhereSqlFuel : String = '';

procedure TfrmFuel.FormCreate(Sender: TObject);
begin
 FName := 'Справочник топлива';
 inherited;
 trMain.StartTransaction;
 GenerateSelectMainFuel;
 ibdsMainFuel.Open;
 frmMain.ImageList1.GetIcon(11,Icon)
end;

procedure TfrmFuel.sbCloseFuelClick(Sender: TObject);
begin
 Close
end;

procedure TfrmFuel.ibdsMainFuelAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmFuel,'Fuel')
end;

procedure TfrmFuel.sbFirstFuelClick(Sender: TObject);
begin
 ibdsMainFuel.First
end;

procedure TfrmFuel.sbPriorFuelClick(Sender: TObject);
begin
 ibdsMainFuel.Prior
end;

procedure TfrmFuel.sbNextFuelClick(Sender: TObject);
begin
 ibdsMainFuel.Next
end;

procedure TfrmFuel.sbLastFuelClick(Sender: TObject);
begin
 ibdsMainFuel.Last
end;

procedure TfrmFuel.sbAddFuelClick(Sender: TObject);
begin
 ibdsMainFuel.Insert
end;

procedure TfrmFuel.sbDeleteFuelClick(Sender: TObject);
begin
 ibdsMainFuel.Delete
end;

procedure TfrmFuel.sbCancelFuelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainFuel.Bookmark;
 ibdsMainFuel.CancelUpdates;
 StteChange(False);
 try
  ibdsMainFuel.Bookmark := BookMark
 except
 end
end;

procedure TfrmFuel.sbApplyFuelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainFuel.Bookmark;
// try
  ibdsMainFuel.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainFuel.Bookmark := BookMark
 except
 end
end;

procedure TfrmFuel.dsMainFuelStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(True)
  else
   StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmFuel.ibdsMainFuelNewRecord(DataSet: TDataSet);
begin
 ibdsMainFuelID.Value := GetNewID(ibsGen_ID,'GEN_FUEL_ID');
 ibdsMainFuelVALID.Value := 1
end;

function TfrmFuel.GetWhereFuel: String;
begin
 Result := ''
end;

procedure TfrmFuel.GenerateSelectMainFuel;
 var k : Integer;
begin
 For k := Pred(ibdsMainFuel.SelectSQL.Count) downto 2 do
  ibdsMainFuel.SelectSQL.Delete(k);
 ibdsMainFuel.SelectSQL.Add(GetWhereFuel);
 ibdsMainFuel.SelectSQL.Add('order by'+OrderByFuel)
end;

procedure TfrmFuel.StteChange(Enabled: Boolean);
 var k : Integer;
begin
 If (frmFuel<>nil) then
  For k := 0 to Pred(frmFuel.ComponentCount) do
   If (Components[k]=sbApplyFuel) or
      (Components[k]=sbCancelFuel) then
    (Components[k] as TControl).Enabled := Enabled;
end;

procedure TfrmFuel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmFuel := nil
end;

procedure TfrmFuel.ibdsMainFuelAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmFuel.sbDetailClick(Sender: TObject);
begin
 pnlComments.Visible := (Sender as TSpeedButton).Down
end;

procedure TfrmFuel.tvFuelsCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmFuel.tvFuelsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

end.
