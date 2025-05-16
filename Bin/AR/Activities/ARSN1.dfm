inherited fmARSN: TfmARSN
  Left = 122
  Top = 252
  BorderIcons = []
  Caption = 'Input Data Serial Number'
  ClientHeight = 303
  ClientWidth = 1147
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object bbOK1: TdxButton [0]
    Left = 535
    Top = 192
    Width = 80
    Height = 40
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbOK1Click
    Caption = 'Ok'
    Colors.ClickedFrom = 15199215
    Colors.ClickedTo = 15199215
    Colors.FocusedFrom = 15199215
    Colors.FocusedTo = 15199215
    Colors.HighlightFrom = 15199215
    Colors.HighlightTo = 15199215
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000003333333333333333330000003333344333333333330000003333
      4224333333333300000033342222433333333300000033422222243333333300
      000034222A2222433333330000003222A3A222433333330000003A2A333A2224
      33333300000033A33333A222433333000000333333333A222433330000003333
      333333A222433300000033333333333A222433000000333333333333A2224300
      00003333333333333A224300000033333333333333A223000000333333333333
      333A33000000333333333333333333000000}
    HotTrack = True
    ModalResult = 1
    TabOrder = 0
  end
  object dbgSO: TdxDBGrid [1]
    Left = 0
    Top = 0
    Width = 515
    Height = 303
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alLeft
    TabOrder = 1
    OnDblClick = dxButton4Click
    DataSource = dsSO
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgSOItemID: TdxDBGridColumn
      Caption = 'Serial Number'
      Width = 144
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Serial_Number'
    end
    object dbgSOItemName: TdxDBGridColumn
      Caption = 'Nama Barang'
      Visible = False
      Width = 162
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nota_Pembelian'
    end
    object dbgSODusID: TdxDBGridColumn
      Caption = 'Tanggal'
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal_Nota'
    end
    object dbgSOQty: TdxDBGridColumn
      Caption = 'Supplier'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nama_Supplier'
    end
    object dbgSOUOMID: TdxDBGridColumn
      Visible = False
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Modal'
    end
    object dbgSOPrice: TdxDBGridColumn
      Visible = False
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FgSN'
    end
  end
  object dbgDO: TdxDBGrid [2]
    Left = 632
    Top = 0
    Width = 515
    Height = 303
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'ItemID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alRight
    TabOrder = 2
    OnDblClick = dxButton3Click
    DataSource = dsDO
    Filter.Criteria = {00000000}
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dbgDOItemID: TdxDBGridColumn
      Caption = 'Serial Number'
      Width = 141
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SNID'
    end
    object dbgDOItemName: TdxDBGridColumn
      Caption = 'Nota Pembelian'
      Width = 204
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PurchaseID'
    end
  end
  object dxButton3: TdxButton [3]
    Left = 535
    Top = 150
    Width = 80
    Height = 40
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton3Click
    Caption = '<<'
    TabOrder = 3
  end
  object dxButton4: TdxButton [4]
    Left = 535
    Top = 26
    Width = 80
    Height = 40
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton4Click
    Caption = '>>'
    TabOrder = 4
  end
  object RgData: TRadioGroup [5]
    Left = 520
    Top = 236
    Width = 106
    Height = 60
    Caption = '[ Tampilan ]'
    ItemIndex = 0
    Items.Strings = (
      'Semua'
      'Ada Stock')
    TabOrder = 5
    Visible = False
    OnClick = RgDataClick
  end
  object dxButton1: TdxButton [6]
    Left = 535
    Top = 109
    Width = 80
    Height = 40
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = '<<<<'
    TabOrder = 6
  end
  object dxButton2: TdxButton [7]
    Left = 535
    Top = 67
    Width = 80
    Height = 40
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = '>>>>'
    TabOrder = 7
  end
  inherited quAct: TADOQuery
    Left = 392
    Top = 112
  end
  object quSO: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT K.SNID as Serial_Number,K.KonsinyasiID as Nota_Pembelian,' +
        ' '
      'Convert(varchar(10),K.TransDate,103) as Tanggal_Nota, '
      'K.SuppName as Nama_Supplier, '
      'K.ItemId as Kode_Barang , K.ItemName as Nama_Barang,'
      
        'CASE WHEN K.CurrID='#39'IDR'#39' THEN K.Price ELSE K.Price*K.Rate END as' +
        ' Modal,K.FgSN  FROM '
      
        '(SELECT A.SNID, C.KonsinyasiID, C.Transdate, C.SuppID, D.SuppNam' +
        'e, '
      
        'B.ItemID, F.ItemName, A.FgJual,B.Price,B.CurrID,C.Rate,A.FgSN FR' +
        'OM APTrKonsinyasiDtSn A '
      
        'INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID A' +
        'ND A.ItemID=B.ItemID '
      'INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
      'INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID '
      'INNER JOIN INMsItem F ON F.ItemID=B.ItemID) as K '
      'WHERE K.FgJual='#39'T'#39' '
      'ORDER BY K.SNID')
    Left = 132
    Top = 224
    object quSOSerial_Number: TStringField
      FieldName = 'Serial_Number'
      Size = 30
    end
    object quSONota_Pembelian: TStringField
      FieldName = 'Nota_Pembelian'
      Size = 50
    end
    object quSOTanggal_Nota: TStringField
      FieldName = 'Tanggal_Nota'
      ReadOnly = True
      Size = 10
    end
    object quSONama_Supplier: TStringField
      FieldName = 'Nama_Supplier'
      Size = 50
    end
    object quSOKode_Barang: TStringField
      FieldName = 'Kode_Barang'
    end
    object quSONama_Barang: TStringField
      FieldName = 'Nama_Barang'
      Size = 150
    end
    object quSOModal: TBCDField
      FieldName = 'Modal'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object quSOFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
  end
  object dsSO: TDataSource
    DataSet = quSO
    OnStateChange = dsSOStateChange
    Left = 160
    Top = 224
  end
  object quDO: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select SNID,PurchaseID from ARTrPenjualanSN ')
    Left = 696
    Top = 140
    object quDOSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quDOPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
  end
  object dsDO: TDataSource
    DataSet = quDO
    OnStateChange = dsDOStateChange
    Left = 732
    Top = 140
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 424
    Top = 112
  end
end
