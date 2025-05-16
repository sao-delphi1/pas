inherited fmRptDlg2: TfmRptDlg2
  Caption = 'fmRptDlg2'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TdxPageControl
    inherited tsRpt: TdxTabSheet
      object paButtonNav: TPanel
        Left = 0
        Top = 453
        Width = 502
        Height = 27
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 7571345
        TabOrder = 0
        object laPage: TLabel
          Left = 5
          Top = 6
          Width = 40
          Height = 13
          Caption = 'laPage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbPrev: TdxButton
          Left = 349
          Top = 3
          Height = 20
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Color = 15396334
          ParentColor = False
          Version = '1.0.2e'
          OnClick = bbPrevClick
          AutoGray = False
          Caption = 'Prev'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            040000000000800000000000000000000000100000001000000000000000C6C6
            C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111111111111
            1111111111111111111111111111111111111111111111011111111111111001
            1111111111110001111111111110000111111111110000011111111110000001
            1111111111000001111111111110000111111111111100011111111111111001
            1111111111111101111111111111111111111111111111111111}
          HotTrack = True
          TabOrder = 0
        end
        object bbNext: TdxButton
          Left = 422
          Top = 3
          Height = 20
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = bbPrevClick
          AutoGray = False
          Caption = 'Next'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            040000000000800000000000000000000000100000001000000000000000C6C6
            C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111111111111
            1111111111111111111111111111111111111111101111111111111110011111
            1111111110001111111111111000011111111111100000111111111110000001
            1111111110000011111111111000011111111111100011111111111110011111
            1111111110111111111111111111111111111111111111111111}
          HotTrack = True
          Layout = blGlyphRight
          TabOrder = 1
        end
      end
      object pcRpt: TdxPageControl
        Left = 0
        Top = 32
        Width = 502
        Height = 421
        ActivePage = tsRpt01
        Align = alClient
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 1
        TabPosition = dxtpTop
        TabWidth = 0
        object tsRpt01: TdxTabSheet
          Caption = 'tsRpt01'
        end
        object tsRpt02: TdxTabSheet
          Caption = 'tsRpt02'
        end
        object tsRpt03: TdxTabSheet
          Caption = 'tsRpt03'
        end
        object tsRpt04: TdxTabSheet
          Caption = 'tsRpt04'
        end
        object tsRpt05: TdxTabSheet
          Caption = 'tsRpt05'
        end
      end
      object paPeriod: TPanel
        Left = 0
        Top = 0
        Width = 502
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  inherited quSetting: TADOQuery
    Left = 352
    Top = 4
  end
  inherited dsSetting: TDataSource
    Left = 380
    Top = 4
  end
  object quPage1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 12
    Top = 4
  end
  object quPage2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 60
    Top = 4
  end
  object quPage3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 112
    Top = 4
  end
  object quPage4: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 152
    Top = 4
  end
  object quPage5: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 192
    Top = 4
  end
  object dsPage1: TDataSource
    AutoEdit = False
    DataSet = quPage1
    Left = 16
    Top = 24
  end
  object dsPage2: TDataSource
    AutoEdit = False
    DataSet = quPage2
    Left = 64
    Top = 24
  end
  object dsPage3: TDataSource
    AutoEdit = False
    DataSet = quPage3
    Left = 112
    Top = 24
  end
  object dsPage4: TDataSource
    AutoEdit = False
    DataSet = quPage4
    Left = 156
    Top = 24
  end
  object dsPage5: TDataSource
    AutoEdit = False
    DataSet = quPage5
    Left = 196
    Top = 24
  end
end
