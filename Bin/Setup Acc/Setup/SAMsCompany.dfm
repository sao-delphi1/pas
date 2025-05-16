inherited fmSAMsCompany: TfmSAMsCompany
  Left = 319
  Top = 151
  Caption = 'Data Data Perusahaan'
  ClientHeight = 344
  ClientWidth = 580
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 580
    Height = 307
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      580
      307)
    object Label15: TLabel
      Left = 24
      Top = 39
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nama Perusahaan :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 24
      Top = 60
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Alamat  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 24
      Top = 148
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Phone :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 24
      Top = 168
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fax :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 24
      Top = 188
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'E-mail :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 0
      Top = 4
      Width = 581
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA-DATA PERUSAHAAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 208
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'NPWP :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 24
      Top = 228
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Kode NITKU :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 262
      Top = 228
      Width = 103
      Height = 13
      Caption = '6-digits. cth : '#39'000000'#39
      Transparent = True
    end
    object bbSave: TdxButton
      Tag = 3333
      Left = 153
      Top = 263
      Width = 78
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbSaveClick
      Caption = 'Simpan'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 232
      Top = 263
      Width = 78
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'Batal'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 2
      TabOrder = 1
    end
    object dxEdit2: TdxEdit
      Left = 152
      Top = 36
      Width = 333
      TabOrder = 2
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxMemo1: TdxMemo
      Left = 152
      Top = 56
      Width = 169
      TabOrder = 3
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
      WantReturns = False
      Height = 89
    end
    object dxEdit3: TdxEdit
      Left = 152
      Top = 144
      Width = 133
      TabOrder = 4
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxEdit4: TdxEdit
      Left = 152
      Top = 164
      Width = 133
      TabOrder = 5
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxEdit1: TdxEdit
      Left = 152
      Top = 184
      Width = 249
      TabOrder = 6
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxMemo2: TdxMemo
      Left = 320
      Top = 56
      Width = 209
      TabOrder = 7
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
      WantReturns = False
      Height = 89
    end
    object dxEdit5: TdxEdit
      Left = 152
      Top = 204
      Width = 249
      TabOrder = 8
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxEdit6: TdxEdit
      Left = 152
      Top = 224
      Width = 105
      TabOrder = 9
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
  end
  inherited paToolBar: TdxContainer
    Width = 580
    inherited sbLast: TSpeedButton
      Left = 552
    end
    inherited sbNext: TSpeedButton
      Left = 529
    end
    inherited sbPrev: TSpeedButton
      Left = 506
    end
    inherited sbFirst: TSpeedButton
      Left = 483
    end
    inherited sbPeriod: TSpeedButton
      Left = 455
    end
    inherited BvlPeriod: TBevel
      Left = 209
    end
    inherited laPeriod: TLabel
      Left = 213
    end
  end
end
