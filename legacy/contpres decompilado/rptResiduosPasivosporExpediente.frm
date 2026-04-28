VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResiduosPasivosporExpediente
  Caption = "Proveedores Varios por Expediente"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResiduosPasivosporExpediente.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8550
  ClientHeight = 4440
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4185
    Width = 8550
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptResiduosPasivosporExpediente.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7200
    Top = 3240
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptResiduosPasivosporExpediente.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResiduosPasivosporExpediente.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3000
    Width = 3255
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3000
    Width = 3015
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8295
    Height = 2895
    TabIndex = 0
    Begin VB.TextBox ImporteTxt
      Left = 2400
      Top = 2400
      Width = 2775
      Height = 285
      TabIndex = 12
      Alignment = 1 'Right Justify
    End
    Begin VB.CheckBox chkOcultarImporte
      Caption = "Ocultar importes:"
      Left = 3600
      Top = 1920
      Width = 1575
      Height = 255
      TabIndex = 10
      Alignment = 1 'Right Justify
    End
    Begin VB.CommandButton DesdeCmd
      Left = 2640
      Top = 810
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResiduosPasivosporExpediente.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton HastaCmd
      Left = 2640
      Top = 1290
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResiduosPasivosporExpediente.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6075
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 1440
      Top = 840
      Width = 1095
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptResiduosPasivosporExpediente.frx":1684
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 1440
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptResiduosPasivosporExpediente.frx":170C
    End
    Begin VB.Label Label6
      Caption = "Importes menores o iguales a:"
      Left = 165
      Top = 2400
      Width = 2100
      Height = 195
      TabIndex = 11
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 795
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 840
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 720
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7320
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptResiduosPasivosporExpediente.frx":1794
  End
End

Attribute VB_Name = "rptResiduosPasivosporExpediente"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00595938
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_2_00601AF8
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C23C
  'Data Table: 48E278
  loc_98C204: FLdPr Me
  loc_98C207: VCallAd Control_ID_statusBar
  loc_98C20A: FStAdFunc var_88
  loc_98C20D: FLdPr var_88
  loc_98C210: LateIdLdVar var_98 DispID_1 0
  loc_98C217: CStrVarTmp
  loc_98C218: CVarStr var_A8
  loc_98C21B: PopAdLdVar
  loc_98C21C: FLdPr Me
  loc_98C21F: VCallAd Control_ID_statusBar
  loc_98C222: FStAdFunc var_BC
  loc_98C225: FLdPr var_BC
  loc_98C228: LateIdSt
  loc_98C22D: FFreeAd var_88 = ""
  loc_98C234: FFreeVar var_98 = ""
  loc_98C23B: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '98302C
  'Data Table: 48E278
  loc_982FF0: LitVar_Missing var_A4
  loc_982FF3: PopAdLdVar
  loc_982FF4: LitVarI4
  loc_982FFC: PopAdLdVar
  loc_982FFD: ImpAdLdRf MemVar_C3D9A8
  loc_983000: NewIfNullPr frmCalendario
  loc_983003: frmCalendario.Show from_stack_1, from_stack_2
  loc_983008: ImpAdLdRf MemVar_C3D038
  loc_98300B: CDargRef
  loc_98300F: FLdPr Me
  loc_983012: VCallAd Control_ID_DesdeMsk
  loc_983015: FStAdFunc var_A8
  loc_983018: FLdPr var_A8
  loc_98301B: LateIdSt
  loc_983020: FFree1Ad var_A8
  loc_983023: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983028: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '96450C
  'Data Table: 48E278
  loc_9644F4: ILdRf Me
  loc_9644F7: CastAd
  loc_9644FA: FStAdFunc var_88
  loc_9644FD: FLdRfVar var_88
  loc_964500: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_964505: FFree1Ad var_88
  loc_964508: ExitProcHresult
  loc_964509: ThisVCallAd
End Sub

Private Sub cboPeriodo_Click() '9A39AC
  'Data Table: 48E278
  loc_9A393C: FLdRfVar var_8C
  loc_9A393F: FLdPr Me
  loc_9A3942: VCallAd Control_ID_cboPeriodo
  loc_9A3945: FStAdFunc var_88
  loc_9A3948: FLdPr var_88
  loc_9A394B:  = Me.Text
  loc_9A3950: LitI2_Byte 1
  loc_9A3952: LitI2_Byte 1
  loc_9A3954: ILdRf var_8C
  loc_9A3957: CI2Str
  loc_9A3959: FLdRfVar var_9C
  loc_9A395C: ImpAdCallFPR4  = DateSerial(, , )
  loc_9A3961: FLdRfVar var_9C
  loc_9A3964: CStrVarTmp
  loc_9A3965: CVarStr var_AC
  loc_9A3968: PopAdLdVar
  loc_9A3969: FLdPr Me
  loc_9A396C: VCallAd Control_ID_DesdeMsk
  loc_9A396F: FStAdFunc var_C0
  loc_9A3972: FLdPr var_C0
  loc_9A3975: LateIdSt
  loc_9A397A: FFree1Str var_8C
  loc_9A397D: FFreeAd var_88 = ""
  loc_9A3984: FFreeVar var_9C = ""
  loc_9A398B: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A398E: CStrDate
  loc_9A3990: CVarStr var_9C
  loc_9A3993: PopAdLdVar
  loc_9A3994: FLdPr Me
  loc_9A3997: VCallAd Control_ID_HastaMsk
  loc_9A399A: FStAdFunc var_88
  loc_9A399D: FLdPr var_88
  loc_9A39A0: LateIdSt
  loc_9A39A5: FFree1Ad var_88
  loc_9A39A8: FFree1Var var_9C = ""
  loc_9A39AB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9644C0
  'Data Table: 48E278
  loc_9644A8: LitI2_Byte 0
  loc_9644AA: ILdRf Me
  loc_9644AD: CastAd
  loc_9644B0: FStAdFunc var_88
  loc_9644B3: FLdRfVar var_88
  loc_9644B6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9644BB: FFree1Ad var_88
  loc_9644BE: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9645A4
  'Data Table: 48E278
  loc_96458C: ILdRf Me
  loc_96458F: CastAd
  loc_964592: FStAdFunc var_88
  loc_964595: FLdRfVar var_88
  loc_964598: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96459D: FFree1Ad var_88
  loc_9645A0: ExitProcHresult
  loc_9645A1: ThisVCall unk_48E297
End Sub

Private Sub HastaCmd_Click() '98C2BC
  'Data Table: 48E278
  loc_98C27C: LitVar_Missing var_A4
  loc_98C27F: PopAdLdVar
  loc_98C280: LitVarI4
  loc_98C288: PopAdLdVar
  loc_98C289: ImpAdLdRf MemVar_C3D9A8
  loc_98C28C: NewIfNullPr frmCalendario
  loc_98C28F: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C294: ImpAdLdFPR8 MemVar_C3D04C
  loc_98C297: CStrDate
  loc_98C299: CVarStr var_B4
  loc_98C29C: PopAdLdVar
  loc_98C29D: FLdPr Me
  loc_98C2A0: VCallAd Control_ID_HastaMsk
  loc_98C2A3: FStAdFunc var_B8
  loc_98C2A6: FLdPr var_B8
  loc_98C2A9: LateIdSt
  loc_98C2AE: FFree1Ad var_B8
  loc_98C2B1: FFree1Var var_B4 = ""
  loc_98C2B4: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_98C2B9: ExitProcHresult
  loc_98C2BA: NewIfNullAd
End Sub

Private Sub Form_Load() '9CE170
  'Data Table: 48E278
  loc_9CE098: LitI2_Byte &HFF
  loc_9CE09A: ImpAdStI2 MemVar_C3D840
  loc_9CE09D: ILdRf Me
  loc_9CE0A0: CastAd
  loc_9CE0A3: FStAdFunc var_8C
  loc_9CE0A6: FLdRfVar var_8C
  loc_9CE0A9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CE0AE: FFree1Ad var_8C
  loc_9CE0B1: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CE0B4: FLdRfVar var_88
  loc_9CE0B7: NewIfNullPr clsperiodo
  loc_9CE0BA: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CE0BF: FLdRfVar var_90
  loc_9CE0C2: FLdRfVar var_88
  loc_9CE0C5: NewIfNullPr clsperiodo
  loc_9CE0C8: from_stack_1 = clsperiodo.RecordCount
  loc_9CE0CD: ILdRf var_90
  loc_9CE0D0: LitI4 0
  loc_9CE0D5: GtI4
  loc_9CE0D6: BranchF loc_9CE169
  loc_9CE0D9: FLdRfVar var_88
  loc_9CE0DC: NewIfNullPr clsperiodo
  loc_9CE0DF: Call clsperiodo.MoveFirst()
  loc_9CE0E4: FLdRfVar var_92
  loc_9CE0E7: FLdRfVar var_88
  loc_9CE0EA: NewIfNullPr clsperiodo
  loc_9CE0ED: from_stack_1 = clsperiodo.EOF
  loc_9CE0F2: FLdI2 var_92
  loc_9CE0F5: NotI4
  loc_9CE0F6: BranchF loc_9CE169
  loc_9CE0F9: LitVar_Missing var_D0
  loc_9CE0FC: PopAdLdVar
  loc_9CE0FD: FLdRfVar var_BC
  loc_9CE100: FLdRfVar var_AC
  loc_9CE103: LitVarStr var_A8, "PeriInfo"
  loc_9CE108: PopAdLdVar
  loc_9CE109: FLdRfVar var_98
  loc_9CE10C: FLdRfVar var_8C
  loc_9CE10F: FLdRfVar var_88
  loc_9CE112: NewIfNullPr clsperiodo
  loc_9CE115: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CE11A: FLdPr var_8C
  loc_9CE11D:  = Me.Fields
  loc_9CE122: FLdPr var_98
  loc_9CE125: from_stack_2 = Me.Item(from_stack_1)
  loc_9CE12A: FLdPr var_AC
  loc_9CE12D:  = Me.Value
  loc_9CE132: FLdRfVar var_BC
  loc_9CE135: CStrVarTmp
  loc_9CE136: FStStrNoPop var_C0
  loc_9CE139: FLdPr Me
  loc_9CE13C: VCallAd Control_ID_cboPeriodo
  loc_9CE13F: FStAdFunc var_D4
  loc_9CE142: FLdPr var_D4
  loc_9CE145: Me.AddItem from_stack_1, from_stack_2
  loc_9CE14A: FFree1Str var_C0
  loc_9CE14D: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CE158: FFree1Var var_BC = ""
  loc_9CE15B: FLdRfVar var_88
  loc_9CE15E: NewIfNullPr clsperiodo
  loc_9CE161: Call clsperiodo.MoveSiguiente()
  loc_9CE166: Branch loc_9CE0E4
  loc_9CE169: Call cmdNueva_Click()
  loc_9CE16E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '963FB4
  'Data Table: 48E278
  loc_963F9C: FLdPr Me
  loc_963F9F: VCallAd Control_ID_wbbReporte
  loc_963FA2: FStAdFunc var_88
  loc_963FA5: FLdRfVar var_88
  loc_963FA8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_963FAD: FFree1Ad var_88
  loc_963FB0: ExitProcHresult
End Sub

Private Sub ImporteTxt_GotFocus() '950D60
  'Data Table: 48E278
  loc_950D4C: FLdPr Me
  loc_950D4F: VCallAd Control_ID_ImporteTxt
  loc_950D52: CVarAd
  loc_950D56: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950D5B: FFree1Var var_94 = ""
  loc_950D5E: ExitProcHresult
End Sub

Private Sub ImporteTxt_KeyPress(KeyAscii As Integer) '98C960
  'Data Table: 48E278
  loc_98C920: LitStr "1234567890,."
  loc_98C923: FStStrCopy var_88
  loc_98C926: FLdRfVar var_88
  loc_98C929: ILdRf KeyAscii
  loc_98C92C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98C931: IStI2 KeyAscii
  loc_98C934: FFree1Str var_88
  loc_98C937: ILdI2 KeyAscii
  loc_98C93A: CI4UI1
  loc_98C93B: FLdRfVar var_98
  loc_98C93E: ImpAdCallFPR4  = Chr()
  loc_98C943: FLdRfVar var_98
  loc_98C946: LitVarStr var_A8, "."
  loc_98C94B: HardType
  loc_98C94C: EqVarBool
  loc_98C94E: FFree1Var var_98 = ""
  loc_98C951: BranchF loc_98C95F
  loc_98C954: LitStr ","
  loc_98C957: ImpAdCallI2 Asc()
  loc_98C95C: IStI2 KeyAscii
  loc_98C95F: ExitProcHresult
End Sub

Private Sub ImporteTxt_Validate(Cancel As Boolean) '9FBB2C
  'Data Table: 48E278
  loc_9FB9F4: FLdRfVar var_8C
  loc_9FB9F7: FLdPr Me
  loc_9FB9FA: VCallAd Control_ID_ImporteTxt
  loc_9FB9FD: FStAdFunc var_88
  loc_9FBA00: FLdPr var_88
  loc_9FBA03:  = Me.Text
  loc_9FBA08: ILdRf var_8C
  loc_9FBA0B: LitStr vbNullString
  loc_9FBA0E: NeStr
  loc_9FBA10: FFree1Str var_8C
  loc_9FBA13: FFree1Ad var_88
  loc_9FBA16: BranchF loc_9FBB28
  loc_9FBA19: FLdRfVar var_8C
  loc_9FBA1C: FLdPr Me
  loc_9FBA1F: VCallAd Control_ID_ImporteTxt
  loc_9FBA22: FStAdFunc var_88
  loc_9FBA25: FLdPr var_88
  loc_9FBA28:  = Me.Text
  loc_9FBA2D: LitStr "0"
  loc_9FBA30: LitI2_Byte &HFF
  loc_9FBA32: LitI2_Byte &HFF
  loc_9FBA34: LitI2_Byte &HFF
  loc_9FBA36: ILdRf var_8C
  loc_9FBA39: LitStr "Importe"
  loc_9FBA3C: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9FBA41: FStStrNoPop var_90
  loc_9FBA44: FLdPr Me
  loc_9FBA47: MemStStrCopy
  loc_9FBA4B: FFreeStr var_8C = ""
  loc_9FBA52: FFree1Ad var_88
  loc_9FBA55: FLdPr Me
  loc_9FBA58: VCallAd Control_ID_ImporteTxt
  loc_9FBA5B: FStAdFunc var_9C
  loc_9FBA5E: LitNothing
  loc_9FBA60: CastAd
  loc_9FBA63: FStAdFunc var_98
  loc_9FBA66: FLdRfVar var_98
  loc_9FBA69: FLdZeroAd var_9C
  loc_9FBA6C: FStAdFuncNoPop
  loc_9FBA6F: CastAd
  loc_9FBA72: FStAdFunc var_94
  loc_9FBA75: FLdRfVar var_94
  loc_9FBA78: FLdPr Me
  loc_9FBA7B: MemLdRfVar from_stack_1.global_92
  loc_9FBA7E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FBA83: IStI2 Cancel
  loc_9FBA86: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9FBA91: ILdI2 Cancel
  loc_9FBA94: NotI4
  loc_9FBA95: BranchF loc_9FBB28
  loc_9FBA98: FLdPr Me
  loc_9FBA9B: VCallAd Control_ID_ImporteTxt
  loc_9FBA9E: CVarAd
  loc_9FBAA2: ImpAdCallI2 IsNumeric()
  loc_9FBAA7: FFree1Var var_AC = ""
  loc_9FBAAA: BranchF loc_9FBB28
  loc_9FBAAD: FLdRfVar var_8C
  loc_9FBAB0: FLdPr Me
  loc_9FBAB3: VCallAd Control_ID_ImporteTxt
  loc_9FBAB6: FStAdFunc var_88
  loc_9FBAB9: FLdPr var_88
  loc_9FBABC:  = Me.Text
  loc_9FBAC1: LitI4 2
  loc_9FBAC6: ILdRf var_8C
  loc_9FBAC9: CR8Str
  loc_9FBACB: CVarR8
  loc_9FBACF: FLdRfVar var_CC
  loc_9FBAD2: ImpAdCallFPR4  = Round(, )
  loc_9FBAD7: LitI4 1
  loc_9FBADC: LitI4 1
  loc_9FBAE1: LitVarStr var_DC, "###,###,###,###,##0.00"
  loc_9FBAE6: FStVarCopyObj var_EC
  loc_9FBAE9: FLdRfVar var_EC
  loc_9FBAEC: FLdRfVar var_CC
  loc_9FBAEF: FLdRfVar var_FC
  loc_9FBAF2: ImpAdCallFPR4  = Format(, )
  loc_9FBAF7: FLdRfVar var_FC
  loc_9FBAFA: CStrVarVal var_90
  loc_9FBAFE: FLdPr Me
  loc_9FBB01: VCallAd Control_ID_ImporteTxt
  loc_9FBB04: FStAdFunc var_94
  loc_9FBB07: FLdPr var_94
  loc_9FBB0A: Me.Text = from_stack_1
  loc_9FBB0F: FFreeStr var_8C = ""
  loc_9FBB16: FFreeAd var_88 = ""
  loc_9FBB1D: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_9FBB28: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '950FA0
  'Data Table: 48E278
  loc_950F8C: FLdPr Me
  loc_950F8F: VCallAd Control_ID_DesdeMsk
  loc_950F92: CVarAd
  loc_950F96: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950F9B: FFree1Var var_94 = ""
  loc_950F9E: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_8 '9ACA48
  'Data Table: 48E278
  loc_9AC9B8: FLdPr Me
  loc_9AC9BB: VCallAd Control_ID_DesdeMsk
  loc_9AC9BE: FStAdFunc var_88
  loc_9AC9C1: FLdPr var_88
  loc_9AC9C4: LateIdLdVar var_98 DispID_15 0
  loc_9AC9CB: PopAd
  loc_9AC9CD: LitI2_Byte &HFF
  loc_9AC9CF: PopTmpLdAd2 var_A2
  loc_9AC9D2: LitNothing
  loc_9AC9D4: CastAd
  loc_9AC9D7: FStAdFunc var_A0
  loc_9AC9DA: FLdRfVar var_A0
  loc_9AC9DD: LitStr "01/01/2018"
  loc_9AC9E0: LitI2_Byte 0
  loc_9AC9E2: LitI2_Byte 0
  loc_9AC9E4: FLdRfVar var_98
  loc_9AC9E7: CStrVarTmp
  loc_9AC9E8: FStStrNoPop var_9C
  loc_9AC9EB: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC9F0: FStStrNoPop var_A8
  loc_9AC9F3: FLdPr Me
  loc_9AC9F6: MemStStrCopy
  loc_9AC9FA: FFreeStr var_9C = ""
  loc_9ACA01: FFreeAd var_88 = ""
  loc_9ACA08: FFree1Var var_98 = ""
  loc_9ACA0B: FLdPr Me
  loc_9ACA0E: VCallAd Control_ID_DesdeMsk
  loc_9ACA11: FStAdFunc var_B0
  loc_9ACA14: LitNothing
  loc_9ACA16: CastAd
  loc_9ACA19: FStAdFunc var_AC
  loc_9ACA1C: FLdRfVar var_AC
  loc_9ACA1F: FLdZeroAd var_B0
  loc_9ACA22: FStAdFuncNoPop
  loc_9ACA25: CastAd
  loc_9ACA28: FStAdFunc var_A0
  loc_9ACA2B: FLdRfVar var_A0
  loc_9ACA2E: FLdPr Me
  loc_9ACA31: MemLdRfVar from_stack_1.global_92
  loc_9ACA34: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9ACA39: IStI2 Cancel
  loc_9ACA3C: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9ACA47: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BD24
  'Data Table: 48E278
  loc_97BCF4: LitVarStr var_94, "Cerrando..."
  loc_97BCF9: PopAdLdVar
  loc_97BCFA: FLdPr Me
  loc_97BCFD: VCallAd Control_ID_statusBar
  loc_97BD00: FStAdFunc var_A8
  loc_97BD03: FLdPr var_A8
  loc_97BD06: LateIdSt
  loc_97BD0B: FFree1Ad var_A8
  loc_97BD0E: ILdRf Me
  loc_97BD11: FStAdNoPop
  loc_97BD15: ImpAdLdRf MemVar_C44F9C
  loc_97BD18: NewIfNullPr Me
  loc_97BD1B: Me.Global.Unload from_stack_1
  loc_97BD20: FFree1Ad var_A8
  loc_97BD23: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '950F10
  'Data Table: 48E278
  loc_950EFC: FLdPr Me
  loc_950EFF: VCallAd Control_ID_HastaMsk
  loc_950F02: CVarAd
  loc_950F06: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950F0B: FFree1Var var_94 = ""
  loc_950F0E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) '9AD498
  'Data Table: 48E278
  loc_9AD408: FLdPr Me
  loc_9AD40B: VCallAd Control_ID_HastaMsk
  loc_9AD40E: FStAdFunc var_88
  loc_9AD411: FLdPr var_88
  loc_9AD414: LateIdLdVar var_98 DispID_15 0
  loc_9AD41B: PopAd
  loc_9AD41D: LitI2_Byte &HFF
  loc_9AD41F: PopTmpLdAd2 var_A2
  loc_9AD422: LitNothing
  loc_9AD424: CastAd
  loc_9AD427: FStAdFunc var_A0
  loc_9AD42A: FLdRfVar var_A0
  loc_9AD42D: LitStr "01/01/2018"
  loc_9AD430: LitI2_Byte 0
  loc_9AD432: LitI2_Byte 0
  loc_9AD434: FLdRfVar var_98
  loc_9AD437: CStrVarTmp
  loc_9AD438: FStStrNoPop var_9C
  loc_9AD43B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AD440: FStStrNoPop var_A8
  loc_9AD443: FLdPr Me
  loc_9AD446: MemStStrCopy
  loc_9AD44A: FFreeStr var_9C = ""
  loc_9AD451: FFreeAd var_88 = ""
  loc_9AD458: FFree1Var var_98 = ""
  loc_9AD45B: FLdPr Me
  loc_9AD45E: VCallAd Control_ID_HastaMsk
  loc_9AD461: FStAdFunc var_B0
  loc_9AD464: LitNothing
  loc_9AD466: CastAd
  loc_9AD469: FStAdFunc var_AC
  loc_9AD46C: FLdRfVar var_AC
  loc_9AD46F: FLdZeroAd var_B0
  loc_9AD472: FStAdFuncNoPop
  loc_9AD475: CastAd
  loc_9AD478: FStAdFunc var_A0
  loc_9AD47B: FLdRfVar var_A0
  loc_9AD47E: FLdPr Me
  loc_9AD481: MemLdRfVar from_stack_1.global_92
  loc_9AD484: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AD489: IStI2 arg_C
  loc_9AD48C: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AD497: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '9A4508
  'Data Table: 48E278
  loc_9A4488: LitI2_Byte 0
  loc_9A448A: FLdPr Me
  loc_9A448D: MemStI2 bGenerado
  loc_9A4490: LitI2_Byte &HFF
  loc_9A4492: FLdPr Me
  loc_9A4495: MemStI2 bLogos
  loc_9A4498: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A449D: ImpAdLdI2 MemVar_C3D064
  loc_9A44A0: CStrUI1
  loc_9A44A2: FStStrNoPop var_88
  loc_9A44A5: FLdPr Me
  loc_9A44A8: VCallAd Control_ID_cboPeriodo
  loc_9A44AB: FStAdFunc var_8C
  loc_9A44AE: FLdPr var_8C
  loc_9A44B1: Me.Text = from_stack_1
  loc_9A44B6: FFree1Str var_88
  loc_9A44B9: FFree1Ad var_8C
  loc_9A44BC: LitI4 0
  loc_9A44C1: CI2I4
  loc_9A44C2: FLdPr Me
  loc_9A44C5: VCallAd Control_ID_chkOcultarImporte
  loc_9A44C8: FStAdFunc var_8C
  loc_9A44CB: FLdPr var_8C
  loc_9A44CE: Me.Value = from_stack_1
  loc_9A44D3: FFree1Ad var_8C
  loc_9A44D6: LitStr vbNullString
  loc_9A44D9: FLdPr Me
  loc_9A44DC: VCallAd Control_ID_ImporteTxt
  loc_9A44DF: FStAdFunc var_8C
  loc_9A44E2: FLdPr var_8C
  loc_9A44E5: Me.Text = from_stack_1
  loc_9A44EA: FFree1Ad var_8C
  loc_9A44ED: Call HabilitarCriterio()
  loc_9A44F2: ILdRf Me
  loc_9A44F5: CastAd
  loc_9A44F8: FStAdFunc var_8C
  loc_9A44FB: FLdRfVar var_8C
  loc_9A44FE: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A4503: FFree1Ad var_8C
  loc_9A4506: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '967C5C
  'Data Table: 48E278
  loc_967C40: LitI2_Byte &HFF
  loc_967C42: LitI2_Byte 0
  loc_967C44: ILdRf Me
  loc_967C47: CastAd
  loc_967C4A: FStAdFunc var_88
  loc_967C4D: FLdRfVar var_88
  loc_967C50: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967C55: FFree1Ad var_88
  loc_967C58: ExitProcHresult
  loc_967C59: CR4R4
  loc_967C5A: CRec2Uni arg_0
End Sub

Public Function htmFileGet() '48F2A0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '48F2AF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '48F2BE
  htmFile = Value
End Sub

Public Function bLogosGet() '48F2CD
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '48F2DC
  bLogos = Value
End Sub

Public Function bGeneradoGet() '48F2EB
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48F2FA
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C1E68
  'Data Table: 48E278
  loc_9C1DB0: LitI4 0
  loc_9C1DB5: LitI4 1
  loc_9C1DBA: FLdRfVar var_88
  loc_9C1DBD: Redim
  loc_9C1DC7: FLdPr Me
  loc_9C1DCA: VCallAd Control_ID_DesdeMsk
  loc_9C1DCD: CVarAd
  loc_9C1DD1: ParmAry1St
  loc_9C1DD7: FLdPr Me
  loc_9C1DDA: VCallAd Control_ID_DesdeCmd
  loc_9C1DDD: CVarAd
  loc_9C1DE1: ParmAry1St
  loc_9C1DE7: FLdRfVar var_88
  loc_9C1DEA: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9C1DEF: FLdRfVar var_88
  loc_9C1DF2: Erase
  loc_9C1DF3: LitI4 0
  loc_9C1DF8: LitI4 4
  loc_9C1DFD: FLdRfVar var_88
  loc_9C1E00: Redim
  loc_9C1E0A: FLdPr Me
  loc_9C1E0D: VCallAd Control_ID_cboPeriodo
  loc_9C1E10: CVarAd
  loc_9C1E14: ParmAry1St
  loc_9C1E1A: FLdPr Me
  loc_9C1E1D: VCallAd Control_ID_HastaMsk
  loc_9C1E20: CVarAd
  loc_9C1E24: ParmAry1St
  loc_9C1E2A: FLdPr Me
  loc_9C1E2D: VCallAd Control_ID_HastaCmd
  loc_9C1E30: CVarAd
  loc_9C1E34: ParmAry1St
  loc_9C1E3A: FLdPr Me
  loc_9C1E3D: VCallAd Control_ID_chkOcultarImporte
  loc_9C1E40: CVarAd
  loc_9C1E44: ParmAry1St
  loc_9C1E4A: FLdPr Me
  loc_9C1E4D: VCallAd Control_ID_ImporteTxt
  loc_9C1E50: CVarAd
  loc_9C1E54: ParmAry1St
  loc_9C1E5A: FLdRfVar var_88
  loc_9C1E5D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C1E62: FLdRfVar var_88
  loc_9C1E65: Erase
  loc_9C1E66: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A75A3C
  'Data Table: 48E278
  loc_A756C4: FLdPr Me
  loc_A756C7: MemLdI2 bGenerado
  loc_A756CA: BranchF loc_A756CE
  loc_A756CD: ExitProcHresult
  loc_A756CE: LitVarStr var_9C, "Generando reporte..."
  loc_A756D3: PopAdLdVar
  loc_A756D4: FLdPr Me
  loc_A756D7: VCallAd Control_ID_statusBar
  loc_A756DA: FStAdFunc var_B0
  loc_A756DD: FLdPr var_B0
  loc_A756E0: LateIdSt
  loc_A756E5: FFree1Ad var_B0
  loc_A756E8: LitI4 &HB
  loc_A756ED: CI2I4
  loc_A756EE: FLdPr Me
  loc_A756F1: Me.MousePointer = from_stack_1
  loc_A756F6: LitI2_Byte 0
  loc_A756F8: PopTmpLdAd2 var_B2
  loc_A756FB: Call ImporteTxt_Validate(from_stack_1v)
  loc_A75700: FLdPr Me
  loc_A75703: MemLdStr global_92
  loc_A75706: LitStr vbNullString
  loc_A75709: NeStr
  loc_A7570B: BranchF loc_A75711
  loc_A7570E: Branch loc_A75A13
  loc_A75711: FLdRfVar var_B8
  loc_A75714: FLdPr Me
  loc_A75717: VCallAd Control_ID_ImporteTxt
  loc_A7571A: FStAdFunc var_B0
  loc_A7571D: FLdPr var_B0
  loc_A75720:  = Me.Text
  loc_A75725: ILdRf var_B8
  loc_A75728: LitStr vbNullString
  loc_A7572B: NeStr
  loc_A7572D: FFree1Str var_B8
  loc_A75730: FFree1Ad var_B0
  loc_A75733: BranchF loc_A75787
  loc_A75736: FLdRfVar var_B8
  loc_A75739: FLdPr Me
  loc_A7573C: VCallAd Control_ID_ImporteTxt
  loc_A7573F: FStAdFunc var_B0
  loc_A75742: FLdPr var_B0
  loc_A75745:  = Me.Text
  loc_A7574A: LitStr " AND RepaImpu <= "
  loc_A7574D: LitI4 0
  loc_A75752: LitI4 -1
  loc_A75757: LitI4 1
  loc_A7575C: LitStr "."
  loc_A7575F: LitStr ","
  loc_A75762: ILdRf var_B8
  loc_A75765: CR8Str
  loc_A75767: CStrR8
  loc_A75769: FStStrNoPop var_BC
  loc_A7576C: ImpAdCallI2 Replace(, , , , , )
  loc_A75771: FStStrNoPop var_C0
  loc_A75774: ConcatStr
  loc_A75775: FStStr var_8C
  loc_A75778: FFreeStr var_B8 = "": var_BC = ""
  loc_A75781: FFree1Ad var_B0
  loc_A75784: Branch loc_A7578D
  loc_A75787: LitStr vbNullString
  loc_A7578A: FStStrCopy var_8C
  loc_A7578D: FLdPr Me
  loc_A75790: MemLdRfVar from_stack_1.global_72
  loc_A75793: NewIfNullAd
  loc_A75796: FStAd var_C4 
  loc_A7579A: FLdPr Me
  loc_A7579D: VCallAd Control_ID_HastaMsk
  loc_A757A0: FStAdFunc var_E8
  loc_A757A3: FLdPr var_E8
  loc_A757A6: LateIdLdVar var_F8 DispID_15 0
  loc_A757AD: PopAd
  loc_A757AF: LitStr "SELECT i.*, DetaProv, NumeFact, FefaDeve"
  loc_A757B2: LitStr ", Sum(DeveImpu) DeveImpu, Sum(MapaImpu) MapaImpu, Sum(DeveImpu)-Sum(MapaImpu) RepaImpu"
  loc_A757B5: ConcatStr
  loc_A757B6: FStStrNoPop var_B8
  loc_A757B9: LitStr ", IF(Sum(ResiDeve)=0,'No','Si') ResiDeve"
  loc_A757BC: ConcatStr
  loc_A757BD: FStStrNoPop var_BC
  loc_A757C0: LitStr ", IFNULL(Convert(Mid(i.ExpeImpu, Instr(i.ExpeImpu,'/') +1), Unsigned),0) derbarra"
  loc_A757C3: ConcatStr
  loc_A757C4: FStStrNoPop var_C0
  loc_A757C7: LitStr ", IFNULL(Convert(Mid(i.ExpeImpu, 1, Instr(i.ExpeImpu,'/')-1), Unsigned),0) izqbarra"
  loc_A757CA: ConcatStr
  loc_A757CB: FStStrNoPop var_C8
  loc_A757CE: LitStr " FROM imputacion i"
  loc_A757D1: ConcatStr
  loc_A757D2: FStStrNoPop var_CC
  loc_A757D5: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_A757D8: ConcatStr
  loc_A757D9: FStStrNoPop var_D0
  loc_A757DC: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_A757DF: ConcatStr
  loc_A757E0: FStStrNoPop var_D4
  loc_A757E3: LitStr " LEFT JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_A757E6: ConcatStr
  loc_A757E7: FStStrNoPop var_D8
  loc_A757EA: LitStr " WHERE i.PeriInfo = "
  loc_A757ED: ConcatStr
  loc_A757EE: FStStrNoPop var_E0
  loc_A757F1: FLdRfVar var_DC
  loc_A757F4: FLdPr Me
  loc_A757F7: VCallAd Control_ID_cboPeriodo
  loc_A757FA: FStAdFunc var_B0
  loc_A757FD: FLdPr var_B0
  loc_A75800:  = Me.Text
  loc_A75805: ILdRf var_DC
  loc_A75808: ConcatStr
  loc_A75809: FStStrNoPop var_E4
  loc_A7580C: LitStr " AND FechImpu <= "
  loc_A7580F: ConcatStr
  loc_A75810: FStStrNoPop var_11C
  loc_A75813: LitI4 1
  loc_A75818: LitI4 1
  loc_A7581D: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_A75822: FStVarCopyObj var_118
  loc_A75825: FLdRfVar var_118
  loc_A75828: FLdRfVar var_F8
  loc_A7582B: CStrVarTmp
  loc_A7582C: CVarStr var_108
  loc_A7582F: ImpAdCallI2 Format$(, )
  loc_A75834: FStStrNoPop var_120
  loc_A75837: ConcatStr
  loc_A75838: FStStrNoPop var_124
  loc_A7583B: LitStr " AND (i.DeveImpu <> 0 OR i.MapaImpu <> 0)"
  loc_A7583E: ConcatStr
  loc_A7583F: FStStrNoPop var_128
  loc_A75842: LitStr " GROUP BY i.ExpeImpu, i.CucuPers"
  loc_A75845: ConcatStr
  loc_A75846: FStStrNoPop var_12C
  loc_A75849: LitStr " HAVING RepaImpu <> 0"
  loc_A7584C: ConcatStr
  loc_A7584D: FStStrNoPop var_130
  loc_A75850: ILdRf var_8C
  loc_A75853: ConcatStr
  loc_A75854: FStStrNoPop var_134
  loc_A75857: LitStr " ORDER BY ExpeImpu, DetaProv"
  loc_A7585A: ConcatStr
  loc_A7585B: FStStrNoPop var_138
  loc_A7585E: FLdPr var_C4
  loc_A75861: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A75866: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E0 = "": var_DC = "": var_E4 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_A7588F: FFreeAd var_B0 = ""
  loc_A75896: FFreeVar var_F8 = "": var_108 = ""
  loc_A7589F: FLdRfVar var_13C
  loc_A758A2: FLdPr var_C4
  loc_A758A5: from_stack_1 = clsimputacion.RecordCount
  loc_A758AA: ILdRf var_13C
  loc_A758AD: LitI4 0
  loc_A758B2: EqI4
  loc_A758B3: BranchF loc_A758C6
  loc_A758B6: LitI4 0
  loc_A758BB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A758BE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A758C3: Branch loc_A75A13
  loc_A758C6: LitI4 0
  loc_A758CB: FLdRfVar var_13C
  loc_A758CE: FLdPr var_C4
  loc_A758D1: from_stack_1 = clsimputacion.RecordCount
  loc_A758D6: ILdRf var_13C
  loc_A758D9: FLdPr Me
  loc_A758DC: MemLdRfVar from_stack_1.global_80
  loc_A758DF: Redim
  loc_A758E9: LitI2_Byte 0
  loc_A758EB: LitVar_Missing var_F8
  loc_A758EE: LitI2_Byte &HFF
  loc_A758F0: LitVarI2 var_9C, 0
  loc_A758F5: PopAdLdVar
  loc_A758F6: FLdPr Me
  loc_A758F9: MemLdRfVar from_stack_1.global_88
  loc_A758FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A75901: FFree1Var var_F8 = ""
  loc_A75904: LitI2_Byte 0
  loc_A75906: FLdPr Me
  loc_A75909: MemStI2 global_86
  loc_A7590C: Call Proc_224_30_9B26A0()
  loc_A75911: FLdRfVar var_B2
  loc_A75914: FLdPr var_C4
  loc_A75917: from_stack_1 = clsimputacion.EOF
  loc_A7591C: FLdI2 var_B2
  loc_A7591F: NotI4
  loc_A75920: BranchF loc_A7598E
  loc_A75923: FLdRfVar var_F8
  loc_A75926: FLdRfVar var_140
  loc_A75929: LitVarStr var_9C, "ExpeImpu"
  loc_A7592E: PopAdLdVar
  loc_A7592F: FLdRfVar var_E8
  loc_A75932: FLdRfVar var_B0
  loc_A75935: FLdPr var_C4
  loc_A75938: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A7593D: FLdPr var_B0
  loc_A75940:  = Me.Fields
  loc_A75945: FLdPr var_E8
  loc_A75948: from_stack_2 = Me.Item(from_stack_1)
  loc_A7594D: FLdPr var_140
  loc_A75950:  = Me.Value
  loc_A75955: FLdRfVar var_F8
  loc_A75958: FLdPr Me
  loc_A7595B: MemLdI2 global_86
  loc_A7595E: CI4UI1
  loc_A7595F: FLdPr Me
  loc_A75962: MemLdStr global_80
  loc_A75965: Ary1LdPr
  loc_A75966: MemLdStr global_0
  loc_A75969: CVarStr var_AC
  loc_A7596C: HardType
  loc_A7596D: NeVarBool
  loc_A7596F: FFreeAd var_B0 = "": var_E8 = ""
  loc_A75978: FFree1Var var_F8 = ""
  loc_A7597B: BranchF loc_A75986
  loc_A7597E: Call Proc_224_30_9B26A0()
  loc_A75983: Branch loc_A7598B
  loc_A75986: Call Proc_224_31_A8F7AC()
  loc_A7598B: Branch loc_A75911
  loc_A7598E: LitNothing
  loc_A75990: FStAd var_C4 
  loc_A75994: LitI2_Byte 1
  loc_A75996: FLdPr Me
  loc_A75999: MemLdRfVar from_stack_1.global_86
  loc_A7599C: FLdPr Me
  loc_A7599F: MemLdStr global_80
  loc_A759A2: LitI2_Byte 1
  loc_A759A4: FnUBound
  loc_A759A6: CI2I4
  loc_A759A7: ForI2 var_144
  loc_A759AD: LitI2_Byte 0
  loc_A759AF: FLdPr Me
  loc_A759B2: MemLdRfVar from_stack_1.global_88
  loc_A759B5: CVarRef
  loc_A759BA: LitI2_Byte &HFF
  loc_A759BC: FLdPr Me
  loc_A759BF: MemLdI2 global_86
  loc_A759C2: CI4UI1
  loc_A759C3: FLdPr Me
  loc_A759C6: MemLdStr global_80
  loc_A759C9: Ary1LdPr
  loc_A759CA: MemLdStr global_12
  loc_A759CD: CVarStr var_9C
  loc_A759D0: PopAdLdVar
  loc_A759D1: FLdRfVar var_88
  loc_A759D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A759D9: FLdPr Me
  loc_A759DC: MemLdI2 global_86
  loc_A759DF: CI4UI1
  loc_A759E0: FLdPr Me
  loc_A759E3: MemLdStr global_80
  loc_A759E6: Ary1LdPr
  loc_A759E7: MemLdStr global_4
  loc_A759EA: LitI2_Byte 1
  loc_A759EC: FnUBound
  loc_A759EE: CI2I4
  loc_A759EF: FLdPr Me
  loc_A759F2: MemLdI2 global_86
  loc_A759F5: CI4UI1
  loc_A759F6: FLdPr Me
  loc_A759F9: MemLdStr global_80
  loc_A759FC: Ary1LdPr
  loc_A759FD: MemStI2 global_8
  loc_A75A00: FLdPr Me
  loc_A75A03: MemLdRfVar from_stack_1.global_86
  loc_A75A06: NextI2 var_144, loc_A759AD
  loc_A75A0B: LitI2_Byte &HFF
  loc_A75A0D: FLdPr Me
  loc_A75A10: MemStI2 bGenerado
  loc_A75A13: LitI4 0
  loc_A75A18: CI2I4
  loc_A75A19: FLdPr Me
  loc_A75A1C: Me.MousePointer = from_stack_1
  loc_A75A21: LitVarStr var_9C, vbNullString
  loc_A75A26: PopAdLdVar
  loc_A75A27: FLdPr Me
  loc_A75A2A: VCallAd Control_ID_statusBar
  loc_A75A2D: FStAdFunc var_B0
  loc_A75A30: FLdPr var_B0
  loc_A75A33: LateIdSt
  loc_A75A38: FFree1Ad var_B0
  loc_A75A3B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '950ECC
  'Data Table: 48E278
  loc_950EB4: LitI2_Byte 0
  loc_950EB6: FLdPr Me
  loc_950EB9: MemStI2 bLogos
  loc_950EBC: Call GeneraHTML()
  loc_950EC1: LitI2_Byte &HFF
  loc_950EC3: FLdPr Me
  loc_950EC6: MemStI2 bLogos
  loc_950EC9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ADD2AC
  'Data Table: 48E278
  loc_ADCC18: FLdRfVar var_88
  loc_ADCC1B: LitI2_Byte 0
  loc_ADCC1D: LitI2_Byte &HFF
  loc_ADCC1F: ImpAdLdI4 MemVar_C3D83C
  loc_ADCC22: FLdPr Me
  loc_ADCC25: MemLdRfVar from_stack_1.global_76
  loc_ADCC28: NewIfNullPr IFileSystem3
  loc_ADCC2B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADCC30: ILdRf var_88
  loc_ADCC33: FLdPr Me
  loc_ADCC36: MemStVarAd
  loc_ADCC3A: FFree1Ad var_88
  loc_ADCC3D: Call Proc_224_32_A97B10()
  loc_ADCC42: FLdRfVar var_8A
  loc_ADCC45: FLdPr Me
  loc_ADCC48: VCallAd Control_ID_chkOcultarImporte
  loc_ADCC4B: FStAdFunc var_88
  loc_ADCC4E: FLdPr var_88
  loc_ADCC51:  = Me.Value
  loc_ADCC56: FLdI2 var_8A
  loc_ADCC59: CI4UI1
  loc_ADCC5A: LitI4 0
  loc_ADCC5F: EqI4
  loc_ADCC60: FFree1Ad var_88
  loc_ADCC63: BranchF loc_ADCFB8
  loc_ADCC66: LitI2_Byte 1
  loc_ADCC68: FLdPr Me
  loc_ADCC6B: MemLdRfVar from_stack_1.global_86
  loc_ADCC6E: FLdPr Me
  loc_ADCC71: MemLdStr global_80
  loc_ADCC74: LitI2_Byte 1
  loc_ADCC76: FnUBound
  loc_ADCC78: CI2I4
  loc_ADCC79: ForI2 var_8E
  loc_ADCC7F: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADCC84: PopAdLdVar
  loc_ADCC85: FLdPr Me
  loc_ADCC88: MemLdRfVar from_stack_1.htmFile
  loc_ADCC8B: LdPrVar
  loc_ADCC8D: LateMemCall
  loc_ADCC93: LitStr "  <td rowspan="""
  loc_ADCC96: FLdPr Me
  loc_ADCC99: MemLdI2 global_86
  loc_ADCC9C: CI4UI1
  loc_ADCC9D: FLdPr Me
  loc_ADCCA0: MemLdStr global_80
  loc_ADCCA3: Ary1LdPr
  loc_ADCCA4: MemLdI2 global_8
  loc_ADCCA7: CStrUI1
  loc_ADCCA9: FStStrNoPop var_B4
  loc_ADCCAC: ConcatStr
  loc_ADCCAD: FStStrNoPop var_B8
  loc_ADCCB0: LitStr """ align=""left"">"
  loc_ADCCB3: ConcatStr
  loc_ADCCB4: FStStrNoPop var_BC
  loc_ADCCB7: FLdPr Me
  loc_ADCCBA: MemLdI2 global_86
  loc_ADCCBD: CI4UI1
  loc_ADCCBE: FLdPr Me
  loc_ADCCC1: MemLdStr global_80
  loc_ADCCC4: Ary1LdPr
  loc_ADCCC5: MemLdStr global_0
  loc_ADCCC8: ConcatStr
  loc_ADCCC9: FStStrNoPop var_C0
  loc_ADCCCC: LitStr "</td>"
  loc_ADCCCF: ConcatStr
  loc_ADCCD0: CVarStr var_D0
  loc_ADCCD3: PopAdLdVar
  loc_ADCCD4: FLdPr Me
  loc_ADCCD7: MemLdRfVar from_stack_1.htmFile
  loc_ADCCDA: LdPrVar
  loc_ADCCDC: LateMemCall
  loc_ADCCE2: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADCCED: FFree1Var var_D0 = ""
  loc_ADCCF0: LitI2_Byte 1
  loc_ADCCF2: FLdPr Me
  loc_ADCCF5: MemLdRfVar from_stack_1.global_84
  loc_ADCCF8: FLdPr Me
  loc_ADCCFB: MemLdI2 global_86
  loc_ADCCFE: CI4UI1
  loc_ADCCFF: FLdPr Me
  loc_ADCD02: MemLdStr global_80
  loc_ADCD05: Ary1LdPr
  loc_ADCD06: MemLdStr global_4
  loc_ADCD09: LitI2_Byte 1
  loc_ADCD0B: FnUBound
  loc_ADCD0D: CI2I4
  loc_ADCD0E: ForI2 var_D4
  loc_ADCD14: FLdPr Me
  loc_ADCD17: MemLdI2 global_84
  loc_ADCD1A: LitI2_Byte 1
  loc_ADCD1C: GtI2
  loc_ADCD1D: BranchF loc_ADCD34
  loc_ADCD20: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADCD25: PopAdLdVar
  loc_ADCD26: FLdPr Me
  loc_ADCD29: MemLdRfVar from_stack_1.htmFile
  loc_ADCD2C: LdPrVar
  loc_ADCD2E: LateMemCall
  loc_ADCD34: FLdPr Me
  loc_ADCD37: MemLdI2 global_84
  loc_ADCD3A: CI4UI1
  loc_ADCD3B: FLdPr Me
  loc_ADCD3E: MemLdI2 global_86
  loc_ADCD41: CI4UI1
  loc_ADCD42: FLdPr Me
  loc_ADCD45: MemLdStr global_80
  loc_ADCD48: AryLock
  loc_ADCD4B: Ary1LdPr
  loc_ADCD4C: MemLdStr global_4
  loc_ADCD4F: AryLock
  loc_ADCD52: Ary1LdRf
  loc_ADCD53: FStR4 var_E0
  loc_ADCD56: LitI4 0
  loc_ADCD5B: LitI4 0
  loc_ADCD60: LitI2_Byte 0
  loc_ADCD62: LitStr "left"
  loc_ADCD65: FMemLdR4 var_E0(0)
  loc_ADCD6A: LitStr "<br>"
  loc_ADCD6D: ConcatStr
  loc_ADCD6E: FStStrNoPop var_B4
  loc_ADCD71: FMemLdR4 var_E0(4)
  loc_ADCD76: ConcatStr
  loc_ADCD77: FStStrNoPop var_B8
  loc_ADCD7A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCD7F: CVarStr var_D0
  loc_ADCD82: PopAdLdVar
  loc_ADCD83: FLdPr Me
  loc_ADCD86: MemLdRfVar from_stack_1.htmFile
  loc_ADCD89: LdPrVar
  loc_ADCD8B: LateMemCall
  loc_ADCD91: FFreeStr var_B4 = ""
  loc_ADCD98: FFree1Var var_D0 = ""
  loc_ADCD9B: LitVarStr var_110, "       <td nowrap align=""left"">"
  loc_ADCDA0: FMemLdRf ext_401088
  loc_ADCDA5: CVarRef
  loc_ADCDAA: LitVarStr var_B0, "&nbsp;"
  loc_ADCDAF: FStVarCopyObj var_D0
  loc_ADCDB2: FLdRfVar var_D0
  loc_ADCDB5: FMemLdR4 var_E0(8)
  loc_ADCDBA: LitStr vbNullString
  loc_ADCDBD: EqStr
  loc_ADCDBF: CVarBoolI2 var_A0
  loc_ADCDC3: FLdRfVar var_100
  loc_ADCDC6: ImpAdCallFPR4  = IIf(, , )
  loc_ADCDCB: FLdRfVar var_100
  loc_ADCDCE: ConcatVar var_120
  loc_ADCDD2: LitVarStr var_130, "</td>"
  loc_ADCDD7: ConcatVar var_140
  loc_ADCDDB: PopAdLdVar
  loc_ADCDDC: FLdPr Me
  loc_ADCDDF: MemLdRfVar from_stack_1.htmFile
  loc_ADCDE2: LdPrVar
  loc_ADCDE4: LateMemCall
  loc_ADCDEA: FFreeVar var_A0 = "": var_D0 = "": var_100 = "": var_120 = ""
  loc_ADCDF7: LitI4 0
  loc_ADCDFC: LitI4 0
  loc_ADCE01: LitI2_Byte 0
  loc_ADCE03: LitStr "right"
  loc_ADCE06: FMemLdR4 var_E0(12)
  loc_ADCE0B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCE10: CVarStr var_D0
  loc_ADCE13: PopAdLdVar
  loc_ADCE14: FLdPr Me
  loc_ADCE17: MemLdRfVar from_stack_1.htmFile
  loc_ADCE1A: LdPrVar
  loc_ADCE1C: LateMemCall
  loc_ADCE22: FFree1Var var_D0 = ""
  loc_ADCE25: LitI4 0
  loc_ADCE2A: LitI4 0
  loc_ADCE2F: LitI2_Byte 0
  loc_ADCE31: LitStr "right"
  loc_ADCE34: FMemLdR4 var_E0(16)
  loc_ADCE39: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCE3E: CVarStr var_D0
  loc_ADCE41: PopAdLdVar
  loc_ADCE42: FLdPr Me
  loc_ADCE45: MemLdRfVar from_stack_1.htmFile
  loc_ADCE48: LdPrVar
  loc_ADCE4A: LateMemCall
  loc_ADCE50: FFree1Var var_D0 = ""
  loc_ADCE53: LitI4 0
  loc_ADCE58: LitI4 0
  loc_ADCE5D: LitI2_Byte 0
  loc_ADCE5F: LitStr "right"
  loc_ADCE62: FMemLdR4 var_E0(20)
  loc_ADCE67: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCE6C: CVarStr var_D0
  loc_ADCE6F: PopAdLdVar
  loc_ADCE70: FLdPr Me
  loc_ADCE73: MemLdRfVar from_stack_1.htmFile
  loc_ADCE76: LdPrVar
  loc_ADCE78: LateMemCall
  loc_ADCE7E: FFree1Var var_D0 = ""
  loc_ADCE81: LitI4 0
  loc_ADCE86: LitI4 0
  loc_ADCE8B: LitI2_Byte 0
  loc_ADCE8D: LitStr "left"
  loc_ADCE90: FMemLdR4 var_E0(24)
  loc_ADCE95: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADCE9A: CVarStr var_D0
  loc_ADCE9D: PopAdLdVar
  loc_ADCE9E: FLdPr Me
  loc_ADCEA1: MemLdRfVar from_stack_1.htmFile
  loc_ADCEA4: LdPrVar
  loc_ADCEA6: LateMemCall
  loc_ADCEAC: FFree1Var var_D0 = ""
  loc_ADCEAF: LitI4 0
  loc_ADCEB4: FStR4 var_E0
  loc_ADCEB7: AryUnlock
  loc_ADCEBA: AryUnlock
  loc_ADCEBD: FLdPr Me
  loc_ADCEC0: MemLdI2 global_84
  loc_ADCEC3: LitI2_Byte 1
  loc_ADCEC5: EqI2
  loc_ADCEC6: BranchF loc_ADCF26
  loc_ADCEC9: LitStr "  <td rowspan="""
  loc_ADCECC: FLdPr Me
  loc_ADCECF: MemLdI2 global_86
  loc_ADCED2: CI4UI1
  loc_ADCED3: FLdPr Me
  loc_ADCED6: MemLdStr global_80
  loc_ADCED9: Ary1LdPr
  loc_ADCEDA: MemLdI2 global_8
  loc_ADCEDD: CStrUI1
  loc_ADCEDF: FStStrNoPop var_B4
  loc_ADCEE2: ConcatStr
  loc_ADCEE3: FStStrNoPop var_B8
  loc_ADCEE6: LitStr """ align=""right"" class=""Totales"">"
  loc_ADCEE9: ConcatStr
  loc_ADCEEA: FStStrNoPop var_BC
  loc_ADCEED: FLdPr Me
  loc_ADCEF0: MemLdI2 global_86
  loc_ADCEF3: CI4UI1
  loc_ADCEF4: FLdPr Me
  loc_ADCEF7: MemLdStr global_80
  loc_ADCEFA: Ary1LdPr
  loc_ADCEFB: MemLdStr global_12
  loc_ADCEFE: ConcatStr
  loc_ADCEFF: FStStrNoPop var_C0
  loc_ADCF02: LitStr "</td>"
  loc_ADCF05: ConcatStr
  loc_ADCF06: CVarStr var_D0
  loc_ADCF09: PopAdLdVar
  loc_ADCF0A: FLdPr Me
  loc_ADCF0D: MemLdRfVar from_stack_1.htmFile
  loc_ADCF10: LdPrVar
  loc_ADCF12: LateMemCall
  loc_ADCF18: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADCF23: FFree1Var var_D0 = ""
  loc_ADCF26: LitVarStr var_A0, "     </tr>"
  loc_ADCF2B: PopAdLdVar
  loc_ADCF2C: FLdPr Me
  loc_ADCF2F: MemLdRfVar from_stack_1.htmFile
  loc_ADCF32: LdPrVar
  loc_ADCF34: LateMemCall
  loc_ADCF3A: FLdPr Me
  loc_ADCF3D: MemLdRfVar from_stack_1.global_84
  loc_ADCF40: NextI2 var_D4, loc_ADCD14
  loc_ADCF45: FLdPr Me
  loc_ADCF48: MemLdRfVar from_stack_1.global_86
  loc_ADCF4B: NextI2 var_8E, loc_ADCC7F
  loc_ADCF50: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADCF55: PopAdLdVar
  loc_ADCF56: FLdPr Me
  loc_ADCF59: MemLdRfVar from_stack_1.htmFile
  loc_ADCF5C: LdPrVar
  loc_ADCF5E: LateMemCall
  loc_ADCF64: LitVarStr var_A0, "    <td colspan=""7"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_ADCF69: PopAdLdVar
  loc_ADCF6A: FLdPr Me
  loc_ADCF6D: MemLdRfVar from_stack_1.htmFile
  loc_ADCF70: LdPrVar
  loc_ADCF72: LateMemCall
  loc_ADCF78: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADCF7B: FLdPr Me
  loc_ADCF7E: MemLdStr global_88
  loc_ADCF81: ConcatStr
  loc_ADCF82: FStStrNoPop var_B4
  loc_ADCF85: LitStr "</th>"
  loc_ADCF88: ConcatStr
  loc_ADCF89: CVarStr var_D0
  loc_ADCF8C: PopAdLdVar
  loc_ADCF8D: FLdPr Me
  loc_ADCF90: MemLdRfVar from_stack_1.htmFile
  loc_ADCF93: LdPrVar
  loc_ADCF95: LateMemCall
  loc_ADCF9B: FFree1Str var_B4
  loc_ADCF9E: FFree1Var var_D0 = ""
  loc_ADCFA1: LitVarStr var_A0, "     </tr>"
  loc_ADCFA6: PopAdLdVar
  loc_ADCFA7: FLdPr Me
  loc_ADCFAA: MemLdRfVar from_stack_1.htmFile
  loc_ADCFAD: LdPrVar
  loc_ADCFAF: LateMemCall
  loc_ADCFB5: Branch loc_ADD290
  loc_ADCFB8: LitI2_Byte 1
  loc_ADCFBA: FLdPr Me
  loc_ADCFBD: MemLdRfVar from_stack_1.global_86
  loc_ADCFC0: FLdPr Me
  loc_ADCFC3: MemLdStr global_80
  loc_ADCFC6: LitI2_Byte 1
  loc_ADCFC8: FnUBound
  loc_ADCFCA: CI2I4
  loc_ADCFCB: ForI2 var_154
  loc_ADCFD1: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADCFD6: PopAdLdVar
  loc_ADCFD7: FLdPr Me
  loc_ADCFDA: MemLdRfVar from_stack_1.htmFile
  loc_ADCFDD: LdPrVar
  loc_ADCFDF: LateMemCall
  loc_ADCFE5: LitStr "  <td rowspan="""
  loc_ADCFE8: FLdPr Me
  loc_ADCFEB: MemLdI2 global_86
  loc_ADCFEE: CI4UI1
  loc_ADCFEF: FLdPr Me
  loc_ADCFF2: MemLdStr global_80
  loc_ADCFF5: Ary1LdPr
  loc_ADCFF6: MemLdI2 global_8
  loc_ADCFF9: CStrUI1
  loc_ADCFFB: FStStrNoPop var_B4
  loc_ADCFFE: ConcatStr
  loc_ADCFFF: FStStrNoPop var_B8
  loc_ADD002: LitStr """ align=""left"">"
  loc_ADD005: ConcatStr
  loc_ADD006: FStStrNoPop var_BC
  loc_ADD009: FLdPr Me
  loc_ADD00C: MemLdI2 global_86
  loc_ADD00F: CI4UI1
  loc_ADD010: FLdPr Me
  loc_ADD013: MemLdStr global_80
  loc_ADD016: Ary1LdPr
  loc_ADD017: MemLdStr global_0
  loc_ADD01A: ConcatStr
  loc_ADD01B: FStStrNoPop var_C0
  loc_ADD01E: LitStr "</td>"
  loc_ADD021: ConcatStr
  loc_ADD022: CVarStr var_D0
  loc_ADD025: PopAdLdVar
  loc_ADD026: FLdPr Me
  loc_ADD029: MemLdRfVar from_stack_1.htmFile
  loc_ADD02C: LdPrVar
  loc_ADD02E: LateMemCall
  loc_ADD034: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADD03F: FFree1Var var_D0 = ""
  loc_ADD042: LitI2_Byte 1
  loc_ADD044: FLdPr Me
  loc_ADD047: MemLdRfVar from_stack_1.global_84
  loc_ADD04A: FLdPr Me
  loc_ADD04D: MemLdI2 global_86
  loc_ADD050: CI4UI1
  loc_ADD051: FLdPr Me
  loc_ADD054: MemLdStr global_80
  loc_ADD057: Ary1LdPr
  loc_ADD058: MemLdStr global_4
  loc_ADD05B: LitI2_Byte 1
  loc_ADD05D: FnUBound
  loc_ADD05F: CI2I4
  loc_ADD060: ForI2 var_158
  loc_ADD066: FLdPr Me
  loc_ADD069: MemLdI2 global_84
  loc_ADD06C: LitI2_Byte 1
  loc_ADD06E: GtI2
  loc_ADD06F: BranchF loc_ADD086
  loc_ADD072: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADD077: PopAdLdVar
  loc_ADD078: FLdPr Me
  loc_ADD07B: MemLdRfVar from_stack_1.htmFile
  loc_ADD07E: LdPrVar
  loc_ADD080: LateMemCall
  loc_ADD086: FLdPr Me
  loc_ADD089: MemLdI2 global_84
  loc_ADD08C: CI4UI1
  loc_ADD08D: FLdPr Me
  loc_ADD090: MemLdI2 global_86
  loc_ADD093: CI4UI1
  loc_ADD094: FLdPr Me
  loc_ADD097: MemLdStr global_80
  loc_ADD09A: AryLock
  loc_ADD09D: Ary1LdPr
  loc_ADD09E: MemLdStr global_4
  loc_ADD0A1: AryLock
  loc_ADD0A4: Ary1LdRf
  loc_ADD0A5: FStR4 var_164
  loc_ADD0A8: LitI4 0
  loc_ADD0AD: LitI4 0
  loc_ADD0B2: LitI2_Byte 0
  loc_ADD0B4: LitStr "left"
  loc_ADD0B7: FMemLdR4 var_164(0)
  loc_ADD0BC: LitStr "<br>"
  loc_ADD0BF: ConcatStr
  loc_ADD0C0: FStStrNoPop var_B4
  loc_ADD0C3: FMemLdR4 var_164(4)
  loc_ADD0C8: ConcatStr
  loc_ADD0C9: FStStrNoPop var_B8
  loc_ADD0CC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADD0D1: CVarStr var_D0
  loc_ADD0D4: PopAdLdVar
  loc_ADD0D5: FLdPr Me
  loc_ADD0D8: MemLdRfVar from_stack_1.htmFile
  loc_ADD0DB: LdPrVar
  loc_ADD0DD: LateMemCall
  loc_ADD0E3: FFreeStr var_B4 = ""
  loc_ADD0EA: FFree1Var var_D0 = ""
  loc_ADD0ED: LitStr "       <td nowrap align=""left"">"
  loc_ADD0F0: FMemLdR4 var_164(8)
  loc_ADD0F5: ConcatStr
  loc_ADD0F6: FStStrNoPop var_B4
  loc_ADD0F9: LitStr "</td>"
  loc_ADD0FC: ConcatStr
  loc_ADD0FD: CVarStr var_D0
  loc_ADD100: PopAdLdVar
  loc_ADD101: FLdPr Me
  loc_ADD104: MemLdRfVar from_stack_1.htmFile
  loc_ADD107: LdPrVar
  loc_ADD109: LateMemCall
  loc_ADD10F: FFree1Str var_B4
  loc_ADD112: FFree1Var var_D0 = ""
  loc_ADD115: LitI4 0
  loc_ADD11A: LitI4 0
  loc_ADD11F: LitI2_Byte 0
  loc_ADD121: LitStr "right"
  loc_ADD124: FMemLdR4 var_164(12)
  loc_ADD129: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADD12E: CVarStr var_D0
  loc_ADD131: PopAdLdVar
  loc_ADD132: FLdPr Me
  loc_ADD135: MemLdRfVar from_stack_1.htmFile
  loc_ADD138: LdPrVar
  loc_ADD13A: LateMemCall
  loc_ADD140: FFree1Var var_D0 = ""
  loc_ADD143: LitI4 0
  loc_ADD148: LitI4 0
  loc_ADD14D: LitI2_Byte 0
  loc_ADD14F: LitStr "right"
  loc_ADD152: LitStr "0"
  loc_ADD155: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADD15A: CVarStr var_D0
  loc_ADD15D: PopAdLdVar
  loc_ADD15E: FLdPr Me
  loc_ADD161: MemLdRfVar from_stack_1.htmFile
  loc_ADD164: LdPrVar
  loc_ADD166: LateMemCall
  loc_ADD16C: FFree1Var var_D0 = ""
  loc_ADD16F: LitI4 0
  loc_ADD174: LitI4 0
  loc_ADD179: LitI2_Byte 0
  loc_ADD17B: LitStr "right"
  loc_ADD17E: LitStr "0"
  loc_ADD181: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADD186: CVarStr var_D0
  loc_ADD189: PopAdLdVar
  loc_ADD18A: FLdPr Me
  loc_ADD18D: MemLdRfVar from_stack_1.htmFile
  loc_ADD190: LdPrVar
  loc_ADD192: LateMemCall
  loc_ADD198: FFree1Var var_D0 = ""
  loc_ADD19B: LitI4 0
  loc_ADD1A0: FStR4 var_164
  loc_ADD1A3: AryUnlock
  loc_ADD1A6: AryUnlock
  loc_ADD1A9: FLdPr Me
  loc_ADD1AC: MemLdI2 global_84
  loc_ADD1AF: LitI2_Byte 1
  loc_ADD1B1: EqI2
  loc_ADD1B2: BranchF loc_ADD204
  loc_ADD1B5: LitStr "  <td rowspan="""
  loc_ADD1B8: FLdPr Me
  loc_ADD1BB: MemLdI2 global_86
  loc_ADD1BE: CI4UI1
  loc_ADD1BF: FLdPr Me
  loc_ADD1C2: MemLdStr global_80
  loc_ADD1C5: Ary1LdPr
  loc_ADD1C6: MemLdI2 global_8
  loc_ADD1C9: CStrUI1
  loc_ADD1CB: FStStrNoPop var_B4
  loc_ADD1CE: ConcatStr
  loc_ADD1CF: FStStrNoPop var_B8
  loc_ADD1D2: LitStr """ align=""right"" class=""Totales"">"
  loc_ADD1D5: ConcatStr
  loc_ADD1D6: FStStrNoPop var_BC
  loc_ADD1D9: LitStr "0"
  loc_ADD1DC: ConcatStr
  loc_ADD1DD: FStStrNoPop var_C0
  loc_ADD1E0: LitStr "</td>"
  loc_ADD1E3: ConcatStr
  loc_ADD1E4: CVarStr var_D0
  loc_ADD1E7: PopAdLdVar
  loc_ADD1E8: FLdPr Me
  loc_ADD1EB: MemLdRfVar from_stack_1.htmFile
  loc_ADD1EE: LdPrVar
  loc_ADD1F0: LateMemCall
  loc_ADD1F6: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADD201: FFree1Var var_D0 = ""
  loc_ADD204: LitVarStr var_A0, "     </tr>"
  loc_ADD209: PopAdLdVar
  loc_ADD20A: FLdPr Me
  loc_ADD20D: MemLdRfVar from_stack_1.htmFile
  loc_ADD210: LdPrVar
  loc_ADD212: LateMemCall
  loc_ADD218: FLdPr Me
  loc_ADD21B: MemLdRfVar from_stack_1.global_84
  loc_ADD21E: NextI2 var_158, loc_ADD066
  loc_ADD223: FLdPr Me
  loc_ADD226: MemLdRfVar from_stack_1.global_86
  loc_ADD229: NextI2 var_154, loc_ADCFD1
  loc_ADD22E: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADD233: PopAdLdVar
  loc_ADD234: FLdPr Me
  loc_ADD237: MemLdRfVar from_stack_1.htmFile
  loc_ADD23A: LdPrVar
  loc_ADD23C: LateMemCall
  loc_ADD242: LitVarStr var_A0, "    <td colspan=""7"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_ADD247: PopAdLdVar
  loc_ADD248: FLdPr Me
  loc_ADD24B: MemLdRfVar from_stack_1.htmFile
  loc_ADD24E: LdPrVar
  loc_ADD250: LateMemCall
  loc_ADD256: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADD259: LitStr "0"
  loc_ADD25C: ConcatStr
  loc_ADD25D: FStStrNoPop var_B4
  loc_ADD260: LitStr "</th>"
  loc_ADD263: ConcatStr
  loc_ADD264: CVarStr var_D0
  loc_ADD267: PopAdLdVar
  loc_ADD268: FLdPr Me
  loc_ADD26B: MemLdRfVar from_stack_1.htmFile
  loc_ADD26E: LdPrVar
  loc_ADD270: LateMemCall
  loc_ADD276: FFree1Str var_B4
  loc_ADD279: FFree1Var var_D0 = ""
  loc_ADD27C: LitVarStr var_A0, "     </tr>"
  loc_ADD281: PopAdLdVar
  loc_ADD282: FLdPr Me
  loc_ADD285: MemLdRfVar from_stack_1.htmFile
  loc_ADD288: LdPrVar
  loc_ADD28A: LateMemCall
  loc_ADD290: Call Proc_224_33_983A40()
  loc_ADD295: FLdPr Me
  loc_ADD298: MemLdRfVar from_stack_1.htmFile
  loc_ADD29B: LdPrVar
  loc_ADD29D: LateMemCall
  loc_ADD2A3: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADD2A8: ExitProcHresult
End Sub

Private Function Proc_224_30_9B26A0() '9B26A0
  'Data Table: 48E278
  loc_9B2600: FLdPr Me
  loc_9B2603: MemLdI2 global_86
  loc_9B2606: LitI2_Byte 1
  loc_9B2608: AddI2
  loc_9B2609: FLdPr Me
  loc_9B260C: MemStI2 global_86
  loc_9B260F: LitI2_Byte 0
  loc_9B2611: FLdPr Me
  loc_9B2614: MemStI2 global_84
  loc_9B2617: LitI4 0
  loc_9B261C: FLdPr Me
  loc_9B261F: MemLdI2 global_86
  loc_9B2622: CI4UI1
  loc_9B2623: FLdPr Me
  loc_9B2626: MemLdRfVar from_stack_1.global_80
  loc_9B2629: RedimPreserve
  loc_9B2633: FLdRfVar var_A0
  loc_9B2636: LitVarStr var_9C, "ExpeImpu"
  loc_9B263B: PopAdLdVar
  loc_9B263C: FLdRfVar var_8C
  loc_9B263F: FLdRfVar var_88
  loc_9B2642: FLdPr Me
  loc_9B2645: MemLdRfVar from_stack_1.global_72
  loc_9B2648: NewIfNullPr clsimputacion
  loc_9B264B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9B2650: FLdPr var_88
  loc_9B2653:  = Me.Fields
  loc_9B2658: FLdPr var_8C
  loc_9B265B: from_stack_2 = Me.Item(from_stack_1)
  loc_9B2660: LitI2_Byte 0
  loc_9B2662: LitVar_Missing var_D4
  loc_9B2665: LitI2_Byte 0
  loc_9B2667: FLdZeroAd var_A0
  loc_9B266A: CVarAd
  loc_9B266E: PopAdLdVar
  loc_9B266F: FLdPr Me
  loc_9B2672: MemLdI2 global_86
  loc_9B2675: CI4UI1
  loc_9B2676: FLdPr Me
  loc_9B2679: MemLdStr global_80
  loc_9B267C: AryLock
  loc_9B267F: Ary1LdPr
  loc_9B2680: MemLdRfVar from_stack_1.global_0
  loc_9B2683: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B2688: AryUnlock
  loc_9B268B: FFreeAd var_88 = ""
  loc_9B2692: FFreeVar var_B4 = ""
  loc_9B2699: Call Proc_224_31_A8F7AC()
  loc_9B269E: ExitProcHresult
End Function

Private Function Proc_224_31_A8F7AC() 'A8F7AC
  'Data Table: 48E278
  loc_A8F33C: FLdPr Me
  loc_A8F33F: MemLdI2 global_84
  loc_A8F342: LitI2_Byte 1
  loc_A8F344: AddI2
  loc_A8F345: FLdPr Me
  loc_A8F348: MemStI2 global_84
  loc_A8F34B: LitI4 0
  loc_A8F350: FLdPr Me
  loc_A8F353: MemLdI2 global_84
  loc_A8F356: CI4UI1
  loc_A8F357: FLdPr Me
  loc_A8F35A: MemLdI2 global_86
  loc_A8F35D: CI4UI1
  loc_A8F35E: FLdPr Me
  loc_A8F361: MemLdStr global_80
  loc_A8F364: Ary1LdPr
  loc_A8F365: MemLdRfVar from_stack_1.global_4
  loc_A8F368: RedimPreserve
  loc_A8F372: FLdRfVar var_B0
  loc_A8F375: FLdRfVar var_A0
  loc_A8F378: LitVarStr var_9C, "CucuPers"
  loc_A8F37D: PopAdLdVar
  loc_A8F37E: FLdRfVar var_8C
  loc_A8F381: FLdRfVar var_88
  loc_A8F384: FLdPr Me
  loc_A8F387: MemLdRfVar from_stack_1.global_72
  loc_A8F38A: NewIfNullPr clsimputacion
  loc_A8F38D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F392: FLdPr var_88
  loc_A8F395:  = Me.Fields
  loc_A8F39A: FLdPr var_8C
  loc_A8F39D: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F3A2: FLdPr var_A0
  loc_A8F3A5:  = Me.Value
  loc_A8F3AA: FLdRfVar var_B0
  loc_A8F3AD: LitVarI2 var_C0, 0
  loc_A8F3B2: HardType
  loc_A8F3B3: EqVarBool
  loc_A8F3B5: FFreeAd var_88 = "": var_8C = ""
  loc_A8F3BE: FFree1Var var_B0 = ""
  loc_A8F3C1: BranchF loc_A8F3C6
  loc_A8F3C4: Stop
  loc_A8F3C6: FLdRfVar var_A0
  loc_A8F3C9: LitVarStr var_9C, "CucuPers"
  loc_A8F3CE: PopAdLdVar
  loc_A8F3CF: FLdRfVar var_8C
  loc_A8F3D2: FLdRfVar var_88
  loc_A8F3D5: FLdPr Me
  loc_A8F3D8: MemLdRfVar from_stack_1.global_72
  loc_A8F3DB: NewIfNullPr clsimputacion
  loc_A8F3DE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F3E3: FLdPr var_88
  loc_A8F3E6:  = Me.Fields
  loc_A8F3EB: FLdPr var_8C
  loc_A8F3EE: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F3F3: LitI2_Byte 0
  loc_A8F3F5: LitVar_Missing var_D0
  loc_A8F3F8: LitI2_Byte 0
  loc_A8F3FA: FLdZeroAd var_A0
  loc_A8F3FD: CVarAd
  loc_A8F401: PopAdLdVar
  loc_A8F402: FLdPr Me
  loc_A8F405: MemLdI2 global_84
  loc_A8F408: CI4UI1
  loc_A8F409: FLdPr Me
  loc_A8F40C: MemLdI2 global_86
  loc_A8F40F: CI4UI1
  loc_A8F410: FLdPr Me
  loc_A8F413: MemLdStr global_80
  loc_A8F416: AryLock
  loc_A8F419: Ary1LdPr
  loc_A8F41A: MemLdStr global_4
  loc_A8F41D: AryLock
  loc_A8F420: Ary1LdPr
  loc_A8F421: MemLdRfVar from_stack_1.global_0
  loc_A8F424: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F429: AryUnlock
  loc_A8F42C: AryUnlock
  loc_A8F42F: FFreeAd var_88 = ""
  loc_A8F436: FFreeVar var_B0 = ""
  loc_A8F43D: FLdRfVar var_A0
  loc_A8F440: LitVarStr var_9C, "DetaProv"
  loc_A8F445: PopAdLdVar
  loc_A8F446: FLdRfVar var_8C
  loc_A8F449: FLdRfVar var_88
  loc_A8F44C: FLdPr Me
  loc_A8F44F: MemLdRfVar from_stack_1.global_72
  loc_A8F452: NewIfNullPr clsimputacion
  loc_A8F455: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F45A: FLdPr var_88
  loc_A8F45D:  = Me.Fields
  loc_A8F462: FLdPr var_8C
  loc_A8F465: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F46A: LitI2_Byte 0
  loc_A8F46C: LitVar_Missing var_D0
  loc_A8F46F: LitI2_Byte 0
  loc_A8F471: FLdZeroAd var_A0
  loc_A8F474: CVarAd
  loc_A8F478: PopAdLdVar
  loc_A8F479: FLdPr Me
  loc_A8F47C: MemLdI2 global_84
  loc_A8F47F: CI4UI1
  loc_A8F480: FLdPr Me
  loc_A8F483: MemLdI2 global_86
  loc_A8F486: CI4UI1
  loc_A8F487: FLdPr Me
  loc_A8F48A: MemLdStr global_80
  loc_A8F48D: AryLock
  loc_A8F490: Ary1LdPr
  loc_A8F491: MemLdStr global_4
  loc_A8F494: AryLock
  loc_A8F497: Ary1LdPr
  loc_A8F498: MemLdRfVar from_stack_1.global_4
  loc_A8F49B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F4A0: AryUnlock
  loc_A8F4A3: AryUnlock
  loc_A8F4A6: FFreeAd var_88 = ""
  loc_A8F4AD: FFreeVar var_B0 = ""
  loc_A8F4B4: FLdRfVar var_A0
  loc_A8F4B7: LitVarStr var_9C, "NumeFact"
  loc_A8F4BC: PopAdLdVar
  loc_A8F4BD: FLdRfVar var_8C
  loc_A8F4C0: FLdRfVar var_88
  loc_A8F4C3: FLdPr Me
  loc_A8F4C6: MemLdRfVar from_stack_1.global_72
  loc_A8F4C9: NewIfNullPr clsimputacion
  loc_A8F4CC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F4D1: FLdPr var_88
  loc_A8F4D4:  = Me.Fields
  loc_A8F4D9: FLdPr var_8C
  loc_A8F4DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F4E1: LitI2_Byte 0
  loc_A8F4E3: LitVar_Missing var_D0
  loc_A8F4E6: LitI2_Byte 0
  loc_A8F4E8: FLdZeroAd var_A0
  loc_A8F4EB: CVarAd
  loc_A8F4EF: PopAdLdVar
  loc_A8F4F0: FLdPr Me
  loc_A8F4F3: MemLdI2 global_84
  loc_A8F4F6: CI4UI1
  loc_A8F4F7: FLdPr Me
  loc_A8F4FA: MemLdI2 global_86
  loc_A8F4FD: CI4UI1
  loc_A8F4FE: FLdPr Me
  loc_A8F501: MemLdStr global_80
  loc_A8F504: AryLock
  loc_A8F507: Ary1LdPr
  loc_A8F508: MemLdStr global_4
  loc_A8F50B: AryLock
  loc_A8F50E: Ary1LdPr
  loc_A8F50F: MemLdRfVar from_stack_1.global_8
  loc_A8F512: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F517: AryUnlock
  loc_A8F51A: AryUnlock
  loc_A8F51D: FFreeAd var_88 = ""
  loc_A8F524: FFreeVar var_B0 = ""
  loc_A8F52B: FLdRfVar var_A0
  loc_A8F52E: LitVarStr var_9C, "FefaDeve"
  loc_A8F533: PopAdLdVar
  loc_A8F534: FLdRfVar var_8C
  loc_A8F537: FLdRfVar var_88
  loc_A8F53A: FLdPr Me
  loc_A8F53D: MemLdRfVar from_stack_1.global_72
  loc_A8F540: NewIfNullPr clsimputacion
  loc_A8F543: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F548: FLdPr var_88
  loc_A8F54B:  = Me.Fields
  loc_A8F550: FLdPr var_8C
  loc_A8F553: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F558: LitI2_Byte 0
  loc_A8F55A: LitVar_Missing var_D0
  loc_A8F55D: LitI2_Byte 0
  loc_A8F55F: FLdZeroAd var_A0
  loc_A8F562: CVarAd
  loc_A8F566: PopAdLdVar
  loc_A8F567: FLdPr Me
  loc_A8F56A: MemLdI2 global_84
  loc_A8F56D: CI4UI1
  loc_A8F56E: FLdPr Me
  loc_A8F571: MemLdI2 global_86
  loc_A8F574: CI4UI1
  loc_A8F575: FLdPr Me
  loc_A8F578: MemLdStr global_80
  loc_A8F57B: AryLock
  loc_A8F57E: Ary1LdPr
  loc_A8F57F: MemLdStr global_4
  loc_A8F582: AryLock
  loc_A8F585: Ary1LdPr
  loc_A8F586: MemLdRfVar from_stack_1.global_12
  loc_A8F589: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F58E: AryUnlock
  loc_A8F591: AryUnlock
  loc_A8F594: FFreeAd var_88 = ""
  loc_A8F59B: FFreeVar var_B0 = ""
  loc_A8F5A2: FLdRfVar var_A0
  loc_A8F5A5: LitVarStr var_9C, "DeveImpu"
  loc_A8F5AA: PopAdLdVar
  loc_A8F5AB: FLdRfVar var_8C
  loc_A8F5AE: FLdRfVar var_88
  loc_A8F5B1: FLdPr Me
  loc_A8F5B4: MemLdRfVar from_stack_1.global_72
  loc_A8F5B7: NewIfNullPr clsimputacion
  loc_A8F5BA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F5BF: FLdPr var_88
  loc_A8F5C2:  = Me.Fields
  loc_A8F5C7: FLdPr var_8C
  loc_A8F5CA: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F5CF: LitI2_Byte 0
  loc_A8F5D1: LitVar_Missing var_D0
  loc_A8F5D4: LitI2_Byte &HFF
  loc_A8F5D6: FLdZeroAd var_A0
  loc_A8F5D9: CVarAd
  loc_A8F5DD: PopAdLdVar
  loc_A8F5DE: FLdPr Me
  loc_A8F5E1: MemLdI2 global_84
  loc_A8F5E4: CI4UI1
  loc_A8F5E5: FLdPr Me
  loc_A8F5E8: MemLdI2 global_86
  loc_A8F5EB: CI4UI1
  loc_A8F5EC: FLdPr Me
  loc_A8F5EF: MemLdStr global_80
  loc_A8F5F2: AryLock
  loc_A8F5F5: Ary1LdPr
  loc_A8F5F6: MemLdStr global_4
  loc_A8F5F9: AryLock
  loc_A8F5FC: Ary1LdPr
  loc_A8F5FD: MemLdRfVar from_stack_1.global_16
  loc_A8F600: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F605: AryUnlock
  loc_A8F608: AryUnlock
  loc_A8F60B: FFreeAd var_88 = ""
  loc_A8F612: FFreeVar var_B0 = ""
  loc_A8F619: FLdRfVar var_A0
  loc_A8F61C: LitVarStr var_9C, "MapaImpu"
  loc_A8F621: PopAdLdVar
  loc_A8F622: FLdRfVar var_8C
  loc_A8F625: FLdRfVar var_88
  loc_A8F628: FLdPr Me
  loc_A8F62B: MemLdRfVar from_stack_1.global_72
  loc_A8F62E: NewIfNullPr clsimputacion
  loc_A8F631: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F636: FLdPr var_88
  loc_A8F639:  = Me.Fields
  loc_A8F63E: FLdPr var_8C
  loc_A8F641: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F646: LitI2_Byte 0
  loc_A8F648: LitVar_Missing var_D0
  loc_A8F64B: LitI2_Byte &HFF
  loc_A8F64D: FLdZeroAd var_A0
  loc_A8F650: CVarAd
  loc_A8F654: PopAdLdVar
  loc_A8F655: FLdPr Me
  loc_A8F658: MemLdI2 global_84
  loc_A8F65B: CI4UI1
  loc_A8F65C: FLdPr Me
  loc_A8F65F: MemLdI2 global_86
  loc_A8F662: CI4UI1
  loc_A8F663: FLdPr Me
  loc_A8F666: MemLdStr global_80
  loc_A8F669: AryLock
  loc_A8F66C: Ary1LdPr
  loc_A8F66D: MemLdStr global_4
  loc_A8F670: AryLock
  loc_A8F673: Ary1LdPr
  loc_A8F674: MemLdRfVar from_stack_1.global_20
  loc_A8F677: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F67C: AryUnlock
  loc_A8F67F: AryUnlock
  loc_A8F682: FFreeAd var_88 = ""
  loc_A8F689: FFreeVar var_B0 = ""
  loc_A8F690: FLdRfVar var_A0
  loc_A8F693: LitVarStr var_9C, "ResiDeve"
  loc_A8F698: PopAdLdVar
  loc_A8F699: FLdRfVar var_8C
  loc_A8F69C: FLdRfVar var_88
  loc_A8F69F: FLdPr Me
  loc_A8F6A2: MemLdRfVar from_stack_1.global_72
  loc_A8F6A5: NewIfNullPr clsimputacion
  loc_A8F6A8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F6AD: FLdPr var_88
  loc_A8F6B0:  = Me.Fields
  loc_A8F6B5: FLdPr var_8C
  loc_A8F6B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F6BD: LitI2_Byte 0
  loc_A8F6BF: LitVar_Missing var_D0
  loc_A8F6C2: LitI2_Byte 0
  loc_A8F6C4: FLdZeroAd var_A0
  loc_A8F6C7: CVarAd
  loc_A8F6CB: PopAdLdVar
  loc_A8F6CC: FLdPr Me
  loc_A8F6CF: MemLdI2 global_84
  loc_A8F6D2: CI4UI1
  loc_A8F6D3: FLdPr Me
  loc_A8F6D6: MemLdI2 global_86
  loc_A8F6D9: CI4UI1
  loc_A8F6DA: FLdPr Me
  loc_A8F6DD: MemLdStr global_80
  loc_A8F6E0: AryLock
  loc_A8F6E3: Ary1LdPr
  loc_A8F6E4: MemLdStr global_4
  loc_A8F6E7: AryLock
  loc_A8F6EA: Ary1LdPr
  loc_A8F6EB: MemLdRfVar from_stack_1.global_24
  loc_A8F6EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F6F3: AryUnlock
  loc_A8F6F6: AryUnlock
  loc_A8F6F9: FFreeAd var_88 = ""
  loc_A8F700: FFreeVar var_B0 = ""
  loc_A8F707: FLdRfVar var_A0
  loc_A8F70A: LitVarStr var_9C, "RepaImpu"
  loc_A8F70F: PopAdLdVar
  loc_A8F710: FLdRfVar var_8C
  loc_A8F713: FLdRfVar var_88
  loc_A8F716: FLdPr Me
  loc_A8F719: MemLdRfVar from_stack_1.global_72
  loc_A8F71C: NewIfNullPr clsimputacion
  loc_A8F71F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8F724: FLdPr var_88
  loc_A8F727:  = Me.Fields
  loc_A8F72C: FLdPr var_8C
  loc_A8F72F: from_stack_2 = Me.Item(from_stack_1)
  loc_A8F734: LitI2_Byte 0
  loc_A8F736: FLdPr Me
  loc_A8F739: MemLdI2 global_86
  loc_A8F73C: CI4UI1
  loc_A8F73D: FLdPr Me
  loc_A8F740: MemLdStr global_80
  loc_A8F743: AryLock
  loc_A8F746: Ary1LdPr
  loc_A8F747: MemLdRfVar from_stack_1.global_12
  loc_A8F74A: CVarRef
  loc_A8F74F: LitI2_Byte &HFF
  loc_A8F751: FLdZeroAd var_A0
  loc_A8F754: CVarAd
  loc_A8F758: PopAdLdVar
  loc_A8F759: FLdPr Me
  loc_A8F75C: MemLdI2 global_84
  loc_A8F75F: CI4UI1
  loc_A8F760: FLdPr Me
  loc_A8F763: MemLdI2 global_86
  loc_A8F766: CI4UI1
  loc_A8F767: FLdPr Me
  loc_A8F76A: MemLdStr global_80
  loc_A8F76D: AryLock
  loc_A8F770: Ary1LdPr
  loc_A8F771: MemLdStr global_4
  loc_A8F774: AryLock
  loc_A8F777: Ary1LdPr
  loc_A8F778: MemLdRfVar from_stack_1.global_28
  loc_A8F77B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8F780: AryUnlock
  loc_A8F783: AryUnlock
  loc_A8F786: AryUnlock
  loc_A8F789: FFreeAd var_88 = ""
  loc_A8F790: FFree1Var var_B0 = ""
  loc_A8F793: LitI4 1
  loc_A8F798: PopTmpLdAdStr var_E0
  loc_A8F79B: FLdPr Me
  loc_A8F79E: MemLdRfVar from_stack_1.global_72
  loc_A8F7A1: NewIfNullPr clsimputacion
  loc_A8F7A4: Call clsimputacion.Mover(from_stack_1v)
  loc_A8F7A9: ExitProcHresult
End Function

Private Function Proc_224_32_A97B10() 'A97B10
  'Data Table: 48E278
  loc_A97668: LitVarStr var_94, "<html>"
  loc_A9766D: PopAdLdVar
  loc_A9766E: FLdPr Me
  loc_A97671: MemLdRfVar from_stack_1.htmFile
  loc_A97674: LdPrVar
  loc_A97676: LateMemCall
  loc_A9767C: LitVarStr var_94, "<head>"
  loc_A97681: PopAdLdVar
  loc_A97682: FLdPr Me
  loc_A97685: MemLdRfVar from_stack_1.htmFile
  loc_A97688: LdPrVar
  loc_A9768A: LateMemCall
  loc_A97690: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A97695: PopAdLdVar
  loc_A97696: FLdPr Me
  loc_A97699: MemLdRfVar from_stack_1.htmFile
  loc_A9769C: LdPrVar
  loc_A9769E: LateMemCall
  loc_A976A4: LitStr "<title>"
  loc_A976A7: FLdRfVar var_A8
  loc_A976AA: FLdPr Me
  loc_A976AD:  = Me.Caption
  loc_A976B2: ILdRf var_A8
  loc_A976B5: ConcatStr
  loc_A976B6: FStStrNoPop var_AC
  loc_A976B9: LitStr "</title>"
  loc_A976BC: ConcatStr
  loc_A976BD: CVarStr var_BC
  loc_A976C0: PopAdLdVar
  loc_A976C1: FLdPr Me
  loc_A976C4: MemLdRfVar from_stack_1.htmFile
  loc_A976C7: LdPrVar
  loc_A976C9: LateMemCall
  loc_A976CF: FFreeStr var_A8 = ""
  loc_A976D6: FFree1Var var_BC = ""
  loc_A976D9: LitStr vbNullString
  loc_A976DC: ILdRf Me
  loc_A976DF: CastAd
  loc_A976E2: FStAdFunc var_C0
  loc_A976E5: FLdRfVar var_C0
  loc_A976E8: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A976ED: FFree1Ad var_C0
  loc_A976F0: LitI4 0
  loc_A976F5: FStStrCopy var_AC
  loc_A976F8: FLdRfVar var_AC
  loc_A976FB: LitI4 0
  loc_A97700: FStStrCopy var_A8
  loc_A97703: FLdRfVar var_A8
  loc_A97706: LitI2_Byte 0
  loc_A97708: PopTmpLdAd2 var_C2
  loc_A9770B: FLdPr Me
  loc_A9770E: MemLdRfVar from_stack_1.htmFile
  loc_A97711: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A97716: FFreeStr var_A8 = ""
  loc_A9771D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A97722: PopAdLdVar
  loc_A97723: FLdPr Me
  loc_A97726: MemLdRfVar from_stack_1.htmFile
  loc_A97729: LdPrVar
  loc_A9772B: LateMemCall
  loc_A97731: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A97736: PopAdLdVar
  loc_A97737: FLdPr Me
  loc_A9773A: MemLdRfVar from_stack_1.htmFile
  loc_A9773D: LdPrVar
  loc_A9773F: LateMemCall
  loc_A97745: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A9774A: PopAdLdVar
  loc_A9774B: FLdPr Me
  loc_A9774E: MemLdRfVar from_stack_1.htmFile
  loc_A97751: LdPrVar
  loc_A97753: LateMemCall
  loc_A97759: FLdPr Me
  loc_A9775C: MemLdI2 bLogos
  loc_A9775F: BranchF loc_A97776
  loc_A97762: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A97767: PopAdLdVar
  loc_A97768: FLdPr Me
  loc_A9776B: MemLdRfVar from_stack_1.htmFile
  loc_A9776E: LdPrVar
  loc_A97770: LateMemCall
  loc_A97776: LitVarStr var_A4, "    <br>"
  loc_A9777B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A97780: FStVarCopyObj var_BC
  loc_A97783: FLdRfVar var_BC
  loc_A97786: FLdRfVar var_D4
  loc_A97789: ImpAdCallFPR4  = Ucase()
  loc_A9778E: FLdRfVar var_D4
  loc_A97791: ConcatVar var_E4
  loc_A97795: LitVarStr var_F4, "</p>"
  loc_A9779A: ConcatVar var_104
  loc_A9779E: PopAdLdVar
  loc_A9779F: FLdPr Me
  loc_A977A2: MemLdRfVar from_stack_1.htmFile
  loc_A977A5: LdPrVar
  loc_A977A7: LateMemCall
  loc_A977AD: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A977B8: LitStr "    <p>"
  loc_A977BB: FLdRfVar var_A8
  loc_A977BE: FLdPr Me
  loc_A977C1:  = Me.Caption
  loc_A977C6: ILdRf var_A8
  loc_A977C9: ConcatStr
  loc_A977CA: FStStrNoPop var_AC
  loc_A977CD: LitStr "</p></th>"
  loc_A977D0: ConcatStr
  loc_A977D1: CVarStr var_BC
  loc_A977D4: PopAdLdVar
  loc_A977D5: FLdPr Me
  loc_A977D8: MemLdRfVar from_stack_1.htmFile
  loc_A977DB: LdPrVar
  loc_A977DD: LateMemCall
  loc_A977E3: FFreeStr var_A8 = ""
  loc_A977EA: FFree1Var var_BC = ""
  loc_A977ED: LitVarStr var_94, "  </tr>"
  loc_A977F2: PopAdLdVar
  loc_A977F3: FLdPr Me
  loc_A977F6: MemLdRfVar from_stack_1.htmFile
  loc_A977F9: LdPrVar
  loc_A977FB: LateMemCall
  loc_A97801: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A97806: PopAdLdVar
  loc_A97807: FLdPr Me
  loc_A9780A: MemLdRfVar from_stack_1.htmFile
  loc_A9780D: LdPrVar
  loc_A9780F: LateMemCall
  loc_A97815: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A9781A: PopAdLdVar
  loc_A9781B: FLdPr Me
  loc_A9781E: MemLdRfVar from_stack_1.htmFile
  loc_A97821: LdPrVar
  loc_A97823: LateMemCall
  loc_A97829: LitVarStr var_94, "    <th align=""left"">"
  loc_A9782E: PopAdLdVar
  loc_A9782F: FLdPr Me
  loc_A97832: MemLdRfVar from_stack_1.htmFile
  loc_A97835: LdPrVar
  loc_A97837: LateMemCall
  loc_A9783D: LitStr "     Periodo: <span class=""Normal"">"
  loc_A97840: FLdRfVar var_A8
  loc_A97843: FLdPr Me
  loc_A97846: VCallAd Control_ID_cboPeriodo
  loc_A97849: FStAdFunc var_C0
  loc_A9784C: FLdPr var_C0
  loc_A9784F:  = Me.Text
  loc_A97854: ILdRf var_A8
  loc_A97857: ConcatStr
  loc_A97858: FStStrNoPop var_AC
  loc_A9785B: LitStr "</span><br>"
  loc_A9785E: ConcatStr
  loc_A9785F: CVarStr var_BC
  loc_A97862: PopAdLdVar
  loc_A97863: FLdPr Me
  loc_A97866: MemLdRfVar from_stack_1.htmFile
  loc_A97869: LdPrVar
  loc_A9786B: LateMemCall
  loc_A97871: FFreeStr var_A8 = ""
  loc_A97878: FFree1Ad var_C0
  loc_A9787B: FFree1Var var_BC = ""
  loc_A9787E: FLdRfVar var_A8
  loc_A97881: FLdPr Me
  loc_A97884: VCallAd Control_ID_ImporteTxt
  loc_A97887: FStAdFunc var_C0
  loc_A9788A: FLdPr var_C0
  loc_A9788D:  = Me.Text
  loc_A97892: ILdRf var_A8
  loc_A97895: LitStr vbNullString
  loc_A97898: NeStr
  loc_A9789A: FFree1Str var_A8
  loc_A9789D: FFree1Ad var_C0
  loc_A978A0: BranchF loc_A978E4
  loc_A978A3: LitStr "     Importes menores o iguales a: <span class=""Normal"">"
  loc_A978A6: FLdRfVar var_A8
  loc_A978A9: FLdPr Me
  loc_A978AC: VCallAd Control_ID_ImporteTxt
  loc_A978AF: FStAdFunc var_C0
  loc_A978B2: FLdPr var_C0
  loc_A978B5:  = Me.Text
  loc_A978BA: ILdRf var_A8
  loc_A978BD: ConcatStr
  loc_A978BE: FStStrNoPop var_AC
  loc_A978C1: LitStr "</span>"
  loc_A978C4: ConcatStr
  loc_A978C5: CVarStr var_BC
  loc_A978C8: PopAdLdVar
  loc_A978C9: FLdPr Me
  loc_A978CC: MemLdRfVar from_stack_1.htmFile
  loc_A978CF: LdPrVar
  loc_A978D1: LateMemCall
  loc_A978D7: FFreeStr var_A8 = ""
  loc_A978DE: FFree1Ad var_C0
  loc_A978E1: FFree1Var var_BC = ""
  loc_A978E4: LitVarStr var_94, "    </th>"
  loc_A978E9: PopAdLdVar
  loc_A978EA: FLdPr Me
  loc_A978ED: MemLdRfVar from_stack_1.htmFile
  loc_A978F0: LdPrVar
  loc_A978F2: LateMemCall
  loc_A978F8: LitVarStr var_94, "    <th align=""right"">"
  loc_A978FD: PopAdLdVar
  loc_A978FE: FLdPr Me
  loc_A97901: MemLdRfVar from_stack_1.htmFile
  loc_A97904: LdPrVar
  loc_A97906: LateMemCall
  loc_A9790C: LitStr "     Desde: <span class=""Normal"">"
  loc_A9790F: FLdPr Me
  loc_A97912: VCallAd Control_ID_DesdeMsk
  loc_A97915: FStAdFunc var_C0
  loc_A97918: FLdPr var_C0
  loc_A9791B: LateIdLdVar var_BC DispID_15 0
  loc_A97922: CStrVarTmp
  loc_A97923: FStStrNoPop var_A8
  loc_A97926: ConcatStr
  loc_A97927: FStStrNoPop var_AC
  loc_A9792A: LitStr "</span><br>"
  loc_A9792D: ConcatStr
  loc_A9792E: CVarStr var_D4
  loc_A97931: PopAdLdVar
  loc_A97932: FLdPr Me
  loc_A97935: MemLdRfVar from_stack_1.htmFile
  loc_A97938: LdPrVar
  loc_A9793A: LateMemCall
  loc_A97940: FFreeStr var_A8 = ""
  loc_A97947: FFree1Ad var_C0
  loc_A9794A: FFreeVar var_BC = ""
  loc_A97951: LitStr "     Hasta: <span class=""Normal"">"
  loc_A97954: FLdPr Me
  loc_A97957: VCallAd Control_ID_HastaMsk
  loc_A9795A: FStAdFunc var_C0
  loc_A9795D: FLdPr var_C0
  loc_A97960: LateIdLdVar var_BC DispID_15 0
  loc_A97967: CStrVarTmp
  loc_A97968: FStStrNoPop var_A8
  loc_A9796B: ConcatStr
  loc_A9796C: FStStrNoPop var_AC
  loc_A9796F: LitStr "</span>"
  loc_A97972: ConcatStr
  loc_A97973: CVarStr var_D4
  loc_A97976: PopAdLdVar
  loc_A97977: FLdPr Me
  loc_A9797A: MemLdRfVar from_stack_1.htmFile
  loc_A9797D: LdPrVar
  loc_A9797F: LateMemCall
  loc_A97985: FFreeStr var_A8 = ""
  loc_A9798C: FFree1Ad var_C0
  loc_A9798F: FFreeVar var_BC = ""
  loc_A97996: FLdRfVar var_C2
  loc_A97999: FLdPr Me
  loc_A9799C: VCallAd Control_ID_chkOcultarImporte
  loc_A9799F: FStAdFunc var_C0
  loc_A979A2: FLdPr var_C0
  loc_A979A5:  = Me.Value
  loc_A979AA: FLdI2 var_C2
  loc_A979AD: CI4UI1
  loc_A979AE: LitI4 1
  loc_A979B3: EqI4
  loc_A979B4: FFree1Ad var_C0
  loc_A979B7: BranchF loc_A979CE
  loc_A979BA: LitVarStr var_94, "     <br><span class=""Normal"">Los importes han sido ocultados...</span>"
  loc_A979BF: PopAdLdVar
  loc_A979C0: FLdPr Me
  loc_A979C3: MemLdRfVar from_stack_1.htmFile
  loc_A979C6: LdPrVar
  loc_A979C8: LateMemCall
  loc_A979CE: LitVarStr var_94, "    </th>"
  loc_A979D3: PopAdLdVar
  loc_A979D4: FLdPr Me
  loc_A979D7: MemLdRfVar from_stack_1.htmFile
  loc_A979DA: LdPrVar
  loc_A979DC: LateMemCall
  loc_A979E2: LitVarStr var_94, "  </tr>"
  loc_A979E7: PopAdLdVar
  loc_A979E8: FLdPr Me
  loc_A979EB: MemLdRfVar from_stack_1.htmFile
  loc_A979EE: LdPrVar
  loc_A979F0: LateMemCall
  loc_A979F6: LitVarStr var_94, "</table>"
  loc_A979FB: PopAdLdVar
  loc_A979FC: FLdPr Me
  loc_A979FF: MemLdRfVar from_stack_1.htmFile
  loc_A97A02: LdPrVar
  loc_A97A04: LateMemCall
  loc_A97A0A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A97A0F: PopAdLdVar
  loc_A97A10: FLdPr Me
  loc_A97A13: MemLdRfVar from_stack_1.htmFile
  loc_A97A16: LdPrVar
  loc_A97A18: LateMemCall
  loc_A97A1E: LitVarStr var_94, "  <THEAD>"
  loc_A97A23: PopAdLdVar
  loc_A97A24: FLdPr Me
  loc_A97A27: MemLdRfVar from_stack_1.htmFile
  loc_A97A2A: LdPrVar
  loc_A97A2C: LateMemCall
  loc_A97A32: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A97A37: PopAdLdVar
  loc_A97A38: FLdPr Me
  loc_A97A3B: MemLdRfVar from_stack_1.htmFile
  loc_A97A3E: LdPrVar
  loc_A97A40: LateMemCall
  loc_A97A46: LitVarStr var_94, "    <th>Expediente<br>de Pago</th>"
  loc_A97A4B: PopAdLdVar
  loc_A97A4C: FLdPr Me
  loc_A97A4F: MemLdRfVar from_stack_1.htmFile
  loc_A97A52: LdPrVar
  loc_A97A54: LateMemCall
  loc_A97A5A: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_A97A5F: PopAdLdVar
  loc_A97A60: FLdPr Me
  loc_A97A63: MemLdRfVar from_stack_1.htmFile
  loc_A97A66: LdPrVar
  loc_A97A68: LateMemCall
  loc_A97A6E: LitVarStr var_94, "    <th>Factura</th>"
  loc_A97A73: PopAdLdVar
  loc_A97A74: FLdPr Me
  loc_A97A77: MemLdRfVar from_stack_1.htmFile
  loc_A97A7A: LdPrVar
  loc_A97A7C: LateMemCall
  loc_A97A82: LitVarStr var_94, "    <th>Fecha de Factura</th>"
  loc_A97A87: PopAdLdVar
  loc_A97A88: FLdPr Me
  loc_A97A8B: MemLdRfVar from_stack_1.htmFile
  loc_A97A8E: LdPrVar
  loc_A97A90: LateMemCall
  loc_A97A96: LitVarStr var_94, "    <th>Total Devengado</th>"
  loc_A97A9B: PopAdLdVar
  loc_A97A9C: FLdPr Me
  loc_A97A9F: MemLdRfVar from_stack_1.htmFile
  loc_A97AA2: LdPrVar
  loc_A97AA4: LateMemCall
  loc_A97AAA: LitVarStr var_94, "    <th>Total Mandado a Pagar</th>"
  loc_A97AAF: PopAdLdVar
  loc_A97AB0: FLdPr Me
  loc_A97AB3: MemLdRfVar from_stack_1.htmFile
  loc_A97AB6: LdPrVar
  loc_A97AB8: LateMemCall
  loc_A97ABE: LitVarStr var_94, "    <th>Transferido</th>"
  loc_A97AC3: PopAdLdVar
  loc_A97AC4: FLdPr Me
  loc_A97AC7: MemLdRfVar from_stack_1.htmFile
  loc_A97ACA: LdPrVar
  loc_A97ACC: LateMemCall
  loc_A97AD2: LitVarStr var_94, "    <th>Total Residuos Pasivos por<br>Expediente</th>"
  loc_A97AD7: PopAdLdVar
  loc_A97AD8: FLdPr Me
  loc_A97ADB: MemLdRfVar from_stack_1.htmFile
  loc_A97ADE: LdPrVar
  loc_A97AE0: LateMemCall
  loc_A97AE6: LitVarStr var_94, "  </tr>"
  loc_A97AEB: PopAdLdVar
  loc_A97AEC: FLdPr Me
  loc_A97AEF: MemLdRfVar from_stack_1.htmFile
  loc_A97AF2: LdPrVar
  loc_A97AF4: LateMemCall
  loc_A97AFA: LitVarStr var_94, "  </THEAD>"
  loc_A97AFF: PopAdLdVar
  loc_A97B00: FLdPr Me
  loc_A97B03: MemLdRfVar from_stack_1.htmFile
  loc_A97B06: LdPrVar
  loc_A97B08: LateMemCall
  loc_A97B0E: ExitProcHresult
End Function

Private Function Proc_224_33_983A40() '983A40
  'Data Table: 48E278
  loc_983A00: LitVarStr var_94, "</table>"
  loc_983A05: PopAdLdVar
  loc_983A06: FLdPr Me
  loc_983A09: MemLdRfVar from_stack_1.htmFile
  loc_983A0C: LdPrVar
  loc_983A0E: LateMemCall
  loc_983A14: LitVarStr var_94, "</body>"
  loc_983A19: PopAdLdVar
  loc_983A1A: FLdPr Me
  loc_983A1D: MemLdRfVar from_stack_1.htmFile
  loc_983A20: LdPrVar
  loc_983A22: LateMemCall
  loc_983A28: LitVarStr var_94, "</html>"
  loc_983A2D: PopAdLdVar
  loc_983A2E: FLdPr Me
  loc_983A31: MemLdRfVar from_stack_1.htmFile
  loc_983A34: LdPrVar
  loc_983A36: LateMemCall
  loc_983A3C: ExitProcHresult
End Function
