unit Like;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, cxDBData, 
  IBDatabase, Db, IBSQL, comctrls, dxBar, cxGridPopupMenu,
  cxGridDBTableView, Menus, cxGridTableView;

type
  TfrmLike = class(TForm)
    trMain: TIBTransaction;
    ibsGen_ID: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure WMGetMinMaxInfo( var Message :TWMGetMinMaxInfo ); message WM_GETMINMAXINFO;
    procedure ExportClick(Sender: TObject);
    procedure NewItemRowSelectorClick(Sender: TObject);
    procedure HeaderAutoHeightClick(Sender: TObject);
    procedure CellAutoHeightClick(Sender: TObject);
    procedure ShowPreView(Sender: TObject);
  public
    { Public declarations }
   FName : String;
  end;

var
  frmLike: TfrmLike;

implementation

uses Main, Misk, DM, ExportOptions;

{$R *.DFM}

procedure TfrmLike.WMGetMinMaxInfo(var Message :TWMGetMinMaxInfo );
 var R: TRect;
begin
 With Message.MinMaxInfo^ do
  Begin
   SystemParametersInfo(SPI_GETWORKAREA,0,@R,0);
   ptMaxSize.X := R.Right-R.Left;
   ptMaxPosition.X := 0;
   ptMaxSize.Y := R.Bottom-frmMain.BoundsRect.Bottom;
   ptMaxPosition.Y := frmMain.BoundsRect.Bottom-R.Top
  end;
 Message.Result := 0;
 Inherited;
end;

procedure TfrmLike.FormCreate(Sender: TObject);
 var tmpBtn : TdxBarButton;
     MemStream : TMemoryStream;
     Form_Params : TForm_Params;
     k : Integer;
     FMenuItem: TMenuItem;
begin
 tmpBtn := TdxBarButton.Create(frmMain);
 With tmpBtn do
  Begin
   Caption := FName;
   Hint := FName;
   ButtonStyle := bsChecked;
   PaintStyle := psCaption;
   Tag := Integer(Sender);  {store form in button's tag }
   OnClick := frmMain.TaskBarClick;
   GroupIndex := 1;
   AllowAllUp := False;
   Down := True;
   frmMain.dxBarManager.Bars[2].LockUpdate := True;
   frmMain.dxBarManager.Bars[2].ItemLinks.Add.Item := tmpBtn;
   frmMain.dxBarManager.Bars[2].LockUpdate := False
  end;
 trMain.DefaultDatabase := nil;
 trMain.AddDatabase(frmDM.dbMain);
 trMain.Active := True;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select UT.TUNING from USERS_TUNINGS UT where (UT.USER_NAME=current_user) and (UT.ITEM_NAME=:ITEM_NAME)');
 ibsGen_ID.GenerateParamNames := True;
 ibsGen_ID.ParamByName('ITEM_NAME').Value := (Sender as TForm).Name;
 ibsGen_ID.ExecQuery;
 If (ibsGen_ID.RecordCount>0) then
  Begin
   MemStream := TMemoryStream.Create;
   ibsGen_ID.FieldByName('TUNING').SaveToStream(MemStream);
   MemStream.Position := 0;
   MemStream.Read(Form_Params,SizeOf(Form_Params));
   MemStream.Free;
   If (Form_Params.Left<Screen.Width-10) then
    (Sender as TForm).Left := Form_Params.Left
   else
    (Sender as TForm).Left := (Screen.Width-Width) div 2;
   If (Form_Params.Top<Screen.Height-10) then
    (Sender as TForm).Top := Form_Params.Top
   else
    (Sender as TForm).Top := frmMain.BoundsRect.Bottom;
   If (Form_Params.Width>10) and (Form_Params.Width<=Screen.Width+20) then
    (Sender as TForm).Width := Form_Params.Width;
   If (Form_Params.Height>10) and (Form_Params.Height<=Screen.Height+20) then
    (Sender as TForm).Height := Form_Params.Height;
   (Sender as TForm).WindowState := Form_Params.State
  End
 else
  Begin
   (Sender as TForm).Left := (Screen.Width-Width) div 2;
   (Sender as TForm).Top := frmMain.BoundsRect.Bottom
  End;
 ibsGen_ID.Close;
 For k := 0 to Pred(ComponentCount) do
  Begin
   If (Components[k] is TcxGridPopupMenu) then
    Begin
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Панель ввода новой строки';
     If ((Components[k] as TcxGridPopupMenu).Grid.ActiveView<>nil) then
      Begin
       FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.NewItemRow;
      End;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := NewItemRowSelectorClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты заголовков столбцов';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.HeaderAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := HeaderAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты строк';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.CellAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := CellAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Показывать строку комментариев';
     If ((Components[k] as TcxGridPopupMenu).Grid.ActiveView<>nil) then
      Begin
       FMenuItem.Checked := (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Column<>Nil) and (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Visible);
      End;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := ShowPreView;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create((Components[k] as TcxGridPopupMenu));
     FMenuItem.Caption := 'Экспорт';
     FMenuItem.OnClick := ExportClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem)
    End;
   If (Components[k] is TcxGridDBTableView) then
    With (Components[k] as TcxGridDBTableView) do
     Begin
      OptionsView.NewItemRowInfoText := 'Новая запись вставляется тут!';
      ibsGen_ID.ParamByName('ITEM_NAME').Value := Name;
      ibsGen_ID.ExecQuery;
      If (ibsGen_ID.RecordCount>0) then
       Begin
        MemStream := TMemoryStream.Create;
        ibsGen_ID.FieldByName('TUNING').SaveToStream(MemStream);
        MemStream.Position := 0;
        RestoreFromStream(MemStream);
        MemStream.Free
       End;
      ibsGen_ID.Close;
      ibsGen_ID.ParamByName('ITEM_NAME').Value := Name+'/Filter';
      ibsGen_ID.ExecQuery;
      If (ibsGen_ID.RecordCount>0) then
       Begin
        MemStream := TMemoryStream.Create;
        ibsGen_ID.FieldByName('TUNING').SaveToStream(MemStream);
        MemStream.Position := 0;
        DataController.Filter.LoadFromStream(MemStream);
        MemStream.Free
       End;
      ibsGen_ID.Close
     End;
  End;
 trMain.Commit;

{ If (PersonID<>0) then
  Begin
   trMain.StartTransaction;
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select FIELD_NAME, DISPLAY_LABEL, DISPLAY_WIDTH, FIELD_ORDER, IS_SHOWING from GRIDS_SETUP');
   ibsGridsSetup.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsGridsSetup.ExecQuery;
   While NOT (ibsGridsSetup.Eof) do
    Begin
     For k := 0 to Pred(ComponentCount) do
      If (Components[k].Name=ibsGridsSetup.FieldByName('FIELD_NAME').AsString) then
       Begin
        (Components[k] as TField).DisplayLabel := ibsGridsSetup.FieldByName('DISPLAY_LABEL').AsString;
        (Components[k] as TField).DisplayWidth := ibsGridsSetup.FieldByName('DISPLAY_WIDTH').AsInteger;
        (Components[k] as TField).Index := ibsGridsSetup.FieldByName('FIELD_ORDER').AsInteger;
        (Components[k] as TField).Visible := (ibsGridsSetup.FieldByName('IS_SHOWING').Value=1);
        Break
       End;
     ibsGridsSetup.Next
    End;
   trMain.Commit
  End;}
end;

procedure TfrmLike.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree
end;

procedure TfrmLike.FormActivate(Sender: TObject);
 var i : Integer;
begin
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For i := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[i].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Down := True;
      Break
     End
end;

procedure TfrmLike.FormDestroy(Sender: TObject);
 var k : Integer;
     Form_Params : TForm_Params;
     MemStream : TMemoryStream;
begin
 ibsGen_ID.Close;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('execute procedure SET_USER_TUNING(:ITEM_NAME,:TUNING)');
 ibsGen_ID.GenerateParamNames := True;
 Form_Params.Left := (Sender as TForm).Left;
 Form_Params.Top := (Sender as TForm).Top;
 Form_Params.Width := (Sender as TForm).Width;
 Form_Params.Height := (Sender as TForm).Height;
 Form_Params.State := (Sender as TForm).WindowState;
 MemStream := TMemoryStream.Create;
 MemStream.Write(Form_Params,SizeOf(Form_Params));
 MemStream.Position := 0;
 ibsGen_ID.ParamByName('ITEM_NAME').AsString := (Sender as TForm).Name;
 ibsGen_ID.ParamByName('TUNING').LoadFromStream(MemStream);
 MemStream.Free;
 ibsGen_ID.ExecQuery;
 For k := 0 to Pred(ComponentCount) do
  If (Components[k] is TcxGridDBTableView) then
   With (Components[k] as TcxGridDBTableView) do
    Begin
     MemStream := TMemoryStream.Create;
     StoreToStream(MemStream);
     MemStream.Position := 0;
     ibsGen_ID.ParamByName('ITEM_NAME').AsString := Name;
     ibsGen_ID.ParamByName('TUNING').LoadFromStream(MemStream);
     MemStream.Free;
     ibsGen_ID.ExecQuery;
     MemStream := TMemoryStream.Create;
     DataController.Filter.SaveToStream(MemStream);
     MemStream.Position := 0;
     ibsGen_ID.ParamByName('ITEM_NAME').AsString := Name+'/Filter';
     ibsGen_ID.ParamByName('TUNING').LoadFromStream(MemStream);
     MemStream.Free;
     ibsGen_ID.ExecQuery
    End;
 trMain.Commit;
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For k := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[k].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Free;
      Break
     End
end;

procedure TfrmLike.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 If (MessageDlg('Закрыть эту форму?',mtConfirmation,[mbOK,mbCancel],0)<>mrOK) then
  CanClose := False
end;

procedure TfrmLike.ExportClick(Sender: TObject);
begin
 frmExportOptions := TfrmExportOptions.Create((Sender as TMenuItem).Owner.Owner);
 frmExportOptions.AGrid := ((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid;
 frmExportOptions.ShowModal;
 FreeAndNil(frmExportOptions)
end;

procedure TfrmLike.NewItemRowSelectorClick(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.ActiveView as TcxGridDBTableView) do
  Begin
   If (OptionsData.Appending or OptionsData.Inserting) then
    (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.ActiveView as TcxGridDBTableView).OptionsView.NewItemRow := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

procedure TfrmLike.HeaderAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.ActiveView as TcxGridDBTableView).OptionsView.HeaderAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.CellAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.ActiveView as TcxGridDBTableView).OptionsView.CellAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.ShowPreView(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView) do
  Begin
   If (Preview.Column<>Nil) then
    Preview.Visible := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

end.
