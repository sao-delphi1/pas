inherited fmARRptPenjPerCustDlg: TfmARRptPenjPerCustDlg
  Left = 566
  Top = 117
  Caption = ''
  ClientHeight = 583
  ClientWidth = 440
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 440
    inherited laTitle: TLabel
      Width = 321
      Caption = 'Laporan Penjualan Per Pelanggan'
    end
  end
  inherited paCenter: TPanel
    Width = 440
    Height = 501
    object GroupBox1: TGroupBox
      Left = 12
      Top = 10
      Width = 276
      Height = 47
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
        Top = 19
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
        Top = 15
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
        Top = 15
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
      Left = 74
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
      Width = 438
      Height = 411
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
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Sorted = csUp
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Width = 371
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object bbCancel: TdxButton
      Left = 178
      Top = 61
      Width = 110
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 293
      Top = 8
      Width = 136
      Height = 79
      Caption = '[ Filter ]'
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Revenue Invoice')
      TabOrder = 5
      OnClick = RadioGroup1Click
    end
  end
  inherited paBottom: TPanel
    Top = 542
    Width = 440
    object Label1: TLabel [0]
      Left = 12
      Top = 12
      Width = 72
      Height = 16
      Caption = 'Lebih Besar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    inherited bbPreview: TBitBtn
      Left = 215
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 288
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 362
    end
    object dxCurrencyEdit1: TdxCurrencyEdit
      Left = 94
      Top = 6
      Width = 104
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      StyleController = SCEdit
      DisplayFormat = '#,0'
      Value = 100000000
      StoredValues = 0
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
  end
end
