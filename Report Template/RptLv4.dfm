inherited fmRptLv4: TfmRptLv4
  Caption = 'fmRptLv4'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MyReport: TQuickRep
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
      Top = 196
      Size.Values = (
        44.9791666666667
        2058.45833333333)
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
        Size.Values = (
          79.375
          960.4375
          31.75
          134.9375)
        FontSize = 18
      end
      inherited qrlPeriode: TQRLabel
        Left = 366
        Top = 38
        Size.Values = (
          47.625
          968.375
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
      Top = 251
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
    inherited bndCH: TQRBand
      Height = 63
      Size.Values = (
        166.6875
        2058.45833333333)
      inherited QRShape1: TQRShape
        Top = 1
        Width = 777
        Height = 23
        Size.Values = (
          60.8541666666667
          2.64583333333333
          2.64583333333333
          2055.8125)
      end
    end
    inherited bnd001: TQRSubDetail
      Top = 213
      Size.Values = (
        47.625
        2058.45833333333)
    end
    object bnd002: TQRSubDetail
      Left = 19
      Top = 231
      Width = 778
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
        2058.45833333333)
      Master = bnd001
      DataSet = qu003
      PrintBefore = False
      PrintIfEmpty = True
    end
  end
  object ds002: TDataSource
    AutoEdit = False
    DataSet = qu002
    Left = 108
    Top = 92
  end
  object qu003: TADOQuery
    Connection = dmMain.dbConn
    DataSource = ds002
    Parameters = <>
    Left = 76
    Top = 124
  end
end
