inherited fmARRptSisaTransferBarangDlg: TfmARRptSisaTransferBarangDlg
  Left = 246
  Top = 133
  Caption = ''
  ClientHeight = 570
  ClientWidth = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 492
    inherited laTitle: TLabel
      Left = 8
      Top = 4
      Width = 341
      Caption = 'Laporan Sisa Konsinyasi Pelanggan'
    end
  end
  inherited paCenter: TPanel
    Width = 492
    Height = 488
    object GroupBox1: TGroupBox
      Left = 8
      Top = 2
      Width = 161
      Height = 47
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 21
        Top = 19
        Width = 22
        Height = 13
        Caption = 'Per :'
      end
      object dt1: TdxDateEdit
        Left = 53
        Top = 14
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 56
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 82
      Top = 56
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 76
      Width = 490
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CustID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 3
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Sorted = csUp
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Width = 322
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object bbCancel: TdxButton
      Left = 376
      Top = 44
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 529
    Width = 492
    inherited bbPreview: TBitBtn
      Left = 266
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 340
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 414
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select  * FROM ARMsCustomer')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quActCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quActPhone: TStringField
      FieldName = 'Phone'
    end
    object quActFax: TStringField
      FieldName = 'Fax'
    end
    object quActEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quActCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
end
