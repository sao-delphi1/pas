inherited fmKeyPad: TfmKeyPad
  Left = 420
  Top = 161
  Caption = ''
  ClientHeight = 299
  ClientWidth = 256
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblasli: TLabel [0]
    Left = 44
    Top = 332
    Width = 25
    Height = 13
    Caption = 'lblasli'
  end
  object paUp: TdxContainer [1]
    Left = 0
    Top = 0
    Width = 256
    Height = 299
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alClient
    Version = '1.0.0'
    OnKeyPress = paUpKeyPress
    Caption = 'paUp'
    object mmAngka: TMemo
      Left = -2
      Top = 0
      Width = 261
      Height = 43
      Alignment = taRightJustify
      Color = 14467152
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Lines.Strings = (
        '123.456.7890')
      MaxLength = 20
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      WordWrap = False
    end
    object dxButton15: TdxButton
      Left = 170
      Top = 41
      Width = 86
      Height = 65
      Hint = '9'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '9'
      TabOrder = 1
    end
    object dxButton11: TdxButton
      Left = 85
      Top = 41
      Width = 86
      Height = 65
      Hint = '8'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '8'
      TabOrder = 2
    end
    object dxButton5: TdxButton
      Left = 0
      Top = 41
      Width = 86
      Height = 65
      Hint = '7'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '7'
      TabOrder = 3
    end
    object dxButton7: TdxButton
      Left = 0
      Top = 105
      Width = 86
      Height = 65
      Hint = '4'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '4'
      TabOrder = 4
    end
    object dxButton10: TdxButton
      Left = 85
      Top = 105
      Width = 86
      Height = 65
      Hint = '5'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '5'
      TabOrder = 5
    end
    object dxButton14: TdxButton
      Left = 170
      Top = 105
      Width = 86
      Height = 65
      Hint = '6'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '6'
      TabOrder = 6
    end
    object dxButton13: TdxButton
      Left = 170
      Top = 169
      Width = 86
      Height = 65
      Hint = '3'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '3'
      TabOrder = 7
    end
    object dxButton9: TdxButton
      Left = 85
      Top = 169
      Width = 86
      Height = 65
      Hint = '2'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '2'
      TabOrder = 8
    end
    object dxButton6: TdxButton
      Left = 0
      Top = 169
      Width = 86
      Height = 65
      Hint = '1'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '1'
      TabOrder = 9
    end
    object dxButton12: TdxButton
      Left = 0
      Top = 233
      Width = 86
      Height = 65
      Hint = '10'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = 'C'
      TabOrder = 10
    end
    object dxButton8: TdxButton
      Left = 85
      Top = 233
      Width = 86
      Height = 65
      Hint = '0'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton5Click
      Caption = '0'
      TabOrder = 11
    end
    object dxButton16: TdxButton
      Left = 170
      Top = 233
      Width = 86
      Height = 65
      Hint = '11'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton16Click
      Caption = 'OK'
      TabOrder = 12
    end
  end
  inherited quAct: TADOQuery
    Left = 564
    Top = 208
  end
  inherited SCEdit: TdxEditStyleController
    Left = 540
    Top = 268
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 580
    Top = 292
  end
end
