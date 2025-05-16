inherited fmCFTrKKBB: TfmCFTrKKBB
  Left = 155
  Top = 41
  Caption = ''
  ClientHeight = 627
  ClientWidth = 998
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 578
    inherited pa3: TdxContainer
      Height = 399
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 615
    Width = 998
  end
  inherited pa2: TdxContainer
    Height = 578
  end
  inherited pcMain: TdxPageControl
    Width = 805
    Height = 578
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 808
        Height = 562
        Filter.Criteria = {00000000}
        object dbgListVoucherId: TdxDBGridMaskColumn
          Caption = 'No Voucher'
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VoucherId'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListActor: TdxDBGridMaskColumn
          Caption = 'Aktor'
          Width = 161
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Actor'
        end
        object dbgListColumn10: TdxDBGridColumn
          Caption = 'Valuta'
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrId'
        end
        object dbgListBankId: TdxDBGridMaskColumn
          Caption = 'Kode Bank'
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankId'
        end
        object dbgListLBankName: TdxDBGridLookupColumn
          Caption = 'Nama Bank'
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LBankName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListFlagKKBB: TdxDBGridMaskColumn
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FlagKKBB'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Caption = 'Waktu'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Caption = 'User'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 805
        Height = 555
        inherited ts0201: TdxTabSheet
          inherited bbSave: TdxButton
            Left = 827
            Top = 196
          end
          inherited bbCancel: TdxButton
            Left = 903
            Top = 196
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 805
            Height = 169
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14467152
            TabOrder = 2
            DesignSize = (
              805
              169)
            object Label2: TLabel
              Left = 12
              Top = 36
              Width = 115
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tanggal :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 44
              Top = 16
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'No Voucher :'
              Transparent = True
            end
            object lblTerbayar: TLabel
              Left = 44
              Top = 76
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Dibayar Kepada :'
              Transparent = True
            end
            object Label3: TLabel
              Left = 44
              Top = 96
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Nama Bank :'
              Transparent = True
            end
            object Label4: TLabel
              Left = 11
              Top = 116
              Width = 117
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Keterangan :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText1: TDBText
              Left = 284
              Top = 96
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'LBankName'
              DataSource = dsMain
              Transparent = True
            end
            object LKKBB: TLabel
              Left = 489
              Top = 62
              Width = 308
              Height = 35
              Alignment = taCenter
              AutoSize = False
              Caption = 'R'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 12
              Top = 56
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valuta :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText6: TDBText
              Left = 284
              Top = 55
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'LCurrName'
              DataSource = dsMain
            end
            object DBText2: TDBText
              Left = 325
              Top = 6
              Width = 248
              Height = 34
              Alignment = taCenter
              DataField = 'LCurrName'
              DataSource = dsMain
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 284
              Top = 76
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'LSalesName'
              DataSource = dsMain
              Transparent = True
              Visible = False
            end
            object GroupBox2: TGroupBox
              Left = 576
              Top = 8
              Width = 221
              Height = 50
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object Label10: TLabel
                Left = 16
                Top = 10
                Width = 28
                Height = 13
                Alignment = taRightJustify
                Caption = 'User :'
              end
              object DBText3: TDBText
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
            object dxButton1: TdxButton
              Left = 716
              Top = 134
              Width = 87
              Height = 29
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Version = '1.0.2e'
              OnClick = dxButton1Click
              Caption = 'CETAK'
              TabOrder = 1
              TabStop = False
            end
            object bbs: TdxButton
              Tag = 3333
              Left = 558
              Top = 141
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Anchors = [akRight, akBottom]
              Color = 9609897
              ParentColor = False
              ParentShowHint = False
              ShowHint = True
              Version = '1.0.2e'
              Action = ActSave
              Caption = '&Save '
              Colors.FocusedFrom = 16750383
              Colors.FocusedTo = 16763799
              Colors.HighlightFrom = clWhite
              Colors.HighlightTo = clWhite
              HotTrack = True
              TabOrder = 2
              TabStop = False
            end
            object bbc: TdxButton
              Tag = 4444
              Left = 637
              Top = 141
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Anchors = [akRight, akBottom]
              Color = 9609897
              ParentColor = False
              ParentShowHint = False
              ShowHint = True
              Version = '1.0.2e'
              Action = ActCancel
              Caption = '&Cancel '
              Colors.FocusedFrom = 16750383
              Colors.FocusedTo = 16763799
              Colors.HighlightFrom = clWhite
              Colors.HighlightTo = clWhite
              HotTrack = True
              TabOrder = 3
              TabStop = False
            end
            object dxDBEdit1: TdxDBEdit
              Left = 140
              Top = 12
              Width = 182
              TabOrder = 4
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'VoucherId'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 140
              Top = 32
              Width = 89
              TabOrder = 5
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'TransDate'
              DataSource = dsMain
              StyleController = SCEdit
              UseEditMask = True
              StoredValues = 4
            end
            object dxDBButtonEdit2: TdxDBButtonEdit
              Left = 140
              Top = 52
              Width = 141
              TabOrder = 6
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'CurrID'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBButtonEdit2ButtonClick
              ExistButtons = True
            end
            object dxDBEdit3: TdxDBEdit
              Left = 140
              Top = 72
              Width = 293
              TabOrder = 7
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'Actor'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBButtonEdit1: TdxDBButtonEdit
              Left = 140
              Top = 92
              Width = 141
              TabOrder = 8
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'BankId'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBButtonEdit1ButtonClick
              ExistButtons = True
            end
            object dxDBEdit2: TdxDBEdit
              Left = 140
              Top = 112
              Width = 417
              TabOrder = 9
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'Note'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBButtonEdit3: TdxDBButtonEdit
              Left = 140
              Top = 72
              Width = 141
              TabOrder = 10
              Visible = False
              OnKeyPress = dxDBEdit1KeyPress
              DataField = 'Actor'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBButtonEdit3ButtonClick
              ExistButtons = True
            end
          end
          object dbg: TdxDBGrid
            Left = 0
            Top = 169
            Width = 805
            Height = 341
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 3
            OnEnter = dbgEnter
            DataSource = dsDetil
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dbgRekId: TdxDBGridButtonColumn
              Caption = 'Kode Rekening'
              Width = 103
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RekeningId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dbgRekIdButtonClick
            end
            object dbgRekName: TdxDBGridColumn
              Caption = 'Nama Rekening'
              Width = 211
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LRekName'
            end
            object dbgGroup: TdxDBGridColumn
              Caption = 'Group'
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LGroupName'
            end
            object dbgNote: TdxDBGridColumn
              Caption = 'Keterangan'
              Width = 263
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Note'
            end
            object dbgAmount: TdxDBGridColumn
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Amount'
            end
          end
          object GroupBox3: TGroupBox
            Left = 4
            Top = 511
            Width = 796
            Height = 40
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            object DBText7: TDBText
              Left = 648
              Top = 12
              Width = 141
              Height = 20
              Alignment = taRightJustify
              DataField = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbTotal: TLabel
              Left = 578
              Top = 12
              Width = 66
              Height = 20
              Alignment = taRightJustify
              Caption = 'TOTAL :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object bbBatal: TdxButton
              Tag = 4444
              Left = 191
              Top = 9
              Width = 61
              Height = 26
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbBatalClick
              Caption = 'Batal'
              TabOrder = 0
            end
            object bbSimpan: TdxButton
              Tag = 4444
              Left = 129
              Top = 9
              Width = 61
              Height = 26
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbSimpanClick
              Caption = 'Simpan'
              TabOrder = 1
            end
            object bbHapus: TdxButton
              Tag = 2222
              Left = 67
              Top = 9
              Width = 61
              Height = 26
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbHapusClick
              Caption = '(-) Nota'
              TabOrder = 2
            end
            object bbTambah: TdxButton
              Tag = 1111
              Left = 5
              Top = 9
              Width = 61
              Height = 26
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbTambahClick
              Caption = '(+) Nota'
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 998
    inherited sbLast: TSpeedButton
      Left = 970
    end
    inherited sbNext: TSpeedButton
      Left = 947
    end
    inherited sbPrev: TSpeedButton
      Left = 924
    end
    inherited sbFirst: TSpeedButton
      Left = 901
    end
    inherited sbPeriod: TSpeedButton
      Left = 873
    end
    inherited BvlPeriod: TBevel
      Left = 627
    end
    inherited laPeriod: TLabel
      Left = 631
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'Select * FROM CFTrKKBBHd')
    object quMainVoucherId: TStringField
      FieldName = 'VoucherId'
      Size = 30
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainActor: TStringField
      FieldName = 'Actor'
      Size = 50
    end
    object quMainBankId: TStringField
      FieldName = 'BankId'
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
    object quMainLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankId'
      LookupResultField = 'BankName'
      KeyFields = 'BankId'
      Size = 50
      Lookup = True
    end
    object quMainFlagKKBB: TStringField
      FieldName = 'FlagKKBB'
    end
    object quMainCurrId: TStringField
      FieldName = 'CurrId'
      Size = 50
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrId'
      Size = 50
      Lookup = True
    end
    object quMainLSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'Actor'
      LookupCache = True
      Size = 80
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'VoucherId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select * FROM CFTrKKBBDt WHERE'
      'VoucherId=:VoucherId')
    object quDetilVoucherId: TStringField
      FieldName = 'VoucherId'
      Size = 30
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quDetilAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilRekeningId: TStringField
      FieldName = 'RekeningId'
      Size = 30
    end
    object quDetilLRekName: TStringField
      FieldKind = fkLookup
      FieldName = 'LRekName'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'RekeningId'
      Size = 50
      Lookup = True
    end
    object quDetilLGroupRek: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroupRek'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'GroupRekId'
      KeyFields = 'RekeningId'
      Size = 30
      Lookup = True
    end
    object quDetilLGroupName: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroupName'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'LGroupRek'
      Size = 50
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CFMsBank')
    Left = 480
    Top = 308
  end
  object quRek: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CFMsRekening')
    Left = 508
    Top = 308
  end
  object quGroupRek: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CFMsGroupRek')
    Left = 536
    Top = 308
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 600
    Top = 136
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT SalesID,SalesName FROM ARMsSales')
    Left = 640
    Top = 136
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 264
    Top = 468
  end
end
