object fmSearchSales: TfmSearchSales
  Left = 186
  Top = 105
  BorderStyle = bsSingle
  Caption = 'Cari Sales'
  ClientHeight = 520
  ClientWidth = 576
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
  object paCenterS: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 520
    Align = alClient
    TabOrder = 0
    object paTitle: TPanel
      Left = 1
      Top = 1
      Width = 574
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Color = 14467152
      TabOrder = 0
      Visible = False
      object laTitle: TLabel
        Left = 3
        Top = 6
        Width = 502
        Height = 35
        AutoSize = False
        Caption = 'laTitle'
        Color = clHighlightText
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Visible = False
      end
    end
    object dbgListSearch: TdxDBGrid
      Left = 1
      Top = 49
      Width = 574
      Height = 470
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial'
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
      HeaderFont.Height = -29
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -16
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
