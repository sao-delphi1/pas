inherited fmARMsSales: TfmARMsSales
  Left = 245
  Top = 81
  Caption = 'Master Sales'
  ClientHeight = 520
  ClientWidth = 618
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 471
    inherited pa3: TdxContainer
      Height = 292
      object DBImage1: TDBImage
        Left = -376
        Top = -149
        Width = 110
        Height = 91
        Cursor = crHandPoint
        DataField = 'Foto'
        DataSource = dsMain
        Stretch = True
        TabOrder = 0
      end
      object bbLogo: TBitBtn
        Left = -376
        Top = -149
        Width = 60
        Height = 25
        Cursor = crHandPoint
        Hint = 'Ubah Logo Perusahaan'
        Caption = '&Image'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbLogoClick
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
      object bbHpsLogo: TBitBtn
        Left = -376
        Top = -149
        Width = 60
        Height = 25
        Cursor = crHandPoint
        Hint = 'Hapus Logo Perusahaan'
        Caption = '&Delete'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbHpsLogoClick
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
      object DBImage2: TDBImage
        Left = -376
        Top = -149
        Width = 110
        Height = 91
        Cursor = crHandPoint
        DataField = 'SAS'
        DataSource = dsMain
        Stretch = True
        TabOrder = 3
      end
      object bbLogoSAS: TBitBtn
        Left = -376
        Top = -149
        Width = 60
        Height = 25
        Cursor = crHandPoint
        Hint = 'Ubah Logo Perusahaan'
        Caption = '&Image'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = bbLogoSASClick
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
      object bbHpsLogoSAS: TBitBtn
        Left = -376
        Top = -149
        Width = 60
        Height = 25
        Cursor = crHandPoint
        Hint = 'Hapus Logo Perusahaan'
        Caption = '&Delete'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = bbHpsLogoSASClick
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
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 508
    Width = 618
  end
  inherited pa2: TdxContainer
    Height = 471
  end
  inherited pcMain: TdxPageControl
    Width = 425
    Height = 471
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
        object dbgListSalesID: TdxDBGridMaskColumn
          Caption = 'Kode Sales'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesID'
        end
        object dbgListSalesName: TdxDBGridMaskColumn
          Caption = 'Nama Sales'
          DisableEditor = True
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgListAddress: TdxDBGridMaskColumn
          Caption = 'Alamat'
          DisableEditor = True
          Width = 1204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListPhone: TdxDBGridMaskColumn
          Caption = 'Telepon'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListHP: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HP'
        end
        object dbgListEmail: TdxDBGridColumn
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Email'
        end
        object dbgListNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 1204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 40
        Top = 17
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kode Karyawan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 37
        Top = 37
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama Karyawan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 83
        Top = 97
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Alamat :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 85
        Top = 167
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Phone :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 57
        Top = 146
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Telp Rumah :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 110
        Top = 417
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 50
        Top = 417
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Update by :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 110
        Top = 398
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 31
        Top = 398
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal Ubah :'
        Transparent = True
      end
      object Label11: TLabel
        Left = 87
        Top = 184
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'E-mail :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 60
        Top = 202
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label6: TLabel
        Left = 77
        Top = 77
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jabatan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 253
        Top = 77
        Width = 65
        Height = 17
        DataField = 'luJabatan'
        DataSource = dsMain
      end
      object Label8: TLabel
        Left = 35
        Top = 57
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal Gabung :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 63
        Top = 355
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gaji Pokok :'
        Transparent = True
      end
      object Label14: TLabel
        Left = 53
        Top = 315
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Uang Makan :'
        Transparent = True
      end
      object Label10: TLabel
        Left = 51
        Top = 335
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Limit Kas Bon :'
        Transparent = True
      end
      object Label15: TLabel
        Left = 71
        Top = 375
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kerajinan :'
        Transparent = True
      end
      object Label16: TLabel
        Left = 84
        Top = 255
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Target :'
        Transparent = True
      end
      object Label17: TLabel
        Left = 84
        Top = 275
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kom A :'
        Transparent = True
      end
      object Label18: TLabel
        Left = 169
        Top = 275
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = '%  Kom B :             %'
        Transparent = True
      end
      object Label19: TLabel
        Left = 84
        Top = 295
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kom C :'
        Transparent = True
      end
      object Label20: TLabel
        Left = 168
        Top = 295
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = '%  Kom D :             %'
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 292
        Top = 366
        Width = 85
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = '&Simpan'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 292
        Top = 395
        Width = 85
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 275
        Top = 256
        Width = 102
        Height = 73
        Caption = '[Active]'
        Ctl3D = False
        DataField = 'FgActive'
        DataSource = dsMain
        Items.Strings = (
          'Ya'
          'Tidak'
          'Isidentil')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          '1'
          '0'
          '2')
      end
      object dxDBEdit1: TdxDBEdit
        Left = 129
        Top = 13
        Width = 141
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SalesID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 129
        Top = 33
        Width = 250
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SalesName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 129
        Top = 53
        Width = 121
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TglGabung'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 129
        Top = 73
        Width = 121
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Jabatan'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBMemo1: TdxDBMemo
        Left = 129
        Top = 93
        Width = 250
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 50
      end
      object dxDBEdit3: TdxDBEdit
        Left = 129
        Top = 142
        Width = 141
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 129
        Top = 162
        Width = 141
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'HP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 129
        Top = 182
        Width = 250
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 129
        Top = 202
        Width = 250
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 50
      end
      object dxDBEdit10: TdxDBEdit
        Left = 129
        Top = 251
        Width = 141
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TOmzet'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBSpinEdit1: TdxDBSpinEdit
        Left = 129
        Top = 271
        Width = 38
        TabOrder = 13
        DataField = 'Kom1'
        DataSource = dsMain
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 16
      end
      object dxDBSpinEdit2: TdxDBSpinEdit
        Left = 221
        Top = 271
        Width = 38
        TabOrder = 14
        DataField = 'Kom2'
        DataSource = dsMain
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 16
      end
      object dxDBSpinEdit4: TdxDBSpinEdit
        Left = 129
        Top = 291
        Width = 38
        TabOrder = 15
        DataField = 'Kom3'
        DataSource = dsMain
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 16
      end
      object dxDBSpinEdit3: TdxDBSpinEdit
        Left = 221
        Top = 291
        Width = 38
        TabOrder = 16
        DataField = 'Kom4'
        DataSource = dsMain
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 16
      end
      object dxDBEdit6: TdxDBEdit
        Left = 129
        Top = 311
        Width = 141
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'UangMakan'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit8: TdxDBEdit
        Left = 129
        Top = 331
        Width = 141
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'LimitKasbon'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 129
        Top = 351
        Width = 141
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'UangBulanan'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit9: TdxDBEdit
        Left = 129
        Top = 371
        Width = 141
        TabOrder = 20
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Kerajinan'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 618
    inherited sbLast: TSpeedButton
      Left = 581
    end
    inherited sbNext: TSpeedButton
      Left = 554
    end
    inherited sbPrev: TSpeedButton
      Left = 527
    end
    inherited sbFirst: TSpeedButton
      Left = 500
    end
    inherited sbPeriod: TSpeedButton
      Left = 474
    end
    inherited BvlPeriod: TBevel
      Left = 228
    end
    inherited laPeriod: TLabel
      Left = 232
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARMsSales')
    Left = 228
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 200
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainHP: TStringField
      FieldName = 'HP'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 30
    end
    object quMainluJabatan: TStringField
      FieldKind = fkLookup
      FieldName = 'luJabatan'
      LookupDataSet = quJabatan
      LookupKeyFields = 'Jabatan'
      LookupResultField = 'Jabatan'
      KeyFields = 'Jabatan'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainUangMakan: TBCDField
      FieldName = 'UangMakan'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainUangBulanan: TBCDField
      FieldName = 'UangBulanan'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainTglGabung: TDateTimeField
      FieldName = 'TglGabung'
    end
    object quMainLimitKasbon: TBCDField
      FieldName = 'LimitKasbon'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainKerajinan: TBCDField
      FieldName = 'Kerajinan'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainFoto: TBlobField
      FieldName = 'Foto'
    end
    object quMainSAS: TBlobField
      FieldName = 'SAS'
    end
    object quMainTOmzet: TBCDField
      FieldName = 'TOmzet'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainKom1: TBCDField
      FieldName = 'Kom1'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainKom2: TBCDField
      FieldName = 'Kom2'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainKom3: TBCDField
      FieldName = 'Kom3'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainKom4: TBCDField
      FieldName = 'Kom4'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
  end
  inherited dsMain: TDataSource
    Left = 252
  end
  object quJabatan: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * from ArMsJabatan')
    Left = 208
    Top = 112
  end
  object odLogo: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 196
    Top = 54
  end
  object odLogoSAS: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 196
    Top = 86
  end
end
