VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoV
  Caption = "Acuerdo 2988 - Anexo V"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoV.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11100
  ClientHeight = 3480
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3225
    Width = 11100
    Height = 255
    TabIndex = 18
    OleObjectBlob = "rptA2988AnexoV.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9960
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptA2988AnexoV.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoV.frx":0B9C
    Left = 8640
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 6255
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 1935
    TabIndex = 12
    Begin VB.CommandButton CodiCucoCmd
      Left = 3075
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 4
      Picture = "rptA2988AnexoV.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 2
      Picture = "rptA2988AnexoV.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 360
      Width = 2415
      Height = 495
      TabIndex = 10
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 0
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 1
      OleObjectBlob = "rptA2988AnexoV.frx":123C
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 1455
      Top = 1320
      Width = 1575
      Height = 315
      TabIndex = 3
      OleObjectBlob = "rptA2988AnexoV.frx":12C4
    End
    Begin VB.Label DetaCucoLbl
      Left = 3555
      Top = 1320
      Width = 5535
      Height = 375
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 90
      Top = 1320
      Width = 1230
      Height = 195
      TabIndex = 19
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 13
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10080
    Top = 1560
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptA2988AnexoV.frx":1324
  End
End

Attribute VB_Name = "rptA2988AnexoV"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0058997C
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_2_005B0B48
  bStruc(72) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98935C
  'Data Table: 4991D4
  loc_989324: FLdPr Me
  loc_989327: VCallAd Control_ID_statusBar
  loc_98932A: FStAdFunc var_88
  loc_98932D: FLdPr var_88
  loc_989330: LateIdLdVar var_98 DispID_1 0
  loc_989337: CStrVarTmp
  loc_989338: CVarStr var_A8
  loc_98933B: PopAdLdVar
  loc_98933C: FLdPr Me
  loc_98933F: VCallAd Control_ID_statusBar
  loc_989342: FStAdFunc var_BC
  loc_989345: FLdPr var_BC
  loc_989348: LateIdSt
  loc_98934D: FFreeAd var_88 = ""
  loc_989354: FFreeVar var_98 = ""
  loc_98935B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '98FCE8
  'Data Table: 4991D4
  loc_98FCA0: LitStr "Acuerdo 2988 Anexo V "
  loc_98FCA3: FLdRfVar var_8C
  loc_98FCA6: FLdPr Me
  loc_98FCA9: VCallAd Control_ID_cboPeriodo
  loc_98FCAC: FStAdFunc var_88
  loc_98FCAF: FLdPr var_88
  loc_98FCB2:  = Me.Text
  loc_98FCB7: ILdRf var_8C
  loc_98FCBA: ConcatStr
  loc_98FCBB: FStStrNoPop var_90
  loc_98FCBE: FLdPr Me
  loc_98FCC1: Me.Tag = from_stack_1
  loc_98FCC6: FFreeStr var_8C = ""
  loc_98FCCD: FFree1Ad var_88
  loc_98FCD0: LitI2_Byte 0
  loc_98FCD2: ILdRf Me
  loc_98FCD5: CastAd
  loc_98FCD8: FStAdFunc var_88
  loc_98FCDB: FLdRfVar var_88
  loc_98FCDE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98FCE3: FFree1Ad var_88
  loc_98FCE6: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95552C
  'Data Table: 4991D4
  loc_955514: ILdRf Me
  loc_955517: CastAd
  loc_95551A: FStAdFunc var_88
  loc_95551D: FLdRfVar var_88
  loc_955520: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_955525: FFree1Ad var_88
  loc_955528: ExitProcHresult
  loc_955529: ExitProc
  loc_95552A: LitVar_TRUE arg_5C03
End Sub

Private Sub CodiCucoCmd_Click() 'A05518
  'Data Table: 4991D4
  loc_A053C8: ImpAdLdRf MemVar_C3D6C0
  loc_A053CB: NewIfNullAd
  loc_A053CE: FStAd var_88 
  loc_A053D2: FLdRfVar var_90
  loc_A053D5: FLdPr Me
  loc_A053D8: VCallAd Control_ID_cboPeriodo
  loc_A053DB: FStAdFunc var_8C
  loc_A053DE: FLdPr var_8C
  loc_A053E1:  = Me.Text
  loc_A053E6: ILdRf var_90
  loc_A053E9: CI2Str
  loc_A053EB: FLdPr var_88
  loc_A053EE: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_A053F3: FFree1Str var_90
  loc_A053F6: FFree1Ad var_8C
  loc_A053F9: LitStr " AND (infogov.cc.CodiTicu like '5" & Chr(37) & "' OR infogov.cc.CodiTicu like '7" & Chr(37) & "' OR infogov.cc.CodiTicu like '2" & Chr(37) & "')"
  loc_A053FC: FLdPr var_88
  loc_A053FF: Call bscCuentaContable.sWherePut(from_stack_1v)
  loc_A05404: LitVar_Missing var_B0
  loc_A05407: PopAdLdVar
  loc_A05408: LitVarI4
  loc_A05410: PopAdLdVar
  loc_A05411: FLdPr var_88
  loc_A05414: Me.Show from_stack_1, from_stack_2
  loc_A05419: FLdRfVar var_B4
  loc_A0541C: FLdRfVar var_8C
  loc_A0541F: FLdPr var_88
  loc_A05422: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A05427: FLdPr var_8C
  loc_A0542A: from_stack_1 = clsbase.RecordCount
  loc_A0542F: ILdRf var_B4
  loc_A05432: LitI4 0
  loc_A05437: GtI4
  loc_A05438: FFree1Ad var_8C
  loc_A0543B: BranchF loc_A05510
  loc_A0543E: FLdRfVar var_D0
  loc_A05441: FLdRfVar var_C0
  loc_A05444: LitVarStr var_A0, "CodiCuco"
  loc_A05449: PopAdLdVar
  loc_A0544A: FLdRfVar var_BC
  loc_A0544D: FLdRfVar var_B8
  loc_A05450: FLdRfVar var_8C
  loc_A05453: FLdPr var_88
  loc_A05456: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A0545B: FLdPr var_8C
  loc_A0545E: from_stack_1v = clsbase.RsFrmGet()
  loc_A05463: FLdPr var_B8
  loc_A05466:  = Me.Fields
  loc_A0546B: FLdPr var_BC
  loc_A0546E: from_stack_2 = Me.Item(from_stack_1)
  loc_A05473: FLdPr var_C0
  loc_A05476:  = Me.Value
  loc_A0547B: FLdRfVar var_D0
  loc_A0547E: CStrVarTmp
  loc_A0547F: CVarStr var_E0
  loc_A05482: PopAdLdVar
  loc_A05483: FLdPr Me
  loc_A05486: VCallAd Control_ID_CodiCucoMsk
  loc_A05489: FStAdFunc var_E4
  loc_A0548C: FLdPr var_E4
  loc_A0548F: LateIdSt
  loc_A05494: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A054A1: FFreeVar var_D0 = ""
  loc_A054A8: FLdRfVar var_D0
  loc_A054AB: FLdRfVar var_C0
  loc_A054AE: LitVarStr var_A0, "DetaCuco"
  loc_A054B3: PopAdLdVar
  loc_A054B4: FLdRfVar var_BC
  loc_A054B7: FLdRfVar var_B8
  loc_A054BA: FLdRfVar var_8C
  loc_A054BD: FLdPr var_88
  loc_A054C0: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A054C5: FLdPr var_8C
  loc_A054C8: from_stack_1v = clsbase.RsFrmGet()
  loc_A054CD: FLdPr var_B8
  loc_A054D0:  = Me.Fields
  loc_A054D5: FLdPr var_BC
  loc_A054D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A054DD: FLdPr var_C0
  loc_A054E0:  = Me.Value
  loc_A054E5: FLdRfVar var_D0
  loc_A054E8: CStrVarTmp
  loc_A054E9: FStStrNoPop var_90
  loc_A054EC: FLdPr Me
  loc_A054EF: VCallAd Control_ID_DetaCucoLbl
  loc_A054F2: FStAdFunc var_E4
  loc_A054F5: FLdPr var_E4
  loc_A054F8: Me.Caption = from_stack_1
  loc_A054FD: FFree1Str var_90
  loc_A05500: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A0550D: FFree1Var var_D0 = ""
  loc_A05510: LitNothing
  loc_A05512: FStAd var_88 
  loc_A05516: ExitProcHresult
End Sub

Private Sub Form_Load() '9DABB0
  'Data Table: 4991D4
  loc_9DAAC0: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9DAAC5: PopAdLdVar
  loc_9DAAC6: FLdPr Me
  loc_9DAAC9: VCallAd Control_ID_CodiCucoMsk
  loc_9DAACC: FStAdFunc var_A8
  loc_9DAACF: FLdPr var_A8
  loc_9DAAD2: LateIdSt
  loc_9DAAD7: FFree1Ad var_A8
  loc_9DAADA: LitI2_Byte &HFF
  loc_9DAADC: ImpAdStI2 MemVar_C3D840
  loc_9DAADF: ILdRf Me
  loc_9DAAE2: CastAd
  loc_9DAAE5: FStAdFunc var_A8
  loc_9DAAE8: FLdRfVar var_A8
  loc_9DAAEB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DAAF0: FFree1Ad var_A8
  loc_9DAAF3: FLdRfVar var_AC
  loc_9DAAF6: NewIfNullAd
  loc_9DAAF9: FStAd var_B0 
  loc_9DAAFD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DAB00: FLdPr var_B0
  loc_9DAB03: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DAB08: FLdRfVar var_B4
  loc_9DAB0B: FLdPr var_B0
  loc_9DAB0E: from_stack_1 = clsperiodo.RecordCount
  loc_9DAB13: ILdRf var_B4
  loc_9DAB16: LitI4 0
  loc_9DAB1B: GtI4
  loc_9DAB1C: BranchF loc_9DABA3
  loc_9DAB1F: FLdPr var_B0
  loc_9DAB22: Call clsperiodo.MoveFirst()
  loc_9DAB27: FLdRfVar var_B6
  loc_9DAB2A: FLdPr var_B0
  loc_9DAB2D: from_stack_1 = clsperiodo.EOF
  loc_9DAB32: FLdI2 var_B6
  loc_9DAB35: NotI4
  loc_9DAB36: BranchF loc_9DABA3
  loc_9DAB39: LitVar_Missing var_A4
  loc_9DAB3C: PopAdLdVar
  loc_9DAB3D: FLdRfVar var_D0
  loc_9DAB40: FLdRfVar var_C0
  loc_9DAB43: LitVarStr var_94, "PeriInfo"
  loc_9DAB48: PopAdLdVar
  loc_9DAB49: FLdRfVar var_BC
  loc_9DAB4C: FLdRfVar var_A8
  loc_9DAB4F: FLdPr var_B0
  loc_9DAB52: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DAB57: FLdPr var_A8
  loc_9DAB5A:  = Me.Fields
  loc_9DAB5F: FLdPr var_BC
  loc_9DAB62: from_stack_2 = Me.Item(from_stack_1)
  loc_9DAB67: FLdPr var_C0
  loc_9DAB6A:  = Me.Value
  loc_9DAB6F: FLdRfVar var_D0
  loc_9DAB72: CStrVarTmp
  loc_9DAB73: FStStrNoPop var_D4
  loc_9DAB76: FLdPr Me
  loc_9DAB79: VCallAd Control_ID_cboPeriodo
  loc_9DAB7C: FStAdFunc var_D8
  loc_9DAB7F: FLdPr var_D8
  loc_9DAB82: Me.AddItem from_stack_1, from_stack_2
  loc_9DAB87: FFree1Str var_D4
  loc_9DAB8A: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_9DAB95: FFree1Var var_D0 = ""
  loc_9DAB98: FLdPr var_B0
  loc_9DAB9B: Call clsperiodo.MoveSiguiente()
  loc_9DABA0: Branch loc_9DAB27
  loc_9DABA3: LitNothing
  loc_9DABA5: FStAd var_B0 
  loc_9DABA9: Call cmdNueva_Click()
  loc_9DABAE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9543A8
  'Data Table: 4991D4
  loc_954390: FLdPr Me
  loc_954393: VCallAd Control_ID_wbbReporte
  loc_954396: FStAdFunc var_88
  loc_954399: FLdRfVar var_88
  loc_95439C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9543A1: FFree1Ad var_88
  loc_9543A4: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '96FEB8
  'Data Table: 4991D4
  loc_96FE94: LitStr "AplRecDestInstituido.txt"
  loc_96FE97: FLdPr Me
  loc_96FE9A: Me.Tag = from_stack_1
  loc_96FE9F: LitI2_Byte 0
  loc_96FEA1: ILdRf Me
  loc_96FEA4: CastAd
  loc_96FEA7: FStAdFunc var_88
  loc_96FEAA: FLdRfVar var_88
  loc_96FEAD: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_96FEB2: FFree1Ad var_88
  loc_96FEB5: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94B948
  'Data Table: 4991D4
  loc_94B934: FLdPr Me
  loc_94B937: VCallAd Control_ID_mskHasta
  loc_94B93A: CVarAd
  loc_94B93E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B943: FFree1Var var_94 = ""
  loc_94B946: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B05FC
  'Data Table: 4991D4
  loc_9B0560: FLdPr Me
  loc_9B0563: VCallAd Control_ID_mskHasta
  loc_9B0566: FStAdFunc var_88
  loc_9B0569: FLdPr var_88
  loc_9B056C: LateIdLdVar var_98 DispID_15 0
  loc_9B0573: PopAd
  loc_9B0575: FLdPr Me
  loc_9B0578: VCallAd Control_ID_mskHasta
  loc_9B057B: FStAdFunc var_AC
  loc_9B057E: LitI2_Byte &HFF
  loc_9B0580: PopTmpLdAd2 var_A2
  loc_9B0583: FLdZeroAd var_AC
  loc_9B0586: FStAdFunc var_A0
  loc_9B0589: FLdRfVar var_A0
  loc_9B058C: LitStr vbNullString
  loc_9B058F: LitI2_Byte 0
  loc_9B0591: LitI2_Byte 0
  loc_9B0593: FLdRfVar var_98
  loc_9B0596: CStrVarTmp
  loc_9B0597: FStStrNoPop var_9C
  loc_9B059A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B059F: FStStrNoPop var_A8
  loc_9B05A2: FLdPr Me
  loc_9B05A5: MemStStrCopy
  loc_9B05A9: FFreeStr var_9C = ""
  loc_9B05B0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B05B9: FFree1Var var_98 = ""
  loc_9B05BC: FLdPr Me
  loc_9B05BF: VCallAd Control_ID_mskHasta
  loc_9B05C2: FStAdFunc var_B0
  loc_9B05C5: LitNothing
  loc_9B05C7: CastAd
  loc_9B05CA: FStAdFunc var_AC
  loc_9B05CD: FLdRfVar var_AC
  loc_9B05D0: FLdZeroAd var_B0
  loc_9B05D3: FStAdFuncNoPop
  loc_9B05D6: CastAd
  loc_9B05D9: FStAdFunc var_A0
  loc_9B05DC: FLdRfVar var_A0
  loc_9B05DF: FLdPr Me
  loc_9B05E2: MemLdRfVar from_stack_1.global_108
  loc_9B05E5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B05EA: IStI2 arg_C
  loc_9B05ED: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B05F8: ExitProcHresult
  loc_9B05F9: FLdPr Me
End Function

Private Sub CodiCucoMsk_UnknownEvent_0 '94B9D8
  'Data Table: 4991D4
  loc_94B9C4: FLdPr Me
  loc_94B9C7: VCallAd Control_ID_CodiCucoMsk
  loc_94B9CA: CVarAd
  loc_94B9CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B9D3: FFree1Var var_94 = ""
  loc_94B9D6: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '954440
  'Data Table: 4991D4
  loc_954428: ILdRf Me
  loc_95442B: CastAd
  loc_95442E: FStAdFunc var_88
  loc_954431: FLdRfVar var_88
  loc_954434: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954439: FFree1Ad var_88
  loc_95443C: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '98F530
  'Data Table: 4991D4
  loc_98F4E8: LitVar_Missing var_A4
  loc_98F4EB: PopAdLdVar
  loc_98F4EC: LitVarI4
  loc_98F4F4: PopAdLdVar
  loc_98F4F5: ImpAdLdRf MemVar_C3D9A8
  loc_98F4F8: NewIfNullPr frmCalendario
  loc_98F4FB: frmCalendario.Show from_stack_1, from_stack_2
  loc_98F500: ImpAdLdRf MemVar_C3D038
  loc_98F503: CDargRef
  loc_98F507: FLdPr Me
  loc_98F50A: VCallAd Control_ID_mskHasta
  loc_98F50D: FStAdFunc var_A8
  loc_98F510: FLdPr var_A8
  loc_98F513: LateIdSt
  loc_98F518: FFree1Ad var_A8
  loc_98F51B: FLdPr Me
  loc_98F51E: VCallAd Control_ID_mskHasta
  loc_98F521: CVarAd
  loc_98F525: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_98F52A: FFree1Var var_B8 = ""
  loc_98F52D: ExitProcHresult
  loc_98F52E: ExitProcR4
End Sub

Private Sub cmdSalir_Click() '97A230
  'Data Table: 4991D4
  loc_97A200: LitVarStr var_94, "Cerrando..."
  loc_97A205: PopAdLdVar
  loc_97A206: FLdPr Me
  loc_97A209: VCallAd Control_ID_statusBar
  loc_97A20C: FStAdFunc var_A8
  loc_97A20F: FLdPr var_A8
  loc_97A212: LateIdSt
  loc_97A217: FFree1Ad var_A8
  loc_97A21A: ILdRf Me
  loc_97A21D: FStAdNoPop
  loc_97A221: ImpAdLdRf MemVar_C44F9C
  loc_97A224: NewIfNullPr Me
  loc_97A227: Me.Global.Unload from_stack_1
  loc_97A22C: FFree1Ad var_A8
  loc_97A22F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AC454
  'Data Table: 4991D4
  loc_9AC3B4: LitI2_Byte 0
  loc_9AC3B6: FLdPr Me
  loc_9AC3B9: MemStI2 bGenerado
  loc_9AC3BC: LitI2_Byte &HFF
  loc_9AC3BE: FLdPr Me
  loc_9AC3C1: MemStI2 bLogos
  loc_9AC3C4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AC3C9: ImpAdLdI2 MemVar_C3D064
  loc_9AC3CC: CStrUI1
  loc_9AC3CE: FStStrNoPop var_88
  loc_9AC3D1: FLdPr Me
  loc_9AC3D4: VCallAd Control_ID_cboPeriodo
  loc_9AC3D7: FStAdFunc var_8C
  loc_9AC3DA: FLdPr var_8C
  loc_9AC3DD: Me.Text = from_stack_1
  loc_9AC3E2: FFree1Str var_88
  loc_9AC3E5: FFree1Ad var_8C
  loc_9AC3E8: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AC3EB: CStrDate
  loc_9AC3ED: CVarStr var_9C
  loc_9AC3F0: PopAdLdVar
  loc_9AC3F1: FLdPr Me
  loc_9AC3F4: VCallAd Control_ID_mskHasta
  loc_9AC3F7: FStAdFunc var_8C
  loc_9AC3FA: FLdPr var_8C
  loc_9AC3FD: LateIdSt
  loc_9AC402: FFree1Ad var_8C
  loc_9AC405: FFree1Var var_9C = ""
  loc_9AC408: LitVarStr var_AC, vbNullString
  loc_9AC40D: PopAdLdVar
  loc_9AC40E: FLdPr Me
  loc_9AC411: VCallAd Control_ID_CodiCucoMsk
  loc_9AC414: FStAdFunc var_8C
  loc_9AC417: FLdPr var_8C
  loc_9AC41A: LateIdSt
  loc_9AC41F: FFree1Ad var_8C
  loc_9AC422: LitStr vbNullString
  loc_9AC425: FLdPr Me
  loc_9AC428: VCallAd Control_ID_DetaCucoLbl
  loc_9AC42B: FStAdFunc var_8C
  loc_9AC42E: FLdPr var_8C
  loc_9AC431: Me.Caption = from_stack_1
  loc_9AC436: FFree1Ad var_8C
  loc_9AC439: Call HabilitarCriterio()
  loc_9AC43E: ILdRf Me
  loc_9AC441: CastAd
  loc_9AC444: FStAdFunc var_8C
  loc_9AC447: FLdRfVar var_8C
  loc_9AC44A: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AC44F: FFree1Ad var_8C
  loc_9AC452: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96AEAC
  'Data Table: 4991D4
  loc_96AE90: LitI2_Byte &HFF
  loc_96AE92: LitI2_Byte 0
  loc_96AE94: ILdRf Me
  loc_96AE97: CastAd
  loc_96AE9A: FStAdFunc var_88
  loc_96AE9D: FLdRfVar var_88
  loc_96AEA0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AEA5: FFree1Ad var_88
  loc_96AEA8: ExitProcHresult
  loc_96AEA9: ExitProcI2
  loc_96AEAA: PopTmpLdAdStr arg_5C03
End Sub

Private Sub cmdHtml_Click() '955D30
  'Data Table: 4991D4
  loc_955D18: ILdRf Me
  loc_955D1B: CastAd
  loc_955D1E: FStAdFunc var_88
  loc_955D21: FLdRfVar var_88
  loc_955D24: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_955D29: FFree1Ad var_88
  loc_955D2C: ExitProcHresult
End Sub

Public Function bLogosGet() '49A338
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49A347
  bLogos = Value
End Sub

Public Function bGeneradoGet() '49A356
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49A365
  bGenerado = Value
End Sub

Public Sub GeneraTXT() 'A70488
  'Data Table: 4991D4
  loc_A70198: FLdRfVar var_90
  loc_A7019B: FLdPr Me
  loc_A7019E: VCallAd Control_ID_cboPeriodo
  loc_A701A1: FStAdFunc var_8C
  loc_A701A4: FLdPr var_8C
  loc_A701A7:  = Me.Text
  loc_A701AC: FLdZeroAd var_90
  loc_A701AF: FStStr var_88
  loc_A701B2: FFree1Ad var_8C
  loc_A701B5: FLdRfVar var_8C
  loc_A701B8: LitI2_Byte 0
  loc_A701BA: LitI2_Byte &HFF
  loc_A701BC: ImpAdLdI4 MemVar_C3D05C
  loc_A701BF: FLdPr Me
  loc_A701C2: MemLdRfVar from_stack_1.global_60
  loc_A701C5: NewIfNullPr IFileSystem3
  loc_A701C8: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A701CD: ILdRf var_8C
  loc_A701D0: FLdPr Me
  loc_A701D3: MemStVarAd
  loc_A701D7: FFree1Ad var_8C
  loc_A701DA: LitVarStr var_A0, "PeriodoPresenta|ExpID|Concepto|PartidaCod|PartidaDet|Montooriginalcalculado|NormaLegal|Modificacionesintroducidas|MontoDefinitivo|MontoIngresado|Diferencia|Devengado|Mandadoapagar|Pagado|PasivosSinOrdenPago|SaldosNoUtilizados|PasivosConOrdenPago|Usotransitorio|TransferidoEjSiguiente|IngresosRentasGrales"
  loc_A701DF: PopAdLdVar
  loc_A701E0: FLdPr Me
  loc_A701E3: MemLdRfVar from_stack_1.global_64
  loc_A701E6: LdPrVar
  loc_A701E8: LateMemCall
  loc_A701EE: LitI2_Byte 1
  loc_A701F0: FLdPr Me
  loc_A701F3: MemLdRfVar from_stack_1.global_100
  loc_A701F6: FLdPr Me
  loc_A701F9: MemLdStr global_96
  loc_A701FC: LitI2_Byte 1
  loc_A701FE: FnUBound
  loc_A70200: CI2I4
  loc_A70201: ForI2 var_B4
  loc_A70207: FLdPr Me
  loc_A7020A: MemLdI2 global_100
  loc_A7020D: CI4UI1
  loc_A7020E: FLdPr Me
  loc_A70211: MemLdStr global_96
  loc_A70214: AryLock
  loc_A70217: Ary1LdPr
  loc_A70218: MemLdRfVar from_stack_1.global_16
  loc_A7021B: FStR4 var_BC
  loc_A7021E: ILdRf var_88
  loc_A70221: LitStr "|"
  loc_A70224: ConcatStr
  loc_A70225: FStStrNoPop var_90
  loc_A70228: LitStr "eee-2022-060204"
  loc_A7022B: ConcatStr
  loc_A7022C: FStStrNoPop var_C0
  loc_A7022F: LitStr "|"
  loc_A70232: ConcatStr
  loc_A70233: FStStrNoPop var_C4
  loc_A70236: FLdPr Me
  loc_A70239: MemLdI2 global_100
  loc_A7023C: CI4UI1
  loc_A7023D: FLdPr Me
  loc_A70240: MemLdStr global_96
  loc_A70243: Ary1LdPr
  loc_A70244: MemLdStr global_0
  loc_A70247: ConcatStr
  loc_A70248: FStStrNoPop var_C8
  loc_A7024B: LitStr "<br> "
  loc_A7024E: ConcatStr
  loc_A7024F: FStStrNoPop var_CC
  loc_A70252: FLdPr Me
  loc_A70255: MemLdI2 global_100
  loc_A70258: CI4UI1
  loc_A70259: FLdPr Me
  loc_A7025C: MemLdStr global_96
  loc_A7025F: Ary1LdPr
  loc_A70260: MemLdStr global_4
  loc_A70263: ConcatStr
  loc_A70264: FStStrNoPop var_D0
  loc_A70267: LitStr "|"
  loc_A7026A: ConcatStr
  loc_A7026B: FStStrNoPop var_D4
  loc_A7026E: FLdPr Me
  loc_A70271: MemLdI2 global_100
  loc_A70274: CI4UI1
  loc_A70275: FLdPr Me
  loc_A70278: MemLdStr global_96
  loc_A7027B: Ary1LdPr
  loc_A7027C: MemLdStr global_8
  loc_A7027F: ConcatStr
  loc_A70280: FStStrNoPop var_D8
  loc_A70283: LitStr "|"
  loc_A70286: ConcatStr
  loc_A70287: FStStrNoPop var_DC
  loc_A7028A: FLdPr Me
  loc_A7028D: MemLdI2 global_100
  loc_A70290: CI4UI1
  loc_A70291: FLdPr Me
  loc_A70294: MemLdStr global_96
  loc_A70297: Ary1LdPr
  loc_A70298: MemLdStr global_12
  loc_A7029B: ConcatStr
  loc_A7029C: FStStrNoPop var_E0
  loc_A7029F: LitStr "|"
  loc_A702A2: ConcatStr
  loc_A702A3: FStStrNoPop var_E4
  loc_A702A6: FMemLdR4 var_BC(0)
  loc_A702AB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A702B0: FStStrNoPop var_E8
  loc_A702B3: ConcatStr
  loc_A702B4: FStStrNoPop var_EC
  loc_A702B7: LitStr "|"
  loc_A702BA: ConcatStr
  loc_A702BB: FStStrNoPop var_F0
  loc_A702BE: FMemLdR4 var_BC(4)
  loc_A702C3: ConcatStr
  loc_A702C4: FStStrNoPop var_F4
  loc_A702C7: LitStr "|"
  loc_A702CA: ConcatStr
  loc_A702CB: FStStrNoPop var_F8
  loc_A702CE: FMemLdR4 var_BC(8)
  loc_A702D3: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A702D8: FStStrNoPop var_FC
  loc_A702DB: ConcatStr
  loc_A702DC: FStStrNoPop var_100
  loc_A702DF: LitStr "|"
  loc_A702E2: ConcatStr
  loc_A702E3: FStStrNoPop var_104
  loc_A702E6: FMemLdR4 var_BC(12)
  loc_A702EB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A702F0: FStStrNoPop var_108
  loc_A702F3: ConcatStr
  loc_A702F4: FStStrNoPop var_10C
  loc_A702F7: LitStr "|"
  loc_A702FA: ConcatStr
  loc_A702FB: FStStrNoPop var_110
  loc_A702FE: FMemLdR4 var_BC(16)
  loc_A70303: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70308: FStStrNoPop var_114
  loc_A7030B: ConcatStr
  loc_A7030C: FStStrNoPop var_118
  loc_A7030F: LitStr "|"
  loc_A70312: ConcatStr
  loc_A70313: FStStrNoPop var_11C
  loc_A70316: FMemLdR4 var_BC(20)
  loc_A7031B: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70320: FStStrNoPop var_120
  loc_A70323: ConcatStr
  loc_A70324: FStStrNoPop var_124
  loc_A70327: LitStr "|"
  loc_A7032A: ConcatStr
  loc_A7032B: FStStrNoPop var_128
  loc_A7032E: FMemLdR4 var_BC(24)
  loc_A70333: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70338: FStStrNoPop var_12C
  loc_A7033B: ConcatStr
  loc_A7033C: FStStrNoPop var_130
  loc_A7033F: LitStr "|"
  loc_A70342: ConcatStr
  loc_A70343: FStStrNoPop var_134
  loc_A70346: FMemLdR4 var_BC(28)
  loc_A7034B: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70350: FStStrNoPop var_138
  loc_A70353: ConcatStr
  loc_A70354: FStStrNoPop var_13C
  loc_A70357: LitStr "|"
  loc_A7035A: ConcatStr
  loc_A7035B: FStStrNoPop var_140
  loc_A7035E: FMemLdR4 var_BC(32)
  loc_A70363: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70368: FStStrNoPop var_144
  loc_A7036B: ConcatStr
  loc_A7036C: FStStrNoPop var_148
  loc_A7036F: LitStr "|"
  loc_A70372: ConcatStr
  loc_A70373: FStStrNoPop var_14C
  loc_A70376: FMemLdR4 var_BC(36)
  loc_A7037B: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70380: FStStrNoPop var_150
  loc_A70383: ConcatStr
  loc_A70384: FStStrNoPop var_154
  loc_A70387: LitStr "|"
  loc_A7038A: ConcatStr
  loc_A7038B: FStStrNoPop var_158
  loc_A7038E: FMemLdR4 var_BC(40)
  loc_A70393: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A70398: FStStrNoPop var_15C
  loc_A7039B: ConcatStr
  loc_A7039C: FStStrNoPop var_160
  loc_A7039F: LitStr "|"
  loc_A703A2: ConcatStr
  loc_A703A3: FStStrNoPop var_164
  loc_A703A6: FMemLdR4 var_BC(44)
  loc_A703AB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A703B0: FStStrNoPop var_168
  loc_A703B3: ConcatStr
  loc_A703B4: FStStrNoPop var_16C
  loc_A703B7: LitStr "|"
  loc_A703BA: ConcatStr
  loc_A703BB: FStStrNoPop var_170
  loc_A703BE: FMemLdR4 var_BC(48)
  loc_A703C3: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A703C8: FStStrNoPop var_174
  loc_A703CB: ConcatStr
  loc_A703CC: FStStrNoPop var_178
  loc_A703CF: LitStr "|"
  loc_A703D2: ConcatStr
  loc_A703D3: FStStrNoPop var_17C
  loc_A703D6: FMemLdR4 var_BC(52)
  loc_A703DB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A703E0: FStStrNoPop var_180
  loc_A703E3: ConcatStr
  loc_A703E4: CVarStr var_190
  loc_A703E7: PopAdLdVar
  loc_A703E8: FLdPr Me
  loc_A703EB: MemLdRfVar from_stack_1.global_64
  loc_A703EE: LdPrVar
  loc_A703F0: LateMemCall
  loc_A703F6: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_90 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_A7045D: FFree1Var var_190 = ""
  loc_A70460: LitI4 0
  loc_A70465: FStR4 var_BC
  loc_A70468: AryUnlock
  loc_A7046B: FLdPr Me
  loc_A7046E: MemLdRfVar from_stack_1.global_100
  loc_A70471: NextI2 var_B4, loc_A70207
  loc_A70476: FLdPr Me
  loc_A70479: MemLdRfVar from_stack_1.global_64
  loc_A7047C: LdPrVar
  loc_A7047E: LateMemCall
  loc_A70484: ExitProcHresult
  loc_A70485: HardType
  loc_A70486: NewIfNullAd
End Sub

Public Sub HabilitarCriterio() '9AAFE4
  'Data Table: 4991D4
  loc_9AAF60: LitI4 0
  loc_9AAF65: LitI4 5
  loc_9AAF6A: FLdRfVar var_88
  loc_9AAF6D: Redim
  loc_9AAF77: FLdPr Me
  loc_9AAF7A: VCallAd Control_ID_cboPeriodo
  loc_9AAF7D: CVarAd
  loc_9AAF81: ParmAry1St
  loc_9AAF87: FLdPr Me
  loc_9AAF8A: VCallAd Control_ID_mskHasta
  loc_9AAF8D: CVarAd
  loc_9AAF91: ParmAry1St
  loc_9AAF97: FLdPr Me
  loc_9AAF9A: VCallAd Control_ID_cmdHasta
  loc_9AAF9D: CVarAd
  loc_9AAFA1: ParmAry1St
  loc_9AAFA7: FLdPr Me
  loc_9AAFAA: VCallAd Control_ID_CodiCucoMsk
  loc_9AAFAD: CVarAd
  loc_9AAFB1: ParmAry1St
  loc_9AAFB7: FLdPr Me
  loc_9AAFBA: VCallAd Control_ID_CodiCucoCmd
  loc_9AAFBD: CVarAd
  loc_9AAFC1: ParmAry1St
  loc_9AAFC7: FLdPr Me
  loc_9AAFCA: VCallAd Control_ID_DetaCucoLbl
  loc_9AAFCD: CVarAd
  loc_9AAFD1: ParmAry1St
  loc_9AAFD7: FLdRfVar var_88
  loc_9AAFDA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AAFDF: FLdRfVar var_88
  loc_9AAFE2: Erase
  loc_9AAFE3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B9F9E8
  'Data Table: 4991D4
  loc_B9EB0C: FLdPr Me
  loc_B9EB0F: MemLdI2 bGenerado
  loc_B9EB12: BranchF loc_B9EB16
  loc_B9EB15: ExitProcHresult
  loc_B9EB16: LitVarStr var_94, "Generando reporte..."
  loc_B9EB1B: PopAdLdVar
  loc_B9EB1C: FLdPr Me
  loc_B9EB1F: VCallAd Control_ID_statusBar
  loc_B9EB22: FStAdFunc var_A8
  loc_B9EB25: FLdPr var_A8
  loc_B9EB28: LateIdSt
  loc_B9EB2D: FFree1Ad var_A8
  loc_B9EB30: LitI4 &HB
  loc_B9EB35: CI2I4
  loc_B9EB36: FLdPr Me
  loc_B9EB39: Me.MousePointer = from_stack_1
  loc_B9EB3E: LitI2_Byte 0
  loc_B9EB40: PopTmpLdAd2 var_AA
  loc_B9EB43: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B9EB48: FLdPr Me
  loc_B9EB4B: MemLdStr global_108
  loc_B9EB4E: LitStr vbNullString
  loc_B9EB51: NeStr
  loc_B9EB53: BranchF loc_B9EB59
  loc_B9EB56: Branch loc_B9F9C3
  loc_B9EB59: FLdPr Me
  loc_B9EB5C: MemLdRfVar from_stack_1.global_56
  loc_B9EB5F: NewIfNullAd
  loc_B9EB62: FStAd var_B0 
  loc_B9EB66: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B9EB69: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_B9EB6C: ConcatStr
  loc_B9EB6D: FStStrNoPop var_B4
  loc_B9EB70: LitStr " odiCuco` char(11) NOT NULL default '',"
  loc_B9EB73: ConcatStr
  loc_B9EB74: FStStrNoPop var_B8
  loc_B9EB77: LitStr " odiPart` char(100) NOT NULL default '',"
  loc_B9EB7A: ConcatStr
  loc_B9EB7B: FStStrNoPop var_BC
  loc_B9EB7E: LitStr " etaPart` char(250) NOT NULL default '',"
  loc_B9EB81: ConcatStr
  loc_B9EB82: FStStrNoPop var_C0
  loc_B9EB85: LitStr " riginal` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EB88: ConcatStr
  loc_B9EB89: FStStrNoPop var_C4
  loc_B9EB8C: LitStr " odificaciones` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EB8F: ConcatStr
  loc_B9EB90: FStStrNoPop var_C8
  loc_B9EB93: LitStr " oleAsie` varchar(500) NOT NULL default '',"
  loc_B9EB96: ConcatStr
  loc_B9EB97: FStStrNoPop var_CC
  loc_B9EB9A: LitStr " ngresado` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EB9D: ConcatStr
  loc_B9EB9E: FStStrNoPop var_D0
  loc_B9EBA1: LitStr " rev` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBA4: ConcatStr
  loc_B9EBA5: FStStrNoPop var_D4
  loc_B9EBA8: LitStr " efi` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBAB: ConcatStr
  loc_B9EBAC: FStStrNoPop var_D8
  loc_B9EBAF: LitStr " eve` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBB2: ConcatStr
  loc_B9EBB3: FStStrNoPop var_DC
  loc_B9EBB6: LitStr " apa` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBB9: ConcatStr
  loc_B9EBBA: FStStrNoPop var_E0
  loc_B9EBBD: LitStr " aga` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBC0: ConcatStr
  loc_B9EBC1: FStStrNoPop var_E4
  loc_B9EBC4: LitStr " ransferido` decimal(14,2) NOT NULL default '0.00',"
  loc_B9EBC7: ConcatStr
  loc_B9EBC8: FStStrNoPop var_E8
  loc_B9EBCB: LitStr " entas` decimal(14,2) NOT NULL default '0.00'"
  loc_B9EBCE: ConcatStr
  loc_B9EBCF: FStStrNoPop var_EC
  loc_B9EBD2: LitStr " ) ;"
  loc_B9EBD5: ConcatStr
  loc_B9EBD6: FStStrNoPop var_F0
  loc_B9EBD9: FLdPr var_B0
  loc_B9EBDC: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9EBE1: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_B9EC04: LitStr "DROP TEMPORARY TABLE IF EXISTS tcuco;"
  loc_B9EC07: LitStr " CREATE TEMPORARY TABLE tcuco"
  loc_B9EC0A: ConcatStr
  loc_B9EC0B: FStStrNoPop var_B4
  loc_B9EC0E: LitStr " SELECT re.PeriInfo, re.CodiCuco, re.CodiPart, p.DetaPart"
  loc_B9EC11: ConcatStr
  loc_B9EC12: FStStrNoPop var_B8
  loc_B9EC15: LitStr " FROM recuespe re"
  loc_B9EC18: ConcatStr
  loc_B9EC19: FStStrNoPop var_BC
  loc_B9EC1C: LitStr " INNER JOIN partida p ON p.PeriInfo = re.PeriInfo AND p.CodiPart = re.CodiPart"
  loc_B9EC1F: ConcatStr
  loc_B9EC20: FStStrNoPop var_C0
  loc_B9EC23: LitStr " WHERE re.PeriInfo = "
  loc_B9EC26: ConcatStr
  loc_B9EC27: FStStrNoPop var_C8
  loc_B9EC2A: FLdRfVar var_C4
  loc_B9EC2D: FLdPr Me
  loc_B9EC30: VCallAd Control_ID_cboPeriodo
  loc_B9EC33: FStAdFunc var_A8
  loc_B9EC36: FLdPr var_A8
  loc_B9EC39:  = Me.Text
  loc_B9EC3E: ILdRf var_C4
  loc_B9EC41: ConcatStr
  loc_B9EC42: FStStrNoPop var_CC
  loc_B9EC45: LitStr " AND re.CodiCuco LIKE '"
  loc_B9EC48: ConcatStr
  loc_B9EC49: FStStrNoPop var_D0
  loc_B9EC4C: FLdPr Me
  loc_B9EC4F: VCallAd Control_ID_CodiCucoMsk
  loc_B9EC52: FStAdFunc var_F4
  loc_B9EC55: FLdPr var_F4
  loc_B9EC58: LateIdLdVar var_104 DispID_22 0
  loc_B9EC5F: CStrVarTmp
  loc_B9EC60: FStStrNoPop var_D4
  loc_B9EC63: ConcatStr
  loc_B9EC64: FStStrNoPop var_D8
  loc_B9EC67: LitStr Chr(37) & "'"
  loc_B9EC6A: ConcatStr
  loc_B9EC6B: FStStrNoPop var_DC
  loc_B9EC6E: LitStr " GROUP BY re.PeriInfo, re.CodiCuco;"
  loc_B9EC71: ConcatStr
  loc_B9EC72: FStStrNoPop var_E0
  loc_B9EC75: FLdPr var_B0
  loc_B9EC78: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9EC7D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C8 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9EC98: FFreeAd var_A8 = ""
  loc_B9EC9F: FFree1Var var_104 = ""
  loc_B9ECA2: FLdPr Me
  loc_B9ECA5: VCallAd Control_ID_mskHasta
  loc_B9ECA8: FStAdFunc var_A8
  loc_B9ECAB: FLdPr var_A8
  loc_B9ECAE: LateIdLdVar var_104 DispID_15 0
  loc_B9ECB5: PopAd
  loc_B9ECB7: LitStr "INSERT INTO tmovi (CodiCuco,CodiPart,DetaPart,original,modificaciones,NoleAsie)"
  loc_B9ECBA: LitStr " SELECT tcuco.CodiCuco"
  loc_B9ECBD: ConcatStr
  loc_B9ECBE: FStStrNoPop var_B4
  loc_B9ECC1: LitStr ", Group_concat(Distinct CodiPart) CodiPart"
  loc_B9ECC4: ConcatStr
  loc_B9ECC5: FStStrNoPop var_B8
  loc_B9ECC8: LitStr ", LEFT(Group_concat(Distinct DetaPart),250) DetaPart"
  loc_B9ECCB: ConcatStr
  loc_B9ECCC: FStStrNoPop var_BC
  loc_B9ECCF: LitStr ", Sum(IF(CodiTias=7,DebeMoas-HabeMoas,0))"
  loc_B9ECD2: ConcatStr
  loc_B9ECD3: FStStrNoPop var_C0
  loc_B9ECD6: LitStr ", Sum(IF(CodiTias=8,DebeMoas-HabeMoas,0))"
  loc_B9ECD9: ConcatStr
  loc_B9ECDA: FStStrNoPop var_C4
  loc_B9ECDD: LitStr " /*, (SELECT Group_concat(Distinct tmp.NoleAsie) FROM asiento tmp WHERE tmp.PeriInfo = a.PeriInfo AND tmp.CodiAsie = a.CodiAsie) NoleAsie */"
  loc_B9ECE0: ConcatStr
  loc_B9ECE1: FStStrNoPop var_C8
  loc_B9ECE4: LitStr ", Group_concat(Distinct a.NoleAsie) NoleAsie"
  loc_B9ECE7: ConcatStr
  loc_B9ECE8: FStStrNoPop var_CC
  loc_B9ECEB: LitStr " FROM tcuco"
  loc_B9ECEE: ConcatStr
  loc_B9ECEF: FStStrNoPop var_D0
  loc_B9ECF2: LitStr " INNER JOIN moviasiento ma ON ma.PeriInfo = tcuco.PeriInfo AND ma.CodiCuco = tcuco.CodiCuco"
  loc_B9ECF5: ConcatStr
  loc_B9ECF6: FStStrNoPop var_D4
  loc_B9ECF9: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_B9ECFC: ConcatStr
  loc_B9ECFD: FStStrNoPop var_D8
  loc_B9ED00: LitStr " WHERE (CodiTias = 7 OR CodiTias = 8)"
  loc_B9ED03: ConcatStr
  loc_B9ED04: FStStrNoPop var_DC
  loc_B9ED07: LitStr " AND FechAsie <= "
  loc_B9ED0A: ConcatStr
  loc_B9ED0B: FStStrNoPop var_E0
  loc_B9ED0E: LitI4 1
  loc_B9ED13: LitI4 1
  loc_B9ED18: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B9ED1D: FStVarCopyObj var_124
  loc_B9ED20: FLdRfVar var_124
  loc_B9ED23: FLdRfVar var_104
  loc_B9ED26: CStrVarTmp
  loc_B9ED27: CVarStr var_114
  loc_B9ED2A: ImpAdCallI2 Format$(, )
  loc_B9ED2F: FStStrNoPop var_E4
  loc_B9ED32: ConcatStr
  loc_B9ED33: FStStrNoPop var_E8
  loc_B9ED36: LitStr " GROUP BY CodiCuco;"
  loc_B9ED39: ConcatStr
  loc_B9ED3A: FStStrNoPop var_EC
  loc_B9ED3D: FLdPr var_B0
  loc_B9ED40: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9ED45: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B9ED66: FFree1Ad var_A8
  loc_B9ED69: FFreeVar var_104 = "": var_114 = ""
  loc_B9ED72: LitStr "Municipalidad de Guaymallén"
  loc_B9ED75: LitStr "Municipalidad de Guaymallén"
  loc_B9ED78: EqStr
  loc_B9ED7A: BranchF loc_B9EE8B
  loc_B9ED7D: FLdPr Me
  loc_B9ED80: VCallAd Control_ID_mskHasta
  loc_B9ED83: FStAdFunc var_F4
  loc_B9ED86: FLdPr var_F4
  loc_B9ED89: LateIdLdVar var_104 DispID_15 0
  loc_B9ED90: PopAd
  loc_B9ED92: LitStr "INSERT INTO tmovi (CodiCuco,rentas)"
  loc_B9ED95: LitStr " SELECT mv.CodiCuco, Sum(HabeMoas-DebeMoas) Saldo"
  loc_B9ED98: ConcatStr
  loc_B9ED99: FStStrNoPop var_B4
  loc_B9ED9C: LitStr " FROM asiento"
  loc_B9ED9F: ConcatStr
  loc_B9EDA0: FStStrNoPop var_B8
  loc_B9EDA3: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B9EDA6: ConcatStr
  loc_B9EDA7: FStStrNoPop var_BC
  loc_B9EDAA: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B9EDAD: ConcatStr
  loc_B9EDAE: FStStrNoPop var_C0
  loc_B9EDB1: LitStr " AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_B9EDB4: ConcatStr
  loc_B9EDB5: FStStrNoPop var_C4
  loc_B9EDB8: LitStr " INNER JOIN paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_B9EDBB: ConcatStr
  loc_B9EDBC: FStStrNoPop var_C8
  loc_B9EDBF: LitStr " AND p.CarePaco <> mv.CodiCuco"
  loc_B9EDC2: ConcatStr
  loc_B9EDC3: FStStrNoPop var_CC
  loc_B9EDC6: LitStr " AND p.CajaPaco <> mv.CodiCuco"
  loc_B9EDC9: ConcatStr
  loc_B9EDCA: FStStrNoPop var_D0
  loc_B9EDCD: LitStr " WHERE asiento.PeriInfo = "
  loc_B9EDD0: ConcatStr
  loc_B9EDD1: FStStrNoPop var_D8
  loc_B9EDD4: FLdRfVar var_D4
  loc_B9EDD7: FLdPr Me
  loc_B9EDDA: VCallAd Control_ID_cboPeriodo
  loc_B9EDDD: FStAdFunc var_A8
  loc_B9EDE0: FLdPr var_A8
  loc_B9EDE3:  = Me.Text
  loc_B9EDE8: ILdRf var_D4
  loc_B9EDEB: ConcatStr
  loc_B9EDEC: FStStrNoPop var_DC
  loc_B9EDEF: LitStr " /*AND FechAsie >= '2018-01-01'"
  loc_B9EDF2: ConcatStr
  loc_B9EDF3: FStStrNoPop var_E0
  loc_B9EDF6: LitStr " AND FechAsie <= '2018-06-30'"
  loc_B9EDF9: ConcatStr
  loc_B9EDFA: FStStrNoPop var_E4
  loc_B9EDFD: LitStr " AND FechAsie <= "
  loc_B9EE00: ConcatStr
  loc_B9EE01: FStStrNoPop var_E8
  loc_B9EE04: LitI4 1
  loc_B9EE09: LitI4 1
  loc_B9EE0E: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B9EE13: FStVarCopyObj var_124
  loc_B9EE16: FLdRfVar var_124
  loc_B9EE19: FLdRfVar var_104
  loc_B9EE1C: CStrVarTmp
  loc_B9EE1D: CVarStr var_114
  loc_B9EE20: ImpAdCallI2 Format$(, )
  loc_B9EE25: FStStrNoPop var_EC
  loc_B9EE28: ConcatStr
  loc_B9EE29: FStStrNoPop var_F0
  loc_B9EE2C: LitStr "*/ AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_B9EE2F: ConcatStr
  loc_B9EE30: FStStrNoPop var_128
  loc_B9EE33: LitStr " AND (/*CodiTias = 9 OR CodiTias = 6 OR*/ CodiTias = 58)"
  loc_B9EE36: ConcatStr
  loc_B9EE37: FStStrNoPop var_12C
  loc_B9EE3A: LitStr " GROUP BY mv.CodiCuco"
  loc_B9EE3D: ConcatStr
  loc_B9EE3E: FStStrNoPop var_130
  loc_B9EE41: LitStr " HAVING Saldo != 0;"
  loc_B9EE44: ConcatStr
  loc_B9EE45: FStStrNoPop var_134
  loc_B9EE48: FLdPr var_B0
  loc_B9EE4B: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9EE50: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D8 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B9EE7B: FFreeAd var_A8 = ""
  loc_B9EE82: FFreeVar var_104 = "": var_114 = ""
  loc_B9EE8B: FLdPr Me
  loc_B9EE8E: VCallAd Control_ID_mskHasta
  loc_B9EE91: FStAdFunc var_A8
  loc_B9EE94: FLdPr var_A8
  loc_B9EE97: LateIdLdVar var_104 DispID_15 0
  loc_B9EE9E: PopAd
  loc_B9EEA0: LitStr "INSERT INTO tmovi (CodiCuco,ingresado)"
  loc_B9EEA3: LitStr " SELECT tcuco.CodiCuco,"
  loc_B9EEA6: ConcatStr
  loc_B9EEA7: FStStrNoPop var_B4
  loc_B9EEAA: LitStr " Sum(ImpoIngr)"
  loc_B9EEAD: ConcatStr
  loc_B9EEAE: FStStrNoPop var_B8
  loc_B9EEB1: LitStr " FROM tcuco"
  loc_B9EEB4: ConcatStr
  loc_B9EEB5: FStStrNoPop var_BC
  loc_B9EEB8: LitStr " INNER JOIN ingreso ON ingreso.PeriInfo = tcuco.PeriInfo AND ingreso.CodiCuco = tcuco.CodiCuco"
  loc_B9EEBB: ConcatStr
  loc_B9EEBC: FStStrNoPop var_C0
  loc_B9EEBF: LitStr " WHERE FechIngr <= "
  loc_B9EEC2: ConcatStr
  loc_B9EEC3: FStStrNoPop var_C4
  loc_B9EEC6: LitI4 1
  loc_B9EECB: LitI4 1
  loc_B9EED0: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B9EED5: FStVarCopyObj var_124
  loc_B9EED8: FLdRfVar var_124
  loc_B9EEDB: FLdRfVar var_104
  loc_B9EEDE: CStrVarTmp
  loc_B9EEDF: CVarStr var_114
  loc_B9EEE2: ImpAdCallI2 Format$(, )
  loc_B9EEE7: FStStrNoPop var_C8
  loc_B9EEEA: ConcatStr
  loc_B9EEEB: FStStrNoPop var_CC
  loc_B9EEEE: LitStr " GROUP BY CodiCuco;"
  loc_B9EEF1: ConcatStr
  loc_B9EEF2: FStStrNoPop var_D0
  loc_B9EEF5: FLdPr var_B0
  loc_B9EEF8: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9EEFD: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B9EF10: FFree1Ad var_A8
  loc_B9EF13: FFreeVar var_104 = "": var_114 = ""
  loc_B9EF1C: FLdPr Me
  loc_B9EF1F: VCallAd Control_ID_mskHasta
  loc_B9EF22: FStAdFunc var_138
  loc_B9EF25: FLdPr var_138
  loc_B9EF28: LateIdLdVar var_114 DispID_15 0
  loc_B9EF2F: PopAd
  loc_B9EF31: LitStr "INSERT INTO tmovi (CodiCuco,prev,defi,deve,mapa,paga)"
  loc_B9EF34: LitStr " SELECT recuespe.CodiCuco, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B9EF37: ConcatStr
  loc_B9EF38: FStStrNoPop var_B4
  loc_B9EF3B: LitStr " FROM recuespe"
  loc_B9EF3E: ConcatStr
  loc_B9EF3F: FStStrNoPop var_B8
  loc_B9EF42: LitStr " LEFT JOIN imputacion ON imputacion.PeriInfo = recuespe.PeriInfo AND imputacion.CodiPart = recuespe.CodiPart"
  loc_B9EF45: ConcatStr
  loc_B9EF46: FStStrNoPop var_BC
  loc_B9EF49: LitStr " WHERE recuespe.PeriInfo = "
  loc_B9EF4C: ConcatStr
  loc_B9EF4D: FStStrNoPop var_C4
  loc_B9EF50: FLdRfVar var_C0
  loc_B9EF53: FLdPr Me
  loc_B9EF56: VCallAd Control_ID_cboPeriodo
  loc_B9EF59: FStAdFunc var_A8
  loc_B9EF5C: FLdPr var_A8
  loc_B9EF5F:  = Me.Text
  loc_B9EF64: ILdRf var_C0
  loc_B9EF67: ConcatStr
  loc_B9EF68: FStStrNoPop var_C8
  loc_B9EF6B: LitStr " AND recuespe.CodiCuco LIKE '"
  loc_B9EF6E: ConcatStr
  loc_B9EF6F: FStStrNoPop var_CC
  loc_B9EF72: FLdPr Me
  loc_B9EF75: VCallAd Control_ID_CodiCucoMsk
  loc_B9EF78: FStAdFunc var_F4
  loc_B9EF7B: FLdPr var_F4
  loc_B9EF7E: LateIdLdVar var_104 DispID_22 0
  loc_B9EF85: CStrVarTmp
  loc_B9EF86: FStStrNoPop var_D0
  loc_B9EF89: ConcatStr
  loc_B9EF8A: FStStrNoPop var_D4
  loc_B9EF8D: LitStr Chr(37) & "'"
  loc_B9EF90: ConcatStr
  loc_B9EF91: FStStrNoPop var_D8
  loc_B9EF94: LitStr " AND FechImpu <= "
  loc_B9EF97: ConcatStr
  loc_B9EF98: FStStrNoPop var_DC
  loc_B9EF9B: LitI4 1
  loc_B9EFA0: LitI4 1
  loc_B9EFA5: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B9EFAA: FStVarCopyObj var_148
  loc_B9EFAD: FLdRfVar var_148
  loc_B9EFB0: FLdRfVar var_114
  loc_B9EFB3: CStrVarTmp
  loc_B9EFB4: CVarStr var_124
  loc_B9EFB7: ImpAdCallI2 Format$(, )
  loc_B9EFBC: FStStrNoPop var_E0
  loc_B9EFBF: ConcatStr
  loc_B9EFC0: FStStrNoPop var_E4
  loc_B9EFC3: LitStr " GROUP BY CodiCuco;"
  loc_B9EFC6: ConcatStr
  loc_B9EFC7: FStStrNoPop var_E8
  loc_B9EFCA: FLdPr var_B0
  loc_B9EFCD: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9EFD2: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B9EFF1: FFreeAd var_A8 = "": var_F4 = ""
  loc_B9EFFA: FFreeVar var_104 = "": var_114 = "": var_124 = ""
  loc_B9F005: LitStr "SELECT tmovi.CodiCuco, DetaCuco, Sum(original) original, Sum(modificaciones) modificaciones, NoleAsie"
  loc_B9F008: LitStr ", CodiPart, DetaPart"
  loc_B9F00B: ConcatStr
  loc_B9F00C: FStStrNoPop var_B4
  loc_B9F00F: LitStr ", Sum(original+modificaciones) definitivo, Sum(ingresado) ingresado"
  loc_B9F012: ConcatStr
  loc_B9F013: FStStrNoPop var_B8
  loc_B9F016: LitStr ", Sum(original+modificaciones-ingresado) diferencia, Sum(prev) prev"
  loc_B9F019: ConcatStr
  loc_B9F01A: FStStrNoPop var_BC
  loc_B9F01D: LitStr ", Sum(defi) defi, Sum(deve) deve, Sum(mapa) mapa, Sum(paga) paga"
  loc_B9F020: ConcatStr
  loc_B9F021: FStStrNoPop var_C0
  loc_B9F024: LitStr ", Sum(deve-mapa) resi, Sum(original+modificaciones-deve) saldo, Sum(mapa-paga) deuda"
  loc_B9F027: ConcatStr
  loc_B9F028: FStStrNoPop var_C4
  loc_B9F02B: LitStr ", Sum(ingresado-deve) transferido, Sum(rentas) rentas"
  loc_B9F02E: ConcatStr
  loc_B9F02F: FStStrNoPop var_C8
  loc_B9F032: LitStr " FROM tmovi"
  loc_B9F035: ConcatStr
  loc_B9F036: FStStrNoPop var_CC
  loc_B9F039: LitStr " LEFT JOIN infogov.cuentacontable AS c ON c.PeriInfo = "
  loc_B9F03C: ConcatStr
  loc_B9F03D: FStStrNoPop var_D4
  loc_B9F040: FLdRfVar var_D0
  loc_B9F043: FLdPr Me
  loc_B9F046: VCallAd Control_ID_cboPeriodo
  loc_B9F049: FStAdFunc var_A8
  loc_B9F04C: FLdPr var_A8
  loc_B9F04F:  = Me.Text
  loc_B9F054: ILdRf var_D0
  loc_B9F057: ConcatStr
  loc_B9F058: FStStrNoPop var_D8
  loc_B9F05B: LitStr " AND c.CodiCuco = tmovi.CodiCuco"
  loc_B9F05E: ConcatStr
  loc_B9F05F: FStStrNoPop var_DC
  loc_B9F062: LitStr " GROUP BY CodiCuco;"
  loc_B9F065: ConcatStr
  loc_B9F066: FStStrNoPop var_E0
  loc_B9F069: FLdPr var_B0
  loc_B9F06C: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B9F071: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D0 = "": var_D8 = "": var_DC = ""
  loc_B9F08C: FFree1Ad var_A8
  loc_B9F08F: FLdRfVar var_14C
  loc_B9F092: FLdPr var_B0
  loc_B9F095: from_stack_1 = clsasiento.RecordCount
  loc_B9F09A: ILdRf var_14C
  loc_B9F09D: LitI4 1
  loc_B9F0A2: LtI4
  loc_B9F0A3: BranchF loc_B9F0B6
  loc_B9F0A6: LitI4 0
  loc_B9F0AB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B9F0AE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9F0B3: Branch loc_B9F9C3
  loc_B9F0B6: FLdPr var_B0
  loc_B9F0B9: Call clsasiento.MoveFirst(from_stack_1v)
  loc_B9F0BE: LitI4 0
  loc_B9F0C3: LitI4 1
  loc_B9F0C8: FLdPr Me
  loc_B9F0CB: MemLdRfVar from_stack_1.global_104
  loc_B9F0CE: Redim
  loc_B9F0D8: LitI4 0
  loc_B9F0DD: FLdRfVar var_14C
  loc_B9F0E0: FLdPr var_B0
  loc_B9F0E3: from_stack_1 = clsasiento.RecordCount
  loc_B9F0E8: ILdRf var_14C
  loc_B9F0EB: FLdPr Me
  loc_B9F0EE: MemLdRfVar from_stack_1.global_96
  loc_B9F0F1: Redim
  loc_B9F0FB: LitI2_Byte 1
  loc_B9F0FD: FLdPr Me
  loc_B9F100: MemLdRfVar from_stack_1.global_100
  loc_B9F103: FLdPr Me
  loc_B9F106: MemLdStr global_96
  loc_B9F109: LitI2_Byte 1
  loc_B9F10B: FnUBound
  loc_B9F10D: CI2I4
  loc_B9F10E: ForI2 var_150
  loc_B9F114: FLdRfVar var_138
  loc_B9F117: LitVarStr var_94, "CodiCuco"
  loc_B9F11C: PopAdLdVar
  loc_B9F11D: FLdRfVar var_F4
  loc_B9F120: FLdRfVar var_A8
  loc_B9F123: FLdPr var_B0
  loc_B9F126: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F12B: FLdPr var_A8
  loc_B9F12E:  = Me.Fields
  loc_B9F133: FLdPr var_F4
  loc_B9F136: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F13B: LitI2_Byte 0
  loc_B9F13D: LitVar_Missing var_114
  loc_B9F140: LitI2_Byte 0
  loc_B9F142: FLdZeroAd var_138
  loc_B9F145: CVarAd
  loc_B9F149: PopAdLdVar
  loc_B9F14A: FLdPr Me
  loc_B9F14D: MemLdI2 global_100
  loc_B9F150: CI4UI1
  loc_B9F151: FLdPr Me
  loc_B9F154: MemLdStr global_96
  loc_B9F157: AryLock
  loc_B9F15A: Ary1LdPr
  loc_B9F15B: MemLdRfVar from_stack_1.global_0
  loc_B9F15E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F163: AryUnlock
  loc_B9F166: FFreeAd var_A8 = ""
  loc_B9F16D: FFreeVar var_104 = ""
  loc_B9F174: FLdRfVar var_138
  loc_B9F177: LitVarStr var_94, "DetaCuco"
  loc_B9F17C: PopAdLdVar
  loc_B9F17D: FLdRfVar var_F4
  loc_B9F180: FLdRfVar var_A8
  loc_B9F183: FLdPr var_B0
  loc_B9F186: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F18B: FLdPr var_A8
  loc_B9F18E:  = Me.Fields
  loc_B9F193: FLdPr var_F4
  loc_B9F196: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F19B: LitI2_Byte 0
  loc_B9F19D: LitVar_Missing var_114
  loc_B9F1A0: LitI2_Byte 0
  loc_B9F1A2: FLdZeroAd var_138
  loc_B9F1A5: CVarAd
  loc_B9F1A9: PopAdLdVar
  loc_B9F1AA: FLdPr Me
  loc_B9F1AD: MemLdI2 global_100
  loc_B9F1B0: CI4UI1
  loc_B9F1B1: FLdPr Me
  loc_B9F1B4: MemLdStr global_96
  loc_B9F1B7: AryLock
  loc_B9F1BA: Ary1LdPr
  loc_B9F1BB: MemLdRfVar from_stack_1.global_4
  loc_B9F1BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F1C3: AryUnlock
  loc_B9F1C6: FFreeAd var_A8 = ""
  loc_B9F1CD: FFreeVar var_104 = ""
  loc_B9F1D4: FLdRfVar var_138
  loc_B9F1D7: LitVarStr var_94, "CodiPart"
  loc_B9F1DC: PopAdLdVar
  loc_B9F1DD: FLdRfVar var_F4
  loc_B9F1E0: FLdRfVar var_A8
  loc_B9F1E3: FLdPr var_B0
  loc_B9F1E6: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F1EB: FLdPr var_A8
  loc_B9F1EE:  = Me.Fields
  loc_B9F1F3: FLdPr var_F4
  loc_B9F1F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F1FB: LitI2_Byte 0
  loc_B9F1FD: LitVar_Missing var_114
  loc_B9F200: LitI2_Byte 0
  loc_B9F202: FLdZeroAd var_138
  loc_B9F205: CVarAd
  loc_B9F209: PopAdLdVar
  loc_B9F20A: FLdPr Me
  loc_B9F20D: MemLdI2 global_100
  loc_B9F210: CI4UI1
  loc_B9F211: FLdPr Me
  loc_B9F214: MemLdStr global_96
  loc_B9F217: AryLock
  loc_B9F21A: Ary1LdPr
  loc_B9F21B: MemLdRfVar from_stack_1.global_8
  loc_B9F21E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F223: AryUnlock
  loc_B9F226: FFreeAd var_A8 = ""
  loc_B9F22D: FFreeVar var_104 = ""
  loc_B9F234: FLdRfVar var_138
  loc_B9F237: LitVarStr var_94, "DetaPart"
  loc_B9F23C: PopAdLdVar
  loc_B9F23D: FLdRfVar var_F4
  loc_B9F240: FLdRfVar var_A8
  loc_B9F243: FLdPr var_B0
  loc_B9F246: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F24B: FLdPr var_A8
  loc_B9F24E:  = Me.Fields
  loc_B9F253: FLdPr var_F4
  loc_B9F256: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F25B: LitI2_Byte 0
  loc_B9F25D: LitVar_Missing var_114
  loc_B9F260: LitI2_Byte 0
  loc_B9F262: FLdZeroAd var_138
  loc_B9F265: CVarAd
  loc_B9F269: PopAdLdVar
  loc_B9F26A: FLdPr Me
  loc_B9F26D: MemLdI2 global_100
  loc_B9F270: CI4UI1
  loc_B9F271: FLdPr Me
  loc_B9F274: MemLdStr global_96
  loc_B9F277: AryLock
  loc_B9F27A: Ary1LdPr
  loc_B9F27B: MemLdRfVar from_stack_1.global_12
  loc_B9F27E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F283: AryUnlock
  loc_B9F286: FFreeAd var_A8 = ""
  loc_B9F28D: FFreeVar var_104 = ""
  loc_B9F294: FLdRfVar var_138
  loc_B9F297: LitVarStr var_94, "original"
  loc_B9F29C: PopAdLdVar
  loc_B9F29D: FLdRfVar var_F4
  loc_B9F2A0: FLdRfVar var_A8
  loc_B9F2A3: FLdPr var_B0
  loc_B9F2A6: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F2AB: FLdPr var_A8
  loc_B9F2AE:  = Me.Fields
  loc_B9F2B3: FLdPr var_F4
  loc_B9F2B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F2BB: LitI2_Byte 0
  loc_B9F2BD: LitI4 1
  loc_B9F2C2: FLdPr Me
  loc_B9F2C5: MemLdStr global_104
  loc_B9F2C8: AryLock
  loc_B9F2CB: Ary1LdPr
  loc_B9F2CC: MemLdRfVar from_stack_1.global_0
  loc_B9F2CF: CVarRef
  loc_B9F2D4: LitI2_Byte &HFF
  loc_B9F2D6: FLdZeroAd var_138
  loc_B9F2D9: CVarAd
  loc_B9F2DD: PopAdLdVar
  loc_B9F2DE: FLdPr Me
  loc_B9F2E1: MemLdI2 global_100
  loc_B9F2E4: CI4UI1
  loc_B9F2E5: FLdPr Me
  loc_B9F2E8: MemLdStr global_96
  loc_B9F2EB: AryLock
  loc_B9F2EE: Ary1LdPr
  loc_B9F2EF: MemLdRfVar from_stack_1.global_16
  loc_B9F2F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F2F7: AryUnlock
  loc_B9F2FA: AryUnlock
  loc_B9F2FD: FFreeAd var_A8 = ""
  loc_B9F304: FFree1Var var_104 = ""
  loc_B9F307: FLdRfVar var_138
  loc_B9F30A: LitVarStr var_94, "NoleAsie"
  loc_B9F30F: PopAdLdVar
  loc_B9F310: FLdRfVar var_F4
  loc_B9F313: FLdRfVar var_A8
  loc_B9F316: FLdPr var_B0
  loc_B9F319: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F31E: FLdPr var_A8
  loc_B9F321:  = Me.Fields
  loc_B9F326: FLdPr var_F4
  loc_B9F329: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F32E: LitI2_Byte 0
  loc_B9F330: LitVar_Missing var_114
  loc_B9F333: LitI2_Byte 0
  loc_B9F335: FLdZeroAd var_138
  loc_B9F338: CVarAd
  loc_B9F33C: PopAdLdVar
  loc_B9F33D: FLdPr Me
  loc_B9F340: MemLdI2 global_100
  loc_B9F343: CI4UI1
  loc_B9F344: FLdPr Me
  loc_B9F347: MemLdStr global_96
  loc_B9F34A: AryLock
  loc_B9F34D: Ary1LdPr
  loc_B9F34E: MemLdRfVar from_stack_1.global_20
  loc_B9F351: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F356: AryUnlock
  loc_B9F359: FFreeAd var_A8 = ""
  loc_B9F360: FFreeVar var_104 = ""
  loc_B9F367: FLdRfVar var_138
  loc_B9F36A: LitVarStr var_94, "modificaciones"
  loc_B9F36F: PopAdLdVar
  loc_B9F370: FLdRfVar var_F4
  loc_B9F373: FLdRfVar var_A8
  loc_B9F376: FLdPr var_B0
  loc_B9F379: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F37E: FLdPr var_A8
  loc_B9F381:  = Me.Fields
  loc_B9F386: FLdPr var_F4
  loc_B9F389: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F38E: LitI2_Byte 0
  loc_B9F390: LitI4 1
  loc_B9F395: FLdPr Me
  loc_B9F398: MemLdStr global_104
  loc_B9F39B: AryLock
  loc_B9F39E: Ary1LdPr
  loc_B9F39F: MemLdRfVar from_stack_1.global_8
  loc_B9F3A2: CVarRef
  loc_B9F3A7: LitI2_Byte &HFF
  loc_B9F3A9: FLdZeroAd var_138
  loc_B9F3AC: CVarAd
  loc_B9F3B0: PopAdLdVar
  loc_B9F3B1: FLdPr Me
  loc_B9F3B4: MemLdI2 global_100
  loc_B9F3B7: CI4UI1
  loc_B9F3B8: FLdPr Me
  loc_B9F3BB: MemLdStr global_96
  loc_B9F3BE: AryLock
  loc_B9F3C1: Ary1LdPr
  loc_B9F3C2: MemLdRfVar from_stack_1.global_24
  loc_B9F3C5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F3CA: AryUnlock
  loc_B9F3CD: AryUnlock
  loc_B9F3D0: FFreeAd var_A8 = ""
  loc_B9F3D7: FFree1Var var_104 = ""
  loc_B9F3DA: FLdRfVar var_138
  loc_B9F3DD: LitVarStr var_94, "definitivo"
  loc_B9F3E2: PopAdLdVar
  loc_B9F3E3: FLdRfVar var_F4
  loc_B9F3E6: FLdRfVar var_A8
  loc_B9F3E9: FLdPr var_B0
  loc_B9F3EC: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F3F1: FLdPr var_A8
  loc_B9F3F4:  = Me.Fields
  loc_B9F3F9: FLdPr var_F4
  loc_B9F3FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F401: LitI2_Byte 0
  loc_B9F403: LitI4 1
  loc_B9F408: FLdPr Me
  loc_B9F40B: MemLdStr global_104
  loc_B9F40E: AryLock
  loc_B9F411: Ary1LdPr
  loc_B9F412: MemLdRfVar from_stack_1.global_12
  loc_B9F415: CVarRef
  loc_B9F41A: LitI2_Byte &HFF
  loc_B9F41C: FLdZeroAd var_138
  loc_B9F41F: CVarAd
  loc_B9F423: PopAdLdVar
  loc_B9F424: FLdPr Me
  loc_B9F427: MemLdI2 global_100
  loc_B9F42A: CI4UI1
  loc_B9F42B: FLdPr Me
  loc_B9F42E: MemLdStr global_96
  loc_B9F431: AryLock
  loc_B9F434: Ary1LdPr
  loc_B9F435: MemLdRfVar from_stack_1.global_28
  loc_B9F438: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F43D: AryUnlock
  loc_B9F440: AryUnlock
  loc_B9F443: FFreeAd var_A8 = ""
  loc_B9F44A: FFree1Var var_104 = ""
  loc_B9F44D: FLdRfVar var_138
  loc_B9F450: LitVarStr var_94, "ingresado"
  loc_B9F455: PopAdLdVar
  loc_B9F456: FLdRfVar var_F4
  loc_B9F459: FLdRfVar var_A8
  loc_B9F45C: FLdPr var_B0
  loc_B9F45F: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F464: FLdPr var_A8
  loc_B9F467:  = Me.Fields
  loc_B9F46C: FLdPr var_F4
  loc_B9F46F: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F474: LitI2_Byte 0
  loc_B9F476: LitI4 1
  loc_B9F47B: FLdPr Me
  loc_B9F47E: MemLdStr global_104
  loc_B9F481: AryLock
  loc_B9F484: Ary1LdPr
  loc_B9F485: MemLdRfVar from_stack_1.global_16
  loc_B9F488: CVarRef
  loc_B9F48D: LitI2_Byte &HFF
  loc_B9F48F: FLdZeroAd var_138
  loc_B9F492: CVarAd
  loc_B9F496: PopAdLdVar
  loc_B9F497: FLdPr Me
  loc_B9F49A: MemLdI2 global_100
  loc_B9F49D: CI4UI1
  loc_B9F49E: FLdPr Me
  loc_B9F4A1: MemLdStr global_96
  loc_B9F4A4: AryLock
  loc_B9F4A7: Ary1LdPr
  loc_B9F4A8: MemLdRfVar from_stack_1.global_32
  loc_B9F4AB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F4B0: AryUnlock
  loc_B9F4B3: AryUnlock
  loc_B9F4B6: FFreeAd var_A8 = ""
  loc_B9F4BD: FFree1Var var_104 = ""
  loc_B9F4C0: FLdRfVar var_138
  loc_B9F4C3: LitVarStr var_94, "diferencia"
  loc_B9F4C8: PopAdLdVar
  loc_B9F4C9: FLdRfVar var_F4
  loc_B9F4CC: FLdRfVar var_A8
  loc_B9F4CF: FLdPr var_B0
  loc_B9F4D2: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F4D7: FLdPr var_A8
  loc_B9F4DA:  = Me.Fields
  loc_B9F4DF: FLdPr var_F4
  loc_B9F4E2: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F4E7: LitI2_Byte 0
  loc_B9F4E9: LitI4 1
  loc_B9F4EE: FLdPr Me
  loc_B9F4F1: MemLdStr global_104
  loc_B9F4F4: AryLock
  loc_B9F4F7: Ary1LdPr
  loc_B9F4F8: MemLdRfVar from_stack_1.global_20
  loc_B9F4FB: CVarRef
  loc_B9F500: LitI2_Byte &HFF
  loc_B9F502: FLdZeroAd var_138
  loc_B9F505: CVarAd
  loc_B9F509: PopAdLdVar
  loc_B9F50A: FLdPr Me
  loc_B9F50D: MemLdI2 global_100
  loc_B9F510: CI4UI1
  loc_B9F511: FLdPr Me
  loc_B9F514: MemLdStr global_96
  loc_B9F517: AryLock
  loc_B9F51A: Ary1LdPr
  loc_B9F51B: MemLdRfVar from_stack_1.global_36
  loc_B9F51E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F523: AryUnlock
  loc_B9F526: AryUnlock
  loc_B9F529: FFreeAd var_A8 = ""
  loc_B9F530: FFree1Var var_104 = ""
  loc_B9F533: FLdRfVar var_138
  loc_B9F536: LitVarStr var_94, "deve"
  loc_B9F53B: PopAdLdVar
  loc_B9F53C: FLdRfVar var_F4
  loc_B9F53F: FLdRfVar var_A8
  loc_B9F542: FLdPr var_B0
  loc_B9F545: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F54A: FLdPr var_A8
  loc_B9F54D:  = Me.Fields
  loc_B9F552: FLdPr var_F4
  loc_B9F555: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F55A: LitI2_Byte 0
  loc_B9F55C: LitI4 1
  loc_B9F561: FLdPr Me
  loc_B9F564: MemLdStr global_104
  loc_B9F567: AryLock
  loc_B9F56A: Ary1LdPr
  loc_B9F56B: MemLdRfVar from_stack_1.global_24
  loc_B9F56E: CVarRef
  loc_B9F573: LitI2_Byte &HFF
  loc_B9F575: FLdZeroAd var_138
  loc_B9F578: CVarAd
  loc_B9F57C: PopAdLdVar
  loc_B9F57D: FLdPr Me
  loc_B9F580: MemLdI2 global_100
  loc_B9F583: CI4UI1
  loc_B9F584: FLdPr Me
  loc_B9F587: MemLdStr global_96
  loc_B9F58A: AryLock
  loc_B9F58D: Ary1LdPr
  loc_B9F58E: MemLdRfVar from_stack_1.global_40
  loc_B9F591: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F596: AryUnlock
  loc_B9F599: AryUnlock
  loc_B9F59C: FFreeAd var_A8 = ""
  loc_B9F5A3: FFree1Var var_104 = ""
  loc_B9F5A6: FLdRfVar var_138
  loc_B9F5A9: LitVarStr var_94, "mapa"
  loc_B9F5AE: PopAdLdVar
  loc_B9F5AF: FLdRfVar var_F4
  loc_B9F5B2: FLdRfVar var_A8
  loc_B9F5B5: FLdPr var_B0
  loc_B9F5B8: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F5BD: FLdPr var_A8
  loc_B9F5C0:  = Me.Fields
  loc_B9F5C5: FLdPr var_F4
  loc_B9F5C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F5CD: LitI2_Byte 0
  loc_B9F5CF: LitI4 1
  loc_B9F5D4: FLdPr Me
  loc_B9F5D7: MemLdStr global_104
  loc_B9F5DA: AryLock
  loc_B9F5DD: Ary1LdPr
  loc_B9F5DE: MemLdRfVar from_stack_1.global_28
  loc_B9F5E1: CVarRef
  loc_B9F5E6: LitI2_Byte &HFF
  loc_B9F5E8: FLdZeroAd var_138
  loc_B9F5EB: CVarAd
  loc_B9F5EF: PopAdLdVar
  loc_B9F5F0: FLdPr Me
  loc_B9F5F3: MemLdI2 global_100
  loc_B9F5F6: CI4UI1
  loc_B9F5F7: FLdPr Me
  loc_B9F5FA: MemLdStr global_96
  loc_B9F5FD: AryLock
  loc_B9F600: Ary1LdPr
  loc_B9F601: MemLdRfVar from_stack_1.global_44
  loc_B9F604: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F609: AryUnlock
  loc_B9F60C: AryUnlock
  loc_B9F60F: FFreeAd var_A8 = ""
  loc_B9F616: FFree1Var var_104 = ""
  loc_B9F619: FLdRfVar var_138
  loc_B9F61C: LitVarStr var_94, "Paga"
  loc_B9F621: PopAdLdVar
  loc_B9F622: FLdRfVar var_F4
  loc_B9F625: FLdRfVar var_A8
  loc_B9F628: FLdPr var_B0
  loc_B9F62B: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F630: FLdPr var_A8
  loc_B9F633:  = Me.Fields
  loc_B9F638: FLdPr var_F4
  loc_B9F63B: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F640: LitI2_Byte 0
  loc_B9F642: LitI4 1
  loc_B9F647: FLdPr Me
  loc_B9F64A: MemLdStr global_104
  loc_B9F64D: AryLock
  loc_B9F650: Ary1LdPr
  loc_B9F651: MemLdRfVar from_stack_1.global_32
  loc_B9F654: CVarRef
  loc_B9F659: LitI2_Byte &HFF
  loc_B9F65B: FLdZeroAd var_138
  loc_B9F65E: CVarAd
  loc_B9F662: PopAdLdVar
  loc_B9F663: FLdPr Me
  loc_B9F666: MemLdI2 global_100
  loc_B9F669: CI4UI1
  loc_B9F66A: FLdPr Me
  loc_B9F66D: MemLdStr global_96
  loc_B9F670: AryLock
  loc_B9F673: Ary1LdPr
  loc_B9F674: MemLdRfVar from_stack_1.global_48
  loc_B9F677: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F67C: AryUnlock
  loc_B9F67F: AryUnlock
  loc_B9F682: FFreeAd var_A8 = ""
  loc_B9F689: FFree1Var var_104 = ""
  loc_B9F68C: FLdRfVar var_138
  loc_B9F68F: LitVarStr var_94, "resi"
  loc_B9F694: PopAdLdVar
  loc_B9F695: FLdRfVar var_F4
  loc_B9F698: FLdRfVar var_A8
  loc_B9F69B: FLdPr var_B0
  loc_B9F69E: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F6A3: FLdPr var_A8
  loc_B9F6A6:  = Me.Fields
  loc_B9F6AB: FLdPr var_F4
  loc_B9F6AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F6B3: LitI2_Byte 0
  loc_B9F6B5: LitI4 1
  loc_B9F6BA: FLdPr Me
  loc_B9F6BD: MemLdStr global_104
  loc_B9F6C0: AryLock
  loc_B9F6C3: Ary1LdPr
  loc_B9F6C4: MemLdRfVar from_stack_1.global_36
  loc_B9F6C7: CVarRef
  loc_B9F6CC: LitI2_Byte &HFF
  loc_B9F6CE: FLdZeroAd var_138
  loc_B9F6D1: CVarAd
  loc_B9F6D5: PopAdLdVar
  loc_B9F6D6: FLdPr Me
  loc_B9F6D9: MemLdI2 global_100
  loc_B9F6DC: CI4UI1
  loc_B9F6DD: FLdPr Me
  loc_B9F6E0: MemLdStr global_96
  loc_B9F6E3: AryLock
  loc_B9F6E6: Ary1LdPr
  loc_B9F6E7: MemLdRfVar from_stack_1.bLogos
  loc_B9F6EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F6EF: AryUnlock
  loc_B9F6F2: AryUnlock
  loc_B9F6F5: FFreeAd var_A8 = ""
  loc_B9F6FC: FFree1Var var_104 = ""
  loc_B9F6FF: FLdRfVar var_138
  loc_B9F702: LitVarStr var_94, "Saldo"
  loc_B9F707: PopAdLdVar
  loc_B9F708: FLdRfVar var_F4
  loc_B9F70B: FLdRfVar var_A8
  loc_B9F70E: FLdPr var_B0
  loc_B9F711: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F716: FLdPr var_A8
  loc_B9F719:  = Me.Fields
  loc_B9F71E: FLdPr var_F4
  loc_B9F721: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F726: LitI2_Byte 0
  loc_B9F728: LitI4 1
  loc_B9F72D: FLdPr Me
  loc_B9F730: MemLdStr global_104
  loc_B9F733: AryLock
  loc_B9F736: Ary1LdPr
  loc_B9F737: MemLdRfVar from_stack_1.global_40
  loc_B9F73A: CVarRef
  loc_B9F73F: LitI2_Byte &HFF
  loc_B9F741: FLdZeroAd var_138
  loc_B9F744: CVarAd
  loc_B9F748: PopAdLdVar
  loc_B9F749: FLdPr Me
  loc_B9F74C: MemLdI2 global_100
  loc_B9F74F: CI4UI1
  loc_B9F750: FLdPr Me
  loc_B9F753: MemLdStr global_96
  loc_B9F756: AryLock
  loc_B9F759: Ary1LdPr
  loc_B9F75A: MemLdRfVar from_stack_1.global_56
  loc_B9F75D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F762: AryUnlock
  loc_B9F765: AryUnlock
  loc_B9F768: FFreeAd var_A8 = ""
  loc_B9F76F: FFree1Var var_104 = ""
  loc_B9F772: FLdRfVar var_138
  loc_B9F775: LitVarStr var_94, "deuda"
  loc_B9F77A: PopAdLdVar
  loc_B9F77B: FLdRfVar var_F4
  loc_B9F77E: FLdRfVar var_A8
  loc_B9F781: FLdPr var_B0
  loc_B9F784: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F789: FLdPr var_A8
  loc_B9F78C:  = Me.Fields
  loc_B9F791: FLdPr var_F4
  loc_B9F794: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F799: LitI2_Byte 0
  loc_B9F79B: LitI4 1
  loc_B9F7A0: FLdPr Me
  loc_B9F7A3: MemLdStr global_104
  loc_B9F7A6: AryLock
  loc_B9F7A9: Ary1LdPr
  loc_B9F7AA: MemLdRfVar from_stack_1.global_44
  loc_B9F7AD: CVarRef
  loc_B9F7B2: LitI2_Byte &HFF
  loc_B9F7B4: FLdZeroAd var_138
  loc_B9F7B7: CVarAd
  loc_B9F7BB: PopAdLdVar
  loc_B9F7BC: FLdPr Me
  loc_B9F7BF: MemLdI2 global_100
  loc_B9F7C2: CI4UI1
  loc_B9F7C3: FLdPr Me
  loc_B9F7C6: MemLdStr global_96
  loc_B9F7C9: AryLock
  loc_B9F7CC: Ary1LdPr
  loc_B9F7CD: MemLdRfVar from_stack_1.global_60
  loc_B9F7D0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F7D5: AryUnlock
  loc_B9F7D8: AryUnlock
  loc_B9F7DB: FFreeAd var_A8 = ""
  loc_B9F7E2: FFree1Var var_104 = ""
  loc_B9F7E5: LitStr "Municipalidad de Guaymallén"
  loc_B9F7E8: LitStr "Municipalidad de Guaymallén"
  loc_B9F7EB: EqStr
  loc_B9F7ED: BranchF loc_B9F8BC
  loc_B9F7F0: FLdRfVar var_138
  loc_B9F7F3: LitVarStr var_94, "transferido"
  loc_B9F7F8: PopAdLdVar
  loc_B9F7F9: FLdRfVar var_F4
  loc_B9F7FC: FLdRfVar var_A8
  loc_B9F7FF: FLdPr var_B0
  loc_B9F802: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F807: FLdPr var_A8
  loc_B9F80A:  = Me.Fields
  loc_B9F80F: FLdPr var_F4
  loc_B9F812: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F817: FLdRfVar var_114
  loc_B9F81A: FLdZeroAd var_138
  loc_B9F81D: CVarAd
  loc_B9F821: ImpAdCallHresult  = CDec()
  loc_B9F826: FLdRfVar var_164
  loc_B9F829: LitVarStr var_A4, "rentas"
  loc_B9F82E: PopAdLdVar
  loc_B9F82F: FLdRfVar var_160
  loc_B9F832: FLdRfVar var_15C
  loc_B9F835: FLdPr var_B0
  loc_B9F838: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F83D: FLdPr var_15C
  loc_B9F840:  = Me.Fields
  loc_B9F845: FLdPr var_160
  loc_B9F848: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F84D: FLdRfVar var_148
  loc_B9F850: FLdZeroAd var_164
  loc_B9F853: CVarAd
  loc_B9F857: ImpAdCallHresult  = CDec()
  loc_B9F85C: LitI2_Byte 0
  loc_B9F85E: LitI4 1
  loc_B9F863: FLdPr Me
  loc_B9F866: MemLdStr global_104
  loc_B9F869: AryLock
  loc_B9F86C: Ary1LdPr
  loc_B9F86D: MemLdRfVar from_stack_1.global_48
  loc_B9F870: CVarRef
  loc_B9F875: LitI2_Byte &HFF
  loc_B9F877: FLdRfVar var_114
  loc_B9F87A: FLdRfVar var_148
  loc_B9F87D: AddVar var_174
  loc_B9F881: PopAdLdVar
  loc_B9F882: FLdPr Me
  loc_B9F885: MemLdI2 global_100
  loc_B9F888: CI4UI1
  loc_B9F889: FLdPr Me
  loc_B9F88C: MemLdStr global_96
  loc_B9F88F: AryLock
  loc_B9F892: Ary1LdPr
  loc_B9F893: MemLdRfVar from_stack_1.global_64
  loc_B9F896: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F89B: AryUnlock
  loc_B9F89E: AryUnlock
  loc_B9F8A1: FFreeAd var_A8 = "": var_F4 = "": var_15C = ""
  loc_B9F8AC: FFreeVar var_104 = "": var_124 = "": var_114 = "": var_148 = ""
  loc_B9F8B9: Branch loc_B9F92F
  loc_B9F8BC: FLdRfVar var_138
  loc_B9F8BF: LitVarStr var_94, "transferido"
  loc_B9F8C4: PopAdLdVar
  loc_B9F8C5: FLdRfVar var_F4
  loc_B9F8C8: FLdRfVar var_A8
  loc_B9F8CB: FLdPr var_B0
  loc_B9F8CE: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F8D3: FLdPr var_A8
  loc_B9F8D6:  = Me.Fields
  loc_B9F8DB: FLdPr var_F4
  loc_B9F8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F8E3: LitI2_Byte 0
  loc_B9F8E5: LitI4 1
  loc_B9F8EA: FLdPr Me
  loc_B9F8ED: MemLdStr global_104
  loc_B9F8F0: AryLock
  loc_B9F8F3: Ary1LdPr
  loc_B9F8F4: MemLdRfVar from_stack_1.global_48
  loc_B9F8F7: CVarRef
  loc_B9F8FC: LitI2_Byte &HFF
  loc_B9F8FE: FLdZeroAd var_138
  loc_B9F901: CVarAd
  loc_B9F905: PopAdLdVar
  loc_B9F906: FLdPr Me
  loc_B9F909: MemLdI2 global_100
  loc_B9F90C: CI4UI1
  loc_B9F90D: FLdPr Me
  loc_B9F910: MemLdStr global_96
  loc_B9F913: AryLock
  loc_B9F916: Ary1LdPr
  loc_B9F917: MemLdRfVar from_stack_1.global_64
  loc_B9F91A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F91F: AryUnlock
  loc_B9F922: AryUnlock
  loc_B9F925: FFreeAd var_A8 = ""
  loc_B9F92C: FFree1Var var_104 = ""
  loc_B9F92F: FLdRfVar var_138
  loc_B9F932: LitVarStr var_94, "rentas"
  loc_B9F937: PopAdLdVar
  loc_B9F938: FLdRfVar var_F4
  loc_B9F93B: FLdRfVar var_A8
  loc_B9F93E: FLdPr var_B0
  loc_B9F941: from_stack_1v = clsasiento.RsFrmGet()
  loc_B9F946: FLdPr var_A8
  loc_B9F949:  = Me.Fields
  loc_B9F94E: FLdPr var_F4
  loc_B9F951: from_stack_2 = Me.Item(from_stack_1)
  loc_B9F956: LitI2_Byte 0
  loc_B9F958: LitI4 1
  loc_B9F95D: FLdPr Me
  loc_B9F960: MemLdStr global_104
  loc_B9F963: AryLock
  loc_B9F966: Ary1LdPr
  loc_B9F967: MemLdRfVar from_stack_1.bLogos
  loc_B9F96A: CVarRef
  loc_B9F96F: LitI2_Byte &HFF
  loc_B9F971: FLdZeroAd var_138
  loc_B9F974: CVarAd
  loc_B9F978: PopAdLdVar
  loc_B9F979: FLdPr Me
  loc_B9F97C: MemLdI2 global_100
  loc_B9F97F: CI4UI1
  loc_B9F980: FLdPr Me
  loc_B9F983: MemLdStr global_96
  loc_B9F986: AryLock
  loc_B9F989: Ary1LdPr
  loc_B9F98A: MemLdRfVar from_stack_1.global_68
  loc_B9F98D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9F992: AryUnlock
  loc_B9F995: AryUnlock
  loc_B9F998: FFreeAd var_A8 = ""
  loc_B9F99F: FFree1Var var_104 = ""
  loc_B9F9A2: FLdPr var_B0
  loc_B9F9A5: Call clsasiento.MoveSiguiente()
  loc_B9F9AA: FLdPr Me
  loc_B9F9AD: MemLdRfVar from_stack_1.global_100
  loc_B9F9B0: NextI2 var_150, loc_B9F114
  loc_B9F9B5: LitNothing
  loc_B9F9B7: FStAd var_B0 
  loc_B9F9BB: LitI2_Byte &HFF
  loc_B9F9BD: FLdPr Me
  loc_B9F9C0: MemStI2 bGenerado
  loc_B9F9C3: LitI2_Byte 0
  loc_B9F9C5: FLdPr Me
  loc_B9F9C8: Me.MousePointer = from_stack_1
  loc_B9F9CD: LitVarStr var_94, vbNullString
  loc_B9F9D2: PopAdLdVar
  loc_B9F9D3: FLdPr Me
  loc_B9F9D6: VCallAd Control_ID_statusBar
  loc_B9F9D9: FStAdFunc var_A8
  loc_B9F9DC: FLdPr var_A8
  loc_B9F9DF: LateIdSt
  loc_B9F9E4: FFree1Ad var_A8
  loc_B9F9E7: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ADCBD0
  'Data Table: 4991D4
  loc_ADC520: FLdRfVar var_88
  loc_ADC523: LitI2_Byte 0
  loc_ADC525: LitI2_Byte &HFF
  loc_ADC527: ImpAdLdI4 MemVar_C3D83C
  loc_ADC52A: FLdPr Me
  loc_ADC52D: MemLdRfVar from_stack_1.global_60
  loc_ADC530: NewIfNullPr IFileSystem3
  loc_ADC533: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADC538: ILdRf var_88
  loc_ADC53B: FLdPr Me
  loc_ADC53E: MemStVarAd
  loc_ADC542: FFree1Ad var_88
  loc_ADC545: Call Proc_151_25_AFC5CC()
  loc_ADC54A: LitI2_Byte 1
  loc_ADC54C: FLdPr Me
  loc_ADC54F: MemLdRfVar from_stack_1.global_100
  loc_ADC552: FLdPr Me
  loc_ADC555: MemLdStr global_96
  loc_ADC558: LitI2_Byte 1
  loc_ADC55A: FnUBound
  loc_ADC55C: CI2I4
  loc_ADC55D: ForI2 var_8C
  loc_ADC563: FLdPr Me
  loc_ADC566: MemLdI2 global_100
  loc_ADC569: CI4UI1
  loc_ADC56A: FLdPr Me
  loc_ADC56D: MemLdStr global_96
  loc_ADC570: AryLock
  loc_ADC573: Ary1LdRf
  loc_ADC574: FStR4 var_94
  loc_ADC577: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC57C: PopAdLdVar
  loc_ADC57D: FLdPr Me
  loc_ADC580: MemLdRfVar from_stack_1.global_80
  loc_ADC583: LdPrVar
  loc_ADC585: LateMemCall
  loc_ADC58B: LitI4 0
  loc_ADC590: LitI4 0
  loc_ADC595: LitI2_Byte 0
  loc_ADC597: LitStr "left"
  loc_ADC59A: FMemLdR4 var_94(0)
  loc_ADC59F: LitStr "<br>"
  loc_ADC5A2: ConcatStr
  loc_ADC5A3: FStStrNoPop var_B8
  loc_ADC5A6: FMemLdR4 var_94(4)
  loc_ADC5AB: ConcatStr
  loc_ADC5AC: FStStrNoPop var_BC
  loc_ADC5AF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC5B4: CVarStr var_CC
  loc_ADC5B7: PopAdLdVar
  loc_ADC5B8: FLdPr Me
  loc_ADC5BB: MemLdRfVar from_stack_1.global_80
  loc_ADC5BE: LdPrVar
  loc_ADC5C0: LateMemCall
  loc_ADC5C6: FFreeStr var_B8 = ""
  loc_ADC5CD: FFree1Var var_CC = ""
  loc_ADC5D0: FMemLdRf unk_499141
  loc_ADC5D5: FStR4 var_D0
  loc_ADC5D8: LitI4 0
  loc_ADC5DD: LitI4 0
  loc_ADC5E2: LitI2_Byte 0
  loc_ADC5E4: LitI4 0
  loc_ADC5E9: FMemLdR4 var_D0(0)
  loc_ADC5EE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC5F3: CVarStr var_CC
  loc_ADC5F6: PopAdLdVar
  loc_ADC5F7: FLdPr Me
  loc_ADC5FA: MemLdRfVar from_stack_1.global_80
  loc_ADC5FD: LdPrVar
  loc_ADC5FF: LateMemCall
  loc_ADC605: FFree1Var var_CC = ""
  loc_ADC608: LitI4 0
  loc_ADC60D: LitI4 0
  loc_ADC612: LitI2_Byte 0
  loc_ADC614: LitStr "left"
  loc_ADC617: FMemLdR4 var_D0(4)
  loc_ADC61C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC621: CVarStr var_CC
  loc_ADC624: PopAdLdVar
  loc_ADC625: FLdPr Me
  loc_ADC628: MemLdRfVar from_stack_1.global_80
  loc_ADC62B: LdPrVar
  loc_ADC62D: LateMemCall
  loc_ADC633: FFree1Var var_CC = ""
  loc_ADC636: LitI4 0
  loc_ADC63B: LitI4 0
  loc_ADC640: LitI2_Byte 0
  loc_ADC642: LitI4 0
  loc_ADC647: FMemLdR4 var_D0(8)
  loc_ADC64C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC651: CVarStr var_CC
  loc_ADC654: PopAdLdVar
  loc_ADC655: FLdPr Me
  loc_ADC658: MemLdRfVar from_stack_1.global_80
  loc_ADC65B: LdPrVar
  loc_ADC65D: LateMemCall
  loc_ADC663: FFree1Var var_CC = ""
  loc_ADC666: LitI4 0
  loc_ADC66B: LitI4 0
  loc_ADC670: LitI2_Byte 0
  loc_ADC672: LitI4 0
  loc_ADC677: FMemLdR4 var_D0(12)
  loc_ADC67C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC681: CVarStr var_CC
  loc_ADC684: PopAdLdVar
  loc_ADC685: FLdPr Me
  loc_ADC688: MemLdRfVar from_stack_1.global_80
  loc_ADC68B: LdPrVar
  loc_ADC68D: LateMemCall
  loc_ADC693: FFree1Var var_CC = ""
  loc_ADC696: LitI4 0
  loc_ADC69B: LitI4 0
  loc_ADC6A0: LitI2_Byte 0
  loc_ADC6A2: LitI4 0
  loc_ADC6A7: FMemLdR4 var_D0(16)
  loc_ADC6AC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC6B1: CVarStr var_CC
  loc_ADC6B4: PopAdLdVar
  loc_ADC6B5: FLdPr Me
  loc_ADC6B8: MemLdRfVar from_stack_1.global_80
  loc_ADC6BB: LdPrVar
  loc_ADC6BD: LateMemCall
  loc_ADC6C3: FFree1Var var_CC = ""
  loc_ADC6C6: LitI4 0
  loc_ADC6CB: LitI4 0
  loc_ADC6D0: LitI2_Byte 0
  loc_ADC6D2: LitI4 0
  loc_ADC6D7: FMemLdR4 var_D0(20)
  loc_ADC6DC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC6E1: CVarStr var_CC
  loc_ADC6E4: PopAdLdVar
  loc_ADC6E5: FLdPr Me
  loc_ADC6E8: MemLdRfVar from_stack_1.global_80
  loc_ADC6EB: LdPrVar
  loc_ADC6ED: LateMemCall
  loc_ADC6F3: FFree1Var var_CC = ""
  loc_ADC6F6: LitI4 0
  loc_ADC6FB: LitI4 0
  loc_ADC700: LitI2_Byte 0
  loc_ADC702: LitI4 0
  loc_ADC707: FMemLdR4 var_D0(24)
  loc_ADC70C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC711: CVarStr var_CC
  loc_ADC714: PopAdLdVar
  loc_ADC715: FLdPr Me
  loc_ADC718: MemLdRfVar from_stack_1.global_80
  loc_ADC71B: LdPrVar
  loc_ADC71D: LateMemCall
  loc_ADC723: FFree1Var var_CC = ""
  loc_ADC726: LitI4 0
  loc_ADC72B: LitI4 0
  loc_ADC730: LitI2_Byte 0
  loc_ADC732: LitI4 0
  loc_ADC737: FMemLdR4 var_D0(28)
  loc_ADC73C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC741: CVarStr var_CC
  loc_ADC744: PopAdLdVar
  loc_ADC745: FLdPr Me
  loc_ADC748: MemLdRfVar from_stack_1.global_80
  loc_ADC74B: LdPrVar
  loc_ADC74D: LateMemCall
  loc_ADC753: FFree1Var var_CC = ""
  loc_ADC756: LitI4 0
  loc_ADC75B: LitI4 0
  loc_ADC760: LitI2_Byte 0
  loc_ADC762: LitI4 0
  loc_ADC767: FMemLdR4 var_D0(32)
  loc_ADC76C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC771: CVarStr var_CC
  loc_ADC774: PopAdLdVar
  loc_ADC775: FLdPr Me
  loc_ADC778: MemLdRfVar from_stack_1.global_80
  loc_ADC77B: LdPrVar
  loc_ADC77D: LateMemCall
  loc_ADC783: FFree1Var var_CC = ""
  loc_ADC786: LitI4 0
  loc_ADC78B: LitI4 0
  loc_ADC790: LitI2_Byte 0
  loc_ADC792: LitI4 0
  loc_ADC797: FMemLdR4 var_D0(36)
  loc_ADC79C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC7A1: CVarStr var_CC
  loc_ADC7A4: PopAdLdVar
  loc_ADC7A5: FLdPr Me
  loc_ADC7A8: MemLdRfVar from_stack_1.global_80
  loc_ADC7AB: LdPrVar
  loc_ADC7AD: LateMemCall
  loc_ADC7B3: FFree1Var var_CC = ""
  loc_ADC7B6: LitI4 0
  loc_ADC7BB: LitI4 0
  loc_ADC7C0: LitI2_Byte 0
  loc_ADC7C2: LitI4 0
  loc_ADC7C7: FMemLdR4 var_D0(40)
  loc_ADC7CC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC7D1: CVarStr var_CC
  loc_ADC7D4: PopAdLdVar
  loc_ADC7D5: FLdPr Me
  loc_ADC7D8: MemLdRfVar from_stack_1.global_80
  loc_ADC7DB: LdPrVar
  loc_ADC7DD: LateMemCall
  loc_ADC7E3: FFree1Var var_CC = ""
  loc_ADC7E6: LitI4 0
  loc_ADC7EB: LitI4 0
  loc_ADC7F0: LitI2_Byte 0
  loc_ADC7F2: LitI4 0
  loc_ADC7F7: FMemLdR4 var_D0(44)
  loc_ADC7FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC801: CVarStr var_CC
  loc_ADC804: PopAdLdVar
  loc_ADC805: FLdPr Me
  loc_ADC808: MemLdRfVar from_stack_1.global_80
  loc_ADC80B: LdPrVar
  loc_ADC80D: LateMemCall
  loc_ADC813: FFree1Var var_CC = ""
  loc_ADC816: LitI4 0
  loc_ADC81B: LitI4 0
  loc_ADC820: LitI2_Byte 0
  loc_ADC822: LitI4 0
  loc_ADC827: FMemLdR4 var_D0(48)
  loc_ADC82C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC831: CVarStr var_CC
  loc_ADC834: PopAdLdVar
  loc_ADC835: FLdPr Me
  loc_ADC838: MemLdRfVar from_stack_1.global_80
  loc_ADC83B: LdPrVar
  loc_ADC83D: LateMemCall
  loc_ADC843: FFree1Var var_CC = ""
  loc_ADC846: LitI4 0
  loc_ADC84B: LitI4 0
  loc_ADC850: LitI2_Byte 0
  loc_ADC852: LitI4 0
  loc_ADC857: FMemLdR4 var_D0(52)
  loc_ADC85C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC861: CVarStr var_CC
  loc_ADC864: PopAdLdVar
  loc_ADC865: FLdPr Me
  loc_ADC868: MemLdRfVar from_stack_1.global_80
  loc_ADC86B: LdPrVar
  loc_ADC86D: LateMemCall
  loc_ADC873: FFree1Var var_CC = ""
  loc_ADC876: LitI4 0
  loc_ADC87B: FStR4 var_D0
  loc_ADC87E: LitVarStr var_A4, "     </tr>"
  loc_ADC883: PopAdLdVar
  loc_ADC884: FLdPr Me
  loc_ADC887: MemLdRfVar from_stack_1.global_80
  loc_ADC88A: LdPrVar
  loc_ADC88C: LateMemCall
  loc_ADC892: LitI4 0
  loc_ADC897: FStR4 var_94
  loc_ADC89A: AryUnlock
  loc_ADC89D: FLdPr Me
  loc_ADC8A0: MemLdRfVar from_stack_1.global_100
  loc_ADC8A3: NextI2 var_8C, loc_ADC563
  loc_ADC8A8: LitI4 1
  loc_ADC8AD: FLdPr Me
  loc_ADC8B0: MemLdStr global_104
  loc_ADC8B3: AryLock
  loc_ADC8B6: Ary1LdRf
  loc_ADC8B7: FStR4 var_D8
  loc_ADC8BA: LitVarStr var_A4, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_ADC8BF: PopAdLdVar
  loc_ADC8C0: FLdPr Me
  loc_ADC8C3: MemLdRfVar from_stack_1.global_80
  loc_ADC8C6: LdPrVar
  loc_ADC8C8: LateMemCall
  loc_ADC8CE: LitI4 0
  loc_ADC8D3: LitI4 0
  loc_ADC8D8: LitI2_Byte 0
  loc_ADC8DA: LitStr "right"
  loc_ADC8DD: LitStr "TOTAL"
  loc_ADC8E0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC8E5: CVarStr var_CC
  loc_ADC8E8: PopAdLdVar
  loc_ADC8E9: FLdPr Me
  loc_ADC8EC: MemLdRfVar from_stack_1.global_80
  loc_ADC8EF: LdPrVar
  loc_ADC8F1: LateMemCall
  loc_ADC8F7: FFree1Var var_CC = ""
  loc_ADC8FA: LitI4 0
  loc_ADC8FF: LitI4 0
  loc_ADC904: LitI2_Byte 0
  loc_ADC906: LitI4 0
  loc_ADC90B: FMemLdR4 var_D8(0)
  loc_ADC910: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC915: CVarStr var_CC
  loc_ADC918: PopAdLdVar
  loc_ADC919: FLdPr Me
  loc_ADC91C: MemLdRfVar from_stack_1.global_80
  loc_ADC91F: LdPrVar
  loc_ADC921: LateMemCall
  loc_ADC927: FFree1Var var_CC = ""
  loc_ADC92A: LitI4 0
  loc_ADC92F: LitI4 0
  loc_ADC934: LitI2_Byte 0
  loc_ADC936: LitI4 0
  loc_ADC93B: LitStr "<hr align=""center"" width=""40" & Chr(37) & """>"
  loc_ADC93E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC943: CVarStr var_CC
  loc_ADC946: PopAdLdVar
  loc_ADC947: FLdPr Me
  loc_ADC94A: MemLdRfVar from_stack_1.global_80
  loc_ADC94D: LdPrVar
  loc_ADC94F: LateMemCall
  loc_ADC955: FFree1Var var_CC = ""
  loc_ADC958: LitI4 0
  loc_ADC95D: LitI4 0
  loc_ADC962: LitI2_Byte 0
  loc_ADC964: LitI4 0
  loc_ADC969: FMemLdR4 var_D8(8)
  loc_ADC96E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC973: CVarStr var_CC
  loc_ADC976: PopAdLdVar
  loc_ADC977: FLdPr Me
  loc_ADC97A: MemLdRfVar from_stack_1.global_80
  loc_ADC97D: LdPrVar
  loc_ADC97F: LateMemCall
  loc_ADC985: FFree1Var var_CC = ""
  loc_ADC988: LitI4 0
  loc_ADC98D: LitI4 0
  loc_ADC992: LitI2_Byte 0
  loc_ADC994: LitI4 0
  loc_ADC999: FMemLdR4 var_D8(12)
  loc_ADC99E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC9A3: CVarStr var_CC
  loc_ADC9A6: PopAdLdVar
  loc_ADC9A7: FLdPr Me
  loc_ADC9AA: MemLdRfVar from_stack_1.global_80
  loc_ADC9AD: LdPrVar
  loc_ADC9AF: LateMemCall
  loc_ADC9B5: FFree1Var var_CC = ""
  loc_ADC9B8: LitI4 0
  loc_ADC9BD: LitI4 0
  loc_ADC9C2: LitI2_Byte 0
  loc_ADC9C4: LitI4 0
  loc_ADC9C9: FMemLdR4 var_D8(16)
  loc_ADC9CE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC9D3: CVarStr var_CC
  loc_ADC9D6: PopAdLdVar
  loc_ADC9D7: FLdPr Me
  loc_ADC9DA: MemLdRfVar from_stack_1.global_80
  loc_ADC9DD: LdPrVar
  loc_ADC9DF: LateMemCall
  loc_ADC9E5: FFree1Var var_CC = ""
  loc_ADC9E8: LitI4 0
  loc_ADC9ED: LitI4 0
  loc_ADC9F2: LitI2_Byte 0
  loc_ADC9F4: LitI4 0
  loc_ADC9F9: FMemLdR4 var_D8(20)
  loc_ADC9FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCA03: CVarStr var_CC
  loc_ADCA06: PopAdLdVar
  loc_ADCA07: FLdPr Me
  loc_ADCA0A: MemLdRfVar from_stack_1.global_80
  loc_ADCA0D: LdPrVar
  loc_ADCA0F: LateMemCall
  loc_ADCA15: FFree1Var var_CC = ""
  loc_ADCA18: LitI4 0
  loc_ADCA1D: LitI4 0
  loc_ADCA22: LitI2_Byte 0
  loc_ADCA24: LitI4 0
  loc_ADCA29: FMemLdR4 var_D8(24)
  loc_ADCA2E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCA33: CVarStr var_CC
  loc_ADCA36: PopAdLdVar
  loc_ADCA37: FLdPr Me
  loc_ADCA3A: MemLdRfVar from_stack_1.global_80
  loc_ADCA3D: LdPrVar
  loc_ADCA3F: LateMemCall
  loc_ADCA45: FFree1Var var_CC = ""
  loc_ADCA48: LitI4 0
  loc_ADCA4D: LitI4 0
  loc_ADCA52: LitI2_Byte 0
  loc_ADCA54: LitI4 0
  loc_ADCA59: FMemLdR4 var_D8(28)
  loc_ADCA5E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCA63: CVarStr var_CC
  loc_ADCA66: PopAdLdVar
  loc_ADCA67: FLdPr Me
  loc_ADCA6A: MemLdRfVar from_stack_1.global_80
  loc_ADCA6D: LdPrVar
  loc_ADCA6F: LateMemCall
  loc_ADCA75: FFree1Var var_CC = ""
  loc_ADCA78: LitI4 0
  loc_ADCA7D: LitI4 0
  loc_ADCA82: LitI2_Byte 0
  loc_ADCA84: LitI4 0
  loc_ADCA89: FMemLdR4 var_D8(32)
  loc_ADCA8E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCA93: CVarStr var_CC
  loc_ADCA96: PopAdLdVar
  loc_ADCA97: FLdPr Me
  loc_ADCA9A: MemLdRfVar from_stack_1.global_80
  loc_ADCA9D: LdPrVar
  loc_ADCA9F: LateMemCall
  loc_ADCAA5: FFree1Var var_CC = ""
  loc_ADCAA8: LitI4 0
  loc_ADCAAD: LitI4 0
  loc_ADCAB2: LitI2_Byte 0
  loc_ADCAB4: LitI4 0
  loc_ADCAB9: FMemLdR4 var_D8(36)
  loc_ADCABE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCAC3: CVarStr var_CC
  loc_ADCAC6: PopAdLdVar
  loc_ADCAC7: FLdPr Me
  loc_ADCACA: MemLdRfVar from_stack_1.global_80
  loc_ADCACD: LdPrVar
  loc_ADCACF: LateMemCall
  loc_ADCAD5: FFree1Var var_CC = ""
  loc_ADCAD8: LitI4 0
  loc_ADCADD: LitI4 0
  loc_ADCAE2: LitI2_Byte 0
  loc_ADCAE4: LitI4 0
  loc_ADCAE9: FMemLdR4 var_D8(40)
  loc_ADCAEE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCAF3: CVarStr var_CC
  loc_ADCAF6: PopAdLdVar
  loc_ADCAF7: FLdPr Me
  loc_ADCAFA: MemLdRfVar from_stack_1.global_80
  loc_ADCAFD: LdPrVar
  loc_ADCAFF: LateMemCall
  loc_ADCB05: FFree1Var var_CC = ""
  loc_ADCB08: LitI4 0
  loc_ADCB0D: LitI4 0
  loc_ADCB12: LitI2_Byte 0
  loc_ADCB14: LitI4 0
  loc_ADCB19: FMemLdR4 var_D8(44)
  loc_ADCB1E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCB23: CVarStr var_CC
  loc_ADCB26: PopAdLdVar
  loc_ADCB27: FLdPr Me
  loc_ADCB2A: MemLdRfVar from_stack_1.global_80
  loc_ADCB2D: LdPrVar
  loc_ADCB2F: LateMemCall
  loc_ADCB35: FFree1Var var_CC = ""
  loc_ADCB38: LitI4 0
  loc_ADCB3D: LitI4 0
  loc_ADCB42: LitI2_Byte 0
  loc_ADCB44: LitI4 0
  loc_ADCB49: FMemLdR4 var_D8(48)
  loc_ADCB4E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCB53: CVarStr var_CC
  loc_ADCB56: PopAdLdVar
  loc_ADCB57: FLdPr Me
  loc_ADCB5A: MemLdRfVar from_stack_1.global_80
  loc_ADCB5D: LdPrVar
  loc_ADCB5F: LateMemCall
  loc_ADCB65: FFree1Var var_CC = ""
  loc_ADCB68: LitI4 0
  loc_ADCB6D: LitI4 0
  loc_ADCB72: LitI2_Byte 0
  loc_ADCB74: LitI4 0
  loc_ADCB79: FMemLdR4 var_D8(52)
  loc_ADCB7E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCB83: CVarStr var_CC
  loc_ADCB86: PopAdLdVar
  loc_ADCB87: FLdPr Me
  loc_ADCB8A: MemLdRfVar from_stack_1.global_80
  loc_ADCB8D: LdPrVar
  loc_ADCB8F: LateMemCall
  loc_ADCB95: FFree1Var var_CC = ""
  loc_ADCB98: LitVarStr var_A4, "     </tr>"
  loc_ADCB9D: PopAdLdVar
  loc_ADCB9E: FLdPr Me
  loc_ADCBA1: MemLdRfVar from_stack_1.global_80
  loc_ADCBA4: LdPrVar
  loc_ADCBA6: LateMemCall
  loc_ADCBAC: LitI4 0
  loc_ADCBB1: FStR4 var_D8
  loc_ADCBB4: AryUnlock
  loc_ADCBB7: Call Proc_151_26_A05398()
  loc_ADCBBC: FLdPr Me
  loc_ADCBBF: MemLdRfVar from_stack_1.global_80
  loc_ADCBC2: LdPrVar
  loc_ADCBC4: LateMemCall
  loc_ADCBCA: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADCBCF: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94BA24
  'Data Table: 4991D4
  loc_94BA0C: LitI2_Byte 0
  loc_94BA0E: FLdPr Me
  loc_94BA11: MemStI2 bLogos
  loc_94BA14: Call GeneraHTML()
  loc_94BA19: LitI2_Byte &HFF
  loc_94BA1B: FLdPr Me
  loc_94BA1E: MemStI2 bLogos
  loc_94BA21: ExitProcHresult
End Sub

Private Function Proc_151_25_AFC5CC() 'AFC5CC
  'Data Table: 4991D4
  loc_AFBE58: LitVarStr var_94, "<html>"
  loc_AFBE5D: PopAdLdVar
  loc_AFBE5E: FLdPr Me
  loc_AFBE61: MemLdRfVar from_stack_1.global_80
  loc_AFBE64: LdPrVar
  loc_AFBE66: LateMemCall
  loc_AFBE6C: LitVarStr var_94, "<head>"
  loc_AFBE71: PopAdLdVar
  loc_AFBE72: FLdPr Me
  loc_AFBE75: MemLdRfVar from_stack_1.global_80
  loc_AFBE78: LdPrVar
  loc_AFBE7A: LateMemCall
  loc_AFBE80: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AFBE85: PopAdLdVar
  loc_AFBE86: FLdPr Me
  loc_AFBE89: MemLdRfVar from_stack_1.global_80
  loc_AFBE8C: LdPrVar
  loc_AFBE8E: LateMemCall
  loc_AFBE94: LitStr "<title>"
  loc_AFBE97: FLdRfVar var_A8
  loc_AFBE9A: FLdPr Me
  loc_AFBE9D:  = Me.Caption
  loc_AFBEA2: ILdRf var_A8
  loc_AFBEA5: ConcatStr
  loc_AFBEA6: FStStrNoPop var_AC
  loc_AFBEA9: LitStr " - "
  loc_AFBEAC: ConcatStr
  loc_AFBEAD: FStStrNoPop var_B0
  loc_AFBEB0: LitStr "Municipalidad de Guaymallén"
  loc_AFBEB3: ConcatStr
  loc_AFBEB4: FStStrNoPop var_B4
  loc_AFBEB7: LitStr "</title>"
  loc_AFBEBA: ConcatStr
  loc_AFBEBB: CVarStr var_C4
  loc_AFBEBE: PopAdLdVar
  loc_AFBEBF: FLdPr Me
  loc_AFBEC2: MemLdRfVar from_stack_1.global_80
  loc_AFBEC5: LdPrVar
  loc_AFBEC7: LateMemCall
  loc_AFBECD: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AFBED8: FFree1Var var_C4 = ""
  loc_AFBEDB: LitVarStr var_94, "<style type=""text/css"">"
  loc_AFBEE0: PopAdLdVar
  loc_AFBEE1: FLdPr Me
  loc_AFBEE4: MemLdRfVar from_stack_1.global_80
  loc_AFBEE7: LdPrVar
  loc_AFBEE9: LateMemCall
  loc_AFBEEF: LitVarStr var_94, ".Titulo1 {"
  loc_AFBEF4: PopAdLdVar
  loc_AFBEF5: FLdPr Me
  loc_AFBEF8: MemLdRfVar from_stack_1.global_80
  loc_AFBEFB: LdPrVar
  loc_AFBEFD: LateMemCall
  loc_AFBF03: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AFBF08: PopAdLdVar
  loc_AFBF09: FLdPr Me
  loc_AFBF0C: MemLdRfVar from_stack_1.global_80
  loc_AFBF0F: LdPrVar
  loc_AFBF11: LateMemCall
  loc_AFBF17: LitVarStr var_94, " font-size: 18px;"
  loc_AFBF1C: PopAdLdVar
  loc_AFBF1D: FLdPr Me
  loc_AFBF20: MemLdRfVar from_stack_1.global_80
  loc_AFBF23: LdPrVar
  loc_AFBF25: LateMemCall
  loc_AFBF2B: LitVarStr var_94, " font-weight: bold;"
  loc_AFBF30: PopAdLdVar
  loc_AFBF31: FLdPr Me
  loc_AFBF34: MemLdRfVar from_stack_1.global_80
  loc_AFBF37: LdPrVar
  loc_AFBF39: LateMemCall
  loc_AFBF3F: LitVarStr var_94, "}"
  loc_AFBF44: PopAdLdVar
  loc_AFBF45: FLdPr Me
  loc_AFBF48: MemLdRfVar from_stack_1.global_80
  loc_AFBF4B: LdPrVar
  loc_AFBF4D: LateMemCall
  loc_AFBF53: LitVarStr var_94, ".Titulo2 {"
  loc_AFBF58: PopAdLdVar
  loc_AFBF59: FLdPr Me
  loc_AFBF5C: MemLdRfVar from_stack_1.global_80
  loc_AFBF5F: LdPrVar
  loc_AFBF61: LateMemCall
  loc_AFBF67: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AFBF6C: PopAdLdVar
  loc_AFBF6D: FLdPr Me
  loc_AFBF70: MemLdRfVar from_stack_1.global_80
  loc_AFBF73: LdPrVar
  loc_AFBF75: LateMemCall
  loc_AFBF7B: LitVarStr var_94, " font-size: 14px;"
  loc_AFBF80: PopAdLdVar
  loc_AFBF81: FLdPr Me
  loc_AFBF84: MemLdRfVar from_stack_1.global_80
  loc_AFBF87: LdPrVar
  loc_AFBF89: LateMemCall
  loc_AFBF8F: LitVarStr var_94, " font-weight: bold;"
  loc_AFBF94: PopAdLdVar
  loc_AFBF95: FLdPr Me
  loc_AFBF98: MemLdRfVar from_stack_1.global_80
  loc_AFBF9B: LdPrVar
  loc_AFBF9D: LateMemCall
  loc_AFBFA3: LitVarStr var_94, "}"
  loc_AFBFA8: PopAdLdVar
  loc_AFBFA9: FLdPr Me
  loc_AFBFAC: MemLdRfVar from_stack_1.global_80
  loc_AFBFAF: LdPrVar
  loc_AFBFB1: LateMemCall
  loc_AFBFB7: LitVarStr var_94, ".Encabezado {"
  loc_AFBFBC: PopAdLdVar
  loc_AFBFBD: FLdPr Me
  loc_AFBFC0: MemLdRfVar from_stack_1.global_80
  loc_AFBFC3: LdPrVar
  loc_AFBFC5: LateMemCall
  loc_AFBFCB: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AFBFD0: PopAdLdVar
  loc_AFBFD1: FLdPr Me
  loc_AFBFD4: MemLdRfVar from_stack_1.global_80
  loc_AFBFD7: LdPrVar
  loc_AFBFD9: LateMemCall
  loc_AFBFDF: LitVarStr var_94, " font-size: 9px;"
  loc_AFBFE4: PopAdLdVar
  loc_AFBFE5: FLdPr Me
  loc_AFBFE8: MemLdRfVar from_stack_1.global_80
  loc_AFBFEB: LdPrVar
  loc_AFBFED: LateMemCall
  loc_AFBFF3: LitVarStr var_94, " font-weight: bold;"
  loc_AFBFF8: PopAdLdVar
  loc_AFBFF9: FLdPr Me
  loc_AFBFFC: MemLdRfVar from_stack_1.global_80
  loc_AFBFFF: LdPrVar
  loc_AFC001: LateMemCall
  loc_AFC007: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AFC00C: PopAdLdVar
  loc_AFC00D: FLdPr Me
  loc_AFC010: MemLdRfVar from_stack_1.global_80
  loc_AFC013: LdPrVar
  loc_AFC015: LateMemCall
  loc_AFC01B: LitVarStr var_94, "}"
  loc_AFC020: PopAdLdVar
  loc_AFC021: FLdPr Me
  loc_AFC024: MemLdRfVar from_stack_1.global_80
  loc_AFC027: LdPrVar
  loc_AFC029: LateMemCall
  loc_AFC02F: LitVarStr var_94, ".LineaDato {"
  loc_AFC034: PopAdLdVar
  loc_AFC035: FLdPr Me
  loc_AFC038: MemLdRfVar from_stack_1.global_80
  loc_AFC03B: LdPrVar
  loc_AFC03D: LateMemCall
  loc_AFC043: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AFC048: PopAdLdVar
  loc_AFC049: FLdPr Me
  loc_AFC04C: MemLdRfVar from_stack_1.global_80
  loc_AFC04F: LdPrVar
  loc_AFC051: LateMemCall
  loc_AFC057: LitVarStr var_94, " font-size: 8px;"
  loc_AFC05C: PopAdLdVar
  loc_AFC05D: FLdPr Me
  loc_AFC060: MemLdRfVar from_stack_1.global_80
  loc_AFC063: LdPrVar
  loc_AFC065: LateMemCall
  loc_AFC06B: LitVarStr var_94, "}"
  loc_AFC070: PopAdLdVar
  loc_AFC071: FLdPr Me
  loc_AFC074: MemLdRfVar from_stack_1.global_80
  loc_AFC077: LdPrVar
  loc_AFC079: LateMemCall
  loc_AFC07F: LitVarStr var_94, ".Totales {"
  loc_AFC084: PopAdLdVar
  loc_AFC085: FLdPr Me
  loc_AFC088: MemLdRfVar from_stack_1.global_80
  loc_AFC08B: LdPrVar
  loc_AFC08D: LateMemCall
  loc_AFC093: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AFC098: PopAdLdVar
  loc_AFC099: FLdPr Me
  loc_AFC09C: MemLdRfVar from_stack_1.global_80
  loc_AFC09F: LdPrVar
  loc_AFC0A1: LateMemCall
  loc_AFC0A7: LitVarStr var_94, " font-size: 9px;"
  loc_AFC0AC: PopAdLdVar
  loc_AFC0AD: FLdPr Me
  loc_AFC0B0: MemLdRfVar from_stack_1.global_80
  loc_AFC0B3: LdPrVar
  loc_AFC0B5: LateMemCall
  loc_AFC0BB: LitVarStr var_94, " font-weight: bold;"
  loc_AFC0C0: PopAdLdVar
  loc_AFC0C1: FLdPr Me
  loc_AFC0C4: MemLdRfVar from_stack_1.global_80
  loc_AFC0C7: LdPrVar
  loc_AFC0C9: LateMemCall
  loc_AFC0CF: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AFC0D4: PopAdLdVar
  loc_AFC0D5: FLdPr Me
  loc_AFC0D8: MemLdRfVar from_stack_1.global_80
  loc_AFC0DB: LdPrVar
  loc_AFC0DD: LateMemCall
  loc_AFC0E3: LitVarStr var_94, "}"
  loc_AFC0E8: PopAdLdVar
  loc_AFC0E9: FLdPr Me
  loc_AFC0EC: MemLdRfVar from_stack_1.global_80
  loc_AFC0EF: LdPrVar
  loc_AFC0F1: LateMemCall
  loc_AFC0F7: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AFC0FC: PopAdLdVar
  loc_AFC0FD: FLdPr Me
  loc_AFC100: MemLdRfVar from_stack_1.global_80
  loc_AFC103: LdPrVar
  loc_AFC105: LateMemCall
  loc_AFC10B: LitVarStr var_94, "</style>"
  loc_AFC110: PopAdLdVar
  loc_AFC111: FLdPr Me
  loc_AFC114: MemLdRfVar from_stack_1.global_80
  loc_AFC117: LdPrVar
  loc_AFC119: LateMemCall
  loc_AFC11F: LitI4 0
  loc_AFC124: FStStrCopy var_AC
  loc_AFC127: FLdRfVar var_AC
  loc_AFC12A: LitI4 0
  loc_AFC12F: FStStrCopy var_A8
  loc_AFC132: FLdRfVar var_A8
  loc_AFC135: LitI2_Byte &HFF
  loc_AFC137: PopTmpLdAd2 var_C6
  loc_AFC13A: FLdPr Me
  loc_AFC13D: MemLdRfVar from_stack_1.global_80
  loc_AFC140: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AFC145: FFreeStr var_A8 = ""
  loc_AFC14C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_AFC151: PopAdLdVar
  loc_AFC152: FLdPr Me
  loc_AFC155: MemLdRfVar from_stack_1.global_80
  loc_AFC158: LdPrVar
  loc_AFC15A: LateMemCall
  loc_AFC160: LitVarStr var_94, "  <tr valign=""center"">"
  loc_AFC165: PopAdLdVar
  loc_AFC166: FLdPr Me
  loc_AFC169: MemLdRfVar from_stack_1.global_80
  loc_AFC16C: LdPrVar
  loc_AFC16E: LateMemCall
  loc_AFC174: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>"
  loc_AFC179: PopAdLdVar
  loc_AFC17A: FLdPr Me
  loc_AFC17D: MemLdRfVar from_stack_1.global_80
  loc_AFC180: LdPrVar
  loc_AFC182: LateMemCall
  loc_AFC188: FLdPr Me
  loc_AFC18B: MemLdI2 bLogos
  loc_AFC18E: BranchF loc_AFC1A5
  loc_AFC191: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AFC196: PopAdLdVar
  loc_AFC197: FLdPr Me
  loc_AFC19A: MemLdRfVar from_stack_1.global_80
  loc_AFC19D: LdPrVar
  loc_AFC19F: LateMemCall
  loc_AFC1A5: LitVarStr var_94, "      <br>ACUERDO<span class=""Titulo2""> N&ordm; 2988 <br>"
  loc_AFC1AA: PopAdLdVar
  loc_AFC1AB: FLdPr Me
  loc_AFC1AE: MemLdRfVar from_stack_1.global_80
  loc_AFC1B1: LdPrVar
  loc_AFC1B3: LateMemCall
  loc_AFC1B9: LitVarStr var_94, "      ANEXO 5: DE LA APLICACIÓN DE LOS RECURSOS AL DESTINO PARA EL QUE FUERON INSTITUIDOS</span></p>"
  loc_AFC1BE: PopAdLdVar
  loc_AFC1BF: FLdPr Me
  loc_AFC1C2: MemLdRfVar from_stack_1.global_80
  loc_AFC1C5: LdPrVar
  loc_AFC1C7: LateMemCall
  loc_AFC1CD: LitVarStr var_94, "    </th>"
  loc_AFC1D2: PopAdLdVar
  loc_AFC1D3: FLdPr Me
  loc_AFC1D6: MemLdRfVar from_stack_1.global_80
  loc_AFC1D9: LdPrVar
  loc_AFC1DB: LateMemCall
  loc_AFC1E1: LitVarStr var_94, "  </tr>"
  loc_AFC1E6: PopAdLdVar
  loc_AFC1E7: FLdPr Me
  loc_AFC1EA: MemLdRfVar from_stack_1.global_80
  loc_AFC1ED: LdPrVar
  loc_AFC1EF: LateMemCall
  loc_AFC1F5: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_AFC1FA: PopAdLdVar
  loc_AFC1FB: FLdPr Me
  loc_AFC1FE: MemLdRfVar from_stack_1.global_80
  loc_AFC201: LdPrVar
  loc_AFC203: LateMemCall
  loc_AFC209: LitStr "    <td colspan=""2"" align=""left"">Repartici&oacute;n/Organismo: "
  loc_AFC20C: LitStr "Municipalidad de Guaymallén"
  loc_AFC20F: ConcatStr
  loc_AFC210: FStStrNoPop var_A8
  loc_AFC213: LitStr "</td>"
  loc_AFC216: ConcatStr
  loc_AFC217: CVarStr var_C4
  loc_AFC21A: PopAdLdVar
  loc_AFC21B: FLdPr Me
  loc_AFC21E: MemLdRfVar from_stack_1.global_80
  loc_AFC221: LdPrVar
  loc_AFC223: LateMemCall
  loc_AFC229: FFree1Str var_A8
  loc_AFC22C: FFree1Var var_C4 = ""
  loc_AFC22F: LitVarStr var_94, "  </tr>"
  loc_AFC234: PopAdLdVar
  loc_AFC235: FLdPr Me
  loc_AFC238: MemLdRfVar from_stack_1.global_80
  loc_AFC23B: LdPrVar
  loc_AFC23D: LateMemCall
  loc_AFC243: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_AFC248: PopAdLdVar
  loc_AFC249: FLdPr Me
  loc_AFC24C: MemLdRfVar from_stack_1.global_80
  loc_AFC24F: LdPrVar
  loc_AFC251: LateMemCall
  loc_AFC257: LitStr "    <td colspan=""2"">Ejercicio: "
  loc_AFC25A: FLdRfVar var_A8
  loc_AFC25D: FLdPr Me
  loc_AFC260: VCallAd Control_ID_cboPeriodo
  loc_AFC263: FStAdFunc var_CC
  loc_AFC266: FLdPr var_CC
  loc_AFC269:  = Me.Text
  loc_AFC26E: ILdRf var_A8
  loc_AFC271: ConcatStr
  loc_AFC272: FStStrNoPop var_AC
  loc_AFC275: LitStr "<br>Hasta: "
  loc_AFC278: ConcatStr
  loc_AFC279: FStStrNoPop var_B0
  loc_AFC27C: FLdPr Me
  loc_AFC27F: VCallAd Control_ID_mskHasta
  loc_AFC282: FStAdFunc var_D0
  loc_AFC285: FLdPr var_D0
  loc_AFC288: LateIdLdVar var_C4 DispID_15 0
  loc_AFC28F: CStrVarTmp
  loc_AFC290: FStStrNoPop var_B4
  loc_AFC293: ConcatStr
  loc_AFC294: CVarStr var_E0
  loc_AFC297: PopAdLdVar
  loc_AFC298: FLdPr Me
  loc_AFC29B: MemLdRfVar from_stack_1.global_80
  loc_AFC29E: LdPrVar
  loc_AFC2A0: LateMemCall
  loc_AFC2A6: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AFC2B1: FFreeAd var_CC = ""
  loc_AFC2B8: FFreeVar var_C4 = ""
  loc_AFC2BF: FLdPr Me
  loc_AFC2C2: VCallAd Control_ID_CodiCucoMsk
  loc_AFC2C5: FStAdFunc var_CC
  loc_AFC2C8: FLdPr var_CC
  loc_AFC2CB: LateIdLdVar var_C4 DispID_22 0
  loc_AFC2D2: CStrVarTmp
  loc_AFC2D3: FStStrNoPop var_A8
  loc_AFC2D6: LitStr vbNullString
  loc_AFC2D9: NeStr
  loc_AFC2DB: FFree1Str var_A8
  loc_AFC2DE: FFree1Ad var_CC
  loc_AFC2E1: FFree1Var var_C4 = ""
  loc_AFC2E4: BranchF loc_AFC398
  loc_AFC2E7: FLdPr Me
  loc_AFC2EA: VCallAd Control_ID_CodiCucoMsk
  loc_AFC2ED: FStAdFunc var_D0
  loc_AFC2F0: FLdPr var_D0
  loc_AFC2F3: LateIdLdVar var_E0 DispID_22 0
  loc_AFC2FA: PopAd
  loc_AFC2FC: LitStr "    <br>Cuenta Contable: "
  loc_AFC2FF: FLdPr Me
  loc_AFC302: VCallAd Control_ID_CodiCucoMsk
  loc_AFC305: FStAdFunc var_CC
  loc_AFC308: FLdPr var_CC
  loc_AFC30B: LateIdLdVar var_C4 DispID_22 0
  loc_AFC312: CStrVarTmp
  loc_AFC313: FStStrNoPop var_A8
  loc_AFC316: ConcatStr
  loc_AFC317: CVarStr var_124
  loc_AFC31A: LitStr " - "
  loc_AFC31D: FLdRfVar var_B0
  loc_AFC320: FLdPr Me
  loc_AFC323: VCallAd Control_ID_DetaCucoLbl
  loc_AFC326: FStAdFunc var_E4
  loc_AFC329: FLdPr var_E4
  loc_AFC32C:  = Me.Caption
  loc_AFC331: ILdRf var_B0
  loc_AFC334: ConcatStr
  loc_AFC335: CVarStr var_104
  loc_AFC338: LitVarStr var_A4, "..."
  loc_AFC33D: FStVarCopyObj var_F4
  loc_AFC340: FLdRfVar var_F4
  loc_AFC343: FLdRfVar var_E0
  loc_AFC346: CStrVarTmp
  loc_AFC347: FStStrNoPop var_AC
  loc_AFC34A: FnLenStr
  loc_AFC34B: LitI4 &HA
  loc_AFC350: LtI4
  loc_AFC351: CVarBoolI2 var_94
  loc_AFC355: FLdRfVar var_114
  loc_AFC358: ImpAdCallFPR4  = IIf(, , )
  loc_AFC35D: FLdRfVar var_114
  loc_AFC360: ConcatVar var_134
  loc_AFC364: PopAdLdVar
  loc_AFC365: FLdPr Me
  loc_AFC368: MemLdRfVar from_stack_1.global_80
  loc_AFC36B: LdPrVar
  loc_AFC36D: LateMemCall
  loc_AFC373: FFreeStr var_A8 = "": var_AC = ""
  loc_AFC37C: FFreeAd var_CC = "": var_D0 = ""
  loc_AFC385: FFreeVar var_C4 = "": var_E0 = "": var_94 = "": var_F4 = "": var_104 = "": var_124 = "": var_114 = ""
  loc_AFC398: LitVarStr var_94, "    </td>"
  loc_AFC39D: PopAdLdVar
  loc_AFC39E: FLdPr Me
  loc_AFC3A1: MemLdRfVar from_stack_1.global_80
  loc_AFC3A4: LdPrVar
  loc_AFC3A6: LateMemCall
  loc_AFC3AC: LitVarStr var_94, "  </tr>"
  loc_AFC3B1: PopAdLdVar
  loc_AFC3B2: FLdPr Me
  loc_AFC3B5: MemLdRfVar from_stack_1.global_80
  loc_AFC3B8: LdPrVar
  loc_AFC3BA: LateMemCall
  loc_AFC3C0: LitVarStr var_94, "</table>"
  loc_AFC3C5: PopAdLdVar
  loc_AFC3C6: FLdPr Me
  loc_AFC3C9: MemLdRfVar from_stack_1.global_80
  loc_AFC3CC: LdPrVar
  loc_AFC3CE: LateMemCall
  loc_AFC3D4: LitVarStr var_94, "<table with=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AFC3D9: PopAdLdVar
  loc_AFC3DA: FLdPr Me
  loc_AFC3DD: MemLdRfVar from_stack_1.global_80
  loc_AFC3E0: LdPrVar
  loc_AFC3E2: LateMemCall
  loc_AFC3E8: LitVarStr var_94, "  <THEAD>"
  loc_AFC3ED: PopAdLdVar
  loc_AFC3EE: FLdPr Me
  loc_AFC3F1: MemLdRfVar from_stack_1.global_80
  loc_AFC3F4: LdPrVar
  loc_AFC3F6: LateMemCall
  loc_AFC3FC: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_AFC401: PopAdLdVar
  loc_AFC402: FLdPr Me
  loc_AFC405: MemLdRfVar from_stack_1.global_80
  loc_AFC408: LdPrVar
  loc_AFC40A: LateMemCall
  loc_AFC410: LitVarStr var_94, "     <th rowspan=""2"">Concepto</th>"
  loc_AFC415: PopAdLdVar
  loc_AFC416: FLdPr Me
  loc_AFC419: MemLdRfVar from_stack_1.global_80
  loc_AFC41C: LdPrVar
  loc_AFC41E: LateMemCall
  loc_AFC424: LitVarStr var_94, "     <th width=""6" & Chr(37) & """ rowspan=""2"">Monto Original Calculado</th>"
  loc_AFC429: PopAdLdVar
  loc_AFC42A: FLdPr Me
  loc_AFC42D: MemLdRfVar from_stack_1.global_80
  loc_AFC430: LdPrVar
  loc_AFC432: LateMemCall
  loc_AFC438: LitVarStr var_94, "     <th width=""12" & Chr(37) & """ colspan=""2"">Modificaciones Introducidas</th>"
  loc_AFC43D: PopAdLdVar
  loc_AFC43E: FLdPr Me
  loc_AFC441: MemLdRfVar from_stack_1.global_80
  loc_AFC444: LdPrVar
  loc_AFC446: LateMemCall
  loc_AFC44C: LitVarStr var_94, "     <th width=""6" & Chr(37) & """ rowspan=""2"">Monto Definitivo</th>"
  loc_AFC451: PopAdLdVar
  loc_AFC452: FLdPr Me
  loc_AFC455: MemLdRfVar from_stack_1.global_80
  loc_AFC458: LdPrVar
  loc_AFC45A: LateMemCall
  loc_AFC460: LitVarStr var_94, "     <th width=""6" & Chr(37) & """ rowspan=""2"">Monto Ingresado</th>"
  loc_AFC465: PopAdLdVar
  loc_AFC466: FLdPr Me
  loc_AFC469: MemLdRfVar from_stack_1.global_80
  loc_AFC46C: LdPrVar
  loc_AFC46E: LateMemCall
  loc_AFC474: LitVarStr var_94, "     <th width=""6" & Chr(37) & """ rowspan=""2"">Diferencia entre<br>el Definitivo<br>y el Ingresado</th>"
  loc_AFC479: PopAdLdVar
  loc_AFC47A: FLdPr Me
  loc_AFC47D: MemLdRfVar from_stack_1.global_80
  loc_AFC480: LdPrVar
  loc_AFC482: LateMemCall
  loc_AFC488: LitVarStr var_94, "     <th colspan=""6"">Aplicaciones</th>"
  loc_AFC48D: PopAdLdVar
  loc_AFC48E: FLdPr Me
  loc_AFC491: MemLdRfVar from_stack_1.global_80
  loc_AFC494: LdPrVar
  loc_AFC496: LateMemCall
  loc_AFC49C: LitVarStr var_94, "     <th colspan=""2"">Saldo No Aplicado</th>"
  loc_AFC4A1: PopAdLdVar
  loc_AFC4A2: FLdPr Me
  loc_AFC4A5: MemLdRfVar from_stack_1.global_80
  loc_AFC4A8: LdPrVar
  loc_AFC4AA: LateMemCall
  loc_AFC4B0: LitVarStr var_94, "   </tr>"
  loc_AFC4B5: PopAdLdVar
  loc_AFC4B6: FLdPr Me
  loc_AFC4B9: MemLdRfVar from_stack_1.global_80
  loc_AFC4BC: LdPrVar
  loc_AFC4BE: LateMemCall
  loc_AFC4C4: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_AFC4C9: PopAdLdVar
  loc_AFC4CA: FLdPr Me
  loc_AFC4CD: MemLdRfVar from_stack_1.global_80
  loc_AFC4D0: LdPrVar
  loc_AFC4D2: LateMemCall
  loc_AFC4D8: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Norma Legal</th>"
  loc_AFC4DD: PopAdLdVar
  loc_AFC4DE: FLdPr Me
  loc_AFC4E1: MemLdRfVar from_stack_1.global_80
  loc_AFC4E4: LdPrVar
  loc_AFC4E6: LateMemCall
  loc_AFC4EC: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Importe</th>"
  loc_AFC4F1: PopAdLdVar
  loc_AFC4F2: FLdPr Me
  loc_AFC4F5: MemLdRfVar from_stack_1.global_80
  loc_AFC4F8: LdPrVar
  loc_AFC4FA: LateMemCall
  loc_AFC500: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Devengado</th>"
  loc_AFC505: PopAdLdVar
  loc_AFC506: FLdPr Me
  loc_AFC509: MemLdRfVar from_stack_1.global_80
  loc_AFC50C: LdPrVar
  loc_AFC50E: LateMemCall
  loc_AFC514: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Mandado a Pagar</th>"
  loc_AFC519: PopAdLdVar
  loc_AFC51A: FLdPr Me
  loc_AFC51D: MemLdRfVar from_stack_1.global_80
  loc_AFC520: LdPrVar
  loc_AFC522: LateMemCall
  loc_AFC528: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Pagado</th>"
  loc_AFC52D: PopAdLdVar
  loc_AFC52E: FLdPr Me
  loc_AFC531: MemLdRfVar from_stack_1.global_80
  loc_AFC534: LdPrVar
  loc_AFC536: LateMemCall
  loc_AFC53C: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Pasivos SIN OP</th>"
  loc_AFC541: PopAdLdVar
  loc_AFC542: FLdPr Me
  loc_AFC545: MemLdRfVar from_stack_1.global_80
  loc_AFC548: LdPrVar
  loc_AFC54A: LateMemCall
  loc_AFC550: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Saldos No Utilizados</th>"
  loc_AFC555: PopAdLdVar
  loc_AFC556: FLdPr Me
  loc_AFC559: MemLdRfVar from_stack_1.global_80
  loc_AFC55C: LdPrVar
  loc_AFC55E: LateMemCall
  loc_AFC564: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Pasivos CON OP</th>"
  loc_AFC569: PopAdLdVar
  loc_AFC56A: FLdPr Me
  loc_AFC56D: MemLdRfVar from_stack_1.global_80
  loc_AFC570: LdPrVar
  loc_AFC572: LateMemCall
  loc_AFC578: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Transferido<br>Ejercicio<br>Siguiente</th>"
  loc_AFC57D: PopAdLdVar
  loc_AFC57E: FLdPr Me
  loc_AFC581: MemLdRfVar from_stack_1.global_80
  loc_AFC584: LdPrVar
  loc_AFC586: LateMemCall
  loc_AFC58C: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Ingresos<br>a Rentas<br>Generales</th>"
  loc_AFC591: PopAdLdVar
  loc_AFC592: FLdPr Me
  loc_AFC595: MemLdRfVar from_stack_1.global_80
  loc_AFC598: LdPrVar
  loc_AFC59A: LateMemCall
  loc_AFC5A0: LitVarStr var_94, "   </tr>"
  loc_AFC5A5: PopAdLdVar
  loc_AFC5A6: FLdPr Me
  loc_AFC5A9: MemLdRfVar from_stack_1.global_80
  loc_AFC5AC: LdPrVar
  loc_AFC5AE: LateMemCall
  loc_AFC5B4: LitVarStr var_94, "  </THEAD>"
  loc_AFC5B9: PopAdLdVar
  loc_AFC5BA: FLdPr Me
  loc_AFC5BD: MemLdRfVar from_stack_1.global_80
  loc_AFC5C0: LdPrVar
  loc_AFC5C2: LateMemCall
  loc_AFC5C8: ExitProcHresult
End Function

Private Function Proc_151_26_A05398() 'A05398
  'Data Table: 4991D4
  loc_A05224: LitVarStr var_94, "</table>"
  loc_A05229: PopAdLdVar
  loc_A0522A: FLdPr Me
  loc_A0522D: MemLdRfVar from_stack_1.global_80
  loc_A05230: LdPrVar
  loc_A05232: LateMemCall
  loc_A05238: LitVarStr var_94, "<br>"
  loc_A0523D: PopAdLdVar
  loc_A0523E: FLdPr Me
  loc_A05241: MemLdRfVar from_stack_1.global_80
  loc_A05244: LdPrVar
  loc_A05246: LateMemCall
  loc_A0524C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A05251: PopAdLdVar
  loc_A05252: FLdPr Me
  loc_A05255: MemLdRfVar from_stack_1.global_80
  loc_A05258: LdPrVar
  loc_A0525A: LateMemCall
  loc_A05260: LitVarStr var_94, "  <tr>"
  loc_A05265: PopAdLdVar
  loc_A05266: FLdPr Me
  loc_A05269: MemLdRfVar from_stack_1.global_80
  loc_A0526C: LdPrVar
  loc_A0526E: LateMemCall
  loc_A05274: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A05279: PopAdLdVar
  loc_A0527A: FLdPr Me
  loc_A0527D: MemLdRfVar from_stack_1.global_80
  loc_A05280: LdPrVar
  loc_A05282: LateMemCall
  loc_A05288: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A0528D: PopAdLdVar
  loc_A0528E: FLdPr Me
  loc_A05291: MemLdRfVar from_stack_1.global_80
  loc_A05294: LdPrVar
  loc_A05296: LateMemCall
  loc_A0529C: FLdPr Me
  loc_A0529F: MemLdI2 bLogos
  loc_A052A2: BranchF loc_A05309
  loc_A052A5: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A052AA: PopAdLdVar
  loc_A052AB: FLdPr Me
  loc_A052AE: MemLdRfVar from_stack_1.global_80
  loc_A052B1: LdPrVar
  loc_A052B3: LateMemCall
  loc_A052B9: LitVarStr var_94, "          <map name=""Map"">"
  loc_A052BE: PopAdLdVar
  loc_A052BF: FLdPr Me
  loc_A052C2: MemLdRfVar from_stack_1.global_80
  loc_A052C5: LdPrVar
  loc_A052C7: LateMemCall
  loc_A052CD: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A052D2: PopAdLdVar
  loc_A052D3: FLdPr Me
  loc_A052D6: MemLdRfVar from_stack_1.global_80
  loc_A052D9: LdPrVar
  loc_A052DB: LateMemCall
  loc_A052E1: LitVarStr var_94, "          </map>"
  loc_A052E6: PopAdLdVar
  loc_A052E7: FLdPr Me
  loc_A052EA: MemLdRfVar from_stack_1.global_80
  loc_A052ED: LdPrVar
  loc_A052EF: LateMemCall
  loc_A052F5: LitVarStr var_94, "    </div></th>"
  loc_A052FA: PopAdLdVar
  loc_A052FB: FLdPr Me
  loc_A052FE: MemLdRfVar from_stack_1.global_80
  loc_A05301: LdPrVar
  loc_A05303: LateMemCall
  loc_A05309: LitVarStr var_94, "  </tr>"
  loc_A0530E: PopAdLdVar
  loc_A0530F: FLdPr Me
  loc_A05312: MemLdRfVar from_stack_1.global_80
  loc_A05315: LdPrVar
  loc_A05317: LateMemCall
  loc_A0531D: LitVarStr var_94, "  <tr>"
  loc_A05322: PopAdLdVar
  loc_A05323: FLdPr Me
  loc_A05326: MemLdRfVar from_stack_1.global_80
  loc_A05329: LdPrVar
  loc_A0532B: LateMemCall
  loc_A05331: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A05336: PopAdLdVar
  loc_A05337: FLdPr Me
  loc_A0533A: MemLdRfVar from_stack_1.global_80
  loc_A0533D: LdPrVar
  loc_A0533F: LateMemCall
  loc_A05345: LitVarStr var_94, "  </tr>"
  loc_A0534A: PopAdLdVar
  loc_A0534B: FLdPr Me
  loc_A0534E: MemLdRfVar from_stack_1.global_80
  loc_A05351: LdPrVar
  loc_A05353: LateMemCall
  loc_A05359: LitVarStr var_94, "</table>"
  loc_A0535E: PopAdLdVar
  loc_A0535F: FLdPr Me
  loc_A05362: MemLdRfVar from_stack_1.global_80
  loc_A05365: LdPrVar
  loc_A05367: LateMemCall
  loc_A0536D: LitVarStr var_94, "</body>"
  loc_A05372: PopAdLdVar
  loc_A05373: FLdPr Me
  loc_A05376: MemLdRfVar from_stack_1.global_80
  loc_A05379: LdPrVar
  loc_A0537B: LateMemCall
  loc_A05381: LitVarStr var_94, "</html>"
  loc_A05386: PopAdLdVar
  loc_A05387: FLdPr Me
  loc_A0538A: MemLdRfVar from_stack_1.global_80
  loc_A0538D: LdPrVar
  loc_A0538F: LateMemCall
  loc_A05395: ExitProcHresult
End Function
