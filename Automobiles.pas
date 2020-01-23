unit Automobiles;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, ExtCtrls, Grids, Db,
  IBCustomDataSet, Buttons, StdCtrls, Mask, 
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxSplitter, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  cxInplaceContainer, cxTL, cxDBTL, cxTLData, Variants;


type
 TObjProcedure = procedure of object;

type
  TfrmAutomobiles = class(TfrmLike)
    ibdsMainTypes: TIBDataSet;
    dsMainTypes: TDataSource;
    ibdsMainMakes: TIBDataSet;
    dsMainMakes: TDataSource;
    ibdsMainAutomobiles: TIBDataSet;
    dsMainAutomobiles: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelAutomobiles: TSpeedButton;
    sbApplyAutomobiles: TSpeedButton;
    sbDeleteAutomobiles: TSpeedButton;
    sbAddAutomobiles: TSpeedButton;
    sbLastAutomobiles: TSpeedButton;
    sbNextAutomobiles: TSpeedButton;
    sbPriorAutomobiles: TSpeedButton;
    sbFirstAutomobiles: TSpeedButton;
    sbCloseAutomobiles: TSpeedButton;
    pnlComments: TPanel;
    ibdsMainMakesID: TIntegerField;
    ibdsMainMakesAUTOMOBILE_TYPES_ID: TIntegerField;
    ibdsMainMakesNAME: TIBStringField;
    ibdsMainMakesMAIN_TYRE_AMOUNT: TIntegerField;
    ibdsMainMakesSPARE_TYRE_AMOUNT: TIntegerField;
    ibdsMainMakesACCUMULATOR_AMOUNT: TIntegerField;
    ibdsMainMakesMAIN_FUEL_ID: TIntegerField;
    ibdsMainMakesSPECIAL_FUEL_ID: TIntegerField;
    ibdsMainMakesVALID: TIntegerField;
    ibdsMainMakesCOMMENTS: TIBStringField;
    ibdsMainTypesID: TIntegerField;
    ibdsMainTypesNAME: TIBStringField;
    ibdsMainTypesMAINTENANCE_MILEAGE: TIntegerField;
    ibdsMainTypesVALID: TIntegerField;
    ibdsMainTypesCOMMENTS: TIBStringField;
    ibdsMainAutomobilesID: TIntegerField;
    ibdsMainAutomobilesGARAGE_NUMBER: TIntegerField;
    ibdsMainAutomobilesSTATE_NUMBER: TIBStringField;
    ibdsMainAutomobilesINVENTORY_NUMBER: TIntegerField;
    ibdsMainAutomobilesSALARY_RATE: TFloatField;
    ibdsMainAutomobilesAUTOMOBILE_MAKE_ID: TIntegerField;
    ibdsMainAutomobilesCOLUMN_NUMBER: TIntegerField;
    ibdsMainAutomobilesVALID: TIntegerField;
    ibdsMainAutomobilesCOMMENTS: TIBStringField;
    sbFilterAutomobiles: TSpeedButton;
    ibdsFuel: TIBDataSet;
    ibdsFuelID: TIntegerField;
    ibdsFuelNAME: TIBStringField;
    ibdsMainAutomobilesMANUFACTURE_DATE: TDateField;
    GridPopupMenu: TcxGridPopupMenu;
    dsFuel: TDataSource;
    cxSplitter1: TcxSplitter;
    grdMain: TcxGrid;
    tvMainTypes: TcxGridDBTableView;
    tvMainTypesNAME: TcxGridDBColumn;
    tvMainTypesMAINTENANCE_MILEAGE: TcxGridDBColumn;
    tvMainTypesVALID: TcxGridDBColumn;
    tvMainTypesCOMMENTS: TcxGridDBColumn;
    tvMainMakes: TcxGridDBTableView;
    tvMainMakesNAME: TcxGridDBColumn;
    tvMainMakesMAIN_FUEL_ID: TcxGridDBColumn;
    tvMainMakesSPECIAL_FUEL_ID: TcxGridDBColumn;
    tvMainMakesMAIN_TYRE_AMOUNT: TcxGridDBColumn;
    tvMainMakesSPARE_TYRE_AMOUNT: TcxGridDBColumn;
    tvMainMakesACCUMULATOR_AMOUNT: TcxGridDBColumn;
    tvMainMakesVALID: TcxGridDBColumn;
    tvMainMakesCOMMENTS: TcxGridDBColumn;
    tvMainAutomobiles: TcxGridDBTableView;
    tvMainAutomobilesGARAGE_NUMBER: TcxGridDBColumn;
    tvMainAutomobilesSTATE_NUMBER: TcxGridDBColumn;
    tvMainAutomobilesINVENTORY_NUMBER: TcxGridDBColumn;
    tvMainAutomobilesMANUFACTURE_DATE: TcxGridDBColumn;
    tvMainAutomobilesSALARY_RATE: TcxGridDBColumn;
    tvMainAutomobilesCOLUMN_NUMBER: TcxGridDBColumn;
    tvMainAutomobilesVALID: TcxGridDBColumn;
    tvMainAutomobilesCOMMENTS: TcxGridDBColumn;
    tvMainFuels: TcxGridDBTableView;
    lvMainTypes: TcxGridLevel;
    ibdsMainAutomobileFuels: TIBDataSet;
    dsMainAutomobileFuels: TDataSource;
    ibdsMainAutomobileFuelsID: TIntegerField;
    ibdsMainAutomobileFuelsFUEL_ID: TIntegerField;
    ibdsMainAutomobileFuelsIS_FOR_ENGINE: TIntegerField;
    ibdsMainAutomobileFuelsIS_FOR_OVERS: TIntegerField;
    ibdsMainAutomobileFuelsFUEL_CONSUMPTION_KM: TFloatField;
    ibdsMainAutomobileFuelsFUEL_CONSUMPTION_T_KM: TFloatField;
    ibdsMainAutomobileFuelsFUEL_CONSUMPTION_HR: TFloatField;
    ibdsMainAutomobileFuelsCOMMENTS: TIBStringField;
    tvMainFuelsFUEL_ID: TcxGridDBColumn;
    tvMainFuelsIS_FOR_ENGINE: TcxGridDBColumn;
    tvMainFuelsIS_FOR_OVERS: TcxGridDBColumn;
    tvMainFuelsFUEL_CONSUMPTION_KM: TcxGridDBColumn;
    tvMainFuelsFUEL_CONSUMPTION_T_KM: TcxGridDBColumn;
    tvMainFuelsFUEL_CONSUMPTION_HR: TcxGridDBColumn;
    tvMainFuelsCOMMENTS: TcxGridDBColumn;
    Label339: TLabel;
    dbmComments: TcxDBMemo;
    cxSplitter2: TcxSplitter;
    tlTypesMakesAutomobiles: TcxTreeList;
    tlTypesMakesAutomobilesName: TcxTreeListColumn;
    tlTypesMakesAutomobilesTableName: TcxTreeListColumn;
    tlTypesMakesAutomobilesID: TcxTreeListColumn;
    tlTypesMakesAutomobilesValid: TcxTreeListColumn;
    lvMainMakes: TcxGridLevel;
    lvMainAutomobiles: TcxGridLevel;
    lvMainFuels: TcxGridLevel;
    ibdsMainAutomobileFuelsAUTOMOBILE_ID: TIntegerField;
    tvMainAutomobilesAUTOMOBILE_MAKE_ID: TcxGridDBColumn;
    tvMainAutomobilesID: TcxGridDBColumn;
    ibdsColumns: TIBDataSet;
    dsColumns: TDataSource;
    ibdsColumnsID: TIntegerField;
    ibdsColumnsCOLUMN_NUMBER: TIntegerField;
    procedure sbFirstAutomobilesClick(Sender: TObject);
    procedure sbPriorAutomobilesClick(Sender: TObject);
    procedure sbNextAutomobilesClick(Sender: TObject);
    procedure sbLastAutomobilesClick(Sender: TObject);
    procedure sbAddAutomobilesClick(Sender: TObject);
    procedure sbDeleteAutomobilesClick(Sender: TObject);
    procedure sbCloseAutomobilesClick(Sender: TObject);
    procedure dsMainTypesStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ibdsMainTypesNewRecord(DataSet: TDataSet);
    procedure ibdsMainMakesNewRecord(DataSet: TDataSet);
    procedure ibdsMainAutomobilesNewRecord(DataSet: TDataSet);
    procedure sbApplyAutomobilesClick(Sender: TObject);
    procedure sbCancelAutomobilesClick(Sender: TObject);
    procedure dblMainFuelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainAutomobilesAfterDelete(DataSet: TDataSet);
    procedure ibdsMainAutomobileFuelsNewRecord(DataSet: TDataSet);
    procedure tvMainTypesFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure grdMainFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure tlTypesMakesAutomobilesFocusedNodeChanged(Sender: TObject;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure tlTypesMakesAutomobilesCustomDrawCell(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure tvMainAutomobilesStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure tlTypesMakesAutomobilesDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tlTypesMakesAutomobilesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure tvMainFuelsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tvMainFuelsCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ibdsMainAutomobileFuelsIS_FOR_ENGINEChange(Sender: TField);
    procedure ibdsMainAutomobileFuelsIS_FOR_OVERSChange(Sender: TField);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
    procedure SetMainFuel;
    procedure SetSpecialFuel;
    procedure FillOutTree(ParentNode: TcxTreeListNode);
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
  end;

var
  frmAutomobiles: TfrmAutomobiles;

implementation

uses DM, Misk, Fuel, cxGridDBDataDefinitions;

{$R *.DFM}

procedure TfrmAutomobiles.sbFirstAutomobilesClick(Sender: TObject);
begin
 grdMain.ActiveView.DataController.GotoFirst
end;

procedure TfrmAutomobiles.sbPriorAutomobilesClick(Sender: TObject);
begin
 grdMain.ActiveView.DataController.GotoPrev
end;

procedure TfrmAutomobiles.sbNextAutomobilesClick(Sender: TObject);
begin
 grdMain.ActiveView.DataController.GotoNext
end;

procedure TfrmAutomobiles.sbLastAutomobilesClick(Sender: TObject);
begin
 grdMain.ActiveView.DataController.GotoLast
end;

procedure TfrmAutomobiles.sbAddAutomobilesClick(Sender: TObject);
begin
 grdMain.SetFocus;
 grdMain.ActiveView.DataController.Append
end;

procedure TfrmAutomobiles.sbDeleteAutomobilesClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить текущую запись?',mtConfirmation,mbOKCancel,0)=mrOK) then
  grdMain.ActiveView.DataController.DeleteFocused
end;

procedure TfrmAutomobiles.sbCloseAutomobilesClick(Sender: TObject);
begin
 Close
end;

procedure TfrmAutomobiles.StteChange(Enabled: Boolean);
begin
 sbApplyAutomobiles.Enabled := Enabled;
 sbCancelAutomobiles.Enabled := Enabled
end;

procedure TfrmAutomobiles.dsMainTypesStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending or
              sbApplyAutomobiles.Enabled)
end;

procedure TfrmAutomobiles.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmAutomobiles.FormCreate(Sender: TObject);
begin
 FName := 'Автомашины';
 inherited;
 trMain.StartTransaction;
 cxSplitter1.State := ssClosed;
 ibdsFuel.Open;
 ibdsColumns.Open;
 ibdsMainTypes.Open;
 ibdsMainMakes.Open;
 ibdsMainAutomobiles.Open;
 ibdsMainAutomobileFuels.Open;
 tlTypesMakesAutomobiles.FocusedNode := tlTypesMakesAutomobiles.Nodes[0];
 FillOutTree(tlTypesMakesAutomobiles.Nodes[0]);
 tlTypesMakesAutomobiles.Nodes[0].Expand(False)
end;

procedure TfrmAutomobiles.ibdsMainTypesNewRecord(DataSet: TDataSet);
begin
 ibdsMainTypesID.Value := GetNewID(ibsGen_ID,'GEN_AUTOMOBILE_TYPES_ID');
 ibdsMainTypesVALID.Value := 1
end;

procedure TfrmAutomobiles.ibdsMainMakesNewRecord(DataSet: TDataSet);
begin
 ibdsMainMakesID.Value := GetNewID(ibsGen_ID,'GEN_AUTOMOBILE_MAKES_ID');
 ibdsMainMakesVALID.Value := 1
end;

procedure TfrmAutomobiles.ibdsMainAutomobilesNewRecord(DataSet: TDataSet);
begin
 ibdsMainAutomobilesID.Value := GetNewID(ibsGen_ID,'GEN_AUTOMOBILES_ID');
 ibdsMainAutomobilesVALID.Value := 1;
 ibdsMainAutomobilesAUTOMOBILE_MAKE_ID.Value := ibdsMainMakesID.Value
end;

procedure TfrmAutomobiles.sbApplyAutomobilesClick(Sender: TObject);
 var BookMarkTypes, BookMarkMakes, BookMarkAutomobiles : String;
begin
 If (ibdsMainTypes.State in [dsEdit, dsInsert]) then
  ibdsMainTypes.Post;
 If (ibdsMainMakes.State in [dsEdit, dsInsert]) then
  ibdsMainMakes.Post;
 If (ibdsMainAutomobiles.State in [dsEdit, dsInsert]) then
  ibdsMainAutomobiles.Post;
 BookMarkTypes := ibdsMainTypes.Bookmark;
 BookMarkMakes := ibdsMainMakes.Bookmark;
 BookMarkAutomobiles := ibdsMainAutomobiles.Bookmark;
 ibdsMainAutomobileFuels.First;
 While Not (ibdsMainAutomobileFuels.Eof) do
  If (ibdsMainAutomobileFuelsIS_FOR_ENGINE.AsInteger=0) and (ibdsMainAutomobileFuelsIS_FOR_OVERS.AsInteger=0) then
   ibdsMainAutomobileFuels.Delete
  else
   ibdsMainAutomobileFuels.Next;
// try
  ibdsMainTypes.ApplyUpdates;
  ibdsMainMakes.ApplyUpdates;
  ibdsMainAutomobiles.ApplyUpdates;
  ibdsMainAutomobileFuels.ApplyUpdates;
  trMain.CommitRetaining;
  tlTypesMakesAutomobiles.OnFocusedNodeChanged := nil;
  FillOutTree(tlTypesMakesAutomobiles.FocusedNode);
  tlTypesMakesAutomobiles.OnFocusedNodeChanged := tlTypesMakesAutomobilesFocusedNodeChanged;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsMainTypes.Bookmark := BookMarkTypes;
  ibdsMainMakes.Bookmark := BookMarkMakes;
  ibdsMainAutomobiles.Bookmark := BookMarkAutomobiles
 except
 end
end;

procedure TfrmAutomobiles.sbCancelAutomobilesClick(Sender: TObject);
begin
 ibdsMainTypes.CancelUpdates;
 ibdsMainMakes.CancelUpdates;
 ibdsMainAutomobiles.CancelUpdates;
 ibdsMainAutomobileFuels.CancelUpdates;
 StteChange(False)
end;

procedure TfrmAutomobiles.dblMainFuelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmAutomobiles.FindComponent('frmFuel')=nil) then
    frmFuel := TfrmFuel.Create(frmAutomobiles);
   Case (Sender as TComponent).Tag of
    1 : Begin
         frmFuel.LookUpProcedure := SetMainFuel;
         If NOT (ibdsMainMakesMAIN_FUEL_ID.IsNull) then
          frmFuel.ibdsMainFuel.Locate('ID',ibdsMainMakesMAIN_FUEL_ID.Value,[])
        End;
    2 : Begin
         frmFuel.LookUpProcedure := SetSpecialFuel;
         If NOT (ibdsMainMakesSPECIAL_FUEL_ID.IsNull) then
          frmFuel.ibdsMainFuel.Locate('ID',ibdsMainMakesSPECIAL_FUEL_ID.Value,[])
        End
   End;
   frmFuel.Show
  End
end;

procedure TfrmAutomobiles.SetMainFuel;
begin
 ibdsFuel.Close;
 ibdsFuel.Open;
 If NOT (ibdsMainMakes.State in [dsEdit, dsInsert]) then
  ibdsMainMakes.Edit;
 ibdsMainMakesMAIN_FUEL_ID.Value := frmFuel.ibdsMainFuelID.Value;
 frmFuel.LookUpProcedure := nil
end;

procedure TfrmAutomobiles.SetSpecialFuel;
begin
 ibdsFuel.Close;
 ibdsFuel.Open;
 If NOT (ibdsMainMakes.State in [dsEdit, dsInsert]) then
  ibdsMainMakes.Edit;
 ibdsMainMakesSPECIAL_FUEL_ID.Value := frmFuel.ibdsMainFuelID.Value;
 frmFuel.LookUpProcedure := nil
end;

procedure TfrmAutomobiles.ibdsMainAutomobilesAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmAutomobiles.ibdsMainAutomobileFuelsNewRecord(
  DataSet: TDataSet);
 var I: Integer;
     AAllow: boolean;
begin
 ibdsMainAutomobileFuelsID.Value := GetNewID(ibsGen_ID,'GEN_AUTOMOBILE_FUELS_ID');
 ibdsMainAutomobileFuelsAUTOMOBILE_ID.Value := ibdsMainAutomobilesID.Value;
 If (DataSet.RecordCount<1) then
  ibdsMainAutomobileFuelsIS_FOR_ENGINE.Value := 1
 else
  Begin
   AAllow := True;
   For I := 0 to Pred(tvMainFuels.DataController.RowCount) do  // Iterate
    AAllow := AAllow and (VarAsType(tvMainFuels.DataController.Values[I,tvMainFuelsIS_FOR_ENGINE.Index],varInteger)=0);
   If (AAllow) then
    ibdsMainAutomobileFuelsIS_FOR_ENGINE.Value := 1
   else
    ibdsMainAutomobileFuelsIS_FOR_ENGINE.Value := 0
  End;
 ibdsMainAutomobileFuelsIS_FOR_OVERS.Value := 0;
 ibdsMainAutomobileFuelsFUEL_CONSUMPTION_KM.Value := 0;
 ibdsMainAutomobileFuelsFUEL_CONSUMPTION_T_KM.Value := 0;
 ibdsMainAutomobileFuelsFUEL_CONSUMPTION_HR.Value := 0
end;

procedure TfrmAutomobiles.tvMainTypesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If (grdMain.ActiveView=nil) then
  Exit;
 sbFirstAutomobiles.Enabled := NOT grdMain.ActiveView.DataController.IsBOF;
 sbLastAutomobiles.Enabled := NOT grdMain.ActiveView.DataController.IsEOF;
 sbPriorAutomobiles.Enabled := sbFirstAutomobiles.Enabled;
 sbNextAutomobiles.Enabled := sbLastAutomobiles.Enabled
end;

procedure TfrmAutomobiles.grdMainFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
 If (AFocusedView=nil) then
  Exit;
 sbFirstAutomobiles.Enabled := NOT AFocusedView.DataController.IsBOF;
 sbLastAutomobiles.Enabled := NOT AFocusedView.DataController.IsEOF;
 sbPriorAutomobiles.Enabled := sbFirstAutomobiles.Enabled;
 sbNextAutomobiles.Enabled := sbLastAutomobiles.Enabled;
 dbmComments.DataBinding.DataSource := TcxGridDBTableView(AFocusedView).DataController.DataSource
end;

procedure TfrmAutomobiles.FillOutTree(ParentNode: TcxTreeListNode);
var
  ibsLocalAux : TIBSQL;
  S : String;

   function AddNode(AParent: TcxTreeListNode; const AValues: Array of Variant{; AImageIndex: Integer}): TcxTreeListNode;
   begin
     Result := tlTypesMakesAutomobiles.AddChild(AParent);
     Result.AssignValues(AValues);
   //  Result.Imageindex := AImageIndex;
   //  Result.Values[]
   end;

begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsMainTypes.Database;
 ibsLocalAux.Transaction := ibdsMainTypes.Transaction;
 ibsLocalAux.SQL.Clear;
 ParentNode.TreeList.BeginUpdate;
 ParentNode.DeleteChildren;
 If (ParentNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILE_TYPES') then
  Begin
   ibsLocalAux.SQL.Add('select ATP.ID, ATP.NAME, ATP.VALID from AUTOMOBILE_TYPES ATP order by 3 desc,2,1');
   S := 'AUTOMOBILE_MAKES';
  End
 else
  If (ParentNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILE_MAKES') then
   Begin
    ibsLocalAux.SQL.Add('select AM.ID, AM.NAME, AM.VALID from AUTOMOBILE_MAKES AM where (AM.AUTOMOBILE_TYPES_ID='+VarToStr(ParentNode.Values[tlTypesMakesAutomobilesID.ItemIndex])+') order by 3 desc,2,1');
    S := 'AUTOMOBILES';
   End
  else
   If (ParentNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILES') then
    Begin
     ibsLocalAux.SQL.Add('select A.ID, A.GARAGE_NUMBER||''/''||A.STATE_NUMBER||''/''||A.INVENTORY_NUMBER NAME, A.VALID from AUTOMOBILES A where (A.AUTOMOBILE_MAKE_ID='+VarToStr(ParentNode.Values[tlTypesMakesAutomobilesID.ItemIndex])+') order by 3 desc,2,1');
     S := 'AUTOMOBILE_FUELS';
    End;
 If (ibsLocalAux.SQL.Count>0) then
  Begin
   ibsLocalAux.ExecQuery;
   While Not (ibsLocalAux.Eof) do
    Begin
     If (S='AUTOMOBILE_FUELS') then
      AddNode(ParentNode,[ibsLocalAux.FieldByName('NAME').AsString,S,ibsLocalAux.FieldByName('ID').AsInteger,ibsLocalAux.FieldByName('VALID').AsInteger])
     else
      FillOutTree(AddNode(ParentNode,[ibsLocalAux.FieldByName('NAME').AsString,S,ibsLocalAux.FieldByName('ID').AsInteger,ibsLocalAux.FieldByName('VALID').AsInteger]));
     ibsLocalAux.Next
    End;  // while
   ibsLocalAux.Close
  End;
 ibsLocalAux.Free;
 ParentNode.TreeList.EndUpdate
end;

procedure TfrmAutomobiles.tlTypesMakesAutomobilesFocusedNodeChanged(
  Sender: TObject; APrevFocusedNode, AFocusedNode: TcxTreeListNode);

 procedure VisibleLevel(Level : TcxGridLevel);
 var I: Integer;
 begin
  For I := 0 to Pred(grdMain.Levels.Count) do  // Iterate
   grdMain.Levels[I].Visible := (grdMain.Levels[I]=Level);
 end;

begin
 If (sbApplyAutomobiles.Enabled) then
  If  (MessageDlg('Отменить не сохраненные изменения?',mtConfirmation,mbOKCancel,0)=mrOK) then
   sbCancelAutomobiles.Click
  else 
   Begin
    tlTypesMakesAutomobiles.OnFocusedNodeChanged := nil;
    tlTypesMakesAutomobiles.FocusedNode := APrevFocusedNode;
    tlTypesMakesAutomobiles.OnFocusedNodeChanged := tlTypesMakesAutomobilesFocusedNodeChanged;
    Exit
   End;
 If (AFocusedNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILE_TYPES') then
  VisibleLevel(lvMainTypes)
 else
  If (AFocusedNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILE_MAKES') then
   Begin
    ibdsMainTypes.Locate('ID',AFocusedNode.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
    VisibleLevel(lvMainMakes)
   End
  else
   If (AFocusedNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILES') then
    Begin
     ibdsMainTypes.Locate('ID',AFocusedNode.Parent.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
     ibdsMainMakes.Locate('ID',AFocusedNode.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
     VisibleLevel(lvMainAutomobiles)
    End
   else
    If (AFocusedNode.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILE_FUELS') then
     Begin
      ibdsMainTypes.Locate('ID',AFocusedNode.Parent.Parent.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
      ibdsMainMakes.Locate('ID',AFocusedNode.Parent.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
      ibdsMainAutomobiles.Locate('ID',AFocusedNode.Values[tlTypesMakesAutomobilesID.ItemIndex],[]);
      VisibleLevel(lvMainFuels)
     End
end;

procedure TfrmAutomobiles.tlTypesMakesAutomobilesCustomDrawCell(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
 If (AViewInfo.Node.Values[tlTypesMakesAutomobilesValid.ItemIndex]=0) then
  ACanvas.Font.Style := [fsItalic]
 else
  ACanvas.Font.Style := []
end;

procedure TfrmAutomobiles.tvMainAutomobilesStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
 If (sbApplyAutomobiles.Enabled) then
  Begin
   sbApplyAutomobiles.Click;
   Exit
  End;
end;

procedure TfrmAutomobiles.tlTypesMakesAutomobilesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var Node : TcxTreeListNode;
begin
 Accept := False;
 tlTypesMakesAutomobiles.HitTest.HitX := X;
 tlTypesMakesAutomobiles.HitTest.HitY := Y;
 tlTypesMakesAutomobiles.HitTest.ReCalculate;
 Node := tlTypesMakesAutomobiles.HitTest.HitNode;
 If (Node<>nil) then
  With TcxGridSite(TDragControlObject(Source).Control) do
   Accept := (GridView=tvMainAutomobiles) and
             (Node.Values[tlTypesMakesAutomobilesTableName.ItemIndex]='AUTOMOBILES') and
             (Node.Values[tlTypesMakesAutomobilesID.ItemIndex]<>tvMainAutomobiles.DataController.Values[tvMainAutomobiles.DataController.FocusedRecordIndex,tvMainAutomobilesAUTOMOBILE_MAKE_ID.Index])
end;

procedure TfrmAutomobiles.tlTypesMakesAutomobilesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
 var ibsLocalAux : TIBSQL;
     Node : TcxTreeListNode;
begin
 tlTypesMakesAutomobiles.HitTest.HitX := X;
 tlTypesMakesAutomobiles.HitTest.HitY := Y;
 tlTypesMakesAutomobiles.HitTest.ReCalculate;
 Node := tlTypesMakesAutomobiles.HitTest.HitNode;
 If (Node<>nil) and
    (MessageDlg('Хотите переместить автомашину ['+
                 tvMainAutomobiles.DataController.Values[tvMainAutomobiles.DataController.FocusedRecordIndex,tvMainAutomobilesSTATE_NUMBER.Index]+
                '] в марку ['+Node.Values[tlTypesMakesAutomobilesName.ItemIndex]+']',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibdsMainTypes.Database;
   ibsLocalAux.Transaction := ibdsMainTypes.Transaction;
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('update AUTOMOBILES set AUTOMOBILE_MAKE_ID='+VarAsType(Node.Values[tlTypesMakesAutomobilesID.ItemIndex],varString)+' where ID='+VarAsType(tvMainAutomobiles.DataController.Values[tvMainAutomobiles.DataController.FocusedRecordIndex,tvMainAutomobilesID.Index],varString));
   ibsLocalAux.ExecQuery;
   ibsLocalAux.Transaction.CommitRetaining;
   ibsLocalAux.Close;
   ibsLocalAux.Free;
   ibdsMainAutomobiles.Close;
   ibdsMainAutomobiles.Open;
   FillOutTree(tlTypesMakesAutomobiles.FocusedNode);
   FillOutTree(Node)
  End
end;

procedure TfrmAutomobiles.tvMainFuelsEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var I: Integer;
begin
 If (AItem=tvMainFuelsIS_FOR_ENGINE) then
  Begin
   AAllow := (tvMainFuels.DataController.RowCount=1);
   If (tvMainFuels.DataController.RowCount>1) then
    Begin
     For I := 0 to Pred(tvMainFuels.DataController.RowCount) do  // Iterate
      Begin
       If (I<>tvMainFuels.DataController.FocusedRecordIndex) then
        AAllow := (tvMainFuels.DataController.Values[I,tvMainFuelsIS_FOR_ENGINE.Index]=0);
      End
    End
  End;
 If (AItem=tvMainFuelsFUEL_CONSUMPTION_HR) then
  AAllow := tvMainFuels.DataController.Values[tvMainFuels.DataController.FocusedRecordIndex,tvMainFuelsIS_FOR_OVERS.Index]=1;
 If (AItem=tvMainFuelsFUEL_CONSUMPTION_KM) then
  AAllow := tvMainFuels.DataController.Values[tvMainFuels.DataController.FocusedRecordIndex,tvMainFuelsIS_FOR_ENGINE.Index]=1;
 If (AItem=tvMainFuelsFUEL_CONSUMPTION_T_KM) then
  AAllow := tvMainFuels.DataController.Values[tvMainFuels.DataController.FocusedRecordIndex,tvMainFuelsIS_FOR_ENGINE.Index]=1;
end;

procedure TfrmAutomobiles.tvMainFuelsCustomDrawCell(
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
     If ((AViewInfo.Item=tvMainFuelsFUEL_CONSUMPTION_HR) and
         (tvMainFuels.DataController.Values[AViewInfo.GridRecord.RecordIndex,tvMainFuelsIS_FOR_OVERS.Index]=0)) or
        ((AViewInfo.Item=tvMainFuelsFUEL_CONSUMPTION_KM) and
         (tvMainFuels.DataController.Values[AViewInfo.GridRecord.RecordIndex,tvMainFuelsIS_FOR_ENGINE.Index]=0)) or
        ((AViewInfo.Item=tvMainFuelsFUEL_CONSUMPTION_T_KM) and
         (tvMainFuels.DataController.Values[AViewInfo.GridRecord.RecordIndex,tvMainFuelsIS_FOR_ENGINE.Index]=0)) then
      ACanvas.Brush.Color := ColorUnModify
    End
   else
    ACanvas.Brush.Color := ColorUnModify
  End
end;

procedure TfrmAutomobiles.ibdsMainAutomobileFuelsIS_FOR_ENGINEChange(
  Sender: TField);
begin
 If (Sender.AsInteger=0) then
  Begin
   ibdsMainAutomobileFuelsFUEL_CONSUMPTION_KM.Value := 0;
   ibdsMainAutomobileFuelsFUEL_CONSUMPTION_T_KM.Value := 0
  End
end;

procedure TfrmAutomobiles.ibdsMainAutomobileFuelsIS_FOR_OVERSChange(
  Sender: TField);
begin
 If (Sender.AsInteger=0) then
  ibdsMainAutomobileFuelsFUEL_CONSUMPTION_HR.Value := 0
end;

end.
