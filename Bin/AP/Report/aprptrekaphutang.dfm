inherited fmAPRptRekapHutang: TfmAPRptRekapHutang
  Left = 426
  Top = 233
  Caption = 'fmAPRptRekapHutang'
  ClientHeight = 523
  ClientWidth = 1142
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1142
    Height = 57
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 5
      Width = 125
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object CheckBox1: TCheckBox
      Left = 223
      Top = 21
      Width = 200
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Button1: TButton
      Left = 137
      Top = 18
      Width = 75
      Height = 25
      Caption = 'REFRESH'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  inherited paCenter: TPanel
    Top = 57
    Width = 1142
    Height = 425
    object dbgPembelian: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1140
      Height = 423
      Bands = <
        item
          Width = 739
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'IP'
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
      Align = alClient
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
      HeaderColor = 8421440
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSearch, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dbgPembelianColumn1: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dbgPembelianColumn2: TdxDBGridColumn
        Caption = 'Invoice'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IP'
      end
      object dbgPembelianColumn3: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgPembelianColumn4: TdxDBGridColumn
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dbgPembelianColumn5: TdxDBGridColumn
        Caption = 'Nomor SO'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOID'
      end
      object dbgPembelianColumn6: TdxDBGridColumn
        Caption = 'Total'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kredit'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Kredit'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Kredit'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dbgPembelianColumn7: TdxDBGridColumn
        Caption = 'Bayar'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Debit'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Debit'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Debit'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dbgPembelianColumn8: TdxDBGridColumn
        Caption = 'Sisa'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LTotal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'LTotal'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'LTotal'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 482
    Width = 1142
    inherited bbPreview: TBitBtn
      Left = 68
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 142
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 216
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 893
      Top = 5
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 3
      OnClick = bbExcelClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080808080808080808080808000008080800080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000808080000080808000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000008000808080
        0000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080
        000080000080000080000080008080800000808080008000008000FFFFFF0080
        00008000008000008000008000008000008000FFFFFF00800000800000800000
        80000080008080800000808080008000008000FFFFFF00800000800000800000
        8000008000008000FFFFFF008000008000008000FFFFFF008000008000808080
        0000808080008000008000FFFFFF008000008000008000008000008000FFFFFF
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFF008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFFFFFF
        FFFFFFFF008000FFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFF008000FFFFFF00
        8000008000008000008000008000008000FFFFFFFFFFFF008000008000808080
        0000808080008000008000FFFFFF008000FFFFFF008000008000008000008000
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFF008000008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFF0080
        00008000008000FFFFFFFFFFFFFFFFFF008000008000008000008000FFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080
        0000808080008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080008080800000808080008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800080808000008080808080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080800000}
    end
    object bbCancel: TBitBtn
      Left = 996
      Top = 5
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
      OnClick = bbCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  inherited quAct: TADOQuery
    OnCalcFields = quActCalcFields
    SQL.Strings = (
      'SELECT K.CustID,L.CustName,K.Transdate as Tanggal,'
      
        'CASE WHEN K.Nama='#39#39' THEN K.SaleID ELSE K.SaleID+'#39' ('#39'+K.Nama+'#39')'#39' ' +
        'END as IP,K.SOID,ISNULL(K.TTLPj-K.Kredit,0) as Kredit,'
      'ISNULL(K.Debit,0) as Debit FROM ('
      
        'SELECT A.CustID,A.CurrID,A.Transdate,A.SaleID,A.Nama,ISNULL(A.TT' +
        'LPj,0) as TTLPj,A.SOID,'
      
        'ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanD' +
        't F INNER JOIN ARTrReturPenjualanHd G '
      
        'ON F.ReturnId=G.ReturnId WHERE G.FlagRetur='#39'B'#39' AND F.SaleId=A.Sa' +
        'leId '
      
        'AND G.CustId=A.CustId AND CONVERT(VARCHAR(8),G.Transdate,112) <=' +
        ' '#39'20220426'#39'),0) as Kredit,'
      
        '(SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBdt L INNER JOIN CFT' +
        'rKKBBHd Q ON L.VoucherID=Q.VoucherID '
      
        'WHERE L.Note = A.SaleID AND CONVERT(VARCHAR(8),Q.Transdate,112) ' +
        '<= '#39'20220426'#39') as Debit '
      'FROM ARTrPenjualanHd A'
      ') as K '
      'INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
      'WHERE ISNULL(K.TTLPj-K.Kredit,0)<>0 '
      'AND ISNULL(K.TTLPj-K.Kredit-K.Debit,0)<>0 '
      'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '#39'20220426'#39' '
      'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActTanggal: TDateTimeField
      FieldName = 'Tanggal'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActIP: TStringField
      FieldName = 'IP'
      ReadOnly = True
      Size = 63
    end
    object quActSOID: TStringField
      FieldName = 'SOID'
      Size = 50
    end
    object quActKredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quActDebit: TBCDField
      FieldName = 'Debit'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quActLTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LTotal'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 736
    Top = 16
  end
end
