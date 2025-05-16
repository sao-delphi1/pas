inherited fmARMsTeknisi: TfmARMsTeknisi
  Left = 212
  Top = 168
  Caption = 'Master Teknisi'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited pcMain: TdxPageControl
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
        Left = 12
        Top = 29
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Teknisi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Caption = 'Nama Teknisi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Left = 30
        Top = 195
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'HP :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 29
        Top = 175
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telepon :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 385
        Top = 359
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 261
        Top = 359
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Last User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 149
        Top = 359
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 27
        Top = 359
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Updated By :'
        Transparent = True
      end
      object Label11: TLabel
        Left = 30
        Top = 212
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 30
        Top = 229
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object dxDBEdit1: TdxDBEdit
        Left = 148
        Top = 24
        Width = 141
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TeknisiID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 148
        Top = 45
        Width = 385
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TeknisiName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 148
        Top = 82
        Width = 357
        TabOrder = 2
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
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 148
        Top = 190
        Width = 141
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'HP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 148
        Top = 210
        Width = 141
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 148
        Top = 230
        Width = 357
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 439
        Top = 384
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
        TabOrder = 7
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 515
        Top = 384
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
        TabOrder = 8
      end
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsTeknisi')
    Left = 224
    object quMainTeknisiID: TStringField
      FieldName = 'TeknisiID'
    end
    object quMainTeknisiName: TStringField
      FieldName = 'TeknisiName'
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
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
