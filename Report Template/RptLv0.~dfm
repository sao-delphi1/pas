object fmRptLv0: TfmRptLv0
  Left = 26
  Top = 21
  Width = 838
  Height = 480
  Caption = 'fmRptLv0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MyReport: TQuickRep
    Left = 4
    Top = 8
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = MyReportBeforePrint
    DataSet = qu001
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnPreview = MyReportPreview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      50
      2794
      50
      2159
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object BndDetail: TQRBand
      Left = 19
      Top = 165
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
      BandType = rbDetail
    end
    object BndTitle: TQRBand
      Left = 19
      Top = 19
      Width = 778
      Height = 146
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
        386.291666666667
        2058.45833333333)
      BandType = rbPageHeader
      object qrlCompName: TQRLabel
        Left = 4
        Top = 3
        Width = 149
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          10.5833333333333
          7.9375
          394.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 15
      end
      object qrlTitle: TQRLabel
        Left = 363
        Top = 19
        Width = 51
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          960.4375
          50.2708333333333
          134.9375)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Title'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 18
      end
      object qrlPeriode: TQRLabel
        Left = 366
        Top = 49
        Width = 45
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          968.375
          129.645833333333
          119.0625)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Periode'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlCompAddres: TQRMemo
        Left = 4
        Top = 32
        Width = 229
        Height = 110
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          291.041666666667
          10.5833333333333
          84.6666666666667
          605.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          '')
        Transparent = True
        WordWrap = False
        FontSize = 10
      end
      object ImgCompany: TQRImage
        Left = 672
        Top = 0
        Width = 105
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.8125
          1778
          0
          277.8125)
      end
    end
    object mmTemp: TMemo
      Left = 808
      Top = 144
      Width = 185
      Height = 89
      Lines.Strings = (
        'mmTemp')
      TabOrder = 2
    end
  end
  object qu001: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 316
    Top = 32
  end
  object ds001: TDataSource
    AutoEdit = False
    DataSet = qu001
    Left = 344
    Top = 32
  end
  object quSetting: TADOQuery
    Connection = dmMain.dbConn
    AfterOpen = quSettingAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SysReport')
    Left = 608
    Top = 32
    object quSettingCompNameFontName: TStringField
      FieldName = 'CompNameFontName'
      Size = 50
    end
    object quSettingCompNameFontSize: TLargeintField
      FieldName = 'CompNameFontSize'
    end
    object quSettingLineLeftVisible: TStringField
      FieldName = 'LineLeftVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineRightVisible: TStringField
      FieldName = 'LineRightVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineSeparatorVisible: TStringField
      FieldName = 'LineSeparatorVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingClFooter: TLargeintField
      FieldName = 'ClFooter'
    end
    object quSettingClTitle: TLargeintField
      FieldName = 'ClTitle'
    end
    object quSettingRptTitleFontName: TStringField
      FieldName = 'RptTitleFontName'
      Size = 50
    end
    object quSettingRptTitleFontSize: TLargeintField
      FieldName = 'RptTitleFontSize'
    end
  end
end
