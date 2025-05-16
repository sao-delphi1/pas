inherited fmCFRptKeuanganDetDlg: TfmCFRptKeuanganDetDlg
  Left = 651
  Top = 173
  Caption = ''
  ClientHeight = 440
  ClientWidth = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 422
    inherited laTitle: TLabel
      Width = 212
      Caption = 'Laporan Trial Balance'
    end
  end
  inherited paCenter: TPanel
    Width = 422
    Height = 358
    object GroupBox1: TGroupBox
      Left = 14
      Top = 7
      Width = 395
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 174
        Top = 24
        Width = 47
        Height = 19
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 33
        Top = 18
        Width = 125
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 241
        Top = 18
        Width = 125
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dt2KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 91
      Width = 420
      Height = 266
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'GroupRekID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -16
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dbgListRekeningId: TdxDBGridMaskColumn
        Caption = 'Kode Group'
        Sorted = csUp
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GroupRekID'
      end
      object dbgListRekeningName: TdxDBGridMaskColumn
        Caption = 'Group Rekening'
        Width = 375
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GroupRekName'
      end
    end
    object bbCancel: TdxButton
      Left = 288
      Top = 66
      Width = 81
      Height = 20
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI'
      TabOrder = 2
    end
  end
  inherited paBottom: TPanel
    Top = 399
    Width = 422
    inherited bbPreview: TBitBtn
      Left = 196
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 270
    end
    inherited bbExit: TBitBtn
      Left = 344
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 95
      Height = 17
      Caption = 'Tampilkan Detil'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object rbAll: TRadioButton [3]
    Left = 36
    Top = 109
    Width = 53
    Height = 17
    Caption = '&All'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnClick = rbSelectClick
  end
  object rbSelect: TRadioButton [4]
    Left = 116
    Top = 109
    Width = 61
    Height = 17
    Caption = '&Select'
    TabOrder = 4
    OnClick = rbSelectClick
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT GroupRekID,GroupRekName FROM CFMsGroupRek'
      'ORDER BY GroupRekID'
      '')
    object quActGroupRekID: TStringField
      FieldName = 'GroupRekID'
      Size = 50
    end
    object quActGroupRekName: TStringField
      FieldName = 'GroupRekName'
      Size = 50
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM CFMsBANK')
    Left = 260
    Top = 4
    object quMainBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quMainBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
end
