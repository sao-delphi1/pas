inherited fmARTrMonitor: TfmARTrMonitor
  Left = 33
  Top = 19
  Caption = 'Form Monitoring Counter'
  ClientHeight = 684
  ClientWidth = 969
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 969
    inherited sbLast: TSpeedButton
      Left = 941
    end
    inherited sbNext: TSpeedButton
      Left = 918
    end
    inherited sbPrev: TSpeedButton
      Left = 895
    end
    inherited sbFirst: TSpeedButton
      Left = 872
    end
    inherited sbPeriod: TSpeedButton
      Left = 844
    end
    inherited BvlPeriod: TBevel
      Left = 598
    end
    inherited laPeriod: TLabel
      Left = 602
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 969
    Height = 647
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label3: TLabel
      Left = 736
      Top = 12
      Width = 116
      Height = 19
      Caption = 'Tanggal Jual   :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 35
      Width = 472
      Height = 300
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 7
        Top = 160
        Width = 150
        Height = 19
        Caption = 'DETIL PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 7
        Top = 13
        Width = 148
        Height = 19
        Caption = 'NOTA PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 219
        Top = 13
        Width = 60
        Height = 19
        Caption = 'KASIR :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object dbgPenjualan: TdxDBGrid
        Left = 1
        Top = 37
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsMain
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgPenjualanSalesId: TdxDBGridMaskColumn
          Caption = 'Kode Sales'
          ReadOnly = True
          Visible = False
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesId'
        end
        object dbgPenjualanSalesName: TdxDBGridMaskColumn
          Caption = 'Nama Sales'
          ReadOnly = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgPenjualanSaleId: TdxDBGridMaskColumn
          Caption = 'Nota'
          ReadOnly = True
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleId'
        end
        object dbgPenjualanTgl_Nota: TdxDBGridMaskColumn
          Caption = 'Tgl Penjualan'
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tgl_Nota'
        end
        object dbgPenjualanTotalNota: TdxDBGridColumn
          Caption = 'TOTAL NOTA'
          ReadOnly = True
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TTLPj'
        end
        object dbgPenjualanStatus: TdxDBGridColumn
          Caption = 'Status Lunas'
          ReadOnly = True
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
      end
      object dbgDetilPenjualan: TdxDBGrid
        Left = 1
        Top = 179
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgDetilPenjualanKodebarang: TdxDBGridMaskColumn
          Caption = 'Kode Barang'
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgDetilPenjualanNamabarang: TdxDBGridColumn
          Caption = 'Nama Barang'
          ReadOnly = True
          TabStop = False
          Width = 263
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgDetilPenjualanHarga: TdxDBGridCurrencyColumn
          Caption = 'Harga'
          ReadOnly = True
          TabStop = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgDetilPenjualanJumlah: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          ReadOnly = True
          TabStop = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
      end
      object CBKasir: TComboBox
        Left = 292
        Top = 9
        Width = 178
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 19
        ParentFont = False
        TabOrder = 2
      end
    end
    object Button1: TButton
      Left = 16
      Top = 5
      Width = 117
      Height = 32
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DateTrans: TdxDateEdit
      Left = 866
      Top = 7
      Width = 93
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      StyleController = SCEdit
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object GroupBox2: TGroupBox
      Left = 7
      Top = 338
      Width = 472
      Height = 300
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object Label4: TLabel
        Left = 7
        Top = 160
        Width = 150
        Height = 19
        Caption = 'DETIL PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 13
        Width = 148
        Height = 19
        Caption = 'NOTA PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 219
        Top = 13
        Width = 60
        Height = 19
        Caption = 'KASIR :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object dbgPenjualan3: TdxDBGrid
        Left = 1
        Top = 37
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsMain3
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgPenjualan3SalesID: TdxDBGridMaskColumn
          Caption = 'Kode Sales'
          ReadOnly = True
          Visible = False
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesId'
        end
        object dbgPenjualan3SalesName: TdxDBGridMaskColumn
          Caption = 'Nama Sales'
          ReadOnly = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgPenjualan3Nota: TdxDBGridMaskColumn
          Caption = 'Nota'
          ReadOnly = True
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleId'
        end
        object dbgPenjualan3TglPenjualan: TdxDBGridMaskColumn
          Caption = 'Tgl Penjualan'
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tgl_Nota'
        end
        object dbgPenjualan3TotalNota: TdxDBGridColumn
          Caption = 'TOTAL NOTA'
          ReadOnly = True
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TTLPj'
        end
        object dbgPenjualan3Status: TdxDBGridColumn
          Caption = 'Status Lunas'
          ReadOnly = True
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
      end
      object dbgDetilPenjualan3: TdxDBGrid
        Left = 1
        Top = 179
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsDetil3
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgDetilPenjualan3ItemID: TdxDBGridMaskColumn
          Caption = 'Kode Barang'
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgDetilPenjualan3ItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          ReadOnly = True
          TabStop = False
          Width = 263
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgDetilPenjualan3Harga: TdxDBGridCurrencyColumn
          Caption = 'Harga'
          ReadOnly = True
          TabStop = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgDetilPenjualan3Jumlah: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          ReadOnly = True
          TabStop = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
      end
      object CBKasir3: TComboBox
        Left = 292
        Top = 9
        Width = 178
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 19
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 487
      Top = 338
      Width = 472
      Height = 300
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      object Label6: TLabel
        Left = 7
        Top = 160
        Width = 150
        Height = 19
        Caption = 'DETIL PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 7
        Top = 13
        Width = 148
        Height = 19
        Caption = 'NOTA PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 219
        Top = 13
        Width = 60
        Height = 19
        Caption = 'KASIR :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object dbgPenjualan4: TdxDBGrid
        Left = 1
        Top = 37
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsMain4
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgPenjualan4SalesID: TdxDBGridMaskColumn
          Caption = 'Kode Sales'
          ReadOnly = True
          Visible = False
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesId'
        end
        object dbgPenjualan4SalesName: TdxDBGridMaskColumn
          Caption = 'Nama Sales'
          ReadOnly = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgPenjualan4Nota: TdxDBGridMaskColumn
          Caption = 'Nota'
          ReadOnly = True
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleId'
        end
        object dbgPenjualan4TglPenjualan: TdxDBGridMaskColumn
          Caption = 'Tgl Penjualan'
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tgl_Nota'
        end
        object dbgPenjualan4TotalNota: TdxDBGridColumn
          Caption = 'TOTAL NOTA'
          ReadOnly = True
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TTLPj'
        end
        object dbgPenjualan4Status: TdxDBGridColumn
          Caption = 'Status Lunas'
          ReadOnly = True
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
      end
      object dbgDetilPenjualan4: TdxDBGrid
        Left = 1
        Top = 179
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsDetil4
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgDetilPenjualan4ItemID: TdxDBGridMaskColumn
          Caption = 'Kode Barang'
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgDetilPenjualan4ItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          ReadOnly = True
          TabStop = False
          Width = 263
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgDetilPenjualan4Harga: TdxDBGridCurrencyColumn
          Caption = 'Harga'
          ReadOnly = True
          TabStop = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgDetilPenjualan4Jumlah: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          ReadOnly = True
          TabStop = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
      end
      object CBKasir4: TComboBox
        Left = 292
        Top = 9
        Width = 178
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 19
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      Left = 487
      Top = 35
      Width = 472
      Height = 300
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      object Label8: TLabel
        Left = 7
        Top = 160
        Width = 150
        Height = 19
        Caption = 'DETIL PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 7
        Top = 13
        Width = 148
        Height = 19
        Caption = 'NOTA PENJUALAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 219
        Top = 13
        Width = 60
        Height = 19
        Caption = 'KASIR :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object dbgPenjualan2: TdxDBGrid
        Left = 1
        Top = 37
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsMain2
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgPenjualan2SalesID: TdxDBGridMaskColumn
          Caption = 'Kode Sales'
          ReadOnly = True
          Visible = False
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesId'
        end
        object dbgPenjualan2Sales: TdxDBGridMaskColumn
          Caption = 'Nama Sales'
          ReadOnly = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgPenjualan2Nota: TdxDBGridMaskColumn
          Caption = 'Nota'
          ReadOnly = True
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SaleId'
        end
        object dbgPenjualan2TglPenjualan: TdxDBGridMaskColumn
          Caption = 'Tgl Penjualan'
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tgl_Nota'
        end
        object dbgPenjualan2TotalNota: TdxDBGridColumn
          Caption = 'TOTAL NOTA'
          ReadOnly = True
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TTLPj'
        end
        object dbgPenjualan2Status: TdxDBGridColumn
          Caption = 'Status Lunas'
          ReadOnly = True
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
      end
      object dbgDetilPenjualan2: TdxDBGrid
        Left = 1
        Top = 179
        Width = 470
        Height = 120
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsDetil2
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
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
        object dbgDetilPenjualan2ItemID: TdxDBGridMaskColumn
          Caption = 'Kode Barang'
          ReadOnly = True
          TabStop = False
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgDetilPenjualan2Itemname: TdxDBGridColumn
          Caption = 'Nama Barang'
          ReadOnly = True
          TabStop = False
          Width = 263
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgDetilPenjualan2Harga: TdxDBGridCurrencyColumn
          Caption = 'Harga'
          ReadOnly = True
          TabStop = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgDetilPenjualan2Jumlah: TdxDBGridMaskColumn
          Caption = 'Jumlah'
          ReadOnly = True
          TabStop = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
      end
      object CBKasir2: TComboBox
        Left = 292
        Top = 9
        Width = 178
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 19
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited quMain: TADOQuery
    Left = 108
    Top = 164
    object quMainSalesId: TStringField
      FieldName = 'SalesId'
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainSaleId: TStringField
      FieldName = 'SaleId'
      Size = 30
    end
    object quMainTgl_Nota: TStringField
      FieldName = 'Tgl_Nota'
      ReadOnly = True
      Size = 10
    end
    object quMainTTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
      Size = 0
    end
    object quMainStatus: TStringField
      FieldName = 'Status'
      Size = 80
    end
  end
  inherited dsMain: TDataSource
    Left = 136
    Top = 164
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
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
    Left = 104
    Top = 313
    object quDetilSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
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
    object quDetilLitemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    Left = 128
    Top = 313
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from INMsItem')
    Left = 308
    Top = 176
  end
  object Timer1: TTimer
    Interval = 50000
    OnTimer = Timer1Timer
    Left = 388
  end
  object quMain2: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quMainBeforePost
    Parameters = <>
    Left = 604
    Top = 172
    object quMain2SalesID: TStringField
      FieldName = 'SalesId'
    end
    object quMain2SalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMain2SaleID: TStringField
      FieldName = 'SaleId'
      Size = 30
    end
    object quMain2Tgl_Nota: TStringField
      FieldName = 'Tgl_Nota'
      ReadOnly = True
      Size = 10
    end
    object quMain2TTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
      Size = 0
    end
    object quMain2Status: TStringField
      FieldName = 'Status'
      Size = 80
    end
  end
  object dsMain2: TDataSource
    DataSet = quMain2
    OnStateChange = dsMainStateChange
    Left = 632
    Top = 172
  end
  object quDetil2: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain2
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
    Left = 600
    Top = 321
    object quDetil2SaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetil2ItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quDetil2Price: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetil2WarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetil2Button: TStringField
      FieldName = 'Button'
      FixedChar = True
      Size = 5
    end
    object quDetil2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetil2UpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetil2UpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetil2LitemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
  end
  object dsDetil2: TDataSource
    DataSet = quDetil2
    Left = 624
    Top = 321
  end
  object quMain3: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quMainBeforePost
    Parameters = <>
    Left = 108
    Top = 500
    object quMain3SalesID: TStringField
      FieldName = 'SalesId'
    end
    object quMain3SalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMain3SaleID: TStringField
      FieldName = 'SaleId'
      Size = 30
    end
    object quMain3Tgl_Nota: TStringField
      FieldName = 'Tgl_Nota'
      ReadOnly = True
      Size = 10
    end
    object quMain3TTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
      Size = 0
    end
    object quMain3Status: TStringField
      FieldName = 'Status'
      Size = 80
    end
  end
  object dsMain3: TDataSource
    DataSet = quMain3
    OnStateChange = dsMainStateChange
    Left = 136
    Top = 500
  end
  object quDetil3: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain3
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
    Left = 104
    Top = 649
    object quDetil3SaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetil3ItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quDetil3Price: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetil3WarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetil3Button: TStringField
      FieldName = 'Button'
      FixedChar = True
      Size = 5
    end
    object quDetil3Qty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetil3UpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetil3UpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetil3LitemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
  end
  object dsDetil3: TDataSource
    DataSet = quDetil3
    Left = 128
    Top = 649
  end
  object quMain4: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quMainBeforePost
    Parameters = <>
    Left = 604
    Top = 500
    object quMain4SalesID: TStringField
      FieldName = 'SalesId'
    end
    object quMain4SalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMain4SaleID: TStringField
      FieldName = 'SaleId'
      Size = 30
    end
    object quMain4Tgl_Nota: TStringField
      FieldName = 'Tgl_Nota'
      ReadOnly = True
      Size = 10
    end
    object quMain4TTLPj: TBCDField
      FieldName = 'TTLPj'
      Precision = 18
      Size = 0
    end
    object quMain4Status: TStringField
      FieldName = 'Status'
      Size = 80
    end
  end
  object dsMain4: TDataSource
    DataSet = quMain4
    OnStateChange = dsMainStateChange
    Left = 632
    Top = 500
  end
  object quDetil4: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain4
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
    Left = 600
    Top = 649
    object quDetil4SaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quDetil4itemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quDetil4Price: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetil4WarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetil4Button: TStringField
      FieldName = 'Button'
      FixedChar = True
      Size = 5
    end
    object quDetil4Qty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetil4UpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetil4UpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetil4LitemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
  end
  object dsDetil4: TDataSource
    DataSet = quDetil4
    Left = 624
    Top = 649
  end
  object quUser: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select Distinct UserId FROM SysMsUser'
      'where Userid<>'#39'admin'#39)
    Left = 216
    Top = 4
    object quUserUserId: TStringField
      FieldName = 'UserId'
    end
  end
end
