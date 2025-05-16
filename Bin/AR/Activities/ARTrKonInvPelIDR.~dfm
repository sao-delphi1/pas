inherited fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR
  Left = 225
  Top = 50
  Caption = 'Form Invoice Konsinyasi'
  ClientHeight = 603
  ClientWidth = 982
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 554
    inherited pa3: TdxContainer
      Height = 375
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 591
    Width = 982
  end
  inherited pa2: TdxContainer
    Height = 554
  end
  inherited pcMain: TdxPageControl
    Width = 789
    Height = 554
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 792
        Height = 635
        KeyField = 'KonInvPelID'
        Filter.Criteria = {00000000}
        object dbgListKonInvPelID: TdxDBGridMaskColumn
          Caption = 'Nota Invoice Konsinyasi Penjualan'
          Width = 182
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonInvPelID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListPelangganName: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          Width = 178
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListJatuhTempo: TdxDBGridMaskColumn
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JatuhTempo'
        end
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Valuta'
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
        end
        object dbgListNote: TdxDBGridMemoColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 21
        Top = 18
        Width = 94
        Height = 13
        Alignment = taRightJustify
        Caption = 'Invoice Konsinyasi :'
        Color = 14467152
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 38
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal Penjualan :'
        Color = 14467152
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 59
        Top = 58
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pelanggan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 55
        Top = 138
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
      end
      object Label6: TLabel
        Left = 48
        Top = 158
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 161
        Top = 158
        Width = 19
        Height = 13
        Caption = 'Hari'
      end
      object DBText4: TDBText
        Left = 259
        Top = 57
        Width = 530
        Height = 17
        DataField = 'CustName'
        DataSource = dsMain
      end
      object Label13: TLabel
        Left = 5
        Top = 174
        Width = 122
        Height = 20
        Caption = 'Detil Penjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 323
        Width = 160
        Height = 16
        Caption = 'Serial Number per Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Shape7: TShape
        Left = 374
        Top = 406
        Width = 403
        Height = 27
        Brush.Color = 15259016
      end
      object Shape5: TShape
        Left = 374
        Top = 380
        Width = 403
        Height = 27
        Brush.Color = 15259016
      end
      object Shape3: TShape
        Left = 374
        Top = 330
        Width = 403
        Height = 27
        Brush.Color = 15259016
      end
      object Shape4: TShape
        Left = 374
        Top = 356
        Width = 403
        Height = 27
        Brush.Color = 15259016
      end
      object Shape6: TShape
        Left = 374
        Top = 304
        Width = 403
        Height = 27
        Brush.Color = 15259016
      end
      object Label10: TLabel
        Left = 382
        Top = 309
        Width = 137
        Height = 19
        Alignment = taRightJustify
        Caption = 'SUBTOTAL NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 382
        Top = 333
        Width = 129
        Height = 19
        Alignment = taRightJustify
        Caption = 'DISCOUNT           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 384
        Top = 409
        Width = 86
        Height = 19
        Alignment = taRightJustify
        Caption = 'SISA NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 565
        Top = 308
        Width = 196
        Height = 17
        Alignment = taRightJustify
        DataField = 'SubTotal'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 557
        Top = 308
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 565
        Top = 410
        Width = 196
        Height = 17
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 557
        Top = 332
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 557
        Top = 410
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 384
        Top = 383
        Width = 23
        Height = 19
        Alignment = taRightJustify
        Caption = 'DP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 557
        Top = 385
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 383
        Top = 359
        Width = 169
        Height = 19
        Alignment = taRightJustify
        Caption = 'GRAND TOTAL NOTA '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 557
        Top = 358
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 565
        Top = 360
        Width = 197
        Height = 17
        Alignment = taRightJustify
        DataField = 'GT'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 202
        Top = 158
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
      end
      object DBText5: TDBText
        Left = 292
        Top = 158
        Width = 141
        Height = 13
        DataField = 'CJthTempo'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = -2
        Top = 98
        Width = 116
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valuta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 259
        Top = 97
        Width = 529
        Height = 17
        DataField = 'LCurrName'
        DataSource = dsMain
      end
      object DBText10: TDBText
        Left = 281
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
      object Label22: TLabel
        Left = 84
        Top = 78
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sales :'
      end
      object DBText9: TDBText
        Left = 260
        Top = 77
        Width = 499
        Height = 14
        DataField = 'SalesName'
        DataSource = dsMain
      end
      object Label24: TLabel
        Left = 38
        Top = 118
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'No Sales Order :'
      end
      object Label35: TLabel
        Left = 6
        Top = 416
        Width = 172
        Height = 16
        Caption = 'Nota Pembelian per Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 566
        Top = 4
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText3: TDBText
          Left = 53
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label15: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText6: TDBText
          Left = 54
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object RbCetak: TRadioGroup
        Left = 378
        Top = 439
        Width = 112
        Height = 87
        Caption = '[ CETAK ]'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Invoice'
          'Surat Jalan')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object dxButton1: TdxButton
        Left = 616
        Top = 485
        Width = 160
        Height = 41
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'CETAK FAKTUR'
        TabOrder = 2
      end
      object RbHarga: TRadioGroup
        Left = 494
        Top = 439
        Width = 113
        Height = 86
        Caption = '[ HARGA ]'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Satuan'
          'Gabungan')
        ParentCtl3D = False
        TabOrder = 3
      end
      object dxButton3: TdxButton
        Left = 616
        Top = 441
        Width = 160
        Height = 41
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = ' SERIAL NUMBER'
        TabOrder = 4
      end
      object dxDBGrid1: TdxDBGrid
        Left = 5
        Top = 194
        Width = 781
        Height = 103
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'KonInvPelDetID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 5
        OnEnter = dxDBGrid1Enter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGrid1ItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 121
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1ItemIDButtonClick
        end
        object dxDBGrid1ItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 243
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dxDBGrid1Konsinyasi: TdxDBGridButtonColumn
          Caption = 'Nota Konsinyasi'
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonTransBrgId'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1KonsinyasiButtonClick
        end
        object dxDBGrid1UserPrice: TdxDBGridColumn
          Caption = 'Harga'
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dxDBGrid1Qty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dxDBGrid1UpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGrid1UpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dxDBGrid1ValueTotal: TdxDBGridColumn
          Caption = 'Total'
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
        end
      end
      object dbgSerialNumber: TdxDBGrid
        Left = 4
        Top = 341
        Width = 362
        Height = 53
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 6
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
      object txtKonInvPelID: TdxDBEdit
        Left = 120
        Top = 14
        Width = 157
        TabOrder = 7
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'KonInvPelID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object bbSave: TdxButton
        Left = 619
        Top = 142
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        TabOrder = 8
      end
      object bbCancel: TdxButton
        Left = 699
        Top = 142
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        Action = ActCancel
        Caption = 'Batal (F4)'
        TabOrder = 9
      end
      object txtTransDate: TdxDBDateEdit
        Left = 120
        Top = 34
        Width = 89
        TabOrder = 10
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object txtPelangganID: TdxDBButtonEdit
        Left = 120
        Top = 54
        Width = 137
        TabOrder = 11
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = txtPelangganIDButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 120
        Top = 74
        Width = 137
        TabOrder = 12
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'SalesID'
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
        Left = 120
        Top = 94
        Width = 137
        TabOrder = 13
        OnKeyPress = txtKonInvPelIDKeyPress
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
      object dxDBEdit1: TdxDBEdit
        Left = 120
        Top = 114
        Width = 137
        TabOrder = 14
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'SOID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 120
        Top = 134
        Width = 461
        TabOrder = 15
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object txtJatuhTempo: TdxDBMaskEdit
        Left = 120
        Top = 154
        Width = 33
        TabOrder = 16
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 567
        Top = 333
        Width = 196
        TabOrder = 17
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Discount'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 566
        Top = 384
        Width = 198
        TabOrder = 18
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'DP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 277
        Top = 300
        Width = 91
        Height = 22
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
        TabOrder = 19
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 186
        Top = 300
        Width = 91
        Height = 22
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
        TabOrder = 20
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 95
        Top = 300
        Width = 91
        Height = 22
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
        TabOrder = 21
        TabStop = False
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 5
        Top = 300
        Width = 90
        Height = 22
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
        TabOrder = 22
        TabStop = False
      end
      object dxButton6: TdxButton
        Tag = 1111
        Left = 5
        Top = 396
        Width = 82
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = '(+) SN'
        TabOrder = 23
        TabStop = False
      end
      object dxButton7: TdxButton
        Tag = 2222
        Left = 88
        Top = 396
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton7Click
        Caption = '(-) SN'
        TabOrder = 24
        TabStop = False
      end
      object dxButton8: TdxButton
        Tag = 4444
        Left = 172
        Top = 396
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = 'Simpan'
        TabOrder = 25
        TabStop = False
      end
      object dxButton9: TdxButton
        Tag = 4444
        Left = 256
        Top = 396
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton9Click
        Caption = 'Batal'
        TabOrder = 26
        TabStop = False
      end
      object dbgCost: TdxDBGrid
        Left = 6
        Top = 434
        Width = 362
        Height = 63
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 27
        DataSource = dsCostItem
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgCostPurchaseID: TdxDBGridButtonColumn
          Caption = 'Nota Pembelian'
          Width = 215
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgCostPurchaseIDButtonClick
        end
        object dbgCostKonInvPelID: TdxDBGridMaskColumn
          Visible = False
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonInvPelID'
        end
        object dbgCostItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgCostPrice: TdxDBGridCurrencyColumn
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgCostUpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgCostQty: TdxDBGridColumn
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgCostUpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 121
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
      object dxButton2: TdxButton
        Tag = 1111
        Left = 5
        Top = 501
        Width = 82
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(+) Data'
        TabOrder = 28
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 2222
        Left = 88
        Top = 501
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = '(-) Data'
        TabOrder = 29
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 172
        Top = 501
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Simpan'
        TabOrder = 30
        TabStop = False
      end
      object dxButton10: TdxButton
        Tag = 4444
        Left = 256
        Top = 501
        Width = 83
        Height = 20
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton10Click
        Caption = 'Batal'
        TabOrder = 31
        TabStop = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 982
    inherited sbLast: TSpeedButton
      Left = 954
    end
    inherited sbNext: TSpeedButton
      Left = 931
    end
    inherited sbPrev: TSpeedButton
      Left = 908
    end
    inherited sbFirst: TSpeedButton
      Left = 885
    end
    inherited sbPeriod: TSpeedButton
      Left = 857
    end
    inherited BvlPeriod: TBevel
      Left = 611
    end
    inherited laPeriod: TLabel
      Left = 615
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelHd ')
    object quMainKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'SalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      Size = 50
      Lookup = True
    end
    object quMainCJthTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CJthTempo'
      Calculated = True
    end
    object quMainDiscount: TBCDField
      FieldName = 'Discount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
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
    object quMainTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      Precision = 18
      Size = 0
    end
    object quMainSTKJ: TBCDField
      FieldName = 'STKJ'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    DataSource = fmStdLv3.dsDetil
    Parameters = <
      item
        Name = 'KonInvPelID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelDt'
      'WHERE KonInvPelID=:KonInvPelID')
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilLItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quDetilKomisi: TBCDField
      FieldName = 'Komisi'
      Precision = 18
    end
    object quDetilLKomisi: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LKomisi'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'Komisi'
      KeyFields = 'ItemID'
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
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
        Name = 'KonInvPelId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'KonTransBrgId'
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
        Size = 50
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelDtSN '
      'WHERE KonInvPeLId=:KonInvPeLId AND KonTransBrgId=:KonTransBrgId'
      'AND ItemId=:itemId AND Price=:Price')
    Left = 344
    Top = 404
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quSNKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
    object quSNModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 372
    Top = 404
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 516
    Top = 100
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsSales ORDER BY SalesName')
    Left = 544
    Top = 100
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from INMsItem')
    Left = 308
    Top = 296
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 334
    Top = 296
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'KonInvPelID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select SUM (Qty*Price) as SubTotal,'
      'A.Discount,'
      'SUM (Qty*Price) -A.Discount as GT ,'
      'SUM (Qty*Price) -A.Discount-A.DP as Total'
      'from ARTrKonInvPelhd A INNER JOIN ARTrKonInvPelDt B  '
      '        ON A.KonInvPelId=B.KonInvPelId'
      ''
      ''
      'where B.KonInvPelID=:KonInvPelID'
      'GROUP BY A.Discount,A.Dp')
    Left = 496
    Top = 477
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
    object quTotalDiscount: TBCDField
      FieldName = 'Discount'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 524
    Top = 477
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
    Left = 360
    Top = 296
  end
  object quCostItem: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quCostItemBeforeInsert
    BeforePost = quCostItemBeforePost
    AfterPost = quCostItemAfterPost
    BeforeDelete = quCostItemBeforeDelete
    OnNewRecord = quCostItemNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonInvPelID'
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
        Size = 50
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
      end
      item
        Name = 'KonTransBrgID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select * from ARTrKonInvPelCost'
      'WHERE KonInvPelID=:KonInvPelID AND ItemID=:ItemID'
      'AND Price=:Price AND KonTransBrgID=:KonTransBrgID')
    Left = 384
    Top = 524
    object quCostItemPurchaseID: TStringField
      FieldName = 'PurchaseID'
      OnChange = quCostItemPurchaseIDChange
      Size = 30
    end
    object quCostItemKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quCostItemItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quCostItemKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quCostItemPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quCostItemUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quCostItemUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quCostItemQty: TIntegerField
      FieldName = 'Qty'
    end
    object quCostItemModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
  end
  object dsCostItem: TDataSource
    DataSet = quCostItem
    OnStateChange = dsCostItemStateChange
    Left = 412
    Top = 524
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 212
  end
end
