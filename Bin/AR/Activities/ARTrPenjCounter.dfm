inherited fmARTrPenjCounter: TfmARTrPenjCounter
  Left = 164
  Top = 30
  Caption = 'Penjualan Counter'
  ClientHeight = 704
  ClientWidth = 1001
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbRefresh: TSpeedButton
    Left = 109
  end
  inherited paLeft: TdxContainer
    Top = 44
    Width = 112
    Height = 648
    inherited pa3: TdxContainer
      Top = -32119
      Width = 112
      Height = 32767
      Align = alBottom
    end
    inherited paOperation: TdxContainer
      Left = 1
      Top = 1
      Width = 113
      Height = 648
      Align = alNone
      object Shape10: TShape [0]
        Left = 2
        Top = -3
        Width = 109
        Height = 642
        Brush.Color = 13676331
      end
      inherited bbNew: TdxButton
        Left = 5
        Top = 3
        Width = 104
        Height = 105
        Hint = 'Buat Nota Baru'
        BiDiMode = bdRightToLeftNoAlign
        Font.Charset = ANSI_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        ParentBiDiMode = False
        Caption = '       &NOTA               BARU                 (F1)'
        Colors.BackgroundTo = clWhite
      end
      inherited bbDelete: TdxButton
        Left = 5
        Top = 108
        Width = 104
        Height = 105
        Hint = 'Hapus Data'
        BiDiMode = bdRightToLeftNoAlign
        Font.Charset = ANSI_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        ParentBiDiMode = False
        Caption = '       &HAPUS             NOTA                (F2)'
        Colors.BackgroundTo = clWhite
      end
      inherited bbFind: TdxButton
        Left = 5
        Top = 318
        Width = 104
        Height = 105
        Hint = 'Cari Nota'
        Font.Height = -16
        ParentBiDiMode = False
        OnClick = bbFindClick
        Caption = '      &CARI            NOTA'
        Layout = blGlyphBottom
      end
      inherited ceContinuousAdd: TdxCheckEdit
        Left = 8
        Top = 664
        Visible = False
      end
      object dxButton6: TdxButton
        Tag = 5555
        Left = 5
        Top = 213
        Width = 104
        Height = 105
        Cursor = crHandPoint
        Hint = 'Cek Harga & Stock'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = '       C&EK           HARGA             &&                STOK'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        Layout = blGlyphBottom
        TabOrder = 4
      end
      object bbReturn: TdxButton
        Tag = 5555
        Left = 5
        Top = 423
        Width = 104
        Height = 105
        Cursor = crHandPoint
        Hint = 'Untuk Melakukan Retur'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = bbReturnClick
        Caption = 'RE&TURN'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        Layout = blGlyphBottom
        TabOrder = 5
      end
      object bbRefresh: TdxButton
        Tag = 5555
        Left = 5
        Top = 529
        Width = 104
        Height = 105
        Cursor = crHandPoint
        Hint = 'Untuk Perbarui Data'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = bbRefreshClick
        Caption = '&REFRESH'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        Layout = blGlyphBottom
        TabOrder = 6
      end
    end
    inherited pa1: TdxContainer
      Top = 0
      Width = 112
      Height = 3
    end
  end
  inherited paBottom: TdxContainer
    Top = 692
    Width = 1001
  end
  inherited pa2: TdxContainer
    Left = 112
    Top = 44
    Width = 2
    Height = 648
  end
  inherited dxContainer7: TdxContainer
    Left = 114
    Top = 44
    Width = 887
    Height = 648
    inherited pcParent: TdxPageControl
      Width = 887
      Height = 648
      inherited ts01: TdxTabSheet
        object Shape3: TShape [0]
          Left = 1
          Top = 2
          Width = 886
          Height = 63
          Brush.Color = 15259016
        end
        object DBText8: TDBText [1]
          Left = 286
          Top = 46
          Width = 163
          Height = 28
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape6: TShape [2]
          Left = 307
          Top = 412
          Width = 580
          Height = 40
          Brush.Color = 15259016
        end
        object Shape9: TShape [3]
          Left = 307
          Top = 376
          Width = 580
          Height = 37
          Brush.Color = 15259016
        end
        object Shape11: TShape [4]
          Left = 262
          Top = 40
          Width = 364
          Height = 39
          Shape = stRoundRect
        end
        object Shape7: TShape [5]
          Left = 307
          Top = 451
          Width = 580
          Height = 76
          Brush.Color = 15259016
        end
        object Label1: TLabel [6]
          Left = 45
          Top = 9
          Width = 57
          Height = 24
          Alignment = taRightJustify
          Caption = 'Nota :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText [7]
          Left = 110
          Top = 9
          Width = 323
          Height = 28
          DataField = 'SaleID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [8]
          Left = 13
          Top = 37
          Width = 89
          Height = 24
          Alignment = taRightJustify
          Caption = 'Tanggal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText [9]
          Left = 111
          Top = 37
          Width = 146
          Height = 27
          DataField = 'TransDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel [10]
          Left = 642
          Top = 38
          Width = 73
          Height = 24
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText9: TDBText [11]
          Left = 723
          Top = 38
          Width = 162
          Height = 27
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [12]
          Left = 6
          Top = 66
          Width = 184
          Height = 21
          Caption = 'Detail Penjualan Counter'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label3: TLabel [13]
          Left = 327
          Top = 383
          Width = 108
          Height = 24
          Caption = 'SUBTOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [14]
          Left = 314
          Top = 465
          Width = 121
          Height = 43
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -36
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText [15]
          Left = 556
          Top = 381
          Width = 322
          Height = 27
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel [16]
          Left = 548
          Top = 380
          Width = 7
          Height = 24
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText6: TDBText [17]
          Left = 440
          Top = 464
          Width = 442
          Height = 45
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -36
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape8: TShape [18]
          Left = 2
          Top = 84
          Width = 886
          Height = 289
        end
        object Label8: TLabel [19]
          Left = 652
          Top = 10
          Width = 62
          Height = 24
          Alignment = taRightJustify
          Caption = 'Kasir :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText [20]
          Left = 470
          Top = 49
          Width = 153
          Height = 24
          DataField = 'SalesID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape [21]
          Left = 3
          Top = 411
          Width = 302
          Height = 196
        end
        object Label7: TLabel [22]
          Left = 548
          Top = 418
          Width = 7
          Height = 24
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText7: TDBText [23]
          Left = 556
          Top = 418
          Width = 322
          Height = 27
          Alignment = taRightJustify
          DataField = 'Discount'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [24]
          Left = 723
          Top = 8
          Width = 163
          Height = 28
          DataField = 'Kasir'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 709
          Top = 167
          Height = 18
        end
        inherited bbCancel: TdxButton
          Left = 786
          Top = 167
          Width = 98
          Height = 18
        end
        object rbHarga: TRadioGroup
          Left = 309
          Top = 528
          Width = 348
          Height = 60
          Caption = '[ Cetak Harga]'
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'HARGA SATUAN'
            'HARGA GABUNGAN')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object dxButton2: TdxButton
          Left = 991
          Top = 595
          Width = 287
          Height = 44
          Hint = 'Cancel Changes'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = 'Pembayaran (F5)'
          TabOrder = 3
        end
        object dxButton1: TdxButton
          Left = 989
          Top = 542
          Width = 287
          Height = 45
          Hint = 'Buat Cetak Segel'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'Cetak Segel'
          TabOrder = 4
        end
        object dbgPenjualan: TdxDBGrid
          Left = 3
          Top = 85
          Width = 884
          Height = 287
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = dbgPenjualanEnter
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -16
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgPenjualanItemID: TdxDBGridButtonColumn
            Caption = 'Kode Barang'
            Width = 141
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
                Width = 30
              end>
            OnButtonClick = dbgPenjualanItemIDButtonClick
          end
          object dbgPenjualanItemName: TdxDBGridColumn
            Caption = 'Nama Barang'
            Color = clWhite
            ReadOnly = True
            TabStop = False
            Width = 313
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LItemName'
          end
          object dbgPenjualanHarga: TdxDBGridColumn
            Alignment = taRightJustify
            Caption = 'Harga'
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgPenjualanButton: TdxDBGridButtonColumn
            Caption = '    '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            TabStop = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Button'
            ButtonOnly = True
            Buttons = <
              item
                Default = True
                Glyph.Data = {
                  760B0000424D760B00000000000036000000280000003B000000100000000100
                  180000000000400B000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E99A9A9A00
                  00000000004D4D4DA7A7A7FFFFFFFFFFFF000000000000000000000000000000
                  000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF8C8C8C0000000000009A9A9AFFFFFFFFFFFF000000000000FF
                  FFFFC7C7C7000000C7C7C7FFFFFF000000000000FFFFFF000000000000000000
                  000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF686868000000D9D9D9FFFFFFE1E1E10000008C
                  8C8CFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A000000E1E1
                  E1E9E9E90000009A9A9AFFFFFF000000000000FFFFFF9A9A9A0000009A9A9AFF
                  FFFF000000000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7000000000000FFFFFF000000000000FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000FFFF
                  FF000000000000FFFFFF4D4D4D0000004D4D4DFFFFFF000000000000FFFFFF00
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D06868
                  680000000000008C8C8CFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000000000E9E9E90000
                  009A9A9A000000E9E9E9000000000000FFFFFF000000000000FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFE9E9E96868680000000000000000008C8C8CFFFFFFFFFF
                  FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  000000000000FFFFFF000000000000D0D0D0000000E1E1E1000000D0D0D00000
                  00000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C
                  0000000000007C7C7CE1E1E1FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000
                  000000A7A7A7686868FFFFFF686868A7A7A7000000000000FFFFFF0000000000
                  00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C7C7C7FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF000000000000FFFFFF000000000000686868A7A7A7FFFFFF
                  9A9A9A686868000000000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF8C8C8C000000E9E9E9FFFFFFD9D9D9000000686868FFFFFF000000
                  000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                  0000FFFFFF000000000000000000D0D0D0FFFFFFC7C7C7000000000000000000
                  FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A74D
                  4D4D0000000000009A9A9AE9E9E9FFFFFF000000000000000000000000000000
                  000000FFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF00000000000000
                  0000F0F0F0FFFFFFE1E1E1000000000000000000FFFFFF000000000000FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                Kind = bkGlyph
              end>
            OnButtonClick = dbgPenjualanButtonButtonClick
          end
          object dbgPenjualanQty: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgPenjualanTotal: TdxDBGridColumn
            Caption = 'Total'
            Color = clWhite
            ReadOnly = True
            TabStop = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
        end
        object dbgSerialNumber: TdxDBGrid
          Left = 4
          Top = 412
          Width = 300
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = dbgSerialNumberEnter
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -16
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgSerialNumberSNID: TdxDBGridColumn
            Caption = 'Serial Number'
            Width = 244
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 2
          Top = 375
          Width = 99
          Height = 33
          Hint = 'Tambah Barang'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '+ Barang'
          TabOrder = 8
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 103
          Top = 375
          Width = 100
          Height = 33
          Hint = 'Hapus Barang'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '- Barang'
          TabOrder = 9
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 205
          Top = 375
          Width = 100
          Height = 33
          Hint = 'Membatalkan Barang yang baru mau dimasukan'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Cancel'
          TabOrder = 10
        end
        object TmbSN: TdxButton
          Tag = 1111
          Left = 2
          Top = 610
          Width = 99
          Height = 33
          Hint = 'Input Serial Number'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbSNClick
          Caption = '+ SN'
          TabOrder = 11
        end
        object KrgSN: TdxButton
          Tag = 2222
          Left = 103
          Top = 610
          Width = 100
          Height = 32
          Hint = 'Hapus Serial Number'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgSNClick
          Caption = '- SN'
          TabOrder = 12
        end
        object BtlSN: TdxButton
          Tag = 4444
          Left = 205
          Top = 610
          Width = 100
          Height = 32
          Hint = 'Membatalkan Serial Number yang baru mau dimasukan'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlSNClick
          Caption = 'Cancel'
          TabOrder = 13
        end
        object dxButton3: TdxButton
          Tag = 5555
          Left = 312
          Top = 417
          Width = 137
          Height = 30
          Cursor = crHandPoint
          Hint = 'Untuk Memberikan potongan harga'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          BiDiMode = bdLeftToRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton3Click
          Caption = 'DISKON'
          Colors.BackgroundFrom = 15259016
          Colors.BackgroundTo = 15259016
          Colors.BorderEdges = 15259016
          Colors.BorderLine = clBlack
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 7
        end
        object dxButton4: TdxButton
          Tag = 5555
          Left = 273
          Top = 46
          Width = 191
          Height = 30
          Cursor = crHandPoint
          Hint = 'Cari Sales'
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          BiDiMode = bdLeftToRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton4Click
          Caption = 'SALES COUNTER :'
          Colors.BackgroundTo = clWhite
          Colors.BorderEdges = 15259016
          Colors.BorderLine = clBlack
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 14
        end
        object rbCetak: TRadioGroup
          Left = 664
          Top = 528
          Width = 221
          Height = 60
          Caption = '[ Print ]'
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Preview'
            'Cetak')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
        end
        object Button1: TButton
          Left = 596
          Top = 595
          Width = 287
          Height = 44
          Hint = 'Buat Melakukan Pembayara'
          Caption = '&Pembayaran (F5)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnClick = dxButton2Click
        end
        object Button2: TButton
          Left = 310
          Top = 595
          Width = 287
          Height = 44
          Hint = 'Buat Cetak Segel'
          Caption = 'Cetak &Segel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1001
    Height = 44
    object Shape12: TShape [0]
      Left = 66
      Top = 6
      Width = 286
      Height = 31
    end
    inherited sbClose: TSpeedButton
      Left = 3
      Top = 3
      Width = 57
      Height = 39
    end
    inherited sbHelp: TSpeedButton
      Left = 86
    end
    inherited sbLast: TSpeedButton
      Left = 957
      Top = 1
      Width = 41
      Height = 41
    end
    inherited sbNext: TSpeedButton
      Left = 913
      Top = 1
      Width = 43
      Height = 41
    end
    inherited sbPrev: TSpeedButton
      Left = 870
      Top = 1
      Width = 43
      Height = 42
    end
    inherited sbFirst: TSpeedButton
      Left = 825
      Top = 1
      Width = 45
      Height = 41
    end
    inherited Shape1: TShape
      Left = 60
      Height = 43
    end
    inherited Shape2: TShape
      Left = 134
    end
    inherited sbExcel: TSpeedButton
      Left = 138
    end
    inherited sbPeriod: TSpeedButton
      Left = 466
      Top = 5
      Width = 34
      Height = 33
    end
    inherited BvlPeriod: TBevel
      Left = 497
      Width = 326
      Height = 30
    end
    inherited laPeriod: TLabel
      Left = 505
      Top = 10
      Width = 314
      Height = 26
      Alignment = taLeftJustify
      Font.Height = -16
    end
    object Label9: TLabel
      Left = 73
      Top = 7
      Width = 269
      Height = 29
      Caption = 'PENJUALAN COUNTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited quAct: TADOQuery
    Left = 268
    Top = 25
  end
  inherited SCEdit: TdxEditStyleController
    Top = 1
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Top = 1
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    SQL.Strings = (
      'SELECT * FROM ARTrPenjualanHD')
    Left = 216
    Top = 25
    object quMainSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 18
      Size = 0
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'HH:MM:SS'
      EditMask = 'HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainTTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
      Size = 0
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      Precision = 18
      Size = 0
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
    object quMainCharge: TBCDField
      FieldName = 'Charge'
      Precision = 18
      Size = 0
    end
    object quMainFgLunas: TStringField
      FieldName = 'FgLunas'
      Size = 10
    end
    object quMainLuSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSalesName'
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SaleID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainKasir: TStringField
      FieldName = 'Kasir'
      Size = 50
    end
    object quMainAdministrasi: TBCDField
      FieldName = 'Administrasi'
      Precision = 18
      Size = 0
    end
    object quMainNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object quMainAlamat: TStringField
      FieldName = 'Alamat'
      Size = 500
    end
  end
  inherited dsMain: TDataSource
    Left = 244
    Top = 25
  end
  inherited ActionList: TActionList
    Left = 548
    Top = 1
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 115
    end
    object ActionBayar: TAction
      Category = 'Data'
      Caption = 'ActionBayar'
      ShortCut = 116
      OnExecute = dxButton2Click
    end
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quDetilBeforeInsert
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'SaleId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTRPenjualanDt WHERE SaleId=:SaleId')
    Left = 320
    Top = 24
    object quDetilSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
      Size = 30
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetilWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetilButton: TStringField
      FieldName = 'Button'
      FixedChar = True
      Size = 5
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
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
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      Calculated = True
    end
    object quDetilFlagRetur: TStringField
      FieldName = 'FlagRetur'
      Size = 1
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
    Left = 348
    Top = 25
  end
  object quItem: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from INMsItem')
    Left = 308
    Top = 296
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 384
    Top = 25
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 412
    Top = 25
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 440
    Top = 25
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
      'Select SUM (Qty*Price) as SubTotal,'
      'isnull(A.Discount,0) as Discount,'
      'SUM (Qty*Price) - A.Discount  as Total'
      'from ARTrPenjualanhd A INNER JOIN ARTrPenjualanDt B  '
      '        ON A.SaleId=B.SaleId'
      'where B.SaleID=:SaleID'
      'GROUP BY A.Discount')
    Left = 540
    Top = 560
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object quTotalDiscount: TBCDField
      FieldName = 'Discount'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 568
    Top = 560
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
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
      end
      item
        Name = 'WareHouseID'
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
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'Select * from ARTrPenjualanSN'
      'WHERE SaleID=:SaleID AND ItemID=:ItemID'
      'AND WareHouseID=:WareHouseID AND Price=:Price')
    Left = 288
    Top = 484
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
      Size = 0
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
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 316
    Top = 484
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 588
    Top = 8
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
  object quActC: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 468
    Top = 25
  end
end
