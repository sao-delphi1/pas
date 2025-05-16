object fmSearch: TfmSearch
  Left = 588
  Top = 162
  BorderStyle = bsSingle
  Caption = 'Pencarian'
  ClientHeight = 520
  ClientWidth = 921
  Color = 16760194
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paLeftS: TPanel
    Left = 0
    Top = 0
    Width = 140
    Height = 520
    Align = alLeft
    Color = cl3DLight
    TabOrder = 0
    DesignSize = (
      140
      520)
    object Shape1: TShape
      Left = 3
      Top = 3
      Width = 133
      Height = 514
      Anchors = [akLeft, akTop, akRight, akBottom]
      Brush.Color = 14467152
      Pen.Style = psDashDotDot
    end
    object Label1: TLabel
      Left = 9
      Top = 24
      Width = 60
      Height = 13
      Caption = 'Berdasarkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 172
      Width = 73
      Height = 13
      Caption = 'Dimulai dengan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label3: TLabel
      Left = 8
      Top = 68
      Width = 63
      Height = 13
      Caption = 'Mengandung'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object peLookIn: TdxPickEdit
      Left = 8
      Top = 42
      Width = 125
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = peLookInKeyPress
      StyleController = Style
      Text = 'peLookIn'
      OnChange = peLookInChange
      DropDownListStyle = True
    end
    object EdAllWord: TdxEdit
      Left = 7
      Top = 188
      Width = 126
      TabOrder = 1
      Visible = False
      OnKeyPress = peLookInKeyPress
      StyleController = Style
      OnChange = EdAllWordChange
    end
    object edPartWord: TdxEdit
      Left = 7
      Top = 84
      Width = 125
      TabOrder = 2
      OnKeyPress = peLookInKeyPress
      StyleController = Style
      OnChange = edPartWordChange
    end
  end
  object paCenterS: TPanel
    Left = 140
    Top = 0
    Width = 781
    Height = 520
    Align = alClient
    TabOrder = 1
    object paTitle: TPanel
      Left = 1
      Top = 1
      Width = 779
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = 14467152
      TabOrder = 0
      object laTitle: TLabel
        Left = 3
        Top = 1
        Width = 46
        Height = 22
        Caption = 'laTitle'
        Color = clHighlightText
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Monotype Corsiva'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
    object dbgListSearch: TdxDBGrid
      Left = 1
      Top = 23
      Width = 779
      Height = 496
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = dbgListSearchDblClick
      OnKeyDown = dbgListSearchKeyDown
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsSearch
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDraw = dbgListSearchCustomDraw
    end
  end
  object quSearch: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    Left = 236
    Top = 140
  end
  object dsSearch: TDataSource
    AutoEdit = False
    DataSet = quSearch
    Left = 264
    Top = 140
  end
  object Style: TdxEditStyleController
    BorderStyle = xbsSingle
    ButtonStyle = btsHotFlat
    Edges = [edgLeft, edgTop]
    Shadow = True
    Left = 460
    Top = 40
  end
end
