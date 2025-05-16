//============================================================================
//                        Copyright (C) 2001-2002 by
//
//                    -- TEC-IT Datenverarbeitung GmbH --
//   -- team for engineering and consulting in information technologies --
//
//                           All rights reserved.
//
//               This is a Delphi wrapper for TBarcode4 DLL
//           Needs the File TBarCode5.ocx (DLL) and VIC32.DLL
//
//    This source code is only intended as a supplement to the References
//      and related electronic documentation provided with the product.
//
//     See these sources for detailed information regarding this product
//============================================================================

unit TBarCode51_DLL_Lib; {TBarcode V5 header file}

interface
uses
  SysUtils,Windows,Classes, Graphics, StdVCL;
///////////////////////////////////////////////////////////////////////////////
//
//	General Information
//
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//
//   If any of the BCxxxx functions below returns an error code not equal to
//	 zero than DO NOT call subsequent BCxxxx functions except of BCFree ().
//
//   An error code <> 0 indicates an error condition at subsequent calls
//	 (except to BCFree) may fail and produce unexpected results.
//
///////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
//
//   BCLicenseMe:This function licenses the DLL. It's not required to call this
//				function each time you use the DLL in your program (although
//				it's allowed).
//				Licensing must be performed per computer system at least once.
//				(e.g. in the setup program of your application)
//
//   BCAlloc:	This function initalizes the Barcode-Info structure.
//				It must be called before any other BCxxxx function.
//
//   BCCheck:	This function checks if the data charcters are valid for the
//				selected barcode type. If invalid data was encountered it
//				returns an error-code <> 0.
//				It must be called before BCCalcCD().
//
//   BCCalcCD:	This function computes the check digit(s) for the given data.
//				It must be called before BCCreate().
//
//   BCCreate:	This function prepares the barcode-info structure to be drawn
//				with BCDraw. It returns ErrOk if the everything is
//				ok. If not it returns an error-code which specifies the
//				error in more detail.
//
//   BCDraw:	This function draws a barcode into the given device-
//				context. No spacial mapping is performed.
//
//				* if nBarWidth is equal to BC_USEDEFAULT the standard
//				bar/space ratios are used. See TECBCEnum.h
//
//				* if sRatio is not NULL and is not equal to an empty string
//				then it is analyzed and the print ratios are adjusted as
//				specified in sRatio. See TECBCEnum.h
//
//				* if sModWidth is not NULL and is not equal to an empty string
//				then it is converted to a numeber which specifies the modul
//				width [1/1000 mm]. See TECBCEnum.h
//
//   BCGetRatioString
//				This function return a string containing intoamtion about the
//				expected ratio input.
//
//   BCGetMaxLenOfData
//				This function returns a long, representing the maximum allowed
//				number of chars for the pIn (RawData)
//
//
//   BCFree:	This function de-initalizes the Barcode-Info structure and
//				frees allocated memory. It must be called as last function.
//
///////////////////////////////////////////////////////////////////////////////

const
  ErrOk                     = $00000000;
  ErrNotSupported           = $80004001;
  ErrInvalidParameter       = $80070057;
  ErrWrongCharacter         = $8007000D;
  ErrWrongNumberOfCharacters= $80090004;
  ErrInputStringTooLong     = $8007007A;
  ErrNotFitintoBoundingRect = $80040140;

type TErrCode 	= LongWord;  // don not use Integer!

///////////////////////////////////////////////////////////////////////////////
//
//	Supported Barcodes
//
///////////////////////////////////////////////////////////////////////////////

// Use 4 Byte for Enums
{$Z4}

// constants for enum e_BarCType (Bar Code Types)
type
  e_BarCType = LongInt;
const
  eBC_None = $00000000;
  eBC_Code11 = $00000001;
  eBC_2OF5 = $00000002;
  eBC_2OF5IL = $00000003;
  eBC_2OF5IATA = $00000004;
  eBC_2OF5M = $00000005;
  eBC_2OF5DL = $00000006;
  eBC_2OF5IND = $00000007;
  eBC_3OF9 = $00000008;
  eBC_3OF9A = $00000009;
  eBC_EAN8 = $0000000A;
  eBC_EAN8P2 = $0000000B;
  eBC_EAN8P5 = $0000000C;
  eBC_EAN13 = $0000000D;
  eBC_EAN13P2 = $0000000E;
  eBC_EAN13P5 = $0000000F;
  eBC_EAN128 = $00000010;
  eBC_UPC12 = $00000011;
  eBC_CodaBar2 = $00000012;
  eBC_CodaBar18 = $00000013;
  eBC_Code128 = $00000014;
  eBC_DPLeit = $00000015;
  eBC_DPIdent = $00000016;
  eBC_Code16K = $00000017;
  eBC_49 = $00000018;
  eBC_9OF3 = $00000019;
  eBC_UPC25 = $0000001A;
  eBC_UPCD1 = $0000001B;
  eBC_Flattermarken = $0000001C;
  eBC_RSS14 = $0000001D;
  eBC_RSSLtd = $0000001E;
  eBC_RSSExp = $0000001F;
  eBC_UPCSCC = $00000020;
  eBC_UCC128 = $00000021;
  eBC_UPCA = $00000022;
  eBC_UPCAP2 = $00000023;
  eBC_UPCAP5 = $00000024;
  eBC_UPCE = $00000025;
  eBC_UPCEP2 = $00000026;
  eBC_UPCEP5 = $00000027;
  eBC_PostNet5 = $00000028;
  eBC_PostNet6 = $00000029;
  eBC_PostNet8 = $0000002A;
  eBC_PostNet10 = $0000002B;
  eBC_PostNet11 = $0000002C;
  eBC_PostNet12 = $0000002D;
  eBC_Plessey = $0000002E;
  eBC_MSI = $0000002F;
  eBC_SSCC18 = $00000030;
  eBC_FIM = $00000031;
  eBC_LOGMARS = $00000032;
  eBC_Pharma1 = $00000033;
  eBC_PZN = $00000034;
  eBC_Pharma2 = $00000035;
  eBC_GP = $00000036;
  eBC_PDF417 = $00000037;
  eBC_PDF417Trunc = $00000038;
  eBC_MAXICODE = $00000039;
  eBC_QRCode = $0000003A;
  eBC_Code128A = $0000003B;
  eBC_Code128B = $0000003C;
  eBC_Code128C = $0000003D;
  eBC_9OF3A = $0000003E;
  eBC_AusPostCustom = $0000003F;
  eBC_AusPostCustom2 = $00000040;
  eBC_AusPostCustom3 = $00000041;
  eBC_AusPostReplyPaid = $00000042;
  eBC_AusPostRouting = $00000043;
  eBC_AusPostRedirect = $00000044;
  eBC_ISBN = $00000045;
  eBC_RM4SCC = $00000046;
  eBC_DataMatrix = $00000047;
  eBC_EAN14 = $00000048;
  eBC_CODABLOCK_E = $00000049;
  eBC_CODABLOCK_F = $0000004A;
  eBC_NVE18 = $0000004B;


///////////////////////////////////////////////////////////////////////////////
//
//	Supported Check Digit Methods
//
///////////////////////////////////////////////////////////////////////////////
type
  e_CDMethod = LongInt;
const
  eCDNone = $00000000;
  eCDStandard = $00000001;
  eCDMod10 = $00000002;
  eCDMod43 = $00000003;
  eCD2Mod47 = $00000004;
  eCDDPLeit = $00000005;
  eCDDPIdent = $00000006;
  eCD1Code11 = $00000007;
  eCD2Code11 = $00000008;
  eCDPostnet = $00000009;
  eCDMSI1 = $0000000A;
  eCDMSI2 = $0000000B;
  eCDPlessey = $0000000C;
  eCDEAN8 = $0000000D;
  eCDEAN13 = $0000000E;
  eCDUPCA = $0000000F;
  eCDUPCE = $00000010;
  eCDEAN128 = $00000011;
  eCDCode128 = $00000012;
  eCDRM4SCC = $00000013;
  eCDPZN = $00000014;
  eCDMod11W7 = $00000015;
  eCDEAN14 = $00000016;

// Constants for enum e_Degree
type
  e_Degree = LongInt;
const
  deg0 = $00000000;
  deg90 = $00000001;
  deg180 = $00000002;
  deg270 = $00000003;

// Constants for enum e_MUnit
type
  e_MUnit = LongInt;
const
  eMUDefault = $00000000;
  eMUPixel = $00000001;
  eMUMM = $00000002;

// Constants for enum e_ImageType
type
  e_IMType = LongInt;
const
  eIMBmp = $00000000;
  eIMEmf = $00000001;
  eIMEps = $00000002;
  eIMGif = $00000003;
  eIMJpg = $00000004;
  eIMPcx = $00000005;
  eIMPng = $00000006;
  eIMTif = $00000007;
  eIMPsVector = $00000008;

// Constants for enum tag_Interpretation
type
  e_Interpretation = LongInt;
const
  eInt_Default = $00000000;
  eInt_ANSI = $00000001;
  eInt_ByteStream = $00000002;
  eInt_BYTE_HILO = $00000003;
  eInt_UNICODE = $00000004;

  // Constants for quiet zone, enum tag_QZMUnit
type
  e_QZMUnit = LongInt;
const
  eQZMUNone = $00000000;
  eQZMUModules = $00000001;
  eQZMUMM = $00000002;
  eQZMUMils = $00000003;
  eQZMUPixel = $00000004;

// Constants for enum e_licProduct
type
  e_licProduct = LongInt;
const
  eLicInvalid = $FFFFFFFF;
  eLicProd1D = $0000000D;
  eLicProd2D = $0000000E;

// Constants for enum e_licKind
type
  e_licKind = LongInt;
const
  eLicKindSingle = $00000001;
  eLicKindSite = $00000002;
  eLicKindDeveloper = $00000003;

// Constants for enum e_DMSizes
type
  e_DMSizes = LongInt;
const
  eDMSz_Default = $00000000;
  eDMSz_10x10 = $00000001;
  eDMSz_12x12 = $00000002;
  eDMSz_14x14 = $00000003;
  eDMSz_16x16 = $00000004;
  eDMSz_18x18 = $00000005;
  eDMSz_20x20 = $00000006;
  eDMSz_22x22 = $00000007;
  eDMSz_24x24 = $00000008;
  eDMSz_26x26 = $00000009;
  eDMSz_32x32 = $0000000A;
  eDMSz_36x36 = $0000000B;
  eDMSz_40x40 = $0000000C;
  eDMSz_44x44 = $0000000D;
  eDMSz_48x48 = $0000000E;
  eDMSz_52x52 = $0000000F;
  eDMSz_64x64 = $00000010;
  eDMSz_72x72 = $00000011;
  eDMSz_80x80 = $00000012;
  eDMSz_88x88 = $00000013;
  eDMSz_96x96 = $00000014;
  eDMSz_104x104 = $00000015;
  eDMSz_120x120 = $00000016;
  eDMSz_132x132 = $00000017;
  eDMSz_144x144 = $00000018;
  eDMSz_8x18 = $00000019;
  eDMSz_8x32 = $0000001A;
  eDMSz_12x26 = $0000001B;
  eDMSz_12x36 = $0000001C;
  eDMSz_16x36 = $0000001D;
  eDMSz_16x48 = $0000001E;

// Constants for enum e_DMFormat
type
  e_DMFormat = LongInt;
const
  eDMPr_Default = $00000000;
  eDMPr_UCCEAN = $00000001;
  eDMPr_Industry = $00000002;
  eDMPr_Macro05 = $00000003;
  eDMPr_Macro06 = $00000004;


// QR Code Versions (symbol sizes)
type
  e_QRVersion = LongInt;
const
  eQRVers_Default =     $00000000;
  eQRVers_1 = 		$00000001;
  eQRVers_2 = 		$00000002;
  eQRVers_3 = 		$00000003;
  eQRVers_4 = 		$00000004;
  eQRVers_5 = 		$00000005;
  eQRVers_6 = 		$00000006;
  eQRVers_7 = 		$00000007;
  eQRVers_8 = 		$00000008;
  eQRVers_9 = 		$00000009;
  eQRVers_10= 		$0000000A;
  eQRVers_11= 		$0000000B;
  eQRVers_12= 		$0000000C;
  eQRVers_13= 		$0000000D;
  eQRVers_14= 		$0000000E;
  eQRVers_15= 		$0000000F;
  eQRVers_16= 		$00000010;
  eQRVers_17= 		$00000011;
  eQRVers_18= 		$00000012;
  eQRVers_19= 		$00000013;
  eQRVers_20= 		$00000014;
  eQRVers_21= 		$00000015;
  eQRVers_22= 		$00000016;
  eQRVers_23= 		$00000017;
  eQRVers_24= 		$00000018;
  eQRVers_25= 		$00000019;
  eQRVers_26= 		$0000001A;
  eQRVers_27= 		$0000001B;
  eQRVers_28= 		$0000001C;
  eQRVers_29= 		$0000001D;
  eQRVers_30= 		$0000001E;
  eQRVers_31= 		$0000001F;
  eQRVers_32= 		$00000020;
  eQRVers_33= 		$00000021;
  eQRVers_34= 		$00000022;
  eQRVers_35= 		$00000023;
  eQRVers_36= 		$00000024;
  eQRVers_37= 		$00000025;
  eQRVers_38= 		$00000026;
  eQRVers_39= 		$00000027;
  eQRVers_40= 		$00000028;

// QR Code Formats
type
  e_QRFormat = LongInt;
const
  eQRPr_Default  =     $00000000;
  eQRPr_UCCEAN   =     $00000001;
  eQRPr_Industry =     $00000002;

// QR Code Error Correction Levels
type
  e_QRECLevel = LongInt;
const
  eQREC_Low     = $00000000;
  eQREC_Medium  = $00000001;
  eQREC_Quality = $00000002;
  eQREC_High    = $00000003;

// Pointer to internal bar code struct
type
   t_BarCode = Pointer;
type
   size_t = LongInt;

// buffer (char array) used for BCGetCheckDigits
type
   ACharBuff = packed Array [0..$f] of Char;
type
   pACharBuff = ^ACharBuff;

// Function declaration

// SET Properties
Function BCSetColorBC		(const pBarCode:t_BarCode; color:COLORREF):TErrCode; stdcall;
Function BCSetColorFont		(const pBarCode:t_BarCode; color:COLORREF):TErrCode; stdcall;
Function BCSetColorBk		(const pBarCode:t_BarCode; color:COLORREF):TErrCode; stdcall;
Function BCSetBkMode		(const pBarCode:t_BarCode; nMode:LongInt):TErrCode; stdcall;
Function BCSetLogFont		(const pBarCode:t_BarCode; lf:LOGFONT):TErrCode; stdcall;
Function BCSetBCType		(const pBarCode:t_BarCode; eType:e_BarCType):TErrCode; stdcall;
Function BCSetCDMethod		(const pBarCode:t_BarCode; eMethod:e_CDMethod):TErrCode; stdcall;
Function BCSetAutoCorrect	(const pBarCode:t_BarCode; bAutoCorrect:Longbool):TErrCode; stdcall;
Function BCSetRotation		(const pBarCode:t_BarCode; eRotation:e_Degree):TErrCode; stdcall;
Function BCSetPrintText		(const pBarCode:t_BarCode; bReadable:Longbool; bAbove:Longbool):TErrCode; stdcall;
Function BCSetGuardWidth	(const pBarCode:t_BarCode; nGuardWidth:LongInt):TErrCode; stdcall;
Function BCSetTextDist		(const pBarCode:t_BarCode; nTextDist	:LongInt):TErrCode; stdcall;
Function BCSetNotchHeight	(const pBarCode:t_BarCode; nHeight:LongInt):TErrCode; stdcall;
Function BCSetTranslateEsc	(const pBarCode:t_BarCode; bTranslate:Longbool):TErrCode; stdcall;
Function BCSetMustFit		(const pBarCode:t_BarCode; bMustFit:Longbool):TErrCode; stdcall;
Function BCSetOptResolution     (const pBarCode:t_BarCode; bOpt:Longbool):TErrCode; stdcall;
Function BCSetMirror		(const pBarCode:t_BarCode; bMirror:Longbool):TErrCode; stdcall;
Function BCSetText		(const pBarCode:t_BarCode; szText:LPCTSTR; nLen:LongInt):TErrCode; stdcall;
Function BCSetTextW		(const pBarCode:t_BarCode; szText:LPCWSTR; nLen:LongInt):TErrCode; stdcall;

Function BCSetModWidth		(const pBarCode:t_BarCode; szModWidth:LPCTSTR):TErrCode; stdcall;
Function BCSetFormat		(const pBarCode:t_BarCode; szFormat:LPCTSTR):TErrCode; stdcall;
Function BCSetRatio		(const pBarCode:t_BarCode; szRatio:LPCTSTR):TErrCode; stdcall;

Function BCSet_PDF417_Rows 	(const pBarCode:t_BarCode; nRows:LPCTSTR):TErrCode; stdcall;
Function BCSet_PDF417_Columns	(const pBarCode:t_BarCode; nColumns:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_ECLEvel	(const pBarCode:t_BarCode; nLevel:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_RowHeight	(const pBarCode	:t_BarCode; nHeight:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_SegIndex	(const pBarCode:t_BarCode; nSegInx:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_FileID	(const pBarCode:t_BarCode; szFileID:LPCTSTR):TErrCode; stdcall;
Function BCSet_PDF417_SegLast	(const pBarCode:t_BarCode; bSegLast:Longbool):TErrCode; stdcall;
Function BCSet_PDF417_FileName	(const pBarCode:t_BarCode; szFileName:LPCTSTR):TErrCode; stdcall;
Function BCSet_PDF417_SegCount	(const pBarCode:t_BarCode; nSegCount:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_TimeStamp	(const pBarCode:t_BarCode; nTimeStamp:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_Sender	(const pBarCode:t_BarCode; szSender:LPCTSTR):TErrCode; stdcall;
Function BCSet_PDF417_Addressee	(const pBarCode	:t_BarCode; szAddressee:LPCTSTR):TErrCode; stdcall;
Function BCSet_PDF417_FileSize	(const pBarCode:t_BarCode; nFileSize:LongInt):TErrCode; stdcall;
Function BCSet_PDF417_CheckSum	(const pBarCode:t_BarCode; nCheckSum:LongInt):TErrCode; stdcall;

Function BCSet_Maxi_Mode	(const pBarCode:t_BarCode; nMode:LongInt):TErrCode; stdcall;
Function BCSet_Maxi_Append	(const pBarCode:t_BarCode; nSum:LongInt; nIndex:LongInt):TErrCode; stdcall;
Function BCSet_Maxi_UnderCut	(const pBarCode:t_BarCode; nUndercut:LongInt):TErrCode; stdcall;
Function BCSet_Maxi_UsePreamble	(const pBarCode	:t_BarCode; bUse:Longbool; szDate:LPCTSTR):TErrCode;stdcall;
Function BCSet_Maxi_SCM		(const pBarCode:t_BarCode; szServiceClass:LPCTSTR; szCountryCode:LPCTSTR; szPostalCode:LPCTSTR):TErrCode;stdcall;

Function BCSet_DM_Size		(const pBarCode:t_BarCode; eSize:e_DMSizes):TErrCode; stdcall;
Function BCSet_DM_Rectangular	(const pBarCode:t_BarCode; bRect:Longbool):TErrCode;stdcall;
Function BCSet_DM_Format	(const pBarCode:t_BarCode; eFormat:e_DMFormat):TErrCode;stdcall;
Function BCSet_DM_Append	(const pBarCode:t_BarCode; nSum:LongInt; nIndex:LongInt; nFileID:LongInt):TErrCode; stdcall;

Function BCSet_QR_Version        (const pBarCode:t_BarCode; eVersion:e_QRVersion):TErrCode; stdcall;
Function BCSet_QR_Format         (const pBarCode:t_BarCode; eFormat :e_QRFormat):TErrCode;  stdcall;
Function BCSet_QR_FmtAppIndicator(const pBarCode:t_BarCode; szIndicator :LPCTSTR):TErrCode;  stdcall;
Function BCSet_QR_ECLevel        (const pBarCode:t_BarCode; eECLevel :e_QRECLevel):TErrCode; stdcall;
Function BCSet_QR_Mask           (const pBarCode:t_BarCode; nMask:LongInt):TErrCode; stdcall;
Function BCSet_QR_Append         (const pBarCode:t_BarCode; nSum :LongInt; nIndex:LongInt; bParity:Byte):TErrCode; stdcall;

// GET Properties
Function BCGetColorBC		(const pBarCode:t_BarCode):COLORREF; stdcall;
Function BCGetColorFont		(const pBarCode:t_BarCode):COLORREF; stdcall;
Function BCGetColorBk		(const pBarCode:t_BarCode):COLORREF; stdcall;
Function BCGetBkMode		(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGetLogFont		(const pBarCode:t_BarCode):pLOGFONT; stdcall;
Function BCGetBCType		(const pBarCode:t_BarCode):e_BarCType; stdcall;
Function BCGetCDMethod		(const pBarCode:t_BarCode):e_CDMethod; stdcall;
Function BCGetAutoCorrect	(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetRotation		(const pBarCode:t_BarCode):e_Degree; stdcall;
Function BCGetPrintText		(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetTextAbove		(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetGuardWidth	(const pBarCode:t_BarCode): Longbool; stdcall;
Function BCGetTextDist		(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGetNotchHeight	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGetTranslateEsc	(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetMustFit		(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetOptResolution	(const pBarCode:t_BarCode):Longbool; stdcall;

Function BCIsTextUnicode	(const pBarCode:t_BarCode):Longbool; stdcall;

Function BCGetMirror		(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGetText		(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGetTextW		(const pBarCode:t_BarCode):LPCWSTR; stdcall;
Function BCGetTextLen		(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGetModWidth		(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGetFormat		(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGetRatio		(const pBarCode:t_BarCode):LPCTSTR; stdcall;

Function BCGet_PDF417_Rows	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_Columns	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_ECLEvel	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_RowHeight	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_SegIndex	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_FileID	(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_PDF417_SegLast	(const pBarCode:t_BarCode):Longbool;stdcall;
Function BCGet_PDF417_FileName	(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_PDF417_SegCount	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_TimeStamp	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_Sender	(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_PDF417_Addressee	(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_PDF417_FileSize	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_PDF417_CheckSum	(const pBarCode:t_BarCode):LongInt; stdcall;

Function BCGet_Maxi_Mode	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_Maxi_AppendSum	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_Maxi_AppendIndex	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_Maxi_UnderCut	(const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_Maxi_UsePreamble	(const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGet_Maxi_PreambleDate(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_Maxi_SCMServClass(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_Maxi_SCMCountryCode(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_Maxi_SCMPostalCode(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_DM_Size		 (const pBarCode:t_BarCode):e_DMSizes; stdcall;
Function BCGet_DM_Rectangular	 (const pBarCode:t_BarCode):Longbool; stdcall;
Function BCGet_DM_Format	 (const pBarCode:t_BarCode):e_DMFormat; stdcall;
Function BCGet_DM_AppendSum	 (const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_DM_AppendIndex	 (const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_DM_AppendFileID	 (const pBarCode:t_BarCode):LongInt; stdcall;

Function BCGet_QR_Version        (const pBarCode:t_BarCode):e_QRVersion; stdcall;
Function BCGet_QR_Format         (const pBarCode:t_BarCode):e_QRFormat; stdcall;
Function BCGet_QR_FmtAppIndicator(const pBarCode:t_BarCode):LPCTSTR; stdcall;
Function BCGet_QR_ECLevel        (const pBarCode:t_BarCode):e_QRECLevel; stdcall;
Function BCGet_QR_Mask           (const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_QR_AppendSum      (const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_QR_AppendIndex    (const pBarCode:t_BarCode):LongInt; stdcall;
Function BCGet_QR_AppendParity   (const pBarCode:t_BarCode):Byte; stdcall;

// Methods
Function BCLicenseMe		 (lpszLicensee:PChar; eKindOfLicense:e_licKind; dwNoOfLicenses:DWord; lpszKey:PChar; eProductID:e_licProduct):TErrCode;stdcall;
Function BCAlloc		 (out pBarCode:t_BarCode):TErrCode;stdcall;
Function BCFree			 (const pBarCode:t_BarCode):TErrCode; stdcall;
Function BCGetRatioString	 (eType:e_BarCType):LPCTSTR;stdcall;
Function BCGetRatioHint		 (eType:e_BarCType):LPCTSTR;stdcall;
Function BCGetMaxLenOfData	 (eType:e_BarCType):LongInt;stdcall;
Function BCCheck		 (const pBarCode:t_BarCode):TErrCode;stdcall;
Function BCCalcCD		 (const pBarCode:t_BarCode):TErrCode;stdcall;
Function BCCreate		 (const pBarCode:t_BarCode):TErrCode;stdcall;
Function BCDraw			 (const pBarCode:t_BarCode; hDC:HDC; var pRect:TRect):TErrCode;stdcall;

Function BCGetBCList		 (var aStr:array of string):Integer;
Function BCGetBCCount		 ():LongInt;stdcall;
Function BCGetCDListByType	 (eBCType:e_BarCType;var aCDMethod:array of e_CDMethod):integer;
Function BCGetNameFromEnum	 (eCDMethod:e_CDMethod):LPCTSTR;stdcall;
Function BCGetCDList		 (var aStr:array of String):Integer;
Function BCGetCDCount		 ():LongInt;stdcall;

Function BCGetCheckDigits        (const pBarCode:t_BarCode; lpszCDText:pACharBuff; nBufSize:LongInt):LongInt;stdcall;

Function BCGetDataMatrixSizes	 (var aStr:array of String):Integer;
Function BCGetDataMatrixSizesCount():LongInt;stdcall;

Function BCGetQRCodeVersions	 (var aStr:array of string):Integer;
Function BCGetQRCodeVersionCount ():LongInt;stdcall;

Function BCGetCountModules	 (const pBarCode:t_BarCode):Double;stdcall;
Function BCGetCountRows		 (const pBarCode:t_BarCode):Double;stdcall;

Function BCGetModuleWidth	 (const pBarCode:t_BarCode; var pRect:TRect; hDC:HDC; eUnit:e_MUnit):Double;stdcall;
Function BCGetBarcodeWidth	 (const pBarCode:t_BarCode; var pRect:TRect; hDC:HDC; eUnit:e_MUnit):Double;stdcall;
Function BCGetBarcodeHeight	 (const pBarCode:t_BarCode; var pRect:TRect; hDC:HDC; eUnit:e_MUnit):Double;stdcall;

Function BCGetCountBars		 (eBarCType:e_BarCType):LongInt;stdcall;
Function BCGetCountSpaces	 (eBarCType:e_BarCType):LongInt;stdcall;

Procedure BCGetErrorText	 (eCode:TErrCode; var szText:LPTSTR; var nSize:size_t);safecall;

Function BCCopyToClipboard	 (const pBarCode:t_BarCode; nWidth:LongInt; nHeight:LongInt):TErrCode;stdcall;
Function BCCopyToClipboardEx	 (const pBarCode:t_BarCode; hDC:HDC; nWidth:LongInt; nHeight:LongInt; fTransparent:LongBool; crBkCol:COLORREF; szFileName:LPCTSTR):TErrCode;stdcall;

Function BCSaveImage		 (const pBarCode:t_BarCode; lpszFileName:LPCTSTR; eImageType:e_IMType; lXSize:LongInt; lYSize:LongInt; lXRes:LongInt; lYRes:LongInt):TErrCode;stdcall;
Function BCSaveImageEx		 (const pBarCode:t_BarCode; hDC:HDC; lpszFileName:LPCTSTR; eImageType:e_IMType; lQuality:LongInt; lXSize:LongInt; lYSize:LongInt; lXRes:LongInt; lYRes:LongInt):TErrCode;stdcall;
Function BCSaveImageToBuffer	 (const pBarCode:t_BarCode; var lpszBuffer	:LPTSTR; eImageType:e_IMType; lXSize:LongInt; lYSize:LongInt; lXRes:LongInt; lYRes:LongInt):TErrCode; stdcall;
Function BCSaveImageToBufferEx   (const pBarCode:t_BarCode; hDC:HDC; var lpszBuffer:LPTSTR; eImageType:e_IMType; lQuality:LongInt; lXSize:LongInt; lYSize:LongInt; lXRes:LongInt; lYRes:LongInt):TErrCode; stdcall;

//////////////////////////////////////////////////////////////////////////////////
//
//                       I m p l e m e n t a t i o n
//
//////////////////////////////////////////////////////////////////////////////////

implementation {----------------------------------------------}

// C-Style LPCTSTR Array
type
   PCharArray = packed Array [0..$fff] of PChar;
type
   pPCharArray = ^PCharArray;

// C-Style Long Array
type
   IntArray = packed Array [0..$fff] of LongInt;
type
   pIntArray = ^IntArray;

///////////////////////////////////////////////////////////////////////////////
//
//   Private C-Dll Functions (conversion of C style to Delphi)
//
///////////////////////////////////////////////////////////////////////////////

// These Functions return PCharArrays so we encapsulate them to get easy usage

Function BCGetBCList_Imp		():pPCharArray; stdcall; Forward;
Function BCGetCDListByType_Imp		(eBCType:e_BarCType):pIntArray;stdcall; Forward;
Function BCGetCDList_Imp		():pPCharArray; stdcall; Forward;
Function BCGetDataMatrixSizes_Imp       ():pPCharArray; stdcall; Forward;
Function BCGetQRCodeVersions_Imp        ():pPCharArray; stdcall; Forward;

///////////////////////////////////////////////////////////////////////////////
// Copies a LPCTSTR* (Array) to a String Array
// This dynamic String array has to be allocated outside
// (example SetLength (strArray, 10))
// If the size of the StringArray is lower then the number of elements to copy,
// then the Array won't be resized.
///////////////////////////////////////////////////////////////////////////////
Procedure Copy_PCharArray_To_StringArray(pPCA:pPCharArray; var aStr:array of String; countArray: LongInt);safecall;
var
  i: Integer;
  maxIndex: Integer;
begin
  i:=        0;
  maxIndex:= countArray - 1;
  while i <= maxIndex Do
  Begin
    if (i <= High(aStr)) then aStr[i]:= pPCA[i];
    Inc(i);
  end;
end;

///////////////////////////////////////////////////////////////////////////////
// Copies a LongInt Array to an e_CDMethod Array
// This dynamic CDMethodArray has to be allocated outside
// Example: SetLength (m_CDMethodArray, 10)
// If the size of the CDMethodArray is lower then the elements to copy,
// then the Array won't be resized.
// Returns the count of elements of the LongInt Array
///////////////////////////////////////////////////////////////////////////////
Function Copy_IntArray_To_CDMethodArray (pIntA: pIntArray;var aCDMethod: array of e_CDMethod): Integer; safecall;
var
  i: Integer;
  v1: Variant;
begin
  i:=         0;
  while (pIntA^[i] > -1) Do
  Begin
    v1 := pIntA^[i];
    if (i <= High(aCDMethod)) then aCDMethod[i]:= v1;
    Inc(i);
  end;
  Copy_IntArray_To_CDMethodArray := i;
end;

//-----------------------------------------------------------------------------
//
//	P R O P E R T Y	  S E T - Functions
//
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
//	Set bar code color
///////////////////////////////////////////////////////////////////////////////
Function BCSetColorBC
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
color		:COLORREF	// IN : color (TColorRef)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set font color
///////////////////////////////////////////////////////////////////////////////
Function BCSetColorFont
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
color		:COLORREF	// IN : color (TColorRef)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set background color
///////////////////////////////////////////////////////////////////////////////
Function BCSetColorBk
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
color		:COLORREF	// IN : color (TColorRef)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set background mode/background style
///////////////////////////////////////////////////////////////////////////////
Function BCSetBkMode
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nMode		:LongInt	// IN : background mode
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set log font
//	attention:	set lfHeight field to the point size of the font!
///////////////////////////////////////////////////////////////////////////////
Function BCSetLogFont
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
lf		:LOGFONT	// IN : TLogFont (TFont) structure
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set bar code type
///////////////////////////////////////////////////////////////////////////////
Function BCSetBCType
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eType		:e_BarCType	// IN : bar code type
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set check digit method
///////////////////////////////////////////////////////////////////////////////
Function BCSetCDMethod
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eMethod		:e_CDMethod	// IN : check digit method
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set auto correct
///////////////////////////////////////////////////////////////////////////////
Function BCSetAutoCorrect
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bAutoCorrect	:Longbool	// IN : autocorrect -> T/F
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set rotation
///////////////////////////////////////////////////////////////////////////////
Function BCSetRotation
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eRotation	:e_Degree	// IN : rotation
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set print text visible / text above
///////////////////////////////////////////////////////////////////////////////
Function BCSetPrintText
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bReadable	:Longbool;	// IN : print readable text
bAbove		:Longbool	// IN : print text above
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set guard width
///////////////////////////////////////////////////////////////////////////////
Function BCSetGuardWidth
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nGuardWidth	:LongInt	// IN : guard width  [1/1000 mm]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set text distance
///////////////////////////////////////////////////////////////////////////////
Function BCSetTextDist
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nTextDist	:LongInt	// IN : Text distance: bar code <--> text [1/1000 mm]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set notch height (bar code types EAN...; UPC...)
///////////////////////////////////////////////////////////////////////////////
Function BCSetNotchHeight
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nHeight		:LongInt	// IN : notch height [1/1000 mm]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Tranlate Escape Sequences
///////////////////////////////////////////////////////////////////////////////
Function BCSetTranslateEsc
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bTranslate	:Longbool	// IN : translate -> T/F
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set must fit flag
///////////////////////////////////////////////////////////////////////////////
Function BCSetMustFit
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bMustFit	:Longbool	// IN : bar code must fit into bounding rectangle -> T/F
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set 'round to pixel' flag
///////////////////////////////////////////////////////////////////////////////
Function BCSetOptResolution
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bOpt            :Longbool	// IN : adapt module width to pixel width
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set mirror flag
///////////////////////////////////////////////////////////////////////////////
Function BCSetMirror
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bMirror		:Longbool	// IN : mirror bar code -> T/F
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set bar code text
///////////////////////////////////////////////////////////////////////////////
Function BCSetText
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szText		:LPCTSTR;	// IN : barcode text (Ansi string)
nLen		:LongInt	// IN :	length of input string; 0 .. terminated by \0
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set bar code text (Unicode version)
///////////////////////////////////////////////////////////////////////////////
Function BCSetTextW
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szText		:LPCWSTR;	// IN : barcode text (Unicode string)
nLen		:LongInt	// IN :	length of input string; 0 .. terminated by \0
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set module width
///////////////////////////////////////////////////////////////////////////////
Function BCSetModWidth
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szModWidth	:LPCTSTR	// IN : module width (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set format
///////////////////////////////////////////////////////////////////////////////
Function BCSetFormat
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szFormat	:LPCTSTR	// IN : format (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set ratio
///////////////////////////////////////////////////////////////////////////////
Function BCSetRatio
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szRatio		:LPCTSTR	// IN : ratio	(LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set PDF417 rows
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_Rows
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nRows		:LPCTSTR	// IN : number of rows [3..90] (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set PDF417 columns
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_Columns
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nColumns	:LongInt	// IN : number of columns [1..30]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set PDF417 error correction level
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_ECLEvel
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nLevel		:LongInt	// IN : error correction level [0..8]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set PDF417 row height
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_RowHeight
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nHeight		:LongInt	// IN : row height [1/1000 mm]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 segment index
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_SegIndex
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nSegInx		:LongInt	// IN : segment index
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 FileID
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_FileID
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szFileID	:LPCTSTR	// IN : File ID string (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set if actual segment symbol is the last one
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_SegLast
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bSegLast	:Longbool	// IN : Is last segment T/F
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 File Name
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_FileName
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szFileName	:LPCTSTR	// IN : File name (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 segment count
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_SegCount
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nSegCount	:LongInt	// IN : segment count
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 Time Stamp
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_TimeStamp
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nTimeStamp	:LongInt	// IN : time stamp
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 Sender
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_Sender
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szSender	:LPCTSTR	// IN : Sender (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 Addressee
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_Addressee
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szAddressee	:LPCTSTR	// IN : Addressee (LPCTSTR = Ansistring)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 File Size
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_FileSize
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nFileSize	:LongInt	// IN : File Size
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Macro PDF417 File Size
///////////////////////////////////////////////////////////////////////////////
Function BCSet_PDF417_CheckSum
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nCheckSum	:LongInt	// IN : Check sum
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Maxi code mode
///////////////////////////////////////////////////////////////////////////////
Function BCSet_Maxi_Mode
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nMode		:LongInt	// IN : mode [2..5]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Maxi code structured append
///////////////////////////////////////////////////////////////////////////////
Function BCSet_Maxi_Append
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nSum		:LongInt;	// IN : number of symbols [2..8]
nIndex		:LongInt	// IN : index of symbol [1..8]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Maxi code undercut of hexagon
///////////////////////////////////////////////////////////////////////////////
Function BCSet_Maxi_UnderCut
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nUndercut	:LongInt	// IN : undercut in percent [1..100]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Maxi code use preamble
///////////////////////////////////////////////////////////////////////////////
Function BCSet_Maxi_UsePreamble
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bUse		:Longbool;	// IN : Use preamble ("[)>...")->T/F
szDate		:LPCTSTR	// IN : preamble date (only, if using preamble)
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Maxi code structured carrier message (SCM)
///////////////////////////////////////////////////////////////////////////////
Function BCSet_Maxi_SCM
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szServiceClass	:LPCTSTR;	// IN : service class (LPCTSTR = Ansistring)
szCountryCode	:LPCTSTR;	// IN : country code
szPostalCode	:LPCTSTR	// IN : postal code
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Data Matrix Size
///////////////////////////////////////////////////////////////////////////////
Function BCSet_DM_Size
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eSize		:e_DMSizes		// IN :	bar code size
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Is Data Matrix rectangular -> TRUE/FALSE
///////////////////////////////////////////////////////////////////////////////
Function BCSet_DM_Rectangular
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
bRect		:Longbool	// IN :	rectangular TRUE/FALSE
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Data Matrix Format (UCC/EAN, Macro05, Macro06,
//	particual industry, default)
///////////////////////////////////////////////////////////////////////////////
Function BCSet_DM_Format
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eFormat		:e_DMFormat	// IN : Data Matrix format
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Set Data Matrix structured append
///////////////////////////////////////////////////////////////////////////////
Function BCSet_DM_Append
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nSum		:LongInt;	// IN : number of symbols [2..8]
nIndex		:LongInt;	// IN : index of symbol [1..8]
nFileID		:LongInt	// IN : File ID (must be the same in all symbols)
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Set QR Code version (= symbol size)
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_Version
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eVersion        :e_QRVersion	// IN :	symbol version (size)
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Set QR Code Format (UCC/EAN, Industry, default)
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_Format
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eFormat         :e_QRFormat    // IN : QR Code format
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Set QR Code Format application indicator (used with Industry format)
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_FmtAppIndicator
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
szIndicator     :LPCTSTR	// IN :	format application indicator
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code Error Correction Level
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_ECLevel
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
eECLevel        :e_QRECLevel    // IN : error correction level
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Set QR Code Mask pattern (0-7)
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_Mask
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nMask           :LongInt        // Mask pattern (0..7)
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code structured append sum
/////////////////////////////////////////////////////////////////////////////
Function BCSet_QR_Append
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nSum            :LongInt;	// IN : number of symbols [2..16]
nIndex          :LongInt;	// IN : index of symbol [1..16]
bParity         :Byte	        // IN : parity byte - (must be the same in all symbols)
):TErrCode; external 'TBarCode5.ocx';



//-----------------------------------------------------------------------------
//
//	P R O P E R T Y	  G E T - Functions
//
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
//	Get bar code color
///////////////////////////////////////////////////////////////////////////////
Function BCGetColorBC
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):COLORREF; external 'TBarCode5.ocx'; // COLORREF => TColorRef

///////////////////////////////////////////////////////////////////////////////
//	Get font color
///////////////////////////////////////////////////////////////////////////////
Function BCGetColorFont
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):COLORREF; external 'TBarCode5.ocx'; // COLORREF => TColorRef

///////////////////////////////////////////////////////////////////////////////
//	Get background color
///////////////////////////////////////////////////////////////////////////////
Function BCGetColorBk
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):COLORREF; external 'TBarCode5.ocx'; // COLORREF => TColorRef

///////////////////////////////////////////////////////////////////////////////
//	Get background mode/background style
///////////////////////////////////////////////////////////////////////////////
Function BCGetBkMode
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get log font
//	attention:	Get lfHeight field to the point size of the font!
///////////////////////////////////////////////////////////////////////////////
Function BCGetLogFont
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):pLOGFONT; external 'TBarCode5.ocx'; // Returns Pointer to Logfont struct (TFont)

///////////////////////////////////////////////////////////////////////////////
//	Get bar code type
///////////////////////////////////////////////////////////////////////////////
Function BCGetBCType
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_BarCType; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get check digit method
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDMethod
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_CDMethod; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get auto correct
///////////////////////////////////////////////////////////////////////////////
Function BCGetAutoCorrect
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get rotation
///////////////////////////////////////////////////////////////////////////////
Function BCGetRotation
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_Degree; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get print text
///////////////////////////////////////////////////////////////////////////////
Function BCGetPrintText
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get text above
///////////////////////////////////////////////////////////////////////////////
Function BCGetTextAbove
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get guard width
///////////////////////////////////////////////////////////////////////////////
Function BCGetGuardWidth
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
): Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get text distance
///////////////////////////////////////////////////////////////////////////////
Function BCGetTextDist
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get notch height
///////////////////////////////////////////////////////////////////////////////
Function BCGetNotchHeight
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Tranlate Escape Sequences
///////////////////////////////////////////////////////////////////////////////
Function BCGetTranslateEsc
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get must fit flag
///////////////////////////////////////////////////////////////////////////////
Function BCGetMustFit
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get 'round to pixel' flag
///////////////////////////////////////////////////////////////////////////////
Function BCGetOptResolution
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get mirror flag
///////////////////////////////////////////////////////////////////////////////
Function BCGetMirror
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get bar code text
///////////////////////////////////////////////////////////////////////////////
Function BCGetText
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx';  //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get bar code text (Unicode version)
///////////////////////////////////////////////////////////////////////////////
Function BCGetTextW
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCWSTR; external 'TBarCode5.ocx';  //LPCWSTR = Unicode string

///////////////////////////////////////////////////////////////////////////////
//	Was bar code text set as Ansi or Unicode?
///////////////////////////////////////////////////////////////////////////////
Function BCIsTextUnicode
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get bar code text length
///////////////////////////////////////////////////////////////////////////////
Function BCGetTextLen
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get module width
///////////////////////////////////////////////////////////////////////////////
Function BCGetModWidth
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get format
///////////////////////////////////////////////////////////////////////////////
Function BCGetFormat
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get ratio
///////////////////////////////////////////////////////////////////////////////
Function BCGetRatio
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get PDF417 rows
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_Rows
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get PDF417 columns
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_Columns
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get PDF417 error correction level
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_ECLEvel
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get PDF417 row height
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_RowHeight
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 segment index
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_SegIndex
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 FileID
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_FileID
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Returns if actual segment symbol is the last one
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_SegLast
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 File Name
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_FileName
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 segment count
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_SegCount
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 Time Stamp
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_TimeStamp
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 Sender
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_Sender
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 Addressee
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_Addressee
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 File Size
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_FileSize
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Macro PDF417 File Size
///////////////////////////////////////////////////////////////////////////////
Function BCGet_PDF417_CheckSum
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code mode
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_Mode
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code structured append sum
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_AppendSum
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code structured append index
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_AppendIndex
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code undercut of hexagon
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_UnderCut
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code use preamble
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_UsePreamble
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code preamble date
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_PreambleDate
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code structured carrier message (SCM)
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_SCMServClass
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code structured carrier message (SCM)
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_SCMCountryCode
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Maxi code structured carrier message (SCM)
///////////////////////////////////////////////////////////////////////////////
Function BCGet_Maxi_SCMPostalCode
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx'; //LPCTSTR = Ansistring

///////////////////////////////////////////////////////////////////////////////
//	Get Data Matrix Size
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_Size
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_DMSizes; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Is Data Matrix rectangular -> TRUE/FALSE
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_Rectangular
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Longbool; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Data Matrix Format (UCC/EAN, Macro05, Macro06,
//	particual industry, default)
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_Format
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_DMFormat; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Data Matrix structured append sum
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_AppendSum
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Data Matrix structured append index
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_AppendIndex
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get Data Matrix structured append file ID
///////////////////////////////////////////////////////////////////////////////
Function BCGet_DM_AppendFileID
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code version (= symbol size)
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_Version
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_QRVersion; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code Format (UCC/EAN, Industry, default)
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_Format
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_QRFormat; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code Format application indicator (used with Industry format)
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_FmtAppIndicator
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LPCTSTR; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code Error Correction Level
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_ECLevel
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):e_QRECLevel; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code Mask pattern (0-7)
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_Mask
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code structured append sum
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_AppendSum
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code structured append index
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_AppendIndex
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):LongInt; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Get QR Code structured append parity byte
/////////////////////////////////////////////////////////////////////////////
Function BCGet_QR_AppendParity
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Byte; external 'TBarCode5.ocx';


//-----------------------------------------------------------------------------
//
//		M E T H O D S
//
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
//	License the DLL
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCLicenseMe
(
lpszLicensee	:PChar;		// IN : Licensee name
eKindOfLicense	:e_licKind;	// IN : kind of license
dwNoOfLicenses	:DWord;		// IN : number of licenses
lpszKey		:PChar;		// IN : License Key
eProductID	:e_licProduct	// IN : Product ID
):TErrCode; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Allocate and initialize bar code structure
//
//	Returns: ErrOk if ok
////////////////////////////////////////////////////////////////////////////
Function BCAlloc
(
out pBarCode	:t_BarCode	// OUT : Ptr To Barcode struct
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	DeInitialize and free bar code structure
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCFree
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Returns ratio-String
///////////////////////////////////////////////////////////////////////////////
Function BCGetRatioString
(
eType: e_BarCType		// IN : bar code type
):LPCTSTR; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Returns ratio hint - String
///////////////////////////////////////////////////////////////////////////////
Function BCGetRatioHint
(
eType: e_BarCType		// IN : bar code type
):LPCTSTR; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//  Returns the exact number of chars that have to be used in BCSetText
//  Returns 0 if there is no specified length or BarcodeType not known
///////////////////////////////////////////////////////////////////////////////
Function BCGetMaxLenOfData
(
eType: e_BarCType		// IN : bar code type
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Check barcode input data for validity
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCCheck
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Calculate Check Digit
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCCalcCD
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Create barcode-string from data according to the specified barcode-struct
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCCreate
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):TErrCode; external 'TBarCode5.ocx';


///////////////////////////////////////////////////////////////////////////////
//	Draw barcode into Device Context
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCDraw
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
hDC	   	:HDC;		// IN : Device Context Handle
var pRect  	:TRect		// IN : Bounding Rectangle
):TErrCode; external 'TBarCode5.ocx';


///////////////////////////////////////////////////////////////////////////////
//	Get list of implemented bar codes (OUT aStr)
//	Returns number of array elements
///////////////////////////////////////////////////////////////////////////////
Function BCGetBCList(var aStr: array of string):Integer;
var
	countArray: LongInt;
begin
	countArray:=BCGetBCCount();
	Copy_PCharArray_To_StringArray (BCGetBCList_Imp(), aStr, countArray);
	BCGetBCList:= countArray;
end;

///////////////////////////////////////////////////////////////////////////////
//	DLL call (returns list of implemented bar codes)
///////////////////////////////////////////////////////////////////////////////
Function BCGetBCList_Imp
(
):pPCharArray; external 'TBarCode5.ocx' name 'BCGetBCList';

///////////////////////////////////////////////////////////////////////////////
//	Returns size of bar code list
///////////////////////////////////////////////////////////////////////////////
Function BCGetBCCount
(
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get list of implemented Check Digit Methods (Array of e_CDMethod)_
//    dependent on bar code type.
//	Returns number of Array elements
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDListByType (eBCType:e_BarCType; var aCDMethod:array of e_CDMethod):integer;
begin
	BCGetCDListByType:= Copy_IntArray_To_CDMethodArray (BCGetCDListByType_Imp(eBCType), aCDMethod);
end;

///////////////////////////////////////////////////////////////////////////////
//	Dll call (returns list of implemented Check Digits dependent on bar code type)
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDListByType_Imp
(
eBCType	:e_BarCType
):pIntArray;external 'TBarCode5.ocx' name 'BCGetCDListByType';

///////////////////////////////////////////////////////////////////////////////
//	returns name of check digit method
///////////////////////////////////////////////////////////////////////////////
Function BCGetNameFromEnum
(
eCDMethod		:e_CDMethod
):LPCTSTR; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Get list of implemented Check Digit methods (OUT aStr)
//	Returns number of array elements
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDList(var aStr: array of String):Integer;
var
	countArray: LongInt;
begin
	countArray:=BCGetCDCount();
	Copy_PCharArray_To_StringArray (BCGetCDList_Imp(), aStr, countArray);
	BCGetCDList:= countArray;
end;

///////////////////////////////////////////////////////////////////////////////
//	DLL call (returns list of all implemented Check Digit methods)
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDList_Imp
(
):pPCharArray; external 'TBarCode5.ocx' name 'BCGetCDList';

///////////////////////////////////////////////////////////////////////////////
//	Returns size of check digit method list
///////////////////////////////////////////////////////////////////////////////
Function BCGetCDCount
(
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	Returns list of implemented Data Matrix sizes
///////////////////////////////////////////////////////////////////////////////
Function BCGetDataMatrixSizes (var aStr: array of String):Integer;
var
	countArray: LongInt;
begin
	countArray:=BCGetDataMatrixSizesCount();
	Copy_PCharArray_To_StringArray (BCGetDataMatrixSizes_Imp(), aStr, countArray);
	BCGetDataMatrixSizes:= countArray;
end;

Function BCGetDataMatrixSizes_Imp
(
):pPCharArray; external 'TBarCode5.ocx' name 'BCGetDataMatrixSizes';

///////////////////////////////////////////////////////////////////////////////
//	Returns size of Data Matrix sizes list
///////////////////////////////////////////////////////////////////////////////
Function BCGetDataMatrixSizesCount
(
):LongInt; external 'TBarCode5.ocx';


///////////////////////////////////////////////////////////////////////////////
//	Returns list of implemented QR Code Versions
///////////////////////////////////////////////////////////////////////////////
Function BCGetQRCodeVersions (var aStr: array of String):Integer;
var
	countArray: LongInt;
begin
	countArray:=BCGetQRCodeVersionCount();
	Copy_PCharArray_To_StringArray (BCGetQRCodeVersions_Imp(), aStr, countArray);
	BCGetQRCodeVersions:= countArray;
end;

///////////////////////////////////////////////////////////////////////////////
//	DLL call (returns list of implemented QR Code Versions)
///////////////////////////////////////////////////////////////////////////////
Function BCGetQRCodeVersions_Imp
(
):pPCharArray; external 'TBarCode5.ocx' name 'BCGetQRCodeVersions';

///////////////////////////////////////////////////////////////////////////////
//	DLL call (returns number of implemented QR Code Versions)
///////////////////////////////////////////////////////////////////////////////

Function BCGetQRCodeVersionCount
(
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	computes the number of modules in code
//
//	Returns: number of modules
///////////////////////////////////////////////////////////////////////////////
Function BCGetCountModules
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Double; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	computes the number of rows in code
//
//	Returns: number of rows
///////////////////////////////////////////////////////////////////////////////
Function BCGetCountRows
(
const pBarCode	:t_BarCode	// IN : Ptr To Barcode-Definition
):Double; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	computes the module width in the actual bar code
//
//	Returns: module width
///////////////////////////////////////////////////////////////////////////////
Function BCGetModuleWidth
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
var pRect	:TRect;		// IN : bounding rectangle
hDC		:HDC;		// IN : Device Context Handle
eUnit		:e_MUnit	// IN : unit of measure
):Double; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	computes the barcode width
//
//	Returns: barcode width
///////////////////////////////////////////////////////////////////////////////
Function BCGetBarcodeWidth
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
var pRect	:TRect;		// IN : bounding rectangle
hDC		:HDC;		// IN : Device Context Handle
eUnit		:e_MUnit	// IN : unit of measure
):Double; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	computes the barcode height
//
//	Returns: barcode width
///////////////////////////////////////////////////////////////////////////////
Function BCGetBarcodeHeight
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
var pRect	:TRect;		// IN : bounding rectangle
hDC		:HDC;		// IN : Device Context Handle
eUnit		:e_MUnit	// IN : unit of measure
):Double; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	returns number of bar widths for given barcode type
//	used in connection with ratio string
//	Returns: number of bar widths (or -1 if not successfull)
///////////////////////////////////////////////////////////////////////////////
Function BCGetCountBars
(
eBarCType	:e_BarCType	// IN : barcode type
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	returns number of space widths for given barcode type
//	used in connection with ratio string
//	Returns: number of space widths (or -1 if not successfull)
///////////////////////////////////////////////////////////////////////////////
Function BCGetCountSpaces
(
eBarCType	:e_BarCType	// IN : barcode type
):LongInt; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	returns error text to given error code
//
//	Returns: error code of function
///////////////////////////////////////////////////////////////////////////////
Procedure BCGetErrorText
(
eCode		:TErrCode;	// IN :	error code
var szText	:LPTSTR;	// IO:	error text buffer
var nSize	:size_t		// IN :	buffer size of szText
);safecall; external 'TBarCode5.ocx';

/////////////////////////////////////////////////////////////////////////////
//	Copies check digits into buffer (lpszCDText = NULL returns number of check digits)
//
//	Returns: count of copied check digits (-1 = error, buffer size to small)
/////////////////////////////////////////////////////////////////////////////
Function BCGetCheckDigits
(
const   pBarCode        :t_BarCode;
        lpszCDText      :pACharBuff;
        nBufSize        :LongInt
):LongInt;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	copies barcode to clipboard
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCCopyToClipboard
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
nWidth		:LongInt;	// IN : width of barcode to copy
nHeight		:LongInt	// IN : height of barcode to copy
):TErrCode;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	copies barcode to clipboard
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCCopyToClipboardEx
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
hDC		:HDC;		// IN : device context to copy from (default: NULL)
nWidth		:LongInt;	// IN : width of barcode to copy
nHeight		:LongInt;	// IN : height of barcode to copy
fTransparent	:LongBool;	// IN : Barcode transparent or not
crBkCol		:COLORREF;	// IN : Background color (only if fTransparent == FALSE)
szFileName	:LPCTSTR	// IN : name of enh. metafile, that the barcode should
				//      be copied to (NULL for clipboard only)
):TErrCode;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	draws barcode and saves it as image to a file
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCSaveImage
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
lpszFileName	:LPCTSTR;	// IN : Filename
eImageType	:e_IMType;	// IN : Enumeration for the type of the image
lXSize		:LongInt;	// IN : X-Size of the image [pixel]
lYSize		:LongInt;	// IN : Y-Size of the image [pixel]
lXRes		:LongInt;	// IN : X-Resolution of the image [pixels / inch]
lYRes		:LongInt	// IN : Y-Resolution of the image [pixels / inch]
):TErrCode;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	draws barcode and saves it as image to a file
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCSaveImageEx
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
hDC		:HDC;		// IN :	device context (default: NULL)
lpszFileName	:LPCTSTR;	// IN : Filename
eImageType	:e_IMType;	// IN : Enumeration for the type of the image
lQuality	:LongInt;	// IN : Image Quality (meaning depends on image type)
lXSize		:LongInt;	// IN : X-Size of the image [pixel]
lYSize		:LongInt;	// IN : Y-Size of the image [pixel]
lXRes		:LongInt;	// IN : X-Resolution of the image [pixels / inch]
lYRes		:LongInt	// IN : Y-Resolution of the image [pixels / inch]
):TErrCode;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	draws barcode and saves it as image to a memory buffer
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCSaveImageToBuffer
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
var lpszBuffer	:LPTSTR;	// OUT: buffer
eImageType	:e_IMType;	// IN : Enumeration for the type of the image
lXSize		:LongInt;	// IN : X-Size of the image [pixel]
lYSize		:LongInt;	// IN : Y-Size of the image [pixel]
lXRes		:LongInt;	// IN : X-Resolution of the image [pixels / inch]
lYRes		:LongInt	// IN : Y-Resolution of the image [pixels / inch]
):TErrCode; external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////
//	draws barcode and saves it as image to a memory buffer
//
//	Returns: ErrOk if ok
///////////////////////////////////////////////////////////////////////////////
Function BCSaveImageToBufferEx
(
const pBarCode	:t_BarCode;	// IN : Ptr To Barcode-Definition
hDC		:HDC;		// IN :	device context (default: NULL)
var lpszBuffer	:LPTSTR;	// OUT: buffer
eImageType	:e_IMType;	// IN : Enumeration for the type of the image
lQuality	:LongInt;	// IN : Image Quality (meaning depends on image type)
lXSize		:LongInt;	// IN : X-Size of the image [pixel]
lYSize		:LongInt;	// IN : Y-Size of the image [pixel]
lXRes		:LongInt;	// IN : X-Resolution of the image [pixels / inch]
lYRes		:LongInt	// IN : Y-Resolution of the image [pixels / inch]
):TErrCode;external 'TBarCode5.ocx';

///////////////////////////////////////////////////////////////////////////////

end.
