inherited fmCFRptKeuanganDetBankDlg: TfmCFRptKeuanganDetBankDlg
  Left = 33
  Top = 9
  Caption = ''
  ClientHeight = 570
  ClientWidth = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 429
    inherited laTitle: TLabel
      Width = 195
      Caption = 'Laporan Buku Besar'
    end
  end
  inherited paCenter: TPanel
    Width = 429
    Height = 488
    object GroupBox1: TGroupBox
      Left = 45
      Top = 7
      Width = 338
      Height = 52
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 143
        Top = 19
        Width = 45
        Height = 17
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 25
        Top = 15
        Width = 110
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 199
        Top = 15
        Width = 110
        TabOrder = 1
        OnKeyPress = dt2KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbSelect: TRadioButton
      Left = 71
      Top = 262
      Width = 61
      Height = 17
      Caption = '&Select'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 22
      Top = 262
      Width = 43
      Height = 17
      Caption = '&All'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 284
      Width = 427
      Height = 203
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RekeningId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -15
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dbgListRekeningId: TdxDBGridMaskColumn
        Caption = 'Kode Rekening'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningId'
      end
      object dbgListRekeningName: TdxDBGridMaskColumn
        Caption = 'Nama Rekening'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningName'
      end
    end
    object bbCari: TdxButton
      Left = 277
      Top = 260
      Width = 139
      Height = 21
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbCariClick
      Caption = 'CARI REKENING'
      TabOrder = 4
    end
    object dbgListTipe: TdxDBGrid
      Left = 1
      Top = 101
      Width = 426
      Height = 156
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Tipe'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -15
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dbgListTipeTipe: TdxDBGridColumn
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tipe'
      end
      object dbgListTipeNama: TdxDBGridColumn
        Width = 228
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nama'
      end
    end
    object Panel1: TPanel
      Left = 6
      Top = 63
      Width = 185
      Height = 22
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 6
      object rbAll2: TRadioButton
        Left = 13
        Top = 3
        Width = 53
        Height = 17
        Caption = '&All'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rbSelect2Click
      end
      object rbSelect2: TRadioButton
        Left = 56
        Top = 3
        Width = 61
        Height = 17
        Caption = '&Select'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbSelect2Click
      end
    end
    object RgData: TRadioGroup
      Left = 195
      Top = 64
      Width = 208
      Height = 33
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Tipe Rekening'
        'Group Rekening')
      TabOrder = 7
      Visible = False
      OnClick = RgDataClick
    end
  end
  inherited paBottom: TPanel
    Top = 529
    Width = 429
    inherited bbPreview: TBitBtn
      Left = 203
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 277
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 351
    end
  end
  inherited quAct: TADOQuery
    DataSource = dsMain
    SQL.Strings = (
      'SELECT DISTINCT RekeningID,RekeningName'
      'FROM CFMsRekening')
    Left = 104
    object quActRekeningId: TStringField
      FieldName = 'RekeningId'
      Size = 30
    end
    object quActRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    Left = 132
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT Tipe,'
      'CASE WHEN Tipe=1 THEN '#39'ASSETS'#39' '
      '     WHEN Tipe=2 THEN '#39'LIABILITIES'#39' '
      '     WHEN Tipe=3 THEN '#39'CAPITAL'#39' '
      '     WHEN Tipe=4 THEN '#39'INCOME'#39' '
      '     WHEN Tipe=5 THEN '#39'EXPENSE'#39' '
      
        '     WHEN Tipe=6 THEN '#39'FIXED ASSETS'#39' ELSE '#39'INTER ACCOUNT'#39' END as' +
        ' Nama '
      'FROM CFMsRekening ORDER BY Tipe')
    Left = 224
    Top = 4
    object quMainTipe: TStringField
      DisplayWidth = 30
      FieldName = 'Tipe'
      Size = 30
    end
    object quMainNama: TStringField
      DisplayWidth = 100
      FieldName = 'Nama'
      ReadOnly = True
      Size = 100
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 252
    Top = 4
  end
end
