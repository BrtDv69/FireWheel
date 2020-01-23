inherited frmNakl: TfrmNakl
  Left = 415
  Top = 180
  Width = 689
  Height = 460
  Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 681
    Height = 433
    ActivePage = tsPrimaryTovar
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    HotTrack = True
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabPosition = tpRight
    TabStop = False
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object tsPrimaryTovarList: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 425
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object dbgPrimaryTovarList: TwwDBGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 634
          Height = 329
          DisableThemesInTitle = False
          ControlType.Strings = (
            'CLOSED;CheckBox;1;0'
            'BLACK;CheckBox;1;0')
          Selected.Strings = (
            'NUMBER_STR'#9'8'#9#8470#8470#9'F'
            'PRIMARY_DATE'#9'8'#9#1044#1072#1090#1072#9'F'
            'FULL_CONTRACTOR_NAME'#9'56'#9#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#9'F'
            'AMOUNT'#9'12'#9#1057#1091#1084#1084#1072#9'F'
            'SHORT_NAME'#9'12'#9#1057#1095#1077#1090#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
          Align = alClient
          DataSource = dsMainPrimaryTovarList
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = [dgAllowDelete]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = RUSSIAN_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = True
          UseTFields = False
          OnCalcCellColors = dbgPrimaryTovarListCalcCellColors
          OnCalcTitleAttributes = dbgPrimaryTovarListCalcTitleAttributes
          OnTitleButtonClick = dbgPrimaryTovarListTitleButtonClick
          OnKeyPress = dbgPrimaryTovarBodyKeyPress
          OnCreateHintWindow = dbgPrimaryTovarListCreateHintWindow
          OnCalcTitleImage = dbgPrimaryTovarListCalcTitleImage
          TitleImageList = frmDM.ImageList2
          PadColumnStyle = pcsPadHeader
        end
        object pnlFilter: TPanel
          Left = 0
          Top = 346
          Width = 634
          Height = 79
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          DesignSize = (
            634
            79)
          object sbReFilter: TSpeedButton
            Left = 514
            Top = 58
            Width = 116
            Height = 18
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
            Flat = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              7A040000424D7A0400000000000036000000280000001C0000000D0000000100
              1800000000004404000000000000000000000000000000000000008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              8000808000808000808000808000808000808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              80008080FFFFFF00808000808000808000808000808000808000808000808000
              8080008080008080008080008080000000008080008080008080008080008080
              008080008080008080008080008080008080008080FFFFFF008080FFFFFF0080
              8000808000808000808000808000808000808000808000808000808000808000
              0000000000000000008080008080008080008080008080008080008080008080
              008080008080FFFFFF008080008080008080FFFFFF0080800080800080800080
              8000808000808000808000808000808000000000000000000000000000000000
              8080008080008080008080008080008080008080008080FFFFFF008080008080
              008080008080008080FFFFFF0080800080800080800080800080800080800080
              8000000000000000000000808000000000000000000000808000808000808000
              8080008080008080808080008080008080008080008080008080008080008080
              FFFFFF0080800080800080800080800080800080800000000000000080800080
              8000808000000000000000000000808000808000808000808000808080808000
              8080008080008080FFFFFF808080008080008080008080FFFFFF008080008080
              0080800080800080800080800080800080800080800080800080800000000000
              0000000000808000808000808000808000808080808080808080808000808000
              8080808080008080008080008080FFFFFF008080008080008080008080008080
              0080800080800080800080800080800080800000000000000000000080800080
              8000808000808000808000808000808000808000808000808080808000808000
              8080008080FFFFFF008080008080008080008080008080008080008080008080
              0080800080800080800000000000000000000080800080800080800080800080
              80008080008080008080008080008080808080008080008080008080FFFFFF00
              8080008080008080008080008080008080008080008080008080008080008080
              0000000000000080800080800080800080800080800080800080800080800080
              8000808000808080808000808000808080808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              0080800080800080800080800080800080800080800080800080800080808080
              8080808000808000808000808000808000808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              008080008080008080008080008080008080008080008080008080008080}
            NumGlyphs = 2
            ParentFont = False
            Visible = False
            OnClick = sbReFilterClick
          end
          object Label42: TLabel
            Left = 471
            Top = 41
            Width = 16
            Height = 16
            Caption = #1055#1086
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cbArticul: TwwCheckBox
            Left = 2
            Top = 22
            Width = 146
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1042#1082#1083#1102#1095#1072#1102#1097#1080#1077' '#1090#1086#1074#1072#1088':'
            TabOrder = 4
            OnClick = cbTypeClick
          end
          object cbContractor: TwwCheckBox
            Left = 404
            Top = 4
            Width = 92
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = cbTypeClick
          end
          object edContractor: TwwDBEdit
            Left = 496
            Top = 2
            Width = 134
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnChange = edTypeChange
          end
          object cbType: TwwCheckBox
            Left = 2
            Top = 4
            Width = 49
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1058#1080#1087':'
            TabOrder = 13
            OnClick = cbTypeClick
          end
          object edType: TwwDBLookupCombo
            Left = 51
            Top = 2
            Width = 351
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            LookupTable = ibdsFilterTypes
            LookupField = 'NAME'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            AutoDropDown = True
            ShowButton = True
            OrderByDisplay = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnChange = edTypeChange
          end
          object edArticul: TwwDBLookupCombo
            Left = 148
            Top = 20
            Width = 228
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            LookupTable = ibdsFilterArticuls
            LookupField = 'NAME'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            OrderByDisplay = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnChange = edTypeChange
          end
          object cbPrefix: TwwCheckBox
            Left = 2
            Top = 40
            Width = 80
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1055#1088#1077#1092#1080#1082#1089':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = cbTypeClick
          end
          object edPrefix: TwwDBEdit
            Left = 81
            Top = 38
            Width = 46
            Height = 19
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnChange = edTypeChange
          end
          object cbNumber: TwwCheckBox
            Left = 128
            Top = 40
            Width = 67
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1053#1086#1084#1077#1088':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = cbTypeClick
          end
          object edNumber: TwwDBEdit
            Left = 195
            Top = 38
            Width = 35
            Height = 19
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            Picture.PictureMask = '#*#'
            TabOrder = 10
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnChange = edTypeChange
          end
          object cbSuffix: TwwCheckBox
            Left = 230
            Top = 40
            Width = 81
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1057#1091#1092#1092#1080#1082#1089':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnClick = cbTypeClick
          end
          object edSuffix: TwwDBEdit
            Left = 311
            Top = 38
            Width = 46
            Height = 19
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 12
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnChange = edTypeChange
          end
          object cbPeriod: TwwCheckBox
            Left = 358
            Top = 40
            Width = 34
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1057
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = cbTypeClick
          end
          object deDateStart: TwwDBDateTimePicker
            Left = 392
            Top = 38
            Width = 78
            Height = 19
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            OnChange = deDateStartChange
          end
          object deDateStop: TwwDBDateTimePicker
            Left = 487
            Top = 38
            Width = 78
            Height = 19
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            OnChange = deDateStartChange
          end
          object cbAmount: TwwCheckBox
            Left = 566
            Top = 40
            Width = 85
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnClick = cbTypeClick
          end
          object cbAccount: TwwCheckBox
            Left = 488
            Top = 22
            Width = 55
            Height = 17
            DisableThemes = False
            AlwaysTransparent = True
            Frame.Enabled = True
            Frame.Transparent = True
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = #1057#1095#1077#1090':'
            TabOrder = 18
            OnClick = cbTypeClick
          end
          object edAccount: TwwDBLookupCombo
            Left = 543
            Top = 20
            Width = 87
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'SHORT_NAME'#9'10'#9#1050#1086#1088'.'#1085#1072#1080#1084'.'#9'F'
              'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
            DataField = 'SHORT_NAME'
            LookupTable = ibdsFilterAccounts
            LookupField = 'SHORT_NAME'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 19
            AutoDropDown = True
            ShowButton = True
            OrderByDisplay = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnChange = edTypeChange
          end
          object cbbAmountSign: TwwDBComboBox
            Left = 651
            Top = 38
            Width = 37
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            BorderStyle = bsNone
            DropDownCount = 8
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            ItemHeight = 0
            Items.Strings = (
              '<'
              '<='
              '='
              '>='
              '>'
              '<>')
            ItemIndex = 2
            ParentFont = False
            Sorted = False
            TabOrder = 16
            UnboundDataType = wwDefault
            OnChange = cbbAmountSignChange
          end
          object edAmount: TwwDBEdit
            Left = 689
            Top = 38
            Width = 52
            Height = 19
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            Picture.PictureMask = '#*#'
            TabOrder = 17
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnChange = edTypeChange
          end
        end
        object pnlText: TPanel
          Left = 0
          Top = 329
          Width = 634
          Height = 17
          Align = alBottom
          AutoSize = True
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          DesignSize = (
            634
            17)
          object lblFilter: TLabel
            Left = 2
            Top = 2
            Width = 630
            Height = 13
            Align = alTop
            AutoSize = False
            Color = clBtnFace
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object sbUp: TSpeedButton
            Left = 619
            Top = 4
            Width = 11
            Height = 11
            Cursor = crHandPoint
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080
            AllowAllUp = True
            Anchors = [akTop, akRight]
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              333333333333333300003333333333333333FFFFFFFFFFF30000330000000000
              33373333333333F300003330000000033333733333333F330000333300000033
              333337333333F333000033333000033333333373333F33330000333333003333
              3333333733F33333000033333333333333333333773333330000333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              33333333333333330000}
            Layout = blGlyphRight
            NumGlyphs = 2
            OnClick = sbDownClick
          end
          object sbDown: TSpeedButton
            Left = 619
            Top = 4
            Width = 11
            Height = 11
            Cursor = crHandPoint
            Hint = #1059#1073#1088#1072#1090#1100#13#10#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080'|'#1059#1073#1088#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080
            AllowAllUp = True
            Anchors = [akTop, akRight]
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D0000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333773333333333333333003333
              3333333733F33333333333333000033333333373333F33333333333300000033
              333337333333F33333333330000000033333733333333F333333330000000000
              33373333333333F333303333333333333333FFFFFFFFFFF33300333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              33333333333333333333}
            Layout = blGlyphRight
            NumGlyphs = 2
            Visible = False
            OnClick = sbDownClick
          end
        end
      end
      object Panel4: TPanel
        Left = 634
        Top = 0
        Width = 19
        Height = 425
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object sbCancelPrimaryTovarList: TSpeedButton
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
          OnClick = sbCancelPrimaryTovarListClick
        end
        object sbApplyPrimaryTovarList: TSpeedButton
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
          OnClick = sbApplyPrimaryTovarListClick
        end
        object sbDeletePrimaryTovarList: TSpeedButton
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
          OnClick = sbDeletePrimaryTovarListClick
        end
        object sbAddPrimaryTovarList: TSpeedButton
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
          OnClick = sbAddPrimaryTovarListClick
        end
        object sbLastPrimaryTovarList: TSpeedButton
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
          OnClick = sbLastPrimaryTovarListClick
        end
        object sbNextPrimaryTovarList: TSpeedButton
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
          OnClick = sbNextPrimaryTovarListClick
        end
        object sbPriorPrimaryTovarList: TSpeedButton
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
          OnClick = sbPriorPrimaryTovarListClick
        end
        object sbFirstPrimaryTovarList: TSpeedButton
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
          OnClick = sbFirstPrimaryTovarListClick
        end
        object sbFilterPrimaryTovarList: TSpeedButton
          Left = 0
          Top = 171
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
          OnClick = sbFilterPrimaryTovarListClick
        end
        object sbClose: TSpeedButton
          Left = 0
          Top = 209
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
        object sbRefreshPrimaryTovarList: TSpeedButton
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
          OnClick = sbRefreshPrimaryTovarListClick
        end
        object sbPrintPrimaryTovarList: TSpeedButton
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
          OnClick = sbPrintPrimaryTovarListClick
        end
      end
    end
    object tsPrimaryTovar: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
      ImageIndex = 1
      OnShow = tsPrimaryTovarShow
      object Panel10: TPanel
        Left = 634
        Top = 0
        Width = 19
        Height = 425
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object sbCancelPrimaryTovar: TSpeedButton
          Left = 0
          Top = 57
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
          OnClick = sbCancelPrimaryTovarClick
        end
        object sbApplyPrimaryTovar: TSpeedButton
          Left = 0
          Top = 38
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
          OnClick = sbApplyPrimaryTovarClick
        end
        object sbDeletePrimaryTovar: TSpeedButton
          Left = 0
          Top = 19
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
          OnClick = sbDeletePrimaryTovarClick
        end
        object sbAddPrimaryTovar: TSpeedButton
          Left = 0
          Top = 0
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
          OnClick = sbAddPrimaryTovarClick
        end
        object SpeedButton21: TSpeedButton
          Left = 0
          Top = 76
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
        object sbPrintPrimaryTovar: TSpeedButton
          Left = 0
          Top = 172
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
        object SpeedButton35: TSpeedButton
          Tag = 3
          Left = 0
          Top = 106
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 425
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 630
          Height = 58
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            630
            58)
          object Label12: TLabel
            Left = 177
            Top = 38
            Width = 95
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1057#1091#1084#1084#1072' '#1079#1072' '#1090#1086#1074#1072#1088
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 378
            Top = 38
            Width = 27
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1053#1044#1057
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 493
            Top = 38
            Width = 33
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1048#1090#1086#1075#1086
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 3
            Top = 2
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
          object Label25: TLabel
            Left = 117
            Top = 2
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
          object Label27: TLabel
            Left = 211
            Top = 2
            Width = 88
            Height = 16
            Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblContractor: TLabel
            Left = 3
            Top = 20
            Width = 76
            Height = 16
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 3
            Top = 38
            Width = 102
            Height = 16
            Caption = #1057#1095#1077#1090' '#1073#1091#1093'. '#1091#1095#1077#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblPassPersons: TLabel
            Left = 307
            Top = 20
            Width = 36
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1063#1077#1088#1077#1079
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 19
            Top = 1
            Width = 96
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = True
            BorderStyle = bsNone
            ButtonStyle = cbsEllipsis
            CharCase = ecUpperCase
            DataField = 'Number_Str'
            DataSource = dsMainPrimaryTovar
            DisableDropDownList = True
            DropDownCount = 8
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ItemHeight = 0
            ParentFont = False
            ReadOnly = True
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            OnDropDown = wwDBComboBox2DropDown
          end
          object wwDBDateTimePicker4: TwwDBDateTimePicker
            Left = 131
            Top = 1
            Width = 78
            Height = 19
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'PRIMARY_DATE'
            DataSource = dsMainPrimaryTovar
            Epoch = 1950
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
          end
          object dblPrimarySetup: TwwDBLookupCombo
            Left = 301
            Top = 1
            Width = 327
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
            DataField = 'PRIMARY_SETUP_ID'
            DataSource = dsMainPrimaryTovar
            LookupTable = ibdsPrimary_Setup
            LookupField = 'ID'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnCloseUp = dblPrimarySetupCloseUp
          end
          object dblContractor: TwwDBLookupCombo
            Left = 80
            Top = 19
            Width = 224
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CONTRACTOR_NAME'#9'60'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
            DataField = 'CONTRACTOR_ID_TYPE'
            DataSource = dsMainPrimaryTovar
            LookupTable = ibdsContractors
            LookupField = 'CONTRACTOR_ID_TYPE'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnCloseUp = dblContractorCloseUp
            OnKeyUp = dblContractorKeyUp
          end
          object dblAccounts: TwwDBLookupCombo
            Left = 107
            Top = 37
            Width = 68
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'
              'SHORT_NAME'#9'10'#9#1050#1086#1088'.'#1085#1072#1080#1084'.'#9'F')
            DataField = 'ACCOUNT_ID'
            DataSource = dsMainPrimaryTovar
            LookupTable = ibdsAccounts
            LookupField = 'ID'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            PopupMenu = pmAccount
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnKeyUp = dblAccountsKeyUp
          end
          object dblPassPersons: TwwDBLookupCombo
            Left = 345
            Top = 19
            Width = 283
            Height = 19
            Anchors = [akTop, akRight]
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'CONTRACTOR_NAME'#9'60'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
            DataField = 'PASS_PERSON_ID'
            DataSource = dsMainPrimaryTovar
            LookupTable = ibdsPassPersons
            LookupField = 'ID'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 8
            Visible = False
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object dbeTovar: TwwDBEdit
            Left = 274
            Top = 37
            Width = 100
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BorderStyle = bsNone
            EditAlignment = eaRightAlignEditing
            Enabled = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
          end
          object dbeNDS: TwwDBEdit
            Left = 407
            Top = 37
            Width = 82
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
          end
          object dbeItogo: TwwDBEdit
            Left = 528
            Top = 37
            Width = 100
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
          end
        end
        object pnlCommentsNakl: TPanel
          Left = 2
          Top = 365
          Width = 630
          Height = 58
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          DesignSize = (
            630
            58)
          object Label11: TLabel
            Left = 3
            Top = -1
            Width = 80
            Height = 16
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 38
            Top = 14
            Width = 591
            Height = 43
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            BorderStyle = bsNone
            DataField = 'COMMENTS'
            DataSource = dsMainPrimaryTovar
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efBottomBorder]
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = True
            WordWrap = True
          end
        end
        object Panel6: TPanel
          Left = 2
          Top = 60
          Width = 630
          Height = 305
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object dbgPrimaryTovarBody: TwwDBGrid
            Tag = 2
            Left = 0
            Top = 0
            Width = 630
            Height = 305
            DisableThemesInTitle = False
            ControlType.Strings = (
              'ARTICUL_NAME;CustomEdit;lcArticuls;F'
              'MADE_IN;CustomEdit;wwDBLookupCombo10;F'
              'COUNTRY_ID;CustomEdit;wwDBLookupCombo1;T'
              'COUNTRY_NAME;CustomEdit;wwDBLookupCombo1;T'
              'SHORT_NAME;CustomEdit;dblAccountsBody;F'
              'SERIALS_COUNT;CustomEdit;wwExpandButton1;F')
            Selected.Strings = (
              'SERIALS_COUNT'#9'2'#9' '#9'F'#9
              'ARTICUL'#9'10'#9#1040#1088#1090#1080#1082#1091#1083#9'F'#9
              'ARTICUL_NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'#9
              'PACKS_AMOUNT'#9'10'#9#1059#1087'.'#9'F'#9
              'PACK_VALUE'#9'10'#9#1045#1084'.'#9'F'#9
              'ITEMS_AMOUNT'#9'10'#9#1045#1076'.'#9'F'#9
              'Itogo'#9'10'#9#1042#1089#1077#1075#1086#9'F'#9
              'TOTAL'#9'10'#9#1053#1072' '#1089#1082#1083#1072#1076#1077#9'F'#9
              'PRICE'#9'10'#9#1062#1077#1085#1072#9'F'#9
              'ItogoMany'#9'10'#9#1048#1090#1086#1075#1086#9'F'#9
              'SHORT_NAME'#9'10'#9#1057#1095#1077#1090#9'F'#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Align = alClient
            DataSource = dsMainPrimaryTovarBody
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgWordWrap, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgTabExitsOnLastCol, dgRowResize]
            ParentFont = False
            PopupMenu = pmPrimaryTovarBody
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = True
            OnCalcCellColors = dbgPrimaryTovarBodyCalcCellColors
            OnCalcTitleAttributes = dbgPrimaryTovarListCalcTitleAttributes
            OnTitleButtonClick = dbgPrimaryTovarListTitleButtonClick
            OnDrawDataCell = dbgPrimaryTovarBodyDrawDataCell
            OnKeyPress = dbgPrimaryTovarBodyKeyPress
            OnKeyUp = dbgPrimaryTovarBodyKeyUp
            OnCreateHintWindow = dbgPrimaryTovarListCreateHintWindow
            OnCalcTitleImage = dbgPrimaryTovarListCalcTitleImage
            TitleImageList = frmDM.ImageList2
            PadColumnStyle = pcsPlain
          end
          object lcArticuls: TwwDBLookupCombo
            Left = 31
            Top = 59
            Width = 250
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAME'#9'60'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'#9)
            DataField = 'ID'
            DataSource = dsMainPrimaryTovarBody
            LookupTable = ibdsArticuls
            LookupField = 'ID'
            Options = [loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 1
            Visible = False
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = lcArticulsCloseUp
          end
          object dblAccountsBody: TwwDBLookupCombo
            Left = 295
            Top = 59
            Width = 250
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'SHORT_NAME'#9'10'#9#1050#1086#1088'.'#1085#1072#1080#1084'.'#9'F'
              'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
            DataField = 'SHORT_NAME'
            DataSource = dsMainPrimaryTovarBody
            LookupTable = ibdsAccounts
            LookupField = 'SHORT_NAME'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            PopupMenu = pmBodyAccount
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            OrderByDisplay = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = dblAccountsBodyCloseUp
          end
          object lcStoreCards: TwwDBLookupCombo
            Left = 31
            Top = 83
            Width = 250
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAME'#9'60'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'#9
              'PRICE'#9'10'#9#1062#1077#1085#1072#9'F'#9
              'TOTAL'#9'10'#9#1054#1089#1090#1072#1090#1086#1082#9'F'#9)
            DataField = 'STORE_CARD_ID'
            DataSource = dsMainPrimaryTovarBody
            LookupTable = ibdsStoreCards
            LookupField = 'ARTICUL_ID'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 3
            Visible = False
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = lcStoreCardsCloseUp
          end
          object lcRemains: TwwDBLookupCombo
            Left = 31
            Top = 107
            Width = 250
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DisableThemes = False
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAME'#9'60'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'#9
              'PRICE'#9'10'#9#1062#1077#1085#1072#9'F'#9
              'TOTAL'#9'10'#9#1054#1089#1090#1072#1090#1086#1082#9'F'#9)
            DataField = 'ARTICUL_ID'
            DataSource = dsMainPrimaryTovarBody
            LookupTable = ibdsRemains
            LookupField = 'ARTICUL_ID'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Style = csDropDownList
            ButtonEffects.Flat = True
            Navigator = False
            Frame.Enabled = True
            Frame.Transparent = True
            ParentFont = False
            TabOrder = 4
            Visible = False
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = lcRemainsCloseUp
          end
          object wwExpandButton1: TwwExpandButton
            Left = 40
            Top = 24
            Width = 25
            Height = 17
            DisableThemes = False
            Grid = dbgSerials
            AutoShrink = False
            OnBeforeExpand = wwExpandButton1BeforeExpand
            OnCheckVisibleButton = wwExpandButton1CheckVisibleButton
            Caption = 'wwExpandButton1'
            DataField = 'SERIALS_COUNT'
            DataSource = dsMainPrimaryTovarBody
            TabOrder = 5
          end
          object dbgSerials: TwwDBGrid
            Tag = 2
            Left = 400
            Top = 80
            Width = 481
            Height = 209
            DisableThemesInTitle = False
            ControlType.Strings = (
              'CHK;CheckBox;1;0')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'74'#9#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Ctl3D = False
            DataSource = dsSerials_Outer_In
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MultiSelectOptions = [msoShiftSelect]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgWordWrap, dgShowFooter, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            Visible = False
            TitleImageList = frmDM.ImageList2
            PadColumnStyle = pcsPlain
          end
        end
      end
      object pnlSerials: TPanel
        Left = 208
        Top = 115
        Width = 292
        Height = 233
        BevelInner = bvLowered
        TabOrder = 2
        Visible = False
        OnResize = pnlSerialsResize
        object Panel3: TPanel
          Left = 2
          Top = 218
          Width = 288
          Height = 13
          Cursor = crSizeNWSE
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          OnMouseMove = Panel3MouseMove
          object sbSerialsClose: TSpeedButton
            Left = 1
            Top = 0
            Width = 12
            Height = 13
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              C6000000424DC60000000000000076000000280000000A0000000A0000000100
              04000000000050000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
              0000888888888800000080088880080000008800880088000000888000088800
              0000888800888800000088800008880000008800880088000000800888800800
              00008888888888000000}
            OnClick = sbSerialsCloseClick
          end
        end
        object pnlSplitter: TPanel
          Left = 134
          Top = 2
          Width = 28
          Height = 216
          Align = alLeft
          TabOrder = 1
          object sbToAvailable: TSpeedButton
            Left = 1
            Top = 31
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1089#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072' '#1080#1079' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            AllowAllUp = True
            Enabled = False
            Flat = True
            Glyph.Data = {
              B60D0000424DB60D000000000000360000002800000030000000180000000100
              180000000000800D0000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF088C101094
              10CEEFBDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF7373737B7B7BE4E4E4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF00840000AD00218C18BDEFC6FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6B6B6B7E7E7E7B7B7BE4E4E4FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF008C080094
              00008C00189418C6EFCEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF6F6F6F7373736F6F6F7E7E7EE6E6E6FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF088C08009C00219C18008400188418CEEFCEFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7373737777778282826B6B6B77
              7777E9E9E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF088400009C
              00088C0029A521088400088C10CEEFCEFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF6B6B6B7777776F6F6F8A8A8A6B6B6B737373E9E9E9FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF10BD0800A50000AD0800A50000940808940000940000
              9400009400008400087B10009400009C00008C0010840842A542087B08188418
              D6E7D6FF00FFFF00FFFF00FFFF00FFFF00FF8A8A8A7B7B7B7E7E7E7B7B7B7373
              737373737373737373737373736B6B6B6A6A6A7373737777776F6F6F6F6F6F99
              99996A6A6A777777E9E9E9FF00FFFF00FFFF00FFFF00FFFF00FF00AD006BDE6B
              5AE75A52E75242DE4231D63118C61800B50800AD0000B50000A500089C00088C
              08008C00008C0021942152AD52107B08107B10D6EFDEFF00FFFF00FFFF00FFFF
              00FF7E7E7EC0C0C0BDBDBDBABABAB0B0B0A6A6A69595958282827E7E7E828282
              7B7B7B7777777373736F6F6F6F6F6F828282A3A3A36A6A6A6E6E6EECECECFF00
              FFFF00FFFF00FFFF00FF009C0863E76331DE2918D61808C60000BD0000BD0000
              B50000B50000A50000A500009C00008C00008C08009400008400218C1852AD52
              007300187B18D6EFD6FF00FFFF00FFFF00FF777777C1C1C1A6A6A69C9C9C8A8A
              8A8686868686868282828282827B7B7B7B7B7B7777776F6F6F6F6F6F7373736B
              6B6B7B7B7BA3A3A3616161727272ECECECFF00FFFF00FFFF00FF009C0063E76B
              18D61800CE0000C60000C60000BD0000AD0800A50000A500009C0000A500009C
              00008C08008400008C0808730018841873B56B006B00188418D6E7D6FF00FFFF
              00FF777777C1C1C19C9C9C8E8E8E8A8A8A8A8A8A8686867E7E7E7B7B7B7B7B7B
              7777777B7B7B7777776F6F6F6B6B6B6F6F6F616161777777B0B0B05D5D5D7777
              77E9E9E9FF00FFFF00FF10940863E76308D60000CE0000C60000C60000BD0000
              B50000B50000AD0008A500089400009C00008C08008C00008400007B00007300
              187B2173B57B087300187B18DEEFDEFF00FF777777C1C1C19292928E8E8E8A8A
              8A8A8A8A8686868282828282827E7E7E7B7B7B7373737777776F6F6F6F6F6F6B
              6B6B656565616161727272B4B4B4616161727272EFEFEFFF00FF00A50063E76B
              08C60000CE0008C60000C60000BD0000B50000B50000AD0000A500009C080094
              00008C08088C00008400008400087B08007B00298C317BB584086308187B21EF
              F7EF7B7B7BC1C1C18A8A8A8E8E8E8A8A8A8A8A8A8686868282828282827E7E7E
              7B7B7B7777777373736F6F6F6F6F6F6B6B6B6B6B6B6A6A6A656565828282B7B7
              B75D5D5D727272F7F7F7009C0063E76B00D60000CE0008C60000C60000B50800
              B50000AD0000AD0000A500009C00009400009400008400008400008400007B00
              0073001884182984318CC6941063006B946B777777C1C1C19292928E8E8E8A8A
              8A8A8A8A8282828282827E7E7E7E7E7E7B7B7B7777777373737373736B6B6B6B
              6B6B6B6B6B6565656161617777777E7E7EC4C4C4585858A3A3A3089C006BE76B
              00CE0000CE0008C60000BD0000BD0000B50000AD0000AD0000A5080094000094
              08008C08008C00008400007B00007B00007300398C3184BD84006B00187329EF
              F7EF777777C4C4C48E8E8E8E8E8E8A8A8A8686868686868282827E7E7E7E7E7E
              7B7B7B7373737373736F6F6F6F6F6F6B6B6B656565656565616161868686BDBD
              BD5D5D5D6E6E6EF7F7F7009C0063E76300CE0000CE0008C60000C60000BD0000
              B50000AD0000A50000A500009C00009400009400008400008400087B08007300
              2984187BB573086B00187B21D6EFD6FF00FF777777C1C1C18E8E8E8E8E8E8A8A
              8A8A8A8A8686868282827E7E7E7B7B7B7B7B7B7777777373737373736B6B6B6B
              6B6B6A6A6A616161777777B4B4B45D5D5D727272ECECECFF00FF009C0063E76B
              10D61000C60000C60000C60000BD0000B50000AD0000A50000A500089C000894
              00008C00088C0000840008840018842163AD63007300187B21DEE7D6FF00FFFF
              00FF777777C1C1C19999998A8A8A8A8A8A8A8A8A8686868282827E7E7E7B7B7B
              7B7B7B7777777373736F6F6F6F6F6F6B6B6B6B6B6B777777AAAAAA6161617272
              72E9E9E9FF00FFFF00FF0094086BEF6331DE2918D61808C60000C60000BD0000
              B50000B50000AD08009C08089400089400008C00008C00008400108C1852AD52
              007B00107B18D6EFDEFF00FFFF00FFFF00FF737373C4C4C4A6A6A69C9C9C8A8A
              8A8A8A8A8686868282828282827E7E7E7777777373737373736F6F6F6F6F6F6B
              6B6B777777A3A3A36565656E6E6EECECECFF00FFFF00FFFF00FF00AD007BDE7B
              63E7635AE75A42DE4229D63118C61800B50800AD0800AD0000A500009C000094
              000094000084001894214AAD52107B00107B10CEE7DEFF00FFFF00FFFF00FFFF
              00FF7E7E7EC6C6C6C1C1C1BDBDBDB0B0B0A3A3A39595958282827E7E7E7E7E7E
              7B7B7B7777777373737373736B6B6B7E7E7E9F9F9F6565656E6E6EE6E6E6FF00
              FFFF00FFFF00FFFF00FF10C60800A50000AD0000A500009C00009C00089C0000
              9400008C00108400008400009400009400008C0008840039AD39107B08188410
              D6E7D6FF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E7B7B7B7E7E7E7B7B7B7777
              777777777777777373736F6F6F6B6B6B6B6B6B7373737373736F6F6F6B6B6B99
              99996A6A6A737373E9E9E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF108410009C
              00008C0029AD29088400088C10D6EFD6FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF7373737777776F6F6F9292926B6B6B737373ECECECFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF008C00109408189418008C00188C18D6E7D6FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6F6F6F7777777E7E7E6F6F6F7B
              7B7BE9E9E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF088C000894
              00009400189418C6EFC6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF6F6F6F7373737373737E7E7EE6E6E6FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF009400009C00189418C6EFC6FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7373737777777E7E7EE6E6E6FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0084002194
              21C6EFCEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF6B6B6B828282E6E6E6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFA5E7A5C6EFC6FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9D9D9E6E6E6FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbToAvailableClick
          end
          object sbToDoc: TSpeedButton
            Left = 1
            Top = 58
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1077' '#1089#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090
            AllowAllUp = True
            Enabled = False
            Flat = True
            Glyph.Data = {
              B60D0000424DB60D000000000000360000002800000030000000180000000100
              180000000000800D0000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEEFBD109410088C
              10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              E4E4E47B7B7B737373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBDEFC6218C1800AD00008400FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFE4E4E47B7B7B7E7E7E6B6B6BFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6EFCE189418008C00009400008C
              08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6E6E67E7E7E
              6F6F6F7373736F6F6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE
              EFCE188418008400219C18009C00088C08FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFE9E9E97777776B6B6B828282777777737373FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFCEEFCE088C1008840029A521088C00009C000884
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9E9E97373736B6B6B8A8A8A
              6F6F6F7777776B6B6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6E7D618841808
              7B0842A542108408008C00009C00009400087B10008400009400009400009400
              08940000940800A50000AD0800A50010BD08FF00FFFF00FFFF00FFFF00FFFF00
              FFE9E9E97777776A6A6A9999996F6F6F6F6F6F7777777373736A6A6A6B6B6B73
              73737373737373737373737373737B7B7B7E7E7E7B7B7B8A8A8AFF00FFFF00FF
              FF00FFFF00FFD6EFDE107B10107B0852AD52219421008C00008C00088C08089C
              0000A50000B50000AD0000B50818C61831D63142DE4252E7525AE75A6BDE6B00
              AD00FF00FFFF00FFFF00FFFF00FFECECEC6E6E6E6A6A6AA3A3A38282826F6F6F
              6F6F6F7373737777777B7B7B8282827E7E7E828282959595A6A6A6B0B0B0BABA
              BABDBDBDC0C0C07E7E7EFF00FFFF00FFFF00FFD6EFD6187B1800730052AD5221
              8C18008400009400008C08008C00009C0000A50000A50000B50000B50000BD00
              00BD0008C60018D61831DE2963E763009C08FF00FFFF00FFFF00FFECECEC7272
              72616161A3A3A37B7B7B6B6B6B7373736F6F6F6F6F6F7777777B7B7B7B7B7B82
              82828282828686868686868A8A8A9C9C9CA6A6A6C1C1C1777777FF00FFFF00FF
              D6E7D6188418006B0073B56B188418087300008C08008400008C08009C0000A5
              00009C0000A50000A50000AD0800BD0000C60000C60000CE0018D61863E76B00
              9C00FF00FFFF00FFE9E9E97777775D5D5DB0B0B07777776161616F6F6F6B6B6B
              6F6F6F7777777B7B7B7777777B7B7B7B7B7B7E7E7E8686868A8A8A8A8A8A8E8E
              8E9C9C9CC1C1C1777777FF00FFDEEFDE187B1808730073B57B187B2100730000
              7B00008400008C00008C08009C0008940008A50000AD0000B50000B50000BD00
              00C60000C60000CE0008D60063E763109408FF00FFEFEFEF727272616161B4B4
              B47272726161616565656B6B6B6F6F6F6F6F6F7777777373737B7B7B7E7E7E82
              82828282828686868A8A8A8A8A8A8E8E8E929292C1C1C1777777EFF7EF187B21
              0863087BB584298C31007B00087B08008400008400088C00008C08009400009C
              0800A50000AD0000B50000B50000BD0000C60008C60000CE0008C60063E76B00
              A500F7F7F77272725D5D5DB7B7B78282826565656A6A6A6B6B6B6B6B6B6F6F6F
              6F6F6F7373737777777B7B7B7E7E7E8282828282828686868A8A8A8A8A8A8E8E
              8E8A8A8AC1C1C17B7B7B6B946B1063008CC694298431188418007300007B0000
              8400008400008400009400009400009C0000A50000AD0000AD0000B50000B508
              00C60008C60000CE0000D60063E76B009C00A3A3A3585858C4C4C47E7E7E7777
              776161616565656B6B6B6B6B6B6B6B6B7373737373737777777B7B7B7E7E7E7E
              7E7E8282828282828A8A8A8A8A8A8E8E8E929292C1C1C1777777EFF7EF187329
              006B0084BD84398C31007300007B00007B00008400008C00008C080094080094
              0000A50800AD0000AD0000B50000BD0000BD0008C60000CE0000CE006BE76B08
              9C00F7F7F76E6E6E5D5D5DBDBDBD8686866161616565656565656B6B6B6F6F6F
              6F6F6F7373737373737B7B7B7E7E7E7E7E7E8282828686868686868A8A8A8E8E
              8E8E8E8EC4C4C4777777FF00FFD6EFD6187B21086B007BB57329841800730008
              7B08008400008400009400009400009C0000A50000A50000AD0000B50000BD00
              00C60008C60000CE0000CE0063E763009C00FF00FFECECEC7272725D5D5DB4B4
              B47777776161616A6A6A6B6B6B6B6B6B7373737373737777777B7B7B7B7B7B7E
              7E7E8282828686868A8A8A8A8A8A8E8E8E8E8E8EC1C1C1777777FF00FFFF00FF
              DEE7D6187B2100730063AD63188421088400008400088C00008C00089400089C
              0000A50000A50000AD0000B50000BD0000C60000C60000C60010D61063E76B00
              9C00FF00FFFF00FFE9E9E9727272616161AAAAAA7777776B6B6B6B6B6B6F6F6F
              6F6F6F7373737777777B7B7B7B7B7B7E7E7E8282828686868A8A8A8A8A8A8A8A
              8A999999C1C1C1777777FF00FFFF00FFFF00FFD6EFDE107B18007B0052AD5210
              8C18008400008C00008C00089400089400009C0800AD0800B50000B50000BD00
              00C60008C60018D61831DE296BEF63009408FF00FFFF00FFFF00FFECECEC6E6E
              6E656565A3A3A37777776B6B6B6F6F6F6F6F6F7373737373737777777E7E7E82
              82828282828686868A8A8A8A8A8A9C9C9CA6A6A6C4C4C4737373FF00FFFF00FF
              FF00FFFF00FFCEE7DE107B10107B004AAD52189421008400009400009400009C
              0000A50000AD0000AD0800B50818C61829D63142DE425AE75A63E7637BDE7B00
              AD00FF00FFFF00FFFF00FFFF00FFE6E6E66E6E6E6565659F9F9F7E7E7E6B6B6B
              7373737373737777777B7B7B7E7E7E7E7E7E828282959595A3A3A3B0B0B0BDBD
              BDC1C1C1C6C6C67E7E7EFF00FFFF00FFFF00FFFF00FFFF00FFD6E7D618841010
              7B0839AD39088400008C00009400009400008400108400008C00009400089C00
              009C00009C0000A50000AD0000A50010C608FF00FFFF00FFFF00FFFF00FFFF00
              FFE9E9E97373736A6A6A9999996B6B6B6F6F6F7373737373736B6B6B6B6B6B6F
              6F6F7373737777777777777777777B7B7B7E7E7E7B7B7B8E8E8EFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD6EFD6088C1008840029AD29008C00009C001084
              10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFECECEC7373736B6B6B929292
              6F6F6F777777737373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6
              E7D6188C18008C00189418109408008C00FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFE9E9E97B7B7B6F6F6F7E7E7E7777776F6F6FFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6EFC6189418009400089400088C
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6E6E67E7E7E
              7373737373736F6F6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFC6EFC6189418009C00009400FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFE6E6E67E7E7E777777737373FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6EFCE2194210084
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              E6E6E68282826B6B6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFC6EFC6A5E7A5FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6E6E6D9D9D9FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbToDocClick
          end
        end
        object pnlDoc: TPanel
          Left = 2
          Top = 2
          Width = 132
          Height = 216
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            132
            216)
          object dbgDoc: TwwDBGrid
            Tag = 2
            Left = 0
            Top = 0
            Width = 132
            Height = 198
            DisableThemesInTitle = False
            ControlType.Strings = (
              'CHK;CheckBox;1;0')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'18'#9#1057#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072'~'#1076#1086#1082#1091#1084#1077#1085#1090#1072#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Anchors = [akLeft, akTop, akRight, akBottom]
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsSerials_Inner_Movement
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyOptions = []
            MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
            Options = [dgTitles, dgColumnResize, dgTabs, dgWordWrap, dgMultiSelect, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = sbToAvailableClick
            OnEnter = dbgAvailableEnter
            OnKeyUp = dbgDocKeyUp
            TitleImageList = frmDM.ImageList2
            PadColumnStyle = pcsPlain
          end
          object edSearchDoc: TwwDBEdit
            Left = 0
            Top = 197
            Width = 132
            Height = 19
            Hint = #1055#1086#1080#1089#1082' '#1089#1077#1088#1080#1081#1085#1086#1075#1086' '#1085#1086#1084#1077#1088#1072' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1077
            TabStop = False
            Anchors = [akLeft, akRight, akBottom]
            BorderStyle = bsNone
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyPress = edSearchDocKeyPress
          end
        end
        object pnlAvailable: TPanel
          Left = 162
          Top = 2
          Width = 128
          Height = 216
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            128
            216)
          object dbgAvailable: TwwDBGrid
            Tag = 2
            Left = 0
            Top = 0
            Width = 128
            Height = 198
            DisableThemesInTitle = False
            ControlType.Strings = (
              'CHK;CheckBox;1;0')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'18'#9#1044#1086#1089#1090#1091#1087#1085#1099#1077'~'#1089#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Anchors = [akLeft, akTop, akRight, akBottom]
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsSerials_Available
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyOptions = []
            MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
            Options = [dgTitles, dgColumnResize, dgTabs, dgWordWrap, dgMultiSelect, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = sbToDocClick
            OnEnter = dbgAvailableEnter
            OnKeyUp = dbgDocKeyUp
            TitleImageList = frmDM.ImageList2
            PadColumnStyle = pcsPlain
          end
          object edSearchAvailable: TwwDBEdit
            Left = 0
            Top = 197
            Width = 128
            Height = 19
            Hint = #1055#1086#1080#1089#1082' '#1089#1077#1088#1080#1081#1085#1086#1075#1086' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076#1077
            TabStop = False
            Anchors = [akLeft, akRight, akBottom]
            BorderStyle = bsNone
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.MouseEnterSameAsFocus = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyPress = edSearchAvailableKeyPress
          end
        end
      end
    end
  end
  object pnlMessage: TPanel [1]
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
  object pnlNumber: TPanel [2]
    Left = 456
    Top = 233
    Width = 142
    Height = 61
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    DesignSize = (
      142
      61)
    object SpeedButton22: TSpeedButton
      Left = 127
      Top = 3
      Width = 12
      Height = 12
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        C6000000424DC60000000000000076000000280000000A0000000A0000000100
        04000000000050000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
        0000888888888800000080088880080000008800880088000000888000088800
        0000888800888800000088800008880000008800880088000000800888800800
        00008888888888000000}
      OnClick = SpeedButton22Click
    end
    object Label10: TLabel
      Left = 3
      Top = 4
      Width = 59
      Height = 16
      Caption = #1055#1088#1077#1092#1080#1082#1089
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 3
      Top = 40
      Width = 61
      Height = 16
      Caption = #1057#1091#1092#1092#1080#1082#1089
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 3
      Top = 22
      Width = 28
      Height = 16
      Caption = #8470#8470
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 66
      Top = 3
      Width = 60
      Height = 19
      BorderStyle = bsNone
      DataField = 'NUMBER_PREFIX'
      DataSource = dsMainPrimaryTovar
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBSpinEdit2: TwwDBSpinEdit
      Left = 35
      Top = 21
      Width = 63
      Height = 19
      Anchors = [akTop, akRight]
      Increment = 1.000000000000000000
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NUMBER'
      DataSource = dsMainPrimaryTovar
      ButtonEffects.Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object wwDBEdit11: TwwDBEdit
      Left = 66
      Top = 39
      Width = 60
      Height = 19
      BorderStyle = bsNone
      DataField = 'NUMBER_SUFFIX'
      DataSource = dsMainPrimaryTovar
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Left = 81
    Top = 154
  end
  inherited ibsGen_ID: TIBSQL
    Left = 257
    Top = 271
  end
  object trLock: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    IdleTimer = 20
    DefaultAction = TARollback
    Params.Strings = (
      'consistency'
      'lock_write=PRIMARY_TOVAR_LOCK'
      'exclusive'
      'wait')
    Left = 119
    Top = 154
  end
  object ibsNumb: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 257
    Top = 213
  end
  object ibsAux: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 257
    Top = 242
  end
  object ibdsMainPrimaryTovarList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainPrimaryTovarListAfterDelete
    AfterScroll = ibdsMainPrimaryTovarListAfterScroll
    OnCalcFields = ibdsMainPrimaryTovarListCalcFields
    BufferChunks = 500
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_TOVAR_HEADER'
      'where'
      '  ID = :OLD_ID')
    SelectSQL.Strings = (
      
        'select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30)' +
        ')||PTH.NUMBER_SUFFIX NUMBER_STR,'
      'PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,'
      
        'cast(CNTR.NAME as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PTH' +
        '.STORE_TYPE, PTH.STORE_ID'
      
        'from (PRIMARY_SETUP PS join (CONTRACTORS CNTR join PRIMARY_TOVAR' +
        '_HEADER PTH on'
      
        '(PTH.CONTRACTOR_TYPE=0) and (CNTR.ID=PTH.CONTRACTOR_ID)) on (PS.' +
        'IN_OUT=:IN_OUT) and (PS.ID=PTH.PRIMARY_SETUP_ID))'
      'left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)'
      'union'
      
        'select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30)' +
        ')||PTH.NUMBER_SUFFIX NUMBER_STR,'
      'PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,'
      
        'cast(P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME as VARCHAR(115))' +
        ' CONTRACTOR_NAME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID'
      
        'from (PRIMARY_SETUP PS join (PERSONS P join PRIMARY_TOVAR_HEADER' +
        ' PTH on'
      
        '(P.ID=PTH.CONTRACTOR_ID) and (PTH.CONTRACTOR_TYPE in (1,2))) on ' +
        '(PS.IN_OUT=:IN_OUT) and (PS.ID=PTH.PRIMARY_SETUP_ID))'
      'left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)'
      'union'
      
        'select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30)' +
        ')||PTH.NUMBER_SUFFIX NUMBER_STR,'
      'PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,'
      
        'cast(AM.NAME||'#39' '#39'||AU.STATE_NUMBER as VARCHAR(115)) CONTRACTOR_N' +
        'AME, PTH.AMOUNT, PTH.STORE_TYPE, PTH.STORE_ID'
      
        'from (PRIMARY_SETUP PS join ((AUTOMOBILES AU join AUTOMOBILE_MAK' +
        'ES AM on'
      '(AU.AUTOMOBILE_MAKE_ID=AM.ID)) join'
      'PRIMARY_TOVAR_HEADER PTH on (AU.ID=PTH.CONTRACTOR_ID) and'
      
        '(PTH.CONTRACTOR_TYPE=3)) on (PS.IN_OUT=:IN_OUT) and (PS.ID=PTH.P' +
        'RIMARY_SETUP_ID))'
      'left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)'
      'union'
      
        'select PTH.ID, PTH.NUMBER_PREFIX||cast(PTH.NUMBER as varchar(30)' +
        ')||PTH.NUMBER_SUFFIX NUMBER_STR,'
      'PTH.PRIMARY_DATE, A.SHORT_NAME, PTH.CONTRACTOR_TYPE,'
      
        'cast('#39#1057#1055#1048#1057#1040#1053#1048#1045#39' as VARCHAR(115)) CONTRACTOR_NAME, PTH.AMOUNT, PT' +
        'H.STORE_TYPE, PTH.STORE_ID'
      'from PRIMARY_SETUP PS join PRIMARY_TOVAR_HEADER PTH on'
      
        '(PTH.CONTRACTOR_TYPE=4) and (PS.IN_OUT=:IN_OUT) and (PS.ID=PTH.P' +
        'RIMARY_SETUP_ID)'
      'left outer join ACCOUNTS A on (PTH.ACCOUNT_ID=A.ID)')
    Left = 74
    Top = 184
    object ibdsMainPrimaryTovarListNUMBER_STR: TIBStringField
      DisplayLabel = #8470#8470
      DisplayWidth = 10
      FieldName = 'NUMBER_STR'
      Required = True
      Size = 90
    end
    object ibdsMainPrimaryTovarListPRIMARY_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_HEADER"."PRIMARY_DATE"'
      Required = True
    end
    object ibdsMainPrimaryTovarListFULL_CONTRACTOR_NAME: TStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'FULL_CONTRACTOR_NAME'
      Size = 150
      Calculated = True
    end
    object ibdsMainPrimaryTovarListAMOUNT: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'AMOUNT'
      Origin = '"PRIMARY_TOVAR_HEADER"."AMOUNT"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object ibdsMainPrimaryTovarListSHORT_NAME: TIBStringField
      DisplayLabel = #1057#1095#1077#1090
      DisplayWidth = 10
      FieldName = 'SHORT_NAME'
      Origin = '"ACCOUNTS"."SHORT_NAME"'
      Required = True
      Size = 10
    end
    object ibdsMainPrimaryTovarListID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."ID"'
      Required = True
      Visible = False
    end
    object ibdsMainPrimaryTovarListCONTRACTOR_TYPE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONTRACTOR_TYPE'
      Origin = '"PRIMARY_TOVAR_HEADER"."CONTRACTOR_TYPE"'
      Required = True
      Visible = False
    end
    object ibdsMainPrimaryTovarListCONTRACTOR_NAME: TIBStringField
      DisplayWidth = 100
      FieldName = 'CONTRACTOR_NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Visible = False
      Size = 100
    end
    object ibdsMainPrimaryTovarListSTORE_TYPE: TIntegerField
      FieldName = 'STORE_TYPE'
      Visible = False
    end
    object ibdsMainPrimaryTovarListSTORE_ID: TIntegerField
      FieldName = 'STORE_ID'
      Visible = False
    end
  end
  object ibdsMainPrimaryTovar: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainPrimaryTovarAfterDelete
    AfterOpen = ibdsMainPrimaryTovarAfterOpen
    OnCalcFields = ibdsMainPrimaryTovarCalcFields
    OnNewRecord = ibdsMainPrimaryTovarNewRecord
    OnUpdateRecord = ibdsMainPrimaryTovarUpdateRecord
    BufferChunks = 2
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_TOVAR_HEADER'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PRIMARY_TOVAR_HEADER'
      '  (ID, PRIMARY_SETUP_ID, ACCOUNT_ID, NUMBER_PREFIX, NUMBER, '
      'NUMBER_SUFFIX, '
      
        '   PRIMARY_DATE, STORE_TYPE, STORE_ID, CONTRACTOR_TYPE, CONTRACT' +
        'OR_ID, PASS_PERSON_ID, '
      'AMOUNT, '
      '   COMMENTS)'
      'values'
      
        '  (:ID, :PRIMARY_SETUP_ID, :ACCOUNT_ID, :NUMBER_PREFIX, :NUMBER,' +
        ' '
      ':NUMBER_SUFFIX, '
      
        '   :PRIMARY_DATE, :STORE_TYPE, :STORE_ID, :CONTRACTOR_TYPE, :CON' +
        'TRACTOR_ID, '
      ':PASS_PERSON_ID, :AMOUNT, '
      '   :COMMENTS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRIMARY_SETUP_ID,'
      '  ACCOUNT_ID,'
      '  NUMBER_PREFIX,'
      '  NUMBER,'
      '  NUMBER_SUFFIX,'
      '  PRIMARY_DATE,'
      '  STORE_TYPE,'
      '  STORE_ID,'
      '  CONTRACTOR_TYPE,'
      '  CONTRACTOR_ID,'
      '  PASS_PERSON_ID,'
      '  AMOUNT,'
      '  COMMENTS,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from PRIMARY_TOVAR_HEADER '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select PTH.ID, PTH.PRIMARY_SETUP_ID, PS.NAME SETUP_NAME,'
      'PS.NUMBER_FORMAT, PTH.ACCOUNT_ID, PTH.NUMBER_PREFIX, PTH.NUMBER,'
      
        'PTH.NUMBER_SUFFIX, PTH.PRIMARY_DATE, PTH.STORE_TYPE, PTH.STORE_I' +
        'D, PTH.CONTRACTOR_TYPE,'
      
        'PTH.CONTRACTOR_ID, PTH.CONTRACTOR_ID*10+PTH.CONTRACTOR_TYPE CONT' +
        'RACTOR_ID_TYPE, PTH.PASS_PERSON_ID, PTH.AMOUNT, PTH.COMMENTS'
      'from PRIMARY_SETUP PS, PRIMARY_TOVAR_HEADER PTH'
      'where (PTH.ID=:ID) and (PTH.PRIMARY_SETUP_ID=PS.ID)')
    ModifySQL.Strings = (
      'update PRIMARY_TOVAR_HEADER'
      'set'
      '  PRIMARY_SETUP_ID = :PRIMARY_SETUP_ID,'
      '  ACCOUNT_ID = :ACCOUNT_ID,'
      '  NUMBER_PREFIX = :NUMBER_PREFIX,'
      '  NUMBER = :NUMBER,'
      '  NUMBER_SUFFIX = :NUMBER_SUFFIX,'
      '  PRIMARY_DATE = :PRIMARY_DATE,'
      '  STORE_TYPE = :STORE_TYPE,'
      '  STORE_ID = :STORE_ID,'
      '  CONTRACTOR_TYPE = :CONTRACTOR_TYPE,'
      '  CONTRACTOR_ID = :CONTRACTOR_ID,'
      '  PASS_PERSON_ID = :PASS_PERSON_ID,'
      '  AMOUNT = :AMOUNT,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    Left = 103
    Top = 184
    object ibdsMainPrimaryTovarID: TIntegerField
      FieldName = 'ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."ID"'
    end
    object ibdsMainPrimaryTovarPRIMARY_SETUP_ID: TIntegerField
      FieldName = 'PRIMARY_SETUP_ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."PRIMARY_SETUP_ID"'
      OnChange = ibdsMainPrimaryTovarPRIMARY_SETUP_IDChange
    end
    object ibdsMainPrimaryTovarSETUP_NAME: TIBStringField
      FieldName = 'SETUP_NAME'
      Origin = '"PRIMARY_SETUP"."NAME"'
      Size = 30
    end
    object ibdsMainPrimaryTovarACCOUNT_ID: TIntegerField
      FieldName = 'ACCOUNT_ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."ACCOUNT_ID"'
    end
    object ibdsMainPrimaryTovarNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_TOVAR_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsMainPrimaryTovarNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"PRIMARY_TOVAR_HEADER"."NUMBER"'
    end
    object ibdsMainPrimaryTovarNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_TOVAR_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsMainPrimaryTovarPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_HEADER"."PRIMARY_DATE"'
    end
    object ibdsMainPrimaryTovarCONTRACTOR_TYPE: TIntegerField
      FieldName = 'CONTRACTOR_TYPE'
      Origin = '"PRIMARY_TOVAR_HEADER"."CONTRACTOR_TYPE"'
      OnChange = ibdsMainPrimaryTovarCONTRACTOR_TYPEChange
    end
    object ibdsMainPrimaryTovarCONTRACTOR_ID: TIntegerField
      FieldName = 'CONTRACTOR_ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."CONTRACTOR_ID"'
      OnChange = ibdsMainPrimaryTovarCONTRACTOR_IDChange
    end
    object ibdsMainPrimaryTovarPASS_PERSON_ID: TIntegerField
      FieldName = 'PASS_PERSON_ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."PASS_PERSON_ID"'
    end
    object ibdsMainPrimaryTovarAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"PRIMARY_TOVAR_HEADER"."AMOUNT"'
    end
    object ibdsMainPrimaryTovarCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"PRIMARY_TOVAR_HEADER"."COMMENTS"'
      Size = 100
    end
    object ibdsMainPrimaryTovarNumber_Str: TStringField
      FieldKind = fkCalculated
      FieldName = 'Number_Str'
      Size = 70
      Calculated = True
    end
    object ibdsMainPrimaryTovarNUMBER_FORMAT: TIntegerField
      FieldName = 'NUMBER_FORMAT'
      Origin = '"PRIMARY_SETUP"."NUMBER_FORMAT"'
    end
    object ibdsMainPrimaryTovarCONTRACTOR_ID_TYPE: TLargeintField
      FieldName = 'CONTRACTOR_ID_TYPE'
    end
    object ibdsMainPrimaryTovarSTORE_TYPE: TIntegerField
      FieldName = 'STORE_TYPE'
      Origin = '"PRIMARY_TOVAR_HEADER"."STORE_TYPE"'
      OnChange = ibdsMainPrimaryTovarSTORE_TYPEChange
    end
    object ibdsMainPrimaryTovarSTORE_ID: TIntegerField
      FieldName = 'STORE_ID'
      Origin = '"PRIMARY_TOVAR_HEADER"."STORE_ID"'
      OnChange = ibdsMainPrimaryTovarSTORE_IDChange
    end
  end
  object ibdsMainPrimaryTovarBody: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainPrimaryTovarAfterDelete
    AfterOpen = ibdsMainPrimaryTovarBodyAfterOpen
    AfterScroll = ibdsMainPrimaryTovarBodyAfterScroll
    BeforeOpen = ibdsMainPrimaryTovarBodyBeforeOpen
    BeforePost = ibdsMainPrimaryTovarBodyBeforePost
    OnCalcFields = ibdsMainPrimaryTovarBodyCalcFields
    OnNewRecord = ibdsMainPrimaryTovarBodyNewRecord
    BufferChunks = 80
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_TOVAR_BODY'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PRIMARY_TOVAR_BODY'
      '  (ID, PRIMARY_TOVAR_HEADER_ID, ARTICUL_ID, ACCOUNT_ID, '
      'PACKS_AMOUNT, PACK_VALUE, '
      '   ITEMS_AMOUNT, PRICE, PRICE_WO_NDS, NDS, STORE_CARD_ID)'
      'values'
      '  (:ID, :PRIMARY_TOVAR_HEADER_ID, :ARTICUL_ID, :ACCOUNT_ID, '
      ':PACKS_AMOUNT, '
      
        '   :PACK_VALUE, :ITEMS_AMOUNT, :PRICE, :PRICE_WO_NDS, :NDS, :STO' +
        'RE_CARD_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRIMARY_TOVAR_HEADER_ID,'
      '  ARTICUL_ID,'
      '  ACCOUNT_ID,'
      '  PACKS_AMOUNT,'
      '  PACK_VALUE,'
      '  ITEMS_AMOUNT,'
      '  PRICE,'
      '  PRICE_WO_NDS,'
      '  NDS'
      'from PRIMARY_TOVAR_BODY '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select PTB.ID, PTB.PRIMARY_TOVAR_HEADER_ID, PTB.ARTICUL_ID,'
      'PTB.ACCOUNT_ID, AC.SHORT_NAME, A.ARTICUL,'
      'A.NAME ARTICUL_NAME, A.UNITS, A.GOOD_TYPE, PTB.PACKS_AMOUNT,'
      
        'PTB.PACK_VALUE, PTB.ITEMS_AMOUNT, PTB.PRICE, PTB.PRICE_WO_NDS, P' +
        'TB.NDS,'
      
        '((PTB.PACKS_AMOUNT*PTB.PACK_VALUE+PTB.ITEMS_AMOUNT)*PTB.PRICE) I' +
        'togoManyOld,'
      'SC.TOTAL, PTB.STORE_CARD_ID,'
      'COUNT(SOI.ID) SERIALS_COUNT'
      'from (ARTICULS A join PRIMARY_TOVAR_BODY PTB on'
      '(PTB.PRIMARY_TOVAR_HEADER_ID=:ID) and (PTB.ARTICUL_ID=A.ID) join'
      'STORE_CARDS SC on (SC.ID=PTB.STORE_CARD_ID))'
      
        'left outer join ACCOUNTS AC on (PTB.ACCOUNT_ID=AC.ID) left outer' +
        ' join'
      'SERIALS_OUTER_IN SOI on (PTB.ID=SOI.PRIMARY_TOVAR_BODY_ID)'
      
        'group by PTB.ID, PTB.PRIMARY_TOVAR_HEADER_ID, PTB.ARTICUL_ID, PT' +
        'B.ACCOUNT_ID, AC.SHORT_NAME,'
      
        'A.ARTICUL, A.NAME, A.UNITS, A.GOOD_TYPE, PTB.PACKS_AMOUNT, PTB.P' +
        'ACK_VALUE, PTB.ITEMS_AMOUNT,'
      
        'PTB.PRICE, PTB.PRICE_WO_NDS, PTB.NDS, SC.TOTAL, PTB.STORE_CARD_I' +
        'D'
      'order by 1')
    ModifySQL.Strings = (
      'update PRIMARY_TOVAR_BODY'
      'set'
      '  PRIMARY_TOVAR_HEADER_ID = :PRIMARY_TOVAR_HEADER_ID,'
      '  ARTICUL_ID = :ARTICUL_ID,'
      '  ACCOUNT_ID = :ACCOUNT_ID,'
      '  PACKS_AMOUNT = :PACKS_AMOUNT,'
      '  PACK_VALUE = :PACK_VALUE,'
      '  ITEMS_AMOUNT = :ITEMS_AMOUNT,'
      '  PRICE = :PRICE,'
      '  PRICE_WO_NDS = :PRICE_WO_NDS,'
      '  NDS = :NDS,'
      '  STORE_CARD_ID = :STORE_CARD_ID'
      'where'
      '  ID = :OLD_ID')
    Left = 132
    Top = 184
    object ibdsMainPrimaryTovarBodySERIALS_COUNT: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'SERIALS_COUNT'
    end
    object ibdsMainPrimaryTovarBodyARTICUL: TIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 10
      FieldName = 'ARTICUL'
      Origin = '"ARTICULS"."ARTICUL"'
      OnChange = ibdsMainPrimaryTovarBodyARTICULChange
      Size = 10
    end
    object ibdsMainPrimaryTovarBodyARTICUL_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Size = 100
    end
    object ibdsMainPrimaryTovarBodyPACKS_AMOUNT: TIntegerField
      DisplayLabel = #1059#1087'.'
      DisplayWidth = 10
      FieldName = 'PACKS_AMOUNT'
      Origin = '"PRIMARY_TOVAR_BODY"."PACKS_AMOUNT"'
      OnChange = ibdsMainPrimaryTovarBodyPACKS_AMOUNTChange
    end
    object ibdsMainPrimaryTovarBodyPACK_VALUE: TFloatField
      DisplayLabel = #1045#1084'.'
      DisplayWidth = 10
      FieldName = 'PACK_VALUE'
      Origin = '"PRIMARY_TOVAR_BODY"."PACK_VALUE"'
      OnChange = ibdsMainPrimaryTovarBodyPACKS_AMOUNTChange
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.###'
    end
    object ibdsMainPrimaryTovarBodyITEMS_AMOUNT: TFloatField
      DisplayLabel = #1045#1076'.'
      DisplayWidth = 10
      FieldName = 'ITEMS_AMOUNT'
      Origin = '"PRIMARY_TOVAR_BODY"."ITEMS_AMOUNT"'
      OnChange = ibdsMainPrimaryTovarBodyITEMS_AMOUNTChange
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.###'
    end
    object ibdsMainPrimaryTovarBodyItogo: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Itogo'
      DisplayFormat = '#,##0.###'
      Calculated = True
    end
    object ibdsMainPrimaryTovarBodyTOTAL: TFloatField
      DisplayLabel = #1053#1072' '#1089#1082#1083#1072#1076#1077
      DisplayWidth = 10
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '#,##0.###'
    end
    object ibdsMainPrimaryTovarBodyPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = '"PRIMARY_TOVAR_BODY"."PRICE"'
      OnChange = ibdsMainPrimaryTovarBodyPRICEChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ibdsMainPrimaryTovarBodyItogoMany: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'ItogoMany'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainPrimaryTovarBodySHORT_NAME: TIBStringField
      DisplayLabel = #1057#1095#1077#1090
      DisplayWidth = 10
      FieldName = 'SHORT_NAME'
      Size = 10
    end
    object ibdsMainPrimaryTovarBodyID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = '"PRIMARY_TOVAR_BODY"."ID"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyPRIMARY_TOVAR_HEADER_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRIMARY_TOVAR_HEADER_ID'
      Origin = '"PRIMARY_TOVAR_BODY"."PRIMARY_TOVAR_HEADER_ID"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyARTICUL_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ARTICUL_ID'
      Origin = '"PRIMARY_TOVAR_BODY"."ARTICUL_ID"'
      Visible = False
      OnChange = ibdsMainPrimaryTovarBodyARTICUL_IDChange
    end
    object ibdsMainPrimaryTovarBodyACCOUNT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ACCOUNT_ID'
      Origin = '"PRIMARY_TOVAR_BODY"."ACCOUNT_ID"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyUNITS: TIBStringField
      DisplayWidth = 20
      FieldName = 'UNITS'
      Origin = '"ARTICULS"."UNITS"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyGOOD_TYPE: TIntegerField
      DisplayWidth = 10
      FieldName = 'GOOD_TYPE'
      Origin = '"ARTICULS"."GOOD_TYPE"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyNDS: TFloatField
      DisplayWidth = 10
      FieldName = 'NDS'
      Origin = '"PRIMARY_TOVAR_BODY"."NDS"'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyITOGOMANYOLD: TFloatField
      FieldName = 'ITOGOMANYOLD'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodyPRICE_WO_NDS: TFloatField
      FieldName = 'PRICE_WO_NDS'
      Visible = False
    end
    object ibdsMainPrimaryTovarBodySTORE_CARD_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'STORE_CARD_ID'
      ReadOnly = True
      Visible = False
    end
  end
  object dsMainPrimaryTovarList: TDataSource
    DataSet = ibdsMainPrimaryTovarList
    OnStateChange = dsMainPrimaryTovarListStateChange
    Left = 74
    Top = 213
  end
  object dsMainPrimaryTovar: TDataSource
    DataSet = ibdsMainPrimaryTovar
    OnStateChange = dsMainPrimaryTovarBodyStateChange
    Left = 103
    Top = 213
  end
  object dsMainPrimaryTovarBody: TDataSource
    DataSet = ibdsMainPrimaryTovarBody
    OnStateChange = dsMainPrimaryTovarBodyStateChange
    Left = 132
    Top = 213
  end
  object ibdsPrimary_Setup: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BeforeOpen = ibdsPrimary_SetupBeforeOpen
    BufferChunks = 10
    SelectSQL.Strings = (
      'select PS.ID, PS.NAME, PS.NUMBER_PREFIX, PS.NUMBER_FORMAT,'
      'PS.NUMBER_SUFFIX, PS.NUMBER_RESTART_PERIOD, PS.MOVEMENT_TYPE'
      'from PRIMARY_SETUP PS'
      'where (PS.IN_OUT=:IN_OUT) and (PS.VALID=1)'
      'order by 2')
    Left = 103
    Top = 242
    object ibdsPrimary_SetupID: TIntegerField
      FieldName = 'ID'
      Origin = '"PRIMARY_SETUP"."ID"'
      Required = True
    end
    object ibdsPrimary_SetupNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PRIMARY_SETUP"."NAME"'
      Required = True
      Size = 30
    end
    object ibdsPrimary_SetupNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_SETUP"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsPrimary_SetupNUMBER_FORMAT: TIntegerField
      FieldName = 'NUMBER_FORMAT'
      Origin = '"PRIMARY_SETUP"."NUMBER_FORMAT"'
      Required = True
    end
    object ibdsPrimary_SetupNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_SETUP"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsPrimary_SetupNUMBER_RESTART_PERIOD: TIntegerField
      FieldName = 'NUMBER_RESTART_PERIOD'
      Origin = '"PRIMARY_SETUP"."NUMBER_RESTART_PERIOD"'
      Required = True
    end
    object ibdsPrimary_SetupMOVEMENT_TYPE: TIntegerField
      FieldName = 'MOVEMENT_TYPE'
      Origin = '"PRIMARY_SETUP"."MOVEMENT_TYPE"'
      Required = True
    end
  end
  object ibdsContractors: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsContractorsCalcFields
    BufferChunks = 100
    SelectSQL.Strings = (
      
        'select ID, cast(NAME as VARCHAR(115)) NAME, 0 CONTRACTOR_TYPE, I' +
        'D*10 CONTRACTOR_ID_TYPE from CONTRACTORS order by 2')
    Left = 103
    Top = 271
    object ibdsContractorsCONTRACTOR_NAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'CONTRACTOR_NAME'
      Size = 115
      Calculated = True
    end
    object ibdsContractorsID: TIntegerField
      FieldName = 'ID'
      Origin = '"CONTRACTORS"."ID"'
      Required = True
      Visible = False
    end
    object ibdsContractorsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Visible = False
      Size = 115
    end
    object ibdsContractorsCONTRACTOR_TYPE: TIntegerField
      FieldName = 'CONTRACTOR_TYPE'
      Required = True
      Visible = False
    end
    object ibdsContractorsCONTRACTOR_ID_TYPE: TLargeintField
      FieldName = 'CONTRACTOR_ID_TYPE'
      Required = True
    end
  end
  object ibdsArticuls: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    SelectSQL.Strings = (
      'select A.ID, A.GOOD_TYPE, A.ARTICUL, A.NAME, A.ACCOUNT_ID,'
      'A.UNITS, A.NDS'
      'from ARTICULS A'
      'where (A.ITEM_TYPE=1)'
      'order by 4')
    Left = 132
    Top = 242
    object ibdsArticulsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsArticulsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ARTICULS"."ID"'
      Required = True
      Visible = False
    end
    object ibdsArticulsGOOD_TYPE: TIntegerField
      FieldName = 'GOOD_TYPE'
      Origin = '"ARTICULS"."GOOD_TYPE"'
      Required = True
      Visible = False
    end
    object ibdsArticulsARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = '"ARTICULS"."ARTICUL"'
      Visible = False
      Size = 10
    end
    object ibdsArticulsACCOUNT_ID: TIntegerField
      FieldName = 'ACCOUNT_ID'
      Origin = '"ARTICULS"."ACCOUNT_ID"'
      Visible = False
    end
    object ibdsArticulsUNITS: TIBStringField
      FieldName = 'UNITS'
      Origin = '"ARTICULS"."UNITS"'
      Visible = False
    end
    object ibdsArticulsNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"ARTICULS"."NDS"'
      Required = True
      Visible = False
    end
  end
  object ibdsFilterTypes: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsFilterPersonsAfterOpen
    BeforeClose = ibdsFilterPersonsBeforeClose
    BeforeOpen = ibdsPrimary_SetupBeforeOpen
    BufferChunks = 100
    SelectSQL.Strings = (
      'select PS.ID, PS.NAME'
      'from PRIMARY_SETUP PS'
      'where (PS.IN_OUT=:IN_OUT)'
      'order by 2')
    Left = 23
    Top = 180
    object ibdsFilterTypesID: TIntegerField
      FieldName = 'ID'
      Origin = '"PRIMARY_SETUP"."ID"'
      Required = True
    end
    object ibdsFilterTypesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PRIMARY_SETUP"."NAME"'
      Required = True
      Size = 30
    end
  end
  object ibdsFilterArticuls: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsFilterPersonsAfterOpen
    BeforeClose = ibdsFilterPersonsBeforeClose
    SelectSQL.Strings = (
      'select ID, NAME'
      'from ARTICULS'
      'where (ITEM_TYPE=1)'
      'order by 2')
    Left = 23
    Top = 209
    object ibdsFilterArticulsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ARTICULS"."ID"'
      Required = True
    end
    object ibdsFilterArticulsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
  end
  object ibdsAccounts: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 300
    SelectSQL.Strings = (
      'select A.ID, A.SHORT_NAME, A.NAME'
      'from ACCOUNTS A'
      'where (A.VALID=1) and NOT (A.PARENT_ID is NULL)'
      'order by 3')
    Left = 103
    Top = 300
    object ibdsAccountsSHORT_NAME: TIBStringField
      DisplayLabel = #1050#1086#1088'.'#1085#1072#1080#1084'.'
      DisplayWidth = 10
      FieldName = 'SHORT_NAME'
      Origin = '"ACCOUNTS"."SHORT_NAME"'
      Required = True
      Size = 10
    end
    object ibdsAccountsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = '"ACCOUNTS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsAccountsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ACCOUNTS"."ID"'
      Required = True
      Visible = False
    end
  end
  object pmAccount: TPopupMenu
    Left = 166
    Top = 58
    object N1: TMenuItem
      Caption = '&'#1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '&'#1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1082#1086' '#1074#1089#1077#1084
      OnClick = N2Click
    end
  end
  object pmBodyAccount: TPopupMenu
    Left = 526
    Top = 146
    object MenuItem1: TMenuItem
      Caption = '&'#1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = MenuItem1Click
    end
  end
  object ibdsFilterAccounts: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsFilterPersonsAfterOpen
    BeforeClose = ibdsFilterPersonsBeforeClose
    BufferChunks = 300
    SelectSQL.Strings = (
      'select A.ID, A.SHORT_NAME, A.NAME'
      'from ACCOUNTS A'
      'where (A.VALID=1) and NOT (A.PARENT_ID is NULL)'
      'order by 3')
    Left = 23
    Top = 238
    object ibdsFilterAccountsSHORT_NAME: TIBStringField
      DisplayLabel = #1050#1086#1088'.'#1085#1072#1080#1084'.'
      DisplayWidth = 10
      FieldName = 'SHORT_NAME'
      Origin = '"ACCOUNTS"."SHORT_NAME"'
      Required = True
      Size = 10
    end
    object ibdsFilterAccountsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = '"ACCOUNTS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsFilterAccountsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ACCOUNTS"."ID"'
      Required = True
      Visible = False
    end
  end
  object ibdsStoreCards: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    SelectSQL.Strings = (
      'select SC.ID STORE_CARD_ID, SC.ARTICUL_ID, SC.PRICE, SC.TOTAL,'
      
        'A.GOOD_TYPE, A.ARTICUL, A.NAME, A.ACCOUNT_ID, A.UNITS, A.NDS, SC' +
        '.START_DATE'
      'from STORE_CARDS SC, ARTICULS A'
      'where (SC.TOTAL>0) and (A.ITEM_TYPE=1) and (A.ID=SC.ARTICUL_ID)'
      'order by A.NAME, SC.START_DATE, SC.TOTAL')
    Left = 132
    Top = 271
    object ibdsStoreCardsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsStoreCardsPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = '"STORE_CARDS"."PRICE"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object ibdsStoreCardsTOTAL: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = '"STORE_CARDS"."TOTAL"'
      Required = True
      DisplayFormat = '#,##0.###'
    end
    object ibdsStoreCardsARTICUL_ID: TIntegerField
      FieldName = 'ARTICUL_ID'
      Origin = '"STORE_CARDS"."ARTICUL_ID"'
      Required = True
      Visible = False
    end
    object ibdsStoreCardsGOOD_TYPE: TIntegerField
      FieldName = 'GOOD_TYPE'
      Origin = '"ARTICULS"."GOOD_TYPE"'
      Required = True
      Visible = False
    end
    object ibdsStoreCardsARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = '"ARTICULS"."ARTICUL"'
      Visible = False
      Size = 10
    end
    object ibdsStoreCardsACCOUNT_ID: TIntegerField
      FieldName = 'ACCOUNT_ID'
      Origin = '"ARTICULS"."ACCOUNT_ID"'
      Visible = False
    end
    object ibdsStoreCardsUNITS: TIBStringField
      FieldName = 'UNITS'
      Origin = '"ARTICULS"."UNITS"'
      Visible = False
    end
    object ibdsStoreCardsNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"ARTICULS"."NDS"'
      Required = True
      Visible = False
    end
    object ibdsStoreCardsSTORE_CARD_ID: TIntegerField
      FieldName = 'STORE_CARD_ID'
      Origin = '"STORE_CARDS"."ID"'
      Required = True
      Visible = False
    end
  end
  object ibdsRemains: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    SelectSQL.Strings = (
      'select R.ID REMAIN_ID, R.ARTICUL_ID, R.PRICE, R.TOTAL,'
      'A.GOOD_TYPE, A.ARTICUL, A.NAME, A.ACCOUNT_ID, A.UNITS, A.NDS'
      'from REMAINS R, ARTICULS A'
      'where (R.TOTAL>0) and (A.ID=R.ARTICUL_ID) and'
      '(R.STORE_TYPE=:CONTRACTOR_TYPE) and (R.STORE_ID=:CONTRACTOR_ID)'
      'order by A.NAME, R.TOTAL, R.PRICE')
    DataSource = dsMainPrimaryTovar
    Left = 132
    Top = 300
    object ibdsRemainsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsRemainsPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = '"REMAINS"."PRICE"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object ibdsRemainsTOTAL: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = '"REMAINS"."TOTAL"'
      Required = True
      DisplayFormat = '#,##0.###'
    end
    object ibdsRemainsREMAIN_ID: TIntegerField
      FieldName = 'REMAIN_ID'
      Origin = '"REMAINS"."ID"'
      Required = True
      Visible = False
    end
    object ibdsRemainsARTICUL_ID: TIntegerField
      FieldName = 'ARTICUL_ID'
      Origin = '"REMAINS"."ARTICUL_ID"'
      Required = True
      Visible = False
    end
    object ibdsRemainsGOOD_TYPE: TIntegerField
      FieldName = 'GOOD_TYPE'
      Origin = '"ARTICULS"."GOOD_TYPE"'
      Required = True
      Visible = False
    end
    object ibdsRemainsARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = '"ARTICULS"."ARTICUL"'
      Visible = False
      Size = 10
    end
    object ibdsRemainsACCOUNT_ID: TIntegerField
      FieldName = 'ACCOUNT_ID'
      Origin = '"ARTICULS"."ACCOUNT_ID"'
      Visible = False
    end
    object ibdsRemainsUNITS: TIBStringField
      FieldName = 'UNITS'
      Origin = '"ARTICULS"."UNITS"'
      Visible = False
    end
    object ibdsRemainsNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"ARTICULS"."NDS"'
      Required = True
      Visible = False
    end
  end
  object ibdsPassPersons: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsPassPersonsCalcFields
    BufferChunks = 100
    SelectSQL.Strings = (
      'select P.ID, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME NAME,'
      'P.IS_DRIVER'
      'from PERSONS P'
      'order by 3, 2')
    Left = 103
    Top = 329
    object ibdsPassPersonsID: TIntegerField
      FieldName = 'ID'
      Origin = '"PERSONS"."ID"'
      Required = True
    end
    object ibdsPassPersonsNAME: TIBStringField
      FieldName = 'NAME'
      Required = True
      Size = 92
    end
    object ibdsPassPersonsIS_DRIVER: TIntegerField
      FieldName = 'IS_DRIVER'
      Origin = '"PERSONS"."IS_DRIVER"'
      Required = True
    end
    object ibdsPassPersonsCONTRACTOR_NAME: TStringField
      DisplayWidth = 110
      FieldKind = fkCalculated
      FieldName = 'CONTRACTOR_NAME'
      Size = 110
      Calculated = True
    end
  end
  object ibdsSerials_Outer_In: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainPrimaryTovarAfterDelete
    AfterPost = ibdsSerials_Outer_InAfterPost
    BeforeInsert = ibdsSerials_Outer_InBeforeInsert
    OnNewRecord = ibdsSerials_Outer_InNewRecord
    BufferChunks = 200
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SERIALS_OUTER_IN'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SERIALS_OUTER_IN'
      '  (ID, PRIMARY_TOVAR_BODY_ID, SERIAL_NUMBER)'
      'values'
      '  (:ID, :PRIMARY_TOVAR_BODY_ID, :SERIAL_NUMBER)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRIMARY_TOVAR_BODY_ID,'
      '  SERIAL_NUMBER'
      'from SERIALS_OUTER_IN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select SOI.ID, SOI.PRIMARY_TOVAR_BODY_ID, SOI.SERIAL_NUMBER'
      'from SERIALS_OUTER_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (SOI.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (PTB.PRIMARY_TOVAR_' +
        'HEADER_ID=:ID)'
      'order by 3')
    ModifySQL.Strings = (
      'update SERIALS_OUTER_IN'
      'set'
      '  SERIAL_NUMBER = :SERIAL_NUMBER'
      'where'
      '  ID = :OLD_ID')
    Filtered = True
    DataSource = dsMainPrimaryTovar
    OnFilterRecord = ibdsSerials_Outer_InFilterRecord
    Left = 161
    Top = 184
    object ibdsSerials_Outer_InPRIMARY_TOVAR_BODY_ID: TIntegerField
      FieldName = 'PRIMARY_TOVAR_BODY_ID'
      Origin = '"SERIALS_OUTER_IN"."PRIMARY_TOVAR_BODY_ID"'
    end
    object ibdsSerials_Outer_InSERIAL_NUMBER: TIBStringField
      FieldName = 'SERIAL_NUMBER'
      Origin = '"SERIALS_OUTER_IN"."SERIAL_NUMBER"'
      Size = 100
    end
    object ibdsSerials_Outer_InID: TIntegerField
      FieldName = 'ID'
      Origin = '"SERIALS_OUTER_IN"."ID"'
    end
  end
  object dsSerials_Outer_In: TDataSource
    DataSet = ibdsSerials_Outer_In
    OnStateChange = dsMainPrimaryTovarBodyStateChange
    Left = 161
    Top = 213
  end
  object ibdsSerials_Inner_Movement: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsSerials_Inner_MovementAfterDelete
    AfterInsert = ibdsSerials_Inner_MovementAfterInsert
    OnNewRecord = ibdsSerials_Inner_MovementNewRecord
    BufferChunks = 200
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SERIALS_INNER_MOVEMENT'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SERIALS_INNER_MOVEMENT'
      '  (ID, PRIMARY_TOVAR_BODY_ID, SERIAL_ID)'
      'values'
      '  (:ID, :PRIMARY_TOVAR_BODY_ID, :SERIAL_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRIMARY_TOVAR_BODY_ID,'
      '  SERIAL_ID'
      'from SERIALS_INNER_MOVEMENT '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select SIM.ID, SIM.SERIAL_ID, SOI.SERIAL_NUMBER, SIM.PRIMARY_TOV' +
        'AR_BODY_ID'
      
        'from SERIALS_OUTER_IN SOI, SERIALS_INNER_MOVEMENT SIM, PRIMARY_T' +
        'OVAR_BODY PTB'
      
        'where (SIM.SERIAL_ID=SOI.ID) and (SIM.PRIMARY_TOVAR_BODY_ID=PTB.' +
        'ID) and'
      '(PTB.PRIMARY_TOVAR_HEADER_ID=:ID)'
      'order by 3')
    Filtered = True
    DataSource = dsMainPrimaryTovar
    OnFilterRecord = ibdsSerials_Inner_MovementFilterRecord
    Left = 190
    Top = 184
    object ibdsSerials_Inner_MovementID: TIntegerField
      FieldName = 'ID'
      Origin = '"SERIALS_OUTER_IN"."ID"'
    end
    object ibdsSerials_Inner_MovementSERIAL_NUMBER: TIBStringField
      FieldName = 'SERIAL_NUMBER'
      Origin = '"SERIALS_OUTER_IN"."SERIAL_NUMBER"'
      Size = 100
    end
    object ibdsSerials_Inner_MovementPRIMARY_TOVAR_BODY_ID: TIntegerField
      FieldName = 'PRIMARY_TOVAR_BODY_ID'
      Origin = '"SERIALS_INNER_MOVEMENT"."PRIMARY_TOVAR_BODY_ID"'
    end
    object ibdsSerials_Inner_MovementSERIAL_ID: TIntegerField
      FieldName = 'SERIAL_ID'
      Origin = '"SERIALS_INNER_MOVEMENT"."SERIAL_ID"'
    end
  end
  object dsSerials_Inner_Movement: TDataSource
    DataSet = ibdsSerials_Inner_Movement
    OnStateChange = dsMainPrimaryTovarBodyStateChange
    Left = 190
    Top = 213
  end
  object ibdsSerials_Available: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BeforeOpen = ibdsSerials_AvailableBeforeOpen
    BufferChunks = 200
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SERIALS_OUTER_IN'
      'where'
      '  ID = 0')
    InsertSQL.Strings = (
      'insert into SERIALS_OUTER_IN'
      '  (ID)'
      'values'
      '  (0)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PRIMARY_TOVAR_BODY_ID,'
      '  SERIAL_NUMBER,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from SERIALS_OUTER_IN '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select SOI.ID, SOI.SERIAL_NUMBER'
      
        'from SERIALS_OUTER_IN SOI, ACCUMULATORS_TYRES ATY, PRIMARY_TOVAR' +
        '_BODY PTB'
      
        'where (ATY.LOCATION_TYPE=0) and (ATY.SERIAL_ID=SOI.ID) and (ATY.' +
        'PRIMARY_TOVAR_BODY_ID=PTB.ID) and'
      '(PTB.ARTICUL_ID=:ARTICUL_ID)'
      'order by 2')
    Filtered = True
    DataSource = dsMainPrimaryTovarBody
    OnFilterRecord = ibdsSerials_AvailableFilterRecord
    Left = 219
    Top = 184
    object ibdsSerials_AvailableID: TIntegerField
      FieldName = 'ID'
      Origin = '"SERIALS_OUTER_IN"."ID"'
    end
    object ibdsSerials_AvailableSERIAL_NUMBER: TIBStringField
      FieldName = 'SERIAL_NUMBER'
      Origin = '"SERIALS_OUTER_IN"."SERIAL_NUMBER"'
      Size = 100
    end
  end
  object dsSerials_Available: TDataSource
    DataSet = ibdsSerials_Available
    Left = 219
    Top = 213
  end
  object pmPrimaryTovarBody: TPopupMenu
    OnPopup = pmPrimaryTovarBodyPopup
    Left = 566
    Top = 106
    object miSerials: TMenuItem
      Caption = '&'#1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
      OnClick = miSerialsClick
    end
  end
end
