inherited fmINMsWareHouse: TfmINMsWareHouse
  Left = 75
  Top = 130
  Caption = 'Master Gudang'
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
        KeyField = 'WarehouseID'
        Filter.Criteria = {00000000}
        object dbgListWarehouseID: TdxDBGridColumn
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WarehouseID'
        end
        object dbgListWarehouseName: TdxDBGridColumn
          DisableEditor = True
          Width = 285
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WarehouseName'
        end
        object dbgListContactPerson: TdxDBGridColumn
          DisableEditor = True
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ContactPerson'
        end
        object dbgListPhone: TdxDBGridColumn
          DisableEditor = True
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListFax: TdxDBGridColumn
          DisableEditor = True
          Width = 141
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Fax'
        end
        object dbgListAddress: TdxDBGridColumn
          DisableEditor = True
          Width = 400
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListCity: TdxDBGridColumn
          DisableEditor = True
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'City'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 14
        Top = 16
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Gudang :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 14
        Top = 37
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Gudang :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 14
        Top = 71
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Transparent = True
      end
      object Label4: TLabel
        Left = 14
        Top = 127
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kota :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 14
        Top = 161
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Contact Person :'
        Transparent = True
      end
      object Label6: TLabel
        Left = 14
        Top = 181
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telepon :'
        Transparent = True
      end
      object Label7: TLabel
        Left = 14
        Top = 201
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 365
        Top = 225
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label8: TLabel
        Left = 248
        Top = 225
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Last User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 136
        Top = 225
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 16
        Top = 225
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Updated By :'
        Transparent = True
      end
      object dxDBEdit1: TdxDBEdit
        Left = 136
        Top = 12
        Width = 141
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WarehouseID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 136
        Top = 32
        Width = 357
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WarehouseName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 136
        Top = 62
        Width = 357
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 65
      end
      object dxDBEdit3: TdxDBEdit
        Left = 136
        Top = 126
        Width = 141
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 137
        Top = 156
        Width = 157
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'ContactPerson'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 137
        Top = 176
        Width = 157
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 137
        Top = 196
        Width = 157
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 447
        Top = 452
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
        Left = 523
        Top = 452
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
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quMainWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
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
      Size = 100
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
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
