inherited fmAPRptPembPerBrgDlg: TfmAPRptPembPerBrgDlg
  Left = 285
  Top = 101
  Caption = ''
  ClientHeight = 583
  ClientWidth = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 494
    inherited laTitle: TLabel
      Width = 299
      Caption = 'Laporan Pembelian Per Barang '
    end
  end
  inherited paCenter: TPanel
    Width = 494
    Height = 501
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
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
        Width = 86
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
      Left = 6
      Top = 70
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 78
      Top = 70
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 89
      Width = 492
      Height = 411
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
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 348
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object bbCancel: TdxButton
      Left = 376
      Top = 56
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 542
    Width = 494
    inherited bbPreview: TBitBtn
      Left = 268
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 342
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 416
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
