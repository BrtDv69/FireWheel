inherited frmAccumulatorsTyres: TfrmAccumulatorsTyres
  Left = 49
  Top = 188
  Width = 751
  Height = 399
  Caption = #1040#1082#1082#1091#1084#1091#1083#1103#1090#1086#1088#1099
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 724
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object dbg: TcxGrid
      Left = 0
      Top = 0
      Width = 724
      Height = 372
      Align = alClient
      TabOrder = 0
      object tvAccumulatorsTyresList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = tvAccumulatorsTyresListCustomDrawCell
        DataController.DataSource = dsMainAccumulatorsAccumulatorsTyresList
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.Visible = True
        Styles.StyleSheet = frmDM.cxGridTableViewStyleSheet1
        OnCustomDrawColumnHeader = tvAccumulatorsTyresListCustomDrawColumnHeader
        object tvAccumulatorsTyresListNAME: TcxGridDBColumn
          Caption = #1052#1086#1076#1077#1083#1100
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 102
        end
        object tvAccumulatorsTyresListSERIAL_NUMBER: TcxGridDBColumn
          Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470
          DataBinding.FieldName = 'SERIAL_NUMBER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 83
        end
        object tvAccumulatorsTyresListMILEAGE: TcxGridDBColumn
          Caption = #1055#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095'. '#1101#1082#1089#1087#1083'., '#1082#1084
          DataBinding.FieldName = 'MILEAGE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
        end
        object tvAccumulatorsTyresListPERSENT_MILLEAGE: TcxGridDBColumn
          Caption = #1048#1079#1085#1086#1089' '#1087#1086' '#1087#1088#1086#1073#1077#1075#1091', %%'
          DataBinding.FieldName = 'PERSENT_MILLEAGE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 52
        end
        object tvAccumulatorsTyresListTIME_GONE: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103' '#1089' '#1085#1072#1095'. '#1101#1082#1089#1087#1083'., '#1084#1077#1089'.'
          DataBinding.FieldName = 'TIME_GONE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 83
        end
        object tvAccumulatorsTyresListPERSENT_TIME: TcxGridDBColumn
          Caption = #1048#1079#1085#1086#1089' '#1087#1086' '#1074#1088#1077#1084#1077#1085#1080', %%'
          DataBinding.FieldName = 'PERSENT_TIME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
        end
        object tvAccumulatorsTyresListLOCATION: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1085#1072#1093#1086#1078#1076#1077#1085#1080#1103
          DataBinding.FieldName = 'LOCATION'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          SortIndex = 1
          SortOrder = soAscending
          Width = 176
        end
      end
      object lvAccumulatorsTyresList: TcxGridLevel
        GridView = tvAccumulatorsTyresList
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 724
    Top = 0
    Width = 19
    Height = 372
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbLastAccumulatorsTyresList: TSpeedButton
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
      OnClick = sbLastAccumulatorsTyresListClick
    end
    object sbNextAccumulatorsTyresList: TSpeedButton
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
      OnClick = sbNextAccumulatorsTyresListClick
    end
    object sbPriorAccumulatorsTyresList: TSpeedButton
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
      OnClick = sbPriorAccumulatorsTyresListClick
    end
    object sbFirstAccumulatorsTyresList: TSpeedButton
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
      OnClick = sbFirstAccumulatorsTyresListClick
    end
    object sbFilterAccumulatorsTyresList: TSpeedButton
      Left = 0
      Top = 95
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
      OnClick = sbFilterAccumulatorsTyresListClick
    end
    object sbClose: TSpeedButton
      Left = 0
      Top = 133
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
    object sbRefreshAccumulatorsTyresList: TSpeedButton
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
      OnClick = sbRefreshAccumulatorsTyresListClick
    end
    object sbPrintAccumulatorsTyresList: TSpeedButton
      Left = 0
      Top = 114
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
      OnClick = sbPrintAccumulatorsTyresListClick
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Left = 49
    Top = 42
  end
  inherited ibsGen_ID: TIBSQL
    Left = 78
    Top = 42
  end
  object ibdsMainAccumulatorsTyresList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsMainAccumulatorsTyresListAfterOpen
    BeforeOpen = ibdsMainAccumulatorsTyresListBeforeOpen
    OnCalcFields = ibdsMainAccumulatorsTyresListCalcFields
    BufferChunks = 500
    SelectSQL.Strings = (
      'select AC.ID, A.NAME, SOI.SERIAL_NUMBER, AC.LOCATION_ID,'
      'AC.START_DATE, A.TIME_ALLOWED, AC.MILEAGE, A.MILLEAGE_ALLOWED,'
      'Cast('#39#1057#1082#1083#1072#1076#39' as VARCHAR(127)) LOCATION'
      
        'from ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER_IN SOI, PR' +
        'IMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=0) and (A.GOOD_TYPE=:GOOD_TYPE) and (A.I' +
        'D=PTB.ARTICUL_ID) and'
      '(AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      'select AC.ID, A.NAME, SOI.SERIAL_NUMBER, AC.LOCATION_ID,'
      'AC.START_DATE, A.TIME_ALLOWED, AC.MILEAGE, A.MILLEAGE_ALLOWED,'
      
        'Cast('#39#1055#1086#1076#1086#1090#1095#1077#1090#1085#1080#1082#39'||'#39' '#39'||P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_N' +
        'AME as VARCHAR(127)) LOCATION'
      
        'from PERSONS P, ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER' +
        '_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=1) and (AC.LOCATION_ID=P.ID) and (A.GOOD' +
        '_TYPE=:GOOD_TYPE) and'
      
        '(A.ID=PTB.ARTICUL_ID) and (AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and ' +
        '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      'select AC.ID, A.NAME, SOI.SERIAL_NUMBER, AC.LOCATION_ID,'
      'AC.START_DATE, A.TIME_ALLOWED, AC.MILEAGE, A.MILLEAGE_ALLOWED,'
      
        'Cast('#39#1042#1086#1076#1080#1090#1077#1083#1100#39'||'#39' '#39'||P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME' +
        ' as VARCHAR(127)) LOCATION'
      
        'from PERSONS P, ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER' +
        '_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=2) and (AC.LOCATION_ID=P.ID) and (A.GOOD' +
        '_TYPE=:GOOD_TYPE) and'
      
        '(A.ID=PTB.ARTICUL_ID) and (AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and ' +
        '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      'select AC.ID, A.NAME, SOI.SERIAL_NUMBER, AC.LOCATION_ID,'
      'AC.START_DATE, A.TIME_ALLOWED, AC.MILEAGE, A.MILLEAGE_ALLOWED,'
      
        'Cast('#39#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100#39'||'#39' '#39'||AM.NAME||'#39' '#39'||AU.STATE_NUMBER as VARCHAR' +
        '(127)) LOCATION'
      
        'from AUTOMOBILES AU, AUTOMOBILE_MAKES AM, ARTICULS A, ACCUMULATO' +
        'RS_TYRES AC, SERIALS_OUTER_IN SOI, PRIMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=3) and (AC.LOCATION_ID=AU.ID) and (AU.AU' +
        'TOMOBILE_MAKE_ID=AM.ID) and'
      
        '(A.GOOD_TYPE=:GOOD_TYPE) and (A.ID=PTB.ARTICUL_ID) and (AC.PRIMA' +
        'RY_TOVAR_BODY_ID=PTB.ID) and'
      '(SOI.ID=AC.SERIAL_ID)'
      ''
      'union'
      'select AC.ID, A.NAME, SOI.SERIAL_NUMBER, AC.LOCATION_ID,'
      'AC.START_DATE, A.TIME_ALLOWED, AC.MILEAGE, A.MILLEAGE_ALLOWED,'
      'Cast('#39#1059#1090#1080#1083#1100#39' as VARCHAR(127)) LOCATION'
      
        'from ARTICULS A, ACCUMULATORS_TYRES AC, SERIALS_OUTER_IN SOI, PR' +
        'IMARY_TOVAR_BODY PTB'
      
        'where (AC.LOCATION_TYPE=4) and (A.GOOD_TYPE=:GOOD_TYPE) and (A.I' +
        'D=PTB.ARTICUL_ID) and'
      '(AC.PRIMARY_TOVAR_BODY_ID=PTB.ID) and (SOI.ID=AC.SERIAL_ID)'
      ''
      'order by 2, 9')
    Left = 49
    Top = 71
    object ibdsMainAccumulatorsTyresListNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'A.NAME'
      Required = True
      Size = 100
    end
    object ibdsMainAccumulatorsTyresListSERIAL_NUMBER: TIBStringField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Size = 100
    end
    object ibdsMainAccumulatorsTyresListMILEAGE: TIntegerField
      FieldName = 'MILEAGE'
      Origin = 'SOI.SERIAL_NUMBER'
      Required = True
      DisplayFormat = '#,##0'
    end
    object ibdsMainAccumulatorsTyresListLOCATION_ID: TIntegerField
      FieldName = 'LOCATION_ID'
      Origin = 'AC.LOCATION_ID'
    end
    object ibdsMainAccumulatorsTyresListLOCATION: TIBStringField
      FieldName = 'LOCATION'
      Size = 127
    end
    object ibdsMainAccumulatorsTyresListPERSENT_TIME: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PERSENT_TIME'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainAccumulatorsTyresListPERSENT_MILLEAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PERSENT_MILLEAGE'
      Required = True
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainAccumulatorsTyresListTIME_GONE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIME_GONE'
      DisplayFormat = '#,##0.0'
      Calculated = True
    end
    object ibdsMainAccumulatorsTyresListID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object ibdsMainAccumulatorsTyresListSTART_DATE: TDateField
      FieldName = 'START_DATE'
      ProviderFlags = []
    end
    object ibdsMainAccumulatorsTyresListTIME_ALLOWED: TIntegerField
      FieldName = 'TIME_ALLOWED'
      ProviderFlags = []
    end
    object ibdsMainAccumulatorsTyresListMILLEAGE_ALLOWED: TIntegerField
      FieldName = 'MILLEAGE_ALLOWED'
      ProviderFlags = []
    end
  end
  object dsMainAccumulatorsAccumulatorsTyresList: TDataSource
    DataSet = ibdsMainAccumulatorsTyresList
    Left = 49
    Top = 100
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 64
    object ChangeMileage: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1073#1077#1075' '#1089' '#1085#1072#1095#1072#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      OnClick = ChangeMileageClick
    end
    object N1: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1074#1088#1077#1084#1103' '#1089' '#1085#1072#1095#1072#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      OnClick = N1Click
    end
  end
  object GridPopupMenu2: TcxGridPopupMenu
    Grid = dbg
    PopupMenus = <
      item
        GridView = tvAccumulatorsTyresList
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 226
    Top = 74
  end
end
