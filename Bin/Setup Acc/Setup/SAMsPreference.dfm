inherited fmSAMsPreference: TfmSAMsPreference
  Left = 309
  Top = 136
  Action = ActFirst
  Caption = ''
  ClientWidth = 606
  OnClick = ActFirstExecute
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 606
    inherited sbLast: TSpeedButton
      Left = 578
    end
    inherited sbNext: TSpeedButton
      Left = 555
    end
    inherited sbPrev: TSpeedButton
      Left = 532
    end
    inherited sbFirst: TSpeedButton
      Left = 509
    end
    inherited sbPeriod: TSpeedButton
      Left = 481
    end
    inherited BvlPeriod: TBevel
      Left = 235
    end
    inherited laPeriod: TLabel
      Left = 239
    end
  end
  object dxPageControl1: TdxPageControl [1]
    Left = 0
    Top = 30
    Width = 606
    Height = 513
    ActivePage = dxTabSheet1
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 1
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTabSheet1: TdxTabSheet
      Caption = 'General Ledger'
      object PCGL: TdxPageControl
        Left = 0
        Top = 0
        Width = 606
        Height = 490
        ActivePage = dxTabSheet6
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
        TabWidth = 0
        object dxTabSheet4: TdxTabSheet
          Caption = 'Jurnal'
          OnShow = dxTabSheet4Show
          DesignSize = (
            606
            467)
          object GroupBox3: TGroupBox
            Left = 6
            Top = 15
            Width = 580
            Height = 61
            Caption = '[ Jurnal Kas Masuk ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object cbKasMasuk: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbKasMasukChange
            end
            object cbKasMasukName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbKasMasukNameChange
            end
          end
          object GroupBox4: TGroupBox
            Left = 6
            Top = 80
            Width = 580
            Height = 61
            Caption = '[ Jurnal Kas Keluar ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object cbKasKeluar: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbKasKeluarChange
            end
            object cbKasKeluarName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbKasKeluarNameChange
            end
          end
          object GroupBox5: TGroupBox
            Left = 6
            Top = 145
            Width = 580
            Height = 61
            Caption = '[ Jurnal Bank Masuk ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            object cbBankMasuk: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbBankMasukChange
            end
            object cbBankMasukName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbBankMasukNameChange
            end
          end
          object GroupBox1: TGroupBox
            Left = 6
            Top = 210
            Width = 580
            Height = 61
            Caption = '[ Jurnal Bank Keluar ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            object cbBankKeluar: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbBankKeluarChange
            end
            object cbBankKeluarName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbBankKeluarNameChange
            end
          end
          object GroupBox2: TGroupBox
            Left = 6
            Top = 275
            Width = 580
            Height = 61
            Caption = '[ Jurnal Umum ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            object cbUmum: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbUmumChange
            end
            object cbUmumName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbUmumNameChange
            end
          end
          object bbSave: TdxButton
            Tag = 3333
            Left = 426
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbSaveClick
            Caption = 'Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 5
          end
          object bbCancel: TdxButton
            Tag = 4444
            Left = 510
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancelClick
            Caption = 'Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 6
          end
        end
        object dxTabSheet5: TdxTabSheet
          Caption = 'Rekening Jurnal'
          OnShow = dxTabSheet5Show
          DesignSize = (
            606
            467)
          object Label27: TLabel
            Left = 103
            Top = 39
            Width = 36
            Height = 13
            Caption = 'Valuta :'
            Visible = False
          end
          object Label28: TLabel
            Left = 32
            Top = 115
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Bank Masuk :'
          end
          object Label29: TLabel
            Left = 32
            Top = 137
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Bank Keluar :'
          end
          object DBText25: TDBText
            Left = 313
            Top = 116
            Width = 290
            Height = 14
            DataField = 'LCOABI'
            DataSource = dsGL
          end
          object DBText26: TDBText
            Left = 314
            Top = 137
            Width = 289
            Height = 16
            DataField = 'LCOABO'
            DataSource = dsGL
          end
          object Label30: TLabel
            Left = 32
            Top = 71
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Kas Masuk :'
          end
          object Label31: TLabel
            Left = 32
            Top = 93
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Kas Keluar :'
          end
          object DBText27: TDBText
            Left = 313
            Top = 71
            Width = 290
            Height = 14
            DataField = 'LCOACI'
            DataSource = dsGL
          end
          object DBText28: TDBText
            Left = 313
            Top = 93
            Width = 289
            Height = 13
            DataField = 'LCOACO'
            DataSource = dsGL
          end
          object Label32: TLabel
            Left = 32
            Top = 159
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Laba Selisih Kurs :'
          end
          object Label33: TLabel
            Left = 32
            Top = 181
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Rugi Selisih Kurs :'
          end
          object DBText29: TDBText
            Left = 313
            Top = 158
            Width = 290
            Height = 15
            DataField = 'LCOALKURS'
            DataSource = dsGL
          end
          object DBText30: TDBText
            Left = 313
            Top = 181
            Width = 290
            Height = 15
            DataField = 'LCOAPKURS'
            DataSource = dsGL
          end
          object bbSave1: TdxButton
            Tag = 3333
            Left = 281
            Top = 210
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbSave1Click
            Caption = '&Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 0
            TabStop = False
          end
          object bbCancel1: TdxButton
            Tag = 4444
            Left = 357
            Top = 210
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancel1Click
            Caption = '&Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 1
            TabStop = False
          end
          object cbValutaid: TComboBox
            Left = 149
            Top = 36
            Width = 156
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            BevelOuter = bvRaised
            Style = csDropDownList
            Color = clWhite
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 2
            OnChange = cbValutaidChange
            OnKeyPress = cbValutaidKeyPress
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 148
            Top = 67
            Width = 157
            TabOrder = 3
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COACI'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit2ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit1: TdxDBButtonEdit
            Left = 148
            Top = 89
            Width = 157
            TabOrder = 4
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COACO'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit1ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit3: TdxDBButtonEdit
            Left = 148
            Top = 111
            Width = 157
            TabOrder = 5
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COABI'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit3ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit4: TdxDBButtonEdit
            Left = 148
            Top = 133
            Width = 157
            TabOrder = 6
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COABO'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit4ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit5: TdxDBButtonEdit
            Left = 148
            Top = 155
            Width = 157
            TabOrder = 7
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COAPKURS'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit5ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit6: TdxDBButtonEdit
            Left = 148
            Top = 177
            Width = 157
            TabOrder = 8
            OnKeyPress = cbValutaidKeyPress
            DataField = 'COALKURS'
            DataSource = dsGL
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit6ButtonClick
            ExistButtons = True
          end
        end
        object dxTabSheet6: TdxTabSheet
          Caption = 'Rekening Neraca'
          OnShow = dxTabSheet6Show
          DesignSize = (
            606
            467)
          object Label36: TLabel
            Left = 24
            Top = 88
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Awal Pembukuan :'
          end
          object Label34: TLabel
            Left = 24
            Top = 113
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. R/L ditahan :'
          end
          object Label35: TLabel
            Left = 24
            Top = 134
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. R/L berjalan :'
          end
          object RLTahan: TLabel
            Left = 304
            Top = 112
            Width = 297
            Height = 13
            AutoSize = False
          end
          object RLJalan: TLabel
            Left = 303
            Top = 133
            Width = 298
            Height = 13
            AutoSize = False
          end
          object dtpAwal: TdxDateEdit
            Left = 148
            Top = 84
            Width = 121
            TabOrder = 0
            StyleController = SCEdit
            Date = -700000
          end
          object dxButton5: TdxButton
            Tag = 3333
            Left = 430
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = dxButton5Click
            Caption = 'Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 1
          end
          object dxButton6: TdxButton
            Tag = 4444
            Left = 510
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = dxButton6Click
            Caption = 'Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 2
          end
          object dxButtonEdit1: TdxButtonEdit
            Left = 148
            Top = 109
            Width = 153
            TabOrder = 3
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxButtonEdit1ButtonClick
            ExistButtons = True
          end
          object dxButtonEdit2: TdxButtonEdit
            Left = 148
            Top = 130
            Width = 153
            TabOrder = 4
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxButtonEdit2ButtonClick
            ExistButtons = True
          end
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Account Recievable'
      object dxPageControl3: TdxPageControl
        Left = 0
        Top = 0
        Width = 606
        Height = 490
        ActivePage = dxTabSheet9
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
        TabWidth = 0
        object dxTabSheet9: TdxTabSheet
          Caption = 'Jurnal'
          OnShow = dxTabSheet9Show
          DesignSize = (
            606
            467)
          object GroupBox9: TGroupBox
            Left = 6
            Top = 15
            Width = 580
            Height = 61
            Caption = '[ Jurnal Penjualan]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object cbPenjualan: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPenjualanChange
            end
            object cbPenjualanName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPenjualanNameChange
            end
          end
          object GroupBox10: TGroupBox
            Left = 6
            Top = 92
            Width = 580
            Height = 61
            Caption = '[ Jurnal Penerimaan Bank ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object cbPenerimaanBank: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPenerimaanBankChange
            end
            object cbPenerimaanBankName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPenerimaanBankNameChange
            end
          end
          object GroupBox11: TGroupBox
            Left = 6
            Top = 173
            Width = 580
            Height = 61
            Caption = '[ Jurnal Penerimaan Kas ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            object cbPenerimaanKas: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPenerimaanKasChange
            end
            object cbPenerimaanKasName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPenerimaanKasNameChange
            end
          end
          object dxButton3: TdxButton
            Tag = 3333
            Left = 430
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 3
          end
          object dxButton4: TdxButton
            Tag = 4444
            Left = 510
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancelClick
            Caption = 'Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 4
          end
        end
        object dxTabSheet10: TdxTabSheet
          Caption = 'Rekening Jurnal'
          OnShow = dxTabSheet10Show
          DesignSize = (
            606
            467)
          object Label1: TLabel
            Left = 107
            Top = 39
            Width = 36
            Height = 13
            Caption = 'Valuta :'
            Visible = False
          end
          object Label2: TLabel
            Left = 36
            Top = 115
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Penjualan :'
          end
          object Label3: TLabel
            Left = 24
            Top = 159
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Penerimaan Kas :'
          end
          object DBText1: TDBText
            Left = 317
            Top = 115
            Width = 285
            Height = 14
            DataField = 'LCOASale'
            DataSource = dsAR
          end
          object DBText2: TDBText
            Left = 317
            Top = 136
            Width = 284
            Height = 16
            DataField = 'LCOADiscount'
            DataSource = dsAR
          end
          object Label4: TLabel
            Left = 36
            Top = 71
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Piutang :'
          end
          object Label5: TLabel
            Left = 36
            Top = 93
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. PPN Keluar :'
          end
          object DBText3: TDBText
            Left = 317
            Top = 70
            Width = 285
            Height = 14
            DataField = 'LCOAAR'
            DataSource = dsAR
          end
          object DBText4: TDBText
            Left = 317
            Top = 93
            Width = 284
            Height = 13
            DataField = 'LCOATax'
            DataSource = dsAR
          end
          object Label6: TLabel
            Left = 24
            Top = 181
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Penerimaan Bank :'
          end
          object Label7: TLabel
            Left = 12
            Top = 203
            Width = 136
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Penerimaan Cek/Giro :'
          end
          object DBText5: TDBText
            Left = 317
            Top = 158
            Width = 285
            Height = 15
            DataField = 'LCOACashP'
            DataSource = dsAR
          end
          object DBText6: TDBText
            Left = 317
            Top = 180
            Width = 285
            Height = 15
            DataField = 'LCOABankP'
            DataSource = dsAR
          end
          object DBText7: TDBText
            Left = 317
            Top = 203
            Width = 285
            Height = 15
            DataField = 'LCOAChequeP'
            DataSource = dsAR
          end
          object Label8: TLabel
            Left = 24
            Top = 137
            Width = 123
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Diskon Penjualan :'
          end
          object bbSave2: TdxButton
            Tag = 3333
            Left = 313
            Top = 234
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbSave2Click
            Caption = '&Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 0
            TabStop = False
          end
          object bbCancel2: TdxButton
            Tag = 4444
            Left = 389
            Top = 234
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancel2Click
            Caption = '&Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 1
            TabStop = False
          end
          object cbValutaIdAR: TComboBox
            Left = 153
            Top = 36
            Width = 156
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            BevelOuter = bvRaised
            Style = csDropDownList
            Color = clWhite
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 2
            OnChange = cbValutaIdARChange
            OnKeyPress = cbValutaIdARKeyPress
          end
          object dxDBButtonEdit7: TdxDBButtonEdit
            Left = 152
            Top = 67
            Width = 157
            TabOrder = 3
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COAAR'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit7ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit8: TdxDBButtonEdit
            Left = 152
            Top = 89
            Width = 157
            TabOrder = 4
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COATax'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit9: TdxDBButtonEdit
            Left = 152
            Top = 111
            Width = 157
            TabOrder = 5
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COASale'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit9ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit10: TdxDBButtonEdit
            Left = 152
            Top = 133
            Width = 157
            TabOrder = 6
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COADiscount'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit10ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit11: TdxDBButtonEdit
            Left = 152
            Top = 155
            Width = 157
            TabOrder = 7
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COACashP'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit11ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit12: TdxDBButtonEdit
            Left = 152
            Top = 177
            Width = 157
            TabOrder = 8
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COABankP'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit12ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit13: TdxDBButtonEdit
            Left = 152
            Top = 199
            Width = 157
            TabOrder = 9
            OnKeyPress = cbValutaIdARKeyPress
            DataField = 'COAChequeP'
            DataSource = dsAR
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
        end
      end
    end
    object dxTabSheet3: TdxTabSheet
      Caption = 'Account Payable'
      object dxPageControl2: TdxPageControl
        Left = 0
        Top = 0
        Width = 606
        Height = 490
        ActivePage = dxTabSheet8
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
        TabWidth = 0
        object dxTabSheet7: TdxTabSheet
          Caption = 'Jurnal'
          OnShow = dxTabSheet7Show
          DesignSize = (
            606
            467)
          object GroupBox6: TGroupBox
            Left = 6
            Top = 15
            Width = 580
            Height = 61
            Caption = '[ Jurnal Pembelian ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object cbPembelian: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPembelianChange
            end
            object cbPembelianName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPembelianNameChange
            end
          end
          object GroupBox7: TGroupBox
            Left = 6
            Top = 92
            Width = 580
            Height = 61
            Caption = '[ Jurnal Pengeluaran Bank ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object cbPengeluaranBank: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPengeluaranBankChange
            end
            object cbPengeluaranBankName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPengeluaranBankNameChange
            end
          end
          object GroupBox8: TGroupBox
            Left = 6
            Top = 173
            Width = 580
            Height = 61
            Caption = '[ Jurnal Pengeluaran Kas ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            object cbPengeluaranKas: TComboBox
              Left = 21
              Top = 20
              Width = 156
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              OnChange = cbPengeluaranKasChange
            end
            object cbPengeluaranKasName: TComboBox
              Left = 181
              Top = 20
              Width = 384
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              BevelOuter = bvRaised
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 1
              OnChange = cbPengeluaranKasNameChange
            end
          end
          object dxButton1: TdxButton
            Tag = 3333
            Left = 430
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = dxButton1Click
            Caption = 'Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 3
          end
          object dxButton2: TdxButton
            Tag = 4444
            Left = 510
            Top = 396
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancelClick
            Caption = 'Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 4
          end
        end
        object dxTabSheet8: TdxTabSheet
          Caption = 'Rekening Jurnal'
          OnShow = dxTabSheet8Show
          DesignSize = (
            606
            467)
          object Label9: TLabel
            Left = 107
            Top = 39
            Width = 36
            Height = 13
            Caption = 'Valuta :'
            Visible = False
          end
          object Label10: TLabel
            Left = 36
            Top = 115
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Hutang :'
          end
          object Label11: TLabel
            Left = 24
            Top = 159
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pembelian :'
          end
          object DBText8: TDBText
            Left = 317
            Top = 115
            Width = 285
            Height = 14
            DataField = 'LCOAAP'
            DataSource = dsAP
          end
          object DBText9: TDBText
            Left = 317
            Top = 135
            Width = 284
            Height = 16
            DataField = 'LCOATax'
            DataSource = dsAP
          end
          object Label12: TLabel
            Left = 36
            Top = 71
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pembayaran DP :'
          end
          object Label13: TLabel
            Left = 36
            Top = 93
            Width = 112
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. DP Pembelian :'
          end
          object DBText10: TDBText
            Left = 317
            Top = 70
            Width = 285
            Height = 14
            DataField = 'LCOADPPay'
            DataSource = dsAP
          end
          object DBText11: TDBText
            Left = 317
            Top = 93
            Width = 284
            Height = 13
            DataField = 'LCOADP'
            DataSource = dsAP
          end
          object Label14: TLabel
            Left = 24
            Top = 181
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pembayaran Kas :'
          end
          object Label15: TLabel
            Left = 12
            Top = 203
            Width = 136
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pembayaran Bank :'
          end
          object DBText12: TDBText
            Left = 317
            Top = 158
            Width = 285
            Height = 15
            DataField = 'LCOABuy'
            DataSource = dsAP
          end
          object DBText13: TDBText
            Left = 317
            Top = 180
            Width = 285
            Height = 15
            DataField = 'LCOACashP'
            DataSource = dsAP
          end
          object DBText14: TDBText
            Left = 317
            Top = 203
            Width = 285
            Height = 15
            DataField = 'LCOABankP'
            DataSource = dsAP
          end
          object Label16: TLabel
            Left = 24
            Top = 137
            Width = 123
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pajak Masukan :'
          end
          object Label17: TLabel
            Left = 12
            Top = 225
            Width = 136
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Rek. Pembayaran Cek/Giro :'
          end
          object DBText15: TDBText
            Left = 317
            Top = 225
            Width = 285
            Height = 15
            DataField = 'LCOAChequeP'
            DataSource = dsAP
          end
          object bbSave3: TdxButton
            Tag = 3333
            Left = 317
            Top = 262
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbSave3Click
            Caption = '&Save'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 0
            TabStop = False
          end
          object bbCancel3: TdxButton
            Tag = 4444
            Left = 393
            Top = 262
            Height = 19
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Anchors = [akRight, akBottom]
            Color = 9609897
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Version = '1.0.2e'
            OnClick = bbCancel3Click
            Caption = '&Cancel'
            Colors.FocusedFrom = 16750383
            Colors.FocusedTo = 16763799
            Colors.HighlightFrom = clWhite
            Colors.HighlightTo = clWhite
            HotTrack = True
            TabOrder = 1
            TabStop = False
          end
          object cbValutaIdAP: TComboBox
            Left = 153
            Top = 36
            Width = 156
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            BevelOuter = bvRaised
            Style = csDropDownList
            Color = clWhite
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 2
            OnChange = cbValutaIdAPChange
            OnKeyPress = cbValutaIdAPKeyPress
          end
          object dxDBButtonEdit14: TdxDBButtonEdit
            Left = 152
            Top = 67
            Width = 157
            TabOrder = 3
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COADPPay'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit14ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit15: TdxDBButtonEdit
            Left = 152
            Top = 89
            Width = 157
            TabOrder = 4
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COADP'
            DataSource = dsAP
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
            Top = 111
            Width = 157
            TabOrder = 5
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COAAP'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit16ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit17: TdxDBButtonEdit
            Left = 152
            Top = 133
            Width = 157
            TabOrder = 6
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COATax'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit17ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit18: TdxDBButtonEdit
            Left = 152
            Top = 155
            Width = 157
            TabOrder = 7
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COABuy'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit18ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit19: TdxDBButtonEdit
            Left = 152
            Top = 177
            Width = 157
            TabOrder = 8
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COACashP'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit19ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit20: TdxDBButtonEdit
            Left = 152
            Top = 199
            Width = 157
            TabOrder = 9
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COABankP'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit20ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit21: TdxDBButtonEdit
            Left = 152
            Top = 221
            Width = 157
            TabOrder = 10
            OnKeyPress = cbValutaIdAPKeyPress
            DataField = 'COAChequeP'
            DataSource = dsAP
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit21ButtonClick
            ExistButtons = True
          end
        end
      end
    end
    object dxTabSheet11: TdxTabSheet
      Caption = 'General'
      OnShow = dxTabSheet11Show
      DesignSize = (
        606
        490)
      object Label18: TLabel
        Left = 20
        Top = 12
        Width = 70
        Height = 13
        Caption = 'Path File Excel'
      end
      object dxDBButtonEdit22: TdxDBButtonEdit
        Left = 104
        Top = 8
        Width = 481
        TabOrder = 0
        OnKeyPress = dxDBButtonEdit22KeyPress
        DataField = 'ExcelId'
        DataSource = dsExcel
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit22ButtonClick
        ExistButtons = True
      end
      object bbSave5: TdxButton
        Tag = 3333
        Left = 433
        Top = 34
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = bbSave5Click
        Caption = '&Save'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
        TabStop = False
      end
      object bbCancel5: TdxButton
        Tag = 4444
        Left = 509
        Top = 34
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = bbCancel5Click
        Caption = '&Cancel'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 2
        TabStop = False
      end
    end
  end
  inherited quMain: TADOQuery
    AfterCancel = quMainBeforePost
  end
  object quGL: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quGLBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from SAMsPrefGL')
    Left = 184
    Top = 416
    object quGLValutaID: TStringField
      FieldName = 'ValutaID'
    end
    object quGLCOACI: TStringField
      FieldName = 'COACI'
    end
    object quGLCOACO: TStringField
      FieldName = 'COACO'
    end
    object quGLCOABI: TStringField
      FieldName = 'COABI'
    end
    object quGLCOABO: TStringField
      FieldName = 'COABO'
    end
    object quGLCOAPKURS: TStringField
      FieldName = 'COAPKURS'
    end
    object quGLCOALKURS: TStringField
      FieldName = 'COALKURS'
    end
    object quGLLCOACI: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOACI'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COACI'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object quGLLCOACO: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOACO'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COACO'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object quGLLCOABI: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOABI'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COABI'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object quGLLCOABO: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOABO'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COABO'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object quGLLCOAPKURS: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOAPKURS'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COAPKURS'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object quGLLCOALKURS: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOALKURS'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COALKURS'
      LookupCache = True
      Size = 30
      Lookup = True
    end
  end
  object dsGL: TDataSource
    DataSet = quGL
    OnStateChange = dsGLStateChange
    Left = 212
    Top = 416
  end
  object quCOA: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GLMsCOA')
    Left = 184
    Top = 448
  end
  object quAR: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quARBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from SAMsPrefAR')
    Left = 248
    Top = 416
    object quARValutaID: TStringField
      FieldName = 'ValutaID'
    end
    object quARCOAAR: TStringField
      FieldName = 'COAAR'
    end
    object quARCOATax: TStringField
      FieldName = 'COATax'
    end
    object quARCOASale: TStringField
      FieldName = 'COASale'
    end
    object quARCOADiscount: TStringField
      FieldName = 'COADiscount'
    end
    object quARCOACashP: TStringField
      FieldName = 'COACashP'
    end
    object quARCOABankP: TStringField
      FieldName = 'COABankP'
    end
    object quARCOAChequeP: TStringField
      FieldName = 'COAChequeP'
    end
    object quARLCOAAR: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOAAR'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COAAR'
      Size = 50
      Lookup = True
    end
    object quARLCOATax: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOATax'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COATax'
      Size = 50
      Lookup = True
    end
    object quARLCOASale: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOASale'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COASale'
      Size = 50
      Lookup = True
    end
    object quARLCOADiscount: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOADiscount'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COADiscount'
      Size = 50
      Lookup = True
    end
    object quARLCOACashP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOACashP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COACashP'
      Size = 50
      Lookup = True
    end
    object quARLCOABankP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOABankP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COABankP'
      Size = 50
      Lookup = True
    end
    object quARLCOAChequeP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOAChequeP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COAChequeP'
      Size = 50
      Lookup = True
    end
  end
  object dsAR: TDataSource
    DataSet = quAR
    OnStateChange = dsARStateChange
    Left = 276
    Top = 416
  end
  object quAP: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quAPBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from SAMsPrefAP')
    Left = 312
    Top = 416
    object quAPValutaID: TStringField
      FieldName = 'ValutaID'
    end
    object quAPCOADPPay: TStringField
      FieldName = 'COADPPay'
    end
    object quAPCOADP: TStringField
      FieldName = 'COADP'
    end
    object quAPCOAAP: TStringField
      FieldName = 'COAAP'
    end
    object quAPCOATax: TStringField
      FieldName = 'COATax'
    end
    object quAPCOABuy: TStringField
      FieldName = 'COABuy'
    end
    object quAPCOACashP: TStringField
      FieldName = 'COACashP'
    end
    object quAPCOABankP: TStringField
      FieldName = 'COABankP'
    end
    object quAPCOAChequeP: TStringField
      FieldName = 'COAChequeP'
    end
    object quAPLCOADPPay: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOADPPay'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COADPPay'
      Size = 50
      Lookup = True
    end
    object quAPLCOADP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOADP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COADP'
      Size = 50
      Lookup = True
    end
    object quAPLCOAAP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOAAP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COAAP'
      Size = 50
      Lookup = True
    end
    object quAPLCOATax: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOATax'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COATax'
      Size = 50
      Lookup = True
    end
    object quAPLCOABuy: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOABuy'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COABuy'
      Size = 50
      Lookup = True
    end
    object quAPLCOACashP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOACashP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COACashP'
      Size = 50
      Lookup = True
    end
    object quAPLCOABankP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOABankP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COABankP'
      Size = 50
      Lookup = True
    end
    object quAPLCOAChequeP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCOAChequeP'
      LookupDataSet = quCOA
      LookupKeyFields = 'COAID'
      LookupResultField = 'COADesc'
      KeyFields = 'COAChequeP'
      Size = 50
      Lookup = True
    end
  end
  object dsAP: TDataSource
    DataSet = quAP
    OnStateChange = dsAPStateChange
    Left = 340
    Top = 416
  end
  object OpenDialog1: TOpenDialog
    Left = 152
    Top = 416
  end
  object quExcel: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from SAMsExcel')
    Left = 308
    Top = 472
    object quExcelExcelId: TStringField
      FieldName = 'ExcelId'
      Size = 300
    end
  end
  object dsExcel: TDataSource
    DataSet = quExcel
    OnStateChange = dsExcelStateChange
    Left = 336
    Top = 472
  end
end
