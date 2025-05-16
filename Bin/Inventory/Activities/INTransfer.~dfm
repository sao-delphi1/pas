inherited fmINTransfer: TfmINTransfer
  Left = 241
  Top = 143
  Caption = 'Transfer Barang'
  ClientHeight = 471
  ClientWidth = 887
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 422
    inherited pa3: TdxContainer
      Height = 243
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 459
    Width = 887
  end
  inherited pa2: TdxContainer
    Height = 422
  end
  inherited pcMain: TdxPageControl
    Width = 694
    Height = 422
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Kode Transfer'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Transfer'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Sumber'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseSrc'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Sumber'
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LwareHouseSrc'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Tujuan'
          DisableEditor = True
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseDest'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Tujuan'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LWareHouseDest'
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
        Top = 16
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Transfer :'
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
        Top = 36
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal Transfer :'
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
        Top = 56
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gudang Sumber :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 292
        Top = 55
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LWareHouseScr'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 12
        Top = 77
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gudang Tujuan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 292
        Top = 74
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LWareHouseDest'
        DataSource = dsMain
      end
      object Label5: TLabel
        Left = 12
        Top = 96
        Width = 105
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label6: TLabel
        Left = 480
        Top = 183
        Width = 114
        Height = 20
        Alignment = taRightJustify
        Caption = 'Serial Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 180
        Width = 470
        Height = 219
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 138
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
          Width = 194
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
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuProduct'
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Group'
          Color = clWhite
          ReadOnly = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuGroup'
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 124
        Top = 8
        Width = 159
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'TransferID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 124
        Top = 29
        Width = 89
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransferDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 124
        Top = 50
        Width = 161
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseSrc'
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
        Top = 71
        Width = 161
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseDest'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBMemo1: TdxDBMemo
        Left = 124
        Top = 93
        Width = 449
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 57
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 499
        Top = 152
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'SIMPAN (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 6
        TabStop = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 596
        Top = 152
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '(BATAL(F4)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 7
        TabStop = False
      end
      object GroupBox2: TGroupBox
        Left = 476
        Top = 4
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        object Label21: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText8: TDBText
          Left = 53
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label22: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText9: TDBText
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
        Left = 5
        Top = 152
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
        Left = 97
        Top = 152
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
        Left = 190
        Top = 152
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
        Left = 283
        Top = 152
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
      object bbCetak: TdxButton
        Tag = 4444
        Left = 379
        Top = 152
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
        OnClick = bbCetakClick
        Caption = 'Cetak'
        TabOrder = 13
        TabStop = False
      end
      object dbgSN: TdxDBGrid
        Left = 473
        Top = 205
        Width = 221
        Height = 193
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 14
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgSNTransferID: TdxDBGridMaskColumn
          Visible = False
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferID'
        end
        object dbgSNItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgSNWareHouseId: TdxDBGridMaskColumn
          Visible = False
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseId'
        end
        object dbgSNSNID: TdxDBGridButtonColumn
          Caption = 'Serial Number'
          Width = 183
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgSNSNIDButtonClick
        end
        object dbgSNUpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 36
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgSNUpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 36
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 887
    inherited sbLast: TSpeedButton
      Left = 859
    end
    inherited sbNext: TSpeedButton
      Left = 836
    end
    inherited sbPrev: TSpeedButton
      Left = 813
    end
    inherited sbFirst: TSpeedButton
      Left = 790
    end
    inherited sbPeriod: TSpeedButton
      Left = 762
    end
    inherited BvlPeriod: TBevel
      Left = 516
    end
    inherited laPeriod: TLabel
      Left = 520
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM INTrTransferItemHd')
    Left = 224
    object quMainTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quMainTransferDate: TDateTimeField
      FieldName = 'TransferDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainWareHouseSrc: TStringField
      FieldName = 'WareHouseSrc'
    end
    object quMainWareHouseDest: TStringField
      FieldName = 'WareHouseDest'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLWareHouseScr: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseScr'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseSrc'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object quMainLWareHouseDest: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseDest'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseDest'
      LookupCache = True
      Size = 50
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'TransferID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INTrTransferItemDt'
      'WHERE TransferID=:TransferID')
    object quDetilTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
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
    object quDetilLuItemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Lookup = True
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
    Left = 600
    Top = 92
  end
  object dsGudang: TDataSource
    DataSet = quGudang
    Left = 628
    Top = 92
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.ItemID,A.ItemName,A.ProductID,A.GroupID, B.ProductDesc,' +
        'C.GroupDesc'
      'FROM INMsItem A'
      'INNER JOIN INMsProduct B ON A.ProductID = B.ProductID'
      'INNER JOIN INMsGroup C ON A.GroupID = C.GroupID')
    Left = 312
    Top = 296
    object quItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object quItemItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quItemProductID: TStringField
      FieldName = 'ProductID'
    end
    object quItemGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quItemProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
    object quItemGroupDesc: TStringField
      FieldName = 'GroupDesc'
      Size = 200
    end
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'TransferID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
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
      'SELECT * FROM INTrTransferItemSN'
      'WHERE TransferID=:TransferID AND ItemID=:ItemID')
    Left = 742
    Top = 366
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
    object quSNTransferID: TStringField
      FieldName = 'TransferID'
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
    object quSNWareHouseSrc: TStringField
      FieldName = 'WareHouseSrc'
      Size = 50
    end
    object quSNWareHouseDest: TStringField
      FieldName = 'WareHouseDest'
      Size = 50
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 770
    Top = 366
  end
end
