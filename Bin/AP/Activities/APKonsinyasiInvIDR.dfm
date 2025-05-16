inherited fmAPKonsinyasiInvIDR: TfmAPKonsinyasiInvIDR
  Left = 74
  Top = 68
  Caption = 'Invoice Konsinyasi Pembelian'
  ClientHeight = 663
  ClientWidth = 990
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 614
    inherited pa3: TdxContainer
      Height = 435
      object bbPembayaran: TdxButton
        Tag = 4444
        Left = 24
        Top = 9
        Width = 135
        Height = 45
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbPembayaranClick
        Caption = 'Pembayaran'
        TabOrder = 0
        TabStop = False
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited pa2: TdxContainer [2]
    Height = 614
  end
  inherited pcMain: TdxPageControl [3]
    Width = 797
    Height = 614
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 800
        Height = 472
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Invoice  Konsinyasi'
          DisableEditor = True
          Width = 163
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiInvID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Nota'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustomerID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListCustomerName: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan '
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustName'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Shape3: TShape
        Left = 374
        Top = 382
        Width = 417
        Height = 42
        Brush.Color = 14467152
      end
      object Label1: TLabel
        Left = 23
        Top = 12
        Width = 94
        Height = 13
        Alignment = taRightJustify
        Caption = 'Invoice Konsinyasi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 72
        Top = 31
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 73
        Top = 51
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Supplier :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 270
        Top = 52
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LSuppName'
        DataSource = dsMain
      end
      object Label5: TLabel
        Left = 56
        Top = 92
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 270
        Top = 71
        Width = 519
        Height = 17
        DataField = 'LCurrName'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 81
        Top = 72
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valuta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 5
        Top = 357
        Width = 186
        Height = 20
        Caption = 'Serial Number per Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 285
        Top = 6
        Width = 283
        Height = 34
        Alignment = taCenter
        DataField = 'LCurrName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 378
        Top = 389
        Width = 171
        Height = 24
        Caption = 'Total Konsinyasi :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 548
        Top = 390
        Width = 237
        Height = 21
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 5
        Top = 137
        Width = 126
        Height = 20
        Caption = 'Detil Pembelian'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 261
        Top = 137
        Width = 291
        Height = 20
        Caption = 'Transaksi ini menggunakan Rate Rp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 549
        Top = 137
        Width = 85
        Height = 20
        Alignment = taRightJustify
        DataField = 'Rate'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 49
        Top = 112
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 169
        Top = 112
        Width = 21
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 198
        Top = 112
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
      end
      object DBText7: TDBText
        Left = 288
        Top = 112
        Width = 141
        Height = 13
        DataField = 'TglJthTempo'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 716
        Top = 128
        Width = 76
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal (F4)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
        TabStop = False
      end
      object GroupBox2: TGroupBox
        Left = 574
        Top = 4
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label10: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText2: TDBText
          Left = 53
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label11: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText3: TDBText
          Left = 54
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object dbg: TdxDBGrid
        Left = 3
        Top = 164
        Width = 794
        Height = 188
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TransID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 2
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 238
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgNota: TdxDBGridButtonColumn
          Caption = 'Nota Konsinyasi '
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgNotaButtonClick
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Harga'
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgDisc: TdxDBGridColumn
          Caption = 'Disc (%)'
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Disc'
        end
        object dbgTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
          SummaryFooterType = cstSum
          SummaryFooterField = 'CTotal'
          SummaryFooterFormat = '0'
          SummaryType = cstSum
          SummaryFormat = '0'
        end
      end
      object dbgSerialNumber: TdxDBGrid
        Left = 3
        Top = 380
        Width = 362
        Height = 178
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 3
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgSerialNumberSNID: TdxDBGridButtonColumn
          Caption = 'Serial Number'
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgSerialNumberSNIDButtonClick
        end
      end
      object dxButton3: TdxButton
        Left = 643
        Top = 530
        Width = 146
        Height = 53
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = '              CARI                 SERIAL NUMBER'
        TabOrder = 4
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 421
        Top = 354
        Width = 91
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 5
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 513
        Top = 354
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 6
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 606
        Top = 354
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 7
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 699
        Top = 354
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 8
        TabStop = False
      end
      object dxButton1: TdxButton
        Tag = 1111
        Left = 4
        Top = 561
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = '(+) SN'
        TabOrder = 9
        TabStop = False
      end
      object dxButton2: TdxButton
        Tag = 2222
        Left = 94
        Top = 561
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(-) SN'
        TabOrder = 10
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 184
        Top = 561
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Simpan'
        TabOrder = 11
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 274
        Top = 561
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Batal'
        TabOrder = 12
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 124
        Top = 8
        Width = 155
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonsinyasiInvID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 124
        Top = 28
        Width = 89
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 124
        Top = 48
        Width = 141
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 124
        Top = 68
        Width = 141
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CurrID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit2: TdxDBEdit
        Left = 124
        Top = 88
        Width = 445
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit3: TdxDBEdit
        Left = 124
        Top = 108
        Width = 36
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 638
        Top = 128
        Width = 76
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 19
        TabStop = False
      end
    end
  end
  inherited paBottom: TdxContainer [4]
    Top = 651
    Width = 990
  end
  inherited paToolBar: TdxContainer
    Width = 990
    inherited sbLast: TSpeedButton
      Left = 962
    end
    inherited sbNext: TSpeedButton
      Left = 939
    end
    inherited sbPrev: TSpeedButton
      Left = 916
    end
    inherited sbFirst: TSpeedButton
      Left = 893
    end
    inherited sbPeriod: TSpeedButton
      Left = 865
    end
    inherited BvlPeriod: TBevel
      Left = 619
    end
    inherited laPeriod: TLabel
      Left = 623
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiInvHd')
    Left = 224
    object quMainKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 50
      Lookup = True
    end
    object quMainTTLKS: TBCDField
      FieldName = 'TTLKS'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##.00'
      Precision = 18
      Size = 0
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainTglJthTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'TglJthTempo'
      Calculated = True
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quMainLSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 100
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quMainBeforeEdit
    BeforeEdit = quMainBeforeEdit
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonsinyasiInvID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiInvDt'
      'WHERE KonsinyasiInvID=:KonsinyasiInvID AND SuppID=:SuppID')
    object quDetilKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLuItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilDisc: TFloatField
      FieldName = 'Disc'
    end
    object quDetilSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by ItemID')
    Left = 204
    Top = 240
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 564
    Top = 104
  end
  object quKonsinyasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <
      item
        Name = 'customerID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  KonsinyasiID  from APTrKonsinyasiHd where customerID = :' +
        'customerID order by KonsinyasiID')
    Left = 232
    Top = 240
  end
  object quKonsinyasiDt: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from APTrKonsinyasiDt')
    Left = 260
    Top = 240
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 696
    Top = 400
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'KonsinyasiInvID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select Sum(Price*Qty) - SUM(Price*Qty*Disc/100) as Total'
      
        '  FROM APTrKonsinyasiInvDt  WHERE KonsinyasiInvID=:KonsinyasiInv' +
        'ID'
      '  AND SuppID=:SuppID')
    Left = 668
    Top = 400
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 316
    Top = 484
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonsinyasiInvId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'KonsinyasiID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'itemId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  FROM APTrKonsinyasiInvDtSN '
      ' WHERE KonsinyasiInvId=:KonsinyasiInvId  '
      ' AND  SuppID=:SuppID'
      ' AND  KonsinyasiID=:KonsinyasiID   '
      ' AND ItemId=:itemId AND Price=:Price')
    Left = 288
    Top = 484
    object quSNKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quSNKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 288
    Top = 240
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 312
    Top = 28
  end
end
