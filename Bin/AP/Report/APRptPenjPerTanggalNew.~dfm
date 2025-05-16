inherited fmAPRptPenjPerTanggalNew: TfmAPRptPenjPerTanggalNew
  Left = 324
  Top = 470
  Caption = 'fmAPRptPenjPerTanggalNew'
  ClientHeight = 537
  ClientWidth = 1162
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1162
    Height = 57
    inherited laTitle: TLabel
      Visible = False
    end
    object Label2: TLabel
      Left = 552
      Top = 26
      Width = 153
      Height = 13
      Caption = 'Double Klik Untuk Melihat Detail'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 5
      Width = 241
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 112
        Top = 19
        Width = 16
        Height = 13
        Caption = 's/d'
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 138
        Top = 14
        Width = 85
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object Button1: TButton
      Left = 257
      Top = 18
      Width = 75
      Height = 25
      Caption = 'REFRESH'
      TabOrder = 1
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 344
      Top = 8
      Width = 200
      Height = 43
      Caption = '[ Jenis Laporan ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Summary'
        'Details')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
  end
  inherited paCenter: TPanel
    Top = 57
    Width = 1162
    Height = 439
    object dbgPembelian: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1160
      Height = 437
      Bands = <
        item
          Width = 739
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'PurchaseId'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dbgPembelianDblClick
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = 8421440
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSearch, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dbgPembelianColumn1: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dbgPembelianColumn2: TdxDBGridColumn
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PurchaseId'
      end
      object dbgPembelianColumn3: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppID'
      end
      object dbgPembelianColumn4: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
      object dbgPembelianColumn5: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Itemid'
      end
      object dbgPembelianColumn6: TdxDBGridColumn
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dbgPembelianColumn7: TdxDBGridColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Subtotal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Subtotal'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Subtotal'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dbgPembelianColumn8: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CurrID'
      end
      object dbgPembelianColumn9: TdxDBGridColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPN'
        SummaryFooterType = cstSum
        SummaryFooterField = 'PPN'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'PPN'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dbgPembelianColumn10: TdxDBGridColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TTLPb'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TTLPb'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'TTLPb'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 496
    Width = 1162
    inherited bbPreview: TBitBtn
      Left = 192
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 266
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 340
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 893
      Top = 5
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 3
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
      Left = 996
      Top = 5
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
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
      
        'select A.Transdate,A.SaleID as PurchaseID,A.CustID as SuppID,B.C' +
        'ustName as SuppName,A.CustID as ItemId,B.CustName as ItemName,A.' +
        'StPj as SubTotal,A.CurrID,A.PPN,A.TTLPj as TTLPB  from ARTrPenju' +
        'alanHd A inner join ARMsCustomer B on A.CustID=B.CustID')
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActPurchaseId: TStringField
      FieldName = 'PurchaseId'
      Size = 50
    end
    object quActSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quActSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quActItemid: TStringField
      FieldName = 'Itemid'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 50
    end
    object quActCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quActPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActTTLPb: TBCDField
      FieldName = 'TTLPb'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 736
    Top = 16
  end
end
