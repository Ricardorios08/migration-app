VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptUltimoNumerodeCheque
  Caption = "Último Número de Cheque"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptUltimoNumerodeCheque.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6450
  ClientHeight = 3015
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2760
    Width = 6450
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptUltimoNumerodeCheque.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptUltimoNumerodeCheque.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptUltimoNumerodeCheque.frx":0B9C
    Left = 3960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
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
    Width = 6255
    Height = 1455
    TabIndex = 0
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 5
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 240
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 480
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
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
    OleObjectBlob = "rptUltimoNumerodeCheque.frx":0C00
  End
End

Attribute VB_Name = "rptUltimoNumerodeCheque"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() '97BC5C
  'Data Table: 438AF4
  loc_97BC2C: LitVarStr var_94, "Cerrando..."
  loc_97BC31: PopAdLdVar
  loc_97BC32: FLdPr Me
  loc_97BC35: VCallAd Control_ID_statusBar
  loc_97BC38: FStAdFunc var_A8
  loc_97BC3B: FLdPr var_A8
  loc_97BC3E: LateIdSt
  loc_97BC43: FFree1Ad var_A8
  loc_97BC46: ILdRf Me
  loc_97BC49: FStAdNoPop
  loc_97BC4D: ImpAdLdRf MemVar_C44F9C
  loc_97BC50: NewIfNullPr Me
  loc_97BC53: Me.Global.Unload from_stack_1
  loc_97BC58: FFree1Ad var_A8
  loc_97BC5B: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B6D54
  'Data Table: 438AF4
  loc_9B6CAC: FLdRfVar var_8C
  loc_9B6CAF: FLdPr Me
  loc_9B6CB2: VCallAd Control_ID_cboPeriodo
  loc_9B6CB5: FStAdFunc var_88
  loc_9B6CB8: FLdPr var_88
  loc_9B6CBB:  = Me.Text
  loc_9B6CC0: FLdRfVar var_92
  loc_9B6CC3: FLdPr Me
  loc_9B6CC6: VCallAd Control_ID_cboMes
  loc_9B6CC9: FStAdFunc var_90
  loc_9B6CCC: FLdPr var_90
  loc_9B6CCF:  = Me.ListIndex
  loc_9B6CD4: FLdRfVar var_9C
  loc_9B6CD7: FLdI2 var_92
  loc_9B6CDA: FLdPr Me
  loc_9B6CDD: VCallAd Control_ID_cboMes
  loc_9B6CE0: FStAdFunc var_98
  loc_9B6CE3: FLdPr var_98
  loc_9B6CE6:  = Me.ItemData
  loc_9B6CEB: ILdRf var_9C
  loc_9B6CEE: CUI1I4
  loc_9B6CF0: ILdRf var_8C
  loc_9B6CF3: CI2Str
  loc_9B6CF5: ImpAdCallI2 Proc_266_31_9BB10C(, )
  loc_9B6CFA: FStStrNoPop var_A0
  loc_9B6CFD: FLdPr Me
  loc_9B6D00: MemStStrCopy
  loc_9B6D04: FFreeStr var_8C = ""
  loc_9B6D0B: FFreeAd var_88 = "": var_90 = ""
  loc_9B6D14: FLdPr Me
  loc_9B6D17: VCallAd Control_ID_cboMes
  loc_9B6D1A: FStAdFunc var_A4
  loc_9B6D1D: LitNothing
  loc_9B6D1F: CastAd
  loc_9B6D22: FStAdFunc var_98
  loc_9B6D25: FLdRfVar var_98
  loc_9B6D28: FLdZeroAd var_A4
  loc_9B6D2B: FStAdFuncNoPop
  loc_9B6D2E: CastAd
  loc_9B6D31: FStAdFunc var_90
  loc_9B6D34: FLdRfVar var_90
  loc_9B6D37: FLdPr Me
  loc_9B6D3A: MemLdRfVar from_stack_1.global_88
  loc_9B6D3D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B6D42: IStI2 Cancel
  loc_9B6D45: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B6D50: ExitProcHresult
  loc_9B6D51: VCallAd Control_ID_
End Sub

Private Sub cmdNueva_Click() '9A70B0
  'Data Table: 438AF4
  loc_9A702C: LitI2_Byte 0
  loc_9A702E: FLdPr Me
  loc_9A7031: MemStI2 bGenerado
  loc_9A7034: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A7039: ImpAdLdI2 MemVar_C3D064
  loc_9A703C: CStrUI1
  loc_9A703E: FStStrNoPop var_88
  loc_9A7041: FLdPr Me
  loc_9A7044: VCallAd Control_ID_cboPeriodo
  loc_9A7047: FStAdFunc var_8C
  loc_9A704A: FLdPr var_8C
  loc_9A704D: Me.Text = from_stack_1
  loc_9A7052: FFree1Str var_88
  loc_9A7055: FFree1Ad var_8C
  loc_9A7058: LitI2_Byte 0
  loc_9A705A: PopTmpLdAd2 var_8E
  loc_9A705D: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9A7062: CVarDate var_B0
  loc_9A7066: FLdRfVar var_C0
  loc_9A7069: ImpAdCallFPR4  = Month()
  loc_9A706E: FLdRfVar var_C0
  loc_9A7071: LitVarI2 var_D0, 1
  loc_9A7076: SubVar var_E0
  loc_9A707A: CI2Var
  loc_9A707B: FLdPr Me
  loc_9A707E: VCallAd Control_ID_cboMes
  loc_9A7081: FStAdFunc var_8C
  loc_9A7084: FLdPr var_8C
  loc_9A7087: Me.ListIndex = from_stack_1
  loc_9A708C: FFree1Ad var_8C
  loc_9A708F: FFreeVar var_B0 = ""
  loc_9A7096: Call HabilitarCriterio()
  loc_9A709B: ILdRf Me
  loc_9A709E: CastAd
  loc_9A70A1: FStAdFunc var_8C
  loc_9A70A4: FLdRfVar var_8C
  loc_9A70A7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A70AC: FFree1Ad var_8C
  loc_9A70AF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '954D74
  'Data Table: 438AF4
  loc_954D5C: ILdRf Me
  loc_954D5F: CastAd
  loc_954D62: FStAdFunc var_88
  loc_954D65: FLdRfVar var_88
  loc_954D68: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_954D6D: FFree1Ad var_88
  loc_954D70: ExitProcHresult
  loc_954D71: AddR8
  loc_954D72: DOC
End Sub

Private Sub cmdPdf_Click() '959890
  'Data Table: 438AF4
  loc_959878: LitI2_Byte 0
  loc_95987A: ILdRf Me
  loc_95987D: CastAd
  loc_959880: FStAdFunc var_88
  loc_959883: FLdRfVar var_88
  loc_959886: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95988B: FFree1Ad var_88
  loc_95988E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B2C4
  'Data Table: 438AF4
  loc_98B28C: FLdPr Me
  loc_98B28F: VCallAd Control_ID_statusBar
  loc_98B292: FStAdFunc var_88
  loc_98B295: FLdPr var_88
  loc_98B298: LateIdLdVar var_98 DispID_1 0
  loc_98B29F: CStrVarTmp
  loc_98B2A0: CVarStr var_A8
  loc_98B2A3: PopAdLdVar
  loc_98B2A4: FLdPr Me
  loc_98B2A7: VCallAd Control_ID_statusBar
  loc_98B2AA: FStAdFunc var_BC
  loc_98B2AD: FLdPr var_BC
  loc_98B2B0: LateIdSt
  loc_98B2B5: FFreeAd var_88 = ""
  loc_98B2BC: FFreeVar var_98 = ""
  loc_98B2C3: ExitProcHresult
End Sub

Private Sub Form_Load() 'A06DBC
  'Data Table: 438AF4
  loc_A06C64: ILdRf Me
  loc_A06C67: CastAd
  loc_A06C6A: FStAdFunc var_8C
  loc_A06C6D: FLdRfVar var_8C
  loc_A06C70: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A06C75: FFree1Ad var_8C
  loc_A06C78: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A06C7B: FLdRfVar var_88
  loc_A06C7E: NewIfNullPr clsperiodo
  loc_A06C81: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A06C86: FLdRfVar var_90
  loc_A06C89: FLdRfVar var_88
  loc_A06C8C: NewIfNullPr clsperiodo
  loc_A06C8F: from_stack_1 = clsperiodo.RecordCount
  loc_A06C94: ILdRf var_90
  loc_A06C97: LitI4 0
  loc_A06C9C: GtI4
  loc_A06C9D: BranchF loc_A06D30
  loc_A06CA0: FLdRfVar var_88
  loc_A06CA3: NewIfNullPr clsperiodo
  loc_A06CA6: Call clsperiodo.MoveFirst()
  loc_A06CAB: FLdRfVar var_92
  loc_A06CAE: FLdRfVar var_88
  loc_A06CB1: NewIfNullPr clsperiodo
  loc_A06CB4: from_stack_1 = clsperiodo.EOF
  loc_A06CB9: FLdI2 var_92
  loc_A06CBC: NotI4
  loc_A06CBD: BranchF loc_A06D30
  loc_A06CC0: LitVar_Missing var_D0
  loc_A06CC3: PopAdLdVar
  loc_A06CC4: FLdRfVar var_BC
  loc_A06CC7: FLdRfVar var_AC
  loc_A06CCA: LitVarStr var_A8, "PeriInfo"
  loc_A06CCF: PopAdLdVar
  loc_A06CD0: FLdRfVar var_98
  loc_A06CD3: FLdRfVar var_8C
  loc_A06CD6: FLdRfVar var_88
  loc_A06CD9: NewIfNullPr clsperiodo
  loc_A06CDC: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A06CE1: FLdPr var_8C
  loc_A06CE4:  = Me.Fields
  loc_A06CE9: FLdPr var_98
  loc_A06CEC: from_stack_2 = Me.Item(from_stack_1)
  loc_A06CF1: FLdPr var_AC
  loc_A06CF4:  = Me.Value
  loc_A06CF9: FLdRfVar var_BC
  loc_A06CFC: CStrVarTmp
  loc_A06CFD: FStStrNoPop var_C0
  loc_A06D00: FLdPr Me
  loc_A06D03: VCallAd Control_ID_cboPeriodo
  loc_A06D06: FStAdFunc var_D4
  loc_A06D09: FLdPr var_D4
  loc_A06D0C: Me.AddItem from_stack_1, from_stack_2
  loc_A06D11: FFree1Str var_C0
  loc_A06D14: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A06D1F: FFree1Var var_BC = ""
  loc_A06D22: FLdRfVar var_88
  loc_A06D25: NewIfNullPr clsperiodo
  loc_A06D28: Call clsperiodo.MoveSiguiente()
  loc_A06D2D: Branch loc_A06CAB
  loc_A06D30: LitI2_Byte 1
  loc_A06D32: CUI1I2
  loc_A06D34: FLdPr Me
  loc_A06D37: MemLdRfVar from_stack_1.global_92
  loc_A06D3A: LitI2_Byte &HC
  loc_A06D3C: CUI1I2
  loc_A06D3E: ForUI1 var_D8
  loc_A06D44: LitVar_Missing var_A8
  loc_A06D47: PopAdLdVar
  loc_A06D48: LitI2_Byte 0
  loc_A06D4A: FLdPr Me
  loc_A06D4D: MemLdUI1 global_92
  loc_A06D51: CI4UI1
  loc_A06D52: ImpAdCallI2 MonthName(, )
  loc_A06D57: FStStrNoPop var_C0
  loc_A06D5A: FLdPr Me
  loc_A06D5D: VCallAd Control_ID_cboMes
  loc_A06D60: FStAdFunc var_8C
  loc_A06D63: FLdPr var_8C
  loc_A06D66: Me.AddItem from_stack_1, from_stack_2
  loc_A06D6B: FFree1Str var_C0
  loc_A06D6E: FFree1Ad var_8C
  loc_A06D71: FLdPr Me
  loc_A06D74: MemLdUI1 global_92
  loc_A06D78: CI4UI1
  loc_A06D79: FLdRfVar var_92
  loc_A06D7C: FLdPr Me
  loc_A06D7F: VCallAd Control_ID_cboMes
  loc_A06D82: FStAdFunc var_8C
  loc_A06D85: FLdPr var_8C
  loc_A06D88:  = Me.NewIndex
  loc_A06D8D: FLdI2 var_92
  loc_A06D90: FLdPr Me
  loc_A06D93: VCallAd Control_ID_cboMes
  loc_A06D96: FStAdFunc var_98
  loc_A06D99: FLdPr var_98
  loc_A06D9C: Me.ItemData = from_stack_1
  loc_A06DA1: FFreeAd var_8C = ""
  loc_A06DA8: FLdPr Me
  loc_A06DAB: MemLdRfVar from_stack_1.global_92
  loc_A06DAE: NextUI1
  loc_A06DB4: Call cmdNueva_Click()
  loc_A06DB9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A508
  'Data Table: 438AF4
  loc_95A4F0: FLdPr Me
  loc_95A4F3: VCallAd Control_ID_wbbReporte
  loc_95A4F6: FStAdFunc var_88
  loc_95A4F9: FLdRfVar var_88
  loc_95A4FC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A501: FFree1Ad var_88
  loc_95A504: ExitProcHresult
  loc_95A505: AryLock
End Sub

Private Sub cmdPrevia_Click() '954DC0
  'Data Table: 438AF4
  loc_954DA8: ILdRf Me
  loc_954DAB: CastAd
  loc_954DAE: FStAdFunc var_88
  loc_954DB1: FLdRfVar var_88
  loc_954DB4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954DB9: FFree1Ad var_88
  loc_954DBC: ExitProcHresult
  loc_954DBD: FStI2 cmdPrevia_ClickDE
End Sub

Public Function bGeneradoGet() '4395F4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '439603
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991A60
  'Data Table: 438AF4
  loc_991A1C: LitI4 0
  loc_991A21: LitI4 1
  loc_991A26: FLdRfVar var_88
  loc_991A29: Redim
  loc_991A33: FLdPr Me
  loc_991A36: VCallAd Control_ID_cboPeriodo
  loc_991A39: CVarAd
  loc_991A3D: ParmAry1St
  loc_991A43: FLdPr Me
  loc_991A46: VCallAd Control_ID_cboMes
  loc_991A49: CVarAd
  loc_991A4D: ParmAry1St
  loc_991A53: FLdRfVar var_88
  loc_991A56: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_991A5B: FLdRfVar var_88
  loc_991A5E: Erase
  loc_991A5F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'ADBD94
  'Data Table: 438AF4
  loc_ADB738: OnErrorGoto loc_ADBD2E
  loc_ADB73B: LitStr vbNullString
  loc_ADB73E: FLdPr Me
  loc_ADB741: MemStStrCopy
  loc_ADB745: LitI2_Byte 0
  loc_ADB747: PopTmpLdAd2 var_86
  loc_ADB74A: Call cboMes_Validate(from_stack_1v)
  loc_ADB74F: FLdPr Me
  loc_ADB752: MemLdStr global_88
  loc_ADB755: LitStr vbNullString
  loc_ADB758: NeStr
  loc_ADB75A: BranchF loc_ADB760
  loc_ADB75D: Branch loc_ADBD05
  loc_ADB760: FLdRfVar var_94
  loc_ADB763: FLdRfVar var_86
  loc_ADB766: FLdPr Me
  loc_ADB769: VCallAd Control_ID_cboMes
  loc_ADB76C: FStAdFunc var_8C
  loc_ADB76F: FLdPr var_8C
  loc_ADB772:  = Me.ListIndex
  loc_ADB777: FLdI2 var_86
  loc_ADB77A: FLdPr Me
  loc_ADB77D: VCallAd Control_ID_cboMes
  loc_ADB780: FStAdFunc var_90
  loc_ADB783: FLdPr var_90
  loc_ADB786:  = Me.ItemData
  loc_ADB78B: ILdRf var_94
  loc_ADB78E: CI2I4
  loc_ADB78F: FLdPr Me
  loc_ADB792: MemStI2 global_94
  loc_ADB795: FFreeAd var_8C = ""
  loc_ADB79C: FLdRfVar var_98
  loc_ADB79F: FLdPr Me
  loc_ADB7A2: VCallAd Control_ID_cboPeriodo
  loc_ADB7A5: FStAdFunc var_8C
  loc_ADB7A8: FLdPr var_8C
  loc_ADB7AB:  = Me.Text
  loc_ADB7B0: ILdRf var_98
  loc_ADB7B3: CI2Str
  loc_ADB7B5: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_ADB7BA: CVarStr var_A8
  loc_ADB7BD: FLdRfVar var_B8
  loc_ADB7C0: ImpAdCallFPR4  = Month()
  loc_ADB7C5: LitVarStr var_118, "Definitivo"
  loc_ADB7CA: FStVarCopyObj var_128
  loc_ADB7CD: FLdRfVar var_128
  loc_ADB7D0: LitVarStr var_F8, "Provisorio"
  loc_ADB7D5: FStVarCopyObj var_108
  loc_ADB7D8: FLdRfVar var_108
  loc_ADB7DB: FLdPr Me
  loc_ADB7DE: MemLdI2 global_94
  loc_ADB7E1: CVarI2 var_C8
  loc_ADB7E4: HardType
  loc_ADB7E5: FLdRfVar var_B8
  loc_ADB7E8: GtVar var_D8
  loc_ADB7EC: FStVar var_E8
  loc_ADB7F0: FLdRfVar var_E8
  loc_ADB7F3: FLdRfVar var_138
  loc_ADB7F6: ImpAdCallFPR4  = IIf(, , )
  loc_ADB7FB: FLdRfVar var_138
  loc_ADB7FE: CStrVarTmp
  loc_ADB7FF: FStStrNoPop var_13C
  loc_ADB802: FLdPr Me
  loc_ADB805: MemStStrCopy
  loc_ADB809: FFreeStr var_98 = ""
  loc_ADB810: FFree1Ad var_8C
  loc_ADB813: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_ADB822: ImpAdLdRf MemVar_C3D03C
  loc_ADB825: CVarRef
  loc_ADB82A: FLdRfVar var_A8
  loc_ADB82D: ImpAdCallFPR4  = Ucase()
  loc_ADB832: LitI4 3
  loc_ADB837: FLdRfVar var_A8
  loc_ADB83A: FLdRfVar var_B8
  loc_ADB83D: ImpAdCallFPR4  = Left(, )
  loc_ADB842: FLdRfVar var_B8
  loc_ADB845: LitVarStr var_F8, "HTC"
  loc_ADB84A: HardType
  loc_ADB84B: EqVar var_D8
  loc_ADB84F: FLdPr Me
  loc_ADB852: MemLdStr global_96
  loc_ADB855: LitStr "Provisorio"
  loc_ADB858: EqStr
  loc_ADB85A: CVarBoolI2 var_118
  loc_ADB85E: AndVar var_E8
  loc_ADB862: CBoolVarNull
  loc_ADB864: FFreeVar var_A8 = "": var_B8 = ""
  loc_ADB86D: BranchF loc_ADB880
  loc_ADB870: LitI4 0
  loc_ADB875: LitStr "La Contabilidad NO se encuentra Cerrada Definitiva. Verifique..."
  loc_ADB878: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADB87D: Branch loc_ADBD05
  loc_ADB880: FLdPr Me
  loc_ADB883: MemLdI2 bGenerado
  loc_ADB886: BranchF loc_ADB88A
  loc_ADB889: ExitProcHresult
  loc_ADB88A: LitVarStr var_C8, "Generando reporte..."
  loc_ADB88F: PopAdLdVar
  loc_ADB890: FLdPr Me
  loc_ADB893: VCallAd Control_ID_statusBar
  loc_ADB896: FStAdFunc var_8C
  loc_ADB899: FLdPr var_8C
  loc_ADB89C: LateIdSt
  loc_ADB8A1: FFree1Ad var_8C
  loc_ADB8A4: LitI4 &HB
  loc_ADB8A9: CI2I4
  loc_ADB8AA: FLdPr Me
  loc_ADB8AD: Me.MousePointer = from_stack_1
  loc_ADB8B2: FLdPr Me
  loc_ADB8B5: MemLdRfVar from_stack_1.global_56
  loc_ADB8B8: NewIfNullAd
  loc_ADB8BB: FStAd var_140 
  loc_ADB8BF: LitStr "SELECT banco.CodiBanc, DetaBanc, NumeBanc, banco.CodiCuco, IFNULL(DetaCuco,'') DetaCuco, FeanBanc"
  loc_ADB8C2: LitStr " , IFNULL(Max(NumeMoba),0) NumeMoba"
  loc_ADB8C5: ConcatStr
  loc_ADB8C6: FStStrNoPop var_98
  loc_ADB8C9: LitStr " FROM banco"
  loc_ADB8CC: ConcatStr
  loc_ADB8CD: FStStrNoPop var_13C
  loc_ADB8D0: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = banco.PeriInfo AND cc.CodiCuco = banco.CodiCuco"
  loc_ADB8D3: ConcatStr
  loc_ADB8D4: FStStrNoPop var_144
  loc_ADB8D7: LitStr " LEFT JOIN movibanco ON movibanco.PeriInfo = banco.PeriInfo AND movibanco.CodiBanc = banco.CodiBanc AND Month(FechMoba) = "
  loc_ADB8DA: ConcatStr
  loc_ADB8DB: FStStrNoPop var_148
  loc_ADB8DE: FLdRfVar var_94
  loc_ADB8E1: FLdRfVar var_86
  loc_ADB8E4: FLdPr Me
  loc_ADB8E7: VCallAd Control_ID_cboMes
  loc_ADB8EA: FStAdFunc var_8C
  loc_ADB8ED: FLdPr var_8C
  loc_ADB8F0:  = Me.ListIndex
  loc_ADB8F5: FLdI2 var_86
  loc_ADB8F8: FLdPr Me
  loc_ADB8FB: VCallAd Control_ID_cboMes
  loc_ADB8FE: FStAdFunc var_90
  loc_ADB901: FLdPr var_90
  loc_ADB904:  = Me.ItemData
  loc_ADB909: ILdRf var_94
  loc_ADB90C: CStrI4
  loc_ADB90E: FStStrNoPop var_14C
  loc_ADB911: ConcatStr
  loc_ADB912: FStStrNoPop var_150
  loc_ADB915: LitStr " AND CodiTimb < 5"
  loc_ADB918: ConcatStr
  loc_ADB919: FStStrNoPop var_154
  loc_ADB91C: LitStr " WHERE banco.PeriInfo = "
  loc_ADB91F: ConcatStr
  loc_ADB920: FStStrNoPop var_160
  loc_ADB923: FLdRfVar var_15C
  loc_ADB926: FLdPr Me
  loc_ADB929: VCallAd Control_ID_cboPeriodo
  loc_ADB92C: FStAdFunc var_158
  loc_ADB92F: FLdPr var_158
  loc_ADB932:  = Me.Text
  loc_ADB937: ILdRf var_15C
  loc_ADB93A: ConcatStr
  loc_ADB93B: FStStrNoPop var_164
  loc_ADB93E: LitStr " GROUP BY CodiBanc;"
  loc_ADB941: ConcatStr
  loc_ADB942: FStStrNoPop var_168
  loc_ADB945: FLdPr var_140
  loc_ADB948: Call clsbanco.RedefineRS(from_stack_1v)
  loc_ADB94D: FFreeStr var_98 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_160 = "": var_15C = "": var_164 = ""
  loc_ADB966: FFreeAd var_8C = "": var_90 = ""
  loc_ADB96F: FLdRfVar var_94
  loc_ADB972: FLdPr var_140
  loc_ADB975: from_stack_1 = clsbanco.RecordCount
  loc_ADB97A: ILdRf var_94
  loc_ADB97D: LitI4 0
  loc_ADB982: EqI4
  loc_ADB983: BranchF loc_ADB996
  loc_ADB986: LitI4 0
  loc_ADB98B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_ADB98E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADB993: Branch loc_ADBD05
  loc_ADB996: FLdPr var_140
  loc_ADB999: Call clsbanco.MoveFirst()
  loc_ADB99E: LitI4 0
  loc_ADB9A3: FLdRfVar var_94
  loc_ADB9A6: FLdPr var_140
  loc_ADB9A9: from_stack_1 = clsbanco.RecordCount
  loc_ADB9AE: ILdRf var_94
  loc_ADB9B1: FLdPr Me
  loc_ADB9B4: MemLdRfVar from_stack_1.global_80
  loc_ADB9B7: Redim
  loc_ADB9C1: LitI2_Byte 1
  loc_ADB9C3: FLdPr Me
  loc_ADB9C6: MemLdRfVar from_stack_1.global_84
  loc_ADB9C9: FLdPr Me
  loc_ADB9CC: MemLdStr global_80
  loc_ADB9CF: LitI2_Byte 1
  loc_ADB9D1: FnUBound
  loc_ADB9D3: CI2I4
  loc_ADB9D4: ForI2 var_16C
  loc_ADB9DA: FLdRfVar var_158
  loc_ADB9DD: LitVarStr var_C8, "CodiBanc"
  loc_ADB9E2: PopAdLdVar
  loc_ADB9E3: FLdRfVar var_90
  loc_ADB9E6: FLdRfVar var_8C
  loc_ADB9E9: FLdPr var_140
  loc_ADB9EC: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADB9F1: FLdPr var_8C
  loc_ADB9F4:  = Me.Fields
  loc_ADB9F9: FLdPr var_90
  loc_ADB9FC: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBA01: LitI2_Byte 0
  loc_ADBA03: LitVar_Missing var_B8
  loc_ADBA06: LitI2_Byte 0
  loc_ADBA08: FLdZeroAd var_158
  loc_ADBA0B: CVarAd
  loc_ADBA0F: PopAdLdVar
  loc_ADBA10: FLdPr Me
  loc_ADBA13: MemLdI2 global_84
  loc_ADBA16: CI4UI1
  loc_ADBA17: FLdPr Me
  loc_ADBA1A: MemLdStr global_80
  loc_ADBA1D: AryLock
  loc_ADBA20: Ary1LdPr
  loc_ADBA21: MemLdRfVar from_stack_1.global_0
  loc_ADBA24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBA29: AryUnlock
  loc_ADBA2C: FFreeAd var_8C = ""
  loc_ADBA33: FFreeVar var_A8 = ""
  loc_ADBA3A: FLdRfVar var_158
  loc_ADBA3D: LitVarStr var_C8, "DetaBanc"
  loc_ADBA42: PopAdLdVar
  loc_ADBA43: FLdRfVar var_90
  loc_ADBA46: FLdRfVar var_8C
  loc_ADBA49: FLdPr var_140
  loc_ADBA4C: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBA51: FLdPr var_8C
  loc_ADBA54:  = Me.Fields
  loc_ADBA59: FLdPr var_90
  loc_ADBA5C: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBA61: LitI2_Byte 0
  loc_ADBA63: LitVar_Missing var_B8
  loc_ADBA66: LitI2_Byte 0
  loc_ADBA68: FLdZeroAd var_158
  loc_ADBA6B: CVarAd
  loc_ADBA6F: PopAdLdVar
  loc_ADBA70: FLdPr Me
  loc_ADBA73: MemLdI2 global_84
  loc_ADBA76: CI4UI1
  loc_ADBA77: FLdPr Me
  loc_ADBA7A: MemLdStr global_80
  loc_ADBA7D: AryLock
  loc_ADBA80: Ary1LdPr
  loc_ADBA81: MemLdRfVar from_stack_1.global_4
  loc_ADBA84: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBA89: AryUnlock
  loc_ADBA8C: FFreeAd var_8C = ""
  loc_ADBA93: FFreeVar var_A8 = ""
  loc_ADBA9A: FLdRfVar var_158
  loc_ADBA9D: LitVarStr var_C8, "NumeBanc"
  loc_ADBAA2: PopAdLdVar
  loc_ADBAA3: FLdRfVar var_90
  loc_ADBAA6: FLdRfVar var_8C
  loc_ADBAA9: FLdPr var_140
  loc_ADBAAC: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBAB1: FLdPr var_8C
  loc_ADBAB4:  = Me.Fields
  loc_ADBAB9: FLdPr var_90
  loc_ADBABC: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBAC1: LitI2_Byte 0
  loc_ADBAC3: LitVar_Missing var_B8
  loc_ADBAC6: LitI2_Byte 0
  loc_ADBAC8: FLdZeroAd var_158
  loc_ADBACB: CVarAd
  loc_ADBACF: PopAdLdVar
  loc_ADBAD0: FLdPr Me
  loc_ADBAD3: MemLdI2 global_84
  loc_ADBAD6: CI4UI1
  loc_ADBAD7: FLdPr Me
  loc_ADBADA: MemLdStr global_80
  loc_ADBADD: AryLock
  loc_ADBAE0: Ary1LdPr
  loc_ADBAE1: MemLdRfVar from_stack_1.global_8
  loc_ADBAE4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBAE9: AryUnlock
  loc_ADBAEC: FFreeAd var_8C = ""
  loc_ADBAF3: FFreeVar var_A8 = ""
  loc_ADBAFA: FLdRfVar var_158
  loc_ADBAFD: LitVarStr var_C8, "CodiCuco"
  loc_ADBB02: PopAdLdVar
  loc_ADBB03: FLdRfVar var_90
  loc_ADBB06: FLdRfVar var_8C
  loc_ADBB09: FLdPr var_140
  loc_ADBB0C: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBB11: FLdPr var_8C
  loc_ADBB14:  = Me.Fields
  loc_ADBB19: FLdPr var_90
  loc_ADBB1C: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBB21: LitI2_Byte 0
  loc_ADBB23: LitVar_Missing var_B8
  loc_ADBB26: LitI2_Byte 0
  loc_ADBB28: FLdZeroAd var_158
  loc_ADBB2B: CVarAd
  loc_ADBB2F: PopAdLdVar
  loc_ADBB30: FLdPr Me
  loc_ADBB33: MemLdI2 global_84
  loc_ADBB36: CI4UI1
  loc_ADBB37: FLdPr Me
  loc_ADBB3A: MemLdStr global_80
  loc_ADBB3D: AryLock
  loc_ADBB40: Ary1LdPr
  loc_ADBB41: MemLdRfVar from_stack_1.global_12
  loc_ADBB44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBB49: AryUnlock
  loc_ADBB4C: FFreeAd var_8C = ""
  loc_ADBB53: FFreeVar var_A8 = ""
  loc_ADBB5A: FLdRfVar var_158
  loc_ADBB5D: LitVarStr var_C8, "DetaCuco"
  loc_ADBB62: PopAdLdVar
  loc_ADBB63: FLdRfVar var_90
  loc_ADBB66: FLdRfVar var_8C
  loc_ADBB69: FLdPr var_140
  loc_ADBB6C: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBB71: FLdPr var_8C
  loc_ADBB74:  = Me.Fields
  loc_ADBB79: FLdPr var_90
  loc_ADBB7C: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBB81: LitI2_Byte 0
  loc_ADBB83: LitVar_Missing var_B8
  loc_ADBB86: LitI2_Byte 0
  loc_ADBB88: FLdZeroAd var_158
  loc_ADBB8B: CVarAd
  loc_ADBB8F: PopAdLdVar
  loc_ADBB90: FLdPr Me
  loc_ADBB93: MemLdI2 global_84
  loc_ADBB96: CI4UI1
  loc_ADBB97: FLdPr Me
  loc_ADBB9A: MemLdStr global_80
  loc_ADBB9D: AryLock
  loc_ADBBA0: Ary1LdPr
  loc_ADBBA1: MemLdRfVar from_stack_1.global_16
  loc_ADBBA4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBBA9: AryUnlock
  loc_ADBBAC: FFreeAd var_8C = ""
  loc_ADBBB3: FFreeVar var_A8 = ""
  loc_ADBBBA: FLdRfVar var_158
  loc_ADBBBD: LitVarStr var_C8, "FeanBanc"
  loc_ADBBC2: PopAdLdVar
  loc_ADBBC3: FLdRfVar var_90
  loc_ADBBC6: FLdRfVar var_8C
  loc_ADBBC9: FLdPr var_140
  loc_ADBBCC: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBBD1: FLdPr var_8C
  loc_ADBBD4:  = Me.Fields
  loc_ADBBD9: FLdPr var_90
  loc_ADBBDC: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBBE1: LitI2_Byte 0
  loc_ADBBE3: LitVar_Missing var_B8
  loc_ADBBE6: LitI2_Byte 0
  loc_ADBBE8: FLdZeroAd var_158
  loc_ADBBEB: CVarAd
  loc_ADBBEF: PopAdLdVar
  loc_ADBBF0: FLdPr Me
  loc_ADBBF3: MemLdI2 global_84
  loc_ADBBF6: CI4UI1
  loc_ADBBF7: FLdPr Me
  loc_ADBBFA: MemLdStr global_80
  loc_ADBBFD: AryLock
  loc_ADBC00: Ary1LdPr
  loc_ADBC01: MemLdRfVar from_stack_1.global_20
  loc_ADBC04: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBC09: AryUnlock
  loc_ADBC0C: FFreeAd var_8C = ""
  loc_ADBC13: FFreeVar var_A8 = ""
  loc_ADBC1A: FLdRfVar var_A8
  loc_ADBC1D: FLdRfVar var_158
  loc_ADBC20: LitVarStr var_C8, "NumeMoba"
  loc_ADBC25: PopAdLdVar
  loc_ADBC26: FLdRfVar var_90
  loc_ADBC29: FLdRfVar var_8C
  loc_ADBC2C: FLdPr var_140
  loc_ADBC2F: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBC34: FLdPr var_8C
  loc_ADBC37:  = Me.Fields
  loc_ADBC3C: FLdPr var_90
  loc_ADBC3F: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBC44: FLdPr var_158
  loc_ADBC47:  = Me.Value
  loc_ADBC4C: FLdRfVar var_17C
  loc_ADBC4F: LitVarStr var_118, "NumeMoba"
  loc_ADBC54: PopAdLdVar
  loc_ADBC55: FLdRfVar var_178
  loc_ADBC58: FLdRfVar var_174
  loc_ADBC5B: FLdPr var_140
  loc_ADBC5E: from_stack_1v = clsbanco.RsFrmGet()
  loc_ADBC63: FLdPr var_174
  loc_ADBC66:  = Me.Fields
  loc_ADBC6B: FLdPr var_178
  loc_ADBC6E: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBC73: LitVarStr var_18C, "Sin Movim."
  loc_ADBC78: FStVarCopyObj var_108
  loc_ADBC7B: FLdRfVar var_108
  loc_ADBC7E: FLdZeroAd var_17C
  loc_ADBC81: CVarAd
  loc_ADBC85: FLdRfVar var_A8
  loc_ADBC88: LitVarStr var_F8, "0"
  loc_ADBC8D: HardType
  loc_ADBC8E: NeVar var_B8
  loc_ADBC92: FStVar var_D8
  loc_ADBC96: FLdRfVar var_D8
  loc_ADBC99: FLdRfVar var_128
  loc_ADBC9C: ImpAdCallFPR4  = IIf(, , )
  loc_ADBCA1: LitI2_Byte 0
  loc_ADBCA3: LitVar_Missing var_138
  loc_ADBCA6: LitI2_Byte 0
  loc_ADBCA8: FLdVar var_128
  loc_ADBCAC: FLdPr Me
  loc_ADBCAF: MemLdI2 global_84
  loc_ADBCB2: CI4UI1
  loc_ADBCB3: FLdPr Me
  loc_ADBCB6: MemLdStr global_80
  loc_ADBCB9: AryLock
  loc_ADBCBC: Ary1LdPr
  loc_ADBCBD: MemLdRfVar from_stack_1.global_24
  loc_ADBCC0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADBCC5: AryUnlock
  loc_ADBCC8: FFreeAd var_8C = "": var_90 = "": var_158 = "": var_174 = ""
  loc_ADBCD5: FFreeVar var_A8 = "": var_D8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_ADBCE4: FLdPr var_140
  loc_ADBCE7: Call clsbanco.MoveSiguiente()
  loc_ADBCEC: FLdPr Me
  loc_ADBCEF: MemLdRfVar from_stack_1.global_84
  loc_ADBCF2: NextI2 var_16C, loc_ADB9DA
  loc_ADBCF7: LitNothing
  loc_ADBCF9: FStAd var_140 
  loc_ADBCFD: LitI2_Byte &HFF
  loc_ADBCFF: FLdPr Me
  loc_ADBD02: MemStI2 bGenerado
  loc_ADBD05: LitI4 0
  loc_ADBD0A: CI2I4
  loc_ADBD0B: FLdPr Me
  loc_ADBD0E: Me.MousePointer = from_stack_1
  loc_ADBD13: LitVarStr var_C8, vbNullString
  loc_ADBD18: PopAdLdVar
  loc_ADBD19: FLdPr Me
  loc_ADBD1C: VCallAd Control_ID_statusBar
  loc_ADBD1F: FStAdFunc var_8C
  loc_ADBD22: FLdPr var_8C
  loc_ADBD25: LateIdSt
  loc_ADBD2A: FFree1Ad var_8C
  loc_ADBD2D: ExitProcHresult
  loc_ADBD2E: LitI4 0
  loc_ADBD33: LitStr "Error "
  loc_ADBD36: FLdRfVar var_94
  loc_ADBD39: ImpAdCallI2 Err 'rtcErrObj
  loc_ADBD3E: FStAdFunc var_8C
  loc_ADBD41: FLdPr var_8C
  loc_ADBD44:  = Err.Number
  loc_ADBD49: ILdRf var_94
  loc_ADBD4C: CStrI4
  loc_ADBD4E: FStStrNoPop var_98
  loc_ADBD51: ConcatStr
  loc_ADBD52: FStStrNoPop var_13C
  loc_ADBD55: LitStr ": "
  loc_ADBD58: ConcatStr
  loc_ADBD59: FStStrNoPop var_148
  loc_ADBD5C: FLdRfVar var_144
  loc_ADBD5F: ImpAdCallI2 Err 'rtcErrObj
  loc_ADBD64: FStAdFunc var_90
  loc_ADBD67: FLdPr var_90
  loc_ADBD6A:  = Err.Description
  loc_ADBD6F: ILdRf var_144
  loc_ADBD72: ConcatStr
  loc_ADBD73: FStStrNoPop var_14C
  loc_ADBD76: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADBD7B: FFreeStr var_98 = "": var_13C = "": var_148 = "": var_144 = ""
  loc_ADBD88: FFreeAd var_8C = ""
  loc_ADBD8F: ExitProcHresult
  loc_ADBD90: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A2A94C
  'Data Table: 438AF4
  loc_A2A770: FLdRfVar var_88
  loc_A2A773: LitI2_Byte 0
  loc_A2A775: LitI2_Byte &HFF
  loc_A2A777: ImpAdLdI4 MemVar_C3D83C
  loc_A2A77A: FLdPr Me
  loc_A2A77D: MemLdRfVar from_stack_1.global_60
  loc_A2A780: NewIfNullPr IFileSystem3
  loc_A2A783: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2A788: ILdRf var_88
  loc_A2A78B: FLdPr Me
  loc_A2A78E: MemStVarAd
  loc_A2A792: FFree1Ad var_88
  loc_A2A795: Call Proc_250_14_AC3148()
  loc_A2A79A: LitI2_Byte 1
  loc_A2A79C: FLdPr Me
  loc_A2A79F: MemLdRfVar from_stack_1.global_84
  loc_A2A7A2: FLdPr Me
  loc_A2A7A5: MemLdStr global_80
  loc_A2A7A8: LitI2_Byte 1
  loc_A2A7AA: FnUBound
  loc_A2A7AC: CI2I4
  loc_A2A7AD: ForI2 var_8C
  loc_A2A7B3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A2A7B8: PopAdLdVar
  loc_A2A7B9: FLdPr Me
  loc_A2A7BC: MemLdRfVar from_stack_1.global_64
  loc_A2A7BF: LdPrVar
  loc_A2A7C1: LateMemCall
  loc_A2A7C7: FLdPr Me
  loc_A2A7CA: MemLdI2 global_84
  loc_A2A7CD: CI4UI1
  loc_A2A7CE: FLdPr Me
  loc_A2A7D1: MemLdStr global_80
  loc_A2A7D4: AryLock
  loc_A2A7D7: Ary1LdRf
  loc_A2A7D8: FStR4 var_B4
  loc_A2A7DB: LitI4 0
  loc_A2A7E0: LitI4 0
  loc_A2A7E5: LitI2_Byte 0
  loc_A2A7E7: LitStr "right"
  loc_A2A7EA: FMemLdR4 var_B4(0)
  loc_A2A7EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A7F4: CVarStr var_C4
  loc_A2A7F7: PopAdLdVar
  loc_A2A7F8: FLdPr Me
  loc_A2A7FB: MemLdRfVar from_stack_1.global_64
  loc_A2A7FE: LdPrVar
  loc_A2A800: LateMemCall
  loc_A2A806: FFree1Var var_C4 = ""
  loc_A2A809: LitI4 0
  loc_A2A80E: LitI4 0
  loc_A2A813: LitI2_Byte 0
  loc_A2A815: LitStr "left"
  loc_A2A818: FMemLdR4 var_B4(4)
  loc_A2A81D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A822: CVarStr var_C4
  loc_A2A825: PopAdLdVar
  loc_A2A826: FLdPr Me
  loc_A2A829: MemLdRfVar from_stack_1.global_64
  loc_A2A82C: LdPrVar
  loc_A2A82E: LateMemCall
  loc_A2A834: FFree1Var var_C4 = ""
  loc_A2A837: LitI4 0
  loc_A2A83C: LitI4 0
  loc_A2A841: LitI2_Byte 0
  loc_A2A843: LitStr "right"
  loc_A2A846: FMemLdR4 var_B4(8)
  loc_A2A84B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A850: CVarStr var_C4
  loc_A2A853: PopAdLdVar
  loc_A2A854: FLdPr Me
  loc_A2A857: MemLdRfVar from_stack_1.global_64
  loc_A2A85A: LdPrVar
  loc_A2A85C: LateMemCall
  loc_A2A862: FFree1Var var_C4 = ""
  loc_A2A865: LitI4 0
  loc_A2A86A: LitI4 0
  loc_A2A86F: LitI2_Byte 0
  loc_A2A871: LitStr "left"
  loc_A2A874: FMemLdR4 var_B4(12)
  loc_A2A879: LitStr " - "
  loc_A2A87C: ConcatStr
  loc_A2A87D: FStStrNoPop var_C8
  loc_A2A880: FMemLdR4 var_B4(16)
  loc_A2A885: ConcatStr
  loc_A2A886: FStStrNoPop var_CC
  loc_A2A889: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A88E: CVarStr var_C4
  loc_A2A891: PopAdLdVar
  loc_A2A892: FLdPr Me
  loc_A2A895: MemLdRfVar from_stack_1.global_64
  loc_A2A898: LdPrVar
  loc_A2A89A: LateMemCall
  loc_A2A8A0: FFreeStr var_C8 = ""
  loc_A2A8A7: FFree1Var var_C4 = ""
  loc_A2A8AA: LitI4 0
  loc_A2A8AF: LitI4 0
  loc_A2A8B4: LitI2_Byte 0
  loc_A2A8B6: LitStr "center"
  loc_A2A8B9: FMemLdR4 var_B4(20)
  loc_A2A8BE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A8C3: CVarStr var_C4
  loc_A2A8C6: PopAdLdVar
  loc_A2A8C7: FLdPr Me
  loc_A2A8CA: MemLdRfVar from_stack_1.global_64
  loc_A2A8CD: LdPrVar
  loc_A2A8CF: LateMemCall
  loc_A2A8D5: FFree1Var var_C4 = ""
  loc_A2A8D8: LitI4 0
  loc_A2A8DD: LitI4 0
  loc_A2A8E2: LitI2_Byte 0
  loc_A2A8E4: LitStr "right"
  loc_A2A8E7: FMemLdR4 var_B4(24)
  loc_A2A8EC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2A8F1: CVarStr var_C4
  loc_A2A8F4: PopAdLdVar
  loc_A2A8F5: FLdPr Me
  loc_A2A8F8: MemLdRfVar from_stack_1.global_64
  loc_A2A8FB: LdPrVar
  loc_A2A8FD: LateMemCall
  loc_A2A903: FFree1Var var_C4 = ""
  loc_A2A906: LitI4 0
  loc_A2A90B: FStR4 var_B4
  loc_A2A90E: AryUnlock
  loc_A2A911: LitVarStr var_9C, "     </tr>"
  loc_A2A916: PopAdLdVar
  loc_A2A917: FLdPr Me
  loc_A2A91A: MemLdRfVar from_stack_1.global_64
  loc_A2A91D: LdPrVar
  loc_A2A91F: LateMemCall
  loc_A2A925: FLdPr Me
  loc_A2A928: MemLdRfVar from_stack_1.global_84
  loc_A2A92B: NextI2 var_8C, loc_A2A7B3
  loc_A2A930: Call Proc_250_15_983EA0()
  loc_A2A935: FLdPr Me
  loc_A2A938: MemLdRfVar from_stack_1.global_64
  loc_A2A93B: LdPrVar
  loc_A2A93D: LateMemCall
  loc_A2A943: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A2A948: ExitProcHresult
End Sub

Private Function Proc_250_14_AC3148() 'AC3148
  'Data Table: 438AF4
  loc_AC2B50: LitVarStr var_94, "<html>"
  loc_AC2B55: PopAdLdVar
  loc_AC2B56: FLdPr Me
  loc_AC2B59: MemLdRfVar from_stack_1.global_64
  loc_AC2B5C: LdPrVar
  loc_AC2B5E: LateMemCall
  loc_AC2B64: LitVarStr var_94, "<head>"
  loc_AC2B69: PopAdLdVar
  loc_AC2B6A: FLdPr Me
  loc_AC2B6D: MemLdRfVar from_stack_1.global_64
  loc_AC2B70: LdPrVar
  loc_AC2B72: LateMemCall
  loc_AC2B78: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AC2B7D: PopAdLdVar
  loc_AC2B7E: FLdPr Me
  loc_AC2B81: MemLdRfVar from_stack_1.global_64
  loc_AC2B84: LdPrVar
  loc_AC2B86: LateMemCall
  loc_AC2B8C: LitStr "<title>"
  loc_AC2B8F: FLdRfVar var_A8
  loc_AC2B92: FLdPr Me
  loc_AC2B95:  = Me.Caption
  loc_AC2B9A: ILdRf var_A8
  loc_AC2B9D: ConcatStr
  loc_AC2B9E: FStStrNoPop var_AC
  loc_AC2BA1: LitStr "</title>"
  loc_AC2BA4: ConcatStr
  loc_AC2BA5: CVarStr var_BC
  loc_AC2BA8: PopAdLdVar
  loc_AC2BA9: FLdPr Me
  loc_AC2BAC: MemLdRfVar from_stack_1.global_64
  loc_AC2BAF: LdPrVar
  loc_AC2BB1: LateMemCall
  loc_AC2BB7: FFreeStr var_A8 = ""
  loc_AC2BBE: FFree1Var var_BC = ""
  loc_AC2BC1: LitVarStr var_94, "<style type=""text/css"">"
  loc_AC2BC6: PopAdLdVar
  loc_AC2BC7: FLdPr Me
  loc_AC2BCA: MemLdRfVar from_stack_1.global_64
  loc_AC2BCD: LdPrVar
  loc_AC2BCF: LateMemCall
  loc_AC2BD5: LitVarStr var_94, ".Titulo1 {"
  loc_AC2BDA: PopAdLdVar
  loc_AC2BDB: FLdPr Me
  loc_AC2BDE: MemLdRfVar from_stack_1.global_64
  loc_AC2BE1: LdPrVar
  loc_AC2BE3: LateMemCall
  loc_AC2BE9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AC2BEE: PopAdLdVar
  loc_AC2BEF: FLdPr Me
  loc_AC2BF2: MemLdRfVar from_stack_1.global_64
  loc_AC2BF5: LdPrVar
  loc_AC2BF7: LateMemCall
  loc_AC2BFD: LitVarStr var_94, " font-size: 18px;"
  loc_AC2C02: PopAdLdVar
  loc_AC2C03: FLdPr Me
  loc_AC2C06: MemLdRfVar from_stack_1.global_64
  loc_AC2C09: LdPrVar
  loc_AC2C0B: LateMemCall
  loc_AC2C11: LitVarStr var_94, " font-weight: bold;"
  loc_AC2C16: PopAdLdVar
  loc_AC2C17: FLdPr Me
  loc_AC2C1A: MemLdRfVar from_stack_1.global_64
  loc_AC2C1D: LdPrVar
  loc_AC2C1F: LateMemCall
  loc_AC2C25: LitVarStr var_94, "}"
  loc_AC2C2A: PopAdLdVar
  loc_AC2C2B: FLdPr Me
  loc_AC2C2E: MemLdRfVar from_stack_1.global_64
  loc_AC2C31: LdPrVar
  loc_AC2C33: LateMemCall
  loc_AC2C39: LitVarStr var_94, ".Titulo2 {"
  loc_AC2C3E: PopAdLdVar
  loc_AC2C3F: FLdPr Me
  loc_AC2C42: MemLdRfVar from_stack_1.global_64
  loc_AC2C45: LdPrVar
  loc_AC2C47: LateMemCall
  loc_AC2C4D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AC2C52: PopAdLdVar
  loc_AC2C53: FLdPr Me
  loc_AC2C56: MemLdRfVar from_stack_1.global_64
  loc_AC2C59: LdPrVar
  loc_AC2C5B: LateMemCall
  loc_AC2C61: LitVarStr var_94, " font-size: 14px;"
  loc_AC2C66: PopAdLdVar
  loc_AC2C67: FLdPr Me
  loc_AC2C6A: MemLdRfVar from_stack_1.global_64
  loc_AC2C6D: LdPrVar
  loc_AC2C6F: LateMemCall
  loc_AC2C75: LitVarStr var_94, " font-weight: bold;"
  loc_AC2C7A: PopAdLdVar
  loc_AC2C7B: FLdPr Me
  loc_AC2C7E: MemLdRfVar from_stack_1.global_64
  loc_AC2C81: LdPrVar
  loc_AC2C83: LateMemCall
  loc_AC2C89: LitVarStr var_94, "}"
  loc_AC2C8E: PopAdLdVar
  loc_AC2C8F: FLdPr Me
  loc_AC2C92: MemLdRfVar from_stack_1.global_64
  loc_AC2C95: LdPrVar
  loc_AC2C97: LateMemCall
  loc_AC2C9D: LitVarStr var_94, ".Normal {"
  loc_AC2CA2: PopAdLdVar
  loc_AC2CA3: FLdPr Me
  loc_AC2CA6: MemLdRfVar from_stack_1.global_64
  loc_AC2CA9: LdPrVar
  loc_AC2CAB: LateMemCall
  loc_AC2CB1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AC2CB6: PopAdLdVar
  loc_AC2CB7: FLdPr Me
  loc_AC2CBA: MemLdRfVar from_stack_1.global_64
  loc_AC2CBD: LdPrVar
  loc_AC2CBF: LateMemCall
  loc_AC2CC5: LitVarStr var_94, " font-size: 14px;"
  loc_AC2CCA: PopAdLdVar
  loc_AC2CCB: FLdPr Me
  loc_AC2CCE: MemLdRfVar from_stack_1.global_64
  loc_AC2CD1: LdPrVar
  loc_AC2CD3: LateMemCall
  loc_AC2CD9: LitVarStr var_94, " font-style: normal;"
  loc_AC2CDE: PopAdLdVar
  loc_AC2CDF: FLdPr Me
  loc_AC2CE2: MemLdRfVar from_stack_1.global_64
  loc_AC2CE5: LdPrVar
  loc_AC2CE7: LateMemCall
  loc_AC2CED: LitVarStr var_94, " font-weight: normal;"
  loc_AC2CF2: PopAdLdVar
  loc_AC2CF3: FLdPr Me
  loc_AC2CF6: MemLdRfVar from_stack_1.global_64
  loc_AC2CF9: LdPrVar
  loc_AC2CFB: LateMemCall
  loc_AC2D01: LitVarStr var_94, " font-variant: normal;"
  loc_AC2D06: PopAdLdVar
  loc_AC2D07: FLdPr Me
  loc_AC2D0A: MemLdRfVar from_stack_1.global_64
  loc_AC2D0D: LdPrVar
  loc_AC2D0F: LateMemCall
  loc_AC2D15: LitVarStr var_94, "}"
  loc_AC2D1A: PopAdLdVar
  loc_AC2D1B: FLdPr Me
  loc_AC2D1E: MemLdRfVar from_stack_1.global_64
  loc_AC2D21: LdPrVar
  loc_AC2D23: LateMemCall
  loc_AC2D29: LitVarStr var_94, ".Encabezado {"
  loc_AC2D2E: PopAdLdVar
  loc_AC2D2F: FLdPr Me
  loc_AC2D32: MemLdRfVar from_stack_1.global_64
  loc_AC2D35: LdPrVar
  loc_AC2D37: LateMemCall
  loc_AC2D3D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AC2D42: PopAdLdVar
  loc_AC2D43: FLdPr Me
  loc_AC2D46: MemLdRfVar from_stack_1.global_64
  loc_AC2D49: LdPrVar
  loc_AC2D4B: LateMemCall
  loc_AC2D51: LitVarStr var_94, " font-size: 13px;"
  loc_AC2D56: PopAdLdVar
  loc_AC2D57: FLdPr Me
  loc_AC2D5A: MemLdRfVar from_stack_1.global_64
  loc_AC2D5D: LdPrVar
  loc_AC2D5F: LateMemCall
  loc_AC2D65: LitVarStr var_94, " font-weight: bold;"
  loc_AC2D6A: PopAdLdVar
  loc_AC2D6B: FLdPr Me
  loc_AC2D6E: MemLdRfVar from_stack_1.global_64
  loc_AC2D71: LdPrVar
  loc_AC2D73: LateMemCall
  loc_AC2D79: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AC2D7E: PopAdLdVar
  loc_AC2D7F: FLdPr Me
  loc_AC2D82: MemLdRfVar from_stack_1.global_64
  loc_AC2D85: LdPrVar
  loc_AC2D87: LateMemCall
  loc_AC2D8D: LitVarStr var_94, "}"
  loc_AC2D92: PopAdLdVar
  loc_AC2D93: FLdPr Me
  loc_AC2D96: MemLdRfVar from_stack_1.global_64
  loc_AC2D99: LdPrVar
  loc_AC2D9B: LateMemCall
  loc_AC2DA1: LitVarStr var_94, ".LineaDato {"
  loc_AC2DA6: PopAdLdVar
  loc_AC2DA7: FLdPr Me
  loc_AC2DAA: MemLdRfVar from_stack_1.global_64
  loc_AC2DAD: LdPrVar
  loc_AC2DAF: LateMemCall
  loc_AC2DB5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AC2DBA: PopAdLdVar
  loc_AC2DBB: FLdPr Me
  loc_AC2DBE: MemLdRfVar from_stack_1.global_64
  loc_AC2DC1: LdPrVar
  loc_AC2DC3: LateMemCall
  loc_AC2DC9: LitVarStr var_94, " font-size: 10px;"
  loc_AC2DCE: PopAdLdVar
  loc_AC2DCF: FLdPr Me
  loc_AC2DD2: MemLdRfVar from_stack_1.global_64
  loc_AC2DD5: LdPrVar
  loc_AC2DD7: LateMemCall
  loc_AC2DDD: LitVarStr var_94, "}"
  loc_AC2DE2: PopAdLdVar
  loc_AC2DE3: FLdPr Me
  loc_AC2DE6: MemLdRfVar from_stack_1.global_64
  loc_AC2DE9: LdPrVar
  loc_AC2DEB: LateMemCall
  loc_AC2DF1: LitVarStr var_94, ".Totales {"
  loc_AC2DF6: PopAdLdVar
  loc_AC2DF7: FLdPr Me
  loc_AC2DFA: MemLdRfVar from_stack_1.global_64
  loc_AC2DFD: LdPrVar
  loc_AC2DFF: LateMemCall
  loc_AC2E05: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AC2E0A: PopAdLdVar
  loc_AC2E0B: FLdPr Me
  loc_AC2E0E: MemLdRfVar from_stack_1.global_64
  loc_AC2E11: LdPrVar
  loc_AC2E13: LateMemCall
  loc_AC2E19: LitVarStr var_94, " font-size: 12px;"
  loc_AC2E1E: PopAdLdVar
  loc_AC2E1F: FLdPr Me
  loc_AC2E22: MemLdRfVar from_stack_1.global_64
  loc_AC2E25: LdPrVar
  loc_AC2E27: LateMemCall
  loc_AC2E2D: LitVarStr var_94, " font-weight: bold;"
  loc_AC2E32: PopAdLdVar
  loc_AC2E33: FLdPr Me
  loc_AC2E36: MemLdRfVar from_stack_1.global_64
  loc_AC2E39: LdPrVar
  loc_AC2E3B: LateMemCall
  loc_AC2E41: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AC2E46: PopAdLdVar
  loc_AC2E47: FLdPr Me
  loc_AC2E4A: MemLdRfVar from_stack_1.global_64
  loc_AC2E4D: LdPrVar
  loc_AC2E4F: LateMemCall
  loc_AC2E55: LitVarStr var_94, "}"
  loc_AC2E5A: PopAdLdVar
  loc_AC2E5B: FLdPr Me
  loc_AC2E5E: MemLdRfVar from_stack_1.global_64
  loc_AC2E61: LdPrVar
  loc_AC2E63: LateMemCall
  loc_AC2E69: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AC2E6E: PopAdLdVar
  loc_AC2E6F: FLdPr Me
  loc_AC2E72: MemLdRfVar from_stack_1.global_64
  loc_AC2E75: LdPrVar
  loc_AC2E77: LateMemCall
  loc_AC2E7D: LitVarStr var_94, "</style>"
  loc_AC2E82: PopAdLdVar
  loc_AC2E83: FLdPr Me
  loc_AC2E86: MemLdRfVar from_stack_1.global_64
  loc_AC2E89: LdPrVar
  loc_AC2E8B: LateMemCall
  loc_AC2E91: LitI4 0
  loc_AC2E96: FStStrCopy var_AC
  loc_AC2E99: FLdRfVar var_AC
  loc_AC2E9C: LitI4 0
  loc_AC2EA1: FStStrCopy var_A8
  loc_AC2EA4: FLdRfVar var_A8
  loc_AC2EA7: LitI2_Byte 0
  loc_AC2EA9: PopTmpLdAd2 var_BE
  loc_AC2EAC: FLdPr Me
  loc_AC2EAF: MemLdRfVar from_stack_1.global_64
  loc_AC2EB2: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AC2EB7: FFreeStr var_A8 = ""
  loc_AC2EBE: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AC2EC3: PopAdLdVar
  loc_AC2EC4: FLdPr Me
  loc_AC2EC7: MemLdRfVar from_stack_1.global_64
  loc_AC2ECA: LdPrVar
  loc_AC2ECC: LateMemCall
  loc_AC2ED2: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AC2ED7: PopAdLdVar
  loc_AC2ED8: FLdPr Me
  loc_AC2EDB: MemLdRfVar from_stack_1.global_64
  loc_AC2EDE: LdPrVar
  loc_AC2EE0: LateMemCall
  loc_AC2EE6: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AC2EEB: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AC2EF0: FStVarCopyObj var_BC
  loc_AC2EF3: FLdRfVar var_BC
  loc_AC2EF6: FLdRfVar var_D0
  loc_AC2EF9: ImpAdCallFPR4  = Ucase()
  loc_AC2EFE: FLdRfVar var_D0
  loc_AC2F01: ConcatVar var_E0
  loc_AC2F05: LitVarStr var_F0, "</p>"
  loc_AC2F0A: ConcatVar var_100
  loc_AC2F0E: PopAdLdVar
  loc_AC2F0F: FLdPr Me
  loc_AC2F12: MemLdRfVar from_stack_1.global_64
  loc_AC2F15: LdPrVar
  loc_AC2F17: LateMemCall
  loc_AC2F1D: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AC2F28: LitStr "    <p>"
  loc_AC2F2B: FLdRfVar var_A8
  loc_AC2F2E: FLdPr Me
  loc_AC2F31:  = Me.Caption
  loc_AC2F36: ILdRf var_A8
  loc_AC2F39: ConcatStr
  loc_AC2F3A: FStStrNoPop var_AC
  loc_AC2F3D: LitStr "</p></th>"
  loc_AC2F40: ConcatStr
  loc_AC2F41: CVarStr var_BC
  loc_AC2F44: PopAdLdVar
  loc_AC2F45: FLdPr Me
  loc_AC2F48: MemLdRfVar from_stack_1.global_64
  loc_AC2F4B: LdPrVar
  loc_AC2F4D: LateMemCall
  loc_AC2F53: FFreeStr var_A8 = ""
  loc_AC2F5A: FFree1Var var_BC = ""
  loc_AC2F5D: LitVarStr var_94, "  </tr>"
  loc_AC2F62: PopAdLdVar
  loc_AC2F63: FLdPr Me
  loc_AC2F66: MemLdRfVar from_stack_1.global_64
  loc_AC2F69: LdPrVar
  loc_AC2F6B: LateMemCall
  loc_AC2F71: LitVarStr var_94, "  <tr>"
  loc_AC2F76: PopAdLdVar
  loc_AC2F77: FLdPr Me
  loc_AC2F7A: MemLdRfVar from_stack_1.global_64
  loc_AC2F7D: LdPrVar
  loc_AC2F7F: LateMemCall
  loc_AC2F85: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_AC2F8A: PopAdLdVar
  loc_AC2F8B: FLdPr Me
  loc_AC2F8E: MemLdRfVar from_stack_1.global_64
  loc_AC2F91: LdPrVar
  loc_AC2F93: LateMemCall
  loc_AC2F99: LitVarStr var_94, "  </tr>"
  loc_AC2F9E: PopAdLdVar
  loc_AC2F9F: FLdPr Me
  loc_AC2FA2: MemLdRfVar from_stack_1.global_64
  loc_AC2FA5: LdPrVar
  loc_AC2FA7: LateMemCall
  loc_AC2FAD: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AC2FB2: PopAdLdVar
  loc_AC2FB3: FLdPr Me
  loc_AC2FB6: MemLdRfVar from_stack_1.global_64
  loc_AC2FB9: LdPrVar
  loc_AC2FBB: LateMemCall
  loc_AC2FC1: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_AC2FC4: FLdRfVar var_A8
  loc_AC2FC7: FLdPr Me
  loc_AC2FCA: VCallAd Control_ID_cboPeriodo
  loc_AC2FCD: FStAdFunc var_114
  loc_AC2FD0: FLdPr var_114
  loc_AC2FD3:  = Me.Text
  loc_AC2FD8: ILdRf var_A8
  loc_AC2FDB: ConcatStr
  loc_AC2FDC: FStStrNoPop var_AC
  loc_AC2FDF: LitStr "</span></th>"
  loc_AC2FE2: ConcatStr
  loc_AC2FE3: CVarStr var_BC
  loc_AC2FE6: PopAdLdVar
  loc_AC2FE7: FLdPr Me
  loc_AC2FEA: MemLdRfVar from_stack_1.global_64
  loc_AC2FED: LdPrVar
  loc_AC2FEF: LateMemCall
  loc_AC2FF5: FFreeStr var_A8 = ""
  loc_AC2FFC: FFree1Ad var_114
  loc_AC2FFF: FFree1Var var_BC = ""
  loc_AC3002: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_AC3005: FLdRfVar var_A8
  loc_AC3008: FLdPr Me
  loc_AC300B: VCallAd Control_ID_cboMes
  loc_AC300E: FStAdFunc var_114
  loc_AC3011: FLdPr var_114
  loc_AC3014:  = Me.Text
  loc_AC3019: ILdRf var_A8
  loc_AC301C: ConcatStr
  loc_AC301D: FStStrNoPop var_AC
  loc_AC3020: LitStr "</span></th>"
  loc_AC3023: ConcatStr
  loc_AC3024: CVarStr var_BC
  loc_AC3027: PopAdLdVar
  loc_AC3028: FLdPr Me
  loc_AC302B: MemLdRfVar from_stack_1.global_64
  loc_AC302E: LdPrVar
  loc_AC3030: LateMemCall
  loc_AC3036: FFreeStr var_A8 = ""
  loc_AC303D: FFree1Ad var_114
  loc_AC3040: FFree1Var var_BC = ""
  loc_AC3043: LitVarStr var_94, "  </tr>"
  loc_AC3048: PopAdLdVar
  loc_AC3049: FLdPr Me
  loc_AC304C: MemLdRfVar from_stack_1.global_64
  loc_AC304F: LdPrVar
  loc_AC3051: LateMemCall
  loc_AC3057: LitVarStr var_94, "</table>"
  loc_AC305C: PopAdLdVar
  loc_AC305D: FLdPr Me
  loc_AC3060: MemLdRfVar from_stack_1.global_64
  loc_AC3063: LdPrVar
  loc_AC3065: LateMemCall
  loc_AC306B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AC3070: PopAdLdVar
  loc_AC3071: FLdPr Me
  loc_AC3074: MemLdRfVar from_stack_1.global_64
  loc_AC3077: LdPrVar
  loc_AC3079: LateMemCall
  loc_AC307F: LitVarStr var_94, "  <THEAD>"
  loc_AC3084: PopAdLdVar
  loc_AC3085: FLdPr Me
  loc_AC3088: MemLdRfVar from_stack_1.global_64
  loc_AC308B: LdPrVar
  loc_AC308D: LateMemCall
  loc_AC3093: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AC3098: PopAdLdVar
  loc_AC3099: FLdPr Me
  loc_AC309C: MemLdRfVar from_stack_1.global_64
  loc_AC309F: LdPrVar
  loc_AC30A1: LateMemCall
  loc_AC30A7: LitVarStr var_94, "    <th>Código</th>"
  loc_AC30AC: PopAdLdVar
  loc_AC30AD: FLdPr Me
  loc_AC30B0: MemLdRfVar from_stack_1.global_64
  loc_AC30B3: LdPrVar
  loc_AC30B5: LateMemCall
  loc_AC30BB: LitVarStr var_94, "    <th>Detalle</th>"
  loc_AC30C0: PopAdLdVar
  loc_AC30C1: FLdPr Me
  loc_AC30C4: MemLdRfVar from_stack_1.global_64
  loc_AC30C7: LdPrVar
  loc_AC30C9: LateMemCall
  loc_AC30CF: LitVarStr var_94, "    <th>Número</th>"
  loc_AC30D4: PopAdLdVar
  loc_AC30D5: FLdPr Me
  loc_AC30D8: MemLdRfVar from_stack_1.global_64
  loc_AC30DB: LdPrVar
  loc_AC30DD: LateMemCall
  loc_AC30E3: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_AC30E8: PopAdLdVar
  loc_AC30E9: FLdPr Me
  loc_AC30EC: MemLdRfVar from_stack_1.global_64
  loc_AC30EF: LdPrVar
  loc_AC30F1: LateMemCall
  loc_AC30F7: LitVarStr var_94, "    <th>Fecha de<br>anulación</th>"
  loc_AC30FC: PopAdLdVar
  loc_AC30FD: FLdPr Me
  loc_AC3100: MemLdRfVar from_stack_1.global_64
  loc_AC3103: LdPrVar
  loc_AC3105: LateMemCall
  loc_AC310B: LitVarStr var_94, "    <th>Último Nro Cheque</th>"
  loc_AC3110: PopAdLdVar
  loc_AC3111: FLdPr Me
  loc_AC3114: MemLdRfVar from_stack_1.global_64
  loc_AC3117: LdPrVar
  loc_AC3119: LateMemCall
  loc_AC311F: LitVarStr var_94, "  </tr>"
  loc_AC3124: PopAdLdVar
  loc_AC3125: FLdPr Me
  loc_AC3128: MemLdRfVar from_stack_1.global_64
  loc_AC312B: LdPrVar
  loc_AC312D: LateMemCall
  loc_AC3133: LitVarStr var_94, "  </THEAD>"
  loc_AC3138: PopAdLdVar
  loc_AC3139: FLdPr Me
  loc_AC313C: MemLdRfVar from_stack_1.global_64
  loc_AC313F: LdPrVar
  loc_AC3141: LateMemCall
  loc_AC3147: ExitProcHresult
End Function

Private Function Proc_250_15_983EA0() '983EA0
  'Data Table: 438AF4
  loc_983E60: LitVarStr var_94, "</table>"
  loc_983E65: PopAdLdVar
  loc_983E66: FLdPr Me
  loc_983E69: MemLdRfVar from_stack_1.global_64
  loc_983E6C: LdPrVar
  loc_983E6E: LateMemCall
  loc_983E74: LitVarStr var_94, "</body>"
  loc_983E79: PopAdLdVar
  loc_983E7A: FLdPr Me
  loc_983E7D: MemLdRfVar from_stack_1.global_64
  loc_983E80: LdPrVar
  loc_983E82: LateMemCall
  loc_983E88: LitVarStr var_94, "</html>"
  loc_983E8D: PopAdLdVar
  loc_983E8E: FLdPr Me
  loc_983E91: MemLdRfVar from_stack_1.global_64
  loc_983E94: LdPrVar
  loc_983E96: LateMemCall
  loc_983E9C: ExitProcHresult
End Function
