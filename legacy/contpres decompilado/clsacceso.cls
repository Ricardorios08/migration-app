VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsacceso"
'VA: 634C28
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 634B1C
Private Declare Function WideCharToMultiByte Lib "kernel32" (ByVal CodePage As Long, ByVal dwFlags As Long, ByVal lpWideCharStr As String, ByVal cchWideChar As Long, ByVal lpMultiByteStr As String, ByVal cchMultiByte As Long, ByVal lpDefaultChar As String, ByVal lpUsedDefaultChar As Long) As Long
'VA: 634ABC
Private Declare Sub OleCreatePictureIndirect Lib "olepro32"()
'VA: 634A54
Private Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long) As Long
'VA: 634A10
Private Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long
'VA: 6349CC
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
'VA: 634984
Private Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
'VA: 63493C
Private Declare Function CreateCompatibleBitmap Lib "gdi32" (ByVal hdc As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long
'VA: 6348EC
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hdc As Long) As Long
'VA: 6348A0
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
'VA: 634860
Private Declare Function FillRect Lib "user32" (ByVal hdc As Long, lpRect As RECT, ByVal hBrush As Long) As Long
'VA: 63480C
Private Declare Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As Long
'VA: 6347C0
Private Declare Function StretchDIBits Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal dx As Long, ByVal dy As Long, ByVal SrcX As Long, ByVal SrcY As Long, ByVal wSrcWidth As Long, ByVal wSrcHeight As Long, lpBits As Any, lpBitsInfo As BITMAPINFO, ByVal wUsage As Long, ByVal dwRop As Long) As Long
'VA: 621298
Private Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" (ByRef lpDevMode As DEVMODE, ByVal dwFlags As Long) As Long
'VA: 621248
Private Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" (ByVal lpszDeviceName As String, ByVal iModeNum As Long, ByRef lpDevMode As DEVMODE) As Long
'VA: 5E4554
Private Declare Function EnumJobs Lib "winspool" Alias "EnumJobsA" (ByVal hPrinter As Long, ByVal FirstJob As Long, ByVal NoJobs As Long, ByVal Level As Long, pJob As Byte, ByVal cdBuf As Long, pcbNeeded As Long, pcReturned As Long) As Long
'VA: 5E4510
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
'VA: 5E44CC
Private Declare Function ClosePrinter Lib "winspool" (ByVal hPrinter As Long) As Long
'VA: 5E4484
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 5E4440
Private Declare Function GetPrinter Lib "winspool" Alias "GetPrinterA" (ByVal hPrinter As Long, ByVal Level As Long, pPrinter As Any, ByVal cbBuf As Long, pcbNeeded As Long) As Long
'VA: 5E43FC
Private Declare Function SetPrinter Lib "winspool" Alias "SetPrinterA" (ByVal hPrinter As Long, ByVal Level As Long, pPrinter As Byte, ByVal Command As Long) As Long
'VA: 5E43B8
Private Declare Function OpenPrinter Lib "winspool" Alias "OpenPrinterA" (ByVal pPrinterName As String, phPrinter As Long, pDefault As PRINTER_DEFAULTS) As Long
'VA: 5E4370
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
'VA: 5E4328
Private Declare Function WriteProfileString Lib "kernel32" Alias "WriteProfileStringA" (ByVal lpszSection As String, ByVal lpszKeyName As String, ByVal lpszString As String) As Long
'VA: 5E42DC
Private Declare Function GetProfileString Lib "kernel32" Alias "GetProfileStringA" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long) As Long
'VA: 5E4290
Private Declare Function AdvancedDocumentProperties Lib "winspool" Alias "AdvancedDocumentPropertiesA" (ByVal hwnd As Long, ByVal hPrinter As Long, ByVal pDeviceName As String, pDevModeOutput As DEVMODE, pDevModeInput As DEVMODE) As Long
'VA: 5E4230
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 5E41DC
Private Declare Sub SHGetSpecialFolderLocation Lib "shell32" (ByVal hwnd As Long, ByVal csidl As Long, ByRef ppidl As ITEMIDLIST)
'VA: 5E3C7C
Private Declare Sub SHGetPathFromIDListA Lib "shell32"()
'VA: 57CE18
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
'VA: 57CDD4
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
'VA: 57CD88
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 577F8C
Private Declare Function PathIsURL Lib "shlwapi" Alias "PathIsURLA" (ByVal pszPath As String) As Long
'VA: 5726D0
Private Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
'VA: 572688
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
'VA: 572640
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWndParent As Long, ByVal hWndChildAfter As Long, ByVal lpszClass As String, ByVal lpszWindow As String) As Long
'VA: 5725F8
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 5725B0
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'VA: 5191D4
Private Declare Function GetUserDefaultLCID Lib "kernel32" () As Long
'VA: 519188
Private Declare Function SetLocaleInfo Lib "kernel32" Alias "SetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As Long, ByVal lpLCData As String) As Long

Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '406C00
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '406C0F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '406C1E
  RsFrm = Value
End Sub

Public Sub MoveFirst() '970494
  'Data Table: 406AE4
  loc_97046C: FLdRfVar var_88
  loc_97046F: FLdPr Me
  loc_970472: MemLdPr RsFrm
  loc_970475:  = Me.RecordCount
  loc_97047A: ILdRf var_88
  loc_97047D: LitI4 0
  loc_970482: GtI4
  loc_970483: BranchF loc_970491
  loc_970486: FLdPr Me
  loc_970489: MemLdPr RsFrm
  loc_97048C: Me.MoveFirst
  loc_970491: ExitProcHresult
  loc_970492: ExitProcHresult
End Sub

Public Sub MoveLast() '96D104
  'Data Table: 406AE4
  loc_96D0DC: FLdRfVar var_88
  loc_96D0DF: FLdPr Me
  loc_96D0E2: MemLdPr RsFrm
  loc_96D0E5:  = Me.RecordCount
  loc_96D0EA: ILdRf var_88
  loc_96D0ED: LitI4 0
  loc_96D0F2: GtI4
  loc_96D0F3: BranchF loc_96D101
  loc_96D0F6: FLdPr Me
  loc_96D0F9: MemLdPr RsFrm
  loc_96D0FC: Me.MoveLast
  loc_96D101: ExitProcHresult
End Sub

Public Sub MoveNext() '99F6C8
  'Data Table: 406AE4
  loc_99F650: FLdRfVar var_86
  loc_99F653: FLdPr Me
  loc_99F656: MemLdPr RsFrm
  loc_99F659:  = Me.EOF
  loc_99F65E: FLdI2 var_86
  loc_99F661: NotI4
  loc_99F662: FLdRfVar var_8C
  loc_99F665: FLdPr Me
  loc_99F668: MemLdPr RsFrm
  loc_99F66B:  = Me.RecordCount
  loc_99F670: ILdRf var_8C
  loc_99F673: LitI4 0
  loc_99F678: GtI4
  loc_99F679: AndI4
  loc_99F67A: BranchF loc_99F688
  loc_99F67D: FLdPr Me
  loc_99F680: MemLdPr RsFrm
  loc_99F683: Me.MoveNext
  loc_99F688: FLdRfVar var_86
  loc_99F68B: FLdPr Me
  loc_99F68E: MemLdPr RsFrm
  loc_99F691:  = Me.EOF
  loc_99F696: FLdI2 var_86
  loc_99F699: FLdRfVar var_8C
  loc_99F69C: FLdPr Me
  loc_99F69F: MemLdPr RsFrm
  loc_99F6A2:  = Me.RecordCount
  loc_99F6A7: ILdRf var_8C
  loc_99F6AA: LitI4 0
  loc_99F6AF: GtI4
  loc_99F6B0: AndI4
  loc_99F6B1: BranchF loc_99F6C4
  loc_99F6B4: ImpAdCallFPR4 Beep()
  loc_99F6B9: FLdPr Me
  loc_99F6BC: MemLdPr RsFrm
  loc_99F6BF: Me.MoveLast
  loc_99F6C4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941378
  'Data Table: 406AE4
  loc_94136C: FLdPr Me
  loc_94136F: MemLdPr RsFrm
  loc_941372: Me.MoveNext
  loc_941377: ExitProcHresult
End Sub

Public Sub Move(iValor) '94955C
  'Data Table: 406AE4
  loc_949548: LitVar_Missing var_94
  loc_94954B: PopAdLdVar
  loc_94954C: ILdI2 iValor
  loc_94954F: CI4UI1
  loc_949550: FLdPr Me
  loc_949553: MemLdPr RsFrm
  loc_949556: Me.Move from_stack_1, from_stack_2
  loc_94955B: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F2D8
  'Data Table: 406AE4
  loc_99F260: FLdRfVar var_86
  loc_99F263: FLdPr Me
  loc_99F266: MemLdPr RsFrm
  loc_99F269:  = Me.BOF
  loc_99F26E: FLdI2 var_86
  loc_99F271: NotI4
  loc_99F272: FLdRfVar var_8C
  loc_99F275: FLdPr Me
  loc_99F278: MemLdPr RsFrm
  loc_99F27B:  = Me.RecordCount
  loc_99F280: ILdRf var_8C
  loc_99F283: LitI4 0
  loc_99F288: GtI4
  loc_99F289: AndI4
  loc_99F28A: BranchF loc_99F298
  loc_99F28D: FLdPr Me
  loc_99F290: MemLdPr RsFrm
  loc_99F293: Me.MovePrevious
  loc_99F298: FLdRfVar var_86
  loc_99F29B: FLdPr Me
  loc_99F29E: MemLdPr RsFrm
  loc_99F2A1:  = Me.BOF
  loc_99F2A6: FLdI2 var_86
  loc_99F2A9: FLdRfVar var_8C
  loc_99F2AC: FLdPr Me
  loc_99F2AF: MemLdPr RsFrm
  loc_99F2B2:  = Me.RecordCount
  loc_99F2B7: ILdRf var_8C
  loc_99F2BA: LitI4 0
  loc_99F2BF: GtI4
  loc_99F2C0: AndI4
  loc_99F2C1: BranchF loc_99F2D4
  loc_99F2C4: ImpAdCallFPR4 Beep()
  loc_99F2C9: FLdPr Me
  loc_99F2CC: MemLdPr RsFrm
  loc_99F2CF: Me.MoveFirst
  loc_99F2D4: ExitProcHresult
  loc_99F2D5: FLdR8 arg_D00
End Sub

Public Property Get EOF() '966948
  'Data Table: 406AE4
  loc_96692C: FLdRfVar var_88
  loc_96692F: FLdPr Me
  loc_966932: MemLdPr RsFrm
  loc_966935:  = Me.EOF
  loc_96693A: FLdI2 var_88
  loc_96693D: FStI2 var_86
  loc_966940: ExitProcCbHresult
  loc_966946: FLdRfVar arg_6C78
End Sub

Public Property Get BOF() '9668FC
  'Data Table: 406AE4
  loc_9668E0: FLdRfVar var_88
  loc_9668E3: FLdPr Me
  loc_9668E6: MemLdPr RsFrm
  loc_9668E9:  = Me.BOF
  loc_9668EE: FLdI2 var_88
  loc_9668F1: FStI2 var_86
  loc_9668F4: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '944504
  'Data Table: 406AE4
  loc_9444F4: ILdI4 sOrden
  loc_9444F7: FLdPr Me
  loc_9444FA: MemLdPr RsFrm
  loc_9444FD: Me.Sort = from_stack_1
  loc_944502: ExitProcHresult
End Sub

Public Sub Find(sFind) '967260
  'Data Table: 406AE4
  loc_967240: LitVar_Missing var_94
  loc_967243: PopAdLdVar
  loc_967244: LitI4 1
  loc_967249: LitI4 0
  loc_96724E: ILdI4 sFind
  loc_967251: FLdPr Me
  loc_967254: MemLdPr RsFrm
  loc_967257: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96725C: ExitProcHresult
  loc_96725D: CR8I4
  loc_96725E: IDvI2
End Sub

Public Sub Filter(sCriterio) '9489F0
  'Data Table: 406AE4
  loc_9489DC: ILdI4 sCriterio
  loc_9489DF: CVarStr var_94
  loc_9489E2: PopAdLdVar
  loc_9489E3: FLdPr Me
  loc_9489E6: MemLdPr RsFrm
  loc_9489E9: Me.Filter = from_stack_1
  loc_9489EE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '966734
  'Data Table: 406AE4
  loc_966718: FLdRfVar var_8C
  loc_96671B: FLdPr Me
  loc_96671E: MemLdPr RsFrm
  loc_966721:  = Me.AbsolutePosition
  loc_966726: ILdRf var_8C
  loc_966729: FStR4 var_88
  loc_96672C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '966604
  'Data Table: 406AE4
  loc_9665E8: FLdRfVar var_8C
  loc_9665EB: FLdPr Me
  loc_9665EE: MemLdPr RsFrm
  loc_9665F1:  = Me.RecordCount
  loc_9665F6: ILdRf var_8C
  loc_9665F9: FStR4 var_88
  loc_9665FC: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) '972E7C
  'Data Table: 406AE4
  loc_972E54: ILdRf sSelect
  loc_972E57: FStStrCopy var_88
  loc_972E5A: FLdPr Me
  loc_972E5D: MemLdRfVar from_stack_1.RsFrm
  loc_972E60: ILdRf var_88
  loc_972E63: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_972E68: LitVarStr var_98, "Primary"
  loc_972E6D: PopAdLdVar
  loc_972E6E: FLdPr Me
  loc_972E71: LateIdCall
  loc_972E79: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9664D0
  'Data Table: 406AE4
  loc_9664B8: ILdRf sSelect
  loc_9664BB: FStStrCopy var_88
  loc_9664BE: FLdPr Me
  loc_9664C1: MemLdRfVar from_stack_1.global_56
  loc_9664C4: ILdRf var_88
  loc_9664C7: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_9664CC: ExitProcHresult
  loc_9664CD: ThisVCallHidden
End Sub

Public Sub Requery() '966F90
  'Data Table: 406AE4
  loc_966F70: FLdPr Me
  loc_966F73: MemLdRfVar from_stack_1.RsFrm
  loc_966F76: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_966F7B: LitVarStr var_94, "Primary"
  loc_966F80: PopAdLdVar
  loc_966F81: FLdPr Me
  loc_966F84: LateIdCall
  loc_966F8C: ExitProcHresult
End Sub

Public Property Get DataSource() '972C50
  'Data Table: 406AE4
  loc_972C2C: ZeroRetVal
  loc_972C2E: FLdRfVar var_8C
  loc_972C31: FLdPr Me
  loc_972C34: MemLdPr RsFrm
  loc_972C37:  = Me.DataSource
  loc_972C3C: ILdRf var_8C
  loc_972C3F: CastAd
  loc_972C42: FStAdFunc var_88
  loc_972C45: FFree1Ad var_8C
  loc_972C48: ExitProcCbHresult
End Sub

Private Function Proc_0_20_972D08() '972D08
  'Data Table: 406AE4
  loc_972CE4: LitStr "Primary"
  loc_972CE7: FLdPr Me
  loc_972CEA: LateIdLdVar var_94 DispID_4 0
  loc_972CF1: CastAdVar Me
  loc_972CF5: FStAdFunc var_98
  loc_972CF8: FLdPr var_98
  loc_972D00: FFree1Ad var_98
  loc_972D03: FFree1Var var_94 = ""
  loc_972D06: ExitProcHresult
End Function

Private Function Proc_0_21_95089C(arg_C) '95089C
  'Data Table: 406AE4
  loc_950884: ILdI4 arg_C
  loc_950887: LitStr "Primary"
  loc_95088A: EqStr
  loc_95088C: BranchF loc_950899
  loc_95088F: FLdPr Me
  loc_950892: MemLdStr RsFrm
  loc_950895: IStAd
  loc_950899: ExitProcHresult
End Function
