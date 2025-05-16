inherited fmARRptPenjPerCustTunaiDlg: TfmARRptPenjPerCustTunaiDlg
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited laTitle: TLabel
      Width = 382
      Caption = 'Laporan Penjualan Per Pelanggan Tunai'
    end
  end
  inherited paCenter: TPanel
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
      Width = 121
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dt2: TdxDateEdit
        Left = 21
        Top = 14
        Width = 88
        TabOrder = 0
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
    object bbCancel: TdxButton
      Left = 323
      Top = 64
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 3
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 96
      Width = 447
      Height = 392
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NAMA'
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
      object dbgListNAMA: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAMA'
      end
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT NAMA FROM ARTrPenjualanHD'
      'WHERE CustID='#39'TUNAI'#39' AND NAMA <>'#39'CASH'#39
      'Order by Nama')
    object quActNAMA: TStringField
      FieldName = 'NAMA'
      Size = 30
    end
  end
end
