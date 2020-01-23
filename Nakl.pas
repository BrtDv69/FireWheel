unit Nakl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, IBSQL, IBDatabase, Db, IBCustomDataSet,
  Wwdotdot, Wwdbcomb, wwcheckbox, Wwdbspin, Menus, Math, Variants,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, fr_Class;

type
  TfrmNakl = class(TfrmLike)
    PageControl1: TPageControl;
    tsPrimaryTovarList: TTabSheet;
    Panel1: TPanel;
    dbgPrimaryTovarList: TwwDBGrid;
    Panel4: TPanel;
    sbCancelPrimaryTovarList: TSpeedButton;
    sbApplyPrimaryTovarList: TSpeedButton;
    sbDeletePrimaryTovarList: TSpeedButton;
    sbAddPrimaryTovarList: TSpeedButton;
    sbLastPrimaryTovarList: TSpeedButton;
    sbNextPrimaryTovarList: TSpeedButton;
    sbPriorPrimaryTovarList: TSpeedButton;
    sbFirstPrimaryTovarList: TSpeedButton;
    sbFilterPrimaryTovarList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshPrimaryTovarList: TSpeedButton;
    sbPrintPrimaryTovarList: TSpeedButton;
    tsPrimaryTovar: TTabSheet;
    Panel10: TPanel;
    sbCancelPrimaryTovar: TSpeedButton;
    sbApplyPrimaryTovar: TSpeedButton;
    sbDeletePrimaryTovar: TSpeedButton;
    sbAddPrimaryTovar: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbPrintPrimaryTovar: TSpeedButton;
    SpeedButton35: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    pnlCommentsNakl: TPanel;
    Label11: TLabel;
    wwDBEdit12: TwwDBEdit;
    Panel6: TPanel;
    dbgPrimaryTovarBody: TwwDBGrid;
    Label12: TLabel;
    dbeTovar: TwwDBEdit;
    Label19: TLabel;
    dbeNDS: TwwDBEdit;
    Label21: TLabel;
    dbeItogo: TwwDBEdit;
    trLock: TIBTransaction;
    ibsNumb: TIBSQL;
    ibsAux: TIBSQL;
    ibdsMainPrimaryTovarList: TIBDataSet;
    ibdsMainPrimaryTovar: TIBDataSet;
    ibdsMainPrimaryTovarBody: TIBDataSet;
    dsMainPrimaryTovarList: TDataSource;
    dsMainPrimaryTovar: TDataSource;
    dsMainPrimaryTovarBody: TDataSource;
    ibdsPrimary_Setup: TIBDataSet;
    ibdsContractors: TIBDataSet;
    ibdsArticuls: TIBDataSet;
    pnlMessage: TPanel;
    Label23: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label25: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label27: TLabel;
    dblPrimarySetup: TwwDBLookupCombo;
    lblContractor: TLabel;
    dblContractor: TwwDBLookupCombo;
    lcArticuls: TwwDBLookupCombo;
    pnlNumber: TPanel;
    SpeedButton22: TSpeedButton;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit11: TwwDBEdit;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbReFilter: TSpeedButton;
    edContractor: TwwDBEdit;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbArticul: TwwCheckBox;
    cbContractor: TwwCheckBox;
    cbPeriod: TwwCheckBox;
    edArticul: TwwDBLookupCombo;
    cbPrefix: TwwCheckBox;
    edPrefix: TwwDBEdit;
    cbNumber: TwwCheckBox;
    edNumber: TwwDBEdit;
    cbSuffix: TwwCheckBox;
    edSuffix: TwwDBEdit;
    pnlText: TPanel;
    lblFilter: TLabel;
    sbUp: TSpeedButton;
    sbDown: TSpeedButton;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterArticuls: TIBDataSet;
    ibdsMainPrimaryTovarListID: TIntegerField;
    ibdsMainPrimaryTovarListNUMBER_STR: TIBStringField;
    ibdsMainPrimaryTovarListPRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarListSHORT_NAME: TIBStringField;
    ibdsMainPrimaryTovarListCONTRACTOR_TYPE: TIntegerField;
    ibdsMainPrimaryTovarListCONTRACTOR_NAME: TIBStringField;
    ibdsMainPrimaryTovarListAMOUNT: TFloatField;
    ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME: TStringField;
    ibdsMainPrimaryTovarID: TIntegerField;
    ibdsMainPrimaryTovarPRIMARY_SETUP_ID: TIntegerField;
    ibdsMainPrimaryTovarSETUP_NAME: TIBStringField;
    ibdsMainPrimaryTovarACCOUNT_ID: TIntegerField;
    ibdsMainPrimaryTovarNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryTovarNUMBER: TIntegerField;
    ibdsMainPrimaryTovarNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryTovarPRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarCONTRACTOR_TYPE: TIntegerField;
    ibdsMainPrimaryTovarCONTRACTOR_ID: TIntegerField;
    ibdsMainPrimaryTovarPASS_PERSON_ID: TIntegerField;
    ibdsMainPrimaryTovarAMOUNT: TFloatField;
    ibdsMainPrimaryTovarCOMMENTS: TIBStringField;
    ibdsPrimary_SetupID: TIntegerField;
    ibdsPrimary_SetupNAME: TIBStringField;
    ibdsPrimary_SetupNUMBER_PREFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_FORMAT: TIntegerField;
    ibdsPrimary_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsContractorsID: TIntegerField;
    ibdsContractorsNAME: TIBStringField;
    ibdsArticulsID: TIntegerField;
    ibdsArticulsGOOD_TYPE: TIntegerField;
    ibdsArticulsARTICUL: TIBStringField;
    ibdsArticulsNAME: TIBStringField;
    ibdsArticulsACCOUNT_ID: TIntegerField;
    ibdsArticulsUNITS: TIBStringField;
    ibdsArticulsNDS: TFloatField;
    ibdsFilterArticulsID: TIntegerField;
    ibdsFilterArticulsNAME: TIBStringField;
    ibdsFilterTypesID: TIntegerField;
    ibdsFilterTypesNAME: TIBStringField;
    ibdsMainPrimaryTovarBodyID: TIntegerField;
    ibdsMainPrimaryTovarBodyPRIMARY_TOVAR_HEADER_ID: TIntegerField;
    ibdsMainPrimaryTovarBodyARTICUL_ID: TIntegerField;
    ibdsMainPrimaryTovarBodyACCOUNT_ID: TIntegerField;
    ibdsMainPrimaryTovarBodySHORT_NAME: TIBStringField;
    ibdsMainPrimaryTovarBodyARTICUL: TIBStringField;
    ibdsMainPrimaryTovarBodyARTICUL_NAME: TIBStringField;
    ibdsMainPrimaryTovarBodyUNITS: TIBStringField;
    ibdsMainPrimaryTovarBodyGOOD_TYPE: TIntegerField;
    ibdsMainPrimaryTovarBodyPACKS_AMOUNT: TIntegerField;
    ibdsMainPrimaryTovarBodyPACK_VALUE: TFloatField;
    ibdsMainPrimaryTovarBodyITEMS_AMOUNT: TFloatField;
    ibdsMainPrimaryTovarBodyPRICE: TFloatField;
    ibdsMainPrimaryTovarBodyNDS: TFloatField;
    cbType: TwwCheckBox;
    edType: TwwDBLookupCombo;
    ibdsMainPrimaryTovarNumber_Str: TStringField;
    ibdsMainPrimaryTovarNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryTovarBodyItogo: TFloatField;
    ibdsMainPrimaryTovarBodyItogoMany: TFloatField;
    ibdsMainPrimaryTovarBodyITOGOMANYOLD: TFloatField;
    ibdsPrimary_SetupMOVEMENT_TYPE: TIntegerField;
    ibdsContractorsCONTRACTOR_TYPE: TIntegerField;
    ibdsContractorsCONTRACTOR_NAME: TStringField;
    ibdsMainPrimaryTovarCONTRACTOR_ID_TYPE: TLargeintField;
    ibdsAccounts: TIBDataSet;
    ibdsAccountsNAME: TIBStringField;
    ibdsAccountsSHORT_NAME: TIBStringField;
    ibdsAccountsID: TIntegerField;
    Label7: TLabel;
    dblAccounts: TwwDBLookupCombo;
    dblAccountsBody: TwwDBLookupCombo;
    pmAccount: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pmBodyAccount: TPopupMenu;
    MenuItem1: TMenuItem;
    ibdsMainPrimaryTovarBodyPRICE_WO_NDS: TFloatField;
    ibdsMainPrimaryTovarBodyTOTAL: TFloatField;
    ibdsMainPrimaryTovarBodySTORE_CARD_ID: TIntegerField;
    cbAmount: TwwCheckBox;
    cbbAmountSign: TwwDBComboBox;
    edAmount: TwwDBEdit;
    cbAccount: TwwCheckBox;
    edAccount: TwwDBLookupCombo;
    ibdsFilterAccounts: TIBDataSet;
    ibdsFilterAccountsSHORT_NAME: TIBStringField;
    ibdsFilterAccountsNAME: TIBStringField;
    ibdsFilterAccountsID: TIntegerField;
    ibdsStoreCards: TIBDataSet;
    ibdsStoreCardsARTICUL_ID: TIntegerField;
    ibdsStoreCardsPRICE: TFloatField;
    ibdsStoreCardsTOTAL: TFloatField;
    ibdsStoreCardsGOOD_TYPE: TIntegerField;
    ibdsStoreCardsARTICUL: TIBStringField;
    ibdsStoreCardsNAME: TIBStringField;
    ibdsStoreCardsACCOUNT_ID: TIntegerField;
    ibdsStoreCardsUNITS: TIBStringField;
    ibdsStoreCardsNDS: TFloatField;
    lcStoreCards: TwwDBLookupCombo;
    ibdsStoreCardsSTORE_CARD_ID: TIntegerField;
    ibdsRemains: TIBDataSet;
    ibdsRemainsREMAIN_ID: TIntegerField;
    ibdsRemainsARTICUL_ID: TIntegerField;
    ibdsRemainsPRICE: TFloatField;
    ibdsRemainsTOTAL: TFloatField;
    ibdsRemainsGOOD_TYPE: TIntegerField;
    ibdsRemainsARTICUL: TIBStringField;
    ibdsRemainsNAME: TIBStringField;
    ibdsRemainsACCOUNT_ID: TIntegerField;
    ibdsRemainsUNITS: TIBStringField;
    ibdsRemainsNDS: TFloatField;
    lcRemains: TwwDBLookupCombo;
    lblPassPersons: TLabel;
    dblPassPersons: TwwDBLookupCombo;
    ibdsPassPersons: TIBDataSet;
    ibdsPassPersonsID: TIntegerField;
    ibdsPassPersonsNAME: TIBStringField;
    ibdsPassPersonsIS_DRIVER: TIntegerField;
    ibdsPassPersonsCONTRACTOR_NAME: TStringField;
    ibdsSerials_Outer_In: TIBDataSet;
    ibdsSerials_Outer_InPRIMARY_TOVAR_BODY_ID: TIntegerField;
    ibdsSerials_Outer_InSERIAL_NUMBER: TIBStringField;
    ibdsSerials_Outer_InID: TIntegerField;
    ibdsMainPrimaryTovarBodySERIALS_COUNT: TIntegerField;
    wwExpandButton1: TwwExpandButton;
    dbgSerials: TwwDBGrid;
    dsSerials_Outer_In: TDataSource;
    ibdsSerials_Inner_Movement: TIBDataSet;
    dsSerials_Inner_Movement: TDataSource;
    pnlSerials: TPanel;
    Panel3: TPanel;
    pnlSplitter: TPanel;
    sbToAvailable: TSpeedButton;
    sbToDoc: TSpeedButton;
    pnlDoc: TPanel;
    dbgDoc: TwwDBGrid;
    edSearchDoc: TwwDBEdit;
    pnlAvailable: TPanel;
    dbgAvailable: TwwDBGrid;
    edSearchAvailable: TwwDBEdit;
    sbSerialsClose: TSpeedButton;
    ibdsSerials_Inner_MovementID: TIntegerField;
    ibdsSerials_Inner_MovementSERIAL_NUMBER: TIBStringField;
    ibdsSerials_Inner_MovementPRIMARY_TOVAR_BODY_ID: TIntegerField;
    ibdsSerials_Available: TIBDataSet;
    dsSerials_Available: TDataSource;
    ibdsSerials_AvailableID: TIntegerField;
    ibdsSerials_AvailableSERIAL_NUMBER: TIBStringField;
    ibdsSerials_Inner_MovementSERIAL_ID: TIntegerField;
    pmPrimaryTovarBody: TPopupMenu;
    miSerials: TMenuItem;
    ibdsMainPrimaryTovarSTORE_TYPE: TIntegerField;
    ibdsMainPrimaryTovarSTORE_ID: TIntegerField;
    ibdsContractorsCONTRACTOR_ID_TYPE: TLargeintField;
    ibdsMainPrimaryTovarListSTORE_TYPE: TIntegerField;
    ibdsMainPrimaryTovarListSTORE_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure dbgPrimaryTovarBodyKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainPrimaryTovarListAfterScroll(DataSet: TDataSet);
    procedure sbAddPrimaryTovarListClick(Sender: TObject);
    procedure sbDeletePrimaryTovarListClick(Sender: TObject);
    procedure sbApplyPrimaryTovarListClick(Sender: TObject);
    procedure sbCancelPrimaryTovarListClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox2DropDown(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure dblPrimarySetupCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure lcArticulsCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryTovarAfterOpen(DataSet: TDataSet);
    procedure sbFirstPrimaryTovarListClick(Sender: TObject);
    procedure sbPriorPrimaryTovarListClick(Sender: TObject);
    procedure sbNextPrimaryTovarListClick(Sender: TObject);
    procedure sbLastPrimaryTovarListClick(Sender: TObject);
    procedure dsMainPrimaryTovarListStateChange(Sender: TObject);
    procedure dbgPrimaryTovarListCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPrimaryTovarListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgPrimaryTovarListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeletePrimaryTovarClick(Sender: TObject);
    procedure sbAddPrimaryTovarClick(Sender: TObject);
    procedure sbCancelPrimaryTovarClick(Sender: TObject);
    procedure sbApplyPrimaryTovarClick(Sender: TObject);
    procedure dsMainPrimaryTovarBodyStateChange(Sender: TObject);
    procedure ibdsMainPrimaryTovarUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarNewRecord(DataSet: TDataSet);
    procedure tsPrimaryTovarShow(Sender: TObject);
    procedure ibdsMainPrimaryTovarBodyNewRecord(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarBodyARTICUL_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarBodyCalcFields(DataSet: TDataSet);
    procedure dbgPrimaryTovarBodyCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure dbgPrimaryTovarListCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgPrimaryTovarBodyKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure ibdsMainPrimaryTovarBodyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarBodyBeforePost(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarListCalcFields(DataSet: TDataSet);
    procedure dblContractorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbFilterPrimaryTovarListClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRefreshPrimaryTovarListClick(Sender: TObject);
    procedure ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
    procedure dbgPrimaryTovarListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainPrimaryTovarListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarAfterDelete(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarBodyARTICULChange(Sender: TField);
    procedure ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
    procedure ibdsContractorsCalcFields(DataSet: TDataSet);
    procedure dblContractorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblAccountsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblAccountsBodyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblAccountsBodyCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ibdsMainPrimaryTovarBodyPRICEChange(Sender: TField);
    procedure sbCloseClick(Sender: TObject);
    procedure edTypeChange(Sender: TObject);
    procedure deDateStartChange(Sender: TObject);
    procedure cbTypeClick(Sender: TObject);
    procedure cbbAmountSignChange(Sender: TObject);
    procedure lcStoreCardsCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryTovarCONTRACTOR_TYPEChange(Sender: TField);
    procedure ibdsMainPrimaryTovarCONTRACTOR_IDChange(Sender: TField);
    procedure lcRemainsCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryTovarPRIMARY_SETUP_IDChange(Sender: TField);
    procedure ibdsPassPersonsCalcFields(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarBodyPACKS_AMOUNTChange(Sender: TField);
    procedure ibdsSerials_Outer_InFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_Outer_InNewRecord(DataSet: TDataSet);
    procedure wwExpandButton1CheckVisibleButton(Sender: TwwExpandButton;
      DataSet: TDataSet; var AShowExpand: Boolean);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure dbgSerialsUpdateFooter;
    procedure ibdsSerials_Outer_InBeforeInsert(DataSet: TDataSet);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbSerialsCloseClick(Sender: TObject);
    procedure pnlSerialsResize(Sender: TObject);
    procedure ibdsSerials_Inner_MovementFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_Inner_MovementNewRecord(DataSet: TDataSet);
    procedure ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure sbToDocClick(Sender: TObject);
    procedure dbgAvailableEnter(Sender: TObject);
    procedure sbToAvailableClick(Sender: TObject);
    procedure edSearchDocKeyPress(Sender: TObject; var Key: Char);
    procedure edSearchAvailableKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainPrimaryTovarBodyITEMS_AMOUNTChange(Sender: TField);
    procedure dbgPrimaryTovarBodyDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure ibdsMainPrimaryTovarBodyAfterScroll(DataSet: TDataSet);
    procedure ibdsSerials_Inner_MovementAfterDelete(DataSet: TDataSet);
    procedure ibdsSerials_Inner_MovementAfterInsert(DataSet: TDataSet);
    procedure ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
    procedure dbgDocKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure miSerialsClick(Sender: TObject);
    procedure pmPrimaryTovarBodyPopup(Sender: TObject);
    procedure ibdsMainPrimaryTovarSTORE_IDChange(Sender: TField);
    procedure ibdsMainPrimaryTovarSTORE_TYPEChange(Sender: TField);
    procedure sbPrintPrimaryTovarListClick(Sender: TObject);
    procedure ibdsSerials_Outer_InAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainPrimaryTovarList: String;
    procedure GenerateSelectMainPrimaryTovarList;
    procedure GenerateSelectMainPrimaryTovarBody;
    procedure GenerateSelectSerialsAvailable;
    procedure GenerateSelectContractors;
    procedure ArticulSetBodyArticulID;
    procedure ArticulInsertBodyArticulID;
    procedure TovarSetBodyArticulID;
    procedure TovarInsertBodyArticulID;
    procedure GetTotalMany;
    procedure SetContractor;
    procedure SetReadOnlyFields;
    procedure SetAccount;
    procedure SetAccountBody;
    procedure SetContractorSize(Big: Integer);
    function CountUpDocumentSerials(PrimaryTovarBodyID : Integer): Integer;
  public
    { Public declarations }
    In_Out : Integer;
  end;

var
  frmNaklIn : TfrmNakl;
  frmNaklOut : TfrmNakl;

implementation

uses DM, Misk, Articuls, Main, KontrAgList, Accounts, StoreCards;

{$R *.DFM}

var
  OrderByMainPrimaryTovarList  : String = ' 3 asc, 2 asc, 7 asc';
  WhereSqlMainPrimaryTovarList : String = '';

  OrderByMainPrimaryTovarBody  : String = '';

  NumberPrefix, NumberSuffix : String;
  TotalMany, NDS : Double;

  Contractor, IType, ArticulName, Account : String;
  DateStart, DateStop : TDate;

  MainPrimaryTovarListBookMark, MainPrimaryTovarListPriorBookMark : String;

  OldContractorID : Integer = 0;
  OldStoreID : Integer = 0;
  OldMovementType : Integer;

  Saving : Boolean = False;
  FilteredRecordCount : Integer;

procedure TfrmNakl.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 ActivePage := PageControl1.ActivePage;
 For k := 0 to Pred(ComponentCount) do
  Begin
   If (Components[k].Name='sbApply'+Suf) or
      (Components[k].Name='sbCancel'+Suf) then
    (Components[k] as TControl).Enabled := Enabled;
   If (Components[k] is TTabSheet) and
      (Components[k].Name<>'ts'+Suf) then
    (Components[k] as TTabSheet).TabVisible := NOT Enabled
  End;
 PageControl1.ActivePage := ActivePage
end;

function TfrmNakl.GetWhereMainPrimaryTovarList: String;
begin
 Result := '';
 If (sbFilterPrimaryTovarList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbType.Checked) then
    Begin
     Result := Result+'and (PS.ID='+ibdsFilterTypesID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   If (cbContractor.Checked) then
    lblFilter.Caption := lblFilter.Caption+'Контрагент: '+edContractor.Text+'; ';
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (PTH.PRIMARY_DATE>='#39+deDateStart.Text+#39') and (PTH.PRIMARY_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbArticul.Checked) then
    Begin
     Result := Result+'and (PTB.ARTICUL_ID='+ibdsFilterArticulsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Включающие товар: '+edArticul.Text+'; '
    End;
   If (cbPrefix.Checked) then
    Begin
     Result := Result+'and (PTH.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (PTH.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер документа: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     Result := Result+'and (PTH.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     Result := Result+'and (PTH.AMOUNT'+cbbAmountSign.Text+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'На сумму'+cbbAmountSign.Text+edAmount.Text+'; '
    End;
   If (cbAccount.Checked) then
    Begin
     Result := Result+'and (PTH.ACCOUNT_ID='+ibdsFilterAccountsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Бух.счет: '+edAccount.Text+'; '
    End;
   lblFilter.Caption := Trim(Copy(lblFilter.Caption,1,Pred(Length(lblFilter.Caption))));
   pnlText.Visible := True;
   lblFilter.AutoSize := True;
   If (Length(Result)>4) then
    Result := Copy(Result,5,Length(Result))
  End;
end;

procedure TfrmNakl.GenerateSelectMainPrimaryTovarList;
begin
 WhereSqlMainPrimaryTovarList := GetWhereMainPrimaryTovarList;
 ibdsMainPrimaryTovarList.SelectSQL.Clear;
 ibdsMainPrimaryTovarList.SelectSQL.Add('select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30))||PTH.NUMBER_SUFFIX NUMBER_STR,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('cast(CNTR.NAME as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID');
 ibdsMainPrimaryTovarList.SelectSQL.Add('from (PRIMARY_SETUP PS join (CONTRACTORS CNTR join PRIMARY_TOVAR_HEADER PTH on');
 If (cbContractor.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('(CNTR.NAME like '#39+edContractor.Text+#39') and');
 ibdsMainPrimaryTovarList.SelectSQL.Add('(PTH.CONTRACTOR_TYPE=0) and (CNTR.ID=PTH.CONTRACTOR_ID)) on (PS.IN_OUT='+IntToStr(In_Out)+') and (PS.ID=PTH.PRIMARY_SETUP_ID))');
 If (cbArticul.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('join PRIMARY_TOVAR_BODY PTB on (PTB.PRIMARY_TOVAR_HEADER_ID=PTH.ID)');
 ibdsMainPrimaryTovarList.SelectSQL.Add('left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)');
 If (WhereSqlMainPrimaryTovarList<>'') then
  ibdsMainPrimaryTovarList.SelectSQL.Add('where '+WhereSqlMainPrimaryTovarList);
 ibdsMainPrimaryTovarList.SelectSQL.Add('union');
 ibdsMainPrimaryTovarList.SelectSQL.Add('select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30))||PTH.NUMBER_SUFFIX NUMBER_STR,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('cast(P.SURNAME||'#39+' '+#39'||P.NAME||'#39+' '+#39'||P.SECOND_NAME as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID');
 ibdsMainPrimaryTovarList.SelectSQL.Add('from (PRIMARY_SETUP PS join (PERSONS P join PRIMARY_TOVAR_HEADER PTH on');
 If (cbContractor.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('((P.NAME like '#39+edContractor.Text+#39') or (P.SURNAME like '#39+edContractor.Text+#39') or (P.SECOND_NAME like '#39+edContractor.Text+#39')) and');
 ibdsMainPrimaryTovarList.SelectSQL.Add('(P.ID=PTH.CONTRACTOR_ID) and (PTH.CONTRACTOR_TYPE in (1,2))) on (PS.IN_OUT='+IntToStr(In_Out)+') and (PS.ID=PTH.PRIMARY_SETUP_ID))');
 If (cbArticul.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('join PRIMARY_TOVAR_BODY PTB on (PTB.PRIMARY_TOVAR_HEADER_ID=PTH.ID)');
 ibdsMainPrimaryTovarList.SelectSQL.Add('left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)');
 If (WhereSqlMainPrimaryTovarList<>'') then
  ibdsMainPrimaryTovarList.SelectSQL.Add('where '+WhereSqlMainPrimaryTovarList);
 ibdsMainPrimaryTovarList.SelectSQL.Add('union');
 ibdsMainPrimaryTovarList.SelectSQL.Add('select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30))||PTH.NUMBER_SUFFIX NUMBER_STR,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('cast(AM.NAME||'#39+' '+#39'||AU.STATE_NUMBER as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID');
 ibdsMainPrimaryTovarList.SelectSQL.Add('from (PRIMARY_SETUP PS join ((AUTOMOBILES AU join AUTOMOBILE_MAKES AM on');
 If (cbContractor.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('((AM.NAME like '#39+edContractor.Text+#39') or (AU.STATE_NUMBER like '#39+edContractor.Text+#39')) and');
 ibdsMainPrimaryTovarList.SelectSQL.Add('(AU.AUTOMOBILE_MAKE_ID=AM.ID)) join');
 ibdsMainPrimaryTovarList.SelectSQL.Add('PRIMARY_TOVAR_HEADER PTH on (AU.ID=PTH.CONTRACTOR_ID) and');
 ibdsMainPrimaryTovarList.SelectSQL.Add('(PTH.CONTRACTOR_TYPE=3)) on (PS.IN_OUT='+IntToStr(In_Out)+') and (PS.ID=PTH.PRIMARY_SETUP_ID))');
 If (cbArticul.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('join PRIMARY_TOVAR_BODY PTB on (PTB.PRIMARY_TOVAR_HEADER_ID=PTH.ID)');
 ibdsMainPrimaryTovarList.SelectSQL.Add('left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)');
 If (WhereSqlMainPrimaryTovarList<>'') then
  ibdsMainPrimaryTovarList.SelectSQL.Add('where '+WhereSqlMainPrimaryTovarList);
 ibdsMainPrimaryTovarList.SelectSQL.Add('union');
 ibdsMainPrimaryTovarList.SelectSQL.Add('select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30))||PTH.NUMBER_SUFFIX NUMBER_STR,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,');
 ibdsMainPrimaryTovarList.SelectSQL.Add('cast('#39'СПИСАНИЕ'#39' as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID');
 ibdsMainPrimaryTovarList.SelectSQL.Add('from PRIMARY_SETUP PS join PRIMARY_TOVAR_HEADER PTH on');
 ibdsMainPrimaryTovarList.SelectSQL.Add('(PTH.CONTRACTOR_TYPE=4) and (PS.IN_OUT='+IntToStr(In_Out)+') and (PS.ID=PTH.PRIMARY_SETUP_ID)');
 If (cbArticul.Checked) and (sbFilterPrimaryTovarList.Down) then
  ibdsMainPrimaryTovarList.SelectSQL.Add('join PRIMARY_TOVAR_BODY PTB on (PTB.PRIMARY_TOVAR_HEADER_ID=PTH.ID)');
 ibdsMainPrimaryTovarList.SelectSQL.Add('left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)');
 If (WhereSqlMainPrimaryTovarList<>'') then
  ibdsMainPrimaryTovarList.SelectSQL.Add('where '+WhereSqlMainPrimaryTovarList);
 ibdsMainPrimaryTovarList.SelectSQL.Add('order by'+OrderByMainPrimaryTovarList)
end;

procedure TfrmNakl.GenerateSelectMainPrimaryTovarBody;
begin
 If (OrderByMainPrimaryTovarBody<>'') then
  ibdsMainPrimaryTovarBody.SelectSQL[15] := 'order by'+OrderByMainPrimaryTovarBody
 else
  ibdsMainPrimaryTovarBody.SelectSQL[15] := ''
end;

procedure TfrmNakl.GenerateSelectSerialsAvailable;
begin
 ibdsSerials_Available.SelectSQL.Clear;
 If (In_Out=1) then
  Begin
   ibdsSerials_Available.SelectSQL.Add('select SOI.ID, SOI.SERIAL_NUMBER from SERIALS_OUTER_IN SOI, ACCUMULATORS_TYRES ATY, PRIMARY_TOVAR_BODY PTB');
   ibdsSerials_Available.SelectSQL.Add('where (ATY.LOCATION_TYPE=0) and (ATY.SERIAL_ID=SOI.ID) and (ATY.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (PTB.ARTICUL_ID=:ARTICUL_ID) and (PTB.PRICE_WO_NDS=:PRICE_WO_NDS) order by 2')
  End
 else
  Begin
   ibdsSerials_Available.SelectSQL.Add('select SOI.ID, SOI.SERIAL_NUMBER from SERIALS_OUTER_IN SOI, ACCUMULATORS_TYRES ATY, PRIMARY_TOVAR_BODY PTB');
   ibdsSerials_Available.SelectSQL.Add('where (ATY.LOCATION_TYPE=:LOCATION_TYPE) and (ATY.LOCATION_ID=:LOCATION_ID) and (ATY.SERIAL_ID=SOI.ID) and (ATY.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (PTB.ARTICUL_ID=:ARTICUL_ID) and (PTB.PRICE_WO_NDS=:PRICE_WO_NDS) order by 2')
  End
end;

procedure TfrmNakl.FormCreate(Sender: TObject);
begin
 In_Out := TempIn_Out;
 SetContractorSize(1);
 Case In_Out of
  1: Begin
      FName := 'Расходный документ';
      Caption := 'Документ на расход товара';
      lcStoreCards.Visible := True;
      dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcStoreCards');
      ibdsMainPrimaryTovarBodySERIALS_COUNT.Visible := False;
      Name := 'frmNaklOut';
      sbPrintPrimaryTovarList.Tag := 1
     End;
  2: Begin
      FName := 'Приходный документ';
      Caption := 'Документ на приход товара';
      lcArticuls.Visible := True;
      dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcArticuls');
      Name := 'frmNaklIn';
      sbPrintPrimaryTovarList.Tag := 2
     End
 End;
 inherited;
 trMain.StartTransaction;
{ ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
 ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
 ibsAux.ExecQuery;
 sbFilterPrimaryTovarList.Down :=(ibsAux.RecordCount>0);
 While NOT (ibsAux.Eof) do
  Begin
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractor.Name) then
    Begin
     cbContractor.Checked := True;
     Contractor := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbType.Name) then
    Begin
     cbType.Checked := True;
     IType := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
    Begin
     cbPeriod.Checked := True;
     DateStart := ibsAux.FieldByName('FILTER_VALUE').AsDate
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
    Begin
     cbPeriod.Checked := True;
     DateStop := ibsAux.FieldByName('FILTER_VALUE').AsDate
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbArticuls.Name) then
    Begin
     cbArticuls.Checked := True;
     ArticulName := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPrefix.Name) then
    Begin
     cbPrefix.Checked := True;
     edPrefix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbNumber.Name) then
    Begin
     cbNumber.Checked := True;
     edNumber.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbSuffix.Name) then
    Begin
     cbSuffix.Checked := True;
     edSuffix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   ibsAux.Next
  End;
 ibsAux.Close;}
 ibdsFilterTypes.Active := sbFilterPrimaryTovarList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarList.Down;
 ibdsFilterAccounts.Active := sbFilterPrimaryTovarList.Down;
 GenerateSelectMainPrimaryTovarList;
 GenerateSelectMainPrimaryTovarBody;
 GenerateSelectSerialsAvailable;
 If (Nakl_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainPrimaryTovarList.Open
  End
 else
  Begin
   ibdsMainPrimaryTovar.ParamByName('ID').AsInteger := Nakl_ID;
   PageControl1.ActivePageIndex := 1;
   Nakl_ID := 0
  End
end;

procedure TfrmNakl.SpeedButton35Click(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlCommentsNakl.Show
 else
  pnlCommentsNakl.Hide
end;

procedure TfrmNakl.dbgPrimaryTovarBodyKeyPress(Sender: TObject; var Key: Char);
begin
 Key := MyUpCase(Key);
 If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger<>0) and
    (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0) and
    ((dbgPrimaryTovarBody.GetActiveField=ibdsMainPrimaryTovarBodyITEMS_AMOUNT) or
     (dbgPrimaryTovarBody.GetActiveField=ibdsMainPrimaryTovarBodyPACKS_AMOUNT)) then
  Begin
   pnlSerials.Show;
   dbgAvailable.SetFocus;
   Key := #0
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'PrimaryTovarList')
end;

procedure TfrmNakl.sbAddPrimaryTovarListClick(Sender: TObject);
begin
 If NOT (sbApplyPrimaryTovarList.Enabled) then
  Begin
   tsPrimaryTovar.Show;
   PageControl1Change(PageControl1);
   sbAddPrimaryTovar.Click
  End 
end;

procedure TfrmNakl.sbDeletePrimaryTovarListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarList.Delete
end;

procedure TfrmNakl.sbApplyPrimaryTovarListClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
//  try
   ibdsMainPrimaryTovarList.ApplyUpdates;
   trMain.CommitRetaining;
   StteChange('PrimaryTovarList', False)
{  except
   trMain.RollbackRetaining;
   MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)}
  End;
end;

procedure TfrmNakl.sbCancelPrimaryTovarListClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMainPrimaryTovarList.CancelUpdates;
   StteChange('PrimaryTovarList', False)
  End 
end;

procedure TfrmNakl.ibdsMainPrimaryTovarCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarNUMBER_STR.Value := ibdsMainPrimaryTovarNUMBER_PREFIX.AsString;
 If (ibdsMainPrimaryTovarNUMBER.Value<>0) then
  ibdsMainPrimaryTovarNUMBER_STR.Value := ibdsMainPrimaryTovarNUMBER_STR.AsString+
                                          ibdsMainPrimaryTovarNUMBER.AsString;
 ibdsMainPrimaryTovarNUMBER_STR.Value := ibdsMainPrimaryTovarNUMBER_STR.AsString+
                                         ibdsMainPrimaryTovarNUMBER_SUFFIX.AsString
end;

procedure TfrmNakl.wwDBComboBox2DropDown(Sender: TObject);
 var Pnt : TPoint;
begin
 Pnt := pnlNumber.Parent.ScreenToClient((Sender as TwwDBComboBox).Parent.ClientToScreen(Point((Sender as TwwDBComboBox).Left,(Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1)));
 pnlNumber.Top := Pnt.y;
 pnlNumber.Left := Pnt.x;
 pnlNumber.Show
end;

procedure TfrmNakl.SpeedButton22Click(Sender: TObject);
begin
 pnlNumber.Hide
end;

procedure TfrmNakl.dblPrimarySetupCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   NumberPrefix := ibdsPrimary_SetupNUMBER_PREFIX.AsString;
   ibdsMainPrimaryTovarNUMBER_FORMAT.Value := ibdsPrimary_SetupNUMBER_FORMAT.Value;
   NumberSuffix := ibdsPrimary_SetupNUMBER_SUFFIX.AsString
  End
end;

procedure TfrmNakl.lcArticulsCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryTovarBodyARTICUL_NAME.Value := ibdsArticulsNAME.Value;
   lcArticuls.Text := ibdsArticulsNAME.AsString;
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := ibdsArticulsID.Value;
   If (In_Out=1) or ((In_Out=2) and (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0)) then
    ibdsMainPrimaryTovarBodyNDS.Value := 0
   else
    ibdsMainPrimaryTovarBodyNDS.Value := ibdsArticulsNDS.Value;
   ibdsMainPrimaryTovarBodyUNITS.Value := ibdsArticulsUNITS.Value;
   ibdsMainPrimaryTovarBodyGOOD_TYPE.Value := ibdsArticulsGOOD_TYPE.Value
{   If (In_Out=1) then
    ibdsMainPrimaryTovarBodyACCOUNT_ID.Value := ibdsArticulsACCOUNT_ID.Value}
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarAfterOpen(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovar.RecordCount>0) then
  Begin
   SetReadOnlyFields;
   ibdsPrimary_Setup.Locate('ID',ibdsMainPrimaryTovarPRIMARY_SETUP_ID.AsInteger,[]);
   OldMovementType := ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger;
   OldContractorID := ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger;
   OldStoreID := ibdsMainPrimaryTovarSTORE_ID.AsInteger;
   GenerateSelectContractors;
   ibdsContractors.Open;
   If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=4) then
    ibdsContractors.Locate('ID;CONTRACTOR_TYPE',VarArrayOf([ibdsMainPrimaryTovarSTORE_ID.AsInteger,ibdsMainPrimaryTovarSTORE_TYPE.AsInteger]),[])
   else
    ibdsContractors.Locate('ID;CONTRACTOR_TYPE',VarArrayOf([ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger,ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger]),[]);
   dblContractor.Text := ibdsContractorsCONTRACTOR_NAME.AsString;
   ibdsAccounts.Locate('ID',ibdsMainPrimaryTovarACCOUNT_ID.AsInteger,[]);
   If (In_Out=2) then
    If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=0) then
     Begin
      ibdsArticuls.Open;
      lcArticuls.Visible := True;
      dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcArticuls');
      lcRemains.Visible := False;
      ibdsRemains.Close;
      ibdsSerials_Outer_In.Open;
      ibdsSerials_Inner_Movement.Close;
      ibdsSerials_Available.Close;
      ibdsMainPrimaryTovarBodySERIALS_COUNT.Visible := True
     End
    else
     Begin
      ibdsRemains.Open;
      ibdsSerials_Outer_In.Close;
      ibdsSerials_Inner_Movement.Open;
      ibdsSerials_Available.Open;
      lcRemains.Visible := True;
      dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcRemains');
      lcArticuls.Visible := False;
      ibdsArticuls.Close;
      ibdsMainPrimaryTovarBodySERIALS_COUNT.Visible := False
     End
   else
    Begin
     If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=2) then
      If (ibdsMainPrimaryTovarSTORE_TYPE.AsInteger=0) then
       Begin
        ibdsStoreCards.Open;
        lcStoreCards.Visible := True;
        dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcStoreCards');
        lcArticuls.Visible := False;
        lcRemains.Visible := False;
        ibdsRemains.Close;
        ibdsArticuls.Close
       End
      else
       Begin
        ibdsRemains.Open;
        lcRemains.Visible := True;
        dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcRemains');
        lcArticuls.Visible := False;
        lcStoreCards.Visible := False;
        ibdsStoreCards.Close;
        ibdsArticuls.Close
       End
     else
      Begin
       ibdsStoreCards.Open;
       lcStoreCards.Visible := True;
       dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcStoreCards');
       lcArticuls.Visible := False;
       lcRemains.Visible := False;
       ibdsRemains.Close;
       ibdsArticuls.Close
      End;
     ibdsSerials_Inner_Movement.Open;
     ibdsSerials_Available.Open;
     ibdsSerials_Outer_In.Close;
     If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=2) then
       lblContractor.Caption := 'Отправитель'
     else
      lblContractor.Caption := 'Контрагент';
     If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=3) then
      SetContractorSize(0)
     else
      SetContractorSize(1)
    End
  End
end;

procedure TfrmNakl.sbFirstPrimaryTovarListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarList.First
end;

procedure TfrmNakl.sbPriorPrimaryTovarListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarList.Prior
end;

procedure TfrmNakl.sbNextPrimaryTovarListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarList.Next
end;

procedure TfrmNakl.sbLastPrimaryTovarListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarList.Last
end;

procedure TfrmNakl.dsMainPrimaryTovarListStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmNakl.dbgPrimaryTovarListCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainPrimaryTovarList);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainPrimaryTovarBody)
 end
end;

procedure TfrmNakl.dbgPrimaryTovarListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmNakl.dbgPrimaryTovarListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainPrimaryTovarList, (GetKeyState(VK_CONTROL)<0),
                               sbApplyPrimaryTovarList, sbCancelPrimaryTovarList, GenerateSelectMainPrimaryTovarList)
     End;
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainPrimaryTovarBody, (GetKeyState(VK_CONTROL)<0),
                              sbApplyPrimaryTovar, sbCancelPrimaryTovar, GenerateSelectMainPrimaryTovarBody);
 end
end;

procedure TfrmNakl.PageControl1Change(Sender: TObject);
 var Active : Boolean; 
begin
 pnlSerials.Hide;
 Active := (PageControl1.ActivePage<>tsPrimaryTovarList);
 If NOT (Active) then
  Begin
   ibdsSerials_Outer_In.Close;
   ibdsSerials_Inner_Movement.Close;
   ibdsSerials_Available.Close
  End;
 ibdsPrimary_Setup.Active := Active;
 ibdsAccounts.Active := Active;
 If (In_Out=1) then
  ibdsStoreCards.Active := Active
 else
  If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=0) then
   ibdsArticuls.Active := Active
  else
   ibdsRemains.Active := Active;
 ibdsMainPrimaryTovar.Active := Active;
 ibdsMainPrimaryTovarBody.Active := Active;
 If Not(Active) and Not(ibdsMainPrimaryTovarList.Active) then
  Begin
   ibdsMainPrimaryTovarList.Active := True;
   try
    ibdsMainPrimaryTovarList.Bookmark := MainPrimaryTovarListBookMark
   except
   end;
   If (ibdsMainPrimaryTovarList.Eof) then
    try
     ibdsMainPrimaryTovarList.Bookmark := MainPrimaryTovarListPriorBookMark
    except
    end
  End
end;

procedure TfrmNakl.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsPrimaryTovarList) and (Nakl_ID=0) then
  ibdsMainPrimaryTovar.ParamByName('ID').AsInteger := ibdsMainPrimaryTovarListID.AsInteger
end;

procedure TfrmNakl.sbDeletePrimaryTovarClick(Sender: TObject);
begin
 If (ActiveControl=dbgPrimaryTovarBody) then
  ibdsMainPrimaryTovarBody.Delete
 else
  If (ActiveControl=dbgSerials) then
   dbgSerials.DataSource.DataSet.Delete
  else
   ibdsMainPrimaryTovar.Delete
end;

procedure TfrmNakl.sbAddPrimaryTovarClick(Sender: TObject);
begin
 ibdsMainPrimaryTovar.Close;
 ibdsMainPrimaryTovar.ParamByName('ID').AsInteger := GetNewID(ibsGen_ID,'GEN_PRIMARY_TOVAR_HEADER_ID');
 ibdsMainPrimaryTovar.Open;
 ibdsMainPrimaryTovar.Insert;
 ibdsMainPrimaryTovarBody.Close;
 ibdsMainPrimaryTovarBody.Open;
 StteChange('PrimaryTovar', True)
end;

procedure TfrmNakl.sbCancelPrimaryTovarClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
  Exit;
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainPrimaryTovarBody.Close;
 ibdsMainPrimaryTovar.Close;
 ibdsMainPrimaryTovar.Open;
 ibdsMainPrimaryTovarBody.Open;
 StteChange('PrimaryTovar', False);
 If (ibdsMainPrimaryTovar.RecordCount>0) then
  ibdsMainPrimaryTovarAfterOpen(ibdsMainPrimaryTovar);
 If (ibdsMainPrimaryTovarBody.RecordCount>0) then
  ibdsMainPrimaryTovarBodyAfterOpen(ibdsMainPrimaryTovarBody);
 If (ibdsSerials_Outer_In.Active) then
  Begin
   ibdsSerials_Outer_In.Close;
   ibdsSerials_Outer_In.Open
  End;
 If (ibdsSerials_Inner_Movement.Active) then
  Begin
   ibdsSerials_Inner_Movement.Close;
   ibdsSerials_Inner_Movement.Open
  End;
 If (ibdsSerials_Available.Active) then
  Begin
   ibdsSerials_Available.Close;
   ibdsSerials_Available.Open
  End
end;

procedure TfrmNakl.sbApplyPrimaryTovarClick(Sender: TObject);
 var BookMark : String;
begin
 If (MessageDlg('Cохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
  Exit;
 If (ibdsMainPrimaryTovar.State in [dsEdit,dsInsert]) then
  ibdsMainPrimaryTovar.Post;
 If (ibdsMainPrimaryTovarBody.State in [dsEdit,dsInsert]) then
  ibdsMainPrimaryTovarBody.Prior;
 BookMark := ibdsMainPrimaryTovarBody.Bookmark;
 ibdsMainPrimaryTovarBody.First;
 While NOT (ibdsMainPrimaryTovarBody.Eof) do
  Begin
   If (ibdsMainPrimaryTovarBodyPACKS_AMOUNT.IsNull) then
    Begin
     ibdsMainPrimaryTovarBody.Edit;
     ibdsMainPrimaryTovarBodyPACKS_AMOUNT.Value := 0
    End;
   If (ibdsMainPrimaryTovarBodyPACK_VALUE.IsNull) then
    Begin
     ibdsMainPrimaryTovarBody.Edit;
     ibdsMainPrimaryTovarBodyPACK_VALUE.Value := 0
    End;
   If (ibdsMainPrimaryTovarBodyITEMS_AMOUNT.IsNull) then
    Begin
     ibdsMainPrimaryTovarBody.Edit;
     ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 0
    End;
   If (ibdsMainPrimaryTovarBodyPRICE.IsNull) then
    Begin
     ibdsMainPrimaryTovarBody.Edit;
     ibdsMainPrimaryTovarBodyPRICE.Value := 0
    End;
   If (ibdsMainPrimaryTovarBodyItogo.Value=0) then
    Begin
     ibdsMainPrimaryTovarBody.Delete;
     ibdsMainPrimaryTovarBody.Prior
    End;
   ibdsMainPrimaryTovarBody.Next
  End;
// try
  ibdsMainPrimaryTovar.ApplyUpdates;
  ibdsMainPrimaryTovarBody.ApplyUpdates;
  Saving := True;
  If (ibdsSerials_Outer_In.Active) then
   Begin
    ibdsSerials_Outer_In.Last;
    ibdsSerials_Outer_In.First;
    ibdsSerials_Outer_In.ApplyUpdates
   End;
  If (ibdsSerials_Inner_Movement.Active) then
   Begin
    ibdsSerials_Inner_Movement.Last;
    ibdsSerials_Inner_Movement.First;
    ibdsSerials_Inner_Movement.ApplyUpdates
   End;
  Saving := False;
  trMain.CommitRetaining;
  ibdsMainPrimaryTovarBody.Close;
  ibdsMainPrimaryTovarBody.Open;
  If (ibdsSerials_Available.Active) then
   Begin
    ibdsSerials_Available.Close;
    ibdsSerials_Available.Open
   End;
  If (ibdsArticuls.Active) then
   Begin
    ibdsArticuls.Close;
    ibdsArticuls.Open
   End
  else
   If (ibdsStoreCards.Active) then
    Begin
     ibdsStoreCards.Close;
     ibdsStoreCards.Open
    End
   else
    If (ibdsRemains.Active) then
     Begin
      ibdsRemains.Close;
      ibdsRemains.Open
     End;
  If (ibdsMainPrimaryTovarList.Active) then
   Begin
    MainPrimaryTovarListBookMark := ibdsMainPrimaryTovarList.Bookmark;
    ibdsMainPrimaryTovarList.Prior;
    MainPrimaryTovarListPriorBookMark := ibdsMainPrimaryTovarList.Bookmark;
    ibdsMainPrimaryTovarList.Close
   End;
  StteChange('PrimaryTovar', False);
  ibdsMainPrimaryTovar.Refresh;
  SetReadOnlyFields;
{ except
  trMain.RollbackRetaining;
  Saving := False;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmNakl.dsMainPrimaryTovarBodyStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('PrimaryTovar', True)
  else
   StteChange('PrimaryTovar', ibdsMainPrimaryTovar.UpdatesPending or
                              ibdsMainPrimaryTovarBody.UpdatesPending or
                              ibdsSerials_Outer_In.UpdatesPending or
                              ibdsSerials_Inner_Movement.UpdatesPending)
end;

procedure TfrmNakl.ibdsMainPrimaryTovarUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
 var MinNumber, MaxNumber, Number, Number_FormatOld, Number_FormatNew, SetupOld, SetupNew : Integer;
     Setted : Boolean;
begin
 Number_FormatOld := ibdsMainPrimaryTovarNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainPrimaryTovarNUMBER_FORMAT.NewValue;
 SetupOld := ibdsMainPrimaryTovarPRIMARY_SETUP_ID.OldValue;
 SetupNew := ibdsMainPrimaryTovarPRIMARY_SETUP_ID.AsInteger;
 If (UpdateKind=ukInsert) or (SetupOld<>SetupNew) then
  Begin
   If (UpdateKind=ukInsert) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainPrimaryTovarPRIMARY_DATE.OldValue<>ibdsMainPrimaryTovarPRIMARY_DATE.NewValue) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     If (ibdsPrimary_SetupNUMBER_RESTART_PERIOD.AsInteger<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(PTH.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_HEADER PTH, PRIMARY_SETUP PS');
       ibsNumb.SQL.Add('where (PTH.PRIMARY_DATE>=:START_DATE) and (PTH.PRIMARY_DATE<:PRIMARY_DATE)');
       ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTH.PRIMARY_SETUP_ID=PS.ID)');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsPrimary_SetupNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime);
       ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime;
       ibsNumb.ExecQuery;
       MinNumber := ibsNumb.FieldByName('MinNumber').AsInteger;
       ibsNumb.Close
      End
     else
      MinNumber := 0; //1 - нумерация начинается ежедневно
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select min(PTH.NUMBER) MaxNumber');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_HEADER PTH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTH.PRIMARY_DATE>:PRIMARY_DATE) and (PTH.PRIMARY_DATE<:STOP_DATE)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsPrimary_SetupNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime);
     ibsNumb.ExecQuery;
     If (ibsNumb.FieldByName('MaxNumber').IsNull) then
      MaxNumber := High(MaxNumber)
     else
      MaxNumber := ibsNumb.FieldByName('MaxNumber').AsInteger;
     ibsNumb.Close;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select PTH.NUMBER');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_HEADER PTH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTH.PRIMARY_DATE=:PRIMARY_DATE)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime;
     ibsNumb.ExecQuery;
     ibdsMainPrimaryTovar.Edit;
     If (ibsNumb.Eof) then
      ibdsMainPrimaryTovarNUMBER.Value := Succ(MinNumber)
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) and (Succ(Number)>MinNumber) then
          Begin
           ibdsMainPrimaryTovarNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainPrimaryTovarNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger);
      End;
     ibsNumb.Close;
     If (ibdsMainPrimaryTovarNUMBER.AsInteger>=MaxNumber) then
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',2000);
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainPrimaryTovarPRIMARY_DATE.AsDateTime);
     ibdsMainPrimaryTovarNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainPrimaryTovarNUMBER_SUFFIX.AsString := NumberSuffix
    End
  End;
 UpdateAction := uaApply
end;

procedure TfrmNakl.ibdsMainPrimaryTovarNewRecord(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarID.Value := ibdsMainPrimaryTovar.ParamByName('ID').AsInteger;
 ibdsMainPrimaryTovarPRIMARY_DATE.Value := Date;
 ibdsMainPrimaryTovarNUMBER_PREFIX.Value := 'НОВЫЙ';
 ibdsMainPrimaryTovarNUMBER_SUFFIX.Value := ' ';
 ibdsMainPrimaryTovarNUMBER.Value := 0;
 ibdsMainPrimaryTovarNUMBER_FORMAT.Value := 0;
 ibdsMainPrimaryTovarPRIMARY_SETUP_ID.Value := 0;
 ibdsMainPrimaryTovarAMOUNT.Value := 0;
 ibdsMainPrimaryTovarSTORE_TYPE.Value := 0;
 ibdsMainPrimaryTovarSTORE_ID.Value := 0;
 dbgPrimaryTovarBody.Enabled := False;
end;

procedure TfrmNakl.tsPrimaryTovarShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyNewRecord(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarBodyID.Value := GetNewID(ibsGen_ID,'GEN_PRIMARY_TOVAR_BODY_ID');
 ibdsMainPrimaryTovarBodyPRIMARY_TOVAR_HEADER_ID.Value := ibdsMainPrimaryTovarID.AsInteger;
 ibdsMainPrimaryTovarBodyITOGOMANYOLD.Value := 0;
 ibdsMainPrimaryTovarBodyACCOUNT_ID.Value := ibdsMainPrimaryTovarACCOUNT_ID.Value;
 If (ibdsAccounts.Locate('ID',ibdsMainPrimaryTovarACCOUNT_ID.AsInteger,[])) then
  ibdsMainPrimaryTovarBodySHORT_NAME.Value := ibdsAccountsSHORT_NAME.Value;
 If (ibdsMainPrimaryTovarBody.RecordCount>0) then
  dbgPrimaryTovarBody.SelectedIndex := 0;
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyARTICUL_IDChange(
  Sender: TField);
 var Articul, Articul_Name, Units : String;
     NDS : Double;
     GOOD_TYPE : Integer;
begin
 If (ibdsSerials_Inner_Movement.Active) then
  Begin
   ibdsSerials_Inner_Movement.First;
   While Not ibdsSerials_Inner_Movement.Eof do
    ibdsSerials_Inner_Movement.Delete;
   ibdsSerials_Available.DisableControls;
   ibdsSerials_Available.Filtered := False;
   ibdsSerials_Available.Filtered := True;
   ibdsSerials_Available.EnableControls
  End;
 Articul := ibdsMainPrimaryTovarBodyARTICUL.AsString;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select ARTICUL, NAME, UNITS, NDS, GOOD_TYPE from ARTICULS where (ID='+
                  ibdsMainPrimaryTovarBodyARTICUL_ID.AsString+')');
 ibsAux.ExecQuery;
 If (Articul<>ibsAux.FieldByName('ARTICUL').AsString) then
  Articul := ibsAux.FieldByName('ARTICUL').AsString;
 Articul_Name := ibsAux.FieldByName('NAME').AsString;
 Units := ibsAux.FieldByName('UNITS').AsString;
 NDS := ibsAux.FieldByName('NDS').AsDouble;
 GOOD_TYPE := ibsAux.FieldByName('GOOD_TYPE').AsInteger;
 ibsAux.Close;
 If (ibdsMainPrimaryTovarBodyARTICUL_NAME.Value<>Articul_Name) then
  ibdsMainPrimaryTovarBodyARTICUL_NAME.Value := Articul_Name;
 ibdsMainPrimaryTovarBodyUNITS.Value := Units;
 If (In_Out=1) or ((In_Out=2) and (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0)) then
  ibdsMainPrimaryTovarBodyNDS.Value := 0
 else
  ibdsMainPrimaryTovarBodyNDS.Value := NDS;
 If (ibdsMainPrimaryTovarBodyARTICUL.Value<>Articul) then
  Begin
   ibdsMainPrimaryTovarBodyARTICUL.OnChange := nil;
   ibdsMainPrimaryTovarBodyARTICUL.Value := Articul;
   ibdsMainPrimaryTovarBodyARTICUL.OnChange := ibdsMainPrimaryTovarBodyARTICULChange
  End;
 ibdsMainPrimaryTovarBodyGOOD_TYPE.Value := GOOD_TYPE;
 ibdsMainPrimaryTovarBodySTORE_CARD_ID.AsVariant := Null;
 If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger<>0) then
  Begin
   ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACKS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACK_VALUE.Value := 0
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyAfterOpen(
  DataSet: TDataSet);
begin
 GetTotalMany
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarBodyItogo.Value := ibdsMainPrimaryTovarBodyPACKS_AMOUNT.AsInteger*ibdsMainPrimaryTovarBodyPACK_VALUE.AsFloat+ibdsMainPrimaryTovarBodyITEMS_AMOUNT.AsFloat;
 ibdsMainPrimaryTovarBodyItogoMany.Value := ibdsMainPrimaryTovarBodyItogo.AsFloat*ibdsMainPrimaryTovarBodyPRICE.AsFloat
end;

procedure TfrmNakl.dbgPrimaryTovarBodyCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
 wwDBGridCalcCellColors2(Sender, Field, State, Highlight, AFont, ABrush);
 If (ABrush.Color=clWindow) then
  Case ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger of
   1: ABrush.Color := ColorAccumulators;
   2: ABrush.Color := ColorTyres
  End;
 If (Field=ibdsMainPrimaryTovarBodySERIALS_COUNT) then
  If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger>0) and
     ((ibdsMainPrimaryTovarBodyPACKS_AMOUNT.AsInteger*ibdsMainPrimaryTovarBodyPACK_VALUE.AsFloat+ibdsMainPrimaryTovarBodyITEMS_AMOUNT.AsFloat)>ibdsMainPrimaryTovarBodySERIALS_COUNT.AsInteger) then
   ABrush.Color := clRed
end;

procedure TfrmNakl.dbgPrimaryTovarListCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 wwDBGridCalcCellColors3(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmNakl.dbgPrimaryTovarBodyKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 Case Key of
  vk_F6 : If (In_Out=2) then
           Begin
            If (frmMain.FindComponent('frmArticuls')=nil) then
             frmArticuls := TfrmArticuls.Create(frmMain);
            frmArticuls.LookUpProcedureUpdate := ArticulSetBodyArticulID;
            frmArticuls.LookUpProcedureInsert := ArticulInsertBodyArticulID;
            If NOT (ibdsMainPrimaryTovarBodyARTICUL_ID.IsNull) then
             Begin
              frmArticuls.dbeFilter.Text := ibdsMainPrimaryTovarBodyARTICUL_ID.AsString;
              frmArticuls.ibdsSearch.Close;
              frmArticuls.ibdsSearch.SelectSQL[2] := 'where (A.ID=:NAME)';
              frmArticuls.sbReFilter.Click;
              frmArticuls.ibdsSearch.Close;
              frmArticuls.ibdsSearch.SelectSQL[2] := 'where (A.NAME like :NAME)';
             End;
            frmArticuls.Show
           End;
  vk_F7 : Begin
           If (frmMain.FindComponent('frmStoreCards')=nil) then
            Begin
             If NOT (ibdsMainPrimaryTovarBodySTORE_CARD_ID.IsNull) then
              StoreCard_ID := ibdsMainPrimaryTovarBodySTORE_CARD_ID.AsInteger;
             frmStoreCards := TfrmStoreCards.Create(frmMain)
            End
           else
            If NOT (ibdsMainPrimaryTovarBodySTORE_CARD_ID.IsNull) then
             Begin
              If (frmStoreCards.PageControl1.ActivePageIndex<>1) then
               frmStoreCards.PageControl1.ActivePageIndex := 1;
              frmStoreCards.ibdsMainStoreCard.Close;
              frmStoreCards.ibdsMainStoreCard.ParamByName('ID').AsInteger := ibdsMainPrimaryTovarBodySTORE_CARD_ID.AsInteger;
              frmStoreCards.ibdsMainStoreCard.Open;
              frmStoreCards.ibdsMainStoreCardBody.Open
             End;
           If (In_Out=1) then
            Begin
             frmStoreCards.LookUpProcedureUpdate := TovarSetBodyArticulID;
             frmStoreCards.LookUpProcedureInsert := TovarInsertBodyArticulID
            End;
           frmStoreCards.Show
          End
 end
end;

procedure TfrmNakl.ArticulSetBodyArticulID;
begin
 If (frmArticuls.ibdsMainITEM_TYPE.AsInteger=1) then
  Begin
   If NOT (ibdsMainPrimaryTovarBody.State in [dsEdit, dsInsert]) then
    ibdsMainPrimaryTovarBody.Edit;
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmArticuls.ibdsMainID.Value
  End
end;

procedure TfrmNakl.ArticulInsertBodyArticulID;
begin
 If (frmArticuls.ibdsMainITEM_TYPE.AsInteger=1) then
  Begin
   ibdsMainPrimaryTovarBody.Insert;
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmArticuls.ibdsMainID.Value
  End
end;

procedure TfrmNakl.TovarSetBodyArticulID;
begin
 If NOT (ibdsMainPrimaryTovarBody.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarBody.Edit;
 If (frmStoreCards.ibdsMainStoreCard.Active) then
  Begin
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmStoreCards.ibdsMainStoreCardARTICUL_ID.Value;
   ibdsMainPrimaryTovarBodyPRICE.Value := frmStoreCards.ibdsMainStoreCardPRICE.Value;
   ibdsMainPrimaryTovarBodySTORE_CARD_ID.Value := frmStoreCards.ibdsMainStoreCardID.Value
  End
 else
  Begin
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmStoreCards.ibdsMainStoreCardsListARTICUL_ID.Value;
   ibdsMainPrimaryTovarBodyPRICE.Value := frmStoreCards.ibdsMainStoreCardsListPRICE.Value;
   ibdsMainPrimaryTovarBodySTORE_CARD_ID.Value := frmStoreCards.ibdsMainStoreCardsListID.Value
  End;
 If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger=0) then
  ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 1
 else
  Begin
   ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACKS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACK_VALUE.Value := 0
  End
end;

procedure TfrmNakl.TovarInsertBodyArticulID;
begin
 ibdsMainPrimaryTovarBody.Insert;
 If (frmStoreCards.ibdsMainStoreCard.Active) then
  Begin
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmStoreCards.ibdsMainStoreCardARTICUL_ID.Value;
   ibdsMainPrimaryTovarBodyPRICE.Value := frmStoreCards.ibdsMainStoreCardPRICE.Value;
   ibdsMainPrimaryTovarBodySTORE_CARD_ID.Value := frmStoreCards.ibdsMainStoreCardID.Value
  End
 else
  Begin
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := frmStoreCards.ibdsMainStoreCardsListARTICUL_ID.Value;
   ibdsMainPrimaryTovarBodyPRICE.Value := frmStoreCards.ibdsMainStoreCardsListPRICE.Value;
   ibdsMainPrimaryTovarBodySTORE_CARD_ID.Value := frmStoreCards.ibdsMainStoreCardsListID.Value
  End;
 If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger=0) then
  ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 1
 else
  Begin
   ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACKS_AMOUNT.Value := 0;
   ibdsMainPrimaryTovarBodyPACK_VALUE.Value := 0
  End
end;

procedure TfrmNakl.GetTotalMany;
 var BookMark : String;
begin
 TotalMany := 0;
 NDS := 0;
 BookMark := ibdsMainPrimaryTovarBody.Bookmark;
 ibdsMainPrimaryTovarBody.DisableControls;
 ibdsMainPrimaryTovarBody.First;
 While NOT (ibdsMainPrimaryTovarBody.Eof) do
  Begin
   TotalMany := TotalMany+ibdsMainPrimaryTovarBodyItogoMany.AsFloat;
   NDS := NDS+Round((ibdsMainPrimaryTovarBodyPRICE.AsFloat-ibdsMainPrimaryTovarBodyPRICE_WO_NDS.AsFloat)*ibdsMainPrimaryTovarBodyItogo.AsFloat*100)/100;
   ibdsMainPrimaryTovarBody.Next
  End;
 ibdsMainPrimaryTovarBody.Bookmark := BookMark;
 dbeItogo.Text :=FormatFloat('#,##0.00',TotalMany);
 dbeNDS.Text :=FormatFloat('#,##0.00',NDS);
 dbeTovar.Text :=FormatFloat('#,##0.00',TotalMany-NDS);
 ibdsMainPrimaryTovarBody.EnableControls
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarBody.ParamByName('ID').AsInteger := ibdsMainPrimaryTovar.ParamByName('ID').AsInteger
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyBeforePost(
  DataSet: TDataSet);
 var NDSOld, NDSNew : Double;
begin
 If (ibdsMainPrimaryTovarBodyItogoManyOld.AsFloat<>ibdsMainPrimaryTovarBodyItogoMany.AsFloat) then
  Begin
// !!!!!!!! Не совсем честно - могут быть проблеммы при округлении. Должно быть вычисление
// !!!!!!!! на основе цены за единицу. 
   NDSOld := Round(ibdsMainPrimaryTovarBodyItogoManyOld.AsFloat*ibdsMainPrimaryTovarBodyNDS.AsFloat/(100+ibdsMainPrimaryTovarBodyNDS.AsFloat)*100)/100;
   NDSNew := Round((ibdsMainPrimaryTovarBodyPRICE.AsFloat-ibdsMainPrimaryTovarBodyPRICE_WO_NDS.AsFloat)*ibdsMainPrimaryTovarBodyItogo.AsFloat*100)/100;
   NDS := NDS-NDSOld+NDSNew;
   TotalMany := TotalMany-ibdsMainPrimaryTovarBodyItogoManyOld.AsFloat+ibdsMainPrimaryTovarBodyItogoMany.AsFloat;
   ibdsMainPrimaryTovarBodyItogoManyOld.Value := ibdsMainPrimaryTovarBodyItogoMany.AsFloat;
   dbeItogo.Text :=FormatFloat('#,##0.00',TotalMany);
   dbeNDS.Text :=FormatFloat('#,##0.00',NDS);
   dbeTovar.Text :=FormatFloat('#,##0.00',TotalMany-NDS)
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarListCalcFields(
  DataSet: TDataSet);
begin
 If NOT (ibdsMainPrimaryTovarListCONTRACTOR_NAME.IsNull) then
  Begin
   Case ibdsMainPrimaryTovarListCONTRACTOR_TYPE.AsInteger of
    0 : ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := 'Поставщик: ';
    1 : ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := 'Подотчетник: ';
    2 : ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := 'Водитель: ';
    3 : ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := 'А/М: '
   end;
   ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.AsString+
                                                               ibdsMainPrimaryTovarListCONTRACTOR_NAME.AsString;
   If (ibdsMainPrimaryTovarListCONTRACTOR_TYPE.AsInteger=4) then
    Begin
     ibsAux.SQL.Clear;
     Case ibdsMainPrimaryTovarListSTORE_TYPE.AsInteger of
      0 : ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value+
                                                                ' со склада';
      1 : Begin
           ibsAux.SQL.Add('select P.SURNAME||'#39+' '+#39'||P.NAME||'#39+' '+#39'||P.SECOND_NAME CONTRACTOR_NAME from PERSONS P where P.ID='+ibdsMainPrimaryTovarListSTORE_ID.AsString);
           ibsAux.ExecQuery;
           ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value+' c '+
                                                                 ibsAux.FieldByName('CONTRACTOR_NAME').AsString;
           ibsAux.Close
          End;
      3 : Begin
           ibsAux.SQL.Add('select AM.NAME||'#39+' '+#39'||AU.STATE_NUMBER CONTRACTOR_NAME from AUTOMOBILE_MAKES AM, AUTOMOBILES AU where (AU.ID='+ibdsMainPrimaryTovarListSTORE_ID.AsString+') and (AU.AUTOMOBILE_MAKE_ID=AM.ID)');
           ibsAux.ExecQuery;
           ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value := ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME.Value+' c '+
                                                                 ibsAux.FieldByName('CONTRACTOR_NAME').AsString;
           ibsAux.Close
          End
     End
    End
  End
end;

procedure TfrmNakl.SetContractor;
begin
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('ID;CONTRACTOR_TYPE',VarArrayOf([frmKontrAgList.ibdsMainContractorsID.Value, 0]),[]);
 If NOT (ibdsMainPrimaryTovar.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovar.Edit;
 ibdsMainPrimaryTovarCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 ibdsMainPrimaryTovarCONTRACTOR_TYPE.Value := ibdsContractorsCONTRACTOR_TYPE.AsInteger;
 dblContractor.Text := ibdsContractorsCONTRACTOR_NAME.AsString;
 frmKontrAgList.LookUpProcedure := nil;
 frmKontrAgList.Close
end;

procedure TfrmNakl.dblContractorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) and (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=0) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainPrimaryTovarCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainPrimaryTovarCONTRACTOR_ID.Value,[]);
   frmKontrAgList.Show
  End
end;

procedure TfrmNakl.sbFilterPrimaryTovarListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterTypes.Active := sbFilterPrimaryTovarList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarList.Down;
 ibdsFilterAccounts.Active := sbFilterPrimaryTovarList.Down;
 pnlFilter.Visible := sbFilterPrimaryTovarList.Down;
 pnlText.Visible := sbFilterPrimaryTovarList.Down;
 BookMark := ibdsMainPrimaryTovarList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainPrimaryTovarList.Close;
 GenerateSelectMainPrimaryTovarList;
 try
  ibdsMainPrimaryTovarList.Open;
 except
  MessageDlg('Неверные установки фильтра!',mtError,[mbOK],0)
 end;
 try
  ibdsMainPrimaryTovarList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault
end;

procedure TfrmNakl.sbReFilterClick(Sender: TObject);
begin
 sbFilterPrimaryTovarList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmNakl.sbDownClick(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 sbDown.Visible := pnlFilter.Visible;
 sbUp.Visible := Not pnlFilter.Visible
end;

procedure TfrmNakl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{ try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterPrimaryTovarIncomeList.Down) then
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('insert into FILTERS (PERSON_ID, FORM_NAME, FILTER_NAME, CHEKED, FILTER_VALUE)');
    ibsAux.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FILTER_NAME, 1, :FILTER_VALUE)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('PERSON_ID').Value := PersonID;
    ibsAux.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
    If (cbContractor.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbContractor.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edContractor.Text;
      ibsAux.ExecQuery
     End;
    If (cbType.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbType.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edType.Text;
      ibsAux.ExecQuery
     End;
    If (cbPeriod.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Start';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStart.Text;
      ibsAux.ExecQuery;
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Stop';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStop.Text;
      ibsAux.ExecQuery
     End;
    If (cbArticuls.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbArticuls.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edArticul.Text;
      ibsAux.ExecQuery
     End;
    If (cbPrefix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPrefix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edPrefix.Text;
      ibsAux.ExecQuery
     End;
    If (cbNumber.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbNumber.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edNumber.Text;
      ibsAux.ExecQuery
     End;
    If (cbSuffix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbSuffix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edSuffix.Text;
      ibsAux.ExecQuery
     End;
   End
  except
  end;}
 inherited
end;

procedure TfrmNakl.sbRefreshPrimaryTovarListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimaryTovarList.Bookmark;
 ibdsMainPrimaryTovarList.Close;
 ibdsMainPrimaryTovarList.Open;
 try
  ibdsMainPrimaryTovarList.Bookmark := BookMark
 except
 end
end;

procedure TfrmNakl.ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
begin
 If (DataSet=ibdsFilterTypes) and (IType<>'') then
  Begin
   edType.Text := IType;
   ibdsFilterTypes.Locate('NAME',IType,[])
  End;
 If (DataSet=ibdsFilterArticuls) and (ArticulName<>'') then
  Begin
   edArticul.Text := ArticulName;
   ibdsFilterArticuls.Locate('NAME',ArticulName,[])
  End;
 If (DataSet=ibdsFilterAccounts) and (Account<>'') then
  Begin
   edAccount.Text := Account;
   ibdsFilterAccounts.Locate('SHORT_NAME',Account,[])
  End;
 edContractor.Text := Contractor;
 deDateStart.Date := DateStart;
 deDateStop.Date := DateStop;
 sbReFilter.Visible := False
end;

procedure TfrmNakl.ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
begin
 IType := edType.Text;
 Contractor := edContractor.Text;
 ArticulName := edArticul.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date
end;

procedure TfrmNakl.dbgPrimaryTovarListCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: If (AFieldName='AMOUNT_FMT') then
      wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarList)
     else
      wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarList);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarBody)
 end
end;

procedure TfrmNakl.ibdsMainPrimaryTovarListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovarList', True)
end;

procedure TfrmNakl.ibdsMainPrimaryTovarAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovar', True);
 dbgSerialsUpdateFooter;
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyARTICULChange(Sender: TField);
 var ID : Integer;
begin
 If (ibdsMainPrimaryTovarBodyARTICUL.AsString='') then
  Exit;
 ibsAux.Close;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select ID from ARTICULS where (ARTICUL='''+
                 ibdsMainPrimaryTovarBodyARTICUL.AsString+''')');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('ID').IsNull) then
  ID := 0
 else
  ID := ibsAux.FieldByName('ID').AsInteger;
 ibsAux.Close;
 If (ibdsMainPrimaryTovarBodyARTICUL_ID.AsInteger<>ID) then
  If (ID<>0) then
   Begin
    If (lcArticuls.Visible) then
     Begin
      If (ibdsArticuls.Locate('ID',ID,[])) then
       lcArticuls.CloseUp(True)
      else
       ibdsMainPrimaryTovarBodyARTICUL_ID.Value := 0
     End
    else
     If (lcStoreCards.Visible) then
      Begin
       If (ibdsStoreCards.Locate('ARTICUL_ID',ID,[])) then
        lcStoreCards.CloseUp(True)
       else
        ibdsMainPrimaryTovarBodyARTICUL_ID.Value := 0
      End
     else
      Begin
       If (ibdsRemains.Locate('ARTICUL_ID',ID,[])) then
        lcRemains.CloseUp(True)
       else
        ibdsMainPrimaryTovarBodyARTICUL_ID.Value := 0
      End
   End
  else
   ibdsMainPrimaryTovarBodyARTICUL_ID.AsInteger := ID
end;

procedure TfrmNakl.SetReadOnlyFields;
begin
 ibdsMainPrimaryTovarBodyPRICE.ReadOnly := (In_Out=1) or
                                           ((In_Out=2) and (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=1))
end;

procedure TfrmNakl.ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('IN_OUT').Value := In_Out
end;

procedure TfrmNakl.GenerateSelectContractors;
begin
 ibdsContractors.SelectSQL.Clear;
 Case ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger of
  0 : ibdsContractors.SelectSQL.Add('select ID, cast(NAME as VARCHAR(115)) NAME, 0 CONTRACTOR_TYPE, ID*10 CONTRACTOR_ID_TYPE from CONTRACTORS order by 2');
  1 : Begin
//Можно включить потом, если лимитные карты только для автомобилей и наоборот
{   If (ibdsPrimary_SetupNAME.AsString<>'ЛИМИТНАЯ КАРТА') and
      (ibdsMainPrimaryTovarPRIMARY_SETUP_ID.AsInteger=ibdsPrimary_SetupID.AsInteger) then
    Begin}
       ibdsContractors.SelectSQL.Add('select P.ID, cast(P.SURNAME||'#39+' '+#39'||P.NAME||'#39+' '+#39'||P.SECOND_NAME as VARCHAR(115)) NAME,');
       ibdsContractors.SelectSQL.Add('cast(P.IS_DRIVER+1 as INTEGER) CONTRACTOR_TYPE, (P.ID*10+P.IS_DRIVER+1) CONTRACTOR_ID_TYPE');
       ibdsContractors.SelectSQL.Add('from PERSONS P');
       ibdsContractors.SelectSQL.Add('union');
//    End;
       ibdsContractors.SelectSQL.Add('select AU.ID, cast(AM.NAME||'#39+' '+#39'||AU.STATE_NUMBER as VARCHAR(115)) NAME,');
       ibdsContractors.SelectSQL.Add('3 CONTRACTOR_TYPE, (AU.ID*10+3) CONTRACTOR_ID_TYPE');
       ibdsContractors.SelectSQL.Add('from AUTOMOBILES AU, AUTOMOBILE_MAKES AM');
       ibdsContractors.SelectSQL.Add('where (AU.AUTOMOBILE_MAKE_ID=AM.ID)');
       ibdsContractors.SelectSQL.Add('order by 3, 2')
      End;
  2 : Begin
       ibdsContractors.SelectSQL.Add('select 0 ID, cast('#39'СКЛАД'#39' as VARCHAR(115)) NAME,');
       ibdsContractors.SelectSQL.Add('0 CONTRACTOR_TYPE, cast(0 as NUMERIC(18,0)) CONTRACTOR_ID_TYPE');
       ibdsContractors.SelectSQL.Add('from rdb$database');
       ibdsContractors.SelectSQL.Add('union');
       ibdsContractors.SelectSQL.Add('select P.ID, cast(P.SURNAME||'#39+' '+#39'||P.NAME||'#39+' '+#39'||P.SECOND_NAME as VARCHAR(115)) NAME,');
       ibdsContractors.SelectSQL.Add('1 CONTRACTOR_TYPE, (P.ID*10+1) CONTRACTOR_ID_TYPE');
       ibdsContractors.SelectSQL.Add('from PERSONS P');
       ibdsContractors.SelectSQL.Add('where (P.IS_DRIVER=0) and (P.VALID=1)');
       ibdsContractors.SelectSQL.Add('union');
       ibdsContractors.SelectSQL.Add('select AU.ID, cast(AM.NAME||'#39+' '+#39'||AU.STATE_NUMBER as VARCHAR(115)) NAME,');
       ibdsContractors.SelectSQL.Add('3 CONTRACTOR_TYPE, (AU.ID*10+3) CONTRACTOR_ID_TYPE');
       ibdsContractors.SelectSQL.Add('from AUTOMOBILES AU, AUTOMOBILE_MAKES AM');
       ibdsContractors.SelectSQL.Add('where (AU.AUTOMOBILE_MAKE_ID=AM.ID) and (AU.VALID=1)');
       ibdsContractors.SelectSQL.Add('order by 3, 2')
      End
 End
end;

procedure TfrmNakl.ibdsContractorsCalcFields(DataSet: TDataSet);
begin
 ibdsContractorsCONTRACTOR_NAME.Value := ibdsContractorsNAME.AsString;
 Case ibdsContractorsCONTRACTOR_TYPE.AsInteger of
   1 : ibdsContractorsCONTRACTOR_NAME.Value := ibdsContractorsCONTRACTOR_NAME.AsString+' - Подотчетник';
   2 : ibdsContractorsCONTRACTOR_NAME.Value := ibdsContractorsCONTRACTOR_NAME.AsString+' - Водитель';
   3 : ibdsContractorsCONTRACTOR_NAME.Value := ibdsContractorsCONTRACTOR_NAME.AsString+' - А/М'
 end;
end;

procedure TfrmNakl.dblContractorCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (Modified) then
  Begin
   If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=2) then
    Begin
     ibdsMainPrimaryTovarSTORE_ID.Value := ibdsContractorsID.AsInteger;
     ibdsMainPrimaryTovarSTORE_TYPE.Value := ibdsContractorsCONTRACTOR_TYPE.AsInteger
    End
   else
    Begin
     ibdsMainPrimaryTovarCONTRACTOR_ID.Value := ibdsContractorsID.AsInteger;
     ibdsMainPrimaryTovarCONTRACTOR_TYPE.Value := ibdsContractorsCONTRACTOR_TYPE.AsInteger
    End
  End                                   
end;

procedure TfrmNakl.dblAccountsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmAccounts')=nil) then
    frmAccounts := TfrmAccounts.Create(frmMain);
   frmAccounts.LookUpProcedure := SetAccount;
   If NOT (ibdsMainPrimaryTovarACCOUNT_ID.IsNull) then
    Begin
     frmAccounts.dbeFilter.Text := dblAccounts.Text;
     frmAccounts.sbReFilter.Click
    End;
   frmAccounts.Show
  End
end;

procedure TfrmNakl.SetAccount;
begin
 ibdsAccounts.Close;
 ibdsAccounts.Open;
 ibdsAccounts.Locate('ID',frmAccounts.ibdsMainID.AsInteger,[]);
 If NOT (ibdsMainPrimaryTovar.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovar.Edit;
 ibdsMainPrimaryTovarACCOUNT_ID.Value := frmAccounts.ibdsMainID.Value;
 dblAccounts.Text := frmAccounts.ibdsMainNAME.AsString;
 frmAccounts.LookUpProcedure := nil;
 frmAccounts.Close
end;

procedure TfrmNakl.dblAccountsBodyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmAccounts')=nil) then
    frmAccounts := TfrmAccounts.Create(frmMain);
   frmAccounts.LookUpProcedure := SetAccountBody;
   If NOT (ibdsMainPrimaryTovarBodyACCOUNT_ID.IsNull) then
    Begin
     frmAccounts.dbeFilter.Text := dblAccountsBody.Text;
     frmAccounts.sbReFilter.Click
    End;
   frmAccounts.Show
  End
end;

procedure TfrmNakl.SetAccountBody;
begin
 ibdsAccounts.Close;
 ibdsAccounts.Open;
 If NOT (ibdsMainPrimaryTovarBody.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarBody.Edit;
 ibdsMainPrimaryTovarBodyACCOUNT_ID.Value := frmAccounts.ibdsMainID.Value;
 dblAccountsBody.Text := frmAccounts.ibdsMainNAME.AsString;
 frmAccounts.LookUpProcedure := nil;
 frmAccounts.Close
end;

procedure TfrmNakl.dblAccountsBodyCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPrimaryTovarBodyACCOUNT_ID.Value := ibdsAccountsID.Value
end;

procedure TfrmNakl.N1Click(Sender: TObject);
begin
 If NOT(ibdsMainPrimaryTovar.State in [dsInsert, dsEdit]) then
  ibdsMainPrimaryTovar.Edit;
 ibdsMainPrimaryTovarACCOUNT_ID.AsVariant := Null
end;

procedure TfrmNakl.N2Click(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimaryTovarBody.Bookmark;
 ibdsMainPrimaryTovarBody.DisableControls;
 If NOT (ibdsMainPrimaryTovarACCOUNT_ID.IsNull) then
  ibdsAccounts.Locate('ID',ibdsMainPrimaryTovarACCOUNT_ID.Value,[]);
 ibdsMainPrimaryTovarBody.First;
 While Not (ibdsMainPrimaryTovarBody.Eof) do
  Begin
   ibdsMainPrimaryTovarBody.Edit;
   ibdsMainPrimaryTovarBodyACCOUNT_ID.Value := ibdsMainPrimaryTovarACCOUNT_ID.Value;
   If (ibdsMainPrimaryTovarACCOUNT_ID.IsNull) then
    ibdsMainPrimaryTovarBodySHORT_NAME.Value := ''
   else
    ibdsMainPrimaryTovarBodySHORT_NAME.Value := ibdsAccountsSHORT_NAME.Value;
   ibdsMainPrimaryTovarBody.Next
  End;
 ibdsMainPrimaryTovarBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarBody.EnableControls;
 StteChange('PrimaryTovar', True)
end;

procedure TfrmNakl.MenuItem1Click(Sender: TObject);
begin
 If NOT(ibdsMainPrimaryTovarBody.State in [dsInsert, dsEdit]) then
  ibdsMainPrimaryTovarBody.Edit;
 ibdsMainPrimaryTovarBodyACCOUNT_ID.AsVariant := Null
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyPRICEChange(Sender: TField);
begin
 If (Sender.Value<0) then
  Sender.Value := 0;
 If (Frac(StrToFloat(FloatToStr(Sender.AsFloat*100)))>0) then
  Sender.AsFloat := Round(Sender.AsFloat*100)/100;
 ibdsMainPrimaryTovarBodyPRICE_WO_NDS.AsFloat := Round(ibdsMainPrimaryTovarBodyPRICE.AsFloat*(1-ibdsMainPrimaryTovarBodyNDS.AsFloat/(100+ibdsMainPrimaryTovarBodyNDS.AsFloat))*100)/100;
 If (In_Out=2) then                     
  ibdsMainPrimaryTovarBodySTORE_CARD_ID.AsVariant := Null
end;

procedure TfrmNakl.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmNakl.edTypeChange(Sender: TObject);
begin
 sbReFilter.Visible := ((FindComponent('cb'+Copy((Sender as TComponent).Name,3,Length((Sender as TComponent).Name)-2)) as TwwCheckBox).Checked)
end;

procedure TfrmNakl.deDateStartChange(Sender: TObject);
begin
 sbReFilter.Visible := cbPeriod.Checked
end;

procedure TfrmNakl.cbTypeClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmNakl.cbbAmountSignChange(Sender: TObject);
begin
 sbReFilter.Visible := cbAmount.Checked
end;

procedure TfrmNakl.lcStoreCardsCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryTovarBodyPRICE.Value := ibdsStoreCardsPRICE.Value;
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := ibdsStoreCardsARTICUL_ID.Value;
   ibdsMainPrimaryTovarBodySTORE_CARD_ID.Value := ibdsStoreCardsSTORE_CARD_ID.Value;
   lcStoreCards.Text := ibdsStoreCardsNAME.AsString;
   ibdsMainPrimaryTovarBodyUNITS.Value := ibdsStoreCardsUNITS.Value;
   ibdsMainPrimaryTovarBodyGOOD_TYPE.Value := ibdsStoreCardsGOOD_TYPE.Value
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarCONTRACTOR_TYPEChange(
  Sender: TField);
begin
 If (In_Out=2) then
  If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=0) then
   Begin
    ibdsArticuls.Open;
    lcArticuls.Visible := True;
    dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcArticuls');
    lcRemains.Visible := False;
    ibdsRemains.Close;
    ibdsSerials_Outer_In.Open;
    ibdsSerials_Inner_Movement.Close;
    ibdsSerials_Available.Close;
    ibdsMainPrimaryTovarBodySERIALS_COUNT.Visible := True
   End
  else
   Begin
    ibdsRemains.Open;
    ibdsSerials_Inner_Movement.Open;
    ibdsSerials_Available.Open;
    ibdsSerials_Outer_In.Close;
    lcRemains.Visible := True;
    dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcRemains');
    lcArticuls.Visible := False;
    ibdsArticuls.Close;
    ibdsMainPrimaryTovarBodySERIALS_COUNT.Visible := False
   End
 else
  Begin
   ibdsSerials_Inner_Movement.Open;
   ibdsSerials_Available.Open;
   ibdsSerials_Outer_In.Close;
   If (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger=3) then
    SetContractorSize(0)
   else
    SetContractorSize(1)
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarCONTRACTOR_IDChange(Sender: TField);
begin
 If (In_Out=2) and (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0) and
    (ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger<>OldContractorID) and
    (ibdsMainPrimaryTovarBody.RecordCount>0) then
  If (MessageDlg('Изменение контрагента повлечет удаление всего тела документа. Продолжить?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
   Begin
    ibdsMainPrimaryTovarBody.First;
    While NOT (ibdsMainPrimaryTovarBody.Eof) do
     ibdsMainPrimaryTovarBody.Delete
   End
  else
   If (OldContractorID<>0) then
    ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger := OldContractorID
   else
    Begin
     ibdsMainPrimaryTovarCONTRACTOR_ID.AsVariant := null;
     dblContractor.Text := ''
    End; 
 If (ibdsRemains.Active) then
  Begin
   ibdsRemains.Close;
   ibdsRemains.Open
  End;
 OldContractorID := ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger;
 dbgPrimaryTovarBody.Enabled := True
end;

procedure TfrmNakl.lcRemainsCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryTovarBodyPRICE.Value := ibdsRemainsPRICE.Value;
   lcRemains.Text := ibdsRemainsNAME.AsString;
   ibdsMainPrimaryTovarBodyARTICUL_ID.Value := ibdsRemainsARTICUL_ID.Value;
   dbgAvailable.SelectAll;
   sbToDoc.Click
{   If (ibdsMainPrimaryTovarBodyPACK_VALUE.AsFloat>0) then
    Begin
     ibdsMainPrimaryTovarBodyPACKS_AMOUNT.Value := Trunc(ibdsRemainsTOTAL.AsFloat/ibdsMainPrimaryTovarBodyPACK_VALUE.AsFloat);
     ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := ibdsRemainsTOTAL.AsFloat-ibdsMainPrimaryTovarBodyPACKS_AMOUNT.AsFloat*ibdsMainPrimaryTovarBodyPACK_VALUE.AsFloat
    End
   else
    ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := ibdsRemainsTOTAL.Value;}
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarPRIMARY_SETUP_IDChange(
  Sender: TField);
begin
 If (OldMovementType<>ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger) and
    (ibdsMainPrimaryTovar.State in [dsInsert, dsEdit]) then
  Begin
   OldMovementType := ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger;
   ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsVariant := null;
   ibdsMainPrimaryTovarCONTRACTOR_ID.AsVariant := null;
   ibdsContractors.Close;
   GenerateSelectContractors;
   ibdsContractors.Open;
   dblContractor.Text := '';
  End;
 ibdsContractors.Close;
 GenerateSelectContractors;
 ibdsContractors.Open;
 SetReadOnlyFields;
 If NOT(ibdsMainPrimaryTovarCONTRACTOR_ID.IsNull) then
  If NOT(ibdsContractors.Locate('ID;CONTRACTOR_TYPE',VarArrayOf([ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger,ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger]),[])) then
   ibdsMainPrimaryTovarCONTRACTOR_ID.AsVariant := Null;
 If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=2) then
  Begin
   ibdsMainPrimaryTovarCONTRACTOR_TYPE.Value := 4;
   ibdsMainPrimaryTovarCONTRACTOR_ID.Value := -1;
   lblPassPersons.Visible := False;
   dblPassPersons.Visible := False;
   lblContractor.Caption := 'Отправитель'
  End
 else
  lblContractor.Caption := 'Контрагент';
 SetContractorSize(1)
end;

procedure TfrmNakl.ibdsPassPersonsCalcFields(DataSet: TDataSet);
begin
 ibdsPassPersonsCONTRACTOR_NAME.Value := ibdsPassPersonsNAME.AsString;
 Case ibdsPassPersonsIS_DRIVER.AsInteger of
   0 : ibdsPassPersonsCONTRACTOR_NAME.Value := ibdsPassPersonsCONTRACTOR_NAME.AsString+' - Подотчетник';
   1 : ibdsPassPersonsCONTRACTOR_NAME.Value := ibdsPassPersonsCONTRACTOR_NAME.AsString+' - Водитель'
 end;
end;

procedure TfrmNakl.SetContractorSize(Big: Integer);
begin
 lblPassPersons.Visible := (Big=0);
 dblPassPersons.Visible := (Big=0);
 ibdsPassPersons.Active := (Big=0);
 dblContractor.Left := lblContractor.Left+lblContractor.Width+3;
 If (Big=0) then
  dblContractor.Width := lblPassPersons.Left-dblContractor.Left-3
 else
  Begin
   If (ibdsMainPrimaryTovar.State in [dsInsert, dsEdit]) then
    ibdsMainPrimaryTovarPASS_PERSON_ID.AsVariant := Null;
   dblContractor.Width := dblPrimarySetup.Left+dblPrimarySetup.Width-dblContractor.Left
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyPACKS_AMOUNTChange(
  Sender: TField);
begin
 If (Sender.AsInteger<>0) and
    ((Sender.AsInteger<0) or
     ((ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger<>0) and
      (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0))) then
  Sender.Value := 0
end;

procedure TfrmNakl.ibdsSerials_Outer_InFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (Saving) or
           (ibdsSerials_Outer_InPRIMARY_TOVAR_BODY_ID.AsInteger=ibdsMainPrimaryTovarBodyID.AsInteger);
end;

procedure TfrmNakl.ibdsSerials_Outer_InNewRecord(DataSet: TDataSet);
begin
 ibdsSerials_Outer_InID.Value := GetNewID(ibsGen_ID,'GEN_SERIALS_OUTER_IN_ID');
 ibdsSerials_Outer_InPRIMARY_TOVAR_BODY_ID.Value := ibdsMainPrimaryTovarBodyID.AsInteger
end;

procedure TfrmNakl.wwExpandButton1CheckVisibleButton(
  Sender: TwwExpandButton; DataSet: TDataSet; var AShowExpand: Boolean);
begin
 AShowExpand := (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger>0)
end;

procedure TfrmNakl.wwExpandButton1BeforeExpand(Sender: TObject);
begin
 If (ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger=0) then
  Abort;
 dbgSerialsUpdateFooter
end;

procedure TfrmNakl.dbgSerialsUpdateFooter;
begin
 FilteredRecordCount := CountUpDocumentSerials(ibdsMainPrimaryTovarBodyID.AsInteger);
 dbgSerials.ColumnByName('SERIAL_NUMBER').FooterValue := IntToStr(FilteredRecordCount)+
        ' из '+FormatFloat('#,##0.###',ibdsMainPrimaryTovarBodyItogo.AsFloat)
end;

procedure TfrmNakl.ibdsSerials_Outer_InBeforeInsert(DataSet: TDataSet);
begin
 If NOT (FilteredRecordCount<ibdsMainPrimaryTovarBodyItogo.AsFloat) then
  Abort
end;

procedure TfrmNakl.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
 const SC_DRAGRESIZE = $F008;
begin
 If (ssLeft in Shift) then
  Begin
   ReleaseCapture;
   pnlSerials.Perform(WM_SYSCOMMAND, SC_DRAGRESIZE, 0)
  End
end;

procedure TfrmNakl.sbSerialsCloseClick(Sender: TObject);
begin
 dbgPrimaryTovarBody.SetFocus;
 pnlSerials.Hide
end;

procedure TfrmNakl.pnlSerialsResize(Sender: TObject);
begin
 pnlDoc.Width := (pnlSerials.Width-pnlSplitter.Width) div 2
end;

procedure TfrmNakl.ibdsSerials_Inner_MovementFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
 Accept := (Saving) or
           (ibdsSerials_Inner_MovementPRIMARY_TOVAR_BODY_ID.AsInteger=ibdsMainPrimaryTovarBodyID.AsInteger);
{!! If (Accept) then
  Inc(FilteredRecordCount)}          
end;

procedure TfrmNakl.ibdsSerials_Inner_MovementNewRecord(DataSet: TDataSet);
begin
 ibdsSerials_Inner_MovementID.Value := GetNewID(ibsGen_ID,'GEN_SERIALS_INNER_MOVEMENT_ID');
 ibdsSerials_Inner_MovementPRIMARY_TOVAR_BODY_ID.Value := ibdsMainPrimaryTovarBodyID.AsInteger
end;

procedure TfrmNakl.ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := True;
 ibdsSerials_Inner_Movement.First;
 While Not (ibdsSerials_Inner_Movement.Eof) do
  Begin
   If (ibdsSerials_Inner_MovementSERIAL_ID.AsInteger=ibdsSerials_AvailableID.AsInteger) then
    Begin
     Accept := False;
     Break
    End;
   ibdsSerials_Inner_Movement.Next
  End;
end;

procedure TfrmNakl.sbToDocClick(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(dbgAvailable.SelectedList.Count) do
  Begin
   ibdsSerials_Available.GotoBookmark(dbgAvailable.SelectedList.Items[k]);
   ibdsSerials_Inner_Movement.Append;
   ibdsSerials_Inner_MovementSERIAL_ID.Value := ibdsSerials_AvailableID.AsInteger;
   ibdsSerials_Inner_MovementSERIAL_NUMBER.Value := ibdsSerials_AvailableSERIAL_NUMBER.AsString;
   ibdsSerials_Inner_Movement.Post;
   ibdsSerials_Available.Delete
  End;
 dbgAvailable.SelectedList.Clear
end;

procedure TfrmNakl.dbgAvailableEnter(Sender: TObject);
begin
 sbToDoc.Enabled := (Sender=dbgAvailable);
 sbToAvailable.Enabled := (Sender=dbgDoc)
end;

procedure TfrmNakl.sbToAvailableClick(Sender: TObject);
 var k,ID : Integer;
     Serial_Number : String;
     Located : Boolean;
begin
 For k := 0 to Pred(dbgDoc.SelectedList.Count) do
  Begin
   ibdsSerials_Inner_Movement.GotoBookmark(dbgDoc.SelectedList.Items[k]);
   ID := ibdsSerials_Inner_MovementSERIAL_ID.AsInteger;
   Serial_Number := ibdsSerials_Inner_MovementSERIAL_NUMBER.AsString;
   ibdsSerials_Inner_Movement.Delete;
   Located := False;
   ibdsSerials_Available.First;
   While Not (ibdsSerials_Available.Eof) do
    Begin
     If (ibdsSerials_AvailableID.AsInteger=ID) then
      Begin
       Located := True;
       Break
      End;
     ibdsSerials_Available.Next
    End;
   If NOT (Located) then
    Begin
     ibdsSerials_Available.Append;
     ibdsSerials_AvailableID.Value := ID;
     ibdsSerials_AvailableSERIAL_NUMBER.Value := Serial_Number;
     ibdsSerials_Available.Post
    End
  End;
 dbgDoc.SelectedList.Clear
end;

procedure TfrmNakl.edSearchDocKeyPress(Sender: TObject; var Key: Char);
 var S: String;
begin
 S := edSearchDoc.Text;
 If (Key<>#8) then
  S := edSearchDoc.Text+Key;
 If ibdsSerials_Inner_Movement.Locate('SERIAL_NUMBER',S,[loCaseInsensitive, loPartialKey]) then
  Begin
   dbgDoc.UnselectAll;
   dbgDoc.SelectRecord
  End
end;

procedure TfrmNakl.edSearchAvailableKeyPress(Sender: TObject;
  var Key: Char);
 var S: String;
begin
 S := edSearchAvailable.Text;
 If (Key<>#8) then
  S := edSearchAvailable.Text+Key;
 If ibdsSerials_Available.Locate('SERIAL_NUMBER',S,[loCaseInsensitive, loPartialKey]) then
  Begin
   dbgAvailable.UnselectAll;
   dbgAvailable.SelectRecord
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyITEMS_AMOUNTChange(
  Sender: TField);
begin
 If (Sender.AsInteger<0) then
  Sender.Value := 0
end;

procedure TfrmNakl.dbgPrimaryTovarBodyDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
 var tmp : Integer;
begin
 If (gdFocused in State) and (Field=ibdsMainPrimaryTovarBodyITEMS_AMOUNT) then
  Begin
   tmp := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarBody.ClientToScreen(Point(Rect.Left,Rect.Bottom))).x;
   If (pnlSerials.Parent.Width>tmp+pnlSerials.Width) then
    pnlSerials.Left := tmp
   else
    pnlSerials.Left := tmp+(Rect.Right-Rect.Left)-pnlSerials.Width;
   tmp := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarBody.ClientToScreen(Point(Rect.Left,Rect.Bottom))).y;
   If (pnlSerials.Parent.Height>tmp+pnlSerials.Height) then
    pnlSerials.Top := tmp
   else
    pnlSerials.Top := tmp-(Rect.Bottom-Rect.Top)-pnlSerials.Height
  End
end;

procedure TfrmNakl.ibdsMainPrimaryTovarBodyAfterScroll(DataSet: TDataSet);
begin
 If (ibdsSerials_Inner_Movement.Active) then
  ibdsSerials_Inner_Movement.First;
 If (ibdsSerials_Outer_In.Active) then
  dbgSerialsUpdateFooter;
end;

procedure TfrmNakl.ibdsSerials_Inner_MovementAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovar', True);
 If NOT (ibdsMainPrimaryTovarBody.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarBody.Edit;
 ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarBodyITEMS_AMOUNT.AsInteger-1
end;

procedure TfrmNakl.ibdsSerials_Inner_MovementAfterInsert(
  DataSet: TDataSet);
begin
{!! FilteredRecordCount := 0;}
 If NOT (ibdsMainPrimaryTovarBody.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarBody.Edit;
 ibdsMainPrimaryTovarBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarBodyITEMS_AMOUNT.AsInteger+1
end;

procedure TfrmNakl.ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
begin
 If (In_Out=2) then
  Begin
   ibdsSerials_Available.ParamByName('LOCATION_TYPE').AsInteger := ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger;
   ibdsSerials_Available.ParamByName('LOCATION_ID').AsInteger := ibdsMainPrimaryTovarCONTRACTOR_ID.AsInteger
  End
end;

procedure TfrmNakl.dbgDocKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_Escape) then
  sbSerialsClose.Click
end;

procedure TfrmNakl.miSerialsClick(Sender: TObject);
begin
 pnlSerials.Show;
 dbgAvailable.SetFocus
end;

procedure TfrmNakl.pmPrimaryTovarBodyPopup(Sender: TObject);
begin
 If NOT((ibdsMainPrimaryTovarBodyGOOD_TYPE.AsInteger<>0) and
        (ibdsMainPrimaryTovarCONTRACTOR_TYPE.AsInteger<>0)) then
 Abort
end;

procedure TfrmNakl.ibdsMainPrimaryTovarSTORE_IDChange(Sender: TField);
begin
 If (ibdsRemains.Active) then
  Begin
   ibdsRemains.Close;
   ibdsRemains.Open
  End;
 OldStoreID := ibdsMainPrimaryTovarSTORE_ID.AsInteger
end;

procedure TfrmNakl.ibdsMainPrimaryTovarSTORE_TYPEChange(Sender: TField);
begin
 If (In_Out=1) then
  If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=2) then
   If (ibdsMainPrimaryTovarSTORE_TYPE.AsInteger=0) then
    Begin
     ibdsStoreCards.Open;
     lcStoreCards.Visible := True;
     dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcStoreCards');
     lcArticuls.Visible := False;
     lcRemains.Visible := False;
     ibdsRemains.Close;
     ibdsArticuls.Close
    End
   else
    Begin
     ibdsRemains.Open;
     lcRemains.Visible := True;
     dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcRemains');
     lcArticuls.Visible := False;
     lcStoreCards.Visible := False;
     ibdsStoreCards.Close;
     ibdsArticuls.Close
    End
  else
   Begin
    ibdsStoreCards.Open;
    lcStoreCards.Visible := True;
    dbgPrimaryTovarBody.SetControlType('ARTICUL_NAME',fctCustom,'lcStoreCards');
    lcArticuls.Visible := False;
    lcRemains.Visible := False;
    ibdsRemains.Close;
    ibdsArticuls.Close
   End
end;

procedure TfrmNakl.sbPrintPrimaryTovarListClick(Sender: TObject);
begin
 frVariables.Clear;
 If (lblFilter.Visible) then
  frVariables['Фильтр'] := lblFilter.Caption
 else
  frVariables['Фильтр'] := '';
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainPrimaryTovarList);
end;

function TfrmNakl.CountUpDocumentSerials(PrimaryTovarBodyID : Integer): Integer;
var
 LBookmark: String;
begin
 Result := 0;
 With ibdsSerials_Outer_In do
  Begin
   DisableControls;
   LBookmark := Bookmark;
   First;
   While NOT Eof do
    Begin
     If (ibdsSerials_Outer_InPRIMARY_TOVAR_BODY_ID.AsInteger=PrimaryTovarBodyID) then
      Inc(Result);
     Next
    End;
   try
    Bookmark := LBookmark;
   except
   end;
   EnableControls
  End;
end;

procedure TfrmNakl.ibdsSerials_Outer_InAfterPost(DataSet: TDataSet);
begin
 dbgSerialsUpdateFooter
end;

end.
