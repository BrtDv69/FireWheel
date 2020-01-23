inherited frmAutomobilesInfo: TfrmAutomobilesInfo
  Left = 6
  Top = 188
  Width = 702
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1072#1074#1090#1086#1084#1072#1096#1080#1085#1072#1084
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 675
    Height = 325
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    OnFocusedViewChanged = cxGridFocusedViewChanged
    object tvAutomobiles: TcxGridDBTableView
      DataController.DataSource = dsMainAutomobiles
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = tvAutomobilesFocusedRecordChanged
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Preview.Visible = True
      Styles.IncSearch = frmDM.cxIncSearch
      Styles.Header = frmDM.stHeader
      Styles.Preview = frmDM.stPreview
      OnCustomDrawColumnHeader = tvAutomobilesCustomDrawColumnHeader
      object tvAutomobilesNAME: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1072
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 178
        DataBinding.FieldName = 'NAME'
      end
      object tvAutomobilesSTATE_NUMBER: TcxGridDBColumn
        Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 74
        DataBinding.FieldName = 'STATE_NUMBER'
      end
      object tvAutomobilesINVENTORY_NUMBER: TcxGridDBColumn
        Caption = #1048#1085#1074'. '#8470
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'INVENTORY_NUMBER'
      end
      object tvAutomobilesVALID: TcxGridDBColumn
        Caption = #1044#1077#1081#1089#1090#1074'.'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1077#1081#1089#1090#1074'.'
        Properties.DisplayUnchecked = #1053#1077' '#1076#1077#1081#1089#1090#1074'.'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 57
        DataBinding.FieldName = 'VALID'
      end
      object tvAutomobilesMILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095#1072#1083#1072' '#1101#1082#1089#1087#1083'., '#1082#1084
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 97
        DataBinding.FieldName = 'MILEAGE'
      end
      object tvAutomobilesMONTH_MILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072', '#1082#1084
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        DataBinding.FieldName = 'MONTH_MILEAGE'
      end
      object tvAutomobilesTO_KIND: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1058#1054
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          '1'
          '2')
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        DataBinding.FieldName = 'TO_KIND'
      end
      object tvAutomobilesTO_MILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075' '#1086#1090' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1058#1054', '#1082#1084
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        DataBinding.FieldName = 'TO_MILEAGE'
      end
      object tvAutomobilesMAINTENANCE_MILEAGE: TcxGridDBColumn
        Caption = #1053#1086#1088#1084'. '#1087#1088#1086#1073#1077#1075' '#1076#1086' '#1058#1054', '#1082#1084
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'MAINTENANCE_MILEAGE'
      end
      object tvAutomobilesTO_FUTURE_KIND: TcxGridDBColumn
        Caption = #1054#1095#1077#1088#1077#1076#1085#1086#1077' '#1058#1054
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Items.Strings = (
          '1'
          '2')
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'TO_FUTURE_KIND'
      end
      object tvAutomobilesOverRun: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1087#1088#1086#1073#1077#1075', '#1082#1084
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'OverRun'
      end
    end
    object tvDailyOperations: TcxGridDBTableView
      DataController.DataModeController.SyncMode = False
      DataController.DataModeController.OnDetailFirst = tvAutomobilesDataControllerDataModeControllerDetailFirst
      DataController.DataSource = dsMainDailyOperations
      DataController.DetailKeyFieldNames = 'AM_ID'
      DataController.KeyFieldNames = 'AM_ID;AM_DATE'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore]
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = tvAutomobilesFocusedRecordChanged
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      Styles.IncSearch = frmDM.cxIncSearch
      Styles.Header = frmDM.stHeader
      Styles.Preview = frmDM.stPreview
      OnCustomDrawColumnHeader = tvAutomobilesCustomDrawColumnHeader
      object tvDailyOperationsAM_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'AM_DATE'
      end
      object tvDailyOperationsMILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'MILEAGE'
      end
      object tvDailyOperationsTO12_KIND: TcxGridDBColumn
        Caption = #1058#1054
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          '1'
          '2')
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'TO12_KIND'
      end
      object tvDailyOperationsPARTS_SHORT_NAME: TcxGridDBColumn
        Caption = #1056#1077#1084#1086#1085#1090#1099
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        DataBinding.FieldName = 'PARTS_SHORT_NAME'
      end
    end
    object glAutomobiles: TcxGridLevel
      GridView = tvAutomobiles
      Options.DetailTabsPosition = dtpTop
      object glDailyOperations: TcxGridLevel
        GridView = tvDailyOperations
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 675
    Top = 0
    Width = 19
    Height = 325
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbLast: TSpeedButton
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
      OnClick = sbLastClick
    end
    object sbNext: TSpeedButton
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
      OnClick = sbNextClick
    end
    object sbPrior: TSpeedButton
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
      OnClick = sbPriorClick
    end
    object sbFirst: TSpeedButton
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
      OnClick = sbFirstClick
    end
    object sbClose: TSpeedButton
      Left = 0
      Top = 143
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
      OnClick = sbCloseClick
    end
    object sbRefresh: TSpeedButton
      Left = 0
      Top = 76
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333FFFFF3333000033333707333333333FF3337733330000333700733333
        3333733337333333000033300733333333337333733333330000337073333333
        3337333F3333333300003300333333333337333F3FFFFFF30000330033300000
        3337333F733333F300003300733370003337333F373333F30000337007370000
        33373333F33333F3000033300000007033337333333373F30000333370007330
        33333733333773F3000033333333333333333377777337330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbRefreshClick
    end
    object sbFilter: TSpeedButton
      Left = 0
      Top = 95
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1060#1080#1083#1100#1090#1088
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF131313282828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAAAAAA6F6F6F666666969696FFFFFF4646461C1C1C9D9D
        9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F0F0F0F1C1C1C2B
        2B2B2222221212121D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF5A5A5A1C1C1C7D7D7DAEAEAEAAAAAA999999515151252525FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898982F2F2FA8A8A8FDFDFDECECECAD
        ADADA3A3A3C3C3C36B6B6B555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        5E5E5E5B5B5BF8F8F8FFFFFFF4F4F4E3E3E3A8A8A8B1B1B1A8A8A83B3B3BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF737373424242DCDCDCFFFFFFFEFEFEFF
        FFFFFBFBFBD7D7D7777777434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2A2A2A505050D4D4D4F8F8F8FDFDFDECECEC9F9F9F202020777777FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A11717171E1E1E5E5E5E6E
        6E6E414141101010555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4949491B1B1B1919192B2B2B797979FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbFilterClick
    end
    object sbPrintAccumulatorsTyresList: TSpeedButton
      Left = 0
      Top = 114
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1077#1095#1072#1090#1100'|'#1055#1077#1095#1072#1090#1100
      AllowAllUp = True
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbPrintAccumulatorsTyresListClick
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
  end
  object ibdsMainAutomobiles: TIBDataSet [3]
    Database = frmDM.dbMain
    Transaction = trMain
    BeforeOpen = ibdsMainAutomobilesBeforeOpen
    OnCalcFields = ibdsMainAutomobilesCalcFields
    BufferChunks = 500
    SelectSQL.Strings = (
      
        'select G.ID, G.NAME, G.STATE_NUMBER, G.INVENTORY_NUMBER, G.VALID' +
        ', G.MILEAGE,'
      
        'G.MAINTENANCE_MILEAGE, G.MONTH_MILEAGE, G.TO_KIND, G.TO_MILEAGE,' +
        ' G.TO_FUTURE_KIND'
      'from GET_AUTOMOBILES_MILEAGE(:START,:STOP) G')
    Left = 10
    Top = 64
    object ibdsMainAutomobilesID: TIntegerField
      FieldName = 'ID'
      Origin = 'G.ID'
    end
    object ibdsMainAutomobilesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'G.NAME'
      Size = 100
    end
    object ibdsMainAutomobilesSTATE_NUMBER: TIBStringField
      FieldName = 'STATE_NUMBER'
      Origin = 'G.STATE_NUMBER'
      Size = 15
    end
    object ibdsMainAutomobilesVALID: TIntegerField
      FieldName = 'VALID'
      Origin = 'G.VALID'
    end
    object ibdsMainAutomobilesMILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Origin = 'G.MILEAGE'
      DisplayFormat = '#,##0'
    end
    object ibdsMainAutomobilesMONTH_MILEAGE: TIntegerField
      FieldName = 'MONTH_MILEAGE'
      Origin = 'G.MONTH_MILEAGE'
      DisplayFormat = '#,##0'
    end
    object ibdsMainAutomobilesTO_KIND: TIntegerField
      FieldName = 'TO_KIND'
      Origin = 'G.TO_KIND'
    end
    object ibdsMainAutomobilesTO_MILEAGE: TIntegerField
      FieldName = 'TO_MILEAGE'
      Origin = 'G.TO_MILEAGE'
      DisplayFormat = '#,##0'
    end
    object ibdsMainAutomobilesINVENTORY_NUMBER: TIntegerField
      FieldName = 'INVENTORY_NUMBER'
      Origin = '"GET_AUTOMOBILES_MILEAGE"."INVENTORY_NUMBER"'
    end
    object ibdsMainAutomobilesMAINTENANCE_MILEAGE: TIntegerField
      FieldName = 'MAINTENANCE_MILEAGE'
      Origin = '"GET_AUTOMOBILES_MILEAGE"."MAINTENANCE_MILEAGE"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainAutomobilesTO_FUTURE_KIND: TIntegerField
      FieldName = 'TO_FUTURE_KIND'
      Origin = '"GET_AUTOMOBILES_MILEAGE"."TO_FUTURE_KIND"'
    end
    object ibdsMainAutomobilesOverRun: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'OverRun'
      DisplayFormat = '#,##0'
      Calculated = True
    end
  end
  object dsMainAutomobiles: TDataSource [4]
    DataSet = ibdsMainAutomobiles
    Left = 10
    Top = 94
  end
  object cxGridPopupMenu: TcxGridPopupMenu [5]
    Grid = cxGrid
    PopupMenus = <
      item
        GridView = tvAutomobiles
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 280
    Top = 16
  end
  inherited ibsGen_ID: TIBSQL
    Left = 130
    Top = 68
  end
  object ibdsMainDailyOperations: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BeforeOpen = ibdsMainAutomobilesBeforeOpen
    BufferChunks = 500
    SelectSQL.Strings = (
      
        'select GD.AM_ID, GD.AM_DATE, GD.MILEAGE, GD.TO12_KIND, GD.PARTS_' +
        'SHORT_NAME'
      'from GET_DAILY_OPERATIONS(:START,:STOP,:ID) GD')
    Left = 39
    Top = 64
    object ibdsMainDailyOperationsAM_ID: TIntegerField
      FieldName = 'AM_ID'
      Origin = 'GD.AM_ID'
    end
    object ibdsMainDailyOperationsAM_DATE: TDateField
      Alignment = taCenter
      FieldName = 'AM_DATE'
      Origin = 'GD.AM_DATE'
    end
    object ibdsMainDailyOperationsMILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Origin = 'GD.MILEAGE'
    end
    object ibdsMainDailyOperationsTO12_KIND: TIntegerField
      FieldName = 'TO12_KIND'
      Origin = 'GD.TO12_KIND'
    end
    object ibdsMainDailyOperationsPARTS_SHORT_NAME: TIBStringField
      FieldName = 'PARTS_SHORT_NAME'
      Origin = 'GD.PARTS_SHORT_NAME'
      Size = 300
    end
  end
  object dsMainDailyOperations: TDataSource
    DataSet = ibdsMainDailyOperations
    Left = 39
    Top = 94
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 311
        FloatTop = 309
        FloatClientWidth = 233
        FloatClientHeight = 19
        ItemLinks = <
          item
            Item = deStart
            Visible = True
          end
          item
            Item = deStop
            Visible = True
          end>
        Name = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRecentItems = False
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    Top = 152
    DockControlHeights = (
      0
      0
      0
      23)
    object deStart: TdxBarDateCombo
      Align = iaRight
      Caption = 'C'
      Category = 0
      Hint = 'C'
      Visible = ivAlways
      Text = #1055#1090' 21.03.2003'
      OnChange = deStartChange
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      DateOnStart = bdsCustom
    end
    object deStop: TdxBarDateCombo
      Align = iaRight
      Caption = #1055#1086
      Category = 0
      Hint = #1055#1086
      Visible = ivAlways
      Text = #1055#1090' 21.03.2003'
      OnChange = deStartChange
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      DateOnStart = bdsCustom
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 96
    object ChangeMileage: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095#1072#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      OnClick = ChangeMileageClick
    end
  end
end
