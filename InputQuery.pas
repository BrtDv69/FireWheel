unit InputQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls, cxMaskEdit;

type
  TfrmInputQuery = class(TForm)
    Panel2: TPanel;
    lblText: TLabel;
    BitBtn1: TBitBtn;
    cxMaskEdit1: TcxMaskEdit;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInputQuery: TfrmInputQuery;

implementation

{$R *.dfm}

end.
