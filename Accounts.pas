unit Accounts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, Grids, Buttons, StdCtrls, Mask, IBDatabase, Db, DBCtrls,
  ComCtrls, IBSQL, IBCustomDataSet, ImgList, Variants, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGraphics,
  cxGridDBTableView, cxGrid, cxContainer, cxMemo, cxDBEdit, cxEdit, cxTextEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
 TObjProcedure = procedure of object;

type
  TfrmAccounts = class(TfrmLike)
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
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    ibdsMain: TIBDataSet;
    dsMain: TDataSource;
    ibsChild: TIBSQL;
    ibdsTree: TIBDataSet;
    ImageList1: TImageList;
    Panel2: TPanel;
    ibsAux: TIBSQL;
    Panel3: TPanel;
    pnlFilter: TPanel;
    sbReFilter: TSpeedButton;
    ibdsTreeNAME: TIBStringField;
    ibdsTreeSHORT_NAME: TIBStringField;
    ibdsMainID: TIntegerField;
    ibdsMainPARENT_ID: TIntegerField;
    ibdsMainNAME: TIBStringField;
    ibdsMainSHORT_NAME: TIBStringField;
    ibdsMainCOMMENTS: TIBStringField;
    ibdsMainCHIELD_COUNT: TIntegerField;
    ibdsMainVALID: TIntegerField;
    ibdsSearch: TIBDataSet;
    ibdsSearchID: TIntegerField;
    ibdsSearchNAME: TIBStringField;
    dsSearch: TDataSource;
    ibdsLocateItem: TIBDataSet;
    ibdsLocateItemID: TIntegerField;
    tvAccounts: TcxGridDBTableView;
    lvAccounts: TcxGridLevel;
    dbgAccounts: TcxGrid;
    tvAccountsNAME: TcxGridDBColumn;
    tvAccountsSHORT_NAME: TcxGridDBColumn;
    tvAccountsCOMMENTS: TcxGridDBColumn;
    tvAccountsVALID: TcxGridDBColumn;
    ibdsTreeID: TIntegerField;
    ibdsTreePARENT_ID: TIntegerField;
    dbeFilter: TcxTextEdit;
    cxDBMemo1: TcxDBMemo;
    GridPopupMenu: TcxGridPopupMenu;
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
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TreeView1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
    procedure TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbFilterClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure ibdsMainFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibdsSearchAfterScroll(DataSet: TDataSet);
    procedure tvAccountsCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    function GetWhere: String;
    procedure GenerateSelectMain;
    procedure StteChange(Enabled: Boolean);
    procedure GenerateTree(Node: TTreeNode);
    procedure LocateItem;
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Integer;
   Parent: Integer;
   CCount: Integer;
  end;

var
  frmAccounts: TfrmAccounts;

implementation

uses Misk, DM, SearchArticuls;

{$R *.DFM}

var
  OrderBy : String = ' 3 asc';
  WhereSql : String = '';
  GenerateSQLNode : TTreeNode;

procedure TfrmAccounts.FormCreate(Sender: TObject);
begin
 FName := 'Бух. счета';
 inherited;
 trMain.StartTransaction;
 GenerateTree(Nil);
 If (TreeView1.Items.Count>0) then
  TreeView1.Items[0].Expand(False)
 else
  Begin
   GenerateSelectMain;
   ibdsMain.Open
  End 
end;

procedure TfrmAccounts.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmAccounts.sbDetailClick(Sender: TObject);
begin
 pnlDetail.Visible := sbDetail.Down
end;

procedure TfrmAccounts.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmAccounts,'')
end;

procedure TfrmAccounts.StteChange(Enabled: Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

function TfrmAccounts.GetWhere: String;
begin
 Result := ' (A.PARENT_ID=:PARENT_ID)'
end;

procedure TfrmAccounts.GenerateSelectMain;
 var k : Integer;
begin
 WhereSql := GetWhere;
 For k := Pred(ibdsMain.SelectSQL.Count) downto 3 do
  ibdsMain.SelectSQL.Delete(k);
 ibdsMain.SelectSQL.Add('where'+WhereSql);
 ibdsMain.SelectSQL.Add('order by'+OrderBy);
 If (GenerateSQLNode<>nil) and (GenerateSQLNode.Data<>nil) then
  ibdsMain.ParamByName('PARENT_ID').AsInteger := PItemRec(GenerateSQLNode.Data)^.ID
 else
  ibdsMain.ParamByName('PARENT_ID').Value := null
end;

procedure TfrmAccounts.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmAccounts.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmAccounts.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmAccounts.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmAccounts.sbAddClick(Sender: TObject);
begin
 ibdsMain.Insert
end;

procedure TfrmAccounts.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 StteChange(True)
end;

procedure TfrmAccounts.sbCancelClick(Sender: TObject);
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

procedure TfrmAccounts.sbApplyClick(Sender: TObject);
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
  If (TreeView1.Selected<>nil) then
   ibdsTree.ParamByName('ID').Value := PItemRec(TreeView1.Selected.Data)^.ID;
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

procedure TfrmAccounts.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(ibdsMain.UpdatesPending)
end;

procedure TfrmAccounts.ibdsMainNewRecord(DataSet: TDataSet);
begin
 ibdsMainID.Value := GetNewID(ibsGen_ID,'GEN_ACCOUNTS_ID');
 If (ibdsMain.ParamByName('Parent_ID').IsNull) then
  ibdsMainPARENT_ID.AsVariant := Null
 else
  ibdsMainPARENT_ID.Value := ibdsMain.ParamByName('Parent_ID').AsInteger;
 ibdsMainVALID.Value := 1
end;

procedure TfrmAccounts.GenerateTree(Node: TTreeNode);
 var R : PItemRec;
     NewNode : TTreeNode;
begin
 ibsChild.SQL.Clear;
 If (Node=nil) then
  Begin
   ibsChild.SQL.Add('select A.ID, A.NAME, A.PARENT_ID, A.CHIELD_COUNT');
   ibsChild.SQL.Add('from ACCOUNTS A');
   ibsChild.SQL.Add('where (A.PARENT_ID IS NULL)');
   ibsChild.SQL.Add('order by A.NAME');
  End
 else
  Begin
   ibsChild.SQL.Add('select A.ID, A.NAME, A.PARENT_ID, A.CHIELD_COUNT');
   ibsChild.SQL.Add('from ACCOUNTS A');
   ibsChild.SQL.Add('where (A.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+')');
   ibsChild.SQL.Add('order by A.NAME');
   Node.DeleteChildren
  End;
 ibsChild.ExecQuery;
 While not (ibsChild.EOF) do
  Begin
   NewNode := TreeView1.Items.AddChild(Node, ibsChild.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsChild.FieldByName('ID').AsInteger;
   R^.Parent := ibsChild.FieldByName('PARENT_ID').asInteger;
   R^.CCount := ibsChild.FieldByName('CHIELD_COUNT').asInteger;
   NewNode.HasChildren := (ibsChild.FieldByName('CHIELD_COUNT').asInteger > 0);
   NewNode.ImageIndex := 0;
   NewNode.SelectedIndex := 1;
   ibsChild.Next
  End;
 ibsChild.Close
end;

procedure TfrmAccounts.TreeView1Deletion(Sender: TObject; Node: TTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmAccounts.TreeView1Expanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmAccounts.TreeView1Changing(Sender: TObject; Node: TTreeNode;
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
   ibdsMain.Open
  End
end;

procedure TfrmAccounts.dsMainDataChange(Sender: TObject; Field: TField);
 var k : Integer;
begin
 For k := 0 to Pred(pnlDetail.ControlCount) do
end;

procedure TfrmAccounts.TreeView1GetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
 If (Node.Expanded) then
  Node.ImageIndex := 1
 else
  Node.ImageIndex := 0
end;

procedure TfrmAccounts.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 If (PItemRec(Node.Data)^.CCount>0) then
  Sender.Canvas.Font.Style := []
 else
  Sender.Canvas.Font.Style := [fsItalic];
 DefaultDraw := True
end;

procedure TfrmAccounts.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
 GenerateSQLNode := Node
end;

procedure TfrmAccounts.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure;
end;

procedure TfrmAccounts.sbFilterClick(Sender: TObject);
begin
 pnlFilter.Visible := sbFilter.Down;
 If (pnlFilter.Visible) then
  dbeFilter.SetFocus
 else
  Begin
   sbReFilter.Down := False;
   ibdsMain.Filtered := False
  End
end;

procedure TfrmAccounts.sbReFilterClick(Sender: TObject);
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
     If (frmAccounts.FindComponent('frmSearchArticuls')=nil) then
      frmSearchArticuls := TfrmSearchArticuls.Create(frmAccounts);
     frmSearchArticuls.Top := frmAccounts.Top;
     frmSearchArticuls.Left := Screen.Width-frmSearchArticuls.Width;
     frmSearchArticuls.wwDBGrid1.DataSource := dsSearch;
     frmSearchArticuls.Show
    End
  End
 else
  MessageDlg('Записей, удовлетворяющих условию не найдено.', mtInformation, [mbOK], 0)
end;

procedure TfrmAccounts.ibdsMainFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (Pos(dbeFilter.Text,ibdsMainNAME.AsString)>0)
end;

procedure TfrmAccounts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmAccounts := nil
end;

procedure TfrmAccounts.ibdsSearchAfterScroll(DataSet: TDataSet);
begin
 LocateItem
end;

procedure TfrmAccounts.LocateItem;
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
     If (ibdsLocateItemID.Value<>ibdsSearchID.Value) and
        (PItemRec(TreeView1.Selected.Data)^.ID<>ibdsLocateItemID.Value) then
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

procedure TfrmAccounts.tvAccountsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

end.
