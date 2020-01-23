unit LogIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Registry,
  ExtCtrls, fcLabel, StdCtrls, fcCombo, fctreecombo, Buttons, IBServices,
  Db, IBDatabase, IBCustomDataSet, IBSQL, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  LbCipher, LbString, cxMaskEdit, dxBar, cxButtons;

type
  TfrmLogIn = class(TForm)
    Panel1: TPanel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    dbLogin: TIBDatabase;
    ibdsUsers: TIBDataSet;
    ibsUser: TIBSQL;
    trLogIn: TIBTransaction;
    ibdsUsersFULL_USER_NAME: TIBStringField;
    dbePassword: TcxTextEdit;
    lcUserName: TcxComboBox;
    sbOK: TcxButton;
    sbCancel: TcxButton;
    procedure sbCancelClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogIn: TfrmLogIn;

implementation

uses Misk, Main;

{$R *.DFM}

procedure TfrmLogIn.sbCancelClick(Sender: TObject);
begin
 ModalResult := mrCancel
end;

procedure TfrmLogIn.sbOKClick(Sender: TObject);
 var Key256 : TKey256;
     S, MsgStr : String;
     LayoutName : Array [0..KL_NAMELENGTH] of Char;
// LangName   : Array [0..63] of Char;

     procedure CleanUpTree(ItemLinks: TdxBarItemLinks);
           var k : Integer;
     begin
      For k := Pred(ItemLinks.AvailableItemCount) downto 0  do
       If (Pos(';'+IntToStr(ItemLinks.Items[k].Item.Tag)+';',S)=0) then
        ItemLinks.Items[k].Item.Free
       else
        If (ItemLinks.Items[k].Item is TdxBarSubItem) then
         CleanUpTree((ItemLinks.Items[k].Item as TdxBarSubItem).ItemLinks)
     end;

begin
 If (GetKeyState(VK_CONTROL)<0) then
  Begin
   If (trLogIn.InTransaction) then
    trLogIn.Commit;
   dbLogin.Connected := False;
   dbLogin.Params.Clear;
   dbLogin.Params.Add('user_name='+lcUserName.Text);
   dbLogin.Params.Add('password='+dbePassword.Text);
   dbLogin.Params.Add('lc_ctype=WIN1251');
   try
    dbLogin.Connected := True;
    If (DefParams=nil) then
     DefParams := TStringList.Create;
    DefParams.Add('user_name='+lcUserName.Text);
    DefParams.Add('password='+dbePassword.Text);
    DefParams.Add('lc_ctype=WIN1251');
    ModalResult := mrOK
   except
    dbLogin.Connected := False;
    dbLogin.Params.Clear;
    GenerateLMDKey(Key256, SizeOf(Key256), '¬¡ëìyW²Î=`áþÚ ÁºyX†f0“Úâš 845098yhfjb hJLUGLI,. ., **&*^#');
    dbLogin.Params.Add('user_name=UserList');
    dbLogin.Params.Add('password='+RDLEncryptStringCBCEx('vvlxZH7SR6g0SxlHanLmLo+F8qW/nWuMVzdLdByRgpA=', Key256, 32, False));
    dbLogin.Params.Add('lc_ctype=WIN1251');
    dbLogin.Connected := True;
    trLogIn.StartTransaction;
    ibdsUsers.Open
   end;
  End
 else
  Begin
   ibsUser.SQL.Clear;
   ibsUser.SQL.Add('select USER_NAME, USER_PASSWORD, USER_ROLE from');
   ibsUser.SQL.Add('GET_USER('#39+lcUserName.Text+#39', '#39+dbePassword.Text+#39')');
   ibsUser.ExecQuery;
   If (ibsUser.FieldByName('USER_NAME').IsNull) then
    Begin
     dbePassword.Text := '';
     ibsUser.Close;
     MsgStr := ''; 
     If Odd(GetKeyState(VK_CAPITAL)) then
      MsgStr := '- Êëàâèøà Caps Lock âêëþ÷åíà!'+#13#10;
     MsgStr := MsgStr+'- Ðàñêëàäêà êëàâèàòóðû ';
     GetKeyboardLayoutName(@LayoutName);
     If (LayoutName='00000419') then {LANG_RUSSIAN}
      MsgStr := MsgStr+'ÐÓÑÑÊÀß!';
     If (LayoutName='00000409') then {LANG_ENGLISH}
      MsgStr := MsgStr+'ÀÍÃËÈÉÑÊÀß!';
 // GetLocaleInfo(StrToInt('$'+LayoutName), LOCALE_SENGLANGUAGE, @LangName, 64);
     MessageDlg('Îáðàòèòå âíèìàíèå: '+#13#10+MsgStr,mtInformation,[mbOK],0);
    End
   else
    Begin
     If (DefParams=nil) then
      DefParams := TStringList.Create;
     DefParams.Clear;
     DefParams.Add('user_name='+ibsUser.FieldByName('USER_NAME').AsString);
     DefParams.Add('password='+ibsUser.FieldByName('USER_PASSWORD').AsString);
     DefParams.Add('sql_role_name='+ibsUser.FieldByName('USER_ROLE').AsString);
     DefParams.Add('lc_ctype=WIN1251');
     dbLogin.Close;
     dbLogin.Params.Clear;
     dbLogin.Params.AddStrings(DefParams);
     dbLogin.Open;
     trLogIn.StartTransaction;
     ibsUser.SQL.Clear;
     ibsUser.SQL.Add('select UV.TAG from USERS U, USER_VISIBLES UV where (UPPER(U.USER_NAME)=current_user) and (U.ID=UV.USER_ID)');
     ibsUser.ExecQuery;
     S := ';';
     While NOT (ibsUser.Eof) do
      Begin
       S := S+ibsUser.Fields[0].AsString+';';
       ibsUser.Next
      End;
     ibsUser.Close;
     CleanUpTree(frmMain.dxBarManager.MainMenuBar.ItemLinks);
     CleanUpTree(frmMain.dxBarManager.Bars[1].ItemLinks);
     dbLogin.Close;
     ModalResult := mrOK
    End
  End
end;

procedure TfrmLogIn.FormCreate(Sender: TObject);
 var Reg : TRegistry;
     Key256 : TKey256;
begin
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 dbLogin.DatabaseName := '';
 Reg.OpenKeyReadOnly('\Software\WizardSoft\Wizard FireWheel\SetUp');
 GenerateLMDKey(Key256, SizeOf(Key256), '¬¡ëìyW²Î=`áþÚ ÁºyX†f0“Úâš 845098yhfjb hJLUGLI,. ., **&*^#');
 dbLogin.DatabaseName := RDLEncryptStringCBCEx(Reg.ReadString('Path'), Key256, 32, False);
 Reg.Free;
 dbLogin.Params.Clear;
 GenerateLMDKey(Key256, SizeOf(Key256), '¬¡ëìyW²Î=`áþÚ ÁºyX†f0“Úâš 845098yhfjb hJLUGLI,. ., **&*^#');
 dbLogin.Params.Add('user_name=UserList');
 dbLogin.Params.Add('password='+RDLEncryptStringCBCEx('vvlxZH7SR6g0SxlHanLmLo+F8qW/nWuMVzdLdByRgpA=', Key256, 32, False));
 dbLogin.Params.Add('lc_ctype=WIN1251');
 try
  dbLogin.Connected := True;
 except
  MessageDlg('Ïðîãðàììà íå óñòàíîâëåíà, ëèáî îòñóòñòâóåò ñåðâåð áàç äàííûõ!',mtError,[mbOK],0);
  Application.Terminate
 end;
 trLogIn.StartTransaction;
 ibdsUsers.Open;
 lcUserName.Properties.Items.Clear;
 While NOT (ibdsUsers.Eof) do
  Begin
   lcUserName.Properties.Items.Add(ibdsUsersFULL_USER_NAME.AsString);
   ibdsUsers.Next
  End;
 ibdsUsers.Close; 
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_CURRENT_USER;
 Reg.OpenKeyReadOnly('\Software\WizardSoft\Wizard FireWheel');
 lcUserName.Text := Reg.ReadString('LastLogOn');
 Reg.Free
end;

procedure TfrmLogIn.FormClose(Sender: TObject; var Action: TCloseAction);
 var Reg: TRegistry;
begin
 If (ModalResult=mrOK) then
  Begin
   Reg := TRegistry.Create;
   Reg.RootKey := HKEY_CURRENT_USER;
   try
    Reg.OpenKey('\Software\WizardSoft\Wizard FireWheel',True);
    Reg.WriteString('LastLogOn', lcUserName.Text);
   finally
    Reg.Free
   end
  End;
 dbLogin.Connected := False
end;

end.
