unit TBARCODE5Lib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130  $
// File generated on 22.07.2003 11:08:17 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\PROGRA~1\TEC-IT\TBARCO~3\TBARCO~2.OCX (1)
// LIBID: {CF75B519-FBCE-4FF9-A3A9-1CA0AAC58B2C}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\System32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINNT\System32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}

interface

uses ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants, 
Windows;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  TBARCODE5LibMajorVersion = 1;
  TBARCODE5LibMinorVersion = 0;

  LIBID_TBARCODE5Lib: TGUID = '{CF75B519-FBCE-4FF9-A3A9-1CA0AAC58B2C}';

  IID__ITBarCode_T: TGUID = '{913926B9-48FC-4B9B-A34B-D2ECF4FBB724}';
  IID__ITBarCode: TGUID = '{B19134AC-1F91-4CD2-92D9-7961801D37ED}';
  DIID__ITBarCodeEvents: TGUID = '{618093F9-5BAD-44D9-AF77-5E715CDD4606}';
  CLASS_TBarCode5: TGUID = '{10ED9AE3-DA1A-461C-826A-CD9C850C58E2}';
  CLASS_PPGGeneral: TGUID = '{E2547EDA-64FB-4DC1-90CF-2E4768865667}';
  CLASS_PPGAdvanced: TGUID = '{14AB418E-F96B-47F0-8796-8A82EB29534B}';
  CLASS_PPGPdf417: TGUID = '{C40AF890-4DBD-438C-9219-A7ED5E319833}';
  CLASS_PPGMaxi: TGUID = '{1C2AAB2B-4117-4CA4-8D1D-15F5FAABD6A3}';
  CLASS_PPGDataMatrix: TGUID = '{D3F78EC5-324C-466E-9D67-6B7E0AE953E9}';
  CLASS_PPGQRCode: TGUID = '{26136430-A83B-4F9F-8B54-06792FB88644}';
  CLASS_PPGCodaBlockF: TGUID = '{9213F153-C453-444A-B7D5-D4BF4E9BACDD}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum tagBKStyle
type
  tagBKStyle = TOleEnum;
const
  BKS_Transparent = $00000000;
  BKS_Opaque = $00000001;

// Constants for enum tag_DrawStatus
type
  tag_DrawStatus = TOleEnum;
const
  eDST_Ok = $00000000;
  eDST_Cancel = $00000001;
  eDST_Retry = $00000002;

// Constants for enum tag_Interpretation
type
  tag_Interpretation = TOleEnum;
const
  eInt_Default = $00000000;
  eInt_ANSI = $00000001;
  eInt_ByteStream = $00000002;
  eInt_BYTE_HILO = $00000003;
  eInt_UNICODE = $00000004;

// Constants for enum tag_BarCType
type
  tag_BarCType = TOleEnum;
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

// Constants for enum tag_CDMethod
type
  tag_CDMethod = TOleEnum;
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

// Constants for enum tag_Degree
type
  tag_Degree = TOleEnum;
const
  deg0 = $00000000;
  deg90 = $00000001;
  deg180 = $00000002;
  deg270 = $00000003;

// Constants for enum tag_MUnit
type
  tag_MUnit = TOleEnum;
const
  eMUDefault = $00000000;
  eMUPixel = $00000001;
  eMUMM = $00000002;

// Constants for enum tag_QZMUnit
type
  tag_QZMUnit = TOleEnum;
const
  eQZMUNone = $00000000;
  eQZMUModules = $00000001;
  eQZMUMM = $00000002;
  eQZMUMils = $00000003;
  eQZMUPixel = $00000004;

// Constants for enum tag_ImageType
type
  tag_ImageType = TOleEnum;
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

// Constants for enum tag_Align
type
  tag_Align = TOleEnum;
const
  eAlDefault = $00000000;
  eAlLeft = $00000001;
  eAlRight = $00000002;
  eAlCenter = $00000003;

// Constants for enum tag_licProduct
type
  tag_licProduct = TOleEnum;
const
  eLicInvalid = $FFFFFFFF;
  eLicProd1D = $0000000D;
  eLicProd2D = $0000000E;

// Constants for enum tag_licKind
type
  tag_licKind = TOleEnum;
const
  eLicKindSingle = $00000001;
  eLicKindSite = $00000002;
  eLicKindDeveloper = $00000003;

// Constants for enum tagE_DMSizes
type
  tagE_DMSizes = TOleEnum;
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

// Constants for enum tagE_DMFormat
type
  tagE_DMFormat = TOleEnum;
const
  eDMPr_Default = $00000000;
  eDMPr_UCCEAN = $00000001;
  eDMPr_Industry = $00000002;
  eDMPr_Macro05 = $00000003;
  eDMPr_Macro06 = $00000004;

// Constants for enum tagE_QRVersion
type
  tagE_QRVersion = TOleEnum;
const
  eQRVers_Default = $00000000;
  eQRVers_1 = $00000001;
  eQRVers_2 = $00000002;
  eQRVers_3 = $00000003;
  eQRVers_4 = $00000004;
  eQRVers_5 = $00000005;
  eQRVers_6 = $00000006;
  eQRVers_7 = $00000007;
  eQRVers_8 = $00000008;
  eQRVers_9 = $00000009;
  eQRVers_10 = $0000000A;
  eQRVers_11 = $0000000B;
  eQRVers_12 = $0000000C;
  eQRVers_13 = $0000000D;
  eQRVers_14 = $0000000E;
  eQRVers_15 = $0000000F;
  eQRVers_16 = $00000010;
  eQRVers_17 = $00000011;
  eQRVers_18 = $00000012;
  eQRVers_19 = $00000013;
  eQRVers_20 = $00000014;
  eQRVers_21 = $00000015;
  eQRVers_22 = $00000016;
  eQRVers_23 = $00000017;
  eQRVers_24 = $00000018;
  eQRVers_25 = $00000019;
  eQRVers_26 = $0000001A;
  eQRVers_27 = $0000001B;
  eQRVers_28 = $0000001C;
  eQRVers_29 = $0000001D;
  eQRVers_30 = $0000001E;
  eQRVers_31 = $0000001F;
  eQRVers_32 = $00000020;
  eQRVers_33 = $00000021;
  eQRVers_34 = $00000022;
  eQRVers_35 = $00000023;
  eQRVers_36 = $00000024;
  eQRVers_37 = $00000025;
  eQRVers_38 = $00000026;
  eQRVers_39 = $00000027;
  eQRVers_40 = $00000028;

// Constants for enum tagE_QRFormat
type
  tagE_QRFormat = TOleEnum;
const
  eQRPr_Default = $00000000;
  eQRPr_UCCEAN = $00000001;
  eQRPr_Industry = $00000002;

// Constants for enum tagE_QRECLevel
type
  tagE_QRECLevel = TOleEnum;
const
  eQREC_Low = $00000000;
  eQREC_Medium = $00000001;
  eQREC_Quartil = $00000002;
  eQREC_High = $00000003;

// Constants for enum tagE_QRMask
type
  tagE_QRMask = TOleEnum;
const
  eQRMsk_Default = $FFFFFFFF;
  eQRMsk_0 = $00000000;
  eQRMsk_1 = $00000001;
  eQRMsk_2 = $00000002;
  eQRMsk_3 = $00000003;
  eQRMsk_4 = $00000004;
  eQRMsk_5 = $00000005;
  eQRMsk_6 = $00000006;
  eQRMsk_7 = $00000007;

// Constants for enum tagE_CBFFormat
type
  tagE_CBFFormat = TOleEnum;
const
  eCBFPr_Default = $00000000;
  eCBFPr_UCCEAN = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _ITBarCode_T = interface;
  _ITBarCode_TDisp = dispinterface;
  _ITBarCode = interface;
  _ITBarCodeDisp = dispinterface;
  _ITBarCodeEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  TBarCode5 = _ITBarCode;
  PPGGeneral = IUnknown;
  PPGAdvanced = IUnknown;
  PPGPdf417 = IUnknown;
  PPGMaxi = IUnknown;
  PPGDataMatrix = IUnknown;
  PPGQRCode = IUnknown;
  PPGCodaBlockF = IUnknown;


// *********************************************************************//
// Interface: _ITBarCode_T
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {913926B9-48FC-4B9B-A34B-D2ECF4FBB724}
// *********************************************************************//
  _ITBarCode_T = interface(IDispatch)
    ['{913926B9-48FC-4B9B-A34B-D2ECF4FBB724}']
    procedure Set_BackColor(pclr: OLE_COLOR); safecall;
    procedure Set_BackStyle(pstyle: tagBKStyle); safecall;
    procedure _Set_Font(const ppFont: IFontDisp); safecall;
    procedure Set_Font(const ppFont: IFontDisp); safecall;
    procedure Set_ForeColor(pclr: OLE_COLOR); safecall;
    procedure Set_Enabled(pbool: WordBool); safecall;
    procedure Set_Text(const pstrText: WideString); safecall;
    function  Get_BackColor: OLE_COLOR; safecall;
    function  Get_BackStyle: tagBKStyle; safecall;
    function  Get_Font: IFontDisp; safecall;
    function  Get_ForeColor: OLE_COLOR; safecall;
    function  Get_Enabled: WordBool; safecall;
    function  Get_Window: Integer; safecall;
    function  Get_Text: WideString; safecall;
    procedure AboutBox; safecall;
    procedure Refresh; safecall;
    procedure BCDraw(hDC: Integer; nLeft: Integer; nTop: Integer; nWidth: Integer; nHeight: Integer); safecall;
    procedure LicenseMe(const sLicensee: WideString; eKind: tag_licKind; nLicenses: Integer; 
                        const sLicenseKey: WideString; eProductID: tag_licProduct); safecall;
    procedure CopyToClipboard; safecall;
    procedure CopyToClipboardEx(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                const sFileName: WideString); safecall;
    procedure SaveImage(const sFileName: WideString; eImageType: tag_ImageType; nXSize: Integer; 
                        nYSize: Integer; nXRes: Integer; nYRes: Integer); safecall;
    procedure SaveImageEx(hDC: Integer; const sFileName: WideString; eImageType: tag_ImageType; 
                          nQuality: Integer; nXSize: Integer; nYSize: Integer; nXRes: Integer; 
                          nYRes: Integer); safecall;
    procedure Licencing; safecall;
    function  ConvertToStream(eImageType: tag_ImageType; nXSize: Integer; nYSize: Integer; 
                              nXRes: Integer; nYRes: Integer): OleVariant; safecall;
    function  ConvertToStreamEx(hDC: Integer; eImageType: tag_ImageType; nQuality: Integer; 
                                nXSize: Integer; nYSize: Integer; nXRes: Integer; nYRes: Integer): OleVariant; safecall;
    function  Get_BarCode: tag_BarCType; safecall;
    procedure Set_BarCode(pVal: tag_BarCType); safecall;
    function  Get_CDMethod: tag_CDMethod; safecall;
    procedure Set_CDMethod(pVal: tag_CDMethod); safecall;
    function  Get_CountCheckDigits: Integer; safecall;
    procedure Set_CountCheckDigits(pVal: Integer); safecall;
    function  Get_EscapeSequences: WordBool; safecall;
    procedure Set_EscapeSequences(pVal: WordBool); safecall;
    function  Get_Format: WideString; safecall;
    procedure Set_Format(const pVal: WideString); safecall;
    function  Get_GuardWidth: Integer; safecall;
    procedure Set_GuardWidth(pVal: Integer); safecall;
    function  Get_LastError: WideString; safecall;
    procedure Set_LastError(const pVal: WideString); safecall;
    function  Get_LastErrorNo: Integer; safecall;
    procedure Set_LastErrorNo(pVal: Integer); safecall;
    function  Get_ModulWidth: WideString; safecall;
    procedure Set_ModulWidth(const pVal: WideString); safecall;
    function  Get_Orientation: tag_Degree; safecall;
    procedure Set_Orientation(pVal: tag_Degree); safecall;
    function  Get_PrintDataText: WordBool; safecall;
    procedure Set_PrintDataText(pVal: WordBool); safecall;
    function  Get_PrintTextAbove: WordBool; safecall;
    procedure Set_PrintTextAbove(pVal: WordBool); safecall;
    function  Get_Ratio: WideString; safecall;
    procedure Set_Ratio(const pVal: WideString); safecall;
    function  Get_RatioHint: WideString; safecall;
    procedure Set_RatioHint(const pVal: WideString); safecall;
    function  Get_TextColor: OLE_COLOR; safecall;
    procedure Set_TextColor(pVal: OLE_COLOR); safecall;
    function  Get_PDF417_Columns: Integer; safecall;
    procedure Set_PDF417_Columns(pVal: Integer); safecall;
    function  Get_PDF417_Rows: Integer; safecall;
    procedure Set_PDF417_Rows(pVal: Integer); safecall;
    function  Get_PDF417_ECLevel: Integer; safecall;
    procedure Set_PDF417_ECLevel(pVal: Integer); safecall;
    function  Get_PDF417_RowHeight: Integer; safecall;
    procedure Set_PDF417_RowHeight(pVal: Integer); safecall;
    function  Get_MustFit: WordBool; safecall;
    procedure Set_MustFit(pVal: WordBool); safecall;
    function  Get_TextDistance: Integer; safecall;
    procedure Set_TextDistance(pVal: Integer); safecall;
    function  Get_NotchHeight: Integer; safecall;
    procedure Set_NotchHeight(pVal: Integer); safecall;
    function  Get_RatioDefault: WideString; safecall;
    procedure Set_RatioDefault(const pVal: WideString); safecall;
    function  Get_CheckDigits: WideString; safecall;
    procedure Set_CheckDigits(const pVal: WideString); safecall;
    function  Get_MAXI_Mode: Integer; safecall;
    procedure Set_MAXI_Mode(pVal: Integer); safecall;
    function  Get_MAXI_AppendIndex: Integer; safecall;
    procedure Set_MAXI_AppendIndex(pVal: Integer); safecall;
    function  Get_MAXI_AppendCount: Integer; safecall;
    procedure Set_MAXI_AppendCount(pVal: Integer); safecall;
    function  Get_MAXI_Undercut: Integer; safecall;
    procedure Set_MAXI_Undercut(pVal: Integer); safecall;
    function  Get_CountModules: Double; safecall;
    procedure Set_CountModules(pVal: Double); safecall;
    function  Get_BCWidthAct(eUnit: tag_MUnit): Double; safecall;
    function  Get_BCHeightAct(eUnit: tag_MUnit): Double; safecall;
    function  Get_ModWidthAct(eUnit: tag_MUnit): Double; safecall;
    function  Get_BCWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double; safecall;
    function  Get_BCHeightHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double; safecall;
    function  Get_ModWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double; safecall;
    function  Get_MAXI_Preamble: WordBool; safecall;
    procedure Set_MAXI_Preamble(pVal: WordBool); safecall;
    function  Get_MAXI_PostalCode: WideString; safecall;
    procedure Set_MAXI_PostalCode(const pVal: WideString); safecall;
    function  Get_MAXI_CountryCode: WideString; safecall;
    procedure Set_MAXI_CountryCode(const pVal: WideString); safecall;
    function  Get_MAXI_ServiceClass: WideString; safecall;
    procedure Set_MAXI_ServiceClass(const pVal: WideString); safecall;
    function  Get_MAXI_Date: WideString; safecall;
    procedure Set_MAXI_Date(const pVal: WideString); safecall;
    function  Get_DrawStatus: tag_DrawStatus; safecall;
    procedure Set_DrawStatus(pVal: tag_DrawStatus); safecall;
    function  Get_SuppressErrorMsg: WordBool; safecall;
    procedure Set_SuppressErrorMsg(pVal: WordBool); safecall;
    function  Get_CountRows: Double; safecall;
    procedure Set_CountRows(pVal: Double); safecall;
    property BackColor: OLE_COLOR read Get_BackColor write Set_BackColor;
    property BackStyle: tagBKStyle read Get_BackStyle write Set_BackStyle;
    property Font: IFontDisp read Get_Font write Set_Font;
    property ForeColor: OLE_COLOR read Get_ForeColor write Set_ForeColor;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Text: WideString read Get_Text write Set_Text;
    property Window: Integer read Get_Window;
    property BarCode: tag_BarCType read Get_BarCode write Set_BarCode;
    property CDMethod: tag_CDMethod read Get_CDMethod write Set_CDMethod;
    property CountCheckDigits: Integer read Get_CountCheckDigits write Set_CountCheckDigits;
    property EscapeSequences: WordBool read Get_EscapeSequences write Set_EscapeSequences;
    property Format: WideString read Get_Format write Set_Format;
    property GuardWidth: Integer read Get_GuardWidth write Set_GuardWidth;
    property LastError: WideString read Get_LastError write Set_LastError;
    property LastErrorNo: Integer read Get_LastErrorNo write Set_LastErrorNo;
    property ModulWidth: WideString read Get_ModulWidth write Set_ModulWidth;
    property Orientation: tag_Degree read Get_Orientation write Set_Orientation;
    property PrintDataText: WordBool read Get_PrintDataText write Set_PrintDataText;
    property PrintTextAbove: WordBool read Get_PrintTextAbove write Set_PrintTextAbove;
    property Ratio: WideString read Get_Ratio write Set_Ratio;
    property RatioHint: WideString read Get_RatioHint write Set_RatioHint;
    property TextColor: OLE_COLOR read Get_TextColor write Set_TextColor;
    property PDF417_Columns: Integer read Get_PDF417_Columns write Set_PDF417_Columns;
    property PDF417_Rows: Integer read Get_PDF417_Rows write Set_PDF417_Rows;
    property PDF417_ECLevel: Integer read Get_PDF417_ECLevel write Set_PDF417_ECLevel;
    property PDF417_RowHeight: Integer read Get_PDF417_RowHeight write Set_PDF417_RowHeight;
    property MustFit: WordBool read Get_MustFit write Set_MustFit;
    property TextDistance: Integer read Get_TextDistance write Set_TextDistance;
    property NotchHeight: Integer read Get_NotchHeight write Set_NotchHeight;
    property RatioDefault: WideString read Get_RatioDefault write Set_RatioDefault;
    property CheckDigits: WideString read Get_CheckDigits write Set_CheckDigits;
    property MAXI_Mode: Integer read Get_MAXI_Mode write Set_MAXI_Mode;
    property MAXI_AppendIndex: Integer read Get_MAXI_AppendIndex write Set_MAXI_AppendIndex;
    property MAXI_AppendCount: Integer read Get_MAXI_AppendCount write Set_MAXI_AppendCount;
    property MAXI_Undercut: Integer read Get_MAXI_Undercut write Set_MAXI_Undercut;
    property CountModules: Double read Get_CountModules write Set_CountModules;
    property BCWidthAct[eUnit: tag_MUnit]: Double read Get_BCWidthAct;
    property BCHeightAct[eUnit: tag_MUnit]: Double read Get_BCHeightAct;
    property ModWidthAct[eUnit: tag_MUnit]: Double read Get_ModWidthAct;
    property BCWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_BCWidthHdc;
    property BCHeightHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_BCHeightHdc;
    property ModWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_ModWidthHdc;
    property MAXI_Preamble: WordBool read Get_MAXI_Preamble write Set_MAXI_Preamble;
    property MAXI_PostalCode: WideString read Get_MAXI_PostalCode write Set_MAXI_PostalCode;
    property MAXI_CountryCode: WideString read Get_MAXI_CountryCode write Set_MAXI_CountryCode;
    property MAXI_ServiceClass: WideString read Get_MAXI_ServiceClass write Set_MAXI_ServiceClass;
    property MAXI_Date: WideString read Get_MAXI_Date write Set_MAXI_Date;
    property DrawStatus: tag_DrawStatus read Get_DrawStatus write Set_DrawStatus;
    property SuppressErrorMsg: WordBool read Get_SuppressErrorMsg write Set_SuppressErrorMsg;
    property CountRows: Double read Get_CountRows write Set_CountRows;
  end;

// *********************************************************************//
// DispIntf:  _ITBarCode_TDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {913926B9-48FC-4B9B-A34B-D2ECF4FBB724}
// *********************************************************************//
  _ITBarCode_TDisp = dispinterface
    ['{913926B9-48FC-4B9B-A34B-D2ECF4FBB724}']
    property BackColor: OLE_COLOR dispid -501;
    property BackStyle: tagBKStyle dispid -502;
    property Font: IFontDisp dispid -512;
    property ForeColor: OLE_COLOR dispid -513;
    property Enabled: WordBool dispid -514;
    property Text: WideString dispid -517;
    property Window: Integer readonly dispid -515;
    procedure AboutBox; dispid -552;
    procedure Refresh; dispid -550;
    procedure BCDraw(hDC: Integer; nLeft: Integer; nTop: Integer; nWidth: Integer; nHeight: Integer); dispid 16;
    procedure LicenseMe(const sLicensee: WideString; eKind: tag_licKind; nLicenses: Integer; 
                        const sLicenseKey: WideString; eProductID: tag_licProduct); dispid 17;
    procedure CopyToClipboard; dispid 18;
    procedure CopyToClipboardEx(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                const sFileName: WideString); dispid 51;
    procedure SaveImage(const sFileName: WideString; eImageType: tag_ImageType; nXSize: Integer; 
                        nYSize: Integer; nXRes: Integer; nYRes: Integer); dispid 19;
    procedure SaveImageEx(hDC: Integer; const sFileName: WideString; eImageType: tag_ImageType; 
                          nQuality: Integer; nXSize: Integer; nYSize: Integer; nXRes: Integer; 
                          nYRes: Integer); dispid 49;
    procedure Licencing; dispid 29;
    function  ConvertToStream(eImageType: tag_ImageType; nXSize: Integer; nYSize: Integer; 
                              nXRes: Integer; nYRes: Integer): OleVariant; dispid 39;
    function  ConvertToStreamEx(hDC: Integer; eImageType: tag_ImageType; nQuality: Integer; 
                                nXSize: Integer; nYSize: Integer; nXRes: Integer; nYRes: Integer): OleVariant; dispid 50;
    property BarCode: tag_BarCType dispid 1;
    property CDMethod: tag_CDMethod dispid 2;
    property CountCheckDigits: Integer dispid 3;
    property EscapeSequences: WordBool dispid 4;
    property Format: WideString dispid 5;
    property GuardWidth: Integer dispid 6;
    property LastError: WideString dispid 7;
    property LastErrorNo: Integer dispid 8;
    property ModulWidth: WideString dispid 9;
    property Orientation: tag_Degree dispid 10;
    property PrintDataText: WordBool dispid 11;
    property PrintTextAbove: WordBool dispid 12;
    property Ratio: WideString dispid 13;
    property RatioHint: WideString dispid 14;
    property TextColor: OLE_COLOR dispid 15;
    property PDF417_Columns: Integer dispid 21;
    property PDF417_Rows: Integer dispid 20;
    property PDF417_ECLevel: Integer dispid 22;
    property PDF417_RowHeight: Integer dispid 23;
    property MustFit: WordBool dispid 24;
    property TextDistance: Integer dispid 25;
    property NotchHeight: Integer dispid 26;
    property RatioDefault: WideString dispid 27;
    property CheckDigits: WideString dispid 28;
    property MAXI_Mode: Integer dispid 30;
    property MAXI_AppendIndex: Integer dispid 31;
    property MAXI_AppendCount: Integer dispid 32;
    property MAXI_Undercut: Integer dispid 33;
    property CountModules: Double dispid 40;
    property BCWidthAct[eUnit: tag_MUnit]: Double readonly dispid 41;
    property BCHeightAct[eUnit: tag_MUnit]: Double readonly dispid 42;
    property ModWidthAct[eUnit: tag_MUnit]: Double readonly dispid 43;
    property BCWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 44;
    property BCHeightHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 45;
    property ModWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 46;
    property MAXI_Preamble: WordBool dispid 34;
    property MAXI_PostalCode: WideString dispid 35;
    property MAXI_CountryCode: WideString dispid 36;
    property MAXI_ServiceClass: WideString dispid 37;
    property MAXI_Date: WideString dispid 38;
    property DrawStatus: tag_DrawStatus dispid 47;
    property SuppressErrorMsg: WordBool dispid 48;
    property CountRows: Double dispid 80;
  end;

// *********************************************************************//
// Interface: _ITBarCode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B19134AC-1F91-4CD2-92D9-7961801D37ED}
// *********************************************************************//
  _ITBarCode = interface(_ITBarCode_T)
    ['{B19134AC-1F91-4CD2-92D9-7961801D37ED}']
    function  Get_DM_Size: tagE_DMSizes; safecall;
    procedure Set_DM_Size(pVal: tagE_DMSizes); safecall;
    function  Get_DM_Rectangular: WordBool; safecall;
    procedure Set_DM_Rectangular(pVal: WordBool); safecall;
    function  Get_DM_Format: tagE_DMFormat; safecall;
    procedure Set_DM_Format(pVal: tagE_DMFormat); safecall;
    function  Get_DM_AppendIndex: Integer; safecall;
    procedure Set_DM_AppendIndex(pVal: Integer); safecall;
    function  Get_DM_AppendCount: Integer; safecall;
    procedure Set_DM_AppendCount(pVal: Integer); safecall;
    function  Get_DM_AppendFileID: Integer; safecall;
    procedure Set_DM_AppendFileID(pVal: Integer); safecall;
    function  Get_PDF417_SegmentIndex: Integer; safecall;
    procedure Set_PDF417_SegmentIndex(pVal: Integer); safecall;
    function  Get_PDF417_FileID: WideString; safecall;
    procedure Set_PDF417_FileID(const pVal: WideString); safecall;
    function  Get_PDF417_LastSegment: WordBool; safecall;
    procedure Set_PDF417_LastSegment(pVal: WordBool); safecall;
    function  Get_PDF417_FileName: WideString; safecall;
    procedure Set_PDF417_FileName(const pVal: WideString); safecall;
    function  Get_PDF417_SegmentCount: Integer; safecall;
    procedure Set_PDF417_SegmentCount(pVal: Integer); safecall;
    function  Get_PDF417_TimeStamp: Integer; safecall;
    procedure Set_PDF417_TimeStamp(pVal: Integer); safecall;
    function  Get_PDF417_Sender: WideString; safecall;
    procedure Set_PDF417_Sender(const pVal: WideString); safecall;
    function  Get_PDF417_Addressee: WideString; safecall;
    procedure Set_PDF417_Addressee(const pVal: WideString); safecall;
    function  Get_PDF417_FileSize: Integer; safecall;
    procedure Set_PDF417_FileSize(pVal: Integer); safecall;
    function  Get_PDF417_CheckSum: Integer; safecall;
    procedure Set_PDF417_CheckSum(pVal: Integer); safecall;
    function  Get_QR_Version: tagE_QRVersion; safecall;
    procedure Set_QR_Version(pVal: tagE_QRVersion); safecall;
    function  Get_QR_Format: tagE_QRFormat; safecall;
    procedure Set_QR_Format(pVal: tagE_QRFormat); safecall;
    function  Get_QR_ECLevel: tagE_QRECLevel; safecall;
    procedure Set_QR_ECLevel(pVal: tagE_QRECLevel); safecall;
    function  Get_QR_Mask: tagE_QRMask; safecall;
    procedure Set_QR_Mask(pVal: tagE_QRMask); safecall;
    function  Get_QR_AppendIndex: Integer; safecall;
    procedure Set_QR_AppendIndex(pVal: Integer); safecall;
    function  Get_QR_AppendCount: Integer; safecall;
    procedure Set_QR_AppendCount(pVal: Integer); safecall;
    function  Get_QR_AppendParity: Smallint; safecall;
    procedure Set_QR_AppendParity(pVal: Smallint); safecall;
    function  Get_QR_FmtAppIndicator: WideString; safecall;
    procedure Set_QR_FmtAppIndicator(const pVal: WideString); safecall;
    function  Get_QR_StructAppParity(const sText: WideString): Smallint; safecall;
    function  Get_PDF417_RatioRowCol: WideString; safecall;
    procedure Set_PDF417_RatioRowCol(const pVal: WideString); safecall;
    function  Get_InterpretInputAs: tag_Interpretation; safecall;
    procedure Set_InterpretInputAs(pVal: tag_Interpretation); safecall;
    function  Get_OptResolution: WordBool; safecall;
    procedure Set_OptResolution(pVal: WordBool); safecall;
    function  Get_FontName: WideString; safecall;
    procedure Set_FontName(const pVal: WideString); safecall;
    function  Get_FontSize: Integer; safecall;
    procedure Set_FontSize(pVal: Integer); safecall;
    function  Get_CBF_Rows: Integer; safecall;
    procedure Set_CBF_Rows(pVal: Integer); safecall;
    function  Get_CBF_Columns: Integer; safecall;
    procedure Set_CBF_Columns(pVal: Integer); safecall;
    function  Get_CBF_RowHeight: Integer; safecall;
    procedure Set_CBF_RowHeight(pVal: Integer); safecall;
    function  Get_CBF_RowSeparatorHeight: Integer; safecall;
    procedure Set_CBF_RowSeparatorHeight(pVal: Integer); safecall;
    function  Get_CBF_Format: tagE_CBFFormat; safecall;
    procedure Set_CBF_Format(pVal: tagE_CBFFormat); safecall;
    function  Get_DisplayText: WideString; safecall;
    procedure Set_DisplayText(const pVal: WideString); safecall;
    function  Get_BarWidthReduction: Integer; safecall;
    procedure Set_BarWidthReduction(pVal: Integer); safecall;
    function  Get_TextAlignment: tag_Align; safecall;
    procedure Set_TextAlignment(pVal: tag_Align); safecall;
    function  Get_Quality: Integer; safecall;
    procedure Set_Quality(pVal: Integer); safecall;
    function  Get_QualityHdc(hDC: Integer; nWidth: Integer; nHeight: Integer): Integer; safecall;
    procedure PropertyDialog; safecall;
    property DM_Size: tagE_DMSizes read Get_DM_Size write Set_DM_Size;
    property DM_Rectangular: WordBool read Get_DM_Rectangular write Set_DM_Rectangular;
    property DM_Format: tagE_DMFormat read Get_DM_Format write Set_DM_Format;
    property DM_AppendIndex: Integer read Get_DM_AppendIndex write Set_DM_AppendIndex;
    property DM_AppendCount: Integer read Get_DM_AppendCount write Set_DM_AppendCount;
    property DM_AppendFileID: Integer read Get_DM_AppendFileID write Set_DM_AppendFileID;
    property PDF417_SegmentIndex: Integer read Get_PDF417_SegmentIndex write Set_PDF417_SegmentIndex;
    property PDF417_FileID: WideString read Get_PDF417_FileID write Set_PDF417_FileID;
    property PDF417_LastSegment: WordBool read Get_PDF417_LastSegment write Set_PDF417_LastSegment;
    property PDF417_FileName: WideString read Get_PDF417_FileName write Set_PDF417_FileName;
    property PDF417_SegmentCount: Integer read Get_PDF417_SegmentCount write Set_PDF417_SegmentCount;
    property PDF417_TimeStamp: Integer read Get_PDF417_TimeStamp write Set_PDF417_TimeStamp;
    property PDF417_Sender: WideString read Get_PDF417_Sender write Set_PDF417_Sender;
    property PDF417_Addressee: WideString read Get_PDF417_Addressee write Set_PDF417_Addressee;
    property PDF417_FileSize: Integer read Get_PDF417_FileSize write Set_PDF417_FileSize;
    property PDF417_CheckSum: Integer read Get_PDF417_CheckSum write Set_PDF417_CheckSum;
    property QR_Version: tagE_QRVersion read Get_QR_Version write Set_QR_Version;
    property QR_Format: tagE_QRFormat read Get_QR_Format write Set_QR_Format;
    property QR_ECLevel: tagE_QRECLevel read Get_QR_ECLevel write Set_QR_ECLevel;
    property QR_Mask: tagE_QRMask read Get_QR_Mask write Set_QR_Mask;
    property QR_AppendIndex: Integer read Get_QR_AppendIndex write Set_QR_AppendIndex;
    property QR_AppendCount: Integer read Get_QR_AppendCount write Set_QR_AppendCount;
    property QR_AppendParity: Smallint read Get_QR_AppendParity write Set_QR_AppendParity;
    property QR_FmtAppIndicator: WideString read Get_QR_FmtAppIndicator write Set_QR_FmtAppIndicator;
    property QR_StructAppParity[const sText: WideString]: Smallint read Get_QR_StructAppParity;
    property PDF417_RatioRowCol: WideString read Get_PDF417_RatioRowCol write Set_PDF417_RatioRowCol;
    property InterpretInputAs: tag_Interpretation read Get_InterpretInputAs write Set_InterpretInputAs;
    property OptResolution: WordBool read Get_OptResolution write Set_OptResolution;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Integer read Get_FontSize write Set_FontSize;
    property CBF_Rows: Integer read Get_CBF_Rows write Set_CBF_Rows;
    property CBF_Columns: Integer read Get_CBF_Columns write Set_CBF_Columns;
    property CBF_RowHeight: Integer read Get_CBF_RowHeight write Set_CBF_RowHeight;
    property CBF_RowSeparatorHeight: Integer read Get_CBF_RowSeparatorHeight write Set_CBF_RowSeparatorHeight;
    property CBF_Format: tagE_CBFFormat read Get_CBF_Format write Set_CBF_Format;
    property DisplayText: WideString read Get_DisplayText write Set_DisplayText;
    property BarWidthReduction: Integer read Get_BarWidthReduction write Set_BarWidthReduction;
    property TextAlignment: tag_Align read Get_TextAlignment write Set_TextAlignment;
    property Quality: Integer read Get_Quality write Set_Quality;
    property QualityHdc[hDC: Integer; nWidth: Integer; nHeight: Integer]: Integer read Get_QualityHdc;
  end;

// *********************************************************************//
// DispIntf:  _ITBarCodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B19134AC-1F91-4CD2-92D9-7961801D37ED}
// *********************************************************************//
  _ITBarCodeDisp = dispinterface
    ['{B19134AC-1F91-4CD2-92D9-7961801D37ED}']
    property DM_Size: tagE_DMSizes dispid 81;
    property DM_Rectangular: WordBool dispid 82;
    property DM_Format: tagE_DMFormat dispid 83;
    property DM_AppendIndex: Integer dispid 84;
    property DM_AppendCount: Integer dispid 85;
    property DM_AppendFileID: Integer dispid 86;
    property PDF417_SegmentIndex: Integer dispid 87;
    property PDF417_FileID: WideString dispid 88;
    property PDF417_LastSegment: WordBool dispid 89;
    property PDF417_FileName: WideString dispid 90;
    property PDF417_SegmentCount: Integer dispid 91;
    property PDF417_TimeStamp: Integer dispid 92;
    property PDF417_Sender: WideString dispid 93;
    property PDF417_Addressee: WideString dispid 94;
    property PDF417_FileSize: Integer dispid 95;
    property PDF417_CheckSum: Integer dispid 96;
    property QR_Version: tagE_QRVersion dispid 97;
    property QR_Format: tagE_QRFormat dispid 98;
    property QR_ECLevel: tagE_QRECLevel dispid 99;
    property QR_Mask: tagE_QRMask dispid 101;
    property QR_AppendIndex: Integer dispid 102;
    property QR_AppendCount: Integer dispid 103;
    property QR_AppendParity: Smallint dispid 104;
    property QR_FmtAppIndicator: WideString dispid 105;
    property QR_StructAppParity[const sText: WideString]: Smallint readonly dispid 106;
    property PDF417_RatioRowCol: WideString dispid 107;
    property InterpretInputAs: tag_Interpretation dispid 108;
    property OptResolution: WordBool dispid 109;
    property FontName: WideString dispid 110;
    property FontSize: Integer dispid 111;
    property CBF_Rows: Integer dispid 112;
    property CBF_Columns: Integer dispid 113;
    property CBF_RowHeight: Integer dispid 114;
    property CBF_RowSeparatorHeight: Integer dispid 115;
    property CBF_Format: tagE_CBFFormat dispid 116;
    property DisplayText: WideString dispid 117;
    property BarWidthReduction: Integer dispid 118;
    property TextAlignment: tag_Align dispid 119;
    property Quality: Integer dispid 120;
    property QualityHdc[hDC: Integer; nWidth: Integer; nHeight: Integer]: Integer readonly dispid 121;
    procedure PropertyDialog; dispid 100;
    property BackColor: OLE_COLOR dispid -501;
    property BackStyle: tagBKStyle dispid -502;
    property Font: IFontDisp dispid -512;
    property ForeColor: OLE_COLOR dispid -513;
    property Enabled: WordBool dispid -514;
    property Text: WideString dispid -517;
    property Window: Integer readonly dispid -515;
    procedure AboutBox; dispid -552;
    procedure Refresh; dispid -550;
    procedure BCDraw(hDC: Integer; nLeft: Integer; nTop: Integer; nWidth: Integer; nHeight: Integer); dispid 16;
    procedure LicenseMe(const sLicensee: WideString; eKind: tag_licKind; nLicenses: Integer; 
                        const sLicenseKey: WideString; eProductID: tag_licProduct); dispid 17;
    procedure CopyToClipboard; dispid 18;
    procedure CopyToClipboardEx(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                const sFileName: WideString); dispid 51;
    procedure SaveImage(const sFileName: WideString; eImageType: tag_ImageType; nXSize: Integer; 
                        nYSize: Integer; nXRes: Integer; nYRes: Integer); dispid 19;
    procedure SaveImageEx(hDC: Integer; const sFileName: WideString; eImageType: tag_ImageType; 
                          nQuality: Integer; nXSize: Integer; nYSize: Integer; nXRes: Integer; 
                          nYRes: Integer); dispid 49;
    procedure Licencing; dispid 29;
    function  ConvertToStream(eImageType: tag_ImageType; nXSize: Integer; nYSize: Integer; 
                              nXRes: Integer; nYRes: Integer): OleVariant; dispid 39;
    function  ConvertToStreamEx(hDC: Integer; eImageType: tag_ImageType; nQuality: Integer; 
                                nXSize: Integer; nYSize: Integer; nXRes: Integer; nYRes: Integer): OleVariant; dispid 50;
    property BarCode: tag_BarCType dispid 1;
    property CDMethod: tag_CDMethod dispid 2;
    property CountCheckDigits: Integer dispid 3;
    property EscapeSequences: WordBool dispid 4;
    property Format: WideString dispid 5;
    property GuardWidth: Integer dispid 6;
    property LastError: WideString dispid 7;
    property LastErrorNo: Integer dispid 8;
    property ModulWidth: WideString dispid 9;
    property Orientation: tag_Degree dispid 10;
    property PrintDataText: WordBool dispid 11;
    property PrintTextAbove: WordBool dispid 12;
    property Ratio: WideString dispid 13;
    property RatioHint: WideString dispid 14;
    property TextColor: OLE_COLOR dispid 15;
    property PDF417_Columns: Integer dispid 21;
    property PDF417_Rows: Integer dispid 20;
    property PDF417_ECLevel: Integer dispid 22;
    property PDF417_RowHeight: Integer dispid 23;
    property MustFit: WordBool dispid 24;
    property TextDistance: Integer dispid 25;
    property NotchHeight: Integer dispid 26;
    property RatioDefault: WideString dispid 27;
    property CheckDigits: WideString dispid 28;
    property MAXI_Mode: Integer dispid 30;
    property MAXI_AppendIndex: Integer dispid 31;
    property MAXI_AppendCount: Integer dispid 32;
    property MAXI_Undercut: Integer dispid 33;
    property CountModules: Double dispid 40;
    property BCWidthAct[eUnit: tag_MUnit]: Double readonly dispid 41;
    property BCHeightAct[eUnit: tag_MUnit]: Double readonly dispid 42;
    property ModWidthAct[eUnit: tag_MUnit]: Double readonly dispid 43;
    property BCWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 44;
    property BCHeightHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 45;
    property ModWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double readonly dispid 46;
    property MAXI_Preamble: WordBool dispid 34;
    property MAXI_PostalCode: WideString dispid 35;
    property MAXI_CountryCode: WideString dispid 36;
    property MAXI_ServiceClass: WideString dispid 37;
    property MAXI_Date: WideString dispid 38;
    property DrawStatus: tag_DrawStatus dispid 47;
    property SuppressErrorMsg: WordBool dispid 48;
    property CountRows: Double dispid 80;
  end;

// *********************************************************************//
// DispIntf:  _ITBarCodeEvents
// Flags:     (4096) Dispatchable
// GUID:      {618093F9-5BAD-44D9-AF77-5E715CDD4606}
// *********************************************************************//
  _ITBarCodeEvents = dispinterface
    ['{618093F9-5BAD-44D9-AF77-5E715CDD4606}']
    procedure Click; dispid -600;
    procedure DblClick; dispid -601;
    procedure MouseDown(nButton: Smallint; nShift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(nButton: Smallint; nShift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(nButton: Smallint; nShift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -607;
    procedure BeforeDraw; dispid 1;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TTBarCode5
// Help String      : TBarCode5
// Default Interface: _ITBarCode
// Def. Intf. DISP? : No
// Event   Interface: _ITBarCodeEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTBarCode5 = class(TOleControl)
  private
    FOnBeforeDraw: TNotifyEvent;
    FIntf: _ITBarCode;
    function  GetControlInterface: _ITBarCode;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function  Get_BCWidthAct(eUnit: tag_MUnit): Double;
    function  Get_BCHeightAct(eUnit: tag_MUnit): Double;
    function  Get_ModWidthAct(eUnit: tag_MUnit): Double;
    function  Get_BCWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double;
    function  Get_BCHeightHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double;
    function  Get_ModWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit): Double;
    function  Get_QR_StructAppParity(const sText: WideString): Smallint;
    function  Get_QualityHdc(hDC: Integer; nWidth: Integer; nHeight: Integer): Integer;
  public
    procedure AboutBox;
    procedure Refresh;
    procedure BCDraw(hDC: Integer; nLeft: Integer; nTop: Integer; nWidth: Integer; nHeight: Integer);
    procedure LicenseMe(const sLicensee: WideString; eKind: tag_licKind; nLicenses: Integer; 
                        const sLicenseKey: WideString; eProductID: tag_licProduct);
    procedure CopyToClipboard;
    procedure CopyToClipboardEx(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                const sFileName: WideString);
    procedure SaveImage(const sFileName: WideString; eImageType: tag_ImageType; nXSize: Integer; 
                        nYSize: Integer; nXRes: Integer; nYRes: Integer);
    procedure SaveImageEx(hDC: Integer; const sFileName: WideString; eImageType: tag_ImageType; 
                          nQuality: Integer; nXSize: Integer; nYSize: Integer; nXRes: Integer; 
                          nYRes: Integer);
    procedure Licencing;
    function  ConvertToStream(eImageType: tag_ImageType; nXSize: Integer; nYSize: Integer; 
                              nXRes: Integer; nYRes: Integer): OleVariant;
    function  ConvertToStreamEx(hDC: Integer; eImageType: tag_ImageType; nQuality: Integer; 
                                nXSize: Integer; nYSize: Integer; nXRes: Integer; nYRes: Integer): OleVariant;
    procedure PropertyDialog;
    property  ControlInterface: _ITBarCode read GetControlInterface;
    property  DefaultInterface: _ITBarCode read GetControlInterface;
    property Window: Integer index -515 read GetIntegerProp;
    property BCWidthAct[eUnit: tag_MUnit]: Double read Get_BCWidthAct;
    property BCHeightAct[eUnit: tag_MUnit]: Double read Get_BCHeightAct;
    property ModWidthAct[eUnit: tag_MUnit]: Double read Get_ModWidthAct;
    property BCWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_BCWidthHdc;
    property BCHeightHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_BCHeightHdc;
    property ModWidthHdc[hDC: Integer; nWidth: Integer; nHeight: Integer; eUnit: tag_MUnit]: Double read Get_ModWidthHdc;
    property QR_StructAppParity[const sText: WideString]: Smallint read Get_QR_StructAppParity;
    property QualityHdc[hDC: Integer; nWidth: Integer; nHeight: Integer]: Integer read Get_QualityHdc;
  published
    property  ParentColor;
    property  ParentFont;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property  OnDblClick;
    property  OnClick;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property BackStyle: TOleEnum index -502 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Font: TFont index -512 read GetTFontProp write _SetTFontProp stored False;
    property ForeColor: TColor index -513 read GetTColorProp write SetTColorProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property Text: WideString index -517 read GetWideStringProp write SetWideStringProp stored False;
    property BarCode: TOleEnum index 1 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property CDMethod: TOleEnum index 2 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property CountCheckDigits: Integer index 3 read GetIntegerProp write SetIntegerProp stored False;
    property EscapeSequences: WordBool index 4 read GetWordBoolProp write SetWordBoolProp stored False;
    property Format: WideString index 5 read GetWideStringProp write SetWideStringProp stored False;
    property GuardWidth: Integer index 6 read GetIntegerProp write SetIntegerProp stored False;
    property LastError: WideString index 7 read GetWideStringProp write SetWideStringProp stored False;
    property LastErrorNo: Integer index 8 read GetIntegerProp write SetIntegerProp stored False;
    property ModulWidth: WideString index 9 read GetWideStringProp write SetWideStringProp stored False;
    property Orientation: TOleEnum index 10 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property PrintDataText: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintTextAbove: WordBool index 12 read GetWordBoolProp write SetWordBoolProp stored False;
    property Ratio: WideString index 13 read GetWideStringProp write SetWideStringProp stored False;
    property RatioHint: WideString index 14 read GetWideStringProp write SetWideStringProp stored False;
    property TextColor: TColor index 15 read GetTColorProp write SetTColorProp stored False;
    property PDF417_Columns: Integer index 21 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_Rows: Integer index 20 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_ECLevel: Integer index 22 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_RowHeight: Integer index 23 read GetIntegerProp write SetIntegerProp stored False;
    property MustFit: WordBool index 24 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextDistance: Integer index 25 read GetIntegerProp write SetIntegerProp stored False;
    property NotchHeight: Integer index 26 read GetIntegerProp write SetIntegerProp stored False;
    property RatioDefault: WideString index 27 read GetWideStringProp write SetWideStringProp stored False;
    property CheckDigits: WideString index 28 read GetWideStringProp write SetWideStringProp stored False;
    property MAXI_Mode: Integer index 30 read GetIntegerProp write SetIntegerProp stored False;
    property MAXI_AppendIndex: Integer index 31 read GetIntegerProp write SetIntegerProp stored False;
    property MAXI_AppendCount: Integer index 32 read GetIntegerProp write SetIntegerProp stored False;
    property MAXI_Undercut: Integer index 33 read GetIntegerProp write SetIntegerProp stored False;
    property CountModules: Double index 40 read GetDoubleProp write SetDoubleProp stored False;
    property MAXI_Preamble: WordBool index 34 read GetWordBoolProp write SetWordBoolProp stored False;
    property MAXI_PostalCode: WideString index 35 read GetWideStringProp write SetWideStringProp stored False;
    property MAXI_CountryCode: WideString index 36 read GetWideStringProp write SetWideStringProp stored False;
    property MAXI_ServiceClass: WideString index 37 read GetWideStringProp write SetWideStringProp stored False;
    property MAXI_Date: WideString index 38 read GetWideStringProp write SetWideStringProp stored False;
    property DrawStatus: TOleEnum index 47 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property SuppressErrorMsg: WordBool index 48 read GetWordBoolProp write SetWordBoolProp stored False;
    property CountRows: Double index 80 read GetDoubleProp write SetDoubleProp stored False;
    property DM_Size: TOleEnum index 81 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property DM_Rectangular: WordBool index 82 read GetWordBoolProp write SetWordBoolProp stored False;
    property DM_Format: TOleEnum index 83 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property DM_AppendIndex: Integer index 84 read GetIntegerProp write SetIntegerProp stored False;
    property DM_AppendCount: Integer index 85 read GetIntegerProp write SetIntegerProp stored False;
    property DM_AppendFileID: Integer index 86 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_SegmentIndex: Integer index 87 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_FileID: WideString index 88 read GetWideStringProp write SetWideStringProp stored False;
    property PDF417_LastSegment: WordBool index 89 read GetWordBoolProp write SetWordBoolProp stored False;
    property PDF417_FileName: WideString index 90 read GetWideStringProp write SetWideStringProp stored False;
    property PDF417_SegmentCount: Integer index 91 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_TimeStamp: Integer index 92 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_Sender: WideString index 93 read GetWideStringProp write SetWideStringProp stored False;
    property PDF417_Addressee: WideString index 94 read GetWideStringProp write SetWideStringProp stored False;
    property PDF417_FileSize: Integer index 95 read GetIntegerProp write SetIntegerProp stored False;
    property PDF417_CheckSum: Integer index 96 read GetIntegerProp write SetIntegerProp stored False;
    property QR_Version: TOleEnum index 97 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property QR_Format: TOleEnum index 98 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property QR_ECLevel: TOleEnum index 99 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property QR_Mask: TOleEnum index 101 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property QR_AppendIndex: Integer index 102 read GetIntegerProp write SetIntegerProp stored False;
    property QR_AppendCount: Integer index 103 read GetIntegerProp write SetIntegerProp stored False;
    property QR_AppendParity: Smallint index 104 read GetSmallintProp write SetSmallintProp stored False;
    property QR_FmtAppIndicator: WideString index 105 read GetWideStringProp write SetWideStringProp stored False;
    property PDF417_RatioRowCol: WideString index 107 read GetWideStringProp write SetWideStringProp stored False;
    property InterpretInputAs: TOleEnum index 108 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property OptResolution: WordBool index 109 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontName: WideString index 110 read GetWideStringProp write SetWideStringProp stored False;
    property FontSize: Integer index 111 read GetIntegerProp write SetIntegerProp stored False;
    property CBF_Rows: Integer index 112 read GetIntegerProp write SetIntegerProp stored False;
    property CBF_Columns: Integer index 113 read GetIntegerProp write SetIntegerProp stored False;
    property CBF_RowHeight: Integer index 114 read GetIntegerProp write SetIntegerProp stored False;
    property CBF_RowSeparatorHeight: Integer index 115 read GetIntegerProp write SetIntegerProp stored False;
    property CBF_Format: TOleEnum index 116 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property DisplayText: WideString index 117 read GetWideStringProp write SetWideStringProp stored False;
    property BarWidthReduction: Integer index 118 read GetIntegerProp write SetIntegerProp stored False;
    property TextAlignment: TOleEnum index 119 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Quality: Integer index 120 read GetIntegerProp write SetIntegerProp stored False;
    property OnBeforeDraw: TNotifyEvent read FOnBeforeDraw write FOnBeforeDraw;
  end;

// *********************************************************************//
// The Class CoPPGGeneral provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGGeneral. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGGeneral = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGAdvanced provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGAdvanced. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGAdvanced = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGPdf417 provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGPdf417. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGPdf417 = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGMaxi provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGMaxi. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGMaxi = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGDataMatrix provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGDataMatrix. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGDataMatrix = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGQRCode provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGQRCode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGQRCode = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

// *********************************************************************//
// The Class CoPPGCodaBlockF provides a Create and CreateRemote method to          
// create instances of the default interface IUnknown exposed by              
// the CoClass PPGCodaBlockF. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPPGCodaBlockF = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

procedure TTBarCode5.InitControlData;
const
  CEventDispIDs: array [0..0] of DWORD = (
    $00000001);
  CLicenseKey: array[0..23] of Word = ( $004D, $0079, $0020, $0072, $0075, $006E, $002D, $0074, $0069, $006D, $0065
    , $0020, $006C, $0069, $0063, $0065, $006E, $0073, $0065, $0020, $006B
    , $0065, $0079, $0000);
  CTFontIDs: array [0..0] of DWORD = (
    $FFFFFE00);
  CControlData: TControlData2 = (
    ClassID: '{10ED9AE3-DA1A-461C-826A-CD9C850C58E2}';
    EventIID: '{618093F9-5BAD-44D9-AF77-5E715CDD4606}';
    EventCount: 1;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $0000002F;
    Version: 401;
    FontCount: 1;
    FontIDs: @CTFontIDs);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnBeforeDraw) - Cardinal(Self);
end;

procedure TTBarCode5.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _ITBarCode;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TTBarCode5.GetControlInterface: _ITBarCode;
begin
  CreateControl;
  Result := FIntf;
end;

function  TTBarCode5.Get_BCWidthAct(eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.BCWidthAct[eUnit];
end;

function  TTBarCode5.Get_BCHeightAct(eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.BCHeightAct[eUnit];
end;

function  TTBarCode5.Get_ModWidthAct(eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.ModWidthAct[eUnit];
end;

function  TTBarCode5.Get_BCWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                    eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.BCWidthHdc[hDC, nWidth, nHeight, eUnit];
end;

function  TTBarCode5.Get_BCHeightHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                     eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.BCHeightHdc[hDC, nWidth, nHeight, eUnit];
end;

function  TTBarCode5.Get_ModWidthHdc(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                     eUnit: tag_MUnit): Double;
begin
  Result := DefaultInterface.ModWidthHdc[hDC, nWidth, nHeight, eUnit];
end;

function  TTBarCode5.Get_QR_StructAppParity(const sText: WideString): Smallint;
begin
  Result := DefaultInterface.QR_StructAppParity[sText];
end;

function  TTBarCode5.Get_QualityHdc(hDC: Integer; nWidth: Integer; nHeight: Integer): Integer;
begin
  Result := DefaultInterface.QualityHdc[hDC, nWidth, nHeight];
end;

procedure TTBarCode5.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure TTBarCode5.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TTBarCode5.BCDraw(hDC: Integer; nLeft: Integer; nTop: Integer; nWidth: Integer; 
                            nHeight: Integer);
begin
  DefaultInterface.BCDraw(hDC, nLeft, nTop, nWidth, nHeight);
end;

procedure TTBarCode5.LicenseMe(const sLicensee: WideString; eKind: tag_licKind; nLicenses: Integer; 
                               const sLicenseKey: WideString; eProductID: tag_licProduct);
begin
  DefaultInterface.LicenseMe(sLicensee, eKind, nLicenses, sLicenseKey, eProductID);
end;

procedure TTBarCode5.CopyToClipboard;
begin
  DefaultInterface.CopyToClipboard;
end;

procedure TTBarCode5.CopyToClipboardEx(hDC: Integer; nWidth: Integer; nHeight: Integer; 
                                       const sFileName: WideString);
begin
  DefaultInterface.CopyToClipboardEx(hDC, nWidth, nHeight, sFileName);
end;

procedure TTBarCode5.SaveImage(const sFileName: WideString; eImageType: tag_ImageType; 
                               nXSize: Integer; nYSize: Integer; nXRes: Integer; nYRes: Integer);
begin
  DefaultInterface.SaveImage(sFileName, eImageType, nXSize, nYSize, nXRes, nYRes);
end;

procedure TTBarCode5.SaveImageEx(hDC: Integer; const sFileName: WideString; 
                                 eImageType: tag_ImageType; nQuality: Integer; nXSize: Integer; 
                                 nYSize: Integer; nXRes: Integer; nYRes: Integer);
begin
  DefaultInterface.SaveImageEx(hDC, sFileName, eImageType, nQuality, nXSize, nYSize, nXRes, nYRes);
end;

procedure TTBarCode5.Licencing;
begin
  DefaultInterface.Licencing;
end;

function  TTBarCode5.ConvertToStream(eImageType: tag_ImageType; nXSize: Integer; nYSize: Integer; 
                                     nXRes: Integer; nYRes: Integer): OleVariant;
begin
  Result := DefaultInterface.ConvertToStream(eImageType, nXSize, nYSize, nXRes, nYRes);
end;

function  TTBarCode5.ConvertToStreamEx(hDC: Integer; eImageType: tag_ImageType; nQuality: Integer; 
                                       nXSize: Integer; nYSize: Integer; nXRes: Integer; 
                                       nYRes: Integer): OleVariant;
begin
  Result := DefaultInterface.ConvertToStreamEx(hDC, eImageType, nQuality, nXSize, nYSize, nXRes, 
                                               nYRes);
end;

procedure TTBarCode5.PropertyDialog;
begin
  DefaultInterface.PropertyDialog;
end;

class function CoPPGGeneral.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGGeneral) as IUnknown;
end;

class function CoPPGGeneral.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGGeneral) as IUnknown;
end;

class function CoPPGAdvanced.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGAdvanced) as IUnknown;
end;

class function CoPPGAdvanced.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGAdvanced) as IUnknown;
end;

class function CoPPGPdf417.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGPdf417) as IUnknown;
end;

class function CoPPGPdf417.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGPdf417) as IUnknown;
end;

class function CoPPGMaxi.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGMaxi) as IUnknown;
end;

class function CoPPGMaxi.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGMaxi) as IUnknown;
end;

class function CoPPGDataMatrix.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGDataMatrix) as IUnknown;
end;

class function CoPPGDataMatrix.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGDataMatrix) as IUnknown;
end;

class function CoPPGQRCode.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGQRCode) as IUnknown;
end;

class function CoPPGQRCode.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGQRCode) as IUnknown;
end;

class function CoPPGCodaBlockF.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_PPGCodaBlockF) as IUnknown;
end;

class function CoPPGCodaBlockF.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PPGCodaBlockF) as IUnknown;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TTBarCode5]);
end;

end.
