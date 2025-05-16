inherited fmINMsGroup: TfmINMsGroup
  Caption = 'Master Group'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  object dbgGroup: TdxDBGrid [5]
    Left = 193
    Top = 37
    Width = 597
    Height = 494
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
    object dbgGroupGroupID: TdxDBGridColumn
      Caption = 'Kode Group'
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupID'
    end
    object dbgGroupName: TdxDBGridColumn
      Caption = 'Kode Group'
      Width = 252
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupDesc'
    end
    object dbgGroupUser: TdxDBGridColumn
      Caption = 'User'
      ReadOnly = True
      TabStop = False
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
    object dbgGroupUpdDate: TdxDBGridColumn
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
      'SELECT * FROM INMsGroup order by GroupID')
    object quMainGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quMainGroupDesc: TStringField
      FieldName = 'GroupDesc'
      Size = 200
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
