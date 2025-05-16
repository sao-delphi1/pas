inherited fmARTrInvService: TfmARTrInvService
  Left = 11
  Top = 96
  Caption = 'Invoice Service'
  ClientHeight = 531
  ClientWidth = 968
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 482
    inherited pa3: TdxContainer
      Height = 303
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 519
    Width = 968
  end
  inherited pa2: TdxContainer
    Height = 482
  end
  inherited pcMain: TdxPageControl
    Width = 775
    Height = 482
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 778
        Height = 539
        Filter.Criteria = {00000000}
        object dbgListInvServiceID: TdxDBGridMaskColumn
          Caption = 'Nota Inv Service'
          Width = 177
          BandIndex = 0
          RowIndex = 0
          FieldName = 'InvServiceID'
        end
        object dbgListTransdate: TdxDBGridDateColumn
          Caption = 'Tgl invoice'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Transdate'
        end
        object dbgListServiceId: TdxDBGridMaskColumn
          Caption = 'Nota Service'
          Width = 161
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ServiceId'
        end
        object dbgListTeknisiID: TdxDBGridMaskColumn
          Caption = 'Kode Teknisi'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TeknisiID'
        end
        object dbgListLTeknisiName: TdxDBGridLookupColumn
          Caption = 'Nama Teknisi'
          Width = 169
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LTeknisiName'
        end
        object dbgListJatuhTempo: TdxDBGridCurrencyColumn
          Caption = 'Tgl JatuhTempo'
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JatuhTempo'
          Nullable = False
        end
        object dbgListTglJtTempo: TdxDBGridColumn
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TglJtTempo'
        end
        object dbgListServiceFee: TdxDBGridCurrencyColumn
          Width = 174
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ServiceFee'
          Nullable = False
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 775
        Height = 459
        inherited ts0201: TdxTabSheet
          object Shape3: TShape [0]
            Left = 372
            Top = 400
            Width = 403
            Height = 27
            Brush.Color = 15259016
          end
          object Shape4: TShape [1]
            Left = 372
            Top = 374
            Width = 403
            Height = 27
            Brush.Color = 15259016
          end
          object Label1: TLabel [2]
            Left = 12
            Top = 17
            Width = 103
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota Invoice Service:'
          end
          object Label2: TLabel [3]
            Left = 32
            Top = 37
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tanggal Invoice :'
          end
          object Label3: TLabel [4]
            Left = 48
            Top = 57
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nota Service :'
          end
          object Label4: TLabel [5]
            Left = 76
            Top = 77
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Teknisi :'
          end
          object Label5: TLabel [6]
            Left = 55
            Top = 119
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Keterangan :'
          end
          object Label6: TLabel [7]
            Left = 48
            Top = 139
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jatuh Tempo :'
          end
          object Label7: TLabel [8]
            Left = 161
            Top = 139
            Width = 19
            Height = 13
            Caption = 'Hari'
          end
          object Label20: TLabel [9]
            Left = 202
            Top = 139
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tgl Jatuh Tempo :'
          end
          object Label13: TLabel [10]
            Left = 3
            Top = 244
            Width = 230
            Height = 20
            Caption = 'Detil Penggunaan SparePart'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText5: TDBText [11]
            Left = 276
            Top = 76
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'LTeknisiName'
            DataSource = dsMain
          end
          object DBText1: TDBText [12]
            Left = 276
            Top = 56
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'LNama'
            DataSource = dsMain
          end
          object DBText2: TDBText [13]
            Left = 292
            Top = 140
            Width = 141
            Height = 17
            DataField = 'TglJtTempo'
            DataSource = dsMain
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel [14]
            Left = 380
            Top = 379
            Width = 137
            Height = 19
            Alignment = taRightJustify
            Caption = 'SUBTOTAL NOTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel [15]
            Left = 560
            Top = 379
            Width = 6
            Height = 19
            Alignment = taRightJustify
            Caption = ':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText3: TDBText [16]
            Left = 567
            Top = 379
            Width = 196
            Height = 19
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
          object Shape5: TShape [17]
            Left = 372
            Top = 426
            Width = 403
            Height = 27
            Brush.Color = 15259016
          end
          object Label16: TLabel [18]
            Left = 381
            Top = 405
            Width = 124
            Height = 19
            Alignment = taRightJustify
            Caption = 'BIAYA SERVICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel [19]
            Left = 560
            Top = 429
            Width = 6
            Height = 19
            Alignment = taRightJustify
            Caption = ':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel [20]
            Left = 381
            Top = 429
            Width = 169
            Height = 19
            Alignment = taRightJustify
            Caption = 'GRAND TOTAL NOTA '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel [21]
            Left = 560
            Top = 405
            Width = 6
            Height = 19
            Alignment = taRightJustify
            Caption = ':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText4: TDBText [22]
            Left = 567
            Top = 429
            Width = 197
            Height = 19
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
          object Label8: TLabel [23]
            Left = 300
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
          object Label9: TLabel [24]
            Left = 4
            Top = 154
            Width = 102
            Height = 20
            Caption = 'Detil Service'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label11: TLabel [25]
            Left = 8
            Top = 378
            Width = 127
            Height = 24
            Caption = 'Status Cetak :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText7: TDBText [26]
            Left = 142
            Top = 378
            Width = 80
            Height = 24
            AutoSize = True
            DataField = 'Cetak'
            DataSource = dsMain
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel [27]
            Left = 35
            Top = 98
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Caption = 'No. Sales Order :'
          end
          inherited bbSave: TdxButton
            Left = 609
            Top = 115
          end
          inherited bbCancel: TdxButton
            Left = 685
            Top = 115
          end
          object GroupBox2: TGroupBox
            Left = 552
            Top = 4
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
          object dxButton1: TdxButton
            Left = 242
            Top = 406
            Width = 127
            Height = 44
            Hint = 'Cancel Changes'
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Version = '1.0.2e'
            OnClick = dxButton1Click
            Caption = 'Cetak Invoice'
            TabOrder = 3
          end
          object dxDBEdit1: TdxDBEdit
            Left = 120
            Top = 13
            Width = 181
            Color = clWhite
            TabOrder = 4
            TabStop = False
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'InvServiceID'
            DataSource = dsMain
            ReadOnly = True
            StyleController = SCEdit
            StoredValues = 64
          end
          object dxDBEdit5: TdxDBEdit
            Left = 575
            Top = 402
            Width = 192
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'ServiceFee'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dbg: TdxDBGrid
            Left = 2
            Top = 173
            Width = 773
            Height = 71
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'List Item(s)'
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'KonsinyasiID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 6
            OnEnter = dbgEnter
            DataSource = dsServiceItem
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 125
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
            end
            object dbgItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 280
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemname'
            end
            object dbgQty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dbgProduct: TdxDBGridColumn
              Caption = 'Produk'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 123
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LProdukName'
            end
            object dbgGroup: TdxDBGridColumn
              Caption = 'Group'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LGroupName'
            end
          end
          object dbgPenjualan: TdxDBGrid
            Left = 2
            Top = 267
            Width = 774
            Height = 100
            Bands = <
              item
              end>
            DefaultLayout = True
            KeyField = 'ItemID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 7
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfUltraFlat
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgPenjualanItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 229
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dbgPenjualanQty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dbgPenjualanHarga: TdxDBGridColumn
              Alignment = taRightJustify
              Caption = 'Harga'
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
            end
            object dbgPenjualanTotal: TdxDBGridColumn
              Caption = 'Total'
              Color = clWhite
              ReadOnly = True
              TabStop = False
              Width = 86
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTotal'
            end
            object dbgPenjualanNote: TdxDBGridColumn
              Caption = 'Keterangan'
              Width = 269
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Note'
            end
            object dbgPenjualanWarehouseID: TdxDBGridButtonColumn
              Caption = 'Gudang'
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WarehouseID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgPenjualanWarehouseIDButtonClick
            end
            object dbgPenjualanItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgPenjualanItemIDButtonClick
            end
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 120
            Top = 33
            Width = 89
            TabOrder = 8
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'Transdate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtPelanggan: TdxDBButtonEdit
            Left = 120
            Top = 53
            Width = 153
            TabOrder = 9
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'ServiceId'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = txtPelangganButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit1: TdxDBButtonEdit
            Left = 120
            Top = 73
            Width = 153
            TabOrder = 10
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'TeknisiID'
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
            Top = 94
            Width = 153
            TabOrder = 11
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'SOID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBEdit2: TdxDBEdit
            Left = 120
            Top = 115
            Width = 461
            TabOrder = 12
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBEdit3: TdxDBEdit
            Left = 120
            Top = 135
            Width = 36
            TabOrder = 13
            OnKeyPress = dxDBEdit1KeyPress
            DataField = 'JatuhTempo'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 968
    inherited sbLast: TSpeedButton
      Left = 940
    end
    inherited sbNext: TSpeedButton
      Left = 917
    end
    inherited sbPrev: TSpeedButton
      Left = 894
    end
    inherited sbFirst: TSpeedButton
      Left = 871
    end
    inherited sbPeriod: TSpeedButton
      Left = 843
    end
    inherited BvlPeriod: TBevel
      Left = 597
    end
    inherited laPeriod: TLabel
      Left = 601
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *,CASE WHEN FgCetak='#39'B'#39' THEN '#39'Belum Cetak'#39
      
        '                           WHEN FgCetak='#39'S'#39' THEN '#39'Sudah Cetak'#39' E' +
        'ND as Cetak'
      'FROM ARTrInvServiceHd')
    object quMainInvServiceID: TStringField
      FieldName = 'InvServiceID'
      Size = 50
    end
    object quMainServiceId: TStringField
      FieldName = 'ServiceId'
      Size = 50
    end
    object quMainTeknisiID: TStringField
      FieldName = 'TeknisiID'
      Size = 50
    end
    object quMainJatuhTempo: TBCDField
      FieldName = 'JatuhTempo'
      Precision = 18
      Size = 0
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object quMainTTLSV: TBCDField
      FieldName = 'TTLSV'
      Precision = 18
      Size = 0
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainLTeknisiName: TStringField
      FieldKind = fkLookup
      FieldName = 'LTeknisiName'
      LookupDataSet = quTeknisi
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'TeknisiID'
      Size = 50
      Lookup = True
    end
    object quMainLTglService: TStringField
      FieldKind = fkLookup
      FieldName = 'LTglService'
      LookupDataSet = quService
      LookupKeyFields = 'ServiceId'
      LookupResultField = 'Tgl'
      KeyFields = 'ServiceId'
      Size = 50
      Lookup = True
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainServiceFee: TBCDField
      FieldName = 'ServiceFee'
      Precision = 18
      Size = 0
    end
    object quMainTglJtTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'TglJtTempo'
      Calculated = True
    end
    object quMainLAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'LAddress'
      LookupDataSet = quService
      LookupKeyFields = 'ServiceId'
      LookupResultField = 'Address'
      KeyFields = 'ServiceId'
      Size = 80
      Lookup = True
    end
    object quMainLNama: TStringField
      FieldKind = fkLookup
      FieldName = 'LNama'
      LookupDataSet = quService
      LookupKeyFields = 'ServiceId'
      LookupResultField = 'Nama'
      KeyFields = 'ServiceId'
      Size = 80
      Lookup = True
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainCetak: TStringField
      FieldName = 'Cetak'
      ReadOnly = True
      Size = 11
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'ServiceId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrServiceDtPS'
      'WHERE ServiceId=:ServiceId')
    object quDetilServiceID: TStringField
      FieldName = 'ServiceID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLitemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LitemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quTeknisi: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select SalesID, SalesName From ARMsSales')
    Left = 648
    Top = 80
  end
  object quService: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select ServiceId,Convert(varchar(10),Transdate,103) as Tgl,Addre' +
        'ss, Nama'
      'FROM ARTrServiceHd')
    Left = 676
    Top = 80
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 444
    Top = 356
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from INMsItem')
    Left = 412
    Top = 356
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'InvServiceId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select A.InvServiceId,'
      'SUM(B.Qty*B.Price) as Subtotal,'
      'SUM(B.Qty*B.Price) +A. Servicefee as Total'
      'FROM ARTrInvServicehd A '
      'INNER JOIN ArTrServiceDtPS B ON A.ServiceID=B.ServiceID'
      'WHERE A.InvserviceId=:InvServiceID'
      'GROUP BY A.InvServiceID,A.ServiceFee')
    Left = 504
    Top = 352
    object quTotalInvServiceId: TStringField
      FieldName = 'InvServiceId'
      Size = 50
    end
    object quTotalSubtotal: TBCDField
      FieldName = 'Subtotal'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 532
    Top = 352
  end
  object quServiceItem: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'ServiceId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ARTrServiceDt'
      'WHERE ServiceID=:ServiceID')
    Left = 372
    Top = 240
    object quServiceItemServiceID: TStringField
      FieldName = 'ServiceID'
      Size = 50
    end
    object quServiceItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object quServiceItemQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quServiceItemUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quServiceItemUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quServiceItemNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quServiceItemLProduk: TStringField
      FieldKind = fkLookup
      FieldName = 'LProduk'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ProductID'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object quServiceItemLGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroup'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'GroupID'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object quServiceItemLProdukName: TStringField
      FieldKind = fkLookup
      FieldName = 'LProdukName'
      LookupDataSet = quProduct
      LookupKeyFields = 'ProductID'
      LookupResultField = 'ProductDesc'
      KeyFields = 'LProduk'
      Size = 50
      Lookup = True
    end
    object quServiceItemLGroupName: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroupName'
      LookupDataSet = quGroup
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupDesc'
      KeyFields = 'LGroup'
      Size = 50
      Lookup = True
    end
    object quServiceItemLItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
  end
  object dsServiceItem: TDataSource
    DataSet = quServiceItem
    OnStateChange = dsServiceItemStateChange
    Left = 400
    Top = 240
  end
  object quProduct: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsProduct')
    Left = 688
    Top = 228
  end
  object quGroup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsGroup')
    Left = 688
    Top = 256
  end
end
