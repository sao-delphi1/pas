inherited fmARTrKonPiutangIDR: TfmARTrKonPiutangIDR
  Left = 15
  Top = 100
  Caption = 'Pembayaran Piutang Konsinyasi'
  ClientHeight = 587
  ClientWidth = 974
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 538
    inherited pa3: TdxContainer
      Height = 359
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 575
    Width = 974
  end
  inherited pa2: TdxContainer
    Height = 538
  end
  inherited pcMain: TdxPageControl
    Width = 781
    Height = 538
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 758
        Height = 500
        Filter.Criteria = {00000000}
        object dbgListKonPiutangID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Piutang Konsinyasi'
          Width = 204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonPiutangID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListColumn6: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 215
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Valuta'
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 781
        Height = 515
        inherited ts0201: TdxTabSheet
          object Label6: TLabel [0]
            Left = 4
            Top = 130
            Width = 208
            Height = 20
            Caption = 'Detil Pembayaran Piutang'
            FocusControl = bbCancel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText3: TDBText [1]
            Left = 247
            Top = 60
            Width = 526
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object Label1: TLabel [2]
            Left = -12
            Top = 20
            Width = 117
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Nota :'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel [3]
            Left = -12
            Top = 39
            Width = 117
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Tanggal :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel [4]
            Left = -12
            Top = 59
            Width = 117
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pelanggan :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel [5]
            Left = -8
            Top = 99
            Width = 117
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Keterangan :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel [6]
            Left = -9
            Top = 80
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
          object DBText6: TDBText [7]
            Left = 247
            Top = 80
            Width = 530
            Height = 17
            DataField = 'LCurrName'
            DataSource = dsMain
          end
          object DBText5: TDBText [8]
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
          inherited bbSave: TdxButton
            Left = 627
            Top = 120
            Height = 25
          end
          inherited bbCancel: TdxButton
            Left = 703
            Top = 120
            Height = 25
            Caption = '&Cancel '
          end
          object GroupBox2: TGroupBox
            Left = 560
            Top = 4
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
            Left = 1
            Top = 478
            Width = 782
            Height = 36
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            object DBText4: TDBText
              Left = 430
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
            object Label5: TLabel
              Left = 246
              Top = 15
              Width = 175
              Height = 13
              Caption = 'TOTAL NOTA PEMBAYARAN :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dxButton3: TdxButton
              Left = 690
              Top = 6
              Width = 89
              Height = 29
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Version = '1.0.2e'
              OnClick = dxButton3Click
              Caption = 'CETAK'
              TabOrder = 0
            end
          end
          object txtKonPiutangID: TdxDBEdit
            Left = 113
            Top = 16
            Width = 172
            TabOrder = 4
            OnKeyPress = txtKonPiutangIDKeyPress
            DataField = 'KonPiutangID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 113
            Top = 36
            Width = 100
            TabOrder = 5
            OnKeyPress = txtKonPiutangIDKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 113
            Top = 56
            Width = 132
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = txtKonPiutangIDKeyPress
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
            Left = 113
            Top = 76
            Width = 132
            TabOrder = 7
            OnKeyPress = txtKonPiutangIDKeyPress
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
          object dxDBEdit2: TdxDBEdit
            Left = 113
            Top = 96
            Width = 445
            TabOrder = 8
            OnKeyPress = txtKonPiutangIDKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dbg: TdxDBGrid
            Left = 2
            Top = 150
            Width = 780
            Height = 331
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'InvoiceID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 9
            OnEnter = dbgEnter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgInvoiceID: TdxDBGridButtonColumn
              Caption = 'Invoice Konsinyasi '
              Width = 109
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KonInvPelID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgInvoiceIDButtonClick
            end
            object dbgTglInvoice: TdxDBGridColumn
              Caption = 'Tgl Inv Konsinyasi'
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTgl'
            end
            object dbgPelanggan: TdxDBGridColumn
              Caption = 'Nama Pelanggan'
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CCustname'
            end
            object dbgBankId: TdxDBGridButtonColumn
              Caption = 'Kode Bank'
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BankId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgBankIdButtonClick
            end
            object dbgBankName: TdxDBGridColumn
              Caption = 'Nama Bank'
              Width = 177
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LBankName'
            end
            object dbgPaymentValue: TdxDBGridColumn
              Caption = 'Nilai Pembayaran '
              Width = 111
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
              SummaryFooterType = cstSum
              SummaryFooterField = 'ValuePayment'
              SummaryFooterFormat = 'Total Pembayaran : #0,00.00'
              SummaryType = cstSum
              SummaryField = 'ValuePayment'
              SummaryFormat = '#0,00.00'
            end
          end
        end
      end
    end
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
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonPiutangHd')
    object quMainKonPiutangID: TStringField
      FieldName = 'KonPiutangID'
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
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 50
      Lookup = True
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
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
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
        Name = 'KonPiutangID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonPiutangDt WHERE KonPiutangID=:KonPiutangID')
    object quDetilKonPiutangID: TStringField
      FieldName = 'KonPiutangID'
      Size = 50
    end
    object quDetilKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
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
    object quDetilCCustname: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCustname'
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
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 540
    Top = 172
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
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'KonPiutangID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select isnull(Sum(ValuePayment ),0) as Total '
      'FROM ARTrkonpiutangDt '
      'WHERE KonPiutangID=:KonPiutangID'
      '')
    Left = 552
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 576
    Top = 456
  end
  object quValuta: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 568
    Top = 172
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
  object quCal: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 448
    Top = 4
  end
end
