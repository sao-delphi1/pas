inherited fmSATrRate: TfmSATrRate
  Left = 111
  Top = 84
  Caption = 'Rate'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  object dbgRate: TdxDBGrid [5]
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
    object dbgRateTanggal: TdxDBGridDateColumn
      Caption = 'Tanggal'
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransDate'
    end
    object dbgRateRate: TdxDBGridColumn
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rate'
    end
    object dbgRateKeterangan: TdxDBGridColumn
      Caption = 'Keterangan'
      Width = 190
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Note'
    end
    object dbgRateTglUpdate: TdxDBGridColumn
      Caption = 'Tgl Ubah'
      ReadOnly = True
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgRateUser: TdxDBGridColumn
      Caption = 'Oleh'
      ReadOnly = True
      Width = 115
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM SATrRate')
    object quMainTransID: TAutoIncField
      FieldName = 'TransID'
      ReadOnly = True
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
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
