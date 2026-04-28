VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoI
  Caption = "Acuerdo 3949 - Anexo I"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoI.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9390
  ClientHeight = 3150
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2895
    Width = 9390
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA3949AnexoI.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptA3949AnexoI.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoI.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1680
    Width = 6015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 15
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6495
    Height = 1575
    TabIndex = 0
    Begin VB.ComboBox cboTrimestre
      Style = 2
      ForeColor = &HFF0000&
      Left = 1785
      Top = 840
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 960
      Top = 840
      Width = 690
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 600
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptA3949AnexoI.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoI"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdTxt_Click() '959500
  'Data Table: 46737C
  loc_9594E8: LitI2_Byte &HFF
  loc_9594EA: ILdRf Me
  loc_9594ED: CastAd
  loc_9594F0: FStAdFunc var_88
  loc_9594F3: FLdRfVar var_88
  loc_9594F6: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_9594FB: FFree1Ad var_88
  loc_9594FE: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95A2F4
  'Data Table: 46737C
  loc_95A2DC: ILdRf Me
  loc_95A2DF: CastAd
  loc_95A2E2: FStAdFunc var_88
  loc_95A2E5: FLdRfVar var_88
  loc_95A2E8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95A2ED: FFree1Ad var_88
  loc_95A2F0: ExitProcHresult
  loc_95A2F1: LitVar_TRUE arg_23
End Sub

Private Sub cmdPredeterminada_Click(arg_24) '9552CC
  'Data Table: 46737C
  loc_9552B4: ILdRf Me
  loc_9552B7: CastAd
  loc_9552BA: FStAdFunc var_88
  loc_9552BD: FLdRfVar var_88
  loc_9552C0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9552C5: FFree1Ad var_88
  loc_9552C8: ExitProcHresult
  loc_9552C9: LitVar_Missing arg_24
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9858C4
  'Data Table: 46737C
  loc_98588C: FLdPr Me
  loc_98588F: VCallAd Control_ID_statusBar
  loc_985892: FStAdFunc var_88
  loc_985895: FLdPr var_88
  loc_985898: LateIdLdVar var_98 DispID_1 0
  loc_98589F: CStrVarTmp
  loc_9858A0: CVarStr var_A8
  loc_9858A3: PopAdLdVar
  loc_9858A4: FLdPr Me
  loc_9858A7: VCallAd Control_ID_statusBar
  loc_9858AA: FStAdFunc var_BC
  loc_9858AD: FLdPr var_BC
  loc_9858B0: LateIdSt
  loc_9858B5: FFreeAd var_88 = ""
  loc_9858BC: FFreeVar var_98 = ""
  loc_9858C3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B99C
  'Data Table: 46737C
  loc_96B980: LitI2_Byte &HFF
  loc_96B982: LitI2_Byte 0
  loc_96B984: ILdRf Me
  loc_96B987: CastAd
  loc_96B98A: FStAdFunc var_88
  loc_96B98D: FLdRfVar var_88
  loc_96B990: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B995: FFree1Ad var_88
  loc_96B998: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '955318
  'Data Table: 46737C
  loc_955300: ILdRf Me
  loc_955303: CastAd
  loc_955306: FStAdFunc var_88
  loc_955309: FLdRfVar var_88
  loc_95530C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_955311: FFree1Ad var_88
  loc_955314: ExitProcHresult
  loc_955315: MemLdFPR4 global_854
End Sub

Private Sub cmdSalir_Click() '976798
  'Data Table: 46737C
  loc_976768: LitVarStr var_94, "Cerrando..."
  loc_97676D: PopAdLdVar
  loc_97676E: FLdPr Me
  loc_976771: VCallAd Control_ID_statusBar
  loc_976774: FStAdFunc var_A8
  loc_976777: FLdPr var_A8
  loc_97677A: LateIdSt
  loc_97677F: FFree1Ad var_A8
  loc_976782: ILdRf Me
  loc_976785: FStAdNoPop
  loc_976789: ImpAdLdRf MemVar_C44F9C
  loc_97678C: NewIfNullPr Me
  loc_97678F: Me.Global.Unload from_stack_1
  loc_976794: FFree1Ad var_A8
  loc_976797: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1FC28
  'Data Table: 46737C
  loc_A1FA88: LitI2_Byte &HFF
  loc_A1FA8A: ImpAdStI2 MemVar_C3D840
  loc_A1FA8D: ILdRf Me
  loc_A1FA90: CastAd
  loc_A1FA93: FStAdFunc var_88
  loc_A1FA96: FLdRfVar var_88
  loc_A1FA99: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1FA9E: FFree1Ad var_88
  loc_A1FAA1: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1FAA4: FLdPr Me
  loc_A1FAA7: MemLdRfVar from_stack_1.global_72
  loc_A1FAAA: NewIfNullPr clsperiodo
  loc_A1FAAD: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1FAB2: FLdRfVar var_8C
  loc_A1FAB5: FLdPr Me
  loc_A1FAB8: MemLdRfVar from_stack_1.global_72
  loc_A1FABB: NewIfNullPr clsperiodo
  loc_A1FABE: from_stack_1 = clsperiodo.RecordCount
  loc_A1FAC3: ILdRf var_8C
  loc_A1FAC6: LitI4 0
  loc_A1FACB: GtI4
  loc_A1FACC: BranchF loc_A1FB6B
  loc_A1FACF: FLdPr Me
  loc_A1FAD2: MemLdRfVar from_stack_1.global_72
  loc_A1FAD5: NewIfNullPr clsperiodo
  loc_A1FAD8: Call clsperiodo.MoveFirst()
  loc_A1FADD: FLdRfVar var_8E
  loc_A1FAE0: FLdPr Me
  loc_A1FAE3: MemLdRfVar from_stack_1.global_72
  loc_A1FAE6: NewIfNullPr clsperiodo
  loc_A1FAE9: from_stack_1 = clsperiodo.EOF
  loc_A1FAEE: FLdI2 var_8E
  loc_A1FAF1: NotI4
  loc_A1FAF2: BranchF loc_A1FB6B
  loc_A1FAF5: LitVar_Missing var_CC
  loc_A1FAF8: PopAdLdVar
  loc_A1FAF9: FLdRfVar var_B8
  loc_A1FAFC: FLdRfVar var_A8
  loc_A1FAFF: LitVarStr var_A4, "PeriInfo"
  loc_A1FB04: PopAdLdVar
  loc_A1FB05: FLdRfVar var_94
  loc_A1FB08: FLdRfVar var_88
  loc_A1FB0B: FLdPr Me
  loc_A1FB0E: MemLdRfVar from_stack_1.global_72
  loc_A1FB11: NewIfNullPr clsperiodo
  loc_A1FB14: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1FB19: FLdPr var_88
  loc_A1FB1C:  = Me.Fields
  loc_A1FB21: FLdPr var_94
  loc_A1FB24: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FB29: FLdPr var_A8
  loc_A1FB2C:  = Me.Value
  loc_A1FB31: FLdRfVar var_B8
  loc_A1FB34: CStrVarTmp
  loc_A1FB35: FStStrNoPop var_BC
  loc_A1FB38: FLdPr Me
  loc_A1FB3B: VCallAd Control_ID_cboPeriodo
  loc_A1FB3E: FStAdFunc var_D0
  loc_A1FB41: FLdPr var_D0
  loc_A1FB44: Me.AddItem from_stack_1, from_stack_2
  loc_A1FB49: FFree1Str var_BC
  loc_A1FB4C: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A1FB57: FFree1Var var_B8 = ""
  loc_A1FB5A: FLdPr Me
  loc_A1FB5D: MemLdRfVar from_stack_1.global_72
  loc_A1FB60: NewIfNullPr clsperiodo
  loc_A1FB63: Call clsperiodo.MoveSiguiente()
  loc_A1FB68: Branch loc_A1FADD
  loc_A1FB6B: FLdPr Me
  loc_A1FB6E: VCallAd Control_ID_cboTrimestre
  loc_A1FB71: FStAdFunc var_D4
  loc_A1FB74: LitVar_Missing var_A4
  loc_A1FB77: PopAdLdVar
  loc_A1FB78: LitStr "Primero"
  loc_A1FB7B: FLdPr var_D4
  loc_A1FB7E: Me.AddItem from_stack_1, from_stack_2
  loc_A1FB83: LitI4 1
  loc_A1FB88: FLdRfVar var_8E
  loc_A1FB8B: FLdPr var_D4
  loc_A1FB8E:  = Me.NewIndex
  loc_A1FB93: FLdI2 var_8E
  loc_A1FB96: FLdPr var_D4
  loc_A1FB99: Me.ItemData = from_stack_1
  loc_A1FB9E: LitVar_Missing var_A4
  loc_A1FBA1: PopAdLdVar
  loc_A1FBA2: LitStr "Segundo"
  loc_A1FBA5: FLdPr var_D4
  loc_A1FBA8: Me.AddItem from_stack_1, from_stack_2
  loc_A1FBAD: LitI4 2
  loc_A1FBB2: FLdRfVar var_8E
  loc_A1FBB5: FLdPr var_D4
  loc_A1FBB8:  = Me.NewIndex
  loc_A1FBBD: FLdI2 var_8E
  loc_A1FBC0: FLdPr var_D4
  loc_A1FBC3: Me.ItemData = from_stack_1
  loc_A1FBC8: LitVar_Missing var_A4
  loc_A1FBCB: PopAdLdVar
  loc_A1FBCC: LitStr "Tercero"
  loc_A1FBCF: FLdPr var_D4
  loc_A1FBD2: Me.AddItem from_stack_1, from_stack_2
  loc_A1FBD7: LitI4 3
  loc_A1FBDC: FLdRfVar var_8E
  loc_A1FBDF: FLdPr var_D4
  loc_A1FBE2:  = Me.NewIndex
  loc_A1FBE7: FLdI2 var_8E
  loc_A1FBEA: FLdPr var_D4
  loc_A1FBED: Me.ItemData = from_stack_1
  loc_A1FBF2: LitVar_Missing var_A4
  loc_A1FBF5: PopAdLdVar
  loc_A1FBF6: LitStr "Cuarto"
  loc_A1FBF9: FLdPr var_D4
  loc_A1FBFC: Me.AddItem from_stack_1, from_stack_2
  loc_A1FC01: LitI4 4
  loc_A1FC06: FLdRfVar var_8E
  loc_A1FC09: FLdPr var_D4
  loc_A1FC0C:  = Me.NewIndex
  loc_A1FC11: FLdI2 var_8E
  loc_A1FC14: FLdPr var_D4
  loc_A1FC17: Me.ItemData = from_stack_1
  loc_A1FC1C: LitNothing
  loc_A1FC1E: FStAd var_D4 
  loc_A1FC22: Call cmdNueva_Click()
  loc_A1FC27: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954EA4
  'Data Table: 46737C
  loc_954E8C: FLdPr Me
  loc_954E8F: VCallAd Control_ID_wbbReporte
  loc_954E92: FStAdFunc var_88
  loc_954E95: FLdRfVar var_88
  loc_954E98: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_954E9D: FFree1Ad var_88
  loc_954EA0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9550B8
  'Data Table: 46737C
  loc_9550A0: LitI2_Byte 0
  loc_9550A2: ILdRf Me
  loc_9550A5: CastAd
  loc_9550A8: FStAdFunc var_88
  loc_9550AB: FLdRfVar var_88
  loc_9550AE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9550B3: FFree1Ad var_88
  loc_9550B6: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A120C0
  'Data Table: 46737C
  loc_A11F48: LitI2_Byte 0
  loc_A11F4A: FLdPr Me
  loc_A11F4D: MemStI2 bGenerado
  loc_A11F50: LitI2_Byte &HFF
  loc_A11F52: FLdPr Me
  loc_A11F55: MemStI2 bLogos
  loc_A11F58: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A11F5D: ImpAdLdI2 MemVar_C3D064
  loc_A11F60: CStrUI1
  loc_A11F62: FStStrNoPop var_88
  loc_A11F65: FLdPr Me
  loc_A11F68: VCallAd Control_ID_cboPeriodo
  loc_A11F6B: FStAdFunc var_8C
  loc_A11F6E: FLdPr var_8C
  loc_A11F71: Me.Text = from_stack_1
  loc_A11F76: FFree1Str var_88
  loc_A11F79: FFree1Ad var_8C
  loc_A11F7C: FLdRfVar var_9C
  loc_A11F7F: ImpAdCallFPR4  = Date
  loc_A11F84: FLdRfVar var_9C
  loc_A11F87: FLdRfVar var_AC
  loc_A11F8A: ImpAdCallFPR4  = Month()
  loc_A11F8F: FLdRfVar var_AC
  loc_A11F92: FStVar var_BC
  loc_A11F96: FFree1Var var_9C = ""
  loc_A11F99: FLdRfVar var_BC
  loc_A11F9C: LitVarI2 var_CC, 1
  loc_A11FA1: HardType
  loc_A11FA2: EqVarBool
  loc_A11FA4: BranchT loc_A11FC3
  loc_A11FA7: FLdRfVar var_BC
  loc_A11FAA: LitVarI2 var_DC, 2
  loc_A11FAF: HardType
  loc_A11FB0: EqVarBool
  loc_A11FB2: BranchT loc_A11FC3
  loc_A11FB5: FLdRfVar var_BC
  loc_A11FB8: LitVarI2 var_EC, 3
  loc_A11FBD: HardType
  loc_A11FBE: EqVarBool
  loc_A11FC0: BranchF loc_A11FDD
  loc_A11FC3: LitStr "Primero"
  loc_A11FC6: FLdPr Me
  loc_A11FC9: VCallAd Control_ID_cboTrimestre
  loc_A11FCC: FStAdFunc var_8C
  loc_A11FCF: FLdPr var_8C
  loc_A11FD2: Me.Text = from_stack_1
  loc_A11FD7: FFree1Ad var_8C
  loc_A11FDA: Branch loc_A120A6
  loc_A11FDD: FLdRfVar var_BC
  loc_A11FE0: LitVarI2 var_CC, 4
  loc_A11FE5: HardType
  loc_A11FE6: EqVarBool
  loc_A11FE8: BranchT loc_A12007
  loc_A11FEB: FLdRfVar var_BC
  loc_A11FEE: LitVarI2 var_DC, 5
  loc_A11FF3: HardType
  loc_A11FF4: EqVarBool
  loc_A11FF6: BranchT loc_A12007
  loc_A11FF9: FLdRfVar var_BC
  loc_A11FFC: LitVarI2 var_EC, 6
  loc_A12001: HardType
  loc_A12002: EqVarBool
  loc_A12004: BranchF loc_A12021
  loc_A12007: LitStr "Segundo"
  loc_A1200A: FLdPr Me
  loc_A1200D: VCallAd Control_ID_cboTrimestre
  loc_A12010: FStAdFunc var_8C
  loc_A12013: FLdPr var_8C
  loc_A12016: Me.Text = from_stack_1
  loc_A1201B: FFree1Ad var_8C
  loc_A1201E: Branch loc_A120A6
  loc_A12021: FLdRfVar var_BC
  loc_A12024: LitVarI2 var_CC, 7
  loc_A12029: HardType
  loc_A1202A: EqVarBool
  loc_A1202C: BranchT loc_A1204B
  loc_A1202F: FLdRfVar var_BC
  loc_A12032: LitVarI2 var_DC, 8
  loc_A12037: HardType
  loc_A12038: EqVarBool
  loc_A1203A: BranchT loc_A1204B
  loc_A1203D: FLdRfVar var_BC
  loc_A12040: LitVarI2 var_EC, 9
  loc_A12045: HardType
  loc_A12046: EqVarBool
  loc_A12048: BranchF loc_A12065
  loc_A1204B: LitStr "Tercero"
  loc_A1204E: FLdPr Me
  loc_A12051: VCallAd Control_ID_cboTrimestre
  loc_A12054: FStAdFunc var_8C
  loc_A12057: FLdPr var_8C
  loc_A1205A: Me.Text = from_stack_1
  loc_A1205F: FFree1Ad var_8C
  loc_A12062: Branch loc_A120A6
  loc_A12065: FLdRfVar var_BC
  loc_A12068: LitVarI2 var_CC, 10
  loc_A1206D: HardType
  loc_A1206E: EqVarBool
  loc_A12070: BranchT loc_A1208F
  loc_A12073: FLdRfVar var_BC
  loc_A12076: LitVarI2 var_DC, 11
  loc_A1207B: HardType
  loc_A1207C: EqVarBool
  loc_A1207E: BranchT loc_A1208F
  loc_A12081: FLdRfVar var_BC
  loc_A12084: LitVarI2 var_EC, 12
  loc_A12089: HardType
  loc_A1208A: EqVarBool
  loc_A1208C: BranchF loc_A120A6
  loc_A1208F: LitStr "Cuarto"
  loc_A12092: FLdPr Me
  loc_A12095: VCallAd Control_ID_cboTrimestre
  loc_A12098: FStAdFunc var_8C
  loc_A1209B: FLdPr var_8C
  loc_A1209E: Me.Text = from_stack_1
  loc_A120A3: FFree1Ad var_8C
  loc_A120A6: Call HabilitarCriterio()
  loc_A120AB: ILdRf Me
  loc_A120AE: CastAd
  loc_A120B1: FStAdFunc var_8C
  loc_A120B4: FLdRfVar var_8C
  loc_A120B7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A120BC: FFree1Ad var_8C
  loc_A120BF: ExitProcHresult
End Sub

Public Function htmFileGet() '4680F4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '468103
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '468112
  htmFile = Value
End Sub

Public Function bLogosGet() '468121
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '468130
  bLogos = Value
End Sub

Public Function bGeneradoGet() '46813F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46814E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991D90
  'Data Table: 46737C
  loc_991D4C: LitI4 0
  loc_991D51: LitI4 1
  loc_991D56: FLdRfVar var_88
  loc_991D59: Redim
  loc_991D63: FLdPr Me
  loc_991D66: VCallAd Control_ID_cboPeriodo
  loc_991D69: CVarAd
  loc_991D6D: ParmAry1St
  loc_991D73: FLdPr Me
  loc_991D76: VCallAd Control_ID_cboTrimestre
  loc_991D79: CVarAd
  loc_991D7D: ParmAry1St
  loc_991D83: FLdRfVar var_88
  loc_991D86: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_991D8B: FLdRfVar var_88
  loc_991D8E: Erase
  loc_991D8F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8BF1C
  'Data Table: 46737C
  loc_A8BABC: FLdPr Me
  loc_A8BABF: MemLdI2 bGenerado
  loc_A8BAC2: BranchF loc_A8BAC6
  loc_A8BAC5: ExitProcHresult
  loc_A8BAC6: LitVarStr var_94, "Generando reporte..."
  loc_A8BACB: PopAdLdVar
  loc_A8BACC: FLdPr Me
  loc_A8BACF: VCallAd Control_ID_statusBar
  loc_A8BAD2: FStAdFunc var_A8
  loc_A8BAD5: FLdPr var_A8
  loc_A8BAD8: LateIdSt
  loc_A8BADD: FFree1Ad var_A8
  loc_A8BAE0: LitI4 &HB
  loc_A8BAE5: CI2I4
  loc_A8BAE6: FLdPr Me
  loc_A8BAE9: Me.MousePointer = from_stack_1
  loc_A8BAEE: FLdRfVar var_B4
  loc_A8BAF1: FLdRfVar var_AA
  loc_A8BAF4: FLdPr Me
  loc_A8BAF7: VCallAd Control_ID_cboTrimestre
  loc_A8BAFA: FStAdFunc var_A8
  loc_A8BAFD: FLdPr var_A8
  loc_A8BB00:  = Me.ListIndex
  loc_A8BB05: FLdI2 var_AA
  loc_A8BB08: FLdPr Me
  loc_A8BB0B: VCallAd Control_ID_cboTrimestre
  loc_A8BB0E: FStAdFunc var_B0
  loc_A8BB11: FLdPr var_B0
  loc_A8BB14:  = Me.ItemData
  loc_A8BB19: ILdRf var_B4
  loc_A8BB1C: LitI4 3
  loc_A8BB21: MulI4
  loc_A8BB22: CI2I4
  loc_A8BB23: FLdPr Me
  loc_A8BB26: MemStI2 global_168
  loc_A8BB29: FFreeAd var_A8 = ""
  loc_A8BB30: LitI2_Byte 0
  loc_A8BB32: FLdPr Me
  loc_A8BB35: MemStI2 global_170
  loc_A8BB38: LitI4 0
  loc_A8BB3D: LitI4 &HE
  loc_A8BB42: FLdRfVar var_B8
  loc_A8BB45: Redim
  loc_A8BB4F: FLdPr Me
  loc_A8BB52: MemLdRfVar from_stack_1.global_100
  loc_A8BB55: CVarRef
  loc_A8BB5A: ParmAry1St
  loc_A8BB60: FLdPr Me
  loc_A8BB63: MemLdRfVar from_stack_1.global_104
  loc_A8BB66: CVarRef
  loc_A8BB6B: ParmAry1St
  loc_A8BB71: FLdPr Me
  loc_A8BB74: MemLdRfVar from_stack_1.global_108
  loc_A8BB77: CVarRef
  loc_A8BB7C: ParmAry1St
  loc_A8BB82: FLdPr Me
  loc_A8BB85: MemLdRfVar from_stack_1.global_112
  loc_A8BB88: CVarRef
  loc_A8BB8D: ParmAry1St
  loc_A8BB93: FLdPr Me
  loc_A8BB96: MemLdRfVar from_stack_1.global_116
  loc_A8BB99: CVarRef
  loc_A8BB9E: ParmAry1St
  loc_A8BBA4: FLdPr Me
  loc_A8BBA7: MemLdRfVar from_stack_1.global_120
  loc_A8BBAA: CVarRef
  loc_A8BBAF: ParmAry1St
  loc_A8BBB5: FLdPr Me
  loc_A8BBB8: MemLdRfVar from_stack_1.global_124
  loc_A8BBBB: CVarRef
  loc_A8BBC0: ParmAry1St
  loc_A8BBC6: FLdPr Me
  loc_A8BBC9: MemLdRfVar from_stack_1.global_128
  loc_A8BBCC: CVarRef
  loc_A8BBD1: ParmAry1St
  loc_A8BBD7: FLdPr Me
  loc_A8BBDA: MemLdRfVar from_stack_1.global_132
  loc_A8BBDD: CVarRef
  loc_A8BBE2: ParmAry1St
  loc_A8BBE8: FLdPr Me
  loc_A8BBEB: MemLdRfVar from_stack_1.global_136
  loc_A8BBEE: CVarRef
  loc_A8BBF3: ParmAry1St
  loc_A8BBF9: FLdPr Me
  loc_A8BBFC: MemLdRfVar from_stack_1.global_140
  loc_A8BBFF: CVarRef
  loc_A8BC04: ParmAry1St
  loc_A8BC0A: FLdPr Me
  loc_A8BC0D: MemLdRfVar from_stack_1.global_144
  loc_A8BC10: CVarRef
  loc_A8BC15: ParmAry1St
  loc_A8BC1B: FLdPr Me
  loc_A8BC1E: MemLdRfVar from_stack_1.global_148
  loc_A8BC21: CVarRef
  loc_A8BC26: ParmAry1St
  loc_A8BC2C: FLdPr Me
  loc_A8BC2F: MemLdRfVar from_stack_1.global_152
  loc_A8BC32: CVarRef
  loc_A8BC37: ParmAry1St
  loc_A8BC3D: FLdPr Me
  loc_A8BC40: MemLdRfVar from_stack_1.global_156
  loc_A8BC43: CVarRef
  loc_A8BC48: ParmAry1St
  loc_A8BC4E: FLdRfVar var_B8
  loc_A8BC51: Call Proc_160_23_971164()
  loc_A8BC56: FLdRfVar var_B8
  loc_A8BC59: Erase
  loc_A8BC5A: LitStr "Municipalidad de Guaymallén"
  loc_A8BC5D: FStStrCopy var_18C
  loc_A8BC60: ILdRf var_18C
  loc_A8BC63: LitStr "Municipalidad de ......"
  loc_A8BC66: EqStr
  loc_A8BC68: BranchF loc_A8BC6E
  loc_A8BC6B: Branch loc_A8BED3
  loc_A8BC6E: FLdRfVar var_194
  loc_A8BC71: LitI2_Byte &HFF
  loc_A8BC73: LitStr "RecursosCorrientes"
  loc_A8BC76: Call Proc_160_24_A85E78()
  loc_A8BC7B: LitI2_Byte 0
  loc_A8BC7D: LitVar_Missing var_1A4
  loc_A8BC80: LitI2_Byte &HFF
  loc_A8BC82: FLdFPR8 var_194
  loc_A8BC85: CVarR8
  loc_A8BC89: PopAdLdVar
  loc_A8BC8A: FLdPr Me
  loc_A8BC8D: MemLdRfVar from_stack_1.global_100
  loc_A8BC90: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BC95: FFree1Var var_1A4 = ""
  loc_A8BC98: FLdRfVar var_194
  loc_A8BC9B: LitI2_Byte &HFF
  loc_A8BC9D: LitStr "GastosCorrientes"
  loc_A8BCA0: Call Proc_160_24_A85E78()
  loc_A8BCA5: LitI2_Byte 0
  loc_A8BCA7: LitVar_Missing var_1A4
  loc_A8BCAA: LitI2_Byte &HFF
  loc_A8BCAC: FLdFPR8 var_194
  loc_A8BCAF: CVarR8
  loc_A8BCB3: PopAdLdVar
  loc_A8BCB4: FLdPr Me
  loc_A8BCB7: MemLdRfVar from_stack_1.global_104
  loc_A8BCBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BCBF: FFree1Var var_1A4 = ""
  loc_A8BCC2: LitI2_Byte 0
  loc_A8BCC4: LitVar_Missing var_1A4
  loc_A8BCC7: LitI2_Byte &HFF
  loc_A8BCC9: FLdPr Me
  loc_A8BCCC: MemLdStr global_100
  loc_A8BCCF: CR8Str
  loc_A8BCD1: FLdPr Me
  loc_A8BCD4: MemLdStr global_104
  loc_A8BCD7: CR8Str
  loc_A8BCD9: SubR4
  loc_A8BCDA: CVarR8
  loc_A8BCDE: PopAdLdVar
  loc_A8BCDF: FLdPr Me
  loc_A8BCE2: MemLdRfVar from_stack_1.global_108
  loc_A8BCE5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BCEA: FFree1Var var_1A4 = ""
  loc_A8BCED: FLdRfVar var_194
  loc_A8BCF0: LitI2_Byte &HFF
  loc_A8BCF2: LitStr "RecursosCapital"
  loc_A8BCF5: Call Proc_160_24_A85E78()
  loc_A8BCFA: LitI2_Byte 0
  loc_A8BCFC: LitVar_Missing var_1A4
  loc_A8BCFF: LitI2_Byte &HFF
  loc_A8BD01: FLdFPR8 var_194
  loc_A8BD04: CVarR8
  loc_A8BD08: PopAdLdVar
  loc_A8BD09: FLdPr Me
  loc_A8BD0C: MemLdRfVar from_stack_1.global_112
  loc_A8BD0F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BD14: FFree1Var var_1A4 = ""
  loc_A8BD17: FLdRfVar var_194
  loc_A8BD1A: LitI2_Byte &HFF
  loc_A8BD1C: LitStr "GastosCapital"
  loc_A8BD1F: Call Proc_160_24_A85E78()
  loc_A8BD24: LitI2_Byte 0
  loc_A8BD26: LitVar_Missing var_1A4
  loc_A8BD29: LitI2_Byte &HFF
  loc_A8BD2B: FLdFPR8 var_194
  loc_A8BD2E: CVarR8
  loc_A8BD32: PopAdLdVar
  loc_A8BD33: FLdPr Me
  loc_A8BD36: MemLdRfVar from_stack_1.global_116
  loc_A8BD39: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BD3E: FFree1Var var_1A4 = ""
  loc_A8BD41: LitI2_Byte 0
  loc_A8BD43: LitVar_Missing var_1A4
  loc_A8BD46: LitI2_Byte &HFF
  loc_A8BD48: FLdPr Me
  loc_A8BD4B: MemLdStr global_108
  loc_A8BD4E: CR8Str
  loc_A8BD50: FLdPr Me
  loc_A8BD53: MemLdStr global_112
  loc_A8BD56: CR8Str
  loc_A8BD58: AddR8
  loc_A8BD59: FLdPr Me
  loc_A8BD5C: MemLdStr global_116
  loc_A8BD5F: CR8Str
  loc_A8BD61: SubR4
  loc_A8BD62: CVarR8
  loc_A8BD66: PopAdLdVar
  loc_A8BD67: FLdPr Me
  loc_A8BD6A: MemLdRfVar from_stack_1.global_120
  loc_A8BD6D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BD72: FFree1Var var_1A4 = ""
  loc_A8BD75: LitI2_Byte 0
  loc_A8BD77: LitVar_Missing var_1A4
  loc_A8BD7A: LitI2_Byte &HFF
  loc_A8BD7C: FLdPr Me
  loc_A8BD7F: MemLdStr global_100
  loc_A8BD82: CR8Str
  loc_A8BD84: FLdPr Me
  loc_A8BD87: MemLdStr global_112
  loc_A8BD8A: CR8Str
  loc_A8BD8C: AddR8
  loc_A8BD8D: CVarR8
  loc_A8BD91: PopAdLdVar
  loc_A8BD92: FLdPr Me
  loc_A8BD95: MemLdRfVar from_stack_1.global_124
  loc_A8BD98: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BD9D: FFree1Var var_1A4 = ""
  loc_A8BDA0: LitI2_Byte 0
  loc_A8BDA2: LitVar_Missing var_1A4
  loc_A8BDA5: LitI2_Byte &HFF
  loc_A8BDA7: FLdPr Me
  loc_A8BDAA: MemLdStr global_104
  loc_A8BDAD: CR8Str
  loc_A8BDAF: FLdPr Me
  loc_A8BDB2: MemLdStr global_116
  loc_A8BDB5: CR8Str
  loc_A8BDB7: AddR8
  loc_A8BDB8: CVarR8
  loc_A8BDBC: PopAdLdVar
  loc_A8BDBD: FLdPr Me
  loc_A8BDC0: MemLdRfVar from_stack_1.global_128
  loc_A8BDC3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BDC8: FFree1Var var_1A4 = ""
  loc_A8BDCB: FLdRfVar var_194
  loc_A8BDCE: LitI2_Byte &HFF
  loc_A8BDD0: LitStr "GastosFigurativos"
  loc_A8BDD3: Call Proc_160_24_A85E78()
  loc_A8BDD8: LitI2_Byte 0
  loc_A8BDDA: LitVar_Missing var_1A4
  loc_A8BDDD: LitI2_Byte &HFF
  loc_A8BDDF: FLdFPR8 var_194
  loc_A8BDE2: CVarR8
  loc_A8BDE6: PopAdLdVar
  loc_A8BDE7: FLdPr Me
  loc_A8BDEA: MemLdRfVar from_stack_1.global_136
  loc_A8BDED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BDF2: FFree1Var var_1A4 = ""
  loc_A8BDF5: LitI2_Byte 0
  loc_A8BDF7: LitVar_Missing var_1A4
  loc_A8BDFA: LitI2_Byte &HFF
  loc_A8BDFC: FLdPr Me
  loc_A8BDFF: MemLdStr global_120
  loc_A8BE02: CR8Str
  loc_A8BE04: FLdPr Me
  loc_A8BE07: MemLdStr global_132
  loc_A8BE0A: CR8Str
  loc_A8BE0C: AddR8
  loc_A8BE0D: FLdPr Me
  loc_A8BE10: MemLdStr global_136
  loc_A8BE13: CR8Str
  loc_A8BE15: SubR4
  loc_A8BE16: CVarR8
  loc_A8BE1A: PopAdLdVar
  loc_A8BE1B: FLdPr Me
  loc_A8BE1E: MemLdRfVar from_stack_1.global_140
  loc_A8BE21: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BE26: FFree1Var var_1A4 = ""
  loc_A8BE29: FLdRfVar var_194
  loc_A8BE2C: LitI2_Byte &HFF
  loc_A8BE2E: LitStr "FuentesFinanciamiento"
  loc_A8BE31: Call Proc_160_24_A85E78()
  loc_A8BE36: LitI2_Byte 0
  loc_A8BE38: LitVar_Missing var_1A4
  loc_A8BE3B: LitI2_Byte &HFF
  loc_A8BE3D: FLdFPR8 var_194
  loc_A8BE40: CVarR8
  loc_A8BE44: PopAdLdVar
  loc_A8BE45: FLdPr Me
  loc_A8BE48: MemLdRfVar from_stack_1.global_144
  loc_A8BE4B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BE50: FFree1Var var_1A4 = ""
  loc_A8BE53: FLdRfVar var_194
  loc_A8BE56: LitI2_Byte &HFF
  loc_A8BE58: LitStr "AplicacionesFinancieras"
  loc_A8BE5B: Call Proc_160_24_A85E78()
  loc_A8BE60: LitI2_Byte 0
  loc_A8BE62: LitVar_Missing var_1A4
  loc_A8BE65: LitI2_Byte &HFF
  loc_A8BE67: FLdFPR8 var_194
  loc_A8BE6A: CVarR8
  loc_A8BE6E: PopAdLdVar
  loc_A8BE6F: FLdPr Me
  loc_A8BE72: MemLdRfVar from_stack_1.global_148
  loc_A8BE75: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BE7A: FFree1Var var_1A4 = ""
  loc_A8BE7D: LitI2_Byte 0
  loc_A8BE7F: LitVar_Missing var_1A4
  loc_A8BE82: LitI2_Byte &HFF
  loc_A8BE84: FLdPr Me
  loc_A8BE87: MemLdStr global_144
  loc_A8BE8A: CR8Str
  loc_A8BE8C: FLdPr Me
  loc_A8BE8F: MemLdStr global_148
  loc_A8BE92: CR8Str
  loc_A8BE94: SubR4
  loc_A8BE95: CVarR8
  loc_A8BE99: PopAdLdVar
  loc_A8BE9A: FLdPr Me
  loc_A8BE9D: MemLdRfVar from_stack_1.global_152
  loc_A8BEA0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BEA5: FFree1Var var_1A4 = ""
  loc_A8BEA8: LitI2_Byte 0
  loc_A8BEAA: LitVar_Missing var_1A4
  loc_A8BEAD: LitI2_Byte &HFF
  loc_A8BEAF: FLdPr Me
  loc_A8BEB2: MemLdStr global_140
  loc_A8BEB5: CR8Str
  loc_A8BEB7: FLdPr Me
  loc_A8BEBA: MemLdStr global_152
  loc_A8BEBD: CR8Str
  loc_A8BEBF: AddR8
  loc_A8BEC0: CVarR8
  loc_A8BEC4: PopAdLdVar
  loc_A8BEC5: FLdPr Me
  loc_A8BEC8: MemLdRfVar from_stack_1.global_156
  loc_A8BECB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8BED0: FFree1Var var_1A4 = ""
  loc_A8BED3: FLdPr Me
  loc_A8BED6: MemLdI2 global_170
  loc_A8BED9: BranchF loc_A8BEE7
  loc_A8BEDC: LitI2_Byte &HFF
  loc_A8BEDE: FLdPr Me
  loc_A8BEE1: MemStI2 bGenerado
  loc_A8BEE4: Branch loc_A8BEF4
  loc_A8BEE7: LitI4 0
  loc_A8BEEC: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A8BEEF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8BEF4: LitI2_Byte 0
  loc_A8BEF6: FLdPr Me
  loc_A8BEF9: Me.MousePointer = from_stack_1
  loc_A8BEFE: LitVarStr var_94, vbNullString
  loc_A8BF03: PopAdLdVar
  loc_A8BF04: FLdPr Me
  loc_A8BF07: VCallAd Control_ID_statusBar
  loc_A8BF0A: FStAdFunc var_A8
  loc_A8BF0D: FLdPr var_A8
  loc_A8BF10: LateIdSt
  loc_A8BF15: FFree1Ad var_A8
  loc_A8BF18: ExitProcHresult
  loc_A8BF19: VCallAd Control_ID_
End Sub

Public Sub GeneraHTML() '9F07D0
  'Data Table: 46737C
  loc_9F068C: FLdRfVar var_88
  loc_9F068F: LitI2_Byte 0
  loc_9F0691: LitI2_Byte &HFF
  loc_9F0693: ImpAdLdI4 MemVar_C3D83C
  loc_9F0696: FLdPr Me
  loc_9F0699: MemLdRfVar from_stack_1.global_80
  loc_9F069C: NewIfNullPr IFileSystem3
  loc_9F069F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9F06A4: ILdRf var_88
  loc_9F06A7: FLdPr Me
  loc_9F06AA: MemStVarAd
  loc_9F06AE: FFree1Ad var_88
  loc_9F06B1: Call Proc_160_27_A7FDE4()
  loc_9F06B6: FLdPr Me
  loc_9F06B9: MemLdStr global_100
  loc_9F06BC: LitStr "RECURSOS CORRIENTES"
  loc_9F06BF: LitStr "I"
  loc_9F06C2: Call Proc_160_25_A2EA64()
  loc_9F06C7: FLdPr Me
  loc_9F06CA: MemLdStr global_104
  loc_9F06CD: LitStr "GASTOS CORRIENTES"
  loc_9F06D0: LitStr "II"
  loc_9F06D3: Call Proc_160_25_A2EA64()
  loc_9F06D8: FLdPr Me
  loc_9F06DB: MemLdStr global_108
  loc_9F06DE: LitStr "RESULTADO ECONÓMICO"
  loc_9F06E1: LitStr "III"
  loc_9F06E4: Call Proc_160_25_A2EA64()
  loc_9F06E9: FLdPr Me
  loc_9F06EC: MemLdStr global_112
  loc_9F06EF: LitStr "RECURSOS DE CAPITAL"
  loc_9F06F2: LitStr "IV"
  loc_9F06F5: Call Proc_160_25_A2EA64()
  loc_9F06FA: FLdPr Me
  loc_9F06FD: MemLdStr global_116
  loc_9F0700: LitStr "GASTOS DE CAPITAL"
  loc_9F0703: LitStr "V"
  loc_9F0706: Call Proc_160_25_A2EA64()
  loc_9F070B: FLdPr Me
  loc_9F070E: MemLdStr global_120
  loc_9F0711: LitStr "EXCEDENTE ANTES TRANSFERENCIAS FIGURATIVAS"
  loc_9F0714: LitStr "VI"
  loc_9F0717: Call Proc_160_25_A2EA64()
  loc_9F071C: FLdPr Me
  loc_9F071F: MemLdStr global_124
  loc_9F0722: LitStr "TOTAL RECURSOS"
  loc_9F0725: LitStr vbNullString
  loc_9F0728: Call Proc_160_25_A2EA64()
  loc_9F072D: FLdPr Me
  loc_9F0730: MemLdStr global_128
  loc_9F0733: LitStr "TOTAL GASTOS"
  loc_9F0736: LitStr vbNullString
  loc_9F0739: Call Proc_160_25_A2EA64()
  loc_9F073E: FLdPr Me
  loc_9F0741: MemLdStr global_132
  loc_9F0744: LitStr "RECURSOS FIGURATIVOS"
  loc_9F0747: LitStr "VII"
  loc_9F074A: Call Proc_160_25_A2EA64()
  loc_9F074F: FLdPr Me
  loc_9F0752: MemLdStr global_136
  loc_9F0755: LitStr "GASTOS FIGURATIVOS"
  loc_9F0758: LitStr "VIII"
  loc_9F075B: Call Proc_160_25_A2EA64()
  loc_9F0760: FLdPr Me
  loc_9F0763: MemLdStr global_140
  loc_9F0766: LitStr "NECESIDAD DE FINANCIAMIENTO"
  loc_9F0769: LitStr "IX"
  loc_9F076C: Call Proc_160_25_A2EA64()
  loc_9F0771: FLdPr Me
  loc_9F0774: MemLdStr global_144
  loc_9F0777: LitStr "FUENTES DE FINANCIAMIENTO"
  loc_9F077A: LitStr "X"
  loc_9F077D: Call Proc_160_25_A2EA64()
  loc_9F0782: FLdPr Me
  loc_9F0785: MemLdStr global_148
  loc_9F0788: LitStr "APLICACIONES FINANCIERAS"
  loc_9F078B: LitStr "XI"
  loc_9F078E: Call Proc_160_25_A2EA64()
  loc_9F0793: FLdPr Me
  loc_9F0796: MemLdStr global_152
  loc_9F0799: LitStr "FINANCIAMIENTO NETO"
  loc_9F079C: LitStr "XII"
  loc_9F079F: Call Proc_160_25_A2EA64()
  loc_9F07A4: FLdPr Me
  loc_9F07A7: MemLdStr global_156
  loc_9F07AA: LitStr "RESULTADO FINANCIERO"
  loc_9F07AD: LitStr "XIII"
  loc_9F07B0: Call Proc_160_25_A2EA64()
  loc_9F07B5: Call Proc_160_28_9FC964()
  loc_9F07BA: FLdPr Me
  loc_9F07BD: MemLdRfVar from_stack_1.htmFile
  loc_9F07C0: LdPrVar
  loc_9F07C2: LateMemCall
  loc_9F07C8: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9F07CD: ExitProcHresult
End Sub

Public Sub GeneraXLS() '950B6C
  'Data Table: 46737C
  loc_950B54: LitI2_Byte 0
  loc_950B56: FLdPr Me
  loc_950B59: MemStI2 bLogos
  loc_950B5C: Call GeneraHTML()
  loc_950B61: LitI2_Byte &HFF
  loc_950B63: FLdPr Me
  loc_950B66: MemStI2 bLogos
  loc_950B69: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A3ADB8
  'Data Table: 46737C
  loc_A3ABA0: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A3ABA5: FStStrNoPop var_88
  loc_A3ABA8: LitStr "\Acuerdo 3949\"
  loc_A3ABAB: ConcatStr
  loc_A3ABAC: FStStrNoPop var_94
  loc_A3ABAF: FLdRfVar var_90
  loc_A3ABB2: FLdPr Me
  loc_A3ABB5: VCallAd Control_ID_cboPeriodo
  loc_A3ABB8: FStAdFunc var_8C
  loc_A3ABBB: FLdPr var_8C
  loc_A3ABBE:  = Me.Text
  loc_A3ABC3: ILdRf var_90
  loc_A3ABC6: ConcatStr
  loc_A3ABC7: FStStrNoPop var_98
  loc_A3ABCA: LitStr "\Trimestre "
  loc_A3ABCD: ConcatStr
  loc_A3ABCE: FStStrNoPop var_AC
  loc_A3ABD1: FLdRfVar var_A8
  loc_A3ABD4: FLdRfVar var_9E
  loc_A3ABD7: FLdPr Me
  loc_A3ABDA: VCallAd Control_ID_cboTrimestre
  loc_A3ABDD: FStAdFunc var_9C
  loc_A3ABE0: FLdPr var_9C
  loc_A3ABE3:  = Me.ListIndex
  loc_A3ABE8: FLdI2 var_9E
  loc_A3ABEB: FLdPr Me
  loc_A3ABEE: VCallAd Control_ID_cboTrimestre
  loc_A3ABF1: FStAdFunc var_A4
  loc_A3ABF4: FLdPr var_A4
  loc_A3ABF7:  = Me.ItemData
  loc_A3ABFC: ILdRf var_A8
  loc_A3ABFF: CStrI4
  loc_A3AC01: FStStrNoPop var_B0
  loc_A3AC04: ConcatStr
  loc_A3AC05: FStStrNoPop var_B4
  loc_A3AC08: LitStr "\profin.txt"
  loc_A3AC0B: ConcatStr
  loc_A3AC0C: ImpAdStStr MemVar_C3D05C
  loc_A3AC10: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A3AC21: FFreeAd var_8C = "": var_9C = ""
  loc_A3AC2A: ImpAdLdI4 MemVar_C3D05C
  loc_A3AC2D: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A3AC32: FLdRfVar var_8C
  loc_A3AC35: LitI2_Byte 0
  loc_A3AC37: LitI2_Byte &HFF
  loc_A3AC39: ImpAdLdI4 MemVar_C3D05C
  loc_A3AC3C: FLdPr Me
  loc_A3AC3F: MemLdRfVar from_stack_1.global_80
  loc_A3AC42: NewIfNullPr IFileSystem3
  loc_A3AC45: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3AC4A: ILdRf var_8C
  loc_A3AC4D: FLdPr Me
  loc_A3AC50: MemStVarAd
  loc_A3AC54: FFree1Ad var_8C
  loc_A3AC57: LitVarStr var_C8, "Ejercicio|Nomenclador|Concepto|Tri1|Tri2|Tri3|Tri4|PreVot"
  loc_A3AC5C: PopAdLdVar
  loc_A3AC5D: FLdPr Me
  loc_A3AC60: MemLdRfVar from_stack_1.global_84
  loc_A3AC63: LdPrVar
  loc_A3AC65: LateMemCall
  loc_A3AC6B: FLdPr Me
  loc_A3AC6E: MemLdStr global_100
  loc_A3AC71: LitI2_Byte 1
  loc_A3AC73: CStrUI1
  loc_A3AC75: FStStrNoPop var_88
  loc_A3AC78: Call Proc_160_26_A19F44()
  loc_A3AC7D: FFree1Str var_88
  loc_A3AC80: FLdPr Me
  loc_A3AC83: MemLdStr global_104
  loc_A3AC86: LitI2_Byte 2
  loc_A3AC88: CStrUI1
  loc_A3AC8A: FStStrNoPop var_88
  loc_A3AC8D: Call Proc_160_26_A19F44()
  loc_A3AC92: FFree1Str var_88
  loc_A3AC95: FLdPr Me
  loc_A3AC98: MemLdStr global_108
  loc_A3AC9B: LitI2_Byte 3
  loc_A3AC9D: CStrUI1
  loc_A3AC9F: FStStrNoPop var_88
  loc_A3ACA2: Call Proc_160_26_A19F44()
  loc_A3ACA7: FFree1Str var_88
  loc_A3ACAA: FLdPr Me
  loc_A3ACAD: MemLdStr global_112
  loc_A3ACB0: LitI2_Byte 4
  loc_A3ACB2: CStrUI1
  loc_A3ACB4: FStStrNoPop var_88
  loc_A3ACB7: Call Proc_160_26_A19F44()
  loc_A3ACBC: FFree1Str var_88
  loc_A3ACBF: FLdPr Me
  loc_A3ACC2: MemLdStr global_116
  loc_A3ACC5: LitI2_Byte 5
  loc_A3ACC7: CStrUI1
  loc_A3ACC9: FStStrNoPop var_88
  loc_A3ACCC: Call Proc_160_26_A19F44()
  loc_A3ACD1: FFree1Str var_88
  loc_A3ACD4: FLdPr Me
  loc_A3ACD7: MemLdStr global_120
  loc_A3ACDA: LitI2_Byte 6
  loc_A3ACDC: CStrUI1
  loc_A3ACDE: FStStrNoPop var_88
  loc_A3ACE1: Call Proc_160_26_A19F44()
  loc_A3ACE6: FFree1Str var_88
  loc_A3ACE9: FLdPr Me
  loc_A3ACEC: MemLdStr global_124
  loc_A3ACEF: LitI2_Byte 7
  loc_A3ACF1: CStrUI1
  loc_A3ACF3: FStStrNoPop var_88
  loc_A3ACF6: Call Proc_160_26_A19F44()
  loc_A3ACFB: FFree1Str var_88
  loc_A3ACFE: FLdPr Me
  loc_A3AD01: MemLdStr global_128
  loc_A3AD04: LitI2_Byte 8
  loc_A3AD06: CStrUI1
  loc_A3AD08: FStStrNoPop var_88
  loc_A3AD0B: Call Proc_160_26_A19F44()
  loc_A3AD10: FFree1Str var_88
  loc_A3AD13: FLdPr Me
  loc_A3AD16: MemLdStr global_132
  loc_A3AD19: LitI2_Byte 9
  loc_A3AD1B: CStrUI1
  loc_A3AD1D: FStStrNoPop var_88
  loc_A3AD20: Call Proc_160_26_A19F44()
  loc_A3AD25: FFree1Str var_88
  loc_A3AD28: FLdPr Me
  loc_A3AD2B: MemLdStr global_136
  loc_A3AD2E: LitI2_Byte &HA
  loc_A3AD30: CStrUI1
  loc_A3AD32: FStStrNoPop var_88
  loc_A3AD35: Call Proc_160_26_A19F44()
  loc_A3AD3A: FFree1Str var_88
  loc_A3AD3D: FLdPr Me
  loc_A3AD40: MemLdStr global_140
  loc_A3AD43: LitI2_Byte &HB
  loc_A3AD45: CStrUI1
  loc_A3AD47: FStStrNoPop var_88
  loc_A3AD4A: Call Proc_160_26_A19F44()
  loc_A3AD4F: FFree1Str var_88
  loc_A3AD52: FLdPr Me
  loc_A3AD55: MemLdStr global_144
  loc_A3AD58: LitI2_Byte &HC
  loc_A3AD5A: CStrUI1
  loc_A3AD5C: FStStrNoPop var_88
  loc_A3AD5F: Call Proc_160_26_A19F44()
  loc_A3AD64: FFree1Str var_88
  loc_A3AD67: FLdPr Me
  loc_A3AD6A: MemLdStr global_148
  loc_A3AD6D: LitI2_Byte &HD
  loc_A3AD6F: CStrUI1
  loc_A3AD71: FStStrNoPop var_88
  loc_A3AD74: Call Proc_160_26_A19F44()
  loc_A3AD79: FFree1Str var_88
  loc_A3AD7C: FLdPr Me
  loc_A3AD7F: MemLdStr global_152
  loc_A3AD82: LitI2_Byte &HE
  loc_A3AD84: CStrUI1
  loc_A3AD86: FStStrNoPop var_88
  loc_A3AD89: Call Proc_160_26_A19F44()
  loc_A3AD8E: FFree1Str var_88
  loc_A3AD91: FLdPr Me
  loc_A3AD94: MemLdStr global_156
  loc_A3AD97: LitI2_Byte &HF
  loc_A3AD99: CStrUI1
  loc_A3AD9B: FStStrNoPop var_88
  loc_A3AD9E: Call Proc_160_26_A19F44()
  loc_A3ADA3: FFree1Str var_88
  loc_A3ADA6: FLdPr Me
  loc_A3ADA9: MemLdRfVar from_stack_1.global_84
  loc_A3ADAC: LdPrVar
  loc_A3ADAE: LateMemCall
  loc_A3ADB4: ExitProcHresult
End Sub

Private Function Proc_160_23_971164(arg_C) '971164
  'Data Table: 46737C
  loc_971138: LitI2_Byte 0
  loc_97113A: FLdRfVar var_86
  loc_97113D: ILdI4 arg_C
  loc_971140: LitI2_Byte 1
  loc_971142: FnUBound
  loc_971144: CI2I4
  loc_971145: ForI2 var_8A
  loc_97114B: LitVarStr var_9C, "0,00"
  loc_971150: FLdI2 var_86
  loc_971153: CI4UI1
  loc_971154: ILdI4 arg_C
  loc_971157: Ary1StVargCopy
  loc_971159: FLdRfVar var_86
  loc_97115C: NextI2 var_8A, loc_97114B
  loc_971161: ExitProcHresult
End Function

Private Function Proc_160_24_A85E78(arg_C, arg_10) 'A85E78
  'Data Table: 46737C
  loc_A85A98: ILdRf arg_C
  loc_A85A9B: FStStrCopy var_90
  loc_A85A9E: ILdRf var_90
  loc_A85AA1: FStStrCopy var_A4
  loc_A85AA4: ILdRf var_A4
  loc_A85AA7: LitStr "RecursosCorrientes"
  loc_A85AAA: EqStr
  loc_A85AAC: BranchF loc_A85AF4
  loc_A85AAF: LitStr "Sum(DebeMoas-HabeMoas)"
  loc_A85AB2: FStStrCopy var_94
  loc_A85AB5: LitVarStr var_E4, " AND CodiTias IN (7,8) "
  loc_A85ABA: FStVarCopyObj var_F4
  loc_A85ABD: FLdRfVar var_F4
  loc_A85AC0: LitVarStr var_C4, " AND CodiTias = 7 "
  loc_A85AC5: FStVarCopyObj var_D4
  loc_A85AC8: FLdRfVar var_D4
  loc_A85ACB: FLdRfVar arg_10
  loc_A85ACE: CVarRef
  loc_A85AD3: FLdRfVar var_104
  loc_A85AD6: ImpAdCallFPR4  = IIf(, , )
  loc_A85ADB: FLdRfVar var_104
  loc_A85ADE: CStrVarTmp
  loc_A85ADF: FStStr var_98
  loc_A85AE2: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85AEB: LitStr "51"
  loc_A85AEE: FStStrCopy var_A0
  loc_A85AF1: Branch loc_A85CE5
  loc_A85AF4: ILdRf var_A4
  loc_A85AF7: LitStr "GastosCorrientes"
  loc_A85AFA: EqStr
  loc_A85AFC: BranchF loc_A85B44
  loc_A85AFF: LitStr "Sum(HabeMoas-DebeMoas)"
  loc_A85B02: FStStrCopy var_94
  loc_A85B05: LitVarStr var_E4, " AND CodiTias IN (1,14) "
  loc_A85B0A: FStVarCopyObj var_F4
  loc_A85B0D: FLdRfVar var_F4
  loc_A85B10: LitVarStr var_C4, " AND CodiTias = 1 "
  loc_A85B15: FStVarCopyObj var_D4
  loc_A85B18: FLdRfVar var_D4
  loc_A85B1B: FLdRfVar arg_10
  loc_A85B1E: CVarRef
  loc_A85B23: FLdRfVar var_104
  loc_A85B26: ImpAdCallFPR4  = IIf(, , )
  loc_A85B2B: FLdRfVar var_104
  loc_A85B2E: CStrVarTmp
  loc_A85B2F: FStStr var_98
  loc_A85B32: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85B3B: LitStr "61"
  loc_A85B3E: FStStrCopy var_A0
  loc_A85B41: Branch loc_A85CE5
  loc_A85B44: ILdRf var_A4
  loc_A85B47: LitStr "RecursosCapital"
  loc_A85B4A: EqStr
  loc_A85B4C: BranchF loc_A85B94
  loc_A85B4F: LitStr "Sum(DebeMoas-HabeMoas)"
  loc_A85B52: FStStrCopy var_94
  loc_A85B55: LitVarStr var_E4, " AND CodiTias IN (7,8) "
  loc_A85B5A: FStVarCopyObj var_F4
  loc_A85B5D: FLdRfVar var_F4
  loc_A85B60: LitVarStr var_C4, " AND CodiTias = 7 "
  loc_A85B65: FStVarCopyObj var_D4
  loc_A85B68: FLdRfVar var_D4
  loc_A85B6B: FLdRfVar arg_10
  loc_A85B6E: CVarRef
  loc_A85B73: FLdRfVar var_104
  loc_A85B76: ImpAdCallFPR4  = IIf(, , )
  loc_A85B7B: FLdRfVar var_104
  loc_A85B7E: CStrVarTmp
  loc_A85B7F: FStStr var_98
  loc_A85B82: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85B8B: LitStr "52"
  loc_A85B8E: FStStrCopy var_A0
  loc_A85B91: Branch loc_A85CE5
  loc_A85B94: ILdRf var_A4
  loc_A85B97: LitStr "GastosCapital"
  loc_A85B9A: EqStr
  loc_A85B9C: BranchF loc_A85BE4
  loc_A85B9F: LitStr "Sum(HabeMoas-DebeMoas)"
  loc_A85BA2: FStStrCopy var_94
  loc_A85BA5: LitVarStr var_E4, " AND CodiTias IN (1,14) "
  loc_A85BAA: FStVarCopyObj var_F4
  loc_A85BAD: FLdRfVar var_F4
  loc_A85BB0: LitVarStr var_C4, " AND CodiTias = 1 "
  loc_A85BB5: FStVarCopyObj var_D4
  loc_A85BB8: FLdRfVar var_D4
  loc_A85BBB: FLdRfVar arg_10
  loc_A85BBE: CVarRef
  loc_A85BC3: FLdRfVar var_104
  loc_A85BC6: ImpAdCallFPR4  = IIf(, , )
  loc_A85BCB: FLdRfVar var_104
  loc_A85BCE: CStrVarTmp
  loc_A85BCF: FStStr var_98
  loc_A85BD2: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85BDB: LitStr "62"
  loc_A85BDE: FStStrCopy var_A0
  loc_A85BE1: Branch loc_A85CE5
  loc_A85BE4: ILdRf var_A4
  loc_A85BE7: LitStr "GastosFigurativos"
  loc_A85BEA: EqStr
  loc_A85BEC: BranchF loc_A85C48
  loc_A85BEF: LitStr "Municipalidad de Guaymallén"
  loc_A85BF2: LitStr "Municipalidad de Santa Rosa"
  loc_A85BF5: EqStr
  loc_A85BF7: BranchF loc_A85C3F
  loc_A85BFA: LitStr "Sum(HabeMoas-DebeMoas)"
  loc_A85BFD: FStStrCopy var_94
  loc_A85C00: LitVarStr var_E4, " AND CodiTias IN (1,14) "
  loc_A85C05: FStVarCopyObj var_F4
  loc_A85C08: FLdRfVar var_F4
  loc_A85C0B: LitVarStr var_C4, " AND CodiTias = 1 "
  loc_A85C10: FStVarCopyObj var_D4
  loc_A85C13: FLdRfVar var_D4
  loc_A85C16: FLdRfVar arg_10
  loc_A85C19: CVarRef
  loc_A85C1E: FLdRfVar var_104
  loc_A85C21: ImpAdCallFPR4  = IIf(, , )
  loc_A85C26: FLdRfVar var_104
  loc_A85C29: CStrVarTmp
  loc_A85C2A: FStStr var_98
  loc_A85C2D: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85C36: LitStr "64"
  loc_A85C39: FStStrCopy var_A0
  loc_A85C3C: Branch loc_A85C45
  loc_A85C3F: LitStr "0"
  loc_A85C42: FStStrCopy var_94
  loc_A85C45: Branch loc_A85CE5
  loc_A85C48: ILdRf var_A4
  loc_A85C4B: LitStr "FuentesFinanciamiento"
  loc_A85C4E: EqStr
  loc_A85C50: BranchF loc_A85C98
  loc_A85C53: LitStr "Sum(DebeMoas-HabeMoas)"
  loc_A85C56: FStStrCopy var_94
  loc_A85C59: LitVarStr var_E4, " AND CodiTias IN (7,8) "
  loc_A85C5E: FStVarCopyObj var_F4
  loc_A85C61: FLdRfVar var_F4
  loc_A85C64: LitVarStr var_C4, " AND CodiTias = 7 "
  loc_A85C69: FStVarCopyObj var_D4
  loc_A85C6C: FLdRfVar var_D4
  loc_A85C6F: FLdRfVar arg_10
  loc_A85C72: CVarRef
  loc_A85C77: FLdRfVar var_104
  loc_A85C7A: ImpAdCallFPR4  = IIf(, , )
  loc_A85C7F: FLdRfVar var_104
  loc_A85C82: CStrVarTmp
  loc_A85C83: FStStr var_98
  loc_A85C86: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85C8F: LitStr "7"
  loc_A85C92: FStStrCopy var_A0
  loc_A85C95: Branch loc_A85CE5
  loc_A85C98: ILdRf var_A4
  loc_A85C9B: LitStr "AplicacionesFinancieras"
  loc_A85C9E: EqStr
  loc_A85CA0: BranchF loc_A85CE5
  loc_A85CA3: LitStr "Sum(HabeMoas-DebeMoas)"
  loc_A85CA6: FStStrCopy var_94
  loc_A85CA9: LitVarStr var_E4, " AND CodiTias IN (1,14) "
  loc_A85CAE: FStVarCopyObj var_F4
  loc_A85CB1: FLdRfVar var_F4
  loc_A85CB4: LitVarStr var_C4, " AND CodiTias = 1 "
  loc_A85CB9: FStVarCopyObj var_D4
  loc_A85CBC: FLdRfVar var_D4
  loc_A85CBF: FLdRfVar arg_10
  loc_A85CC2: CVarRef
  loc_A85CC7: FLdRfVar var_104
  loc_A85CCA: ImpAdCallFPR4  = IIf(, , )
  loc_A85CCF: FLdRfVar var_104
  loc_A85CD2: CStrVarTmp
  loc_A85CD3: FStStr var_98
  loc_A85CD6: FFreeVar var_D4 = "": var_F4 = ""
  loc_A85CDF: LitStr "8"
  loc_A85CE2: FStStrCopy var_A0
  loc_A85CE5: LitStr "Municipalidad de Guaymallén"
  loc_A85CE8: LitStr "Municipalidad de Santa Rosa"
  loc_A85CEB: EqStr
  loc_A85CED: BranchF loc_A85D38
  loc_A85CF0: FLdRfVar var_10C
  loc_A85CF3: FLdPr Me
  loc_A85CF6: VCallAd Control_ID_cboPeriodo
  loc_A85CF9: FStAdFunc var_108
  loc_A85CFC: FLdPr var_108
  loc_A85CFF:  = Me.Text
  loc_A85D04: ILdRf var_10C
  loc_A85D07: CR8Str
  loc_A85D09: LitI2 2021
  loc_A85D0C: CR8I2
  loc_A85D0D: LeR8
  loc_A85D0E: FFree1Str var_10C
  loc_A85D11: FFree1Ad var_108
  loc_A85D14: BranchF loc_A85D2F
  loc_A85D17: LitStr " AND Month(FechAsie) <= "
  loc_A85D1A: FLdPr Me
  loc_A85D1D: MemLdI2 global_168
  loc_A85D20: CStrUI1
  loc_A85D22: FStStrNoPop var_10C
  loc_A85D25: ConcatStr
  loc_A85D26: FStStr var_9C
  loc_A85D29: FFree1Str var_10C
  loc_A85D2C: Branch loc_A85D35
  loc_A85D2F: LitStr " AND Month(FechAsie) <= 3"
  loc_A85D32: FStStrCopy var_9C
  loc_A85D35: Branch loc_A85D4D
  loc_A85D38: LitStr " AND Month(FechAsie) <= "
  loc_A85D3B: FLdPr Me
  loc_A85D3E: MemLdI2 global_168
  loc_A85D41: CStrUI1
  loc_A85D43: FStStrNoPop var_10C
  loc_A85D46: ConcatStr
  loc_A85D47: FStStr var_9C
  loc_A85D4A: FFree1Str var_10C
  loc_A85D4D: FLdPr Me
  loc_A85D50: MemLdRfVar from_stack_1.global_76
  loc_A85D53: NewIfNullAd
  loc_A85D56: FStAd var_110 
  loc_A85D5A: LitStr "SELECT ("
  loc_A85D5D: ILdRf var_94
  loc_A85D60: ConcatStr
  loc_A85D61: FStStrNoPop var_10C
  loc_A85D64: LitStr ")"
  loc_A85D67: ConcatStr
  loc_A85D68: FStStrNoPop var_114
  loc_A85D6B: LitStr " AS SaldMoas"
  loc_A85D6E: ConcatStr
  loc_A85D6F: FStStrNoPop var_118
  loc_A85D72: LitStr " FROM asiento"
  loc_A85D75: ConcatStr
  loc_A85D76: FStStrNoPop var_11C
  loc_A85D79: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_A85D7C: ConcatStr
  loc_A85D7D: FStStrNoPop var_120
  loc_A85D80: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = moviasiento.PeriInfo AND infogov.cuentacontable.CodiCuco = moviasiento.CodiCuco"
  loc_A85D83: ConcatStr
  loc_A85D84: FStStrNoPop var_124
  loc_A85D87: LitStr " WHERE asiento.PeriInfo = "
  loc_A85D8A: ConcatStr
  loc_A85D8B: FStStrNoPop var_12C
  loc_A85D8E: FLdRfVar var_128
  loc_A85D91: FLdPr Me
  loc_A85D94: VCallAd Control_ID_cboPeriodo
  loc_A85D97: FStAdFunc var_108
  loc_A85D9A: FLdPr var_108
  loc_A85D9D:  = Me.Text
  loc_A85DA2: ILdRf var_128
  loc_A85DA5: ConcatStr
  loc_A85DA6: FStStrNoPop var_130
  loc_A85DA9: ILdRf var_98
  loc_A85DAC: ConcatStr
  loc_A85DAD: FStStrNoPop var_134
  loc_A85DB0: LitStr " AND CodiTicu LIKE '"
  loc_A85DB3: ConcatStr
  loc_A85DB4: FStStrNoPop var_138
  loc_A85DB7: ILdRf var_A0
  loc_A85DBA: ConcatStr
  loc_A85DBB: FStStrNoPop var_13C
  loc_A85DBE: LitStr Chr(37) & "'"
  loc_A85DC1: ConcatStr
  loc_A85DC2: FStStrNoPop var_140
  loc_A85DC5: ILdRf var_9C
  loc_A85DC8: ConcatStr
  loc_A85DC9: FStStrNoPop var_144
  loc_A85DCC: LitStr " GROUP BY moviasiento.PeriInfo;"
  loc_A85DCF: ConcatStr
  loc_A85DD0: FStStrNoPop var_148
  loc_A85DD3: FLdPr var_110
  loc_A85DD6: Call clsbase.RedefineRS(from_stack_1v)
  loc_A85DDB: FFreeStr var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_A85DFC: FFree1Ad var_108
  loc_A85DFF: FLdRfVar var_14C
  loc_A85E02: FLdPr var_110
  loc_A85E05: from_stack_1 = clsbase.RecordCount
  loc_A85E0A: ILdRf var_14C
  loc_A85E0D: LitI4 0
  loc_A85E12: GtI4
  loc_A85E13: BranchF loc_A85E66
  loc_A85E16: FLdRfVar var_D4
  loc_A85E19: FLdRfVar var_154
  loc_A85E1C: LitVarStr var_B4, "SaldMoas"
  loc_A85E21: PopAdLdVar
  loc_A85E22: FLdRfVar var_150
  loc_A85E25: FLdRfVar var_108
  loc_A85E28: FLdPr var_110
  loc_A85E2B: from_stack_1v = clsbase.RsFrmGet()
  loc_A85E30: FLdPr var_108
  loc_A85E33:  = Me.Fields
  loc_A85E38: FLdPr var_150
  loc_A85E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_A85E40: FLdPr var_154
  loc_A85E43:  = Me.Value
  loc_A85E48: FLdRfVar var_D4
  loc_A85E4B: CR4Var
  loc_A85E4C: FStFPR8 var_8C
  loc_A85E4F: FFreeAd var_108 = "": var_150 = ""
  loc_A85E58: FFree1Var var_D4 = ""
  loc_A85E5B: LitI2_Byte &HFF
  loc_A85E5D: FLdPr Me
  loc_A85E60: MemStI2 global_170
  loc_A85E63: Branch loc_A85E6C
  loc_A85E66: LitI2_Byte 0
  loc_A85E68: CR8I2
  loc_A85E69: FStFPR8 var_8C
  loc_A85E6C: LitNothing
  loc_A85E6E: FStAd var_110 
  loc_A85E72: ExitProcCbHresult
End Function

Private Function Proc_160_25_A2EA64(arg_C, arg_10, arg_14) 'A2EA64
  'Data Table: 46737C
  loc_A2E884: ILdRf arg_C
  loc_A2E887: FStStrCopy var_88
  loc_A2E88A: ILdRf arg_10
  loc_A2E88D: FStStrCopy var_8C
  loc_A2E890: ILdRf arg_14
  loc_A2E893: FStStrCopy var_90
  loc_A2E896: LitI4 3
  loc_A2E89B: ILdRf var_90
  loc_A2E89E: CR8Str
  loc_A2E8A0: LitI2_Byte 4
  loc_A2E8A2: CR8I2
  loc_A2E8A3: DivR8
  loc_A2E8A4: CVarR8
  loc_A2E8A8: FLdRfVar var_C0
  loc_A2E8AB: ImpAdCallFPR4  = Round(, )
  loc_A2E8B0: LitI4 1
  loc_A2E8B5: LitI4 1
  loc_A2E8BA: LitVarStr var_D0, "#0.00"
  loc_A2E8BF: FStVarCopyObj var_E0
  loc_A2E8C2: FLdRfVar var_E0
  loc_A2E8C5: FLdRfVar var_C0
  loc_A2E8C8: ImpAdCallI2 Format$(, )
  loc_A2E8CD: FStStr var_114
  loc_A2E8D0: LitI2_Byte 0
  loc_A2E8D2: LitVar_Missing var_110
  loc_A2E8D5: LitI2_Byte &HFF
  loc_A2E8D7: FLdZeroAd var_114
  loc_A2E8DA: CVarStr var_F0
  loc_A2E8DD: PopAdLdVar
  loc_A2E8DE: FLdPr Me
  loc_A2E8E1: MemLdRfVar from_stack_1.global_160
  loc_A2E8E4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2E8E9: FFree1Str var_114
  loc_A2E8EC: FFreeVar var_B0 = "": var_C0 = "": var_E0 = "": var_F0 = ""
  loc_A2E8F9: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A2E8FE: PopAdLdVar
  loc_A2E8FF: FLdPr Me
  loc_A2E902: MemLdRfVar from_stack_1.htmFile
  loc_A2E905: LdPrVar
  loc_A2E907: LateMemCall
  loc_A2E90D: LitI4 0
  loc_A2E912: LitI4 0
  loc_A2E917: LitI2_Byte 0
  loc_A2E919: LitStr "center"
  loc_A2E91C: ILdRf var_88
  loc_A2E91F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2E924: CVarStr var_B0
  loc_A2E927: PopAdLdVar
  loc_A2E928: FLdPr Me
  loc_A2E92B: MemLdRfVar from_stack_1.htmFile
  loc_A2E92E: LdPrVar
  loc_A2E930: LateMemCall
  loc_A2E936: FFree1Var var_B0 = ""
  loc_A2E939: LitI4 0
  loc_A2E93E: LitI4 0
  loc_A2E943: LitI2_Byte 0
  loc_A2E945: LitStr "left"
  loc_A2E948: ILdRf var_8C
  loc_A2E94B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2E950: CVarStr var_B0
  loc_A2E953: PopAdLdVar
  loc_A2E954: FLdPr Me
  loc_A2E957: MemLdRfVar from_stack_1.htmFile
  loc_A2E95A: LdPrVar
  loc_A2E95C: LateMemCall
  loc_A2E962: FFree1Var var_B0 = ""
  loc_A2E965: LitI4 0
  loc_A2E96A: LitI4 0
  loc_A2E96F: LitI2_Byte &HFF
  loc_A2E971: LitStr "right"
  loc_A2E974: FLdPr Me
  loc_A2E977: MemLdStr global_160
  loc_A2E97A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2E97F: CVarStr var_B0
  loc_A2E982: PopAdLdVar
  loc_A2E983: FLdPr Me
  loc_A2E986: MemLdRfVar from_stack_1.htmFile
  loc_A2E989: LdPrVar
  loc_A2E98B: LateMemCall
  loc_A2E991: FFree1Var var_B0 = ""
  loc_A2E994: LitI4 0
  loc_A2E999: LitI4 0
  loc_A2E99E: LitI2_Byte &HFF
  loc_A2E9A0: LitStr "right"
  loc_A2E9A3: FLdPr Me
  loc_A2E9A6: MemLdStr global_160
  loc_A2E9A9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2E9AE: CVarStr var_B0
  loc_A2E9B1: PopAdLdVar
  loc_A2E9B2: FLdPr Me
  loc_A2E9B5: MemLdRfVar from_stack_1.htmFile
  loc_A2E9B8: LdPrVar
  loc_A2E9BA: LateMemCall
  loc_A2E9C0: FFree1Var var_B0 = ""
  loc_A2E9C3: LitI4 0
  loc_A2E9C8: LitI4 0
  loc_A2E9CD: LitI2_Byte &HFF
  loc_A2E9CF: LitStr "right"
  loc_A2E9D2: FLdPr Me
  loc_A2E9D5: MemLdStr global_160
  loc_A2E9D8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2E9DD: CVarStr var_B0
  loc_A2E9E0: PopAdLdVar
  loc_A2E9E1: FLdPr Me
  loc_A2E9E4: MemLdRfVar from_stack_1.htmFile
  loc_A2E9E7: LdPrVar
  loc_A2E9E9: LateMemCall
  loc_A2E9EF: FFree1Var var_B0 = ""
  loc_A2E9F2: LitI4 0
  loc_A2E9F7: LitI4 0
  loc_A2E9FC: LitI2_Byte &HFF
  loc_A2E9FE: LitStr "right"
  loc_A2EA01: FLdPr Me
  loc_A2EA04: MemLdStr global_160
  loc_A2EA07: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2EA0C: CVarStr var_B0
  loc_A2EA0F: PopAdLdVar
  loc_A2EA10: FLdPr Me
  loc_A2EA13: MemLdRfVar from_stack_1.htmFile
  loc_A2EA16: LdPrVar
  loc_A2EA18: LateMemCall
  loc_A2EA1E: FFree1Var var_B0 = ""
  loc_A2EA21: LitI4 0
  loc_A2EA26: LitI4 0
  loc_A2EA2B: LitI2_Byte &HFF
  loc_A2EA2D: LitStr "right"
  loc_A2EA30: ILdRf var_90
  loc_A2EA33: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2EA38: CVarStr var_B0
  loc_A2EA3B: PopAdLdVar
  loc_A2EA3C: FLdPr Me
  loc_A2EA3F: MemLdRfVar from_stack_1.htmFile
  loc_A2EA42: LdPrVar
  loc_A2EA44: LateMemCall
  loc_A2EA4A: FFree1Var var_B0 = ""
  loc_A2EA4D: LitVarStr var_A0, "    </tr>"
  loc_A2EA52: PopAdLdVar
  loc_A2EA53: FLdPr Me
  loc_A2EA56: MemLdRfVar from_stack_1.htmFile
  loc_A2EA59: LdPrVar
  loc_A2EA5B: LateMemCall
  loc_A2EA61: ExitProcHresult
End Function

Private Function Proc_160_26_A19F44(arg_C, arg_10) 'A19F44
  'Data Table: 46737C
  loc_A19DF0: ILdRf arg_C
  loc_A19DF3: FStStrCopy var_88
  loc_A19DF6: ILdRf arg_10
  loc_A19DF9: FStStrCopy var_8C
  loc_A19DFC: LitI4 2
  loc_A19E01: ILdRf var_8C
  loc_A19E04: CR8Str
  loc_A19E06: LitI2_Byte 4
  loc_A19E08: CR8I2
  loc_A19E09: DivR8
  loc_A19E0A: CVarR8
  loc_A19E0E: FLdRfVar var_BC
  loc_A19E11: ImpAdCallFPR4  = Round(, )
  loc_A19E16: LitI4 1
  loc_A19E1B: LitI4 1
  loc_A19E20: LitVarStr var_CC, "#0.00"
  loc_A19E25: FStVarCopyObj var_DC
  loc_A19E28: FLdRfVar var_DC
  loc_A19E2B: FLdRfVar var_BC
  loc_A19E2E: FLdRfVar var_EC
  loc_A19E31: ImpAdCallFPR4  = Format(, )
  loc_A19E36: FLdRfVar var_EC
  loc_A19E39: CStrVarTmp
  loc_A19E3A: FStStrNoPop var_F0
  loc_A19E3D: FLdPr Me
  loc_A19E40: MemStStrCopy
  loc_A19E44: FFree1Str var_F0
  loc_A19E47: FFreeVar var_AC = "": var_BC = "": var_DC = ""
  loc_A19E52: LitI4 1
  loc_A19E57: LitI4 1
  loc_A19E5C: LitVarStr var_CC, "#0.00"
  loc_A19E61: FStVarCopyObj var_BC
  loc_A19E64: FLdRfVar var_BC
  loc_A19E67: ILdRf var_8C
  loc_A19E6A: CR8Str
  loc_A19E6C: CVarR8
  loc_A19E70: FLdRfVar var_DC
  loc_A19E73: ImpAdCallFPR4  = Format(, )
  loc_A19E78: FLdRfVar var_DC
  loc_A19E7B: CStrVarTmp
  loc_A19E7C: FStStr var_8C
  loc_A19E7F: FFreeVar var_AC = "": var_BC = ""
  loc_A19E88: FLdRfVar var_F0
  loc_A19E8B: FLdPr Me
  loc_A19E8E: VCallAd Control_ID_cboPeriodo
  loc_A19E91: FStAdFunc var_F4
  loc_A19E94: FLdPr var_F4
  loc_A19E97:  = Me.Text
  loc_A19E9C: ILdRf var_F0
  loc_A19E9F: LitStr "|"
  loc_A19EA2: ConcatStr
  loc_A19EA3: FStStrNoPop var_F8
  loc_A19EA6: LitStr "060204"
  loc_A19EA9: ConcatStr
  loc_A19EAA: FStStrNoPop var_FC
  loc_A19EAD: LitStr "|"
  loc_A19EB0: ConcatStr
  loc_A19EB1: FStStrNoPop var_100
  loc_A19EB4: ILdRf var_88
  loc_A19EB7: ConcatStr
  loc_A19EB8: FStStrNoPop var_104
  loc_A19EBB: LitStr "|"
  loc_A19EBE: ConcatStr
  loc_A19EBF: FStStrNoPop var_108
  loc_A19EC2: FLdPr Me
  loc_A19EC5: MemLdStr global_160
  loc_A19EC8: ConcatStr
  loc_A19EC9: FStStrNoPop var_10C
  loc_A19ECC: LitStr "|"
  loc_A19ECF: ConcatStr
  loc_A19ED0: FStStrNoPop var_110
  loc_A19ED3: FLdPr Me
  loc_A19ED6: MemLdStr global_160
  loc_A19ED9: ConcatStr
  loc_A19EDA: FStStrNoPop var_114
  loc_A19EDD: LitStr "|"
  loc_A19EE0: ConcatStr
  loc_A19EE1: FStStrNoPop var_118
  loc_A19EE4: FLdPr Me
  loc_A19EE7: MemLdStr global_160
  loc_A19EEA: ConcatStr
  loc_A19EEB: FStStrNoPop var_11C
  loc_A19EEE: LitStr "|"
  loc_A19EF1: ConcatStr
  loc_A19EF2: FStStrNoPop var_120
  loc_A19EF5: FLdPr Me
  loc_A19EF8: MemLdStr global_160
  loc_A19EFB: ConcatStr
  loc_A19EFC: FStStrNoPop var_124
  loc_A19EFF: LitStr "|"
  loc_A19F02: ConcatStr
  loc_A19F03: FStStrNoPop var_128
  loc_A19F06: ILdRf var_8C
  loc_A19F09: ConcatStr
  loc_A19F0A: CVarStr var_AC
  loc_A19F0D: PopAdLdVar
  loc_A19F0E: FLdPr Me
  loc_A19F11: MemLdRfVar from_stack_1.global_84
  loc_A19F14: LdPrVar
  loc_A19F16: LateMemCall
  loc_A19F1C: FFreeStr var_F0 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A19F3B: FFree1Ad var_F4
  loc_A19F3E: FFree1Var var_AC = ""
  loc_A19F41: ExitProcHresult
End Function

Private Function Proc_160_27_A7FDE4() 'A7FDE4
  'Data Table: 46737C
  loc_A7FA0C: LitVarStr var_94, "<html>"
  loc_A7FA11: PopAdLdVar
  loc_A7FA12: FLdPr Me
  loc_A7FA15: MemLdRfVar from_stack_1.htmFile
  loc_A7FA18: LdPrVar
  loc_A7FA1A: LateMemCall
  loc_A7FA20: LitVarStr var_94, "<head>"
  loc_A7FA25: PopAdLdVar
  loc_A7FA26: FLdPr Me
  loc_A7FA29: MemLdRfVar from_stack_1.htmFile
  loc_A7FA2C: LdPrVar
  loc_A7FA2E: LateMemCall
  loc_A7FA34: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7FA39: PopAdLdVar
  loc_A7FA3A: FLdPr Me
  loc_A7FA3D: MemLdRfVar from_stack_1.htmFile
  loc_A7FA40: LdPrVar
  loc_A7FA42: LateMemCall
  loc_A7FA48: LitStr "<title>"
  loc_A7FA4B: FLdRfVar var_A8
  loc_A7FA4E: FLdPr Me
  loc_A7FA51:  = Me.Caption
  loc_A7FA56: ILdRf var_A8
  loc_A7FA59: ConcatStr
  loc_A7FA5A: FStStrNoPop var_AC
  loc_A7FA5D: LitStr " - "
  loc_A7FA60: ConcatStr
  loc_A7FA61: FStStrNoPop var_B0
  loc_A7FA64: LitStr "Municipalidad de Guaymallén"
  loc_A7FA67: ConcatStr
  loc_A7FA68: FStStrNoPop var_B4
  loc_A7FA6B: LitStr "</title>"
  loc_A7FA6E: ConcatStr
  loc_A7FA6F: CVarStr var_C4
  loc_A7FA72: PopAdLdVar
  loc_A7FA73: FLdPr Me
  loc_A7FA76: MemLdRfVar from_stack_1.htmFile
  loc_A7FA79: LdPrVar
  loc_A7FA7B: LateMemCall
  loc_A7FA81: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A7FA8C: FFree1Var var_C4 = ""
  loc_A7FA8F: LitStr vbNullString
  loc_A7FA92: ILdRf Me
  loc_A7FA95: CastAd
  loc_A7FA98: FStAdFunc var_C8
  loc_A7FA9B: FLdRfVar var_C8
  loc_A7FA9E: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A7FAA3: FFree1Ad var_C8
  loc_A7FAA6: LitI4 0
  loc_A7FAAB: FStStrCopy var_AC
  loc_A7FAAE: FLdRfVar var_AC
  loc_A7FAB1: LitI4 0
  loc_A7FAB6: FStStrCopy var_A8
  loc_A7FAB9: FLdRfVar var_A8
  loc_A7FABC: LitI2_Byte &HFF
  loc_A7FABE: PopTmpLdAd2 var_CA
  loc_A7FAC1: FLdPr Me
  loc_A7FAC4: MemLdRfVar from_stack_1.htmFile
  loc_A7FAC7: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A7FACC: FFreeStr var_A8 = ""
  loc_A7FAD3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A7FAD8: PopAdLdVar
  loc_A7FAD9: FLdPr Me
  loc_A7FADC: MemLdRfVar from_stack_1.htmFile
  loc_A7FADF: LdPrVar
  loc_A7FAE1: LateMemCall
  loc_A7FAE7: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A7FAEC: PopAdLdVar
  loc_A7FAED: FLdPr Me
  loc_A7FAF0: MemLdRfVar from_stack_1.htmFile
  loc_A7FAF3: LdPrVar
  loc_A7FAF5: LateMemCall
  loc_A7FAFB: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>"
  loc_A7FB00: PopAdLdVar
  loc_A7FB01: FLdPr Me
  loc_A7FB04: MemLdRfVar from_stack_1.htmFile
  loc_A7FB07: LdPrVar
  loc_A7FB09: LateMemCall
  loc_A7FB0F: FLdPr Me
  loc_A7FB12: MemLdI2 bLogos
  loc_A7FB15: BranchF loc_A7FB2C
  loc_A7FB18: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ANEXO I: PROGRAMACIÓN FINANCIERA ART. 22 LEY 7314</span class=""Titulo2""></p>"
  loc_A7FB1D: PopAdLdVar
  loc_A7FB1E: FLdPr Me
  loc_A7FB21: MemLdRfVar from_stack_1.htmFile
  loc_A7FB24: LdPrVar
  loc_A7FB26: LateMemCall
  loc_A7FB2C: LitVarStr var_94, "    </th>"
  loc_A7FB31: PopAdLdVar
  loc_A7FB32: FLdPr Me
  loc_A7FB35: MemLdRfVar from_stack_1.htmFile
  loc_A7FB38: LdPrVar
  loc_A7FB3A: LateMemCall
  loc_A7FB40: LitVarStr var_94, "  </tr>"
  loc_A7FB45: PopAdLdVar
  loc_A7FB46: FLdPr Me
  loc_A7FB49: MemLdRfVar from_stack_1.htmFile
  loc_A7FB4C: LdPrVar
  loc_A7FB4E: LateMemCall
  loc_A7FB54: LitVarStr var_94, "  <tr>"
  loc_A7FB59: PopAdLdVar
  loc_A7FB5A: FLdPr Me
  loc_A7FB5D: MemLdRfVar from_stack_1.htmFile
  loc_A7FB60: LdPrVar
  loc_A7FB62: LateMemCall
  loc_A7FB68: LitVarStr var_94, "    <th>"
  loc_A7FB6D: PopAdLdVar
  loc_A7FB6E: FLdPr Me
  loc_A7FB71: MemLdRfVar from_stack_1.htmFile
  loc_A7FB74: LdPrVar
  loc_A7FB76: LateMemCall
  loc_A7FB7C: LitStr "      <p align=""left"" class=""Titulo2"">      Repartición/Organismo: "
  loc_A7FB7F: LitStr "Municipalidad de Guaymallén"
  loc_A7FB82: ConcatStr
  loc_A7FB83: FStStrNoPop var_A8
  loc_A7FB86: LitStr "<br>"
  loc_A7FB89: ConcatStr
  loc_A7FB8A: CVarStr var_C4
  loc_A7FB8D: PopAdLdVar
  loc_A7FB8E: FLdPr Me
  loc_A7FB91: MemLdRfVar from_stack_1.htmFile
  loc_A7FB94: LdPrVar
  loc_A7FB96: LateMemCall
  loc_A7FB9C: FFree1Str var_A8
  loc_A7FB9F: FFree1Var var_C4 = ""
  loc_A7FBA2: LitStr "    Nomenclador: "
  loc_A7FBA5: LitStr "060204"
  loc_A7FBA8: ConcatStr
  loc_A7FBA9: FStStrNoPop var_A8
  loc_A7FBAC: LitStr "<br>"
  loc_A7FBAF: ConcatStr
  loc_A7FBB0: CVarStr var_C4
  loc_A7FBB3: PopAdLdVar
  loc_A7FBB4: FLdPr Me
  loc_A7FBB7: MemLdRfVar from_stack_1.htmFile
  loc_A7FBBA: LdPrVar
  loc_A7FBBC: LateMemCall
  loc_A7FBC2: FFree1Str var_A8
  loc_A7FBC5: FFree1Var var_C4 = ""
  loc_A7FBC8: LitStr "    Ejercicio: "
  loc_A7FBCB: FLdRfVar var_A8
  loc_A7FBCE: FLdPr Me
  loc_A7FBD1: VCallAd Control_ID_cboPeriodo
  loc_A7FBD4: FStAdFunc var_C8
  loc_A7FBD7: FLdPr var_C8
  loc_A7FBDA:  = Me.Text
  loc_A7FBDF: ILdRf var_A8
  loc_A7FBE2: ConcatStr
  loc_A7FBE3: FStStrNoPop var_AC
  loc_A7FBE6: LitStr "<br>"
  loc_A7FBE9: ConcatStr
  loc_A7FBEA: CVarStr var_C4
  loc_A7FBED: PopAdLdVar
  loc_A7FBEE: FLdPr Me
  loc_A7FBF1: MemLdRfVar from_stack_1.htmFile
  loc_A7FBF4: LdPrVar
  loc_A7FBF6: LateMemCall
  loc_A7FBFC: FFreeStr var_A8 = ""
  loc_A7FC03: FFree1Ad var_C8
  loc_A7FC06: FFree1Var var_C4 = ""
  loc_A7FC09: FLdRfVar var_CA
  loc_A7FC0C: FLdPr Me
  loc_A7FC0F: VCallAd Control_ID_cboTrimestre
  loc_A7FC12: FStAdFunc var_D0
  loc_A7FC15: FLdPr var_D0
  loc_A7FC18:  = Me.ListIndex
  loc_A7FC1D: FLdRfVar var_D8
  loc_A7FC20: FLdI2 var_CA
  loc_A7FC23: FLdPr Me
  loc_A7FC26: VCallAd Control_ID_cboTrimestre
  loc_A7FC29: FStAdFunc var_D4
  loc_A7FC2C: FLdPr var_D4
  loc_A7FC2F:  = Me.ItemData
  loc_A7FC34: FLdRfVar var_AC
  loc_A7FC37: FLdPr Me
  loc_A7FC3A: VCallAd Control_ID_cboPeriodo
  loc_A7FC3D: FStAdFunc var_DC
  loc_A7FC40: FLdPr var_DC
  loc_A7FC43:  = Me.Text
  loc_A7FC48: ILdRf var_AC
  loc_A7FC4B: CI2Str
  loc_A7FC4D: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A7FC52: CVarStr var_C4
  loc_A7FC55: FLdRfVar var_EC
  loc_A7FC58: ImpAdCallFPR4  = Month()
  loc_A7FC5D: LitStr "    Trimestre: "
  loc_A7FC60: FLdRfVar var_A8
  loc_A7FC63: FLdPr Me
  loc_A7FC66: VCallAd Control_ID_cboTrimestre
  loc_A7FC69: FStAdFunc var_C8
  loc_A7FC6C: FLdPr var_C8
  loc_A7FC6F:  = Me.Text
  loc_A7FC74: ILdRf var_A8
  loc_A7FC77: ConcatStr
  loc_A7FC78: CVarStr var_15C
  loc_A7FC7B: LitVarStr var_12C, vbNullString
  loc_A7FC80: FStVarCopyObj var_13C
  loc_A7FC83: FLdRfVar var_13C
  loc_A7FC86: LitVarStr var_A4, " (PROVISORIO)"
  loc_A7FC8B: FStVarCopyObj var_11C
  loc_A7FC8E: FLdRfVar var_11C
  loc_A7FC91: ILdRf var_D8
  loc_A7FC94: LitI4 3
  loc_A7FC99: MulI4
  loc_A7FC9A: CVarI4
  loc_A7FC9E: HardType
  loc_A7FC9F: FLdRfVar var_EC
  loc_A7FCA2: GtVar var_FC
  loc_A7FCA6: FStVar var_10C
  loc_A7FCAA: FLdRfVar var_10C
  loc_A7FCAD: FLdRfVar var_14C
  loc_A7FCB0: ImpAdCallFPR4  = IIf(, , )
  loc_A7FCB5: FLdRfVar var_14C
  loc_A7FCB8: ConcatVar var_16C
  loc_A7FCBC: PopAdLdVar
  loc_A7FCBD: FLdPr Me
  loc_A7FCC0: MemLdRfVar from_stack_1.htmFile
  loc_A7FCC3: LdPrVar
  loc_A7FCC5: LateMemCall
  loc_A7FCCB: FFreeStr var_A8 = ""
  loc_A7FCD2: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A7FCDD: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A7FCF0: LitVarStr var_94, "    </p></th>"
  loc_A7FCF5: PopAdLdVar
  loc_A7FCF6: FLdPr Me
  loc_A7FCF9: MemLdRfVar from_stack_1.htmFile
  loc_A7FCFC: LdPrVar
  loc_A7FCFE: LateMemCall
  loc_A7FD04: LitVarStr var_94, "  </tr>"
  loc_A7FD09: PopAdLdVar
  loc_A7FD0A: FLdPr Me
  loc_A7FD0D: MemLdRfVar from_stack_1.htmFile
  loc_A7FD10: LdPrVar
  loc_A7FD12: LateMemCall
  loc_A7FD18: LitVarStr var_94, "</table>"
  loc_A7FD1D: PopAdLdVar
  loc_A7FD1E: FLdPr Me
  loc_A7FD21: MemLdRfVar from_stack_1.htmFile
  loc_A7FD24: LdPrVar
  loc_A7FD26: LateMemCall
  loc_A7FD2C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7FD31: PopAdLdVar
  loc_A7FD32: FLdPr Me
  loc_A7FD35: MemLdRfVar from_stack_1.htmFile
  loc_A7FD38: LdPrVar
  loc_A7FD3A: LateMemCall
  loc_A7FD40: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A7FD45: PopAdLdVar
  loc_A7FD46: FLdPr Me
  loc_A7FD49: MemLdRfVar from_stack_1.htmFile
  loc_A7FD4C: LdPrVar
  loc_A7FD4E: LateMemCall
  loc_A7FD54: LitVarStr var_94, "     <th colspan=""2"">CONCEPTO</th>"
  loc_A7FD59: PopAdLdVar
  loc_A7FD5A: FLdPr Me
  loc_A7FD5D: MemLdRfVar from_stack_1.htmFile
  loc_A7FD60: LdPrVar
  loc_A7FD62: LateMemCall
  loc_A7FD68: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>1&ordm; Trimestre</th>"
  loc_A7FD6D: PopAdLdVar
  loc_A7FD6E: FLdPr Me
  loc_A7FD71: MemLdRfVar from_stack_1.htmFile
  loc_A7FD74: LdPrVar
  loc_A7FD76: LateMemCall
  loc_A7FD7C: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>2&ordm; Trimestre</th>"
  loc_A7FD81: PopAdLdVar
  loc_A7FD82: FLdPr Me
  loc_A7FD85: MemLdRfVar from_stack_1.htmFile
  loc_A7FD88: LdPrVar
  loc_A7FD8A: LateMemCall
  loc_A7FD90: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>3&ordm; Trimestre</th>"
  loc_A7FD95: PopAdLdVar
  loc_A7FD96: FLdPr Me
  loc_A7FD99: MemLdRfVar from_stack_1.htmFile
  loc_A7FD9C: LdPrVar
  loc_A7FD9E: LateMemCall
  loc_A7FDA4: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>4&ordm; Trimestre</th>"
  loc_A7FDA9: PopAdLdVar
  loc_A7FDAA: FLdPr Me
  loc_A7FDAD: MemLdRfVar from_stack_1.htmFile
  loc_A7FDB0: LdPrVar
  loc_A7FDB2: LateMemCall
  loc_A7FDB8: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>Presupuesto votado del ejercicio</th>"
  loc_A7FDBD: PopAdLdVar
  loc_A7FDBE: FLdPr Me
  loc_A7FDC1: MemLdRfVar from_stack_1.htmFile
  loc_A7FDC4: LdPrVar
  loc_A7FDC6: LateMemCall
  loc_A7FDCC: LitVarStr var_94, "  </tr>"
  loc_A7FDD1: PopAdLdVar
  loc_A7FDD2: FLdPr Me
  loc_A7FDD5: MemLdRfVar from_stack_1.htmFile
  loc_A7FDD8: LdPrVar
  loc_A7FDDA: LateMemCall
  loc_A7FDE0: ExitProcHresult
End Function

Private Function Proc_160_28_9FC964() '9FC964
  'Data Table: 46737C
  loc_9FC804: LitVarStr var_94, "</table>"
  loc_9FC809: PopAdLdVar
  loc_9FC80A: FLdPr Me
  loc_9FC80D: MemLdRfVar from_stack_1.htmFile
  loc_9FC810: LdPrVar
  loc_9FC812: LateMemCall
  loc_9FC818: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9FC81D: PopAdLdVar
  loc_9FC81E: FLdPr Me
  loc_9FC821: MemLdRfVar from_stack_1.htmFile
  loc_9FC824: LdPrVar
  loc_9FC826: LateMemCall
  loc_9FC82C: LitVarStr var_94, "  <tr>"
  loc_9FC831: PopAdLdVar
  loc_9FC832: FLdPr Me
  loc_9FC835: MemLdRfVar from_stack_1.htmFile
  loc_9FC838: LdPrVar
  loc_9FC83A: LateMemCall
  loc_9FC840: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_9FC845: PopAdLdVar
  loc_9FC846: FLdPr Me
  loc_9FC849: MemLdRfVar from_stack_1.htmFile
  loc_9FC84C: LdPrVar
  loc_9FC84E: LateMemCall
  loc_9FC854: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_9FC859: PopAdLdVar
  loc_9FC85A: FLdPr Me
  loc_9FC85D: MemLdRfVar from_stack_1.htmFile
  loc_9FC860: LdPrVar
  loc_9FC862: LateMemCall
  loc_9FC868: FLdPr Me
  loc_9FC86B: MemLdI2 bLogos
  loc_9FC86E: BranchF loc_9FC8D5
  loc_9FC871: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9FC876: PopAdLdVar
  loc_9FC877: FLdPr Me
  loc_9FC87A: MemLdRfVar from_stack_1.htmFile
  loc_9FC87D: LdPrVar
  loc_9FC87F: LateMemCall
  loc_9FC885: LitVarStr var_94, "          <map name=""Map"">"
  loc_9FC88A: PopAdLdVar
  loc_9FC88B: FLdPr Me
  loc_9FC88E: MemLdRfVar from_stack_1.htmFile
  loc_9FC891: LdPrVar
  loc_9FC893: LateMemCall
  loc_9FC899: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9FC89E: PopAdLdVar
  loc_9FC89F: FLdPr Me
  loc_9FC8A2: MemLdRfVar from_stack_1.htmFile
  loc_9FC8A5: LdPrVar
  loc_9FC8A7: LateMemCall
  loc_9FC8AD: LitVarStr var_94, "          </map>"
  loc_9FC8B2: PopAdLdVar
  loc_9FC8B3: FLdPr Me
  loc_9FC8B6: MemLdRfVar from_stack_1.htmFile
  loc_9FC8B9: LdPrVar
  loc_9FC8BB: LateMemCall
  loc_9FC8C1: LitVarStr var_94, "    </div></th>"
  loc_9FC8C6: PopAdLdVar
  loc_9FC8C7: FLdPr Me
  loc_9FC8CA: MemLdRfVar from_stack_1.htmFile
  loc_9FC8CD: LdPrVar
  loc_9FC8CF: LateMemCall
  loc_9FC8D5: LitVarStr var_94, "  </tr>"
  loc_9FC8DA: PopAdLdVar
  loc_9FC8DB: FLdPr Me
  loc_9FC8DE: MemLdRfVar from_stack_1.htmFile
  loc_9FC8E1: LdPrVar
  loc_9FC8E3: LateMemCall
  loc_9FC8E9: LitVarStr var_94, "  <tr>"
  loc_9FC8EE: PopAdLdVar
  loc_9FC8EF: FLdPr Me
  loc_9FC8F2: MemLdRfVar from_stack_1.htmFile
  loc_9FC8F5: LdPrVar
  loc_9FC8F7: LateMemCall
  loc_9FC8FD: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9FC902: PopAdLdVar
  loc_9FC903: FLdPr Me
  loc_9FC906: MemLdRfVar from_stack_1.htmFile
  loc_9FC909: LdPrVar
  loc_9FC90B: LateMemCall
  loc_9FC911: LitVarStr var_94, "  </tr>"
  loc_9FC916: PopAdLdVar
  loc_9FC917: FLdPr Me
  loc_9FC91A: MemLdRfVar from_stack_1.htmFile
  loc_9FC91D: LdPrVar
  loc_9FC91F: LateMemCall
  loc_9FC925: LitVarStr var_94, "</table>"
  loc_9FC92A: PopAdLdVar
  loc_9FC92B: FLdPr Me
  loc_9FC92E: MemLdRfVar from_stack_1.htmFile
  loc_9FC931: LdPrVar
  loc_9FC933: LateMemCall
  loc_9FC939: LitVarStr var_94, "</body>"
  loc_9FC93E: PopAdLdVar
  loc_9FC93F: FLdPr Me
  loc_9FC942: MemLdRfVar from_stack_1.htmFile
  loc_9FC945: LdPrVar
  loc_9FC947: LateMemCall
  loc_9FC94D: LitVarStr var_94, "</html>"
  loc_9FC952: PopAdLdVar
  loc_9FC953: FLdPr Me
  loc_9FC956: MemLdRfVar from_stack_1.htmFile
  loc_9FC959: LdPrVar
  loc_9FC95B: LateMemCall
  loc_9FC961: ExitProcHresult
End Function
