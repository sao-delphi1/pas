inherited fmAPMsSupplier: TfmAPMsSupplier
  Left = 165
  Top = 111
  Caption = 'Master Supplier'
  ClientHeight = 434
  ClientWidth = 659
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
    Height = 385
    inherited pa3: TdxContainer
      Height = 206
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
    Top = 422
    Width = 659
  end
  inherited pa2: TdxContainer
    Height = 385
  end
  inherited pcMain: TdxPageControl
    Width = 466
    Height = 385
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        KeyField = 'SuppID'
        Filter.Criteria = {00000000}
        object dbgListKdSupplier: TdxDBGridColumn
          Caption = 'Kode Supplier'
          DisableEditor = True
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dbgListNmSupplier: TdxDBGridColumn
          Caption = 'Nama Supplier'
          DisableEditor = True
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppName'
        end
        object dbgListContactPerson: TdxDBGridColumn
          DisableEditor = True
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ContactPerson'
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
          Width = 1804
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 26
        Top = 17
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kode Supplier :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 23
        Top = 37
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama Supplier :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 60
        Top = 56
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Alamat :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 67
        Top = 114
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kota :'
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 136
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contact Person :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 50
        Top = 156
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Telepon :'
        Transparent = True
      end
      object Label8: TLabel
        Left = 72
        Top = 176
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fax :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 110
        Top = 332
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 15
        Top = 332
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 110
        Top = 316
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 24
        Top = 316
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal Ubah :'
        Transparent = True
      end
      object Label11: TLabel
        Left = 64
        Top = 193
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 34
        Top = 210
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label14: TLabel
        Left = 65
        Top = 281
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Term :'
        Transparent = True
      end
      object Label15: TLabel
        Left = 168
        Top = 282
        Width = 19
        Height = 13
        Caption = 'Hari'
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 260
        Top = 310
        Width = 83
        Height = 24
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
        Left = 344
        Top = 310
        Width = 83
        Height = 24
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
      object dxDBEdit1: TdxDBEdit
        Left = 105
        Top = 12
        Width = 141
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 105
        Top = 32
        Width = 350
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 105
        Top = 52
        Width = 350
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 60
      end
      object dxDBEdit3: TdxDBEdit
        Left = 105
        Top = 111
        Width = 141
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 105
        Top = 131
        Width = 165
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'ContactPerson'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 105
        Top = 151
        Width = 141
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 105
        Top = 171
        Width = 157
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 105
        Top = 191
        Width = 157
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 105
        Top = 211
        Width = 350
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object dxDBEdit8: TdxDBEdit
        Left = 105
        Top = 279
        Width = 56
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Term'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 659
    inherited sbLast: TSpeedButton
      Left = 622
    end
    inherited sbNext: TSpeedButton
      Left = 595
    end
    inherited sbPrev: TSpeedButton
      Left = 568
    end
    inherited sbFirst: TSpeedButton
      Left = 541
    end
    inherited sbPeriod: TSpeedButton
      Left = 515
    end
    inherited BvlPeriod: TBevel
      Left = 269
    end
    inherited laPeriod: TLabel
      Left = 273
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM APMsSupplier'
      'ORDER BY SuppID')
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quMainCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quMainContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
    end
  end
  object quCek: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    Left = 404
    Top = 4
  end
end
