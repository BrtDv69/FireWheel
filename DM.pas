unit DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBDatabase, DBTables, IBServices, ImgList, IBSQL, Registry, cxStyles,
  cxLookAndFeels, cxClasses, cxGridTableView, LbCipher, LbString,
  IBCustomDataSet;

type
  TfrmDM = class(TDataModule)
    dbMain: TIBDatabase;
    ImageList2: TImageList;
    cxStyleRepository: TcxStyleRepository;
    stHeader: TcxStyle;
    stPreview: TcxStyle;
    cxLookAndFeelController: TcxLookAndFeelController;
    cxIncSearch: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    trReport: TIBTransaction;
    ibsGen_ID: TIBSQL;
    ibdsReport: TIBDataSet;
    ibdsShow: TIBDataSet;
    ibdsReportID: TIntegerField;
    ibdsReportREPORT_NAME: TIBStringField;
    ibdsReportREPORT: TBlobField;
    ibdsShowID: TIntegerField;
    ibdsShowBUTTON_NAME: TIBStringField;
    ibdsShowREPORT_ID: TIntegerField;
    dsReport: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;

implementation

uses Misk, Main;

{$R *.DFM}
                                                                             

procedure TfrmDM.DataModuleCreate(Sender: TObject);
var Reg : TRegistry;
    Key256 : TKey256;
begin
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 dbMain.DatabaseName := '';
 If (Reg.KeyExists('\Software\WizardSoft\Wizard FireWheel\SetUp')) then
  Begin
   Reg.OpenKeyReadOnly('\Software\WizardSoft\Wizard FireWheel\SetUp');
   If (Reg.ValueExists('Path')) then
    Begin
     GenerateLMDKey(Key256, SizeOf(Key256), '¬¡ëìyW²Î=`áþÚ ÁºyX†f0“Úâš 845098yhfjb hJLUGLI,. ., **&*^#');
     dbMain.DatabaseName := RDLEncryptStringCBCEx(Reg.ReadString('Path'), Key256, 32, False)
    End
  End;
 Reg.Free;
 If (dbMain.DatabaseName='') then
  Begin
   MessageDlg('Ïðîãðàììà íå óñòàíîâëåíà!',mtError,[mbOK],0);
   Application.Terminate
  End;
 dbMain.Params.Clear;
 dbMain.Params.AddStrings(DefParams);
 DefParams.Free;
 dbMain.Open;
 LoadKeyboardLayout('00000419', KLF_ACTIVATE)
end;

end.
