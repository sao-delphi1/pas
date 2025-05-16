inherited fmCFMsRekening: TfmCFMsRekening
  Left = 86
  Top = 86
  Caption = 'Master Rekening'
  ClientHeight = 438
  ClientWidth = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 789
    inherited sbLast: TSpeedButton
      Left = 761
    end
    inherited sbNext: TSpeedButton
      Left = 738
    end
    inherited sbPrev: TSpeedButton
      Left = 715
    end
    inherited sbFirst: TSpeedButton
      Left = 692
    end
    inherited sbPeriod: TSpeedButton
      Left = 664
    end
    inherited BvlPeriod: TBevel
      Left = 418
    end
    inherited laPeriod: TLabel
      Left = 422
    end
  end
  inherited paLeft: TdxContainer
    Height = 396
    inherited pa3: TdxContainer
      Height = 293
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 426
    Width = 789
  end
  inherited pa2: TdxContainer
    Height = 396
  end
  inherited pcMain: TdxPageControl
    Width = 599
    Height = 396
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Height = 373
        Filter.Criteria = {00000000}
        object dbgListRekeningId: TdxDBGridMaskColumn
          Caption = 'Kode Rekening'
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RekeningId'
        end
        object dbgListRekeningName: TdxDBGridMaskColumn
          Caption = 'Nama Rekening'
          Width = 228
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RekeningName'
        end
        object dbgListGroupRekId: TdxDBGridMaskColumn
          Caption = 'Group Rekening'
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GroupRekId'
        end
        object dbgListGroupRekName: TdxDBGridLookupColumn
          Caption = 'Nama Group Rekening'
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GroupRekName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Caption = 'User'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Caption = 'Waktu'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 12
        Top = 28
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Rekening :'
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
        Top = 49
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Rekening :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 29
        Top = 70
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Group Rekening :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 389
        Top = 187
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 265
        Top = 187
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 153
        Top = 187
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 33
        Top = 187
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal Ubah :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 30
        Top = 90
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
      end
      object DBText4: TDBText
        Left = 306
        Top = 71
        Width = 213
        Height = 17
        DataField = 'GroupRekName'
        DataSource = dsMain
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 438
        Top = 335
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
        Left = 514
        Top = 335
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
        Width = 161
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 148
        Top = 45
        Width = 385
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 148
        Top = 66
        Width = 153
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'GroupRekId'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBMemo2: TdxDBMemo
        Left = 148
        Top = 87
        Width = 357
        TabOrder = 5
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
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsRekening')
    Left = 228
    object quMainRekeningId: TStringField
      FieldName = 'RekeningId'
      Size = 30
    end
    object quMainRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
    object quMainGroupRekId: TStringField
      FieldName = 'GroupRekId'
      Size = 30
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainGroupRekName: TStringField
      FieldKind = fkLookup
      FieldName = 'GroupRekName'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'GroupRekId'
      Size = 50
      Lookup = True
    end
  end
  inherited dsMain: TDataSource
    Left = 252
  end
  object quGroupRek: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CFMsGroupRek')
    Left = 556
    Top = 272
  end
end
