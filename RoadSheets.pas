unit RoadSheets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, cxControls, cxPC, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, IBCustomDataSet, Buttons, ExtCtrls, Menus, Math,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxDBEdit, StdCtrls, RzBckgnd, cxCalendar, cxSpinEdit, cxTimeEdit, DateUtils,
  ComCtrls, cxCheckBox, cxDataStorage, cxGridDBDataDefinitions;

type
  TfrmRoadSheets = class(TfrmLike)
    PageControl1: TcxPageControl;
    tsRoadSheetsList: TcxTabSheet;
    tsRoadSheet: TcxTabSheet;
    GridPopupMenu2: TcxGridPopupMenu;
    ibdsMainRoadSheetsList: TIBDataSet;
    dsMainRoadSheetsList: TDataSource;
    ibdsMainRoadSheet: TIBDataSet;
    Panel4: TPanel;
    sbCancelRoadSheetsList: TSpeedButton;
    sbApplyRoadSheetsList: TSpeedButton;
    sbDeleteRoadSheetsList: TSpeedButton;
    sbAddRoadSheetsList: TSpeedButton;
    sbLastRoadSheetsList: TSpeedButton;
    sbNextRoadSheetsList: TSpeedButton;
    sbPriorRoadSheetsList: TSpeedButton;
    sbFirstRoadSheetsList: TSpeedButton;
    sbFilterRoadSheetsList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshRoadSheetsList: TSpeedButton;
    sbPrintRoadSheetsList: TSpeedButton;
    ibdsAutomobiles: TIBDataSet;
    dsAutomobiles: TDataSource;
    Panel5: TPanel;
    sbCancelRoadSheet: TSpeedButton;
    sbApplyRoadSheet: TSpeedButton;
    sbDeleteRoadSheet: TSpeedButton;
    sbAddRoadSheet: TSpeedButton;
    sbLastRoadSheetRouts: TSpeedButton;
    sbNextRoadSheetRouts: TSpeedButton;
    sbPriorRoadSheetRouts: TSpeedButton;
    sbFirstRoadSheetRouts: TSpeedButton;
    SpeedButton10: TSpeedButton;
    sbPrintRoadSheet: TSpeedButton;
    dbgRoadSheetsList: TcxGrid;
    tvRoadSheetsList: TcxGridDBTableView;
    tlRoadSheetsList: TcxGridLevel;
    ibdsMainRoadSheetsListID: TIntegerField;
    ibdsMainRoadSheetsListAUTOMOBILE_ID: TIntegerField;
    ibdsMainRoadSheetsListDRIVER_ID: TIntegerField;
    ibdsMainRoadSheetsListSERIES: TIBStringField;
    ibdsMainRoadSheetsListNUMBER: TIntegerField;
    ibdsMainRoadSheetsListROAD_SHEET_DATE: TDateField;
    ibdsMainRoadSheetsListTOTAL_MILLEAGE: TLargeintField;
    ibdsMainRoadSheetsListCOMMENTS: TIBStringField;
    ibdsDrivers: TIBDataSet;
    dsDrivers: TDataSource;
    ibdsDriversID: TIntegerField;
    ibdsDriversFULL_NAME: TIBStringField;
    tvRoadSheetsListAUTOMOBILE_ID: TcxGridDBColumn;
    tvRoadSheetsListDRIVER_ID: TcxGridDBColumn;
    tvRoadSheetsListSERIES: TcxGridDBColumn;
    tvRoadSheetsListNUMBER: TcxGridDBColumn;
    tvRoadSheetsListROAD_SHEET_DATE: TcxGridDBColumn;
    tvRoadSheetsListPAYING_TIME: TcxGridDBColumn;
    tvRoadSheetsListTOTAL_MILLEAGE: TcxGridDBColumn;
    tvRoadSheetsListSPECIAL_TIMES: TcxGridDBColumn;
    tvRoadSheetsListDISTRIBUTED_MAIN_FUEL: TcxGridDBColumn;
    tvRoadSheetsListDISTRIBUTED_SPECIAL_FUEL: TcxGridDBColumn;
    tvRoadSheetsListCOMMENTS: TcxGridDBColumn;
    ibdsAutomobilesID: TIntegerField;
    ibdsAutomobilesAM_NAME: TIBStringField;
    tvRoadSheetsListCARRIED_MILEAGE: TcxGridDBColumn;
    ibdsMainRoadSheetsListWORK_DISTRICT_ID: TIntegerField;
    ibdsMainRoadSheetsListWORK_KIND_ID: TIntegerField;
    tvRoadSheetsListWORK_DISTRICT_ID: TcxGridDBColumn;
    tvRoadSheetsListWORK_KIND_ID: TcxGridDBColumn;
    ibdsWorkDistricts: TIBDataSet;
    dsWorkDistricts: TDataSource;
    ibdsWorkDistrictsID: TIntegerField;
    ibdsWorkDistrictsDISTRICT_NAME: TIBStringField;
    ibdsWorkKinds: TIBDataSet;
    dsWorkKinds: TDataSource;
    ibdsWorkKindsID: TIntegerField;
    ibdsWorkKindsSHORT_NAME: TIBStringField;
    ibdsWorkKindsKIND_NAME: TIBStringField;
    tvRoadSheetsListEATEN_MAIN_FUEL: TcxGridDBColumn;
    tvRoadSheetsListEATEN_SPECIAL_FUEL: TcxGridDBColumn;
    ibdsMainRoadSheetID: TIntegerField;
    ibdsMainRoadSheetSERIES: TIBStringField;
    ibdsMainRoadSheetNUMBER: TIntegerField;
    ibdsMainRoadSheetROAD_SHEET_DATE: TDateField;
    ibdsMainRoadSheetAUTOMOBILE_ID: TIntegerField;
    ibdsMainRoadSheetDRIVER_ID: TIntegerField;
    ibdsMainRoadSheetWORK_DISTRICT_ID: TIntegerField;
    ibdsMainRoadSheetWORK_KIND_ID: TIntegerField;
    ibdsMainRoadSheetREAL_START_TIMESTAMP: TDateTimeField;
    ibdsMainRoadSheetREAL_STOP_TIMESTAMP: TDateTimeField;
    ibdsMainRoadSheetSPEEDOMETER_START: TIntegerField;
    ibdsMainRoadSheetSPEEDOMETER_STOP: TIntegerField;
    ibdsMainRoadSheetCOMMENTS: TIBStringField;
    Label8: TLabel;
    Label12: TLabel;
    ibdsRoutes: TIBDataSet;
    dsRoutes: TDataSource;
    ibdsRoutesID_DIRECTION: TIntegerField;
    ibdsRoutesID: TIntegerField;
    ibdsRoutesROUT_NAME: TIBStringField;
    ibdsRoutesCOMMENTS: TIBStringField;
    ibdsRoutesTOWN_MILEAGE: TIntegerField;
    ibdsRoutesSUBURB_MILEAGE: TIntegerField;
    ibdsRoutesHIGHWAY_MILEAGE: TIntegerField;
    ibdsRoutesUNROAD_MILEAGE: TIntegerField;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    RzSeparator2: TRzSeparator;
    edComments: TcxDBMemo;
    Panel6: TPanel;
    Label22: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    RzSeparator1: TRzSeparator;
    edSeries: TcxDBTextEdit;
    edNumber: TcxDBTextEdit;
    deRoadSheetDate: TcxDBDateEdit;
    cbAutomobile: TcxDBLookupComboBox;
    cbDriver: TcxDBLookupComboBox;
    cbWorkKind: TcxDBLookupComboBox;
    cbWorkDistrict: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    edSpeedometerStop: TcxDBTextEdit;
    edSpeedometerStart: TcxDBTextEdit;
    dbgRoadSheetRouts: TcxGrid;
    tvRoadSheetRouts: TcxGridDBTableView;
    tvRoadSheetRoutsTOWN_MILEAGE: TcxGridDBColumn;
    tvRoadSheetRoutsSUBURB_MILEAGE: TcxGridDBColumn;
    tvRoadSheetRoutsHIGHWAY_MILEAGE: TcxGridDBColumn;
    tvRoadSheetRoutsUNROAD_MILEAGE: TcxGridDBColumn;
    tvRoadSheetRoutsCARRIED_FREIGHT: TcxGridDBColumn;
    tvRoadSheetRoutsCOMMENTS: TcxGridDBColumn;
    glRoadSheetRouts: TcxGridLevel;
    dsRoadSheetRouts: TDataSource;
    ibdsRoadSheetRouts: TIBDataSet;
    ibdsRoadSheetRoutsID: TIntegerField;
    ibdsRoadSheetRoutsROAD_SHEET_ID: TIntegerField;
    ibdsRoadSheetRoutsROUT_ID: TIntegerField;
    ibdsRoadSheetRoutsROUT_DIRECTION: TIntegerField;
    ibdsRoadSheetRoutsTOWN_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsSUBURB_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsHIGHWAY_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsUNROAD_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsCOMMENTS: TIBStringField;
    ibdsRoadSheetRoutsROUT_ID_DIRECTION: TIntegerField;
    ibdsMainRoadSheetWINTER_NORM: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    ibdsMainRoadSheetPAYING_TIME: TFloatField;
    ibdsMainRoadSheetsListPAYING_TIME: TFloatField;
    lblMileage: TLabel;
    tvRoadSheetRoutsROUT_ID_DIRECTION: TcxGridDBColumn;
    dbgRoadSheetRoutsLookUpRouts: TcxGridDBTableView;
    ibdsRoutesSHORT_NAME: TIBStringField;
    dbgRoadSheetRoutsLookUpRoutsROUT_NAME: TcxGridDBColumn;
    dbgRoadSheetRoutsLookUpRoutsCOMMENTS: TcxGridDBColumn;
    dbgRoadSheetRoutsLookUpRoutsSHORT_NAME: TcxGridDBColumn;
    ibdsRoadSheetRoutsCARRIED_FREIGHT: TFloatField;
    ibdsMainRoadSheetsListCARRIED_MILEAGE: TFloatField;
    dsMainRoadSheet: TDataSource;
    Label24: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ibdsMainRoadSheetCUSTOMER_ID: TIntegerField;
    ibdsMainRoadSheetsListCUSTOMER_ID: TIntegerField;
    tvRoadSheetsListCUSTOMER_ID: TcxGridDBColumn;
    ibdsWorkCustomers: TIBDataSet;
    dsWorkCustomers: TDataSource;
    ibdsWorkCustomersID: TIntegerField;
    ibdsWorkCustomersCUSTOMER_NAME: TIBStringField;
    tePayingTime: TcxDBTextEdit;
    Label26: TLabel;
    cxTextEdit1: TcxTextEdit;
    ibdsRoadSheetRoutsROUT_COUNT: TIntegerField;
    tvRoadSheetRoutsROUT_COUNT: TcxGridDBColumn;
    tvRoadSheetRoutsTOWN_COUNT: TcxGridDBColumn;
    tvRoadSheetRoutsSUBURB_COUNT: TcxGridDBColumn;
    tvRoadSheetRoutsHIGHWAY_COUNT: TcxGridDBColumn;
    tvRoadSheetRoutsUNROAD_COUNT: TcxGridDBColumn;
    ibdsRoadSheetRoutsTOWN_RESULT_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsSUBURB_RESULT_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsHIGHWAY_RESULT_MILEAGE: TIntegerField;
    ibdsRoadSheetRoutsUNROAD_RESULT_MILEAGE: TIntegerField;
    tvRoadSheetsListMAIN_FUEL_ID: TcxGridDBColumn;
    tvRoadSheetsListSPECIAL_FUEL_NAME: TcxGridDBColumn;
    ibdsAutomobilesCOLUMN_NUMBER: TIntegerField;
    tvRoadSheetsListAUTOMOBILE_ID_COLUMN: TcxGridDBColumn;
    ibdsMainRoadSheetsListCREATE_DATE: TDateTimeField;
    tvRoadSheetsListCREATE_DATE: TcxGridDBColumn;
    glRoadSheetFuels: TcxGridLevel;
    tvRoadSheetFuels: TcxGridDBTableView;
    ibdsMainRoadSheetsListMAIN_FUEL_ID: TIntegerField;
    ibdsMainRoadSheetsListDISTRIBUTED_MAIN_FUEL: TIntegerField;
    ibdsMainRoadSheetsListEATEN_MAIN_FUEL: TFloatField;
    ibdsMainRoadSheetsListSPECIAL_FUELS: TIBStringField;
    ibdsMainRoadSheetsListSPECIAL_TIMES: TIBStringField;
    ibdsMainRoadSheetsListSPECIAL_FUELS_DISTRIBUTED: TIBStringField;
    ibdsMainRoadSheetsListSPECIAL_FUELS_EATEN: TIBStringField;
    ibdsFuel: TIBDataSet;
    dsFuel: TDataSource;
    ibdsFuelID: TIntegerField;
    ibdsFuelNAME: TIBStringField;
    ibdsRoadSheetFuels: TIBDataSet;
    dsRoadSheetFuels: TDataSource;
    ibdsRoadSheetFuelsID: TIntegerField;
    ibdsRoadSheetFuelsROAD_SHEET_ID: TIntegerField;
    ibdsRoadSheetFuelsFUEL_ID: TIntegerField;
    ibdsRoadSheetFuelsIS_FOR_ENGINE: TIntegerField;
    ibdsRoadSheetFuelsFUEL_CONSUMPTION_KM: TFloatField;
    ibdsRoadSheetFuelsFUEL_CONSUMPTION_T_KM: TFloatField;
    ibdsRoadSheetFuelsFUEL_CONSUMPTION_HR: TFloatField;
    ibdsRoadSheetFuelsSPECIAL_TIME: TFloatField;
    ibdsRoadSheetFuelsSTART_AMOUNT: TFloatField;
    ibdsRoadSheetFuelsDISTRIBUTED_AMOUNT: TIntegerField;
    ibdsRoadSheetFuelsEATEN_AMOUNT: TFloatField;
    ibdsRoadSheetFuelsCOMMENTS: TIBStringField;
    tvRoadSheetFuelsFUEL_ID: TcxGridDBColumn;
    tvRoadSheetFuelsIS_FOR_ENGINE: TcxGridDBColumn;
    tvRoadSheetFuelsSPECIAL_TIME: TcxGridDBColumn;
    tvRoadSheetFuelsSTART_AMOUNT: TcxGridDBColumn;
    tvRoadSheetFuelsDISTRIBUTED_AMOUNT: TcxGridDBColumn;
    tvRoadSheetFuelsEATEN_AMOUNT: TcxGridDBColumn;
    tvRoadSheetFuelsCOMMENTS: TcxGridDBColumn;
    ibdsRoadSheetFuelsSTOP_AMOUNT: TFloatField;
    tvRoadSheetFuelsSTOP_AMOUNT: TcxGridDBColumn;
    pmClear: TPopupMenu;
    miClear: TMenuItem;
    ibdsMainRoadSheetsListREAL_STOP_TIMESTAMP: TDateField;
    tvRoadSheetsListREAL_STOP_TIMESTAMP: TcxGridDBColumn;
    ibdsAutomobilesSTATE_NUMBER: TIBStringField;
    ibdsAutomobilesNAME: TIBStringField;
    ibdsAutomobilesGARAGE_NUMBER: TIntegerField;
    ibdsAutomobilesINVENTORY_NUMBER: TIntegerField;
    ibdsDriversKOD: TIntegerField;
    ibdsDriversDRIVER_CARD_NUMBER: TIBStringField;
    ibdsDriversDRIVER_CLASS: TIntegerField;
    ibdsAutomobilesCOLUMN_NAME: TIBStringField;
    ibdsAutomobilesCOLUMN_ADDRESS: TIBStringField;
    ibdsAutomobilesCOLUMN_PHONE: TIBStringField;
    trLock: TIBTransaction;
    pnlMessage: TPanel;
    ibdsMainRoadSheetsListCOLUMN_NUMBER: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure dsMainRoadSheetsListStateChange(Sender: TObject);
    procedure ibdsMainRoadSheetsListAfterDelete(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure tvRoadSheetsListCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure sbFirstRoadSheetsListClick(Sender: TObject);
    procedure sbPriorRoadSheetsListClick(Sender: TObject);
    procedure sbNextRoadSheetsListClick(Sender: TObject);
    procedure sbLastRoadSheetsListClick(Sender: TObject);
    procedure sbDeleteRoadSheetsListClick(Sender: TObject);
    procedure sbApplyRoadSheetsListClick(Sender: TObject);
    procedure sbCancelRoadSheetsListClick(Sender: TObject);
    procedure sbRefreshRoadSheetsListClick(Sender: TObject);
    procedure sbFilterRoadSheetsListClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure NewItemRowSelectorClick(Sender: TObject);
    procedure tvRoadSheetsListDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: String);
    procedure sbFirstRoadSheetRoutsClick(Sender: TObject);
    procedure sbPriorRoadSheetRoutsClick(Sender: TObject);
    procedure sbNextRoadSheetRoutsClick(Sender: TObject);
    procedure sbLastRoadSheetRoutsClick(Sender: TObject);
    procedure sbAddRoadSheetClick(Sender: TObject);
    procedure sbDeleteRoadSheetClick(Sender: TObject);
    procedure sbApplyRoadSheetClick(Sender: TObject);
    procedure sbCancelRoadSheetClick(Sender: TObject);
    procedure ibdsMainRoadSheetNewRecord(DataSet: TDataSet);
    procedure ibdsMainRoadSheetREAL_START_TIMESTAMPChange(Sender: TField);
    procedure tePayingTimeEditing(Sender: TObject; var CanEdit: Boolean);
    procedure ibdsMainRoadSheetAUTOMOBILE_IDChange(Sender: TField);
    procedure dbgRoadSheetRoutsEnter(Sender: TObject);
    procedure ibdsRoadSheetRoutsNewRecord(DataSet: TDataSet);
    procedure ibdsRoadSheetRoutsROUT_ID_DIRECTIONChange(Sender: TField);
    procedure ibdsRoadSheetRoutsAfterDelete(DataSet: TDataSet);
    procedure PageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure ibdsMainRoadSheetBeforeOpen(DataSet: TDataSet);
    procedure sbAddRoadSheetsListClick(Sender: TObject);
    procedure ibdsMainRoadSheetAfterOpen(DataSet: TDataSet);
    procedure edSeriesEnter(Sender: TObject);
    procedure dsRoadSheetRoutsStateChange(Sender: TObject);
    procedure tvRoadSheetRoutsDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure ibdsMainRoadSheetSPEEDOMETER_STARTSetText(Sender: TField;
      const Text: String);
    procedure ibdsMainRoadSheetSPEEDOMETER_STARTChange(Sender: TField);
    procedure sbPrintRoadSheetsListClick(Sender: TObject);
    procedure tvRoadSheetRoutsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvRoadSheetRoutsROUT_ID_DIRECTIONPropertiesPopup(
      Sender: TObject);
    procedure ibdsMainRoadSheetROAD_SHEET_DATEChange(Sender: TField);
    procedure cxDBMaskEdit1PropertiesChange(Sender: TObject);
    procedure dbgRoadSheetRoutsLookUpRoutsKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cxTextEdit1Exit(Sender: TObject);
    procedure ibdsRoadSheetRoutsCalcFields(DataSet: TDataSet);
    procedure ibdsMainRoadSheetSERIESChange(Sender: TField);
    procedure ibdsRoadSheetFuelsNewRecord(DataSet: TDataSet);
    procedure ibdsRoadSheetFuelsCalcFields(DataSet: TDataSet);
    procedure dbgRoadSheetRoutsFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure tvRoadSheetFuelsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tvRoadSheetFuelsCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ibdsRoadSheetFuelsIS_FOR_ENGINEChange(Sender: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure miClearClick(Sender: TObject);
    procedure sbPrintRoadSheetClick(Sender: TObject);
    procedure GetValue(const ParName: String; var ParValue: Variant);
    procedure tsRoadSheetExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainRoadSheetNUMBERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsMainRoadSheetUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
  private
    { Private declarations }
    procedure OpenAll;
    procedure StteChange(Suf: String; Enabled: Boolean);
    procedure GenerateSelectMainRoadSheetsList(WhereSqlMainRoadSheetsList: String);
    procedure GetNumber;
//    function FloatToTimeStr(Value : Double) : String;
    procedure SetReadOnly(CanEdit : Boolean);
  public
    { Public declarations }
  end;

var
  frmRoadSheets: TfrmRoadSheets;

implementation

uses DM, Misk, Routes, Main;

{$R *.dfm}

var RoadSheetID : Integer;
    AutoFill : Boolean;
    TabNumbEdited : Boolean = False;
    
procedure TfrmRoadSheets.FormCreate(Sender: TObject);
begin
 FName := 'Путевые листы';
 inherited;
 If (PageControl1.ActivePage<>tsRoadSheetsList) then
  PageControl1.ActivePage := tsRoadSheetsList;
 OpenAll
end;

procedure TfrmRoadSheets.OpenAll;
begin
 If NOT (trMain.InTransaction) then
  trMain.StartTransaction;
 ibdsWorkDistricts.Open;
 ibdsWorkCustomers.Open;
 ibdsWorkKinds.Open;
 ibdsDrivers.Open;
 ibdsAutomobiles.Open;
 ibdsFuel.Open;
 If (PageControl1.ActivePage=tsRoadSheetsList) then
  Begin
   ibdsMainRoadSheetsList.Open;
   ibdsMainRoadSheet.Close;
   ibdsRoadSheetRouts.Close;
   ibdsRoadSheetFuels.Close;
   ibdsRoutes.Close;
   GridPopupMenu2.Grid := dbgRoadSheetsList;
  End
 else
  Begin
   ibdsMainRoadSheet.Open;
   ibdsRoadSheetRouts.Open;
   ibdsRoadSheetFuels.Open;
   ibdsRoutes.Open;
   GridPopupMenu2.Grid := dbgRoadSheetRouts
  End;
 GetNumber  
end;

procedure TfrmRoadSheets.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 TSpeedButton(FindComponent('sbApply'+Suf)).Enabled := Enabled;
 TSpeedButton(FindComponent('sbCancel'+Suf)).Enabled := Enabled;
 TSpeedButton(FindComponent('sbPrint'+Suf)).Enabled := Not Enabled;
 For k := 0 to Pred(PageControl1.PageCount) do
  If (PageControl1.Pages[k].Name<>'ts'+Suf) then
   PageControl1.Pages[k].Enabled := NOT Enabled;
end;

procedure TfrmRoadSheets.dsMainRoadSheetsListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending or ibdsRoadSheetRouts.UpdatesPending or ibdsRoadSheetFuels.UpdatesPending);
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetsListAfterDelete(DataSet: TDataSet);
begin
 StteChange(Copy(DataSet.Name,9,Length(DataSet.Name)-8), True)
end;

procedure TfrmRoadSheets.PageControl1Change(Sender: TObject);
begin
 OpenAll;
 If (PageControl1.ActivePage=tsRoadSheet) then
  edNumber.SetFocus
end;

procedure TfrmRoadSheets.tvRoadSheetsListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmRoadSheets.sbFirstRoadSheetsListClick(Sender: TObject);
begin
 (dbgRoadSheetsList.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmRoadSheets.sbPriorRoadSheetsListClick(Sender: TObject);
begin
 With (dbgRoadSheetsList.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmRoadSheets.sbNextRoadSheetsListClick(Sender: TObject);
begin
 With (dbgRoadSheetsList.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmRoadSheets.sbLastRoadSheetsListClick(Sender: TObject);
begin
 With (dbgRoadSheetsList.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmRoadSheets.sbDeleteRoadSheetsListClick(Sender: TObject);
begin
 If (MessageDlg('Удалить путевой лист?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  ibdsMainRoadSheetsList.Delete
end;

procedure TfrmRoadSheets.sbApplyRoadSheetsListClick(Sender: TObject);
 var BookMark : String;
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
//  try
   PostIfNeeded(ibdsMainRoadSheetsList);
   BookMark := ibdsMainRoadSheetsList.Bookmark;
   ibdsMainRoadSheetsList.ApplyUpdates;
   trMain.Commit;
   OpenAll;
   StteChange('RoadSheetsList', False)
{  except
   trMain.RollbackRetaining;
   MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)}
  End;
 ibdsMainRoadSheetsList.Bookmark := BookMark
end;

procedure TfrmRoadSheets.sbCancelRoadSheetsListClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMainRoadSheetsList.CancelUpdates;
   StteChange('RoadSheetsList', False)
  End
end;

procedure TfrmRoadSheets.sbRefreshRoadSheetsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainRoadSheetsList.Bookmark;
 trMain.Commit;
 OpenAll;
 try
  ibdsMainRoadSheetsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmRoadSheets.sbFilterRoadSheetsListClick(Sender: TObject);
begin
 tvRoadSheetsList.Filtering.RunCustomizeDialog(Nil)
end;

procedure TfrmRoadSheets.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRoadSheets.NewItemRowSelectorClick(Sender: TObject);
begin
 tvRoadSheetRouts.OptionsView.NewItemRow := (Sender as TMenuItem).Checked
end;

procedure TfrmRoadSheets.tvRoadSheetsListDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: String);
begin
 GenerateSelectMainRoadSheetsList(AFilterText)
end;

procedure TfrmRoadSheets.GenerateSelectMainRoadSheetsList(WhereSqlMainRoadSheetsList: String);
begin
 WhereSqlMainRoadSheetsList := ReplaceStr(WhereSqlMainRoadSheetsList,'<>','!=');
 WhereSqlMainRoadSheetsList := ReplaceStr(WhereSqlMainRoadSheetsList,' = NULL',' is NULL');
 WhereSqlMainRoadSheetsList := ReplaceStr(WhereSqlMainRoadSheetsList,'CARRIED_MILEAGE','(select SUM(RSR2.CARRIED_FREIGHT*(RSR2.HIGHWAY_MILEAGE+RSR2.SUBURB_MILEAGE+RSR2.TOWN_MILEAGE+RSR2.UNROAD_MILEAGE)) from ROAD_SHEET_ROUTS RSR2 where (RSR2.ROAD_SHEET_ID=RS.ID))');
 WhereSqlMainRoadSheetsList := ReplaceStr(WhereSqlMainRoadSheetsList,'TOTAL_MILLEAGE','RS.SPEEDOMETER_STOP-RS.SPEEDOMETER_START');
 WhereSqlMainRoadSheetsList := ReplaceStr(WhereSqlMainRoadSheetsList,'CREATE_DATE','cast(RS.CREATE_DATE as DATE)');
 ibdsMainRoadSheetsList.DisableControls;
 try
  ibdsMainRoadSheetsList.Close;
  If (WhereSqlMainRoadSheetsList<>'') and (tvRoadSheetsList.DataController.Filter.Active) then
   ibdsMainRoadSheetsList.SelectSQL[9] := 'where '+WhereSqlMainRoadSheetsList;
  ibdsMainRoadSheetsList.Open
 finally
  ibdsMainRoadSheetsList.EnableControls
 end
end;

procedure TfrmRoadSheets.sbFirstRoadSheetRoutsClick(Sender: TObject);
begin
 (dbgRoadSheetRouts.FocusedView as TcxGridDBTableView).Controller.FocusedRowIndex := 0
end;

procedure TfrmRoadSheets.sbPriorRoadSheetRoutsClick(Sender: TObject);
begin
 With (dbgRoadSheetRouts.FocusedView as TcxGridDBTableView) do
  If (Controller.FocusedRowIndex>0) then
   Controller.FocusedRowIndex := Pred(Controller.FocusedRowIndex)
end;

procedure TfrmRoadSheets.sbNextRoadSheetRoutsClick(Sender: TObject);
begin
 With (dbgRoadSheetRouts.FocusedView as TcxGridDBTableView) do
  If NOT(Succ(Controller.FocusedRowIndex)>ViewData.RowCount) then
   Controller.FocusedRowIndex := Succ(Controller.FocusedRowIndex)
end;

procedure TfrmRoadSheets.sbLastRoadSheetRoutsClick(Sender: TObject);
begin
 With (dbgRoadSheetRouts.FocusedView as TcxGridDBTableView) do
  Controller.FocusedRowIndex := Pred(ViewData.RowCount)
end;

procedure TfrmRoadSheets.sbAddRoadSheetClick(Sender: TObject);
begin
 edComments.DataBinding.DataSource.DataSet.Append
end;

procedure TfrmRoadSheets.sbDeleteRoadSheetClick(Sender: TObject);
begin
 If (edComments.DataBinding.DataSource.DataSet.RecordCount>0) and (edComments.DataBinding.DataSource<>dsRoadSheetFuels) then
  edComments.DataBinding.DataSource.DataSet.Delete
end;

procedure TfrmRoadSheets.sbApplyRoadSheetClick(Sender: TObject);
 var I: Integer;
     HasFuelConsumption : Boolean;
begin
 PostIfNeeded(ibdsMainRoadSheet);
 With ibdsRoadSheetRouts do
  Begin
   DisableControls;
   First;
   While Not (EOF) do
    Begin
     If (ibdsRoadSheetRoutsTOWN_RESULT_MILEAGE.AsInteger=0) and
        (ibdsRoadSheetRoutsSUBURB_RESULT_MILEAGE.AsInteger=0) and
        (ibdsRoadSheetRoutsHIGHWAY_RESULT_MILEAGE.AsInteger=0) and
        (ibdsRoadSheetRoutsUNROAD_RESULT_MILEAGE.AsInteger=0) then
      Begin
       Delete;
       First
      End;
     Next
    End;
   EnableControls
  End;
 PostIfNeeded(ibdsRoadSheetRouts);
 If (tvRoadSheetRouts.DataController.Summary.FooterSummaryValues[4]<>'OK') then
  Begin
   MessageDlg('Показания спидометра несбалансированны со значениями маршрутов.',mtError,[mbOK],0);
   Exit
  End;
 If Not(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.IsNull) then
  Begin
   If (ibdsRoadSheetRouts.RecordCount=0) then
    Begin
     dbgRoadSheetRouts.SetFocus;
     glRoadSheetRouts.Active := True;
     MessageDlg('Не заполнен список маршрутов.',mtError,[mbOK],0);
     Exit
    End;
   HasFuelConsumption := False;
   For I := 0 to Pred(tvRoadSheetFuels.DataController.RowCount) do    // Iterate
    Begin
     If (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsDISTRIBUTED_AMOUNT.Index]<0) or
        (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsEATEN_AMOUNT.Index]<0) or
        (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsSTART_AMOUNT.Index]<0) then
      Begin
       dbgRoadSheetRouts.SetFocus;
       glRoadSheetFuels.Active := True;
       MessageDlg('Поля "Остаток при выезде", "Выдано" и "Израсходовано" не могут иметь отрицательные значения.',mtError,[mbOK],0);
       Exit
      End;    // for
     HasFuelConsumption := HasFuelConsumption or
                           (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsEATEN_AMOUNT.Index]>0) or
                           (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsDISTRIBUTED_AMOUNT.Index]>0)
    End;
   If Not(HasFuelConsumption) then
    Begin
     dbgRoadSheetRouts.SetFocus;
     glRoadSheetFuels.Active := True;
     MessageDlg('Нет положительного расхода или выдачи топлива.',mtError,[mbOK],0);
     Exit
    End
  End;
 If (MessageDlg('Сохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
//  try
   ibdsMainRoadSheet.ApplyUpdates;
   RoadSheetID := ibdsMainRoadSheetID.AsInteger;
   ibdsRoadSheetRouts.ApplyUpdates;
   ibdsRoadSheetFuels.ApplyUpdates;
   If (ibdsMainRoadSheetID.AsString<>'') then
    Begin
     ibsGen_ID.SQL.Clear;
     ibsGen_ID.SQL.Add('update ROAD_SHEET_FUELS set EATEN_AMOUNT=cast(EATEN_AMOUNT as integer) where (ROAD_SHEET_ID='+ibdsMainRoadSheetID.AsString+')');
     ibsGen_ID.ExecQuery
    End;
   trMain.Commit;
   OpenAll;
   StteChange('RoadSheet', False);
   tvRoadSheetRouts.Invalidate(True);  //вставлено из-за глюка грида - не прорисовывается лукап поле после сохранения 
{  except
   trMain.RollbackRetaining;
   MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)}
  End
end;

procedure TfrmRoadSheets.sbCancelRoadSheetClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsRoadSheetRouts.CancelUpdates;
   ibdsRoadSheetFuels.CancelUpdates;
   ibdsMainRoadSheet.CancelUpdates;
   ibdsMainRoadSheetAfterOpen(ibdsMainRoadSheet);   
   StteChange('RoadSheet', False)
  End
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetNewRecord(DataSet: TDataSet);
begin
 ibdsMainRoadSheetID.Value := GetNewID(ibsGen_ID,'GEN_ROAD_SHEETS_ID');
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select first 1 RS.SERIES, RS.ROAD_SHEET_DATE from ROAD_SHEETS RS order by 2 desc');
 ibsGen_ID.ExecQuery;
 ibdsMainRoadSheetSERIES.Value := ibsGen_ID.FieldByName('SERIES').AsString;
 ibsGen_ID.Close;
 ibdsMainRoadSheetROAD_SHEET_DATE.Value := Today;
 tePayingTime.Style.Shadow := True;
 ibdsMainRoadSheetREAL_START_TIMESTAMP.Value := ibdsMainRoadSheetROAD_SHEET_DATE.Value+
                                                EncodeTime(8,0,0,0);
// ibdsMainRoadSheetREAL_STOP_TIMESTAMP.Value := ibdsMainRoadSheetREAL_START_TIMESTAMP.Value+
//                                                EncodeTime(9,0,0,0);
 ibdsMainRoadSheetWINTER_NORM.Value := 0;
 dbgRoadSheetRouts.FocusedView := tvRoadSheetRouts;
 edSeries.SetFocus;
 SetReadOnly(True)
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetREAL_START_TIMESTAMPChange(
  Sender: TField);
 var HourStart, MinStart, Sec, HourStop, MinStop: Word;
begin
 If Not(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.IsNull) then
  Begin
   If (ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat<>0) and
      (ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat<>0) and (tePayingTime.Style.Shadow) then
    Begin
     If (Int(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat)<>
         Int(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat)) then
      ibdsMainRoadSheetPAYING_TIME.Value := Succ(Trunc(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat)-
                                                 Trunc(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat))*
                                            WorkDayLength
     else
      Begin
       DecodeTime(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsDateTime,HourStart,MinStart,Sec,Sec);
       DecodeTime(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsDateTime,HourStop,MinStop,Sec,Sec);
       If (HourStart<13) then
        ibdsMainRoadSheetPAYING_TIME.Value := (HourStop-HourStart-1)+(MinStop-MinStart)/60
       else
        ibdsMainRoadSheetPAYING_TIME.Value := (HourStop-HourStart)+(MinStop-MinStart)/60
       // -1 - учитывается перерыв на обед
      End
    End;
  End
 else
  ibdsMainRoadSheetPAYING_TIME.Clear;
 If Not(tvRoadSheetRouts.OptionsData.Appending) then
  SetReadOnly(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.IsNull)
end;

procedure TfrmRoadSheets.tePayingTimeEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
 tePayingTime.Style.Shadow := False
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetAUTOMOBILE_IDChange(
  Sender: TField);
 var ibsLocalAux, ibsLocalAuxStart : TIBSQL;
     I: Integer;
     CheckFuels : Boolean;

 procedure AddFueil(FuelID, IsForEngine : Integer; FuelConsumptionKM, FuelConsumptionTKM, FuelConsumptionHR : Double);
 begin
  If (ibdsRoadSheetFuels.Locate('FUEL_ID;IS_FOR_ENGINE',VarArrayOf([FuelID,IsForEngine]),[])) then
   ibdsRoadSheetFuels.Edit
  else
   Begin
    ibdsRoadSheetFuels.Append;
    ibdsRoadSheetFuelsFUEL_ID.Value := FuelID;
   End;
  ibdsRoadSheetFuelsIS_FOR_ENGINE.Value := IsForEngine;
  ibdsRoadSheetFuelsFUEL_CONSUMPTION_KM.Value := FuelConsumptionKM;
  ibdsRoadSheetFuelsFUEL_CONSUMPTION_T_KM.Value := FuelConsumptionTKM;
  ibdsRoadSheetFuelsFUEL_CONSUMPTION_HR.Value := FuelConsumptionHR;
  ibsLocalAuxStart.GenerateParamNames := True;
  ibsLocalAuxStart.ParamByName('FUEL_ID').Value := FuelID;
  ibsLocalAuxStart.ParamByName('IS_FOR_ENGINE').Value := IsForEngine;
  ibsLocalAuxStart.ExecQuery;
  ibdsRoadSheetFuelsSTART_AMOUNT.Value := ibsLocalAuxStart.Fields[0].AsDouble;
  ibsLocalAuxStart.Close
 end;

begin
 StteChange('RoadSheet', True);
 If Not(ibdsMainRoadSheetAUTOMOBILE_ID.IsNull) then
  Begin
   CheckFuels := (ibdsRoadSheetFuels.RecordCount>0);
   ibsLocalAuxStart := TIBSQL.Create(Nil);
   ibsLocalAuxStart.Database := ibdsMainRoadSheet.Database;
   ibsLocalAuxStart.Transaction := ibdsMainRoadSheet.Transaction;
   ibsLocalAuxStart.SQL.Clear;
   ibsLocalAuxStart.SQL.Add('select first 1 (RSF.START_AMOUNT+RSF.DISTRIBUTED_AMOUNT-RSF.EATEN_AMOUNT) START_AMOUNT');
   ibsLocalAuxStart.SQL.Add('from ROAD_SHEETS RS, ROAD_SHEET_FUELS RSF');
   ibsLocalAuxStart.SQL.Add('where (RS.AUTOMOBILE_ID='+ibdsMainRoadSheetAUTOMOBILE_ID.AsString+
   ') and (RS.ROAD_SHEET_DATE<'''+FormatDateTime('dd.mm.yyyy',ibdsMainRoadSheetROAD_SHEET_DATE.AsDateTime)+''') and (RSF.FUEL_ID=:FUEL_ID) and');
   ibsLocalAuxStart.SQL.Add('(RSF.ROAD_SHEET_ID=RS.ID) and (RSF.IS_FOR_ENGINE=:IS_FOR_ENGINE)');
   ibsLocalAuxStart.SQL.Add('order by RS.ROAD_SHEET_DATE desc, RS.NUMBER desc');
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibdsMainRoadSheet.Database;
   ibsLocalAux.Transaction := ibdsMainRoadSheet.Transaction;
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('select AF.FUEL_ID, AF.IS_FOR_ENGINE, AF.IS_FOR_OVERS, AF.FUEL_CONSUMPTION_KM, AF.FUEL_CONSUMPTION_T_KM, AF.FUEL_CONSUMPTION_HR from AUTOMOBILE_FUELS AF where (AF.AUTOMOBILE_ID='+ibdsMainRoadSheetAUTOMOBILE_ID.AsString+') order by 2 desc,3 desc');
   ibsLocalAux.ExecQuery;
   While Not(ibsLocalAux.Eof) do
    Begin
     If (ibsLocalAux.FieldByName('IS_FOR_ENGINE').AsInteger=1) then
      AddFueil(ibsLocalAux.FieldByName('FUEL_ID').AsInteger, 1, ibsLocalAux.FieldByName('FUEL_CONSUMPTION_KM').AsDouble, ibsLocalAux.FieldByName('FUEL_CONSUMPTION_T_KM').AsDouble, 0);
     If (ibsLocalAux.FieldByName('IS_FOR_OVERS').AsInteger=1) then
      AddFueil(ibsLocalAux.FieldByName('FUEL_ID').AsInteger, 0, 0, 0, ibsLocalAux.FieldByName('FUEL_CONSUMPTION_HR').AsDouble);
     ibsLocalAux.Next
    End;  // while
   ibsLocalAux.Close;
   If (CheckFuels) then
    For I := Pred(tvRoadSheetFuels.DataController.RowCount) downto 0 do  // Iterate
     Begin
      ibsLocalAux.SQL.Clear;
      ibsLocalAux.SQL.Add('select count(*) from AUTOMOBILE_FUELS AF where (AF.AUTOMOBILE_ID='+ibdsMainRoadSheetAUTOMOBILE_ID.AsString+') and (AF.FUEL_ID='+VarAsType(tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsFUEL_ID.Index],varString)+') and ');
      If (tvRoadSheetFuels.DataController.Values[I,tvRoadSheetFuelsIS_FOR_ENGINE.Index]=1) then
       ibsLocalAux.SQL.Add('(AF.IS_FOR_ENGINE=1)')
      else
       ibsLocalAux.SQL.Add('(AF.IS_FOR_OVERS=1)');
      ibsLocalAux.ExecQuery;
      If (ibsLocalAux.Fields[0].AsInteger=0) then
       tvRoadSheetFuels.DataController.DeleteRecord(I);
      ibsLocalAux.Close
     End;  // for
   ibsLocalAux.Free;
   ibsLocalAuxStart.Free
  End
end;

procedure TfrmRoadSheets.dbgRoadSheetRoutsEnter(Sender: TObject);
begin
 edComments.DataBinding.DataSource := TcxGridDBTableView(dbgRoadSheetRouts.FocusedView).DataController.DataSource
end;

procedure TfrmRoadSheets.ibdsRoadSheetRoutsNewRecord(DataSet: TDataSet);
begin
 ibdsRoadSheetRoutsID.Value := GetNewID(ibsGen_ID,'GEN_ROAD_SHEET_ROUTS_ID');
 ibdsRoadSheetRoutsROAD_SHEET_ID.Value := ibdsMainRoadSheetID.Value;
 ibdsRoadSheetRoutsCARRIED_FREIGHT.Value := 0;
 ibdsRoadSheetRoutsROUT_COUNT.Value := 1
end;

procedure TfrmRoadSheets.ibdsRoadSheetRoutsROUT_ID_DIRECTIONChange(
  Sender: TField);
begin
 ibdsRoadSheetRoutsROUT_ID.Value := Abs(ibdsRoadSheetRoutsROUT_ID_DIRECTION.AsInteger);
 ibdsRoadSheetRoutsROUT_DIRECTION.Value := Sign(ibdsRoadSheetRoutsROUT_ID_DIRECTION.AsInteger);
 ibdsRoutes.Locate('ID_DIRECTION',ibdsRoadSheetRoutsROUT_ID_DIRECTION.Value,[]);
 ibdsRoadSheetRoutsTOWN_MILEAGE.Value := ibdsRoutesTOWN_MILEAGE.Value;
 ibdsRoadSheetRoutsSUBURB_MILEAGE.Value := ibdsRoutesSUBURB_MILEAGE.Value;
 ibdsRoadSheetRoutsHIGHWAY_MILEAGE.Value := ibdsRoutesHIGHWAY_MILEAGE.Value;
 ibdsRoadSheetRoutsUNROAD_MILEAGE.Value := ibdsRoutesUNROAD_MILEAGE.Value;
 If (ibdsRoutesCOMMENTS.AsString<>'') then
  If (ibdsRoadSheetRoutsCOMMENTS.AsString='') then
   ibdsRoadSheetRoutsCOMMENTS.Value := ibdsRoutesCOMMENTS.AsString
  else
   ibdsRoadSheetRoutsCOMMENTS.Value := ibdsRoadSheetRoutsCOMMENTS.AsString+#13#10+
                                       ibdsRoutesCOMMENTS.AsString
end;

procedure TfrmRoadSheets.ibdsRoadSheetRoutsAfterDelete(DataSet: TDataSet);
begin
 StteChange('RoadSheet', True)
end;

procedure TfrmRoadSheets.PageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 If (PageControl1.ActivePage=tsRoadSheetsList) then
  RoadSheetID := ibdsMainRoadSheetsListID.AsInteger;
 AllowChange := True
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetBeforeOpen(DataSet: TDataSet);
begin
 ibdsMainRoadSheet.ParamByName('ID').AsInteger := RoadSheetID 
end;

procedure TfrmRoadSheets.sbAddRoadSheetsListClick(Sender: TObject);
begin
 PageControl1.ActivePage := tsRoadSheet;
 PageControl1Change(PageControl1);
 sbAddRoadSheet.Click
end;

procedure TfrmRoadSheets.SetReadOnly(CanEdit : Boolean);
 var I: Integer;
begin
 For I := 0 to Pred(frmRoadSheets.ComponentCount) do  // Iterate
  Begin
   If (frmRoadSheets.Components[I] is TcxCustomTextEdit) then
    TcxCustomTextEdit(frmRoadSheets.Components[I]).Properties.ReadOnly := Not CanEdit
  End;  // for
 tvRoadSheetRouts.OptionsData.Appending := CanEdit;
 tvRoadSheetRouts.OptionsData.Inserting := CanEdit;
 tvRoadSheetRouts.OptionsData.Editing := CanEdit;
 tvRoadSheetRouts.OptionsData.Deleting := CanEdit;
 tvRoadSheetFuels.OptionsData.Editing := CanEdit
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetAfterOpen(DataSet: TDataSet);
 var HourStart, MinStart, Sec, HourStop, MinStop: Word;
begin
 If (ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat<>0) and
    (ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat<>0) then
  Begin
   If (Int(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat)<>
       Int(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat)) then
    tePayingTime.Style.Shadow := (ibdsMainRoadSheetPAYING_TIME.Value=Succ(Trunc(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsFloat)-
                                                                          Trunc(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsFloat))*WorkDayLength)
   else
    Begin
     DecodeTime(ibdsMainRoadSheetREAL_START_TIMESTAMP.AsDateTime,HourStart,MinStart,Sec,Sec);
     DecodeTime(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.AsDateTime,HourStop,MinStop,Sec,Sec);
     If (HourStart<13) then
      tePayingTime.Style.Shadow := (ibdsMainRoadSheetPAYING_TIME.Value=(HourStop-HourStart-1)+(MinStop-MinStart)/60)
     else
      tePayingTime.Style.Shadow := (ibdsMainRoadSheetPAYING_TIME.Value=(HourStop-HourStart)+(MinStop-MinStart)/60)
     // -1 - учитывается перерыв на обед
    End
  End
 else
  tePayingTime.Style.Shadow := True;
 dbgRoadSheetRouts.FocusedView := tvRoadSheetRouts;
 SetReadOnly(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.IsNull)
end;

procedure TfrmRoadSheets.edSeriesEnter(Sender: TObject);
begin
 edComments.DataBinding.DataSource := dsMainRoadSheet
end;

procedure TfrmRoadSheets.dsRoadSheetRoutsStateChange(Sender: TObject);
begin
 If (dsRoadSheetRouts.State<>dsInactive) then
  If (dsRoadSheetRouts.State in [dsEdit,dsInsert]) or (dsRoadSheetFuels.State in [dsEdit,dsInsert]) then
   StteChange('RoadSheet', True)
  else
   StteChange('RoadSheet', ibdsMainRoadSheet.UpdatesPending or ibdsRoadSheetRouts.UpdatesPending or ibdsRoadSheetFuels.UpdatesPending)
end;

procedure TfrmRoadSheets.tvRoadSheetRoutsDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
 var SpeedometerPath, RoutsPath : Integer;
begin
 SpeedometerPath := ibdsMainRoadSheetSPEEDOMETER_STOP.AsInteger-ibdsMainRoadSheetSPEEDOMETER_START.AsInteger;
 lblMileage.Caption := 'пробег '+IntToStr(SpeedometerPath)+' км';
 RoutsPath := 0;
 If VarIsNumeric(ASender.FooterSummaryValues[0]) then
  RoutsPath := RoutsPath+ASender.FooterSummaryValues[0];
 If VarIsNumeric(ASender.FooterSummaryValues[1]) then
  RoutsPath := RoutsPath+ASender.FooterSummaryValues[1];
 If VarIsNumeric(ASender.FooterSummaryValues[2]) then
  RoutsPath := RoutsPath+ASender.FooterSummaryValues[2];
 If VarIsNumeric(ASender.FooterSummaryValues[3]) then
  RoutsPath := RoutsPath+ASender.FooterSummaryValues[3];
 If (SpeedometerPath=RoutsPath) then
  ASender.FooterSummaryValues[4] := 'OK'
 else
  Begin
   If (SpeedometerPath>RoutsPath) then
    ASender.FooterSummaryValues[4] := 'Показания спидометра больше на '
   else
    ASender.FooterSummaryValues[4] := 'Показания спидометра меньше на ';
   ASender.FooterSummaryValues[4] := ASender.FooterSummaryValues[4]+IntToStr(Abs(SpeedometerPath-RoutsPath))+' км'
  End
end;

{function TfrmRoadSheets.FloatToTimeStr(Value : Double) : String;
 var Min, Sec : Word;
begin
 DecodeTime(Frac(Value/24),Sec,Min,Sec,Sec);
 Result := IntToStr(Trunc(Value))+TimeSeparator+FormatFloat('00',Min)
end;}

procedure TfrmRoadSheets.ibdsMainRoadSheetSPEEDOMETER_STARTSetText(
  Sender: TField; const Text: String);
 var S : String;
begin
 S := ThousandSeparator;
 Sender.AsString := StringReplace(Text,S,'',[rfReplaceAll])
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetSPEEDOMETER_STARTChange(
  Sender: TField);
begin
 StteChange('RoadSheet', True);
 tvRoadSheetRoutsDataControllerSummaryAfterSummary(tvRoadSheetRouts.DataController.Summary)
end;

procedure TfrmRoadSheets.sbPrintRoadSheetsListClick(Sender: TObject);
begin
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, nil);
end;

procedure TfrmRoadSheets.tvRoadSheetRoutsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 Case Key of
  vk_F6 : Begin
           If (frmMain.FindComponent('frmRoutes')=nil) then
            frmRoutes := TfrmRoutes.Create(frmMain);
           If NOT (ibdsRoadSheetRoutsID.IsNull) then
            frmRoutes.ibdsMainRoutes.Locate('ID',ibdsRoadSheetRoutsROUT_ID.Value,[]);
           frmRoutes.Show
          End;
 End
end;

procedure TfrmRoadSheets.tvRoadSheetRoutsROUT_ID_DIRECTIONPropertiesPopup(
  Sender: TObject);
begin
 dbgRoadSheetRoutsLookUpRoutsROUT_NAME.Focused := True
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetROAD_SHEET_DATEChange(
  Sender: TField);
begin
 StteChange('RoadSheet', True);
 If (ibdsMainRoadSheet.State=dsInsert) and
     NOT(ibdsMainRoadSheetREAL_START_TIMESTAMP.IsNull) then
  Begin
   ibdsMainRoadSheetREAL_START_TIMESTAMP.Value := ibdsMainRoadSheetROAD_SHEET_DATE.Value+
                                                  TimeOf(ibdsMainRoadSheetREAL_START_TIMESTAMP.Value);
   ibdsMainRoadSheetREAL_STOP_TIMESTAMP.Value := ibdsMainRoadSheetROAD_SHEET_DATE.Value+
                                                 TimeOf(ibdsMainRoadSheetREAL_STOP_TIMESTAMP.Value)
  End
end;

procedure TfrmRoadSheets.cxDBMaskEdit1PropertiesChange(Sender: TObject);
 var CurrentValue : TDateTime;
begin
 If Not AutoFill and Not((Sender as TcxDBMaskEdit).DataBinding.DataSource.DataSet.FieldByName((Sender as TcxDBMaskEdit).DataBinding.DataField).IsNull) then
  Begin
   CurrentValue := (Sender as TcxDBMaskEdit).DataBinding.DataSource.DataSet.FieldByName((Sender as TcxDBMaskEdit).DataBinding.DataField).AsDateTime;
   AutoFill := True;
   (Sender as TcxDBMaskEdit).EditingText := (Sender as TcxDBMaskEdit).EditingText+Copy(FormatDateTime('dd.mm.yy hh:nn',CurrentValue),Succ(Length((Sender as TcxDBMaskEdit).EditingText)),40);
   AutoFill := False
  End
end;

procedure TfrmRoadSheets.dbgRoadSheetRoutsLookUpRoutsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=vk_Return) then
  Key := vk_Control+vk_Return
end;

procedure TfrmRoadSheets.cxTextEdit1Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
 TabNumbEdited := True
end;

procedure TfrmRoadSheets.cxTextEdit1Exit(Sender: TObject);
begin
 If (TabNumbEdited) then
  Begin
   ibsGen_ID.Close;
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select P.ID from PERSONS P where (P.KOD='+(Sender as TcxTextEdit).Text+')');
   ibsGen_ID.ExecQuery;
   If (ibsGen_ID.RecordCount>0) and
      (ibdsMainRoadSheetDRIVER_ID.AsInteger<>ibsGen_ID.FieldByName('ID').AsInteger) then
    Begin
     If Not (ibdsMainRoadSheet.State in [dsInsert,dsEdit]) then
      ibdsMainRoadSheet.Edit;
     ibdsMainRoadSheetDRIVER_ID.Value := ibsGen_ID.FieldByName('ID').AsInteger
    End;
   ibsGen_ID.Close;
   TabNumbEdited := False
  End
end;

procedure TfrmRoadSheets.GetNumber;
 var ibsLocalAux : TIBSQL;
begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsMainRoadSheetsList.Database;
 ibsLocalAux.Transaction := ibdsMainRoadSheetsList.Transaction;
 ibsLocalAux.SQL.Add('select count(*) from ROAD_SHEETS RS where (RS.CREATE_DATE>current_date) and (RS.CREATOR=current_user)');
 ibsLocalAux.ExecQuery;
 Caption := 'Путевые листы / Вами за сегодня введено '+ibsLocalAux.Fields[0].AsString+' путевых листов';
 ibsLocalAux.Close;
 ibsLocalAux.Free
end;

procedure TfrmRoadSheets.ibdsRoadSheetRoutsCalcFields(DataSet: TDataSet);
begin
 ibdsRoadSheetRoutsTOWN_RESULT_MILEAGE.Value := ibdsRoadSheetRoutsTOWN_MILEAGE.AsInteger* ibdsRoadSheetRoutsROUT_COUNT.AsInteger;
 ibdsRoadSheetRoutsSUBURB_RESULT_MILEAGE.Value := ibdsRoadSheetRoutsSUBURB_MILEAGE.AsInteger* ibdsRoadSheetRoutsROUT_COUNT.AsInteger;
 ibdsRoadSheetRoutsHIGHWAY_RESULT_MILEAGE.Value := ibdsRoadSheetRoutsHIGHWAY_MILEAGE.AsInteger* ibdsRoadSheetRoutsROUT_COUNT.AsInteger;
 ibdsRoadSheetRoutsUNROAD_RESULT_MILEAGE.Value := ibdsRoadSheetRoutsUNROAD_MILEAGE.AsInteger* ibdsRoadSheetRoutsROUT_COUNT.AsInteger
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetSERIESChange(Sender: TField);
begin
 StteChange('RoadSheet', True)
end;

procedure TfrmRoadSheets.ibdsRoadSheetFuelsNewRecord(DataSet: TDataSet);
begin
 ibdsRoadSheetFuelsID.Value := GetNewID(ibsGen_ID,'GEN_ROAD_SHEET_FUELS_ID');
 ibdsRoadSheetFuelsROAD_SHEET_ID.Value := ibdsMainRoadSheetID.Value;
 ibdsRoadSheetFuelsSPECIAL_TIME.Value := 0;
 ibdsRoadSheetFuelsDISTRIBUTED_AMOUNT.Value := 0;
 ibdsRoadSheetFuelsEATEN_AMOUNT.Value := 0;
end;

procedure TfrmRoadSheets.ibdsRoadSheetFuelsCalcFields(DataSet: TDataSet);
begin
 ibdsRoadSheetFuelsSTOP_AMOUNT.Value := ibdsRoadSheetFuelsSTART_AMOUNT.AsInteger+ibdsRoadSheetFuelsDISTRIBUTED_AMOUNT.AsInteger-ibdsRoadSheetFuelsEATEN_AMOUNT.AsInteger
end;

procedure TfrmRoadSheets.dbgRoadSheetRoutsFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 edComments.DataBinding.DataSource := TcxGridDBTableView(AFocusedView).DataController.DataSource
end;

procedure TfrmRoadSheets.tvRoadSheetFuelsEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 If (AItem=tvRoadSheetFuelsSPECIAL_TIME) then
  AAllow := tvRoadSheetFuels.DataController.Values[tvRoadSheetFuels.DataController.FocusedRecordIndex,tvRoadSheetFuelsIS_FOR_ENGINE.Index]=0;
end;

procedure TfrmRoadSheets.tvRoadSheetFuelsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(Assigned((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field)) or
    (AViewInfo.Item as TcxGridColumn).IsPreview then
  Exit;
 If NOT(AviewInfo.Selected) then
  Begin
   If (AViewInfo.Item.Options.Editing) then
    Begin
     ACanvas.Brush.Color := clWindow;
     If (AViewInfo.Item=tvRoadSheetFuelsSPECIAL_TIME) and
        (tvRoadSheetFuels.DataController.Values[AViewInfo.GridRecord.RecordIndex,tvRoadSheetFuelsIS_FOR_ENGINE.Index]=1) then
      ACanvas.Brush.Color := ColorUnModify
    End
   else
    ACanvas.Brush.Color := ColorUnModify
  End
end;

procedure TfrmRoadSheets.ibdsRoadSheetFuelsIS_FOR_ENGINEChange(
  Sender: TField);
begin
 If (Sender.AsInteger=1) then
  ibdsRoadSheetFuelsSPECIAL_TIME.Value := 0
end;

procedure TfrmRoadSheets.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=ord('V')) and (Shift=[ssAlt]) and (PageControl1.ActivePage=tsRoadSheet) then
  Begin
   dbgRoadSheetRouts.ActiveLevel := glRoadSheetRouts;
   dbgRoadSheetRouts.SetFocus
  End;
 If (Key=ord('N')) and (Shift=[ssAlt]) and (PageControl1.ActivePage=tsRoadSheet) then
  Begin
   dbgRoadSheetRouts.ActiveLevel := glRoadSheetFuels;
   dbgRoadSheetRouts.SetFocus
  End;
end;

procedure TfrmRoadSheets.miClearClick(Sender: TObject);
begin
 If (ibdsMainRoadSheetREAL_STOP_TIMESTAMP.IsNull) then
  Exit;
 If Not(ibdsMainRoadSheet.State in [dsEdit,dsInsert]) then
  ibdsMainRoadSheet.Edit;
 ibdsMainRoadSheetREAL_STOP_TIMESTAMP.Clear;
 ibdsMainRoadSheet.Post
end;

procedure TfrmRoadSheets.sbPrintRoadSheetClick(Sender: TObject);
begin
 frmMain.frReport.OnGetValue := GetValue;
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainRoadSheet);
end;

procedure TfrmRoadSheets.GetValue(const ParName: String;
  var ParValue: Variant);
begin
 If (ParName='Серия путевого листа') then
  ParValue := ibdsMainRoadSheetSERIES.Value;
 If (ParName='Номер путевого листа') then
  ParValue := ibdsMainRoadSheetNUMBER.Value;
 If (ParName='Дата путевого листа') then
  ParValue := ibdsMainRoadSheetROAD_SHEET_DATE.Value;
 If (ParName='Марка автомобиля') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'NAME');
 If (ParName='Колонна автомобиля') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'COLUMN_NUMBER');
 If (ParName='Наименование колонны') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'COLUMN_NAME');
 If (ParName='Адрес колонны') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'COLUMN_ADDRESS');
 If (ParName='Телефон колонны') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'COLUMN_PHONE');
 If (ParName='Гос. номер автомобиля') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'STATE_NUMBER');
 If (ParName='Гаражный номер автомобиля') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'GARAGE_NUMBER');
 If (ParName='Инвентарный номер автомобиля') then
  ParValue := ibdsAutomobiles.Lookup('ID',ibdsMainRoadSheetAUTOMOBILE_ID.Value,'INVENTORY_NUMBER');
 If (ParName='ФИО водителя') then
  ParValue := ibdsDrivers.Lookup('ID',ibdsMainRoadSheetDRIVER_ID.Value,'FULL_NAME');
 If (ParName='Табельный номер водителя') then
  ParValue := ibdsDrivers.Lookup('ID',ibdsMainRoadSheetDRIVER_ID.Value,'KOD');
 If (ParName='Номер удостоверения водителя') then
  ParValue := ibdsDrivers.Lookup('ID',ibdsMainRoadSheetDRIVER_ID.Value,'DRIVER_CARD_NUMBER');
 If (ParName='Класс водителя') then
  ParValue := ibdsDrivers.Lookup('ID',ibdsMainRoadSheetDRIVER_ID.Value,'DRIVER_CLASS');
 If (ParName='Участок работы') then
  ParValue := ibdsWorkDistricts.Lookup('ID',ibdsMainRoadSheetWORK_DISTRICT_ID.Value,'DISTRICT_NAME');
 If (ParName='Заказчик') then
  ParValue := ibdsWorkCustomers.Lookup('ID',ibdsMainRoadSheetCUSTOMER_ID.Value,'CUSTOMER_NAME');
 If (ParName='Вид работы') then
  ParValue := ibdsWorkKinds.Lookup('ID',ibdsMainRoadSheetWORK_KIND_ID.Value,'KIND_NAME');
 If (ParName='Фактическое время выезда из гаража') then
  ParValue := ibdsMainRoadSheetREAL_START_TIMESTAMP.Value;
 If (ParName='Фактическое время возвращения в гараж') then
  ParValue := ibdsMainRoadSheetREAL_STOP_TIMESTAMP.Value;
 If (ParName='Оплачиваемое время') then
  ParValue := ibdsMainRoadSheetPAYING_TIME.Value;
 If (ParName='Показания спидометра при выезде из гаража') then
  ParValue := ibdsMainRoadSheetSPEEDOMETER_START.Value;
 If (ParName='Показания спидометра при возвращении в гараж') then
  ParValue := ibdsMainRoadSheetSPEEDOMETER_STOP.Value;
 If (ParName='Зимние нормы расхода топлива') then
  ParValue := ibdsMainRoadSheetWINTER_NORM.Value;
 If (ParName='Наименование основного топлива') then
  ParValue := ibdsFuel.Lookup('ID',ibdsRoadSheetFuels.Lookup('IS_FOR_ENGINE',1,'FUEL_ID'),'NAME');
 If (ParName='Остаток основного топлива при выезде') then
  ParValue := ibdsRoadSheetFuels.Lookup('IS_FOR_ENGINE',1,'START_AMOUNT');
 If (ParName='Остаток основного топлива при возвращении') then
  ParValue := ibdsRoadSheetFuels.Lookup('IS_FOR_ENGINE',1,'STOP_AMOUNT');
 If (ParName='Выдано основного топлива') then
  ParValue := ibdsRoadSheetFuels.Lookup('IS_FOR_ENGINE',1,'DISTRIBUTED_AMOUNT');
 If (ParName='Израсходовано основного топлива') then
  ParValue := ibdsRoadSheetFuels.Lookup('IS_FOR_ENGINE',1,'EATEN_AMOUNT');
end;

procedure TfrmRoadSheets.tsRoadSheetExit(Sender: TObject);
begin
 frmMain.frReport.OnGetValue := nil
end;

procedure TfrmRoadSheets.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmMain.frReport.OnGetValue := nil;
 inherited;
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetNUMBERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 If (Sender.IsNull) then
  Text := 'Новый'
 else
  Text := Sender.AsString;
 edNumber.Enabled := Not Sender.IsNull
end;

procedure TfrmRoadSheets.ibdsMainRoadSheetUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var SeriesOld, SeriesNew : string;
     ibsLocalAux : TIBSQL;
begin
 If (UpdateKind=ukModify) then
  Begin
   try
    SeriesOld := VarToStr(ibdsMainRoadSheetsListSERIES.OldValue);
   except
    SeriesOld := ibdsMainRoadSheetsListSERIES.AsString
   end;
   SeriesNew := ibdsMainRoadSheetsListSERIES.AsString
  End; 
 If (UpdateKind=ukInsert) or (SeriesOld<>SeriesNew) then
  Begin
   pnlMessage.Show;
   Application.ProcessMessages;
   If NOT (trLock.InTransaction) then
    trLock.StartTransaction;
   pnlMessage.Hide;
   Application.ProcessMessages;
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibdsMainRoadSheet.Database;
   ibsLocalAux.Transaction := ibdsMainRoadSheet.Transaction;
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('select max(RS.NUMBER) from ROAD_SHEETS RS where (RS.ROAD_SHEET_DATE!<:START_DATE) and (RS.ROAD_SHEET_DATE!>:STOP_DATE) and (RS.SERIES=:SERIES)');
   ibsLocalAux.ParamByName('START_DATE').AsDate := EncodeDate(YearOf(Date),1,1);
   ibsLocalAux.ParamByName('STOP_DATE').AsDate := EncodeDate(YearOf(Date),12,31);
   ibsLocalAux.ParamByName('SERIES').AsString := ibdsMainRoadSheetSERIES.AsString;
   ibsLocalAux.ExecQuery;
   If Not(ibdsMainRoadSheet.State in [dsEdit,dsInsert]) then
    ibdsMainRoadSheet.Edit;
   ibdsMainRoadSheetNUMBER.Value := ibsLocalAux.Fields[0].AsInteger+1;
   ibsLocalAux.Close;
   ibsLocalAux.Free;
   If (trLock.InTransaction) then
    trLock.Commit
  End;
 UpdateAction := uaApply
end;

end.
