inherited fmARTrPerforma: TfmARTrPerforma
  Left = 527
  Top = 149
  Caption = 'Proforma Invoice'
  ClientHeight = 458
  ClientWidth = 917
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 409
    inherited pa3: TdxContainer
      Height = 230
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 446
    Width = 917
  end
  inherited pa2: TdxContainer
    Height = 409
  end
  inherited dxContainer7: TdxContainer
    Width = 724
    Height = 409
    inherited pcParent: TdxPageControl
      Width = 724
      Height = 409
      inherited ts01: TdxTabSheet
        object Shape5: TShape [0]
          Left = 416
          Top = 294
          Width = 307
          Height = 28
          Brush.Color = 13676331
        end
        object Shape6: TShape [1]
          Left = 416
          Top = 375
          Width = 307
          Height = 28
          Brush.Color = 13676331
          Enabled = False
        end
        object Shape4: TShape [2]
          Left = 416
          Top = 321
          Width = 307
          Height = 28
          Brush.Color = 13676331
        end
        object Shape3: TShape [3]
          Left = 416
          Top = 348
          Width = 307
          Height = 28
          Brush.Color = 13676331
        end
        object Label6: TLabel [4]
          Left = 24
          Top = 117
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jatuh Tempo :'
        end
        object Label33: TLabel [5]
          Left = 781
          Top = 481
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jumlah :'
        end
        object Label3: TLabel [6]
          Left = 35
          Top = 57
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pelanggan :'
        end
        object Label12: TLabel [7]
          Left = 47
          Top = 97
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'PO Cust :'
        end
        object Label2: TLabel [8]
          Left = 47
          Top = 37
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tanggal :'
        end
        object Label1: TLabel [9]
          Left = 30
          Top = 17
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Proforma ID :'
        end
        object Label4: TLabel [10]
          Left = 877
          Top = 481
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label20: TLabel [11]
          Left = 174
          Top = 116
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tgl Jatuh Tempo :'
        end
        object Label7: TLabel [12]
          Left = 149
          Top = 115
          Width = 19
          Height = 13
          Caption = 'Hari'
        end
        object DBText2: TDBText [13]
          Left = 264
          Top = 116
          Width = 90
          Height = 13
          DataField = 'LjatuhTempo'
          DataSource = dsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText [14]
          Left = 224
          Top = 57
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LCustName'
          DataSource = dsMain
        end
        object DBText1: TDBText [15]
          Left = 565
          Top = 299
          Width = 147
          Height = 23
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText12: TDBText [16]
          Left = 565
          Top = 326
          Width = 147
          Height = 23
          Alignment = taRightJustify
          DataField = 'PPN'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel [17]
          Left = 455
          Top = 299
          Width = 100
          Height = 19
          Alignment = taRightJustify
          Caption = 'Total SO : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel [18]
          Left = 431
          Top = 353
          Width = 124
          Height = 19
          Alignment = taRightJustify
          Caption = 'Grand Total : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel [19]
          Left = 420
          Top = 381
          Width = 135
          Height = 19
          Alignment = taRightJustify
          Caption = 'DP               % : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel [20]
          Left = 485
          Top = 326
          Width = 70
          Height = 19
          Alignment = taRightJustify
          Caption = 'PPN : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText [21]
          Left = 565
          Top = 353
          Width = 147
          Height = 23
          Alignment = taRightJustify
          DataField = 'GrandTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [22]
          Left = 545
          Top = 382
          Width = 166
          Height = 17
          Alignment = taRightJustify
          DataField = 'Bayar'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel [23]
          Left = 4
          Top = 138
          Width = 92
          Height = 16
          Caption = 'Detil Performa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel [24]
          Left = 71
          Top = 77
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = 'UP :'
        end
        object Label8: TLabel [25]
          Left = 252
          Top = 97
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'No SO :'
        end
        inherited bbSave: TdxButton
          Left = 513
          Top = 120
          Width = 81
          Height = 28
        end
        inherited bbCancel: TdxButton
          Left = 595
          Top = 120
          Width = 81
          Height = 28
        end
        object GroupBox2: TGroupBox
          Left = 480
          Top = 1
          Width = 195
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
            Top = 10
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
            Left = 53
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 6
          Top = 296
          Width = 119
          Height = 62
          Caption = '[Cara Bayar]'
          Ctl3D = False
          DataField = 'FgPayment'
          DataSource = dsMain
          Items.Strings = (
            'Cash'
            'Bank Transfer'
            'Cheque/Giro')
          ParentCtl3D = False
          TabOrder = 3
          Values.Strings = (
            'K'
            'B'
            'C')
        end
        object dxButton1: TdxButton
          Left = 312
          Top = 308
          Width = 100
          Height = 45
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'CETAK'
          TabOrder = 4
          TabStop = False
        end
        object rgKoma: TRadioGroup
          Left = 129
          Top = 296
          Width = 75
          Height = 63
          Caption = '[ Koma ]'
          Ctl3D = False
          ItemIndex = 1
          Items.Strings = (
            'Pakai'
            'Tidak ')
          ParentCtl3D = False
          TabOrder = 5
        end
        object RadioGroup1: TRadioGroup
          Left = 207
          Top = 296
          Width = 100
          Height = 63
          Caption = '[ TTD ]'
          Ctl3D = False
          ItemIndex = 1
          Items.Strings = (
            'Tidak Tampil'
            'Tampil')
          ParentCtl3D = False
          TabOrder = 6
        end
        object dbgPenawaran: TdxDBGrid
          Left = 1
          Top = 154
          Width = 722
          Height = 137
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgPenawaranGBUID: TdxDBGridMaskColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PerformaID'
          end
          object dbgPenawaranItemID: TdxDBGridColumn
            Caption = 'Kode Barang'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgPenawaranProduk: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dbgPenawaranDescription: TdxDBGridBlobColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Keterangan'
            BlobKind = bkMemo
          end
          object dbgPenawaranQty: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgPenawaranUOMID: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
          end
          object dbgPenawaranPrice: TdxDBGridColumn
            Caption = 'Harga'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgPenawaranTotal: TdxDBGridColumn
            Caption = 'Total'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
          object dbgPenawaranUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgPenawaranUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 170
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = -3
          Top = 419
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
          Caption = '(+) Barang'
          TabOrder = 8
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 83
          Top = 419
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
          Caption = '(-) Barang'
          TabOrder = 9
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 169
          Top = 419
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
          TabOrder = 10
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 255
          Top = 419
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
          TabOrder = 11
          TabStop = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 97
          Top = 13
          Width = 150
          Color = clWhite
          TabOrder = 12
          TabStop = False
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'PerformaID'
          DataSource = dsMain
          ReadOnly = True
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 97
          Top = 33
          Width = 100
          TabOrder = 13
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 97
          Top = 53
          Width = 124
          TabOrder = 14
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CustID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object dxDBEdit4: TdxDBEdit
          Left = 97
          Top = 73
          Width = 150
          Color = clWhite
          TabOrder = 15
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'UP'
          DataSource = dsMain
          ReadOnly = False
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBEdit2: TdxDBEdit
          Left = 97
          Top = 93
          Width = 150
          Color = clWhite
          TabOrder = 16
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'POID'
          DataSource = dsMain
          ReadOnly = False
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 294
          Top = 93
          Width = 171
          TabOrder = 17
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SOID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit3: TdxDBEdit
          Left = 97
          Top = 113
          Width = 50
          TabOrder = 18
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'JthTempo'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit9: TdxDBEdit
          Left = 451
          Top = 379
          Width = 50
          TabOrder = 19
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'DP'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 917
    inherited sbLast: TSpeedButton
      Left = 880
    end
    inherited sbNext: TSpeedButton
      Left = 853
    end
    inherited sbPrev: TSpeedButton
      Left = 826
    end
    inherited sbFirst: TSpeedButton
      Left = 799
    end
    inherited sbPeriod: TSpeedButton
      Left = 773
    end
    inherited BvlPeriod: TBevel
      Left = 527
    end
    inherited laPeriod: TLabel
      Left = 531
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from artrperformahd')
    object quMainPerformaID: TStringField
      FieldName = 'PerformaID'
      Size = 50
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      OnChange = quMainSOIDChange
      Size = 50
    end
    object quMainupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quMainupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainJthTempo: TIntegerField
      FieldName = 'JthTempo'
    end
    object quMainFgPayment: TStringField
      FieldName = 'FgPayment'
      Size = 50
    end
    object quMainLjatuhTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'LjatuhTempo'
      Calculated = True
    end
    object quMainLCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCustName'
      Size = 100
      Calculated = True
    end
    object quMainSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainGrandTotal: TBCDField
      FieldName = 'GrandTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainUP: TStringField
      FieldName = 'UP'
      Size = 50
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainNilaiPPN: TBCDField
      FieldName = 'NilaiPPN'
      Precision = 18
    end
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 4
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
      ShortCut = 114
    end
    inherited ActCancel: TAction
      Caption = 'BATAL (F4)'
      ShortCut = 115
    end
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
        Name = 'performaid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from artrperformadt where performaid=:performaid'
      'order by ItemID')
    object quDetilPerformaID: TStringField
      FieldName = 'PerformaID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLUOMID: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUOMID'
      Size = 100
      Calculated = True
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    DataSource = dsMain
    Parameters = <
      item
        Name = 'performaid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ROUND(K.Total,2) as SubTotal,ROUND(K.Total*(PPN/100),2) a' +
        's PPN,ROUND(K.Total*(1+(PPN/100)),2) as GrandTotal,ROUND(ROUND(K' +
        '.Total*(1+(PPN/100)),2)*K.DP*0.01,2) as Bayar FROM ('
      
        'select A.PerformaID,B.DP,SUM(A.Qty*A.Price) as Total,ISNULL(B.NI' +
        'laiPPN,11) as PPN from ARTrPerformaDt A '
      
        'Inner Join ARTrPerformaHD B on A.PerformaID=B.PerformaID GROUP B' +
        'Y A.PerformaID,B.DP,B.NilaiPPN) as K WHERE K.PerformaID=:Perform' +
        'aID')
    Left = 676
    Top = 292
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quTotalPPN: TBCDField
      DisplayLabel = '#,0.00'
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 7
    end
    object quTotalGrandTotal: TBCDField
      DisplayLabel = '#,0.00'
      FieldName = 'GrandTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quTotalBayar: TBCDField
      DisplayLabel = '#,0.00'
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 704
    Top = 292
  end
end
