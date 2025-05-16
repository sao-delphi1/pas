inherited fmSACalenderKerja: TfmSACalenderKerja
  Left = 190
  Top = 151
  Caption = 'Setting Calender Kerja'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      Top = 116
      Height = 371
    end
    inherited paOperation: TdxContainer
      Height = 108
      inherited bbDelete: TdxButton
        Top = 4
      end
      inherited bbFind: TdxButton
        Top = 4
      end
      inherited ceContinuousAdd: TdxCheckEdit
        Visible = False
      end
      object dxButton1: TdxButton
        Tag = 5555
        Left = 24
        Top = 50
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
        OnClick = dxButton1Click
        Caption = 'SIMPAN (F4)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 4
      end
    end
    inherited pa1: TdxContainer
      Top = 108
    end
  end
  inherited dxContainer7: TdxContainer
    inherited pcParent: TdxPageControl
      inherited ts01: TdxTabSheet
        object dbgCalender: TdxDBGrid
          Left = 0
          Top = 0
          Width = 597
          Height = 487
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'UOMId'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 2
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          OnCustomDraw = dbgCalenderCustomDraw
          object dbgCalenderTransdate: TdxDBGridDateColumn
            Alignment = taRightJustify
            Color = clSilver
            ReadOnly = True
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dbgCalenderHari: TdxDBGridColumn
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Hari'
          end
          object dbgCalenderBulan: TdxDBGridMaskColumn
            Visible = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Bulan'
          end
          object dbgCalenderTahun: TdxDBGridMaskColumn
            Visible = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tahun'
          end
          object dbgCalenderTgl: TdxDBGridMaskColumn
            Visible = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tgl'
          end
          object dbgCalenderMinggu: TdxDBGridMaskColumn
            Visible = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Minggu'
          end
          object dbgCalenderFgOff: TdxDBGridCheckColumn
            Caption = ' '
            MinWidth = 20
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgOff'
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
          object dbgCalenderStatus: TdxDBGridColumn
            Caption = 'Status'
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'status'
          end
          object dbgCalenderNote: TdxDBGridColumn
            Width = 365
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
        end
      end
    end
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeDelete = quMainNewRecord
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,'
      'CASE WHEN FgOff=1 THEN '#39'Libur'#39' ELSE '#39'Hari Kerja'#39' END as status'
      'FROM Calendar')
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'DD-MMMM-YYYY'
      EditMask = 'DD-MMMM-YYYY'
    end
    object quMainHari: TStringField
      FieldName = 'Hari'
    end
    object quMainBulan: TIntegerField
      FieldName = 'Bulan'
    end
    object quMainTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object quMainTgl: TIntegerField
      FieldName = 'Tgl'
    end
    object quMainMinggu: TIntegerField
      FieldName = 'Minggu'
    end
    object quMainFgOff: TIntegerField
      FieldName = 'FgOff'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainstatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 10
    end
  end
  inherited ActionList: TActionList
    inherited ActNew: TAction
      ShortCut = 0
    end
    inherited ActDelete: TAction
      ShortCut = 0
    end
  end
end
