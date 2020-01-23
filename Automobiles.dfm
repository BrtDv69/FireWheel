inherited frmAutomobiles: TfrmAutomobiles
  Left = 371
  Top = 150
  Width = 689
  Height = 457
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1072#1074#1090#1086#1084#1072#1096#1080#1085
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0077770000000000007777000000000007788770000000000778877000000000
    078778700000000007877870000000700787787007BBBB700787787007000BB0
    077887700BBBBBB0077887700BB00BB7007777007BBBBBB7007777007BB00BBB
    00000000BBBBBBBB00000000BBB007BBB700007BBBBBBBBBB700007BBBB0077B
    77777BBBBBBBBBBBBBBBBBBBBB000777BBBBB7BBB00000000000000000000777
    BBBBB7BB030BBBBBBBBBBBBBBB000777BBBB77B030BB8BBB8BBB8BBB8BB00777
    BBBBB7B030BB8BBB8BBB8BBB8BB00BB0000000B030BB8BBB8BBB8BBB8BB00008
    8999990030BB8BBB8BBB8BBB8BB000888899998030BB8BBB8BBB8BBB8BB00088
    8889988030BB8BBB8BBB8BBB8BB000888888888030BB8BBB8BBB8BBB8BB00088
    8888388030BB8BBB8BBB8BBB8BB0000888C3388030BB8BBB8BBB8BBB8BB00008
    BBBBB88030BB8BBB8BBB8BBB8BB000088BBBB88030BB8BBB8BBB8BBB8BB00008
    8888888030BB8BBB8BBB8BBB8BB00000000000030BBBBBBBBBBBBBBBBB000000
    00000000BBB0000000000000000000000000000BBB000000000000000000000B
    BBBBBBBB00000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FC3F
    FC3FF00FF00FF00FF00FE007E007E007E0078000000100000000000000000000
    0000000000000000000100000003000000010000000000000000000000008000
    000080000000800000008000000080000000C0000000C0000000C0000000C000
    0000E0000001FFE00003E001FFFFC003FFFFE00FFFFFFFFFFFFFFFFFFFFF}
  KeyPreview = True
  OldCreateOrder = True
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 662
    Height = 430
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlComments: TPanel
      Left = 0
      Top = 366
      Width = 662
      Height = 64
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label339: TLabel
        Left = 0
        Top = 0
        Width = 662
        Height = 16
        Align = alTop
        AutoSize = False
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080':'
        FocusControl = dbmComments
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbmComments: TcxDBMemo
        Left = 0
        Top = 16
        Align = alClient
        DataBinding.DataField = 'COMMENTS'
        DataBinding.DataSource = dsMainTypes
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 48
        Width = 662
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 358
      Width = 662
      Height = 8
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salBottom
      ResizeUpdate = True
      Control = pnlComments
    end
    object grdMain: TcxGrid
      Left = 224
      Top = 0
      Width = 438
      Height = 358
      Align = alClient
      TabOrder = 2
      OnFocusedViewChanged = grdMainFocusedViewChanged
      object tvMainTypes: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = tvMainTypesFocusedRecordChanged
        DataController.DataSource = dsMainTypes
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Column = tvMainTypesCOMMENTS
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainTypesNAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 1
          SortOrder = soAscending
          Width = 328
        end
        object tvMainTypesMAINTENANCE_MILEAGE: TcxGridDBColumn
          Caption = #1055#1088#1086#1073#1077#1075' '#1076#1086' '#1058#1054'1'
          DataBinding.FieldName = 'MAINTENANCE_MILEAGE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 109
        end
        object tvMainTypesVALID: TcxGridDBColumn
          Caption = #1044#1077#1081#1089#1090'.'
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.DisplayUnchecked = #1053#1077' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 70
        end
        object tvMainTypesCOMMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object tvMainMakes: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = tvMainTypesFocusedRecordChanged
        DataController.DataSource = dsMainMakes
        DataController.DetailKeyFieldNames = 'AUTOMOBILE_TYPES_ID'
        DataController.KeyFieldNames = 'ID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Column = tvMainMakesCOMMENTS
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainMakesNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 1
          SortOrder = soAscending
        end
        object tvMainMakesMAIN_FUEL_ID: TcxGridDBColumn
          Caption = #1054#1089#1085'. '#1090#1086#1087#1083'.'
          DataBinding.FieldName = 'MAIN_FUEL_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListSource = dsFuel
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainMakesSPECIAL_FUEL_ID: TcxGridDBColumn
          Caption = #1057#1087#1077#1094'. '#1090#1086#1087#1083'.'
          DataBinding.FieldName = 'SPECIAL_FUEL_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListSource = dsFuel
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainMakesMAIN_TYRE_AMOUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1093#1086#1076#1086#1074#1099#1093
          DataBinding.FieldName = 'MAIN_TYRE_AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainMakesSPARE_TYRE_AMOUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1072#1089#1085#1099#1093
          DataBinding.FieldName = 'SPARE_TYRE_AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainMakesACCUMULATOR_AMOUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1072#1082#1082#1091#1084
          DataBinding.FieldName = 'ACCUMULATOR_AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainMakesVALID: TcxGridDBColumn
          Caption = #1044#1077#1081#1089#1090'.'
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1072#1103
          Properties.DisplayUnchecked = #1053#1077' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1072#1103
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soDescending
        end
        object tvMainMakesCOMMENTS: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object tvMainAutomobiles: TcxGridDBTableView
        DragMode = dmAutomatic
        OnStartDrag = tvMainAutomobilesStartDrag
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = tvMainTypesFocusedRecordChanged
        DataController.DataSource = dsMainAutomobiles
        DataController.DetailKeyFieldNames = 'AUTOMOBILE_MAKE_ID'
        DataController.KeyFieldNames = 'ID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Column = tvMainAutomobilesCOMMENTS
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainAutomobilesGARAGE_NUMBER: TcxGridDBColumn
          Caption = #1043#1072#1088#1072#1078#1085#1099#1081' '#8470
          DataBinding.FieldName = 'GARAGE_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesSTATE_NUMBER: TcxGridDBColumn
          Caption = #1043#1086#1089'. '#8470
          DataBinding.FieldName = 'STATE_NUMBER'
          PropertiesClassName = 'TcxMaskEditProperties'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 1
          SortOrder = soAscending
        end
        object tvMainAutomobilesINVENTORY_NUMBER: TcxGridDBColumn
          Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#8470
          DataBinding.FieldName = 'INVENTORY_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesMANUFACTURE_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072
          DataBinding.FieldName = 'MANUFACTURE_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesSALARY_RATE: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092', '#1088#1091#1073'.'
          DataBinding.FieldName = 'SALARY_RATE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesCOLUMN_NUMBER: TcxGridDBColumn
          Caption = #1050#1086#1083#1086#1085#1085#1072
          DataBinding.FieldName = 'COLUMN_NUMBER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'COLUMN_NUMBER'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsColumns
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesVALID: TcxGridDBColumn
          Caption = #1044#1077#1081#1089#1090'.'
          DataBinding.FieldName = 'VALID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.DisplayUnchecked = #1053#1077' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1081
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soDescending
        end
        object tvMainAutomobilesCOMMENTS: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainAutomobilesAUTOMOBILE_MAKE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'AUTOMOBILE_MAKE_ID'
          Visible = False
          Hidden = True
        end
        object tvMainAutomobilesID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Hidden = True
        end
      end
      object tvMainFuels: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = tvMainFuelsCustomDrawCell
        OnEditing = tvMainFuelsEditing
        OnFocusedRecordChanged = tvMainTypesFocusedRecordChanged
        DataController.DataSource = dsMainAutomobileFuels
        DataController.DetailKeyFieldNames = 'AUTOMOBILE_ID'
        DataController.KeyFieldNames = 'ID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Column = tvMainFuelsCOMMENTS
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        object tvMainFuelsFUEL_ID: TcxGridDBColumn
          Caption = #1058#1086#1087#1083#1080#1074#1086
          DataBinding.FieldName = 'FUEL_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsFuel
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soAscending
        end
        object tvMainFuelsIS_FOR_ENGINE: TcxGridDBColumn
          Caption = #1044#1083#1103' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
          DataBinding.FieldName = 'IS_FOR_ENGINE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1076#1074#1080#1075#1072#1090#1077#1083#1077#1084
          Properties.DisplayUnchecked = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1076#1074#1080#1075#1072#1090#1077#1083#1077#1084
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainFuelsFUEL_CONSUMPTION_KM: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072', '#1083'/100 '#1082#1084'.'
          DataBinding.FieldName = 'FUEL_CONSUMPTION_KM'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainFuelsFUEL_CONSUMPTION_T_KM: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072', '#1083'/100 '#1090'.'#1082#1084'.'
          DataBinding.FieldName = 'FUEL_CONSUMPTION_T_KM'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainFuelsIS_FOR_OVERS: TcxGridDBColumn
          Caption = #1044#1083#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
          DataBinding.FieldName = 'IS_FOR_OVERS'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077#1084
          Properties.DisplayUnchecked = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077#1084
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainFuelsFUEL_CONSUMPTION_HR: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072', '#1083'/'#1095#1072#1089'.'
          DataBinding.FieldName = 'FUEL_CONSUMPTION_HR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvMainFuelsCOMMENTS: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object lvMainTypes: TcxGridLevel
        GridView = tvMainTypes
      end
      object lvMainMakes: TcxGridLevel
        GridView = tvMainMakes
        Visible = False
      end
      object lvMainAutomobiles: TcxGridLevel
        GridView = tvMainAutomobiles
        Visible = False
      end
      object lvMainFuels: TcxGridLevel
        GridView = tvMainFuels
        Visible = False
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 216
      Top = 0
      Width = 8
      Height = 358
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1088#1077#1074#1086' '#1040#1074#1090#1086#1084#1072#1096#1080#1085
      HotZoneClassName = 'TcxMediaPlayer9Style'
      ResizeUpdate = True
      Control = tlTypesMakesAutomobiles
    end
    object tlTypesMakesAutomobiles: TcxTreeList
      Left = 0
      Top = 0
      Width = 216
      Height = 358
      Align = alLeft
      Bands = <
        item
        end>
      BufferedPaint = False
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsBehavior.IncSearch = True
      OptionsCustomizing.BandCustomizing = False
      OptionsCustomizing.ColumnMoving = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.HideFocusRect = False
      OptionsView.CellAutoHeight = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      TabOrder = 4
      OnCustomDrawCell = tlTypesMakesAutomobilesCustomDrawCell
      OnDragDrop = tlTypesMakesAutomobilesDragDrop
      OnDragOver = tlTypesMakesAutomobilesDragOver
      OnFocusedNodeChanged = tlTypesMakesAutomobilesFocusedNodeChanged
      Data = {
        02000400BE0000000F00000044617461436F6E74726F6C6C6572310400000012
        000000546378537472696E6756616C7565547970651200000054637853747269
        6E6756616C75655479706513000000546378496E746567657256616C75655479
        706513000000546378496E746567657256616C75655479706501000000000004
        000000D2E8EFFB00100000004155544F4D4F42494C455F545950455300000000
        0000010000000100000000000000100000000000000000000000FFFFFFFF}
      object tlTypesMakesAutomobilesName: TcxTreeListColumn
        Caption.AlignHorz = taCenter
        Caption.AlignVert = vaCenter
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.ValueType = 'String'
        Options.CellEndEllipsis = False
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlTypesMakesAutomobilesTableName: TcxTreeListColumn
        Visible = False
        Caption.Text = #1058#1072#1073#1083#1080#1094#1072
        DataBinding.ValueType = 'String'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlTypesMakesAutomobilesID: TcxTreeListColumn
        Visible = False
        Caption.Text = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        DataBinding.ValueType = 'Integer'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object tlTypesMakesAutomobilesValid: TcxTreeListColumn
        Visible = False
        Caption.Text = #1044#1077#1081#1089#1090'.'
        DataBinding.ValueType = 'Integer'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 662
    Top = 0
    Width = 19
    Height = 430
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbCancelAutomobiles: TSpeedButton
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
      OnClick = sbCancelAutomobilesClick
    end
    object sbApplyAutomobiles: TSpeedButton
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
      OnClick = sbApplyAutomobilesClick
    end
    object sbDeleteAutomobiles: TSpeedButton
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
      OnClick = sbDeleteAutomobilesClick
    end
    object sbAddAutomobiles: TSpeedButton
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
      OnClick = sbAddAutomobilesClick
    end
    object sbLastAutomobiles: TSpeedButton
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
      OnClick = sbLastAutomobilesClick
    end
    object sbNextAutomobiles: TSpeedButton
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
      OnClick = sbNextAutomobilesClick
    end
    object sbPriorAutomobiles: TSpeedButton
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
      OnClick = sbPriorAutomobilesClick
    end
    object sbFirstAutomobiles: TSpeedButton
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
      OnClick = sbFirstAutomobilesClick
    end
    object sbCloseAutomobiles: TSpeedButton
      Left = 0
      Top = 171
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
      OnClick = sbCloseAutomobilesClick
    end
    object sbFilterAutomobiles: TSpeedButton
      Left = 0
      Top = 152
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1060#1080#1083#1100#1090#1088'/'#1087#1086#1080#1089#1082
      AllowAllUp = True
      GroupIndex = 1
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
      Visible = False
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Left = 18
    Top = 31
  end
  inherited ibsGen_ID: TIBSQL
    Left = 105
    Top = 31
  end
  object ibdsMainTypes: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainAutomobilesAfterDelete
    OnNewRecord = ibdsMainTypesNewRecord
    BufferChunks = 500
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from AUTOMOBILE_TYPES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AUTOMOBILE_TYPES'
      '  (ID, NAME, MAINTENANCE_MILEAGE, VALID, COMMENTS)'
      'values'
      '  (:ID, :NAME, :MAINTENANCE_MILEAGE, :VALID, :COMMENTS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  MAINTENANCE_MILEAGE,'
      '  VALID,'
      '  COMMENTS,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from AUTOMOBILE_TYPES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select A_T.ID, A_T.NAME, A_T.MAINTENANCE_MILEAGE, A_T.VALID,'
      'A_T.COMMENTS'
      'from AUTOMOBILE_TYPES A_T')
    ModifySQL.Strings = (
      'update AUTOMOBILE_TYPES'
      'set'
      '  NAME = :NAME,'
      '  MAINTENANCE_MILEAGE = :MAINTENANCE_MILEAGE,'
      '  VALID = :VALID,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    Left = 18
    Top = 60
    object ibdsMainTypesID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOMOBILE_TYPES"."ID"'
    end
    object ibdsMainTypesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"AUTOMOBILE_TYPES"."NAME"'
      Size = 100
    end
    object ibdsMainTypesMAINTENANCE_MILEAGE: TIntegerField
      FieldName = 'MAINTENANCE_MILEAGE'
      Origin = '"AUTOMOBILE_TYPES"."MAINTENANCE_MILEAGE"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainTypesVALID: TIntegerField
      FieldName = 'VALID'
      Origin = '"AUTOMOBILE_TYPES"."VALID"'
    end
    object ibdsMainTypesCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"AUTOMOBILE_TYPES"."COMMENTS"'
      Size = 100
    end
  end
  object dsMainTypes: TDataSource
    DataSet = ibdsMainTypes
    OnStateChange = dsMainTypesStateChange
    Left = 18
    Top = 89
  end
  object ibdsMainMakes: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainAutomobilesAfterDelete
    OnNewRecord = ibdsMainMakesNewRecord
    BufferChunks = 500
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from AUTOMOBILE_MAKES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AUTOMOBILE_MAKES'
      
        '  (ID, AUTOMOBILE_TYPES_ID, NAME, MAIN_TYRE_AMOUNT, SPARE_TYRE_A' +
        'MOUNT, '
      
        '   ACCUMULATOR_AMOUNT, MAIN_FUEL_ID, SPECIAL_FUEL_ID, VALID, COM' +
        'MENTS)'
      'values'
      
        '  (:ID, :AUTOMOBILE_TYPES_ID, :NAME, :MAIN_TYRE_AMOUNT, :SPARE_T' +
        'YRE_AMOUNT, '
      
        '   :ACCUMULATOR_AMOUNT, :MAIN_FUEL_ID, :SPECIAL_FUEL_ID, :VALID,' +
        ' :COMMENTS)')
    RefreshSQL.Strings = (
      
        'select AM.ID, AM.AUTOMOBILE_TYPES_ID, AM.NAME, AM.MAIN_TYRE_AMOU' +
        'NT, AM.SPARE_TYRE_AMOUNT,'
      
        'AM.ACCUMULATOR_AMOUNT, AM.MAIN_FUEL_ID, AM.SPECIAL_FUEL_ID, AM.V' +
        'ALID, AM.COMMENTS'
      'from AUTOMOBILE_MAKES AM'
      'where (AM.ID = :ID)')
    SelectSQL.Strings = (
      
        'select AM.ID, AM.AUTOMOBILE_TYPES_ID, AM.NAME, AM.MAIN_TYRE_AMOU' +
        'NT, AM.SPARE_TYRE_AMOUNT,'
      
        'AM.ACCUMULATOR_AMOUNT, AM.MAIN_FUEL_ID, AM.SPECIAL_FUEL_ID, AM.V' +
        'ALID, AM.COMMENTS'
      'from AUTOMOBILE_MAKES AM'
      'where (AM.AUTOMOBILE_TYPES_ID=:ID)')
    ModifySQL.Strings = (
      'update AUTOMOBILE_MAKES'
      'set'
      '  NAME = :NAME,'
      '  MAIN_TYRE_AMOUNT = :MAIN_TYRE_AMOUNT,'
      '  SPARE_TYRE_AMOUNT = :SPARE_TYRE_AMOUNT,'
      '  ACCUMULATOR_AMOUNT = :ACCUMULATOR_AMOUNT,'
      '  MAIN_FUEL_ID = :MAIN_FUEL_ID,'
      '  SPECIAL_FUEL_ID = :SPECIAL_FUEL_ID,'
      '  VALID = :VALID,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainTypes
    Left = 47
    Top = 60
    object ibdsMainMakesNAME: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 100
      FieldName = 'NAME'
      Origin = '"AUTOMOBILE_MAKES"."NAME"'
      Size = 100
    end
    object ibdsMainMakesMAIN_TYRE_AMOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'~'#1093#1086#1076#1086#1074#1099#1093
      DisplayWidth = 10
      FieldName = 'MAIN_TYRE_AMOUNT'
      Origin = '"AUTOMOBILE_MAKES"."MAIN_TYRE_AMOUNT"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainMakesSPARE_TYRE_AMOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'~'#1079#1072#1087#1072#1089#1085#1099#1093
      DisplayWidth = 10
      FieldName = 'SPARE_TYRE_AMOUNT'
      Origin = '"AUTOMOBILE_MAKES"."SPARE_TYRE_AMOUNT"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainMakesACCUMULATOR_AMOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'~'#1072#1082#1082#1091#1084
      DisplayWidth = 10
      FieldName = 'ACCUMULATOR_AMOUNT'
      Origin = '"AUTOMOBILE_MAKES"."ACCUMULATOR_AMOUNT"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainMakesVALID: TIntegerField
      DisplayLabel = #1044#1077#1081#1089#1090
      DisplayWidth = 10
      FieldName = 'VALID'
      Origin = '"AUTOMOBILE_MAKES"."VALID"'
    end
    object ibdsMainMakesID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = '"AUTOMOBILE_MAKES"."ID"'
    end
    object ibdsMainMakesAUTOMOBILE_TYPES_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AUTOMOBILE_TYPES_ID'
      Origin = '"AUTOMOBILE_MAKES"."AUTOMOBILE_TYPES_ID"'
    end
    object ibdsMainMakesMAIN_FUEL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAIN_FUEL_ID'
      Origin = '"AUTOMOBILE_MAKES"."MAIN_FUEL_ID"'
    end
    object ibdsMainMakesSPECIAL_FUEL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'SPECIAL_FUEL_ID'
      Origin = '"AUTOMOBILE_MAKES"."SPECIAL_FUEL_ID"'
    end
    object ibdsMainMakesCOMMENTS: TIBStringField
      DisplayWidth = 100
      FieldName = 'COMMENTS'
      Origin = '"AUTOMOBILE_MAKES"."COMMENTS"'
      Size = 100
    end
  end
  object dsMainMakes: TDataSource
    DataSet = ibdsMainMakes
    OnStateChange = dsMainTypesStateChange
    Left = 47
    Top = 89
  end
  object ibdsMainAutomobiles: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainAutomobilesAfterDelete
    OnNewRecord = ibdsMainAutomobilesNewRecord
    BufferChunks = 500
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from AUTOMOBILES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AUTOMOBILES'
      
        '  (ID, GARAGE_NUMBER, STATE_NUMBER, INVENTORY_NUMBER, MANUFACTUR' +
        'E_DATE, '
      'SALARY_RATE, AUTOMOBILE_MAKE_ID, '
      ' COLUMN_NUMBER, '
      '   VALID, COMMENTS)'
      'values'
      
        '  (:ID, :GARAGE_NUMBER, :STATE_NUMBER, :INVENTORY_NUMBER, :MANUF' +
        'ACTURE_DATE, '
      ':SALARY_RATE, '
      '   :AUTOMOBILE_MAKE_ID, '
      '   :COLUMN_NUMBER, :VALID, :COMMENTS)')
    RefreshSQL.Strings = (
      
        'select A.ID, A.AUTOMOBILE_MAKE_ID, A.GARAGE_NUMBER, A.STATE_NUMB' +
        'ER, A.INVENTORY_NUMBER,'
      
        'A.MANUFACTURE_DATE, A.SALARY_RATE, A.COLUMN_NUMBER, A.VALID, A.C' +
        'OMMENTS'
      'from AUTOMOBILES A'
      'where  A.ID = :ID')
    SelectSQL.Strings = (
      
        'select A.ID, A.AUTOMOBILE_MAKE_ID, A.GARAGE_NUMBER, A.STATE_NUMB' +
        'ER, A.INVENTORY_NUMBER,'
      
        'A.MANUFACTURE_DATE, A.SALARY_RATE, A.COLUMN_NUMBER, A.VALID, A.C' +
        'OMMENTS'
      'from AUTOMOBILES A'
      'where (A.AUTOMOBILE_MAKE_ID=:ID)')
    ModifySQL.Strings = (
      'update AUTOMOBILES'
      'set'
      '  GARAGE_NUMBER = :GARAGE_NUMBER,'
      '  STATE_NUMBER = :STATE_NUMBER,'
      '  INVENTORY_NUMBER = :INVENTORY_NUMBER,'
      '  MANUFACTURE_DATE = :MANUFACTURE_DATE,'
      '  SALARY_RATE = :SALARY_RATE,'
      '  COLUMN_NUMBER = :COLUMN_NUMBER,'
      '  VALID = :VALID,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainMakes
    Left = 76
    Top = 60
    object ibdsMainAutomobilesGARAGE_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'GARAGE_NUMBER'
      Origin = '"AUTOMOBILES"."GARAGE_NUMBER"'
    end
    object ibdsMainAutomobilesSTATE_NUMBER: TIBStringField
      DisplayWidth = 15
      FieldName = 'STATE_NUMBER'
      Origin = '"AUTOMOBILES"."STATE_NUMBER"'
      Size = 15
    end
    object ibdsMainAutomobilesINVENTORY_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'INVENTORY_NUMBER'
      Origin = '"AUTOMOBILES"."INVENTORY_NUMBER"'
    end
    object ibdsMainAutomobilesSALARY_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'SALARY_RATE'
      Origin = '"AUTOMOBILES"."SALARY_RATE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsMainAutomobilesCOLUMN_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'COLUMN_NUMBER'
      Origin = '"AUTOMOBILES"."COLUMN_NUMBER"'
      DisplayFormat = '#,##0'
    end
    object ibdsMainAutomobilesVALID: TIntegerField
      DisplayWidth = 10
      FieldName = 'VALID'
      Origin = '"AUTOMOBILES"."VALID"'
    end
    object ibdsMainAutomobilesID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = '"AUTOMOBILES"."ID"'
    end
    object ibdsMainAutomobilesAUTOMOBILE_MAKE_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AUTOMOBILE_MAKE_ID'
      Origin = '"AUTOMOBILES"."AUTOMOBILE_MAKE_ID"'
    end
    object ibdsMainAutomobilesCOMMENTS: TIBStringField
      DisplayWidth = 100
      FieldName = 'COMMENTS'
      Origin = '"AUTOMOBILES"."COMMENTS"'
      Size = 100
    end
    object ibdsMainAutomobilesMANUFACTURE_DATE: TDateField
      FieldName = 'MANUFACTURE_DATE'
      Origin = '"AUTOMOBILES"."MANUFACTURE_DATE"'
    end
  end
  object dsMainAutomobiles: TDataSource
    DataSet = ibdsMainAutomobiles
    OnStateChange = dsMainTypesStateChange
    Left = 76
    Top = 89
  end
  object ibdsFuel: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      'select F.ID, F.NAME'
      'from FUEL F'
      'where (F.VALID=1)'
      'order by 2')
    Left = 47
    Top = 118
    object ibdsFuelNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'NAME'
      Origin = '"FUEL"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsFuelID: TIntegerField
      FieldName = 'ID'
      Origin = '"FUEL"."ID"'
      Required = True
      Visible = False
    end
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = grdMain
    PopupMenus = <>
    Left = 144
    Top = 76
  end
  object dsFuel: TDataSource
    DataSet = ibdsFuel
    Left = 47
    Top = 147
  end
  object ibdsMainAutomobileFuels: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainAutomobilesAfterDelete
    OnNewRecord = ibdsMainAutomobileFuelsNewRecord
    BufferChunks = 500
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from AUTOMOBILE_FUELS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AUTOMOBILE_FUELS'
      
        '  (AUTOMOBILE_ID, COMMENTS, FUEL_CONSUMPTION_HR, FUEL_CONSUMPTIO' +
        'N_KM, FUEL_CONSUMPTION_T_KM, '
      '   FUEL_ID, ID, IS_FOR_ENGINE, IS_FOR_OVERS)'
      'values'
      
        '  (:AUTOMOBILE_ID, :COMMENTS, :FUEL_CONSUMPTION_HR, :FUEL_CONSUM' +
        'PTION_KM, '
      
        '   :FUEL_CONSUMPTION_T_KM, :FUEL_ID, :ID, :IS_FOR_ENGINE, :IS_FO' +
        'R_OVERS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  AUTOMOBILE_ID,'
      '  FUEL_ID,'
      '  IS_FOR_ENGINE,'
      '  IS_FOR_OVERS,'
      '  FUEL_CONSUMPTION_KM,'
      '  FUEL_CONSUMPTION_T_KM,'
      '  FUEL_CONSUMPTION_HR,'
      '  COMMENTS,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from AUTOMOBILE_FUELS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select AF.ID, AF.AUTOMOBILE_ID, AF.FUEL_ID, AF.IS_FOR_ENGINE, AF' +
        '.IS_FOR_OVERS,'
      
        'AF.FUEL_CONSUMPTION_KM, AF.FUEL_CONSUMPTION_T_KM, AF.FUEL_CONSUM' +
        'PTION_HR, AF.COMMENTS'
      'from AUTOMOBILE_FUELS AF'
      'where (AF.AUTOMOBILE_ID=:ID)')
    ModifySQL.Strings = (
      'update AUTOMOBILE_FUELS'
      'set'
      '  COMMENTS = :COMMENTS,'
      '  FUEL_CONSUMPTION_HR = :FUEL_CONSUMPTION_HR,'
      '  FUEL_CONSUMPTION_KM = :FUEL_CONSUMPTION_KM,'
      '  FUEL_CONSUMPTION_T_KM = :FUEL_CONSUMPTION_T_KM,'
      '  FUEL_ID = :FUEL_ID,'
      '  IS_FOR_ENGINE = :IS_FOR_ENGINE,'
      '  IS_FOR_OVERS = :IS_FOR_OVERS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainAutomobiles
    Left = 105
    Top = 60
    object ibdsMainAutomobileFuelsID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOMOBILE_FUELS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainAutomobileFuelsFUEL_ID: TIntegerField
      FieldName = 'FUEL_ID'
      Origin = '"AUTOMOBILE_FUELS"."FUEL_ID"'
    end
    object ibdsMainAutomobileFuelsIS_FOR_ENGINE: TIntegerField
      FieldName = 'IS_FOR_ENGINE'
      Origin = '"AUTOMOBILE_FUELS"."IS_FOR_ENGINE"'
      OnChange = ibdsMainAutomobileFuelsIS_FOR_ENGINEChange
    end
    object ibdsMainAutomobileFuelsIS_FOR_OVERS: TIntegerField
      FieldName = 'IS_FOR_OVERS'
      Origin = '"AUTOMOBILE_FUELS"."IS_FOR_OVERS"'
      OnChange = ibdsMainAutomobileFuelsIS_FOR_OVERSChange
    end
    object ibdsMainAutomobileFuelsFUEL_CONSUMPTION_KM: TFloatField
      FieldName = 'FUEL_CONSUMPTION_KM'
      Origin = '"AUTOMOBILE_FUELS"."FUEL_CONSUMPTION_KM"'
    end
    object ibdsMainAutomobileFuelsFUEL_CONSUMPTION_T_KM: TFloatField
      FieldName = 'FUEL_CONSUMPTION_T_KM'
      Origin = '"AUTOMOBILE_FUELS"."FUEL_CONSUMPTION_T_KM"'
    end
    object ibdsMainAutomobileFuelsFUEL_CONSUMPTION_HR: TFloatField
      FieldName = 'FUEL_CONSUMPTION_HR'
      Origin = '"AUTOMOBILE_FUELS"."FUEL_CONSUMPTION_HR"'
    end
    object ibdsMainAutomobileFuelsCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"AUTOMOBILE_FUELS"."COMMENTS"'
      Size = 100
    end
    object ibdsMainAutomobileFuelsAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = '"AUTOMOBILE_FUELS"."AUTOMOBILE_ID"'
      Required = True
    end
  end
  object dsMainAutomobileFuels: TDataSource
    DataSet = ibdsMainAutomobileFuels
    OnStateChange = dsMainTypesStateChange
    Left = 105
    Top = 89
  end
  object ibdsColumns: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      'select ID, COLUMN_NUMBER'
      'from COLUMNS'
      'ORDER BY 2')
    Left = 75
    Top = 118
    object ibdsColumnsID: TIntegerField
      FieldName = 'ID'
      Origin = '"COLUMNS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsColumnsCOLUMN_NUMBER: TIntegerField
      FieldName = 'COLUMN_NUMBER'
      Origin = '"COLUMNS"."COLUMN_NUMBER"'
      Required = True
    end
  end
  object dsColumns: TDataSource
    DataSet = ibdsColumns
    Left = 75
    Top = 147
  end
end
