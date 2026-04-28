VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodemovimientosbancarios
  Caption = "Subdiario de movimientos bancarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodemovimientosbancarios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9630
  ClientHeight = 3930
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3675
    Width = 9630
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2640
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptSubdiariodemovimientosbancarios.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2400
    Width = 1815
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 2295
    TabIndex = 0
    Begin VB.CommandButton cmdCodiCuco
      Left = 3165
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptSubdiariodemovimientosbancarios.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 3240
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptSubdiariodemovimientosbancarios.frx":0CFA
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 3240
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodemovimientosbancarios.frx":123C
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 2040
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 2040
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":1806
    End
    Begin MSMask.MaskEdBox mskCodiCuco
      Left = 1485
      Top = 1440
      Width = 1575
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":188E
    End
    Begin VB.Label lblDetaCuco
      Left = 3645
      Top = 1440
      Width = 5535
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 1440
      Width = 1230
      Height = 195
      TabIndex = 7
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1440
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1440
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptSubdiariodemovimientosbancarios.frx":190E
  End
End

Attribute VB_Name = "rptSubdiariodemovimientosbancarios"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_006182B4
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdCalDesde_Click() '97C768
  'Data Table: 4708B8
  loc_97C734: LitVar_Missing var_A4
  loc_97C737: PopAdLdVar
  loc_97C738: LitVarI4
  loc_97C740: PopAdLdVar
  loc_97C741: ImpAdLdRf MemVar_C3D9A8
  loc_97C744: NewIfNullPr frmCalendario
  loc_97C747: frmCalendario.Show from_stack_1, from_stack_2
  loc_97C74C: ImpAdLdRf MemVar_C3D038
  loc_97C74F: CDargRef
  loc_97C753: FLdPr Me
  loc_97C756: VCallAd Control_ID_mskDesde
  loc_97C759: FStAdFunc var_A8
  loc_97C75C: FLdPr var_A8
  loc_97C75F: LateIdSt
  loc_97C764: FFree1Ad var_A8
  loc_97C767: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97C700
  'Data Table: 4708B8
  loc_97C6CC: LitVar_Missing var_A4
  loc_97C6CF: PopAdLdVar
  loc_97C6D0: LitVarI4
  loc_97C6D8: PopAdLdVar
  loc_97C6D9: ImpAdLdRf MemVar_C3D9A8
  loc_97C6DC: NewIfNullPr frmCalendario
  loc_97C6DF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97C6E4: ImpAdLdRf MemVar_C3D038
  loc_97C6E7: CDargRef
  loc_97C6EB: FLdPr Me
  loc_97C6EE: VCallAd Control_ID_mskHasta
  loc_97C6F1: FStAdFunc var_A8
  loc_97C6F4: FLdPr var_A8
  loc_97C6F7: LateIdSt
  loc_97C6FC: FFree1Ad var_A8
  loc_97C6FF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BE87C
  'Data Table: 4708B8
  loc_9BE7C0: LitI2_Byte 0
  loc_9BE7C2: FLdPr Me
  loc_9BE7C5: MemStI2 bGenerado
  loc_9BE7C8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BE7CD: ImpAdLdRf MemVar_C3D04C
  loc_9BE7D0: CVarRef
  loc_9BE7D5: FLdRfVar var_A4
  loc_9BE7D8: ImpAdCallFPR4  = Year()
  loc_9BE7DD: ImpAdLdRf MemVar_C3D04C
  loc_9BE7E0: CVarRef
  loc_9BE7E5: FLdRfVar var_C4
  loc_9BE7E8: ImpAdCallFPR4  = Month()
  loc_9BE7ED: LitI2_Byte 1
  loc_9BE7EF: FLdRfVar var_C4
  loc_9BE7F2: CI2Var
  loc_9BE7F3: FLdRfVar var_A4
  loc_9BE7F6: CI2Var
  loc_9BE7F7: FLdRfVar var_D4
  loc_9BE7FA: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BE7FF: FLdRfVar var_D4
  loc_9BE802: CStrVarTmp
  loc_9BE803: CVarStr var_E4
  loc_9BE806: PopAdLdVar
  loc_9BE807: FLdPr Me
  loc_9BE80A: VCallAd Control_ID_mskDesde
  loc_9BE80D: FStAdFunc var_F8
  loc_9BE810: FLdPr var_F8
  loc_9BE813: LateIdSt
  loc_9BE818: FFree1Ad var_F8
  loc_9BE81B: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_9BE826: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BE829: CStrDate
  loc_9BE82B: CVarStr var_A4
  loc_9BE82E: PopAdLdVar
  loc_9BE82F: FLdPr Me
  loc_9BE832: VCallAd Control_ID_mskHasta
  loc_9BE835: FStAdFunc var_F8
  loc_9BE838: FLdPr var_F8
  loc_9BE83B: LateIdSt
  loc_9BE840: FFree1Ad var_F8
  loc_9BE843: FFree1Var var_A4 = ""
  loc_9BE846: LitVarStr var_94, vbNullString
  loc_9BE84B: PopAdLdVar
  loc_9BE84C: FLdPr Me
  loc_9BE84F: VCallAd Control_ID_mskCodiCuco
  loc_9BE852: FStAdFunc var_F8
  loc_9BE855: FLdPr var_F8
  loc_9BE858: LateIdSt
  loc_9BE85D: FFree1Ad var_F8
  loc_9BE860: Call HabilitarCriterio()
  loc_9BE865: ILdRf Me
  loc_9BE868: CastAd
  loc_9BE86B: FStAdFunc var_F8
  loc_9BE86E: FLdRfVar var_F8
  loc_9BE871: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BE876: FFree1Ad var_F8
  loc_9BE879: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95D43C
  'Data Table: 4708B8
  loc_95D424: ILdRf Me
  loc_95D427: CastAd
  loc_95D42A: FStAdFunc var_88
  loc_95D42D: FLdRfVar var_88
  loc_95D430: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95D435: FFree1Ad var_88
  loc_95D438: ExitProcHresult
End Sub

Private Sub Form_Load() '96C0D0
  'Data Table: 4708B8
  loc_96C0B0: LitI2_Byte &HFF
  loc_96C0B2: ImpAdStI2 MemVar_C3D840
  loc_96C0B5: ILdRf Me
  loc_96C0B8: CastAd
  loc_96C0BB: FStAdFunc var_88
  loc_96C0BE: FLdRfVar var_88
  loc_96C0C1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96C0C6: FFree1Ad var_88
  loc_96C0C9: Call cmdNueva_Click()
  loc_96C0CE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '955104
  'Data Table: 4708B8
  loc_9550EC: FLdPr Me
  loc_9550EF: VCallAd Control_ID_wbbReporte
  loc_9550F2: FStAdFunc var_88
  loc_9550F5: FLdRfVar var_88
  loc_9550F8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9550FD: FFree1Ad var_88
  loc_955100: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989F8C
  'Data Table: 4708B8
  loc_989F54: FLdPr Me
  loc_989F57: VCallAd Control_ID_statusBar
  loc_989F5A: FStAdFunc var_88
  loc_989F5D: FLdPr var_88
  loc_989F60: LateIdLdVar var_98 DispID_1 0
  loc_989F67: CStrVarTmp
  loc_989F68: CVarStr var_A8
  loc_989F6B: PopAdLdVar
  loc_989F6C: FLdPr Me
  loc_989F6F: VCallAd Control_ID_statusBar
  loc_989F72: FStAdFunc var_BC
  loc_989F75: FLdPr var_BC
  loc_989F78: LateIdSt
  loc_989F7D: FFreeAd var_88 = ""
  loc_989F84: FFreeVar var_98 = ""
  loc_989F8B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95CD68
  'Data Table: 4708B8
  loc_95CD50: ILdRf Me
  loc_95CD53: CastAd
  loc_95CD56: FStAdFunc var_88
  loc_95CD59: FLdRfVar var_88
  loc_95CD5C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95CD61: FFree1Ad var_88
  loc_95CD64: ExitProcHresult
  loc_95CD65: Ary1LdPr
  loc_95CD66: MulI4
End Sub

Private Sub mskDesde_UnknownEvent_0 '94EDE0
  'Data Table: 4708B8
  loc_94EDCC: FLdPr Me
  loc_94EDCF: VCallAd Control_ID_mskDesde
  loc_94EDD2: CVarAd
  loc_94EDD6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EDDB: FFree1Var var_94 = ""
  loc_94EDDE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C3AA8
  'Data Table: 4708B8
  loc_9C39E4: FLdPr Me
  loc_9C39E7: VCallAd Control_ID_mskDesde
  loc_9C39EA: FStAdFunc var_88
  loc_9C39ED: FLdPr var_88
  loc_9C39F0: LateIdLdVar var_98 DispID_22 0
  loc_9C39F7: CStrVarTmp
  loc_9C39F8: FStStrNoPop var_9C
  loc_9C39FB: LitStr vbNullString
  loc_9C39FE: NeStr
  loc_9C3A00: FFree1Str var_9C
  loc_9C3A03: FFree1Ad var_88
  loc_9C3A06: FFree1Var var_98 = ""
  loc_9C3A09: BranchF loc_9C3AA4
  loc_9C3A0C: FLdPr Me
  loc_9C3A0F: VCallAd Control_ID_mskDesde
  loc_9C3A12: FStAdFunc var_88
  loc_9C3A15: FLdPr var_88
  loc_9C3A18: LateIdLdVar var_98 DispID_15 0
  loc_9C3A1F: PopAd
  loc_9C3A21: FLdPr Me
  loc_9C3A24: VCallAd Control_ID_mskDesde
  loc_9C3A27: FStAdFunc var_AC
  loc_9C3A2A: LitI2_Byte 0
  loc_9C3A2C: PopTmpLdAd2 var_A2
  loc_9C3A2F: FLdZeroAd var_AC
  loc_9C3A32: FStAdFunc var_A0
  loc_9C3A35: FLdRfVar var_A0
  loc_9C3A38: LitStr vbNullString
  loc_9C3A3B: LitI2_Byte 0
  loc_9C3A3D: LitI2_Byte 0
  loc_9C3A3F: FLdRfVar var_98
  loc_9C3A42: CStrVarTmp
  loc_9C3A43: FStStrNoPop var_9C
  loc_9C3A46: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C3A4B: FStStrNoPop var_A8
  loc_9C3A4E: FLdPr Me
  loc_9C3A51: MemStStrCopy
  loc_9C3A55: FFreeStr var_9C = ""
  loc_9C3A5C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3A65: FFree1Var var_98 = ""
  loc_9C3A68: FLdPr Me
  loc_9C3A6B: VCallAd Control_ID_mskDesde
  loc_9C3A6E: FStAdFunc var_B0
  loc_9C3A71: LitNothing
  loc_9C3A73: CastAd
  loc_9C3A76: FStAdFunc var_AC
  loc_9C3A79: FLdRfVar var_AC
  loc_9C3A7C: FLdZeroAd var_B0
  loc_9C3A7F: FStAdFuncNoPop
  loc_9C3A82: CastAd
  loc_9C3A85: FStAdFunc var_A0
  loc_9C3A88: FLdRfVar var_A0
  loc_9C3A8B: FLdPr Me
  loc_9C3A8E: MemLdRfVar from_stack_1.global_104
  loc_9C3A91: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3A96: IStI2 arg_C
  loc_9C3A99: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3AA4: ExitProcHresult
End Function

Private Sub mskCodiCuco_UnknownEvent_0 '9505C8
  'Data Table: 4708B8
  loc_9505B4: FLdPr Me
  loc_9505B7: VCallAd Control_ID_mskCodiCuco
  loc_9505BA: CVarAd
  loc_9505BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9505C3: FFree1Var var_94 = ""
  loc_9505C6: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_1 'A1B020
  'Data Table: 4708B8
  loc_A1AEAC: LitVarStr var_C8, "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A1AEB1: FLdPr Me
  loc_A1AEB4: VCallAd Control_ID_mskDesde
  loc_A1AEB7: FStAdFunc var_88
  loc_A1AEBA: FLdPr var_88
  loc_A1AEBD: LateIdLdVar var_98 DispID_15 0
  loc_A1AEC4: CStrVarTmp
  loc_A1AEC5: CVarStr var_A8
  loc_A1AEC8: FLdRfVar var_B8
  loc_A1AECB: ImpAdCallFPR4  = Year()
  loc_A1AED0: FLdRfVar var_B8
  loc_A1AED3: ConcatVar var_D8
  loc_A1AED7: LitVarStr var_E8, " AND CodiCuco LIKE '"
  loc_A1AEDC: ConcatVar var_F8
  loc_A1AEE0: FLdPr Me
  loc_A1AEE3: VCallAd Control_ID_mskCodiCuco
  loc_A1AEE6: FStAdFunc var_FC
  loc_A1AEE9: FLdPr var_FC
  loc_A1AEEC: LateIdLdVar var_10C DispID_20 0
  loc_A1AEF3: CStrVarTmp
  loc_A1AEF4: CVarStr var_11C
  loc_A1AEF7: ConcatVar var_12C
  loc_A1AEFB: LitVarStr var_13C, Chr(37) & "'"
  loc_A1AF00: ConcatVar var_14C
  loc_A1AF04: CStrVarVal var_150
  loc_A1AF08: FLdPr Me
  loc_A1AF0B: MemLdRfVar from_stack_1.global_56
  loc_A1AF0E: NewIfNullPr clscuentacontable
  loc_A1AF11: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A1AF16: FFree1Str var_150
  loc_A1AF19: FFreeAd var_88 = ""
  loc_A1AF20: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_10C = "": var_F8 = "": var_11C = "": var_12C = ""
  loc_A1AF35: FLdRfVar var_154
  loc_A1AF38: FLdPr Me
  loc_A1AF3B: MemLdRfVar from_stack_1.global_56
  loc_A1AF3E: NewIfNullPr clscuentacontable
  loc_A1AF41: from_stack_1 = clscuentacontable.RecordCount
  loc_A1AF46: ILdRf var_154
  loc_A1AF49: FStR4 var_158
  loc_A1AF4C: ILdRf var_158
  loc_A1AF4F: LitI4 0
  loc_A1AF54: EqI4
  loc_A1AF55: BranchF loc_A1AF72
  loc_A1AF58: LitStr vbNullString
  loc_A1AF5B: FLdPr Me
  loc_A1AF5E: VCallAd Control_ID_lblDetaCuco
  loc_A1AF61: FStAdFunc var_88
  loc_A1AF64: FLdPr var_88
  loc_A1AF67: Me.Caption = from_stack_1
  loc_A1AF6C: FFree1Ad var_88
  loc_A1AF6F: Branch loc_A1B01D
  loc_A1AF72: ILdRf var_158
  loc_A1AF75: LitI4 1
  loc_A1AF7A: EqI4
  loc_A1AF7B: BranchF loc_A1AFE2
  loc_A1AF7E: FLdRfVar var_98
  loc_A1AF81: FLdRfVar var_15C
  loc_A1AF84: LitVarStr var_C8, "DetaCuco"
  loc_A1AF89: PopAdLdVar
  loc_A1AF8A: FLdRfVar var_FC
  loc_A1AF8D: FLdRfVar var_88
  loc_A1AF90: FLdPr Me
  loc_A1AF93: MemLdRfVar from_stack_1.global_56
  loc_A1AF96: NewIfNullPr clscuentacontable
  loc_A1AF99: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A1AF9E: FLdPr var_88
  loc_A1AFA1:  = Me.Fields
  loc_A1AFA6: FLdPr var_FC
  loc_A1AFA9: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AFAE: FLdPr var_15C
  loc_A1AFB1:  = Me.Value
  loc_A1AFB6: FLdRfVar var_98
  loc_A1AFB9: CStrVarTmp
  loc_A1AFBA: FStStrNoPop var_150
  loc_A1AFBD: FLdPr Me
  loc_A1AFC0: VCallAd Control_ID_lblDetaCuco
  loc_A1AFC3: FStAdFunc var_160
  loc_A1AFC6: FLdPr var_160
  loc_A1AFC9: Me.Caption = from_stack_1
  loc_A1AFCE: FFree1Str var_150
  loc_A1AFD1: FFreeAd var_88 = "": var_FC = "": var_15C = ""
  loc_A1AFDC: FFree1Var var_98 = ""
  loc_A1AFDF: Branch loc_A1B01D
  loc_A1AFE2: FLdRfVar var_154
  loc_A1AFE5: FLdPr Me
  loc_A1AFE8: MemLdRfVar from_stack_1.global_56
  loc_A1AFEB: NewIfNullPr clscuentacontable
  loc_A1AFEE: from_stack_1 = clscuentacontable.RecordCount
  loc_A1AFF3: ILdRf var_154
  loc_A1AFF6: CStrI4
  loc_A1AFF8: FStStrNoPop var_150
  loc_A1AFFB: LitStr " cuentas encontradas"
  loc_A1AFFE: ConcatStr
  loc_A1AFFF: FStStrNoPop var_164
  loc_A1B002: FLdPr Me
  loc_A1B005: VCallAd Control_ID_lblDetaCuco
  loc_A1B008: FStAdFunc var_88
  loc_A1B00B: FLdPr var_88
  loc_A1B00E: Me.Caption = from_stack_1
  loc_A1B013: FFreeStr var_150 = ""
  loc_A1B01A: FFree1Ad var_88
  loc_A1B01D: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94F4A0
  'Data Table: 4708B8
  loc_94F48C: FLdPr Me
  loc_94F48F: VCallAd Control_ID_mskHasta
  loc_94F492: CVarAd
  loc_94F496: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F49B: FFree1Var var_94 = ""
  loc_94F49E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B23E4
  'Data Table: 4708B8
  loc_9B2348: FLdPr Me
  loc_9B234B: VCallAd Control_ID_mskHasta
  loc_9B234E: FStAdFunc var_88
  loc_9B2351: FLdPr var_88
  loc_9B2354: LateIdLdVar var_98 DispID_15 0
  loc_9B235B: PopAd
  loc_9B235D: FLdPr Me
  loc_9B2360: VCallAd Control_ID_mskHasta
  loc_9B2363: FStAdFunc var_AC
  loc_9B2366: LitI2_Byte 0
  loc_9B2368: PopTmpLdAd2 var_A2
  loc_9B236B: FLdZeroAd var_AC
  loc_9B236E: FStAdFunc var_A0
  loc_9B2371: FLdRfVar var_A0
  loc_9B2374: LitStr vbNullString
  loc_9B2377: LitI2_Byte 0
  loc_9B2379: LitI2_Byte 0
  loc_9B237B: FLdRfVar var_98
  loc_9B237E: CStrVarTmp
  loc_9B237F: FStStrNoPop var_9C
  loc_9B2382: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2387: FStStrNoPop var_A8
  loc_9B238A: FLdPr Me
  loc_9B238D: MemStStrCopy
  loc_9B2391: FFreeStr var_9C = ""
  loc_9B2398: FFreeAd var_88 = "": var_A0 = ""
  loc_9B23A1: FFree1Var var_98 = ""
  loc_9B23A4: FLdPr Me
  loc_9B23A7: VCallAd Control_ID_mskHasta
  loc_9B23AA: FStAdFunc var_B0
  loc_9B23AD: LitNothing
  loc_9B23AF: CastAd
  loc_9B23B2: FStAdFunc var_AC
  loc_9B23B5: FLdRfVar var_AC
  loc_9B23B8: FLdZeroAd var_B0
  loc_9B23BB: FStAdFuncNoPop
  loc_9B23BE: CastAd
  loc_9B23C1: FStAdFunc var_A0
  loc_9B23C4: FLdRfVar var_A0
  loc_9B23C7: FLdPr Me
  loc_9B23CA: MemLdRfVar from_stack_1.global_104
  loc_9B23CD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B23D2: IStI2 arg_C
  loc_9B23D5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B23E0: ExitProcHresult
  loc_9B23E1: CR8I4
End Function

Private Sub cmdCodiCuco_Click() 'A07100
  'Data Table: 4708B8
  loc_A06FAC: FLdPr Me
  loc_A06FAF: VCallAd Control_ID_mskDesde
  loc_A06FB2: FStAdFunc var_88
  loc_A06FB5: FLdPr var_88
  loc_A06FB8: LateIdLdVar var_98 DispID_15 0
  loc_A06FBF: CStrVarTmp
  loc_A06FC0: CVarStr var_A8
  loc_A06FC3: FLdRfVar var_B8
  loc_A06FC6: ImpAdCallFPR4  = Year()
  loc_A06FCB: FLdRfVar var_B8
  loc_A06FCE: CI2Var
  loc_A06FCF: ImpAdLdRf MemVar_C3D6C0
  loc_A06FD2: NewIfNullPr bscCuentaContable
  loc_A06FD5: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_A06FDA: FFree1Ad var_88
  loc_A06FDD: FFreeVar var_98 = "": var_A8 = ""
  loc_A06FE6: LitVar_Missing var_D8
  loc_A06FE9: PopAdLdVar
  loc_A06FEA: LitVarI4
  loc_A06FF2: PopAdLdVar
  loc_A06FF3: ImpAdLdRf MemVar_C3D6C0
  loc_A06FF6: NewIfNullPr bscCuentaContable
  loc_A06FF9: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_A06FFE: FLdRfVar var_DC
  loc_A07001: FLdRfVar var_88
  loc_A07004: ImpAdLdRf MemVar_C3D6C0
  loc_A07007: NewIfNullPr bscCuentaContable
  loc_A0700A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A0700F: FLdPr var_88
  loc_A07012: from_stack_1 = clsbase.RecordCount
  loc_A07017: ILdRf var_DC
  loc_A0701A: LitI4 0
  loc_A0701F: GtI4
  loc_A07020: FFree1Ad var_88
  loc_A07023: BranchF loc_A070FE
  loc_A07026: FLdRfVar var_98
  loc_A07029: FLdRfVar var_E8
  loc_A0702C: LitVarStr var_C8, "CodiCuco"
  loc_A07031: PopAdLdVar
  loc_A07032: FLdRfVar var_E4
  loc_A07035: FLdRfVar var_E0
  loc_A07038: FLdRfVar var_88
  loc_A0703B: ImpAdLdRf MemVar_C3D6C0
  loc_A0703E: NewIfNullPr bscCuentaContable
  loc_A07041: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A07046: FLdPr var_88
  loc_A07049: from_stack_1v = clsbase.RsFrmGet()
  loc_A0704E: FLdPr var_E0
  loc_A07051:  = Me.Fields
  loc_A07056: FLdPr var_E4
  loc_A07059: from_stack_2 = Me.Item(from_stack_1)
  loc_A0705E: FLdPr var_E8
  loc_A07061:  = Me.Value
  loc_A07066: FLdRfVar var_98
  loc_A07069: CStrVarTmp
  loc_A0706A: CVarStr var_A8
  loc_A0706D: PopAdLdVar
  loc_A0706E: FLdPr Me
  loc_A07071: VCallAd Control_ID_mskCodiCuco
  loc_A07074: FStAdFunc var_EC
  loc_A07077: FLdPr var_EC
  loc_A0707A: LateIdSt
  loc_A0707F: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A0708C: FFreeVar var_98 = ""
  loc_A07093: FLdRfVar var_98
  loc_A07096: FLdRfVar var_E8
  loc_A07099: LitVarStr var_C8, "DetaCuco"
  loc_A0709E: PopAdLdVar
  loc_A0709F: FLdRfVar var_E4
  loc_A070A2: FLdRfVar var_E0
  loc_A070A5: FLdRfVar var_88
  loc_A070A8: ImpAdLdRf MemVar_C3D6C0
  loc_A070AB: NewIfNullPr bscCuentaContable
  loc_A070AE: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A070B3: FLdPr var_88
  loc_A070B6: from_stack_1v = clsbase.RsFrmGet()
  loc_A070BB: FLdPr var_E0
  loc_A070BE:  = Me.Fields
  loc_A070C3: FLdPr var_E4
  loc_A070C6: from_stack_2 = Me.Item(from_stack_1)
  loc_A070CB: FLdPr var_E8
  loc_A070CE:  = Me.Value
  loc_A070D3: FLdRfVar var_98
  loc_A070D6: CStrVarTmp
  loc_A070D7: FStStrNoPop var_F0
  loc_A070DA: FLdPr Me
  loc_A070DD: VCallAd Control_ID_lblDetaCuco
  loc_A070E0: FStAdFunc var_EC
  loc_A070E3: FLdPr var_EC
  loc_A070E6: Me.Caption = from_stack_1
  loc_A070EB: FFree1Str var_F0
  loc_A070EE: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A070FB: FFree1Var var_98 = ""
  loc_A070FE: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '955870
  'Data Table: 4708B8
  loc_955858: LitI2_Byte 0
  loc_95585A: ILdRf Me
  loc_95585D: CastAd
  loc_955860: FStAdFunc var_88
  loc_955863: FLdRfVar var_88
  loc_955866: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95586B: FFree1Ad var_88
  loc_95586E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A8D4
  'Data Table: 4708B8
  loc_97A8A4: LitVarStr var_94, "Cerrando..."
  loc_97A8A9: PopAdLdVar
  loc_97A8AA: FLdPr Me
  loc_97A8AD: VCallAd Control_ID_statusBar
  loc_97A8B0: FStAdFunc var_A8
  loc_97A8B3: FLdPr var_A8
  loc_97A8B6: LateIdSt
  loc_97A8BB: FFree1Ad var_A8
  loc_97A8BE: ILdRf Me
  loc_97A8C1: FStAdNoPop
  loc_97A8C5: ImpAdLdRf MemVar_C44F9C
  loc_97A8C8: NewIfNullPr Me
  loc_97A8CB: Me.Global.Unload from_stack_1
  loc_97A8D0: FFree1Ad var_A8
  loc_97A8D3: ExitProcHresult
End Sub

Public Function bGeneradoGet() '471784
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '471793
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB854
  'Data Table: 4708B8
  loc_9AB7D0: LitI4 0
  loc_9AB7D5: LitI4 5
  loc_9AB7DA: FLdRfVar var_88
  loc_9AB7DD: Redim
  loc_9AB7E7: FLdPr Me
  loc_9AB7EA: VCallAd Control_ID_mskDesde
  loc_9AB7ED: CVarAd
  loc_9AB7F1: ParmAry1St
  loc_9AB7F7: FLdPr Me
  loc_9AB7FA: VCallAd Control_ID_cmdCalDesde
  loc_9AB7FD: CVarAd
  loc_9AB801: ParmAry1St
  loc_9AB807: FLdPr Me
  loc_9AB80A: VCallAd Control_ID_mskHasta
  loc_9AB80D: CVarAd
  loc_9AB811: ParmAry1St
  loc_9AB817: FLdPr Me
  loc_9AB81A: VCallAd Control_ID_cmdCalHasta
  loc_9AB81D: CVarAd
  loc_9AB821: ParmAry1St
  loc_9AB827: FLdPr Me
  loc_9AB82A: VCallAd Control_ID_mskCodiCuco
  loc_9AB82D: CVarAd
  loc_9AB831: ParmAry1St
  loc_9AB837: FLdPr Me
  loc_9AB83A: VCallAd Control_ID_cmdCodiCuco
  loc_9AB83D: CVarAd
  loc_9AB841: ParmAry1St
  loc_9AB847: FLdRfVar var_88
  loc_9AB84A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB84F: FLdRfVar var_88
  loc_9AB852: Erase
  loc_9AB853: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1677C
  'Data Table: 4708B8
  loc_B15F14: LitStr vbNullString
  loc_B15F17: FLdPr Me
  loc_B15F1A: MemStStrCopy
  loc_B15F1E: LitI2_Byte 0
  loc_B15F20: PopTmpLdAd2 var_92
  loc_B15F23: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B15F28: FLdPr Me
  loc_B15F2B: MemLdStr global_104
  loc_B15F2E: LitStr vbNullString
  loc_B15F31: NeStr
  loc_B15F33: BranchF loc_B15F39
  loc_B15F36: Branch loc_B16750
  loc_B15F39: LitI2_Byte 0
  loc_B15F3B: PopTmpLdAd2 var_92
  loc_B15F3E: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B15F43: FLdPr Me
  loc_B15F46: MemLdStr global_104
  loc_B15F49: LitStr vbNullString
  loc_B15F4C: NeStr
  loc_B15F4E: BranchF loc_B15F54
  loc_B15F51: Branch loc_B16750
  loc_B15F54: FLdPr Me
  loc_B15F57: MemLdI2 bGenerado
  loc_B15F5A: BranchF loc_B15F5E
  loc_B15F5D: ExitProcHresult
  loc_B15F5E: LitVarStr var_A4, "Generando reporte..."
  loc_B15F63: PopAdLdVar
  loc_B15F64: FLdPr Me
  loc_B15F67: VCallAd Control_ID_statusBar
  loc_B15F6A: FStAdFunc var_B8
  loc_B15F6D: FLdPr var_B8
  loc_B15F70: LateIdSt
  loc_B15F75: FFree1Ad var_B8
  loc_B15F78: LitI4 &HB
  loc_B15F7D: CI2I4
  loc_B15F7E: FLdPr Me
  loc_B15F81: Me.MousePointer = from_stack_1
  loc_B15F86: FLdPr Me
  loc_B15F89: VCallAd Control_ID_mskDesde
  loc_B15F8C: FStAdFunc var_B8
  loc_B15F8F: FLdPr var_B8
  loc_B15F92: LateIdLdVar var_C8 DispID_22 0
  loc_B15F99: CStrVarTmp
  loc_B15F9A: FStStrNoPop var_CC
  loc_B15F9D: LitStr vbNullString
  loc_B15FA0: NeStr
  loc_B15FA2: FFree1Str var_CC
  loc_B15FA5: FFree1Ad var_B8
  loc_B15FA8: FFree1Var var_C8 = ""
  loc_B15FAB: BranchF loc_B15FFD
  loc_B15FAE: FLdPr Me
  loc_B15FB1: VCallAd Control_ID_mskDesde
  loc_B15FB4: FStAdFunc var_B8
  loc_B15FB7: FLdPr var_B8
  loc_B15FBA: LateIdLdVar var_C8 DispID_15 0
  loc_B15FC1: PopAd
  loc_B15FC3: LitStr " AND FechCaja >= "
  loc_B15FC6: LitI4 1
  loc_B15FCB: LitI4 1
  loc_B15FD0: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B15FD5: FStVarCopyObj var_EC
  loc_B15FD8: FLdRfVar var_EC
  loc_B15FDB: FLdRfVar var_C8
  loc_B15FDE: CStrVarTmp
  loc_B15FDF: CVarStr var_DC
  loc_B15FE2: ImpAdCallI2 Format$(, )
  loc_B15FE7: FStStrNoPop var_CC
  loc_B15FEA: ConcatStr
  loc_B15FEB: FStStr var_88
  loc_B15FEE: FFree1Str var_CC
  loc_B15FF1: FFree1Ad var_B8
  loc_B15FF4: FFreeVar var_C8 = "": var_DC = ""
  loc_B15FFD: FLdPr Me
  loc_B16000: VCallAd Control_ID_mskHasta
  loc_B16003: FStAdFunc var_B8
  loc_B16006: FLdPr var_B8
  loc_B16009: LateIdLdVar var_C8 DispID_22 0
  loc_B16010: CStrVarTmp
  loc_B16011: FStStrNoPop var_CC
  loc_B16014: LitStr vbNullString
  loc_B16017: NeStr
  loc_B16019: FFree1Str var_CC
  loc_B1601C: FFree1Ad var_B8
  loc_B1601F: FFree1Var var_C8 = ""
  loc_B16022: BranchF loc_B16074
  loc_B16025: FLdPr Me
  loc_B16028: VCallAd Control_ID_mskHasta
  loc_B1602B: FStAdFunc var_B8
  loc_B1602E: FLdPr var_B8
  loc_B16031: LateIdLdVar var_C8 DispID_15 0
  loc_B16038: PopAd
  loc_B1603A: LitStr " AND FechCaja <= "
  loc_B1603D: LitI4 1
  loc_B16042: LitI4 1
  loc_B16047: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B1604C: FStVarCopyObj var_EC
  loc_B1604F: FLdRfVar var_EC
  loc_B16052: FLdRfVar var_C8
  loc_B16055: CStrVarTmp
  loc_B16056: CVarStr var_DC
  loc_B16059: ImpAdCallI2 Format$(, )
  loc_B1605E: FStStrNoPop var_CC
  loc_B16061: ConcatStr
  loc_B16062: FStStr var_8C
  loc_B16065: FFree1Str var_CC
  loc_B16068: FFree1Ad var_B8
  loc_B1606B: FFreeVar var_C8 = "": var_DC = ""
  loc_B16074: FLdPr Me
  loc_B16077: VCallAd Control_ID_mskCodiCuco
  loc_B1607A: FStAdFunc var_B8
  loc_B1607D: FLdPr var_B8
  loc_B16080: LateIdLdVar var_C8 DispID_22 0
  loc_B16087: CStrVarTmp
  loc_B16088: FStStrNoPop var_CC
  loc_B1608B: LitStr vbNullString
  loc_B1608E: NeStr
  loc_B16090: FFree1Str var_CC
  loc_B16093: FFree1Ad var_B8
  loc_B16096: FFree1Var var_C8 = ""
  loc_B16099: BranchF loc_B160CE
  loc_B1609C: LitStr " HAVING CodiCuco LIKE '"
  loc_B1609F: FLdPr Me
  loc_B160A2: VCallAd Control_ID_mskCodiCuco
  loc_B160A5: FStAdFunc var_B8
  loc_B160A8: FLdPr var_B8
  loc_B160AB: LateIdLdVar var_C8 DispID_20 0
  loc_B160B2: CStrVarTmp
  loc_B160B3: FStStrNoPop var_CC
  loc_B160B6: ConcatStr
  loc_B160B7: FStStrNoPop var_F0
  loc_B160BA: LitStr Chr(37) & "'"
  loc_B160BD: ConcatStr
  loc_B160BE: FStStr var_90
  loc_B160C1: FFreeStr var_CC = ""
  loc_B160C8: FFree1Ad var_B8
  loc_B160CB: FFree1Var var_C8 = ""
  loc_B160CE: FLdPr Me
  loc_B160D1: MemLdRfVar from_stack_1.global_60
  loc_B160D4: NewIfNullAd
  loc_B160D7: FStAd var_F4 
  loc_B160DB: LitStr "SELECT DISTINCT sub.CodiCuco, DetaCuco"
  loc_B160DE: LitStr " FROM cajamovibanco sub"
  loc_B160E1: ConcatStr
  loc_B160E2: FStStrNoPop var_CC
  loc_B160E5: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = sub.PeriInfo AND cc.CodiCuco = sub.CodiCuco"
  loc_B160E8: ConcatStr
  loc_B160E9: FStStrNoPop var_F0
  loc_B160EC: LitStr " WHERE TRUE "
  loc_B160EF: ConcatStr
  loc_B160F0: FStStrNoPop var_F8
  loc_B160F3: ILdRf var_88
  loc_B160F6: ConcatStr
  loc_B160F7: FStStrNoPop var_FC
  loc_B160FA: ILdRf var_8C
  loc_B160FD: ConcatStr
  loc_B160FE: FStStrNoPop var_100
  loc_B16101: LitStr " GROUP BY sub.CodiCuco /* sub.DebeCamb, sub.HabeCamb */ "
  loc_B16104: ConcatStr
  loc_B16105: FStStrNoPop var_104
  loc_B16108: ILdRf var_90
  loc_B1610B: ConcatStr
  loc_B1610C: FStStrNoPop var_108
  loc_B1610F: LitStr " ORDER BY CodiCuco;"
  loc_B16112: ConcatStr
  loc_B16113: FStStrNoPop var_10C
  loc_B16116: FLdPr var_F4
  loc_B16119: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1611E: FFreeStr var_CC = "": var_F0 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B16131: FLdRfVar var_110
  loc_B16134: FLdPr var_F4
  loc_B16137: from_stack_1 = clsbase.RecordCount
  loc_B1613C: ILdRf var_110
  loc_B1613F: LitI4 0
  loc_B16144: EqI4
  loc_B16145: BranchF loc_B16158
  loc_B16148: LitI4 0
  loc_B1614D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B16150: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B16155: Branch loc_B16750
  loc_B16158: LitI2_Byte 0
  loc_B1615A: CStrUI1
  loc_B1615C: FStStrNoPop var_CC
  loc_B1615F: FLdPr Me
  loc_B16162: MemStStrCopy
  loc_B16166: FFree1Str var_CC
  loc_B16169: LitI2_Byte 0
  loc_B1616B: CStrUI1
  loc_B1616D: FStStrNoPop var_CC
  loc_B16170: FLdPr Me
  loc_B16173: MemStStrCopy
  loc_B16177: FFree1Str var_CC
  loc_B1617A: LitI4 1
  loc_B1617F: FLdRfVar var_110
  loc_B16182: FLdPr Me
  loc_B16185: MemLdRfVar from_stack_1.global_60
  loc_B16188: NewIfNullPr clsbase
  loc_B1618B: from_stack_1 = clsbase.RecordCount
  loc_B16190: ILdRf var_110
  loc_B16193: FLdPr Me
  loc_B16196: MemLdRfVar from_stack_1.global_84
  loc_B16199: Redim
  loc_B161A3: FLdPr var_F4
  loc_B161A6: Call clsbase.MoveFirst()
  loc_B161AB: LitI2_Byte 1
  loc_B161AD: FLdPr Me
  loc_B161B0: MemLdRfVar from_stack_1.global_96
  loc_B161B3: FLdPr Me
  loc_B161B6: MemLdStr global_84
  loc_B161B9: LitI2_Byte 1
  loc_B161BB: FnUBound
  loc_B161BD: CI2I4
  loc_B161BE: ForI2 var_114
  loc_B161C4: FLdRfVar var_11C
  loc_B161C7: LitVarStr var_A4, "CodiCuco"
  loc_B161CC: PopAdLdVar
  loc_B161CD: FLdRfVar var_118
  loc_B161D0: FLdRfVar var_B8
  loc_B161D3: FLdPr var_F4
  loc_B161D6: from_stack_1v = clsbase.RsFrmGet()
  loc_B161DB: FLdPr var_B8
  loc_B161DE:  = Me.Fields
  loc_B161E3: FLdPr var_118
  loc_B161E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B161EB: LitI2_Byte 0
  loc_B161ED: LitVar_Missing var_DC
  loc_B161F0: LitI2_Byte 0
  loc_B161F2: FLdZeroAd var_11C
  loc_B161F5: CVarAd
  loc_B161F9: PopAdLdVar
  loc_B161FA: FLdPr Me
  loc_B161FD: MemLdI2 global_96
  loc_B16200: CI4UI1
  loc_B16201: FLdPr Me
  loc_B16204: MemLdStr global_84
  loc_B16207: AryLock
  loc_B1620A: Ary1LdPr
  loc_B1620B: MemLdRfVar from_stack_1.global_0
  loc_B1620E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16213: AryUnlock
  loc_B16216: FFreeAd var_B8 = ""
  loc_B1621D: FFreeVar var_C8 = ""
  loc_B16224: FLdRfVar var_11C
  loc_B16227: LitVarStr var_A4, "DetaCuco"
  loc_B1622C: PopAdLdVar
  loc_B1622D: FLdRfVar var_118
  loc_B16230: FLdRfVar var_B8
  loc_B16233: FLdPr var_F4
  loc_B16236: from_stack_1v = clsbase.RsFrmGet()
  loc_B1623B: FLdPr var_B8
  loc_B1623E:  = Me.Fields
  loc_B16243: FLdPr var_118
  loc_B16246: from_stack_2 = Me.Item(from_stack_1)
  loc_B1624B: LitI2_Byte 0
  loc_B1624D: LitVar_Missing var_DC
  loc_B16250: LitI2_Byte 0
  loc_B16252: FLdZeroAd var_11C
  loc_B16255: CVarAd
  loc_B16259: PopAdLdVar
  loc_B1625A: FLdPr Me
  loc_B1625D: MemLdI2 global_96
  loc_B16260: CI4UI1
  loc_B16261: FLdPr Me
  loc_B16264: MemLdStr global_84
  loc_B16267: AryLock
  loc_B1626A: Ary1LdPr
  loc_B1626B: MemLdRfVar from_stack_1.global_4
  loc_B1626E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16273: AryUnlock
  loc_B16276: FFreeAd var_B8 = ""
  loc_B1627D: FFreeVar var_C8 = ""
  loc_B16284: FLdPr var_F4
  loc_B16287: Call clsbase.MoveSiguiente()
  loc_B1628C: FLdPr Me
  loc_B1628F: MemLdRfVar from_stack_1.global_96
  loc_B16292: NextI2 var_114, loc_B161C4
  loc_B16297: LitI2_Byte 1
  loc_B16299: FLdPr Me
  loc_B1629C: MemLdRfVar from_stack_1.global_96
  loc_B1629F: FLdPr Me
  loc_B162A2: MemLdStr global_84
  loc_B162A5: LitI2_Byte 1
  loc_B162A7: FnUBound
  loc_B162A9: CI2I4
  loc_B162AA: ForI2 var_124
  loc_B162B0: LitStr "SELECT FechCaja, CodiBanc, NumeMoba, DebeCamb, HabeCamb, cmb.CodiTimb, DetaTimb"
  loc_B162B3: LitStr " FROM cajamovibanco cmb"
  loc_B162B6: ConcatStr
  loc_B162B7: FStStrNoPop var_CC
  loc_B162BA: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(cmb.PeriInfo <= 2018,2018,cmb.PeriInfo) AND tmb.CodiTimb = cmb.CodiTimb"
  loc_B162BD: ConcatStr
  loc_B162BE: FStStrNoPop var_F0
  loc_B162C1: LitStr " WHERE cmb.CodiCuco = '"
  loc_B162C4: ConcatStr
  loc_B162C5: FStStrNoPop var_F8
  loc_B162C8: FLdPr Me
  loc_B162CB: MemLdI2 global_96
  loc_B162CE: CI4UI1
  loc_B162CF: FLdPr Me
  loc_B162D2: MemLdStr global_84
  loc_B162D5: Ary1LdPr
  loc_B162D6: MemLdStr global_0
  loc_B162D9: ConcatStr
  loc_B162DA: FStStrNoPop var_FC
  loc_B162DD: LitStr "'"
  loc_B162E0: ConcatStr
  loc_B162E1: FStStrNoPop var_100
  loc_B162E4: ILdRf var_88
  loc_B162E7: ConcatStr
  loc_B162E8: FStStrNoPop var_104
  loc_B162EB: ILdRf var_8C
  loc_B162EE: ConcatStr
  loc_B162EF: FStStrNoPop var_108
  loc_B162F2: LitStr " ORDER BY FechCaja, CodiBanc, NumeMoba;"
  loc_B162F5: ConcatStr
  loc_B162F6: FStStrNoPop var_10C
  loc_B162F9: FLdPr var_F4
  loc_B162FC: Call clsbase.RedefineRS(from_stack_1v)
  loc_B16301: FFreeStr var_CC = "": var_F0 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B16314: FLdRfVar var_110
  loc_B16317: FLdPr var_F4
  loc_B1631A: from_stack_1 = clsbase.RecordCount
  loc_B1631F: ILdRf var_110
  loc_B16322: LitI4 0
  loc_B16327: GtI4
  loc_B16328: BranchF loc_B166D9
  loc_B1632B: FLdRfVar var_110
  loc_B1632E: FLdPr var_F4
  loc_B16331: from_stack_1 = clsbase.RecordCount
  loc_B16336: LitI4 1
  loc_B1633B: ILdRf var_110
  loc_B1633E: FLdPr Me
  loc_B16341: MemLdI2 global_96
  loc_B16344: CI4UI1
  loc_B16345: FLdPr Me
  loc_B16348: MemLdStr global_84
  loc_B1634B: Ary1LdPr
  loc_B1634C: MemLdRfVar from_stack_1.global_8
  loc_B1634F: Redim
  loc_B16359: FLdPr var_F4
  loc_B1635C: Call clsbase.MoveFirst()
  loc_B16361: LitI2_Byte 1
  loc_B16363: FLdPr Me
  loc_B16366: MemLdRfVar from_stack_1.global_98
  loc_B16369: FLdPr Me
  loc_B1636C: MemLdI2 global_96
  loc_B1636F: CI4UI1
  loc_B16370: FLdPr Me
  loc_B16373: MemLdStr global_84
  loc_B16376: Ary1LdPr
  loc_B16377: MemLdStr global_8
  loc_B1637A: LitI2_Byte 1
  loc_B1637C: FnUBound
  loc_B1637E: CI2I4
  loc_B1637F: ForI2 var_128
  loc_B16385: FLdRfVar var_11C
  loc_B16388: LitVarStr var_A4, "FechCaja"
  loc_B1638D: PopAdLdVar
  loc_B1638E: FLdRfVar var_118
  loc_B16391: FLdRfVar var_B8
  loc_B16394: FLdPr var_F4
  loc_B16397: from_stack_1v = clsbase.RsFrmGet()
  loc_B1639C: FLdPr var_B8
  loc_B1639F:  = Me.Fields
  loc_B163A4: FLdPr var_118
  loc_B163A7: from_stack_2 = Me.Item(from_stack_1)
  loc_B163AC: LitI2_Byte 0
  loc_B163AE: LitVar_Missing var_DC
  loc_B163B1: LitI2_Byte 0
  loc_B163B3: FLdZeroAd var_11C
  loc_B163B6: CVarAd
  loc_B163BA: PopAdLdVar
  loc_B163BB: FLdPr Me
  loc_B163BE: MemLdI2 global_98
  loc_B163C1: CI4UI1
  loc_B163C2: FLdPr Me
  loc_B163C5: MemLdI2 global_96
  loc_B163C8: CI4UI1
  loc_B163C9: FLdPr Me
  loc_B163CC: MemLdStr global_84
  loc_B163CF: AryLock
  loc_B163D2: Ary1LdPr
  loc_B163D3: MemLdStr global_8
  loc_B163D6: AryLock
  loc_B163D9: Ary1LdPr
  loc_B163DA: MemLdRfVar from_stack_1.global_0
  loc_B163DD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B163E2: AryUnlock
  loc_B163E5: AryUnlock
  loc_B163E8: FFreeAd var_B8 = ""
  loc_B163EF: FFreeVar var_C8 = ""
  loc_B163F6: FLdRfVar var_11C
  loc_B163F9: LitVarStr var_A4, "CodiBanc"
  loc_B163FE: PopAdLdVar
  loc_B163FF: FLdRfVar var_118
  loc_B16402: FLdRfVar var_B8
  loc_B16405: FLdPr var_F4
  loc_B16408: from_stack_1v = clsbase.RsFrmGet()
  loc_B1640D: FLdPr var_B8
  loc_B16410:  = Me.Fields
  loc_B16415: FLdPr var_118
  loc_B16418: from_stack_2 = Me.Item(from_stack_1)
  loc_B1641D: LitI2_Byte 0
  loc_B1641F: LitVar_Missing var_DC
  loc_B16422: LitI2_Byte 0
  loc_B16424: FLdZeroAd var_11C
  loc_B16427: CVarAd
  loc_B1642B: PopAdLdVar
  loc_B1642C: FLdPr Me
  loc_B1642F: MemLdI2 global_98
  loc_B16432: CI4UI1
  loc_B16433: FLdPr Me
  loc_B16436: MemLdI2 global_96
  loc_B16439: CI4UI1
  loc_B1643A: FLdPr Me
  loc_B1643D: MemLdStr global_84
  loc_B16440: AryLock
  loc_B16443: Ary1LdPr
  loc_B16444: MemLdStr global_8
  loc_B16447: AryLock
  loc_B1644A: Ary1LdPr
  loc_B1644B: MemLdRfVar from_stack_1.global_4
  loc_B1644E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16453: AryUnlock
  loc_B16456: AryUnlock
  loc_B16459: FFreeAd var_B8 = ""
  loc_B16460: FFreeVar var_C8 = ""
  loc_B16467: FLdRfVar var_11C
  loc_B1646A: LitVarStr var_A4, "NumeMoba"
  loc_B1646F: PopAdLdVar
  loc_B16470: FLdRfVar var_118
  loc_B16473: FLdRfVar var_B8
  loc_B16476: FLdPr var_F4
  loc_B16479: from_stack_1v = clsbase.RsFrmGet()
  loc_B1647E: FLdPr var_B8
  loc_B16481:  = Me.Fields
  loc_B16486: FLdPr var_118
  loc_B16489: from_stack_2 = Me.Item(from_stack_1)
  loc_B1648E: LitI2_Byte 0
  loc_B16490: LitVar_Missing var_DC
  loc_B16493: LitI2_Byte 0
  loc_B16495: FLdZeroAd var_11C
  loc_B16498: CVarAd
  loc_B1649C: PopAdLdVar
  loc_B1649D: FLdPr Me
  loc_B164A0: MemLdI2 global_98
  loc_B164A3: CI4UI1
  loc_B164A4: FLdPr Me
  loc_B164A7: MemLdI2 global_96
  loc_B164AA: CI4UI1
  loc_B164AB: FLdPr Me
  loc_B164AE: MemLdStr global_84
  loc_B164B1: AryLock
  loc_B164B4: Ary1LdPr
  loc_B164B5: MemLdStr global_8
  loc_B164B8: AryLock
  loc_B164BB: Ary1LdPr
  loc_B164BC: MemLdRfVar from_stack_1.global_8
  loc_B164BF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B164C4: AryUnlock
  loc_B164C7: AryUnlock
  loc_B164CA: FFreeAd var_B8 = ""
  loc_B164D1: FFreeVar var_C8 = ""
  loc_B164D8: FLdRfVar var_11C
  loc_B164DB: LitVarStr var_A4, "CodiTimb"
  loc_B164E0: PopAdLdVar
  loc_B164E1: FLdRfVar var_118
  loc_B164E4: FLdRfVar var_B8
  loc_B164E7: FLdPr var_F4
  loc_B164EA: from_stack_1v = clsbase.RsFrmGet()
  loc_B164EF: FLdPr var_B8
  loc_B164F2:  = Me.Fields
  loc_B164F7: FLdPr var_118
  loc_B164FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B164FF: LitI2_Byte 0
  loc_B16501: LitVar_Missing var_DC
  loc_B16504: LitI2_Byte 0
  loc_B16506: FLdZeroAd var_11C
  loc_B16509: CVarAd
  loc_B1650D: PopAdLdVar
  loc_B1650E: FLdPr Me
  loc_B16511: MemLdI2 global_98
  loc_B16514: CI4UI1
  loc_B16515: FLdPr Me
  loc_B16518: MemLdI2 global_96
  loc_B1651B: CI4UI1
  loc_B1651C: FLdPr Me
  loc_B1651F: MemLdStr global_84
  loc_B16522: AryLock
  loc_B16525: Ary1LdPr
  loc_B16526: MemLdStr global_8
  loc_B16529: AryLock
  loc_B1652C: Ary1LdPr
  loc_B1652D: MemLdRfVar from_stack_1.global_12
  loc_B16530: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16535: AryUnlock
  loc_B16538: AryUnlock
  loc_B1653B: FFreeAd var_B8 = ""
  loc_B16542: FFreeVar var_C8 = ""
  loc_B16549: FLdRfVar var_11C
  loc_B1654C: LitVarStr var_A4, "DetaTimb"
  loc_B16551: PopAdLdVar
  loc_B16552: FLdRfVar var_118
  loc_B16555: FLdRfVar var_B8
  loc_B16558: FLdPr var_F4
  loc_B1655B: from_stack_1v = clsbase.RsFrmGet()
  loc_B16560: FLdPr var_B8
  loc_B16563:  = Me.Fields
  loc_B16568: FLdPr var_118
  loc_B1656B: from_stack_2 = Me.Item(from_stack_1)
  loc_B16570: LitI2_Byte 0
  loc_B16572: LitVar_Missing var_DC
  loc_B16575: LitI2_Byte 0
  loc_B16577: FLdZeroAd var_11C
  loc_B1657A: CVarAd
  loc_B1657E: PopAdLdVar
  loc_B1657F: FLdPr Me
  loc_B16582: MemLdI2 global_98
  loc_B16585: CI4UI1
  loc_B16586: FLdPr Me
  loc_B16589: MemLdI2 global_96
  loc_B1658C: CI4UI1
  loc_B1658D: FLdPr Me
  loc_B16590: MemLdStr global_84
  loc_B16593: AryLock
  loc_B16596: Ary1LdPr
  loc_B16597: MemLdStr global_8
  loc_B1659A: AryLock
  loc_B1659D: Ary1LdPr
  loc_B1659E: MemLdRfVar from_stack_1.global_16
  loc_B165A1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B165A6: AryUnlock
  loc_B165A9: AryUnlock
  loc_B165AC: FFreeAd var_B8 = ""
  loc_B165B3: FFreeVar var_C8 = ""
  loc_B165BA: FLdRfVar var_11C
  loc_B165BD: LitVarStr var_A4, "DebeCamb"
  loc_B165C2: PopAdLdVar
  loc_B165C3: FLdRfVar var_118
  loc_B165C6: FLdRfVar var_B8
  loc_B165C9: FLdPr var_F4
  loc_B165CC: from_stack_1v = clsbase.RsFrmGet()
  loc_B165D1: FLdPr var_B8
  loc_B165D4:  = Me.Fields
  loc_B165D9: FLdPr var_118
  loc_B165DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B165E1: LitI2_Byte 0
  loc_B165E3: FLdPr Me
  loc_B165E6: MemLdI2 global_96
  loc_B165E9: CI4UI1
  loc_B165EA: FLdPr Me
  loc_B165ED: MemLdStr global_84
  loc_B165F0: AryLock
  loc_B165F3: Ary1LdPr
  loc_B165F4: MemLdRfVar from_stack_1.global_12
  loc_B165F7: CVarRef
  loc_B165FC: LitI2_Byte &HFF
  loc_B165FE: FLdZeroAd var_11C
  loc_B16601: CVarAd
  loc_B16605: PopAdLdVar
  loc_B16606: FLdPr Me
  loc_B16609: MemLdI2 global_98
  loc_B1660C: CI4UI1
  loc_B1660D: FLdPr Me
  loc_B16610: MemLdI2 global_96
  loc_B16613: CI4UI1
  loc_B16614: FLdPr Me
  loc_B16617: MemLdStr global_84
  loc_B1661A: AryLock
  loc_B1661D: Ary1LdPr
  loc_B1661E: MemLdStr global_8
  loc_B16621: AryLock
  loc_B16624: Ary1LdPr
  loc_B16625: MemLdRfVar from_stack_1.global_20
  loc_B16628: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1662D: AryUnlock
  loc_B16630: AryUnlock
  loc_B16633: AryUnlock
  loc_B16636: FFreeAd var_B8 = ""
  loc_B1663D: FFree1Var var_C8 = ""
  loc_B16640: FLdRfVar var_11C
  loc_B16643: LitVarStr var_A4, "HabeCamb"
  loc_B16648: PopAdLdVar
  loc_B16649: FLdRfVar var_118
  loc_B1664C: FLdRfVar var_B8
  loc_B1664F: FLdPr var_F4
  loc_B16652: from_stack_1v = clsbase.RsFrmGet()
  loc_B16657: FLdPr var_B8
  loc_B1665A:  = Me.Fields
  loc_B1665F: FLdPr var_118
  loc_B16662: from_stack_2 = Me.Item(from_stack_1)
  loc_B16667: LitI2_Byte 0
  loc_B16669: FLdPr Me
  loc_B1666C: MemLdI2 global_96
  loc_B1666F: CI4UI1
  loc_B16670: FLdPr Me
  loc_B16673: MemLdStr global_84
  loc_B16676: AryLock
  loc_B16679: Ary1LdPr
  loc_B1667A: MemLdRfVar from_stack_1.global_16
  loc_B1667D: CVarRef
  loc_B16682: LitI2_Byte &HFF
  loc_B16684: FLdZeroAd var_11C
  loc_B16687: CVarAd
  loc_B1668B: PopAdLdVar
  loc_B1668C: FLdPr Me
  loc_B1668F: MemLdI2 global_98
  loc_B16692: CI4UI1
  loc_B16693: FLdPr Me
  loc_B16696: MemLdI2 global_96
  loc_B16699: CI4UI1
  loc_B1669A: FLdPr Me
  loc_B1669D: MemLdStr global_84
  loc_B166A0: AryLock
  loc_B166A3: Ary1LdPr
  loc_B166A4: MemLdStr global_8
  loc_B166A7: AryLock
  loc_B166AA: Ary1LdPr
  loc_B166AB: MemLdRfVar from_stack_1.global_24
  loc_B166AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B166B3: AryUnlock
  loc_B166B6: AryUnlock
  loc_B166B9: AryUnlock
  loc_B166BC: FFreeAd var_B8 = ""
  loc_B166C3: FFree1Var var_C8 = ""
  loc_B166C6: FLdPr var_F4
  loc_B166C9: Call clsbase.MoveSiguiente()
  loc_B166CE: FLdPr Me
  loc_B166D1: MemLdRfVar from_stack_1.global_98
  loc_B166D4: NextI2 var_128, loc_B16385
  loc_B166D9: LitI2_Byte 0
  loc_B166DB: FLdPr Me
  loc_B166DE: MemLdRfVar from_stack_1.global_88
  loc_B166E1: CVarRef
  loc_B166E6: LitI2_Byte &HFF
  loc_B166E8: FLdPr Me
  loc_B166EB: MemLdI2 global_96
  loc_B166EE: CI4UI1
  loc_B166EF: FLdPr Me
  loc_B166F2: MemLdStr global_84
  loc_B166F5: Ary1LdPr
  loc_B166F6: MemLdStr global_12
  loc_B166F9: CVarStr var_A4
  loc_B166FC: PopAdLdVar
  loc_B166FD: FLdPr Me
  loc_B16700: MemLdRfVar from_stack_1.global_100
  loc_B16703: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16708: LitI2_Byte 0
  loc_B1670A: FLdPr Me
  loc_B1670D: MemLdRfVar from_stack_1.global_92
  loc_B16710: CVarRef
  loc_B16715: LitI2_Byte &HFF
  loc_B16717: FLdPr Me
  loc_B1671A: MemLdI2 global_96
  loc_B1671D: CI4UI1
  loc_B1671E: FLdPr Me
  loc_B16721: MemLdStr global_84
  loc_B16724: Ary1LdPr
  loc_B16725: MemLdStr global_16
  loc_B16728: CVarStr var_A4
  loc_B1672B: PopAdLdVar
  loc_B1672C: FLdPr Me
  loc_B1672F: MemLdRfVar from_stack_1.global_100
  loc_B16732: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B16737: FLdPr Me
  loc_B1673A: MemLdRfVar from_stack_1.global_96
  loc_B1673D: NextI2 var_124, loc_B162B0
  loc_B16742: LitNothing
  loc_B16744: FStAd var_F4 
  loc_B16748: LitI2_Byte &HFF
  loc_B1674A: FLdPr Me
  loc_B1674D: MemStI2 bGenerado
  loc_B16750: LitI4 0
  loc_B16755: CI2I4
  loc_B16756: FLdPr Me
  loc_B16759: Me.MousePointer = from_stack_1
  loc_B1675E: LitVarStr var_A4, vbNullString
  loc_B16763: PopAdLdVar
  loc_B16764: FLdPr Me
  loc_B16767: VCallAd Control_ID_statusBar
  loc_B1676A: FStAdFunc var_B8
  loc_B1676D: FLdPr var_B8
  loc_B16770: LateIdSt
  loc_B16775: FFree1Ad var_B8
  loc_B16778: ExitProcHresult
  loc_B16779: MemStI2 global_1516
End Sub

Public Sub GeneraHTML() 'AA3320
  'Data Table: 4708B8
  loc_AA2E40: FLdRfVar var_88
  loc_AA2E43: LitI2_Byte 0
  loc_AA2E45: LitI2_Byte &HFF
  loc_AA2E47: ImpAdLdI4 MemVar_C3D83C
  loc_AA2E4A: FLdPr Me
  loc_AA2E4D: MemLdRfVar from_stack_1.global_64
  loc_AA2E50: NewIfNullPr IFileSystem3
  loc_AA2E53: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AA2E58: ILdRf var_88
  loc_AA2E5B: FLdPr Me
  loc_AA2E5E: MemStVarAd
  loc_AA2E62: FFree1Ad var_88
  loc_AA2E65: Call Proc_246_22_ACF918()
  loc_AA2E6A: LitI2_Byte 1
  loc_AA2E6C: FLdPr Me
  loc_AA2E6F: MemLdRfVar from_stack_1.global_96
  loc_AA2E72: FLdPr Me
  loc_AA2E75: MemLdStr global_84
  loc_AA2E78: LitI2_Byte 1
  loc_AA2E7A: FnUBound
  loc_AA2E7C: CI2I4
  loc_AA2E7D: ForI2 var_8C
  loc_AA2E83: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA2E88: PopAdLdVar
  loc_AA2E89: FLdPr Me
  loc_AA2E8C: MemLdRfVar from_stack_1.global_68
  loc_AA2E8F: LdPrVar
  loc_AA2E91: LateMemCall
  loc_AA2E97: LitStr "    <td rowspan="""
  loc_AA2E9A: FLdPr Me
  loc_AA2E9D: MemLdI2 global_96
  loc_AA2EA0: CI4UI1
  loc_AA2EA1: FLdPr Me
  loc_AA2EA4: MemLdStr global_84
  loc_AA2EA7: Ary1LdPr
  loc_AA2EA8: MemLdStr global_8
  loc_AA2EAB: LitI2_Byte 1
  loc_AA2EAD: FnUBound
  loc_AA2EAF: LitI4 1
  loc_AA2EB4: AddI4
  loc_AA2EB5: CStrI4
  loc_AA2EB7: FStStrNoPop var_B0
  loc_AA2EBA: ConcatStr
  loc_AA2EBB: FStStrNoPop var_B4
  loc_AA2EBE: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AA2EC1: ConcatStr
  loc_AA2EC2: FStStrNoPop var_B8
  loc_AA2EC5: FLdPr Me
  loc_AA2EC8: MemLdI2 global_96
  loc_AA2ECB: CI4UI1
  loc_AA2ECC: FLdPr Me
  loc_AA2ECF: MemLdStr global_84
  loc_AA2ED2: Ary1LdPr
  loc_AA2ED3: MemLdStr global_0
  loc_AA2ED6: ConcatStr
  loc_AA2ED7: FStStrNoPop var_BC
  loc_AA2EDA: LitStr "<br>"
  loc_AA2EDD: ConcatStr
  loc_AA2EDE: FStStrNoPop var_C0
  loc_AA2EE1: FLdPr Me
  loc_AA2EE4: MemLdI2 global_96
  loc_AA2EE7: CI4UI1
  loc_AA2EE8: FLdPr Me
  loc_AA2EEB: MemLdStr global_84
  loc_AA2EEE: Ary1LdPr
  loc_AA2EEF: MemLdStr global_4
  loc_AA2EF2: ConcatStr
  loc_AA2EF3: FStStrNoPop var_C4
  loc_AA2EF6: LitStr "</td>"
  loc_AA2EF9: ConcatStr
  loc_AA2EFA: CVarStr var_D4
  loc_AA2EFD: PopAdLdVar
  loc_AA2EFE: FLdPr Me
  loc_AA2F01: MemLdRfVar from_stack_1.global_68
  loc_AA2F04: LdPrVar
  loc_AA2F06: LateMemCall
  loc_AA2F0C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AA2F1B: FFree1Var var_D4 = ""
  loc_AA2F1E: LitI2_Byte 1
  loc_AA2F20: FLdPr Me
  loc_AA2F23: MemLdRfVar from_stack_1.global_98
  loc_AA2F26: FLdPr Me
  loc_AA2F29: MemLdI2 global_96
  loc_AA2F2C: CI4UI1
  loc_AA2F2D: FLdPr Me
  loc_AA2F30: MemLdStr global_84
  loc_AA2F33: Ary1LdPr
  loc_AA2F34: MemLdStr global_8
  loc_AA2F37: LitI2_Byte 1
  loc_AA2F39: FnUBound
  loc_AA2F3B: CI2I4
  loc_AA2F3C: ForI2 var_D8
  loc_AA2F42: FLdPr Me
  loc_AA2F45: MemLdI2 global_98
  loc_AA2F48: CI4UI1
  loc_AA2F49: FLdPr Me
  loc_AA2F4C: MemLdI2 global_96
  loc_AA2F4F: CI4UI1
  loc_AA2F50: FLdPr Me
  loc_AA2F53: MemLdStr global_84
  loc_AA2F56: AryLock
  loc_AA2F59: Ary1LdPr
  loc_AA2F5A: MemLdStr global_8
  loc_AA2F5D: AryLock
  loc_AA2F60: Ary1LdRf
  loc_AA2F61: FStR4 var_E4
  loc_AA2F64: FLdPr Me
  loc_AA2F67: MemLdI2 global_98
  loc_AA2F6A: LitI2_Byte 1
  loc_AA2F6C: NeI2
  loc_AA2F6D: BranchF loc_AA2F84
  loc_AA2F70: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA2F75: PopAdLdVar
  loc_AA2F76: FLdPr Me
  loc_AA2F79: MemLdRfVar from_stack_1.global_68
  loc_AA2F7C: LdPrVar
  loc_AA2F7E: LateMemCall
  loc_AA2F84: LitI4 0
  loc_AA2F89: LitI4 0
  loc_AA2F8E: LitI2_Byte 0
  loc_AA2F90: LitStr "center"
  loc_AA2F93: FMemLdR4 var_E4(0)
  loc_AA2F98: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2F9D: CVarStr var_D4
  loc_AA2FA0: PopAdLdVar
  loc_AA2FA1: FLdPr Me
  loc_AA2FA4: MemLdRfVar from_stack_1.global_68
  loc_AA2FA7: LdPrVar
  loc_AA2FA9: LateMemCall
  loc_AA2FAF: FFree1Var var_D4 = ""
  loc_AA2FB2: LitI4 0
  loc_AA2FB7: LitI4 0
  loc_AA2FBC: LitI2_Byte 0
  loc_AA2FBE: LitStr "right"
  loc_AA2FC1: FMemLdR4 var_E4(4)
  loc_AA2FC6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2FCB: CVarStr var_D4
  loc_AA2FCE: PopAdLdVar
  loc_AA2FCF: FLdPr Me
  loc_AA2FD2: MemLdRfVar from_stack_1.global_68
  loc_AA2FD5: LdPrVar
  loc_AA2FD7: LateMemCall
  loc_AA2FDD: FFree1Var var_D4 = ""
  loc_AA2FE0: LitI4 0
  loc_AA2FE5: LitI4 0
  loc_AA2FEA: LitI2_Byte 0
  loc_AA2FEC: LitStr "right"
  loc_AA2FEF: FMemLdR4 var_E4(8)
  loc_AA2FF4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2FF9: CVarStr var_D4
  loc_AA2FFC: PopAdLdVar
  loc_AA2FFD: FLdPr Me
  loc_AA3000: MemLdRfVar from_stack_1.global_68
  loc_AA3003: LdPrVar
  loc_AA3005: LateMemCall
  loc_AA300B: FFree1Var var_D4 = ""
  loc_AA300E: LitI4 0
  loc_AA3013: LitI4 0
  loc_AA3018: LitI2_Byte 0
  loc_AA301A: LitStr "left"
  loc_AA301D: FMemLdR4 var_E4(12)
  loc_AA3022: LitStr " "
  loc_AA3025: ConcatStr
  loc_AA3026: FStStrNoPop var_B0
  loc_AA3029: FMemLdR4 var_E4(16)
  loc_AA302E: ConcatStr
  loc_AA302F: FStStrNoPop var_B4
  loc_AA3032: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3037: CVarStr var_D4
  loc_AA303A: PopAdLdVar
  loc_AA303B: FLdPr Me
  loc_AA303E: MemLdRfVar from_stack_1.global_68
  loc_AA3041: LdPrVar
  loc_AA3043: LateMemCall
  loc_AA3049: FFreeStr var_B0 = ""
  loc_AA3050: FFree1Var var_D4 = ""
  loc_AA3053: LitI4 0
  loc_AA3058: LitI4 0
  loc_AA305D: LitI2_Byte 0
  loc_AA305F: LitStr "right"
  loc_AA3062: FMemLdR4 var_E4(20)
  loc_AA3067: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA306C: CVarStr var_D4
  loc_AA306F: PopAdLdVar
  loc_AA3070: FLdPr Me
  loc_AA3073: MemLdRfVar from_stack_1.global_68
  loc_AA3076: LdPrVar
  loc_AA3078: LateMemCall
  loc_AA307E: FFree1Var var_D4 = ""
  loc_AA3081: LitI4 0
  loc_AA3086: LitI4 0
  loc_AA308B: LitI2_Byte 0
  loc_AA308D: LitStr "right"
  loc_AA3090: FMemLdR4 var_E4(24)
  loc_AA3095: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA309A: CVarStr var_D4
  loc_AA309D: PopAdLdVar
  loc_AA309E: FLdPr Me
  loc_AA30A1: MemLdRfVar from_stack_1.global_68
  loc_AA30A4: LdPrVar
  loc_AA30A6: LateMemCall
  loc_AA30AC: FFree1Var var_D4 = ""
  loc_AA30AF: LitVarStr var_9C, "  </tr>"
  loc_AA30B4: PopAdLdVar
  loc_AA30B5: FLdPr Me
  loc_AA30B8: MemLdRfVar from_stack_1.global_68
  loc_AA30BB: LdPrVar
  loc_AA30BD: LateMemCall
  loc_AA30C3: LitI4 0
  loc_AA30C8: FStR4 var_E4
  loc_AA30CB: AryUnlock
  loc_AA30CE: AryUnlock
  loc_AA30D1: FLdPr Me
  loc_AA30D4: MemLdRfVar from_stack_1.global_98
  loc_AA30D7: NextI2 var_D8, loc_AA2F42
  loc_AA30DC: LitVarStr var_9C, "  <tr>"
  loc_AA30E1: PopAdLdVar
  loc_AA30E2: FLdPr Me
  loc_AA30E5: MemLdRfVar from_stack_1.global_68
  loc_AA30E8: LdPrVar
  loc_AA30EA: LateMemCall
  loc_AA30F0: LitVarStr var_9C, "    <th colspan=""3"" align=""left"">&nbsp;</th>"
  loc_AA30F5: PopAdLdVar
  loc_AA30F6: FLdPr Me
  loc_AA30F9: MemLdRfVar from_stack_1.global_68
  loc_AA30FC: LdPrVar
  loc_AA30FE: LateMemCall
  loc_AA3104: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AA3109: PopAdLdVar
  loc_AA310A: FLdPr Me
  loc_AA310D: MemLdRfVar from_stack_1.global_68
  loc_AA3110: LdPrVar
  loc_AA3112: LateMemCall
  loc_AA3118: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AA311B: FLdPr Me
  loc_AA311E: MemLdI2 global_96
  loc_AA3121: CI4UI1
  loc_AA3122: FLdPr Me
  loc_AA3125: MemLdStr global_84
  loc_AA3128: Ary1LdPr
  loc_AA3129: MemLdStr global_12
  loc_AA312C: ConcatStr
  loc_AA312D: FStStrNoPop var_B0
  loc_AA3130: LitStr "</td>"
  loc_AA3133: ConcatStr
  loc_AA3134: CVarStr var_D4
  loc_AA3137: PopAdLdVar
  loc_AA3138: FLdPr Me
  loc_AA313B: MemLdRfVar from_stack_1.global_68
  loc_AA313E: LdPrVar
  loc_AA3140: LateMemCall
  loc_AA3146: FFree1Str var_B0
  loc_AA3149: FFree1Var var_D4 = ""
  loc_AA314C: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AA314F: FLdPr Me
  loc_AA3152: MemLdI2 global_96
  loc_AA3155: CI4UI1
  loc_AA3156: FLdPr Me
  loc_AA3159: MemLdStr global_84
  loc_AA315C: Ary1LdPr
  loc_AA315D: MemLdStr global_16
  loc_AA3160: ConcatStr
  loc_AA3161: FStStrNoPop var_B0
  loc_AA3164: LitStr "</td>"
  loc_AA3167: ConcatStr
  loc_AA3168: CVarStr var_D4
  loc_AA316B: PopAdLdVar
  loc_AA316C: FLdPr Me
  loc_AA316F: MemLdRfVar from_stack_1.global_68
  loc_AA3172: LdPrVar
  loc_AA3174: LateMemCall
  loc_AA317A: FFree1Str var_B0
  loc_AA317D: FFree1Var var_D4 = ""
  loc_AA3180: LitVarStr var_9C, "  </tr>"
  loc_AA3185: PopAdLdVar
  loc_AA3186: FLdPr Me
  loc_AA3189: MemLdRfVar from_stack_1.global_68
  loc_AA318C: LdPrVar
  loc_AA318E: LateMemCall
  loc_AA3194: FLdPr Me
  loc_AA3197: MemLdRfVar from_stack_1.global_96
  loc_AA319A: NextI2 var_8C, loc_AA2E83
  loc_AA319F: LitVarStr var_9C, "  <tr><td colspan=""7"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AA31A4: PopAdLdVar
  loc_AA31A5: FLdPr Me
  loc_AA31A8: MemLdRfVar from_stack_1.global_68
  loc_AA31AB: LdPrVar
  loc_AA31AD: LateMemCall
  loc_AA31B3: LitVarStr var_9C, "  <tr>"
  loc_AA31B8: PopAdLdVar
  loc_AA31B9: FLdPr Me
  loc_AA31BC: MemLdRfVar from_stack_1.global_68
  loc_AA31BF: LdPrVar
  loc_AA31C1: LateMemCall
  loc_AA31C7: LitVarStr var_9C, "    <td colspan=""4"" align=""left"">&nbsp;</th>"
  loc_AA31CC: PopAdLdVar
  loc_AA31CD: FLdPr Me
  loc_AA31D0: MemLdRfVar from_stack_1.global_68
  loc_AA31D3: LdPrVar
  loc_AA31D5: LateMemCall
  loc_AA31DB: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AA31E0: PopAdLdVar
  loc_AA31E1: FLdPr Me
  loc_AA31E4: MemLdRfVar from_stack_1.global_68
  loc_AA31E7: LdPrVar
  loc_AA31E9: LateMemCall
  loc_AA31EF: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AA31F2: FLdPr Me
  loc_AA31F5: MemLdStr global_88
  loc_AA31F8: ConcatStr
  loc_AA31F9: FStStrNoPop var_B0
  loc_AA31FC: LitStr "</td>"
  loc_AA31FF: ConcatStr
  loc_AA3200: CVarStr var_D4
  loc_AA3203: PopAdLdVar
  loc_AA3204: FLdPr Me
  loc_AA3207: MemLdRfVar from_stack_1.global_68
  loc_AA320A: LdPrVar
  loc_AA320C: LateMemCall
  loc_AA3212: FFree1Str var_B0
  loc_AA3215: FFree1Var var_D4 = ""
  loc_AA3218: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AA321B: FLdPr Me
  loc_AA321E: MemLdStr global_92
  loc_AA3221: ConcatStr
  loc_AA3222: FStStrNoPop var_B0
  loc_AA3225: LitStr "</td>"
  loc_AA3228: ConcatStr
  loc_AA3229: CVarStr var_D4
  loc_AA322C: PopAdLdVar
  loc_AA322D: FLdPr Me
  loc_AA3230: MemLdRfVar from_stack_1.global_68
  loc_AA3233: LdPrVar
  loc_AA3235: LateMemCall
  loc_AA323B: FFree1Str var_B0
  loc_AA323E: FFree1Var var_D4 = ""
  loc_AA3241: LitVarStr var_9C, "  </tr>"
  loc_AA3246: PopAdLdVar
  loc_AA3247: FLdPr Me
  loc_AA324A: MemLdRfVar from_stack_1.global_68
  loc_AA324D: LdPrVar
  loc_AA324F: LateMemCall
  loc_AA3255: LitVarStr var_9C, "  <tr><td colspan=""7"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AA325A: PopAdLdVar
  loc_AA325B: FLdPr Me
  loc_AA325E: MemLdRfVar from_stack_1.global_68
  loc_AA3261: LdPrVar
  loc_AA3263: LateMemCall
  loc_AA3269: FLdPr Me
  loc_AA326C: MemLdStr global_92
  loc_AA326F: CR8Str
  loc_AA3271: FLdPr Me
  loc_AA3274: MemLdStr global_88
  loc_AA3277: CR8Str
  loc_AA3279: SubR4
  loc_AA327A: CR8R8
  loc_AA327B: LitI2_Byte 0
  loc_AA327D: CR8I2
  loc_AA327E: GtR4
  loc_AA327F: BranchF loc_AA32C5
  loc_AA3282: LitI2_Byte 0
  loc_AA3284: LitVar_Missing var_D4
  loc_AA3287: LitI2_Byte &HFF
  loc_AA3289: FLdPr Me
  loc_AA328C: MemLdStr global_92
  loc_AA328F: CR8Str
  loc_AA3291: FLdPr Me
  loc_AA3294: MemLdStr global_88
  loc_AA3297: CR8Str
  loc_AA3299: SubR4
  loc_AA329A: CVarR8
  loc_AA329E: PopAdLdVar
  loc_AA329F: FLdRfVar var_EC
  loc_AA32A2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA32A7: FFree1Var var_D4 = ""
  loc_AA32AA: LitI2_Byte 0
  loc_AA32AC: LitVar_Missing var_D4
  loc_AA32AF: LitI2_Byte &HFF
  loc_AA32B1: LitVarStr var_9C, "0"
  loc_AA32B6: PopAdLdVar
  loc_AA32B7: FLdRfVar var_F0
  loc_AA32BA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA32BF: FFree1Var var_D4 = ""
  loc_AA32C2: Branch loc_AA3305
  loc_AA32C5: LitI2_Byte 0
  loc_AA32C7: LitVar_Missing var_D4
  loc_AA32CA: LitI2_Byte &HFF
  loc_AA32CC: FLdPr Me
  loc_AA32CF: MemLdStr global_88
  loc_AA32D2: CR8Str
  loc_AA32D4: FLdPr Me
  loc_AA32D7: MemLdStr global_92
  loc_AA32DA: CR8Str
  loc_AA32DC: SubR4
  loc_AA32DD: CVarR8
  loc_AA32E1: PopAdLdVar
  loc_AA32E2: FLdRfVar var_F0
  loc_AA32E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA32EA: FFree1Var var_D4 = ""
  loc_AA32ED: LitI2_Byte 0
  loc_AA32EF: LitVar_Missing var_D4
  loc_AA32F2: LitI2_Byte &HFF
  loc_AA32F4: LitVarStr var_9C, "0"
  loc_AA32F9: PopAdLdVar
  loc_AA32FA: FLdRfVar var_EC
  loc_AA32FD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA3302: FFree1Var var_D4 = ""
  loc_AA3305: Call Proc_246_23_9815F0()
  loc_AA330A: FLdPr Me
  loc_AA330D: MemLdRfVar from_stack_1.global_68
  loc_AA3310: LdPrVar
  loc_AA3312: LateMemCall
  loc_AA3318: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AA331D: ExitProcHresult
  loc_AA331E: CopyBytes
End Sub

Private Function Proc_246_22_ACF918() 'ACF918
  'Data Table: 4708B8
  loc_ACF2C8: LitVarStr var_94, "<html>"
  loc_ACF2CD: PopAdLdVar
  loc_ACF2CE: FLdPr Me
  loc_ACF2D1: MemLdRfVar from_stack_1.global_68
  loc_ACF2D4: LdPrVar
  loc_ACF2D6: LateMemCall
  loc_ACF2DC: LitVarStr var_94, "<head>"
  loc_ACF2E1: PopAdLdVar
  loc_ACF2E2: FLdPr Me
  loc_ACF2E5: MemLdRfVar from_stack_1.global_68
  loc_ACF2E8: LdPrVar
  loc_ACF2EA: LateMemCall
  loc_ACF2F0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ACF2F5: PopAdLdVar
  loc_ACF2F6: FLdPr Me
  loc_ACF2F9: MemLdRfVar from_stack_1.global_68
  loc_ACF2FC: LdPrVar
  loc_ACF2FE: LateMemCall
  loc_ACF304: LitStr "<title>"
  loc_ACF307: FLdRfVar var_A8
  loc_ACF30A: FLdPr Me
  loc_ACF30D:  = Me.Caption
  loc_ACF312: ILdRf var_A8
  loc_ACF315: ConcatStr
  loc_ACF316: FStStrNoPop var_AC
  loc_ACF319: LitStr "</title>"
  loc_ACF31C: ConcatStr
  loc_ACF31D: CVarStr var_BC
  loc_ACF320: PopAdLdVar
  loc_ACF321: FLdPr Me
  loc_ACF324: MemLdRfVar from_stack_1.global_68
  loc_ACF327: LdPrVar
  loc_ACF329: LateMemCall
  loc_ACF32F: FFreeStr var_A8 = ""
  loc_ACF336: FFree1Var var_BC = ""
  loc_ACF339: LitVarStr var_94, "<style type=""text/css"">"
  loc_ACF33E: PopAdLdVar
  loc_ACF33F: FLdPr Me
  loc_ACF342: MemLdRfVar from_stack_1.global_68
  loc_ACF345: LdPrVar
  loc_ACF347: LateMemCall
  loc_ACF34D: LitVarStr var_94, ".Titulo1 {"
  loc_ACF352: PopAdLdVar
  loc_ACF353: FLdPr Me
  loc_ACF356: MemLdRfVar from_stack_1.global_68
  loc_ACF359: LdPrVar
  loc_ACF35B: LateMemCall
  loc_ACF361: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACF366: PopAdLdVar
  loc_ACF367: FLdPr Me
  loc_ACF36A: MemLdRfVar from_stack_1.global_68
  loc_ACF36D: LdPrVar
  loc_ACF36F: LateMemCall
  loc_ACF375: LitVarStr var_94, " font-size: 18px;"
  loc_ACF37A: PopAdLdVar
  loc_ACF37B: FLdPr Me
  loc_ACF37E: MemLdRfVar from_stack_1.global_68
  loc_ACF381: LdPrVar
  loc_ACF383: LateMemCall
  loc_ACF389: LitVarStr var_94, " font-weight: bold;"
  loc_ACF38E: PopAdLdVar
  loc_ACF38F: FLdPr Me
  loc_ACF392: MemLdRfVar from_stack_1.global_68
  loc_ACF395: LdPrVar
  loc_ACF397: LateMemCall
  loc_ACF39D: LitVarStr var_94, "}"
  loc_ACF3A2: PopAdLdVar
  loc_ACF3A3: FLdPr Me
  loc_ACF3A6: MemLdRfVar from_stack_1.global_68
  loc_ACF3A9: LdPrVar
  loc_ACF3AB: LateMemCall
  loc_ACF3B1: LitVarStr var_94, ".Titulo2 {"
  loc_ACF3B6: PopAdLdVar
  loc_ACF3B7: FLdPr Me
  loc_ACF3BA: MemLdRfVar from_stack_1.global_68
  loc_ACF3BD: LdPrVar
  loc_ACF3BF: LateMemCall
  loc_ACF3C5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACF3CA: PopAdLdVar
  loc_ACF3CB: FLdPr Me
  loc_ACF3CE: MemLdRfVar from_stack_1.global_68
  loc_ACF3D1: LdPrVar
  loc_ACF3D3: LateMemCall
  loc_ACF3D9: LitVarStr var_94, " font-size: 14px;"
  loc_ACF3DE: PopAdLdVar
  loc_ACF3DF: FLdPr Me
  loc_ACF3E2: MemLdRfVar from_stack_1.global_68
  loc_ACF3E5: LdPrVar
  loc_ACF3E7: LateMemCall
  loc_ACF3ED: LitVarStr var_94, " font-weight: bold;"
  loc_ACF3F2: PopAdLdVar
  loc_ACF3F3: FLdPr Me
  loc_ACF3F6: MemLdRfVar from_stack_1.global_68
  loc_ACF3F9: LdPrVar
  loc_ACF3FB: LateMemCall
  loc_ACF401: LitVarStr var_94, "}"
  loc_ACF406: PopAdLdVar
  loc_ACF407: FLdPr Me
  loc_ACF40A: MemLdRfVar from_stack_1.global_68
  loc_ACF40D: LdPrVar
  loc_ACF40F: LateMemCall
  loc_ACF415: LitVarStr var_94, ".Normal {"
  loc_ACF41A: PopAdLdVar
  loc_ACF41B: FLdPr Me
  loc_ACF41E: MemLdRfVar from_stack_1.global_68
  loc_ACF421: LdPrVar
  loc_ACF423: LateMemCall
  loc_ACF429: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACF42E: PopAdLdVar
  loc_ACF42F: FLdPr Me
  loc_ACF432: MemLdRfVar from_stack_1.global_68
  loc_ACF435: LdPrVar
  loc_ACF437: LateMemCall
  loc_ACF43D: LitVarStr var_94, " font-size: 14px;"
  loc_ACF442: PopAdLdVar
  loc_ACF443: FLdPr Me
  loc_ACF446: MemLdRfVar from_stack_1.global_68
  loc_ACF449: LdPrVar
  loc_ACF44B: LateMemCall
  loc_ACF451: LitVarStr var_94, " font-style: normal;"
  loc_ACF456: PopAdLdVar
  loc_ACF457: FLdPr Me
  loc_ACF45A: MemLdRfVar from_stack_1.global_68
  loc_ACF45D: LdPrVar
  loc_ACF45F: LateMemCall
  loc_ACF465: LitVarStr var_94, " font-weight: normal;"
  loc_ACF46A: PopAdLdVar
  loc_ACF46B: FLdPr Me
  loc_ACF46E: MemLdRfVar from_stack_1.global_68
  loc_ACF471: LdPrVar
  loc_ACF473: LateMemCall
  loc_ACF479: LitVarStr var_94, " font-variant: normal;"
  loc_ACF47E: PopAdLdVar
  loc_ACF47F: FLdPr Me
  loc_ACF482: MemLdRfVar from_stack_1.global_68
  loc_ACF485: LdPrVar
  loc_ACF487: LateMemCall
  loc_ACF48D: LitVarStr var_94, "}"
  loc_ACF492: PopAdLdVar
  loc_ACF493: FLdPr Me
  loc_ACF496: MemLdRfVar from_stack_1.global_68
  loc_ACF499: LdPrVar
  loc_ACF49B: LateMemCall
  loc_ACF4A1: LitVarStr var_94, ".Encabezado {"
  loc_ACF4A6: PopAdLdVar
  loc_ACF4A7: FLdPr Me
  loc_ACF4AA: MemLdRfVar from_stack_1.global_68
  loc_ACF4AD: LdPrVar
  loc_ACF4AF: LateMemCall
  loc_ACF4B5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ACF4BA: PopAdLdVar
  loc_ACF4BB: FLdPr Me
  loc_ACF4BE: MemLdRfVar from_stack_1.global_68
  loc_ACF4C1: LdPrVar
  loc_ACF4C3: LateMemCall
  loc_ACF4C9: LitVarStr var_94, " font-size: 13px;"
  loc_ACF4CE: PopAdLdVar
  loc_ACF4CF: FLdPr Me
  loc_ACF4D2: MemLdRfVar from_stack_1.global_68
  loc_ACF4D5: LdPrVar
  loc_ACF4D7: LateMemCall
  loc_ACF4DD: LitVarStr var_94, " font-weight: bold;"
  loc_ACF4E2: PopAdLdVar
  loc_ACF4E3: FLdPr Me
  loc_ACF4E6: MemLdRfVar from_stack_1.global_68
  loc_ACF4E9: LdPrVar
  loc_ACF4EB: LateMemCall
  loc_ACF4F1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ACF4F6: PopAdLdVar
  loc_ACF4F7: FLdPr Me
  loc_ACF4FA: MemLdRfVar from_stack_1.global_68
  loc_ACF4FD: LdPrVar
  loc_ACF4FF: LateMemCall
  loc_ACF505: LitVarStr var_94, "}"
  loc_ACF50A: PopAdLdVar
  loc_ACF50B: FLdPr Me
  loc_ACF50E: MemLdRfVar from_stack_1.global_68
  loc_ACF511: LdPrVar
  loc_ACF513: LateMemCall
  loc_ACF519: LitVarStr var_94, ".LineaDato {"
  loc_ACF51E: PopAdLdVar
  loc_ACF51F: FLdPr Me
  loc_ACF522: MemLdRfVar from_stack_1.global_68
  loc_ACF525: LdPrVar
  loc_ACF527: LateMemCall
  loc_ACF52D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACF532: PopAdLdVar
  loc_ACF533: FLdPr Me
  loc_ACF536: MemLdRfVar from_stack_1.global_68
  loc_ACF539: LdPrVar
  loc_ACF53B: LateMemCall
  loc_ACF541: LitVarStr var_94, " font-size: 10px;"
  loc_ACF546: PopAdLdVar
  loc_ACF547: FLdPr Me
  loc_ACF54A: MemLdRfVar from_stack_1.global_68
  loc_ACF54D: LdPrVar
  loc_ACF54F: LateMemCall
  loc_ACF555: LitVarStr var_94, "}"
  loc_ACF55A: PopAdLdVar
  loc_ACF55B: FLdPr Me
  loc_ACF55E: MemLdRfVar from_stack_1.global_68
  loc_ACF561: LdPrVar
  loc_ACF563: LateMemCall
  loc_ACF569: LitVarStr var_94, ".Totales {"
  loc_ACF56E: PopAdLdVar
  loc_ACF56F: FLdPr Me
  loc_ACF572: MemLdRfVar from_stack_1.global_68
  loc_ACF575: LdPrVar
  loc_ACF577: LateMemCall
  loc_ACF57D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACF582: PopAdLdVar
  loc_ACF583: FLdPr Me
  loc_ACF586: MemLdRfVar from_stack_1.global_68
  loc_ACF589: LdPrVar
  loc_ACF58B: LateMemCall
  loc_ACF591: LitVarStr var_94, " font-size: 12px;"
  loc_ACF596: PopAdLdVar
  loc_ACF597: FLdPr Me
  loc_ACF59A: MemLdRfVar from_stack_1.global_68
  loc_ACF59D: LdPrVar
  loc_ACF59F: LateMemCall
  loc_ACF5A5: LitVarStr var_94, " font-weight: bold;"
  loc_ACF5AA: PopAdLdVar
  loc_ACF5AB: FLdPr Me
  loc_ACF5AE: MemLdRfVar from_stack_1.global_68
  loc_ACF5B1: LdPrVar
  loc_ACF5B3: LateMemCall
  loc_ACF5B9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ACF5BE: PopAdLdVar
  loc_ACF5BF: FLdPr Me
  loc_ACF5C2: MemLdRfVar from_stack_1.global_68
  loc_ACF5C5: LdPrVar
  loc_ACF5C7: LateMemCall
  loc_ACF5CD: LitVarStr var_94, "}"
  loc_ACF5D2: PopAdLdVar
  loc_ACF5D3: FLdPr Me
  loc_ACF5D6: MemLdRfVar from_stack_1.global_68
  loc_ACF5D9: LdPrVar
  loc_ACF5DB: LateMemCall
  loc_ACF5E1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ACF5E6: PopAdLdVar
  loc_ACF5E7: FLdPr Me
  loc_ACF5EA: MemLdRfVar from_stack_1.global_68
  loc_ACF5ED: LdPrVar
  loc_ACF5EF: LateMemCall
  loc_ACF5F5: LitVarStr var_94, "</style>"
  loc_ACF5FA: PopAdLdVar
  loc_ACF5FB: FLdPr Me
  loc_ACF5FE: MemLdRfVar from_stack_1.global_68
  loc_ACF601: LdPrVar
  loc_ACF603: LateMemCall
  loc_ACF609: LitI4 0
  loc_ACF60E: FStStrCopy var_AC
  loc_ACF611: FLdRfVar var_AC
  loc_ACF614: LitI4 0
  loc_ACF619: FStStrCopy var_A8
  loc_ACF61C: FLdRfVar var_A8
  loc_ACF61F: LitI2_Byte 0
  loc_ACF621: PopTmpLdAd2 var_BE
  loc_ACF624: FLdPr Me
  loc_ACF627: MemLdRfVar from_stack_1.global_68
  loc_ACF62A: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ACF62F: FFreeStr var_A8 = ""
  loc_ACF636: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ACF63B: PopAdLdVar
  loc_ACF63C: FLdPr Me
  loc_ACF63F: MemLdRfVar from_stack_1.global_68
  loc_ACF642: LdPrVar
  loc_ACF644: LateMemCall
  loc_ACF64A: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ACF64F: PopAdLdVar
  loc_ACF650: FLdPr Me
  loc_ACF653: MemLdRfVar from_stack_1.global_68
  loc_ACF656: LdPrVar
  loc_ACF658: LateMemCall
  loc_ACF65E: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_ACF663: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ACF668: FStVarCopyObj var_BC
  loc_ACF66B: FLdRfVar var_BC
  loc_ACF66E: FLdRfVar var_D0
  loc_ACF671: ImpAdCallFPR4  = Ucase()
  loc_ACF676: FLdRfVar var_D0
  loc_ACF679: ConcatVar var_E0
  loc_ACF67D: LitVarStr var_F0, "</p>"
  loc_ACF682: ConcatVar var_100
  loc_ACF686: PopAdLdVar
  loc_ACF687: FLdPr Me
  loc_ACF68A: MemLdRfVar from_stack_1.global_68
  loc_ACF68D: LdPrVar
  loc_ACF68F: LateMemCall
  loc_ACF695: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ACF6A0: LitStr "    <p align=""center"">"
  loc_ACF6A3: FLdRfVar var_A8
  loc_ACF6A6: FLdPr Me
  loc_ACF6A9:  = Me.Caption
  loc_ACF6AE: ILdRf var_A8
  loc_ACF6B1: ConcatStr
  loc_ACF6B2: FStStrNoPop var_AC
  loc_ACF6B5: LitStr "</p></th>"
  loc_ACF6B8: ConcatStr
  loc_ACF6B9: CVarStr var_BC
  loc_ACF6BC: PopAdLdVar
  loc_ACF6BD: FLdPr Me
  loc_ACF6C0: MemLdRfVar from_stack_1.global_68
  loc_ACF6C3: LdPrVar
  loc_ACF6C5: LateMemCall
  loc_ACF6CB: FFreeStr var_A8 = ""
  loc_ACF6D2: FFree1Var var_BC = ""
  loc_ACF6D5: LitVarStr var_94, "  </tr>"
  loc_ACF6DA: PopAdLdVar
  loc_ACF6DB: FLdPr Me
  loc_ACF6DE: MemLdRfVar from_stack_1.global_68
  loc_ACF6E1: LdPrVar
  loc_ACF6E3: LateMemCall
  loc_ACF6E9: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_ACF6EE: PopAdLdVar
  loc_ACF6EF: FLdPr Me
  loc_ACF6F2: MemLdRfVar from_stack_1.global_68
  loc_ACF6F5: LdPrVar
  loc_ACF6F7: LateMemCall
  loc_ACF6FD: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_ACF702: PopAdLdVar
  loc_ACF703: FLdPr Me
  loc_ACF706: MemLdRfVar from_stack_1.global_68
  loc_ACF709: LdPrVar
  loc_ACF70B: LateMemCall
  loc_ACF711: FLdPr Me
  loc_ACF714: VCallAd Control_ID_mskDesde
  loc_ACF717: FStAdFunc var_114
  loc_ACF71A: FLdPr var_114
  loc_ACF71D: LateIdLdVar var_BC DispID_22 0
  loc_ACF724: CStrVarTmp
  loc_ACF725: FStStrNoPop var_A8
  loc_ACF728: LitStr vbNullString
  loc_ACF72B: NeStr
  loc_ACF72D: FFree1Str var_A8
  loc_ACF730: FFree1Ad var_114
  loc_ACF733: FFree1Var var_BC = ""
  loc_ACF736: BranchF loc_ACF77E
  loc_ACF739: LitStr "         Desde: <span class=""Normal"">"
  loc_ACF73C: FLdPr Me
  loc_ACF73F: VCallAd Control_ID_mskDesde
  loc_ACF742: FStAdFunc var_114
  loc_ACF745: FLdPr var_114
  loc_ACF748: LateIdLdVar var_BC DispID_15 0
  loc_ACF74F: CStrVarTmp
  loc_ACF750: FStStrNoPop var_A8
  loc_ACF753: ConcatStr
  loc_ACF754: FStStrNoPop var_AC
  loc_ACF757: LitStr "</span><br>"
  loc_ACF75A: ConcatStr
  loc_ACF75B: CVarStr var_D0
  loc_ACF75E: PopAdLdVar
  loc_ACF75F: FLdPr Me
  loc_ACF762: MemLdRfVar from_stack_1.global_68
  loc_ACF765: LdPrVar
  loc_ACF767: LateMemCall
  loc_ACF76D: FFreeStr var_A8 = ""
  loc_ACF774: FFree1Ad var_114
  loc_ACF777: FFreeVar var_BC = ""
  loc_ACF77E: FLdPr Me
  loc_ACF781: VCallAd Control_ID_mskHasta
  loc_ACF784: FStAdFunc var_114
  loc_ACF787: FLdPr var_114
  loc_ACF78A: LateIdLdVar var_BC DispID_22 0
  loc_ACF791: CStrVarTmp
  loc_ACF792: FStStrNoPop var_A8
  loc_ACF795: LitStr vbNullString
  loc_ACF798: NeStr
  loc_ACF79A: FFree1Str var_A8
  loc_ACF79D: FFree1Ad var_114
  loc_ACF7A0: FFree1Var var_BC = ""
  loc_ACF7A3: BranchF loc_ACF7EB
  loc_ACF7A6: LitStr "         Hasta: <span class=""Normal"">"
  loc_ACF7A9: FLdPr Me
  loc_ACF7AC: VCallAd Control_ID_mskHasta
  loc_ACF7AF: FStAdFunc var_114
  loc_ACF7B2: FLdPr var_114
  loc_ACF7B5: LateIdLdVar var_BC DispID_15 0
  loc_ACF7BC: CStrVarTmp
  loc_ACF7BD: FStStrNoPop var_A8
  loc_ACF7C0: ConcatStr
  loc_ACF7C1: FStStrNoPop var_AC
  loc_ACF7C4: LitStr "</span>"
  loc_ACF7C7: ConcatStr
  loc_ACF7C8: CVarStr var_D0
  loc_ACF7CB: PopAdLdVar
  loc_ACF7CC: FLdPr Me
  loc_ACF7CF: MemLdRfVar from_stack_1.global_68
  loc_ACF7D2: LdPrVar
  loc_ACF7D4: LateMemCall
  loc_ACF7DA: FFreeStr var_A8 = ""
  loc_ACF7E1: FFree1Ad var_114
  loc_ACF7E4: FFreeVar var_BC = ""
  loc_ACF7EB: LitVarStr var_94, "   </th>"
  loc_ACF7F0: PopAdLdVar
  loc_ACF7F1: FLdPr Me
  loc_ACF7F4: MemLdRfVar from_stack_1.global_68
  loc_ACF7F7: LdPrVar
  loc_ACF7F9: LateMemCall
  loc_ACF7FF: LitVarStr var_94, "  </tr>"
  loc_ACF804: PopAdLdVar
  loc_ACF805: FLdPr Me
  loc_ACF808: MemLdRfVar from_stack_1.global_68
  loc_ACF80B: LdPrVar
  loc_ACF80D: LateMemCall
  loc_ACF813: LitVarStr var_94, "</table>"
  loc_ACF818: PopAdLdVar
  loc_ACF819: FLdPr Me
  loc_ACF81C: MemLdRfVar from_stack_1.global_68
  loc_ACF81F: LdPrVar
  loc_ACF821: LateMemCall
  loc_ACF827: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ACF82C: PopAdLdVar
  loc_ACF82D: FLdPr Me
  loc_ACF830: MemLdRfVar from_stack_1.global_68
  loc_ACF833: LdPrVar
  loc_ACF835: LateMemCall
  loc_ACF83B: LitVarStr var_94, "  <THEAD>"
  loc_ACF840: PopAdLdVar
  loc_ACF841: FLdPr Me
  loc_ACF844: MemLdRfVar from_stack_1.global_68
  loc_ACF847: LdPrVar
  loc_ACF849: LateMemCall
  loc_ACF84F: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ACF854: PopAdLdVar
  loc_ACF855: FLdPr Me
  loc_ACF858: MemLdRfVar from_stack_1.global_68
  loc_ACF85B: LdPrVar
  loc_ACF85D: LateMemCall
  loc_ACF863: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_ACF868: PopAdLdVar
  loc_ACF869: FLdPr Me
  loc_ACF86C: MemLdRfVar from_stack_1.global_68
  loc_ACF86F: LdPrVar
  loc_ACF871: LateMemCall
  loc_ACF877: LitVarStr var_94, "    <th>Fecha</th>"
  loc_ACF87C: PopAdLdVar
  loc_ACF87D: FLdPr Me
  loc_ACF880: MemLdRfVar from_stack_1.global_68
  loc_ACF883: LdPrVar
  loc_ACF885: LateMemCall
  loc_ACF88B: LitVarStr var_94, "    <th>Banco</th>"
  loc_ACF890: PopAdLdVar
  loc_ACF891: FLdPr Me
  loc_ACF894: MemLdRfVar from_stack_1.global_68
  loc_ACF897: LdPrVar
  loc_ACF899: LateMemCall
  loc_ACF89F: LitVarStr var_94, "    <th>Nº movim.</th>"
  loc_ACF8A4: PopAdLdVar
  loc_ACF8A5: FLdPr Me
  loc_ACF8A8: MemLdRfVar from_stack_1.global_68
  loc_ACF8AB: LdPrVar
  loc_ACF8AD: LateMemCall
  loc_ACF8B3: LitVarStr var_94, "    <th>Tipo de movim.</th>"
  loc_ACF8B8: PopAdLdVar
  loc_ACF8B9: FLdPr Me
  loc_ACF8BC: MemLdRfVar from_stack_1.global_68
  loc_ACF8BF: LdPrVar
  loc_ACF8C1: LateMemCall
  loc_ACF8C7: LitVarStr var_94, "    <th>D E B E</th>"
  loc_ACF8CC: PopAdLdVar
  loc_ACF8CD: FLdPr Me
  loc_ACF8D0: MemLdRfVar from_stack_1.global_68
  loc_ACF8D3: LdPrVar
  loc_ACF8D5: LateMemCall
  loc_ACF8DB: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_ACF8E0: PopAdLdVar
  loc_ACF8E1: FLdPr Me
  loc_ACF8E4: MemLdRfVar from_stack_1.global_68
  loc_ACF8E7: LdPrVar
  loc_ACF8E9: LateMemCall
  loc_ACF8EF: LitVarStr var_94, "  </tr>"
  loc_ACF8F4: PopAdLdVar
  loc_ACF8F5: FLdPr Me
  loc_ACF8F8: MemLdRfVar from_stack_1.global_68
  loc_ACF8FB: LdPrVar
  loc_ACF8FD: LateMemCall
  loc_ACF903: LitVarStr var_94, "  </THEAD>"
  loc_ACF908: PopAdLdVar
  loc_ACF909: FLdPr Me
  loc_ACF90C: MemLdRfVar from_stack_1.global_68
  loc_ACF90F: LdPrVar
  loc_ACF911: LateMemCall
  loc_ACF917: ExitProcHresult
End Function

Private Function Proc_246_23_9815F0() '9815F0
  'Data Table: 4708B8
  loc_9815B0: LitVarStr var_94, "</table>"
  loc_9815B5: PopAdLdVar
  loc_9815B6: FLdPr Me
  loc_9815B9: MemLdRfVar from_stack_1.global_68
  loc_9815BC: LdPrVar
  loc_9815BE: LateMemCall
  loc_9815C4: LitVarStr var_94, "</body>"
  loc_9815C9: PopAdLdVar
  loc_9815CA: FLdPr Me
  loc_9815CD: MemLdRfVar from_stack_1.global_68
  loc_9815D0: LdPrVar
  loc_9815D2: LateMemCall
  loc_9815D8: LitVarStr var_94, "</html>"
  loc_9815DD: PopAdLdVar
  loc_9815DE: FLdPr Me
  loc_9815E1: MemLdRfVar from_stack_1.global_68
  loc_9815E4: LdPrVar
  loc_9815E6: LateMemCall
  loc_9815EC: ExitProcHresult
End Function
