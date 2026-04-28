VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodelPlandeCuentas
  Caption = "Plan de Cuentas Contables"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodelPlandeCuentas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7830
  ClientHeight = 3375
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3120
    Width = 7830
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptListadodelPlandeCuentas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2160
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptListadodelPlandeCuentas.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodelPlandeCuentas.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1920
    Width = 3255
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1920
    Width = 3015
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 1815
    TabIndex = 0
    Begin VB.CheckBox NotCodiCucoChk
      Caption = "No comienza con"
      Left = 1560
      Top = 1320
      Width = 1575
      Height = 255
      TabIndex = 8
    End
    Begin VB.CommandButton CodiCucoCmd
      Left = 3240
      Top = 960
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptListadodelPlandeCuentas.frx":0C00
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 480
      Width = 1095
      Height = 315
      TabIndex = 3
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5280
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 1560
      Top = 960
      Width = 1575
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptListadodelPlandeCuentas.frx":0CFA
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 195
      Top = 960
      Width = 1230
      Height = 195
      TabIndex = 4
    End
    Begin VB.Label DetaCucoLbl
      Left = 3720
      Top = 960
      Width = 2895
      Height = 375
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 840
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptListadodelPlandeCuentas.frx":0D5A
  End
End

Attribute VB_Name = "rptListadodelPlandeCuentas"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub CodiCucoCmd_Click() '9FE590
  'Data Table: 458868
  loc_9FE44C: FLdRfVar var_8C
  loc_9FE44F: FLdPr Me
  loc_9FE452: VCallAd Control_ID_cboPeriodo
  loc_9FE455: FStAdFunc var_88
  loc_9FE458: FLdPr var_88
  loc_9FE45B:  = Me.Text
  loc_9FE460: ILdRf var_8C
  loc_9FE463: CI2Str
  loc_9FE465: ImpAdLdRf MemVar_C3D6C0
  loc_9FE468: NewIfNullPr bscCuentaContable
  loc_9FE46B: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_9FE470: FFree1Str var_8C
  loc_9FE473: FFree1Ad var_88
  loc_9FE476: LitVar_Missing var_AC
  loc_9FE479: PopAdLdVar
  loc_9FE47A: LitVarI4
  loc_9FE482: PopAdLdVar
  loc_9FE483: ImpAdLdRf MemVar_C3D6C0
  loc_9FE486: NewIfNullPr bscCuentaContable
  loc_9FE489: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9FE48E: FLdRfVar var_B0
  loc_9FE491: FLdRfVar var_88
  loc_9FE494: ImpAdLdRf MemVar_C3D6C0
  loc_9FE497: NewIfNullPr bscCuentaContable
  loc_9FE49A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FE49F: FLdPr var_88
  loc_9FE4A2: from_stack_1 = clsbase.RecordCount
  loc_9FE4A7: ILdRf var_B0
  loc_9FE4AA: LitI4 0
  loc_9FE4AF: GtI4
  loc_9FE4B0: FFree1Ad var_88
  loc_9FE4B3: BranchF loc_9FE58E
  loc_9FE4B6: FLdRfVar var_CC
  loc_9FE4B9: FLdRfVar var_BC
  loc_9FE4BC: LitVarStr var_9C, "CodiCuco"
  loc_9FE4C1: PopAdLdVar
  loc_9FE4C2: FLdRfVar var_B8
  loc_9FE4C5: FLdRfVar var_B4
  loc_9FE4C8: FLdRfVar var_88
  loc_9FE4CB: ImpAdLdRf MemVar_C3D6C0
  loc_9FE4CE: NewIfNullPr bscCuentaContable
  loc_9FE4D1: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FE4D6: FLdPr var_88
  loc_9FE4D9: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE4DE: FLdPr var_B4
  loc_9FE4E1:  = Me.Fields
  loc_9FE4E6: FLdPr var_B8
  loc_9FE4E9: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE4EE: FLdPr var_BC
  loc_9FE4F1:  = Me.Value
  loc_9FE4F6: FLdRfVar var_CC
  loc_9FE4F9: CStrVarTmp
  loc_9FE4FA: CVarStr var_DC
  loc_9FE4FD: PopAdLdVar
  loc_9FE4FE: FLdPr Me
  loc_9FE501: VCallAd Control_ID_CodiCucoMsk
  loc_9FE504: FStAdFunc var_E0
  loc_9FE507: FLdPr var_E0
  loc_9FE50A: LateIdSt
  loc_9FE50F: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FE51C: FFreeVar var_CC = ""
  loc_9FE523: FLdRfVar var_CC
  loc_9FE526: FLdRfVar var_BC
  loc_9FE529: LitVarStr var_9C, "DetaCuco"
  loc_9FE52E: PopAdLdVar
  loc_9FE52F: FLdRfVar var_B8
  loc_9FE532: FLdRfVar var_B4
  loc_9FE535: FLdRfVar var_88
  loc_9FE538: ImpAdLdRf MemVar_C3D6C0
  loc_9FE53B: NewIfNullPr bscCuentaContable
  loc_9FE53E: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FE543: FLdPr var_88
  loc_9FE546: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE54B: FLdPr var_B4
  loc_9FE54E:  = Me.Fields
  loc_9FE553: FLdPr var_B8
  loc_9FE556: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE55B: FLdPr var_BC
  loc_9FE55E:  = Me.Value
  loc_9FE563: FLdRfVar var_CC
  loc_9FE566: CStrVarTmp
  loc_9FE567: FStStrNoPop var_8C
  loc_9FE56A: FLdPr Me
  loc_9FE56D: VCallAd Control_ID_DetaCucoLbl
  loc_9FE570: FStAdFunc var_E0
  loc_9FE573: FLdPr var_E0
  loc_9FE576: Me.Caption = from_stack_1
  loc_9FE57B: FFree1Str var_8C
  loc_9FE57E: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FE58B: FFree1Var var_CC = ""
  loc_9FE58E: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '960408
  'Data Table: 458868
  loc_9603F0: LitI2_Byte 0
  loc_9603F2: ILdRf Me
  loc_9603F5: CastAd
  loc_9603F8: FStAdFunc var_88
  loc_9603FB: FLdRfVar var_88
  loc_9603FE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_960403: FFree1Ad var_88
  loc_960406: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A52C
  'Data Table: 458868
  loc_98A4F4: FLdPr Me
  loc_98A4F7: VCallAd Control_ID_statusBar
  loc_98A4FA: FStAdFunc var_88
  loc_98A4FD: FLdPr var_88
  loc_98A500: LateIdLdVar var_98 DispID_1 0
  loc_98A507: CStrVarTmp
  loc_98A508: CVarStr var_A8
  loc_98A50B: PopAdLdVar
  loc_98A50C: FLdPr Me
  loc_98A50F: VCallAd Control_ID_statusBar
  loc_98A512: FStAdFunc var_BC
  loc_98A515: FLdPr var_BC
  loc_98A518: LateIdSt
  loc_98A51D: FFreeAd var_88 = ""
  loc_98A524: FFreeVar var_98 = ""
  loc_98A52B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AA604
  'Data Table: 458868
  loc_9AA568: LitI2_Byte 0
  loc_9AA56A: FLdPr Me
  loc_9AA56D: MemStI2 bGenerado
  loc_9AA570: LitI2_Byte &HFF
  loc_9AA572: FLdPr Me
  loc_9AA575: MemStI2 bLogos
  loc_9AA578: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AA57D: ImpAdLdI2 MemVar_C3D064
  loc_9AA580: CStrUI1
  loc_9AA582: FStStrNoPop var_88
  loc_9AA585: FLdPr Me
  loc_9AA588: VCallAd Control_ID_cboPeriodo
  loc_9AA58B: FStAdFunc var_8C
  loc_9AA58E: FLdPr var_8C
  loc_9AA591: Me.Text = from_stack_1
  loc_9AA596: FFree1Str var_88
  loc_9AA599: FFree1Ad var_8C
  loc_9AA59C: LitVarStr var_9C, vbNullString
  loc_9AA5A1: PopAdLdVar
  loc_9AA5A2: FLdPr Me
  loc_9AA5A5: VCallAd Control_ID_CodiCucoMsk
  loc_9AA5A8: FStAdFunc var_8C
  loc_9AA5AB: FLdPr var_8C
  loc_9AA5AE: LateIdSt
  loc_9AA5B3: FFree1Ad var_8C
  loc_9AA5B6: LitStr vbNullString
  loc_9AA5B9: FLdPr Me
  loc_9AA5BC: VCallAd Control_ID_DetaCucoLbl
  loc_9AA5BF: FStAdFunc var_8C
  loc_9AA5C2: FLdPr var_8C
  loc_9AA5C5: Me.Caption = from_stack_1
  loc_9AA5CA: FFree1Ad var_8C
  loc_9AA5CD: LitI4 0
  loc_9AA5D2: CI2I4
  loc_9AA5D3: FLdPr Me
  loc_9AA5D6: VCallAd Control_ID_NotCodiCucoChk
  loc_9AA5D9: FStAdFunc var_8C
  loc_9AA5DC: FLdPr var_8C
  loc_9AA5DF: Me.Value = from_stack_1
  loc_9AA5E4: FFree1Ad var_8C
  loc_9AA5E7: Call HabilitarCriterio()
  loc_9AA5EC: ILdRf Me
  loc_9AA5EF: CastAd
  loc_9AA5F2: FStAdFunc var_8C
  loc_9AA5F5: FLdRfVar var_8C
  loc_9AA5F8: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AA5FD: FFree1Ad var_8C
  loc_9AA600: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B61C
  'Data Table: 458868
  loc_97B5EC: LitVarStr var_94, "Cerrando..."
  loc_97B5F1: PopAdLdVar
  loc_97B5F2: FLdPr Me
  loc_97B5F5: VCallAd Control_ID_statusBar
  loc_97B5F8: FStAdFunc var_A8
  loc_97B5FB: FLdPr var_A8
  loc_97B5FE: LateIdSt
  loc_97B603: FFree1Ad var_A8
  loc_97B606: ILdRf Me
  loc_97B609: FStAdNoPop
  loc_97B60D: ImpAdLdRf MemVar_C44F9C
  loc_97B610: NewIfNullPr Me
  loc_97B613: Me.Global.Unload from_stack_1
  loc_97B618: FFree1Ad var_A8
  loc_97B61B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95FF48
  'Data Table: 458868
  loc_95FF30: ILdRf Me
  loc_95FF33: CastAd
  loc_95FF36: FStAdFunc var_88
  loc_95FF39: FLdRfVar var_88
  loc_95FF3C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95FF41: FFree1Ad var_88
  loc_95FF44: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '960110
  'Data Table: 458868
  loc_9600F8: ILdRf Me
  loc_9600FB: CastAd
  loc_9600FE: FStAdFunc var_88
  loc_960101: FLdRfVar var_88
  loc_960104: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_960109: FFree1Ad var_88
  loc_96010C: ExitProcHresult
End Sub

Private Sub NotCodiCucoChk_Click() '941774
  'Data Table: 458868
  loc_941768: LitI2_Byte 0
  loc_94176A: PopTmpLdAd2 var_86
  loc_94176D: Call CodiCucoMsk_UnknownEvent_8()
  loc_941772: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96A18C
  'Data Table: 458868
  loc_96A170: LitI2_Byte &HFF
  loc_96A172: LitI2_Byte 0
  loc_96A174: ILdRf Me
  loc_96A177: CastAd
  loc_96A17A: FStAdFunc var_88
  loc_96A17D: FLdRfVar var_88
  loc_96A180: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A185: FFree1Ad var_88
  loc_96A188: ExitProcHresult
End Sub

Private Sub Form_Load() '9DA934
  'Data Table: 458868
  loc_9DA840: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9DA845: PopAdLdVar
  loc_9DA846: FLdPr Me
  loc_9DA849: VCallAd Control_ID_CodiCucoMsk
  loc_9DA84C: FStAdFunc var_A8
  loc_9DA84F: FLdPr var_A8
  loc_9DA852: LateIdSt
  loc_9DA857: FFree1Ad var_A8
  loc_9DA85A: LitI2_Byte &HFF
  loc_9DA85C: ImpAdStI2 MemVar_C3D840
  loc_9DA85F: ILdRf Me
  loc_9DA862: CastAd
  loc_9DA865: FStAdFunc var_A8
  loc_9DA868: FLdRfVar var_A8
  loc_9DA86B: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DA870: FFree1Ad var_A8
  loc_9DA873: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DA876: FLdRfVar var_AC
  loc_9DA879: NewIfNullPr clsperiodo
  loc_9DA87C: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DA881: FLdRfVar var_B0
  loc_9DA884: FLdRfVar var_AC
  loc_9DA887: NewIfNullPr clsperiodo
  loc_9DA88A: from_stack_1 = clsperiodo.RecordCount
  loc_9DA88F: ILdRf var_B0
  loc_9DA892: LitI4 0
  loc_9DA897: GtI4
  loc_9DA898: BranchF loc_9DA92B
  loc_9DA89B: FLdRfVar var_AC
  loc_9DA89E: NewIfNullPr clsperiodo
  loc_9DA8A1: Call clsperiodo.MoveFirst()
  loc_9DA8A6: FLdRfVar var_B2
  loc_9DA8A9: FLdRfVar var_AC
  loc_9DA8AC: NewIfNullPr clsperiodo
  loc_9DA8AF: from_stack_1 = clsperiodo.EOF
  loc_9DA8B4: FLdI2 var_B2
  loc_9DA8B7: NotI4
  loc_9DA8B8: BranchF loc_9DA92B
  loc_9DA8BB: LitVar_Missing var_A4
  loc_9DA8BE: PopAdLdVar
  loc_9DA8BF: FLdRfVar var_CC
  loc_9DA8C2: FLdRfVar var_BC
  loc_9DA8C5: LitVarStr var_94, "PeriInfo"
  loc_9DA8CA: PopAdLdVar
  loc_9DA8CB: FLdRfVar var_B8
  loc_9DA8CE: FLdRfVar var_A8
  loc_9DA8D1: FLdRfVar var_AC
  loc_9DA8D4: NewIfNullPr clsperiodo
  loc_9DA8D7: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DA8DC: FLdPr var_A8
  loc_9DA8DF:  = Me.Fields
  loc_9DA8E4: FLdPr var_B8
  loc_9DA8E7: from_stack_2 = Me.Item(from_stack_1)
  loc_9DA8EC: FLdPr var_BC
  loc_9DA8EF:  = Me.Value
  loc_9DA8F4: FLdRfVar var_CC
  loc_9DA8F7: CStrVarTmp
  loc_9DA8F8: FStStrNoPop var_D0
  loc_9DA8FB: FLdPr Me
  loc_9DA8FE: VCallAd Control_ID_cboPeriodo
  loc_9DA901: FStAdFunc var_D4
  loc_9DA904: FLdPr var_D4
  loc_9DA907: Me.AddItem from_stack_1, from_stack_2
  loc_9DA90C: FFree1Str var_D0
  loc_9DA90F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9DA91A: FFree1Var var_CC = ""
  loc_9DA91D: FLdRfVar var_AC
  loc_9DA920: NewIfNullPr clsperiodo
  loc_9DA923: Call clsperiodo.MoveSiguiente()
  loc_9DA928: Branch loc_9DA8A6
  loc_9DA92B: Call cmdNueva_Click()
  loc_9DA930: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960C58
  'Data Table: 458868
  loc_960C40: FLdPr Me
  loc_960C43: VCallAd Control_ID_wbbReporte
  loc_960C46: FStAdFunc var_88
  loc_960C49: FLdRfVar var_88
  loc_960C4C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960C51: FFree1Ad var_88
  loc_960C54: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_8 'A2F0E0
  'Data Table: 458868
  loc_A2EF20: FLdRfVar var_96
  loc_A2EF23: FLdPr Me
  loc_A2EF26: VCallAd Control_ID_NotCodiCucoChk
  loc_A2EF29: FStAdFunc var_94
  loc_A2EF2C: FLdPr var_94
  loc_A2EF2F:  = Me.Value
  loc_A2EF34: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A2EF37: FLdRfVar var_8C
  loc_A2EF3A: FLdPr Me
  loc_A2EF3D: VCallAd Control_ID_cboPeriodo
  loc_A2EF40: FStAdFunc var_88
  loc_A2EF43: FLdPr var_88
  loc_A2EF46:  = Me.Text
  loc_A2EF4B: ILdRf var_8C
  loc_A2EF4E: ConcatStr
  loc_A2EF4F: FStStrNoPop var_90
  loc_A2EF52: LitStr " AND CodiCuco "
  loc_A2EF55: ConcatStr
  loc_A2EF56: CVarStr var_108
  loc_A2EF59: LitVarStr var_D8, vbNullString
  loc_A2EF5E: FStVarCopyObj var_E8
  loc_A2EF61: FLdRfVar var_E8
  loc_A2EF64: LitVarStr var_B8, "NOT"
  loc_A2EF69: FStVarCopyObj var_C8
  loc_A2EF6C: FLdRfVar var_C8
  loc_A2EF6F: FLdI2 var_96
  loc_A2EF72: CI4UI1
  loc_A2EF73: LitI4 1
  loc_A2EF78: EqI4
  loc_A2EF79: CVarBoolI2 var_A8
  loc_A2EF7D: FLdRfVar var_F8
  loc_A2EF80: ImpAdCallFPR4  = IIf(, , )
  loc_A2EF85: FLdRfVar var_F8
  loc_A2EF88: ConcatVar var_118
  loc_A2EF8C: LitVarStr var_128, " LIKE '"
  loc_A2EF91: ConcatVar var_138
  loc_A2EF95: FLdPr Me
  loc_A2EF98: VCallAd Control_ID_CodiCucoMsk
  loc_A2EF9B: FStAdFunc var_13C
  loc_A2EF9E: FLdPr var_13C
  loc_A2EFA1: LateIdLdVar var_14C DispID_20 0
  loc_A2EFA8: CStrVarTmp
  loc_A2EFA9: CVarStr var_15C
  loc_A2EFAC: ConcatVar var_16C
  loc_A2EFB0: LitVarStr var_17C, Chr(37) & "'"
  loc_A2EFB5: ConcatVar var_18C
  loc_A2EFB9: CStrVarVal var_190
  loc_A2EFBD: FLdPr Me
  loc_A2EFC0: MemLdRfVar from_stack_1.global_72
  loc_A2EFC3: NewIfNullPr clscuentacontable
  loc_A2EFC6: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A2EFCB: FFreeStr var_8C = "": var_90 = ""
  loc_A2EFD4: FFreeAd var_88 = "": var_94 = ""
  loc_A2EFDD: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_F8 = "": var_118 = "": var_14C = "": var_138 = "": var_15C = "": var_16C = ""
  loc_A2EFF6: FLdRfVar var_194
  loc_A2EFF9: FLdPr Me
  loc_A2EFFC: MemLdRfVar from_stack_1.global_72
  loc_A2EFFF: NewIfNullPr clscuentacontable
  loc_A2F002: from_stack_1 = clscuentacontable.RecordCount
  loc_A2F007: ILdRf var_194
  loc_A2F00A: FStR4 var_198
  loc_A2F00D: ILdRf var_198
  loc_A2F010: LitI4 0
  loc_A2F015: EqI4
  loc_A2F016: BranchF loc_A2F033
  loc_A2F019: LitStr "0 registros encontrados"
  loc_A2F01C: FLdPr Me
  loc_A2F01F: VCallAd Control_ID_DetaCucoLbl
  loc_A2F022: FStAdFunc var_88
  loc_A2F025: FLdPr var_88
  loc_A2F028: Me.Caption = from_stack_1
  loc_A2F02D: FFree1Ad var_88
  loc_A2F030: Branch loc_A2F0DE
  loc_A2F033: ILdRf var_198
  loc_A2F036: LitI4 1
  loc_A2F03B: EqI4
  loc_A2F03C: BranchF loc_A2F0A3
  loc_A2F03F: FLdRfVar var_C8
  loc_A2F042: FLdRfVar var_13C
  loc_A2F045: LitVarStr var_A8, "DetaCuco"
  loc_A2F04A: PopAdLdVar
  loc_A2F04B: FLdRfVar var_94
  loc_A2F04E: FLdRfVar var_88
  loc_A2F051: FLdPr Me
  loc_A2F054: MemLdRfVar from_stack_1.global_72
  loc_A2F057: NewIfNullPr clscuentacontable
  loc_A2F05A: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A2F05F: FLdPr var_88
  loc_A2F062:  = Me.Fields
  loc_A2F067: FLdPr var_94
  loc_A2F06A: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F06F: FLdPr var_13C
  loc_A2F072:  = Me.Value
  loc_A2F077: FLdRfVar var_C8
  loc_A2F07A: CStrVarTmp
  loc_A2F07B: FStStrNoPop var_8C
  loc_A2F07E: FLdPr Me
  loc_A2F081: VCallAd Control_ID_DetaCucoLbl
  loc_A2F084: FStAdFunc var_19C
  loc_A2F087: FLdPr var_19C
  loc_A2F08A: Me.Caption = from_stack_1
  loc_A2F08F: FFree1Str var_8C
  loc_A2F092: FFreeAd var_88 = "": var_94 = "": var_13C = ""
  loc_A2F09D: FFree1Var var_C8 = ""
  loc_A2F0A0: Branch loc_A2F0DE
  loc_A2F0A3: FLdRfVar var_194
  loc_A2F0A6: FLdPr Me
  loc_A2F0A9: MemLdRfVar from_stack_1.global_72
  loc_A2F0AC: NewIfNullPr clscuentacontable
  loc_A2F0AF: from_stack_1 = clscuentacontable.RecordCount
  loc_A2F0B4: ILdRf var_194
  loc_A2F0B7: CStrI4
  loc_A2F0B9: FStStrNoPop var_8C
  loc_A2F0BC: LitStr " cuentas encontradas"
  loc_A2F0BF: ConcatStr
  loc_A2F0C0: FStStrNoPop var_90
  loc_A2F0C3: FLdPr Me
  loc_A2F0C6: VCallAd Control_ID_DetaCucoLbl
  loc_A2F0C9: FStAdFunc var_88
  loc_A2F0CC: FLdPr var_88
  loc_A2F0CF: Me.Caption = from_stack_1
  loc_A2F0D4: FFreeStr var_8C = ""
  loc_A2F0DB: FFree1Ad var_88
  loc_A2F0DE: ExitProcHresult
End Sub

Public Function htmFileGet() '45956C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '45957B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '45958A
  htmFile = Value
End Sub

Public Function bLogosGet() '459599
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4595A8
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4595B7
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4595C6
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A101C
  'Data Table: 458868
  loc_9A0FB8: LitI4 0
  loc_9A0FBD: LitI4 3
  loc_9A0FC2: FLdRfVar var_88
  loc_9A0FC5: Redim
  loc_9A0FCF: FLdPr Me
  loc_9A0FD2: VCallAd Control_ID_cboPeriodo
  loc_9A0FD5: CVarAd
  loc_9A0FD9: ParmAry1St
  loc_9A0FDF: FLdPr Me
  loc_9A0FE2: VCallAd Control_ID_CodiCucoMsk
  loc_9A0FE5: CVarAd
  loc_9A0FE9: ParmAry1St
  loc_9A0FEF: FLdPr Me
  loc_9A0FF2: VCallAd Control_ID_CodiCucoCmd
  loc_9A0FF5: CVarAd
  loc_9A0FF9: ParmAry1St
  loc_9A0FFF: FLdPr Me
  loc_9A1002: VCallAd Control_ID_NotCodiCucoChk
  loc_9A1005: CVarAd
  loc_9A1009: ParmAry1St
  loc_9A100F: FLdRfVar var_88
  loc_9A1012: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1017: FLdRfVar var_88
  loc_9A101A: Erase
  loc_9A101B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8874C
  'Data Table: 458868
  loc_A88340: OnErrorGoto loc_A886E8
  loc_A88343: FLdPr Me
  loc_A88346: MemLdI2 bGenerado
  loc_A88349: BranchF loc_A8834D
  loc_A8834C: ExitProcHresult
  loc_A8834D: LitVarStr var_9C, "Generando reporte..."
  loc_A88352: PopAdLdVar
  loc_A88353: FLdPr Me
  loc_A88356: VCallAd Control_ID_statusBar
  loc_A88359: FStAdFunc var_B0
  loc_A8835C: FLdPr var_B0
  loc_A8835F: LateIdSt
  loc_A88364: FFree1Ad var_B0
  loc_A88367: LitI4 &HB
  loc_A8836C: CI2I4
  loc_A8836D: FLdPr Me
  loc_A88370: Me.MousePointer = from_stack_1
  loc_A88375: LitI2_Byte 0
  loc_A88377: PopTmpLdAd2 var_B2
  loc_A8837A: Call CodiCucoMsk_UnknownEvent_8()
  loc_A8837F: FLdPr Me
  loc_A88382: VCallAd Control_ID_CodiCucoMsk
  loc_A88385: FStAdFunc var_B0
  loc_A88388: FLdPr var_B0
  loc_A8838B: LateIdLdVar var_C4 DispID_20 0
  loc_A88392: CStrVarTmp
  loc_A88393: FStStrNoPop var_C8
  loc_A88396: LitStr vbNullString
  loc_A88399: NeStr
  loc_A8839B: FFree1Str var_C8
  loc_A8839E: FFree1Ad var_B0
  loc_A883A1: FFree1Var var_C4 = ""
  loc_A883A4: BranchF loc_A88442
  loc_A883A7: FLdRfVar var_B2
  loc_A883AA: FLdPr Me
  loc_A883AD: VCallAd Control_ID_NotCodiCucoChk
  loc_A883B0: FStAdFunc var_B0
  loc_A883B3: FLdPr var_B0
  loc_A883B6:  = Me.Value
  loc_A883BB: LitVarStr var_108, " AND CodiCuco "
  loc_A883C0: LitVarStr var_D8, vbNullString
  loc_A883C5: FStVarCopyObj var_E8
  loc_A883C8: FLdRfVar var_E8
  loc_A883CB: LitVarStr var_AC, "NOT"
  loc_A883D0: FStVarCopyObj var_C4
  loc_A883D3: FLdRfVar var_C4
  loc_A883D6: FLdI2 var_B2
  loc_A883D9: CI4UI1
  loc_A883DA: LitI4 1
  loc_A883DF: EqI4
  loc_A883E0: CVarBoolI2 var_9C
  loc_A883E4: FLdRfVar var_F8
  loc_A883E7: ImpAdCallFPR4  = IIf(, , )
  loc_A883EC: FLdRfVar var_F8
  loc_A883EF: ConcatVar var_118
  loc_A883F3: LitVarStr var_128, " LIKE '"
  loc_A883F8: ConcatVar var_138
  loc_A883FC: FLdPr Me
  loc_A883FF: VCallAd Control_ID_CodiCucoMsk
  loc_A88402: FStAdFunc var_13C
  loc_A88405: FLdPr var_13C
  loc_A88408: LateIdLdVar var_14C DispID_20 0
  loc_A8840F: CStrVarTmp
  loc_A88410: CVarStr var_15C
  loc_A88413: ConcatVar var_16C
  loc_A88417: LitVarStr var_17C, Chr(37) & "'"
  loc_A8841C: ConcatVar var_18C
  loc_A88420: CStrVarTmp
  loc_A88421: FStStr var_88
  loc_A88424: FFreeAd var_B0 = ""
  loc_A8842B: FFreeVar var_9C = "": var_C4 = "": var_E8 = "": var_F8 = "": var_118 = "": var_14C = "": var_138 = "": var_15C = "": var_16C = ""
  loc_A88442: LitStr "SELECT CodiCuco, DetaCuco, IF(ImpuCuco=0,'No','Si') ImpuCuco, DetaTicu"
  loc_A88445: LitStr " FROM infogov.cuentacontable LEFT JOIN tipocuco ON tipocuco.CodiTicu = infogov.cuentacontable.CodiTicu"
  loc_A88448: ConcatStr
  loc_A88449: FStStrNoPop var_C8
  loc_A8844C: LitStr " WHERE PeriInfo = "
  loc_A8844F: ConcatStr
  loc_A88450: FStStrNoPop var_194
  loc_A88453: FLdRfVar var_190
  loc_A88456: FLdPr Me
  loc_A88459: VCallAd Control_ID_cboPeriodo
  loc_A8845C: FStAdFunc var_B0
  loc_A8845F: FLdPr var_B0
  loc_A88462:  = Me.Text
  loc_A88467: ILdRf var_190
  loc_A8846A: ConcatStr
  loc_A8846B: FStStrNoPop var_198
  loc_A8846E: ILdRf var_88
  loc_A88471: ConcatStr
  loc_A88472: FStStrNoPop var_19C
  loc_A88475: LitStr " ORDER BY CodiCuco"
  loc_A88478: ConcatStr
  loc_A88479: FStStrNoPop var_1A0
  loc_A8847C: FLdPr Me
  loc_A8847F: MemLdRfVar from_stack_1.global_72
  loc_A88482: NewIfNullPr clscuentacontable
  loc_A88485: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A8848A: FFreeStr var_C8 = "": var_194 = "": var_190 = "": var_198 = "": var_19C = ""
  loc_A88499: FFree1Ad var_B0
  loc_A8849C: FLdRfVar var_1A4
  loc_A8849F: FLdPr Me
  loc_A884A2: MemLdRfVar from_stack_1.global_72
  loc_A884A5: NewIfNullPr clscuentacontable
  loc_A884A8: from_stack_1 = clscuentacontable.RecordCount
  loc_A884AD: ILdRf var_1A4
  loc_A884B0: LitI4 0
  loc_A884B5: EqI4
  loc_A884B6: BranchF loc_A884C9
  loc_A884B9: LitI4 0
  loc_A884BE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A884C1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A884C6: Branch loc_A886BF
  loc_A884C9: FLdPr Me
  loc_A884CC: MemLdRfVar from_stack_1.global_72
  loc_A884CF: NewIfNullAd
  loc_A884D2: FStAd var_1A8 
  loc_A884D6: LitI4 0
  loc_A884DB: FLdRfVar var_1A4
  loc_A884DE: FLdPr var_1A8
  loc_A884E1: from_stack_1 = clscuentacontable.RecordCount
  loc_A884E6: ILdRf var_1A4
  loc_A884E9: FLdPr Me
  loc_A884EC: MemLdRfVar from_stack_1.global_80
  loc_A884EF: Redim
  loc_A884F9: FLdPr var_1A8
  loc_A884FC: Call clscuentacontable.MoveFirst()
  loc_A88501: LitI2_Byte 1
  loc_A88503: FLdPr Me
  loc_A88506: MemLdRfVar from_stack_1.global_84
  loc_A88509: FLdRfVar var_1A4
  loc_A8850C: FLdPr var_1A8
  loc_A8850F: from_stack_1 = clscuentacontable.RecordCount
  loc_A88514: ILdRf var_1A4
  loc_A88517: CI2I4
  loc_A88518: ForI2 var_1AC
  loc_A8851E: FLdRfVar var_1B0
  loc_A88521: LitVarStr var_9C, "CodiCuco"
  loc_A88526: PopAdLdVar
  loc_A88527: FLdRfVar var_13C
  loc_A8852A: FLdRfVar var_B0
  loc_A8852D: FLdPr var_1A8
  loc_A88530: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A88535: FLdPr var_B0
  loc_A88538:  = Me.Fields
  loc_A8853D: FLdPr var_13C
  loc_A88540: from_stack_2 = Me.Item(from_stack_1)
  loc_A88545: LitI2_Byte 0
  loc_A88547: LitVar_Missing var_E8
  loc_A8854A: LitI2_Byte 0
  loc_A8854C: FLdZeroAd var_1B0
  loc_A8854F: CVarAd
  loc_A88553: PopAdLdVar
  loc_A88554: FLdPr Me
  loc_A88557: MemLdI2 global_84
  loc_A8855A: CI4UI1
  loc_A8855B: FLdPr Me
  loc_A8855E: MemLdStr global_80
  loc_A88561: AryLock
  loc_A88564: Ary1LdPr
  loc_A88565: MemLdRfVar from_stack_1.global_0
  loc_A88568: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8856D: AryUnlock
  loc_A88570: FFreeAd var_B0 = ""
  loc_A88577: FFreeVar var_C4 = ""
  loc_A8857E: FLdRfVar var_1B0
  loc_A88581: LitVarStr var_9C, "DetaCuco"
  loc_A88586: PopAdLdVar
  loc_A88587: FLdRfVar var_13C
  loc_A8858A: FLdRfVar var_B0
  loc_A8858D: FLdPr var_1A8
  loc_A88590: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A88595: FLdPr var_B0
  loc_A88598:  = Me.Fields
  loc_A8859D: FLdPr var_13C
  loc_A885A0: from_stack_2 = Me.Item(from_stack_1)
  loc_A885A5: LitI2_Byte 0
  loc_A885A7: LitVar_Missing var_E8
  loc_A885AA: LitI2_Byte 0
  loc_A885AC: FLdZeroAd var_1B0
  loc_A885AF: CVarAd
  loc_A885B3: PopAdLdVar
  loc_A885B4: FLdPr Me
  loc_A885B7: MemLdI2 global_84
  loc_A885BA: CI4UI1
  loc_A885BB: FLdPr Me
  loc_A885BE: MemLdStr global_80
  loc_A885C1: AryLock
  loc_A885C4: Ary1LdPr
  loc_A885C5: MemLdRfVar from_stack_1.global_4
  loc_A885C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A885CD: AryUnlock
  loc_A885D0: FFreeAd var_B0 = ""
  loc_A885D7: FFreeVar var_C4 = ""
  loc_A885DE: FLdRfVar var_1B0
  loc_A885E1: LitVarStr var_9C, "ImpuCuco"
  loc_A885E6: PopAdLdVar
  loc_A885E7: FLdRfVar var_13C
  loc_A885EA: FLdRfVar var_B0
  loc_A885ED: FLdPr var_1A8
  loc_A885F0: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A885F5: FLdPr var_B0
  loc_A885F8:  = Me.Fields
  loc_A885FD: FLdPr var_13C
  loc_A88600: from_stack_2 = Me.Item(from_stack_1)
  loc_A88605: LitI2_Byte 0
  loc_A88607: LitVar_Missing var_E8
  loc_A8860A: LitI2_Byte 0
  loc_A8860C: FLdZeroAd var_1B0
  loc_A8860F: CVarAd
  loc_A88613: PopAdLdVar
  loc_A88614: FLdPr Me
  loc_A88617: MemLdI2 global_84
  loc_A8861A: CI4UI1
  loc_A8861B: FLdPr Me
  loc_A8861E: MemLdStr global_80
  loc_A88621: AryLock
  loc_A88624: Ary1LdPr
  loc_A88625: MemLdRfVar from_stack_1.global_8
  loc_A88628: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8862D: AryUnlock
  loc_A88630: FFreeAd var_B0 = ""
  loc_A88637: FFreeVar var_C4 = ""
  loc_A8863E: FLdRfVar var_1B0
  loc_A88641: LitVarStr var_9C, "DetaTicu"
  loc_A88646: PopAdLdVar
  loc_A88647: FLdRfVar var_13C
  loc_A8864A: FLdRfVar var_B0
  loc_A8864D: FLdPr var_1A8
  loc_A88650: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A88655: FLdPr var_B0
  loc_A88658:  = Me.Fields
  loc_A8865D: FLdPr var_13C
  loc_A88660: from_stack_2 = Me.Item(from_stack_1)
  loc_A88665: LitI2_Byte 0
  loc_A88667: LitVar_Missing var_E8
  loc_A8866A: LitI2_Byte 0
  loc_A8866C: FLdZeroAd var_1B0
  loc_A8866F: CVarAd
  loc_A88673: PopAdLdVar
  loc_A88674: FLdPr Me
  loc_A88677: MemLdI2 global_84
  loc_A8867A: CI4UI1
  loc_A8867B: FLdPr Me
  loc_A8867E: MemLdStr global_80
  loc_A88681: AryLock
  loc_A88684: Ary1LdPr
  loc_A88685: MemLdRfVar from_stack_1.global_12
  loc_A88688: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8868D: AryUnlock
  loc_A88690: FFreeAd var_B0 = ""
  loc_A88697: FFreeVar var_C4 = ""
  loc_A8869E: FLdPr var_1A8
  loc_A886A1: Call clscuentacontable.MoveSiguiente()
  loc_A886A6: FLdPr Me
  loc_A886A9: MemLdRfVar from_stack_1.global_84
  loc_A886AC: NextI2 var_1AC, loc_A8851E
  loc_A886B1: LitNothing
  loc_A886B3: FStAd var_1A8 
  loc_A886B7: LitI2_Byte &HFF
  loc_A886B9: FLdPr Me
  loc_A886BC: MemStI2 bGenerado
  loc_A886BF: LitI4 0
  loc_A886C4: CI2I4
  loc_A886C5: FLdPr Me
  loc_A886C8: Me.MousePointer = from_stack_1
  loc_A886CD: LitVarStr var_9C, vbNullString
  loc_A886D2: PopAdLdVar
  loc_A886D3: FLdPr Me
  loc_A886D6: VCallAd Control_ID_statusBar
  loc_A886D9: FStAdFunc var_B0
  loc_A886DC: FLdPr var_B0
  loc_A886DF: LateIdSt
  loc_A886E4: FFree1Ad var_B0
  loc_A886E7: ExitProcHresult
  loc_A886E8: LitI4 0
  loc_A886ED: LitStr "Error "
  loc_A886F0: FLdRfVar var_1A4
  loc_A886F3: ImpAdCallI2 Err 'rtcErrObj
  loc_A886F8: FStAdFunc var_B0
  loc_A886FB: FLdPr var_B0
  loc_A886FE:  = Err.Number
  loc_A88703: ILdRf var_1A4
  loc_A88706: CStrI4
  loc_A88708: FStStrNoPop var_C8
  loc_A8870B: ConcatStr
  loc_A8870C: FStStrNoPop var_190
  loc_A8870F: LitStr ": "
  loc_A88712: ConcatStr
  loc_A88713: FStStrNoPop var_198
  loc_A88716: FLdRfVar var_194
  loc_A88719: ImpAdCallI2 Err 'rtcErrObj
  loc_A8871E: FStAdFunc var_13C
  loc_A88721: FLdPr var_13C
  loc_A88724:  = Err.Description
  loc_A88729: ILdRf var_194
  loc_A8872C: ConcatStr
  loc_A8872D: FStStrNoPop var_19C
  loc_A88730: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A88735: FFreeStr var_C8 = "": var_190 = "": var_198 = "": var_194 = ""
  loc_A88742: FFreeAd var_B0 = ""
  loc_A88749: ExitProcHresult
  loc_A8874A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A479D0
  'Data Table: 458868
  loc_A4774C: FLdRfVar var_88
  loc_A4774F: LitI2_Byte 0
  loc_A47751: LitI2_Byte &HFF
  loc_A47753: ImpAdLdI4 MemVar_C3D83C
  loc_A47756: FLdPr Me
  loc_A47759: MemLdRfVar from_stack_1.global_76
  loc_A4775C: NewIfNullPr IFileSystem3
  loc_A4775F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A47764: ILdRf var_88
  loc_A47767: FLdPr Me
  loc_A4776A: MemStVarAd
  loc_A4776E: FFree1Ad var_88
  loc_A47771: Call Proc_197_23_A8DFEC()
  loc_A47776: LitI2_Byte 1
  loc_A47778: FLdPr Me
  loc_A4777B: MemLdRfVar from_stack_1.global_84
  loc_A4777E: FLdPr Me
  loc_A47781: MemLdStr global_80
  loc_A47784: LitI2_Byte 1
  loc_A47786: FnUBound
  loc_A47788: CI2I4
  loc_A47789: ForI2 var_8C
  loc_A4778F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A47794: PopAdLdVar
  loc_A47795: FLdPr Me
  loc_A47798: MemLdRfVar from_stack_1.htmFile
  loc_A4779B: LdPrVar
  loc_A4779D: LateMemCall
  loc_A477A3: LitI4 9
  loc_A477A8: FLdPr Me
  loc_A477AB: MemLdI2 global_84
  loc_A477AE: CI4UI1
  loc_A477AF: FLdPr Me
  loc_A477B2: MemLdStr global_80
  loc_A477B5: AryLock
  loc_A477B8: Ary1LdPr
  loc_A477B9: MemLdRfVar from_stack_1.global_0
  loc_A477BC: CVarRef
  loc_A477C1: FLdRfVar var_C0
  loc_A477C4: ImpAdCallFPR4  = Right(, )
  loc_A477C9: AryUnlock
  loc_A477CC: FLdRfVar var_C0
  loc_A477CF: LitVarStr var_AC, "000000000"
  loc_A477D4: HardType
  loc_A477D5: EqVarBool
  loc_A477D7: FFree1Var var_C0 = ""
  loc_A477DA: BranchF loc_A478B0
  loc_A477DD: LitStr "    <td align=""center""><strong><em>"
  loc_A477E0: FLdPr Me
  loc_A477E3: MemLdI2 global_84
  loc_A477E6: CI4UI1
  loc_A477E7: FLdPr Me
  loc_A477EA: MemLdStr global_80
  loc_A477ED: Ary1LdPr
  loc_A477EE: MemLdStr global_0
  loc_A477F1: ConcatStr
  loc_A477F2: FStStrNoPop var_D4
  loc_A477F5: LitStr "</em></strong></td>"
  loc_A477F8: ConcatStr
  loc_A477F9: CVarStr var_C0
  loc_A477FC: PopAdLdVar
  loc_A477FD: FLdPr Me
  loc_A47800: MemLdRfVar from_stack_1.htmFile
  loc_A47803: LdPrVar
  loc_A47805: LateMemCall
  loc_A4780B: FFree1Str var_D4
  loc_A4780E: FFree1Var var_C0 = ""
  loc_A47811: LitStr "    <td align=""justify""><strong><em>"
  loc_A47814: FLdPr Me
  loc_A47817: MemLdI2 global_84
  loc_A4781A: CI4UI1
  loc_A4781B: FLdPr Me
  loc_A4781E: MemLdStr global_80
  loc_A47821: Ary1LdPr
  loc_A47822: MemLdStr global_4
  loc_A47825: ConcatStr
  loc_A47826: FStStrNoPop var_D4
  loc_A47829: LitStr "</em></strong></td>"
  loc_A4782C: ConcatStr
  loc_A4782D: CVarStr var_C0
  loc_A47830: PopAdLdVar
  loc_A47831: FLdPr Me
  loc_A47834: MemLdRfVar from_stack_1.htmFile
  loc_A47837: LdPrVar
  loc_A47839: LateMemCall
  loc_A4783F: FFree1Str var_D4
  loc_A47842: FFree1Var var_C0 = ""
  loc_A47845: LitStr "    <td align=""center""><strong><em>"
  loc_A47848: FLdPr Me
  loc_A4784B: MemLdI2 global_84
  loc_A4784E: CI4UI1
  loc_A4784F: FLdPr Me
  loc_A47852: MemLdStr global_80
  loc_A47855: Ary1LdPr
  loc_A47856: MemLdStr global_8
  loc_A47859: ConcatStr
  loc_A4785A: FStStrNoPop var_D4
  loc_A4785D: LitStr "</em></strong></td>"
  loc_A47860: ConcatStr
  loc_A47861: CVarStr var_C0
  loc_A47864: PopAdLdVar
  loc_A47865: FLdPr Me
  loc_A47868: MemLdRfVar from_stack_1.htmFile
  loc_A4786B: LdPrVar
  loc_A4786D: LateMemCall
  loc_A47873: FFree1Str var_D4
  loc_A47876: FFree1Var var_C0 = ""
  loc_A47879: LitStr "    <td align=""left""><strong><em>"
  loc_A4787C: FLdPr Me
  loc_A4787F: MemLdI2 global_84
  loc_A47882: CI4UI1
  loc_A47883: FLdPr Me
  loc_A47886: MemLdStr global_80
  loc_A47889: Ary1LdPr
  loc_A4788A: MemLdStr global_12
  loc_A4788D: ConcatStr
  loc_A4788E: FStStrNoPop var_D4
  loc_A47891: LitStr "</em></strong></td>"
  loc_A47894: ConcatStr
  loc_A47895: CVarStr var_C0
  loc_A47898: PopAdLdVar
  loc_A47899: FLdPr Me
  loc_A4789C: MemLdRfVar from_stack_1.htmFile
  loc_A4789F: LdPrVar
  loc_A478A1: LateMemCall
  loc_A478A7: FFree1Str var_D4
  loc_A478AA: FFree1Var var_C0 = ""
  loc_A478AD: Branch loc_A47998
  loc_A478B0: LitI4 0
  loc_A478B5: LitI4 0
  loc_A478BA: LitI2_Byte 0
  loc_A478BC: LitStr "center"
  loc_A478BF: FLdPr Me
  loc_A478C2: MemLdI2 global_84
  loc_A478C5: CI4UI1
  loc_A478C6: FLdPr Me
  loc_A478C9: MemLdStr global_80
  loc_A478CC: Ary1LdPr
  loc_A478CD: MemLdStr global_0
  loc_A478D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A478D5: CVarStr var_C0
  loc_A478D8: PopAdLdVar
  loc_A478D9: FLdPr Me
  loc_A478DC: MemLdRfVar from_stack_1.htmFile
  loc_A478DF: LdPrVar
  loc_A478E1: LateMemCall
  loc_A478E7: FFree1Var var_C0 = ""
  loc_A478EA: LitI4 0
  loc_A478EF: LitI4 0
  loc_A478F4: LitI2_Byte 0
  loc_A478F6: LitStr "justify"
  loc_A478F9: FLdPr Me
  loc_A478FC: MemLdI2 global_84
  loc_A478FF: CI4UI1
  loc_A47900: FLdPr Me
  loc_A47903: MemLdStr global_80
  loc_A47906: Ary1LdPr
  loc_A47907: MemLdStr global_4
  loc_A4790A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A4790F: CVarStr var_C0
  loc_A47912: PopAdLdVar
  loc_A47913: FLdPr Me
  loc_A47916: MemLdRfVar from_stack_1.htmFile
  loc_A47919: LdPrVar
  loc_A4791B: LateMemCall
  loc_A47921: FFree1Var var_C0 = ""
  loc_A47924: LitI4 0
  loc_A47929: LitI4 0
  loc_A4792E: LitI2_Byte 0
  loc_A47930: LitStr "center"
  loc_A47933: FLdPr Me
  loc_A47936: MemLdI2 global_84
  loc_A47939: CI4UI1
  loc_A4793A: FLdPr Me
  loc_A4793D: MemLdStr global_80
  loc_A47940: Ary1LdPr
  loc_A47941: MemLdStr global_8
  loc_A47944: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A47949: CVarStr var_C0
  loc_A4794C: PopAdLdVar
  loc_A4794D: FLdPr Me
  loc_A47950: MemLdRfVar from_stack_1.htmFile
  loc_A47953: LdPrVar
  loc_A47955: LateMemCall
  loc_A4795B: FFree1Var var_C0 = ""
  loc_A4795E: LitI4 0
  loc_A47963: LitI4 0
  loc_A47968: LitI2_Byte 0
  loc_A4796A: LitStr "left"
  loc_A4796D: FLdPr Me
  loc_A47970: MemLdI2 global_84
  loc_A47973: CI4UI1
  loc_A47974: FLdPr Me
  loc_A47977: MemLdStr global_80
  loc_A4797A: Ary1LdPr
  loc_A4797B: MemLdStr global_12
  loc_A4797E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A47983: CVarStr var_C0
  loc_A47986: PopAdLdVar
  loc_A47987: FLdPr Me
  loc_A4798A: MemLdRfVar from_stack_1.htmFile
  loc_A4798D: LdPrVar
  loc_A4798F: LateMemCall
  loc_A47995: FFree1Var var_C0 = ""
  loc_A47998: LitVarStr var_9C, "      </tr>"
  loc_A4799D: PopAdLdVar
  loc_A4799E: FLdPr Me
  loc_A479A1: MemLdRfVar from_stack_1.htmFile
  loc_A479A4: LdPrVar
  loc_A479A6: LateMemCall
  loc_A479AC: FLdPr Me
  loc_A479AF: MemLdRfVar from_stack_1.global_84
  loc_A479B2: NextI2 var_8C, loc_A4778F
  loc_A479B7: Call Proc_197_24_982770()
  loc_A479BC: FLdPr Me
  loc_A479BF: MemLdRfVar from_stack_1.htmFile
  loc_A479C2: LdPrVar
  loc_A479C4: LateMemCall
  loc_A479CA: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A479CF: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94C174
  'Data Table: 458868
  loc_94C15C: LitI2_Byte 0
  loc_94C15E: FLdPr Me
  loc_94C161: MemStI2 bLogos
  loc_94C164: Call GeneraHTML()
  loc_94C169: LitI2_Byte &HFF
  loc_94C16B: FLdPr Me
  loc_94C16E: MemStI2 bLogos
  loc_94C171: ExitProcHresult
End Sub

Private Function Proc_197_23_A8DFEC() 'A8DFEC
  'Data Table: 458868
  loc_A8DB98: FLdPr Me
  loc_A8DB9B: VCallAd Control_ID_CodiCucoMsk
  loc_A8DB9E: FStAdFunc var_8C
  loc_A8DBA1: FLdPr var_8C
  loc_A8DBA4: LateIdLdVar var_9C DispID_20 0
  loc_A8DBAB: CStrVarTmp
  loc_A8DBAC: FStStrNoPop var_A0
  loc_A8DBAF: FnLenStr
  loc_A8DBB0: FStR4 var_A4
  loc_A8DBB3: FFree1Str var_A0
  loc_A8DBB6: FFree1Ad var_8C
  loc_A8DBB9: FFree1Var var_9C = ""
  loc_A8DBBC: ILdRf var_A4
  loc_A8DBBF: LitI4 0
  loc_A8DBC4: EqI4
  loc_A8DBC5: BranchF loc_A8DBD1
  loc_A8DBC8: LitStr "Todas"
  loc_A8DBCB: FStStrCopy var_88
  loc_A8DBCE: Branch loc_A8DCBD
  loc_A8DBD1: ILdRf var_A4
  loc_A8DBD4: LitI4 &HA
  loc_A8DBD9: LtI4
  loc_A8DBDA: BranchF loc_A8DC65
  loc_A8DBDD: FLdRfVar var_A6
  loc_A8DBE0: FLdPr Me
  loc_A8DBE3: VCallAd Control_ID_NotCodiCucoChk
  loc_A8DBE6: FStAdFunc var_8C
  loc_A8DBE9: FLdPr var_8C
  loc_A8DBEC:  = Me.Value
  loc_A8DBF1: LitVarStr var_D8, "No comienzan con '"
  loc_A8DBF6: FStVarCopyObj var_E8
  loc_A8DBF9: FLdRfVar var_E8
  loc_A8DBFC: LitVarStr var_C8, "Comenzando con '"
  loc_A8DC01: FStVarCopyObj var_9C
  loc_A8DC04: FLdRfVar var_9C
  loc_A8DC07: FLdI2 var_A6
  loc_A8DC0A: CI4UI1
  loc_A8DC0B: LitI4 0
  loc_A8DC10: EqI4
  loc_A8DC11: CVarBoolI2 var_B8
  loc_A8DC15: FLdRfVar var_F8
  loc_A8DC18: ImpAdCallFPR4  = IIf(, , )
  loc_A8DC1D: FLdRfVar var_F8
  loc_A8DC20: FLdPr Me
  loc_A8DC23: VCallAd Control_ID_CodiCucoMsk
  loc_A8DC26: FStAdFunc var_FC
  loc_A8DC29: FLdPr var_FC
  loc_A8DC2C: LateIdLdVar var_10C DispID_20 0
  loc_A8DC33: CStrVarTmp
  loc_A8DC34: CVarStr var_11C
  loc_A8DC37: ConcatVar var_12C
  loc_A8DC3B: LitVarStr var_13C, "'"
  loc_A8DC40: ConcatVar var_14C
  loc_A8DC44: CStrVarTmp
  loc_A8DC45: FStStr var_88
  loc_A8DC48: FFreeAd var_8C = ""
  loc_A8DC4F: FFreeVar var_B8 = "": var_9C = "": var_E8 = "": var_10C = "": var_F8 = "": var_11C = "": var_12C = ""
  loc_A8DC62: Branch loc_A8DCBD
  loc_A8DC65: ILdRf var_A4
  loc_A8DC68: LitI4 &HA
  loc_A8DC6D: EqI4
  loc_A8DC6E: BranchF loc_A8DCBD
  loc_A8DC71: FLdPr Me
  loc_A8DC74: VCallAd Control_ID_CodiCucoMsk
  loc_A8DC77: FStAdFunc var_8C
  loc_A8DC7A: FLdPr var_8C
  loc_A8DC7D: LateIdLdVar var_9C DispID_0 0
  loc_A8DC84: CStrVarTmp
  loc_A8DC85: FStStrNoPop var_A0
  loc_A8DC88: LitStr " - "
  loc_A8DC8B: ConcatStr
  loc_A8DC8C: FStStrNoPop var_154
  loc_A8DC8F: FLdRfVar var_150
  loc_A8DC92: FLdPr Me
  loc_A8DC95: VCallAd Control_ID_DetaCucoLbl
  loc_A8DC98: FStAdFunc var_FC
  loc_A8DC9B: FLdPr var_FC
  loc_A8DC9E:  = Me.Caption
  loc_A8DCA3: ILdRf var_150
  loc_A8DCA6: ConcatStr
  loc_A8DCA7: FStStr var_88
  loc_A8DCAA: FFreeStr var_A0 = "": var_154 = ""
  loc_A8DCB3: FFreeAd var_8C = ""
  loc_A8DCBA: FFree1Var var_9C = ""
  loc_A8DCBD: LitVarStr var_B8, "<html>"
  loc_A8DCC2: PopAdLdVar
  loc_A8DCC3: FLdPr Me
  loc_A8DCC6: MemLdRfVar from_stack_1.htmFile
  loc_A8DCC9: LdPrVar
  loc_A8DCCB: LateMemCall
  loc_A8DCD1: LitVarStr var_B8, "<head>"
  loc_A8DCD6: PopAdLdVar
  loc_A8DCD7: FLdPr Me
  loc_A8DCDA: MemLdRfVar from_stack_1.htmFile
  loc_A8DCDD: LdPrVar
  loc_A8DCDF: LateMemCall
  loc_A8DCE5: LitVarStr var_B8, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A8DCEA: PopAdLdVar
  loc_A8DCEB: FLdPr Me
  loc_A8DCEE: MemLdRfVar from_stack_1.htmFile
  loc_A8DCF1: LdPrVar
  loc_A8DCF3: LateMemCall
  loc_A8DCF9: LitStr "<title>"
  loc_A8DCFC: FLdRfVar var_A0
  loc_A8DCFF: FLdPr Me
  loc_A8DD02:  = Me.Caption
  loc_A8DD07: ILdRf var_A0
  loc_A8DD0A: ConcatStr
  loc_A8DD0B: FStStrNoPop var_150
  loc_A8DD0E: LitStr "</title>"
  loc_A8DD11: ConcatStr
  loc_A8DD12: CVarStr var_9C
  loc_A8DD15: PopAdLdVar
  loc_A8DD16: FLdPr Me
  loc_A8DD19: MemLdRfVar from_stack_1.htmFile
  loc_A8DD1C: LdPrVar
  loc_A8DD1E: LateMemCall
  loc_A8DD24: FFreeStr var_A0 = ""
  loc_A8DD2B: FFree1Var var_9C = ""
  loc_A8DD2E: LitStr vbNullString
  loc_A8DD31: ILdRf Me
  loc_A8DD34: CastAd
  loc_A8DD37: FStAdFunc var_8C
  loc_A8DD3A: FLdRfVar var_8C
  loc_A8DD3D: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A8DD42: FFree1Ad var_8C
  loc_A8DD45: LitI4 0
  loc_A8DD4A: FStStrCopy var_150
  loc_A8DD4D: FLdRfVar var_150
  loc_A8DD50: LitI4 0
  loc_A8DD55: FStStrCopy var_A0
  loc_A8DD58: FLdRfVar var_A0
  loc_A8DD5B: LitI2_Byte 0
  loc_A8DD5D: PopTmpLdAd2 var_A6
  loc_A8DD60: FLdPr Me
  loc_A8DD63: MemLdRfVar from_stack_1.htmFile
  loc_A8DD66: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A8DD6B: FFreeStr var_A0 = ""
  loc_A8DD72: LitVarStr var_B8, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A8DD77: PopAdLdVar
  loc_A8DD78: FLdPr Me
  loc_A8DD7B: MemLdRfVar from_stack_1.htmFile
  loc_A8DD7E: LdPrVar
  loc_A8DD80: LateMemCall
  loc_A8DD86: LitVarStr var_B8, "  <tr valign=""baseline"">"
  loc_A8DD8B: PopAdLdVar
  loc_A8DD8C: FLdPr Me
  loc_A8DD8F: MemLdRfVar from_stack_1.htmFile
  loc_A8DD92: LdPrVar
  loc_A8DD94: LateMemCall
  loc_A8DD9A: LitVarStr var_B8, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A8DD9F: PopAdLdVar
  loc_A8DDA0: FLdPr Me
  loc_A8DDA3: MemLdRfVar from_stack_1.htmFile
  loc_A8DDA6: LdPrVar
  loc_A8DDA8: LateMemCall
  loc_A8DDAE: FLdPr Me
  loc_A8DDB1: MemLdI2 bLogos
  loc_A8DDB4: BranchF loc_A8DDCB
  loc_A8DDB7: LitVarStr var_B8, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A8DDBC: PopAdLdVar
  loc_A8DDBD: FLdPr Me
  loc_A8DDC0: MemLdRfVar from_stack_1.htmFile
  loc_A8DDC3: LdPrVar
  loc_A8DDC5: LateMemCall
  loc_A8DDCB: LitVarStr var_C8, "    <br><br>"
  loc_A8DDD0: LitVarStr var_B8, "Municipalidad de Guaymallén"
  loc_A8DDD5: FStVarCopyObj var_9C
  loc_A8DDD8: FLdRfVar var_9C
  loc_A8DDDB: FLdRfVar var_E8
  loc_A8DDDE: ImpAdCallFPR4  = Ucase()
  loc_A8DDE3: FLdRfVar var_E8
  loc_A8DDE6: ConcatVar var_F8
  loc_A8DDEA: LitVarStr var_D8, "</p>"
  loc_A8DDEF: ConcatVar var_10C
  loc_A8DDF3: PopAdLdVar
  loc_A8DDF4: FLdPr Me
  loc_A8DDF7: MemLdRfVar from_stack_1.htmFile
  loc_A8DDFA: LdPrVar
  loc_A8DDFC: LateMemCall
  loc_A8DE02: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_A8DE0D: LitStr "    <p>"
  loc_A8DE10: FLdRfVar var_A0
  loc_A8DE13: FLdPr Me
  loc_A8DE16:  = Me.Caption
  loc_A8DE1B: ILdRf var_A0
  loc_A8DE1E: ConcatStr
  loc_A8DE1F: FStStrNoPop var_150
  loc_A8DE22: LitStr "</p></th>"
  loc_A8DE25: ConcatStr
  loc_A8DE26: CVarStr var_9C
  loc_A8DE29: PopAdLdVar
  loc_A8DE2A: FLdPr Me
  loc_A8DE2D: MemLdRfVar from_stack_1.htmFile
  loc_A8DE30: LdPrVar
  loc_A8DE32: LateMemCall
  loc_A8DE38: FFreeStr var_A0 = ""
  loc_A8DE3F: FFree1Var var_9C = ""
  loc_A8DE42: LitVarStr var_B8, "  </tr>"
  loc_A8DE47: PopAdLdVar
  loc_A8DE48: FLdPr Me
  loc_A8DE4B: MemLdRfVar from_stack_1.htmFile
  loc_A8DE4E: LdPrVar
  loc_A8DE50: LateMemCall
  loc_A8DE56: LitVarStr var_B8, "  <tr>"
  loc_A8DE5B: PopAdLdVar
  loc_A8DE5C: FLdPr Me
  loc_A8DE5F: MemLdRfVar from_stack_1.htmFile
  loc_A8DE62: LdPrVar
  loc_A8DE64: LateMemCall
  loc_A8DE6A: LitVarStr var_B8, "    <th><hr></th>"
  loc_A8DE6F: PopAdLdVar
  loc_A8DE70: FLdPr Me
  loc_A8DE73: MemLdRfVar from_stack_1.htmFile
  loc_A8DE76: LdPrVar
  loc_A8DE78: LateMemCall
  loc_A8DE7E: LitVarStr var_B8, "  </tr>"
  loc_A8DE83: PopAdLdVar
  loc_A8DE84: FLdPr Me
  loc_A8DE87: MemLdRfVar from_stack_1.htmFile
  loc_A8DE8A: LdPrVar
  loc_A8DE8C: LateMemCall
  loc_A8DE92: LitVarStr var_B8, "  <tr valign=""baseline"">"
  loc_A8DE97: PopAdLdVar
  loc_A8DE98: FLdPr Me
  loc_A8DE9B: MemLdRfVar from_stack_1.htmFile
  loc_A8DE9E: LdPrVar
  loc_A8DEA0: LateMemCall
  loc_A8DEA6: LitStr "    <th align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A8DEA9: FLdRfVar var_A0
  loc_A8DEAC: FLdPr Me
  loc_A8DEAF: VCallAd Control_ID_cboPeriodo
  loc_A8DEB2: FStAdFunc var_8C
  loc_A8DEB5: FLdPr var_8C
  loc_A8DEB8:  = Me.Text
  loc_A8DEBD: ILdRf var_A0
  loc_A8DEC0: ConcatStr
  loc_A8DEC1: FStStrNoPop var_150
  loc_A8DEC4: LitStr "</span><br>"
  loc_A8DEC7: ConcatStr
  loc_A8DEC8: CVarStr var_9C
  loc_A8DECB: PopAdLdVar
  loc_A8DECC: FLdPr Me
  loc_A8DECF: MemLdRfVar from_stack_1.htmFile
  loc_A8DED2: LdPrVar
  loc_A8DED4: LateMemCall
  loc_A8DEDA: FFreeStr var_A0 = ""
  loc_A8DEE1: FFree1Ad var_8C
  loc_A8DEE4: FFree1Var var_9C = ""
  loc_A8DEE7: LitStr "    Cuenta contable: <span class=""Normal"">"
  loc_A8DEEA: ILdRf var_88
  loc_A8DEED: ConcatStr
  loc_A8DEEE: FStStrNoPop var_A0
  loc_A8DEF1: LitStr "</span> </th>"
  loc_A8DEF4: ConcatStr
  loc_A8DEF5: CVarStr var_9C
  loc_A8DEF8: PopAdLdVar
  loc_A8DEF9: FLdPr Me
  loc_A8DEFC: MemLdRfVar from_stack_1.htmFile
  loc_A8DEFF: LdPrVar
  loc_A8DF01: LateMemCall
  loc_A8DF07: FFree1Str var_A0
  loc_A8DF0A: FFree1Var var_9C = ""
  loc_A8DF0D: LitVarStr var_B8, "  </tr>"
  loc_A8DF12: PopAdLdVar
  loc_A8DF13: FLdPr Me
  loc_A8DF16: MemLdRfVar from_stack_1.htmFile
  loc_A8DF19: LdPrVar
  loc_A8DF1B: LateMemCall
  loc_A8DF21: LitVarStr var_B8, "</table>"
  loc_A8DF26: PopAdLdVar
  loc_A8DF27: FLdPr Me
  loc_A8DF2A: MemLdRfVar from_stack_1.htmFile
  loc_A8DF2D: LdPrVar
  loc_A8DF2F: LateMemCall
  loc_A8DF35: LitVarStr var_B8, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8DF3A: PopAdLdVar
  loc_A8DF3B: FLdPr Me
  loc_A8DF3E: MemLdRfVar from_stack_1.htmFile
  loc_A8DF41: LdPrVar
  loc_A8DF43: LateMemCall
  loc_A8DF49: LitVarStr var_B8, "  <THEAD>"
  loc_A8DF4E: PopAdLdVar
  loc_A8DF4F: FLdPr Me
  loc_A8DF52: MemLdRfVar from_stack_1.htmFile
  loc_A8DF55: LdPrVar
  loc_A8DF57: LateMemCall
  loc_A8DF5D: LitVarStr var_B8, "  <tr align=""center"" class=""Encabezado"">"
  loc_A8DF62: PopAdLdVar
  loc_A8DF63: FLdPr Me
  loc_A8DF66: MemLdRfVar from_stack_1.htmFile
  loc_A8DF69: LdPrVar
  loc_A8DF6B: LateMemCall
  loc_A8DF71: LitVarStr var_B8, "    <th>Cuenta contable</th>"
  loc_A8DF76: PopAdLdVar
  loc_A8DF77: FLdPr Me
  loc_A8DF7A: MemLdRfVar from_stack_1.htmFile
  loc_A8DF7D: LdPrVar
  loc_A8DF7F: LateMemCall
  loc_A8DF85: LitVarStr var_B8, "    <th>Detalle</th>"
  loc_A8DF8A: PopAdLdVar
  loc_A8DF8B: FLdPr Me
  loc_A8DF8E: MemLdRfVar from_stack_1.htmFile
  loc_A8DF91: LdPrVar
  loc_A8DF93: LateMemCall
  loc_A8DF99: LitVarStr var_B8, "    <th>Imputable</th>"
  loc_A8DF9E: PopAdLdVar
  loc_A8DF9F: FLdPr Me
  loc_A8DFA2: MemLdRfVar from_stack_1.htmFile
  loc_A8DFA5: LdPrVar
  loc_A8DFA7: LateMemCall
  loc_A8DFAD: LitVarStr var_B8, "    <th>Tipo de cuenta</th>"
  loc_A8DFB2: PopAdLdVar
  loc_A8DFB3: FLdPr Me
  loc_A8DFB6: MemLdRfVar from_stack_1.htmFile
  loc_A8DFB9: LdPrVar
  loc_A8DFBB: LateMemCall
  loc_A8DFC1: LitVarStr var_B8, "  </tr>"
  loc_A8DFC6: PopAdLdVar
  loc_A8DFC7: FLdPr Me
  loc_A8DFCA: MemLdRfVar from_stack_1.htmFile
  loc_A8DFCD: LdPrVar
  loc_A8DFCF: LateMemCall
  loc_A8DFD5: LitVarStr var_B8, "  </THEAD>"
  loc_A8DFDA: PopAdLdVar
  loc_A8DFDB: FLdPr Me
  loc_A8DFDE: MemLdRfVar from_stack_1.htmFile
  loc_A8DFE1: LdPrVar
  loc_A8DFE3: LateMemCall
  loc_A8DFE9: ExitProcHresult
End Function

Private Function Proc_197_24_982770() '982770
  'Data Table: 458868
  loc_982730: LitVarStr var_94, "</table>"
  loc_982735: PopAdLdVar
  loc_982736: FLdPr Me
  loc_982739: MemLdRfVar from_stack_1.htmFile
  loc_98273C: LdPrVar
  loc_98273E: LateMemCall
  loc_982744: LitVarStr var_94, "</body>"
  loc_982749: PopAdLdVar
  loc_98274A: FLdPr Me
  loc_98274D: MemLdRfVar from_stack_1.htmFile
  loc_982750: LdPrVar
  loc_982752: LateMemCall
  loc_982758: LitVarStr var_94, "</html>"
  loc_98275D: PopAdLdVar
  loc_98275E: FLdPr Me
  loc_982761: MemLdRfVar from_stack_1.htmFile
  loc_982764: LdPrVar
  loc_982766: LateMemCall
  loc_98276C: ExitProcHresult
End Function
