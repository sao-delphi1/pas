inherited fmRptPenjualan: TfmRptPenjualan
  Left = 389
  Top = 69
  Caption = 'Rekap Penjualan'
  ClientHeight = 655
  ClientWidth = 1273
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1273
    inherited laTitle: TLabel
      Width = 159
      Caption = 'Rekap Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 1273
    Height = 563
    object GrbTanggal: TGroupBox
      Left = 187
      Top = 6
      Width = 397
      Height = 57
      Caption = '[ Tanggal ]'
      TabOrder = 0
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
      object dtpDari: TdxDateEdit
        Left = 57
        Top = 19
        Width = 85
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dtpSmp: TdxDateEdit
        Left = 195
        Top = 19
        Width = 85
        TabOrder = 2
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 69
      Width = 1271
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
      OnDblClick = dgrReportDblClick
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
      object dgrReportSaleID: TdxDBGridColumn
        Caption = 'No Invoice'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dgrReportTgl: TdxDBGridColumn
        Caption = 'Tanggal'
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
      object dgrReportTanggal: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportSalesName: TdxDBGridColumn
        Caption = 'Sales'
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Caption = 'Nomor SO'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOID'
      end
      object dgrReportPOID: TdxDBGridColumn
        Caption = 'No PO'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dgrReportCustName: TdxDBGridColumn
        Caption = 'Pelanggan'
        Width = 177
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dgrReportItemName: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportJumlah: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportPrice: TdxDBGridColumn
        Caption = 'Harga'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dgrReportFgTax: TdxDBGridColumn
        Caption = 'PPN'
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgTax'
      end
      object dgrReportJual: TdxDBGridColumn
        Caption = 'Total Jual'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jual'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Jual'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryFormat = '#,0'
      end
      object dgrReportPPNOut: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPNOut'
      end
      object dgrReportModal: TdxDBGridColumn
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Modal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Modal'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryFormat = '#,0'
      end
      object dgrReportPPNIn: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPNIn'
      end
      object dgrReportMargin: TdxDBGridColumn
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Margin'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Margin'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryFormat = '#,0'
      end
      object dgrReportPPNMargin: TdxDBGridColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPNMargin'
      end
      object dgrReportKomisi: TdxDBGridColumn
        Caption = 'Bagasi'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Komisi'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Komisi'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryFormat = '#,0'
      end
      object dgrReportHKomisi: TdxDBGridColumn
        Caption = 'Komisi'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HKomisi'
        SummaryFooterType = cstSum
        SummaryFooterField = 'HKomisi'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryFormat = '#,0'
      end
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
      OnClick = RgPeriodeClick
    end
    object GrbBulan: TGroupBox
      Left = 187
      Top = 6
      Width = 342
      Height = 57
      Caption = '[ Bulan ]'
      TabOrder = 5
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
    object RgOption: TRadioGroup
      Left = 587
      Top = 6
      Width = 409
      Height = 57
      Caption = '[ Option ]'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Sudah Lunas'
        'Sudah Lunas < 30 Hari')
      TabOrder = 6
      OnClick = RgPeriodeClick
    end
  end
  inherited paBottom: TPanel
    Top = 604
    Width = 1273
    Height = 51
    inherited bbPreview: TBitBtn
      Left = 991
      Top = -72
    end
    inherited bbPrint: TBitBtn
      Left = 1065
      Top = -72
    end
    inherited bbExit: TBitBtn
      Left = 1139
      Top = -72
    end
    object bbExcel: TBitBtn
      Left = 1059
      Top = 10
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
      Left = 1173
      Top = 10
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
    OnCalcFields = quActCalcFields
    SQL.Strings = (
      
        'SELECT L.*,M.SalesName,CASE WHEN L.GP > ISNULL(M.TOmzet,0) THEN ' +
        'L.Margin*M.Kom1*0.01 ELSE L.Margin*M.Kom2*0.01 END as HKomisi FR' +
        'OM('
      
        'SELECT K.*,ISNULL(Jual-Modal-Komisi,0) as Margin,ISNULL(PPNOut-P' +
        'PNIn,0) as PPNMargin,'
      
        '(SELECT ISNULL(SUM(X.Qty*(X.Price-X.Modal-X.Komisi)),0) FROM ART' +
        'rPenjualanDt X INNER JOIN ARTrPenjualanHd Y ON X.SaleID=Y.SaleID' +
        ' '
      
        'WHERE Y.SalesID=K.SalesID AND CONVERT(VARCHAR(8),Y.Transdate,112' +
        ') BETWEEN '#39'20200201'#39' AND '#39'20200225'#39') as GP,'
      'ISNULL((SELECT SUM(A.Amount) FROM CFTrKKBBDt A'
      
        'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FlagKKB' +
        'B IN ('#39'ARK'#39','#39'ARB'#39','#39'ARC'#39')'
      
        'WHERE A.RekeningID='#39'120100.0001'#39' AND A.Note=K.SaleID),0) as Baya' +
        'r,'
      
        '(SELECT TOP 1 DATEDIFF(Day,K.JatuhTempo,B.TransDate) FROM CFTrKK' +
        'BBDt A'
      
        'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FlagKKB' +
        'B IN ('#39'ARK'#39','#39'ARB'#39','#39'ARC'#39')'
      
        'WHERE A.RekeningID='#39'120100.0001'#39' AND A.Note=K.SaleID ORDER BY B.' +
        'Transdate DESC) as Lama'
      ' FROM ('
      
        'SELECT ISNULL(B.POID,'#39#39') as POID,A.SaleID,B.SalesID,CONVERT(VARC' +
        'HAR(10),B.TransDate,103) as Tgl,C.CustName,D.ItemName,B.FgTax,B.' +
        'Transdate,ISNULL(A.Qty,0) as Jumlah,'
      
        'ISNULL(A.Price,0) as Price,ISNULL(ROUND(A.Qty*A.Price,2),0) as J' +
        'ual,DATEADD(DAY,B.JatuhTempo,B.TransDate) as JatuhTempo,'
      
        'ISNULL(ROUND((CASE WHEN B.FgTax='#39'Y'#39' THEN (A.Qty*A.Price)*0.1 ELS' +
        'E 0 END),2),0) as PPNOut,ISNULL(ROUND(A.Qty*A.Modal,2),0) as Mod' +
        'al,'
      
        'ISNULL(ROUND((A.Qty*A.Modal/1.1*0.1),2),0) as PPNIn,ISNULL(A.Kom' +
        'isi,0) as Komisi,ISNULL(B.TTLPj,0) as TotalInv FROM ARTrPenjuala' +
        'ndt A '
      
        'Inner join ARTrPenjualanHd B on A.SaleID=B.SaleID INNER JOIN ARM' +
        'sCustomer C on B.CustID=C.CustID '
      'INNER JOIN INMsItem D on A.ItemID=D.ItemID) as K) as L '
      'INNER JOIN ARMsSales M ON L.SalesID=M.SalesID '
      'ORDER BY CONVERT(VARCHAR(8),L.Transdate,112),L.SaleID,L.SalesID')
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 10
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quActJual: TBCDField
      FieldName = 'Jual'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
      Size = 5
    end
    object quActPPNOut: TBCDField
      FieldName = 'PPNOut'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 31
      Size = 5
    end
    object quActModal: TBCDField
      FieldName = 'Modal'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 29
    end
    object quActPPNIn: TBCDField
      FieldName = 'PPNIn'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quActMargin: TBCDField
      FieldName = 'Margin'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
      Size = 5
    end
    object quActPPNMargin: TBCDField
      FieldName = 'PPNMargin'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/MM/yyyyy'
      EditMask = 'dd/MM/yyyyy'
    end
    object quActJumlah: TIntegerField
      FieldName = 'Jumlah'
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
    object quActKomisi: TBCDField
      FieldName = 'Komisi'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quActGP: TBCDField
      FieldName = 'GP'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActHKomisi: TBCDField
      FieldName = 'HKomisi'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quActJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object quActTotalInv: TBCDField
      FieldName = 'TotalInv'
      ReadOnly = True
      Precision = 18
    end
    object quActBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      Precision = 32
    end
    object quActLama: TIntegerField
      FieldName = 'Lama'
      ReadOnly = True
    end
    object quActPOID: TStringField
      FieldName = 'POID'
      ReadOnly = True
      Size = 50
    end
    object quActSOID: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOID'
      Size = 100
      Calculated = True
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
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
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 592
    Top = 84
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 680
    Top = 28
  end
end
