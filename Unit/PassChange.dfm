inherited fmPassChange: TfmPassChange
  Left = 376
  Top = 196
  Caption = 'Ganti Password'
  ClientHeight = 162
  ClientWidth = 281
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited paUp: TdxContainer
    Width = 281
    Height = 125
    ParentColor = False
    object Label1: TLabel
      Left = 10
      Top = 58
      Width = 104
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Password Baru :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 86
      Width = 104
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Re-Password Baru :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 30
      Width = 104
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Password Lama :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edlama: TdxEdit
      Left = 124
      Top = 24
      Width = 121
      TabOrder = 0
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
    object edPass1: TdxEdit
      Left = 124
      Top = 52
      Width = 121
      TabOrder = 1
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
    object edPass2: TdxEdit
      Left = 124
      Top = 80
      Width = 121
      TabOrder = 2
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
  end
  inherited paBottom: TdxContainer
    Top = 125
    Width = 281
    Color = 12229669
    ParentColor = False
    object bbOK: TdxButton
      Tag = 3333
      Left = 126
      Top = 4
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbOKClick
      Caption = 'OK'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 202
      Top = 4
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'Cancel'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 1
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 292
    Top = 4
  end
end
