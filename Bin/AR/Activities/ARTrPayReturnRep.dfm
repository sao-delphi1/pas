inherited fmARTrPayReturnRep: TfmARTrPayReturnRep
  Left = 89
  Top = 91
  Caption = 'Pembayaran Piutang Pengganti Retur'
  ClientHeight = 577
  ClientWidth = 970
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 528
    inherited pa3: TdxContainer
      Height = 349
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 565
    Width = 970
  end
  inherited pa2: TdxContainer
    Height = 528
  end
  inherited pcMain: TdxPageControl
    Width = 777
    Height = 528
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 780
        Height = 512
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Piutang '
          DisableEditor = True
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PayReturnRepID'
        end
        object dbgListPaymentDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          DisableEditor = True
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListSuppId: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLSuppname: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
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
      object dbg: TdxDBGrid
        Left = 0
        Top = 145
        Width = 777
        Height = 320
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PaymentID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgReturnRep: TdxDBGridButtonColumn
          Caption = 'Nota Retur Ganti'
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnRepID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgReturnRepButtonClick
        end
        object dbgtgl: TdxDBGridColumn
          Caption = 'Tgl Nota'
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTgl'
        end
        object dbgCustName: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 167
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CCustName'
        end
        object dbgBankId: TdxDBGridButtonColumn
          Caption = 'Kode Bank'
          Width = 98
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
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LBankName'
        end
        object dbgPaymentValue: TdxDBGridColumn
          Caption = 'Nilai Pembayaran '
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ValuePayment'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ValuePayment'
          SummaryFooterFormat = 'Total Pembayaran : #0,00.00'
          SummaryType = cstSum
          SummaryField = 'ValuePayment'
          SummaryFormat = '#0,00'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 465
        Width = 777
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 1
        object GroupBox3: TGroupBox
          Left = 2
          Top = -2
          Width = 776
          Height = 40
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBText7: TDBText
            Left = 532
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
            Left = 348
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
            Left = 4
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 145
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 2
        DesignSize = (
          777
          145)
        object Label1: TLabel
          Left = 8
          Top = 19
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
          Left = 8
          Top = 37
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
          Left = 8
          Top = 57
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
        object DBText1: TDBText
          Left = 274
          Top = 57
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LCustName'
          DataSource = dsMain
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 96
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
          Top = 124
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
          Left = 6
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
          Left = 273
          Top = 76
          Width = 502
          Height = 19
          DataField = 'LCurrName'
          DataSource = dsMain
        end
        object DBText6: TDBText
          Left = 269
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
        object bbSave: TdxButton
          Tag = 3333
          Left = 627
          Top = 117
          Height = 21
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
          Left = 703
          Top = 117
          Height = 21
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
          Left = 555
          Top = 0
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
          Left = 128
          Top = 13
          Width = 138
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'PayReturnRepID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 128
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
          Left = 128
          Top = 53
          Width = 141
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CustID'
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
          Left = 128
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
          Left = 128
          Top = 93
          Width = 497
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 970
    inherited sbLast: TSpeedButton
      Left = 942
    end
    inherited sbNext: TSpeedButton
      Left = 919
    end
    inherited sbPrev: TSpeedButton
      Left = 896
    end
    inherited sbFirst: TSpeedButton
      Left = 873
    end
    inherited sbPeriod: TSpeedButton
      Left = 845
    end
    inherited BvlPeriod: TBevel
      Left = 599
    end
    inherited laPeriod: TLabel
      Left = 603
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from ARTrPayReturnRepHd ')
    object quMainPayReturnRepID: TStringField
      FieldName = 'PayReturnRepID'
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
    object quMainCustID: TStringField
      FieldName = 'CustID'
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
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PayReturnRepID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from ARTrPayReturnRepDt '
      ' WHERE PayReturnRepID=:PayReturnRepID'
      '')
    Left = 328
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
    object quDetilPayReturnRepID: TStringField
      FieldName = 'PayReturnRepID'
      Size = 50
    end
    object quDetilReturnRepID: TStringField
      FieldName = 'ReturnRepID'
      Size = 50
    end
    object quDetilValueTotal: TBCDField
      FieldName = 'ValueTotal'
      Precision = 18
    end
    object quDetilCTgl: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CTgl'
      Calculated = True
    end
    object quDetilCCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCustName'
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
      Size = 30
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
      'Select * FROM INMsItem')
    Left = 376
    Top = 272
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 420
    Top = 4
  end
  object quPb: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM APTrPurchaseHd')
    Left = 708
    Top = 108
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'PayReturnRepID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Select isnull(Sum(ValuePayment ),0) as Total FROM ARTrPayReturnR' +
        'epDt '
      'WHERE PayReturnRepID=:PayReturnRepID'
      '')
    Left = 548
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
    Left = 432
    Top = 272
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 404
    Top = 272
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
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
end
