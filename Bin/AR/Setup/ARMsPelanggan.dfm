inherited fmARMsPelanggan: TfmARMsPelanggan
  Left = 176
  Top = 103
  Caption = 'Master Pelanggan'
  ClientHeight = 512
  ClientWidth = 599
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 216
    Top = 322
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fax :'
    Transparent = True
  end
  object Label12: TLabel [1]
    Left = 204
    Top = 350
    Width = 129
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Alamat :'
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 463
    inherited pa3: TdxContainer
      Height = 284
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
    Top = 500
    Width = 599
  end
  inherited pa2: TdxContainer
    Height = 463
  end
  inherited pcMain: TdxPageControl
    Width = 406
    Height = 463
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 407
        Height = 400
        KeyField = 'SuppID'
        Filter.Criteria = {00000000}
        object dbgListKdPelanggan: TdxDBGridColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListNmPelanggan: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListTipe: TdxDBGridColumn
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tipe'
        end
        object dbgListPhone: TdxDBGridColumn
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListAlamat: TdxDBGridColumn
          DisableEditor = True
          Width = 274
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListKota: TdxDBGridColumn
          DisableEditor = True
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'City'
        end
        object dbgListFax: TdxDBGridColumn
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Fax'
        end
        object dbgListEmail: TdxDBGridColumn
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Email'
        end
        object dbgListNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 1431
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 20
        Top = 14
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kode Pelanggan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 17
        Top = 34
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama Pelanggan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 67
        Top = 53
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Alamat :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 77
        Top = 124
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kota :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 60
        Top = 144
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Telepon :'
        Transparent = True
      end
      object Label8: TLabel
        Left = 74
        Top = 164
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 110
        Top = 387
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 20
        Top = 387
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 110
        Top = 371
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 20
        Top = 371
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal Ubah :'
        Transparent = True
      end
      object Label11: TLabel
        Left = 66
        Top = 204
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'NPWP :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 44
        Top = 281
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label6: TLabel
        Left = 39
        Top = 244
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Limit Piutang :'
        Transparent = True
      end
      object Label14: TLabel
        Left = 251
        Top = 244
        Width = 23
        Height = 13
        Caption = 'IDR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 26
        Top = 104
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contact Person :'
        Transparent = True
      end
      object Label16: TLabel
        Left = 368
        Top = 244
        Width = 24
        Height = 13
        Caption = 'Hari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 281
        Top = 244
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Term :'
        Transparent = True
      end
      object DBText3: TDBText
        Left = 220
        Top = 224
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LSales'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 79
        Top = 224
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = 'AM :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 267
        Top = 204
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jenis FP :'
        Transparent = True
      end
      object Label20: TLabel
        Left = 38
        Top = 184
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kode NITKU :'
        Transparent = True
      end
      object Label21: TLabel
        Left = 190
        Top = 184
        Width = 103
        Height = 13
        Caption = '6-digits. cth : '#39'000000'#39
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 216
        Top = 369
        Width = 83
        Height = 26
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
        Left = 300
        Top = 369
        Width = 83
        Height = 26
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
      object DBRadioGroup1: TDBRadioGroup
        Left = 26
        Top = 317
        Width = 89
        Height = 48
        Caption = '[Tipe]'
        Ctl3D = False
        DataField = 'CustType'
        DataSource = dsMain
        Items.Strings = (
          'COMPANY'
          'USER')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          'D'
          'U')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 118
        Top = 317
        Width = 89
        Height = 48
        Caption = '[Koma]'
        Ctl3D = False
        DataField = 'FgKoma'
        DataSource = dsMain
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBEdit3: TdxDBEdit
        Left = 411
        Top = 120
        Width = 141
        TabOrder = 4
        Visible = False
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit1: TdxDBEdit
        Left = 107
        Top = 10
        Width = 141
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 107
        Top = 30
        Width = 285
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 107
        Top = 50
        Width = 285
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        WantTabs = True
        Height = 51
      end
      object dxDBEdit8: TdxDBEdit
        Left = 107
        Top = 100
        Width = 141
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'UP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 107
        Top = 120
        Width = 141
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit7: TdxDBEdit
        Left = 107
        Top = 140
        Width = 141
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 107
        Top = 160
        Width = 157
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 107
        Top = 200
        Width = 157
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit10: TdxDBEdit
        Left = 318
        Top = 200
        Width = 32
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'KodeFP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 107
        Top = 220
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SalesID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
      object dxDBEdit5: TdxDBEdit
        Left = 107
        Top = 240
        Width = 139
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'LimitPiutang'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit9: TdxDBEdit
        Left = 311
        Top = 240
        Width = 50
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Term'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 107
        Top = 260
        Width = 285
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 54
      end
      object dxDBEdit11: TdxDBEdit
        Left = 107
        Top = 180
        Width = 78
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'KodeNITKU'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 599
    inherited sbLast: TSpeedButton
      Left = 562
    end
    inherited sbNext: TSpeedButton
      Left = 535
    end
    inherited sbPrev: TSpeedButton
      Left = 508
    end
    inherited sbFirst: TSpeedButton
      Left = 481
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
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      
        'SELECT *, CASE CustType WHEN '#39'U'#39' THEN '#39'User'#39' WHEN '#39'D'#39' THEN '#39'Deal' +
        'er'#39' END AS Tipe from ARMSCustomer ORDER BY CustID')
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quMainCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainTipe: TStringField
      FieldName = 'Tipe'
      ReadOnly = True
      Size = 6
    end
    object quMainLimitPiutang: TBCDField
      FieldName = 'LimitPiutang'
      Precision = 18
      Size = 0
    end
    object quMainFgKoma: TStringField
      FieldName = 'FgKoma'
      Size = 1
    end
    object quMainUP: TStringField
      FieldName = 'UP'
      Size = 100
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
      Size = 200
    end
    object quMainlimitasli: TBCDField
      FieldName = 'limitasli'
      Precision = 18
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainLSales: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSales'
      Size = 200
      Calculated = True
    end
    object quMainKodeFP: TStringField
      FieldName = 'KodeFP'
      Size = 2
    end
    object quMainKodeNITKU: TStringField
      FieldName = 'KodeNITKU'
      Size = 50
    end
  end
end
