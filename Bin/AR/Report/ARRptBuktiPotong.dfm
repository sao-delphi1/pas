inherited fmARRptBuktiPotong: TfmARRptBuktiPotong
  Caption = 'Laporan Bukti Potong Belum Diterima'
  ClientWidth = 1372
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1372
    Height = 73
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 226
      Height = 54
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dt1: TdxDateEdit
        Left = 29
        Top = 19
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object bbRefresh: TBitBtn
        Left = 125
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbRefreshClick
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
    object CheckBox1: TCheckBox
      Left = 240
      Top = 32
      Width = 257
      Height = 17
      Caption = 'Tampilkan Yang Belum Terima Bukti Potong'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  inherited paCenter: TPanel
    Top = 73
    Width = 1372
    Height = 457
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1370
      Height = 455
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SaleID'
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      BandColor = clMoneyGreen
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -12
      BandFont.Name = 'Arial Narrow'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Arial Narrow'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dxDBGrid1Column14: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'No Invoice'
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dxDBGrid1Column17: TdxDBGridColumn
        Caption = 'No Faktur'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TaxID'
      end
      object dxDBGrid1Column15: TdxDBGridColumn
        Caption = 'Pelanggan'
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dxDBGrid1Column16: TdxDBGridColumn
        Caption = 'Sales'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'Kode Barang'
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = 'Harga'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'PPH'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgPPH'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = 'Nilai PPH'
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NilaiPPH'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'Total PPH'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPH'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Caption = 'No Bukti Potong'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BuktiPotong'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglBukti'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Caption = 'BPC'
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmlBPBD'
        SummaryFooterType = cstSum
        SummaryFooterField = 'JmlBPBD'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'JmlBPBD'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1372
    inherited bbPreview: TBitBtn
      Left = 330
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 404
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 478
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 995
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
      Left = 1095
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
      'SELECT X.* FROM ( '
      
        'SELECT K.*,CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPoton' +
        'g,'#39#39')='#39#39' THEN 1 ELSE 0 END ELSE 0 END as JmlBPBD FROM ( '
      
        'select A.SaleID,B.TaxID,A.ItemID,A.Note as ItemName,A.Qty,A.UOMI' +
        'D,A.Price,ISNULL(A.Qty*A.Price,0) as Total, '
      
        'CASE WHEN A.FgPPH='#39'A'#39' THEN '#39'Rp'#39' ELSE '#39'%'#39' END as FgPPH,ISNULL(A.P' +
        'PH,0) as NilaiPPH, '
      
        'ISNULL(CASE WHEN A.FgPPH='#39'A'#39' THEN A.PPH ELSE A.Qty*A.Price*A.PPH' +
        '*0.01 END,0) as PPH, '
      'A.BuktiPotong,A.TglBukti,C.CustName,D.SalesName,B.Transdate'
      'from ARTrPenjualanDt A '
      
        'inner join ARTrPenjualanHd B on A.SaleID=B.SaleID and B.FgForm='#39 +
        'AR'#39
      'inner join ARMsCustomer C on B.CustID=C.CustID'
      'inner join ARMsSales D on B.SalesID=D.SalesID'
      ') as K '
      ') as X '
      'WHERE X.PPH<>0 AND X.JmlBPBD<>0 '
      'ORDER BY X.Transdate,X.SaleID,X.ItemName')
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 2000
    end
    object quActQty: TIntegerField
      FieldName = 'Qty'
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 29
    end
    object quActFgPPH: TStringField
      FieldName = 'FgPPH'
      ReadOnly = True
      Size = 2
    end
    object quActNilaiPPH: TBCDField
      FieldName = 'NilaiPPH'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActPPH: TBCDField
      FieldName = 'PPH'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quActBuktiPotong: TStringField
      FieldName = 'BuktiPotong'
      Size = 100
    end
    object quActTglBukti: TDateTimeField
      FieldName = 'TglBukti'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActJmlBPBD: TIntegerField
      FieldName = 'JmlBPBD'
      ReadOnly = True
    end
    object quActTaxID: TStringField
      FieldName = 'TaxID'
      Size = 30
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 800
    Top = 24
  end
end
