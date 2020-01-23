unit EnterPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls;

type
  TfrmEnterPassword = class(TForm)
    Panel2: TPanel;
    lblText: TLabel;
    edPassword: TcxTextEdit;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnterPassword: TfrmEnterPassword;

implementation

{$R *.dfm}

end.
