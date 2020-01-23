unit Misk;

interface

uses Windows, Registry, Classes, IBServices, SysUtils, Buttons, DB, wwdbigrd, wwDBGrid,
     IBCustomDataSet, Dialogs, Forms, Controls, Graphics, StrUtils,
     Grids, Menus, IBSQL, IBDataBase, cxGridDBTableView, cxGraphics, dxBarExtItems,
     cxGridTableView, cxCustomData, cxClasses, LbCipher, LbString, dxBarStrs,
     cxGridPopUpMenuConsts, cxGridStrs, cxFilterConsts, cxEditConsts, cxFilterControlStrs;

type
 TObjProcedure = procedure of object;
 TForm_Params = Record
   Left   : Integer;
   Top    : Integer;
   Width  : Integer;
   Height : Integer;
   State  : TWindowState;
 end;

const
  prro = $396A3CC6;

var
  GenPswd, UserName, Password : String;
  PersonID, Nakl_ID, StoreCard_ID : Integer;
  DefParams : TStrings;
  UserID : Integer;
  ColorGroups : TColor = $009EE1FE;
  ColorWorks : TColor = $00FFE49D;
  ColorGoods : TColor = clWindow;
  ColorUnModify : TColor = $00A6C8F0;
  ColorTyres : TColor = $0014A8F8;
  ColorAccumulators : TColor = $00B7FFFF;
  ColorUse100 : TColor = clRed;
  TempIn_Out, TmpGoodType : Integer;
  WorkDayLength : Integer = 8;

function GetPaths(var Path1, Path2, Path3 : String): Boolean;
procedure GetServer(var ServerName : String; var Protocol : TProtocol);
function MyUpCase(Ch : Char): Char;
function FieldPos(FieldName: String; SelectSQL: TStrings): String;
function FieldPosNumber(FieldPosRes, OrderBy: String): String;
procedure wwDBGridCalcTitleAttributes(Sender: TObject;
  AFieldName, AFieldNameReal: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment; OrderBy: String);
procedure wwDBGridTitleButtonClick(Sender: TObject; AFieldName: String;
                                   var OrderBy : String; Ctrl : Boolean;
                                   sbApply, sbCancel : TSpeedButton;
                                   GenerateSelect : TObjProcedure);
procedure wwDBGridCalcTitleImage(Sender: TObject; Field: TField;
                                 var TitleImageAttributes: TwwTitleImageAttributes;
                                 OrderBy : String);
procedure ibdsAfterScroll(DataSet: TDataSet; Form: TForm; Suf: String);
function GetStartDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
function GetStopDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
function ReplaceDateStr(InStr: String; Date: TDateTime): String;
procedure wwDBGridCalcCellColors2(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
procedure wwDBGridCalcCellColors3(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
function GeneratePrice(BasePrice: Double; PriceFormula: String; Percent: Double; GetNSP: Integer; NSP: Double): Double;
procedure sbPrintClick(Sender: TComponent; ibsAux: TIBSQL; ibDataSet : TIBDataSet);
function CurrencyToStr (nSum : Longint; cTxt1,cTxt2,cTxt3 : String; nTypeWrite : Byte) : String;
procedure SetUserSelect(trMain : TIBTransaction; ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID : Integer);
procedure ReadUserSelect(ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID : Integer);
procedure GridDBTableViewCustomDrawColumnHeader(Sender: TcxGridDBTableView;
          ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo);
function ReplaceStr(const S, Srch, Replace: string): string;
{ Returns string with every occurrence of Srch string replaced with
  Replace string. }
procedure AnsiLCase(var Source:AnsiString;const Index,Count:Integer);
procedure FlashMsg(const Title,Msg:AnsiString; TOut:Integer);
function  iMax(const I,J:Integer):Integer;
function GetNewID(ibsGen_ID: TIBSQL; Gen_Name: String): Integer;
procedure PostIfNeeded(IBDataSet: TIBDataSet);
function GetPassword(lblText : String; var Password : String) : Boolean;
//procedure LocaliseDevEx;
procedure SetUpRegionalSettings;
function MyInputQuery(FormCaption, LabelCaption, InputMask : String; var Value : Integer) : Boolean;

implementation

uses Main, EnterPassword, InputQuery;

function GetPaths(var Path1, Path2, Path3 : String): Boolean ;
var
 Reg: TRegistry;
begin
 Result := False;
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 If (Reg.KeyExists('\Software\WizardSoft\Wizard FireWork\SetUp')) then
  Begin
   Reg.OpenKey('\Software\WizardSoft\Wizard FireWork\SetUp',False);
   If (Reg.ValueExists('Path1')) then
    Begin
     Result := True;
     Path1 := Reg.ReadString('Path1');
     Path2 := Reg.ReadString('Path2');
     Path3 := Reg.ReadString('Path3')
    End
  End
 else
  Result := False;
 Reg.Free
End;

procedure GetServer(var ServerName : String; var Protocol : TProtocol);
 var Reg : TRegistry;
     Key256 : TKey256;
     Path : String;
begin
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 Reg.OpenKeyReadOnly('\Software\WizardSoft\Wizard FireWheel\SetUp');
 GenerateLMDKey(Key256, SizeOf(Key256), '����yW��=`��� ��yX�f0��� 845098yhfjb hJLUGLI,. ., **&*^#');
 Path := RDLEncryptStringCBCEx(Reg.ReadString('Path'), Key256, 32, False);
 Reg.Free;
 If (Copy(Path,1,2)='\\') then
  Begin
   ServerName := Copy(Path,3,Pred(Pos(':',Path)));
   Protocol := NamedPipe
  End
 else
  If (Copy(Path,2,2)=':\') then
   Begin
    ServerName := '';
    Protocol := Local
   End
  else
   Begin
    ServerName := Copy(Path,1,Pred(Pos(':',Path)));
    Protocol := TCP
   End
End;

function MyUpCase(Ch: Char): Char;
Begin
 If Ch in ['a'..'z'] then Ch := UpCase(Ch);
 If Ord(Ch) in [224..255] then Ch := Chr(Ord(Ch)-32);
 Result := Ch
End;

function FieldPos(FieldName: String; SelectSQL: TStrings): String;
 var SqlStr, S : String;
     k, kk : Integer;
Begin
 SqlStr :='';
 For k := 0 to Pred(SelectSQL.Count) do
  SqlStr := SqlStr+' '+Trim(SelectSQL[k])+' ';
 If (Pos('distinct',SqlStr)=0) then
  SqlStr := Copy(SqlStr,8,Pos(' from ',SqlStr)-7)
 else
  SqlStr := Copy(SqlStr,Pos(' distinct ',SqlStr)+11,Pos(' from ',SqlStr)-Pos(' distinct ',SqlStr)+10);
 SqlStr := Trim(SqlStr)+',';
 S := '';
 kk := 1;
 While (Length(SqlStr)>0) do
  Begin
   S := Trim(Copy(SqlStr,1,Pos(',',SqlStr)));
   If (CompareText(Copy(S,Length(S)-Length(FieldName),Length(FieldName)),FieldName)=0) and
      ((S[Length(S)-Length(FieldName)-1] in [' ','.',',']) or (Length(S)=Succ(Length(FieldName)))) then
    Break;
   SqlStr := Copy(SqlStr,Succ(Pos(',',SqlStr)),Length(SqlStr)-Pos(',',SqlStr));
   Inc(kk)
  End;
 Result := IntToStr(kk)
End;

procedure wwDBGridTitleButtonClick(Sender: TObject; AFieldName: String;
                                   var OrderBy : String; Ctrl : Boolean;
                                   sbApply, sbCancel : TSpeedButton;
                                   GenerateSelect : TObjProcedure);
 var BookMark : TBookMarkStr;
     Field : TField;
     FieldPosRes, PreStr, PastStr : String;
begin
 try
  Field := ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName)
 except
  exit
 end;
 If (AFieldName <> '') and (Field.FieldKind=fkData) then
  Begin
   If (sbApply<>nil) and (sbApply.Enabled) then
    Case MessageDlg('������� ������������� ���������. ���������?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
     mrYes: sbApply.Click;
     mrNo: sbCancel.Click;
     mrCancel: Exit
    End;
   BookMark := ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).BookMark;
   ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Close;
   FieldPosRes := FieldPos(AFieldName,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
   If (Ctrl) then
    Begin
     If (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
      Begin
       If (Pos(' '+FieldPosRes+' ',OrderBy)=1) then
        PreStr := ''
       else
        PreStr := Copy(OrderBy,1,Pos(' '+FieldPosRes+' ',OrderBy));
       OrderBy := Copy(OrderBy,Pos(' '+FieldPosRes+' ',OrderBy),Length(OrderBy)-Pos(' '+FieldPosRes+' ',OrderBy)+1);
       If (Pos(',',OrderBy)=0) then
        PastStr := ''
       else
        Begin
         PastStr := Copy(OrderBy,Pos(',',OrderBy),Length(OrderBy)-Pos(',',OrderBy)+1);
         OrderBy := Copy(OrderBy,1,Pos(',',OrderBy)-1)
        End;
       If (Pos('asc',OrderBy)>0) then
        OrderBy := ' '+FieldPosRes+' desc'
       else
        OrderBy := ' '+FieldPosRes+' asc';
       OrderBy := PreStr+OrderBy+PastStr
      End
     else
      Begin
       If (OrderBy<>'') then
        OrderBy := OrderBy+', '+FieldPosRes+' asc'
       else
        OrderBy := ' '+FieldPosRes+' asc';
      End
    end
   else
    Begin
     If (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
      If (Pos('asc',OrderBy)>0) then
       OrderBy := ' '+FieldPosRes+' desc'
      else
       OrderBy := ' '+FieldPosRes+' asc'
     else
      OrderBy := ' '+FieldPosRes+' asc';
    End;
   GenerateSelect;
   ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Open;
   try
    ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).BookMark := BookMark
   except
   end 
  End
end;

procedure wwDBGridCalcTitleImage(Sender: TObject; Field: TField;
                                 var TitleImageAttributes: TwwTitleImageAttributes;
                                 OrderBy : String);
var FieldPosRes, PartOrderBy : String;
begin
 TitleImageAttributes.ImageIndex := -1;
 FieldPosRes := FieldPos(Field.FieldName,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
 If (Field <> nil) and (((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Active) and
    (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
  Begin
   PartOrderBy := Copy(OrderBy,Pos(' '+FieldPosRes+' ',OrderBy),Length(OrderBy)-Pos(' '+FieldPosRes+' ',OrderBy)+1);
   If (Pos(',',PartOrderBy)<>0) then
    PartOrderBy := Copy(PartOrderBy,1,Pos(',',PartOrderBy)-1);
   If (Pos('asc',PartOrderBy)>0) then
    TitleImageAttributes.ImageIndex := 0
   else
    TitleImageAttributes.ImageIndex := 1;
  End
end;

function FieldPosNumber(FieldPosRes, OrderBy: String): String;
 var k : Integer;
begin
 Result := '';
 OrderBy := OrderBy+',';
 k := 0;
 While (Length(OrderBy)>0) do
  Begin
   Inc(k);
   If (Pos(' '+FieldPosRes+' ',Copy(OrderBy,1,Pred(Pos(',',OrderBy))))>0) then
    Begin
     If (Copy(OrderBy,Succ(Pos(',',OrderBy)),Length(OrderBy)-Pos(',',OrderBy))<>'') or (k>1) then
      Result := IntToStr(k)+': ';
     Break
    End;
   OrderBy := Copy(OrderBy,Succ(Pos(',',OrderBy)),Length(OrderBy)-Pos(',',OrderBy))
  End
end;

procedure wwDBGridCalcTitleAttributes(Sender: TObject;
  AFieldName, AFieldNameReal: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment; OrderBy: String);
 var FieldPosRes, Number : String;
begin
 FieldPosRes := FieldPos(AFieldNameReal,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
 Number := FieldPosNumber(FieldPosRes, OrderBy);
 If (((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Active) and
     (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
  Begin
   If ((Sender as TwwDBGrid).UseTFields) then
    Begin
     If (Number='') or (Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,1,Length(Number))<>Number) then
      Begin
       If (Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)>0) then
        Begin
         ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)+2,Length(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-1);
        End;
       If (Number<>'') then
        ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Number+((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel
      End
    End
   else
    If (Number='') or (Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,1,Length(Number))<>Number) then
     Begin
      If (Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)>0) then
       Begin
       (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)+2,Length((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-1)
       End;
      If (Number<>'') then
       (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Number+(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel
     End
  End
 else
  If (Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)>0) then
   Begin
     If ((Sender as TwwDBGrid).UseTFields) then
      ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)+2,Length(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-1)
     else
      (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)+2,Length((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-1)
   End
end;

procedure ibdsAfterScroll(DataSet: TDataSet; Form: TForm; Suf: String);
 var ki : Integer;
begin
 If (Form<>nil) then
  For ki :=0 to Pred(Form.ComponentCount) do
   If (Form.Components[ki] is TSpeedButton) then
    If (Form.Components[ki].Name='sbFirst'+Suf) or (Form.Components[ki].Name='sbPrior'+Suf) then
     (Form.Components[ki] as TControl).Enabled := Not DataSet.Bof
    else
     If (Form.Components[ki].Name='sbNext'+Suf) or (Form.Components[ki].Name='sbLast'+Suf) then
      (Form.Components[ki] as TControl).Enabled := Not DataSet.EOF
     else
     If (Form.Components[ki].Name='sbDelete'+Suf) then
      (Form.Components[ki] as TControl).Enabled := Not (DataSet.Bof and DataSet.Eof)
end;

function GetStartDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
 var Year, Month, Day : Word;
begin
 Case Number_Restart_Period of
  0 : Result := 0;
  1 : Result := Date;
  2 : Result := Date-DayOfWeek(Date)+2;
//3 :
  4 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year,Month,1)
      End;
//5 :
  6 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year,1,1)
      End
 end
end;

function GetStopDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
 var Year, Month, Day : Word;
begin
 Case Number_Restart_Period of
  0 : Result := EncodeDate(2100,12,30);
  1 : Result := Date;
  2 : Result := Date+9-DayOfWeek(Date);
//3 :
  4 : Begin
       DecodeDate(Date,Year,Month,Day);
       If (Month=12) then
        Result := EncodeDate(Year+1,1,1)
       else
        Result := EncodeDate(Year,Month+1,1)
      End;
//5 :
  6 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year+1,1,1)
      End
 end
end;

function ReplaceDateStr(InStr: String; Date: TDateTime): String;
Begin
 Result := ReplaceStr(InStr,'��',FormatDateTime('dd',Date));
 Result := ReplaceStr(Result,'��',FormatDateTime('mm',Date));
 Result := ReplaceStr(Result,'����',FormatDateTime('yyyy',Date));
 Result := ReplaceStr(Result,'��',FormatDateTime('yy',Date))
End;

procedure wwDBGridCalcCellColors2(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If NOT (Highlight) then
  If (Field.CanModify) then
   ABrush.Color := clWindow
  else
   ABrush.Color := ColorUnModify
end;

procedure wwDBGridCalcCellColors3(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If NOT (Highlight) then
  Begin
   AFont.Style := [];
   ABrush.Color := clWindow;
  End
end;

function GeneratePrice(BasePrice: Double; PriceFormula: String; Percent: Double; GetNSP: Integer; NSP: Double): Double;
begin
 Result := BasePrice*(1+Percent/100)*(1+GetNSP*NSP/100)
end;

procedure sbPrintClick(Sender: TComponent; ibsAux: TIBSQL; ibDataSet : TIBDataSet);
 var PopUpMenu : TPopupMenu;
     MenuItem : TMenuItem;
     k : Integer;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select R.ID, R.REPORT_NAME');
 ibsAux.SQL.Add('from REPORTS R, REPORTS_SHOING RS');
 ibsAux.SQL.Add('where (R.ID=RS.REPORT_ID) and (RS.BUTTON_NAME='#39+ibsAux.Owner.Name+'/'+Sender.Name+'/'+IntToStr(Sender.Tag)+#39') order by 2');
 PopUpMenu := TPopupMenu.Create(Sender);
 ibsAux.ExecQuery;
 While NOT (ibsAux.Eof) do
  Begin
   MenuItem := TMenuItem.Create(PopUpMenu);
   MenuItem.Caption := ibsAux.FieldByName('REPORT_NAME').AsString;
   MenuItem.Tag := ibsAux.FieldByName('ID').AsInteger;
   MenuItem.OnClick := frmMain.PopUpPrintMenuItemClick;
   PopUpMenu.Items.Add(MenuItem);
   ibsAux.Next
  End;
 ibsAux.Close;
 MenuItem := TMenuItem.Create(PopUpMenu);
 MenuItem.Caption := '-';
 PopUpMenu.Items.Add(MenuItem);
 MenuItem := TMenuItem.Create(PopUpMenu);
 MenuItem.Caption := '������� �����';
 MenuItem.OnClick := frmMain.PopUpPrintMenuItemClick;
 PopUpMenu.Items.Add(MenuItem);
 PopUpMenu.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 frmMain.frReport.Dictionary.DisabledDatasets.Clear;
 frmMain.frReport.Dictionary.DisabledDatasets.Add('frmDM.ibdsReport');
 frmMain.frReport.Dictionary.DisabledDatasets.Add('frmDM.ibdsShow');
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TForm) then
   If (ibDataset=nil) or (ibDataset.Owner<>(frmMain.Components[k] as TForm)) then
    frmMain.frReport.Dictionary.DisabledDatasets.Add((frmMain.Components[k] as TForm).Name+'*');
 If (ibDataset=nil) then
  frmMain.frReport.Dataset := nil
 else
  frmMain.frReport.Dataset := frmMain.frDBDataSet;
 frmMain.frDBDataSet.DataSet := ibDataSet
end;

//-----------------------------------------------------------------------//
// ���������� : ���������� ����� ��������
// ��������� :
// nSum : 		�����, ������� ����� ���������� � �������
// cTxt1 :  		������� ���������, ��������: �����
// cTxt2 :  		������� ���������, ��������: �����
// cTxt3 :  		������� ���������, ��������: ������
// nTypeWrite : 	��� ������� ��������� (1-���, 2-���)
//
function CurrencyToStr (nSum : Longint; cTxt1,cTxt2,cTxt3 : String; nTypeWrite : Byte) : String;
Var aTxtMeasure,aTxtThousand,aTxtMillion,aTxtBillion,aTxtTrillion : array [1..3] of String;
    aTxtHundred, aTxtTen, aTxtExclude : array [0..9] of String;
    aTxtOne : array [0..9,1..2] of String;
    aTxtSum, aTextInWords : array [1..5] of String;
    nPos, nPos2, nTypeAddition : Integer;
    cSum, cText : String;
 Begin
 //------------------------------------���������� ��������� ������������-------------------------
 //������� ��������� ������������

 aTxtMeasure[1] := cTxt1;
 aTxtMeasure[2] := cTxt2;
 aTxtMeasure[3] := cTxt3;
 //������
 aTxtThousand[1] := '������';
 aTxtThousand[2] := '������';
 aTxtThousand[3] := '�����';
 //��������
 aTxtMillion[1] := '�������';
 aTxtMillion[2] := '��������';
 aTxtMillion[3] := '���������';
 //��������
 aTxtBillion[1] := '��������';
 aTxtBillion[2] := '���������';
 aTxtBillion[3] := '����������';
 //���������
 aTxtTrillion[1] := '��������';
 aTxtTrillion[2] := '���������';
 aTxtTrillion[3] := '����������';

 //--------------------------------���������� ������� ��������� �����-------------------------
 //������ �������� 0-9 � ������
 aTxtHundred[0] := '';
 aTxtHundred[1] := '���';
 aTxtHundred[2] := '������';
 aTxtHundred[3] := '������';
 aTxtHundred[4] := '���������';
 aTxtHundred[5] := '�������';
 aTxtHundred[6] := '��������';
 aTxtHundred[7] := '�������';
 aTxtHundred[8] := '���������';
 aTxtHundred[9] := '���������';
 //������ �������� 0-9 � ��������
 aTxtTen[0] := '';
 aTxtTen[1] := '';
 aTxtTen[2] := '��������';
 aTxtTen[3] := '��������';
 aTxtTen[4] := '�����';
 aTxtTen[5] := '���������';
 aTxtTen[6] := '����������';
 aTxtTen[7] := '���������';
 aTxtTen[8] := '�����������';
 aTxtTen[9] := '���������';
 //������ �������� ����� 10-19
 aTxtExclude[0] := '������';
 aTxtExclude[1] := '�����������';
 aTxtExclude[2] := '����������';
 aTxtExclude[3] := '����������';
 aTxtExclude[4] := '������������';
 aTxtExclude[5] := '����������';
 aTxtExclude[6] := '�����������';
 aTxtExclude[7] := '����������';
 aTxtExclude[8] := '������������';
 aTxtExclude[9] := '������������';
 //������ �������� 0-9 ��� ������ (��� �������� ��� �������� � �������� ����)
 aTxtOne[0,1]:= '';
 aTxtOne[1,1] := '����';
 aTxtOne[2,1] := '���';
 aTxtOne[3,1] := '���';
 aTxtOne[4,1] := '������';
 aTxtOne[5,1] := '����';
 aTxtOne[6,1] := '�����';
 aTxtOne[7,1] := '����';
 aTxtOne[8,1] := '������';
 aTxtOne[9,1] := '������';
 aTxtOne[0,2] := '';
 aTxtOne[1,2] := '����';
 aTxtOne[2,2] := '���';
 For nPos:=3 to 9 do aTxtOne[nPos,2] := aTxtOne[nPos,1];

 //������� ������ ����������� ����� �� �������
 // 1 - �������
 // 2 - ������
 // 3 - ��������
 // 4 - ���������
 // 5 - ���������
 // aTxtSum[5]
 //��������� ����� � �������� ��� ������
 cSum := IntToStr(nSum);
 //��������� ����� �� ����������� ����� � �������� �� � ������
 For nPos:=1 to 5 do
  For nPos2:=1 to 3 do
   If ((Pred(nPos)*3+nPos2)<=Length(cSum)) then
    aTxtSum[nPos] := cSum[Length(cSum)-(Pred(nPos)*3+Pred(nPos2))]+aTxtSum[nPos]
   Else
    aTxtSum[nPos] := '0'+aTxtSum[nPos];

 //������� ������ ������� �� ����������� ������:
 // 1 - �������
 // 2 - ������
 // 3 - ��������
 // 4 - ���������
 // 5 - ���������
 //������ ��������� �����
 //aTextInWords(5)

 //���� �� ����������� �������
 For nPos:=1 to 5 do
  If (aTxtSum[nPos]='000') then
   aTextInWords[nPos] := ''
  Else
   Begin
    cText := aTxtHundred[StrToInt(aTxtSum[nPos][1])];
    If (aTxtSum[nPos][2]='1') then
     cText := cText+' '+aTxtExclude[StrToInt(aTxtSum[nPos][3])]
    Else
     Begin
      cText := cText+' '+aTxtTen[StrToInt(aTxtSum[nPos][2])];
      If (nPos=2) then
       cText := cText+' '+aTxtOne[StrToInt(aTxtSum[nPos][3]),2]
      Else
       cText := cText+' '+aTxtOne[StrToInt(aTxtSum[nPos][3]),nTypeWrite]
     End;
    //���������� ��� ��������� �����������:
    // 1 = "�����"
    // 2 = "�����"
    // 3 = "������"
    Case aTxtSum[nPos][3] of
     '1'     : nTypeAddition := 1;
     '2'..'4': nTypeAddition := 2;
    Else
     nTypeAddition := 3
    End;
    If (aTxtSum[nPos][2]='1') then nTypeAddition := 3;
    //���������� ��������� ����� ������� ���������
    Case nPos of
     1 : cText := cText+' '+aTxtMeasure[nTypeAddition];
     2 : cText := cText+' '+aTxtThousand[nTypeAddition];
     3 : cText := cText+' '+aTxtMillion[nTypeAddition];
     4 : cText := cText+' '+aTxtBillion[nTypeAddition];
     5 : cText := cText+' '+aTxtTrillion[nTypeAddition]
    End;
    //��������� ������� � ������ ��������� �����
    aTextInWords[nPos] := cText;
   End;
 //�������� ������ ������� � ���� ������
 cText := '';
 For nPos:=5 downto 1 do
  Begin
   If (nPos=1) and (aTxtSum[nPos]='000') then
    aTextInWords[nPos] := aTextInWords[nPos]+aTxtMeasure[3];
   cText := cText+' '+aTextInWords[nPos]
  End;
 //�������� ������ ��������
 While (Pos('  ',cText)>0) do Delete(cText, Pos('  ',cText), 1);
 If (cText[1]=' ') then Delete(cText, 1, 1);
 //������ ������ ������ - ��������� �����
 If (nSum=0) then
  Result := '00 '+aTxtMeasure[3]
 Else
  Begin
   cSum := AnsiUpperCase(cText[1]);
   Delete(cText, 1, 1);
   Result := cSum + cText
  End
End;

procedure SetUserSelect(trMain : TIBTransaction; ibdsList : TIBDataSet;
                        ibsAux : TIBSQL; TableID : Integer);
var BookMark : String;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('insert into USERS_SELECT (TABLE_ID, ITEM_ID) values ('+IntToStr(TableID)+', :ITEM_ID)');
 ibsAux.GenerateParamNames := True;
 BookMark := ibdsList.Bookmark;
 ibdsList.DisableControls;
 ibdsList.First;
 While NOT (ibdsList.Eof) do
  Begin
   If (ibdsList.FieldByName('CHECKED').AsInteger=1) then
    Begin
     ibsAux.ParamByName('ITEM_ID').AsInteger := (ibdsList.FieldByName('ID') as TLargeintField).AsInteger;
     ibsAux.ExecQuery
    End;
   ibdsList.Next
  End;
// try
  trMain.CommitRetaining;
{ except
 end;}
 try
  ibdsList.Bookmark := BookMark
 finally
  ibdsList.EnableControls
 end
end;

procedure ReadUserSelect(ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID : Integer);
var BookMark : String;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select US.ITEM_ID from USERS_SELECT US');
 ibsAux.SQL.Add('where (US.USER_NAME=current_user) and (US.TABLE_ID=:TABLE_ID)');
 ibsAux.GenerateParamNames := True;
 ibsAux.ParamByName('TABLE_ID').AsInteger := TableID;
 ibsAux.ExecQuery;
 BookMark := ibdsList.Bookmark;
 ibdsList.DisableControls;
 While NOT (ibsAux.Eof) do
  Begin
   If (ibdsList.Locate('ID',ibsAux.FieldByName('ITEM_ID').AsString,[])) then
    Begin
     ibdsList.Edit;
     ibdsList.FieldByName('CHECKED').AsInteger := 1;
     ibdsList.Post
    End;
   ibsAux.Next
  End;
 ibsAux.Close;
 try
  ibdsList.Bookmark := BookMark
 finally
  ibdsList.EnableControls
 end
end;

procedure GridDBTableViewCustomDrawColumnHeader(Sender: TcxGridDBTableView;
          ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo);
begin
 If (AViewInfo.Column.SortIndex<>-1) and
    (Pos(IntToStr(Succ(AViewInfo.Column.SortIndex))+': ',AViewInfo.Text)<>1) then
  AViewInfo.Text := IntToStr(Succ(AViewInfo.Column.SortIndex))+': '+AViewInfo.Text
end;

function ReplaceStr(const S, Srch, Replace: string): string;
var
  I: Integer;
  Source: string;
begin
  Source := S;
  Result := '';
  repeat
    I := Pos(Srch, Source);
    if I > 0 then begin
      Result := Result + Copy(Source, 1, I - 1) + Replace;
      Source := Copy(Source, I + Length(Srch), MaxInt);
    end
    else Result := Result + Source;
  until I <= 0;
end;

procedure AnsiLCase(var Source:AnsiString;const Index,Count:Integer);
  {Lower case Count characters in Source starting at Index considering
   Windows locale.}
var
  I:Integer;
begin
  if (Index<1) or (Index>Length(Source)) then Exit;
  I:=Length(Source)-Index+1;
  if (Count>0) AND (I>Count) then I:=Count;
  UniqueString(Source);
  CharLowerBuff(@Source[Index],I);
end;

procedure FlashMsg(const Title,Msg:AnsiString; TOut:Integer);
  {Dynamically create a timed message display form.}
var
  I,J:Integer;
begin
  with TForm.Create(Application) do begin
    Name := 'EFD_Msg';
    Caption := Title;
    Position := poScreenCenter;
    BorderStyle := bsDialog;
    FormStyle := fsStayOnTop;
    BorderIcons := [];
    Height := 64;
    I := Canvas.TextWidth(Msg);
    J := Canvas.TextHeight(Msg);
    Height := 5*J;
    Width := iMax(128,I + (I Shr 1));
    I := Left+((Width - I ) Shr 1);
    J := Top+J;
    Show;
    Canvas.Brush.Style := bsClear;
    Canvas.TextOut(I,J,Msg);
    I:=GetTickCount+DWord(TOut);
    repeat
      Application.ProcessMessages;
    until GetTickCount>DWord(I);
    Free;
  end;
end;

function  iMax(const I,J:Integer):Integer;
asm
  Cmp   EAX,EDX
  Jge   @Exit
  Mov   EAX,EDX
@Exit:
end;

function GetNewID(ibsGen_ID: TIBSQL; Gen_Name: String): Integer;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id('+Gen_Name+',1) from rdb$database');
 ibsGen_ID.ExecQuery;
 Result := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
 ibsGen_ID.Close
end;

procedure PostIfNeeded(IBDataSet: TIBDataSet);
begin
 If (IBDataSet.State in [dsEdit,dsInsert]) then
  IBDataSet.Post
end;

function GetPassword(lblText : String; var Password : String) : Boolean;
begin
 frmEnterPassword := TfrmEnterPassword.Create(frmMain);
 frmEnterPassword.lblText.Caption := lblText;
 frmEnterPassword.ShowModal;
 Password := frmEnterPassword.edPassword.Text;
 Result := (frmEnterPassword.ModalResult=mrOK);
 frmEnterPassword.Free
end;

{procedure LocaliseDevEx;
begin
//TcxGridPopupMenu
{ cxSetResourceString(@cxSGridAlignCenter, '��������� �� ������');
 cxSetResourceString(@cxSGridAlignLeft, '��������� �� ������ ����');
 cxSetResourceString(@cxSGridAlignmentSubMenu, '������������');
 cxSetResourceString(@cxSGridAlignRight, '��������� �� ������� ����');
 cxSetResourceString(@cxSGridAvgMenuItem, '�������');
 cxSetResourceString(@cxSGridBestFit, '��������� ������');
 cxSetResourceString(@cxSGridBestFitAllColumns, '��������� ������ (���� ��������)');
 cxSetResourceString(@cxSGridCountMenuItem, '�����');
 cxSetResourceString(@cxSGridFieldChooser, '����� ��������');
 cxSetResourceString(@cxSGridGroupByBox, '������ �����������');
 cxSetResourceString(@cxSGridGroupByThisField, '������������ �� ����� �������');
 cxSetResourceString(@cxSGridMaxMenuItem, '������������ ��������');
 cxSetResourceString(@cxSGridMinMenuItem, '����������� ��������');
 cxSetResourceString(@cxSGridNone, '���');
 cxSetResourceString(@cxSGridNoneMenuItem, '���');
 cxSetResourceString(@cxSGridRemoveColumn, '������� ���� �������');
 cxSetResourceString(@cxSGridShowFooter, '����');
 cxSetResourceString(@cxSGridShowGroupFooter, '����� �����');
 cxSetResourceString(@cxSGridSortColumnAsc, '����������� �� �����������');
 cxSetResourceString(@cxSGridSortColumnDesc, '����������� �� ��������');
 cxSetResourceString(@cxSGridSumMenuItem, '�����');
//Express QuantumGrid
 cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, '������');
 cxSetResourceString(@scxGridCustomizationFormCaption, '���������');
 cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, '�������');
 cxSetResourceString(@scxGridDeletingConfirmationCaption, '�������������');
 cxSetResourceString(@scxGridDeletingFocusedConfirmationText, '������� ������?');
 cxSetResourceString(@scxGridDeletingSelectedConfirmationText, '������� ��� ���������� ������?');
 cxSetResourceString(@scxGridFilterCustomizeButtonCaption, '���������...');
 cxSetResourceString(@scxGridFilterIsEmpty, '������ ����');
 cxSetResourceString(@scxGridGroupByBoxCaption, '���������� ���� ��������� �������, ����� ������������� �� ����');
 cxSetResourceString(@scxGridRecursiveLevels, '');
 cxSetResourceString(@scxNotExistGridLevel, '��� ��������� ������ �������');
//Express DataController
 cxSetResourceString(@cxSFilterAndCaption, '�');
 cxSetResourceString(@cxSFilterBlankCaption, '�����');
 cxSetResourceString(@cxSFilterBoxAllCaption, '(���)');
 cxSetResourceString(@cxSFilterBoxBlanksCaption, '(������)');
 cxSetResourceString(@cxSFilterBoxCustomCaption, '(���������...)');
 cxSetResourceString(@cxSFilterBoxNonBlanksCaption, '��������');
 cxSetResourceString(@cxSFilterNotCaption, '��');
 cxSetResourceString(@cxSFilterOperatorBeginsWith, '���������� �');
 cxSetResourceString(@cxSFilterOperatorBetween, '�����');
 cxSetResourceString(@cxSFilterOperatorContains, '��������');
 cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, '�� ���������� �');
 cxSetResourceString(@cxSFilterOperatorDoesNotContain, '�� ��������');
 cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, '�� ���������');
 cxSetResourceString(@cxSFilterOperatorEndsWith, '���������');
 cxSetResourceString(@cxSFilterOperatorEqual, '�����');
 cxSetResourceString(@cxSFilterOperatorGreater, '������ ���');
 cxSetResourceString(@cxSFilterOperatorGreaterEqual, '������ ��� ����� ���');
 cxSetResourceString(@cxSFilterOperatorInList, '�');
 cxSetResourceString(@cxSFilterOperatorIsNotNull, '�� �����');
 cxSetResourceString(@cxSFilterOperatorIsNull, '�����');
 cxSetResourceString(@cxSFilterOperatorLastMonth, '� ������� ������');
 cxSetResourceString(@cxSFilterOperatorLastWeek, '�� ������� ������');
 cxSetResourceString(@cxSFilterOperatorLastYear, '� ������� ����');
 cxSetResourceString(@cxSFilterOperatorLess, '������ ���');
 cxSetResourceString(@cxSFilterOperatorLessEqual, '������ ��� ����� ���');
 cxSetResourceString(@cxSFilterOperatorLike, '�������');
 cxSetResourceString(@cxSFilterOperatorNextMonth, '� ��������� ������');
 cxSetResourceString(@cxSFilterOperatorNextWeek, '�� ��������� ������');
 cxSetResourceString(@cxSFilterOperatorNextYear, '� ��������� ����');
 cxSetResourceString(@cxSFilterOperatorNotBetween, '�� �����');
 cxSetResourceString(@cxSFilterOperatorNotEqual, '�� �����');
 cxSetResourceString(@cxSFilterOperatorNotInList, '�� �');
 cxSetResourceString(@cxSFilterOperatorNotLike, '�� �������');
 cxSetResourceString(@cxSFilterOperatorThisMonth, '� ���� ������');
 cxSetResourceString(@cxSFilterOperatorThisWeek, '�� ���� ������');
 cxSetResourceString(@cxSFilterOperatorThisYear, '� ���� ����');
 cxSetResourceString(@cxSFilterOperatorToday, '�������');
 cxSetResourceString(@cxSFilterOperatorTomorrow, '������');
 cxSetResourceString(@cxSFilterOperatorYesterday, '�����');
 cxSetResourceString(@cxSFilterOrCaption, '���');
//Express Editors
 cxSetResourceString(@cxSBlobButtonCancel, '&������');
 cxSetResourceString(@cxSBlobButtonClose, '&�������');
 cxSetResourceString(@cxSBlobMemo, '(�������)');
 cxSetResourceString(@cxSBlobMemoEmpty, '(�������)');
 cxSetResourceString(@cxSBlobPicture, '(��������)');
 cxSetResourceString(@cxSBlobPictureEmpty, '(��������)');
 cxSetResourceString(@cxSDateBOM, '��');
 cxSetResourceString(@cxSDateEOM, '��');
 cxSetResourceString(@cxSDateError, '�������� ����');
 cxSetResourceString(@cxSDateFifth, '�����');
 cxSetResourceString(@cxSDateFirst, '������');
 cxSetResourceString(@cxSDateFourth, '���������');
 cxSetResourceString(@cxSDateFriday, '�������');
 cxSetResourceString(@cxSDateMonday, '�����������');
 cxSetResourceString(@cxSDateNow, '������');
 cxSetResourceString(@cxSDatePopupClear, '��������');
 cxSetResourceString(@cxSDatePopupToday, '�������');
 cxSetResourceString(@cxSDateSaturday, '�������');
 cxSetResourceString(@cxSDateSecond, '������');
 cxSetResourceString(@cxSDateSeventh, '�������');
 cxSetResourceString(@cxSDateSixth, '������');
 cxSetResourceString(@cxSDateSunday, '�����������');
 cxSetResourceString(@cxSDateThird, '������');
 cxSetResourceString(@cxSDateThursday, '�������');
 cxSetResourceString(@cxSDateToday, '�������');
 cxSetResourceString(@cxSDateTomorrow, '������');
 cxSetResourceString(@cxSDateTuesday, '�������');
 cxSetResourceString(@cxSDateWednesday, '�����');
 cxSetResourceString(@cxSDateYesterday, '�����');
 cxSetResourceString(@cxSEditNumericValueConvertError, '���������� ������������� � ��������� ����');
 cxSetResourceString(@cxSEditPopupCircularReferencingError, '����������� ������ �����������');
 cxSetResourceString(@cxSEditTimeConvertError, '�� ���� �������� �� �������');
 cxSetResourceString(@cxSEditValidateErrorText, '�������� ��������, ����������� ������� Esc, ����� �������� ���������');
 cxSetResourceString(@cxSEditValueOutOfBounds, '�������� ������� �� �������');
 cxSetResourceString(@cxSMenuItemCaptionCopy, '&����������');
 cxSetResourceString(@cxSMenuItemCaptionCut, '&��������');
 cxSetResourceString(@cxSMenuItemCaptionDelete, '&�������');
 cxSetResourceString(@cxSMenuItemCaptionLoad, '&���������...');
 cxSetResourceString(@cxSMenuItemCaptionPaste, '�&�������');
 cxSetResourceString(@cxSMenuItemCaptionSave, '��������� �&��');
 cxSetResourceString(@scxRegExprCantUsePlusQuantifier, '���� ''+'' �� ����� ���� �������� �����');
 cxSetResourceString(@scxRegExprCantUseStarQuantifier, '���� ''*'' �� ����� ���� �������� �����');
 cxSetResourceString(@scxRegExprChar, '����');
//string constants for filter controls and filter dialogs
 cxSetResourceString(@cxSFilterAddCondition, '�������� �������');
 cxSetResourceString(@cxSFilterAddGroup, '�������� &������');
 cxSetResourceString(@cxSFilterBoolOperatorAnd, '�');
 cxSetResourceString(@cxSFilterBoolOperatorNotAnd, '�� �');
 cxSetResourceString(@cxSFilterBoolOperatorNotOr, '�� ���');
 cxSetResourceString(@cxSFilterBoolOperatorOr, '���');
 cxSetResourceString(@cxSFilterClearAll, '�������� &���');
 cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '���������');
 cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, '��������');
 cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&�������...');
 cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '&��������� ���');
 cxSetResourceString(@cxSFilterControlDialogCaption, '����������� �������');
 cxSetResourceString(@cxSFilterControlDialogFileFilter, '������� (*.flt)|*.flt');
 cxSetResourceString(@cxSFilterControlDialogNewFile, '�����.flt');
 cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, '������� ������������ ������');
 cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, '��������� �������� ������ � ����');
 cxSetResourceString(@cxSFilterControlNullString, '<�����>');
 cxSetResourceString(@cxSFilterDialogCaption, '����������� ������');
 cxSetResourceString(@cxSFilterDialogCharactersSeries, '��� ������������� ����� ������������������� ��������');
 cxSetResourceString(@cxSFilterDialogInvalidValue, '�������� ��������');
 cxSetResourceString(@cxSFilterDialogOperationAnd, '�');
 cxSetResourceString(@cxSFilterDialogOperationOr, '���');
 cxSetResourceString(@cxSFilterDialogRows, '�������� ������ ���:');
 cxSetResourceString(@cxSFilterDialogSingleCharacter, '��� ������������� ������ ������ �������');
 cxSetResourceString(@cxSFilterDialogUse, '������������');
 cxSetResourceString(@cxSFilterErrorBuilding, '���������� ��������� ������');
 cxSetResourceString(@cxSFilterFooterAddCondition, '�������, ����� �������� ����� �������');
 cxSetResourceString(@cxSFilterGroupCaption, '��������� ��� ��������� �������');
 cxSetResourceString(@cxSFilterRemoveRow, '&������� �������');
 cxSetResourceString(@cxSFilterRootButtonCaption, '������');
 cxSetResourceString(@cxSFilterRootGroupCaption, '<������>');
 cxSetResourceString(@cxSGridClearSorting, '����� ����������');
 cxSetResourceString(@cxSGridRemoveThisGroupItem, '������ ����������� �� ����� �������');
// dxBars
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, '����� ��������');
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGOK, 'OK');
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, '������');

 cxSetResourceString(@dxSBAR_DIALOGOK, 'OK');
 cxSetResourceString(@dxSBAR_DIALOGCANCEL, '������');
 cxSetResourceString(@dxSBAR_DATETODAY, '�������');
 cxSetResourceString(@dxSBAR_DATECLEAR, '��������');
 cxSetResourceString(@dxSBAR_DATEDIALOGCAPTION, '����� ����');
 cxSetResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, '����� ������');
 cxSetResourceString(@dxSBAR_IMAGEDIALOGCAPTION, '�����');
 cxSetResourceString(@dxSBAR_IMAGEINDEX, '� ��������');
 cxSetResourceString(@dxSBAR_IMAGETEXT, '�����');
 cxSetResourceString(@dxSBAR_PLACEFORCONTROL, '����� ��� ');

 cxSetResourceString(@dxSBAR_WANTTORESETTOOLBAR, '�� �������, ��� ������ �������� ��������� ������ ''%s'' ?');

 cxSetResourceString(@dxSBAR_CP_ADDSUBITEM, '�������� ��&������');
 cxSetResourceString(@dxSBAR_CP_ADDBUTTON, '�������� &������');
 cxSetResourceString(@dxSBAR_CP_ADDITEM, '�������� &�����');
 cxSetResourceString(@dxSBAR_CP_DELETEBAR, '������� ������');

 cxSetResourceString(@dxSBAR_CP_RESET, '&���������');
 cxSetResourceString(@dxSBAR_CP_DELETE, '�&������');
 cxSetResourceString(@dxSBAR_CP_NAME, '&���:');
 cxSetResourceString(@dxSBAR_CP_CAPTION, '&�����:'); // is the same as dxSBAR_CP_NAME (at design-time)

 cxSetResourceString(@dxSBAR_ADDEX, '��������...');
 cxSetResourceString(@dxSBAR_RENAMEEX, '�������������...');
 cxSetResourceString(@dxSBAR_DELETE, '�������');
 cxSetResourceString(@dxSBAR_CLEAR, '��������');
 cxSetResourceString(@dxSBAR_VISIBLE, '�������');
 cxSetResourceString(@dxSBAR_OK, 'OK');
 cxSetResourceString(@dxSBAR_CANCEL, '������');
 cxSetResourceString(@dxSBAR_INSERTEX, '��������...');

 cxSetResourceString(@dxSBAR_TOOLBARNEWNAME , 'Custom ');
 cxSetResourceString(@dxSBAR_CATEGORYADD , 'Add Category');
 cxSetResourceString(@dxSBAR_CATEGORYINSERT , 'Insert Category');
 cxSetResourceString(@dxSBAR_CATEGORYRENAME , 'Rename Category');
 cxSetResourceString(@dxSBAR_TOOLBARADD , 'Add Toolbar');
 cxSetResourceString(@dxSBAR_TOOLBARRENAME , 'Rename Toolbar');
 cxSetResourceString(@dxSBAR_CATEGORYNAME , '&Category name:');
 cxSetResourceString(@dxSBAR_TOOLBARNAME , '&Toolbar name:');
 cxSetResourceString(@dxSBAR_CUSTOMIZINGFORM, 'Customization Form...');

 cxSetResourceString(@dxSBAR_MODIFY, '... modify');
 cxSetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, 'Personalized Menus and Toolbars  ');
 cxSetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, 'Me&nus show recently used commands first');
 cxSetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, 'Show f&ull menus after a short delay');
 cxSetResourceString(@dxSBAR_RESETUSAGEDATA, '&Reset my usage data');

{ sdxBarDatePopupToday := cxGetResourceString(@dxSBAR_DATETODAY);
 sdxBarDatePopupClear := cxGetResourceString(@dxSBAR_DATECLEAR);}
{end;}

procedure SetUpRegionalSettings;
begin
 ThousandSeparator := ' ';
 DecimalSeparator := ',';
 DateSeparator := '.';
 ShortDateFormat := 'dd.MM.yy';
 LongDateFormat := 'dd MMMM yyyy �.';
 TimeSeparator := ':';
 ShortTimeFormat := 'HH:nn';
 LongTimeFormat := 'HH:nn:ss';
 ListSeparator := ';'
end;

function MyInputQuery(FormCaption, LabelCaption, InputMask : String; var Value : Integer) : Boolean;
begin
 frmInputQuery := TfrmInputQuery.Create(frmMain);
 frmInputQuery.Caption := FormCaption;
 frmInputQuery.lblText.Caption := LabelCaption;
 frmInputQuery.cxMaskEdit1.Properties.EditMask := InputMask;
 frmInputQuery.cxMaskEdit1.Text := IntToStr(Value);
 frmInputQuery.ShowModal;
 If (frmInputQuery.cxMaskEdit1.Text<>'') then
  Value := StrToInt(frmInputQuery.cxMaskEdit1.Text);
 Result := (frmInputQuery.ModalResult=mrOK);
 frmInputQuery.Free
end;

end.

