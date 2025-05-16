inherited fmINMsProduct: TfmINMsProduct
  Left = 59
  Top = 21
  Caption = 'Master produk'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  object dbgProduct: TdxDBGrid [5]
    Left = 193
    Top = 37
    Width = 597
    Height = 487
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UOMId'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 5
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    object dbgProductProductID: TdxDBGridColumn
      Caption = 'Kode Produk'
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductID'
    end
    object dbgProductName: TdxDBGridColumn
      Caption = 'Nama Produk'
      Width = 254
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductDesc'
    end
    object dbgProductUser: TdxDBGridColumn
      Caption = 'User'
      ReadOnly = True
      TabStop = False
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
    object dbgProductUpdDate: TdxDBGridColumn
      Caption = 'Waktu'
      ReadOnly = True
      TabStop = False
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    SQL.Strings = (
      'SELECT * FROM INMsProduct order by ProductID')
    Left = 224
    object quMainProductID: TStringField
      FieldName = 'ProductID'
    end
    object quMainProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
