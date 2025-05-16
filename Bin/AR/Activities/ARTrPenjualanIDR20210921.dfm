inherited fmARTrPenjualanIDR: TfmARTrPenjualanIDR
  Left = 324
  Top = 23
  Caption = 'Penjualan '
  ClientHeight = 631
  ClientWidth = 974
  Color = 11769380
  PixelsPerInch = 96
  TextHeight = 13
  object dxButton5: TdxButton [1]
    Left = 434
    Top = 612
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    Action = ActSave
    TabOrder = 5
  end
  inherited paLeft: TdxContainer
    Height = 582
    inherited pa3: TdxContainer
      Height = 403
      Color = 11769380
      object Label27: TLabel
        Left = 5
        Top = 5
        Width = 81
        Height = 13
        Caption = 'Rek Piutang (P) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 5
        Top = 45
        Width = 67
        Height = 13
        Caption = 'Rek PPN (K) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 5
        Top = 85
        Width = 92
        Height = 13
        Caption = 'Rek Penjualan (K) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 5
        Top = 165
        Width = 98
        Height = 13
        Caption = 'Rek Persediaan (K) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 5
        Top = 125
        Width = 68
        Height = 13
        Caption = 'Rek HPP (D) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 5
        Top = 20
        Width = 125
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningU'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 5
        Top = 60
        Width = 125
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit6ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 5
        Top = 100
        Width = 125
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningK'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit7ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit8: TdxDBButtonEdit
        Left = 5
        Top = 180
        Width = 125
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekPersediaan'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit8ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit9: TdxDBButtonEdit
        Left = 5
        Top = 140
        Width = 125
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekHPP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit9ButtonClick
        ExistButtons = True
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      Color = 11769380
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
      Color = 13676331
    end
  end
  inherited paBottom: TdxContainer
    Top = 619
    Width = 974
  end
  inherited pa2: TdxContainer
    Height = 582
    Color = 13676331
  end
  inherited pcMain: TdxPageControl
    Width = 781
    Height = 582
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 802
        Height = 641
        KeyField = 'PenjualanID'
        Filter.Criteria = {00000000}
        object dbgListNota: TdxDBGridColumn
          Caption = 'Invoice Penjualan'
          Width = 160
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleID'
        end
        object dbgListTanggal: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridColumn
          Caption = 'Kode Pelanggan'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListColumn7: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 164
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustName'
        end
        object dbgListSalesID: TdxDBGridColumn
          Caption = 'Kode Sales'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuSalesName'
        end
        object dbgListColumn8: TdxDBGridColumn
          Caption = 'Nama Sales'
          Width = 213
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuSalesName'
        end
        object dbgListJatuhTempo: TdxDBGridMaskColumn
          Width = 65
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JatuhTempo'
        end
        object dbgListDescription: TdxDBGridMemoColumn
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Shape5: TShape
        Left = 426
        Top = 427
        Width = 354
        Height = 27
        Brush.Color = 13676331
      end
      object Shape3: TShape
        Left = 426
        Top = 401
        Width = 354
        Height = 27
        Brush.Color = 13676331
      end
      object Shape6: TShape
        Left = 426
        Top = 349
        Width = 354
        Height = 27
        Brush.Color = 13676331
      end
      object Label1: TLabel
        Left = 38
        Top = 9
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'No Nota :'
      end
      object Label2: TLabel
        Left = 39
        Top = 29
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal :'
      end
      object Label3: TLabel
        Left = 27
        Top = 49
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pelanggan :'
      end
      object Label4: TLabel
        Left = 52
        Top = 69
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sales :'
      end
      object Label6: TLabel
        Left = 16
        Top = 129
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo :'
      end
      object Label7: TLabel
        Left = 138
        Top = 129
        Width = 19
        Height = 13
        Caption = 'Hari'
      end
      object Label10: TLabel
        Left = 435
        Top = 354
        Width = 72
        Height = 19
        Alignment = taRightJustify
        Caption = 'Sub Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 623
        Top = 355
        Width = 150
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
      object Label13: TLabel
        Left = 4
        Top = 152
        Width = 98
        Height = 16
        Caption = 'Detil Penjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 606
        Top = 354
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
      object DBText4: TDBText
        Left = 218
        Top = 49
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LuCustName'
        DataSource = dsMain
      end
      object DBText5: TDBText
        Left = 218
        Top = 69
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LuSalesName'
        DataSource = dsMain
      end
      object Label19: TLabel
        Left = 606
        Top = 432
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
      object DBText1: TDBText
        Left = 623
        Top = 433
        Width = 150
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
      object Label20: TLabel
        Left = 163
        Top = 129
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
      end
      object DBText2: TDBText
        Left = 253
        Top = 129
        Width = 90
        Height = 13
        DataField = 'TglJtTempo'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 834
        Top = 309
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
      object DBText6: TDBText
        Left = 980
        Top = 309
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LCurrName'
        DataSource = dsMain
      end
      object Label25: TLabel
        Left = 435
        Top = 432
        Width = 88
        Height = 19
        Alignment = taRightJustify
        Caption = 'Grand Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 606
        Top = 404
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
      object DBText12: TDBText
        Left = 623
        Top = 405
        Width = 150
        Height = 17
        Alignment = taRightJustify
        DataField = 'Pajak'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 23
        Top = 109
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
      end
      object Label18: TLabel
        Left = 435
        Top = 405
        Width = 72
        Height = 19
        Alignment = taRightJustify
        Caption = 'PPN 10%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 841
        Top = 329
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rate :'
      end
      object Label8: TLabel
        Left = 222
        Top = 9
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'No FPS :'
      end
      object Label9: TLabel
        Left = 339
        Top = 109
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl KMK :'
        Visible = False
      end
      object Label11: TLabel
        Left = 329
        Top = 89
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Atas Nama :'
      end
      object Label12: TLabel
        Left = 46
        Top = 89
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'No PO :'
      end
      object Shape4: TShape
        Left = 426
        Top = 375
        Width = 354
        Height = 27
        Brush.Color = 13676331
      end
      object Label14: TLabel
        Left = 606
        Top = 378
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
      object Label16: TLabel
        Left = 435
        Top = 378
        Width = 86
        Height = 19
        Alignment = taRightJustify
        Caption = 'Uang Muka'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 518
        Top = 57
        Width = 124
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nota Transfer Konsinyasi :'
      end
      object Label24: TLabel
        Left = 425
        Top = 457
        Width = 132
        Height = 13
        Caption = 'Tabel Cek Pembayaran'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 227
        Top = 29
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'No SO :'
      end
      object Label34: TLabel
        Left = 400
        Top = 29
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'No PI :'
      end
      object DBText7: TDBText
        Left = 623
        Top = 379
        Width = 150
        Height = 17
        Alignment = taRightJustify
        DataField = 'DP'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape7: TShape
        Left = 434
        Top = 675
        Width = 354
        Height = 27
        Brush.Color = 13676331
      end
      object Label35: TLabel
        Left = 443
        Top = 677
        Width = 134
        Height = 19
        Alignment = taRightJustify
        Caption = 'Biaya Pengiriman'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 614
        Top = 677
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
      object DBText10: TDBText
        Left = 631
        Top = 678
        Width = 150
        Height = 17
        Alignment = taRightJustify
        DataField = 'Administrasi'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbgProforma: TdxDBGrid
        Left = 0
        Top = 171
        Width = 782
        Height = 176
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 33
        OnEnter = dbgPenjualanEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgProformaItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPenjualanItemIDButtonClick
        end
        object dbgProformaItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 377
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
          DisableFilter = True
        end
        object dbgProformaJumlah: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgProformaUOMID: TdxDBGridColumn
          Caption = 'Satuan'
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
        end
        object dbgProformaPrice: TdxDBGridColumn
          Alignment = taRightJustify
          Caption = 'Harga'
          Color = clWhite
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgProformaTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATotal'
        end
      end
      object GroupBox2: TGroupBox
        Left = 566
        Top = 0
        Width = 203
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label21: TLabel
          Left = 24
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText8: TDBText
          Left = 61
          Top = 11
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label22: TLabel
          Left = 15
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText9: TDBText
          Left = 61
          Top = 31
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object bbSave: TdxButton
        Left = 585
        Top = 109
        Width = 81
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        Action = ActSave
        Caption = '&Simpan (F3)'
        TabOrder = 1
      end
      object bbCancel: TdxButton
        Left = 667
        Top = 109
        Width = 81
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal (F4)'
        TabOrder = 2
      end
      object dbgPenjualan: TdxDBGrid
        Left = 0
        Top = 171
        Width = 782
        Height = 176
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 3
        OnEnter = dbgPenjualanEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgPenjualanItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPenjualanItemIDButtonClick
        end
        object dbgPenjualanItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 259
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgPenjualanNote: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
          DisableFilter = True
        end
        object dbgPenjualanNote2: TdxDBGridBlobColumn
          Caption = 'Keterangan'
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'note2'
          BlobKind = bkMemo
        end
        object dbgPenjualanWarehouseID: TdxDBGridButtonColumn
          Caption = 'Gudang'
          Visible = False
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WarehouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPenjualanWarehouseIDButtonClick
        end
        object dbgPenjualanQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgPenjualanUOMID: TdxDBGridColumn
          Caption = 'Satuan'
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
        end
        object dbgPenjualanModal: TdxDBGridColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Modal'
        end
        object dbgPenjualanTitipan: TdxDBGridColumn
          Caption = 'Titipan'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Komisi'
        end
        object dbgPenjualanHarga: TdxDBGridColumn
          Alignment = taRightJustify
          Caption = 'Harga'
          Color = clWhite
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgPenjualanTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATotal'
        end
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 1
        Top = 349
        Width = 75
        Height = 22
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
        TabOrder = 4
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 77
        Top = 349
        Width = 75
        Height = 22
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
        TabOrder = 5
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 229
        Top = 349
        Width = 75
        Height = 22
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
        TabOrder = 6
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 153
        Top = 349
        Width = 75
        Height = 22
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
        TabOrder = 7
        TabStop = False
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 875
        Top = 305
        Width = 100
        TabOrder = 8
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
      object dxDBEdit4: TdxDBEdit
        Left = 875
        Top = 325
        Width = 100
        Color = clWhite
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Rate'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        StoredValues = 64
      end
      object CBSpek: TCheckBox
        Left = 387
        Top = 149
        Width = 97
        Height = 17
        Caption = 'Tampilkan Spek'
        TabOrder = 10
      end
      object cbTanggal: TCheckBox
        Left = 261
        Top = 149
        Width = 118
        Height = 17
        Caption = 'Tampilkan Tanggal'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object RgLembar: TRadioGroup
        Left = 311
        Top = 449
        Width = 101
        Height = 67
        Caption = '[ LEMBAR ]'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Asli'
          'Copy')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object dxDBGrid2: TdxDBGrid
        Left = 1
        Top = 373
        Width = 306
        Height = 144
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 13
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGrid2SNID: TdxDBGridButtonColumn
          Caption = 'Serial Number'
          Width = 270
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid2SNIDButtonClick
        end
      end
      object TmbSN: TdxButton
        Tag = 1111
        Left = 1
        Top = 528
        Width = 75
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbSNClick
        Caption = '(+) SN'
        TabOrder = 14
        TabStop = False
      end
      object KrgSN: TdxButton
        Tag = 2222
        Left = 77
        Top = 528
        Width = 75
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgSNClick
        Caption = '(-) SN'
        TabOrder = 15
        TabStop = False
      end
      object SimpanSN: TdxButton
        Tag = 4444
        Left = 153
        Top = 528
        Width = 75
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = SimpanSNClick
        Caption = 'Simpan'
        TabOrder = 16
        TabStop = False
      end
      object BtlSN: TdxButton
        Tag = 4444
        Left = 229
        Top = 528
        Width = 75
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlSNClick
        Caption = 'Batal'
        TabOrder = 17
        TabStop = False
      end
      object dxDBGrid1: TdxDBGrid
        Left = 426
        Top = 473
        Width = 356
        Height = 83
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 18
        DataSource = dscekbayar
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dxDBGrid1Column1: TdxDBGridColumn
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tanggal'
        end
        object dxDBGrid1Column2: TdxDBGridColumn
          Width = 122
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VoucherID'
        end
        object dxDBGrid1Column3: TdxDBGridColumn
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Amount'
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 89
        Top = 5
        Width = 125
        Color = clActiveBorder
        TabOrder = 19
        TabStop = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SaleID'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        StoredValues = 64
      end
      object dxDBEdit2: TdxDBEdit
        Left = 270
        Top = 5
        Width = 163
        Color = clWhite
        TabOrder = 20
        TabStop = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TaxID'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        StoredValues = 64
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 89
        Top = 25
        Width = 104
        TabOrder = 21
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit10: TdxDBButtonEdit
        Left = 270
        Top = 25
        Width = 124
        TabOrder = 22
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SOID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit10ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit11: TdxDBButtonEdit
        Left = 438
        Top = 25
        Width = 124
        TabOrder = 23
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'KontransBrgID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit11ButtonClick
        ExistButtons = True
      end
      object txtPelanggan: TdxDBButtonEdit
        Left = 89
        Top = 45
        Width = 124
        TabOrder = 24
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end
          item
            Default = False
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
              F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
              F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
              F000}
            Kind = bkGlyph
          end>
        OnButtonClick = txtPelangganButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 89
        Top = 65
        Width = 124
        TabOrder = 25
        OnKeyPress = dxDBEdit1KeyPress
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
      object dxDBEdit6: TdxDBEdit
        Left = 89
        Top = 85
        Width = 169
        TabOrder = 26
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit9: TdxDBEdit
        Left = 89
        Top = 105
        Width = 238
        TabOrder = 27
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit3: TdxDBEdit
        Left = 89
        Top = 125
        Width = 45
        TabOrder = 28
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 647
        Top = 53
        Width = 124
        TabOrder = 29
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'KontransBrgID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object dxDBDateEdit2: TdxDBDateEdit
        Left = 391
        Top = 105
        Width = 100
        TabOrder = 30
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'KMKDate'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 391
        Top = 85
        Width = 150
        TabOrder = 31
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Actor'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 623
        Top = 377
        Width = 150
        TabOrder = 32
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'DP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton2: TdxButton
        Left = 309
        Top = 522
        Width = 116
        Height = 32
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'SERIAL NUMBER'
        TabOrder = 34
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 4444
        Left = 433
        Top = 6
        Width = 50
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'Cari'
        TabOrder = 35
        TabStop = False
      end
    end
  end
  object RbCetak: TRadioGroup [6]
    Left = 504
    Top = 444
    Width = 101
    Height = 64
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
    TabOrder = 6
  end
  object dxButton1: TdxButton [7]
    Left = 498
    Top = 409
    Width = 116
    Height = 32
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'CETAK'
    TabOrder = 7
    TabStop = False
  end
  inherited paToolBar: TdxContainer
    Width = 974
    inherited sbLast: TSpeedButton
      Left = 946
    end
    inherited sbNext: TSpeedButton
      Left = 923
    end
    inherited sbPrev: TSpeedButton
      Left = 900
    end
    inherited sbFirst: TSpeedButton
      Left = 877
    end
    inherited sbPeriod: TSpeedButton
      Left = 849
    end
    inherited BvlPeriod: TBevel
      Left = 603
    end
    inherited laPeriod: TLabel
      Left = 607
    end
  end
  object DBFgTrans: TDBRadioGroup [9]
    Left = 503
    Top = 680
    Width = 114
    Height = 38
    Caption = '[ Jenis Transaksi ]'
    Columns = 2
    Ctl3D = False
    DataField = 'FgTrans'
    DataSource = dsMain
    Items.Strings = (
      'Barang'
      'Jasa')
    ParentCtl3D = False
    TabOrder = 8
    Values.Strings = (
      'B'
      'J')
    Visible = False
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quMainBeforeEdit
    AfterCancel = quDetilAfterDelete
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,'
      'Case When FgLunas ='#39'T'#39'  Then '#39'Belum Cetak'#39' '
      '         When FgLunas = '#39'Y'#39' Then '#39'Sudah Cetak'#39' '
      '         When FgLunas = '#39'B'#39' Then '#39'Belum Cetak'#39
      '         When FgLunas = '#39'S'#39' Then '#39'Sudah Cetak'#39' end as FlagLunas,'
      'Case When FlagCounter='#39'C'#39' Then '#39'PENJ CONTER'#39' '
      '         When FlagCounter='#39'L'#39' Then '#39'PENJ RETAIL'#39
      '         When FlagCounter='#39'D'#39' Then '#39'PENJ DISTRIBUSI'#39
      
        '         When FlagCounter='#39'P'#39' Then '#39'PENJ CORPORATE'#39'  end as Stat' +
        'us,'
      'Case When FgTax = '#39'Y'#39' then 10 else 0 end as Pajak'
      'FROM ARTrPenjualanHd'
      '')
    Left = 224
    object quMainSaleID: TStringField
      FieldName = 'SaleID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      OnChange = quMainCustIDChange
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainDiscount: TBCDField
      FieldName = 'Discount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:YY'
      EditMask = 'DD MMMM YYYY HH:MM:YY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainLuCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCustName'
      LookupDataSet = quPelanggan
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainLuSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainTglJtTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'TglJtTempo'
      Calculated = True
    end
    object quMainFlagCounter: TStringField
      FieldName = 'FlagCounter'
      FixedChar = True
      Size = 1
    end
    object quMainStPj: TBCDField
      FieldName = 'StPj'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
      Size = 0
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
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainCPiutang: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CPiutang'
      Calculated = True
    end
    object quMainCharge: TBCDField
      FieldName = 'Charge'
      Precision = 18
      Size = 0
    end
    object quMainTTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
    end
    object quMainFgLunas: TStringField
      FieldName = 'FgLunas'
      Size = 10
    end
    object quMainFlagLunas: TStringField
      FieldName = 'FlagLunas'
      ReadOnly = True
      Size = 11
    end
    object quMainAdministrasi: TBCDField
      FieldName = 'Administrasi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainNama: TStringField
      FieldName = 'Nama'
    end
    object quMainAlamat: TStringField
      FieldName = 'Alamat'
      Size = 500
    end
    object quMainKasir: TStringField
      FieldName = 'Kasir'
      Size = 50
    end
    object quMainStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 13
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      OnChange = quMainSOIDChange
      Size = 50
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainTaxID: TStringField
      FieldName = 'TaxID'
      Size = 30
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainPajak: TIntegerField
      FieldName = 'Pajak'
      ReadOnly = True
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainFgTrans: TStringField
      FieldName = 'FgTrans'
      Size = 1
    end
    object quMainPPNFee: TBCDField
      FieldName = 'PPNFee'
      Precision = 18
    end
    object quMainActor: TStringField
      FieldName = 'Actor'
    end
    object quMainNoFaktur: TStringField
      FieldName = 'NoFaktur'
    end
    object quMainKMKID: TStringField
      FieldName = 'KMKID'
    end
    object quMainKMKData: TDateTimeField
      FieldName = 'KMKData'
    end
    object quMainKMKDate: TDateTimeField
      FieldName = 'KMKDate'
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
    end
    object quMainRekeningP: TStringField
      FieldName = 'RekeningP'
    end
    object quMainRekeningU: TStringField
      FieldName = 'RekeningU'
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
    end
    object quMainFgForm: TStringField
      FieldName = 'FgForm'
    end
    object quMainKontransBrgID: TStringField
      FieldName = 'KontransBrgID'
      Size = 50
    end
    object quMainRekPersediaan: TStringField
      FieldName = 'RekPersediaan'
      Size = 50
    end
    object quMainRekHPP: TStringField
      FieldName = 'RekHPP'
      Size = 50
    end
    object quMainHPP: TBCDField
      FieldName = 'HPP'
      Precision = 18
    end
  end
  inherited dsMain: TDataSource
    OnDataChange = dsMainDataChange
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    BeforeInsert = quDetilBeforeInsert
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPenjualanDt'
      'WHERE SaleID=:SaleID'
      'ORDER BY Urut')
    Left = 328
    object quDetilSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quDetilWarehouseID: TStringField
      FieldName = 'WarehouseID'
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
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object quDetilLuWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuWareHouseName'
      LookupDataSet = quLokasi
      LookupKeyFields = 'WareHouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WarehouseID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quDetilATotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ATotal'
      LookupCache = True
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 200
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
    object quDetilKomisi: TBCDField
      FieldName = 'Komisi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilFlagRetur: TStringField
      FieldName = 'FlagRetur'
      Size = 1
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilnote2: TStringField
      FieldName = 'note2'
      Size = 500
    end
    object quDetilUrut: TBCDField
      FieldName = 'Urut'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object quDetilModal: TBCDField
      FieldName = 'Modal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quPelanggan: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select CustID,'
      
        'CASE WHEN CustType ='#39'U'#39' THEN '#39'USER - '#39'+CustName ELSE '#39'DEALER - '#39 +
        '+CustName'
      'END as CustName from ARMsCustomer')
    Left = 368
    Top = 116
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select SalesID, SalesName From ARMsSales')
    Left = 396
    Top = 116
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ItemID, ItemName,Komisi from INMsItem')
    Left = 308
    Top = 296
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 336
    Top = 296
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.SubTotal,(K.SubTotal-K.DP)*0.1 as Pajak,(K.SubTotal-K.D' +
        'P)+(K.SubTotal-K.DP)*0.1+K.Ongkir as GT,K.modal FROM ('
      
        'SELECT ISNULL(SUM(Qty*Price),0) as SubTotal,ISNULL(B.DP,0) as DP' +
        ',ISNULL(SUM(Qty*Modal),0) as Modal,ISNULL(B.Administrasi,0) as O' +
        'ngkir'
      'FROM ARTrPenjualanDt A'
      'INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID'
      'WHERE A.SaleID=:SaleID'
      'GROUP BY B.DP,B.Administrasi) as K')
    Left = 800
    Top = 360
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalmodal: TBCDField
      FieldName = 'modal'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 828
    Top = 360
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 548
    Top = 320
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 608
    Top = 320
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 636
    Top = 320
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
    Left = 364
    Top = 296
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 664
    Top = 320
    object StringField1: TStringField
      FieldName = 'SuppID'
    end
    object StringField2: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'City'
      Size = 150
    end
    object StringField5: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'Phone'
    end
    object StringField7: TStringField
      FieldName = 'Fax'
    end
    object StringField8: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UpdDate'
    end
    object StringField10: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quPiutang: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 692
    Top = 320
    object StringField11: TStringField
      FieldName = 'SuppID'
    end
    object StringField12: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object StringField14: TStringField
      FieldName = 'City'
      Size = 150
    end
    object StringField15: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object StringField16: TStringField
      FieldName = 'Phone'
    end
    object StringField17: TStringField
      FieldName = 'Fax'
    end
    object StringField18: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'UpdDate'
    end
    object StringField20: TStringField
      FieldName = 'UpdUser'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 420
    Top = 4
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforeEdit = quSNBeforeEdit
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    AfterDelete = quSNAfterDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPenjualanSN'
      'WHERE SaleID=:SaleID AND ItemID=:ItemID')
    Left = 308
    Top = 504
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quSNWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
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
    Left = 332
    Top = 504
  end
  object qucekbayar: TADOQuery
    Connection = dmMain.dbConn
    OnNewRecord = quDetilNewRecord
    DataSource = dsMain
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      
        'select CONVERT(VARCHAR(10),Y.Transdate1,103) as Tanggal,X.Vouche' +
        'rID,X.Amount '
      
        'from CFTrKKBBDt X inner join CFTrKKBBHd Y on X.VoucherID=Y.Vouch' +
        'erID WHERE X.Note=:SaleID')
    Left = 836
    Top = 572
    object qucekbayarTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object qucekbayarVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 30
    end
    object qucekbayarAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  object dscekbayar: TDataSource
    DataSet = qucekbayar
    OnStateChange = dscekbayarStateChange
    Left = 864
    Top = 572
  end
end
