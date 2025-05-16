inherited fmStdLv3: TfmStdLv3
  Caption = 'fmStdLv3'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object paLeft: TdxContainer [1]
    Left = 0
    Top = 37
    Height = 487
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alLeft
    Version = '1.0.0'
    BoundColor = clBlack
    object pa3: TdxContainer
      Left = 0
      Top = 179
      Height = 308
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Align = alClient
      Color = 13676331
      ParentColor = False
      Version = '1.0.0'
      BoundColor = -1
    end
    object paOperation: TdxContainer
      Left = 0
      Top = 0
      Height = 171
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Align = alTop
      Color = 13676331
      ParentColor = False
      Version = '1.0.0'
      BoundColor = -1
      object bbNew: TdxButton
        Tag = 1111
        Left = 24
        Top = 4
        Width = 135
        Height = 45
        Cursor = crHandPoint
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActNew
        Caption = '&TAMBAH (F1)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbDelete: TdxButton
        Tag = 2222
        Left = 24
        Top = 51
        Width = 135
        Height = 45
        Cursor = crHandPoint
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActDelete
        Caption = '&HAPUS (F2)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object bbFind: TdxButton
        Tag = 5555
        Left = 24
        Top = 98
        Width = 135
        Height = 45
        Cursor = crHandPoint
        Hint = 'Find Record'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Caption = '&CARI'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000888880000080F000888880F00080F000888880F
          0008000000080000000800F000000F00000800F000800F00000800F000800F00
          00088000000000000088880F00080F0008888800000800000888888000888000
          88888880F08880F0888888800088800088888888888888888888}
        HotTrack = True
        TabOrder = 2
      end
      object ceContinuousAdd: TdxCheckEdit
        Left = 4
        Top = 147
        Width = 121
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        TabStop = False
        Caption = 'Continuous &Add'
        StyleController = SCCheckEdit
      end
    end
    object pa1: TdxContainer
      Left = 0
      Top = 171
      Height = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Align = alTop
      Color = 11769380
      ParentColor = False
      Version = '1.0.0'
      Caption = 'pa1'
    end
  end
  object paBottom: TdxContainer [2]
    Left = 0
    Top = 524
    Width = 790
    Height = 12
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alBottom
    Color = 14929269
    ParentColor = False
    Version = '1.0.0'
    Caption = 'paBottom'
    BoundColor = clBlack
    BoundLines = [blTop]
  end
  object pa2: TdxContainer [3]
    Left = 185
    Top = 37
    Width = 8
    Height = 487
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alLeft
    Color = 11769380
    ParentColor = False
    Version = '1.0.0'
  end
  inherited quMain: TADOQuery
    AfterOpen = quMainAfterOpen
    AfterPost = quMainAfterPost
    AfterDelete = quMainAfterDelete
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 68
    inherited ActFirst: TAction
      ShortCut = 117
    end
    inherited ActPrev: TAction
      ShortCut = 118
    end
    inherited ActNext: TAction
      ShortCut = 119
    end
    object ActSave: TAction [3]
      Category = 'Data'
      Caption = '&Save'
      Hint = 'Save Changes'
      ShortCut = 114
      OnExecute = ActSaveExecute
    end
    inherited ActLast: TAction
      ShortCut = 120
    end
    object ActNew: TAction
      Category = 'Data'
      Caption = '&New'
      Hint = 'New Data'
      ShortCut = 112
      OnExecute = ActNewExecute
    end
    object ActDelete: TAction
      Category = 'Data'
      Caption = '&Delete'
      Hint = 'Delete Data'
      ShortCut = 113
      OnExecute = ActDeleteExecute
    end
    object ActCancel: TAction
      Category = 'Data'
      Caption = '&Cancel'
      Hint = 'Cancel Changes'
      ShortCut = 115
      OnExecute = ActCancelExecute
    end
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    Left = 324
    Top = 4
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    Left = 352
    Top = 4
  end
end
