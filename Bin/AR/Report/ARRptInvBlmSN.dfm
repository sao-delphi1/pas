inherited fmARRptInvBlmSN: TfmARRptInvBlmSN
  Left = 587
  Top = 272
  Caption = 'Laporan Invoice Belum Ada SN'
  ClientHeight = 464
  ClientWidth = 1022
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1022
    inherited laTitle: TLabel
      Visible = False
    end
    object dt1: TdxDateEdit
      Left = 15
      Top = 12
      Width = 98
      TabOrder = 0
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object bbRefresh: TBitBtn
      Left = 118
      Top = 7
      Width = 84
      Height = 30
      Hint = 'Refresh'
      Caption = '&Refresh'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbRefreshClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
        C43337777777777777F33444881B188444333777F3737337773333308881FF70
        33333337F3373337F3333330888BF770333333373F33F337333333330881F703
        3333333373F73F7333333333308B703333333333373F77333333333333080333
        3333333333777FF333333333301F103333333333377777FF3333333301B1F103
        333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
        333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
        C43337777777777777F334444444444444333777777777777733}
      NumGlyphs = 2
    end
  end
  inherited paCenter: TPanel
    Width = 1022
    Height = 382
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1020
      Height = 380
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SaleID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Jual'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TModal'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TKomisi'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Margin'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ModalInvBeli'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              SummaryField = 'MarginAll'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Nomor Invoice'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Tanggal Invoice'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Pelanggan'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Jumlah Jual'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Jumlah SN'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JumSN'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'User'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 423
    Width = 1022
    inherited bbPreview: TBitBtn
      Left = 796
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 870
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 944
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT K.* FROM ('
      
        'select B.SaleID,B.Transdate,B.CustID,C.CustName,A.ItemID,D.ItemN' +
        'ame,A.Qty,A.UpdUser,'
      
        'ISNULL((SELECT COUNT(X.SNID) FROM ARTrPenjualanSN X WHERE X.Item' +
        'ID=A.ItemID AND X.SaleID=B.SaleID),0) as JumSN'
      'from ARTrPenjualanDt A '
      'inner join ARTrPenjualanHd B on A.SaleID=B.SaleID'
      'inner join ARMsCustomer C on B.CustID=C.CustID'
      'inner join INMsItem D on A.ItemID=D.ItemID'
      'WHERE CONVERT(VARCHAR(10),B.Transdate,112) <'#39#39
      ') as K WHERE Qty-K.JumSN<>0')
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActJumSN: TIntegerField
      FieldName = 'JumSN'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
end
