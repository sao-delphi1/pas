inherited fmSettingGudang: TfmSettingGudang
  Left = 320
  Top = 63
  Caption = 'Form Setting System'
  ClientHeight = 393
  ClientWidth = 528
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 528
    Height = 356
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object pcMain: TdxPageControl
      Left = 1
      Top = 1
      Width = 526
      Height = 354
      ActivePage = dxTabSheet1
      Align = alClient
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabStop = False
      TabWidth = 0
      object ts01: TdxTabSheet
        Caption = 'Gudang'
        DesignSize = (
          526
          331)
        object GroupBox2: TGroupBox
          Left = 9
          Top = 338
          Width = 505
          Height = 49
          Caption = '[ DEFAULT PELANGGAN ]'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label2: TLabel
            Left = 28
            Top = 21
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'COUNTER :'
          end
          object DBText3: TDBText
            Left = 322
            Top = 19
            Width = 175
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object dxDBButtonEdit3: TdxDBButtonEdit
            Left = 152
            Top = 17
            Width = 157
            TabOrder = 0
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'CustId'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit3ButtonClick
            ExistButtons = True
          end
        end
        object dxButton3: TdxButton
          Tag = 3333
          Left = 373
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 449
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = '&Batal (F4)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 2
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 13
          Width = 505
          Height = 226
          Caption = '[ DEFAULT GUDANG ]'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          object Label17: TLabel
            Left = 20
            Top = 25
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PEMBELIAN :'
          end
          object Label18: TLabel
            Left = 20
            Top = 51
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PENJUALAN :'
          end
          object DBText16: TDBText
            Left = 322
            Top = 25
            Width = 175
            Height = 17
            DataField = 'LDGPb'
            DataSource = dsMain
          end
          object DBText17: TDBText
            Left = 322
            Top = 51
            Width = 175
            Height = 17
            DataField = 'LDGPj'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 20
            Top = 75
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RETUR  :'
          end
          object Label23: TLabel
            Left = 20
            Top = 100
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PENGGANTI RETUR :'
          end
          object DBText21: TDBText
            Left = 322
            Top = 99
            Width = 175
            Height = 17
            DataField = 'LDGPR'
            DataSource = dsMain
          end
          object DBText22: TDBText
            Left = 322
            Top = 75
            Width = 175
            Height = 17
            DataField = 'LDGR'
            DataSource = dsMain
          end
          object DBText23: TDBText
            Left = 322
            Top = 123
            Width = 175
            Height = 17
            DataField = 'LDGC'
            DataSource = dsMain
          end
          object Label24: TLabel
            Left = 20
            Top = 124
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'COUNTER :'
          end
          object Label19: TLabel
            Left = 20
            Top = 148
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TRANSFER :'
          end
          object DBText18: TDBText
            Left = 322
            Top = 146
            Width = 175
            Height = 17
            DataField = 'LDGTr'
            DataSource = dsMain
          end
          object dxDBButtonEdit15: TdxDBButtonEdit
            Left = 152
            Top = 22
            Width = 157
            TabOrder = 0
            DataField = 'DGPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit15ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit16: TdxDBButtonEdit
            Left = 152
            Top = 47
            Width = 157
            TabOrder = 1
            DataField = 'DGPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit16ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit18: TdxDBButtonEdit
            Left = 152
            Top = 71
            Width = 157
            TabOrder = 2
            DataField = 'DGR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit9ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit19: TdxDBButtonEdit
            Left = 152
            Top = 96
            Width = 157
            TabOrder = 3
            DataField = 'DGPR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit22: TdxDBButtonEdit
            Left = 152
            Top = 120
            Width = 157
            TabOrder = 4
            DataField = 'DGC'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit17: TdxDBButtonEdit
            Left = 152
            Top = 144
            Width = 157
            TabOrder = 5
            DataField = 'DGTr'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit17ButtonClick
            ExistButtons = True
          end
        end
      end
      object ts02: TdxTabSheet
        Caption = 'Printer'
        DesignSize = (
          526
          331)
        object GroupBox5: TGroupBox
          Left = 9
          Top = 15
          Width = 505
          Height = 54
          Caption = '[ DEFAULT PRINTER ]'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label14: TLabel
            Left = 18
            Top = 22
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'BACK OFFICE :'
          end
          object cmbPrinterBackOffice: TdxDBPickEdit
            Left = 104
            Top = 18
            Width = 388
            TabOrder = 0
            DataField = 'sDPB'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 9
          Top = 75
          Width = 235
          Height = 43
          Caption = '[ Hasil Output ]'
          Columns = 2
          Ctl3D = False
          DataField = 'Cetak'
          DataSource = dsMain
          Items.Strings = (
            'Preview'
            'Langsung Cetak')
          ParentCtl3D = False
          TabOrder = 1
          Values.Strings = (
            '0'
            '1')
        end
        object dxButton5: TdxButton
          Tag = 3333
          Left = 373
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 2
        end
        object dxButton6: TdxButton
          Tag = 4444
          Left = 449
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = '&Batal (F4)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 3
        end
      end
      object ts03: TdxTabSheet
        Caption = 'Rekening'
        DesignSize = (
          526
          331)
        object dxButton1: TdxButton
          Tag = 3333
          Left = 373
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 0
        end
        object dxButton2: TdxButton
          Tag = 4444
          Left = 449
          Top = 300
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = '&Batal (F4)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
        end
        object GroupBox8: TGroupBox
          Left = 7
          Top = 4
          Width = 519
          Height = 285
          Caption = '[ DEFAULT REKNING ]'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label28: TLabel
            Left = 11
            Top = 40
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'HUTANG DAGANG :'
          end
          object Label29: TLabel
            Left = 11
            Top = 18
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PIUTANG DAGANG :'
          end
          object DBText25: TDBText
            Left = 354
            Top = 40
            Width = 144
            Height = 13
            DataField = 'LDRPb'
            DataSource = dsMain
          end
          object DBText26: TDBText
            Left = 354
            Top = 18
            Width = 144
            Height = 13
            DataField = 'LDRPj'
            DataSource = dsMain
          end
          object Label31: TLabel
            Left = 11
            Top = 62
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'KAS :'
          end
          object Label32: TLabel
            Left = 11
            Top = 84
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'UANG MUKA PENJUALAN :'
          end
          object DBText27: TDBText
            Left = 354
            Top = 62
            Width = 144
            Height = 13
            DataField = 'LDRKas'
            DataSource = dsMain
          end
          object DBText28: TDBText
            Left = 354
            Top = 84
            Width = 144
            Height = 13
            DataField = 'LDGRBi'
            DataSource = dsMain
          end
          object Label33: TLabel
            Left = 11
            Top = 105
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PENJUALAN :'
          end
          object Label34: TLabel
            Left = 11
            Top = 126
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PEMBELIAN :'
          end
          object DBText29: TDBText
            Left = 353
            Top = 105
            Width = 144
            Height = 13
            DataField = 'LDGRPj'
            DataSource = dsMain
          end
          object DBText30: TDBText
            Left = 353
            Top = 126
            Width = 144
            Height = 13
            DataField = 'LRekPembelian'
            DataSource = dsMain
          end
          object Label1: TLabel
            Left = 11
            Top = 147
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PPN Masukan :'
          end
          object Label4: TLabel
            Left = 11
            Top = 169
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PPN Keluaran :'
          end
          object DBText1: TDBText
            Left = 353
            Top = 147
            Width = 144
            Height = 13
            DataField = 'LDGRPLL'
            DataSource = dsMain
          end
          object DBText2: TDBText
            Left = 353
            Top = 169
            Width = 144
            Height = 13
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object Label3: TLabel
            Left = 11
            Top = 190
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PPH Pasal 4 Ayat 2 :'
          end
          object DBText4: TDBText
            Left = 353
            Top = 190
            Width = 144
            Height = 13
            DataField = 'LDGS'
            DataSource = dsMain
          end
          object Label5: TLabel
            Left = 11
            Top = 211
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Laba Berjalan :'
          end
          object DBText5: TDBText
            Left = 353
            Top = 211
            Width = 144
            Height = 13
            DataField = 'LDGK'
            DataSource = dsMain
          end
          object Label6: TLabel
            Left = 11
            Top = 232
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PERSEDIAAN :'
          end
          object DBText6: TDBText
            Left = 353
            Top = 232
            Width = 144
            Height = 13
            DataField = 'LPersediaan'
            DataSource = dsMain
          end
          object Label7: TLabel
            Left = 11
            Top = 253
            Width = 170
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'HPP :'
          end
          object DBText7: TDBText
            Left = 353
            Top = 253
            Width = 144
            Height = 13
            DataField = 'LHPP'
            DataSource = dsMain
          end
          object dxDBButtonEdit24: TdxDBButtonEdit
            Left = 194
            Top = 14
            Width = 157
            TabOrder = 0
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DRPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit10ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit25: TdxDBButtonEdit
            Left = 194
            Top = 36
            Width = 157
            TabOrder = 1
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DRPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit25ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit26: TdxDBButtonEdit
            Left = 194
            Top = 58
            Width = 157
            TabOrder = 2
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DRKas'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit11ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit27: TdxDBButtonEdit
            Left = 194
            Top = 80
            Width = 157
            TabOrder = 3
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGRBi'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit12ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit28: TdxDBButtonEdit
            Left = 194
            Top = 101
            Width = 157
            TabOrder = 4
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGRPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit28ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit29: TdxDBButtonEdit
            Left = 194
            Top = 122
            Width = 157
            TabOrder = 5
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGRPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit14ButtonClick
            ExistButtons = True
          end
          object ButtonPPNMasukan: TdxDBButtonEdit
            Left = 194
            Top = 143
            Width = 157
            TabOrder = 6
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGRPLL'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = ButtonPPNMasukanButtonClick
            ExistButtons = True
          end
          object buttonPPNKeluaran: TdxDBButtonEdit
            Left = 194
            Top = 165
            Width = 157
            TabOrder = 7
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'CustId'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = buttonPPNKeluaranButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit1: TdxDBButtonEdit
            Left = 194
            Top = 186
            Width = 157
            TabOrder = 8
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGS'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit1ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 194
            Top = 207
            Width = 157
            TabOrder = 9
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'DGK'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit2ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit4: TdxDBButtonEdit
            Left = 194
            Top = 228
            Width = 157
            TabOrder = 10
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'sPersediaan'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit4ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit5: TdxDBButtonEdit
            Left = 194
            Top = 249
            Width = 157
            TabOrder = 11
            OnKeyPress = dxDBButtonEdit2KeyPress
            DataField = 'sHPP'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit5ButtonClick
            ExistButtons = True
          end
        end
      end
      object dxTabSheet1: TdxTabSheet
        Caption = 'Others'
        DesignSize = (
          526
          331)
        object Label8: TLabel
          Left = 8
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Nama :'
        end
        object Label9: TLabel
          Left = 8
          Top = 32
          Width = 22
          Height = 13
          Caption = 'Ttd :'
        end
        object Label10: TLabel
          Left = 304
          Top = 8
          Width = 28
          Height = 13
          Caption = 'PPN :'
        end
        object Label11: TLabel
          Left = 400
          Top = 8
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label12: TLabel
          Left = 276
          Top = 27
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lock Date :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBImage1: TDBImage
          Left = 52
          Top = 30
          Width = 169
          Height = 168
          Cursor = crHandPoint
          DataField = 'ttd'
          DataSource = dsMain
          Stretch = True
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 53
          Top = 205
          Width = 84
          Height = 25
          Cursor = crHandPoint
          Hint = 'Ubah Logo Perusahaan'
          Caption = '&Image'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          NumGlyphs = 2
        end
        object BitBtn2: TBitBtn
          Left = 137
          Top = 205
          Width = 84
          Height = 25
          Cursor = crHandPoint
          Hint = 'Hapus Logo Perusahaan'
          Caption = '&Delete'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            9E050000424D9E05000000000000360400002800000012000000120000000100
            08000000000068010000120B0000120B00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
            FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
            FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
            FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
            FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
            CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
            CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
            CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
            CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
            990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
            990000CC9900FF999900CC99990099999900669999003399990000999900FF66
            9900CC66990099669900666699003366990000669900FF339900CC3399009933
            9900663399003333990000339900FF009900CC00990099009900660099003300
            990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
            6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
            6600669966003399660000996600FF666600CC66660099666600666666003366
            660000666600FF336600CC33660099336600663366003333660000336600FF00
            6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
            330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
            330000CC3300FF993300CC99330099993300669933003399330000993300FF66
            3300CC66330099663300666633003366330000663300FF333300CC3333009933
            3300663333003333330000333300FF003300CC00330099003300660033003300
            330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
            000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
            000000990000FF660000CC66000099660000666600000066000033660000FF33
            0000CC33000099330000663300003333000000330000CC000000990000006600
            0000330000000000DD000000BB000000AA000000880000007700000055000000
            44000000220000DD000000BB000000AA00000088000000770000005500000044
            000000220000DDDDDD0055555500777777007777770044444400222222001111
            110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
            32323232323232323232323200003232323232323200DEDEDE00323232323232
            000032323232323232DEDDDD7272323232323232000032323232323200DDDBDB
            DB720032323232320000323232323232004EF9F9DB7200323232323200003232
            3232323232DBF9F94EDE323232323232000032323232323232000000DE003232
            3232323200003232323232323232DBDE00323232323232320000323232323232
            3200DBDEDE3232323232323200003232323232323200DBDBDE32323232323232
            00003232323232323200DBDBDE00323232323232000032323232323232DBDBDB
            DEDE323232323232000032323232323200DBDBDBDBDE00323232323200003232
            3232323200DBDBDB1DDE0032323232320000323232323232001DDBDBDBDBDE32
            323232320000323232323232DBDBDBDBDBDBDB32323232320000323232323232
            32DBDBDBDB003232323232320000323232323232323200003232323232323232
            0000}
        end
        object dxDBEdit1: TdxDBEdit
          Left = 52
          Top = 4
          Width = 169
          Color = clWhite
          TabOrder = 3
          TabStop = False
          DataField = 'nama'
          DataSource = dsMain
          ReadOnly = False
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxButton7: TdxButton
          Tag = 3333
          Left = 53
          Top = 236
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 4
        end
        object dxButton8: TdxButton
          Tag = 4444
          Left = 129
          Top = 236
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = '&Batal (F4)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 5
        end
        object dxDBEdit2: TdxDBEdit
          Left = 340
          Top = 4
          Width = 53
          Color = clWhite
          TabOrder = 6
          TabStop = False
          DataField = 'PPN'
          DataSource = dsMain
          ReadOnly = False
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 340
          Top = 24
          Width = 114
          TabOrder = 7
          DataField = 'FgLockDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 528
    inherited sbLast: TSpeedButton
      Left = 500
    end
    inherited sbNext: TSpeedButton
      Left = 477
    end
    inherited sbPrev: TSpeedButton
      Left = 454
    end
    inherited sbFirst: TSpeedButton
      Left = 431
    end
    inherited sbPeriod: TSpeedButton
      Left = 403
    end
    inherited BvlPeriod: TBevel
      Left = 157
    end
    inherited laPeriod: TLabel
      Left = 161
    end
  end
  inherited quMain: TADOQuery
    AfterPost = quMainAfterPost
    SQL.Strings = (
      'Select * FROM SAMSSet')
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'CustId'
      Size = 50
      Lookup = True
    end
    object quMainLDGPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPb'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPb'
      Size = 50
      Lookup = True
    end
    object quMainLDGPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPj'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPj'
      Size = 50
      Lookup = True
    end
    object quMainDGPb: TStringField
      FieldName = 'DGPb'
      Size = 30
    end
    object quMainDGPj: TStringField
      FieldName = 'DGPj'
      Size = 30
    end
    object quMainCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object quMainSalesId: TStringField
      FieldName = 'SalesId'
      Size = 30
    end
    object quMainLsalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LsalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesId'
      Size = 50
      Lookup = True
    end
    object quMainDGTr: TStringField
      FieldName = 'DGTr'
      Size = 50
    end
    object quMainDGK: TStringField
      FieldName = 'DGK'
      Size = 50
    end
    object quMainDGS: TStringField
      FieldName = 'DGS'
      Size = 50
    end
    object quMainLDGTr: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGTr'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGTr'
      Size = 50
      Lookup = True
    end
    object quMainLDGK: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGK'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekID'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGK'
      Size = 50
      Lookup = True
    end
    object quMainLDGS: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGS'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGS'
      Size = 50
      Lookup = True
    end
    object quMainDGR: TStringField
      FieldName = 'DGR'
      Size = 50
    end
    object quMainDGPR: TStringField
      FieldName = 'DGPR'
      Size = 50
    end
    object quMainLDGR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGR'
      Size = 50
      Lookup = True
    end
    object quMainLDGPR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPR'
      Size = 50
      Lookup = True
    end
    object quMainDRPb: TStringField
      FieldName = 'DRPb'
      Size = 30
    end
    object quMainDRPj: TStringField
      FieldName = 'DRPj'
      Size = 30
    end
    object quMainLDRPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPb'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPb'
      Size = 50
      Lookup = True
    end
    object quMainLDRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPj'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGRPb: TStringField
      FieldName = 'DGRPb'
      Size = 30
    end
    object quMainDGRPj: TStringField
      FieldName = 'DGRPj'
      Size = 30
    end
    object quMainLDGRPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPb'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'DGRPb'
      Size = 50
      Lookup = True
    end
    object quMainLDGRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPj'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGC: TStringField
      FieldName = 'DGC'
      Size = 50
    end
    object quMainLDGC: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGC'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGC'
      Size = 50
      Lookup = True
    end
    object quMainsDPB: TStringField
      FieldName = 'sDPB'
      Size = 50
    end
    object quMainDGRBi: TStringField
      FieldName = 'DGRBi'
      Size = 30
    end
    object quMainLDGRBi: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRBi'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRBi'
      Size = 80
      Lookup = True
    end
    object quMainDGRPLL: TStringField
      FieldName = 'DGRPLL'
      Size = 30
    end
    object quMainLDGRPLL: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPLL'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPLL'
      Size = 80
      Lookup = True
    end
    object quMainCetak: TStringField
      FieldName = 'Cetak'
      Size = 1
    end
    object quMainDRPc: TStringField
      FieldName = 'DRPc'
      Size = 50
    end
    object quMainLDRPc: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPc'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPc'
      Size = 50
      Lookup = True
    end
    object quMainDRKas: TStringField
      FieldName = 'DRKas'
      Size = 50
    end
    object quMainLDRKas: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRKas'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRKas'
      Size = 100
      Lookup = True
    end
    object quMainLRekPembelian: TStringField
      FieldKind = fkLookup
      FieldName = 'LRekPembelian'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPb'
      Size = 100
      Lookup = True
    end
    object quMainsPersediaan: TStringField
      FieldName = 'sPersediaan'
      Size = 50
    end
    object quMainsHPP: TStringField
      FieldName = 'sHPP'
      Size = 50
    end
    object quMainLPersediaan: TStringField
      FieldKind = fkLookup
      FieldName = 'LPersediaan'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'sPersediaan'
      Size = 50
      Lookup = True
    end
    object quMainLHPP: TStringField
      FieldKind = fkLookup
      FieldName = 'LHPP'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'sHPP'
      Size = 50
      Lookup = True
    end
    object quMainttd: TBlobField
      FieldName = 'ttd'
    end
    object quMainnama: TStringField
      FieldName = 'nama'
      Size = 50
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainFgLockDate: TDateTimeField
      FieldName = 'FgLockDate'
    end
  end
  object quCust: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsCustomer')
    Left = 12
    Top = 464
  end
  object quWareHouse: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM INMsWareHouse')
    Left = 40
    Top = 464
  end
  object quSales: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsSales')
    Left = 68
    Top = 464
  end
  object quRek: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsRekening')
    Left = 96
    Top = 464
  end
  object quGroupRek: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsGroupRek')
    Left = 124
    Top = 464
  end
  object quSetting: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SysReport')
    Left = 160
    Top = 469
    object quSettingCompNameFontName: TStringField
      FieldName = 'CompNameFontName'
      Size = 50
    end
    object quSettingCompNameFontSize: TLargeintField
      FieldName = 'CompNameFontSize'
    end
    object quSettingLineLeftVisible: TStringField
      FieldName = 'LineLeftVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineRightVisible: TStringField
      FieldName = 'LineRightVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineSeparatorVisible: TStringField
      FieldName = 'LineSeparatorVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingClFooter: TLargeintField
      FieldName = 'ClFooter'
    end
    object quSettingClTitle: TLargeintField
      FieldName = 'ClTitle'
    end
    object quSettingRptTitleFontName: TStringField
      FieldName = 'RptTitleFontName'
      Size = 50
    end
    object quSettingRptTitleFontSize: TLargeintField
      FieldName = 'RptTitleFontSize'
    end
  end
  object dsSetting: TDataSource
    DataSet = quSetting
    Left = 189
    Top = 469
  end
  object odLogo: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 228
    Top = 70
  end
end
