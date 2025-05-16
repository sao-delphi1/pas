inherited fmINTrPurchaseIDR: TfmINTrPurchaseIDR
  Left = 209
  Top = 148
  Caption = 'fmAPPurchaseIDR'
  ClientHeight = 514
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 200
    Top = 130
    Width = 117
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Kode Trans :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 472
    inherited pa3: TdxContainer
      Height = 369
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 502
  end
  inherited pa2: TdxContainer
    Height = 472
  end
  inherited pcMain: TdxPageControl
    Height = 472
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Height = 503
        Bands = <
          item
            Fixed = bfLeft
          end
          item
          end>
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListTransID: TdxDBGridColumn
          Caption = 'Kode Trans'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransID'
        end
        object dbgListTransDate: TdxDBGridColumn
          Caption = 'Tgl Trans'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListWareHouseID: TdxDBGridColumn
          Caption = 'Kode Gudang'
          DisableEditor = True
          BandIndex = 1
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListColumn7: TdxDBGridColumn
          Caption = 'Nama Gudang'
          BandIndex = 1
          RowIndex = 0
          FieldName = 'LuWareHouseName'
        end
        object dbgListNote: TdxDBGridColumn
          DisableEditor = True
          BandIndex = 1
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdDate: TdxDBGridColumn
          Caption = 'Last Update'
          DisableEditor = True
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridColumn
          Caption = 'Updated By'
          DisableEditor = True
          BandIndex = 1
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 600
        Height = 177
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          600
          177)
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nota :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 31
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tgl Trans :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 50
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 272
          Top = 52
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LuWareHouseName'
          DataSource = dsMain
          Transparent = True
        end
        object DBText2: TDBText
          Left = 129
          Top = 141
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'UpdDate'
          DataSource = dsMain
        end
        object DBText3: TDBText
          Left = 289
          Top = 141
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label7: TLabel
          Left = 63
          Top = 70
          Width = 61
          Height = 13
          Caption = 'Keterangan :'
        end
        object Label9: TLabel
          Left = 10
          Top = 140
          Width = 113
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Updated By :'
          Transparent = True
        end
        object Label5: TLabel
          Left = 174
          Top = 140
          Width = 113
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Last User :'
          Transparent = True
        end
        object dxDBEdit1: TdxDBEdit
          Left = 128
          Top = 4
          Width = 140
          TabOrder = 0
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 128
          Top = 25
          Width = 89
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 128
          Top = 46
          Width = 141
          TabOrder = 2
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'WarehouseID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 360
          Top = 137
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
          TabOrder = 4
          TabStop = False
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 436
          Top = 137
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
          TabOrder = 5
          TabStop = False
        end
        object DBMemoNote: TDBMemo
          Left = 128
          Top = 67
          Width = 313
          Height = 57
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          DataField = 'Note'
          DataSource = dsMain
          TabOrder = 3
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 177
        Width = 600
        Height = 272
        Bands = <
          item
            Fixed = bfLeft
          end
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
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
          Color = 14467152
          ReadOnly = True
          TabStop = False
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgLocation: TdxDBGridButtonColumn
          Caption = 'Lokasi'
          Width = 68
          BandIndex = 0
          RowIndex = 0
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgQty: TdxDBGridColumn
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgHarga: TdxDBGridColumn
          Caption = 'Harga'
          Width = 81
          BandIndex = 0
          RowIndex = 0
        end
        object dbgTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = 14467152
          ReadOnly = True
          Width = 81
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      
        'SELECT A.PurchaseID,A.TransDate,A.SuppID,A.Note,A.CurrID, B.Supp' +
        'Name'
      'FROM APTrPurchaseHd A'
      'INNER JOIN APMsSupplier B ON A.SuppID = B.SuppID')
    object quMainLuWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WareHouseID'
      LookupResultField = 'WareHouseName'
      KeyFields = 'WareHouseID'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object quMainTransID: TStringField
      FieldName = 'TransID'
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      EditMask = '!99/99/00;1;_'
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainAcknowledgeBy: TStringField
      FieldName = 'AcknowledgeBy'
      Size = 150
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      EditMask = '!99/99/00;1;_'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  inherited dsMain: TDataSource
    Left = 244
  end
  inherited quDetil: TADOQuery
    BeforeDelete = quDetilBeforeDelete
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'TransID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INTrAdjustmentDt WHERE TransID=:TransID'
      'ORDER BY ItemID')
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quDetilTransID: TStringField
      FieldName = 'TransID'
    end
    object quDetilFgStatus: TStringField
      FieldName = 'FgStatus'
      FixedChar = True
      Size = 1
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/MM/yyyy'
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
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object quDetilAlasan: TStringField
      FieldName = 'Alasan'
      Size = 150
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT WareHouseID, WareHouseName FROM INMsWareHouse')
    Left = 516
    Top = 316
    object quWareHouseWareHouseID: TStringField
      FieldName = 'WareHouseID'
    end
    object quWareHouseWareHouseName: TStringField
      FieldName = 'WareHouseName'
      Size = 100
    end
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT ItemID, ItemName FROM INMsItem')
    Left = 312
    Top = 296
    object quItemItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quItemItemName: TStringField
      FieldName = 'ItemName'
      Size = 50
    end
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT SuppID,SuppName,ContactPerson FROM APMsSupplier')
    Left = 524
    Top = 84
    object quSupplierSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quSupplierSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quSupplierContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
  end
end
