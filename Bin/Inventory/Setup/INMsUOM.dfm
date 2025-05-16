inherited fmINMsUOM: TfmINMsUOM
  Left = 179
  Top = 161
  Caption = 'Satuan'
  ClientWidth = 768
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Width = 768
  end
  object dbgUOM: TdxDBGrid [4]
    Left = 193
    Top = 37
    Width = 575
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
    TabOrder = 4
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    object dbgUOMUOMId: TdxDBGridColumn
      Caption = 'Nama Satuan'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UOMId'
    end
    object dbgUOMColumn4: TdxDBGridColumn
      Caption = 'Kode Satuan'
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeSatuan'
    end
    object dbgUOMUpdUser: TdxDBGridColumn
      Caption = 'User'
      Color = clScrollBar
      ReadOnly = True
      TabStop = False
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
    object dbgUOMUpdDate: TdxDBGridColumn
      Caption = 'Waktu'
      Color = clScrollBar
      ReadOnly = True
      TabStop = False
      Width = 145
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
  end
  inherited paToolBar: TdxContainer
    Width = 768
    inherited sbLast: TSpeedButton
      Left = 740
    end
    inherited sbNext: TSpeedButton
      Left = 717
    end
    inherited sbPrev: TSpeedButton
      Left = 694
    end
    inherited sbFirst: TSpeedButton
      Left = 671
    end
    inherited sbPeriod: TSpeedButton
      Left = 643
    end
    inherited BvlPeriod: TBevel
      Left = 397
    end
    inherited laPeriod: TLabel
      Left = 401
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    SQL.Strings = (
      'SELECT * FROM INMsUOM')
    object quMainUOMId: TStringField
      FieldName = 'UOMId'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainKodeSatuan: TStringField
      FieldName = 'KodeSatuan'
      Size = 50
    end
  end
end
