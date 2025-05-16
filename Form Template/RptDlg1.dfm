inherited fmRptDlg1: TfmRptDlg1
  Left = 81
  Top = 167
  Caption = 'fmRptDlg1'
  ClientHeight = 545
  ClientWidth = 502
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object paTitle: TdxContainer [0]
    Left = 0
    Top = 0
    Width = 502
    Height = 32
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alTop
    Color = 15396334
    ParentColor = False
    Version = '1.0.0'
    Caption = 'paTitle'
    BoundColor = clBlue
    BoundLines = [blBottom]
    DesignSize = (
      502
      32)
    object sbSetting: TSpeedButton
      Left = 474
      Top = 5
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        9E050000424D9E05000000000000360400002800000012000000120000000100
        08000000000068010000120B0000120B00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
        FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
        FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
        FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
        FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
        CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
        CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
        CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
        CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
        990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
        990000CC9900FF999900CC99990099999900669999003399990000999900FF66
        9900CC66990099669900666699003366990000669900FF339900CC3399009933
        9900663399003333990000339900FF009900CC00990099009900660099003300
        990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
        6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
        6600669966003399660000996600FF666600CC66660099666600666666003366
        660000666600FF336600CC33660099336600663366003333660000336600FF00
        6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
        330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
        330000CC3300FF993300CC99330099993300669933003399330000993300FF66
        3300CC66330099663300666633003366330000663300FF333300CC3333009933
        3300663333003333330000333300FF003300CC00330099003300660033003300
        330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
        000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
        000000990000FF660000CC66000099660000666600000066000033660000FF33
        0000CC33000099330000663300003333000000330000CC000000990000006600
        0000330000000000DD000000BB000000AA000000880000007700000055000000
        44000000220000DD000000BB000000AA00000088000000770000005500000044
        000000220000DDDDDD0055555500777777007777770044444400222222001111
        110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
        00B3EDEDEDEDEDEDED323232000032323232320032ECEDEDEDEDEDEDEDED3232
        000032323232000032EC00323232323232323232000032323232000032EC0032
        323232323232323200003232323200F700000032323232323232323200003232
        323200190B190032323232323232323200003232323200190B19003232323232
        32323232000032323200130D0D0D000032323232323232320000323200130B0C
        0B0C0D0D003232323232323200003232000B0B0A0B0B0C0D1300323232323232
        000032000C0B0AFF190C0B0C0D00323232323232000032000C0AFFFF19100A0B
        0D00323232323232000032000C0AFFFFFFFF0B0B0D0032323232323200003200
        0C0AFFFFFFFF0B0B0D0032323232323200003232000CFFFFFF0A0B0C00003232
        323232320000323232000C0B0B0B0D0000323232323232320000323232320000
        0000000032323232323232320000323232323232323232323232323232323232
        0000}
      OnClick = sbSettingClick
    end
    object LaRptTitle: TLabel
      Left = 4
      Top = 4
      Width = 120
      Height = 23
      Caption = 'Report Title'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = LaRptTitleClick
    end
    object edRptTitle: TdxEdit
      Left = 3
      Top = 6
      Width = 398
      TabOrder = 0
      Visible = False
      OnExit = edRptTitleExit
      OnKeyPress = edRptTitleKeyPress
      StyleController = SCEdit
    end
  end
  object paButton: TdxContainer [1]
    Left = 0
    Top = 512
    Width = 502
    Height = 33
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alBottom
    Color = 15396334
    ParentColor = False
    Version = '1.0.0'
    Caption = 'paButton'
    BoundColor = clBlue
    BoundLines = [blTop]
    DesignSize = (
      502
      33)
    object bbPreview: TdxButton
      Left = 280
      Top = 5
      Height = 22
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Version = '1.0.2e'
      OnClick = bbPreviewClick
      Caption = 'Pre&view'
      TabOrder = 0
    end
    object bbPrint: TdxButton
      Left = 352
      Top = 5
      Height = 22
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Version = '1.0.2e'
      OnClick = bbPreviewClick
      Caption = '&Print'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00B00000000000
        000B0888888888888880088888888888888000000000000000000F8F8F8F8F8F
        8F8008F8F8F8F8F8F9F00F8F8F8F8F8F8F800000000000000000BBB0FFFFFFFF
        0BBBBBB0F0000F0F0BBBBBB0FFFFFFFF0BBBBBB0F00F00000BBBBBB0FFFF0FF0
        BBBBBBB0F08F0F0BBBBBBBB0FFFF00BBBBBBBBB000000BBBBBBB}
      TabOrder = 1
    end
    object bbClose: TdxButton
      Left = 425
      Top = 5
      Height = 22
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Version = '1.0.2e'
      OnClick = bbCloseClick
      Caption = '&Close'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777444
        7777777777077777477777777007777747777777030777444447777033077774
        447770033300000747777703330FF07777777703300FF07777777703330FF077
        77777703330FF07777777703330FF07777777703330FF0777777770330FFF077
        777777030FFFF07777777700FFFFF07777777700000000777777}
      TabOrder = 2
    end
  end
  object pcMain: TdxPageControl [2]
    Left = 0
    Top = 32
    Width = 502
    Height = 480
    ActivePage = tsSetting
    Align = alClient
    HideButtons = True
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 2
    TabPosition = dxtpTop
    TabWidth = 0
    object tsRpt: TdxTabSheet
      Caption = 'tsRpt'
    end
    object tsSetting: TdxTabSheet
      Caption = 'tsSetting'
      DesignSize = (
        502
        480)
      object shReport: TShape
        Left = 4
        Top = 6
        Width = 493
        Height = 184
        Pen.Color = clWhite
      end
      object Shape1: TShape
        Left = 16
        Top = 40
        Width = 471
        Height = 1
        Pen.Color = clGray
      end
      object Shape2: TShape
        Left = 16
        Top = 64
        Width = 470
        Height = 1
        Pen.Color = clGray
      end
      object Shape3: TShape
        Left = 16
        Top = 170
        Width = 470
        Height = 1
        Pen.Color = clGray
      end
      object Shape4: TShape
        Left = 16
        Top = 154
        Width = 470
        Height = 1
        Pen.Color = clGray
      end
      object shLineLeft: TShape
        Tag = 3
        Left = 16
        Top = 40
        Width = 1
        Height = 131
        OnMouseDown = shLineLeftMouseDown
      end
      object shLineRight: TShape
        Tag = 3
        Left = 486
        Top = 40
        Width = 1
        Height = 131
        OnMouseDown = shLineLeftMouseDown
      end
      object shHeader: TShape
        Tag = 2
        Left = 17
        Top = 40
        Width = 469
        Height = 25
        Brush.Color = 13092807
        Pen.Color = clGray
        OnMouseDown = shHeaderMouseDown
      end
      object shLevel1: TShape
        Tag = 2
        Left = 17
        Top = 65
        Width = 469
        Height = 16
        Brush.Color = 13092807
        Pen.Color = clGray
        OnMouseDown = shHeaderMouseDown
      end
      object shLevel2: TShape
        Tag = 2
        Left = 17
        Top = 81
        Width = 469
        Height = 16
        Brush.Color = 13092807
        Pen.Color = clGray
        OnMouseDown = shHeaderMouseDown
      end
      object shLevel3: TShape
        Tag = 2
        Left = 17
        Top = 97
        Width = 469
        Height = 16
        Brush.Color = 13092807
        Pen.Color = clGray
        OnMouseDown = shHeaderMouseDown
      end
      object Label12: TLabel
        Left = 20
        Top = 46
        Width = 41
        Height = 13
        Caption = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 20
        Top = 66
        Width = 41
        Height = 13
        Caption = 'Level 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 20
        Top = 82
        Width = 41
        Height = 13
        Caption = 'Level 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 20
        Top = 99
        Width = 41
        Height = 13
        Caption = 'Level 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object sh01: TShape
        Tag = 3
        Left = 80
        Top = 64
        Width = 1
        Height = 91
        OnMouseDown = shLineLeftMouseDown
      end
      object sh02: TShape
        Tag = 3
        Left = 280
        Top = 64
        Width = 1
        Height = 91
        OnMouseDown = shLineLeftMouseDown
      end
      object sh03: TShape
        Tag = 3
        Left = 376
        Top = 64
        Width = 1
        Height = 90
        OnMouseDown = shLineLeftMouseDown
      end
      object Label2: TLabel
        Left = 84
        Top = 46
        Width = 31
        Height = 13
        Caption = 'Field 1'
        Transparent = True
      end
      object Label17: TLabel
        Left = 288
        Top = 46
        Width = 31
        Height = 13
        Caption = 'Field 2'
        Transparent = True
      end
      object Label18: TLabel
        Left = 384
        Top = 46
        Width = 31
        Height = 13
        Caption = 'Field 3'
        Transparent = True
      end
      object Shape5: TShape
        Tag = 3
        Left = 80
        Top = 40
        Width = 1
        Height = 25
        Pen.Color = clGray
        OnMouseDown = shLineLeftMouseDown
      end
      object Shape6: TShape
        Tag = 3
        Left = 280
        Top = 40
        Width = 1
        Height = 25
        Pen.Color = clGray
        OnMouseDown = shLineLeftMouseDown
      end
      object Shape7: TShape
        Tag = 3
        Left = 376
        Top = 40
        Width = 1
        Height = 25
        Pen.Color = clGray
        OnMouseDown = shLineLeftMouseDown
      end
      object shFooter: TShape
        Tag = 2
        Left = 16
        Top = 154
        Width = 471
        Height = 17
        Hint = 'Footer'
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = shFooterMouseDown
      end
      object Label4: TLabel
        Left = 20
        Top = 156
        Width = 36
        Height = 13
        Caption = 'Footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 436
        Top = 156
        Width = 48
        Height = 13
        Caption = 'Page : ##'
        Transparent = True
      end
      object shTitle: TShape
        Tag = 2
        Left = 16
        Top = 7
        Width = 471
        Height = 34
        Hint = 'Title'
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = shTitleMouseDown
      end
      object laCompName: TLabel
        Left = 21
        Top = 10
        Width = 75
        Height = 13
        Caption = 'Company Name'
        Transparent = True
        OnMouseDown = laCompNameMouseDown
      end
      object laSetRptTitle: TLabel
        Tag = 1
        Left = 211
        Top = 15
        Width = 55
        Height = 13
        Caption = 'Report Title'
        Transparent = True
        OnMouseDown = laSetRptTitleMouseDown
      end
      object btnSaveSetting: TdxButton
        Left = 356
        Top = 438
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Version = '1.0.2e'
        OnClick = btnSaveSettingClick
        Caption = '&Save Setting'
        TabOrder = 0
      end
      object btnCancelSetting: TdxButton
        Left = 428
        Top = 438
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Version = '1.0.2e'
        OnClick = btnCancelSettingClick
        Caption = '&Cancel'
        TabOrder = 1
      end
      object pcSetting: TdxPageControl
        Left = 4
        Top = 196
        Width = 493
        Height = 200
        ActivePage = tsBandColumn
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        TabHeight = 0
        TabOrder = 2
        TabPosition = dxtpTop
        TabWidth = 0
        object tsCompName: TdxTabSheet
          Caption = 'Company Name'
          object Label5: TLabel
            Left = 12
            Top = 12
            Width = 92
            Height = 13
            Caption = 'Company Name '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 12
            Top = 68
            Width = 58
            Height = 13
            Caption = 'Font Name :'
            Transparent = True
          end
          object Label22: TLabel
            Left = 20
            Top = 92
            Width = 50
            Height = 13
            Caption = 'Font Size :'
            Transparent = True
          end
          object peFNCompName: TdxDBPickEdit
            Left = 76
            Top = 60
            Width = 229
            TabOrder = 0
            DataField = 'CompNameFontName'
            DataSource = dsSetting
            StyleController = SCEdit
            OnChange = peFNCompNameChange
            Items.Strings = (
              'Arial'
              'Arial Narrow'
              'Times New Roman')
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 76
            Top = 85
            Width = 45
            TabOrder = 1
            DataField = 'CompNameFontSize'
            DataSource = dsSetting
            StyleController = SCEdit
            OnChange = dxDBSpinEdit1Change
          end
        end
        object tsRptTitle: TdxTabSheet
          Caption = 'Report Title'
          object Label6: TLabel
            Left = 12
            Top = 12
            Width = 68
            Height = 13
            Caption = 'Report Title'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 12
            Top = 68
            Width = 58
            Height = 13
            Caption = 'Font Name :'
            Transparent = True
          end
          object Label26: TLabel
            Left = 20
            Top = 92
            Width = 50
            Height = 13
            Caption = 'Font Size :'
            Transparent = True
          end
          object peFNRptTitle: TdxDBPickEdit
            Left = 76
            Top = 60
            Width = 229
            TabOrder = 0
            DataField = 'RptTitleFontName'
            DataSource = dsSetting
            StyleController = SCEdit
            OnChange = peFNRptTitleChange
            Items.Strings = (
              'Arial'
              'Arial Narrow'
              'Times New Roman')
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 76
            Top = 85
            Width = 45
            TabOrder = 1
            DataField = 'RptTitleFontSize'
            DataSource = dsSetting
            StyleController = SCEdit
            OnChange = dxDBSpinEdit2Change
          end
        end
        object tsBandColumn: TdxTabSheet
          Caption = 'Band'
          object Label7: TLabel
            Left = 12
            Top = 12
            Width = 75
            Height = 13
            Caption = 'Band Column'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 12
            Top = 52
            Width = 41
            Height = 13
            Caption = 'Header :'
            Transparent = True
          end
          object Label9: TLabel
            Left = 12
            Top = 72
            Width = 41
            Height = 13
            Caption = 'Level 1 :'
            Transparent = True
          end
          object Label10: TLabel
            Left = 12
            Top = 92
            Width = 41
            Height = 13
            Caption = 'Level 2 :'
            Transparent = True
          end
          object Label11: TLabel
            Left = 12
            Top = 113
            Width = 41
            Height = 13
            Caption = 'Level 3 :'
            Transparent = True
          end
          object Label24: TLabel
            Left = 17
            Top = 134
            Width = 36
            Height = 13
            Caption = 'Footer :'
            Transparent = True
          end
          object Label25: TLabel
            Left = 27
            Top = 34
            Width = 26
            Height = 13
            Caption = 'Title :'
            Transparent = True
          end
          object btnChangeColor: TdxButton
            Left = 64
            Top = 51
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = btnChangeColorClick
            Caption = 'Change Color'
            TabOrder = 0
          end
          object dxButton3: TdxButton
            Left = 64
            Top = 71
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'Change Color'
            TabOrder = 1
          end
          object dxButton4: TdxButton
            Left = 64
            Top = 91
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton4Click
            Caption = 'Change Color'
            TabOrder = 2
          end
          object dxButton5: TdxButton
            Left = 64
            Top = 112
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton5Click
            Caption = 'Change Color'
            TabOrder = 3
          end
          object dxButton1: TdxButton
            Left = 64
            Top = 132
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton1Click
            Caption = 'Change Color'
            TabOrder = 4
          end
          object dxButton2: TdxButton
            Left = 64
            Top = 31
            Width = 81
            Height = 17
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton2Click
            Caption = 'Change Color'
            TabOrder = 5
          end
        end
        object tsLine: TdxTabSheet
          Caption = 'Line'
          object Label19: TLabel
            Left = 8
            Top = 16
            Width = 25
            Height = 13
            Caption = 'Line'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 15
            Top = 40
            Width = 47
            Height = 13
            Caption = 'Line Left :'
            Transparent = True
          end
          object Label21: TLabel
            Left = 8
            Top = 116
            Width = 100
            Height = 13
            Caption = 'Line Separator Field :'
          end
          object Label23: TLabel
            Left = 8
            Top = 58
            Width = 54
            Height = 13
            Caption = 'Line Right :'
            Transparent = True
          end
          object CeLineL: TdxDBCheckEdit
            Left = 68
            Top = 37
            Width = 69
            TabOrder = 0
            Caption = 'Visible'
            DataField = 'LineLeftVisible'
            DataSource = dsSetting
            ValueChecked = 'Y'
            ValueUnchecked = 'T'
            OnChange = CeLineLChange
          end
          object CeLineR: TdxDBCheckEdit
            Left = 68
            Top = 54
            Width = 69
            TabOrder = 1
            Caption = 'Visible'
            DataField = 'LineRightVisible'
            DataSource = dsSetting
            ValueChecked = 'Y'
            ValueUnchecked = 'T'
            OnChange = CeLineRChange
          end
          object ceSeparator: TdxDBCheckEdit
            Left = 112
            Top = 113
            Width = 69
            TabOrder = 2
            Caption = 'Visible'
            DataField = 'LineSeparatorVisible'
            DataSource = dsSetting
            ValueChecked = 'Y'
            ValueUnchecked = 'T'
            OnChange = ceSeparatorChange
          end
        end
      end
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 412
    Top = 4
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Options = [cdFullOpen]
    Left = 372
    Top = 308
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 14
    Left = 408
    Top = 308
  end
  object quSetting: TADOQuery
    Connection = dmMain.dbConn
    AfterOpen = quSettingAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SysReport')
    Left = 152
    Top = 428
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
  object dsSetting: TDataSource
    DataSet = quSetting
    OnStateChange = dsSettingStateChange
    Left = 184
    Top = 428
  end
end
