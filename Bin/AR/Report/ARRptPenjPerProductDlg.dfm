inherited fmARRptPenjPerProductDlg: TfmARRptPenjPerProductDlg
  Left = 523
  Top = 124
  Caption = ''
  ClientHeight = 455
  ClientWidth = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 333
    inherited laTitle: TLabel
      Width = 292
      Caption = 'Laporan Penjualan Per Produk'
    end
  end
  inherited paCenter: TPanel
    Width = 333
    Height = 373
    object GroupBox1: TGroupBox
      Left = 16
      Top = 12
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
      Left = 2
      Top = 66
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 74
      Top = 66
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 87
      Width = 331
      Height = 285
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ProductID'
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
      object dbgListProductID: TdxDBGridMaskColumn
        Caption = 'Kode Produk'
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductID'
      end
      object dbgListProductDesc: TdxDBGridMaskColumn
        Caption = 'Nama Produk'
        Width = 326
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductDesc'
      end
    end
    object bbCancel: TdxButton
      Left = 208
      Top = 66
      Width = 110
      Height = 16
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 414
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
    object cbHarga: TCheckBox
      Left = 8
      Top = 12
      Width = 89
      Height = 17
      Caption = 'Tampil Harga'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM INMsProduct')
    object quActProductID: TStringField
      FieldName = 'ProductID'
    end
    object quActProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
  end
end
