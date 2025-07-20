inherited fmCFMsBank: TfmCFMsBank
  Left = 261
  Top = 263
  Caption = 'Master Bank'
  ClientHeight = 319
  ClientWidth = 670
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 270
    inherited pa3: TdxContainer
      Height = 91
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
    Top = 307
    Width = 670
  end
  inherited pa2: TdxContainer
    Height = 270
  end
  inherited pcMain: TdxPageControl
    Width = 477
    Height = 270
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Height = 373
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
        Top = 14
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kode Bank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 30
        Top = 34
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama Bank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 31
        Top = 54
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Transparent = True
      end
      object Label3: TLabel
        Left = 12
        Top = 123
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
      object DBText3: TDBText
        Left = 228
        Top = 123
        Width = 228
        Height = 13
        DataField = 'LRekeningName'
        DataSource = dsMain
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 284
        Top = 200
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
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 368
        Top = 200
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
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object dxDBEdit1: TdxDBEdit
        Left = 99
        Top = 10
        Width = 102
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 99
        Top = 30
        Width = 358
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 99
        Top = 50
        Width = 358
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 99
        Top = 119
        Width = 121
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
        Left = 99
        Top = 143
        Width = 117
        Height = 33
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
        Left = 11
        Top = 186
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object Label10: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText1: TDBText
          Left = 53
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label11: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText4: TDBText
          Left = 54
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 670
    inherited sbLast: TSpeedButton
      Left = 642
    end
    inherited sbNext: TSpeedButton
      Left = 619
    end
    inherited sbPrev: TSpeedButton
      Left = 596
    end
    inherited sbFirst: TSpeedButton
      Left = 573
    end
    inherited sbPeriod: TSpeedButton
      Left = 545
    end
    inherited BvlPeriod: TBevel
      Left = 299
    end
    inherited laPeriod: TLabel
      Left = 303
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
