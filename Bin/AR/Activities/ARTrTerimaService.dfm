inherited fmARTrService: TfmARTrService
  Left = 23
  Top = 21
  Caption = 'Terima Barang Service'
  ClientHeight = 656
  ClientWidth = 957
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 607
    inherited pa3: TdxContainer
      Height = 428
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 644
    Width = 957
  end
  inherited pa2: TdxContainer
    Height = 607
  end
  inherited pcMain: TdxPageControl
    Width = 764
    Height = 607
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 762
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Kode Service'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Service'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Gudang'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Gudang'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LWareHouseName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Caption = 'Keterangan'
          DisableEditor = True
          Width = 1204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 12
        Top = 12
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota Service :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 12
        Top = 32
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 12
        Top = 52
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dari :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 268
        Top = 53
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LCustName'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 12
        Top = 72
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ke :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 268
        Top = 72
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LWareHouseName'
        DataSource = dsMain
      end
      object Label5: TLabel
        Left = 12
        Top = 93
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 5
        Top = 184
        Width = 161
        Height = 20
        Caption = 'Detil Terima Service'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 5
        Top = 347
        Width = 230
        Height = 20
        Caption = 'Detil Penggunaan SparePart'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 799
        Top = 72
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 913
        Top = 72
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LCustAdd'
        DataSource = dsMain
      end
      object DBText6: TDBText
        Left = 176
        Top = 154
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'Flag'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 394
        Top = 72
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Atas Nama :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 394
        Top = 93
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 24
        Top = 154
        Width = 145
        Height = 24
        Caption = 'Status Service :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 232
        Top = 186
        Width = 345
        Height = 16
        Caption = 'Kalau sudah disimpan Tanggal tidak bisa diubah'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 12
        Top = 114
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Type Barang :'
        Transparent = True
      end
      object Label16: TLabel
        Left = 12
        Top = 135
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Serial Number :'
        Transparent = True
      end
      object DBText7: TDBText
        Left = 454
        Top = 154
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'Cetak'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 320
        Top = 154
        Width = 127
        Height = 24
        Caption = 'Status Cetak :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 682
        Top = 175
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
        TabStop = False
      end
      object GroupBox2: TGroupBox
        Left = 535
        Top = 3
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label10: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText3: TDBText
          Left = 53
          Top = 10
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label11: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText4: TDBText
          Left = 54
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object dxButton1: TdxButton
        Left = 645
        Top = 505
        Width = 115
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'BUKTI SPAREPART'
        TabOrder = 3
        TabStop = False
      end
      object dxButton2: TdxButton
        Left = 645
        Top = 539
        Width = 115
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'BUKTI SERVICE'
        TabOrder = 4
        TabStop = False
      end
      object dbg: TdxDBGrid
        Left = 2
        Top = 208
        Width = 758
        Height = 130
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonsinyasiID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 5
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 287
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemname'
        end
        object dbgQty: TdxDBGridColumn
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgProduct: TdxDBGridColumn
          Caption = 'Produk'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LProductName'
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Group'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LGroupName'
        end
        object dbgColumn6: TdxDBGridBlobColumn
          Caption = 'Masalah'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
          BlobKind = bkMemo
        end
      end
      object dbgPS: TdxDBGrid
        Left = 2
        Top = 371
        Width = 639
        Height = 205
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 6
        OnEnter = dbgPSEnter
        DataSource = dsDetilPS
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgPSItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPSItemIDButtonClick
        end
        object dbgPSItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 210
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgPSQty: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgPSHarga: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Harga'
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          DisplayFormat = ',0.00;'
          Nullable = False
        end
        object dbgPSTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
        end
        object dbgPSNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 3004
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgPSWarehouseID: TdxDBGridButtonColumn
          Caption = 'Gudang'
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WarehouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPSWarehouseIDButtonClick
        end
      end
      object dxButton3: TdxButton
        Left = 645
        Top = 471
        Width = 115
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'STATUS SERVICE'
        TabOrder = 7
        TabStop = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 606
        Top = 175
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = '&Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 2
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 124
        Top = 8
        Width = 151
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'ServiceID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 268
        Top = 344
        Width = 91
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 9
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 360
        Top = 344
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 10
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 453
        Top = 344
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 11
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 546
        Top = 344
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 12
        TabStop = False
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 124
        Top = 28
        Width = 89
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 124
        Top = 48
        Width = 141
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 124
        Top = 68
        Width = 141
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit3: TdxDBEdit
        Left = 124
        Top = 89
        Width = 320
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 124
        Top = 110
        Width = 320
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Barang'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 124
        Top = 131
        Width = 320
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SeriNumber'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 504
        Top = 68
        Width = 157
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Nama'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 504
        Top = 89
        Width = 252
        TabOrder = 20
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        WantTabs = True
        Height = 48
      end
      object dxButton4: TdxButton
        Left = 645
        Top = 437
        Width = 115
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'CEK HARGA && STOK'
        TabOrder = 21
        TabStop = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 957
    inherited sbLast: TSpeedButton
      Left = 929
    end
    inherited sbNext: TSpeedButton
      Left = 906
    end
    inherited sbPrev: TSpeedButton
      Left = 883
    end
    inherited sbFirst: TSpeedButton
      Left = 860
    end
    inherited sbPeriod: TSpeedButton
      Left = 832
    end
    inherited BvlPeriod: TBevel
      Left = 586
    end
    inherited laPeriod: TLabel
      Left = 590
    end
  end
  inherited SCEdit: TdxEditStyleController
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Top = 4
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,Case When FlagService ='#39'B'#39'  Then '#39'Belum Selesai'#39' '
      
        '                          When Flagservice = '#39'S'#39'  Then '#39'Sudah Se' +
        'lesai'#39' end as Flag,'
      'CASE WHEN FgCetak='#39'B'#39' Then '#39'Belum Cetak'#39
      '          WHEN FgCetak='#39'S'#39' Then'#39'Sudah Cetak'#39' END as Cetak'
      'FROM ARTrServiceHd')
    Left = 224
    object quMainServiceID: TStringField
      FieldName = 'ServiceID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLcustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LcustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 50
      Lookup = True
    end
    object quMainLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quMainLCustAdd: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustAdd'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object quMainFlagService: TStringField
      FieldName = 'FlagService'
      Size = 5
    end
    object quMainFlag: TStringField
      FieldName = 'Flag'
      ReadOnly = True
      Size = 5
    end
    object quMainNama: TStringField
      FieldName = 'Nama'
      Size = 100
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 200
    end
    object quMainBarang: TStringField
      FieldName = 'Barang'
      Size = 100
    end
    object quMainSeriNumber: TStringField
      FieldName = 'SeriNumber'
      Size = 100
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainCetak: TStringField
      FieldName = 'Cetak'
      ReadOnly = True
      Size = 11
    end
    object quMainJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
    end
    object quMainJamSelesai: TDateTimeField
      FieldName = 'JamSelesai'
    end
  end
  inherited ActionList: TActionList
    Top = 4
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'ServiceID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'SR/MAX/07/08/0001'
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrServiceDt'
      'WHERE ServiceID=:ServiceID')
    Left = 328
    object quDetilServiceID: TStringField
      FieldName = 'ServiceID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLItemname: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemname'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilLProduk: TStringField
      FieldKind = fkLookup
      FieldName = 'LProduk'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ProductID'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object quDetilLGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroup'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'GroupID'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quDetilLGroupName: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroupName'
      LookupDataSet = quGroup
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupDesc'
      KeyFields = 'LGroup'
      Size = 50
      Lookup = True
    end
    object quDetilLProductName: TStringField
      FieldKind = fkLookup
      FieldName = 'LProductName'
      LookupDataSet = quProduct
      LookupKeyFields = 'ProductID'
      LookupResultField = 'ProductDesc'
      KeyFields = 'LProduk'
      Size = 50
      Lookup = True
    end
    object quDetilJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 668
    Top = 4
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.ItemID,A.ItemName,A.ProductID,A.GroupID, B.ProductDesc,' +
        'C.GroupDesc'
      'FROM INMsItem A'
      'INNER JOIN INMsProduct B ON A.ProductID = B.ProductID'
      'INNER JOIN INMsGroup C ON A.GroupID = C.GroupID')
    Left = 312
    Top = 296
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 640
    Top = 4
  end
  object quGroup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsGroup')
    Left = 496
    Top = 288
  end
  object quProduct: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsProduct')
    Left = 496
    Top = 260
  end
  object quDetilPS: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quDetilPSBeforeInsert
    BeforeEdit = quDetilPSBeforeEdit
    BeforePost = quDetilPSBeforePost
    AfterPost = quDetilPSAfterPost
    BeforeDelete = quDetilPSBeforeDelete
    OnCalcFields = quDetilPSCalcFields
    OnNewRecord = quDetilPSNewRecord
    DataSource = dsMain
    Parameters = <
      item
        Name = 'ServiceID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ARTrServiceDtPS'
      'WHERE ServiceID=:ServiceID')
    Left = 364
    Top = 484
    object quDetilPSServiceID: TStringField
      FieldName = 'ServiceID'
      Size = 50
    end
    object quDetilPSItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilPSItemIDChange
    end
    object quDetilPSQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilPSWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetilPSPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quDetilPSUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilPSUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilPSLitemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilPSLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WarehouseID'
      Size = 50
      Lookup = True
    end
    object quDetilPSCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      Calculated = True
    end
    object quDetilPSNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
  end
  object dsDetilPS: TDataSource
    DataSet = quDetilPS
    OnStateChange = dsDetilPSStateChange
    Left = 392
    Top = 484
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 580
    Top = 147
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 608
    Top = 147
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 636
    Top = 147
  end
end
