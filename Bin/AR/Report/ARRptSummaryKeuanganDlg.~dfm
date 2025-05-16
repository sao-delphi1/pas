inherited fmRptSummaryKeuangan: TfmRptSummaryKeuangan
  Left = 474
  Top = 246
  Caption = ''
  ClientHeight = 223
  ClientWidth = 257
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 257
    inherited laTitle: TLabel
      Width = 209
      Caption = 'Kas Penjualan Harian'
    end
  end
  inherited paCenter: TPanel
    Width = 257
    Height = 141
    object GroupBox1: TGroupBox
      Left = 37
      Top = 15
      Width = 190
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 206
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
        Visible = False
      end
      object dt1: TdxDateEdit
        Left = 265
        Top = 18
        Width = 86
        TabOrder = 0
        Visible = False
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 50
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
      Left = 37
      Top = 73
      Width = 190
      Height = 50
      Caption = '[ Jenis Laporan ]'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Ringkasan'
        'Detail')
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  inherited paBottom: TPanel
    Top = 182
    Width = 257
    inherited bbPreview: TBitBtn
      Left = 31
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 105
    end
    inherited bbExit: TBitBtn
      Left = 179
    end
  end
end
