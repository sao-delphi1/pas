inherited fmCFMsGroupRek: TfmCFMsGroupRek
  Left = 118
  Top = 102
  Caption = 'Master Group Rekening'
  ClientWidth = 823
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 823
    inherited sbLast: TSpeedButton
      Left = 795
    end
    inherited sbNext: TSpeedButton
      Left = 772
    end
    inherited sbPrev: TSpeedButton
      Left = 749
    end
    inherited sbFirst: TSpeedButton
      Left = 726
    end
    inherited sbPeriod: TSpeedButton
      Left = 698
    end
    inherited BvlPeriod: TBevel
      Left = 452
    end
    inherited laPeriod: TLabel
      Left = 456
    end
  end
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Width = 823
  end
  object dbgList: TdxDBGrid [4]
    Left = 193
    Top = 37
    Width = 630
    Height = 494
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
    object dbgListGroupRekId: TdxDBGridColumn
      Caption = 'Kode Group Rekening'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupRekId'
    end
    object dbgListGroupRekName: TdxDBGridMaskColumn
      Caption = 'Nama Group Rekening'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupRekName'
    end
    object dbgListUpdDate: TdxDBGridColumn
      Caption = 'Waktu'
      Color = 13676331
      TabStop = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgListUpdUser: TdxDBGridColumn
      Caption = 'Update By'
      Color = 13676331
      DisableEditor = True
      TabStop = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsGroupRek'
      'ORDER BY GroupRekId')
    object quMainGroupRekId: TStringField
      FieldName = 'GroupRekId'
      Size = 30
    end
    object quMainGroupRekName: TStringField
      FieldName = 'GroupRekName'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
