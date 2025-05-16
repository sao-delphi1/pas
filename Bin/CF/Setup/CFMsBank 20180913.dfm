inherited fmCFMsBank: TfmCFMsBank
  Left = 76
  Top = 154
  Caption = 'Master Bank'
  ClientHeight = 438
  ClientWidth = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 389
    inherited pa3: TdxContainer
      Height = 210
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
    Height = 389
  end
  inherited pcMain: TdxPageControl
    Width = 596
    Height = 389
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
        Left = 12
        Top = 28
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
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
        Left = 12
        Top = 49
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Bank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Top = 70
        Width = 112
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Transparent = True
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
        DataField = 'BankId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 148
        Top = 45
        Width = 385
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 148
        Top = 67
        Width = 357
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 150
        Top = 136
        Width = 162
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
        TabOrder = 5
        Values.Strings = (
          'Y'
          'T')
      end
    end
  end
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
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsBank')
    Left = 228
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
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
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
