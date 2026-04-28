VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeProveedores
  Caption = "Listado de Proveedores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeProveedores.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8040
  ClientHeight = 2655
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 6495
    Height = 975
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4920
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 1
    End
    Begin VB.CheckBox chkSoloLocadores
      Caption = "Solo Locadores"
      Left = 240
      Top = 360
      Width = 1575
      Height = 375
      TabIndex = 2
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2400
    Width = 8040
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptListadodeProveedores.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6960
    Top = 840
    Width = 735
    Height = 615
    TabIndex = 3
    Cancel = -1  'True
    Picture = "rptListadodeProveedores.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeProveedores.frx":0B9C
    Left = 7080
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1200
    Width = 3375
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 3015
    Height = 1095
    TabIndex = 5
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7080
    Top = 1080
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 4
    OleObjectBlob = "rptListadodeProveedores.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeProveedores"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub cmdSalir_Click() '9781C4
  'Data Table: 433648
  loc_978194: LitVarStr var_94, "Cerrando..."
  loc_978199: PopAdLdVar
  loc_97819A: FLdPr Me
  loc_97819D: VCallAd Control_ID_statusBar
  loc_9781A0: FStAdFunc var_A8
  loc_9781A3: FLdPr var_A8
  loc_9781A6: LateIdSt
  loc_9781AB: FFree1Ad var_A8
  loc_9781AE: ILdRf Me
  loc_9781B1: FStAdNoPop
  loc_9781B5: ImpAdLdRf MemVar_C44F9C
  loc_9781B8: NewIfNullPr Me
  loc_9781BB: Me.Global.Unload from_stack_1
  loc_9781C0: FFree1Ad var_A8
  loc_9781C3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96AC2C
  'Data Table: 433648
  loc_96AC10: LitI2_Byte &HFF
  loc_96AC12: LitI2_Byte 0
  loc_96AC14: ILdRf Me
  loc_96AC17: CastAd
  loc_96AC1A: FStAdFunc var_88
  loc_96AC1D: FLdRfVar var_88
  loc_96AC20: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AC25: FFree1Ad var_88
  loc_96AC28: ExitProcHresult
  loc_96AC29: PopTmpLdAd8 arg_362
End Sub

Private Sub cmdNueva_Click() '97828C
  'Data Table: 433648
  loc_97825C: LitI2_Byte 0
  loc_97825E: FLdPr Me
  loc_978261: MemStI2 bGenerado
  loc_978264: LitI2_Byte &HFF
  loc_978266: FLdPr Me
  loc_978269: MemStI2 bLogos
  loc_97826C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_978271: Call HabilitarCriterio()
  loc_978276: ILdRf Me
  loc_978279: CastAd
  loc_97827C: FStAdFunc var_88
  loc_97827F: FLdRfVar var_88
  loc_978282: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_978287: FFree1Ad var_88
  loc_97828A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '962F14
  'Data Table: 433648
  loc_962EFC: LitI2_Byte 0
  loc_962EFE: ILdRf Me
  loc_962F01: CastAd
  loc_962F04: FStAdFunc var_88
  loc_962F07: FLdRfVar var_88
  loc_962F0A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_962F0F: FFree1Ad var_88
  loc_962F12: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98854C
  'Data Table: 433648
  loc_988514: FLdPr Me
  loc_988517: VCallAd Control_ID_statusBar
  loc_98851A: FStAdFunc var_88
  loc_98851D: FLdPr var_88
  loc_988520: LateIdLdVar var_98 DispID_1 0
  loc_988527: CStrVarTmp
  loc_988528: CVarStr var_A8
  loc_98852B: PopAdLdVar
  loc_98852C: FLdPr Me
  loc_98852F: VCallAd Control_ID_statusBar
  loc_988532: FStAdFunc var_BC
  loc_988535: FLdPr var_BC
  loc_988538: LateIdSt
  loc_98853D: FFreeAd var_88 = ""
  loc_988544: FFreeVar var_98 = ""
  loc_98854B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '962CB4
  'Data Table: 433648
  loc_962C9C: ILdRf Me
  loc_962C9F: CastAd
  loc_962CA2: FStAdFunc var_88
  loc_962CA5: FLdRfVar var_88
  loc_962CA8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_962CAD: FFree1Ad var_88
  loc_962CB0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '962E7C
  'Data Table: 433648
  loc_962E64: ILdRf Me
  loc_962E67: CastAd
  loc_962E6A: FStAdFunc var_88
  loc_962E6D: FLdRfVar var_88
  loc_962E70: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_962E75: FFree1Ad var_88
  loc_962E78: ExitProcHresult
End Sub

Private Sub Form_Load() '9497C0
  'Data Table: 433648
  loc_9497AC: LitI2_Byte &HFF
  loc_9497AE: ImpAdStI2 MemVar_C3D840
  loc_9497B1: LitI2_Byte &HFF
  loc_9497B3: FLdPr Me
  loc_9497B6: MemStI2 bLogos
  loc_9497B9: Call cmdNueva_Click()
  loc_9497BE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '962DE4
  'Data Table: 433648
  loc_962DCC: FLdPr Me
  loc_962DCF: VCallAd Control_ID_wbbReporte
  loc_962DD2: FStAdFunc var_88
  loc_962DD5: FLdRfVar var_88
  loc_962DD8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_962DDD: FFree1Ad var_88
  loc_962DE0: ExitProcHresult
End Sub

Public Function htmFileGet() '433F8C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '433F9B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '433FAA
  htmFile = Value
End Sub

Public Function bLogosGet() '433FB9
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '433FC8
  bLogos = Value
End Sub

Public Function bGeneradoGet() '433FD7
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '433FE6
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984998
  'Data Table: 433648
  loc_984964: LitI4 0
  loc_984969: LitI4 0
  loc_98496E: FLdRfVar var_88
  loc_984971: Redim
  loc_98497B: FLdPr Me
  loc_98497E: VCallAd Control_ID_chkSoloLocadores
  loc_984981: CVarAd
  loc_984985: ParmAry1St
  loc_98498B: FLdRfVar var_88
  loc_98498E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984993: FLdRfVar var_88
  loc_984996: Erase
  loc_984997: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AAF70C
  'Data Table: 433648
  loc_AAF1D0: OnErrorGoto loc_AAF6A7
  loc_AAF1D3: FLdPr Me
  loc_AAF1D6: MemLdI2 bGenerado
  loc_AAF1D9: BranchF loc_AAF1DD
  loc_AAF1DC: ExitProcHresult
  loc_AAF1DD: LitVarStr var_98, "Generando reporte..."
  loc_AAF1E2: PopAdLdVar
  loc_AAF1E3: FLdPr Me
  loc_AAF1E6: VCallAd Control_ID_statusBar
  loc_AAF1E9: FStAdFunc var_AC
  loc_AAF1EC: FLdPr var_AC
  loc_AAF1EF: LateIdSt
  loc_AAF1F4: FFree1Ad var_AC
  loc_AAF1F7: LitI4 &HB
  loc_AAF1FC: CI2I4
  loc_AAF1FD: FLdPr Me
  loc_AAF200: Me.MousePointer = from_stack_1
  loc_AAF205: FLdRfVar var_AE
  loc_AAF208: FLdPr Me
  loc_AAF20B: VCallAd Control_ID_chkSoloLocadores
  loc_AAF20E: FStAdFunc var_AC
  loc_AAF211: FLdPr var_AC
  loc_AAF214:  = Me.Value
  loc_AAF219: LitVarStr var_D0, vbNullString
  loc_AAF21E: FStVarCopyObj var_E0
  loc_AAF221: FLdRfVar var_E0
  loc_AAF224: LitVarStr var_A8, " AND LocaProv = 1 "
  loc_AAF229: FStVarCopyObj var_C0
  loc_AAF22C: FLdRfVar var_C0
  loc_AAF22F: FLdI2 var_AE
  loc_AAF232: CI4UI1
  loc_AAF233: LitI4 1
  loc_AAF238: EqI4
  loc_AAF239: CVarBoolI2 var_98
  loc_AAF23D: FLdRfVar var_F0
  loc_AAF240: ImpAdCallFPR4  = IIf(, , )
  loc_AAF245: FLdRfVar var_F0
  loc_AAF248: CStrVarTmp
  loc_AAF249: FStStr var_88
  loc_AAF24C: FFree1Ad var_AC
  loc_AAF24F: FFreeVar var_98 = "": var_C0 = "": var_E0 = ""
  loc_AAF25A: FLdPr Me
  loc_AAF25D: MemLdRfVar from_stack_1.global_72
  loc_AAF260: NewIfNullAd
  loc_AAF263: FStAd var_F4 
  loc_AAF267: LitStr "SELECT DetaProv, proveedor.CucuPers, FantProv, IFNULL(DecrPers,'') DecrPers, IFNULL(TelePers,'') TelePers, MailPers, PainProv, FactProv, IF(LocaProv=1,'Si','No') LocaProv"
  loc_AAF26A: LitStr " FROM proveedor"
  loc_AAF26D: ConcatStr
  loc_AAF26E: FStStrNoPop var_F8
  loc_AAF271: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_AAF274: ConcatStr
  loc_AAF275: FStStrNoPop var_FC
  loc_AAF278: ILdRf var_88
  loc_AAF27B: ConcatStr
  loc_AAF27C: FStStrNoPop var_100
  loc_AAF27F: LitStr " ORDER BY DetaProv"
  loc_AAF282: ConcatStr
  loc_AAF283: FStStrNoPop var_104
  loc_AAF286: FLdPr var_F4
  loc_AAF289: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_AAF28E: FFreeStr var_F8 = "": var_FC = "": var_100 = ""
  loc_AAF299: FLdRfVar var_108
  loc_AAF29C: FLdPr var_F4
  loc_AAF29F: from_stack_1 = clsproveedor.RecordCount
  loc_AAF2A4: ILdRf var_108
  loc_AAF2A7: LitI4 0
  loc_AAF2AC: EqI4
  loc_AAF2AD: BranchF loc_AAF2C0
  loc_AAF2B0: LitI4 0
  loc_AAF2B5: LitStr "No existen registros"
  loc_AAF2B8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AAF2BD: Branch loc_AAF67E
  loc_AAF2C0: LitI4 0
  loc_AAF2C5: FLdRfVar var_108
  loc_AAF2C8: FLdPr var_F4
  loc_AAF2CB: from_stack_1 = clsproveedor.RecordCount
  loc_AAF2D0: ILdRf var_108
  loc_AAF2D3: FLdPr Me
  loc_AAF2D6: MemLdRfVar from_stack_1.global_80
  loc_AAF2D9: Redim
  loc_AAF2E3: FLdPr var_F4
  loc_AAF2E6: Call clsproveedor.MoveFirst()
  loc_AAF2EB: LitI4 1
  loc_AAF2F0: FLdPr Me
  loc_AAF2F3: MemLdRfVar from_stack_1.global_84
  loc_AAF2F6: FLdPr Me
  loc_AAF2F9: MemLdStr global_80
  loc_AAF2FC: LitI2_Byte 1
  loc_AAF2FE: FnUBound
  loc_AAF300: ForI4 var_110
  loc_AAF306: FLdRfVar var_118
  loc_AAF309: LitVarStr var_98, "DetaProv"
  loc_AAF30E: PopAdLdVar
  loc_AAF30F: FLdRfVar var_114
  loc_AAF312: FLdRfVar var_AC
  loc_AAF315: FLdPr var_F4
  loc_AAF318: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF31D: FLdPr var_AC
  loc_AAF320:  = Me.Fields
  loc_AAF325: FLdPr var_114
  loc_AAF328: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF32D: LitI2_Byte 0
  loc_AAF32F: LitVar_Missing var_E0
  loc_AAF332: LitI2_Byte 0
  loc_AAF334: FLdZeroAd var_118
  loc_AAF337: CVarAd
  loc_AAF33B: PopAdLdVar
  loc_AAF33C: FLdPr Me
  loc_AAF33F: MemLdStr global_84
  loc_AAF342: FLdPr Me
  loc_AAF345: MemLdStr global_80
  loc_AAF348: AryLock
  loc_AAF34B: Ary1LdPr
  loc_AAF34C: MemLdRfVar from_stack_1.global_0
  loc_AAF34F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF354: AryUnlock
  loc_AAF357: FFreeAd var_AC = ""
  loc_AAF35E: FFreeVar var_C0 = ""
  loc_AAF365: FLdRfVar var_118
  loc_AAF368: LitVarStr var_98, "CucuPers"
  loc_AAF36D: PopAdLdVar
  loc_AAF36E: FLdRfVar var_114
  loc_AAF371: FLdRfVar var_AC
  loc_AAF374: FLdPr var_F4
  loc_AAF377: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF37C: FLdPr var_AC
  loc_AAF37F:  = Me.Fields
  loc_AAF384: FLdPr var_114
  loc_AAF387: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF38C: LitI2_Byte 0
  loc_AAF38E: LitVar_Missing var_E0
  loc_AAF391: LitI2_Byte 0
  loc_AAF393: FLdZeroAd var_118
  loc_AAF396: CVarAd
  loc_AAF39A: PopAdLdVar
  loc_AAF39B: FLdPr Me
  loc_AAF39E: MemLdStr global_84
  loc_AAF3A1: FLdPr Me
  loc_AAF3A4: MemLdStr global_80
  loc_AAF3A7: AryLock
  loc_AAF3AA: Ary1LdPr
  loc_AAF3AB: MemLdRfVar from_stack_1.global_4
  loc_AAF3AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF3B3: AryUnlock
  loc_AAF3B6: FFreeAd var_AC = ""
  loc_AAF3BD: FFreeVar var_C0 = ""
  loc_AAF3C4: FLdRfVar var_118
  loc_AAF3C7: LitVarStr var_98, "FantProv"
  loc_AAF3CC: PopAdLdVar
  loc_AAF3CD: FLdRfVar var_114
  loc_AAF3D0: FLdRfVar var_AC
  loc_AAF3D3: FLdPr var_F4
  loc_AAF3D6: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF3DB: FLdPr var_AC
  loc_AAF3DE:  = Me.Fields
  loc_AAF3E3: FLdPr var_114
  loc_AAF3E6: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF3EB: LitI2_Byte 0
  loc_AAF3ED: LitVar_Missing var_E0
  loc_AAF3F0: LitI2_Byte 0
  loc_AAF3F2: FLdZeroAd var_118
  loc_AAF3F5: CVarAd
  loc_AAF3F9: PopAdLdVar
  loc_AAF3FA: FLdPr Me
  loc_AAF3FD: MemLdStr global_84
  loc_AAF400: FLdPr Me
  loc_AAF403: MemLdStr global_80
  loc_AAF406: AryLock
  loc_AAF409: Ary1LdPr
  loc_AAF40A: MemLdRfVar from_stack_1.global_8
  loc_AAF40D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF412: AryUnlock
  loc_AAF415: FFreeAd var_AC = ""
  loc_AAF41C: FFreeVar var_C0 = ""
  loc_AAF423: FLdRfVar var_118
  loc_AAF426: LitVarStr var_98, "DecrPers"
  loc_AAF42B: PopAdLdVar
  loc_AAF42C: FLdRfVar var_114
  loc_AAF42F: FLdRfVar var_AC
  loc_AAF432: FLdPr var_F4
  loc_AAF435: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF43A: FLdPr var_AC
  loc_AAF43D:  = Me.Fields
  loc_AAF442: FLdPr var_114
  loc_AAF445: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF44A: LitI2_Byte 0
  loc_AAF44C: LitVar_Missing var_E0
  loc_AAF44F: LitI2_Byte 0
  loc_AAF451: FLdZeroAd var_118
  loc_AAF454: CVarAd
  loc_AAF458: PopAdLdVar
  loc_AAF459: FLdPr Me
  loc_AAF45C: MemLdStr global_84
  loc_AAF45F: FLdPr Me
  loc_AAF462: MemLdStr global_80
  loc_AAF465: AryLock
  loc_AAF468: Ary1LdPr
  loc_AAF469: MemLdRfVar from_stack_1.global_12
  loc_AAF46C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF471: AryUnlock
  loc_AAF474: FFreeAd var_AC = ""
  loc_AAF47B: FFreeVar var_C0 = ""
  loc_AAF482: FLdRfVar var_118
  loc_AAF485: LitVarStr var_98, "TelePers"
  loc_AAF48A: PopAdLdVar
  loc_AAF48B: FLdRfVar var_114
  loc_AAF48E: FLdRfVar var_AC
  loc_AAF491: FLdPr var_F4
  loc_AAF494: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF499: FLdPr var_AC
  loc_AAF49C:  = Me.Fields
  loc_AAF4A1: FLdPr var_114
  loc_AAF4A4: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF4A9: LitI2_Byte 0
  loc_AAF4AB: LitVar_Missing var_E0
  loc_AAF4AE: LitI2_Byte 0
  loc_AAF4B0: FLdZeroAd var_118
  loc_AAF4B3: CVarAd
  loc_AAF4B7: PopAdLdVar
  loc_AAF4B8: FLdPr Me
  loc_AAF4BB: MemLdStr global_84
  loc_AAF4BE: FLdPr Me
  loc_AAF4C1: MemLdStr global_80
  loc_AAF4C4: AryLock
  loc_AAF4C7: Ary1LdPr
  loc_AAF4C8: MemLdRfVar from_stack_1.global_16
  loc_AAF4CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF4D0: AryUnlock
  loc_AAF4D3: FFreeAd var_AC = ""
  loc_AAF4DA: FFreeVar var_C0 = ""
  loc_AAF4E1: FLdRfVar var_118
  loc_AAF4E4: LitVarStr var_98, "MailPers"
  loc_AAF4E9: PopAdLdVar
  loc_AAF4EA: FLdRfVar var_114
  loc_AAF4ED: FLdRfVar var_AC
  loc_AAF4F0: FLdPr var_F4
  loc_AAF4F3: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF4F8: FLdPr var_AC
  loc_AAF4FB:  = Me.Fields
  loc_AAF500: FLdPr var_114
  loc_AAF503: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF508: LitI2_Byte 0
  loc_AAF50A: LitVar_Missing var_E0
  loc_AAF50D: LitI2_Byte 0
  loc_AAF50F: FLdZeroAd var_118
  loc_AAF512: CVarAd
  loc_AAF516: PopAdLdVar
  loc_AAF517: FLdPr Me
  loc_AAF51A: MemLdStr global_84
  loc_AAF51D: FLdPr Me
  loc_AAF520: MemLdStr global_80
  loc_AAF523: AryLock
  loc_AAF526: Ary1LdPr
  loc_AAF527: MemLdRfVar from_stack_1.global_20
  loc_AAF52A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF52F: AryUnlock
  loc_AAF532: FFreeAd var_AC = ""
  loc_AAF539: FFreeVar var_C0 = ""
  loc_AAF540: FLdRfVar var_118
  loc_AAF543: LitVarStr var_98, "PainProv"
  loc_AAF548: PopAdLdVar
  loc_AAF549: FLdRfVar var_114
  loc_AAF54C: FLdRfVar var_AC
  loc_AAF54F: FLdPr var_F4
  loc_AAF552: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF557: FLdPr var_AC
  loc_AAF55A:  = Me.Fields
  loc_AAF55F: FLdPr var_114
  loc_AAF562: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF567: LitI2_Byte 0
  loc_AAF569: LitVar_Missing var_E0
  loc_AAF56C: LitI2_Byte 0
  loc_AAF56E: FLdZeroAd var_118
  loc_AAF571: CVarAd
  loc_AAF575: PopAdLdVar
  loc_AAF576: FLdPr Me
  loc_AAF579: MemLdStr global_84
  loc_AAF57C: FLdPr Me
  loc_AAF57F: MemLdStr global_80
  loc_AAF582: AryLock
  loc_AAF585: Ary1LdPr
  loc_AAF586: MemLdRfVar from_stack_1.global_24
  loc_AAF589: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF58E: AryUnlock
  loc_AAF591: FFreeAd var_AC = ""
  loc_AAF598: FFreeVar var_C0 = ""
  loc_AAF59F: FLdRfVar var_118
  loc_AAF5A2: LitVarStr var_98, "FactProv"
  loc_AAF5A7: PopAdLdVar
  loc_AAF5A8: FLdRfVar var_114
  loc_AAF5AB: FLdRfVar var_AC
  loc_AAF5AE: FLdPr var_F4
  loc_AAF5B1: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF5B6: FLdPr var_AC
  loc_AAF5B9:  = Me.Fields
  loc_AAF5BE: FLdPr var_114
  loc_AAF5C1: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF5C6: LitI2_Byte 0
  loc_AAF5C8: LitVar_Missing var_E0
  loc_AAF5CB: LitI2_Byte 0
  loc_AAF5CD: FLdZeroAd var_118
  loc_AAF5D0: CVarAd
  loc_AAF5D4: PopAdLdVar
  loc_AAF5D5: FLdPr Me
  loc_AAF5D8: MemLdStr global_84
  loc_AAF5DB: FLdPr Me
  loc_AAF5DE: MemLdStr global_80
  loc_AAF5E1: AryLock
  loc_AAF5E4: Ary1LdPr
  loc_AAF5E5: MemLdRfVar from_stack_1.global_28
  loc_AAF5E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF5ED: AryUnlock
  loc_AAF5F0: FFreeAd var_AC = ""
  loc_AAF5F7: FFreeVar var_C0 = ""
  loc_AAF5FE: FLdRfVar var_118
  loc_AAF601: LitVarStr var_98, "LocaProv"
  loc_AAF606: PopAdLdVar
  loc_AAF607: FLdRfVar var_114
  loc_AAF60A: FLdRfVar var_AC
  loc_AAF60D: FLdPr var_F4
  loc_AAF610: from_stack_1v = clsproveedor.RsFrmGet()
  loc_AAF615: FLdPr var_AC
  loc_AAF618:  = Me.Fields
  loc_AAF61D: FLdPr var_114
  loc_AAF620: from_stack_2 = Me.Item(from_stack_1)
  loc_AAF625: LitI2_Byte 0
  loc_AAF627: LitVar_Missing var_E0
  loc_AAF62A: LitI2_Byte 0
  loc_AAF62C: FLdZeroAd var_118
  loc_AAF62F: CVarAd
  loc_AAF633: PopAdLdVar
  loc_AAF634: FLdPr Me
  loc_AAF637: MemLdStr global_84
  loc_AAF63A: FLdPr Me
  loc_AAF63D: MemLdStr global_80
  loc_AAF640: AryLock
  loc_AAF643: Ary1LdPr
  loc_AAF644: MemLdRfVar from_stack_1.global_32
  loc_AAF647: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAF64C: AryUnlock
  loc_AAF64F: FFreeAd var_AC = ""
  loc_AAF656: FFreeVar var_C0 = ""
  loc_AAF65D: FLdPr var_F4
  loc_AAF660: Call clsproveedor.MoveSiguiente()
  loc_AAF665: FLdPr Me
  loc_AAF668: MemLdRfVar from_stack_1.global_84
  loc_AAF66B: NextI4 var_110, loc_AAF306
  loc_AAF670: LitNothing
  loc_AAF672: FStAd var_F4 
  loc_AAF676: LitI2_Byte &HFF
  loc_AAF678: FLdPr Me
  loc_AAF67B: MemStI2 bGenerado
  loc_AAF67E: LitI4 0
  loc_AAF683: CI2I4
  loc_AAF684: FLdPr Me
  loc_AAF687: Me.MousePointer = from_stack_1
  loc_AAF68C: LitVarStr var_98, vbNullString
  loc_AAF691: PopAdLdVar
  loc_AAF692: FLdPr Me
  loc_AAF695: VCallAd Control_ID_statusBar
  loc_AAF698: FStAdFunc var_AC
  loc_AAF69B: FLdPr var_AC
  loc_AAF69E: LateIdSt
  loc_AAF6A3: FFree1Ad var_AC
  loc_AAF6A6: ExitProcHresult
  loc_AAF6A7: LitI4 0
  loc_AAF6AC: LitStr "Error "
  loc_AAF6AF: FLdRfVar var_108
  loc_AAF6B2: ImpAdCallI2 Err 'rtcErrObj
  loc_AAF6B7: FStAdFunc var_AC
  loc_AAF6BA: FLdPr var_AC
  loc_AAF6BD:  = Err.Number
  loc_AAF6C2: ILdRf var_108
  loc_AAF6C5: CStrI4
  loc_AAF6C7: FStStrNoPop var_F8
  loc_AAF6CA: ConcatStr
  loc_AAF6CB: FStStrNoPop var_FC
  loc_AAF6CE: LitStr ": "
  loc_AAF6D1: ConcatStr
  loc_AAF6D2: FStStrNoPop var_104
  loc_AAF6D5: FLdRfVar var_100
  loc_AAF6D8: ImpAdCallI2 Err 'rtcErrObj
  loc_AAF6DD: FStAdFunc var_114
  loc_AAF6E0: FLdPr var_114
  loc_AAF6E3:  = Err.Description
  loc_AAF6E8: ILdRf var_100
  loc_AAF6EB: ConcatStr
  loc_AAF6EC: FStStrNoPop var_120
  loc_AAF6EF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AAF6F4: FFreeStr var_F8 = "": var_FC = "": var_104 = "": var_100 = ""
  loc_AAF701: FFreeAd var_AC = ""
  loc_AAF708: ExitProcHresult
  loc_AAF709: ExitProcHresult
  loc_AAF70A: ILdR8 var_2FFB
End Sub

Public Sub GeneraHTML() 'A3EC3C
  'Data Table: 433648
  loc_A3E9EC: FLdRfVar var_88
  loc_A3E9EF: LitI2_Byte 0
  loc_A3E9F1: LitI2_Byte &HFF
  loc_A3E9F3: ImpAdLdI4 MemVar_C3D83C
  loc_A3E9F6: FLdPr Me
  loc_A3E9F9: MemLdRfVar from_stack_1.global_76
  loc_A3E9FC: NewIfNullPr IFileSystem3
  loc_A3E9FF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3EA04: ILdRf var_88
  loc_A3EA07: FLdPr Me
  loc_A3EA0A: MemStVarAd
  loc_A3EA0E: FFree1Ad var_88
  loc_A3EA11: Call Proc_202_20_A595E0()
  loc_A3EA16: LitI4 1
  loc_A3EA1B: FLdPr Me
  loc_A3EA1E: MemLdRfVar from_stack_1.global_84
  loc_A3EA21: FLdPr Me
  loc_A3EA24: MemLdStr global_80
  loc_A3EA27: LitI2_Byte 1
  loc_A3EA29: FnUBound
  loc_A3EA2B: ForI4 var_90
  loc_A3EA31: FLdPr Me
  loc_A3EA34: MemLdStr global_84
  loc_A3EA37: FLdPr Me
  loc_A3EA3A: MemLdStr global_80
  loc_A3EA3D: AryLock
  loc_A3EA40: Ary1LdRf
  loc_A3EA41: FStR4 var_98
  loc_A3EA44: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A3EA49: PopAdLdVar
  loc_A3EA4A: FLdPr Me
  loc_A3EA4D: MemLdRfVar from_stack_1.htmFile
  loc_A3EA50: LdPrVar
  loc_A3EA52: LateMemCall
  loc_A3EA58: LitI4 0
  loc_A3EA5D: LitI4 0
  loc_A3EA62: LitI2_Byte 0
  loc_A3EA64: LitStr "left"
  loc_A3EA67: FMemLdR4 var_98(0)
  loc_A3EA6C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EA71: CVarStr var_C8
  loc_A3EA74: PopAdLdVar
  loc_A3EA75: FLdPr Me
  loc_A3EA78: MemLdRfVar from_stack_1.htmFile
  loc_A3EA7B: LdPrVar
  loc_A3EA7D: LateMemCall
  loc_A3EA83: FFree1Var var_C8 = ""
  loc_A3EA86: LitI4 0
  loc_A3EA8B: LitI4 0
  loc_A3EA90: LitI2_Byte 0
  loc_A3EA92: LitStr "center"
  loc_A3EA95: FMemLdR4 var_98(4)
  loc_A3EA9A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EA9F: CVarStr var_C8
  loc_A3EAA2: PopAdLdVar
  loc_A3EAA3: FLdPr Me
  loc_A3EAA6: MemLdRfVar from_stack_1.htmFile
  loc_A3EAA9: LdPrVar
  loc_A3EAAB: LateMemCall
  loc_A3EAB1: FFree1Var var_C8 = ""
  loc_A3EAB4: LitI4 0
  loc_A3EAB9: LitI4 0
  loc_A3EABE: LitI2_Byte 0
  loc_A3EAC0: LitStr "left"
  loc_A3EAC3: FMemLdR4 var_98(8)
  loc_A3EAC8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EACD: CVarStr var_C8
  loc_A3EAD0: PopAdLdVar
  loc_A3EAD1: FLdPr Me
  loc_A3EAD4: MemLdRfVar from_stack_1.htmFile
  loc_A3EAD7: LdPrVar
  loc_A3EAD9: LateMemCall
  loc_A3EADF: FFree1Var var_C8 = ""
  loc_A3EAE2: LitI4 0
  loc_A3EAE7: LitI4 0
  loc_A3EAEC: LitI2_Byte 0
  loc_A3EAEE: LitStr "left"
  loc_A3EAF1: FMemLdR4 var_98(12)
  loc_A3EAF6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EAFB: CVarStr var_C8
  loc_A3EAFE: PopAdLdVar
  loc_A3EAFF: FLdPr Me
  loc_A3EB02: MemLdRfVar from_stack_1.htmFile
  loc_A3EB05: LdPrVar
  loc_A3EB07: LateMemCall
  loc_A3EB0D: FFree1Var var_C8 = ""
  loc_A3EB10: LitI4 0
  loc_A3EB15: LitI4 0
  loc_A3EB1A: LitI2_Byte 0
  loc_A3EB1C: LitStr "left"
  loc_A3EB1F: FMemLdR4 var_98(16)
  loc_A3EB24: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EB29: CVarStr var_C8
  loc_A3EB2C: PopAdLdVar
  loc_A3EB2D: FLdPr Me
  loc_A3EB30: MemLdRfVar from_stack_1.htmFile
  loc_A3EB33: LdPrVar
  loc_A3EB35: LateMemCall
  loc_A3EB3B: FFree1Var var_C8 = ""
  loc_A3EB3E: LitI4 0
  loc_A3EB43: LitI4 0
  loc_A3EB48: LitI2_Byte 0
  loc_A3EB4A: LitStr "left"
  loc_A3EB4D: FMemLdR4 var_98(20)
  loc_A3EB52: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EB57: CVarStr var_C8
  loc_A3EB5A: PopAdLdVar
  loc_A3EB5B: FLdPr Me
  loc_A3EB5E: MemLdRfVar from_stack_1.htmFile
  loc_A3EB61: LdPrVar
  loc_A3EB63: LateMemCall
  loc_A3EB69: FFree1Var var_C8 = ""
  loc_A3EB6C: LitI4 0
  loc_A3EB71: LitI4 0
  loc_A3EB76: LitI2_Byte 0
  loc_A3EB78: LitStr "left"
  loc_A3EB7B: FMemLdR4 var_98(24)
  loc_A3EB80: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EB85: CVarStr var_C8
  loc_A3EB88: PopAdLdVar
  loc_A3EB89: FLdPr Me
  loc_A3EB8C: MemLdRfVar from_stack_1.htmFile
  loc_A3EB8F: LdPrVar
  loc_A3EB91: LateMemCall
  loc_A3EB97: FFree1Var var_C8 = ""
  loc_A3EB9A: LitI4 0
  loc_A3EB9F: LitI4 0
  loc_A3EBA4: LitI2_Byte 0
  loc_A3EBA6: LitStr "left"
  loc_A3EBA9: FMemLdR4 var_98(28)
  loc_A3EBAE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EBB3: CVarStr var_C8
  loc_A3EBB6: PopAdLdVar
  loc_A3EBB7: FLdPr Me
  loc_A3EBBA: MemLdRfVar from_stack_1.htmFile
  loc_A3EBBD: LdPrVar
  loc_A3EBBF: LateMemCall
  loc_A3EBC5: FFree1Var var_C8 = ""
  loc_A3EBC8: LitI4 0
  loc_A3EBCD: LitI4 0
  loc_A3EBD2: LitI2_Byte 0
  loc_A3EBD4: LitStr "left"
  loc_A3EBD7: FMemLdR4 var_98(32)
  loc_A3EBDC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3EBE1: CVarStr var_C8
  loc_A3EBE4: PopAdLdVar
  loc_A3EBE5: FLdPr Me
  loc_A3EBE8: MemLdRfVar from_stack_1.htmFile
  loc_A3EBEB: LdPrVar
  loc_A3EBED: LateMemCall
  loc_A3EBF3: FFree1Var var_C8 = ""
  loc_A3EBF6: LitVarStr var_A8, "     </tr>"
  loc_A3EBFB: PopAdLdVar
  loc_A3EBFC: FLdPr Me
  loc_A3EBFF: MemLdRfVar from_stack_1.htmFile
  loc_A3EC02: LdPrVar
  loc_A3EC04: LateMemCall
  loc_A3EC0A: LitI4 0
  loc_A3EC0F: FStR4 var_98
  loc_A3EC12: AryUnlock
  loc_A3EC15: FLdPr Me
  loc_A3EC18: MemLdRfVar from_stack_1.global_84
  loc_A3EC1B: NextI4 var_90, loc_A3EA31
  loc_A3EC20: Call Proc_202_21_982F50()
  loc_A3EC25: FLdPr Me
  loc_A3EC28: MemLdRfVar from_stack_1.htmFile
  loc_A3EC2B: LdPrVar
  loc_A3EC2D: LateMemCall
  loc_A3EC33: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A3EC38: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94E064
  'Data Table: 433648
  loc_94E04C: LitI2_Byte 0
  loc_94E04E: FLdPr Me
  loc_94E051: MemStI2 bLogos
  loc_94E054: Call GeneraHTML()
  loc_94E059: LitI2_Byte &HFF
  loc_94E05B: FLdPr Me
  loc_94E05E: MemStI2 bLogos
  loc_94E061: ExitProcHresult
End Sub

Private Function Proc_202_20_A595E0() 'A595E0
  'Data Table: 433648
  loc_A592F0: LitVarStr var_94, "<html>"
  loc_A592F5: PopAdLdVar
  loc_A592F6: FLdPr Me
  loc_A592F9: MemLdRfVar from_stack_1.htmFile
  loc_A592FC: LdPrVar
  loc_A592FE: LateMemCall
  loc_A59304: LitVarStr var_94, "<head>"
  loc_A59309: PopAdLdVar
  loc_A5930A: FLdPr Me
  loc_A5930D: MemLdRfVar from_stack_1.htmFile
  loc_A59310: LdPrVar
  loc_A59312: LateMemCall
  loc_A59318: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A5931D: PopAdLdVar
  loc_A5931E: FLdPr Me
  loc_A59321: MemLdRfVar from_stack_1.htmFile
  loc_A59324: LdPrVar
  loc_A59326: LateMemCall
  loc_A5932C: LitStr "<title>"
  loc_A5932F: FLdRfVar var_A8
  loc_A59332: FLdPr Me
  loc_A59335:  = Me.Caption
  loc_A5933A: ILdRf var_A8
  loc_A5933D: ConcatStr
  loc_A5933E: FStStrNoPop var_AC
  loc_A59341: LitStr "</title>"
  loc_A59344: ConcatStr
  loc_A59345: CVarStr var_BC
  loc_A59348: PopAdLdVar
  loc_A59349: FLdPr Me
  loc_A5934C: MemLdRfVar from_stack_1.htmFile
  loc_A5934F: LdPrVar
  loc_A59351: LateMemCall
  loc_A59357: FFreeStr var_A8 = ""
  loc_A5935E: FFree1Var var_BC = ""
  loc_A59361: LitStr vbNullString
  loc_A59364: ILdRf Me
  loc_A59367: CastAd
  loc_A5936A: FStAdFunc var_C0
  loc_A5936D: FLdRfVar var_C0
  loc_A59370: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A59375: FFree1Ad var_C0
  loc_A59378: LitI4 0
  loc_A5937D: FStStrCopy var_AC
  loc_A59380: FLdRfVar var_AC
  loc_A59383: LitI4 0
  loc_A59388: FStStrCopy var_A8
  loc_A5938B: FLdRfVar var_A8
  loc_A5938E: LitI2_Byte &HFF
  loc_A59390: PopTmpLdAd2 var_C2
  loc_A59393: FLdPr Me
  loc_A59396: MemLdRfVar from_stack_1.htmFile
  loc_A59399: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A5939E: FFreeStr var_A8 = ""
  loc_A593A5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A593AA: PopAdLdVar
  loc_A593AB: FLdPr Me
  loc_A593AE: MemLdRfVar from_stack_1.htmFile
  loc_A593B1: LdPrVar
  loc_A593B3: LateMemCall
  loc_A593B9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A593BE: PopAdLdVar
  loc_A593BF: FLdPr Me
  loc_A593C2: MemLdRfVar from_stack_1.htmFile
  loc_A593C5: LdPrVar
  loc_A593C7: LateMemCall
  loc_A593CD: FLdPr Me
  loc_A593D0: MemLdI2 bLogos
  loc_A593D3: BranchF loc_A59418
  loc_A593D6: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """            align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_A593DB: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A593E0: FStVarCopyObj var_BC
  loc_A593E3: FLdRfVar var_BC
  loc_A593E6: FLdRfVar var_D4
  loc_A593E9: ImpAdCallFPR4  = Ucase()
  loc_A593EE: FLdRfVar var_D4
  loc_A593F1: ConcatVar var_E4
  loc_A593F5: LitVarStr var_F4, "</p>"
  loc_A593FA: ConcatVar var_104
  loc_A593FE: PopAdLdVar
  loc_A593FF: FLdPr Me
  loc_A59402: MemLdRfVar from_stack_1.htmFile
  loc_A59405: LdPrVar
  loc_A59407: LateMemCall
  loc_A5940D: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A59418: LitStr "    <p>"
  loc_A5941B: FLdRfVar var_A8
  loc_A5941E: FLdPr Me
  loc_A59421:  = Me.Caption
  loc_A59426: ILdRf var_A8
  loc_A59429: ConcatStr
  loc_A5942A: FStStrNoPop var_AC
  loc_A5942D: LitStr "</p></th>"
  loc_A59430: ConcatStr
  loc_A59431: CVarStr var_BC
  loc_A59434: PopAdLdVar
  loc_A59435: FLdPr Me
  loc_A59438: MemLdRfVar from_stack_1.htmFile
  loc_A5943B: LdPrVar
  loc_A5943D: LateMemCall
  loc_A59443: FFreeStr var_A8 = ""
  loc_A5944A: FFree1Var var_BC = ""
  loc_A5944D: LitVarStr var_94, "  </tr>"
  loc_A59452: PopAdLdVar
  loc_A59453: FLdPr Me
  loc_A59456: MemLdRfVar from_stack_1.htmFile
  loc_A59459: LdPrVar
  loc_A5945B: LateMemCall
  loc_A59461: LitVarStr var_94, "  <tr>"
  loc_A59466: PopAdLdVar
  loc_A59467: FLdPr Me
  loc_A5946A: MemLdRfVar from_stack_1.htmFile
  loc_A5946D: LdPrVar
  loc_A5946F: LateMemCall
  loc_A59475: LitVarStr var_94, "    <th><hr></th>"
  loc_A5947A: PopAdLdVar
  loc_A5947B: FLdPr Me
  loc_A5947E: MemLdRfVar from_stack_1.htmFile
  loc_A59481: LdPrVar
  loc_A59483: LateMemCall
  loc_A59489: LitVarStr var_94, "  </tr>"
  loc_A5948E: PopAdLdVar
  loc_A5948F: FLdPr Me
  loc_A59492: MemLdRfVar from_stack_1.htmFile
  loc_A59495: LdPrVar
  loc_A59497: LateMemCall
  loc_A5949D: LitVarStr var_94, "</table>"
  loc_A594A2: PopAdLdVar
  loc_A594A3: FLdPr Me
  loc_A594A6: MemLdRfVar from_stack_1.htmFile
  loc_A594A9: LdPrVar
  loc_A594AB: LateMemCall
  loc_A594B1: LitVarStr var_94, "<br>"
  loc_A594B6: PopAdLdVar
  loc_A594B7: FLdPr Me
  loc_A594BA: MemLdRfVar from_stack_1.htmFile
  loc_A594BD: LdPrVar
  loc_A594BF: LateMemCall
  loc_A594C5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A594CA: PopAdLdVar
  loc_A594CB: FLdPr Me
  loc_A594CE: MemLdRfVar from_stack_1.htmFile
  loc_A594D1: LdPrVar
  loc_A594D3: LateMemCall
  loc_A594D9: LitVarStr var_94, "  <THEAD>"
  loc_A594DE: PopAdLdVar
  loc_A594DF: FLdPr Me
  loc_A594E2: MemLdRfVar from_stack_1.htmFile
  loc_A594E5: LdPrVar
  loc_A594E7: LateMemCall
  loc_A594ED: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A594F2: PopAdLdVar
  loc_A594F3: FLdPr Me
  loc_A594F6: MemLdRfVar from_stack_1.htmFile
  loc_A594F9: LdPrVar
  loc_A594FB: LateMemCall
  loc_A59501: LitVarStr var_94, "    <th>Nombre</th>"
  loc_A59506: PopAdLdVar
  loc_A59507: FLdPr Me
  loc_A5950A: MemLdRfVar from_stack_1.htmFile
  loc_A5950D: LdPrVar
  loc_A5950F: LateMemCall
  loc_A59515: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A5951A: PopAdLdVar
  loc_A5951B: FLdPr Me
  loc_A5951E: MemLdRfVar from_stack_1.htmFile
  loc_A59521: LdPrVar
  loc_A59523: LateMemCall
  loc_A59529: LitVarStr var_94, "    <th>Fantasía</th>"
  loc_A5952E: PopAdLdVar
  loc_A5952F: FLdPr Me
  loc_A59532: MemLdRfVar from_stack_1.htmFile
  loc_A59535: LdPrVar
  loc_A59537: LateMemCall
  loc_A5953D: LitVarStr var_94, "    <th>Calle Real</th>"
  loc_A59542: PopAdLdVar
  loc_A59543: FLdPr Me
  loc_A59546: MemLdRfVar from_stack_1.htmFile
  loc_A59549: LdPrVar
  loc_A5954B: LateMemCall
  loc_A59551: LitVarStr var_94, "    <th>Teléfono</th>"
  loc_A59556: PopAdLdVar
  loc_A59557: FLdPr Me
  loc_A5955A: MemLdRfVar from_stack_1.htmFile
  loc_A5955D: LdPrVar
  loc_A5955F: LateMemCall
  loc_A59565: LitVarStr var_94, "    <th>Correo electrónico</th>"
  loc_A5956A: PopAdLdVar
  loc_A5956B: FLdPr Me
  loc_A5956E: MemLdRfVar from_stack_1.htmFile
  loc_A59571: LdPrVar
  loc_A59573: LateMemCall
  loc_A59579: LitVarStr var_94, "    <th>Interbanking</th>"
  loc_A5957E: PopAdLdVar
  loc_A5957F: FLdPr Me
  loc_A59582: MemLdRfVar from_stack_1.htmFile
  loc_A59585: LdPrVar
  loc_A59587: LateMemCall
  loc_A5958D: LitVarStr var_94, "    <th>Tipo de Factura</th>"
  loc_A59592: PopAdLdVar
  loc_A59593: FLdPr Me
  loc_A59596: MemLdRfVar from_stack_1.htmFile
  loc_A59599: LdPrVar
  loc_A5959B: LateMemCall
  loc_A595A1: LitVarStr var_94, "    <th>Locador</th>"
  loc_A595A6: PopAdLdVar
  loc_A595A7: FLdPr Me
  loc_A595AA: MemLdRfVar from_stack_1.htmFile
  loc_A595AD: LdPrVar
  loc_A595AF: LateMemCall
  loc_A595B5: LitVarStr var_94, "  </tr>"
  loc_A595BA: PopAdLdVar
  loc_A595BB: FLdPr Me
  loc_A595BE: MemLdRfVar from_stack_1.htmFile
  loc_A595C1: LdPrVar
  loc_A595C3: LateMemCall
  loc_A595C9: LitVarStr var_94, "  </THEAD>"
  loc_A595CE: PopAdLdVar
  loc_A595CF: FLdPr Me
  loc_A595D2: MemLdRfVar from_stack_1.htmFile
  loc_A595D5: LdPrVar
  loc_A595D7: LateMemCall
  loc_A595DD: ExitProcHresult
End Function

Private Function Proc_202_21_982F50() '982F50
  'Data Table: 433648
  loc_982F10: LitVarStr var_94, "</table>"
  loc_982F15: PopAdLdVar
  loc_982F16: FLdPr Me
  loc_982F19: MemLdRfVar from_stack_1.htmFile
  loc_982F1C: LdPrVar
  loc_982F1E: LateMemCall
  loc_982F24: LitVarStr var_94, "</body>"
  loc_982F29: PopAdLdVar
  loc_982F2A: FLdPr Me
  loc_982F2D: MemLdRfVar from_stack_1.htmFile
  loc_982F30: LdPrVar
  loc_982F32: LateMemCall
  loc_982F38: LitVarStr var_94, "</html>"
  loc_982F3D: PopAdLdVar
  loc_982F3E: FLdPr Me
  loc_982F41: MemLdRfVar from_stack_1.htmFile
  loc_982F44: LdPrVar
  loc_982F46: LateMemCall
  loc_982F4C: ExitProcHresult
End Function
