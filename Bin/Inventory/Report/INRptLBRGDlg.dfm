inherited fmINRptLBRGDlg: TfmINRptLBRGDlg
  Left = 267
  Top = 82
  Caption = ''
  ClientHeight = 502
  ClientWidth = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 468
    inherited laTitle: TLabel
      Width = 185
      Caption = 'Laporan Laba Rugi'
    end
  end
  inherited paCenter: TPanel
    Width = 468
    Height = 420
    object GroupBox1: TGroupBox
      Left = 8
      Top = 5
      Width = 282
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 118
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
        Top = 16
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 166
        Top = 16
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 85
      Width = 466
      Height = 334
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 1
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemId: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Sorted = csUp
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
    object rbSelect: TRadioButton
      Left = 82
      Top = 60
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 60
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = rbSelectClick
    end
    object bbCancel: TdxButton
      Left = 324
      Top = 55
      Width = 110
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 4
    end
    object rbJenis: TRadioGroup
      Left = 293
      Top = 5
      Width = 172
      Height = 45
      Caption = '[ Jenis ]'
      Columns = 2
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        'Per Barang'
        'Per Invoice')
      ParentCtl3D = False
      TabOrder = 5
    end
  end
  inherited paBottom: TPanel
    Top = 461
    Width = 468
    inherited bbPreview: TBitBtn
      Left = 242
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 316
    end
    inherited bbExit: TBitBtn
      Left = 390
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM INMsItem ORDER BY ITEMID')
  end
end
