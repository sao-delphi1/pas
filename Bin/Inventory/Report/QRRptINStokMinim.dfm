inherited fmINQRRptStokMinim: TfmINQRRptStokMinim
  Top = 103
  VertScrollBar.Position = 11
  Caption = 'fmINQRRptStokMinim'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MyReport: TQuickRep
    Top = 1
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      50
      2794
      50
      2159
      50
      50
      0)
    inherited BndDetail: TQRBand
      Color = 14540253
      Size.Values = (
        44.9791666666667
        2058.45833333333)
      object QRDBText9: TQRDBText
        Left = 5
        Top = -1
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          -2.64583333333333
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu001
        DataField = 'Gudang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    inherited BndTitle: TQRBand
      Size.Values = (
        301.625
        2058.45833333333)
      inherited qrlCompName: TQRLabel
        Size.Values = (
          52.9166666666667
          10.5833333333333
          7.9375
          325.4375)
        FontSize = 12
      end
      inherited qrlTitle: TQRLabel
        Left = 368
        Width = 41
        Height = 23
        Size.Values = (
          60.8541666666667
          973.666666666667
          31.75
          108.479166666667)
        Font.Height = -19
        FontSize = 14
      end
      inherited qrlPeriode: TQRLabel
        Size.Values = (
          47.625
          968.375
          100.541666666667
          119.0625)
        FontSize = 10
      end
      inherited qrlCompAddres: TQRMemo
        Top = 29
        Size.Values = (
          224.895833333333
          10.5833333333333
          76.7291666666667
          605.895833333333)
        FontSize = 10
      end
      inherited ImgCompany: TQRImage
        Size.Values = (
          169.333333333333
          1455.20833333333
          2.64583333333333
          595.3125)
      end
    end
    inherited BndPF: TQRBand
      Top = 192
      Size.Values = (
        44.9791666666667
        2058.45833333333)
      inherited QRSPageNumber: TQRSysData
        Size.Values = (
          44.9791666666667
          1926.16666666667
          0
          127)
        FontSize = 8
      end
      inherited qrlUserId: TQRLabel
        Size.Values = (
          44.9791666666667
          971.020833333333
          0
          116.416666666667)
        FontSize = 8
      end
      inherited qrlPrintDate: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          0
          174.625)
        FontSize = 8
      end
    end
    inherited mmTemp: TMemo
      Left = 1056
      Top = 184
    end
    inherited bndCH: TQRBand
      Size.Values = (
        66.1458333333333
        2058.45833333333)
      inherited QRShape1: TQRShape
        Size.Values = (
          60.8541666666667
          0
          2.64583333333333
          2055.8125)
      end
      object QRLabel1: TQRLabel
        Left = 12
        Top = 4
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          31.75
          10.5833333333333
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Kode Barang'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 124
        Top = 4
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          328.083333333333
          10.5833333333333
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nama Barang'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 473
        Top = 4
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1251.47916666667
          10.5833333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produk'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 704
        Top = 4
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1862.66666666667
          10.5833333333333
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Stok Akhir'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 568
        Top = 4
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          10.5833333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Stok Minimum'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 175
      Width = 778
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        2058.45833333333)
      Master = MyReport
      DataSet = qu002
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 13
        Top = -1
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          34.3958333333333
          -2.64583333333333
          264.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qu002
        DataField = 'itemId'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = -1
        Width = 349
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          -2.64583333333333
          923.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qu002
        DataField = 'itemName'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 472
        Top = -1
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1248.83333333333
          -2.64583333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'ProductDesc'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 668
        Top = 0
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1767.41666666667
          0
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'Stok_Akhir'
        OnPrint = QRDBText8Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 552
        Top = 0
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          0
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'MinimumStok'
        OnPrint = QRDBText8Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object S_CountStokBarang: TADOStoredProc
    Connection = dmMain.dbConn
    ProcedureName = 'S_CountStokBarang'
    Parameters = <
      item
        Name = '@ItemId'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@TransDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Stok'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 18
        Value = Null
      end>
    Left = 372
    Top = 316
  end
  object S_BarangMasuk: TADOStoredProc
    Connection = dmMain.dbConn
    ProcedureName = 'S_BarangMasuk'
    Parameters = <
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ItemId'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Stok'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 18
        Value = Null
      end>
    Left = 400
    Top = 316
  end
  object qu002: TADOQuery
    Connection = dmMain.dbConn
    DataSource = ds001
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      '')
    Left = 316
    Top = 64
  end
  object ds002: TDataSource
    AutoEdit = False
    DataSet = qu002
    Left = 344
    Top = 64
  end
  object qu003: TADOQuery
    Connection = dmMain.dbConn
    DataSource = ds002
    Parameters = <>
    SQL.Strings = (
      ''
      
        '  select DISTINCT A.itemId, A.ItemName, A.UOMId as TransUOM, D.P' +
        'roductDesc, '
      ' (Select ISNULL(SUM(Case WHEN B.FgTrans < 50 THEN B.QTy ELSE'
      ' B.Qty * - 1 END),0)    FROM ALLITEM B Where '
      'CONVERT(VARCHAR(8),B.TransDate,112)<'#39'20060614'#39'  '
      ' AND B.ItemID='#39'A002'#39' AND B.WareHouseId='#39'GUDGUS'#39') as Stok_Awal, '
      
        ' (Select ISNULL(SUM(Case WHEN B.FgTrans < 50 AND FgTrans NOT IN(' +
        '3) '
      ' THEN B.QTy END),0)  '
      '  FROM ALLITEM B Where'
      ' CONVERT(VARCHAR(8),B.TransDate,112)>='#39'20060614'#39' '
      ' AND CONVERT(VARCHAR(8),B.TransDate,112)<='#39'20060614'#39' '
      '  AND B.ItemID='#39'A002'#39' AND B.WareHouseId='#39'GUDGUS'#39') as Masuk, '
      ' (Select ISNULL(SUM(Case WHEN B.FgTrans > 50 AND FgTrans'
      ' NOT IN(53) THEN B.QTy END),0)   '
      ' FROM ALLITEM B Where '
      'CONVERT(VARCHAR(8),B.TransDate,112)>='#39'20060614'#39'   '
      'AND CONVERT(VARCHAR(8),B.TransDate,112)<='#39'20060614'#39'   '
      'AND B.ItemID='#39'A002'#39' AND B.WareHouseId='#39'GUDGUS'#39') as Keluar,  '
      '(Select ISNULL(SUM(Case WHEN B.FgTrans < 50  '
      'THEN B.QTy ELSE B.Qty * - 1 END),0)    FROM ALLITEM B'
      ' Where CONVERT(VARCHAR(8),B.TransDate,112)<='#39'20060614'#39'  '
      ' AND B.ItemID='#39'A002'#39' AND B.WareHouseId='#39'GUDGUS'#39') as Stok_Akhir, '
      
        ' (Select ISNULL(SUM(Case WHEN B.FgTrans IN (3) THEN B.QTy       ' +
        '   '
      '                WHEN B.FgTrans IN (53) THEN  B.Qty * - 1    '
      '                      ELSE 0 END),0)    FROM ALLITEM B Where '
      'CONVERT(VARCHAR(8),B.TransDate,112)>='#39'20060614'#39'  '
      ' AND CONVERT(VARCHAR(8),B.TransDate,112)<='#39'20060614'#39' '
      
        '  AND B.ItemID='#39'A002'#39' AND B.WareHouseId='#39'GUDGUS'#39') as Adjustment ' +
        '  '
      'FROM INMsItem A INNER JOIN ALLITEM C ON A.ItemId=C.ItemId '
      'INNER JOIN INMsProduct D ON A.ProductId=D.ProductId'
      '  ORDER BY A.itemId'
      ''
      '')
    Left = 316
    Top = 96
  end
end
