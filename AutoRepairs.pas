unit AutoRepairs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, IBCustomDataSet,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TfrmAutoRepairs = class(TfrmLike)
    tvAutomobiles: TcxGridDBTableView;
    glAutomobiles: TcxGridLevel;
    cxGrid: TcxGrid;
    Panel4: TPanel;
    sbCancelAutoRepairs: TSpeedButton;
    sbApplyAutoRepairs: TSpeedButton;
    sbDeleteParts: TSpeedButton;
    sbAddParts: TSpeedButton;
    sbLastParts: TSpeedButton;
    sbNextParts: TSpeedButton;
    sbPriorParts: TSpeedButton;
    sbFirstParts: TSpeedButton;
    sbCloseParts: TSpeedButton;
    sbDetail: TSpeedButton;
    glTO: TcxGridLevel;
    glRepairs: TcxGridLevel;
    tvTO: TcxGridDBTableView;
    ibdsMainAutomobiles: TIBDataSet;
    dsMainAutomobiles: TDataSource;
    ibdsMainAutomobilesID: TIntegerField;
    ibdsMainAutomobilesMAKE_NAME: TIBStringField;
    ibdsMainAutomobilesSTATE_NUMBER: TIBStringField;
    ibdsMainAutomobilesMILEAGE: TIntegerField;
    ibdsMainAutomobilesMONTH_MILEAGE: TIntegerField;
    ibdsMainAutomobilesCOMMENTS: TIBStringField;
    tvAutomobilesMAKE_NAME: TcxGridDBColumn;
    tvAutomobilesSTATE_NUMBER: TcxGridDBColumn;
    tvAutomobilesMILEAGE: TcxGridDBColumn;
    tvAutomobilesMONTH_MILEAGE: TcxGridDBColumn;
    tvAutomobilesCOMMENTS: TcxGridDBColumn;
    ibdsTO: TIBDataSet;
    dsTO: TDataSource;
    ibdsTOID: TIntegerField;
    ibdsTONUMBER: TIntegerField;
    ibdsTOTO12_DATE: TDateField;
    ibdsTOAUTOMOBILE_ID: TIntegerField;
    ibdsTOTO12_KIND: TIntegerField;
    ibdsTOCOMMENTS: TIBStringField;
    tvTONUMBER: TcxGridDBColumn;
    tvTOTO12_DATE: TcxGridDBColumn;
    tvTOTO12_KIND: TcxGridDBColumn;
    tvTOCOMMENTS: TcxGridDBColumn;
    ibdsRepairs: TIBDataSet;
    dsRepairs: TDataSource;
    ibdsRepairsID: TIntegerField;
    ibdsRepairsNUMBER: TIntegerField;
    ibdsRepairsSTART_DATE: TDateField;
    ibdsRepairsSTOP_DATE: TDateField;
    ibdsRepairsAUTOMOBILE_ID: TIntegerField;
    ibdsRepairsPART_ID: TIntegerField;
    ibdsRepairsCOMMENTS: TIBStringField;
    ibdsParts: TIBDataSet;
    ibdsPartsID: TIntegerField;
    ibdsPartsNAME: TIBStringField;
    ibdsPartsSHORT_NAME: TIBStringField;
    ibdsPartsCOMMENTS: TIBStringField;
    tvRepairs: TcxGridDBBandedTableView;
    tvRepairsNUMBER: TcxGridDBBandedColumn;
    tvRepairsSTART_DATE: TcxGridDBBandedColumn;
    tvRepairsSTOP_DATE: TcxGridDBBandedColumn;
    tvRepairsPART_ID: TcxGridDBBandedColumn;
    tvRepairsCOMMENTS: TcxGridDBBandedColumn;
    dsParts: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure ibdsTONewRecord(DataSet: TDataSet);
    procedure ibdsRepairsNewRecord(DataSet: TDataSet);
    procedure tvAutomobilesCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure sbApplyAutoRepairsClick(Sender: TObject);
    procedure sbCancelAutoRepairsClick(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmAutoRepairs: TfrmAutoRepairs;

implementation

uses DM, Misk;

{$R *.dfm}

procedure TfrmAutoRepairs.FormCreate(Sender: TObject);
begin
 FName := 'Информация по автомашинам';
 inherited;
 trMain.StartTransaction;
 ibdsMainAutomobiles.Open;
 ibdsTO.Open;
 ibdsParts.Open;
 ibdsRepairs.Open
end;

procedure TfrmAutoRepairs.ibdsTONewRecord(DataSet: TDataSet);
begin
 ibdsTOID.Value := GetNewID(ibsGen_ID,'GEN_TO12_ID')
end;

procedure TfrmAutoRepairs.ibdsRepairsNewRecord(DataSet: TDataSet);
begin
 ibdsRepairsID.Value := GetNewID(ibsGen_ID,'GEN_REPAIRS_ID')
end;

procedure TfrmAutoRepairs.tvAutomobilesCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmAutoRepairs.sbApplyAutoRepairsClick(Sender: TObject);
begin
 PostIfNeeded(ibdsTO);
 PostIfNeeded(ibdsRepairs);
 try
  If (ibdsTO.UpdatesPending) then
   ibdsTO.ApplyUpdates;
  If (ibdsRepairs.UpdatesPending) then
   ibdsRepairs.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmAutoRepairs.StteChange(Enabled: Boolean);
 var k : Integer;
begin
 If (frmAutoRepairs<>nil) then
  For k := 0 to Pred(frmAutoRepairs.ComponentCount) do
   If (Components[k]=sbApplyAutoRepairs) or
      (Components[k]=sbCancelAutoRepairs) then
    (Components[k] as TControl).Enabled := Enabled
end;

procedure TfrmAutoRepairs.sbCancelAutoRepairsClick(Sender: TObject);
begin
 ibdsTO.CancelUpdates;
 ibdsRepairs.CancelUpdates;
 StteChange(False)
end;

end.
