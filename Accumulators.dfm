inherited frmAccumulators: TfrmAccumulators
  Left = 6
  Top = 166
  Width = 794
  Height = 399
  Caption = 'Аккумуляторы'
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 767
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object dbgAccumulatorsList: TwwDBGrid
      Tag = 1
      Left = 0
      Top = 0
      Width = 767
      Height = 313
      ControlType.Strings = (
        'CLOSED;CheckBox;1;0'
        'BLACK;CheckBox;1;0')
      Selected.Strings = (
        'NAME'#9'16'#9'Модель'#9'F'
        'SERIAL_NUMBER'#9'16'#9'Серийный~номер'#9'F'
        'MILEAGE'#9'12'#9'Пробег с~начала~экспл., км'#9'F'
        'PERSENT_MILLEAGE'#9'13'#9'Износ по~пробегу~%%'#9'F'
        'TIME_GONE'#9'14'#9'Время с~нач. экспл.~мес.'#9'F'
        'PERSENT_TIME'#9'14'#9'Износ по~времени~%%'#9'F'
        'LOCATION'#9'32'#9'Место нахождения'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = dsMainAccumulatorsList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgWordWrap, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 3
      TitleButtons = True
      UseTFields = False
      OnCalcCellColors = dbgAccumulatorsListCalcCellColors
      OnCalcTitleAttributes = dbgAccumulatorsListCalcTitleAttributes
      OnTitleButtonClick = dbgAccumulatorsListTitleButtonClick
      OnCalcTitleImage = dbgAccumulatorsListCalcTitleImage
      TitleImageList = frmDM.ImageList2
      PadColumnStyle = pcsPadHeader
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 330
      Width = 767
      Height = 42
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
      object Label42: TLabel
        Left = 222
        Top = 23
        Width = 16
        Height = 16
        Caption = 'По'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cbType: TwwCheckBox
        Left = 2
        Top = 4
        Width = 75
        Height = 17
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Модель:'
        TabOrder = 3
      end
      object edType: TwwDBLookupCombo
        Left = 77
        Top = 2
        Width = 165
        Height = 19
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'40'#9'NAME'#9'F')
        LookupTable = ibdsFilterArticuls
        LookupField = 'ID'
        Options = [loSearchOnBackspace]
        Style = csDropDownList
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        OrderByDisplay = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object cbLocation: TwwCheckBox
        Left = 247
        Top = 4
        Width = 141
        Height = 17
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Место нахождения:'
        TabOrder = 8
      end
      object edLocation: TwwDBComboBox
        Left = 388
        Top = 2
        Width = 112
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = True
        AutoDropDown = True
        ShowMatchText = True
        BorderStyle = bsNone
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        ItemHeight = 0
        Items.Strings = (
          'склад'
          'подотчетное лицо'
          'водитель'
          'автомобиль'
          'утиль')
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Sorted = False
        TabOrder = 12
        UnboundDataType = wwDefault
      end
      object cbPeriod: TwwCheckBox
        Left = 2
        Top = 22
        Width = 137
        Height = 17
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Дата установки: С'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object deDateStart: TwwDBDateTimePicker
        Left = 140
        Top = 20
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
        TabOrder = 0
      end
      object deDateStop: TwwDBDateTimePicker
        Left = 239
        Top = 20
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
      end
      object cbMileage: TwwCheckBox
        Left = 321
        Top = 22
        Width = 68
        Height = 17
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Пробег'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cbbMileageSign: TwwDBComboBox
        Left = 390
        Top = 20
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
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object edMileage: TwwDBEdit
        Left = 427
        Top = 20
        Width = 67
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
        TabOrder = 7
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object cbPersent: TwwCheckBox
        Left = 504
        Top = 22
        Width = 94
        Height = 17
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = '%% износа'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object cbbPersentSign: TwwDBComboBox
        Left = 597
        Top = 20
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
        TabOrder = 10
        UnboundDataType = wwDefault
      end
      object edPersent: TwwDBEdit
        Left = 635
        Top = 20
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
        TabOrder = 11
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlText: TPanel
      Left = 0
      Top = 313
      Width = 767
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
      object lblFilter: TLabel
        Left = 2
        Top = 2
        Width = 763
        Height = 13
        Align = alTop
        AutoSize = False
        Caption = 'lblFilter'
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
        Left = 752
        Top = 4
        Width = 11
        Height = 11
        Cursor = crHandPoint
        Hint = 'Показать панель фильтрации|Показать панель фильтрации'
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
        Left = 752
        Top = 4
        Width = 11
        Height = 11
        Cursor = crHandPoint
        Hint = 'Убрать'#13#10'панель фильтрации|Убрать панель фильтрации'
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
  object Panel4: TPanel [1]
    Left = 767
    Top = 0
    Width = 19
    Height = 372
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbLastAccumulatorsList: TSpeedButton
      Left = 0
      Top = 57
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Последняя запись'
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
      OnClick = sbLastAccumulatorsListClick
    end
    object sbNextAccumulatorsList: TSpeedButton
      Left = 0
      Top = 38
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Последующая запись'
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
      OnClick = sbNextAccumulatorsListClick
    end
    object sbPriorAccumulatorsList: TSpeedButton
      Left = 0
      Top = 19
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Предыдущая запись'
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
      OnClick = sbPriorAccumulatorsListClick
    end
    object sbFirstAccumulatorsList: TSpeedButton
      Left = 0
      Top = 0
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Первая запись'
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
      OnClick = sbFirstAccumulatorsListClick
    end
    object sbFilterAccumulatorsList: TSpeedButton
      Left = 0
      Top = 95
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Фильтр/поиск'
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
      OnClick = sbFilterAccumulatorsListClick
    end
    object sbClose: TSpeedButton
      Left = 0
      Top = 133
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Закрыть'
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
    object sbRefreshAccumulatorsList: TSpeedButton
      Left = 0
      Top = 76
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Обновить'
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
      OnClick = sbRefreshAccumulatorsListClick
    end
    object sbPrintAccumulatorsList: TSpeedButton
      Left = 0
      Top = 114
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 'Печать|Печать'
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
  end
  object pnlSearch: TPanel [2]
    Left = 304
    Top = 88
    Width = 237
    Height = 67
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    OnMouseDown = pnlSearchMouseDown
    object Label1: TLabel
      Left = 4
      Top = 3
      Width = 39
      Height = 15
      Caption = 'Поиск:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbSearch: TSpeedButton
      Left = 148
      Top = 40
      Width = 84
      Height = 22
      Cursor = crHandPoint
      Hint = 'Выполнить поиск'
      Caption = 'Найти'
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
      OnClick = sbSearchClick
    end
    object SpeedButton22: TSpeedButton
      Left = 222
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
    object edSearch: TwwDBEdit
      Left = 13
      Top = 19
      Width = 219
      Height = 19
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Params.Strings = (
      'read_committed'
      'read'
      'nowait')
    Left = 49
    Top = 42
  end
  inherited ibsGen_ID: TIBSQL
    Database = frmDM.dbMain
    Left = 78
    Top = 71
  end
  inherited ibsGridsSetup: TIBSQL
    Left = 78
    Top = 42
  end
  object ibdsMainAccumulatorsList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsMainAccumulatorsListAfterOpen
    BeforeOpen = ibdsMainAccumulatorsListBeforeOpen
    BufferChunks = 500
    CachedUpdates = False
    SelectSQL.Strings = (
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast((current_date-AC.START_DA' +
        'TE)/30.41666666667 as float) TIME_GONE, AC.MILEAGE, AC.LOCATION_' +
        'ID,'
      
        'cast(100*(current_date-AC.START_DATE)/A.TIME_ALLOWED/30.41666666' +
        '667 as INTEGER) PERSENT_TIME,'
      
        'cast(100*AC.MILEAGE/A.MILLEAGE_ALLOWED as INTEGER) PERSENT_MILLE' +
        'AGE,'
      'Cast('#39'Склад'#39' as VARCHAR(127)) LOCATION'
      
        'from ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER_IN SOI, PR' +
        'IMARY_TOVAR_BODY PTB'
      
        'where NOT (AC.START_DATE is null) and (AC.LOCATION_TYPE=0) and (' +
        'A.GOOD_TYPE=1) and (A.ID=PTB.ARTICUL_ID) and'
      '(AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast(0 as float) TIME_GONE, AC' +
        '.MILEAGE, AC.LOCATION_ID,'
      'cast(0 as INTEGER) PERSENT_TIME,'
      
        'cast(100*AC.MILEAGE/A.MILLEAGE_ALLOWED as INTEGER) PERSENT_MILLE' +
        'AGE,'
      'Cast('#39'Склад'#39' as VARCHAR(127)) LOCATION'
      
        'from ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER_IN SOI, PR' +
        'IMARY_TOVAR_BODY PTB'
      
        'where (AC.START_DATE is null) and (AC.LOCATION_TYPE=0) and (A.GO' +
        'OD_TYPE=1) and (A.ID=PTB.ARTICUL_ID) and'
      '(AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast((current_date-AC.START_DA' +
        'TE)/30.41666666667 as float) TIME_GONE, AC.MILEAGE, AC.LOCATION_' +
        'ID,'
      
        'cast(100*(current_date-AC.START_DATE)/A.TIME_ALLOWED/30.41666666' +
        '667 as INTEGER) PERSENT_TIME,'
      
        'cast(100*AC.MILEAGE/A.MILLEAGE_ALLOWED as INTEGER) PERSENT_MILLE' +
        'AGE,'
      
        'Cast('#39'Подотчетник'#39'||'#39' '#39'||P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_N' +
        'AME as VARCHAR(127)) LOCATION'
      
        'from PERSONS P, ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER' +
        '_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=1) and (AC.LOCATION_ID=P.ID) and (A.GOOD' +
        '_TYPE=1) and'
      
        '(A.ID=PTB.ARTICUL_ID) and (AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and ' +
        '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast((current_date-AC.START_DA' +
        'TE)/30.41666666667 as float) TIME_GONE, AC.MILEAGE, AC.LOCATION_' +
        'ID,'
      
        'cast(100*(current_date-AC.START_DATE)/A.TIME_ALLOWED/30.41666666' +
        '667 as INTEGER) PERSENT_TIME,'
      
        'cast(100*AC.MILEAGE/A.MILLEAGE_ALLOWED as INTEGER) PERSENT_MILLE' +
        'AGE,'
      
        'Cast('#39'Водитель'#39'||'#39' '#39'||P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME' +
        ' as VARCHAR(127)) LOCATION'
      
        'from PERSONS P, ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER' +
        '_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=2) and (AC.LOCATION_ID=P.ID) and (A.GOOD' +
        '_TYPE=1) and'
      
        '(A.ID=PTB.ARTICUL_ID) and (AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and ' +
        '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast((current_date-AC.START_DA' +
        'TE)/30.41666666667 as float) TIME_GONE, AC.MILEAGE, AC.LOCATION_' +
        'ID,'
      
        'cast(100*(current_date-AC.START_DATE)/A.TIME_ALLOWED/30.41666666' +
        '667 as INTEGER) PERSENT_TIME,'
      
        'cast(100*AC.MILEAGE/A.MILLEAGE_ALLOWED as INTEGER) PERSENT_MILLE' +
        'AGE,'
      
        'Cast('#39'Автомобиль'#39'||'#39' '#39'||AM.NAME||'#39' '#39'||AU.STATE_NUMBER as VARCHAR' +
        '(127)) LOCATION'
      
        'from AUTOMOBILES AU, AUTOMOBILE_MAKES AM, ARTICULS A, ACCUMULATO' +
        'RS_TYRES AC, SERIALS_OUTER_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=3) and (AC.LOCATION_ID=AU.ID) and (AU.AU' +
        'TOMOBILE_MAKE_ID=AM.ID) and'
      
        '(A.GOOD_TYPE=1) and (A.ID=PTB.ARTICUL_ID) and (AC.PRIMARY_TOVAR_' +
        'BODY_ID=PTB.ID) and'
      '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      
        'select A.NAME, SOI.SERIAL_NUMBER, cast((current_date-AC.START_DA' +
        'TE)/30.41666666667 as float) TIME_GONE, AC.MILEAGE, AC.LOCATION_' +
        'ID,'
      'cast(100 as INTEGER) PERSENT_TIME,'
      'cast(100 as INTEGER) PERSENT_MILLEAGE,'
      'Cast('#39'Утиль'#39' as VARCHAR(127)) LOCATION'
      
        'from ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER_IN SOI, PR' +
        'IMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=4) and (A.GOOD_TYPE=1) and (A.ID=PTB.ART' +
        'ICUL_ID) and'
      '(AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (SOI.ID=AC.SERIAL_ID)'
      ''
      'order by 8,1,6,7')
    Left = 49
    Top = 71
    object ibdsMainAccumulatorsListNAME: TIBStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object ibdsMainAccumulatorsListSERIAL_NUMBER: TIBStringField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Size = 100
    end
    object ibdsMainAccumulatorsListMILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object ibdsMainAccumulatorsListLOCATION_ID: TIntegerField
      FieldName = 'LOCATION_ID'
    end
    object ibdsMainAccumulatorsListLOCATION: TIBStringField
      FieldName = 'LOCATION'
      Size = 127
    end
    object ibdsMainAccumulatorsListPERSENT_TIME: TIntegerField
      FieldName = 'PERSENT_TIME'
      DisplayFormat = '#,##0.00'
    end
    object ibdsMainAccumulatorsListPERSENT_MILLEAGE: TIntegerField
      FieldName = 'PERSENT_MILLEAGE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object ibdsMainAccumulatorsListTIME_GONE: TFloatField
      FieldName = 'TIME_GONE'
      DisplayFormat = '#,##0.0'
    end
  end
  object dsMainAccumulatorsList: TDataSource
    DataSet = ibdsMainAccumulatorsList
    Left = 49
    Top = 100
  end
  object ibdsFilterArticuls: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 50
    CachedUpdates = False
    SelectSQL.Strings = (
      'select A.ID, A.NAME'
      'from ARTICULS A'
      'where (A.ITEM_TYPE=1) and (A.GOOD_TYPE=1)'
      'order by 2')
    Left = 20
    Top = 71
    object ibdsFilterArticulsNAME: TIBStringField
      DisplayWidth = 40
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsFilterArticulsID: TIntegerField
      FieldName = 'ID'
      Origin = '"ARTICULS"."ID"'
      Required = True
      Visible = False
    end
  end
end
