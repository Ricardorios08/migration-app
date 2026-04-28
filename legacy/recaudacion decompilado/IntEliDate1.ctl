VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mscomct2.ocx"
Begin VB.UserControl IntEliDate1
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 3000
  ClientHeight = 2568
  BackStyle = 0 'Transparent
  Begin MSComCtl2.MonthView cal
    Left = 240
    Top = 120
    Width = 2616
    Height = 2208
    TabIndex = 0
    OleObjectBlob = "IntEliDate1.ctx":0000
  End
End

Attribute VB_Name = "IntEliDate1"

'VA: 5F2734
Private Declare Function lstrcat Lib "kernel32" Alias "lstrcatA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 5F26F0
Private Declare Sub CoTaskMemFree Lib "ole32"()
'VA: 5F2698
Private Declare Function SHGetPathFromIDList Lib "shell32" (ByRef pidl As CITEMIDLIST, ByVal pszPath As String) As Long
'VA: 5F264C
Private Declare Function SHBrowseForFolder Lib "shell32" (ByRef lpbi As BROWSEINFO) As Long
'VA: 580788
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWndParent As Long, ByVal hWndChildAfter As Long, ByVal lpszClass As String, ByVal lpszWindow As String) As Long
'VA: 580740
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 5806F8
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'VA: 577B8C
Private Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
'VA: 571170
Private Declare Function EnumJobs Lib "winspool" Alias "EnumJobsA" (ByVal hPrinter As Long, ByVal FirstJob As Long, ByVal NoJobs As Long, ByVal Level As Long, pJob As Byte, ByVal cdBuf As Long, pcbNeeded As Long, pcReturned As Long) As Long
'VA: 57112C
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
'VA: 5710E8
Private Declare Function ClosePrinter Lib "winspool" (ByVal hPrinter As Long) As Long
'VA: 5710A0
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 571034
Private Declare Function GetPrinter Lib "winspool" Alias "GetPrinterA" (ByVal hPrinter As Long, ByVal Level As Long, pPrinter As Any, ByVal cbBuf As Long, pcbNeeded As Long) As Long
'VA: 570FF0
Private Declare Function SetPrinter Lib "winspool" Alias "SetPrinterA" (ByVal hPrinter As Long, ByVal Level As Long, pPrinter As Byte, ByVal Command As Long) As Long
'VA: 570FAC
Private Declare Function OpenPrinter Lib "winspool" Alias "OpenPrinterA" (ByVal pPrinterName As String, phPrinter As Long, pDefault As PRINTER_DEFAULTS) As Long
'VA: 570F64
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
'VA: 570F1C
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
'VA: 570ED4
Private Declare Function WriteProfileString Lib "kernel32" Alias "WriteProfileStringA" (ByVal lpszSection As String, ByVal lpszKeyName As String, ByVal lpszString As String) As Long
'VA: 570E88
Private Declare Function GetProfileString Lib "kernel32" Alias "GetProfileStringA" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long) As Long
'VA: 570E3C
Private Declare Function AdvancedDocumentProperties Lib "winspool" Alias "AdvancedDocumentPropertiesA" (ByVal hwnd As Long, ByVal hPrinter As Long, ByVal pDeviceName As String, pDevModeOutput As DEVMODE, pDevModeInput As DEVMODE) As Long
'VA: 570DDC
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 570D94
Private Declare Sub SHGetPathFromIDListA Lib "shell32"()
'VA: 570D44
Private Declare Sub SHGetSpecialFolderLocation Lib "shell32" (ByVal hwnd As Long, ByVal csidl As Long, ByRef ppidl As ITEMIDLIST)
'VA: 5689F4
Private Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" (ByRef lpDevMode As DEVMODE, ByVal dwFlags As Long) As Long
'VA: 5689A4
Private Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" (ByVal lpszDeviceName As String, ByVal iModeNum As Long, ByRef lpDevMode As DEVMODE) As Long
'VA: 55A1D0
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)


Private Sub cal_DateClick(DateClicked As Date) 'A805CC
  'Data Table: 4035A4
  loc_A8054C: FLdPrThis
  loc_A8054D: VCallAd Control_ID_cal
  loc_A80550: FStAdFunc var_88
  loc_A80553: FLdPr var_88
  loc_A80556: LateIdLdVar var_98 DispID_23 0
  loc_A8055D: PopAd
  loc_A8055F: LitI4 1
  loc_A80564: LitI4 1
  loc_A80569: LitVarStr var_C8, "dd/mm/yyyy"
  loc_A8056E: FStVarCopyObj var_D8
  loc_A80571: FLdRfVar var_D8
  loc_A80574: FLdRfVar var_98
  loc_A80577: FnCDateVar
  loc_A80579: CVarDate var_B8
  loc_A8057D: FLdRfVar var_E8
  loc_A80580: ImpAdCallFPR4  = Format(, )
  loc_A80585: FLdRfVar var_E8
  loc_A80588: CStrVarTmp
  loc_A80589: ImpAdStStr MemVar_D93028
  loc_A8058D: FFree1Ad var_88
  loc_A80590: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_A8059B: LitVar_FALSE
  loc_A8059F: PopAdLdVar
  loc_A805A0: FLdPrThis
  loc_A805A1: VCallAd Control_ID_cal
  loc_A805A4: FStAdFunc var_88
  loc_A805A7: FLdPr var_88
  loc_A805AA: LateIdSt
  loc_A805AF: FFree1Ad var_88
  loc_A805B2: ImpAdLdRf MemVar_D930A4
  loc_A805B5: NewIfNullAd
  loc_A805B8: FStAdNoPop
  loc_A805BC: ImpAdLdRf MemVar_D9C5D8
  loc_A805BF: NewIfNullPr Global
  loc_A805C2: Global.Unload from_stack_1
  loc_A805C7: FFree1Ad var_88
  loc_A805CA: ExitProcHresult
End Sub

Private Sub cal_KeyPress(KeyAscii As Integer) 'A0F2A0
  'Data Table: 4035A4
  loc_A0F268: ILdI2 KeyAscii
  loc_A0F26B: CI4UI1
  loc_A0F26C: LitI4 &H6C
  loc_A0F271: EqI4
  loc_A0F272: ILdI2 KeyAscii
  loc_A0F275: CI4UI1
  loc_A0F276: LitI4 &HD
  loc_A0F27B: EqI4
  loc_A0F27C: OrI4
  loc_A0F27D: BranchF loc_A0F29F
  loc_A0F280: FLdPrThis
  loc_A0F281: VCallAd Control_ID_cal
  loc_A0F284: FStAdFunc var_88
  loc_A0F287: FLdPr var_88
  loc_A0F28A: LateIdLdVar var_98 DispID_23 0
  loc_A0F291: FnCDateVar
  loc_A0F293: PopFPR8
  loc_A0F294: Call cal_DateClick(from_stack_1v)
  loc_A0F299: FFree1Ad var_88
  loc_A0F29C: FFree1Var var_98 = ""
  loc_A0F29F: ExitProcHresult
End Sub

Private Sub UserControl_UnknownEvent_7 '9E7614
  'Data Table: 4035A4
  loc_9E75F0: LitI2 3510
  loc_9E75F3: CR8I2
  loc_9E75F4: PopFPR4
  loc_9E75F5: FLdPr Me
  loc_9E75F8: MemLdPr global_16
  loc_9E75FB: Me.Width = from_stack_1s
  loc_9E7600: LitI2 2745
  loc_9E7603: CR8I2
  loc_9E7604: PopFPR4
  loc_9E7605: FLdPr Me
  loc_9E7608: MemLdPr global_16
  loc_9E760B: Me.Height = from_stack_1s
  loc_9E7610: ExitProcHresult
  loc_9E7611: FLdRfVar var_94
End Sub

Private Sub UserControl_UnknownEvent_17 '9AFB34
  'Data Table: 4035A4
  loc_9AFB2C: Call inicializa()
  loc_9AFB31: ExitProcHresult
End Sub

Public Sub inicializa() '9FCED0
  'Data Table: 4035A4
  loc_9FCEA8: FLdRfVar var_94
  loc_9FCEAB: ImpAdCallFPR4  = Date
  loc_9FCEB0: FLdRfVar var_94
  loc_9FCEB3: FnCDateVar
  loc_9FCEB5: CVarDate var_A4
  loc_9FCEB9: PopAdLdVar
  loc_9FCEBA: FLdPrThis
  loc_9FCEBB: VCallAd Control_ID_cal
  loc_9FCEBE: FStAdFunc var_B8
  loc_9FCEC1: FLdPr var_B8
  loc_9FCEC4: LateIdSt
  loc_9FCEC9: FFree1Ad var_B8
  loc_9FCECC: FFree1Var var_94 = ""
  loc_9FCECF: ExitProcHresult
End Sub

Public Property Get value() '9D29C4
  'Data Table: 4035A4
  loc_9D29AC: ZeroRetValVar
  loc_9D29AE: FLdPr Me
  loc_9D29B1: MemLdStr global_60
  loc_9D29B4: CVarStr var_A4
  loc_9D29B7: FStVarCopy
  loc_9D29BB: ExitProcCbHresult
End Sub

Private Function Proc_0_6_A83D1C() 'A83D1C
  'Data Table: 4035A4
  loc_A83C8C: FLdPrThis
  loc_A83C8D: VCallAd Control_ID_cal
  loc_A83C90: FStAdFunc var_88
  loc_A83C93: FLdPr var_88
  loc_A83C96: LateIdLdVar var_98 DispID_7 -32767
  loc_A83C9D: CBoolVar
  loc_A83C9F: FFree1Ad var_88
  loc_A83CA2: FFree1Var var_98 = ""
  loc_A83CA5: BranchF loc_A83CC2
  loc_A83CA8: LitVar_FALSE
  loc_A83CAC: PopAdLdVar
  loc_A83CAD: FLdPrThis
  loc_A83CAE: VCallAd Control_ID_cal
  loc_A83CB1: FStAdFunc var_88
  loc_A83CB4: FLdPr var_88
  loc_A83CB7: LateIdSt
  loc_A83CBC: FFree1Ad var_88
  loc_A83CBF: Branch loc_A83D1A
  loc_A83CC2: FLdPr Me
  loc_A83CC5: MemLdStr global_60
  loc_A83CC8: LitStr vbNullString
  loc_A83CCB: NeStr
  loc_A83CCD: BranchF loc_A83CEF
  loc_A83CD0: FLdPr Me
  loc_A83CD3: MemLdStr global_60
  loc_A83CD6: CDateStr
  loc_A83CD8: CVarDate var_A8
  loc_A83CDC: PopAdLdVar
  loc_A83CDD: FLdPrThis
  loc_A83CDE: VCallAd Control_ID_cal
  loc_A83CE1: FStAdFunc var_88
  loc_A83CE4: FLdPr var_88
  loc_A83CE7: LateIdSt
  loc_A83CEC: FFree1Ad var_88
  loc_A83CEF: LitVar_TRUE var_A8
  loc_A83CF2: PopAdLdVar
  loc_A83CF3: FLdPrThis
  loc_A83CF4: VCallAd Control_ID_cal
  loc_A83CF7: FStAdFunc var_88
  loc_A83CFA: FLdPr var_88
  loc_A83CFD: LateIdSt
  loc_A83D02: FFree1Ad var_88
  loc_A83D05: FLdPrThis
  loc_A83D06: VCallAd Control_ID_cal
  loc_A83D09: FStAdFunc var_88
  loc_A83D0C: FLdPr var_88
  loc_A83D0F: LateIdCall
  loc_A83D17: FFree1Ad var_88
  loc_A83D1A: ExitProcHresult
End Function
