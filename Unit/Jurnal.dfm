inherited fmJurnal: TfmJurnal
  Left = 197
  Top = 180
  Caption = 'fmJurnal'
  ClientHeight = 447
  ClientWidth = 730
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 730
    inherited sbLast: TSpeedButton
      Left = 702
    end
    inherited sbNext: TSpeedButton
      Left = 679
    end
    inherited sbPrev: TSpeedButton
      Left = 656
    end
    inherited sbFirst: TSpeedButton
      Left = 633
    end
    inherited sbPeriod: TSpeedButton
      Left = 605
    end
    inherited BvlPeriod: TBevel
      Left = 359
    end
    inherited laPeriod: TLabel
      Left = 363
    end
  end
  object dbg: TdxDBGrid [1]
    Left = 0
    Top = 149
    Width = 730
    Height = 247
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dsDetil
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgCOAID: TdxDBGridMaskColumn
      Caption = 'Kode Rekening'
      DisableEditor = True
      TabStop = False
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COAID'
    end
    object dbgCOADesc: TdxDBGridMaskColumn
      Caption = 'Nama Rekening'
      DisableEditor = True
      TabStop = False
      Width = 186
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COADesc'
    end
    object dbgDK: TdxDBGridMaskColumn
      DisableEditor = True
      TabStop = False
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DK'
    end
    object dbgNote: TdxDBGridMaskColumn
      DisableEditor = True
      TabStop = False
      Width = 161
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Note'
    end
    object dbgValutaID: TdxDBGridMaskColumn
      Caption = 'Kode Valuta'
      DisableEditor = True
      TabStop = False
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ValutaID'
    end
    object dbgttl: TdxDBGridCurrencyColumn
      Caption = 'Total'
      DisableEditor = True
      TabStop = False
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ttl'
      Nullable = False
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 30
    Width = 730
    Height = 119
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 14467152
    TabOrder = 2
    object Shape3: TShape
      Left = 4
      Top = 3
      Width = 724
      Height = 112
      Brush.Color = 14467152
    end
    object Shape6: TShape
      Left = 500
      Top = 13
      Width = 212
      Height = 78
      Brush.Color = 15325332
      Shape = stRoundRect
    end
    object Label6: TLabel
      Left = 521
      Top = 55
      Width = 48
      Height = 16
      Caption = 'Kredit :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 519
      Top = 27
      Width = 50
      Height = 16
      Caption = 'Debet :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText6: TDBText
      Left = 551
      Top = 57
      Width = 132
      Height = 16
      Alignment = taRightJustify
      DataField = 'kredit'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText5: TDBText
      Left = 549
      Top = 29
      Width = 133
      Height = 16
      Alignment = taRightJustify
      DataField = 'debet'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 143
      Top = 69
      Width = 370
      Height = 25
      DataField = 'JourDesc'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 40
      Top = 68
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Keterangan :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 143
      Top = 22
      Width = 162
      Height = 17
      DataField = 'JourtransID'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 357
      Top = 22
      Width = 116
      Height = 17
      DataField = 'tgl'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 143
      Top = 45
      Width = 161
      Height = 17
      DataField = 'Jurnal'
      DataSource = dsMain
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 40
      Top = 45
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Jurnal :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 279
      Top = 22
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tanggal :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 40
      Top = 22
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'No Bukti :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 396
    Width = 730
    Height = 51
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 10858936
    TabOrder = 3
    DesignSize = (
      730
      51)
    object Shape4: TShape
      Left = 4
      Top = 3
      Width = 723
      Height = 45
      Brush.Color = 14467152
    end
    object dxButton1: TdxButton
      Tag = 3333
      Left = 328
      Top = 11
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      Caption = 'OK'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 1
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Tag = 4444
      Left = 644
      Top = 11
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = '&Cetak'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 1
    end
  end
  inherited quMain: TADOQuery
    object quMainJourtransID: TStringField
      FieldName = 'JourtransID'
    end
    object quMainTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
    end
    object quMainJurnal: TStringField
      FieldName = 'Jurnal'
      ReadOnly = True
      Size = 71
    end
    object quMainJourGLID: TStringField
      FieldName = 'JourGLID'
    end
    object quMainFlag: TIntegerField
      FieldName = 'Flag'
    end
    object quMainJourDesc: TStringField
      FieldName = 'JourDesc'
      Size = 150
    end
    object quMainDebet: TBCDField
      FieldName = 'Debet'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object quMainKredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quMainBeforePost
    DataSource = dsMain
    Parameters = <>
    Left = 308
    Top = 4
    object quDetilCOAID: TStringField
      FieldName = 'COAID'
    end
    object quDetilCOADesc: TStringField
      FieldName = 'COADesc'
      Size = 50
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 150
    end
    object quDetilDK: TStringField
      FieldName = 'DK'
      ReadOnly = True
      Size = 6
    end
    object quDetilValutaID: TStringField
      FieldName = 'ValutaID'
    end
    object quDetilrate: TBCDField
      FieldName = 'rate'
      Precision = 18
    end
    object quDetilAmount: TBCDField
      FieldName = 'Amount'
      Precision = 18
    end
    object quDetilttl: TBCDField
      FieldName = 'ttl'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    OnStateChange = dsMainStateChange
    Left = 336
    Top = 4
  end
end
