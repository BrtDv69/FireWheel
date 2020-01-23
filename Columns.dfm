inherited frmColumns: TfrmColumns
  Left = 384
  Top = 210
  Width = 752
  Height = 458
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1083#1086#1085#1085
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 725
    Height = 431
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlComments: TPanel
      Left = 0
      Top = 380
      Width = 725
      Height = 51
      Align = alBottom
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      DesignSize = (
        725
        51)
      object Label16: TLabel
        Left = 4
        Top = 0
        Width = 89
        Height = 16
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbedComments: TcxDBMemo
        Left = 35
        Top = 17
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = dsMainColumns
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 690
      end
    end
    object dbgColumns: TcxGrid
      Left = 0
      Top = 0
      Width = 725
      Height = 380
      Align = alClient
      TabOrder = 1
      object tvColumns: TcxGridDBTableView
        OnKeyUp = tvColumnsKeyUp
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsMainColumns
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Column = tvColumnsCOMMENTS
        Preview.Visible = True
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        OnCustomDrawColumnHeader = tvColumnsCustomDrawColumnHeader
        object tvColumnsCOLUMN_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMN_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 1
          SortOrder = soAscending
          Width = 96
        end
        object tvColumnsNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 203
        end
        object tvColumnsADDRESS: TcxGridDBColumn
          DataBinding.FieldName = 'ADDRESS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 182
        end
        object tvColumnsPHONE: TcxGridDBColumn
          DataBinding.FieldName = 'PHONE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 146
        end
        object tvColumnsVALID: TcxGridDBColumn
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taLeftJustify
          Properties.DisplayChecked = #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.DisplayUnchecked = #1053#1077' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 84
        end
        object tvColumnsCOMMENTS: TcxGridDBColumn
          Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object lvColumns: TcxGridLevel
        GridView = tvColumns
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 725
    Top = 0
    Width = 19
    Height = 431
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbCancelColumns: TSpeedButton
      Left = 0
      Top = 133
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 
        #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085 +
        #1080#1103
      AllowAllUp = True
      Enabled = False
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333000033333333333333333FF33333FF330000333003333300
        3333733F333733F3000033300033300033337333F37333F30000333300030003
        3333373337333F330000333330000033333333733333F3330000333333000333
        33333337333F33330000333330000033333333733333F3330000333300030003
        3333373337333F33000033300033300033337333F37333F30000333003333300
        3333733F333733F3000033333333333333333773333377330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbCancelColumnsClick
    end
    object sbApplyColumns: TSpeedButton
      Left = 0
      Top = 114
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 
        #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085 +
        #1077#1085#1080#1103
      AllowAllUp = True
      Enabled = False
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333330000333333333333333333F3333333330000333303333333
        33333F3F3333333300003330003333333333F333F33333330000330000033333
        333F33333F33333300003000300033333373333333F333330000300333000333
        337333F7333F33330000333333300033333777337333F3330000333333330003
        3333333337333F33000033333333300033333333337333F30000333333333300
        3333333333373373000033333333333333333333333377330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbApplyColumnsClick
    end
    object sbDeleteColumns: TSpeedButton
      Left = 0
      Top = 95
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333000033333333333333333333333333330000333333333333
        3333333333333333000033333333333333333333333333330000333333333333
        3337FFFFFFFFFFF3000033000000000033373333333333F30000330000000000
        33373333333333F3000033000000000033373333333333F30000333333333333
        33377777777777F3000033333333333333333333333333330000333333333333
        3333333333333333000033333333333333333333333333330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbDeleteColumnsClick
    end
    object sbAddColumns: TSpeedButton
      Left = 0
      Top = 76
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333300003333333333333333333FFFF333330000333330003333
        3333337333F3333300003333300033333333337333F333330000333330003333
        3333FF3333FFFF3300003300000000033337333333333F330000330000000003
        3337333333333F3300003300000000033337333333333F330000333330003333
        333777733337733300003333300033333333337333F333330000333330003333
        3333337333F33333000033333333333333333377773333330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbAddColumnsClick
    end
    object sbLastColumns: TSpeedButton
      Left = 0
      Top = 57
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333000033333333333333333333333333330000333333333333
        3333FF333333FFF30000330733333370333733FF333733F30000330007333370
        33373333FF3733F300003300000733703337333333F333F30000330000000770
        33373333333333F3000033000007337033373333337733F30000330007333370
        33373333773733F3000033073333337033373377333733F30000333333333333
        3337773333377733000033333333333333333333333333330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbLastColumnsClick
    end
    object sbNextColumns: TSpeedButton
      Left = 0
      Top = 38
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1086#1089#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        12010000424D12010000000000007600000028000000140000000D0000000100
        0400000000009C00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FFFF33333333333333333333CEEC33333333333FF3333333CDFC3073
        333333733FF33333CDFC300073333373333FF333CDFC30000073337333333FF3
        CCEC3000000073733333333FCFFD30000073337333333773EFFF300073333373
        33377333EFFE30733333337337733333EEEE33333333337773333333FFFF3333
        3333333333333333FFFF33333333333333333333FFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbNextColumnsClick
    end
    object sbPriorColumns: TSpeedButton
      Left = 0
      Top = 19
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        12010000424D12010000000000007600000028000000140000000D0000000100
        0400000000009C00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333335AAA33333333333333333333E11133333333333333333FFF5AAA3333
        33370333333FF33FF0003333370003333FF3333FD22233370000033FF333333F
        F0003700000003733333333FD2223337000003377333333F3000333337000333
        3773333FD2223333333703333337733FF00033333333333333333773D2223333
        3333333333333333F00033333333333333333333D222}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbPriorColumnsClick
    end
    object sbFirstColumns: TSpeedButton
      Left = 0
      Top = 0
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333000033333333333333333333333333330000333333333333
        3333FFF33333FFF30000330733333370333733F333FF33F30000330733337000
        333733F3FF3333F30000330733700000333733FF333333F30000330770000000
        33373333333333F3000033073370000033373337333333F30000330733337000
        333733F3773333F30000330733333370333733F3337733F30000333333333333
        3337773333337733000033333333333333333333333333330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbFirstColumnsClick
    end
    object sbCloseColumns: TSpeedButton
      Left = 0
      Top = 152
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1047#1072#1082#1088#1099#1090#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A87969F99000000FF
        FFFFFFFFFFFFFFFF9E9C9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0F6EEFFFFFF494D520000008889866D706E000000000000D1CB
        CFD7D5D0000000FFFFFFFFFFFFFFFFFFFFFFFF7E7F7FFFFFFF7C7C794F5C5565
        66620B0906959595FFFFFFF9FFFCFFFFFF040B04000000FFFFFF7F7F7D000000
        FFFFFFFFFFFFF7F9F0000000000000000000000000000000545A57FFFFFFFFFF
        FF000000C0BFBCFFFFFFEDF3EF0000000D0F0CC5CACE00000000000000080000
        0B00000800000000000000000000FFFFFF3C3D3BFFFFFFFFFFFFBDBDBCFFFFFF
        272D28000000000000000400000A00000800000900000B000009000000004347
        3F484B46FFFFFFFFFFFFFFFFFFFFFFFFDBE5E7000000000500000B0000080000
        0800000800000800000B00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        C6CCC0000000000000000A00000800000800000800000800000B000000000000
        00484F4DBEBDB9FFFFFFFFFFFF959E9843463A000000000000000B0000080000
        0800000800000800000C00000000050E00FFFFFF000000FFFFFF8A8889D0D3C8
        D2D6D6000000000000000900000B00000900000900000A00000E000000007177
        6CFFFFFF000000FCFAFFD4D6D6FFFFFFFFFFFF6A756E00000000000000000000
        0900000C00000500000000000000C7CBCCFFFFFF909687000000FFFFFFFFFFFF
        D9D7D98F9291C8C4C2000000000000000000000000000000000000272E280000
        00AAAAACC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33363300
        0000000000000000C2C3C3FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000004E4E4FDEDDE3F6F6F3DDDBDBFFFFFF0000
        00F8FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E4DF595B59FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF888785FFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbCloseColumnsClick
    end
    object sbDetail: TSpeedButton
      Tag = 1
      Left = 0
      Top = 181
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 
        #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1091#1102#13#10#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1091#1102' '#1080#1085#1092#1086 +
        #1088#1084#1072#1094#1080#1102
      AllowAllUp = True
      GroupIndex = 3
      Flat = True
      Glyph.Data = {
        82000000424D82000000000000003E0000002800000011000000110000000100
        010000000000440000000000000000000000020000000000000000000000FFFF
        FF00FF7F8000FE3F8000FD5F8000FB6F8000F3678000EB6B8000DB6D8000FB6F
        8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F
        8000FFFF8000}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbDetailClick
    end
  end
  inherited trMain: TIBTransaction
    Active = True
    DefaultDatabase = frmDM.dbMain
    Left = 41
  end
  inherited ibsGen_ID: TIBSQL
    SQL.Strings = ()
    Left = 41
    Top = 64
  end
  object ibdsMainColumns: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainColumnsAfterDelete
    AfterScroll = ibdsMainColumnsAfterScroll
    OnNewRecord = ibdsMainColumnsNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from COLUMNS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into COLUMNS'
      '  (ADDRESS, COLUMN_NUMBER, COMMENTS, ID, NAME, PHONE, VALID)'
      'values'
      
        '  (:ADDRESS, :COLUMN_NUMBER, :COMMENTS, :ID, :NAME, :PHONE, :VAL' +
        'ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  COLUMN_NUMBER,'
      '  NAME,'
      '  ADDRESS,'
      '  PHONE,'
      '  VALID,'
      '  COMMENTS'
      'from COLUMNS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select ID, COLUMN_NUMBER, NAME, ADDRESS, PHONE, VALID, COMMENTS'
      'from COLUMNS')
    ModifySQL.Strings = (
      'update COLUMNS'
      'set'
      '  ADDRESS = :ADDRESS,'
      '  COLUMN_NUMBER = :COLUMN_NUMBER,'
      '  COMMENTS = :COMMENTS,'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  PHONE = :PHONE,'
      '  VALID = :VALID'
      'where'
      '  ID = :OLD_ID')
    Left = 10
    Top = 64
    object ibdsMainColumnsID: TIntegerField
      FieldName = 'ID'
      Origin = '"COLUMNS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsMainColumnsCOLUMN_NUMBER: TIntegerField
      DisplayLabel = #8470' '#1082#1086#1083#1086#1085#1085#1099
      FieldName = 'COLUMN_NUMBER'
      Origin = '"COLUMNS"."COLUMN_NUMBER"'
      Required = True
    end
    object ibdsMainColumnsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"COLUMNS"."NAME"'
      Size = 100
    end
    object ibdsMainColumnsADDRESS: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADDRESS'
      Origin = '"COLUMNS"."ADDRESS"'
      Size = 200
    end
    object ibdsMainColumnsPHONE: TIBStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'PHONE'
      Origin = '"COLUMNS"."PHONE"'
      Size = 50
    end
    object ibdsMainColumnsVALID: TIntegerField
      DisplayLabel = #1044#1077#1081#1089#1090'.'
      FieldName = 'VALID'
      Origin = '"COLUMNS"."VALID"'
    end
    object ibdsMainColumnsCOMMENTS: TIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Origin = '"COLUMNS"."COMMENTS"'
      Size = 100
    end
  end
  object dsMainColumns: TDataSource
    DataSet = ibdsMainColumns
    OnStateChange = dsMainColumnsStateChange
    Left = 10
    Top = 94
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = dbgColumns
    PopupMenus = <>
    Left = 258
    Top = 34
  end
end
