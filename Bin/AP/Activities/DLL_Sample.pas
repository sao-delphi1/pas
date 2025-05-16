//===========================================================================*/
//                        Copyright (C) 2001-2002 by
//                                                                           */
//                    -- TEC-IT Datenverarbeitung GmbH --                    */
//   -- team for engineering and consulting in information technologies --   */
//                                                                           */
//                           All rights reserved.                            */
//                                                                           */
//              This is a Delphi Demo for TBarCode4 DLL                      */
//              Needs TBarCode4.ocx and TBarCode40_DLL_Lib.pas               */
//                                                                           */
//    This source code is only intended as a supplement to the references    */
//      and related electronic documentation provided with the product.      */
//                                                                           */
//     See these sources for detailed information regarding this product     */
//===========================================================================*/

unit DLL_Sample;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TBarCode51_DLL_Lib, ExtCtrls, Spin, QRCtrls, QuickRpt, DB,
  ADODB,ConMain;

type
  TForm1 = class(TForm)
  Button1: TButton;
  Edit1: TEdit;
  eBox_CountMod: TEdit;
  Label1: TLabel;
  Memo1: TMemo;
  ComboBox1: TComboBox;
  Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    speLeft: TSpinEdit;
    speTop: TSpinEdit;
    myReport: TQuickRep;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    Button2: TButton;
    PageHeaderBand1: TQRBand;
    qlbTipe: TQRLabel;
    qlbHasil: TQRLabel;
    quAct: TADOQuery;
    quAct1: TADOQuery;
    quTemp: TADOQuery;

  procedure Button1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
    procedure myReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
    procedure ErrMessage(eCode: TErrCode);
    procedure Fill_Barcode_List();

  public
    { Public declarations }
    POID : string;
  end;

var
	Form1	: TForm1;
var
	eCode	: TErrCode;
implementation
uses
	Printers, Types;

{$R *.DFM}

///////////////////////////////////////////////////////////////////////////////
//
//
///////////////////////////////////////////////////////////////////////////////
procedure TForm1.Button1Click(Sender: TObject);
var
	pText : LPCTSTR;	// LPCTSTR = PChar (used to handle over bar code data)
        Prntr : TPrinter;	// Printer object
       	pRect : TRect;          // Rectangle object - defines coordinates for printing
       	pBC   : t_BarCode;      // Pointer to bar code info structure - use it like a "handle"
        dHeight_mm      : string;
        dWidth_Pixel    : string;
        bMustFit        : LongBool;
        lf      : pLOGFONT;           // used to change font of bar code
        nCount  : LongInt;
        sCDBuf  : ACharBuff;
        imgrect : TRect;
begin

        // Place the licensing here, after you have got your license key
        // BCLicenseMe (LPCTSTR lpszLicensee, e_licKind eKindOfLicense, DWORD dwNoOfLicenses, LPCTSTR lpszKey, e_licProduct eProductID)
        // License Keys are available at http://www.tec-it.com/order/
	BCAlloc (pBC);				         // Allocate memory, initialize bar code structure, set Pointer to struct

        eCode := BCSetBCType (pBC, ComboBox1.itemindex); // set the bar code type to selection from combo box (was pre-filled according to our enumerations)
        // eCode := BCSetBCType (pBC, eBC_Code128);       // or set the bar code type to Code 128 using enumerations

        // eCode := BCSetCDMethod (pBC, eCDStandard);    // set check digit method for the selected bar code type

        if eCode = ErrOk then
        begin
                pText := LPCTSTR (Edit1.text);          //  Convert content of Edit1 to PChar data (demonstrates conversion)
                BCSetText (pBC, pText, 0);              // Set text/data of the bar code

                // Insert this commands if you want to change the font:
                // lf := BCGetLogFont(pBC);
                // lf.lfHeight := 16;
                // lf.lfFaceName := 'Tahoma';

                // Use this commands if you want to change the module width:
                // BCSetModWidth (pBC, '200');	   // Set module width to 0.2 mms
	        // bMustFit := True;		   // use LongBool for Boolean parameters
	        // BCSetMustFit (pBC, bMustFit);   // check if bar code fits into bounding rectangle during draw
        end;

        if eCode = ErrOK then
           eCode := BCCheck(pBC);               // Check text data for unallowed characters

        ErrMessage(eCode);                      // If an error occured, display message

        if eCode = ErrOk then
           eCode := BCCalcCD (pBC);           	// Calculate Check Digit

        ErrMessage(eCode);                      // If an error occured, display message

        if eCode = ErrOk then
        begin
        // only relevant if you want to know the calculated check digit
               if BCGetCheckDigits(pBC, NIL, 0) < SizeOf (sCDBuf) then // compare with buffer size
               begin
                    nCount := BCGetCheckDigits(pBC, @sCDBuf, SizeOf (sCDBuf)); // retrieve check digits into Char buffer
                    if nCount > 0 then
                            MessageBox(0, sCDBuf, 'Check Digit', MB_OK);
               end;
        end;

        if eCode = ErrOk then
        begin
            eCode := BCCreate (pBC);            // Create internal bar code info structure
                                                // after this step we can use all methods
                                                // that retrieve more information about the created bar code (BCGetCountModules...)
            ErrMessage(eCode);
        end;

	// if internal creation was OK we can start with drawing/printing
        if eCode = ErrOk then
        begin
      	        eBox_CountMod.Text := FloatToStr(BCGetCountModules(pBC));   // the number of bar/space elements in the bar code

                // how to draw bar code to image
                imgrect.Left    := Image1.ClientRect.Left;
                imgrect.Right   := Image1.ClientRect.Right;
                imgrect.Top     := Image1.ClientRect.Top;
                imgrect.Bottom  := Image1.ClientRect.Bottom;
                eCode	:= BCDraw (pBC, Image1.Canvas.Handle, imgrect);   // Draw bar code to the coordinates of pRect (in Pixel)
                Image1.Refresh();

                // do print out - draw bar code to printer device context
                if CheckBox1.Checked then
                  begin
                    Prntr := Printer;
                    Prntr.BeginDoc;

{                    pRect.Left := trunc (Prntr.PageWidth / 3);
                    pRect.Top  := 900;
//                    pRect.Top  := trunc (Prntr.PageHeight / 4);
//                    pRect.Right:= pRect.Left + 500;
                    pRect.Right:= trunc (Prntr.PageWidth - pRect.Left);
                    pRect.Bottom:= trunc (pRect.Top + 400);
//                    pRect.Bottom:= trunc (pRect.Top + (Prntr.PageHeight / 5));
}

//Untuk menentukan lebar dan tinggi barcode
                    pRect.Left := speLeft.Value;
                    pRect.Right:= pRect.Left + 60 * length(Edit1.Text);
//                    pRect.Right:= pRect.Left + 80 * length(Edit1.Text);
                    pRect.Top  := speTop.Value;
                    pRect.Bottom:= pRect.Top + 300;


      // how to get height or width (in mms or Pixel) of the symbol
      // dHeight_mm 	:= FloatToStr (BCGetBarcodeHeight(pBC, pRect, Prntr.Handle, eMUMM)); // get height in mm
      // dWidth_Pixel := FloatToStr (BCGetBarcodeWidth(pBC, pRect, Prntr.Handle, eMUPixel));  // get width in Pixel

                    eCode	:= BCDraw (pBC, Prntr.Handle, pRect);   // Draw bar code to the coordinates of pRect (in Pixel)
                    Prntr.Refresh();

      // The next step is only useful when a specific module with was set.
                    // we want to know if the bar code was drawn without clipping.
                    // (this error only occurs if BCSetMustFit(..) has been called before BCDraw)
                    if eCode = ErrNotFitintoBoundingRect then
                    begin
                     ErrMessage(eCode);
                            Prntr.Abort;  // cancel print job
                    end
                    else
                     Prntr.EndDoc;
                 end;
        end;
        BCFree (pBC);          // a must to avoid memory leaks:
                               // deallocate memory - frees internal bar code info structure
end;

///////////////////////////////////////////////////////////////////////////////
//
//
///////////////////////////////////////////////////////////////////////////////
procedure TForm1.FormCreate(Sender: TObject);
begin
	Fill_Barcode_List();
        Button1Click(Button1);
end;

///////////////////////////////////////////////////////////////////////////////
//
//
///////////////////////////////////////////////////////////////////////////////
procedure TForm1.Fill_Barcode_List();
var
  	aStr: array of string;
        imax: Integer;
        i   : Integer;
begin
	imax	:= BCGetBCCount ();	// get needed size for array
      	SetLength (aStr, imax);		// set length of the dynamic array
        BCGetBCList(aStr);		// now fill the array with the bar code types supported by TBarCode
        i	:= 0;
	while i < imax Do
	Begin
		Form1.ComboBox1.Items.Add (aStr[i]);
	        Inc(i);
        end;
        Form1.ComboBox1.ItemIndex := eBC_3OF9A; // Set to Code39 at start up
end;

///////////////////////////////////////////////////////////////////////////////
//
//
///////////////////////////////////////////////////////////////////////////////
procedure TForm1.ErrMessage(eCode: TErrCode);
begin

        if eCode = ErrOk then exit

        // check possible errors and inform user
        else if eCode = ErrWrongNumberOfCharacters then
	       	MessageBox(0, 'Wrong number of characters', 'Barcode Error', MB_OK)

        else if eCode = ErrInputStringTooLong then
	       	MessageBox(0, 'Input string too long - reduce data amount!', 'Barcode Error', MB_OK)

        // check error about wrong characters (e.g. unallowed alphanumeric)
        else if eCode = ErrWrongCharacter then
	       	MessageBox(0, 'Wrong character for this bar code type', 'Barcode Error', MB_OK)

        // check about implemented bar code types (some types are in the list, but not implemented yet)
        else if eCode = ErrNotSupported then
	       	MessageBox(0, 'Sorry - this bar code type is not supported!', 'Barcode Error', MB_OK)

        else if eCode = ErrNotFitintoBoundingRect then
               	MessageBox(0, 'Bar code does not fit into Bounding Rectangle', 'Drawing Error', MB_OK)

        else if eCode = ErrInvalidParameter then
               	MessageBox(0, 'Invalid parameter / syntax error', 'Drawing Error', MB_OK)
        else
              	MessageBox(0, 'Unidentified error code', 'Error', MB_OK);

end;

procedure TForm1.myReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i,j, pos : integer;
    p1, p2, p3 : PByteArray;
    bOke : boolean;
    gAsli, ghasil : TBitmap;
begin
  qrImage1.Picture := image1.Picture;

  gAsli := TBitmap.Create;
  gAsli := image1.Picture.Bitmap;
  gAsli.PixelFormat := pf24bit;

  ghasil := TBitmap.Create;
  ghasil := QRImage1.Picture.Bitmap;
  ghasil.Height := 40;
  gHasil.PixelFormat := pf24bit;

  for i := 0 to gAsli.Height - 1 do
    begin
      p1 := gASli.ScanLine[i];
      bOke := false;
      for j:= 0 to gAsli.Width * 3 - 3 do
        begin
          if p1[j] = 255 then
            begin
              bOke := true;
              break;;
            end;
        end;
      if bOke then
        begin
           pos := i;
           break;
        end;
    end;
  for i:= 0 to gHasil.Height - 1 do
    begin
      p1 := gAsli.ScanLine[pos];
      p2 := ghasil.ScanLine[i];
      for j:= 0 to gAsli.Width * 3 - 3 do
        p2[j] := p1[j];
    end;
  QRImage1.Canvas.Draw(0,0, gHasil);
end;

procedure TForm1.Button2Click(Sender: TObject);
var qty : integer;
begin
  qlbTipe.Caption := ComboBox1.Text;
  //qlbHasil.Caption := edit1.Text;



  With ADOQuery1,Sql do
  Begin
       Close;Clear;
       add('select  ItemID  from #tmpTable');

       Open;
  End;

  //ADOQuery1.Open;
  myReport.PreviewModal;
end;

procedure TForm1.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
	pText : LPCTSTR;	// LPCTSTR = PChar (used to handle over bar code data)
        Prntr : TPrinter;	// Printer object
       	pRect : TRect;          // Rectangle object - defines coordinates for printing
       	pBC   : t_BarCode;      // Pointer to bar code info structure - use it like a "handle"
        dHeight_mm      : string;
        dWidth_Pixel    : string;
        bMustFit        : LongBool;
        lf      : pLOGFONT;           // used to change font of bar code
        nCount  : LongInt;
        sCDBuf  : ACharBuff;
        imgrect : TRect;

    i,j, pos : integer;
    p1, p2, p3 : PByteArray;
    bOke : boolean;
    gAsli, ghasil : TBitmap;
begin


       	BCAlloc (pBC);				         // Allocate memory, initialize bar code structure, set Pointer to struct

        eCode := BCSetBCType (pBC, ComboBox1.itemindex); // set the bar code type to selection from combo box (was pre-filled according to our enumerations)
        // eCode := BCSetBCType (pBC, eBC_Code128);       // or set the bar code type to Code 128 using enumerations

        // eCode := BCSetCDMethod (pBC, eCDStandard);    // set check digit method for the selected bar code type

        if eCode = ErrOk then
        begin
                //pText := LPCTSTR (ADOQuery1.FieldByName('KODE').AsString);          //  Convert content of Edit1 to PChar data (demonstrates conversion)
                pText := LPCTSTR (Edit1.Text);          //  Convert content of Edit1 to PChar data (demonstrates conversion)
                BCSetText (pBC, pText, 0);              // Set text/data of the bar code

        end;

        if eCode = ErrOK then
           eCode := BCCheck(pBC);               // Check text data for unallowed characters

        ErrMessage(eCode);                      // If an error occured, display message

        if eCode = ErrOk then
           eCode := BCCalcCD (pBC);           	// Calculate Check Digit

        ErrMessage(eCode);                      // If an error occured, display message

        if eCode = ErrOk then
        begin
        // only relevant if you want to know the calculated check digit
               if BCGetCheckDigits(pBC, NIL, 0) < SizeOf (sCDBuf) then // compare with buffer size
               begin
                    nCount := BCGetCheckDigits(pBC, @sCDBuf, SizeOf (sCDBuf)); // retrieve check digits into Char buffer
                    if nCount > 0 then
                            MessageBox(0, sCDBuf, 'Check Digit', MB_OK);
               end;
        end;

        if eCode = ErrOk then
        begin
            eCode := BCCreate (pBC);            // Create internal bar code info structure
                                                // after this step we can use all methods
                                                // that retrieve more information about the created bar code (BCGetCountModules...)
            ErrMessage(eCode);
        end;

	// if internal creation was OK we can start with drawing/printing
        if eCode = ErrOk then
        begin
      	        eBox_CountMod.Text := FloatToStr(BCGetCountModules(pBC));   // the number of bar/space elements in the bar code

                // how to draw bar code to image
                imgrect.Left    := Image1.ClientRect.Left;
                imgrect.Right   := Image1.ClientRect.Right;
                imgrect.Top     := Image1.ClientRect.Top;
                imgrect.Bottom  := Image1.ClientRect.Bottom;
                eCode	:= BCDraw (pBC, Image1.Canvas.Handle, imgrect);   // Draw bar code to the coordinates of pRect (in Pixel)
                Image1.Refresh();

                // do print out - draw bar code to printer device context
        end;
        BCFree (pBC);          // a must to avoid memory leaks:
                               // deallocate memory - frees internal bar code info structure


  qrImage1.Picture := image1.Picture;

  gAsli := TBitmap.Create;
  gAsli := image1.Picture.Bitmap;
  gAsli.PixelFormat := pf24bit;

  ghasil := TBitmap.Create;
  ghasil := QRImage1.Picture.Bitmap;
  ghasil.Height := 40;
  gHasil.PixelFormat := pf24bit;

  for i := 0 to gAsli.Height - 1 do
    begin
      p1 := gASli.ScanLine[i];
      bOke := false;
      for j:= 0 to gAsli.Width * 3 - 3 do
        begin
          if p1[j] = 255 then
            begin
              bOke := true;
              break;;
            end;
        end;
      if bOke then
        begin
           pos := i;
           break;
        end;
    end;
  for i:= 0 to gHasil.Height - 1 do
    begin
      p1 := gAsli.ScanLine[pos];
      p2 := ghasil.ScanLine[i];
      for j:= 0 to gAsli.Width * 3 - 3 do
        p2[j] := p1[j];
    end;
  QRImage1.Canvas.Draw(0,0, gHasil);
  qlbHasil.Caption := ADOQuery1.FieldByName('ItemID').AsString;
 // qlbHasil.Caption := Edit1.Text;
//QRImage1.Width := round(length(ADOQuery1.FieldByName('KODE').AsString) * 8.6);

end;

end.
