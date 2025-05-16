inherited fmINRptUmurBarangDlg: TfmINRptUmurBarangDlg
  Left = 233
  Top = 116
  Caption = ''
  ClientHeight = 551
  ClientWidth = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 434
    inherited laTitle: TLabel
      Width = 215
      Caption = 'Laporan Umur Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 434
    Height = 469
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 133
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
    object dbgList: TdxDBGrid
      Left = 1
      Top = 240
      Width = 432
      Height = 228
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SNID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 1
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListSNID: TdxDBGridMaskColumn
        Caption = 'Serial Number'
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SNID'
      end
    end
    object Panel1: TPanel
      Left = 8
      Top = 211
      Width = 132
      Height = 19
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 2
      object rbselect2: TRadioButton
        Left = 64
        Top = 1
        Width = 61
        Height = 17
        Caption = '&Select'
        TabOrder = 0
        OnClick = rbAll2Click
      end
      object rbAll2: TRadioButton
        Left = 4
        Top = 1
        Width = 53
        Height = 17
        Caption = '&All'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbAll2Click
      end
    end
    object bbCariSN: TdxButton
      Left = 318
      Top = 206
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCariSNClick
      Caption = 'CARI SN'
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 8
      Top = 59
      Width = 132
      Height = 19
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 4
      object rbSelect: TRadioButton
        Left = 64
        Top = 1
        Width = 61
        Height = 17
        Caption = '&Select'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbAllClick
      end
      object rbAll: TRadioButton
        Left = 4
        Top = 1
        Width = 53
        Height = 17
        Caption = '&All'
        TabOrder = 1
        OnClick = rbAllClick
      end
    end
    object bbCari: TdxButton
      Left = 318
      Top = 24
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCariClick
      Caption = 'CARI BARANG'
      TabOrder = 5
    end
    object dbgItem: TdxDBGrid
      Left = 1
      Top = 59
      Width = 432
      Height = 142
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 6
      OnClick = dbgItemClick
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGridItemID: TdxDBGridColumn
        Caption = 'Kode Barang'
        Sorted = csUp
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITemID'
      end
      object dxDBGridItemName: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 284
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 510
    Width = 434
    inherited bbPreview: TBitBtn
      Left = 208
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 282
    end
    inherited bbExit: TBitBtn
      Left = 356
    end
  end
  inherited quAct: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'SELECT K.SNID FROM'
      '(SELECT A.SNID, '
      'A.ItemID,F.ItemName'
      'FROM APTrPurchaseDtSN A  '
      'INNER JOIN INMsItem F ON F.ItemId=A.ItemId  '
      'UNION ALL'
      'SELECT A.SNID, A.ItemID, F.ItemName'
      'FROM APTrKonsinyasiDtSn A'
      'INNER JOIN INMsItem F ON F.ItemID=A.ItemId'
      'UNION ALL'
      'SELECT A.SNID, A.ItemID, F.ItemName'
      'FROM APTrReturnRepSN A'
      'INNER JOIN INMsItem F ON F.ItemID=A.ItemID) as K'
      'ORDER BY K.SNID')
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT K.ItemID, K.ItemName FROM'
      '(SELECT A.ItemID,B.ItemName'
      'FROM APTrPurchaseDtSN A'
      'INNER JOIN InMsItem B ON A.ItemID=B.ItemID'
      'UNION ALL'
      'SELECT A.ItemID,B.ItemName'
      'FROM APTrKonsinyasiDtSn  A'
      'INNER JOIN InMsItem B ON A.ItemID=B.ItemID) as K')
    Left = 260
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
end
