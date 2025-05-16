inherited fmINRptAdjustmentDlg: TfmINRptAdjustmentDlg
  Left = 248
  Top = 126
  Caption = ''
  ClientHeight = 173
  ClientWidth = 308
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 308
    inherited laTitle: TLabel
      Width = 285
      Caption = 'Laporan Stok Opname Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 308
    Height = 91
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
      Width = 269
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
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
        Left = 21
        Top = 14
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
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
    Width = 308
    inherited bbPreview: TBitBtn
      Left = 82
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 156
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 230
    end
  end
end
