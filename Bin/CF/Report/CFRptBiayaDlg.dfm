inherited fmCFRptBiayaDlg: TfmCFRptBiayaDlg
  Left = 319
  Top = 287
  Caption = ''
  ClientHeight = 202
  ClientWidth = 342
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 342
    inherited laTitle: TLabel
      Width = 141
      Caption = 'Laporan Biaya'
    end
  end
  inherited paCenter: TPanel
    Width = 342
    Height = 120
    object GroupBox1: TGroupBox
      Left = 42
      Top = 7
      Width = 263
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 109
        Top = 22
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
        Left = 8
        Top = 18
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 160
        Top = 18
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RbJenis: TRadioGroup
      Left = 41
      Top = 66
      Width = 215
      Height = 48
      Caption = '[ Jenis Laporan ]'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Detail'
        'Ringkasan')
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  inherited paBottom: TPanel
    Top = 161
    Width = 342
    inherited bbPreview: TBitBtn
      Left = 116
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 190
    end
    inherited bbExit: TBitBtn
      Left = 264
    end
  end
end
