inherited fmARRptKomisiSalesDlg: TfmARRptKomisiSalesDlg
  Left = 241
  Top = 72
  Caption = ''
  ClientHeight = 597
  ClientWidth = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 495
    inherited laTitle: TLabel
      Width = 244
      Caption = 'Laporan Komisi Per Sales'
    end
  end
  inherited paCenter: TPanel
    Width = 495
    Height = 515
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
      Left = 2
      Top = 84
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
      Top = 84
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 103
      Width = 493
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SalesID'
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
      object dbgListSalesID: TdxDBGridMaskColumn
        Caption = 'Kode Sales'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dbgListSalesName: TdxDBGridMaskColumn
        Caption = 'Nama Sales'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
    end
    object bbCancel: TdxButton
      Left = 376
      Top = 68
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI SALES'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 556
    Width = 495
    inherited bbPreview: TBitBtn
      Left = 269
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 343
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 417
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsSales')
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
  end
end
