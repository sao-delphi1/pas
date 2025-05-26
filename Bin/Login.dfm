inherited fmLogin: TfmLogin
  Left = 589
  Top = 229
  Caption = 'Login Area'
  ClientHeight = 198
  ClientWidth = 319
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited paUp: TdxContainer
    Width = 319
    Height = 141
    ParentFont = False
    object Label1: TLabel
      Left = 9
      Top = 67
      Width = 90
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Username :'
      Color = 12058623
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 96
      Width = 90
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Password :'
      Color = 12058623
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 19
      Top = 19
      Width = 284
      Height = 24
      Caption = 'PORTAL ANDALAN SOLUSI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 104
      Top = 56
      Width = 181
      Height = 34
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 452
      Top = 19
      Width = 227
      Height = 193
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object dxButton12: TdxButton
        Left = 4
        Top = 144
        Height = 45
        Hint = '10'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = 'C'
        TabOrder = 0
      end
      object dxButton8: TdxButton
        Left = 77
        Top = 144
        Height = 45
        Hint = '0'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '0'
        TabOrder = 1
      end
      object dxButton16: TdxButton
        Left = 150
        Top = 144
        Height = 45
        Hint = '11'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbOK1Click
        Caption = 'OK'
        TabOrder = 2
      end
      object dxButton6: TdxButton
        Left = 4
        Top = 99
        Height = 45
        Hint = '1'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '1'
        TabOrder = 3
      end
      object dxButton9: TdxButton
        Left = 77
        Top = 99
        Height = 45
        Hint = '2'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '2'
        TabOrder = 4
      end
      object dxButton13: TdxButton
        Left = 150
        Top = 99
        Height = 45
        Hint = '3'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '3'
        TabOrder = 5
      end
      object dxButton7: TdxButton
        Left = 4
        Top = 54
        Height = 45
        Hint = '4'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '4'
        TabOrder = 6
      end
      object dxButton10: TdxButton
        Left = 77
        Top = 54
        Height = 45
        Hint = '5'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '5'
        TabOrder = 7
      end
      object dxButton14: TdxButton
        Left = 150
        Top = 54
        Height = 45
        Hint = '6'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '6'
        TabOrder = 8
      end
      object dxButton5: TdxButton
        Left = 4
        Top = 9
        Height = 45
        Hint = '7'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '7'
        TabOrder = 9
      end
      object dxButton11: TdxButton
        Left = 77
        Top = 9
        Height = 45
        Hint = '8'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '8'
        TabOrder = 10
      end
      object dxButton15: TdxButton
        Left = 150
        Top = 9
        Height = 45
        Hint = '9'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = '9'
        TabOrder = 11
      end
    end
    object CbUser: TComboBox
      Left = 105
      Top = 62
      Width = 179
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edUserIdKeyPress
    end
    object edPassword: TdxEdit
      Left = 103
      Top = 92
      Width = 183
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'admin'
      OnKeyPress = edUserIdKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
  end
  inherited paBottom: TdxContainer
    Top = 141
    Width = 319
    Height = 57
    object lblasli: TLabel [0]
      Left = 500
      Top = -16
      Width = 25
      Height = 13
      Caption = 'lblasli'
    end
    inherited bBCancel: TBitBtn
      Left = -134
      Top = 101
      Height = 37
      TabOrder = 1
      TabStop = False
    end
    inherited bbOK: TBitBtn
      Left = -211
      Top = 101
      Height = 37
      TabOrder = 0
      TabStop = False
    end
    object bbOK1: TdxButton
      Left = 104
      Top = 9
      Width = 89
      Height = 36
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbOK1Click
      Caption = '&OK'
      Colors.ClickedFrom = 15199215
      Colors.ClickedTo = 15199215
      Colors.FocusedFrom = 15199215
      Colors.FocusedTo = 15199215
      Colors.HighlightFrom = 15199215
      Colors.HighlightTo = 15199215
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000003333333333333333330000003333344333333333330000003333
        4224333333333300000033342222433333333300000033422222243333333300
        000034222A2222433333330000003222A3A222433333330000003A2A333A2224
        33333300000033A33333A222433333000000333333333A222433330000003333
        333333A222433300000033333333333A222433000000333333333333A2224300
        00003333333333333A224300000033333333333333A223000000333333333333
        333A33000000333333333333333333000000}
      HotTrack = True
      ModalResult = 1
      TabOrder = 2
    end
    object bbCancel1: TdxButton
      Left = 195
      Top = 9
      Width = 89
      Height = 36
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancel1Click
      Caption = '&Cancel'
      Colors.ClickedFrom = 15199215
      Colors.ClickedTo = 15199215
      Colors.FocusedFrom = 15199215
      Colors.FocusedTo = 15199215
      Colors.HighlightFrom = 15199215
      Colors.HighlightTo = 15199215
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000003333883333333333330000003339118333339833330000003339
        1118333911833300000033391111839111183300000033339111181111183300
        0000333339111111118333000000333333911111183333000000333333311111
        8333330000003333333911118333330000003333339111118333330000003333
        3911181118333300000033339111839111833300000033339118333911183300
        0000333339133333911133000000333333333333391933000000333333333333
        333333000000333333333333333333000000}
      HotTrack = True
      ModalResult = 2
      TabOrder = 3
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 544
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 568
    Top = 0
  end
  object quUser: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select Distinct UserId FROM SysMsUser')
    Left = 368
    Top = 4
    object quUserUserId: TStringField
      FieldName = 'UserId'
    end
  end
  object dsUser: TDataSource
    DataSet = quUser
    Left = 392
    Top = 4
  end
end
