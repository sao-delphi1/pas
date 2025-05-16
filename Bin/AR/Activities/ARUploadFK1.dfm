inherited fmARUploadFK: TfmARUploadFK
  Left = 101
  Top = 90
  Caption = 'Pajak Keluaran'
  ClientHeight = 452
  ClientWidth = 968
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 968
    inherited laTitle: TLabel
      Width = 194
      Caption = 'CSV Pajak Keluaran'
    end
  end
  inherited paCenter: TPanel
    Width = 968
    Height = 370
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 74
      Width = 966
      Height = 295
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'NOTA'
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
      TabOrder = 0
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
      ShowGrid = False
      ShowHeader = False
      ShowRowFooter = True
      object dgrReportColumn1: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'KODE'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'NOTA'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'A'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'B'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'C'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'D'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'E'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'F'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'G'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'H'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'I'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'J'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'K'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'L'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'M'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'N'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'O'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'P'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'Q'
      end
      object dgrReportColumn20: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'R'
      end
      object dgrReportColumn21: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'S'
      end
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 6
      Width = 262
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 1
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Tanggal :'
      end
      object bbRefresh: TBitBtn
        Left = 169
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
      object dtpDari: TDateTimePicker
        Left = 75
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
        TabOrder = 1
      end
    end
    object bbExp: TBitBtn
      Left = 839
      Top = 47
      Width = 41
      Height = 25
      Hint = 'Tampilkan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Left = 879
      Top = 47
      Width = 41
      Height = 25
      Hint = 'Sembunyikan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
  end
  inherited paBottom: TPanel
    Top = 411
    Width = 968
    inherited bbPreview: TBitBtn
      Left = 6
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 80
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 154
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 736
      Top = 4
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
      Left = 850
      Top = 4
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
      'select * from ('
      
        'select 1 AS KODE,'#39#39' AS NOTA,'#39'FK'#39' AS A,'#39'KD_JENIS_TRANSAKSI'#39' AS B,' +
        #39'FG_PENGGANTI'#39' AS C,'#39'NOMOR_FAKTUR'#39' AS D,'#39'MASA_PAJAK'#39' AS E,'#39'TAHUN' +
        '_PAJAK'#39' AS F,'
      
        #39'TANGGAL_FAKTUR'#39' AS G,'#39'NPWP'#39' AS H,'#39'NAMA'#39' AS I,'#39'ALAMAT_LENGKAP'#39' A' +
        'S J,'#39'JUMLAH_DPP'#39' AS K,'#39'JUMLAH_PPN'#39' AS L,'#39'JUMLAH_PPNBM'#39' AS M,'#39'ID_' +
        'KETERANGAN_TAMBAHAN'#39' AS N,'
      
        #39'FG_UANG_MUKA'#39' AS O,'#39'UANG_MUKA_DPP'#39' AS P,'#39'UANG_MUKA_PPN'#39' AS Q,'#39'U' +
        'ANG_MUKA_PPNBM'#39' AS R,'#39'REFERENSI'#39' AS S UNION ALL'
      
        'SELECT 2,'#39#39','#39'LT'#39','#39'NPWP'#39','#39'NAMA'#39','#39'JALAN'#39','#39'BLOK'#39','#39'NOMOR'#39','#39'RT'#39','#39'RW'#39',' +
        #39'KECAMATAN'#39','#39'KELURAHAN'#39','#39'KABUPATEN'#39','#39'PROPINSI'#39','#39'KODE_POS'#39','#39'NOMOR' +
        '_TELEPON'#39','#39#39','#39#39','#39#39','#39#39','#39#39' UNION ALL'
      
        'SELECT 3,'#39#39','#39'OF'#39','#39'KODE_OBJEK'#39','#39'NAMA'#39','#39'HARGA_SATUAN'#39','#39'JUMLAH_BARA' +
        'NG'#39','#39'HARGA_TOTAL'#39','#39'DISKON'#39','#39'DPP'#39','#39'PPN'#39','#39'TARIF_PPNBM'#39','#39'PPNBM'#39','#39#39',' +
        #39#39','#39#39','#39#39','#39#39','#39#39','#39#39','#39#39' UNION ALL'
      
        'SELECT 4,SALEID,'#39'FK'#39','#39'01'#39','#39'0'#39',REPLACE(REPLACE(TAXID,'#39'-'#39','#39#39'),'#39'.'#39',' +
        #39#39'),cast(MONTH(TRANSDATE) as varchar),cast(YEAR(TRANSDATE) as va' +
        'rchar),CONVERT(VARCHAR(10),TRANSDATE,103),isnull(REPLACE(REPLACE' +
        '(B.EMAIL,'#39'-'#39','#39#39'),'#39'.'#39','#39#39'),'#39'000000000000000'#39'),'
      
        'B.CustName,B.Address,CAST(A.StPj as varchar),cast(A.PPN as varch' +
        'ar),'#39'0'#39','#39#39','#39'0'#39','#39'0'#39','#39'0'#39','#39'0'#39','#39#39' FROM ARTrPenjualanHd a INNER JOIN ' +
        'ARMsCustomer B ON a.CustID=B.CUSTID '
      'union all'
      
        'SELECT 4,A.SALEID,'#39'OF'#39','#39#39',B.ItemName,cast(A.Price as varchar),ca' +
        'st(A.Qty as varchar),cast(A.PRICE*A.QTY as varchar),'#39'0'#39',cast(A.P' +
        'rice*A.Qty as varchar),'
      
        'cast(A.Price*A.Qty*0.1 as varchar),'#39'0'#39','#39'0'#39','#39#39','#39#39','#39#39','#39#39','#39#39','#39#39','#39#39',' +
        #39#39' FROM ARTRPENJUALANDT A INNER JOIN INMSITEM B ON A.ITEMID=B.IT' +
        'EMID '
      'INNER JOIN ARTrPenjualanHd C on A.SaleID=C.SaleID) as K'
      'Order by K.KODE,K.Nota,K.A')
    object quActKODE: TIntegerField
      FieldName = 'KODE'
      ReadOnly = True
    end
    object quActNOTA: TStringField
      FieldName = 'NOTA'
      ReadOnly = True
      Size = 30
    end
    object quActA: TStringField
      FieldName = 'A'
      ReadOnly = True
      Size = 2
    end
    object quActB: TStringField
      FieldName = 'B'
      ReadOnly = True
      Size = 18
    end
    object quActC: TStringField
      FieldName = 'C'
      ReadOnly = True
      Size = 150
    end
    object quActD: TStringField
      FieldName = 'D'
      ReadOnly = True
      Size = 8000
    end
    object quActE: TStringField
      FieldName = 'E'
      ReadOnly = True
      Size = 30
    end
    object quActF: TStringField
      FieldName = 'F'
      ReadOnly = True
      Size = 30
    end
    object quActG: TStringField
      FieldName = 'G'
      ReadOnly = True
      Size = 14
    end
    object quActH: TStringField
      FieldName = 'H'
      ReadOnly = True
      Size = 8000
    end
    object quActI: TStringField
      FieldName = 'I'
      ReadOnly = True
      Size = 200
    end
    object quActJ: TStringField
      FieldName = 'J'
      ReadOnly = True
      Size = 300
    end
    object quActK: TStringField
      FieldName = 'K'
      ReadOnly = True
      Size = 30
    end
    object quActL: TStringField
      FieldName = 'L'
      ReadOnly = True
      Size = 30
    end
    object quActM: TStringField
      FieldName = 'M'
      ReadOnly = True
      Size = 12
    end
    object quActN: TStringField
      FieldName = 'N'
      ReadOnly = True
      Size = 22
    end
    object quActO: TStringField
      FieldName = 'O'
      ReadOnly = True
      Size = 12
    end
    object quActP: TStringField
      FieldName = 'P'
      ReadOnly = True
      Size = 13
    end
    object quActQ: TStringField
      FieldName = 'Q'
      ReadOnly = True
      Size = 13
    end
    object quActR: TStringField
      FieldName = 'R'
      ReadOnly = True
      Size = 15
    end
    object quActS: TStringField
      FieldName = 'S'
      ReadOnly = True
      Size = 9
    end
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.csv'
    Filter = 'Microsoft Excel Comma Separated Values File|*.csv'
    Left = 681
    Top = 56
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 717
    Top = 56
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 528
    Top = 76
  end
end
