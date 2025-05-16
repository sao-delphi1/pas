inherited fmPayroll: TfmPayroll
  Left = 95
  Top = 25
  Caption = 'Form Payroll'
  ClientHeight = 657
  ClientWidth = 977
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 608
    inherited pa3: TdxContainer
      Height = 429
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 645
    Width = 977
  end
  inherited pa2: TdxContainer
    Height = 608
  end
  inherited pcMain: TdxPageControl
    Width = 784
    Height = 608
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 784
        Height = 585
        inherited ts0201: TdxTabSheet
          object Label1: TLabel [0]
            Left = 8
            Top = 16
            Width = 69
            Height = 13
            Caption = 'No Transaksi :'
          end
          object Label2: TLabel [1]
            Left = 32
            Top = 41
            Width = 45
            Height = 13
            Caption = 'Tanggal :'
          end
          object Label3: TLabel [2]
            Left = 208
            Top = 41
            Width = 42
            Height = 13
            Caption = 'Periode :'
          end
          object Label4: TLabel [3]
            Left = 16
            Top = 66
            Width = 61
            Height = 13
            Caption = 'Keterangan :'
          end
          object Label5: TLabel [4]
            Left = 8
            Top = 90
            Width = 111
            Height = 13
            Caption = 'Informasi Karyawan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label6: TLabel [5]
            Left = 8
            Top = 360
            Width = 172
            Height = 13
            Caption = 'Informasi Kehadiran Karyawan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText1: TDBText [6]
            Left = 554
            Top = 532
            Width = 135
            Height = 20
            Alignment = taCenter
            DataField = 'Status'
            DataSource = dsMain
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel [7]
            Left = 460
            Top = 360
            Width = 231
            Height = 13
            Caption = 'Informasi Pembayaran Piutang Karyawan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText2: TDBText [8]
            Left = 665
            Top = 495
            Width = 100
            Height = 16
            Alignment = taRightJustify
            DataField = 'TotalGaji'
            DataSource = dsTotalGaji
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText5: TDBText [9]
            Left = 665
            Top = 512
            Width = 100
            Height = 16
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = dsTotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbKaryawan: TLabel [10]
            Left = 465
            Top = 495
            Width = 69
            Height = 16
            Caption = 'Total Gaji'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel [11]
            Left = 465
            Top = 512
            Width = 113
            Height = 16
            Caption = 'Total Biaya Gaji'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText [12]
            Left = 536
            Top = 495
            Width = 60
            Height = 16
            AutoSize = True
            DataField = 'LSalesName'
            DataSource = dsDetil
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited bbSave: TdxButton
            Left = 634
            Top = 74
            TabOrder = 10
          end
          inherited bbCancel: TdxButton
            Left = 710
            Top = 74
            TabOrder = 0
          end
          object dxDBEdit1: TdxDBEdit
            Left = 80
            Top = 12
            Width = 177
            TabOrder = 1
            DataField = 'PayrollID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object GroupBox2: TGroupBox
            Left = 552
            Top = 3
            Width = 221
            Height = 50
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            object Label10: TLabel
              Left = 16
              Top = 10
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'User :'
            end
            object DBText3: TDBText
              Left = 53
              Top = 10
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
            object DBText4: TDBText
              Left = 54
              Top = 30
              Width = 132
              Height = 17
              DataField = 'UpdDate'
              DataSource = dsMain
            end
          end
          object dbgKaryawan: TdxDBGrid
            Left = 0
            Top = 107
            Width = 782
            Height = 248
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 3
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgKaryawanSalesID: TdxDBGridColumn
              Caption = 'NIP'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SalesID'
            end
            object dbgKaryawanLSalesName: TdxDBGridColumn
              Caption = 'Nama'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 144
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LSalesName'
            end
            object dbgKaryawanLJabatan: TdxDBGridColumn
              Caption = 'Jabatan'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LJabatan'
            end
            object dbgKaryawanLTglGabung: TdxDBGridColumn
              Caption = 'TglGabung'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LTglGabung'
            end
            object dbgKaryawanLUangBulanan: TdxDBGridColumn
              Caption = 'Gaji Pokok'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GajiPokok'
            end
            object dbgKaryawanLUangMakan: TdxDBGridColumn
              Caption = 'Uang Makan'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UangMakan'
            end
            object dbgKaryawanKasBon: TdxDBGridColumn
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KasBon'
            end
            object dbgKaryawanOmzetPenjualan: TdxDBGridColumn
              Caption = 'Kontribusi Penjualan'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OmzetPenjualan'
            end
          end
          object dbgAbsen: TdxDBGrid
            Left = 0
            Top = 381
            Width = 458
            Height = 204
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 4
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgAbsenHrKerja: TdxDBGridColumn
              Caption = 'Hr Kerja'
              Width = 46
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LHrKerja'
            end
            object dbgAbsenJmlHrKerja: TdxDBGridColumn
              Caption = 'Hadir'
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'JmlHrKerja'
            end
            object dbgAbsenHrLibur: TdxDBGridColumn
              Caption = 'Libur'
              Width = 36
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HrLibur'
            end
            object dbgAbsenAlpa: TdxDBGridColumn
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Alpa'
            end
            object dbgAbsenSakit: TdxDBGridColumn
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sakit'
            end
            object dbgAbsenCuti: TdxDBGridColumn
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Cuti'
            end
            object dbgAbsenTelat: TdxDBGridColumn
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Telat'
            end
            object dbgAbsenByrKasBon: TdxDBGridColumn
              Caption = 'Bayar Kas Bon'
              Visible = False
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ByrKasBon'
            end
            object dbgAbsenKerajinan: TdxDBGridColumn
              Caption = 'Kerajinan'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UangKerajinan'
            end
            object dbgAbsenTotalPendapatan: TdxDBGridColumn
              Caption = 'Total Pendapatan'
              Color = clSilver
              ReadOnly = True
              TabStop = False
              Width = 104
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TotalPendapatan'
            end
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 80
            Top = 37
            Width = 121
            TabOrder = 6
            OnKeyPress = dxDBDateEdit1KeyPress
            DataField = 'Transdate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object cbBulan: TDBComboBox
            Left = 257
            Top = 37
            Width = 94
            Height = 21
            DataField = 'Bulan'
            DataSource = dsMain
            ItemHeight = 13
            Items.Strings = (
              'JANUARI'
              'FEBUARI'
              'MARET'
              'APRIL'
              'MEI'
              'JUNI'
              'JULI'
              'AGUSTUS'
              'SEPTEMBER'
              'OKTOBER'
              'NOVEMBER'
              'DESEMBER')
            TabOrder = 7
            OnKeyPress = dxDBDateEdit1KeyPress
          end
          object seTahun: TdxDBSpinEdit
            Left = 357
            Top = 37
            Width = 50
            TabOrder = 8
            OnKeyPress = dxDBDateEdit1KeyPress
            DataField = 'Tahun'
            DataSource = dsMain
            StyleController = SCEdit
            MaxValue = 2020
            MinValue = 2000
            StoredValues = 48
          end
          object dxDBEdit2: TdxDBEdit
            Left = 80
            Top = 62
            Width = 326
            TabOrder = 9
            OnKeyPress = dxDBDateEdit1KeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxButton1: TdxButton
            Left = 674
            Top = 555
            Width = 105
            Height = 27
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton1Click
            Caption = 'PROSES PAYROLL'
            TabOrder = 11
            TabStop = False
          end
          object dxButton2: TdxButton
            Left = 568
            Top = 555
            Width = 105
            Height = 27
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton2Click
            Caption = ' CETAK  SLIP GAJI'
            TabOrder = 12
            TabStop = False
          end
          object dbgPiutang: TdxDBGrid
            Left = 460
            Top = 381
            Width = 322
            Height = 84
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 5
            DataSource = dsPiutang
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgPiutangPayrollID: TdxDBGridMaskColumn
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PayrollID'
            end
            object dbgPiutangSalesID: TdxDBGridMaskColumn
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SalesID'
            end
            object dbgPiutangVoucherID: TdxDBGridButtonColumn
              Caption = 'Bukti Pinjaman'
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VoucherID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgPiutangVoucherIDButtonClick
            end
            object dbgPiutangValueTotal: TdxDBGridColumn
              Caption = 'Nilai Pinjaman'
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValueTotal'
            end
            object dbgPiutangValuePayment: TdxDBGridColumn
              Caption = 'Nilai Bayar'
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
            end
            object dbgPiutangUpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dbgPiutangUpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object bbSimpanDetil: TdxButton
            Tag = 4444
            Left = 271
            Top = 357
            Width = 92
            Height = 23
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Version = '1.0.2e'
            OnClick = bbSimpanDetilClick
            OnKeyPress = bbSimpanDetilKeyPress
            Caption = 'Simpan'
            TabOrder = 13
            TabStop = False
          end
          object BtlBrg: TdxButton
            Tag = 4444
            Left = 364
            Top = 357
            Width = 92
            Height = 23
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
            TabOrder = 14
            TabStop = False
          end
          object bbTambah: TdxButton
            Tag = 1111
            Left = 462
            Top = 466
            Width = 75
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = bbTambahClick
            Caption = 'Tambah Nota'
            TabOrder = 15
          end
          object bbHapus: TdxButton
            Tag = 2222
            Left = 538
            Top = 466
            Width = 75
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = bbHapusClick
            Caption = 'Hapus Nota'
            TabOrder = 16
          end
          object bbSimpan: TdxButton
            Tag = 4444
            Left = 614
            Top = 466
            Width = 75
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = bbSimpanClick
            Caption = 'Simpan'
            TabOrder = 17
          end
          object bbBatal: TdxButton
            Tag = 4444
            Left = 690
            Top = 466
            Width = 75
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = bbBatalClick
            Caption = 'Batal'
            TabOrder = 18
          end
          object dxButton3: TdxButton
            Left = 462
            Top = 555
            Width = 105
            Height = 27
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = ' RINCIAN GAJI'
            TabOrder = 19
            TabStop = False
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 977
    inherited sbLast: TSpeedButton
      Left = 940
    end
    inherited sbNext: TSpeedButton
      Left = 913
    end
    inherited sbPrev: TSpeedButton
      Left = 886
    end
    inherited sbFirst: TSpeedButton
      Left = 859
    end
    inherited sbPeriod: TSpeedButton
      Left = 833
    end
    inherited BvlPeriod: TBevel
      Left = 587
    end
    inherited laPeriod: TLabel
      Left = 591
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,'
      
        'CASE WHEN FgProses='#39'Y'#39' THEN '#39'Sudah di Proses'#39' ELSE '#39'Belum di Pro' +
        'ses'#39' END as Status'
      ' FROM PayrollHD')
    object quMainPayrollID: TStringField
      FieldName = 'PayrollID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainBulan: TStringField
      FieldName = 'Bulan'
    end
    object quMainTahun: TStringField
      FieldName = 'Tahun'
      Size = 10
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainFgProses: TStringField
      FieldName = 'FgProses'
      Size = 1
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainTTLPayroll: TBCDField
      FieldName = 'TTLPayroll'
      Precision = 18
    end
    object quMainStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 15
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 115
    end
  end
  inherited quDetil: TADOQuery
    BeforeEdit = quMainBeforeEdit
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'PayrollID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PayrollDT'
      'WHERE PayrollID=:PayrollID')
    Left = 328
    object quDetilPayrollID: TStringField
      FieldName = 'PayrollID'
    end
    object quDetilSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quDetilLTglGabung: TDateField
      FieldKind = fkLookup
      FieldName = 'LTglGabung'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'TglGabung'
      KeyFields = 'SalesID'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
      Lookup = True
    end
    object quDetilLJabatan: TStringField
      FieldKind = fkLookup
      FieldName = 'LJabatan'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'Jabatan'
      KeyFields = 'SalesID'
      Size = 80
      Lookup = True
    end
    object quDetilOmzetPenjualan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OmzetPenjualan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilKasBon: TFloatField
      FieldKind = fkCalculated
      FieldName = 'KasBon'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilLSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      Size = 80
      Lookup = True
    end
    object quDetilJmlHrKerja: TIntegerField
      FieldName = 'JmlHrKerja'
    end
    object quDetilAlpa: TIntegerField
      FieldName = 'Alpa'
    end
    object quDetilSakit: TIntegerField
      FieldName = 'Sakit'
    end
    object quDetilCuti: TIntegerField
      FieldName = 'Cuti'
    end
    object quDetilTelat: TIntegerField
      FieldName = 'Telat'
    end
    object quDetilTotalUangMakan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalUangMakan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilTotalPendapatan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendapatan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilUangKerajinan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UangKerajinan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilGajiPokok: TBCDField
      FieldName = 'GajiPokok'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUangMakan: TBCDField
      FieldName = 'UangMakan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilLHrKerja: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LHrKerja'
      Calculated = True
    end
    object quDetilLRajin: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LRajin'
      Calculated = True
    end
    object quDetilHrLibur: TIntegerField
      FieldName = 'HrLibur'
    end
    object quDetilHrKerja: TIntegerField
      FieldName = 'HrKerja'
    end
    object quDetilRajin: TIntegerField
      FieldName = 'Rajin'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsSales')
    Left = 648
    Top = 68
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 616
    Top = 68
  end
  object quTambahan: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    Left = 680
    Top = 72
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 616
    Top = 100
  end
  object quPiutang: TADOQuery
    Connection = dmMain.dbConn
    BeforeEdit = quPiutangBeforeDelete
    BeforePost = quPiutangBeforePost
    AfterPost = quPiutangAfterPost
    BeforeDelete = quPiutangBeforeDelete
    AfterDelete = quPiutangAfterPost
    OnCalcFields = quPiutangCalcFields
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'PayrollID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SalesID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PayrollKasBon'
      'WHERE PayrollID=:PayrollID AND SalesID=:SalesID')
    Left = 876
    Top = 484
    object quPiutangPayrollID: TStringField
      FieldName = 'PayrollID'
    end
    object quPiutangSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quPiutangVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 50
    end
    object quPiutangValueTotal: TBCDField
      FieldName = 'ValueTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quPiutangValuePayment: TBCDField
      FieldName = 'ValuePayment'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quPiutangUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quPiutangUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quPiutangCTgl: TDateField
      FieldKind = fkCalculated
      FieldName = 'CTgl'
      Calculated = True
    end
  end
  object dsPiutang: TDataSource
    DataSet = quPiutang
    OnStateChange = dsPiutangStateChange
    Left = 904
    Top = 484
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'PayrollID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(SUM(A.JmlHrKerja*B.UangMakan+B.UangBulanan+(2*A.Hr' +
        'Libur*A.UangMakan)-(A.Gajipokok/A.HrKerja*A.Alpa)-'
      
        '(CASE WHEN A.Telat<=5 THEN A.Telat*A.UangMakan*0.5 WHEN A.Telat<' +
        '=10 THEN A.Telat*A.UangMakan*0.75 ELSE A.Telat*A.UangMakan END)+'
      'CASE WHEN A.Alpa+A.Rajin=0 THEN B.Kerajinan ELSE 0 END),0)-'
      '(SELECT ISNULL(SUM(L.ValuePayment),0) FROM PayrollKasbon L'
      
        'WHERE L.PayrollID=A.PayrollID) as Total,(SELECT ISNULL(SUM(L.Val' +
        'uePayment),0) FROM PayrollKasbon L'
      'WHERE L.PayrollID=A.PayrollID) as TotalBayar '
      'FROM PayrollDT A INNER JOIN ARMsSales B on A.SalesID=B.SalesID '
      'WHERE A.PayRollID=:PayrollID'
      'GROUP BY A.PayrollID')
    Left = 756
    Top = 612
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalTotalBayar: TBCDField
      FieldName = 'TotalBayar'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 784
    Top = 612
  end
  object quTotalGaji: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'PayrollID'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'SalesID'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(SUM((A.JmlHrKerja*A.UangMakan)+A.GajiPokok+(A.HrLi' +
        'bur*A.UangMakan*2)-(A.Gajipokok/A.HrKerja*A.Alpa)-'
      
        '(CASE WHEN A.Telat<=5 THEN A.Telat*A.UangMakan*0.5 WHEN A.Telat<' +
        '=10 THEN A.Telat*A.UangMakan*0.75 ELSE A.Telat*A.UangMakan END)+'
      '(CASE WHEN A.Alpa+A.Rajin=0 THEN B.Kerajinan ELSE 0 END)),0)-'
      
        '(SELECT ISNULL(SUM(L.ValuePayment),0) FROM PayrollKasbon L WHERE' +
        ' L.PayrollID=A.PayrollID '
      'AND L.SalesID=A.SalesID) as TotalGaji'
      'FROM PayrollDT A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID'
      'WHERE A.PayrollID=:PayrollID AND A.SalesID=:SalesID'
      'GROUP BY A.PayrollID, A.SalesID')
    Left = 644
    Top = 556
    object quTotalGajiTotalGaji: TBCDField
      FieldName = 'TotalGaji'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotalGaji: TDataSource
    DataSet = quTotalGaji
    Left = 672
    Top = 556
  end
end
