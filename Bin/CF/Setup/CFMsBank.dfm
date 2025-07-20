inherited fmCFMsBank: TfmCFMsBank
  Left = 261
  Top = 263
  Caption = 'Master Bank'
  ClientHeight = 344
  ClientWidth = 722
  PixelsPerInch = 96
  TextHeight = 14
  inherited paLeft: TdxContainer
    Height = 291
    inherited pa3: TdxContainer
      Height = 98
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 331
    Width = 722
  end
  inherited pa2: TdxContainer
    Height = 291
  end
  inherited pcMain: TdxPageControl
    Width = 514
    Height = 291
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 645
        Height = 402
        Filter.Criteria = {00000000}
        object dbgListBankId: TdxDBGridMaskColumn
          Caption = 'Kode Bank'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankId'
        end
        object dbgListBankName: TdxDBGridMaskColumn
          Caption = 'Nama Bank'
          Width = 196
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 33
        Top = 15
        Width = 66
        Height = 15
        Alignment = taRightJustify
        Caption = 'Kode Bank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 28
        Top = 37
        Width = 71
        Height = 15
        Alignment = taRightJustify
        Caption = 'Nama Bank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 37
        Top = 58
        Width = 62
        Height = 14
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 132
        Width = 91
        Height = 15
        Alignment = taRightJustify
        Caption = 'Kode Rekening :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 246
        Top = 132
        Width = 245
        Height = 14
        DataField = 'LRekeningName'
        DataSource = dsMain
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 306
        Top = 215
        Width = 89
        Height = 28
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
        Left = 396
        Top = 215
        Width = 90
        Height = 28
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
        Left = 107
        Top = 11
        Width = 109
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 107
        Top = 32
        Width = 385
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 107
        Top = 54
        Width = 385
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 74
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 107
        Top = 128
        Width = 130
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 107
        Top = 154
        Width = 126
        Height = 36
        Caption = '[Status Aktif]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgActive'
        DataSource = dsMain
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        TabOrder = 6
        Values.Strings = (
          'Y'
          'T')
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 200
        Width = 238
        Height = 54
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object Label10: TLabel
          Left = 18
          Top = 11
          Width = 29
          Height = 14
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText1: TDBText
          Left = 57
          Top = 10
          Width = 142
          Height = 18
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label11: TLabel
          Left = 12
          Top = 32
          Width = 36
          Height = 14
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText4: TDBText
          Left = 58
          Top = 32
          Width = 142
          Height = 19
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 243
        Top = 154
        Width = 126
        Height = 36
        Caption = '[Display on Web]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgDisplay'
        DataSource = dsMain
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        TabOrder = 8
        Values.Strings = (
          'Y'
          'T')
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 722
    inherited sbLast: TSpeedButton
      Left = 691
    end
    inherited sbNext: TSpeedButton
      Left = 667
    end
    inherited sbPrev: TSpeedButton
      Left = 642
    end
    inherited sbFirst: TSpeedButton
      Left = 617
    end
    inherited sbPeriod: TSpeedButton
      Left = 587
    end
    inherited BvlPeriod: TBevel
      Left = 322
    end
    inherited laPeriod: TLabel
      Left = 326
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsBank')
    Left = 232
    object quMainBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quMainBankName: TStringField
      FieldName = 'BankName'
      Size = 50
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
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
    end
    object quMainLRekeningName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekeningName'
      Size = 200
      Calculated = True
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainFgDisplay: TStringField
      FieldName = 'FgDisplay'
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
    Left = 612
    Top = 184
  end
end
