inherited fmShowDlg: TfmShowDlg
  Left = 317
  Top = 185
  Caption = 'fmShowDlg'
  ClientHeight = 180
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited paUp: TdxContainer
    Width = 377
    Height = 143
    Color = 14467152
    ParentColor = False
    BoundColor = 10858936
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 66
      Height = 13
      Caption = 'Keterangan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mmKet: TdxMemo
      Left = 0
      Top = 20
      Width = 377
      Align = alBottom
      TabOrder = 0
      OnKeyPress = mmKetKeyPress
      WantReturns = False
      Height = 123
    end
  end
  inherited paBottom: TdxContainer
    Top = 143
    Width = 377
    Color = 11177506
    ParentColor = False
    inherited bBCancel: TBitBtn
      Left = 279
    end
    inherited bbOK: TBitBtn
      Left = 199
    end
  end
end
