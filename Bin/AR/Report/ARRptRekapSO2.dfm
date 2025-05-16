inherited fmARRptRekapSODlg: TfmARRptRekapSODlg
  Left = 459
  Top = 280
  Caption = ''
  ClientHeight = 653
  ClientWidth = 1266
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1266
    inherited laTitle: TLabel
      Width = 171
      Caption = 'Rekap Sales Order'
    end
  end
  inherited paCenter: TPanel
    Width = 1266
    Height = 572
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 78
      Width = 1264
      Height = 493
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SaleID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
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
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dgrReportPOID: TdxDBGridColumn
        Caption = 'No SO'
        Sorted = csUp
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dgrReportTglSO: TdxDBGridColumn
        Caption = 'Tgl SO'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglSO'
      end
      object dgrReportCustName: TdxDBGridColumn
        Caption = 'Pelanggan'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dgrReportSalesName: TdxDBGridColumn
        Caption = 'Sales'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportSaleID: TdxDBGridColumn
        Caption = 'Invoice Jual'
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dgrReportTaxID: TdxDBGridColumn
        Caption = 'No FPS'
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TaxID'
      end
      object dgrReportTglInvoice: TdxDBGridColumn
        Caption = 'Tgl Invoice'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglInvoice'
      end
      object dgrReportGBUID: TdxDBGridColumn
        Caption = 'No PO'
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GBUID'
      end
      object dgrReportTglPO: TdxDBGridColumn
        Caption = 'Tgl PO'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglPO'
      end
      object dgrReportSuppName: TdxDBGridColumn
        Caption = 'Supplier'
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
      object dgrReportKonsinyasiID: TdxDBGridColumn
        Caption = 'No GRN'
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KonsinyasiID'
      end
      object dgrReportTglTerima: TdxDBGridColumn
        Caption = 'Tgl Terima'
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglTerima'
      end
      object dgrReportPurchaseID: TdxDBGridColumn
        Caption = 'Invoice Beli'
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PurchaseID'
      end
      object dgrReportFPSID: TdxDBGridColumn
        Caption = 'Faktur Pajak'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FPSID'
      end
      object dgrReportTglBeli: TdxDBGridColumn
        Caption = 'Tgl Beli'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglBeli'
      end
      object dgrReportItemName: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 185
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportQty: TdxDBGridColumn
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportPrice: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dgrReportModal: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Modal'
      end
    end
    object GrbTanggal: TGroupBox
      Left = 187
      Top = 6
      Width = 397
      Height = 57
      Caption = '[ Tanggal ]'
      TabOrder = 2
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Dari :'
      end
      object Label3: TLabel
        Left = 146
        Top = 25
        Width = 41
        Height = 13
        Caption = 'Sampai :'
      end
      object bbRefresh: TBitBtn
        Left = 305
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object dtpSmp: TDateTimePicker
        Left = 194
        Top = 21
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 38070.9999884259
        Format = 'dd/MM/yyyy'
        Time = 38070.9999884259
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object dtpDari: TDateTimePicker
        Left = 56
        Top = 21
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 38070
        Format = 'dd/MM/yyyy'
        Time = 38070
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
    end
    object RgPeriode: TRadioGroup
      Left = 11
      Top = 6
      Width = 175
      Height = 57
      Caption = '[ Periode ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Tanggal'
        'Bulan')
      TabOrder = 3
      OnClick = RgPeriodeClick
    end
    object bbExp: TBitBtn
      Left = 1147
      Top = 39
      Width = 41
      Height = 25
      Hint = 'Tampilkan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbExpClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbColp: TBitBtn
      Left = 1184
      Top = 39
      Width = 41
      Height = 25
      Hint = 'Sembunyikan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbColpClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object GrbBulan: TGroupBox
      Left = 187
      Top = 6
      Width = 342
      Height = 57
      Caption = '[ Bulan ]'
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 249
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object dxBulan: TdxImageEdit
        Left = 17
        Top = 17
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'dxBulan'
        StyleController = SCEdit
        Descriptions.Strings = (
          'January'
          'Febuary'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'July'
          'Agustus'
          'September'
          'Oktober'
          'November'
          'Desember')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
      object dxTahun: TdxSpinEdit
        Left = 166
        Top = 17
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        StyleController = SCEdit
      end
    end
  end
  inherited paBottom: TPanel
    Top = 613
    Width = 1266
    Height = 40
    inherited bbPreview: TBitBtn
      Left = 1032
      Top = -51
    end
    inherited bbPrint: TBitBtn
      Left = 1106
      Top = -51
    end
    inherited bbExit: TBitBtn
      Left = 1180
      Top = -51
    end
    object bbExcel: TBitBtn
      Left = 1055
      Top = 6
      Width = 115
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
      Left = 1169
      Top = 6
      Width = 92
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
    CursorType = ctStatic
    SQL.Strings = (
      
        'SELECT A.POID,CONVERT(VARCHAR(10),A.Transdate,103) as TglSO,D.Cu' +
        'stName,E.SalesName,'
      
        'X.SaleID,X.TaxID,CONVERT(VARCHAR(10),X.TglInvoice,103) as TglInv' +
        'oice,Z.GBUID,CONVERT(VARCHAR(10),Z.TglPO,103) as TglPO,Z.SuppNam' +
        'e,Z.KonsinyasiID,'
      
        'CONVERT(VARCHAR(10),Z.TglTerima,103) as TglTerima,Z.PurchaseID,Z' +
        '.FPSID,CONVERT(VARCHAR(10),Z.TglBeli,103) as TglBeli,'
      
        'C.ItemName,ISNULL(B.Qty,0) as Qty,ISNULL(B.Price,0) as Price,ISN' +
        'ULL(Z.Price,0) as Modal'
      'FROM ARTrPurchaseOrderHd A'
      'INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID'
      'INNER JOIN INMsItem C ON B.ItemID=C.ItemID'
      'INNER JOIN ARMsCustomer D ON A.CustID=D.CustID'
      'INNER JOIN ARMsSales E ON A.SalesID=E.SalesID'
      'LEFT JOIN ('
      
        '  SELECT A.SaleID,A.Taxid,A.TransDate as TglInvoice,B.ItemID,A.S' +
        'OID,B.Price,A.CustID '
      
        '  FROM ARTrPenjualanHd A INNER JOIN ARTrPenjualanDt B ON A.SaleI' +
        'D=B.SaleID'
      ') X ON A.POID=X.SOID AND A.CustID=X.CustID AND B.ItemID=X.ItemID'
      'LEFT JOIN ('
      
        '  SELECT A.GBUID,A.Transdate as TglPO,C.SuppName,B.ItemID,B.Pric' +
        'e,A.SOID,Y.KonsinyasiID,Y.TglTerima,Y.PurchaseID,Y.FPSID,Y.TglBe' +
        'li FROM ARTrPenawaranHd A'
      '  INNER JOIN ARTrPenawaranDt B ON A.GBUID=B.GBUID'
      '  INNER JOIN APMsSupplier C ON A.CustID=C.SuppID'
      '  LEFT JOIN ('
      
        '    SELECT A.KonsinyasiID,A.TransDate as TglTerima,A.SuppID,B.It' +
        'emID,A.POID,X.PurchaseID,X.FPSID,X.TransDate as TglBeli FROM APT' +
        'rKonsinyasiHd A'
      
        '    INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.Konsinyasi' +
        'ID '
      '    LEFT JOIN ('
      
        '      SELECT A.PurchaseID,A.TransDate,A.SuppID,B.ItemID,A.Konsin' +
        'yasiID,A.FPSID FROM APTrPurchaseHd A'
      '      INNER JOIN APTrPurchaseDt B ON A.PurchaseID=B.PurchaseID'
      
        '    ) X ON A.KonsinyasiID=X.KonsinyasiID AND A.SuppID=X.SuppID A' +
        'ND B.ItemID=X.ItemID'
      
        '  ) Y ON A.GBUID=Y.POID AND B.ItemID=Y.ItemID AND A.CustID=Y.Sup' +
        'pID'
      ') Z ON A.POID=Z.SOID AND B.ItemID=Z.ItemID'
      'ORDER BY CONVERT(VARCHAR(10),A.Transdate,112),A.POID')
    object quActPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quActTglSO: TStringField
      FieldName = 'TglSO'
      ReadOnly = True
      Size = 10
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActTglInvoice: TStringField
      FieldName = 'TglInvoice'
      ReadOnly = True
      Size = 10
    end
    object quActGBUID: TStringField
      FieldName = 'GBUID'
      Size = 50
    end
    object quActTglPO: TStringField
      FieldName = 'TglPO'
      ReadOnly = True
      Size = 10
    end
    object quActSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quActKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quActTglTerima: TStringField
      FieldName = 'TglTerima'
      ReadOnly = True
      Size = 10
    end
    object quActPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quActTglBeli: TStringField
      FieldName = 'TglBeli'
      ReadOnly = True
      Size = 10
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActQty: TIntegerField
      FieldName = 'Qty'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quActPrice: TBCDField
      FieldName = 'Price'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quActModal: TBCDField
      FieldName = 'Modal'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quActTaxID: TStringField
      FieldName = 'TaxID'
      Size = 30
    end
    object quActFPSID: TStringField
      FieldName = 'FPSID'
      Size = 30
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 592
    Top = 84
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1040
    Top = 48
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1076
    Top = 48
  end
end
