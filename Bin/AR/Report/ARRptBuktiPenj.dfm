inherited fmARRptBuktiPenj: TfmARRptBuktiPenj
  Left = 159
  Top = 189
  Caption = 'Rekap Dokumen Penjualan'
  ClientHeight = 606
  ClientWidth = 1280
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1280
    inherited laTitle: TLabel
      Width = 255
      Caption = 'Rekap Dokumen Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 1280
    Height = 524
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 77
      Width = 1278
      Height = 446
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
              SummaryField = 'Jual'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TModal'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TKomisi'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Margin'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ModalInvBeli'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'MarginAll'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alBottom
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dgrReportTgl: TdxDBGridColumn
        Caption = 'Tanggal'
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
      object dgrReportTanggal: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportSalesName: TdxDBGridColumn
        Caption = 'Sales'
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportPOID: TdxDBGridColumn
        Caption = 'No PO'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dgrReportCustName: TdxDBGridColumn
        Caption = 'Pelanggan'
        Sorted = csUp
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
        GroupIndex = 0
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Jatuh Tempo'
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JatuhTempo'
      end
      object dgrReportFgTax: TdxDBGridColumn
        Caption = 'PPN'
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgTax'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'Total '
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalInv'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TotalInv'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'TotalInv'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn23: TdxDBGridColumn
        Caption = 'Dokumen BAST'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusBAST'
      end
      object dgrReportColumn24: TdxDBGridColumn
        Caption = 'Dokumen SP'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusSP'
      end
      object dgrReportColumn25: TdxDBGridColumn
        Caption = 'Dokumen Bupot PPH'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusPPH'
      end
      object dgrReportColumn26: TdxDBGridColumn
        Caption = 'Dokumen Bupot PPN'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusPPN'
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
      TabOrder = 1
      OnClick = RgPeriodeClick
    end
    object GrbBulan: TGroupBox
      Left = 200
      Top = 6
      Width = 342
      Height = 57
      Caption = '[ Bulan ]'
      TabOrder = 2
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
    object GrbTanggal: TGroupBox
      Left = 195
      Top = 7
      Width = 397
      Height = 57
      Caption = '[ Tanggal ]'
      TabOrder = 3
      object Label2: TLabel
        Left = 24
        Top = 25
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
        Left = 55
        Top = 20
        Width = 85
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dtpSmp: TdxDateEdit
        Left = 191
        Top = 20
        Width = 85
        TabOrder = 2
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
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
    object cbxOuts: TCheckBox
      Left = 616
      Top = 28
      Width = 185
      Height = 17
      Caption = 'Tampilkan Yang Sudah Diterima'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  inherited paBottom: TPanel
    Top = 565
    Width = 1280
    inherited bbPreview: TBitBtn
      Left = 1131
      Height = 26
    end
    inherited bbPrint: TBitBtn
      Left = 1128
      Height = 26
    end
    inherited bbExit: TBitBtn
      Left = 1130
      Top = 7
      Height = 25
    end
    object bbExcel: TBitBtn
      Left = 1059
      Top = 5
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
      Top = 5
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
    SQL.Strings = (
      
        'SELECT ISNULL(A.POID,'#39#39') as POID,A.SaleID,A.SalesID,B.SalesName,' +
        'CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,C.CustName,A.FgTax,A' +
        '.Transdate,'
      
        #9#9' DATEADD(DAY,A.JatuhTempo,A.TransDate) as JatuhTempo,ISNULL(A.' +
        'TTLPj,0) as TotalInv, '
      
        '         case when A.FgBAST='#39'Y'#39' then '#39'Sudah Terima'#39' else '#39'Belum ' +
        'Terima'#39' end as StatusBAST,case when A.FgSP='#39'Y'#39' then '#39'Sudah Terim' +
        'a'#39' else '#39'Belum Terima'#39' end as StatusSP, '
      
        '         case when A.FgBPPH='#39'Y'#39' then '#39'Sudah Terima'#39' else '#39'Belum ' +
        'Terima'#39' end as StatusPPH,case when A.FgBPPN='#39'Y'#39' then '#39'Sudah Teri' +
        'ma'#39' else '#39'Belum Terima'#39' end as StatusPPN '
      ',A.FgBAST,A.FgSP,A.FgBPPH,A.FgBPPN       '
      'FROM ARTrPenjualanHd A  '
      '         INNER JOIN ARMsSales B ON A.SalesID=B.SalesID'
      'INNER JOIN ARMsCustomer C ON A.CustID=C.CustID')
    object quActPOID: TStringField
      FieldName = 'POID'
      ReadOnly = True
      Size = 50
    end
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActSalesID: TStringField
      FieldName = 'SalesID'
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
    object quActFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quActJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object quActTotalInv: TBCDField
      FieldName = 'TotalInv'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActStatusBAST: TStringField
      FieldName = 'StatusBAST'
      ReadOnly = True
      Size = 12
    end
    object quActStatusSP: TStringField
      FieldName = 'StatusSP'
      ReadOnly = True
      Size = 12
    end
    object quActStatusPPH: TStringField
      FieldName = 'StatusPPH'
      ReadOnly = True
      Size = 12
    end
    object quActStatusPPN: TStringField
      FieldName = 'StatusPPN'
      ReadOnly = True
      Size = 12
    end
    object quActFgBAST: TStringField
      FieldName = 'FgBAST'
      Size = 10
    end
    object quActFgSP: TStringField
      FieldName = 'FgSP'
      Size = 10
    end
    object quActFgBPPH: TStringField
      FieldName = 'FgBPPH'
      Size = 10
    end
    object quActFgBPPN: TStringField
      FieldName = 'FgBPPN'
      Size = 10
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
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
