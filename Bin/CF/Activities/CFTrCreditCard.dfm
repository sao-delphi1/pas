inherited fmCFTrCreditCard: TfmCFTrCreditCard
  Left = 319
  Top = 180
  Caption = 'Titipan Kartu Kredit'
  ClientHeight = 334
  ClientWidth = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 285
    inherited pa3: TdxContainer
      Height = 106
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 322
    Width = 612
  end
  inherited pa2: TdxContainer
    Height = 285
  end
  inherited dxContainer7: TdxContainer
    Width = 419
    Height = 285
    inherited pcParent: TdxPageControl
      Width = 419
      Height = 285
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 48
          Top = 12
          Width = 63
          Height = 13
          Caption = 'Voucher No :'
        end
        object Label2: TLabel [1]
          Left = 66
          Top = 33
          Width = 45
          Height = 13
          Caption = 'Tanggal :'
        end
        object Label3: TLabel [2]
          Left = 63
          Top = 54
          Width = 48
          Height = 13
          Caption = 'No Kartu :'
        end
        object Label4: TLabel [3]
          Left = 38
          Top = 75
          Width = 73
          Height = 13
          Caption = 'Bank Penerbit :'
        end
        object Label5: TLabel [4]
          Left = 33
          Top = 117
          Width = 78
          Height = 13
          Caption = 'Bank Penerima :'
        end
        object Label6: TLabel [5]
          Left = 69
          Top = 138
          Width = 42
          Height = 13
          Caption = 'Amount :'
        end
        object Label7: TLabel [6]
          Left = 32
          Top = 159
          Width = 79
          Height = 13
          Caption = 'Service Charge :'
        end
        object Label8: TLabel [7]
          Left = 50
          Top = 96
          Width = 58
          Height = 13
          Caption = 'Atas Nama :'
        end
        object DBText1: TDBText [8]
          Left = 245
          Top = 117
          Width = 158
          Height = 13
          DataField = 'LBankName'
          DataSource = dsMain
        end
        object DBText2: TDBText [9]
          Left = 269
          Top = 141
          Width = 120
          Height = 20
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [10]
          Left = 71
          Top = 180
          Width = 40
          Height = 13
          Caption = 'Vendor :'
        end
        object DBText3: TDBText [11]
          Left = 245
          Top = 180
          Width = 158
          Height = 13
          DataField = 'LSuppName'
          DataSource = dsMain
        end
        object Label10: TLabel [12]
          Left = 75
          Top = 201
          Width = 36
          Height = 13
          Caption = 'Valuta :'
        end
        object DBText4: TDBText [13]
          Left = 245
          Top = 201
          Width = 158
          Height = 13
          DataField = 'LValuta'
          DataSource = dsMain
        end
        inherited bbSave: TdxButton
          Left = 264
          Top = 253
          Caption = '&Save (F3)'
        end
        inherited bbCancel: TdxButton
          Left = 341
          Top = 253
          Caption = '&Cancel (F4)'
        end
        object GroupBox2: TGroupBox
          Left = 7
          Top = 221
          Width = 221
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label21: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText8: TDBText
            Left = 53
            Top = 9
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 7
            Top = 30
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Waktu :'
          end
          object DBText9: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 120
          Top = 8
          Width = 121
          TabOrder = 3
          DataField = 'VoucherNo'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 120
          Top = 29
          Width = 121
          TabOrder = 4
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Transdate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit2: TdxDBEdit
          Left = 120
          Top = 50
          Width = 288
          TabOrder = 5
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CardID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit3: TdxDBEdit
          Left = 120
          Top = 71
          Width = 288
          TabOrder = 6
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CardBank'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit6: TdxDBEdit
          Left = 120
          Top = 92
          Width = 288
          TabOrder = 7
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 120
          Top = 113
          Width = 121
          TabOrder = 8
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'BankID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBEdit4: TdxDBEdit
          Left = 120
          Top = 134
          Width = 121
          TabOrder = 9
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Amount'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit5: TdxDBEdit
          Left = 120
          Top = 155
          Width = 121
          TabOrder = 10
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Charge'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 120
          Top = 176
          Width = 121
          TabOrder = 11
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'SuppID'
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
          Left = 120
          Top = 197
          Width = 121
          TabOrder = 12
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 612
    inherited sbLast: TSpeedButton
      Left = 575
    end
    inherited sbNext: TSpeedButton
      Left = 548
    end
    inherited sbPrev: TSpeedButton
      Left = 521
    end
    inherited sbFirst: TSpeedButton
      Left = 494
    end
    inherited sbPeriod: TSpeedButton
      Left = 468
    end
    inherited BvlPeriod: TBevel
      Left = 222
    end
    inherited laPeriod: TLabel
      Left = 226
    end
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFTrCreditCard')
    object quMainVoucherNo: TStringField
      FieldName = 'VoucherNo'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainActor: TStringField
      FieldName = 'Actor'
    end
    object quMainAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainCharge: TBCDField
      FieldName = 'Charge'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainCardID: TStringField
      FieldName = 'CardID'
      Size = 50
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
    object quMainCardBank: TStringField
      FieldName = 'CardBank'
      Size = 50
    end
    object quMainBankID: TStringField
      FieldName = 'BankID'
    end
    object quMainLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankID'
      LookupResultField = 'BankName'
      KeyFields = 'BankID'
      Size = 100
      Lookup = True
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainLValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'LValuta'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 80
      Lookup = True
    end
    object quMainLSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
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
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'VoucherNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ISNULL(Amount+(Amount*Charge*0.01),0) as Total,'
      'ISNULL(Amount*Charge*0.01,0) as Charge,'
      'ISNULL((Amount+(Amount*Charge*0.01))*0.0225,0) as SCharge'
      'FROM CFTrCreditCard WHERE VoucherNo=:VoucherNo')
    Left = 296
    Top = 152
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quTotalCharge: TBCDField
      FieldName = 'Charge'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quTotalSCharge: TBCDField
      FieldName = 'SCharge'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 7
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 328
    Top = 152
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT BankID,BankName FROM CFMsBank')
    Left = 368
    Top = 116
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SuppID,SuppName FROM APMsSupplier')
    Left = 360
    Top = 156
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SaMsValuta')
    Left = 360
    Top = 196
  end
end
