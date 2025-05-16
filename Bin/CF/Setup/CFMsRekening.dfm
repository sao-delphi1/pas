inherited fmCFMsRekening: TfmCFMsRekening
  Left = 374
  Top = 120
  Caption = 'Master Rekening'
  ClientHeight = 299
  ClientWidth = 681
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 250
    inherited pa3: TdxContainer
      Height = 71
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
    Top = 287
    Width = 681
  end
  inherited pa2: TdxContainer
    Height = 250
  end
  inherited pcMain: TdxPageControl
    Width = 488
    Height = 250
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
        Left = 21
        Top = 45
        Width = 80
        Height = 13
        Alignment = taRightJustify
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
        Left = 18
        Top = 65
        Width = 83
        Height = 13
        Alignment = taRightJustify
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
        Left = 17
        Top = 25
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Group Rekening :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 108
        Top = 201
        Width = 65
        Height = 17
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 73
        Top = 201
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'User :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 108
        Top = 181
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label9: TLabel
        Left = 27
        Top = 181
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal Ubah :'
        Transparent = True
      end
      object Label13: TLabel
        Left = 40
        Top = 84
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object DBText4: TDBText
        Left = 266
        Top = 26
        Width = 213
        Height = 17
        DataField = 'GroupRekName'
        DataSource = dsMain
      end
      object Label3: TLabel
        Left = 266
        Top = 45
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipe :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 12
        Top = 153
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Komponen LBRG :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 290
        Top = 180
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
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 374
        Top = 180
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
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 340
        Top = 81
        Width = 113
        Height = 42
        Caption = '[ Status Aktif ]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgActive'
        DataSource = dsMain
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 108
        Top = 21
        Width = 150
        TabOrder = 3
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
      object dxDBEdit1: TdxDBEdit
        Left = 108
        Top = 41
        Width = 150
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 302
        Top = 41
        Width = 156
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Tipe'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Assets'
          'Liabilities'
          'Capital'
          'Income'
          'Expense')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object dxDBEdit2: TdxDBEdit
        Left = 108
        Top = 61
        Width = 350
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 108
        Top = 81
        Width = 229
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 108
        Top = 149
        Width = 150
        TabOrder = 8
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'LBRG'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Harta/Aktiva'
          'Kewajiban/Liabilities'
          'Modal/Capital'
          'Pendapatan/Income'
          'Beban/Expenses')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 681
    inherited sbLast: TSpeedButton
      Left = 653
    end
    inherited sbNext: TSpeedButton
      Left = 630
    end
    inherited sbPrev: TSpeedButton
      Left = 607
    end
    inherited sbFirst: TSpeedButton
      Left = 584
    end
    inherited sbPeriod: TSpeedButton
      Left = 556
    end
    inherited BvlPeriod: TBevel
      Left = 310
    end
    inherited laPeriod: TLabel
      Left = 314
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsRekening'
      'ORDER BY RekeningID')
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
      OnChange = quMainGroupRekIdChange
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
    object quMainTipe: TStringField
      FieldName = 'Tipe'
      Size = 1
    end
    object quMainFgTipe: TStringField
      FieldName = 'FgTipe'
      Size = 1
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainLBRG: TStringField
      FieldName = 'LBRG'
      Size = 10
    end
  end
  inherited dsMain: TDataSource
    Left = 252
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
    end
    inherited ActCancel: TAction
      Caption = 'BATAL (F4)'
    end
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
