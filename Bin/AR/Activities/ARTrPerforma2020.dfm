inherited fmARTrPerforma: TfmARTrPerforma
  Caption = 'Performa Invoice'
  ClientHeight = 375
  ClientWidth = 685
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 326
    inherited pa3: TdxContainer
      Height = 147
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 363
    Width = 685
  end
  inherited pa2: TdxContainer
    Height = 326
  end
  inherited dxContainer7: TdxContainer
    Width = 492
    Height = 326
    inherited pcParent: TdxPageControl
      Width = 492
      Height = 326
      inherited ts01: TdxTabSheet
        object Shape5: TShape [0]
          Left = 124
          Top = 142
          Width = 296
          Height = 23
          Brush.Color = 13676331
        end
        object Shape6: TShape [1]
          Left = 124
          Top = 164
          Width = 296
          Height = 23
          Brush.Color = 13676331
        end
        object Shape4: TShape [2]
          Left = 124
          Top = 186
          Width = 296
          Height = 23
          Brush.Color = 13676331
        end
        object Shape3: TShape [3]
          Left = 124
          Top = 208
          Width = 296
          Height = 23
          Brush.Color = 13676331
        end
        object Label6: TLabel [4]
          Left = 24
          Top = 117
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jatuh Tempo :'
        end
        object Label33: TLabel [5]
          Left = 53
          Top = 97
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jumlah :'
        end
        object Label3: TLabel [6]
          Left = 35
          Top = 57
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pelanggan :'
        end
        object Label12: TLabel [7]
          Left = 54
          Top = 77
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'No SO :'
        end
        object Label2: TLabel [8]
          Left = 47
          Top = 37
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tanggal :'
        end
        object Label1: TLabel [9]
          Left = 30
          Top = 17
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Performa ID :'
        end
        object Label4: TLabel [10]
          Left = 149
          Top = 97
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label20: TLabel [11]
          Left = 174
          Top = 116
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tgl Jatuh Tempo :'
        end
        object Label7: TLabel [12]
          Left = 149
          Top = 115
          Width = 19
          Height = 13
          Caption = 'Hari'
        end
        object DBText2: TDBText [13]
          Left = 264
          Top = 116
          Width = 90
          Height = 13
          DataField = 'LjatuhTempo'
          DataSource = dsMain
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText [14]
          Left = 178
          Top = 57
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LCustName'
          DataSource = dsMain
        end
        object DBText1: TDBText [15]
          Left = 288
          Top = 145
          Width = 125
          Height = 17
          Alignment = taRightJustify
          DataField = 'LTotalSO'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText12: TDBText [16]
          Left = 288
          Top = 189
          Width = 125
          Height = 17
          Alignment = taRightJustify
          DataField = 'LPPN'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel [17]
          Left = 130
          Top = 145
          Width = 150
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total SO : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel [18]
          Left = 130
          Top = 211
          Width = 150
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grand Total : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel [19]
          Left = 130
          Top = 166
          Width = 150
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nilai Performa : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel [20]
          Left = 130
          Top = 189
          Width = 150
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PPN 10% : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText [21]
          Left = 288
          Top = 211
          Width = 125
          Height = 17
          Alignment = taRightJustify
          DataField = 'LGT'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [22]
          Left = 288
          Top = 166
          Width = 125
          Height = 17
          Alignment = taRightJustify
          DataField = 'LDP'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 321
          Top = 288
          Width = 81
          Height = 28
        end
        inherited bbCancel: TdxButton
          Left = 403
          Top = 288
          Width = 81
          Height = 28
        end
        object dxDBEdit1: TdxDBEdit
          Left = 97
          Top = 13
          Width = 150
          Color = clWhite
          TabOrder = 2
          TabStop = False
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'PerformaID'
          DataSource = dsMain
          ReadOnly = True
          StyleController = SCEdit
          StoredValues = 64
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 97
          Top = 33
          Width = 100
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 97
          Top = 73
          Width = 150
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SOID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object txtPelanggan: TdxDBButtonEdit
          Left = 97
          Top = 53
          Width = 75
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CustID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end
            item
              Default = False
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
                F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
                F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
                F000}
              Kind = bkGlyph
            end>
          OnButtonClick = txtPelangganButtonClick
          ExistButtons = True
        end
        object dxDBEdit9: TdxDBEdit
          Left = 97
          Top = 93
          Width = 50
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'DP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit3: TdxDBEdit
          Left = 97
          Top = 113
          Width = 50
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'JthTempo'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox2: TGroupBox
          Left = 256
          Top = 1
          Width = 195
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          object Label21: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText8: TDBText
            Left = 53
            Top = 10
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 7
            Top = 30
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Waktu :'
          end
          object DBText9: TDBText
            Left = 53
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 2
          Top = 140
          Width = 119
          Height = 85
          Caption = '[Cara Bayar]'
          Ctl3D = False
          DataField = 'FgPayment'
          DataSource = dsMain
          Items.Strings = (
            'Cash'
            'Bank Transfer'
            'Cheque/Giro')
          ParentCtl3D = False
          TabOrder = 9
          Values.Strings = (
            'K'
            'B'
            'C')
        end
        object dxButton1: TdxButton
          Left = 8
          Top = 235
          Width = 116
          Height = 45
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Version = '1.0.2e'
          OnClick = dxButton1Click
          OnKeyPress = dxDBEdit1KeyPress
          Caption = 'CETAK'
          TabOrder = 10
          TabStop = False
        end
        object rgKoma: TRadioGroup
          Left = 132
          Top = 233
          Width = 75
          Height = 63
          Caption = '[ Koma ]'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Pakai'
            'Tidak ')
          ParentCtl3D = False
          TabOrder = 11
        end
        object RadioGroup1: TRadioGroup
          Left = 209
          Top = 233
          Width = 104
          Height = 80
          Caption = '[ TTD ]'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Default'
            'Sales'
            'Jgn Tampil'
            'Hindra Kumala')
          ParentCtl3D = False
          TabOrder = 12
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 685
    inherited sbLast: TSpeedButton
      Left = 648
    end
    inherited sbNext: TSpeedButton
      Left = 621
    end
    inherited sbPrev: TSpeedButton
      Left = 594
    end
    inherited sbFirst: TSpeedButton
      Left = 567
    end
    inherited sbPeriod: TSpeedButton
      Left = 541
    end
    inherited BvlPeriod: TBevel
      Left = 295
    end
    inherited laPeriod: TLabel
      Left = 299
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from artrperformahd')
    object quMainPerformaID: TStringField
      FieldName = 'PerformaID'
      Size = 50
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      Size = 50
    end
    object quMainupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quMainupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainJthTempo: TIntegerField
      FieldName = 'JthTempo'
    end
    object quMainFgPayment: TStringField
      FieldName = 'FgPayment'
      Size = 50
    end
    object quMainLjatuhTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'LjatuhTempo'
      Calculated = True
    end
    object quMainLCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCustName'
      Size = 100
      Calculated = True
    end
    object quMainLTotalSO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LTotalSO'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quMainLDP: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LDP'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quMainLPPN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LPPN'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quMainLGT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LGT'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 4
  end
end
