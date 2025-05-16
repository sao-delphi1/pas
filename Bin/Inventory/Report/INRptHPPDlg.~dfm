inherited fmINRptHppDlg: TfmINRptHppDlg
  Left = 698
  Top = 491
  Caption = ''
  ClientHeight = 184
  ClientWidth = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 288
    inherited laTitle: TLabel
      Width = 262
      Caption = 'Laporan Persediaan Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 288
    Height = 102
    object GroupBox2: TGroupBox
      Left = 12
      Top = 12
      Width = 253
      Height = 77
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object dxDateEdit1: TdxDateEdit
        Left = 399
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dxTahun: TdxSpinEdit
        Left = 150
        Top = 31
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxTahunKeyPress
        StyleController = SCEdit
      end
      object dxBulan: TdxImageEdit
        Left = 17
        Top = 31
        Width = 134
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'dxBulan'
        OnKeyPress = dxBulanKeyPress
        StyleController = SCEdit
        Descriptions.Strings = (
          'January'
          'February'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'July'
          'Agustus'
          'September'
          'Oktober'
          'November'
          'Desember')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 104
      Width = 181
      Height = 53
      Caption = '[ Periode ]'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      object dt1: TdxDateEdit
        Left = 49
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  inherited paBottom: TPanel
    Top = 143
    Width = 288
    inherited bbPreview: TBitBtn
      Left = 62
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 136
    end
    inherited bbExit: TBitBtn
      Left = 210
    end
  end
  object ActionList: TActionList
    Left = 228
    Top = 8
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = bbPreviewClick
    end
    object ActSearch: TAction
      Category = 'Data'
      Caption = 'CARI (F2)'
      ShortCut = 113
    end
  end
end
