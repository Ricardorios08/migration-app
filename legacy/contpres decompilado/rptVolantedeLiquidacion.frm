VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptVolantedeLiquidacion
  Caption = "Volante de Liquidación"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptVolantedeLiquidacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6600
  ClientHeight = 2895
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2640
    Width = 6600
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptVolantedeLiquidacion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptVolantedeLiquidacion.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptVolantedeLiquidacion.frx":0B9C
    Left = 9960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 1815
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6375
    Height = 1335
    TabIndex = 0
    Begin MSMask.MaskEdBox NumeLiquMsk
      Left = 2040
      Top = 840
      Width = 495
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptVolantedeLiquidacion.frx":0C00
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 2040
      Top = 360
      Width = 2415
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4920
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label2
      Caption = "Número de Liquidación:"
      Left = 240
      Top = 840
      Width = 1680
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Expediente:"
      Left = 1080
      Top = 360
      Width = 840
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptVolantedeLiquidacion.frx":0C66
  End
End

Attribute VB_Name = "rptVolantedeLiquidacion"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00588C34
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_3_0058997C
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_4_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_005899C0
  bStruc(80) As Byte ' String fields: 18
End Type


Private Sub cmdSalir_Click() '978A5C
  'Data Table: 44B984
  loc_978A2C: LitVarStr var_94, "Cerrando..."
  loc_978A31: PopAdLdVar
  loc_978A32: FLdPr Me
  loc_978A35: VCallAd Control_ID_statusBar
  loc_978A38: FStAdFunc var_A8
  loc_978A3B: FLdPr var_A8
  loc_978A3E: LateIdSt
  loc_978A43: FFree1Ad var_A8
  loc_978A46: ILdRf Me
  loc_978A49: FStAdNoPop
  loc_978A4D: ImpAdLdRf MemVar_C44F9C
  loc_978A50: NewIfNullPr Me
  loc_978A53: Me.Global.Unload from_stack_1
  loc_978A58: FFree1Ad var_A8
  loc_978A5B: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '9761D4
  'Data Table: 44B984
  loc_9761AC: FLdPr Me
  loc_9761AF: VCallAd Control_ID_cboExpeImpu
  loc_9761B2: FStAdFunc var_8C
  loc_9761B5: ILdI2 KeyAscii
  loc_9761B8: FLdZeroAd var_8C
  loc_9761BB: FStAdFunc var_88
  loc_9761BE: FLdRfVar var_88
  loc_9761C1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_9761C6: IStI2 KeyAscii
  loc_9761C9: FFreeAd var_88 = ""
  loc_9761D0: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9A804C
  'Data Table: 44B984
  loc_9A7FCC: FLdRfVar var_8C
  loc_9A7FCF: FLdPr Me
  loc_9A7FD2: VCallAd Control_ID_cboExpeImpu
  loc_9A7FD5: FStAdFunc var_88
  loc_9A7FD8: FLdPr var_88
  loc_9A7FDB:  = Me.Text
  loc_9A7FE0: LitI2_Byte 0
  loc_9A7FE2: PopTmpLdAd2 var_92
  loc_9A7FE5: LitI2_Byte 0
  loc_9A7FE7: PopTmpLdAd2 var_90
  loc_9A7FEA: LitI2_Byte 0
  loc_9A7FEC: PopTmpLdAd2 var_8E
  loc_9A7FEF: ILdRf var_8C
  loc_9A7FF2: LitStr "el Expediente"
  loc_9A7FF5: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9A7FFA: FStStrNoPop var_98
  loc_9A7FFD: FLdPr Me
  loc_9A8000: MemStStrCopy
  loc_9A8004: FFreeStr var_8C = ""
  loc_9A800B: FFree1Ad var_88
  loc_9A800E: FLdPr Me
  loc_9A8011: VCallAd Control_ID_cboExpeImpu
  loc_9A8014: FStAdFunc var_A4
  loc_9A8017: LitNothing
  loc_9A8019: CastAd
  loc_9A801C: FStAdFunc var_A0
  loc_9A801F: FLdRfVar var_A0
  loc_9A8022: FLdZeroAd var_A4
  loc_9A8025: FStAdFuncNoPop
  loc_9A8028: CastAd
  loc_9A802B: FStAdFunc var_9C
  loc_9A802E: FLdRfVar var_9C
  loc_9A8031: FLdPr Me
  loc_9A8034: MemLdRfVar from_stack_1.global_96
  loc_9A8037: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A803C: IStI2 Cancel
  loc_9A803F: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9A804A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '99344C
  'Data Table: 44B984
  loc_9933F4: LitI2_Byte 0
  loc_9933F6: FLdPr Me
  loc_9933F9: MemStI2 bGenerado
  loc_9933FC: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_993401: LitStr vbNullString
  loc_993404: FLdPr Me
  loc_993407: VCallAd Control_ID_cboExpeImpu
  loc_99340A: FStAdFunc var_88
  loc_99340D: FLdPr var_88
  loc_993410: Me.Text = from_stack_1
  loc_993415: FFree1Ad var_88
  loc_993418: LitVarStr var_98, vbNullString
  loc_99341D: PopAdLdVar
  loc_99341E: FLdPr Me
  loc_993421: VCallAd Control_ID_NumeLiquMsk
  loc_993424: FStAdFunc var_88
  loc_993427: FLdPr var_88
  loc_99342A: LateIdSt
  loc_99342F: FFree1Ad var_88
  loc_993432: Call HabilitarCriterio()
  loc_993437: ILdRf Me
  loc_99343A: CastAd
  loc_99343D: FStAdFunc var_88
  loc_993440: FLdRfVar var_88
  loc_993443: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_993448: FFree1Ad var_88
  loc_99344B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '980C24
  'Data Table: 44B984
  loc_980BEC: ILdRf Me
  loc_980BEF: CastAd
  loc_980BF2: FStAdFunc var_88
  loc_980BF5: FLdRfVar var_88
  loc_980BF8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_980BFD: FFree1Ad var_88
  loc_980C00: LitStr "Municipalidad de Guaymallén"
  loc_980C03: LitStr "Municipalidad de Rivadavia"
  loc_980C06: EqStr
  loc_980C08: BranchF loc_980C20
  loc_980C0B: ILdRf Me
  loc_980C0E: FStAdNoPop
  loc_980C12: ImpAdLdRf MemVar_C44F9C
  loc_980C15: NewIfNullPr Me
  loc_980C18: Me.Global.Unload from_stack_1
  loc_980C1D: FFree1Ad var_88
  loc_980C20: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '956CA0
  'Data Table: 44B984
  loc_956C88: LitI2_Byte 0
  loc_956C8A: ILdRf Me
  loc_956C8D: CastAd
  loc_956C90: FStAdFunc var_88
  loc_956C93: FLdRfVar var_88
  loc_956C96: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_956C9B: FFree1Ad var_88
  loc_956C9E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987F34
  'Data Table: 44B984
  loc_987EFC: FLdPr Me
  loc_987EFF: VCallAd Control_ID_statusBar
  loc_987F02: FStAdFunc var_88
  loc_987F05: FLdPr var_88
  loc_987F08: LateIdLdVar var_98 DispID_1 0
  loc_987F0F: CStrVarTmp
  loc_987F10: CVarStr var_A8
  loc_987F13: PopAdLdVar
  loc_987F14: FLdPr Me
  loc_987F17: VCallAd Control_ID_statusBar
  loc_987F1A: FStAdFunc var_BC
  loc_987F1D: FLdPr var_BC
  loc_987F20: LateIdSt
  loc_987F25: FFreeAd var_88 = ""
  loc_987F2C: FFreeVar var_98 = ""
  loc_987F33: ExitProcHresult
End Sub

Private Sub Form_Load() '9F78DC
  'Data Table: 44B984
  loc_9F77B0: LitI2_Byte &HFF
  loc_9F77B2: ImpAdStI2 MemVar_C3D844
  loc_9F77B5: ILdRf Me
  loc_9F77B8: CastAd
  loc_9F77BB: FStAdFunc var_88
  loc_9F77BE: FLdRfVar var_88
  loc_9F77C1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9F77C6: FFree1Ad var_88
  loc_9F77C9: LitStr "SELECT DISTINCT ExpeImpu"
  loc_9F77CC: LitStr " FROM liquidacion"
  loc_9F77CF: ConcatStr
  loc_9F77D0: FStStrNoPop var_8C
  loc_9F77D3: LitStr " WHERE PeriInfo = "
  loc_9F77D6: ConcatStr
  loc_9F77D7: FStStrNoPop var_90
  loc_9F77DA: ImpAdLdI2 MemVar_C3D064
  loc_9F77DD: CStrUI1
  loc_9F77DF: FStStrNoPop var_94
  loc_9F77E2: ConcatStr
  loc_9F77E3: FStStrNoPop var_98
  loc_9F77E6: LitStr " ORDER BY ExpeImpu"
  loc_9F77E9: ConcatStr
  loc_9F77EA: FStStrNoPop var_9C
  loc_9F77ED: FLdPr Me
  loc_9F77F0: MemLdRfVar from_stack_1.global_72
  loc_9F77F3: NewIfNullPr clsliquidacion
  loc_9F77F6: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_9F77FB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9F7808: FLdRfVar var_A0
  loc_9F780B: FLdPr Me
  loc_9F780E: MemLdRfVar from_stack_1.global_72
  loc_9F7811: NewIfNullPr clsliquidacion
  loc_9F7814: from_stack_1 = clsliquidacion.RecordCount
  loc_9F7819: ILdRf var_A0
  loc_9F781C: LitI4 0
  loc_9F7821: GtI4
  loc_9F7822: BranchF loc_9F78C1
  loc_9F7825: FLdPr Me
  loc_9F7828: MemLdRfVar from_stack_1.global_72
  loc_9F782B: NewIfNullPr clsliquidacion
  loc_9F782E: Call clsliquidacion.MoveFirst()
  loc_9F7833: FLdRfVar var_A2
  loc_9F7836: FLdPr Me
  loc_9F7839: MemLdRfVar from_stack_1.global_72
  loc_9F783C: NewIfNullPr clsliquidacion
  loc_9F783F: from_stack_1 = clsliquidacion.EOF
  loc_9F7844: FLdI2 var_A2
  loc_9F7847: NotI4
  loc_9F7848: BranchF loc_9F78C1
  loc_9F784B: LitVar_Missing var_DC
  loc_9F784E: PopAdLdVar
  loc_9F784F: FLdRfVar var_CC
  loc_9F7852: FLdRfVar var_BC
  loc_9F7855: LitVarStr var_B8, "ExpeImpu"
  loc_9F785A: PopAdLdVar
  loc_9F785B: FLdRfVar var_A8
  loc_9F785E: FLdRfVar var_88
  loc_9F7861: FLdPr Me
  loc_9F7864: MemLdRfVar from_stack_1.global_72
  loc_9F7867: NewIfNullPr clsliquidacion
  loc_9F786A: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_9F786F: FLdPr var_88
  loc_9F7872:  = Me.Fields
  loc_9F7877: FLdPr var_A8
  loc_9F787A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F787F: FLdPr var_BC
  loc_9F7882:  = Me.Value
  loc_9F7887: FLdRfVar var_CC
  loc_9F788A: CStrVarTmp
  loc_9F788B: FStStrNoPop var_8C
  loc_9F788E: FLdPr Me
  loc_9F7891: VCallAd Control_ID_cboExpeImpu
  loc_9F7894: FStAdFunc var_E0
  loc_9F7897: FLdPr var_E0
  loc_9F789A: Me.AddItem from_stack_1, from_stack_2
  loc_9F789F: FFree1Str var_8C
  loc_9F78A2: FFreeAd var_88 = "": var_A8 = "": var_BC = ""
  loc_9F78AD: FFree1Var var_CC = ""
  loc_9F78B0: FLdPr Me
  loc_9F78B3: MemLdRfVar from_stack_1.global_72
  loc_9F78B6: NewIfNullPr clsliquidacion
  loc_9F78B9: Call clsliquidacion.MoveSiguiente()
  loc_9F78BE: Branch loc_9F7833
  loc_9F78C1: LitNothing
  loc_9F78C3: CastAd
  loc_9F78C6: FStAdFuncNoPop
  loc_9F78C9: FLdPr Me
  loc_9F78CC: MemStAd
  loc_9F78D0: FFree1Ad var_88
  loc_9F78D3: Call cmdNueva_Click()
  loc_9F78D8: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96AA9C
  'Data Table: 44B984
  loc_96AA80: LitI2_Byte 0
  loc_96AA82: ImpAdStI2 MemVar_C3D844
  loc_96AA85: FLdPr Me
  loc_96AA88: VCallAd Control_ID_wbbReporte
  loc_96AA8B: FStAdFunc var_88
  loc_96AA8E: FLdRfVar var_88
  loc_96AA91: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96AA96: FFree1Ad var_88
  loc_96AA99: ExitProcHresult
  loc_96AA9A: FFreeAd  = ""
End Sub

Private Sub cmdPrevia_Click() '95ECE0
  'Data Table: 44B984
  loc_95ECC8: ILdRf Me
  loc_95ECCB: CastAd
  loc_95ECCE: FStAdFunc var_88
  loc_95ECD1: FLdRfVar var_88
  loc_95ECD4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95ECD9: FFree1Ad var_88
  loc_95ECDC: ExitProcHresult
End Sub

Public Function htmFileGet() '44C5FC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '44C60B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '44C61A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '44C629
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44C638
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9923F0
  'Data Table: 44B984
  loc_9923AC: LitI4 0
  loc_9923B1: LitI4 1
  loc_9923B6: FLdRfVar var_88
  loc_9923B9: Redim
  loc_9923C3: FLdPr Me
  loc_9923C6: VCallAd Control_ID_cboExpeImpu
  loc_9923C9: CVarAd
  loc_9923CD: ParmAry1St
  loc_9923D3: FLdPr Me
  loc_9923D6: VCallAd Control_ID_NumeLiquMsk
  loc_9923D9: CVarAd
  loc_9923DD: ParmAry1St
  loc_9923E3: FLdRfVar var_88
  loc_9923E6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9923EB: FLdRfVar var_88
  loc_9923EE: Erase
  loc_9923EF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BEFF18
  'Data Table: 44B984
  loc_BEE26C: FLdPr Me
  loc_BEE26F: MemLdI2 bGenerado
  loc_BEE272: BranchF loc_BEE276
  loc_BEE275: ExitProcHresult
  loc_BEE276: LitVarStr var_9C, "Generando reporte..."
  loc_BEE27B: PopAdLdVar
  loc_BEE27C: FLdPr Me
  loc_BEE27F: VCallAd Control_ID_statusBar
  loc_BEE282: FStAdFunc var_B0
  loc_BEE285: FLdPr var_B0
  loc_BEE288: LateIdSt
  loc_BEE28D: FFree1Ad var_B0
  loc_BEE290: LitI4 &HB
  loc_BEE295: CI2I4
  loc_BEE296: FLdPr Me
  loc_BEE299: Me.MousePointer = from_stack_1
  loc_BEE29E: LitI2_Byte 0
  loc_BEE2A0: PopTmpLdAd2 var_B2
  loc_BEE2A3: Call cboExpeImpu_Validate(from_stack_1v)
  loc_BEE2A8: FLdPr Me
  loc_BEE2AB: MemLdStr global_96
  loc_BEE2AE: LitStr vbNullString
  loc_BEE2B1: NeStr
  loc_BEE2B3: BranchF loc_BEE2B9
  loc_BEE2B6: Branch loc_BEFEEC
  loc_BEE2B9: LitStr " liquidacion.ExpeImpu = '"
  loc_BEE2BC: FLdRfVar var_B8
  loc_BEE2BF: FLdPr Me
  loc_BEE2C2: VCallAd Control_ID_cboExpeImpu
  loc_BEE2C5: FStAdFunc var_B0
  loc_BEE2C8: FLdPr var_B0
  loc_BEE2CB:  = Me.Text
  loc_BEE2D0: ILdRf var_B8
  loc_BEE2D3: ConcatStr
  loc_BEE2D4: FStStrNoPop var_BC
  loc_BEE2D7: LitStr "'"
  loc_BEE2DA: ConcatStr
  loc_BEE2DB: FStStr var_8C
  loc_BEE2DE: FFreeStr var_B8 = ""
  loc_BEE2E5: FFree1Ad var_B0
  loc_BEE2E8: FLdPr Me
  loc_BEE2EB: VCallAd Control_ID_NumeLiquMsk
  loc_BEE2EE: FStAdFunc var_B0
  loc_BEE2F1: FLdPr var_B0
  loc_BEE2F4: LateIdLdVar var_CC DispID_22 0
  loc_BEE2FB: PopAd
  loc_BEE2FD: FLdPr Me
  loc_BEE300: VCallAd Control_ID_NumeLiquMsk
  loc_BEE303: FStAdFunc var_D0
  loc_BEE306: FLdPr var_D0
  loc_BEE309: LateIdLdVar var_E0 DispID_22 0
  loc_BEE310: PopAd
  loc_BEE312: LitVarStr var_AC, vbNullString
  loc_BEE317: FStVarCopyObj var_100
  loc_BEE31A: FLdRfVar var_100
  loc_BEE31D: LitStr " AND liquidacion.NumeLiqu = "
  loc_BEE320: FLdRfVar var_E0
  loc_BEE323: CStrVarTmp
  loc_BEE324: FStStrNoPop var_BC
  loc_BEE327: ConcatStr
  loc_BEE328: CVarStr var_F0
  loc_BEE32B: FLdRfVar var_CC
  loc_BEE32E: CStrVarTmp
  loc_BEE32F: FStStrNoPop var_B8
  loc_BEE332: LitStr vbNullString
  loc_BEE335: NeStr
  loc_BEE337: CVarBoolI2 var_9C
  loc_BEE33B: FLdRfVar var_110
  loc_BEE33E: ImpAdCallFPR4  = IIf(, , )
  loc_BEE343: FLdRfVar var_110
  loc_BEE346: CStrVarTmp
  loc_BEE347: FStStr var_88
  loc_BEE34A: FFreeStr var_B8 = ""
  loc_BEE351: FFreeAd var_B0 = ""
  loc_BEE358: FFreeVar var_CC = "": var_E0 = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_BEE367: LitStr "SELECT liquidacion.*, FeanOrpa"
  loc_BEE36A: LitStr " FROM liquidacion"
  loc_BEE36D: ConcatStr
  loc_BEE36E: FStStrNoPop var_B8
  loc_BEE371: LitStr " LEFT JOIN ordenpago ON ordenpago.PeriInfo = liquidacion.PeriInfo AND ordenpago.ExpeImpu = liquidacion.ExpeImpu AND ordenpago.NumeLiqu = liquidacion.NumeLiqu"
  loc_BEE374: ConcatStr
  loc_BEE375: FStStrNoPop var_BC
  loc_BEE378: LitStr " AND FeanOrpa IS NULL"
  loc_BEE37B: ConcatStr
  loc_BEE37C: FStStrNoPop var_114
  loc_BEE37F: LitStr " WHERE "
  loc_BEE382: ConcatStr
  loc_BEE383: FStStrNoPop var_118
  loc_BEE386: ILdRf var_8C
  loc_BEE389: ConcatStr
  loc_BEE38A: FStStrNoPop var_11C
  loc_BEE38D: ILdRf var_88
  loc_BEE390: ConcatStr
  loc_BEE391: FStStrNoPop var_120
  loc_BEE394: LitStr " ORDER BY liquidacion.ExpeImpu, liquidacion.NumeLiqu;"
  loc_BEE397: ConcatStr
  loc_BEE398: FStStrNoPop var_124
  loc_BEE39B: FLdPr Me
  loc_BEE39E: MemLdRfVar from_stack_1.global_72
  loc_BEE3A1: NewIfNullPr clsliquidacion
  loc_BEE3A4: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BEE3A9: FFreeStr var_B8 = "": var_BC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BEE3BA: FLdRfVar var_128
  loc_BEE3BD: FLdPr Me
  loc_BEE3C0: MemLdRfVar from_stack_1.global_72
  loc_BEE3C3: NewIfNullPr clsliquidacion
  loc_BEE3C6: from_stack_1 = clsliquidacion.RecordCount
  loc_BEE3CB: ILdRf var_128
  loc_BEE3CE: LitI4 0
  loc_BEE3D3: EqI4
  loc_BEE3D4: BranchF loc_BEE3E7
  loc_BEE3D7: LitI4 0
  loc_BEE3DC: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BEE3DF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BEE3E4: Branch loc_BEFEEC
  loc_BEE3E7: FLdPr Me
  loc_BEE3EA: MemLdRfVar from_stack_1.global_72
  loc_BEE3ED: NewIfNullPr clsliquidacion
  loc_BEE3F0: Call clsliquidacion.MoveFirst()
  loc_BEE3F5: LitI2_Byte 0
  loc_BEE3F7: FLdPr Me
  loc_BEE3FA: MemStI2 global_110
  loc_BEE3FD: LitI2_Byte 0
  loc_BEE3FF: FLdPr Me
  loc_BEE402: MemStI2 global_112
  loc_BEE405: LitI4 0
  loc_BEE40A: FLdRfVar var_128
  loc_BEE40D: FLdPr Me
  loc_BEE410: MemLdRfVar from_stack_1.global_72
  loc_BEE413: NewIfNullPr clsliquidacion
  loc_BEE416: from_stack_1 = clsliquidacion.RecordCount
  loc_BEE41B: ILdRf var_128
  loc_BEE41E: FLdPr Me
  loc_BEE421: MemLdRfVar from_stack_1.global_92
  loc_BEE424: Redim
  loc_BEE42E: LitI2_Byte 1
  loc_BEE430: FLdPr Me
  loc_BEE433: MemLdRfVar from_stack_1.global_100
  loc_BEE436: FLdPr Me
  loc_BEE439: MemLdStr global_92
  loc_BEE43C: LitI2_Byte 1
  loc_BEE43E: FnUBound
  loc_BEE440: CI2I4
  loc_BEE441: ForI2 var_12C
  loc_BEE447: FLdPr Me
  loc_BEE44A: MemLdRfVar from_stack_1.global_72
  loc_BEE44D: NewIfNullAd
  loc_BEE450: FStAd var_130 
  loc_BEE454: FLdRfVar var_134
  loc_BEE457: LitVarStr var_9C, "PeriInfo"
  loc_BEE45C: PopAdLdVar
  loc_BEE45D: FLdRfVar var_D0
  loc_BEE460: FLdRfVar var_B0
  loc_BEE463: FLdPr var_130
  loc_BEE466: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE46B: FLdPr var_B0
  loc_BEE46E:  = Me.Fields
  loc_BEE473: FLdPr var_D0
  loc_BEE476: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE47B: LitI2_Byte 0
  loc_BEE47D: LitVar_Missing var_E0
  loc_BEE480: LitI2_Byte 0
  loc_BEE482: FLdZeroAd var_134
  loc_BEE485: CVarAd
  loc_BEE489: PopAdLdVar
  loc_BEE48A: FLdPr Me
  loc_BEE48D: MemLdI2 global_100
  loc_BEE490: CI4UI1
  loc_BEE491: FLdPr Me
  loc_BEE494: MemLdStr global_92
  loc_BEE497: AryLock
  loc_BEE49A: Ary1LdPr
  loc_BEE49B: MemLdRfVar from_stack_1.global_0
  loc_BEE49E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE4A3: AryUnlock
  loc_BEE4A6: FFreeAd var_B0 = ""
  loc_BEE4AD: FFreeVar var_CC = ""
  loc_BEE4B4: FLdRfVar var_134
  loc_BEE4B7: LitVarStr var_9C, "ExpeImpu"
  loc_BEE4BC: PopAdLdVar
  loc_BEE4BD: FLdRfVar var_D0
  loc_BEE4C0: FLdRfVar var_B0
  loc_BEE4C3: FLdPr var_130
  loc_BEE4C6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE4CB: FLdPr var_B0
  loc_BEE4CE:  = Me.Fields
  loc_BEE4D3: FLdPr var_D0
  loc_BEE4D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE4DB: LitI2_Byte 0
  loc_BEE4DD: LitVar_Missing var_E0
  loc_BEE4E0: LitI2_Byte 0
  loc_BEE4E2: FLdZeroAd var_134
  loc_BEE4E5: CVarAd
  loc_BEE4E9: PopAdLdVar
  loc_BEE4EA: FLdPr Me
  loc_BEE4ED: MemLdI2 global_100
  loc_BEE4F0: CI4UI1
  loc_BEE4F1: FLdPr Me
  loc_BEE4F4: MemLdStr global_92
  loc_BEE4F7: AryLock
  loc_BEE4FA: Ary1LdPr
  loc_BEE4FB: MemLdRfVar from_stack_1.global_4
  loc_BEE4FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE503: AryUnlock
  loc_BEE506: FFreeAd var_B0 = ""
  loc_BEE50D: FFreeVar var_CC = ""
  loc_BEE514: FLdRfVar var_134
  loc_BEE517: LitVarStr var_9C, "NumeLiqu"
  loc_BEE51C: PopAdLdVar
  loc_BEE51D: FLdRfVar var_D0
  loc_BEE520: FLdRfVar var_B0
  loc_BEE523: FLdPr var_130
  loc_BEE526: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE52B: FLdPr var_B0
  loc_BEE52E:  = Me.Fields
  loc_BEE533: FLdPr var_D0
  loc_BEE536: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE53B: LitI2_Byte 0
  loc_BEE53D: LitVar_Missing var_E0
  loc_BEE540: LitI2_Byte 0
  loc_BEE542: FLdZeroAd var_134
  loc_BEE545: CVarAd
  loc_BEE549: PopAdLdVar
  loc_BEE54A: FLdPr Me
  loc_BEE54D: MemLdI2 global_100
  loc_BEE550: CI4UI1
  loc_BEE551: FLdPr Me
  loc_BEE554: MemLdStr global_92
  loc_BEE557: AryLock
  loc_BEE55A: Ary1LdPr
  loc_BEE55B: MemLdRfVar from_stack_1.global_8
  loc_BEE55E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE563: AryUnlock
  loc_BEE566: FFreeAd var_B0 = ""
  loc_BEE56D: FFreeVar var_CC = ""
  loc_BEE574: FLdRfVar var_134
  loc_BEE577: LitVarStr var_9C, "FechLiqu"
  loc_BEE57C: PopAdLdVar
  loc_BEE57D: FLdRfVar var_D0
  loc_BEE580: FLdRfVar var_B0
  loc_BEE583: FLdPr var_130
  loc_BEE586: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE58B: FLdPr var_B0
  loc_BEE58E:  = Me.Fields
  loc_BEE593: FLdPr var_D0
  loc_BEE596: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE59B: LitI2_Byte 0
  loc_BEE59D: LitVar_Missing var_E0
  loc_BEE5A0: LitI2_Byte 0
  loc_BEE5A2: FLdZeroAd var_134
  loc_BEE5A5: CVarAd
  loc_BEE5A9: PopAdLdVar
  loc_BEE5AA: FLdPr Me
  loc_BEE5AD: MemLdI2 global_100
  loc_BEE5B0: CI4UI1
  loc_BEE5B1: FLdPr Me
  loc_BEE5B4: MemLdStr global_92
  loc_BEE5B7: AryLock
  loc_BEE5BA: Ary1LdPr
  loc_BEE5BB: MemLdRfVar from_stack_1.global_12
  loc_BEE5BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE5C3: AryUnlock
  loc_BEE5C6: FFreeAd var_B0 = ""
  loc_BEE5CD: FFreeVar var_CC = ""
  loc_BEE5D4: FLdRfVar var_CC
  loc_BEE5D7: FLdRfVar var_134
  loc_BEE5DA: LitVarStr var_9C, "TipoLiqu"
  loc_BEE5DF: PopAdLdVar
  loc_BEE5E0: FLdRfVar var_D0
  loc_BEE5E3: FLdRfVar var_B0
  loc_BEE5E6: FLdPr var_130
  loc_BEE5E9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE5EE: FLdPr var_B0
  loc_BEE5F1:  = Me.Fields
  loc_BEE5F6: FLdPr var_D0
  loc_BEE5F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE5FE: FLdPr var_134
  loc_BEE601:  = Me.Value
  loc_BEE606: LitVarStr var_158, "Debito"
  loc_BEE60B: FStVarCopyObj var_110
  loc_BEE60E: FLdRfVar var_110
  loc_BEE611: LitVarStr var_148, "Devengado"
  loc_BEE616: FStVarCopyObj var_100
  loc_BEE619: FLdRfVar var_100
  loc_BEE61C: FLdRfVar var_CC
  loc_BEE61F: LitVarI2 var_AC, 1
  loc_BEE624: HardType
  loc_BEE625: EqVar var_E0
  loc_BEE629: FStVar var_F0
  loc_BEE62D: FLdRfVar var_F0
  loc_BEE630: FLdRfVar var_168
  loc_BEE633: ImpAdCallFPR4  = IIf(, , )
  loc_BEE638: LitI2_Byte 0
  loc_BEE63A: LitVar_Missing var_188
  loc_BEE63D: LitI2_Byte 0
  loc_BEE63F: FLdVar var_168
  loc_BEE643: FLdPr Me
  loc_BEE646: MemLdI2 global_100
  loc_BEE649: CI4UI1
  loc_BEE64A: FLdPr Me
  loc_BEE64D: MemLdStr global_92
  loc_BEE650: AryLock
  loc_BEE653: Ary1LdPr
  loc_BEE654: MemLdRfVar from_stack_1.global_20
  loc_BEE657: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE65C: AryUnlock
  loc_BEE65F: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEE668: FFreeVar var_CC = "": var_F0 = "": var_100 = "": var_110 = "": var_168 = ""
  loc_BEE677: FLdRfVar var_134
  loc_BEE67A: LitVarStr var_9C, "FeanLiqu"
  loc_BEE67F: PopAdLdVar
  loc_BEE680: FLdRfVar var_D0
  loc_BEE683: FLdRfVar var_B0
  loc_BEE686: FLdPr var_130
  loc_BEE689: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE68E: FLdPr var_B0
  loc_BEE691:  = Me.Fields
  loc_BEE696: FLdPr var_D0
  loc_BEE699: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE69E: LitI2_Byte 0
  loc_BEE6A0: LitVar_Missing var_E0
  loc_BEE6A3: LitI2_Byte 0
  loc_BEE6A5: FLdZeroAd var_134
  loc_BEE6A8: CVarAd
  loc_BEE6AC: PopAdLdVar
  loc_BEE6AD: FLdPr Me
  loc_BEE6B0: MemLdI2 global_100
  loc_BEE6B3: CI4UI1
  loc_BEE6B4: FLdPr Me
  loc_BEE6B7: MemLdStr global_92
  loc_BEE6BA: AryLock
  loc_BEE6BD: Ary1LdPr
  loc_BEE6BE: MemLdRfVar from_stack_1.global_24
  loc_BEE6C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE6C6: AryUnlock
  loc_BEE6C9: FFreeAd var_B0 = ""
  loc_BEE6D0: FFreeVar var_CC = ""
  loc_BEE6D7: FLdRfVar var_134
  loc_BEE6DA: LitVarStr var_9C, "DetaLiqu"
  loc_BEE6DF: PopAdLdVar
  loc_BEE6E0: FLdRfVar var_D0
  loc_BEE6E3: FLdRfVar var_B0
  loc_BEE6E6: FLdPr var_130
  loc_BEE6E9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE6EE: FLdPr var_B0
  loc_BEE6F1:  = Me.Fields
  loc_BEE6F6: FLdPr var_D0
  loc_BEE6F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE6FE: LitI2_Byte 0
  loc_BEE700: LitVar_Missing var_E0
  loc_BEE703: LitI2_Byte 0
  loc_BEE705: FLdZeroAd var_134
  loc_BEE708: CVarAd
  loc_BEE70C: PopAdLdVar
  loc_BEE70D: FLdPr Me
  loc_BEE710: MemLdI2 global_100
  loc_BEE713: CI4UI1
  loc_BEE714: FLdPr Me
  loc_BEE717: MemLdStr global_92
  loc_BEE71A: AryLock
  loc_BEE71D: Ary1LdPr
  loc_BEE71E: MemLdRfVar from_stack_1.global_16
  loc_BEE721: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE726: AryUnlock
  loc_BEE729: FFreeAd var_B0 = ""
  loc_BEE730: FFreeVar var_CC = ""
  loc_BEE737: FLdRfVar var_134
  loc_BEE73A: LitVarStr var_9C, "AltaUsua"
  loc_BEE73F: PopAdLdVar
  loc_BEE740: FLdRfVar var_D0
  loc_BEE743: FLdRfVar var_B0
  loc_BEE746: FLdPr var_130
  loc_BEE749: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE74E: FLdPr var_B0
  loc_BEE751:  = Me.Fields
  loc_BEE756: FLdPr var_D0
  loc_BEE759: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE75E: LitI2_Byte 0
  loc_BEE760: LitVar_Missing var_E0
  loc_BEE763: LitI2_Byte 0
  loc_BEE765: FLdZeroAd var_134
  loc_BEE768: CVarAd
  loc_BEE76C: PopAdLdVar
  loc_BEE76D: FLdPr Me
  loc_BEE770: MemLdI2 global_100
  loc_BEE773: CI4UI1
  loc_BEE774: FLdPr Me
  loc_BEE777: MemLdStr global_92
  loc_BEE77A: AryLock
  loc_BEE77D: Ary1LdPr
  loc_BEE77E: MemLdRfVar from_stack_1.global_36
  loc_BEE781: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE786: AryUnlock
  loc_BEE789: FFreeAd var_B0 = ""
  loc_BEE790: FFreeVar var_CC = ""
  loc_BEE797: FLdRfVar var_134
  loc_BEE79A: LitVarStr var_9C, "NumeOrpa"
  loc_BEE79F: PopAdLdVar
  loc_BEE7A0: FLdRfVar var_D0
  loc_BEE7A3: FLdRfVar var_B0
  loc_BEE7A6: FLdPr var_130
  loc_BEE7A9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE7AE: FLdPr var_B0
  loc_BEE7B1:  = Me.Fields
  loc_BEE7B6: FLdPr var_D0
  loc_BEE7B9: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE7BE: LitI2_Byte 0
  loc_BEE7C0: LitVar_Missing var_E0
  loc_BEE7C3: LitI2_Byte 0
  loc_BEE7C5: FLdZeroAd var_134
  loc_BEE7C8: CVarAd
  loc_BEE7CC: PopAdLdVar
  loc_BEE7CD: FLdPr Me
  loc_BEE7D0: MemLdI2 global_100
  loc_BEE7D3: CI4UI1
  loc_BEE7D4: FLdPr Me
  loc_BEE7D7: MemLdStr global_92
  loc_BEE7DA: AryLock
  loc_BEE7DD: Ary1LdPr
  loc_BEE7DE: MemLdRfVar from_stack_1.global_28
  loc_BEE7E1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE7E6: AryUnlock
  loc_BEE7E9: FFreeAd var_B0 = ""
  loc_BEE7F0: FFreeVar var_CC = ""
  loc_BEE7F7: FLdRfVar var_134
  loc_BEE7FA: LitVarStr var_9C, "FeanOrpa"
  loc_BEE7FF: PopAdLdVar
  loc_BEE800: FLdRfVar var_D0
  loc_BEE803: FLdRfVar var_B0
  loc_BEE806: FLdPr var_130
  loc_BEE809: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE80E: FLdPr var_B0
  loc_BEE811:  = Me.Fields
  loc_BEE816: FLdPr var_D0
  loc_BEE819: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE81E: LitI2_Byte 0
  loc_BEE820: LitVar_Missing var_E0
  loc_BEE823: LitI2_Byte 0
  loc_BEE825: FLdZeroAd var_134
  loc_BEE828: CVarAd
  loc_BEE82C: PopAdLdVar
  loc_BEE82D: FLdPr Me
  loc_BEE830: MemLdI2 global_100
  loc_BEE833: CI4UI1
  loc_BEE834: FLdPr Me
  loc_BEE837: MemLdStr global_92
  loc_BEE83A: AryLock
  loc_BEE83D: Ary1LdPr
  loc_BEE83E: MemLdRfVar from_stack_1.global_32
  loc_BEE841: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEE846: AryUnlock
  loc_BEE849: FFreeAd var_B0 = ""
  loc_BEE850: FFreeVar var_CC = ""
  loc_BEE857: LitNothing
  loc_BEE859: FStAd var_130 
  loc_BEE85D: FLdRfVar var_CC
  loc_BEE860: FLdRfVar var_134
  loc_BEE863: LitVarStr var_9C, "TipoLiqu"
  loc_BEE868: PopAdLdVar
  loc_BEE869: FLdRfVar var_D0
  loc_BEE86C: FLdRfVar var_B0
  loc_BEE86F: FLdPr Me
  loc_BEE872: MemLdRfVar from_stack_1.global_72
  loc_BEE875: NewIfNullPr clsliquidacion
  loc_BEE878: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE87D: FLdPr var_B0
  loc_BEE880:  = Me.Fields
  loc_BEE885: FLdPr var_D0
  loc_BEE888: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE88D: FLdPr var_134
  loc_BEE890:  = Me.Value
  loc_BEE895: FLdRfVar var_CC
  loc_BEE898: LitVarI2 var_AC, 1
  loc_BEE89D: HardType
  loc_BEE89E: EqVarBool
  loc_BEE8A0: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEE8A9: FFree1Var var_CC = ""
  loc_BEE8AC: BranchF loc_BEE953
  loc_BEE8AF: LitStr "SELECT i.*, DetaProv, DetaPart, CodiFifu"
  loc_BEE8B2: LitStr " FROM imputacion i"
  loc_BEE8B5: ConcatStr
  loc_BEE8B6: FStStrNoPop var_B8
  loc_BEE8B9: LitStr " INNER JOIN proveedor p ON p.CucuPers = i.CucuPers"
  loc_BEE8BC: ConcatStr
  loc_BEE8BD: FStStrNoPop var_BC
  loc_BEE8C0: LitStr " INNER JOIN partida pp ON pp.PeriInfo = i.PeriInfo AND pp.CodiPart = i.CodiPart"
  loc_BEE8C3: ConcatStr
  loc_BEE8C4: FStStrNoPop var_114
  loc_BEE8C7: LitStr " WHERE i.PeriInfo = "
  loc_BEE8CA: ConcatStr
  loc_BEE8CB: FStStrNoPop var_118
  loc_BEE8CE: FLdPr Me
  loc_BEE8D1: MemLdI2 global_100
  loc_BEE8D4: CI4UI1
  loc_BEE8D5: FLdPr Me
  loc_BEE8D8: MemLdStr global_92
  loc_BEE8DB: Ary1LdPr
  loc_BEE8DC: MemLdStr global_0
  loc_BEE8DF: ConcatStr
  loc_BEE8E0: FStStrNoPop var_11C
  loc_BEE8E3: LitStr " AND i.ExpeImpu = '"
  loc_BEE8E6: ConcatStr
  loc_BEE8E7: FStStrNoPop var_120
  loc_BEE8EA: FLdPr Me
  loc_BEE8ED: MemLdI2 global_100
  loc_BEE8F0: CI4UI1
  loc_BEE8F1: FLdPr Me
  loc_BEE8F4: MemLdStr global_92
  loc_BEE8F7: Ary1LdPr
  loc_BEE8F8: MemLdStr global_4
  loc_BEE8FB: ConcatStr
  loc_BEE8FC: FStStrNoPop var_124
  loc_BEE8FF: LitStr "' AND i.NumeLiqu = "
  loc_BEE902: ConcatStr
  loc_BEE903: FStStrNoPop var_18C
  loc_BEE906: FLdPr Me
  loc_BEE909: MemLdI2 global_100
  loc_BEE90C: CI4UI1
  loc_BEE90D: FLdPr Me
  loc_BEE910: MemLdStr global_92
  loc_BEE913: Ary1LdPr
  loc_BEE914: MemLdStr global_8
  loc_BEE917: ConcatStr
  loc_BEE918: FStStrNoPop var_190
  loc_BEE91B: LitStr " AND LiquImpu != 0"
  loc_BEE91E: ConcatStr
  loc_BEE91F: FStStrNoPop var_194
  loc_BEE922: LitStr " ORDER BY DetaProv, CucuPers, CodiOrga, CodiPart, IdImpu;"
  loc_BEE925: ConcatStr
  loc_BEE926: FStStrNoPop var_198
  loc_BEE929: FLdPr Me
  loc_BEE92C: MemLdRfVar from_stack_1.global_76
  loc_BEE92F: NewIfNullPr clsliquidacion
  loc_BEE932: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BEE937: FFreeStr var_B8 = "": var_BC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BEE950: Branch loc_BEEA26
  loc_BEE953: FLdRfVar var_CC
  loc_BEE956: FLdRfVar var_134
  loc_BEE959: LitVarStr var_9C, "TipoLiqu"
  loc_BEE95E: PopAdLdVar
  loc_BEE95F: FLdRfVar var_D0
  loc_BEE962: FLdRfVar var_B0
  loc_BEE965: FLdPr Me
  loc_BEE968: MemLdRfVar from_stack_1.global_72
  loc_BEE96B: NewIfNullPr clsliquidacion
  loc_BEE96E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEE973: FLdPr var_B0
  loc_BEE976:  = Me.Fields
  loc_BEE97B: FLdPr var_D0
  loc_BEE97E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE983: FLdPr var_134
  loc_BEE986:  = Me.Value
  loc_BEE98B: FLdRfVar var_CC
  loc_BEE98E: LitVarI2 var_AC, 2
  loc_BEE993: HardType
  loc_BEE994: EqVarBool
  loc_BEE996: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEE99F: FFree1Var var_CC = ""
  loc_BEE9A2: BranchF loc_BEEA26
  loc_BEE9A5: LitStr "SELECT ld.*, DetaProv, DetaCuco"
  loc_BEE9A8: LitStr " FROM liquidadeta ld"
  loc_BEE9AB: ConcatStr
  loc_BEE9AC: FStStrNoPop var_B8
  loc_BEE9AF: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BEE9B2: ConcatStr
  loc_BEE9B3: FStStrNoPop var_BC
  loc_BEE9B6: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ld.CucuPers"
  loc_BEE9B9: ConcatStr
  loc_BEE9BA: FStStrNoPop var_114
  loc_BEE9BD: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ld.PeriInfo AND cc.CodiCuco = ld.CodiCuco"
  loc_BEE9C0: ConcatStr
  loc_BEE9C1: FStStrNoPop var_118
  loc_BEE9C4: LitStr " WHERE ld.ExpeImpu = '"
  loc_BEE9C7: ConcatStr
  loc_BEE9C8: FStStrNoPop var_11C
  loc_BEE9CB: FLdPr Me
  loc_BEE9CE: MemLdI2 global_100
  loc_BEE9D1: CI4UI1
  loc_BEE9D2: FLdPr Me
  loc_BEE9D5: MemLdStr global_92
  loc_BEE9D8: Ary1LdPr
  loc_BEE9D9: MemLdStr global_4
  loc_BEE9DC: ConcatStr
  loc_BEE9DD: FStStrNoPop var_120
  loc_BEE9E0: LitStr "' AND ld.NumeLiqu = "
  loc_BEE9E3: ConcatStr
  loc_BEE9E4: FStStrNoPop var_124
  loc_BEE9E7: FLdPr Me
  loc_BEE9EA: MemLdI2 global_100
  loc_BEE9ED: CI4UI1
  loc_BEE9EE: FLdPr Me
  loc_BEE9F1: MemLdStr global_92
  loc_BEE9F4: Ary1LdPr
  loc_BEE9F5: MemLdStr global_8
  loc_BEE9F8: ConcatStr
  loc_BEE9F9: FStStrNoPop var_18C
  loc_BEE9FC: LitStr " ORDER BY DetaProv, CucuPers, CodiOrga, CodiCuco, NumeDebi;"
  loc_BEE9FF: ConcatStr
  loc_BEEA00: FStStrNoPop var_190
  loc_BEEA03: FLdPr Me
  loc_BEEA06: MemLdRfVar from_stack_1.global_76
  loc_BEEA09: NewIfNullPr clsliquidacion
  loc_BEEA0C: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BEEA11: FFreeStr var_B8 = "": var_BC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_18C = ""
  loc_BEEA26: FLdRfVar var_128
  loc_BEEA29: FLdPr Me
  loc_BEEA2C: MemLdRfVar from_stack_1.global_76
  loc_BEEA2F: NewIfNullPr clsliquidacion
  loc_BEEA32: from_stack_1 = clsliquidacion.RecordCount
  loc_BEEA37: ILdRf var_128
  loc_BEEA3A: LitI4 0
  loc_BEEA3F: GtI4
  loc_BEEA40: BranchF loc_BEF512
  loc_BEEA43: LitI2_Byte &HFF
  loc_BEEA45: FLdPr Me
  loc_BEEA48: MemLdI2 global_100
  loc_BEEA4B: CI4UI1
  loc_BEEA4C: FLdPr Me
  loc_BEEA4F: MemLdStr global_92
  loc_BEEA52: Ary1LdPr
  loc_BEEA53: MemStI2 global_40
  loc_BEEA56: LitI2_Byte 0
  loc_BEEA58: FLdPr Me
  loc_BEEA5B: MemStI2 global_108
  loc_BEEA5E: LitI4 0
  loc_BEEA63: FLdPr Me
  loc_BEEA66: MemLdI2 global_108
  loc_BEEA69: CI4UI1
  loc_BEEA6A: FLdPr Me
  loc_BEEA6D: MemLdI2 global_100
  loc_BEEA70: CI4UI1
  loc_BEEA71: FLdPr Me
  loc_BEEA74: MemLdStr global_92
  loc_BEEA77: Ary1LdPr
  loc_BEEA78: MemLdRfVar from_stack_1.global_60
  loc_BEEA7B: Redim
  loc_BEEA85: FLdRfVar var_128
  loc_BEEA88: FLdPr Me
  loc_BEEA8B: MemLdRfVar from_stack_1.global_76
  loc_BEEA8E: NewIfNullPr clsliquidacion
  loc_BEEA91: from_stack_1 = clsliquidacion.RecordCount
  loc_BEEA96: LitI4 0
  loc_BEEA9B: ILdRf var_128
  loc_BEEA9E: FLdPr Me
  loc_BEEAA1: MemLdI2 global_100
  loc_BEEAA4: CI4UI1
  loc_BEEAA5: FLdPr Me
  loc_BEEAA8: MemLdStr global_92
  loc_BEEAAB: Ary1LdPr
  loc_BEEAAC: MemLdRfVar from_stack_1.global_48
  loc_BEEAAF: RedimPreserve
  loc_BEEAB9: FLdPr Me
  loc_BEEABC: MemLdRfVar from_stack_1.global_76
  loc_BEEABF: NewIfNullPr clsliquidacion
  loc_BEEAC2: Call clsliquidacion.MoveFirst()
  loc_BEEAC7: LitI2_Byte 1
  loc_BEEAC9: FLdPr Me
  loc_BEEACC: MemLdRfVar from_stack_1.global_102
  loc_BEEACF: FLdPr Me
  loc_BEEAD2: MemLdI2 global_100
  loc_BEEAD5: CI4UI1
  loc_BEEAD6: FLdPr Me
  loc_BEEAD9: MemLdStr global_92
  loc_BEEADC: Ary1LdPr
  loc_BEEADD: MemLdStr global_48
  loc_BEEAE0: LitI2_Byte 1
  loc_BEEAE2: FnUBound
  loc_BEEAE4: CI2I4
  loc_BEEAE5: ForI2 var_19C
  loc_BEEAEB: FLdPr Me
  loc_BEEAEE: MemLdI2 global_102
  loc_BEEAF1: CI4UI1
  loc_BEEAF2: FLdPr Me
  loc_BEEAF5: MemLdI2 global_100
  loc_BEEAF8: CI4UI1
  loc_BEEAF9: FLdPr Me
  loc_BEEAFC: MemLdStr global_92
  loc_BEEAFF: AryLock
  loc_BEEB02: Ary1LdPr
  loc_BEEB03: MemLdStr global_48
  loc_BEEB06: AryLock
  loc_BEEB09: Ary1LdRf
  loc_BEEB0A: FStR4 var_1A8
  loc_BEEB0D: FLdRfVar var_CC
  loc_BEEB10: FLdRfVar var_134
  loc_BEEB13: LitVarStr var_9C, "TipoLiqu"
  loc_BEEB18: PopAdLdVar
  loc_BEEB19: FLdRfVar var_D0
  loc_BEEB1C: FLdRfVar var_B0
  loc_BEEB1F: FLdPr Me
  loc_BEEB22: MemLdRfVar from_stack_1.global_72
  loc_BEEB25: NewIfNullPr clsliquidacion
  loc_BEEB28: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEB2D: FLdPr var_B0
  loc_BEEB30:  = Me.Fields
  loc_BEEB35: FLdPr var_D0
  loc_BEEB38: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEB3D: FLdPr var_134
  loc_BEEB40:  = Me.Value
  loc_BEEB45: FLdRfVar var_CC
  loc_BEEB48: LitVarI2 var_AC, 1
  loc_BEEB4D: HardType
  loc_BEEB4E: EqVarBool
  loc_BEEB50: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEEB59: FFree1Var var_CC = ""
  loc_BEEB5C: BranchF loc_BEEE17
  loc_BEEB5F: FLdRfVar var_134
  loc_BEEB62: LitVarStr var_9C, "CucuPers"
  loc_BEEB67: PopAdLdVar
  loc_BEEB68: FLdRfVar var_D0
  loc_BEEB6B: FLdRfVar var_B0
  loc_BEEB6E: FLdPr Me
  loc_BEEB71: MemLdRfVar from_stack_1.global_76
  loc_BEEB74: NewIfNullPr clsliquidacion
  loc_BEEB77: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEB7C: FLdPr var_B0
  loc_BEEB7F:  = Me.Fields
  loc_BEEB84: FLdPr var_D0
  loc_BEEB87: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEB8C: LitI2_Byte 0
  loc_BEEB8E: LitVar_Missing var_E0
  loc_BEEB91: LitI2_Byte 0
  loc_BEEB93: FLdZeroAd var_134
  loc_BEEB96: CVarAd
  loc_BEEB9A: PopAdLdVar
  loc_BEEB9B: FMemLdRf 0
  loc_BEEBA0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEBA5: FFreeAd var_B0 = ""
  loc_BEEBAC: FFreeVar var_CC = ""
  loc_BEEBB3: FLdRfVar var_134
  loc_BEEBB6: LitVarStr var_9C, "DetaProv"
  loc_BEEBBB: PopAdLdVar
  loc_BEEBBC: FLdRfVar var_D0
  loc_BEEBBF: FLdRfVar var_B0
  loc_BEEBC2: FLdPr Me
  loc_BEEBC5: MemLdRfVar from_stack_1.global_76
  loc_BEEBC8: NewIfNullPr clsliquidacion
  loc_BEEBCB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEBD0: FLdPr var_B0
  loc_BEEBD3:  = Me.Fields
  loc_BEEBD8: FLdPr var_D0
  loc_BEEBDB: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEBE0: LitI2_Byte 0
  loc_BEEBE2: LitVar_Missing var_E0
  loc_BEEBE5: LitI2_Byte 0
  loc_BEEBE7: FLdZeroAd var_134
  loc_BEEBEA: CVarAd
  loc_BEEBEE: PopAdLdVar
  loc_BEEBEF: FMemLdRf 0
  loc_BEEBF4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEBF9: FFreeAd var_B0 = ""
  loc_BEEC00: FFreeVar var_CC = ""
  loc_BEEC07: FLdRfVar var_134
  loc_BEEC0A: LitVarStr var_9C, "CodiPart"
  loc_BEEC0F: PopAdLdVar
  loc_BEEC10: FLdRfVar var_D0
  loc_BEEC13: FLdRfVar var_B0
  loc_BEEC16: FLdPr Me
  loc_BEEC19: MemLdRfVar from_stack_1.global_76
  loc_BEEC1C: NewIfNullPr clsliquidacion
  loc_BEEC1F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEC24: FLdPr var_B0
  loc_BEEC27:  = Me.Fields
  loc_BEEC2C: FLdPr var_D0
  loc_BEEC2F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEC34: LitI2_Byte 0
  loc_BEEC36: LitVar_Missing var_E0
  loc_BEEC39: LitI2_Byte 0
  loc_BEEC3B: FLdZeroAd var_134
  loc_BEEC3E: CVarAd
  loc_BEEC42: PopAdLdVar
  loc_BEEC43: FMemLdRf 0
  loc_BEEC48: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEC4D: FFreeAd var_B0 = ""
  loc_BEEC54: FFreeVar var_CC = ""
  loc_BEEC5B: FLdRfVar var_134
  loc_BEEC5E: LitVarStr var_9C, "DetaPart"
  loc_BEEC63: PopAdLdVar
  loc_BEEC64: FLdRfVar var_D0
  loc_BEEC67: FLdRfVar var_B0
  loc_BEEC6A: FLdPr Me
  loc_BEEC6D: MemLdRfVar from_stack_1.global_76
  loc_BEEC70: NewIfNullPr clsliquidacion
  loc_BEEC73: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEC78: FLdPr var_B0
  loc_BEEC7B:  = Me.Fields
  loc_BEEC80: FLdPr var_D0
  loc_BEEC83: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEC88: LitI2_Byte 0
  loc_BEEC8A: LitVar_Missing var_E0
  loc_BEEC8D: LitI2_Byte 0
  loc_BEEC8F: FLdZeroAd var_134
  loc_BEEC92: CVarAd
  loc_BEEC96: PopAdLdVar
  loc_BEEC97: FMemLdRf 0
  loc_BEEC9C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEECA1: FFreeAd var_B0 = ""
  loc_BEECA8: FFreeVar var_CC = ""
  loc_BEECAF: FLdRfVar var_134
  loc_BEECB2: LitVarStr var_9C, "CodiOrga"
  loc_BEECB7: PopAdLdVar
  loc_BEECB8: FLdRfVar var_D0
  loc_BEECBB: FLdRfVar var_B0
  loc_BEECBE: FLdPr Me
  loc_BEECC1: MemLdRfVar from_stack_1.global_76
  loc_BEECC4: NewIfNullPr clsliquidacion
  loc_BEECC7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEECCC: FLdPr var_B0
  loc_BEECCF:  = Me.Fields
  loc_BEECD4: FLdPr var_D0
  loc_BEECD7: from_stack_2 = Me.Item(from_stack_1)
  loc_BEECDC: LitI2_Byte 0
  loc_BEECDE: LitVar_Missing var_E0
  loc_BEECE1: LitI2_Byte 0
  loc_BEECE3: FLdZeroAd var_134
  loc_BEECE6: CVarAd
  loc_BEECEA: PopAdLdVar
  loc_BEECEB: FMemLdRf 0
  loc_BEECF0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEECF5: FFreeAd var_B0 = ""
  loc_BEECFC: FFreeVar var_CC = ""
  loc_BEED03: FLdRfVar var_134
  loc_BEED06: LitVarStr var_9C, "CodiFifu"
  loc_BEED0B: PopAdLdVar
  loc_BEED0C: FLdRfVar var_D0
  loc_BEED0F: FLdRfVar var_B0
  loc_BEED12: FLdPr Me
  loc_BEED15: MemLdRfVar from_stack_1.global_76
  loc_BEED18: NewIfNullPr clsliquidacion
  loc_BEED1B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEED20: FLdPr var_B0
  loc_BEED23:  = Me.Fields
  loc_BEED28: FLdPr var_D0
  loc_BEED2B: from_stack_2 = Me.Item(from_stack_1)
  loc_BEED30: LitI2_Byte 0
  loc_BEED32: LitVar_Missing var_E0
  loc_BEED35: LitI2_Byte 0
  loc_BEED37: FLdZeroAd var_134
  loc_BEED3A: CVarAd
  loc_BEED3E: PopAdLdVar
  loc_BEED3F: FMemLdRf 0
  loc_BEED44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEED49: FFreeAd var_B0 = ""
  loc_BEED50: FFreeVar var_CC = ""
  loc_BEED57: FLdRfVar var_134
  loc_BEED5A: LitVarStr var_9C, "NumeFact"
  loc_BEED5F: PopAdLdVar
  loc_BEED60: FLdRfVar var_D0
  loc_BEED63: FLdRfVar var_B0
  loc_BEED66: FLdPr Me
  loc_BEED69: MemLdRfVar from_stack_1.global_76
  loc_BEED6C: NewIfNullPr clsliquidacion
  loc_BEED6F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEED74: FLdPr var_B0
  loc_BEED77:  = Me.Fields
  loc_BEED7C: FLdPr var_D0
  loc_BEED7F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEED84: LitI2_Byte 0
  loc_BEED86: LitVar_Missing var_E0
  loc_BEED89: LitI2_Byte 0
  loc_BEED8B: FLdZeroAd var_134
  loc_BEED8E: CVarAd
  loc_BEED92: PopAdLdVar
  loc_BEED93: FMemLdRf 0
  loc_BEED98: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEED9D: FFreeAd var_B0 = ""
  loc_BEEDA4: FFreeVar var_CC = ""
  loc_BEEDAB: FLdRfVar var_134
  loc_BEEDAE: LitVarStr var_9C, "LiquImpu"
  loc_BEEDB3: PopAdLdVar
  loc_BEEDB4: FLdRfVar var_D0
  loc_BEEDB7: FLdRfVar var_B0
  loc_BEEDBA: FLdPr Me
  loc_BEEDBD: MemLdRfVar from_stack_1.global_76
  loc_BEEDC0: NewIfNullPr clsliquidacion
  loc_BEEDC3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEDC8: FLdPr var_B0
  loc_BEEDCB:  = Me.Fields
  loc_BEEDD0: FLdPr var_D0
  loc_BEEDD3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEDD8: LitI2_Byte 0
  loc_BEEDDA: FLdPr Me
  loc_BEEDDD: MemLdI2 global_100
  loc_BEEDE0: CI4UI1
  loc_BEEDE1: FLdPr Me
  loc_BEEDE4: MemLdStr global_92
  loc_BEEDE7: AryLock
  loc_BEEDEA: Ary1LdPr
  loc_BEEDEB: MemLdRfVar from_stack_1.global_64
  loc_BEEDEE: CVarRef
  loc_BEEDF3: LitI2_Byte &HFF
  loc_BEEDF5: FLdZeroAd var_134
  loc_BEEDF8: CVarAd
  loc_BEEDFC: PopAdLdVar
  loc_BEEDFD: FMemLdRf 0
  loc_BEEE02: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEE07: AryUnlock
  loc_BEEE0A: FFreeAd var_B0 = ""
  loc_BEEE11: FFree1Var var_CC = ""
  loc_BEEE14: Branch loc_BEF216
  loc_BEEE17: FLdRfVar var_CC
  loc_BEEE1A: FLdRfVar var_134
  loc_BEEE1D: LitVarStr var_9C, "TipoLiqu"
  loc_BEEE22: PopAdLdVar
  loc_BEEE23: FLdRfVar var_D0
  loc_BEEE26: FLdRfVar var_B0
  loc_BEEE29: FLdPr Me
  loc_BEEE2C: MemLdRfVar from_stack_1.global_72
  loc_BEEE2F: NewIfNullPr clsliquidacion
  loc_BEEE32: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEE37: FLdPr var_B0
  loc_BEEE3A:  = Me.Fields
  loc_BEEE3F: FLdPr var_D0
  loc_BEEE42: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEE47: FLdPr var_134
  loc_BEEE4A:  = Me.Value
  loc_BEEE4F: FLdRfVar var_CC
  loc_BEEE52: LitVarI2 var_AC, 2
  loc_BEEE57: HardType
  loc_BEEE58: EqVarBool
  loc_BEEE5A: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEEE63: FFree1Var var_CC = ""
  loc_BEEE66: BranchF loc_BEF216
  loc_BEEE69: FLdRfVar var_134
  loc_BEEE6C: LitVarStr var_9C, "CucuPers"
  loc_BEEE71: PopAdLdVar
  loc_BEEE72: FLdRfVar var_D0
  loc_BEEE75: FLdRfVar var_B0
  loc_BEEE78: FLdPr Me
  loc_BEEE7B: MemLdRfVar from_stack_1.global_76
  loc_BEEE7E: NewIfNullPr clsliquidacion
  loc_BEEE81: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEE86: FLdPr var_B0
  loc_BEEE89:  = Me.Fields
  loc_BEEE8E: FLdPr var_D0
  loc_BEEE91: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEE96: LitI2_Byte 0
  loc_BEEE98: LitVar_Missing var_E0
  loc_BEEE9B: LitI2_Byte 0
  loc_BEEE9D: FLdZeroAd var_134
  loc_BEEEA0: CVarAd
  loc_BEEEA4: PopAdLdVar
  loc_BEEEA5: FMemLdRf 0
  loc_BEEEAA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEEAF: FFreeAd var_B0 = ""
  loc_BEEEB6: FFreeVar var_CC = ""
  loc_BEEEBD: FLdRfVar var_134
  loc_BEEEC0: LitVarStr var_9C, "DetaProv"
  loc_BEEEC5: PopAdLdVar
  loc_BEEEC6: FLdRfVar var_D0
  loc_BEEEC9: FLdRfVar var_B0
  loc_BEEECC: FLdPr Me
  loc_BEEECF: MemLdRfVar from_stack_1.global_76
  loc_BEEED2: NewIfNullPr clsliquidacion
  loc_BEEED5: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEEDA: FLdPr var_B0
  loc_BEEEDD:  = Me.Fields
  loc_BEEEE2: FLdPr var_D0
  loc_BEEEE5: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEEEA: LitI2_Byte 0
  loc_BEEEEC: LitVar_Missing var_E0
  loc_BEEEEF: LitI2_Byte 0
  loc_BEEEF1: FLdZeroAd var_134
  loc_BEEEF4: CVarAd
  loc_BEEEF8: PopAdLdVar
  loc_BEEEF9: FMemLdRf 0
  loc_BEEEFE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEF03: FFreeAd var_B0 = ""
  loc_BEEF0A: FFreeVar var_CC = ""
  loc_BEEF11: FLdRfVar var_134
  loc_BEEF14: LitVarStr var_9C, "CodiCuco"
  loc_BEEF19: PopAdLdVar
  loc_BEEF1A: FLdRfVar var_D0
  loc_BEEF1D: FLdRfVar var_B0
  loc_BEEF20: FLdPr Me
  loc_BEEF23: MemLdRfVar from_stack_1.global_76
  loc_BEEF26: NewIfNullPr clsliquidacion
  loc_BEEF29: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEF2E: FLdPr var_B0
  loc_BEEF31:  = Me.Fields
  loc_BEEF36: FLdPr var_D0
  loc_BEEF39: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEF3E: LitI2_Byte 0
  loc_BEEF40: LitVar_Missing var_E0
  loc_BEEF43: LitI2_Byte 0
  loc_BEEF45: FLdZeroAd var_134
  loc_BEEF48: CVarAd
  loc_BEEF4C: PopAdLdVar
  loc_BEEF4D: FMemLdRf 0
  loc_BEEF52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEF57: FFreeAd var_B0 = ""
  loc_BEEF5E: FFreeVar var_CC = ""
  loc_BEEF65: FLdRfVar var_134
  loc_BEEF68: LitVarStr var_9C, "DetaCuco"
  loc_BEEF6D: PopAdLdVar
  loc_BEEF6E: FLdRfVar var_D0
  loc_BEEF71: FLdRfVar var_B0
  loc_BEEF74: FLdPr Me
  loc_BEEF77: MemLdRfVar from_stack_1.global_76
  loc_BEEF7A: NewIfNullPr clsliquidacion
  loc_BEEF7D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEF82: FLdPr var_B0
  loc_BEEF85:  = Me.Fields
  loc_BEEF8A: FLdPr var_D0
  loc_BEEF8D: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEF92: LitI2_Byte 0
  loc_BEEF94: LitVar_Missing var_E0
  loc_BEEF97: LitI2_Byte 0
  loc_BEEF99: FLdZeroAd var_134
  loc_BEEF9C: CVarAd
  loc_BEEFA0: PopAdLdVar
  loc_BEEFA1: FMemLdRf 0
  loc_BEEFA6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEFAB: FFreeAd var_B0 = ""
  loc_BEEFB2: FFreeVar var_CC = ""
  loc_BEEFB9: FLdRfVar var_134
  loc_BEEFBC: LitVarStr var_9C, "CodiOrga"
  loc_BEEFC1: PopAdLdVar
  loc_BEEFC2: FLdRfVar var_D0
  loc_BEEFC5: FLdRfVar var_B0
  loc_BEEFC8: FLdPr Me
  loc_BEEFCB: MemLdRfVar from_stack_1.global_76
  loc_BEEFCE: NewIfNullPr clsliquidacion
  loc_BEEFD1: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEEFD6: FLdPr var_B0
  loc_BEEFD9:  = Me.Fields
  loc_BEEFDE: FLdPr var_D0
  loc_BEEFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEFE6: LitI2_Byte 0
  loc_BEEFE8: LitVar_Missing var_E0
  loc_BEEFEB: LitI2_Byte 0
  loc_BEEFED: FLdZeroAd var_134
  loc_BEEFF0: CVarAd
  loc_BEEFF4: PopAdLdVar
  loc_BEEFF5: FMemLdRf 0
  loc_BEEFFA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEEFFF: FFreeAd var_B0 = ""
  loc_BEF006: FFreeVar var_CC = ""
  loc_BEF00D: FLdRfVar var_188
  loc_BEF010: FLdRfVar var_134
  loc_BEF013: LitVarStr var_9C, "NumeDebi"
  loc_BEF018: PopAdLdVar
  loc_BEF019: FLdRfVar var_D0
  loc_BEF01C: FLdRfVar var_B0
  loc_BEF01F: FLdPr Me
  loc_BEF022: MemLdRfVar from_stack_1.global_76
  loc_BEF025: NewIfNullPr clsliquidacion
  loc_BEF028: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF02D: FLdPr var_B0
  loc_BEF030:  = Me.Fields
  loc_BEF035: FLdPr var_D0
  loc_BEF038: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF03D: FLdPr var_134
  loc_BEF040:  = Me.Value
  loc_BEF045: FLdRfVar var_CC
  loc_BEF048: FLdRfVar var_1B4
  loc_BEF04B: LitVarStr var_AC, "FeanLide"
  loc_BEF050: PopAdLdVar
  loc_BEF051: FLdRfVar var_1B0
  loc_BEF054: FLdRfVar var_1AC
  loc_BEF057: FLdPr Me
  loc_BEF05A: MemLdRfVar from_stack_1.global_76
  loc_BEF05D: NewIfNullPr clsliquidacion
  loc_BEF060: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF065: FLdPr var_1AC
  loc_BEF068:  = Me.Fields
  loc_BEF06D: FLdPr var_1B0
  loc_BEF070: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF075: FLdPr var_1B4
  loc_BEF078:  = Me.Value
  loc_BEF07D: LitVarStr var_178, vbNullString
  loc_BEF082: FStVarCopyObj var_110
  loc_BEF085: FLdRfVar var_110
  loc_BEF088: LitVarStr var_158, "<br>Anul."
  loc_BEF08D: FStVarCopyObj var_100
  loc_BEF090: FLdRfVar var_100
  loc_BEF093: FLdRfVar var_CC
  loc_BEF096: LitVarStr var_148, vbNullString
  loc_BEF09B: HardType
  loc_BEF09C: NeVar var_E0
  loc_BEF0A0: FStVar var_F0
  loc_BEF0A4: FLdRfVar var_F0
  loc_BEF0A7: FLdRfVar var_168
  loc_BEF0AA: ImpAdCallFPR4  = IIf(, , )
  loc_BEF0AF: LitI2_Byte 0
  loc_BEF0B1: LitVar_Missing var_1E4
  loc_BEF0B4: LitI2_Byte 0
  loc_BEF0B6: FLdRfVar var_188
  loc_BEF0B9: FLdRfVar var_168
  loc_BEF0BC: ConcatVar var_1C4
  loc_BEF0C0: PopAdLdVar
  loc_BEF0C1: FMemLdRf 0
  loc_BEF0C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF0CB: FFreeAd var_B0 = "": var_D0 = "": var_1AC = "": var_1B0 = "": var_1B4 = ""
  loc_BEF0DA: FFreeVar var_CC = "": var_F0 = "": var_100 = "": var_110 = "": var_188 = "": var_168 = "": var_1C4 = ""
  loc_BEF0ED: FLdRfVar var_134
  loc_BEF0F0: LitVarStr var_9C, "NumeFact"
  loc_BEF0F5: PopAdLdVar
  loc_BEF0F6: FLdRfVar var_D0
  loc_BEF0F9: FLdRfVar var_B0
  loc_BEF0FC: FLdPr Me
  loc_BEF0FF: MemLdRfVar from_stack_1.global_76
  loc_BEF102: NewIfNullPr clsliquidacion
  loc_BEF105: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF10A: FLdPr var_B0
  loc_BEF10D:  = Me.Fields
  loc_BEF112: FLdPr var_D0
  loc_BEF115: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF11A: LitI2_Byte 0
  loc_BEF11C: LitVar_Missing var_E0
  loc_BEF11F: LitI2_Byte 0
  loc_BEF121: FLdZeroAd var_134
  loc_BEF124: CVarAd
  loc_BEF128: PopAdLdVar
  loc_BEF129: FMemLdRf 0
  loc_BEF12E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF133: FFreeAd var_B0 = ""
  loc_BEF13A: FFreeVar var_CC = ""
  loc_BEF141: FLdRfVar var_CC
  loc_BEF144: FLdRfVar var_134
  loc_BEF147: LitVarStr var_9C, "FeanLide"
  loc_BEF14C: PopAdLdVar
  loc_BEF14D: FLdRfVar var_D0
  loc_BEF150: FLdRfVar var_B0
  loc_BEF153: FLdPr Me
  loc_BEF156: MemLdRfVar from_stack_1.global_76
  loc_BEF159: NewIfNullPr clsliquidacion
  loc_BEF15C: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF161: FLdPr var_B0
  loc_BEF164:  = Me.Fields
  loc_BEF169: FLdPr var_D0
  loc_BEF16C: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF171: FLdPr var_134
  loc_BEF174:  = Me.Value
  loc_BEF179: FLdRfVar var_1B4
  loc_BEF17C: LitVarStr var_148, "ImpoImpu"
  loc_BEF181: PopAdLdVar
  loc_BEF182: FLdRfVar var_1B0
  loc_BEF185: FLdRfVar var_1AC
  loc_BEF188: FLdPr Me
  loc_BEF18B: MemLdRfVar from_stack_1.global_76
  loc_BEF18E: NewIfNullPr clsliquidacion
  loc_BEF191: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF196: FLdPr var_1AC
  loc_BEF199:  = Me.Fields
  loc_BEF19E: FLdPr var_1B0
  loc_BEF1A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF1A6: FLdZeroAd var_1B4
  loc_BEF1A9: CVarAd
  loc_BEF1AD: LitVarI2 var_100, 0
  loc_BEF1B2: FLdRfVar var_CC
  loc_BEF1B5: LitVarStr var_AC, vbNullString
  loc_BEF1BA: HardType
  loc_BEF1BB: NeVar var_E0
  loc_BEF1BF: FStVar var_F0
  loc_BEF1C3: FLdRfVar var_F0
  loc_BEF1C6: FLdRfVar var_168
  loc_BEF1C9: ImpAdCallFPR4  = IIf(, , )
  loc_BEF1CE: LitI2_Byte 0
  loc_BEF1D0: FLdPr Me
  loc_BEF1D3: MemLdI2 global_100
  loc_BEF1D6: CI4UI1
  loc_BEF1D7: FLdPr Me
  loc_BEF1DA: MemLdStr global_92
  loc_BEF1DD: AryLock
  loc_BEF1E0: Ary1LdPr
  loc_BEF1E1: MemLdRfVar from_stack_1.global_64
  loc_BEF1E4: CVarRef
  loc_BEF1E9: LitI2_Byte &HFF
  loc_BEF1EB: FLdVar var_168
  loc_BEF1EF: FMemLdRf 0
  loc_BEF1F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF1F9: AryUnlock
  loc_BEF1FC: FFreeAd var_B0 = "": var_D0 = "": var_134 = "": var_1AC = ""
  loc_BEF209: FFreeVar var_CC = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_BEF216: LitI4 0
  loc_BEF21B: FStR4 var_1A8
  loc_BEF21E: AryUnlock
  loc_BEF221: AryUnlock
  loc_BEF224: LitI2_Byte &HFF
  loc_BEF226: BranchF loc_BEF4F6
  loc_BEF229: FLdPr Me
  loc_BEF22C: MemLdRfVar from_stack_1.global_76
  loc_BEF22F: NewIfNullAd
  loc_BEF232: FStAd var_1E8 
  loc_BEF236: FLdRfVar var_BC
  loc_BEF239: FLdRfVar var_CC
  loc_BEF23C: FLdRfVar var_134
  loc_BEF23F: LitVarStr var_9C, "CucuPers"
  loc_BEF244: PopAdLdVar
  loc_BEF245: FLdRfVar var_D0
  loc_BEF248: FLdRfVar var_B0
  loc_BEF24B: FLdPr var_1E8
  loc_BEF24E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF253: FLdPr var_B0
  loc_BEF256:  = Me.Fields
  loc_BEF25B: FLdPr var_D0
  loc_BEF25E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF263: FLdPr var_134
  loc_BEF266:  = Me.Value
  loc_BEF26B: FLdRfVar var_CC
  loc_BEF26E: CStrVarTmp
  loc_BEF26F: FStStrNoPop var_B8
  loc_BEF272: FLdPr Me
  loc_BEF275: MemLdRfVar from_stack_1.global_84
  loc_BEF278: NewIfNullPr clsordencompra
  loc_BEF27B: from_stack_2v = clsordencompra.BuscaDeudaComercio(from_stack_1v)
  loc_BEF280: ILdRf var_BC
  loc_BEF283: FLdPr Me
  loc_BEF286: MemStStrCopy
  loc_BEF28A: FFreeStr var_B8 = ""
  loc_BEF291: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEF29A: FFree1Var var_CC = ""
  loc_BEF29D: FLdPr Me
  loc_BEF2A0: MemLdStr global_96
  loc_BEF2A3: LitStr vbNullString
  loc_BEF2A6: NeStr
  loc_BEF2A8: BranchF loc_BEF4F0
  loc_BEF2AB: FLdPr Me
  loc_BEF2AE: MemLdI2 global_108
  loc_BEF2B1: LitI2_Byte 0
  loc_BEF2B3: EqI2
  loc_BEF2B4: CVarBoolI2 var_148
  loc_BEF2B8: FLdPr Me
  loc_BEF2BB: MemLdI2 global_108
  loc_BEF2BE: CI4UI1
  loc_BEF2BF: FLdPr Me
  loc_BEF2C2: MemLdI2 global_100
  loc_BEF2C5: CI4UI1
  loc_BEF2C6: FLdPr Me
  loc_BEF2C9: MemLdStr global_92
  loc_BEF2CC: Ary1LdPr
  loc_BEF2CD: MemLdStr global_60
  loc_BEF2D0: Ary1LdPr
  loc_BEF2D1: MemLdStr global_0
  loc_BEF2D4: CVarStr var_AC
  loc_BEF2D7: HardType
  loc_BEF2D8: FLdRfVar var_CC
  loc_BEF2DB: FLdRfVar var_134
  loc_BEF2DE: LitVarStr var_9C, "CucuPers"
  loc_BEF2E3: PopAdLdVar
  loc_BEF2E4: FLdRfVar var_D0
  loc_BEF2E7: FLdRfVar var_B0
  loc_BEF2EA: FLdPr var_1E8
  loc_BEF2ED: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF2F2: FLdPr var_B0
  loc_BEF2F5:  = Me.Fields
  loc_BEF2FA: FLdPr var_D0
  loc_BEF2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF302: FLdPr var_134
  loc_BEF305:  = Me.Value
  loc_BEF30A: FLdRfVar var_CC
  loc_BEF30D: NeVar var_E0
  loc_BEF311: OrVar var_F0
  loc_BEF315: CBoolVarNull
  loc_BEF317: FFreeAd var_B0 = "": var_D0 = ""
  loc_BEF320: FFreeVar var_CC = ""
  loc_BEF327: BranchF loc_BEF4F0
  loc_BEF32A: FLdPr Me
  loc_BEF32D: MemLdI2 global_108
  loc_BEF330: LitI2_Byte 1
  loc_BEF332: AddI2
  loc_BEF333: FLdPr Me
  loc_BEF336: MemStI2 global_108
  loc_BEF339: LitI4 0
  loc_BEF33E: FLdPr Me
  loc_BEF341: MemLdI2 global_108
  loc_BEF344: CI4UI1
  loc_BEF345: FLdPr Me
  loc_BEF348: MemLdI2 global_100
  loc_BEF34B: CI4UI1
  loc_BEF34C: FLdPr Me
  loc_BEF34F: MemLdStr global_92
  loc_BEF352: Ary1LdPr
  loc_BEF353: MemLdRfVar from_stack_1.global_60
  loc_BEF356: RedimPreserve
  loc_BEF360: FLdRfVar var_134
  loc_BEF363: LitVarStr var_9C, "CucuPers"
  loc_BEF368: PopAdLdVar
  loc_BEF369: FLdRfVar var_D0
  loc_BEF36C: FLdRfVar var_B0
  loc_BEF36F: FLdPr var_1E8
  loc_BEF372: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF377: FLdPr var_B0
  loc_BEF37A:  = Me.Fields
  loc_BEF37F: FLdPr var_D0
  loc_BEF382: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF387: LitI2_Byte 0
  loc_BEF389: LitVar_Missing var_E0
  loc_BEF38C: LitI2_Byte 0
  loc_BEF38E: FLdZeroAd var_134
  loc_BEF391: CVarAd
  loc_BEF395: PopAdLdVar
  loc_BEF396: FLdPr Me
  loc_BEF399: MemLdI2 global_108
  loc_BEF39C: CI4UI1
  loc_BEF39D: FLdPr Me
  loc_BEF3A0: MemLdI2 global_100
  loc_BEF3A3: CI4UI1
  loc_BEF3A4: FLdPr Me
  loc_BEF3A7: MemLdStr global_92
  loc_BEF3AA: AryLock
  loc_BEF3AD: Ary1LdPr
  loc_BEF3AE: MemLdStr global_60
  loc_BEF3B1: AryLock
  loc_BEF3B4: Ary1LdPr
  loc_BEF3B5: MemLdRfVar from_stack_1.global_0
  loc_BEF3B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF3BD: AryUnlock
  loc_BEF3C0: AryUnlock
  loc_BEF3C3: FFreeAd var_B0 = ""
  loc_BEF3CA: FFreeVar var_CC = ""
  loc_BEF3D1: FLdRfVar var_134
  loc_BEF3D4: LitVarStr var_9C, "DetaProv"
  loc_BEF3D9: PopAdLdVar
  loc_BEF3DA: FLdRfVar var_D0
  loc_BEF3DD: FLdRfVar var_B0
  loc_BEF3E0: FLdPr var_1E8
  loc_BEF3E3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF3E8: FLdPr var_B0
  loc_BEF3EB:  = Me.Fields
  loc_BEF3F0: FLdPr var_D0
  loc_BEF3F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF3F8: LitI2_Byte 0
  loc_BEF3FA: LitVar_Missing var_E0
  loc_BEF3FD: LitI2_Byte 0
  loc_BEF3FF: FLdZeroAd var_134
  loc_BEF402: CVarAd
  loc_BEF406: PopAdLdVar
  loc_BEF407: FLdPr Me
  loc_BEF40A: MemLdI2 global_108
  loc_BEF40D: CI4UI1
  loc_BEF40E: FLdPr Me
  loc_BEF411: MemLdI2 global_100
  loc_BEF414: CI4UI1
  loc_BEF415: FLdPr Me
  loc_BEF418: MemLdStr global_92
  loc_BEF41B: AryLock
  loc_BEF41E: Ary1LdPr
  loc_BEF41F: MemLdStr global_60
  loc_BEF422: AryLock
  loc_BEF425: Ary1LdPr
  loc_BEF426: MemLdRfVar from_stack_1.global_4
  loc_BEF429: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF42E: AryUnlock
  loc_BEF431: AryUnlock
  loc_BEF434: FFreeAd var_B0 = ""
  loc_BEF43B: FFreeVar var_CC = ""
  loc_BEF442: FLdPr Me
  loc_BEF445: MemLdRfVar from_stack_1.global_96
  loc_BEF448: CVarRef
  loc_BEF44D: ImpAdCallI2 IsNumeric()
  loc_BEF452: BranchF loc_BEF4AF
  loc_BEF455: LitI2_Byte 0
  loc_BEF457: FLdPr Me
  loc_BEF45A: MemLdI2 global_100
  loc_BEF45D: CI4UI1
  loc_BEF45E: FLdPr Me
  loc_BEF461: MemLdStr global_92
  loc_BEF464: AryLock
  loc_BEF467: Ary1LdPr
  loc_BEF468: MemLdRfVar from_stack_1.global_76
  loc_BEF46B: CVarRef
  loc_BEF470: LitI2_Byte &HFF
  loc_BEF472: FLdPr Me
  loc_BEF475: MemLdStr global_96
  loc_BEF478: CVarStr var_9C
  loc_BEF47B: PopAdLdVar
  loc_BEF47C: FLdPr Me
  loc_BEF47F: MemLdI2 global_108
  loc_BEF482: CI4UI1
  loc_BEF483: FLdPr Me
  loc_BEF486: MemLdI2 global_100
  loc_BEF489: CI4UI1
  loc_BEF48A: FLdPr Me
  loc_BEF48D: MemLdStr global_92
  loc_BEF490: AryLock
  loc_BEF493: Ary1LdPr
  loc_BEF494: MemLdStr global_60
  loc_BEF497: AryLock
  loc_BEF49A: Ary1LdPr
  loc_BEF49B: MemLdRfVar from_stack_1.global_8
  loc_BEF49E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF4A3: AryUnlock
  loc_BEF4A6: AryUnlock
  loc_BEF4A9: AryUnlock
  loc_BEF4AC: Branch loc_BEF4F0
  loc_BEF4AF: LitI2_Byte 0
  loc_BEF4B1: LitVar_Missing var_CC
  loc_BEF4B4: LitI2_Byte 0
  loc_BEF4B6: FLdPr Me
  loc_BEF4B9: MemLdStr global_96
  loc_BEF4BC: CVarStr var_9C
  loc_BEF4BF: PopAdLdVar
  loc_BEF4C0: FLdPr Me
  loc_BEF4C3: MemLdI2 global_108
  loc_BEF4C6: CI4UI1
  loc_BEF4C7: FLdPr Me
  loc_BEF4CA: MemLdI2 global_100
  loc_BEF4CD: CI4UI1
  loc_BEF4CE: FLdPr Me
  loc_BEF4D1: MemLdStr global_92
  loc_BEF4D4: AryLock
  loc_BEF4D7: Ary1LdPr
  loc_BEF4D8: MemLdStr global_60
  loc_BEF4DB: AryLock
  loc_BEF4DE: Ary1LdPr
  loc_BEF4DF: MemLdRfVar from_stack_1.global_12
  loc_BEF4E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF4E7: AryUnlock
  loc_BEF4EA: AryUnlock
  loc_BEF4ED: FFree1Var var_CC = ""
  loc_BEF4F0: LitNothing
  loc_BEF4F2: FStAd var_1E8 
  loc_BEF4F6: FLdPr Me
  loc_BEF4F9: MemLdRfVar from_stack_1.global_76
  loc_BEF4FC: NewIfNullPr clsliquidacion
  loc_BEF4FF: Call clsliquidacion.MoveSiguiente()
  loc_BEF504: FLdPr Me
  loc_BEF507: MemLdRfVar from_stack_1.global_102
  loc_BEF50A: NextI2 var_19C, loc_BEEAEB
  loc_BEF50F: Branch loc_BEF525
  loc_BEF512: LitI2_Byte 0
  loc_BEF514: FLdPr Me
  loc_BEF517: MemLdI2 global_100
  loc_BEF51A: CI4UI1
  loc_BEF51B: FLdPr Me
  loc_BEF51E: MemLdStr global_92
  loc_BEF521: Ary1LdPr
  loc_BEF522: MemStI2 global_40
  loc_BEF525: LitStr "SELECT lqn.*, DetaProv, DetaRete, DetaDere,"
  loc_BEF528: LitStr " IFNULL(DetaCuco,'') AS DetaCuco, IF(lqn.TipoLine=1,lqn.CodiConc,BaseEsca) BaseEsca, AlicEsca, CertLine, ImpoLine"
  loc_BEF52B: ConcatStr
  loc_BEF52C: FStStrNoPop var_B8
  loc_BEF52F: LitStr ", CAST(IF(lqn.PefiLine>0 and lqn.PerfLine=0,concat('FI *',lqn.PefiLine),IF(lqn.PefiLine=0 and lqn.PerfLine>0,concat('RF *',lqn.PerfLine),if(lqn.PefiLine>0 and lqn.PerfLine>0,concat('FI *',lqn.PefiLine,' - RF *',lqn.PerfLine),'&nbsp;'))) AS Char) Penalidad"
  loc_BEF532: ConcatStr
  loc_BEF533: FStStrNoPop var_BC
  loc_BEF536: LitStr " FROM liquidaneto lqn"
  loc_BEF539: ConcatStr
  loc_BEF53A: FStStrNoPop var_114
  loc_BEF53D: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = lqn.CucuPers"
  loc_BEF540: ConcatStr
  loc_BEF541: FStStrNoPop var_118
  loc_BEF544: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = lqn.PeriInfo AND retenciones.CodiRete = lqn.CodiRete"
  loc_BEF547: ConcatStr
  loc_BEF548: FStStrNoPop var_11C
  loc_BEF54B: LitStr " INNER JOIN deretenciones ON deretenciones.PeriInfo = lqn.PeriInfo AND deretenciones.CodiRete = lqn.CodiRete AND deretenciones.CodiDere = lqn.CodiDere"
  loc_BEF54E: ConcatStr
  loc_BEF54F: FStStrNoPop var_120
  loc_BEF552: LitStr " INNER JOIN escalas ON escalas.PeriInfo = lqn.PeriInfo AND escalas.FechEsca = lqn.FechEsca AND escalas.CodiRete = lqn.CodiRete AND escalas.CodiDere = lqn.CodiDere AND escalas.CodiEsca = lqn.CodiEsca"
  loc_BEF555: ConcatStr
  loc_BEF556: FStStrNoPop var_124
  loc_BEF559: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = lqn.PeriInfo AND cc.CodiCuco = lqn.CodiCuco"
  loc_BEF55C: ConcatStr
  loc_BEF55D: FStStrNoPop var_18C
  loc_BEF560: LitStr " WHERE ExpeImpu = '"
  loc_BEF563: ConcatStr
  loc_BEF564: FStStrNoPop var_190
  loc_BEF567: FLdPr Me
  loc_BEF56A: MemLdI2 global_100
  loc_BEF56D: CI4UI1
  loc_BEF56E: FLdPr Me
  loc_BEF571: MemLdStr global_92
  loc_BEF574: Ary1LdPr
  loc_BEF575: MemLdStr global_4
  loc_BEF578: ConcatStr
  loc_BEF579: FStStrNoPop var_194
  loc_BEF57C: LitStr "' AND NumeLiqu = "
  loc_BEF57F: ConcatStr
  loc_BEF580: FStStrNoPop var_198
  loc_BEF583: FLdPr Me
  loc_BEF586: MemLdI2 global_100
  loc_BEF589: CI4UI1
  loc_BEF58A: FLdPr Me
  loc_BEF58D: MemLdStr global_92
  loc_BEF590: Ary1LdPr
  loc_BEF591: MemLdStr global_8
  loc_BEF594: ConcatStr
  loc_BEF595: FStStrNoPop var_1F4
  loc_BEF598: LitStr " AND lqn.CodiRete != 0"
  loc_BEF59B: ConcatStr
  loc_BEF59C: FStStrNoPop var_1F8
  loc_BEF59F: LitStr " ORDER BY DetaProv, lqn.CucuPers, CodiRete;"
  loc_BEF5A2: ConcatStr
  loc_BEF5A3: FStStrNoPop var_1FC
  loc_BEF5A6: FLdPr Me
  loc_BEF5A9: MemLdRfVar from_stack_1.global_76
  loc_BEF5AC: NewIfNullPr clsliquidacion
  loc_BEF5AF: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BEF5B4: FFreeStr var_B8 = "": var_BC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1F4 = "": var_1F8 = ""
  loc_BEF5D3: FLdRfVar var_128
  loc_BEF5D6: FLdPr Me
  loc_BEF5D9: MemLdRfVar from_stack_1.global_76
  loc_BEF5DC: NewIfNullPr clsliquidacion
  loc_BEF5DF: from_stack_1 = clsliquidacion.RecordCount
  loc_BEF5E4: ILdRf var_128
  loc_BEF5E7: LitI4 0
  loc_BEF5EC: GtI4
  loc_BEF5ED: BranchF loc_BEFBCE
  loc_BEF5F0: LitI2_Byte &HFF
  loc_BEF5F2: FLdPr Me
  loc_BEF5F5: MemLdI2 global_100
  loc_BEF5F8: CI4UI1
  loc_BEF5F9: FLdPr Me
  loc_BEF5FC: MemLdStr global_92
  loc_BEF5FF: Ary1LdPr
  loc_BEF600: MemStI2 global_42
  loc_BEF603: FLdRfVar var_128
  loc_BEF606: FLdPr Me
  loc_BEF609: MemLdRfVar from_stack_1.global_76
  loc_BEF60C: NewIfNullPr clsliquidacion
  loc_BEF60F: from_stack_1 = clsliquidacion.RecordCount
  loc_BEF614: LitI4 0
  loc_BEF619: ILdRf var_128
  loc_BEF61C: FLdPr Me
  loc_BEF61F: MemLdI2 global_100
  loc_BEF622: CI4UI1
  loc_BEF623: FLdPr Me
  loc_BEF626: MemLdStr global_92
  loc_BEF629: Ary1LdPr
  loc_BEF62A: MemLdRfVar from_stack_1.htmFile
  loc_BEF62D: RedimPreserve
  loc_BEF637: FLdPr Me
  loc_BEF63A: MemLdRfVar from_stack_1.global_76
  loc_BEF63D: NewIfNullPr clsliquidacion
  loc_BEF640: Call clsliquidacion.MoveFirst()
  loc_BEF645: LitI2_Byte 1
  loc_BEF647: FLdPr Me
  loc_BEF64A: MemLdRfVar from_stack_1.global_104
  loc_BEF64D: FLdPr Me
  loc_BEF650: MemLdI2 global_100
  loc_BEF653: CI4UI1
  loc_BEF654: FLdPr Me
  loc_BEF657: MemLdStr global_92
  loc_BEF65A: Ary1LdPr
  loc_BEF65B: MemLdStr htmFile
  loc_BEF65E: LitI2_Byte 1
  loc_BEF660: FnUBound
  loc_BEF662: CI2I4
  loc_BEF663: ForI2 var_200
  loc_BEF669: FLdPr Me
  loc_BEF66C: MemLdI2 global_104
  loc_BEF66F: CI4UI1
  loc_BEF670: FLdPr Me
  loc_BEF673: MemLdI2 global_100
  loc_BEF676: CI4UI1
  loc_BEF677: FLdPr Me
  loc_BEF67A: MemLdStr global_92
  loc_BEF67D: AryLock
  loc_BEF680: Ary1LdPr
  loc_BEF681: MemLdStr htmFile
  loc_BEF684: AryLock
  loc_BEF687: Ary1LdRf
  loc_BEF688: FStR4 var_20C
  loc_BEF68B: FLdRfVar var_134
  loc_BEF68E: LitVarStr var_9C, "CucuPers"
  loc_BEF693: PopAdLdVar
  loc_BEF694: FLdRfVar var_D0
  loc_BEF697: FLdRfVar var_B0
  loc_BEF69A: FLdPr Me
  loc_BEF69D: MemLdRfVar from_stack_1.global_76
  loc_BEF6A0: NewIfNullPr clsliquidacion
  loc_BEF6A3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF6A8: FLdPr var_B0
  loc_BEF6AB:  = Me.Fields
  loc_BEF6B0: FLdPr var_D0
  loc_BEF6B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF6B8: LitI2_Byte 0
  loc_BEF6BA: LitVar_Missing var_E0
  loc_BEF6BD: LitI2_Byte 0
  loc_BEF6BF: FLdZeroAd var_134
  loc_BEF6C2: CVarAd
  loc_BEF6C6: PopAdLdVar
  loc_BEF6C7: FMemLdRf 30001
  loc_BEF6CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF6D1: FFreeAd var_B0 = ""
  loc_BEF6D8: FFreeVar var_CC = ""
  loc_BEF6DF: FLdRfVar var_134
  loc_BEF6E2: LitVarStr var_9C, "DetaProv"
  loc_BEF6E7: PopAdLdVar
  loc_BEF6E8: FLdRfVar var_D0
  loc_BEF6EB: FLdRfVar var_B0
  loc_BEF6EE: FLdPr Me
  loc_BEF6F1: MemLdRfVar from_stack_1.global_76
  loc_BEF6F4: NewIfNullPr clsliquidacion
  loc_BEF6F7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF6FC: FLdPr var_B0
  loc_BEF6FF:  = Me.Fields
  loc_BEF704: FLdPr var_D0
  loc_BEF707: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF70C: LitI2_Byte 0
  loc_BEF70E: LitVar_Missing var_E0
  loc_BEF711: LitI2_Byte 0
  loc_BEF713: FLdZeroAd var_134
  loc_BEF716: CVarAd
  loc_BEF71A: PopAdLdVar
  loc_BEF71B: FMemLdRf 30001
  loc_BEF720: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF725: FFreeAd var_B0 = ""
  loc_BEF72C: FFreeVar var_CC = ""
  loc_BEF733: FLdRfVar var_134
  loc_BEF736: LitVarStr var_9C, "CodiRete"
  loc_BEF73B: PopAdLdVar
  loc_BEF73C: FLdRfVar var_D0
  loc_BEF73F: FLdRfVar var_B0
  loc_BEF742: FLdPr Me
  loc_BEF745: MemLdRfVar from_stack_1.global_76
  loc_BEF748: NewIfNullPr clsliquidacion
  loc_BEF74B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF750: FLdPr var_B0
  loc_BEF753:  = Me.Fields
  loc_BEF758: FLdPr var_D0
  loc_BEF75B: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF760: LitI2_Byte 0
  loc_BEF762: LitVar_Missing var_E0
  loc_BEF765: LitI2_Byte 0
  loc_BEF767: FLdZeroAd var_134
  loc_BEF76A: CVarAd
  loc_BEF76E: PopAdLdVar
  loc_BEF76F: FMemLdRf 30001
  loc_BEF774: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF779: FFreeAd var_B0 = ""
  loc_BEF780: FFreeVar var_CC = ""
  loc_BEF787: FLdRfVar var_134
  loc_BEF78A: LitVarStr var_9C, "DetaRete"
  loc_BEF78F: PopAdLdVar
  loc_BEF790: FLdRfVar var_D0
  loc_BEF793: FLdRfVar var_B0
  loc_BEF796: FLdPr Me
  loc_BEF799: MemLdRfVar from_stack_1.global_76
  loc_BEF79C: NewIfNullPr clsliquidacion
  loc_BEF79F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF7A4: FLdPr var_B0
  loc_BEF7A7:  = Me.Fields
  loc_BEF7AC: FLdPr var_D0
  loc_BEF7AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF7B4: LitI2_Byte 0
  loc_BEF7B6: LitVar_Missing var_E0
  loc_BEF7B9: LitI2_Byte 0
  loc_BEF7BB: FLdZeroAd var_134
  loc_BEF7BE: CVarAd
  loc_BEF7C2: PopAdLdVar
  loc_BEF7C3: FMemLdRf 30001
  loc_BEF7C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF7CD: FFreeAd var_B0 = ""
  loc_BEF7D4: FFreeVar var_CC = ""
  loc_BEF7DB: FLdRfVar var_134
  loc_BEF7DE: LitVarStr var_9C, "CodiDere"
  loc_BEF7E3: PopAdLdVar
  loc_BEF7E4: FLdRfVar var_D0
  loc_BEF7E7: FLdRfVar var_B0
  loc_BEF7EA: FLdPr Me
  loc_BEF7ED: MemLdRfVar from_stack_1.global_76
  loc_BEF7F0: NewIfNullPr clsliquidacion
  loc_BEF7F3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF7F8: FLdPr var_B0
  loc_BEF7FB:  = Me.Fields
  loc_BEF800: FLdPr var_D0
  loc_BEF803: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF808: LitI2_Byte 0
  loc_BEF80A: LitVar_Missing var_E0
  loc_BEF80D: LitI2_Byte 0
  loc_BEF80F: FLdZeroAd var_134
  loc_BEF812: CVarAd
  loc_BEF816: PopAdLdVar
  loc_BEF817: FMemLdRf 30001
  loc_BEF81C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF821: FFreeAd var_B0 = ""
  loc_BEF828: FFreeVar var_CC = ""
  loc_BEF82F: FLdRfVar var_134
  loc_BEF832: LitVarStr var_9C, "DetaDere"
  loc_BEF837: PopAdLdVar
  loc_BEF838: FLdRfVar var_D0
  loc_BEF83B: FLdRfVar var_B0
  loc_BEF83E: FLdPr Me
  loc_BEF841: MemLdRfVar from_stack_1.global_76
  loc_BEF844: NewIfNullPr clsliquidacion
  loc_BEF847: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF84C: FLdPr var_B0
  loc_BEF84F:  = Me.Fields
  loc_BEF854: FLdPr var_D0
  loc_BEF857: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF85C: LitI2_Byte 0
  loc_BEF85E: LitVar_Missing var_E0
  loc_BEF861: LitI2_Byte 0
  loc_BEF863: FLdZeroAd var_134
  loc_BEF866: CVarAd
  loc_BEF86A: PopAdLdVar
  loc_BEF86B: FMemLdRf 30001
  loc_BEF870: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF875: FFreeAd var_B0 = ""
  loc_BEF87C: FFreeVar var_CC = ""
  loc_BEF883: FLdRfVar var_134
  loc_BEF886: LitVarStr var_9C, "CodiCuco"
  loc_BEF88B: PopAdLdVar
  loc_BEF88C: FLdRfVar var_D0
  loc_BEF88F: FLdRfVar var_B0
  loc_BEF892: FLdPr Me
  loc_BEF895: MemLdRfVar from_stack_1.global_76
  loc_BEF898: NewIfNullPr clsliquidacion
  loc_BEF89B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF8A0: FLdPr var_B0
  loc_BEF8A3:  = Me.Fields
  loc_BEF8A8: FLdPr var_D0
  loc_BEF8AB: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF8B0: LitI2_Byte 0
  loc_BEF8B2: LitVar_Missing var_E0
  loc_BEF8B5: LitI2_Byte 0
  loc_BEF8B7: FLdZeroAd var_134
  loc_BEF8BA: CVarAd
  loc_BEF8BE: PopAdLdVar
  loc_BEF8BF: FMemLdRf 30001
  loc_BEF8C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF8C9: FFreeAd var_B0 = ""
  loc_BEF8D0: FFreeVar var_CC = ""
  loc_BEF8D7: FLdRfVar var_134
  loc_BEF8DA: LitVarStr var_9C, "DetaCuco"
  loc_BEF8DF: PopAdLdVar
  loc_BEF8E0: FLdRfVar var_D0
  loc_BEF8E3: FLdRfVar var_B0
  loc_BEF8E6: FLdPr Me
  loc_BEF8E9: MemLdRfVar from_stack_1.global_76
  loc_BEF8EC: NewIfNullPr clsliquidacion
  loc_BEF8EF: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF8F4: FLdPr var_B0
  loc_BEF8F7:  = Me.Fields
  loc_BEF8FC: FLdPr var_D0
  loc_BEF8FF: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF904: LitI2_Byte 0
  loc_BEF906: LitVar_Missing var_E0
  loc_BEF909: LitI2_Byte 0
  loc_BEF90B: FLdZeroAd var_134
  loc_BEF90E: CVarAd
  loc_BEF912: PopAdLdVar
  loc_BEF913: FMemLdRf 30001
  loc_BEF918: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF91D: FFreeAd var_B0 = ""
  loc_BEF924: FFreeVar var_CC = ""
  loc_BEF92B: FLdRfVar var_134
  loc_BEF92E: LitVarStr var_9C, "BaseEsca"
  loc_BEF933: PopAdLdVar
  loc_BEF934: FLdRfVar var_D0
  loc_BEF937: FLdRfVar var_B0
  loc_BEF93A: FLdPr Me
  loc_BEF93D: MemLdRfVar from_stack_1.global_76
  loc_BEF940: NewIfNullPr clsliquidacion
  loc_BEF943: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF948: FLdPr var_B0
  loc_BEF94B:  = Me.Fields
  loc_BEF950: FLdPr var_D0
  loc_BEF953: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF958: LitI2_Byte 0
  loc_BEF95A: LitVar_Missing var_E0
  loc_BEF95D: LitI2_Byte 0
  loc_BEF95F: FLdZeroAd var_134
  loc_BEF962: CVarAd
  loc_BEF966: PopAdLdVar
  loc_BEF967: FMemLdRf 30001
  loc_BEF96C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF971: FFreeAd var_B0 = ""
  loc_BEF978: FFreeVar var_CC = ""
  loc_BEF97F: FLdRfVar var_134
  loc_BEF982: LitVarStr var_9C, "AlicEsca"
  loc_BEF987: PopAdLdVar
  loc_BEF988: FLdRfVar var_D0
  loc_BEF98B: FLdRfVar var_B0
  loc_BEF98E: FLdPr Me
  loc_BEF991: MemLdRfVar from_stack_1.global_76
  loc_BEF994: NewIfNullPr clsliquidacion
  loc_BEF997: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF99C: FLdPr var_B0
  loc_BEF99F:  = Me.Fields
  loc_BEF9A4: FLdPr var_D0
  loc_BEF9A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BEF9AC: LitI2_Byte 0
  loc_BEF9AE: LitVar_Missing var_E0
  loc_BEF9B1: LitI2_Byte 0
  loc_BEF9B3: FLdZeroAd var_134
  loc_BEF9B6: CVarAd
  loc_BEF9BA: PopAdLdVar
  loc_BEF9BB: FMemLdRf 30001
  loc_BEF9C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEF9C5: FFreeAd var_B0 = ""
  loc_BEF9CC: FFreeVar var_CC = ""
  loc_BEF9D3: FLdRfVar var_134
  loc_BEF9D6: LitVarStr var_9C, "Penalidad"
  loc_BEF9DB: PopAdLdVar
  loc_BEF9DC: FLdRfVar var_D0
  loc_BEF9DF: FLdRfVar var_B0
  loc_BEF9E2: FLdPr Me
  loc_BEF9E5: MemLdRfVar from_stack_1.global_76
  loc_BEF9E8: NewIfNullPr clsliquidacion
  loc_BEF9EB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEF9F0: FLdPr var_B0
  loc_BEF9F3:  = Me.Fields
  loc_BEF9F8: FLdPr var_D0
  loc_BEF9FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFA00: LitI2_Byte 0
  loc_BEFA02: LitVar_Missing var_E0
  loc_BEFA05: LitI2_Byte 0
  loc_BEFA07: FLdZeroAd var_134
  loc_BEFA0A: CVarAd
  loc_BEFA0E: PopAdLdVar
  loc_BEFA0F: FMemLdRf 30001
  loc_BEFA14: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFA19: FFreeAd var_B0 = ""
  loc_BEFA20: FFreeVar var_CC = ""
  loc_BEFA27: FLdRfVar var_134
  loc_BEFA2A: LitVarStr var_9C, "PoexLine"
  loc_BEFA2F: PopAdLdVar
  loc_BEFA30: FLdRfVar var_D0
  loc_BEFA33: FLdRfVar var_B0
  loc_BEFA36: FLdPr Me
  loc_BEFA39: MemLdRfVar from_stack_1.global_76
  loc_BEFA3C: NewIfNullPr clsliquidacion
  loc_BEFA3F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFA44: FLdPr var_B0
  loc_BEFA47:  = Me.Fields
  loc_BEFA4C: FLdPr var_D0
  loc_BEFA4F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFA54: LitI2_Byte 0
  loc_BEFA56: LitVar_Missing var_E0
  loc_BEFA59: LitI2_Byte 0
  loc_BEFA5B: FLdZeroAd var_134
  loc_BEFA5E: CVarAd
  loc_BEFA62: PopAdLdVar
  loc_BEFA63: FMemLdRf 30001
  loc_BEFA68: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFA6D: FFreeAd var_B0 = ""
  loc_BEFA74: FFreeVar var_CC = ""
  loc_BEFA7B: FLdRfVar var_134
  loc_BEFA7E: LitVarStr var_9C, "CertLine"
  loc_BEFA83: PopAdLdVar
  loc_BEFA84: FLdRfVar var_D0
  loc_BEFA87: FLdRfVar var_B0
  loc_BEFA8A: FLdPr Me
  loc_BEFA8D: MemLdRfVar from_stack_1.global_76
  loc_BEFA90: NewIfNullPr clsliquidacion
  loc_BEFA93: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFA98: FLdPr var_B0
  loc_BEFA9B:  = Me.Fields
  loc_BEFAA0: FLdPr var_D0
  loc_BEFAA3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFAA8: LitI2_Byte 0
  loc_BEFAAA: LitVar_Missing var_E0
  loc_BEFAAD: LitI2_Byte 0
  loc_BEFAAF: FLdZeroAd var_134
  loc_BEFAB2: CVarAd
  loc_BEFAB6: PopAdLdVar
  loc_BEFAB7: FMemLdRf 30001
  loc_BEFABC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFAC1: FFreeAd var_B0 = ""
  loc_BEFAC8: FFreeVar var_CC = ""
  loc_BEFACF: FLdRfVar var_CC
  loc_BEFAD2: FLdRfVar var_134
  loc_BEFAD5: LitVarStr var_9C, "FeanLine"
  loc_BEFADA: PopAdLdVar
  loc_BEFADB: FLdRfVar var_D0
  loc_BEFADE: FLdRfVar var_B0
  loc_BEFAE1: FLdPr Me
  loc_BEFAE4: MemLdRfVar from_stack_1.global_76
  loc_BEFAE7: NewIfNullPr clsliquidacion
  loc_BEFAEA: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFAEF: FLdPr var_B0
  loc_BEFAF2:  = Me.Fields
  loc_BEFAF7: FLdPr var_D0
  loc_BEFAFA: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFAFF: FLdPr var_134
  loc_BEFB02:  = Me.Value
  loc_BEFB07: FLdRfVar var_1B4
  loc_BEFB0A: LitVarStr var_148, "ImpoLine"
  loc_BEFB0F: PopAdLdVar
  loc_BEFB10: FLdRfVar var_1B0
  loc_BEFB13: FLdRfVar var_1AC
  loc_BEFB16: FLdPr Me
  loc_BEFB19: MemLdRfVar from_stack_1.global_76
  loc_BEFB1C: NewIfNullPr clsliquidacion
  loc_BEFB1F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFB24: FLdPr var_1AC
  loc_BEFB27:  = Me.Fields
  loc_BEFB2C: FLdPr var_1B0
  loc_BEFB2F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFB34: FLdZeroAd var_1B4
  loc_BEFB37: CVarAd
  loc_BEFB3B: LitVarI2 var_100, 0
  loc_BEFB40: FLdRfVar var_CC
  loc_BEFB43: LitVarStr var_AC, vbNullString
  loc_BEFB48: HardType
  loc_BEFB49: NeVar var_E0
  loc_BEFB4D: FStVar var_F0
  loc_BEFB51: FLdRfVar var_F0
  loc_BEFB54: FLdRfVar var_168
  loc_BEFB57: ImpAdCallFPR4  = IIf(, , )
  loc_BEFB5C: LitI2_Byte 0
  loc_BEFB5E: FLdPr Me
  loc_BEFB61: MemLdI2 global_100
  loc_BEFB64: CI4UI1
  loc_BEFB65: FLdPr Me
  loc_BEFB68: MemLdStr global_92
  loc_BEFB6B: AryLock
  loc_BEFB6E: Ary1LdPr
  loc_BEFB6F: MemLdRfVar from_stack_1.bGenerado
  loc_BEFB72: CVarRef
  loc_BEFB77: LitI2_Byte &HFF
  loc_BEFB79: FLdVar var_168
  loc_BEFB7D: FMemLdRf 30001
  loc_BEFB82: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFB87: AryUnlock
  loc_BEFB8A: FFreeAd var_B0 = "": var_D0 = "": var_134 = "": var_1AC = ""
  loc_BEFB97: FFreeVar var_CC = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_BEFBA4: LitI4 0
  loc_BEFBA9: FStR4 var_20C
  loc_BEFBAC: AryUnlock
  loc_BEFBAF: AryUnlock
  loc_BEFBB2: FLdPr Me
  loc_BEFBB5: MemLdRfVar from_stack_1.global_76
  loc_BEFBB8: NewIfNullPr clsliquidacion
  loc_BEFBBB: Call clsliquidacion.MoveSiguiente()
  loc_BEFBC0: FLdPr Me
  loc_BEFBC3: MemLdRfVar from_stack_1.global_104
  loc_BEFBC6: NextI2 var_200, loc_BEF669
  loc_BEFBCB: Branch loc_BEFBE1
  loc_BEFBCE: LitI2_Byte 0
  loc_BEFBD0: FLdPr Me
  loc_BEFBD3: MemLdI2 global_100
  loc_BEFBD6: CI4UI1
  loc_BEFBD7: FLdPr Me
  loc_BEFBDA: MemLdStr global_92
  loc_BEFBDD: Ary1LdPr
  loc_BEFBDE: MemStI2 global_42
  loc_BEFBE1: LitStr "SELECT liquidaneto.CucuPers, DetaProv, ImpoLine, FeanLine"
  loc_BEFBE4: LitStr " FROM liquidaneto"
  loc_BEFBE7: ConcatStr
  loc_BEFBE8: FStStrNoPop var_B8
  loc_BEFBEB: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = liquidaneto.CucuPers"
  loc_BEFBEE: ConcatStr
  loc_BEFBEF: FStStrNoPop var_BC
  loc_BEFBF2: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = liquidaneto.PeriInfo AND retenciones.CodiRete = liquidaneto.CodiRete AND liquidaneto.CodiRete = 0"
  loc_BEFBF5: ConcatStr
  loc_BEFBF6: FStStrNoPop var_114
  loc_BEFBF9: LitStr " WHERE ExpeImpu = '"
  loc_BEFBFC: ConcatStr
  loc_BEFBFD: FStStrNoPop var_118
  loc_BEFC00: FLdPr Me
  loc_BEFC03: MemLdI2 global_100
  loc_BEFC06: CI4UI1
  loc_BEFC07: FLdPr Me
  loc_BEFC0A: MemLdStr global_92
  loc_BEFC0D: Ary1LdPr
  loc_BEFC0E: MemLdStr global_4
  loc_BEFC11: ConcatStr
  loc_BEFC12: FStStrNoPop var_11C
  loc_BEFC15: LitStr "' AND NumeLiqu = "
  loc_BEFC18: ConcatStr
  loc_BEFC19: FStStrNoPop var_120
  loc_BEFC1C: FLdPr Me
  loc_BEFC1F: MemLdI2 global_100
  loc_BEFC22: CI4UI1
  loc_BEFC23: FLdPr Me
  loc_BEFC26: MemLdStr global_92
  loc_BEFC29: Ary1LdPr
  loc_BEFC2A: MemLdStr global_8
  loc_BEFC2D: ConcatStr
  loc_BEFC2E: FStStrNoPop var_124
  loc_BEFC31: LitStr " ORDER BY DetaProv, liquidaneto.CucuPers"
  loc_BEFC34: ConcatStr
  loc_BEFC35: FStStrNoPop var_18C
  loc_BEFC38: FLdPr Me
  loc_BEFC3B: MemLdRfVar from_stack_1.global_76
  loc_BEFC3E: NewIfNullPr clsliquidacion
  loc_BEFC41: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BEFC46: FFreeStr var_B8 = "": var_BC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_BEFC59: FLdRfVar var_128
  loc_BEFC5C: FLdPr Me
  loc_BEFC5F: MemLdRfVar from_stack_1.global_76
  loc_BEFC62: NewIfNullPr clsliquidacion
  loc_BEFC65: from_stack_1 = clsliquidacion.RecordCount
  loc_BEFC6A: ILdRf var_128
  loc_BEFC6D: LitI4 0
  loc_BEFC72: GtI4
  loc_BEFC73: BranchF loc_BEFEB8
  loc_BEFC76: LitI2_Byte &HFF
  loc_BEFC78: FLdPr Me
  loc_BEFC7B: MemLdI2 global_100
  loc_BEFC7E: CI4UI1
  loc_BEFC7F: FLdPr Me
  loc_BEFC82: MemLdStr global_92
  loc_BEFC85: Ary1LdPr
  loc_BEFC86: MemStI2 global_44
  loc_BEFC89: FLdRfVar var_128
  loc_BEFC8C: FLdPr Me
  loc_BEFC8F: MemLdRfVar from_stack_1.global_76
  loc_BEFC92: NewIfNullPr clsliquidacion
  loc_BEFC95: from_stack_1 = clsliquidacion.RecordCount
  loc_BEFC9A: LitI4 0
  loc_BEFC9F: ILdRf var_128
  loc_BEFCA2: FLdPr Me
  loc_BEFCA5: MemLdI2 global_100
  loc_BEFCA8: CI4UI1
  loc_BEFCA9: FLdPr Me
  loc_BEFCAC: MemLdStr global_92
  loc_BEFCAF: Ary1LdPr
  loc_BEFCB0: MemLdRfVar from_stack_1.global_56
  loc_BEFCB3: RedimPreserve
  loc_BEFCBD: FLdPr Me
  loc_BEFCC0: MemLdRfVar from_stack_1.global_76
  loc_BEFCC3: NewIfNullPr clsliquidacion
  loc_BEFCC6: Call clsliquidacion.MoveFirst()
  loc_BEFCCB: LitI2_Byte 1
  loc_BEFCCD: FLdPr Me
  loc_BEFCD0: MemLdRfVar from_stack_1.global_106
  loc_BEFCD3: FLdPr Me
  loc_BEFCD6: MemLdI2 global_100
  loc_BEFCD9: CI4UI1
  loc_BEFCDA: FLdPr Me
  loc_BEFCDD: MemLdStr global_92
  loc_BEFCE0: Ary1LdPr
  loc_BEFCE1: MemLdStr global_56
  loc_BEFCE4: LitI2_Byte 1
  loc_BEFCE6: FnUBound
  loc_BEFCE8: CI2I4
  loc_BEFCE9: ForI2 var_210
  loc_BEFCEF: FLdPr Me
  loc_BEFCF2: MemLdI2 global_106
  loc_BEFCF5: CI4UI1
  loc_BEFCF6: FLdPr Me
  loc_BEFCF9: MemLdI2 global_100
  loc_BEFCFC: CI4UI1
  loc_BEFCFD: FLdPr Me
  loc_BEFD00: MemLdStr global_92
  loc_BEFD03: AryLock
  loc_BEFD06: Ary1LdPr
  loc_BEFD07: MemLdStr global_56
  loc_BEFD0A: AryLock
  loc_BEFD0D: Ary1LdRf
  loc_BEFD0E: FStR4 var_21C
  loc_BEFD11: FLdRfVar var_134
  loc_BEFD14: LitVarStr var_9C, "CucuPers"
  loc_BEFD19: PopAdLdVar
  loc_BEFD1A: FLdRfVar var_D0
  loc_BEFD1D: FLdRfVar var_B0
  loc_BEFD20: FLdPr Me
  loc_BEFD23: MemLdRfVar from_stack_1.global_76
  loc_BEFD26: NewIfNullPr clsliquidacion
  loc_BEFD29: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFD2E: FLdPr var_B0
  loc_BEFD31:  = Me.Fields
  loc_BEFD36: FLdPr var_D0
  loc_BEFD39: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFD3E: LitI2_Byte 0
  loc_BEFD40: LitVar_Missing var_E0
  loc_BEFD43: LitI2_Byte 0
  loc_BEFD45: FLdZeroAd var_134
  loc_BEFD48: CVarAd
  loc_BEFD4C: PopAdLdVar
  loc_BEFD4D: FMemLdRf 3000A
  loc_BEFD52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFD57: FFreeAd var_B0 = ""
  loc_BEFD5E: FFreeVar var_CC = ""
  loc_BEFD65: FLdRfVar var_134
  loc_BEFD68: LitVarStr var_9C, "DetaProv"
  loc_BEFD6D: PopAdLdVar
  loc_BEFD6E: FLdRfVar var_D0
  loc_BEFD71: FLdRfVar var_B0
  loc_BEFD74: FLdPr Me
  loc_BEFD77: MemLdRfVar from_stack_1.global_76
  loc_BEFD7A: NewIfNullPr clsliquidacion
  loc_BEFD7D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFD82: FLdPr var_B0
  loc_BEFD85:  = Me.Fields
  loc_BEFD8A: FLdPr var_D0
  loc_BEFD8D: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFD92: LitI2_Byte 0
  loc_BEFD94: LitVar_Missing var_E0
  loc_BEFD97: LitI2_Byte 0
  loc_BEFD99: FLdZeroAd var_134
  loc_BEFD9C: CVarAd
  loc_BEFDA0: PopAdLdVar
  loc_BEFDA1: FMemLdRf 3000A
  loc_BEFDA6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFDAB: FFreeAd var_B0 = ""
  loc_BEFDB2: FFreeVar var_CC = ""
  loc_BEFDB9: FLdRfVar var_CC
  loc_BEFDBC: FLdRfVar var_134
  loc_BEFDBF: LitVarStr var_9C, "FeanLine"
  loc_BEFDC4: PopAdLdVar
  loc_BEFDC5: FLdRfVar var_D0
  loc_BEFDC8: FLdRfVar var_B0
  loc_BEFDCB: FLdPr Me
  loc_BEFDCE: MemLdRfVar from_stack_1.global_76
  loc_BEFDD1: NewIfNullPr clsliquidacion
  loc_BEFDD4: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFDD9: FLdPr var_B0
  loc_BEFDDC:  = Me.Fields
  loc_BEFDE1: FLdPr var_D0
  loc_BEFDE4: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFDE9: FLdPr var_134
  loc_BEFDEC:  = Me.Value
  loc_BEFDF1: FLdRfVar var_1B4
  loc_BEFDF4: LitVarStr var_148, "ImpoLine"
  loc_BEFDF9: PopAdLdVar
  loc_BEFDFA: FLdRfVar var_1B0
  loc_BEFDFD: FLdRfVar var_1AC
  loc_BEFE00: FLdPr Me
  loc_BEFE03: MemLdRfVar from_stack_1.global_76
  loc_BEFE06: NewIfNullPr clsliquidacion
  loc_BEFE09: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BEFE0E: FLdPr var_1AC
  loc_BEFE11:  = Me.Fields
  loc_BEFE16: FLdPr var_1B0
  loc_BEFE19: from_stack_2 = Me.Item(from_stack_1)
  loc_BEFE1E: FLdZeroAd var_1B4
  loc_BEFE21: CVarAd
  loc_BEFE25: LitVarI2 var_100, 0
  loc_BEFE2A: FLdRfVar var_CC
  loc_BEFE2D: LitVarStr var_AC, vbNullString
  loc_BEFE32: HardType
  loc_BEFE33: NeVar var_E0
  loc_BEFE37: FStVar var_F0
  loc_BEFE3B: FLdRfVar var_F0
  loc_BEFE3E: FLdRfVar var_168
  loc_BEFE41: ImpAdCallFPR4  = IIf(, , )
  loc_BEFE46: LitI2_Byte 0
  loc_BEFE48: FLdPr Me
  loc_BEFE4B: MemLdI2 global_100
  loc_BEFE4E: CI4UI1
  loc_BEFE4F: FLdPr Me
  loc_BEFE52: MemLdStr global_92
  loc_BEFE55: AryLock
  loc_BEFE58: Ary1LdPr
  loc_BEFE59: MemLdRfVar from_stack_1.global_72
  loc_BEFE5C: CVarRef
  loc_BEFE61: LitI2_Byte &HFF
  loc_BEFE63: FLdVar var_168
  loc_BEFE67: FMemLdRf 3000A
  loc_BEFE6C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEFE71: AryUnlock
  loc_BEFE74: FFreeAd var_B0 = "": var_D0 = "": var_134 = "": var_1AC = ""
  loc_BEFE81: FFreeVar var_CC = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_BEFE8E: LitI4 0
  loc_BEFE93: FStR4 var_21C
  loc_BEFE96: AryUnlock
  loc_BEFE99: AryUnlock
  loc_BEFE9C: FLdPr Me
  loc_BEFE9F: MemLdRfVar from_stack_1.global_76
  loc_BEFEA2: NewIfNullPr clsliquidacion
  loc_BEFEA5: Call clsliquidacion.MoveSiguiente()
  loc_BEFEAA: FLdPr Me
  loc_BEFEAD: MemLdRfVar from_stack_1.global_106
  loc_BEFEB0: NextI2 var_210, loc_BEFCEF
  loc_BEFEB5: Branch loc_BEFECB
  loc_BEFEB8: LitI2_Byte 0
  loc_BEFEBA: FLdPr Me
  loc_BEFEBD: MemLdI2 global_100
  loc_BEFEC0: CI4UI1
  loc_BEFEC1: FLdPr Me
  loc_BEFEC4: MemLdStr global_92
  loc_BEFEC7: Ary1LdPr
  loc_BEFEC8: MemStI2 global_44
  loc_BEFECB: FLdPr Me
  loc_BEFECE: MemLdRfVar from_stack_1.global_72
  loc_BEFED1: NewIfNullPr clsliquidacion
  loc_BEFED4: Call clsliquidacion.MoveSiguiente()
  loc_BEFED9: FLdPr Me
  loc_BEFEDC: MemLdRfVar from_stack_1.global_100
  loc_BEFEDF: NextI2 var_12C, loc_BEE447
  loc_BEFEE4: LitI2_Byte &HFF
  loc_BEFEE6: FLdPr Me
  loc_BEFEE9: MemStI2 bGenerado
  loc_BEFEEC: LitI4 0
  loc_BEFEF1: CI2I4
  loc_BEFEF2: FLdPr Me
  loc_BEFEF5: Me.MousePointer = from_stack_1
  loc_BEFEFA: LitVarStr var_9C, vbNullString
  loc_BEFEFF: PopAdLdVar
  loc_BEFF00: FLdPr Me
  loc_BEFF03: VCallAd Control_ID_statusBar
  loc_BEFF06: FStAdFunc var_B0
  loc_BEFF09: FLdPr var_B0
  loc_BEFF0C: LateIdSt
  loc_BEFF11: FFree1Ad var_B0
  loc_BEFF14: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B891D4
  'Data Table: 44B984
  loc_B883A0: FLdRfVar var_88
  loc_B883A3: LitI2_Byte 0
  loc_B883A5: LitI2_Byte &HFF
  loc_B883A7: ImpAdLdI4 MemVar_C3D83C
  loc_B883AA: FLdPr Me
  loc_B883AD: MemLdRfVar from_stack_1.global_88
  loc_B883B0: NewIfNullPr IFileSystem3
  loc_B883B3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B883B8: ILdRf var_88
  loc_B883BB: FLdPr Me
  loc_B883BE: MemStVarAd
  loc_B883C2: FFree1Ad var_88
  loc_B883C5: Call Proc_254_18_9BAC34()
  loc_B883CA: LitI2_Byte 1
  loc_B883CC: FLdPr Me
  loc_B883CF: MemLdRfVar from_stack_1.global_100
  loc_B883D2: FLdPr Me
  loc_B883D5: MemLdStr global_92
  loc_B883D8: LitI2_Byte 1
  loc_B883DA: FnUBound
  loc_B883DC: CI2I4
  loc_B883DD: ForI2 var_8C
  loc_B883E3: FLdPr Me
  loc_B883E6: MemLdI2 global_100
  loc_B883E9: LitI2_Byte 1
  loc_B883EB: NeI2
  loc_B883EC: BranchF loc_B88403
  loc_B883EF: LitVarStr var_9C, "<div style=""page-break-before:always""></div>"
  loc_B883F4: PopAdLdVar
  loc_B883F5: FLdPr Me
  loc_B883F8: MemLdRfVar from_stack_1.htmFile
  loc_B883FB: LdPrVar
  loc_B883FD: LateMemCall
  loc_B88403: Call Proc_254_19_A70938()
  loc_B88408: FLdPr Me
  loc_B8840B: MemLdI2 global_100
  loc_B8840E: CI4UI1
  loc_B8840F: FLdPr Me
  loc_B88412: MemLdStr global_92
  loc_B88415: Ary1LdPr
  loc_B88416: MemLdI2 global_40
  loc_B88419: BranchF loc_B887B8
  loc_B8841C: LitI2_Byte 1
  loc_B8841E: FLdPr Me
  loc_B88421: MemLdRfVar from_stack_1.global_102
  loc_B88424: FLdPr Me
  loc_B88427: MemLdI2 global_100
  loc_B8842A: CI4UI1
  loc_B8842B: FLdPr Me
  loc_B8842E: MemLdStr global_92
  loc_B88431: Ary1LdPr
  loc_B88432: MemLdStr global_48
  loc_B88435: LitI2_Byte 1
  loc_B88437: FnUBound
  loc_B88439: CI2I4
  loc_B8843A: ForI2 var_B0
  loc_B88440: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B88445: PopAdLdVar
  loc_B88446: FLdPr Me
  loc_B88449: MemLdRfVar from_stack_1.htmFile
  loc_B8844C: LdPrVar
  loc_B8844E: LateMemCall
  loc_B88454: FLdPr Me
  loc_B88457: MemLdI2 global_102
  loc_B8845A: CI4UI1
  loc_B8845B: FLdPr Me
  loc_B8845E: MemLdI2 global_100
  loc_B88461: CI4UI1
  loc_B88462: FLdPr Me
  loc_B88465: MemLdStr global_92
  loc_B88468: AryLock
  loc_B8846B: Ary1LdPr
  loc_B8846C: MemLdStr global_48
  loc_B8846F: AryLock
  loc_B88472: Ary1LdRf
  loc_B88473: FStR4 var_BC
  loc_B88476: FLdPr Me
  loc_B88479: MemLdI2 global_100
  loc_B8847C: CI4UI1
  loc_B8847D: FLdPr Me
  loc_B88480: MemLdStr global_92
  loc_B88483: Ary1LdPr
  loc_B88484: MemLdStr global_20
  loc_B88487: LitStr "Devengado"
  loc_B8848A: EqStr
  loc_B8848C: BranchF loc_B88602
  loc_B8848F: LitI4 0
  loc_B88494: LitI4 0
  loc_B88499: LitI2_Byte 0
  loc_B8849B: LitStr "left"
  loc_B8849E: FMemLdR4 var_BC(0)
  loc_B884A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B884A8: CVarStr var_CC
  loc_B884AB: PopAdLdVar
  loc_B884AC: FLdPr Me
  loc_B884AF: MemLdRfVar from_stack_1.htmFile
  loc_B884B2: LdPrVar
  loc_B884B4: LateMemCall
  loc_B884BA: FFree1Var var_CC = ""
  loc_B884BD: LitI4 0
  loc_B884C2: LitI4 0
  loc_B884C7: LitI2_Byte 0
  loc_B884C9: LitStr "left"
  loc_B884CC: FMemLdR4 var_BC(4)
  loc_B884D1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B884D6: CVarStr var_CC
  loc_B884D9: PopAdLdVar
  loc_B884DA: FLdPr Me
  loc_B884DD: MemLdRfVar from_stack_1.htmFile
  loc_B884E0: LdPrVar
  loc_B884E2: LateMemCall
  loc_B884E8: FFree1Var var_CC = ""
  loc_B884EB: LitI4 0
  loc_B884F0: LitI4 0
  loc_B884F5: LitI2_Byte 0
  loc_B884F7: LitStr "left"
  loc_B884FA: FMemLdR4 var_BC(8)
  loc_B884FF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88504: CVarStr var_CC
  loc_B88507: PopAdLdVar
  loc_B88508: FLdPr Me
  loc_B8850B: MemLdRfVar from_stack_1.htmFile
  loc_B8850E: LdPrVar
  loc_B88510: LateMemCall
  loc_B88516: FFree1Var var_CC = ""
  loc_B88519: LitI4 0
  loc_B8851E: LitI4 0
  loc_B88523: LitI2_Byte 0
  loc_B88525: LitStr "left"
  loc_B88528: FMemLdR4 var_BC(12)
  loc_B8852D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88532: CVarStr var_CC
  loc_B88535: PopAdLdVar
  loc_B88536: FLdPr Me
  loc_B88539: MemLdRfVar from_stack_1.htmFile
  loc_B8853C: LdPrVar
  loc_B8853E: LateMemCall
  loc_B88544: FFree1Var var_CC = ""
  loc_B88547: LitI4 0
  loc_B8854C: LitI4 0
  loc_B88551: LitI2_Byte 0
  loc_B88553: LitStr "left"
  loc_B88556: FMemLdR4 var_BC(16)
  loc_B8855B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88560: CVarStr var_CC
  loc_B88563: PopAdLdVar
  loc_B88564: FLdPr Me
  loc_B88567: MemLdRfVar from_stack_1.htmFile
  loc_B8856A: LdPrVar
  loc_B8856C: LateMemCall
  loc_B88572: FFree1Var var_CC = ""
  loc_B88575: LitI4 0
  loc_B8857A: LitI4 0
  loc_B8857F: LitI2_Byte 0
  loc_B88581: LitStr "left"
  loc_B88584: FMemLdR4 var_BC(20)
  loc_B88589: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8858E: CVarStr var_CC
  loc_B88591: PopAdLdVar
  loc_B88592: FLdPr Me
  loc_B88595: MemLdRfVar from_stack_1.htmFile
  loc_B88598: LdPrVar
  loc_B8859A: LateMemCall
  loc_B885A0: FFree1Var var_CC = ""
  loc_B885A3: LitI4 0
  loc_B885A8: LitI4 0
  loc_B885AD: LitI2_Byte 0
  loc_B885AF: LitStr "left"
  loc_B885B2: FMemLdR4 var_BC(36)
  loc_B885B7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B885BC: CVarStr var_CC
  loc_B885BF: PopAdLdVar
  loc_B885C0: FLdPr Me
  loc_B885C3: MemLdRfVar from_stack_1.htmFile
  loc_B885C6: LdPrVar
  loc_B885C8: LateMemCall
  loc_B885CE: FFree1Var var_CC = ""
  loc_B885D1: LitI4 0
  loc_B885D6: LitI4 0
  loc_B885DB: LitI2_Byte 0
  loc_B885DD: LitStr "right"
  loc_B885E0: FMemLdR4 var_BC(40)
  loc_B885E5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B885EA: CVarStr var_CC
  loc_B885ED: PopAdLdVar
  loc_B885EE: FLdPr Me
  loc_B885F1: MemLdRfVar from_stack_1.htmFile
  loc_B885F4: LdPrVar
  loc_B885F6: LateMemCall
  loc_B885FC: FFree1Var var_CC = ""
  loc_B885FF: Branch loc_B8878B
  loc_B88602: FLdPr Me
  loc_B88605: MemLdI2 global_100
  loc_B88608: CI4UI1
  loc_B88609: FLdPr Me
  loc_B8860C: MemLdStr global_92
  loc_B8860F: Ary1LdPr
  loc_B88610: MemLdStr global_20
  loc_B88613: LitStr "Debito"
  loc_B88616: EqStr
  loc_B88618: BranchF loc_B8878B
  loc_B8861B: LitI4 0
  loc_B88620: LitI4 0
  loc_B88625: LitI2_Byte 0
  loc_B88627: LitStr "left"
  loc_B8862A: FMemLdR4 var_BC(0)
  loc_B8862F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88634: CVarStr var_CC
  loc_B88637: PopAdLdVar
  loc_B88638: FLdPr Me
  loc_B8863B: MemLdRfVar from_stack_1.htmFile
  loc_B8863E: LdPrVar
  loc_B88640: LateMemCall
  loc_B88646: FFree1Var var_CC = ""
  loc_B88649: LitI4 0
  loc_B8864E: LitI4 0
  loc_B88653: LitI2_Byte 0
  loc_B88655: LitStr "left"
  loc_B88658: FMemLdR4 var_BC(4)
  loc_B8865D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88662: CVarStr var_CC
  loc_B88665: PopAdLdVar
  loc_B88666: FLdPr Me
  loc_B88669: MemLdRfVar from_stack_1.htmFile
  loc_B8866C: LdPrVar
  loc_B8866E: LateMemCall
  loc_B88674: FFree1Var var_CC = ""
  loc_B88677: LitI4 0
  loc_B8867C: LitI4 0
  loc_B88681: LitI2_Byte 0
  loc_B88683: LitStr "left"
  loc_B88686: FMemLdR4 var_BC(24)
  loc_B8868B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88690: CVarStr var_CC
  loc_B88693: PopAdLdVar
  loc_B88694: FLdPr Me
  loc_B88697: MemLdRfVar from_stack_1.htmFile
  loc_B8869A: LdPrVar
  loc_B8869C: LateMemCall
  loc_B886A2: FFree1Var var_CC = ""
  loc_B886A5: LitI4 0
  loc_B886AA: LitI4 0
  loc_B886AF: LitI2_Byte 0
  loc_B886B1: LitStr "left"
  loc_B886B4: FMemLdR4 var_BC(28)
  loc_B886B9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B886BE: CVarStr var_CC
  loc_B886C1: PopAdLdVar
  loc_B886C2: FLdPr Me
  loc_B886C5: MemLdRfVar from_stack_1.htmFile
  loc_B886C8: LdPrVar
  loc_B886CA: LateMemCall
  loc_B886D0: FFree1Var var_CC = ""
  loc_B886D3: LitI4 0
  loc_B886D8: LitI4 0
  loc_B886DD: LitI2_Byte 0
  loc_B886DF: LitStr "left"
  loc_B886E2: FMemLdR4 var_BC(16)
  loc_B886E7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B886EC: CVarStr var_CC
  loc_B886EF: PopAdLdVar
  loc_B886F0: FLdPr Me
  loc_B886F3: MemLdRfVar from_stack_1.htmFile
  loc_B886F6: LdPrVar
  loc_B886F8: LateMemCall
  loc_B886FE: FFree1Var var_CC = ""
  loc_B88701: LitI4 0
  loc_B88706: LitI4 0
  loc_B8870B: LitI2_Byte 0
  loc_B8870D: LitStr "right"
  loc_B88710: FMemLdR4 var_BC(32)
  loc_B88715: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8871A: CVarStr var_CC
  loc_B8871D: PopAdLdVar
  loc_B8871E: FLdPr Me
  loc_B88721: MemLdRfVar from_stack_1.htmFile
  loc_B88724: LdPrVar
  loc_B88726: LateMemCall
  loc_B8872C: FFree1Var var_CC = ""
  loc_B8872F: LitI4 0
  loc_B88734: LitI4 0
  loc_B88739: LitI2_Byte 0
  loc_B8873B: LitStr "left"
  loc_B8873E: FMemLdR4 var_BC(36)
  loc_B88743: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88748: CVarStr var_CC
  loc_B8874B: PopAdLdVar
  loc_B8874C: FLdPr Me
  loc_B8874F: MemLdRfVar from_stack_1.htmFile
  loc_B88752: LdPrVar
  loc_B88754: LateMemCall
  loc_B8875A: FFree1Var var_CC = ""
  loc_B8875D: LitI4 0
  loc_B88762: LitI4 0
  loc_B88767: LitI2_Byte 0
  loc_B88769: LitStr "right"
  loc_B8876C: FMemLdR4 var_BC(40)
  loc_B88771: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88776: CVarStr var_CC
  loc_B88779: PopAdLdVar
  loc_B8877A: FLdPr Me
  loc_B8877D: MemLdRfVar from_stack_1.htmFile
  loc_B88780: LdPrVar
  loc_B88782: LateMemCall
  loc_B88788: FFree1Var var_CC = ""
  loc_B8878B: LitI4 0
  loc_B88790: FStR4 var_BC
  loc_B88793: AryUnlock
  loc_B88796: AryUnlock
  loc_B88799: LitVarStr var_9C, "     </tr>"
  loc_B8879E: PopAdLdVar
  loc_B8879F: FLdPr Me
  loc_B887A2: MemLdRfVar from_stack_1.htmFile
  loc_B887A5: LdPrVar
  loc_B887A7: LateMemCall
  loc_B887AD: FLdPr Me
  loc_B887B0: MemLdRfVar from_stack_1.global_102
  loc_B887B3: NextI2 var_B0, loc_B88440
  loc_B887B8: LitVarStr var_9C, " <tr>"
  loc_B887BD: PopAdLdVar
  loc_B887BE: FLdPr Me
  loc_B887C1: MemLdRfVar from_stack_1.htmFile
  loc_B887C4: LdPrVar
  loc_B887C6: LateMemCall
  loc_B887CC: FLdPr Me
  loc_B887CF: MemLdI2 global_100
  loc_B887D2: CI4UI1
  loc_B887D3: FLdPr Me
  loc_B887D6: MemLdStr global_92
  loc_B887D9: Ary1LdPr
  loc_B887DA: MemLdStr global_20
  loc_B887DD: LitStr "Devengado"
  loc_B887E0: EqStr
  loc_B887E2: BranchF loc_B887FC
  loc_B887E5: LitVarStr var_9C, "   <th colspan=""7"" align=""right"" class=""Titulo2"">TOTAL DEVENGADOS</th>"
  loc_B887EA: PopAdLdVar
  loc_B887EB: FLdPr Me
  loc_B887EE: MemLdRfVar from_stack_1.htmFile
  loc_B887F1: LdPrVar
  loc_B887F3: LateMemCall
  loc_B887F9: Branch loc_B88829
  loc_B887FC: FLdPr Me
  loc_B887FF: MemLdI2 global_100
  loc_B88802: CI4UI1
  loc_B88803: FLdPr Me
  loc_B88806: MemLdStr global_92
  loc_B88809: Ary1LdPr
  loc_B8880A: MemLdStr global_20
  loc_B8880D: LitStr "Debito"
  loc_B88810: EqStr
  loc_B88812: BranchF loc_B88829
  loc_B88815: LitVarStr var_9C, "   <th colspan=""7"" align=""right"" class=""Titulo2"">TOTAL DÉB. EXTRAS</th>"
  loc_B8881A: PopAdLdVar
  loc_B8881B: FLdPr Me
  loc_B8881E: MemLdRfVar from_stack_1.htmFile
  loc_B88821: LdPrVar
  loc_B88823: LateMemCall
  loc_B88829: LitStr "   <th align=""right"" class=""Totales"">"
  loc_B8882C: FLdPr Me
  loc_B8882F: MemLdI2 global_100
  loc_B88832: CI4UI1
  loc_B88833: FLdPr Me
  loc_B88836: MemLdStr global_92
  loc_B88839: Ary1LdPr
  loc_B8883A: MemLdStr global_64
  loc_B8883D: ConcatStr
  loc_B8883E: FStStrNoPop var_D0
  loc_B88841: LitStr "</th>"
  loc_B88844: ConcatStr
  loc_B88845: CVarStr var_CC
  loc_B88848: PopAdLdVar
  loc_B88849: FLdPr Me
  loc_B8884C: MemLdRfVar from_stack_1.htmFile
  loc_B8884F: LdPrVar
  loc_B88851: LateMemCall
  loc_B88857: FFree1Str var_D0
  loc_B8885A: FFree1Var var_CC = ""
  loc_B8885D: LitVarStr var_9C, "     </tr>"
  loc_B88862: PopAdLdVar
  loc_B88863: FLdPr Me
  loc_B88866: MemLdRfVar from_stack_1.htmFile
  loc_B88869: LdPrVar
  loc_B8886B: LateMemCall
  loc_B88871: LitVarStr var_9C, "</table>"
  loc_B88876: PopAdLdVar
  loc_B88877: FLdPr Me
  loc_B8887A: MemLdRfVar from_stack_1.htmFile
  loc_B8887D: LdPrVar
  loc_B8887F: LateMemCall
  loc_B88885: LitVarStr var_9C, "<p class=""Titulo2"">EFECTUAR LAS SIGUIENTES RETENCIONES, APORTES Y/O DESCUENTOS:</p>"
  loc_B8888A: PopAdLdVar
  loc_B8888B: FLdPr Me
  loc_B8888E: MemLdRfVar from_stack_1.htmFile
  loc_B88891: LdPrVar
  loc_B88893: LateMemCall
  loc_B88899: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_B8889E: PopAdLdVar
  loc_B8889F: FLdPr Me
  loc_B888A2: MemLdRfVar from_stack_1.htmFile
  loc_B888A5: LdPrVar
  loc_B888A7: LateMemCall
  loc_B888AD: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_B888B2: PopAdLdVar
  loc_B888B3: FLdPr Me
  loc_B888B6: MemLdRfVar from_stack_1.htmFile
  loc_B888B9: LdPrVar
  loc_B888BB: LateMemCall
  loc_B888C1: LitVarStr var_9C, "    <th width=""150"" colspan=""1"">Acreedor</th>"
  loc_B888C6: PopAdLdVar
  loc_B888C7: FLdPr Me
  loc_B888CA: MemLdRfVar from_stack_1.htmFile
  loc_B888CD: LdPrVar
  loc_B888CF: LateMemCall
  loc_B888D5: LitVarStr var_9C, "    <th colspan=""2"">Retención</th>"
  loc_B888DA: PopAdLdVar
  loc_B888DB: FLdPr Me
  loc_B888DE: MemLdRfVar from_stack_1.htmFile
  loc_B888E1: LdPrVar
  loc_B888E3: LateMemCall
  loc_B888E9: LitVarStr var_9C, "    <th colspan=""2"">Categoría</th>"
  loc_B888EE: PopAdLdVar
  loc_B888EF: FLdPr Me
  loc_B888F2: MemLdRfVar from_stack_1.htmFile
  loc_B888F5: LdPrVar
  loc_B888F7: LateMemCall
  loc_B888FD: LitVarStr var_9C, "    <th colspan=""1"">Cuenta Contable</th>"
  loc_B88902: PopAdLdVar
  loc_B88903: FLdPr Me
  loc_B88906: MemLdRfVar from_stack_1.htmFile
  loc_B88909: LdPrVar
  loc_B8890B: LateMemCall
  loc_B88911: LitVarStr var_9C, "    <th>Base Impon.</th>"
  loc_B88916: PopAdLdVar
  loc_B88917: FLdPr Me
  loc_B8891A: MemLdRfVar from_stack_1.htmFile
  loc_B8891D: LdPrVar
  loc_B8891F: LateMemCall
  loc_B88925: LitVarStr var_9C, "    <th>Alíc. (" & Chr(37) & ") </th>"
  loc_B8892A: PopAdLdVar
  loc_B8892B: FLdPr Me
  loc_B8892E: MemLdRfVar from_stack_1.htmFile
  loc_B88931: LdPrVar
  loc_B88933: LateMemCall
  loc_B88939: LitVarStr var_9C, "    <th>Penal.</th>"
  loc_B8893E: PopAdLdVar
  loc_B8893F: FLdPr Me
  loc_B88942: MemLdRfVar from_stack_1.htmFile
  loc_B88945: LdPrVar
  loc_B88947: LateMemCall
  loc_B8894D: LitVarStr var_9C, "    <th>Ex. (" & Chr(37) & ")</th>"
  loc_B88952: PopAdLdVar
  loc_B88953: FLdPr Me
  loc_B88956: MemLdRfVar from_stack_1.htmFile
  loc_B88959: LdPrVar
  loc_B8895B: LateMemCall
  loc_B88961: LitVarStr var_9C, "    <th>Certif.</th>"
  loc_B88966: PopAdLdVar
  loc_B88967: FLdPr Me
  loc_B8896A: MemLdRfVar from_stack_1.htmFile
  loc_B8896D: LdPrVar
  loc_B8896F: LateMemCall
  loc_B88975: LitVarStr var_9C, "    <th>Importe</th>"
  loc_B8897A: PopAdLdVar
  loc_B8897B: FLdPr Me
  loc_B8897E: MemLdRfVar from_stack_1.htmFile
  loc_B88981: LdPrVar
  loc_B88983: LateMemCall
  loc_B88989: LitVarStr var_9C, "     </tr>"
  loc_B8898E: PopAdLdVar
  loc_B8898F: FLdPr Me
  loc_B88992: MemLdRfVar from_stack_1.htmFile
  loc_B88995: LdPrVar
  loc_B88997: LateMemCall
  loc_B8899D: FLdPr Me
  loc_B889A0: MemLdI2 global_100
  loc_B889A3: CI4UI1
  loc_B889A4: FLdPr Me
  loc_B889A7: MemLdStr global_92
  loc_B889AA: Ary1LdPr
  loc_B889AB: MemLdI2 global_42
  loc_B889AE: BranchF loc_B88CFE
  loc_B889B1: LitI2_Byte 1
  loc_B889B3: FLdPr Me
  loc_B889B6: MemLdRfVar from_stack_1.global_104
  loc_B889B9: FLdPr Me
  loc_B889BC: MemLdI2 global_100
  loc_B889BF: CI4UI1
  loc_B889C0: FLdPr Me
  loc_B889C3: MemLdStr global_92
  loc_B889C6: Ary1LdPr
  loc_B889C7: MemLdStr htmFile
  loc_B889CA: LitI2_Byte 1
  loc_B889CC: FnUBound
  loc_B889CE: CI2I4
  loc_B889CF: ForI2 var_D4
  loc_B889D5: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B889DA: PopAdLdVar
  loc_B889DB: FLdPr Me
  loc_B889DE: MemLdRfVar from_stack_1.htmFile
  loc_B889E1: LdPrVar
  loc_B889E3: LateMemCall
  loc_B889E9: FLdPr Me
  loc_B889EC: MemLdI2 global_104
  loc_B889EF: CI4UI1
  loc_B889F0: FLdPr Me
  loc_B889F3: MemLdI2 global_100
  loc_B889F6: CI4UI1
  loc_B889F7: FLdPr Me
  loc_B889FA: MemLdStr global_92
  loc_B889FD: AryLock
  loc_B88A00: Ary1LdPr
  loc_B88A01: MemLdStr htmFile
  loc_B88A04: AryLock
  loc_B88A07: Ary1LdRf
  loc_B88A08: FStR4 var_E0
  loc_B88A0B: LitI4 0
  loc_B88A10: LitI4 0
  loc_B88A15: LitI2_Byte 0
  loc_B88A17: LitStr "left"
  loc_B88A1A: FMemLdR4 var_E0(0)
  loc_B88A1F: LitStr "<br>"
  loc_B88A22: ConcatStr
  loc_B88A23: FStStrNoPop var_D0
  loc_B88A26: FMemLdR4 var_E0(4)
  loc_B88A2B: ConcatStr
  loc_B88A2C: FStStrNoPop var_E4
  loc_B88A2F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88A34: CVarStr var_CC
  loc_B88A37: PopAdLdVar
  loc_B88A38: FLdPr Me
  loc_B88A3B: MemLdRfVar from_stack_1.htmFile
  loc_B88A3E: LdPrVar
  loc_B88A40: LateMemCall
  loc_B88A46: FFreeStr var_D0 = ""
  loc_B88A4D: FFree1Var var_CC = ""
  loc_B88A50: LitI4 0
  loc_B88A55: LitI4 0
  loc_B88A5A: LitI2_Byte 0
  loc_B88A5C: LitStr "left"
  loc_B88A5F: FMemLdR4 var_E0(8)
  loc_B88A64: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88A69: CVarStr var_CC
  loc_B88A6C: PopAdLdVar
  loc_B88A6D: FLdPr Me
  loc_B88A70: MemLdRfVar from_stack_1.htmFile
  loc_B88A73: LdPrVar
  loc_B88A75: LateMemCall
  loc_B88A7B: FFree1Var var_CC = ""
  loc_B88A7E: LitI4 0
  loc_B88A83: LitI4 0
  loc_B88A88: LitI2_Byte 0
  loc_B88A8A: LitStr "left"
  loc_B88A8D: FMemLdR4 var_E0(12)
  loc_B88A92: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88A97: CVarStr var_CC
  loc_B88A9A: PopAdLdVar
  loc_B88A9B: FLdPr Me
  loc_B88A9E: MemLdRfVar from_stack_1.htmFile
  loc_B88AA1: LdPrVar
  loc_B88AA3: LateMemCall
  loc_B88AA9: FFree1Var var_CC = ""
  loc_B88AAC: LitI4 0
  loc_B88AB1: LitI4 0
  loc_B88AB6: LitI2_Byte 0
  loc_B88AB8: LitStr "left"
  loc_B88ABB: FMemLdR4 var_E0(16)
  loc_B88AC0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88AC5: CVarStr var_CC
  loc_B88AC8: PopAdLdVar
  loc_B88AC9: FLdPr Me
  loc_B88ACC: MemLdRfVar from_stack_1.htmFile
  loc_B88ACF: LdPrVar
  loc_B88AD1: LateMemCall
  loc_B88AD7: FFree1Var var_CC = ""
  loc_B88ADA: LitI4 0
  loc_B88ADF: LitI4 0
  loc_B88AE4: LitI2_Byte 0
  loc_B88AE6: LitStr "left"
  loc_B88AE9: FMemLdR4 var_E0(20)
  loc_B88AEE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88AF3: CVarStr var_CC
  loc_B88AF6: PopAdLdVar
  loc_B88AF7: FLdPr Me
  loc_B88AFA: MemLdRfVar from_stack_1.htmFile
  loc_B88AFD: LdPrVar
  loc_B88AFF: LateMemCall
  loc_B88B05: FFree1Var var_CC = ""
  loc_B88B08: LitI4 0
  loc_B88B0D: LitI4 0
  loc_B88B12: LitI2_Byte 0
  loc_B88B14: LitStr "left"
  loc_B88B17: FMemLdR4 var_E0(24)
  loc_B88B1C: LitStr "<br>"
  loc_B88B1F: ConcatStr
  loc_B88B20: FStStrNoPop var_D0
  loc_B88B23: FMemLdR4 var_E0(28)
  loc_B88B28: ConcatStr
  loc_B88B29: FStStrNoPop var_E4
  loc_B88B2C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88B31: CVarStr var_CC
  loc_B88B34: PopAdLdVar
  loc_B88B35: FLdPr Me
  loc_B88B38: MemLdRfVar from_stack_1.htmFile
  loc_B88B3B: LdPrVar
  loc_B88B3D: LateMemCall
  loc_B88B43: FFreeStr var_D0 = ""
  loc_B88B4A: FFree1Var var_CC = ""
  loc_B88B4D: LitI4 0
  loc_B88B52: LitI4 0
  loc_B88B57: LitI2_Byte 0
  loc_B88B59: LitStr "right"
  loc_B88B5C: FMemLdR4 var_E0(32)
  loc_B88B61: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88B66: CVarStr var_CC
  loc_B88B69: PopAdLdVar
  loc_B88B6A: FLdPr Me
  loc_B88B6D: MemLdRfVar from_stack_1.htmFile
  loc_B88B70: LdPrVar
  loc_B88B72: LateMemCall
  loc_B88B78: FFree1Var var_CC = ""
  loc_B88B7B: LitI4 0
  loc_B88B80: LitI4 0
  loc_B88B85: LitI2_Byte 0
  loc_B88B87: LitStr "right"
  loc_B88B8A: FMemLdR4 var_E0(36)
  loc_B88B8F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88B94: CVarStr var_CC
  loc_B88B97: PopAdLdVar
  loc_B88B98: FLdPr Me
  loc_B88B9B: MemLdRfVar from_stack_1.htmFile
  loc_B88B9E: LdPrVar
  loc_B88BA0: LateMemCall
  loc_B88BA6: FFree1Var var_CC = ""
  loc_B88BA9: LitI4 0
  loc_B88BAE: LitI4 0
  loc_B88BB3: LitI2_Byte 0
  loc_B88BB5: LitStr "right"
  loc_B88BB8: FMemLdR4 var_E0(40)
  loc_B88BBD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88BC2: CVarStr var_CC
  loc_B88BC5: PopAdLdVar
  loc_B88BC6: FLdPr Me
  loc_B88BC9: MemLdRfVar from_stack_1.htmFile
  loc_B88BCC: LdPrVar
  loc_B88BCE: LateMemCall
  loc_B88BD4: FFree1Var var_CC = ""
  loc_B88BD7: LitI4 0
  loc_B88BDC: LitI4 0
  loc_B88BE1: LitI2_Byte 0
  loc_B88BE3: LitStr "right"
  loc_B88BE6: FMemLdR4 var_E0(44)
  loc_B88BEB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88BF0: CVarStr var_CC
  loc_B88BF3: PopAdLdVar
  loc_B88BF4: FLdPr Me
  loc_B88BF7: MemLdRfVar from_stack_1.htmFile
  loc_B88BFA: LdPrVar
  loc_B88BFC: LateMemCall
  loc_B88C02: FFree1Var var_CC = ""
  loc_B88C05: LitI4 0
  loc_B88C0A: LitI4 0
  loc_B88C0F: LitI2_Byte 0
  loc_B88C11: LitStr "right"
  loc_B88C14: FMemLdR4 var_E0(48)
  loc_B88C19: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88C1E: CVarStr var_CC
  loc_B88C21: PopAdLdVar
  loc_B88C22: FLdPr Me
  loc_B88C25: MemLdRfVar from_stack_1.htmFile
  loc_B88C28: LdPrVar
  loc_B88C2A: LateMemCall
  loc_B88C30: FFree1Var var_CC = ""
  loc_B88C33: LitI4 0
  loc_B88C38: LitI4 0
  loc_B88C3D: LitI2_Byte 0
  loc_B88C3F: LitStr "right"
  loc_B88C42: FMemLdR4 var_E0(52)
  loc_B88C47: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88C4C: CVarStr var_CC
  loc_B88C4F: PopAdLdVar
  loc_B88C50: FLdPr Me
  loc_B88C53: MemLdRfVar from_stack_1.htmFile
  loc_B88C56: LdPrVar
  loc_B88C58: LateMemCall
  loc_B88C5E: FFree1Var var_CC = ""
  loc_B88C61: LitI4 0
  loc_B88C66: FStR4 var_E0
  loc_B88C69: AryUnlock
  loc_B88C6C: AryUnlock
  loc_B88C6F: LitVarStr var_9C, "     </tr>"
  loc_B88C74: PopAdLdVar
  loc_B88C75: FLdPr Me
  loc_B88C78: MemLdRfVar from_stack_1.htmFile
  loc_B88C7B: LdPrVar
  loc_B88C7D: LateMemCall
  loc_B88C83: FLdPr Me
  loc_B88C86: MemLdRfVar from_stack_1.global_104
  loc_B88C89: NextI2 var_D4, loc_B889D5
  loc_B88C8E: LitVarStr var_9C, " <tr>"
  loc_B88C93: PopAdLdVar
  loc_B88C94: FLdPr Me
  loc_B88C97: MemLdRfVar from_stack_1.htmFile
  loc_B88C9A: LdPrVar
  loc_B88C9C: LateMemCall
  loc_B88CA2: LitVarStr var_9C, "   <th colspan=""11"" align=""right"" class=""Titulo2"">TOTAL</th>"
  loc_B88CA7: PopAdLdVar
  loc_B88CA8: FLdPr Me
  loc_B88CAB: MemLdRfVar from_stack_1.htmFile
  loc_B88CAE: LdPrVar
  loc_B88CB0: LateMemCall
  loc_B88CB6: LitStr "   <th align=""right"" class=""Totales"">"
  loc_B88CB9: FLdPr Me
  loc_B88CBC: MemLdI2 global_100
  loc_B88CBF: CI4UI1
  loc_B88CC0: FLdPr Me
  loc_B88CC3: MemLdStr global_92
  loc_B88CC6: Ary1LdPr
  loc_B88CC7: MemLdStr bGenerado
  loc_B88CCA: ConcatStr
  loc_B88CCB: FStStrNoPop var_D0
  loc_B88CCE: LitStr "</th>"
  loc_B88CD1: ConcatStr
  loc_B88CD2: CVarStr var_CC
  loc_B88CD5: PopAdLdVar
  loc_B88CD6: FLdPr Me
  loc_B88CD9: MemLdRfVar from_stack_1.htmFile
  loc_B88CDC: LdPrVar
  loc_B88CDE: LateMemCall
  loc_B88CE4: FFree1Str var_D0
  loc_B88CE7: FFree1Var var_CC = ""
  loc_B88CEA: LitVarStr var_9C, "     </tr>"
  loc_B88CEF: PopAdLdVar
  loc_B88CF0: FLdPr Me
  loc_B88CF3: MemLdRfVar from_stack_1.htmFile
  loc_B88CF6: LdPrVar
  loc_B88CF8: LateMemCall
  loc_B88CFE: LitVarStr var_9C, "</table>"
  loc_B88D03: PopAdLdVar
  loc_B88D04: FLdPr Me
  loc_B88D07: MemLdRfVar from_stack_1.htmFile
  loc_B88D0A: LdPrVar
  loc_B88D0C: LateMemCall
  loc_B88D12: FLdPr Me
  loc_B88D15: MemLdI2 global_100
  loc_B88D18: CI4UI1
  loc_B88D19: FLdPr Me
  loc_B88D1C: MemLdStr global_92
  loc_B88D1F: Ary1LdPr
  loc_B88D20: MemLdI2 global_44
  loc_B88D23: BranchF loc_B88F33
  loc_B88D26: LitVarStr var_9C, "<p class=""Titulo2"">EMITIR PAGO A FAVOR DE:</p>"
  loc_B88D2B: PopAdLdVar
  loc_B88D2C: FLdPr Me
  loc_B88D2F: MemLdRfVar from_stack_1.htmFile
  loc_B88D32: LdPrVar
  loc_B88D34: LateMemCall
  loc_B88D3A: LitVarStr var_9C, "<table width=""90" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_B88D3F: PopAdLdVar
  loc_B88D40: FLdPr Me
  loc_B88D43: MemLdRfVar from_stack_1.htmFile
  loc_B88D46: LdPrVar
  loc_B88D48: LateMemCall
  loc_B88D4E: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_B88D53: PopAdLdVar
  loc_B88D54: FLdPr Me
  loc_B88D57: MemLdRfVar from_stack_1.htmFile
  loc_B88D5A: LdPrVar
  loc_B88D5C: LateMemCall
  loc_B88D62: LitVarStr var_9C, "    <th colspan=""2"">Acreedor</th>"
  loc_B88D67: PopAdLdVar
  loc_B88D68: FLdPr Me
  loc_B88D6B: MemLdRfVar from_stack_1.htmFile
  loc_B88D6E: LdPrVar
  loc_B88D70: LateMemCall
  loc_B88D76: LitVarStr var_9C, "    <th>Importe</th>"
  loc_B88D7B: PopAdLdVar
  loc_B88D7C: FLdPr Me
  loc_B88D7F: MemLdRfVar from_stack_1.htmFile
  loc_B88D82: LdPrVar
  loc_B88D84: LateMemCall
  loc_B88D8A: LitVarStr var_9C, "     </tr>"
  loc_B88D8F: PopAdLdVar
  loc_B88D90: FLdPr Me
  loc_B88D93: MemLdRfVar from_stack_1.htmFile
  loc_B88D96: LdPrVar
  loc_B88D98: LateMemCall
  loc_B88D9E: LitI2_Byte 1
  loc_B88DA0: FLdPr Me
  loc_B88DA3: MemLdRfVar from_stack_1.global_106
  loc_B88DA6: FLdPr Me
  loc_B88DA9: MemLdI2 global_100
  loc_B88DAC: CI4UI1
  loc_B88DAD: FLdPr Me
  loc_B88DB0: MemLdStr global_92
  loc_B88DB3: Ary1LdPr
  loc_B88DB4: MemLdStr global_56
  loc_B88DB7: LitI2_Byte 1
  loc_B88DB9: FnUBound
  loc_B88DBB: CI2I4
  loc_B88DBC: ForI2 var_E8
  loc_B88DC2: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B88DC7: PopAdLdVar
  loc_B88DC8: FLdPr Me
  loc_B88DCB: MemLdRfVar from_stack_1.htmFile
  loc_B88DCE: LdPrVar
  loc_B88DD0: LateMemCall
  loc_B88DD6: FLdPr Me
  loc_B88DD9: MemLdI2 global_106
  loc_B88DDC: CI4UI1
  loc_B88DDD: FLdPr Me
  loc_B88DE0: MemLdI2 global_100
  loc_B88DE3: CI4UI1
  loc_B88DE4: FLdPr Me
  loc_B88DE7: MemLdStr global_92
  loc_B88DEA: AryLock
  loc_B88DED: Ary1LdPr
  loc_B88DEE: MemLdStr global_56
  loc_B88DF1: AryLock
  loc_B88DF4: Ary1LdRf
  loc_B88DF5: FStR4 var_F4
  loc_B88DF8: LitI4 0
  loc_B88DFD: LitI4 0
  loc_B88E02: LitI2_Byte 0
  loc_B88E04: LitStr "left"
  loc_B88E07: FMemLdR4 var_F4(0)
  loc_B88E0C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88E11: CVarStr var_CC
  loc_B88E14: PopAdLdVar
  loc_B88E15: FLdPr Me
  loc_B88E18: MemLdRfVar from_stack_1.htmFile
  loc_B88E1B: LdPrVar
  loc_B88E1D: LateMemCall
  loc_B88E23: FFree1Var var_CC = ""
  loc_B88E26: LitI4 0
  loc_B88E2B: LitI4 0
  loc_B88E30: LitI2_Byte 0
  loc_B88E32: LitStr "left"
  loc_B88E35: FMemLdR4 var_F4(4)
  loc_B88E3A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88E3F: CVarStr var_CC
  loc_B88E42: PopAdLdVar
  loc_B88E43: FLdPr Me
  loc_B88E46: MemLdRfVar from_stack_1.htmFile
  loc_B88E49: LdPrVar
  loc_B88E4B: LateMemCall
  loc_B88E51: FFree1Var var_CC = ""
  loc_B88E54: LitI4 0
  loc_B88E59: LitI4 0
  loc_B88E5E: LitI2_Byte 0
  loc_B88E60: LitStr "right"
  loc_B88E63: FMemLdR4 var_F4(8)
  loc_B88E68: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B88E6D: CVarStr var_CC
  loc_B88E70: PopAdLdVar
  loc_B88E71: FLdPr Me
  loc_B88E74: MemLdRfVar from_stack_1.htmFile
  loc_B88E77: LdPrVar
  loc_B88E79: LateMemCall
  loc_B88E7F: FFree1Var var_CC = ""
  loc_B88E82: LitI4 0
  loc_B88E87: FStR4 var_F4
  loc_B88E8A: AryUnlock
  loc_B88E8D: AryUnlock
  loc_B88E90: LitVarStr var_9C, "     </tr>"
  loc_B88E95: PopAdLdVar
  loc_B88E96: FLdPr Me
  loc_B88E99: MemLdRfVar from_stack_1.htmFile
  loc_B88E9C: LdPrVar
  loc_B88E9E: LateMemCall
  loc_B88EA4: FLdPr Me
  loc_B88EA7: MemLdRfVar from_stack_1.global_106
  loc_B88EAA: NextI2 var_E8, loc_B88DC2
  loc_B88EAF: LitVarStr var_9C, " <tr>"
  loc_B88EB4: PopAdLdVar
  loc_B88EB5: FLdPr Me
  loc_B88EB8: MemLdRfVar from_stack_1.htmFile
  loc_B88EBB: LdPrVar
  loc_B88EBD: LateMemCall
  loc_B88EC3: LitVarStr var_9C, "   <th colspan=""2"" align=""right"" class=""Titulo2"">TOTAL</th>"
  loc_B88EC8: PopAdLdVar
  loc_B88EC9: FLdPr Me
  loc_B88ECC: MemLdRfVar from_stack_1.htmFile
  loc_B88ECF: LdPrVar
  loc_B88ED1: LateMemCall
  loc_B88ED7: LitStr "   <th align=""right"" class=""Totales"">"
  loc_B88EDA: FLdPr Me
  loc_B88EDD: MemLdI2 global_100
  loc_B88EE0: CI4UI1
  loc_B88EE1: FLdPr Me
  loc_B88EE4: MemLdStr global_92
  loc_B88EE7: Ary1LdPr
  loc_B88EE8: MemLdStr global_72
  loc_B88EEB: ConcatStr
  loc_B88EEC: FStStrNoPop var_D0
  loc_B88EEF: LitStr "</th>"
  loc_B88EF2: ConcatStr
  loc_B88EF3: CVarStr var_CC
  loc_B88EF6: PopAdLdVar
  loc_B88EF7: FLdPr Me
  loc_B88EFA: MemLdRfVar from_stack_1.htmFile
  loc_B88EFD: LdPrVar
  loc_B88EFF: LateMemCall
  loc_B88F05: FFree1Str var_D0
  loc_B88F08: FFree1Var var_CC = ""
  loc_B88F0B: LitVarStr var_9C, "     </tr>"
  loc_B88F10: PopAdLdVar
  loc_B88F11: FLdPr Me
  loc_B88F14: MemLdRfVar from_stack_1.htmFile
  loc_B88F17: LdPrVar
  loc_B88F19: LateMemCall
  loc_B88F1F: LitVarStr var_9C, "</table>"
  loc_B88F24: PopAdLdVar
  loc_B88F25: FLdPr Me
  loc_B88F28: MemLdRfVar from_stack_1.htmFile
  loc_B88F2B: LdPrVar
  loc_B88F2D: LateMemCall
  loc_B88F33: LitI2_Byte &HFF
  loc_B88F35: BranchF loc_B891AA
  loc_B88F38: FLdPr Me
  loc_B88F3B: MemLdI2 global_100
  loc_B88F3E: CI4UI1
  loc_B88F3F: FLdPr Me
  loc_B88F42: MemLdStr global_92
  loc_B88F45: Ary1LdPr
  loc_B88F46: MemLdStr global_76
  loc_B88F49: LitStr vbNullString
  loc_B88F4C: NeStr
  loc_B88F4E: BranchF loc_B891AA
  loc_B88F51: LitStr "Municipalidad de Guaymallén"
  loc_B88F54: LitStr "Municipalidad de Guaymallén"
  loc_B88F57: EqStr
  loc_B88F59: BranchF loc_B88F5F
  loc_B88F5C: Branch loc_B891AA
  loc_B88F5F: LitVarStr var_9C, "<p class=""Titulo2"">SITUACION DE LOS SIGUIENTES PROVEEDORES SEGÚN REGISTRO POR COMERCIO:</p>"
  loc_B88F64: PopAdLdVar
  loc_B88F65: FLdPr Me
  loc_B88F68: MemLdRfVar from_stack_1.htmFile
  loc_B88F6B: LdPrVar
  loc_B88F6D: LateMemCall
  loc_B88F73: LitVarStr var_9C, "<table width=""90" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_B88F78: PopAdLdVar
  loc_B88F79: FLdPr Me
  loc_B88F7C: MemLdRfVar from_stack_1.htmFile
  loc_B88F7F: LdPrVar
  loc_B88F81: LateMemCall
  loc_B88F87: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_B88F8C: PopAdLdVar
  loc_B88F8D: FLdPr Me
  loc_B88F90: MemLdRfVar from_stack_1.htmFile
  loc_B88F93: LdPrVar
  loc_B88F95: LateMemCall
  loc_B88F9B: LitVarStr var_9C, "    <th colspan=""2"">Acreedor</th>"
  loc_B88FA0: PopAdLdVar
  loc_B88FA1: FLdPr Me
  loc_B88FA4: MemLdRfVar from_stack_1.htmFile
  loc_B88FA7: LdPrVar
  loc_B88FA9: LateMemCall
  loc_B88FAF: LitVarStr var_9C, "    <th>Deuda</th>"
  loc_B88FB4: PopAdLdVar
  loc_B88FB5: FLdPr Me
  loc_B88FB8: MemLdRfVar from_stack_1.htmFile
  loc_B88FBB: LdPrVar
  loc_B88FBD: LateMemCall
  loc_B88FC3: LitVarStr var_9C, "     </tr>"
  loc_B88FC8: PopAdLdVar
  loc_B88FC9: FLdPr Me
  loc_B88FCC: MemLdRfVar from_stack_1.htmFile
  loc_B88FCF: LdPrVar
  loc_B88FD1: LateMemCall
  loc_B88FD7: LitI2_Byte 1
  loc_B88FD9: FLdPr Me
  loc_B88FDC: MemLdRfVar from_stack_1.global_108
  loc_B88FDF: FLdPr Me
  loc_B88FE2: MemLdI2 global_100
  loc_B88FE5: CI4UI1
  loc_B88FE6: FLdPr Me
  loc_B88FE9: MemLdStr global_92
  loc_B88FEC: Ary1LdPr
  loc_B88FED: MemLdStr global_60
  loc_B88FF0: LitI2_Byte 1
  loc_B88FF2: FnUBound
  loc_B88FF4: CI2I4
  loc_B88FF5: ForI2 var_F8
  loc_B88FFB: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B89000: PopAdLdVar
  loc_B89001: FLdPr Me
  loc_B89004: MemLdRfVar from_stack_1.htmFile
  loc_B89007: LdPrVar
  loc_B89009: LateMemCall
  loc_B8900F: FLdPr Me
  loc_B89012: MemLdI2 global_108
  loc_B89015: CI4UI1
  loc_B89016: FLdPr Me
  loc_B89019: MemLdI2 global_100
  loc_B8901C: CI4UI1
  loc_B8901D: FLdPr Me
  loc_B89020: MemLdStr global_92
  loc_B89023: AryLock
  loc_B89026: Ary1LdPr
  loc_B89027: MemLdStr global_60
  loc_B8902A: AryLock
  loc_B8902D: Ary1LdRf
  loc_B8902E: FStR4 var_104
  loc_B89031: LitI4 0
  loc_B89036: LitI4 0
  loc_B8903B: LitI2_Byte 0
  loc_B8903D: LitStr "left"
  loc_B89040: FMemLdR4 var_104(0)
  loc_B89045: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B8904A: CVarStr var_CC
  loc_B8904D: PopAdLdVar
  loc_B8904E: FLdPr Me
  loc_B89051: MemLdRfVar from_stack_1.htmFile
  loc_B89054: LdPrVar
  loc_B89056: LateMemCall
  loc_B8905C: FFree1Var var_CC = ""
  loc_B8905F: LitI4 0
  loc_B89064: LitI4 0
  loc_B89069: LitI2_Byte 0
  loc_B8906B: LitStr "left"
  loc_B8906E: FMemLdR4 var_104(4)
  loc_B89073: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B89078: CVarStr var_CC
  loc_B8907B: PopAdLdVar
  loc_B8907C: FLdPr Me
  loc_B8907F: MemLdRfVar from_stack_1.htmFile
  loc_B89082: LdPrVar
  loc_B89084: LateMemCall
  loc_B8908A: FFree1Var var_CC = ""
  loc_B8908D: FMemLdR4 var_104(12)
  loc_B89092: LitStr vbNullString
  loc_B89095: EqStr
  loc_B89097: BranchF loc_B890CB
  loc_B8909A: LitI4 0
  loc_B8909F: LitI4 0
  loc_B890A4: LitI2_Byte 0
  loc_B890A6: LitStr "right"
  loc_B890A9: FMemLdR4 var_104(8)
  loc_B890AE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B890B3: CVarStr var_CC
  loc_B890B6: PopAdLdVar
  loc_B890B7: FLdPr Me
  loc_B890BA: MemLdRfVar from_stack_1.htmFile
  loc_B890BD: LdPrVar
  loc_B890BF: LateMemCall
  loc_B890C5: FFree1Var var_CC = ""
  loc_B890C8: Branch loc_B890F9
  loc_B890CB: LitI4 0
  loc_B890D0: LitI4 0
  loc_B890D5: LitI2_Byte 0
  loc_B890D7: LitStr "left"
  loc_B890DA: FMemLdR4 var_104(12)
  loc_B890DF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B890E4: CVarStr var_CC
  loc_B890E7: PopAdLdVar
  loc_B890E8: FLdPr Me
  loc_B890EB: MemLdRfVar from_stack_1.htmFile
  loc_B890EE: LdPrVar
  loc_B890F0: LateMemCall
  loc_B890F6: FFree1Var var_CC = ""
  loc_B890F9: LitI4 0
  loc_B890FE: FStR4 var_104
  loc_B89101: AryUnlock
  loc_B89104: AryUnlock
  loc_B89107: LitVarStr var_9C, "     </tr>"
  loc_B8910C: PopAdLdVar
  loc_B8910D: FLdPr Me
  loc_B89110: MemLdRfVar from_stack_1.htmFile
  loc_B89113: LdPrVar
  loc_B89115: LateMemCall
  loc_B8911B: FLdPr Me
  loc_B8911E: MemLdRfVar from_stack_1.global_108
  loc_B89121: NextI2 var_F8, loc_B88FFB
  loc_B89126: LitVarStr var_9C, " <tr>"
  loc_B8912B: PopAdLdVar
  loc_B8912C: FLdPr Me
  loc_B8912F: MemLdRfVar from_stack_1.htmFile
  loc_B89132: LdPrVar
  loc_B89134: LateMemCall
  loc_B8913A: LitVarStr var_9C, "   <th colspan=""2"" align=""right"" class=""Titulo2"">TOTAL</th>"
  loc_B8913F: PopAdLdVar
  loc_B89140: FLdPr Me
  loc_B89143: MemLdRfVar from_stack_1.htmFile
  loc_B89146: LdPrVar
  loc_B89148: LateMemCall
  loc_B8914E: LitStr "   <th align=""right"" class=""Totales"">"
  loc_B89151: FLdPr Me
  loc_B89154: MemLdI2 global_100
  loc_B89157: CI4UI1
  loc_B89158: FLdPr Me
  loc_B8915B: MemLdStr global_92
  loc_B8915E: Ary1LdPr
  loc_B8915F: MemLdStr global_76
  loc_B89162: ConcatStr
  loc_B89163: FStStrNoPop var_D0
  loc_B89166: LitStr "</th>"
  loc_B89169: ConcatStr
  loc_B8916A: CVarStr var_CC
  loc_B8916D: PopAdLdVar
  loc_B8916E: FLdPr Me
  loc_B89171: MemLdRfVar from_stack_1.htmFile
  loc_B89174: LdPrVar
  loc_B89176: LateMemCall
  loc_B8917C: FFree1Str var_D0
  loc_B8917F: FFree1Var var_CC = ""
  loc_B89182: LitVarStr var_9C, "     </tr>"
  loc_B89187: PopAdLdVar
  loc_B89188: FLdPr Me
  loc_B8918B: MemLdRfVar from_stack_1.htmFile
  loc_B8918E: LdPrVar
  loc_B89190: LateMemCall
  loc_B89196: LitVarStr var_9C, "</table>"
  loc_B8919B: PopAdLdVar
  loc_B8919C: FLdPr Me
  loc_B8919F: MemLdRfVar from_stack_1.htmFile
  loc_B891A2: LdPrVar
  loc_B891A4: LateMemCall
  loc_B891AA: Call Proc_254_20_A46928()
  loc_B891AF: FLdPr Me
  loc_B891B2: MemLdRfVar from_stack_1.global_100
  loc_B891B5: NextI2 var_8C, loc_B883E3
  loc_B891BA: Call Proc_254_21_975048()
  loc_B891BF: FLdPr Me
  loc_B891C2: MemLdRfVar from_stack_1.htmFile
  loc_B891C5: LdPrVar
  loc_B891C7: LateMemCall
  loc_B891CD: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B891D2: ExitProcHresult
End Sub

Private Function Proc_254_18_9BAC34() '9BAC34
  'Data Table: 44B984
  loc_9BAB7C: LitVarStr var_94, "<html>"
  loc_9BAB81: PopAdLdVar
  loc_9BAB82: FLdPr Me
  loc_9BAB85: MemLdRfVar from_stack_1.htmFile
  loc_9BAB88: LdPrVar
  loc_9BAB8A: LateMemCall
  loc_9BAB90: LitVarStr var_94, "<head>"
  loc_9BAB95: PopAdLdVar
  loc_9BAB96: FLdPr Me
  loc_9BAB99: MemLdRfVar from_stack_1.htmFile
  loc_9BAB9C: LdPrVar
  loc_9BAB9E: LateMemCall
  loc_9BABA4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BABA9: PopAdLdVar
  loc_9BABAA: FLdPr Me
  loc_9BABAD: MemLdRfVar from_stack_1.htmFile
  loc_9BABB0: LdPrVar
  loc_9BABB2: LateMemCall
  loc_9BABB8: LitStr "<title>"
  loc_9BABBB: FLdRfVar var_A8
  loc_9BABBE: FLdPr Me
  loc_9BABC1:  = Me.Caption
  loc_9BABC6: ILdRf var_A8
  loc_9BABC9: ConcatStr
  loc_9BABCA: FStStrNoPop var_AC
  loc_9BABCD: LitStr "</title>"
  loc_9BABD0: ConcatStr
  loc_9BABD1: CVarStr var_BC
  loc_9BABD4: PopAdLdVar
  loc_9BABD5: FLdPr Me
  loc_9BABD8: MemLdRfVar from_stack_1.htmFile
  loc_9BABDB: LdPrVar
  loc_9BABDD: LateMemCall
  loc_9BABE3: FFreeStr var_A8 = ""
  loc_9BABEA: FFree1Var var_BC = ""
  loc_9BABED: LitStr vbNullString
  loc_9BABF0: ILdRf Me
  loc_9BABF3: CastAd
  loc_9BABF6: FStAdFunc var_C0
  loc_9BABF9: FLdRfVar var_C0
  loc_9BABFC: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BAC01: FFree1Ad var_C0
  loc_9BAC04: LitI4 0
  loc_9BAC09: FStStrCopy var_AC
  loc_9BAC0C: FLdRfVar var_AC
  loc_9BAC0F: LitI4 0
  loc_9BAC14: FStStrCopy var_A8
  loc_9BAC17: FLdRfVar var_A8
  loc_9BAC1A: LitI2_Byte 0
  loc_9BAC1C: PopTmpLdAd2 var_C2
  loc_9BAC1F: FLdPr Me
  loc_9BAC22: MemLdRfVar from_stack_1.htmFile
  loc_9BAC25: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BAC2A: FFreeStr var_A8 = ""
  loc_9BAC31: ExitProcHresult
End Function

Private Function Proc_254_19_A70938() 'A70938
  'Data Table: 44B984
  loc_A70590: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A70595: PopAdLdVar
  loc_A70596: FLdPr Me
  loc_A70599: MemLdRfVar from_stack_1.htmFile
  loc_A7059C: LdPrVar
  loc_A7059E: LateMemCall
  loc_A705A4: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A705A9: PopAdLdVar
  loc_A705AA: FLdPr Me
  loc_A705AD: MemLdRfVar from_stack_1.htmFile
  loc_A705B0: LdPrVar
  loc_A705B2: LateMemCall
  loc_A705B8: LitVarStr var_A4, "    <th colspan=""2"" align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A705BD: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A705C2: FStVarCopyObj var_B4
  loc_A705C5: FLdRfVar var_B4
  loc_A705C8: FLdRfVar var_C4
  loc_A705CB: ImpAdCallFPR4  = Ucase()
  loc_A705D0: FLdRfVar var_C4
  loc_A705D3: ConcatVar var_D4
  loc_A705D7: LitVarStr var_E4, "<br><br>"
  loc_A705DC: ConcatVar var_F4
  loc_A705E0: FLdRfVar var_F8
  loc_A705E3: FLdPr Me
  loc_A705E6:  = Me.Caption
  loc_A705EB: FLdZeroAd var_F8
  loc_A705EE: CVarStr var_108
  loc_A705F1: ConcatVar var_118
  loc_A705F5: PopAdLdVar
  loc_A705F6: FLdPr Me
  loc_A705F9: MemLdRfVar from_stack_1.htmFile
  loc_A705FC: LdPrVar
  loc_A705FE: LateMemCall
  loc_A70604: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_F4 = "": var_108 = ""
  loc_A70613: FLdPr Me
  loc_A70616: MemLdI2 global_100
  loc_A70619: CI4UI1
  loc_A7061A: FLdPr Me
  loc_A7061D: MemLdStr global_92
  loc_A70620: Ary1LdPr
  loc_A70621: MemLdStr global_24
  loc_A70624: LitStr vbNullString
  loc_A70627: NeStr
  loc_A70629: BranchF loc_A70640
  loc_A7062C: LitVarStr var_94, "    <br><span><h2 align=""center"">(ANULADA)</h1></span>"
  loc_A70631: PopAdLdVar
  loc_A70632: FLdPr Me
  loc_A70635: MemLdRfVar from_stack_1.htmFile
  loc_A70638: LdPrVar
  loc_A7063A: LateMemCall
  loc_A70640: LitVarStr var_94, "    </th>"
  loc_A70645: PopAdLdVar
  loc_A70646: FLdPr Me
  loc_A70649: MemLdRfVar from_stack_1.htmFile
  loc_A7064C: LdPrVar
  loc_A7064E: LateMemCall
  loc_A70654: LitVarStr var_94, "  </tr>"
  loc_A70659: PopAdLdVar
  loc_A7065A: FLdPr Me
  loc_A7065D: MemLdRfVar from_stack_1.htmFile
  loc_A70660: LdPrVar
  loc_A70662: LateMemCall
  loc_A70668: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A7066D: PopAdLdVar
  loc_A7066E: FLdPr Me
  loc_A70671: MemLdRfVar from_stack_1.htmFile
  loc_A70674: LdPrVar
  loc_A70676: LateMemCall
  loc_A7067C: LitStr "    <th align=""left"" valign=""bottom""><br><br>Expediente: <span class=""Normal"">"
  loc_A7067F: FLdPr Me
  loc_A70682: MemLdI2 global_100
  loc_A70685: CI4UI1
  loc_A70686: FLdPr Me
  loc_A70689: MemLdStr global_92
  loc_A7068C: Ary1LdPr
  loc_A7068D: MemLdStr global_4
  loc_A70690: ConcatStr
  loc_A70691: FStStrNoPop var_F8
  loc_A70694: LitStr "</span></th>"
  loc_A70697: ConcatStr
  loc_A70698: CVarStr var_B4
  loc_A7069B: PopAdLdVar
  loc_A7069C: FLdPr Me
  loc_A7069F: MemLdRfVar from_stack_1.htmFile
  loc_A706A2: LdPrVar
  loc_A706A4: LateMemCall
  loc_A706AA: FFree1Str var_F8
  loc_A706AD: FFree1Var var_B4 = ""
  loc_A706B0: LitStr "    <th align=""right"" valign=""bottom"">Liquidaci&oacute;n: <span class=""Normal"">"
  loc_A706B3: FLdPr Me
  loc_A706B6: MemLdI2 global_100
  loc_A706B9: CI4UI1
  loc_A706BA: FLdPr Me
  loc_A706BD: MemLdStr global_92
  loc_A706C0: Ary1LdPr
  loc_A706C1: MemLdStr global_8
  loc_A706C4: ConcatStr
  loc_A706C5: FStStrNoPop var_F8
  loc_A706C8: LitStr " del "
  loc_A706CB: ConcatStr
  loc_A706CC: FStStrNoPop var_12C
  loc_A706CF: FLdPr Me
  loc_A706D2: MemLdI2 global_100
  loc_A706D5: CI4UI1
  loc_A706D6: FLdPr Me
  loc_A706D9: MemLdStr global_92
  loc_A706DC: Ary1LdPr
  loc_A706DD: MemLdStr global_12
  loc_A706E0: ConcatStr
  loc_A706E1: FStStrNoPop var_130
  loc_A706E4: LitStr "</span></th>"
  loc_A706E7: ConcatStr
  loc_A706E8: CVarStr var_B4
  loc_A706EB: PopAdLdVar
  loc_A706EC: FLdPr Me
  loc_A706EF: MemLdRfVar from_stack_1.htmFile
  loc_A706F2: LdPrVar
  loc_A706F4: LateMemCall
  loc_A706FA: FFreeStr var_F8 = "": var_12C = ""
  loc_A70703: FFree1Var var_B4 = ""
  loc_A70706: LitVarStr var_94, "  </tr>"
  loc_A7070B: PopAdLdVar
  loc_A7070C: FLdPr Me
  loc_A7070F: MemLdRfVar from_stack_1.htmFile
  loc_A70712: LdPrVar
  loc_A70714: LateMemCall
  loc_A7071A: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A7071F: PopAdLdVar
  loc_A70720: FLdPr Me
  loc_A70723: MemLdRfVar from_stack_1.htmFile
  loc_A70726: LdPrVar
  loc_A70728: LateMemCall
  loc_A7072E: LitVarStr var_94, "    <th colspan=""2"" align=""left"" valign=""bottom"">Control Interno</th>"
  loc_A70733: PopAdLdVar
  loc_A70734: FLdPr Me
  loc_A70737: MemLdRfVar from_stack_1.htmFile
  loc_A7073A: LdPrVar
  loc_A7073C: LateMemCall
  loc_A70742: LitVarStr var_94, "  </tr>"
  loc_A70747: PopAdLdVar
  loc_A70748: FLdPr Me
  loc_A7074B: MemLdRfVar from_stack_1.htmFile
  loc_A7074E: LdPrVar
  loc_A70750: LateMemCall
  loc_A70756: LitVarStr var_94, "</table>"
  loc_A7075B: PopAdLdVar
  loc_A7075C: FLdPr Me
  loc_A7075F: MemLdRfVar from_stack_1.htmFile
  loc_A70762: LdPrVar
  loc_A70764: LateMemCall
  loc_A7076A: LitStr "<p class=""Normal"">Páguese en Concepto de: "
  loc_A7076D: LitI4 0
  loc_A70772: LitI4 -1
  loc_A70777: LitI4 1
  loc_A7077C: LitStr "<br>"
  loc_A7077F: LitStr vbCrLf
  loc_A70782: FLdPr Me
  loc_A70785: MemLdI2 global_100
  loc_A70788: CI4UI1
  loc_A70789: FLdPr Me
  loc_A7078C: MemLdStr global_92
  loc_A7078F: Ary1LdPr
  loc_A70790: MemLdStr global_16
  loc_A70793: ImpAdCallI2 Replace(, , , , , )
  loc_A70798: FStStrNoPop var_F8
  loc_A7079B: ConcatStr
  loc_A7079C: FStStrNoPop var_12C
  loc_A7079F: LitStr "</p>"
  loc_A707A2: ConcatStr
  loc_A707A3: CVarStr var_B4
  loc_A707A6: PopAdLdVar
  loc_A707A7: FLdPr Me
  loc_A707AA: MemLdRfVar from_stack_1.htmFile
  loc_A707AD: LdPrVar
  loc_A707AF: LateMemCall
  loc_A707B5: FFreeStr var_F8 = ""
  loc_A707BC: FFree1Var var_B4 = ""
  loc_A707BF: LitVarStr var_94, "<p class=""Titulo2"">CORRESPONDE EMITIR ORDEN DE PAGO A FAVOR DE:</p>"
  loc_A707C4: PopAdLdVar
  loc_A707C5: FLdPr Me
  loc_A707C8: MemLdRfVar from_stack_1.htmFile
  loc_A707CB: LdPrVar
  loc_A707CD: LateMemCall
  loc_A707D3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_A707D8: PopAdLdVar
  loc_A707D9: FLdPr Me
  loc_A707DC: MemLdRfVar from_stack_1.htmFile
  loc_A707DF: LdPrVar
  loc_A707E1: LateMemCall
  loc_A707E7: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A707EC: PopAdLdVar
  loc_A707ED: FLdPr Me
  loc_A707F0: MemLdRfVar from_stack_1.htmFile
  loc_A707F3: LdPrVar
  loc_A707F5: LateMemCall
  loc_A707FB: FLdPr Me
  loc_A707FE: MemLdI2 global_100
  loc_A70801: CI4UI1
  loc_A70802: FLdPr Me
  loc_A70805: MemLdStr global_92
  loc_A70808: Ary1LdPr
  loc_A70809: MemLdStr global_20
  loc_A7080C: LitStr "Devengado"
  loc_A7080F: EqStr
  loc_A70811: BranchF loc_A7088F
  loc_A70814: LitVarStr var_94, "   <th colspan=""2"">Acreedor</th>"
  loc_A70819: PopAdLdVar
  loc_A7081A: FLdPr Me
  loc_A7081D: MemLdRfVar from_stack_1.htmFile
  loc_A70820: LdPrVar
  loc_A70822: LateMemCall
  loc_A70828: LitVarStr var_94, "   <th colspan=""2"">Partida</th>"
  loc_A7082D: PopAdLdVar
  loc_A7082E: FLdPr Me
  loc_A70831: MemLdRfVar from_stack_1.htmFile
  loc_A70834: LdPrVar
  loc_A70836: LateMemCall
  loc_A7083C: LitVarStr var_94, "   <th>Organigr.</th>"
  loc_A70841: PopAdLdVar
  loc_A70842: FLdPr Me
  loc_A70845: MemLdRfVar from_stack_1.htmFile
  loc_A70848: LdPrVar
  loc_A7084A: LateMemCall
  loc_A70850: LitVarStr var_94, "   <th>Finalidad</th>"
  loc_A70855: PopAdLdVar
  loc_A70856: FLdPr Me
  loc_A70859: MemLdRfVar from_stack_1.htmFile
  loc_A7085C: LdPrVar
  loc_A7085E: LateMemCall
  loc_A70864: LitVarStr var_94, "   <th>Factura</th>"
  loc_A70869: PopAdLdVar
  loc_A7086A: FLdPr Me
  loc_A7086D: MemLdRfVar from_stack_1.htmFile
  loc_A70870: LdPrVar
  loc_A70872: LateMemCall
  loc_A70878: LitVarStr var_94, "   <th>Importe</th>"
  loc_A7087D: PopAdLdVar
  loc_A7087E: FLdPr Me
  loc_A70881: MemLdRfVar from_stack_1.htmFile
  loc_A70884: LdPrVar
  loc_A70886: LateMemCall
  loc_A7088C: Branch loc_A70920
  loc_A7088F: FLdPr Me
  loc_A70892: MemLdI2 global_100
  loc_A70895: CI4UI1
  loc_A70896: FLdPr Me
  loc_A70899: MemLdStr global_92
  loc_A7089C: Ary1LdPr
  loc_A7089D: MemLdStr global_20
  loc_A708A0: LitStr "Debito"
  loc_A708A3: EqStr
  loc_A708A5: BranchF loc_A70920
  loc_A708A8: LitVarStr var_94, "   <th colspan=""2"">Acreedor</th>"
  loc_A708AD: PopAdLdVar
  loc_A708AE: FLdPr Me
  loc_A708B1: MemLdRfVar from_stack_1.htmFile
  loc_A708B4: LdPrVar
  loc_A708B6: LateMemCall
  loc_A708BC: LitVarStr var_94, "   <th colspan=""2"">Cuenta Contable</th>"
  loc_A708C1: PopAdLdVar
  loc_A708C2: FLdPr Me
  loc_A708C5: MemLdRfVar from_stack_1.htmFile
  loc_A708C8: LdPrVar
  loc_A708CA: LateMemCall
  loc_A708D0: LitVarStr var_94, "   <th>Organigr.</th>"
  loc_A708D5: PopAdLdVar
  loc_A708D6: FLdPr Me
  loc_A708D9: MemLdRfVar from_stack_1.htmFile
  loc_A708DC: LdPrVar
  loc_A708DE: LateMemCall
  loc_A708E4: LitVarStr var_94, "   <th>N° Déb.</th>"
  loc_A708E9: PopAdLdVar
  loc_A708EA: FLdPr Me
  loc_A708ED: MemLdRfVar from_stack_1.htmFile
  loc_A708F0: LdPrVar
  loc_A708F2: LateMemCall
  loc_A708F8: LitVarStr var_94, "   <th>Factura</th>"
  loc_A708FD: PopAdLdVar
  loc_A708FE: FLdPr Me
  loc_A70901: MemLdRfVar from_stack_1.htmFile
  loc_A70904: LdPrVar
  loc_A70906: LateMemCall
  loc_A7090C: LitVarStr var_94, "   <th>Importe</th>"
  loc_A70911: PopAdLdVar
  loc_A70912: FLdPr Me
  loc_A70915: MemLdRfVar from_stack_1.htmFile
  loc_A70918: LdPrVar
  loc_A7091A: LateMemCall
  loc_A70920: LitVarStr var_94, "  </tr>"
  loc_A70925: PopAdLdVar
  loc_A70926: FLdPr Me
  loc_A70929: MemLdRfVar from_stack_1.htmFile
  loc_A7092C: LdPrVar
  loc_A7092E: LateMemCall
  loc_A70934: ExitProcHresult
  loc_A70935: CStr2Ansi
End Function

Private Function Proc_254_20_A46928() 'A46928
  'Data Table: 44B984
  loc_A466BC: LitStr "<p class=""Titulo2"">TOTAL LIQUIDACION DEL GASTO: <span class=""Normal""> $ "
  loc_A466BF: FLdPr Me
  loc_A466C2: MemLdI2 global_100
  loc_A466C5: CI4UI1
  loc_A466C6: FLdPr Me
  loc_A466C9: MemLdStr global_92
  loc_A466CC: Ary1LdPr
  loc_A466CD: MemLdStr global_64
  loc_A466D0: ConcatStr
  loc_A466D1: FStStrNoPop var_88
  loc_A466D4: LitStr "</span><br>"
  loc_A466D7: ConcatStr
  loc_A466D8: CVarStr var_98
  loc_A466DB: PopAdLdVar
  loc_A466DC: FLdPr Me
  loc_A466DF: MemLdRfVar from_stack_1.htmFile
  loc_A466E2: LdPrVar
  loc_A466E4: LateMemCall
  loc_A466EA: FFree1Str var_88
  loc_A466ED: FFree1Var var_98 = ""
  loc_A466F0: LitVarStr var_A8, "  POR LA SUMA TOTAL DE PESOS:<br><span class=""Normal"">"
  loc_A466F5: PopAdLdVar
  loc_A466F6: FLdPr Me
  loc_A466F9: MemLdRfVar from_stack_1.htmFile
  loc_A466FC: LdPrVar
  loc_A466FE: LateMemCall
  loc_A46704: FLdPr Me
  loc_A46707: MemLdI2 global_100
  loc_A4670A: CI4UI1
  loc_A4670B: FLdPr Me
  loc_A4670E: MemLdStr global_92
  loc_A46711: AryLock
  loc_A46714: Ary1LdPr
  loc_A46715: MemLdRfVar from_stack_1.global_64
  loc_A46718: CVarRef
  loc_A4671D: LitVarStr var_B8, "0"
  loc_A46722: FStVarCopyObj var_98
  loc_A46725: FLdRfVar var_98
  loc_A46728: FLdPr Me
  loc_A4672B: MemLdI2 global_100
  loc_A4672E: CI4UI1
  loc_A4672F: FLdPr Me
  loc_A46732: MemLdStr global_92
  loc_A46735: Ary1LdPr
  loc_A46736: MemLdStr global_64
  loc_A46739: LitStr vbNullString
  loc_A4673C: EqStr
  loc_A4673E: CVarBoolI2 var_A8
  loc_A46742: FLdRfVar var_DC
  loc_A46745: ImpAdCallFPR4  = IIf(, , )
  loc_A4674A: AryUnlock
  loc_A4674D: FLdRfVar var_DC
  loc_A46750: CR4Var
  loc_A46751: PopFPR8
  loc_A46752: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_A46757: FStStrNoPop var_88
  loc_A4675A: LitStr "</span>.---------------------------</p>"
  loc_A4675D: ConcatStr
  loc_A4675E: CVarStr var_EC
  loc_A46761: PopAdLdVar
  loc_A46762: FLdPr Me
  loc_A46765: MemLdRfVar from_stack_1.htmFile
  loc_A46768: LdPrVar
  loc_A4676A: LateMemCall
  loc_A46770: FFree1Str var_88
  loc_A46773: FFreeVar var_A8 = "": var_98 = "": var_DC = ""
  loc_A4677E: LitVarStr var_A8, "<p>&nbsp;</p>"
  loc_A46783: PopAdLdVar
  loc_A46784: FLdPr Me
  loc_A46787: MemLdRfVar from_stack_1.htmFile
  loc_A4678A: LdPrVar
  loc_A4678C: LateMemCall
  loc_A46792: LitStr "<p class=""Titulo2"">Incluido en orden de pago N&ordm; <span class=""Normal"">"
  loc_A46795: FLdPr Me
  loc_A46798: MemLdI2 global_100
  loc_A4679B: CI4UI1
  loc_A4679C: FLdPr Me
  loc_A4679F: MemLdStr global_92
  loc_A467A2: Ary1LdPr
  loc_A467A3: MemLdStr global_28
  loc_A467A6: ConcatStr
  loc_A467A7: CVarStr var_98
  loc_A467AA: PopAdLdVar
  loc_A467AB: FLdPr Me
  loc_A467AE: MemLdRfVar from_stack_1.htmFile
  loc_A467B1: LdPrVar
  loc_A467B3: LateMemCall
  loc_A467B9: FFree1Var var_98 = ""
  loc_A467BC: FLdPr Me
  loc_A467BF: MemLdI2 global_100
  loc_A467C2: CI4UI1
  loc_A467C3: FLdPr Me
  loc_A467C6: MemLdStr global_92
  loc_A467C9: Ary1LdPr
  loc_A467CA: MemLdStr global_32
  loc_A467CD: LitStr vbNullString
  loc_A467D0: NeStr
  loc_A467D2: BranchF loc_A467E9
  loc_A467D5: LitVarStr var_A8, "  (ANULADA)"
  loc_A467DA: PopAdLdVar
  loc_A467DB: FLdPr Me
  loc_A467DE: MemLdRfVar from_stack_1.htmFile
  loc_A467E1: LdPrVar
  loc_A467E3: LateMemCall
  loc_A467E9: LitVarStr var_A8, "  </span></p>"
  loc_A467EE: PopAdLdVar
  loc_A467EF: FLdPr Me
  loc_A467F2: MemLdRfVar from_stack_1.htmFile
  loc_A467F5: LdPrVar
  loc_A467F7: LateMemCall
  loc_A467FD: LitVarStr var_A8, "<table border=""0"" align=""right"" class=""Normal"">"
  loc_A46802: PopAdLdVar
  loc_A46803: FLdPr Me
  loc_A46806: MemLdRfVar from_stack_1.htmFile
  loc_A46809: LdPrVar
  loc_A4680B: LateMemCall
  loc_A46811: LitVarStr var_A8, "  <tr align=""center"">"
  loc_A46816: PopAdLdVar
  loc_A46817: FLdPr Me
  loc_A4681A: MemLdRfVar from_stack_1.htmFile
  loc_A4681D: LdPrVar
  loc_A4681F: LateMemCall
  loc_A46825: LitVarStr var_A8, "    <td><hr></td>"
  loc_A4682A: PopAdLdVar
  loc_A4682B: FLdPr Me
  loc_A4682E: MemLdRfVar from_stack_1.htmFile
  loc_A46831: LdPrVar
  loc_A46833: LateMemCall
  loc_A46839: LitVarStr var_A8, "  </tr>"
  loc_A4683E: PopAdLdVar
  loc_A4683F: FLdPr Me
  loc_A46842: MemLdRfVar from_stack_1.htmFile
  loc_A46845: LdPrVar
  loc_A46847: LateMemCall
  loc_A4684D: LitVarStr var_A8, "  <tr align=""center"">"
  loc_A46852: PopAdLdVar
  loc_A46853: FLdPr Me
  loc_A46856: MemLdRfVar from_stack_1.htmFile
  loc_A46859: LdPrVar
  loc_A4685B: LateMemCall
  loc_A46861: LitStr "    <td>"
  loc_A46864: FLdPr Me
  loc_A46867: MemLdI2 global_100
  loc_A4686A: CI4UI1
  loc_A4686B: FLdPr Me
  loc_A4686E: MemLdStr global_92
  loc_A46871: Ary1LdPr
  loc_A46872: MemLdStr global_12
  loc_A46875: ImpAdCallI2 Proc_259_53_9C1B48()
  loc_A4687A: FStStrNoPop var_88
  loc_A4687D: ConcatStr
  loc_A4687E: FStStrNoPop var_100
  loc_A46881: LitStr "<br>"
  loc_A46884: ConcatStr
  loc_A46885: FStStrNoPop var_104
  loc_A46888: FLdPr Me
  loc_A4688B: MemLdI2 global_100
  loc_A4688E: CI4UI1
  loc_A4688F: FLdPr Me
  loc_A46892: MemLdStr global_92
  loc_A46895: Ary1LdPr
  loc_A46896: MemLdStr global_12
  loc_A46899: ImpAdCallI2 Proc_259_54_9CE3A4()
  loc_A4689E: FStStrNoPop var_108
  loc_A468A1: ConcatStr
  loc_A468A2: FStStrNoPop var_10C
  loc_A468A5: LitStr "</td>"
  loc_A468A8: ConcatStr
  loc_A468A9: CVarStr var_98
  loc_A468AC: PopAdLdVar
  loc_A468AD: FLdPr Me
  loc_A468B0: MemLdRfVar from_stack_1.htmFile
  loc_A468B3: LdPrVar
  loc_A468B5: LateMemCall
  loc_A468BB: FFreeStr var_88 = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A468C8: FFree1Var var_98 = ""
  loc_A468CB: LitVarStr var_A8, "  </tr>"
  loc_A468D0: PopAdLdVar
  loc_A468D1: FLdPr Me
  loc_A468D4: MemLdRfVar from_stack_1.htmFile
  loc_A468D7: LdPrVar
  loc_A468D9: LateMemCall
  loc_A468DF: LitVarStr var_A8, "</table>"
  loc_A468E4: PopAdLdVar
  loc_A468E5: FLdPr Me
  loc_A468E8: MemLdRfVar from_stack_1.htmFile
  loc_A468EB: LdPrVar
  loc_A468ED: LateMemCall
  loc_A468F3: LitStr "<p class=""Titulo2"">Usuario: <span class=""Normal"">"
  loc_A468F6: FLdPr Me
  loc_A468F9: MemLdI2 global_100
  loc_A468FC: CI4UI1
  loc_A468FD: FLdPr Me
  loc_A46900: MemLdStr global_92
  loc_A46903: Ary1LdPr
  loc_A46904: MemLdStr global_36
  loc_A46907: ConcatStr
  loc_A46908: FStStrNoPop var_88
  loc_A4690B: LitStr "</span></p>"
  loc_A4690E: ConcatStr
  loc_A4690F: CVarStr var_98
  loc_A46912: PopAdLdVar
  loc_A46913: FLdPr Me
  loc_A46916: MemLdRfVar from_stack_1.htmFile
  loc_A46919: LdPrVar
  loc_A4691B: LateMemCall
  loc_A46921: FFree1Str var_88
  loc_A46924: FFree1Var var_98 = ""
  loc_A46927: ExitProcHresult
End Function

Private Function Proc_254_21_975048() '975048
  'Data Table: 44B984
  loc_97501C: LitVarStr var_94, "</body>"
  loc_975021: PopAdLdVar
  loc_975022: FLdPr Me
  loc_975025: MemLdRfVar from_stack_1.htmFile
  loc_975028: LdPrVar
  loc_97502A: LateMemCall
  loc_975030: LitVarStr var_94, "</html>"
  loc_975035: PopAdLdVar
  loc_975036: FLdPr Me
  loc_975039: MemLdRfVar from_stack_1.htmFile
  loc_97503C: LdPrVar
  loc_97503E: LateMemCall
  loc_975044: ExitProcHresult
End Function
