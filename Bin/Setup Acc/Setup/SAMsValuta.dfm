inherited fmSAMsValuta: TfmSAMsValuta
  Left = 186
  Top = 102
  Caption = 'fmSAMsValuta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  object dbgList: TdxDBGrid [4]
    Left = 190
    Top = 30
    Width = 600
    Height = 501
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ValutaID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 4
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgListValutaID: TdxDBGridColumn
      Caption = 'Kode Valuta'
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CurrID'
    end
    object dbgListValutaDesc: TdxDBGridColumn
      Caption = 'Nama Valuta'
      Width = 254
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CurrName'
    end
    object dbgListUpdDate: TdxDBGridDateColumn
      Caption = 'Tanggal Ubah'
      Color = 13676331
      DisableEditor = True
      TabStop = False
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgListUpdUser: TdxDBGridMaskColumn
      Caption = 'User'
      Color = 13676331
      DisableEditor = True
      TabStop = False
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'SELECT * FROM SAMsValuta'
      'ORDER BY CurrID')
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainCurrName: TStringField
      FieldName = 'CurrName'
      Size = 50
    end
  end
end
