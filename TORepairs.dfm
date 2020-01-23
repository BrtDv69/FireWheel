inherited frmTORepairs: TfrmTORepairs
  Left = 258
  Top = 160
  Width = 543
  Caption = #1058#1054' '#1080' '#1088#1077#1084#1086#1085#1090#1099' '#1072#1074#1090#1086#1084#1072#1096#1080#1085
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 535
    Height = 348
    ActivePage = tsTO
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
    ClientRectBottom = 346
    ClientRectLeft = 2
    ClientRectRight = 510
    ClientRectTop = 2
    object tsTO: TcxTabSheet
      Caption = #1058#1054
      object Panel4: TPanel
        Left = 489
        Top = 0
        Width = 19
        Height = 344
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object sbCancelTO: TSpeedButton
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
          OnClick = sbCancelTOClick
        end
        object sbApplyTO: TSpeedButton
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
          OnClick = sbApplyTOClick
        end
        object sbDeleteTO: TSpeedButton
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
          OnClick = sbDeleteTOClick
        end
        object sbAddTO: TSpeedButton
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
          OnClick = sbAddTOClick
        end
        object sbLastTO: TSpeedButton
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
          OnClick = sbLastTOClick
        end
        object sbNextTO: TSpeedButton
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
          OnClick = sbNextTOClick
        end
        object sbPriorTO: TSpeedButton
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
          OnClick = sbPriorTOClick
        end
        object sbFirstTO: TSpeedButton
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
          OnClick = sbFirstTOClick
        end
        object sbFilterTO: TSpeedButton
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
          OnClick = sbFilterTOClick
        end
        object sbClose: TSpeedButton
          Left = 0
          Top = 200
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
        object sbRefreshTO: TSpeedButton
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
          OnClick = sbRefreshTOClick
        end
        object sbPrintTO: TSpeedButton
          Left = 0
          Top = 265
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1077#1095#1072#1090#1100'|'#1055#1077#1095#1072#1090#1100
          AllowAllUp = True
          Enabled = False
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
          Visible = False
        end
        object SpeedButton35: TSpeedButton
          Tag = 3
          Left = 0
          Top = 241
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          AllowAllUp = True
          GroupIndex = 1
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
          OnClick = SpeedButton35Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 344
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlComments: TPanel
          Left = 0
          Top = 280
          Width = 489
          Height = 64
          Align = alBottom
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          DesignSize = (
            489
            64)
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
          object dbmComments: TcxDBMemo
            Left = 20
            Top = 17
            Width = 380
            Height = 47
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataBinding.DataField = 'COMMENTS'
            DataBinding.DataSource = dsMainTO
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.Color = clBtnFace
            Style.Edges = [bLeft, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            TabOrder = 0
            OnEnter = dbmCommentsEnter
            OnExit = dbmCommentsExit
          end
        end
        object dbgTO: TcxGrid
          Left = 0
          Top = 0
          Width = 489
          Height = 280
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object tvTO: TcxGridDBTableView
            DataController.DataSource = dsMainTO
            DataController.Filter.OnBeforeChange = tvTODataControllerFilterBeforeChange
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            OptionsView.NewItemRow = True
            OptionsView.NewItemRowInfoText = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1074#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1090#1091#1090'!'
            OptionsView.NewItemRowSeparatorColor = clMoneyGreen
            Preview.Column = tvTOCOMMENTS
            Preview.Visible = True
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvTOCustomDrawColumnHeader
            object tvTONUMBER: TcxGridDBColumn
              Caption = #1051#1080#1089#1090#1086#1082' '#1091#1095#1077#1090#1072' '#8470
              DataBinding.FieldName = 'NUMBER'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.MaskKind = emkRegExpr
              Properties.EditMask = '\d+'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Grouping = False
            end
            object tvTOTO12_DATE: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              DataBinding.FieldName = 'TO12_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.InputKind = ikStandard
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvTOAUTOMOBILE_ID: TcxGridDBColumn
              Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088' '#1072#1074#1090#1086#1084#1072#1096#1080#1085#1099
              DataBinding.FieldName = 'AUTOMOBILE_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownAutoSize = True
              Properties.DropDownSizeable = True
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
                  HeaderAlignment = taCenter
                  FieldName = 'INVENTORY_NUMBER'
                end
                item
                  Caption = #1052#1072#1088#1082#1072
                  HeaderAlignment = taCenter
                  SortOrder = soAscending
                  Width = 100
                  FieldName = 'NAME'
                end
                item
                  Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
                  HeaderAlignment = taCenter
                  SortOrder = soAscending
                  FieldName = 'STATE_NUMBER'
                end>
              Properties.ListFieldIndex = 2
              Properties.ListOptions.AnsiSort = True
              Properties.ListSource = dsAutomobiles
              Properties.UseLeftAlignmentOnEditing = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvTOTO12_KIND: TcxGridDBColumn
              Caption = #1042#1080#1076' '#1058#1054
              DataBinding.FieldName = 'TO12_KIND'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.BeepOnError = True
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownRows = 2
              Properties.Items.Strings = (
                '1'
                '2')
              Properties.PopupAlignment = taRightJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvTOCOMMENTS: TcxGridDBColumn
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object tvAutomobiles: TcxGridDBTableView
            DataController.DataSource = dsAutomobiles
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            Filtering.CustomizeDialog = False
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
            OnCustomDrawColumnHeader = tvTOCustomDrawColumnHeader
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
          object tlTO: TcxGridLevel
            GridView = tvTO
          end
        end
      end
    end
    object tsRepairs: TcxTabSheet
      Caption = #1056#1077#1084#1086#1085#1090#1099
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 344
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlCommentsRepairs: TPanel
          Left = 0
          Top = 280
          Width = 489
          Height = 64
          Align = alBottom
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          DesignSize = (
            489
            64)
          object Label1: TLabel
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
          object cxDBMemo1: TcxDBMemo
            Left = 20
            Top = 17
            Width = 440
            Height = 47
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataBinding.DataField = 'COMMENTS'
            DataBinding.DataSource = dsMainRepairs
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.Color = clBtnFace
            Style.Edges = [bLeft, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            TabOrder = 0
            OnEnter = dbmCommentsEnter
            OnExit = dbmCommentsExit
          end
        end
        object dbgRepairs: TcxGrid
          Left = 0
          Top = 0
          Width = 489
          Height = 280
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object tvRepairs: TcxGridDBTableView
            DataController.DataSource = dsMainRepairs
            DataController.Filter.OnBeforeChange = tvRepairsDataControllerFilterBeforeChange
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            OptionsView.NewItemRow = True
            OptionsView.NewItemRowInfoText = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1074#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1090#1091#1090'!'
            OptionsView.NewItemRowSeparatorColor = clMoneyGreen
            Preview.Column = tvRepairsCOMMENTS
            Preview.Visible = True
            Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvTOCustomDrawColumnHeader
            object tvRepairsNUMBER: TcxGridDBColumn
              Caption = #1056#1077#1084'. '#1083#1080#1089#1090' '#8470
              DataBinding.FieldName = 'NUMBER'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.MaskKind = emkRegExprEx
              Properties.EditMask = '\d+'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 50
            end
            object tvRepairsSTART_DATE: TcxGridDBColumn
              Caption = #1053#1072#1095'. '#1088#1077#1084#1086#1085#1090#1072
              DataBinding.FieldName = 'START_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvRepairsSTOP_DATE: TcxGridDBColumn
              Caption = #1054#1082#1086#1085#1095'. '#1088#1077#1084#1086#1085#1090#1072
              DataBinding.FieldName = 'STOP_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvRepairsAUTOMOBILE_ID: TcxGridDBColumn
              Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088' '#1072#1074#1090#1086#1084#1072#1096#1080#1085#1099
              DataBinding.FieldName = 'AUTOMOBILE_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
                  HeaderAlignment = taCenter
                  FieldName = 'INVENTORY_NUMBER'
                end
                item
                  Caption = #1052#1072#1088#1082#1072
                  HeaderAlignment = taCenter
                  SortOrder = soAscending
                  Width = 150
                  FieldName = 'NAME'
                end
                item
                  Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
                  HeaderAlignment = taCenter
                  SortOrder = soAscending
                  FieldName = 'STATE_NUMBER'
                end>
              Properties.ListFieldIndex = 2
              Properties.ListOptions.AnsiSort = True
              Properties.ListSource = dsAutomobiles
              Properties.PopupAlignment = taRightJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvRepairsPART_ID: TcxGridDBColumn
              Caption = #1040#1075#1088#1077#1075#1072#1090
              DataBinding.FieldName = 'PART_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  HeaderAlignment = taCenter
                  SortOrder = soAscending
                  Width = 200
                  FieldName = 'NAME'
                end
                item
                  Caption = #1057#1086#1082#1088'. '#1085#1072#1080#1084#1077#1085'.'
                  HeaderAlignment = taCenter
                  Width = 50
                  FieldName = 'SHORT_NAME'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.AnsiSort = True
              Properties.ListSource = dsParts
              Properties.PopupAlignment = taRightJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object tvRepairsCOMMENTS: TcxGridDBColumn
              Caption = #1050#1086#1084#1084#1077#1088#1090#1072#1088#1080#1080
              DataBinding.FieldName = 'COMMENTS'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            DataController.DataSource = dsAutomobiles
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            Filtering.CustomizeDialog = False
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
            OnCustomDrawColumnHeader = tvTOCustomDrawColumnHeader
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'INVENTORY_NUMBER'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Grouping = False
              Width = 70
            end
            object cxGridDBColumn7: TcxGridDBColumn
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
            object cxGridDBColumn8: TcxGridDBColumn
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
            object cxGridDBColumn9: TcxGridDBColumn
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
          object glRepairs: TcxGridLevel
            GridView = tvRepairs
          end
        end
      end
      object Panel5: TPanel
        Left = 489
        Top = 0
        Width = 19
        Height = 344
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object sbCancelRepairs: TSpeedButton
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
          OnClick = sbCancelRepairsClick
        end
        object sbApplyRepairs: TSpeedButton
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
          OnClick = sbApplyRepairsClick
        end
        object sbDeleteRepairs: TSpeedButton
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
          OnClick = sbDeleteRepairsClick
        end
        object sbAddRepairs: TSpeedButton
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
          OnClick = sbAddRepairsClick
        end
        object sbLastRepairs: TSpeedButton
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
          OnClick = sbLastRepairsClick
        end
        object sbNextRepairs: TSpeedButton
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
          OnClick = sbNextRepairsClick
        end
        object sbPriorRepairs: TSpeedButton
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
          OnClick = sbPriorRepairsClick
        end
        object sbFirstRepairs: TSpeedButton
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
          OnClick = sbFirstRepairsClick
        end
        object sbFilterRepairs: TSpeedButton
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
          OnClick = sbFilterRepairsClick
        end
        object SpeedButton10: TSpeedButton
          Left = 0
          Top = 190
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
        object sbRefreshRepairs: TSpeedButton
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
          OnClick = sbRefreshRepairsClick
        end
        object SpeedButton12: TSpeedButton
          Left = 0
          Top = 270
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
          Visible = False
        end
        object SpeedButton13: TSpeedButton
          Tag = 3
          Left = 0
          Top = 222
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          AllowAllUp = True
          GroupIndex = 1
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
          OnClick = SpeedButton13Click
        end
      end
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
  end
  inherited ibsGen_ID: TIBSQL
    Left = 162
    Top = 92
  end
  object GridPopupMenu1: TcxGridPopupMenu
    Grid = dbgTO
    PopupMenus = <>
    Left = 218
    Top = 34
  end
  object ibdsMainTO: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainTOAfterDelete
    AfterScroll = ibdsMainTOAfterScroll
    OnNewRecord = ibdsMainTONewRecord
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
      'from TO12 T')
    ModifySQL.Strings = (
      'update TO12'
      'set'
      '  NUMBER = :NUMBER,'
      '  TO12_DATE = :TO12_DATE,'
      '  AUTOMOBILE_ID = :AUTOMOBILE_ID,'
      '  TO12_KIND = :TO12_KIND,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    Left = 33
    Top = 67
    object ibdsMainTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'T.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainTONUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'T.NUMBER'
    end
    object ibdsMainTOTO12_DATE: TDateField
      Alignment = taCenter
      FieldName = 'TO12_DATE'
      Origin = 'T.TO12_DATE'
      DisplayFormat = 'dd.mm.yy'
    end
    object ibdsMainTOAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = 'T.AUTOMOBILE_ID'
    end
    object ibdsMainTOTO12_KIND: TIntegerField
      FieldName = 'TO12_KIND'
      Origin = 'T.TO12_KIND'
    end
    object ibdsMainTOCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = 'T.COMMENTS'
      Size = 100
    end
  end
  object dsMainTO: TDataSource
    DataSet = ibdsMainTO
    OnStateChange = dsMainTOStateChange
    Left = 33
    Top = 97
  end
  object ibdsMainRepairs: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainTOAfterDelete
    AfterScroll = ibdsMainTOAfterScroll
    OnNewRecord = ibdsMainRepairsNewRecord
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
      'from REPAIRS R')
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
    Left = 63
    Top = 67
    object ibdsMainRepairsID: TIntegerField
      FieldName = 'ID'
      Origin = 'R.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRepairsNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'R.NUMBER'
    end
    object ibdsMainRepairsSTART_DATE: TDateField
      FieldName = 'START_DATE'
      Origin = 'R.START_DATE'
      DisplayFormat = 'dd.mm.yy'
    end
    object ibdsMainRepairsSTOP_DATE: TDateField
      FieldName = 'STOP_DATE'
      Origin = 'R.STOP_DATE'
      DisplayFormat = 'dd.mm.yy'
    end
    object ibdsMainRepairsAUTOMOBILE_ID: TIntegerField
      FieldName = 'AUTOMOBILE_ID'
      Origin = 'R.AUTOMOBILE_ID'
    end
    object ibdsMainRepairsPART_ID: TIntegerField
      FieldName = 'PART_ID'
      Origin = 'R.PART_ID'
    end
    object ibdsMainRepairsCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = 'R.COMMENTS'
      Size = 100
    end
  end
  object dsMainRepairs: TDataSource
    DataSet = ibdsMainRepairs
    OnStateChange = dsMainTOStateChange
    Left = 63
    Top = 97
  end
  object ibdsParts: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      'select P.ID, P.NAME, P.SHORT_NAME, P.COMMENTS, P.VALID'
      'from PARTS P'
      'where (P.VALID=1)')
    Left = 63
    Top = 127
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
    object ibdsPartsVALID: TIntegerField
      FieldName = 'VALID'
      Origin = '"PARTS"."VALID"'
    end
  end
  object dsParts: TDataSource
    DataSet = ibdsParts
    Left = 63
    Top = 157
  end
  object ibdsAutomobiles: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 200
    SelectSQL.Strings = (
      
        'select  A.ID, A.INVENTORY_NUMBER, AM.NAME, A.STATE_NUMBER, A.VAL' +
        'ID'
      'from AUTOMOBILE_MAKES AM, AUTOMOBILES A'
      'where (AM.ID=A.AUTOMOBILE_MAKE_ID) and (A.VALID=1)')
    Left = 33
    Top = 127
    object ibdsAutomobilesID: TIntegerField
      FieldName = 'ID'
      Origin = '"AUTOMOBILES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsAutomobilesINVENTORY_NUMBER: TIntegerField
      FieldName = 'INVENTORY_NUMBER'
      Origin = '"AUTOMOBILES"."INVENTORY_NUMBER"'
    end
    object ibdsAutomobilesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"AUTOMOBILE_MAKES"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsAutomobilesSTATE_NUMBER: TIBStringField
      FieldName = 'STATE_NUMBER'
      Origin = '"AUTOMOBILES"."STATE_NUMBER"'
      Size = 15
    end
    object ibdsAutomobilesVALID: TIntegerField
      FieldName = 'VALID'
      Origin = '"AUTOMOBILES"."VALID"'
    end
  end
  object dsAutomobiles: TDataSource
    DataSet = ibdsAutomobiles
    Left = 33
    Top = 157
  end
end
