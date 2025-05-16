inherited fmStdLv41: TfmStdLv41
  Left = 140
  Top = 132
  Caption = 'fmStdLv41'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TdxPageControl
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
      end
    end
    inherited ts02: TdxTabSheet
      object pcColumn: TdxPageControl
        Left = 0
        Top = 0
        Width = 597
        Height = 464
        ActivePage = ts0201
        Align = alClient
        HideButtons = True
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object ts0201: TdxTabSheet
          Caption = 'ts0201'
          DesignSize = (
            597
            464)
          object bbSave: TdxButton
            Tag = 3333
            Left = 447
            Top = 436
            Height = 28
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            Action = ActSave
            Caption = '&Simpan (F3)'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 0
          end
          object bbCancel: TdxButton
            Tag = 4444
            Left = 523
            Top = 436
            Height = 28
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            Action = ActCancel
            Caption = '&Batal (F4)'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 416
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
    end
    inherited ActCancel: TAction
      Caption = 'BATAL (F4)'
    end
    object ActCari: TAction
      Category = 'Data'
      Caption = 'ActCari'
      ShortCut = 116
    end
  end
end
