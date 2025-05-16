inherited fmAPPenggantiRetur: TfmAPPenggantiRetur
  Left = 133
  Top = 114
  Caption = 'Pengganti Retur Pembelian'
  ClientHeight = 554
  ClientWidth = 1003
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 505
    inherited pa3: TdxContainer
      Height = 326
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 542
    Width = 1003
  end
  inherited pa2: TdxContainer
    Height = 505
  end
  inherited pcMain: TdxPageControl
    Width = 810
    Height = 505
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 813
        Height = 489
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Pengganti Retur Pembelian'
          DisableEditor = True
          Width = 170
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnRepID'
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
        object dbgListValuta: TdxDBGridColumn
          Caption = 'Valuta'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
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
        Width = 810
        Height = 141
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          810
          141)
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nota  Peg Retur :'
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
          Left = 256
          Top = 55
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LuSupplier'
          DataSource = dsMain
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 95
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
          Left = 4
          Top = 120
          Width = 262
          Height = 20
          Caption = 'Detil Pengganti Retur Pembelian'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 6
          Top = 75
          Width = 116
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valuta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText
          Left = 256
          Top = 75
          Width = 519
          Height = 17
          DataField = 'LCurrName'
          DataSource = dsMain
        end
        object DBText6: TDBText
          Left = 285
          Top = 10
          Width = 283
          Height = 34
          Alignment = taCenter
          DataField = 'LCurrName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 660
          Top = 114
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
          Left = 736
          Top = 114
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
          Left = 580
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
          Top = 11
          Width = 152
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'ReturnRepID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 128
          Top = 31
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
          Top = 51
          Width = 125
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
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 128
          Top = 71
          Width = 125
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 128
          Top = 91
          Width = 485
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 141
        Width = 810
        Height = 197
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ReturnRepID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgStatus: TdxDBGridImageColumn
          Alignment = taLeftJustify
          MinWidth = 16
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
          Descriptions.Strings = (
            'Ganti'
            'Upgrade')
          ImageIndexes.Strings = (
            '0'
            '1')
          ShowDescription = True
          Values.Strings = (
            'G'
            'U')
        end
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 106
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
          Width = 272
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgReturnID: TdxDBGridButtonColumn
          Caption = 'Nota Retur'
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgReturnIDButtonClick
        end
        object dbgLocation: TdxDBGridButtonColumn
          Caption = 'Lokasi'
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgLocationButtonClick
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgHarga: TdxDBGridColumn
          Caption = 'Harga (+/-)'
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgItemRepID: TdxDBGridButtonColumn
          Caption = 'Kode Item Pengganti'
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemRepID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemRepIDButtonClick
        end
        object dbgItemRepName: TdxDBGridColumn
          Caption = 'Nama Item Pengganti'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemRepName'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 338
        Width = 810
        Height = 144
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 2
        object Label15: TLabel
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
        object GroupBox3: TGroupBox
          Left = 374
          Top = 2
          Width = 429
          Height = 46
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBText7: TDBText
            Left = 230
            Top = 17
            Width = 190
            Height = 17
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = dsTotal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 16
            Width = 223
            Height = 19
            Caption = 'TOTAL PENGGANTI RETUR :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object dbgSNReturRep: TdxDBGrid
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
          TabOrder = 1
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgSNReturRepReturnRepID: TdxDBGridMaskColumn
            Visible = False
            Width = 535
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ReturnRepID'
          end
          object dbgSNReturRepSNID: TdxDBGridColumn
            Caption = 'Serial Number'
            Width = 324
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
          end
          object dbgSNReturRepReturnID: TdxDBGridMaskColumn
            Visible = False
            Width = 535
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ReturnID'
          end
          object dbgSNReturRepItemID: TdxDBGridMaskColumn
            Visible = False
            Width = 218
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgSNReturRepUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 197
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgSNReturRepUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 218
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object bbSN: TdxButton
          Left = 668
          Top = 105
          Width = 139
          Height = 34
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = bbSNClick
          Caption = ' SERIAL NUMBER'
          TabOrder = 2
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1003
    inherited sbLast: TSpeedButton
      Left = 975
    end
    inherited sbNext: TSpeedButton
      Left = 952
    end
    inherited sbPrev: TSpeedButton
      Left = 929
    end
    inherited sbFirst: TSpeedButton
      Left = 906
    end
    inherited sbPeriod: TSpeedButton
      Left = 878
    end
    inherited BvlPeriod: TBevel
      Left = 632
    end
    inherited laPeriod: TLabel
      Left = 636
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrReturnRepHd')
    object quMainReturnRepID: TStringField
      FieldName = 'ReturnRepID'
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
    object quMainLuSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSupplier'
      LookupDataSet = quSup
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Lookup = True
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      Size = 10
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 50
      Lookup = True
    end
    object quMainTTLReturRep: TBCDField
      FieldName = 'TTLReturRep'
      Precision = 18
      Size = 0
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'ReturnRepID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from APTrReturnRepDt'
      ' WHERE ReturnRepID=:ReturnRepID')
    object quDetilReturnRepID: TStringField
      FieldName = 'ReturnRepID'
      Size = 50
    end
    object quDetilReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
    end
    object quDetilWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quDetilItemRepID: TStringField
      FieldName = 'ItemRepID'
    end
    object quDetilStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
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
    object quDetilLuItemRepName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuItemRepName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemRepID'
      Lookup = True
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quDetilLastPrice: TBCDField
      FieldName = 'LastPrice'
      Precision = 18
      Size = 0
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
      'select * from APMsSupplier order by suppname')
    Left = 840
    Top = 112
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 304
    Top = 336
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 388
    Top = 4
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse order by Warehousename')
    Left = 332
    Top = 336
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 360
    Top = 336
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'ReturnRepId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Isnull(SUM(PRICE),0) as Total FROM APTrReturnRepDt WHERE '
      'Status='#39'U'#39' AND ReturnRepId=:ReturnRepId')
    Left = 548
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 576
    Top = 456
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforeEdit = quSNBeforeEdit
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'ReturnRepID'
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
        Name = 'ReturnID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM'
      'APTrReturnRepSN'
      'WHERE ReturnRepID=:ReturnRepID AND ItemID=:ItemID'
      'AND ReturnID=:ReturnID')
    Left = 328
    Top = 476
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNReturnRepID: TStringField
      FieldName = 'ReturnRepID'
      Size = 50
    end
    object quSNReturnID: TStringField
      FieldName = 'ReturnID'
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
    object quSNFgJual: TStringField
      FieldName = 'FgJual'
      Size = 1
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 357
    Top = 476
  end
end
