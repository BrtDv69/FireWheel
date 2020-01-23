unit Reasons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask,
  wwdbedit, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Wwdotdot,
  Wwdbcomb, IBDatabase, Db, IBCustomDataSet, IBSQL, ImgList, wwriched,
  wwrichedspell, Wwdbspin, fcLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, cxMaskEdit, cxSpinEdit, cxRadioGroup,
  cxDropDownEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmReasons = class(TfrmLike)
    ibdsMainPrimaryIncome: TIBDataSet;
    dsMainPrimaryIncome: TDataSource;
    pnlNumberFormat: TPanel;
    sbDate: TSpeedButton;
    sbMonth: TSpeedButton;
    sbYear: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDetailPrimary: TPanel;
    Label16: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Panel4: TPanel;
    sbCancelPrimary: TSpeedButton;
    sbApplyPrimary: TSpeedButton;
    sbDeletePrimary: TSpeedButton;
    sbAddPrimary: TSpeedButton;
    sbLastPrimary: TSpeedButton;
    sbNextPrimary: TSpeedButton;
    sbPriorPrimary: TSpeedButton;
    sbFirstPrimary: TSpeedButton;
    sbExit: TSpeedButton;
    Splitter1: TSplitter;
    dsMainPrimaryOutcome: TDataSource;
    ibdsMainPrimaryIncomeID: TIntegerField;
    ibdsMainPrimaryIncomeNAME: TIBStringField;
    ibdsMainPrimaryIncomeIN_OUT: TIntegerField;
    ibdsMainPrimaryIncomeMOVEMENT_TYPE: TIntegerField;
    ibdsMainPrimaryIncomeNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryIncomeNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryIncomeNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryIncomeNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryIncomeVALID: TIntegerField;
    ibdsMainPrimaryIncomeCOMMENTS: TIBStringField;
    ibdsMainPrimaryOutcome: TIBDataSet;
    ibdsMainPrimaryOutcomeID: TIntegerField;
    ibdsMainPrimaryOutcomeNAME: TIBStringField;
    ibdsMainPrimaryOutcomeIN_OUT: TIntegerField;
    ibdsMainPrimaryOutcomeMOVEMENT_TYPE: TIntegerField;
    ibdsMainPrimaryOutcomeNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryOutcomeNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryOutcomeNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryOutcomeNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryOutcomeVALID: TIntegerField;
    ibdsMainPrimaryOutcomeCOMMENTS: TIBStringField;
    lblReasonName: TfcLabel;
    dbeComments: TcxDBMemo;
    rgType: TcxDBRadioGroup;
    rgRestartPeriod: TcxDBRadioGroup;
    dbcbPrimaryNumberPrefix: TcxDBPopupEdit;
    dbcbPrimaryNumberSuffix: TcxDBPopupEdit;
    dbgOutcome: TcxGrid;
    tvOutcome: TcxGridDBTableView;
    tvOutcomeNAME: TcxGridDBColumn;
    tvOutcomeCOMMENTS: TcxGridDBColumn;
    tvOutcomeVALID: TcxGridDBColumn;
    lvOutcome: TcxGridLevel;
    tvOutcomeNUMBER_FORMAT: TcxGridDBColumn;
    dbgIncome: TcxGrid;
    tvIncome: TcxGridDBTableView;
    tvIncomeNAME: TcxGridDBColumn;
    tvIncomeNUMBER_FORMAT: TcxGridDBColumn;
    tvIncomeCOMMENTS: TcxGridDBColumn;
    tvIncomeVALID: TcxGridDBColumn;
    lvIncome: TcxGridLevel;
    GridPopupMenu: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure sbExitContractsClick(Sender: TObject);
    procedure ibdsMainPrimaryIncomeAfterScroll(DataSet: TDataSet);
    procedure sbFirstPrimaryClick(Sender: TObject);
    procedure sbPriorPrimaryClick(Sender: TObject);
    procedure sbNextPrimaryClick(Sender: TObject);
    procedure sbLastPrimaryClick(Sender: TObject);
    procedure sbAddPrimaryClick(Sender: TObject);
    procedure sbDeletePrimaryClick(Sender: TObject);
    procedure sbCancelPrimaryClick(Sender: TObject);
    procedure sbApplyPrimaryClick(Sender: TObject);
    procedure dsMainPrimaryIncomeStateChange(Sender: TObject);
    procedure ibdsMainPrimaryIncomeNewRecord(DataSet: TDataSet);
    procedure sbNumberClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainPrimaryIncomeMOVEMENT_TYPEValidate(Sender: TField);
    procedure dbcbPrimaryNumberPrefixKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBPopupEdit1PropertiesInitPopup(Sender: TObject);
    procedure dbgIncomeEnter(Sender: TObject);
  private
    { Private declarations }
    function GetWherePrimaryIncome: String;
    procedure GenerateSelectMainPrimaryIncome;
    function GetWherePrimaryOutcome: String;
    procedure GenerateSelectMainPrimaryOutcome;
    procedure StteChange(Suf: String; Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmReasons: TfrmReasons;

implementation

uses Misk, DM;

{$R *.DFM}

var
  OrderByPrimaryIncome  : String = ' 9 desc, 2 asc';
  WhereSqlPrimaryIncome : String = '';

  OrderByPrimaryOutcome  : String = ' 9 desc, 2 asc';
  WhereSqlPrimaryOutcome : String = '';

  DS : TcxDBPopupEdit;

procedure TfrmReasons.FormCreate(Sender: TObject);
begin
 FName := 'Типы документов';
 inherited;
 trMain.StartTransaction;
 GenerateSelectMainPrimaryIncome;
 GenerateSelectMainPrimaryOutcome;
 ibdsMainPrimaryIncome.Open;
 ibdsMainPrimaryOutcome.Open
end;

procedure TfrmReasons.sbExitContractsClick(Sender: TObject);
begin
 Close
end;

procedure TfrmReasons.ibdsMainPrimaryIncomeAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmReasons,'Primary');
 If (DataSet=rgType.DataBinding.DataSource.DataSet) then
  lblReasonName.Caption := Copy(lblReasonName.Caption,1,Pos(': ',lblReasonName.Caption)+1)+DataSet.FieldByName('NAME').AsString
end;

procedure TfrmReasons.sbFirstPrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.First
end;

procedure TfrmReasons.sbPriorPrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.Prior
end;

procedure TfrmReasons.sbNextPrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.Next
end;

procedure TfrmReasons.sbLastPrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.Last
end;

procedure TfrmReasons.sbAddPrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.Append
end;

procedure TfrmReasons.sbDeletePrimaryClick(Sender: TObject);
begin
 rgType.DataBinding.DataSource.DataSet.Delete;
 StteChange('Primary', True)
end;

procedure TfrmReasons.sbCancelPrimaryClick(Sender: TObject);
 var BookMarkIncome, BookMarkOutcome : String;
begin
 BookMarkIncome := ibdsMainPrimaryIncome.Bookmark;
 BookMarkOutcome := ibdsMainPrimaryOutcome.Bookmark;
 ibdsMainPrimaryIncome.CancelUpdates;
 ibdsMainPrimaryOutcome.CancelUpdates;
 StteChange('Primary', False);
 try
  ibdsMainPrimaryIncome.Bookmark := BookMarkIncome;
  ibdsMainPrimaryOutcome.Bookmark := BookMarkOutcome
 except
 end
end;

procedure TfrmReasons.sbApplyPrimaryClick(Sender: TObject);
 var BookMarkIncome, BookMarkOutcome : String;
begin
 BookMarkIncome := ibdsMainPrimaryIncome.Bookmark;
 BookMarkOutcome := ibdsMainPrimaryOutcome.Bookmark;
// try
  ibdsMainPrimaryIncome.ApplyUpdates;
  ibdsMainPrimaryOutcome.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Primary', False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainPrimaryIncome.Bookmark := BookMarkIncome;
  ibdsMainPrimaryOutcome.Bookmark := BookMarkOutcome
 except
 end
end;

procedure TfrmReasons.dsMainPrimaryIncomeStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('Primary', True)
 else
  StteChange('Primary', sbApplyPrimary.Enabled or ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmReasons.ibdsMainPrimaryIncomeNewRecord(DataSet: TDataSet);
begin
 rgType.DataBinding.DataSource.DataSet.FieldByName('ID').AsInteger := GetNewID(ibsGen_ID,'GEN_PRIMARY_SETUP_ID');
 rgType.DataBinding.DataSource.DataSet.FieldByName('VALID').AsInteger := 1;
 rgType.DataBinding.DataSource.DataSet.FieldByName('MOVEMENT_TYPE').AsInteger := 0;
 rgType.DataBinding.DataSource.DataSet.FieldByName('NUMBER_RESTART_PERIOD').AsInteger := 6;
 If (rgType.DataBinding.DataSource.DataSet=ibdsMainPrimaryIncome) then
  rgType.DataBinding.DataSource.DataSet.FieldByName('IN_OUT').AsInteger := 2
 else
  rgType.DataBinding.DataSource.DataSet.FieldByName('IN_OUT').AsInteger := 1
end;

function TfrmReasons.GetWherePrimaryIncome: String;
begin
 Result := ''
end;

function TfrmReasons.GetWherePrimaryOutcome: String;
begin
 Result := ''
end;

procedure TfrmReasons.GenerateSelectMainPrimaryIncome;
 var k : Integer;
begin
 WhereSqlPrimaryIncome := GetWherePrimaryIncome;
 For k := Pred(ibdsMainPrimaryIncome.SelectSQL.Count) downto 5 do
  ibdsMainPrimaryIncome.SelectSQL.Delete(k);
 ibdsMainPrimaryIncome.SelectSQL.Add(WhereSqlPrimaryIncome);
 ibdsMainPrimaryIncome.SelectSQL.Add('order by'+OrderByPrimaryIncome)
end;

procedure TfrmReasons.GenerateSelectMainPrimaryOutcome;
 var k : Integer;
begin
 WhereSqlPrimaryOutcome := GetWherePrimaryOutcome;
 For k := Pred(ibdsMainPrimaryOutcome.SelectSQL.Count) downto 5 do
  ibdsMainPrimaryOutcome.SelectSQL.Delete(k);
 ibdsMainPrimaryOutcome.SelectSQL.Add(WhereSqlPrimaryOutcome);
 ibdsMainPrimaryOutcome.SelectSQL.Add('order by'+OrderByPrimaryOutcome)
end;

procedure TfrmReasons.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmReasons<>nil) then
  For k := 0 to Pred(frmReasons.ComponentCount) do
   Begin
    If (frmReasons.Components[k].Name='sbApply'+Suf) or
       (frmReasons.Components[k].Name='sbCancel'+Suf) then
     (frmReasons.Components[k] as TControl).Enabled := Enabled;
    If (frmReasons.Components[k] is TTabSheet) and
       (frmReasons.Components[k].Name<>'ts'+Suf) then
     (frmReasons.Components[k] as TTabSheet).TabVisible := NOT Enabled
   End
end;

procedure TfrmReasons.sbNumberClick(Sender: TObject);
 var Sl : String;
begin
 Sl := '';
 If NOT (DS.DataBinding.DataSource.DataSet.State in [dsEdit,dsInsert]) then
  DS.DataBinding.DataSource.DataSet.Edit;
 Case (Sender as TComponent).Tag of
  11 : Sl := 'дд';
  12 : Sl := 'мм';
  14 : Sl := 'гггг';
 end;
 DS.DataBinding.DataSource.DataSet.FieldByName(DS.DataBinding.DataField).Value := DS.Text+Sl
end;

procedure TfrmReasons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 inherited;
 frmReasons := nil
end;

procedure TfrmReasons.ibdsMainPrimaryIncomeMOVEMENT_TYPEValidate(
  Sender: TField);
begin
 If (ibdsMainPrimaryIncomeMOVEMENT_TYPE.AsInteger>1) then
  Abort
end;

procedure TfrmReasons.dbcbPrimaryNumberPrefixKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := MyUpCase(Key)
end;

procedure TfrmReasons.cxDBPopupEdit1PropertiesInitPopup(Sender: TObject);
begin
 DS := Sender as TcxDBPopupEdit
end;

procedure TfrmReasons.dbgIncomeEnter(Sender: TObject);
begin
 GridPopupMenu.Grid := (Sender as TcxGrid);
 rgType.DataBinding.DataSource := ((Sender as TcxGrid).ActiveView as TcxGridDBTableView).DataController.DataSource;
 rgRestartPeriod.DataBinding.DataSource := rgType.DataBinding.DataSource;
 dbcbPrimaryNumberPrefix.DataBinding.DataSource := rgType.DataBinding.DataSource;
 dbcbPrimaryNumberSuffix.DataBinding.DataSource := rgType.DataBinding.DataSource;
 dbeComments.DataBinding.DataSource := rgType.DataBinding.DataSource;
 ibdsAfterScroll(rgType.DataBinding.DataSource.DataSet,frmReasons,'Primary');
 If (rgType.DataBinding.DataSource.DataSet=ibdsMainPrimaryIncome) then
  lblReasonName.Caption := 'Приход: '
 else
  lblReasonName.Caption := 'Расход: ';
 lblReasonName.Caption := lblReasonName.Caption+rgType.DataBinding.DataSource.DataSet.FieldByName('NAME').AsString
end;

end.
