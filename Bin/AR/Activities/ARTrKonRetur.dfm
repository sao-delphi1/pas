inherited fmARTrKonRetur: TfmARTrKonRetur
  Left = 23
  Top = 52
  Caption = 'Retur Konsinyasi Penjualan'
  ClientHeight = 599
  ClientWidth = 971
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 550
    inherited pa3: TdxContainer
      Height = 371
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 587
    Width = 971
  end
  inherited pa2: TdxContainer
    Height = 550
  end
  inherited pcMain: TdxPageControl
    Width = 778
    Height = 550
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Filter.Criteria = {00000000}
        object dbgListKonReturID: TdxDBGridMaskColumn
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonReturID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListNote: TdxDBGridMemoColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 778
        Height = 527
        inherited ts0201: TdxTabSheet
          object Label2: TLabel [0]
            Left = 41
            Top = 40
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tanggal Retur :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel [1]
            Left = 86
            Top = 20
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [2]
            Left = 59
            Top = 59
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
          object Label5: TLabel [3]
            Left = 55
            Top = 79
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Keterangan :'
          end
          object Label4: TLabel [4]
            Left = 4
            Top = 104
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
          object DBText3: TDBText [5]
            Left = 257
            Top = 60
            Width = 430
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object Label6: TLabel [6]
            Left = 3
            Top = 342
            Width = 186
            Height = 20
            Caption = 'Serial Number per Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          inherited bbSave: TdxButton
            Left = 612
            Top = 100
            Caption = '&Save'
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 688
            Top = 100
            Caption = '&Cancel '
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
            object DBText1: TDBText
              Left = 54
              Top = 30
              Width = 132
              Height = 17
              DataField = 'UpdDate'
              DataSource = dsMain
            end
          end
          object txtKonReturID: TdxDBEdit
            Left = 120
            Top = 16
            Width = 177
            TabOrder = 3
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'KonReturID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 120
            Top = 36
            Width = 89
            TabOrder = 4
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 120
            Top = 56
            Width = 133
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = txtKonReturIDKeyPress
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
          object dxDBEdit2: TdxDBEdit
            Left = 120
            Top = 76
            Width = 497
            TabOrder = 6
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBGrid1: TdxDBGrid
            Left = 2
            Top = 124
            Width = 778
            Height = 217
            Bands = <
              item
              end>
            DefaultLayout = True
            KeyField = 'PenjualanDetilID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 7
            OnEnter = dxDBGrid1Enter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfUltraFlat
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid1ItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1ItemIDButtonClick
            end
            object dxDBGrid1ItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Width = 259
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dxDBGrid1Konsinyasi: TdxDBGridButtonColumn
              Caption = 'Nota Konsinyasi'
              Width = 149
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KonTransBrgId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1KonsinyasiButtonClick
            end
            object dxDBGrid1Lokasi: TdxDBGridButtonColumn
              Caption = 'Gudang'
              Width = 89
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1LokasiButtonClick
            end
            object dxDBGrid1Qty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 128
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
          end
          object dxDBGrid2: TdxDBGrid
            Left = 2
            Top = 361
            Width = 303
            Height = 166
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
            object dxDBGrid2SNID: TdxDBGridButtonColumn
              Alignment = taLeftJustify
              Caption = 'SERIAL NUMBER'
              Width = 251
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SNID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid2SNIDButtonClick
            end
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 971
    inherited sbLast: TSpeedButton
      Left = 943
    end
    inherited sbNext: TSpeedButton
      Left = 920
    end
    inherited sbPrev: TSpeedButton
      Left = 897
    end
    inherited sbFirst: TSpeedButton
      Left = 874
    end
    inherited sbPeriod: TSpeedButton
      Left = 846
    end
    inherited BvlPeriod: TBevel
      Left = 600
    end
    inherited laPeriod: TLabel
      Left = 604
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturHd')
    object quMainKonReturID: TStringField
      FieldName = 'KonReturID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
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
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
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
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonReturID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturDt WHERE KonReturID=:KonReturID')
    object quDetilKonReturID: TStringField
      FieldName = 'KonReturID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
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
    object quDetilKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
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
      'SELECT * FROM INMsItem')
    Left = 448
    Top = 8
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 536
    Top = 68
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 284
    Top = 296
  end
  object quLocation: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse order by Warehousename')
    Left = 312
    Top = 296
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
        Name = 'KonReturId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
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
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturDtSN '
      
        'WHERE KonReturId=:KonReturId AND KonTransBrgID=:KonTransBrgID AN' +
        'D ItemID=:ItemID')
    Left = 540
    Top = 440
    object quSNKonReturID: TStringField
      FieldName = 'KonReturID'
      Size = 50
    end
    object quSNKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 564
    Top = 440
  end
end
