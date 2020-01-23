object frmLike: TfrmLike
  Left = 145
  Top = 167
  Width = 544
  Height = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object trMain: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 33
    Top = 34
  end
  object ibsGen_ID: TIBSQL
    Database = frmDM.dbMain
    SQL.Strings = (
      '')
    Transaction = trMain
    Left = 2
    Top = 4
  end
end
