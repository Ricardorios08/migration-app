VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoII
  Caption = "Acuerdo 2988 - Anexo II - Estado de situación patrimonial"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9390
  ClientHeight = 3135
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 6015
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2880
    Width = 9390
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptA2988AnexoII.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoII.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4200
      Top = 480
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1920
      Top = 607
      Width = 975
      Height = 360
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1200
      Top = 690
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 600
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA2988AnexoII.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoII"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdXLS_Click() '96A9FC
  'Data Table: 452E8C
  loc_96A9E0: LitI2_Byte &HFF
  loc_96A9E2: LitI2_Byte 0
  loc_96A9E4: ILdRf Me
  loc_96A9E7: CastAd
  loc_96A9EA: FStAdFunc var_88
  loc_96A9ED: FLdRfVar var_88
  loc_96A9F0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A9F5: FFree1Ad var_88
  loc_96A9F8: ExitProcHresult
  loc_96A9F9: MidStr arg_35E
End Sub

Private Sub Form_Load(arg_14) '9C3450
  'Data Table: 452E8C
  loc_9C3390: LitI2_Byte &HFF
  loc_9C3392: ImpAdStI2 MemVar_C3D840
  loc_9C3395: ILdRf Me
  loc_9C3398: CastAd
  loc_9C339B: FStAdFunc var_8C
  loc_9C339E: FLdRfVar var_8C
  loc_9C33A1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9C33A6: FFree1Ad var_8C
  loc_9C33A9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9C33AC: FLdRfVar var_88
  loc_9C33AF: NewIfNullPr clsperiodo
  loc_9C33B2: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9C33B7: FLdRfVar var_88
  loc_9C33BA: NewIfNullPr clsperiodo
  loc_9C33BD: Call clsperiodo.MoveFirst()
  loc_9C33C2: FLdRfVar var_8E
  loc_9C33C5: FLdRfVar var_88
  loc_9C33C8: NewIfNullPr clsperiodo
  loc_9C33CB: from_stack_1 = clsperiodo.EOF
  loc_9C33D0: FLdI2 var_8E
  loc_9C33D3: NotI4
  loc_9C33D4: BranchF loc_9C3447
  loc_9C33D7: LitVar_Missing var_CC
  loc_9C33DA: PopAdLdVar
  loc_9C33DB: FLdRfVar var_B8
  loc_9C33DE: FLdRfVar var_A8
  loc_9C33E1: LitVarStr var_A4, "PeriInfo"
  loc_9C33E6: PopAdLdVar
  loc_9C33E7: FLdRfVar var_94
  loc_9C33EA: FLdRfVar var_8C
  loc_9C33ED: FLdRfVar var_88
  loc_9C33F0: NewIfNullPr clsperiodo
  loc_9C33F3: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9C33F8: FLdPr var_8C
  loc_9C33FB:  = Me.Fields
  loc_9C3400: FLdPr var_94
  loc_9C3403: from_stack_2 = Me.Item(from_stack_1)
  loc_9C3408: FLdPr var_A8
  loc_9C340B:  = Me.Value
  loc_9C3410: FLdRfVar var_B8
  loc_9C3413: CStrVarTmp
  loc_9C3414: FStStrNoPop var_BC
  loc_9C3417: FLdPr Me
  loc_9C341A: VCallAd Control_ID_cboPeriodo
  loc_9C341D: FStAdFunc var_D0
  loc_9C3420: FLdPr var_D0
  loc_9C3423: Me.AddItem from_stack_1, from_stack_2
  loc_9C3428: FFree1Str var_BC
  loc_9C342B: FFreeAd var_8C = "": var_94 = "": var_A8 = ""
  loc_9C3436: FFree1Var var_B8 = ""
  loc_9C3439: FLdRfVar var_88
  loc_9C343C: NewIfNullPr clsperiodo
  loc_9C343F: Call clsperiodo.MoveSiguiente()
  loc_9C3444: Branch loc_9C33C2
  loc_9C3447: Call cmdNueva_Click()
  loc_9C344C: ExitProcHresult
  loc_9C344D: EqI2
  loc_9C344E: CRec2Ansi arg_1400
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F660
  'Data Table: 452E8C
  loc_95F648: FLdPr Me
  loc_95F64B: VCallAd Control_ID_wbbReporte
  loc_95F64E: FStAdFunc var_88
  loc_95F651: FLdRfVar var_88
  loc_95F654: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F659: FFree1Ad var_88
  loc_95F65C: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95F790
  'Data Table: 452E8C
  loc_95F778: ILdRf Me
  loc_95F77B: CastAd
  loc_95F77E: FStAdFunc var_88
  loc_95F781: FLdRfVar var_88
  loc_95F784: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95F789: FFree1Ad var_88
  loc_95F78C: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95FB20
  'Data Table: 452E8C
  loc_95FB08: ILdRf Me
  loc_95FB0B: CastAd
  loc_95FB0E: FStAdFunc var_88
  loc_95FB11: FLdRfVar var_88
  loc_95FB14: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95FB19: FFree1Ad var_88
  loc_95FB1C: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988114
  'Data Table: 452E8C
  loc_9880DC: FLdPr Me
  loc_9880DF: VCallAd Control_ID_statusBar
  loc_9880E2: FStAdFunc var_88
  loc_9880E5: FLdPr var_88
  loc_9880E8: LateIdLdVar var_98 DispID_1 0
  loc_9880EF: CStrVarTmp
  loc_9880F0: CVarStr var_A8
  loc_9880F3: PopAdLdVar
  loc_9880F4: FLdPr Me
  loc_9880F7: VCallAd Control_ID_statusBar
  loc_9880FA: FStAdFunc var_BC
  loc_9880FD: FLdPr var_BC
  loc_988100: LateIdSt
  loc_988105: FFreeAd var_88 = ""
  loc_98810C: FFreeVar var_98 = ""
  loc_988113: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97AA00
  'Data Table: 452E8C
  loc_97A9D0: LitVarStr var_94, "Cerrando..."
  loc_97A9D5: PopAdLdVar
  loc_97A9D6: FLdPr Me
  loc_97A9D9: VCallAd Control_ID_statusBar
  loc_97A9DC: FStAdFunc var_A8
  loc_97A9DF: FLdPr var_A8
  loc_97A9E2: LateIdSt
  loc_97A9E7: FFree1Ad var_A8
  loc_97A9EA: ILdRf Me
  loc_97A9ED: FStAdNoPop
  loc_97A9F1: ImpAdLdRf MemVar_C44F9C
  loc_97A9F4: NewIfNullPr Me
  loc_97A9F7: Me.Global.Unload from_stack_1
  loc_97A9FC: FFree1Ad var_A8
  loc_97A9FF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click(arg_18) '95FAD4
  'Data Table: 452E8C
  loc_95FABC: ILdRf Me
  loc_95FABF: CastAd
  loc_95FAC2: FStAdFunc var_88
  loc_95FAC5: FLdRfVar var_88
  loc_95FAC8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95FACD: FFree1Ad var_88
  loc_95FAD0: ExitProcHresult
  loc_95FAD1: FLdFPR8 arg_18
End Sub

Private Sub cmdNueva_Click() '991F34
  'Data Table: 452E8C
  loc_991EE4: LitI2_Byte 0
  loc_991EE6: FLdPr Me
  loc_991EE9: MemStI2 bGenerado
  loc_991EEC: LitI2_Byte &HFF
  loc_991EEE: FLdPr Me
  loc_991EF1: MemStI2 bLogos
  loc_991EF4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_991EF9: ImpAdLdI2 MemVar_C3D064
  loc_991EFC: CStrUI1
  loc_991EFE: FStStrNoPop var_88
  loc_991F01: FLdPr Me
  loc_991F04: VCallAd Control_ID_cboPeriodo
  loc_991F07: FStAdFunc var_8C
  loc_991F0A: FLdPr var_8C
  loc_991F0D: Me.Text = from_stack_1
  loc_991F12: FFree1Str var_88
  loc_991F15: FFree1Ad var_8C
  loc_991F18: Call HabilitarCriterio()
  loc_991F1D: ILdRf Me
  loc_991F20: CastAd
  loc_991F23: FStAdFunc var_8C
  loc_991F26: FLdRfVar var_8C
  loc_991F29: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_991F2E: FFree1Ad var_8C
  loc_991F31: ExitProcHresult
  loc_991F32: NewIfNullAd
End Sub

Private Sub cmdPdf_Click() '9904A4
  'Data Table: 452E8C
  loc_99045C: LitStr "Acuerdo 2988 Anexo II "
  loc_99045F: FLdRfVar var_8C
  loc_990462: FLdPr Me
  loc_990465: VCallAd Control_ID_cboPeriodo
  loc_990468: FStAdFunc var_88
  loc_99046B: FLdPr var_88
  loc_99046E:  = Me.Text
  loc_990473: ILdRf var_8C
  loc_990476: ConcatStr
  loc_990477: FStStrNoPop var_90
  loc_99047A: FLdPr Me
  loc_99047D: Me.Tag = from_stack_1
  loc_990482: FFreeStr var_8C = ""
  loc_990489: FFree1Ad var_88
  loc_99048C: LitI2_Byte 0
  loc_99048E: ILdRf Me
  loc_990491: CastAd
  loc_990494: FStAdFunc var_88
  loc_990497: FLdRfVar var_88
  loc_99049A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_99049F: FFree1Ad var_88
  loc_9904A2: ExitProcHresult
End Sub

Private Sub cmdTxt_Click(arg_14) '96EB78
  'Data Table: 452E8C
  loc_96EB54: LitStr "EstSitPatrimonial.txt"
  loc_96EB57: FLdPr Me
  loc_96EB5A: Me.Tag = from_stack_1
  loc_96EB5F: LitI2_Byte 0
  loc_96EB61: ILdRf Me
  loc_96EB64: CastAd
  loc_96EB67: FStAdFunc var_88
  loc_96EB6A: FLdRfVar var_88
  loc_96EB6D: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_96EB72: FFree1Ad var_88
  loc_96EB75: ExitProcHresult
  loc_96EB76: FStVarCopyObj arg_1400
End Sub

Public Function htmFileGet() '453AA4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '453AB3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '453AC2
  htmFile = Value
End Sub

Public Function txtFileGet() '453AD1
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '453AE0
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '453AEF
  txtFile = Value
End Sub

Public Function bLogosGet() '453AFE
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '453B0D
  bLogos = Value
End Sub

Public Function bGeneradoGet() '453B1C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '453B2B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984A0C
  'Data Table: 452E8C
  loc_9849D8: LitI4 0
  loc_9849DD: LitI4 0
  loc_9849E2: FLdRfVar var_88
  loc_9849E5: Redim
  loc_9849EF: FLdPr Me
  loc_9849F2: VCallAd Control_ID_cboPeriodo
  loc_9849F5: CVarAd
  loc_9849F9: ParmAry1St
  loc_9849FF: FLdRfVar var_88
  loc_984A02: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984A07: FLdRfVar var_88
  loc_984A0A: Erase
  loc_984A0B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B69D38
  'Data Table: 452E8C
  loc_B691BC: FLdPr Me
  loc_B691BF: MemLdI2 bGenerado
  loc_B691C2: BranchF loc_B691C6
  loc_B691C5: ExitProcHresult
  loc_B691C6: LitVarStr var_98, "Generando reporte..."
  loc_B691CB: PopAdLdVar
  loc_B691CC: FLdPr Me
  loc_B691CF: VCallAd Control_ID_statusBar
  loc_B691D2: FStAdFunc var_AC
  loc_B691D5: FLdPr var_AC
  loc_B691D8: LateIdSt
  loc_B691DD: FFree1Ad var_AC
  loc_B691E0: LitI4 &HB
  loc_B691E5: CI2I4
  loc_B691E6: FLdPr Me
  loc_B691E9: Me.MousePointer = from_stack_1
  loc_B691EE: LitI4 0
  loc_B691F3: LitI4 6
  loc_B691F8: FLdRfVar var_B0
  loc_B691FB: Redim
  loc_B69205: FLdPr Me
  loc_B69208: MemLdRfVar from_stack_1.global_128
  loc_B6920B: CVarRef
  loc_B69210: ParmAry1St
  loc_B69216: FLdPr Me
  loc_B69219: MemLdRfVar from_stack_1.global_132
  loc_B6921C: CVarRef
  loc_B69221: ParmAry1St
  loc_B69227: FLdPr Me
  loc_B6922A: MemLdRfVar from_stack_1.global_136
  loc_B6922D: CVarRef
  loc_B69232: ParmAry1St
  loc_B69238: FLdPr Me
  loc_B6923B: MemLdRfVar from_stack_1.global_140
  loc_B6923E: CVarRef
  loc_B69243: ParmAry1St
  loc_B69249: FLdPr Me
  loc_B6924C: MemLdRfVar from_stack_1.global_144
  loc_B6924F: CVarRef
  loc_B69254: ParmAry1St
  loc_B6925A: FLdPr Me
  loc_B6925D: MemLdRfVar from_stack_1.global_148
  loc_B69260: CVarRef
  loc_B69265: ParmAry1St
  loc_B6926B: FLdPr Me
  loc_B6926E: MemLdRfVar from_stack_1.global_152
  loc_B69271: CVarRef
  loc_B69276: ParmAry1St
  loc_B6927C: FLdRfVar var_B0
  loc_B6927F: Call Proc_146_26_972190()
  loc_B69284: FLdRfVar var_B0
  loc_B69287: Erase
  loc_B69288: FLdPr Me
  loc_B6928B: MemLdRfVar from_stack_1.global_88
  loc_B6928E: NewIfNullAd
  loc_B69291: FStAd var_104 
  loc_B69295: LitStr "SELECT cc.CodiCuco CodiTicu, DetaTicu, SUM(DebeMoas)-SUM(HabeMoas) AS SaldMoas"
  loc_B69298: LitStr " FROM moviasiento ma"
  loc_B6929B: ConcatStr
  loc_B6929C: FStStrNoPop var_108
  loc_B6929F: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_B692A2: ConcatStr
  loc_B692A3: FStStrNoPop var_10C
  loc_B692A6: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B692A9: ConcatStr
  loc_B692AA: FStStrNoPop var_110
  loc_B692AD: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B692B0: ConcatStr
  loc_B692B1: FStStrNoPop var_114
  loc_B692B4: LitStr " WHERE ma.PeriInfo = "
  loc_B692B7: ConcatStr
  loc_B692B8: FStStrNoPop var_11C
  loc_B692BB: FLdRfVar var_118
  loc_B692BE: FLdPr Me
  loc_B692C1: VCallAd Control_ID_cboPeriodo
  loc_B692C4: FStAdFunc var_AC
  loc_B692C7: FLdPr var_AC
  loc_B692CA:  = Me.Text
  loc_B692CF: ILdRf var_118
  loc_B692D2: ConcatStr
  loc_B692D3: FStStrNoPop var_120
  loc_B692D6: LitStr " AND CodiTias <> 16 AND CodiTias <> 25 AND CodiTias <> 27 AND cc.CodiTicu LIKE '11" & Chr(37) & "'"
  loc_B692D9: ConcatStr
  loc_B692DA: FStStrNoPop var_124
  loc_B692DD: LitStr " GROUP BY cc.CodiTicu"
  loc_B692E0: ConcatStr
  loc_B692E1: FStStrNoPop var_128
  loc_B692E4: LitStr " Having SaldMoas != 0"
  loc_B692E7: ConcatStr
  loc_B692E8: FStStrNoPop var_12C
  loc_B692EB: LitStr " ORDER BY cc.CodiTicu;"
  loc_B692EE: ConcatStr
  loc_B692EF: FStStrNoPop var_130
  loc_B692F2: FLdPr var_104
  loc_B692F5: Call clsbase.RedefineRS(from_stack_1v)
  loc_B692FA: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B69313: FFree1Ad var_AC
  loc_B69316: FLdRfVar var_134
  loc_B69319: FLdPr var_104
  loc_B6931C: from_stack_1 = clsbase.RecordCount
  loc_B69321: ILdRf var_134
  loc_B69324: LitI4 0
  loc_B69329: GtI4
  loc_B6932A: BranchF loc_B69507
  loc_B6932D: LitI2_Byte &HFF
  loc_B6932F: FLdPr Me
  loc_B69332: MemStI2 global_100
  loc_B69335: LitI4 1
  loc_B6933A: FLdRfVar var_134
  loc_B6933D: FLdPr var_104
  loc_B69340: from_stack_1 = clsbase.RecordCount
  loc_B69345: ILdRf var_134
  loc_B69348: FLdPr Me
  loc_B6934B: MemLdRfVar from_stack_1.global_96
  loc_B6934E: Redim
  loc_B69358: FLdPr var_104
  loc_B6935B: Call clsbase.MoveFirst()
  loc_B69360: LitI2_Byte 1
  loc_B69362: FLdPr Me
  loc_B69365: MemLdRfVar from_stack_1.global_160
  loc_B69368: FLdRfVar var_134
  loc_B6936B: FLdPr var_104
  loc_B6936E: from_stack_1 = clsbase.RecordCount
  loc_B69373: ILdRf var_134
  loc_B69376: CI2I4
  loc_B69377: ForI2 var_138
  loc_B6937D: FLdRfVar var_140
  loc_B69380: LitVarStr var_98, "CodiTicu"
  loc_B69385: PopAdLdVar
  loc_B69386: FLdRfVar var_13C
  loc_B69389: FLdRfVar var_AC
  loc_B6938C: FLdPr var_104
  loc_B6938F: from_stack_1v = clsbase.RsFrmGet()
  loc_B69394: FLdPr var_AC
  loc_B69397:  = Me.Fields
  loc_B6939C: FLdPr var_13C
  loc_B6939F: from_stack_2 = Me.Item(from_stack_1)
  loc_B693A4: LitI2_Byte 0
  loc_B693A6: LitVar_Missing var_164
  loc_B693A9: LitI2_Byte 0
  loc_B693AB: FLdZeroAd var_140
  loc_B693AE: CVarAd
  loc_B693B2: PopAdLdVar
  loc_B693B3: FLdPr Me
  loc_B693B6: MemLdI2 global_160
  loc_B693B9: CI4UI1
  loc_B693BA: FLdPr Me
  loc_B693BD: MemLdStr global_96
  loc_B693C0: AryLock
  loc_B693C3: Ary1LdPr
  loc_B693C4: MemLdRfVar from_stack_1.global_0
  loc_B693C7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B693CC: AryUnlock
  loc_B693CF: FFreeAd var_AC = ""
  loc_B693D6: FFreeVar var_154 = ""
  loc_B693DD: FLdRfVar var_140
  loc_B693E0: LitVarStr var_98, "DetaTicu"
  loc_B693E5: PopAdLdVar
  loc_B693E6: FLdRfVar var_13C
  loc_B693E9: FLdRfVar var_AC
  loc_B693EC: FLdPr var_104
  loc_B693EF: from_stack_1v = clsbase.RsFrmGet()
  loc_B693F4: FLdPr var_AC
  loc_B693F7:  = Me.Fields
  loc_B693FC: FLdPr var_13C
  loc_B693FF: from_stack_2 = Me.Item(from_stack_1)
  loc_B69404: LitI2_Byte 0
  loc_B69406: LitVar_Missing var_164
  loc_B69409: LitI2_Byte 0
  loc_B6940B: FLdZeroAd var_140
  loc_B6940E: CVarAd
  loc_B69412: PopAdLdVar
  loc_B69413: FLdPr Me
  loc_B69416: MemLdI2 global_160
  loc_B69419: CI4UI1
  loc_B6941A: FLdPr Me
  loc_B6941D: MemLdStr global_96
  loc_B69420: AryLock
  loc_B69423: Ary1LdPr
  loc_B69424: MemLdRfVar from_stack_1.global_4
  loc_B69427: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B6942C: AryUnlock
  loc_B6942F: FFreeAd var_AC = ""
  loc_B69436: FFreeVar var_154 = ""
  loc_B6943D: FLdRfVar var_140
  loc_B69440: LitVarStr var_98, "SaldMoas"
  loc_B69445: PopAdLdVar
  loc_B69446: FLdRfVar var_13C
  loc_B69449: FLdRfVar var_AC
  loc_B6944C: FLdPr var_104
  loc_B6944F: from_stack_1v = clsbase.RsFrmGet()
  loc_B69454: FLdPr var_AC
  loc_B69457:  = Me.Fields
  loc_B6945C: FLdPr var_13C
  loc_B6945F: from_stack_2 = Me.Item(from_stack_1)
  loc_B69464: LitI2_Byte 0
  loc_B69466: FLdPr Me
  loc_B69469: MemLdRfVar from_stack_1.global_128
  loc_B6946C: CVarRef
  loc_B69471: LitI2_Byte &HFF
  loc_B69473: FLdZeroAd var_140
  loc_B69476: CVarAd
  loc_B6947A: PopAdLdVar
  loc_B6947B: FLdPr Me
  loc_B6947E: MemLdI2 global_160
  loc_B69481: CI4UI1
  loc_B69482: FLdPr Me
  loc_B69485: MemLdStr global_96
  loc_B69488: AryLock
  loc_B6948B: Ary1LdPr
  loc_B6948C: MemLdRfVar from_stack_1.global_8
  loc_B6948F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69494: AryUnlock
  loc_B69497: FFreeAd var_AC = ""
  loc_B6949E: FFree1Var var_154 = ""
  loc_B694A1: FLdRfVar var_140
  loc_B694A4: LitVarStr var_98, "SaldMoas"
  loc_B694A9: PopAdLdVar
  loc_B694AA: FLdRfVar var_13C
  loc_B694AD: FLdRfVar var_AC
  loc_B694B0: FLdPr var_104
  loc_B694B3: from_stack_1v = clsbase.RsFrmGet()
  loc_B694B8: FLdPr var_AC
  loc_B694BB:  = Me.Fields
  loc_B694C0: FLdPr var_13C
  loc_B694C3: from_stack_2 = Me.Item(from_stack_1)
  loc_B694C8: LitI2_Byte 0
  loc_B694CA: FLdPr Me
  loc_B694CD: MemLdRfVar from_stack_1.global_136
  loc_B694D0: CVarRef
  loc_B694D5: LitI2_Byte &HFF
  loc_B694D7: FLdZeroAd var_140
  loc_B694DA: CVarAd
  loc_B694DE: PopAdLdVar
  loc_B694DF: FLdRfVar var_88
  loc_B694E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B694E7: FFreeAd var_AC = ""
  loc_B694EE: FFree1Var var_154 = ""
  loc_B694F1: FLdPr var_104
  loc_B694F4: Call clsbase.MoveSiguiente()
  loc_B694F9: FLdPr Me
  loc_B694FC: MemLdRfVar from_stack_1.global_160
  loc_B694FF: NextI2 var_138, loc_B6937D
  loc_B69504: Branch loc_B6950F
  loc_B69507: LitI2_Byte 0
  loc_B69509: FLdPr Me
  loc_B6950C: MemStI2 global_100
  loc_B6950F: LitStr "SELECT cc.CodiCuco CodiTicu, DetaTicu, SUM(DebeMoas)-SUM(HabeMoas) as SaldMoas"
  loc_B69512: LitStr " FROM moviasiento ma"
  loc_B69515: ConcatStr
  loc_B69516: FStStrNoPop var_108
  loc_B69519: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_B6951C: ConcatStr
  loc_B6951D: FStStrNoPop var_10C
  loc_B69520: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B69523: ConcatStr
  loc_B69524: FStStrNoPop var_110
  loc_B69527: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B6952A: ConcatStr
  loc_B6952B: FStStrNoPop var_114
  loc_B6952E: LitStr " WHERE ma.PeriInfo = "
  loc_B69531: ConcatStr
  loc_B69532: FStStrNoPop var_11C
  loc_B69535: FLdRfVar var_118
  loc_B69538: FLdPr Me
  loc_B6953B: VCallAd Control_ID_cboPeriodo
  loc_B6953E: FStAdFunc var_AC
  loc_B69541: FLdPr var_AC
  loc_B69544:  = Me.Text
  loc_B69549: ILdRf var_118
  loc_B6954C: ConcatStr
  loc_B6954D: FStStrNoPop var_120
  loc_B69550: LitStr " AND CodiTias <> 16 AND CodiTias <> 25 AND CodiTias <> 27 AND cc.CodiTicu LIKE '12" & Chr(37) & "'"
  loc_B69553: ConcatStr
  loc_B69554: FStStrNoPop var_124
  loc_B69557: LitStr " GROUP BY cc.CodiTicu"
  loc_B6955A: ConcatStr
  loc_B6955B: FStStrNoPop var_128
  loc_B6955E: LitStr " Having SaldMoas != 0"
  loc_B69561: ConcatStr
  loc_B69562: FStStrNoPop var_12C
  loc_B69565: LitStr " ORDER BY cc.CodiTicu;"
  loc_B69568: ConcatStr
  loc_B69569: FStStrNoPop var_130
  loc_B6956C: FLdPr var_104
  loc_B6956F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B69574: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B6958D: FFree1Ad var_AC
  loc_B69590: FLdRfVar var_134
  loc_B69593: FLdPr var_104
  loc_B69596: from_stack_1 = clsbase.RecordCount
  loc_B6959B: ILdRf var_134
  loc_B6959E: LitI4 0
  loc_B695A3: GtI4
  loc_B695A4: BranchF loc_B69781
  loc_B695A7: LitI2_Byte &HFF
  loc_B695A9: FLdPr Me
  loc_B695AC: MemStI2 global_108
  loc_B695AF: LitI4 1
  loc_B695B4: FLdRfVar var_134
  loc_B695B7: FLdPr var_104
  loc_B695BA: from_stack_1 = clsbase.RecordCount
  loc_B695BF: ILdRf var_134
  loc_B695C2: FLdPr Me
  loc_B695C5: MemLdRfVar from_stack_1.global_104
  loc_B695C8: Redim
  loc_B695D2: FLdPr var_104
  loc_B695D5: Call clsbase.MoveFirst()
  loc_B695DA: LitI2_Byte 1
  loc_B695DC: FLdPr Me
  loc_B695DF: MemLdRfVar from_stack_1.global_160
  loc_B695E2: FLdRfVar var_134
  loc_B695E5: FLdPr var_104
  loc_B695E8: from_stack_1 = clsbase.RecordCount
  loc_B695ED: ILdRf var_134
  loc_B695F0: CI2I4
  loc_B695F1: ForI2 var_168
  loc_B695F7: FLdRfVar var_140
  loc_B695FA: LitVarStr var_98, "CodiTicu"
  loc_B695FF: PopAdLdVar
  loc_B69600: FLdRfVar var_13C
  loc_B69603: FLdRfVar var_AC
  loc_B69606: FLdPr var_104
  loc_B69609: from_stack_1v = clsbase.RsFrmGet()
  loc_B6960E: FLdPr var_AC
  loc_B69611:  = Me.Fields
  loc_B69616: FLdPr var_13C
  loc_B69619: from_stack_2 = Me.Item(from_stack_1)
  loc_B6961E: LitI2_Byte 0
  loc_B69620: LitVar_Missing var_164
  loc_B69623: LitI2_Byte 0
  loc_B69625: FLdZeroAd var_140
  loc_B69628: CVarAd
  loc_B6962C: PopAdLdVar
  loc_B6962D: FLdPr Me
  loc_B69630: MemLdI2 global_160
  loc_B69633: CI4UI1
  loc_B69634: FLdPr Me
  loc_B69637: MemLdStr global_104
  loc_B6963A: AryLock
  loc_B6963D: Ary1LdPr
  loc_B6963E: MemLdRfVar from_stack_1.global_0
  loc_B69641: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69646: AryUnlock
  loc_B69649: FFreeAd var_AC = ""
  loc_B69650: FFreeVar var_154 = ""
  loc_B69657: FLdRfVar var_140
  loc_B6965A: LitVarStr var_98, "DetaTicu"
  loc_B6965F: PopAdLdVar
  loc_B69660: FLdRfVar var_13C
  loc_B69663: FLdRfVar var_AC
  loc_B69666: FLdPr var_104
  loc_B69669: from_stack_1v = clsbase.RsFrmGet()
  loc_B6966E: FLdPr var_AC
  loc_B69671:  = Me.Fields
  loc_B69676: FLdPr var_13C
  loc_B69679: from_stack_2 = Me.Item(from_stack_1)
  loc_B6967E: LitI2_Byte 0
  loc_B69680: LitVar_Missing var_164
  loc_B69683: LitI2_Byte 0
  loc_B69685: FLdZeroAd var_140
  loc_B69688: CVarAd
  loc_B6968C: PopAdLdVar
  loc_B6968D: FLdPr Me
  loc_B69690: MemLdI2 global_160
  loc_B69693: CI4UI1
  loc_B69694: FLdPr Me
  loc_B69697: MemLdStr global_104
  loc_B6969A: AryLock
  loc_B6969D: Ary1LdPr
  loc_B6969E: MemLdRfVar from_stack_1.global_4
  loc_B696A1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B696A6: AryUnlock
  loc_B696A9: FFreeAd var_AC = ""
  loc_B696B0: FFreeVar var_154 = ""
  loc_B696B7: FLdRfVar var_140
  loc_B696BA: LitVarStr var_98, "SaldMoas"
  loc_B696BF: PopAdLdVar
  loc_B696C0: FLdRfVar var_13C
  loc_B696C3: FLdRfVar var_AC
  loc_B696C6: FLdPr var_104
  loc_B696C9: from_stack_1v = clsbase.RsFrmGet()
  loc_B696CE: FLdPr var_AC
  loc_B696D1:  = Me.Fields
  loc_B696D6: FLdPr var_13C
  loc_B696D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B696DE: LitI2_Byte 0
  loc_B696E0: FLdPr Me
  loc_B696E3: MemLdRfVar from_stack_1.global_132
  loc_B696E6: CVarRef
  loc_B696EB: LitI2_Byte &HFF
  loc_B696ED: FLdZeroAd var_140
  loc_B696F0: CVarAd
  loc_B696F4: PopAdLdVar
  loc_B696F5: FLdPr Me
  loc_B696F8: MemLdI2 global_160
  loc_B696FB: CI4UI1
  loc_B696FC: FLdPr Me
  loc_B696FF: MemLdStr global_104
  loc_B69702: AryLock
  loc_B69705: Ary1LdPr
  loc_B69706: MemLdRfVar from_stack_1.global_8
  loc_B69709: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B6970E: AryUnlock
  loc_B69711: FFreeAd var_AC = ""
  loc_B69718: FFree1Var var_154 = ""
  loc_B6971B: FLdRfVar var_140
  loc_B6971E: LitVarStr var_98, "SaldMoas"
  loc_B69723: PopAdLdVar
  loc_B69724: FLdRfVar var_13C
  loc_B69727: FLdRfVar var_AC
  loc_B6972A: FLdPr var_104
  loc_B6972D: from_stack_1v = clsbase.RsFrmGet()
  loc_B69732: FLdPr var_AC
  loc_B69735:  = Me.Fields
  loc_B6973A: FLdPr var_13C
  loc_B6973D: from_stack_2 = Me.Item(from_stack_1)
  loc_B69742: LitI2_Byte 0
  loc_B69744: FLdPr Me
  loc_B69747: MemLdRfVar from_stack_1.global_136
  loc_B6974A: CVarRef
  loc_B6974F: LitI2_Byte &HFF
  loc_B69751: FLdZeroAd var_140
  loc_B69754: CVarAd
  loc_B69758: PopAdLdVar
  loc_B69759: FLdRfVar var_88
  loc_B6975C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69761: FFreeAd var_AC = ""
  loc_B69768: FFree1Var var_154 = ""
  loc_B6976B: FLdPr var_104
  loc_B6976E: Call clsbase.MoveSiguiente()
  loc_B69773: FLdPr Me
  loc_B69776: MemLdRfVar from_stack_1.global_160
  loc_B69779: NextI2 var_168, loc_B695F7
  loc_B6977E: Branch loc_B69789
  loc_B69781: LitI2_Byte 0
  loc_B69783: FLdPr Me
  loc_B69786: MemStI2 global_108
  loc_B69789: LitStr "SELECT cc.CodiCuco CodiTicu, DetaTicu, Sum(HabeMoas)-Sum(DebeMoas) as SaldMoas"
  loc_B6978C: LitStr " FROM moviasiento ma"
  loc_B6978F: ConcatStr
  loc_B69790: FStStrNoPop var_108
  loc_B69793: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_B69796: ConcatStr
  loc_B69797: FStStrNoPop var_10C
  loc_B6979A: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B6979D: ConcatStr
  loc_B6979E: FStStrNoPop var_110
  loc_B697A1: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B697A4: ConcatStr
  loc_B697A5: FStStrNoPop var_114
  loc_B697A8: LitStr " WHERE ma.PeriInfo = "
  loc_B697AB: ConcatStr
  loc_B697AC: FStStrNoPop var_11C
  loc_B697AF: FLdRfVar var_118
  loc_B697B2: FLdPr Me
  loc_B697B5: VCallAd Control_ID_cboPeriodo
  loc_B697B8: FStAdFunc var_AC
  loc_B697BB: FLdPr var_AC
  loc_B697BE:  = Me.Text
  loc_B697C3: ILdRf var_118
  loc_B697C6: ConcatStr
  loc_B697C7: FStStrNoPop var_120
  loc_B697CA: LitStr " AND CodiTias <> 16 AND CodiTias <> 25 AND CodiTias <> 27 AND cc.CodiTicu LIKE '21" & Chr(37) & "'"
  loc_B697CD: ConcatStr
  loc_B697CE: FStStrNoPop var_124
  loc_B697D1: LitStr " GROUP BY cc.CodiTicu"
  loc_B697D4: ConcatStr
  loc_B697D5: FStStrNoPop var_128
  loc_B697D8: LitStr " Having SaldMoas != 0"
  loc_B697DB: ConcatStr
  loc_B697DC: FStStrNoPop var_12C
  loc_B697DF: LitStr " ORDER BY cc.CodiTicu;"
  loc_B697E2: ConcatStr
  loc_B697E3: FStStrNoPop var_130
  loc_B697E6: FLdPr var_104
  loc_B697E9: Call clsbase.RedefineRS(from_stack_1v)
  loc_B697EE: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B69807: FFree1Ad var_AC
  loc_B6980A: FLdRfVar var_134
  loc_B6980D: FLdPr var_104
  loc_B69810: from_stack_1 = clsbase.RecordCount
  loc_B69815: ILdRf var_134
  loc_B69818: LitI4 0
  loc_B6981D: GtI4
  loc_B6981E: BranchF loc_B699FB
  loc_B69821: LitI2_Byte &HFF
  loc_B69823: FLdPr Me
  loc_B69826: MemStI2 global_116
  loc_B69829: LitI4 1
  loc_B6982E: FLdRfVar var_134
  loc_B69831: FLdPr var_104
  loc_B69834: from_stack_1 = clsbase.RecordCount
  loc_B69839: ILdRf var_134
  loc_B6983C: FLdPr Me
  loc_B6983F: MemLdRfVar from_stack_1.global_112
  loc_B69842: Redim
  loc_B6984C: FLdPr var_104
  loc_B6984F: Call clsbase.MoveFirst()
  loc_B69854: LitI2_Byte 1
  loc_B69856: FLdPr Me
  loc_B69859: MemLdRfVar from_stack_1.global_160
  loc_B6985C: FLdRfVar var_134
  loc_B6985F: FLdPr var_104
  loc_B69862: from_stack_1 = clsbase.RecordCount
  loc_B69867: ILdRf var_134
  loc_B6986A: CI2I4
  loc_B6986B: ForI2 var_16C
  loc_B69871: FLdRfVar var_140
  loc_B69874: LitVarStr var_98, "CodiTicu"
  loc_B69879: PopAdLdVar
  loc_B6987A: FLdRfVar var_13C
  loc_B6987D: FLdRfVar var_AC
  loc_B69880: FLdPr var_104
  loc_B69883: from_stack_1v = clsbase.RsFrmGet()
  loc_B69888: FLdPr var_AC
  loc_B6988B:  = Me.Fields
  loc_B69890: FLdPr var_13C
  loc_B69893: from_stack_2 = Me.Item(from_stack_1)
  loc_B69898: LitI2_Byte 0
  loc_B6989A: LitVar_Missing var_164
  loc_B6989D: LitI2_Byte 0
  loc_B6989F: FLdZeroAd var_140
  loc_B698A2: CVarAd
  loc_B698A6: PopAdLdVar
  loc_B698A7: FLdPr Me
  loc_B698AA: MemLdI2 global_160
  loc_B698AD: CI4UI1
  loc_B698AE: FLdPr Me
  loc_B698B1: MemLdStr global_112
  loc_B698B4: AryLock
  loc_B698B7: Ary1LdPr
  loc_B698B8: MemLdRfVar from_stack_1.global_0
  loc_B698BB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B698C0: AryUnlock
  loc_B698C3: FFreeAd var_AC = ""
  loc_B698CA: FFreeVar var_154 = ""
  loc_B698D1: FLdRfVar var_140
  loc_B698D4: LitVarStr var_98, "DetaTicu"
  loc_B698D9: PopAdLdVar
  loc_B698DA: FLdRfVar var_13C
  loc_B698DD: FLdRfVar var_AC
  loc_B698E0: FLdPr var_104
  loc_B698E3: from_stack_1v = clsbase.RsFrmGet()
  loc_B698E8: FLdPr var_AC
  loc_B698EB:  = Me.Fields
  loc_B698F0: FLdPr var_13C
  loc_B698F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B698F8: LitI2_Byte 0
  loc_B698FA: LitVar_Missing var_164
  loc_B698FD: LitI2_Byte 0
  loc_B698FF: FLdZeroAd var_140
  loc_B69902: CVarAd
  loc_B69906: PopAdLdVar
  loc_B69907: FLdPr Me
  loc_B6990A: MemLdI2 global_160
  loc_B6990D: CI4UI1
  loc_B6990E: FLdPr Me
  loc_B69911: MemLdStr global_112
  loc_B69914: AryLock
  loc_B69917: Ary1LdPr
  loc_B69918: MemLdRfVar from_stack_1.global_4
  loc_B6991B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69920: AryUnlock
  loc_B69923: FFreeAd var_AC = ""
  loc_B6992A: FFreeVar var_154 = ""
  loc_B69931: FLdRfVar var_140
  loc_B69934: LitVarStr var_98, "SaldMoas"
  loc_B69939: PopAdLdVar
  loc_B6993A: FLdRfVar var_13C
  loc_B6993D: FLdRfVar var_AC
  loc_B69940: FLdPr var_104
  loc_B69943: from_stack_1v = clsbase.RsFrmGet()
  loc_B69948: FLdPr var_AC
  loc_B6994B:  = Me.Fields
  loc_B69950: FLdPr var_13C
  loc_B69953: from_stack_2 = Me.Item(from_stack_1)
  loc_B69958: LitI2_Byte 0
  loc_B6995A: FLdPr Me
  loc_B6995D: MemLdRfVar from_stack_1.global_140
  loc_B69960: CVarRef
  loc_B69965: LitI2_Byte &HFF
  loc_B69967: FLdZeroAd var_140
  loc_B6996A: CVarAd
  loc_B6996E: PopAdLdVar
  loc_B6996F: FLdPr Me
  loc_B69972: MemLdI2 global_160
  loc_B69975: CI4UI1
  loc_B69976: FLdPr Me
  loc_B69979: MemLdStr global_112
  loc_B6997C: AryLock
  loc_B6997F: Ary1LdPr
  loc_B69980: MemLdRfVar from_stack_1.global_8
  loc_B69983: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69988: AryUnlock
  loc_B6998B: FFreeAd var_AC = ""
  loc_B69992: FFree1Var var_154 = ""
  loc_B69995: FLdRfVar var_140
  loc_B69998: LitVarStr var_98, "SaldMoas"
  loc_B6999D: PopAdLdVar
  loc_B6999E: FLdRfVar var_13C
  loc_B699A1: FLdRfVar var_AC
  loc_B699A4: FLdPr var_104
  loc_B699A7: from_stack_1v = clsbase.RsFrmGet()
  loc_B699AC: FLdPr var_AC
  loc_B699AF:  = Me.Fields
  loc_B699B4: FLdPr var_13C
  loc_B699B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B699BC: LitI2_Byte 0
  loc_B699BE: FLdPr Me
  loc_B699C1: MemLdRfVar from_stack_1.global_148
  loc_B699C4: CVarRef
  loc_B699C9: LitI2_Byte &HFF
  loc_B699CB: FLdZeroAd var_140
  loc_B699CE: CVarAd
  loc_B699D2: PopAdLdVar
  loc_B699D3: FLdRfVar var_88
  loc_B699D6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B699DB: FFreeAd var_AC = ""
  loc_B699E2: FFree1Var var_154 = ""
  loc_B699E5: FLdPr var_104
  loc_B699E8: Call clsbase.MoveSiguiente()
  loc_B699ED: FLdPr Me
  loc_B699F0: MemLdRfVar from_stack_1.global_160
  loc_B699F3: NextI2 var_16C, loc_B69871
  loc_B699F8: Branch loc_B69A03
  loc_B699FB: LitI2_Byte 0
  loc_B699FD: FLdPr Me
  loc_B69A00: MemStI2 global_116
  loc_B69A03: LitStr "SELECT cc.CodiCuco CodiTicu, DetaTicu, Sum(HabeMoas)-Sum(DebeMoas) as SaldMoas"
  loc_B69A06: LitStr " FROM moviasiento ma"
  loc_B69A09: ConcatStr
  loc_B69A0A: FStStrNoPop var_108
  loc_B69A0D: LitStr " INNER JOIN asiento a ON a.PeriInfo = ma.PeriInfo AND a.CodiAsie = ma.CodiAsie"
  loc_B69A10: ConcatStr
  loc_B69A11: FStStrNoPop var_10C
  loc_B69A14: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B69A17: ConcatStr
  loc_B69A18: FStStrNoPop var_110
  loc_B69A1B: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B69A1E: ConcatStr
  loc_B69A1F: FStStrNoPop var_114
  loc_B69A22: LitStr " WHERE ma.PeriInfo = "
  loc_B69A25: ConcatStr
  loc_B69A26: FStStrNoPop var_11C
  loc_B69A29: FLdRfVar var_118
  loc_B69A2C: FLdPr Me
  loc_B69A2F: VCallAd Control_ID_cboPeriodo
  loc_B69A32: FStAdFunc var_AC
  loc_B69A35: FLdPr var_AC
  loc_B69A38:  = Me.Text
  loc_B69A3D: ILdRf var_118
  loc_B69A40: ConcatStr
  loc_B69A41: FStStrNoPop var_120
  loc_B69A44: LitStr " AND CodiTias <> 16 AND CodiTias <> 25 AND CodiTias <> 27 AND cc.CodiTicu LIKE '22" & Chr(37) & "'"
  loc_B69A47: ConcatStr
  loc_B69A48: FStStrNoPop var_124
  loc_B69A4B: LitStr " GROUP BY cc.CodiTicu"
  loc_B69A4E: ConcatStr
  loc_B69A4F: FStStrNoPop var_128
  loc_B69A52: LitStr " Having SaldMoas != 0"
  loc_B69A55: ConcatStr
  loc_B69A56: FStStrNoPop var_12C
  loc_B69A59: LitStr " ORDER BY cc.CodiTicu;"
  loc_B69A5C: ConcatStr
  loc_B69A5D: FStStrNoPop var_130
  loc_B69A60: FLdPr var_104
  loc_B69A63: Call clsbase.RedefineRS(from_stack_1v)
  loc_B69A68: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B69A81: FFree1Ad var_AC
  loc_B69A84: FLdRfVar var_134
  loc_B69A87: FLdPr var_104
  loc_B69A8A: from_stack_1 = clsbase.RecordCount
  loc_B69A8F: ILdRf var_134
  loc_B69A92: LitI4 0
  loc_B69A97: GtI4
  loc_B69A98: BranchF loc_B69C75
  loc_B69A9B: LitI2_Byte &HFF
  loc_B69A9D: FLdPr Me
  loc_B69AA0: MemStI2 global_124
  loc_B69AA3: LitI4 1
  loc_B69AA8: FLdRfVar var_134
  loc_B69AAB: FLdPr var_104
  loc_B69AAE: from_stack_1 = clsbase.RecordCount
  loc_B69AB3: ILdRf var_134
  loc_B69AB6: FLdPr Me
  loc_B69AB9: MemLdRfVar from_stack_1.global_120
  loc_B69ABC: Redim
  loc_B69AC6: FLdPr var_104
  loc_B69AC9: Call clsbase.MoveFirst()
  loc_B69ACE: LitI2_Byte 1
  loc_B69AD0: FLdPr Me
  loc_B69AD3: MemLdRfVar from_stack_1.global_160
  loc_B69AD6: FLdRfVar var_134
  loc_B69AD9: FLdPr var_104
  loc_B69ADC: from_stack_1 = clsbase.RecordCount
  loc_B69AE1: ILdRf var_134
  loc_B69AE4: CI2I4
  loc_B69AE5: ForI2 var_170
  loc_B69AEB: FLdRfVar var_140
  loc_B69AEE: LitVarStr var_98, "CodiTicu"
  loc_B69AF3: PopAdLdVar
  loc_B69AF4: FLdRfVar var_13C
  loc_B69AF7: FLdRfVar var_AC
  loc_B69AFA: FLdPr var_104
  loc_B69AFD: from_stack_1v = clsbase.RsFrmGet()
  loc_B69B02: FLdPr var_AC
  loc_B69B05:  = Me.Fields
  loc_B69B0A: FLdPr var_13C
  loc_B69B0D: from_stack_2 = Me.Item(from_stack_1)
  loc_B69B12: LitI2_Byte 0
  loc_B69B14: LitVar_Missing var_164
  loc_B69B17: LitI2_Byte 0
  loc_B69B19: FLdZeroAd var_140
  loc_B69B1C: CVarAd
  loc_B69B20: PopAdLdVar
  loc_B69B21: FLdPr Me
  loc_B69B24: MemLdI2 global_160
  loc_B69B27: CI4UI1
  loc_B69B28: FLdPr Me
  loc_B69B2B: MemLdStr global_120
  loc_B69B2E: AryLock
  loc_B69B31: Ary1LdPr
  loc_B69B32: MemLdRfVar from_stack_1.global_0
  loc_B69B35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69B3A: AryUnlock
  loc_B69B3D: FFreeAd var_AC = ""
  loc_B69B44: FFreeVar var_154 = ""
  loc_B69B4B: FLdRfVar var_140
  loc_B69B4E: LitVarStr var_98, "DetaTicu"
  loc_B69B53: PopAdLdVar
  loc_B69B54: FLdRfVar var_13C
  loc_B69B57: FLdRfVar var_AC
  loc_B69B5A: FLdPr var_104
  loc_B69B5D: from_stack_1v = clsbase.RsFrmGet()
  loc_B69B62: FLdPr var_AC
  loc_B69B65:  = Me.Fields
  loc_B69B6A: FLdPr var_13C
  loc_B69B6D: from_stack_2 = Me.Item(from_stack_1)
  loc_B69B72: LitI2_Byte 0
  loc_B69B74: LitVar_Missing var_164
  loc_B69B77: LitI2_Byte 0
  loc_B69B79: FLdZeroAd var_140
  loc_B69B7C: CVarAd
  loc_B69B80: PopAdLdVar
  loc_B69B81: FLdPr Me
  loc_B69B84: MemLdI2 global_160
  loc_B69B87: CI4UI1
  loc_B69B88: FLdPr Me
  loc_B69B8B: MemLdStr global_120
  loc_B69B8E: AryLock
  loc_B69B91: Ary1LdPr
  loc_B69B92: MemLdRfVar from_stack_1.global_4
  loc_B69B95: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69B9A: AryUnlock
  loc_B69B9D: FFreeAd var_AC = ""
  loc_B69BA4: FFreeVar var_154 = ""
  loc_B69BAB: FLdRfVar var_140
  loc_B69BAE: LitVarStr var_98, "SaldMoas"
  loc_B69BB3: PopAdLdVar
  loc_B69BB4: FLdRfVar var_13C
  loc_B69BB7: FLdRfVar var_AC
  loc_B69BBA: FLdPr var_104
  loc_B69BBD: from_stack_1v = clsbase.RsFrmGet()
  loc_B69BC2: FLdPr var_AC
  loc_B69BC5:  = Me.Fields
  loc_B69BCA: FLdPr var_13C
  loc_B69BCD: from_stack_2 = Me.Item(from_stack_1)
  loc_B69BD2: LitI2_Byte 0
  loc_B69BD4: FLdPr Me
  loc_B69BD7: MemLdRfVar from_stack_1.global_144
  loc_B69BDA: CVarRef
  loc_B69BDF: LitI2_Byte &HFF
  loc_B69BE1: FLdZeroAd var_140
  loc_B69BE4: CVarAd
  loc_B69BE8: PopAdLdVar
  loc_B69BE9: FLdPr Me
  loc_B69BEC: MemLdI2 global_160
  loc_B69BEF: CI4UI1
  loc_B69BF0: FLdPr Me
  loc_B69BF3: MemLdStr global_120
  loc_B69BF6: AryLock
  loc_B69BF9: Ary1LdPr
  loc_B69BFA: MemLdRfVar from_stack_1.global_8
  loc_B69BFD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69C02: AryUnlock
  loc_B69C05: FFreeAd var_AC = ""
  loc_B69C0C: FFree1Var var_154 = ""
  loc_B69C0F: FLdRfVar var_140
  loc_B69C12: LitVarStr var_98, "SaldMoas"
  loc_B69C17: PopAdLdVar
  loc_B69C18: FLdRfVar var_13C
  loc_B69C1B: FLdRfVar var_AC
  loc_B69C1E: FLdPr var_104
  loc_B69C21: from_stack_1v = clsbase.RsFrmGet()
  loc_B69C26: FLdPr var_AC
  loc_B69C29:  = Me.Fields
  loc_B69C2E: FLdPr var_13C
  loc_B69C31: from_stack_2 = Me.Item(from_stack_1)
  loc_B69C36: LitI2_Byte 0
  loc_B69C38: FLdPr Me
  loc_B69C3B: MemLdRfVar from_stack_1.global_148
  loc_B69C3E: CVarRef
  loc_B69C43: LitI2_Byte &HFF
  loc_B69C45: FLdZeroAd var_140
  loc_B69C48: CVarAd
  loc_B69C4C: PopAdLdVar
  loc_B69C4D: FLdRfVar var_88
  loc_B69C50: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69C55: FFreeAd var_AC = ""
  loc_B69C5C: FFree1Var var_154 = ""
  loc_B69C5F: FLdPr var_104
  loc_B69C62: Call clsbase.MoveSiguiente()
  loc_B69C67: FLdPr Me
  loc_B69C6A: MemLdRfVar from_stack_1.global_160
  loc_B69C6D: NextI2 var_170, loc_B69AEB
  loc_B69C72: Branch loc_B69C7D
  loc_B69C75: LitI2_Byte 0
  loc_B69C77: FLdPr Me
  loc_B69C7A: MemStI2 global_124
  loc_B69C7D: LitNothing
  loc_B69C7F: FStAd var_104 
  loc_B69C83: FLdPr Me
  loc_B69C86: MemLdI2 global_100
  loc_B69C89: FLdPr Me
  loc_B69C8C: MemLdI2 global_108
  loc_B69C8F: OrI4
  loc_B69C90: FLdPr Me
  loc_B69C93: MemLdI2 global_116
  loc_B69C96: OrI4
  loc_B69C97: FLdPr Me
  loc_B69C9A: MemLdI2 global_124
  loc_B69C9D: OrI4
  loc_B69C9E: BranchF loc_B69D02
  loc_B69CA1: LitI2_Byte 0
  loc_B69CA3: LitVar_Missing var_154
  loc_B69CA6: LitI2_Byte &HFF
  loc_B69CA8: FLdPr Me
  loc_B69CAB: MemLdStr global_136
  loc_B69CAE: CR8Str
  loc_B69CB0: FLdPr Me
  loc_B69CB3: MemLdStr global_148
  loc_B69CB6: CR8Str
  loc_B69CB8: SubR4
  loc_B69CB9: CVarR8
  loc_B69CBD: PopAdLdVar
  loc_B69CBE: FLdPr Me
  loc_B69CC1: MemLdRfVar from_stack_1.global_152
  loc_B69CC4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69CC9: FFree1Var var_154 = ""
  loc_B69CCC: LitI2_Byte 0
  loc_B69CCE: LitVar_Missing var_154
  loc_B69CD1: LitI2_Byte &HFF
  loc_B69CD3: FLdPr Me
  loc_B69CD6: MemLdStr global_148
  loc_B69CD9: CR8Str
  loc_B69CDB: FLdPr Me
  loc_B69CDE: MemLdStr global_152
  loc_B69CE1: CR8Str
  loc_B69CE3: AddR8
  loc_B69CE4: CVarR8
  loc_B69CE8: PopAdLdVar
  loc_B69CE9: FLdPr Me
  loc_B69CEC: MemLdRfVar from_stack_1.global_156
  loc_B69CEF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B69CF4: FFree1Var var_154 = ""
  loc_B69CF7: LitI2_Byte &HFF
  loc_B69CF9: FLdPr Me
  loc_B69CFC: MemStI2 bGenerado
  loc_B69CFF: Branch loc_B69D0F
  loc_B69D02: LitI4 0
  loc_B69D07: LitStr "No existen registros para el criterio especificado."
  loc_B69D0A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B69D0F: LitI4 0
  loc_B69D14: CI2I4
  loc_B69D15: FLdPr Me
  loc_B69D18: Me.MousePointer = from_stack_1
  loc_B69D1D: LitVarStr var_98, vbNullString
  loc_B69D22: PopAdLdVar
  loc_B69D23: FLdPr Me
  loc_B69D26: VCallAd Control_ID_statusBar
  loc_B69D29: FStAdFunc var_AC
  loc_B69D2C: FLdPr var_AC
  loc_B69D2F: LateIdSt
  loc_B69D34: FFree1Ad var_AC
  loc_B69D37: ExitProcHresult
End Sub

Public Sub GeneraHTML() '98CADC
  'Data Table: 452E8C
  loc_98CA94: FLdRfVar var_88
  loc_98CA97: LitI2_Byte 0
  loc_98CA99: LitI2_Byte &HFF
  loc_98CA9B: ImpAdLdI4 MemVar_C3D83C
  loc_98CA9E: FLdPr Me
  loc_98CAA1: MemLdRfVar from_stack_1.global_92
  loc_98CAA4: NewIfNullPr IFileSystem3
  loc_98CAA7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_98CAAC: ILdRf var_88
  loc_98CAAF: FLdPr Me
  loc_98CAB2: MemStVarAd
  loc_98CAB6: FFree1Ad var_88
  loc_98CAB9: Call Proc_146_28_A60D5C()
  loc_98CABE: Call Proc_146_27_B2ACD0()
  loc_98CAC3: Call Proc_146_29_9E61EC()
  loc_98CAC8: FLdPr Me
  loc_98CACB: MemLdRfVar from_stack_1.htmFile
  loc_98CACE: LdPrVar
  loc_98CAD0: LateMemCall
  loc_98CAD6: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_98CADB: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94B3F4
  'Data Table: 452E8C
  loc_94B3DC: LitI2_Byte 0
  loc_94B3DE: FLdPr Me
  loc_94B3E1: MemStI2 bLogos
  loc_94B3E4: Call GeneraHTML()
  loc_94B3E9: LitI2_Byte &HFF
  loc_94B3EB: FLdPr Me
  loc_94B3EE: MemStI2 bLogos
  loc_94B3F1: ExitProcHresult
  loc_94B3F2: ExitProc
End Sub

Public Sub GeneraTXT() 'A83AE8
  'Data Table: 452E8C
  loc_A836DC: FLdRfVar var_90
  loc_A836DF: FLdPr Me
  loc_A836E2: VCallAd Control_ID_cboPeriodo
  loc_A836E5: FStAdFunc var_8C
  loc_A836E8: FLdPr var_8C
  loc_A836EB:  = Me.Text
  loc_A836F0: FLdZeroAd var_90
  loc_A836F3: FStStr var_88
  loc_A836F6: FFree1Ad var_8C
  loc_A836F9: FLdRfVar var_8C
  loc_A836FC: LitI2_Byte 0
  loc_A836FE: LitI2_Byte &HFF
  loc_A83700: ImpAdLdI4 MemVar_C3D05C
  loc_A83703: FLdPr Me
  loc_A83706: MemLdRfVar from_stack_1.global_92
  loc_A83709: NewIfNullPr IFileSystem3
  loc_A8370C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A83711: ILdRf var_8C
  loc_A83714: FLdPr Me
  loc_A83717: MemStVarAd
  loc_A8371B: FFree1Ad var_8C
  loc_A8371E: LitVarStr var_A0, "PeriodoPresenta|ExpID|Grupo|SubGrupo|CodigoCuenta|NombreCuenta|Importe"
  loc_A83723: PopAdLdVar
  loc_A83724: FLdPr Me
  loc_A83727: MemLdRfVar from_stack_1.txtFile
  loc_A8372A: LdPrVar
  loc_A8372C: LateMemCall
  loc_A83732: LitVarStr var_A0, vbCrLf
  loc_A83737: PopAdLdVar
  loc_A83738: FLdPr Me
  loc_A8373B: MemLdRfVar from_stack_1.txtFile
  loc_A8373E: LdPrVar
  loc_A83740: LateMemCall
  loc_A83746: FLdPr Me
  loc_A83749: MemLdI2 global_100
  loc_A8374C: BranchF loc_A83819
  loc_A8374F: LitI2_Byte 1
  loc_A83751: FLdPr Me
  loc_A83754: MemLdRfVar from_stack_1.global_160
  loc_A83757: FLdPr Me
  loc_A8375A: MemLdStr global_96
  loc_A8375D: LitI2_Byte 1
  loc_A8375F: FnUBound
  loc_A83761: CI2I4
  loc_A83762: ForI2 var_B4
  loc_A83768: ILdRf var_88
  loc_A8376B: LitStr "|"
  loc_A8376E: ConcatStr
  loc_A8376F: FStStrNoPop var_90
  loc_A83772: LitStr "eee-2022-060204"
  loc_A83775: ConcatStr
  loc_A83776: FStStrNoPop var_B8
  loc_A83779: LitStr "|ACTIVO|ACTIVO CORRIENTE|"
  loc_A8377C: ConcatStr
  loc_A8377D: FStStrNoPop var_BC
  loc_A83780: FLdPr Me
  loc_A83783: MemLdI2 global_160
  loc_A83786: CI4UI1
  loc_A83787: FLdPr Me
  loc_A8378A: MemLdStr global_96
  loc_A8378D: Ary1LdPr
  loc_A8378E: MemLdStr global_0
  loc_A83791: ConcatStr
  loc_A83792: FStStrNoPop var_C0
  loc_A83795: LitStr "|"
  loc_A83798: ConcatStr
  loc_A83799: FStStrNoPop var_C4
  loc_A8379C: FLdPr Me
  loc_A8379F: MemLdI2 global_160
  loc_A837A2: CI4UI1
  loc_A837A3: FLdPr Me
  loc_A837A6: MemLdStr global_96
  loc_A837A9: Ary1LdPr
  loc_A837AA: MemLdStr global_4
  loc_A837AD: ConcatStr
  loc_A837AE: FStStrNoPop var_C8
  loc_A837B1: LitStr "|"
  loc_A837B4: ConcatStr
  loc_A837B5: FStStrNoPop var_CC
  loc_A837B8: FLdPr Me
  loc_A837BB: MemLdI2 global_160
  loc_A837BE: CI4UI1
  loc_A837BF: FLdPr Me
  loc_A837C2: MemLdStr global_96
  loc_A837C5: Ary1LdPr
  loc_A837C6: MemLdStr global_8
  loc_A837C9: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A837CE: FStStrNoPop var_D0
  loc_A837D1: ConcatStr
  loc_A837D2: CVarStr var_E0
  loc_A837D5: PopAdLdVar
  loc_A837D6: FLdPr Me
  loc_A837D9: MemLdRfVar from_stack_1.txtFile
  loc_A837DC: LdPrVar
  loc_A837DE: LateMemCall
  loc_A837E4: FFreeStr var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A837F7: FFree1Var var_E0 = ""
  loc_A837FA: LitVarStr var_A0, vbCrLf
  loc_A837FF: PopAdLdVar
  loc_A83800: FLdPr Me
  loc_A83803: MemLdRfVar from_stack_1.txtFile
  loc_A83806: LdPrVar
  loc_A83808: LateMemCall
  loc_A8380E: FLdPr Me
  loc_A83811: MemLdRfVar from_stack_1.global_160
  loc_A83814: NextI2 var_B4, loc_A83768
  loc_A83819: FLdPr Me
  loc_A8381C: MemLdI2 global_108
  loc_A8381F: BranchF loc_A838EC
  loc_A83822: LitI2_Byte 1
  loc_A83824: FLdPr Me
  loc_A83827: MemLdRfVar from_stack_1.global_160
  loc_A8382A: FLdPr Me
  loc_A8382D: MemLdStr global_104
  loc_A83830: LitI2_Byte 1
  loc_A83832: FnUBound
  loc_A83834: CI2I4
  loc_A83835: ForI2 var_E4
  loc_A8383B: ILdRf var_88
  loc_A8383E: LitStr "|"
  loc_A83841: ConcatStr
  loc_A83842: FStStrNoPop var_90
  loc_A83845: LitStr "eee-2022-060204"
  loc_A83848: ConcatStr
  loc_A83849: FStStrNoPop var_B8
  loc_A8384C: LitStr "|ACTIVO|ACTIVO NO CORRIENTE|"
  loc_A8384F: ConcatStr
  loc_A83850: FStStrNoPop var_BC
  loc_A83853: FLdPr Me
  loc_A83856: MemLdI2 global_160
  loc_A83859: CI4UI1
  loc_A8385A: FLdPr Me
  loc_A8385D: MemLdStr global_104
  loc_A83860: Ary1LdPr
  loc_A83861: MemLdStr global_0
  loc_A83864: ConcatStr
  loc_A83865: FStStrNoPop var_C0
  loc_A83868: LitStr "|"
  loc_A8386B: ConcatStr
  loc_A8386C: FStStrNoPop var_C4
  loc_A8386F: FLdPr Me
  loc_A83872: MemLdI2 global_160
  loc_A83875: CI4UI1
  loc_A83876: FLdPr Me
  loc_A83879: MemLdStr global_104
  loc_A8387C: Ary1LdPr
  loc_A8387D: MemLdStr global_4
  loc_A83880: ConcatStr
  loc_A83881: FStStrNoPop var_C8
  loc_A83884: LitStr "|"
  loc_A83887: ConcatStr
  loc_A83888: FStStrNoPop var_CC
  loc_A8388B: FLdPr Me
  loc_A8388E: MemLdI2 global_160
  loc_A83891: CI4UI1
  loc_A83892: FLdPr Me
  loc_A83895: MemLdStr global_104
  loc_A83898: Ary1LdPr
  loc_A83899: MemLdStr global_8
  loc_A8389C: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A838A1: FStStrNoPop var_D0
  loc_A838A4: ConcatStr
  loc_A838A5: CVarStr var_E0
  loc_A838A8: PopAdLdVar
  loc_A838A9: FLdPr Me
  loc_A838AC: MemLdRfVar from_stack_1.txtFile
  loc_A838AF: LdPrVar
  loc_A838B1: LateMemCall
  loc_A838B7: FFreeStr var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A838CA: FFree1Var var_E0 = ""
  loc_A838CD: LitVarStr var_A0, vbCrLf
  loc_A838D2: PopAdLdVar
  loc_A838D3: FLdPr Me
  loc_A838D6: MemLdRfVar from_stack_1.txtFile
  loc_A838D9: LdPrVar
  loc_A838DB: LateMemCall
  loc_A838E1: FLdPr Me
  loc_A838E4: MemLdRfVar from_stack_1.global_160
  loc_A838E7: NextI2 var_E4, loc_A8383B
  loc_A838EC: FLdPr Me
  loc_A838EF: MemLdI2 global_116
  loc_A838F2: BranchF loc_A839BF
  loc_A838F5: LitI2_Byte 1
  loc_A838F7: FLdPr Me
  loc_A838FA: MemLdRfVar from_stack_1.global_160
  loc_A838FD: FLdPr Me
  loc_A83900: MemLdStr global_112
  loc_A83903: LitI2_Byte 1
  loc_A83905: FnUBound
  loc_A83907: CI2I4
  loc_A83908: ForI2 var_E8
  loc_A8390E: ILdRf var_88
  loc_A83911: LitStr "|"
  loc_A83914: ConcatStr
  loc_A83915: FStStrNoPop var_90
  loc_A83918: LitStr "eee-2022-060204"
  loc_A8391B: ConcatStr
  loc_A8391C: FStStrNoPop var_B8
  loc_A8391F: LitStr "|PASIVO|PASIVO CORRIENTE|"
  loc_A83922: ConcatStr
  loc_A83923: FStStrNoPop var_BC
  loc_A83926: FLdPr Me
  loc_A83929: MemLdI2 global_160
  loc_A8392C: CI4UI1
  loc_A8392D: FLdPr Me
  loc_A83930: MemLdStr global_112
  loc_A83933: Ary1LdPr
  loc_A83934: MemLdStr global_0
  loc_A83937: ConcatStr
  loc_A83938: FStStrNoPop var_C0
  loc_A8393B: LitStr "|"
  loc_A8393E: ConcatStr
  loc_A8393F: FStStrNoPop var_C4
  loc_A83942: FLdPr Me
  loc_A83945: MemLdI2 global_160
  loc_A83948: CI4UI1
  loc_A83949: FLdPr Me
  loc_A8394C: MemLdStr global_112
  loc_A8394F: Ary1LdPr
  loc_A83950: MemLdStr global_4
  loc_A83953: ConcatStr
  loc_A83954: FStStrNoPop var_C8
  loc_A83957: LitStr "|"
  loc_A8395A: ConcatStr
  loc_A8395B: FStStrNoPop var_CC
  loc_A8395E: FLdPr Me
  loc_A83961: MemLdI2 global_160
  loc_A83964: CI4UI1
  loc_A83965: FLdPr Me
  loc_A83968: MemLdStr global_112
  loc_A8396B: Ary1LdPr
  loc_A8396C: MemLdStr global_8
  loc_A8396F: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A83974: FStStrNoPop var_D0
  loc_A83977: ConcatStr
  loc_A83978: CVarStr var_E0
  loc_A8397B: PopAdLdVar
  loc_A8397C: FLdPr Me
  loc_A8397F: MemLdRfVar from_stack_1.txtFile
  loc_A83982: LdPrVar
  loc_A83984: LateMemCall
  loc_A8398A: FFreeStr var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A8399D: FFree1Var var_E0 = ""
  loc_A839A0: LitVarStr var_A0, vbCrLf
  loc_A839A5: PopAdLdVar
  loc_A839A6: FLdPr Me
  loc_A839A9: MemLdRfVar from_stack_1.txtFile
  loc_A839AC: LdPrVar
  loc_A839AE: LateMemCall
  loc_A839B4: FLdPr Me
  loc_A839B7: MemLdRfVar from_stack_1.global_160
  loc_A839BA: NextI2 var_E8, loc_A8390E
  loc_A839BF: FLdPr Me
  loc_A839C2: MemLdI2 global_124
  loc_A839C5: BranchF loc_A83A92
  loc_A839C8: LitI2_Byte 1
  loc_A839CA: FLdPr Me
  loc_A839CD: MemLdRfVar from_stack_1.global_160
  loc_A839D0: FLdPr Me
  loc_A839D3: MemLdStr global_120
  loc_A839D6: LitI2_Byte 1
  loc_A839D8: FnUBound
  loc_A839DA: CI2I4
  loc_A839DB: ForI2 var_EC
  loc_A839E1: ILdRf var_88
  loc_A839E4: LitStr "|"
  loc_A839E7: ConcatStr
  loc_A839E8: FStStrNoPop var_90
  loc_A839EB: LitStr "eee-2022-060204"
  loc_A839EE: ConcatStr
  loc_A839EF: FStStrNoPop var_B8
  loc_A839F2: LitStr "|PASIVO|PASIVO NO CORRIENTE"
  loc_A839F5: ConcatStr
  loc_A839F6: FStStrNoPop var_BC
  loc_A839F9: FLdPr Me
  loc_A839FC: MemLdI2 global_160
  loc_A839FF: CI4UI1
  loc_A83A00: FLdPr Me
  loc_A83A03: MemLdStr global_120
  loc_A83A06: Ary1LdPr
  loc_A83A07: MemLdStr global_0
  loc_A83A0A: ConcatStr
  loc_A83A0B: FStStrNoPop var_C0
  loc_A83A0E: LitStr "|"
  loc_A83A11: ConcatStr
  loc_A83A12: FStStrNoPop var_C4
  loc_A83A15: FLdPr Me
  loc_A83A18: MemLdI2 global_160
  loc_A83A1B: CI4UI1
  loc_A83A1C: FLdPr Me
  loc_A83A1F: MemLdStr global_120
  loc_A83A22: Ary1LdPr
  loc_A83A23: MemLdStr global_4
  loc_A83A26: ConcatStr
  loc_A83A27: FStStrNoPop var_C8
  loc_A83A2A: LitStr "|"
  loc_A83A2D: ConcatStr
  loc_A83A2E: FStStrNoPop var_CC
  loc_A83A31: FLdPr Me
  loc_A83A34: MemLdI2 global_160
  loc_A83A37: CI4UI1
  loc_A83A38: FLdPr Me
  loc_A83A3B: MemLdStr global_120
  loc_A83A3E: Ary1LdPr
  loc_A83A3F: MemLdStr global_8
  loc_A83A42: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A83A47: FStStrNoPop var_D0
  loc_A83A4A: ConcatStr
  loc_A83A4B: CVarStr var_E0
  loc_A83A4E: PopAdLdVar
  loc_A83A4F: FLdPr Me
  loc_A83A52: MemLdRfVar from_stack_1.txtFile
  loc_A83A55: LdPrVar
  loc_A83A57: LateMemCall
  loc_A83A5D: FFreeStr var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A83A70: FFree1Var var_E0 = ""
  loc_A83A73: LitVarStr var_A0, vbCrLf
  loc_A83A78: PopAdLdVar
  loc_A83A79: FLdPr Me
  loc_A83A7C: MemLdRfVar from_stack_1.txtFile
  loc_A83A7F: LdPrVar
  loc_A83A81: LateMemCall
  loc_A83A87: FLdPr Me
  loc_A83A8A: MemLdRfVar from_stack_1.global_160
  loc_A83A8D: NextI2 var_EC, loc_A839E1
  loc_A83A92: ILdRf var_88
  loc_A83A95: LitStr "|"
  loc_A83A98: ConcatStr
  loc_A83A99: FStStrNoPop var_90
  loc_A83A9C: LitStr "eee-2022-060204"
  loc_A83A9F: ConcatStr
  loc_A83AA0: FStStrNoPop var_B8
  loc_A83AA3: LitStr "|PATRIMONIO|PATRIMONIO NETO|31000000|Patrimonio Neto|"
  loc_A83AA6: ConcatStr
  loc_A83AA7: FStStrNoPop var_BC
  loc_A83AAA: FLdPr Me
  loc_A83AAD: MemLdStr global_152
  loc_A83AB0: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A83AB5: FStStrNoPop var_C0
  loc_A83AB8: ConcatStr
  loc_A83AB9: CVarStr var_E0
  loc_A83ABC: PopAdLdVar
  loc_A83ABD: FLdPr Me
  loc_A83AC0: MemLdRfVar from_stack_1.txtFile
  loc_A83AC3: LdPrVar
  loc_A83AC5: LateMemCall
  loc_A83ACB: FFreeStr var_90 = "": var_B8 = "": var_BC = ""
  loc_A83AD6: FFree1Var var_E0 = ""
  loc_A83AD9: FLdPr Me
  loc_A83ADC: MemLdRfVar from_stack_1.txtFile
  loc_A83ADF: LdPrVar
  loc_A83AE1: LateMemCall
  loc_A83AE7: ExitProcHresult
End Sub

Private Function Proc_146_26_972190(arg_C) '972190
  'Data Table: 452E8C
  loc_972164: LitI2_Byte 0
  loc_972166: FLdRfVar var_86
  loc_972169: ILdI4 arg_C
  loc_97216C: LitI2_Byte 1
  loc_97216E: FnUBound
  loc_972170: CI2I4
  loc_972171: ForI2 var_8A
  loc_972177: LitVarStr var_9C, "0,00"
  loc_97217C: FLdI2 var_86
  loc_97217F: CI4UI1
  loc_972180: ILdI4 arg_C
  loc_972183: Ary1StVargCopy
  loc_972185: FLdRfVar var_86
  loc_972188: NextI2 var_8A, loc_972177
  loc_97218D: ExitProcHresult
  loc_97218E: FLdPr arg_1408
End Function

Private Function Proc_146_27_B2ACD0() 'B2ACD0
  'Data Table: 452E8C
  loc_B2A358: LitVarStr var_94, " <tr>"
  loc_B2A35D: PopAdLdVar
  loc_B2A35E: FLdPr Me
  loc_B2A361: MemLdRfVar from_stack_1.htmFile
  loc_B2A364: LdPrVar
  loc_B2A366: LateMemCall
  loc_B2A36C: LitVarStr var_94, "   <td colspan=""2"">"
  loc_B2A371: PopAdLdVar
  loc_B2A372: FLdPr Me
  loc_B2A375: MemLdRfVar from_stack_1.htmFile
  loc_B2A378: LdPrVar
  loc_B2A37A: LateMemCall
  loc_B2A380: FLdPr Me
  loc_B2A383: MemLdI2 global_100
  loc_B2A386: BranchF loc_B2A536
  loc_B2A389: LitVarStr var_94, "    <table width=""50" & Chr(37) & """ border=""0"" align=""center"">"
  loc_B2A38E: PopAdLdVar
  loc_B2A38F: FLdPr Me
  loc_B2A392: MemLdRfVar from_stack_1.htmFile
  loc_B2A395: LdPrVar
  loc_B2A397: LateMemCall
  loc_B2A39D: LitVarStr var_94, "     <tr>"
  loc_B2A3A2: PopAdLdVar
  loc_B2A3A3: FLdPr Me
  loc_B2A3A6: MemLdRfVar from_stack_1.htmFile
  loc_B2A3A9: LdPrVar
  loc_B2A3AB: LateMemCall
  loc_B2A3B1: LitVarStr var_94, "       <td align=""center"" colspan=""2"" class=""Encabezado"">ACTIVO CORRIENTE</td>"
  loc_B2A3B6: PopAdLdVar
  loc_B2A3B7: FLdPr Me
  loc_B2A3BA: MemLdRfVar from_stack_1.htmFile
  loc_B2A3BD: LdPrVar
  loc_B2A3BF: LateMemCall
  loc_B2A3C5: LitVarStr var_94, "       </tr>"
  loc_B2A3CA: PopAdLdVar
  loc_B2A3CB: FLdPr Me
  loc_B2A3CE: MemLdRfVar from_stack_1.htmFile
  loc_B2A3D1: LdPrVar
  loc_B2A3D3: LateMemCall
  loc_B2A3D9: LitI2_Byte 1
  loc_B2A3DB: FLdPr Me
  loc_B2A3DE: MemLdRfVar from_stack_1.global_160
  loc_B2A3E1: FLdPr Me
  loc_B2A3E4: MemLdStr global_96
  loc_B2A3E7: LitI2_Byte 1
  loc_B2A3E9: FnUBound
  loc_B2A3EB: CI2I4
  loc_B2A3EC: ForI2 var_A8
  loc_B2A3F2: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A3F7: PopAdLdVar
  loc_B2A3F8: FLdPr Me
  loc_B2A3FB: MemLdRfVar from_stack_1.htmFile
  loc_B2A3FE: LdPrVar
  loc_B2A400: LateMemCall
  loc_B2A406: LitI4 0
  loc_B2A40B: LitI4 0
  loc_B2A410: LitI2_Byte 0
  loc_B2A412: LitStr "left"
  loc_B2A415: FLdPr Me
  loc_B2A418: MemLdI2 global_160
  loc_B2A41B: CI4UI1
  loc_B2A41C: FLdPr Me
  loc_B2A41F: MemLdStr global_96
  loc_B2A422: Ary1LdPr
  loc_B2A423: MemLdStr global_4
  loc_B2A426: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A42B: CVarStr var_B8
  loc_B2A42E: PopAdLdVar
  loc_B2A42F: FLdPr Me
  loc_B2A432: MemLdRfVar from_stack_1.htmFile
  loc_B2A435: LdPrVar
  loc_B2A437: LateMemCall
  loc_B2A43D: FFree1Var var_B8 = ""
  loc_B2A440: LitI4 0
  loc_B2A445: LitI4 0
  loc_B2A44A: LitI2_Byte &HFF
  loc_B2A44C: LitStr "right"
  loc_B2A44F: FLdPr Me
  loc_B2A452: MemLdI2 global_160
  loc_B2A455: CI4UI1
  loc_B2A456: FLdPr Me
  loc_B2A459: MemLdStr global_96
  loc_B2A45C: Ary1LdPr
  loc_B2A45D: MemLdStr global_8
  loc_B2A460: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A465: CVarStr var_B8
  loc_B2A468: PopAdLdVar
  loc_B2A469: FLdPr Me
  loc_B2A46C: MemLdRfVar from_stack_1.htmFile
  loc_B2A46F: LdPrVar
  loc_B2A471: LateMemCall
  loc_B2A477: FFree1Var var_B8 = ""
  loc_B2A47A: LitVarStr var_94, "     </tr>"
  loc_B2A47F: PopAdLdVar
  loc_B2A480: FLdPr Me
  loc_B2A483: MemLdRfVar from_stack_1.htmFile
  loc_B2A486: LdPrVar
  loc_B2A488: LateMemCall
  loc_B2A48E: FLdPr Me
  loc_B2A491: MemLdRfVar from_stack_1.global_160
  loc_B2A494: NextI2 var_A8, loc_B2A3F2
  loc_B2A499: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A49E: PopAdLdVar
  loc_B2A49F: FLdPr Me
  loc_B2A4A2: MemLdRfVar from_stack_1.htmFile
  loc_B2A4A5: LdPrVar
  loc_B2A4A7: LateMemCall
  loc_B2A4AD: LitVarStr var_94, "       <td align=""right"">Total Activo Corriente:</td>"
  loc_B2A4B2: PopAdLdVar
  loc_B2A4B3: FLdPr Me
  loc_B2A4B6: MemLdRfVar from_stack_1.htmFile
  loc_B2A4B9: LdPrVar
  loc_B2A4BB: LateMemCall
  loc_B2A4C1: LitStr "       <td align=""right"" class=""Totales"">"
  loc_B2A4C4: FLdPr Me
  loc_B2A4C7: MemLdStr global_128
  loc_B2A4CA: CVarStr var_94
  loc_B2A4CD: PopAdLdVar
  loc_B2A4CE: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2A4D3: FStStrNoPop var_BC
  loc_B2A4D6: ConcatStr
  loc_B2A4D7: FStStrNoPop var_C0
  loc_B2A4DA: LitStr "</td>"
  loc_B2A4DD: ConcatStr
  loc_B2A4DE: CVarStr var_B8
  loc_B2A4E1: PopAdLdVar
  loc_B2A4E2: FLdPr Me
  loc_B2A4E5: MemLdRfVar from_stack_1.htmFile
  loc_B2A4E8: LdPrVar
  loc_B2A4EA: LateMemCall
  loc_B2A4F0: FFreeStr var_BC = ""
  loc_B2A4F7: FFree1Var var_B8 = ""
  loc_B2A4FA: LitVarStr var_94, "     </tr>"
  loc_B2A4FF: PopAdLdVar
  loc_B2A500: FLdPr Me
  loc_B2A503: MemLdRfVar from_stack_1.htmFile
  loc_B2A506: LdPrVar
  loc_B2A508: LateMemCall
  loc_B2A50E: LitVarStr var_94, "    </table>"
  loc_B2A513: PopAdLdVar
  loc_B2A514: FLdPr Me
  loc_B2A517: MemLdRfVar from_stack_1.htmFile
  loc_B2A51A: LdPrVar
  loc_B2A51C: LateMemCall
  loc_B2A522: LitVarStr var_94, "     <br>"
  loc_B2A527: PopAdLdVar
  loc_B2A528: FLdPr Me
  loc_B2A52B: MemLdRfVar from_stack_1.htmFile
  loc_B2A52E: LdPrVar
  loc_B2A530: LateMemCall
  loc_B2A536: FLdPr Me
  loc_B2A539: MemLdI2 global_108
  loc_B2A53C: BranchF loc_B2A6EC
  loc_B2A53F: LitVarStr var_94, "     <table width=""50" & Chr(37) & """ border=""0"" align=""center"">"
  loc_B2A544: PopAdLdVar
  loc_B2A545: FLdPr Me
  loc_B2A548: MemLdRfVar from_stack_1.htmFile
  loc_B2A54B: LdPrVar
  loc_B2A54D: LateMemCall
  loc_B2A553: LitVarStr var_94, "       <tr>"
  loc_B2A558: PopAdLdVar
  loc_B2A559: FLdPr Me
  loc_B2A55C: MemLdRfVar from_stack_1.htmFile
  loc_B2A55F: LdPrVar
  loc_B2A561: LateMemCall
  loc_B2A567: LitVarStr var_94, "         <td align=""center"" colspan=""2"" class=""Encabezado"">ACTIVO NO CORRIENTE</td>"
  loc_B2A56C: PopAdLdVar
  loc_B2A56D: FLdPr Me
  loc_B2A570: MemLdRfVar from_stack_1.htmFile
  loc_B2A573: LdPrVar
  loc_B2A575: LateMemCall
  loc_B2A57B: LitVarStr var_94, "       </tr>"
  loc_B2A580: PopAdLdVar
  loc_B2A581: FLdPr Me
  loc_B2A584: MemLdRfVar from_stack_1.htmFile
  loc_B2A587: LdPrVar
  loc_B2A589: LateMemCall
  loc_B2A58F: LitI2_Byte 1
  loc_B2A591: FLdPr Me
  loc_B2A594: MemLdRfVar from_stack_1.global_160
  loc_B2A597: FLdPr Me
  loc_B2A59A: MemLdStr global_104
  loc_B2A59D: LitI2_Byte 1
  loc_B2A59F: FnUBound
  loc_B2A5A1: CI2I4
  loc_B2A5A2: ForI2 var_C4
  loc_B2A5A8: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A5AD: PopAdLdVar
  loc_B2A5AE: FLdPr Me
  loc_B2A5B1: MemLdRfVar from_stack_1.htmFile
  loc_B2A5B4: LdPrVar
  loc_B2A5B6: LateMemCall
  loc_B2A5BC: LitI4 0
  loc_B2A5C1: LitI4 0
  loc_B2A5C6: LitI2_Byte 0
  loc_B2A5C8: LitStr "left"
  loc_B2A5CB: FLdPr Me
  loc_B2A5CE: MemLdI2 global_160
  loc_B2A5D1: CI4UI1
  loc_B2A5D2: FLdPr Me
  loc_B2A5D5: MemLdStr global_104
  loc_B2A5D8: Ary1LdPr
  loc_B2A5D9: MemLdStr global_4
  loc_B2A5DC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A5E1: CVarStr var_B8
  loc_B2A5E4: PopAdLdVar
  loc_B2A5E5: FLdPr Me
  loc_B2A5E8: MemLdRfVar from_stack_1.htmFile
  loc_B2A5EB: LdPrVar
  loc_B2A5ED: LateMemCall
  loc_B2A5F3: FFree1Var var_B8 = ""
  loc_B2A5F6: LitI4 0
  loc_B2A5FB: LitI4 0
  loc_B2A600: LitI2_Byte &HFF
  loc_B2A602: LitStr "right"
  loc_B2A605: FLdPr Me
  loc_B2A608: MemLdI2 global_160
  loc_B2A60B: CI4UI1
  loc_B2A60C: FLdPr Me
  loc_B2A60F: MemLdStr global_104
  loc_B2A612: Ary1LdPr
  loc_B2A613: MemLdStr global_8
  loc_B2A616: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A61B: CVarStr var_B8
  loc_B2A61E: PopAdLdVar
  loc_B2A61F: FLdPr Me
  loc_B2A622: MemLdRfVar from_stack_1.htmFile
  loc_B2A625: LdPrVar
  loc_B2A627: LateMemCall
  loc_B2A62D: FFree1Var var_B8 = ""
  loc_B2A630: LitVarStr var_94, "     </tr>"
  loc_B2A635: PopAdLdVar
  loc_B2A636: FLdPr Me
  loc_B2A639: MemLdRfVar from_stack_1.htmFile
  loc_B2A63C: LdPrVar
  loc_B2A63E: LateMemCall
  loc_B2A644: FLdPr Me
  loc_B2A647: MemLdRfVar from_stack_1.global_160
  loc_B2A64A: NextI2 var_C4, loc_B2A5A8
  loc_B2A64F: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A654: PopAdLdVar
  loc_B2A655: FLdPr Me
  loc_B2A658: MemLdRfVar from_stack_1.htmFile
  loc_B2A65B: LdPrVar
  loc_B2A65D: LateMemCall
  loc_B2A663: LitVarStr var_94, "       <td align=""right"">Total Activo No Corriente:</td>"
  loc_B2A668: PopAdLdVar
  loc_B2A669: FLdPr Me
  loc_B2A66C: MemLdRfVar from_stack_1.htmFile
  loc_B2A66F: LdPrVar
  loc_B2A671: LateMemCall
  loc_B2A677: LitStr "       <td align=""right"" class=""Totales"">"
  loc_B2A67A: FLdPr Me
  loc_B2A67D: MemLdStr global_132
  loc_B2A680: CVarStr var_94
  loc_B2A683: PopAdLdVar
  loc_B2A684: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2A689: FStStrNoPop var_BC
  loc_B2A68C: ConcatStr
  loc_B2A68D: FStStrNoPop var_C0
  loc_B2A690: LitStr "</td>"
  loc_B2A693: ConcatStr
  loc_B2A694: CVarStr var_B8
  loc_B2A697: PopAdLdVar
  loc_B2A698: FLdPr Me
  loc_B2A69B: MemLdRfVar from_stack_1.htmFile
  loc_B2A69E: LdPrVar
  loc_B2A6A0: LateMemCall
  loc_B2A6A6: FFreeStr var_BC = ""
  loc_B2A6AD: FFree1Var var_B8 = ""
  loc_B2A6B0: LitVarStr var_94, "     </tr>"
  loc_B2A6B5: PopAdLdVar
  loc_B2A6B6: FLdPr Me
  loc_B2A6B9: MemLdRfVar from_stack_1.htmFile
  loc_B2A6BC: LdPrVar
  loc_B2A6BE: LateMemCall
  loc_B2A6C4: LitVarStr var_94, "     </table>"
  loc_B2A6C9: PopAdLdVar
  loc_B2A6CA: FLdPr Me
  loc_B2A6CD: MemLdRfVar from_stack_1.htmFile
  loc_B2A6D0: LdPrVar
  loc_B2A6D2: LateMemCall
  loc_B2A6D8: LitVarStr var_94, "     <br>"
  loc_B2A6DD: PopAdLdVar
  loc_B2A6DE: FLdPr Me
  loc_B2A6E1: MemLdRfVar from_stack_1.htmFile
  loc_B2A6E4: LdPrVar
  loc_B2A6E6: LateMemCall
  loc_B2A6EC: LitVarStr var_94, "   </td>"
  loc_B2A6F1: PopAdLdVar
  loc_B2A6F2: FLdPr Me
  loc_B2A6F5: MemLdRfVar from_stack_1.htmFile
  loc_B2A6F8: LdPrVar
  loc_B2A6FA: LateMemCall
  loc_B2A700: LitVarStr var_94, "   <td colspan=""2""><br>"
  loc_B2A705: PopAdLdVar
  loc_B2A706: FLdPr Me
  loc_B2A709: MemLdRfVar from_stack_1.htmFile
  loc_B2A70C: LdPrVar
  loc_B2A70E: LateMemCall
  loc_B2A714: FLdPr Me
  loc_B2A717: MemLdI2 global_116
  loc_B2A71A: BranchF loc_B2A8CA
  loc_B2A71D: LitVarStr var_94, "       <table width=""50" & Chr(37) & """ border=""0"" align=""center"">"
  loc_B2A722: PopAdLdVar
  loc_B2A723: FLdPr Me
  loc_B2A726: MemLdRfVar from_stack_1.htmFile
  loc_B2A729: LdPrVar
  loc_B2A72B: LateMemCall
  loc_B2A731: LitVarStr var_94, "         <tr>"
  loc_B2A736: PopAdLdVar
  loc_B2A737: FLdPr Me
  loc_B2A73A: MemLdRfVar from_stack_1.htmFile
  loc_B2A73D: LdPrVar
  loc_B2A73F: LateMemCall
  loc_B2A745: LitVarStr var_94, "           <td align=""center"" colspan=""2"" class=""Encabezado"">PASIVO CORRIENTE</td>"
  loc_B2A74A: PopAdLdVar
  loc_B2A74B: FLdPr Me
  loc_B2A74E: MemLdRfVar from_stack_1.htmFile
  loc_B2A751: LdPrVar
  loc_B2A753: LateMemCall
  loc_B2A759: LitVarStr var_94, "         </tr>"
  loc_B2A75E: PopAdLdVar
  loc_B2A75F: FLdPr Me
  loc_B2A762: MemLdRfVar from_stack_1.htmFile
  loc_B2A765: LdPrVar
  loc_B2A767: LateMemCall
  loc_B2A76D: LitI2_Byte 1
  loc_B2A76F: FLdPr Me
  loc_B2A772: MemLdRfVar from_stack_1.global_160
  loc_B2A775: FLdPr Me
  loc_B2A778: MemLdStr global_112
  loc_B2A77B: LitI2_Byte 1
  loc_B2A77D: FnUBound
  loc_B2A77F: CI2I4
  loc_B2A780: ForI2 var_C8
  loc_B2A786: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A78B: PopAdLdVar
  loc_B2A78C: FLdPr Me
  loc_B2A78F: MemLdRfVar from_stack_1.htmFile
  loc_B2A792: LdPrVar
  loc_B2A794: LateMemCall
  loc_B2A79A: LitI4 0
  loc_B2A79F: LitI4 0
  loc_B2A7A4: LitI2_Byte 0
  loc_B2A7A6: LitStr "left"
  loc_B2A7A9: FLdPr Me
  loc_B2A7AC: MemLdI2 global_160
  loc_B2A7AF: CI4UI1
  loc_B2A7B0: FLdPr Me
  loc_B2A7B3: MemLdStr global_112
  loc_B2A7B6: Ary1LdPr
  loc_B2A7B7: MemLdStr global_4
  loc_B2A7BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A7BF: CVarStr var_B8
  loc_B2A7C2: PopAdLdVar
  loc_B2A7C3: FLdPr Me
  loc_B2A7C6: MemLdRfVar from_stack_1.htmFile
  loc_B2A7C9: LdPrVar
  loc_B2A7CB: LateMemCall
  loc_B2A7D1: FFree1Var var_B8 = ""
  loc_B2A7D4: LitI4 0
  loc_B2A7D9: LitI4 0
  loc_B2A7DE: LitI2_Byte &HFF
  loc_B2A7E0: LitStr "right"
  loc_B2A7E3: FLdPr Me
  loc_B2A7E6: MemLdI2 global_160
  loc_B2A7E9: CI4UI1
  loc_B2A7EA: FLdPr Me
  loc_B2A7ED: MemLdStr global_112
  loc_B2A7F0: Ary1LdPr
  loc_B2A7F1: MemLdStr global_8
  loc_B2A7F4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A7F9: CVarStr var_B8
  loc_B2A7FC: PopAdLdVar
  loc_B2A7FD: FLdPr Me
  loc_B2A800: MemLdRfVar from_stack_1.htmFile
  loc_B2A803: LdPrVar
  loc_B2A805: LateMemCall
  loc_B2A80B: FFree1Var var_B8 = ""
  loc_B2A80E: LitVarStr var_94, "     </tr>"
  loc_B2A813: PopAdLdVar
  loc_B2A814: FLdPr Me
  loc_B2A817: MemLdRfVar from_stack_1.htmFile
  loc_B2A81A: LdPrVar
  loc_B2A81C: LateMemCall
  loc_B2A822: FLdPr Me
  loc_B2A825: MemLdRfVar from_stack_1.global_160
  loc_B2A828: NextI2 var_C8, loc_B2A786
  loc_B2A82D: LitVarStr var_94, "         <tr class=""LineaDato"">"
  loc_B2A832: PopAdLdVar
  loc_B2A833: FLdPr Me
  loc_B2A836: MemLdRfVar from_stack_1.htmFile
  loc_B2A839: LdPrVar
  loc_B2A83B: LateMemCall
  loc_B2A841: LitVarStr var_94, "           <td align=""right"">Total Pasivo Corriente:</td>"
  loc_B2A846: PopAdLdVar
  loc_B2A847: FLdPr Me
  loc_B2A84A: MemLdRfVar from_stack_1.htmFile
  loc_B2A84D: LdPrVar
  loc_B2A84F: LateMemCall
  loc_B2A855: LitStr "       <td align=""right"" class=""Totales"">"
  loc_B2A858: FLdPr Me
  loc_B2A85B: MemLdStr global_140
  loc_B2A85E: CVarStr var_94
  loc_B2A861: PopAdLdVar
  loc_B2A862: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2A867: FStStrNoPop var_BC
  loc_B2A86A: ConcatStr
  loc_B2A86B: FStStrNoPop var_C0
  loc_B2A86E: LitStr "</td>"
  loc_B2A871: ConcatStr
  loc_B2A872: CVarStr var_B8
  loc_B2A875: PopAdLdVar
  loc_B2A876: FLdPr Me
  loc_B2A879: MemLdRfVar from_stack_1.htmFile
  loc_B2A87C: LdPrVar
  loc_B2A87E: LateMemCall
  loc_B2A884: FFreeStr var_BC = ""
  loc_B2A88B: FFree1Var var_B8 = ""
  loc_B2A88E: LitVarStr var_94, "         </tr>"
  loc_B2A893: PopAdLdVar
  loc_B2A894: FLdPr Me
  loc_B2A897: MemLdRfVar from_stack_1.htmFile
  loc_B2A89A: LdPrVar
  loc_B2A89C: LateMemCall
  loc_B2A8A2: LitVarStr var_94, "       </table>"
  loc_B2A8A7: PopAdLdVar
  loc_B2A8A8: FLdPr Me
  loc_B2A8AB: MemLdRfVar from_stack_1.htmFile
  loc_B2A8AE: LdPrVar
  loc_B2A8B0: LateMemCall
  loc_B2A8B6: LitVarStr var_94, "     <br>"
  loc_B2A8BB: PopAdLdVar
  loc_B2A8BC: FLdPr Me
  loc_B2A8BF: MemLdRfVar from_stack_1.htmFile
  loc_B2A8C2: LdPrVar
  loc_B2A8C4: LateMemCall
  loc_B2A8CA: FLdPr Me
  loc_B2A8CD: MemLdI2 global_124
  loc_B2A8D0: BranchF loc_B2AA80
  loc_B2A8D3: LitVarStr var_94, "       <table width=""50" & Chr(37) & """ border=""0"" align=""center"">"
  loc_B2A8D8: PopAdLdVar
  loc_B2A8D9: FLdPr Me
  loc_B2A8DC: MemLdRfVar from_stack_1.htmFile
  loc_B2A8DF: LdPrVar
  loc_B2A8E1: LateMemCall
  loc_B2A8E7: LitVarStr var_94, "         <tr>"
  loc_B2A8EC: PopAdLdVar
  loc_B2A8ED: FLdPr Me
  loc_B2A8F0: MemLdRfVar from_stack_1.htmFile
  loc_B2A8F3: LdPrVar
  loc_B2A8F5: LateMemCall
  loc_B2A8FB: LitVarStr var_94, "           <td align=""center"" colspan=""2"" class=""Encabezado"">PASIVO NO CORRIENTE</td>"
  loc_B2A900: PopAdLdVar
  loc_B2A901: FLdPr Me
  loc_B2A904: MemLdRfVar from_stack_1.htmFile
  loc_B2A907: LdPrVar
  loc_B2A909: LateMemCall
  loc_B2A90F: LitVarStr var_94, "         </tr>"
  loc_B2A914: PopAdLdVar
  loc_B2A915: FLdPr Me
  loc_B2A918: MemLdRfVar from_stack_1.htmFile
  loc_B2A91B: LdPrVar
  loc_B2A91D: LateMemCall
  loc_B2A923: LitI2_Byte 1
  loc_B2A925: FLdPr Me
  loc_B2A928: MemLdRfVar from_stack_1.global_160
  loc_B2A92B: FLdPr Me
  loc_B2A92E: MemLdStr global_120
  loc_B2A931: LitI2_Byte 1
  loc_B2A933: FnUBound
  loc_B2A935: CI2I4
  loc_B2A936: ForI2 var_CC
  loc_B2A93C: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2A941: PopAdLdVar
  loc_B2A942: FLdPr Me
  loc_B2A945: MemLdRfVar from_stack_1.htmFile
  loc_B2A948: LdPrVar
  loc_B2A94A: LateMemCall
  loc_B2A950: LitI4 0
  loc_B2A955: LitI4 0
  loc_B2A95A: LitI2_Byte 0
  loc_B2A95C: LitStr "left"
  loc_B2A95F: FLdPr Me
  loc_B2A962: MemLdI2 global_160
  loc_B2A965: CI4UI1
  loc_B2A966: FLdPr Me
  loc_B2A969: MemLdStr global_120
  loc_B2A96C: Ary1LdPr
  loc_B2A96D: MemLdStr global_4
  loc_B2A970: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A975: CVarStr var_B8
  loc_B2A978: PopAdLdVar
  loc_B2A979: FLdPr Me
  loc_B2A97C: MemLdRfVar from_stack_1.htmFile
  loc_B2A97F: LdPrVar
  loc_B2A981: LateMemCall
  loc_B2A987: FFree1Var var_B8 = ""
  loc_B2A98A: LitI4 0
  loc_B2A98F: LitI4 0
  loc_B2A994: LitI2_Byte &HFF
  loc_B2A996: LitStr "right"
  loc_B2A999: FLdPr Me
  loc_B2A99C: MemLdI2 global_160
  loc_B2A99F: CI4UI1
  loc_B2A9A0: FLdPr Me
  loc_B2A9A3: MemLdStr global_120
  loc_B2A9A6: Ary1LdPr
  loc_B2A9A7: MemLdStr global_8
  loc_B2A9AA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2A9AF: CVarStr var_B8
  loc_B2A9B2: PopAdLdVar
  loc_B2A9B3: FLdPr Me
  loc_B2A9B6: MemLdRfVar from_stack_1.htmFile
  loc_B2A9B9: LdPrVar
  loc_B2A9BB: LateMemCall
  loc_B2A9C1: FFree1Var var_B8 = ""
  loc_B2A9C4: LitVarStr var_94, "     </tr>"
  loc_B2A9C9: PopAdLdVar
  loc_B2A9CA: FLdPr Me
  loc_B2A9CD: MemLdRfVar from_stack_1.htmFile
  loc_B2A9D0: LdPrVar
  loc_B2A9D2: LateMemCall
  loc_B2A9D8: FLdPr Me
  loc_B2A9DB: MemLdRfVar from_stack_1.global_160
  loc_B2A9DE: NextI2 var_CC, loc_B2A93C
  loc_B2A9E3: LitVarStr var_94, "         <tr class=""LineaDato"">"
  loc_B2A9E8: PopAdLdVar
  loc_B2A9E9: FLdPr Me
  loc_B2A9EC: MemLdRfVar from_stack_1.htmFile
  loc_B2A9EF: LdPrVar
  loc_B2A9F1: LateMemCall
  loc_B2A9F7: LitVarStr var_94, "           <td align=""right"">Total Pasivo No Corriente </td>"
  loc_B2A9FC: PopAdLdVar
  loc_B2A9FD: FLdPr Me
  loc_B2AA00: MemLdRfVar from_stack_1.htmFile
  loc_B2AA03: LdPrVar
  loc_B2AA05: LateMemCall
  loc_B2AA0B: LitStr "       <td align=""right"" class=""Totales"">"
  loc_B2AA0E: FLdPr Me
  loc_B2AA11: MemLdStr global_144
  loc_B2AA14: CVarStr var_94
  loc_B2AA17: PopAdLdVar
  loc_B2AA18: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2AA1D: FStStrNoPop var_BC
  loc_B2AA20: ConcatStr
  loc_B2AA21: FStStrNoPop var_C0
  loc_B2AA24: LitStr "</td>"
  loc_B2AA27: ConcatStr
  loc_B2AA28: CVarStr var_B8
  loc_B2AA2B: PopAdLdVar
  loc_B2AA2C: FLdPr Me
  loc_B2AA2F: MemLdRfVar from_stack_1.htmFile
  loc_B2AA32: LdPrVar
  loc_B2AA34: LateMemCall
  loc_B2AA3A: FFreeStr var_BC = ""
  loc_B2AA41: FFree1Var var_B8 = ""
  loc_B2AA44: LitVarStr var_94, "         </tr>"
  loc_B2AA49: PopAdLdVar
  loc_B2AA4A: FLdPr Me
  loc_B2AA4D: MemLdRfVar from_stack_1.htmFile
  loc_B2AA50: LdPrVar
  loc_B2AA52: LateMemCall
  loc_B2AA58: LitVarStr var_94, "       </table>"
  loc_B2AA5D: PopAdLdVar
  loc_B2AA5E: FLdPr Me
  loc_B2AA61: MemLdRfVar from_stack_1.htmFile
  loc_B2AA64: LdPrVar
  loc_B2AA66: LateMemCall
  loc_B2AA6C: LitVarStr var_94, "     <br>"
  loc_B2AA71: PopAdLdVar
  loc_B2AA72: FLdPr Me
  loc_B2AA75: MemLdRfVar from_stack_1.htmFile
  loc_B2AA78: LdPrVar
  loc_B2AA7A: LateMemCall
  loc_B2AA80: LitVarStr var_94, "   </td>"
  loc_B2AA85: PopAdLdVar
  loc_B2AA86: FLdPr Me
  loc_B2AA89: MemLdRfVar from_stack_1.htmFile
  loc_B2AA8C: LdPrVar
  loc_B2AA8E: LateMemCall
  loc_B2AA94: LitVarStr var_94, " </tr>"
  loc_B2AA99: PopAdLdVar
  loc_B2AA9A: FLdPr Me
  loc_B2AA9D: MemLdRfVar from_stack_1.htmFile
  loc_B2AAA0: LdPrVar
  loc_B2AAA2: LateMemCall
  loc_B2AAA8: LitVarStr var_94, " <tr>"
  loc_B2AAAD: PopAdLdVar
  loc_B2AAAE: FLdPr Me
  loc_B2AAB1: MemLdRfVar from_stack_1.htmFile
  loc_B2AAB4: LdPrVar
  loc_B2AAB6: LateMemCall
  loc_B2AABC: LitVarStr var_94, "   <td width=""25" & Chr(37) & """ align=""right"" class=""Encabezado"">TOTAL ACTIVO:</td>"
  loc_B2AAC1: PopAdLdVar
  loc_B2AAC2: FLdPr Me
  loc_B2AAC5: MemLdRfVar from_stack_1.htmFile
  loc_B2AAC8: LdPrVar
  loc_B2AACA: LateMemCall
  loc_B2AAD0: LitStr "   <td width=""25" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_B2AAD3: FLdPr Me
  loc_B2AAD6: MemLdStr global_136
  loc_B2AAD9: CVarStr var_94
  loc_B2AADC: PopAdLdVar
  loc_B2AADD: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2AAE2: FStStrNoPop var_BC
  loc_B2AAE5: ConcatStr
  loc_B2AAE6: FStStrNoPop var_C0
  loc_B2AAE9: LitStr "</td>"
  loc_B2AAEC: ConcatStr
  loc_B2AAED: CVarStr var_B8
  loc_B2AAF0: PopAdLdVar
  loc_B2AAF1: FLdPr Me
  loc_B2AAF4: MemLdRfVar from_stack_1.htmFile
  loc_B2AAF7: LdPrVar
  loc_B2AAF9: LateMemCall
  loc_B2AAFF: FFreeStr var_BC = ""
  loc_B2AB06: FFree1Var var_B8 = ""
  loc_B2AB09: LitVarStr var_94, "   <td width=""25" & Chr(37) & """ align=""right"" class=""Encabezado"">TOTAL PASIVO:</td>"
  loc_B2AB0E: PopAdLdVar
  loc_B2AB0F: FLdPr Me
  loc_B2AB12: MemLdRfVar from_stack_1.htmFile
  loc_B2AB15: LdPrVar
  loc_B2AB17: LateMemCall
  loc_B2AB1D: LitStr "   <td width=""25" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_B2AB20: FLdPr Me
  loc_B2AB23: MemLdStr global_148
  loc_B2AB26: CVarStr var_94
  loc_B2AB29: PopAdLdVar
  loc_B2AB2A: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2AB2F: FStStrNoPop var_BC
  loc_B2AB32: ConcatStr
  loc_B2AB33: FStStrNoPop var_C0
  loc_B2AB36: LitStr "</td>"
  loc_B2AB39: ConcatStr
  loc_B2AB3A: CVarStr var_B8
  loc_B2AB3D: PopAdLdVar
  loc_B2AB3E: FLdPr Me
  loc_B2AB41: MemLdRfVar from_stack_1.htmFile
  loc_B2AB44: LdPrVar
  loc_B2AB46: LateMemCall
  loc_B2AB4C: FFreeStr var_BC = ""
  loc_B2AB53: FFree1Var var_B8 = ""
  loc_B2AB56: LitVarStr var_94, "  </tr>"
  loc_B2AB5B: PopAdLdVar
  loc_B2AB5C: FLdPr Me
  loc_B2AB5F: MemLdRfVar from_stack_1.htmFile
  loc_B2AB62: LdPrVar
  loc_B2AB64: LateMemCall
  loc_B2AB6A: LitVarStr var_94, " <tr>"
  loc_B2AB6F: PopAdLdVar
  loc_B2AB70: FLdPr Me
  loc_B2AB73: MemLdRfVar from_stack_1.htmFile
  loc_B2AB76: LdPrVar
  loc_B2AB78: LateMemCall
  loc_B2AB7E: LitVarStr var_94, "   <td colspan=""4"" align=""right"">&nbsp;</td>"
  loc_B2AB83: PopAdLdVar
  loc_B2AB84: FLdPr Me
  loc_B2AB87: MemLdRfVar from_stack_1.htmFile
  loc_B2AB8A: LdPrVar
  loc_B2AB8C: LateMemCall
  loc_B2AB92: LitVarStr var_94, "  </tr>"
  loc_B2AB97: PopAdLdVar
  loc_B2AB98: FLdPr Me
  loc_B2AB9B: MemLdRfVar from_stack_1.htmFile
  loc_B2AB9E: LdPrVar
  loc_B2ABA0: LateMemCall
  loc_B2ABA6: LitVarStr var_94, " <tr>"
  loc_B2ABAB: PopAdLdVar
  loc_B2ABAC: FLdPr Me
  loc_B2ABAF: MemLdRfVar from_stack_1.htmFile
  loc_B2ABB2: LdPrVar
  loc_B2ABB4: LateMemCall
  loc_B2ABBA: LitVarStr var_94, "   <td rowspan=""2"" align=""right"">&nbsp;</td>"
  loc_B2ABBF: PopAdLdVar
  loc_B2ABC0: FLdPr Me
  loc_B2ABC3: MemLdRfVar from_stack_1.htmFile
  loc_B2ABC6: LdPrVar
  loc_B2ABC8: LateMemCall
  loc_B2ABCE: LitVarStr var_94, "   <td align=""right"" class=""Encabezado"">PATRIMONIO NETO:</td>"
  loc_B2ABD3: PopAdLdVar
  loc_B2ABD4: FLdPr Me
  loc_B2ABD7: MemLdRfVar from_stack_1.htmFile
  loc_B2ABDA: LdPrVar
  loc_B2ABDC: LateMemCall
  loc_B2ABE2: LitStr "   <td align=""right"" class=""Totales"">"
  loc_B2ABE5: FLdPr Me
  loc_B2ABE8: MemLdStr global_152
  loc_B2ABEB: CVarStr var_94
  loc_B2ABEE: PopAdLdVar
  loc_B2ABEF: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2ABF4: FStStrNoPop var_BC
  loc_B2ABF7: ConcatStr
  loc_B2ABF8: FStStrNoPop var_C0
  loc_B2ABFB: LitStr "</td>"
  loc_B2ABFE: ConcatStr
  loc_B2ABFF: CVarStr var_B8
  loc_B2AC02: PopAdLdVar
  loc_B2AC03: FLdPr Me
  loc_B2AC06: MemLdRfVar from_stack_1.htmFile
  loc_B2AC09: LdPrVar
  loc_B2AC0B: LateMemCall
  loc_B2AC11: FFreeStr var_BC = ""
  loc_B2AC18: FFree1Var var_B8 = ""
  loc_B2AC1B: LitVarStr var_94, "   <td rowspan=""2"" align=""right"">&nbsp;</td>"
  loc_B2AC20: PopAdLdVar
  loc_B2AC21: FLdPr Me
  loc_B2AC24: MemLdRfVar from_stack_1.htmFile
  loc_B2AC27: LdPrVar
  loc_B2AC29: LateMemCall
  loc_B2AC2F: LitVarStr var_94, " </tr>"
  loc_B2AC34: PopAdLdVar
  loc_B2AC35: FLdPr Me
  loc_B2AC38: MemLdRfVar from_stack_1.htmFile
  loc_B2AC3B: LdPrVar
  loc_B2AC3D: LateMemCall
  loc_B2AC43: LitVarStr var_94, " <tr>"
  loc_B2AC48: PopAdLdVar
  loc_B2AC49: FLdPr Me
  loc_B2AC4C: MemLdRfVar from_stack_1.htmFile
  loc_B2AC4F: LdPrVar
  loc_B2AC51: LateMemCall
  loc_B2AC57: LitVarStr var_94, "   <td align=""right"" class=""Encabezado"">TOTAL PASIVO + PATRIMONIO NETO:</td>"
  loc_B2AC5C: PopAdLdVar
  loc_B2AC5D: FLdPr Me
  loc_B2AC60: MemLdRfVar from_stack_1.htmFile
  loc_B2AC63: LdPrVar
  loc_B2AC65: LateMemCall
  loc_B2AC6B: LitStr "   <td align=""right"" class=""Totales"">"
  loc_B2AC6E: FLdPr Me
  loc_B2AC71: MemLdStr global_156
  loc_B2AC74: CVarStr var_94
  loc_B2AC77: PopAdLdVar
  loc_B2AC78: ImpAdCallI2 Proc_261_23_9A538C(, , , )
  loc_B2AC7D: FStStrNoPop var_BC
  loc_B2AC80: ConcatStr
  loc_B2AC81: FStStrNoPop var_C0
  loc_B2AC84: LitStr "</td>"
  loc_B2AC87: ConcatStr
  loc_B2AC88: CVarStr var_B8
  loc_B2AC8B: PopAdLdVar
  loc_B2AC8C: FLdPr Me
  loc_B2AC8F: MemLdRfVar from_stack_1.htmFile
  loc_B2AC92: LdPrVar
  loc_B2AC94: LateMemCall
  loc_B2AC9A: FFreeStr var_BC = ""
  loc_B2ACA1: FFree1Var var_B8 = ""
  loc_B2ACA4: LitVarStr var_94, "  </tr>"
  loc_B2ACA9: PopAdLdVar
  loc_B2ACAA: FLdPr Me
  loc_B2ACAD: MemLdRfVar from_stack_1.htmFile
  loc_B2ACB0: LdPrVar
  loc_B2ACB2: LateMemCall
  loc_B2ACB8: LitVarStr var_94, "</table>"
  loc_B2ACBD: PopAdLdVar
  loc_B2ACBE: FLdPr Me
  loc_B2ACC1: MemLdRfVar from_stack_1.htmFile
  loc_B2ACC4: LdPrVar
  loc_B2ACC6: LateMemCall
  loc_B2ACCC: ExitProcHresult
End Function

Private Function Proc_146_28_A60D5C() 'A60D5C
  'Data Table: 452E8C
  loc_A60A44: LitVarStr var_94, "<html>"
  loc_A60A49: PopAdLdVar
  loc_A60A4A: FLdPr Me
  loc_A60A4D: MemLdRfVar from_stack_1.htmFile
  loc_A60A50: LdPrVar
  loc_A60A52: LateMemCall
  loc_A60A58: LitVarStr var_94, "<head>"
  loc_A60A5D: PopAdLdVar
  loc_A60A5E: FLdPr Me
  loc_A60A61: MemLdRfVar from_stack_1.htmFile
  loc_A60A64: LdPrVar
  loc_A60A66: LateMemCall
  loc_A60A6C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A60A71: PopAdLdVar
  loc_A60A72: FLdPr Me
  loc_A60A75: MemLdRfVar from_stack_1.htmFile
  loc_A60A78: LdPrVar
  loc_A60A7A: LateMemCall
  loc_A60A80: LitStr "<title>"
  loc_A60A83: FLdRfVar var_A8
  loc_A60A86: FLdPr Me
  loc_A60A89:  = Me.Caption
  loc_A60A8E: ILdRf var_A8
  loc_A60A91: ConcatStr
  loc_A60A92: FStStrNoPop var_AC
  loc_A60A95: LitStr " - "
  loc_A60A98: ConcatStr
  loc_A60A99: FStStrNoPop var_B0
  loc_A60A9C: LitStr "Municipalidad de Guaymallén"
  loc_A60A9F: ConcatStr
  loc_A60AA0: FStStrNoPop var_B4
  loc_A60AA3: LitStr "</title>"
  loc_A60AA6: ConcatStr
  loc_A60AA7: CVarStr var_C4
  loc_A60AAA: PopAdLdVar
  loc_A60AAB: FLdPr Me
  loc_A60AAE: MemLdRfVar from_stack_1.htmFile
  loc_A60AB1: LdPrVar
  loc_A60AB3: LateMemCall
  loc_A60AB9: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A60AC4: FFree1Var var_C4 = ""
  loc_A60AC7: LitStr vbNullString
  loc_A60ACA: ILdRf Me
  loc_A60ACD: CastAd
  loc_A60AD0: FStAdFunc var_C8
  loc_A60AD3: FLdRfVar var_C8
  loc_A60AD6: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A60ADB: FFree1Ad var_C8
  loc_A60ADE: LitI4 0
  loc_A60AE3: FStStrCopy var_AC
  loc_A60AE6: FLdRfVar var_AC
  loc_A60AE9: LitI4 0
  loc_A60AEE: FStStrCopy var_A8
  loc_A60AF1: FLdRfVar var_A8
  loc_A60AF4: LitI2_Byte &HFF
  loc_A60AF6: PopTmpLdAd2 var_CA
  loc_A60AF9: FLdPr Me
  loc_A60AFC: MemLdRfVar from_stack_1.htmFile
  loc_A60AFF: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A60B04: FFreeStr var_A8 = ""
  loc_A60B0B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A60B10: PopAdLdVar
  loc_A60B11: FLdPr Me
  loc_A60B14: MemLdRfVar from_stack_1.htmFile
  loc_A60B17: LdPrVar
  loc_A60B19: LateMemCall
  loc_A60B1F: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A60B24: PopAdLdVar
  loc_A60B25: FLdPr Me
  loc_A60B28: MemLdRfVar from_stack_1.htmFile
  loc_A60B2B: LdPrVar
  loc_A60B2D: LateMemCall
  loc_A60B33: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A60B38: PopAdLdVar
  loc_A60B39: FLdPr Me
  loc_A60B3C: MemLdRfVar from_stack_1.htmFile
  loc_A60B3F: LdPrVar
  loc_A60B41: LateMemCall
  loc_A60B47: FLdPr Me
  loc_A60B4A: MemLdI2 bLogos
  loc_A60B4D: BranchF loc_A60B64
  loc_A60B50: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A60B55: PopAdLdVar
  loc_A60B56: FLdPr Me
  loc_A60B59: MemLdRfVar from_stack_1.htmFile
  loc_A60B5C: LdPrVar
  loc_A60B5E: LateMemCall
  loc_A60B64: LitVarStr var_A4, "    <br><br>"
  loc_A60B69: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A60B6E: FStVarCopyObj var_C4
  loc_A60B71: FLdRfVar var_C4
  loc_A60B74: FLdRfVar var_DC
  loc_A60B77: ImpAdCallFPR4  = Ucase()
  loc_A60B7C: FLdRfVar var_DC
  loc_A60B7F: ConcatVar var_EC
  loc_A60B83: LitVarStr var_FC, "</p>"
  loc_A60B88: ConcatVar var_10C
  loc_A60B8C: PopAdLdVar
  loc_A60B8D: FLdPr Me
  loc_A60B90: MemLdRfVar from_stack_1.htmFile
  loc_A60B93: LdPrVar
  loc_A60B95: LateMemCall
  loc_A60B9B: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A60BA6: LitStr "    <p>"
  loc_A60BA9: FLdRfVar var_A8
  loc_A60BAC: FLdPr Me
  loc_A60BAF:  = Me.Caption
  loc_A60BB4: ILdRf var_A8
  loc_A60BB7: ConcatStr
  loc_A60BB8: FStStrNoPop var_AC
  loc_A60BBB: LitStr "</p></th>"
  loc_A60BBE: ConcatStr
  loc_A60BBF: CVarStr var_C4
  loc_A60BC2: PopAdLdVar
  loc_A60BC3: FLdPr Me
  loc_A60BC6: MemLdRfVar from_stack_1.htmFile
  loc_A60BC9: LdPrVar
  loc_A60BCB: LateMemCall
  loc_A60BD1: FFreeStr var_A8 = ""
  loc_A60BD8: FFree1Var var_C4 = ""
  loc_A60BDB: LitVarStr var_94, "  </tr>"
  loc_A60BE0: PopAdLdVar
  loc_A60BE1: FLdPr Me
  loc_A60BE4: MemLdRfVar from_stack_1.htmFile
  loc_A60BE7: LdPrVar
  loc_A60BE9: LateMemCall
  loc_A60BEF: LitVarStr var_94, "  <tr>"
  loc_A60BF4: PopAdLdVar
  loc_A60BF5: FLdPr Me
  loc_A60BF8: MemLdRfVar from_stack_1.htmFile
  loc_A60BFB: LdPrVar
  loc_A60BFD: LateMemCall
  loc_A60C03: LitVarStr var_94, "    <th>"
  loc_A60C08: PopAdLdVar
  loc_A60C09: FLdPr Me
  loc_A60C0C: MemLdRfVar from_stack_1.htmFile
  loc_A60C0F: LdPrVar
  loc_A60C11: LateMemCall
  loc_A60C17: LitStr "      <p align=""left"" class=""Titulo2"">      Repartición/Organismo: "
  loc_A60C1A: LitStr "Municipalidad de Guaymallén"
  loc_A60C1D: ConcatStr
  loc_A60C1E: FStStrNoPop var_A8
  loc_A60C21: LitStr "<br>"
  loc_A60C24: ConcatStr
  loc_A60C25: CVarStr var_C4
  loc_A60C28: PopAdLdVar
  loc_A60C29: FLdPr Me
  loc_A60C2C: MemLdRfVar from_stack_1.htmFile
  loc_A60C2F: LdPrVar
  loc_A60C31: LateMemCall
  loc_A60C37: FFree1Str var_A8
  loc_A60C3A: FFree1Var var_C4 = ""
  loc_A60C3D: LitStr "    Nomenclador: "
  loc_A60C40: LitStr "060204"
  loc_A60C43: ConcatStr
  loc_A60C44: FStStrNoPop var_A8
  loc_A60C47: LitStr "<br>"
  loc_A60C4A: ConcatStr
  loc_A60C4B: CVarStr var_C4
  loc_A60C4E: PopAdLdVar
  loc_A60C4F: FLdPr Me
  loc_A60C52: MemLdRfVar from_stack_1.htmFile
  loc_A60C55: LdPrVar
  loc_A60C57: LateMemCall
  loc_A60C5D: FFree1Str var_A8
  loc_A60C60: FFree1Var var_C4 = ""
  loc_A60C63: LitStr "    Ejercicio: "
  loc_A60C66: FLdRfVar var_A8
  loc_A60C69: FLdPr Me
  loc_A60C6C: VCallAd Control_ID_cboPeriodo
  loc_A60C6F: FStAdFunc var_C8
  loc_A60C72: FLdPr var_C8
  loc_A60C75:  = Me.Text
  loc_A60C7A: ILdRf var_A8
  loc_A60C7D: ConcatStr
  loc_A60C7E: FStStrNoPop var_AC
  loc_A60C81: LitStr "<br>"
  loc_A60C84: ConcatStr
  loc_A60C85: CVarStr var_C4
  loc_A60C88: PopAdLdVar
  loc_A60C89: FLdPr Me
  loc_A60C8C: MemLdRfVar from_stack_1.htmFile
  loc_A60C8F: LdPrVar
  loc_A60C91: LateMemCall
  loc_A60C97: FFreeStr var_A8 = ""
  loc_A60C9E: FFree1Ad var_C8
  loc_A60CA1: FFree1Var var_C4 = ""
  loc_A60CA4: LitVarStr var_94, "    </p></th>"
  loc_A60CA9: PopAdLdVar
  loc_A60CAA: FLdPr Me
  loc_A60CAD: MemLdRfVar from_stack_1.htmFile
  loc_A60CB0: LdPrVar
  loc_A60CB2: LateMemCall
  loc_A60CB8: LitVarStr var_94, "  </tr>"
  loc_A60CBD: PopAdLdVar
  loc_A60CBE: FLdPr Me
  loc_A60CC1: MemLdRfVar from_stack_1.htmFile
  loc_A60CC4: LdPrVar
  loc_A60CC6: LateMemCall
  loc_A60CCC: LitVarStr var_94, "</table>"
  loc_A60CD1: PopAdLdVar
  loc_A60CD2: FLdPr Me
  loc_A60CD5: MemLdRfVar from_stack_1.htmFile
  loc_A60CD8: LdPrVar
  loc_A60CDA: LateMemCall
  loc_A60CE0: LitVarStr var_94, "<br>"
  loc_A60CE5: PopAdLdVar
  loc_A60CE6: FLdPr Me
  loc_A60CE9: MemLdRfVar from_stack_1.htmFile
  loc_A60CEC: LdPrVar
  loc_A60CEE: LateMemCall
  loc_A60CF4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A60CF9: PopAdLdVar
  loc_A60CFA: FLdPr Me
  loc_A60CFD: MemLdRfVar from_stack_1.htmFile
  loc_A60D00: LdPrVar
  loc_A60D02: LateMemCall
  loc_A60D08: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A60D0D: PopAdLdVar
  loc_A60D0E: FLdPr Me
  loc_A60D11: MemLdRfVar from_stack_1.htmFile
  loc_A60D14: LdPrVar
  loc_A60D16: LateMemCall
  loc_A60D1C: LitVarStr var_94, "     <th colspan=""2"">ACTIVO</th>"
  loc_A60D21: PopAdLdVar
  loc_A60D22: FLdPr Me
  loc_A60D25: MemLdRfVar from_stack_1.htmFile
  loc_A60D28: LdPrVar
  loc_A60D2A: LateMemCall
  loc_A60D30: LitVarStr var_94, "     <th colspan=""2"">PASIVO</th>"
  loc_A60D35: PopAdLdVar
  loc_A60D36: FLdPr Me
  loc_A60D39: MemLdRfVar from_stack_1.htmFile
  loc_A60D3C: LdPrVar
  loc_A60D3E: LateMemCall
  loc_A60D44: LitVarStr var_94, " </tr>"
  loc_A60D49: PopAdLdVar
  loc_A60D4A: FLdPr Me
  loc_A60D4D: MemLdRfVar from_stack_1.htmFile
  loc_A60D50: LdPrVar
  loc_A60D52: LateMemCall
  loc_A60D58: ExitProcHresult
  loc_A60D59: NewIfNullPr Me
End Function

Private Function Proc_146_29_9E61EC() '9E61EC
  'Data Table: 452E8C
  loc_9E60BC: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9E60C1: PopAdLdVar
  loc_9E60C2: FLdPr Me
  loc_9E60C5: MemLdRfVar from_stack_1.htmFile
  loc_9E60C8: LdPrVar
  loc_9E60CA: LateMemCall
  loc_9E60D0: LitVarStr var_94, "  <tr>"
  loc_9E60D5: PopAdLdVar
  loc_9E60D6: FLdPr Me
  loc_9E60D9: MemLdRfVar from_stack_1.htmFile
  loc_9E60DC: LdPrVar
  loc_9E60DE: LateMemCall
  loc_9E60E4: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9E60E9: PopAdLdVar
  loc_9E60EA: FLdPr Me
  loc_9E60ED: MemLdRfVar from_stack_1.htmFile
  loc_9E60F0: LdPrVar
  loc_9E60F2: LateMemCall
  loc_9E60F8: LitVarStr var_94, "          <map name=""Map"">"
  loc_9E60FD: PopAdLdVar
  loc_9E60FE: FLdPr Me
  loc_9E6101: MemLdRfVar from_stack_1.htmFile
  loc_9E6104: LdPrVar
  loc_9E6106: LateMemCall
  loc_9E610C: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9E6111: PopAdLdVar
  loc_9E6112: FLdPr Me
  loc_9E6115: MemLdRfVar from_stack_1.htmFile
  loc_9E6118: LdPrVar
  loc_9E611A: LateMemCall
  loc_9E6120: LitVarStr var_94, "          </map>"
  loc_9E6125: PopAdLdVar
  loc_9E6126: FLdPr Me
  loc_9E6129: MemLdRfVar from_stack_1.htmFile
  loc_9E612C: LdPrVar
  loc_9E612E: LateMemCall
  loc_9E6134: LitVarStr var_94, "    </div></th>"
  loc_9E6139: PopAdLdVar
  loc_9E613A: FLdPr Me
  loc_9E613D: MemLdRfVar from_stack_1.htmFile
  loc_9E6140: LdPrVar
  loc_9E6142: LateMemCall
  loc_9E6148: LitVarStr var_94, "  </tr>"
  loc_9E614D: PopAdLdVar
  loc_9E614E: FLdPr Me
  loc_9E6151: MemLdRfVar from_stack_1.htmFile
  loc_9E6154: LdPrVar
  loc_9E6156: LateMemCall
  loc_9E615C: LitVarStr var_94, "  <tr>"
  loc_9E6161: PopAdLdVar
  loc_9E6162: FLdPr Me
  loc_9E6165: MemLdRfVar from_stack_1.htmFile
  loc_9E6168: LdPrVar
  loc_9E616A: LateMemCall
  loc_9E6170: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9E6175: PopAdLdVar
  loc_9E6176: FLdPr Me
  loc_9E6179: MemLdRfVar from_stack_1.htmFile
  loc_9E617C: LdPrVar
  loc_9E617E: LateMemCall
  loc_9E6184: LitVarStr var_94, "  </tr>"
  loc_9E6189: PopAdLdVar
  loc_9E618A: FLdPr Me
  loc_9E618D: MemLdRfVar from_stack_1.htmFile
  loc_9E6190: LdPrVar
  loc_9E6192: LateMemCall
  loc_9E6198: LitVarStr var_94, "</table>"
  loc_9E619D: PopAdLdVar
  loc_9E619E: FLdPr Me
  loc_9E61A1: MemLdRfVar from_stack_1.htmFile
  loc_9E61A4: LdPrVar
  loc_9E61A6: LateMemCall
  loc_9E61AC: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9E61B1: PopAdLdVar
  loc_9E61B2: FLdPr Me
  loc_9E61B5: MemLdRfVar from_stack_1.htmFile
  loc_9E61B8: LdPrVar
  loc_9E61BA: LateMemCall
  loc_9E61C0: LitVarStr var_94, "</body>"
  loc_9E61C5: PopAdLdVar
  loc_9E61C6: FLdPr Me
  loc_9E61C9: MemLdRfVar from_stack_1.htmFile
  loc_9E61CC: LdPrVar
  loc_9E61CE: LateMemCall
  loc_9E61D4: LitVarStr var_94, "</html>"
  loc_9E61D9: PopAdLdVar
  loc_9E61DA: FLdPr Me
  loc_9E61DD: MemLdRfVar from_stack_1.htmFile
  loc_9E61E0: LdPrVar
  loc_9E61E2: LateMemCall
  loc_9E61E8: ExitProcHresult
End Function
