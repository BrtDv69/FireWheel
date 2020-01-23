inherited frmAutoRepairs: TfrmAutoRepairs
  Left = 163
  Top = 145
  Width = 637
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1072#1074#1090#1086#1084#1072#1096#1080#1085#1072#1084
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 610
    Height = 348
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvAutomobiles: TcxGridDBTableView
      DataController.DataSource = dsMainAutomobiles
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Preview.Column = tvAutomobilesCOMMENTS
      Preview.Visible = True
      Styles.Header = frmDM.stHeader
      Styles.Preview = frmDM.stPreview
      OnCustomDrawColumnHeader = tvAutomobilesCustomDrawColumnHeader
      object tvAutomobilesMAKE_NAME: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1072
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 159
        DataBinding.FieldName = 'MAKE_NAME'
      end
      object tvAutomobilesSTATE_NUMBER: TcxGridDBColumn
        Caption = #1043#1086#1089'. '#8470
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 95
        DataBinding.FieldName = 'STATE_NUMBER'
      end
      object tvAutomobilesMILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075', '#1082#1084
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 123
        DataBinding.FieldName = 'MILEAGE'
      end
      object tvAutomobilesMONTH_MILEAGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072', '#1082#1084
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 121
        DataBinding.FieldName = 'MONTH_MILEAGE'
      end
      object tvAutomobilesCOMMENTS: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'COMMENTS'
      end
    end
    object tvTO: TcxGridDBTableView
      DataController.DataSource = dsTO
      DataController.DetailKeyFieldNames = 'AUTOMOBILE_ID'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnHiding = True
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.NewItemRow = True
      Preview.Column = tvTOCOMMENTS
      Preview.Visible = True
      Styles.Header = frmDM.stHeader
      Styles.Preview = frmDM.stPreview
      OnCustomDrawColumnHeader = tvAutomobilesCustomDrawColumnHeader
      object tvTONUMBER: TcxGridDBColumn
        Caption = #8470' '#1083#1080#1089#1090#1082#1072' '#1091#1095#1077#1090#1072
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Vert = taVCenter
        Properties.BeepOnError = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d+'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Grouping = False
        DataBinding.FieldName = 'NUMBER'
      end
      object tvTOTO12_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'TO12_DATE'
      end
      object tvTOTO12_KIND: TcxGridDBColumn
        Caption = #1042#1080#1076
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          #1058#1054'-1'
          #1058#1054'-2')
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'TO12_KIND'
      end
      object tvTOCOMMENTS: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'COMMENTS'
      end
    end
    object tvRepairs: TcxGridDBBandedTableView
      DataController.DataSource = dsRepairs
      DataController.DetailKeyFieldNames = 'AUTOMOBILE_ID'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnHiding = True
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.NewItemRow = True
      OptionsView.BandHeaderEndEllipsis = True
      Preview.Column = tvRepairsCOMMENTS
      Preview.Visible = True
      Styles.Header = frmDM.stHeader
      Styles.Preview = frmDM.stPreview
      OnCustomDrawColumnHeader = tvAutomobilesCustomDrawColumnHeader
      Bands = <
        item
        end
        item
          Caption = #1044#1072#1090#1072' '#1088#1077#1084#1086#1085#1090#1072
          Styles.Header = frmDM.stHeader
        end
        item
        end>
      object tvRepairsNUMBER: TcxGridDBBandedColumn
        Caption = #8470' '#1088#1077#1084#1086#1085#1090#1085#1086#1075#1086' '#1083#1080#1089#1090#1072
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.BeepOnError = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d+'
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        DataBinding.FieldName = 'NUMBER'
      end
      object tvRepairsSTART_DATE: TcxGridDBBandedColumn
        Caption = #1053#1072#1095'.'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        DataBinding.FieldName = 'START_DATE'
      end
      object tvRepairsSTOP_DATE: TcxGridDBBandedColumn
        Caption = #1054#1082#1086#1085#1095'.'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
        DataBinding.FieldName = 'STOP_DATE'
      end
      object tvRepairsPART_ID: TcxGridDBBandedColumn
        Caption = #1059#1079#1077#1083
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taVCenter
        Properties.ClearKey = 46
        Properties.DropDownAutoSize = True
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = #1055#1086#1083#1085#1086#1077
            HeaderAlignment = taCenter
            SortOrder = soAscending
            Width = 200
            FieldName = 'NAME'
          end
          item
            Caption = #1050#1086#1088#1086#1090#1082#1086#1077
            HeaderAlignment = taCenter
            FieldName = 'SHORT_NAME'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.AnsiSort = True
        Properties.ListSource = dsParts
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
        DataBinding.FieldName = 'PART_ID'
      end
      object tvRepairsCOMMENTS: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
        DataBinding.FieldName = 'COMMENTS'
      end
    end
    object glAutomobiles: TcxGridLevel
      GridView = tvAutomobiles
      Options.DetailTabsPosition = dtpTop
      object glTO: TcxGridLevel
        Caption = #1058#1054
        GridView = tvTO
      end
      object glRepairs: TcxGridLevel
        Caption = #1056#1077#1084#1086#1085#1090#1099
        GridView = tvRepairs
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 610
    Top = 0
    Width = 19
    Height = 348
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbCancelAutoRepairs: TSpeedButton
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
      OnClick = sbCancelAutoRepairsClick
    end
    object sbApplyAutoRepairs: TSpeedButton
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
      OnClick = sbApplyAutoRepairsClick
    end
    object sbDeleteParts: TSpeedButton
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
    end
    object sbAddParts: TSpeedButton
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
    end
    object sbLastParts: TSpeedButton
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
    end
    object sbNextParts: TSpeedButton
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
    end
    object sbPriorParts: TSpeedButton
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
    end
    object sbFirstParts: TSpeedButton
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
    end
    object sbCloseParts: TSpeedButton
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
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
  end
  object ibdsMainAutomobiles: TIBDataSet [3]
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 500
    SelectSQL.Strings = (
      'select A.ID, AM.NAME MAKE_NAME, A.STATE_NUMBER, A.MILEAGE,'
      '0 MONTH_MILEAGE, A.COMMENTS'
      'from AUTOMOBILES A, AUTOMOBILE_MAKES AM'
      'where (AM.ID=A.AUTOMOBILE_MAKE_ID) and (A.VALID=1)')
    Left = 10
    Top = 64
    object ibdsMainAutomobilesID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOMOBILES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsMainAutomobilesMAKE_NAME: TIBStringField
      FieldName = 'MAKE_NAME'
      Origin = '"AUTOMOBILE_MAKES"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsMainAutomobilesSTATE_NUMBER: TIBStringField
      FieldName = 'STATE_NUMBER'
      Origin = '"AUTOMOBILES"."STATE_NUMBER"'
      Size = 15
    end
    object ibdsMainAutomobilesMILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Origin = '"AUTOMOBILES"."MILEAGE"'
    end
    object ibdsMainAutomobilesMONTH_MILEAGE: TIntegerField
      FieldName = 'MONTH_MILEAGE'
      Required = True
    end
    object ibdsMainAutomobilesCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"AUTOMOBILES"."COMMENTS"'
      Size = 100
    end
  end
  object dsMainAutomobiles: TDataSource [4]
    DataSet = ibdsMainAutomobiles
    Left = 10
    Top = 94
  end
  object ibdsTO: TIBDataSet [5]
    Database = frmDM.dbMain
    Transaction = trMain
    OnNewRecord = ibdsTONewRecord
    BufferChunks = 50
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TO12'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TO12'
      '  (ID, NUMBER, TO12_DATE, AUTOMOBILE_ID, TO12_KIND, COMMENTS)'
      'values'
      
        '  (:ID, :NUMBER, :TO12_DATE, :AUTOMOBILE_ID, :TO12_KIND, :COMMEN' +
        'TS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NUMBER,'
      '  TO12_DATE,'
      '  AUTOMOBILE_ID,'
      '  TO12_KIND,'
      '  COMMENTS'
      'from TO12 '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select T.ID, T.NUMBER, T.TO12_DATE, T.AUTOMOBILE_ID, T.TO12_KIND' +
        ', T.COMMENTS'
      'from TO12 T'
      'where T.AUTOMOBILE_ID = :ID')
    ModifySQL.Strings = (
      'update TO12'
      'set'
      '  NUMBER = :NUMBER,'
      '  TO12_DATE = :TO12_DATE,'
      '  TO12_KIND = :TO12_KIND,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainAutomobiles
    Left = 39
    Top = 64
    object ibdsTOID: TIntegerField
      FieldName = 'ID'
      Origin = '"TO12"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsTONUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"TO12"."NUMBER"'
      Required = True
    end
    object ibdsTOTO12_DATE: TDateField
      FieldName = 'TO12_DATE'
      Origin = '"TO12"."TO12_DATE"'
      Required = True
    end
    object ibdsTOAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = '"TO12"."AUTOMOBILE_ID"'
      Required = True
    end
    object ibdsTOTO12_KIND: TIntegerField
      FieldName = 'TO12_KIND'
      Origin = '"TO12"."TO12_KIND"'
      Required = True
    end
    object ibdsTOCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"TO12"."COMMENTS"'
      Size = 100
    end
  end
  object dsTO: TDataSource [6]
    DataSet = ibdsTO
    Left = 39
    Top = 94
  end
  object ibdsRepairs: TIBDataSet [7]
    Database = frmDM.dbMain
    Transaction = trMain
    OnNewRecord = ibdsRepairsNewRecord
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from REPAIRS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into REPAIRS'
      '  (ID, NUMBER, START_DATE, STOP_DATE, AUTOMOBILE_ID, PART_ID, '
      'COMMENTS)'
      'values'
      
        '  (:ID, :NUMBER, :START_DATE, :STOP_DATE, :AUTOMOBILE_ID, :PART_' +
        'ID,'
      ':COMMENTS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NUMBER,'
      '  START_DATE,'
      '  STOP_DATE,'
      '  AUTOMOBILE_ID,'
      '  PART_ID,'
      '  COMMENTS'
      'from REPAIRS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select R.ID, R.NUMBER, R.START_DATE, R.STOP_DATE, R.AUTOMOBILE_I' +
        'D, R.PART_ID, R.COMMENTS'
      'from REPAIRS R'
      'where (R.AUTOMOBILE_ID = :ID)')
    ModifySQL.Strings = (
      'update REPAIRS'
      'set'
      '  NUMBER = :NUMBER,'
      '  START_DATE = :START_DATE,'
      '  STOP_DATE = :STOP_DATE,'
      '  AUTOMOBILE_ID = :AUTOMOBILE_ID,'
      '  PART_ID = :PART_ID,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainAutomobiles
    Left = 68
    Top = 64
    object ibdsRepairsID: TIntegerField
      FieldName = 'ID'
      Origin = '"REPAIRS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsRepairsNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"REPAIRS"."NUMBER"'
      Required = True
    end
    object ibdsRepairsSTART_DATE: TDateField
      FieldName = 'START_DATE'
      Origin = '"REPAIRS"."START_DATE"'
      Required = True
    end
    object ibdsRepairsSTOP_DATE: TDateField
      FieldName = 'STOP_DATE'
      Origin = '"REPAIRS"."STOP_DATE"'
      Required = True
    end
    object ibdsRepairsAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = '"REPAIRS"."AUTOMOBILE_ID"'
      Required = True
    end
    object ibdsRepairsPART_ID: TIntegerField
      FieldName = 'PART_ID'
      Origin = '"REPAIRS"."PART_ID"'
      Required = True
    end
    object ibdsRepairsCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"REPAIRS"."COMMENTS"'
      Size = 100
    end
  end
  object dsRepairs: TDataSource [8]
    DataSet = ibdsRepairs
    Left = 68
    Top = 94
  end
  object ibdsParts: TIBDataSet [9]
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      'select P.ID, P.NAME, P.SHORT_NAME, P.COMMENTS'
      'from PARTS P'
      'where (P.VALID=1)')
    Left = 97
    Top = 64
    object ibdsPartsID: TIntegerField
      FieldName = 'ID'
      Origin = '"PARTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsPartsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PARTS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsPartsSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Origin = '"PARTS"."SHORT_NAME"'
      Required = True
      Size = 10
    end
    object ibdsPartsCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"PARTS"."COMMENTS"'
      Size = 100
    end
  end
  object dsParts: TDataSource [10]
    DataSet = ibdsParts
    Left = 97
    Top = 94
  end
  object cxGridPopupMenu1: TcxGridPopupMenu [11]
    Grid = cxGrid
    PopupMenus = <>
    Left = 280
    Top = 16
  end
  inherited ibsGen_ID: TIBSQL
    Left = 130
    Top = 68
  end
end
