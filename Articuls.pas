unit Articuls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, fcdbtreeview, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  StdCtrls, Mask, wwdbedit, IBDatabase, Db, wwdblook, Wwdotdot, Wwdbcomb,
  DBCtrls, ComCtrls, IBSQL, IBCustomDataSet, ImgList, wwclearbuttongroup,
  wwradiogroup, Variants;

type
 TObjProcedure = procedure of object;

type
  TfrmArticuls = class(TfrmLike)
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbDelete: TSpeedButton;
    sbAdd: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbFilter: TSpeedButton;
    SpeedButton10: TSpeedButton;
    sbDetail: TSpeedButton;
    Panel1: TPanel;
    pnlDetail: TPanel;
    Label16: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label3: TLabel;
    lblArticul: TLabel;
    edArticul: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    dbeName: TwwDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    ibdsMain: TIBDataSet;
    dsMain: TDataSource;
    ibdsMainITEM_TYPE: TIntegerField;
    ibdsMainNAME: TIBStringField;
    ibdsMainUNITS: TIBStringField;
    ibdsMainNDS: TFloatField;
    ibdsMainCOMMENTS: TIBStringField;
    ibdsGroups: TIBDataSet;
    ibdsGroupsNAME: TIBStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ibdsMainARTICUL: TIBStringField;
    ibsChild: TIBSQL;
    ibdsTree: TIBDataSet;
    ibdsTreeNAME: TIBStringField;
    ImageList1: TImageList;
    Panel2: TPanel;
    rgItemTypes: TwwRadioGroup;
    ibsAux: TIBSQL;
    Panel3: TPanel;
    pnlFilter: TPanel;
    sbReFilter: TSpeedButton;
    dbeFilter: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    ibdsMainID: TIntegerField;
    ibdsMainPARENT_ID: TIntegerField;
    ibdsMainGOOD_TYPE: TIntegerField;
    lblMilleage: TLabel;
    edMilleage: TwwDBEdit;
    Label7: TLabel;
    dblAccounts: TwwDBLookupCombo;
    rgGoodTypes: TwwRadioGroup;
    ibdsMainACCOUNT_ID: TIntegerField;
    ibdsAccounts: TIBDataSet;
    ibdsGroupsID: TIntegerField;
    ibdsAccountsID: TIntegerField;
    ibdsAccountsSHORT_NAME: TIBStringField;
    ibdsAccountsNAME: TIBStringField;
    ibdsGroupsUNITS: TIBStringField;
    ibdsGroupsNDS: TFloatField;
    ibdsMainCHIELD_COUNT: TIntegerField;
    edAmount: TwwDBEdit;
    ibdsGroupsGOOD_TYPE: TIntegerField;
    Label1: TLabel;
    ibdsSearch: TIBDataSet;
    ibdsSearchID: TIntegerField;
    ibdsSearchITEM_TYPE: TIntegerField;
    ibdsSearchGOOD_TYPE: TIntegerField;
    ibdsSearchNAME: TIBStringField;
    dsSearch: TDataSource;
    ibdsLocateItem: TIBDataSet;
    ibdsLocateItemID: TIntegerField;
    ibdsTreeID: TIntegerField;
    ibdsTreePARENT_ID: TIntegerField;
    lblTime: TLabel;
    edTime: TwwDBEdit;
    ibdsMainTIME_ALLOWED: TIntegerField;
    ibdsMainMILLEAGE_ALLOWED: TIntegerField;
    ibdsGroupsTIME_ALLOWED: TIntegerField;
    ibdsGroupsMILLEAGE_ALLOWED: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure sbDetailClick(Sender: TObject);
    procedure ibdsMainAfterScroll(DataSet: TDataSet);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure ibdsMainNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TreeView1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure ibdsMainBeforePost(DataSet: TDataSet);
    procedure TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbFilterClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgItemTypesChange(Sender: TObject);
    procedure ibdsMainITEM_TYPEChange(Sender: TField);
    procedure rgGoodTypesChange(Sender: TObject);
    procedure ibdsMainGOOD_TYPEChange(Sender: TField);
    procedure wwDBGrid1CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dblAccountsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsSearchAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    function GetWhere: String;
    procedure GenerateSelectMain;
    procedure StteChange(Enabled: Boolean);
    procedure GenerateTree(Node: TTreeNode);
    procedure ChangeItemType(IsGood: Boolean);
    procedure ChangeGoodType(GoodType: Integer);
    procedure SetAccount;
    procedure LocateItem;
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Integer;
   Parent: Integer;
   CCount: Integer;
   ITYPE : Byte;
  end;

var
  frmArticuls: TfrmArticuls;

implementation

uses Misk, DM, Accounts, Main, SearchArticuls;

{$R *.DFM}

var
  OrderBy : String = ' 6 asc';
  WhereSql : String = '';
  GenerateSQLNode : TTreeNode;

procedure TfrmArticuls.FormCreate(Sender: TObject);
begin
 FName := 'Артикулы';
 inherited;
 trMain.StartTransaction;
 GenerateTree(Nil);
 TreeView1.Items[0].Expand(False);
 ibdsGroups.Open;
 ibdsAccounts.Open
end;

procedure TfrmArticuls.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmArticuls.sbDetailClick(Sender: TObject);
begin
 pnlDetail.Visible := sbDetail.Down
end;

procedure TfrmArticuls.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmArticuls,'')
end;

procedure TfrmArticuls.StteChange(Enabled: Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

function TfrmArticuls.GetWhere: String;
begin
 Result := ' (A.PARENT_ID=:PARENT_ID)'
end;

procedure TfrmArticuls.GenerateSelectMain;
 var k : Integer;
begin
 WhereSql := GetWhere;
 For k := Pred(ibdsMain.SelectSQL.Count) downto 4 do
  ibdsMain.SelectSQL.Delete(k);
 ibdsMain.SelectSQL.Add('where'+WhereSql);
 ibdsMain.SelectSQL.Add('order by'+OrderBy);
 If (GenerateSQLNode<>nil) and (GenerateSQLNode.Data<>nil) then
  ibdsMain.ParamByName('PARENT_ID').AsInteger := PItemRec(GenerateSQLNode.Data)^.ID
end;

procedure TfrmArticuls.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmArticuls.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmArticuls.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmArticuls.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmArticuls.sbAddClick(Sender: TObject);
begin
 ibdsMain.Insert;
 If NOT (pnlDetail.Visible) then
  Begin
   sbDetail.Down := True;
   pnlDetail.Visible := True
  End;
 dbeName.SetFocus
end;

procedure TfrmArticuls.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 StteChange(True)
end;

procedure TfrmArticuls.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMain.Bookmark;
 ibdsMain.CancelUpdates;
 StteChange(False);
 try
  ibdsMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmArticuls.sbApplyClick(Sender: TObject);
 var BookMark : String;
     k : Integer;
begin
 BookMark := ibdsMain.Bookmark;
// try
  ibdsMain.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
{ except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;}
 try
  ibdsTree.ParamByName('ID').Value := PItemRec(TreeView1.Selected.Data)^.ID;
  ibdsGroups.Close;
  ibdsGroups.Open;
  TreeView1.Items.Clear;
  GenerateTree(Nil);
  TreeView1.Items[0].Expand(False);
  ibdsTree.Open;
  ibdsTree.Last;
  While Not (ibdsTree.Bof) do
   Begin
    For k := 0 to Pred(TreeView1.Items.Count) do
     If (TreeView1.Items[k].Text=ibdsTreeNAME.Value) then
      Begin
       TreeView1.Selected := TreeView1.Items[k];
       TreeView1.Items[k].Expand(False);
       Break
      End;
    ibdsTree.Prior
   End;
  ibdsTree.Close;
  ibdsMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmArticuls.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(ibdsMain.UpdatesPending)
end;

procedure TfrmArticuls.ibdsMainNewRecord(DataSet: TDataSet);
begin
 ibdsMainID.Value := GetNewID(ibsGen_ID,'GEN_ARTICULS_ID');
 If (ibdsMain.ParamByName('Parent_ID').IsNull) then
  Begin
   ibdsMainPARENT_ID.Value := Null;
   ibdsMainNDS.Value := 20;
   ibdsMainTIME_ALLOWED.Value := 0;
   ibdsMainMILLEAGE_ALLOWED.Value := 0;
   ibdsMainGOOD_TYPE.Value := 0
  End
 else
  Begin
   ibdsMainPARENT_ID.Value := ibdsMain.ParamByName('Parent_ID').AsInteger;
   ibdsMainNDS.Value := ibdsGroupsNDS.Value;
   ibdsMainUNITS.Value := ibdsGroupsUNITS.Value;
   ibdsMainTIME_ALLOWED.Value := ibdsGroupsTIME_ALLOWED.Value;
   ibdsMainMILLEAGE_ALLOWED.Value := ibdsGroupsMILLEAGE_ALLOWED.Value;
   ibdsMainGOOD_TYPE.Value := ibdsGroupsGOOD_TYPE.Value
  End;
 ibdsMainITEM_TYPE.Value := 1
end;

procedure TfrmArticuls.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBy)
end;

procedure TfrmArticuls.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmArticuls.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 Key := MyUpCase(Key)
end;

procedure TfrmArticuls.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBy, (GetKeyState(VK_CONTROL)<0),
                          sbApply, sbCancel, GenerateSelectMain)
end;

procedure TfrmArticuls.GenerateTree(Node: TTreeNode);
 var R : PItemRec;
     NewNode : TTreeNode;
begin
 ibsChild.SQL.Clear;
 If (Node=nil) then
  Begin
   ibsChild.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, count(aa.id) CHIELD_GROUPS_COUNT, a.GOOD_TYPE');
   ibsChild.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
   ibsChild.SQL.Add('((a.id=aa.parent_id) and (aa.item_type=0))');
   ibsChild.SQL.Add('where (a.PARENT_ID IS NULL) and (a.ITEM_TYPE=0)');
   ibsChild.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, a.GOOD_TYPE');
   ibsChild.SQL.Add('order by a.GOOD_TYPE desc');
  End
 else
  Begin
   ibsChild.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, count(aa.id) CHIELD_GROUPS_COUNT, a.GOOD_TYPE');
   ibsChild.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
   ibsChild.SQL.Add('((a.id=aa.parent_id) and (aa.item_type=0))');
   ibsChild.SQL.Add('where (a.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') and (a.ITEM_TYPE=0)');
   ibsChild.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, a.GOOD_TYPE');
   ibsChild.SQL.Add('order by a.GOOD_TYPE desc, a.NAME asc');
   Node.DeleteChildren
  End;
 ibsChild.ExecQuery;
 While not (ibsChild.EOF) do
  Begin
   NewNode := TreeView1.Items.AddChild(Node, ibsChild.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsChild.FieldByName('ID').AsInteger;
   R^.Parent := ibsChild.FieldByName('PARENT_ID').AsInteger;
   R^.CCount := ibsChild.FieldByName('CHIELD_COUNT').AsInteger;
   R^.ITYPE := ibsChild.FieldByName('ITEM_TYPE').asInteger;
   NewNode.HasChildren := (ibsChild.FieldByName('CHIELD_GROUPS_COUNT').AsInteger > 0);
   NewNode.ImageIndex := PItemRec(NewNode.Data)^.ITYPE;
   NewNode.SelectedIndex := PItemRec(NewNode.Data)^.ITYPE+1;
   ibsChild.Next
  End;
 ibsChild.Close
end;

procedure TfrmArticuls.TreeView1Deletion(Sender: TObject; Node: TTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmArticuls.TreeView1Expanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmArticuls.TreeView1Changing(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
 var k : Integer; 
begin
 If (sbApply.Enabled) then
  Begin
   AllowChange := False;
   Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
    mrYes   : Begin
               k := Node.AbsoluteIndex;
               sbApply.Click;
               TreeView1.Selected := TreeView1.Items[k];
               TreeView1.Items[k].Expand(False)
              End;
    mrNo    : Begin
               AllowChange := True;
               sbCancel.Click;
               ibdsMain.Close;
               GenerateSQLNode := Node;
               GenerateSelectMain;
               ibdsMain.Open
              End;
    mrCancel: Exit
   End
  End
 else
  Begin
   ibdsMain.Close;
   GenerateSQLNode := Node;
   GenerateSelectMain;
   ibdsMain.Open;
   AllowChange := True
  End
end;

procedure TfrmArticuls.ibdsMainBeforePost(DataSet: TDataSet);
begin
 If (ibdsMainITEM_TYPE.Value=0) then
  ibdsMainARTICUL.Value := ''
end;

procedure TfrmArticuls.TreeView1GetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
 If (Node.Expanded) then
  Node.ImageIndex := 1
 else
  Node.ImageIndex := 0
end;

procedure TfrmArticuls.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 If (PItemRec(Node.Data)^.CCount>0) then
  Sender.Canvas.Font.Style := []
 else
  Sender.Canvas.Font.Style := [fsItalic];
 DefaultDraw := True
end;

procedure TfrmArticuls.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 AFont.Color := clWindowText;
 If (ibdsMainITEM_TYPE.IsNull) then
  ABrush.Color := clWindow
 else
  Case ibdsMainITEM_TYPE.Value of
   0 : ABrush.Color := ColorGroups;
   1 : ABrush.Color := ColorGoods
  end
end;

procedure TfrmArticuls.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
 GenerateSQLNode := Node;
 If (GenerateSQLNode<>nil) and (GenerateSQLNode.Data<>nil) then
  Begin
   sbAdd.Enabled := (PItemRec(Node.Data)^.ITYPE<>1);
   sbDelete.Enabled := (PItemRec(Node.Data)^.ITYPE<>1)
  End 
end;

procedure TfrmArticuls.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmArticuls.wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (ssCtrl in Shift) and (Key in [Ord('F'),Ord('f'),Ord('А'),Ord('а')]) then
  sbFilter.Click
end;

procedure TfrmArticuls.sbFilterClick(Sender: TObject);
begin
 pnlFilter.Visible := sbFilter.Down;
 If (pnlFilter.Visible) then
  dbeFilter.SetFocus
 else
  Begin
   If (frmArticuls.FindComponent('frmSearchArticuls')<>nil) then
    frmSearchArticuls.Free;
   ibdsSearch.Close
  End
end;

procedure TfrmArticuls.LocateItem;
 var TmpNode : TTreeNode;
begin
 If NOT (ibdsMain.Active) then
  Begin
   GenerateSelectMain;
   ibdsMain.Open
  End;
 If NOT (ibdsMain.Locate('ID',ibdsSearchID.Value,[])) then
  Begin
   TreeView1.Selected := TreeView1.Items[0];
   TreeView1.Selected.Collapse(True);
   TreeView1.Selected.Expand(False);
   ibdsLocateItem.Open;
   ibdsLocateItem.Last;
   While NOT (ibdsLocateItem.Bof) do
    Begin
     If (ibdsLocateItemID.Value<>ibdsSearchID.Value) then
      Begin
       TmpNode := TreeView1.Selected.GetFirstChild;
       While (PItemRec(TmpNode.Data)^.ID<>ibdsLocateItemID.Value) do
        TmpNode := TreeView1.Selected.GetNextChild(TmpNode);
       TreeView1.Selected := TmpNode;
       TreeView1.Selected.Expand(False);
      End
     else
      ibdsMain.Locate('ID',ibdsLocateItemID.Value,[]);
     ibdsLocateItem.Prior
    End;
   ibdsLocateItem.Close
  End
end;

procedure TfrmArticuls.sbReFilterClick(Sender: TObject);
 var ID : Integer;
begin
 ibdsSearch.Close;
 ibdsSearch.ParamByName('NAME').AsString := dbeFilter.Text;
 ibdsSearch.Open;
 If (ibdsSearch.RecordCount>0) then
  Begin
   ibdsSearch.Next;
   ID := ibdsSearchID.AsInteger;
   ibdsSearch.Prior;
   If (ibdsSearchID.AsInteger=ID) then
    LocateItem
   else
    Begin
     If (frmArticuls.FindComponent('frmSearchArticuls')=nil) then
      frmSearchArticuls := TfrmSearchArticuls.Create(frmArticuls);
     frmSearchArticuls.Top := frmArticuls.Top;
     frmSearchArticuls.Left := Screen.Width-frmSearchArticuls.Width;
     frmSearchArticuls.wwDBGrid1.DataSource := dsSearch;
     frmSearchArticuls.Show
    End
  End
 else
  MessageDlg('Записей, удовлетворяющих условию не найдено.', mtInformation, [mbOK], 0)
end;

procedure TfrmArticuls.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmArticuls := nil
end;

procedure TfrmArticuls.ChangeItemType(IsGood: Boolean);
begin
 lblArticul.Visible := IsGood;
 edArticul.Visible := IsGood;
 rgGoodTypes.Visible := NOT IsGood
end;

procedure TfrmArticuls.ChangeGoodType(GoodType: Integer);
begin
 lblMilleage.Visible := NOT(GoodType=0);
 edMilleage.Visible := lblMilleage.Visible;
 lblTime.Visible := lblMilleage.Visible;
 edTime.Visible := lblMilleage.Visible
end;

procedure TfrmArticuls.rgItemTypesChange(Sender: TObject);
begin
 ChangeItemType(rgItemTypes.ItemIndex=1)
end;

procedure TfrmArticuls.ibdsMainITEM_TYPEChange(Sender: TField);
begin
 ChangeItemType(ibdsMainITEM_TYPE.AsInteger=1)
end;

procedure TfrmArticuls.rgGoodTypesChange(Sender: TObject);
begin
 ChangeGoodType(rgGoodTypes.ItemIndex)
end;

procedure TfrmArticuls.ibdsMainGOOD_TYPEChange(Sender: TField);
begin
 ChangeGoodType(ibdsMainGOOD_TYPE.AsInteger)
end;

procedure TfrmArticuls.wwDBGrid1CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderBy);
end;

procedure TfrmArticuls.dblAccountsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmAccounts')=nil) then
    frmAccounts := TfrmAccounts.Create(frmMain);
   frmAccounts.LookUpProcedure := SetAccount;
   If NOT (ibdsMainACCOUNT_ID.IsNull) then
    Begin
     frmAccounts.dbeFilter.Text := ibdsAccountsNAME.AsString;
     frmAccounts.sbReFilter.Click
    End;
   frmAccounts.Show
  End
end;

procedure TfrmArticuls.SetAccount;
begin
 ibdsAccounts.Close;
 ibdsAccounts.Open;
 ibdsAccounts.Locate('NAME',frmAccounts.ibdsMainNAME.AsString,[]);
 If NOT (ibdsMain.State in [dsEdit, dsInsert]) then
  ibdsMain.Edit;
 ibdsMainACCOUNT_ID.Value := ibdsAccountsID.Value;
 dblAccounts.Text := ibdsAccountsNAME.AsString;
 frmAccounts.LookUpProcedure := nil;
 frmAccounts.Close
end;

procedure TfrmArticuls.ibdsSearchAfterScroll(DataSet: TDataSet);
begin
 LocateItem
end;

end.
