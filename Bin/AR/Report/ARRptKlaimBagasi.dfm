inherited fmARRptKlaimBagasi: TfmARRptKlaimBagasi
  Left = 376
  Top = 318
  Caption = 'Laporan Pengajuan Klaim Bagasi'
  ClientHeight = 569
  ClientWidth = 1198
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1198
    Height = 89
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 205
      Top = 21
      Width = 380
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label3: TLabel
        Left = 126
        Top = 22
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 25
        Top = 18
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 177
        Top = 18
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object BitBtn1: TBitBtn
        Left = 273
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
          C43337777777777777F33444881B188444333777F3737337773333308881FF70
          33333337F3373337F3333330888BF770333333373F33F337333333330881F703
          3333333373F73F7333333333308B703333333333373F77333333333333080333
          3333333333777FF333333333301F103333333333377777FF3333333301B1F103
          333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
          333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
          C43337777777777777F334444444444444333777777777777733}
        NumGlyphs = 2
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 70
      ItemIndex = 0
      Items.Strings = (
        'Laporan'
        'Rekap')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object GroupBox2: TGroupBox
      Left = 205
      Top = 21
      Width = 236
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object dt3: TdxDateEdit
        Left = 25
        Top = 18
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object BitBtn2: TBitBtn
        Left = 129
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
          C43337777777777777F33444881B188444333777F3737337773333308881FF70
          33333337F3373337F3333330888BF770333333373F33F337333333330881F703
          3333333373F73F7333333333308B703333333333373F77333333333333080333
          3333333333777FF333333333301F103333333333377777FF3333333301B1F103
          333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
          333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
          C43337777777777777F334444444444444333777777777777733}
        NumGlyphs = 2
      end
    end
  end
  inherited paCenter: TPanel
    Top = 89
    Width = 1198
    Height = 439
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1196
      Height = 437
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'TransID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dgrReportDblClick
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'No Transaksi'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Kode Sales'
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nama Sales'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Total'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bayar'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Bayar'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Bayar'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sisa'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Sisa'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Sisa'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UP'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bank'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cabang'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Rekening'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nama'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Status'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusOto'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OtoBy'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OtoDate'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 528
    Width = 1198
    inherited bbPreview: TBitBtn
      Left = 428
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 502
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 576
      Enabled = False
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 11
      Width = 257
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object bbExcel: TBitBtn
      Left = 854
      Top = 6
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 4
      OnClick = bbExcelClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080808080808080808080808000008080800080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000808080000080808000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000008000808080
        0000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080
        000080000080000080000080008080800000808080008000008000FFFFFF0080
        00008000008000008000008000008000008000FFFFFF00800000800000800000
        80000080008080800000808080008000008000FFFFFF00800000800000800000
        8000008000008000FFFFFF008000008000008000FFFFFF008000008000808080
        0000808080008000008000FFFFFF008000008000008000008000008000FFFFFF
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFF008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFFFFFF
        FFFFFFFF008000FFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFF008000FFFFFF00
        8000008000008000008000008000008000FFFFFFFFFFFF008000008000808080
        0000808080008000008000FFFFFF008000FFFFFF008000008000008000008000
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFF008000008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFF0080
        00008000008000FFFFFFFFFFFFFFFFFF008000008000008000008000FFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080
        0000808080008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080008080800000808080008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800080808000008080808080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080800000}
    end
    object bbCancel: TBitBtn
      Left = 969
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 5
      OnClick = bbCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select *,K.Total-K.Bayar as Sisa from ('
      
        'select A.Transdate,A.TransID,B.SalesID,B.SalesName,A.Total,A.UP,' +
        'A.Bank,A.Cabang,A.Rekening,A.Nama,'
      'CASE WHEN A.FgOto='#39'W'#39' THEN '#39'NOT SUBMITTED'#39
      '     WHEN A.FgOto='#39'T'#39' THEN '#39'SUBMITTED'#39
      #9' WHEN A.FgOto='#39'X'#39' THEN '#39'REJECTED'#39
      #9' ELSE '#39'APPROVED'#39' END as StatusOto,A.OtoBy,A.OtoDate,'
      
        #9' ISNULL((SELECT SUM(X.Amount) FROM CFTrKKBBDT X Where X.Note=A.' +
        'TransID),0) as Bayar'
      
        'from ARTrKlaimBagasiHd A inner join ARMsSales B on A.SalesID=B.S' +
        'alesID'
      ') as K')
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActUP: TStringField
      FieldName = 'UP'
      Size = 50
    end
    object quActBank: TStringField
      FieldName = 'Bank'
      Size = 50
    end
    object quActCabang: TStringField
      FieldName = 'Cabang'
      Size = 50
    end
    object quActRekening: TStringField
      FieldName = 'Rekening'
      Size = 50
    end
    object quActNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object quActStatusOto: TStringField
      FieldName = 'StatusOto'
      ReadOnly = True
      Size = 13
    end
    object quActOtoBy: TStringField
      FieldName = 'OtoBy'
      Size = 50
    end
    object quActOtoDate: TDateTimeField
      FieldName = 'OtoDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quActSisa: TBCDField
      FieldName = 'Sisa'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 901
    Top = 24
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 416
    Top = 4
  end
end
