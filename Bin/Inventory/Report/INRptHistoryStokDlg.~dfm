inherited fmINRptHistoryBarangDlg: TfmINRptHistoryBarangDlg
  Left = 162
  Top = 14
  Caption = ''
  ClientHeight = 541
  ClientWidth = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 333
    inherited laTitle: TLabel
      Width = 193
      Caption = 'Laporan Kartu Stok'
    end
  end
  inherited paCenter: TPanel
    Width = 333
    Height = 459
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 269
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
        Top = 20
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
        Top = 14
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 6
      Top = 71
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 62
      Top = 71
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgWare: TdxDBGrid
      Left = -2
      Top = 91
      Width = 334
      Height = 106
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListWareHouseID: TdxDBGridColumn
        Caption = 'Kode Gudang'
        Sorted = csDown
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dbgListwareHouseName: TdxDBGridColumn
        Caption = 'Nama Gudang'
        Width = 196
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object Panel1: TPanel
      Left = 4
      Top = 205
      Width = 278
      Height = 19
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 4
      object rbselect2: TRadioButton
        Left = 64
        Top = 1
        Width = 61
        Height = 17
        Caption = '&Select'
        TabOrder = 0
        OnClick = rbselect2Click
      end
      object rbAll2: TRadioButton
        Left = 4
        Top = 1
        Width = 53
        Height = 17
        Caption = '&All'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbselect2Click
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 229
      Width = 331
      Height = 229
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 5
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemId: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemId'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object bbCancel: TdxButton
      Left = 217
      Top = 205
      Width = 110
      Height = 21
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 6
    end
  end
  inherited paBottom: TPanel
    Top = 500
    Width = 333
    inherited bbPreview: TBitBtn
      Left = 107
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 181
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 255
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM INMsItem'
      'Order by GroupID,ProductID,ItemID')
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 260
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
end
