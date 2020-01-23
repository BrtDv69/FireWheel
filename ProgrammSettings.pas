unit ProgrammSettings;

interface

uses Like, DB, IBCustomDataSet, ImgList, Controls, IBSQL, Classes,
  IBDatabase, cxTextEdit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxLabel, cxGroupBox, StdCtrls, cxButtons, Dialogs, cxCheckBox,
  cxLookAndFeelPainters;

type
  TfrmProgrammSettings = class(TfrmLike)
    ibdsMain: TIBDataSet;
    dsMain: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    btnApply: TcxButton;
    btnCancel: TcxButton;
    ibdsMainTOWN_MILEAGE_PERCENT: TIntegerField;
    ibdsMainSUBURB_MILEAGE_PERCENT: TIntegerField;
    ibdsMainHIGHWAY_MILEAGE_PERCENT: TIntegerField;
    ibdsMainUNROAD_MILEAGE_PERCENT: TIntegerField;
    ibdsMainWINTER_NORM_PERCENT: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    ibdsTunings: TIBDataSet;
    dsTunings: TDataSource;
    ibdsTuningsTUNING_VALUE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmProgrammSettings: TfrmProgrammSettings;

implementation

uses Misk, DM;

{$R *.DFM}

procedure TfrmProgrammSettings.FormCreate(Sender: TObject);
begin
 FName := 'Постоянные';
 inherited;
 trMain.StartTransaction;
 ibdsMain.Open;
 If (ibdsMain.RecordCount=0) then
  Begin
   ibdsMain.Insert;
   ibdsMainTOWN_MILEAGE_PERCENT.Value := 15;
   ibdsMainSUBURB_MILEAGE_PERCENT.Value := 0;
   ibdsMainHIGHWAY_MILEAGE_PERCENT.Value := -15;
   ibdsMainUNROAD_MILEAGE_PERCENT.Value := 15;
   ibdsMainWINTER_NORM_PERCENT.Value := 10
  End;
 ibdsTunings.Open;
 If (ibdsTunings.RecordCount=0) then
  Begin
   ibdsTunings.Insert;
   ibdsTuningsTUNING_VALUE.Value := 0
  End 
end;

procedure TfrmProgrammSettings.btnCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить внесенные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMain.CancelUpdates;
   ibdsTunings.CancelUpdates;
   StteChange(False)
  End
end;

procedure TfrmProgrammSettings.btnApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить внесенные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMain.ApplyUpdates;
   ibdsTunings.ApplyUpdates;
   trMain.CommitRetaining;
   StteChange(False)
  End
end;

procedure TfrmProgrammSettings.StteChange(Enabled: Boolean);
begin
 btnApply.Enabled := Enabled;
 btnCancel.Enabled := Enabled
end;

procedure TfrmProgrammSettings.dsMainStateChange(Sender: TObject);
begin
 StteChange((ibdsMain.State in [dsEdit,dsInsert]) or (ibdsTunings.State in [dsEdit,dsInsert]))
end;

end.
