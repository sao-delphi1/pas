inherited fmCFRptKeuanganBankDlg: TfmCFRptKeuanganBankDlg
  Left = 288
  Top = 123
  Caption = ''
  ClientHeight = 538
  ClientWidth = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 487
    inherited laTitle: TLabel
      Width = 349
      Caption = 'Laporan Keuangan Perputaran Bank'
    end
  end
  inherited paCenter: TPanel
    Width = 487
    Height = 461
    object GroupBox1: TGroupBox
      Left = 6
      Top = 3
      Width = 252
      Height = 47
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 107
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
        Left = 12
        Top = 15
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 153
        Top = 15
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbSelect: TRadioButton
      Left = 76
      Top = 53
      Width = 85
      Height = 17
      Caption = '&SEBAGIAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 9
      Top = 53
      Width = 68
      Height = 17
      Caption = '&SEMUA'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 73
      Width = 485
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BankId'
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
      object dbgListBankId: TdxDBGridMaskColumn
        Caption = 'Kode Bank'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BankId'
      end
      object dbgListBankName: TdxDBGridMaskColumn
        Caption = 'Nama Bank'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BankName'
      end
    end
    object RbValuta: TRadioGroup
      Left = 267
      Top = 3
      Width = 215
      Height = 64
      Caption = '[ Valuta ]'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'ALL'
        'IDR'
        'USD')
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 502
    Width = 487
    Height = 36
    inherited bbPreview: TBitBtn
      Left = 261
      Top = 3
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 335
      Top = 3
    end
    inherited bbExit: TBitBtn
      Left = 409
      Top = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM CFMsBank'
      'WHERE FgActive='#39'Y'#39)
    object quActBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quActBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
end
