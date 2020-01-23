inherited frmRoadSheets: TfrmRoadSheets
  Left = 396
  Top = 232
  Width = 797
  Height = 464
  Caption = #1055#1091#1090#1077#1074#1099#1077' '#1083#1080#1089#1090#1099
  KeyPreview = True
  OldCreateOrder = True
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel [0]
    Left = 3
    Top = 2
    Width = 37
    Height = 16
    Caption = #1057#1077#1088#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [1]
    Left = 11
    Top = 10
    Width = 37
    Height = 16
    Caption = #1057#1077#1088#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TcxPageControl [2]
    Left = 0
    Top = 0
    Width = 789
    Height = 437
    ActivePage = tsRoadSheetsList
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookAndFeel.NativeStyle = True
    Options = [pcoTopToBottomText]
    ParentFont = False
    Style = 1
    TabOrder = 0
    TabPosition = tpRight
    OnChange = PageControl1Change
    OnPageChanging = PageControl1PageChanging
    ClientRectBottom = 435
    ClientRectLeft = 2
    ClientRectRight = 764
    ClientRectTop = 2
    object tsRoadSheetsList: TcxTabSheet
      Caption = #1057#1087#1080#1089#1086#1082
      object Panel4: TPanel
        Left = 743
        Top = 0
        Width = 19
        Height = 433
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object sbCancelRoadSheetsList: TSpeedButton
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
          OnClick = sbCancelRoadSheetsListClick
        end
        object sbApplyRoadSheetsList: TSpeedButton
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
          OnClick = sbApplyRoadSheetsListClick
        end
        object sbDeleteRoadSheetsList: TSpeedButton
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
          OnClick = sbDeleteRoadSheetsListClick
        end
        object sbAddRoadSheetsList: TSpeedButton
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
          OnClick = sbAddRoadSheetsListClick
        end
        object sbLastRoadSheetsList: TSpeedButton
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
          OnClick = sbLastRoadSheetsListClick
        end
        object sbNextRoadSheetsList: TSpeedButton
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
          OnClick = sbNextRoadSheetsListClick
        end
        object sbPriorRoadSheetsList: TSpeedButton
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
          OnClick = sbPriorRoadSheetsListClick
        end
        object sbFirstRoadSheetsList: TSpeedButton
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
          OnClick = sbFirstRoadSheetsListClick
        end
        object sbFilterRoadSheetsList: TSpeedButton
          Left = 0
          Top = 171
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
          OnClick = sbFilterRoadSheetsListClick
        end
        object sbClose: TSpeedButton
          Left = 0
          Top = 222
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
        object sbRefreshRoadSheetsList: TSpeedButton
          Left = 0
          Top = 152
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
          OnClick = sbRefreshRoadSheetsListClick
        end
        object sbPrintRoadSheetsList: TSpeedButton
          Left = 0
          Top = 190
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
          OnClick = sbPrintRoadSheetsListClick
        end
      end
      object dbgRoadSheetsList: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 433
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object tvRoadSheetsList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMainRoadSheetsList
          DataController.Filter.OnBeforeChange = tvRoadSheetsListDataControllerFilterBeforeChange
          DataController.KeyFieldNames = 'ID'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.NewItemRowSeparatorColor = clMoneyGreen
          Preview.Column = tvRoadSheetsListCOMMENTS
          Preview.Visible = True
          Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
          OnCustomDrawColumnHeader = tvRoadSheetsListCustomDrawColumnHeader
          object tvRoadSheetsListWORK_DISTRICT_ID: TcxGridDBColumn
            Caption = #1059#1095#1072#1089#1090#1086#1082' '#1088#1072#1073#1086#1090#1099
            DataBinding.FieldName = 'WORK_DISTRICT_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'DISTRICT_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkDistricts
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListCUSTOMER_ID: TcxGridDBColumn
            Caption = #1047#1072#1082#1072#1079#1095#1080#1082
            DataBinding.FieldName = 'CUSTOMER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'CUSTOMER_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkCustomers
            Properties.MaxLength = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListWORK_KIND_ID: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
            DataBinding.FieldName = 'WORK_KIND_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Width = 50
                FieldName = 'SHORT_NAME'
              end
              item
                Width = 200
                FieldName = 'KIND_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkKinds
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListAUTOMOBILE_ID: TcxGridDBColumn
            Caption = #1040#1074#1090#1086#1084#1072#1096#1080#1085#1072
            DataBinding.FieldName = 'AUTOMOBILE_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Width = 200
                FieldName = 'AM_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsAutomobiles
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            SortIndex = 0
            SortOrder = soAscending
            Width = 81
          end
          object tvRoadSheetsListAUTOMOBILE_ID_COLUMN: TcxGridDBColumn
            Caption = #1050#1086#1083#1086#1085#1085#1072
            DataBinding.FieldName = 'COLUMN_NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListDRIVER_ID: TcxGridDBColumn
            Caption = #1042#1086#1076#1080#1090#1077#1083#1100
            DataBinding.FieldName = 'DRIVER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'FULL_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDrivers
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListSERIES: TcxGridDBColumn
            Caption = #1057#1077#1088#1080#1103' '#1087'/'#1083
            DataBinding.FieldName = 'SERIES'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListNUMBER: TcxGridDBColumn
            Caption = #8470' '#1087'/'#1083
            DataBinding.FieldName = 'NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListROAD_SHEET_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1087'/'#1083
            DataBinding.FieldName = 'ROAD_SHEET_DATE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListREAL_STOP_TIMESTAMP: TcxGridDBColumn
            DataBinding.FieldName = 'REAL_STOP_TIMESTAMP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListPAYING_TIME: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1095#1080#1074#1072#1077#1084#1086#1077' '#1074#1088#1077#1084#1103
            DataBinding.FieldName = 'PAYING_TIME'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListTOTAL_MILLEAGE: TcxGridDBColumn
            Caption = #1055#1088#1086#1073#1077#1075' '#1074#1089#1077#1075#1086', '#1082#1084
            DataBinding.FieldName = 'TOTAL_MILLEAGE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListCARRIED_MILEAGE: TcxGridDBColumn
            Caption = #1055#1088#1086#1073#1077#1075' '#1089' '#1075#1088#1091#1079#1086#1084', '#1090'*'#1082#1084
            DataBinding.FieldName = 'CARRIED_MILEAGE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListSPECIAL_TIMES: TcxGridDBColumn
            Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1087#1077#1094'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'SPECIAL_TIMES'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 125
          end
          object tvRoadSheetsListMAIN_FUEL_ID: TcxGridDBColumn
            Caption = #1054#1089#1085'. '#1090#1086#1087#1083#1080#1074#1086
            DataBinding.FieldName = 'MAIN_FUEL_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsFuel
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Width = 64
          end
          object tvRoadSheetsListDISTRIBUTED_MAIN_FUEL: TcxGridDBColumn
            Caption = #1042#1099#1076#1072#1085#1086' '#1086#1089#1085'. '#1090#1086#1087#1083#1080#1074#1072
            DataBinding.FieldName = 'DISTRIBUTED_MAIN_FUEL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListEATEN_MAIN_FUEL: TcxGridDBColumn
            Caption = #1048#1079#1088#1072#1089#1093#1086#1076#1086#1074#1072#1085#1086' '#1086#1089#1085'. '#1090#1086#1087#1083#1080#1074#1072
            DataBinding.FieldName = 'EATEN_MAIN_FUEL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListSPECIAL_FUEL_NAME: TcxGridDBColumn
            Caption = #1058#1086#1087#1083#1080#1074#1086' '#1089#1087#1077#1094'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'SPECIAL_FUELS'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Width = 64
          end
          object tvRoadSheetsListDISTRIBUTED_SPECIAL_FUEL: TcxGridDBColumn
            Caption = #1042#1099#1076#1072#1085#1086' '#1090#1086#1087#1083#1080#1074#1072' '#1089#1087#1077#1094'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'SPECIAL_FUELS_DISTRIBUTED'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListEATEN_SPECIAL_FUEL: TcxGridDBColumn
            Caption = #1048#1079#1088#1072#1089#1093#1086#1076#1086#1074#1072#1085#1086' '#1090#1086#1087#1083#1080#1074#1072' '#1089#1087#1077#1094'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'SPECIAL_FUELS_EATEN'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 126
          end
          object tvRoadSheetsListCOMMENTS: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            DataBinding.FieldName = 'COMMENTS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRoadSheetsListCREATE_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
            DataBinding.FieldName = 'CREATE_DATE'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object tvAutomobiles: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.CustomizeDialog = False
          DataController.DataSource = dsAutomobiles
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'ID'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          OnCustomDrawColumnHeader = tvRoadSheetsListCustomDrawColumnHeader
          object tvAutomobilesINVENTORY_NUMBER: TcxGridDBColumn
            Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
            DataBinding.FieldName = 'INVENTORY_NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Grouping = False
            Width = 70
          end
          object tvAutomobilesNAME: TcxGridDBColumn
            Caption = #1052#1072#1088#1082#1072
            DataBinding.FieldName = 'NAME'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soDescending
            Width = 100
          end
          object tvAutomobilesSTATE_NUMBER: TcxGridDBColumn
            Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
            DataBinding.FieldName = 'STATE_NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Grouping = False
            SortIndex = 1
            SortOrder = soDescending
            Width = 70
          end
          object tvAutomobilesVALID: TcxGridDBColumn
            Caption = #1044#1077#1081#1089#1090#1074'.'
            DataBinding.FieldName = 'VALID'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1044#1072
            Properties.DisplayUnchecked = #1053#1077#1090
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Grouping = False
            Width = 70
          end
        end
        object tlRoadSheetsList: TcxGridLevel
          GridView = tvRoadSheetsList
        end
      end
    end
    object tsRoadSheet: TcxTabSheet
      Caption = #1055#1091#1090#1077#1074#1086#1081' '#1083#1080#1089#1090
      OnExit = tsRoadSheetExit
      object Panel5: TPanel
        Left = 743
        Top = 0
        Width = 19
        Height = 433
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object sbCancelRoadSheet: TSpeedButton
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
          OnClick = sbCancelRoadSheetClick
        end
        object sbApplyRoadSheet: TSpeedButton
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
          OnClick = sbApplyRoadSheetClick
        end
        object sbDeleteRoadSheet: TSpeedButton
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
          OnClick = sbDeleteRoadSheetClick
        end
        object sbAddRoadSheet: TSpeedButton
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
          OnClick = sbAddRoadSheetClick
        end
        object sbLastRoadSheetRouts: TSpeedButton
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
          OnClick = sbLastRoadSheetRoutsClick
        end
        object sbNextRoadSheetRouts: TSpeedButton
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
          OnClick = sbNextRoadSheetRoutsClick
        end
        object sbPriorRoadSheetRouts: TSpeedButton
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
          OnClick = sbPriorRoadSheetRoutsClick
        end
        object sbFirstRoadSheetRouts: TSpeedButton
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
          OnClick = sbFirstRoadSheetRoutsClick
        end
        object SpeedButton10: TSpeedButton
          Left = 0
          Top = 183
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
        object sbPrintRoadSheet: TSpeedButton
          Left = 0
          Top = 152
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
          OnClick = sbPrintRoadSheetClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 743
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Panel3: TPanel
          Left = 0
          Top = 355
          Width = 743
          Height = 78
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            743
            78)
          object Label1: TLabel
            Left = 3
            Top = 18
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
          object RzSeparator2: TRzSeparator
            Left = 1
            Top = 17
            Width = 744
            ShowGradient = True
            ParentColor = False
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 528
            Top = -3
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = #1047#1080#1084#1085#1080#1077' '#1085#1086#1088#1084#1099' '#1088#1072#1089#1093#1086#1076#1072' '#1090#1086#1087#1083#1080#1074#1072
            DataBinding.DataField = 'WINTER_NORM'
            DataBinding.DataSource = dsMainRoadSheet
            ParentFont = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 21
            Width = 216
          end
          object edComments: TcxDBMemo
            Left = 23
            Top = 34
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'COMMENTS'
            DataBinding.DataSource = dsMainRoadSheet
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.Color = clWindow
            Style.Edges = [bLeft, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Height = 43
            Width = 723
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 743
          Height = 119
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            743
            119)
          object Label22: TLabel
            Left = 3
            Top = 4
            Width = 112
            Height = 17
            Caption = #1055#1091#1090#1077#1074#1086#1081' '#1083#1080#1089#1090
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 131
            Top = 5
            Width = 37
            Height = 16
            Caption = #1057#1077#1088#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 249
            Top = 5
            Width = 14
            Height = 16
            Caption = #8470
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 347
            Top = 5
            Width = 12
            Height = 16
            Caption = #1086#1090
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 467
            Top = 5
            Width = 76
            Height = 16
            Caption = #1040#1074#1090#1086#1084#1072#1096#1080#1085#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 99
            Top = 26
            Width = 57
            Height = 16
            Caption = #1042#1086#1076#1080#1090#1077#1083#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 484
            Top = 26
            Width = 70
            Height = 16
            Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 3
            Top = 46
            Width = 93
            Height = 16
            Caption = #1059#1095#1072#1089#1090#1086#1082' '#1088#1072#1073#1086#1090#1099
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 3
            Top = 66
            Width = 122
            Height = 16
            Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077' '#1074#1088#1077#1084#1103':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 23
            Top = 81
            Width = 109
            Height = 16
            Caption = #1042#1099#1077#1079#1076#1072' '#1080#1079' '#1075#1072#1088#1072#1078#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 242
            Top = 81
            Width = 133
            Height = 16
            Caption = #1042#1086#1079#1074#1088#1072#1097#1077#1085#1080#1103' '#1074' '#1075#1072#1088#1072#1078
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 484
            Top = 81
            Width = 130
            Height = 16
            Caption = #1054#1087#1083#1072#1095#1080#1074#1072#1077#1084#1086#1077' '#1074#1088#1077#1084#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 390
            Top = 102
            Width = 156
            Height = 16
            Caption = #1087#1088#1080' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1080' '#1074' '#1075#1072#1088#1072#1078
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 3
            Top = 102
            Width = 301
            Height = 16
            Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1087#1080#1076#1086#1084#1077#1090#1088#1072', '#1082#1084': '#1087#1088#1080' '#1074#1099#1077#1079#1076#1077' '#1080#1079' '#1075#1072#1088#1072#1078#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RzSeparator1: TRzSeparator
            Left = 0
            Top = 64
            Width = 745
            ShowGradient = True
            Anchors = [akLeft, akTop, akRight]
            ParentColor = False
          end
          object lblMileage: TLabel
            Left = 634
            Top = 102
            Width = 70
            Height = 16
            Caption = #1087#1088#1086#1073#1077#1075' 0 '#1082#1084
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 392
            Top = 46
            Width = 54
            Height = 16
            Caption = #1047#1072#1082#1072#1079#1095#1080#1082
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 3
            Top = 26
            Width = 25
            Height = 16
            Hint = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1074#1086#1076#1080#1090#1077#1083#1103
            Caption = #1058'.'#8470
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object edSeries: TcxDBTextEdit
            Left = 169
            Top = -1
            DataBinding.DataField = 'SERIES'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.CharCase = ecUpperCase
            Properties.ValidateOnEnter = True
            TabOrder = 0
            OnEnter = edSeriesEnter
            Width = 73
          end
          object edNumber: TcxDBTextEdit
            Left = 265
            Top = -1
            DataBinding.DataField = 'NUMBER'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.Alignment.Horz = taRightJustify
            Properties.ValidateOnEnter = True
            TabOrder = 1
            OnEnter = edSeriesEnter
            Width = 79
          end
          object deRoadSheetDate: TcxDBDateEdit
            Left = 363
            Top = -1
            DataBinding.DataField = 'ROAD_SHEET_DATE'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.ButtonTransparency = ebtNone
            TabOrder = 2
            OnEnter = edSeriesEnter
            Width = 97
          end
          object cbAutomobile: TcxDBLookupComboBox
            Left = 543
            Top = -1
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'AUTOMOBILE_ID'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.CharCase = ecUpperCase
            Properties.ClearKey = 46
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'AM_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsAutomobiles
            TabOrder = 3
            OnEnter = edSeriesEnter
            Width = 199
          end
          object cbDriver: TcxDBLookupComboBox
            Left = 157
            Top = 20
            DataBinding.DataField = 'DRIVER_ID'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.CharCase = ecUpperCase
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'FULL_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDrivers
            TabOrder = 5
            OnEnter = edSeriesEnter
            Width = 324
          end
          object cbWorkKind: TcxDBLookupComboBox
            Left = 555
            Top = 20
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'WORK_KIND_ID'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.CharCase = ecUpperCase
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Caption = #1057#1086#1082#1088'. '#1085#1072#1080#1084'.'
                Width = 80
                FieldName = 'SHORT_NAME'
              end
              item
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 200
                FieldName = 'KIND_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListSource = dsWorkKinds
            TabOrder = 6
            OnEnter = edSeriesEnter
            Width = 187
          end
          object cbWorkDistrict: TcxDBLookupComboBox
            Left = 99
            Top = 40
            DataBinding.DataField = 'WORK_DISTRICT_ID'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'DISTRICT_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkDistricts
            TabOrder = 7
            OnEnter = edSeriesEnter
            Width = 290
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 135
            Top = 75
            DataBinding.DataField = 'REAL_START_TIMESTAMP'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.AutoSelect = False
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = 
              '(0[1-9] | [12][0-9] | 3[01]) / (0[1-9] | 1[0-2]) / ([0-9][0-9]) ' +
              #39' '#39' (0?\d | 1\d | 2[0-3]) : [0-5]\d'
            Properties.MaxLength = 0
            Properties.OnChange = cxDBMaskEdit1PropertiesChange
            TabOrder = 9
            OnEnter = edSeriesEnter
            Width = 86
          end
          object cxDBMaskEdit2: TcxDBMaskEdit
            Left = 379
            Top = 75
            DataBinding.DataField = 'REAL_STOP_TIMESTAMP'
            DataBinding.DataSource = dsMainRoadSheet
            PopupMenu = pmClear
            Properties.AutoSelect = False
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = 
              '(0[1-9] | [12][0-9] | 3[01]) / (0[1-9] | 1[0-2]) / ([0-9][0-9]) ' +
              #39' '#39' (0?\d | 1\d | 2[0-3]) : [0-5]\d'
            Properties.MaxLength = 0
            Properties.OnChange = cxDBMaskEdit1PropertiesChange
            TabOrder = 10
            OnEnter = edSeriesEnter
            Width = 86
          end
          object edSpeedometerStop: TcxDBTextEdit
            Left = 549
            Top = 96
            DataBinding.DataField = 'SPEEDOMETER_STOP'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.BeepOnError = True
            Properties.ValidateOnEnter = True
            TabOrder = 13
            OnEnter = edSeriesEnter
            Width = 82
          end
          object edSpeedometerStart: TcxDBTextEdit
            Left = 306
            Top = 96
            DataBinding.DataField = 'SPEEDOMETER_START'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.BeepOnError = True
            Properties.ValidateOnEnter = True
            TabOrder = 12
            OnEnter = edSeriesEnter
            Width = 82
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 448
            Top = 40
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'CUSTOMER_ID'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'CUSTOMER_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWorkCustomers
            TabOrder = 8
            OnEnter = edSeriesEnter
            Width = 294
          end
          object tePayingTime: TcxDBTextEdit
            Left = 618
            Top = 75
            DataBinding.DataField = 'PAYING_TIME'
            DataBinding.DataSource = dsMainRoadSheet
            Properties.ValidateOnEnter = True
            Style.Shadow = True
            TabOrder = 11
            OnEditing = tePayingTimeEditing
            OnEnter = edSeriesEnter
            Width = 55
          end
          object cxTextEdit1: TcxTextEdit
            Left = 32
            Top = 20
            Hint = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1074#1086#1076#1080#1090#1077#1083#1103
            Properties.ValidateOnEnter = True
            TabOrder = 4
            OnEditing = cxTextEdit1Editing
            OnExit = cxTextEdit1Exit
            Width = 64
          end
        end
        object dbgRoadSheetRouts: TcxGrid
          Left = 0
          Top = 119
          Width = 743
          Height = 236
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = dbgRoadSheetRoutsEnter
          RootLevelOptions.DetailTabsPosition = dtpLeft
          OnFocusedViewChanged = dbgRoadSheetRoutsFocusedViewChanged
          object tvRoadSheetRouts: TcxGridDBTableView
            OnKeyUp = tvRoadSheetRoutsKeyUp
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            DataController.DataSource = dsRoadSheetRouts
            DataController.KeyFieldNames = 'ROUT_ID_DIRECTION'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'TOWN_RESULT_MILEAGE'
                Column = tvRoadSheetRoutsTOWN_MILEAGE
              end
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'SUBURB_RESULT_MILEAGE'
                Column = tvRoadSheetRoutsSUBURB_MILEAGE
              end
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'HIGHWAY_RESULT_MILEAGE'
                Column = tvRoadSheetRoutsHIGHWAY_MILEAGE
              end
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'UNROAD_RESULT_MILEAGE'
                Column = tvRoadSheetRoutsUNROAD_MILEAGE
              end
              item
                Column = tvRoadSheetRoutsROUT_ID_DIRECTION
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems = <>
              end>
            DataController.Summary.OnAfterSummary = tvRoadSheetRoutsDataControllerSummaryAfterSummary
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.DataRowSizing = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            OptionsView.NewItemRow = True
            OptionsView.NewItemRowInfoText = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1074#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1090#1091#1090'!'
            OptionsView.NewItemRowSeparatorColor = clMoneyGreen
            Preview.Column = tvRoadSheetRoutsCOMMENTS
            Preview.Visible = True
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvRoadSheetsListCustomDrawColumnHeader
            object tvRoadSheetRoutsROUT_ID_DIRECTION: TcxGridDBColumn
              Caption = #1052#1072#1088#1096#1088#1091#1090
              DataBinding.FieldName = 'ROUT_ID_DIRECTION'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.ClearKey = 46
              Properties.DropDownAutoSize = True
              Properties.DropDownSizeable = True
              Properties.IncrementalFiltering = False
              Properties.View = dbgRoadSheetRoutsLookUpRouts
              Properties.KeyFieldNames = 'ID_DIRECTION'
              Properties.ListFieldItem = dbgRoadSheetRoutsLookUpRoutsROUT_NAME
              Properties.PostPopupValueOnTab = True
              Properties.OnPopup = tvRoadSheetRoutsROUT_ID_DIRECTIONPropertiesPopup
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 173
            end
            object tvRoadSheetRoutsROUT_COUNT: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'ROUT_COUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 54
            end
            object tvRoadSheetRoutsTOWN_COUNT: TcxGridDBColumn
              DataBinding.FieldName = 'TOWN_COUNT'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Hidden = True
            end
            object tvRoadSheetRoutsTOWN_MILEAGE: TcxGridDBColumn
              Caption = #1043#1086#1088#1086#1076', '#1082#1084
              DataBinding.FieldName = 'TOWN_MILEAGE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object tvRoadSheetRoutsSUBURB_COUNT: TcxGridDBColumn
              DataBinding.FieldName = 'SUBURB_COUNT'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Hidden = True
            end
            object tvRoadSheetRoutsSUBURB_MILEAGE: TcxGridDBColumn
              Caption = #1055#1088#1080#1075#1086#1088#1086#1076', '#1082#1084
              DataBinding.FieldName = 'SUBURB_MILEAGE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object tvRoadSheetRoutsHIGHWAY_COUNT: TcxGridDBColumn
              DataBinding.FieldName = 'HIGHWAY_COUNT'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Hidden = True
            end
            object tvRoadSheetRoutsHIGHWAY_MILEAGE: TcxGridDBColumn
              Caption = #1040#1074#1090#1086#1090#1088#1072#1089#1089#1072', '#1082#1084
              DataBinding.FieldName = 'HIGHWAY_MILEAGE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 101
            end
            object tvRoadSheetRoutsUNROAD_COUNT: TcxGridDBColumn
              DataBinding.FieldName = 'UNROAD_COUNT'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Hidden = True
            end
            object tvRoadSheetRoutsUNROAD_MILEAGE: TcxGridDBColumn
              Caption = #1041#1077#1079#1076#1086#1088#1086#1078#1100#1077', '#1082#1084
              DataBinding.FieldName = 'UNROAD_MILEAGE'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 121
            end
            object tvRoadSheetRoutsCARRIED_FREIGHT: TcxGridDBColumn
              Caption = #1043#1088#1091#1079', '#1090'.'
              DataBinding.FieldName = 'CARRIED_FREIGHT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
            object tvRoadSheetRoutsCOMMENTS: TcxGridDBColumn
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object dbgRoadSheetRoutsLookUpRouts: TcxGridDBTableView
            OnKeyUp = dbgRoadSheetRoutsLookUpRoutsKeyUp
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsRoutes
            DataController.KeyFieldNames = 'ID_DIRECTION'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = dbgRoadSheetRoutsLookUpRoutsSHORT_NAME
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object dbgRoadSheetRoutsLookUpRoutsSHORT_NAME: TcxGridDBColumn
              Caption = #1057#1086#1082#1088'. '#1085#1072#1080#1084'.'
              DataBinding.FieldName = 'SHORT_NAME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 40
            end
            object dbgRoadSheetRoutsLookUpRoutsROUT_NAME: TcxGridDBColumn
              Caption = #1052#1072#1088#1096#1088#1091#1090
              DataBinding.FieldName = 'ROUT_NAME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 200
            end
            object dbgRoadSheetRoutsLookUpRoutsCOMMENTS: TcxGridDBColumn
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 200
            end
          end
          object tvRoadSheetFuels: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvRoadSheetFuelsCustomDrawCell
            OnEditing = tvRoadSheetFuelsEditing
            DataController.DataSource = dsRoadSheetFuels
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.DataRowSizing = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Preview.Column = tvRoadSheetFuelsCOMMENTS
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            object tvRoadSheetFuelsFUEL_ID: TcxGridDBColumn
              DataBinding.FieldName = 'FUEL_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsFuel
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              SortIndex = 1
              SortOrder = soAscending
              Width = 103
            end
            object tvRoadSheetFuelsIS_FOR_ENGINE: TcxGridDBColumn
              DataBinding.FieldName = 'IS_FOR_ENGINE'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 80
            end
            object tvRoadSheetFuelsSPECIAL_TIME: TcxGridDBColumn
              DataBinding.FieldName = 'SPECIAL_TIME'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 128
            end
            object tvRoadSheetFuelsSTART_AMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'START_AMOUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 90
            end
            object tvRoadSheetFuelsDISTRIBUTED_AMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'DISTRIBUTED_AMOUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 90
            end
            object tvRoadSheetFuelsEATEN_AMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'EATEN_AMOUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 90
            end
            object tvRoadSheetFuelsSTOP_AMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'STOP_AMOUNT'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 90
            end
            object tvRoadSheetFuelsCOMMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object glRoadSheetRouts: TcxGridLevel
            Caption = '&'#1052#1072#1088#1096#1088#1091#1090#1099
            GridView = tvRoadSheetRouts
          end
          object glRoadSheetFuels: TcxGridLevel
            Caption = '&'#1058#1086#1087#1083#1080#1074#1086
            GridView = tvRoadSheetFuels
          end
        end
      end
    end
  end
  object pnlMessage: TPanel [3]
    Left = 205
    Top = 203
    Width = 215
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Caption = #1055#1086#1083#1091#1095#1077#1085#1080#1077' '#1085#1086#1084#1077#1088#1072'. '#1054#1078#1080#1076#1072#1085#1080#1077' '#1086#1095#1077#1088#1077#1076#1080'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  inherited trMain: TIBTransaction
    Active = True
    DefaultDatabase = frmDM.dbMain
    DefaultAction = TARollback
    Top = 0
  end
  inherited ibsGen_ID: TIBSQL
    Left = 98
    Top = 34
  end
  object GridPopupMenu2: TcxGridPopupMenu
    Grid = dbgRoadSheetsList
    PopupMenus = <>
    Left = 258
    Top = 34
  end
  object ibdsMainRoadSheetsList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRoadSheetsListAfterDelete
    BufferChunks = 200
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ROAD_SHEETS'
      'where'
      '  ID = :OLD_ID')
    SelectSQL.Strings = (
      
        'select RS.ID, RS.AUTOMOBILE_ID, RS.DRIVER_ID, RS.WORK_DISTRICT_I' +
        'D, RS.CUSTOMER_ID, RS.WORK_KIND_ID, RS.CREATE_DATE, cast(RS.REAL' +
        '_STOP_TIMESTAMP as date) REAL_STOP_TIMESTAMP,'
      'RS.SERIES, RS.NUMBER, RS.ROAD_SHEET_DATE, RS.PAYING_TIME,'
      'RS.SPEEDOMETER_STOP-RS.SPEEDOMETER_START TOTAL_MILLEAGE,'
      
        'SUM(RSR.CARRIED_FREIGHT*(RSR.HIGHWAY_MILEAGE+RSR.SUBURB_MILEAGE+' +
        'RSR.TOWN_MILEAGE+RSR.UNROAD_MILEAGE)) CARRIED_MILEAGE,'
      
        'RSF.FUEL_ID MAIN_FUEL_ID, RSF.DISTRIBUTED_AMOUNT DISTRIBUTED_MAI' +
        'N_FUEL, RSF.EATEN_AMOUNT EATEN_MAIN_FUEL,'
      
        'GSF.FUEL_NAMES SPECIAL_FUELS, GSF.SPECIAL_TIMES, GSF.FUELS_DISTR' +
        'IBUTED SPECIAL_FUELS_DISTRIBUTED, GSF.FUELS_EATEN SPECIAL_FUELS_' +
        'EATEN,'
      'RS.COMMENTS, C.COLUMN_NUMBER'
      
        'from ROAD_SHEETS RS join AUTOMOBILES A ON (A.ID=RS.AUTOMOBILE_ID' +
        ') left outer join COLUMNS C ON (C.ID=A.COLUMN_NUMBER) left outer' +
        ' join ROAD_SHEET_ROUTS RSR on (RS.ID=RSR.ROAD_SHEET_ID) left out' +
        'er join'
      
        'ROAD_SHEET_FUELS RSF on (RSF.ROAD_SHEET_ID=RS.ID) and (RSF.IS_FO' +
        'R_ENGINE=1) left outer join GET_SPECIAL_FUELS(RS.ID) GSF on (1=1' +
        ')'
      ''
      
        'group by RS.ID, RS.AUTOMOBILE_ID, RS.DRIVER_ID, RS.WORK_DISTRICT' +
        '_ID, RS.CUSTOMER_ID, RS.WORK_KIND_ID, RS.CREATE_DATE, RS.REAL_ST' +
        'OP_TIMESTAMP,'
      
        'RS.SERIES, RS.NUMBER, RS.ROAD_SHEET_DATE, RS.PAYING_TIME, RS.SPE' +
        'EDOMETER_STOP,'
      
        'RS.SPEEDOMETER_START, RSF.FUEL_ID, RSF.DISTRIBUTED_AMOUNT, RSF.E' +
        'ATEN_AMOUNT, GSF.FUEL_NAMES, GSF.SPECIAL_TIMES,'
      
        'GSF.FUELS_DISTRIBUTED, GSF.FUELS_EATEN, RS.COMMENTS, C.COLUMN_NU' +
        'MBER')
    Left = 33
    Top = 33
    object ibdsMainRoadSheetsListID: TIntegerField
      FieldName = 'ID'
      Origin = 'RS.ID'
      Required = True
    end
    object ibdsMainRoadSheetsListAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = 'RS.AUTOMOBILE_ID'
      Required = True
    end
    object ibdsMainRoadSheetsListDRIVER_ID: TIntegerField
      FieldName = 'DRIVER_ID'
      Origin = 'RS.DRIVER_ID'
      Required = True
    end
    object ibdsMainRoadSheetsListSERIES: TIBStringField
      FieldName = 'SERIES'
      Origin = 'RS.SERIES'
      Required = True
      Size = 10
    end
    object ibdsMainRoadSheetsListNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'RS.NUMBER'
      Required = True
    end
    object ibdsMainRoadSheetsListROAD_SHEET_DATE: TDateField
      Alignment = taCenter
      FieldName = 'ROAD_SHEET_DATE'
      Origin = 'RS.ROAD_SHEET_DATE'
      Required = True
    end
    object ibdsMainRoadSheetsListTOTAL_MILLEAGE: TLargeintField
      FieldName = 'TOTAL_MILLEAGE'
      Origin = 'RS.SPEEDOMETER_STOP-RS.SPEEDOMETER_START'
    end
    object ibdsMainRoadSheetsListCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = 'RS.COMMENTS'
      Size = 100
    end
    object ibdsMainRoadSheetsListWORK_DISTRICT_ID: TIntegerField
      FieldName = 'WORK_DISTRICT_ID'
      Origin = 'RS.WORK_DISTRICT_ID'
    end
    object ibdsMainRoadSheetsListWORK_KIND_ID: TIntegerField
      FieldName = 'WORK_KIND_ID'
      Origin = 'RS.WORK_KIND_ID'
    end
    object ibdsMainRoadSheetsListPAYING_TIME: TFloatField
      FieldName = 'PAYING_TIME'
      Required = True
      DisplayFormat = '#0.0'
    end
    object ibdsMainRoadSheetsListCARRIED_MILEAGE: TFloatField
      FieldName = 'CARRIED_MILEAGE'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
      Origin = 'RS.CREATE_DATE'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListMAIN_FUEL_ID: TIntegerField
      FieldName = 'MAIN_FUEL_ID'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListDISTRIBUTED_MAIN_FUEL: TIntegerField
      FieldName = 'DISTRIBUTED_MAIN_FUEL'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListEATEN_MAIN_FUEL: TFloatField
      FieldName = 'EATEN_MAIN_FUEL'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListSPECIAL_FUELS: TIBStringField
      FieldName = 'SPECIAL_FUELS'
      ProviderFlags = []
      Size = 300
    end
    object ibdsMainRoadSheetsListSPECIAL_TIMES: TIBStringField
      FieldName = 'SPECIAL_TIMES'
      ProviderFlags = []
      Size = 100
    end
    object ibdsMainRoadSheetsListSPECIAL_FUELS_DISTRIBUTED: TIBStringField
      Alignment = taRightJustify
      FieldName = 'SPECIAL_FUELS_DISTRIBUTED'
      ProviderFlags = []
      Size = 300
    end
    object ibdsMainRoadSheetsListSPECIAL_FUELS_EATEN: TIBStringField
      Alignment = taRightJustify
      FieldName = 'SPECIAL_FUELS_EATEN'
      ProviderFlags = []
      Size = 300
    end
    object ibdsMainRoadSheetsListREAL_STOP_TIMESTAMP: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1103' '#1074' '#1075#1072#1088#1072#1078
      FieldName = 'REAL_STOP_TIMESTAMP'
      ProviderFlags = []
    end
    object ibdsMainRoadSheetsListCOLUMN_NUMBER: TIntegerField
      FieldName = 'COLUMN_NUMBER'
      ProviderFlags = []
    end
  end
  object dsMainRoadSheetsList: TDataSource
    DataSet = ibdsMainRoadSheetsList
    OnStateChange = dsMainRoadSheetsListStateChange
    Left = 33
    Top = 63
  end
  object ibdsMainRoadSheet: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRoadSheetsListAfterDelete
    AfterOpen = ibdsMainRoadSheetAfterOpen
    BeforeOpen = ibdsMainRoadSheetBeforeOpen
    OnNewRecord = ibdsMainRoadSheetNewRecord
    OnUpdateRecord = ibdsMainRoadSheetUpdateRecord
    BufferChunks = 2
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ROAD_SHEETS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROAD_SHEETS'
      '  (ID, AUTOMOBILE_ID, COMMENTS, CUSTOMER_ID, '
      '   DRIVER_ID,'
      '   NUMBER, PAYING_TIME, REAL_START_TIMESTAMP, '
      
        '   REAL_STOP_TIMESTAMP, ROAD_SHEET_DATE, SERIES, SPEEDOMETER_STA' +
        'RT, '
      '   SPEEDOMETER_STOP, WINTER_NORM, '
      '   WORK_DISTRICT_ID, WORK_KIND_ID)'
      'values'
      '  (:ID, :AUTOMOBILE_ID, :COMMENTS, :CUSTOMER_ID,'
      '   :DRIVER_ID,'
      '   :NUMBER, :PAYING_TIME, '
      
        '   :REAL_START_TIMESTAMP, :REAL_STOP_TIMESTAMP, :ROAD_SHEET_DATE' +
        ', :SERIES, '
      '   :SPEEDOMETER_START, :SPEEDOMETER_STOP, '
      '   :WINTER_NORM, :WORK_DISTRICT_ID, :WORK_KIND_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SERIES,'
      '  NUMBER,'
      '  ROAD_SHEET_DATE,'
      '  AUTOMOBILE_ID,'
      '  DRIVER_ID,'
      '  WORK_DISTRICT_ID,'
      '  WORK_KIND_ID,'
      '  REAL_START_TIMESTAMP,'
      '  REAL_STOP_TIMESTAMP,'
      '  PAYING_TIME,'
      '  SPEEDOMETER_START,'
      '  SPEEDOMETER_STOP,'
      '  WINTER_NORM,'
      '  COMMENTS,'
      '  CUSTOMER_ID'
      'from ROAD_SHEETS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select RS.ID, RS.SERIES, RS.NUMBER, RS.ROAD_SHEET_DATE, RS.AUTOM' +
        'OBILE_ID, RS.DRIVER_ID,'
      
        'RS.WORK_DISTRICT_ID, RS.CUSTOMER_ID, RS.WORK_KIND_ID, RS.REAL_ST' +
        'ART_TIMESTAMP, RS.REAL_STOP_TIMESTAMP,'
      'RS.PAYING_TIME, RS.SPEEDOMETER_START, RS.SPEEDOMETER_STOP,'
      'RS.COMMENTS, RS.WINTER_NORM'
      'from ROAD_SHEETS RS'
      'where (RS.ID=:ID)')
    ModifySQL.Strings = (
      'update ROAD_SHEETS'
      'set'
      '  AUTOMOBILE_ID = :AUTOMOBILE_ID,'
      '  COMMENTS = :COMMENTS,'
      '  CUSTOMER_ID = :CUSTOMER_ID,'
      '  DRIVER_ID = :DRIVER_ID,'
      '  NUMBER = :NUMBER,'
      '  PAYING_TIME = :PAYING_TIME,'
      '  REAL_START_TIMESTAMP = :REAL_START_TIMESTAMP,'
      '  REAL_STOP_TIMESTAMP = :REAL_STOP_TIMESTAMP,'
      '  ROAD_SHEET_DATE = :ROAD_SHEET_DATE,'
      '  SERIES = :SERIES,'
      '  SPEEDOMETER_START = :SPEEDOMETER_START,'
      '  SPEEDOMETER_STOP = :SPEEDOMETER_STOP,'
      '  WINTER_NORM = :WINTER_NORM,'
      '  WORK_DISTRICT_ID = :WORK_DISTRICT_ID,'
      '  WORK_KIND_ID = :WORK_KIND_ID'
      'where'
      '  ID = :OLD_ID')
    Left = 63
    Top = 33
    object ibdsMainRoadSheetID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROAD_SHEETS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRoadSheetSERIES: TIBStringField
      FieldName = 'SERIES'
      Origin = '"ROAD_SHEETS"."SERIES"'
      OnChange = ibdsMainRoadSheetSERIESChange
      Size = 10
    end
    object ibdsMainRoadSheetNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"ROAD_SHEETS"."NUMBER"'
      OnChange = ibdsMainRoadSheetSERIESChange
      OnGetText = ibdsMainRoadSheetNUMBERGetText
    end
    object ibdsMainRoadSheetROAD_SHEET_DATE: TDateField
      FieldName = 'ROAD_SHEET_DATE'
      Origin = '"ROAD_SHEETS"."ROAD_SHEET_DATE"'
      OnChange = ibdsMainRoadSheetROAD_SHEET_DATEChange
      DisplayFormat = 'dd.mm.yy'
    end
    object ibdsMainRoadSheetAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = '"ROAD_SHEETS"."AUTOMOBILE_ID"'
      OnChange = ibdsMainRoadSheetAUTOMOBILE_IDChange
    end
    object ibdsMainRoadSheetDRIVER_ID: TIntegerField
      FieldName = 'DRIVER_ID'
      Origin = '"ROAD_SHEETS"."DRIVER_ID"'
      OnChange = ibdsMainRoadSheetSERIESChange
    end
    object ibdsMainRoadSheetWORK_DISTRICT_ID: TIntegerField
      FieldName = 'WORK_DISTRICT_ID'
      Origin = '"ROAD_SHEETS"."WORK_DISTRICT_ID"'
      OnChange = ibdsMainRoadSheetSERIESChange
    end
    object ibdsMainRoadSheetWORK_KIND_ID: TIntegerField
      FieldName = 'WORK_KIND_ID'
      Origin = '"ROAD_SHEETS"."WORK_KIND_ID"'
      OnChange = ibdsMainRoadSheetSERIESChange
    end
    object ibdsMainRoadSheetREAL_START_TIMESTAMP: TDateTimeField
      FieldName = 'REAL_START_TIMESTAMP'
      Origin = '"ROAD_SHEETS"."REAL_START_TIMESTAMP"'
      OnChange = ibdsMainRoadSheetREAL_START_TIMESTAMPChange
      DisplayFormat = 'dd.mm.yy hh:nn'
      EditMask = 'dd.mm.yy hh:nn'
    end
    object ibdsMainRoadSheetREAL_STOP_TIMESTAMP: TDateTimeField
      FieldName = 'REAL_STOP_TIMESTAMP'
      Origin = '"ROAD_SHEETS"."REAL_STOP_TIMESTAMP"'
      OnChange = ibdsMainRoadSheetREAL_START_TIMESTAMPChange
      DisplayFormat = 'dd.mm.yy hh:nn'
      EditMask = 'dd.mm.yy hh:nn'
    end
    object ibdsMainRoadSheetSPEEDOMETER_START: TIntegerField
      FieldName = 'SPEEDOMETER_START'
      Origin = '"ROAD_SHEETS"."SPEEDOMETER_START"'
      OnChange = ibdsMainRoadSheetSPEEDOMETER_STARTChange
      OnSetText = ibdsMainRoadSheetSPEEDOMETER_STARTSetText
      DisplayFormat = '#,##0'
    end
    object ibdsMainRoadSheetSPEEDOMETER_STOP: TIntegerField
      FieldName = 'SPEEDOMETER_STOP'
      Origin = '"ROAD_SHEETS"."SPEEDOMETER_STOP"'
      OnChange = ibdsMainRoadSheetSPEEDOMETER_STARTChange
      OnSetText = ibdsMainRoadSheetSPEEDOMETER_STARTSetText
      DisplayFormat = '#,##0'
    end
    object ibdsMainRoadSheetCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"ROAD_SHEETS"."COMMENTS"'
      OnChange = ibdsMainRoadSheetSERIESChange
      Size = 100
    end
    object ibdsMainRoadSheetWINTER_NORM: TIntegerField
      FieldName = 'WINTER_NORM'
      Origin = '"ROAD_SHEETS"."WINTER_NORM"'
      OnChange = ibdsMainRoadSheetSERIESChange
    end
    object ibdsMainRoadSheetPAYING_TIME: TFloatField
      FieldName = 'PAYING_TIME'
      Origin = '"ROAD_SHEETS"."PAYING_TIME"'
      OnChange = ibdsMainRoadSheetSERIESChange
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object ibdsMainRoadSheetCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = '"ROAD_SHEETS"."CUSTOMER_ID"'
      OnChange = ibdsMainRoadSheetSERIESChange
    end
  end
  object ibdsAutomobiles: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 200
    SelectSQL.Strings = (
      
        'select  A.ID, A.STATE_NUMBER||'#39' '#39'||AM.NAME AM_NAME, C.COLUMN_NUM' +
        'BER, A.STATE_NUMBER, AM.NAME, A.GARAGE_NUMBER, A.INVENTORY_NUMBE' +
        'R,'
      
        'C.NAME COLUMN_NAME, C.ADDRESS COLUMN_ADDRESS, C.PHONE COLUMN_PHO' +
        'NE'
      'from AUTOMOBILE_MAKES AM, AUTOMOBILES A, COLUMNS C'
      'where (AM.ID=A.AUTOMOBILE_MAKE_ID) and (C.ID=A.COLUMN_NUMBER)'
      'order by 2')
    Left = 33
    Top = 93
    object ibdsAutomobilesID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOMOBILES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsAutomobilesAM_NAME: TIBStringField
      FieldName = 'AM_NAME'
      Size = 116
    end
    object ibdsAutomobilesCOLUMN_NUMBER: TIntegerField
      FieldName = 'COLUMN_NUMBER'
      Origin = '"AUTOMOBILES"."COLUMN_NUMBER"'
    end
    object ibdsAutomobilesSTATE_NUMBER: TIBStringField
      FieldName = 'STATE_NUMBER'
      Origin = '"AUTOMOBILES"."STATE_NUMBER"'
      Size = 15
    end
    object ibdsAutomobilesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"AUTOMOBILE_MAKES"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsAutomobilesGARAGE_NUMBER: TIntegerField
      FieldName = 'GARAGE_NUMBER'
      Origin = '"AUTOMOBILES"."GARAGE_NUMBER"'
    end
    object ibdsAutomobilesINVENTORY_NUMBER: TIntegerField
      FieldName = 'INVENTORY_NUMBER'
      Origin = '"AUTOMOBILES"."INVENTORY_NUMBER"'
    end
    object ibdsAutomobilesCOLUMN_NAME: TIBStringField
      FieldName = 'COLUMN_NAME'
      Origin = '"COLUMNS"."NAME"'
      Size = 100
    end
    object ibdsAutomobilesCOLUMN_ADDRESS: TIBStringField
      FieldName = 'COLUMN_ADDRESS'
      Origin = '"COLUMNS"."ADDRESS"'
      Size = 200
    end
    object ibdsAutomobilesCOLUMN_PHONE: TIBStringField
      FieldName = 'COLUMN_PHONE'
      Origin = '"COLUMNS"."PHONE"'
      Size = 50
    end
  end
  object dsAutomobiles: TDataSource
    DataSet = ibdsAutomobiles
    Left = 33
    Top = 123
  end
  object ibdsDrivers: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 200
    SelectSQL.Strings = (
      
        'select P.ID, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME FULL_NAM' +
        'E,'
      'P.KOD, P.DRIVER_CARD_NUMBER, P.DRIVER_CLASS'
      'from PERSONS P'
      'where (P.IS_DRIVER=1)'
      'order by 2')
    Left = 33
    Top = 153
    object ibdsDriversID: TIntegerField
      FieldName = 'ID'
      Origin = '"PERSONS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsDriversFULL_NAME: TIBStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 92
    end
    object ibdsDriversKOD: TIntegerField
      FieldName = 'KOD'
      Origin = '"PERSONS"."KOD"'
    end
    object ibdsDriversDRIVER_CARD_NUMBER: TIBStringField
      FieldName = 'DRIVER_CARD_NUMBER'
      Origin = '"PERSONS"."DRIVER_CARD_NUMBER"'
      Size = 30
    end
    object ibdsDriversDRIVER_CLASS: TIntegerField
      FieldName = 'DRIVER_CLASS'
      Origin = '"PERSONS"."DRIVER_CLASS"'
    end
  end
  object dsDrivers: TDataSource
    DataSet = ibdsDrivers
    Left = 33
    Top = 183
  end
  object ibdsWorkDistricts: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 20
    SelectSQL.Strings = (
      'select WD.ID, WD.DISTRICT_NAME'
      'from WORK_DISTRICTS WD'
      'order by 2')
    Left = 33
    Top = 213
    object ibdsWorkDistrictsID: TIntegerField
      FieldName = 'ID'
      Origin = '"WORK_DISTRICTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsWorkDistrictsDISTRICT_NAME: TIBStringField
      FieldName = 'DISTRICT_NAME'
      Origin = '"WORK_DISTRICTS"."DISTRICT_NAME"'
      Required = True
      Size = 100
    end
  end
  object dsWorkDistricts: TDataSource
    DataSet = ibdsWorkDistricts
    Left = 33
    Top = 243
  end
  object ibdsWorkKinds: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 20
    SelectSQL.Strings = (
      'select WK.ID, WK.SHORT_NAME, WK.KIND_NAME'
      'from WORK_KINDS WK'
      'order by 3')
    Left = 33
    Top = 273
    object ibdsWorkKindsID: TIntegerField
      FieldName = 'ID'
      Origin = '"WORK_KINDS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsWorkKindsSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Origin = '"WORK_KINDS"."SHORT_NAME"'
    end
    object ibdsWorkKindsKIND_NAME: TIBStringField
      FieldName = 'KIND_NAME'
      Origin = '"WORK_KINDS"."KIND_NAME"'
      Required = True
      Size = 100
    end
  end
  object dsWorkKinds: TDataSource
    DataSet = ibdsWorkKinds
    Left = 33
    Top = 303
  end
  object ibdsRoutes: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 200
    SelectSQL.Strings = (
      
        'select R.ID ID_DIRECTION, R.ID, cast(R.SHORT_NAME as VARCHAR(5))' +
        ' SHORT_NAME, R.POINT1_NAME||'#39' - '#39'||R.POINT2_NAME ROUT_NAME, R.CO' +
        'MMENTS,'
      
        'R.TOWN_MILEAGE, R.SUBURB_MILEAGE, R.HIGHWAY_MILEAGE, R.UNROAD_MI' +
        'LEAGE'
      'from ROUTES R'
      'union'
      
        'select -R.ID ID_DIRECTION, R.ID, '#39'-'#39'||R.SHORT_NAME SHORT_NAME, R' +
        '.POINT2_NAME||'#39' - '#39'||R.POINT1_NAME ROUT_NAME, R.COMMENTS,'
      
        'R.TOWN_MILEAGE, R.SUBURB_MILEAGE, R.HIGHWAY_MILEAGE, R.UNROAD_MI' +
        'LEAGE'
      'from ROUTES R'
      'order by 2, 1')
    Left = 63
    Top = 214
    object ibdsRoutesID_DIRECTION: TIntegerField
      FieldName = 'ID_DIRECTION'
      Required = True
    end
    object ibdsRoutesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ibdsRoutesROUT_NAME: TIBStringField
      FieldName = 'ROUT_NAME'
      Required = True
      Size = 203
    end
    object ibdsRoutesCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Size = 100
    end
    object ibdsRoutesTOWN_MILEAGE: TIntegerField
      FieldName = 'TOWN_MILEAGE'
      Required = True
    end
    object ibdsRoutesSUBURB_MILEAGE: TIntegerField
      FieldName = 'SUBURB_MILEAGE'
      Required = True
    end
    object ibdsRoutesHIGHWAY_MILEAGE: TIntegerField
      FieldName = 'HIGHWAY_MILEAGE'
      Required = True
    end
    object ibdsRoutesUNROAD_MILEAGE: TIntegerField
      FieldName = 'UNROAD_MILEAGE'
      Required = True
    end
    object ibdsRoutesSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Size = 5
    end
  end
  object dsRoutes: TDataSource
    DataSet = ibdsRoutes
    Left = 63
    Top = 244
  end
  object dsRoadSheetRouts: TDataSource
    DataSet = ibdsRoadSheetRouts
    OnStateChange = dsRoadSheetRoutsStateChange
    Left = 63
    Top = 123
  end
  object ibdsRoadSheetRouts: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsRoadSheetRoutsAfterDelete
    OnCalcFields = ibdsRoadSheetRoutsCalcFields
    OnNewRecord = ibdsRoadSheetRoutsNewRecord
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ROAD_SHEET_ROUTS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROAD_SHEET_ROUTS'
      
        '  (ID, ROAD_SHEET_ID, ROUT_ID, ROUT_DIRECTION, ROUT_COUNT, TOWN_' +
        'MILEAGE, '
      '   SUBURB_MILEAGE, HIGHWAY_MILEAGE, UNROAD_MILEAGE, '
      'CARRIED_FREIGHT, COMMENTS)'
      'values'
      '  (:ID, :ROAD_SHEET_ID, :ROUT_ID, :ROUT_DIRECTION, :ROUT_COUNT, '
      '   :TOWN_MILEAGE, :SUBURB_MILEAGE, :HIGHWAY_MILEAGE,'
      ':UNROAD_MILEAGE, :CARRIED_FREIGHT, '
      '   :COMMENTS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROAD_SHEET_ID,'
      '  ROUT_ID,'
      '  ROUT_DIRECTION,'
      '  ROUT_COUNT,'
      '  TOWN_MILEAGE,'
      '  SUBURB_MILEAGE,'
      '  HIGHWAY_MILEAGE,'
      '  UNROAD_MILEAGE,'
      '  CARRIED_FREIGHT,'
      '  COMMENTS'
      'from ROAD_SHEET_ROUTS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select RSR.ID, RSR.ROAD_SHEET_ID, RSR.ROUT_ID, RSR.ROUT_DIRECTIO' +
        'N, RSR.ROUT_COUNT,'
      
        'cast(RSR.ROUT_ID*RSR.ROUT_DIRECTION as INTEGER) ROUT_ID_DIRECTIO' +
        'N, RSR.TOWN_MILEAGE,'
      
        'RSR.SUBURB_MILEAGE, RSR.HIGHWAY_MILEAGE, RSR.UNROAD_MILEAGE, RSR' +
        '.CARRIED_FREIGHT,'
      'RSR.COMMENTS'
      'from ROAD_SHEET_ROUTS RSR'
      'where (RSR.ROAD_SHEET_ID=:ID)')
    ModifySQL.Strings = (
      'update ROAD_SHEET_ROUTS'
      'set'
      '  ROAD_SHEET_ID = :ROAD_SHEET_ID,'
      '  ROUT_ID = :ROUT_ID,'
      '  ROUT_DIRECTION = :ROUT_DIRECTION,'
      '  ROUT_COUNT = :ROUT_COUNT,'
      '  TOWN_MILEAGE = :TOWN_MILEAGE,'
      '  SUBURB_MILEAGE = :SUBURB_MILEAGE,'
      '  HIGHWAY_MILEAGE = :HIGHWAY_MILEAGE,'
      '  UNROAD_MILEAGE = :UNROAD_MILEAGE,'
      '  CARRIED_FREIGHT = :CARRIED_FREIGHT,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainRoadSheet
    Left = 63
    Top = 93
    object ibdsRoadSheetRoutsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROAD_SHEET_ROUTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsRoadSheetRoutsROAD_SHEET_ID: TIntegerField
      FieldName = 'ROAD_SHEET_ID'
      Origin = '"ROAD_SHEET_ROUTS"."ROAD_SHEET_ID"'
    end
    object ibdsRoadSheetRoutsROUT_ID: TIntegerField
      FieldName = 'ROUT_ID'
      Origin = '"ROAD_SHEET_ROUTS"."ROUT_ID"'
    end
    object ibdsRoadSheetRoutsROUT_DIRECTION: TIntegerField
      FieldName = 'ROUT_DIRECTION'
      Origin = '"ROAD_SHEET_ROUTS"."ROUT_DIRECTION"'
    end
    object ibdsRoadSheetRoutsTOWN_MILEAGE: TIntegerField
      FieldName = 'TOWN_MILEAGE'
      Origin = '"ROAD_SHEET_ROUTS"."TOWN_MILEAGE"'
    end
    object ibdsRoadSheetRoutsSUBURB_MILEAGE: TIntegerField
      FieldName = 'SUBURB_MILEAGE'
      Origin = '"ROAD_SHEET_ROUTS"."SUBURB_MILEAGE"'
    end
    object ibdsRoadSheetRoutsHIGHWAY_MILEAGE: TIntegerField
      FieldName = 'HIGHWAY_MILEAGE'
      Origin = '"ROAD_SHEET_ROUTS"."HIGHWAY_MILEAGE"'
    end
    object ibdsRoadSheetRoutsUNROAD_MILEAGE: TIntegerField
      FieldName = 'UNROAD_MILEAGE'
      Origin = '"ROAD_SHEET_ROUTS"."UNROAD_MILEAGE"'
    end
    object ibdsRoadSheetRoutsCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"ROAD_SHEET_ROUTS"."COMMENTS"'
      Size = 100
    end
    object ibdsRoadSheetRoutsROUT_ID_DIRECTION: TIntegerField
      FieldName = 'ROUT_ID_DIRECTION'
      OnChange = ibdsRoadSheetRoutsROUT_ID_DIRECTIONChange
    end
    object ibdsRoadSheetRoutsCARRIED_FREIGHT: TFloatField
      FieldName = 'CARRIED_FREIGHT'
      Origin = '"ROAD_SHEET_ROUTS"."CARRIED_FREIGHT"'
    end
    object ibdsRoadSheetRoutsROUT_COUNT: TIntegerField
      FieldName = 'ROUT_COUNT'
      Origin = '"ROAD_SHEET_ROUTS"."ROUT_COUNT"'
    end
    object ibdsRoadSheetRoutsTOWN_RESULT_MILEAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOWN_RESULT_MILEAGE'
      Calculated = True
    end
    object ibdsRoadSheetRoutsSUBURB_RESULT_MILEAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SUBURB_RESULT_MILEAGE'
      Calculated = True
    end
    object ibdsRoadSheetRoutsHIGHWAY_RESULT_MILEAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'HIGHWAY_RESULT_MILEAGE'
      Calculated = True
    end
    object ibdsRoadSheetRoutsUNROAD_RESULT_MILEAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'UNROAD_RESULT_MILEAGE'
      Calculated = True
    end
  end
  object dsMainRoadSheet: TDataSource
    DataSet = ibdsMainRoadSheet
    OnStateChange = dsMainRoadSheetsListStateChange
    Left = 63
    Top = 63
  end
  object ibdsWorkCustomers: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 20
    SelectSQL.Strings = (
      'select WC.ID, WC.CUSTOMER_NAME'
      'from WORK_CUSTOMER WC'
      'order by 2')
    Left = 33
    Top = 332
    object ibdsWorkCustomersID: TIntegerField
      FieldName = 'ID'
      Origin = '"WORK_CUSTOMER"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsWorkCustomersCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = '"WORK_CUSTOMER"."CUSTOMER_NAME"'
      Required = True
      Size = 100
    end
  end
  object dsWorkCustomers: TDataSource
    DataSet = ibdsWorkCustomers
    Left = 33
    Top = 362
  end
  object ibdsFuel: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 20
    SelectSQL.Strings = (
      'select ID, NAME from FUEL order by 2')
    Left = 33
    Top = 391
    object ibdsFuelID: TIntegerField
      FieldName = 'ID'
      Origin = '"FUEL"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsFuelNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"FUEL"."NAME"'
      Required = True
      Size = 100
    end
  end
  object dsFuel: TDataSource
    DataSet = ibdsFuel
    Left = 33
    Top = 421
  end
  object ibdsRoadSheetFuels: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsRoadSheetRoutsAfterDelete
    OnCalcFields = ibdsRoadSheetFuelsCalcFields
    OnNewRecord = ibdsRoadSheetFuelsNewRecord
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ROAD_SHEET_FUELS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ROAD_SHEET_FUELS'
      
        '  (COMMENTS, DISTRIBUTED_AMOUNT, EATEN_AMOUNT, FUEL_CONSUMPTION_' +
        'HR, FUEL_CONSUMPTION_KM, '
      
        '   FUEL_CONSUMPTION_T_KM, FUEL_ID, ID, IS_FOR_ENGINE, ROAD_SHEET' +
        '_ID, SPECIAL_TIME, '
      '   START_AMOUNT)'
      'values'
      
        '  (:COMMENTS, :DISTRIBUTED_AMOUNT, :EATEN_AMOUNT, :FUEL_CONSUMPT' +
        'ION_HR, '
      
        '   :FUEL_CONSUMPTION_KM, :FUEL_CONSUMPTION_T_KM, :FUEL_ID, :ID, ' +
        ':IS_FOR_ENGINE, '
      '   :ROAD_SHEET_ID, :SPECIAL_TIME, :START_AMOUNT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ROAD_SHEET_ID,'
      '  FUEL_ID,'
      '  IS_FOR_ENGINE,'
      '  FUEL_CONSUMPTION_KM,'
      '  FUEL_CONSUMPTION_T_KM,'
      '  FUEL_CONSUMPTION_HR,'
      '  SPECIAL_TIME,'
      '  START_AMOUNT,'
      '  DISTRIBUTED_AMOUNT,'
      '  EATEN_AMOUNT,'
      '  COMMENTS,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from ROAD_SHEET_FUELS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select RSF.ID, RSF.ROAD_SHEET_ID, RSF.FUEL_ID, RSF.IS_FOR_ENGINE' +
        ', RSF.FUEL_CONSUMPTION_KM, RSF.FUEL_CONSUMPTION_T_KM,'
      
        'RSF.FUEL_CONSUMPTION_HR, RSF.SPECIAL_TIME, RSF.START_AMOUNT, RSF' +
        '.DISTRIBUTED_AMOUNT, RSF.EATEN_AMOUNT, RSF.COMMENTS'
      'from ROAD_SHEET_FUELS RSF'
      'where (RSF.ROAD_SHEET_ID=:ID)')
    ModifySQL.Strings = (
      'update ROAD_SHEET_FUELS'
      'set'
      '  COMMENTS = :COMMENTS,'
      '  DISTRIBUTED_AMOUNT = :DISTRIBUTED_AMOUNT,'
      '  EATEN_AMOUNT = :EATEN_AMOUNT,'
      '  FUEL_CONSUMPTION_HR = :FUEL_CONSUMPTION_HR,'
      '  FUEL_CONSUMPTION_KM = :FUEL_CONSUMPTION_KM,'
      '  FUEL_CONSUMPTION_T_KM = :FUEL_CONSUMPTION_T_KM,'
      '  FUEL_ID = :FUEL_ID,'
      '  IS_FOR_ENGINE = :IS_FOR_ENGINE,'
      '  ROAD_SHEET_ID = :ROAD_SHEET_ID,'
      '  SPECIAL_TIME = :SPECIAL_TIME,'
      '  START_AMOUNT = :START_AMOUNT'
      'where'
      '  ID = :OLD_ID')
    DataSource = dsMainRoadSheet
    Left = 63
    Top = 153
    object ibdsRoadSheetFuelsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ROAD_SHEET_FUELS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsRoadSheetFuelsROAD_SHEET_ID: TIntegerField
      FieldName = 'ROAD_SHEET_ID'
      Origin = '"ROAD_SHEET_FUELS"."ROAD_SHEET_ID"'
      Required = True
    end
    object ibdsRoadSheetFuelsFUEL_ID: TIntegerField
      DisplayLabel = #1058#1086#1087#1083#1080#1074#1086
      FieldName = 'FUEL_ID'
      Origin = '"ROAD_SHEET_FUELS"."FUEL_ID"'
      Required = True
    end
    object ibdsRoadSheetFuelsIS_FOR_ENGINE: TIntegerField
      DisplayLabel = #1044#1083#1103' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
      FieldName = 'IS_FOR_ENGINE'
      Origin = '"ROAD_SHEET_FUELS"."IS_FOR_ENGINE"'
      OnChange = ibdsRoadSheetFuelsIS_FOR_ENGINEChange
    end
    object ibdsRoadSheetFuelsFUEL_CONSUMPTION_KM: TFloatField
      FieldName = 'FUEL_CONSUMPTION_KM'
      Origin = '"ROAD_SHEET_FUELS"."FUEL_CONSUMPTION_KM"'
    end
    object ibdsRoadSheetFuelsFUEL_CONSUMPTION_T_KM: TFloatField
      FieldName = 'FUEL_CONSUMPTION_T_KM'
      Origin = '"ROAD_SHEET_FUELS"."FUEL_CONSUMPTION_T_KM"'
    end
    object ibdsRoadSheetFuelsFUEL_CONSUMPTION_HR: TFloatField
      FieldName = 'FUEL_CONSUMPTION_HR'
      Origin = '"ROAD_SHEET_FUELS"."FUEL_CONSUMPTION_HR"'
    end
    object ibdsRoadSheetFuelsSPECIAL_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1087#1077#1094'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      FieldName = 'SPECIAL_TIME'
      Origin = '"ROAD_SHEET_FUELS"."SPECIAL_TIME"'
      Required = True
    end
    object ibdsRoadSheetFuelsSTART_AMOUNT: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' '#1087#1088#1080' '#1074#1099#1077#1079#1076#1077', '#1083'.'
      FieldName = 'START_AMOUNT'
      Origin = '"ROAD_SHEET_FUELS"."START_AMOUNT"'
    end
    object ibdsRoadSheetFuelsDISTRIBUTED_AMOUNT: TIntegerField
      DisplayLabel = #1042#1099#1076#1072#1085#1086', '#1083'.'
      FieldName = 'DISTRIBUTED_AMOUNT'
      Origin = '"ROAD_SHEET_FUELS"."DISTRIBUTED_AMOUNT"'
    end
    object ibdsRoadSheetFuelsEATEN_AMOUNT: TFloatField
      DisplayLabel = #1048#1079#1088#1072#1089#1093#1086#1076#1086#1074#1072#1085#1086', '#1083'.'
      FieldName = 'EATEN_AMOUNT'
      Origin = '"ROAD_SHEET_FUELS"."EATEN_AMOUNT"'
    end
    object ibdsRoadSheetFuelsSTOP_AMOUNT: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' '#1087#1088#1080' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1080', '#1083'.'
      FieldKind = fkCalculated
      FieldName = 'STOP_AMOUNT'
      Calculated = True
    end
    object ibdsRoadSheetFuelsCOMMENTS: TIBStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENTS'
      Origin = '"ROAD_SHEET_FUELS"."COMMENTS"'
      Size = 100
    end
  end
  object dsRoadSheetFuels: TDataSource
    DataSet = ibdsRoadSheetFuels
    OnStateChange = dsRoadSheetRoutsStateChange
    Left = 63
    Top = 183
  end
  object pmClear: TPopupMenu
    Left = 466
    Top = 74
    object miClear: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = miClearClick
    end
  end
  object trLock: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    IdleTimer = 20
    DefaultAction = TARollback
    Params.Strings = (
      'consistency'
      'lock_write=ROAD_SHEETS_LOCK'
      'exclusive'
      'wait')
    Left = 63
    Top = 2
  end
end
