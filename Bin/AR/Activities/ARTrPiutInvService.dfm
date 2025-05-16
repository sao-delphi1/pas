inherited fmARTrPiutInvService: TfmARTrPiutInvService
  Left = 187
  Top = 74
  Caption = 'Pembayaran Piutang Service'
  ClientHeight = 574
  ClientWidth = 969
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 525
    inherited pa3: TdxContainer
      Height = 346
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 562
    Width = 969
  end
  inherited pa2: TdxContainer
    Height = 525
  end
  inherited pcMain: TdxPageControl
    Width = 776
    Height = 525
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 779
        Height = 509
        Filter.Criteria = {00000000}
        object dbgListPiutangID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Piutang'
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PiutInvServiceID'
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
        Width = 776
        Height = 502
        inherited ts0201: TdxTabSheet
          DesignSize = (
            776
            502)
          object Label6: TLabel [0]
            Left = 4
            Top = 112
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
            Top = 23
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
            Left = 76
            Top = 42
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
          end
          object Label3: TLabel [3]
            Left = 64
            Top = 62
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
          object Label4: TLabel [4]
            Left = 60
            Top = 82
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Keterangan :'
          end
          object DBText3: TDBText [5]
            Left = 224
            Top = 64
            Width = 465
            Height = 17
            DataField = 'CustName'
            DataSource = dsMain
          end
          object Label8: TLabel [6]
            Left = 304
            Top = 8
            Width = 249
            Height = 32
            Alignment = taCenter
            AutoSize = False
            Caption = 'RUPIAH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited bbSave: TdxButton
            Left = 614
            Top = 104
            Height = 22
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 690
            Top = 104
            Height = 22
            Caption = '&Cancel '
            TabStop = False
          end
          object GroupBox2: TGroupBox
            Left = 556
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
          object GroupBox3: TGroupBox
            Left = 4
            Top = 466
            Width = 773
            Height = 40
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            object DBText7: TDBText
              Left = 427
              Top = 15
              Width = 236
              Height = 17
              Alignment = taRightJustify
              DataField = 'Total'
              DataSource = dsTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 251
              Top = 16
              Width = 172
              Height = 13
              Caption = 'TOTAL NOTA PENERIMAAN :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dxButton3: TdxButton
              Left = 681
              Top = 8
              Width = 88
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Version = '1.0.2e'
              OnClick = dxButton3Click
              Caption = 'CETAK'
              TabOrder = 0
            end
          end
          object txtPiutangID: TdxDBEdit
            Left = 129
            Top = 20
            Width = 176
            TabOrder = 4
            OnKeyPress = txtNomorBuktiKeyPress
            DataField = 'PiutInvServiceID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 129
            Top = 40
            Width = 108
            TabOrder = 5
            OnKeyPress = txtNomorBuktiKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 129
            Top = 60
            Width = 92
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
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
          object dxDBEdit2: TdxDBEdit
            Left = 129
            Top = 80
            Width = 497
            TabOrder = 7
            OnKeyPress = txtNomorBuktiKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBGrid1: TdxDBGrid
            Left = 3
            Top = 133
            Width = 774
            Height = 336
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 8
            OnEnter = dxDBGrid1Enter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid1PenjualanID: TdxDBGridButtonColumn
              Caption = 'Nota Inv Service'
              Width = 133
              BandIndex = 0
              RowIndex = 0
              FieldName = 'InvServiceID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1PenjualanIDButtonClick
            end
            object dxDBGrid1tgl: TdxDBGridColumn
              Caption = 'Tgl Nota'
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTgl'
            end
            object dxDBGrid1BankId: TdxDBGridButtonColumn
              Caption = 'Kode Bank'
              Width = 131
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BankId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1BankIdButtonClick
            end
            object dxDBGrid1BankName: TdxDBGridColumn
              Caption = 'Nama Bank'
              Width = 172
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LBankName'
            end
            object dxDBGrid1UpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 159
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid1ValuePayment: TdxDBGridCurrencyColumn
              Caption = 'Nilai Pembayaran'
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
              DisplayFormat = 'Rp ,0.00;-Rp ,0.00'
              Nullable = False
            end
            object dxDBGrid1UpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 179
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
        end
      end
    end
  end
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
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrPiutInvServiceHd ')
    object quMainPiutInvServiceID: TStringField
      FieldName = 'PiutInvServiceID'
      Size = 50
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
        Name = 'PiutInvServiceID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPiutInvServiceDt'
      ' WHERE PiutInvServiceID=:PiutInvServiceID')
    object quDetilPiutInvServiceID: TStringField
      FieldName = 'PiutInvServiceID'
      Size = 50
    end
    object quDetilInvServiceID: TStringField
      FieldName = 'InvServiceID'
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
        Name = 'PiutinvServiceID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Select isnull(Sum(ValuePayment ),0) as Total FROM ARTrPiutinvSer' +
        'viceDt '
      'WHERE PiutInvServiceID=:PiutinvServiceID'
      '')
    Left = 552
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object quCal: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 448
    Top = 4
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
end
