inherited fmINRptSNHistoryDlg: TfmINRptSNHistoryDlg
  Left = 235
  Top = 122
  Caption = 'History Serial Number '
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 65
    Top = 56
    Width = 66
    Height = 13
    Caption = 'Nomor Serial :'
  end
  object GroupBox1: TGroupBox [2]
    Left = 48
    Top = 72
    Width = 379
    Height = 63
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Kode Barang :'
    end
    object Label3: TLabel
      Left = 12
      Top = 38
      Width = 71
      Height = 13
      Caption = 'Nama Barang :'
    end
    object dxEdit1: TdxEdit
      Left = 88
      Top = 12
      Width = 281
      Color = clScrollBar
      TabOrder = 0
      ReadOnly = True
      StyleController = SCEdit
      StoredValues = 64
    end
    object dxEdit2: TdxEdit
      Left = 88
      Top = 34
      Width = 281
      Color = clScrollBar
      TabOrder = 1
      ReadOnly = True
      StyleController = SCEdit
      StoredValues = 64
    end
  end
  object dbgList: TdxDBGrid [3]
    Left = 0
    Top = 142
    Width = 790
    Height = 394
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alBottom
    TabOrder = 2
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    object dbgListTgl: TdxDBGridColumn
      Caption = 'Tanggal'
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tgl'
    end
    object dbgListStatus: TdxDBGridColumn
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Status'
    end
    object dbgListNota: TdxDBGridColumn
      Caption = 'Nota'
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PurchaseID'
    end
    object dbgListActor: TdxDBGridColumn
      Caption = 'Actor'
      Width = 119
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SuppName'
    end
    object dbgListPrice: TdxDBGridCurrencyColumn
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Price'
      DisplayFormat = '#,0'
      Nullable = False
    end
    object dbgListGudang: TdxDBGridColumn
      Caption = 'Gudang'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WarehouseID'
    end
    object dbgListFPBID: TdxDBGridColumn
      Caption = 'Ref'
      Width = 194
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FPBID'
    end
  end
  object dxButton3: TdxButton [4]
    Left = 329
    Top = 52
    Width = 93
    Height = 21
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton3Click
    Caption = 'CARI SN (F3)'
    TabOrder = 3
    TabStop = False
  end
  object dxEdit3: TdxEdit [5]
    Left = 137
    Top = 52
    Width = 190
    TabOrder = 4
    StyleController = SCEdit
    OnChange = dxEdit3Change
  end
  object ActionList1: TActionList
    Left = 436
    Top = 80
    object Action1: TAction
      Caption = 'Cari'
      ShortCut = 114
      OnExecute = dxButton3Click
    end
  end
end
