inherited fmARTrKonTransBrg: TfmARTrKonTransBrg
  Left = 111
  Top = 131
  Caption = 'Transfer Barang Konsinyasi'
  ClientHeight = 498
  ClientWidth = 916
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 449
    inherited pa3: TdxContainer
      Height = 270
      object bbCariSN: TdxButton
        Left = -119
        Top = 72
        Width = 105
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = bbCariSNClick
        Caption = '&CARI SN'
        TabOrder = 0
      end
      object dxButton1: TdxButton
        Left = -119
        Top = 103
        Width = 105
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'Cetak &Surat Jalan'
        TabOrder = 1
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 486
    Width = 916
  end
  inherited pa2: TdxContainer
    Height = 449
  end
  inherited pcMain: TdxPageControl
    Width = 723
    Height = 449
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 761
        Height = 513
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Konsinyasi'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonTransBrgID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Nota'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Sumber'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Sumber'
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuLocation'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustomer'
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
      object DBText1: TDBText
        Left = 235
        Top = 76
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LuCustomer'
        DataSource = dsMain
      end
      object DBText2: TDBText
        Left = 235
        Top = 57
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LuLocation'
        DataSource = dsMain
      end
      object Label1: TLabel
        Left = 3
        Top = 16
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota Konsinyasi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 3
        Top = 36
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
        Left = 3
        Top = 56
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
      object Label4: TLabel
        Left = 3
        Top = 77
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
      object Label5: TLabel
        Left = 3
        Top = 96
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 4
        Top = 117
        Width = 206
        Height = 16
        Caption = 'Detil Konsinyasi Transfer Barang'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 566
        Top = 117
        Width = 149
        Height = 16
        Caption = 'Serial Number per Item'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 532
        Top = 86
        Width = 83
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
        TabOrder = 0
        TabStop = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 616
        Top = 86
        Width = 83
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal (F4)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 115
        Top = 12
        Width = 157
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonTransBrgID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 115
        Top = 32
        Width = 89
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 115
        Top = 52
        Width = 117
        TabOrder = 4
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
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 115
        Top = 72
        Width = 117
        TabOrder = 5
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
      object dxDBEdit2: TdxDBEdit
        Left = 115
        Top = 92
        Width = 406
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dbg: TdxDBGrid
        Left = 1
        Top = 135
        Width = 430
        Height = 264
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonTransBrgID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 7
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 85
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
          Width = 245
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgProduct: TdxDBGridColumn
          Caption = 'Produk'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuProduct'
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Group'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuGroup'
        end
      end
      object dxDBGrid2: TdxDBGrid
        Left = 431
        Top = 135
        Width = 291
        Height = 264
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 8
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGrid2ReturnID: TdxDBGridColumn
          Visible = False
          Width = 176
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
        end
        object dxDBGrid2SaleId: TdxDBGridMaskColumn
          Visible = False
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleId'
        end
        object dxDBGrid2SNID: TdxDBGridButtonColumn
          Caption = 'Serial Number'
          Width = 258
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid2SNIDButtonClick
        end
        object dxDBGrid2ItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dxDBGrid2Price: TdxDBGridCurrencyColumn
          Visible = False
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dxDBGrid2WareHouseId: TdxDBGridMaskColumn
          Visible = False
          Width = 258
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseId'
        end
        object dxDBGrid2UpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 402
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGrid2UpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 445
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
      object GroupBox2: TGroupBox
        Left = 491
        Top = 4
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
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
          Top = 9
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
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 4
        Top = 399
        Width = 91
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 10
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 96
        Top = 399
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 11
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 189
        Top = 399
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 12
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 282
        Top = 399
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 13
        TabStop = False
      end
      object dxButton6: TdxButton
        Tag = 1111
        Left = 433
        Top = 399
        Width = 70
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = '(+) SN'
        TabOrder = 14
        TabStop = False
      end
      object dxButton7: TdxButton
        Tag = 2222
        Left = 504
        Top = 399
        Width = 71
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton7Click
        Caption = '(-) SN'
        TabOrder = 15
        TabStop = False
      end
      object dxButton8: TdxButton
        Tag = 4444
        Left = 576
        Top = 399
        Width = 71
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = 'Simpan'
        TabOrder = 16
        TabStop = False
      end
      object dxButton9: TdxButton
        Tag = 4444
        Left = 647
        Top = 399
        Width = 71
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton9Click
        Caption = 'Batal'
        TabOrder = 17
        TabStop = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 916
    inherited sbLast: TSpeedButton
      Left = 888
    end
    inherited sbNext: TSpeedButton
      Left = 865
    end
    inherited sbPrev: TSpeedButton
      Left = 842
    end
    inherited sbFirst: TSpeedButton
      Left = 819
    end
    inherited sbPeriod: TSpeedButton
      Left = 791
    end
    inherited BvlPeriod: TBevel
      Left = 545
    end
    inherited laPeriod: TLabel
      Left = 549
    end
  end
  inherited quMain: TADOQuery
    BeforeInsert = nil
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM ARTrKonTransBrgHd')
    object quMainKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
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
    object quMainLuCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCustomer'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 100
      Lookup = True
    end
    object quMainLuLocation: TStringField
      FieldKind = fkLookup
      FieldName = 'LuLocation'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quMainBeforeEdit
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonTransBrgID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ARTrKonTransBrgDt'
      'WHERE KonTransBrgID=:KonTransBrgID')
    object quDetilKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
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
    object quDetilLuProduct: TStringField
      FieldKind = fkLookup
      FieldName = 'LuProduct'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ProductDesc'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object quDetilLuItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilLuGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LuGroup'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'GroupDesc'
      KeyFields = 'ItemID'
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quGudang: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 716
    Top = 68
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
    Left = 744
    Top = 68
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 716
    Top = 92
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonTransBrgID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonTransBrgDtSN '
      'WHERE KonTransBrgID=:KonTransBrgID AND ItemID=:ItemID')
    Left = 740
    Top = 292
    object quSNKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quSNModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 768
    Top = 292
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 592
    Top = 100
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 620
    Top = 100
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 648
    Top = 100
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 676
    Top = 100
    object StringField1: TStringField
      FieldName = 'SuppID'
    end
    object StringField2: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'City'
      Size = 150
    end
    object StringField5: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'Phone'
    end
    object StringField7: TStringField
      FieldName = 'Fax'
    end
    object StringField8: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UpdDate'
    end
    object StringField10: TStringField
      FieldName = 'UpdUser'
    end
  end
end
