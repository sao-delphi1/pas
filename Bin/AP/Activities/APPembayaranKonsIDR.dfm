inherited fmAPPembayaranKonsIDR: TfmAPPembayaranKonsIDR
  Left = 128
  Top = 91
  Caption = 'Pembayaran Konsinyasi Pembelian'
  ClientHeight = 568
  ClientWidth = 982
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 519
    inherited pa3: TdxContainer
      Height = 340
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 556
    Width = 982
  end
  inherited pa2: TdxContainer
    Height = 519
  end
  inherited pcMain: TdxPageControl
    Width = 789
    Height = 519
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 760
        Height = 472
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Konsinyasi Pembelian'
          DisableEditor = True
          Width = 207
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PaymentKonsID'
        end
        object dbgListPaymentDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          DisableEditor = True
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustId: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLCustname: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustomer'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label5: TLabel
        Left = 8
        Top = 75
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
      object Label6: TLabel
        Left = 16
        Top = 83
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
      object Label7: TLabel
        Left = 48
        Top = 416
        Width = 32
        Height = 13
        Caption = 'Label7'
      end
      object Label8: TLabel
        Left = 48
        Top = 408
        Width = 50
        Height = 13
        Caption = 'Total Nota'
        Color = clBlack
        ParentColor = False
      end
      object Label9: TLabel
        Left = 8
        Top = 408
        Width = 32
        Height = 13
        Caption = 'Label9'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 789
        Height = 149
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          789
          149)
        object Label1: TLabel
          Left = -8
          Top = 18
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nota Pembayaran :'
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
        object Label2: TLabel
          Left = -8
          Top = 36
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
        object Label3: TLabel
          Left = -8
          Top = 56
          Width = 117
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 258
          Top = 57
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LuCustomer'
          DataSource = dsMain
          Transparent = True
        end
        object Label4: TLabel
          Left = -8
          Top = 95
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
        object Label13: TLabel
          Left = 5
          Top = 128
          Width = 142
          Height = 20
          Caption = 'Detil Pembayaran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label12: TLabel
          Left = -10
          Top = 77
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
        object DBText4: TDBText
          Left = 258
          Top = 76
          Width = 480
          Height = 19
          DataField = 'LCurrName'
          DataSource = dsMain
        end
        object DBText6: TDBText
          Left = 281
          Top = 14
          Width = 280
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
        object DBText8: TDBText
          Left = 515
          Top = 116
          Width = 85
          Height = 20
          Alignment = taRightJustify
          DataField = 'Rate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 442
          Top = 116
          Width = 68
          Height = 20
          Caption = 'Rate Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 639
          Top = 122
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActSave
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 0
          TabStop = False
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 715
          Top = 122
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActCancel
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
          TabStop = False
        end
        object GroupBox2: TGroupBox
          Left = 564
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
          object DBText3: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 112
          Top = 13
          Width = 167
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'PaymentKonsID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 112
          Top = 33
          Width = 89
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 112
          Top = 53
          Width = 141
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SuppID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 112
          Top = 73
          Width = 141
          TabOrder = 6
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
        object dxDBEdit2: TdxDBEdit
          Left = 112
          Top = 93
          Width = 445
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 149
        Width = 789
        Height = 307
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'InvoiceID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
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
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiInvID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgInvoiceIDButtonClick
        end
        object dbgTglInvoice: TdxDBGridColumn
          Caption = 'Tgl Invoice Konsinyasi'
          Width = 113
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TglInvoice'
        end
        object dbgPelanggan: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgColumn5: TdxDBGridButtonColumn
          Caption = 'Kode Bank'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankId'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgColumn5ButtonClick
        end
        object dbgColumn6: TdxDBGridColumn
          Caption = 'Nama Bank'
          Width = 165
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LBankName'
        end
        object dbgPaymentValue: TdxDBGridColumn
          Caption = 'Nilai Pembayaran '
          Width = 115
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
      object Panel2: TPanel
        Left = 0
        Top = 456
        Width = 789
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 2
        object GroupBox3: TGroupBox
          Left = 1
          Top = -2
          Width = 788
          Height = 41
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBText7: TDBText
            Left = 447
            Top = 16
            Width = 236
            Height = 17
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = dsTotal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 271
            Top = 16
            Width = 175
            Height = 13
            Caption = 'TOTAL NOTA PEMBAYARAN :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dxButton3: TdxButton
            Left = 697
            Top = 8
            Width = 89
            Height = 29
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'CETAK'
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 982
    inherited sbLast: TSpeedButton
      Left = 954
    end
    inherited sbNext: TSpeedButton
      Left = 931
    end
    inherited sbPrev: TSpeedButton
      Left = 908
    end
    inherited sbFirst: TSpeedButton
      Left = 885
    end
    inherited sbPeriod: TSpeedButton
      Left = 857
    end
    inherited BvlPeriod: TBevel
      Left = 611
    end
    inherited laPeriod: TLabel
      Left = 615
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrPaymentKonsHd ')
    Left = 224
    object quMainPaymentKonsID: TStringField
      FieldName = 'PaymentKonsID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 400
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
      FixedChar = True
      Size = 3
    end
    object quMainLuCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCustomer'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
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
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PaymentKonsID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from APTrPaymentKonsDt WHERE PaymentKonsID=:PaymentKons' +
        'ID'
      '')
    object quDetilPaymentKonsID: TStringField
      FieldName = 'PaymentKonsID'
      Size = 50
    end
    object quDetilKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quDetilValueKonsinyasi: TBCDField
      FieldName = 'ValueKonsinyasi'
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
    object quDetilTglInvoice: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'TglInvoice'
      Calculated = True
    end
    object quDetilLCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCustName'
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
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 364
    Top = 272
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 260
    Top = 88
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 536
    Top = 68
  end
  object quKS: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM APTrKonsinyasiInvHd')
    Left = 712
    Top = 148
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
        Name = 'PaymentKonsID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Select isnull(Sum(ValuePayment ),0) as Total FROM APTrPaymentKon' +
        'sDt '
      'WHERE PaymentKonsID=:PaymentKonsID'
      '')
    Left = 548
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
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
    Left = 404
    Top = 272
  end
  object quBank: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
  object quSisa: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 484
    Top = 100
  end
end
