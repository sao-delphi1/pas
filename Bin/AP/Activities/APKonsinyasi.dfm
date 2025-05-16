inherited fmAPKonsinyasi: TfmAPKonsinyasi
  Left = 471
  Top = 203
  Caption = 'Penerimaan Barang'
  ClientHeight = 540
  ClientWidth = 1120
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 491
    inherited pa3: TdxContainer
      Height = 312
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 528
    Width = 1120
  end
  inherited pa2: TdxContainer
    Height = 491
  end
  inherited pcMain: TdxPageControl
    Width = 927
    Height = 491
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 779
        Height = 630
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Terima Konsinyasi'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Nota'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Lokasi'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Lokasi'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LWareHouseName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Caption = 'Keterangan'
          DisableEditor = True
          Width = 1204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 61
        Top = 12
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nota GRN :'
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
        Top = 32
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
        Top = 72
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
        Left = 220
        Top = 72
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LSuppName'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 73
        Top = 93
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gudang :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 220
        Top = 92
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LWareHouseName'
        DataSource = dsMain
      end
      object Label5: TLabel
        Left = 56
        Top = 112
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 2
        Top = 131
        Width = 183
        Height = 16
        Caption = 'Detail Penerimaan Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 663
        Top = 131
        Width = 140
        Height = 16
        Caption = 'Detil Serial Number '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 79
        Top = 52
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'No PO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 288
        Top = 52
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LSO'
        DataSource = dsMain
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 508
        Top = 79
        Width = 83
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = '&Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
        TabStop = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 592
        Top = 79
        Width = 83
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
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
        TabOrder = 1
        TabStop = False
      end
      object GroupBox2: TGroupBox
        Left = 671
        Top = 3
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Label10: TLabel
          Left = 17
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText3: TDBText
          Left = 53
          Top = 10
          Width = 160
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
        object DBText4: TDBText
          Left = 53
          Top = 30
          Width = 160
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 149
        Width = 661
        Height = 172
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 3
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
        object dbgPartNo: TdxDBGridButtonColumn
          Caption = 'Part No'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PartNo'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPartNoButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 185
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgCurrID: TdxDBGridButtonColumn
          Caption = 'Valuta'
          Visible = False
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgCurrIDButtonClick
        end
        object dbgColumn9: TdxDBGridColumn
          Caption = 'PO'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LPO'
        end
        object dbgColumn10: TdxDBGridColumn
          Caption = 'Terima'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LTerima'
        end
        object dbgColumn11: TdxDBGridColumn
          Caption = 'Sisa'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LSisa'
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Harga'
          Visible = False
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgProduct: TdxDBGridColumn
          Caption = 'Produk'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuProduct'
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Group'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuGroup'
        end
      end
      object dxDBGrid2: TdxDBGrid
        Left = 661
        Top = 149
        Width = 266
        Height = 291
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <
          item
            DefaultGroup = False
            SummaryItems = <
              item
              end>
            Name = 'dxDBGrid2SummaryGroup2'
          end>
        SummarySeparator = ', '
        TabOrder = 4
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGrid2SNID: TdxDBGridColumn
          Caption = 'Serial Number ( Ctrl + F12 = Kosongkan )'
          Width = 234
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          SummaryFooterType = cstCount
          SummaryFooterField = 'SNID'
          SummaryFooterFormat = '#,0'
          SummaryField = 'SNID'
          SummaryFormat = '#,0'
          SummaryGroupName = 'dxDBGrid2SummaryGroup2'
        end
      end
      object dxButton3: TdxButton
        Left = 346
        Top = 441
        Width = 93
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'CARI SN'
        TabOrder = 5
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 2
        Top = 441
        Width = 85
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 6
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 88
        Top = 441
        Width = 85
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 7
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 174
        Top = 441
        Width = 85
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 8
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 260
        Top = 441
        Width = 85
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 9
        TabStop = False
      end
      object dxButton1: TdxButton
        Tag = 1111
        Left = 662
        Top = 441
        Width = 65
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = '(+) SN'
        TabOrder = 10
        TabStop = False
      end
      object dxButton2: TdxButton
        Tag = 2222
        Left = 728
        Top = 441
        Width = 65
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(-) SN'
        TabOrder = 11
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 794
        Top = 441
        Width = 65
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Simpan'
        TabOrder = 12
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 860
        Top = 441
        Width = 65
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Batal'
        TabOrder = 13
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 124
        Top = 8
        Width = 152
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonsinyasiID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 124
        Top = 28
        Width = 117
        TabOrder = 15
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
        Width = 158
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 124
        Top = 68
        Width = 93
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 124
        Top = 88
        Width = 93
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseID'
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
        Top = 108
        Width = 381
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton6: TdxButton
        Tag = 4444
        Left = 835
        Top = 127
        Width = 90
        Height = 21
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'Generate SN'
        TabOrder = 20
        TabStop = False
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 321
        Width = 661
        Height = 119
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonsinyasiID'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = False
            SummaryItems = <
              item
              end>
            Name = 'dbgSummaryGroup2'
          end>
        SummarySeparator = ', '
        TabOrder = 21
        OnEnter = dbgEnter
        DataSource = dsCek
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGridButtonColumn1: TdxDBGridButtonColumn
          Caption = 'Tanggal Terima'
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Transdate'
          SummaryFooterType = cstCount
          SummaryFooterField = 'Transdate'
          SummaryFooterFormat = '#,0'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
          SummaryField = 'Transdate'
          SummaryFormat = '#,0'
          SummaryGroupName = 'dbgSummaryGroup2'
        end
        object dxDBGrid1Column2: TdxDBGridColumn
          Caption = 'Nota Penerimaan'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
        end
        object dxDBGrid1Column3: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1120
    inherited sbLast: TSpeedButton
      Left = 1092
    end
    inherited sbNext: TSpeedButton
      Left = 1069
    end
    inherited sbPrev: TSpeedButton
      Left = 1046
    end
    inherited sbFirst: TSpeedButton
      Left = 1023
    end
    inherited sbPeriod: TSpeedButton
      Left = 995
    end
    inherited BvlPeriod: TBevel
      Left = 749
    end
    inherited laPeriod: TLabel
      Left = 753
    end
  end
  inherited SCEdit: TdxEditStyleController
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Top = 4
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiHd')
    Left = 224
    object quMainKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
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
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
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
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainLSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSO'
      Size = 200
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Top = 4
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16507
      OnExecute = Action1Execute
    end
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quDetilBeforeEdit
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonsinyasiID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiDt'
      'WHERE KonsinyasiID=:KonsinyasiID')
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLuProduct: TStringField
      FieldKind = fkLookup
      FieldName = 'LuProduct'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ProductDesc'
      KeyFields = 'ItemID'
      Lookup = True
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
    object quDetilLuGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LuGroup'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'GroupDesc'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilCurrID: TStringField
      FieldName = 'CurrID'
      Size = 5
    end
    object quDetilLuValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'LuValuta'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 80
      Lookup = True
    end
    object quDetilPartNo: TStringField
      FieldName = 'PartNo'
      OnChange = quDetilPartNoChange
    end
    object quDetilPOID: TStringField
      FieldKind = fkCalculated
      FieldName = 'POID'
      Size = 100
      Calculated = True
    end
    object quDetilLPO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LPO'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quDetilLTerima: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LTerima'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quDetilLSisa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LSisa'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 668
    Top = 4
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.ItemID,A.ItemName,A.ProductID,A.GroupID, B.ProductDesc,' +
        'C.GroupDesc'
      'FROM INMsItem A'
      'INNER JOIN INMsProduct B ON A.ProductID = B.ProductID'
      'INNER JOIN INMsGroup C ON A.GroupID = C.GroupID')
    Left = 312
    Top = 296
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 640
    Top = 4
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonsinyasiID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM APTrKonsinyasiDtSN '
      'WHERE KonsinyasiID=:KonsinyasiID AND ItemID=:ItemID')
    Left = 748
    Top = 320
    object quSNKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNFgJual: TStringField
      FieldName = 'FgJual'
      Size = 1
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 100
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 772
    Top = 320
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CurrID,CurrName FROM SAMsValuta')
    Left = 696
    Top = 4
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 272
    Top = 52
  end
  object quCek: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'POID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select B.Transdate,B.KonsinyasiID,A.Qty from APTrKonsinyasiDt A '
      'inner join APTrKonsinyasiHd B On A.KonsinyasiID=B.KonsinyasiID'
      'Where A.ItemID=:ItemID AND B.POID=:POID')
    Left = 388
    Top = 4
    object quCekTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quCekKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quCekQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
  end
  object dsCek: TDataSource
    DataSet = quCek
    OnStateChange = dsCekStateChange
    Left = 416
    Top = 4
  end
end
