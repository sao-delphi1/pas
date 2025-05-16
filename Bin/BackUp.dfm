inherited fmBackUp: TfmBackUp
  Left = 259
  Top = 143
  BorderIcons = [biSystemMenu]
  Caption = 'Back Up Data'
  ClientHeight = 116
  ClientWidth = 292
  Constraints.MaxHeight = 155
  Constraints.MaxWidth = 308
  Constraints.MinHeight = 150
  Constraints.MinWidth = 300
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 292
  end
  object bbOK: TBitBtn [1]
    Left = 37
    Top = 44
    Width = 101
    Height = 53
    Caption = '&Back Up'
    TabOrder = 1
    OnClick = bbOKClick
    Kind = bkOK
  end
  object bbCancel: TBitBtn [2]
    Left = 140
    Top = 44
    Width = 101
    Height = 53
    Caption = '&Close'
    TabOrder = 2
    OnClick = bbCancelClick
    Kind = bkCancel
  end
  inherited quAct: TADOQuery
    Left = 216
  end
  inherited SCEdit: TdxEditStyleController
    Left = 156
    Top = 40
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 184
    Top = 40
  end
  inherited quMain: TADOQuery
    Left = 156
  end
  inherited dsMain: TDataSource
    Left = 184
  end
end
