inherited fmAPTrOtorisasi: TfmAPTrOtorisasi
  Left = 167
  Top = 26
  Caption = 'Otorisasi'
  ClientHeight = 615
  ClientWidth = 1157
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 566
    inherited pa3: TdxContainer
      Top = 65
      Height = 501
      object RadioGroup1: TRadioGroup
        Left = -175
        Top = 8
        Width = 142
        Height = 89
        Caption = '[ Status ]'
        ItemIndex = 0
        Items.Strings = (
          'Pending'
          'Approved')
        TabOrder = 0
        OnClick = BtlBrgClick
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = -175
        Top = 103
        Width = 113
        Height = 42
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'REFRESH'
        TabOrder = 1
        TabStop = False
      end
      object RadioGroup2: TRadioGroup
        Left = -175
        Top = 152
        Width = 142
        Height = 89
        Caption = '[ Urut ]'
        ItemIndex = 0
        Items.Strings = (
          'Tanggal'
          'Jatuh Tempo')
        TabOrder = 2
        OnClick = BtlBrgClick
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 28
        Top = 19
      end
      inherited bbNew: TdxButton [1]
        Enabled = False
      end
      inherited bbDelete: TdxButton [2]
        Top = 4
        Enabled = False
      end
      inherited bbFind: TdxButton [3]
        Top = 4
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 603
    Width = 1157
  end
  inherited pa2: TdxContainer
    Height = 566
  end
  inherited dxContainer7: TdxContainer
    Width = 964
    Height = 566
    inherited pcParent: TdxPageControl
      Width = 964
      Height = 566
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 793
          Top = 544
        end
        inherited bbCancel: TdxButton
          Left = 873
          Top = 544
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 961
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PurchaseID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDblClick = dxDBGrid1DblClick
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = []
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid1Column1: TdxDBGridColumn
            Caption = 'Nomor Invoice'
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PurchaseID'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tgl'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Term'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Jth Tempo'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JthTempo'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Nama Supplier'
            Width = 272
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SuppName'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Total'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TTLPb'
          end
          object dxDBGrid1Column8: TdxDBGridColumn
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'StatusOto'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Visible = False
            Width = 133
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dxDBGrid1Column11: TdxDBGridColumn
            Caption = 'Margin (%)'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Margin'
          end
          object dxDBGrid1Column10: TdxDBGridColumn
            Caption = 'Updated By'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 192
          Width = 961
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnDblClick = dxDBGrid2DblClick
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Comic Sans MS'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid2Column1: TdxDBGridColumn
            Caption = 'Kode Barang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid2Column5: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dxDBGrid2Column6: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
          end
          object dxDBGrid2Column8: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dxDBGrid2Column9: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
          end
        end
        object dxDBGrid3: TdxDBGrid
          Left = 0
          Top = 386
          Width = 964
          Height = 180
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'SNID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Comic Sans MS'
          BandFont.Style = []
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid3Column1: TdxDBGridColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PurchaseID'
          end
          object dxDBGrid3Column2: TdxDBGridColumn
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'itemID'
          end
          object dxDBGrid3Column3: TdxDBGridColumn
            Width = 161
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
          end
          object dxDBGrid3Column4: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 643
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LKeterangan'
          end
          object dxDBGrid3Column5: TdxDBGridColumn
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Bayar'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1157
    inherited sbLast: TSpeedButton
      Left = 1120
    end
    inherited sbNext: TSpeedButton
      Left = 1093
    end
    inherited sbPrev: TSpeedButton
      Left = 1066
    end
    inherited sbFirst: TSpeedButton
      Left = 1039
    end
    inherited sbPeriod: TSpeedButton
      Left = 1013
    end
    inherited BvlPeriod: TBevel
      Left = 767
    end
    inherited laPeriod: TLabel
      Left = 771
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 415
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 447
    Top = 4
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.PurchaseID,B.SuppName,CONVERT(VARCHAR(10),A.TransDate,1' +
        '03) as Tgl,A.JatuhTempo as Term,'
      
        'CONVERT(VARCHAR(10),A.TransDate+A.JatuhTempo,103) as JthTempo,A.' +
        'TTLPb,A.UpdUser,A.UpdDate,'#39'RDL'#39' as Jenis,'
      
        '(CASE WHEN A.FgOto='#39'Y'#39' THEN '#39'Approved'#39' ELSE '#39'Pending'#39' END) as St' +
        'atusOto,0.00 as Margin '
      
        'from APTrPurchaseHd A Inner Join APMsSupplier B on A.SuppID=B.Su' +
        'ppID')
    object quMainPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 10
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
      DisplayFormat = '#,0'
    end
    object quMainJthTempo: TStringField
      FieldName = 'JthTempo'
      ReadOnly = True
      Size = 10
    end
    object quMainTTLPb: TBCDField
      FieldName = 'TTLPb'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainStatusOto: TStringField
      DisplayWidth = 100
      FieldName = 'StatusOto'
      ReadOnly = True
      Size = 100
    end
    object quMainMargin: TBCDField
      FieldName = 'Margin'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 2
      Size = 2
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      ReadOnly = True
      Size = 3
    end
  end
  inherited dsMain: TDataSource
    OnDataChange = dsMainDataChange
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 4
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'PurchaseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end>
    SQL.Strings = (
      
        'select A.PurchaseID,A.ItemID,B.ItemName,A.Qty,B.UOMID,A.Price,A.' +
        'Qty*A.Price as Total'
      'from APTrPurchasedt A inner join INMsItem b on a.itemid=B.itemid'
      'Where A.PurchaseID=:PurchaseID')
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    OnCalcFields = quSNCalcFields
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'PurchaseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.PurchaseID,K.itemID,K.SNID,K.FgJual,ISNULL(L.SaleID,'#39'-'#39 +
        ') as SaleID,L.Price,L.CustName,L.Tgl,L.Status,L.FgTax,'
      
        'ISNULL((SELECT ISNULL(SUM(P.Amount),0) FROM CFTrKKBBDt P INNER J' +
        'OIN CFTrKKBBHd Q ON P.VoucherID=Q.VoucherID '
      
        'WHERE P.Note=L.SaleID AND P.RekeningID=(select DRPj from samsset' +
        ')'
      '),0) as Bayar '
      ''
      ''
      ''
      'FROM ('
      
        'SELECT PurchaseID,ItemID,SNID,FgJual FROM APTrPurchaseDtSN) as K' +
        ' LEFT JOIN (SELECT M.SNID,M.SaleID,M.Price,X.CustName,'
      
        'CONVERT(VARCHAR(8),M.Transdate,112) as Tgl,M.Status,CASE WHEN M.' +
        'CurrID='#39'IDR'#39' THEN '#39'Rp'#39' ELSE '#39'$'#39' END as CurrID,M.FgTax FROM ('
      
        'SELECT A.SNID,A.ItemID,A.SaleID,A.Price,B.CustID,B.Transdate,1 a' +
        's Status,B.CurrID,B.FgTax '
      
        'FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanHd B ON A.SaleID=' +
        'B.SaleID) as M '
      
        'INNER JOIN ARMsCustomer X ON M.CustID=X.CustID ) as L on K.SNID=' +
        'L.SNID '
      'WHERE K.PurchaseID=:PurchaseID AND K.ItemID=:ItemID AND '
      'K.SNID NOT IN (SELECT SNID FROM APTrReturnSN)')
    Left = 484
    Top = 4
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
      ReadOnly = True
      Size = 50
    end
    object quSNitemID: TStringField
      FieldName = 'itemID'
      ReadOnly = True
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      ReadOnly = True
      Size = 30
    end
    object quSNFgJual: TStringField
      FieldName = 'FgJual'
      ReadOnly = True
      Size = 1
    end
    object quSNSaleID: TStringField
      FieldName = 'SaleID'
      ReadOnly = True
      Size = 50
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      ReadOnly = True
      Precision = 18
    end
    object quSNCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quSNTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 8
    end
    object quSNStatus: TIntegerField
      FieldName = 'Status'
      ReadOnly = True
    end
    object quSNLKeterangan: TStringField
      FieldKind = fkCalculated
      FieldName = 'LKeterangan'
      Size = 500
      Calculated = True
    end
    object quSNFgTax: TStringField
      FieldName = 'FgTax'
      ReadOnly = True
      Size = 1
    end
    object quSNBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 512
    Top = 4
  end
end
