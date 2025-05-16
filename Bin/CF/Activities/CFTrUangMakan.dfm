inherited fmCFTrUangMakan: TfmCFTrUangMakan
  Left = 324
  Top = 170
  Caption = 'Transaksi Pembayaran Uang Makan'
  ClientHeight = 414
  ClientWidth = 627
  PixelsPerInch = 96
  TextHeight = 13
  object Shape4: TShape [0]
    Left = 396
    Top = 375
    Width = 228
    Height = 23
    Brush.Color = 13676331
  end
  object Shape3: TShape [1]
    Left = 396
    Top = 353
    Width = 228
    Height = 23
    Brush.Color = 13676331
  end
  object Shape6: TShape [2]
    Left = 396
    Top = 331
    Width = 228
    Height = 23
    Brush.Color = 13676331
  end
  object Label1: TLabel [4]
    Left = 200
    Top = 48
    Width = 69
    Height = 13
    Caption = 'No Transaksi :'
  end
  object Label2: TLabel [5]
    Left = 224
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Tanggal :'
  end
  object Label4: TLabel [6]
    Left = 208
    Top = 132
    Width = 61
    Height = 13
    Caption = 'Keterangan :'
  end
  object Label5: TLabel [7]
    Left = 200
    Top = 153
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
  object Label3: TLabel [8]
    Left = 224
    Top = 111
    Width = 42
    Height = 13
    Caption = 'Periode :'
  end
  object Label6: TLabel [9]
    Left = 364
    Top = 111
    Width = 33
    Height = 13
    Caption = 'sampai'
  end
  object Label7: TLabel [10]
    Left = 236
    Top = 90
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sales :'
  end
  object DBText5: TDBText [11]
    Left = 369
    Top = 90
    Width = 42
    Height = 13
    AutoSize = True
    DataField = 'LSalesName'
    DataSource = dsMain
  end
  object DBText1: TDBText [12]
    Left = 502
    Top = 333
    Width = 120
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
  object DBText6: TDBText [13]
    Left = 502
    Top = 378
    Width = 120
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
  object Label8: TLabel [14]
    Left = 402
    Top = 331
    Width = 60
    Height = 20
    Alignment = taRightJustify
    Caption = 'Sub Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [15]
    Left = 402
    Top = 354
    Width = 59
    Height = 20
    Alignment = taRightJustify
    Caption = 'Kerajinan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel [16]
    Left = 402
    Top = 376
    Width = 31
    Height = 20
    Alignment = taRightJustify
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText7: TDBText [17]
    Left = 502
    Top = 356
    Width = 120
    Height = 17
    Alignment = taRightJustify
    DataField = 'Kerajinan'
    DataSource = dsMain
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 365
    inherited pa3: TdxContainer
      Height = 186
      object DBText2: TDBText
        Left = 8
        Top = 17
        Width = 169
        Height = 19
        Alignment = taCenter
        DataField = 'Status'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 402
    Width = 627
  end
  inherited pa2: TdxContainer
    Height = 365
  end
  inherited paToolBar: TdxContainer
    Width = 627
    inherited sbLast: TSpeedButton
      Left = 590
    end
    inherited sbNext: TSpeedButton
      Left = 563
    end
    inherited sbPrev: TSpeedButton
      Left = 536
    end
    inherited sbFirst: TSpeedButton
      Left = 509
    end
    inherited sbPeriod: TSpeedButton
      Left = 483
    end
    inherited BvlPeriod: TBevel
      Left = 237
    end
    inherited laPeriod: TLabel
      Left = 241
    end
  end
  object dxDBEdit1: TdxDBEdit [22]
    Left = 272
    Top = 44
    Width = 122
    TabOrder = 4
    DataField = 'UMID'
    DataSource = dsMain
    StyleController = SCEdit
  end
  object GroupBox2: TGroupBox [23]
    Left = 430
    Top = 37
    Width = 193
    Height = 50
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
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
  object dbgAbsen: TdxDBGrid [24]
    Left = 194
    Top = 171
    Width = 431
    Height = 158
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 6
    OnEnter = dbgAbsenEnter
    DataSource = dsDetil
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgAbsenUMID: TdxDBGridMaskColumn
      Visible = False
      Width = 121
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UMID'
    end
    object dbgAbsenSalesID: TdxDBGridColumn
      Caption = 'Kode Karyawan'
      Visible = False
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
    object dbgAbsenCTanggal: TdxDBGridColumn
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dbgAbsenJamMasuk: TdxDBGridColumn
      Caption = 'Jam Masuk'
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CJamMasuk'
    end
    object dbgAbsenTelat: TdxDBGridColumn
      Width = 47
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Telat'
    end
    object dbgAbsenDTelat: TdxDBGridColumn
      Caption = 'Denda Telat'
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DendaT'
    end
    object dbgAbsenUpdUser: TdxDBGridMaskColumn
      Visible = False
      Width = 121
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
    object dbgAbsenUpdDate: TdxDBGridDateColumn
      Visible = False
      Width = 109
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgAbsenLUangMakan: TdxDBGridColumn
      Caption = 'Uang Makan'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LUangMakan'
    end
    object dbgAbsenCDTTelat: TdxDBGridColumn
      Caption = 'Total'
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CDTTelat'
    end
  end
  object bbSave: TdxButton [25]
    Left = 478
    Top = 150
    Height = 19
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    Action = ActSave
    Caption = 'Simpan (F3)'
    TabOrder = 7
  end
  object bbCancel: TdxButton [26]
    Left = 552
    Top = 150
    Height = 19
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    Action = ActCancel
    Caption = 'Batal (F4)'
    TabOrder = 8
  end
  object dxDBDateEdit1: TdxDBDateEdit [27]
    Left = 272
    Top = 65
    Width = 90
    TabOrder = 9
    OnKeyPress = dxDBDateEdit1KeyPress
    DataField = 'Transdate'
    DataSource = dsMain
    StyleController = SCEdit
  end
  object dxDBButtonEdit1: TdxDBButtonEdit [28]
    Left = 272
    Top = 86
    Width = 90
    TabOrder = 10
    OnKeyPress = dxDBDateEdit1KeyPress
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
  object dxDBDateEdit2: TdxDBDateEdit [29]
    Left = 272
    Top = 107
    Width = 90
    TabOrder = 11
    OnKeyPress = dxDBDateEdit1KeyPress
    DataField = 'Transdate1'
    DataSource = dsMain
    StyleController = SCEdit
  end
  object dxDBDateEdit3: TdxDBDateEdit [30]
    Left = 404
    Top = 107
    Width = 90
    TabOrder = 12
    OnKeyPress = dxDBDateEdit1KeyPress
    DataField = 'Transdate2'
    DataSource = dsMain
    StyleController = SCEdit
  end
  object dxDBEdit2: TdxDBEdit [31]
    Left = 272
    Top = 128
    Width = 353
    TabOrder = 13
    OnKeyPress = dxDBDateEdit1KeyPress
    DataField = 'Note'
    DataSource = dsMain
    StyleController = SCEdit
  end
  object dxButton1: TdxButton [32]
    Left = 318
    Top = 378
    Height = 20
    Hint = 'Save Changes'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Cetak'
    TabOrder = 14
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      
        'SELECT CASE WHEN FgStatus='#39'T'#39' THEN '#39'Belum Diproses'#39' ELSE '#39'Sudah ' +
        'Diproses'#39' END as Status,* '
      'FROM CFTrUangMakanHd')
    object quMainUMID: TStringField
      FieldName = 'UMID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainTTLMakan: TBCDField
      FieldName = 'TTLMakan'
      Precision = 18
    end
    object quMainsalesid: TStringField
      FieldName = 'salesid'
    end
    object quMainLSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'salesid'
      Size = 80
      Lookup = True
    end
    object quMainTransdate1: TDateTimeField
      FieldName = 'Transdate1'
    end
    object quMainTransdate2: TDateTimeField
      FieldName = 'Transdate2'
    end
    object quMainKerajinan: TBCDField
      FieldName = 'Kerajinan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgStatus: TStringField
      FieldName = 'FgStatus'
      Size = 1
    end
    object quMainStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 14
    end
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'UMID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CFTrUangMakanDt'
      'WHERE UMID=:UMID')
    object quDetilUMID: TStringField
      FieldName = 'UMID'
    end
    object quDetilSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quDetilTelat: TIntegerField
      FieldName = 'Telat'
    end
    object quDetilDTelat: TBCDField
      FieldName = 'DTelat'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilLUangMakan: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LUangMakan'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'UangMakan'
      KeyFields = 'SalesID'
      DisplayFormat = '#,0.00'
      Lookup = True
    end
    object quDetilCJamMasuk: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CJamMasuk'
      DisplayFormat = 'HH:MM:SS'
      Calculated = True
    end
    object quDetilCTTelat: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTTelat'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quDetilCDTTelat: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CDTTelat'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quDetilTanggal: TDateTimeField
      FieldName = 'Tanggal'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quDetilDendaT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DendaT'
      DisplayFormat = '#,0.00'
      Calculated = True
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
      'Select * From ARMsSales')
    Left = 396
    Top = 137
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 280
    Top = 60
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'UMID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(SUM(CASE WHEN L.Denda > L.UangMakan THEN 0 ELSE L.' +
        'UangMakan-L.Denda END),0) as Total,'
      
        'ISNULL(SUM(CASE WHEN L.Denda > L.UangMakan THEN 0 ELSE L.UangMak' +
        'an-L.Denda END)+L.Kerajinan,0) as GT FROM ('
      'SELECT B.UangMakan,K.Kerajinan,'
      
        'CASE WHEN K.Telat=0 THEN 0 ELSE CASE WHEN K.A >= K.B THEN K.A*10' +
        '00 ELSE (K.A+1)*1000 END END as Denda FROM ('
      
        'SELECT A.Telat,ROUND(CAST(A.Telat as Numeric)/5,0) as A,CAST(A.T' +
        'elat as Numeric)/5 as B,A.DTelat,A.UMID,A.SalesID,C.Kerajinan'
      
        'FROM CFTrUangMakanDt A INNER JOIN CFTrUangMakanHd C ON A.UMID=C.' +
        'UMID AND A.SalesID=C.SalesID) as K INNER JOIN ARMsSales B ON K.S' +
        'alesID=B.SalesID'
      'WHERE K.UMID=:UMID) as L GROUP BY L.Kerajinan')
    Left = 384
    Top = 249
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 412
    Top = 249
  end
end
