program FireWheel;

{%ToDo 'FireWheel.todo'}

uses
  Forms,
  Registry,
  Windows,
  Controls,
  Dialogs,
  Main in 'Main.pas' {frmMain},
  Like in 'Like.pas' {frmLike},
  DM in 'DM.pas' {frmDM: TDataModule},
  Articuls in 'Articuls.pas' {frmArticuls},
  Misk in 'Misk.pas',
  Accounts in 'Accounts.pas' {frmAccounts},
  KontrAgList in 'KontrAgList.pas' {frmKontrAgList},
  Persons in 'Persons.pas' {frmPersons},
  Reasons in 'Reasons.pas' {frmReasons},
  SearchArticuls in 'SearchArticuls.pas' {frmSearchArticuls},
  Automobiles in 'Automobiles.pas' {frmAutomobiles},
  Fuel in 'Fuel.pas' {frmFuel},
  Parts in 'Parts.pas' {frmParts},
  Nakl in 'Nakl.pas' {frmNakl},
  StoreCards in 'StoreCards.pas' {frmStoreCards},
  Remains in 'Remains.pas' {frmRemains},
  AccumulatorsTyres in 'AccumulatorsTyres.pas' {frmAccumulatorsTyres},
  AutomobilesInfo in 'AutomobilesInfo.pas' {frmAutomobilesInfo},
  TORepairs in 'TORepairs.pas' {frmTORepairs},
  Routes in 'Routes.pas' {frmRoutes},
  LogIn in 'LogIn.pas' {frmLogIn},
  UsersSetup in 'UsersSetup.pas' {frmUsersSetup},
  EnterPassword in 'EnterPassword.pas' {frmEnterPassword},
  WorkKinds in 'WorkKinds.pas' {frmWorkKinds},
  WorkDistricts in 'WorkDistricts.pas' {frmWorkDistricts},
  RoadSheets in 'RoadSheets.pas' {frmRoadSheets},
  ExportOptions in 'ExportOptions.pas' {frmExportOptions},
  ShowIBException in 'ShowIBException.pas',
  InputQuery in 'InputQuery.pas' {frmInputQuery},
  WorkCustomers in 'WorkCustomers.pas' {frmWorkCustomers},
  devex_loc in 'devex_loc.pas',
  ProgrammSettings in 'ProgrammSettings.pas' {frmProgrammSettings},
  Columns in 'Columns.pas' {frmColumns};

{$R *.RES}

var Reg: TRegistry;

begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  If (Reg.KeyExists('\Software\WizardSoft\Wizard FireWheel\SetUp')) then
   Begin
    Reg.OpenKeyReadOnly('\Software\WizardSoft\Wizard FireWheel\SetUp');
    If (Reg.ValueExists('Path')) then
     Begin
      Reg.Free;
      Application.Initialize;
      Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.Title := 'FireWheel';
  frmLogIn.ShowModal;
      If (frmLogIn.ModalResult=mrOK) then
       Begin
        frmMain.StatusBar.Panels[0].Text := frmLogIn.lcUserName.Text;
        frmLogIn.Free;
        Application.CreateForm(TfrmDM, frmDM);
        Application.Run
       End
      else
       frmLogIn.Free
     End
   End
  else
   Begin
    Reg.Free;
    MessageDlg('Программный продукт не установлен. Воспользуйтесь программой установки.',mtError,[mbOK],0)
   End
end.
