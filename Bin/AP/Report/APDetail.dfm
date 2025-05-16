inherited fmAPDetail: TfmAPDetail
  Left = 485
  Top = 278
  Caption = 'Detail'
  ClientHeight = 334
  ClientWidth = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 740
  end
  inherited paCenter: TPanel
    Width = 740
    Height = 252
    object dbgPenjualan: TdxDBGrid
      Left = 1
      Top = 1
      Width = 738
      Height = 250
      Bands = <
        item
        end>
      DefaultLayout = True
      KeyField = 'ItemID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = False
          SummaryItems = <
            item
            end>
          Name = 'dbgPenjualanSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfUltraFlat
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dbgPenjualanColumn1: TdxDBGridColumn
        Caption = 'Kode Barang'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'itemid'
      end
      object dbgPenjualanColumn2: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'itemname'
      end
      object dbgPenjualanColumn3: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'qty'
      end
      object dbgPenjualanColumn4: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'uomid'
      end
      object dbgPenjualanColumn5: TdxDBGridColumn
        Caption = 'Harga'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'price'
      end
      object dbgPenjualanColumn6: TdxDBGridColumn
        Caption = 'Total'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'total'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'total'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dbgPenjualanSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 293
    Width = 740
    inherited bbPreview: TBitBtn
      Left = 514
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 588
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 662
      Enabled = False
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      
        'select '#39'a'#39' as flag,a.purchaseid,a.itemid,itemname,qty,uomid,pric' +
        'e,qty*price as total from APTrPurchaseDt a inner join inmsitem b' +
        ' on a.itemid=b.itemid')
    object quActitemid: TStringField
      FieldName = 'itemid'
    end
    object quActitemname: TStringField
      FieldName = 'itemname'
      Size = 150
    end
    object quActqty: TBCDField
      FieldName = 'qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActuomid: TStringField
      FieldName = 'uomid'
    end
    object quActprice: TBCDField
      FieldName = 'price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActtotal: TBCDField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 37
      Size = 8
    end
    object quActflag: TStringField
      FieldName = 'flag'
      ReadOnly = True
      Size = 1
    end
    object quActpurchaseid: TStringField
      FieldName = 'purchaseid'
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
end
