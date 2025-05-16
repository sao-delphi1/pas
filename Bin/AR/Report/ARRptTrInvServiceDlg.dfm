inherited fmARRptInvServiceDlg: TfmARRptInvServiceDlg
  Left = 224
  Top = 115
  Caption = ''
  ClientHeight = 155
  ClientWidth = 303
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 303
    inherited laTitle: TLabel
      Width = 234
      Caption = 'Laporan Invoice Service '
    end
  end
  inherited paCenter: TPanel
    Width = 303
    Height = 73
    object GroupBox1: TGroupBox
      Left = 12
      Top = 6
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
        Width = 85
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
    Top = 114
    Width = 303
    inherited bbPreview: TBitBtn
      Left = 77
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 151
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 225
    end
  end
end
