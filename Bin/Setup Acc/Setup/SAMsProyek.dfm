inherited fmSAMsProyek: TfmSAMsProyek
  Left = 186
  Top = 102
  Caption = 'fmSAMsProyek'
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
        KeyField = 'ProjectID'
        Filter.Criteria = {00000000}
        object dbgListProjectID: TdxDBGridColumn
          Caption = 'Kode Proyek'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ProjectID'
        end
        object dbgListProjectName: TdxDBGridColumn
          Caption = 'Nama Proyek'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ProjectName'
        end
        object dbgListAddress: TdxDBGridColumn
          Caption = 'Alamat'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 12
        Top = 18
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Proyek :'
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
        Top = 39
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Proyek :'
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
        Top = 63
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 136
        Top = 149
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdDate'
        DataSource = dsMain
      end
      object Label4: TLabel
        Left = 16
        Top = 149
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Last Update :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 188
        Top = 149
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Updated By :'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 308
        Top = 149
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'UpdUser'
        DataSource = dsMain
      end
      object dxDBEdit1: TdxDBEdit
        Left = 132
        Top = 12
        Width = 121
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'ProjectID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 132
        Top = 33
        Width = 317
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'ProjectName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 132
        Top = 54
        Width = 317
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 89
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 299
        Top = 176
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
        TabOrder = 3
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 375
        Top = 176
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
        TabOrder = 4
      end
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'SELECT * FROM SAMsProject'
      'ORDER BY ProjectID')
    object quMainProjectID: TStringField
      FieldName = 'ProjectID'
    end
    object quMainProjectName: TStringField
      FieldName = 'ProjectName'
      Size = 50
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
