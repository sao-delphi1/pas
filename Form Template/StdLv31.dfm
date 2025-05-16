inherited fmStdLv31: TfmStdLv31
  Caption = 'fmStdLv31'
  PixelsPerInch = 96
  TextHeight = 13
  object dxContainer7: TdxContainer [4]
    Left = 193
    Top = 37
    Width = 597
    Height = 487
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alClient
    Version = '1.0.0'
    Caption = 'dxContainer7'
    object pcParent: TdxPageControl
      Left = 0
      Top = 0
      Width = 597
      Height = 487
      ActivePage = ts01
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
      object ts01: TdxTabSheet
        Caption = 'ts01'
        DesignSize = (
          597
          487)
        object bbSave: TdxButton
          Tag = 3333
          Left = 450
          Top = 469
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActSave
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 0
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 527
          Top = 469
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActCancel
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
  inherited ActionList: TActionList
    inherited ActSave: TAction
      Caption = '&Save (F4)'
      ShortCut = 115
    end
    inherited ActCancel: TAction
      Caption = '&Cancel (F5)'
      ShortCut = 116
    end
  end
end
