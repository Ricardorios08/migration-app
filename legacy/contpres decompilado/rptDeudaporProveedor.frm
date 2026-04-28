VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeudaporProveedor
  Caption = "Devengados SIN Cálculo de Retenciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeudaporProveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9630
  ClientHeight = 3825
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3570
    Width = 9630
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptDeudaporProveedor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6120
    Top = 2640
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptDeudaporProveedor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeudaporProveedor.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2400
    Width = 1815
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 2295
    TabIndex = 0
    Begin VB.CommandButton CucuPersCmd
      Left = 3810
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptDeudaporProveedor.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 3840
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptDeudaporProveedor.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton HastaCmd
      Left = 3840
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptDeudaporProveedor.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2640
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
      Left = 2640
      Top = 840
      Width = 1095
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptDeudaporProveedor.frx":177E
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2640
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptDeudaporProveedor.frx":1806
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2580
      Top = 1800
      Width = 1215
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptDeudaporProveedor.frx":188E
    End
    Begin VB.Label DetaProvLbl
      Left = 4290
      Top = 1800
      Width = 4935
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Proveedor:"
      Left = 1680
      Top = 1800
      Width = 780
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 1995
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 2040
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1920
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6240
    Top = 3000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptDeudaporProveedor.frx":1918
  End
End

Attribute VB_Name = "rptDeudaporProveedor"

Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005DBE0C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_3_005DBE4C
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_4_005DBE90
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98926C
  'Data Table: 488378
  loc_989234: FLdPr Me
  loc_989237: VCallAd Control_ID_statusBar
  loc_98923A: FStAdFunc var_88
  loc_98923D: FLdPr var_88
  loc_989240: LateIdLdVar var_98 DispID_1 0
  loc_989247: CStrVarTmp
  loc_989248: CVarStr var_A8
  loc_98924B: PopAdLdVar
  loc_98924C: FLdPr Me
  loc_98924F: VCallAd Control_ID_statusBar
  loc_989252: FStAdFunc var_BC
  loc_989255: FLdPr var_BC
  loc_989258: LateIdSt
  loc_98925D: FFreeAd var_88 = ""
  loc_989264: FFreeVar var_98 = ""
  loc_98926B: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '98237C
  'Data Table: 488378
  loc_982340: LitVar_Missing var_A4
  loc_982343: PopAdLdVar
  loc_982344: LitVarI4
  loc_98234C: PopAdLdVar
  loc_98234D: ImpAdLdRf MemVar_C3D9A8
  loc_982350: NewIfNullPr frmCalendario
  loc_982353: frmCalendario.Show from_stack_1, from_stack_2
  loc_982358: ImpAdLdRf MemVar_C3D038
  loc_98235B: CDargRef
  loc_98235F: FLdPr Me
  loc_982362: VCallAd Control_ID_DesdeMsk
  loc_982365: FStAdFunc var_A8
  loc_982368: FLdPr var_A8
  loc_98236B: LateIdSt
  loc_982370: FFree1Ad var_A8
  loc_982373: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_982378: ExitProcHresult
  loc_982379: ImpAdStFPR8 MemVar_4148D4
End Sub

Private Sub cmdPredeterminada_Click() '95DCD8
  'Data Table: 488378
  loc_95DCC0: ILdRf Me
  loc_95DCC3: CastAd
  loc_95DCC6: FStAdFunc var_88
  loc_95DCC9: FLdRfVar var_88
  loc_95DCCC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95DCD1: FFree1Ad var_88
  loc_95DCD4: ExitProcHresult
  loc_95DCD5: LitVar_Missing arg_363
End Sub

Private Sub cboPeriodo_Click() '9A3358
  'Data Table: 488378
  loc_9A32E8: FLdRfVar var_8C
  loc_9A32EB: FLdPr Me
  loc_9A32EE: VCallAd Control_ID_cboPeriodo
  loc_9A32F1: FStAdFunc var_88
  loc_9A32F4: FLdPr var_88
  loc_9A32F7:  = Me.Text
  loc_9A32FC: LitI2_Byte 1
  loc_9A32FE: LitI2_Byte 1
  loc_9A3300: ILdRf var_8C
  loc_9A3303: CI2Str
  loc_9A3305: FLdRfVar var_9C
  loc_9A3308: ImpAdCallFPR4  = DateSerial(, , )
  loc_9A330D: FLdRfVar var_9C
  loc_9A3310: CStrVarTmp
  loc_9A3311: CVarStr var_AC
  loc_9A3314: PopAdLdVar
  loc_9A3315: FLdPr Me
  loc_9A3318: VCallAd Control_ID_DesdeMsk
  loc_9A331B: FStAdFunc var_C0
  loc_9A331E: FLdPr var_C0
  loc_9A3321: LateIdSt
  loc_9A3326: FFree1Str var_8C
  loc_9A3329: FFreeAd var_88 = ""
  loc_9A3330: FFreeVar var_9C = ""
  loc_9A3337: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A333A: CStrDate
  loc_9A333C: CVarStr var_9C
  loc_9A333F: PopAdLdVar
  loc_9A3340: FLdPr Me
  loc_9A3343: VCallAd Control_ID_HastaMsk
  loc_9A3346: FStAdFunc var_88
  loc_9A3349: FLdPr var_88
  loc_9A334C: LateIdSt
  loc_9A3351: FFree1Ad var_88
  loc_9A3354: FFree1Var var_9C = ""
  loc_9A3357: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95DD24
  'Data Table: 488378
  loc_95DD0C: LitI2_Byte 0
  loc_95DD0E: ILdRf Me
  loc_95DD11: CastAd
  loc_95DD14: FStAdFunc var_88
  loc_95DD17: FLdRfVar var_88
  loc_95DD1A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95DD1F: FFree1Ad var_88
  loc_95DD22: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95DC40
  'Data Table: 488378
  loc_95DC28: ILdRf Me
  loc_95DC2B: CastAd
  loc_95DC2E: FStAdFunc var_88
  loc_95DC31: FLdRfVar var_88
  loc_95DC34: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95DC39: FFree1Ad var_88
  loc_95DC3C: ExitProcHresult
  loc_95DC3D: MulI2
  loc_95DC3E: BranchFVar
End Sub

Private Sub HastaCmd_Click() '98901C
  'Data Table: 488378
  loc_988FDC: LitVar_Missing var_A4
  loc_988FDF: PopAdLdVar
  loc_988FE0: LitVarI4
  loc_988FE8: PopAdLdVar
  loc_988FE9: ImpAdLdRf MemVar_C3D9A8
  loc_988FEC: NewIfNullPr frmCalendario
  loc_988FEF: frmCalendario.Show from_stack_1, from_stack_2
  loc_988FF4: ImpAdLdFPR8 MemVar_C3D04C
  loc_988FF7: CStrDate
  loc_988FF9: CVarStr var_B4
  loc_988FFC: PopAdLdVar
  loc_988FFD: FLdPr Me
  loc_989000: VCallAd Control_ID_HastaMsk
  loc_989003: FStAdFunc var_B8
  loc_989006: FLdPr var_B8
  loc_989009: LateIdSt
  loc_98900E: FFree1Ad var_B8
  loc_989011: FFree1Var var_B4 = ""
  loc_989014: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_989019: ExitProcHresult
  loc_98901A: FStAdFunc arg_0
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '953358
  'Data Table: 488378
  loc_953344: FLdPr Me
  loc_953347: VCallAd Control_ID_CucuPersMsk
  loc_95334A: CVarAd
  loc_95334E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953353: FFree1Var var_94 = ""
  loc_953356: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9DD5AC
  'Data Table: 488378
  loc_9DD4B4: FLdPr Me
  loc_9DD4B7: VCallAd Control_ID_CucuPersMsk
  loc_9DD4BA: FStAdFunc var_88
  loc_9DD4BD: FLdPr var_88
  loc_9DD4C0: LateIdLdVar var_98 DispID_13 -32767
  loc_9DD4C7: CBoolVar
  loc_9DD4C9: FLdPr Me
  loc_9DD4CC: VCallAd Control_ID_CucuPersMsk
  loc_9DD4CF: FStAdFunc var_9C
  loc_9DD4D2: FLdPr var_9C
  loc_9DD4D5: LateIdLdVar var_AC DispID_22 0
  loc_9DD4DC: CStrVarTmp
  loc_9DD4DD: FStStrNoPop var_B0
  loc_9DD4E0: LitStr vbNullString
  loc_9DD4E3: NeStr
  loc_9DD4E5: AndI4
  loc_9DD4E6: FFree1Str var_B0
  loc_9DD4E9: FFreeAd var_88 = ""
  loc_9DD4F0: FFreeVar var_98 = ""
  loc_9DD4F7: BranchF loc_9DD5AB
  loc_9DD4FA: FLdPr Me
  loc_9DD4FD: VCallAd Control_ID_CucuPersMsk
  loc_9DD500: FStAdFunc var_88
  loc_9DD503: FLdPr var_88
  loc_9DD506: LateIdLdVar var_98 DispID_22 0
  loc_9DD50D: PopAd
  loc_9DD50F: FLdPr Me
  loc_9DD512: MemLdRfVar from_stack_1.global_56
  loc_9DD515: NewIfNullRf
  loc_9DD519: FLdRfVar var_98
  loc_9DD51C: CStrVarTmp
  loc_9DD51D: FStStrNoPop var_B0
  loc_9DD520: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9DD525: FStStrNoPop var_B4
  loc_9DD528: FLdPr Me
  loc_9DD52B: MemStStrCopy
  loc_9DD52F: FFreeStr var_B0 = ""
  loc_9DD536: FFree1Ad var_88
  loc_9DD539: FFree1Var var_98 = ""
  loc_9DD53C: FLdPr Me
  loc_9DD53F: VCallAd Control_ID_CucuPersMsk
  loc_9DD542: FStAdFunc var_BC
  loc_9DD545: FLdPr Me
  loc_9DD548: VCallAd Control_ID_DetaProvLbl
  loc_9DD54B: FStAdFunc var_B8
  loc_9DD54E: FLdRfVar var_B8
  loc_9DD551: FLdZeroAd var_BC
  loc_9DD554: FStAdFuncNoPop
  loc_9DD557: CastAd
  loc_9DD55A: FStAdFunc var_9C
  loc_9DD55D: FLdRfVar var_9C
  loc_9DD560: FLdPr Me
  loc_9DD563: MemLdRfVar from_stack_1.global_100
  loc_9DD566: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DD56B: IStI2 arg_C
  loc_9DD56E: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DD579: ILdI2 arg_C
  loc_9DD57C: NotI4
  loc_9DD57D: BranchF loc_9DD5AB
  loc_9DD580: FLdRfVar var_B0
  loc_9DD583: FLdPr Me
  loc_9DD586: MemLdRfVar from_stack_1.global_56
  loc_9DD589: NewIfNullPr tblproveedor
  loc_9DD58C: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9DD591: ILdRf var_B0
  loc_9DD594: FLdPr Me
  loc_9DD597: VCallAd Control_ID_DetaProvLbl
  loc_9DD59A: FStAdFunc var_88
  loc_9DD59D: FLdPr var_88
  loc_9DD5A0: Me.Caption = from_stack_1
  loc_9DD5A5: FFree1Str var_B0
  loc_9DD5A8: FFree1Ad var_88
  loc_9DD5AB: ExitProcHresult
End Function

Private Sub Form_Load() '9CD72C
  'Data Table: 488378
  loc_9CD654: LitI2_Byte &HFF
  loc_9CD656: ImpAdStI2 MemVar_C3D840
  loc_9CD659: ILdRf Me
  loc_9CD65C: CastAd
  loc_9CD65F: FStAdFunc var_8C
  loc_9CD662: FLdRfVar var_8C
  loc_9CD665: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CD66A: FFree1Ad var_8C
  loc_9CD66D: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CD670: FLdRfVar var_88
  loc_9CD673: NewIfNullPr clsperiodo
  loc_9CD676: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CD67B: FLdRfVar var_90
  loc_9CD67E: FLdRfVar var_88
  loc_9CD681: NewIfNullPr clsperiodo
  loc_9CD684: from_stack_1 = clsperiodo.RecordCount
  loc_9CD689: ILdRf var_90
  loc_9CD68C: LitI4 0
  loc_9CD691: GtI4
  loc_9CD692: BranchF loc_9CD725
  loc_9CD695: FLdRfVar var_88
  loc_9CD698: NewIfNullPr clsperiodo
  loc_9CD69B: Call clsperiodo.MoveFirst()
  loc_9CD6A0: FLdRfVar var_92
  loc_9CD6A3: FLdRfVar var_88
  loc_9CD6A6: NewIfNullPr clsperiodo
  loc_9CD6A9: from_stack_1 = clsperiodo.EOF
  loc_9CD6AE: FLdI2 var_92
  loc_9CD6B1: NotI4
  loc_9CD6B2: BranchF loc_9CD725
  loc_9CD6B5: LitVar_Missing var_D0
  loc_9CD6B8: PopAdLdVar
  loc_9CD6B9: FLdRfVar var_BC
  loc_9CD6BC: FLdRfVar var_AC
  loc_9CD6BF: LitVarStr var_A8, "PeriInfo"
  loc_9CD6C4: PopAdLdVar
  loc_9CD6C5: FLdRfVar var_98
  loc_9CD6C8: FLdRfVar var_8C
  loc_9CD6CB: FLdRfVar var_88
  loc_9CD6CE: NewIfNullPr clsperiodo
  loc_9CD6D1: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CD6D6: FLdPr var_8C
  loc_9CD6D9:  = Me.Fields
  loc_9CD6DE: FLdPr var_98
  loc_9CD6E1: from_stack_2 = Me.Item(from_stack_1)
  loc_9CD6E6: FLdPr var_AC
  loc_9CD6E9:  = Me.Value
  loc_9CD6EE: FLdRfVar var_BC
  loc_9CD6F1: CStrVarTmp
  loc_9CD6F2: FStStrNoPop var_C0
  loc_9CD6F5: FLdPr Me
  loc_9CD6F8: VCallAd Control_ID_cboPeriodo
  loc_9CD6FB: FStAdFunc var_D4
  loc_9CD6FE: FLdPr var_D4
  loc_9CD701: Me.AddItem from_stack_1, from_stack_2
  loc_9CD706: FFree1Str var_C0
  loc_9CD709: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CD714: FFree1Var var_BC = ""
  loc_9CD717: FLdRfVar var_88
  loc_9CD71A: NewIfNullPr clsperiodo
  loc_9CD71D: Call clsperiodo.MoveSiguiente()
  loc_9CD722: Branch loc_9CD6A0
  loc_9CD725: Call cmdNueva_Click()
  loc_9CD72A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95DF38
  'Data Table: 488378
  loc_95DF20: FLdPr Me
  loc_95DF23: VCallAd Control_ID_wbbReporte
  loc_95DF26: FStAdFunc var_88
  loc_95DF29: FLdRfVar var_88
  loc_95DF2C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95DF31: FFree1Ad var_88
  loc_95DF34: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '977544
  'Data Table: 488378
  loc_977514: LitVarStr var_94, "Cerrando..."
  loc_977519: PopAdLdVar
  loc_97751A: FLdPr Me
  loc_97751D: VCallAd Control_ID_statusBar
  loc_977520: FStAdFunc var_A8
  loc_977523: FLdPr var_A8
  loc_977526: LateIdSt
  loc_97752B: FFree1Ad var_A8
  loc_97752E: ILdRf Me
  loc_977531: FStAdNoPop
  loc_977535: ImpAdLdRf MemVar_C44F9C
  loc_977538: NewIfNullPr Me
  loc_97753B: Me.Global.Unload from_stack_1
  loc_977540: FFree1Ad var_A8
  loc_977543: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '94F530
  'Data Table: 488378
  loc_94F51C: FLdPr Me
  loc_94F51F: VCallAd Control_ID_DesdeMsk
  loc_94F522: CVarAd
  loc_94F526: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F52B: FFree1Var var_94 = ""
  loc_94F52E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) '9AC1B0
  'Data Table: 488378
  loc_9AC120: FLdPr Me
  loc_9AC123: VCallAd Control_ID_DesdeMsk
  loc_9AC126: FStAdFunc var_88
  loc_9AC129: FLdPr var_88
  loc_9AC12C: LateIdLdVar var_98 DispID_15 0
  loc_9AC133: PopAd
  loc_9AC135: LitI2_Byte &HFF
  loc_9AC137: PopTmpLdAd2 var_A2
  loc_9AC13A: LitNothing
  loc_9AC13C: CastAd
  loc_9AC13F: FStAdFunc var_A0
  loc_9AC142: FLdRfVar var_A0
  loc_9AC145: LitStr "01/01/2018"
  loc_9AC148: LitI2_Byte 0
  loc_9AC14A: LitI2_Byte 0
  loc_9AC14C: FLdRfVar var_98
  loc_9AC14F: CStrVarTmp
  loc_9AC150: FStStrNoPop var_9C
  loc_9AC153: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC158: FStStrNoPop var_A8
  loc_9AC15B: FLdPr Me
  loc_9AC15E: MemStStrCopy
  loc_9AC162: FFreeStr var_9C = ""
  loc_9AC169: FFreeAd var_88 = ""
  loc_9AC170: FFree1Var var_98 = ""
  loc_9AC173: FLdPr Me
  loc_9AC176: VCallAd Control_ID_DesdeMsk
  loc_9AC179: FStAdFunc var_B0
  loc_9AC17C: LitNothing
  loc_9AC17E: CastAd
  loc_9AC181: FStAdFunc var_AC
  loc_9AC184: FLdRfVar var_AC
  loc_9AC187: FLdZeroAd var_B0
  loc_9AC18A: FStAdFuncNoPop
  loc_9AC18D: CastAd
  loc_9AC190: FStAdFunc var_A0
  loc_9AC193: FLdRfVar var_A0
  loc_9AC196: FLdPr Me
  loc_9AC199: MemLdRfVar from_stack_1.global_100
  loc_9AC19C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC1A1: IStI2 arg_C
  loc_9AC1A4: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC1AF: ExitProcHresult
End Function

Private Sub HastaMsk_UnknownEvent_0 '94F410
  'Data Table: 488378
  loc_94F3FC: FLdPr Me
  loc_94F3FF: VCallAd Control_ID_HastaMsk
  loc_94F402: CVarAd
  loc_94F406: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F40B: FFree1Var var_94 = ""
  loc_94F40E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) '9AC6D8
  'Data Table: 488378
  loc_9AC648: FLdPr Me
  loc_9AC64B: VCallAd Control_ID_HastaMsk
  loc_9AC64E: FStAdFunc var_88
  loc_9AC651: FLdPr var_88
  loc_9AC654: LateIdLdVar var_98 DispID_15 0
  loc_9AC65B: PopAd
  loc_9AC65D: LitI2_Byte &HFF
  loc_9AC65F: PopTmpLdAd2 var_A2
  loc_9AC662: LitNothing
  loc_9AC664: CastAd
  loc_9AC667: FStAdFunc var_A0
  loc_9AC66A: FLdRfVar var_A0
  loc_9AC66D: LitStr "01/01/2018"
  loc_9AC670: LitI2_Byte 0
  loc_9AC672: LitI2_Byte 0
  loc_9AC674: FLdRfVar var_98
  loc_9AC677: CStrVarTmp
  loc_9AC678: FStStrNoPop var_9C
  loc_9AC67B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC680: FStStrNoPop var_A8
  loc_9AC683: FLdPr Me
  loc_9AC686: MemStStrCopy
  loc_9AC68A: FFreeStr var_9C = ""
  loc_9AC691: FFreeAd var_88 = ""
  loc_9AC698: FFree1Var var_98 = ""
  loc_9AC69B: FLdPr Me
  loc_9AC69E: VCallAd Control_ID_HastaMsk
  loc_9AC6A1: FStAdFunc var_B0
  loc_9AC6A4: LitNothing
  loc_9AC6A6: CastAd
  loc_9AC6A9: FStAdFunc var_AC
  loc_9AC6AC: FLdRfVar var_AC
  loc_9AC6AF: FLdZeroAd var_B0
  loc_9AC6B2: FStAdFuncNoPop
  loc_9AC6B5: CastAd
  loc_9AC6B8: FStAdFunc var_A0
  loc_9AC6BB: FLdRfVar var_A0
  loc_9AC6BE: FLdPr Me
  loc_9AC6C1: MemLdRfVar from_stack_1.global_100
  loc_9AC6C4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC6C9: IStI2 arg_C
  loc_9AC6CC: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC6D7: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '995640
  'Data Table: 488378
  loc_9955E0: LitI2_Byte 0
  loc_9955E2: FLdPr Me
  loc_9955E5: MemStI2 bGenerado
  loc_9955E8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9955ED: ImpAdLdI2 MemVar_C3D064
  loc_9955F0: CStrUI1
  loc_9955F2: FStStrNoPop var_88
  loc_9955F5: FLdPr Me
  loc_9955F8: VCallAd Control_ID_cboPeriodo
  loc_9955FB: FStAdFunc var_8C
  loc_9955FE: FLdPr var_8C
  loc_995601: Me.Text = from_stack_1
  loc_995606: FFree1Str var_88
  loc_995609: FFree1Ad var_8C
  loc_99560C: LitVarStr var_9C, vbNullString
  loc_995611: PopAdLdVar
  loc_995612: FLdPr Me
  loc_995615: VCallAd Control_ID_CucuPersMsk
  loc_995618: FStAdFunc var_8C
  loc_99561B: FLdPr var_8C
  loc_99561E: LateIdSt
  loc_995623: FFree1Ad var_8C
  loc_995626: Call HabilitarCriterio()
  loc_99562B: ILdRf Me
  loc_99562E: CastAd
  loc_995631: FStAdFunc var_8C
  loc_995634: FLdRfVar var_8C
  loc_995637: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99563C: FFree1Ad var_8C
  loc_99563F: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9EE8EC
  'Data Table: 488378
  loc_9EE7CC: ImpAdLdRf MemVar_C3D74C
  loc_9EE7CF: NewIfNullAd
  loc_9EE7D2: FStAd var_88 
  loc_9EE7D6: LitVar_Missing var_A8
  loc_9EE7D9: PopAdLdVar
  loc_9EE7DA: LitVarI4
  loc_9EE7E2: PopAdLdVar
  loc_9EE7E3: FLdPr var_88
  loc_9EE7E6: Me.Show from_stack_1, from_stack_2
  loc_9EE7EB: FLdRfVar var_B0
  loc_9EE7EE: FLdRfVar var_AC
  loc_9EE7F1: FLdPr var_88
  loc_9EE7F4: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9EE7F9: FLdPr var_AC
  loc_9EE7FC: from_stack_1 = clsbase.RecordCount
  loc_9EE801: ILdRf var_B0
  loc_9EE804: LitI4 0
  loc_9EE809: GtI4
  loc_9EE80A: FFree1Ad var_AC
  loc_9EE80D: BranchF loc_9EE8E2
  loc_9EE810: FLdRfVar var_CC
  loc_9EE813: FLdRfVar var_BC
  loc_9EE816: LitVarStr var_98, "CucuPers"
  loc_9EE81B: PopAdLdVar
  loc_9EE81C: FLdRfVar var_B8
  loc_9EE81F: FLdRfVar var_B4
  loc_9EE822: FLdRfVar var_AC
  loc_9EE825: FLdPr var_88
  loc_9EE828: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9EE82D: FLdPr var_AC
  loc_9EE830: from_stack_1v = clsbase.RsFrmGet()
  loc_9EE835: FLdPr var_B4
  loc_9EE838:  = Me.Fields
  loc_9EE83D: FLdPr var_B8
  loc_9EE840: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE845: FLdPr var_BC
  loc_9EE848:  = Me.Value
  loc_9EE84D: FLdRfVar var_CC
  loc_9EE850: CStrVarTmp
  loc_9EE851: CVarStr var_DC
  loc_9EE854: PopAdLdVar
  loc_9EE855: FLdPr Me
  loc_9EE858: VCallAd Control_ID_CucuPersMsk
  loc_9EE85B: FStAdFunc var_E0
  loc_9EE85E: FLdPr var_E0
  loc_9EE861: LateIdSt
  loc_9EE866: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9EE873: FFreeVar var_CC = ""
  loc_9EE87A: FLdRfVar var_CC
  loc_9EE87D: FLdRfVar var_BC
  loc_9EE880: LitVarStr var_98, "DetaProv"
  loc_9EE885: PopAdLdVar
  loc_9EE886: FLdRfVar var_B8
  loc_9EE889: FLdRfVar var_B4
  loc_9EE88C: FLdRfVar var_AC
  loc_9EE88F: FLdPr var_88
  loc_9EE892: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9EE897: FLdPr var_AC
  loc_9EE89A: from_stack_1v = clsbase.RsFrmGet()
  loc_9EE89F: FLdPr var_B4
  loc_9EE8A2:  = Me.Fields
  loc_9EE8A7: FLdPr var_B8
  loc_9EE8AA: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE8AF: FLdPr var_BC
  loc_9EE8B2:  = Me.Value
  loc_9EE8B7: FLdRfVar var_CC
  loc_9EE8BA: CStrVarTmp
  loc_9EE8BB: FStStrNoPop var_E4
  loc_9EE8BE: FLdPr Me
  loc_9EE8C1: VCallAd Control_ID_DetaProvLbl
  loc_9EE8C4: FStAdFunc var_E0
  loc_9EE8C7: FLdPr var_E0
  loc_9EE8CA: Me.Caption = from_stack_1
  loc_9EE8CF: FFree1Str var_E4
  loc_9EE8D2: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9EE8DF: FFree1Var var_CC = ""
  loc_9EE8E2: LitNothing
  loc_9EE8E4: FStAd var_88 
  loc_9EE8E8: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4893A0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4893AF
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9B4BC8
  'Data Table: 488378
  loc_9B4B34: LitI4 0
  loc_9B4B39: LitI4 6
  loc_9B4B3E: FLdRfVar var_88
  loc_9B4B41: Redim
  loc_9B4B4B: FLdPr Me
  loc_9B4B4E: VCallAd Control_ID_cboPeriodo
  loc_9B4B51: CVarAd
  loc_9B4B55: ParmAry1St
  loc_9B4B5B: FLdPr Me
  loc_9B4B5E: VCallAd Control_ID_DesdeMsk
  loc_9B4B61: CVarAd
  loc_9B4B65: ParmAry1St
  loc_9B4B6B: FLdPr Me
  loc_9B4B6E: VCallAd Control_ID_DesdeCmd
  loc_9B4B71: CVarAd
  loc_9B4B75: ParmAry1St
  loc_9B4B7B: FLdPr Me
  loc_9B4B7E: VCallAd Control_ID_HastaMsk
  loc_9B4B81: CVarAd
  loc_9B4B85: ParmAry1St
  loc_9B4B8B: FLdPr Me
  loc_9B4B8E: VCallAd Control_ID_HastaCmd
  loc_9B4B91: CVarAd
  loc_9B4B95: ParmAry1St
  loc_9B4B9B: FLdPr Me
  loc_9B4B9E: VCallAd Control_ID_CucuPersMsk
  loc_9B4BA1: CVarAd
  loc_9B4BA5: ParmAry1St
  loc_9B4BAB: FLdPr Me
  loc_9B4BAE: VCallAd Control_ID_CucuPersCmd
  loc_9B4BB1: CVarAd
  loc_9B4BB5: ParmAry1St
  loc_9B4BBB: FLdRfVar var_88
  loc_9B4BBE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B4BC3: FLdRfVar var_88
  loc_9B4BC6: Erase
  loc_9B4BC7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AC246C
  'Data Table: 488378
  loc_AC1EE4: FLdPr Me
  loc_AC1EE7: MemLdI2 bGenerado
  loc_AC1EEA: BranchF loc_AC1EEE
  loc_AC1EED: ExitProcHresult
  loc_AC1EEE: LitVarStr var_9C, "Generando reporte..."
  loc_AC1EF3: PopAdLdVar
  loc_AC1EF4: FLdPr Me
  loc_AC1EF7: VCallAd Control_ID_statusBar
  loc_AC1EFA: FStAdFunc var_B0
  loc_AC1EFD: FLdPr var_B0
  loc_AC1F00: LateIdSt
  loc_AC1F05: FFree1Ad var_B0
  loc_AC1F08: LitI4 &HB
  loc_AC1F0D: CI2I4
  loc_AC1F0E: FLdPr Me
  loc_AC1F11: Me.MousePointer = from_stack_1
  loc_AC1F16: FLdPr Me
  loc_AC1F19: VCallAd Control_ID_CucuPersMsk
  loc_AC1F1C: FStAdFunc var_B0
  loc_AC1F1F: FLdPr var_B0
  loc_AC1F22: LateIdLdVar var_C0 DispID_22 0
  loc_AC1F29: PopAd
  loc_AC1F2B: FLdPr Me
  loc_AC1F2E: VCallAd Control_ID_CucuPersMsk
  loc_AC1F31: FStAdFunc var_C8
  loc_AC1F34: FLdPr var_C8
  loc_AC1F37: LateIdLdVar var_D8 DispID_22 0
  loc_AC1F3E: PopAd
  loc_AC1F40: LitVarStr var_AC, vbNullString
  loc_AC1F45: FStVarCopyObj var_FC
  loc_AC1F48: FLdRfVar var_FC
  loc_AC1F4B: LitStr " AND imputacion.CucuPers = "
  loc_AC1F4E: FLdRfVar var_D8
  loc_AC1F51: CStrVarTmp
  loc_AC1F52: FStStrNoPop var_DC
  loc_AC1F55: ConcatStr
  loc_AC1F56: CVarStr var_EC
  loc_AC1F59: FLdRfVar var_C0
  loc_AC1F5C: CStrVarTmp
  loc_AC1F5D: FStStrNoPop var_C4
  loc_AC1F60: LitStr vbNullString
  loc_AC1F63: NeStr
  loc_AC1F65: CVarBoolI2 var_9C
  loc_AC1F69: FLdRfVar var_10C
  loc_AC1F6C: ImpAdCallFPR4  = IIf(, , )
  loc_AC1F71: FLdRfVar var_10C
  loc_AC1F74: CStrVarTmp
  loc_AC1F75: FStStr var_8C
  loc_AC1F78: FFreeStr var_C4 = ""
  loc_AC1F7F: FFreeAd var_B0 = ""
  loc_AC1F86: FFreeVar var_C0 = "": var_D8 = "": var_9C = "": var_EC = "": var_FC = ""
  loc_AC1F95: FLdPr Me
  loc_AC1F98: MemLdRfVar from_stack_1.global_60
  loc_AC1F9B: NewIfNullAd
  loc_AC1F9E: FStAd var_110 
  loc_AC1FA2: FLdPr Me
  loc_AC1FA5: VCallAd Control_ID_DesdeMsk
  loc_AC1FA8: FStAdFunc var_C8
  loc_AC1FAB: FLdPr var_C8
  loc_AC1FAE: LateIdLdVar var_C0 DispID_15 0
  loc_AC1FB5: PopAd
  loc_AC1FB7: FLdPr Me
  loc_AC1FBA: VCallAd Control_ID_HastaMsk
  loc_AC1FBD: FStAdFunc var_138
  loc_AC1FC0: FLdPr var_138
  loc_AC1FC3: LateIdLdVar var_FC DispID_15 0
  loc_AC1FCA: PopAd
  loc_AC1FCC: LitStr "SELECT devengado.CucuPers, DetaProv, Cast(Concat(TifaDeve,' ',Concat_ws('-',Lpad(SufaDeve,4,'0'), Lpad(NufaDeve,8,'0'))) AS CHAR) AS TifaDeve, devengado.ExpeImpu, devengado.NumeLiqu, "
  loc_AC1FCF: LitStr " Cast(IFNULL(imputacion.FechImpu,'&nbsp;') AS CHAR) AS FechImpu, Sum(SaldDeve) AS DeveImpu, DetaImpu FROM imputacion"
  loc_AC1FD2: ConcatStr
  loc_AC1FD3: FStStrNoPop var_C4
  loc_AC1FD6: LitStr " LEFT JOIN devengado ON devengado.PeriInfo = imputacion.PeriInfo AND devengado.CodiPart = imputacion.CodiPart AND devengado.CodiOrga = imputacion.CodiOrga AND devengado.NumeImpu = imputacion.NumeImpu"
  loc_AC1FD9: ConcatStr
  loc_AC1FDA: FStStrNoPop var_DC
  loc_AC1FDD: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = devengado.CucuPers"
  loc_AC1FE0: ConcatStr
  loc_AC1FE1: FStStrNoPop var_114
  loc_AC1FE4: LitStr " LEFT JOIN ordenpago ON ordenpago.PeriInfo = devengado.PeriInfo AND ordenpago.NumeOrpa = devengado.NumeOrpa"
  loc_AC1FE7: ConcatStr
  loc_AC1FE8: FStStrNoPop var_118
  loc_AC1FEB: LitStr " WHERE imputacion.PeriInfo = "
  loc_AC1FEE: ConcatStr
  loc_AC1FEF: FStStrNoPop var_120
  loc_AC1FF2: FLdRfVar var_11C
  loc_AC1FF5: FLdPr Me
  loc_AC1FF8: VCallAd Control_ID_cboPeriodo
  loc_AC1FFB: FStAdFunc var_B0
  loc_AC1FFE: FLdPr var_B0
  loc_AC2001:  = Me.Text
  loc_AC2006: ILdRf var_11C
  loc_AC2009: ConcatStr
  loc_AC200A: FStStrNoPop var_124
  loc_AC200D: LitStr "   AND imputacion.FechImpu >= '"
  loc_AC2010: ConcatStr
  loc_AC2011: FStStrNoPop var_128
  loc_AC2014: LitI4 1
  loc_AC2019: LitI4 1
  loc_AC201E: LitVarStr var_9C, "yyyy-mm-dd"
  loc_AC2023: FStVarCopyObj var_EC
  loc_AC2026: FLdRfVar var_EC
  loc_AC2029: FLdRfVar var_C0
  loc_AC202C: CStrVarTmp
  loc_AC202D: CVarStr var_D8
  loc_AC2030: ImpAdCallI2 Format$(, )
  loc_AC2035: FStStrNoPop var_12C
  loc_AC2038: ConcatStr
  loc_AC2039: FStStrNoPop var_130
  loc_AC203C: LitStr "'"
  loc_AC203F: ConcatStr
  loc_AC2040: FStStrNoPop var_134
  loc_AC2043: LitStr "   AND imputacion.FechImpu <= '"
  loc_AC2046: ConcatStr
  loc_AC2047: FStStrNoPop var_14C
  loc_AC204A: LitI4 1
  loc_AC204F: LitI4 1
  loc_AC2054: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AC2059: FStVarCopyObj var_148
  loc_AC205C: FLdRfVar var_148
  loc_AC205F: FLdRfVar var_FC
  loc_AC2062: CStrVarTmp
  loc_AC2063: CVarStr var_10C
  loc_AC2066: ImpAdCallI2 Format$(, )
  loc_AC206B: FStStrNoPop var_150
  loc_AC206E: ConcatStr
  loc_AC206F: FStStrNoPop var_154
  loc_AC2072: LitStr "'"
  loc_AC2075: ConcatStr
  loc_AC2076: FStStrNoPop var_158
  loc_AC2079: ILdRf var_8C
  loc_AC207C: ConcatStr
  loc_AC207D: FStStrNoPop var_15C
  loc_AC2080: LitStr "   AND ordenpago.FeanOrpa IS NULL AND ordenpago.FereOrpa IS NULL and devengado.SaldDeve > 0"
  loc_AC2083: ConcatStr
  loc_AC2084: FStStrNoPop var_160
  loc_AC2087: LitStr " GROUP BY CucuPers, TifaDeve, SufaDeve, NufaDeve, devengado.ExpeImpu, devengado.NumeLiqu"
  loc_AC208A: ConcatStr
  loc_AC208B: FStStrNoPop var_164
  loc_AC208E: LitStr " ORDER BY DetaProv, TifaDeve, SufaDeve, NufaDeve, devengado.ExpeImpu, devengado.NumeLiqu, devengado.NumeOrpa"
  loc_AC2091: ConcatStr
  loc_AC2092: FStStrNoPop var_168
  loc_AC2095: FLdPr var_110
  loc_AC2098: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AC209D: FFreeStr var_C4 = "": var_DC = "": var_114 = "": var_118 = "": var_120 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_AC20C6: FFreeAd var_B0 = "": var_C8 = ""
  loc_AC20CF: FFreeVar var_C0 = "": var_D8 = "": var_EC = "": var_FC = "": var_10C = ""
  loc_AC20DE: FLdRfVar var_16C
  loc_AC20E1: FLdPr var_110
  loc_AC20E4: from_stack_1 = clsimputacion.RecordCount
  loc_AC20E9: ILdRf var_16C
  loc_AC20EC: LitI4 0
  loc_AC20F1: EqI4
  loc_AC20F2: BranchF loc_AC2105
  loc_AC20F5: LitI4 0
  loc_AC20FA: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AC20FD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC2102: Branch loc_AC2441
  loc_AC2105: LitI4 0
  loc_AC210A: FLdRfVar var_16C
  loc_AC210D: FLdPr var_110
  loc_AC2110: from_stack_1 = clsimputacion.RecordCount
  loc_AC2115: ILdRf var_16C
  loc_AC2118: FLdPr Me
  loc_AC211B: MemLdRfVar from_stack_1.global_84
  loc_AC211E: Redim
  loc_AC2128: LitI2_Byte 0
  loc_AC212A: LitVar_Missing var_C0
  loc_AC212D: LitI2_Byte &HFF
  loc_AC212F: LitVarI2 var_9C, 0
  loc_AC2134: PopAdLdVar
  loc_AC2135: FLdPr Me
  loc_AC2138: MemLdRfVar from_stack_1.global_96
  loc_AC213B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC2140: FFree1Var var_C0 = ""
  loc_AC2143: LitI2_Byte 0
  loc_AC2145: FLdPr Me
  loc_AC2148: MemStI2 global_88
  loc_AC214B: Call Proc_182_23_9E1034()
  loc_AC2150: FLdRfVar var_16E
  loc_AC2153: FLdPr var_110
  loc_AC2156: from_stack_1 = clsimputacion.EOF
  loc_AC215B: FLdI2 var_16E
  loc_AC215E: NotI4
  loc_AC215F: BranchF loc_AC22B4
  loc_AC2162: FLdRfVar var_C0
  loc_AC2165: FLdRfVar var_138
  loc_AC2168: LitVarStr var_9C, "CucuPers"
  loc_AC216D: PopAdLdVar
  loc_AC216E: FLdRfVar var_C8
  loc_AC2171: FLdRfVar var_B0
  loc_AC2174: FLdPr var_110
  loc_AC2177: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AC217C: FLdPr var_B0
  loc_AC217F:  = Me.Fields
  loc_AC2184: FLdPr var_C8
  loc_AC2187: from_stack_2 = Me.Item(from_stack_1)
  loc_AC218C: FLdPr var_138
  loc_AC218F:  = Me.Value
  loc_AC2194: FLdRfVar var_C0
  loc_AC2197: FLdPr Me
  loc_AC219A: MemLdI2 global_88
  loc_AC219D: CI4UI1
  loc_AC219E: FLdPr Me
  loc_AC21A1: MemLdStr global_84
  loc_AC21A4: Ary1LdPr
  loc_AC21A5: MemLdStr global_0
  loc_AC21A8: CVarStr var_AC
  loc_AC21AB: HardType
  loc_AC21AC: NeVarBool
  loc_AC21AE: FFreeAd var_B0 = "": var_C8 = ""
  loc_AC21B7: FFree1Var var_C0 = ""
  loc_AC21BA: BranchF loc_AC21C5
  loc_AC21BD: Call Proc_182_23_9E1034()
  loc_AC21C2: Branch loc_AC22B1
  loc_AC21C5: FLdRfVar var_C0
  loc_AC21C8: FLdRfVar var_138
  loc_AC21CB: LitVarStr var_9C, "TifaDeve"
  loc_AC21D0: PopAdLdVar
  loc_AC21D1: FLdRfVar var_C8
  loc_AC21D4: FLdRfVar var_B0
  loc_AC21D7: FLdPr var_110
  loc_AC21DA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AC21DF: FLdPr var_B0
  loc_AC21E2:  = Me.Fields
  loc_AC21E7: FLdPr var_C8
  loc_AC21EA: from_stack_2 = Me.Item(from_stack_1)
  loc_AC21EF: FLdPr var_138
  loc_AC21F2:  = Me.Value
  loc_AC21F7: FLdRfVar var_C0
  loc_AC21FA: FLdPr Me
  loc_AC21FD: MemLdI2 global_90
  loc_AC2200: CI4UI1
  loc_AC2201: FLdPr Me
  loc_AC2204: MemLdI2 global_88
  loc_AC2207: CI4UI1
  loc_AC2208: FLdPr Me
  loc_AC220B: MemLdStr global_84
  loc_AC220E: Ary1LdPr
  loc_AC220F: MemLdStr global_8
  loc_AC2212: Ary1LdPr
  loc_AC2213: MemLdStr global_0
  loc_AC2216: CVarStr var_AC
  loc_AC2219: HardType
  loc_AC221A: NeVarBool
  loc_AC221C: FFreeAd var_B0 = "": var_C8 = ""
  loc_AC2225: FFree1Var var_C0 = ""
  loc_AC2228: BranchF loc_AC2233
  loc_AC222B: Call Proc_182_24_9F4A4C()
  loc_AC2230: Branch loc_AC22B1
  loc_AC2233: FLdRfVar var_C0
  loc_AC2236: FLdRfVar var_138
  loc_AC2239: LitVarStr var_9C, "ExpeImpu"
  loc_AC223E: PopAdLdVar
  loc_AC223F: FLdRfVar var_C8
  loc_AC2242: FLdRfVar var_B0
  loc_AC2245: FLdPr var_110
  loc_AC2248: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AC224D: FLdPr var_B0
  loc_AC2250:  = Me.Fields
  loc_AC2255: FLdPr var_C8
  loc_AC2258: from_stack_2 = Me.Item(from_stack_1)
  loc_AC225D: FLdPr var_138
  loc_AC2260:  = Me.Value
  loc_AC2265: FLdRfVar var_C0
  loc_AC2268: FLdPr Me
  loc_AC226B: MemLdI2 global_92
  loc_AC226E: CI4UI1
  loc_AC226F: FLdPr Me
  loc_AC2272: MemLdI2 global_90
  loc_AC2275: CI4UI1
  loc_AC2276: FLdPr Me
  loc_AC2279: MemLdI2 global_88
  loc_AC227C: CI4UI1
  loc_AC227D: FLdPr Me
  loc_AC2280: MemLdStr global_84
  loc_AC2283: Ary1LdPr
  loc_AC2284: MemLdStr global_8
  loc_AC2287: Ary1LdPr
  loc_AC2288: MemLdStr global_8
  loc_AC228B: Ary1LdPr
  loc_AC228C: MemLdStr global_0
  loc_AC228F: CVarStr var_AC
  loc_AC2292: HardType
  loc_AC2293: NeVarBool
  loc_AC2295: FFreeAd var_B0 = "": var_C8 = ""
  loc_AC229E: FFree1Var var_C0 = ""
  loc_AC22A1: BranchF loc_AC22AC
  loc_AC22A4: Call Proc_182_25_9D1164()
  loc_AC22A9: Branch loc_AC22B1
  loc_AC22AC: Call Proc_182_26_A4E968()
  loc_AC22B1: Branch loc_AC2150
  loc_AC22B4: LitNothing
  loc_AC22B6: FStAd var_110 
  loc_AC22BA: LitI2_Byte 1
  loc_AC22BC: FLdPr Me
  loc_AC22BF: MemLdRfVar from_stack_1.global_88
  loc_AC22C2: FLdPr Me
  loc_AC22C5: MemLdStr global_84
  loc_AC22C8: LitI2_Byte 1
  loc_AC22CA: FnUBound
  loc_AC22CC: CI2I4
  loc_AC22CD: ForI2 var_172
  loc_AC22D3: LitI2_Byte 1
  loc_AC22D5: FLdPr Me
  loc_AC22D8: MemLdRfVar from_stack_1.global_90
  loc_AC22DB: FLdPr Me
  loc_AC22DE: MemLdI2 global_88
  loc_AC22E1: CI4UI1
  loc_AC22E2: FLdPr Me
  loc_AC22E5: MemLdStr global_84
  loc_AC22E8: Ary1LdPr
  loc_AC22E9: MemLdStr global_8
  loc_AC22EC: LitI2_Byte 1
  loc_AC22EE: FnUBound
  loc_AC22F0: CI2I4
  loc_AC22F1: ForI2 var_176
  loc_AC22F7: LitI2_Byte 1
  loc_AC22F9: FLdPr Me
  loc_AC22FC: MemLdRfVar from_stack_1.global_92
  loc_AC22FF: FLdPr Me
  loc_AC2302: MemLdI2 global_90
  loc_AC2305: CI4UI1
  loc_AC2306: FLdPr Me
  loc_AC2309: MemLdI2 global_88
  loc_AC230C: CI4UI1
  loc_AC230D: FLdPr Me
  loc_AC2310: MemLdStr global_84
  loc_AC2313: Ary1LdPr
  loc_AC2314: MemLdStr global_8
  loc_AC2317: Ary1LdPr
  loc_AC2318: MemLdStr global_8
  loc_AC231B: LitI2_Byte 1
  loc_AC231D: FnUBound
  loc_AC231F: CI2I4
  loc_AC2320: ForI2 var_17A
  loc_AC2326: FLdPr Me
  loc_AC2329: MemLdI2 global_92
  loc_AC232C: CI4UI1
  loc_AC232D: FLdPr Me
  loc_AC2330: MemLdI2 global_90
  loc_AC2333: CI4UI1
  loc_AC2334: FLdPr Me
  loc_AC2337: MemLdI2 global_88
  loc_AC233A: CI4UI1
  loc_AC233B: FLdPr Me
  loc_AC233E: MemLdStr global_84
  loc_AC2341: Ary1LdPr
  loc_AC2342: MemLdStr global_8
  loc_AC2345: Ary1LdPr
  loc_AC2346: MemLdStr global_8
  loc_AC2349: Ary1LdPr
  loc_AC234A: MemLdStr global_4
  loc_AC234D: LitI2_Byte 1
  loc_AC234F: FnUBound
  loc_AC2351: CI2I4
  loc_AC2352: FLdPr Me
  loc_AC2355: MemLdI2 global_92
  loc_AC2358: CI4UI1
  loc_AC2359: FLdPr Me
  loc_AC235C: MemLdI2 global_90
  loc_AC235F: CI4UI1
  loc_AC2360: FLdPr Me
  loc_AC2363: MemLdI2 global_88
  loc_AC2366: CI4UI1
  loc_AC2367: FLdPr Me
  loc_AC236A: MemLdStr global_84
  loc_AC236D: Ary1LdPr
  loc_AC236E: MemLdStr global_8
  loc_AC2371: Ary1LdPr
  loc_AC2372: MemLdStr global_8
  loc_AC2375: Ary1LdPr
  loc_AC2376: MemStI2 global_8
  loc_AC2379: FLdPr Me
  loc_AC237C: MemLdI2 global_90
  loc_AC237F: CI4UI1
  loc_AC2380: FLdPr Me
  loc_AC2383: MemLdI2 global_88
  loc_AC2386: CI4UI1
  loc_AC2387: FLdPr Me
  loc_AC238A: MemLdStr global_84
  loc_AC238D: Ary1LdPr
  loc_AC238E: MemLdStr global_8
  loc_AC2391: Ary1LdPr
  loc_AC2392: MemLdI2 global_12
  loc_AC2395: FLdPr Me
  loc_AC2398: MemLdI2 global_92
  loc_AC239B: CI4UI1
  loc_AC239C: FLdPr Me
  loc_AC239F: MemLdI2 global_90
  loc_AC23A2: CI4UI1
  loc_AC23A3: FLdPr Me
  loc_AC23A6: MemLdI2 global_88
  loc_AC23A9: CI4UI1
  loc_AC23AA: FLdPr Me
  loc_AC23AD: MemLdStr global_84
  loc_AC23B0: Ary1LdPr
  loc_AC23B1: MemLdStr global_8
  loc_AC23B4: Ary1LdPr
  loc_AC23B5: MemLdStr global_8
  loc_AC23B8: Ary1LdPr
  loc_AC23B9: MemLdI2 global_8
  loc_AC23BC: AddI2
  loc_AC23BD: FLdPr Me
  loc_AC23C0: MemLdI2 global_90
  loc_AC23C3: CI4UI1
  loc_AC23C4: FLdPr Me
  loc_AC23C7: MemLdI2 global_88
  loc_AC23CA: CI4UI1
  loc_AC23CB: FLdPr Me
  loc_AC23CE: MemLdStr global_84
  loc_AC23D1: Ary1LdPr
  loc_AC23D2: MemLdStr global_8
  loc_AC23D5: Ary1LdPr
  loc_AC23D6: MemStI2 global_12
  loc_AC23D9: FLdPr Me
  loc_AC23DC: MemLdRfVar from_stack_1.global_92
  loc_AC23DF: NextI2 var_17A, loc_AC2326
  loc_AC23E4: FLdPr Me
  loc_AC23E7: MemLdI2 global_88
  loc_AC23EA: CI4UI1
  loc_AC23EB: FLdPr Me
  loc_AC23EE: MemLdStr global_84
  loc_AC23F1: Ary1LdPr
  loc_AC23F2: MemLdI2 global_12
  loc_AC23F5: FLdPr Me
  loc_AC23F8: MemLdI2 global_90
  loc_AC23FB: CI4UI1
  loc_AC23FC: FLdPr Me
  loc_AC23FF: MemLdI2 global_88
  loc_AC2402: CI4UI1
  loc_AC2403: FLdPr Me
  loc_AC2406: MemLdStr global_84
  loc_AC2409: Ary1LdPr
  loc_AC240A: MemLdStr global_8
  loc_AC240D: Ary1LdPr
  loc_AC240E: MemLdI2 global_12
  loc_AC2411: AddI2
  loc_AC2412: FLdPr Me
  loc_AC2415: MemLdI2 global_88
  loc_AC2418: CI4UI1
  loc_AC2419: FLdPr Me
  loc_AC241C: MemLdStr global_84
  loc_AC241F: Ary1LdPr
  loc_AC2420: MemStI2 global_12
  loc_AC2423: FLdPr Me
  loc_AC2426: MemLdRfVar from_stack_1.global_90
  loc_AC2429: NextI2 var_176, loc_AC22F7
  loc_AC242E: FLdPr Me
  loc_AC2431: MemLdRfVar from_stack_1.global_88
  loc_AC2434: NextI2 var_172, loc_AC22D3
  loc_AC2439: LitI2_Byte &HFF
  loc_AC243B: FLdPr Me
  loc_AC243E: MemStI2 bGenerado
  loc_AC2441: LitI4 0
  loc_AC2446: CI2I4
  loc_AC2447: FLdPr Me
  loc_AC244A: Me.MousePointer = from_stack_1
  loc_AC244F: LitVarStr var_9C, vbNullString
  loc_AC2454: PopAdLdVar
  loc_AC2455: FLdPr Me
  loc_AC2458: VCallAd Control_ID_statusBar
  loc_AC245B: FStAdFunc var_B0
  loc_AC245E: FLdPr var_B0
  loc_AC2461: LateIdSt
  loc_AC2466: FFree1Ad var_B0
  loc_AC2469: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AB2A50
  'Data Table: 488378
  loc_AB24F4: FLdRfVar var_88
  loc_AB24F7: LitI2_Byte 0
  loc_AB24F9: LitI2_Byte &HFF
  loc_AB24FB: ImpAdLdI4 MemVar_C3D83C
  loc_AB24FE: FLdPr Me
  loc_AB2501: MemLdRfVar from_stack_1.global_64
  loc_AB2504: NewIfNullPr IFileSystem3
  loc_AB2507: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB250C: ILdRf var_88
  loc_AB250F: FLdPr Me
  loc_AB2512: MemStVarAd
  loc_AB2516: FFree1Ad var_88
  loc_AB2519: Call Proc_182_27_B0355C()
  loc_AB251E: LitI2_Byte 1
  loc_AB2520: FLdPr Me
  loc_AB2523: MemLdRfVar from_stack_1.global_88
  loc_AB2526: FLdPr Me
  loc_AB2529: MemLdStr global_84
  loc_AB252C: LitI2_Byte 1
  loc_AB252E: FnUBound
  loc_AB2530: CI2I4
  loc_AB2531: ForI2 var_8C
  loc_AB2537: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB253C: PopAdLdVar
  loc_AB253D: FLdPr Me
  loc_AB2540: MemLdRfVar from_stack_1.global_68
  loc_AB2543: LdPrVar
  loc_AB2545: LateMemCall
  loc_AB254B: LitStr "  <td rowspan="""
  loc_AB254E: FLdPr Me
  loc_AB2551: MemLdI2 global_88
  loc_AB2554: CI4UI1
  loc_AB2555: FLdPr Me
  loc_AB2558: MemLdStr global_84
  loc_AB255B: Ary1LdPr
  loc_AB255C: MemLdI2 global_12
  loc_AB255F: CStrUI1
  loc_AB2561: FStStrNoPop var_B0
  loc_AB2564: ConcatStr
  loc_AB2565: FStStrNoPop var_B4
  loc_AB2568: LitStr """ align=""left"">"
  loc_AB256B: ConcatStr
  loc_AB256C: FStStrNoPop var_B8
  loc_AB256F: FLdPr Me
  loc_AB2572: MemLdI2 global_88
  loc_AB2575: CI4UI1
  loc_AB2576: FLdPr Me
  loc_AB2579: MemLdStr global_84
  loc_AB257C: Ary1LdPr
  loc_AB257D: MemLdStr global_0
  loc_AB2580: ConcatStr
  loc_AB2581: FStStrNoPop var_BC
  loc_AB2584: LitStr "<br>"
  loc_AB2587: ConcatStr
  loc_AB2588: FStStrNoPop var_C0
  loc_AB258B: FLdPr Me
  loc_AB258E: MemLdI2 global_88
  loc_AB2591: CI4UI1
  loc_AB2592: FLdPr Me
  loc_AB2595: MemLdStr global_84
  loc_AB2598: Ary1LdPr
  loc_AB2599: MemLdStr global_4
  loc_AB259C: ConcatStr
  loc_AB259D: FStStrNoPop var_C4
  loc_AB25A0: LitStr "</td>"
  loc_AB25A3: ConcatStr
  loc_AB25A4: CVarStr var_D4
  loc_AB25A7: PopAdLdVar
  loc_AB25A8: FLdPr Me
  loc_AB25AB: MemLdRfVar from_stack_1.global_68
  loc_AB25AE: LdPrVar
  loc_AB25B0: LateMemCall
  loc_AB25B6: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB25C5: FFree1Var var_D4 = ""
  loc_AB25C8: LitI2_Byte 1
  loc_AB25CA: FLdPr Me
  loc_AB25CD: MemLdRfVar from_stack_1.global_90
  loc_AB25D0: FLdPr Me
  loc_AB25D3: MemLdI2 global_88
  loc_AB25D6: CI4UI1
  loc_AB25D7: FLdPr Me
  loc_AB25DA: MemLdStr global_84
  loc_AB25DD: Ary1LdPr
  loc_AB25DE: MemLdStr global_8
  loc_AB25E1: LitI2_Byte 1
  loc_AB25E3: FnUBound
  loc_AB25E5: CI2I4
  loc_AB25E6: ForI2 var_D8
  loc_AB25EC: FLdPr Me
  loc_AB25EF: MemLdI2 global_90
  loc_AB25F2: LitI2_Byte 1
  loc_AB25F4: GtI2
  loc_AB25F5: BranchF loc_AB260C
  loc_AB25F8: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB25FD: PopAdLdVar
  loc_AB25FE: FLdPr Me
  loc_AB2601: MemLdRfVar from_stack_1.global_68
  loc_AB2604: LdPrVar
  loc_AB2606: LateMemCall
  loc_AB260C: LitStr "  <td rowspan="""
  loc_AB260F: FLdPr Me
  loc_AB2612: MemLdI2 global_90
  loc_AB2615: CI4UI1
  loc_AB2616: FLdPr Me
  loc_AB2619: MemLdI2 global_88
  loc_AB261C: CI4UI1
  loc_AB261D: FLdPr Me
  loc_AB2620: MemLdStr global_84
  loc_AB2623: Ary1LdPr
  loc_AB2624: MemLdStr global_8
  loc_AB2627: Ary1LdPr
  loc_AB2628: MemLdI2 global_12
  loc_AB262B: CStrUI1
  loc_AB262D: FStStrNoPop var_B0
  loc_AB2630: ConcatStr
  loc_AB2631: FStStrNoPop var_B4
  loc_AB2634: LitStr """ align=""center"" NOWRAP>"
  loc_AB2637: ConcatStr
  loc_AB2638: FStStrNoPop var_B8
  loc_AB263B: FLdPr Me
  loc_AB263E: MemLdI2 global_90
  loc_AB2641: CI4UI1
  loc_AB2642: FLdPr Me
  loc_AB2645: MemLdI2 global_88
  loc_AB2648: CI4UI1
  loc_AB2649: FLdPr Me
  loc_AB264C: MemLdStr global_84
  loc_AB264F: Ary1LdPr
  loc_AB2650: MemLdStr global_8
  loc_AB2653: Ary1LdPr
  loc_AB2654: MemLdStr global_0
  loc_AB2657: ConcatStr
  loc_AB2658: FStStrNoPop var_BC
  loc_AB265B: LitStr "</td>"
  loc_AB265E: ConcatStr
  loc_AB265F: CVarStr var_D4
  loc_AB2662: PopAdLdVar
  loc_AB2663: FLdPr Me
  loc_AB2666: MemLdRfVar from_stack_1.global_68
  loc_AB2669: LdPrVar
  loc_AB266B: LateMemCall
  loc_AB2671: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AB267C: FFree1Var var_D4 = ""
  loc_AB267F: LitStr "  <td rowspan="""
  loc_AB2682: FLdPr Me
  loc_AB2685: MemLdI2 global_90
  loc_AB2688: CI4UI1
  loc_AB2689: FLdPr Me
  loc_AB268C: MemLdI2 global_88
  loc_AB268F: CI4UI1
  loc_AB2690: FLdPr Me
  loc_AB2693: MemLdStr global_84
  loc_AB2696: Ary1LdPr
  loc_AB2697: MemLdStr global_8
  loc_AB269A: Ary1LdPr
  loc_AB269B: MemLdI2 global_12
  loc_AB269E: CStrUI1
  loc_AB26A0: FStStrNoPop var_B0
  loc_AB26A3: ConcatStr
  loc_AB26A4: FStStrNoPop var_B4
  loc_AB26A7: LitStr """ align=""center"" NOWRAP>"
  loc_AB26AA: ConcatStr
  loc_AB26AB: FStStrNoPop var_B8
  loc_AB26AE: FLdPr Me
  loc_AB26B1: MemLdI2 global_90
  loc_AB26B4: CI4UI1
  loc_AB26B5: FLdPr Me
  loc_AB26B8: MemLdI2 global_88
  loc_AB26BB: CI4UI1
  loc_AB26BC: FLdPr Me
  loc_AB26BF: MemLdStr global_84
  loc_AB26C2: Ary1LdPr
  loc_AB26C3: MemLdStr global_8
  loc_AB26C6: Ary1LdPr
  loc_AB26C7: MemLdStr global_4
  loc_AB26CA: ConcatStr
  loc_AB26CB: FStStrNoPop var_BC
  loc_AB26CE: LitStr "</td>"
  loc_AB26D1: ConcatStr
  loc_AB26D2: CVarStr var_D4
  loc_AB26D5: PopAdLdVar
  loc_AB26D6: FLdPr Me
  loc_AB26D9: MemLdRfVar from_stack_1.global_68
  loc_AB26DC: LdPrVar
  loc_AB26DE: LateMemCall
  loc_AB26E4: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AB26EF: FFree1Var var_D4 = ""
  loc_AB26F2: LitI2_Byte 1
  loc_AB26F4: FLdPr Me
  loc_AB26F7: MemLdRfVar from_stack_1.global_92
  loc_AB26FA: FLdPr Me
  loc_AB26FD: MemLdI2 global_90
  loc_AB2700: CI4UI1
  loc_AB2701: FLdPr Me
  loc_AB2704: MemLdI2 global_88
  loc_AB2707: CI4UI1
  loc_AB2708: FLdPr Me
  loc_AB270B: MemLdStr global_84
  loc_AB270E: Ary1LdPr
  loc_AB270F: MemLdStr global_8
  loc_AB2712: Ary1LdPr
  loc_AB2713: MemLdStr global_8
  loc_AB2716: LitI2_Byte 1
  loc_AB2718: FnUBound
  loc_AB271A: CI2I4
  loc_AB271B: ForI2 var_DC
  loc_AB2721: FLdPr Me
  loc_AB2724: MemLdI2 global_92
  loc_AB2727: LitI2_Byte 1
  loc_AB2729: GtI2
  loc_AB272A: BranchF loc_AB2741
  loc_AB272D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB2732: PopAdLdVar
  loc_AB2733: FLdPr Me
  loc_AB2736: MemLdRfVar from_stack_1.global_68
  loc_AB2739: LdPrVar
  loc_AB273B: LateMemCall
  loc_AB2741: LitStr "  <td rowspan="""
  loc_AB2744: FLdPr Me
  loc_AB2747: MemLdI2 global_92
  loc_AB274A: CI4UI1
  loc_AB274B: FLdPr Me
  loc_AB274E: MemLdI2 global_90
  loc_AB2751: CI4UI1
  loc_AB2752: FLdPr Me
  loc_AB2755: MemLdI2 global_88
  loc_AB2758: CI4UI1
  loc_AB2759: FLdPr Me
  loc_AB275C: MemLdStr global_84
  loc_AB275F: Ary1LdPr
  loc_AB2760: MemLdStr global_8
  loc_AB2763: Ary1LdPr
  loc_AB2764: MemLdStr global_8
  loc_AB2767: Ary1LdPr
  loc_AB2768: MemLdI2 global_8
  loc_AB276B: CStrUI1
  loc_AB276D: FStStrNoPop var_B0
  loc_AB2770: ConcatStr
  loc_AB2771: FStStrNoPop var_B4
  loc_AB2774: LitStr """ align=""left"">"
  loc_AB2777: ConcatStr
  loc_AB2778: FStStrNoPop var_B8
  loc_AB277B: FLdPr Me
  loc_AB277E: MemLdI2 global_92
  loc_AB2781: CI4UI1
  loc_AB2782: FLdPr Me
  loc_AB2785: MemLdI2 global_90
  loc_AB2788: CI4UI1
  loc_AB2789: FLdPr Me
  loc_AB278C: MemLdI2 global_88
  loc_AB278F: CI4UI1
  loc_AB2790: FLdPr Me
  loc_AB2793: MemLdStr global_84
  loc_AB2796: Ary1LdPr
  loc_AB2797: MemLdStr global_8
  loc_AB279A: Ary1LdPr
  loc_AB279B: MemLdStr global_8
  loc_AB279E: Ary1LdPr
  loc_AB279F: MemLdStr global_0
  loc_AB27A2: ConcatStr
  loc_AB27A3: FStStrNoPop var_BC
  loc_AB27A6: LitStr "</td>"
  loc_AB27A9: ConcatStr
  loc_AB27AA: CVarStr var_D4
  loc_AB27AD: PopAdLdVar
  loc_AB27AE: FLdPr Me
  loc_AB27B1: MemLdRfVar from_stack_1.global_68
  loc_AB27B4: LdPrVar
  loc_AB27B6: LateMemCall
  loc_AB27BC: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AB27C7: FFree1Var var_D4 = ""
  loc_AB27CA: LitI2_Byte 1
  loc_AB27CC: FLdPr Me
  loc_AB27CF: MemLdRfVar from_stack_1.global_94
  loc_AB27D2: FLdPr Me
  loc_AB27D5: MemLdI2 global_92
  loc_AB27D8: CI4UI1
  loc_AB27D9: FLdPr Me
  loc_AB27DC: MemLdI2 global_90
  loc_AB27DF: CI4UI1
  loc_AB27E0: FLdPr Me
  loc_AB27E3: MemLdI2 global_88
  loc_AB27E6: CI4UI1
  loc_AB27E7: FLdPr Me
  loc_AB27EA: MemLdStr global_84
  loc_AB27ED: Ary1LdPr
  loc_AB27EE: MemLdStr global_8
  loc_AB27F1: Ary1LdPr
  loc_AB27F2: MemLdStr global_8
  loc_AB27F5: Ary1LdPr
  loc_AB27F6: MemLdStr global_4
  loc_AB27F9: LitI2_Byte 1
  loc_AB27FB: FnUBound
  loc_AB27FD: CI2I4
  loc_AB27FE: ForI2 var_E0
  loc_AB2804: FLdPr Me
  loc_AB2807: MemLdI2 global_94
  loc_AB280A: LitI2_Byte 1
  loc_AB280C: GtI2
  loc_AB280D: BranchF loc_AB2824
  loc_AB2810: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB2815: PopAdLdVar
  loc_AB2816: FLdPr Me
  loc_AB2819: MemLdRfVar from_stack_1.global_68
  loc_AB281C: LdPrVar
  loc_AB281E: LateMemCall
  loc_AB2824: FLdPr Me
  loc_AB2827: MemLdI2 global_94
  loc_AB282A: CI4UI1
  loc_AB282B: FLdPr Me
  loc_AB282E: MemLdI2 global_92
  loc_AB2831: CI4UI1
  loc_AB2832: FLdPr Me
  loc_AB2835: MemLdI2 global_90
  loc_AB2838: CI4UI1
  loc_AB2839: FLdPr Me
  loc_AB283C: MemLdI2 global_88
  loc_AB283F: CI4UI1
  loc_AB2840: FLdPr Me
  loc_AB2843: MemLdStr global_84
  loc_AB2846: AryLock
  loc_AB2849: Ary1LdPr
  loc_AB284A: MemLdStr global_8
  loc_AB284D: AryLock
  loc_AB2850: Ary1LdPr
  loc_AB2851: MemLdStr global_8
  loc_AB2854: AryLock
  loc_AB2857: Ary1LdPr
  loc_AB2858: MemLdStr global_4
  loc_AB285B: AryLock
  loc_AB285E: Ary1LdRf
  loc_AB285F: FStR4 var_F4
  loc_AB2862: LitI4 0
  loc_AB2867: LitI4 0
  loc_AB286C: LitI2_Byte 0
  loc_AB286E: LitStr "right"
  loc_AB2871: FMemLdR4 var_F4(0)
  loc_AB2876: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB287B: CVarStr var_D4
  loc_AB287E: PopAdLdVar
  loc_AB287F: FLdPr Me
  loc_AB2882: MemLdRfVar from_stack_1.global_68
  loc_AB2885: LdPrVar
  loc_AB2887: LateMemCall
  loc_AB288D: FFree1Var var_D4 = ""
  loc_AB2890: LitI4 0
  loc_AB2895: LitI4 0
  loc_AB289A: LitI2_Byte 0
  loc_AB289C: LitStr "right"
  loc_AB289F: FMemLdR4 var_F4(4)
  loc_AB28A4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB28A9: CVarStr var_D4
  loc_AB28AC: PopAdLdVar
  loc_AB28AD: FLdPr Me
  loc_AB28B0: MemLdRfVar from_stack_1.global_68
  loc_AB28B3: LdPrVar
  loc_AB28B5: LateMemCall
  loc_AB28BB: FFree1Var var_D4 = ""
  loc_AB28BE: LitI4 0
  loc_AB28C3: LitI4 0
  loc_AB28C8: LitI2_Byte 0
  loc_AB28CA: LitStr "right"
  loc_AB28CD: FMemLdR4 var_F4(8)
  loc_AB28D2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB28D7: CVarStr var_D4
  loc_AB28DA: PopAdLdVar
  loc_AB28DB: FLdPr Me
  loc_AB28DE: MemLdRfVar from_stack_1.global_68
  loc_AB28E1: LdPrVar
  loc_AB28E3: LateMemCall
  loc_AB28E9: FFree1Var var_D4 = ""
  loc_AB28EC: LitI4 0
  loc_AB28F1: FStR4 var_F4
  loc_AB28F4: AryUnlock
  loc_AB28F7: AryUnlock
  loc_AB28FA: AryUnlock
  loc_AB28FD: AryUnlock
  loc_AB2900: FLdPr Me
  loc_AB2903: MemLdI2 global_94
  loc_AB2906: LitI2_Byte 1
  loc_AB2908: EqI2
  loc_AB2909: FLdPr Me
  loc_AB290C: MemLdI2 global_92
  loc_AB290F: LitI2_Byte 1
  loc_AB2911: EqI2
  loc_AB2912: AndI4
  loc_AB2913: FLdPr Me
  loc_AB2916: MemLdI2 global_90
  loc_AB2919: LitI2_Byte 1
  loc_AB291B: EqI2
  loc_AB291C: AndI4
  loc_AB291D: BranchF loc_AB297D
  loc_AB2920: LitStr "  <td rowspan="""
  loc_AB2923: FLdPr Me
  loc_AB2926: MemLdI2 global_88
  loc_AB2929: CI4UI1
  loc_AB292A: FLdPr Me
  loc_AB292D: MemLdStr global_84
  loc_AB2930: Ary1LdPr
  loc_AB2931: MemLdI2 global_12
  loc_AB2934: CStrUI1
  loc_AB2936: FStStrNoPop var_B0
  loc_AB2939: ConcatStr
  loc_AB293A: FStStrNoPop var_B4
  loc_AB293D: LitStr """ align=""right"" class=""Totales"">"
  loc_AB2940: ConcatStr
  loc_AB2941: FStStrNoPop var_B8
  loc_AB2944: FLdPr Me
  loc_AB2947: MemLdI2 global_88
  loc_AB294A: CI4UI1
  loc_AB294B: FLdPr Me
  loc_AB294E: MemLdStr global_84
  loc_AB2951: Ary1LdPr
  loc_AB2952: MemLdStr global_16
  loc_AB2955: ConcatStr
  loc_AB2956: FStStrNoPop var_BC
  loc_AB2959: LitStr "</td>"
  loc_AB295C: ConcatStr
  loc_AB295D: CVarStr var_D4
  loc_AB2960: PopAdLdVar
  loc_AB2961: FLdPr Me
  loc_AB2964: MemLdRfVar from_stack_1.global_68
  loc_AB2967: LdPrVar
  loc_AB2969: LateMemCall
  loc_AB296F: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AB297A: FFree1Var var_D4 = ""
  loc_AB297D: LitVarStr var_9C, "     </tr>"
  loc_AB2982: PopAdLdVar
  loc_AB2983: FLdPr Me
  loc_AB2986: MemLdRfVar from_stack_1.global_68
  loc_AB2989: LdPrVar
  loc_AB298B: LateMemCall
  loc_AB2991: FLdPr Me
  loc_AB2994: MemLdRfVar from_stack_1.global_94
  loc_AB2997: NextI2 var_E0, loc_AB2804
  loc_AB299C: FLdPr Me
  loc_AB299F: MemLdRfVar from_stack_1.global_92
  loc_AB29A2: NextI2 var_DC, loc_AB2721
  loc_AB29A7: FLdPr Me
  loc_AB29AA: MemLdRfVar from_stack_1.global_90
  loc_AB29AD: NextI2 var_D8, loc_AB25EC
  loc_AB29B2: FLdPr Me
  loc_AB29B5: MemLdRfVar from_stack_1.global_88
  loc_AB29B8: NextI2 var_8C, loc_AB2537
  loc_AB29BD: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB29C2: PopAdLdVar
  loc_AB29C3: FLdPr Me
  loc_AB29C6: MemLdRfVar from_stack_1.global_68
  loc_AB29C9: LdPrVar
  loc_AB29CB: LateMemCall
  loc_AB29D1: LitVarStr var_9C, "    <td colspan=""6"" align=""right"" class=""Normal"">TOTAL</td>"
  loc_AB29D6: PopAdLdVar
  loc_AB29D7: FLdPr Me
  loc_AB29DA: MemLdRfVar from_stack_1.global_68
  loc_AB29DD: LdPrVar
  loc_AB29DF: LateMemCall
  loc_AB29E5: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AB29E8: FLdPr Me
  loc_AB29EB: MemLdStr global_96
  loc_AB29EE: ConcatStr
  loc_AB29EF: FStStrNoPop var_B0
  loc_AB29F2: LitStr "</th>"
  loc_AB29F5: ConcatStr
  loc_AB29F6: CVarStr var_D4
  loc_AB29F9: PopAdLdVar
  loc_AB29FA: FLdPr Me
  loc_AB29FD: MemLdRfVar from_stack_1.global_68
  loc_AB2A00: LdPrVar
  loc_AB2A02: LateMemCall
  loc_AB2A08: FFree1Str var_B0
  loc_AB2A0B: FFree1Var var_D4 = ""
  loc_AB2A0E: LitVarStr var_9C, "    <td>&nbsp;</th>"
  loc_AB2A13: PopAdLdVar
  loc_AB2A14: FLdPr Me
  loc_AB2A17: MemLdRfVar from_stack_1.global_68
  loc_AB2A1A: LdPrVar
  loc_AB2A1C: LateMemCall
  loc_AB2A22: LitVarStr var_9C, "     </tr>"
  loc_AB2A27: PopAdLdVar
  loc_AB2A28: FLdPr Me
  loc_AB2A2B: MemLdRfVar from_stack_1.global_68
  loc_AB2A2E: LdPrVar
  loc_AB2A30: LateMemCall
  loc_AB2A36: Call Proc_182_28_9823F0()
  loc_AB2A3B: FLdPr Me
  loc_AB2A3E: MemLdRfVar from_stack_1.global_68
  loc_AB2A41: LdPrVar
  loc_AB2A43: LateMemCall
  loc_AB2A49: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB2A4E: ExitProcHresult
  loc_AB2A4F: PopAdLdVar
End Sub

Private Function Proc_182_23_9E1034() '9E1034
  'Data Table: 488378
  loc_9E0F2C: FLdPr Me
  loc_9E0F2F: MemLdI2 global_88
  loc_9E0F32: LitI2_Byte 1
  loc_9E0F34: AddI2
  loc_9E0F35: FLdPr Me
  loc_9E0F38: MemStI2 global_88
  loc_9E0F3B: LitI2_Byte 0
  loc_9E0F3D: FLdPr Me
  loc_9E0F40: MemStI2 global_90
  loc_9E0F43: LitI4 0
  loc_9E0F48: FLdPr Me
  loc_9E0F4B: MemLdI2 global_88
  loc_9E0F4E: CI4UI1
  loc_9E0F4F: FLdPr Me
  loc_9E0F52: MemLdRfVar from_stack_1.global_84
  loc_9E0F55: RedimPreserve
  loc_9E0F5F: FLdRfVar var_A0
  loc_9E0F62: LitVarStr var_9C, "CucuPers"
  loc_9E0F67: PopAdLdVar
  loc_9E0F68: FLdRfVar var_8C
  loc_9E0F6B: FLdRfVar var_88
  loc_9E0F6E: FLdPr Me
  loc_9E0F71: MemLdRfVar from_stack_1.global_60
  loc_9E0F74: NewIfNullPr clsimputacion
  loc_9E0F77: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0F7C: FLdPr var_88
  loc_9E0F7F:  = Me.Fields
  loc_9E0F84: FLdPr var_8C
  loc_9E0F87: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0F8C: LitI2_Byte 0
  loc_9E0F8E: LitVar_Missing var_D4
  loc_9E0F91: LitI2_Byte 0
  loc_9E0F93: FLdZeroAd var_A0
  loc_9E0F96: CVarAd
  loc_9E0F9A: PopAdLdVar
  loc_9E0F9B: FLdPr Me
  loc_9E0F9E: MemLdI2 global_88
  loc_9E0FA1: CI4UI1
  loc_9E0FA2: FLdPr Me
  loc_9E0FA5: MemLdStr global_84
  loc_9E0FA8: AryLock
  loc_9E0FAB: Ary1LdPr
  loc_9E0FAC: MemLdRfVar from_stack_1.global_0
  loc_9E0FAF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0FB4: AryUnlock
  loc_9E0FB7: FFreeAd var_88 = ""
  loc_9E0FBE: FFreeVar var_B4 = ""
  loc_9E0FC5: FLdRfVar var_A0
  loc_9E0FC8: LitVarStr var_9C, "DetaProv"
  loc_9E0FCD: PopAdLdVar
  loc_9E0FCE: FLdRfVar var_8C
  loc_9E0FD1: FLdRfVar var_88
  loc_9E0FD4: FLdPr Me
  loc_9E0FD7: MemLdRfVar from_stack_1.global_60
  loc_9E0FDA: NewIfNullPr clsimputacion
  loc_9E0FDD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0FE2: FLdPr var_88
  loc_9E0FE5:  = Me.Fields
  loc_9E0FEA: FLdPr var_8C
  loc_9E0FED: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0FF2: LitI2_Byte 0
  loc_9E0FF4: LitVar_Missing var_D4
  loc_9E0FF7: LitI2_Byte 0
  loc_9E0FF9: FLdZeroAd var_A0
  loc_9E0FFC: CVarAd
  loc_9E1000: PopAdLdVar
  loc_9E1001: FLdPr Me
  loc_9E1004: MemLdI2 global_88
  loc_9E1007: CI4UI1
  loc_9E1008: FLdPr Me
  loc_9E100B: MemLdStr global_84
  loc_9E100E: AryLock
  loc_9E1011: Ary1LdPr
  loc_9E1012: MemLdRfVar from_stack_1.global_4
  loc_9E1015: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E101A: AryUnlock
  loc_9E101D: FFreeAd var_88 = ""
  loc_9E1024: FFreeVar var_B4 = ""
  loc_9E102B: Call Proc_182_24_9F4A4C()
  loc_9E1030: ExitProcHresult
  loc_9E1031: ImpAdLdFPR4 MemVar_57E3B4
End Function

Private Function Proc_182_24_9F4A4C(arg_C) '9F4A4C
  'Data Table: 488378
  loc_9F4918: FLdPr Me
  loc_9F491B: MemLdI2 global_90
  loc_9F491E: LitI2_Byte 1
  loc_9F4920: AddI2
  loc_9F4921: FLdPr Me
  loc_9F4924: MemStI2 global_90
  loc_9F4927: LitI2_Byte 0
  loc_9F4929: FLdPr Me
  loc_9F492C: MemStI2 global_92
  loc_9F492F: LitI4 0
  loc_9F4934: FLdPr Me
  loc_9F4937: MemLdI2 global_90
  loc_9F493A: CI4UI1
  loc_9F493B: FLdPr Me
  loc_9F493E: MemLdI2 global_88
  loc_9F4941: CI4UI1
  loc_9F4942: FLdPr Me
  loc_9F4945: MemLdStr global_84
  loc_9F4948: Ary1LdPr
  loc_9F4949: MemLdRfVar from_stack_1.global_8
  loc_9F494C: RedimPreserve
  loc_9F4956: FLdRfVar var_A0
  loc_9F4959: LitVarStr var_9C, "TifaDeve"
  loc_9F495E: PopAdLdVar
  loc_9F495F: FLdRfVar var_8C
  loc_9F4962: FLdRfVar var_88
  loc_9F4965: FLdPr Me
  loc_9F4968: MemLdRfVar from_stack_1.global_60
  loc_9F496B: NewIfNullPr clsimputacion
  loc_9F496E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F4973: FLdPr var_88
  loc_9F4976:  = Me.Fields
  loc_9F497B: FLdPr var_8C
  loc_9F497E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4983: LitI2_Byte 0
  loc_9F4985: LitVar_Missing var_D8
  loc_9F4988: LitI2_Byte 0
  loc_9F498A: FLdZeroAd var_A0
  loc_9F498D: CVarAd
  loc_9F4991: PopAdLdVar
  loc_9F4992: FLdPr Me
  loc_9F4995: MemLdI2 global_90
  loc_9F4998: CI4UI1
  loc_9F4999: FLdPr Me
  loc_9F499C: MemLdI2 global_88
  loc_9F499F: CI4UI1
  loc_9F49A0: FLdPr Me
  loc_9F49A3: MemLdStr global_84
  loc_9F49A6: AryLock
  loc_9F49A9: Ary1LdPr
  loc_9F49AA: MemLdStr global_8
  loc_9F49AD: AryLock
  loc_9F49B0: Ary1LdPr
  loc_9F49B1: MemLdRfVar from_stack_1.global_0
  loc_9F49B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F49B9: AryUnlock
  loc_9F49BC: AryUnlock
  loc_9F49BF: FFreeAd var_88 = ""
  loc_9F49C6: FFreeVar var_B8 = ""
  loc_9F49CD: FLdRfVar var_A0
  loc_9F49D0: LitVarStr var_9C, "FechImpu"
  loc_9F49D5: PopAdLdVar
  loc_9F49D6: FLdRfVar var_8C
  loc_9F49D9: FLdRfVar var_88
  loc_9F49DC: FLdPr Me
  loc_9F49DF: MemLdRfVar from_stack_1.global_60
  loc_9F49E2: NewIfNullPr clsimputacion
  loc_9F49E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F49EA: FLdPr var_88
  loc_9F49ED:  = Me.Fields
  loc_9F49F2: FLdPr var_8C
  loc_9F49F5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F49FA: LitI2_Byte 0
  loc_9F49FC: LitVar_Missing var_D8
  loc_9F49FF: LitI2_Byte 0
  loc_9F4A01: FLdZeroAd var_A0
  loc_9F4A04: CVarAd
  loc_9F4A08: PopAdLdVar
  loc_9F4A09: FLdPr Me
  loc_9F4A0C: MemLdI2 global_90
  loc_9F4A0F: CI4UI1
  loc_9F4A10: FLdPr Me
  loc_9F4A13: MemLdI2 global_88
  loc_9F4A16: CI4UI1
  loc_9F4A17: FLdPr Me
  loc_9F4A1A: MemLdStr global_84
  loc_9F4A1D: AryLock
  loc_9F4A20: Ary1LdPr
  loc_9F4A21: MemLdStr global_8
  loc_9F4A24: AryLock
  loc_9F4A27: Ary1LdPr
  loc_9F4A28: MemLdRfVar from_stack_1.global_4
  loc_9F4A2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F4A30: AryUnlock
  loc_9F4A33: AryUnlock
  loc_9F4A36: FFreeAd var_88 = ""
  loc_9F4A3D: FFreeVar var_B8 = ""
  loc_9F4A44: Call Proc_182_25_9D1164()
  loc_9F4A49: ExitProcHresult
  loc_9F4A4A: IStI2 arg_C
End Function

Private Function Proc_182_25_9D1164() '9D1164
  'Data Table: 488378
  loc_9D108C: FLdPr Me
  loc_9D108F: MemLdI2 global_92
  loc_9D1092: LitI2_Byte 1
  loc_9D1094: AddI2
  loc_9D1095: FLdPr Me
  loc_9D1098: MemStI2 global_92
  loc_9D109B: LitI2_Byte 0
  loc_9D109D: FLdPr Me
  loc_9D10A0: MemStI2 global_94
  loc_9D10A3: LitI4 0
  loc_9D10A8: FLdPr Me
  loc_9D10AB: MemLdI2 global_92
  loc_9D10AE: CI4UI1
  loc_9D10AF: FLdPr Me
  loc_9D10B2: MemLdI2 global_90
  loc_9D10B5: CI4UI1
  loc_9D10B6: FLdPr Me
  loc_9D10B9: MemLdI2 global_88
  loc_9D10BC: CI4UI1
  loc_9D10BD: FLdPr Me
  loc_9D10C0: MemLdStr global_84
  loc_9D10C3: Ary1LdPr
  loc_9D10C4: MemLdStr global_8
  loc_9D10C7: Ary1LdPr
  loc_9D10C8: MemLdRfVar from_stack_1.global_8
  loc_9D10CB: RedimPreserve
  loc_9D10D5: FLdRfVar var_A0
  loc_9D10D8: LitVarStr var_9C, "ExpeImpu"
  loc_9D10DD: PopAdLdVar
  loc_9D10DE: FLdRfVar var_8C
  loc_9D10E1: FLdRfVar var_88
  loc_9D10E4: FLdPr Me
  loc_9D10E7: MemLdRfVar from_stack_1.global_60
  loc_9D10EA: NewIfNullPr clsimputacion
  loc_9D10ED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9D10F2: FLdPr var_88
  loc_9D10F5:  = Me.Fields
  loc_9D10FA: FLdPr var_8C
  loc_9D10FD: from_stack_2 = Me.Item(from_stack_1)
  loc_9D1102: LitI2_Byte 0
  loc_9D1104: LitVar_Missing var_DC
  loc_9D1107: LitI2_Byte 0
  loc_9D1109: FLdZeroAd var_A0
  loc_9D110C: CVarAd
  loc_9D1110: PopAdLdVar
  loc_9D1111: FLdPr Me
  loc_9D1114: MemLdI2 global_92
  loc_9D1117: CI4UI1
  loc_9D1118: FLdPr Me
  loc_9D111B: MemLdI2 global_90
  loc_9D111E: CI4UI1
  loc_9D111F: FLdPr Me
  loc_9D1122: MemLdI2 global_88
  loc_9D1125: CI4UI1
  loc_9D1126: FLdPr Me
  loc_9D1129: MemLdStr global_84
  loc_9D112C: AryLock
  loc_9D112F: Ary1LdPr
  loc_9D1130: MemLdStr global_8
  loc_9D1133: AryLock
  loc_9D1136: Ary1LdPr
  loc_9D1137: MemLdStr global_8
  loc_9D113A: AryLock
  loc_9D113D: Ary1LdPr
  loc_9D113E: MemLdRfVar from_stack_1.global_0
  loc_9D1141: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9D1146: AryUnlock
  loc_9D1149: AryUnlock
  loc_9D114C: AryUnlock
  loc_9D114F: FFreeAd var_88 = ""
  loc_9D1156: FFreeVar var_BC = ""
  loc_9D115D: Call Proc_182_26_A4E968()
  loc_9D1162: ExitProcHresult
End Function

Private Function Proc_182_26_A4E968() 'A4E968
  'Data Table: 488378
  loc_A4E6CC: FLdPr Me
  loc_A4E6CF: MemLdI2 global_94
  loc_A4E6D2: LitI2_Byte 1
  loc_A4E6D4: AddI2
  loc_A4E6D5: FLdPr Me
  loc_A4E6D8: MemStI2 global_94
  loc_A4E6DB: LitI4 0
  loc_A4E6E0: FLdPr Me
  loc_A4E6E3: MemLdI2 global_94
  loc_A4E6E6: CI4UI1
  loc_A4E6E7: FLdPr Me
  loc_A4E6EA: MemLdI2 global_92
  loc_A4E6ED: CI4UI1
  loc_A4E6EE: FLdPr Me
  loc_A4E6F1: MemLdI2 global_90
  loc_A4E6F4: CI4UI1
  loc_A4E6F5: FLdPr Me
  loc_A4E6F8: MemLdI2 global_88
  loc_A4E6FB: CI4UI1
  loc_A4E6FC: FLdPr Me
  loc_A4E6FF: MemLdStr global_84
  loc_A4E702: Ary1LdPr
  loc_A4E703: MemLdStr global_8
  loc_A4E706: Ary1LdPr
  loc_A4E707: MemLdStr global_8
  loc_A4E70A: Ary1LdPr
  loc_A4E70B: MemLdRfVar from_stack_1.global_4
  loc_A4E70E: RedimPreserve
  loc_A4E718: FLdRfVar var_A4
  loc_A4E71B: LitVarStr var_A0, "NumeLiqu"
  loc_A4E720: PopAdLdVar
  loc_A4E721: FLdRfVar var_90
  loc_A4E724: FLdRfVar var_8C
  loc_A4E727: FLdPr Me
  loc_A4E72A: MemLdRfVar from_stack_1.global_60
  loc_A4E72D: NewIfNullPr clsimputacion
  loc_A4E730: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4E735: FLdPr var_8C
  loc_A4E738:  = Me.Fields
  loc_A4E73D: FLdPr var_90
  loc_A4E740: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E745: LitI2_Byte 0
  loc_A4E747: LitVar_Missing var_E4
  loc_A4E74A: LitI2_Byte 0
  loc_A4E74C: FLdZeroAd var_A4
  loc_A4E74F: CVarAd
  loc_A4E753: PopAdLdVar
  loc_A4E754: FLdPr Me
  loc_A4E757: MemLdI2 global_94
  loc_A4E75A: CI4UI1
  loc_A4E75B: FLdPr Me
  loc_A4E75E: MemLdI2 global_92
  loc_A4E761: CI4UI1
  loc_A4E762: FLdPr Me
  loc_A4E765: MemLdI2 global_90
  loc_A4E768: CI4UI1
  loc_A4E769: FLdPr Me
  loc_A4E76C: MemLdI2 global_88
  loc_A4E76F: CI4UI1
  loc_A4E770: FLdPr Me
  loc_A4E773: MemLdStr global_84
  loc_A4E776: AryLock
  loc_A4E779: Ary1LdPr
  loc_A4E77A: MemLdStr global_8
  loc_A4E77D: AryLock
  loc_A4E780: Ary1LdPr
  loc_A4E781: MemLdStr global_8
  loc_A4E784: AryLock
  loc_A4E787: Ary1LdPr
  loc_A4E788: MemLdStr global_4
  loc_A4E78B: AryLock
  loc_A4E78E: Ary1LdPr
  loc_A4E78F: MemLdRfVar from_stack_1.global_0
  loc_A4E792: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4E797: AryUnlock
  loc_A4E79A: AryUnlock
  loc_A4E79D: AryUnlock
  loc_A4E7A0: AryUnlock
  loc_A4E7A3: FFreeAd var_8C = ""
  loc_A4E7AA: FFreeVar var_C4 = ""
  loc_A4E7B1: FLdRfVar var_A4
  loc_A4E7B4: LitVarStr var_A0, "DetaImpu"
  loc_A4E7B9: PopAdLdVar
  loc_A4E7BA: FLdRfVar var_90
  loc_A4E7BD: FLdRfVar var_8C
  loc_A4E7C0: FLdPr Me
  loc_A4E7C3: MemLdRfVar from_stack_1.global_60
  loc_A4E7C6: NewIfNullPr clsimputacion
  loc_A4E7C9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4E7CE: FLdPr var_8C
  loc_A4E7D1:  = Me.Fields
  loc_A4E7D6: FLdPr var_90
  loc_A4E7D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E7DE: LitI2_Byte 0
  loc_A4E7E0: LitVar_Missing var_E4
  loc_A4E7E3: LitI2_Byte 0
  loc_A4E7E5: FLdZeroAd var_A4
  loc_A4E7E8: CVarAd
  loc_A4E7EC: PopAdLdVar
  loc_A4E7ED: FLdPr Me
  loc_A4E7F0: MemLdI2 global_94
  loc_A4E7F3: CI4UI1
  loc_A4E7F4: FLdPr Me
  loc_A4E7F7: MemLdI2 global_92
  loc_A4E7FA: CI4UI1
  loc_A4E7FB: FLdPr Me
  loc_A4E7FE: MemLdI2 global_90
  loc_A4E801: CI4UI1
  loc_A4E802: FLdPr Me
  loc_A4E805: MemLdI2 global_88
  loc_A4E808: CI4UI1
  loc_A4E809: FLdPr Me
  loc_A4E80C: MemLdStr global_84
  loc_A4E80F: AryLock
  loc_A4E812: Ary1LdPr
  loc_A4E813: MemLdStr global_8
  loc_A4E816: AryLock
  loc_A4E819: Ary1LdPr
  loc_A4E81A: MemLdStr global_8
  loc_A4E81D: AryLock
  loc_A4E820: Ary1LdPr
  loc_A4E821: MemLdStr global_4
  loc_A4E824: AryLock
  loc_A4E827: Ary1LdPr
  loc_A4E828: MemLdRfVar from_stack_1.global_4
  loc_A4E82B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4E830: AryUnlock
  loc_A4E833: AryUnlock
  loc_A4E836: AryUnlock
  loc_A4E839: AryUnlock
  loc_A4E83C: FFreeAd var_8C = ""
  loc_A4E843: FFreeVar var_C4 = ""
  loc_A4E84A: FLdRfVar var_A4
  loc_A4E84D: LitVarStr var_A0, "DeveImpu"
  loc_A4E852: PopAdLdVar
  loc_A4E853: FLdRfVar var_90
  loc_A4E856: FLdRfVar var_8C
  loc_A4E859: FLdPr Me
  loc_A4E85C: MemLdRfVar from_stack_1.global_60
  loc_A4E85F: NewIfNullPr clsimputacion
  loc_A4E862: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4E867: FLdPr var_8C
  loc_A4E86A:  = Me.Fields
  loc_A4E86F: FLdPr var_90
  loc_A4E872: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E877: LitI2_Byte 0
  loc_A4E879: FLdPr Me
  loc_A4E87C: MemLdRfVar from_stack_1.global_96
  loc_A4E87F: CVarRef
  loc_A4E884: LitI2_Byte &HFF
  loc_A4E886: FLdZeroAd var_A4
  loc_A4E889: CVarAd
  loc_A4E88D: PopAdLdVar
  loc_A4E88E: FLdPr Me
  loc_A4E891: MemLdI2 global_94
  loc_A4E894: CI4UI1
  loc_A4E895: FLdPr Me
  loc_A4E898: MemLdI2 global_92
  loc_A4E89B: CI4UI1
  loc_A4E89C: FLdPr Me
  loc_A4E89F: MemLdI2 global_90
  loc_A4E8A2: CI4UI1
  loc_A4E8A3: FLdPr Me
  loc_A4E8A6: MemLdI2 global_88
  loc_A4E8A9: CI4UI1
  loc_A4E8AA: FLdPr Me
  loc_A4E8AD: MemLdStr global_84
  loc_A4E8B0: AryLock
  loc_A4E8B3: Ary1LdPr
  loc_A4E8B4: MemLdStr global_8
  loc_A4E8B7: AryLock
  loc_A4E8BA: Ary1LdPr
  loc_A4E8BB: MemLdStr global_8
  loc_A4E8BE: AryLock
  loc_A4E8C1: Ary1LdPr
  loc_A4E8C2: MemLdStr global_4
  loc_A4E8C5: AryLock
  loc_A4E8C8: Ary1LdPr
  loc_A4E8C9: MemLdRfVar from_stack_1.global_8
  loc_A4E8CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4E8D1: AryUnlock
  loc_A4E8D4: AryUnlock
  loc_A4E8D7: AryUnlock
  loc_A4E8DA: AryUnlock
  loc_A4E8DD: FFreeAd var_8C = ""
  loc_A4E8E4: FFree1Var var_C4 = ""
  loc_A4E8E7: FLdRfVar var_A4
  loc_A4E8EA: LitVarStr var_A0, "DeveImpu"
  loc_A4E8EF: PopAdLdVar
  loc_A4E8F0: FLdRfVar var_90
  loc_A4E8F3: FLdRfVar var_8C
  loc_A4E8F6: FLdPr Me
  loc_A4E8F9: MemLdRfVar from_stack_1.global_60
  loc_A4E8FC: NewIfNullPr clsimputacion
  loc_A4E8FF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4E904: FLdPr var_8C
  loc_A4E907:  = Me.Fields
  loc_A4E90C: FLdPr var_90
  loc_A4E90F: from_stack_2 = Me.Item(from_stack_1)
  loc_A4E914: LitI2_Byte 0
  loc_A4E916: FLdPr Me
  loc_A4E919: MemLdI2 global_88
  loc_A4E91C: CI4UI1
  loc_A4E91D: FLdPr Me
  loc_A4E920: MemLdStr global_84
  loc_A4E923: AryLock
  loc_A4E926: Ary1LdPr
  loc_A4E927: MemLdRfVar from_stack_1.global_16
  loc_A4E92A: CVarRef
  loc_A4E92F: LitI2_Byte &HFF
  loc_A4E931: FLdZeroAd var_A4
  loc_A4E934: CVarAd
  loc_A4E938: PopAdLdVar
  loc_A4E939: FLdRfVar var_88
  loc_A4E93C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4E941: AryUnlock
  loc_A4E944: FFreeAd var_8C = ""
  loc_A4E94B: FFree1Var var_C4 = ""
  loc_A4E94E: LitI4 1
  loc_A4E953: PopTmpLdAdStr var_E8
  loc_A4E956: FLdPr Me
  loc_A4E959: MemLdRfVar from_stack_1.global_60
  loc_A4E95C: NewIfNullPr clsimputacion
  loc_A4E95F: Call clsimputacion.Mover(from_stack_1v)
  loc_A4E964: ExitProcHresult
End Function

Private Function Proc_182_27_B0355C() 'B0355C
  'Data Table: 488378
  loc_B02D94: LitVarStr var_94, "<html>"
  loc_B02D99: PopAdLdVar
  loc_B02D9A: FLdPr Me
  loc_B02D9D: MemLdRfVar from_stack_1.global_68
  loc_B02DA0: LdPrVar
  loc_B02DA2: LateMemCall
  loc_B02DA8: LitVarStr var_94, "<head>"
  loc_B02DAD: PopAdLdVar
  loc_B02DAE: FLdPr Me
  loc_B02DB1: MemLdRfVar from_stack_1.global_68
  loc_B02DB4: LdPrVar
  loc_B02DB6: LateMemCall
  loc_B02DBC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B02DC1: PopAdLdVar
  loc_B02DC2: FLdPr Me
  loc_B02DC5: MemLdRfVar from_stack_1.global_68
  loc_B02DC8: LdPrVar
  loc_B02DCA: LateMemCall
  loc_B02DD0: LitStr "<title>"
  loc_B02DD3: FLdRfVar var_A8
  loc_B02DD6: FLdPr Me
  loc_B02DD9:  = Me.Caption
  loc_B02DDE: ILdRf var_A8
  loc_B02DE1: ConcatStr
  loc_B02DE2: FStStrNoPop var_AC
  loc_B02DE5: LitStr "</title>"
  loc_B02DE8: ConcatStr
  loc_B02DE9: CVarStr var_BC
  loc_B02DEC: PopAdLdVar
  loc_B02DED: FLdPr Me
  loc_B02DF0: MemLdRfVar from_stack_1.global_68
  loc_B02DF3: LdPrVar
  loc_B02DF5: LateMemCall
  loc_B02DFB: FFreeStr var_A8 = ""
  loc_B02E02: FFree1Var var_BC = ""
  loc_B02E05: LitVarStr var_94, "<style type=""text/css"">"
  loc_B02E0A: PopAdLdVar
  loc_B02E0B: FLdPr Me
  loc_B02E0E: MemLdRfVar from_stack_1.global_68
  loc_B02E11: LdPrVar
  loc_B02E13: LateMemCall
  loc_B02E19: LitVarStr var_94, ".Titulo1 {"
  loc_B02E1E: PopAdLdVar
  loc_B02E1F: FLdPr Me
  loc_B02E22: MemLdRfVar from_stack_1.global_68
  loc_B02E25: LdPrVar
  loc_B02E27: LateMemCall
  loc_B02E2D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B02E32: PopAdLdVar
  loc_B02E33: FLdPr Me
  loc_B02E36: MemLdRfVar from_stack_1.global_68
  loc_B02E39: LdPrVar
  loc_B02E3B: LateMemCall
  loc_B02E41: LitVarStr var_94, " font-size: 18px;"
  loc_B02E46: PopAdLdVar
  loc_B02E47: FLdPr Me
  loc_B02E4A: MemLdRfVar from_stack_1.global_68
  loc_B02E4D: LdPrVar
  loc_B02E4F: LateMemCall
  loc_B02E55: LitVarStr var_94, " font-weight: bold;"
  loc_B02E5A: PopAdLdVar
  loc_B02E5B: FLdPr Me
  loc_B02E5E: MemLdRfVar from_stack_1.global_68
  loc_B02E61: LdPrVar
  loc_B02E63: LateMemCall
  loc_B02E69: LitVarStr var_94, "}"
  loc_B02E6E: PopAdLdVar
  loc_B02E6F: FLdPr Me
  loc_B02E72: MemLdRfVar from_stack_1.global_68
  loc_B02E75: LdPrVar
  loc_B02E77: LateMemCall
  loc_B02E7D: LitVarStr var_94, ".Titulo2 {"
  loc_B02E82: PopAdLdVar
  loc_B02E83: FLdPr Me
  loc_B02E86: MemLdRfVar from_stack_1.global_68
  loc_B02E89: LdPrVar
  loc_B02E8B: LateMemCall
  loc_B02E91: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B02E96: PopAdLdVar
  loc_B02E97: FLdPr Me
  loc_B02E9A: MemLdRfVar from_stack_1.global_68
  loc_B02E9D: LdPrVar
  loc_B02E9F: LateMemCall
  loc_B02EA5: LitVarStr var_94, " font-size: 14px;"
  loc_B02EAA: PopAdLdVar
  loc_B02EAB: FLdPr Me
  loc_B02EAE: MemLdRfVar from_stack_1.global_68
  loc_B02EB1: LdPrVar
  loc_B02EB3: LateMemCall
  loc_B02EB9: LitVarStr var_94, " font-weight: bold;"
  loc_B02EBE: PopAdLdVar
  loc_B02EBF: FLdPr Me
  loc_B02EC2: MemLdRfVar from_stack_1.global_68
  loc_B02EC5: LdPrVar
  loc_B02EC7: LateMemCall
  loc_B02ECD: LitVarStr var_94, "}"
  loc_B02ED2: PopAdLdVar
  loc_B02ED3: FLdPr Me
  loc_B02ED6: MemLdRfVar from_stack_1.global_68
  loc_B02ED9: LdPrVar
  loc_B02EDB: LateMemCall
  loc_B02EE1: LitVarStr var_94, ".Normal {"
  loc_B02EE6: PopAdLdVar
  loc_B02EE7: FLdPr Me
  loc_B02EEA: MemLdRfVar from_stack_1.global_68
  loc_B02EED: LdPrVar
  loc_B02EEF: LateMemCall
  loc_B02EF5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B02EFA: PopAdLdVar
  loc_B02EFB: FLdPr Me
  loc_B02EFE: MemLdRfVar from_stack_1.global_68
  loc_B02F01: LdPrVar
  loc_B02F03: LateMemCall
  loc_B02F09: LitVarStr var_94, " font-size: 14px;"
  loc_B02F0E: PopAdLdVar
  loc_B02F0F: FLdPr Me
  loc_B02F12: MemLdRfVar from_stack_1.global_68
  loc_B02F15: LdPrVar
  loc_B02F17: LateMemCall
  loc_B02F1D: LitVarStr var_94, " font-style: normal;"
  loc_B02F22: PopAdLdVar
  loc_B02F23: FLdPr Me
  loc_B02F26: MemLdRfVar from_stack_1.global_68
  loc_B02F29: LdPrVar
  loc_B02F2B: LateMemCall
  loc_B02F31: LitVarStr var_94, " font-weight: normal;"
  loc_B02F36: PopAdLdVar
  loc_B02F37: FLdPr Me
  loc_B02F3A: MemLdRfVar from_stack_1.global_68
  loc_B02F3D: LdPrVar
  loc_B02F3F: LateMemCall
  loc_B02F45: LitVarStr var_94, " font-variant: normal;"
  loc_B02F4A: PopAdLdVar
  loc_B02F4B: FLdPr Me
  loc_B02F4E: MemLdRfVar from_stack_1.global_68
  loc_B02F51: LdPrVar
  loc_B02F53: LateMemCall
  loc_B02F59: LitVarStr var_94, "}"
  loc_B02F5E: PopAdLdVar
  loc_B02F5F: FLdPr Me
  loc_B02F62: MemLdRfVar from_stack_1.global_68
  loc_B02F65: LdPrVar
  loc_B02F67: LateMemCall
  loc_B02F6D: LitVarStr var_94, ".Encabezado {"
  loc_B02F72: PopAdLdVar
  loc_B02F73: FLdPr Me
  loc_B02F76: MemLdRfVar from_stack_1.global_68
  loc_B02F79: LdPrVar
  loc_B02F7B: LateMemCall
  loc_B02F81: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B02F86: PopAdLdVar
  loc_B02F87: FLdPr Me
  loc_B02F8A: MemLdRfVar from_stack_1.global_68
  loc_B02F8D: LdPrVar
  loc_B02F8F: LateMemCall
  loc_B02F95: LitVarStr var_94, " font-size: 13px;"
  loc_B02F9A: PopAdLdVar
  loc_B02F9B: FLdPr Me
  loc_B02F9E: MemLdRfVar from_stack_1.global_68
  loc_B02FA1: LdPrVar
  loc_B02FA3: LateMemCall
  loc_B02FA9: LitVarStr var_94, " font-weight: bold;"
  loc_B02FAE: PopAdLdVar
  loc_B02FAF: FLdPr Me
  loc_B02FB2: MemLdRfVar from_stack_1.global_68
  loc_B02FB5: LdPrVar
  loc_B02FB7: LateMemCall
  loc_B02FBD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B02FC2: PopAdLdVar
  loc_B02FC3: FLdPr Me
  loc_B02FC6: MemLdRfVar from_stack_1.global_68
  loc_B02FC9: LdPrVar
  loc_B02FCB: LateMemCall
  loc_B02FD1: LitVarStr var_94, "}"
  loc_B02FD6: PopAdLdVar
  loc_B02FD7: FLdPr Me
  loc_B02FDA: MemLdRfVar from_stack_1.global_68
  loc_B02FDD: LdPrVar
  loc_B02FDF: LateMemCall
  loc_B02FE5: LitVarStr var_94, ".LineaDato {"
  loc_B02FEA: PopAdLdVar
  loc_B02FEB: FLdPr Me
  loc_B02FEE: MemLdRfVar from_stack_1.global_68
  loc_B02FF1: LdPrVar
  loc_B02FF3: LateMemCall
  loc_B02FF9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B02FFE: PopAdLdVar
  loc_B02FFF: FLdPr Me
  loc_B03002: MemLdRfVar from_stack_1.global_68
  loc_B03005: LdPrVar
  loc_B03007: LateMemCall
  loc_B0300D: LitVarStr var_94, " font-size: 10px;"
  loc_B03012: PopAdLdVar
  loc_B03013: FLdPr Me
  loc_B03016: MemLdRfVar from_stack_1.global_68
  loc_B03019: LdPrVar
  loc_B0301B: LateMemCall
  loc_B03021: LitVarStr var_94, "}"
  loc_B03026: PopAdLdVar
  loc_B03027: FLdPr Me
  loc_B0302A: MemLdRfVar from_stack_1.global_68
  loc_B0302D: LdPrVar
  loc_B0302F: LateMemCall
  loc_B03035: LitVarStr var_94, ".Totales {"
  loc_B0303A: PopAdLdVar
  loc_B0303B: FLdPr Me
  loc_B0303E: MemLdRfVar from_stack_1.global_68
  loc_B03041: LdPrVar
  loc_B03043: LateMemCall
  loc_B03049: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B0304E: PopAdLdVar
  loc_B0304F: FLdPr Me
  loc_B03052: MemLdRfVar from_stack_1.global_68
  loc_B03055: LdPrVar
  loc_B03057: LateMemCall
  loc_B0305D: LitVarStr var_94, " font-size: 14px;"
  loc_B03062: PopAdLdVar
  loc_B03063: FLdPr Me
  loc_B03066: MemLdRfVar from_stack_1.global_68
  loc_B03069: LdPrVar
  loc_B0306B: LateMemCall
  loc_B03071: LitVarStr var_94, " font-weight: bold;"
  loc_B03076: PopAdLdVar
  loc_B03077: FLdPr Me
  loc_B0307A: MemLdRfVar from_stack_1.global_68
  loc_B0307D: LdPrVar
  loc_B0307F: LateMemCall
  loc_B03085: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B0308A: PopAdLdVar
  loc_B0308B: FLdPr Me
  loc_B0308E: MemLdRfVar from_stack_1.global_68
  loc_B03091: LdPrVar
  loc_B03093: LateMemCall
  loc_B03099: LitVarStr var_94, "}"
  loc_B0309E: PopAdLdVar
  loc_B0309F: FLdPr Me
  loc_B030A2: MemLdRfVar from_stack_1.global_68
  loc_B030A5: LdPrVar
  loc_B030A7: LateMemCall
  loc_B030AD: LitVarStr var_94, ".SubTotales {"
  loc_B030B2: PopAdLdVar
  loc_B030B3: FLdPr Me
  loc_B030B6: MemLdRfVar from_stack_1.global_68
  loc_B030B9: LdPrVar
  loc_B030BB: LateMemCall
  loc_B030C1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B030C6: PopAdLdVar
  loc_B030C7: FLdPr Me
  loc_B030CA: MemLdRfVar from_stack_1.global_68
  loc_B030CD: LdPrVar
  loc_B030CF: LateMemCall
  loc_B030D5: LitVarStr var_94, " font-size: 10px;"
  loc_B030DA: PopAdLdVar
  loc_B030DB: FLdPr Me
  loc_B030DE: MemLdRfVar from_stack_1.global_68
  loc_B030E1: LdPrVar
  loc_B030E3: LateMemCall
  loc_B030E9: LitVarStr var_94, " font-weight: bold;"
  loc_B030EE: PopAdLdVar
  loc_B030EF: FLdPr Me
  loc_B030F2: MemLdRfVar from_stack_1.global_68
  loc_B030F5: LdPrVar
  loc_B030F7: LateMemCall
  loc_B030FD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B03102: PopAdLdVar
  loc_B03103: FLdPr Me
  loc_B03106: MemLdRfVar from_stack_1.global_68
  loc_B03109: LdPrVar
  loc_B0310B: LateMemCall
  loc_B03111: LitVarStr var_94, "}"
  loc_B03116: PopAdLdVar
  loc_B03117: FLdPr Me
  loc_B0311A: MemLdRfVar from_stack_1.global_68
  loc_B0311D: LdPrVar
  loc_B0311F: LateMemCall
  loc_B03125: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B0312A: PopAdLdVar
  loc_B0312B: FLdPr Me
  loc_B0312E: MemLdRfVar from_stack_1.global_68
  loc_B03131: LdPrVar
  loc_B03133: LateMemCall
  loc_B03139: LitVarStr var_94, "</style>"
  loc_B0313E: PopAdLdVar
  loc_B0313F: FLdPr Me
  loc_B03142: MemLdRfVar from_stack_1.global_68
  loc_B03145: LdPrVar
  loc_B03147: LateMemCall
  loc_B0314D: LitI4 0
  loc_B03152: FStStrCopy var_AC
  loc_B03155: FLdRfVar var_AC
  loc_B03158: LitI4 0
  loc_B0315D: FStStrCopy var_A8
  loc_B03160: FLdRfVar var_A8
  loc_B03163: LitI2_Byte &HFF
  loc_B03165: PopTmpLdAd2 var_BE
  loc_B03168: FLdPr Me
  loc_B0316B: MemLdRfVar from_stack_1.global_68
  loc_B0316E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B03173: FFreeStr var_A8 = ""
  loc_B0317A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B0317F: PopAdLdVar
  loc_B03180: FLdPr Me
  loc_B03183: MemLdRfVar from_stack_1.global_68
  loc_B03186: LdPrVar
  loc_B03188: LateMemCall
  loc_B0318E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_B03193: PopAdLdVar
  loc_B03194: FLdPr Me
  loc_B03197: MemLdRfVar from_stack_1.global_68
  loc_B0319A: LdPrVar
  loc_B0319C: LateMemCall
  loc_B031A2: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B031A7: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B031AC: FStVarCopyObj var_BC
  loc_B031AF: FLdRfVar var_BC
  loc_B031B2: FLdRfVar var_D0
  loc_B031B5: ImpAdCallFPR4  = Ucase()
  loc_B031BA: FLdRfVar var_D0
  loc_B031BD: ConcatVar var_E0
  loc_B031C1: LitVarStr var_F0, "</p>"
  loc_B031C6: ConcatVar var_100
  loc_B031CA: PopAdLdVar
  loc_B031CB: FLdPr Me
  loc_B031CE: MemLdRfVar from_stack_1.global_68
  loc_B031D1: LdPrVar
  loc_B031D3: LateMemCall
  loc_B031D9: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_B031E4: LitStr "    <p>"
  loc_B031E7: FLdRfVar var_A8
  loc_B031EA: FLdPr Me
  loc_B031ED:  = Me.Caption
  loc_B031F2: ILdRf var_A8
  loc_B031F5: ConcatStr
  loc_B031F6: FStStrNoPop var_AC
  loc_B031F9: LitStr "</p></th>"
  loc_B031FC: ConcatStr
  loc_B031FD: CVarStr var_BC
  loc_B03200: PopAdLdVar
  loc_B03201: FLdPr Me
  loc_B03204: MemLdRfVar from_stack_1.global_68
  loc_B03207: LdPrVar
  loc_B03209: LateMemCall
  loc_B0320F: FFreeStr var_A8 = ""
  loc_B03216: FFree1Var var_BC = ""
  loc_B03219: LitVarStr var_94, "  </tr>"
  loc_B0321E: PopAdLdVar
  loc_B0321F: FLdPr Me
  loc_B03222: MemLdRfVar from_stack_1.global_68
  loc_B03225: LdPrVar
  loc_B03227: LateMemCall
  loc_B0322D: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_B03232: PopAdLdVar
  loc_B03233: FLdPr Me
  loc_B03236: MemLdRfVar from_stack_1.global_68
  loc_B03239: LdPrVar
  loc_B0323B: LateMemCall
  loc_B03241: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B03246: PopAdLdVar
  loc_B03247: FLdPr Me
  loc_B0324A: MemLdRfVar from_stack_1.global_68
  loc_B0324D: LdPrVar
  loc_B0324F: LateMemCall
  loc_B03255: LitVarStr var_94, "    <th align=""left"">"
  loc_B0325A: PopAdLdVar
  loc_B0325B: FLdPr Me
  loc_B0325E: MemLdRfVar from_stack_1.global_68
  loc_B03261: LdPrVar
  loc_B03263: LateMemCall
  loc_B03269: LitStr "     Periodo: <span class=""Normal"">"
  loc_B0326C: FLdRfVar var_A8
  loc_B0326F: FLdPr Me
  loc_B03272: VCallAd Control_ID_cboPeriodo
  loc_B03275: FStAdFunc var_114
  loc_B03278: FLdPr var_114
  loc_B0327B:  = Me.Text
  loc_B03280: ILdRf var_A8
  loc_B03283: ConcatStr
  loc_B03284: FStStrNoPop var_AC
  loc_B03287: LitStr "</span><br>"
  loc_B0328A: ConcatStr
  loc_B0328B: CVarStr var_BC
  loc_B0328E: PopAdLdVar
  loc_B0328F: FLdPr Me
  loc_B03292: MemLdRfVar from_stack_1.global_68
  loc_B03295: LdPrVar
  loc_B03297: LateMemCall
  loc_B0329D: FFreeStr var_A8 = ""
  loc_B032A4: FFree1Ad var_114
  loc_B032A7: FFree1Var var_BC = ""
  loc_B032AA: FLdPr Me
  loc_B032AD: VCallAd Control_ID_CucuPersMsk
  loc_B032B0: FStAdFunc var_114
  loc_B032B3: FLdPr var_114
  loc_B032B6: LateIdLdVar var_BC DispID_22 0
  loc_B032BD: CStrVarTmp
  loc_B032BE: FStStrNoPop var_A8
  loc_B032C1: LitStr vbNullString
  loc_B032C4: NeStr
  loc_B032C6: FFree1Str var_A8
  loc_B032C9: FFree1Ad var_114
  loc_B032CC: FFree1Var var_BC = ""
  loc_B032CF: BranchF loc_B03316
  loc_B032D2: LitStr "     Nombre de Proveedor: <span class=""Normal"">"
  loc_B032D5: FLdRfVar var_A8
  loc_B032D8: FLdPr Me
  loc_B032DB: VCallAd Control_ID_DetaProvLbl
  loc_B032DE: FStAdFunc var_114
  loc_B032E1: FLdPr var_114
  loc_B032E4:  = Me.Caption
  loc_B032E9: ILdRf var_A8
  loc_B032EC: ConcatStr
  loc_B032ED: FStStrNoPop var_AC
  loc_B032F0: LitStr "</span>"
  loc_B032F3: ConcatStr
  loc_B032F4: CVarStr var_BC
  loc_B032F7: PopAdLdVar
  loc_B032F8: FLdPr Me
  loc_B032FB: MemLdRfVar from_stack_1.global_68
  loc_B032FE: LdPrVar
  loc_B03300: LateMemCall
  loc_B03306: FFreeStr var_A8 = ""
  loc_B0330D: FFree1Ad var_114
  loc_B03310: FFree1Var var_BC = ""
  loc_B03313: Branch loc_B0332A
  loc_B03316: LitVarStr var_94, "     Nombre de Proveedor: <span class=""Normal"">TODOS</span>"
  loc_B0331B: PopAdLdVar
  loc_B0331C: FLdPr Me
  loc_B0331F: MemLdRfVar from_stack_1.global_68
  loc_B03322: LdPrVar
  loc_B03324: LateMemCall
  loc_B0332A: LitVarStr var_94, "    </th>"
  loc_B0332F: PopAdLdVar
  loc_B03330: FLdPr Me
  loc_B03333: MemLdRfVar from_stack_1.global_68
  loc_B03336: LdPrVar
  loc_B03338: LateMemCall
  loc_B0333E: LitVarStr var_94, "    <th align=""right"">"
  loc_B03343: PopAdLdVar
  loc_B03344: FLdPr Me
  loc_B03347: MemLdRfVar from_stack_1.global_68
  loc_B0334A: LdPrVar
  loc_B0334C: LateMemCall
  loc_B03352: LitStr "     Desde: <span class=""Normal"">"
  loc_B03355: FLdPr Me
  loc_B03358: VCallAd Control_ID_DesdeMsk
  loc_B0335B: FStAdFunc var_114
  loc_B0335E: FLdPr var_114
  loc_B03361: LateIdLdVar var_BC DispID_15 0
  loc_B03368: CStrVarTmp
  loc_B03369: FStStrNoPop var_A8
  loc_B0336C: ConcatStr
  loc_B0336D: FStStrNoPop var_AC
  loc_B03370: LitStr "</span><br>"
  loc_B03373: ConcatStr
  loc_B03374: CVarStr var_D0
  loc_B03377: PopAdLdVar
  loc_B03378: FLdPr Me
  loc_B0337B: MemLdRfVar from_stack_1.global_68
  loc_B0337E: LdPrVar
  loc_B03380: LateMemCall
  loc_B03386: FFreeStr var_A8 = ""
  loc_B0338D: FFree1Ad var_114
  loc_B03390: FFreeVar var_BC = ""
  loc_B03397: LitStr "     Hasta: <span class=""Normal"">"
  loc_B0339A: FLdPr Me
  loc_B0339D: VCallAd Control_ID_HastaMsk
  loc_B033A0: FStAdFunc var_114
  loc_B033A3: FLdPr var_114
  loc_B033A6: LateIdLdVar var_BC DispID_15 0
  loc_B033AD: CStrVarTmp
  loc_B033AE: FStStrNoPop var_A8
  loc_B033B1: ConcatStr
  loc_B033B2: FStStrNoPop var_AC
  loc_B033B5: LitStr "</span>"
  loc_B033B8: ConcatStr
  loc_B033B9: CVarStr var_D0
  loc_B033BC: PopAdLdVar
  loc_B033BD: FLdPr Me
  loc_B033C0: MemLdRfVar from_stack_1.global_68
  loc_B033C3: LdPrVar
  loc_B033C5: LateMemCall
  loc_B033CB: FFreeStr var_A8 = ""
  loc_B033D2: FFree1Ad var_114
  loc_B033D5: FFreeVar var_BC = ""
  loc_B033DC: LitVarStr var_94, "    </th>"
  loc_B033E1: PopAdLdVar
  loc_B033E2: FLdPr Me
  loc_B033E5: MemLdRfVar from_stack_1.global_68
  loc_B033E8: LdPrVar
  loc_B033EA: LateMemCall
  loc_B033F0: LitVarStr var_94, "  </tr>"
  loc_B033F5: PopAdLdVar
  loc_B033F6: FLdPr Me
  loc_B033F9: MemLdRfVar from_stack_1.global_68
  loc_B033FC: LdPrVar
  loc_B033FE: LateMemCall
  loc_B03404: LitVarStr var_94, "</table>"
  loc_B03409: PopAdLdVar
  loc_B0340A: FLdPr Me
  loc_B0340D: MemLdRfVar from_stack_1.global_68
  loc_B03410: LdPrVar
  loc_B03412: LateMemCall
  loc_B03418: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B0341D: PopAdLdVar
  loc_B0341E: FLdPr Me
  loc_B03421: MemLdRfVar from_stack_1.global_68
  loc_B03424: LdPrVar
  loc_B03426: LateMemCall
  loc_B0342C: LitVarStr var_94, "  <THEAD>"
  loc_B03431: PopAdLdVar
  loc_B03432: FLdPr Me
  loc_B03435: MemLdRfVar from_stack_1.global_68
  loc_B03438: LdPrVar
  loc_B0343A: LateMemCall
  loc_B03440: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B03445: PopAdLdVar
  loc_B03446: FLdPr Me
  loc_B03449: MemLdRfVar from_stack_1.global_68
  loc_B0344C: LdPrVar
  loc_B0344E: LateMemCall
  loc_B03454: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_B03459: PopAdLdVar
  loc_B0345A: FLdPr Me
  loc_B0345D: MemLdRfVar from_stack_1.global_68
  loc_B03460: LdPrVar
  loc_B03462: LateMemCall
  loc_B03468: LitVarStr var_94, "    <th colspan=""2"">Factura</th>"
  loc_B0346D: PopAdLdVar
  loc_B0346E: FLdPr Me
  loc_B03471: MemLdRfVar from_stack_1.global_68
  loc_B03474: LdPrVar
  loc_B03476: LateMemCall
  loc_B0347C: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_B03481: PopAdLdVar
  loc_B03482: FLdPr Me
  loc_B03485: MemLdRfVar from_stack_1.global_68
  loc_B03488: LdPrVar
  loc_B0348A: LateMemCall
  loc_B03490: LitVarStr var_94, "    <th rowspan=""2"">Liq.</th>"
  loc_B03495: PopAdLdVar
  loc_B03496: FLdPr Me
  loc_B03499: MemLdRfVar from_stack_1.global_68
  loc_B0349C: LdPrVar
  loc_B0349E: LateMemCall
  loc_B034A4: LitVarStr var_94, "    <th rowspan=""2"">Detalle del Devengado</th>"
  loc_B034A9: PopAdLdVar
  loc_B034AA: FLdPr Me
  loc_B034AD: MemLdRfVar from_stack_1.global_68
  loc_B034B0: LdPrVar
  loc_B034B2: LateMemCall
  loc_B034B8: LitVarStr var_94, "    <th rowspan=""2"">Saldo del Devengado</th>"
  loc_B034BD: PopAdLdVar
  loc_B034BE: FLdPr Me
  loc_B034C1: MemLdRfVar from_stack_1.global_68
  loc_B034C4: LdPrVar
  loc_B034C6: LateMemCall
  loc_B034CC: LitVarStr var_94, "    <th rowspan=""2"">Total por<br>Proveedor</th>"
  loc_B034D1: PopAdLdVar
  loc_B034D2: FLdPr Me
  loc_B034D5: MemLdRfVar from_stack_1.global_68
  loc_B034D8: LdPrVar
  loc_B034DA: LateMemCall
  loc_B034E0: LitVarStr var_94, "  </tr>"
  loc_B034E5: PopAdLdVar
  loc_B034E6: FLdPr Me
  loc_B034E9: MemLdRfVar from_stack_1.global_68
  loc_B034EC: LdPrVar
  loc_B034EE: LateMemCall
  loc_B034F4: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B034F9: PopAdLdVar
  loc_B034FA: FLdPr Me
  loc_B034FD: MemLdRfVar from_stack_1.global_68
  loc_B03500: LdPrVar
  loc_B03502: LateMemCall
  loc_B03508: LitVarStr var_94, "    <th>Tipo y Nº</th>"
  loc_B0350D: PopAdLdVar
  loc_B0350E: FLdPr Me
  loc_B03511: MemLdRfVar from_stack_1.global_68
  loc_B03514: LdPrVar
  loc_B03516: LateMemCall
  loc_B0351C: LitVarStr var_94, "    <th>Fecha</th>"
  loc_B03521: PopAdLdVar
  loc_B03522: FLdPr Me
  loc_B03525: MemLdRfVar from_stack_1.global_68
  loc_B03528: LdPrVar
  loc_B0352A: LateMemCall
  loc_B03530: LitVarStr var_94, "  </tr>"
  loc_B03535: PopAdLdVar
  loc_B03536: FLdPr Me
  loc_B03539: MemLdRfVar from_stack_1.global_68
  loc_B0353C: LdPrVar
  loc_B0353E: LateMemCall
  loc_B03544: LitVarStr var_94, "  </THEAD>"
  loc_B03549: PopAdLdVar
  loc_B0354A: FLdPr Me
  loc_B0354D: MemLdRfVar from_stack_1.global_68
  loc_B03550: LdPrVar
  loc_B03552: LateMemCall
  loc_B03558: ExitProcHresult
End Function

Private Function Proc_182_28_9823F0() '9823F0
  'Data Table: 488378
  loc_9823B0: LitVarStr var_94, "</table>"
  loc_9823B5: PopAdLdVar
  loc_9823B6: FLdPr Me
  loc_9823B9: MemLdRfVar from_stack_1.global_68
  loc_9823BC: LdPrVar
  loc_9823BE: LateMemCall
  loc_9823C4: LitVarStr var_94, "</body>"
  loc_9823C9: PopAdLdVar
  loc_9823CA: FLdPr Me
  loc_9823CD: MemLdRfVar from_stack_1.global_68
  loc_9823D0: LdPrVar
  loc_9823D2: LateMemCall
  loc_9823D8: LitVarStr var_94, "</html>"
  loc_9823DD: PopAdLdVar
  loc_9823DE: FLdPr Me
  loc_9823E1: MemLdRfVar from_stack_1.global_68
  loc_9823E4: LdPrVar
  loc_9823E6: LateMemCall
  loc_9823EC: ExitProcHresult
  loc_9823EF: UMiR8
End Function
