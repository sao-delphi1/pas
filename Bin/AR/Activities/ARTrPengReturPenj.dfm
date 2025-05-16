inherited fmARTrPengReturPenj: TfmARTrPengReturPenj
  Left = 9
  Top = 28
  Caption = 'Pengganti Retur Penjualan'
  ClientHeight = 624
  ClientWidth = 997
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 575
    inherited pa3: TdxContainer
      Height = 396
    end
    inherited paOperation: TdxContainer
      Top = 0
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 171
    end
  end
  inherited paBottom: TdxContainer
    Top = 612
    Width = 997
  end
  inherited pa2: TdxContainer
    Height = 575
  end
  inherited pcMain: TdxPageControl
    Width = 804
    Height = 575
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 807
        Height = 559
        Filter.Criteria = {00000000}
        object dbgListReturnRepID: TdxDBGridMaskColumn
          Caption = 'Nota Pengganti Retur Penjualan'
          Width = 180
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnRepID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 161
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLCustName: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          Width = 222
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListCurrId: TdxDBGridMaskColumn
          Caption = 'Valuta'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrId'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 804
        Height = 552
        inherited ts0201: TdxTabSheet
          object Label2: TLabel [0]
            Left = 67
            Top = 30
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tanggal  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [1]
            Left = 59
            Top = 50
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pelanggan :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel [2]
            Left = 55
            Top = 90
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Keterangan :'
          end
          object DBText3: TDBText [3]
            Left = 248
            Top = 51
            Width = 541
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object Label4: TLabel [4]
            Left = 4
            Top = 119
            Width = 258
            Height = 20
            Caption = 'Detil Pengganti Retur Penjualan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label7: TLabel [5]
            Left = 5
            Top = 350
            Width = 114
            Height = 20
            Caption = 'Serial Number'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label12: TLabel [6]
            Left = -2
            Top = 70
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
          object DBText4: TDBText [7]
            Left = 248
            Top = 70
            Width = 553
            Height = 17
            DataField = 'LCurrName'
            DataSource = dsMain
          end
          object DBText6: TDBText [8]
            Left = 289
            Top = 5
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
          object DBText15: TDBText [9]
            Left = 568
            Top = 408
            Width = 233
            Height = 24
            Alignment = taCenter
            DataField = 'FgOK'
            DataSource = dsMain
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel [10]
            Left = 6
            Top = 10
            Width = 109
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota Pengganti Retur :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object rbCetak: TRadioGroup [11]
            Left = 540
            Top = 269
            Width = 229
            Height = 45
            Caption = 'Cetak'
            Columns = 2
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'Invoice'
              'Surat Jalan')
            ParentCtl3D = False
            TabOrder = 11
          end
          inherited bbSave: TdxButton
            Left = 646
            Top = 109
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 722
            Top = 109
            Caption = '&Cancel '
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
            object DBText1: TDBText
              Left = 54
              Top = 30
              Width = 132
              Height = 17
              DataField = 'UpdDate'
              DataSource = dsMain
            end
          end
          object GroupBox1: TGroupBox
            Left = 568
            Top = 340
            Width = 233
            Height = 40
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            object DBText7: TDBText
              Left = 80
              Top = 13
              Width = 131
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
              Left = 14
              Top = 12
              Width = 62
              Height = 19
              Caption = 'TOTAL :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object txtPgtReturPenjID: TdxDBEdit
            Left = 120
            Top = 6
            Width = 169
            TabOrder = 4
            OnKeyPress = txtPgtReturPenjIDKeyPress
            DataField = 'ReturnRepID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 120
            Top = 26
            Width = 89
            TabOrder = 5
            OnKeyPress = txtPgtReturPenjIDKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 120
            Top = 46
            Width = 125
            TabOrder = 6
            OnKeyPress = txtPgtReturPenjIDKeyPress
            DataField = 'CustID'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = txtCustIDButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 120
            Top = 66
            Width = 125
            TabOrder = 7
            OnKeyPress = txtPgtReturPenjIDKeyPress
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
            Left = 120
            Top = 86
            Width = 485
            TabOrder = 8
            OnKeyPress = txtPgtReturPenjIDKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxdbgrid1: TdxDBGrid
            Left = 3
            Top = 141
            Width = 802
            Height = 197
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'ReturnRepID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 9
            OnEnter = dxdbgrid1Enter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfUltraFlat
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxdbgrid1Status: TdxDBGridImageColumn
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
            object dxdbgrid1ItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxdbgrid1ItemIDButtonClick
            end
            object dxdbgrid1ItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 260
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dxdbgrid1ReturnID: TdxDBGridButtonColumn
              Caption = 'Nota Retur'
              Width = 119
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxdbgrid1ReturnIDButtonClick
            end
            object dxdbgrid1WareHouseID: TdxDBGridButtonColumn
              Caption = 'Lokasi'
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxdbgrid1WareHouseIDButtonClick
            end
            object dxdbgrid1Qty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dxdbgrid1Harga: TdxDBGridColumn
              Caption = 'Harga (+/-)'
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
            end
            object dxdbgrid1ItemRepID: TdxDBGridButtonColumn
              Caption = 'Kode Item Pengganti'
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemRepID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxdbgrid1ItemRepIDButtonClick
            end
            object dxdbgrid1ItemRepName: TdxDBGridColumn
              Caption = 'Nama Item Pengganti'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 143
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemRepName'
            end
          end
          object dxDBGrid2: TdxDBGrid
            Left = 3
            Top = 379
            Width = 534
            Height = 177
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 10
            DataSource = dsSN
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid2ReturnRepID: TdxDBGridMaskColumn
              Visible = False
              Width = 2256
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnRepID'
            end
            object dxDBGrid2ReturnID: TdxDBGridMaskColumn
              Visible = False
              Width = 2256
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnID'
            end
            object dxDBGrid2SNID: TdxDBGridButtonColumn
              Caption = 'SERIAL NUMBER'
              Width = 475
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
              Width = 920
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
            end
            object dxDBGrid2WareHouseID: TdxDBGridMaskColumn
              Visible = False
              Width = 920
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseID'
            end
            object dxDBGrid2UpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 831
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid2UpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 920
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object dxButton1: TdxButton
            Left = 686
            Top = 497
            Width = 115
            Height = 53
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton1Click
            Caption = '&Cetak'
            TabOrder = 12
          end
          object TmbBrg: TdxButton
            Tag = 1111
            Left = 143
            Top = 347
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
            TabOrder = 13
          end
          object KrgBrg: TdxButton
            Tag = 2222
            Left = 235
            Top = 347
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
            TabOrder = 14
          end
          object bbSimpanDetil: TdxButton
            Tag = 4444
            Left = 328
            Top = 347
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
            TabOrder = 15
          end
          object BtlBrg: TdxButton
            Tag = 4444
            Left = 421
            Top = 347
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
            TabOrder = 16
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 997
    inherited sbLast: TSpeedButton
      Left = 969
    end
    inherited sbNext: TSpeedButton
      Left = 946
    end
    inherited sbPrev: TSpeedButton
      Left = 923
    end
    inherited sbFirst: TSpeedButton
      Left = 900
    end
    inherited sbPeriod: TSpeedButton
      Left = 872
    end
    inherited BvlPeriod: TBevel
      Left = 626
    end
    inherited laPeriod: TLabel
      Left = 630
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,'
      
        'CASE WHEN FlagOK='#39'T'#39' THEN '#39'Belum Cetak'#39' ELSE '#39'Sudah Cetak'#39' END A' +
        'S FgOK'
      'FROM ARTrPenggantiReturPenjHd')
    object quMainReturnRepID: TStringField
      FieldName = 'ReturnRepID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 50
      Lookup = True
    end
    object quMainTTLReturRep: TBCDField
      FieldName = 'TTLReturRep'
      Precision = 18
      Size = 0
    end
    object quMainCurrId: TStringField
      FieldName = 'CurrId'
      Size = 10
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrId'
      Size = 50
      Lookup = True
    end
    object quMainFlagOK: TStringField
      FieldName = 'FlagOK'
      Size = 5
    end
    object quMainFgOK: TStringField
      FieldName = 'FgOK'
      ReadOnly = True
      Size = 11
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 115
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
      'SELECT * FROM ARTrPenggantiReturPenjDt'
      'WHERE ReturnRepID=:ReturnRepID')
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
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetilLastPrice: TBCDField
      FieldName = 'LastPrice'
      Precision = 18
      Size = 0
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilItemRepID: TStringField
      FieldName = 'ItemRepID'
      Size = 50
    end
    object quDetilStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object quDetilLItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilLwarehouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LwarehouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quDetilLItemRepName: TStringField
      FieldKind = fkLookup
      FieldName = 'LItemRepName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemRepID'
      Size = 50
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 616
    Top = 96
    object quCustomerCustID: TStringField
      FieldName = 'CustID'
    end
    object quCustomerCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quCustomerAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quCustomerCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quCustomerPhone: TStringField
      FieldName = 'Phone'
    end
    object quCustomerFax: TStringField
      FieldName = 'Fax'
    end
    object quCustomerEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quCustomerNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quCustomerCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quCustomerUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quCustomerUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsItem')
    Left = 408
    Top = 268
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse ')
    Left = 432
    Top = 268
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
        Name = 'ReturnId'
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
        Name = 'WareHouseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPenggantiReturPenjDtSN '
      'WHERE ReturnRepID=:ReturnRepID'
      'AND ReturnId=:ReturnId AND ItemID=:ItemID '
      'AND WareHouseId=:WareHouseID')
    Left = 500
    Top = 452
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
    object quSNWareHouseID: TStringField
      FieldName = 'WareHouseID'
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
    Left = 528
    Top = 452
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsItem')
    Left = 448
    Top = 8
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <>
    Left = 564
    Top = 8
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
      
        'SELECT Isnull(SUM(PRICE*Qty),0) as Total FROM ARTrPenggantiRetur' +
        'PenjDt WHERE '
      'Status='#39'U'#39' AND ReturnRepId=:ReturnRepId')
    Left = 628
    Top = 448
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 652
    Top = 448
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
    Left = 456
    Top = 268
  end
end
