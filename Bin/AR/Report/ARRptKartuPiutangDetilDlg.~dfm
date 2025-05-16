inherited fmARRptKartuPiutangDetilDlg: TfmARRptKartuPiutangDetilDlg
  Top = 70
  Caption = ''
  ClientHeight = 496
  ClientWidth = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 425
    inherited laTitle: TLabel
      Width = 325
      Caption = 'Laporan Kartu Piutang Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 425
    Height = 414
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 129
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 7
      Top = 59
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbAllClick
    end
    object rbSelect: TRadioButton
      Left = 63
      Top = 59
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbAllClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 83
      Width = 423
      Height = 330
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CustID'
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
      object dbgListCustId: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Sorted = csUp
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object bbCancel: TdxButton
      Left = 303
      Top = 48
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 455
    Width = 425
    inherited bbPreview: TBitBtn
      Left = 199
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 273
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 347
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 185
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM ARMsCustomer')
  end
end
