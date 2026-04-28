VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA5017AnexoII
  Caption = "Acuerdo 5017 - Anexo II"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA5017AnexoII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7845
  ClientHeight = 3735
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 7845
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptA5017AnexoII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 720
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptA5017AnexoII.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA5017AnexoII.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2280
    Width = 4455
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2280
    Width = 3015
    Height = 1095
    TabIndex = 10
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
    Left = -360
    Top = 0
    Width = 6855
    Height = 2175
    TabIndex = 0
    Begin VB.TextBox ObservacionesTxt
      Left = 1845
      Top = 1200
      Width = 4695
      Height = 645
      TabIndex = 7
      ScrollBars = 2
      MaxLength = 80
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4080
      Top = 360
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
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 720
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label3
      Caption = "Observaciones:"
      Left = 600
      Top = 1200
      Width = 1110
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 1335
      Top = 720
      Width = 345
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
    Left = 6960
    Top = 840
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptA5017AnexoII.frx":0C00
  End
End

Attribute VB_Name = "rptA5017AnexoII"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub cmdPdf_Click() '959170
  'Data Table: 468390
  loc_959158: LitI2_Byte 0
  loc_95915A: ILdRf Me
  loc_95915D: CastAd
  loc_959160: FStAdFunc var_88
  loc_959163: FLdRfVar var_88
  loc_959166: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95916B: FFree1Ad var_88
  loc_95916E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A784
  'Data Table: 468390
  loc_98A74C: FLdPr Me
  loc_98A74F: VCallAd Control_ID_statusBar
  loc_98A752: FStAdFunc var_88
  loc_98A755: FLdPr var_88
  loc_98A758: LateIdLdVar var_98 DispID_1 0
  loc_98A75F: CStrVarTmp
  loc_98A760: CVarStr var_A8
  loc_98A763: PopAdLdVar
  loc_98A764: FLdPr Me
  loc_98A767: VCallAd Control_ID_statusBar
  loc_98A76A: FStAdFunc var_BC
  loc_98A76D: FLdPr var_BC
  loc_98A770: LateIdSt
  loc_98A775: FFreeAd var_88 = ""
  loc_98A77C: FFreeVar var_98 = ""
  loc_98A783: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AECF0
  'Data Table: 468390
  loc_9AEC54: LitI2_Byte 0
  loc_9AEC56: FLdPr Me
  loc_9AEC59: MemStI2 bGenerado
  loc_9AEC5C: LitI2_Byte &HFF
  loc_9AEC5E: FLdPr Me
  loc_9AEC61: MemStI2 bLogos
  loc_9AEC64: ImpAdLdI2 MemVar_C3D064
  loc_9AEC67: CStrUI1
  loc_9AEC69: FStStrNoPop var_88
  loc_9AEC6C: FLdPr Me
  loc_9AEC6F: VCallAd Control_ID_cboPeriodo
  loc_9AEC72: FStAdFunc var_8C
  loc_9AEC75: FLdPr var_8C
  loc_9AEC78: Me.Text = from_stack_1
  loc_9AEC7D: FFree1Str var_88
  loc_9AEC80: FFree1Ad var_8C
  loc_9AEC83: FLdRfVar var_9C
  loc_9AEC86: ImpAdCallFPR4  = Date
  loc_9AEC8B: FLdRfVar var_9C
  loc_9AEC8E: FLdRfVar var_AC
  loc_9AEC91: ImpAdCallFPR4  = Month()
  loc_9AEC96: FLdRfVar var_AC
  loc_9AEC99: LitVarI2 var_BC, 1
  loc_9AEC9E: SubVar var_CC
  loc_9AECA2: CI2Var
  loc_9AECA3: FLdPr Me
  loc_9AECA6: VCallAd Control_ID_cboMes
  loc_9AECA9: FStAdFunc var_8C
  loc_9AECAC: FLdPr var_8C
  loc_9AECAF: Me.ListIndex = from_stack_1
  loc_9AECB4: FFree1Ad var_8C
  loc_9AECB7: FFreeVar var_9C = ""
  loc_9AECBE: LitStr vbNullString
  loc_9AECC1: FLdPr Me
  loc_9AECC4: VCallAd Control_ID_ObservacionesTxt
  loc_9AECC7: FStAdFunc var_8C
  loc_9AECCA: FLdPr var_8C
  loc_9AECCD: Me.Text = from_stack_1
  loc_9AECD2: FFree1Ad var_8C
  loc_9AECD5: Call HabilitarCriterio()
  loc_9AECDA: ILdRf Me
  loc_9AECDD: CastAd
  loc_9AECE0: FStAdFunc var_8C
  loc_9AECE3: FLdRfVar var_8C
  loc_9AECE6: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AECEB: FFree1Ad var_8C
  loc_9AECEE: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BF7C
  'Data Table: 468390
  loc_97BF4C: LitVarStr var_94, "Cerrando..."
  loc_97BF51: PopAdLdVar
  loc_97BF52: FLdPr Me
  loc_97BF55: VCallAd Control_ID_statusBar
  loc_97BF58: FStAdFunc var_A8
  loc_97BF5B: FLdPr var_A8
  loc_97BF5E: LateIdSt
  loc_97BF63: FFree1Ad var_A8
  loc_97BF66: ILdRf Me
  loc_97BF69: FStAdNoPop
  loc_97BF6D: ImpAdLdRf MemVar_C44F9C
  loc_97BF70: NewIfNullPr Me
  loc_97BF73: Me.Global.Unload from_stack_1
  loc_97BF78: FFree1Ad var_A8
  loc_97BF7B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '958CFC
  'Data Table: 468390
  loc_958CE4: ILdRf Me
  loc_958CE7: CastAd
  loc_958CEA: FStAdFunc var_88
  loc_958CED: FLdRfVar var_88
  loc_958CF0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_958CF5: FFree1Ad var_88
  loc_958CF8: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '964344
  'Data Table: 468390
  loc_96432C: ILdRf Me
  loc_96432F: CastAd
  loc_964332: FStAdFunc var_88
  loc_964335: FLdRfVar var_88
  loc_964338: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96433D: FFree1Ad var_88
  loc_964340: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96932C
  'Data Table: 468390
  loc_969310: LitI2_Byte &HFF
  loc_969312: LitI2_Byte 0
  loc_969314: ILdRf Me
  loc_969317: CastAd
  loc_96931A: FStAdFunc var_88
  loc_96931D: FLdRfVar var_88
  loc_969320: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969325: FFree1Ad var_88
  loc_969328: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '959040
  'Data Table: 468390
  loc_959028: ILdRf Me
  loc_95902B: CastAd
  loc_95902E: FStAdFunc var_88
  loc_959031: FLdRfVar var_88
  loc_959034: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_959039: FFree1Ad var_88
  loc_95903C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A17018
  'Data Table: 468390
  loc_A16EA0: LitVar_TRUE var_DC
  loc_A16EA3: LitVar_FALSE
  loc_A16EA7: LitStr "Municipalidad de Guaymallén"
  loc_A16EAA: LitStr "Municipalidad de Malargüe"
  loc_A16EAD: EqStr
  loc_A16EAF: CVarBoolI2 var_9C
  loc_A16EB3: FLdRfVar var_EC
  loc_A16EB6: ImpAdCallFPR4  = IIf(, , )
  loc_A16EBB: FLdRfVar var_EC
  loc_A16EBE: CBoolVar
  loc_A16EC0: ImpAdStI2 MemVar_C3D840
  loc_A16EC3: FFreeVar var_9C = "": var_BC = "": var_DC = ""
  loc_A16ECE: ILdRf Me
  loc_A16ED1: CastAd
  loc_A16ED4: FStAdFunc var_F0
  loc_A16ED7: FLdRfVar var_F0
  loc_A16EDA: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A16EDF: FFree1Ad var_F0
  loc_A16EE2: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A16EE5: FLdRfVar var_88
  loc_A16EE8: NewIfNullPr clsperiodo
  loc_A16EEB: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A16EF0: FLdRfVar var_F4
  loc_A16EF3: FLdRfVar var_88
  loc_A16EF6: NewIfNullPr clsperiodo
  loc_A16EF9: from_stack_1 = clsperiodo.RecordCount
  loc_A16EFE: ILdRf var_F4
  loc_A16F01: LitI4 0
  loc_A16F06: GtI4
  loc_A16F07: BranchF loc_A16F9A
  loc_A16F0A: FLdRfVar var_88
  loc_A16F0D: NewIfNullPr clsperiodo
  loc_A16F10: Call clsperiodo.MoveFirst()
  loc_A16F15: FLdRfVar var_F6
  loc_A16F18: FLdRfVar var_88
  loc_A16F1B: NewIfNullPr clsperiodo
  loc_A16F1E: from_stack_1 = clsperiodo.EOF
  loc_A16F23: FLdI2 var_F6
  loc_A16F26: NotI4
  loc_A16F27: BranchF loc_A16F9A
  loc_A16F2A: LitVar_Missing var_AC
  loc_A16F2D: PopAdLdVar
  loc_A16F2E: FLdRfVar var_BC
  loc_A16F31: FLdRfVar var_100
  loc_A16F34: LitVarStr var_9C, "PeriInfo"
  loc_A16F39: PopAdLdVar
  loc_A16F3A: FLdRfVar var_FC
  loc_A16F3D: FLdRfVar var_F0
  loc_A16F40: FLdRfVar var_88
  loc_A16F43: NewIfNullPr clsperiodo
  loc_A16F46: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A16F4B: FLdPr var_F0
  loc_A16F4E:  = Me.Fields
  loc_A16F53: FLdPr var_FC
  loc_A16F56: from_stack_2 = Me.Item(from_stack_1)
  loc_A16F5B: FLdPr var_100
  loc_A16F5E:  = Me.Value
  loc_A16F63: FLdRfVar var_BC
  loc_A16F66: CStrVarTmp
  loc_A16F67: FStStrNoPop var_104
  loc_A16F6A: FLdPr Me
  loc_A16F6D: VCallAd Control_ID_cboPeriodo
  loc_A16F70: FStAdFunc var_108
  loc_A16F73: FLdPr var_108
  loc_A16F76: Me.AddItem from_stack_1, from_stack_2
  loc_A16F7B: FFree1Str var_104
  loc_A16F7E: FFreeAd var_F0 = "": var_FC = "": var_100 = ""
  loc_A16F89: FFree1Var var_BC = ""
  loc_A16F8C: FLdRfVar var_88
  loc_A16F8F: NewIfNullPr clsperiodo
  loc_A16F92: Call clsperiodo.MoveSiguiente()
  loc_A16F97: Branch loc_A16F15
  loc_A16F9A: LitI2_Byte 1
  loc_A16F9C: CUI1I2
  loc_A16F9E: FLdRfVar var_8A
  loc_A16FA1: LitI2_Byte &HC
  loc_A16FA3: CUI1I2
  loc_A16FA5: ForUI1 var_10C
  loc_A16FAB: LitVar_Missing var_9C
  loc_A16FAE: PopAdLdVar
  loc_A16FAF: LitI2_Byte 0
  loc_A16FB1: FLdUI1
  loc_A16FB5: CI4UI1
  loc_A16FB6: ImpAdCallI2 MonthName(, )
  loc_A16FBB: FStStrNoPop var_104
  loc_A16FBE: FLdPr Me
  loc_A16FC1: VCallAd Control_ID_cboMes
  loc_A16FC4: FStAdFunc var_F0
  loc_A16FC7: FLdPr var_F0
  loc_A16FCA: Me.AddItem from_stack_1, from_stack_2
  loc_A16FCF: FFree1Str var_104
  loc_A16FD2: FFree1Ad var_F0
  loc_A16FD5: FLdUI1
  loc_A16FD9: CI4UI1
  loc_A16FDA: FLdRfVar var_F6
  loc_A16FDD: FLdPr Me
  loc_A16FE0: VCallAd Control_ID_cboMes
  loc_A16FE3: FStAdFunc var_F0
  loc_A16FE6: FLdPr var_F0
  loc_A16FE9:  = Me.NewIndex
  loc_A16FEE: FLdI2 var_F6
  loc_A16FF1: FLdPr Me
  loc_A16FF4: VCallAd Control_ID_cboMes
  loc_A16FF7: FStAdFunc var_FC
  loc_A16FFA: FLdPr var_FC
  loc_A16FFD: Me.ItemData = from_stack_1
  loc_A17002: FFreeAd var_F0 = ""
  loc_A17009: FLdRfVar var_8A
  loc_A1700C: NextUI1
  loc_A17012: Call cmdNueva_Click()
  loc_A17017: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A12C
  'Data Table: 468390
  loc_95A114: FLdPr Me
  loc_95A117: VCallAd Control_ID_wbbReporte
  loc_95A11A: FStAdFunc var_88
  loc_95A11D: FLdRfVar var_88
  loc_95A120: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A125: FFree1Ad var_88
  loc_95A128: ExitProcHresult
End Sub

Public Function htmFileGet() '469188
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '469197
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4691A6
  htmFile = Value
End Sub

Public Function bLogosGet() '4691B5
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4691C4
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4691D3
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4691E2
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9964A8
  'Data Table: 468390
  loc_996454: LitI4 0
  loc_996459: LitI4 2
  loc_99645E: FLdRfVar var_88
  loc_996461: Redim
  loc_99646B: FLdPr Me
  loc_99646E: VCallAd Control_ID_cboPeriodo
  loc_996471: CVarAd
  loc_996475: ParmAry1St
  loc_99647B: FLdPr Me
  loc_99647E: VCallAd Control_ID_cboMes
  loc_996481: CVarAd
  loc_996485: ParmAry1St
  loc_99648B: FLdPr Me
  loc_99648E: VCallAd Control_ID_ObservacionesTxt
  loc_996491: CVarAd
  loc_996495: ParmAry1St
  loc_99649B: FLdRfVar var_88
  loc_99649E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9964A3: FLdRfVar var_88
  loc_9964A6: Erase
  loc_9964A7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1AF68
  'Data Table: 468390
  loc_B1A6E0: FLdPr Me
  loc_B1A6E3: MemLdI2 bGenerado
  loc_B1A6E6: BranchF loc_B1A6EA
  loc_B1A6E9: ExitProcHresult
  loc_B1A6EA: LitVarStr var_94, "Generando reporte..."
  loc_B1A6EF: PopAdLdVar
  loc_B1A6F0: FLdPr Me
  loc_B1A6F3: VCallAd Control_ID_statusBar
  loc_B1A6F6: FStAdFunc var_A8
  loc_B1A6F9: FLdPr var_A8
  loc_B1A6FC: LateIdSt
  loc_B1A701: FFree1Ad var_A8
  loc_B1A704: LitI4 &HB
  loc_B1A709: CI2I4
  loc_B1A70A: FLdPr Me
  loc_B1A70D: Me.MousePointer = from_stack_1
  loc_B1A712: FLdRfVar var_AC
  loc_B1A715: FLdPr Me
  loc_B1A718: VCallAd Control_ID_cboPeriodo
  loc_B1A71B: FStAdFunc var_A8
  loc_B1A71E: FLdPr var_A8
  loc_B1A721:  = Me.Text
  loc_B1A726: FLdRfVar var_B4
  loc_B1A729: FLdPr Me
  loc_B1A72C: VCallAd Control_ID_cboPeriodo
  loc_B1A72F: FStAdFunc var_B0
  loc_B1A732: FLdPr var_B0
  loc_B1A735:  = Me.Text
  loc_B1A73A: FLdRfVar var_BA
  loc_B1A73D: FLdPr Me
  loc_B1A740: VCallAd Control_ID_cboMes
  loc_B1A743: FStAdFunc var_B8
  loc_B1A746: FLdPr var_B8
  loc_B1A749:  = Me.ListIndex
  loc_B1A74E: FLdRfVar var_C4
  loc_B1A751: FLdI2 var_BA
  loc_B1A754: FLdPr Me
  loc_B1A757: VCallAd Control_ID_cboMes
  loc_B1A75A: FStAdFunc var_C0
  loc_B1A75D: FLdPr var_C0
  loc_B1A760:  = Me.ItemData
  loc_B1A765: LitI2_Byte 1
  loc_B1A767: ILdRf var_C4
  loc_B1A76A: CI2I4
  loc_B1A76B: ILdRf var_B4
  loc_B1A76E: CI2Str
  loc_B1A770: FLdRfVar var_D4
  loc_B1A773: ImpAdCallFPR4  = DateSerial(, , )
  loc_B1A778: FLdRfVar var_D4
  loc_B1A77B: LitVarI2 var_94, 1
  loc_B1A780: SubVar var_E4
  loc_B1A784: CStrVarTmp
  loc_B1A785: PopTmpLdAdStr
  loc_B1A789: FLdPr Me
  loc_B1A78C: MemLdRfVar from_stack_1.global_76
  loc_B1A78F: NewIfNullRf
  loc_B1A793: LitI2_Byte &H16
  loc_B1A795: CStrI2
  loc_B1A797: FStStrNoPop var_E8
  loc_B1A79A: ILdRf var_AC
  loc_B1A79D: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_B1A7A2: FFreeStr var_B4 = "": var_AC = "": var_E8 = ""
  loc_B1A7AD: FFreeAd var_A8 = "": var_B0 = "": var_B8 = ""
  loc_B1A7B8: FFree1Var var_D4 = ""
  loc_B1A7BB: BranchF loc_B1AF25
  loc_B1A7BE: LitI2_Byte 0
  loc_B1A7C0: LitVar_Missing var_D4
  loc_B1A7C3: LitI2_Byte &HFF
  loc_B1A7C5: LitVarI2 var_94, 0
  loc_B1A7CA: PopAdLdVar
  loc_B1A7CB: FLdPr Me
  loc_B1A7CE: MemLdRfVar from_stack_1.global_96
  loc_B1A7D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A7D6: FFree1Var var_D4 = ""
  loc_B1A7D9: LitI2_Byte 0
  loc_B1A7DB: LitVar_Missing var_D4
  loc_B1A7DE: LitI2_Byte &HFF
  loc_B1A7E0: LitVarI2 var_94, 0
  loc_B1A7E5: PopAdLdVar
  loc_B1A7E6: FLdPr Me
  loc_B1A7E9: MemLdRfVar from_stack_1.global_100
  loc_B1A7EC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A7F1: FFree1Var var_D4 = ""
  loc_B1A7F4: LitI2_Byte 0
  loc_B1A7F6: LitVar_Missing var_D4
  loc_B1A7F9: LitI2_Byte &HFF
  loc_B1A7FB: LitVarI2 var_94, 0
  loc_B1A800: PopAdLdVar
  loc_B1A801: FLdPr Me
  loc_B1A804: MemLdRfVar from_stack_1.global_104
  loc_B1A807: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A80C: FFree1Var var_D4 = ""
  loc_B1A80F: LitI2_Byte 0
  loc_B1A811: LitVar_Missing var_D4
  loc_B1A814: LitI2_Byte &HFF
  loc_B1A816: LitVarI2 var_94, 0
  loc_B1A81B: PopAdLdVar
  loc_B1A81C: FLdPr Me
  loc_B1A81F: MemLdRfVar from_stack_1.global_108
  loc_B1A822: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A827: FFree1Var var_D4 = ""
  loc_B1A82A: LitI2_Byte 0
  loc_B1A82C: LitVar_Missing var_D4
  loc_B1A82F: LitI2_Byte &HFF
  loc_B1A831: LitVarI2 var_94, 0
  loc_B1A836: PopAdLdVar
  loc_B1A837: FLdPr Me
  loc_B1A83A: MemLdRfVar from_stack_1.global_112
  loc_B1A83D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A842: FFree1Var var_D4 = ""
  loc_B1A845: LitI2_Byte 0
  loc_B1A847: LitVar_Missing var_D4
  loc_B1A84A: LitI2_Byte &HFF
  loc_B1A84C: LitVarI2 var_94, 0
  loc_B1A851: PopAdLdVar
  loc_B1A852: FLdPr Me
  loc_B1A855: MemLdRfVar from_stack_1.global_116
  loc_B1A858: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A85D: FFree1Var var_D4 = ""
  loc_B1A860: FLdRfVar var_AC
  loc_B1A863: FLdPr Me
  loc_B1A866: MemLdRfVar from_stack_1.global_76
  loc_B1A869: NewIfNullPr tblbanco
  loc_B1A86C: from_stack_1v = tblbanco.DetaBancGet()
  loc_B1A871: LitI2_Byte 0
  loc_B1A873: LitVar_Missing var_E4
  loc_B1A876: LitI2_Byte 0
  loc_B1A878: FLdZeroAd var_AC
  loc_B1A87B: CVarStr var_D4
  loc_B1A87E: PopAdLdVar
  loc_B1A87F: FLdPr Me
  loc_B1A882: MemLdRfVar from_stack_1.global_84
  loc_B1A885: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A88A: FFreeVar var_D4 = ""
  loc_B1A891: FLdRfVar var_AC
  loc_B1A894: FLdPr Me
  loc_B1A897: MemLdRfVar from_stack_1.global_76
  loc_B1A89A: NewIfNullPr tblbanco
  loc_B1A89D: from_stack_1v = tblbanco.SaldAlIniGet()
  loc_B1A8A2: LitI2_Byte 0
  loc_B1A8A4: FLdPr Me
  loc_B1A8A7: MemLdRfVar from_stack_1.global_96
  loc_B1A8AA: CVarRef
  loc_B1A8AF: LitI2_Byte &HFF
  loc_B1A8B1: FLdZeroAd var_AC
  loc_B1A8B4: CVarStr var_D4
  loc_B1A8B7: PopAdLdVar
  loc_B1A8B8: FLdPr Me
  loc_B1A8BB: MemLdRfVar from_stack_1.global_88
  loc_B1A8BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A8C3: FFree1Var var_D4 = ""
  loc_B1A8C6: FLdPr Me
  loc_B1A8C9: MemLdRfVar from_stack_1.global_72
  loc_B1A8CC: NewIfNullAd
  loc_B1A8CF: FStAd var_F0 
  loc_B1A8D3: LitStr "SET @PeriInfo="
  loc_B1A8D6: FLdRfVar var_AC
  loc_B1A8D9: FLdPr Me
  loc_B1A8DC: VCallAd Control_ID_cboPeriodo
  loc_B1A8DF: FStAdFunc var_A8
  loc_B1A8E2: FLdPr var_A8
  loc_B1A8E5:  = Me.Text
  loc_B1A8EA: ILdRf var_AC
  loc_B1A8ED: ConcatStr
  loc_B1A8EE: FStStrNoPop var_B4
  loc_B1A8F1: LitStr ", @Mes="
  loc_B1A8F4: ConcatStr
  loc_B1A8F5: FStStrNoPop var_E8
  loc_B1A8F8: FLdRfVar var_C4
  loc_B1A8FB: FLdRfVar var_BA
  loc_B1A8FE: FLdPr Me
  loc_B1A901: VCallAd Control_ID_cboMes
  loc_B1A904: FStAdFunc var_B0
  loc_B1A907: FLdPr var_B0
  loc_B1A90A:  = Me.ListIndex
  loc_B1A90F: FLdI2 var_BA
  loc_B1A912: FLdPr Me
  loc_B1A915: VCallAd Control_ID_cboMes
  loc_B1A918: FStAdFunc var_B8
  loc_B1A91B: FLdPr var_B8
  loc_B1A91E:  = Me.ItemData
  loc_B1A923: ILdRf var_C4
  loc_B1A926: CStrI4
  loc_B1A928: FStStrNoPop var_EC
  loc_B1A92B: ConcatStr
  loc_B1A92C: FStStrNoPop var_F4
  loc_B1A92F: LitStr ", @CodiBanc="
  loc_B1A932: ConcatStr
  loc_B1A933: FStStrNoPop var_F8
  loc_B1A936: LitI2_Byte &H16
  loc_B1A938: CStrI2
  loc_B1A93A: FStStrNoPop var_FC
  loc_B1A93D: ConcatStr
  loc_B1A93E: FStStrNoPop var_100
  loc_B1A941: LitStr ";"
  loc_B1A944: ConcatStr
  loc_B1A945: FStStrNoPop var_104
  loc_B1A948: FLdPr var_F0
  loc_B1A94B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1A950: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B1A965: FFreeAd var_A8 = "": var_B0 = ""
  loc_B1A96E: LitStr "SELECT FechIngr, ImpoIngr"
  loc_B1A971: LitStr " FROM ingreso"
  loc_B1A974: ConcatStr
  loc_B1A975: FStStrNoPop var_AC
  loc_B1A978: LitStr " WHERE PeriInfo = @PeriInfo"
  loc_B1A97B: ConcatStr
  loc_B1A97C: FStStrNoPop var_B4
  loc_B1A97F: LitStr " AND Month(FechIngr) = @Mes"
  loc_B1A982: ConcatStr
  loc_B1A983: FStStrNoPop var_E8
  loc_B1A986: LitStr " AND CodiCuco = '"
  loc_B1A989: ConcatStr
  loc_B1A98A: FStStrNoPop var_EC
  loc_B1A98D: LitStr "5112030000"
  loc_B1A990: ConcatStr
  loc_B1A991: FStStrNoPop var_F4
  loc_B1A994: LitStr "'"
  loc_B1A997: ConcatStr
  loc_B1A998: FStStrNoPop var_F8
  loc_B1A99B: LitStr " ORDER BY FechIngr"
  loc_B1A99E: ConcatStr
  loc_B1A99F: FStStrNoPop var_FC
  loc_B1A9A2: FLdPr var_F0
  loc_B1A9A5: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1A9AA: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = ""
  loc_B1A9BB: FLdPr var_F0
  loc_B1A9BE: Call clsbase.MoveFirst()
  loc_B1A9C3: LitI4 0
  loc_B1A9C8: FLdRfVar var_C4
  loc_B1A9CB: FLdPr var_F0
  loc_B1A9CE: from_stack_1 = clsbase.RecordCount
  loc_B1A9D3: ILdRf var_C4
  loc_B1A9D6: FLdPr Me
  loc_B1A9D9: MemLdRfVar from_stack_1.global_92
  loc_B1A9DC: Redim
  loc_B1A9E6: LitI2_Byte 1
  loc_B1A9E8: FLdPr Me
  loc_B1A9EB: MemLdRfVar from_stack_1.global_120
  loc_B1A9EE: FLdPr Me
  loc_B1A9F1: MemLdStr global_92
  loc_B1A9F4: LitI2_Byte 1
  loc_B1A9F6: FnUBound
  loc_B1A9F8: CI2I4
  loc_B1A9F9: ForI2 var_108
  loc_B1A9FF: FLdRfVar var_B8
  loc_B1AA02: LitVarStr var_94, "FechIngr"
  loc_B1AA07: PopAdLdVar
  loc_B1AA08: FLdRfVar var_B0
  loc_B1AA0B: FLdRfVar var_A8
  loc_B1AA0E: FLdPr var_F0
  loc_B1AA11: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AA16: FLdPr var_A8
  loc_B1AA19:  = Me.Fields
  loc_B1AA1E: FLdPr var_B0
  loc_B1AA21: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AA26: LitI2_Byte 0
  loc_B1AA28: LitVar_Missing var_E4
  loc_B1AA2B: LitI2_Byte 0
  loc_B1AA2D: FLdZeroAd var_B8
  loc_B1AA30: CVarAd
  loc_B1AA34: PopAdLdVar
  loc_B1AA35: FLdPr Me
  loc_B1AA38: MemLdI2 global_120
  loc_B1AA3B: CI4UI1
  loc_B1AA3C: FLdPr Me
  loc_B1AA3F: MemLdStr global_92
  loc_B1AA42: AryLock
  loc_B1AA45: Ary1LdPr
  loc_B1AA46: MemLdRfVar from_stack_1.global_0
  loc_B1AA49: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AA4E: AryUnlock
  loc_B1AA51: FFreeAd var_A8 = ""
  loc_B1AA58: FFreeVar var_D4 = ""
  loc_B1AA5F: FLdRfVar var_B8
  loc_B1AA62: LitVarStr var_94, "ImpoIngr"
  loc_B1AA67: PopAdLdVar
  loc_B1AA68: FLdRfVar var_B0
  loc_B1AA6B: FLdRfVar var_A8
  loc_B1AA6E: FLdPr var_F0
  loc_B1AA71: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AA76: FLdPr var_A8
  loc_B1AA79:  = Me.Fields
  loc_B1AA7E: FLdPr var_B0
  loc_B1AA81: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AA86: LitI2_Byte 0
  loc_B1AA88: FLdPr Me
  loc_B1AA8B: MemLdRfVar from_stack_1.global_96
  loc_B1AA8E: CVarRef
  loc_B1AA93: LitI2_Byte &HFF
  loc_B1AA95: FLdZeroAd var_B8
  loc_B1AA98: CVarAd
  loc_B1AA9C: PopAdLdVar
  loc_B1AA9D: FLdPr Me
  loc_B1AAA0: MemLdI2 global_120
  loc_B1AAA3: CI4UI1
  loc_B1AAA4: FLdPr Me
  loc_B1AAA7: MemLdStr global_92
  loc_B1AAAA: AryLock
  loc_B1AAAD: Ary1LdPr
  loc_B1AAAE: MemLdRfVar from_stack_1.global_4
  loc_B1AAB1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AAB6: AryUnlock
  loc_B1AAB9: FFreeAd var_A8 = ""
  loc_B1AAC0: FFree1Var var_D4 = ""
  loc_B1AAC3: LitI2_Byte 1
  loc_B1AAC5: PopTmpLdAd2 var_BA
  loc_B1AAC8: FLdPr var_F0
  loc_B1AACB: Call clsbase.Move(from_stack_1v)
  loc_B1AAD0: FLdPr Me
  loc_B1AAD3: MemLdRfVar from_stack_1.global_120
  loc_B1AAD6: NextI2 var_108, loc_B1A9FF
  loc_B1AADB: LitStr "SELECT mp.PeriInfo, mp.ExpeImpu, mp.NumeLiqu, FearOrpa, mp.CucuPers, DetaProv, FechImpu, TifaDeve, SufaDeve, NufaDeve, Sum(MapaImpu) MapaImpu, mp.CodiPart, DetaPart"
  loc_B1AADE: LitStr " FROM mandadopagar mp"
  loc_B1AAE1: ConcatStr
  loc_B1AAE2: FStStrNoPop var_AC
  loc_B1AAE5: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = mp.PeriInfo AND imputacion.CodiPart = mp.CodiPart AND imputacion.CodiOrga = mp.CodiOrga AND imputacion.NumeImpu = mp.NumeImpu"
  loc_B1AAE8: ConcatStr
  loc_B1AAE9: FStStrNoPop var_B4
  loc_B1AAEC: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = mp.PeriInfo AND ordenpago.NumeOrpa = mp.NumeOrpa"
  loc_B1AAEF: ConcatStr
  loc_B1AAF0: FStStrNoPop var_E8
  loc_B1AAF3: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = mp.CucuPers"
  loc_B1AAF6: ConcatStr
  loc_B1AAF7: FStStrNoPop var_EC
  loc_B1AAFA: LitStr " INNER JOIN partida ON partida.PeriInfo = mp.PeriInfo AND partida.CodiPart = mp.CodiPart"
  loc_B1AAFD: ConcatStr
  loc_B1AAFE: FStStrNoPop var_F4
  loc_B1AB01: LitStr " WHERE mp.PeriInfo = @PeriInfo"
  loc_B1AB04: ConcatStr
  loc_B1AB05: FStStrNoPop var_F8
  loc_B1AB08: LitStr " AND (mp.CodiPart = '51800000' OR mp.CodiPart = '51900000')"
  loc_B1AB0B: ConcatStr
  loc_B1AB0C: FStStrNoPop var_FC
  loc_B1AB0F: LitStr " AND Month(FechImpu) = @Mes"
  loc_B1AB12: ConcatStr
  loc_B1AB13: FStStrNoPop var_100
  loc_B1AB16: LitStr " GROUP BY PeriInfo;"
  loc_B1AB19: ConcatStr
  loc_B1AB1A: FStStrNoPop var_104
  loc_B1AB1D: FLdPr var_F0
  loc_B1AB20: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AB25: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B1AB3A: FLdRfVar var_C4
  loc_B1AB3D: FLdPr var_F0
  loc_B1AB40: from_stack_1 = clsbase.RecordCount
  loc_B1AB45: FLdRfVar var_B8
  loc_B1AB48: LitVarStr var_94, "MapaImpu"
  loc_B1AB4D: PopAdLdVar
  loc_B1AB4E: FLdRfVar var_B0
  loc_B1AB51: FLdRfVar var_A8
  loc_B1AB54: FLdPr var_F0
  loc_B1AB57: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AB5C: FLdPr var_A8
  loc_B1AB5F:  = Me.Fields
  loc_B1AB64: FLdPr var_B0
  loc_B1AB67: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AB6C: FLdZeroAd var_B8
  loc_B1AB6F: CVarAd
  loc_B1AB73: LitVarI2 var_D4, 0
  loc_B1AB78: ILdRf var_C4
  loc_B1AB7B: LitI4 0
  loc_B1AB80: EqI4
  loc_B1AB81: CVarBoolI2 var_A4
  loc_B1AB85: FLdRfVar var_12C
  loc_B1AB88: ImpAdCallFPR4  = IIf(, , )
  loc_B1AB8D: LitI2_Byte 0
  loc_B1AB8F: FLdPr Me
  loc_B1AB92: MemLdRfVar from_stack_1.global_116
  loc_B1AB95: CVarRef
  loc_B1AB9A: LitI2_Byte &HFF
  loc_B1AB9C: FLdVar var_12C
  loc_B1ABA0: FLdPr Me
  loc_B1ABA3: MemLdRfVar from_stack_1.global_100
  loc_B1ABA6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1ABAB: FFreeAd var_A8 = ""
  loc_B1ABB2: FFreeVar var_A4 = "": var_D4 = "": var_E4 = ""
  loc_B1ABBD: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B1ABC0: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B1ABC3: ConcatStr
  loc_B1ABC4: FStStrNoPop var_AC
  loc_B1ABC7: LitStr " SELECT cheque.PeriInfo, cheque.NumeOrpa, cheque.CucuPers, cheque.ExpeImpu, cheque.NumeLiqu/*, FearOrpa, Sum(ImpoCheq) ImpoCheq*/"
  loc_B1ABCA: ConcatStr
  loc_B1ABCB: FStStrNoPop var_B4
  loc_B1ABCE: LitStr " FROM cheque"
  loc_B1ABD1: ConcatStr
  loc_B1ABD2: FStStrNoPop var_E8
  loc_B1ABD5: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = cheque.PeriInfo AND ordenpago.NumeOrpa = cheque.NumeOrpa"
  loc_B1ABD8: ConcatStr
  loc_B1ABD9: FStStrNoPop var_EC
  loc_B1ABDC: LitStr " WHERE cheque.PeriInfo = @PeriInfo AND Month(cheque.FechCheq) = @Mes"
  loc_B1ABDF: ConcatStr
  loc_B1ABE0: FStStrNoPop var_F4
  loc_B1ABE3: LitStr " AND CodiBanc = @CodiBanc"
  loc_B1ABE6: ConcatStr
  loc_B1ABE7: FStStrNoPop var_F8
  loc_B1ABEA: LitStr " AND (FeanCheq IS NULL OR Month(FeanCheq) > @Mes)"
  loc_B1ABED: ConcatStr
  loc_B1ABEE: FStStrNoPop var_FC
  loc_B1ABF1: LitStr " AND (FeanOrpa IS NULL OR Month(FeanOrpa) > @Mes)"
  loc_B1ABF4: ConcatStr
  loc_B1ABF5: FStStrNoPop var_100
  loc_B1ABF8: LitStr " GROUP BY PeriInfo, NumeOrpa, CucuPers;"
  loc_B1ABFB: ConcatStr
  loc_B1ABFC: FStStrNoPop var_104
  loc_B1ABFF: FLdPr var_F0
  loc_B1AC02: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AC07: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B1AC1C: LitStr "SELECT tmovi.PeriInfo, Sum(ImpoLine)*-1 ImpoLine"
  loc_B1AC1F: LitStr " FROM tmovi"
  loc_B1AC22: ConcatStr
  loc_B1AC23: FStStrNoPop var_AC
  loc_B1AC26: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = tmovi.PeriInfo AND ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers AND ln.CodiRete > 0"
  loc_B1AC29: ConcatStr
  loc_B1AC2A: FStStrNoPop var_B4
  loc_B1AC2D: LitStr " GROUP BY PeriInfo"
  loc_B1AC30: ConcatStr
  loc_B1AC31: FStStrNoPop var_E8
  loc_B1AC34: FLdPr var_F0
  loc_B1AC37: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AC3C: FFreeStr var_AC = "": var_B4 = ""
  loc_B1AC45: FLdRfVar var_C4
  loc_B1AC48: FLdPr var_F0
  loc_B1AC4B: from_stack_1 = clsbase.RecordCount
  loc_B1AC50: FLdRfVar var_B8
  loc_B1AC53: LitVarStr var_94, "ImpoLine"
  loc_B1AC58: PopAdLdVar
  loc_B1AC59: FLdRfVar var_B0
  loc_B1AC5C: FLdRfVar var_A8
  loc_B1AC5F: FLdPr var_F0
  loc_B1AC62: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AC67: FLdPr var_A8
  loc_B1AC6A:  = Me.Fields
  loc_B1AC6F: FLdPr var_B0
  loc_B1AC72: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AC77: FLdZeroAd var_B8
  loc_B1AC7A: CVarAd
  loc_B1AC7E: LitVarI2 var_D4, 0
  loc_B1AC83: ILdRf var_C4
  loc_B1AC86: LitI4 0
  loc_B1AC8B: EqI4
  loc_B1AC8C: CVarBoolI2 var_A4
  loc_B1AC90: FLdRfVar var_12C
  loc_B1AC93: ImpAdCallFPR4  = IIf(, , )
  loc_B1AC98: LitI2_Byte 0
  loc_B1AC9A: FLdPr Me
  loc_B1AC9D: MemLdRfVar from_stack_1.global_116
  loc_B1ACA0: CVarRef
  loc_B1ACA5: LitI2_Byte &HFF
  loc_B1ACA7: FLdVar var_12C
  loc_B1ACAB: FLdPr Me
  loc_B1ACAE: MemLdRfVar from_stack_1.global_104
  loc_B1ACB1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1ACB6: FFreeAd var_A8 = ""
  loc_B1ACBD: FFreeVar var_A4 = "": var_D4 = "": var_E4 = ""
  loc_B1ACC8: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B1ACCB: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B1ACCE: ConcatStr
  loc_B1ACCF: FStStrNoPop var_AC
  loc_B1ACD2: LitStr " SELECT cheque.PeriInfo, cheque.NumeOrpa"
  loc_B1ACD5: ConcatStr
  loc_B1ACD6: FStStrNoPop var_B4
  loc_B1ACD9: LitStr " FROM cheque"
  loc_B1ACDC: ConcatStr
  loc_B1ACDD: FStStrNoPop var_E8
  loc_B1ACE0: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cheque.PeriInfo"
  loc_B1ACE3: ConcatStr
  loc_B1ACE4: FStStrNoPop var_EC
  loc_B1ACE7: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = cheque.PeriInfo AND ordenpago.NumeOrpa = cheque.NumeOrpa"
  loc_B1ACEA: ConcatStr
  loc_B1ACEB: FStStrNoPop var_F4
  loc_B1ACEE: LitStr " INNER JOIN debito ON debito.PeriInfo = ordenpago.PeriInfo AND debito.NumeOrpa = ordenpago.NumeOrpa AND debito.CodiCuco <> TranPaco"
  loc_B1ACF1: ConcatStr
  loc_B1ACF2: FStStrNoPop var_F8
  loc_B1ACF5: LitStr " WHERE cheque.PeriInfo = @PeriInfo AND Month(cheque.FechCheq) = @Mes AND CodiBanc = @CodiBanc"
  loc_B1ACF8: ConcatStr
  loc_B1ACF9: FStStrNoPop var_FC
  loc_B1ACFC: LitStr " AND (FeanCheq IS NULL OR Month(FeanCheq) > @Mes) AND (FeanOrpa IS NULL OR Month(FeanOrpa) > @Mes)"
  loc_B1ACFF: ConcatStr
  loc_B1AD00: FStStrNoPop var_100
  loc_B1AD03: LitStr " GROUP BY PeriInfo, NumeOrpa;"
  loc_B1AD06: ConcatStr
  loc_B1AD07: FStStrNoPop var_104
  loc_B1AD0A: FLdPr var_F0
  loc_B1AD0D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AD12: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B1AD27: LitStr "SELECT tmovi.PeriInfo, Sum(ImpoCheq) ImpoCheq"
  loc_B1AD2A: LitStr " FROM tmovi"
  loc_B1AD2D: ConcatStr
  loc_B1AD2E: FStStrNoPop var_AC
  loc_B1AD31: LitStr " INNER JOIN cheque ON cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa"
  loc_B1AD34: ConcatStr
  loc_B1AD35: FStStrNoPop var_B4
  loc_B1AD38: LitStr " AND Month(cheque.FechCheq) = @Mes AND CodiBanc = @CodiBanc"
  loc_B1AD3B: ConcatStr
  loc_B1AD3C: FStStrNoPop var_E8
  loc_B1AD3F: LitStr " AND (FeanCheq IS NULL OR Month(FeanCheq) > @Mes)"
  loc_B1AD42: ConcatStr
  loc_B1AD43: FStStrNoPop var_EC
  loc_B1AD46: LitStr " GROUP BY PeriInfo;"
  loc_B1AD49: ConcatStr
  loc_B1AD4A: FStStrNoPop var_F4
  loc_B1AD4D: FLdPr var_F0
  loc_B1AD50: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AD55: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = ""
  loc_B1AD62: FLdRfVar var_C4
  loc_B1AD65: FLdPr var_F0
  loc_B1AD68: from_stack_1 = clsbase.RecordCount
  loc_B1AD6D: FLdRfVar var_B8
  loc_B1AD70: LitVarStr var_94, "ImpoCheq"
  loc_B1AD75: PopAdLdVar
  loc_B1AD76: FLdRfVar var_B0
  loc_B1AD79: FLdRfVar var_A8
  loc_B1AD7C: FLdPr var_F0
  loc_B1AD7F: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AD84: FLdPr var_A8
  loc_B1AD87:  = Me.Fields
  loc_B1AD8C: FLdPr var_B0
  loc_B1AD8F: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AD94: FLdZeroAd var_B8
  loc_B1AD97: CVarAd
  loc_B1AD9B: LitVarI2 var_D4, 0
  loc_B1ADA0: ILdRf var_C4
  loc_B1ADA3: LitI4 0
  loc_B1ADA8: EqI4
  loc_B1ADA9: CVarBoolI2 var_A4
  loc_B1ADAD: FLdRfVar var_12C
  loc_B1ADB0: ImpAdCallFPR4  = IIf(, , )
  loc_B1ADB5: LitI2_Byte 0
  loc_B1ADB7: FLdPr Me
  loc_B1ADBA: MemLdRfVar from_stack_1.global_116
  loc_B1ADBD: CVarRef
  loc_B1ADC2: LitI2_Byte &HFF
  loc_B1ADC4: FLdVar var_12C
  loc_B1ADC8: FLdPr Me
  loc_B1ADCB: MemLdRfVar from_stack_1.global_108
  loc_B1ADCE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1ADD3: FFreeAd var_A8 = ""
  loc_B1ADDA: FFreeVar var_A4 = "": var_D4 = "": var_E4 = ""
  loc_B1ADE5: LitStr "SELECT IFNULL(Sum(DebeMoba)-Sum(HabeMoba),0) AS Transferencias "
  loc_B1ADE8: LitStr " FROM movibanco"
  loc_B1ADEB: ConcatStr
  loc_B1ADEC: FStStrNoPop var_AC
  loc_B1ADEF: LitStr " WHERE PeriInfo = @PeriInfo"
  loc_B1ADF2: ConcatStr
  loc_B1ADF3: FStStrNoPop var_B4
  loc_B1ADF6: LitStr " AND Month(FechMoba) = @Mes"
  loc_B1ADF9: ConcatStr
  loc_B1ADFA: FStStrNoPop var_E8
  loc_B1ADFD: LitStr " AND CodiBanc = @CodiBanc"
  loc_B1AE00: ConcatStr
  loc_B1AE01: FStStrNoPop var_EC
  loc_B1AE04: LitStr " AND CodiTimb > 6"
  loc_B1AE07: ConcatStr
  loc_B1AE08: FStStrNoPop var_F4
  loc_B1AE0B: LitStr " AND NumeOrpa = 0"
  loc_B1AE0E: ConcatStr
  loc_B1AE0F: FStStrNoPop var_F8
  loc_B1AE12: FLdPr var_F0
  loc_B1AE15: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1AE1A: FFreeStr var_AC = "": var_B4 = "": var_E8 = "": var_EC = "": var_F4 = ""
  loc_B1AE29: FLdRfVar var_C4
  loc_B1AE2C: FLdPr var_F0
  loc_B1AE2F: from_stack_1 = clsbase.RecordCount
  loc_B1AE34: FLdRfVar var_B8
  loc_B1AE37: LitVarStr var_94, "Transferencias"
  loc_B1AE3C: PopAdLdVar
  loc_B1AE3D: FLdRfVar var_B0
  loc_B1AE40: FLdRfVar var_A8
  loc_B1AE43: FLdPr var_F0
  loc_B1AE46: from_stack_1v = clsbase.RsFrmGet()
  loc_B1AE4B: FLdPr var_A8
  loc_B1AE4E:  = Me.Fields
  loc_B1AE53: FLdPr var_B0
  loc_B1AE56: from_stack_2 = Me.Item(from_stack_1)
  loc_B1AE5B: FLdZeroAd var_B8
  loc_B1AE5E: CVarAd
  loc_B1AE62: LitVarI2 var_D4, 0
  loc_B1AE67: ILdRf var_C4
  loc_B1AE6A: LitI4 0
  loc_B1AE6F: EqI4
  loc_B1AE70: CVarBoolI2 var_A4
  loc_B1AE74: FLdRfVar var_12C
  loc_B1AE77: ImpAdCallFPR4  = IIf(, , )
  loc_B1AE7C: LitI2_Byte 0
  loc_B1AE7E: LitVar_Missing var_14C
  loc_B1AE81: LitI2_Byte &HFF
  loc_B1AE83: FLdVar var_12C
  loc_B1AE87: FLdPr Me
  loc_B1AE8A: MemLdRfVar from_stack_1.global_112
  loc_B1AE8D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AE92: FFreeAd var_A8 = ""
  loc_B1AE99: FFreeVar var_A4 = "": var_D4 = "": var_E4 = "": var_12C = ""
  loc_B1AEA6: LitI2_Byte 0
  loc_B1AEA8: FLdPr Me
  loc_B1AEAB: MemLdRfVar from_stack_1.global_116
  loc_B1AEAE: CVarRef
  loc_B1AEB3: LitI2_Byte &HFF
  loc_B1AEB5: LitI2_Byte &HFF
  loc_B1AEB7: CR8I2
  loc_B1AEB8: FLdPr Me
  loc_B1AEBB: MemLdStr global_96
  loc_B1AEBE: CR8Str
  loc_B1AEC0: MulR8
  loc_B1AEC1: CVarR8
  loc_B1AEC5: PopAdLdVar
  loc_B1AEC6: FLdRfVar var_150
  loc_B1AEC9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AECE: LitI2_Byte 0
  loc_B1AED0: FLdPr Me
  loc_B1AED3: MemLdRfVar from_stack_1.global_116
  loc_B1AED6: CVarRef
  loc_B1AEDB: LitI2_Byte &HFF
  loc_B1AEDD: LitI2_Byte &HFF
  loc_B1AEDF: CR8I2
  loc_B1AEE0: FLdPr Me
  loc_B1AEE3: MemLdStr global_112
  loc_B1AEE6: CR8Str
  loc_B1AEE8: MulR8
  loc_B1AEE9: CVarR8
  loc_B1AEED: PopAdLdVar
  loc_B1AEEE: FLdRfVar var_150
  loc_B1AEF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AEF6: LitI2_Byte 0
  loc_B1AEF8: LitVar_Missing var_D4
  loc_B1AEFB: LitI2_Byte &HFF
  loc_B1AEFD: LitI2_Byte &HFF
  loc_B1AEFF: CR8I2
  loc_B1AF00: FLdPr Me
  loc_B1AF03: MemLdStr global_116
  loc_B1AF06: CR8Str
  loc_B1AF08: MulR8
  loc_B1AF09: CVarR8
  loc_B1AF0D: PopAdLdVar
  loc_B1AF0E: FLdPr Me
  loc_B1AF11: MemLdRfVar from_stack_1.global_116
  loc_B1AF14: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1AF19: FFree1Var var_D4 = ""
  loc_B1AF1C: LitNothing
  loc_B1AF1E: FStAd var_F0 
  loc_B1AF22: Branch loc_B1AF35
  loc_B1AF25: LitI4 0
  loc_B1AF2A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1AF2D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1AF32: Branch loc_B1AF3D
  loc_B1AF35: LitI2_Byte &HFF
  loc_B1AF37: FLdPr Me
  loc_B1AF3A: MemStI2 bGenerado
  loc_B1AF3D: LitI4 0
  loc_B1AF42: CI2I4
  loc_B1AF43: FLdPr Me
  loc_B1AF46: Me.MousePointer = from_stack_1
  loc_B1AF4B: LitVarStr var_94, vbNullString
  loc_B1AF50: PopAdLdVar
  loc_B1AF51: FLdPr Me
  loc_B1AF54: VCallAd Control_ID_statusBar
  loc_B1AF57: FStAdFunc var_A8
  loc_B1AF5A: FLdPr var_A8
  loc_B1AF5D: LateIdSt
  loc_B1AF62: FFree1Ad var_A8
  loc_B1AF65: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AEC180
  'Data Table: 468390
  loc_AEBA48: FLdRfVar var_88
  loc_AEBA4B: LitI2_Byte 0
  loc_AEBA4D: LitI2_Byte &HFF
  loc_AEBA4F: ImpAdLdI4 MemVar_C3D83C
  loc_AEBA52: FLdPr Me
  loc_AEBA55: MemLdRfVar from_stack_1.global_80
  loc_AEBA58: NewIfNullPr IFileSystem3
  loc_AEBA5B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AEBA60: ILdRf var_88
  loc_AEBA63: FLdPr Me
  loc_AEBA66: MemStVarAd
  loc_AEBA6A: FFree1Ad var_88
  loc_AEBA6D: Call Proc_258_21_A65AD4()
  loc_AEBA72: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBA77: PopAdLdVar
  loc_AEBA78: FLdPr Me
  loc_AEBA7B: MemLdRfVar from_stack_1.htmFile
  loc_AEBA7E: LdPrVar
  loc_AEBA80: LateMemCall
  loc_AEBA86: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBA8B: PopAdLdVar
  loc_AEBA8C: FLdPr Me
  loc_AEBA8F: MemLdRfVar from_stack_1.htmFile
  loc_AEBA92: LdPrVar
  loc_AEBA94: LateMemCall
  loc_AEBA9A: LitStr "     <td colspan=""2""><strong>CTA. CTE N&ordm;: "
  loc_AEBA9D: FLdPr Me
  loc_AEBAA0: MemLdStr global_84
  loc_AEBAA3: ConcatStr
  loc_AEBAA4: FStStrNoPop var_AC
  loc_AEBAA7: LitStr "</strong></td>"
  loc_AEBAAA: ConcatStr
  loc_AEBAAB: CVarStr var_BC
  loc_AEBAAE: PopAdLdVar
  loc_AEBAAF: FLdPr Me
  loc_AEBAB2: MemLdRfVar from_stack_1.htmFile
  loc_AEBAB5: LdPrVar
  loc_AEBAB7: LateMemCall
  loc_AEBABD: FFree1Str var_AC
  loc_AEBAC0: FFree1Var var_BC = ""
  loc_AEBAC3: LitVarStr var_98, "   </tr>"
  loc_AEBAC8: PopAdLdVar
  loc_AEBAC9: FLdPr Me
  loc_AEBACC: MemLdRfVar from_stack_1.htmFile
  loc_AEBACF: LdPrVar
  loc_AEBAD1: LateMemCall
  loc_AEBAD7: LitVarStr var_98, "   <tr align=""left"" class=""Totales"">"
  loc_AEBADC: PopAdLdVar
  loc_AEBADD: FLdPr Me
  loc_AEBAE0: MemLdRfVar from_stack_1.htmFile
  loc_AEBAE3: LdPrVar
  loc_AEBAE5: LateMemCall
  loc_AEBAEB: LitVarStr var_98, "     <td><strong>SALDO INICIAL:</strong></td>"
  loc_AEBAF0: PopAdLdVar
  loc_AEBAF1: FLdPr Me
  loc_AEBAF4: MemLdRfVar from_stack_1.htmFile
  loc_AEBAF7: LdPrVar
  loc_AEBAF9: LateMemCall
  loc_AEBAFF: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBB02: FLdPr Me
  loc_AEBB05: MemLdStr global_88
  loc_AEBB08: ConcatStr
  loc_AEBB09: FStStrNoPop var_AC
  loc_AEBB0C: LitStr "</td>"
  loc_AEBB0F: ConcatStr
  loc_AEBB10: CVarStr var_BC
  loc_AEBB13: PopAdLdVar
  loc_AEBB14: FLdPr Me
  loc_AEBB17: MemLdRfVar from_stack_1.htmFile
  loc_AEBB1A: LdPrVar
  loc_AEBB1C: LateMemCall
  loc_AEBB22: FFree1Str var_AC
  loc_AEBB25: FFree1Var var_BC = ""
  loc_AEBB28: LitVarStr var_98, "   </tr>"
  loc_AEBB2D: PopAdLdVar
  loc_AEBB2E: FLdPr Me
  loc_AEBB31: MemLdRfVar from_stack_1.htmFile
  loc_AEBB34: LdPrVar
  loc_AEBB36: LateMemCall
  loc_AEBB3C: LitVarStr var_98, "</table><br>"
  loc_AEBB41: PopAdLdVar
  loc_AEBB42: FLdPr Me
  loc_AEBB45: MemLdRfVar from_stack_1.htmFile
  loc_AEBB48: LdPrVar
  loc_AEBB4A: LateMemCall
  loc_AEBB50: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBB55: PopAdLdVar
  loc_AEBB56: FLdPr Me
  loc_AEBB59: MemLdRfVar from_stack_1.htmFile
  loc_AEBB5C: LdPrVar
  loc_AEBB5E: LateMemCall
  loc_AEBB64: LitVarStr var_98, "   <tr align=""left"">"
  loc_AEBB69: PopAdLdVar
  loc_AEBB6A: FLdPr Me
  loc_AEBB6D: MemLdRfVar from_stack_1.htmFile
  loc_AEBB70: LdPrVar
  loc_AEBB72: LateMemCall
  loc_AEBB78: LitVarStr var_98, "     <td colspan=""3"" class=""Encabezado""><strong>INGRESOS DEL MES</strong></td>"
  loc_AEBB7D: PopAdLdVar
  loc_AEBB7E: FLdPr Me
  loc_AEBB81: MemLdRfVar from_stack_1.htmFile
  loc_AEBB84: LdPrVar
  loc_AEBB86: LateMemCall
  loc_AEBB8C: LitVarStr var_98, "   </tr>"
  loc_AEBB91: PopAdLdVar
  loc_AEBB92: FLdPr Me
  loc_AEBB95: MemLdRfVar from_stack_1.htmFile
  loc_AEBB98: LdPrVar
  loc_AEBB9A: LateMemCall
  loc_AEBBA0: LitI2_Byte 1
  loc_AEBBA2: FLdPr Me
  loc_AEBBA5: MemLdRfVar from_stack_1.global_120
  loc_AEBBA8: FLdPr Me
  loc_AEBBAB: MemLdStr global_92
  loc_AEBBAE: LitI2_Byte 1
  loc_AEBBB0: FnUBound
  loc_AEBBB2: CI2I4
  loc_AEBBB3: ForI2 var_C0
  loc_AEBBB9: FLdPr Me
  loc_AEBBBC: MemLdI2 global_120
  loc_AEBBBF: CI4UI1
  loc_AEBBC0: FLdPr Me
  loc_AEBBC3: MemLdStr global_92
  loc_AEBBC6: AryLock
  loc_AEBBC9: Ary1LdRf
  loc_AEBBCA: FStR4 var_C8
  loc_AEBBCD: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AEBBD2: PopAdLdVar
  loc_AEBBD3: FLdPr Me
  loc_AEBBD6: MemLdRfVar from_stack_1.htmFile
  loc_AEBBD9: LdPrVar
  loc_AEBBDB: LateMemCall
  loc_AEBBE1: LitI4 0
  loc_AEBBE6: LitI4 0
  loc_AEBBEB: LitI2_Byte 0
  loc_AEBBED: LitStr "right"
  loc_AEBBF0: LitStr "BOLETO DE INGRESO DEL:"
  loc_AEBBF3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AEBBF8: CVarStr var_BC
  loc_AEBBFB: PopAdLdVar
  loc_AEBBFC: FLdPr Me
  loc_AEBBFF: MemLdRfVar from_stack_1.htmFile
  loc_AEBC02: LdPrVar
  loc_AEBC04: LateMemCall
  loc_AEBC0A: FFree1Var var_BC = ""
  loc_AEBC0D: LitStr "     <td width=""20" & Chr(37) & """ align=""center"">"
  loc_AEBC10: FMemLdR4 var_C8(0)
  loc_AEBC15: ConcatStr
  loc_AEBC16: FStStrNoPop var_AC
  loc_AEBC19: LitStr "</td>"
  loc_AEBC1C: ConcatStr
  loc_AEBC1D: CVarStr var_BC
  loc_AEBC20: PopAdLdVar
  loc_AEBC21: FLdPr Me
  loc_AEBC24: MemLdRfVar from_stack_1.htmFile
  loc_AEBC27: LdPrVar
  loc_AEBC29: LateMemCall
  loc_AEBC2F: FFree1Str var_AC
  loc_AEBC32: FFree1Var var_BC = ""
  loc_AEBC35: LitStr "     <td width=""20" & Chr(37) & """ align=""right"">"
  loc_AEBC38: FMemLdR4 var_C8(4)
  loc_AEBC3D: ConcatStr
  loc_AEBC3E: FStStrNoPop var_AC
  loc_AEBC41: LitStr "</td>"
  loc_AEBC44: ConcatStr
  loc_AEBC45: CVarStr var_BC
  loc_AEBC48: PopAdLdVar
  loc_AEBC49: FLdPr Me
  loc_AEBC4C: MemLdRfVar from_stack_1.htmFile
  loc_AEBC4F: LdPrVar
  loc_AEBC51: LateMemCall
  loc_AEBC57: FFree1Str var_AC
  loc_AEBC5A: FFree1Var var_BC = ""
  loc_AEBC5D: LitVarStr var_98, "     </tr>"
  loc_AEBC62: PopAdLdVar
  loc_AEBC63: FLdPr Me
  loc_AEBC66: MemLdRfVar from_stack_1.htmFile
  loc_AEBC69: LdPrVar
  loc_AEBC6B: LateMemCall
  loc_AEBC71: LitI4 0
  loc_AEBC76: FStR4 var_C8
  loc_AEBC79: AryUnlock
  loc_AEBC7C: FLdPr Me
  loc_AEBC7F: MemLdRfVar from_stack_1.global_120
  loc_AEBC82: NextI2 var_C0, loc_AEBBB9
  loc_AEBC87: LitVarStr var_98, "</table><br>"
  loc_AEBC8C: PopAdLdVar
  loc_AEBC8D: FLdPr Me
  loc_AEBC90: MemLdRfVar from_stack_1.htmFile
  loc_AEBC93: LdPrVar
  loc_AEBC95: LateMemCall
  loc_AEBC9B: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBCA0: PopAdLdVar
  loc_AEBCA1: FLdPr Me
  loc_AEBCA4: MemLdRfVar from_stack_1.htmFile
  loc_AEBCA7: LdPrVar
  loc_AEBCA9: LateMemCall
  loc_AEBCAF: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBCB4: PopAdLdVar
  loc_AEBCB5: FLdPr Me
  loc_AEBCB8: MemLdRfVar from_stack_1.htmFile
  loc_AEBCBB: LdPrVar
  loc_AEBCBD: LateMemCall
  loc_AEBCC3: LitVarStr var_98, "     <td><strong>FONDOS DISPONIBLES</strong></td>"
  loc_AEBCC8: PopAdLdVar
  loc_AEBCC9: FLdPr Me
  loc_AEBCCC: MemLdRfVar from_stack_1.htmFile
  loc_AEBCCF: LdPrVar
  loc_AEBCD1: LateMemCall
  loc_AEBCD7: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBCDA: FLdPr Me
  loc_AEBCDD: MemLdStr global_96
  loc_AEBCE0: ConcatStr
  loc_AEBCE1: FStStrNoPop var_AC
  loc_AEBCE4: LitStr "</td>"
  loc_AEBCE7: ConcatStr
  loc_AEBCE8: CVarStr var_BC
  loc_AEBCEB: PopAdLdVar
  loc_AEBCEC: FLdPr Me
  loc_AEBCEF: MemLdRfVar from_stack_1.htmFile
  loc_AEBCF2: LdPrVar
  loc_AEBCF4: LateMemCall
  loc_AEBCFA: FFree1Str var_AC
  loc_AEBCFD: FFree1Var var_BC = ""
  loc_AEBD00: LitVarStr var_98, "   </tr>"
  loc_AEBD05: PopAdLdVar
  loc_AEBD06: FLdPr Me
  loc_AEBD09: MemLdRfVar from_stack_1.htmFile
  loc_AEBD0C: LdPrVar
  loc_AEBD0E: LateMemCall
  loc_AEBD14: LitVarStr var_98, "</table><br>"
  loc_AEBD19: PopAdLdVar
  loc_AEBD1A: FLdPr Me
  loc_AEBD1D: MemLdRfVar from_stack_1.htmFile
  loc_AEBD20: LdPrVar
  loc_AEBD22: LateMemCall
  loc_AEBD28: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBD2D: PopAdLdVar
  loc_AEBD2E: FLdPr Me
  loc_AEBD31: MemLdRfVar from_stack_1.htmFile
  loc_AEBD34: LdPrVar
  loc_AEBD36: LateMemCall
  loc_AEBD3C: LitVarStr var_98, "   <tr align=""left"">"
  loc_AEBD41: PopAdLdVar
  loc_AEBD42: FLdPr Me
  loc_AEBD45: MemLdRfVar from_stack_1.htmFile
  loc_AEBD48: LdPrVar
  loc_AEBD4A: LateMemCall
  loc_AEBD50: LitVarStr var_98, "     <td class=""LineaDato""><strong>MENOS:</strong></td>"
  loc_AEBD55: PopAdLdVar
  loc_AEBD56: FLdPr Me
  loc_AEBD59: MemLdRfVar from_stack_1.htmFile
  loc_AEBD5C: LdPrVar
  loc_AEBD5E: LateMemCall
  loc_AEBD64: LitVarStr var_98, "   </tr>"
  loc_AEBD69: PopAdLdVar
  loc_AEBD6A: FLdPr Me
  loc_AEBD6D: MemLdRfVar from_stack_1.htmFile
  loc_AEBD70: LdPrVar
  loc_AEBD72: LateMemCall
  loc_AEBD78: LitVarStr var_98, "</table><br>"
  loc_AEBD7D: PopAdLdVar
  loc_AEBD7E: FLdPr Me
  loc_AEBD81: MemLdRfVar from_stack_1.htmFile
  loc_AEBD84: LdPrVar
  loc_AEBD86: LateMemCall
  loc_AEBD8C: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBD91: PopAdLdVar
  loc_AEBD92: FLdPr Me
  loc_AEBD95: MemLdRfVar from_stack_1.htmFile
  loc_AEBD98: LdPrVar
  loc_AEBD9A: LateMemCall
  loc_AEBDA0: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBDA5: PopAdLdVar
  loc_AEBDA6: FLdPr Me
  loc_AEBDA9: MemLdRfVar from_stack_1.htmFile
  loc_AEBDAC: LdPrVar
  loc_AEBDAE: LateMemCall
  loc_AEBDB4: LitVarStr var_98, "     <td><strong>APLICACIÓN DE FONDOS: TOTAL ANEXO I</strong></td>"
  loc_AEBDB9: PopAdLdVar
  loc_AEBDBA: FLdPr Me
  loc_AEBDBD: MemLdRfVar from_stack_1.htmFile
  loc_AEBDC0: LdPrVar
  loc_AEBDC2: LateMemCall
  loc_AEBDC8: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBDCB: FLdPr Me
  loc_AEBDCE: MemLdStr global_100
  loc_AEBDD1: ConcatStr
  loc_AEBDD2: FStStrNoPop var_AC
  loc_AEBDD5: LitStr "</td>"
  loc_AEBDD8: ConcatStr
  loc_AEBDD9: CVarStr var_BC
  loc_AEBDDC: PopAdLdVar
  loc_AEBDDD: FLdPr Me
  loc_AEBDE0: MemLdRfVar from_stack_1.htmFile
  loc_AEBDE3: LdPrVar
  loc_AEBDE5: LateMemCall
  loc_AEBDEB: FFree1Str var_AC
  loc_AEBDEE: FFree1Var var_BC = ""
  loc_AEBDF1: LitVarStr var_98, "   </tr>"
  loc_AEBDF6: PopAdLdVar
  loc_AEBDF7: FLdPr Me
  loc_AEBDFA: MemLdRfVar from_stack_1.htmFile
  loc_AEBDFD: LdPrVar
  loc_AEBDFF: LateMemCall
  loc_AEBE05: LitVarStr var_98, "</table><br>"
  loc_AEBE0A: PopAdLdVar
  loc_AEBE0B: FLdPr Me
  loc_AEBE0E: MemLdRfVar from_stack_1.htmFile
  loc_AEBE11: LdPrVar
  loc_AEBE13: LateMemCall
  loc_AEBE19: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBE1E: PopAdLdVar
  loc_AEBE1F: FLdPr Me
  loc_AEBE22: MemLdRfVar from_stack_1.htmFile
  loc_AEBE25: LdPrVar
  loc_AEBE27: LateMemCall
  loc_AEBE2D: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBE32: PopAdLdVar
  loc_AEBE33: FLdPr Me
  loc_AEBE36: MemLdRfVar from_stack_1.htmFile
  loc_AEBE39: LdPrVar
  loc_AEBE3B: LateMemCall
  loc_AEBE41: LitVarStr var_98, "     <td><strong>RETENCIONES APLICADAS</strong></td>"
  loc_AEBE46: PopAdLdVar
  loc_AEBE47: FLdPr Me
  loc_AEBE4A: MemLdRfVar from_stack_1.htmFile
  loc_AEBE4D: LdPrVar
  loc_AEBE4F: LateMemCall
  loc_AEBE55: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBE58: FLdPr Me
  loc_AEBE5B: MemLdStr global_104
  loc_AEBE5E: ConcatStr
  loc_AEBE5F: FStStrNoPop var_AC
  loc_AEBE62: LitStr "</td>"
  loc_AEBE65: ConcatStr
  loc_AEBE66: CVarStr var_BC
  loc_AEBE69: PopAdLdVar
  loc_AEBE6A: FLdPr Me
  loc_AEBE6D: MemLdRfVar from_stack_1.htmFile
  loc_AEBE70: LdPrVar
  loc_AEBE72: LateMemCall
  loc_AEBE78: FFree1Str var_AC
  loc_AEBE7B: FFree1Var var_BC = ""
  loc_AEBE7E: LitVarStr var_98, "   </tr>"
  loc_AEBE83: PopAdLdVar
  loc_AEBE84: FLdPr Me
  loc_AEBE87: MemLdRfVar from_stack_1.htmFile
  loc_AEBE8A: LdPrVar
  loc_AEBE8C: LateMemCall
  loc_AEBE92: LitVarStr var_98, "</table><br>"
  loc_AEBE97: PopAdLdVar
  loc_AEBE98: FLdPr Me
  loc_AEBE9B: MemLdRfVar from_stack_1.htmFile
  loc_AEBE9E: LdPrVar
  loc_AEBEA0: LateMemCall
  loc_AEBEA6: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBEAB: PopAdLdVar
  loc_AEBEAC: FLdPr Me
  loc_AEBEAF: MemLdRfVar from_stack_1.htmFile
  loc_AEBEB2: LdPrVar
  loc_AEBEB4: LateMemCall
  loc_AEBEBA: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBEBF: PopAdLdVar
  loc_AEBEC0: FLdPr Me
  loc_AEBEC3: MemLdRfVar from_stack_1.htmFile
  loc_AEBEC6: LdPrVar
  loc_AEBEC8: LateMemCall
  loc_AEBECE: LitVarStr var_98, "     <td><strong>DEBITOS</strong></td>"
  loc_AEBED3: PopAdLdVar
  loc_AEBED4: FLdPr Me
  loc_AEBED7: MemLdRfVar from_stack_1.htmFile
  loc_AEBEDA: LdPrVar
  loc_AEBEDC: LateMemCall
  loc_AEBEE2: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBEE5: FLdPr Me
  loc_AEBEE8: MemLdStr global_108
  loc_AEBEEB: ConcatStr
  loc_AEBEEC: FStStrNoPop var_AC
  loc_AEBEEF: LitStr "</td>"
  loc_AEBEF2: ConcatStr
  loc_AEBEF3: CVarStr var_BC
  loc_AEBEF6: PopAdLdVar
  loc_AEBEF7: FLdPr Me
  loc_AEBEFA: MemLdRfVar from_stack_1.htmFile
  loc_AEBEFD: LdPrVar
  loc_AEBEFF: LateMemCall
  loc_AEBF05: FFree1Str var_AC
  loc_AEBF08: FFree1Var var_BC = ""
  loc_AEBF0B: LitVarStr var_98, "   </tr>"
  loc_AEBF10: PopAdLdVar
  loc_AEBF11: FLdPr Me
  loc_AEBF14: MemLdRfVar from_stack_1.htmFile
  loc_AEBF17: LdPrVar
  loc_AEBF19: LateMemCall
  loc_AEBF1F: LitVarStr var_98, "</table><br>"
  loc_AEBF24: PopAdLdVar
  loc_AEBF25: FLdPr Me
  loc_AEBF28: MemLdRfVar from_stack_1.htmFile
  loc_AEBF2B: LdPrVar
  loc_AEBF2D: LateMemCall
  loc_AEBF33: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBF38: PopAdLdVar
  loc_AEBF39: FLdPr Me
  loc_AEBF3C: MemLdRfVar from_stack_1.htmFile
  loc_AEBF3F: LdPrVar
  loc_AEBF41: LateMemCall
  loc_AEBF47: LitVarStr var_98, "   <tr align=""left"">"
  loc_AEBF4C: PopAdLdVar
  loc_AEBF4D: FLdPr Me
  loc_AEBF50: MemLdRfVar from_stack_1.htmFile
  loc_AEBF53: LdPrVar
  loc_AEBF55: LateMemCall
  loc_AEBF5B: LitVarStr var_98, "     <td class=""LineaDato""><strong>MÁS/MENOS:</strong></td>"
  loc_AEBF60: PopAdLdVar
  loc_AEBF61: FLdPr Me
  loc_AEBF64: MemLdRfVar from_stack_1.htmFile
  loc_AEBF67: LdPrVar
  loc_AEBF69: LateMemCall
  loc_AEBF6F: LitVarStr var_98, "   </tr>"
  loc_AEBF74: PopAdLdVar
  loc_AEBF75: FLdPr Me
  loc_AEBF78: MemLdRfVar from_stack_1.htmFile
  loc_AEBF7B: LdPrVar
  loc_AEBF7D: LateMemCall
  loc_AEBF83: LitVarStr var_98, "</table>"
  loc_AEBF88: PopAdLdVar
  loc_AEBF89: FLdPr Me
  loc_AEBF8C: MemLdRfVar from_stack_1.htmFile
  loc_AEBF8F: LdPrVar
  loc_AEBF91: LateMemCall
  loc_AEBF97: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEBF9C: PopAdLdVar
  loc_AEBF9D: FLdPr Me
  loc_AEBFA0: MemLdRfVar from_stack_1.htmFile
  loc_AEBFA3: LdPrVar
  loc_AEBFA5: LateMemCall
  loc_AEBFAB: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEBFB0: PopAdLdVar
  loc_AEBFB1: FLdPr Me
  loc_AEBFB4: MemLdRfVar from_stack_1.htmFile
  loc_AEBFB7: LdPrVar
  loc_AEBFB9: LateMemCall
  loc_AEBFBF: LitVarStr var_98, "     <td><strong>TRANSFERENCIAS DE FONDOS</strong></td>"
  loc_AEBFC4: PopAdLdVar
  loc_AEBFC5: FLdPr Me
  loc_AEBFC8: MemLdRfVar from_stack_1.htmFile
  loc_AEBFCB: LdPrVar
  loc_AEBFCD: LateMemCall
  loc_AEBFD3: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEBFD6: FLdPr Me
  loc_AEBFD9: MemLdStr global_112
  loc_AEBFDC: ConcatStr
  loc_AEBFDD: FStStrNoPop var_AC
  loc_AEBFE0: LitStr "</td>"
  loc_AEBFE3: ConcatStr
  loc_AEBFE4: CVarStr var_BC
  loc_AEBFE7: PopAdLdVar
  loc_AEBFE8: FLdPr Me
  loc_AEBFEB: MemLdRfVar from_stack_1.htmFile
  loc_AEBFEE: LdPrVar
  loc_AEBFF0: LateMemCall
  loc_AEBFF6: FFree1Str var_AC
  loc_AEBFF9: FFree1Var var_BC = ""
  loc_AEBFFC: LitVarStr var_98, "   </tr>"
  loc_AEC001: PopAdLdVar
  loc_AEC002: FLdPr Me
  loc_AEC005: MemLdRfVar from_stack_1.htmFile
  loc_AEC008: LdPrVar
  loc_AEC00A: LateMemCall
  loc_AEC010: LitVarStr var_98, "</table><br>"
  loc_AEC015: PopAdLdVar
  loc_AEC016: FLdPr Me
  loc_AEC019: MemLdRfVar from_stack_1.htmFile
  loc_AEC01C: LdPrVar
  loc_AEC01E: LateMemCall
  loc_AEC024: LitVarStr var_98, "<table width=""70" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEC029: PopAdLdVar
  loc_AEC02A: FLdPr Me
  loc_AEC02D: MemLdRfVar from_stack_1.htmFile
  loc_AEC030: LdPrVar
  loc_AEC032: LateMemCall
  loc_AEC038: LitVarStr var_98, "   <tr align=""left"" class=""Encabezado"">"
  loc_AEC03D: PopAdLdVar
  loc_AEC03E: FLdPr Me
  loc_AEC041: MemLdRfVar from_stack_1.htmFile
  loc_AEC044: LdPrVar
  loc_AEC046: LateMemCall
  loc_AEC04C: LitVarStr var_98, "     <td><strong>SALDO FINAL</strong></td>"
  loc_AEC051: PopAdLdVar
  loc_AEC052: FLdPr Me
  loc_AEC055: MemLdRfVar from_stack_1.htmFile
  loc_AEC058: LdPrVar
  loc_AEC05A: LateMemCall
  loc_AEC060: LitStr "     <td width=""20" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_AEC063: FLdPr Me
  loc_AEC066: MemLdStr global_116
  loc_AEC069: ConcatStr
  loc_AEC06A: FStStrNoPop var_AC
  loc_AEC06D: LitStr "</td>"
  loc_AEC070: ConcatStr
  loc_AEC071: CVarStr var_BC
  loc_AEC074: PopAdLdVar
  loc_AEC075: FLdPr Me
  loc_AEC078: MemLdRfVar from_stack_1.htmFile
  loc_AEC07B: LdPrVar
  loc_AEC07D: LateMemCall
  loc_AEC083: FFree1Str var_AC
  loc_AEC086: FFree1Var var_BC = ""
  loc_AEC089: LitVarStr var_98, "   </tr>"
  loc_AEC08E: PopAdLdVar
  loc_AEC08F: FLdPr Me
  loc_AEC092: MemLdRfVar from_stack_1.htmFile
  loc_AEC095: LdPrVar
  loc_AEC097: LateMemCall
  loc_AEC09D: LitVarStr var_98, "</table><p>&nbsp;</p><p>&nbsp;</p>"
  loc_AEC0A2: PopAdLdVar
  loc_AEC0A3: FLdPr Me
  loc_AEC0A6: MemLdRfVar from_stack_1.htmFile
  loc_AEC0A9: LdPrVar
  loc_AEC0AB: LateMemCall
  loc_AEC0B1: FLdRfVar var_AC
  loc_AEC0B4: FLdPr Me
  loc_AEC0B7: VCallAd Control_ID_ObservacionesTxt
  loc_AEC0BA: FStAdFunc var_88
  loc_AEC0BD: FLdPr var_88
  loc_AEC0C0:  = Me.Text
  loc_AEC0C5: ILdRf var_AC
  loc_AEC0C8: LitStr vbNullString
  loc_AEC0CB: NeStr
  loc_AEC0CD: FFree1Str var_AC
  loc_AEC0D0: FFree1Ad var_88
  loc_AEC0D3: BranchF loc_AEC153
  loc_AEC0D6: LitVarStr var_98, "        <tr valign=""top"">"
  loc_AEC0DB: PopAdLdVar
  loc_AEC0DC: FLdPr Me
  loc_AEC0DF: MemLdRfVar from_stack_1.htmFile
  loc_AEC0E2: LdPrVar
  loc_AEC0E4: LateMemCall
  loc_AEC0EA: LitVarStr var_98, "          <td><br>OBSERVACIONES: </td>"
  loc_AEC0EF: PopAdLdVar
  loc_AEC0F0: FLdPr Me
  loc_AEC0F3: MemLdRfVar from_stack_1.htmFile
  loc_AEC0F6: LdPrVar
  loc_AEC0F8: LateMemCall
  loc_AEC0FE: LitStr "          <td><br>"
  loc_AEC101: FLdRfVar var_AC
  loc_AEC104: FLdPr Me
  loc_AEC107: VCallAd Control_ID_ObservacionesTxt
  loc_AEC10A: FStAdFunc var_88
  loc_AEC10D: FLdPr var_88
  loc_AEC110:  = Me.Text
  loc_AEC115: ILdRf var_AC
  loc_AEC118: ConcatStr
  loc_AEC119: FStStrNoPop var_CC
  loc_AEC11C: LitStr "</td>"
  loc_AEC11F: ConcatStr
  loc_AEC120: CVarStr var_BC
  loc_AEC123: PopAdLdVar
  loc_AEC124: FLdPr Me
  loc_AEC127: MemLdRfVar from_stack_1.htmFile
  loc_AEC12A: LdPrVar
  loc_AEC12C: LateMemCall
  loc_AEC132: FFreeStr var_AC = ""
  loc_AEC139: FFree1Ad var_88
  loc_AEC13C: FFree1Var var_BC = ""
  loc_AEC13F: LitVarStr var_98, "        </tr>"
  loc_AEC144: PopAdLdVar
  loc_AEC145: FLdPr Me
  loc_AEC148: MemLdRfVar from_stack_1.htmFile
  loc_AEC14B: LdPrVar
  loc_AEC14D: LateMemCall
  loc_AEC153: LitVarStr var_98, "<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_AEC158: PopAdLdVar
  loc_AEC159: FLdPr Me
  loc_AEC15C: MemLdRfVar from_stack_1.htmFile
  loc_AEC15F: LdPrVar
  loc_AEC161: LateMemCall
  loc_AEC167: Call Proc_258_22_A00D98()
  loc_AEC16C: FLdPr Me
  loc_AEC16F: MemLdRfVar from_stack_1.htmFile
  loc_AEC172: LdPrVar
  loc_AEC174: LateMemCall
  loc_AEC17A: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AEC17F: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94A8B4
  'Data Table: 468390
  loc_94A89C: LitI2_Byte 0
  loc_94A89E: FLdPr Me
  loc_94A8A1: MemStI2 bLogos
  loc_94A8A4: Call GeneraHTML()
  loc_94A8A9: LitI2_Byte &HFF
  loc_94A8AB: FLdPr Me
  loc_94A8AE: MemStI2 bLogos
  loc_94A8B1: ExitProcHresult
End Sub

Private Function Proc_258_21_A65AD4() 'A65AD4
  'Data Table: 468390
  loc_A657B8: LitVarStr var_94, "<html>"
  loc_A657BD: PopAdLdVar
  loc_A657BE: FLdPr Me
  loc_A657C1: MemLdRfVar from_stack_1.htmFile
  loc_A657C4: LdPrVar
  loc_A657C6: LateMemCall
  loc_A657CC: LitVarStr var_94, "<head>"
  loc_A657D1: PopAdLdVar
  loc_A657D2: FLdPr Me
  loc_A657D5: MemLdRfVar from_stack_1.htmFile
  loc_A657D8: LdPrVar
  loc_A657DA: LateMemCall
  loc_A657E0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A657E5: PopAdLdVar
  loc_A657E6: FLdPr Me
  loc_A657E9: MemLdRfVar from_stack_1.htmFile
  loc_A657EC: LdPrVar
  loc_A657EE: LateMemCall
  loc_A657F4: LitStr "<title>"
  loc_A657F7: FLdRfVar var_A8
  loc_A657FA: FLdPr Me
  loc_A657FD:  = Me.Caption
  loc_A65802: ILdRf var_A8
  loc_A65805: ConcatStr
  loc_A65806: FStStrNoPop var_AC
  loc_A65809: LitStr " - "
  loc_A6580C: ConcatStr
  loc_A6580D: FStStrNoPop var_B0
  loc_A65810: LitStr "Municipalidad de Guaymallén"
  loc_A65813: ConcatStr
  loc_A65814: FStStrNoPop var_B4
  loc_A65817: LitStr "</title>"
  loc_A6581A: ConcatStr
  loc_A6581B: CVarStr var_C4
  loc_A6581E: PopAdLdVar
  loc_A6581F: FLdPr Me
  loc_A65822: MemLdRfVar from_stack_1.htmFile
  loc_A65825: LdPrVar
  loc_A65827: LateMemCall
  loc_A6582D: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A65838: FFree1Var var_C4 = ""
  loc_A6583B: LitStr vbNullString
  loc_A6583E: ILdRf Me
  loc_A65841: CastAd
  loc_A65844: FStAdFunc var_C8
  loc_A65847: FLdRfVar var_C8
  loc_A6584A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A6584F: FFree1Ad var_C8
  loc_A65852: LitI4 0
  loc_A65857: FStStrCopy var_AC
  loc_A6585A: FLdRfVar var_AC
  loc_A6585D: LitI4 0
  loc_A65862: FStStrCopy var_A8
  loc_A65865: FLdRfVar var_A8
  loc_A65868: LitI2_Byte 0
  loc_A6586A: PopTmpLdAd2 var_CA
  loc_A6586D: FLdPr Me
  loc_A65870: MemLdRfVar from_stack_1.htmFile
  loc_A65873: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A65878: FFreeStr var_A8 = ""
  loc_A6587F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A65884: PopAdLdVar
  loc_A65885: FLdPr Me
  loc_A65888: MemLdRfVar from_stack_1.htmFile
  loc_A6588B: LdPrVar
  loc_A6588D: LateMemCall
  loc_A65893: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A65898: PopAdLdVar
  loc_A65899: FLdPr Me
  loc_A6589C: MemLdRfVar from_stack_1.htmFile
  loc_A6589F: LdPrVar
  loc_A658A1: LateMemCall
  loc_A658A7: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A658AC: PopAdLdVar
  loc_A658AD: FLdPr Me
  loc_A658B0: MemLdRfVar from_stack_1.htmFile
  loc_A658B3: LdPrVar
  loc_A658B5: LateMemCall
  loc_A658BB: FLdPr Me
  loc_A658BE: MemLdI2 bLogos
  loc_A658C1: BranchF loc_A658D8
  loc_A658C4: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A658C9: PopAdLdVar
  loc_A658CA: FLdPr Me
  loc_A658CD: MemLdRfVar from_stack_1.htmFile
  loc_A658D0: LdPrVar
  loc_A658D2: LateMemCall
  loc_A658D8: LitVarStr var_94, "     <br>ACUERDO<span class=""Titulo2""> N&ordm; 5017 <br>"
  loc_A658DD: PopAdLdVar
  loc_A658DE: FLdPr Me
  loc_A658E1: MemLdRfVar from_stack_1.htmFile
  loc_A658E4: LdPrVar
  loc_A658E6: LateMemCall
  loc_A658EC: LitVarStr var_94, "      ANEXO 2: MOVIMIENTO DE FONDOS<br>FONDO FEDERAL SOLIDARIO - LEY N&ordm; 8028</span></p>"
  loc_A658F1: PopAdLdVar
  loc_A658F2: FLdPr Me
  loc_A658F5: MemLdRfVar from_stack_1.htmFile
  loc_A658F8: LdPrVar
  loc_A658FA: LateMemCall
  loc_A65900: LitVarStr var_94, "    </th>"
  loc_A65905: PopAdLdVar
  loc_A65906: FLdPr Me
  loc_A65909: MemLdRfVar from_stack_1.htmFile
  loc_A6590C: LdPrVar
  loc_A6590E: LateMemCall
  loc_A65914: LitVarStr var_94, "  </tr>"
  loc_A65919: PopAdLdVar
  loc_A6591A: FLdPr Me
  loc_A6591D: MemLdRfVar from_stack_1.htmFile
  loc_A65920: LdPrVar
  loc_A65922: LateMemCall
  loc_A65928: LitVarStr var_94, "  <tr>"
  loc_A6592D: PopAdLdVar
  loc_A6592E: FLdPr Me
  loc_A65931: MemLdRfVar from_stack_1.htmFile
  loc_A65934: LdPrVar
  loc_A65936: LateMemCall
  loc_A6593C: LitVarStr var_94, "    <th>"
  loc_A65941: PopAdLdVar
  loc_A65942: FLdPr Me
  loc_A65945: MemLdRfVar from_stack_1.htmFile
  loc_A65948: LdPrVar
  loc_A6594A: LateMemCall
  loc_A65950: LitVarStr var_A4, "      <p align=""left"" class=""Titulo2"">"
  loc_A65955: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6595A: FStVarCopyObj var_C4
  loc_A6595D: FLdRfVar var_C4
  loc_A65960: FLdRfVar var_DC
  loc_A65963: ImpAdCallFPR4  = Ucase()
  loc_A65968: FLdRfVar var_DC
  loc_A6596B: ConcatVar var_EC
  loc_A6596F: LitVarStr var_FC, "<br>"
  loc_A65974: ConcatVar var_10C
  loc_A65978: PopAdLdVar
  loc_A65979: FLdPr Me
  loc_A6597C: MemLdRfVar from_stack_1.htmFile
  loc_A6597F: LdPrVar
  loc_A65981: LateMemCall
  loc_A65987: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A65992: FLdRfVar var_CA
  loc_A65995: FLdPr Me
  loc_A65998: VCallAd Control_ID_cboMes
  loc_A6599B: FStAdFunc var_124
  loc_A6599E: FLdPr var_124
  loc_A659A1:  = Me.ListIndex
  loc_A659A6: FLdRfVar var_12C
  loc_A659A9: FLdI2 var_CA
  loc_A659AC: FLdPr Me
  loc_A659AF: VCallAd Control_ID_cboMes
  loc_A659B2: FStAdFunc var_128
  loc_A659B5: FLdPr var_128
  loc_A659B8:  = Me.ItemData
  loc_A659BD: FLdRfVar var_134
  loc_A659C0: FLdPr Me
  loc_A659C3: VCallAd Control_ID_cboPeriodo
  loc_A659C6: FStAdFunc var_130
  loc_A659C9: FLdPr var_130
  loc_A659CC:  = Me.Text
  loc_A659D1: ILdRf var_134
  loc_A659D4: CI2Str
  loc_A659D6: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A659DB: CVarStr var_C4
  loc_A659DE: FLdRfVar var_DC
  loc_A659E1: ImpAdCallFPR4  = Month()
  loc_A659E6: LitStr "      MES DE: "
  loc_A659E9: FLdRfVar var_A8
  loc_A659EC: FLdPr Me
  loc_A659EF: VCallAd Control_ID_cboMes
  loc_A659F2: FStAdFunc var_C8
  loc_A659F5: FLdPr var_C8
  loc_A659F8:  = Me.Text
  loc_A659FD: ILdRf var_A8
  loc_A65A00: ConcatStr
  loc_A65A01: FStStrNoPop var_AC
  loc_A65A04: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AÑO: "
  loc_A65A07: ConcatStr
  loc_A65A08: FStStrNoPop var_B4
  loc_A65A0B: FLdRfVar var_B0
  loc_A65A0E: FLdPr Me
  loc_A65A11: VCallAd Control_ID_cboPeriodo
  loc_A65A14: FStAdFunc var_120
  loc_A65A17: FLdPr var_120
  loc_A65A1A:  = Me.Text
  loc_A65A1F: ILdRf var_B0
  loc_A65A22: ConcatStr
  loc_A65A23: CVarStr var_174
  loc_A65A26: LitVarStr var_FC, vbNullString
  loc_A65A2B: FStVarCopyObj var_154
  loc_A65A2E: FLdRfVar var_154
  loc_A65A31: LitVarStr var_A4, " (PROVISORIO)"
  loc_A65A36: FStVarCopyObj var_144
  loc_A65A39: FLdRfVar var_144
  loc_A65A3C: ILdRf var_12C
  loc_A65A3F: CVarI4
  loc_A65A43: HardType
  loc_A65A44: FLdRfVar var_DC
  loc_A65A47: GtVar var_EC
  loc_A65A4B: FStVar var_10C
  loc_A65A4F: FLdRfVar var_10C
  loc_A65A52: FLdRfVar var_164
  loc_A65A55: ImpAdCallFPR4  = IIf(, , )
  loc_A65A5A: FLdRfVar var_164
  loc_A65A5D: ConcatVar var_184
  loc_A65A61: LitVarStr var_11C, "</p></th>"
  loc_A65A66: ConcatVar var_194
  loc_A65A6A: PopAdLdVar
  loc_A65A6B: FLdPr Me
  loc_A65A6E: MemLdRfVar from_stack_1.htmFile
  loc_A65A71: LdPrVar
  loc_A65A73: LateMemCall
  loc_A65A79: FFreeStr var_A8 = "": var_AC = "": var_B4 = "": var_B0 = ""
  loc_A65A86: FFreeAd var_C8 = "": var_120 = "": var_124 = "": var_128 = ""
  loc_A65A93: FFreeVar var_C4 = "": var_DC = "": var_10C = "": var_144 = "": var_154 = "": var_174 = "": var_164 = "": var_184 = ""
  loc_A65AA8: LitVarStr var_94, "  </tr>"
  loc_A65AAD: PopAdLdVar
  loc_A65AAE: FLdPr Me
  loc_A65AB1: MemLdRfVar from_stack_1.htmFile
  loc_A65AB4: LdPrVar
  loc_A65AB6: LateMemCall
  loc_A65ABC: LitVarStr var_94, "</table><p>&nbsp;</p>"
  loc_A65AC1: PopAdLdVar
  loc_A65AC2: FLdPr Me
  loc_A65AC5: MemLdRfVar from_stack_1.htmFile
  loc_A65AC8: LdPrVar
  loc_A65ACA: LateMemCall
  loc_A65AD0: ExitProcHresult
End Function

Private Function Proc_258_22_A00D98() 'A00D98
  'Data Table: 468390
  loc_A00C2C: LitVarStr var_94, "</table>"
  loc_A00C31: PopAdLdVar
  loc_A00C32: FLdPr Me
  loc_A00C35: MemLdRfVar from_stack_1.htmFile
  loc_A00C38: LdPrVar
  loc_A00C3A: LateMemCall
  loc_A00C40: LitVarStr var_94, "<br>"
  loc_A00C45: PopAdLdVar
  loc_A00C46: FLdPr Me
  loc_A00C49: MemLdRfVar from_stack_1.htmFile
  loc_A00C4C: LdPrVar
  loc_A00C4E: LateMemCall
  loc_A00C54: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A00C59: PopAdLdVar
  loc_A00C5A: FLdPr Me
  loc_A00C5D: MemLdRfVar from_stack_1.htmFile
  loc_A00C60: LdPrVar
  loc_A00C62: LateMemCall
  loc_A00C68: LitVarStr var_94, "  <tr>"
  loc_A00C6D: PopAdLdVar
  loc_A00C6E: FLdPr Me
  loc_A00C71: MemLdRfVar from_stack_1.htmFile
  loc_A00C74: LdPrVar
  loc_A00C76: LateMemCall
  loc_A00C7C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A00C81: PopAdLdVar
  loc_A00C82: FLdPr Me
  loc_A00C85: MemLdRfVar from_stack_1.htmFile
  loc_A00C88: LdPrVar
  loc_A00C8A: LateMemCall
  loc_A00C90: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A00C95: PopAdLdVar
  loc_A00C96: FLdPr Me
  loc_A00C99: MemLdRfVar from_stack_1.htmFile
  loc_A00C9C: LdPrVar
  loc_A00C9E: LateMemCall
  loc_A00CA4: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A00CA9: PopAdLdVar
  loc_A00CAA: FLdPr Me
  loc_A00CAD: MemLdRfVar from_stack_1.htmFile
  loc_A00CB0: LdPrVar
  loc_A00CB2: LateMemCall
  loc_A00CB8: LitVarStr var_94, "          <map name=""Map"">"
  loc_A00CBD: PopAdLdVar
  loc_A00CBE: FLdPr Me
  loc_A00CC1: MemLdRfVar from_stack_1.htmFile
  loc_A00CC4: LdPrVar
  loc_A00CC6: LateMemCall
  loc_A00CCC: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A00CD1: PopAdLdVar
  loc_A00CD2: FLdPr Me
  loc_A00CD5: MemLdRfVar from_stack_1.htmFile
  loc_A00CD8: LdPrVar
  loc_A00CDA: LateMemCall
  loc_A00CE0: LitVarStr var_94, "          </map>"
  loc_A00CE5: PopAdLdVar
  loc_A00CE6: FLdPr Me
  loc_A00CE9: MemLdRfVar from_stack_1.htmFile
  loc_A00CEC: LdPrVar
  loc_A00CEE: LateMemCall
  loc_A00CF4: LitVarStr var_94, "    </div></th>"
  loc_A00CF9: PopAdLdVar
  loc_A00CFA: FLdPr Me
  loc_A00CFD: MemLdRfVar from_stack_1.htmFile
  loc_A00D00: LdPrVar
  loc_A00D02: LateMemCall
  loc_A00D08: LitVarStr var_94, "  </tr>"
  loc_A00D0D: PopAdLdVar
  loc_A00D0E: FLdPr Me
  loc_A00D11: MemLdRfVar from_stack_1.htmFile
  loc_A00D14: LdPrVar
  loc_A00D16: LateMemCall
  loc_A00D1C: LitVarStr var_94, "  <tr>"
  loc_A00D21: PopAdLdVar
  loc_A00D22: FLdPr Me
  loc_A00D25: MemLdRfVar from_stack_1.htmFile
  loc_A00D28: LdPrVar
  loc_A00D2A: LateMemCall
  loc_A00D30: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A00D35: PopAdLdVar
  loc_A00D36: FLdPr Me
  loc_A00D39: MemLdRfVar from_stack_1.htmFile
  loc_A00D3C: LdPrVar
  loc_A00D3E: LateMemCall
  loc_A00D44: LitVarStr var_94, "  </tr>"
  loc_A00D49: PopAdLdVar
  loc_A00D4A: FLdPr Me
  loc_A00D4D: MemLdRfVar from_stack_1.htmFile
  loc_A00D50: LdPrVar
  loc_A00D52: LateMemCall
  loc_A00D58: LitVarStr var_94, "</table>"
  loc_A00D5D: PopAdLdVar
  loc_A00D5E: FLdPr Me
  loc_A00D61: MemLdRfVar from_stack_1.htmFile
  loc_A00D64: LdPrVar
  loc_A00D66: LateMemCall
  loc_A00D6C: LitVarStr var_94, "</body>"
  loc_A00D71: PopAdLdVar
  loc_A00D72: FLdPr Me
  loc_A00D75: MemLdRfVar from_stack_1.htmFile
  loc_A00D78: LdPrVar
  loc_A00D7A: LateMemCall
  loc_A00D80: LitVarStr var_94, "</html>"
  loc_A00D85: PopAdLdVar
  loc_A00D86: FLdPr Me
  loc_A00D89: MemLdRfVar from_stack_1.htmFile
  loc_A00D8C: LdPrVar
  loc_A00D8E: LateMemCall
  loc_A00D94: ExitProcHresult
End Function
