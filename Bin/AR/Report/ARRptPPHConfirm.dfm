inherited fmARRptPPHConfirm: TfmARRptPPHConfirm
  Left = 482
  Top = 239
  Caption = 'Update Bukti Potong'
  ClientHeight = 200
  ClientWidth = 358
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 8
    Top = 48
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
    Top = 72
    Width = 75
    Height = 16
    Caption = 'Kode Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [3]
    Left = 96
    Top = 48
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
    Top = 72
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
    Top = 48
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
    Top = 72
    Width = 75
    Height = 16
    Caption = 'Kode Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [7]
    Left = 8
    Top = 98
    Width = 51
    Height = 16
    Caption = 'Tgl Bukti'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [8]
    Left = 8
    Top = 122
    Width = 72
    Height = 16
    Caption = 'Nomor Bukti'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [9]
    Left = 96
    Top = 96
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
    Top = 120
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
    Width = 358
    inherited sbLast: TSpeedButton
      Left = 321
    end
    inherited sbNext: TSpeedButton
      Left = 294
    end
    inherited sbPrev: TSpeedButton
      Left = 267
    end
    inherited sbFirst: TSpeedButton
      Left = 240
    end
    inherited sbPeriod: TSpeedButton
      Left = 214
    end
    inherited BvlPeriod: TBevel
      Left = -32
    end
    inherited laPeriod: TLabel
      Left = -28
    end
  end
  object bbSimpanDetil: TdxButton [12]
    Tag = 4444
    Left = 105
    Top = 146
    Width = 85
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
  object Edit1: TEdit [13]
    Left = 104
    Top = 120
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object dt1: TdxDateEdit [14]
    Left = 105
    Top = 95
    Width = 110
    TabOrder = 3
    Date = -700000
    SaveTime = False
    UseEditMask = True
    StoredValues = 4
  end
  object CheckBox1: TCheckBox [15]
    Left = 104
    Top = 173
    Width = 217
    Height = 17
    Caption = 'Update Bukti Potong belum diterima saja'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
end
