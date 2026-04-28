VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptBoletadeApremio
  Caption = "Boleta de Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptBoletadeApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 6468
  ClientHeight = 3000
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2745
    Width = 6465
    Height = 255
    TabIndex = 9
    OleObjectBlob = "rptBoletadeApremio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptBoletadeApremio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptBoletadeApremio.frx":0B9C
    Left = 4200
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 1815
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 0
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 1455
    TabIndex = 5
    Begin MSMask.MaskEdBox NumeApreDesdeMsk
      Left = 1440
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 12
      OleObjectBlob = "rptBoletadeApremio.frx":0C00
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox NumeApreHastaMsk
      Left = 1440
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptBoletadeApremio.frx":0C70
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 795
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 750
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "rptBoletadeApremio.frx":0CE0
  End
End

Attribute VB_Name = "rptBoletadeApremio"

Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_0060F728
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_3_0060F758
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_4_0060F7A0
  bStruc(20) As Byte ' String fields: 2
End Type

Private Type UDT_5_0060F7E8
  bStruc(112) As Byte ' String fields: 28
End Type


Private Sub NumeApreDesdeMsk_UnknownEvent_0 '9BBD60
  'Data Table: 486D94
  loc_9BBD4C: FLdPr Me
  loc_9BBD4F: VCallAd Control_ID_NumeApreDesdeMsk
  loc_9BBD52: CVarAd
  loc_9BBD56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBD5B: FFree1Var var_94 = ""
  loc_9BBD5E: ExitProcHresult
End Sub

Private Sub NumeApreHastaMsk_UnknownEvent_0 '9BB898
  'Data Table: 486D94
  loc_9BB884: FLdPr Me
  loc_9BB887: VCallAd Control_ID_NumeApreHastaMsk
  loc_9BB88A: CVarAd
  loc_9BB88E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB893: FFree1Var var_94 = ""
  loc_9BB896: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A91C68
  'Data Table: 486D94
  loc_A91BBC: LitI2_Byte 0
  loc_A91BBE: FLdPr Me
  loc_A91BC1: MemStI2 bGenerado
  loc_A91BC4: LitI2_Byte 0
  loc_A91BC6: ILdRf Me
  loc_A91BC9: CastAd
  loc_A91BCC: FStAdFunc var_88
  loc_A91BCF: FLdRfVar var_88
  loc_A91BD2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A91BD7: FFree1Ad var_88
  loc_A91BDA: LitStr "SELECT ifnull(max(NumeApre),0) as NumeApre FROM apremio WHERE EstaApre = 'Activo'"
  loc_A91BDD: FLdPr Me
  loc_A91BE0: MemLdRfVar from_stack_1.global_76
  loc_A91BE3: NewIfNullPr clsapremio
  loc_A91BE6: Call clsapremio.RedefineRS(from_stack_1v)
  loc_A91BEB: FLdRfVar var_8C
  loc_A91BEE: FLdPr Me
  loc_A91BF1: MemLdRfVar from_stack_1.global_76
  loc_A91BF4: NewIfNullPr clsapremio
  loc_A91BF7: from_stack_1 = clsapremio.NumeApre
  loc_A91BFC: ILdRf var_8C
  loc_A91BFF: CStrI4
  loc_A91C01: CVarStr var_9C
  loc_A91C04: PopAdLdVar
  loc_A91C05: FLdPr Me
  loc_A91C08: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A91C0B: FStAdFunc var_88
  loc_A91C0E: FLdPr var_88
  loc_A91C11: LateIdSt
  loc_A91C16: FFree1Ad var_88
  loc_A91C19: FFree1Var var_9C = ""
  loc_A91C1C: FLdRfVar var_8C
  loc_A91C1F: FLdPr Me
  loc_A91C22: MemLdRfVar from_stack_1.global_76
  loc_A91C25: NewIfNullPr clsapremio
  loc_A91C28: from_stack_1 = clsapremio.NumeApre
  loc_A91C2D: ILdRf var_8C
  loc_A91C30: CStrI4
  loc_A91C32: CVarStr var_9C
  loc_A91C35: PopAdLdVar
  loc_A91C36: FLdPr Me
  loc_A91C39: VCallAd Control_ID_NumeApreHastaMsk
  loc_A91C3C: FStAdFunc var_88
  loc_A91C3F: FLdPr var_88
  loc_A91C42: LateIdSt
  loc_A91C47: FFree1Ad var_88
  loc_A91C4A: FFree1Var var_9C = ""
  loc_A91C4D: Call HabilitarCriterio()
  loc_A91C52: ILdRf Me
  loc_A91C55: CastAd
  loc_A91C58: FStAdFunc var_88
  loc_A91C5B: FLdRfVar var_88
  loc_A91C5E: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A91C63: FFree1Ad var_88
  loc_A91C66: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() 'A7E7F4
  'Data Table: 486D94
  loc_A7E778: OnErrorGoto loc_A7E790
  loc_A7E77B: ILdRf Me
  loc_A7E77E: CastAd
  loc_A7E781: FStAdFunc var_88
  loc_A7E784: FLdRfVar var_88
  loc_A7E787: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A7E78C: FFree1Ad var_88
  loc_A7E78F: ExitProcHresult
  loc_A7E790: LitStr "Error imprimiendo la boleta Nº "
  loc_A7E793: FLdPr Me
  loc_A7E796: MemLdI2 global_88
  loc_A7E799: CI4UI1
  loc_A7E79A: FLdPr Me
  loc_A7E79D: MemLdStr global_84
  loc_A7E7A0: Ary1LdPr
  loc_A7E7A1: MemLdStr global_0
  loc_A7E7A4: ConcatStr
  loc_A7E7A5: FStStrNoPop var_8C
  loc_A7E7A8: LitStr "."
  loc_A7E7AB: ConcatStr
  loc_A7E7AC: FStStrNoPop var_90
  loc_A7E7AF: LitStr vbCrLf
  loc_A7E7B2: ConcatStr
  loc_A7E7B3: FStStrNoPop var_94
  loc_A7E7B6: LitStr "Consulte con el administrador."
  loc_A7E7B9: ConcatStr
  loc_A7E7BA: FStStrNoPop var_98
  loc_A7E7BD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7E7C2: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A7E7CD: FLdPr Me
  loc_A7E7D0: MemLdRfVar from_stack_1.global_60
  loc_A7E7D3: LdPrVar
  loc_A7E7D5: LateMemCall
  loc_A7E7DB: ILdRf Me
  loc_A7E7DE: FStAdNoPop
  loc_A7E7E2: ImpAdLdRf MemVar_D9C5D8
  loc_A7E7E5: NewIfNullPr Global
  loc_A7E7E8: Global.Unload from_stack_1
  loc_A7E7ED: FFree1Ad var_88
  loc_A7E7F0: ExitProcHresult
End Sub

Private Sub Form_Load() 'A7E5B4
  'Data Table: 486D94
  loc_A7E538: ILdRf Me
  loc_A7E53B: CastAd
  loc_A7E53E: FStAdFunc var_88
  loc_A7E541: FLdRfVar var_88
  loc_A7E544: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A7E549: FFree1Ad var_88
  loc_A7E54C: LitI4 0
  loc_A7E551: LitI4 2
  loc_A7E556: FLdRfVar var_8C
  loc_A7E559: Redim
  loc_A7E563: LitVarStr var_9C, vbNullString
  loc_A7E568: LitI4 0
  loc_A7E56D: ILdRf var_8C
  loc_A7E570: Ary1StVarCopy
  loc_A7E572: LitVarStr var_AC, "ORIGINAL"
  loc_A7E577: LitI4 1
  loc_A7E57C: ILdRf var_8C
  loc_A7E57F: Ary1StVarCopy
  loc_A7E581: LitVarStr var_BC, "DUPLICADO"
  loc_A7E586: LitI4 2
  loc_A7E58B: ILdRf var_8C
  loc_A7E58E: Ary1StVarCopy
  loc_A7E590: FLdRfVar var_8C
  loc_A7E593: FLdRfVar var_CC
  loc_A7E596: ImpAdCallFPR4  = Array()
  loc_A7E59B: FLdRfVar var_8C
  loc_A7E59E: Erase
  loc_A7E59F: FLdRfVar var_CC
  loc_A7E5A2: FLdPr Me
  loc_A7E5A5: MemStVar
  loc_A7E5A9: FFree1Var var_CC = ""
  loc_A7E5AC: Call cmdNueva_Click()
  loc_A7E5B1: ExitProcHresult
  loc_A7E5B2: ImpAdLdFPR4 MemVar_A4D668
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C9048
  'Data Table: 486D94
  loc_9C9030: FLdPr Me
  loc_9C9033: VCallAd Control_ID_wbbReporte
  loc_9C9036: FStAdFunc var_88
  loc_9C9039: FLdRfVar var_88
  loc_9C903C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C9041: FFree1Ad var_88
  loc_9C9044: ExitProcHresult
  loc_9C9045: CopyBytes
End Sub

Private Sub cmdPredeterminada_Click() 'A411C8
  'Data Table: 486D94
  loc_A41174: LitI2_Byte 0
  loc_A41176: ILdRf Me
  loc_A41179: CastAd
  loc_A4117C: FStAdFunc var_88
  loc_A4117F: FLdRfVar var_88
  loc_A41182: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A41187: FFree1Ad var_88
  loc_A4118A: FLdRfVar var_8A
  loc_A4118D: FLdPr Me
  loc_A41190: VCallAd Control_ID_cmdPredeterminada
  loc_A41193: FStAdFunc var_88
  loc_A41196: FLdPr var_88
  loc_A41199:  = Me.Enabled
  loc_A4119E: FLdI2 var_8A
  loc_A411A1: NotI4
  loc_A411A2: FFree1Ad var_88
  loc_A411A5: BranchF loc_A411B0
  loc_A411A8: ImpAdCallFPR4 DoEvents()
  loc_A411AD: Branch loc_A4118A
  loc_A411B0: ILdRf Me
  loc_A411B3: FStAdNoPop
  loc_A411B7: ImpAdLdRf MemVar_D9C5D8
  loc_A411BA: NewIfNullPr Global
  loc_A411BD: Global.Unload from_stack_1
  loc_A411C2: FFree1Ad var_88
  loc_A411C5: ExitProcHresult
  loc_A411C6: ThisVCallAd
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A14C20
  'Data Table: 486D94
  loc_A14BE8: FLdPr Me
  loc_A14BEB: VCallAd Control_ID_statusBar
  loc_A14BEE: FStAdFunc var_88
  loc_A14BF1: FLdPr var_88
  loc_A14BF4: LateIdLdVar var_98 DispID_1 0
  loc_A14BFB: CStrVarTmp
  loc_A14BFC: CVarStr var_A8
  loc_A14BFF: PopAdLdVar
  loc_A14C00: FLdPr Me
  loc_A14C03: VCallAd Control_ID_statusBar
  loc_A14C06: FStAdFunc var_BC
  loc_A14C09: FLdPr var_BC
  loc_A14C0C: LateIdSt
  loc_A14C11: FFreeAd var_88 = ""
  loc_A14C18: FFreeVar var_98 = ""
  loc_A14C1F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A042B4
  'Data Table: 486D94
  loc_A04284: LitVarStr var_94, "Cerrando..."
  loc_A04289: PopAdLdVar
  loc_A0428A: FLdPr Me
  loc_A0428D: VCallAd Control_ID_statusBar
  loc_A04290: FStAdFunc var_A8
  loc_A04293: FLdPr var_A8
  loc_A04296: LateIdSt
  loc_A0429B: FFree1Ad var_A8
  loc_A0429E: ILdRf Me
  loc_A042A1: FStAdNoPop
  loc_A042A5: ImpAdLdRf MemVar_D9C5D8
  loc_A042A8: NewIfNullPr Global
  loc_A042AB: Global.Unload from_stack_1
  loc_A042B0: FFree1Ad var_A8
  loc_A042B3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E10EC
  'Data Table: 486D94
  loc_9E10D0: LitI2_Byte 0
  loc_9E10D2: PopTmpLdAd2 var_8A
  loc_9E10D5: ILdRf Me
  loc_9E10D8: CastAd
  loc_9E10DB: FStAdFunc var_88
  loc_9E10DE: FLdRfVar var_88
  loc_9E10E1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E10E6: FFree1Ad var_88
  loc_9E10E9: ExitProcHresult
  loc_9E10EA: CCyI4
End Sub

Public Function bGeneradoGet() '487A6C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '487A7B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A40F98
  'Data Table: 486D94
  loc_A40F54: LitI4 0
  loc_A40F59: LitI4 1
  loc_A40F5E: FLdRfVar var_88
  loc_A40F61: Redim
  loc_A40F6B: FLdPr Me
  loc_A40F6E: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A40F71: CVarAd
  loc_A40F75: ParmAry1St
  loc_A40F7B: FLdPr Me
  loc_A40F7E: VCallAd Control_ID_NumeApreHastaMsk
  loc_A40F81: CVarAd
  loc_A40F85: ParmAry1St
  loc_A40F8B: FLdRfVar var_88
  loc_A40F8E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A40F93: FLdRfVar var_88
  loc_A40F96: Erase
  loc_A40F97: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C6FF00
  'Data Table: 486D94
  loc_C6EDA4: FLdPr Me
  loc_C6EDA7: MemLdI2 bGenerado
  loc_C6EDAA: BranchF loc_C6EDAE
  loc_C6EDAD: ExitProcHresult
  loc_C6EDAE: LitVarStr var_A4, "Generando reporte: Etapa 1/2 - 0" & Chr(37)
  loc_C6EDB3: PopAdLdVar
  loc_C6EDB4: FLdPr Me
  loc_C6EDB7: VCallAd Control_ID_statusBar
  loc_C6EDBA: FStAdFunc var_B8
  loc_C6EDBD: FLdPr var_B8
  loc_C6EDC0: LateIdSt
  loc_C6EDC5: FFree1Ad var_B8
  loc_C6EDC8: LitI4 &HB
  loc_C6EDCD: CI2I4
  loc_C6EDCE: FLdPr Me
  loc_C6EDD1: Me.MousePointer = from_stack_1
  loc_C6EDD6: LitStr "SELECT DISTINCT NumeApre, CodiOfic, CuenCtct, FealApre, CodiReca, CodiOfju, CapiApre, RecaApre FROM apremio WHERE CodiOfic BETWEEN 1 AND 3 AND EstaApre = 'Activo' AND NumeApre BETWEEN "
  loc_C6EDD9: FLdPr Me
  loc_C6EDDC: VCallAd Control_ID_NumeApreDesdeMsk
  loc_C6EDDF: FStAdFunc var_B8
  loc_C6EDE2: FLdPr var_B8
  loc_C6EDE5: LateIdLdVar var_C8 DispID_0 0
  loc_C6EDEC: CStrVarTmp
  loc_C6EDED: FStStrNoPop var_CC
  loc_C6EDF0: ConcatStr
  loc_C6EDF1: FStStrNoPop var_D0
  loc_C6EDF4: LitStr " AND "
  loc_C6EDF7: ConcatStr
  loc_C6EDF8: FStStrNoPop var_E8
  loc_C6EDFB: FLdPr Me
  loc_C6EDFE: VCallAd Control_ID_NumeApreHastaMsk
  loc_C6EE01: FStAdFunc var_D4
  loc_C6EE04: FLdPr var_D4
  loc_C6EE07: LateIdLdVar var_E4 DispID_0 0
  loc_C6EE0E: CStrVarTmp
  loc_C6EE0F: FStStrNoPop var_EC
  loc_C6EE12: ConcatStr
  loc_C6EE13: FStStrNoPop var_F0
  loc_C6EE16: FLdPr Me
  loc_C6EE19: MemLdRfVar from_stack_1.global_76
  loc_C6EE1C: NewIfNullPr clsapremio
  loc_C6EE1F: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C6EE24: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = ""
  loc_C6EE31: FFreeAd var_B8 = ""
  loc_C6EE38: FFreeVar var_C8 = ""
  loc_C6EE3F: FLdRfVar var_F4
  loc_C6EE42: FLdPr Me
  loc_C6EE45: MemLdRfVar from_stack_1.global_76
  loc_C6EE48: NewIfNullPr clsapremio
  loc_C6EE4B: from_stack_1 = clsapremio.RecordCount
  loc_C6EE50: ILdRf var_F4
  loc_C6EE53: LitI4 0
  loc_C6EE58: EqI4
  loc_C6EE59: BranchF loc_C6EE67
  loc_C6EE5C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C6EE5F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C6EE64: Branch loc_C6FED5
  loc_C6EE67: LitI4 0
  loc_C6EE6C: FLdRfVar var_F4
  loc_C6EE6F: FLdPr Me
  loc_C6EE72: MemLdRfVar from_stack_1.global_76
  loc_C6EE75: NewIfNullPr clsapremio
  loc_C6EE78: from_stack_1 = clsapremio.RecordCount
  loc_C6EE7D: ILdRf var_F4
  loc_C6EE80: FLdPr Me
  loc_C6EE83: MemLdRfVar from_stack_1.global_84
  loc_C6EE86: Redim
  loc_C6EE90: LitI4 0
  loc_C6EE95: FLdPr Me
  loc_C6EE98: MemLdStr global_84
  loc_C6EE9B: LitI2_Byte 1
  loc_C6EE9D: FnUBound
  loc_C6EE9F: FLdPr Me
  loc_C6EEA2: MemLdRfVar from_stack_1.global_120
  loc_C6EEA5: Redim
  loc_C6EEAF: FLdPr Me
  loc_C6EEB2: MemLdRfVar from_stack_1.global_76
  loc_C6EEB5: NewIfNullPr clsapremio
  loc_C6EEB8: Call clsapremio.MoveFirst()
  loc_C6EEBD: LitI2_Byte 1
  loc_C6EEBF: FLdPr Me
  loc_C6EEC2: MemLdRfVar from_stack_1.global_88
  loc_C6EEC5: FLdPr Me
  loc_C6EEC8: MemLdStr global_84
  loc_C6EECB: LitI2_Byte 1
  loc_C6EECD: FnUBound
  loc_C6EECF: CI2I4
  loc_C6EED0: ForI2 var_F8
  loc_C6EED6: LitStr "Generando reporte: Etapa 1/2 - "
  loc_C6EED9: FLdPr Me
  loc_C6EEDC: MemLdI2 global_88
  loc_C6EEDF: CR8I2
  loc_C6EEE0: FLdPr Me
  loc_C6EEE3: MemLdStr global_84
  loc_C6EEE6: LitI2_Byte 1
  loc_C6EEE8: FnUBound
  loc_C6EEEA: CR8I4
  loc_C6EEEB: DivR8
  loc_C6EEEC: LitI2_Byte &H64
  loc_C6EEEE: CR8I2
  loc_C6EEEF: MulR8
  loc_C6EEF0: FnFixR8
  loc_C6EEF2: CStrR8
  loc_C6EEF4: FStStrNoPop var_CC
  loc_C6EEF7: ConcatStr
  loc_C6EEF8: FStStrNoPop var_D0
  loc_C6EEFB: LitStr Chr(37)
  loc_C6EEFE: ConcatStr
  loc_C6EEFF: CVarStr var_C8
  loc_C6EF02: PopAdLdVar
  loc_C6EF03: FLdPr Me
  loc_C6EF06: VCallAd Control_ID_statusBar
  loc_C6EF09: FStAdFunc var_B8
  loc_C6EF0C: FLdPr var_B8
  loc_C6EF0F: LateIdSt
  loc_C6EF14: FFreeStr var_CC = ""
  loc_C6EF1B: FFree1Ad var_B8
  loc_C6EF1E: FFree1Var var_C8 = ""
  loc_C6EF21: FLdPr Me
  loc_C6EF24: MemLdRfVar from_stack_1.global_76
  loc_C6EF27: NewIfNullAd
  loc_C6EF2A: FStAd var_FC 
  loc_C6EF2E: FLdRfVar var_F4
  loc_C6EF31: FLdPr var_FC
  loc_C6EF34: from_stack_1 = clsapremio.NumeApre
  loc_C6EF39: LitI2_Byte 0
  loc_C6EF3B: LitVar_Missing var_C8
  loc_C6EF3E: LitI2_Byte 0
  loc_C6EF40: ILdRf var_F4
  loc_C6EF43: CVarI4
  loc_C6EF47: PopAdLdVar
  loc_C6EF48: FLdPr Me
  loc_C6EF4B: MemLdI2 global_88
  loc_C6EF4E: CI4UI1
  loc_C6EF4F: FLdPr Me
  loc_C6EF52: MemLdStr global_84
  loc_C6EF55: AryLock
  loc_C6EF58: Ary1LdPr
  loc_C6EF59: MemLdRfVar from_stack_1.global_0
  loc_C6EF5C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6EF61: AryUnlock
  loc_C6EF64: FFree1Var var_C8 = ""
  loc_C6EF67: FLdRfVar var_C8
  loc_C6EF6A: FLdPr var_FC
  loc_C6EF6D: from_stack_1 = clsapremio.FealApre
  loc_C6EF72: LitI2_Byte 0
  loc_C6EF74: LitVar_Missing var_E4
  loc_C6EF77: LitI2_Byte 0
  loc_C6EF79: FLdVar var_C8
  loc_C6EF7D: FLdPr Me
  loc_C6EF80: MemLdI2 global_88
  loc_C6EF83: CI4UI1
  loc_C6EF84: FLdPr Me
  loc_C6EF87: MemLdStr global_84
  loc_C6EF8A: AryLock
  loc_C6EF8D: Ary1LdPr
  loc_C6EF8E: MemLdRfVar from_stack_1.global_4
  loc_C6EF91: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6EF96: AryUnlock
  loc_C6EF99: FFreeVar var_C8 = ""
  loc_C6EFA0: FLdRfVar var_102
  loc_C6EFA3: FLdPr var_FC
  loc_C6EFA6: from_stack_1 = clsapremio.CodiOfic
  loc_C6EFAB: LitI2_Byte 0
  loc_C6EFAD: LitVar_Missing var_C8
  loc_C6EFB0: LitI2_Byte 0
  loc_C6EFB2: FLdUI1
  loc_C6EFB6: CVarUI1
  loc_C6EFBA: PopAdLdVar
  loc_C6EFBB: FLdPr Me
  loc_C6EFBE: MemLdI2 global_88
  loc_C6EFC1: CI4UI1
  loc_C6EFC2: FLdPr Me
  loc_C6EFC5: MemLdStr global_84
  loc_C6EFC8: AryLock
  loc_C6EFCB: Ary1LdPr
  loc_C6EFCC: MemLdRfVar from_stack_1.global_88
  loc_C6EFCF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6EFD4: AryUnlock
  loc_C6EFD7: FFree1Var var_C8 = ""
  loc_C6EFDA: FLdRfVar var_CC
  loc_C6EFDD: FLdPr var_FC
  loc_C6EFE0: from_stack_1 = clsapremio.CuenCtct
  loc_C6EFE5: LitI2_Byte 0
  loc_C6EFE7: LitVar_Missing var_E4
  loc_C6EFEA: LitI2_Byte 0
  loc_C6EFEC: FLdZeroAd var_CC
  loc_C6EFEF: CVarStr var_C8
  loc_C6EFF2: PopAdLdVar
  loc_C6EFF3: FLdPr Me
  loc_C6EFF6: MemLdI2 global_88
  loc_C6EFF9: CI4UI1
  loc_C6EFFA: FLdPr Me
  loc_C6EFFD: MemLdStr global_84
  loc_C6F000: AryLock
  loc_C6F003: Ary1LdPr
  loc_C6F004: MemLdRfVar from_stack_1.global_96
  loc_C6F007: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F00C: AryUnlock
  loc_C6F00F: FFreeVar var_C8 = ""
  loc_C6F016: FLdRfVar var_F4
  loc_C6F019: FLdPr var_FC
  loc_C6F01C: from_stack_1 = clsapremio.NumeApre
  loc_C6F021: LitI2_Byte 0
  loc_C6F023: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6F028: FStFPR8 var_128
  loc_C6F02B: FLdRfVar var_102
  loc_C6F02E: FLdPr var_FC
  loc_C6F031: from_stack_1 = clsapremio.CodiReca
  loc_C6F036: FLdRfVar var_104
  loc_C6F039: FLdPr var_FC
  loc_C6F03C: from_stack_1 = clsapremio.CodiOfju
  loc_C6F041: FLdRfVar var_10C
  loc_C6F044: FLdPr var_FC
  loc_C6F047: from_stack_1 = clsapremio.CapiApre
  loc_C6F04C: FLdRfVar var_114
  loc_C6F04F: FLdPr var_FC
  loc_C6F052: from_stack_1 = clsapremio.RecaApre
  loc_C6F057: FLdRfVar var_116
  loc_C6F05A: FLdPr var_FC
  loc_C6F05D: from_stack_1 = clsapremio.CodiOfic
  loc_C6F062: FLdRfVar var_CC
  loc_C6F065: FLdPr var_FC
  loc_C6F068: from_stack_1 = clsapremio.CuenCtct
  loc_C6F06D: ILdRf var_CC
  loc_C6F070: FLdUI1
  loc_C6F074: ImpAdCallI2 Proc_270_84_B08474(, )
  loc_C6F079: ImpAdCallI2 Proc_270_85_A78E7C()
  loc_C6F07E: FStI2 var_12A
  loc_C6F081: FLdRfVar var_120
  loc_C6F084: FLdI2 var_12A
  loc_C6F087: FLdR8 var_114
  loc_C6F08A: FLdR8 var_10C
  loc_C6F08D: FLdI2 var_104
  loc_C6F090: FLdI2 var_102
  loc_C6F093: FLdFPR8 var_128
  loc_C6F096: CStrDate
  loc_C6F098: FStStrNoPop var_D0
  loc_C6F09B: LitI2_Byte 1
  loc_C6F09D: ILdRf var_F4
  loc_C6F0A0: FLdRfVar var_94
  loc_C6F0A3: NewIfNullPr clsinstjudi
  loc_C6F0A6: from_stack_9v = clsinstjudi.BuscaGastosInstancia(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C6F0AB: LitI2_Byte 0
  loc_C6F0AD: LitVar_Missing var_C8
  loc_C6F0B0: LitI2_Byte 0
  loc_C6F0B2: FLdFPR8 var_120
  loc_C6F0B5: CVarR8
  loc_C6F0B9: PopAdLdVar
  loc_C6F0BA: FLdPr Me
  loc_C6F0BD: MemLdI2 global_88
  loc_C6F0C0: CI4UI1
  loc_C6F0C1: FLdPr Me
  loc_C6F0C4: MemLdStr global_84
  loc_C6F0C7: AryLock
  loc_C6F0CA: Ary1LdPr
  loc_C6F0CB: MemLdRfVar from_stack_1.global_104
  loc_C6F0CE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F0D3: AryUnlock
  loc_C6F0D6: FFreeStr var_CC = ""
  loc_C6F0DD: FFree1Var var_C8 = ""
  loc_C6F0E0: LitNothing
  loc_C6F0E2: FStAd var_FC 
  loc_C6F0E6: LitI2_Byte 1
  loc_C6F0E8: PopTmpLdAd2 var_102
  loc_C6F0EB: FLdPr Me
  loc_C6F0EE: MemLdRfVar from_stack_1.global_76
  loc_C6F0F1: NewIfNullPr clsapremio
  loc_C6F0F4: Call clsapremio.Move(from_stack_1v)
  loc_C6F0F9: FLdPr Me
  loc_C6F0FC: MemLdRfVar from_stack_1.global_88
  loc_C6F0FF: NextI2 var_F8, loc_C6EED6
  loc_C6F104: LitI2_Byte 1
  loc_C6F106: FLdPr Me
  loc_C6F109: MemLdRfVar from_stack_1.global_88
  loc_C6F10C: FLdPr Me
  loc_C6F10F: MemLdStr global_84
  loc_C6F112: LitI2_Byte 1
  loc_C6F114: FnUBound
  loc_C6F116: CI2I4
  loc_C6F117: ForI2 var_12E
  loc_C6F11D: LitStr "Generando reporte: Etapa 2/2 - "
  loc_C6F120: FLdPr Me
  loc_C6F123: MemLdI2 global_88
  loc_C6F126: CR8I2
  loc_C6F127: FLdPr Me
  loc_C6F12A: MemLdStr global_84
  loc_C6F12D: LitI2_Byte 1
  loc_C6F12F: FnUBound
  loc_C6F131: CR8I4
  loc_C6F132: DivR8
  loc_C6F133: LitI2_Byte &H64
  loc_C6F135: CR8I2
  loc_C6F136: MulR8
  loc_C6F137: FnFixR8
  loc_C6F139: CStrR8
  loc_C6F13B: FStStrNoPop var_CC
  loc_C6F13E: ConcatStr
  loc_C6F13F: FStStrNoPop var_D0
  loc_C6F142: LitStr Chr(37)
  loc_C6F145: ConcatStr
  loc_C6F146: CVarStr var_C8
  loc_C6F149: PopAdLdVar
  loc_C6F14A: FLdPr Me
  loc_C6F14D: VCallAd Control_ID_statusBar
  loc_C6F150: FStAdFunc var_B8
  loc_C6F153: FLdPr var_B8
  loc_C6F156: LateIdSt
  loc_C6F15B: FFreeStr var_CC = ""
  loc_C6F162: FFree1Ad var_B8
  loc_C6F165: FFree1Var var_C8 = ""
  loc_C6F168: FLdPr Me
  loc_C6F16B: MemLdRfVar from_stack_1.global_76
  loc_C6F16E: NewIfNullAd
  loc_C6F171: FStAd var_134 
  loc_C6F175: FLdPr Me
  loc_C6F178: MemLdI2 global_88
  loc_C6F17B: CI4UI1
  loc_C6F17C: FLdPr Me
  loc_C6F17F: MemLdStr global_84
  loc_C6F182: Ary1LdPr
  loc_C6F183: MemLdStr global_88
  loc_C6F186: FStStrCopy var_138
  loc_C6F189: ILdRf var_138
  loc_C6F18C: LitI2_Byte 1
  loc_C6F18E: CStrUI1
  loc_C6F190: FStStrNoPop var_CC
  loc_C6F193: EqStr
  loc_C6F195: FFree1Str var_CC
  loc_C6F198: BranchF loc_C6F5D1
  loc_C6F19B: LitStr "SELECT apremio.NumeApre, DetaReca, DetaPers,"
  loc_C6F19E: LitStr " cast(concat_ws('-',lpad(DptoInmu,2,'0'),lpad(DistInmu,2,'0'),lpad(SeccInmu,2,'0'),lpad(ManzInmu,4,'0'),lpad(ParcInmu,6,'0'),lpad(SubpInmu,4,'0'),DigiInmu) as CHAR) as NomeInmu,"
  loc_C6F1A1: ConcatStr
  loc_C6F1A2: FStStrNoPop var_CC
  loc_C6F1A5: LitStr " DetaCall, NucaInmu, UbicInmu, MansInmu, CasaInmu, DetaLoca, CodiPost,"
  loc_C6F1A8: ConcatStr
  loc_C6F1A9: FStStrNoPop var_D0
  loc_C6F1AC: LitStr " DecpInmu as DecaPost, NupoInmu as Numepost , DebpInmu as DebaPost, MapoInmu as ManzPost, UbpoInmu as UbicPost, DelpInmu as DeloPost, CoppInmu as CopoPost,"
  loc_C6F1AF: ConcatStr
  loc_C6F1B0: FStStrNoPop var_E8
  loc_C6F1B3: LitStr " DecrPers, NurePers, DebrPers, MarePers, UbrePers, DelrPers, CoprPers,"
  loc_C6F1B6: ConcatStr
  loc_C6F1B7: FStStrNoPop var_EC
  loc_C6F1BA: LitStr " apremio.CodiOfic , DetaOfic, CuenCtct, apremio.TotaApre"
  loc_C6F1BD: ConcatStr
  loc_C6F1BE: FStStrNoPop var_F0
  loc_C6F1C1: LitStr " FROM apremio"
  loc_C6F1C4: ConcatStr
  loc_C6F1C5: FStStrNoPop var_13C
  loc_C6F1C8: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = apremio.CuenCtct"
  loc_C6F1CB: ConcatStr
  loc_C6F1CC: FStStrNoPop var_140
  loc_C6F1CF: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_C6F1D2: ConcatStr
  loc_C6F1D3: FStStrNoPop var_144
  loc_C6F1D6: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C6F1D9: ConcatStr
  loc_C6F1DA: FStStrNoPop var_148
  loc_C6F1DD: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = inmueble.CodiCall"
  loc_C6F1E0: ConcatStr
  loc_C6F1E1: FStStrNoPop var_14C
  loc_C6F1E4: LitStr " LEFT JOIN infogov.localidad ON infogov.localidad.CodiLoca = inmueble.CodiLoca"
  loc_C6F1E7: ConcatStr
  loc_C6F1E8: FStStrNoPop var_150
  loc_C6F1EB: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = apremio.CodiOfic"
  loc_C6F1EE: ConcatStr
  loc_C6F1EF: FStStrNoPop var_154
  loc_C6F1F2: LitStr " WHERE NumeApre = "
  loc_C6F1F5: ConcatStr
  loc_C6F1F6: FStStrNoPop var_158
  loc_C6F1F9: FLdPr Me
  loc_C6F1FC: MemLdI2 global_88
  loc_C6F1FF: CI4UI1
  loc_C6F200: FLdPr Me
  loc_C6F203: MemLdStr global_84
  loc_C6F206: Ary1LdPr
  loc_C6F207: MemLdStr global_0
  loc_C6F20A: ConcatStr
  loc_C6F20B: FStStrNoPop var_15C
  loc_C6F20E: FLdPr var_134
  loc_C6F211: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C6F216: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_C6F235: FLdRfVar var_F4
  loc_C6F238: FLdPr var_134
  loc_C6F23B: from_stack_1 = clsapremio.RecordCount
  loc_C6F240: ILdRf var_F4
  loc_C6F243: LitI4 0
  loc_C6F248: EqI4
  loc_C6F249: BranchF loc_C6F24E
  loc_C6F24C: Stop
  loc_C6F24E: FLdPr var_134
  loc_C6F251: Call clsapremio.MoveFirst()
  loc_C6F256: FLdRfVar var_C8
  loc_C6F259: FLdPr var_134
  loc_C6F25C: from_stack_1 = clsapremio.NomeInmu
  loc_C6F261: LitI2_Byte 0
  loc_C6F263: LitVar_Missing var_E4
  loc_C6F266: LitI2_Byte 0
  loc_C6F268: FLdVar var_C8
  loc_C6F26C: FLdPr Me
  loc_C6F26F: MemLdI2 global_88
  loc_C6F272: CI4UI1
  loc_C6F273: FLdPr Me
  loc_C6F276: MemLdStr global_84
  loc_C6F279: AryLock
  loc_C6F27C: Ary1LdPr
  loc_C6F27D: MemLdRfVar from_stack_1.global_100
  loc_C6F280: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F285: AryUnlock
  loc_C6F288: FFreeVar var_C8 = ""
  loc_C6F28F: FLdRfVar var_C8
  loc_C6F292: FLdPr var_134
  loc_C6F295: from_stack_1 = clsapremio.DetaCall
  loc_C6F29A: LitI2_Byte 0
  loc_C6F29C: LitVar_Missing var_E4
  loc_C6F29F: LitI2_Byte 0
  loc_C6F2A1: FLdVar var_C8
  loc_C6F2A5: FLdPr Me
  loc_C6F2A8: MemLdI2 global_88
  loc_C6F2AB: CI4UI1
  loc_C6F2AC: FLdPr Me
  loc_C6F2AF: MemLdStr global_84
  loc_C6F2B2: AryLock
  loc_C6F2B5: Ary1LdPr
  loc_C6F2B6: MemLdRfVar from_stack_1.global_16
  loc_C6F2B9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F2BE: AryUnlock
  loc_C6F2C1: FFreeVar var_C8 = ""
  loc_C6F2C8: FLdRfVar var_CC
  loc_C6F2CB: FLdPr var_134
  loc_C6F2CE: from_stack_1 = clsapremio.NucaInmu
  loc_C6F2D3: LitI2_Byte 0
  loc_C6F2D5: LitVar_Missing var_E4
  loc_C6F2D8: LitI2_Byte 0
  loc_C6F2DA: FLdZeroAd var_CC
  loc_C6F2DD: CVarStr var_C8
  loc_C6F2E0: PopAdLdVar
  loc_C6F2E1: FLdPr Me
  loc_C6F2E4: MemLdI2 global_88
  loc_C6F2E7: CI4UI1
  loc_C6F2E8: FLdPr Me
  loc_C6F2EB: MemLdStr global_84
  loc_C6F2EE: AryLock
  loc_C6F2F1: Ary1LdPr
  loc_C6F2F2: MemLdRfVar from_stack_1.global_20
  loc_C6F2F5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F2FA: AryUnlock
  loc_C6F2FD: FFreeVar var_C8 = ""
  loc_C6F304: FLdRfVar var_CC
  loc_C6F307: FLdPr var_134
  loc_C6F30A: from_stack_1 = clsapremio.UbicInmu
  loc_C6F30F: LitI2_Byte 0
  loc_C6F311: LitVar_Missing var_E4
  loc_C6F314: LitI2_Byte 0
  loc_C6F316: FLdZeroAd var_CC
  loc_C6F319: CVarStr var_C8
  loc_C6F31C: PopAdLdVar
  loc_C6F31D: FLdPr Me
  loc_C6F320: MemLdI2 global_88
  loc_C6F323: CI4UI1
  loc_C6F324: FLdPr Me
  loc_C6F327: MemLdStr global_84
  loc_C6F32A: AryLock
  loc_C6F32D: Ary1LdPr
  loc_C6F32E: MemLdRfVar from_stack_1.global_28
  loc_C6F331: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F336: AryUnlock
  loc_C6F339: FFreeVar var_C8 = ""
  loc_C6F340: FLdRfVar var_CC
  loc_C6F343: FLdPr var_134
  loc_C6F346: from_stack_1 = clsapremio.MansInmu
  loc_C6F34B: LitI2_Byte 0
  loc_C6F34D: LitVar_Missing var_E4
  loc_C6F350: LitI2_Byte 0
  loc_C6F352: FLdZeroAd var_CC
  loc_C6F355: CVarStr var_C8
  loc_C6F358: PopAdLdVar
  loc_C6F359: FLdPr Me
  loc_C6F35C: MemLdI2 global_88
  loc_C6F35F: CI4UI1
  loc_C6F360: FLdPr Me
  loc_C6F363: MemLdStr global_84
  loc_C6F366: AryLock
  loc_C6F369: Ary1LdPr
  loc_C6F36A: MemLdRfVar from_stack_1.global_36
  loc_C6F36D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F372: AryUnlock
  loc_C6F375: FFreeVar var_C8 = ""
  loc_C6F37C: FLdRfVar var_CC
  loc_C6F37F: FLdPr var_134
  loc_C6F382: from_stack_1 = clsapremio.CasaInmu
  loc_C6F387: LitI2_Byte 0
  loc_C6F389: LitVar_Missing var_E4
  loc_C6F38C: LitI2_Byte 0
  loc_C6F38E: FLdZeroAd var_CC
  loc_C6F391: CVarStr var_C8
  loc_C6F394: PopAdLdVar
  loc_C6F395: FLdPr Me
  loc_C6F398: MemLdI2 global_88
  loc_C6F39B: CI4UI1
  loc_C6F39C: FLdPr Me
  loc_C6F39F: MemLdStr global_84
  loc_C6F3A2: AryLock
  loc_C6F3A5: Ary1LdPr
  loc_C6F3A6: MemLdRfVar from_stack_1.global_44
  loc_C6F3A9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F3AE: AryUnlock
  loc_C6F3B1: FFreeVar var_C8 = ""
  loc_C6F3B8: FLdRfVar var_C8
  loc_C6F3BB: FLdPr var_134
  loc_C6F3BE: from_stack_1 = clsapremio.DetaLoca
  loc_C6F3C3: LitI2_Byte 0
  loc_C6F3C5: LitVar_Missing var_E4
  loc_C6F3C8: LitI2_Byte 0
  loc_C6F3CA: FLdVar var_C8
  loc_C6F3CE: FLdPr Me
  loc_C6F3D1: MemLdI2 global_88
  loc_C6F3D4: CI4UI1
  loc_C6F3D5: FLdPr Me
  loc_C6F3D8: MemLdStr global_84
  loc_C6F3DB: AryLock
  loc_C6F3DE: Ary1LdPr
  loc_C6F3DF: MemLdRfVar from_stack_1.bGenerado
  loc_C6F3E2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F3E7: AryUnlock
  loc_C6F3EA: FFreeVar var_C8 = ""
  loc_C6F3F1: FLdRfVar var_C8
  loc_C6F3F4: FLdPr var_134
  loc_C6F3F7: from_stack_1 = clsapremio.CodiPost
  loc_C6F3FC: LitI2_Byte 0
  loc_C6F3FE: LitVar_Missing var_E4
  loc_C6F401: LitI2_Byte 0
  loc_C6F403: FLdVar var_C8
  loc_C6F407: FLdPr Me
  loc_C6F40A: MemLdI2 global_88
  loc_C6F40D: CI4UI1
  loc_C6F40E: FLdPr Me
  loc_C6F411: MemLdStr global_84
  loc_C6F414: AryLock
  loc_C6F417: Ary1LdPr
  loc_C6F418: MemLdRfVar from_stack_1.global_56
  loc_C6F41B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F420: AryUnlock
  loc_C6F423: FFreeVar var_C8 = ""
  loc_C6F42A: FLdRfVar var_CC
  loc_C6F42D: FLdPr var_134
  loc_C6F430: from_stack_1 = clsapremio.DecaPost
  loc_C6F435: LitI2_Byte 0
  loc_C6F437: LitVar_Missing var_E4
  loc_C6F43A: LitI2_Byte 0
  loc_C6F43C: FLdZeroAd var_CC
  loc_C6F43F: CVarStr var_C8
  loc_C6F442: PopAdLdVar
  loc_C6F443: FLdPr Me
  loc_C6F446: MemLdI2 global_88
  loc_C6F449: CI4UI1
  loc_C6F44A: FLdPr Me
  loc_C6F44D: MemLdStr global_84
  loc_C6F450: AryLock
  loc_C6F453: Ary1LdPr
  loc_C6F454: MemLdRfVar from_stack_1.global_60
  loc_C6F457: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F45C: AryUnlock
  loc_C6F45F: FFreeVar var_C8 = ""
  loc_C6F466: FLdRfVar var_CC
  loc_C6F469: FLdPr var_134
  loc_C6F46C: from_stack_1 = clsapremio.NumePost
  loc_C6F471: LitI2_Byte 0
  loc_C6F473: LitVar_Missing var_E4
  loc_C6F476: LitI2_Byte 0
  loc_C6F478: FLdZeroAd var_CC
  loc_C6F47B: CVarStr var_C8
  loc_C6F47E: PopAdLdVar
  loc_C6F47F: FLdPr Me
  loc_C6F482: MemLdI2 global_88
  loc_C6F485: CI4UI1
  loc_C6F486: FLdPr Me
  loc_C6F489: MemLdStr global_84
  loc_C6F48C: AryLock
  loc_C6F48F: Ary1LdPr
  loc_C6F490: MemLdRfVar from_stack_1.global_64
  loc_C6F493: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F498: AryUnlock
  loc_C6F49B: FFreeVar var_C8 = ""
  loc_C6F4A2: FLdRfVar var_CC
  loc_C6F4A5: FLdPr var_134
  loc_C6F4A8: from_stack_1 = clsapremio.DebaPost
  loc_C6F4AD: LitI2_Byte 0
  loc_C6F4AF: LitVar_Missing var_E4
  loc_C6F4B2: LitI2_Byte 0
  loc_C6F4B4: FLdZeroAd var_CC
  loc_C6F4B7: CVarStr var_C8
  loc_C6F4BA: PopAdLdVar
  loc_C6F4BB: FLdPr Me
  loc_C6F4BE: MemLdI2 global_88
  loc_C6F4C1: CI4UI1
  loc_C6F4C2: FLdPr Me
  loc_C6F4C5: MemLdStr global_84
  loc_C6F4C8: AryLock
  loc_C6F4CB: Ary1LdPr
  loc_C6F4CC: MemLdRfVar from_stack_1.global_68
  loc_C6F4CF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F4D4: AryUnlock
  loc_C6F4D7: FFreeVar var_C8 = ""
  loc_C6F4DE: FLdRfVar var_CC
  loc_C6F4E1: FLdPr var_134
  loc_C6F4E4: from_stack_1 = clsapremio.ManzPost
  loc_C6F4E9: LitI2_Byte 0
  loc_C6F4EB: LitVar_Missing var_E4
  loc_C6F4EE: LitI2_Byte 0
  loc_C6F4F0: FLdZeroAd var_CC
  loc_C6F4F3: CVarStr var_C8
  loc_C6F4F6: PopAdLdVar
  loc_C6F4F7: FLdPr Me
  loc_C6F4FA: MemLdI2 global_88
  loc_C6F4FD: CI4UI1
  loc_C6F4FE: FLdPr Me
  loc_C6F501: MemLdStr global_84
  loc_C6F504: AryLock
  loc_C6F507: Ary1LdPr
  loc_C6F508: MemLdRfVar from_stack_1.global_72
  loc_C6F50B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F510: AryUnlock
  loc_C6F513: FFreeVar var_C8 = ""
  loc_C6F51A: FLdRfVar var_CC
  loc_C6F51D: FLdPr var_134
  loc_C6F520: from_stack_1 = clsapremio.UbicPost
  loc_C6F525: LitI2_Byte 0
  loc_C6F527: LitVar_Missing var_E4
  loc_C6F52A: LitI2_Byte 0
  loc_C6F52C: FLdZeroAd var_CC
  loc_C6F52F: CVarStr var_C8
  loc_C6F532: PopAdLdVar
  loc_C6F533: FLdPr Me
  loc_C6F536: MemLdI2 global_88
  loc_C6F539: CI4UI1
  loc_C6F53A: FLdPr Me
  loc_C6F53D: MemLdStr global_84
  loc_C6F540: AryLock
  loc_C6F543: Ary1LdPr
  loc_C6F544: MemLdRfVar from_stack_1.global_76
  loc_C6F547: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F54C: AryUnlock
  loc_C6F54F: FFreeVar var_C8 = ""
  loc_C6F556: FLdRfVar var_CC
  loc_C6F559: FLdPr var_134
  loc_C6F55C: from_stack_1 = clsapremio.DeloPost
  loc_C6F561: LitI2_Byte 0
  loc_C6F563: LitVar_Missing var_E4
  loc_C6F566: LitI2_Byte 0
  loc_C6F568: FLdZeroAd var_CC
  loc_C6F56B: CVarStr var_C8
  loc_C6F56E: PopAdLdVar
  loc_C6F56F: FLdPr Me
  loc_C6F572: MemLdI2 global_88
  loc_C6F575: CI4UI1
  loc_C6F576: FLdPr Me
  loc_C6F579: MemLdStr global_84
  loc_C6F57C: AryLock
  loc_C6F57F: Ary1LdPr
  loc_C6F580: MemLdRfVar from_stack_1.global_80
  loc_C6F583: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F588: AryUnlock
  loc_C6F58B: FFreeVar var_C8 = ""
  loc_C6F592: FLdRfVar var_CC
  loc_C6F595: FLdPr var_134
  loc_C6F598: from_stack_1 = clsapremio.CopoPost
  loc_C6F59D: LitI2_Byte 0
  loc_C6F59F: LitVar_Missing var_E4
  loc_C6F5A2: LitI2_Byte 0
  loc_C6F5A4: FLdZeroAd var_CC
  loc_C6F5A7: CVarStr var_C8
  loc_C6F5AA: PopAdLdVar
  loc_C6F5AB: FLdPr Me
  loc_C6F5AE: MemLdI2 global_88
  loc_C6F5B1: CI4UI1
  loc_C6F5B2: FLdPr Me
  loc_C6F5B5: MemLdStr global_84
  loc_C6F5B8: AryLock
  loc_C6F5BB: Ary1LdPr
  loc_C6F5BC: MemLdRfVar from_stack_1.global_84
  loc_C6F5BF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F5C4: AryUnlock
  loc_C6F5C7: FFreeVar var_C8 = ""
  loc_C6F5CE: Branch loc_C6FDBC
  loc_C6F5D1: ILdRf var_138
  loc_C6F5D4: LitI2_Byte 2
  loc_C6F5D6: CStrUI1
  loc_C6F5D8: FStStrNoPop var_CC
  loc_C6F5DB: EqStr
  loc_C6F5DD: FFree1Str var_CC
  loc_C6F5E0: BranchF loc_C6F9CB
  loc_C6F5E3: LitStr "SELECT apremio.NumeApre, DetaReca, DetaPers,"
  loc_C6F5E6: LitStr " DetaCall, NucaCome, UbicCome, MansCome, CasaCome, DetaLoca, CodiPost,"
  loc_C6F5E9: ConcatStr
  loc_C6F5EA: FStStrNoPop var_CC
  loc_C6F5ED: LitStr " DecpCome as DecaPost, NupoCome as Numepost , DebpCome as DebaPost, MapoCome as ManzPost, UbpoCome as UbicPost, DelpCome as DeloPost, CoppCome as CopoPost,"
  loc_C6F5F0: ConcatStr
  loc_C6F5F1: FStStrNoPop var_D0
  loc_C6F5F4: LitStr " DecrPers, NurePers, DebrPers, MarePers, UbrePers, DelrPers, CoprPers,"
  loc_C6F5F7: ConcatStr
  loc_C6F5F8: FStStrNoPop var_E8
  loc_C6F5FB: LitStr " apremio.CodiOfic , DetaOfic, CuenCtct, apremio.TotaApre"
  loc_C6F5FE: ConcatStr
  loc_C6F5FF: FStStrNoPop var_EC
  loc_C6F602: LitStr " FROM apremio"
  loc_C6F605: ConcatStr
  loc_C6F606: FStStrNoPop var_F0
  loc_C6F609: LitStr " LEFT JOIN comercio ON comercio.CodiCome = apremio.CuenCtct"
  loc_C6F60C: ConcatStr
  loc_C6F60D: FStStrNoPop var_13C
  loc_C6F610: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_C6F613: ConcatStr
  loc_C6F614: FStStrNoPop var_140
  loc_C6F617: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C6F61A: ConcatStr
  loc_C6F61B: FStStrNoPop var_144
  loc_C6F61E: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = comercio.CodiCall"
  loc_C6F621: ConcatStr
  loc_C6F622: FStStrNoPop var_148
  loc_C6F625: LitStr " LEFT JOIN infogov.localidad ON infogov.localidad.CodiLoca = comercio.CodiLoca"
  loc_C6F628: ConcatStr
  loc_C6F629: FStStrNoPop var_14C
  loc_C6F62C: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = apremio.CodiOfic"
  loc_C6F62F: ConcatStr
  loc_C6F630: FStStrNoPop var_150
  loc_C6F633: LitStr " WHERE NumeApre = "
  loc_C6F636: ConcatStr
  loc_C6F637: FStStrNoPop var_154
  loc_C6F63A: FLdPr Me
  loc_C6F63D: MemLdI2 global_88
  loc_C6F640: CI4UI1
  loc_C6F641: FLdPr Me
  loc_C6F644: MemLdStr global_84
  loc_C6F647: Ary1LdPr
  loc_C6F648: MemLdStr global_0
  loc_C6F64B: ConcatStr
  loc_C6F64C: FStStrNoPop var_158
  loc_C6F64F: FLdPr var_134
  loc_C6F652: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C6F657: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_C6F674: FLdRfVar var_F4
  loc_C6F677: FLdPr var_134
  loc_C6F67A: from_stack_1 = clsapremio.RecordCount
  loc_C6F67F: ILdRf var_F4
  loc_C6F682: LitI4 0
  loc_C6F687: EqI4
  loc_C6F688: BranchF loc_C6F68D
  loc_C6F68B: Stop
  loc_C6F68D: FLdPr var_134
  loc_C6F690: Call clsapremio.MoveFirst()
  loc_C6F695: FLdRfVar var_C8
  loc_C6F698: FLdPr var_134
  loc_C6F69B: from_stack_1 = clsapremio.DetaCall
  loc_C6F6A0: LitI2_Byte 0
  loc_C6F6A2: LitVar_Missing var_E4
  loc_C6F6A5: LitI2_Byte 0
  loc_C6F6A7: FLdVar var_C8
  loc_C6F6AB: FLdPr Me
  loc_C6F6AE: MemLdI2 global_88
  loc_C6F6B1: CI4UI1
  loc_C6F6B2: FLdPr Me
  loc_C6F6B5: MemLdStr global_84
  loc_C6F6B8: AryLock
  loc_C6F6BB: Ary1LdPr
  loc_C6F6BC: MemLdRfVar from_stack_1.global_16
  loc_C6F6BF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F6C4: AryUnlock
  loc_C6F6C7: FFreeVar var_C8 = ""
  loc_C6F6CE: FLdRfVar var_C8
  loc_C6F6D1: FLdPr var_134
  loc_C6F6D4: from_stack_1 = clsapremio.NucaCome
  loc_C6F6D9: LitI2_Byte 0
  loc_C6F6DB: LitVar_Missing var_E4
  loc_C6F6DE: LitI2_Byte 0
  loc_C6F6E0: FLdVar var_C8
  loc_C6F6E4: FLdPr Me
  loc_C6F6E7: MemLdI2 global_88
  loc_C6F6EA: CI4UI1
  loc_C6F6EB: FLdPr Me
  loc_C6F6EE: MemLdStr global_84
  loc_C6F6F1: AryLock
  loc_C6F6F4: Ary1LdPr
  loc_C6F6F5: MemLdRfVar from_stack_1.global_24
  loc_C6F6F8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F6FD: AryUnlock
  loc_C6F700: FFreeVar var_C8 = ""
  loc_C6F707: FLdRfVar var_C8
  loc_C6F70A: FLdPr var_134
  loc_C6F70D: from_stack_1 = clsapremio.UbicCome
  loc_C6F712: LitI2_Byte 0
  loc_C6F714: LitVar_Missing var_E4
  loc_C6F717: LitI2_Byte 0
  loc_C6F719: FLdVar var_C8
  loc_C6F71D: FLdPr Me
  loc_C6F720: MemLdI2 global_88
  loc_C6F723: CI4UI1
  loc_C6F724: FLdPr Me
  loc_C6F727: MemLdStr global_84
  loc_C6F72A: AryLock
  loc_C6F72D: Ary1LdPr
  loc_C6F72E: MemLdRfVar from_stack_1.global_32
  loc_C6F731: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F736: AryUnlock
  loc_C6F739: FFreeVar var_C8 = ""
  loc_C6F740: FLdRfVar var_C8
  loc_C6F743: FLdPr var_134
  loc_C6F746: from_stack_1 = clsapremio.MansCome
  loc_C6F74B: LitI2_Byte 0
  loc_C6F74D: LitVar_Missing var_E4
  loc_C6F750: LitI2_Byte 0
  loc_C6F752: FLdVar var_C8
  loc_C6F756: FLdPr Me
  loc_C6F759: MemLdI2 global_88
  loc_C6F75C: CI4UI1
  loc_C6F75D: FLdPr Me
  loc_C6F760: MemLdStr global_84
  loc_C6F763: AryLock
  loc_C6F766: Ary1LdPr
  loc_C6F767: MemLdRfVar from_stack_1.global_40
  loc_C6F76A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F76F: AryUnlock
  loc_C6F772: FFreeVar var_C8 = ""
  loc_C6F779: FLdRfVar var_C8
  loc_C6F77C: FLdPr var_134
  loc_C6F77F: from_stack_1 = clsapremio.CasaCome
  loc_C6F784: LitI2_Byte 0
  loc_C6F786: LitVar_Missing var_E4
  loc_C6F789: LitI2_Byte 0
  loc_C6F78B: FLdVar var_C8
  loc_C6F78F: FLdPr Me
  loc_C6F792: MemLdI2 global_88
  loc_C6F795: CI4UI1
  loc_C6F796: FLdPr Me
  loc_C6F799: MemLdStr global_84
  loc_C6F79C: AryLock
  loc_C6F79F: Ary1LdPr
  loc_C6F7A0: MemLdRfVar from_stack_1.global_48
  loc_C6F7A3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F7A8: AryUnlock
  loc_C6F7AB: FFreeVar var_C8 = ""
  loc_C6F7B2: FLdRfVar var_C8
  loc_C6F7B5: FLdPr var_134
  loc_C6F7B8: from_stack_1 = clsapremio.DetaLoca
  loc_C6F7BD: LitI2_Byte 0
  loc_C6F7BF: LitVar_Missing var_E4
  loc_C6F7C2: LitI2_Byte 0
  loc_C6F7C4: FLdVar var_C8
  loc_C6F7C8: FLdPr Me
  loc_C6F7CB: MemLdI2 global_88
  loc_C6F7CE: CI4UI1
  loc_C6F7CF: FLdPr Me
  loc_C6F7D2: MemLdStr global_84
  loc_C6F7D5: AryLock
  loc_C6F7D8: Ary1LdPr
  loc_C6F7D9: MemLdRfVar from_stack_1.bGenerado
  loc_C6F7DC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F7E1: AryUnlock
  loc_C6F7E4: FFreeVar var_C8 = ""
  loc_C6F7EB: FLdRfVar var_C8
  loc_C6F7EE: FLdPr var_134
  loc_C6F7F1: from_stack_1 = clsapremio.CodiPost
  loc_C6F7F6: LitI2_Byte 0
  loc_C6F7F8: LitVar_Missing var_E4
  loc_C6F7FB: LitI2_Byte 0
  loc_C6F7FD: FLdVar var_C8
  loc_C6F801: FLdPr Me
  loc_C6F804: MemLdI2 global_88
  loc_C6F807: CI4UI1
  loc_C6F808: FLdPr Me
  loc_C6F80B: MemLdStr global_84
  loc_C6F80E: AryLock
  loc_C6F811: Ary1LdPr
  loc_C6F812: MemLdRfVar from_stack_1.global_56
  loc_C6F815: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F81A: AryUnlock
  loc_C6F81D: FFreeVar var_C8 = ""
  loc_C6F824: FLdRfVar var_CC
  loc_C6F827: FLdPr var_134
  loc_C6F82A: from_stack_1 = clsapremio.DecaPost
  loc_C6F82F: LitI2_Byte 0
  loc_C6F831: LitVar_Missing var_E4
  loc_C6F834: LitI2_Byte 0
  loc_C6F836: FLdZeroAd var_CC
  loc_C6F839: CVarStr var_C8
  loc_C6F83C: PopAdLdVar
  loc_C6F83D: FLdPr Me
  loc_C6F840: MemLdI2 global_88
  loc_C6F843: CI4UI1
  loc_C6F844: FLdPr Me
  loc_C6F847: MemLdStr global_84
  loc_C6F84A: AryLock
  loc_C6F84D: Ary1LdPr
  loc_C6F84E: MemLdRfVar from_stack_1.global_60
  loc_C6F851: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F856: AryUnlock
  loc_C6F859: FFreeVar var_C8 = ""
  loc_C6F860: FLdRfVar var_CC
  loc_C6F863: FLdPr var_134
  loc_C6F866: from_stack_1 = clsapremio.NumePost
  loc_C6F86B: LitI2_Byte 0
  loc_C6F86D: LitVar_Missing var_E4
  loc_C6F870: LitI2_Byte 0
  loc_C6F872: FLdZeroAd var_CC
  loc_C6F875: CVarStr var_C8
  loc_C6F878: PopAdLdVar
  loc_C6F879: FLdPr Me
  loc_C6F87C: MemLdI2 global_88
  loc_C6F87F: CI4UI1
  loc_C6F880: FLdPr Me
  loc_C6F883: MemLdStr global_84
  loc_C6F886: AryLock
  loc_C6F889: Ary1LdPr
  loc_C6F88A: MemLdRfVar from_stack_1.global_64
  loc_C6F88D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F892: AryUnlock
  loc_C6F895: FFreeVar var_C8 = ""
  loc_C6F89C: FLdRfVar var_CC
  loc_C6F89F: FLdPr var_134
  loc_C6F8A2: from_stack_1 = clsapremio.DebaPost
  loc_C6F8A7: LitI2_Byte 0
  loc_C6F8A9: LitVar_Missing var_E4
  loc_C6F8AC: LitI2_Byte 0
  loc_C6F8AE: FLdZeroAd var_CC
  loc_C6F8B1: CVarStr var_C8
  loc_C6F8B4: PopAdLdVar
  loc_C6F8B5: FLdPr Me
  loc_C6F8B8: MemLdI2 global_88
  loc_C6F8BB: CI4UI1
  loc_C6F8BC: FLdPr Me
  loc_C6F8BF: MemLdStr global_84
  loc_C6F8C2: AryLock
  loc_C6F8C5: Ary1LdPr
  loc_C6F8C6: MemLdRfVar from_stack_1.global_68
  loc_C6F8C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F8CE: AryUnlock
  loc_C6F8D1: FFreeVar var_C8 = ""
  loc_C6F8D8: FLdRfVar var_CC
  loc_C6F8DB: FLdPr var_134
  loc_C6F8DE: from_stack_1 = clsapremio.ManzPost
  loc_C6F8E3: LitI2_Byte 0
  loc_C6F8E5: LitVar_Missing var_E4
  loc_C6F8E8: LitI2_Byte 0
  loc_C6F8EA: FLdZeroAd var_CC
  loc_C6F8ED: CVarStr var_C8
  loc_C6F8F0: PopAdLdVar
  loc_C6F8F1: FLdPr Me
  loc_C6F8F4: MemLdI2 global_88
  loc_C6F8F7: CI4UI1
  loc_C6F8F8: FLdPr Me
  loc_C6F8FB: MemLdStr global_84
  loc_C6F8FE: AryLock
  loc_C6F901: Ary1LdPr
  loc_C6F902: MemLdRfVar from_stack_1.global_72
  loc_C6F905: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F90A: AryUnlock
  loc_C6F90D: FFreeVar var_C8 = ""
  loc_C6F914: FLdRfVar var_CC
  loc_C6F917: FLdPr var_134
  loc_C6F91A: from_stack_1 = clsapremio.UbicPost
  loc_C6F91F: LitI2_Byte 0
  loc_C6F921: LitVar_Missing var_E4
  loc_C6F924: LitI2_Byte 0
  loc_C6F926: FLdZeroAd var_CC
  loc_C6F929: CVarStr var_C8
  loc_C6F92C: PopAdLdVar
  loc_C6F92D: FLdPr Me
  loc_C6F930: MemLdI2 global_88
  loc_C6F933: CI4UI1
  loc_C6F934: FLdPr Me
  loc_C6F937: MemLdStr global_84
  loc_C6F93A: AryLock
  loc_C6F93D: Ary1LdPr
  loc_C6F93E: MemLdRfVar from_stack_1.global_76
  loc_C6F941: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F946: AryUnlock
  loc_C6F949: FFreeVar var_C8 = ""
  loc_C6F950: FLdRfVar var_CC
  loc_C6F953: FLdPr var_134
  loc_C6F956: from_stack_1 = clsapremio.DeloPost
  loc_C6F95B: LitI2_Byte 0
  loc_C6F95D: LitVar_Missing var_E4
  loc_C6F960: LitI2_Byte 0
  loc_C6F962: FLdZeroAd var_CC
  loc_C6F965: CVarStr var_C8
  loc_C6F968: PopAdLdVar
  loc_C6F969: FLdPr Me
  loc_C6F96C: MemLdI2 global_88
  loc_C6F96F: CI4UI1
  loc_C6F970: FLdPr Me
  loc_C6F973: MemLdStr global_84
  loc_C6F976: AryLock
  loc_C6F979: Ary1LdPr
  loc_C6F97A: MemLdRfVar from_stack_1.global_80
  loc_C6F97D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F982: AryUnlock
  loc_C6F985: FFreeVar var_C8 = ""
  loc_C6F98C: FLdRfVar var_CC
  loc_C6F98F: FLdPr var_134
  loc_C6F992: from_stack_1 = clsapremio.CopoPost
  loc_C6F997: LitI2_Byte 0
  loc_C6F999: LitVar_Missing var_E4
  loc_C6F99C: LitI2_Byte 0
  loc_C6F99E: FLdZeroAd var_CC
  loc_C6F9A1: CVarStr var_C8
  loc_C6F9A4: PopAdLdVar
  loc_C6F9A5: FLdPr Me
  loc_C6F9A8: MemLdI2 global_88
  loc_C6F9AB: CI4UI1
  loc_C6F9AC: FLdPr Me
  loc_C6F9AF: MemLdStr global_84
  loc_C6F9B2: AryLock
  loc_C6F9B5: Ary1LdPr
  loc_C6F9B6: MemLdRfVar from_stack_1.global_84
  loc_C6F9B9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6F9BE: AryUnlock
  loc_C6F9C1: FFreeVar var_C8 = ""
  loc_C6F9C8: Branch loc_C6FDBC
  loc_C6F9CB: ILdRf var_138
  loc_C6F9CE: LitI2_Byte 3
  loc_C6F9D0: CStrUI1
  loc_C6F9D2: FStStrNoPop var_CC
  loc_C6F9D5: EqStr
  loc_C6F9D7: FFree1Str var_CC
  loc_C6F9DA: BranchF loc_C6FDBC
  loc_C6F9DD: LitStr "SELECT apremio.NumeApre, DetaReca, DetaPers,"
  loc_C6F9E0: LitStr " DecrPers as DecaPost, NurePers as Numepost , DebrPers as DebaPost, MarePers as ManzPost, UbrePers as UbicPost, DelrPers as DeloPost, CoprPers as CopoPost,"
  loc_C6F9E3: ConcatStr
  loc_C6F9E4: FStStrNoPop var_CC
  loc_C6F9E7: LitStr " DecrPers, NurePers, DebrPers, MarePers, UbrePers, DelrPers, CoprPers,"
  loc_C6F9EA: ConcatStr
  loc_C6F9EB: FStStrNoPop var_D0
  loc_C6F9EE: LitStr " apremio.CodiOfic , DetaOfic, CuenCtct, apremio.TotaApre"
  loc_C6F9F1: ConcatStr
  loc_C6F9F2: FStStrNoPop var_E8
  loc_C6F9F5: LitStr " FROM apremio"
  loc_C6F9F8: ConcatStr
  loc_C6F9F9: FStStrNoPop var_EC
  loc_C6F9FC: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = apremio.CuenCtct"
  loc_C6F9FF: ConcatStr
  loc_C6FA00: FStStrNoPop var_F0
  loc_C6FA03: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_C6FA06: ConcatStr
  loc_C6FA07: FStStrNoPop var_13C
  loc_C6FA0A: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C6FA0D: ConcatStr
  loc_C6FA0E: FStStrNoPop var_140
  loc_C6FA11: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = apremio.CodiOfic"
  loc_C6FA14: ConcatStr
  loc_C6FA15: FStStrNoPop var_144
  loc_C6FA18: LitStr " WHERE NumeApre = "
  loc_C6FA1B: ConcatStr
  loc_C6FA1C: FStStrNoPop var_148
  loc_C6FA1F: FLdPr Me
  loc_C6FA22: MemLdI2 global_88
  loc_C6FA25: CI4UI1
  loc_C6FA26: FLdPr Me
  loc_C6FA29: MemLdStr global_84
  loc_C6FA2C: Ary1LdPr
  loc_C6FA2D: MemLdStr global_0
  loc_C6FA30: ConcatStr
  loc_C6FA31: FStStrNoPop var_14C
  loc_C6FA34: FLdPr var_134
  loc_C6FA37: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C6FA3C: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C6FA53: FLdRfVar var_F4
  loc_C6FA56: FLdPr var_134
  loc_C6FA59: from_stack_1 = clsapremio.RecordCount
  loc_C6FA5E: ILdRf var_F4
  loc_C6FA61: LitI4 0
  loc_C6FA66: EqI4
  loc_C6FA67: BranchF loc_C6FA6C
  loc_C6FA6A: Stop
  loc_C6FA6C: FLdPr var_134
  loc_C6FA6F: Call clsapremio.MoveFirst()
  loc_C6FA74: FLdRfVar var_CC
  loc_C6FA77: FLdPr var_134
  loc_C6FA7A: from_stack_1 = clsapremio.DecaPost
  loc_C6FA7F: LitI2_Byte 0
  loc_C6FA81: LitVar_Missing var_E4
  loc_C6FA84: LitI2_Byte 0
  loc_C6FA86: FLdZeroAd var_CC
  loc_C6FA89: CVarStr var_C8
  loc_C6FA8C: PopAdLdVar
  loc_C6FA8D: FLdPr Me
  loc_C6FA90: MemLdI2 global_88
  loc_C6FA93: CI4UI1
  loc_C6FA94: FLdPr Me
  loc_C6FA97: MemLdStr global_84
  loc_C6FA9A: AryLock
  loc_C6FA9D: Ary1LdPr
  loc_C6FA9E: MemLdRfVar from_stack_1.global_16
  loc_C6FAA1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FAA6: AryUnlock
  loc_C6FAA9: FFreeVar var_C8 = ""
  loc_C6FAB0: FLdRfVar var_CC
  loc_C6FAB3: FLdPr var_134
  loc_C6FAB6: from_stack_1 = clsapremio.NumePost
  loc_C6FABB: LitI2_Byte 0
  loc_C6FABD: LitVar_Missing var_E4
  loc_C6FAC0: LitI2_Byte 0
  loc_C6FAC2: FLdZeroAd var_CC
  loc_C6FAC5: CVarStr var_C8
  loc_C6FAC8: PopAdLdVar
  loc_C6FAC9: FLdPr Me
  loc_C6FACC: MemLdI2 global_88
  loc_C6FACF: CI4UI1
  loc_C6FAD0: FLdPr Me
  loc_C6FAD3: MemLdStr global_84
  loc_C6FAD6: AryLock
  loc_C6FAD9: Ary1LdPr
  loc_C6FADA: MemLdRfVar from_stack_1.global_20
  loc_C6FADD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FAE2: AryUnlock
  loc_C6FAE5: FFreeVar var_C8 = ""
  loc_C6FAEC: FLdRfVar var_CC
  loc_C6FAEF: FLdPr var_134
  loc_C6FAF2: from_stack_1 = clsapremio.UbicPost
  loc_C6FAF7: LitI2_Byte 0
  loc_C6FAF9: LitVar_Missing var_E4
  loc_C6FAFC: LitI2_Byte 0
  loc_C6FAFE: FLdZeroAd var_CC
  loc_C6FB01: CVarStr var_C8
  loc_C6FB04: PopAdLdVar
  loc_C6FB05: FLdPr Me
  loc_C6FB08: MemLdI2 global_88
  loc_C6FB0B: CI4UI1
  loc_C6FB0C: FLdPr Me
  loc_C6FB0F: MemLdStr global_84
  loc_C6FB12: AryLock
  loc_C6FB15: Ary1LdPr
  loc_C6FB16: MemLdRfVar from_stack_1.global_28
  loc_C6FB19: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FB1E: AryUnlock
  loc_C6FB21: FFreeVar var_C8 = ""
  loc_C6FB28: FLdRfVar var_CC
  loc_C6FB2B: FLdPr var_134
  loc_C6FB2E: from_stack_1 = clsapremio.ManzPost
  loc_C6FB33: LitI2_Byte 0
  loc_C6FB35: LitVar_Missing var_E4
  loc_C6FB38: LitI2_Byte 0
  loc_C6FB3A: FLdZeroAd var_CC
  loc_C6FB3D: CVarStr var_C8
  loc_C6FB40: PopAdLdVar
  loc_C6FB41: FLdPr Me
  loc_C6FB44: MemLdI2 global_88
  loc_C6FB47: CI4UI1
  loc_C6FB48: FLdPr Me
  loc_C6FB4B: MemLdStr global_84
  loc_C6FB4E: AryLock
  loc_C6FB51: Ary1LdPr
  loc_C6FB52: MemLdRfVar from_stack_1.global_36
  loc_C6FB55: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FB5A: AryUnlock
  loc_C6FB5D: FFreeVar var_C8 = ""
  loc_C6FB64: FLdRfVar var_CC
  loc_C6FB67: FLdPr var_134
  loc_C6FB6A: from_stack_1 = clsapremio.CasaPost
  loc_C6FB6F: LitI2_Byte 0
  loc_C6FB71: LitVar_Missing var_E4
  loc_C6FB74: LitI2_Byte 0
  loc_C6FB76: FLdZeroAd var_CC
  loc_C6FB79: CVarStr var_C8
  loc_C6FB7C: PopAdLdVar
  loc_C6FB7D: FLdPr Me
  loc_C6FB80: MemLdI2 global_88
  loc_C6FB83: CI4UI1
  loc_C6FB84: FLdPr Me
  loc_C6FB87: MemLdStr global_84
  loc_C6FB8A: AryLock
  loc_C6FB8D: Ary1LdPr
  loc_C6FB8E: MemLdRfVar from_stack_1.global_44
  loc_C6FB91: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FB96: AryUnlock
  loc_C6FB99: FFreeVar var_C8 = ""
  loc_C6FBA0: FLdRfVar var_CC
  loc_C6FBA3: FLdPr var_134
  loc_C6FBA6: from_stack_1 = clsapremio.DeloPost
  loc_C6FBAB: LitI2_Byte 0
  loc_C6FBAD: LitVar_Missing var_E4
  loc_C6FBB0: LitI2_Byte 0
  loc_C6FBB2: FLdZeroAd var_CC
  loc_C6FBB5: CVarStr var_C8
  loc_C6FBB8: PopAdLdVar
  loc_C6FBB9: FLdPr Me
  loc_C6FBBC: MemLdI2 global_88
  loc_C6FBBF: CI4UI1
  loc_C6FBC0: FLdPr Me
  loc_C6FBC3: MemLdStr global_84
  loc_C6FBC6: AryLock
  loc_C6FBC9: Ary1LdPr
  loc_C6FBCA: MemLdRfVar from_stack_1.bGenerado
  loc_C6FBCD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FBD2: AryUnlock
  loc_C6FBD5: FFreeVar var_C8 = ""
  loc_C6FBDC: FLdRfVar var_CC
  loc_C6FBDF: FLdPr var_134
  loc_C6FBE2: from_stack_1 = clsapremio.CopoPost
  loc_C6FBE7: LitI2_Byte 0
  loc_C6FBE9: LitVar_Missing var_E4
  loc_C6FBEC: LitI2_Byte 0
  loc_C6FBEE: FLdZeroAd var_CC
  loc_C6FBF1: CVarStr var_C8
  loc_C6FBF4: PopAdLdVar
  loc_C6FBF5: FLdPr Me
  loc_C6FBF8: MemLdI2 global_88
  loc_C6FBFB: CI4UI1
  loc_C6FBFC: FLdPr Me
  loc_C6FBFF: MemLdStr global_84
  loc_C6FC02: AryLock
  loc_C6FC05: Ary1LdPr
  loc_C6FC06: MemLdRfVar from_stack_1.global_56
  loc_C6FC09: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FC0E: AryUnlock
  loc_C6FC11: FFreeVar var_C8 = ""
  loc_C6FC18: FLdRfVar var_CC
  loc_C6FC1B: FLdPr var_134
  loc_C6FC1E: from_stack_1 = clsapremio.DecaPost
  loc_C6FC23: LitI2_Byte 0
  loc_C6FC25: LitVar_Missing var_E4
  loc_C6FC28: LitI2_Byte 0
  loc_C6FC2A: FLdZeroAd var_CC
  loc_C6FC2D: CVarStr var_C8
  loc_C6FC30: PopAdLdVar
  loc_C6FC31: FLdPr Me
  loc_C6FC34: MemLdI2 global_88
  loc_C6FC37: CI4UI1
  loc_C6FC38: FLdPr Me
  loc_C6FC3B: MemLdStr global_84
  loc_C6FC3E: AryLock
  loc_C6FC41: Ary1LdPr
  loc_C6FC42: MemLdRfVar from_stack_1.global_60
  loc_C6FC45: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FC4A: AryUnlock
  loc_C6FC4D: FFreeVar var_C8 = ""
  loc_C6FC54: FLdRfVar var_CC
  loc_C6FC57: FLdPr var_134
  loc_C6FC5A: from_stack_1 = clsapremio.NumePost
  loc_C6FC5F: LitI2_Byte 0
  loc_C6FC61: LitVar_Missing var_E4
  loc_C6FC64: LitI2_Byte 0
  loc_C6FC66: FLdZeroAd var_CC
  loc_C6FC69: CVarStr var_C8
  loc_C6FC6C: PopAdLdVar
  loc_C6FC6D: FLdPr Me
  loc_C6FC70: MemLdI2 global_88
  loc_C6FC73: CI4UI1
  loc_C6FC74: FLdPr Me
  loc_C6FC77: MemLdStr global_84
  loc_C6FC7A: AryLock
  loc_C6FC7D: Ary1LdPr
  loc_C6FC7E: MemLdRfVar from_stack_1.global_64
  loc_C6FC81: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FC86: AryUnlock
  loc_C6FC89: FFreeVar var_C8 = ""
  loc_C6FC90: FLdRfVar var_CC
  loc_C6FC93: FLdPr var_134
  loc_C6FC96: from_stack_1 = clsapremio.DebaPost
  loc_C6FC9B: LitI2_Byte 0
  loc_C6FC9D: LitVar_Missing var_E4
  loc_C6FCA0: LitI2_Byte 0
  loc_C6FCA2: FLdZeroAd var_CC
  loc_C6FCA5: CVarStr var_C8
  loc_C6FCA8: PopAdLdVar
  loc_C6FCA9: FLdPr Me
  loc_C6FCAC: MemLdI2 global_88
  loc_C6FCAF: CI4UI1
  loc_C6FCB0: FLdPr Me
  loc_C6FCB3: MemLdStr global_84
  loc_C6FCB6: AryLock
  loc_C6FCB9: Ary1LdPr
  loc_C6FCBA: MemLdRfVar from_stack_1.global_68
  loc_C6FCBD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FCC2: AryUnlock
  loc_C6FCC5: FFreeVar var_C8 = ""
  loc_C6FCCC: FLdRfVar var_CC
  loc_C6FCCF: FLdPr var_134
  loc_C6FCD2: from_stack_1 = clsapremio.ManzPost
  loc_C6FCD7: LitI2_Byte 0
  loc_C6FCD9: LitVar_Missing var_E4
  loc_C6FCDC: LitI2_Byte 0
  loc_C6FCDE: FLdZeroAd var_CC
  loc_C6FCE1: CVarStr var_C8
  loc_C6FCE4: PopAdLdVar
  loc_C6FCE5: FLdPr Me
  loc_C6FCE8: MemLdI2 global_88
  loc_C6FCEB: CI4UI1
  loc_C6FCEC: FLdPr Me
  loc_C6FCEF: MemLdStr global_84
  loc_C6FCF2: AryLock
  loc_C6FCF5: Ary1LdPr
  loc_C6FCF6: MemLdRfVar from_stack_1.global_72
  loc_C6FCF9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FCFE: AryUnlock
  loc_C6FD01: FFreeVar var_C8 = ""
  loc_C6FD08: FLdRfVar var_CC
  loc_C6FD0B: FLdPr var_134
  loc_C6FD0E: from_stack_1 = clsapremio.UbicPost
  loc_C6FD13: LitI2_Byte 0
  loc_C6FD15: LitVar_Missing var_E4
  loc_C6FD18: LitI2_Byte 0
  loc_C6FD1A: FLdZeroAd var_CC
  loc_C6FD1D: CVarStr var_C8
  loc_C6FD20: PopAdLdVar
  loc_C6FD21: FLdPr Me
  loc_C6FD24: MemLdI2 global_88
  loc_C6FD27: CI4UI1
  loc_C6FD28: FLdPr Me
  loc_C6FD2B: MemLdStr global_84
  loc_C6FD2E: AryLock
  loc_C6FD31: Ary1LdPr
  loc_C6FD32: MemLdRfVar from_stack_1.global_76
  loc_C6FD35: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FD3A: AryUnlock
  loc_C6FD3D: FFreeVar var_C8 = ""
  loc_C6FD44: FLdRfVar var_CC
  loc_C6FD47: FLdPr var_134
  loc_C6FD4A: from_stack_1 = clsapremio.DeloPost
  loc_C6FD4F: LitI2_Byte 0
  loc_C6FD51: LitVar_Missing var_E4
  loc_C6FD54: LitI2_Byte 0
  loc_C6FD56: FLdZeroAd var_CC
  loc_C6FD59: CVarStr var_C8
  loc_C6FD5C: PopAdLdVar
  loc_C6FD5D: FLdPr Me
  loc_C6FD60: MemLdI2 global_88
  loc_C6FD63: CI4UI1
  loc_C6FD64: FLdPr Me
  loc_C6FD67: MemLdStr global_84
  loc_C6FD6A: AryLock
  loc_C6FD6D: Ary1LdPr
  loc_C6FD6E: MemLdRfVar from_stack_1.global_80
  loc_C6FD71: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FD76: AryUnlock
  loc_C6FD79: FFreeVar var_C8 = ""
  loc_C6FD80: FLdRfVar var_CC
  loc_C6FD83: FLdPr var_134
  loc_C6FD86: from_stack_1 = clsapremio.CopoPost
  loc_C6FD8B: LitI2_Byte 0
  loc_C6FD8D: LitVar_Missing var_E4
  loc_C6FD90: LitI2_Byte 0
  loc_C6FD92: FLdZeroAd var_CC
  loc_C6FD95: CVarStr var_C8
  loc_C6FD98: PopAdLdVar
  loc_C6FD99: FLdPr Me
  loc_C6FD9C: MemLdI2 global_88
  loc_C6FD9F: CI4UI1
  loc_C6FDA0: FLdPr Me
  loc_C6FDA3: MemLdStr global_84
  loc_C6FDA6: AryLock
  loc_C6FDA9: Ary1LdPr
  loc_C6FDAA: MemLdRfVar from_stack_1.global_84
  loc_C6FDAD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FDB2: AryUnlock
  loc_C6FDB5: FFreeVar var_C8 = ""
  loc_C6FDBC: FLdRfVar var_CC
  loc_C6FDBF: FLdPr var_134
  loc_C6FDC2: from_stack_1 = clsapremio.DetaReca
  loc_C6FDC7: LitI2_Byte 0
  loc_C6FDC9: LitVar_Missing var_E4
  loc_C6FDCC: LitI2_Byte 0
  loc_C6FDCE: FLdZeroAd var_CC
  loc_C6FDD1: CVarStr var_C8
  loc_C6FDD4: PopAdLdVar
  loc_C6FDD5: FLdPr Me
  loc_C6FDD8: MemLdI2 global_88
  loc_C6FDDB: CI4UI1
  loc_C6FDDC: FLdPr Me
  loc_C6FDDF: MemLdStr global_84
  loc_C6FDE2: AryLock
  loc_C6FDE5: Ary1LdPr
  loc_C6FDE6: MemLdRfVar from_stack_1.global_8
  loc_C6FDE9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FDEE: AryUnlock
  loc_C6FDF1: FFreeVar var_C8 = ""
  loc_C6FDF8: FLdRfVar var_C8
  loc_C6FDFB: FLdPr var_134
  loc_C6FDFE: from_stack_1 = clsapremio.DetaPers
  loc_C6FE03: LitI2_Byte 0
  loc_C6FE05: LitVar_Missing var_E4
  loc_C6FE08: LitI2_Byte 0
  loc_C6FE0A: FLdVar var_C8
  loc_C6FE0E: FLdPr Me
  loc_C6FE11: MemLdI2 global_88
  loc_C6FE14: CI4UI1
  loc_C6FE15: FLdPr Me
  loc_C6FE18: MemLdStr global_84
  loc_C6FE1B: AryLock
  loc_C6FE1E: Ary1LdPr
  loc_C6FE1F: MemLdRfVar from_stack_1.global_12
  loc_C6FE22: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FE27: AryUnlock
  loc_C6FE2A: FFreeVar var_C8 = ""
  loc_C6FE31: FLdRfVar var_CC
  loc_C6FE34: FLdPr var_134
  loc_C6FE37: from_stack_1 = clsapremio.DetaOfic
  loc_C6FE3C: LitI2_Byte 0
  loc_C6FE3E: LitVar_Missing var_E4
  loc_C6FE41: LitI2_Byte 0
  loc_C6FE43: FLdZeroAd var_CC
  loc_C6FE46: CVarStr var_C8
  loc_C6FE49: PopAdLdVar
  loc_C6FE4A: FLdPr Me
  loc_C6FE4D: MemLdI2 global_88
  loc_C6FE50: CI4UI1
  loc_C6FE51: FLdPr Me
  loc_C6FE54: MemLdStr global_84
  loc_C6FE57: AryLock
  loc_C6FE5A: Ary1LdPr
  loc_C6FE5B: MemLdRfVar from_stack_1.global_92
  loc_C6FE5E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FE63: AryUnlock
  loc_C6FE66: FFreeVar var_C8 = ""
  loc_C6FE6D: Call Proc_234_15_AEE140()
  loc_C6FE72: LitI2_Byte 0
  loc_C6FE74: FLdPr Me
  loc_C6FE77: MemLdI2 global_88
  loc_C6FE7A: CI4UI1
  loc_C6FE7B: FLdPr Me
  loc_C6FE7E: MemLdStr global_120
  loc_C6FE81: AryLock
  loc_C6FE84: Ary1LdPr
  loc_C6FE85: MemLdRfVar from_stack_1.global_12
  loc_C6FE88: CVarRef
  loc_C6FE8D: LitI2_Byte &HFF
  loc_C6FE8F: FLdPr Me
  loc_C6FE92: MemLdI2 global_88
  loc_C6FE95: CI4UI1
  loc_C6FE96: FLdPr Me
  loc_C6FE99: MemLdStr global_84
  loc_C6FE9C: Ary1LdPr
  loc_C6FE9D: MemLdStr global_104
  loc_C6FEA0: CVarStr var_A4
  loc_C6FEA3: PopAdLdVar
  loc_C6FEA4: FLdRfVar var_90
  loc_C6FEA7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C6FEAC: AryUnlock
  loc_C6FEAF: LitI2_Byte 1
  loc_C6FEB1: PopTmpLdAd2 var_102
  loc_C6FEB4: FLdPr var_134
  loc_C6FEB7: Call clsapremio.Move(from_stack_1v)
  loc_C6FEBC: LitNothing
  loc_C6FEBE: FStAd var_134 
  loc_C6FEC2: FLdPr Me
  loc_C6FEC5: MemLdRfVar from_stack_1.global_88
  loc_C6FEC8: NextI2 var_12E, loc_C6F11D
  loc_C6FECD: LitI2_Byte &HFF
  loc_C6FECF: FLdPr Me
  loc_C6FED2: MemStI2 bGenerado
  loc_C6FED5: LitI4 0
  loc_C6FEDA: CI2I4
  loc_C6FEDB: FLdPr Me
  loc_C6FEDE: Me.MousePointer = from_stack_1
  loc_C6FEE3: LitVarStr var_A4, vbNullString
  loc_C6FEE8: PopAdLdVar
  loc_C6FEE9: FLdPr Me
  loc_C6FEEC: VCallAd Control_ID_statusBar
  loc_C6FEEF: FStAdFunc var_B8
  loc_C6FEF2: FLdPr var_B8
  loc_C6FEF5: LateIdSt
  loc_C6FEFA: FFree1Ad var_B8
  loc_C6FEFD: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B09C68
  'Data Table: 486D94
  loc_B09A3C: FLdRfVar var_88
  loc_B09A3F: LitI2_Byte 0
  loc_B09A41: LitI2_Byte &HFF
  loc_B09A43: ImpAdLdI4 MemVar_D93C84
  loc_B09A46: FLdPr Me
  loc_B09A49: MemLdRfVar from_stack_1.global_56
  loc_B09A4C: NewIfNullPr IFileSystem3
  loc_B09A4F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B09A54: ILdRf var_88
  loc_B09A57: FLdPr Me
  loc_B09A5A: MemStVarAd
  loc_B09A5E: FFree1Ad var_88
  loc_B09A61: LitI2_Byte 0
  loc_B09A63: ImpAdStI2 MemVar_D93C8A
  loc_B09A66: Call Proc_234_20_B77EE0()
  loc_B09A6B: LitI2_Byte 1
  loc_B09A6D: FLdPr Me
  loc_B09A70: MemLdRfVar from_stack_1.global_88
  loc_B09A73: FLdPr Me
  loc_B09A76: MemLdStr global_84
  loc_B09A79: LitI2_Byte 1
  loc_B09A7B: FnUBound
  loc_B09A7D: CI2I4
  loc_B09A7E: ForI2 var_8C
  loc_B09A84: FLdPr Me
  loc_B09A87: MemLdI2 global_88
  loc_B09A8A: LitI2_Byte 1
  loc_B09A8C: NeI2
  loc_B09A8D: BranchF loc_B09AA7
  loc_B09A90: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B09A95: PopAdLdVar
  loc_B09A96: FLdPr Me
  loc_B09A99: MemLdRfVar from_stack_1.global_60
  loc_B09A9C: LdPrVar
  loc_B09A9E: LateMemCall
  loc_B09AA4: Branch loc_B09ABB
  loc_B09AA7: LitVarStr var_9C, "<div>&nbsp;</div>"
  loc_B09AAC: PopAdLdVar
  loc_B09AAD: FLdPr Me
  loc_B09AB0: MemLdRfVar from_stack_1.global_60
  loc_B09AB3: LdPrVar
  loc_B09AB5: LateMemCall
  loc_B09ABB: LitI2_Byte 1
  loc_B09ABD: CUI1I2
  loc_B09ABF: FLdPr Me
  loc_B09AC2: MemLdRfVar from_stack_1.global_116
  loc_B09AC5: LitI2_Byte 2
  loc_B09AC7: CUI1I2
  loc_B09AC9: ForUI1 var_B0
  loc_B09ACF: FLdPr Me
  loc_B09AD2: MemLdUI1 global_116
  loc_B09AD6: CI2UI1
  loc_B09AD8: LitI2_Byte 1
  loc_B09ADA: NeI2
  loc_B09ADB: BranchF loc_B09AF2
  loc_B09ADE: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B09AE3: PopAdLdVar
  loc_B09AE4: FLdPr Me
  loc_B09AE7: MemLdRfVar from_stack_1.global_60
  loc_B09AEA: LdPrVar
  loc_B09AEC: LateMemCall
  loc_B09AF2: LitI2_Byte 1
  loc_B09AF4: FLdPr Me
  loc_B09AF7: MemLdRfVar from_stack_1.global_90
  loc_B09AFA: FLdPr Me
  loc_B09AFD: MemLdI2 global_88
  loc_B09B00: CI4UI1
  loc_B09B01: FLdPr Me
  loc_B09B04: MemLdStr global_84
  loc_B09B07: Ary1LdPr
  loc_B09B08: MemLdStr global_108
  loc_B09B0B: LitI2_Byte 1
  loc_B09B0D: FnUBound
  loc_B09B0F: CI2I4
  loc_B09B10: ForI2 var_B4
  loc_B09B16: FLdPr Me
  loc_B09B19: MemLdI2 global_90
  loc_B09B1C: LitI2_Byte 1
  loc_B09B1E: NeI2
  loc_B09B1F: BranchF loc_B09B36
  loc_B09B22: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B09B27: PopAdLdVar
  loc_B09B28: FLdPr Me
  loc_B09B2B: MemLdRfVar from_stack_1.global_60
  loc_B09B2E: LdPrVar
  loc_B09B30: LateMemCall
  loc_B09B36: Call Proc_234_21_AFB328()
  loc_B09B3B: FLdPr Me
  loc_B09B3E: MemLdI2 global_88
  loc_B09B41: CI4UI1
  loc_B09B42: FLdPr Me
  loc_B09B45: MemLdStr global_84
  loc_B09B48: Ary1LdPr
  loc_B09B49: MemLdStr global_88
  loc_B09B4C: FStStrCopy var_B8
  loc_B09B4F: ILdRf var_B8
  loc_B09B52: LitI2_Byte 1
  loc_B09B54: CStrUI1
  loc_B09B56: FStStrNoPop var_BC
  loc_B09B59: EqStr
  loc_B09B5B: FFree1Str var_BC
  loc_B09B5E: BranchF loc_B09B98
  loc_B09B61: Call Proc_234_22_B7DC74()
  loc_B09B66: Call Proc_234_25_BCE2C4()
  loc_B09B6B: FLdPr Me
  loc_B09B6E: MemLdI2 global_90
  loc_B09B71: CI4UI1
  loc_B09B72: FLdPr Me
  loc_B09B75: MemLdI2 global_88
  loc_B09B78: CI4UI1
  loc_B09B79: FLdPr Me
  loc_B09B7C: MemLdStr global_84
  loc_B09B7F: Ary1LdPr
  loc_B09B80: MemLdStr global_108
  loc_B09B83: LitI2_Byte 1
  loc_B09B85: FnUBound
  loc_B09B87: EqI4
  loc_B09B88: BranchF loc_B09B95
  loc_B09B8B: Call Proc_234_26_AF8F80()
  loc_B09B90: Call Proc_234_27_B03868()
  loc_B09B95: Branch loc_B09C27
  loc_B09B98: ILdRf var_B8
  loc_B09B9B: LitI2_Byte 2
  loc_B09B9D: CStrUI1
  loc_B09B9F: FStStrNoPop var_BC
  loc_B09BA2: EqStr
  loc_B09BA4: FFree1Str var_BC
  loc_B09BA7: BranchF loc_B09BE1
  loc_B09BAA: Call Proc_234_23_B7D734()
  loc_B09BAF: Call Proc_234_25_BCE2C4()
  loc_B09BB4: FLdPr Me
  loc_B09BB7: MemLdI2 global_90
  loc_B09BBA: CI4UI1
  loc_B09BBB: FLdPr Me
  loc_B09BBE: MemLdI2 global_88
  loc_B09BC1: CI4UI1
  loc_B09BC2: FLdPr Me
  loc_B09BC5: MemLdStr global_84
  loc_B09BC8: Ary1LdPr
  loc_B09BC9: MemLdStr global_108
  loc_B09BCC: LitI2_Byte 1
  loc_B09BCE: FnUBound
  loc_B09BD0: EqI4
  loc_B09BD1: BranchF loc_B09BDE
  loc_B09BD4: Call Proc_234_26_AF8F80()
  loc_B09BD9: Call Proc_234_27_B03868()
  loc_B09BDE: Branch loc_B09C27
  loc_B09BE1: ILdRf var_B8
  loc_B09BE4: LitI2_Byte 3
  loc_B09BE6: CStrUI1
  loc_B09BE8: FStStrNoPop var_BC
  loc_B09BEB: EqStr
  loc_B09BED: FFree1Str var_BC
  loc_B09BF0: BranchF loc_B09C27
  loc_B09BF3: Call Proc_234_24_B78E38()
  loc_B09BF8: Call Proc_234_25_BCE2C4()
  loc_B09BFD: FLdPr Me
  loc_B09C00: MemLdI2 global_90
  loc_B09C03: CI4UI1
  loc_B09C04: FLdPr Me
  loc_B09C07: MemLdI2 global_88
  loc_B09C0A: CI4UI1
  loc_B09C0B: FLdPr Me
  loc_B09C0E: MemLdStr global_84
  loc_B09C11: Ary1LdPr
  loc_B09C12: MemLdStr global_108
  loc_B09C15: LitI2_Byte 1
  loc_B09C17: FnUBound
  loc_B09C19: EqI4
  loc_B09C1A: BranchF loc_B09C27
  loc_B09C1D: Call Proc_234_26_AF8F80()
  loc_B09C22: Call Proc_234_27_B03868()
  loc_B09C27: FLdPr Me
  loc_B09C2A: MemLdRfVar from_stack_1.global_90
  loc_B09C2D: NextI2 var_B4, loc_B09B16
  loc_B09C32: FLdPr Me
  loc_B09C35: MemLdRfVar from_stack_1.global_116
  loc_B09C38: NextUI1
  loc_B09C3E: FLdPr Me
  loc_B09C41: MemLdRfVar from_stack_1.global_88
  loc_B09C44: NextI2 var_8C, loc_B09A84
  loc_B09C49: Call Proc_234_28_9F2600()
  loc_B09C4E: FLdPr Me
  loc_B09C51: MemLdRfVar from_stack_1.global_60
  loc_B09C54: LdPrVar
  loc_B09C56: LateMemCall
  loc_B09C5C: LitStr vbNullString
  loc_B09C5F: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B09C64: ExitProcHresult
End Sub

Private Function Proc_234_15_AEE140() 'AEE140
  'Data Table: 486D94
  loc_AEDFAC: FLdPr Me
  loc_AEDFAF: MemLdRfVar from_stack_1.global_80
  loc_AEDFB2: NewIfNullAd
  loc_AEDFB5: FStAd var_88 
  loc_AEDFB9: LitStr "tmp_apremio"
  loc_AEDFBC: FLdPr Me
  loc_AEDFBF: MemLdI2 global_88
  loc_AEDFC2: CI4UI1
  loc_AEDFC3: FLdPr Me
  loc_AEDFC6: MemLdStr global_84
  loc_AEDFC9: Ary1LdPr
  loc_AEDFCA: MemLdStr global_4
  loc_AEDFCD: FLdPr Me
  loc_AEDFD0: MemLdI2 global_88
  loc_AEDFD3: CI4UI1
  loc_AEDFD4: FLdPr Me
  loc_AEDFD7: MemLdStr global_84
  loc_AEDFDA: Ary1LdPr
  loc_AEDFDB: MemLdStr global_96
  loc_AEDFDE: FLdPr Me
  loc_AEDFE1: MemLdI2 global_88
  loc_AEDFE4: CI4UI1
  loc_AEDFE5: FLdPr Me
  loc_AEDFE8: MemLdStr global_84
  loc_AEDFEB: Ary1LdPr
  loc_AEDFEC: MemLdStr global_88
  loc_AEDFEF: CUI1Str
  loc_AEDFF1: FLdPr var_88
  loc_AEDFF4: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEDFF9: LitStr "SELECT tmp_apremio.CodiConc, DetaConc, PeriCtct, BimeCtct, SaldCtct, RecaCtct, SaldCtct+RecaCtct as TotaCtct"
  loc_AEDFFC: LitStr " FROM tmp_apremio LEFT JOIN concepto ON concepto.PeriInfo = tmp_apremio.PeriCtct AND concepto.CodiConc = tmp_apremio.CodiConc"
  loc_AEDFFF: ConcatStr
  loc_AEE000: FStStrNoPop var_8C
  loc_AEE003: LitStr " WHERE SaldCtct <> 0 AND NumeApre = "
  loc_AEE006: ConcatStr
  loc_AEE007: FStStrNoPop var_90
  loc_AEE00A: FLdPr Me
  loc_AEE00D: MemLdI2 global_88
  loc_AEE010: CI4UI1
  loc_AEE011: FLdPr Me
  loc_AEE014: MemLdStr global_84
  loc_AEE017: Ary1LdPr
  loc_AEE018: MemLdStr global_0
  loc_AEE01B: ConcatStr
  loc_AEE01C: FStStrNoPop var_94
  loc_AEE01F: LitStr " ORDER BY CodiConc, PeriCtct, BimeCtct"
  loc_AEE022: ConcatStr
  loc_AEE023: FStStrNoPop var_98
  loc_AEE026: FLdPr var_88
  loc_AEE029: Call clsctacte.RedefineRS(from_stack_1v)
  loc_AEE02E: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_AEE039: FLdRfVar var_9C
  loc_AEE03C: FLdPr var_88
  loc_AEE03F: from_stack_1 = clsctacte.RecordCount
  loc_AEE044: ILdRf var_9C
  loc_AEE047: LitI4 1
  loc_AEE04C: LtI4
  loc_AEE04D: BranchF loc_AEE076
  loc_AEE050: LitI4 0
  loc_AEE055: LitI4 0
  loc_AEE05A: FLdPr Me
  loc_AEE05D: MemLdI2 global_88
  loc_AEE060: CI4UI1
  loc_AEE061: FLdPr Me
  loc_AEE064: MemLdStr global_84
  loc_AEE067: Ary1LdPr
  loc_AEE068: MemLdRfVar from_stack_1.global_108
  loc_AEE06B: RedimPreserve
  loc_AEE075: ExitProcHresult
  loc_AEE076: FLdPr var_88
  loc_AEE079: Call clsctacte.MoveFirst()
  loc_AEE07E: LitI2_Byte 0
  loc_AEE080: FLdPr Me
  loc_AEE083: MemStI2 global_90
  loc_AEE086: Call Proc_234_16_AC4474()
  loc_AEE08B: FLdRfVar var_9E
  loc_AEE08E: FLdPr var_88
  loc_AEE091: from_stack_1 = clsctacte.EOF
  loc_AEE096: FLdI2 var_9E
  loc_AEE099: NotI4
  loc_AEE09A: BranchF loc_AEE139
  loc_AEE09D: FLdRfVar var_8C
  loc_AEE0A0: FLdPr var_88
  loc_AEE0A3: from_stack_1 = clsctacte.CodiConc
  loc_AEE0A8: ILdRf var_8C
  loc_AEE0AB: FLdPr Me
  loc_AEE0AE: MemLdI2 global_108
  loc_AEE0B1: CI4UI1
  loc_AEE0B2: FLdPr Me
  loc_AEE0B5: MemLdI2 global_90
  loc_AEE0B8: CI4UI1
  loc_AEE0B9: FLdPr Me
  loc_AEE0BC: MemLdI2 global_88
  loc_AEE0BF: CI4UI1
  loc_AEE0C0: FLdPr Me
  loc_AEE0C3: MemLdStr global_84
  loc_AEE0C6: Ary1LdPr
  loc_AEE0C7: MemLdStr global_108
  loc_AEE0CA: Ary1LdPr
  loc_AEE0CB: MemLdStr global_0
  loc_AEE0CE: Ary1LdPr
  loc_AEE0CF: MemLdStr global_0
  loc_AEE0D2: EqStr
  loc_AEE0D4: FFree1Str var_8C
  loc_AEE0D7: BranchF loc_AEE131
  loc_AEE0DA: FLdRfVar var_9E
  loc_AEE0DD: FLdPr var_88
  loc_AEE0E0: from_stack_1 = clsctacte.PeriCtct
  loc_AEE0E5: FLdI2 var_9E
  loc_AEE0E8: CR8I2
  loc_AEE0E9: FLdPr Me
  loc_AEE0EC: MemLdI2 global_110
  loc_AEE0EF: CI4UI1
  loc_AEE0F0: FLdPr Me
  loc_AEE0F3: MemLdI2 global_108
  loc_AEE0F6: CI4UI1
  loc_AEE0F7: FLdPr Me
  loc_AEE0FA: MemLdI2 global_90
  loc_AEE0FD: CI4UI1
  loc_AEE0FE: FLdPr Me
  loc_AEE101: MemLdI2 global_88
  loc_AEE104: CI4UI1
  loc_AEE105: FLdPr Me
  loc_AEE108: MemLdStr global_84
  loc_AEE10B: Ary1LdPr
  loc_AEE10C: MemLdStr global_108
  loc_AEE10F: Ary1LdPr
  loc_AEE110: MemLdStr global_0
  loc_AEE113: Ary1LdPr
  loc_AEE114: MemLdStr global_8
  loc_AEE117: Ary1LdPr
  loc_AEE118: MemLdStr global_0
  loc_AEE11B: CR8Str
  loc_AEE11D: EqR4
  loc_AEE11E: BranchF loc_AEE129
  loc_AEE121: Call Proc_234_19_AFF1A0()
  loc_AEE126: Branch loc_AEE12E
  loc_AEE129: Call Proc_234_18_AB476C()
  loc_AEE12E: Branch loc_AEE136
  loc_AEE131: Call Proc_234_17_AD7848()
  loc_AEE136: Branch loc_AEE08B
  loc_AEE139: LitNothing
  loc_AEE13B: FStAd var_88 
  loc_AEE13F: ExitProcHresult
End Function

Private Function Proc_234_16_AC4474() 'AC4474
  'Data Table: 486D94
  loc_AC436C: LitI2_Byte 0
  loc_AC436E: FLdPr Me
  loc_AC4371: MemStI2 global_114
  loc_AC4374: LitI2_Byte 0
  loc_AC4376: FLdPr Me
  loc_AC4379: MemStI2 global_108
  loc_AC437C: FLdPr Me
  loc_AC437F: MemLdI2 global_90
  loc_AC4382: LitI2_Byte 0
  loc_AC4384: GtI2
  loc_AC4385: BranchF loc_AC4436
  loc_AC4388: FLdPr Me
  loc_AC438B: MemLdI2 global_90
  loc_AC438E: CI4UI1
  loc_AC438F: FLdPr Me
  loc_AC4392: MemLdI2 global_88
  loc_AC4395: CI4UI1
  loc_AC4396: FLdPr Me
  loc_AC4399: MemLdStr global_84
  loc_AC439C: AryLock
  loc_AC439F: Ary1LdPr
  loc_AC43A0: MemLdStr global_108
  loc_AC43A3: AryLock
  loc_AC43A6: Ary1LdPr
  loc_AC43A7: MemLdRfVar from_stack_1.global_4
  loc_AC43AA: FStR4 var_90
  loc_AC43AD: LitI2_Byte 0
  loc_AC43AF: LitVar_Missing var_C0
  loc_AC43B2: LitI2_Byte 0
  loc_AC43B4: FLdPr Me
  loc_AC43B7: MemLdI2 global_88
  loc_AC43BA: CI4UI1
  loc_AC43BB: FLdPr Me
  loc_AC43BE: MemLdStr global_120
  loc_AC43C1: Ary1LdPr
  loc_AC43C2: MemLdStr global_4
  loc_AC43C5: CVarStr var_A0
  loc_AC43C8: PopAdLdVar
  loc_AC43C9: FMemLdRf unk_486D05
  loc_AC43CE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC43D3: FFree1Var var_C0 = ""
  loc_AC43D6: LitI2_Byte 0
  loc_AC43D8: LitVar_Missing var_C0
  loc_AC43DB: LitI2_Byte 0
  loc_AC43DD: FLdPr Me
  loc_AC43E0: MemLdI2 global_88
  loc_AC43E3: CI4UI1
  loc_AC43E4: FLdPr Me
  loc_AC43E7: MemLdStr global_120
  loc_AC43EA: Ary1LdPr
  loc_AC43EB: MemLdStr global_8
  loc_AC43EE: CVarStr var_A0
  loc_AC43F1: PopAdLdVar
  loc_AC43F2: FMemLdRf unk_486D05
  loc_AC43F7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC43FC: FFree1Var var_C0 = ""
  loc_AC43FF: LitI2_Byte 0
  loc_AC4401: LitVar_Missing var_C0
  loc_AC4404: LitI2_Byte 0
  loc_AC4406: FLdPr Me
  loc_AC4409: MemLdI2 global_88
  loc_AC440C: CI4UI1
  loc_AC440D: FLdPr Me
  loc_AC4410: MemLdStr global_120
  loc_AC4413: Ary1LdPr
  loc_AC4414: MemLdStr global_12
  loc_AC4417: CVarStr var_A0
  loc_AC441A: PopAdLdVar
  loc_AC441B: FMemLdRf unk_486D05
  loc_AC4420: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC4425: FFree1Var var_C0 = ""
  loc_AC4428: LitI4 0
  loc_AC442D: FStR4 var_90
  loc_AC4430: AryUnlock
  loc_AC4433: AryUnlock
  loc_AC4436: FLdPr Me
  loc_AC4439: MemLdI2 global_90
  loc_AC443C: LitI2_Byte 1
  loc_AC443E: AddI2
  loc_AC443F: FLdPr Me
  loc_AC4442: MemStI2 global_90
  loc_AC4445: LitI4 0
  loc_AC444A: FLdPr Me
  loc_AC444D: MemLdI2 global_90
  loc_AC4450: CI4UI1
  loc_AC4451: FLdPr Me
  loc_AC4454: MemLdI2 global_88
  loc_AC4457: CI4UI1
  loc_AC4458: FLdPr Me
  loc_AC445B: MemLdStr global_84
  loc_AC445E: Ary1LdPr
  loc_AC445F: MemLdRfVar from_stack_1.global_108
  loc_AC4462: RedimPreserve
  loc_AC446C: Call Proc_234_17_AD7848()
  loc_AC4471: ExitProcHresult
End Function

Private Function Proc_234_17_AD7848() 'AD7848
  'Data Table: 486D94
  loc_AD7710: FLdPr Me
  loc_AD7713: MemLdI2 global_114
  loc_AD7716: LitI2_Byte &H23
  loc_AD7718: GeI2
  loc_AD7719: BranchF loc_AD7722
  loc_AD771C: from_stack_1v = Proc_234_16_AC4474()
  loc_AD7721: ExitProcHresult
  loc_AD7722: FLdPr Me
  loc_AD7725: MemLdI2 global_108
  loc_AD7728: LitI2_Byte 1
  loc_AD772A: AddI2
  loc_AD772B: FLdPr Me
  loc_AD772E: MemStI2 global_108
  loc_AD7731: LitI2_Byte 0
  loc_AD7733: FLdPr Me
  loc_AD7736: MemStI2 global_110
  loc_AD7739: FLdPr Me
  loc_AD773C: MemLdI2 global_114
  loc_AD773F: LitI2_Byte 1
  loc_AD7741: AddI2
  loc_AD7742: FLdPr Me
  loc_AD7745: MemStI2 global_114
  loc_AD7748: LitI4 0
  loc_AD774D: FLdPr Me
  loc_AD7750: MemLdI2 global_108
  loc_AD7753: CI4UI1
  loc_AD7754: FLdPr Me
  loc_AD7757: MemLdI2 global_90
  loc_AD775A: CI4UI1
  loc_AD775B: FLdPr Me
  loc_AD775E: MemLdI2 global_88
  loc_AD7761: CI4UI1
  loc_AD7762: FLdPr Me
  loc_AD7765: MemLdStr global_84
  loc_AD7768: Ary1LdPr
  loc_AD7769: MemLdStr global_108
  loc_AD776C: Ary1LdPr
  loc_AD776D: MemLdRfVar from_stack_1.global_0
  loc_AD7770: RedimPreserve
  loc_AD777A: FLdRfVar var_88
  loc_AD777D: FLdPr Me
  loc_AD7780: MemLdRfVar from_stack_1.global_80
  loc_AD7783: NewIfNullPr clsctacte
  loc_AD7786: from_stack_1 = clsctacte.CodiConc
  loc_AD778B: LitI2_Byte 0
  loc_AD778D: LitVar_Missing var_C4
  loc_AD7790: LitI2_Byte 0
  loc_AD7792: FLdZeroAd var_88
  loc_AD7795: CVarStr var_A4
  loc_AD7798: PopAdLdVar
  loc_AD7799: FLdPr Me
  loc_AD779C: MemLdI2 global_108
  loc_AD779F: CI4UI1
  loc_AD77A0: FLdPr Me
  loc_AD77A3: MemLdI2 global_90
  loc_AD77A6: CI4UI1
  loc_AD77A7: FLdPr Me
  loc_AD77AA: MemLdI2 global_88
  loc_AD77AD: CI4UI1
  loc_AD77AE: FLdPr Me
  loc_AD77B1: MemLdStr global_84
  loc_AD77B4: AryLock
  loc_AD77B7: Ary1LdPr
  loc_AD77B8: MemLdStr global_108
  loc_AD77BB: AryLock
  loc_AD77BE: Ary1LdPr
  loc_AD77BF: MemLdStr global_0
  loc_AD77C2: AryLock
  loc_AD77C5: Ary1LdPr
  loc_AD77C6: MemLdRfVar from_stack_1.global_0
  loc_AD77C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD77CE: AryUnlock
  loc_AD77D1: AryUnlock
  loc_AD77D4: AryUnlock
  loc_AD77D7: FFreeVar var_A4 = ""
  loc_AD77DE: FLdRfVar var_A4
  loc_AD77E1: FLdPr Me
  loc_AD77E4: MemLdRfVar from_stack_1.global_80
  loc_AD77E7: NewIfNullPr clsctacte
  loc_AD77EA: from_stack_1 = clsctacte.DetaConc
  loc_AD77EF: LitI2_Byte 0
  loc_AD77F1: LitVar_Missing var_C4
  loc_AD77F4: LitI2_Byte 0
  loc_AD77F6: FLdVar var_A4
  loc_AD77FA: FLdPr Me
  loc_AD77FD: MemLdI2 global_108
  loc_AD7800: CI4UI1
  loc_AD7801: FLdPr Me
  loc_AD7804: MemLdI2 global_90
  loc_AD7807: CI4UI1
  loc_AD7808: FLdPr Me
  loc_AD780B: MemLdI2 global_88
  loc_AD780E: CI4UI1
  loc_AD780F: FLdPr Me
  loc_AD7812: MemLdStr global_84
  loc_AD7815: AryLock
  loc_AD7818: Ary1LdPr
  loc_AD7819: MemLdStr global_108
  loc_AD781C: AryLock
  loc_AD781F: Ary1LdPr
  loc_AD7820: MemLdStr global_0
  loc_AD7823: AryLock
  loc_AD7826: Ary1LdPr
  loc_AD7827: MemLdRfVar from_stack_1.global_4
  loc_AD782A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD782F: AryUnlock
  loc_AD7832: AryUnlock
  loc_AD7835: AryUnlock
  loc_AD7838: FFreeVar var_A4 = ""
  loc_AD783F: Call Proc_234_18_AB476C()
  loc_AD7844: ExitProcHresult
End Function

Private Function Proc_234_18_AB476C() 'AB476C
  'Data Table: 486D94
  loc_AB468C: FLdPr Me
  loc_AB468F: MemLdI2 global_114
  loc_AB4692: LitI2_Byte &H24
  loc_AB4694: GeI2
  loc_AB4695: BranchF loc_AB469E
  loc_AB4698: from_stack_1v = Proc_234_16_AC4474()
  loc_AB469D: ExitProcHresult
  loc_AB469E: FLdPr Me
  loc_AB46A1: MemLdI2 global_110
  loc_AB46A4: LitI2_Byte 1
  loc_AB46A6: AddI2
  loc_AB46A7: FLdPr Me
  loc_AB46AA: MemStI2 global_110
  loc_AB46AD: LitI2_Byte 0
  loc_AB46AF: FLdPr Me
  loc_AB46B2: MemStI2 global_112
  loc_AB46B5: LitI4 0
  loc_AB46BA: FLdPr Me
  loc_AB46BD: MemLdI2 global_110
  loc_AB46C0: CI4UI1
  loc_AB46C1: FLdPr Me
  loc_AB46C4: MemLdI2 global_108
  loc_AB46C7: CI4UI1
  loc_AB46C8: FLdPr Me
  loc_AB46CB: MemLdI2 global_90
  loc_AB46CE: CI4UI1
  loc_AB46CF: FLdPr Me
  loc_AB46D2: MemLdI2 global_88
  loc_AB46D5: CI4UI1
  loc_AB46D6: FLdPr Me
  loc_AB46D9: MemLdStr global_84
  loc_AB46DC: Ary1LdPr
  loc_AB46DD: MemLdStr global_108
  loc_AB46E0: Ary1LdPr
  loc_AB46E1: MemLdStr global_0
  loc_AB46E4: Ary1LdPr
  loc_AB46E5: MemLdRfVar from_stack_1.global_8
  loc_AB46E8: RedimPreserve
  loc_AB46F2: FLdRfVar var_86
  loc_AB46F5: FLdPr Me
  loc_AB46F8: MemLdRfVar from_stack_1.global_80
  loc_AB46FB: NewIfNullPr clsctacte
  loc_AB46FE: from_stack_1 = clsctacte.PeriCtct
  loc_AB4703: LitI2_Byte 0
  loc_AB4705: LitVar_Missing var_C8
  loc_AB4708: LitI2_Byte 0
  loc_AB470A: FLdI2 var_86
  loc_AB470D: CVarI2 var_A8
  loc_AB4710: PopAdLdVar
  loc_AB4711: FLdPr Me
  loc_AB4714: MemLdI2 global_110
  loc_AB4717: CI4UI1
  loc_AB4718: FLdPr Me
  loc_AB471B: MemLdI2 global_108
  loc_AB471E: CI4UI1
  loc_AB471F: FLdPr Me
  loc_AB4722: MemLdI2 global_90
  loc_AB4725: CI4UI1
  loc_AB4726: FLdPr Me
  loc_AB4729: MemLdI2 global_88
  loc_AB472C: CI4UI1
  loc_AB472D: FLdPr Me
  loc_AB4730: MemLdStr global_84
  loc_AB4733: AryLock
  loc_AB4736: Ary1LdPr
  loc_AB4737: MemLdStr global_108
  loc_AB473A: AryLock
  loc_AB473D: Ary1LdPr
  loc_AB473E: MemLdStr global_0
  loc_AB4741: AryLock
  loc_AB4744: Ary1LdPr
  loc_AB4745: MemLdStr global_8
  loc_AB4748: AryLock
  loc_AB474B: Ary1LdPr
  loc_AB474C: MemLdRfVar from_stack_1.global_0
  loc_AB474F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AB4754: AryUnlock
  loc_AB4757: AryUnlock
  loc_AB475A: AryUnlock
  loc_AB475D: AryUnlock
  loc_AB4760: FFree1Var var_C8 = ""
  loc_AB4763: Call Proc_234_19_AFF1A0()
  loc_AB4768: ExitProcHresult
End Function

Private Function Proc_234_19_AFF1A0() 'AFF1A0
  'Data Table: 486D94
  loc_AFEFBC: FLdPr Me
  loc_AFEFBF: MemLdI2 global_114
  loc_AFEFC2: LitI2_Byte &H24
  loc_AFEFC4: GeI2
  loc_AFEFC5: BranchF loc_AFEFCE
  loc_AFEFC8: from_stack_1v = Proc_234_16_AC4474()
  loc_AFEFCD: ExitProcHresult
  loc_AFEFCE: FLdPr Me
  loc_AFEFD1: MemLdI2 global_112
  loc_AFEFD4: LitI2_Byte 1
  loc_AFEFD6: AddI2
  loc_AFEFD7: FLdPr Me
  loc_AFEFDA: MemStI2 global_112
  loc_AFEFDD: FLdPr Me
  loc_AFEFE0: MemLdI2 global_114
  loc_AFEFE3: LitI2_Byte 1
  loc_AFEFE5: AddI2
  loc_AFEFE6: FLdPr Me
  loc_AFEFE9: MemStI2 global_114
  loc_AFEFEC: LitI4 0
  loc_AFEFF1: FLdPr Me
  loc_AFEFF4: MemLdI2 global_112
  loc_AFEFF7: CI4UI1
  loc_AFEFF8: FLdPr Me
  loc_AFEFFB: MemLdI2 global_110
  loc_AFEFFE: CI4UI1
  loc_AFEFFF: FLdPr Me
  loc_AFF002: MemLdI2 global_108
  loc_AFF005: CI4UI1
  loc_AFF006: FLdPr Me
  loc_AFF009: MemLdI2 global_90
  loc_AFF00C: CI4UI1
  loc_AFF00D: FLdPr Me
  loc_AFF010: MemLdI2 global_88
  loc_AFF013: CI4UI1
  loc_AFF014: FLdPr Me
  loc_AFF017: MemLdStr global_84
  loc_AFF01A: Ary1LdPr
  loc_AFF01B: MemLdStr global_108
  loc_AFF01E: Ary1LdPr
  loc_AFF01F: MemLdStr global_0
  loc_AFF022: Ary1LdPr
  loc_AFF023: MemLdStr global_8
  loc_AFF026: Ary1LdPr
  loc_AFF027: MemLdRfVar from_stack_1.global_4
  loc_AFF02A: RedimPreserve
  loc_AFF034: FLdPr Me
  loc_AFF037: MemLdI2 global_112
  loc_AFF03A: CI4UI1
  loc_AFF03B: FLdPr Me
  loc_AFF03E: MemLdI2 global_110
  loc_AFF041: CI4UI1
  loc_AFF042: FLdPr Me
  loc_AFF045: MemLdI2 global_108
  loc_AFF048: CI4UI1
  loc_AFF049: FLdPr Me
  loc_AFF04C: MemLdI2 global_90
  loc_AFF04F: CI4UI1
  loc_AFF050: FLdPr Me
  loc_AFF053: MemLdI2 global_88
  loc_AFF056: CI4UI1
  loc_AFF057: FLdPr Me
  loc_AFF05A: MemLdStr global_84
  loc_AFF05D: AryLock
  loc_AFF060: Ary1LdPr
  loc_AFF061: MemLdStr global_108
  loc_AFF064: AryLock
  loc_AFF067: Ary1LdPr
  loc_AFF068: MemLdStr global_0
  loc_AFF06B: AryLock
  loc_AFF06E: Ary1LdPr
  loc_AFF06F: MemLdStr global_8
  loc_AFF072: AryLock
  loc_AFF075: Ary1LdPr
  loc_AFF076: MemLdStr global_4
  loc_AFF079: AryLock
  loc_AFF07C: Ary1LdRf
  loc_AFF07D: FStR4 var_9C
  loc_AFF080: FLdRfVar var_9E
  loc_AFF083: FLdPr Me
  loc_AFF086: MemLdRfVar from_stack_1.global_80
  loc_AFF089: NewIfNullPr clsctacte
  loc_AFF08C: from_stack_1 = clsctacte.BimeCtct
  loc_AFF091: LitI2_Byte 0
  loc_AFF093: LitVar_Missing var_D0
  loc_AFF096: LitI2_Byte 0
  loc_AFF098: FLdI2 var_9E
  loc_AFF09B: CVarI2 var_B0
  loc_AFF09E: PopAdLdVar
  loc_AFF09F: FMemLdRf unk_486CF9
  loc_AFF0A4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AFF0A9: FFree1Var var_D0 = ""
  loc_AFF0AC: FLdRfVar var_D8
  loc_AFF0AF: FLdPr Me
  loc_AFF0B2: MemLdRfVar from_stack_1.global_80
  loc_AFF0B5: NewIfNullPr clsctacte
  loc_AFF0B8: from_stack_1 = clsctacte.SaldCtct
  loc_AFF0BD: LitI2_Byte 0
  loc_AFF0BF: FLdPr Me
  loc_AFF0C2: MemLdI2 global_88
  loc_AFF0C5: CI4UI1
  loc_AFF0C6: FLdPr Me
  loc_AFF0C9: MemLdStr global_120
  loc_AFF0CC: AryLock
  loc_AFF0CF: Ary1LdPr
  loc_AFF0D0: MemLdRfVar from_stack_1.global_4
  loc_AFF0D3: CVarRef
  loc_AFF0D8: LitI2_Byte &HFF
  loc_AFF0DA: FLdFPR8 var_D8
  loc_AFF0DD: CVarR8
  loc_AFF0E1: PopAdLdVar
  loc_AFF0E2: FMemLdRf unk_486CF9
  loc_AFF0E7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AFF0EC: AryUnlock
  loc_AFF0EF: FLdRfVar var_D8
  loc_AFF0F2: FLdPr Me
  loc_AFF0F5: MemLdRfVar from_stack_1.global_80
  loc_AFF0F8: NewIfNullPr clsctacte
  loc_AFF0FB: from_stack_1 = clsctacte.RecaCtct
  loc_AFF100: LitI2_Byte 0
  loc_AFF102: FLdPr Me
  loc_AFF105: MemLdI2 global_88
  loc_AFF108: CI4UI1
  loc_AFF109: FLdPr Me
  loc_AFF10C: MemLdStr global_120
  loc_AFF10F: AryLock
  loc_AFF112: Ary1LdPr
  loc_AFF113: MemLdRfVar from_stack_1.global_8
  loc_AFF116: CVarRef
  loc_AFF11B: LitI2_Byte &HFF
  loc_AFF11D: FLdFPR8 var_D8
  loc_AFF120: CVarR8
  loc_AFF124: PopAdLdVar
  loc_AFF125: FMemLdRf unk_486CF9
  loc_AFF12A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AFF12F: AryUnlock
  loc_AFF132: FLdRfVar var_D8
  loc_AFF135: FLdPr Me
  loc_AFF138: MemLdRfVar from_stack_1.global_80
  loc_AFF13B: NewIfNullPr clsctacte
  loc_AFF13E: from_stack_1 = clsctacte.TotaCtct
  loc_AFF143: LitI2_Byte 0
  loc_AFF145: FLdPr Me
  loc_AFF148: MemLdI2 global_88
  loc_AFF14B: CI4UI1
  loc_AFF14C: FLdPr Me
  loc_AFF14F: MemLdStr global_120
  loc_AFF152: AryLock
  loc_AFF155: Ary1LdPr
  loc_AFF156: MemLdRfVar from_stack_1.global_12
  loc_AFF159: CVarRef
  loc_AFF15E: LitI2_Byte &HFF
  loc_AFF160: FLdFPR8 var_D8
  loc_AFF163: CVarR8
  loc_AFF167: PopAdLdVar
  loc_AFF168: FMemLdRf unk_486CF9
  loc_AFF16D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AFF172: AryUnlock
  loc_AFF175: LitI4 0
  loc_AFF17A: FStR4 var_9C
  loc_AFF17D: AryUnlock
  loc_AFF180: AryUnlock
  loc_AFF183: AryUnlock
  loc_AFF186: AryUnlock
  loc_AFF189: AryUnlock
  loc_AFF18C: LitI2_Byte 1
  loc_AFF18E: PopTmpLdAd2 var_9E
  loc_AFF191: FLdPr Me
  loc_AFF194: MemLdRfVar from_stack_1.global_80
  loc_AFF197: NewIfNullPr clsctacte
  loc_AFF19A: Call clsctacte.Move(from_stack_1v)
  loc_AFF19F: ExitProcHresult
End Function

Private Function Proc_234_20_B77EE0() 'B77EE0
  'Data Table: 486D94
  loc_B779F4: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_B779F9: PopAdLdVar
  loc_B779FA: FLdPr Me
  loc_B779FD: MemLdRfVar from_stack_1.global_60
  loc_B77A00: LdPrVar
  loc_B77A02: LateMemCall
  loc_B77A08: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_B77A0D: PopAdLdVar
  loc_B77A0E: FLdPr Me
  loc_B77A11: MemLdRfVar from_stack_1.global_60
  loc_B77A14: LdPrVar
  loc_B77A16: LateMemCall
  loc_B77A1C: LitVarStr var_94, "<head>"
  loc_B77A21: PopAdLdVar
  loc_B77A22: FLdPr Me
  loc_B77A25: MemLdRfVar from_stack_1.global_60
  loc_B77A28: LdPrVar
  loc_B77A2A: LateMemCall
  loc_B77A30: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B77A35: PopAdLdVar
  loc_B77A36: FLdPr Me
  loc_B77A39: MemLdRfVar from_stack_1.global_60
  loc_B77A3C: LdPrVar
  loc_B77A3E: LateMemCall
  loc_B77A44: LitStr "<title>"
  loc_B77A47: FLdRfVar var_A8
  loc_B77A4A: FLdPr Me
  loc_B77A4D:  = Me.Caption
  loc_B77A52: ILdRf var_A8
  loc_B77A55: ConcatStr
  loc_B77A56: FStStrNoPop var_AC
  loc_B77A59: LitStr "</title>"
  loc_B77A5C: ConcatStr
  loc_B77A5D: CVarStr var_BC
  loc_B77A60: PopAdLdVar
  loc_B77A61: FLdPr Me
  loc_B77A64: MemLdRfVar from_stack_1.global_60
  loc_B77A67: LdPrVar
  loc_B77A69: LateMemCall
  loc_B77A6F: FFreeStr var_A8 = ""
  loc_B77A76: FFree1Var var_BC = ""
  loc_B77A79: LitVarStr var_94, "<style type=""text/css"">"
  loc_B77A7E: PopAdLdVar
  loc_B77A7F: FLdPr Me
  loc_B77A82: MemLdRfVar from_stack_1.global_60
  loc_B77A85: LdPrVar
  loc_B77A87: LateMemCall
  loc_B77A8D: LitVarStr var_94, "<!--"
  loc_B77A92: PopAdLdVar
  loc_B77A93: FLdPr Me
  loc_B77A96: MemLdRfVar from_stack_1.global_60
  loc_B77A99: LdPrVar
  loc_B77A9B: LateMemCall
  loc_B77AA1: LitVarStr var_94, ".Encabezado {"
  loc_B77AA6: PopAdLdVar
  loc_B77AA7: FLdPr Me
  loc_B77AAA: MemLdRfVar from_stack_1.global_60
  loc_B77AAD: LdPrVar
  loc_B77AAF: LateMemCall
  loc_B77AB5: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B77ABA: PopAdLdVar
  loc_B77ABB: FLdPr Me
  loc_B77ABE: MemLdRfVar from_stack_1.global_60
  loc_B77AC1: LdPrVar
  loc_B77AC3: LateMemCall
  loc_B77AC9: LitVarStr var_94, " font-size: 10px;"
  loc_B77ACE: PopAdLdVar
  loc_B77ACF: FLdPr Me
  loc_B77AD2: MemLdRfVar from_stack_1.global_60
  loc_B77AD5: LdPrVar
  loc_B77AD7: LateMemCall
  loc_B77ADD: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_B77AE2: PopAdLdVar
  loc_B77AE3: FLdPr Me
  loc_B77AE6: MemLdRfVar from_stack_1.global_60
  loc_B77AE9: LdPrVar
  loc_B77AEB: LateMemCall
  loc_B77AF1: LitVarStr var_94, "}"
  loc_B77AF6: PopAdLdVar
  loc_B77AF7: FLdPr Me
  loc_B77AFA: MemLdRfVar from_stack_1.global_60
  loc_B77AFD: LdPrVar
  loc_B77AFF: LateMemCall
  loc_B77B05: LitVarStr var_94, ".Normal {"
  loc_B77B0A: PopAdLdVar
  loc_B77B0B: FLdPr Me
  loc_B77B0E: MemLdRfVar from_stack_1.global_60
  loc_B77B11: LdPrVar
  loc_B77B13: LateMemCall
  loc_B77B19: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B77B1E: PopAdLdVar
  loc_B77B1F: FLdPr Me
  loc_B77B22: MemLdRfVar from_stack_1.global_60
  loc_B77B25: LdPrVar
  loc_B77B27: LateMemCall
  loc_B77B2D: LitVarStr var_94, " font-size: 11px;"
  loc_B77B32: PopAdLdVar
  loc_B77B33: FLdPr Me
  loc_B77B36: MemLdRfVar from_stack_1.global_60
  loc_B77B39: LdPrVar
  loc_B77B3B: LateMemCall
  loc_B77B41: LitVarStr var_94, " vertical-align: top;"
  loc_B77B46: PopAdLdVar
  loc_B77B47: FLdPr Me
  loc_B77B4A: MemLdRfVar from_stack_1.global_60
  loc_B77B4D: LdPrVar
  loc_B77B4F: LateMemCall
  loc_B77B55: LitVarStr var_94, "}"
  loc_B77B5A: PopAdLdVar
  loc_B77B5B: FLdPr Me
  loc_B77B5E: MemLdRfVar from_stack_1.global_60
  loc_B77B61: LdPrVar
  loc_B77B63: LateMemCall
  loc_B77B69: LitVarStr var_94, ".NormalBloqueFin {"
  loc_B77B6E: PopAdLdVar
  loc_B77B6F: FLdPr Me
  loc_B77B72: MemLdRfVar from_stack_1.global_60
  loc_B77B75: LdPrVar
  loc_B77B77: LateMemCall
  loc_B77B7D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B77B82: PopAdLdVar
  loc_B77B83: FLdPr Me
  loc_B77B86: MemLdRfVar from_stack_1.global_60
  loc_B77B89: LdPrVar
  loc_B77B8B: LateMemCall
  loc_B77B91: LitVarStr var_94, " font-size: 12px;"
  loc_B77B96: PopAdLdVar
  loc_B77B97: FLdPr Me
  loc_B77B9A: MemLdRfVar from_stack_1.global_60
  loc_B77B9D: LdPrVar
  loc_B77B9F: LateMemCall
  loc_B77BA5: LitVarStr var_94, " vertical-align: top;"
  loc_B77BAA: PopAdLdVar
  loc_B77BAB: FLdPr Me
  loc_B77BAE: MemLdRfVar from_stack_1.global_60
  loc_B77BB1: LdPrVar
  loc_B77BB3: LateMemCall
  loc_B77BB9: LitVarStr var_94, "}"
  loc_B77BBE: PopAdLdVar
  loc_B77BBF: FLdPr Me
  loc_B77BC2: MemLdRfVar from_stack_1.global_60
  loc_B77BC5: LdPrVar
  loc_B77BC7: LateMemCall
  loc_B77BCD: LitVarStr var_94, ".NombreMunicipio {"
  loc_B77BD2: PopAdLdVar
  loc_B77BD3: FLdPr Me
  loc_B77BD6: MemLdRfVar from_stack_1.global_60
  loc_B77BD9: LdPrVar
  loc_B77BDB: LateMemCall
  loc_B77BE1: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B77BE6: PopAdLdVar
  loc_B77BE7: FLdPr Me
  loc_B77BEA: MemLdRfVar from_stack_1.global_60
  loc_B77BED: LdPrVar
  loc_B77BEF: LateMemCall
  loc_B77BF5: LitVarStr var_94, " font-size: 14px;"
  loc_B77BFA: PopAdLdVar
  loc_B77BFB: FLdPr Me
  loc_B77BFE: MemLdRfVar from_stack_1.global_60
  loc_B77C01: LdPrVar
  loc_B77C03: LateMemCall
  loc_B77C09: LitVarStr var_94, " font-weight: bold;"
  loc_B77C0E: PopAdLdVar
  loc_B77C0F: FLdPr Me
  loc_B77C12: MemLdRfVar from_stack_1.global_60
  loc_B77C15: LdPrVar
  loc_B77C17: LateMemCall
  loc_B77C1D: LitVarStr var_94, "}"
  loc_B77C22: PopAdLdVar
  loc_B77C23: FLdPr Me
  loc_B77C26: MemLdRfVar from_stack_1.global_60
  loc_B77C29: LdPrVar
  loc_B77C2B: LateMemCall
  loc_B77C31: LitVarStr var_94, ".NombreMunicipioBloqueFin {"
  loc_B77C36: PopAdLdVar
  loc_B77C37: FLdPr Me
  loc_B77C3A: MemLdRfVar from_stack_1.global_60
  loc_B77C3D: LdPrVar
  loc_B77C3F: LateMemCall
  loc_B77C45: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B77C4A: PopAdLdVar
  loc_B77C4B: FLdPr Me
  loc_B77C4E: MemLdRfVar from_stack_1.global_60
  loc_B77C51: LdPrVar
  loc_B77C53: LateMemCall
  loc_B77C59: LitVarStr var_94, " font-size: 10px;"
  loc_B77C5E: PopAdLdVar
  loc_B77C5F: FLdPr Me
  loc_B77C62: MemLdRfVar from_stack_1.global_60
  loc_B77C65: LdPrVar
  loc_B77C67: LateMemCall
  loc_B77C6D: LitVarStr var_94, "}"
  loc_B77C72: PopAdLdVar
  loc_B77C73: FLdPr Me
  loc_B77C76: MemLdRfVar from_stack_1.global_60
  loc_B77C79: LdPrVar
  loc_B77C7B: LateMemCall
  loc_B77C81: LitVarStr var_94, ".DatosMunicipio {"
  loc_B77C86: PopAdLdVar
  loc_B77C87: FLdPr Me
  loc_B77C8A: MemLdRfVar from_stack_1.global_60
  loc_B77C8D: LdPrVar
  loc_B77C8F: LateMemCall
  loc_B77C95: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B77C9A: PopAdLdVar
  loc_B77C9B: FLdPr Me
  loc_B77C9E: MemLdRfVar from_stack_1.global_60
  loc_B77CA1: LdPrVar
  loc_B77CA3: LateMemCall
  loc_B77CA9: LitVarStr var_94, " font-size: 12px;"
  loc_B77CAE: PopAdLdVar
  loc_B77CAF: FLdPr Me
  loc_B77CB2: MemLdRfVar from_stack_1.global_60
  loc_B77CB5: LdPrVar
  loc_B77CB7: LateMemCall
  loc_B77CBD: LitVarStr var_94, "}"
  loc_B77CC2: PopAdLdVar
  loc_B77CC3: FLdPr Me
  loc_B77CC6: MemLdRfVar from_stack_1.global_60
  loc_B77CC9: LdPrVar
  loc_B77CCB: LateMemCall
  loc_B77CD1: LitVarStr var_94, ".Totales {"
  loc_B77CD6: PopAdLdVar
  loc_B77CD7: FLdPr Me
  loc_B77CDA: MemLdRfVar from_stack_1.global_60
  loc_B77CDD: LdPrVar
  loc_B77CDF: LateMemCall
  loc_B77CE5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B77CEA: PopAdLdVar
  loc_B77CEB: FLdPr Me
  loc_B77CEE: MemLdRfVar from_stack_1.global_60
  loc_B77CF1: LdPrVar
  loc_B77CF3: LateMemCall
  loc_B77CF9: LitVarStr var_94, " font-size: 13px;"
  loc_B77CFE: PopAdLdVar
  loc_B77CFF: FLdPr Me
  loc_B77D02: MemLdRfVar from_stack_1.global_60
  loc_B77D05: LdPrVar
  loc_B77D07: LateMemCall
  loc_B77D0D: LitVarStr var_94, " vertical-align: top;"
  loc_B77D12: PopAdLdVar
  loc_B77D13: FLdPr Me
  loc_B77D16: MemLdRfVar from_stack_1.global_60
  loc_B77D19: LdPrVar
  loc_B77D1B: LateMemCall
  loc_B77D21: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B77D26: PopAdLdVar
  loc_B77D27: FLdPr Me
  loc_B77D2A: MemLdRfVar from_stack_1.global_60
  loc_B77D2D: LdPrVar
  loc_B77D2F: LateMemCall
  loc_B77D35: LitVarStr var_94, " font-weight: bold;"
  loc_B77D3A: PopAdLdVar
  loc_B77D3B: FLdPr Me
  loc_B77D3E: MemLdRfVar from_stack_1.global_60
  loc_B77D41: LdPrVar
  loc_B77D43: LateMemCall
  loc_B77D49: LitVarStr var_94, "}"
  loc_B77D4E: PopAdLdVar
  loc_B77D4F: FLdPr Me
  loc_B77D52: MemLdRfVar from_stack_1.global_60
  loc_B77D55: LdPrVar
  loc_B77D57: LateMemCall
  loc_B77D5D: LitVarStr var_94, ".Total {"
  loc_B77D62: PopAdLdVar
  loc_B77D63: FLdPr Me
  loc_B77D66: MemLdRfVar from_stack_1.global_60
  loc_B77D69: LdPrVar
  loc_B77D6B: LateMemCall
  loc_B77D71: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B77D76: PopAdLdVar
  loc_B77D77: FLdPr Me
  loc_B77D7A: MemLdRfVar from_stack_1.global_60
  loc_B77D7D: LdPrVar
  loc_B77D7F: LateMemCall
  loc_B77D85: LitVarStr var_94, " font-size: 14px;"
  loc_B77D8A: PopAdLdVar
  loc_B77D8B: FLdPr Me
  loc_B77D8E: MemLdRfVar from_stack_1.global_60
  loc_B77D91: LdPrVar
  loc_B77D93: LateMemCall
  loc_B77D99: LitVarStr var_94, " vertical-align: top;"
  loc_B77D9E: PopAdLdVar
  loc_B77D9F: FLdPr Me
  loc_B77DA2: MemLdRfVar from_stack_1.global_60
  loc_B77DA5: LdPrVar
  loc_B77DA7: LateMemCall
  loc_B77DAD: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B77DB2: PopAdLdVar
  loc_B77DB3: FLdPr Me
  loc_B77DB6: MemLdRfVar from_stack_1.global_60
  loc_B77DB9: LdPrVar
  loc_B77DBB: LateMemCall
  loc_B77DC1: LitVarStr var_94, " font-weight: bold;"
  loc_B77DC6: PopAdLdVar
  loc_B77DC7: FLdPr Me
  loc_B77DCA: MemLdRfVar from_stack_1.global_60
  loc_B77DCD: LdPrVar
  loc_B77DCF: LateMemCall
  loc_B77DD5: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B77DDA: PopAdLdVar
  loc_B77DDB: FLdPr Me
  loc_B77DDE: MemLdRfVar from_stack_1.global_60
  loc_B77DE1: LdPrVar
  loc_B77DE3: LateMemCall
  loc_B77DE9: LitVarStr var_94, "}"
  loc_B77DEE: PopAdLdVar
  loc_B77DEF: FLdPr Me
  loc_B77DF2: MemLdRfVar from_stack_1.global_60
  loc_B77DF5: LdPrVar
  loc_B77DF7: LateMemCall
  loc_B77DFD: LitVarStr var_94, ".Vencimiento {"
  loc_B77E02: PopAdLdVar
  loc_B77E03: FLdPr Me
  loc_B77E06: MemLdRfVar from_stack_1.global_60
  loc_B77E09: LdPrVar
  loc_B77E0B: LateMemCall
  loc_B77E11: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B77E16: PopAdLdVar
  loc_B77E17: FLdPr Me
  loc_B77E1A: MemLdRfVar from_stack_1.global_60
  loc_B77E1D: LdPrVar
  loc_B77E1F: LateMemCall
  loc_B77E25: LitVarStr var_94, " font-size: 12px;"
  loc_B77E2A: PopAdLdVar
  loc_B77E2B: FLdPr Me
  loc_B77E2E: MemLdRfVar from_stack_1.global_60
  loc_B77E31: LdPrVar
  loc_B77E33: LateMemCall
  loc_B77E39: LitVarStr var_94, " vertical-align: top;"
  loc_B77E3E: PopAdLdVar
  loc_B77E3F: FLdPr Me
  loc_B77E42: MemLdRfVar from_stack_1.global_60
  loc_B77E45: LdPrVar
  loc_B77E47: LateMemCall
  loc_B77E4D: LitVarStr var_94, " font-weight: bold;"
  loc_B77E52: PopAdLdVar
  loc_B77E53: FLdPr Me
  loc_B77E56: MemLdRfVar from_stack_1.global_60
  loc_B77E59: LdPrVar
  loc_B77E5B: LateMemCall
  loc_B77E61: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B77E66: PopAdLdVar
  loc_B77E67: FLdPr Me
  loc_B77E6A: MemLdRfVar from_stack_1.global_60
  loc_B77E6D: LdPrVar
  loc_B77E6F: LateMemCall
  loc_B77E75: LitVarStr var_94, "}"
  loc_B77E7A: PopAdLdVar
  loc_B77E7B: FLdPr Me
  loc_B77E7E: MemLdRfVar from_stack_1.global_60
  loc_B77E81: LdPrVar
  loc_B77E83: LateMemCall
  loc_B77E89: LitVarStr var_94, "-->"
  loc_B77E8E: PopAdLdVar
  loc_B77E8F: FLdPr Me
  loc_B77E92: MemLdRfVar from_stack_1.global_60
  loc_B77E95: LdPrVar
  loc_B77E97: LateMemCall
  loc_B77E9D: LitVarStr var_94, "</style>"
  loc_B77EA2: PopAdLdVar
  loc_B77EA3: FLdPr Me
  loc_B77EA6: MemLdRfVar from_stack_1.global_60
  loc_B77EA9: LdPrVar
  loc_B77EAB: LateMemCall
  loc_B77EB1: LitI4 0
  loc_B77EB6: FStStrCopy var_AC
  loc_B77EB9: FLdRfVar var_AC
  loc_B77EBC: LitI4 0
  loc_B77EC1: FStStrCopy var_A8
  loc_B77EC4: FLdRfVar var_A8
  loc_B77EC7: LitI2_Byte 0
  loc_B77EC9: PopTmpLdAd2 var_BE
  loc_B77ECC: FLdPr Me
  loc_B77ECF: MemLdRfVar from_stack_1.global_60
  loc_B77ED2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B77ED7: FFreeStr var_A8 = ""
  loc_B77EDE: ExitProcHresult
  loc_B77EDF: NotI4
End Function

Private Function Proc_234_21_AFB328() 'AFB328
  'Data Table: 486D94
  loc_AFB170: LitVarStr var_94, "<table height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_AFB175: PopAdLdVar
  loc_AFB176: FLdPr Me
  loc_AFB179: MemLdRfVar from_stack_1.global_60
  loc_AFB17C: LdPrVar
  loc_AFB17E: LateMemCall
  loc_AFB184: LitVarStr var_94, "  <tr valign=""top""><td>"
  loc_AFB189: PopAdLdVar
  loc_AFB18A: FLdPr Me
  loc_AFB18D: MemLdRfVar from_stack_1.global_60
  loc_AFB190: LdPrVar
  loc_AFB192: LateMemCall
  loc_AFB198: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_AFB19D: PopAdLdVar
  loc_AFB19E: FLdPr Me
  loc_AFB1A1: MemLdRfVar from_stack_1.global_60
  loc_AFB1A4: LdPrVar
  loc_AFB1A6: LateMemCall
  loc_AFB1AC: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AFB1B1: PopAdLdVar
  loc_AFB1B2: FLdPr Me
  loc_AFB1B5: MemLdRfVar from_stack_1.global_60
  loc_AFB1B8: LdPrVar
  loc_AFB1BA: LateMemCall
  loc_AFB1C0: LitStr "    <td height=""63"" colspan=""4"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_AFB1C3: LitI2_Byte &H5F
  loc_AFB1C5: CStrUI1
  loc_AFB1C7: FStStrNoPop var_A8
  loc_AFB1CA: ConcatStr
  loc_AFB1CB: FStStrNoPop var_AC
  loc_AFB1CE: LitStr """ height="""
  loc_AFB1D1: ConcatStr
  loc_AFB1D2: FStStrNoPop var_B0
  loc_AFB1D5: LitI2_Byte &H3C
  loc_AFB1D7: CStrUI1
  loc_AFB1D9: FStStrNoPop var_B4
  loc_AFB1DC: ConcatStr
  loc_AFB1DD: FStStrNoPop var_B8
  loc_AFB1E0: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_AFB1E3: ConcatStr
  loc_AFB1E4: FStStrNoPop var_BC
  loc_AFB1E7: LitI2_Byte &H3C
  loc_AFB1E9: CStrUI1
  loc_AFB1EB: FStStrNoPop var_C0
  loc_AFB1EE: ConcatStr
  loc_AFB1EF: FStStrNoPop var_C4
  loc_AFB1F2: LitStr """ height="""
  loc_AFB1F5: ConcatStr
  loc_AFB1F6: FStStrNoPop var_C8
  loc_AFB1F9: LitI2_Byte &H3C
  loc_AFB1FB: CStrUI1
  loc_AFB1FD: FStStrNoPop var_CC
  loc_AFB200: ConcatStr
  loc_AFB201: FStStrNoPop var_D0
  loc_AFB204: LitStr """ align=""right"" /><span class=""NombreMunicipio"">"
  loc_AFB207: ConcatStr
  loc_AFB208: FStStrNoPop var_D4
  loc_AFB20B: LitStr "Municipalidad de Guaymallén"
  loc_AFB20E: ConcatStr
  loc_AFB20F: FStStrNoPop var_D8
  loc_AFB212: LitStr "</span><br />"
  loc_AFB215: ConcatStr
  loc_AFB216: CVarStr var_E8
  loc_AFB219: PopAdLdVar
  loc_AFB21A: FLdPr Me
  loc_AFB21D: MemLdRfVar from_stack_1.global_60
  loc_AFB220: LdPrVar
  loc_AFB222: LateMemCall
  loc_AFB228: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AFB245: FFree1Var var_E8 = ""
  loc_AFB248: LitStr "    "
  loc_AFB24B: LitStr "Dirección de Rentas"
  loc_AFB24E: ConcatStr
  loc_AFB24F: FStStrNoPop var_A8
  loc_AFB252: LitStr "<br>"
  loc_AFB255: ConcatStr
  loc_AFB256: CVarStr var_E8
  loc_AFB259: PopAdLdVar
  loc_AFB25A: FLdPr Me
  loc_AFB25D: MemLdRfVar from_stack_1.global_60
  loc_AFB260: LdPrVar
  loc_AFB262: LateMemCall
  loc_AFB268: FFree1Str var_A8
  loc_AFB26B: FFree1Var var_E8 = ""
  loc_AFB26E: LitStr "    "
  loc_AFB271: LitStr "Libertad 720 - Villa Nueva"
  loc_AFB274: ConcatStr
  loc_AFB275: FStStrNoPop var_A8
  loc_AFB278: LitStr "<br>"
  loc_AFB27B: ConcatStr
  loc_AFB27C: CVarStr var_E8
  loc_AFB27F: PopAdLdVar
  loc_AFB280: FLdPr Me
  loc_AFB283: MemLdRfVar from_stack_1.global_60
  loc_AFB286: LdPrVar
  loc_AFB288: LateMemCall
  loc_AFB28E: FFree1Str var_A8
  loc_AFB291: FFree1Var var_E8 = ""
  loc_AFB294: LitStr "    "
  loc_AFB297: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AFB29A: ConcatStr
  loc_AFB29B: FStStrNoPop var_A8
  loc_AFB29E: LitStr "<br>"
  loc_AFB2A1: ConcatStr
  loc_AFB2A2: CVarStr var_E8
  loc_AFB2A5: PopAdLdVar
  loc_AFB2A6: FLdPr Me
  loc_AFB2A9: MemLdRfVar from_stack_1.global_60
  loc_AFB2AC: LdPrVar
  loc_AFB2AE: LateMemCall
  loc_AFB2B4: FFree1Str var_A8
  loc_AFB2B7: FFree1Var var_E8 = ""
  loc_AFB2BA: LitStr "    "
  loc_AFB2BD: LitStr "C.U.I.T.: "
  loc_AFB2C0: ConcatStr
  loc_AFB2C1: FStStrNoPop var_A8
  loc_AFB2C4: LitStr "30-99914707-7"
  loc_AFB2C7: ConcatStr
  loc_AFB2C8: FStStrNoPop var_AC
  loc_AFB2CB: LitStr "<br>"
  loc_AFB2CE: ConcatStr
  loc_AFB2CF: CVarStr var_E8
  loc_AFB2D2: PopAdLdVar
  loc_AFB2D3: FLdPr Me
  loc_AFB2D6: MemLdRfVar from_stack_1.global_60
  loc_AFB2D9: LdPrVar
  loc_AFB2DB: LateMemCall
  loc_AFB2E1: FFreeStr var_A8 = ""
  loc_AFB2E8: FFree1Var var_E8 = ""
  loc_AFB2EB: LitStr " <div align=""right""><em>"
  loc_AFB2EE: LitStr "&nbsp;"
  loc_AFB2F1: ConcatStr
  loc_AFB2F2: FStStrNoPop var_A8
  loc_AFB2F5: LitStr "</em></div></td>"
  loc_AFB2F8: ConcatStr
  loc_AFB2F9: CVarStr var_E8
  loc_AFB2FC: PopAdLdVar
  loc_AFB2FD: FLdPr Me
  loc_AFB300: MemLdRfVar from_stack_1.global_60
  loc_AFB303: LdPrVar
  loc_AFB305: LateMemCall
  loc_AFB30B: FFree1Str var_A8
  loc_AFB30E: FFree1Var var_E8 = ""
  loc_AFB311: LitVarStr var_94, "  </tr>"
  loc_AFB316: PopAdLdVar
  loc_AFB317: FLdPr Me
  loc_AFB31A: MemLdRfVar from_stack_1.global_60
  loc_AFB31D: LdPrVar
  loc_AFB31F: LateMemCall
  loc_AFB325: ExitProcHresult
End Function

Private Function Proc_234_22_B7DC74() 'B7DC74
  'Data Table: 486D94
  loc_B7D798: FLdPr Me
  loc_B7D79B: MemLdI2 global_88
  loc_B7D79E: CI4UI1
  loc_B7D79F: FLdPr Me
  loc_B7D7A2: MemLdStr global_84
  loc_B7D7A5: AryLock
  loc_B7D7A8: Ary1LdRf
  loc_B7D7A9: FStR4 var_8C
  loc_B7D7AC: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7D7B1: PopAdLdVar
  loc_B7D7B2: FLdPr Me
  loc_B7D7B5: MemLdRfVar from_stack_1.global_60
  loc_B7D7B8: LdPrVar
  loc_B7D7BA: LateMemCall
  loc_B7D7C0: LitVarStr var_9C, "    <td width=""19" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B7D7C5: PopAdLdVar
  loc_B7D7C6: FLdPr Me
  loc_B7D7C9: MemLdRfVar from_stack_1.global_60
  loc_B7D7CC: LdPrVar
  loc_B7D7CE: LateMemCall
  loc_B7D7D4: LitStr "    <td width=""81" & Chr(37) & """ colspan=""2""><p><strong>BOLETA DE DEUDA N&ordm; "
  loc_B7D7D7: FMemLdR4 var_8C(0)
  loc_B7D7DC: ConcatStr
  loc_B7D7DD: FStStrNoPop var_B0
  loc_B7D7E0: LitStr "<br>"
  loc_B7D7E3: ConcatStr
  loc_B7D7E4: CVarStr var_C0
  loc_B7D7E7: PopAdLdVar
  loc_B7D7E8: FLdPr Me
  loc_B7D7EB: MemLdRfVar from_stack_1.global_60
  loc_B7D7EE: LdPrVar
  loc_B7D7F0: LateMemCall
  loc_B7D7F6: FFree1Str var_B0
  loc_B7D7F9: FFree1Var var_C0 = ""
  loc_B7D7FC: LitI2_Byte 0
  loc_B7D7FE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7D803: FStFPR8 var_10C
  loc_B7D806: LitStr "      "
  loc_B7D809: LitStr "Guaymallén"
  loc_B7D80C: ConcatStr
  loc_B7D80D: FStStrNoPop var_B0
  loc_B7D810: LitStr ", "
  loc_B7D813: ConcatStr
  loc_B7D814: FStStrNoPop var_C4
  loc_B7D817: LitStr "Mendoza"
  loc_B7D81A: ConcatStr
  loc_B7D81B: FStStrNoPop var_C8
  loc_B7D81E: LitStr ", "
  loc_B7D821: ConcatStr
  loc_B7D822: FStStrNoPop var_DC
  loc_B7D825: LitI4 1
  loc_B7D82A: LitI4 1
  loc_B7D82F: LitVarStr var_AC, "dddd d \de mmmm \de yyyy"
  loc_B7D834: FStVarCopyObj var_D8
  loc_B7D837: FLdRfVar var_D8
  loc_B7D83A: FLdFPR8 var_10C
  loc_B7D83D: CVarDate var_C0
  loc_B7D841: ImpAdCallI2 Format$(, )
  loc_B7D846: FStStrNoPop var_E0
  loc_B7D849: ConcatStr
  loc_B7D84A: FStStrNoPop var_E4
  loc_B7D84D: LitStr "<br>"
  loc_B7D850: ConcatStr
  loc_B7D851: CVarStr var_F4
  loc_B7D854: PopAdLdVar
  loc_B7D855: FLdPr Me
  loc_B7D858: MemLdRfVar from_stack_1.global_60
  loc_B7D85B: LdPrVar
  loc_B7D85D: LateMemCall
  loc_B7D863: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = ""
  loc_B7D872: FFreeVar var_C0 = "": var_D8 = ""
  loc_B7D87B: LitVarStr var_AC, "      "
  loc_B7D880: FLdPr Me
  loc_B7D883: MemLdRfVar from_stack_1.global_116
  loc_B7D886: CDargRef
  loc_B7D88A: FLdPr Me
  loc_B7D88D: MemLdRfVar from_stack_1.global_92
  loc_B7D890: VarIndexLdVar
  loc_B7D896: ConcatVar var_D8
  loc_B7D89A: LitVarStr var_104, "<br>"
  loc_B7D89F: ConcatVar var_F4
  loc_B7D8A3: PopAdLdVar
  loc_B7D8A4: FLdPr Me
  loc_B7D8A7: MemLdRfVar from_stack_1.global_60
  loc_B7D8AA: LdPrVar
  loc_B7D8AC: LateMemCall
  loc_B7D8B2: FFreeVar var_C0 = "": var_D8 = ""
  loc_B7D8BB: LitVarStr var_9C, "      </td>"
  loc_B7D8C0: PopAdLdVar
  loc_B7D8C1: FLdPr Me
  loc_B7D8C4: MemLdRfVar from_stack_1.global_60
  loc_B7D8C7: LdPrVar
  loc_B7D8C9: LateMemCall
  loc_B7D8CF: LitVarStr var_9C, "  </tr>"
  loc_B7D8D4: PopAdLdVar
  loc_B7D8D5: FLdPr Me
  loc_B7D8D8: MemLdRfVar from_stack_1.global_60
  loc_B7D8DB: LdPrVar
  loc_B7D8DD: LateMemCall
  loc_B7D8E3: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7D8E8: PopAdLdVar
  loc_B7D8E9: FLdPr Me
  loc_B7D8EC: MemLdRfVar from_stack_1.global_60
  loc_B7D8EF: LdPrVar
  loc_B7D8F1: LateMemCall
  loc_B7D8F7: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B7D8FC: PopAdLdVar
  loc_B7D8FD: FLdPr Me
  loc_B7D900: MemLdRfVar from_stack_1.global_60
  loc_B7D903: LdPrVar
  loc_B7D905: LateMemCall
  loc_B7D90B: LitVarStr var_9C, "    <td><table width=""100" & Chr(37) & """ border=""0"">"
  loc_B7D910: PopAdLdVar
  loc_B7D911: FLdPr Me
  loc_B7D914: MemLdRfVar from_stack_1.global_60
  loc_B7D917: LdPrVar
  loc_B7D919: LateMemCall
  loc_B7D91F: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7D924: PopAdLdVar
  loc_B7D925: FLdPr Me
  loc_B7D928: MemLdRfVar from_stack_1.global_60
  loc_B7D92B: LdPrVar
  loc_B7D92D: LateMemCall
  loc_B7D933: LitVarStr var_9C, "          <td width=""24" & Chr(37) & """><strong>APELLIDO Y NOMBRE:</strong></td>"
  loc_B7D938: PopAdLdVar
  loc_B7D939: FLdPr Me
  loc_B7D93C: MemLdRfVar from_stack_1.global_60
  loc_B7D93F: LdPrVar
  loc_B7D941: LateMemCall
  loc_B7D947: LitStr "          <td width=""76" & Chr(37) & """><strong>"
  loc_B7D94A: FMemLdR4 var_8C(12)
  loc_B7D94F: ConcatStr
  loc_B7D950: FStStrNoPop var_B0
  loc_B7D953: LitStr "</strong></td>"
  loc_B7D956: ConcatStr
  loc_B7D957: CVarStr var_C0
  loc_B7D95A: PopAdLdVar
  loc_B7D95B: FLdPr Me
  loc_B7D95E: MemLdRfVar from_stack_1.global_60
  loc_B7D961: LdPrVar
  loc_B7D963: LateMemCall
  loc_B7D969: FFree1Str var_B0
  loc_B7D96C: FFree1Var var_C0 = ""
  loc_B7D96F: LitVarStr var_9C, "        </tr>"
  loc_B7D974: PopAdLdVar
  loc_B7D975: FLdPr Me
  loc_B7D978: MemLdRfVar from_stack_1.global_60
  loc_B7D97B: LdPrVar
  loc_B7D97D: LateMemCall
  loc_B7D983: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7D988: PopAdLdVar
  loc_B7D989: FLdPr Me
  loc_B7D98C: MemLdRfVar from_stack_1.global_60
  loc_B7D98F: LdPrVar
  loc_B7D991: LateMemCall
  loc_B7D997: LitVarStr var_9C, "          <td><strong>DOMICILIO FISCAL:</strong></td>"
  loc_B7D99C: PopAdLdVar
  loc_B7D99D: FLdPr Me
  loc_B7D9A0: MemLdRfVar from_stack_1.global_60
  loc_B7D9A3: LdPrVar
  loc_B7D9A5: LateMemCall
  loc_B7D9AB: LitStr "          <td><strong>"
  loc_B7D9AE: FMemLdR4 var_8C(16)
  loc_B7D9B3: ConcatStr
  loc_B7D9B4: FStStrNoPop var_B0
  loc_B7D9B7: LitStr " N&ordm; "
  loc_B7D9BA: ConcatStr
  loc_B7D9BB: FStStrNoPop var_C4
  loc_B7D9BE: FMemLdR4 var_8C(20)
  loc_B7D9C3: ConcatStr
  loc_B7D9C4: FStStrNoPop var_C8
  loc_B7D9C7: LitStr " "
  loc_B7D9CA: ConcatStr
  loc_B7D9CB: FStStrNoPop var_DC
  loc_B7D9CE: FMemLdR4 var_8C(28)
  loc_B7D9D3: ConcatStr
  loc_B7D9D4: FStStrNoPop var_E0
  loc_B7D9D7: LitStr " "
  loc_B7D9DA: ConcatStr
  loc_B7D9DB: FStStrNoPop var_E4
  loc_B7D9DE: FMemLdR4 var_8C(36)
  loc_B7D9E3: ConcatStr
  loc_B7D9E4: FStStrNoPop var_120
  loc_B7D9E7: LitStr " "
  loc_B7D9EA: ConcatStr
  loc_B7D9EB: FStStrNoPop var_124
  loc_B7D9EE: FMemLdR4 var_8C(44)
  loc_B7D9F3: ConcatStr
  loc_B7D9F4: FStStrNoPop var_128
  loc_B7D9F7: LitStr "<br>"
  loc_B7D9FA: ConcatStr
  loc_B7D9FB: CVarStr var_C0
  loc_B7D9FE: PopAdLdVar
  loc_B7D9FF: FLdPr Me
  loc_B7DA02: MemLdRfVar from_stack_1.global_60
  loc_B7DA05: LdPrVar
  loc_B7DA07: LateMemCall
  loc_B7DA0D: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B7DA22: FFree1Var var_C0 = ""
  loc_B7DA25: LitStr "            "
  loc_B7DA28: FMemLdR4 var_8C(52)
  loc_B7DA2D: ConcatStr
  loc_B7DA2E: FStStrNoPop var_B0
  loc_B7DA31: LitStr " CP: "
  loc_B7DA34: ConcatStr
  loc_B7DA35: FStStrNoPop var_C4
  loc_B7DA38: FMemLdR4 var_8C(56)
  loc_B7DA3D: ConcatStr
  loc_B7DA3E: FStStrNoPop var_C8
  loc_B7DA41: LitStr " </strong></td>"
  loc_B7DA44: ConcatStr
  loc_B7DA45: CVarStr var_C0
  loc_B7DA48: PopAdLdVar
  loc_B7DA49: FLdPr Me
  loc_B7DA4C: MemLdRfVar from_stack_1.global_60
  loc_B7DA4F: LdPrVar
  loc_B7DA51: LateMemCall
  loc_B7DA57: FFreeStr var_B0 = "": var_C4 = ""
  loc_B7DA60: FFree1Var var_C0 = ""
  loc_B7DA63: LitVarStr var_9C, "        </tr>"
  loc_B7DA68: PopAdLdVar
  loc_B7DA69: FLdPr Me
  loc_B7DA6C: MemLdRfVar from_stack_1.global_60
  loc_B7DA6F: LdPrVar
  loc_B7DA71: LateMemCall
  loc_B7DA77: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7DA7C: PopAdLdVar
  loc_B7DA7D: FLdPr Me
  loc_B7DA80: MemLdRfVar from_stack_1.global_60
  loc_B7DA83: LdPrVar
  loc_B7DA85: LateMemCall
  loc_B7DA8B: LitVarStr var_9C, "          <td><strong>DOMICILIO ESPECIAL: </strong></td>"
  loc_B7DA90: PopAdLdVar
  loc_B7DA91: FLdPr Me
  loc_B7DA94: MemLdRfVar from_stack_1.global_60
  loc_B7DA97: LdPrVar
  loc_B7DA99: LateMemCall
  loc_B7DA9F: LitStr "          <td><strong>"
  loc_B7DAA2: FMemLdR4 var_8C(60)
  loc_B7DAA7: ConcatStr
  loc_B7DAA8: FStStrNoPop var_B0
  loc_B7DAAB: LitStr " N&ordm; "
  loc_B7DAAE: ConcatStr
  loc_B7DAAF: FStStrNoPop var_C4
  loc_B7DAB2: FMemLdR4 var_8C(64)
  loc_B7DAB7: ConcatStr
  loc_B7DAB8: FStStrNoPop var_C8
  loc_B7DABB: LitStr " "
  loc_B7DABE: ConcatStr
  loc_B7DABF: FStStrNoPop var_DC
  loc_B7DAC2: FMemLdR4 var_8C(68)
  loc_B7DAC7: ConcatStr
  loc_B7DAC8: FStStrNoPop var_E0
  loc_B7DACB: LitStr " "
  loc_B7DACE: ConcatStr
  loc_B7DACF: FStStrNoPop var_E4
  loc_B7DAD2: FMemLdR4 var_8C(72)
  loc_B7DAD7: ConcatStr
  loc_B7DAD8: FStStrNoPop var_120
  loc_B7DADB: LitStr " "
  loc_B7DADE: ConcatStr
  loc_B7DADF: FStStrNoPop var_124
  loc_B7DAE2: FMemLdR4 var_8C(76)
  loc_B7DAE7: ConcatStr
  loc_B7DAE8: FStStrNoPop var_128
  loc_B7DAEB: LitStr "<br>"
  loc_B7DAEE: ConcatStr
  loc_B7DAEF: CVarStr var_C0
  loc_B7DAF2: PopAdLdVar
  loc_B7DAF3: FLdPr Me
  loc_B7DAF6: MemLdRfVar from_stack_1.global_60
  loc_B7DAF9: LdPrVar
  loc_B7DAFB: LateMemCall
  loc_B7DB01: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B7DB16: FFree1Var var_C0 = ""
  loc_B7DB19: LitStr "            "
  loc_B7DB1C: FMemLdR4 var_8C(80)
  loc_B7DB21: ConcatStr
  loc_B7DB22: FStStrNoPop var_B0
  loc_B7DB25: LitStr " CP: "
  loc_B7DB28: ConcatStr
  loc_B7DB29: FStStrNoPop var_C4
  loc_B7DB2C: FMemLdR4 var_8C(84)
  loc_B7DB31: ConcatStr
  loc_B7DB32: FStStrNoPop var_C8
  loc_B7DB35: LitStr "</strong></td>"
  loc_B7DB38: ConcatStr
  loc_B7DB39: CVarStr var_C0
  loc_B7DB3C: PopAdLdVar
  loc_B7DB3D: FLdPr Me
  loc_B7DB40: MemLdRfVar from_stack_1.global_60
  loc_B7DB43: LdPrVar
  loc_B7DB45: LateMemCall
  loc_B7DB4B: FFreeStr var_B0 = "": var_C4 = ""
  loc_B7DB54: FFree1Var var_C0 = ""
  loc_B7DB57: LitVarStr var_9C, "        </tr>"
  loc_B7DB5C: PopAdLdVar
  loc_B7DB5D: FLdPr Me
  loc_B7DB60: MemLdRfVar from_stack_1.global_60
  loc_B7DB63: LdPrVar
  loc_B7DB65: LateMemCall
  loc_B7DB6B: LitVarStr var_9C, "      </table>"
  loc_B7DB70: PopAdLdVar
  loc_B7DB71: FLdPr Me
  loc_B7DB74: MemLdRfVar from_stack_1.global_60
  loc_B7DB77: LdPrVar
  loc_B7DB79: LateMemCall
  loc_B7DB7F: LitVarStr var_9C, "      </td>"
  loc_B7DB84: PopAdLdVar
  loc_B7DB85: FLdPr Me
  loc_B7DB88: MemLdRfVar from_stack_1.global_60
  loc_B7DB8B: LdPrVar
  loc_B7DB8D: LateMemCall
  loc_B7DB93: LitVarStr var_9C, "    </tr>"
  loc_B7DB98: PopAdLdVar
  loc_B7DB99: FLdPr Me
  loc_B7DB9C: MemLdRfVar from_stack_1.global_60
  loc_B7DB9F: LdPrVar
  loc_B7DBA1: LateMemCall
  loc_B7DBA7: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7DBAC: PopAdLdVar
  loc_B7DBAD: FLdPr Me
  loc_B7DBB0: MemLdRfVar from_stack_1.global_60
  loc_B7DBB3: LdPrVar
  loc_B7DBB5: LateMemCall
  loc_B7DBBB: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible:</strong></td>"
  loc_B7DBC0: PopAdLdVar
  loc_B7DBC1: FLdPr Me
  loc_B7DBC4: MemLdRfVar from_stack_1.global_60
  loc_B7DBC7: LdPrVar
  loc_B7DBC9: LateMemCall
  loc_B7DBCF: LitStr "    <td><strong>Hecho Imponible: "
  loc_B7DBD2: FMemLdR4 var_8C(92)
  loc_B7DBD7: ConcatStr
  loc_B7DBD8: FStStrNoPop var_B0
  loc_B7DBDB: LitStr "<br>Cuenta: "
  loc_B7DBDE: ConcatStr
  loc_B7DBDF: FStStrNoPop var_C4
  loc_B7DBE2: FMemLdR4 var_8C(96)
  loc_B7DBE7: ConcatStr
  loc_B7DBE8: FStStrNoPop var_C8
  loc_B7DBEB: LitStr "<br>"
  loc_B7DBEE: ConcatStr
  loc_B7DBEF: CVarStr var_C0
  loc_B7DBF2: PopAdLdVar
  loc_B7DBF3: FLdPr Me
  loc_B7DBF6: MemLdRfVar from_stack_1.global_60
  loc_B7DBF9: LdPrVar
  loc_B7DBFB: LateMemCall
  loc_B7DC01: FFreeStr var_B0 = "": var_C4 = ""
  loc_B7DC0A: FFree1Var var_C0 = ""
  loc_B7DC0D: LitStr "      Nomenclatura: "
  loc_B7DC10: FMemLdR4 var_8C(100)
  loc_B7DC15: ConcatStr
  loc_B7DC16: CVarStr var_C0
  loc_B7DC19: PopAdLdVar
  loc_B7DC1A: FLdPr Me
  loc_B7DC1D: MemLdRfVar from_stack_1.global_60
  loc_B7DC20: LdPrVar
  loc_B7DC22: LateMemCall
  loc_B7DC28: FFree1Var var_C0 = ""
  loc_B7DC2B: LitVarStr var_9C, "    </strong></td>"
  loc_B7DC30: PopAdLdVar
  loc_B7DC31: FLdPr Me
  loc_B7DC34: MemLdRfVar from_stack_1.global_60
  loc_B7DC37: LdPrVar
  loc_B7DC39: LateMemCall
  loc_B7DC3F: LitVarStr var_9C, "  </tr>"
  loc_B7DC44: PopAdLdVar
  loc_B7DC45: FLdPr Me
  loc_B7DC48: MemLdRfVar from_stack_1.global_60
  loc_B7DC4B: LdPrVar
  loc_B7DC4D: LateMemCall
  loc_B7DC53: LitVarStr var_9C, "</table>"
  loc_B7DC58: PopAdLdVar
  loc_B7DC59: FLdPr Me
  loc_B7DC5C: MemLdRfVar from_stack_1.global_60
  loc_B7DC5F: LdPrVar
  loc_B7DC61: LateMemCall
  loc_B7DC67: LitI4 0
  loc_B7DC6C: FStR4 var_8C
  loc_B7DC6F: AryUnlock
  loc_B7DC72: ExitProcHresult
  loc_B7DC73: ExitProcHresult
End Function

Private Function Proc_234_23_B7D734() 'B7D734
  'Data Table: 486D94
  loc_B7D258: FLdPr Me
  loc_B7D25B: MemLdI2 global_88
  loc_B7D25E: CI4UI1
  loc_B7D25F: FLdPr Me
  loc_B7D262: MemLdStr global_84
  loc_B7D265: AryLock
  loc_B7D268: Ary1LdRf
  loc_B7D269: FStR4 var_8C
  loc_B7D26C: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7D271: PopAdLdVar
  loc_B7D272: FLdPr Me
  loc_B7D275: MemLdRfVar from_stack_1.global_60
  loc_B7D278: LdPrVar
  loc_B7D27A: LateMemCall
  loc_B7D280: LitVarStr var_9C, "    <td width=""19" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B7D285: PopAdLdVar
  loc_B7D286: FLdPr Me
  loc_B7D289: MemLdRfVar from_stack_1.global_60
  loc_B7D28C: LdPrVar
  loc_B7D28E: LateMemCall
  loc_B7D294: LitStr "    <td width=""81" & Chr(37) & """ colspan=""2""><p><strong>BOLETA DE DEUDA N&ordm; "
  loc_B7D297: FMemLdR4 var_8C(0)
  loc_B7D29C: ConcatStr
  loc_B7D29D: FStStrNoPop var_B0
  loc_B7D2A0: LitStr "<br>"
  loc_B7D2A3: ConcatStr
  loc_B7D2A4: CVarStr var_C0
  loc_B7D2A7: PopAdLdVar
  loc_B7D2A8: FLdPr Me
  loc_B7D2AB: MemLdRfVar from_stack_1.global_60
  loc_B7D2AE: LdPrVar
  loc_B7D2B0: LateMemCall
  loc_B7D2B6: FFree1Str var_B0
  loc_B7D2B9: FFree1Var var_C0 = ""
  loc_B7D2BC: LitI2_Byte 0
  loc_B7D2BE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7D2C3: FStFPR8 var_10C
  loc_B7D2C6: LitStr "      "
  loc_B7D2C9: LitStr "Guaymallén"
  loc_B7D2CC: ConcatStr
  loc_B7D2CD: FStStrNoPop var_B0
  loc_B7D2D0: LitStr ", "
  loc_B7D2D3: ConcatStr
  loc_B7D2D4: FStStrNoPop var_C4
  loc_B7D2D7: LitStr "Mendoza"
  loc_B7D2DA: ConcatStr
  loc_B7D2DB: FStStrNoPop var_C8
  loc_B7D2DE: LitStr ", "
  loc_B7D2E1: ConcatStr
  loc_B7D2E2: FStStrNoPop var_DC
  loc_B7D2E5: LitI4 1
  loc_B7D2EA: LitI4 1
  loc_B7D2EF: LitVarStr var_AC, "dddd d \de mmmm \de yyyy"
  loc_B7D2F4: FStVarCopyObj var_D8
  loc_B7D2F7: FLdRfVar var_D8
  loc_B7D2FA: FLdFPR8 var_10C
  loc_B7D2FD: CVarDate var_C0
  loc_B7D301: ImpAdCallI2 Format$(, )
  loc_B7D306: FStStrNoPop var_E0
  loc_B7D309: ConcatStr
  loc_B7D30A: FStStrNoPop var_E4
  loc_B7D30D: LitStr "<br>"
  loc_B7D310: ConcatStr
  loc_B7D311: CVarStr var_F4
  loc_B7D314: PopAdLdVar
  loc_B7D315: FLdPr Me
  loc_B7D318: MemLdRfVar from_stack_1.global_60
  loc_B7D31B: LdPrVar
  loc_B7D31D: LateMemCall
  loc_B7D323: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = ""
  loc_B7D332: FFreeVar var_C0 = "": var_D8 = ""
  loc_B7D33B: LitVarStr var_AC, "      "
  loc_B7D340: FLdPr Me
  loc_B7D343: MemLdRfVar from_stack_1.global_116
  loc_B7D346: CDargRef
  loc_B7D34A: FLdPr Me
  loc_B7D34D: MemLdRfVar from_stack_1.global_92
  loc_B7D350: VarIndexLdVar
  loc_B7D356: ConcatVar var_D8
  loc_B7D35A: LitVarStr var_104, "<br>"
  loc_B7D35F: ConcatVar var_F4
  loc_B7D363: PopAdLdVar
  loc_B7D364: FLdPr Me
  loc_B7D367: MemLdRfVar from_stack_1.global_60
  loc_B7D36A: LdPrVar
  loc_B7D36C: LateMemCall
  loc_B7D372: FFreeVar var_C0 = "": var_D8 = ""
  loc_B7D37B: LitStr "      RECAUDADOR: "
  loc_B7D37E: FMemLdR4 var_8C(8)
  loc_B7D383: ConcatStr
  loc_B7D384: FStStrNoPop var_B0
  loc_B7D387: LitStr "</strong></p>"
  loc_B7D38A: ConcatStr
  loc_B7D38B: CVarStr var_C0
  loc_B7D38E: PopAdLdVar
  loc_B7D38F: FLdPr Me
  loc_B7D392: MemLdRfVar from_stack_1.global_60
  loc_B7D395: LdPrVar
  loc_B7D397: LateMemCall
  loc_B7D39D: FFree1Str var_B0
  loc_B7D3A0: FFree1Var var_C0 = ""
  loc_B7D3A3: LitVarStr var_9C, "      </td>"
  loc_B7D3A8: PopAdLdVar
  loc_B7D3A9: FLdPr Me
  loc_B7D3AC: MemLdRfVar from_stack_1.global_60
  loc_B7D3AF: LdPrVar
  loc_B7D3B1: LateMemCall
  loc_B7D3B7: LitVarStr var_9C, "  </tr>"
  loc_B7D3BC: PopAdLdVar
  loc_B7D3BD: FLdPr Me
  loc_B7D3C0: MemLdRfVar from_stack_1.global_60
  loc_B7D3C3: LdPrVar
  loc_B7D3C5: LateMemCall
  loc_B7D3CB: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7D3D0: PopAdLdVar
  loc_B7D3D1: FLdPr Me
  loc_B7D3D4: MemLdRfVar from_stack_1.global_60
  loc_B7D3D7: LdPrVar
  loc_B7D3D9: LateMemCall
  loc_B7D3DF: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B7D3E4: PopAdLdVar
  loc_B7D3E5: FLdPr Me
  loc_B7D3E8: MemLdRfVar from_stack_1.global_60
  loc_B7D3EB: LdPrVar
  loc_B7D3ED: LateMemCall
  loc_B7D3F3: LitVarStr var_9C, "    <td><table width=""100" & Chr(37) & """ border=""0"">"
  loc_B7D3F8: PopAdLdVar
  loc_B7D3F9: FLdPr Me
  loc_B7D3FC: MemLdRfVar from_stack_1.global_60
  loc_B7D3FF: LdPrVar
  loc_B7D401: LateMemCall
  loc_B7D407: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7D40C: PopAdLdVar
  loc_B7D40D: FLdPr Me
  loc_B7D410: MemLdRfVar from_stack_1.global_60
  loc_B7D413: LdPrVar
  loc_B7D415: LateMemCall
  loc_B7D41B: LitVarStr var_9C, "          <td width=""24" & Chr(37) & """><strong>APELLIDO Y NOMBRE:</strong></td>"
  loc_B7D420: PopAdLdVar
  loc_B7D421: FLdPr Me
  loc_B7D424: MemLdRfVar from_stack_1.global_60
  loc_B7D427: LdPrVar
  loc_B7D429: LateMemCall
  loc_B7D42F: LitStr "          <td width=""76" & Chr(37) & """><strong>"
  loc_B7D432: FMemLdR4 var_8C(12)
  loc_B7D437: ConcatStr
  loc_B7D438: FStStrNoPop var_B0
  loc_B7D43B: LitStr "</strong></td>"
  loc_B7D43E: ConcatStr
  loc_B7D43F: CVarStr var_C0
  loc_B7D442: PopAdLdVar
  loc_B7D443: FLdPr Me
  loc_B7D446: MemLdRfVar from_stack_1.global_60
  loc_B7D449: LdPrVar
  loc_B7D44B: LateMemCall
  loc_B7D451: FFree1Str var_B0
  loc_B7D454: FFree1Var var_C0 = ""
  loc_B7D457: LitVarStr var_9C, "        </tr>"
  loc_B7D45C: PopAdLdVar
  loc_B7D45D: FLdPr Me
  loc_B7D460: MemLdRfVar from_stack_1.global_60
  loc_B7D463: LdPrVar
  loc_B7D465: LateMemCall
  loc_B7D46B: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7D470: PopAdLdVar
  loc_B7D471: FLdPr Me
  loc_B7D474: MemLdRfVar from_stack_1.global_60
  loc_B7D477: LdPrVar
  loc_B7D479: LateMemCall
  loc_B7D47F: LitVarStr var_9C, "          <td><strong>DOMICILIO FISCAL:</strong></td>"
  loc_B7D484: PopAdLdVar
  loc_B7D485: FLdPr Me
  loc_B7D488: MemLdRfVar from_stack_1.global_60
  loc_B7D48B: LdPrVar
  loc_B7D48D: LateMemCall
  loc_B7D493: LitStr "          <td><strong>"
  loc_B7D496: FMemLdR4 var_8C(16)
  loc_B7D49B: ConcatStr
  loc_B7D49C: FStStrNoPop var_B0
  loc_B7D49F: LitStr " N&ordm; "
  loc_B7D4A2: ConcatStr
  loc_B7D4A3: FStStrNoPop var_C4
  loc_B7D4A6: FMemLdR4 var_8C(24)
  loc_B7D4AB: ConcatStr
  loc_B7D4AC: FStStrNoPop var_C8
  loc_B7D4AF: LitStr " "
  loc_B7D4B2: ConcatStr
  loc_B7D4B3: FStStrNoPop var_DC
  loc_B7D4B6: FMemLdR4 var_8C(32)
  loc_B7D4BB: ConcatStr
  loc_B7D4BC: FStStrNoPop var_E0
  loc_B7D4BF: LitStr " "
  loc_B7D4C2: ConcatStr
  loc_B7D4C3: FStStrNoPop var_E4
  loc_B7D4C6: FMemLdR4 var_8C(40)
  loc_B7D4CB: ConcatStr
  loc_B7D4CC: FStStrNoPop var_120
  loc_B7D4CF: LitStr " "
  loc_B7D4D2: ConcatStr
  loc_B7D4D3: FStStrNoPop var_124
  loc_B7D4D6: FMemLdR4 var_8C(48)
  loc_B7D4DB: ConcatStr
  loc_B7D4DC: FStStrNoPop var_128
  loc_B7D4DF: LitStr "<br>"
  loc_B7D4E2: ConcatStr
  loc_B7D4E3: CVarStr var_C0
  loc_B7D4E6: PopAdLdVar
  loc_B7D4E7: FLdPr Me
  loc_B7D4EA: MemLdRfVar from_stack_1.global_60
  loc_B7D4ED: LdPrVar
  loc_B7D4EF: LateMemCall
  loc_B7D4F5: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B7D50A: FFree1Var var_C0 = ""
  loc_B7D50D: LitStr "            "
  loc_B7D510: FMemLdR4 var_8C(52)
  loc_B7D515: ConcatStr
  loc_B7D516: FStStrNoPop var_B0
  loc_B7D519: LitStr " CP: "
  loc_B7D51C: ConcatStr
  loc_B7D51D: FStStrNoPop var_C4
  loc_B7D520: FMemLdR4 var_8C(56)
  loc_B7D525: ConcatStr
  loc_B7D526: FStStrNoPop var_C8
  loc_B7D529: LitStr " </strong></td>"
  loc_B7D52C: ConcatStr
  loc_B7D52D: CVarStr var_C0
  loc_B7D530: PopAdLdVar
  loc_B7D531: FLdPr Me
  loc_B7D534: MemLdRfVar from_stack_1.global_60
  loc_B7D537: LdPrVar
  loc_B7D539: LateMemCall
  loc_B7D53F: FFreeStr var_B0 = "": var_C4 = ""
  loc_B7D548: FFree1Var var_C0 = ""
  loc_B7D54B: LitVarStr var_9C, "        </tr>"
  loc_B7D550: PopAdLdVar
  loc_B7D551: FLdPr Me
  loc_B7D554: MemLdRfVar from_stack_1.global_60
  loc_B7D557: LdPrVar
  loc_B7D559: LateMemCall
  loc_B7D55F: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B7D564: PopAdLdVar
  loc_B7D565: FLdPr Me
  loc_B7D568: MemLdRfVar from_stack_1.global_60
  loc_B7D56B: LdPrVar
  loc_B7D56D: LateMemCall
  loc_B7D573: LitVarStr var_9C, "          <td><strong>DOMICILIO ESPECIAL: </strong></td>"
  loc_B7D578: PopAdLdVar
  loc_B7D579: FLdPr Me
  loc_B7D57C: MemLdRfVar from_stack_1.global_60
  loc_B7D57F: LdPrVar
  loc_B7D581: LateMemCall
  loc_B7D587: LitStr "          <td><strong>"
  loc_B7D58A: FMemLdR4 var_8C(60)
  loc_B7D58F: ConcatStr
  loc_B7D590: FStStrNoPop var_B0
  loc_B7D593: LitStr " N&ordm; "
  loc_B7D596: ConcatStr
  loc_B7D597: FStStrNoPop var_C4
  loc_B7D59A: FMemLdR4 var_8C(64)
  loc_B7D59F: ConcatStr
  loc_B7D5A0: FStStrNoPop var_C8
  loc_B7D5A3: LitStr " "
  loc_B7D5A6: ConcatStr
  loc_B7D5A7: FStStrNoPop var_DC
  loc_B7D5AA: FMemLdR4 var_8C(68)
  loc_B7D5AF: ConcatStr
  loc_B7D5B0: FStStrNoPop var_E0
  loc_B7D5B3: LitStr " "
  loc_B7D5B6: ConcatStr
  loc_B7D5B7: FStStrNoPop var_E4
  loc_B7D5BA: FMemLdR4 var_8C(72)
  loc_B7D5BF: ConcatStr
  loc_B7D5C0: FStStrNoPop var_120
  loc_B7D5C3: LitStr " "
  loc_B7D5C6: ConcatStr
  loc_B7D5C7: FStStrNoPop var_124
  loc_B7D5CA: FMemLdR4 var_8C(76)
  loc_B7D5CF: ConcatStr
  loc_B7D5D0: FStStrNoPop var_128
  loc_B7D5D3: LitStr "<br>"
  loc_B7D5D6: ConcatStr
  loc_B7D5D7: CVarStr var_C0
  loc_B7D5DA: PopAdLdVar
  loc_B7D5DB: FLdPr Me
  loc_B7D5DE: MemLdRfVar from_stack_1.global_60
  loc_B7D5E1: LdPrVar
  loc_B7D5E3: LateMemCall
  loc_B7D5E9: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B7D5FE: FFree1Var var_C0 = ""
  loc_B7D601: LitStr "            "
  loc_B7D604: FMemLdR4 var_8C(80)
  loc_B7D609: ConcatStr
  loc_B7D60A: FStStrNoPop var_B0
  loc_B7D60D: LitStr " CP: "
  loc_B7D610: ConcatStr
  loc_B7D611: FStStrNoPop var_C4
  loc_B7D614: FMemLdR4 var_8C(84)
  loc_B7D619: ConcatStr
  loc_B7D61A: FStStrNoPop var_C8
  loc_B7D61D: LitStr "</strong></td>"
  loc_B7D620: ConcatStr
  loc_B7D621: CVarStr var_C0
  loc_B7D624: PopAdLdVar
  loc_B7D625: FLdPr Me
  loc_B7D628: MemLdRfVar from_stack_1.global_60
  loc_B7D62B: LdPrVar
  loc_B7D62D: LateMemCall
  loc_B7D633: FFreeStr var_B0 = "": var_C4 = ""
  loc_B7D63C: FFree1Var var_C0 = ""
  loc_B7D63F: LitVarStr var_9C, "        </tr>"
  loc_B7D644: PopAdLdVar
  loc_B7D645: FLdPr Me
  loc_B7D648: MemLdRfVar from_stack_1.global_60
  loc_B7D64B: LdPrVar
  loc_B7D64D: LateMemCall
  loc_B7D653: LitVarStr var_9C, "      </table>"
  loc_B7D658: PopAdLdVar
  loc_B7D659: FLdPr Me
  loc_B7D65C: MemLdRfVar from_stack_1.global_60
  loc_B7D65F: LdPrVar
  loc_B7D661: LateMemCall
  loc_B7D667: LitVarStr var_9C, "      </td>"
  loc_B7D66C: PopAdLdVar
  loc_B7D66D: FLdPr Me
  loc_B7D670: MemLdRfVar from_stack_1.global_60
  loc_B7D673: LdPrVar
  loc_B7D675: LateMemCall
  loc_B7D67B: LitVarStr var_9C, "    </tr>"
  loc_B7D680: PopAdLdVar
  loc_B7D681: FLdPr Me
  loc_B7D684: MemLdRfVar from_stack_1.global_60
  loc_B7D687: LdPrVar
  loc_B7D689: LateMemCall
  loc_B7D68F: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B7D694: PopAdLdVar
  loc_B7D695: FLdPr Me
  loc_B7D698: MemLdRfVar from_stack_1.global_60
  loc_B7D69B: LdPrVar
  loc_B7D69D: LateMemCall
  loc_B7D6A3: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible:</strong></td>"
  loc_B7D6A8: PopAdLdVar
  loc_B7D6A9: FLdPr Me
  loc_B7D6AC: MemLdRfVar from_stack_1.global_60
  loc_B7D6AF: LdPrVar
  loc_B7D6B1: LateMemCall
  loc_B7D6B7: LitStr "    <td><strong>Hecho Imponible: "
  loc_B7D6BA: FMemLdR4 var_8C(92)
  loc_B7D6BF: ConcatStr
  loc_B7D6C0: FStStrNoPop var_B0
  loc_B7D6C3: LitStr "<br>Cuenta: "
  loc_B7D6C6: ConcatStr
  loc_B7D6C7: FStStrNoPop var_C4
  loc_B7D6CA: FMemLdR4 var_8C(96)
  loc_B7D6CF: ConcatStr
  loc_B7D6D0: CVarStr var_C0
  loc_B7D6D3: PopAdLdVar
  loc_B7D6D4: FLdPr Me
  loc_B7D6D7: MemLdRfVar from_stack_1.global_60
  loc_B7D6DA: LdPrVar
  loc_B7D6DC: LateMemCall
  loc_B7D6E2: FFreeStr var_B0 = ""
  loc_B7D6E9: FFree1Var var_C0 = ""
  loc_B7D6EC: LitVarStr var_9C, "    </strong></td>"
  loc_B7D6F1: PopAdLdVar
  loc_B7D6F2: FLdPr Me
  loc_B7D6F5: MemLdRfVar from_stack_1.global_60
  loc_B7D6F8: LdPrVar
  loc_B7D6FA: LateMemCall
  loc_B7D700: LitVarStr var_9C, "  </tr>"
  loc_B7D705: PopAdLdVar
  loc_B7D706: FLdPr Me
  loc_B7D709: MemLdRfVar from_stack_1.global_60
  loc_B7D70C: LdPrVar
  loc_B7D70E: LateMemCall
  loc_B7D714: LitVarStr var_9C, "</table>"
  loc_B7D719: PopAdLdVar
  loc_B7D71A: FLdPr Me
  loc_B7D71D: MemLdRfVar from_stack_1.global_60
  loc_B7D720: LdPrVar
  loc_B7D722: LateMemCall
  loc_B7D728: LitI4 0
  loc_B7D72D: FStR4 var_8C
  loc_B7D730: AryUnlock
  loc_B7D733: ExitProcHresult
End Function

Private Function Proc_234_24_B78E38() 'B78E38
  'Data Table: 486D94
  loc_B78970: FLdPr Me
  loc_B78973: MemLdI2 global_88
  loc_B78976: CI4UI1
  loc_B78977: FLdPr Me
  loc_B7897A: MemLdStr global_84
  loc_B7897D: AryLock
  loc_B78980: Ary1LdRf
  loc_B78981: FStR4 var_8C
  loc_B78984: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B78989: PopAdLdVar
  loc_B7898A: FLdPr Me
  loc_B7898D: MemLdRfVar from_stack_1.global_60
  loc_B78990: LdPrVar
  loc_B78992: LateMemCall
  loc_B78998: LitVarStr var_9C, "    <td width=""19" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B7899D: PopAdLdVar
  loc_B7899E: FLdPr Me
  loc_B789A1: MemLdRfVar from_stack_1.global_60
  loc_B789A4: LdPrVar
  loc_B789A6: LateMemCall
  loc_B789AC: LitStr "    <td width=""81" & Chr(37) & """ colspan=""2""><p><strong>BOLETA DE DEUDA N&ordm; "
  loc_B789AF: FMemLdR4 var_8C(0)
  loc_B789B4: ConcatStr
  loc_B789B5: FStStrNoPop var_B0
  loc_B789B8: LitStr "<br>"
  loc_B789BB: ConcatStr
  loc_B789BC: CVarStr var_C0
  loc_B789BF: PopAdLdVar
  loc_B789C0: FLdPr Me
  loc_B789C3: MemLdRfVar from_stack_1.global_60
  loc_B789C6: LdPrVar
  loc_B789C8: LateMemCall
  loc_B789CE: FFree1Str var_B0
  loc_B789D1: FFree1Var var_C0 = ""
  loc_B789D4: LitI2_Byte 0
  loc_B789D6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B789DB: FStFPR8 var_10C
  loc_B789DE: LitStr "      "
  loc_B789E1: LitStr "Guaymallén"
  loc_B789E4: ConcatStr
  loc_B789E5: FStStrNoPop var_B0
  loc_B789E8: LitStr ", "
  loc_B789EB: ConcatStr
  loc_B789EC: FStStrNoPop var_C4
  loc_B789EF: LitStr "Mendoza"
  loc_B789F2: ConcatStr
  loc_B789F3: FStStrNoPop var_C8
  loc_B789F6: LitStr ", "
  loc_B789F9: ConcatStr
  loc_B789FA: FStStrNoPop var_DC
  loc_B789FD: LitI4 1
  loc_B78A02: LitI4 1
  loc_B78A07: LitVarStr var_AC, "dddd d \de mmmm \de yyyy"
  loc_B78A0C: FStVarCopyObj var_D8
  loc_B78A0F: FLdRfVar var_D8
  loc_B78A12: FLdFPR8 var_10C
  loc_B78A15: CVarDate var_C0
  loc_B78A19: ImpAdCallI2 Format$(, )
  loc_B78A1E: FStStrNoPop var_E0
  loc_B78A21: ConcatStr
  loc_B78A22: FStStrNoPop var_E4
  loc_B78A25: LitStr "<br>"
  loc_B78A28: ConcatStr
  loc_B78A29: CVarStr var_F4
  loc_B78A2C: PopAdLdVar
  loc_B78A2D: FLdPr Me
  loc_B78A30: MemLdRfVar from_stack_1.global_60
  loc_B78A33: LdPrVar
  loc_B78A35: LateMemCall
  loc_B78A3B: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = ""
  loc_B78A4A: FFreeVar var_C0 = "": var_D8 = ""
  loc_B78A53: LitVarStr var_AC, "      "
  loc_B78A58: FLdPr Me
  loc_B78A5B: MemLdRfVar from_stack_1.global_116
  loc_B78A5E: CDargRef
  loc_B78A62: FLdPr Me
  loc_B78A65: MemLdRfVar from_stack_1.global_92
  loc_B78A68: VarIndexLdVar
  loc_B78A6E: ConcatVar var_D8
  loc_B78A72: LitVarStr var_104, "<br>"
  loc_B78A77: ConcatVar var_F4
  loc_B78A7B: PopAdLdVar
  loc_B78A7C: FLdPr Me
  loc_B78A7F: MemLdRfVar from_stack_1.global_60
  loc_B78A82: LdPrVar
  loc_B78A84: LateMemCall
  loc_B78A8A: FFreeVar var_C0 = "": var_D8 = ""
  loc_B78A93: LitStr "      RECAUDADOR: "
  loc_B78A96: FMemLdR4 var_8C(8)
  loc_B78A9B: ConcatStr
  loc_B78A9C: FStStrNoPop var_B0
  loc_B78A9F: LitStr "</strong></p>"
  loc_B78AA2: ConcatStr
  loc_B78AA3: CVarStr var_C0
  loc_B78AA6: PopAdLdVar
  loc_B78AA7: FLdPr Me
  loc_B78AAA: MemLdRfVar from_stack_1.global_60
  loc_B78AAD: LdPrVar
  loc_B78AAF: LateMemCall
  loc_B78AB5: FFree1Str var_B0
  loc_B78AB8: FFree1Var var_C0 = ""
  loc_B78ABB: LitVarStr var_9C, "      </td>"
  loc_B78AC0: PopAdLdVar
  loc_B78AC1: FLdPr Me
  loc_B78AC4: MemLdRfVar from_stack_1.global_60
  loc_B78AC7: LdPrVar
  loc_B78AC9: LateMemCall
  loc_B78ACF: LitVarStr var_9C, "  </tr>"
  loc_B78AD4: PopAdLdVar
  loc_B78AD5: FLdPr Me
  loc_B78AD8: MemLdRfVar from_stack_1.global_60
  loc_B78ADB: LdPrVar
  loc_B78ADD: LateMemCall
  loc_B78AE3: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B78AE8: PopAdLdVar
  loc_B78AE9: FLdPr Me
  loc_B78AEC: MemLdRfVar from_stack_1.global_60
  loc_B78AEF: LdPrVar
  loc_B78AF1: LateMemCall
  loc_B78AF7: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B78AFC: PopAdLdVar
  loc_B78AFD: FLdPr Me
  loc_B78B00: MemLdRfVar from_stack_1.global_60
  loc_B78B03: LdPrVar
  loc_B78B05: LateMemCall
  loc_B78B0B: LitVarStr var_9C, "    <td><table width=""100" & Chr(37) & """ border=""0"">"
  loc_B78B10: PopAdLdVar
  loc_B78B11: FLdPr Me
  loc_B78B14: MemLdRfVar from_stack_1.global_60
  loc_B78B17: LdPrVar
  loc_B78B19: LateMemCall
  loc_B78B1F: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B78B24: PopAdLdVar
  loc_B78B25: FLdPr Me
  loc_B78B28: MemLdRfVar from_stack_1.global_60
  loc_B78B2B: LdPrVar
  loc_B78B2D: LateMemCall
  loc_B78B33: LitVarStr var_9C, "          <td width=""24" & Chr(37) & """><strong>APELLIDO Y NOMBRE:</strong></td>"
  loc_B78B38: PopAdLdVar
  loc_B78B39: FLdPr Me
  loc_B78B3C: MemLdRfVar from_stack_1.global_60
  loc_B78B3F: LdPrVar
  loc_B78B41: LateMemCall
  loc_B78B47: LitStr "          <td width=""76" & Chr(37) & """><strong>"
  loc_B78B4A: FMemLdR4 var_8C(12)
  loc_B78B4F: ConcatStr
  loc_B78B50: FStStrNoPop var_B0
  loc_B78B53: LitStr "</strong></td>"
  loc_B78B56: ConcatStr
  loc_B78B57: CVarStr var_C0
  loc_B78B5A: PopAdLdVar
  loc_B78B5B: FLdPr Me
  loc_B78B5E: MemLdRfVar from_stack_1.global_60
  loc_B78B61: LdPrVar
  loc_B78B63: LateMemCall
  loc_B78B69: FFree1Str var_B0
  loc_B78B6C: FFree1Var var_C0 = ""
  loc_B78B6F: LitVarStr var_9C, "        </tr>"
  loc_B78B74: PopAdLdVar
  loc_B78B75: FLdPr Me
  loc_B78B78: MemLdRfVar from_stack_1.global_60
  loc_B78B7B: LdPrVar
  loc_B78B7D: LateMemCall
  loc_B78B83: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B78B88: PopAdLdVar
  loc_B78B89: FLdPr Me
  loc_B78B8C: MemLdRfVar from_stack_1.global_60
  loc_B78B8F: LdPrVar
  loc_B78B91: LateMemCall
  loc_B78B97: LitVarStr var_9C, "          <td><strong>DOMICILIO FISCAL:</strong></td>"
  loc_B78B9C: PopAdLdVar
  loc_B78B9D: FLdPr Me
  loc_B78BA0: MemLdRfVar from_stack_1.global_60
  loc_B78BA3: LdPrVar
  loc_B78BA5: LateMemCall
  loc_B78BAB: LitStr "          <td><strong>"
  loc_B78BAE: FMemLdR4 var_8C(16)
  loc_B78BB3: ConcatStr
  loc_B78BB4: FStStrNoPop var_B0
  loc_B78BB7: LitStr " N&ordm; "
  loc_B78BBA: ConcatStr
  loc_B78BBB: FStStrNoPop var_C4
  loc_B78BBE: FMemLdR4 var_8C(20)
  loc_B78BC3: ConcatStr
  loc_B78BC4: FStStrNoPop var_C8
  loc_B78BC7: LitStr " "
  loc_B78BCA: ConcatStr
  loc_B78BCB: FStStrNoPop var_DC
  loc_B78BCE: FMemLdR4 var_8C(28)
  loc_B78BD3: ConcatStr
  loc_B78BD4: FStStrNoPop var_E0
  loc_B78BD7: LitStr " "
  loc_B78BDA: ConcatStr
  loc_B78BDB: FStStrNoPop var_E4
  loc_B78BDE: FMemLdR4 var_8C(36)
  loc_B78BE3: ConcatStr
  loc_B78BE4: FStStrNoPop var_120
  loc_B78BE7: LitStr " "
  loc_B78BEA: ConcatStr
  loc_B78BEB: FStStrNoPop var_124
  loc_B78BEE: FMemLdR4 var_8C(44)
  loc_B78BF3: ConcatStr
  loc_B78BF4: FStStrNoPop var_128
  loc_B78BF7: LitStr "<br>"
  loc_B78BFA: ConcatStr
  loc_B78BFB: CVarStr var_C0
  loc_B78BFE: PopAdLdVar
  loc_B78BFF: FLdPr Me
  loc_B78C02: MemLdRfVar from_stack_1.global_60
  loc_B78C05: LdPrVar
  loc_B78C07: LateMemCall
  loc_B78C0D: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B78C22: FFree1Var var_C0 = ""
  loc_B78C25: LitStr "            "
  loc_B78C28: FMemLdR4 var_8C(52)
  loc_B78C2D: ConcatStr
  loc_B78C2E: FStStrNoPop var_B0
  loc_B78C31: LitStr " CP: "
  loc_B78C34: ConcatStr
  loc_B78C35: FStStrNoPop var_C4
  loc_B78C38: FMemLdR4 var_8C(56)
  loc_B78C3D: ConcatStr
  loc_B78C3E: FStStrNoPop var_C8
  loc_B78C41: LitStr " </strong></td>"
  loc_B78C44: ConcatStr
  loc_B78C45: CVarStr var_C0
  loc_B78C48: PopAdLdVar
  loc_B78C49: FLdPr Me
  loc_B78C4C: MemLdRfVar from_stack_1.global_60
  loc_B78C4F: LdPrVar
  loc_B78C51: LateMemCall
  loc_B78C57: FFreeStr var_B0 = "": var_C4 = ""
  loc_B78C60: FFree1Var var_C0 = ""
  loc_B78C63: LitVarStr var_9C, "        </tr>"
  loc_B78C68: PopAdLdVar
  loc_B78C69: FLdPr Me
  loc_B78C6C: MemLdRfVar from_stack_1.global_60
  loc_B78C6F: LdPrVar
  loc_B78C71: LateMemCall
  loc_B78C77: LitVarStr var_9C, "        <tr valign=""top"">"
  loc_B78C7C: PopAdLdVar
  loc_B78C7D: FLdPr Me
  loc_B78C80: MemLdRfVar from_stack_1.global_60
  loc_B78C83: LdPrVar
  loc_B78C85: LateMemCall
  loc_B78C8B: LitVarStr var_9C, "          <td><strong>DOMICILIO ESPECIAL: </strong></td>"
  loc_B78C90: PopAdLdVar
  loc_B78C91: FLdPr Me
  loc_B78C94: MemLdRfVar from_stack_1.global_60
  loc_B78C97: LdPrVar
  loc_B78C99: LateMemCall
  loc_B78C9F: LitStr "          <td><strong>"
  loc_B78CA2: FMemLdR4 var_8C(60)
  loc_B78CA7: ConcatStr
  loc_B78CA8: FStStrNoPop var_B0
  loc_B78CAB: LitStr " N&ordm; "
  loc_B78CAE: ConcatStr
  loc_B78CAF: FStStrNoPop var_C4
  loc_B78CB2: FMemLdR4 var_8C(64)
  loc_B78CB7: ConcatStr
  loc_B78CB8: FStStrNoPop var_C8
  loc_B78CBB: LitStr " "
  loc_B78CBE: ConcatStr
  loc_B78CBF: FStStrNoPop var_DC
  loc_B78CC2: FMemLdR4 var_8C(68)
  loc_B78CC7: ConcatStr
  loc_B78CC8: FStStrNoPop var_E0
  loc_B78CCB: LitStr " "
  loc_B78CCE: ConcatStr
  loc_B78CCF: FStStrNoPop var_E4
  loc_B78CD2: FMemLdR4 var_8C(72)
  loc_B78CD7: ConcatStr
  loc_B78CD8: FStStrNoPop var_120
  loc_B78CDB: LitStr " "
  loc_B78CDE: ConcatStr
  loc_B78CDF: FStStrNoPop var_124
  loc_B78CE2: FMemLdR4 var_8C(80)
  loc_B78CE7: ConcatStr
  loc_B78CE8: FStStrNoPop var_128
  loc_B78CEB: LitStr "<br>"
  loc_B78CEE: ConcatStr
  loc_B78CEF: CVarStr var_C0
  loc_B78CF2: PopAdLdVar
  loc_B78CF3: FLdPr Me
  loc_B78CF6: MemLdRfVar from_stack_1.global_60
  loc_B78CF9: LdPrVar
  loc_B78CFB: LateMemCall
  loc_B78D01: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_120 = "": var_124 = ""
  loc_B78D16: FFree1Var var_C0 = ""
  loc_B78D19: LitStr "            "
  loc_B78D1C: FMemLdR4 var_8C(80)
  loc_B78D21: ConcatStr
  loc_B78D22: FStStrNoPop var_B0
  loc_B78D25: LitStr " CP: "
  loc_B78D28: ConcatStr
  loc_B78D29: FStStrNoPop var_C4
  loc_B78D2C: FMemLdR4 var_8C(84)
  loc_B78D31: ConcatStr
  loc_B78D32: FStStrNoPop var_C8
  loc_B78D35: LitStr "</strong></td>"
  loc_B78D38: ConcatStr
  loc_B78D39: CVarStr var_C0
  loc_B78D3C: PopAdLdVar
  loc_B78D3D: FLdPr Me
  loc_B78D40: MemLdRfVar from_stack_1.global_60
  loc_B78D43: LdPrVar
  loc_B78D45: LateMemCall
  loc_B78D4B: FFreeStr var_B0 = "": var_C4 = ""
  loc_B78D54: FFree1Var var_C0 = ""
  loc_B78D57: LitVarStr var_9C, "        </tr>"
  loc_B78D5C: PopAdLdVar
  loc_B78D5D: FLdPr Me
  loc_B78D60: MemLdRfVar from_stack_1.global_60
  loc_B78D63: LdPrVar
  loc_B78D65: LateMemCall
  loc_B78D6B: LitVarStr var_9C, "      </table>"
  loc_B78D70: PopAdLdVar
  loc_B78D71: FLdPr Me
  loc_B78D74: MemLdRfVar from_stack_1.global_60
  loc_B78D77: LdPrVar
  loc_B78D79: LateMemCall
  loc_B78D7F: LitVarStr var_9C, "      </td>"
  loc_B78D84: PopAdLdVar
  loc_B78D85: FLdPr Me
  loc_B78D88: MemLdRfVar from_stack_1.global_60
  loc_B78D8B: LdPrVar
  loc_B78D8D: LateMemCall
  loc_B78D93: LitVarStr var_9C, "    </tr>"
  loc_B78D98: PopAdLdVar
  loc_B78D99: FLdPr Me
  loc_B78D9C: MemLdRfVar from_stack_1.global_60
  loc_B78D9F: LdPrVar
  loc_B78DA1: LateMemCall
  loc_B78DA7: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B78DAC: PopAdLdVar
  loc_B78DAD: FLdPr Me
  loc_B78DB0: MemLdRfVar from_stack_1.global_60
  loc_B78DB3: LdPrVar
  loc_B78DB5: LateMemCall
  loc_B78DBB: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible:</strong></td>"
  loc_B78DC0: PopAdLdVar
  loc_B78DC1: FLdPr Me
  loc_B78DC4: MemLdRfVar from_stack_1.global_60
  loc_B78DC7: LdPrVar
  loc_B78DC9: LateMemCall
  loc_B78DCF: LitStr "    <td><strong>Hecho Imponible: DEUDORES VARIOS<br>Cuenta: "
  loc_B78DD2: FMemLdR4 var_8C(96)
  loc_B78DD7: ConcatStr
  loc_B78DD8: CVarStr var_C0
  loc_B78DDB: PopAdLdVar
  loc_B78DDC: FLdPr Me
  loc_B78DDF: MemLdRfVar from_stack_1.global_60
  loc_B78DE2: LdPrVar
  loc_B78DE4: LateMemCall
  loc_B78DEA: FFree1Var var_C0 = ""
  loc_B78DED: LitVarStr var_9C, "    </strong></td>"
  loc_B78DF2: PopAdLdVar
  loc_B78DF3: FLdPr Me
  loc_B78DF6: MemLdRfVar from_stack_1.global_60
  loc_B78DF9: LdPrVar
  loc_B78DFB: LateMemCall
  loc_B78E01: LitVarStr var_9C, "  </tr>"
  loc_B78E06: PopAdLdVar
  loc_B78E07: FLdPr Me
  loc_B78E0A: MemLdRfVar from_stack_1.global_60
  loc_B78E0D: LdPrVar
  loc_B78E0F: LateMemCall
  loc_B78E15: LitVarStr var_9C, "</table>"
  loc_B78E1A: PopAdLdVar
  loc_B78E1B: FLdPr Me
  loc_B78E1E: MemLdRfVar from_stack_1.global_60
  loc_B78E21: LdPrVar
  loc_B78E23: LateMemCall
  loc_B78E29: LitI4 0
  loc_B78E2E: FStR4 var_8C
  loc_B78E31: AryUnlock
  loc_B78E34: ExitProcHresult
  loc_B78E35: NewIfNullPr UserControl
End Function

Private Function Proc_234_25_BCE2C4() 'BCE2C4
  'Data Table: 486D94
  loc_BCDBCC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BCDBD1: PopAdLdVar
  loc_BCDBD2: FLdPr Me
  loc_BCDBD5: MemLdRfVar from_stack_1.global_60
  loc_BCDBD8: LdPrVar
  loc_BCDBDA: LateMemCall
  loc_BCDBE0: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCDBE5: PopAdLdVar
  loc_BCDBE6: FLdPr Me
  loc_BCDBE9: MemLdRfVar from_stack_1.global_60
  loc_BCDBEC: LdPrVar
  loc_BCDBEE: LateMemCall
  loc_BCDBF4: LitVarStr var_94, "    <td colspan=""6"">DESCRIPCI&Oacute;N</td>"
  loc_BCDBF9: PopAdLdVar
  loc_BCDBFA: FLdPr Me
  loc_BCDBFD: MemLdRfVar from_stack_1.global_60
  loc_BCDC00: LdPrVar
  loc_BCDC02: LateMemCall
  loc_BCDC08: LitVarStr var_94, "    <td width=""12" & Chr(37) & """>DERECHO</td>"
  loc_BCDC0D: PopAdLdVar
  loc_BCDC0E: FLdPr Me
  loc_BCDC11: MemLdRfVar from_stack_1.global_60
  loc_BCDC14: LdPrVar
  loc_BCDC16: LateMemCall
  loc_BCDC1C: LitVarStr var_94, "    <td width=""12" & Chr(37) & """>RECARGO</td>"
  loc_BCDC21: PopAdLdVar
  loc_BCDC22: FLdPr Me
  loc_BCDC25: MemLdRfVar from_stack_1.global_60
  loc_BCDC28: LdPrVar
  loc_BCDC2A: LateMemCall
  loc_BCDC30: LitVarStr var_94, "    <td width=""16" & Chr(37) & """>TOTAL</td>"
  loc_BCDC35: PopAdLdVar
  loc_BCDC36: FLdPr Me
  loc_BCDC39: MemLdRfVar from_stack_1.global_60
  loc_BCDC3C: LdPrVar
  loc_BCDC3E: LateMemCall
  loc_BCDC44: LitVarStr var_94, "  </tr>"
  loc_BCDC49: PopAdLdVar
  loc_BCDC4A: FLdPr Me
  loc_BCDC4D: MemLdRfVar from_stack_1.global_60
  loc_BCDC50: LdPrVar
  loc_BCDC52: LateMemCall
  loc_BCDC58: LitI2_Byte 1
  loc_BCDC5A: FLdPr Me
  loc_BCDC5D: MemLdRfVar from_stack_1.global_108
  loc_BCDC60: FLdPr Me
  loc_BCDC63: MemLdI2 global_90
  loc_BCDC66: CI4UI1
  loc_BCDC67: FLdPr Me
  loc_BCDC6A: MemLdI2 global_88
  loc_BCDC6D: CI4UI1
  loc_BCDC6E: FLdPr Me
  loc_BCDC71: MemLdStr global_84
  loc_BCDC74: Ary1LdPr
  loc_BCDC75: MemLdStr global_108
  loc_BCDC78: Ary1LdPr
  loc_BCDC79: MemLdStr global_0
  loc_BCDC7C: LitI2_Byte 1
  loc_BCDC7E: FnUBound
  loc_BCDC80: CI2I4
  loc_BCDC81: ForI2 var_A8
  loc_BCDC87: LitVarStr var_94, "  <tr>"
  loc_BCDC8C: PopAdLdVar
  loc_BCDC8D: FLdPr Me
  loc_BCDC90: MemLdRfVar from_stack_1.global_60
  loc_BCDC93: LdPrVar
  loc_BCDC95: LateMemCall
  loc_BCDC9B: LitStr "    <td colspan=""9"" align=""left"">"
  loc_BCDC9E: FLdPr Me
  loc_BCDCA1: MemLdI2 global_108
  loc_BCDCA4: CI4UI1
  loc_BCDCA5: FLdPr Me
  loc_BCDCA8: MemLdI2 global_90
  loc_BCDCAB: CI4UI1
  loc_BCDCAC: FLdPr Me
  loc_BCDCAF: MemLdI2 global_88
  loc_BCDCB2: CI4UI1
  loc_BCDCB3: FLdPr Me
  loc_BCDCB6: MemLdStr global_84
  loc_BCDCB9: Ary1LdPr
  loc_BCDCBA: MemLdStr global_108
  loc_BCDCBD: Ary1LdPr
  loc_BCDCBE: MemLdStr global_0
  loc_BCDCC1: Ary1LdPr
  loc_BCDCC2: MemLdStr global_4
  loc_BCDCC5: ConcatStr
  loc_BCDCC6: FStStrNoPop var_AC
  loc_BCDCC9: LitStr "</td>"
  loc_BCDCCC: ConcatStr
  loc_BCDCCD: CVarStr var_BC
  loc_BCDCD0: PopAdLdVar
  loc_BCDCD1: FLdPr Me
  loc_BCDCD4: MemLdRfVar from_stack_1.global_60
  loc_BCDCD7: LdPrVar
  loc_BCDCD9: LateMemCall
  loc_BCDCDF: FFree1Str var_AC
  loc_BCDCE2: FFree1Var var_BC = ""
  loc_BCDCE5: LitVarStr var_94, "  </tr>"
  loc_BCDCEA: PopAdLdVar
  loc_BCDCEB: FLdPr Me
  loc_BCDCEE: MemLdRfVar from_stack_1.global_60
  loc_BCDCF1: LdPrVar
  loc_BCDCF3: LateMemCall
  loc_BCDCF9: LitI2_Byte 1
  loc_BCDCFB: FLdPr Me
  loc_BCDCFE: MemLdRfVar from_stack_1.global_110
  loc_BCDD01: FLdPr Me
  loc_BCDD04: MemLdI2 global_108
  loc_BCDD07: CI4UI1
  loc_BCDD08: FLdPr Me
  loc_BCDD0B: MemLdI2 global_90
  loc_BCDD0E: CI4UI1
  loc_BCDD0F: FLdPr Me
  loc_BCDD12: MemLdI2 global_88
  loc_BCDD15: CI4UI1
  loc_BCDD16: FLdPr Me
  loc_BCDD19: MemLdStr global_84
  loc_BCDD1C: Ary1LdPr
  loc_BCDD1D: MemLdStr global_108
  loc_BCDD20: Ary1LdPr
  loc_BCDD21: MemLdStr global_0
  loc_BCDD24: Ary1LdPr
  loc_BCDD25: MemLdStr global_8
  loc_BCDD28: LitI2_Byte 1
  loc_BCDD2A: FnUBound
  loc_BCDD2C: CI2I4
  loc_BCDD2D: ForI2 var_C0
  loc_BCDD33: LitVarStr var_94, "  <tr>"
  loc_BCDD38: PopAdLdVar
  loc_BCDD39: FLdPr Me
  loc_BCDD3C: MemLdRfVar from_stack_1.global_60
  loc_BCDD3F: LdPrVar
  loc_BCDD41: LateMemCall
  loc_BCDD47: LitStr "    <td colspan=""4"" rowspan="""
  loc_BCDD4A: FLdPr Me
  loc_BCDD4D: MemLdI2 global_110
  loc_BCDD50: CI4UI1
  loc_BCDD51: FLdPr Me
  loc_BCDD54: MemLdI2 global_108
  loc_BCDD57: CI4UI1
  loc_BCDD58: FLdPr Me
  loc_BCDD5B: MemLdI2 global_90
  loc_BCDD5E: CI4UI1
  loc_BCDD5F: FLdPr Me
  loc_BCDD62: MemLdI2 global_88
  loc_BCDD65: CI4UI1
  loc_BCDD66: FLdPr Me
  loc_BCDD69: MemLdStr global_84
  loc_BCDD6C: Ary1LdPr
  loc_BCDD6D: MemLdStr global_108
  loc_BCDD70: Ary1LdPr
  loc_BCDD71: MemLdStr global_0
  loc_BCDD74: Ary1LdPr
  loc_BCDD75: MemLdStr global_8
  loc_BCDD78: Ary1LdPr
  loc_BCDD79: MemLdStr global_4
  loc_BCDD7C: LitI2_Byte 1
  loc_BCDD7E: FnUBound
  loc_BCDD80: CStrI4
  loc_BCDD82: FStStrNoPop var_AC
  loc_BCDD85: ConcatStr
  loc_BCDD86: FStStrNoPop var_C4
  loc_BCDD89: LitStr """ valign=""top"">Periodo: "
  loc_BCDD8C: ConcatStr
  loc_BCDD8D: FStStrNoPop var_C8
  loc_BCDD90: FLdPr Me
  loc_BCDD93: MemLdI2 global_110
  loc_BCDD96: CI4UI1
  loc_BCDD97: FLdPr Me
  loc_BCDD9A: MemLdI2 global_108
  loc_BCDD9D: CI4UI1
  loc_BCDD9E: FLdPr Me
  loc_BCDDA1: MemLdI2 global_90
  loc_BCDDA4: CI4UI1
  loc_BCDDA5: FLdPr Me
  loc_BCDDA8: MemLdI2 global_88
  loc_BCDDAB: CI4UI1
  loc_BCDDAC: FLdPr Me
  loc_BCDDAF: MemLdStr global_84
  loc_BCDDB2: Ary1LdPr
  loc_BCDDB3: MemLdStr global_108
  loc_BCDDB6: Ary1LdPr
  loc_BCDDB7: MemLdStr global_0
  loc_BCDDBA: Ary1LdPr
  loc_BCDDBB: MemLdStr global_8
  loc_BCDDBE: Ary1LdPr
  loc_BCDDBF: MemLdStr global_0
  loc_BCDDC2: ConcatStr
  loc_BCDDC3: FStStrNoPop var_CC
  loc_BCDDC6: LitStr "</td>"
  loc_BCDDC9: ConcatStr
  loc_BCDDCA: CVarStr var_BC
  loc_BCDDCD: PopAdLdVar
  loc_BCDDCE: FLdPr Me
  loc_BCDDD1: MemLdRfVar from_stack_1.global_60
  loc_BCDDD4: LdPrVar
  loc_BCDDD6: LateMemCall
  loc_BCDDDC: FFreeStr var_AC = "": var_C4 = "": var_C8 = ""
  loc_BCDDE7: FFree1Var var_BC = ""
  loc_BCDDEA: LitStr "    <td width=""9" & Chr(37) & """ rowspan="""
  loc_BCDDED: FLdPr Me
  loc_BCDDF0: MemLdI2 global_110
  loc_BCDDF3: CI4UI1
  loc_BCDDF4: FLdPr Me
  loc_BCDDF7: MemLdI2 global_108
  loc_BCDDFA: CI4UI1
  loc_BCDDFB: FLdPr Me
  loc_BCDDFE: MemLdI2 global_90
  loc_BCDE01: CI4UI1
  loc_BCDE02: FLdPr Me
  loc_BCDE05: MemLdI2 global_88
  loc_BCDE08: CI4UI1
  loc_BCDE09: FLdPr Me
  loc_BCDE0C: MemLdStr global_84
  loc_BCDE0F: Ary1LdPr
  loc_BCDE10: MemLdStr global_108
  loc_BCDE13: Ary1LdPr
  loc_BCDE14: MemLdStr global_0
  loc_BCDE17: Ary1LdPr
  loc_BCDE18: MemLdStr global_8
  loc_BCDE1B: Ary1LdPr
  loc_BCDE1C: MemLdStr global_4
  loc_BCDE1F: LitI2_Byte 1
  loc_BCDE21: FnUBound
  loc_BCDE23: CStrI4
  loc_BCDE25: FStStrNoPop var_AC
  loc_BCDE28: ConcatStr
  loc_BCDE29: FStStrNoPop var_C4
  loc_BCDE2C: LitStr """ valign=""top"">Bimestre:</td>"
  loc_BCDE2F: ConcatStr
  loc_BCDE30: CVarStr var_BC
  loc_BCDE33: PopAdLdVar
  loc_BCDE34: FLdPr Me
  loc_BCDE37: MemLdRfVar from_stack_1.global_60
  loc_BCDE3A: LdPrVar
  loc_BCDE3C: LateMemCall
  loc_BCDE42: FFreeStr var_AC = ""
  loc_BCDE49: FFree1Var var_BC = ""
  loc_BCDE4C: LitI2_Byte 1
  loc_BCDE4E: FLdPr Me
  loc_BCDE51: MemLdRfVar from_stack_1.global_112
  loc_BCDE54: FLdPr Me
  loc_BCDE57: MemLdI2 global_110
  loc_BCDE5A: CI4UI1
  loc_BCDE5B: FLdPr Me
  loc_BCDE5E: MemLdI2 global_108
  loc_BCDE61: CI4UI1
  loc_BCDE62: FLdPr Me
  loc_BCDE65: MemLdI2 global_90
  loc_BCDE68: CI4UI1
  loc_BCDE69: FLdPr Me
  loc_BCDE6C: MemLdI2 global_88
  loc_BCDE6F: CI4UI1
  loc_BCDE70: FLdPr Me
  loc_BCDE73: MemLdStr global_84
  loc_BCDE76: Ary1LdPr
  loc_BCDE77: MemLdStr global_108
  loc_BCDE7A: Ary1LdPr
  loc_BCDE7B: MemLdStr global_0
  loc_BCDE7E: Ary1LdPr
  loc_BCDE7F: MemLdStr global_8
  loc_BCDE82: Ary1LdPr
  loc_BCDE83: MemLdStr global_4
  loc_BCDE86: LitI2_Byte 1
  loc_BCDE88: FnUBound
  loc_BCDE8A: CI2I4
  loc_BCDE8B: ForI2 var_D0
  loc_BCDE91: FLdPr Me
  loc_BCDE94: MemLdI2 global_112
  loc_BCDE97: LitI2_Byte 1
  loc_BCDE99: GtI2
  loc_BCDE9A: BranchF loc_BCDEB1
  loc_BCDE9D: LitVarStr var_94, "  <tr>"
  loc_BCDEA2: PopAdLdVar
  loc_BCDEA3: FLdPr Me
  loc_BCDEA6: MemLdRfVar from_stack_1.global_60
  loc_BCDEA9: LdPrVar
  loc_BCDEAB: LateMemCall
  loc_BCDEB1: FLdPr Me
  loc_BCDEB4: MemLdI2 global_112
  loc_BCDEB7: CI4UI1
  loc_BCDEB8: FLdPr Me
  loc_BCDEBB: MemLdI2 global_110
  loc_BCDEBE: CI4UI1
  loc_BCDEBF: FLdPr Me
  loc_BCDEC2: MemLdI2 global_108
  loc_BCDEC5: CI4UI1
  loc_BCDEC6: FLdPr Me
  loc_BCDEC9: MemLdI2 global_90
  loc_BCDECC: CI4UI1
  loc_BCDECD: FLdPr Me
  loc_BCDED0: MemLdI2 global_88
  loc_BCDED3: CI4UI1
  loc_BCDED4: FLdPr Me
  loc_BCDED7: MemLdStr global_84
  loc_BCDEDA: AryLock
  loc_BCDEDD: Ary1LdPr
  loc_BCDEDE: MemLdStr global_108
  loc_BCDEE1: AryLock
  loc_BCDEE4: Ary1LdPr
  loc_BCDEE5: MemLdStr global_0
  loc_BCDEE8: AryLock
  loc_BCDEEB: Ary1LdPr
  loc_BCDEEC: MemLdStr global_8
  loc_BCDEEF: AryLock
  loc_BCDEF2: Ary1LdPr
  loc_BCDEF3: MemLdStr global_4
  loc_BCDEF6: AryLock
  loc_BCDEF9: Ary1LdRf
  loc_BCDEFA: FStR4 var_E8
  loc_BCDEFD: LitStr "    <td width=""7" & Chr(37) & """ align=""center"">"
  loc_BCDF00: FMemLdR4 var_E8(0)
  loc_BCDF05: ConcatStr
  loc_BCDF06: FStStrNoPop var_AC
  loc_BCDF09: LitStr "</td>"
  loc_BCDF0C: ConcatStr
  loc_BCDF0D: CVarStr var_BC
  loc_BCDF10: PopAdLdVar
  loc_BCDF11: FLdPr Me
  loc_BCDF14: MemLdRfVar from_stack_1.global_60
  loc_BCDF17: LdPrVar
  loc_BCDF19: LateMemCall
  loc_BCDF1F: FFree1Str var_AC
  loc_BCDF22: FFree1Var var_BC = ""
  loc_BCDF25: FMemLdRf 0
  loc_BCDF2A: CVarRef
  loc_BCDF2F: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BCDF34: FStVarCopyObj var_BC
  loc_BCDF37: FLdRfVar var_BC
  loc_BCDF3A: FMemLdR4 var_E8(4)
  loc_BCDF3F: LitStr "0,00"
  loc_BCDF42: EqStr
  loc_BCDF44: CVarBoolI2 var_94
  loc_BCDF48: FLdRfVar var_108
  loc_BCDF4B: ImpAdCallFPR4  = IIf(, , )
  loc_BCDF50: LitStr vbNullString
  loc_BCDF53: LitI2_Byte 0
  loc_BCDF55: LitI2_Byte 0
  loc_BCDF57: LitI2_Byte 0
  loc_BCDF59: LitStr "right"
  loc_BCDF5C: FLdRfVar var_108
  loc_BCDF5F: CStrVarVal var_AC
  loc_BCDF63: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BCDF68: CVarStr var_118
  loc_BCDF6B: PopAdLdVar
  loc_BCDF6C: FLdPr Me
  loc_BCDF6F: MemLdRfVar from_stack_1.global_60
  loc_BCDF72: LdPrVar
  loc_BCDF74: LateMemCall
  loc_BCDF7A: FFree1Str var_AC
  loc_BCDF7D: FFreeVar var_94 = "": var_BC = "": var_108 = ""
  loc_BCDF88: FMemLdRf 0
  loc_BCDF8D: CVarRef
  loc_BCDF92: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BCDF97: FStVarCopyObj var_BC
  loc_BCDF9A: FLdRfVar var_BC
  loc_BCDF9D: FMemLdR4 var_E8(8)
  loc_BCDFA2: LitStr "0,00"
  loc_BCDFA5: EqStr
  loc_BCDFA7: CVarBoolI2 var_94
  loc_BCDFAB: FLdRfVar var_108
  loc_BCDFAE: ImpAdCallFPR4  = IIf(, , )
  loc_BCDFB3: LitStr vbNullString
  loc_BCDFB6: LitI2_Byte 0
  loc_BCDFB8: LitI2_Byte 0
  loc_BCDFBA: LitI2_Byte 0
  loc_BCDFBC: LitStr "right"
  loc_BCDFBF: FLdRfVar var_108
  loc_BCDFC2: CStrVarVal var_AC
  loc_BCDFC6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BCDFCB: CVarStr var_118
  loc_BCDFCE: PopAdLdVar
  loc_BCDFCF: FLdPr Me
  loc_BCDFD2: MemLdRfVar from_stack_1.global_60
  loc_BCDFD5: LdPrVar
  loc_BCDFD7: LateMemCall
  loc_BCDFDD: FFree1Str var_AC
  loc_BCDFE0: FFreeVar var_94 = "": var_BC = "": var_108 = ""
  loc_BCDFEB: FMemLdRf 0
  loc_BCDFF0: CVarRef
  loc_BCDFF5: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BCDFFA: FStVarCopyObj var_BC
  loc_BCDFFD: FLdRfVar var_BC
  loc_BCE000: FMemLdR4 var_E8(12)
  loc_BCE005: LitStr "0,00"
  loc_BCE008: EqStr
  loc_BCE00A: CVarBoolI2 var_94
  loc_BCE00E: FLdRfVar var_108
  loc_BCE011: ImpAdCallFPR4  = IIf(, , )
  loc_BCE016: LitStr vbNullString
  loc_BCE019: LitI2_Byte 0
  loc_BCE01B: LitI2_Byte 0
  loc_BCE01D: LitI2_Byte 0
  loc_BCE01F: LitStr "right"
  loc_BCE022: FLdRfVar var_108
  loc_BCE025: CStrVarVal var_AC
  loc_BCE029: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BCE02E: CVarStr var_118
  loc_BCE031: PopAdLdVar
  loc_BCE032: FLdPr Me
  loc_BCE035: MemLdRfVar from_stack_1.global_60
  loc_BCE038: LdPrVar
  loc_BCE03A: LateMemCall
  loc_BCE040: FFree1Str var_AC
  loc_BCE043: FFreeVar var_94 = "": var_BC = "": var_108 = ""
  loc_BCE04E: LitI4 0
  loc_BCE053: FStR4 var_E8
  loc_BCE056: AryUnlock
  loc_BCE059: AryUnlock
  loc_BCE05C: AryUnlock
  loc_BCE05F: AryUnlock
  loc_BCE062: AryUnlock
  loc_BCE065: LitVarStr var_94, "  </tr>"
  loc_BCE06A: PopAdLdVar
  loc_BCE06B: FLdPr Me
  loc_BCE06E: MemLdRfVar from_stack_1.global_60
  loc_BCE071: LdPrVar
  loc_BCE073: LateMemCall
  loc_BCE079: FLdPr Me
  loc_BCE07C: MemLdRfVar from_stack_1.global_112
  loc_BCE07F: NextI2 var_D0, loc_BCDE91
  loc_BCE084: FLdPr Me
  loc_BCE087: MemLdRfVar from_stack_1.global_110
  loc_BCE08A: NextI2 var_C0, loc_BCDD33
  loc_BCE08F: FLdPr Me
  loc_BCE092: MemLdRfVar from_stack_1.global_108
  loc_BCE095: NextI2 var_A8, loc_BCDC87
  loc_BCE09A: FLdPr Me
  loc_BCE09D: MemLdI2 global_90
  loc_BCE0A0: CI4UI1
  loc_BCE0A1: FLdPr Me
  loc_BCE0A4: MemLdI2 global_88
  loc_BCE0A7: CI4UI1
  loc_BCE0A8: FLdPr Me
  loc_BCE0AB: MemLdStr global_84
  loc_BCE0AE: Ary1LdPr
  loc_BCE0AF: MemLdStr global_108
  loc_BCE0B2: LitI2_Byte 1
  loc_BCE0B4: FnUBound
  loc_BCE0B6: LtI4
  loc_BCE0B7: BranchF loc_BCE2C3
  loc_BCE0BA: LitVarStr var_128, "</table><p>"
  loc_BCE0BF: LitVarStr var_F8, vbNullString
  loc_BCE0C4: FStVarCopyObj var_108
  loc_BCE0C7: FLdRfVar var_108
  loc_BCE0CA: LitVarStr var_A4, "<div align=""right"" class=""Normal"">Para el CONTRIBUYENTE</div>"
  loc_BCE0CF: FStVarCopyObj var_BC
  loc_BCE0D2: FLdRfVar var_BC
  loc_BCE0D5: FLdPr Me
  loc_BCE0D8: MemLdUI1 global_116
  loc_BCE0DC: CI2UI1
  loc_BCE0DE: LitI2_Byte 1
  loc_BCE0E0: EqI2
  loc_BCE0E1: CVarBoolI2 var_94
  loc_BCE0E5: FLdRfVar var_118
  loc_BCE0E8: ImpAdCallFPR4  = IIf(, , )
  loc_BCE0ED: FLdRfVar var_118
  loc_BCE0F0: ConcatVar var_138
  loc_BCE0F4: LitVarStr var_148, "<hr></p><p>&nbsp;</p>"
  loc_BCE0F9: ConcatVar var_158
  loc_BCE0FD: PopAdLdVar
  loc_BCE0FE: FLdPr Me
  loc_BCE101: MemLdRfVar from_stack_1.global_60
  loc_BCE104: LdPrVar
  loc_BCE106: LateMemCall
  loc_BCE10C: FFreeVar var_94 = "": var_BC = "": var_108 = "": var_118 = "": var_138 = ""
  loc_BCE11B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BCE120: PopAdLdVar
  loc_BCE121: FLdPr Me
  loc_BCE124: MemLdRfVar from_stack_1.global_60
  loc_BCE127: LdPrVar
  loc_BCE129: LateMemCall
  loc_BCE12F: LitVarStr var_94, "  <tr align=""right"" class=""Encabezado"">"
  loc_BCE134: PopAdLdVar
  loc_BCE135: FLdPr Me
  loc_BCE138: MemLdRfVar from_stack_1.global_60
  loc_BCE13B: LdPrVar
  loc_BCE13D: LateMemCall
  loc_BCE143: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_BCE146: FLdPr Me
  loc_BCE149: MemLdI2 global_90
  loc_BCE14C: CStrUI1
  loc_BCE14E: FStStrNoPop var_AC
  loc_BCE151: ConcatStr
  loc_BCE152: FStStrNoPop var_C4
  loc_BCE155: LitStr "/"
  loc_BCE158: ConcatStr
  loc_BCE159: FStStrNoPop var_C8
  loc_BCE15C: FLdPr Me
  loc_BCE15F: MemLdI2 global_88
  loc_BCE162: CI4UI1
  loc_BCE163: FLdPr Me
  loc_BCE166: MemLdStr global_84
  loc_BCE169: Ary1LdPr
  loc_BCE16A: MemLdStr global_108
  loc_BCE16D: LitI2_Byte 1
  loc_BCE16F: FnUBound
  loc_BCE171: CStrI4
  loc_BCE173: FStStrNoPop var_CC
  loc_BCE176: ConcatStr
  loc_BCE177: FStStrNoPop var_16C
  loc_BCE17A: LitStr "</td>"
  loc_BCE17D: ConcatStr
  loc_BCE17E: CVarStr var_BC
  loc_BCE181: PopAdLdVar
  loc_BCE182: FLdPr Me
  loc_BCE185: MemLdRfVar from_stack_1.global_60
  loc_BCE188: LdPrVar
  loc_BCE18A: LateMemCall
  loc_BCE190: FFreeStr var_AC = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_BCE19D: FFree1Var var_BC = ""
  loc_BCE1A0: LitVarStr var_94, "    <td width=""12" & Chr(37) & """>DERECHO</td>"
  loc_BCE1A5: PopAdLdVar
  loc_BCE1A6: FLdPr Me
  loc_BCE1A9: MemLdRfVar from_stack_1.global_60
  loc_BCE1AC: LdPrVar
  loc_BCE1AE: LateMemCall
  loc_BCE1B4: LitVarStr var_94, "    <td width=""12" & Chr(37) & """>RECARGO</td>"
  loc_BCE1B9: PopAdLdVar
  loc_BCE1BA: FLdPr Me
  loc_BCE1BD: MemLdRfVar from_stack_1.global_60
  loc_BCE1C0: LdPrVar
  loc_BCE1C2: LateMemCall
  loc_BCE1C8: LitVarStr var_94, "    <td width=""16" & Chr(37) & """>TOTAL</td>"
  loc_BCE1CD: PopAdLdVar
  loc_BCE1CE: FLdPr Me
  loc_BCE1D1: MemLdRfVar from_stack_1.global_60
  loc_BCE1D4: LdPrVar
  loc_BCE1D6: LateMemCall
  loc_BCE1DC: LitVarStr var_94, "  </tr>"
  loc_BCE1E1: PopAdLdVar
  loc_BCE1E2: FLdPr Me
  loc_BCE1E5: MemLdRfVar from_stack_1.global_60
  loc_BCE1E8: LdPrVar
  loc_BCE1EA: LateMemCall
  loc_BCE1F0: LitVarStr var_94, "  <tr align=""right"" class=""Normal"">"
  loc_BCE1F5: PopAdLdVar
  loc_BCE1F6: FLdPr Me
  loc_BCE1F9: MemLdRfVar from_stack_1.global_60
  loc_BCE1FC: LdPrVar
  loc_BCE1FE: LateMemCall
  loc_BCE204: FLdPr Me
  loc_BCE207: MemLdI2 global_90
  loc_BCE20A: CI4UI1
  loc_BCE20B: FLdPr Me
  loc_BCE20E: MemLdI2 global_88
  loc_BCE211: CI4UI1
  loc_BCE212: FLdPr Me
  loc_BCE215: MemLdStr global_84
  loc_BCE218: AryLock
  loc_BCE21B: Ary1LdPr
  loc_BCE21C: MemLdStr global_108
  loc_BCE21F: AryLock
  loc_BCE222: Ary1LdPr
  loc_BCE223: MemLdRfVar from_stack_1.global_4
  loc_BCE226: FStR4 var_178
  loc_BCE229: LitStr "    <td>"
  loc_BCE22C: FMemLdR4 var_178(4)
  loc_BCE231: ConcatStr
  loc_BCE232: FStStrNoPop var_AC
  loc_BCE235: LitStr "</td>"
  loc_BCE238: ConcatStr
  loc_BCE239: CVarStr var_BC
  loc_BCE23C: PopAdLdVar
  loc_BCE23D: FLdPr Me
  loc_BCE240: MemLdRfVar from_stack_1.global_60
  loc_BCE243: LdPrVar
  loc_BCE245: LateMemCall
  loc_BCE24B: FFree1Str var_AC
  loc_BCE24E: FFree1Var var_BC = ""
  loc_BCE251: LitStr "    <td>"
  loc_BCE254: FMemLdR4 var_178(8)
  loc_BCE259: ConcatStr
  loc_BCE25A: FStStrNoPop var_AC
  loc_BCE25D: LitStr "</td>"
  loc_BCE260: ConcatStr
  loc_BCE261: CVarStr var_BC
  loc_BCE264: PopAdLdVar
  loc_BCE265: FLdPr Me
  loc_BCE268: MemLdRfVar from_stack_1.global_60
  loc_BCE26B: LdPrVar
  loc_BCE26D: LateMemCall
  loc_BCE273: FFree1Str var_AC
  loc_BCE276: FFree1Var var_BC = ""
  loc_BCE279: LitStr "    <td>"
  loc_BCE27C: FMemLdR4 var_178(12)
  loc_BCE281: ConcatStr
  loc_BCE282: FStStrNoPop var_AC
  loc_BCE285: LitStr "</td>"
  loc_BCE288: ConcatStr
  loc_BCE289: CVarStr var_BC
  loc_BCE28C: PopAdLdVar
  loc_BCE28D: FLdPr Me
  loc_BCE290: MemLdRfVar from_stack_1.global_60
  loc_BCE293: LdPrVar
  loc_BCE295: LateMemCall
  loc_BCE29B: FFree1Str var_AC
  loc_BCE29E: FFree1Var var_BC = ""
  loc_BCE2A1: LitI4 0
  loc_BCE2A6: FStR4 var_178
  loc_BCE2A9: AryUnlock
  loc_BCE2AC: AryUnlock
  loc_BCE2AF: LitVarStr var_94, "  </tr></table></td></tr></table>"
  loc_BCE2B4: PopAdLdVar
  loc_BCE2B5: FLdPr Me
  loc_BCE2B8: MemLdRfVar from_stack_1.global_60
  loc_BCE2BB: LdPrVar
  loc_BCE2BD: LateMemCall
  loc_BCE2C3: ExitProcHresult
End Function

Private Function Proc_234_26_AF8F80() 'AF8F80
  'Data Table: 486D94
  loc_AF8DA4: LitVarStr var_94, "  <tr align=""right"">"
  loc_AF8DA9: PopAdLdVar
  loc_AF8DAA: FLdPr Me
  loc_AF8DAD: MemLdRfVar from_stack_1.global_60
  loc_AF8DB0: LdPrVar
  loc_AF8DB2: LateMemCall
  loc_AF8DB8: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_AF8DBD: PopAdLdVar
  loc_AF8DBE: FLdPr Me
  loc_AF8DC1: MemLdRfVar from_stack_1.global_60
  loc_AF8DC4: LdPrVar
  loc_AF8DC6: LateMemCall
  loc_AF8DCC: LitVarStr var_94, "    <td class=""Encabezado"">D&Iacute;AS H&Aacute;BILES ADMIN.: </td>"
  loc_AF8DD1: PopAdLdVar
  loc_AF8DD2: FLdPr Me
  loc_AF8DD5: MemLdRfVar from_stack_1.global_60
  loc_AF8DD8: LdPrVar
  loc_AF8DDA: LateMemCall
  loc_AF8DE0: LitVarStr var_94, "    <td class=""Totales"">7</td>"
  loc_AF8DE5: PopAdLdVar
  loc_AF8DE6: FLdPr Me
  loc_AF8DE9: MemLdRfVar from_stack_1.global_60
  loc_AF8DEC: LdPrVar
  loc_AF8DEE: LateMemCall
  loc_AF8DF4: LitVarStr var_94, "    <td class=""Encabezado"">COMISI&Oacute;N ADMIN.: </td>"
  loc_AF8DF9: PopAdLdVar
  loc_AF8DFA: FLdPr Me
  loc_AF8DFD: MemLdRfVar from_stack_1.global_60
  loc_AF8E00: LdPrVar
  loc_AF8E02: LateMemCall
  loc_AF8E08: LitStr "    <td class=""Totales"">"
  loc_AF8E0B: FLdPr Me
  loc_AF8E0E: MemLdI2 global_88
  loc_AF8E11: CI4UI1
  loc_AF8E12: FLdPr Me
  loc_AF8E15: MemLdStr global_84
  loc_AF8E18: Ary1LdPr
  loc_AF8E19: MemLdStr global_104
  loc_AF8E1C: ConcatStr
  loc_AF8E1D: FStStrNoPop var_A8
  loc_AF8E20: LitStr "</td>"
  loc_AF8E23: ConcatStr
  loc_AF8E24: CVarStr var_B8
  loc_AF8E27: PopAdLdVar
  loc_AF8E28: FLdPr Me
  loc_AF8E2B: MemLdRfVar from_stack_1.global_60
  loc_AF8E2E: LdPrVar
  loc_AF8E30: LateMemCall
  loc_AF8E36: FFree1Str var_A8
  loc_AF8E39: FFree1Var var_B8 = ""
  loc_AF8E3C: LitVarStr var_94, "    <td class=""Encabezado"">TOTALES:</td>"
  loc_AF8E41: PopAdLdVar
  loc_AF8E42: FLdPr Me
  loc_AF8E45: MemLdRfVar from_stack_1.global_60
  loc_AF8E48: LdPrVar
  loc_AF8E4A: LateMemCall
  loc_AF8E50: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AF8E53: FLdPr Me
  loc_AF8E56: MemLdI2 global_88
  loc_AF8E59: CI4UI1
  loc_AF8E5A: FLdPr Me
  loc_AF8E5D: MemLdStr global_120
  loc_AF8E60: Ary1LdPr
  loc_AF8E61: MemLdStr global_4
  loc_AF8E64: ConcatStr
  loc_AF8E65: FStStrNoPop var_A8
  loc_AF8E68: LitStr "</td>"
  loc_AF8E6B: ConcatStr
  loc_AF8E6C: CVarStr var_B8
  loc_AF8E6F: PopAdLdVar
  loc_AF8E70: FLdPr Me
  loc_AF8E73: MemLdRfVar from_stack_1.global_60
  loc_AF8E76: LdPrVar
  loc_AF8E78: LateMemCall
  loc_AF8E7E: FFree1Str var_A8
  loc_AF8E81: FFree1Var var_B8 = ""
  loc_AF8E84: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AF8E87: FLdPr Me
  loc_AF8E8A: MemLdI2 global_88
  loc_AF8E8D: CI4UI1
  loc_AF8E8E: FLdPr Me
  loc_AF8E91: MemLdStr global_120
  loc_AF8E94: Ary1LdPr
  loc_AF8E95: MemLdStr global_8
  loc_AF8E98: ConcatStr
  loc_AF8E99: FStStrNoPop var_A8
  loc_AF8E9C: LitStr "</td>"
  loc_AF8E9F: ConcatStr
  loc_AF8EA0: CVarStr var_B8
  loc_AF8EA3: PopAdLdVar
  loc_AF8EA4: FLdPr Me
  loc_AF8EA7: MemLdRfVar from_stack_1.global_60
  loc_AF8EAA: LdPrVar
  loc_AF8EAC: LateMemCall
  loc_AF8EB2: FFree1Str var_A8
  loc_AF8EB5: FFree1Var var_B8 = ""
  loc_AF8EB8: LitStr "    <td align=""right"" class=""Total"">"
  loc_AF8EBB: FLdPr Me
  loc_AF8EBE: MemLdI2 global_88
  loc_AF8EC1: CI4UI1
  loc_AF8EC2: FLdPr Me
  loc_AF8EC5: MemLdStr global_120
  loc_AF8EC8: Ary1LdPr
  loc_AF8EC9: MemLdStr global_12
  loc_AF8ECC: ConcatStr
  loc_AF8ECD: FStStrNoPop var_A8
  loc_AF8ED0: LitStr "</td>"
  loc_AF8ED3: ConcatStr
  loc_AF8ED4: CVarStr var_B8
  loc_AF8ED7: PopAdLdVar
  loc_AF8ED8: FLdPr Me
  loc_AF8EDB: MemLdRfVar from_stack_1.global_60
  loc_AF8EDE: LdPrVar
  loc_AF8EE0: LateMemCall
  loc_AF8EE6: FFree1Str var_A8
  loc_AF8EE9: FFree1Var var_B8 = ""
  loc_AF8EEC: LitVarStr var_94, "  </tr>"
  loc_AF8EF1: PopAdLdVar
  loc_AF8EF2: FLdPr Me
  loc_AF8EF5: MemLdRfVar from_stack_1.global_60
  loc_AF8EF8: LdPrVar
  loc_AF8EFA: LateMemCall
  loc_AF8F00: LitVarStr var_94, "  <tr>"
  loc_AF8F05: PopAdLdVar
  loc_AF8F06: FLdPr Me
  loc_AF8F09: MemLdRfVar from_stack_1.global_60
  loc_AF8F0C: LdPrVar
  loc_AF8F0E: LateMemCall
  loc_AF8F14: LitStr "    <td colspan=""9"" valign=""top"">SON PESOS: <strong>"
  loc_AF8F17: FLdPr Me
  loc_AF8F1A: MemLdI2 global_88
  loc_AF8F1D: CI4UI1
  loc_AF8F1E: FLdPr Me
  loc_AF8F21: MemLdStr global_120
  loc_AF8F24: Ary1LdPr
  loc_AF8F25: MemLdStr global_12
  loc_AF8F28: CR8Str
  loc_AF8F2A: PopFPR8
  loc_AF8F2B: ImpAdCallI2 Proc_272_28_AB2798(, )
  loc_AF8F30: FStStrNoPop var_A8
  loc_AF8F33: ConcatStr
  loc_AF8F34: FStStrNoPop var_BC
  loc_AF8F37: LitStr ".---</strong></td>"
  loc_AF8F3A: ConcatStr
  loc_AF8F3B: CVarStr var_B8
  loc_AF8F3E: PopAdLdVar
  loc_AF8F3F: FLdPr Me
  loc_AF8F42: MemLdRfVar from_stack_1.global_60
  loc_AF8F45: LdPrVar
  loc_AF8F47: LateMemCall
  loc_AF8F4D: FFreeStr var_A8 = ""
  loc_AF8F54: FFree1Var var_B8 = ""
  loc_AF8F57: LitVarStr var_94, "  </tr>"
  loc_AF8F5C: PopAdLdVar
  loc_AF8F5D: FLdPr Me
  loc_AF8F60: MemLdRfVar from_stack_1.global_60
  loc_AF8F63: LdPrVar
  loc_AF8F65: LateMemCall
  loc_AF8F6B: LitVarStr var_94, "</table>"
  loc_AF8F70: PopAdLdVar
  loc_AF8F71: FLdPr Me
  loc_AF8F74: MemLdRfVar from_stack_1.global_60
  loc_AF8F77: LdPrVar
  loc_AF8F79: LateMemCall
  loc_AF8F7F: ExitProcHresult
End Function

Private Function Proc_234_27_B03868() 'B03868
  'Data Table: 486D94
  loc_B03670: LitVarStr var_94, "<table>"
  loc_B03675: PopAdLdVar
  loc_B03676: FLdPr Me
  loc_B03679: MemLdRfVar from_stack_1.global_60
  loc_B0367C: LdPrVar
  loc_B0367E: LateMemCall
  loc_B03684: LitVarStr var_94, "  <tr class=""Normal"">"
  loc_B03689: PopAdLdVar
  loc_B0368A: FLdPr Me
  loc_B0368D: MemLdRfVar from_stack_1.global_60
  loc_B03690: LdPrVar
  loc_B03692: LateMemCall
  loc_B03698: LitVarStr var_94, "    <td><strong>NOTA:</strong></td>"
  loc_B0369D: PopAdLdVar
  loc_B0369E: FLdPr Me
  loc_B036A1: MemLdRfVar from_stack_1.global_60
  loc_B036A4: LdPrVar
  loc_B036A6: LateMemCall
  loc_B036AC: LitStr "    <td align=""justify""><strong>Los Recargos están calculados al "
  loc_B036AF: FLdPr Me
  loc_B036B2: MemLdI2 global_88
  loc_B036B5: CI4UI1
  loc_B036B6: FLdPr Me
  loc_B036B9: MemLdStr global_84
  loc_B036BC: Ary1LdPr
  loc_B036BD: MemLdStr global_4
  loc_B036C0: ConcatStr
  loc_B036C1: FStStrNoPop var_A8
  loc_B036C4: LitStr ".<br>"
  loc_B036C7: ConcatStr
  loc_B036C8: CVarStr var_B8
  loc_B036CB: PopAdLdVar
  loc_B036CC: FLdPr Me
  loc_B036CF: MemLdRfVar from_stack_1.global_60
  loc_B036D2: LdPrVar
  loc_B036D4: LateMemCall
  loc_B036DA: FFree1Str var_A8
  loc_B036DD: FFree1Var var_B8 = ""
  loc_B036E0: LitVarStr var_94, "        Normas Legales: Art. 113 siguientes y concordantes Código fiscal Art. Nº 135 y 136 Ley 1079, COD. TRIBUTARIO MUNICIPAL (RESOL. 224/82)"
  loc_B036E5: PopAdLdVar
  loc_B036E6: FLdPr Me
  loc_B036E9: MemLdRfVar from_stack_1.global_60
  loc_B036EC: LdPrVar
  loc_B036EE: LateMemCall
  loc_B036F4: LitVarStr var_94, "        ORD. TARIFARIA VIGENTE. Queda Ud., emplazado para el pago de las sumas expresadas en la presente boleta, dentro del término de SIETE (7)"
  loc_B036F9: PopAdLdVar
  loc_B036FA: FLdPr Me
  loc_B036FD: MemLdRfVar from_stack_1.global_60
  loc_B03700: LdPrVar
  loc_B03702: LateMemCall
  loc_B03708: LitVarStr var_94, "        DÍAS HÁBILES ADMINISTRATIVOS, vencido el cual se perseguirá el cobro por ejecución Vía Apremio con más costos y costas, e intereses hasta"
  loc_B0370D: PopAdLdVar
  loc_B0370E: FLdPr Me
  loc_B03711: MemLdRfVar from_stack_1.global_60
  loc_B03714: LdPrVar
  loc_B03716: LateMemCall
  loc_B0371C: LitVarStr var_94, "        el momento del efectivo pago (Art. Nº 121 COD. FISCAL)."
  loc_B03721: PopAdLdVar
  loc_B03722: FLdPr Me
  loc_B03725: MemLdRfVar from_stack_1.global_60
  loc_B03728: LdPrVar
  loc_B0372A: LateMemCall
  loc_B03730: LitVarStr var_94, "  </tr>"
  loc_B03735: PopAdLdVar
  loc_B03736: FLdPr Me
  loc_B03739: MemLdRfVar from_stack_1.global_60
  loc_B0373C: LdPrVar
  loc_B0373E: LateMemCall
  loc_B03744: LitVarStr var_94, "</table>"
  loc_B03749: PopAdLdVar
  loc_B0374A: FLdPr Me
  loc_B0374D: MemLdRfVar from_stack_1.global_60
  loc_B03750: LdPrVar
  loc_B03752: LateMemCall
  loc_B03758: LitVarStr var_94, "</td>"
  loc_B0375D: PopAdLdVar
  loc_B0375E: FLdPr Me
  loc_B03761: MemLdRfVar from_stack_1.global_60
  loc_B03764: LdPrVar
  loc_B03766: LateMemCall
  loc_B0376C: LitVarStr var_94, "</tr></table>"
  loc_B03771: PopAdLdVar
  loc_B03772: FLdPr Me
  loc_B03775: MemLdRfVar from_stack_1.global_60
  loc_B03778: LdPrVar
  loc_B0377A: LateMemCall
  loc_B03780: FLdPr Me
  loc_B03783: MemLdUI1 global_116
  loc_B03787: CI2UI1
  loc_B03789: LitI2_Byte 1
  loc_B0378B: EqI2
  loc_B0378C: BranchF loc_B037A3
  loc_B0378F: LitVarStr var_94, "<div align=""right"" class=""Normal"">Para el CONTRIBUYENTE</div>"
  loc_B03794: PopAdLdVar
  loc_B03795: FLdPr Me
  loc_B03798: MemLdRfVar from_stack_1.global_60
  loc_B0379B: LdPrVar
  loc_B0379D: LateMemCall
  loc_B037A3: FLdPr Me
  loc_B037A6: MemLdI2 global_88
  loc_B037A9: CI4UI1
  loc_B037AA: FLdPr Me
  loc_B037AD: MemLdStr global_84
  loc_B037B0: Ary1LdPr
  loc_B037B1: MemLdStr global_108
  loc_B037B4: LitI2_Byte 1
  loc_B037B6: FnUBound
  loc_B037B8: LitI4 1
  loc_B037BD: GtI4
  loc_B037BE: FLdPr Me
  loc_B037C1: MemLdI2 global_90
  loc_B037C4: CI4UI1
  loc_B037C5: FLdPr Me
  loc_B037C8: MemLdI2 global_88
  loc_B037CB: CI4UI1
  loc_B037CC: FLdPr Me
  loc_B037CF: MemLdStr global_84
  loc_B037D2: Ary1LdPr
  loc_B037D3: MemLdStr global_108
  loc_B037D6: LitI2_Byte 1
  loc_B037D8: FnUBound
  loc_B037DA: EqI4
  loc_B037DB: AndI4
  loc_B037DC: BranchF loc_B0383C
  loc_B037DF: LitStr "<div align=""right"" class=""Normal"">Hoja "
  loc_B037E2: FLdPr Me
  loc_B037E5: MemLdI2 global_90
  loc_B037E8: CStrUI1
  loc_B037EA: FStStrNoPop var_A8
  loc_B037ED: ConcatStr
  loc_B037EE: FStStrNoPop var_BC
  loc_B037F1: LitStr "/"
  loc_B037F4: ConcatStr
  loc_B037F5: FStStrNoPop var_C0
  loc_B037F8: FLdPr Me
  loc_B037FB: MemLdI2 global_88
  loc_B037FE: CI4UI1
  loc_B037FF: FLdPr Me
  loc_B03802: MemLdStr global_84
  loc_B03805: Ary1LdPr
  loc_B03806: MemLdStr global_108
  loc_B03809: LitI2_Byte 1
  loc_B0380B: FnUBound
  loc_B0380D: CStrI4
  loc_B0380F: FStStrNoPop var_C4
  loc_B03812: ConcatStr
  loc_B03813: FStStrNoPop var_C8
  loc_B03816: LitStr "</div>"
  loc_B03819: ConcatStr
  loc_B0381A: CVarStr var_B8
  loc_B0381D: PopAdLdVar
  loc_B0381E: FLdPr Me
  loc_B03821: MemLdRfVar from_stack_1.global_60
  loc_B03824: LdPrVar
  loc_B03826: LateMemCall
  loc_B0382C: FFreeStr var_A8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B03839: FFree1Var var_B8 = ""
  loc_B0383C: LitVarStr var_94, "<hr>"
  loc_B03841: PopAdLdVar
  loc_B03842: FLdPr Me
  loc_B03845: MemLdRfVar from_stack_1.global_60
  loc_B03848: LdPrVar
  loc_B0384A: LateMemCall
  loc_B03850: LitVarStr var_94, "    <div class=""Normal"">www.infogov.com.ar</div>"
  loc_B03855: PopAdLdVar
  loc_B03856: FLdPr Me
  loc_B03859: MemLdRfVar from_stack_1.global_60
  loc_B0385C: LdPrVar
  loc_B0385E: LateMemCall
  loc_B03864: ExitProcHresult
End Function

Private Function Proc_234_28_9F2600() '9F2600
  'Data Table: 486D94
  loc_9F25D4: LitVarStr var_94, "</body>"
  loc_9F25D9: PopAdLdVar
  loc_9F25DA: FLdPr Me
  loc_9F25DD: MemLdRfVar from_stack_1.global_60
  loc_9F25E0: LdPrVar
  loc_9F25E2: LateMemCall
  loc_9F25E8: LitVarStr var_94, "</html>"
  loc_9F25ED: PopAdLdVar
  loc_9F25EE: FLdPr Me
  loc_9F25F1: MemLdRfVar from_stack_1.global_60
  loc_9F25F4: LdPrVar
  loc_9F25F6: LateMemCall
  loc_9F25FC: ExitProcHresult
  loc_9F25FD: CR8I2
  loc_9F25FE: PopFPR8
  loc_9F25FF: LitI2_Byte &H1C
End Function
