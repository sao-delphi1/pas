inherited fmGLMsJurnal: TfmGLMsJurnal
  Left = 222
  Top = 232
  Caption = 'fmGLMsJurnal'
  ClientWidth = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 660
    inherited sbLast: TSpeedButton
      Left = 632
    end
    inherited sbNext: TSpeedButton
      Left = 609
    end
    inherited sbPrev: TSpeedButton
      Left = 586
    end
    inherited sbFirst: TSpeedButton
      Left = 563
    end
    inherited sbPeriod: TSpeedButton
      Left = 535
    end
    inherited BvlPeriod: TBevel
      Left = 289
    end
    inherited laPeriod: TLabel
      Left = 293
    end
  end
  inherited paBottom: TdxContainer
    Width = 660
  end
  object dbgList: TdxDBGrid [4]
    Left = 190
    Top = 30
    Width = 470
    Height = 501
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
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
    object dbgListJurnalID: TdxDBGridColumn
      Caption = 'Kode Jurnal'
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JurnalID'
    end
    object dbgListJurnalDesc: TdxDBGridColumn
      Caption = 'Deskripsi Jurnal'
      Width = 314
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JurnalDesc'
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'SELECT * FROM GLMsJurnal'
      'ORDER BY JurnalID')
    object quMainJurnalID: TStringField
      FieldName = 'JurnalID'
    end
    object quMainJurnalDesc: TStringField
      FieldName = 'JurnalDesc'
      Size = 50
    end
  end
end
