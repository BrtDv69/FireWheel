unit Persons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, StdCtrls, Mask, DBCtrls, Grids, ExtCtrls, ComCtrls, IBSQL,
  IBDatabase, Db, IBCustomDataSet, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, cxCheckBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGraphics;

type
 TObjProcedure = procedure of object;

type
  TfrmPersons = class(TfrmLike)
    ibdsMainPersons: TIBDataSet;
    dsMainPersons: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDetailPersons: TPanel;
    Label16: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    sbCancelPersons: TSpeedButton;
    sbApplyPersons: TSpeedButton;
    sbDeletePersons: TSpeedButton;
    sbAddPersons: TSpeedButton;
    sbLastPersons: TSpeedButton;
    sbNextPersons: TSpeedButton;
    sbPriorPersons: TSpeedButton;
    sbFirstPersons: TSpeedButton;
    sbDetailsPersons: TSpeedButton;
    sbClosePersons: TSpeedButton;
    ibdsMainPersonsID: TIntegerField;
    ibdsMainPersonsKOD: TIntegerField;
    ibdsMainPersonsSURNAME: TIBStringField;
    ibdsMainPersonsNAME: TIBStringField;
    ibdsMainPersonsSECOND_NAME: TIBStringField;
    ibdsMainPersonsIS_DRIVER: TIntegerField;
    ibdsMainPersonsDRIVER_CARD_NUMBER: TIBStringField;
    ibdsMainPersonsDRIVER_CLASS: TIntegerField;
    ibdsMainPersonsDRIVER_CARD_CLASS: TIntegerField;
    ibdsMainPersonsVALID: TIntegerField;
    ibdsMainPersonsCOMMENTS: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gbDRIVER_CARD_CLASS: TGroupBox;
    ibdsMainPersonsA: TIntegerField;
    ibdsMainPersonsB: TIntegerField;
    ibdsMainPersonsC: TIntegerField;
    ibdsMainPersonsD: TIntegerField;
    ibdsMainPersonsE: TIntegerField;
    cxDBMemo1: TcxDBMemo;
    edArticul: TcxDBTextEdit;
    edDRIVER_CLASS: TcxDBTextEdit;
    edDRIVER_CARD_NUMBER: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    dbgPersons: TcxGrid;
    tvPersons: TcxGridDBTableView;
    tvPersonsCOMMENTS: TcxGridDBColumn;
    tvPersonsVALID: TcxGridDBColumn;
    lvPersons: TcxGridLevel;
    GridPopupMenu: TcxGridPopupMenu;
    tvPersonsKOD: TcxGridDBColumn;
    tvPersonsSURNAME: TcxGridDBColumn;
    tvPersonsNAME: TcxGridDBColumn;
    tvPersonsSECOND_NAME: TcxGridDBColumn;
    tvPersonsIS_DRIVER: TcxGridDBColumn;
    tvPersonsDRIVER_CARD_NUMBER: TcxGridDBColumn;
    tvPersonsDRIVER_CLASS: TcxGridDBColumn;
    tvPersonsA: TcxGridDBColumn;
    tvPersonsB: TcxGridDBColumn;
    tvPersonsC: TcxGridDBColumn;
    tvPersonsD: TcxGridDBColumn;
    tvPersonsE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbClosePersonsClick(Sender: TObject);
    procedure sbDetailsPersonsClick(Sender: TObject);
    procedure ibdsMainPersonsAfterScroll(DataSet: TDataSet);
    procedure sbFirstPersonsClick(Sender: TObject);
    procedure sbPriorPersonsClick(Sender: TObject);
    procedure sbNextPersonsClick(Sender: TObject);
    procedure sbLastPersonsClick(Sender: TObject);
    procedure sbAddPersonsClick(Sender: TObject);
    procedure sbDeletePersonsClick(Sender: TObject);
    procedure sbCancelPersonsClick(Sender: TObject);
    procedure sbApplyPersonsClick(Sender: TObject);
    procedure dsMainPersonsStateChange(Sender: TObject);
    procedure ibdsMainPersonsNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsMainPersonsAfterDelete(DataSet: TDataSet);
    procedure ibdsMainPersonsIS_DRIVERChange(Sender: TField);
    procedure ibdsMainPersonsAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPersonsAChange(Sender: TField);
    procedure tvPersonsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvPersonsCustomDrawColumnHeader(Sender: TcxGridTableView;
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
  frmPersons: TfrmPersons;

implementation

uses DM, Misk;

{$R *.DFM}

procedure TfrmPersons.FormCreate(Sender: TObject);
begin
 FName := 'Сотрудники';
 inherited;
 trMain.StartTransaction;
 ibdsMainPersons.Open
end;

procedure TfrmPersons.sbClosePersonsClick(Sender: TObject);
begin
 Close
end;

procedure TfrmPersons.sbDetailsPersonsClick(Sender: TObject);
begin
 pnlDetailPersons.Visible := (Sender as TSpeedButton).Down
end;

procedure TfrmPersons.ibdsMainPersonsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmPersons,'Persons');
 ibdsMainPersonsIS_DRIVERChange(ibdsMainPersonsIS_DRIVER) 
end;

procedure TfrmPersons.sbFirstPersonsClick(Sender: TObject);
begin
 ibdsMainPersons.First
end;

procedure TfrmPersons.sbPriorPersonsClick(Sender: TObject);
begin
 ibdsMainPersons.Prior
end;

procedure TfrmPersons.sbNextPersonsClick(Sender: TObject);
begin
 ibdsMainPersons.Next
end;

procedure TfrmPersons.sbLastPersonsClick(Sender: TObject);
begin
 ibdsMainPersons.Last
end;

procedure TfrmPersons.sbAddPersonsClick(Sender: TObject);
begin
 ibdsMainPersons.Append
end;

procedure TfrmPersons.sbDeletePersonsClick(Sender: TObject);
begin
 ibdsMainPersons.Delete
end;

procedure TfrmPersons.sbCancelPersonsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPersons.Bookmark;
 ibdsMainPersons.Close;
 ibdsMainPersons.Open;
 StteChange('Persons', False);
 try
  ibdsMainPersons.Bookmark := BookMark
 except
 end
end;

procedure TfrmPersons.sbApplyPersonsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPersons.Bookmark;
// try
  ibdsMainPersons.ApplyUpdates;
  trMain.Commit;
  ibdsMainPersons.Open;
  StteChange('Persons', False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainPersons.Bookmark := BookMark
 except
 end
end;

procedure TfrmPersons.dsMainPersonsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmPersons.ibdsMainPersonsNewRecord(DataSet: TDataSet);
begin
 ibdsMainPersonsID.Value := GetNewID(ibsGen_ID,'GEN_PERSONS_ID');
 ibdsMainPersonsIS_DRIVER.Value := 1;
 ibdsMainPersonsVALID.Value := 1;
 sbDetailsPersons.Down := True;
 sbDetailsPersons.Click
end;

procedure TfrmPersons.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmPersons<>nil) then
  For k := 0 to Pred(frmPersons.ComponentCount) do
   If (Components[k].Name='sbApply'+Suf) or
      (Components[k].Name='sbCancel'+Suf) then
    (Components[k] as TControl).Enabled := Enabled;
end;

procedure TfrmPersons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmPersons := nil
end;

procedure TfrmPersons.ibdsMainPersonsAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('Persons', True)
end;

procedure TfrmPersons.ibdsMainPersonsIS_DRIVERChange(Sender: TField);
begin
 edDRIVER_CLASS.Enabled := (ibdsMainPersonsIS_DRIVER.AsInteger=1);
 edDRIVER_CARD_NUMBER.Enabled := edDRIVER_CLASS.Enabled;
 gbDRIVER_CARD_CLASS.Enabled := edDRIVER_CLASS.Enabled
end;

procedure TfrmPersons.ibdsMainPersonsAfterOpen(DataSet: TDataSet);
begin
 ibdsMainPersons.DisableControls;
 ibdsMainPersonsA.OnChange := nil;
 ibdsMainPersonsB.OnChange := nil;
 ibdsMainPersonsC.OnChange := nil;
 ibdsMainPersonsD.OnChange := nil;
 ibdsMainPersonsE.OnChange := nil;
 While NOT (ibdsMainPersons.Eof) do
  Begin
   ibdsMainPersons.Edit;
   ibdsMainPersonsA.Value := Ord((ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger and 1)=1);
   ibdsMainPersonsB.Value := Ord((ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger and 2)=2);
   ibdsMainPersonsC.Value := Ord((ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger and 4)=4);
   ibdsMainPersonsD.Value := Ord((ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger and 8)=8);
   ibdsMainPersonsE.Value := Ord((ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger and 16)=16);
   ibdsMainPersons.Next
  End;
 ibdsMainPersons.First;
 ibdsMainPersonsA.OnChange := ibdsMainPersonsAChange;
 ibdsMainPersonsB.OnChange := ibdsMainPersonsAChange;
 ibdsMainPersonsC.OnChange := ibdsMainPersonsAChange;
 ibdsMainPersonsD.OnChange := ibdsMainPersonsAChange;
 ibdsMainPersonsE.OnChange := ibdsMainPersonsAChange;
 ibdsMainPersons.EnableControls
end;

procedure TfrmPersons.ibdsMainPersonsAChange(Sender: TField);
begin
 If (ibdsMainPersons.State in [dsInsert, dsEdit]) then
  If ((Sender as TIntegerField).AsInteger=1) then
   ibdsMainPersonsDRIVER_CARD_CLASS.Value := (ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger or
                                              Sender.Tag)
  else
   ibdsMainPersonsDRIVER_CARD_CLASS.Value := (ibdsMainPersonsDRIVER_CARD_CLASS.AsInteger -
                                              Sender.Tag)
end;

procedure TfrmPersons.tvPersonsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmPersons.tvPersonsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

end.
