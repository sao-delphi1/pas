inherited fmINRptPriceListDlg: TfmINRptPriceListDlg
  Caption = ''
  ClientWidth = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 550
    inherited laTitle: TLabel
      Width = 93
      Caption = 'Price List'
    end
  end
  inherited paCenter: TPanel
    Width = 550
    object GroupBox1: TGroupBox
      Left = 12
      Top = 12
      Width = 129
      Height = 45
      Caption = '[ Periode ]'
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
    object RadioGroup1: TRadioGroup
      Left = 324
      Top = 12
      Width = 217
      Height = 45
      Caption = '[ Jenis Harga ]'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'User'
        'Dealer')
      ParentCtl3D = False
      TabOrder = 1
    end
    object dbg: TdxDBGrid
      Left = 1
      Top = 64
      Width = 548
      Height = 424
      Bands = <
        item
        end>
      DefaultLayout = False
      KeyField = 'ItemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 2
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dbgColumn4: TdxDBGridCheckColumn
        Caption = 'Cetak'
        MinWidth = 20
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ctk'
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object dbgKdItem: TdxDBGridButtonColumn
        Caption = 'Kode Barang'
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgNmItem: TdxDBGridColumn
        Caption = 'Nama Barang'
        Color = clWhite
        DisableEditor = True
        TabStop = False
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0 Item(s)'
      end
      object dbgProduk: TdxDBGridColumn
        Caption = 'Kode Produk'
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductID'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 550
    inherited bbPreview: TBitBtn
      Left = 324
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 398
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 472
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM INMsItem ')
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActProductID: TStringField
      FieldName = 'ProductID'
    end
    object quActGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActGarantee: TStringField
      FieldName = 'Garantee'
      FixedChar = True
      Size = 1
    end
    object quActCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quActUserPrice: TBCDField
      FieldName = 'UserPrice'
      Precision = 18
    end
    object quActDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      Precision = 18
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActJangkaGarantee: TBCDField
      FieldName = 'JangkaGarantee'
      Precision = 18
      Size = 0
    end
    object quActMinimumStok: TBCDField
      FieldName = 'MinimumStok'
      Precision = 18
      Size = 0
    end
    object quActCtk: TStringField
      FieldName = 'Ctk'
      FixedChar = True
      Size = 5
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
end
