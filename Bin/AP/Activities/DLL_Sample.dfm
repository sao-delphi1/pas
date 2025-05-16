object Form1: TForm1
  Left = 58
  Top = 170
  BorderStyle = bsSingle
  Caption = 'TBarCode DLL for Barcode Printing'
  ClientHeight = 510
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 106
    Width = 74
    Height = 13
    Caption = 'Count Modules:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 101
    Height = 13
    Caption = 'Select bar code type:'
  end
  object Image1: TImage
    Left = 20
    Top = 272
    Width = 273
    Height = 57
    Visible = False
  end
  object Image2: TImage
    Left = 20
    Top = 341
    Width = 273
    Height = 57
    Visible = False
  end
  object Label3: TLabel
    Left = 16
    Top = 260
    Width = 34
    Height = 13
    Caption = 'Cetak :'
    Visible = False
  end
  object Label4: TLabel
    Left = 16
    Top = 448
    Width = 18
    Height = 13
    Caption = 'Left'
    Visible = False
  end
  object Label5: TLabel
    Left = 116
    Top = 448
    Width = 19
    Height = 13
    Caption = 'Top'
    Visible = False
  end
  object Button1: TButton
    Left = 16
    Top = 44
    Width = 273
    Height = 41
    Caption = 'Print Bar Code'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 1
    Text = 'ABC1234567890EFG'
    Visible = False
  end
  object eBox_CountMod: TEdit
    Left = 240
    Top = 128
    Width = 49
    Height = 21
    Hint = 'Number of modules in the actual bar code (CountModules)'
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 16
    Top = 185
    Width = 273
    Height = 81
    Lines.Strings = (
      'TEC-IT BarCode DLL V4 Sample for Delphi 5+'
      ''
      '(c) TEC-IT Datenverarbeitung GmbH'
      'www: http://www.tec-it.com'
      'email: barcode@tec-it.com'
      ''
      'Hint: if unlicensed --> a horizontal bar is drawn across '
      'the bar code. Licenses can be ordered online at '
      'http://www.tec-it.com/order')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 124
    Top = 100
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'bar code symbologies...'
  end
  object Edit2: TEdit
    Left = 32
    Top = 404
    Width = 245
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object CheckBox1: TCheckBox
    Left = 52
    Top = 260
    Width = 97
    Height = 17
    Caption = 'Ya'
    TabOrder = 6
    Visible = False
  end
  object speLeft: TSpinEdit
    Left = 44
    Top = 444
    Width = 61
    Height = 22
    Increment = 100
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 500
    Visible = False
  end
  object speTop: TSpinEdit
    Left = 140
    Top = 444
    Width = 61
    Height = 22
    Increment = 100
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 1500
    Visible = False
  end
  object myReport: TQuickRep
    Left = 376
    Top = 8
    Width = 193
    Height = 485
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = myReportBeforePrint
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0
      1283.22916666667
      50
      510.645833333333
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 19
      Top = 37
      Width = 155
      Height = 77
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        203.729166666667
        410.104166666667)
      BandType = rbDetail
      object QRImage1: TQRImage
        Left = 9
        Top = 16
        Width = 136
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.25
          23.8125
          42.3333333333333
          359.833333333333)
        Stretch = True
      end
      object qlbHasil: TQRLabel
        Left = 9
        Top = 53
        Width = 132
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          23.8125
          140.229166666667
          349.25)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qlbTipe'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 155
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        410.104166666667)
      BandType = rbPageHeader
      object qlbTipe: TQRLabel
        Left = 8
        Top = 0
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          0
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlbTipe'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object Button2: TButton
    Left = 16
    Top = 112
    Width = 273
    Height = 65
    Caption = 'List Database'
    TabOrder = 10
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'POID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select  ItemID  from APTrPurchaseDt where PurchaseID = :POID')
    Left = 332
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=pusat' +
      'data.mdb;Mode=Share Deny None;Extended Properties="";Persist Sec' +
      'urity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry' +
      ' Path="";Jet OLEDB:Database Password=rsiposoptik;Jet OLEDB:Engin' +
      'e Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Part' +
      'ial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:Ne' +
      'w Database Password="";Jet OLEDB:Create System Database=False;Je' +
      't OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Co' +
      'mpact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet O' +
      'LEDB:SFP=False'
    LoginPrompt = False
    Provider = 'MSDAIPP.DSO'
    Left = 332
    Top = 56
  end
  object quAct: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 295
    Top = 134
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 327
    Top = 134
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 295
    Top = 166
  end
end
