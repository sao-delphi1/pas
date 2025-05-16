inherited fmAPMsPelanggan: TfmAPMsPelanggan
  Left = 194
  Top = 338
  Caption = 'fmARMsPelanggan'
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
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited pcMain: TdxPageControl
    ActivePage = ts01
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
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
        Left = 12
        Top = 29
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Pelanggan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 12
        Top = 50
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Pelanggan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 12
        Top = 86
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 26
        Top = 171
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kota :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 26
        Top = 229
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telepon :'
        Transparent = True
      end
      object Label8: TLabel
        Left = 26
        Top = 249
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 386
        Top = 374
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 262
        Top = 374
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Last User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 150
        Top = 374
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 28
        Top = 374
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Updated By :'
        Transparent = True
      end
      object Label11: TLabel
        Left = 26
        Top = 266
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 26
        Top = 283
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 407
        Top = 444
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 483
        Top = 444
        Height = 19
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object dxDBEdit1: TdxDBEdit
        Left = 148
        Top = 24
        Width = 141
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 148
        Top = 45
        Width = 385
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 148
        Top = 82
        Width = 357
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 89
      end
      object dxDBEdit3: TdxDBEdit
        Left = 148
        Top = 170
        Width = 141
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 149
        Top = 224
        Width = 141
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 149
        Top = 244
        Width = 157
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 149
        Top = 264
        Width = 157
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 149
        Top = 284
        Width = 357
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer'
      'ORDER BY CustID')
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
    object quMainFax: TStringField
      FieldName = 'Fax'
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
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
