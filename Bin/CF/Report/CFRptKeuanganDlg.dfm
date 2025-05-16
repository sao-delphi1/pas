inherited fmCFRptKeuanganDlg: TfmCFRptKeuanganDlg
  Left = 303
  Top = 213
  Caption = ''
  ClientHeight = 216
  ClientWidth = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 369
    inherited laTitle: TLabel
      Width = 232
      Caption = 'Laporan Keuangan KAS'
    end
  end
  inherited paCenter: TPanel
    Width = 369
    Height = 134
    object GroupBox1: TGroupBox
      Left = 42
      Top = 7
      Width = 293
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 126
        Top = 24
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
        Left = 25
        Top = 18
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 177
        Top = 18
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbJenis: TRadioGroup
      Left = 40
      Top = 64
      Width = 297
      Height = 49
      Caption = '[ Valuta ]'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'ALL'
        'IDR'
        'USD')
      ParentCtl3D = False
      TabOrder = 1
    end
    object rbTipe: TRadioGroup
      Left = 40
      Top = 192
      Width = 297
      Height = 49
      Caption = '[ Tipe Transaksi ]'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'SEMUA'
        'COUNTER'
        'BACK OFFICE')
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
    end
  end
  inherited paBottom: TPanel
    Top = 175
    Width = 369
    inherited bbPreview: TBitBtn
      Left = 143
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 217
    end
    inherited bbExit: TBitBtn
      Left = 291
    end
  end
end
