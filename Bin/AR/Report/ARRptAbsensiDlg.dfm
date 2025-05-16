inherited fmARRptAbsensiDlg: TfmARRptAbsensiDlg
  Caption = ''
  ClientHeight = 482
  ClientWidth = 371
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 371
    inherited laTitle: TLabel
      Width = 264
      Caption = 'Laporan Absensi Karyawan'
    end
  end
  inherited paCenter: TPanel
    Width = 371
    Height = 400
    object GroupBox1: TGroupBox
      Left = 41
      Top = 18
      Width = 289
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 130
        Top = 18
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
      Left = 2
      Top = 74
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbSelect: TRadioButton
      Left = 74
      Top = 74
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object bbKaryawan: TdxButton
      Left = 259
      Top = 68
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbKaryawanClick
      Caption = 'CARI SALES'
      TabOrder = 3
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 103
      Width = 369
      Height = 296
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SalesID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 4
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListSalesID: TdxDBGridMaskColumn
        Caption = 'Kode Karyawan'
        Sorted = csUp
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dbgListSalesName: TdxDBGridMaskColumn
        Caption = 'Nama Karyawan'
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 441
    Width = 371
    inherited bbPreview: TBitBtn
      Left = 145
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 219
    end
    inherited bbExit: TBitBtn
      Left = 293
    end
  end
  inherited quAct: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select SalesID, SalesName '
      'from ArMsSales Order by SalesID')
  end
end
