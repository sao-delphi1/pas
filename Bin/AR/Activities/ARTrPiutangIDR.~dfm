inherited fmARTrPiutangIDR: TfmARTrPiutangIDR
  Left = 527
  Top = 61
  Caption = 'Pembayaran Piutang'
  ClientHeight = 588
  ClientWidth = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 539
    inherited pa3: TdxContainer
      Height = 360
    end
    inherited paOperation: TdxContainer
      Top = 0
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 171
    end
  end
  inherited paBottom: TdxContainer
    Top = 576
    Width = 710
  end
  inherited pa2: TdxContainer
    Height = 539
  end
  inherited pcMain: TdxPageControl
    Width = 517
    Height = 539
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 779
        Height = 509
        Filter.Criteria = {00000000}
        object dbgListPiutangID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Piutang'
          Width = 152
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PiutangID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListColumn8: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Valuta'
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrId'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 166
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 517
        Height = 516
        inherited ts0201: TdxTabSheet
          DesignSize = (
            517
            516)
          object DBText4: TDBText [0]
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
          object dxDBGrid1: TdxDBGrid [1]
            Left = 0
            Top = 187
            Width = 517
            Height = 253
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 2
            OnEnter = dxDBGrid1Enter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid1PenjualanID: TdxDBGridButtonColumn
              Caption = 'Nota Penjualan'
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SaleID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1PenjualanIDButtonClick
            end
            object dxDBGrid1tgl: TdxDBGridColumn
              Caption = 'Tgl Nota'
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTgl'
            end
            object dxDBGrid1CustName: TdxDBGridColumn
              Caption = 'Nama Pelanggan'
              Width = 161
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CustName'
            end
            object dxDBGrid1UpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 101
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid1ValuePayment: TdxDBGridColumn
              Caption = 'Nilai Pembayaran'
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
            end
            object dxDBGrid1UpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 114
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object Panel2: TPanel [2]
            Left = 0
            Top = 440
            Width = 517
            Height = 76
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14467152
            TabOrder = 3
            object GroupBox1: TGroupBox
              Left = 2
              Top = 3
              Width = 507
              Height = 44
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object Label14: TLabel
                Left = 4
                Top = 11
                Width = 239
                Height = 20
                Caption = 'TOTAL NOTA PENERIMAAN :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText7: TDBText
                Left = 256
                Top = 11
                Width = 243
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
            end
            object bbTambah: TdxButton
              Tag = 1111
              Left = 5
              Top = 50
              Width = 75
              Height = 22
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
              TabOrder = 1
            end
            object bbHapus: TdxButton
              Tag = 2222
              Left = 81
              Top = 50
              Width = 75
              Height = 22
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
              TabOrder = 2
            end
            object bbSimpan: TdxButton
              Tag = 4444
              Left = 157
              Top = 50
              Width = 75
              Height = 22
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
              TabOrder = 3
            end
            object bbBatal: TdxButton
              Tag = 4444
              Left = 233
              Top = 50
              Width = 75
              Height = 22
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
              TabOrder = 4
            end
            object dxButton3: TdxButton
              Left = 418
              Top = 50
              Width = 92
              Height = 22
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
              TabOrder = 5
            end
          end
          object Panel1: TPanel [3]
            Left = 0
            Top = 0
            Width = 517
            Height = 187
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14467152
            TabOrder = 4
            object Label1: TLabel
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
            object Label2: TLabel
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
            object Label3: TLabel
              Left = 64
              Top = 64
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
            object Label4: TLabel
              Left = 60
              Top = 144
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'Keterangan :'
            end
            object DBText3: TDBText
              Left = 265
              Top = 64
              Width = 235
              Height = 17
              DataField = 'CustName'
              DataSource = dsMain
            end
            object Label23: TLabel
              Left = 7
              Top = 84
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
            object DBText6: TDBText
              Left = 265
              Top = 83
              Width = 235
              Height = 17
              DataField = 'LCurrName'
              DataSource = dsMain
            end
            object Label5: TLabel
              Left = 216
              Top = 44
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tgl Cair :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 96
              Top = 104
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Bank :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label17: TLabel
              Left = 59
              Top = 123
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Caption = 'No BG / Cek :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText5: TDBText
              Left = 267
              Top = 104
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'LBankName'
              DataSource = dsMain
            end
            object Label6: TLabel
              Left = 4
              Top = 163
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
            object txtPiutangID: TdxDBEdit
              Left = 129
              Top = 20
              Width = 160
              TabOrder = 0
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'PiutangID'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object GroupBox2: TGroupBox
              Left = 350
              Top = 5
              Width = 154
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
                Width = 91
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
                Width = 91
                Height = 17
                DataField = 'UpdDate'
                DataSource = dsMain
              end
            end
            object txtTransDate: TdxDBDateEdit
              Left = 129
              Top = 40
              Width = 80
              TabOrder = 2
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'TransDate1'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object txtTransDate1: TdxDBDateEdit
              Left = 266
              Top = 40
              Width = 80
              TabOrder = 3
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'TransDate'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object txtCustID: TdxDBButtonEdit
              Left = 129
              Top = 60
              Width = 130
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'CustID'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = txtCustIDButtonClick
              ExistButtons = True
            end
            object dxDBButtonEdit2: TdxDBButtonEdit
              Left = 129
              Top = 80
              Width = 130
              TabOrder = 5
              OnKeyPress = txtNomorBuktiKeyPress
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
            object dxDBButtonEdit3: TdxDBButtonEdit
              Left = 129
              Top = 100
              Width = 130
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              DataField = 'BankID'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBButtonEdit3ButtonClick
              ExistButtons = True
            end
            object dxDBEdit3: TdxDBEdit
              Left = 129
              Top = 120
              Width = 375
              TabOrder = 7
              DataField = 'BGCID'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBEdit2: TdxDBEdit
              Left = 129
              Top = 140
              Width = 375
              TabOrder = 8
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'Note'
              DataSource = dsMain
              StyleController = SCEdit
            end
          end
          inherited bbSave: TdxButton
            Left = 359
            Top = 164
            Height = 20
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 435
            Top = 164
            Height = 20
            TabStop = False
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 710
    inherited sbLast: TSpeedButton
      Left = 682
    end
    inherited sbNext: TSpeedButton
      Left = 659
    end
    inherited sbPrev: TSpeedButton
      Left = 636
    end
    inherited sbFirst: TSpeedButton
      Left = 613
    end
    inherited sbPeriod: TSpeedButton
      Left = 585
    end
    inherited BvlPeriod: TBevel
      Left = 339
    end
    inherited laPeriod: TLabel
      Left = 343
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrPiutangHd ')
    Left = 224
    object quMainPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quMainTransDate1: TDateTimeField
      FieldName = 'TransDate1'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
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
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
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
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrId'
      Size = 50
      Lookup = True
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainFgBayar: TStringField
      FieldName = 'FgBayar'
      Size = 1
    end
    object quMainBankID: TStringField
      FieldName = 'BankID'
      Size = 30
    end
    object quMainBGCID: TStringField
      FieldName = 'BGCID'
      Size = 100
    end
    object quMainLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankID'
      LookupResultField = 'BankName'
      KeyFields = 'BankID'
      Size = 80
      Lookup = True
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
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PiutangID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPiutangDt WHERE PiutangID=:PiutangID')
    object quDetilPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quDetilValueTotal: TBCDField
      FieldName = 'ValueTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilSaleID: TStringField
      FieldName = 'SaleID'
      Size = 50
    end
    object quDetilValuePayment: TBCDField
      FieldName = 'ValuePayment'
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
    object quDetilCTgl: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CTgl'
      Calculated = True
    end
    object quDetilCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustName'
      Size = 50
      Calculated = True
    end
    object quDetilBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quDetilLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankId'
      LookupResultField = 'BankName'
      KeyFields = 'BankId'
      Size = 50
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 544
    Top = 136
    object quCustomerCustID: TStringField
      FieldName = 'CustID'
    end
    object quCustomerCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quCustomerAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quCustomerCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quCustomerPhone: TStringField
      FieldName = 'Phone'
    end
    object quCustomerFax: TStringField
      FieldName = 'Fax'
    end
    object quCustomerEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quCustomerNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quCustomerCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quCustomerUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quCustomerUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quPj: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARTrPenjualanHd')
    Left = 572
    Top = 136
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 576
    Top = 456
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
      'Select isnull(Sum(ValuePayment ),0) as Total FROM ARTrPiutangDt '
      'WHERE PiutangID=:PiutangID'
      '')
    Left = 548
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object quCal: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 448
    Top = 4
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
    Left = 600
    Top = 136
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 488
    Top = 272
  end
end
