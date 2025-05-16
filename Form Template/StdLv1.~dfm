inherited fmStdLv1: TfmStdLv1
  Caption = 'fmStdLv1'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object paToolBar: TdxContainer [0]
    Left = 0
    Top = 0
    Width = 790
    Height = 37
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Align = alTop
    Color = 14929269
    ParentColor = False
    Version = '1.0.0'
    BoundColor = clBlack
    BoundLines = [blBottom]
    object sbClose: TSpeedButton
      Left = 4
      Top = 4
      Width = 76
      Height = 27
      Hint = 'Close this Form'
      Caption = 'Tutup'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777444
        7777777777077777477777777007777747777777030777444447777033077774
        447770033300000747777703330FF07777777703300FF07777777703330FF077
        77777703330FF07777777703330FF07777777703330FF0777777770330FFF077
        777777030FFFF07777777700FFFFF07777777700000000777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbCloseClick
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quMainBeforePost
    Parameters = <>
    Left = 244
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 272
    Top = 4
  end
end
