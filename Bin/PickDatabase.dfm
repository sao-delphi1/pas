inherited fmPickDatabase: TfmPickDatabase
  Left = 649
  Top = 142
  Caption = 'Database'
  ClientHeight = 117
  ClientWidth = 292
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 34
    Width = 74
    Height = 18
    Caption = 'Database :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bbOK1: TdxButton [1]
    Left = 96
    Top = 61
    Width = 89
    Height = 36
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = bbOK1Click
    Caption = '&Connect'
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
    TabOrder = 0
  end
  object cmbDatabase: TComboBox [2]
    Left = 96
    Top = 30
    Width = 145
    Height = 26
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentFont = False
    TabOrder = 1
  end
end
