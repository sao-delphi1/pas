inherited fmARTrAService: TfmARTrAService
  Left = 20
  Top = 126
  Caption = 'Ambil Service'
  ClientHeight = 548
  ClientWidth = 981
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 981
    inherited sbLast: TSpeedButton
      Left = 953
    end
    inherited sbNext: TSpeedButton
      Left = 930
    end
    inherited sbPrev: TSpeedButton
      Left = 907
    end
    inherited sbFirst: TSpeedButton
      Left = 884
    end
    inherited sbPeriod: TSpeedButton
      Left = 856
    end
    inherited BvlPeriod: TBevel
      Left = 610
    end
    inherited laPeriod: TLabel
      Left = 614
    end
  end
  inherited paLeft: TdxContainer
    Height = 499
    inherited pa3: TdxContainer
      Height = 320
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 536
    Width = 981
  end
  inherited pa2: TdxContainer
    Height = 499
  end
  inherited pcMain: TdxPageControl
    Width = 788
    Height = 499
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 788
        Height = 476
        inherited ts0201: TdxTabSheet
          object Label1: TLabel [0]
            Left = 13
            Top = 17
            Width = 104
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Nota Ambil Service :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel [1]
            Left = 13
            Top = 36
            Width = 104
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
          object Label3: TLabel [2]
            Left = 13
            Top = 56
            Width = 104
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pelanggan :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel [3]
            Left = 13
            Top = 77
            Width = 104
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
          object DBText1: TDBText [4]
            Left = 290
            Top = 56
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object Label13: TLabel [5]
            Left = 2
            Top = 106
            Width = 101
            Height = 20
            Caption = 'Detil Barang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          inherited bbSave: TdxButton
            Left = 626
            Top = 95
          end
          inherited bbCancel: TdxButton
            Left = 702
            Top = 95
          end
          object dxDBEdit1: TdxDBEdit
            Left = 125
            Top = 13
            Width = 157
            TabOrder = 2
            OnKeyPress = dxDBEdit1KeyPress
            CharCase = ecUpperCase
            DataField = 'AServiceID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 125
            Top = 33
            Width = 89
            TabOrder = 3
            OnKeyPress = dxDBDateEdit1KeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBButtonEdit1: TdxDBButtonEdit
            Left = 125
            Top = 53
            Width = 160
            TabOrder = 4
            OnKeyPress = dxDBButtonEdit1KeyPress
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
            Left = 125
            Top = 73
            Width = 444
            TabOrder = 5
            OnKeyPress = dxDBEdit2KeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object GroupBox2: TGroupBox
            Left = 554
            Top = 4
            Width = 221
            Height = 50
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
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
          object dxDBGrid1: TdxDBGrid
            Left = 2
            Top = 126
            Width = 788
            Height = 351
            Bands = <
              item
              end>
            DefaultLayout = True
            KeyField = 'KonInvPelDetID'
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
              Width = 157
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
              Width = 198
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dxDBGrid1Service: TdxDBGridButtonColumn
              Caption = 'Nota Service'
              Width = 162
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ServiceId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1ServiceButtonClick
            end
            object dxDBGrid1Column6: TdxDBGridButtonColumn
              Caption = 'Tgl Service'
              Width = 78
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LtglService'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1Column6ButtonClick
            end
            object dxDBGrid1Gudang: TdxDBGridColumn
              Caption = 'Gudang'
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseId'
            end
            object dxDBGrid1Qty: TdxDBGridColumn
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
          end
        end
      end
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'Select * FROM ARTrAServiceHd')
    object quMainAServiceID: TStringField
      FieldName = 'AServiceID'
      Size = 50
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
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
  end
  inherited quDetil: TADOQuery
    BeforeDelete = quDetilBeforeDelete
    Parameters = <
      item
        Name = 'AServiceId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrAServicedt'
      'WHERE AServiceId=:AServiceId')
    object quDetilAServiceID: TStringField
      FieldName = 'AServiceID'
      Size = 50
    end
    object quDetilItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object quDetilServiceId: TStringField
      FieldName = 'ServiceId'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
      Size = 0
    end
    object quDetilLitemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemId'
      Size = 50
      Lookup = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 150
    end
    object quDetilWareHouseId: TStringField
      FieldName = 'WareHouseId'
      Size = 50
    end
    object quDetilLtglService: TDateTimeField
      FieldKind = fkLookup
      FieldName = 'LtglService'
      LookupDataSet = quAservice
      LookupKeyFields = 'ServiceID'
      LookupResultField = 'TransDate'
      KeyFields = 'ServiceId'
      Lookup = True
    end
    object quDetilLwareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LwareHouseName'
      LookupDataSet = quLokasi
      LookupKeyFields = 'WareHouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseId'
      Size = 50
      Lookup = True
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
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
    Left = 564
    Top = 76
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by ItemID')
    Left = 204
    Top = 240
  end
  object quAservice: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARTrServiceHd')
    Left = 592
    Top = 76
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 620
    Top = 76
  end
end
