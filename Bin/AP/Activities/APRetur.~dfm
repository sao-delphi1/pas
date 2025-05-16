inherited fmAPRetur: TfmAPRetur
  Left = 101
  Top = 118
  Caption = 'Retur Pembelian'
  ClientHeight = 534
  ClientWidth = 1004
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 485
    inherited pa3: TdxContainer
      Height = 306
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 522
    Width = 1004
  end
  inherited pa2: TdxContainer
    Height = 485
  end
  inherited pcMain: TdxPageControl
    Width = 811
    Height = 485
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 815
        Height = 472
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Retur'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
        end
        object dbgListPaymentDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          DisableEditor = True
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListSuppId: TdxDBGridMaskColumn
          Caption = 'Kode Supplier'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dbgListLSuppname: TdxDBGridLookupColumn
          Caption = 'Nama Supplier'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuSupplier'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label5: TLabel
        Left = 8
        Top = 75
        Width = 117
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 83
        Width = 117
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 48
        Top = 416
        Width = 32
        Height = 13
        Caption = 'Label7'
      end
      object Label8: TLabel
        Left = 48
        Top = 408
        Width = 50
        Height = 13
        Caption = 'Total Nota'
        Color = clBlack
        ParentColor = False
      end
      object Label9: TLabel
        Left = 8
        Top = 408
        Width = 32
        Height = 13
        Caption = 'Label9'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 124
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          811
          124)
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nota Retur :'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 36
          Width = 117
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
          Left = 8
          Top = 56
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 272
          Top = 56
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LuSupplier'
          DataSource = dsMain
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 75
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Keterangan :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 5
          Top = 101
          Width = 176
          Height = 20
          Caption = 'Detil Retur Pembelian'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object LRet: TLabel
          Left = 320
          Top = 14
          Width = 269
          Height = 31
          Alignment = taCenter
          AutoSize = False
          Caption = 'R'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 657
          Top = 97
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActSave
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
          Left = 733
          Top = 97
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActCancel
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
          TabStop = False
        end
        object GroupBox2: TGroupBox
          Left = 584
          Top = 4
          Width = 221
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label10: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText2: TDBText
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
          object DBText3: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 128
          Top = 12
          Width = 188
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'ReturnID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 128
          Top = 32
          Width = 89
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 128
          Top = 52
          Width = 141
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SuppID'
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
          Left = 128
          Top = 72
          Width = 417
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 124
        Width = 811
        Height = 194
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ReturnID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 100
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
          TabStop = False
          Width = 252
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgPurchaseID: TdxDBGridButtonColumn
          Caption = 'Nota Pembelian'
          Width = 141
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPurchaseIDButtonClick
        end
        object dbgLocation: TdxDBGridButtonColumn
          Caption = 'Lokasi'
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgLocationButtonClick
        end
        object dbgValuta: TdxDBGridColumn
          Caption = 'Valuta'
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CValuta'
        end
        object dbgPrice: TdxDBGridButtonColumn
          Caption = 'Harga Beli'
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPriceButtonClick
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgColumn8: TdxDBGridBlobColumn
          Caption = 'Keterangan'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
          BlobKind = bkMemo
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 318
        Width = 811
        Height = 144
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 2
        object Label12: TLabel
          Left = 5
          Top = 3
          Width = 228
          Height = 20
          Caption = 'Detil Serial Number per Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object dxButton3: TdxButton
          Left = 668
          Top = 108
          Width = 139
          Height = 34
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = dxButton3Click
          Caption = 'CETAK SURAT JALAN'
          TabOrder = 0
        end
        object bbSN: TdxButton
          Left = 668
          Top = 73
          Width = 139
          Height = 34
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = bbSNClick
          Caption = ' SERIAL NUMBER'
          TabOrder = 1
          TabStop = False
        end
        object dbgSNRetur: TdxDBGrid
          Left = 3
          Top = 24
          Width = 366
          Height = 118
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 2
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgSNReturReturnID: TdxDBGridMaskColumn
            Visible = False
            Width = 540
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ReturnID'
          end
          object dbgSNReturSNID: TdxDBGridButtonColumn
            Width = 327
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgSNReturSNIDButtonClick
          end
          object dbgSNReturPurchaseID: TdxDBGridMaskColumn
            Visible = False
            Width = 540
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PurchaseID'
          end
          object dbgSNReturItemID: TdxDBGridMaskColumn
            Visible = False
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgSNReturUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 199
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgSNReturUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1004
    inherited sbLast: TSpeedButton
      Left = 976
    end
    inherited sbNext: TSpeedButton
      Left = 953
    end
    inherited sbPrev: TSpeedButton
      Left = 930
    end
    inherited sbFirst: TSpeedButton
      Left = 907
    end
    inherited sbPeriod: TSpeedButton
      Left = 879
    end
    inherited BvlPeriod: TBevel
      Left = 633
    end
    inherited laPeriod: TLabel
      Left = 637
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrReturnHd')
    Left = 224
    object quMainReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 400
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFlagRetur: TStringField
      FieldName = 'FlagRetur'
      FixedChar = True
      Size = 10
    end
    object quMainLuSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSupplier'
      LookupDataSet = quSup
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 80
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'ReturnID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.* '
      'from APTrReturnDt A  '
      ' WHERE ReturnID=:ReturnID')
    object quDetilReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
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
    object quDetilWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quDetilLWareHouse: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouse'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quDetilCValuta: TStringField
      FieldKind = fkCalculated
      FieldName = 'CValuta'
      Size = 50
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quDetilCRate: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CRate'
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SuppID, SuppName,'#39'Supplier Pembelian'#39' as Status, Address ' +
        'FROM APMsSupplier '
      'UNION ALL'
      
        'SELECT CustID, CustName,'#39'Supplier Konsinyasi'#39' as Status, Address' +
        ' FROM ARMsCustomer'
      'ORDER BY SuppID,SuppName')
    Left = 496
    Top = 144
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 312
    Top = 268
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 272
    Top = 36
  end
  object quPurchase: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <
      item
        Name = 'SuppID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select purchaseID from APTrPurchaseHd where SuppID = :SuppID')
    Left = 312
    Top = 296
  end
  object quPurchaseDt: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from APTrPurchaseDt')
    Left = 576
    Top = 240
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse ')
    Left = 468
    Top = 308
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
        Name = 'ReturnID'
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
      end
      item
        Name = 'PurchaseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM APTrReturnSN'
      'WHERE ReturnID=:ReturnID AND ItemID=:ItemID'
      'AND PurchaseID=:PurchaseID')
    Left = 424
    Top = 436
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
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
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 448
    Top = 436
  end
end
