unit Remains;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Buttons, IBSQL, IBDatabase,
  fcTreeView, StdCtrls, wwdblook, wwcheckbox, wwdbdatetimepicker, Db,
  IBCustomDataSet, Variants;

type
  TfrmRemains = class(TfrmLike)
    Panel4: TPanel;
    sbLastCompositVed: TSpeedButton;
    sbNextCompositVed: TSpeedButton;
    sbPriorCompositVed: TSpeedButton;
    sbFirstCompositVed: TSpeedButton;
    sbCloseCompositVed: TSpeedButton;
    Panel2: TPanel;
    Panel9: TPanel;
    sbRefreshRemains: TSpeedButton;
    fcTreeView1: TfcTreeView;
    Splitter1: TSplitter;
    dbgTotals: TwwDBGrid;
    ibdsMainTotals: TIBDataSet;
    ibdsMainTotalsARTICUL_ID: TIntegerField;
    ibdsMainTotalsARTICUL_NAME: TIBStringField;
    dsMainTotals: TDataSource;
    wwExpandButton1: TwwExpandButton;
    dbgDetails: TwwDBGrid;
    ibdsMainDetails: TIBDataSet;
    dsMainDetails: TDataSource;
    ibdsMainDetailsSTORE_TYPE: TIntegerField;
    ibdsMainDetailsSTORE_ID: TIntegerField;
    ibdsMainDetailsNAME: TIBStringField;
    ibdsMainDetailsTOTAL: TFloatField;
    ibdsMainDetailsPRICE: TFloatField;
    sbPrintPrimaryTovar: TSpeedButton;
    ibdsMainTotalsTOTAL: TFloatField;
    ibdsMainDetailsMIN_IN_DATE: TDateField;
    ibdsMainDetailsMAX_IN_DATE: TDateField;
    deDateStart: TwwDBDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseCompositVedClick(Sender: TObject);
    procedure fcTreeView1Deletion(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure fcTreeView1Expanding(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; var AllowExpansion: Boolean);
    procedure fcTreeView1ToggleCheckbox(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure fcTreeView1CalcNodeAttributes(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; State: TfcItemStates);
    procedure sbRefreshRemainsClick(Sender: TObject);
    procedure ibdsMainTotalsBeforeClose(DataSet: TDataSet);
    procedure dbgTotalsCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dbgTotalsCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgTotalsCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgTotalsTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure wwExpandButton1AfterCollapse(Sender: TObject);
    procedure fcTreeView1DrawText(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; ARect: TRect; AItemState: TfcItemStates;
      var DefaultDrawing: Boolean);
    procedure fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure deDateStartEnter(Sender: TObject);
    procedure deDateStartChange(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateTree(Node: TfcTreeNode);
    procedure GenerateSelectMainTotals;
    procedure GenerateSelectMainDetails;
  public
    { Public declarations }
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Integer;
   Parent: Integer;
   IType : Byte;
  end;

var
  frmRemains: TfrmRemains;

implementation

uses DM, Misk;

{$R *.DFM}

var Level : Integer = -3;

    OrderByMainTotals  : String = ' 2 asc';
    WhereSqlMainTotals : String = '';
    WhereArticulsSqlMainTotals : String = '';
    MainTotalsBookMark : String;

    OrderByMainDetails  : String = ' 1 asc, 3 asc, 5 asc';

procedure TfrmRemains.FormCreate(Sender: TObject);
begin
 FName := 'Текущие остатки';
 inherited;
 trMain.StartTransaction;
 GenerateTree(Nil);
 fcTreeView1.FullExpand;
 fcTreeView1.FullCollapse;
 fcTreeView1.OnExpanding := nil;
 deDateStart.Date := Date
end;

procedure TfrmRemains.sbCloseCompositVedClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRemains.GenerateTree(Node: TfcTreeNode);
 var R : PItemRec;
     NewNode : TfcTreeNode;
begin
 If (Node=nil) then
  Begin
   fcTreeView1.Items.Clear;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Склад');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := -1;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Подотчетники');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := -1;
   R^.IType := 1;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Водители');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := -1;
   R^.IType := 2;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Автомобили');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := -1;
   R^.IType := 3;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Весь товар');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := -1;
   R^.Parent := -1;
   R^.IType := 4;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Текущее состояние');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Входящее на ');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := False;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.IType := 0
  End
 else
  Begin
   ibsGen_ID.SQL.Clear;
   Node.DeleteChildren;
   Case PItemRec(Node.Data)^.IType of
    1 : Begin
         ibsGen_ID.SQL.Add('select distinct P.ID, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME NAME');
         ibsGen_ID.SQL.Add('from PERSONS P, REMAINS R');
         ibsGen_ID.SQL.Add('where (P.IS_DRIVER=0) and (R.STORE_TYPE=1) and');
         ibsGen_ID.SQL.Add('(R.STORE_ID=P.ID) and (R.TOTAL>0)');
         ibsGen_ID.SQL.Add('order by 1');
         ibsGen_ID.ExecQuery;
         While not (ibsGen_ID.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGen_ID.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGen_ID.FieldByName('ID').AsInteger;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.IType := 1;
           ibsGen_ID.Next
          End;
         ibsGen_ID.Close
        End;
    2 : Begin
         ibsGen_ID.SQL.Add('select distinct P.ID, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME NAME');
         ibsGen_ID.SQL.Add('from PERSONS P, REMAINS R');
         ibsGen_ID.SQL.Add('where (P.IS_DRIVER=1) and (R.STORE_TYPE=2) and');
         ibsGen_ID.SQL.Add('(R.STORE_ID=P.ID) and (R.TOTAL>0)');
         ibsGen_ID.SQL.Add('order by 1');
         ibsGen_ID.ExecQuery;
         While not (ibsGen_ID.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGen_ID.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGen_ID.FieldByName('ID').AsInteger;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.IType := 2;
           ibsGen_ID.Next
          End;
         ibsGen_ID.Close
        End;
    3 : Begin
         ibsGen_ID.SQL.Add('select distinct AU.ID, AM.NAME||'#39' '#39'||AU.STATE_NUMBER NAME');
         ibsGen_ID.SQL.Add('from AUTOMOBILES AU, AUTOMOBILE_MAKES AM, REMAINS R');
         ibsGen_ID.SQL.Add('where (AU.AUTOMOBILE_MAKE_ID=AM.ID) and (R.STORE_TYPE=3) and');
         ibsGen_ID.SQL.Add('(R.STORE_ID=AU.ID) and (R.TOTAL>0)');
         ibsGen_ID.SQL.Add('order by 1');
         ibsGen_ID.ExecQuery;
         While not (ibsGen_ID.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGen_ID.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGen_ID.FieldByName('ID').AsInteger;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.IType := 3;
           ibsGen_ID.Next
          End;
         ibsGen_ID.Close
        End;
    4 : Begin
         ibsGen_ID.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, count(aa.id) CHIELD_GROUPS_COUNT');
         ibsGen_ID.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
         ibsGen_ID.SQL.Add('((a.id=aa.parent_id) and (aa.item_type=0))');
         ibsGen_ID.SQL.Add('where (a.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') and (a.ITEM_TYPE=0)');
         ibsGen_ID.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, a.GOOD_TYPE');
         ibsGen_ID.SQL.Add('order by a.GOOD_TYPE desc, a.NAME asc');
         ibsGen_ID.ExecQuery;
         While not (ibsGen_ID.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGen_ID.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := (ibsGen_ID.FieldByName('CHIELD_GROUPS_COUNT').AsInteger > 0);
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGen_ID.FieldByName('ID').AsInteger;
           R^.Parent := ibsGen_ID.FieldByName('PARENT_ID').AsInteger;
           R^.IType := 4;
           ibsGen_ID.Next
          End;
         ibsGen_ID.Close
        End
   End
  End
end;

procedure TfrmRemains.fcTreeView1Deletion(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmRemains.fcTreeView1Expanding(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmRemains.fcTreeView1ToggleCheckbox(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode);
var TmpNode, TmpNodeCurrent, TmpNodeOnDate : TfcTreeNode;
    AllChecked : Boolean;
    k : Integer;
begin
 If (fcTreeView1.Items.Count<7) then
  exit;
 TmpNodeCurrent := fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling;
 TmpNodeOnDate := TmpNodeCurrent.GetNextSibling;
 If (Node=TmpNodeCurrent) or (Node=TmpNodeOnDate) then
  Begin
   If (Node=TmpNodeCurrent) then
    Begin
     If (TmpNodeOnDate.Checked<>NOT Node.Checked) then
      TmpNodeOnDate.Checked := NOT Node.Checked
    End
   else
    Begin
     If (TmpNodeCurrent.Checked<>NOT Node.Checked) then
      TmpNodeCurrent.Checked := NOT Node.Checked
    End
  End;
 ibdsMainTotals.Close;
 If (Level=-3) then
  Level := Node.Level;
 If (Node.HasChildren) and NOT (Node.Level<Level) then
  Begin
   TmpNode := Node.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     TmpNode.Checked := Node.Checked;
     TmpNode := Node.GetNextChild(TmpNode)
    End
  End;
 If (Node.Parent<>Nil) and NOT (Node.Level>Level) then
  If (Node.Checked) then
   Begin
    AllChecked := True;
    TmpNode := Node.Parent.GetFirstChild;
    While (TmpNode<>nil) do
     Begin
      AllChecked := AllChecked and TmpNode.Checked;
      TmpNode := TmpNode.GetNextSibling
     End;
    Node.Parent.Checked := True
   End
  else
   Begin
    k := 0;
    TmpNode := Node.Parent.GetFirstChild;
    While (TmpNode<>nil) do
     Begin
      If (TmpNode.Checked) then
       Inc(k);
      TmpNode := TmpNode.GetNextSibling
     End;
    Node.Parent.Checked := (k>0) or (PItemRec(Node.Data)^.IType=4)
   End;
 If (Level=Node.Level) then
  Level := -3
end;

procedure TfrmRemains.fcTreeView1CalcNodeAttributes(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode; State: TfcItemStates);
var TmpNode : TfcTreeNode;
    ExistGrayed : Boolean;
begin
 If (Node.HasChildren) and (Node.Checked) then
  Begin
   ExistGrayed := False;
   TmpNode := Node.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     ExistGrayed := ExistGrayed or TmpNode.Grayed or NOT TmpNode.Checked;
     TmpNode := Node.GetNextChild(TmpNode)
    End;
   Node.Grayed := ExistGrayed
  End
 else
  Node.Grayed := False
end;

procedure TfrmRemains.sbRefreshRemainsClick(Sender: TObject);
 var k : Integer;
     MainNode, TmpNode : TfcTreeNode;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('delete from USERS_SELECT where USER_NAME=current_user and TABLE_ID in (0,1,2,3,4)');
// 0 - Склад
// 1 - Подотчетнки
// 2 - Водители
// 3 - Автомобили
// 4 - Артикулы
 ibsGen_ID.ExecQuery;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('insert into USERS_SELECT (TABLE_ID, ITEM_ID) values (:TABLE_ID, :ITEM_ID)');
 ibsGen_ID.GenerateParamNames := True;
 If (fcTreeView1.Items[0].Checked) then
  Begin
   ibsGen_ID.ParamByName('TABLE_ID').AsInteger := 0;
   ibsGen_ID.ParamByName('ITEM_ID').AsInteger := 0;
   ibsGen_ID.ExecQuery
  End;
 MainNode := fcTreeView1.Items[0];
 If ((fcTreeView1.Items[1].HasChildren) or
     (fcTreeView1.Items[1].GetNextSibling.HasChildren) or
     (fcTreeView1.Items[1].GetNextSibling.GetNextSibling.HasChildren)) then
  Begin
   For k := 1 to 3 do
    Begin
     MainNode := MainNode.GetNextSibling;
     If (MainNode.Checked) then
      Begin
       ibsGen_ID.ParamByName('TABLE_ID').AsInteger := k;
       If (Level=-3) then
        Level := MainNode.Level;
       If NOT (MainNode.Level<Level) then
        Begin
         TmpNode := MainNode.GetFirstChild;
         While (TmpNode<>nil) do
          Begin
           If (TmpNode.Checked) then
            Begin
             ibsGen_ID.ParamByName('ITEM_ID').AsInteger := PItemRec(TmpNode.Data)^.ID;
             ibsGen_ID.ExecQuery
            End;
           TmpNode := MainNode.GetNextChild(TmpNode)
          End
        End;
       If (Level=MainNode.Level) then
        Level := -3
      End
    End
  End;
  MainNode := fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling;
  ibsGen_ID.ParamByName('TABLE_ID').AsInteger := 4;
  If (Level=-3) then
   Level := MainNode.Level;
  If NOT (MainNode.Level<Level) then
   Begin
    TmpNode := MainNode.GetFirstChild;
    While (TmpNode<>nil) and (TmpNode.Level>Level) do
     Begin
      If (TmpNode.Checked) then
       Begin
        ibsGen_ID.ParamByName('ITEM_ID').AsInteger := PItemRec(TmpNode.Data)^.ID;
        ibsGen_ID.ExecQuery
       End;
      TmpNode := TmpNode.GetNext
     End
   End;
  If (Level=MainNode.Level) then
   Level := -3;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select * from GET_TOTALS(:IN_DATE)');
 ibsGen_ID.GenerateParamNames := True;
 If (fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.Checked) then
  ibsGen_ID.ParamByName('IN_DATE').AsVariant := NULL
 else
  ibsGen_ID.ParamByName('IN_DATE').AsDate := deDateStart.Date;
 ibsGen_ID.ExecQuery;
 ibsGen_ID.Close; 
// try
  trMain.CommitRetaining;
// except
// end;
 GenerateSelectMainTotals;
 GenerateSelectMainDetails;
 ibdsMainTotals.Open
end;

procedure TfrmRemains.ibdsMainTotalsBeforeClose(DataSet: TDataSet);
begin
 MainTotalsBookMark := ibdsMainTotals.Bookmark
end;

procedure TfrmRemains.GenerateSelectMainTotals;
begin
 ibdsMainTotals.SelectSQL[4] := 'order by'+OrderByMainTotals
end;

procedure TfrmRemains.dbgTotalsCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TwwDBGrid).Tag of
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainTotals);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainDetails)
 End
end;

procedure TfrmRemains.dbgTotalsCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TwwDBGrid).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainTotals);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainDetails)
 End
end;

procedure TfrmRemains.dbgTotalsCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmRemains.dbgTotalsTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TwwDBGrid).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainTotals, (GetKeyState(VK_CONTROL)<0),
                              nil, nil, GenerateSelectMainTotals);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainDetails, (GetKeyState(VK_CONTROL)<0),
                                nil, nil, GenerateSelectMainDetails)
 End
end;

procedure TfrmRemains.GenerateSelectMainDetails;
begin
 ibdsMainDetails.SelectSQL[26] := 'order by'+OrderByMainDetails
end;

procedure TfrmRemains.wwExpandButton1BeforeExpand(Sender: TObject);
begin
 dbgDetails.Width := dbgTotals.Width-wwExpandButton1.Left-29;
 ibdsMainDetails.Open
end;

procedure TfrmRemains.wwExpandButton1AfterCollapse(Sender: TObject);
begin
 ibdsMainDetails.Close
end;

procedure TfrmRemains.fcTreeView1DrawText(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; ARect: TRect; AItemState: TfcItemStates;
  var DefaultDrawing: Boolean);
begin
 deDateStart.Visible := (fcTreeView1.Items[0].DisplayRect(True).Top>=0);
 If (Node=fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling) then
  Begin
   deDateStart.Parent := fcTreeView1;
   SetWindowPos(deDateStart.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right, // left
                     ARect.Top-2, // top
                     deDateStart.Width, // width
                     deDateStart.Height, // height
                     SWP_SHOWWINDOW);
  End
end;

procedure TfrmRemains.fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 If (Node=nil) then
  exit;
 If (Node.DisplayRect(True).Top<=Y) and (Node.DisplayRect(True).Bottom>=Y) and
    (Node.DisplayRect(True).Left<=X) and (Node.DisplayRect(True).Right>=X) then
  Node.Checked := NOT Node.Checked
end;

procedure TfrmRemains.deDateStartEnter(Sender: TObject);
begin
 If NOT (fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.Checked) then
  fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.Checked := True
end;

procedure TfrmRemains.deDateStartChange(Sender: TObject);
begin
 If (fcTreeView1.Items[1].GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.GetNextSibling.Checked) then
  ibdsMainTotals.Close
end;

end.
