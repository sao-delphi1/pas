inherited fmCFTrPiutangInternal: TfmCFTrPiutangInternal
  Left = 189
  Top = 155
  Caption = 'Pembayaran Piutang Internal'
  ClientHeight = 410
  ClientWidth = 924
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 361
    inherited pa3: TdxContainer
      Height = 182
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 398
    Width = 924
  end
  inherited pa2: TdxContainer
    Height = 361
  end
  inherited pcMain: TdxPageControl
    Width = 731
    Height = 361
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 779
        Height = 289
        Filter.Criteria = {00000000}
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 731
        Height = 338
        inherited ts0201: TdxTabSheet
          object Label6: TLabel [0]
            Left = 4
            Top = 118
            Width = 208
            Height = 20
            Caption = 'Detil Pembayaran Piutang'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label1: TLabel [1]
            Left = 30
            Top = 24
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota Pembayaran :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel [2]
            Left = 27
            Top = 44
            Width = 94
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tanggal Transaksi :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [3]
            Left = 61
            Top = 64
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Terima Dari :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel [4]
            Left = 60
            Top = 84
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Keterangan :'
          end
          object DBText3: TDBText [5]
            Left = 265
            Top = 64
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'LSalesName'
            DataSource = dsMain
          end
          inherited bbSave: TdxButton
            Left = 577
            Top = 104
          end
          inherited bbCancel: TdxButton
            Left = 653
            Top = 104
          end
          object GroupBox2: TGroupBox
            Left = 508
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
            object DBText1: TDBText
              Left = 54
              Top = 30
              Width = 132
              Height = 17
              DataField = 'UpdDate'
              DataSource = dsMain
            end
          end
          object txtPiutangID: TdxDBEdit
            Left = 129
            Top = 20
            Width = 160
            TabOrder = 3
            DataField = 'PiutangID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dbgPiutang: TdxDBGrid
            Left = 0
            Top = 139
            Width = 729
            Height = 156
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 4
            OnEnter = dbgPiutangEnter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgPiutangPiutangID: TdxDBGridMaskColumn
              Visible = False
              Width = 175
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PiutangID'
            end
            object dbgPiutangVoucherID: TdxDBGridButtonColumn
              Caption = 'No Voucher'
              Width = 160
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
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValueTotal'
            end
            object dbgPiutangBankID: TdxDBGridButtonColumn
              Caption = 'Kode Bank'
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BankID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgPiutangBankIDButtonClick
            end
            object dbgPiutangLBankName: TdxDBGridColumn
              Caption = 'Nama Bank'
              Width = 220
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LBankName'
            end
            object dbgPiutangUpdDate: TdxDBGridDateColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dbgPiutangValuePayment: TdxDBGridColumn
              Caption = 'Nilai Pembayaran'
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
            end
            object dbgPiutangUpdUser: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
            object dbgPiutangRekeningID: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RekeningID'
            end
            object dbgPiutangGroupRekID: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GroupRekID'
            end
          end
          object GroupBox3: TGroupBox
            Left = 309
            Top = 294
            Width = 321
            Height = 37
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            object DBText7: TDBText
              Left = 192
              Top = 11
              Width = 120
              Height = 20
              Alignment = taRightJustify
              DataField = 'Total'
              DataSource = dsTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 4
              Top = 11
              Width = 187
              Height = 20
              Caption = 'TOTAL PENERIMAAN :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object dxButton3: TdxButton
            Left = 635
            Top = 302
            Width = 92
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'CETAK'
            TabOrder = 6
          end
          object bbTambah: TdxButton
            Tag = 1111
            Left = 2
            Top = 302
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
            TabOrder = 7
          end
          object bbHapus: TdxButton
            Tag = 2222
            Left = 78
            Top = 302
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
            TabOrder = 8
          end
          object bbSimpan: TdxButton
            Tag = 4444
            Left = 154
            Top = 302
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
            TabOrder = 9
          end
          object bbBatal: TdxButton
            Tag = 4444
            Left = 230
            Top = 302
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
            TabOrder = 10
          end
          object txtTransDate: TdxDBDateEdit
            Left = 129
            Top = 40
            Width = 80
            TabOrder = 11
            OnKeyPress = txtTransDateKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtSalesID: TdxDBButtonEdit
            Left = 129
            Top = 60
            Width = 132
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnKeyPress = txtTransDateKeyPress
            DataField = 'SalesID'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = txtSalesIDButtonClick
            ExistButtons = True
          end
          object dxDBEdit2: TdxDBEdit
            Left = 129
            Top = 80
            Width = 497
            TabOrder = 13
            OnKeyPress = txtTransDateKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 924
    inherited sbLast: TSpeedButton
      Left = 887
    end
    inherited sbNext: TSpeedButton
      Left = 860
    end
    inherited sbPrev: TSpeedButton
      Left = 833
    end
    inherited sbFirst: TSpeedButton
      Left = 806
    end
    inherited sbPeriod: TSpeedButton
      Left = 780
    end
    inherited BvlPeriod: TBevel
      Left = 534
    end
    inherited laPeriod: TLabel
      Left = 538
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFTrPiutangInternalHd')
    object quMainPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainCurrId: TStringField
      FieldName = 'CurrId'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
  end
  inherited quDetil: TADOQuery
    BeforeEdit = quMainBeforeEdit
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PiutangID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CFTrPiutangInternalDT'
      'WHERE PiutangID=:PiutangID')
    Left = 332
    object quDetilPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quDetilVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 50
    end
    object quDetilValueTotal: TBCDField
      FieldName = 'ValueTotal'
      Precision = 18
    end
    object quDetilValuePayment: TBCDField
      FieldName = 'ValuePayment'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 30
    end
    object quDetilGroupRekID: TStringField
      FieldName = 'GroupRekID'
      Size = 30
    end
    object quDetilCTgl: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CTgl'
      Calculated = True
    end
    object quDetilBankID: TStringField
      FieldName = 'BankID'
      Size = 30
    end
    object quDetilLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankID'
      LookupResultField = 'BankName'
      KeyFields = 'BankID'
      LookupCache = True
      Size = 80
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
    Left = 360
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'PiutangID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Select isnull(Sum(ValuePayment ),0) as Total FROM CFTrPiutangInt' +
        'ernalDT'
      'WHERE PiutangID=:PiutangID'
      '')
    Left = 516
    Top = 252
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 544
    Top = 252
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SalesID,SalesName '
      'FROM ARMsSales'
      'ORDER BY SalesName')
    Left = 544
    Top = 136
    object quSalesSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quSalesSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select BankID,BankName FROM CFMsBank')
    Left = 456
    Top = 272
  end
end
