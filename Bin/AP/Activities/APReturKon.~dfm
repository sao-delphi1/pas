inherited fmAPReturKon: TfmAPReturKon
  Left = 192
  Top = 108
  Caption = 'Retur Konsinyasi Pembelian'
  ClientHeight = 519
  ClientWidth = 993
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 470
    inherited pa3: TdxContainer
      Height = 291
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 507
    Width = 993
  end
  inherited pa2: TdxContainer
    Height = 470
  end
  inherited pcMain: TdxPageControl
    Width = 800
    Height = 470
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 803
        Height = 454
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Retur Konsinyasi'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnKonID'
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
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLSuppname: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustomer'
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
        Width = 800
        Height = 124
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          800
          124)
        object Label1: TLabel
          Left = 96
          Top = 18
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nota :'
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
          Left = 80
          Top = 38
          Width = 45
          Height = 13
          Alignment = taRightJustify
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
          Left = 81
          Top = 58
          Width = 44
          Height = 13
          Alignment = taRightJustify
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
          Left = 260
          Top = 58
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LSuppName'
          DataSource = dsMain
          Transparent = True
        end
        object Label4: TLabel
          Left = 64
          Top = 78
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 4
          Top = 102
          Width = 178
          Height = 20
          Caption = 'Detil Retur Konsinyasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 641
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
          Left = 717
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
          Left = 496
          Top = 5
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
          Top = 14
          Width = 172
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'ReturnKonID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 128
          Top = 34
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
          Top = 54
          Width = 129
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
          Top = 74
          Width = 497
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
        Width = 800
        Height = 152
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ReturnKonID'
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
          TabStop = False
          Width = 290
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgKonsinyasiID: TdxDBGridButtonColumn
          Caption = 'Nota Konsinyasi'
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgKonsinyasiIDButtonClick
        end
        object dbgLocation: TdxDBGridButtonColumn
          Caption = 'Gudang'
          Width = 92
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
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgValuta: TdxDBGridColumn
          Caption = 'Valuta'
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CValuta'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Price'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CPrice'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 276
        Width = 800
        Height = 171
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 2
        object Label13: TLabel
          Left = 5
          Top = 9
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
        object bbCetak: TdxButton
          Left = 654
          Top = 132
          Width = 139
          Height = 34
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = bbCetakClick
          Caption = ' CETAK  SURAT JALAN'
          TabOrder = 0
          TabStop = False
        end
        object dbgSNReturKon: TdxDBGrid
          Left = 3
          Top = 30
          Width = 366
          Height = 109
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 1
          OnEnter = dbgSNReturKonEnter
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgSNReturKonReturnKonID: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ReturnKonID'
          end
          object dbgSNReturKonSNID: TdxDBGridButtonColumn
            Caption = 'Serial Number'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgSNReturKonSNIDButtonClick
          end
          object dbgSNReturKonKonsinyasiID: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KonsinyasiID'
          end
          object dbgSNReturKonItemID: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgSNReturKonPrice: TdxDBGridCurrencyColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
            Nullable = False
          end
          object dbgSNReturKonUpdDate: TdxDBGridDateColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgSNReturKonUpdUser: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object bbSN: TdxButton
          Left = 514
          Top = 132
          Width = 139
          Height = 34
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = bbSNClick
          Caption = 'CARI SERIAL NUMBER'
          TabOrder = 2
          TabStop = False
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 421
          Top = 6
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
          TabOrder = 3
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 513
          Top = 6
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
          TabOrder = 4
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 606
          Top = 6
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
          TabOrder = 5
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 699
          Top = 6
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
          TabOrder = 6
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 1111
          Left = 5
          Top = 141
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = '(+) SN'
          TabOrder = 7
          TabStop = False
        end
        object dxButton2: TdxButton
          Tag = 2222
          Left = 95
          Top = 141
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = '(-) SN'
          TabOrder = 8
          TabStop = False
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 185
          Top = 141
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton4Click
          Caption = 'Simpan'
          TabOrder = 9
          TabStop = False
        end
        object dxButton5: TdxButton
          Tag = 4444
          Left = 275
          Top = 141
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton5Click
          Caption = 'Batal'
          TabOrder = 10
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 993
    inherited sbLast: TSpeedButton
      Left = 965
    end
    inherited sbNext: TSpeedButton
      Left = 942
    end
    inherited sbPrev: TSpeedButton
      Left = 919
    end
    inherited sbFirst: TSpeedButton
      Left = 896
    end
    inherited sbPeriod: TSpeedButton
      Left = 868
    end
    inherited BvlPeriod: TBevel
      Left = 622
    end
    inherited laPeriod: TLabel
      Left = 626
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrReturnKonHd')
    Left = 224
    object quMainReturnKonID: TStringField
      FieldName = 'ReturnKonID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
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
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainLSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 100
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'ReturnKonID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.* '
      'from APTrReturnKonDt A  '
      ' WHERE ReturnKonID=:ReturnKonID'
      '')
    object quDetilReturnKonID: TStringField
      FieldName = 'ReturnKonID'
      Size = 50
    end
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
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
    object quDetilLwareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LwareHouseName'
      LookupDataSet = quLocation
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quDetilCValuta: TStringField
      FieldKind = fkCalculated
      FieldName = 'CValuta'
      Calculated = True
    end
    object quDetilCPrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CPrice'
      DisplayFormat = '#,0.00'
      Calculated = True
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
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 284
    Top = 296
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 272
    Top = 36
  end
  object quKonsinyasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <
      item
        Name = 'CustID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select konsinyasiID from APTrKonsinyasiHd where CustID = :CustID')
    Left = 312
    Top = 296
  end
  object quKonsinyasiDt: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from APTrKonsinyasiDt')
    Left = 368
    Top = 296
    object quKonsinyasiDtPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quKonsinyasiDtItemID: TStringField
      FieldName = 'ItemID'
    end
    object quKonsinyasiDtQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quKonsinyasiDtWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quKonsinyasiDtPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quKonsinyasiDtUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quKonsinyasiDtUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quLocation: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse order by Warehousename')
    Left = 340
    Top = 296
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 536
    Top = 68
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
        Name = 'ReturnKonID'
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
        Name = 'KonsinyasiID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM APTrReturnKonSN'
      'WHERE ReturnKonID=:ReturnKonID AND ItemID=:ItemID'
      'AND KonsinyasiID=:KonsinyasiID')
    Left = 424
    Top = 436
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNReturnKonID: TStringField
      FieldName = 'ReturnKonID'
      Size = 50
    end
    object quSNKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
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
