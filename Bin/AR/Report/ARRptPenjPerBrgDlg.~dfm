inherited fmARRptPenjPerBrgDlg: TfmARRptPenjPerBrgDlg
  Left = 495
  Top = 131
  Caption = ''
  ClientHeight = 393
  ClientWidth = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 407
    inherited laTitle: TLabel
      Width = 297
      Caption = 'Laporan Penjualan Per Barang '
    end
  end
  inherited paCenter: TPanel
    Width = 407
    Height = 311
    object GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Width = 289
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 130
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
        Left = 29
        Top = 14
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 181
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
      Left = 8
      Top = 56
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 80
      Top = 56
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 85
      Width = 405
      Height = 225
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 3
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
        Sorted = csUp
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object bbCancel: TdxButton
      Left = 186
      Top = 54
      Width = 110
      Height = 20
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 4
    end
    object RgOption: TRadioGroup
      Left = 304
      Top = 6
      Width = 89
      Height = 70
      ItemIndex = 0
      Items.Strings = (
        'Barang'
        'Wilayah')
      TabOrder = 5
      OnClick = RgOptionClick
    end
  end
  inherited paBottom: TPanel
    Top = 352
    Width = 407
    inherited bbPreview: TBitBtn
      Left = 181
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 255
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 329
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM INMsItem')
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
end
