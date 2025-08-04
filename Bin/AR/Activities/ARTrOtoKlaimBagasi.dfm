inherited fmARTrOtoKlaimBagasi: TfmARTrOtoKlaimBagasi
  Left = 548
  Top = 323
  Caption = 'Otorisasi Klaim Bagasi'
  ClientHeight = 470
  ClientWidth = 1174
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 421
    inherited pa3: TdxContainer
      Top = 73
      Height = 348
      object RadioGroup1: TRadioGroup
        Left = -556
        Top = 8
        Width = 158
        Height = 121
        Caption = '[ Otorisasi ]'
        ItemIndex = 0
        Items.Strings = (
          'Belum Otorisasi'
          'Rejected'
          'Approved')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 65
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 30
        Top = 19
        Enabled = False
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
    Top = 458
    Width = 1174
  end
  inherited pa2: TdxContainer
    Height = 421
  end
  inherited dxContainer7: TdxContainer
    Width = 981
    Height = 421
    inherited pcParent: TdxPageControl
      Width = 981
      Height = 421
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 834
          Top = 403
        end
        inherited bbCancel: TdxButton
          Left = 911
          Top = 403
        end
        object dgrReport: TdxDBGrid
          Left = 0
          Top = 0
          Width = 981
          Height = 257
          Bands = <
            item
              Width = 1263
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'TransID'
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
          TabOrder = 2
          OnDblClick = dgrReportDblClick
          BandColor = clMoneyGreen
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -13
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = [fsBold]
          DataSource = dsMain
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
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dgrReportColumn2: TdxDBGridColumn
            Caption = 'No Transaksi'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
          object dgrReportColumn3: TdxDBGridColumn
            Caption = 'Nama Sales'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesName'
          end
          object dgrReportColumn4: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
          end
          object dgrReportColumn5: TdxDBGridColumn
            Caption = 'User'
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dgrReportColumn6: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UP'
          end
          object dgrReportColumn7: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Rekening'
          end
          object dgrReportColumn8: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nama'
          end
          object dgrReportColumn9: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Bank'
          end
          object dgrReportColumn10: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Cabang'
          end
        end
        object dbgPenawaran: TdxDBGrid
          Left = 1
          Top = 257
          Width = 980
          Height = 164
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'POID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 3
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgPenawaranColumn1: TdxDBGridColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
          object dbgPenawaranColumn2: TdxDBGridButtonColumn
            Caption = 'Nomor Invoice'
            Width = 121
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
            Buttons = <
              item
                Default = True
              end>
          end
          object dbgPenawaranColumn4: TdxDBGridColumn
            Caption = 'Tgl Invoice'
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dbgPenawaranColumn5: TdxDBGridColumn
            Caption = 'Customer'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CustName'
          end
          object dbgPenawaranColumn3: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Amount'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1174
    inherited sbLast: TSpeedButton
      Left = 1137
    end
    inherited sbNext: TSpeedButton
      Left = 1110
    end
    inherited sbPrev: TSpeedButton
      Left = 1083
    end
    inherited sbFirst: TSpeedButton
      Left = 1056
    end
    inherited sbPeriod: TSpeedButton
      Left = 1030
    end
    inherited BvlPeriod: TBevel
      Left = 784
    end
    inherited laPeriod: TLabel
      Left = 788
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.Transdate,A.TransID,B.SalesName,A.Total,A.UpdUser,A.UP,' +
        'A.Rekening,A.Nama,A.Bank,A.Cabang'
      'from ARTrKlaimBagasiHd A '
      'inner join ARMsSales B on A.SalesID=B.SalesID'
      'WHERE A.FgOto='#39'T'#39)
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainUP: TStringField
      FieldName = 'UP'
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
    object quMainBank: TStringField
      FieldName = 'Bank'
      Size = 50
    end
    object quMainCabang: TStringField
      FieldName = 'Cabang'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
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
      
        'select a.Transid,A.POID,B.Transdate,C.CustName,A.Amount from ART' +
        'rKlaimBagasiDt A inner join artrpenjualanhd B on A.POID=B.saleid' +
        ' inner join ARMsCustomer C on B.CustID=C.CustID'
      'where a.transid=:transid')
    object quDetilTransid: TStringField
      FieldName = 'Transid'
      Size = 50
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetilTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quDetilCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quDetilAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 408
    Top = 4
  end
end
