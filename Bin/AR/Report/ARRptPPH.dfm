inherited fmARRptPPH: TfmARRptPPH
  Left = 414
  Top = 204
  Caption = 'Laporan Bukti Potong  Customer'
  ClientHeight = 673
  ClientWidth = 1107
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1107
    Height = 97
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 108
      Top = 12
      Width = 253
      Height = 77
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object dxDateEdit1: TdxDateEdit
        Left = 399
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dxTahun: TdxSpinEdit
        Left = 150
        Top = 31
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleController = SCEdit
      end
      object dxBulan: TdxImageEdit
        Left = 17
        Top = 31
        Width = 134
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'dxBulan'
        StyleController = SCEdit
        Descriptions.Strings = (
          'January'
          'February'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'July'
          'Agustus'
          'September'
          'Oktober'
          'November'
          'Desember')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
    end
    object GroupBox1: TGroupBox
      Left = 108
      Top = 12
      Width = 109
      Height = 77
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object dxDateEdit2: TdxDateEdit
        Left = 399
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dxSpinEdit1: TdxSpinEdit
        Left = 14
        Top = 31
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleController = SCEdit
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 16
      Width = 89
      Height = 52
      ItemIndex = 0
      Items.Strings = (
        'Tahun'
        'Bulan')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object bbCari: TdxButton
      Left = 8
      Top = 71
      Width = 89
      Height = 21
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbCariClick
      Caption = 'Load Data'
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 440
      Top = 40
      Width = 257
      Height = 17
      Caption = 'Header :Tampilkan Belum ada Bukti Potong'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 440
      Top = 56
      Width = 217
      Height = 17
      Caption = 'Detail : Tampilkan yang ada PPH saja'
      TabOrder = 5
    end
    object CheckBox3: TCheckBox
      Left = 440
      Top = 72
      Width = 257
      Height = 17
      Caption = 'Detail : Tampilkan yang belum ada Bukti Potong'
      TabOrder = 6
    end
  end
  inherited paCenter: TPanel
    Top = 97
    Width = 1107
    Height = 535
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1105
      Height = 252
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
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dgrReportDblClick
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
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
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
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
        Caption = 'Tanggal'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Invoice'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Kode Customer'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nama Customer'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LCustName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Nomor SO'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LSO'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Subtotal'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LSTPj'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'PPN'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LPPN'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Total'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LTTLKJ'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPH'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'BPC'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmlBPBD'
        SummaryFooterType = cstSum
        SummaryFooterField = 'JmlBPBD'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'JmlBPBD'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 2
      Top = 253
      Width = 1105
      Height = 281
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
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = dxDBGrid1DblClick
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsActDt
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
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dxDBGrid1Column1: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = 'Harga'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'PPH'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgPPH'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = 'Nilai PPH'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NilaiPPH'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'Total PPH'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPH'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Caption = 'No Bukti Potong'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BuktiPotong'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglBukti'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Caption = 'BPC'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmlBPBD'
        SummaryFooterType = cstSum
        SummaryFooterField = 'JmlBPBD'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'JmlBPBD'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 632
    Width = 1107
    inherited bbPreview: TBitBtn
      Left = 881
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 955
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 1029
    end
  end
  inherited quAct: TADOQuery
    OnCalcFields = quActCalcFields
    SQL.Strings = (
      'SELECT DISTINCT K.* FROM ('
      'SELECT K.Transdate,K.SaleID,K.CustID,SUM(K.PPH) as PPH,'
      
        'SUM(CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPotong,'#39#39')='#39 +
        #39' THEN 1 ELSE 0 END ELSE 0 END) as JmlBPBD,'
      'SUM(CASE WHEN K.PPH<>0 THEN 1 ELSE 0 END) as BPC'
      'FROM ('
      'select B.Transdate,A.SaleID,B.CustID,'
      
        'CASE WHEN A.FgPPH='#39'A'#39' THEN '#39'Rp'#39' ELSE '#39'%'#39' END as FgPPH,ISNULL(A.P' +
        'PH,0) as NilaiPPH,'
      
        'ISNULL(CASE WHEN A.FgPPH='#39'A'#39' THEN A.PPH ELSE A.Qty*A.Price*A.PPH' +
        '*0.01 END,0) as PPH,'
      'A.BuktiPotong,A.TglBukti'
      
        'from ARTrPenjualanDt A inner join ARTrPenjualanHd B on A.SaleID=' +
        'B.SaleID where B.FgForm='#39'AR'#39
      ') as K '
      'GROUP BY K.TransDate,K.SaleID,K.CustID '
      ') as K'
      'INNER JOIN ARMsCustomer L on K.CustID=L.CustID'
      'WHERE K.JmlBPBD<>0')
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActPPH: TBCDField
      FieldName = 'PPH'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
      Size = 6
    end
    object quActJmlBPBD: TIntegerField
      FieldName = 'JmlBPBD'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object quActLSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSO'
      Size = 100
      Calculated = True
    end
    object quActLCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCustName'
      Size = 100
      Calculated = True
    end
    object quActLSTPj: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LSTPj'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActLPPN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LPPN'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActLTTLKJ: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LTTLKJ'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActBPC: TIntegerField
      FieldName = 'BPC'
      ReadOnly = True
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object quActDt: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsAct
    Parameters = <
      item
        Name = 'SaleID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.*,CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPoton' +
        'g,'#39#39')='#39#39' THEN 1 ELSE 0 END ELSE 0 END as JmlBPBD FROM ('
      
        'select A.SaleID,A.ItemID,A.Note as ItemName,A.Qty,A.UOMID,A.Pric' +
        'e,ISNULL(A.Qty*A.Price,0) as Total,'
      
        'CASE WHEN A.FgPPH='#39'A'#39' THEN '#39'Rp'#39' ELSE '#39'%'#39' END as FgPPH,ISNULL(A.P' +
        'PH,0) as NilaiPPH,'
      
        'ISNULL(CASE WHEN A.FgPPH='#39'A'#39' THEN A.PPH ELSE A.Qty*A.Price*A.PPH' +
        '*0.01 END,0) as PPH,'
      'A.BuktiPotong,A.TglBukti'
      
        'from ARTrPenjualanDt A inner join ARTrPenjualanHd B on A.SaleID=' +
        'B.SaleID where B.FgForm='#39'AR'#39
      ') as K'
      'WHERE K.SaleID=:SaleID')
    Left = 384
    Top = 4
    object quActDtSaleID: TStringField
      FieldName = 'SaleID'
      Size = 30
    end
    object quActDtItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object quActDtItemName: TStringField
      FieldName = 'ItemName'
      Size = 2000
    end
    object quActDtQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
    end
    object quActDtUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActDtPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActDtTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 29
    end
    object quActDtFgPPH: TStringField
      FieldName = 'FgPPH'
      ReadOnly = True
      Size = 2
    end
    object quActDtNilaiPPH: TBCDField
      FieldName = 'NilaiPPH'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActDtPPH: TBCDField
      FieldName = 'PPH'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
      Size = 6
    end
    object quActDtBuktiPotong: TStringField
      FieldName = 'BuktiPotong'
      Size = 100
    end
    object quActDtTglBukti: TDateTimeField
      FieldName = 'TglBukti'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActDtJmlBPBD: TIntegerField
      FieldName = 'JmlBPBD'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object dsActDt: TDataSource
    DataSet = quActDt
    OnStateChange = dsActDtStateChange
    Left = 412
    Top = 4
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 592
    Top = 12
  end
end
