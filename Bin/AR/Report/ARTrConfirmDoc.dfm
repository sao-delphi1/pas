inherited fmARTrConfirmDoc: TfmARTrConfirmDoc
  Left = 480
  Top = 352
  Caption = 'Konfirmasi Dokumen'
  ClientHeight = 257
  ClientWidth = 237
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 8
    Top = 50
    Width = 81
    Height = 16
    Caption = 'Nomor Invoice'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 74
    Width = 44
    Height = 16
    Caption = 'Tanggal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [3]
    Left = 96
    Top = 50
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [4]
    Left = 96
    Top = 74
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [5]
    Left = 104
    Top = 50
    Width = 81
    Height = 16
    Caption = 'Nomor Invoice'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [6]
    Left = 104
    Top = 74
    Width = 44
    Height = 16
    Caption = 'Tanggal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [7]
    Left = 8
    Top = 95
    Width = 34
    Height = 16
    Caption = 'BAST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [8]
    Left = 8
    Top = 118
    Width = 18
    Height = 16
    Caption = 'SP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [9]
    Left = 96
    Top = 95
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [10]
    Left = 96
    Top = 140
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [11]
    Left = 9
    Top = 162
    Width = 65
    Height = 16
    Caption = 'Bupot PPH'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [12]
    Left = 9
    Top = 189
    Width = 65
    Height = 16
    Caption = 'Bupot PPN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [13]
    Left = 97
    Top = 160
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel [14]
    Left = 97
    Top = 187
    Width = 4
    Height = 16
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 237
    inherited sbLast: TSpeedButton
      Left = 200
    end
    inherited sbNext: TSpeedButton
      Left = 173
    end
    inherited sbPrev: TSpeedButton
      Left = 146
    end
    inherited sbFirst: TSpeedButton
      Left = 119
    end
    inherited sbPeriod: TSpeedButton
      Left = 93
    end
    inherited BvlPeriod: TBevel
      Left = -153
    end
    inherited laPeriod: TLabel
      Left = -141
    end
  end
  object bbSimpanDetil: TdxButton [16]
    Tag = 4444
    Left = 105
    Top = 229
    Width = 84
    Height = 22
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbSimpanDetilClick
    Caption = 'Update'
    TabOrder = 1
    TabStop = False
  end
  object dxImageEdit1: TdxImageEdit [17]
    Left = 104
    Top = 94
    Width = 121
    TabOrder = 2
    Descriptions.Strings = (
      'Sudah Terima'
      'Belum Terima')
    ImageIndexes.Strings = (
      '0'
      '1')
    Values.Strings = (
      'Y'
      'T')
  end
  object dxImageEdit2: TdxImageEdit [18]
    Left = 104
    Top = 138
    Width = 121
    TabOrder = 3
    Descriptions.Strings = (
      'Sudah Terima'
      'Belum Terima')
    ImageIndexes.Strings = (
      '0'
      '1')
    Values.Strings = (
      'Y'
      'T')
  end
  object dxImageEdit3: TdxImageEdit [19]
    Left = 104
    Top = 160
    Width = 121
    TabOrder = 4
    Descriptions.Strings = (
      'Sudah Terima'
      'Belum Terima')
    ImageIndexes.Strings = (
      '0'
      '1')
    Values.Strings = (
      'Y'
      'T')
  end
  object dxImageEdit4: TdxImageEdit [20]
    Left = 104
    Top = 182
    Width = 121
    TabOrder = 5
    Descriptions.Strings = (
      'Sudah Terima'
      'Belum Terima')
    ImageIndexes.Strings = (
      '0'
      '1')
    Values.Strings = (
      'Y'
      'T')
  end
  object dxBlobEdit1: TdxBlobEdit [21]
    Left = 104
    Top = 116
    Width = 121
    TabOrder = 6
    BlobText = 'dxBlobEdit1'
  end
  object dxBlobEdit2: TdxBlobEdit [22]
    Left = 104
    Top = 204
    Width = 121
    TabOrder = 7
    BlobText = 'dxBlobEdit1'
  end
end
