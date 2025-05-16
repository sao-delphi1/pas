inherited fmARRptReturPjDlg: TfmARRptReturPjDlg
  Left = 266
  Top = 98
  Caption = ''
  ClientHeight = 583
  ClientWidth = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 492
    inherited laTitle: TLabel
      Left = 8
      Top = 4
      Width = 239
      Caption = 'Laporan Retur Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 492
    Height = 501
    object GroupBox1: TGroupBox
      Left = 10
      Top = 6
      Width = 269
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
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
        Top = 14
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
        Top = 14
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GrbRetur: TRadioGroup
      Left = 288
      Top = 6
      Width = 193
      Height = 45
      Caption = '[ Retur ]'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Rusak'
        'Batal')
      ParentCtl3D = False
      TabOrder = 1
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 68
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 82
      Top = 68
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 3
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 89
      Width = 490
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
      TabOrder = 4
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
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Name Pelanggan'
        Width = 324
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object bbCancel: TdxButton
      Left = 372
      Top = 56
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 5
    end
  end
  inherited paBottom: TPanel
    Top = 542
    Width = 492
    inherited bbPreview: TBitBtn
      Left = 266
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 340
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 414
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select  * FROM ARMsCustomer'
      'ORDER BY CustId')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
  end
end
