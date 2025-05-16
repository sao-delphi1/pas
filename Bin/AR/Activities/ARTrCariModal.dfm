inherited fmARTrCariModal: TfmARTrCariModal
  Left = 306
  Top = 122
  Caption = 'Data Penjualan Yang belum ada modalnya'
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel [1]
    Left = 4
    Top = 44
    Width = 98
    Height = 16
    Caption = 'Detil Penjualan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 4
    Top = 390
    Width = 89
    Height = 16
    Caption = 'Modal Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBText4: TDBText [3]
    Left = 628
    Top = 46
    Width = 144
    Height = 14
    DataField = 'Transdate'
    DataSource = dsMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgPenjualan: TdxDBGrid [5]
    Left = 1
    Top = 66
    Width = 788
    Height = 320
    Bands = <
      item
      end>
    DefaultLayout = True
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 1
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgPenjualanSaleID: TdxDBGridColumn
      Caption = 'No Invoice'
      Color = clSilver
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SaleID'
    end
    object dbgPenjualanItemID: TdxDBGridColumn
      Caption = 'Kode Barang'
      Color = clSilver
      ReadOnly = True
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgPenjualanItemName: TdxDBGridColumn
      Caption = 'Nama Barang'
      Color = clSilver
      ReadOnly = True
      Width = 328
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemName'
    end
    object dbgPenjualanWarehouse: TdxDBGridColumn
      Caption = 'Gudang'
      Color = clSilver
      ReadOnly = True
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WarehouseID'
    end
    object dbgPenjualanQty: TdxDBGridColumn
      Color = clSilver
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qty'
    end
    object dbgPenjualanPrice: TdxDBGridColumn
      Color = clSilver
      ReadOnly = True
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Price'
    end
  end
  object dbgCost: TdxDBGrid [6]
    Left = 1
    Top = 410
    Width = 382
    Height = 120
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 2
    DataSource = dsCostItem
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgCostPurchaseID: TdxDBGridButtonColumn
      Caption = 'Nota Pembelian'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PurchaseID'
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 112
      OnButtonClick = dbgCostPurchaseIDButtonClick
    end
    object dbgCostSaleID: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SaleID'
    end
    object dbgCostItemID: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgCostPrice: TdxDBGridCurrencyColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Price'
      Nullable = False
    end
    object dbgCostWarehouseID: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WarehouseID'
    end
    object dbgCostUpdDate: TdxDBGridDateColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgCostQty: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qty'
    end
    object dbgCostUpdUser: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'SELECT B.Transdate,A.SaleID,A.ItemID,C.ItemName,A.WarehouseID,A.' +
        'Qty,A.Price '
      'FROM ARTrPenjualanDT A'
      'INNER JOIN ARTrPenjualanHD B ON A.SaleID=B.SaleID'
      'INNER JOIN INMsItem C ON A.ItemID=C.ItemID'
      'WHERE A.ItemID NOT IN (SELECT ItemID FROM ARTrPenjualanCost X '
      'WHERE X.SaleID=A.SaleID AND X.ItemID=A.ItemID)'
      'AND A.SaleID NOT IN (SELECT SaleID FROM ARTrPenjualanSN X '
      'WHERE X.SaleID=A.SaleID AND X.ItemID=A.ItemID)')
    Left = 212
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quMainItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quMainQty: TIntegerField
      FieldName = 'Qty'
    end
    object quMainPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
  inherited dsMain: TDataSource
    Left = 240
  end
  inherited ActionList: TActionList
    inherited ActFirst: TAction
      ShortCut = 117
    end
    inherited ActPrev: TAction
      ShortCut = 118
    end
    inherited ActNext: TAction
      ShortCut = 119
    end
    inherited ActLast: TAction
      ShortCut = 120
    end
  end
  object quCostItem: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quCostItemBeforeInsert
    BeforePost = quCostItemBeforePost
    AfterPost = quCostItemAfterPost
    OnNewRecord = quCostItemNewRecord
    DataSource = dsMain
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'WareHouseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'Select * from ARTrPenjualanCost'
      'WHERE SaleID=:SaleID AND ItemID=:ItemID'
      'AND WareHouseID=:WareHouseID AND Price=:Price')
    Left = 240
    Top = 460
    object quCostItemPurchaseID: TStringField
      FieldName = 'PurchaseID'
      OnChange = quCostItemPurchaseIDChange
      Size = 30
    end
    object quCostItemSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quCostItemItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quCostItemPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quCostItemWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quCostItemQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quCostItemUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quCostItemUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object dsCostItem: TDataSource
    DataSet = quCostItem
    OnStateChange = dsCostItemStateChange
    Left = 268
    Top = 460
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 320
    Top = 4
  end
end
