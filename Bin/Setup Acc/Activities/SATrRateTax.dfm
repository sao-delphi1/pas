inherited fmSATrRateTax: TfmSATrRateTax
  Left = 96
  Top = 135
  Caption = 'fmSATrRateTax'
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
        Filter.Criteria = {00000000}
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Kode Valuta'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ValutaID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tgl Transaksi'
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListRate: TdxDBGridCurrencyColumn
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Rate'
          DisplayFormat = '#,0'
          Nullable = False
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Caption = 'Last Update'
          Color = 13676331
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Caption = 'Updated by'
          Color = 13676331
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 600
        Height = 105
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          600
          105)
        object Label1: TLabel
          Left = 76
          Top = 16
          Width = 69
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valuta ID :'
          Transparent = True
        end
        object Label2: TLabel
          Left = 76
          Top = 40
          Width = 69
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tanggal :'
          Transparent = True
        end
        object Label3: TLabel
          Left = 84
          Top = 64
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rate :'
          Transparent = True
        end
        object cbValutaId: TComboBox
          Left = 149
          Top = 12
          Width = 112
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvRaised
          Style = csDropDownList
          Color = clWhite
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          OnChange = cbValutaIdChange
        end
        object cbValutaName: TComboBox
          Left = 265
          Top = 12
          Width = 247
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvRaised
          Style = csDropDownList
          Color = clWhite
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          OnChange = cbValutaNameChange
        end
        object TglDate: TdxDBDateEdit
          Left = 148
          Top = 36
          Width = 89
          TabOrder = 2
          OnKeyPress = TglDateKeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBEdit1: TdxDBEdit
          Left = 148
          Top = 60
          Width = 141
          TabOrder = 3
          OnKeyPress = TglDateKeyPress
          DataField = 'Rate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 388
          Top = 78
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
          TabOrder = 4
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 464
          Top = 78
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
          TabOrder = 5
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 105
        Width = 600
        Height = 373
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        OnDblClick = dbgListDblClick
        OnEnter = dxDBGrid1Enter
        DataSource = dsMain
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
        object dxDBGrid1TransDate: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dxDBGrid1Rate: TdxDBGridCurrencyColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Rate'
          DisplayFormat = '#,0'
          Nullable = False
        end
        object dxDBGrid1UpdUser: TdxDBGridMaskColumn
          Caption = 'Updated By'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM SATrRateTax ')
    object quMainValutaID: TStringField
      FieldName = 'ValutaID'
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,0'
      Precision = 18
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
