inherited fmINRptStokDlg: TfmINRptStokDlg
  Left = 389
  Top = 3
  Caption = ''
  ClientHeight = 563
  ClientWidth = 435
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 435
    inherited laTitle: TLabel
      Width = 204
      Caption = 'Laporan Stok Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 435
    Height = 481
    object GroupBox1: TGroupBox
      Left = 12
      Top = 12
      Width = 276
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
      Left = 9
      Top = 61
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 69
      Top = 61
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgWare: TdxDBGrid
      Left = 1
      Top = 80
      Width = 433
      Height = 104
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
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'Kode Gudang'
        Sorted = csUp
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'Nama Gudang'
        Width = 319
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object Panel1: TPanel
      Left = 3
      Top = 198
      Width = 413
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
      Top = 223
      Width = 433
      Height = 257
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
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
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 414
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object bbCancel: TdxButton
      Left = 312
      Top = 190
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 6
    end
    object CBDetil: TCheckBox
      Left = 304
      Top = 28
      Width = 116
      Height = 17
      Caption = 'Tampilkan Detil'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  inherited paBottom: TPanel
    Top = 522
    Width = 435
    inherited bbPreview: TBitBtn
      Left = 209
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 283
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 357
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 151
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'SELECT ItemID,ItemName FROM INMsItem'
      'WHERE Ctk='#39'Y'#39
      'Order By GroupID,ProductID,ItemID')
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 260
    Top = 4
  end
end
