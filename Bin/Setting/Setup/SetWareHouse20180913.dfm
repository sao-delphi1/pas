inherited fmSettingGudang: TfmSettingGudang
  Left = 276
  Top = 2
  Caption = 'Form Setting System'
  ClientHeight = 633
  ClientWidth = 537
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 537
    Height = 596
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      537
      596)
    object Label7: TLabel
      Left = 225
      Top = 9
      Width = 178
      Height = 24
      Alignment = taCenter
      Caption = 'SETTING SYSTEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbSave: TdxButton
      Tag = 3333
      Left = 311
      Top = 553
      Width = 95
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbSaveClick
      Caption = '&SIMPAN'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 406
      Top = 553
      Width = 95
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      Caption = '&BATAL'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 2
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 32
      Width = 505
      Height = 226
      Caption = '[ DEFAULT GUDANG ]'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Label30: TLabel
        Left = 20
        Top = 25
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PEMBELIAN :'
      end
      object Label1: TLabel
        Left = 20
        Top = 51
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PENJUALAN :'
      end
      object DBText1: TDBText
        Left = 322
        Top = 25
        Width = 175
        Height = 17
        DataField = 'LDGPb'
        DataSource = dsMain
      end
      object DBText2: TDBText
        Left = 322
        Top = 51
        Width = 175
        Height = 17
        DataField = 'LDGPj'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 20
        Top = 76
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TRANSFER :'
      end
      object Label5: TLabel
        Left = 20
        Top = 149
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'KONSINYASI :'
      end
      object Label6: TLabel
        Left = 20
        Top = 173
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SERVICE :'
      end
      object DBText5: TDBText
        Left = 322
        Top = 76
        Width = 175
        Height = 17
        DataField = 'LDGTr'
        DataSource = dsMain
      end
      object DBText6: TDBText
        Left = 322
        Top = 148
        Width = 175
        Height = 17
        DataField = 'LDGK'
        DataSource = dsMain
      end
      object DBText7: TDBText
        Left = 322
        Top = 172
        Width = 175
        Height = 17
        DataField = 'LDGS'
        DataSource = dsMain
      end
      object Label8: TLabel
        Left = 20
        Top = 100
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RETUR  :'
      end
      object Label9: TLabel
        Left = 20
        Top = 125
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PENGGANTI RETUR :'
      end
      object DBText8: TDBText
        Left = 322
        Top = 124
        Width = 175
        Height = 17
        DataField = 'LDGPR'
        DataSource = dsMain
      end
      object DBText9: TDBText
        Left = 322
        Top = 100
        Width = 175
        Height = 17
        DataField = 'LDGR'
        DataSource = dsMain
      end
      object DBText13: TDBText
        Left = 322
        Top = 195
        Width = 175
        Height = 17
        DataField = 'LDGC'
        DataSource = dsMain
      end
      object Label13: TLabel
        Left = 20
        Top = 196
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'COUNTER :'
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 152
        Top = 22
        Width = 157
        TabOrder = 0
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGPb'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 152
        Top = 47
        Width = 157
        TabOrder = 1
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGPj'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 152
        Top = 72
        Width = 157
        TabOrder = 2
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGTr'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit9: TdxDBButtonEdit
        Left = 152
        Top = 96
        Width = 157
        TabOrder = 3
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGR'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit9ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit8: TdxDBButtonEdit
        Left = 152
        Top = 121
        Width = 157
        TabOrder = 4
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGPR'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit8ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 152
        Top = 145
        Width = 157
        TabOrder = 5
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGK'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit6ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 152
        Top = 169
        Width = 157
        TabOrder = 6
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGS'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit7ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit13: TdxDBButtonEdit
        Left = 152
        Top = 192
        Width = 157
        TabOrder = 7
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGC'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit13ButtonClick
        ExistButtons = True
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 266
      Width = 505
      Height = 49
      Caption = '[ DEFAULT PELANGGAN ]'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object Label2: TLabel
        Left = 20
        Top = 21
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'COUNTER :'
      end
      object DBText3: TDBText
        Left = 322
        Top = 19
        Width = 175
        Height = 17
        DataField = 'LCustName'
        DataSource = dsMain
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 152
        Top = 17
        Width = 157
        TabOrder = 0
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'CustId'
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
    object GroupBox3: TGroupBox
      Left = 16
      Top = 319
      Width = 505
      Height = 162
      Caption = '[ DEFAULT REKNING ]'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      object Label3: TLabel
        Left = 11
        Top = 40
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PEMBELIAN :'
      end
      object Label10: TLabel
        Left = 11
        Top = 18
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PENJUALAN/SERVICE :'
      end
      object DBText4: TDBText
        Left = 354
        Top = 38
        Width = 144
        Height = 17
        DataField = 'LDRPb'
        DataSource = dsMain
      end
      object DBText10: TDBText
        Left = 354
        Top = 16
        Width = 144
        Height = 17
        DataField = 'LDRPj'
        DataSource = dsMain
      end
      object Label11: TLabel
        Left = 11
        Top = 62
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GROUP PENGELUARAN :'
      end
      object Label12: TLabel
        Left = 11
        Top = 109
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GROUP PEMASUKAN :'
      end
      object DBText11: TDBText
        Left = 354
        Top = 60
        Width = 144
        Height = 17
        DataField = 'LDGRPb'
        DataSource = dsMain
      end
      object DBText12: TDBText
        Left = 354
        Top = 107
        Width = 144
        Height = 17
        DataField = 'LDGRPj'
        DataSource = dsMain
      end
      object Label15: TLabel
        Left = 11
        Top = 85
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GROUP BIAYA :'
      end
      object DBText14: TDBText
        Left = 353
        Top = 83
        Width = 144
        Height = 17
        DataField = 'LDGRBi'
        DataSource = dsMain
      end
      object Label16: TLabel
        Left = 11
        Top = 131
        Width = 170
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GROUP PENDAPATAN LAIN :'
      end
      object DBText15: TDBText
        Left = 353
        Top = 129
        Width = 144
        Height = 17
        DataField = 'LDGRPLL'
        DataSource = dsMain
      end
      object dxDBButtonEdit11: TdxDBButtonEdit
        Left = 194
        Top = 58
        Width = 157
        TabOrder = 0
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGRPb'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit11ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit12: TdxDBButtonEdit
        Left = 194
        Top = 105
        Width = 157
        TabOrder = 1
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGRPj'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit12ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 194
        Top = 36
        Width = 157
        TabOrder = 2
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DRPb'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit10: TdxDBButtonEdit
        Left = 194
        Top = 14
        Width = 157
        TabOrder = 3
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DRPj'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit10ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit14: TdxDBButtonEdit
        Left = 194
        Top = 81
        Width = 157
        TabOrder = 4
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGRBi'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit14ButtonClick
        ExistButtons = True
      end
      object dxDBGrPendLL: TdxDBButtonEdit
        Left = 194
        Top = 127
        Width = 157
        TabOrder = 5
        OnKeyPress = dxDBButtonEdit2KeyPress
        DataField = 'DGRPLL'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBGrPendLLButtonClick
        ExistButtons = True
      end
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 487
      Width = 505
      Height = 54
      Caption = '[ DEFAULT PRINTER ]'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      object Label14: TLabel
        Left = 18
        Top = 22
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'BACK OFFICE :'
      end
      object cmbPrinterBackOffice: TdxDBPickEdit
        Left = 104
        Top = 18
        Width = 388
        TabOrder = 0
        DataField = 'sDPB'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 16
      Top = 546
      Width = 235
      Height = 43
      Caption = '[ Hasil Output ]'
      Columns = 2
      Ctl3D = False
      DataField = 'Cetak'
      DataSource = dsMain
      Items.Strings = (
        'Preview'
        'Langsung Cetak')
      ParentCtl3D = False
      TabOrder = 6
      Values.Strings = (
        '0'
        '1')
    end
  end
  inherited paToolBar: TdxContainer
    Width = 537
    inherited sbLast: TSpeedButton
      Left = 509
    end
    inherited sbNext: TSpeedButton
      Left = 486
    end
    inherited sbPrev: TSpeedButton
      Left = 463
    end
    inherited sbFirst: TSpeedButton
      Left = 440
    end
    inherited sbPeriod: TSpeedButton
      Left = 412
    end
    inherited BvlPeriod: TBevel
      Left = 166
    end
    inherited laPeriod: TLabel
      Left = 170
    end
  end
  inherited quMain: TADOQuery
    AfterPost = quMainAfterPost
    SQL.Strings = (
      'Select * FROM SAMSSet')
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustId'
      Size = 50
      Lookup = True
    end
    object quMainLDGPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPb'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPb'
      Size = 50
      Lookup = True
    end
    object quMainLDGPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPj'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPj'
      Size = 50
      Lookup = True
    end
    object quMainDGPb: TStringField
      FieldName = 'DGPb'
      Size = 30
    end
    object quMainDGPj: TStringField
      FieldName = 'DGPj'
      Size = 30
    end
    object quMainCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object quMainSalesId: TStringField
      FieldName = 'SalesId'
      Size = 30
    end
    object quMainLsalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LsalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesId'
      Size = 50
      Lookup = True
    end
    object quMainDGTr: TStringField
      FieldName = 'DGTr'
      Size = 50
    end
    object quMainDGK: TStringField
      FieldName = 'DGK'
      Size = 50
    end
    object quMainDGS: TStringField
      FieldName = 'DGS'
      Size = 50
    end
    object quMainLDGTr: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGTr'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGTr'
      Size = 50
      Lookup = True
    end
    object quMainLDGK: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGK'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGK'
      Size = 50
      Lookup = True
    end
    object quMainLDGS: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGS'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGS'
      Size = 50
      Lookup = True
    end
    object quMainDGR: TStringField
      FieldName = 'DGR'
      Size = 50
    end
    object quMainDGPR: TStringField
      FieldName = 'DGPR'
      Size = 50
    end
    object quMainLDGR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGR'
      Size = 50
      Lookup = True
    end
    object quMainLDGPR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPR'
      Size = 50
      Lookup = True
    end
    object quMainDRPb: TStringField
      FieldName = 'DRPb'
      Size = 30
    end
    object quMainDRPj: TStringField
      FieldName = 'DRPj'
      Size = 30
    end
    object quMainLDRPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPb'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPb'
      Size = 50
      Lookup = True
    end
    object quMainLDRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPj'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGRPb: TStringField
      FieldName = 'DGRPb'
      Size = 30
    end
    object quMainDGRPj: TStringField
      FieldName = 'DGRPj'
      Size = 30
    end
    object quMainLDGRPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPb'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGRPb'
      Size = 50
      Lookup = True
    end
    object quMainLDGRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPj'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGC: TStringField
      FieldName = 'DGC'
      Size = 50
    end
    object quMainLDGC: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGC'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGC'
      Size = 50
      Lookup = True
    end
    object quMainsDPB: TStringField
      FieldName = 'sDPB'
      Size = 50
    end
    object quMainDGRBi: TStringField
      FieldName = 'DGRBi'
      Size = 30
    end
    object quMainLDGRBi: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRBi'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekID'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGRBi'
      Size = 80
      Lookup = True
    end
    object quMainDGRPLL: TStringField
      FieldName = 'DGRPLL'
      Size = 30
    end
    object quMainLDGRPLL: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPLL'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekID'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGRPLL'
      Size = 80
      Lookup = True
    end
    object quMainCetak: TStringField
      FieldName = 'Cetak'
      Size = 1
    end
  end
  object quCust: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsCustomer')
    Left = 172
    Top = 360
  end
  object quWareHouse: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM INMsWareHouse')
    Left = 200
    Top = 360
  end
  object quSales: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsSales')
    Left = 228
    Top = 360
  end
  object quRek: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsRekening')
    Left = 256
    Top = 360
  end
  object quGroupRek: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsGroupRek')
    Left = 284
    Top = 360
  end
end
