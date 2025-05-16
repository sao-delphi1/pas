inherited fmAbsensi: TfmAbsensi
  Left = 196
  Top = 172
  Caption = 'Form Absensi'
  ClientHeight = 362
  ClientWidth = 692
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblJam: TLabel [0]
    Left = 244
    Top = 45
    Width = 200
    Height = 22
    Caption = 'DD/MM/YY HH:MM:SS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbSalesName: TLabel [1]
    Left = 432
    Top = 95
    Width = 212
    Height = 32
    Caption = 'Nama Karyawan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox2: TGroupBox [2]
    Left = 16
    Top = 76
    Width = 297
    Height = 70
    Caption = 'Jam Keluar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 10
      Top = 27
      Width = 95
      Height = 22
      Caption = 'Karyawan :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dxButtonEdit2: TdxButtonEdit
      Left = 134
      Top = 15
      Width = 149
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      AutoSize = False
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
          Width = 50
        end>
      OnButtonClick = dxButtonEdit2ButtonClick
      Height = 47
      ExistButtons = True
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 16
    Top = 76
    Width = 297
    Height = 70
    Caption = 'Jam Masuk :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 27
      Width = 95
      Height = 22
      Caption = 'Karyawan :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 134
      Top = 15
      Width = 149
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      AutoSize = False
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
          Width = 50
        end>
      OnButtonClick = dxButtonEdit1ButtonClick
      Height = 47
      ExistButtons = True
    end
  end
  inherited paToolBar: TdxContainer
    Width = 692
  end
  object dbgAbsensi: TdxDBGrid [5]
    Left = 16
    Top = 155
    Width = 657
    Height = 150
    TabStop = False
    Bands = <
      item
      end>
    DefaultLayout = True
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 1
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgAbsensiSalesID: TdxDBGridColumn
      Caption = 'Kode Karyawan'
      ReadOnly = True
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
    object dbgAbsensiSalesName: TdxDBGridColumn
      Caption = 'Nama Karyawan'
      ReadOnly = True
      Width = 235
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LuSalesName'
    end
    object dbgAbsensiTanggal: TdxDBGridColumn
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dbgAbsensiJamMasuk: TdxDBGridColumn
      Caption = 'Jam Masuk'
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JamMasuk'
    end
    object dbgAbsensiJamKeluar: TdxDBGridColumn
      Caption = 'Jam Keluar'
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JamKeluar'
    end
  end
  object bbLaporan: TdxButton [6]
    Left = 578
    Top = 323
    Width = 95
    Height = 27
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = bbLaporanClick
    Caption = 'Laporan'
    TabOrder = 4
  end
  object bbAbsen: TdxButton [7]
    Left = 322
    Top = 86
    Width = 95
    Height = 51
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = bbAbsenClick
    Caption = 'ABSEN'
    TabOrder = 5
  end
  object GroupBox3: TGroupBox [8]
    Left = 16
    Top = 314
    Width = 289
    Height = 45
    Caption = 'Periode'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    object Label3: TLabel
      Left = 130
      Top = 18
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
      Left = 29
      Top = 14
      Width = 85
      TabOrder = 0
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object dt2: TdxDateEdit
      Left = 181
      Top = 14
      Width = 88
      TabOrder = 1
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'Select * from TrAbsensi'
      
        'where convert(varchar(8),tanggal,112)=convert(varchar(8),getdate' +
        '(),112)')
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainTanggal: TDateTimeField
      FieldName = 'Tanggal'
      DisplayFormat = 'DD MMMM YY'
    end
    object quMainJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
      DisplayFormat = 'HH:MM:SS'
    end
    object quMainJamKeluar: TDateTimeField
      FieldName = 'JamKeluar'
      DisplayFormat = 'HH:MM:SS'
    end
    object quMainLuSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      Size = 80
      Lookup = True
    end
    object quMainFgKeluar: TStringField
      FieldName = 'FgKeluar'
      Size = 1
    end
    object quMainFgOff: TIntegerField
      FieldName = 'FgOff'
    end
    object quMainFgProses: TStringField
      FieldName = 'FgProses'
      Size = 1
    end
  end
  object TmrAbsen: TTimer
    Enabled = False
    OnTimer = TmrAbsenTimer
    Left = 152
    Top = 8
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select SalesID, SalesName'
      'from ARMsSales'
      'Order by SalesID')
    Left = 304
    Top = 168
  end
  object quCalendar: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 352
    Top = 4
  end
end
