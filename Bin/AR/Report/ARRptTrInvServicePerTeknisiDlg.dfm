inherited fmARRptInvServicePerTeknisiDlg: TfmARRptInvServicePerTeknisiDlg
  Left = 224
  Top = 93
  Caption = ''
  ClientHeight = 595
  ClientWidth = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 476
    inherited laTitle: TLabel
      Width = 346
      Caption = 'Laporan Invoice Service Per Teknisi '
    end
  end
  inherited paCenter: TPanel
    Width = 476
    Height = 513
    object GroupBox1: TGroupBox
      Left = 12
      Top = 14
      Width = 269
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
        Top = 20
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
        Top = 14
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 287
      Top = 14
      Width = 175
      Height = 45
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object Label3: TLabel
        Left = 153
        Top = 13
        Width = 18
        Height = 23
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 9
        Top = 13
        Width = 83
        Height = 23
        Caption = 'KOMISI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dxEdit1: TdxEdit
        Left = 96
        Top = 11
        Width = 49
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0'
        Alignment = taRightJustify
        StyleController = SCEdit
        StoredValues = 1
      end
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 82
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 74
      Top = 82
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 3
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 101
      Width = 474
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TeknisiID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 4
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListTeknisiID: TdxDBGridMaskColumn
        Caption = 'Kode Teknisi'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TeknisiID'
      end
      object dbgListTeknisiName: TdxDBGridMaskColumn
        Caption = 'Nama Teknisi'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TeknisiName'
      end
    end
    object bbCancel: TdxButton
      Left = 354
      Top = 64
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI TEKNISI'
      TabOrder = 5
    end
  end
  inherited paBottom: TPanel
    Top = 554
    Width = 476
    inherited bbPreview: TBitBtn
      Left = 250
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 324
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 398
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM ARMsTeknisi')
    object quActTeknisiID: TStringField
      FieldName = 'TeknisiID'
    end
    object quActTeknisiName: TStringField
      FieldName = 'TeknisiName'
      Size = 50
    end
  end
end
