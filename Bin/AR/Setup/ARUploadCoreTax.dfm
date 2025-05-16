inherited fmARUploadCoreTax: TfmARUploadCoreTax
  Left = 401
  Top = 196
  Caption = 'Convert XML Penjualan'
  ClientWidth = 1006
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 1006
    inherited sbLast: TSpeedButton
      Left = 969
    end
    inherited sbNext: TSpeedButton
      Left = 942
    end
    inherited sbPrev: TSpeedButton
      Left = 915
    end
    inherited sbFirst: TSpeedButton
      Left = 888
    end
    inherited sbPeriod: TSpeedButton
      Left = 862
    end
    inherited BvlPeriod: TBevel
      Left = 616
    end
    inherited laPeriod: TLabel
      Left = 620
    end
  end
  object grbKartu: TGroupBox [2]
    Left = 5
    Top = 38
    Width = 400
    Height = 57
    Caption = '[ Periode ]'
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Tanggal :'
    end
    object Label3: TLabel
      Left = 165
      Top = 24
      Width = 33
      Height = 13
      Caption = 'sampai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbRefresh: TBitBtn
      Left = 303
      Top = 15
      Width = 84
      Height = 30
      Hint = 'Refresh'
      Caption = '&Refresh'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbRefreshClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
        C43337777777777777F33444881B188444333777F3737337773333308881FF70
        33333337F3373337F3333330888BF770333333373F33F337333333330881F703
        3333333373F73F7333333333308B703333333333373F77333333333333080333
        3333333333777FF333333333301F103333333333377777FF3333333301B1F103
        333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
        333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
        C43337777777777777F334444444444444333777777777777733}
      NumGlyphs = 2
    end
    object dt1: TdxDateEdit
      Left = 74
      Top = 20
      Width = 85
      TabOrder = 1
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object dt2: TdxDateEdit
      Left = 206
      Top = 19
      Width = 88
      TabOrder = 2
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
  end
  object RadioGroup1: TRadioGroup [3]
    Left = 407
    Top = 38
    Width = 400
    Height = 57
    Caption = '[ Upload ]'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Semua'
      'Sudah Upload'
      'Belum Upload')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object dgrReport: TdxDBGrid [4]
    Left = 0
    Top = 128
    Width = 1005
    Height = 376
    Bands = <
      item
        Width = 1263
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'SaleID'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryField = 'Jual'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end
          item
            SummaryField = 'TModal'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end
          item
            SummaryField = 'TKomisi'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Margin'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end
          item
            SummaryField = 'ModalInvBeli'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end
          item
            SummaryField = 'MarginAll'
            SummaryFormat = '#,0'
            SummaryType = cstSum
          end>
        Name = 'dgrReportSummaryGroup2'
      end>
    SummarySeparator = ', '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnDblClick = dgrReportDblClick
    BandColor = clMoneyGreen
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = [fsBold]
    DataSource = dsMain
    Filter.Active = True
    Filter.Criteria = {00000000}
    HeaderColor = clSilver
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    HideSelectionColor = clSkyBlue
    HighlightColor = clSkyBlue
    HighlightTextColor = clBackground
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    ShowBands = True
    ShowRowFooter = True
    object dgrReportColumn1: TdxDBGridColumn
      Caption = 'Tanggal'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'transdate'
    end
    object dgrReportColumn2: TdxDBGridColumn
      Caption = 'Nomor Invoice'
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'saleid'
    end
    object dgrReportColumn3: TdxDBGridColumn
      Caption = 'Nama Pelanggan'
      Width = 300
      BandIndex = 0
      RowIndex = 0
      FieldName = 'custname'
    end
    object dgrReportColumn4: TdxDBGridColumn
      Caption = 'Total'
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'total'
    end
    object dgrReportColumn5: TdxDBGridColumn
      Caption = 'NPWP'
      Width = 160
      BandIndex = 0
      RowIndex = 0
      FieldName = 'npwp'
    end
    object dgrReportColumn6: TdxDBGridColumn
      Caption = 'Status'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StatusU'
    end
  end
  object Panel1: TPanel [5]
    Left = 7
    Top = 104
    Width = 278
    Height = 19
    BevelOuter = bvNone
    Color = 14401101
    TabOrder = 4
    object rbselect2: TRadioButton
      Left = 80
      Top = 1
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 0
      OnClick = rbAll2Click
    end
    object rbAll2: TRadioButton
      Left = 20
      Top = 1
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbAll2Click
    end
  end
  object dxButton1: TdxButton [6]
    Left = 14
    Top = 507
    Width = 979
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'CREATE XML'
    TabOrder = 5
    TabStop = False
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'select a.transdate,a.saleid,b.custname,a.ttlpj as total,'
      'isnull(b.email,'#39#39') as npwp,'
      
        'CASE WHEN A.FgUpload='#39'Y'#39' THEN '#39'Sudah Upload'#39' ELSE '#39'Belum Upload'#39 +
        ' END as StatusU,'
      'FgUpload'
      'from ARTrPenjualanHd a '
      'inner join ARMsCustomer b on a.custid=b.custid')
    object quMaintransdate: TDateTimeField
      FieldName = 'transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainsaleid: TStringField
      FieldName = 'saleid'
      Size = 30
    end
    object quMaincustname: TStringField
      FieldName = 'custname'
      Size = 200
    end
    object quMaintotal: TBCDField
      FieldName = 'total'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainnpwp: TStringField
      FieldName = 'npwp'
      ReadOnly = True
      Size = 50
    end
    object quMainStatusU: TStringField
      FieldName = 'StatusU'
      ReadOnly = True
      Size = 12
    end
    object quMainFgUpload: TStringField
      FieldName = 'FgUpload'
      Size = 10
    end
  end
  object saveDlg: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML Files (*.xml)|*.xml|All Files (*.*)|*.*'
    Left = 696
    Top = 104
  end
  object quHead: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 368
    Top = 4
  end
  object quTail: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 400
    Top = 4
  end
  object quUpdate: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 320
    Top = 4
  end
end
