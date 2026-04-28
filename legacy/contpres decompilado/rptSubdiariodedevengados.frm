VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodedevengados
  Caption = "Subdiario de devengados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodedevengados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 2970
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2715
    Width = 6195
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptSubdiariodedevengados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodedevengados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodedevengados.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 1815
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
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
    Width = 5895
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdCalHasta
      Left = 2520
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptSubdiariodedevengados.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodedevengados.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1320
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodedevengados.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodedevengados.frx":170C
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 720
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 720
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptSubdiariodedevengados.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodedevengados"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_00618270
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B774
  'Data Table: 44F3D8
  loc_98B73C: FLdPr Me
  loc_98B73F: VCallAd Control_ID_statusBar
  loc_98B742: FStAdFunc var_88
  loc_98B745: FLdPr var_88
  loc_98B748: LateIdLdVar var_98 DispID_1 0
  loc_98B74F: CStrVarTmp
  loc_98B750: CVarStr var_A8
  loc_98B753: PopAdLdVar
  loc_98B754: FLdPr Me
  loc_98B757: VCallAd Control_ID_statusBar
  loc_98B75A: FStAdFunc var_BC
  loc_98B75D: FLdPr var_BC
  loc_98B760: LateIdSt
  loc_98B765: FFreeAd var_88 = ""
  loc_98B76C: FFreeVar var_98 = ""
  loc_98B773: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95A638
  'Data Table: 44F3D8
  loc_95A620: LitI2_Byte 0
  loc_95A622: ILdRf Me
  loc_95A625: CastAd
  loc_95A628: FStAdFunc var_88
  loc_95A62B: FLdRfVar var_88
  loc_95A62E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95A633: FFree1Ad var_88
  loc_95A636: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95A800
  'Data Table: 44F3D8
  loc_95A7E8: ILdRf Me
  loc_95A7EB: CastAd
  loc_95A7EE: FStAdFunc var_88
  loc_95A7F1: FLdRfVar var_88
  loc_95A7F4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95A7F9: FFree1Ad var_88
  loc_95A7FC: ExitProcHresult
  loc_95A7FD: Ary1LdPr
  loc_95A7FE: NewIfNullPr Me
End Sub

Private Sub cmdSalir_Click() '978228
  'Data Table: 44F3D8
  loc_9781F8: LitVarStr var_94, "Cerrando..."
  loc_9781FD: PopAdLdVar
  loc_9781FE: FLdPr Me
  loc_978201: VCallAd Control_ID_statusBar
  loc_978204: FStAdFunc var_A8
  loc_978207: FLdPr var_A8
  loc_97820A: LateIdSt
  loc_97820F: FFree1Ad var_A8
  loc_978212: ILdRf Me
  loc_978215: FStAdNoPop
  loc_978219: ImpAdLdRf MemVar_C44F9C
  loc_97821C: NewIfNullPr Me
  loc_97821F: Me.Global.Unload from_stack_1
  loc_978224: FFree1Ad var_A8
  loc_978227: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BC7AC
  'Data Table: 44F3D8
  loc_9BC6FC: LitI2_Byte 0
  loc_9BC6FE: FLdPr Me
  loc_9BC701: MemStI2 bGenerado
  loc_9BC704: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BC709: LitI2_Byte 0
  loc_9BC70B: PopTmpLdAd2 var_86
  loc_9BC70E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC713: CVarDate var_A8
  loc_9BC717: FLdRfVar var_B8
  loc_9BC71A: ImpAdCallFPR4  = Year()
  loc_9BC71F: LitI2_Byte 0
  loc_9BC721: PopTmpLdAd2 var_BA
  loc_9BC724: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC729: CVarDate var_DC
  loc_9BC72D: FLdRfVar var_EC
  loc_9BC730: ImpAdCallFPR4  = Month()
  loc_9BC735: LitI2_Byte 1
  loc_9BC737: FLdRfVar var_EC
  loc_9BC73A: CI2Var
  loc_9BC73B: FLdRfVar var_B8
  loc_9BC73E: CI2Var
  loc_9BC73F: FLdRfVar var_FC
  loc_9BC742: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BC747: FLdRfVar var_FC
  loc_9BC74A: CStrVarTmp
  loc_9BC74B: CVarStr var_10C
  loc_9BC74E: PopAdLdVar
  loc_9BC74F: FLdPr Me
  loc_9BC752: VCallAd Control_ID_mskDesde
  loc_9BC755: FStAdFunc var_120
  loc_9BC758: FLdPr var_120
  loc_9BC75B: LateIdSt
  loc_9BC760: FFree1Ad var_120
  loc_9BC763: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BC772: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BC775: CStrDate
  loc_9BC777: CVarStr var_A8
  loc_9BC77A: PopAdLdVar
  loc_9BC77B: FLdPr Me
  loc_9BC77E: VCallAd Control_ID_mskHasta
  loc_9BC781: FStAdFunc var_120
  loc_9BC784: FLdPr var_120
  loc_9BC787: LateIdSt
  loc_9BC78C: FFree1Ad var_120
  loc_9BC78F: FFree1Var var_A8 = ""
  loc_9BC792: Call HabilitarCriterio()
  loc_9BC797: ILdRf Me
  loc_9BC79A: CastAd
  loc_9BC79D: FStAdFunc var_120
  loc_9BC7A0: FLdRfVar var_120
  loc_9BC7A3: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BC7A8: FFree1Ad var_120
  loc_9BC7AB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95A898
  'Data Table: 44F3D8
  loc_95A880: ILdRf Me
  loc_95A883: CastAd
  loc_95A886: FStAdFunc var_88
  loc_95A889: FLdRfVar var_88
  loc_95A88C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95A891: FFree1Ad var_88
  loc_95A894: ExitProcHresult
  loc_95A895: CopyBytes
End Sub

Private Sub mskDesde_UnknownEvent_0 '950220
  'Data Table: 44F3D8
  loc_95020C: FLdPr Me
  loc_95020F: VCallAd Control_ID_mskDesde
  loc_950212: CVarAd
  loc_950216: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95021B: FFree1Var var_94 = ""
  loc_95021E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C3FF8
  'Data Table: 44F3D8
  loc_9C3F34: FLdPr Me
  loc_9C3F37: VCallAd Control_ID_mskDesde
  loc_9C3F3A: FStAdFunc var_88
  loc_9C3F3D: FLdPr var_88
  loc_9C3F40: LateIdLdVar var_98 DispID_22 0
  loc_9C3F47: CStrVarTmp
  loc_9C3F48: FStStrNoPop var_9C
  loc_9C3F4B: LitStr vbNullString
  loc_9C3F4E: NeStr
  loc_9C3F50: FFree1Str var_9C
  loc_9C3F53: FFree1Ad var_88
  loc_9C3F56: FFree1Var var_98 = ""
  loc_9C3F59: BranchF loc_9C3FF4
  loc_9C3F5C: FLdPr Me
  loc_9C3F5F: VCallAd Control_ID_mskDesde
  loc_9C3F62: FStAdFunc var_88
  loc_9C3F65: FLdPr var_88
  loc_9C3F68: LateIdLdVar var_98 DispID_15 0
  loc_9C3F6F: PopAd
  loc_9C3F71: FLdPr Me
  loc_9C3F74: VCallAd Control_ID_mskDesde
  loc_9C3F77: FStAdFunc var_AC
  loc_9C3F7A: LitI2_Byte &HFF
  loc_9C3F7C: PopTmpLdAd2 var_A2
  loc_9C3F7F: FLdZeroAd var_AC
  loc_9C3F82: FStAdFunc var_A0
  loc_9C3F85: FLdRfVar var_A0
  loc_9C3F88: LitStr vbNullString
  loc_9C3F8B: LitI2_Byte 0
  loc_9C3F8D: LitI2_Byte 0
  loc_9C3F8F: FLdRfVar var_98
  loc_9C3F92: CStrVarTmp
  loc_9C3F93: FStStrNoPop var_9C
  loc_9C3F96: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C3F9B: FStStrNoPop var_A8
  loc_9C3F9E: FLdPr Me
  loc_9C3FA1: MemStStrCopy
  loc_9C3FA5: FFreeStr var_9C = ""
  loc_9C3FAC: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3FB5: FFree1Var var_98 = ""
  loc_9C3FB8: FLdPr Me
  loc_9C3FBB: VCallAd Control_ID_mskDesde
  loc_9C3FBE: FStAdFunc var_B0
  loc_9C3FC1: LitNothing
  loc_9C3FC3: CastAd
  loc_9C3FC6: FStAdFunc var_AC
  loc_9C3FC9: FLdRfVar var_AC
  loc_9C3FCC: FLdZeroAd var_B0
  loc_9C3FCF: FStAdFuncNoPop
  loc_9C3FD2: CastAd
  loc_9C3FD5: FStAdFunc var_A0
  loc_9C3FD8: FLdRfVar var_A0
  loc_9C3FDB: FLdPr Me
  loc_9C3FDE: MemLdRfVar from_stack_1.global_100
  loc_9C3FE1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3FE6: IStI2 arg_C
  loc_9C3FE9: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3FF4: ExitProcHresult
  loc_9C3FF5: EqI4
  loc_9C3FF6: FLdPrThis
End Function

Private Sub mskHasta_UnknownEvent_0 '950100
  'Data Table: 44F3D8
  loc_9500EC: FLdPr Me
  loc_9500EF: VCallAd Control_ID_mskHasta
  loc_9500F2: CVarAd
  loc_9500F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9500FB: FFree1Var var_94 = ""
  loc_9500FE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B1AD4
  'Data Table: 44F3D8
  loc_9B1A38: FLdPr Me
  loc_9B1A3B: VCallAd Control_ID_mskHasta
  loc_9B1A3E: FStAdFunc var_88
  loc_9B1A41: FLdPr var_88
  loc_9B1A44: LateIdLdVar var_98 DispID_15 0
  loc_9B1A4B: PopAd
  loc_9B1A4D: FLdPr Me
  loc_9B1A50: VCallAd Control_ID_mskHasta
  loc_9B1A53: FStAdFunc var_AC
  loc_9B1A56: LitI2_Byte &HFF
  loc_9B1A58: PopTmpLdAd2 var_A2
  loc_9B1A5B: FLdZeroAd var_AC
  loc_9B1A5E: FStAdFunc var_A0
  loc_9B1A61: FLdRfVar var_A0
  loc_9B1A64: LitStr vbNullString
  loc_9B1A67: LitI2_Byte 0
  loc_9B1A69: LitI2_Byte 0
  loc_9B1A6B: FLdRfVar var_98
  loc_9B1A6E: CStrVarTmp
  loc_9B1A6F: FStStrNoPop var_9C
  loc_9B1A72: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1A77: FStStrNoPop var_A8
  loc_9B1A7A: FLdPr Me
  loc_9B1A7D: MemStStrCopy
  loc_9B1A81: FFreeStr var_9C = ""
  loc_9B1A88: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1A91: FFree1Var var_98 = ""
  loc_9B1A94: FLdPr Me
  loc_9B1A97: VCallAd Control_ID_mskHasta
  loc_9B1A9A: FStAdFunc var_B0
  loc_9B1A9D: LitNothing
  loc_9B1A9F: CastAd
  loc_9B1AA2: FStAdFunc var_AC
  loc_9B1AA5: FLdRfVar var_AC
  loc_9B1AA8: FLdZeroAd var_B0
  loc_9B1AAB: FStAdFuncNoPop
  loc_9B1AAE: CastAd
  loc_9B1AB1: FStAdFunc var_A0
  loc_9B1AB4: FLdRfVar var_A0
  loc_9B1AB7: FLdPr Me
  loc_9B1ABA: MemLdRfVar from_stack_1.global_100
  loc_9B1ABD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1AC2: IStI2 arg_C
  loc_9B1AC5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1AD0: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97E440
  'Data Table: 44F3D8
  loc_97E40C: LitVar_Missing var_A4
  loc_97E40F: PopAdLdVar
  loc_97E410: LitVarI4
  loc_97E418: PopAdLdVar
  loc_97E419: ImpAdLdRf MemVar_C3D9A8
  loc_97E41C: NewIfNullPr frmCalendario
  loc_97E41F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E424: ImpAdLdRf MemVar_C3D038
  loc_97E427: CDargRef
  loc_97E42B: FLdPr Me
  loc_97E42E: VCallAd Control_ID_mskHasta
  loc_97E431: FStAdFunc var_A8
  loc_97E434: FLdPr var_A8
  loc_97E437: LateIdSt
  loc_97E43C: FFree1Ad var_A8
  loc_97E43F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97E6B0
  'Data Table: 44F3D8
  loc_97E67C: LitVar_Missing var_A4
  loc_97E67F: PopAdLdVar
  loc_97E680: LitVarI4
  loc_97E688: PopAdLdVar
  loc_97E689: ImpAdLdRf MemVar_C3D9A8
  loc_97E68C: NewIfNullPr frmCalendario
  loc_97E68F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E694: ImpAdLdRf MemVar_C3D038
  loc_97E697: CDargRef
  loc_97E69B: FLdPr Me
  loc_97E69E: VCallAd Control_ID_mskDesde
  loc_97E6A1: FStAdFunc var_A8
  loc_97E6A4: FLdPr var_A8
  loc_97E6A7: LateIdSt
  loc_97E6AC: FFree1Ad var_A8
  loc_97E6AF: ExitProcHresult
End Sub

Private Sub Form_Load() '96C220
  'Data Table: 44F3D8
  loc_96C200: LitI2_Byte &HFF
  loc_96C202: ImpAdStI2 MemVar_C3D840
  loc_96C205: ILdRf Me
  loc_96C208: CastAd
  loc_96C20B: FStAdFunc var_88
  loc_96C20E: FLdRfVar var_88
  loc_96C211: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96C216: FFree1Ad var_88
  loc_96C219: Call cmdNueva_Click()
  loc_96C21E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A4BC
  'Data Table: 44F3D8
  loc_95A4A4: FLdPr Me
  loc_95A4A7: VCallAd Control_ID_wbbReporte
  loc_95A4AA: FStAdFunc var_88
  loc_95A4AD: FLdRfVar var_88
  loc_95A4B0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A4B5: FFree1Ad var_88
  loc_95A4B8: ExitProcHresult
End Sub

Public Function bGeneradoGet() '450068
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '450077
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A282C
  'Data Table: 44F3D8
  loc_9A27C8: LitI4 0
  loc_9A27CD: LitI4 3
  loc_9A27D2: FLdRfVar var_88
  loc_9A27D5: Redim
  loc_9A27DF: FLdPr Me
  loc_9A27E2: VCallAd Control_ID_mskDesde
  loc_9A27E5: CVarAd
  loc_9A27E9: ParmAry1St
  loc_9A27EF: FLdPr Me
  loc_9A27F2: VCallAd Control_ID_cmdCalDesde
  loc_9A27F5: CVarAd
  loc_9A27F9: ParmAry1St
  loc_9A27FF: FLdPr Me
  loc_9A2802: VCallAd Control_ID_mskHasta
  loc_9A2805: CVarAd
  loc_9A2809: ParmAry1St
  loc_9A280F: FLdPr Me
  loc_9A2812: VCallAd Control_ID_cmdCalHasta
  loc_9A2815: CVarAd
  loc_9A2819: ParmAry1St
  loc_9A281F: FLdRfVar var_88
  loc_9A2822: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A2827: FLdRfVar var_88
  loc_9A282A: Erase
  loc_9A282B: ExitProcHresult
End Sub

Public Sub GeneraReporte(arg_34) 'B0B06C
  'Data Table: 44F3D8
  loc_B0A870: LitStr vbNullString
  loc_B0A873: FLdPr Me
  loc_B0A876: MemStStrCopy
  loc_B0A87A: LitI2_Byte 0
  loc_B0A87C: PopTmpLdAd2 var_8E
  loc_B0A87F: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B0A884: FLdPr Me
  loc_B0A887: MemLdStr global_100
  loc_B0A88A: LitStr vbNullString
  loc_B0A88D: NeStr
  loc_B0A88F: BranchF loc_B0A895
  loc_B0A892: Branch loc_B0B040
  loc_B0A895: LitI2_Byte 0
  loc_B0A897: PopTmpLdAd2 var_8E
  loc_B0A89A: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B0A89F: FLdPr Me
  loc_B0A8A2: MemLdStr global_100
  loc_B0A8A5: LitStr vbNullString
  loc_B0A8A8: NeStr
  loc_B0A8AA: BranchF loc_B0A8B0
  loc_B0A8AD: Branch loc_B0B040
  loc_B0A8B0: FLdPr Me
  loc_B0A8B3: MemLdI2 bGenerado
  loc_B0A8B6: BranchF loc_B0A8BA
  loc_B0A8B9: ExitProcHresult
  loc_B0A8BA: LitVarStr var_A0, "Generando reporte..."
  loc_B0A8BF: PopAdLdVar
  loc_B0A8C0: FLdPr Me
  loc_B0A8C3: VCallAd Control_ID_statusBar
  loc_B0A8C6: FStAdFunc var_B4
  loc_B0A8C9: FLdPr var_B4
  loc_B0A8CC: LateIdSt
  loc_B0A8D1: FFree1Ad var_B4
  loc_B0A8D4: LitI4 &HB
  loc_B0A8D9: CI2I4
  loc_B0A8DA: FLdPr Me
  loc_B0A8DD: Me.MousePointer = from_stack_1
  loc_B0A8E2: FLdPr Me
  loc_B0A8E5: VCallAd Control_ID_mskDesde
  loc_B0A8E8: FStAdFunc var_B4
  loc_B0A8EB: FLdPr var_B4
  loc_B0A8EE: LateIdLdVar var_C4 DispID_22 0
  loc_B0A8F5: CStrVarTmp
  loc_B0A8F6: FStStrNoPop var_C8
  loc_B0A8F9: LitStr vbNullString
  loc_B0A8FC: NeStr
  loc_B0A8FE: FFree1Str var_C8
  loc_B0A901: FFree1Ad var_B4
  loc_B0A904: FFree1Var var_C4 = ""
  loc_B0A907: BranchF loc_B0A959
  loc_B0A90A: FLdPr Me
  loc_B0A90D: VCallAd Control_ID_mskDesde
  loc_B0A910: FStAdFunc var_B4
  loc_B0A913: FLdPr var_B4
  loc_B0A916: LateIdLdVar var_C4 DispID_15 0
  loc_B0A91D: PopAd
  loc_B0A91F: LitStr " AND FechCaja >= "
  loc_B0A922: LitI4 1
  loc_B0A927: LitI4 1
  loc_B0A92C: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B0A931: FStVarCopyObj var_E8
  loc_B0A934: FLdRfVar var_E8
  loc_B0A937: FLdRfVar var_C4
  loc_B0A93A: CStrVarTmp
  loc_B0A93B: CVarStr var_D8
  loc_B0A93E: ImpAdCallI2 Format$(, )
  loc_B0A943: FStStrNoPop var_C8
  loc_B0A946: ConcatStr
  loc_B0A947: FStStr var_88
  loc_B0A94A: FFree1Str var_C8
  loc_B0A94D: FFree1Ad var_B4
  loc_B0A950: FFreeVar var_C4 = "": var_D8 = ""
  loc_B0A959: FLdPr Me
  loc_B0A95C: VCallAd Control_ID_mskHasta
  loc_B0A95F: FStAdFunc var_B4
  loc_B0A962: FLdPr var_B4
  loc_B0A965: LateIdLdVar var_C4 DispID_22 0
  loc_B0A96C: CStrVarTmp
  loc_B0A96D: FStStrNoPop var_C8
  loc_B0A970: LitStr vbNullString
  loc_B0A973: NeStr
  loc_B0A975: FFree1Str var_C8
  loc_B0A978: FFree1Ad var_B4
  loc_B0A97B: FFree1Var var_C4 = ""
  loc_B0A97E: BranchF loc_B0A9D0
  loc_B0A981: FLdPr Me
  loc_B0A984: VCallAd Control_ID_mskHasta
  loc_B0A987: FStAdFunc var_B4
  loc_B0A98A: FLdPr var_B4
  loc_B0A98D: LateIdLdVar var_C4 DispID_15 0
  loc_B0A994: PopAd
  loc_B0A996: LitStr " AND FechCaja <= "
  loc_B0A999: LitI4 1
  loc_B0A99E: LitI4 1
  loc_B0A9A3: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_B0A9A8: FStVarCopyObj var_E8
  loc_B0A9AB: FLdRfVar var_E8
  loc_B0A9AE: FLdRfVar var_C4
  loc_B0A9B1: CStrVarTmp
  loc_B0A9B2: CVarStr var_D8
  loc_B0A9B5: ImpAdCallI2 Format$(, )
  loc_B0A9BA: FStStrNoPop var_C8
  loc_B0A9BD: ConcatStr
  loc_B0A9BE: FStStr var_8C
  loc_B0A9C1: FFree1Str var_C8
  loc_B0A9C4: FFree1Ad var_B4
  loc_B0A9C7: FFreeVar var_C4 = "": var_D8 = ""
  loc_B0A9D0: FLdPr Me
  loc_B0A9D3: MemLdRfVar from_stack_1.global_56
  loc_B0A9D6: NewIfNullAd
  loc_B0A9D9: FStAd var_EC 
  loc_B0A9DD: LitStr "SELECT DISTINCT cajadeve.CodiCuco, DetaCuco"
  loc_B0A9E0: LitStr " FROM cajadeve"
  loc_B0A9E3: ConcatStr
  loc_B0A9E4: FStStrNoPop var_C8
  loc_B0A9E7: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = cajadeve.PeriInfo AND infogov.cuentacontable.CodiCuco = cajadeve.CodiCuco"
  loc_B0A9EA: ConcatStr
  loc_B0A9EB: FStStrNoPop var_F0
  loc_B0A9EE: LitStr " WHERE TRUE "
  loc_B0A9F1: ConcatStr
  loc_B0A9F2: FStStrNoPop var_F4
  loc_B0A9F5: ILdRf var_88
  loc_B0A9F8: ConcatStr
  loc_B0A9F9: FStStrNoPop var_F8
  loc_B0A9FC: ILdRf var_8C
  loc_B0A9FF: ConcatStr
  loc_B0AA00: FStStrNoPop var_FC
  loc_B0AA03: LitStr " ORDER BY CodiCuco"
  loc_B0AA06: ConcatStr
  loc_B0AA07: FStStrNoPop var_100
  loc_B0AA0A: FLdPr var_EC
  loc_B0AA0D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0AA12: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B0AA21: FLdRfVar var_104
  loc_B0AA24: FLdPr var_EC
  loc_B0AA27: from_stack_1 = clsbase.RecordCount
  loc_B0AA2C: ILdRf var_104
  loc_B0AA2F: LitI4 0
  loc_B0AA34: EqI4
  loc_B0AA35: BranchF loc_B0AA48
  loc_B0AA38: LitI4 0
  loc_B0AA3D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0AA40: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0AA45: Branch loc_B0B040
  loc_B0AA48: LitI2_Byte 0
  loc_B0AA4A: CStrUI1
  loc_B0AA4C: FStStrNoPop var_C8
  loc_B0AA4F: FLdPr Me
  loc_B0AA52: MemStStrCopy
  loc_B0AA56: FFree1Str var_C8
  loc_B0AA59: LitI2_Byte 0
  loc_B0AA5B: CStrUI1
  loc_B0AA5D: FStStrNoPop var_C8
  loc_B0AA60: FLdPr Me
  loc_B0AA63: MemStStrCopy
  loc_B0AA67: FFree1Str var_C8
  loc_B0AA6A: LitI4 1
  loc_B0AA6F: FLdRfVar var_104
  loc_B0AA72: FLdPr Me
  loc_B0AA75: MemLdRfVar from_stack_1.global_56
  loc_B0AA78: NewIfNullPr clsbase
  loc_B0AA7B: from_stack_1 = clsbase.RecordCount
  loc_B0AA80: ILdRf var_104
  loc_B0AA83: FLdPr Me
  loc_B0AA86: MemLdRfVar from_stack_1.global_80
  loc_B0AA89: Redim
  loc_B0AA93: FLdPr var_EC
  loc_B0AA96: Call clsbase.MoveFirst()
  loc_B0AA9B: LitI2_Byte 1
  loc_B0AA9D: FLdPr Me
  loc_B0AAA0: MemLdRfVar from_stack_1.global_92
  loc_B0AAA3: FLdPr Me
  loc_B0AAA6: MemLdStr global_80
  loc_B0AAA9: LitI2_Byte 1
  loc_B0AAAB: FnUBound
  loc_B0AAAD: CI2I4
  loc_B0AAAE: ForI2 var_108
  loc_B0AAB4: FLdRfVar var_110
  loc_B0AAB7: LitVarStr var_A0, "CodiCuco"
  loc_B0AABC: PopAdLdVar
  loc_B0AABD: FLdRfVar var_10C
  loc_B0AAC0: FLdRfVar var_B4
  loc_B0AAC3: FLdPr var_EC
  loc_B0AAC6: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AACB: FLdPr var_B4
  loc_B0AACE:  = Me.Fields
  loc_B0AAD3: FLdPr var_10C
  loc_B0AAD6: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AADB: LitI2_Byte 0
  loc_B0AADD: LitVar_Missing var_D8
  loc_B0AAE0: LitI2_Byte 0
  loc_B0AAE2: FLdZeroAd var_110
  loc_B0AAE5: CVarAd
  loc_B0AAE9: PopAdLdVar
  loc_B0AAEA: FLdPr Me
  loc_B0AAED: MemLdI2 global_92
  loc_B0AAF0: CI4UI1
  loc_B0AAF1: FLdPr Me
  loc_B0AAF4: MemLdStr global_80
  loc_B0AAF7: AryLock
  loc_B0AAFA: Ary1LdPr
  loc_B0AAFB: MemLdRfVar from_stack_1.global_0
  loc_B0AAFE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AB03: AryUnlock
  loc_B0AB06: FFreeAd var_B4 = ""
  loc_B0AB0D: FFreeVar var_C4 = ""
  loc_B0AB14: FLdRfVar var_110
  loc_B0AB17: LitVarStr var_A0, "DetaCuco"
  loc_B0AB1C: PopAdLdVar
  loc_B0AB1D: FLdRfVar var_10C
  loc_B0AB20: FLdRfVar var_B4
  loc_B0AB23: FLdPr var_EC
  loc_B0AB26: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AB2B: FLdPr var_B4
  loc_B0AB2E:  = Me.Fields
  loc_B0AB33: FLdPr var_10C
  loc_B0AB36: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AB3B: LitI2_Byte 0
  loc_B0AB3D: LitVar_Missing var_D8
  loc_B0AB40: LitI2_Byte 0
  loc_B0AB42: FLdZeroAd var_110
  loc_B0AB45: CVarAd
  loc_B0AB49: PopAdLdVar
  loc_B0AB4A: FLdPr Me
  loc_B0AB4D: MemLdI2 global_92
  loc_B0AB50: CI4UI1
  loc_B0AB51: FLdPr Me
  loc_B0AB54: MemLdStr global_80
  loc_B0AB57: AryLock
  loc_B0AB5A: Ary1LdPr
  loc_B0AB5B: MemLdRfVar from_stack_1.global_4
  loc_B0AB5E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AB63: AryUnlock
  loc_B0AB66: FFreeAd var_B4 = ""
  loc_B0AB6D: FFreeVar var_C4 = ""
  loc_B0AB74: FLdPr var_EC
  loc_B0AB77: Call clsbase.MoveSiguiente()
  loc_B0AB7C: FLdPr Me
  loc_B0AB7F: MemLdRfVar from_stack_1.global_92
  loc_B0AB82: NextI2 var_108, loc_B0AAB4
  loc_B0AB87: LitI2_Byte 1
  loc_B0AB89: FLdPr Me
  loc_B0AB8C: MemLdRfVar from_stack_1.global_92
  loc_B0AB8F: FLdPr Me
  loc_B0AB92: MemLdStr global_80
  loc_B0AB95: LitI2_Byte 1
  loc_B0AB97: FnUBound
  loc_B0AB99: CI2I4
  loc_B0AB9A: ForI2 var_118
  loc_B0ABA0: LitStr "SELECT FechCaja, cd.ExpeImpu, cd.CodiPart, cd.CodiOrga, i.NumeImpu, DebeCaja, HabeCaja"
  loc_B0ABA3: LitStr " FROM cajadeve cd"
  loc_B0ABA6: ConcatStr
  loc_B0ABA7: FStStrNoPop var_C8
  loc_B0ABAA: LitStr " INNER JOIN imputacion i ON i.PeriInfo = cd.PeriInfo AND i.IdImpu = cd.IdImpu"
  loc_B0ABAD: ConcatStr
  loc_B0ABAE: FStStrNoPop var_F0
  loc_B0ABB1: LitStr " WHERE CodiCuco = '"
  loc_B0ABB4: ConcatStr
  loc_B0ABB5: FStStrNoPop var_F4
  loc_B0ABB8: FLdPr Me
  loc_B0ABBB: MemLdI2 global_92
  loc_B0ABBE: CI4UI1
  loc_B0ABBF: FLdPr Me
  loc_B0ABC2: MemLdStr global_80
  loc_B0ABC5: Ary1LdPr
  loc_B0ABC6: MemLdStr global_0
  loc_B0ABC9: ConcatStr
  loc_B0ABCA: FStStrNoPop var_F8
  loc_B0ABCD: LitStr "'"
  loc_B0ABD0: ConcatStr
  loc_B0ABD1: FStStrNoPop var_FC
  loc_B0ABD4: ILdRf var_88
  loc_B0ABD7: ConcatStr
  loc_B0ABD8: FStStrNoPop var_100
  loc_B0ABDB: ILdRf var_8C
  loc_B0ABDE: ConcatStr
  loc_B0ABDF: FStStrNoPop var_11C
  loc_B0ABE2: LitStr " ORDER BY FechCaja, ExpeImpu, cd.CodiPart, cd.CodiOrga, i.NumeImpu"
  loc_B0ABE5: ConcatStr
  loc_B0ABE6: FStStrNoPop var_120
  loc_B0ABE9: FLdPr var_EC
  loc_B0ABEC: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0ABF1: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_11C = ""
  loc_B0AC04: FLdRfVar var_104
  loc_B0AC07: FLdPr var_EC
  loc_B0AC0A: from_stack_1 = clsbase.RecordCount
  loc_B0AC0F: ILdRf var_104
  loc_B0AC12: LitI4 0
  loc_B0AC17: GtI4
  loc_B0AC18: BranchF loc_B0AFC9
  loc_B0AC1B: FLdRfVar var_104
  loc_B0AC1E: FLdPr var_EC
  loc_B0AC21: from_stack_1 = clsbase.RecordCount
  loc_B0AC26: LitI4 1
  loc_B0AC2B: ILdRf var_104
  loc_B0AC2E: FLdPr Me
  loc_B0AC31: MemLdI2 global_92
  loc_B0AC34: CI4UI1
  loc_B0AC35: FLdPr Me
  loc_B0AC38: MemLdStr global_80
  loc_B0AC3B: Ary1LdPr
  loc_B0AC3C: MemLdRfVar from_stack_1.global_8
  loc_B0AC3F: Redim
  loc_B0AC49: FLdPr var_EC
  loc_B0AC4C: Call clsbase.MoveFirst()
  loc_B0AC51: LitI2_Byte 1
  loc_B0AC53: FLdPr Me
  loc_B0AC56: MemLdRfVar from_stack_1.global_94
  loc_B0AC59: FLdPr Me
  loc_B0AC5C: MemLdI2 global_92
  loc_B0AC5F: CI4UI1
  loc_B0AC60: FLdPr Me
  loc_B0AC63: MemLdStr global_80
  loc_B0AC66: Ary1LdPr
  loc_B0AC67: MemLdStr global_8
  loc_B0AC6A: LitI2_Byte 1
  loc_B0AC6C: FnUBound
  loc_B0AC6E: CI2I4
  loc_B0AC6F: ForI2 var_124
  loc_B0AC75: FLdRfVar var_110
  loc_B0AC78: LitVarStr var_A0, "FechCaja"
  loc_B0AC7D: PopAdLdVar
  loc_B0AC7E: FLdRfVar var_10C
  loc_B0AC81: FLdRfVar var_B4
  loc_B0AC84: FLdPr var_EC
  loc_B0AC87: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AC8C: FLdPr var_B4
  loc_B0AC8F:  = Me.Fields
  loc_B0AC94: FLdPr var_10C
  loc_B0AC97: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AC9C: LitI2_Byte 0
  loc_B0AC9E: LitVar_Missing var_D8
  loc_B0ACA1: LitI2_Byte 0
  loc_B0ACA3: FLdZeroAd var_110
  loc_B0ACA6: CVarAd
  loc_B0ACAA: PopAdLdVar
  loc_B0ACAB: FLdPr Me
  loc_B0ACAE: MemLdI2 global_94
  loc_B0ACB1: CI4UI1
  loc_B0ACB2: FLdPr Me
  loc_B0ACB5: MemLdI2 global_92
  loc_B0ACB8: CI4UI1
  loc_B0ACB9: FLdPr Me
  loc_B0ACBC: MemLdStr global_80
  loc_B0ACBF: AryLock
  loc_B0ACC2: Ary1LdPr
  loc_B0ACC3: MemLdStr global_8
  loc_B0ACC6: AryLock
  loc_B0ACC9: Ary1LdPr
  loc_B0ACCA: MemLdRfVar from_stack_1.global_0
  loc_B0ACCD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0ACD2: AryUnlock
  loc_B0ACD5: AryUnlock
  loc_B0ACD8: FFreeAd var_B4 = ""
  loc_B0ACDF: FFreeVar var_C4 = ""
  loc_B0ACE6: FLdRfVar var_110
  loc_B0ACE9: LitVarStr var_A0, "ExpeImpu"
  loc_B0ACEE: PopAdLdVar
  loc_B0ACEF: FLdRfVar var_10C
  loc_B0ACF2: FLdRfVar var_B4
  loc_B0ACF5: FLdPr var_EC
  loc_B0ACF8: from_stack_1v = clsbase.RsFrmGet()
  loc_B0ACFD: FLdPr var_B4
  loc_B0AD00:  = Me.Fields
  loc_B0AD05: FLdPr var_10C
  loc_B0AD08: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AD0D: LitI2_Byte 0
  loc_B0AD0F: LitVar_Missing var_D8
  loc_B0AD12: LitI2_Byte 0
  loc_B0AD14: FLdZeroAd var_110
  loc_B0AD17: CVarAd
  loc_B0AD1B: PopAdLdVar
  loc_B0AD1C: FLdPr Me
  loc_B0AD1F: MemLdI2 global_94
  loc_B0AD22: CI4UI1
  loc_B0AD23: FLdPr Me
  loc_B0AD26: MemLdI2 global_92
  loc_B0AD29: CI4UI1
  loc_B0AD2A: FLdPr Me
  loc_B0AD2D: MemLdStr global_80
  loc_B0AD30: AryLock
  loc_B0AD33: Ary1LdPr
  loc_B0AD34: MemLdStr global_8
  loc_B0AD37: AryLock
  loc_B0AD3A: Ary1LdPr
  loc_B0AD3B: MemLdRfVar from_stack_1.global_4
  loc_B0AD3E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AD43: AryUnlock
  loc_B0AD46: AryUnlock
  loc_B0AD49: FFreeAd var_B4 = ""
  loc_B0AD50: FFreeVar var_C4 = ""
  loc_B0AD57: FLdRfVar var_110
  loc_B0AD5A: LitVarStr var_A0, "CodiPart"
  loc_B0AD5F: PopAdLdVar
  loc_B0AD60: FLdRfVar var_10C
  loc_B0AD63: FLdRfVar var_B4
  loc_B0AD66: FLdPr var_EC
  loc_B0AD69: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AD6E: FLdPr var_B4
  loc_B0AD71:  = Me.Fields
  loc_B0AD76: FLdPr var_10C
  loc_B0AD79: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AD7E: LitI2_Byte 0
  loc_B0AD80: LitVar_Missing var_D8
  loc_B0AD83: LitI2_Byte 0
  loc_B0AD85: FLdZeroAd var_110
  loc_B0AD88: CVarAd
  loc_B0AD8C: PopAdLdVar
  loc_B0AD8D: FLdPr Me
  loc_B0AD90: MemLdI2 global_94
  loc_B0AD93: CI4UI1
  loc_B0AD94: FLdPr Me
  loc_B0AD97: MemLdI2 global_92
  loc_B0AD9A: CI4UI1
  loc_B0AD9B: FLdPr Me
  loc_B0AD9E: MemLdStr global_80
  loc_B0ADA1: AryLock
  loc_B0ADA4: Ary1LdPr
  loc_B0ADA5: MemLdStr global_8
  loc_B0ADA8: AryLock
  loc_B0ADAB: Ary1LdPr
  loc_B0ADAC: MemLdRfVar from_stack_1.global_8
  loc_B0ADAF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0ADB4: AryUnlock
  loc_B0ADB7: AryUnlock
  loc_B0ADBA: FFreeAd var_B4 = ""
  loc_B0ADC1: FFreeVar var_C4 = ""
  loc_B0ADC8: FLdRfVar var_110
  loc_B0ADCB: LitVarStr var_A0, "CodiOrga"
  loc_B0ADD0: PopAdLdVar
  loc_B0ADD1: FLdRfVar var_10C
  loc_B0ADD4: FLdRfVar var_B4
  loc_B0ADD7: FLdPr var_EC
  loc_B0ADDA: from_stack_1v = clsbase.RsFrmGet()
  loc_B0ADDF: FLdPr var_B4
  loc_B0ADE2:  = Me.Fields
  loc_B0ADE7: FLdPr var_10C
  loc_B0ADEA: from_stack_2 = Me.Item(from_stack_1)
  loc_B0ADEF: LitI2_Byte 0
  loc_B0ADF1: LitVar_Missing var_D8
  loc_B0ADF4: LitI2_Byte 0
  loc_B0ADF6: FLdZeroAd var_110
  loc_B0ADF9: CVarAd
  loc_B0ADFD: PopAdLdVar
  loc_B0ADFE: FLdPr Me
  loc_B0AE01: MemLdI2 global_94
  loc_B0AE04: CI4UI1
  loc_B0AE05: FLdPr Me
  loc_B0AE08: MemLdI2 global_92
  loc_B0AE0B: CI4UI1
  loc_B0AE0C: FLdPr Me
  loc_B0AE0F: MemLdStr global_80
  loc_B0AE12: AryLock
  loc_B0AE15: Ary1LdPr
  loc_B0AE16: MemLdStr global_8
  loc_B0AE19: AryLock
  loc_B0AE1C: Ary1LdPr
  loc_B0AE1D: MemLdRfVar from_stack_1.global_12
  loc_B0AE20: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AE25: AryUnlock
  loc_B0AE28: AryUnlock
  loc_B0AE2B: FFreeAd var_B4 = ""
  loc_B0AE32: FFreeVar var_C4 = ""
  loc_B0AE39: FLdRfVar var_110
  loc_B0AE3C: LitVarStr var_A0, "NumeImpu"
  loc_B0AE41: PopAdLdVar
  loc_B0AE42: FLdRfVar var_10C
  loc_B0AE45: FLdRfVar var_B4
  loc_B0AE48: FLdPr var_EC
  loc_B0AE4B: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AE50: FLdPr var_B4
  loc_B0AE53:  = Me.Fields
  loc_B0AE58: FLdPr var_10C
  loc_B0AE5B: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AE60: LitI2_Byte 0
  loc_B0AE62: LitVar_Missing var_D8
  loc_B0AE65: LitI2_Byte 0
  loc_B0AE67: FLdZeroAd var_110
  loc_B0AE6A: CVarAd
  loc_B0AE6E: PopAdLdVar
  loc_B0AE6F: FLdPr Me
  loc_B0AE72: MemLdI2 global_94
  loc_B0AE75: CI4UI1
  loc_B0AE76: FLdPr Me
  loc_B0AE79: MemLdI2 global_92
  loc_B0AE7C: CI4UI1
  loc_B0AE7D: FLdPr Me
  loc_B0AE80: MemLdStr global_80
  loc_B0AE83: AryLock
  loc_B0AE86: Ary1LdPr
  loc_B0AE87: MemLdStr global_8
  loc_B0AE8A: AryLock
  loc_B0AE8D: Ary1LdPr
  loc_B0AE8E: MemLdRfVar from_stack_1.global_16
  loc_B0AE91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AE96: AryUnlock
  loc_B0AE99: AryUnlock
  loc_B0AE9C: FFreeAd var_B4 = ""
  loc_B0AEA3: FFreeVar var_C4 = ""
  loc_B0AEAA: FLdRfVar var_110
  loc_B0AEAD: LitVarStr var_A0, "DebeCaja"
  loc_B0AEB2: PopAdLdVar
  loc_B0AEB3: FLdRfVar var_10C
  loc_B0AEB6: FLdRfVar var_B4
  loc_B0AEB9: FLdPr var_EC
  loc_B0AEBC: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AEC1: FLdPr var_B4
  loc_B0AEC4:  = Me.Fields
  loc_B0AEC9: FLdPr var_10C
  loc_B0AECC: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AED1: LitI2_Byte 0
  loc_B0AED3: FLdPr Me
  loc_B0AED6: MemLdI2 global_92
  loc_B0AED9: CI4UI1
  loc_B0AEDA: FLdPr Me
  loc_B0AEDD: MemLdStr global_80
  loc_B0AEE0: AryLock
  loc_B0AEE3: Ary1LdPr
  loc_B0AEE4: MemLdRfVar from_stack_1.global_12
  loc_B0AEE7: CVarRef
  loc_B0AEEC: LitI2_Byte &HFF
  loc_B0AEEE: FLdZeroAd var_110
  loc_B0AEF1: CVarAd
  loc_B0AEF5: PopAdLdVar
  loc_B0AEF6: FLdPr Me
  loc_B0AEF9: MemLdI2 global_94
  loc_B0AEFC: CI4UI1
  loc_B0AEFD: FLdPr Me
  loc_B0AF00: MemLdI2 global_92
  loc_B0AF03: CI4UI1
  loc_B0AF04: FLdPr Me
  loc_B0AF07: MemLdStr global_80
  loc_B0AF0A: AryLock
  loc_B0AF0D: Ary1LdPr
  loc_B0AF0E: MemLdStr global_8
  loc_B0AF11: AryLock
  loc_B0AF14: Ary1LdPr
  loc_B0AF15: MemLdRfVar from_stack_1.global_20
  loc_B0AF18: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AF1D: AryUnlock
  loc_B0AF20: AryUnlock
  loc_B0AF23: AryUnlock
  loc_B0AF26: FFreeAd var_B4 = ""
  loc_B0AF2D: FFree1Var var_C4 = ""
  loc_B0AF30: FLdRfVar var_110
  loc_B0AF33: LitVarStr var_A0, "HabeCaja"
  loc_B0AF38: PopAdLdVar
  loc_B0AF39: FLdRfVar var_10C
  loc_B0AF3C: FLdRfVar var_B4
  loc_B0AF3F: FLdPr var_EC
  loc_B0AF42: from_stack_1v = clsbase.RsFrmGet()
  loc_B0AF47: FLdPr var_B4
  loc_B0AF4A:  = Me.Fields
  loc_B0AF4F: FLdPr var_10C
  loc_B0AF52: from_stack_2 = Me.Item(from_stack_1)
  loc_B0AF57: LitI2_Byte 0
  loc_B0AF59: FLdPr Me
  loc_B0AF5C: MemLdI2 global_92
  loc_B0AF5F: CI4UI1
  loc_B0AF60: FLdPr Me
  loc_B0AF63: MemLdStr global_80
  loc_B0AF66: AryLock
  loc_B0AF69: Ary1LdPr
  loc_B0AF6A: MemLdRfVar from_stack_1.global_16
  loc_B0AF6D: CVarRef
  loc_B0AF72: LitI2_Byte &HFF
  loc_B0AF74: FLdZeroAd var_110
  loc_B0AF77: CVarAd
  loc_B0AF7B: PopAdLdVar
  loc_B0AF7C: FLdPr Me
  loc_B0AF7F: MemLdI2 global_94
  loc_B0AF82: CI4UI1
  loc_B0AF83: FLdPr Me
  loc_B0AF86: MemLdI2 global_92
  loc_B0AF89: CI4UI1
  loc_B0AF8A: FLdPr Me
  loc_B0AF8D: MemLdStr global_80
  loc_B0AF90: AryLock
  loc_B0AF93: Ary1LdPr
  loc_B0AF94: MemLdStr global_8
  loc_B0AF97: AryLock
  loc_B0AF9A: Ary1LdPr
  loc_B0AF9B: MemLdRfVar from_stack_1.global_24
  loc_B0AF9E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AFA3: AryUnlock
  loc_B0AFA6: AryUnlock
  loc_B0AFA9: AryUnlock
  loc_B0AFAC: FFreeAd var_B4 = ""
  loc_B0AFB3: FFree1Var var_C4 = ""
  loc_B0AFB6: FLdPr var_EC
  loc_B0AFB9: Call clsbase.MoveSiguiente()
  loc_B0AFBE: FLdPr Me
  loc_B0AFC1: MemLdRfVar from_stack_1.global_94
  loc_B0AFC4: NextI2 var_124, loc_B0AC75
  loc_B0AFC9: LitI2_Byte 0
  loc_B0AFCB: FLdPr Me
  loc_B0AFCE: MemLdRfVar from_stack_1.global_84
  loc_B0AFD1: CVarRef
  loc_B0AFD6: LitI2_Byte &HFF
  loc_B0AFD8: FLdPr Me
  loc_B0AFDB: MemLdI2 global_92
  loc_B0AFDE: CI4UI1
  loc_B0AFDF: FLdPr Me
  loc_B0AFE2: MemLdStr global_80
  loc_B0AFE5: Ary1LdPr
  loc_B0AFE6: MemLdStr global_12
  loc_B0AFE9: CVarStr var_A0
  loc_B0AFEC: PopAdLdVar
  loc_B0AFED: FLdPr Me
  loc_B0AFF0: MemLdRfVar from_stack_1.global_96
  loc_B0AFF3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0AFF8: LitI2_Byte 0
  loc_B0AFFA: FLdPr Me
  loc_B0AFFD: MemLdRfVar from_stack_1.global_88
  loc_B0B000: CVarRef
  loc_B0B005: LitI2_Byte &HFF
  loc_B0B007: FLdPr Me
  loc_B0B00A: MemLdI2 global_92
  loc_B0B00D: CI4UI1
  loc_B0B00E: FLdPr Me
  loc_B0B011: MemLdStr global_80
  loc_B0B014: Ary1LdPr
  loc_B0B015: MemLdStr global_16
  loc_B0B018: CVarStr var_A0
  loc_B0B01B: PopAdLdVar
  loc_B0B01C: FLdPr Me
  loc_B0B01F: MemLdRfVar from_stack_1.global_96
  loc_B0B022: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B027: FLdPr Me
  loc_B0B02A: MemLdRfVar from_stack_1.global_92
  loc_B0B02D: NextI2 var_118, loc_B0ABA0
  loc_B0B032: LitNothing
  loc_B0B034: FStAd var_EC 
  loc_B0B038: LitI2_Byte &HFF
  loc_B0B03A: FLdPr Me
  loc_B0B03D: MemStI2 bGenerado
  loc_B0B040: LitI4 0
  loc_B0B045: CI2I4
  loc_B0B046: FLdPr Me
  loc_B0B049: Me.MousePointer = from_stack_1
  loc_B0B04E: LitVarStr var_A0, vbNullString
  loc_B0B053: PopAdLdVar
  loc_B0B054: FLdPr Me
  loc_B0B057: VCallAd Control_ID_statusBar
  loc_B0B05A: FStAdFunc var_B4
  loc_B0B05D: FLdPr var_B4
  loc_B0B060: LateIdSt
  loc_B0B065: FFree1Ad var_B4
  loc_B0B068: ExitProcHresult
  loc_B0B069: ILdI4 arg_345
End Sub

Public Sub GeneraHTML() 'AE52C4
  'Data Table: 44F3D8
  loc_AE4C1C: FLdRfVar var_88
  loc_AE4C1F: LitI2_Byte 0
  loc_AE4C21: LitI2_Byte &HFF
  loc_AE4C23: ImpAdLdI4 MemVar_C3D83C
  loc_AE4C26: FLdPr Me
  loc_AE4C29: MemLdRfVar from_stack_1.global_60
  loc_AE4C2C: NewIfNullPr IFileSystem3
  loc_AE4C2F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE4C34: ILdRf var_88
  loc_AE4C37: FLdPr Me
  loc_AE4C3A: MemStVarAd
  loc_AE4C3E: FFree1Ad var_88
  loc_AE4C41: Call Proc_242_19_AD1A58()
  loc_AE4C46: LitI2_Byte 1
  loc_AE4C48: FLdPr Me
  loc_AE4C4B: MemLdRfVar from_stack_1.global_92
  loc_AE4C4E: FLdPr Me
  loc_AE4C51: MemLdStr global_80
  loc_AE4C54: LitI2_Byte 1
  loc_AE4C56: FnUBound
  loc_AE4C58: CI2I4
  loc_AE4C59: ForI2 var_8C
  loc_AE4C5F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE4C64: PopAdLdVar
  loc_AE4C65: FLdPr Me
  loc_AE4C68: MemLdRfVar from_stack_1.global_64
  loc_AE4C6B: LdPrVar
  loc_AE4C6D: LateMemCall
  loc_AE4C73: LitStr "    <td rowspan="""
  loc_AE4C76: FLdPr Me
  loc_AE4C79: MemLdI2 global_92
  loc_AE4C7C: CI4UI1
  loc_AE4C7D: FLdPr Me
  loc_AE4C80: MemLdStr global_80
  loc_AE4C83: Ary1LdPr
  loc_AE4C84: MemLdStr global_8
  loc_AE4C87: LitI2_Byte 1
  loc_AE4C89: FnUBound
  loc_AE4C8B: LitI4 1
  loc_AE4C90: AddI4
  loc_AE4C91: CStrI4
  loc_AE4C93: FStStrNoPop var_B0
  loc_AE4C96: ConcatStr
  loc_AE4C97: FStStrNoPop var_B4
  loc_AE4C9A: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AE4C9D: ConcatStr
  loc_AE4C9E: FStStrNoPop var_B8
  loc_AE4CA1: FLdPr Me
  loc_AE4CA4: MemLdI2 global_92
  loc_AE4CA7: CI4UI1
  loc_AE4CA8: FLdPr Me
  loc_AE4CAB: MemLdStr global_80
  loc_AE4CAE: Ary1LdPr
  loc_AE4CAF: MemLdStr global_0
  loc_AE4CB2: ConcatStr
  loc_AE4CB3: FStStrNoPop var_BC
  loc_AE4CB6: LitStr "<br>"
  loc_AE4CB9: ConcatStr
  loc_AE4CBA: FStStrNoPop var_C0
  loc_AE4CBD: FLdPr Me
  loc_AE4CC0: MemLdI2 global_92
  loc_AE4CC3: CI4UI1
  loc_AE4CC4: FLdPr Me
  loc_AE4CC7: MemLdStr global_80
  loc_AE4CCA: Ary1LdPr
  loc_AE4CCB: MemLdStr global_4
  loc_AE4CCE: ConcatStr
  loc_AE4CCF: FStStrNoPop var_C4
  loc_AE4CD2: LitStr "</td>"
  loc_AE4CD5: ConcatStr
  loc_AE4CD6: CVarStr var_D4
  loc_AE4CD9: PopAdLdVar
  loc_AE4CDA: FLdPr Me
  loc_AE4CDD: MemLdRfVar from_stack_1.global_64
  loc_AE4CE0: LdPrVar
  loc_AE4CE2: LateMemCall
  loc_AE4CE8: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AE4CF7: FFree1Var var_D4 = ""
  loc_AE4CFA: LitI2_Byte 1
  loc_AE4CFC: FLdPr Me
  loc_AE4CFF: MemLdRfVar from_stack_1.global_94
  loc_AE4D02: FLdPr Me
  loc_AE4D05: MemLdI2 global_92
  loc_AE4D08: CI4UI1
  loc_AE4D09: FLdPr Me
  loc_AE4D0C: MemLdStr global_80
  loc_AE4D0F: Ary1LdPr
  loc_AE4D10: MemLdStr global_8
  loc_AE4D13: LitI2_Byte 1
  loc_AE4D15: FnUBound
  loc_AE4D17: CI2I4
  loc_AE4D18: ForI2 var_D8
  loc_AE4D1E: FLdPr Me
  loc_AE4D21: MemLdI2 global_94
  loc_AE4D24: CI4UI1
  loc_AE4D25: FLdPr Me
  loc_AE4D28: MemLdI2 global_92
  loc_AE4D2B: CI4UI1
  loc_AE4D2C: FLdPr Me
  loc_AE4D2F: MemLdStr global_80
  loc_AE4D32: AryLock
  loc_AE4D35: Ary1LdPr
  loc_AE4D36: MemLdStr global_8
  loc_AE4D39: AryLock
  loc_AE4D3C: Ary1LdRf
  loc_AE4D3D: FStR4 var_E4
  loc_AE4D40: FLdPr Me
  loc_AE4D43: MemLdI2 global_94
  loc_AE4D46: LitI2_Byte 1
  loc_AE4D48: NeI2
  loc_AE4D49: BranchF loc_AE4D60
  loc_AE4D4C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE4D51: PopAdLdVar
  loc_AE4D52: FLdPr Me
  loc_AE4D55: MemLdRfVar from_stack_1.global_64
  loc_AE4D58: LdPrVar
  loc_AE4D5A: LateMemCall
  loc_AE4D60: LitI4 0
  loc_AE4D65: LitI4 0
  loc_AE4D6A: LitI2_Byte 0
  loc_AE4D6C: LitStr "center"
  loc_AE4D6F: FMemLdR4 var_E4(0)
  loc_AE4D74: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4D79: CVarStr var_D4
  loc_AE4D7C: PopAdLdVar
  loc_AE4D7D: FLdPr Me
  loc_AE4D80: MemLdRfVar from_stack_1.global_64
  loc_AE4D83: LdPrVar
  loc_AE4D85: LateMemCall
  loc_AE4D8B: FFree1Var var_D4 = ""
  loc_AE4D8E: LitI4 0
  loc_AE4D93: LitI4 0
  loc_AE4D98: LitI2_Byte 0
  loc_AE4D9A: LitStr "left"
  loc_AE4D9D: FMemLdR4 var_E4(4)
  loc_AE4DA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4DA7: CVarStr var_D4
  loc_AE4DAA: PopAdLdVar
  loc_AE4DAB: FLdPr Me
  loc_AE4DAE: MemLdRfVar from_stack_1.global_64
  loc_AE4DB1: LdPrVar
  loc_AE4DB3: LateMemCall
  loc_AE4DB9: FFree1Var var_D4 = ""
  loc_AE4DBC: LitI4 0
  loc_AE4DC1: LitI4 0
  loc_AE4DC6: LitI2_Byte 0
  loc_AE4DC8: LitStr "left"
  loc_AE4DCB: FMemLdR4 var_E4(8)
  loc_AE4DD0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4DD5: CVarStr var_D4
  loc_AE4DD8: PopAdLdVar
  loc_AE4DD9: FLdPr Me
  loc_AE4DDC: MemLdRfVar from_stack_1.global_64
  loc_AE4DDF: LdPrVar
  loc_AE4DE1: LateMemCall
  loc_AE4DE7: FFree1Var var_D4 = ""
  loc_AE4DEA: LitI4 0
  loc_AE4DEF: LitI4 0
  loc_AE4DF4: LitI2_Byte 0
  loc_AE4DF6: LitStr "left"
  loc_AE4DF9: FMemLdR4 var_E4(12)
  loc_AE4DFE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4E03: CVarStr var_D4
  loc_AE4E06: PopAdLdVar
  loc_AE4E07: FLdPr Me
  loc_AE4E0A: MemLdRfVar from_stack_1.global_64
  loc_AE4E0D: LdPrVar
  loc_AE4E0F: LateMemCall
  loc_AE4E15: FFree1Var var_D4 = ""
  loc_AE4E18: LitI4 0
  loc_AE4E1D: LitI4 0
  loc_AE4E22: LitI2_Byte 0
  loc_AE4E24: LitStr "right"
  loc_AE4E27: FMemLdR4 var_E4(16)
  loc_AE4E2C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4E31: CVarStr var_D4
  loc_AE4E34: PopAdLdVar
  loc_AE4E35: FLdPr Me
  loc_AE4E38: MemLdRfVar from_stack_1.global_64
  loc_AE4E3B: LdPrVar
  loc_AE4E3D: LateMemCall
  loc_AE4E43: FFree1Var var_D4 = ""
  loc_AE4E46: LitI4 0
  loc_AE4E4B: LitI4 0
  loc_AE4E50: LitI2_Byte 0
  loc_AE4E52: LitStr "right"
  loc_AE4E55: FMemLdR4 var_E4(20)
  loc_AE4E5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4E5F: CVarStr var_D4
  loc_AE4E62: PopAdLdVar
  loc_AE4E63: FLdPr Me
  loc_AE4E66: MemLdRfVar from_stack_1.global_64
  loc_AE4E69: LdPrVar
  loc_AE4E6B: LateMemCall
  loc_AE4E71: FFree1Var var_D4 = ""
  loc_AE4E74: LitI4 0
  loc_AE4E79: LitI4 0
  loc_AE4E7E: LitI2_Byte 0
  loc_AE4E80: LitStr "right"
  loc_AE4E83: FMemLdR4 var_E4(24)
  loc_AE4E88: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE4E8D: CVarStr var_D4
  loc_AE4E90: PopAdLdVar
  loc_AE4E91: FLdPr Me
  loc_AE4E94: MemLdRfVar from_stack_1.global_64
  loc_AE4E97: LdPrVar
  loc_AE4E99: LateMemCall
  loc_AE4E9F: FFree1Var var_D4 = ""
  loc_AE4EA2: LitVarStr var_9C, "  </tr>"
  loc_AE4EA7: PopAdLdVar
  loc_AE4EA8: FLdPr Me
  loc_AE4EAB: MemLdRfVar from_stack_1.global_64
  loc_AE4EAE: LdPrVar
  loc_AE4EB0: LateMemCall
  loc_AE4EB6: LitI4 0
  loc_AE4EBB: FStR4 var_E4
  loc_AE4EBE: AryUnlock
  loc_AE4EC1: AryUnlock
  loc_AE4EC4: FLdPr Me
  loc_AE4EC7: MemLdRfVar from_stack_1.global_94
  loc_AE4ECA: NextI2 var_D8, loc_AE4D1E
  loc_AE4ECF: LitVarStr var_9C, "  <tr>"
  loc_AE4ED4: PopAdLdVar
  loc_AE4ED5: FLdPr Me
  loc_AE4ED8: MemLdRfVar from_stack_1.global_64
  loc_AE4EDB: LdPrVar
  loc_AE4EDD: LateMemCall
  loc_AE4EE3: LitVarStr var_9C, "    <th colspan=""4"" align=""left"">&nbsp;</th>"
  loc_AE4EE8: PopAdLdVar
  loc_AE4EE9: FLdPr Me
  loc_AE4EEC: MemLdRfVar from_stack_1.global_64
  loc_AE4EEF: LdPrVar
  loc_AE4EF1: LateMemCall
  loc_AE4EF7: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AE4EFC: PopAdLdVar
  loc_AE4EFD: FLdPr Me
  loc_AE4F00: MemLdRfVar from_stack_1.global_64
  loc_AE4F03: LdPrVar
  loc_AE4F05: LateMemCall
  loc_AE4F0B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE4F0E: FLdPr Me
  loc_AE4F11: MemLdI2 global_92
  loc_AE4F14: CI4UI1
  loc_AE4F15: FLdPr Me
  loc_AE4F18: MemLdStr global_80
  loc_AE4F1B: Ary1LdPr
  loc_AE4F1C: MemLdStr global_12
  loc_AE4F1F: ConcatStr
  loc_AE4F20: FStStrNoPop var_B0
  loc_AE4F23: LitStr "</td>"
  loc_AE4F26: ConcatStr
  loc_AE4F27: CVarStr var_D4
  loc_AE4F2A: PopAdLdVar
  loc_AE4F2B: FLdPr Me
  loc_AE4F2E: MemLdRfVar from_stack_1.global_64
  loc_AE4F31: LdPrVar
  loc_AE4F33: LateMemCall
  loc_AE4F39: FFree1Str var_B0
  loc_AE4F3C: FFree1Var var_D4 = ""
  loc_AE4F3F: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE4F42: FLdPr Me
  loc_AE4F45: MemLdI2 global_92
  loc_AE4F48: CI4UI1
  loc_AE4F49: FLdPr Me
  loc_AE4F4C: MemLdStr global_80
  loc_AE4F4F: Ary1LdPr
  loc_AE4F50: MemLdStr global_16
  loc_AE4F53: ConcatStr
  loc_AE4F54: FStStrNoPop var_B0
  loc_AE4F57: LitStr "</td>"
  loc_AE4F5A: ConcatStr
  loc_AE4F5B: CVarStr var_D4
  loc_AE4F5E: PopAdLdVar
  loc_AE4F5F: FLdPr Me
  loc_AE4F62: MemLdRfVar from_stack_1.global_64
  loc_AE4F65: LdPrVar
  loc_AE4F67: LateMemCall
  loc_AE4F6D: FFree1Str var_B0
  loc_AE4F70: FFree1Var var_D4 = ""
  loc_AE4F73: LitVarStr var_9C, "  </tr>"
  loc_AE4F78: PopAdLdVar
  loc_AE4F79: FLdPr Me
  loc_AE4F7C: MemLdRfVar from_stack_1.global_64
  loc_AE4F7F: LdPrVar
  loc_AE4F81: LateMemCall
  loc_AE4F87: FLdPr Me
  loc_AE4F8A: MemLdRfVar from_stack_1.global_92
  loc_AE4F8D: NextI2 var_8C, loc_AE4C5F
  loc_AE4F92: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE4F97: PopAdLdVar
  loc_AE4F98: FLdPr Me
  loc_AE4F9B: MemLdRfVar from_stack_1.global_64
  loc_AE4F9E: LdPrVar
  loc_AE4FA0: LateMemCall
  loc_AE4FA6: LitVarStr var_9C, "  <tr>"
  loc_AE4FAB: PopAdLdVar
  loc_AE4FAC: FLdPr Me
  loc_AE4FAF: MemLdRfVar from_stack_1.global_64
  loc_AE4FB2: LdPrVar
  loc_AE4FB4: LateMemCall
  loc_AE4FBA: LitVarStr var_9C, "    <td colspan=""5"" align=""left"">&nbsp;</th>"
  loc_AE4FBF: PopAdLdVar
  loc_AE4FC0: FLdPr Me
  loc_AE4FC3: MemLdRfVar from_stack_1.global_64
  loc_AE4FC6: LdPrVar
  loc_AE4FC8: LateMemCall
  loc_AE4FCE: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE4FD3: PopAdLdVar
  loc_AE4FD4: FLdPr Me
  loc_AE4FD7: MemLdRfVar from_stack_1.global_64
  loc_AE4FDA: LdPrVar
  loc_AE4FDC: LateMemCall
  loc_AE4FE2: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE4FE5: FLdPr Me
  loc_AE4FE8: MemLdStr global_84
  loc_AE4FEB: ConcatStr
  loc_AE4FEC: FStStrNoPop var_B0
  loc_AE4FEF: LitStr "</td>"
  loc_AE4FF2: ConcatStr
  loc_AE4FF3: CVarStr var_D4
  loc_AE4FF6: PopAdLdVar
  loc_AE4FF7: FLdPr Me
  loc_AE4FFA: MemLdRfVar from_stack_1.global_64
  loc_AE4FFD: LdPrVar
  loc_AE4FFF: LateMemCall
  loc_AE5005: FFree1Str var_B0
  loc_AE5008: FFree1Var var_D4 = ""
  loc_AE500B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE500E: FLdPr Me
  loc_AE5011: MemLdStr global_88
  loc_AE5014: ConcatStr
  loc_AE5015: FStStrNoPop var_B0
  loc_AE5018: LitStr "</td>"
  loc_AE501B: ConcatStr
  loc_AE501C: CVarStr var_D4
  loc_AE501F: PopAdLdVar
  loc_AE5020: FLdPr Me
  loc_AE5023: MemLdRfVar from_stack_1.global_64
  loc_AE5026: LdPrVar
  loc_AE5028: LateMemCall
  loc_AE502E: FFree1Str var_B0
  loc_AE5031: FFree1Var var_D4 = ""
  loc_AE5034: LitVarStr var_9C, "  </tr>"
  loc_AE5039: PopAdLdVar
  loc_AE503A: FLdPr Me
  loc_AE503D: MemLdRfVar from_stack_1.global_64
  loc_AE5040: LdPrVar
  loc_AE5042: LateMemCall
  loc_AE5048: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AE504D: PopAdLdVar
  loc_AE504E: FLdPr Me
  loc_AE5051: MemLdRfVar from_stack_1.global_64
  loc_AE5054: LdPrVar
  loc_AE5056: LateMemCall
  loc_AE505C: FLdPr Me
  loc_AE505F: MemLdStr global_88
  loc_AE5062: CR8Str
  loc_AE5064: FLdPr Me
  loc_AE5067: MemLdStr global_84
  loc_AE506A: CR8Str
  loc_AE506C: SubR4
  loc_AE506D: CR8R8
  loc_AE506E: LitI2_Byte 0
  loc_AE5070: CR8I2
  loc_AE5071: GtR4
  loc_AE5072: BranchF loc_AE50B8
  loc_AE5075: LitI2_Byte 0
  loc_AE5077: LitVar_Missing var_D4
  loc_AE507A: LitI2_Byte &HFF
  loc_AE507C: FLdPr Me
  loc_AE507F: MemLdStr global_88
  loc_AE5082: CR8Str
  loc_AE5084: FLdPr Me
  loc_AE5087: MemLdStr global_84
  loc_AE508A: CR8Str
  loc_AE508C: SubR4
  loc_AE508D: CVarR8
  loc_AE5091: PopAdLdVar
  loc_AE5092: FLdRfVar var_EC
  loc_AE5095: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE509A: FFree1Var var_D4 = ""
  loc_AE509D: LitI2_Byte 0
  loc_AE509F: LitVar_Missing var_D4
  loc_AE50A2: LitI2_Byte &HFF
  loc_AE50A4: LitVarStr var_9C, "0"
  loc_AE50A9: PopAdLdVar
  loc_AE50AA: FLdRfVar var_F0
  loc_AE50AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE50B2: FFree1Var var_D4 = ""
  loc_AE50B5: Branch loc_AE50F8
  loc_AE50B8: LitI2_Byte 0
  loc_AE50BA: LitVar_Missing var_D4
  loc_AE50BD: LitI2_Byte &HFF
  loc_AE50BF: FLdPr Me
  loc_AE50C2: MemLdStr global_84
  loc_AE50C5: CR8Str
  loc_AE50C7: FLdPr Me
  loc_AE50CA: MemLdStr global_88
  loc_AE50CD: CR8Str
  loc_AE50CF: SubR4
  loc_AE50D0: CVarR8
  loc_AE50D4: PopAdLdVar
  loc_AE50D5: FLdRfVar var_F0
  loc_AE50D8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE50DD: FFree1Var var_D4 = ""
  loc_AE50E0: LitI2_Byte 0
  loc_AE50E2: LitVar_Missing var_D4
  loc_AE50E5: LitI2_Byte &HFF
  loc_AE50E7: LitVarStr var_9C, "0"
  loc_AE50EC: PopAdLdVar
  loc_AE50ED: FLdRfVar var_EC
  loc_AE50F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE50F5: FFree1Var var_D4 = ""
  loc_AE50F8: LitStr "SELECT ProvPaco, DetaCuco"
  loc_AE50FB: LitStr " FROM paraconta"
  loc_AE50FE: ConcatStr
  loc_AE50FF: FStStrNoPop var_B0
  loc_AE5102: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = ProvPaco"
  loc_AE5105: ConcatStr
  loc_AE5106: FStStrNoPop var_B4
  loc_AE5109: LitStr " WHERE paraconta.PeriInfo = "
  loc_AE510C: ConcatStr
  loc_AE510D: CVarStr var_120
  loc_AE5110: FLdPr Me
  loc_AE5113: VCallAd Control_ID_mskDesde
  loc_AE5116: FStAdFunc var_88
  loc_AE5119: FLdPr var_88
  loc_AE511C: LateIdLdVar var_D4 DispID_15 0
  loc_AE5123: CStrVarTmp
  loc_AE5124: CVarStr var_100
  loc_AE5127: FLdRfVar var_110
  loc_AE512A: ImpAdCallFPR4  = Year()
  loc_AE512F: FLdRfVar var_110
  loc_AE5132: ConcatVar var_130
  loc_AE5136: CStrVarVal var_B8
  loc_AE513A: FLdRfVar var_E8
  loc_AE513D: NewIfNullPr clsparaconta
  loc_AE5140: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AE5145: FFreeStr var_B0 = "": var_B4 = ""
  loc_AE514E: FFree1Ad var_88
  loc_AE5151: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AE515E: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AE5163: PopAdLdVar
  loc_AE5164: FLdPr Me
  loc_AE5167: MemLdRfVar from_stack_1.global_64
  loc_AE516A: LdPrVar
  loc_AE516C: LateMemCall
  loc_AE5172: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""5"" align=""left"">"
  loc_AE5177: FLdRfVar var_D4
  loc_AE517A: FLdRfVar var_138
  loc_AE517D: LitVarStr var_9C, "ProvPaco"
  loc_AE5182: PopAdLdVar
  loc_AE5183: FLdRfVar var_134
  loc_AE5186: FLdRfVar var_88
  loc_AE5189: FLdRfVar var_E8
  loc_AE518C: NewIfNullPr clsparaconta
  loc_AE518F: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE5194: FLdPr var_88
  loc_AE5197:  = Me.Fields
  loc_AE519C: FLdPr var_134
  loc_AE519F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE51A4: FLdPr var_138
  loc_AE51A7:  = Me.Value
  loc_AE51AC: FLdRfVar var_D4
  loc_AE51AF: ConcatVar var_100
  loc_AE51B3: LitVarStr var_148, " - "
  loc_AE51B8: ConcatVar var_110
  loc_AE51BC: FLdRfVar var_120
  loc_AE51BF: FLdRfVar var_164
  loc_AE51C2: LitVarStr var_160, "DetaCuco"
  loc_AE51C7: PopAdLdVar
  loc_AE51C8: FLdRfVar var_150
  loc_AE51CB: FLdRfVar var_14C
  loc_AE51CE: FLdRfVar var_E8
  loc_AE51D1: NewIfNullPr clsparaconta
  loc_AE51D4: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AE51D9: FLdPr var_14C
  loc_AE51DC:  = Me.Fields
  loc_AE51E1: FLdPr var_150
  loc_AE51E4: from_stack_2 = Me.Item(from_stack_1)
  loc_AE51E9: FLdPr var_164
  loc_AE51EC:  = Me.Value
  loc_AE51F1: FLdRfVar var_120
  loc_AE51F4: ConcatVar var_130
  loc_AE51F8: LitVarStr var_174, "</th>"
  loc_AE51FD: ConcatVar var_184
  loc_AE5201: PopAdLdVar
  loc_AE5202: FLdPr Me
  loc_AE5205: MemLdRfVar from_stack_1.global_64
  loc_AE5208: LdPrVar
  loc_AE520A: LateMemCall
  loc_AE5210: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AE521F: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AE522E: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AE5233: PopAdLdVar
  loc_AE5234: FLdPr Me
  loc_AE5237: MemLdRfVar from_stack_1.global_64
  loc_AE523A: LdPrVar
  loc_AE523C: LateMemCall
  loc_AE5242: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE5245: ILdRf var_EC
  loc_AE5248: ConcatStr
  loc_AE5249: FStStrNoPop var_B0
  loc_AE524C: LitStr "</td>"
  loc_AE524F: ConcatStr
  loc_AE5250: CVarStr var_D4
  loc_AE5253: PopAdLdVar
  loc_AE5254: FLdPr Me
  loc_AE5257: MemLdRfVar from_stack_1.global_64
  loc_AE525A: LdPrVar
  loc_AE525C: LateMemCall
  loc_AE5262: FFree1Str var_B0
  loc_AE5265: FFree1Var var_D4 = ""
  loc_AE5268: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE526B: ILdRf var_F0
  loc_AE526E: ConcatStr
  loc_AE526F: FStStrNoPop var_B0
  loc_AE5272: LitStr "</td>"
  loc_AE5275: ConcatStr
  loc_AE5276: CVarStr var_D4
  loc_AE5279: PopAdLdVar
  loc_AE527A: FLdPr Me
  loc_AE527D: MemLdRfVar from_stack_1.global_64
  loc_AE5280: LdPrVar
  loc_AE5282: LateMemCall
  loc_AE5288: FFree1Str var_B0
  loc_AE528B: FFree1Var var_D4 = ""
  loc_AE528E: LitVarStr var_9C, "  </tr>"
  loc_AE5293: PopAdLdVar
  loc_AE5294: FLdPr Me
  loc_AE5297: MemLdRfVar from_stack_1.global_64
  loc_AE529A: LdPrVar
  loc_AE529C: LateMemCall
  loc_AE52A2: LitNothing
  loc_AE52A4: CastAd
  loc_AE52A7: FStAdFunc var_E8
  loc_AE52AA: Call Proc_242_20_983340()
  loc_AE52AF: FLdPr Me
  loc_AE52B2: MemLdRfVar from_stack_1.global_64
  loc_AE52B5: LdPrVar
  loc_AE52B7: LateMemCall
  loc_AE52BD: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE52C2: ExitProcHresult
End Sub

Private Function Proc_242_19_AD1A58() 'AD1A58
  'Data Table: 44F3D8
  loc_AD13F4: LitVarStr var_94, "<html>"
  loc_AD13F9: PopAdLdVar
  loc_AD13FA: FLdPr Me
  loc_AD13FD: MemLdRfVar from_stack_1.global_64
  loc_AD1400: LdPrVar
  loc_AD1402: LateMemCall
  loc_AD1408: LitVarStr var_94, "<head>"
  loc_AD140D: PopAdLdVar
  loc_AD140E: FLdPr Me
  loc_AD1411: MemLdRfVar from_stack_1.global_64
  loc_AD1414: LdPrVar
  loc_AD1416: LateMemCall
  loc_AD141C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD1421: PopAdLdVar
  loc_AD1422: FLdPr Me
  loc_AD1425: MemLdRfVar from_stack_1.global_64
  loc_AD1428: LdPrVar
  loc_AD142A: LateMemCall
  loc_AD1430: LitStr "<title>"
  loc_AD1433: FLdRfVar var_A8
  loc_AD1436: FLdPr Me
  loc_AD1439:  = Me.Caption
  loc_AD143E: ILdRf var_A8
  loc_AD1441: ConcatStr
  loc_AD1442: FStStrNoPop var_AC
  loc_AD1445: LitStr "</title>"
  loc_AD1448: ConcatStr
  loc_AD1449: CVarStr var_BC
  loc_AD144C: PopAdLdVar
  loc_AD144D: FLdPr Me
  loc_AD1450: MemLdRfVar from_stack_1.global_64
  loc_AD1453: LdPrVar
  loc_AD1455: LateMemCall
  loc_AD145B: FFreeStr var_A8 = ""
  loc_AD1462: FFree1Var var_BC = ""
  loc_AD1465: LitVarStr var_94, "<style type=""text/css"">"
  loc_AD146A: PopAdLdVar
  loc_AD146B: FLdPr Me
  loc_AD146E: MemLdRfVar from_stack_1.global_64
  loc_AD1471: LdPrVar
  loc_AD1473: LateMemCall
  loc_AD1479: LitVarStr var_94, ".Titulo1 {"
  loc_AD147E: PopAdLdVar
  loc_AD147F: FLdPr Me
  loc_AD1482: MemLdRfVar from_stack_1.global_64
  loc_AD1485: LdPrVar
  loc_AD1487: LateMemCall
  loc_AD148D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD1492: PopAdLdVar
  loc_AD1493: FLdPr Me
  loc_AD1496: MemLdRfVar from_stack_1.global_64
  loc_AD1499: LdPrVar
  loc_AD149B: LateMemCall
  loc_AD14A1: LitVarStr var_94, " font-size: 18px;"
  loc_AD14A6: PopAdLdVar
  loc_AD14A7: FLdPr Me
  loc_AD14AA: MemLdRfVar from_stack_1.global_64
  loc_AD14AD: LdPrVar
  loc_AD14AF: LateMemCall
  loc_AD14B5: LitVarStr var_94, " font-weight: bold;"
  loc_AD14BA: PopAdLdVar
  loc_AD14BB: FLdPr Me
  loc_AD14BE: MemLdRfVar from_stack_1.global_64
  loc_AD14C1: LdPrVar
  loc_AD14C3: LateMemCall
  loc_AD14C9: LitVarStr var_94, "}"
  loc_AD14CE: PopAdLdVar
  loc_AD14CF: FLdPr Me
  loc_AD14D2: MemLdRfVar from_stack_1.global_64
  loc_AD14D5: LdPrVar
  loc_AD14D7: LateMemCall
  loc_AD14DD: LitVarStr var_94, ".Titulo2 {"
  loc_AD14E2: PopAdLdVar
  loc_AD14E3: FLdPr Me
  loc_AD14E6: MemLdRfVar from_stack_1.global_64
  loc_AD14E9: LdPrVar
  loc_AD14EB: LateMemCall
  loc_AD14F1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD14F6: PopAdLdVar
  loc_AD14F7: FLdPr Me
  loc_AD14FA: MemLdRfVar from_stack_1.global_64
  loc_AD14FD: LdPrVar
  loc_AD14FF: LateMemCall
  loc_AD1505: LitVarStr var_94, " font-size: 14px;"
  loc_AD150A: PopAdLdVar
  loc_AD150B: FLdPr Me
  loc_AD150E: MemLdRfVar from_stack_1.global_64
  loc_AD1511: LdPrVar
  loc_AD1513: LateMemCall
  loc_AD1519: LitVarStr var_94, " font-weight: bold;"
  loc_AD151E: PopAdLdVar
  loc_AD151F: FLdPr Me
  loc_AD1522: MemLdRfVar from_stack_1.global_64
  loc_AD1525: LdPrVar
  loc_AD1527: LateMemCall
  loc_AD152D: LitVarStr var_94, "}"
  loc_AD1532: PopAdLdVar
  loc_AD1533: FLdPr Me
  loc_AD1536: MemLdRfVar from_stack_1.global_64
  loc_AD1539: LdPrVar
  loc_AD153B: LateMemCall
  loc_AD1541: LitVarStr var_94, ".Normal {"
  loc_AD1546: PopAdLdVar
  loc_AD1547: FLdPr Me
  loc_AD154A: MemLdRfVar from_stack_1.global_64
  loc_AD154D: LdPrVar
  loc_AD154F: LateMemCall
  loc_AD1555: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AD155A: PopAdLdVar
  loc_AD155B: FLdPr Me
  loc_AD155E: MemLdRfVar from_stack_1.global_64
  loc_AD1561: LdPrVar
  loc_AD1563: LateMemCall
  loc_AD1569: LitVarStr var_94, " font-size: 14px;"
  loc_AD156E: PopAdLdVar
  loc_AD156F: FLdPr Me
  loc_AD1572: MemLdRfVar from_stack_1.global_64
  loc_AD1575: LdPrVar
  loc_AD1577: LateMemCall
  loc_AD157D: LitVarStr var_94, " font-style: normal;"
  loc_AD1582: PopAdLdVar
  loc_AD1583: FLdPr Me
  loc_AD1586: MemLdRfVar from_stack_1.global_64
  loc_AD1589: LdPrVar
  loc_AD158B: LateMemCall
  loc_AD1591: LitVarStr var_94, " font-weight: normal;"
  loc_AD1596: PopAdLdVar
  loc_AD1597: FLdPr Me
  loc_AD159A: MemLdRfVar from_stack_1.global_64
  loc_AD159D: LdPrVar
  loc_AD159F: LateMemCall
  loc_AD15A5: LitVarStr var_94, " font-variant: normal;"
  loc_AD15AA: PopAdLdVar
  loc_AD15AB: FLdPr Me
  loc_AD15AE: MemLdRfVar from_stack_1.global_64
  loc_AD15B1: LdPrVar
  loc_AD15B3: LateMemCall
  loc_AD15B9: LitVarStr var_94, "}"
  loc_AD15BE: PopAdLdVar
  loc_AD15BF: FLdPr Me
  loc_AD15C2: MemLdRfVar from_stack_1.global_64
  loc_AD15C5: LdPrVar
  loc_AD15C7: LateMemCall
  loc_AD15CD: LitVarStr var_94, ".Encabezado {"
  loc_AD15D2: PopAdLdVar
  loc_AD15D3: FLdPr Me
  loc_AD15D6: MemLdRfVar from_stack_1.global_64
  loc_AD15D9: LdPrVar
  loc_AD15DB: LateMemCall
  loc_AD15E1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AD15E6: PopAdLdVar
  loc_AD15E7: FLdPr Me
  loc_AD15EA: MemLdRfVar from_stack_1.global_64
  loc_AD15ED: LdPrVar
  loc_AD15EF: LateMemCall
  loc_AD15F5: LitVarStr var_94, " font-size: 13px;"
  loc_AD15FA: PopAdLdVar
  loc_AD15FB: FLdPr Me
  loc_AD15FE: MemLdRfVar from_stack_1.global_64
  loc_AD1601: LdPrVar
  loc_AD1603: LateMemCall
  loc_AD1609: LitVarStr var_94, " font-weight: bold;"
  loc_AD160E: PopAdLdVar
  loc_AD160F: FLdPr Me
  loc_AD1612: MemLdRfVar from_stack_1.global_64
  loc_AD1615: LdPrVar
  loc_AD1617: LateMemCall
  loc_AD161D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AD1622: PopAdLdVar
  loc_AD1623: FLdPr Me
  loc_AD1626: MemLdRfVar from_stack_1.global_64
  loc_AD1629: LdPrVar
  loc_AD162B: LateMemCall
  loc_AD1631: LitVarStr var_94, "}"
  loc_AD1636: PopAdLdVar
  loc_AD1637: FLdPr Me
  loc_AD163A: MemLdRfVar from_stack_1.global_64
  loc_AD163D: LdPrVar
  loc_AD163F: LateMemCall
  loc_AD1645: LitVarStr var_94, ".LineaDato {"
  loc_AD164A: PopAdLdVar
  loc_AD164B: FLdPr Me
  loc_AD164E: MemLdRfVar from_stack_1.global_64
  loc_AD1651: LdPrVar
  loc_AD1653: LateMemCall
  loc_AD1659: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD165E: PopAdLdVar
  loc_AD165F: FLdPr Me
  loc_AD1662: MemLdRfVar from_stack_1.global_64
  loc_AD1665: LdPrVar
  loc_AD1667: LateMemCall
  loc_AD166D: LitVarStr var_94, " font-size: 10px;"
  loc_AD1672: PopAdLdVar
  loc_AD1673: FLdPr Me
  loc_AD1676: MemLdRfVar from_stack_1.global_64
  loc_AD1679: LdPrVar
  loc_AD167B: LateMemCall
  loc_AD1681: LitVarStr var_94, "}"
  loc_AD1686: PopAdLdVar
  loc_AD1687: FLdPr Me
  loc_AD168A: MemLdRfVar from_stack_1.global_64
  loc_AD168D: LdPrVar
  loc_AD168F: LateMemCall
  loc_AD1695: LitVarStr var_94, ".Totales {"
  loc_AD169A: PopAdLdVar
  loc_AD169B: FLdPr Me
  loc_AD169E: MemLdRfVar from_stack_1.global_64
  loc_AD16A1: LdPrVar
  loc_AD16A3: LateMemCall
  loc_AD16A9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AD16AE: PopAdLdVar
  loc_AD16AF: FLdPr Me
  loc_AD16B2: MemLdRfVar from_stack_1.global_64
  loc_AD16B5: LdPrVar
  loc_AD16B7: LateMemCall
  loc_AD16BD: LitVarStr var_94, " font-size: 12px;"
  loc_AD16C2: PopAdLdVar
  loc_AD16C3: FLdPr Me
  loc_AD16C6: MemLdRfVar from_stack_1.global_64
  loc_AD16C9: LdPrVar
  loc_AD16CB: LateMemCall
  loc_AD16D1: LitVarStr var_94, " font-weight: bold;"
  loc_AD16D6: PopAdLdVar
  loc_AD16D7: FLdPr Me
  loc_AD16DA: MemLdRfVar from_stack_1.global_64
  loc_AD16DD: LdPrVar
  loc_AD16DF: LateMemCall
  loc_AD16E5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AD16EA: PopAdLdVar
  loc_AD16EB: FLdPr Me
  loc_AD16EE: MemLdRfVar from_stack_1.global_64
  loc_AD16F1: LdPrVar
  loc_AD16F3: LateMemCall
  loc_AD16F9: LitVarStr var_94, "}"
  loc_AD16FE: PopAdLdVar
  loc_AD16FF: FLdPr Me
  loc_AD1702: MemLdRfVar from_stack_1.global_64
  loc_AD1705: LdPrVar
  loc_AD1707: LateMemCall
  loc_AD170D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AD1712: PopAdLdVar
  loc_AD1713: FLdPr Me
  loc_AD1716: MemLdRfVar from_stack_1.global_64
  loc_AD1719: LdPrVar
  loc_AD171B: LateMemCall
  loc_AD1721: LitVarStr var_94, "</style>"
  loc_AD1726: PopAdLdVar
  loc_AD1727: FLdPr Me
  loc_AD172A: MemLdRfVar from_stack_1.global_64
  loc_AD172D: LdPrVar
  loc_AD172F: LateMemCall
  loc_AD1735: LitI4 0
  loc_AD173A: FStStrCopy var_AC
  loc_AD173D: FLdRfVar var_AC
  loc_AD1740: LitI4 0
  loc_AD1745: FStStrCopy var_A8
  loc_AD1748: FLdRfVar var_A8
  loc_AD174B: LitI2_Byte 0
  loc_AD174D: PopTmpLdAd2 var_BE
  loc_AD1750: FLdPr Me
  loc_AD1753: MemLdRfVar from_stack_1.global_64
  loc_AD1756: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD175B: FFreeStr var_A8 = ""
  loc_AD1762: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD1767: PopAdLdVar
  loc_AD1768: FLdPr Me
  loc_AD176B: MemLdRfVar from_stack_1.global_64
  loc_AD176E: LdPrVar
  loc_AD1770: LateMemCall
  loc_AD1776: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD177B: PopAdLdVar
  loc_AD177C: FLdPr Me
  loc_AD177F: MemLdRfVar from_stack_1.global_64
  loc_AD1782: LdPrVar
  loc_AD1784: LateMemCall
  loc_AD178A: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AD178F: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD1794: FStVarCopyObj var_BC
  loc_AD1797: FLdRfVar var_BC
  loc_AD179A: FLdRfVar var_D0
  loc_AD179D: ImpAdCallFPR4  = Ucase()
  loc_AD17A2: FLdRfVar var_D0
  loc_AD17A5: ConcatVar var_E0
  loc_AD17A9: LitVarStr var_F0, "</p>"
  loc_AD17AE: ConcatVar var_100
  loc_AD17B2: PopAdLdVar
  loc_AD17B3: FLdPr Me
  loc_AD17B6: MemLdRfVar from_stack_1.global_64
  loc_AD17B9: LdPrVar
  loc_AD17BB: LateMemCall
  loc_AD17C1: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AD17CC: LitStr "    <p align=""center"">"
  loc_AD17CF: FLdRfVar var_A8
  loc_AD17D2: FLdPr Me
  loc_AD17D5:  = Me.Caption
  loc_AD17DA: ILdRf var_A8
  loc_AD17DD: ConcatStr
  loc_AD17DE: FStStrNoPop var_AC
  loc_AD17E1: LitStr "</p></th>"
  loc_AD17E4: ConcatStr
  loc_AD17E5: CVarStr var_BC
  loc_AD17E8: PopAdLdVar
  loc_AD17E9: FLdPr Me
  loc_AD17EC: MemLdRfVar from_stack_1.global_64
  loc_AD17EF: LdPrVar
  loc_AD17F1: LateMemCall
  loc_AD17F7: FFreeStr var_A8 = ""
  loc_AD17FE: FFree1Var var_BC = ""
  loc_AD1801: LitVarStr var_94, "  </tr>"
  loc_AD1806: PopAdLdVar
  loc_AD1807: FLdPr Me
  loc_AD180A: MemLdRfVar from_stack_1.global_64
  loc_AD180D: LdPrVar
  loc_AD180F: LateMemCall
  loc_AD1815: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AD181A: PopAdLdVar
  loc_AD181B: FLdPr Me
  loc_AD181E: MemLdRfVar from_stack_1.global_64
  loc_AD1821: LdPrVar
  loc_AD1823: LateMemCall
  loc_AD1829: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AD182E: PopAdLdVar
  loc_AD182F: FLdPr Me
  loc_AD1832: MemLdRfVar from_stack_1.global_64
  loc_AD1835: LdPrVar
  loc_AD1837: LateMemCall
  loc_AD183D: FLdPr Me
  loc_AD1840: VCallAd Control_ID_mskDesde
  loc_AD1843: FStAdFunc var_114
  loc_AD1846: FLdPr var_114
  loc_AD1849: LateIdLdVar var_BC DispID_22 0
  loc_AD1850: CStrVarTmp
  loc_AD1851: FStStrNoPop var_A8
  loc_AD1854: LitStr vbNullString
  loc_AD1857: NeStr
  loc_AD1859: FFree1Str var_A8
  loc_AD185C: FFree1Ad var_114
  loc_AD185F: FFree1Var var_BC = ""
  loc_AD1862: BranchF loc_AD18AA
  loc_AD1865: LitStr "         Desde: <span class=""Normal"">"
  loc_AD1868: FLdPr Me
  loc_AD186B: VCallAd Control_ID_mskDesde
  loc_AD186E: FStAdFunc var_114
  loc_AD1871: FLdPr var_114
  loc_AD1874: LateIdLdVar var_BC DispID_15 0
  loc_AD187B: CStrVarTmp
  loc_AD187C: FStStrNoPop var_A8
  loc_AD187F: ConcatStr
  loc_AD1880: FStStrNoPop var_AC
  loc_AD1883: LitStr "</span><br>"
  loc_AD1886: ConcatStr
  loc_AD1887: CVarStr var_D0
  loc_AD188A: PopAdLdVar
  loc_AD188B: FLdPr Me
  loc_AD188E: MemLdRfVar from_stack_1.global_64
  loc_AD1891: LdPrVar
  loc_AD1893: LateMemCall
  loc_AD1899: FFreeStr var_A8 = ""
  loc_AD18A0: FFree1Ad var_114
  loc_AD18A3: FFreeVar var_BC = ""
  loc_AD18AA: FLdPr Me
  loc_AD18AD: VCallAd Control_ID_mskHasta
  loc_AD18B0: FStAdFunc var_114
  loc_AD18B3: FLdPr var_114
  loc_AD18B6: LateIdLdVar var_BC DispID_22 0
  loc_AD18BD: CStrVarTmp
  loc_AD18BE: FStStrNoPop var_A8
  loc_AD18C1: LitStr vbNullString
  loc_AD18C4: NeStr
  loc_AD18C6: FFree1Str var_A8
  loc_AD18C9: FFree1Ad var_114
  loc_AD18CC: FFree1Var var_BC = ""
  loc_AD18CF: BranchF loc_AD1917
  loc_AD18D2: LitStr "         Hasta: <span class=""Normal"">"
  loc_AD18D5: FLdPr Me
  loc_AD18D8: VCallAd Control_ID_mskHasta
  loc_AD18DB: FStAdFunc var_114
  loc_AD18DE: FLdPr var_114
  loc_AD18E1: LateIdLdVar var_BC DispID_15 0
  loc_AD18E8: CStrVarTmp
  loc_AD18E9: FStStrNoPop var_A8
  loc_AD18EC: ConcatStr
  loc_AD18ED: FStStrNoPop var_AC
  loc_AD18F0: LitStr "</span>"
  loc_AD18F3: ConcatStr
  loc_AD18F4: CVarStr var_D0
  loc_AD18F7: PopAdLdVar
  loc_AD18F8: FLdPr Me
  loc_AD18FB: MemLdRfVar from_stack_1.global_64
  loc_AD18FE: LdPrVar
  loc_AD1900: LateMemCall
  loc_AD1906: FFreeStr var_A8 = ""
  loc_AD190D: FFree1Ad var_114
  loc_AD1910: FFreeVar var_BC = ""
  loc_AD1917: LitVarStr var_94, "   </th>"
  loc_AD191C: PopAdLdVar
  loc_AD191D: FLdPr Me
  loc_AD1920: MemLdRfVar from_stack_1.global_64
  loc_AD1923: LdPrVar
  loc_AD1925: LateMemCall
  loc_AD192B: LitVarStr var_94, "  </tr>"
  loc_AD1930: PopAdLdVar
  loc_AD1931: FLdPr Me
  loc_AD1934: MemLdRfVar from_stack_1.global_64
  loc_AD1937: LdPrVar
  loc_AD1939: LateMemCall
  loc_AD193F: LitVarStr var_94, "</table>"
  loc_AD1944: PopAdLdVar
  loc_AD1945: FLdPr Me
  loc_AD1948: MemLdRfVar from_stack_1.global_64
  loc_AD194B: LdPrVar
  loc_AD194D: LateMemCall
  loc_AD1953: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD1958: PopAdLdVar
  loc_AD1959: FLdPr Me
  loc_AD195C: MemLdRfVar from_stack_1.global_64
  loc_AD195F: LdPrVar
  loc_AD1961: LateMemCall
  loc_AD1967: LitVarStr var_94, "  <THEAD>"
  loc_AD196C: PopAdLdVar
  loc_AD196D: FLdPr Me
  loc_AD1970: MemLdRfVar from_stack_1.global_64
  loc_AD1973: LdPrVar
  loc_AD1975: LateMemCall
  loc_AD197B: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AD1980: PopAdLdVar
  loc_AD1981: FLdPr Me
  loc_AD1984: MemLdRfVar from_stack_1.global_64
  loc_AD1987: LdPrVar
  loc_AD1989: LateMemCall
  loc_AD198F: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_AD1994: PopAdLdVar
  loc_AD1995: FLdPr Me
  loc_AD1998: MemLdRfVar from_stack_1.global_64
  loc_AD199B: LdPrVar
  loc_AD199D: LateMemCall
  loc_AD19A3: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AD19A8: PopAdLdVar
  loc_AD19A9: FLdPr Me
  loc_AD19AC: MemLdRfVar from_stack_1.global_64
  loc_AD19AF: LdPrVar
  loc_AD19B1: LateMemCall
  loc_AD19B7: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AD19BC: PopAdLdVar
  loc_AD19BD: FLdPr Me
  loc_AD19C0: MemLdRfVar from_stack_1.global_64
  loc_AD19C3: LdPrVar
  loc_AD19C5: LateMemCall
  loc_AD19CB: LitVarStr var_94, "    <th>Partida</th>"
  loc_AD19D0: PopAdLdVar
  loc_AD19D1: FLdPr Me
  loc_AD19D4: MemLdRfVar from_stack_1.global_64
  loc_AD19D7: LdPrVar
  loc_AD19D9: LateMemCall
  loc_AD19DF: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AD19E4: PopAdLdVar
  loc_AD19E5: FLdPr Me
  loc_AD19E8: MemLdRfVar from_stack_1.global_64
  loc_AD19EB: LdPrVar
  loc_AD19ED: LateMemCall
  loc_AD19F3: LitVarStr var_94, "    <th>Imputaci&oacute;n</th>"
  loc_AD19F8: PopAdLdVar
  loc_AD19F9: FLdPr Me
  loc_AD19FC: MemLdRfVar from_stack_1.global_64
  loc_AD19FF: LdPrVar
  loc_AD1A01: LateMemCall
  loc_AD1A07: LitVarStr var_94, "    <th>D E B E</th>"
  loc_AD1A0C: PopAdLdVar
  loc_AD1A0D: FLdPr Me
  loc_AD1A10: MemLdRfVar from_stack_1.global_64
  loc_AD1A13: LdPrVar
  loc_AD1A15: LateMemCall
  loc_AD1A1B: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_AD1A20: PopAdLdVar
  loc_AD1A21: FLdPr Me
  loc_AD1A24: MemLdRfVar from_stack_1.global_64
  loc_AD1A27: LdPrVar
  loc_AD1A29: LateMemCall
  loc_AD1A2F: LitVarStr var_94, "  </tr>"
  loc_AD1A34: PopAdLdVar
  loc_AD1A35: FLdPr Me
  loc_AD1A38: MemLdRfVar from_stack_1.global_64
  loc_AD1A3B: LdPrVar
  loc_AD1A3D: LateMemCall
  loc_AD1A43: LitVarStr var_94, "  </THEAD>"
  loc_AD1A48: PopAdLdVar
  loc_AD1A49: FLdPr Me
  loc_AD1A4C: MemLdRfVar from_stack_1.global_64
  loc_AD1A4F: LdPrVar
  loc_AD1A51: LateMemCall
  loc_AD1A57: ExitProcHresult
End Function

Private Function Proc_242_20_983340() '983340
  'Data Table: 44F3D8
  loc_983300: LitVarStr var_94, "</table>"
  loc_983305: PopAdLdVar
  loc_983306: FLdPr Me
  loc_983309: MemLdRfVar from_stack_1.global_64
  loc_98330C: LdPrVar
  loc_98330E: LateMemCall
  loc_983314: LitVarStr var_94, "</body>"
  loc_983319: PopAdLdVar
  loc_98331A: FLdPr Me
  loc_98331D: MemLdRfVar from_stack_1.global_64
  loc_983320: LdPrVar
  loc_983322: LateMemCall
  loc_983328: LitVarStr var_94, "</html>"
  loc_98332D: PopAdLdVar
  loc_98332E: FLdPr Me
  loc_983331: MemLdRfVar from_stack_1.global_64
  loc_983334: LdPrVar
  loc_983336: LateMemCall
  loc_98333C: ExitProcHresult
End Function
