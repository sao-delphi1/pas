inherited fmAPRptTerimaBarangDlg: TfmAPRptTerimaBarangDlg
  Left = 248
  Top = 126
  Caption = ''
  ClientHeight = 173
  ClientWidth = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 361
    inherited laTitle: TLabel
      Width = 336
      Caption = 'Laporan Konsinyasi Terima Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 361
    Height = 91
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
      Width = 333
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 150
        Top = 20
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
        Left = 49
        Top = 14
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 201
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
    Top = 132
    Width = 361
    inherited bbPreview: TBitBtn
      Left = 135
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 209
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 283
    end
  end
end
