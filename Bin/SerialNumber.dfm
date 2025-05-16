inherited fmSerialNumber: TfmSerialNumber
  Left = 262
  Top = 116
  Caption = 'Data Serial Number'
  ClientHeight = 374
  ClientWidth = 716
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 49
    Top = 20
    Width = 45
    Height = 13
    Caption = 'Tanggal :'
  end
  object Label2: TLabel [1]
    Left = 53
    Top = 40
    Width = 41
    Height = 13
    Caption = 'Invoice :'
  end
  object Label3: TLabel [2]
    Left = 50
    Top = 60
    Width = 44
    Height = 13
    Caption = 'Supplier :'
  end
  object Label5: TLabel [3]
    Left = 55
    Top = 81
    Width = 39
    Height = 13
    Caption = 'Jumlah :'
  end
  object Label4: TLabel [4]
    Left = 38
    Top = 102
    Width = 56
    Height = 13
    Caption = 'Nota GRN :'
  end
  object dxEdit1: TdxEdit [5]
    Left = 100
    Top = 16
    Width = 121
    Color = cl3DLight
    TabOrder = 0
    Text = 'dxEdit1'
    ReadOnly = True
    StyleController = SCEdit
    StoredValues = 64
  end
  object dxEdit2: TdxEdit [6]
    Left = 100
    Top = 36
    Width = 250
    Color = cl3DLight
    TabOrder = 1
    Text = 'dxEdit1'
    ReadOnly = True
    StyleController = SCEdit
    StoredValues = 64
  end
  object dxEdit3: TdxEdit [7]
    Left = 100
    Top = 56
    Width = 250
    Color = cl3DLight
    TabOrder = 2
    Text = 'dxEdit1'
    ReadOnly = True
    StyleController = SCEdit
    StoredValues = 64
  end
  object dxEdit5: TdxEdit [8]
    Left = 100
    Top = 77
    Width = 121
    Color = cl3DLight
    TabOrder = 3
    Text = 'dxEdit1'
    ReadOnly = True
    StyleController = SCEdit
    StoredValues = 64
  end
  object dxButton1: TdxButton [9]
    Left = 358
    Top = 83
    Width = 116
    Height = 32
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'PROSES'
    TabOrder = 4
    TabStop = False
  end
  object dbgDetail: TdxDBGrid [10]
    Left = 0
    Top = 134
    Width = 359
    Height = 240
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 5
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgDetailItemID: TdxDBGridColumn
      Caption = 'Kode Barang'
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgDetailItemName: TdxDBGridColumn
      Caption = 'Nama Barang'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemName'
    end
    object dbgDetailQty: TdxDBGridColumn
      Caption = 'Jumlah'
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qty'
    end
  end
  object dxButtonEdit1: TdxButtonEdit [11]
    Left = 100
    Top = 98
    Width = 121
    TabOrder = 6
    StyleController = SCEdit
    OnChange = dxButtonEdit1Change
    Buttons = <
      item
        Default = True
      end>
    OnButtonClick = dxButtonEdit1ButtonClick
    ExistButtons = True
  end
  object dbgData: TdxDBGrid [12]
    Left = 359
    Top = 134
    Width = 359
    Height = 240
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 7
    DataSource = dsDetil
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgDataItemID: TdxDBGridColumn
      Caption = 'Kode Barang'
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgDataItemName: TdxDBGridColumn
      Caption = 'Nama Barang'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemName'
    end
    object dbgDataQty: TdxDBGridColumn
      Caption = 'Jumlah'
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qty'
    end
  end
  object dxButton2: TdxButton [13]
    Left = 478
    Top = 83
    Width = 116
    Height = 32
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = 'BATAL'
    TabOrder = 8
    TabStop = False
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,B.ItemName,A.Qty,A.WarehouseID,A.Price'
      'FROM APTrPurchaseDt A'
      'INNER JOIN INMsItem B ON A.ItemID=B.ItemID'
      'ORDER BY A.ItemID')
    Left = 220
    Top = 4
    object quMainItemID: TStringField
      FieldName = 'ItemID'
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quMainQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    OnStateChange = dsMainStateChange
    Left = 248
    Top = 4
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,B.ItemName,A.Qty'
      'FROM APTrKonsinyasiDt A'
      'INNER JOIN INMsItem B ON A.ItemID=B.ItemID'
      'ORDER BY A.ItemID')
    Left = 380
    Top = 28
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    OnStateChange = dsDetilStateChange
    Left = 408
    Top = 28
  end
end
