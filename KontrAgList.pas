unit KontrAgList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, fcdbtreeview,
  IBSQL, IBDatabase, ImgList, Db, IBCustomDataSet, wwcheckbox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, cxGridLevel, cxGraphics,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu;

type
 TObjProcedure = procedure of object;

type
  TfrmKontrAgList = class(TfrmLike)
    ibdsMainContractors: TIBDataSet;
    dsMainContractors: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDetailContrAgent: TPanel;
    Label16: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    sbCancelContractors: TSpeedButton;
    sbApplyContractors: TSpeedButton;
    sbDeleteContractors: TSpeedButton;
    sbAddContractors: TSpeedButton;
    sbLastContractors: TSpeedButton;
    sbNextContractors: TSpeedButton;
    sbPriorContractors: TSpeedButton;
    sbFirstContractors: TSpeedButton;
    sbDetailsContractors: TSpeedButton;
    sbFilterContractors: TSpeedButton;
    sbCloseContractors: TSpeedButton;
    ibdsMainContractorsID: TIntegerField;
    ibdsMainContractorsNAME: TIBStringField;
    ibdsMainContractorsPRIVATE: TIntegerField;
    ibdsMainContractorsVALID: TIntegerField;
    ibdsMainContractorsCOMMENTS: TIBStringField;
    cxDBMemo1: TcxDBMemo;
    dbgContractors: TcxGrid;
    tvContractors: TcxGridDBTableView;
    tvContractorsNAME: TcxGridDBColumn;
    tvContractorsCOMMENTS: TcxGridDBColumn;
    tvContractorsVALID: TcxGridDBColumn;
    lvContractors: TcxGridLevel;
    tvContractorsPRIVATE: TcxGridDBColumn;
    GridPopupMenu: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseContractorsClick(Sender: TObject);
    procedure sbDetailsContractorsClick(Sender: TObject);
    procedure ibdsMainContractorsAfterScroll(DataSet: TDataSet);
    procedure sbFirstContractorsClick(Sender: TObject);
    procedure sbPriorContractorsClick(Sender: TObject);
    procedure sbNextContractorsClick(Sender: TObject);
    procedure sbLastContractorsClick(Sender: TObject);
    procedure sbAddContractorsClick(Sender: TObject);
    procedure sbDeleteContractorsClick(Sender: TObject);
    procedure sbCancelContractorsClick(Sender: TObject);
    procedure sbApplyContractorsClick(Sender: TObject);
    procedure dsMainContractorsStateChange(Sender: TObject);
    procedure ibdsMainContractorsNewRecord(DataSet: TDataSet);
    procedure sbFilterContractorsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainContractorsAfterDelete(DataSet: TDataSet);
    procedure tvContractorsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvContractorsCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmKontrAgList: TfrmKontrAgList;

implementation

uses DM, Misk;

{$R *.DFM}

procedure TfrmKontrAgList.FormCreate(Sender: TObject);
begin
 FName := 'Контрагенты';
 inherited;
 trMain.StartTransaction;
 ibdsMainContractors.Open
end;

procedure TfrmKontrAgList.sbCloseContractorsClick(Sender: TObject);
begin
 Close
end;

procedure TfrmKontrAgList.sbDetailsContractorsClick(Sender: TObject);
begin
 pnlDetailContrAgent.Visible := (Sender as TSpeedButton).Down
end;

procedure TfrmKontrAgList.ibdsMainContractorsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmKontrAgList,'Contractors')
end;

procedure TfrmKontrAgList.sbFirstContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.First
end;

procedure TfrmKontrAgList.sbPriorContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Prior
end;

procedure TfrmKontrAgList.sbNextContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Next
end;

procedure TfrmKontrAgList.sbLastContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Last
end;

procedure TfrmKontrAgList.sbAddContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Append
end;

procedure TfrmKontrAgList.sbDeleteContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Delete
end;

procedure TfrmKontrAgList.sbCancelContractorsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainContractors.Bookmark;
 ibdsMainContractors.CancelUpdates;
 StteChange('Contractors', False);
 try
  ibdsMainContractors.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.sbApplyContractorsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainContractors.Bookmark;
// try
  ibdsMainContractors.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Contractors', False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainContractors.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.dsMainContractorsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmKontrAgList.ibdsMainContractorsNewRecord(DataSet: TDataSet);
begin
 ibdsMainContractorsID.Value := GetNewID(ibsGen_ID,'GEN_CONTRACTORS_ID');
 ibdsMainContractorsPRIVATE.Value := 0;
 ibdsMainContractorsVALID.Value := 1
end;

procedure TfrmKontrAgList.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmKontrAgList<>nil) then
  For k := 0 to Pred(frmKontrAgList.ComponentCount) do
   If (Components[k].Name='sbApply'+Suf) or
      (Components[k].Name='sbCancel'+Suf) then
    (Components[k] as TControl).Enabled := Enabled;
end;

procedure TfrmKontrAgList.sbFilterContractorsClick(Sender: TObject);
begin
 tvContractors.Filtering.RunCustomizeDialog(Nil)
end;

procedure TfrmKontrAgList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmKontrAgList := nil
end;

procedure TfrmKontrAgList.ibdsMainContractorsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('Contractors', True)
end;

procedure TfrmKontrAgList.tvContractorsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmKontrAgList.tvContractorsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

end.
