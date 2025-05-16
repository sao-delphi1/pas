inherited fmARQRRptPiutangService: TfmARQRRptPiutangService
  Left = 185
  Top = 72
  Width = 1000
  Caption = 'fmARQRRptPiutangService'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MyReport: TQuickRep
    Width = 1056
    Height = 816
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Orientation = poLandscape
    Page.Values = (
      50
      2159
      50
      2794
      50
      50
      0)
    inherited BndDetail: TQRBand
      Width = 1018
      AfterPrint = BndDetailAfterPrint
      Color = 14540253
      Size.Values = (
        44.9791666666667
        2693.45833333333)
      object QRDBText1: TQRDBText
        Left = 89
        Top = 0
        Width = 313
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          0
          828.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu001
        DataField = 'Cust'
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
      object QRLabel1: TQRLabel
        Left = 1
        Top = 0
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2.64583333333333
          0
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pelanggan :'
        Color = clWhite
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
      Width = 1018
      Size.Values = (
        301.625
        2693.45833333333)
      inherited qrlCompName: TQRLabel
        Size.Values = (
          52.9166666666667
          10.5833333333333
          7.9375
          325.4375)
        FontSize = 12
      end
      inherited qrlTitle: TQRLabel
        Left = 488
        Width = 41
        Height = 23
        Size.Values = (
          60.8541666666667
          1291.16666666667
          31.75
          108.479166666667)
        Font.Height = -19
        FontSize = 14
      end
      inherited qrlPeriode: TQRLabel
        Left = 486
        Size.Values = (
          47.625
          1285.875
          100.541666666667
          119.0625)
        FontSize = 10
      end
      inherited qrlCompAddres: TQRMemo
        Size.Values = (
          224.895833333333
          10.5833333333333
          66.1458333333333
          605.895833333333)
        FontSize = 10
      end
      inherited ImgCompany: TQRImage
        Size.Values = (
          169.333333333333
          1688.04166666667
          2.64583333333333
          595.3125)
      end
    end
    inherited BndPF: TQRBand
      Top = 268
      Width = 1018
      Size.Values = (
        44.9791666666667
        2693.45833333333)
      inherited QRSPageNumber: TQRSysData
        Left = 968
        Size.Values = (
          44.9791666666667
          2561.16666666667
          0
          127)
        FontSize = 8
      end
      inherited qrlUserId: TQRLabel
        Left = 487
        Size.Values = (
          44.9791666666667
          1288.52083333333
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
      Left = 1064
      Top = 192
    end
    inherited bndCH: TQRBand
      Width = 1018
      Size.Values = (
        50.2708333333333
        2693.45833333333)
      inherited QRShape1: TQRShape
        Width = 1021
        Height = 17
        Size.Values = (
          44.9791666666667
          2.64583333333333
          2.64583333333333
          2701.39583333333)
      end
      object QRLabel3: TQRLabel
        Left = 194
        Top = 1
        Width = 120
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          513.291666666667
          2.64583333333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No Invoice Service'
        Color = clWhite
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
      object QRLabel4: TQRLabel
        Left = 34
        Top = 1
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          89.9583333333333
          2.64583333333333
          325.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tgl Invoice Service'
        Color = clWhite
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
      object QRLabel5: TQRLabel
        Left = 765
        Top = 1
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2024.0625
          2.64583333333333
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DiBayar'
        Color = clWhite
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
      object QRLabel6: TQRLabel
        Left = 646
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1709.20833333333
          2.64583333333333
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
        Color = clWhite
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
      object QRLabel7: TQRLabel
        Left = 913
        Top = 1
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2415.64583333333
          2.64583333333333
          240.770833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo Piutang'
        Color = clWhite
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
    inherited bnd001: TQRSubDetail
      Width = 1018
      AfterPrint = bnd001AfterPrint
      Size.Values = (
        47.625
        2693.45833333333)
      FooterBand = GroupFooterBand2
      object QRDBText4: TQRDBText
        Left = 33
        Top = 0
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          87.3125
          0
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'Tanggal'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 192
        Top = 0
        Width = 345
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          508
          0
          912.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'IP'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 688
        Top = 0
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1820.33333333333
          0
          341.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'Debit'
        OnPrint = QRDBText5Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 552
        Top = 0
        Width = 129
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
          341.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'Kredit'
        OnPrint = QRDBText6Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 824
        Top = 0
        Width = 180
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2180.16666666667
          0
          476.25)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Master = bnd001
        OnPrint = QRExpr1Print
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'qu002.Kredit-qu002.Debit'
        FontSize = 10
      end
    end
    inherited bnd002: TQRSubDetail
      Width = 1018
      Height = 0
      Size.Values = (
        0
        2693.45833333333)
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 207
      Width = 1018
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        161.395833333333
        2693.45833333333)
      BandType = rbSummary
      object QRLabel11: TQRLabel
        Left = 488
        Top = 16
        Width = 313
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1291.16666666667
          42.3333333333333
          828.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'GRAND TOTAL PIUTANG SERVICE  :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 804
        Top = 16
        Width = 206
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2127.25
          42.3333333333333
          545.041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'IDR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel12Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object GroupFooterBand2: TQRBand
      Left = 19
      Top = 187
      Width = 1018
      Height = 20
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
        52.9166666666667
        2693.45833333333)
      BandType = rbGroupFooter
      object QRLabel9: TQRLabel
        Left = 0
        Top = 0
        Width = 537
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          0
          1420.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 688
        Top = 1
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1820.33333333333
          2.64583333333333
          341.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = bnd001
        OnPrint = QRExpr2Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qu002.Debit)'
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 552
        Top = 1
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          2.64583333333333
          341.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = bnd001
        OnPrint = QRExpr3Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qu002.Kredit)'
        FontSize = 10
      end
      object QRExpr4: TQRExpr
        Left = 825
        Top = 1
        Width = 179
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2182.8125
          2.64583333333333
          473.604166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = bnd001
        OnPrint = QRExpr4Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qu002.Kredit-qu002.Debit)'
        FontSize = 10
      end
    end
  end
  inherited qu002: TADOQuery
    SQL.Strings = (
      ''
      
        ' select L.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal' +
        ','
      'K.InvServiceID as IP, isnull(K.TTLSV,0)as Kredit,'
      ' isnull((Select isnull(Sum(ValuePayment),0) from '
      
        'ARTrPiutInvServiceDt A where A.InvServiceid=K.InvServiceId),0) a' +
        's Debit '
      'FROM ARTrInvServiceHd K INNER JOIN ARTrServiceHd L '
      'ON K.ServiceId=L.ServiceId ')
    Top = 68
    object qu002CustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object qu002Tanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object qu002IP: TStringField
      FieldName = 'IP'
      Size = 50
    end
    object qu002Kredit: TBCDField
      FieldName = 'Kredit'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object qu002Debit: TBCDField
      FieldName = 'Debit'
      ReadOnly = True
      Precision = 32
    end
  end
  inherited ds002: TDataSource
    Left = 348
    Top = 68
  end
  inherited qu003: TADOQuery
    SQL.Strings = (
      
        ' select K.SuppID,Convert(varchar(20),K.TransDate,103) as Tanggal' +
        ',K.PurchaseID as IP,'
      
        ' isnull(K.TTLPb,0)  -isnull((Select isnull(Sum(Price*Qty),0) FRO' +
        'M APTrReturnDt F '
      
        'INNER JOIN APTrReturnHd G  ON F.ReturnId=G.ReturnId WHERE G.Flag' +
        'Retur='#39'B'#39' '
      
        'AND F.purchaseId=K.PurchaseId  AND G.SuppId=K.SuppId),0) as Kred' +
        'it, '
      
        '(select isnull(sum(L.valuePayment),0) FROM APTrPaymentDt L INNER' +
        ' JOIN APTrPaymentHd H '
      
        'ON L.PaymentID=H.PaymentID  where L.PurchaseID = K.PurchaseID AN' +
        'D H.SuppId=K.SuppId) as Debit '
      'FROM APTrPurchaseHd K ')
    Left = 316
    Top = 100
  end
end
