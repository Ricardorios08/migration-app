VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporOrganigrama
  Caption = "Resumen de Imputaciones por Organigrama"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporOrganigrama.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7695
  ClientHeight = 3975
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3720
    Width = 7695
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2760
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporOrganigrama.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":0B9C
    Left = 5160
    Top = 480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2520
    Width = 3135
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 2415
    TabIndex = 0
    Begin VB.CommandButton cmdCodiOrga
      Left = 2520
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptResumendeImputacionesporOrganigrama.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptResumendeImputacionesporOrganigrama.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptResumendeImputacionesporOrganigrama.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":1806
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1455
      Top = 1800
      Width = 975
      Height = 315
      TabIndex = 9
      OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":188E
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3000
      Top = 1800
      Width = 4215
      Height = 375
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Organigrama:"
      Left = 345
      Top = 1800
      Width = 975
      Height = 315
      TabIndex = 21
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 3
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 6
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2880
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptResumendeImputacionesporOrganigrama.frx":1902
  End
End

Attribute VB_Name = "rptResumendeImputacionesporOrganigrama"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_006056F0
  bStruc(32) As Byte ' String fields: 7
End Type


Private Sub Form_Load() '9D93F4
  'Data Table: 4908C8
  loc_9D9300: LitVarStr var_94, "######"
  loc_9D9305: PopAdLdVar
  loc_9D9306: FLdPr Me
  loc_9D9309: VCallAd Control_ID_CodiOrgaMsk
  loc_9D930C: FStAdFunc var_A8
  loc_9D930F: FLdPr var_A8
  loc_9D9312: LateIdSt
  loc_9D9317: FFree1Ad var_A8
  loc_9D931A: LitI2_Byte &HFF
  loc_9D931C: ImpAdStI2 MemVar_C3D840
  loc_9D931F: ILdRf Me
  loc_9D9322: CastAd
  loc_9D9325: FStAdFunc var_A8
  loc_9D9328: FLdRfVar var_A8
  loc_9D932B: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D9330: FFree1Ad var_A8
  loc_9D9333: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D9336: FLdRfVar var_AC
  loc_9D9339: NewIfNullPr clsperiodo
  loc_9D933C: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D9341: FLdRfVar var_B0
  loc_9D9344: FLdRfVar var_AC
  loc_9D9347: NewIfNullPr clsperiodo
  loc_9D934A: from_stack_1 = clsperiodo.RecordCount
  loc_9D934F: ILdRf var_B0
  loc_9D9352: LitI4 0
  loc_9D9357: GtI4
  loc_9D9358: BranchF loc_9D93EB
  loc_9D935B: FLdRfVar var_AC
  loc_9D935E: NewIfNullPr clsperiodo
  loc_9D9361: Call clsperiodo.MoveFirst()
  loc_9D9366: FLdRfVar var_B2
  loc_9D9369: FLdRfVar var_AC
  loc_9D936C: NewIfNullPr clsperiodo
  loc_9D936F: from_stack_1 = clsperiodo.EOF
  loc_9D9374: FLdI2 var_B2
  loc_9D9377: NotI4
  loc_9D9378: BranchF loc_9D93EB
  loc_9D937B: LitVar_Missing var_A4
  loc_9D937E: PopAdLdVar
  loc_9D937F: FLdRfVar var_CC
  loc_9D9382: FLdRfVar var_BC
  loc_9D9385: LitVarStr var_94, "PeriInfo"
  loc_9D938A: PopAdLdVar
  loc_9D938B: FLdRfVar var_B8
  loc_9D938E: FLdRfVar var_A8
  loc_9D9391: FLdRfVar var_AC
  loc_9D9394: NewIfNullPr clsperiodo
  loc_9D9397: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D939C: FLdPr var_A8
  loc_9D939F:  = Me.Fields
  loc_9D93A4: FLdPr var_B8
  loc_9D93A7: from_stack_2 = Me.Item(from_stack_1)
  loc_9D93AC: FLdPr var_BC
  loc_9D93AF:  = Me.Value
  loc_9D93B4: FLdRfVar var_CC
  loc_9D93B7: CStrVarTmp
  loc_9D93B8: FStStrNoPop var_D0
  loc_9D93BB: FLdPr Me
  loc_9D93BE: VCallAd Control_ID_cboPeriodo
  loc_9D93C1: FStAdFunc var_D4
  loc_9D93C4: FLdPr var_D4
  loc_9D93C7: Me.AddItem from_stack_1, from_stack_2
  loc_9D93CC: FFree1Str var_D0
  loc_9D93CF: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9D93DA: FFree1Var var_CC = ""
  loc_9D93DD: FLdRfVar var_AC
  loc_9D93E0: NewIfNullPr clsperiodo
  loc_9D93E3: Call clsperiodo.MoveSiguiente()
  loc_9D93E8: Branch loc_9D9366
  loc_9D93EB: Call cmdNueva_Click()
  loc_9D93F0: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960E20
  'Data Table: 4908C8
  loc_960E08: FLdPr Me
  loc_960E0B: VCallAd Control_ID_wbbReporte
  loc_960E0E: FStAdFunc var_88
  loc_960E11: FLdRfVar var_88
  loc_960E14: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960E19: FFree1Ad var_88
  loc_960E1C: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() 'A112D8
  'Data Table: 4908C8
  loc_A11170: FLdRfVar var_8C
  loc_A11173: FLdPr Me
  loc_A11176: VCallAd Control_ID_cboPeriodo
  loc_A11179: FStAdFunc var_88
  loc_A1117C: FLdPr var_88
  loc_A1117F:  = Me.Text
  loc_A11184: ILdRf var_8C
  loc_A11187: CI2Str
  loc_A11189: ImpAdLdRf MemVar_C3D710
  loc_A1118C: NewIfNullPr bscOrganigrama
  loc_A1118F: Call bscOrganigrama.iPeriInfoPut(from_stack_1v)
  loc_A11194: FFree1Str var_8C
  loc_A11197: FFree1Ad var_88
  loc_A1119A: LitI2_Byte &HFF
  loc_A1119C: ImpAdLdRf MemVar_C3D710
  loc_A1119F: NewIfNullPr bscOrganigrama
  loc_A111A2: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A111A7: LitNothing
  loc_A111A9: CastAd
  loc_A111AC: FStAdFuncNoPop
  loc_A111AF: ImpAdLdRf MemVar_C3D710
  loc_A111B2: NewIfNullPr bscOrganigrama
  loc_A111B5: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A111BA: FFree1Ad var_88
  loc_A111BD: LitVar_Missing var_AC
  loc_A111C0: PopAdLdVar
  loc_A111C1: LitVarI4
  loc_A111C9: PopAdLdVar
  loc_A111CA: ImpAdLdRf MemVar_C3D710
  loc_A111CD: NewIfNullPr bscOrganigrama
  loc_A111D0: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A111D5: FLdRfVar var_B0
  loc_A111D8: FLdRfVar var_88
  loc_A111DB: ImpAdLdRf MemVar_C3D710
  loc_A111DE: NewIfNullPr bscOrganigrama
  loc_A111E1: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A111E6: FLdPr var_88
  loc_A111E9: from_stack_1 = clsbase.RecordCount
  loc_A111EE: ILdRf var_B0
  loc_A111F1: LitI4 0
  loc_A111F6: GtI4
  loc_A111F7: FFree1Ad var_88
  loc_A111FA: BranchF loc_A112D5
  loc_A111FD: FLdRfVar var_CC
  loc_A11200: FLdRfVar var_BC
  loc_A11203: LitVarStr var_9C, "CodiOrga"
  loc_A11208: PopAdLdVar
  loc_A11209: FLdRfVar var_B8
  loc_A1120C: FLdRfVar var_B4
  loc_A1120F: FLdRfVar var_88
  loc_A11212: ImpAdLdRf MemVar_C3D710
  loc_A11215: NewIfNullPr bscOrganigrama
  loc_A11218: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A1121D: FLdPr var_88
  loc_A11220: from_stack_1v = clsbase.RsFrmGet()
  loc_A11225: FLdPr var_B4
  loc_A11228:  = Me.Fields
  loc_A1122D: FLdPr var_B8
  loc_A11230: from_stack_2 = Me.Item(from_stack_1)
  loc_A11235: FLdPr var_BC
  loc_A11238:  = Me.Value
  loc_A1123D: FLdRfVar var_CC
  loc_A11240: CStrVarTmp
  loc_A11241: CVarStr var_DC
  loc_A11244: PopAdLdVar
  loc_A11245: FLdPr Me
  loc_A11248: VCallAd Control_ID_CodiOrgaMsk
  loc_A1124B: FStAdFunc var_E0
  loc_A1124E: FLdPr var_E0
  loc_A11251: LateIdSt
  loc_A11256: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A11263: FFreeVar var_CC = ""
  loc_A1126A: FLdRfVar var_CC
  loc_A1126D: FLdRfVar var_BC
  loc_A11270: LitVarStr var_9C, "DetaOrga"
  loc_A11275: PopAdLdVar
  loc_A11276: FLdRfVar var_B8
  loc_A11279: FLdRfVar var_B4
  loc_A1127C: FLdRfVar var_88
  loc_A1127F: ImpAdLdRf MemVar_C3D710
  loc_A11282: NewIfNullPr bscOrganigrama
  loc_A11285: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A1128A: FLdPr var_88
  loc_A1128D: from_stack_1v = clsbase.RsFrmGet()
  loc_A11292: FLdPr var_B4
  loc_A11295:  = Me.Fields
  loc_A1129A: FLdPr var_B8
  loc_A1129D: from_stack_2 = Me.Item(from_stack_1)
  loc_A112A2: FLdPr var_BC
  loc_A112A5:  = Me.Value
  loc_A112AA: FLdRfVar var_CC
  loc_A112AD: CStrVarTmp
  loc_A112AE: FStStrNoPop var_8C
  loc_A112B1: FLdPr Me
  loc_A112B4: VCallAd Control_ID_CodiOrgaLbl
  loc_A112B7: FStAdFunc var_E0
  loc_A112BA: FLdPr var_E0
  loc_A112BD: Me.Caption = from_stack_1
  loc_A112C2: FFree1Str var_8C
  loc_A112C5: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A112D2: FFree1Var var_CC = ""
  loc_A112D5: ExitProcHresult
  loc_A112D6: CRec2Uni arg_5000
End Sub

Private Sub cmdHtml_Click() '96145C
  'Data Table: 4908C8
  loc_961444: ILdRf Me
  loc_961447: CastAd
  loc_96144A: FStAdFunc var_88
  loc_96144D: FLdRfVar var_88
  loc_961450: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_961455: FFree1Ad var_88
  loc_961458: ExitProcHresult
End Sub

Private Sub cmdDesde_Click() '980800
  'Data Table: 4908C8
  loc_9807CC: LitVar_Missing var_A4
  loc_9807CF: PopAdLdVar
  loc_9807D0: LitVarI4
  loc_9807D8: PopAdLdVar
  loc_9807D9: ImpAdLdRf MemVar_C3D9A8
  loc_9807DC: NewIfNullPr frmCalendario
  loc_9807DF: frmCalendario.Show from_stack_1, from_stack_2
  loc_9807E4: ImpAdLdRf MemVar_C3D038
  loc_9807E7: CDargRef
  loc_9807EB: FLdPr Me
  loc_9807EE: VCallAd Control_ID_mskDesde
  loc_9807F1: FStAdFunc var_A8
  loc_9807F4: FLdPr var_A8
  loc_9807F7: LateIdSt
  loc_9807FC: FFree1Ad var_A8
  loc_9807FF: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97FC38
  'Data Table: 4908C8
  loc_97FC04: LitVar_Missing var_A4
  loc_97FC07: PopAdLdVar
  loc_97FC08: LitVarI4
  loc_97FC10: PopAdLdVar
  loc_97FC11: ImpAdLdRf MemVar_C3D9A8
  loc_97FC14: NewIfNullPr frmCalendario
  loc_97FC17: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FC1C: ImpAdLdRf MemVar_C3D038
  loc_97FC1F: CDargRef
  loc_97FC23: FLdPr Me
  loc_97FC26: VCallAd Control_ID_mskHasta
  loc_97FC29: FStAdFunc var_A8
  loc_97FC2C: FLdPr var_A8
  loc_97FC2F: LateIdSt
  loc_97FC34: FFree1Ad var_A8
  loc_97FC37: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '951738
  'Data Table: 4908C8
  loc_951724: FLdPr Me
  loc_951727: VCallAd Control_ID_mskHasta
  loc_95172A: CVarAd
  loc_95172E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951733: FFree1Var var_94 = ""
  loc_951736: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AFFA4
  'Data Table: 4908C8
  loc_9AFF08: FLdPr Me
  loc_9AFF0B: VCallAd Control_ID_mskHasta
  loc_9AFF0E: FStAdFunc var_88
  loc_9AFF11: FLdPr var_88
  loc_9AFF14: LateIdLdVar var_98 DispID_15 0
  loc_9AFF1B: PopAd
  loc_9AFF1D: FLdPr Me
  loc_9AFF20: VCallAd Control_ID_mskHasta
  loc_9AFF23: FStAdFunc var_AC
  loc_9AFF26: LitI2_Byte &HFF
  loc_9AFF28: PopTmpLdAd2 var_A2
  loc_9AFF2B: FLdZeroAd var_AC
  loc_9AFF2E: FStAdFunc var_A0
  loc_9AFF31: FLdRfVar var_A0
  loc_9AFF34: LitStr vbNullString
  loc_9AFF37: LitI2_Byte 0
  loc_9AFF39: LitI2_Byte 0
  loc_9AFF3B: FLdRfVar var_98
  loc_9AFF3E: CStrVarTmp
  loc_9AFF3F: FStStrNoPop var_9C
  loc_9AFF42: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFF47: FStStrNoPop var_A8
  loc_9AFF4A: FLdPr Me
  loc_9AFF4D: MemStStrCopy
  loc_9AFF51: FFreeStr var_9C = ""
  loc_9AFF58: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFF61: FFree1Var var_98 = ""
  loc_9AFF64: FLdPr Me
  loc_9AFF67: VCallAd Control_ID_mskHasta
  loc_9AFF6A: FStAdFunc var_B0
  loc_9AFF6D: LitNothing
  loc_9AFF6F: CastAd
  loc_9AFF72: FStAdFunc var_AC
  loc_9AFF75: FLdRfVar var_AC
  loc_9AFF78: FLdZeroAd var_B0
  loc_9AFF7B: FStAdFuncNoPop
  loc_9AFF7E: CastAd
  loc_9AFF81: FStAdFunc var_A0
  loc_9AFF84: FLdRfVar var_A0
  loc_9AFF87: FLdPr Me
  loc_9AFF8A: MemLdRfVar from_stack_1.global_108
  loc_9AFF8D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFF92: IStI2 arg_C
  loc_9AFF95: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFFA0: ExitProcHresult
  loc_9AFFA1: FStStrNoPop arg_20
End Function

Private Sub cmdPredeterminada_Click() '9614A8
  'Data Table: 4908C8
  loc_961490: ILdRf Me
  loc_961493: CastAd
  loc_961496: FStAdFunc var_88
  loc_961499: FLdRfVar var_88
  loc_96149C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9614A1: FFree1Ad var_88
  loc_9614A4: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9613C4
  'Data Table: 4908C8
  loc_9613AC: LitI2_Byte 0
  loc_9613AE: ILdRf Me
  loc_9613B1: CastAd
  loc_9613B4: FStAdFunc var_88
  loc_9613B7: FLdRfVar var_88
  loc_9613BA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9613BF: FFree1Ad var_88
  loc_9613C2: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976CAC
  'Data Table: 4908C8
  loc_976C7C: LitVarStr var_94, "Cerrando..."
  loc_976C81: PopAdLdVar
  loc_976C82: FLdPr Me
  loc_976C85: VCallAd Control_ID_statusBar
  loc_976C88: FStAdFunc var_A8
  loc_976C8B: FLdPr var_A8
  loc_976C8E: LateIdSt
  loc_976C93: FFree1Ad var_A8
  loc_976C96: ILdRf Me
  loc_976C99: FStAdNoPop
  loc_976C9D: ImpAdLdRf MemVar_C44F9C
  loc_976CA0: NewIfNullPr Me
  loc_976CA3: Me.Global.Unload from_stack_1
  loc_976CA8: FFree1Ad var_A8
  loc_976CAB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9614F4
  'Data Table: 4908C8
  loc_9614DC: ILdRf Me
  loc_9614DF: CastAd
  loc_9614E2: FStAdFunc var_88
  loc_9614E5: FLdRfVar var_88
  loc_9614E8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9614ED: FFree1Ad var_88
  loc_9614F0: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98AFF4
  'Data Table: 4908C8
  loc_98AFBC: FLdPr Me
  loc_98AFBF: VCallAd Control_ID_statusBar
  loc_98AFC2: FStAdFunc var_88
  loc_98AFC5: FLdPr var_88
  loc_98AFC8: LateIdLdVar var_98 DispID_1 0
  loc_98AFCF: CStrVarTmp
  loc_98AFD0: CVarStr var_A8
  loc_98AFD3: PopAdLdVar
  loc_98AFD4: FLdPr Me
  loc_98AFD7: VCallAd Control_ID_statusBar
  loc_98AFDA: FStAdFunc var_BC
  loc_98AFDD: FLdPr var_BC
  loc_98AFE0: LateIdSt
  loc_98AFE5: FFreeAd var_88 = ""
  loc_98AFEC: FFreeVar var_98 = ""
  loc_98AFF3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C2BFC
  'Data Table: 4908C8
  loc_9C2B30: LitI2_Byte 0
  loc_9C2B32: FLdPr Me
  loc_9C2B35: MemStI2 bGenerado
  loc_9C2B38: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C2B3D: ImpAdLdI2 MemVar_C3D064
  loc_9C2B40: CStrUI1
  loc_9C2B42: FStStrNoPop var_88
  loc_9C2B45: FLdPr Me
  loc_9C2B48: VCallAd Control_ID_cboPeriodo
  loc_9C2B4B: FStAdFunc var_8C
  loc_9C2B4E: FLdPr var_8C
  loc_9C2B51: Me.Text = from_stack_1
  loc_9C2B56: FFree1Str var_88
  loc_9C2B59: FFree1Ad var_8C
  loc_9C2B5C: LitI2_Byte 1
  loc_9C2B5E: LitI2_Byte 1
  loc_9C2B60: ImpAdLdI2 MemVar_C3D064
  loc_9C2B63: FLdRfVar var_9C
  loc_9C2B66: ImpAdCallFPR4  = DateSerial(, , )
  loc_9C2B6B: FLdRfVar var_9C
  loc_9C2B6E: CStrVarTmp
  loc_9C2B6F: CVarStr var_AC
  loc_9C2B72: PopAdLdVar
  loc_9C2B73: FLdPr Me
  loc_9C2B76: VCallAd Control_ID_mskDesde
  loc_9C2B79: FStAdFunc var_8C
  loc_9C2B7C: FLdPr var_8C
  loc_9C2B7F: LateIdSt
  loc_9C2B84: FFree1Ad var_8C
  loc_9C2B87: FFreeVar var_9C = ""
  loc_9C2B8E: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C2B91: CStrDate
  loc_9C2B93: CVarStr var_9C
  loc_9C2B96: PopAdLdVar
  loc_9C2B97: FLdPr Me
  loc_9C2B9A: VCallAd Control_ID_mskHasta
  loc_9C2B9D: FStAdFunc var_8C
  loc_9C2BA0: FLdPr var_8C
  loc_9C2BA3: LateIdSt
  loc_9C2BA8: FFree1Ad var_8C
  loc_9C2BAB: FFree1Var var_9C = ""
  loc_9C2BAE: LitVarStr var_BC, vbNullString
  loc_9C2BB3: PopAdLdVar
  loc_9C2BB4: FLdPr Me
  loc_9C2BB7: VCallAd Control_ID_CodiOrgaMsk
  loc_9C2BBA: FStAdFunc var_8C
  loc_9C2BBD: FLdPr var_8C
  loc_9C2BC0: LateIdSt
  loc_9C2BC5: FFree1Ad var_8C
  loc_9C2BC8: LitStr vbNullString
  loc_9C2BCB: FLdPr Me
  loc_9C2BCE: VCallAd Control_ID_CodiOrgaLbl
  loc_9C2BD1: FStAdFunc var_8C
  loc_9C2BD4: FLdPr var_8C
  loc_9C2BD7: Me.Caption = from_stack_1
  loc_9C2BDC: FFree1Ad var_8C
  loc_9C2BDF: Call HabilitarCriterio()
  loc_9C2BE4: ILdRf Me
  loc_9C2BE7: CastAd
  loc_9C2BEA: FStAdFunc var_8C
  loc_9C2BED: FLdRfVar var_8C
  loc_9C2BF0: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C2BF5: FFree1Ad var_8C
  loc_9C2BF8: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '951588
  'Data Table: 4908C8
  loc_951574: FLdPr Me
  loc_951577: VCallAd Control_ID_CodiOrgaMsk
  loc_95157A: CVarAd
  loc_95157E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951583: FFree1Var var_94 = ""
  loc_951586: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A09094
  'Data Table: 4908C8
  loc_A08F48: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A08F4B: FLdRfVar var_90
  loc_A08F4E: FLdPr Me
  loc_A08F51: VCallAd Control_ID_cboPeriodo
  loc_A08F54: FStAdFunc var_8C
  loc_A08F57: FLdPr var_8C
  loc_A08F5A:  = Me.Text
  loc_A08F5F: ILdRf var_90
  loc_A08F62: ConcatStr
  loc_A08F63: FStStrNoPop var_94
  loc_A08F66: LitStr " AND CodiOrga LIKE '"
  loc_A08F69: ConcatStr
  loc_A08F6A: FStStrNoPop var_AC
  loc_A08F6D: FLdPr Me
  loc_A08F70: VCallAd Control_ID_CodiOrgaMsk
  loc_A08F73: FStAdFunc var_98
  loc_A08F76: FLdPr var_98
  loc_A08F79: LateIdLdVar var_A8 DispID_22 0
  loc_A08F80: CStrVarTmp
  loc_A08F81: FStStrNoPop var_B0
  loc_A08F84: ConcatStr
  loc_A08F85: FStStrNoPop var_B4
  loc_A08F88: LitStr Chr(37) & "'"
  loc_A08F8B: ConcatStr
  loc_A08F8C: FStStrNoPop var_B8
  loc_A08F8F: FLdRfVar var_88
  loc_A08F92: NewIfNullPr clsorganigrama
  loc_A08F95: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A08F9A: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A08FA9: FFreeAd var_8C = ""
  loc_A08FB0: FFree1Var var_A8 = ""
  loc_A08FB3: FLdRfVar var_BC
  loc_A08FB6: FLdRfVar var_88
  loc_A08FB9: NewIfNullPr clsorganigrama
  loc_A08FBC: from_stack_1 = clsorganigrama.RecordCount
  loc_A08FC1: ILdRf var_BC
  loc_A08FC4: FStR4 var_C0
  loc_A08FC7: ILdRf var_C0
  loc_A08FCA: LitI4 0
  loc_A08FCF: EqI4
  loc_A08FD0: BranchF loc_A08FED
  loc_A08FD3: LitStr "0 registros encontrados"
  loc_A08FD6: FLdPr Me
  loc_A08FD9: VCallAd Control_ID_CodiOrgaLbl
  loc_A08FDC: FStAdFunc var_8C
  loc_A08FDF: FLdPr var_8C
  loc_A08FE2: Me.Caption = from_stack_1
  loc_A08FE7: FFree1Ad var_8C
  loc_A08FEA: Branch loc_A09092
  loc_A08FED: ILdRf var_C0
  loc_A08FF0: LitI4 1
  loc_A08FF5: EqI4
  loc_A08FF6: BranchF loc_A0905A
  loc_A08FF9: FLdRfVar var_A8
  loc_A08FFC: FLdRfVar var_D4
  loc_A08FFF: LitVarStr var_D0, "DetaOrga"
  loc_A09004: PopAdLdVar
  loc_A09005: FLdRfVar var_98
  loc_A09008: FLdRfVar var_8C
  loc_A0900B: FLdRfVar var_88
  loc_A0900E: NewIfNullPr clsorganigrama
  loc_A09011: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A09016: FLdPr var_8C
  loc_A09019:  = Me.Fields
  loc_A0901E: FLdPr var_98
  loc_A09021: from_stack_2 = Me.Item(from_stack_1)
  loc_A09026: FLdPr var_D4
  loc_A09029:  = Me.Value
  loc_A0902E: FLdRfVar var_A8
  loc_A09031: CStrVarTmp
  loc_A09032: FStStrNoPop var_90
  loc_A09035: FLdPr Me
  loc_A09038: VCallAd Control_ID_CodiOrgaLbl
  loc_A0903B: FStAdFunc var_D8
  loc_A0903E: FLdPr var_D8
  loc_A09041: Me.Caption = from_stack_1
  loc_A09046: FFree1Str var_90
  loc_A09049: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A09054: FFree1Var var_A8 = ""
  loc_A09057: Branch loc_A09092
  loc_A0905A: FLdRfVar var_BC
  loc_A0905D: FLdRfVar var_88
  loc_A09060: NewIfNullPr clsorganigrama
  loc_A09063: from_stack_1 = clsorganigrama.RecordCount
  loc_A09068: ILdRf var_BC
  loc_A0906B: CStrI4
  loc_A0906D: FStStrNoPop var_90
  loc_A09070: LitStr " organigramas encontrados"
  loc_A09073: ConcatStr
  loc_A09074: FStStrNoPop var_94
  loc_A09077: FLdPr Me
  loc_A0907A: VCallAd Control_ID_CodiOrgaLbl
  loc_A0907D: FStAdFunc var_8C
  loc_A09080: FLdPr var_8C
  loc_A09083: Me.Caption = from_stack_1
  loc_A09088: FFreeStr var_90 = ""
  loc_A0908F: FFree1Ad var_8C
  loc_A09092: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '951540
  'Data Table: 4908C8
  loc_95152C: FLdPr Me
  loc_95152F: VCallAd Control_ID_mskDesde
  loc_951532: CVarAd
  loc_951536: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95153B: FFree1Var var_94 = ""
  loc_95153E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B0B6C
  'Data Table: 4908C8
  loc_9B0AD0: FLdPr Me
  loc_9B0AD3: VCallAd Control_ID_mskDesde
  loc_9B0AD6: FStAdFunc var_88
  loc_9B0AD9: FLdPr var_88
  loc_9B0ADC: LateIdLdVar var_98 DispID_15 0
  loc_9B0AE3: PopAd
  loc_9B0AE5: FLdPr Me
  loc_9B0AE8: VCallAd Control_ID_mskDesde
  loc_9B0AEB: FStAdFunc var_AC
  loc_9B0AEE: LitI2_Byte &HFF
  loc_9B0AF0: PopTmpLdAd2 var_A2
  loc_9B0AF3: FLdZeroAd var_AC
  loc_9B0AF6: FStAdFunc var_A0
  loc_9B0AF9: FLdRfVar var_A0
  loc_9B0AFC: LitStr vbNullString
  loc_9B0AFF: LitI2_Byte 0
  loc_9B0B01: LitI2_Byte 0
  loc_9B0B03: FLdRfVar var_98
  loc_9B0B06: CStrVarTmp
  loc_9B0B07: FStStrNoPop var_9C
  loc_9B0B0A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0B0F: FStStrNoPop var_A8
  loc_9B0B12: FLdPr Me
  loc_9B0B15: MemStStrCopy
  loc_9B0B19: FFreeStr var_9C = ""
  loc_9B0B20: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0B29: FFree1Var var_98 = ""
  loc_9B0B2C: FLdPr Me
  loc_9B0B2F: VCallAd Control_ID_mskDesde
  loc_9B0B32: FStAdFunc var_B0
  loc_9B0B35: LitNothing
  loc_9B0B37: CastAd
  loc_9B0B3A: FStAdFunc var_AC
  loc_9B0B3D: FLdRfVar var_AC
  loc_9B0B40: FLdZeroAd var_B0
  loc_9B0B43: FStAdFuncNoPop
  loc_9B0B46: CastAd
  loc_9B0B49: FStAdFunc var_A0
  loc_9B0B4C: FLdRfVar var_A0
  loc_9B0B4F: FLdPr Me
  loc_9B0B52: MemLdRfVar from_stack_1.global_108
  loc_9B0B55: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0B5A: IStI2 arg_C
  loc_9B0B5D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0B68: ExitProcHresult
End Function

Private Sub cboPeriodo_Click() '9D22D0
  'Data Table: 4908C8
  loc_9D21E8: FLdRfVar var_8C
  loc_9D21EB: FLdPr Me
  loc_9D21EE: VCallAd Control_ID_cboPeriodo
  loc_9D21F1: FStAdFunc var_88
  loc_9D21F4: FLdPr var_88
  loc_9D21F7:  = Me.Text
  loc_9D21FC: LitI2_Byte 1
  loc_9D21FE: LitI2_Byte 1
  loc_9D2200: ILdRf var_8C
  loc_9D2203: CI2Str
  loc_9D2205: FLdRfVar var_9C
  loc_9D2208: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D220D: FLdRfVar var_9C
  loc_9D2210: CStrVarTmp
  loc_9D2211: CVarStr var_AC
  loc_9D2214: PopAdLdVar
  loc_9D2215: FLdPr Me
  loc_9D2218: VCallAd Control_ID_mskDesde
  loc_9D221B: FStAdFunc var_C0
  loc_9D221E: FLdPr var_C0
  loc_9D2221: LateIdSt
  loc_9D2226: FFree1Str var_8C
  loc_9D2229: FFreeAd var_88 = ""
  loc_9D2230: FFreeVar var_9C = ""
  loc_9D2237: FLdRfVar var_8C
  loc_9D223A: FLdPr Me
  loc_9D223D: VCallAd Control_ID_cboPeriodo
  loc_9D2240: FStAdFunc var_88
  loc_9D2243: FLdPr var_88
  loc_9D2246:  = Me.Text
  loc_9D224B: ILdRf var_8C
  loc_9D224E: CI2Str
  loc_9D2250: ImpAdLdI2 MemVar_C3D064
  loc_9D2253: LtI2
  loc_9D2254: FFree1Str var_8C
  loc_9D2257: FFree1Ad var_88
  loc_9D225A: BranchF loc_9D22AF
  loc_9D225D: FLdRfVar var_8C
  loc_9D2260: FLdPr Me
  loc_9D2263: VCallAd Control_ID_cboPeriodo
  loc_9D2266: FStAdFunc var_88
  loc_9D2269: FLdPr var_88
  loc_9D226C:  = Me.Text
  loc_9D2271: LitI2_Byte &H1F
  loc_9D2273: LitI2_Byte &HC
  loc_9D2275: ILdRf var_8C
  loc_9D2278: CI2Str
  loc_9D227A: FLdRfVar var_9C
  loc_9D227D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2282: FLdRfVar var_9C
  loc_9D2285: CStrVarTmp
  loc_9D2286: CVarStr var_AC
  loc_9D2289: PopAdLdVar
  loc_9D228A: FLdPr Me
  loc_9D228D: VCallAd Control_ID_mskHasta
  loc_9D2290: FStAdFunc var_C0
  loc_9D2293: FLdPr var_C0
  loc_9D2296: LateIdSt
  loc_9D229B: FFree1Str var_8C
  loc_9D229E: FFreeAd var_88 = ""
  loc_9D22A5: FFreeVar var_9C = ""
  loc_9D22AC: Branch loc_9D22CF
  loc_9D22AF: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D22B2: CStrDate
  loc_9D22B4: CVarStr var_9C
  loc_9D22B7: PopAdLdVar
  loc_9D22B8: FLdPr Me
  loc_9D22BB: VCallAd Control_ID_mskHasta
  loc_9D22BE: FStAdFunc var_88
  loc_9D22C1: FLdPr var_88
  loc_9D22C4: LateIdSt
  loc_9D22C9: FFree1Ad var_88
  loc_9D22CC: FFree1Var var_9C = ""
  loc_9D22CF: ExitProcHresult
End Sub

Public Function htmFileGet() '491954
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '491963
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '491972
  htmFile = Value
End Sub

Public Function bGeneradoGet() '491981
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '491990
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9B4F78
  'Data Table: 4908C8
  loc_9B4EE4: LitI4 0
  loc_9B4EE9: LitI4 6
  loc_9B4EEE: FLdRfVar var_88
  loc_9B4EF1: Redim
  loc_9B4EFB: FLdPr Me
  loc_9B4EFE: VCallAd Control_ID_cboPeriodo
  loc_9B4F01: CVarAd
  loc_9B4F05: ParmAry1St
  loc_9B4F0B: FLdPr Me
  loc_9B4F0E: VCallAd Control_ID_mskDesde
  loc_9B4F11: CVarAd
  loc_9B4F15: ParmAry1St
  loc_9B4F1B: FLdPr Me
  loc_9B4F1E: VCallAd Control_ID_cmdDesde
  loc_9B4F21: CVarAd
  loc_9B4F25: ParmAry1St
  loc_9B4F2B: FLdPr Me
  loc_9B4F2E: VCallAd Control_ID_mskHasta
  loc_9B4F31: CVarAd
  loc_9B4F35: ParmAry1St
  loc_9B4F3B: FLdPr Me
  loc_9B4F3E: VCallAd Control_ID_cmdHasta
  loc_9B4F41: CVarAd
  loc_9B4F45: ParmAry1St
  loc_9B4F4B: FLdPr Me
  loc_9B4F4E: VCallAd Control_ID_CodiOrgaMsk
  loc_9B4F51: CVarAd
  loc_9B4F55: ParmAry1St
  loc_9B4F5B: FLdPr Me
  loc_9B4F5E: VCallAd Control_ID_cmdCodiOrga
  loc_9B4F61: CVarAd
  loc_9B4F65: ParmAry1St
  loc_9B4F6B: FLdRfVar var_88
  loc_9B4F6E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B4F73: FLdRfVar var_88
  loc_9B4F76: Erase
  loc_9B4F77: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B40F0C
  'Data Table: 4908C8
  loc_B40570: FLdPr Me
  loc_B40573: MemLdI2 bGenerado
  loc_B40576: BranchF loc_B4057A
  loc_B40579: ExitProcHresult
  loc_B4057A: LitVarStr var_94, "Generando reporte..."
  loc_B4057F: PopAdLdVar
  loc_B40580: FLdPr Me
  loc_B40583: VCallAd Control_ID_statusBar
  loc_B40586: FStAdFunc var_A8
  loc_B40589: FLdPr var_A8
  loc_B4058C: LateIdSt
  loc_B40591: FFree1Ad var_A8
  loc_B40594: LitI4 &HB
  loc_B40599: CI2I4
  loc_B4059A: FLdPr Me
  loc_B4059D: Me.MousePointer = from_stack_1
  loc_B405A2: LitI2_Byte 0
  loc_B405A4: PopTmpLdAd2 var_AA
  loc_B405A7: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B405AC: FLdPr Me
  loc_B405AF: MemLdStr global_108
  loc_B405B2: LitStr vbNullString
  loc_B405B5: NeStr
  loc_B405B7: BranchF loc_B405BD
  loc_B405BA: Branch loc_B40EE6
  loc_B405BD: LitI2_Byte 0
  loc_B405BF: PopTmpLdAd2 var_AA
  loc_B405C2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B405C7: FLdPr Me
  loc_B405CA: MemLdStr global_108
  loc_B405CD: LitStr vbNullString
  loc_B405D0: NeStr
  loc_B405D2: BranchF loc_B405D8
  loc_B405D5: Branch loc_B40EE6
  loc_B405D8: LitI2_Byte 0
  loc_B405DA: PopTmpLdAd2 var_AA
  loc_B405DD: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B405E2: FLdPr Me
  loc_B405E5: MemLdRfVar from_stack_1.global_72
  loc_B405E8: NewIfNullAd
  loc_B405EB: FStAd var_B0 
  loc_B405EF: LitStr "DROP TEMPORARY TABLE IF EXISTS itmp;"
  loc_B405F2: LitStr " CREATE TEMPORARY TABLE tmp` ("
  loc_B405F5: ConcatStr
  loc_B405F6: FStStrNoPop var_B4
  loc_B405F9: LitStr "   odiOrga` varchar(8) NOT NULL default '',"
  loc_B405FC: ConcatStr
  loc_B405FD: FStStrNoPop var_B8
  loc_B40600: LitStr "   revImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40603: ConcatStr
  loc_B40604: FStStrNoPop var_BC
  loc_B40607: LitStr "   efiImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B4060A: ConcatStr
  loc_B4060B: FStStrNoPop var_C0
  loc_B4060E: LitStr "   eveImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40611: ConcatStr
  loc_B40612: FStStrNoPop var_C4
  loc_B40615: LitStr "   apaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40618: ConcatStr
  loc_B40619: FStStrNoPop var_C8
  loc_B4061C: LitStr "   agaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B4061F: ConcatStr
  loc_B40620: FStStrNoPop var_CC
  loc_B40623: LitStr "   PRIMARY KEY  (odiOrga`)"
  loc_B40626: ConcatStr
  loc_B40627: FStStrNoPop var_D0
  loc_B4062A: LitStr " ) ENGINE=MyISAM ;"
  loc_B4062D: ConcatStr
  loc_B4062E: FStStrNoPop var_D4
  loc_B40631: LitStr " DROP TEMPORARY TABLE IF EXISTS final;"
  loc_B40634: ConcatStr
  loc_B40635: FStStrNoPop var_D8
  loc_B40638: LitStr " CREATE TEMPORARY TABLE inal` ("
  loc_B4063B: ConcatStr
  loc_B4063C: FStStrNoPop var_DC
  loc_B4063F: LitStr "   sTit` TINYINT(1) UNSIGNED NOT NULL,"
  loc_B40642: ConcatStr
  loc_B40643: FStStrNoPop var_E0
  loc_B40646: LitStr "   odiOrga` varchar(8) NOT NULL default '',"
  loc_B40649: ConcatStr
  loc_B4064A: FStStrNoPop var_E4
  loc_B4064D: LitStr "   revImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40650: ConcatStr
  loc_B40651: FStStrNoPop var_E8
  loc_B40654: LitStr "   efiImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40657: ConcatStr
  loc_B40658: FStStrNoPop var_EC
  loc_B4065B: LitStr "   eveImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B4065E: ConcatStr
  loc_B4065F: FStStrNoPop var_F0
  loc_B40662: LitStr "   apaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B40665: ConcatStr
  loc_B40666: FStStrNoPop var_F4
  loc_B40669: LitStr "   agaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B4066C: ConcatStr
  loc_B4066D: FStStrNoPop var_F8
  loc_B40670: LitStr "   PRIMARY KEY  (sTit`,`CodiOrga`)"
  loc_B40673: ConcatStr
  loc_B40674: FStStrNoPop var_FC
  loc_B40677: LitStr " ) ENGINE=MyISAM ;"
  loc_B4067A: ConcatStr
  loc_B4067B: FStStrNoPop var_100
  loc_B4067E: FLdPr var_B0
  loc_B40681: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40686: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B406B1: FLdPr Me
  loc_B406B4: VCallAd Control_ID_mskDesde
  loc_B406B7: FStAdFunc var_118
  loc_B406BA: FLdPr var_118
  loc_B406BD: LateIdLdVar var_128 DispID_15 0
  loc_B406C4: PopAd
  loc_B406C6: FLdPr Me
  loc_B406C9: VCallAd Control_ID_mskHasta
  loc_B406CC: FStAdFunc var_18C
  loc_B406CF: FLdPr var_18C
  loc_B406D2: LateIdLdVar var_19C DispID_15 0
  loc_B406D9: PopAd
  loc_B406DB: LitStr "INSERT INTO itmp"
  loc_B406DE: LitStr " SELECT CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B406E1: ConcatStr
  loc_B406E2: FStStrNoPop var_B4
  loc_B406E5: LitStr " FROM imputacion"
  loc_B406E8: ConcatStr
  loc_B406E9: FStStrNoPop var_B8
  loc_B406EC: LitStr " WHERE PeriInfo = "
  loc_B406EF: ConcatStr
  loc_B406F0: FStStrNoPop var_C0
  loc_B406F3: FLdRfVar var_BC
  loc_B406F6: FLdPr Me
  loc_B406F9: VCallAd Control_ID_cboPeriodo
  loc_B406FC: FStAdFunc var_A8
  loc_B406FF: FLdPr var_A8
  loc_B40702:  = Me.Text
  loc_B40707: ILdRf var_BC
  loc_B4070A: ConcatStr
  loc_B4070B: FStStrNoPop var_C4
  loc_B4070E: LitStr " AND CodiOrga LIKE '"
  loc_B40711: ConcatStr
  loc_B40712: FStStrNoPop var_C8
  loc_B40715: FLdPr Me
  loc_B40718: VCallAd Control_ID_CodiOrgaMsk
  loc_B4071B: FStAdFunc var_104
  loc_B4071E: FLdPr var_104
  loc_B40721: LateIdLdVar var_114 DispID_22 0
  loc_B40728: CStrVarTmp
  loc_B40729: FStStrNoPop var_CC
  loc_B4072C: ConcatStr
  loc_B4072D: FStStrNoPop var_D0
  loc_B40730: LitStr Chr(37) & "'"
  loc_B40733: ConcatStr
  loc_B40734: FStStrNoPop var_D4
  loc_B40737: LitStr " AND FechImpu BETWEEN "
  loc_B4073A: ConcatStr
  loc_B4073B: CVarStr var_168
  loc_B4073E: LitI4 1
  loc_B40743: LitI4 1
  loc_B40748: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B4074D: FStVarCopyObj var_148
  loc_B40750: FLdRfVar var_148
  loc_B40753: FLdRfVar var_128
  loc_B40756: CStrVarTmp
  loc_B40757: CVarStr var_138
  loc_B4075A: FLdRfVar var_158
  loc_B4075D: ImpAdCallFPR4  = Format(, )
  loc_B40762: FLdRfVar var_158
  loc_B40765: ConcatVar var_178
  loc_B40769: LitVarStr var_A4, " AND "
  loc_B4076E: ConcatVar var_188
  loc_B40772: LitI4 1
  loc_B40777: LitI4 1
  loc_B4077C: LitVarStr var_1BC, "'yyyy-mm-dd'"
  loc_B40781: FStVarCopyObj var_1CC
  loc_B40784: FLdRfVar var_1CC
  loc_B40787: FLdRfVar var_19C
  loc_B4078A: CStrVarTmp
  loc_B4078B: CVarStr var_1AC
  loc_B4078E: FLdRfVar var_1DC
  loc_B40791: ImpAdCallFPR4  = Format(, )
  loc_B40796: FLdRfVar var_1DC
  loc_B40799: ConcatVar var_1EC
  loc_B4079D: LitVarStr var_1FC, " GROUP BY CodiOrga;"
  loc_B407A2: ConcatVar var_20C
  loc_B407A6: LitVarStr var_21C, " INSERT INTO final"
  loc_B407AB: ConcatVar var_22C
  loc_B407AF: LitVarStr var_23C, " SELECT 1 EsTit, Concat(Left(CodiOrga,1),'00000') CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B407B4: ConcatVar var_24C
  loc_B407B8: LitVarStr var_25C, " FROM itmp GROUP BY Left(CodiOrga,1);"
  loc_B407BD: ConcatVar var_26C
  loc_B407C1: LitVarStr var_27C, " INSERT IGNORE INTO final"
  loc_B407C6: ConcatVar var_28C
  loc_B407CA: LitVarStr var_29C, " SELECT 2 EsTit, Concat(Left(CodiOrga,2),'0000') CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B407CF: ConcatVar var_2AC
  loc_B407D3: LitVarStr var_2BC, " FROM itmp GROUP BY Left(CodiOrga,2);"
  loc_B407D8: ConcatVar var_2CC
  loc_B407DC: LitVarStr var_2DC, " INSERT IGNORE INTO final"
  loc_B407E1: ConcatVar var_2EC
  loc_B407E5: LitVarStr var_2FC, " SELECT 3 EsTit, Concat(Left(CodiOrga,3),'000') CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B407EA: ConcatVar var_30C
  loc_B407EE: LitVarStr var_31C, " FROM itmp GROUP BY Left(CodiOrga,3);"
  loc_B407F3: ConcatVar var_32C
  loc_B407F7: LitVarStr var_33C, " INSERT IGNORE INTO final"
  loc_B407FC: ConcatVar var_34C
  loc_B40800: LitVarStr var_35C, " SELECT 4 EsTit, Concat(Left(CodiOrga,4),'00') CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B40805: ConcatVar var_36C
  loc_B40809: LitVarStr var_37C, " FROM itmp GROUP BY Left(CodiOrga,4);"
  loc_B4080E: ConcatVar var_38C
  loc_B40812: LitVarStr var_39C, " INSERT IGNORE INTO final"
  loc_B40817: ConcatVar var_3AC
  loc_B4081B: LitVarStr var_3BC, " SELECT 0 EsTit, CodiOrga, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B40820: ConcatVar var_3CC
  loc_B40824: LitVarStr var_3DC, " FROM itmp GROUP BY CodiOrga;"
  loc_B40829: ConcatVar var_3EC
  loc_B4082D: CStrVarVal var_D8
  loc_B40831: FLdPr var_B0
  loc_B40834: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40839: FFreeStr var_B4 = "": var_B8 = "": var_C0 = "": var_BC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B40850: FFreeAd var_A8 = "": var_104 = "": var_118 = ""
  loc_B4085B: FFreeVar var_114 = "": var_128 = "": var_138 = "": var_148 = "": var_168 = "": var_158 = "": var_178 = "": var_19C = "": var_1AC = "": var_1CC = "": var_188 = "": var_1DC = "": var_1EC = "": var_20C = "": var_22C = "": var_24C = "": var_26C = "": var_28C = "": var_2AC = "": var_2CC = "": var_2EC = "": var_30C = "": var_32C = "": var_34C = "": var_36C = "": var_38C = "": var_3AC = "": var_3CC = ""
  loc_B40898: LitStr "SELECT final.*, EsTit, DetaOrga"
  loc_B4089B: LitStr " FROM final"
  loc_B4089E: ConcatStr
  loc_B4089F: FStStrNoPop var_B4
  loc_B408A2: LitStr " LEFT JOIN infogov.organigrama ON infogov.organigrama.PeriInfo = "
  loc_B408A5: ConcatStr
  loc_B408A6: FStStrNoPop var_BC
  loc_B408A9: FLdRfVar var_B8
  loc_B408AC: FLdPr Me
  loc_B408AF: VCallAd Control_ID_cboPeriodo
  loc_B408B2: FStAdFunc var_A8
  loc_B408B5: FLdPr var_A8
  loc_B408B8:  = Me.Text
  loc_B408BD: ILdRf var_B8
  loc_B408C0: ConcatStr
  loc_B408C1: FStStrNoPop var_C0
  loc_B408C4: LitStr " AND infogov.organigrama.CodiOrga = final.CodiOrga"
  loc_B408C7: ConcatStr
  loc_B408C8: FStStrNoPop var_C4
  loc_B408CB: LitStr " ORDER BY CodiOrga, EsTit desc"
  loc_B408CE: ConcatStr
  loc_B408CF: FStStrNoPop var_C8
  loc_B408D2: FLdPr var_B0
  loc_B408D5: Call clsbase.RedefineRS(from_stack_1v)
  loc_B408DA: FFreeStr var_B4 = "": var_BC = "": var_B8 = "": var_C0 = "": var_C4 = ""
  loc_B408E9: FFree1Ad var_A8
  loc_B408EC: FLdRfVar var_3F0
  loc_B408EF: FLdPr var_B0
  loc_B408F2: from_stack_1 = clsbase.RecordCount
  loc_B408F7: ILdRf var_3F0
  loc_B408FA: LitI4 1
  loc_B408FF: LtI4
  loc_B40900: BranchF loc_B40913
  loc_B40903: LitI4 0
  loc_B40908: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4090B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B40910: Branch loc_B40EE6
  loc_B40913: LitI4 0
  loc_B40918: FLdRfVar var_3F0
  loc_B4091B: FLdPr var_B0
  loc_B4091E: from_stack_1 = clsbase.RecordCount
  loc_B40923: ILdRf var_3F0
  loc_B40926: FLdPr Me
  loc_B40929: MemLdRfVar from_stack_1.global_96
  loc_B4092C: Redim
  loc_B40936: LitI4 0
  loc_B4093B: LitI4 1
  loc_B40940: FLdPr Me
  loc_B40943: MemLdRfVar from_stack_1.global_104
  loc_B40946: Redim
  loc_B40950: FLdPr var_B0
  loc_B40953: Call clsbase.MoveFirst()
  loc_B40958: LitI2_Byte 1
  loc_B4095A: FLdPr Me
  loc_B4095D: MemLdRfVar from_stack_1.global_100
  loc_B40960: FLdPr Me
  loc_B40963: MemLdStr global_96
  loc_B40966: LitI2_Byte 1
  loc_B40968: FnUBound
  loc_B4096A: CI2I4
  loc_B4096B: ForI2 var_3F4
  loc_B40971: FLdRfVar var_114
  loc_B40974: FLdRfVar var_118
  loc_B40977: LitVarStr var_94, "EsTit"
  loc_B4097C: PopAdLdVar
  loc_B4097D: FLdRfVar var_104
  loc_B40980: FLdRfVar var_A8
  loc_B40983: FLdPr var_B0
  loc_B40986: from_stack_1v = clsbase.RsFrmGet()
  loc_B4098B: FLdPr var_A8
  loc_B4098E:  = Me.Fields
  loc_B40993: FLdPr var_104
  loc_B40996: from_stack_2 = Me.Item(from_stack_1)
  loc_B4099B: FLdPr var_118
  loc_B4099E:  = Me.Value
  loc_B409A3: FLdRfVar var_114
  loc_B409A6: CI2Var
  loc_B409A7: FLdPr Me
  loc_B409AA: MemLdI2 global_100
  loc_B409AD: CI4UI1
  loc_B409AE: FLdPr Me
  loc_B409B1: MemLdStr global_96
  loc_B409B4: Ary1LdPr
  loc_B409B5: MemStI2 global_0
  loc_B409B8: FFreeAd var_A8 = "": var_104 = ""
  loc_B409C1: FFree1Var var_114 = ""
  loc_B409C4: FLdRfVar var_118
  loc_B409C7: LitVarStr var_94, "CodiOrga"
  loc_B409CC: PopAdLdVar
  loc_B409CD: FLdRfVar var_104
  loc_B409D0: FLdRfVar var_A8
  loc_B409D3: FLdPr var_B0
  loc_B409D6: from_stack_1v = clsbase.RsFrmGet()
  loc_B409DB: FLdPr var_A8
  loc_B409DE:  = Me.Fields
  loc_B409E3: FLdPr var_104
  loc_B409E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B409EB: LitI2_Byte 0
  loc_B409ED: LitVar_Missing var_128
  loc_B409F0: LitI2_Byte 0
  loc_B409F2: FLdZeroAd var_118
  loc_B409F5: CVarAd
  loc_B409F9: PopAdLdVar
  loc_B409FA: FLdPr Me
  loc_B409FD: MemLdI2 global_100
  loc_B40A00: CI4UI1
  loc_B40A01: FLdPr Me
  loc_B40A04: MemLdStr global_96
  loc_B40A07: AryLock
  loc_B40A0A: Ary1LdPr
  loc_B40A0B: MemLdRfVar from_stack_1.global_4
  loc_B40A0E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40A13: AryUnlock
  loc_B40A16: FFreeAd var_A8 = ""
  loc_B40A1D: FFreeVar var_114 = ""
  loc_B40A24: FLdRfVar var_118
  loc_B40A27: LitVarStr var_94, "DetaOrga"
  loc_B40A2C: PopAdLdVar
  loc_B40A2D: FLdRfVar var_104
  loc_B40A30: FLdRfVar var_A8
  loc_B40A33: FLdPr var_B0
  loc_B40A36: from_stack_1v = clsbase.RsFrmGet()
  loc_B40A3B: FLdPr var_A8
  loc_B40A3E:  = Me.Fields
  loc_B40A43: FLdPr var_104
  loc_B40A46: from_stack_2 = Me.Item(from_stack_1)
  loc_B40A4B: LitI2_Byte 0
  loc_B40A4D: LitVar_Missing var_128
  loc_B40A50: LitI2_Byte 0
  loc_B40A52: FLdZeroAd var_118
  loc_B40A55: CVarAd
  loc_B40A59: PopAdLdVar
  loc_B40A5A: FLdPr Me
  loc_B40A5D: MemLdI2 global_100
  loc_B40A60: CI4UI1
  loc_B40A61: FLdPr Me
  loc_B40A64: MemLdStr global_96
  loc_B40A67: AryLock
  loc_B40A6A: Ary1LdPr
  loc_B40A6B: MemLdRfVar from_stack_1.global_8
  loc_B40A6E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40A73: AryUnlock
  loc_B40A76: FFreeAd var_A8 = ""
  loc_B40A7D: FFreeVar var_114 = ""
  loc_B40A84: FLdPr Me
  loc_B40A87: MemLdI2 global_100
  loc_B40A8A: CI4UI1
  loc_B40A8B: FLdPr Me
  loc_B40A8E: MemLdStr global_96
  loc_B40A91: Ary1LdPr
  loc_B40A92: MemLdI2 global_0
  loc_B40A95: LitI2_Byte 0
  loc_B40A97: EqI2
  loc_B40A98: BranchF loc_B40CDD
  loc_B40A9B: FLdRfVar var_118
  loc_B40A9E: LitVarStr var_94, "PrevImpu"
  loc_B40AA3: PopAdLdVar
  loc_B40AA4: FLdRfVar var_104
  loc_B40AA7: FLdRfVar var_A8
  loc_B40AAA: FLdPr var_B0
  loc_B40AAD: from_stack_1v = clsbase.RsFrmGet()
  loc_B40AB2: FLdPr var_A8
  loc_B40AB5:  = Me.Fields
  loc_B40ABA: FLdPr var_104
  loc_B40ABD: from_stack_2 = Me.Item(from_stack_1)
  loc_B40AC2: LitI2_Byte 0
  loc_B40AC4: LitI4 1
  loc_B40AC9: FLdPr Me
  loc_B40ACC: MemLdStr global_104
  loc_B40ACF: AryLock
  loc_B40AD2: Ary1LdPr
  loc_B40AD3: MemLdRfVar from_stack_1.global_12
  loc_B40AD6: CVarRef
  loc_B40ADB: LitI2_Byte &HFF
  loc_B40ADD: FLdZeroAd var_118
  loc_B40AE0: CVarAd
  loc_B40AE4: PopAdLdVar
  loc_B40AE5: FLdPr Me
  loc_B40AE8: MemLdI2 global_100
  loc_B40AEB: CI4UI1
  loc_B40AEC: FLdPr Me
  loc_B40AEF: MemLdStr global_96
  loc_B40AF2: AryLock
  loc_B40AF5: Ary1LdPr
  loc_B40AF6: MemLdRfVar from_stack_1.global_12
  loc_B40AF9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40AFE: AryUnlock
  loc_B40B01: AryUnlock
  loc_B40B04: FFreeAd var_A8 = ""
  loc_B40B0B: FFree1Var var_114 = ""
  loc_B40B0E: FLdRfVar var_118
  loc_B40B11: LitVarStr var_94, "DefiImpu"
  loc_B40B16: PopAdLdVar
  loc_B40B17: FLdRfVar var_104
  loc_B40B1A: FLdRfVar var_A8
  loc_B40B1D: FLdPr var_B0
  loc_B40B20: from_stack_1v = clsbase.RsFrmGet()
  loc_B40B25: FLdPr var_A8
  loc_B40B28:  = Me.Fields
  loc_B40B2D: FLdPr var_104
  loc_B40B30: from_stack_2 = Me.Item(from_stack_1)
  loc_B40B35: LitI2_Byte 0
  loc_B40B37: LitI4 1
  loc_B40B3C: FLdPr Me
  loc_B40B3F: MemLdStr global_104
  loc_B40B42: AryLock
  loc_B40B45: Ary1LdPr
  loc_B40B46: MemLdRfVar from_stack_1.global_16
  loc_B40B49: CVarRef
  loc_B40B4E: LitI2_Byte &HFF
  loc_B40B50: FLdZeroAd var_118
  loc_B40B53: CVarAd
  loc_B40B57: PopAdLdVar
  loc_B40B58: FLdPr Me
  loc_B40B5B: MemLdI2 global_100
  loc_B40B5E: CI4UI1
  loc_B40B5F: FLdPr Me
  loc_B40B62: MemLdStr global_96
  loc_B40B65: AryLock
  loc_B40B68: Ary1LdPr
  loc_B40B69: MemLdRfVar from_stack_1.global_16
  loc_B40B6C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40B71: AryUnlock
  loc_B40B74: AryUnlock
  loc_B40B77: FFreeAd var_A8 = ""
  loc_B40B7E: FFree1Var var_114 = ""
  loc_B40B81: FLdRfVar var_118
  loc_B40B84: LitVarStr var_94, "DeveImpu"
  loc_B40B89: PopAdLdVar
  loc_B40B8A: FLdRfVar var_104
  loc_B40B8D: FLdRfVar var_A8
  loc_B40B90: FLdPr var_B0
  loc_B40B93: from_stack_1v = clsbase.RsFrmGet()
  loc_B40B98: FLdPr var_A8
  loc_B40B9B:  = Me.Fields
  loc_B40BA0: FLdPr var_104
  loc_B40BA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B40BA8: LitI2_Byte 0
  loc_B40BAA: LitI4 1
  loc_B40BAF: FLdPr Me
  loc_B40BB2: MemLdStr global_104
  loc_B40BB5: AryLock
  loc_B40BB8: Ary1LdPr
  loc_B40BB9: MemLdRfVar from_stack_1.global_20
  loc_B40BBC: CVarRef
  loc_B40BC1: LitI2_Byte &HFF
  loc_B40BC3: FLdZeroAd var_118
  loc_B40BC6: CVarAd
  loc_B40BCA: PopAdLdVar
  loc_B40BCB: FLdPr Me
  loc_B40BCE: MemLdI2 global_100
  loc_B40BD1: CI4UI1
  loc_B40BD2: FLdPr Me
  loc_B40BD5: MemLdStr global_96
  loc_B40BD8: AryLock
  loc_B40BDB: Ary1LdPr
  loc_B40BDC: MemLdRfVar from_stack_1.global_20
  loc_B40BDF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40BE4: AryUnlock
  loc_B40BE7: AryUnlock
  loc_B40BEA: FFreeAd var_A8 = ""
  loc_B40BF1: FFree1Var var_114 = ""
  loc_B40BF4: FLdRfVar var_118
  loc_B40BF7: LitVarStr var_94, "MapaImpu"
  loc_B40BFC: PopAdLdVar
  loc_B40BFD: FLdRfVar var_104
  loc_B40C00: FLdRfVar var_A8
  loc_B40C03: FLdPr var_B0
  loc_B40C06: from_stack_1v = clsbase.RsFrmGet()
  loc_B40C0B: FLdPr var_A8
  loc_B40C0E:  = Me.Fields
  loc_B40C13: FLdPr var_104
  loc_B40C16: from_stack_2 = Me.Item(from_stack_1)
  loc_B40C1B: LitI2_Byte 0
  loc_B40C1D: LitI4 1
  loc_B40C22: FLdPr Me
  loc_B40C25: MemLdStr global_104
  loc_B40C28: AryLock
  loc_B40C2B: Ary1LdPr
  loc_B40C2C: MemLdRfVar from_stack_1.global_24
  loc_B40C2F: CVarRef
  loc_B40C34: LitI2_Byte &HFF
  loc_B40C36: FLdZeroAd var_118
  loc_B40C39: CVarAd
  loc_B40C3D: PopAdLdVar
  loc_B40C3E: FLdPr Me
  loc_B40C41: MemLdI2 global_100
  loc_B40C44: CI4UI1
  loc_B40C45: FLdPr Me
  loc_B40C48: MemLdStr global_96
  loc_B40C4B: AryLock
  loc_B40C4E: Ary1LdPr
  loc_B40C4F: MemLdRfVar from_stack_1.global_24
  loc_B40C52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40C57: AryUnlock
  loc_B40C5A: AryUnlock
  loc_B40C5D: FFreeAd var_A8 = ""
  loc_B40C64: FFree1Var var_114 = ""
  loc_B40C67: FLdRfVar var_118
  loc_B40C6A: LitVarStr var_94, "PagaImpu"
  loc_B40C6F: PopAdLdVar
  loc_B40C70: FLdRfVar var_104
  loc_B40C73: FLdRfVar var_A8
  loc_B40C76: FLdPr var_B0
  loc_B40C79: from_stack_1v = clsbase.RsFrmGet()
  loc_B40C7E: FLdPr var_A8
  loc_B40C81:  = Me.Fields
  loc_B40C86: FLdPr var_104
  loc_B40C89: from_stack_2 = Me.Item(from_stack_1)
  loc_B40C8E: LitI2_Byte 0
  loc_B40C90: LitI4 1
  loc_B40C95: FLdPr Me
  loc_B40C98: MemLdStr global_104
  loc_B40C9B: AryLock
  loc_B40C9E: Ary1LdPr
  loc_B40C9F: MemLdRfVar from_stack_1.global_28
  loc_B40CA2: CVarRef
  loc_B40CA7: LitI2_Byte &HFF
  loc_B40CA9: FLdZeroAd var_118
  loc_B40CAC: CVarAd
  loc_B40CB0: PopAdLdVar
  loc_B40CB1: FLdPr Me
  loc_B40CB4: MemLdI2 global_100
  loc_B40CB7: CI4UI1
  loc_B40CB8: FLdPr Me
  loc_B40CBB: MemLdStr global_96
  loc_B40CBE: AryLock
  loc_B40CC1: Ary1LdPr
  loc_B40CC2: MemLdRfVar from_stack_1.global_28
  loc_B40CC5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40CCA: AryUnlock
  loc_B40CCD: AryUnlock
  loc_B40CD0: FFreeAd var_A8 = ""
  loc_B40CD7: FFree1Var var_114 = ""
  loc_B40CDA: Branch loc_B40EBD
  loc_B40CDD: FLdRfVar var_118
  loc_B40CE0: LitVarStr var_94, "PrevImpu"
  loc_B40CE5: PopAdLdVar
  loc_B40CE6: FLdRfVar var_104
  loc_B40CE9: FLdRfVar var_A8
  loc_B40CEC: FLdPr var_B0
  loc_B40CEF: from_stack_1v = clsbase.RsFrmGet()
  loc_B40CF4: FLdPr var_A8
  loc_B40CF7:  = Me.Fields
  loc_B40CFC: FLdPr var_104
  loc_B40CFF: from_stack_2 = Me.Item(from_stack_1)
  loc_B40D04: LitI2_Byte 0
  loc_B40D06: LitVar_Missing var_128
  loc_B40D09: LitI2_Byte &HFF
  loc_B40D0B: FLdZeroAd var_118
  loc_B40D0E: CVarAd
  loc_B40D12: PopAdLdVar
  loc_B40D13: FLdPr Me
  loc_B40D16: MemLdI2 global_100
  loc_B40D19: CI4UI1
  loc_B40D1A: FLdPr Me
  loc_B40D1D: MemLdStr global_96
  loc_B40D20: AryLock
  loc_B40D23: Ary1LdPr
  loc_B40D24: MemLdRfVar from_stack_1.global_12
  loc_B40D27: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40D2C: AryUnlock
  loc_B40D2F: FFreeAd var_A8 = ""
  loc_B40D36: FFreeVar var_114 = ""
  loc_B40D3D: FLdRfVar var_118
  loc_B40D40: LitVarStr var_94, "DefiImpu"
  loc_B40D45: PopAdLdVar
  loc_B40D46: FLdRfVar var_104
  loc_B40D49: FLdRfVar var_A8
  loc_B40D4C: FLdPr var_B0
  loc_B40D4F: from_stack_1v = clsbase.RsFrmGet()
  loc_B40D54: FLdPr var_A8
  loc_B40D57:  = Me.Fields
  loc_B40D5C: FLdPr var_104
  loc_B40D5F: from_stack_2 = Me.Item(from_stack_1)
  loc_B40D64: LitI2_Byte 0
  loc_B40D66: LitVar_Missing var_128
  loc_B40D69: LitI2_Byte &HFF
  loc_B40D6B: FLdZeroAd var_118
  loc_B40D6E: CVarAd
  loc_B40D72: PopAdLdVar
  loc_B40D73: FLdPr Me
  loc_B40D76: MemLdI2 global_100
  loc_B40D79: CI4UI1
  loc_B40D7A: FLdPr Me
  loc_B40D7D: MemLdStr global_96
  loc_B40D80: AryLock
  loc_B40D83: Ary1LdPr
  loc_B40D84: MemLdRfVar from_stack_1.global_16
  loc_B40D87: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40D8C: AryUnlock
  loc_B40D8F: FFreeAd var_A8 = ""
  loc_B40D96: FFreeVar var_114 = ""
  loc_B40D9D: FLdRfVar var_118
  loc_B40DA0: LitVarStr var_94, "DeveImpu"
  loc_B40DA5: PopAdLdVar
  loc_B40DA6: FLdRfVar var_104
  loc_B40DA9: FLdRfVar var_A8
  loc_B40DAC: FLdPr var_B0
  loc_B40DAF: from_stack_1v = clsbase.RsFrmGet()
  loc_B40DB4: FLdPr var_A8
  loc_B40DB7:  = Me.Fields
  loc_B40DBC: FLdPr var_104
  loc_B40DBF: from_stack_2 = Me.Item(from_stack_1)
  loc_B40DC4: LitI2_Byte 0
  loc_B40DC6: LitVar_Missing var_128
  loc_B40DC9: LitI2_Byte &HFF
  loc_B40DCB: FLdZeroAd var_118
  loc_B40DCE: CVarAd
  loc_B40DD2: PopAdLdVar
  loc_B40DD3: FLdPr Me
  loc_B40DD6: MemLdI2 global_100
  loc_B40DD9: CI4UI1
  loc_B40DDA: FLdPr Me
  loc_B40DDD: MemLdStr global_96
  loc_B40DE0: AryLock
  loc_B40DE3: Ary1LdPr
  loc_B40DE4: MemLdRfVar from_stack_1.global_20
  loc_B40DE7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40DEC: AryUnlock
  loc_B40DEF: FFreeAd var_A8 = ""
  loc_B40DF6: FFreeVar var_114 = ""
  loc_B40DFD: FLdRfVar var_118
  loc_B40E00: LitVarStr var_94, "MapaImpu"
  loc_B40E05: PopAdLdVar
  loc_B40E06: FLdRfVar var_104
  loc_B40E09: FLdRfVar var_A8
  loc_B40E0C: FLdPr var_B0
  loc_B40E0F: from_stack_1v = clsbase.RsFrmGet()
  loc_B40E14: FLdPr var_A8
  loc_B40E17:  = Me.Fields
  loc_B40E1C: FLdPr var_104
  loc_B40E1F: from_stack_2 = Me.Item(from_stack_1)
  loc_B40E24: LitI2_Byte 0
  loc_B40E26: LitVar_Missing var_128
  loc_B40E29: LitI2_Byte &HFF
  loc_B40E2B: FLdZeroAd var_118
  loc_B40E2E: CVarAd
  loc_B40E32: PopAdLdVar
  loc_B40E33: FLdPr Me
  loc_B40E36: MemLdI2 global_100
  loc_B40E39: CI4UI1
  loc_B40E3A: FLdPr Me
  loc_B40E3D: MemLdStr global_96
  loc_B40E40: AryLock
  loc_B40E43: Ary1LdPr
  loc_B40E44: MemLdRfVar from_stack_1.global_24
  loc_B40E47: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40E4C: AryUnlock
  loc_B40E4F: FFreeAd var_A8 = ""
  loc_B40E56: FFreeVar var_114 = ""
  loc_B40E5D: FLdRfVar var_118
  loc_B40E60: LitVarStr var_94, "PagaImpu"
  loc_B40E65: PopAdLdVar
  loc_B40E66: FLdRfVar var_104
  loc_B40E69: FLdRfVar var_A8
  loc_B40E6C: FLdPr var_B0
  loc_B40E6F: from_stack_1v = clsbase.RsFrmGet()
  loc_B40E74: FLdPr var_A8
  loc_B40E77:  = Me.Fields
  loc_B40E7C: FLdPr var_104
  loc_B40E7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B40E84: LitI2_Byte 0
  loc_B40E86: LitVar_Missing var_128
  loc_B40E89: LitI2_Byte &HFF
  loc_B40E8B: FLdZeroAd var_118
  loc_B40E8E: CVarAd
  loc_B40E92: PopAdLdVar
  loc_B40E93: FLdPr Me
  loc_B40E96: MemLdI2 global_100
  loc_B40E99: CI4UI1
  loc_B40E9A: FLdPr Me
  loc_B40E9D: MemLdStr global_96
  loc_B40EA0: AryLock
  loc_B40EA3: Ary1LdPr
  loc_B40EA4: MemLdRfVar from_stack_1.global_28
  loc_B40EA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40EAC: AryUnlock
  loc_B40EAF: FFreeAd var_A8 = ""
  loc_B40EB6: FFreeVar var_114 = ""
  loc_B40EBD: LitI4 1
  loc_B40EC2: PopTmpLdAdStr var_3F0
  loc_B40EC5: FLdPr var_B0
  loc_B40EC8: Call clsbase.Mover(from_stack_1v)
  loc_B40ECD: FLdPr Me
  loc_B40ED0: MemLdRfVar from_stack_1.global_100
  loc_B40ED3: NextI2 var_3F4, loc_B40971
  loc_B40ED8: LitNothing
  loc_B40EDA: FStAd var_B0 
  loc_B40EDE: LitI2_Byte &HFF
  loc_B40EE0: FLdPr Me
  loc_B40EE3: MemStI2 bGenerado
  loc_B40EE6: LitI2_Byte 0
  loc_B40EE8: FLdPr Me
  loc_B40EEB: Me.MousePointer = from_stack_1
  loc_B40EF0: LitVarStr var_94, vbNullString
  loc_B40EF5: PopAdLdVar
  loc_B40EF6: FLdPr Me
  loc_B40EF9: VCallAd Control_ID_statusBar
  loc_B40EFC: FStAdFunc var_A8
  loc_B40EFF: FLdPr var_A8
  loc_B40F02: LateIdSt
  loc_B40F07: FFree1Ad var_A8
  loc_B40F0A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A77768
  'Data Table: 4908C8
  loc_A77390: FLdRfVar var_88
  loc_A77393: LitI2_Byte 0
  loc_A77395: LitI2_Byte &HFF
  loc_A77397: ImpAdLdI4 MemVar_C3D83C
  loc_A7739A: FLdPr Me
  loc_A7739D: MemLdRfVar from_stack_1.global_76
  loc_A773A0: NewIfNullPr IFileSystem3
  loc_A773A3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A773A8: ILdRf var_88
  loc_A773AB: FLdPr Me
  loc_A773AE: MemStVarAd
  loc_A773B2: FFree1Ad var_88
  loc_A773B5: Call Proc_230_27_A870C8()
  loc_A773BA: LitI2_Byte 1
  loc_A773BC: FLdPr Me
  loc_A773BF: MemLdRfVar from_stack_1.global_100
  loc_A773C2: FLdPr Me
  loc_A773C5: MemLdStr global_96
  loc_A773C8: LitI2_Byte 1
  loc_A773CA: FnUBound
  loc_A773CC: CI2I4
  loc_A773CD: ForI2 var_8C
  loc_A773D3: FLdPr Me
  loc_A773D6: MemLdI2 global_100
  loc_A773D9: CI4UI1
  loc_A773DA: FLdPr Me
  loc_A773DD: MemLdStr global_96
  loc_A773E0: AryLock
  loc_A773E3: Ary1LdRf
  loc_A773E4: FStR4 var_94
  loc_A773E7: FMemLdI2 var_94(0)
  loc_A773EC: FStI2 var_96
  loc_A773EF: FLdI2 var_96
  loc_A773F2: LitI2_Byte 1
  loc_A773F4: EqI2
  loc_A773F5: BranchF loc_A7740F
  loc_A773F8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_A773FD: PopAdLdVar
  loc_A773FE: FLdPr Me
  loc_A77401: MemLdRfVar from_stack_1.htmFile
  loc_A77404: LdPrVar
  loc_A77406: LateMemCall
  loc_A7740C: Branch loc_A774A3
  loc_A7740F: FLdI2 var_96
  loc_A77412: LitI2_Byte 2
  loc_A77414: EqI2
  loc_A77415: BranchF loc_A7742F
  loc_A77418: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales2"" nowrap>"
  loc_A7741D: PopAdLdVar
  loc_A7741E: FLdPr Me
  loc_A77421: MemLdRfVar from_stack_1.htmFile
  loc_A77424: LdPrVar
  loc_A77426: LateMemCall
  loc_A7742C: Branch loc_A774A3
  loc_A7742F: FLdI2 var_96
  loc_A77432: LitI2_Byte 3
  loc_A77434: EqI2
  loc_A77435: BranchF loc_A7744F
  loc_A77438: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales3"" nowrap>"
  loc_A7743D: PopAdLdVar
  loc_A7743E: FLdPr Me
  loc_A77441: MemLdRfVar from_stack_1.htmFile
  loc_A77444: LdPrVar
  loc_A77446: LateMemCall
  loc_A7744C: Branch loc_A774A3
  loc_A7744F: FLdI2 var_96
  loc_A77452: LitI2_Byte 4
  loc_A77454: EqI2
  loc_A77455: BranchF loc_A7746F
  loc_A77458: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales4"" nowrap>"
  loc_A7745D: PopAdLdVar
  loc_A7745E: FLdPr Me
  loc_A77461: MemLdRfVar from_stack_1.htmFile
  loc_A77464: LdPrVar
  loc_A77466: LateMemCall
  loc_A7746C: Branch loc_A774A3
  loc_A7746F: FLdI2 var_96
  loc_A77472: LitI2_Byte 5
  loc_A77474: EqI2
  loc_A77475: BranchF loc_A7748F
  loc_A77478: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales5"" nowrap>"
  loc_A7747D: PopAdLdVar
  loc_A7747E: FLdPr Me
  loc_A77481: MemLdRfVar from_stack_1.htmFile
  loc_A77484: LdPrVar
  loc_A77486: LateMemCall
  loc_A7748C: Branch loc_A774A3
  loc_A7748F: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A77494: PopAdLdVar
  loc_A77495: FLdPr Me
  loc_A77498: MemLdRfVar from_stack_1.htmFile
  loc_A7749B: LdPrVar
  loc_A7749D: LateMemCall
  loc_A774A3: LitI4 0
  loc_A774A8: LitI4 0
  loc_A774AD: LitI2_Byte 0
  loc_A774AF: LitStr "left"
  loc_A774B2: FMemLdR4 var_94(4)
  loc_A774B7: LitStr " - "
  loc_A774BA: ConcatStr
  loc_A774BB: FStStrNoPop var_BC
  loc_A774BE: FMemLdR4 var_94(8)
  loc_A774C3: ConcatStr
  loc_A774C4: FStStrNoPop var_C0
  loc_A774C7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A774CC: CVarStr var_D0
  loc_A774CF: PopAdLdVar
  loc_A774D0: FLdPr Me
  loc_A774D3: MemLdRfVar from_stack_1.htmFile
  loc_A774D6: LdPrVar
  loc_A774D8: LateMemCall
  loc_A774DE: FFreeStr var_BC = ""
  loc_A774E5: FFree1Var var_D0 = ""
  loc_A774E8: LitI4 0
  loc_A774ED: LitI4 0
  loc_A774F2: LitI2_Byte 0
  loc_A774F4: LitStr "right"
  loc_A774F7: FMemLdR4 var_94(12)
  loc_A774FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A77501: CVarStr var_D0
  loc_A77504: PopAdLdVar
  loc_A77505: FLdPr Me
  loc_A77508: MemLdRfVar from_stack_1.htmFile
  loc_A7750B: LdPrVar
  loc_A7750D: LateMemCall
  loc_A77513: FFree1Var var_D0 = ""
  loc_A77516: LitI4 0
  loc_A7751B: LitI4 0
  loc_A77520: LitI2_Byte 0
  loc_A77522: LitStr "right"
  loc_A77525: FMemLdR4 var_94(16)
  loc_A7752A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7752F: CVarStr var_D0
  loc_A77532: PopAdLdVar
  loc_A77533: FLdPr Me
  loc_A77536: MemLdRfVar from_stack_1.htmFile
  loc_A77539: LdPrVar
  loc_A7753B: LateMemCall
  loc_A77541: FFree1Var var_D0 = ""
  loc_A77544: LitI4 0
  loc_A77549: LitI4 0
  loc_A7754E: LitI2_Byte 0
  loc_A77550: LitStr "right"
  loc_A77553: FMemLdR4 var_94(20)
  loc_A77558: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7755D: CVarStr var_D0
  loc_A77560: PopAdLdVar
  loc_A77561: FLdPr Me
  loc_A77564: MemLdRfVar from_stack_1.htmFile
  loc_A77567: LdPrVar
  loc_A77569: LateMemCall
  loc_A7756F: FFree1Var var_D0 = ""
  loc_A77572: LitI4 0
  loc_A77577: LitI4 0
  loc_A7757C: LitI2_Byte 0
  loc_A7757E: LitStr "right"
  loc_A77581: FMemLdR4 var_94(24)
  loc_A77586: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7758B: CVarStr var_D0
  loc_A7758E: PopAdLdVar
  loc_A7758F: FLdPr Me
  loc_A77592: MemLdRfVar from_stack_1.htmFile
  loc_A77595: LdPrVar
  loc_A77597: LateMemCall
  loc_A7759D: FFree1Var var_D0 = ""
  loc_A775A0: LitI4 0
  loc_A775A5: LitI4 0
  loc_A775AA: LitI2_Byte 0
  loc_A775AC: LitStr "right"
  loc_A775AF: FMemLdR4 var_94(28)
  loc_A775B4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A775B9: CVarStr var_D0
  loc_A775BC: PopAdLdVar
  loc_A775BD: FLdPr Me
  loc_A775C0: MemLdRfVar from_stack_1.htmFile
  loc_A775C3: LdPrVar
  loc_A775C5: LateMemCall
  loc_A775CB: FFree1Var var_D0 = ""
  loc_A775CE: LitVarStr var_A8, "     </tr>"
  loc_A775D3: PopAdLdVar
  loc_A775D4: FLdPr Me
  loc_A775D7: MemLdRfVar from_stack_1.htmFile
  loc_A775DA: LdPrVar
  loc_A775DC: LateMemCall
  loc_A775E2: LitI4 0
  loc_A775E7: FStR4 var_94
  loc_A775EA: AryUnlock
  loc_A775ED: FLdPr Me
  loc_A775F0: MemLdRfVar from_stack_1.global_100
  loc_A775F3: NextI2 var_8C, loc_A773D3
  loc_A775F8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_A775FD: PopAdLdVar
  loc_A775FE: FLdPr Me
  loc_A77601: MemLdRfVar from_stack_1.htmFile
  loc_A77604: LdPrVar
  loc_A77606: LateMemCall
  loc_A7760C: LitI4 1
  loc_A77611: FLdPr Me
  loc_A77614: MemLdStr global_104
  loc_A77617: AryLock
  loc_A7761A: Ary1LdRf
  loc_A7761B: FStR4 var_D8
  loc_A7761E: LitI4 0
  loc_A77623: LitI4 0
  loc_A77628: LitI2_Byte 0
  loc_A7762A: LitStr "right"
  loc_A7762D: LitStr "TOTALES"
  loc_A77630: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A77635: CVarStr var_D0
  loc_A77638: PopAdLdVar
  loc_A77639: FLdPr Me
  loc_A7763C: MemLdRfVar from_stack_1.htmFile
  loc_A7763F: LdPrVar
  loc_A77641: LateMemCall
  loc_A77647: FFree1Var var_D0 = ""
  loc_A7764A: LitI4 0
  loc_A7764F: LitI4 0
  loc_A77654: LitI2_Byte 0
  loc_A77656: LitStr "right"
  loc_A77659: FMemLdR4 var_D8(12)
  loc_A7765E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A77663: CVarStr var_D0
  loc_A77666: PopAdLdVar
  loc_A77667: FLdPr Me
  loc_A7766A: MemLdRfVar from_stack_1.htmFile
  loc_A7766D: LdPrVar
  loc_A7766F: LateMemCall
  loc_A77675: FFree1Var var_D0 = ""
  loc_A77678: LitI4 0
  loc_A7767D: LitI4 0
  loc_A77682: LitI2_Byte 0
  loc_A77684: LitStr "right"
  loc_A77687: FMemLdR4 var_D8(16)
  loc_A7768C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A77691: CVarStr var_D0
  loc_A77694: PopAdLdVar
  loc_A77695: FLdPr Me
  loc_A77698: MemLdRfVar from_stack_1.htmFile
  loc_A7769B: LdPrVar
  loc_A7769D: LateMemCall
  loc_A776A3: FFree1Var var_D0 = ""
  loc_A776A6: LitI4 0
  loc_A776AB: LitI4 0
  loc_A776B0: LitI2_Byte 0
  loc_A776B2: LitStr "right"
  loc_A776B5: FMemLdR4 var_D8(20)
  loc_A776BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A776BF: CVarStr var_D0
  loc_A776C2: PopAdLdVar
  loc_A776C3: FLdPr Me
  loc_A776C6: MemLdRfVar from_stack_1.htmFile
  loc_A776C9: LdPrVar
  loc_A776CB: LateMemCall
  loc_A776D1: FFree1Var var_D0 = ""
  loc_A776D4: LitI4 0
  loc_A776D9: LitI4 0
  loc_A776DE: LitI2_Byte 0
  loc_A776E0: LitStr "right"
  loc_A776E3: FMemLdR4 var_D8(24)
  loc_A776E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A776ED: CVarStr var_D0
  loc_A776F0: PopAdLdVar
  loc_A776F1: FLdPr Me
  loc_A776F4: MemLdRfVar from_stack_1.htmFile
  loc_A776F7: LdPrVar
  loc_A776F9: LateMemCall
  loc_A776FF: FFree1Var var_D0 = ""
  loc_A77702: LitI4 0
  loc_A77707: LitI4 0
  loc_A7770C: LitI2_Byte 0
  loc_A7770E: LitStr "right"
  loc_A77711: FMemLdR4 var_D8(28)
  loc_A77716: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7771B: CVarStr var_D0
  loc_A7771E: PopAdLdVar
  loc_A7771F: FLdPr Me
  loc_A77722: MemLdRfVar from_stack_1.htmFile
  loc_A77725: LdPrVar
  loc_A77727: LateMemCall
  loc_A7772D: FFree1Var var_D0 = ""
  loc_A77730: LitI4 0
  loc_A77735: FStR4 var_D8
  loc_A77738: AryUnlock
  loc_A7773B: LitVarStr var_A8, "     </tr>"
  loc_A77740: PopAdLdVar
  loc_A77741: FLdPr Me
  loc_A77744: MemLdRfVar from_stack_1.htmFile
  loc_A77747: LdPrVar
  loc_A77749: LateMemCall
  loc_A7774F: Call Proc_230_28_981510()
  loc_A77754: FLdPr Me
  loc_A77757: MemLdRfVar from_stack_1.htmFile
  loc_A7775A: LdPrVar
  loc_A7775C: LateMemCall
  loc_A77762: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A77767: ExitProcHresult
End Sub

Private Function Proc_230_27_A870C8() 'A870C8
  'Data Table: 4908C8
  loc_A86C98: LitVarStr var_94, "<html>"
  loc_A86C9D: PopAdLdVar
  loc_A86C9E: FLdPr Me
  loc_A86CA1: MemLdRfVar from_stack_1.htmFile
  loc_A86CA4: LdPrVar
  loc_A86CA6: LateMemCall
  loc_A86CAC: LitVarStr var_94, "<head>"
  loc_A86CB1: PopAdLdVar
  loc_A86CB2: FLdPr Me
  loc_A86CB5: MemLdRfVar from_stack_1.htmFile
  loc_A86CB8: LdPrVar
  loc_A86CBA: LateMemCall
  loc_A86CC0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A86CC5: PopAdLdVar
  loc_A86CC6: FLdPr Me
  loc_A86CC9: MemLdRfVar from_stack_1.htmFile
  loc_A86CCC: LdPrVar
  loc_A86CCE: LateMemCall
  loc_A86CD4: LitStr "<title>"
  loc_A86CD7: FLdRfVar var_A8
  loc_A86CDA: FLdPr Me
  loc_A86CDD:  = Me.Caption
  loc_A86CE2: ILdRf var_A8
  loc_A86CE5: ConcatStr
  loc_A86CE6: FStStrNoPop var_AC
  loc_A86CE9: LitStr " - "
  loc_A86CEC: ConcatStr
  loc_A86CED: FStStrNoPop var_B0
  loc_A86CF0: LitStr "Municipalidad de Guaymallén"
  loc_A86CF3: ConcatStr
  loc_A86CF4: FStStrNoPop var_B4
  loc_A86CF7: LitStr "</title>"
  loc_A86CFA: ConcatStr
  loc_A86CFB: CVarStr var_C4
  loc_A86CFE: PopAdLdVar
  loc_A86CFF: FLdPr Me
  loc_A86D02: MemLdRfVar from_stack_1.htmFile
  loc_A86D05: LdPrVar
  loc_A86D07: LateMemCall
  loc_A86D0D: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A86D18: FFree1Var var_C4 = ""
  loc_A86D1B: LitStr vbNullString
  loc_A86D1E: ILdRf Me
  loc_A86D21: CastAd
  loc_A86D24: FStAdFunc var_C8
  loc_A86D27: FLdRfVar var_C8
  loc_A86D2A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A86D2F: FFree1Ad var_C8
  loc_A86D32: LitI4 0
  loc_A86D37: FStStrCopy var_AC
  loc_A86D3A: FLdRfVar var_AC
  loc_A86D3D: LitI4 0
  loc_A86D42: FStStrCopy var_A8
  loc_A86D45: FLdRfVar var_A8
  loc_A86D48: LitI2_Byte &HFF
  loc_A86D4A: PopTmpLdAd2 var_CA
  loc_A86D4D: FLdPr Me
  loc_A86D50: MemLdRfVar from_stack_1.htmFile
  loc_A86D53: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A86D58: FFreeStr var_A8 = ""
  loc_A86D5F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A86D64: PopAdLdVar
  loc_A86D65: FLdPr Me
  loc_A86D68: MemLdRfVar from_stack_1.htmFile
  loc_A86D6B: LdPrVar
  loc_A86D6D: LateMemCall
  loc_A86D73: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A86D78: PopAdLdVar
  loc_A86D79: FLdPr Me
  loc_A86D7C: MemLdRfVar from_stack_1.htmFile
  loc_A86D7F: LdPrVar
  loc_A86D81: LateMemCall
  loc_A86D87: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A86D8C: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A86D91: FStVarCopyObj var_C4
  loc_A86D94: FLdRfVar var_C4
  loc_A86D97: FLdRfVar var_DC
  loc_A86D9A: ImpAdCallFPR4  = Ucase()
  loc_A86D9F: FLdRfVar var_DC
  loc_A86DA2: ConcatVar var_EC
  loc_A86DA6: LitVarStr var_FC, "</p>"
  loc_A86DAB: ConcatVar var_10C
  loc_A86DAF: PopAdLdVar
  loc_A86DB0: FLdPr Me
  loc_A86DB3: MemLdRfVar from_stack_1.htmFile
  loc_A86DB6: LdPrVar
  loc_A86DB8: LateMemCall
  loc_A86DBE: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A86DC9: LitStr "    <p>"
  loc_A86DCC: FLdRfVar var_A8
  loc_A86DCF: FLdPr Me
  loc_A86DD2:  = Me.Caption
  loc_A86DD7: ILdRf var_A8
  loc_A86DDA: ConcatStr
  loc_A86DDB: FStStrNoPop var_AC
  loc_A86DDE: LitStr "</p></th>"
  loc_A86DE1: ConcatStr
  loc_A86DE2: CVarStr var_C4
  loc_A86DE5: PopAdLdVar
  loc_A86DE6: FLdPr Me
  loc_A86DE9: MemLdRfVar from_stack_1.htmFile
  loc_A86DEC: LdPrVar
  loc_A86DEE: LateMemCall
  loc_A86DF4: FFreeStr var_A8 = ""
  loc_A86DFB: FFree1Var var_C4 = ""
  loc_A86DFE: LitVarStr var_94, "  </tr>"
  loc_A86E03: PopAdLdVar
  loc_A86E04: FLdPr Me
  loc_A86E07: MemLdRfVar from_stack_1.htmFile
  loc_A86E0A: LdPrVar
  loc_A86E0C: LateMemCall
  loc_A86E12: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A86E17: PopAdLdVar
  loc_A86E18: FLdPr Me
  loc_A86E1B: MemLdRfVar from_stack_1.htmFile
  loc_A86E1E: LdPrVar
  loc_A86E20: LateMemCall
  loc_A86E26: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A86E2B: PopAdLdVar
  loc_A86E2C: FLdPr Me
  loc_A86E2F: MemLdRfVar from_stack_1.htmFile
  loc_A86E32: LdPrVar
  loc_A86E34: LateMemCall
  loc_A86E3A: LitVarStr var_94, "    <th align=""left"">"
  loc_A86E3F: PopAdLdVar
  loc_A86E40: FLdPr Me
  loc_A86E43: MemLdRfVar from_stack_1.htmFile
  loc_A86E46: LdPrVar
  loc_A86E48: LateMemCall
  loc_A86E4E: LitStr "     Periodo: <span class=""Normal"">"
  loc_A86E51: FLdRfVar var_A8
  loc_A86E54: FLdPr Me
  loc_A86E57: VCallAd Control_ID_cboPeriodo
  loc_A86E5A: FStAdFunc var_C8
  loc_A86E5D: FLdPr var_C8
  loc_A86E60:  = Me.Text
  loc_A86E65: ILdRf var_A8
  loc_A86E68: ConcatStr
  loc_A86E69: FStStrNoPop var_AC
  loc_A86E6C: LitStr "</span><br>"
  loc_A86E6F: ConcatStr
  loc_A86E70: CVarStr var_C4
  loc_A86E73: PopAdLdVar
  loc_A86E74: FLdPr Me
  loc_A86E77: MemLdRfVar from_stack_1.htmFile
  loc_A86E7A: LdPrVar
  loc_A86E7C: LateMemCall
  loc_A86E82: FFreeStr var_A8 = ""
  loc_A86E89: FFree1Ad var_C8
  loc_A86E8C: FFree1Var var_C4 = ""
  loc_A86E8F: FLdPr Me
  loc_A86E92: VCallAd Control_ID_CodiOrgaMsk
  loc_A86E95: FStAdFunc var_C8
  loc_A86E98: FLdPr var_C8
  loc_A86E9B: LateIdLdVar var_C4 DispID_22 0
  loc_A86EA2: CStrVarTmp
  loc_A86EA3: FStStrNoPop var_A8
  loc_A86EA6: LitStr vbNullString
  loc_A86EA9: NeStr
  loc_A86EAB: FFree1Str var_A8
  loc_A86EAE: FFree1Ad var_C8
  loc_A86EB1: FFree1Var var_C4 = ""
  loc_A86EB4: BranchF loc_A86EFC
  loc_A86EB7: LitStr "     Organigramas que comienzan con: <span class=""Normal"">"
  loc_A86EBA: FLdPr Me
  loc_A86EBD: VCallAd Control_ID_CodiOrgaMsk
  loc_A86EC0: FStAdFunc var_C8
  loc_A86EC3: FLdPr var_C8
  loc_A86EC6: LateIdLdVar var_C4 DispID_22 0
  loc_A86ECD: CStrVarTmp
  loc_A86ECE: FStStrNoPop var_A8
  loc_A86ED1: ConcatStr
  loc_A86ED2: FStStrNoPop var_AC
  loc_A86ED5: LitStr "...</span>"
  loc_A86ED8: ConcatStr
  loc_A86ED9: CVarStr var_DC
  loc_A86EDC: PopAdLdVar
  loc_A86EDD: FLdPr Me
  loc_A86EE0: MemLdRfVar from_stack_1.htmFile
  loc_A86EE3: LdPrVar
  loc_A86EE5: LateMemCall
  loc_A86EEB: FFreeStr var_A8 = ""
  loc_A86EF2: FFree1Ad var_C8
  loc_A86EF5: FFreeVar var_C4 = ""
  loc_A86EFC: LitVarStr var_94, "    </th>"
  loc_A86F01: PopAdLdVar
  loc_A86F02: FLdPr Me
  loc_A86F05: MemLdRfVar from_stack_1.htmFile
  loc_A86F08: LdPrVar
  loc_A86F0A: LateMemCall
  loc_A86F10: LitVarStr var_94, "    <th align=""right"">"
  loc_A86F15: PopAdLdVar
  loc_A86F16: FLdPr Me
  loc_A86F19: MemLdRfVar from_stack_1.htmFile
  loc_A86F1C: LdPrVar
  loc_A86F1E: LateMemCall
  loc_A86F24: LitStr "     Desde: <span class=""Normal"">"
  loc_A86F27: FLdPr Me
  loc_A86F2A: VCallAd Control_ID_mskDesde
  loc_A86F2D: FStAdFunc var_C8
  loc_A86F30: FLdPr var_C8
  loc_A86F33: LateIdLdVar var_C4 DispID_15 0
  loc_A86F3A: CStrVarTmp
  loc_A86F3B: FStStrNoPop var_A8
  loc_A86F3E: ConcatStr
  loc_A86F3F: FStStrNoPop var_AC
  loc_A86F42: LitStr "</span><br>"
  loc_A86F45: ConcatStr
  loc_A86F46: CVarStr var_DC
  loc_A86F49: PopAdLdVar
  loc_A86F4A: FLdPr Me
  loc_A86F4D: MemLdRfVar from_stack_1.htmFile
  loc_A86F50: LdPrVar
  loc_A86F52: LateMemCall
  loc_A86F58: FFreeStr var_A8 = ""
  loc_A86F5F: FFree1Ad var_C8
  loc_A86F62: FFreeVar var_C4 = ""
  loc_A86F69: LitStr "     Hasta: <span class=""Normal"">"
  loc_A86F6C: FLdPr Me
  loc_A86F6F: VCallAd Control_ID_mskHasta
  loc_A86F72: FStAdFunc var_C8
  loc_A86F75: FLdPr var_C8
  loc_A86F78: LateIdLdVar var_C4 DispID_15 0
  loc_A86F7F: CStrVarTmp
  loc_A86F80: FStStrNoPop var_A8
  loc_A86F83: ConcatStr
  loc_A86F84: FStStrNoPop var_AC
  loc_A86F87: LitStr "</span>"
  loc_A86F8A: ConcatStr
  loc_A86F8B: CVarStr var_DC
  loc_A86F8E: PopAdLdVar
  loc_A86F8F: FLdPr Me
  loc_A86F92: MemLdRfVar from_stack_1.htmFile
  loc_A86F95: LdPrVar
  loc_A86F97: LateMemCall
  loc_A86F9D: FFreeStr var_A8 = ""
  loc_A86FA4: FFree1Ad var_C8
  loc_A86FA7: FFreeVar var_C4 = ""
  loc_A86FAE: LitVarStr var_94, "    </th>"
  loc_A86FB3: PopAdLdVar
  loc_A86FB4: FLdPr Me
  loc_A86FB7: MemLdRfVar from_stack_1.htmFile
  loc_A86FBA: LdPrVar
  loc_A86FBC: LateMemCall
  loc_A86FC2: LitVarStr var_94, "  </tr>"
  loc_A86FC7: PopAdLdVar
  loc_A86FC8: FLdPr Me
  loc_A86FCB: MemLdRfVar from_stack_1.htmFile
  loc_A86FCE: LdPrVar
  loc_A86FD0: LateMemCall
  loc_A86FD6: LitVarStr var_94, "</table>"
  loc_A86FDB: PopAdLdVar
  loc_A86FDC: FLdPr Me
  loc_A86FDF: MemLdRfVar from_stack_1.htmFile
  loc_A86FE2: LdPrVar
  loc_A86FE4: LateMemCall
  loc_A86FEA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A86FEF: PopAdLdVar
  loc_A86FF0: FLdPr Me
  loc_A86FF3: MemLdRfVar from_stack_1.htmFile
  loc_A86FF6: LdPrVar
  loc_A86FF8: LateMemCall
  loc_A86FFE: LitVarStr var_94, "  <THEAD>"
  loc_A87003: PopAdLdVar
  loc_A87004: FLdPr Me
  loc_A87007: MemLdRfVar from_stack_1.htmFile
  loc_A8700A: LdPrVar
  loc_A8700C: LateMemCall
  loc_A87012: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A87017: PopAdLdVar
  loc_A87018: FLdPr Me
  loc_A8701B: MemLdRfVar from_stack_1.htmFile
  loc_A8701E: LdPrVar
  loc_A87020: LateMemCall
  loc_A87026: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_A8702B: PopAdLdVar
  loc_A8702C: FLdPr Me
  loc_A8702F: MemLdRfVar from_stack_1.htmFile
  loc_A87032: LdPrVar
  loc_A87034: LateMemCall
  loc_A8703A: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_A8703F: PopAdLdVar
  loc_A87040: FLdPr Me
  loc_A87043: MemLdRfVar from_stack_1.htmFile
  loc_A87046: LdPrVar
  loc_A87048: LateMemCall
  loc_A8704E: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_A87053: PopAdLdVar
  loc_A87054: FLdPr Me
  loc_A87057: MemLdRfVar from_stack_1.htmFile
  loc_A8705A: LdPrVar
  loc_A8705C: LateMemCall
  loc_A87062: LitVarStr var_94, "    <th>Devengado</th>"
  loc_A87067: PopAdLdVar
  loc_A87068: FLdPr Me
  loc_A8706B: MemLdRfVar from_stack_1.htmFile
  loc_A8706E: LdPrVar
  loc_A87070: LateMemCall
  loc_A87076: LitVarStr var_94, "    <th>Mandado a Pagar</th>"
  loc_A8707B: PopAdLdVar
  loc_A8707C: FLdPr Me
  loc_A8707F: MemLdRfVar from_stack_1.htmFile
  loc_A87082: LdPrVar
  loc_A87084: LateMemCall
  loc_A8708A: LitVarStr var_94, "    <th>Pagado</th>"
  loc_A8708F: PopAdLdVar
  loc_A87090: FLdPr Me
  loc_A87093: MemLdRfVar from_stack_1.htmFile
  loc_A87096: LdPrVar
  loc_A87098: LateMemCall
  loc_A8709E: LitVarStr var_94, "  </tr>"
  loc_A870A3: PopAdLdVar
  loc_A870A4: FLdPr Me
  loc_A870A7: MemLdRfVar from_stack_1.htmFile
  loc_A870AA: LdPrVar
  loc_A870AC: LateMemCall
  loc_A870B2: LitVarStr var_94, "  </THEAD>"
  loc_A870B7: PopAdLdVar
  loc_A870B8: FLdPr Me
  loc_A870BB: MemLdRfVar from_stack_1.htmFile
  loc_A870BE: LdPrVar
  loc_A870C0: LateMemCall
  loc_A870C6: ExitProcHresult
End Function

Private Function Proc_230_28_981510() '981510
  'Data Table: 4908C8
  loc_9814D0: LitVarStr var_94, "</table>"
  loc_9814D5: PopAdLdVar
  loc_9814D6: FLdPr Me
  loc_9814D9: MemLdRfVar from_stack_1.htmFile
  loc_9814DC: LdPrVar
  loc_9814DE: LateMemCall
  loc_9814E4: LitVarStr var_94, "</body>"
  loc_9814E9: PopAdLdVar
  loc_9814EA: FLdPr Me
  loc_9814ED: MemLdRfVar from_stack_1.htmFile
  loc_9814F0: LdPrVar
  loc_9814F2: LateMemCall
  loc_9814F8: LitVarStr var_94, "</html>"
  loc_9814FD: PopAdLdVar
  loc_9814FE: FLdPr Me
  loc_981501: MemLdRfVar from_stack_1.htmFile
  loc_981504: LdPrVar
  loc_981506: LateMemCall
  loc_98150C: ExitProcHresult
End Function
