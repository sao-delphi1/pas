inherited fmARRptBukuBesarPiutangDlg: TfmARRptBukuBesarPiutangDlg
  Left = 218
  Top = 173
  Caption = ''
  ClientHeight = 167
  ClientWidth = 317
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 317
    inherited laTitle: TLabel
      Width = 277
      Caption = 'Laporan Buku Besar Piutang'
    end
  end
  inherited paCenter: TPanel
    Width = 317
    Height = 85
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
      Width = 289
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 130
        Top = 18
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 29
        Top = 14
        Width = 85
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 181
        Top = 14
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  inherited paBottom: TPanel
    Top = 126
    Width = 317
    inherited bbPreview: TBitBtn
      Left = 91
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 165
    end
    inherited bbExit: TBitBtn
      Left = 239
    end
  end
  inherited quAct: TADOQuery
    Left = 240
  end
  inherited dsAct: TDataSource
    Left = 268
  end
end
