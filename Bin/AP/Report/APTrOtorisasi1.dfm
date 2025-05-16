inherited fmAPTrOtorisasi: TfmAPTrOtorisasi
  Left = 259
  Top = 98
  Caption = 'Purchase Summary'
  ClientHeight = 613
  ClientWidth = 1223
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 564
    inherited pa3: TdxContainer
      Top = 65
      Height = 499
      object BtlBrg: TdxButton
        Tag = 4444
        Left = -267
        Top = 51
        Width = 101
        Height = 32
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
        TabOrder = 0
        TabStop = False
      end
      object RadioGroup2: TRadioGroup
        Left = -267
        Top = 88
        Width = 142
        Height = 75
        ItemIndex = 0
        Items.Strings = (
          'Tanggal'
          'Jatuh Tempo')
        TabOrder = 1
        OnClick = BtlBrgClick
      end
      object dt1: TdxDateEdit
        Left = -267
        Top = 22
        Width = 100
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
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
    Top = 601
    Width = 1223
  end
  inherited pa2: TdxContainer
    Height = 564
  end
  inherited dxContainer7: TdxContainer
    Width = 1030
    Height = 564
    inherited pcParent: TdxPageControl
      Width = 1030
      Height = 564
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 859
          Top = 542
        end
        inherited bbCancel: TdxButton
          Left = 939
          Top = 542
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1030
          Height = 269
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'IP'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tanggal'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Term'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JthTempo'
          end
          object dxDBGrid1Column8: TdxDBGridColumn
            Caption = 'Invoice'
            ReadOnly = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IP'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SuppName'
          end
          object dxDBGrid1Column7: TdxDBGridColumn
            Caption = 'PPN'
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgTax'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Caption = 'Total'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Kredit'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Pembayaran'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Debit'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Sisa'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 269
          Width = 1030
          Height = 146
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
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 500
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid2Column5: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
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
          Top = 415
          Width = 1030
          Height = 148
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'SNID'
          SummaryGroups = <>
          SummarySeparator = ', '
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
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PurchaseID'
          end
          object dxDBGrid3Column2: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'itemID'
          end
          object dxDBGrid3Column3: TdxDBGridColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SNID'
          end
          object dxDBGrid3Column4: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 800
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LKeterangan'
          end
          object dxDBGrid3Column5: TdxDBGridColumn
            Caption = 'PPN'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgTax'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1223
    inherited sbLast: TSpeedButton
      Left = 1186
    end
    inherited sbNext: TSpeedButton
      Left = 1159
    end
    inherited sbPrev: TSpeedButton
      Left = 1132
    end
    inherited sbFirst: TSpeedButton
      Left = 1105
    end
    inherited sbPeriod: TSpeedButton
      Left = 1079
    end
    inherited BvlPeriod: TBevel
      Left = 833
    end
    inherited laPeriod: TLabel
      Left = 837
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
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      
        'SELECT K.SuppID,L.SuppName,CONVERT(VARCHAR(10),K.Transdate,103) ' +
        'as Tanggal,K.JatuhTempo as Term,CONVERT(VARCHAR(10),K.Transdate+' +
        'K.JatuhTempo,103) as JthTempo,K.PurchaseID as IP,'
      'K.FgTax,ISNULL(K.Kredit,0) as Kredit,'
      
        'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt ' +
        'L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
      
        'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVER' +
        'T(VARCHAR(8),H.Transdate,112) <='#39'20200214'#39'),0) + '
      
        'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKon' +
        'sDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.Paymen' +
        'tKonsID '
      
        'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND C' +
        'ONVERT(VARCHAR(8),H.Transdate,112) <='#39'20200214'#39'),0) as Debit '
      'FROM ('
      
        'SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,A.JatuhTempo,A' +
        '.FgTax,'
      
        'ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM A' +
        'PTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnI' +
        'D '
      
        'WHERE G.FlagRetur='#39'B'#39' AND F.purchaseID=A.PurchaseID AND G.SuppID' +
        '=A.SuppID AND CONVERT(varchar(8),G.Transdate,112) <= '#39'20200214'#39')' +
        ',0) as Kredit '
      'FROM APTrPurchaseHd A '
      'UNION ALL '
      
        'SELECT A.SuppID,A.TransDate,A.KonsinyasiInvID,A.CurrID,A.JatuhTe' +
        'mpo,A.Fgtax,ISNULL(A.TTLKs,0) FROM APTrKonsinyasiInvHD A '
      'UNION ALL '
      
        'SELECT A.SuppID,A.Transdate,A.VoucherNo,A.CurrID,0,'#39'T'#39',ISNULL(A.' +
        'Amount,0) FROM CFTrCreditCard A'
      ') as K INNER JOIN APMsSupplier L on K.SuppID=L.SuppID '
      'WHERE --K.SuppID = '#39'+qu001.Fieldbyname(SuppId).AsString+'#39' AND '
      'K.CurrID='#39'IDR'#39' AND K.Kredit <> 0 '
      
        'AND ISNULL(K.Kredit-ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0)' +
        ' FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=' +
        'H.PaymentID '
      
        'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVER' +
        'T(VARCHAR(8),H.Transdate,112) <='#39'20200214'#39'),0)-'
      
        'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKon' +
        'sDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.Paymen' +
        'tKonsID '
      
        'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND C' +
        'ONVERT(VARCHAR(8),H.Transdate,112) <='#39'20200214'#39'),0),0) > 0 '
      'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '#39'20200214'#39' '
      'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)')
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      ReadOnly = True
      Size = 50
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object quMainJthTempo: TStringField
      FieldName = 'JthTempo'
      ReadOnly = True
      Size = 10
    end
    object quMainIP: TStringField
      FieldName = 'IP'
      ReadOnly = True
      Size = 50
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      ReadOnly = True
      Size = 1
    end
    object quMainKredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quMainDebit: TBCDField
      FieldName = 'Debit'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quMainSisa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Sisa'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 4
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'IP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT K.*,L.ItemName FROM ('
      
        'SELECT A.PurchaseID,A.ItemID,A.Qty,A.Price,A.Qty*A.Price as Tota' +
        'l'
      'FROM APTrPurchasedt A '
      'UNION ALL '
      
        'SELECT A.KonsinyasiInvId,A.ItemID,A.Qty,A.Price,A.Qty*A.Price FR' +
        'OM APTrKonsinyasiInvDt A '
      ') as K INNER JOIN INMsItem L on K.ItemID=L.ItemID'
      'Where K.PurchaseID=:IP')
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
      ReadOnly = True
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      ReadOnly = True
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
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
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
        Size = 50
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.PurchaseID,K.itemID,K.SNID,K.FgJual,ISNULL(L.SaleID,'#39'-'#39 +
        ') as SaleID,L.Price,L.CustName,L.Tgl,L.Status,L.FgTax FROM ('
      
        'SELECT PurchaseID,ItemID,SNID,FgJual FROM APTrPurchaseDtSN UNION' +
        ' ALL '
      
        'SELECT A.KonsinyasiInvID,A.ItemID,A.SNID,B.FgJual FROM APTrKonsi' +
        'nyasiInvDtSN A INNER JOIN APTrKonsinyasiDtSN B ON A.KonsinyasiID' +
        '=B.KonsinyasiID AND '
      'A.SNID=B.SNID AND A.ItemID=B.ItemID) as K '
      'LEFT JOIN ('
      
        'SELECT K.SNID,K.SaleID,K.Price,L.CustName,CONVERT(VARCHAR(8),K.T' +
        'ransdate,112) as Tgl,K.Status, '
      
        'CASE WHEN K.CurrID='#39'IDR'#39' THEN '#39'Rp'#39' ELSE '#39'$'#39' END as CurrID,K.FgTa' +
        'x FROM ( '
      
        'SELECT A.SNID,A.ItemID,A.SaleID,A.Price,B.CustID,B.Transdate,1 a' +
        's Status,B.CurrID,B.FgTax '
      
        'FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanHd B ON A.SaleID=' +
        'B.SaleID UNION ALL '
      
        'SELECT A.SNID,A.ItemID,A.KonTransBrgID,0,B.CustID,B.Transdate,2,' +
        #39#39','#39'T'#39
      
        'FROM ARTrKonTransBrgDtSN A INNER JOIN ARTrKonTransBrgHd B ON A.K' +
        'onTransBrgID=B.KonTransBrgID) as K '
      'INNER JOIN ARMsCustomer L ON K.CustID=L.CustID ) as L'
      'on K.SNID=L.SNID'
      'WHERE K.PurchaseID=:PurchaseID ANd K.ItemID=:ItemID'
      'AND K.SNID NOT IN (SELECT SNID FROM APTrReturnSN)'
      '')
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
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 512
    Top = 4
  end
end
