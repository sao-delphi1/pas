inherited fmARTrKlaimBagasi: TfmARTrKlaimBagasi
  Left = 352
  Top = 200
  Caption = 'Pengajuan Klaim Bagasi'
  ClientHeight = 455
  ClientWidth = 849
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 406
    inherited pa3: TdxContainer
      Height = 227
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 443
    Width = 849
  end
  inherited pa2: TdxContainer
    Height = 406
  end
  inherited dxContainer7: TdxContainer
    Width = 656
    Height = 406
    inherited pcParent: TdxPageControl
      Width = 656
      Height = 406
      inherited ts01: TdxTabSheet
        object Shape6: TShape [0]
          Left = 350
          Top = 378
          Width = 303
          Height = 27
          Brush.Color = 13676331
        end
        object Label1: TLabel [1]
          Left = 26
          Top = 16
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'No Transaksi :'
        end
        object Label2: TLabel [2]
          Left = 50
          Top = 36
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tanggal :'
        end
        object Label7: TLabel [3]
          Left = 35
          Top = 56
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kode Sales :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel [4]
          Left = 46
          Top = 76
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'UP/Note :'
        end
        object DBText4: TDBText [5]
          Left = 183
          Top = 55
          Width = 120
          Height = 17
          DataField = 'LSalesName'
          DataSource = dsMain
        end
        object Label12: TLabel [6]
          Left = 363
          Top = 382
          Width = 62
          Height = 19
          Alignment = taRightJustify
          Caption = 'TOTAL :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [7]
          Left = 497
          Top = 382
          Width = 140
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
        inherited bbSave: TdxButton
          Left = 424
          Top = 172
          Width = 85
          Height = 28
        end
        inherited bbCancel: TdxButton
          Left = 510
          Top = 172
          Width = 85
          Height = 28
        end
        object dxDBEdit1: TdxDBEdit
          Left = 100
          Top = 12
          Width = 125
          Color = clWhite
          TabOrder = 2
          TabStop = False
          DataField = 'TransID'
          DataSource = dsMain
          ReadOnly = True
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 100
          Top = 32
          Width = 85
          TabOrder = 3
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 100
          Top = 52
          Width = 77
          TabOrder = 4
          DataField = 'SalesID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 100
          Top = 72
          Width = 189
          Color = clWhite
          TabOrder = 5
          TabStop = False
          DataField = 'UP'
          DataSource = dsMain
          ReadOnly = False
          StyleController = SCEdit
          StoredValues = 64
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 96
          Width = 313
          Height = 129
          Caption = '[ Informasi Rekening ]'
          TabOrder = 6
          object Label4: TLabel
            Left = 20
            Top = 32
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nama Rekening :'
          end
          object Label5: TLabel
            Left = 34
            Top = 52
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'No Rekening :'
          end
          object Label6: TLabel
            Left = 72
            Top = 72
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bank :'
          end
          object Label8: TLabel
            Left = 60
            Top = 92
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cabang :'
          end
          object dxDBEdit3: TdxDBEdit
            Left = 109
            Top = 28
            Width = 164
            Color = clWhite
            TabOrder = 0
            TabStop = False
            DataField = 'Nama'
            DataSource = dsMain
            ReadOnly = False
            StyleController = SCEdit
            StoredValues = 64
          end
          object dxDBEdit4: TdxDBEdit
            Left = 109
            Top = 48
            Width = 164
            Color = clWhite
            TabOrder = 1
            TabStop = False
            DataField = 'Rekening'
            DataSource = dsMain
            ReadOnly = False
            StyleController = SCEdit
            StoredValues = 64
          end
          object dxDBEdit5: TdxDBEdit
            Left = 109
            Top = 68
            Width = 164
            Color = clWhite
            TabOrder = 2
            TabStop = False
            DataField = 'Bank'
            DataSource = dsMain
            ReadOnly = False
            StyleController = SCEdit
            StoredValues = 64
          end
          object dxDBEdit6: TdxDBEdit
            Left = 109
            Top = 88
            Width = 164
            Color = clWhite
            TabOrder = 3
            TabStop = False
            DataField = 'Cabang'
            DataSource = dsMain
            ReadOnly = False
            StyleController = SCEdit
            StoredValues = 64
          end
        end
        object GroupBox2: TGroupBox
          Left = 408
          Top = 10
          Width = 217
          Height = 55
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          object Label21: TLabel
            Left = 16
            Top = 15
            Width = 45
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'User :'
          end
          object DBText8: TDBText
            Left = 71
            Top = 15
            Width = 120
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 16
            Top = 31
            Width = 45
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Waktu :'
          end
          object DBText9: TDBText
            Left = 71
            Top = 31
            Width = 120
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object GroupBox3: TGroupBox
          Left = 408
          Top = 87
          Width = 217
          Height = 71
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          object Label9: TLabel
            Left = 16
            Top = 31
            Width = 45
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Oto By :'
          end
          object DBText1: TDBText
            Left = 71
            Top = 31
            Width = 120
            Height = 17
            DataField = 'OtoBy'
            DataSource = dsMain
          end
          object Label10: TLabel
            Left = 8
            Top = 47
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Oto Date :'
          end
          object DBText2: TDBText
            Left = 71
            Top = 47
            Width = 120
            Height = 17
            DataField = 'OtoDate'
            DataSource = dsMain
          end
          object Label11: TLabel
            Left = 16
            Top = 15
            Width = 45
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Status :'
          end
          object DBText3: TDBText
            Left = 71
            Top = 15
            Width = 120
            Height = 17
            DataField = 'LStatus'
            DataSource = dsMain
          end
        end
        object dbgPenawaran: TdxDBGrid
          Left = 1
          Top = 230
          Width = 655
          Height = 148
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'POID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 9
          OnEnter = dbgPenawaranEnter
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgPenawaranColumn1: TdxDBGridColumn
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
          object dbgPenawaranColumn2: TdxDBGridButtonColumn
            Caption = 'Nomor Invoice'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgPenawaranColumn2ButtonClick
          end
          object dbgPenawaranColumn4: TdxDBGridColumn
            Caption = 'Tgl Invoice'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LTanggalSO'
          end
          object dbgPenawaranColumn5: TdxDBGridColumn
            Caption = 'Customer'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LCustomer'
          end
          object dbgPenawaranColumn3: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Amount'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 5
          Top = 379
          Width = 85
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Data'
          TabOrder = 10
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 91
          Top = 379
          Width = 85
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Data'
          TabOrder = 11
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 177
          Top = 379
          Width = 85
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 12
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 263
          Top = 379
          Width = 85
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 13
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 4444
          Left = 409
          Top = 67
          Width = 85
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'Submit'
          TabOrder = 14
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 849
    inherited sbLast: TSpeedButton
      Left = 812
    end
    inherited sbNext: TSpeedButton
      Left = 785
    end
    inherited sbPrev: TSpeedButton
      Left = 758
    end
    inherited sbFirst: TSpeedButton
      Left = 731
    end
    inherited sbPeriod: TSpeedButton
      Left = 705
    end
    inherited BvlPeriod: TBevel
      Left = 459
    end
    inherited laPeriod: TLabel
      Left = 463
    end
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from artrklaimbagasihd')
    object quMainTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quMainUP: TStringField
      FieldName = 'UP'
      Size = 50
    end
    object quMainBank: TStringField
      FieldName = 'Bank'
      Size = 50
    end
    object quMainCabang: TStringField
      FieldName = 'Cabang'
      Size = 50
    end
    object quMainRekening: TStringField
      FieldName = 'Rekening'
      Size = 50
    end
    object quMainNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object quMainTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 50
    end
    object quMainOtoBy: TStringField
      FieldName = 'OtoBy'
      Size = 50
    end
    object quMainOtoDate: TDateTimeField
      FieldName = 'OtoDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 100
      Calculated = True
    end
    object quMainLStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LStatus'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 4
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quDetilBeforeInsert
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'transid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from artrklaimbagasidt where transid=:transid')
    object quDetilTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetilAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilLTanggalSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTanggalSO'
      Size = 100
      Calculated = True
    end
    object quDetilLCustomer: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCustomer'
      Size = 100
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'TransID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.TransID,ISNULL(SUM(A.Amount),0) as Total '
      'from ARTrKlaimBagasiDt A '
      'WHERE A.TransID=:TransID'
      'GROUP BY A.TransID')
    Left = 736
    Top = 384
    object quTotalTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 764
    Top = 384
  end
end
