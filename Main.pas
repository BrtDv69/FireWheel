unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, fcStatusBar,
  ActnList, Menus, ImgList, fcButton, fcImgBtn, fcShapeBtn, dxBar,
  dxBarExtItems, FR_Class, FR_Desgn, XLSExport, FR_E_CSV, FR_E_RTF,
  FR_E_TXT, frFunction, DB, FR_DSet, FR_DBSet, FR_DCtrl, FR_IBXDB, FR_Cross,
  AppEvnts;

type
  TfrmMain = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    pmKindOfView: TPopupMenu;
    NMin: TMenuItem;
    NNorm: TMenuItem;
    dxBarManager: TdxBarManager;
    N18: TdxBarButton;
    N19: TdxBarButton;
    N1: TdxBarSubItem;
    N25: TdxBarButton;
    N33: TdxBarButton;
    N27: TdxBarButton;
    N28: TdxBarButton;
    N56: TdxBarButton;
    N26: TdxBarSubItem;
    N36: TdxBarButton;
    N11: TdxBarButton;
    N12: TdxBarButton;
    N13: TdxBarButton;
    N2: TdxBarSubItem;
    N42: TdxBarButton;
    N60: TdxBarButton;
    N59: TdxBarButton;
    N30: TdxBarButton;
    N34: TdxBarButton;
    N40: TdxBarButton;
    N35: TdxBarButton;
    N39: TdxBarButton;
    N44: TdxBarButton;
    N45: TdxBarButton;
    N51: TdxBarButton;
    N58: TdxBarButton;
    N3: TdxBarSubItem;
    N54: TdxBarButton;
    N4: TdxBarSubItem;
    N6: TdxBarButton;
    N8: TdxBarButton;
    N5: TdxBarSubItem;
    dxClose: TdxBarButton;
    dxUserName: TdxBarStatic;
    dxIncome: TdxBarLargeButton;
    dxOutcome: TdxBarLargeButton;
    dxAccumulators: TdxBarLargeButton;
    dxTyres: TdxBarLargeButton;
    dxTORepairs: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxAutomobilesInfo: TdxBarLargeButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    frReport: TfrReport;
    frDesigner: TfrDesigner;
    frTextExport1: TfrTextExport;
    frRTFExport1: TfrRTFExport;
    frCSVExport1: TfrCSVExport;
    frXLSExport1: TfrXLSExport;
    frAddFunctionLibrary1: TfrAddFunctionLibrary;
    sd: TSaveDialog;
    frDBDataSet: TfrDBDataSet;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    frDialogControls1: TfrDialogControls;
    frIBXComponents1: TfrIBXComponents;
    frCrossObject1: TfrCrossObject;
    ApplicationEvents1: TApplicationEvents;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    StatusBar: TfcStatusBar;
    dxBarButton6: TdxBarButton;
    procedure N59Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N51Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure TaskBarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure dxCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarManagerBarDockingStyleChange(Sender: TdxBarManager;
      ABar: TdxBar);
    procedure N34Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure PopUpPrintMenuItemClick(Sender: TObject);
    procedure frDesignerSaveReport(Report: TfrReport;
      var ReportName: String; SaveAs: Boolean; var Saved: Boolean);
    procedure sdTypeChange(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure frReportUserFunction(const Name: String; p1, p2, p3: Variant;
      var Val: Variant);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure WMHotKey(var Message: TMessage); message WM_HOTKEY;
    procedure SetMaxSize;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses Like, Articuls, DM, Accounts, KontrAgList, Persons, Reasons,
  Automobiles, Fuel, Nakl, Misk, StoreCards, Remains, AccumulatorsTyres,
  Parts, AutomobilesInfo, TORepairs, Routes, UsersSetup, WorkDistricts,
  WorkKinds, RoadSheets, ShowIBException, WorkCustomers, devex_loc,
  ProgrammSettings, Columns;

{$R *.DFM}

procedure TfrmMain.N59Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmArticuls')=nil) then
  frmArticuls := TfrmArticuls.Create(frmMain);
 frmArticuls.Show
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
 var k : Integer;
begin
 try
  For k := 0 to Pred(ComponentCount) do
   If (Components[k] is TForm) then
    Begin
     (Components[k] as TForm).OnCloseQuery := nil;
     (Components[k] as TForm).Close
    End 
 except
  frmDM.dbMain.ForceClose
 end
end;

procedure TfrmMain.N51Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAccounts')=nil) then
  frmAccounts := TfrmAccounts.Create(frmMain);
 frmAccounts.Show
end;

procedure TfrmMain.N36Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmKontrAgList')=nil) then
  frmKontrAgList := TfrmKontrAgList.Create(frmMain);
 frmKontrAgList.Show
end;

procedure TfrmMain.N42Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPersons')=nil) then
  frmPersons := TfrmPersons.Create(frmMain);
 frmPersons.Show
end;

procedure TfrmMain.N60Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmReasons')=nil) then
  frmReasons := TfrmReasons.Create(frmMain);
 frmReasons.Show
end;

procedure TfrmMain.N30Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAutomobiles')=nil) then
  frmAutomobiles := TfrmAutomobiles.Create(frmMain);
 frmAutomobiles.Show
end;

procedure TfrmMain.N40Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmFuel')=nil) then
  frmFuel := TfrmFuel.Create(frmMain);
 frmFuel.Show
end;

procedure TfrmMain.N18Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmNaklIn')=nil) then
  Begin
   TempIn_Out := 2;
   frmNaklIn := TfrmNakl.Create(frmMain);
   ImageList1.GetIcon(6,frmNaklIn.Icon)
  End;
 frmNaklIn.Show
end;

procedure TfrmMain.N19Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmNaklOut')=nil) then
  Begin
   TempIn_Out := 1;
   frmNaklOut := TfrmNakl.Create(frmMain);
   ImageList1.GetIcon(7,frmNaklOut.Icon)
  End;
 frmNaklOut.Show
end;

procedure TfrmMain.N25Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmStoreCards')=nil) then
  frmStoreCards := TfrmStoreCards.Create(frmMain);
 frmStoreCards.Show
end;

procedure TfrmMain.N33Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmRemains')=nil) then
  frmRemains := TfrmRemains.Create(frmMain);
 frmRemains.Show
end;

procedure TfrmMain.TaskBarClick(Sender: TObject);
 var F : TForm;
begin
 F := TForm(TComponent(Sender).Tag);
 With F do
  Begin
   BringToFront;
   If (WindowState=wsMinimized) then
    ShowWindow(Handle,SW_RESTORE);
  End
end;

procedure TfrmMain.WMHotKey(var Message: TMessage);
begin
 Application.Restore;
 Application.BringToFront
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
 RegisterHotKey(Handle,123,MOD_CONTROL,VK_F5)
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
 UnregisterHotKey(Handle, 123)
end;

procedure TfrmMain.N12Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAccumulators')=nil) then
  Begin
   TmpGoodType := 1;
   frmAccumulators := TfrmAccumulatorsTyres.Create(frmMain);
   ImageList1.GetIcon(8,frmAccumulators.Icon)
  End;
 frmAccumulators.Show
end;

procedure TfrmMain.N11Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmTyres')=nil) then
  Begin
   TmpGoodType := 2;
   frmTyres := TfrmAccumulatorsTyres.Create(frmMain);
   ImageList1.GetIcon(9,frmTyres.Icon)
  End;
 frmTyres.Show
end;

procedure TfrmMain.dxCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmMain.SetMaxSize;
 var k, i, OldMaxHeight : Integer;
begin
 i := 0;
 For k := 0 to Pred(dxBarManager.Bars.Count) do
  If (dxBarManager.Bars[k].Visible) and (dxBarManager.Bars[k].DockingStyle<>dsNone) then
   i := i+dxBarManager.Bars[k].Control.BoundsRect.Bottom-dxBarManager.Bars[k].Control.BoundsRect.Top;
 OldMaxHeight := Constraints.MaxHeight;
 Constraints.MaxHeight := (Height-ClientHeight)+i+StatusBar.Height;
 Constraints.MinHeight := Constraints.MaxHeight;
 For k := 0 to Pred(ComponentCount) do
  If (Components[k] is TForm) then
   If ((Components[k] as TForm).WindowState=wsMaximized) then
    Begin
     (Components[k] as TForm).WindowState := wsNormal;
     (Components[k] as TForm).WindowState := wsMaximized
    End
   else
    Begin
     (Components[k] as TForm).Height := (Components[k] as TForm).Height-
                                        Constraints.MaxHeight+OldMaxHeight;
     (Components[k] as TForm).Top := (Components[k] as TForm).Top+
                                      Constraints.MaxHeight-OldMaxHeight
    End
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
 SetMaxSize;
 localize_cx;
 SetUpRegionalSettings;
 frAddFunctionDesc(nil, 'BitAND', 'Битовые функции','BitAND(<Число1>, <Число2>)/Битовое И.');
end;

procedure TfrmMain.dxBarManagerBarDockingStyleChange(
  Sender: TdxBarManager; ABar: TdxBar);
begin
 SetMaxSize
end;

procedure TfrmMain.N34Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmParts')=nil) then
  frmParts := TfrmParts.Create(frmMain);
 frmParts.Show
end;

procedure TfrmMain.N13Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmTORepairs')=nil) then
  Begin
   frmTORepairs := TfrmTORepairs.Create(frmMain);
   ImageList1.GetIcon(12,frmTORepairs.Icon)
  End;
 frmTORepairs.Show
end;

procedure TfrmMain.dxBarButton1Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAutomobilesInfo')=nil) then
  Begin
   frmAutomobilesInfo := TfrmAutomobilesInfo.Create(frmMain);
   ImageList1.GetIcon(13,frmAutomobilesInfo.Icon)
  End;
 frmAutomobilesInfo.Show
end;

procedure TfrmMain.N39Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmRoutes')=nil) then
  Begin
   frmRoutes := TfrmRoutes.Create(frmMain);
   ImageList1.GetIcon(14,frmRoutes.Icon)
  End;
 frmRoutes.Show
end;

procedure TfrmMain.N54Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmUsersSetup')=nil) then
  Begin
   frmUsersSetup := TfrmUsersSetup.Create(frmMain);
   ImageList1.GetIcon(15,frmUsersSetup.Icon)
  End;
 frmUsersSetup.Show
end;

procedure TfrmMain.N44Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmWorkDistricts')=nil) then
  Begin
   frmWorkDistricts := TfrmWorkDistricts.Create(frmMain);
   ImageList1.GetIcon(16,frmWorkDistricts.Icon)
  End;
 frmWorkDistricts.Show
end;

procedure TfrmMain.N45Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmWorkKinds')=nil) then
  Begin
   frmWorkKinds := TfrmWorkKinds.Create(frmMain);
   ImageList1.GetIcon(17,frmWorkKinds.Icon)
  End;
 frmWorkKinds.Show
end;

procedure TfrmMain.PopUpPrintMenuItemClick(Sender: TObject);
begin
 If ((Sender as TMenuItem).Tag=0) then
  Begin
   If (InputQuery('Новый отчет','Введите название нового отчета:',frReport.FileName)) then
    With frmDM do
     Begin
      If NOT(trReport.InTransaction) then
       trReport.StartTransaction;
      ibdsReport.ParamByName('ID').Value := GetNewID(ibsGen_ID,'GEN_REPORTS_ID');
      ibdsReport.Open;
      ibdsReport.Append;
      ibdsReportID.Value := ibdsReport.ParamByName('ID').AsInteger;
      ibdsReportREPORT_NAME.Value := frReport.FileName;
      ibdsShow.Open;
      ibdsShow.Append;
      ibdsShowID.Value := GetNewID(ibsGen_ID,'GEN_REPORTS_SHOING_ID');
      ibdsShowREPORT_ID.Value := ibdsReportID.Value;
      ibdsShowBUTTON_NAME.Value := (Sender as TMenuItem).Owner.Owner.Owner.Name+'/'+(Sender as TMenuItem).Owner.Owner.Name+'/'+IntToStr((Sender as TMenuItem).Owner.Owner.Tag);
      If (frReport.DesignReport=mrOK) then
//       try
       Begin
        ibdsReport.ApplyUpdates;
        ibdsShow.ApplyUpdates;
        trReport.Commit
{       except
        trReport.Rollback;
        MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)}
       End
      else
       trReport.Rollback
     End
  End
 else
  With frmDM do
   Begin
    ibdsReport.ParamByName('ID').Value := (Sender as TMenuItem).Tag;
    ibdsReport.Open;
    frReport.LoadFromBlobField(ibdsReportREPORT);
    frReport.FileName := ibdsReportREPORT_NAME.Value;
    If (GetKeyState(VK_CONTROL)<0) then
     Begin
      If (frReport.DesignReport=mrOK) then
//       try
       Begin
        ibdsReport.ApplyUpdates;
        trReport.Commit
{       except
        trReport.Rollback;
        MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)}
       End
      else
       trReport.Rollback;
      frReport.Clear
     End
    else
     Begin
      frReport.ShowReport;
      frReport.Clear;
      trReport.Commit
     End
   End;
 (Sender as TMenuItem).Owner.Free
end;

procedure TfrmMain.frDesignerSaveReport(Report: TfrReport;
  var ReportName: String; SaveAs: Boolean; var Saved: Boolean);
 var S : String;
begin
 If (SaveAs) then
  Begin
   If (sd.Execute) then
    Begin
     S := ExtractFileExt(sd.FileName);
     If (S='.frf') then
      Report.SaveToFile(sd.FileName)
     else
      If (S='.frp') then
       Report.SavePreparedReport(sd.FileName)
      else
       If (S='.frt') then
        Report.SaveTemplate(sd.FileName,nil,nil)
    End
  End
 else
  With frmDM do
   Begin
    If NOT (ibdsReport.State in [dsInsert, dsEdit]) then
     ibdsReport.Edit;
    Report.SaveToBlobField(ibdsReportREPORT);
//    try
     ibdsReport.ApplyUpdates;
     If (ibdsShow.Active) and (ibdsShow.UpdatesPending) then
      ibdsShow.ApplyUpdates;
     trReport.CommitRetaining;
{    except
     trReport.RollbackRetaining;
     MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)
    end;}
    Saved := True
   End
end;

procedure TfrmMain.sdTypeChange(Sender: TObject);
begin
 Case sd.FilterIndex of
  1 : sd.DefaultExt := 'frf';
  2 : sd.DefaultExt := 'frp';
  3 : sd.DefaultExt := 'frf'
 End
end;

procedure TfrmMain.dxBarButton2Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmRoadSheets')=nil) then
  frmRoadSheets := TfrmRoadSheets.Create(frmMain);
 frmRoadSheets.Show
end;

procedure TfrmMain.frReportUserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
 If (AnsiCompareText('BitAND', Name)=0) then
  Val := (frParser.Calc(p1) and frParser.Calc(p2))
end;

procedure TfrmMain.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
 If SafeIBError(E,frmDM.dbMain,frmDM.trReport) then
  Exit;
end;

procedure TfrmMain.dxBarButton4Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmWorkCustomers')=nil) then
  frmWorkCustomers := TfrmWorkCustomers.Create(frmMain);
 frmWorkCustomers.Show
end;

procedure TfrmMain.dxBarButton5Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmProgrammSettings')=nil) then
  frmProgrammSettings := TfrmProgrammSettings.Create(frmMain);
 frmProgrammSettings.Show
end;

procedure TfrmMain.dxBarButton6Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmColumns')=nil) then
  frmColumns := TfrmColumns.Create(frmMain);
 frmColumns.Show
end;

end.
