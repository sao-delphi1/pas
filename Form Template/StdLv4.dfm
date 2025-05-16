inherited fmStdLv4: TfmStdLv4
  Caption = 'fmStdLv4'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      BoundColor = 9205276
      BoundLines = [blTop, blRight]
    end
    inherited paOperation: TdxContainer
      BoundColor = 9205276
      BoundLines = [blRight, blBottom]
    end
    inherited pa1: TdxContainer
      BoundColor = 9205276
    end
  end
  inherited pa2: TdxContainer
    BoundColor = 9205276
    BoundLines = [blRight]
  end
  object pcMain: TdxPageControl [4]
    Left = 193
    Top = 37
    Width = 597
    Height = 487
    ActivePage = ts02
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 4
    TabPosition = dxtpTop
    TabStop = False
    TabWidth = 0
    OnChanging = pcMainChanging
    object ts01: TdxTabSheet
      Caption = '&Grid'
      object dbgList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 600
        Height = 478
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnDblClick = dbgListDblClick
        DataSource = dsMain
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      end
    end
    object ts02: TdxTabSheet
      Caption = '&Column'
    end
  end
  inherited quMain: TADOQuery
    AfterInsert = quMainAfterInsert
  end
  inherited ActionList: TActionList
    Left = 580
    Top = 8
  end
end
