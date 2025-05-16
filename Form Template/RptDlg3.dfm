inherited fmRptDlg3: TfmRptDlg3
  Left = 188
  Caption = 'fmRptDlg3'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TdxPageControl
    inherited tsRpt: TdxTabSheet
      inherited pcRpt: TdxPageControl
        ActivePage = tsRpt02
        inherited tsRpt01: TdxTabSheet
          object Panel1: TPanel
            Left = 0
            Top = 369
            Width = 502
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 0
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 1
            object RbAllPage1: TRadioButton
              Left = 8
              Top = 7
              Width = 44
              Height = 17
              Caption = '&All'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RbAllPage1Click
            end
            object RbSelPage1: TRadioButton
              Left = 72
              Top = 7
              Width = 55
              Height = 17
              Caption = '&Select'
              TabOrder = 1
              OnClick = RbAllPage1Click
            end
          end
          object dbgPage1: TdxDBGrid
            Left = 0
            Top = 29
            Width = 502
            Height = 340
            Bands = <
              item
                Alignment = taLeftJustify
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
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsPage1
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
          end
        end
        inherited tsRpt02: TdxTabSheet
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 0
            object RbAllPage2: TRadioButton
              Left = 8
              Top = 7
              Width = 44
              Height = 17
              Caption = '&All'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RbAllPage2Click
            end
            object RbSelPage2: TRadioButton
              Left = 72
              Top = 7
              Width = 55
              Height = 17
              Caption = '&Select'
              TabOrder = 1
              OnClick = RbAllPage2Click
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 369
            Width = 502
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 1
          end
          object dbgPage2: TdxDBGrid
            Left = 0
            Top = 29
            Width = 502
            Height = 340
            Bands = <
              item
                Alignment = taLeftJustify
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
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsPage2
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
          end
        end
        inherited tsRpt03: TdxTabSheet
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 0
            object RbAllPage3: TRadioButton
              Left = 8
              Top = 7
              Width = 44
              Height = 17
              Caption = '&All'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RbAllPage3Click
            end
            object RbSelPage3: TRadioButton
              Left = 72
              Top = 7
              Width = 55
              Height = 17
              Caption = '&Select'
              TabOrder = 1
              OnClick = RbAllPage3Click
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 394
            Width = 502
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 1
          end
          object dbgPage3: TdxDBGrid
            Left = 0
            Top = 29
            Width = 502
            Height = 365
            Bands = <
              item
                Alignment = taLeftJustify
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
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsPage3
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
          end
        end
        inherited tsRpt04: TdxTabSheet
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 0
            object RbAllPage4: TRadioButton
              Left = 8
              Top = 9
              Width = 44
              Height = 12
              Caption = '&All'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RbAllPage4Click
            end
            object RbSelPage4: TRadioButton
              Left = 72
              Top = 7
              Width = 55
              Height = 17
              Caption = '&Select'
              TabOrder = 1
              OnClick = RbAllPage4Click
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 394
            Width = 502
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 1
          end
          object dbgPage4: TdxDBGrid
            Left = 0
            Top = 29
            Width = 502
            Height = 365
            Bands = <
              item
                Alignment = taLeftJustify
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
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsPage4
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
          end
        end
        inherited tsRpt05: TdxTabSheet
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 0
            object RbAllPage5: TRadioButton
              Left = 8
              Top = 7
              Width = 44
              Height = 17
              Caption = '&All'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RbAllPage5Click
            end
            object RbSelPage5: TRadioButton
              Left = 72
              Top = 7
              Width = 55
              Height = 17
              Caption = '&Select'
              TabOrder = 1
              OnClick = RbAllPage5Click
            end
          end
          object Panel10: TPanel
            Left = 0
            Top = 394
            Width = 502
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Color = 11845573
            TabOrder = 1
          end
          object dbgPage5: TdxDBGrid
            Left = 0
            Top = 29
            Width = 502
            Height = 365
            Bands = <
              item
                Alignment = taLeftJustify
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
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsPage5
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
          end
        end
      end
    end
    inherited tsSetting: TdxTabSheet
      inherited btnSaveSetting: TdxButton
        Left = 352
      end
    end
  end
  inherited dsPage1: TDataSource
    Left = 12
    Top = 20
  end
end
