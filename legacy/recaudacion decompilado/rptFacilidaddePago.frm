VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptFacilidaddePago
  Caption = "Facilidad de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8316
  ClientHeight = 3612
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 7680
    Top = 2160
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3360
    Width = 8310
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptFacilidaddePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2400
    Width = 735
    Height = 615
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptFacilidaddePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptFacilidaddePago.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2160
    Width = 1815
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 240
      Width = 1335
      Height = 615
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2160
    Width = 3975
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 2040
      Top = 240
      Width = 1815
      Height = 615
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 240
      Width = 1695
      Height = 615
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 2055
    TabIndex = 8
    Begin VB.TextBox CuenCtctTxt
      Left = 2640
      Top = 840
      Width = 1335
      Height = 435
      TabIndex = 1
      MaxLength = 11
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.ComboBox CodiOficCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1320
      Width = 3615
      Height = 420
      TabIndex = 2
      List = "rptFacilidaddePago.frx":0C00
      ItemData = "rptFacilidaddePago.frx":0C74
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Locked = -1  'True
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin MSMask.MaskEdBox CodiFapaMsk
      Left = 2640
      Top = 360
      Width = 1335
      Height = 435
      TabIndex = 0
      OleObjectBlob = "rptFacilidaddePago.frx":0C87
    End
    Begin ABC128Lib.Abc128 BarCode
      Left = 0
      Top = 0
      Width = 765
      Height = 375
      Visible = 0   'False
      TabIndex = 16
      OleObjectBlob = "rptFacilidaddePago.frx":0D1F
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 1680
      Top = 1320
      Width = 795
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Facilidad:"
      Left = 1560
      Top = 360
      Width = 1005
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Cuenta:"
      Left = 1680
      Top = 840
      Width = 840
      Height = 300
      TabIndex = 13
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6960
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptFacilidaddePago.frx":0DF1
  End
End

Attribute VB_Name = "rptFacilidaddePago"

Public RespNoTitular As String
Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005676F0
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_3_00567744
  bStruc(48) As Byte ' String fields: 2
End Type

Private Type UDT_4_00567804
  bStruc(116) As Byte ' String fields: 29
End Type

Private Type UDT_5_005678A0
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_6_005678CC
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub Timer1_Timer() 'A16140
  'Data Table: 4C76E8
  loc_A16100: LitI2_Byte 0
  loc_A16102: FLdPr Me
  loc_A16105: VCallAd Control_ID_Timer1
  loc_A16108: FStAdFunc var_88
  loc_A1610B: FLdPr var_88
  loc_A1610E: Me.Enabled = from_stack_1b
  loc_A16113: FFree1Ad var_88
  loc_A16116: FLdPr Me
  loc_A16119: MemLdStr global_132
  loc_A1611C: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A16121: FStStr var_8C
  loc_A16124: FFree1Str var_8C
  loc_A16127: ILdRf Me
  loc_A1612A: FStAdNoPop
  loc_A1612E: ImpAdLdRf MemVar_D9C5D8
  loc_A16131: NewIfNullPr Global
  loc_A16134: Global.Unload from_stack_1
  loc_A16139: FFree1Ad var_88
  loc_A1613C: ExitProcHresult
  loc_A1613D: FStFPR8 Timer1_TimerB8
End Sub

Private Sub cmdNueva_Click() 'A775F0
  'Data Table: 4C76E8
  loc_A77570: LitI2_Byte 0
  loc_A77572: FLdPr Me
  loc_A77575: MemStI2 bGenerado
  loc_A77578: LitI2_Byte 0
  loc_A7757A: ILdRf Me
  loc_A7757D: CastAd
  loc_A77580: FStAdFunc var_88
  loc_A77583: FLdRfVar var_88
  loc_A77586: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A7758B: FFree1Ad var_88
  loc_A7758E: LitVarStr var_98, vbNullString
  loc_A77593: PopAdLdVar
  loc_A77594: FLdPr Me
  loc_A77597: VCallAd Control_ID_CodiFapaMsk
  loc_A7759A: FStAdFunc var_88
  loc_A7759D: FLdPr var_88
  loc_A775A0: LateIdSt
  loc_A775A5: FFree1Ad var_88
  loc_A775A8: LitStr vbNullString
  loc_A775AB: FLdPr Me
  loc_A775AE: VCallAd Control_ID_CuenCtctTxt
  loc_A775B1: FStAdFunc var_88
  loc_A775B4: FLdPr var_88
  loc_A775B7: Me.Text = from_stack_1
  loc_A775BC: FFree1Ad var_88
  loc_A775BF: LitI2_Byte 0
  loc_A775C1: FLdPr Me
  loc_A775C4: VCallAd Control_ID_CodiOficCbo
  loc_A775C7: FStAdFunc var_88
  loc_A775CA: FLdPr var_88
  loc_A775CD: Me.ListIndex = from_stack_1
  loc_A775D2: FFree1Ad var_88
  loc_A775D5: Call HabilitarCriterio()
  loc_A775DA: ILdRf Me
  loc_A775DD: CastAd
  loc_A775E0: FStAdFunc var_88
  loc_A775E3: FLdRfVar var_88
  loc_A775E6: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A775EB: FFree1Ad var_88
  loc_A775EE: ExitProcHresult
  loc_A775EF: CStrVarTmp
End Sub

Private Sub CodiFapaMsk_UnknownEvent_0 '9C1C70
  'Data Table: 4C76E8
  loc_9C1C5C: FLdPr Me
  loc_9C1C5F: VCallAd Control_ID_CodiFapaMsk
  loc_9C1C62: CVarAd
  loc_9C1C66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1C6B: FFree1Var var_94 = ""
  loc_9C1C6E: ExitProcHresult
End Sub

Private Function CodiFapaMsk_UnknownEvent_8(arg_C) 'A908C4
  'Data Table: 4C76E8
  loc_A90824: FLdPr Me
  loc_A90827: VCallAd Control_ID_CodiFapaMsk
  loc_A9082A: FStAdFunc var_88
  loc_A9082D: FLdPr var_88
  loc_A90830: LateIdLdVar var_98 DispID_22 0
  loc_A90837: PopAd
  loc_A90839: LitI2_Byte 0
  loc_A9083B: LitI2_Byte 0
  loc_A9083D: FLdRfVar var_98
  loc_A90840: CStrVarTmp
  loc_A90841: FStStrNoPop var_9C
  loc_A90844: LitStr "el número de facilidad de pago"
  loc_A90847: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A9084C: FStStrNoPop var_A0
  loc_A9084F: FLdPr Me
  loc_A90852: MemStStrCopy
  loc_A90856: FFreeStr var_9C = ""
  loc_A9085D: FFree1Ad var_88
  loc_A90860: FFree1Var var_98 = ""
  loc_A90863: FLdPr Me
  loc_A90866: VCallAd Control_ID_CodiFapaMsk
  loc_A90869: FStAdFuncNoPop
  loc_A9086C: CastAd
  loc_A9086F: FStAdFunc var_A4
  loc_A90872: FLdRfVar var_A4
  loc_A90875: FLdPr Me
  loc_A90878: MemLdStr global_136
  loc_A9087B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A90880: IStI2 arg_C
  loc_A90883: FFreeAd var_88 = ""
  loc_A9088A: ILdI2 arg_C
  loc_A9088D: NotI4
  loc_A9088E: BranchF loc_A908C0
  loc_A90891: FLdRfVar var_9C
  loc_A90894: from_stack_1v = DatosFacilidad()
  loc_A90899: FLdPr Me
  loc_A9089C: VCallAd Control_ID_CodiFapaMsk
  loc_A9089F: FStAdFuncNoPop
  loc_A908A2: CastAd
  loc_A908A5: FStAdFunc var_A4
  loc_A908A8: FLdRfVar var_A4
  loc_A908AB: ILdRf var_9C
  loc_A908AE: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A908B3: IStI2 arg_C
  loc_A908B6: FFree1Str var_9C
  loc_A908B9: FFreeAd var_88 = ""
  loc_A908C0: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9D259C
  'Data Table: 4C76E8
  loc_9D2584: ILdRf Me
  loc_9D2587: CastAd
  loc_9D258A: FStAdFunc var_88
  loc_9D258D: FLdRfVar var_88
  loc_9D2590: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D2595: FFree1Ad var_88
  loc_9D2598: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A84824
  'Data Table: 4C76E8
  loc_A84794: FLdRfVar var_88
  loc_A84797: ImpAdLdRf MemVar_D9C5D8
  loc_A8479A: NewIfNullPr Global
  loc_A8479D:  = Global.Printer
  loc_A847A2: FLdPr var_88
  loc_A847A5: LateIdLdVar var_98 DispID_28 1
  loc_A847AC: CStrVarTmp
  loc_A847AD: FStStrNoPop var_9C
  loc_A847B0: FLdPr Me
  loc_A847B3: MemStStrCopy
  loc_A847B7: FFree1Str var_9C
  loc_A847BA: FFree1Ad var_88
  loc_A847BD: FFree1Var var_98 = ""
  loc_A847C0: ImpAdLdI4 MemVar_D93CA4
  loc_A847C3: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A847C8: FStStr var_9C
  loc_A847CB: FFree1Str var_9C
  loc_A847CE: LitI2_Byte 0
  loc_A847D0: ILdRf Me
  loc_A847D3: CastAd
  loc_A847D6: FStAdFunc var_88
  loc_A847D9: FLdRfVar var_88
  loc_A847DC: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A847E1: FFree1Ad var_88
  loc_A847E4: FLdRfVar var_9E
  loc_A847E7: FLdPr Me
  loc_A847EA: VCallAd Control_ID_cmdPredeterminada
  loc_A847ED: FStAdFunc var_88
  loc_A847F0: FLdPr var_88
  loc_A847F3:  = Me.Enabled
  loc_A847F8: FLdI2 var_9E
  loc_A847FB: NotI4
  loc_A847FC: FFree1Ad var_88
  loc_A847FF: BranchF loc_A8480A
  loc_A84802: ImpAdCallFPR4 DoEvents()
  loc_A84807: Branch loc_A847E4
  loc_A8480A: LitI2_Byte &HFF
  loc_A8480C: FLdPr Me
  loc_A8480F: VCallAd Control_ID_Timer1
  loc_A84812: FStAdFunc var_88
  loc_A84815: FLdPr var_88
  loc_A84818: Me.Enabled = from_stack_1b
  loc_A8481D: FFree1Ad var_88
  loc_A84820: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19270
  'Data Table: 4C76E8
  loc_A19238: FLdPr Me
  loc_A1923B: VCallAd Control_ID_statusBar
  loc_A1923E: FStAdFunc var_88
  loc_A19241: FLdPr var_88
  loc_A19244: LateIdLdVar var_98 DispID_1 0
  loc_A1924B: CStrVarTmp
  loc_A1924C: CVarStr var_A8
  loc_A1924F: PopAdLdVar
  loc_A19250: FLdPr Me
  loc_A19253: VCallAd Control_ID_statusBar
  loc_A19256: FStAdFunc var_BC
  loc_A19259: FLdPr var_BC
  loc_A1925C: LateIdSt
  loc_A19261: FFreeAd var_88 = ""
  loc_A19268: FFreeVar var_98 = ""
  loc_A1926F: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB28D8
  'Data Table: 4C76E8
  loc_AB27FC: ILdRf Me
  loc_AB27FF: CastAd
  loc_AB2802: FStAdFunc var_88
  loc_AB2805: FLdRfVar var_88
  loc_AB2808: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB280D: FFree1Ad var_88
  loc_AB2810: FLdRfVar var_8C
  loc_AB2813: NewIfNullAd
  loc_AB2816: FStAd var_90 
  loc_AB281A: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic"
  loc_AB281D: FLdPr var_90
  loc_AB2820: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AB2825: FLdPr var_90
  loc_AB2828: Call clsoficina.MoveFirst()
  loc_AB282D: FLdPr Me
  loc_AB2830: VCallAd Control_ID_CodiOficCbo
  loc_AB2833: FStAdFunc var_88
  loc_AB2836: FLdPr var_88
  loc_AB2839: Me.Clear
  loc_AB283E: FFree1Ad var_88
  loc_AB2841: FLdRfVar var_92
  loc_AB2844: FLdPr var_90
  loc_AB2847: from_stack_1 = clsoficina.EOF
  loc_AB284C: FLdI2 var_92
  loc_AB284F: NotI4
  loc_AB2850: BranchF loc_AB28CA
  loc_AB2853: LitVar_Missing var_A8
  loc_AB2856: PopAdLdVar
  loc_AB2857: FLdRfVar var_98
  loc_AB285A: FLdPr var_90
  loc_AB285D: from_stack_1 = clsoficina.DetaOfic
  loc_AB2862: ILdRf var_98
  loc_AB2865: FLdPr Me
  loc_AB2868: VCallAd Control_ID_CodiOficCbo
  loc_AB286B: FStAdFunc var_88
  loc_AB286E: FLdPr var_88
  loc_AB2871: Me.AddItem from_stack_1, from_stack_2
  loc_AB2876: FFree1Str var_98
  loc_AB2879: FFree1Ad var_88
  loc_AB287C: FLdRfVar var_92
  loc_AB287F: FLdPr var_90
  loc_AB2882: from_stack_1 = clsoficina.CodiOfic
  loc_AB2887: FLdI2 var_92
  loc_AB288A: CI4UI1
  loc_AB288B: FLdRfVar var_AA
  loc_AB288E: FLdPr Me
  loc_AB2891: VCallAd Control_ID_CodiOficCbo
  loc_AB2894: FStAdFunc var_88
  loc_AB2897: FLdPr var_88
  loc_AB289A:  = Me.NewIndex
  loc_AB289F: FLdI2 var_AA
  loc_AB28A2: FLdPr Me
  loc_AB28A5: VCallAd Control_ID_CodiOficCbo
  loc_AB28A8: FStAdFunc var_B0
  loc_AB28AB: FLdPr var_B0
  loc_AB28AE: Me.ItemData = from_stack_1
  loc_AB28B3: FFreeAd var_88 = ""
  loc_AB28BA: LitI2_Byte 1
  loc_AB28BC: PopTmpLdAd2 var_92
  loc_AB28BF: FLdPr var_90
  loc_AB28C2: Call clsoficina.Move(from_stack_1v)
  loc_AB28C7: Branch loc_AB2841
  loc_AB28CA: LitNothing
  loc_AB28CC: FStAd var_90 
  loc_AB28D0: Call cmdNueva_Click()
  loc_AB28D5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D26CC
  'Data Table: 4C76E8
  loc_9D26B4: FLdPr Me
  loc_9D26B7: VCallAd Control_ID_wbbReporte
  loc_9D26BA: FStAdFunc var_88
  loc_9D26BD: FLdRfVar var_88
  loc_9D26C0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D26C5: FFree1Ad var_88
  loc_9D26C8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FE558
  'Data Table: 4C76E8
  loc_9FE528: LitVarStr var_94, "Cerrando..."
  loc_9FE52D: PopAdLdVar
  loc_9FE52E: FLdPr Me
  loc_9FE531: VCallAd Control_ID_statusBar
  loc_9FE534: FStAdFunc var_A8
  loc_9FE537: FLdPr var_A8
  loc_9FE53A: LateIdSt
  loc_9FE53F: FFree1Ad var_A8
  loc_9FE542: ILdRf Me
  loc_9FE545: FStAdNoPop
  loc_9FE549: ImpAdLdRf MemVar_D9C5D8
  loc_9FE54C: NewIfNullPr Global
  loc_9FE54F: Global.Unload from_stack_1
  loc_9FE554: FFree1Ad var_A8
  loc_9FE557: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E294C
  'Data Table: 4C76E8
  loc_9E2930: LitI2_Byte 0
  loc_9E2932: PopTmpLdAd2 var_8A
  loc_9E2935: ILdRf Me
  loc_9E2938: CastAd
  loc_9E293B: FStAdFunc var_88
  loc_9E293E: FLdRfVar var_88
  loc_9E2941: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2946: FFree1Ad var_88
  loc_9E2949: ExitProcHresult
End Sub

Public Function RespNoTitularGet() '4C883C
  RespNoTitularGet = RespNoTitular
End Function

Public Sub RespNoTitularPut(Value) '4C884B
  RespNoTitular = Value
End Sub

Public Function bGeneradoGet() '4C885A
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C8869
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A1271C
  'Data Table: 4C76E8
  loc_A126E8: LitI4 0
  loc_A126ED: LitI4 0
  loc_A126F2: FLdRfVar var_88
  loc_A126F5: Redim
  loc_A126FF: FLdPr Me
  loc_A12702: VCallAd Control_ID_CodiFapaMsk
  loc_A12705: CVarAd
  loc_A12709: ParmAry1St
  loc_A1270F: FLdRfVar var_88
  loc_A12712: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A12717: FLdRfVar var_88
  loc_A1271A: Erase
  loc_A1271B: ExitProcHresult
End Sub

Public Function DatosFacilidad() 'AB43F8
  'Data Table: 4C76E8
  loc_AB4320: ZeroRetVal
  loc_AB4322: FLdPr Me
  loc_AB4325: MemLdRfVar from_stack_1.global_92
  loc_AB4328: NewIfNullAd
  loc_AB432B: FStAd var_8C 
  loc_AB432F: LitStr "SELECT fp.CodiOfic, DetaOfic, CuenCtct FROM facipago as fp LEFT JOIN oficina USING(CodiOfic) WHERE CodiFapa = '"
  loc_AB4332: FLdPr Me
  loc_AB4335: VCallAd Control_ID_CodiFapaMsk
  loc_AB4338: FStAdFunc var_90
  loc_AB433B: FLdPr var_90
  loc_AB433E: LateIdLdVar var_A0 DispID_22 0
  loc_AB4345: CStrVarTmp
  loc_AB4346: FStStrNoPop var_A4
  loc_AB4349: ConcatStr
  loc_AB434A: FStStrNoPop var_A8
  loc_AB434D: LitStr "'"
  loc_AB4350: ConcatStr
  loc_AB4351: FStStrNoPop var_AC
  loc_AB4354: FLdPr var_8C
  loc_AB4357: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_AB435C: FFreeStr var_A4 = "": var_A8 = ""
  loc_AB4365: FFree1Ad var_90
  loc_AB4368: FFree1Var var_A0 = ""
  loc_AB436B: FLdRfVar var_B0
  loc_AB436E: FLdPr var_8C
  loc_AB4371: from_stack_1 = clsfacipago.RecordCount
  loc_AB4376: ILdRf var_B0
  loc_AB4379: LitI4 0
  loc_AB437E: GtI4
  loc_AB437F: BranchF loc_AB43E4
  loc_AB4382: FLdPr var_8C
  loc_AB4385: Call clsfacipago.MoveFirst()
  loc_AB438A: FLdRfVar var_A4
  loc_AB438D: FLdPr var_8C
  loc_AB4390: from_stack_1 = clsfacipago.CuenCtct
  loc_AB4395: ILdRf var_A4
  loc_AB4398: FLdPr Me
  loc_AB439B: VCallAd Control_ID_CuenCtctTxt
  loc_AB439E: FStAdFunc var_90
  loc_AB43A1: FLdPr var_90
  loc_AB43A4: Me.Text = from_stack_1
  loc_AB43A9: FFree1Str var_A4
  loc_AB43AC: FFree1Ad var_90
  loc_AB43AF: FLdRfVar var_A0
  loc_AB43B2: FLdPr var_8C
  loc_AB43B5: from_stack_1 = clsfacipago.DetaOfic
  loc_AB43BA: FLdRfVar var_A0
  loc_AB43BD: CStrVarVal var_A4
  loc_AB43C1: FLdPr Me
  loc_AB43C4: VCallAd Control_ID_CodiOficCbo
  loc_AB43C7: FStAdFunc var_90
  loc_AB43CA: FLdPr var_90
  loc_AB43CD: Me.Text = from_stack_1
  loc_AB43D2: FFree1Str var_A4
  loc_AB43D5: FFree1Ad var_90
  loc_AB43D8: FFree1Var var_A0 = ""
  loc_AB43DB: LitStr vbNullString
  loc_AB43DE: FStStrCopy var_88
  loc_AB43E1: Branch loc_AB43EA
  loc_AB43E4: LitStr "El número de facilidad de pago ingresado no existe"
  loc_AB43E7: FStStrCopy var_88
  loc_AB43EA: LitNothing
  loc_AB43EC: FStAd var_8C 
  loc_AB43F0: ExitProcCbHresult
End Function

Public Sub GeneraReporte() 'C928F0
  'Data Table: 4C76E8
  loc_C9108C: FLdPr Me
  loc_C9108F: MemLdI2 bGenerado
  loc_C91092: BranchF loc_C91096
  loc_C91095: ExitProcHresult
  loc_C91096: LitVarStr var_A0, "Generando reporte..."
  loc_C9109B: PopAdLdVar
  loc_C9109C: FLdPr Me
  loc_C9109F: VCallAd Control_ID_statusBar
  loc_C910A2: FStAdFunc var_B4
  loc_C910A5: FLdPr var_B4
  loc_C910A8: LateIdSt
  loc_C910AD: FFree1Ad var_B4
  loc_C910B0: LitI4 &HB
  loc_C910B5: CI2I4
  loc_C910B6: FLdPr Me
  loc_C910B9: Me.MousePointer = from_stack_1
  loc_C910BE: FLdRfVar var_C0
  loc_C910C1: FLdRfVar var_B6
  loc_C910C4: FLdPr Me
  loc_C910C7: VCallAd Control_ID_CodiOficCbo
  loc_C910CA: FStAdFunc var_B4
  loc_C910CD: FLdPr var_B4
  loc_C910D0:  = Me.ListIndex
  loc_C910D5: FLdI2 var_B6
  loc_C910D8: FLdPr Me
  loc_C910DB: VCallAd Control_ID_CodiOficCbo
  loc_C910DE: FStAdFunc var_BC
  loc_C910E1: FLdPr var_BC
  loc_C910E4:  = Me.ItemData
  loc_C910E9: ILdRf var_C0
  loc_C910EC: FStR4 var_C4
  loc_C910EF: FFreeAd var_B4 = ""
  loc_C910F6: ILdRf var_C4
  loc_C910F9: LitI4 1
  loc_C910FE: EqI4
  loc_C910FF: BranchF loc_C91105
  loc_C91102: Branch loc_C91230
  loc_C91105: ILdRf var_C4
  loc_C91108: LitI4 2
  loc_C9110D: EqI4
  loc_C9110E: BranchF loc_C91147
  loc_C91111: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'0') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_C91114: LitStr " concat(IFNULL(domipostal.Monoblock,''),' - ',IFNULL(domipostal.Dpto,''),' - ',IFNULL(domipostal.Planta,''),' - ', IFNULL(domipostal.NroLocal,''))  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_C91117: ConcatStr
  loc_C91118: FStStrNoPop var_C8
  loc_C9111B: LitStr " domireal.calle as DetaCall, cast(domireal.NumeCalle as UNSIGNED) as NucaCome, concat(domireal.Monoblock,' - ',domireal.Dpto,' - ',domireal.Planta,' - ', domireal.NroLocal) UbicCome, "
  loc_C9111E: ConcatStr
  loc_C9111F: FStStrNoPop var_CC
  loc_C91122: LitStr " domireal.CodiBarrio as CodiBarr, domireal.barrio as DetaBarr, domireal.Manzana as MansBole, domireal.Casa as CasaBole, concat(domireal.Localidad,' - C.P: ', domireal.CodPostal) as DetaLoca, "
  loc_C91125: ConcatStr
  loc_C91126: FStStr var_88
  loc_C91129: FFreeStr var_C8 = ""
  loc_C91130: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_C91133: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 2 AND domipostal.CodiCome = comercio.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_C91136: ConcatStr
  loc_C91137: FStStrNoPop var_C8
  loc_C9113A: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 2 AND domireal.CodiCome = comercio.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_C9113D: ConcatStr
  loc_C9113E: FStStr var_8C
  loc_C91141: FFree1Str var_C8
  loc_C91144: Branch loc_C91230
  loc_C91147: ILdRf var_C4
  loc_C9114A: LitI4 3
  loc_C9114F: EqI4
  loc_C91150: BranchF loc_C9115C
  loc_C91153: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_C91156: FStStrCopy var_88
  loc_C91159: Branch loc_C91230
  loc_C9115C: ILdRf var_C4
  loc_C9115F: LitI4 4
  loc_C91164: EqI4
  loc_C91165: BranchF loc_C91185
  loc_C91168: LitStr " DetaTise, Nom1Difu NumeDifu, Nom2Difu FilaDifu, Nom3Difu NoseDifu, Nom4Difu SeccDifu, Nom5Difu, DetaDedi, FeveDifu, DetaCeme, '' as DecaPost, '' as NumePost, '' as DebaPost, '' as ManzPost, '' as CasaPost, '' as UbicPost, '' as DeloPost, '' as CopoPost, "
  loc_C9116B: FStStrCopy var_88
  loc_C9116E: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise "
  loc_C91171: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL AND detadifu.FetrDedi IS NULL "
  loc_C91174: ConcatStr
  loc_C91175: FStStrNoPop var_C8
  loc_C91178: LitStr " LEFT JOIN cementerio ON cementerio.CodiCeme = difunto.CodiCeme"
  loc_C9117B: ConcatStr
  loc_C9117C: FStStr var_8C
  loc_C9117F: FFree1Str var_C8
  loc_C91182: Branch loc_C91230
  loc_C91185: ILdRf var_C4
  loc_C91188: LitI4 5
  loc_C9118D: EqI4
  loc_C9118E: BranchF loc_C9119A
  loc_C91191: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_C91194: FStStrCopy var_88
  loc_C91197: Branch loc_C91230
  loc_C9119A: ILdRf var_C4
  loc_C9119D: LitI4 6
  loc_C911A2: EqI4
  loc_C911A3: BranchF loc_C911DC
  loc_C911A6: LitStr " domipostal.calle as DecaPost, IFNULL(domipostal.NumeCalle,'0') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_C911A9: LitStr " concat(IFNULL(domipostal.Monoblock,''),' - ',IFNULL(domipostal.Dpto,''),' - ',IFNULL(domipostal.Planta,''),' - ', IFNULL(domipostal.NroLocal,''))  as UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_C911AC: ConcatStr
  loc_C911AD: FStStrNoPop var_C8
  loc_C911B0: LitStr " domireal.calle as DetaCall, cast(domireal.NumeCalle as UNSIGNED) as NucaCome,  concat(domireal.Monoblock,' - ',domireal.Dpto,' - ',domireal.Planta,' - ', domireal.NroLocal) UbicCome,"
  loc_C911B3: ConcatStr
  loc_C911B4: FStStrNoPop var_CC
  loc_C911B7: LitStr " domireal.CodiBarrio as CodiBarr, domireal.barrio as DetaBarr, domireal.Manzana as MansBole, domireal.Casa as CasaBole, concat(domireal.Localidad,' - C.P: ', domireal.CodPostal) as DetaLoca,"
  loc_C911BA: ConcatStr
  loc_C911BB: FStStr var_88
  loc_C911BE: FFreeStr var_C8 = ""
  loc_C911C5: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = boleto.CuenCtct"
  loc_C911C8: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 6 AND domipostal.CodiCome = publicidad.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_C911CB: ConcatStr
  loc_C911CC: FStStrNoPop var_C8
  loc_C911CF: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 6 AND domireal.CodiCome = publicidad.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_C911D2: ConcatStr
  loc_C911D3: FStStr var_8C
  loc_C911D6: FFree1Str var_C8
  loc_C911D9: Branch loc_C91230
  loc_C911DC: ILdRf var_C4
  loc_C911DF: LitI4 7
  loc_C911E4: EqI4
  loc_C911E5: BranchF loc_C9121E
  loc_C911E8: LitStr " domipostal.calle as DecaPost, IFNULL(domipostal.NumeCalle,'0') as NumePost, domipostal.barrio as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_C911EB: LitStr " concat(IFNULL(domipostal.Monoblock,''),' - ',IFNULL(domipostal.Dpto,''),' - ',IFNULL(domipostal.Planta,''),' - ', IFNULL(domipostal.NroLocal,''))  as UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_C911EE: ConcatStr
  loc_C911EF: FStStrNoPop var_C8
  loc_C911F2: LitStr " domireal.calle as DetaCall, cast(domireal.NumeCalle as UNSIGNED) as NucaCome,  concat(domireal.Monoblock,' - ',domireal.Dpto,' - ',domireal.Planta,' - ', domireal.NroLocal) UbicCome,"
  loc_C911F5: ConcatStr
  loc_C911F6: FStStrNoPop var_CC
  loc_C911F9: LitStr " domireal.CodiBarrio as CodiBarr, domireal.barrio as DetaBarr, domireal.Manzana as MansBole, domireal.Casa as CasaBole, concat(domireal.Localidad,' - C.P: ', domireal.CodPostal) as DetaLoca,"
  loc_C911FC: ConcatStr
  loc_C911FD: FStStr var_88
  loc_C91200: FFreeStr var_C8 = ""
  loc_C91207: LitStr " LEFT JOIN antena ON antena.CodiCome = boleto.CuenCtct"
  loc_C9120A: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 7 AND domipostal.CodiCome = antena.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_C9120D: ConcatStr
  loc_C9120E: FStStrNoPop var_C8
  loc_C91211: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 7 AND domireal.CodiCome = antena.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_C91214: ConcatStr
  loc_C91215: FStStr var_8C
  loc_C91218: FFree1Str var_C8
  loc_C9121B: Branch loc_C91230
  loc_C9121E: ILdRf var_C4
  loc_C91221: LitI4 8
  loc_C91226: EqI4
  loc_C91227: BranchF loc_C91230
  loc_C9122A: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, ExpeBole, "
  loc_C9122D: FStStrCopy var_88
  loc_C91230: FLdPr Me
  loc_C91233: MemLdRfVar from_stack_1.global_84
  loc_C91236: NewIfNullAd
  loc_C91239: FStAd var_D0 
  loc_C9123D: FLdRfVar var_C0
  loc_C91240: FLdRfVar var_B6
  loc_C91243: FLdPr Me
  loc_C91246: VCallAd Control_ID_CodiOficCbo
  loc_C91249: FStAdFunc var_B4
  loc_C9124C: FLdPr var_B4
  loc_C9124F:  = Me.ListIndex
  loc_C91254: FLdI2 var_B6
  loc_C91257: FLdPr Me
  loc_C9125A: VCallAd Control_ID_CodiOficCbo
  loc_C9125D: FStAdFunc var_BC
  loc_C91260: FLdPr var_BC
  loc_C91263:  = Me.ItemData
  loc_C91268: ILdRf var_C0
  loc_C9126B: LitI4 1
  loc_C91270: EqI4
  loc_C91271: FFreeAd var_B4 = ""
  loc_C91278: BranchF loc_C91352
  loc_C9127B: LitStr "SELECT boleto.CuenCtct, boleto.CodiUsua, CuotDefa, boleto.NumeBole, FeveBole, TotaBole, PeriBole"
  loc_C9127E: LitStr " FROM boleto "
  loc_C91281: ConcatStr
  loc_C91282: FStStrNoPop var_C8
  loc_C91285: LitStr " INNER JOIN facipago ON facipago.CodiFapa  = boleto.CodiFapa "
  loc_C91288: ConcatStr
  loc_C91289: FStStrNoPop var_CC
  loc_C9128C: LitStr " WHERE boleto.CodiOfic = "
  loc_C9128F: ConcatStr
  loc_C91290: FStStrNoPop var_D4
  loc_C91293: FLdRfVar var_C0
  loc_C91296: FLdRfVar var_B6
  loc_C91299: FLdPr Me
  loc_C9129C: VCallAd Control_ID_CodiOficCbo
  loc_C9129F: FStAdFunc var_B4
  loc_C912A2: FLdPr var_B4
  loc_C912A5:  = Me.ListIndex
  loc_C912AA: FLdI2 var_B6
  loc_C912AD: FLdPr Me
  loc_C912B0: VCallAd Control_ID_CodiOficCbo
  loc_C912B3: FStAdFunc var_BC
  loc_C912B6: FLdPr var_BC
  loc_C912B9:  = Me.ItemData
  loc_C912BE: ILdRf var_C0
  loc_C912C1: CStrI4
  loc_C912C3: FStStrNoPop var_D8
  loc_C912C6: ConcatStr
  loc_C912C7: FStStrNoPop var_DC
  loc_C912CA: LitStr " AND boleto.CuenCtct = '"
  loc_C912CD: ConcatStr
  loc_C912CE: FStStrNoPop var_E8
  loc_C912D1: FLdRfVar var_E4
  loc_C912D4: FLdPr Me
  loc_C912D7: VCallAd Control_ID_CuenCtctTxt
  loc_C912DA: FStAdFunc var_E0
  loc_C912DD: FLdPr var_E0
  loc_C912E0:  = Me.Text
  loc_C912E5: ILdRf var_E4
  loc_C912E8: ConcatStr
  loc_C912E9: FStStrNoPop var_EC
  loc_C912EC: LitStr "' AND boleto.CodiFapa = "
  loc_C912EF: ConcatStr
  loc_C912F0: FStStrNoPop var_104
  loc_C912F3: FLdPr Me
  loc_C912F6: VCallAd Control_ID_CodiFapaMsk
  loc_C912F9: FStAdFunc var_F0
  loc_C912FC: FLdPr var_F0
  loc_C912FF: LateIdLdVar var_100 DispID_0 0
  loc_C91306: CStrVarTmp
  loc_C91307: FStStrNoPop var_108
  loc_C9130A: ConcatStr
  loc_C9130B: FStStrNoPop var_10C
  loc_C9130E: LitStr " AND facipago.EstaFapa = 'Activa'"
  loc_C91311: ConcatStr
  loc_C91312: FStStrNoPop var_110
  loc_C91315: LitStr " ORDER BY CuotDefa"
  loc_C91318: ConcatStr
  loc_C91319: FStStrNoPop var_114
  loc_C9131C: FLdPr var_D0
  loc_C9131F: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C91324: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E8 = "": var_E4 = "": var_EC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_C91341: FFreeAd var_B4 = "": var_BC = "": var_E0 = ""
  loc_C9134C: FFree1Var var_100 = ""
  loc_C9134F: Branch loc_C9145C
  loc_C91352: LitStr "SELECT"
  loc_C91355: LitStr " boleto.CuenCtct, boleto.CucuPers, ifnull(p1.DetaPers,'') as DetaPers, boleto.CodiUsua,"
  loc_C91358: ConcatStr
  loc_C91359: FStStrNoPop var_C8
  loc_C9135C: ILdRf var_88
  loc_C9135F: ConcatStr
  loc_C91360: FStStrNoPop var_CC
  loc_C91363: LitStr " CuotDefa, boleto.NumeBole, FeveBole, TotaBole, ifnull(p2.DetaPers,'') as Vinculo, PeriBole"
  loc_C91366: ConcatStr
  loc_C91367: FStStrNoPop var_D4
  loc_C9136A: LitStr " FROM boleto LEFT JOIN infogov.persona as p1 ON p1.CucuPers = boleto.CucuPers"
  loc_C9136D: ConcatStr
  loc_C9136E: FStStrNoPop var_D8
  loc_C91371: ILdRf var_8C
  loc_C91374: ConcatStr
  loc_C91375: FStStrNoPop var_DC
  loc_C91378: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = boleto.CodiOfic AND relacion.CuenCtct = boleto.CuenCtct AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_C9137B: ConcatStr
  loc_C9137C: FStStrNoPop var_E4
  loc_C9137F: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_C91382: ConcatStr
  loc_C91383: FStStrNoPop var_E8
  loc_C91386: LitStr " INNER JOIN facipago ON facipago.CodiFapa  = boleto.CodiFapa "
  loc_C91389: ConcatStr
  loc_C9138A: FStStrNoPop var_EC
  loc_C9138D: LitStr " WHERE boleto.CodiOfic = "
  loc_C91390: ConcatStr
  loc_C91391: FStStrNoPop var_104
  loc_C91394: FLdRfVar var_C0
  loc_C91397: FLdRfVar var_B6
  loc_C9139A: FLdPr Me
  loc_C9139D: VCallAd Control_ID_CodiOficCbo
  loc_C913A0: FStAdFunc var_B4
  loc_C913A3: FLdPr var_B4
  loc_C913A6:  = Me.ListIndex
  loc_C913AB: FLdI2 var_B6
  loc_C913AE: FLdPr Me
  loc_C913B1: VCallAd Control_ID_CodiOficCbo
  loc_C913B4: FStAdFunc var_BC
  loc_C913B7: FLdPr var_BC
  loc_C913BA:  = Me.ItemData
  loc_C913BF: ILdRf var_C0
  loc_C913C2: CStrI4
  loc_C913C4: FStStrNoPop var_108
  loc_C913C7: ConcatStr
  loc_C913C8: FStStrNoPop var_10C
  loc_C913CB: LitStr " AND boleto.CuenCtct = '"
  loc_C913CE: ConcatStr
  loc_C913CF: FStStrNoPop var_114
  loc_C913D2: FLdRfVar var_110
  loc_C913D5: FLdPr Me
  loc_C913D8: VCallAd Control_ID_CuenCtctTxt
  loc_C913DB: FStAdFunc var_E0
  loc_C913DE: FLdPr var_E0
  loc_C913E1:  = Me.Text
  loc_C913E6: ILdRf var_110
  loc_C913E9: ConcatStr
  loc_C913EA: FStStrNoPop var_118
  loc_C913ED: LitStr "' AND boleto.CodiFapa = "
  loc_C913F0: ConcatStr
  loc_C913F1: FStStrNoPop var_11C
  loc_C913F4: FLdPr Me
  loc_C913F7: VCallAd Control_ID_CodiFapaMsk
  loc_C913FA: FStAdFunc var_F0
  loc_C913FD: FLdPr var_F0
  loc_C91400: LateIdLdVar var_100 DispID_0 0
  loc_C91407: CStrVarTmp
  loc_C91408: FStStrNoPop var_120
  loc_C9140B: ConcatStr
  loc_C9140C: FStStrNoPop var_124
  loc_C9140F: LitStr " AND facipago.EstaFapa = 'Activa'"
  loc_C91412: ConcatStr
  loc_C91413: FStStrNoPop var_128
  loc_C91416: LitStr " ORDER BY CuotDefa"
  loc_C91419: ConcatStr
  loc_C9141A: FStStrNoPop var_12C
  loc_C9141D: FLdPr var_D0
  loc_C91420: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C91425: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C9144E: FFreeAd var_B4 = "": var_BC = "": var_E0 = ""
  loc_C91459: FFree1Var var_100 = ""
  loc_C9145C: FLdRfVar var_C0
  loc_C9145F: FLdPr var_D0
  loc_C91462: from_stack_1 = clsboleto.RecordCount
  loc_C91467: ILdRf var_C0
  loc_C9146A: LitI4 0
  loc_C9146F: EqI4
  loc_C91470: BranchF loc_C9147E
  loc_C91473: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C91476: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9147B: Branch loc_C928C7
  loc_C9147E: LitI4 0
  loc_C91483: LitI4 1
  loc_C91488: FLdPr Me
  loc_C9148B: MemLdRfVar from_stack_1.global_100
  loc_C9148E: Redim
  loc_C91498: LitI4 0
  loc_C9149D: LitI4 1
  loc_C914A2: FLdPr Me
  loc_C914A5: MemLdRfVar from_stack_1.global_128
  loc_C914A8: Redim
  loc_C914B2: LitI2_Byte 0
  loc_C914B4: FLdPr Me
  loc_C914B7: MemStI2 global_118
  loc_C914BA: FLdPr var_D0
  loc_C914BD: Call clsboleto.MoveFirst()
  loc_C914C2: FLdRfVar var_C0
  loc_C914C5: FLdRfVar var_B6
  loc_C914C8: FLdPr Me
  loc_C914CB: VCallAd Control_ID_CodiOficCbo
  loc_C914CE: FStAdFunc var_B4
  loc_C914D1: FLdPr var_B4
  loc_C914D4:  = Me.ListIndex
  loc_C914D9: FLdI2 var_B6
  loc_C914DC: FLdPr Me
  loc_C914DF: VCallAd Control_ID_CodiOficCbo
  loc_C914E2: FStAdFunc var_BC
  loc_C914E5: FLdPr var_BC
  loc_C914E8:  = Me.ItemData
  loc_C914ED: ILdRf var_C0
  loc_C914F0: LitI4 1
  loc_C914F5: EqI4
  loc_C914F6: FFreeAd var_B4 = ""
  loc_C914FD: BranchF loc_C91DE1
  loc_C91500: FLdRfVar var_C8
  loc_C91503: FLdPr var_D0
  loc_C91506: from_stack_1 = clsboleto.CuenCtct
  loc_C9150B: FLdPr Me
  loc_C9150E: MemLdRfVar from_stack_1.global_140
  loc_C91511: NewIfNullRf
  loc_C91515: ILdRf var_C8
  loc_C91518: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_C9151D: FFree1Str var_C8
  loc_C91520: BranchF loc_C91A2E
  loc_C91523: FLdRfVar var_C8
  loc_C91526: FLdPr Me
  loc_C91529: MemLdRfVar from_stack_1.global_140
  loc_C9152C: NewIfNullPr tblPersonaGIS
  loc_C9152F: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_C91534: LitI2_Byte 0
  loc_C91536: LitVar_Missing var_140
  loc_C91539: LitI2_Byte 0
  loc_C9153B: FLdZeroAd var_C8
  loc_C9153E: CVarStr var_100
  loc_C91541: PopAdLdVar
  loc_C91542: LitI4 1
  loc_C91547: FLdPr Me
  loc_C9154A: MemLdStr global_100
  loc_C9154D: AryLock
  loc_C91550: Ary1LdPr
  loc_C91551: MemLdRfVar from_stack_1.global_0
  loc_C91554: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91559: AryUnlock
  loc_C9155C: FFreeVar var_100 = ""
  loc_C91563: FLdRfVar var_C8
  loc_C91566: FLdPr Me
  loc_C91569: MemLdRfVar from_stack_1.global_140
  loc_C9156C: NewIfNullPr tblPersonaGIS
  loc_C9156F: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C91574: LitI2_Byte 0
  loc_C91576: LitVar_Missing var_140
  loc_C91579: LitI2_Byte 0
  loc_C9157B: FLdZeroAd var_C8
  loc_C9157E: CVarStr var_100
  loc_C91581: PopAdLdVar
  loc_C91582: LitI4 1
  loc_C91587: FLdPr Me
  loc_C9158A: MemLdStr global_100
  loc_C9158D: AryLock
  loc_C91590: Ary1LdPr
  loc_C91591: MemLdRfVar from_stack_1.global_4
  loc_C91594: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91599: AryUnlock
  loc_C9159C: FFreeVar var_100 = ""
  loc_C915A3: LitI2_Byte 0
  loc_C915A5: LitVar_Missing var_100
  loc_C915A8: LitI2_Byte 0
  loc_C915AA: LitVarStr var_A0, vbNullString
  loc_C915AF: PopAdLdVar
  loc_C915B0: LitI4 1
  loc_C915B5: FLdPr Me
  loc_C915B8: MemLdStr global_100
  loc_C915BB: AryLock
  loc_C915BE: Ary1LdPr
  loc_C915BF: MemLdRfVar from_stack_1.global_40
  loc_C915C2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C915C7: AryUnlock
  loc_C915CA: FFree1Var var_100 = ""
  loc_C915CD: FLdRfVar var_C8
  loc_C915D0: FLdPr var_D0
  loc_C915D3: from_stack_1 = clsboleto.CodiUsua
  loc_C915D8: LitI2_Byte 0
  loc_C915DA: LitVar_Missing var_140
  loc_C915DD: LitI2_Byte 0
  loc_C915DF: FLdZeroAd var_C8
  loc_C915E2: CVarStr var_100
  loc_C915E5: PopAdLdVar
  loc_C915E6: LitI4 1
  loc_C915EB: FLdPr Me
  loc_C915EE: MemLdStr global_100
  loc_C915F1: AryLock
  loc_C915F4: Ary1LdPr
  loc_C915F5: MemLdRfVar from_stack_1.global_64
  loc_C915F8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C915FD: AryUnlock
  loc_C91600: FFreeVar var_100 = ""
  loc_C91607: FLdRfVar var_100
  loc_C9160A: FLdPr var_D0
  loc_C9160D: from_stack_1 = clsboleto.FeveBole
  loc_C91612: LitI2_Byte 0
  loc_C91614: LitVar_Missing var_140
  loc_C91617: LitI2_Byte 0
  loc_C91619: FLdVar var_100
  loc_C9161D: LitI4 1
  loc_C91622: FLdPr Me
  loc_C91625: MemLdStr global_100
  loc_C91628: AryLock
  loc_C9162B: Ary1LdPr
  loc_C9162C: MemLdRfVar from_stack_1.global_68
  loc_C9162F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91634: AryUnlock
  loc_C91637: FFreeVar var_100 = ""
  loc_C9163E: FLdRfVar var_148
  loc_C91641: FLdPr var_D0
  loc_C91644: from_stack_1 = clsboleto.TotaBole
  loc_C91649: LitI2_Byte 0
  loc_C9164B: LitVar_Missing var_100
  loc_C9164E: LitI2_Byte &HFF
  loc_C91650: FLdFPR8 var_148
  loc_C91653: CVarR8
  loc_C91657: PopAdLdVar
  loc_C91658: LitI4 1
  loc_C9165D: FLdPr Me
  loc_C91660: MemLdStr global_100
  loc_C91663: AryLock
  loc_C91666: Ary1LdPr
  loc_C91667: MemLdRfVar from_stack_1.global_76
  loc_C9166A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9166F: AryUnlock
  loc_C91672: FFree1Var var_100 = ""
  loc_C91675: FLdRfVar var_C8
  loc_C91678: Call Proc_212_24_A8DA18()
  loc_C9167D: LitI2_Byte 0
  loc_C9167F: LitVar_Missing var_140
  loc_C91682: LitI2_Byte 0
  loc_C91684: FLdZeroAd var_C8
  loc_C91687: CVarStr var_100
  loc_C9168A: PopAdLdVar
  loc_C9168B: LitI4 1
  loc_C91690: FLdPr Me
  loc_C91693: MemLdStr global_100
  loc_C91696: AryLock
  loc_C91699: Ary1LdPr
  loc_C9169A: MemLdRfVar from_stack_1.global_72
  loc_C9169D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C916A2: AryUnlock
  loc_C916A5: FFreeVar var_100 = ""
  loc_C916AC: LitI2_Byte 0
  loc_C916AE: LitVar_Missing var_100
  loc_C916B1: LitI2_Byte 0
  loc_C916B3: LitVarStr var_A0, vbNullString
  loc_C916B8: PopAdLdVar
  loc_C916B9: LitI4 1
  loc_C916BE: FLdPr Me
  loc_C916C1: MemLdStr global_100
  loc_C916C4: AryLock
  loc_C916C7: Ary1LdPr
  loc_C916C8: MemLdRfVar from_stack_1.global_44
  loc_C916CB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C916D0: AryUnlock
  loc_C916D3: FFree1Var var_100 = ""
  loc_C916D6: FLdRfVar var_C8
  loc_C916D9: FLdPr Me
  loc_C916DC: MemLdRfVar from_stack_1.global_140
  loc_C916DF: NewIfNullPr tblPersonaGIS
  loc_C916E2: from_stack_1v = tblPersonaGIS.DependenciaGet()
  loc_C916E7: FLdRfVar var_CC
  loc_C916EA: FLdPr Me
  loc_C916ED: MemLdRfVar from_stack_1.global_140
  loc_C916F0: NewIfNullPr tblPersonaGIS
  loc_C916F3: from_stack_1v = tblPersonaGIS.DistritoGet()
  loc_C916F8: FLdRfVar var_DC
  loc_C916FB: FLdPr Me
  loc_C916FE: MemLdRfVar from_stack_1.global_140
  loc_C91701: NewIfNullPr tblPersonaGIS
  loc_C91704: from_stack_1v = tblPersonaGIS.SeccionGet()
  loc_C91709: FLdRfVar var_EC
  loc_C9170C: FLdPr Me
  loc_C9170F: MemLdRfVar from_stack_1.global_140
  loc_C91712: NewIfNullPr tblPersonaGIS
  loc_C91715: from_stack_1v = tblPersonaGIS.ManzanaGet()
  loc_C9171A: FLdRfVar var_10C
  loc_C9171D: FLdPr Me
  loc_C91720: MemLdRfVar from_stack_1.global_140
  loc_C91723: NewIfNullPr tblPersonaGIS
  loc_C91726: from_stack_1v = tblPersonaGIS.ParcelaGet()
  loc_C9172B: FLdRfVar var_118
  loc_C9172E: FLdPr Me
  loc_C91731: MemLdRfVar from_stack_1.global_140
  loc_C91734: NewIfNullPr tblPersonaGIS
  loc_C91737: from_stack_1v = tblPersonaGIS.SubparcelaGet()
  loc_C9173C: FLdRfVar var_124
  loc_C9173F: FLdPr Me
  loc_C91742: MemLdRfVar from_stack_1.global_140
  loc_C91745: NewIfNullPr tblPersonaGIS
  loc_C91748: from_stack_1v = tblPersonaGIS.DigiVeriGet()
  loc_C9174D: LitI2_Byte 0
  loc_C9174F: LitVar_Missing var_140
  loc_C91752: LitI2_Byte 0
  loc_C91754: ILdRf var_C8
  loc_C91757: LitStr "-"
  loc_C9175A: ConcatStr
  loc_C9175B: FStStrNoPop var_D4
  loc_C9175E: ILdRf var_CC
  loc_C91761: ConcatStr
  loc_C91762: FStStrNoPop var_D8
  loc_C91765: LitStr "-"
  loc_C91768: ConcatStr
  loc_C91769: FStStrNoPop var_E4
  loc_C9176C: ILdRf var_DC
  loc_C9176F: ConcatStr
  loc_C91770: FStStrNoPop var_E8
  loc_C91773: LitStr "-"
  loc_C91776: ConcatStr
  loc_C91777: FStStrNoPop var_104
  loc_C9177A: ILdRf var_EC
  loc_C9177D: ConcatStr
  loc_C9177E: FStStrNoPop var_108
  loc_C91781: LitStr "-"
  loc_C91784: ConcatStr
  loc_C91785: FStStrNoPop var_110
  loc_C91788: ILdRf var_10C
  loc_C9178B: ConcatStr
  loc_C9178C: FStStrNoPop var_114
  loc_C9178F: LitStr "-"
  loc_C91792: ConcatStr
  loc_C91793: FStStrNoPop var_11C
  loc_C91796: ILdRf var_118
  loc_C91799: ConcatStr
  loc_C9179A: FStStrNoPop var_120
  loc_C9179D: LitStr "-"
  loc_C917A0: ConcatStr
  loc_C917A1: FStStrNoPop var_128
  loc_C917A4: ILdRf var_124
  loc_C917A7: ConcatStr
  loc_C917A8: CVarStr var_100
  loc_C917AB: PopAdLdVar
  loc_C917AC: LitI4 1
  loc_C917B1: FLdPr Me
  loc_C917B4: MemLdStr global_100
  loc_C917B7: AryLock
  loc_C917BA: Ary1LdPr
  loc_C917BB: MemLdRfVar from_stack_1.global_48
  loc_C917BE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C917C3: AryUnlock
  loc_C917C6: FFreeStr var_C8 = "": var_D4 = "": var_CC = "": var_D8 = "": var_E4 = "": var_DC = "": var_E8 = "": var_104 = "": var_EC = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_128 = ""
  loc_C917ED: FFreeVar var_100 = ""
  loc_C917F4: LitI2_Byte 0
  loc_C917F6: LitVar_Missing var_100
  loc_C917F9: LitI2_Byte 0
  loc_C917FB: LitVarStr var_A0, vbNullString
  loc_C91800: PopAdLdVar
  loc_C91801: LitI4 1
  loc_C91806: FLdPr Me
  loc_C91809: MemLdStr global_100
  loc_C9180C: AryLock
  loc_C9180F: Ary1LdPr
  loc_C91810: MemLdRfVar from_stack_1.RespNoTitular
  loc_C91813: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91818: AryUnlock
  loc_C9181B: FFree1Var var_100 = ""
  loc_C9181E: FLdRfVar var_C8
  loc_C91821: FLdPr Me
  loc_C91824: MemLdRfVar from_stack_1.global_140
  loc_C91827: NewIfNullPr tblPersonaGIS
  loc_C9182A: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_C9182F: LitI2_Byte 0
  loc_C91831: LitVar_Missing var_140
  loc_C91834: LitI2_Byte 0
  loc_C91836: FLdZeroAd var_C8
  loc_C91839: CVarStr var_100
  loc_C9183C: PopAdLdVar
  loc_C9183D: LitI4 1
  loc_C91842: FLdPr Me
  loc_C91845: MemLdStr global_100
  loc_C91848: AryLock
  loc_C9184B: Ary1LdPr
  loc_C9184C: MemLdRfVar from_stack_1.global_80
  loc_C9184F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91854: AryUnlock
  loc_C91857: FFreeVar var_100 = ""
  loc_C9185E: FLdRfVar var_C8
  loc_C91861: FLdPr Me
  loc_C91864: MemLdRfVar from_stack_1.global_140
  loc_C91867: NewIfNullPr tblPersonaGIS
  loc_C9186A: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_C9186F: FLdRfVar var_CC
  loc_C91872: FLdPr Me
  loc_C91875: MemLdRfVar from_stack_1.global_140
  loc_C91878: NewIfNullPr tblPersonaGIS
  loc_C9187B: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_C91880: FLdZeroAd var_CC
  loc_C91883: CVarStr var_140
  loc_C91886: LitVarStr var_B0, vbNullString
  loc_C9188B: FStVarCopyObj var_100
  loc_C9188E: FLdRfVar var_100
  loc_C91891: ILdRf var_C8
  loc_C91894: LitStr "0"
  loc_C91897: EqStr
  loc_C91899: CVarBoolI2 var_A0
  loc_C9189D: FLdRfVar var_158
  loc_C918A0: ImpAdCallFPR4  = IIf(, , )
  loc_C918A5: LitI2_Byte 0
  loc_C918A7: LitVar_Missing var_178
  loc_C918AA: LitI2_Byte 0
  loc_C918AC: FLdVar var_158
  loc_C918B0: LitI4 1
  loc_C918B5: FLdPr Me
  loc_C918B8: MemLdStr global_100
  loc_C918BB: AryLock
  loc_C918BE: Ary1LdPr
  loc_C918BF: MemLdRfVar from_stack_1.global_84
  loc_C918C2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C918C7: AryUnlock
  loc_C918CA: FFree1Str var_C8
  loc_C918CD: FFreeVar var_A0 = "": var_100 = "": var_140 = "": var_158 = ""
  loc_C918DA: LitI2_Byte 0
  loc_C918DC: LitVar_Missing var_100
  loc_C918DF: LitI2_Byte 0
  loc_C918E1: LitVarStr var_A0, vbNullString
  loc_C918E6: PopAdLdVar
  loc_C918E7: LitI4 1
  loc_C918EC: FLdPr Me
  loc_C918EF: MemLdStr global_100
  loc_C918F2: AryLock
  loc_C918F5: Ary1LdPr
  loc_C918F6: MemLdRfVar from_stack_1.global_88
  loc_C918F9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C918FE: AryUnlock
  loc_C91901: FFree1Var var_100 = ""
  loc_C91904: LitI2_Byte 0
  loc_C91906: LitVar_Missing var_100
  loc_C91909: LitI2_Byte 0
  loc_C9190B: LitVarStr var_A0, vbNullString
  loc_C91910: PopAdLdVar
  loc_C91911: LitI4 1
  loc_C91916: FLdPr Me
  loc_C91919: MemLdStr global_100
  loc_C9191C: AryLock
  loc_C9191F: Ary1LdPr
  loc_C91920: MemLdRfVar from_stack_1.global_92
  loc_C91923: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91928: AryUnlock
  loc_C9192B: FFree1Var var_100 = ""
  loc_C9192E: FLdRfVar var_C8
  loc_C91931: FLdPr Me
  loc_C91934: MemLdRfVar from_stack_1.global_140
  loc_C91937: NewIfNullPr tblPersonaGIS
  loc_C9193A: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_C9193F: LitI2_Byte 0
  loc_C91941: LitVar_Missing var_140
  loc_C91944: LitI2_Byte 0
  loc_C91946: FLdZeroAd var_C8
  loc_C91949: CVarStr var_100
  loc_C9194C: PopAdLdVar
  loc_C9194D: LitI4 1
  loc_C91952: FLdPr Me
  loc_C91955: MemLdStr global_100
  loc_C91958: AryLock
  loc_C9195B: Ary1LdPr
  loc_C9195C: MemLdRfVar from_stack_1.global_96
  loc_C9195F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91964: AryUnlock
  loc_C91967: FFreeVar var_100 = ""
  loc_C9196E: FLdRfVar var_C8
  loc_C91971: FLdPr Me
  loc_C91974: MemLdRfVar from_stack_1.global_140
  loc_C91977: NewIfNullPr tblPersonaGIS
  loc_C9197A: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_C9197F: LitI2_Byte 0
  loc_C91981: LitVar_Missing var_140
  loc_C91984: LitI2_Byte 0
  loc_C91986: FLdZeroAd var_C8
  loc_C91989: CVarStr var_100
  loc_C9198C: PopAdLdVar
  loc_C9198D: LitI4 1
  loc_C91992: FLdPr Me
  loc_C91995: MemLdStr global_100
  loc_C91998: AryLock
  loc_C9199B: Ary1LdPr
  loc_C9199C: MemLdRfVar from_stack_1.global_100
  loc_C9199F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C919A4: AryUnlock
  loc_C919A7: FFreeVar var_100 = ""
  loc_C919AE: FLdRfVar var_C8
  loc_C919B1: FLdPr Me
  loc_C919B4: MemLdRfVar from_stack_1.global_140
  loc_C919B7: NewIfNullPr tblPersonaGIS
  loc_C919BA: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_C919BF: LitI2_Byte 0
  loc_C919C1: LitVar_Missing var_140
  loc_C919C4: LitI2_Byte 0
  loc_C919C6: FLdZeroAd var_C8
  loc_C919C9: CVarStr var_100
  loc_C919CC: PopAdLdVar
  loc_C919CD: LitI4 1
  loc_C919D2: FLdPr Me
  loc_C919D5: MemLdStr global_100
  loc_C919D8: AryLock
  loc_C919DB: Ary1LdPr
  loc_C919DC: MemLdRfVar from_stack_1.global_104
  loc_C919DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C919E4: AryUnlock
  loc_C919E7: FFreeVar var_100 = ""
  loc_C919EE: FLdRfVar var_C8
  loc_C919F1: FLdPr Me
  loc_C919F4: MemLdRfVar from_stack_1.global_140
  loc_C919F7: NewIfNullPr tblPersonaGIS
  loc_C919FA: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_C919FF: LitI2_Byte 0
  loc_C91A01: LitVar_Missing var_140
  loc_C91A04: LitI2_Byte 0
  loc_C91A06: FLdZeroAd var_C8
  loc_C91A09: CVarStr var_100
  loc_C91A0C: PopAdLdVar
  loc_C91A0D: LitI4 1
  loc_C91A12: FLdPr Me
  loc_C91A15: MemLdStr global_100
  loc_C91A18: AryLock
  loc_C91A1B: Ary1LdPr
  loc_C91A1C: MemLdRfVar from_stack_1.global_108
  loc_C91A1F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91A24: AryUnlock
  loc_C91A27: FFreeVar var_100 = ""
  loc_C91A2E: LitStr " SELECT domicilio.calle as DecaPost, domicilio.NumeCalle as NumePost, domicilio.barrio as DebaPost, domicilio.Manzana as ManzPost, domicilio.Casa as CasaPost, "
  loc_C91A31: LitStr " concat(domicilio.Monoblock,IF(domicilio.Dpto<>'',' - ',''),domicilio.Dpto,IF(domicilio.Planta<>'',' - ',''),domicilio.Planta,IF(domicilio.NroLocal<>'',' - ',''), domicilio.NroLocal)  as UbicPost, domicilio.Localidad as DeloPost, domicilio.CodPostal as CopoPost"
  loc_C91A34: ConcatStr
  loc_C91A35: FStStrNoPop var_C8
  loc_C91A38: LitStr " FROM domicilio"
  loc_C91A3B: ConcatStr
  loc_C91A3C: FStStrNoPop var_CC
  loc_C91A3F: LitStr " WHERE CodiOfic = 1"
  loc_C91A42: ConcatStr
  loc_C91A43: FStStrNoPop var_D4
  loc_C91A46: LitStr " AND CodiCome = "
  loc_C91A49: ConcatStr
  loc_C91A4A: FStStrNoPop var_DC
  loc_C91A4D: FLdRfVar var_D8
  loc_C91A50: FLdPr var_D0
  loc_C91A53: from_stack_1 = clsboleto.CuenCtct
  loc_C91A58: ILdRf var_D8
  loc_C91A5B: ConcatStr
  loc_C91A5C: FStStrNoPop var_E4
  loc_C91A5F: LitStr " AND Tipo = 'RENTAS'"
  loc_C91A62: ConcatStr
  loc_C91A63: FStStrNoPop var_E8
  loc_C91A66: FLdPr Me
  loc_C91A69: MemLdRfVar from_stack_1.global_80
  loc_C91A6C: NewIfNullPr clsboleto
  loc_C91A6F: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C91A74: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_DC = "": var_D8 = "": var_E4 = ""
  loc_C91A85: FLdRfVar var_C0
  loc_C91A88: FLdPr Me
  loc_C91A8B: MemLdRfVar from_stack_1.global_80
  loc_C91A8E: NewIfNullPr clsboleto
  loc_C91A91: from_stack_1 = clsboleto.RecordCount
  loc_C91A96: ILdRf var_C0
  loc_C91A99: LitI4 1
  loc_C91A9E: GeI4
  loc_C91A9F: BranchF loc_C91DDE
  loc_C91AA2: FLdRfVar var_B4
  loc_C91AA5: FLdPr Me
  loc_C91AA8: MemLdRfVar from_stack_1.global_80
  loc_C91AAB: NewIfNullPr clsboleto
  loc_C91AAE: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91AB3: FLdPr var_B4
  loc_C91AB6: Me.MoveFirst
  loc_C91ABB: FFree1Ad var_B4
  loc_C91ABE: FLdRfVar var_E0
  loc_C91AC1: LitVarStr var_A0, "DecaPost"
  loc_C91AC6: PopAdLdVar
  loc_C91AC7: FLdRfVar var_BC
  loc_C91ACA: FLdRfVar var_B4
  loc_C91ACD: FLdPr Me
  loc_C91AD0: MemLdRfVar from_stack_1.global_80
  loc_C91AD3: NewIfNullPr clsboleto
  loc_C91AD6: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91ADB: FLdPr var_B4
  loc_C91ADE:  = Me.Fields
  loc_C91AE3: FLdPr var_BC
  loc_C91AE6: from_stack_2 = Me.Item(from_stack_1)
  loc_C91AEB: LitI2_Byte 0
  loc_C91AED: LitVar_Missing var_140
  loc_C91AF0: LitI2_Byte 0
  loc_C91AF2: FLdZeroAd var_E0
  loc_C91AF5: CVarAd
  loc_C91AF9: PopAdLdVar
  loc_C91AFA: LitI4 1
  loc_C91AFF: FLdPr Me
  loc_C91B02: MemLdStr global_100
  loc_C91B05: AryLock
  loc_C91B08: Ary1LdPr
  loc_C91B09: MemLdRfVar from_stack_1.global_8
  loc_C91B0C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91B11: AryUnlock
  loc_C91B14: FFreeAd var_B4 = ""
  loc_C91B1B: FFreeVar var_100 = ""
  loc_C91B22: FLdRfVar var_E0
  loc_C91B25: LitVarStr var_A0, "NumePost"
  loc_C91B2A: PopAdLdVar
  loc_C91B2B: FLdRfVar var_BC
  loc_C91B2E: FLdRfVar var_B4
  loc_C91B31: FLdPr Me
  loc_C91B34: MemLdRfVar from_stack_1.global_80
  loc_C91B37: NewIfNullPr clsboleto
  loc_C91B3A: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91B3F: FLdPr var_B4
  loc_C91B42:  = Me.Fields
  loc_C91B47: FLdPr var_BC
  loc_C91B4A: from_stack_2 = Me.Item(from_stack_1)
  loc_C91B4F: LitI2_Byte 0
  loc_C91B51: LitVar_Missing var_140
  loc_C91B54: LitI2_Byte 0
  loc_C91B56: FLdZeroAd var_E0
  loc_C91B59: CVarAd
  loc_C91B5D: PopAdLdVar
  loc_C91B5E: LitI4 1
  loc_C91B63: FLdPr Me
  loc_C91B66: MemLdStr global_100
  loc_C91B69: AryLock
  loc_C91B6C: Ary1LdPr
  loc_C91B6D: MemLdRfVar from_stack_1.global_12
  loc_C91B70: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91B75: AryUnlock
  loc_C91B78: FFreeAd var_B4 = ""
  loc_C91B7F: FFreeVar var_100 = ""
  loc_C91B86: FLdRfVar var_E0
  loc_C91B89: LitVarStr var_A0, "DebaPost"
  loc_C91B8E: PopAdLdVar
  loc_C91B8F: FLdRfVar var_BC
  loc_C91B92: FLdRfVar var_B4
  loc_C91B95: FLdPr Me
  loc_C91B98: MemLdRfVar from_stack_1.global_80
  loc_C91B9B: NewIfNullPr clsboleto
  loc_C91B9E: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91BA3: FLdPr var_B4
  loc_C91BA6:  = Me.Fields
  loc_C91BAB: FLdPr var_BC
  loc_C91BAE: from_stack_2 = Me.Item(from_stack_1)
  loc_C91BB3: LitI2_Byte 0
  loc_C91BB5: LitVar_Missing var_140
  loc_C91BB8: LitI2_Byte 0
  loc_C91BBA: FLdZeroAd var_E0
  loc_C91BBD: CVarAd
  loc_C91BC1: PopAdLdVar
  loc_C91BC2: LitI4 1
  loc_C91BC7: FLdPr Me
  loc_C91BCA: MemLdStr global_100
  loc_C91BCD: AryLock
  loc_C91BD0: Ary1LdPr
  loc_C91BD1: MemLdRfVar from_stack_1.global_16
  loc_C91BD4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91BD9: AryUnlock
  loc_C91BDC: FFreeAd var_B4 = ""
  loc_C91BE3: FFreeVar var_100 = ""
  loc_C91BEA: FLdRfVar var_E0
  loc_C91BED: LitVarStr var_A0, "ManzPost"
  loc_C91BF2: PopAdLdVar
  loc_C91BF3: FLdRfVar var_BC
  loc_C91BF6: FLdRfVar var_B4
  loc_C91BF9: FLdPr Me
  loc_C91BFC: MemLdRfVar from_stack_1.global_80
  loc_C91BFF: NewIfNullPr clsboleto
  loc_C91C02: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91C07: FLdPr var_B4
  loc_C91C0A:  = Me.Fields
  loc_C91C0F: FLdPr var_BC
  loc_C91C12: from_stack_2 = Me.Item(from_stack_1)
  loc_C91C17: LitI2_Byte 0
  loc_C91C19: LitVar_Missing var_140
  loc_C91C1C: LitI2_Byte 0
  loc_C91C1E: FLdZeroAd var_E0
  loc_C91C21: CVarAd
  loc_C91C25: PopAdLdVar
  loc_C91C26: LitI4 1
  loc_C91C2B: FLdPr Me
  loc_C91C2E: MemLdStr global_100
  loc_C91C31: AryLock
  loc_C91C34: Ary1LdPr
  loc_C91C35: MemLdRfVar from_stack_1.global_20
  loc_C91C38: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91C3D: AryUnlock
  loc_C91C40: FFreeAd var_B4 = ""
  loc_C91C47: FFreeVar var_100 = ""
  loc_C91C4E: FLdRfVar var_E0
  loc_C91C51: LitVarStr var_A0, "CasaPost"
  loc_C91C56: PopAdLdVar
  loc_C91C57: FLdRfVar var_BC
  loc_C91C5A: FLdRfVar var_B4
  loc_C91C5D: FLdPr Me
  loc_C91C60: MemLdRfVar from_stack_1.global_80
  loc_C91C63: NewIfNullPr clsboleto
  loc_C91C66: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91C6B: FLdPr var_B4
  loc_C91C6E:  = Me.Fields
  loc_C91C73: FLdPr var_BC
  loc_C91C76: from_stack_2 = Me.Item(from_stack_1)
  loc_C91C7B: LitI2_Byte 0
  loc_C91C7D: LitVar_Missing var_140
  loc_C91C80: LitI2_Byte 0
  loc_C91C82: FLdZeroAd var_E0
  loc_C91C85: CVarAd
  loc_C91C89: PopAdLdVar
  loc_C91C8A: LitI4 1
  loc_C91C8F: FLdPr Me
  loc_C91C92: MemLdStr global_100
  loc_C91C95: AryLock
  loc_C91C98: Ary1LdPr
  loc_C91C99: MemLdRfVar from_stack_1.global_24
  loc_C91C9C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91CA1: AryUnlock
  loc_C91CA4: FFreeAd var_B4 = ""
  loc_C91CAB: FFreeVar var_100 = ""
  loc_C91CB2: FLdRfVar var_E0
  loc_C91CB5: LitVarStr var_A0, "UbicPost"
  loc_C91CBA: PopAdLdVar
  loc_C91CBB: FLdRfVar var_BC
  loc_C91CBE: FLdRfVar var_B4
  loc_C91CC1: FLdPr Me
  loc_C91CC4: MemLdRfVar from_stack_1.global_80
  loc_C91CC7: NewIfNullPr clsboleto
  loc_C91CCA: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91CCF: FLdPr var_B4
  loc_C91CD2:  = Me.Fields
  loc_C91CD7: FLdPr var_BC
  loc_C91CDA: from_stack_2 = Me.Item(from_stack_1)
  loc_C91CDF: LitI2_Byte 0
  loc_C91CE1: LitVar_Missing var_140
  loc_C91CE4: LitI2_Byte 0
  loc_C91CE6: FLdZeroAd var_E0
  loc_C91CE9: CVarAd
  loc_C91CED: PopAdLdVar
  loc_C91CEE: LitI4 1
  loc_C91CF3: FLdPr Me
  loc_C91CF6: MemLdStr global_100
  loc_C91CF9: AryLock
  loc_C91CFC: Ary1LdPr
  loc_C91CFD: MemLdRfVar from_stack_1.global_28
  loc_C91D00: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91D05: AryUnlock
  loc_C91D08: FFreeAd var_B4 = ""
  loc_C91D0F: FFreeVar var_100 = ""
  loc_C91D16: FLdRfVar var_E0
  loc_C91D19: LitVarStr var_A0, "DeloPost"
  loc_C91D1E: PopAdLdVar
  loc_C91D1F: FLdRfVar var_BC
  loc_C91D22: FLdRfVar var_B4
  loc_C91D25: FLdPr Me
  loc_C91D28: MemLdRfVar from_stack_1.global_80
  loc_C91D2B: NewIfNullPr clsboleto
  loc_C91D2E: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91D33: FLdPr var_B4
  loc_C91D36:  = Me.Fields
  loc_C91D3B: FLdPr var_BC
  loc_C91D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_C91D43: LitI2_Byte 0
  loc_C91D45: LitVar_Missing var_140
  loc_C91D48: LitI2_Byte 0
  loc_C91D4A: FLdZeroAd var_E0
  loc_C91D4D: CVarAd
  loc_C91D51: PopAdLdVar
  loc_C91D52: LitI4 1
  loc_C91D57: FLdPr Me
  loc_C91D5A: MemLdStr global_100
  loc_C91D5D: AryLock
  loc_C91D60: Ary1LdPr
  loc_C91D61: MemLdRfVar from_stack_1.global_32
  loc_C91D64: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91D69: AryUnlock
  loc_C91D6C: FFreeAd var_B4 = ""
  loc_C91D73: FFreeVar var_100 = ""
  loc_C91D7A: FLdRfVar var_E0
  loc_C91D7D: LitVarStr var_A0, "CopoPost"
  loc_C91D82: PopAdLdVar
  loc_C91D83: FLdRfVar var_BC
  loc_C91D86: FLdRfVar var_B4
  loc_C91D89: FLdPr Me
  loc_C91D8C: MemLdRfVar from_stack_1.global_80
  loc_C91D8F: NewIfNullPr clsboleto
  loc_C91D92: from_stack_1v = clsboleto.RsFrmGet()
  loc_C91D97: FLdPr var_B4
  loc_C91D9A:  = Me.Fields
  loc_C91D9F: FLdPr var_BC
  loc_C91DA2: from_stack_2 = Me.Item(from_stack_1)
  loc_C91DA7: LitI2_Byte 0
  loc_C91DA9: LitVar_Missing var_140
  loc_C91DAC: LitI2_Byte 0
  loc_C91DAE: FLdZeroAd var_E0
  loc_C91DB1: CVarAd
  loc_C91DB5: PopAdLdVar
  loc_C91DB6: LitI4 1
  loc_C91DBB: FLdPr Me
  loc_C91DBE: MemLdStr global_100
  loc_C91DC1: AryLock
  loc_C91DC4: Ary1LdPr
  loc_C91DC5: MemLdRfVar from_stack_1.global_36
  loc_C91DC8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91DCD: AryUnlock
  loc_C91DD0: FFreeAd var_B4 = ""
  loc_C91DD7: FFreeVar var_100 = ""
  loc_C91DDE: Branch loc_C92603
  loc_C91DE1: FLdRfVar var_C8
  loc_C91DE4: FLdPr var_D0
  loc_C91DE7: from_stack_1 = clsboleto.CucuPers
  loc_C91DEC: LitI2_Byte 0
  loc_C91DEE: LitVar_Missing var_140
  loc_C91DF1: LitI2_Byte 0
  loc_C91DF3: FLdZeroAd var_C8
  loc_C91DF6: CVarStr var_100
  loc_C91DF9: PopAdLdVar
  loc_C91DFA: LitI4 1
  loc_C91DFF: FLdPr Me
  loc_C91E02: MemLdStr global_100
  loc_C91E05: AryLock
  loc_C91E08: Ary1LdPr
  loc_C91E09: MemLdRfVar from_stack_1.global_0
  loc_C91E0C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91E11: AryUnlock
  loc_C91E14: FFreeVar var_100 = ""
  loc_C91E1B: FLdRfVar var_C8
  loc_C91E1E: FLdPr var_D0
  loc_C91E21: from_stack_1 = clsboleto.DetaPers
  loc_C91E26: LitI2_Byte 0
  loc_C91E28: LitVar_Missing var_140
  loc_C91E2B: LitI2_Byte 0
  loc_C91E2D: FLdZeroAd var_C8
  loc_C91E30: CVarStr var_100
  loc_C91E33: PopAdLdVar
  loc_C91E34: LitI4 1
  loc_C91E39: FLdPr Me
  loc_C91E3C: MemLdStr global_100
  loc_C91E3F: AryLock
  loc_C91E42: Ary1LdPr
  loc_C91E43: MemLdRfVar from_stack_1.global_4
  loc_C91E46: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91E4B: AryUnlock
  loc_C91E4E: FFreeVar var_100 = ""
  loc_C91E55: FLdRfVar var_C8
  loc_C91E58: FLdPr var_D0
  loc_C91E5B: from_stack_1 = clsboleto.DecaPost
  loc_C91E60: LitI2_Byte 0
  loc_C91E62: LitVar_Missing var_140
  loc_C91E65: LitI2_Byte 0
  loc_C91E67: FLdZeroAd var_C8
  loc_C91E6A: CVarStr var_100
  loc_C91E6D: PopAdLdVar
  loc_C91E6E: LitI4 1
  loc_C91E73: FLdPr Me
  loc_C91E76: MemLdStr global_100
  loc_C91E79: AryLock
  loc_C91E7C: Ary1LdPr
  loc_C91E7D: MemLdRfVar from_stack_1.global_8
  loc_C91E80: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91E85: AryUnlock
  loc_C91E88: FFreeVar var_100 = ""
  loc_C91E8F: FLdRfVar var_C8
  loc_C91E92: FLdPr var_D0
  loc_C91E95: from_stack_1 = clsboleto.NumePost
  loc_C91E9A: LitI2_Byte 0
  loc_C91E9C: LitVar_Missing var_140
  loc_C91E9F: LitI2_Byte 0
  loc_C91EA1: FLdZeroAd var_C8
  loc_C91EA4: CVarStr var_100
  loc_C91EA7: PopAdLdVar
  loc_C91EA8: LitI4 1
  loc_C91EAD: FLdPr Me
  loc_C91EB0: MemLdStr global_100
  loc_C91EB3: AryLock
  loc_C91EB6: Ary1LdPr
  loc_C91EB7: MemLdRfVar from_stack_1.global_12
  loc_C91EBA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91EBF: AryUnlock
  loc_C91EC2: FFreeVar var_100 = ""
  loc_C91EC9: FLdRfVar var_C8
  loc_C91ECC: FLdPr var_D0
  loc_C91ECF: from_stack_1 = clsboleto.DebaPost
  loc_C91ED4: LitI2_Byte 0
  loc_C91ED6: LitVar_Missing var_140
  loc_C91ED9: LitI2_Byte 0
  loc_C91EDB: FLdZeroAd var_C8
  loc_C91EDE: CVarStr var_100
  loc_C91EE1: PopAdLdVar
  loc_C91EE2: LitI4 1
  loc_C91EE7: FLdPr Me
  loc_C91EEA: MemLdStr global_100
  loc_C91EED: AryLock
  loc_C91EF0: Ary1LdPr
  loc_C91EF1: MemLdRfVar from_stack_1.global_16
  loc_C91EF4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91EF9: AryUnlock
  loc_C91EFC: FFreeVar var_100 = ""
  loc_C91F03: FLdRfVar var_C8
  loc_C91F06: FLdPr var_D0
  loc_C91F09: from_stack_1 = clsboleto.ManzPost
  loc_C91F0E: LitI2_Byte 0
  loc_C91F10: LitVar_Missing var_140
  loc_C91F13: LitI2_Byte 0
  loc_C91F15: FLdZeroAd var_C8
  loc_C91F18: CVarStr var_100
  loc_C91F1B: PopAdLdVar
  loc_C91F1C: LitI4 1
  loc_C91F21: FLdPr Me
  loc_C91F24: MemLdStr global_100
  loc_C91F27: AryLock
  loc_C91F2A: Ary1LdPr
  loc_C91F2B: MemLdRfVar from_stack_1.global_20
  loc_C91F2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91F33: AryUnlock
  loc_C91F36: FFreeVar var_100 = ""
  loc_C91F3D: FLdRfVar var_C8
  loc_C91F40: FLdPr var_D0
  loc_C91F43: from_stack_1 = clsboleto.CasaPost
  loc_C91F48: LitI2_Byte 0
  loc_C91F4A: LitVar_Missing var_140
  loc_C91F4D: LitI2_Byte 0
  loc_C91F4F: FLdZeroAd var_C8
  loc_C91F52: CVarStr var_100
  loc_C91F55: PopAdLdVar
  loc_C91F56: LitI4 1
  loc_C91F5B: FLdPr Me
  loc_C91F5E: MemLdStr global_100
  loc_C91F61: AryLock
  loc_C91F64: Ary1LdPr
  loc_C91F65: MemLdRfVar from_stack_1.global_24
  loc_C91F68: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91F6D: AryUnlock
  loc_C91F70: FFreeVar var_100 = ""
  loc_C91F77: FLdRfVar var_C8
  loc_C91F7A: FLdPr var_D0
  loc_C91F7D: from_stack_1 = clsboleto.UbicPost
  loc_C91F82: LitI2_Byte 0
  loc_C91F84: LitVar_Missing var_140
  loc_C91F87: LitI2_Byte 0
  loc_C91F89: FLdZeroAd var_C8
  loc_C91F8C: CVarStr var_100
  loc_C91F8F: PopAdLdVar
  loc_C91F90: LitI4 1
  loc_C91F95: FLdPr Me
  loc_C91F98: MemLdStr global_100
  loc_C91F9B: AryLock
  loc_C91F9E: Ary1LdPr
  loc_C91F9F: MemLdRfVar from_stack_1.global_28
  loc_C91FA2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91FA7: AryUnlock
  loc_C91FAA: FFreeVar var_100 = ""
  loc_C91FB1: FLdRfVar var_C8
  loc_C91FB4: FLdPr var_D0
  loc_C91FB7: from_stack_1 = clsboleto.DeloPost
  loc_C91FBC: LitI2_Byte 0
  loc_C91FBE: LitVar_Missing var_140
  loc_C91FC1: LitI2_Byte 0
  loc_C91FC3: FLdZeroAd var_C8
  loc_C91FC6: CVarStr var_100
  loc_C91FC9: PopAdLdVar
  loc_C91FCA: LitI4 1
  loc_C91FCF: FLdPr Me
  loc_C91FD2: MemLdStr global_100
  loc_C91FD5: AryLock
  loc_C91FD8: Ary1LdPr
  loc_C91FD9: MemLdRfVar from_stack_1.global_32
  loc_C91FDC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C91FE1: AryUnlock
  loc_C91FE4: FFreeVar var_100 = ""
  loc_C91FEB: FLdRfVar var_C8
  loc_C91FEE: FLdPr var_D0
  loc_C91FF1: from_stack_1 = clsboleto.CopoPost
  loc_C91FF6: LitI2_Byte 0
  loc_C91FF8: LitVar_Missing var_140
  loc_C91FFB: LitI2_Byte 0
  loc_C91FFD: FLdZeroAd var_C8
  loc_C92000: CVarStr var_100
  loc_C92003: PopAdLdVar
  loc_C92004: LitI4 1
  loc_C92009: FLdPr Me
  loc_C9200C: MemLdStr global_100
  loc_C9200F: AryLock
  loc_C92012: Ary1LdPr
  loc_C92013: MemLdRfVar from_stack_1.global_36
  loc_C92016: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9201B: AryUnlock
  loc_C9201E: FFreeVar var_100 = ""
  loc_C92025: FLdRfVar var_C8
  loc_C92028: FLdPr var_D0
  loc_C9202B: from_stack_1 = clsboleto.CodiUsua
  loc_C92030: LitI2_Byte 0
  loc_C92032: LitVar_Missing var_140
  loc_C92035: LitI2_Byte 0
  loc_C92037: FLdZeroAd var_C8
  loc_C9203A: CVarStr var_100
  loc_C9203D: PopAdLdVar
  loc_C9203E: LitI4 1
  loc_C92043: FLdPr Me
  loc_C92046: MemLdStr global_100
  loc_C92049: AryLock
  loc_C9204C: Ary1LdPr
  loc_C9204D: MemLdRfVar from_stack_1.global_64
  loc_C92050: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92055: AryUnlock
  loc_C92058: FFreeVar var_100 = ""
  loc_C9205F: FLdRfVar var_100
  loc_C92062: FLdPr var_D0
  loc_C92065: from_stack_1 = clsboleto.FeveBole
  loc_C9206A: LitI2_Byte 0
  loc_C9206C: LitVar_Missing var_140
  loc_C9206F: LitI2_Byte 0
  loc_C92071: FLdVar var_100
  loc_C92075: LitI4 1
  loc_C9207A: FLdPr Me
  loc_C9207D: MemLdStr global_100
  loc_C92080: AryLock
  loc_C92083: Ary1LdPr
  loc_C92084: MemLdRfVar from_stack_1.global_68
  loc_C92087: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9208C: AryUnlock
  loc_C9208F: FFreeVar var_100 = ""
  loc_C92096: FLdRfVar var_C8
  loc_C92099: Call Proc_212_24_A8DA18()
  loc_C9209E: LitI2_Byte 0
  loc_C920A0: LitVar_Missing var_140
  loc_C920A3: LitI2_Byte 0
  loc_C920A5: FLdZeroAd var_C8
  loc_C920A8: CVarStr var_100
  loc_C920AB: PopAdLdVar
  loc_C920AC: LitI4 1
  loc_C920B1: FLdPr Me
  loc_C920B4: MemLdStr global_100
  loc_C920B7: AryLock
  loc_C920BA: Ary1LdPr
  loc_C920BB: MemLdRfVar from_stack_1.global_72
  loc_C920BE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C920C3: AryUnlock
  loc_C920C6: FFreeVar var_100 = ""
  loc_C920CD: FLdRfVar var_100
  loc_C920D0: FLdPr var_D0
  loc_C920D3: from_stack_1 = clsboleto.Vinculo
  loc_C920D8: LitI2_Byte 0
  loc_C920DA: LitVar_Missing var_140
  loc_C920DD: LitI2_Byte 0
  loc_C920DF: FLdVar var_100
  loc_C920E3: LitI4 1
  loc_C920E8: FLdPr Me
  loc_C920EB: MemLdStr global_100
  loc_C920EE: AryLock
  loc_C920F1: Ary1LdPr
  loc_C920F2: MemLdRfVar from_stack_1.global_40
  loc_C920F5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C920FA: AryUnlock
  loc_C920FD: FFreeVar var_100 = ""
  loc_C92104: FLdRfVar var_C0
  loc_C92107: FLdRfVar var_B6
  loc_C9210A: FLdPr Me
  loc_C9210D: VCallAd Control_ID_CodiOficCbo
  loc_C92110: FStAdFunc var_B4
  loc_C92113: FLdPr var_B4
  loc_C92116:  = Me.ListIndex
  loc_C9211B: FLdI2 var_B6
  loc_C9211E: FLdPr Me
  loc_C92121: VCallAd Control_ID_CodiOficCbo
  loc_C92124: FStAdFunc var_BC
  loc_C92127: FLdPr var_BC
  loc_C9212A:  = Me.ItemData
  loc_C9212F: ILdRf var_C0
  loc_C92132: FStR4 var_17C
  loc_C92135: FFreeAd var_B4 = ""
  loc_C9213C: ILdRf var_17C
  loc_C9213F: LitI4 1
  loc_C92144: EqI4
  loc_C92145: BranchF loc_C923AB
  loc_C92148: FLdRfVar var_100
  loc_C9214B: FLdPr var_D0
  loc_C9214E: from_stack_1 = clsboleto.SupeInmu
  loc_C92153: LitI2_Byte 0
  loc_C92155: LitVar_Missing var_140
  loc_C92158: LitI2_Byte 0
  loc_C9215A: FLdVar var_100
  loc_C9215E: LitI4 1
  loc_C92163: FLdPr Me
  loc_C92166: MemLdStr global_100
  loc_C92169: AryLock
  loc_C9216C: Ary1LdPr
  loc_C9216D: MemLdRfVar from_stack_1.global_44
  loc_C92170: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92175: AryUnlock
  loc_C92178: FFreeVar var_100 = ""
  loc_C9217F: FLdRfVar var_C8
  loc_C92182: FLdPr var_D0
  loc_C92185: from_stack_1 = clsboleto.NomeInmu
  loc_C9218A: LitI2_Byte 0
  loc_C9218C: LitVar_Missing var_140
  loc_C9218F: LitI2_Byte 0
  loc_C92191: FLdZeroAd var_C8
  loc_C92194: CVarStr var_100
  loc_C92197: PopAdLdVar
  loc_C92198: LitI4 1
  loc_C9219D: FLdPr Me
  loc_C921A0: MemLdStr global_100
  loc_C921A3: AryLock
  loc_C921A6: Ary1LdPr
  loc_C921A7: MemLdRfVar from_stack_1.global_48
  loc_C921AA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C921AF: AryUnlock
  loc_C921B2: FFreeVar var_100 = ""
  loc_C921B9: FLdRfVar var_100
  loc_C921BC: FLdPr var_D0
  loc_C921BF: from_stack_1 = clsboleto.CodiZoin
  loc_C921C4: LitI2_Byte 0
  loc_C921C6: LitVar_Missing var_140
  loc_C921C9: LitI2_Byte 0
  loc_C921CB: FLdVar var_100
  loc_C921CF: LitI4 1
  loc_C921D4: FLdPr Me
  loc_C921D7: MemLdStr global_100
  loc_C921DA: AryLock
  loc_C921DD: Ary1LdPr
  loc_C921DE: MemLdRfVar from_stack_1.RespNoTitular
  loc_C921E1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C921E6: AryUnlock
  loc_C921E9: FFreeVar var_100 = ""
  loc_C921F0: FLdRfVar var_100
  loc_C921F3: FLdPr var_D0
  loc_C921F6: from_stack_1 = clsboleto.DetaCall
  loc_C921FB: LitI2_Byte 0
  loc_C921FD: LitVar_Missing var_140
  loc_C92200: LitI2_Byte 0
  loc_C92202: FLdVar var_100
  loc_C92206: LitI4 1
  loc_C9220B: FLdPr Me
  loc_C9220E: MemLdStr global_100
  loc_C92211: AryLock
  loc_C92214: Ary1LdPr
  loc_C92215: MemLdRfVar from_stack_1.global_80
  loc_C92218: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9221D: AryUnlock
  loc_C92220: FFreeVar var_100 = ""
  loc_C92227: FLdRfVar var_100
  loc_C9222A: FLdPr var_D0
  loc_C9222D: from_stack_1 = clsboleto.NucaInmu
  loc_C92232: LitI2_Byte 0
  loc_C92234: LitVar_Missing var_140
  loc_C92237: LitI2_Byte 0
  loc_C92239: FLdVar var_100
  loc_C9223D: LitI4 1
  loc_C92242: FLdPr Me
  loc_C92245: MemLdStr global_100
  loc_C92248: AryLock
  loc_C9224B: Ary1LdPr
  loc_C9224C: MemLdRfVar from_stack_1.global_84
  loc_C9224F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92254: AryUnlock
  loc_C92257: FFreeVar var_100 = ""
  loc_C9225E: FLdRfVar var_100
  loc_C92261: FLdPr var_D0
  loc_C92264: from_stack_1 = clsboleto.UbicInmu
  loc_C92269: LitI2_Byte 0
  loc_C9226B: LitVar_Missing var_140
  loc_C9226E: LitI2_Byte 0
  loc_C92270: FLdVar var_100
  loc_C92274: LitI4 1
  loc_C92279: FLdPr Me
  loc_C9227C: MemLdStr global_100
  loc_C9227F: AryLock
  loc_C92282: Ary1LdPr
  loc_C92283: MemLdRfVar from_stack_1.global_88
  loc_C92286: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9228B: AryUnlock
  loc_C9228E: FFreeVar var_100 = ""
  loc_C92295: FLdRfVar var_100
  loc_C92298: FLdPr var_D0
  loc_C9229B: from_stack_1 = clsboleto.CodiBarr
  loc_C922A0: LitI2_Byte 0
  loc_C922A2: LitVar_Missing var_140
  loc_C922A5: LitI2_Byte 0
  loc_C922A7: FLdVar var_100
  loc_C922AB: LitI4 1
  loc_C922B0: FLdPr Me
  loc_C922B3: MemLdStr global_100
  loc_C922B6: AryLock
  loc_C922B9: Ary1LdPr
  loc_C922BA: MemLdRfVar from_stack_1.global_92
  loc_C922BD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C922C2: AryUnlock
  loc_C922C5: FFreeVar var_100 = ""
  loc_C922CC: FLdRfVar var_100
  loc_C922CF: FLdPr var_D0
  loc_C922D2: from_stack_1 = clsboleto.DetaBarr
  loc_C922D7: LitI2_Byte 0
  loc_C922D9: LitVar_Missing var_140
  loc_C922DC: LitI2_Byte 0
  loc_C922DE: FLdVar var_100
  loc_C922E2: LitI4 1
  loc_C922E7: FLdPr Me
  loc_C922EA: MemLdStr global_100
  loc_C922ED: AryLock
  loc_C922F0: Ary1LdPr
  loc_C922F1: MemLdRfVar from_stack_1.global_96
  loc_C922F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C922F9: AryUnlock
  loc_C922FC: FFreeVar var_100 = ""
  loc_C92303: FLdRfVar var_100
  loc_C92306: FLdPr var_D0
  loc_C92309: from_stack_1 = clsboleto.MansBole
  loc_C9230E: LitI2_Byte 0
  loc_C92310: LitVar_Missing var_140
  loc_C92313: LitI2_Byte 0
  loc_C92315: FLdVar var_100
  loc_C92319: LitI4 1
  loc_C9231E: FLdPr Me
  loc_C92321: MemLdStr global_100
  loc_C92324: AryLock
  loc_C92327: Ary1LdPr
  loc_C92328: MemLdRfVar from_stack_1.global_100
  loc_C9232B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92330: AryUnlock
  loc_C92333: FFreeVar var_100 = ""
  loc_C9233A: FLdRfVar var_100
  loc_C9233D: FLdPr var_D0
  loc_C92340: from_stack_1 = clsboleto.CasaBole
  loc_C92345: LitI2_Byte 0
  loc_C92347: LitVar_Missing var_140
  loc_C9234A: LitI2_Byte 0
  loc_C9234C: FLdVar var_100
  loc_C92350: LitI4 1
  loc_C92355: FLdPr Me
  loc_C92358: MemLdStr global_100
  loc_C9235B: AryLock
  loc_C9235E: Ary1LdPr
  loc_C9235F: MemLdRfVar from_stack_1.global_104
  loc_C92362: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92367: AryUnlock
  loc_C9236A: FFreeVar var_100 = ""
  loc_C92371: FLdRfVar var_100
  loc_C92374: FLdPr var_D0
  loc_C92377: from_stack_1 = clsboleto.DetaLoca
  loc_C9237C: LitI2_Byte 0
  loc_C9237E: LitVar_Missing var_140
  loc_C92381: LitI2_Byte 0
  loc_C92383: FLdVar var_100
  loc_C92387: LitI4 1
  loc_C9238C: FLdPr Me
  loc_C9238F: MemLdStr global_100
  loc_C92392: AryLock
  loc_C92395: Ary1LdPr
  loc_C92396: MemLdRfVar from_stack_1.global_108
  loc_C92399: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9239E: AryUnlock
  loc_C923A1: FFreeVar var_100 = ""
  loc_C923A8: Branch loc_C92603
  loc_C923AB: ILdRf var_17C
  loc_C923AE: LitI4 2
  loc_C923B3: EqI4
  loc_C923B4: BranchF loc_C92572
  loc_C923B7: FLdRfVar var_100
  loc_C923BA: FLdPr var_D0
  loc_C923BD: from_stack_1 = clsboleto.DetaCall
  loc_C923C2: LitI2_Byte 0
  loc_C923C4: LitVar_Missing var_140
  loc_C923C7: LitI2_Byte 0
  loc_C923C9: FLdVar var_100
  loc_C923CD: LitI4 1
  loc_C923D2: FLdPr Me
  loc_C923D5: MemLdStr global_100
  loc_C923D8: AryLock
  loc_C923DB: Ary1LdPr
  loc_C923DC: MemLdRfVar from_stack_1.global_80
  loc_C923DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C923E4: AryUnlock
  loc_C923E7: FFreeVar var_100 = ""
  loc_C923EE: FLdRfVar var_100
  loc_C923F1: FLdPr var_D0
  loc_C923F4: from_stack_1 = clsboleto.NucaCome
  loc_C923F9: LitI2_Byte 0
  loc_C923FB: LitVar_Missing var_140
  loc_C923FE: LitI2_Byte 0
  loc_C92400: FLdVar var_100
  loc_C92404: LitI4 1
  loc_C92409: FLdPr Me
  loc_C9240C: MemLdStr global_100
  loc_C9240F: AryLock
  loc_C92412: Ary1LdPr
  loc_C92413: MemLdRfVar from_stack_1.global_84
  loc_C92416: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9241B: AryUnlock
  loc_C9241E: FFreeVar var_100 = ""
  loc_C92425: FLdRfVar var_100
  loc_C92428: FLdPr var_D0
  loc_C9242B: from_stack_1 = clsboleto.UbicCome
  loc_C92430: LitI2_Byte 0
  loc_C92432: LitVar_Missing var_140
  loc_C92435: LitI2_Byte 0
  loc_C92437: FLdVar var_100
  loc_C9243B: LitI4 1
  loc_C92440: FLdPr Me
  loc_C92443: MemLdStr global_100
  loc_C92446: AryLock
  loc_C92449: Ary1LdPr
  loc_C9244A: MemLdRfVar from_stack_1.global_88
  loc_C9244D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92452: AryUnlock
  loc_C92455: FFreeVar var_100 = ""
  loc_C9245C: FLdRfVar var_100
  loc_C9245F: FLdPr var_D0
  loc_C92462: from_stack_1 = clsboleto.CodiBarr
  loc_C92467: LitI2_Byte 0
  loc_C92469: LitVar_Missing var_140
  loc_C9246C: LitI2_Byte 0
  loc_C9246E: FLdVar var_100
  loc_C92472: LitI4 1
  loc_C92477: FLdPr Me
  loc_C9247A: MemLdStr global_100
  loc_C9247D: AryLock
  loc_C92480: Ary1LdPr
  loc_C92481: MemLdRfVar from_stack_1.global_92
  loc_C92484: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92489: AryUnlock
  loc_C9248C: FFreeVar var_100 = ""
  loc_C92493: FLdRfVar var_100
  loc_C92496: FLdPr var_D0
  loc_C92499: from_stack_1 = clsboleto.DetaBarr
  loc_C9249E: LitI2_Byte 0
  loc_C924A0: LitVar_Missing var_140
  loc_C924A3: LitI2_Byte 0
  loc_C924A5: FLdVar var_100
  loc_C924A9: LitI4 1
  loc_C924AE: FLdPr Me
  loc_C924B1: MemLdStr global_100
  loc_C924B4: AryLock
  loc_C924B7: Ary1LdPr
  loc_C924B8: MemLdRfVar from_stack_1.global_96
  loc_C924BB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C924C0: AryUnlock
  loc_C924C3: FFreeVar var_100 = ""
  loc_C924CA: FLdRfVar var_100
  loc_C924CD: FLdPr var_D0
  loc_C924D0: from_stack_1 = clsboleto.MansBole
  loc_C924D5: LitI2_Byte 0
  loc_C924D7: LitVar_Missing var_140
  loc_C924DA: LitI2_Byte 0
  loc_C924DC: FLdVar var_100
  loc_C924E0: LitI4 1
  loc_C924E5: FLdPr Me
  loc_C924E8: MemLdStr global_100
  loc_C924EB: AryLock
  loc_C924EE: Ary1LdPr
  loc_C924EF: MemLdRfVar from_stack_1.global_100
  loc_C924F2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C924F7: AryUnlock
  loc_C924FA: FFreeVar var_100 = ""
  loc_C92501: FLdRfVar var_100
  loc_C92504: FLdPr var_D0
  loc_C92507: from_stack_1 = clsboleto.CasaBole
  loc_C9250C: LitI2_Byte 0
  loc_C9250E: LitVar_Missing var_140
  loc_C92511: LitI2_Byte 0
  loc_C92513: FLdVar var_100
  loc_C92517: LitI4 1
  loc_C9251C: FLdPr Me
  loc_C9251F: MemLdStr global_100
  loc_C92522: AryLock
  loc_C92525: Ary1LdPr
  loc_C92526: MemLdRfVar from_stack_1.global_104
  loc_C92529: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9252E: AryUnlock
  loc_C92531: FFreeVar var_100 = ""
  loc_C92538: FLdRfVar var_100
  loc_C9253B: FLdPr var_D0
  loc_C9253E: from_stack_1 = clsboleto.DetaLoca
  loc_C92543: LitI2_Byte 0
  loc_C92545: LitVar_Missing var_140
  loc_C92548: LitI2_Byte 0
  loc_C9254A: FLdVar var_100
  loc_C9254E: LitI4 1
  loc_C92553: FLdPr Me
  loc_C92556: MemLdStr global_100
  loc_C92559: AryLock
  loc_C9255C: Ary1LdPr
  loc_C9255D: MemLdRfVar from_stack_1.global_108
  loc_C92560: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C92565: AryUnlock
  loc_C92568: FFreeVar var_100 = ""
  loc_C9256F: Branch loc_C92603
  loc_C92572: ILdRf var_17C
  loc_C92575: LitI4 3
  loc_C9257A: EqI4
  loc_C9257B: BranchF loc_C92581
  loc_C9257E: Branch loc_C92603
  loc_C92581: ILdRf var_17C
  loc_C92584: LitI4 4
  loc_C92589: EqI4
  loc_C9258A: BranchF loc_C92590
  loc_C9258D: Branch loc_C92603
  loc_C92590: ILdRf var_17C
  loc_C92593: LitI4 5
  loc_C92598: EqI4
  loc_C92599: BranchF loc_C9259F
  loc_C9259C: Branch loc_C92603
  loc_C9259F: ILdRf var_17C
  loc_C925A2: LitI4 6
  loc_C925A7: EqI4
  loc_C925A8: BranchF loc_C925AE
  loc_C925AB: Branch loc_C92603
  loc_C925AE: ILdRf var_17C
  loc_C925B1: LitI4 7
  loc_C925B6: EqI4
  loc_C925B7: BranchF loc_C925BD
  loc_C925BA: Branch loc_C92603
  loc_C925BD: ILdRf var_17C
  loc_C925C0: LitI4 8
  loc_C925C5: EqI4
  loc_C925C6: BranchF loc_C92603
  loc_C925C9: FLdRfVar var_C8
  loc_C925CC: FLdPr var_D0
  loc_C925CF: from_stack_1 = clsboleto.ExpeBole
  loc_C925D4: LitI2_Byte 0
  loc_C925D6: LitVar_Missing var_140
  loc_C925D9: LitI2_Byte 0
  loc_C925DB: FLdZeroAd var_C8
  loc_C925DE: CVarStr var_100
  loc_C925E1: PopAdLdVar
  loc_C925E2: LitI4 1
  loc_C925E7: FLdPr Me
  loc_C925EA: MemLdStr global_100
  loc_C925ED: AryLock
  loc_C925F0: Ary1LdPr
  loc_C925F1: MemLdRfVar from_stack_1.global_60
  loc_C925F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C925F9: AryUnlock
  loc_C925FC: FFreeVar var_100 = ""
  loc_C92603: LitStr "SELECT boleto.CuenCtct, CuotDefa, CacuFapa, PeriBole, boleto.CodiUsua, NumeBole, FeveBole, TotaBole, CodiEnre, EmitTifa FROM boleto"
  loc_C92606: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = boleto.CodiFapa"
  loc_C92609: ConcatStr
  loc_C9260A: FStStrNoPop var_C8
  loc_C9260D: LitStr " LEFT JOIN tipofapa ON tipofapa.CodiTifa = facipago.CodiTifa"
  loc_C92610: ConcatStr
  loc_C92611: FStStrNoPop var_CC
  loc_C92614: LitStr " WHERE boleto.CodiOfic = "
  loc_C92617: ConcatStr
  loc_C92618: FStStrNoPop var_D4
  loc_C9261B: FLdRfVar var_C0
  loc_C9261E: FLdRfVar var_B6
  loc_C92621: FLdPr Me
  loc_C92624: VCallAd Control_ID_CodiOficCbo
  loc_C92627: FStAdFunc var_B4
  loc_C9262A: FLdPr var_B4
  loc_C9262D:  = Me.ListIndex
  loc_C92632: FLdI2 var_B6
  loc_C92635: FLdPr Me
  loc_C92638: VCallAd Control_ID_CodiOficCbo
  loc_C9263B: FStAdFunc var_BC
  loc_C9263E: FLdPr var_BC
  loc_C92641:  = Me.ItemData
  loc_C92646: ILdRf var_C0
  loc_C92649: CStrI4
  loc_C9264B: FStStrNoPop var_D8
  loc_C9264E: ConcatStr
  loc_C9264F: FStStrNoPop var_DC
  loc_C92652: LitStr " AND boleto.CuenCtct = '"
  loc_C92655: ConcatStr
  loc_C92656: FStStrNoPop var_E8
  loc_C92659: FLdRfVar var_E4
  loc_C9265C: FLdPr Me
  loc_C9265F: VCallAd Control_ID_CuenCtctTxt
  loc_C92662: FStAdFunc var_E0
  loc_C92665: FLdPr var_E0
  loc_C92668:  = Me.Text
  loc_C9266D: ILdRf var_E4
  loc_C92670: ConcatStr
  loc_C92671: FStStrNoPop var_EC
  loc_C92674: LitStr "' AND boleto.CodiFapa = "
  loc_C92677: ConcatStr
  loc_C92678: FStStrNoPop var_104
  loc_C9267B: FLdPr Me
  loc_C9267E: VCallAd Control_ID_CodiFapaMsk
  loc_C92681: FStAdFunc var_F0
  loc_C92684: FLdPr var_F0
  loc_C92687: LateIdLdVar var_100 DispID_0 0
  loc_C9268E: CStrVarTmp
  loc_C9268F: FStStrNoPop var_108
  loc_C92692: ConcatStr
  loc_C92693: FStStrNoPop var_10C
  loc_C92696: LitStr " ORDER BY CuotDefa"
  loc_C92699: ConcatStr
  loc_C9269A: FStStrNoPop var_110
  loc_C9269D: FLdPr var_D0
  loc_C926A0: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C926A5: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E8 = "": var_E4 = "": var_EC = "": var_104 = "": var_108 = "": var_10C = ""
  loc_C926C0: FFreeAd var_B4 = "": var_BC = "": var_E0 = ""
  loc_C926CB: FFree1Var var_100 = ""
  loc_C926CE: LitI2_Byte 0
  loc_C926D0: FLdPr Me
  loc_C926D3: MemStI2 global_116
  loc_C926D6: LitI4 0
  loc_C926DB: FLdPr Me
  loc_C926DE: MemLdI2 global_116
  loc_C926E1: CI4UI1
  loc_C926E2: FLdPr Me
  loc_C926E5: MemLdRfVar from_stack_1.global_104
  loc_C926E8: Redim
  loc_C926F2: FLdPr var_D0
  loc_C926F5: Call clsboleto.MoveFirst()
  loc_C926FA: FLdRfVar var_B6
  loc_C926FD: FLdPr var_D0
  loc_C92700: from_stack_1 = clsboleto.CacuFapa
  loc_C92705: LitI2_Byte 0
  loc_C92707: LitVar_Missing var_100
  loc_C9270A: LitI2_Byte 0
  loc_C9270C: FLdI2 var_B6
  loc_C9270F: CVarI2 var_A0
  loc_C92712: PopAdLdVar
  loc_C92713: FLdPr Me
  loc_C92716: MemLdRfVar from_stack_1.global_112
  loc_C92719: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9271E: FFree1Var var_100 = ""
  loc_C92721: LitI2_Byte 1
  loc_C92723: FLdRfVar var_17E
  loc_C92726: FLdRfVar var_C0
  loc_C92729: FLdPr var_D0
  loc_C9272C: from_stack_1 = clsboleto.RecordCount
  loc_C92731: ILdRf var_C0
  loc_C92734: CI2I4
  loc_C92735: ForI2 var_182
  loc_C9273B: FLdRfVar var_100
  loc_C9273E: FLdPr var_D0
  loc_C92741: from_stack_1 = clsboleto.EmitTifa
  loc_C92746: FLdRfVar var_100
  loc_C92749: LitVarStr var_A0, "Si"
  loc_C9274E: HardType
  loc_C9274F: EqVar var_140
  loc_C92753: FLdI2 var_17E
  loc_C92756: LitI2_Byte 1
  loc_C92758: EqI2
  loc_C92759: CVarBoolI2 var_B0
  loc_C9275D: OrVar var_158
  loc_C92761: CBoolVarNull
  loc_C92763: FFreeVar var_100 = ""
  loc_C9276A: BranchF loc_C92775
  loc_C9276D: Call Proc_212_22_B13F68()
  loc_C92772: Branch loc_C92782
  loc_C92775: LitI2_Byte 1
  loc_C92777: PopTmpLdAd2 var_B6
  loc_C9277A: FLdPr var_D0
  loc_C9277D: Call clsboleto.Move(from_stack_1v)
  loc_C92782: FLdRfVar var_17E
  loc_C92785: NextI2 var_182, loc_C9273B
  loc_C9278A: LitNothing
  loc_C9278C: FStAd var_D0 
  loc_C92790: FLdPr Me
  loc_C92793: MemLdRfVar from_stack_1.global_88
  loc_C92796: NewIfNullAd
  loc_C92799: FStAd var_188 
  loc_C9279D: LitStr "SELECT detafapa.CuotDefa, CacuFapa, FeveDefa, CapiDefa, DecaDefa, RecaDefa, DereDefa, ApreDefa, InteDefa, TotaDefa, facictacte.PeriCtct, facictacte.BimeCtct, CapiFacc"
  loc_C927A0: LitStr " FROM facipago LEFT JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_C927A3: ConcatStr
  loc_C927A4: FStStrNoPop var_C8
  loc_C927A7: LitStr " LEFT JOIN facictacte ON facictacte.CodiFapa = detafapa.CodiFapa AND facictacte.CuotDefa = detafapa.CuotDefa"
  loc_C927AA: ConcatStr
  loc_C927AB: FStStrNoPop var_CC
  loc_C927AE: LitStr " WHERE facipago.CodiFapa = "
  loc_C927B1: ConcatStr
  loc_C927B2: FStStrNoPop var_D4
  loc_C927B5: FLdPr Me
  loc_C927B8: VCallAd Control_ID_CodiFapaMsk
  loc_C927BB: FStAdFunc var_B4
  loc_C927BE: FLdPr var_B4
  loc_C927C1: LateIdLdVar var_100 DispID_0 0
  loc_C927C8: CStrVarTmp
  loc_C927C9: FStStrNoPop var_D8
  loc_C927CC: ConcatStr
  loc_C927CD: FStStrNoPop var_DC
  loc_C927D0: LitStr " ORDER BY CuotDefa, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C927D3: ConcatStr
  loc_C927D4: FStStrNoPop var_E4
  loc_C927D7: FLdPr var_188
  loc_C927DA: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_C927DF: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_C927EE: FFree1Ad var_B4
  loc_C927F1: FFree1Var var_100 = ""
  loc_C927F4: FLdRfVar var_C0
  loc_C927F7: FLdPr var_188
  loc_C927FA: from_stack_1 = clsdetafapa.RecordCount
  loc_C927FF: ILdRf var_C0
  loc_C92802: LitI4 0
  loc_C92807: EqI4
  loc_C92808: BranchF loc_C92816
  loc_C9280B: LitStr "No se ha generado detalle para el boleto"
  loc_C9280E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C92813: Branch loc_C928C7
  loc_C92816: FLdPr var_188
  loc_C92819: Call clsdetafapa.MoveFirst()
  loc_C9281E: Call Proc_212_19_AED2A4()
  loc_C92823: FLdRfVar var_B6
  loc_C92826: FLdPr var_188
  loc_C92829: from_stack_1 = clsdetafapa.EOF
  loc_C9282E: FLdI2 var_B6
  loc_C92831: NotI4
  loc_C92832: BranchF loc_C928B4
  loc_C92835: FLdRfVar var_100
  loc_C92838: FLdRfVar var_E0
  loc_C9283B: LitVarStr var_A0, "CuotDefa"
  loc_C92840: PopAdLdVar
  loc_C92841: FLdRfVar var_BC
  loc_C92844: FLdRfVar var_B4
  loc_C92847: FLdPr var_188
  loc_C9284A: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_C9284F: FLdPr var_B4
  loc_C92852:  = Me.Fields
  loc_C92857: FLdPr var_BC
  loc_C9285A: from_stack_2 = Me.Item(from_stack_1)
  loc_C9285F: FLdPr var_E0
  loc_C92862:  = Me.Value
  loc_C92867: FLdPr Me
  loc_C9286A: MemLdI2 global_122
  loc_C9286D: CI4UI1
  loc_C9286E: FLdPr Me
  loc_C92871: MemLdI2 global_118
  loc_C92874: CI4UI1
  loc_C92875: LitI4 1
  loc_C9287A: FLdPr Me
  loc_C9287D: MemLdStr global_100
  loc_C92880: Ary1LdPr
  loc_C92881: MemLdStr global_112
  loc_C92884: Ary1LdPr
  loc_C92885: MemLdStr global_0
  loc_C92888: Ary1LdPr
  loc_C92889: MemLdStr global_0
  loc_C9288C: CR8Str
  loc_C9288E: FLdRfVar var_100
  loc_C92891: FnCIntVar
  loc_C92893: CR8I2
  loc_C92894: NeR8
  loc_C92895: FFreeAd var_B4 = "": var_BC = ""
  loc_C9289E: FFree1Var var_100 = ""
  loc_C928A1: BranchF loc_C928AC
  loc_C928A4: Call Proc_212_20_BA8C10()
  loc_C928A9: Branch loc_C928B1
  loc_C928AC: Call Proc_212_21_AE36E8()
  loc_C928B1: Branch loc_C92823
  loc_C928B4: LitNothing
  loc_C928B6: FStAd var_188 
  loc_C928BA: Call Proc_212_23_C0A4AC()
  loc_C928BF: LitI2_Byte &HFF
  loc_C928C1: FLdPr Me
  loc_C928C4: MemStI2 bGenerado
  loc_C928C7: LitI4 0
  loc_C928CC: CI2I4
  loc_C928CD: FLdPr Me
  loc_C928D0: Me.MousePointer = from_stack_1
  loc_C928D5: LitVarStr var_A0, vbNullString
  loc_C928DA: PopAdLdVar
  loc_C928DB: FLdPr Me
  loc_C928DE: VCallAd Control_ID_statusBar
  loc_C928E1: FStAdFunc var_B4
  loc_C928E4: FLdPr var_B4
  loc_C928E7: LateIdSt
  loc_C928EC: FFree1Ad var_B4
  loc_C928EF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD725C
  'Data Table: 4C76E8
  loc_AD7110: FLdRfVar var_88
  loc_AD7113: LitI2_Byte 0
  loc_AD7115: LitI2_Byte &HFF
  loc_AD7117: ImpAdLdI4 MemVar_D93C84
  loc_AD711A: FLdPr Me
  loc_AD711D: MemLdRfVar from_stack_1.global_60
  loc_AD7120: NewIfNullPr IFileSystem3
  loc_AD7123: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD7128: ILdRf var_88
  loc_AD712B: FLdPr Me
  loc_AD712E: MemStVarAd
  loc_AD7132: FFree1Ad var_88
  loc_AD7135: LitI2_Byte 0
  loc_AD7137: ImpAdStI2 MemVar_D93C8A
  loc_AD713A: Call Proc_212_25_BF29D8()
  loc_AD713F: LitI2_Byte 1
  loc_AD7141: FLdPr Me
  loc_AD7144: MemLdRfVar from_stack_1.global_118
  loc_AD7147: LitI4 1
  loc_AD714C: FLdPr Me
  loc_AD714F: MemLdStr global_100
  loc_AD7152: Ary1LdPr
  loc_AD7153: MemLdStr global_112
  loc_AD7156: LitI2_Byte 1
  loc_AD7158: FnUBound
  loc_AD715A: CI2I4
  loc_AD715B: ForI2 var_8C
  loc_AD7161: FLdPr Me
  loc_AD7164: MemLdI2 global_118
  loc_AD7167: LitI2_Byte 1
  loc_AD7169: GtI2
  loc_AD716A: BranchF loc_AD7181
  loc_AD716D: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_AD7172: PopAdLdVar
  loc_AD7173: FLdPr Me
  loc_AD7176: MemLdRfVar from_stack_1.global_64
  loc_AD7179: LdPrVar
  loc_AD717B: LateMemCall
  loc_AD7181: Call Proc_212_26_BDE708()
  loc_AD7186: Call Proc_212_27_BE16EC()
  loc_AD718B: FLdPr Me
  loc_AD718E: MemLdRfVar from_stack_1.global_118
  loc_AD7191: NextI2 var_8C, loc_AD7161
  loc_AD7196: Call Proc_212_28_B54A34()
  loc_AD719B: LitI2_Byte 1
  loc_AD719D: FLdPr Me
  loc_AD71A0: MemLdRfVar from_stack_1.global_116
  loc_AD71A3: FLdPr Me
  loc_AD71A6: MemLdStr global_104
  loc_AD71A9: LitI2_Byte 1
  loc_AD71AB: FnUBound
  loc_AD71AD: CI2I4
  loc_AD71AE: ForI2 var_B0
  loc_AD71B4: FLdPr Me
  loc_AD71B7: MemLdI2 global_116
  loc_AD71BA: LitI2_Byte 5
  loc_AD71BC: ModI2
  loc_AD71BD: LitI2_Byte 2
  loc_AD71BF: EqI2
  loc_AD71C0: BranchF loc_AD71D7
  loc_AD71C3: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_AD71C8: PopAdLdVar
  loc_AD71C9: FLdPr Me
  loc_AD71CC: MemLdRfVar from_stack_1.global_64
  loc_AD71CF: LdPrVar
  loc_AD71D1: LateMemCall
  loc_AD71D7: Call Proc_212_29_B92950()
  loc_AD71DC: FLdPr Me
  loc_AD71DF: MemLdI2 global_116
  loc_AD71E2: LitI2_Byte 1
  loc_AD71E4: GtI2
  loc_AD71E5: FLdPr Me
  loc_AD71E8: MemLdI2 global_116
  loc_AD71EB: CI4UI1
  loc_AD71EC: FLdPr Me
  loc_AD71EF: MemLdStr global_104
  loc_AD71F2: LitI2_Byte 1
  loc_AD71F4: FnUBound
  loc_AD71F6: LtI4
  loc_AD71F7: AndI4
  loc_AD71F8: FLdPr Me
  loc_AD71FB: MemLdI2 global_116
  loc_AD71FE: LitI2_Byte 5
  loc_AD7200: ModI2
  loc_AD7201: LitI2_Byte 1
  loc_AD7203: NeI2
  loc_AD7204: AndI4
  loc_AD7205: BranchF loc_AD721C
  loc_AD7208: LitVarStr var_9C, "    <br><div style=""border-top:2px dotted"">&nbsp;</div>"
  loc_AD720D: PopAdLdVar
  loc_AD720E: FLdPr Me
  loc_AD7211: MemLdRfVar from_stack_1.global_64
  loc_AD7214: LdPrVar
  loc_AD7216: LateMemCall
  loc_AD721C: FLdPr Me
  loc_AD721F: MemLdRfVar from_stack_1.global_116
  loc_AD7222: NextI2 var_B0, loc_AD71B4
  loc_AD7227: LitVarStr var_9C, "    <br><div align=""left"" class=""Normal"">www.infogov.com.ar</div>"
  loc_AD722C: PopAdLdVar
  loc_AD722D: FLdPr Me
  loc_AD7230: MemLdRfVar from_stack_1.global_64
  loc_AD7233: LdPrVar
  loc_AD7235: LateMemCall
  loc_AD723B: Call Proc_212_30_C42DA0()
  loc_AD7240: Call Proc_212_32_9FAE34()
  loc_AD7245: FLdPr Me
  loc_AD7248: MemLdRfVar from_stack_1.global_64
  loc_AD724B: LdPrVar
  loc_AD724D: LateMemCall
  loc_AD7253: LitStr vbNullString
  loc_AD7256: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AD725B: ExitProcHresult
End Sub

Private Function Proc_212_19_AED2A4() 'AED2A4
  'Data Table: 4C76E8
  loc_AED10C: LitI2_Byte 0
  loc_AED10E: FLdPr Me
  loc_AED111: MemStI2 global_126
  loc_AED114: LitI2_Byte 0
  loc_AED116: FLdPr Me
  loc_AED119: MemStI2 global_122
  loc_AED11C: FLdPr Me
  loc_AED11F: MemLdI2 global_118
  loc_AED122: LitI2_Byte 0
  loc_AED124: GtI2
  loc_AED125: BranchF loc_AED26A
  loc_AED128: FLdPr Me
  loc_AED12B: MemLdI2 global_118
  loc_AED12E: CI4UI1
  loc_AED12F: LitI4 1
  loc_AED134: FLdPr Me
  loc_AED137: MemLdStr global_100
  loc_AED13A: AryLock
  loc_AED13D: Ary1LdPr
  loc_AED13E: MemLdStr global_112
  loc_AED141: AryLock
  loc_AED144: Ary1LdPr
  loc_AED145: MemLdRfVar from_stack_1.global_4
  loc_AED148: FStR4 var_90
  loc_AED14B: LitI2_Byte 0
  loc_AED14D: LitVar_Missing var_C0
  loc_AED150: LitI2_Byte 0
  loc_AED152: LitI4 1
  loc_AED157: FLdPr Me
  loc_AED15A: MemLdStr global_128
  loc_AED15D: Ary1LdPr
  loc_AED15E: MemLdStr global_8
  loc_AED161: CVarStr var_A0
  loc_AED164: PopAdLdVar
  loc_AED165: FMemLdRf unk_4C7659
  loc_AED16A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED16F: FFree1Var var_C0 = ""
  loc_AED172: LitI2_Byte 0
  loc_AED174: LitVar_Missing var_C0
  loc_AED177: LitI2_Byte 0
  loc_AED179: LitI4 1
  loc_AED17E: FLdPr Me
  loc_AED181: MemLdStr global_128
  loc_AED184: Ary1LdPr
  loc_AED185: MemLdStr global_12
  loc_AED188: CVarStr var_A0
  loc_AED18B: PopAdLdVar
  loc_AED18C: FMemLdRf unk_4C7659
  loc_AED191: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED196: FFree1Var var_C0 = ""
  loc_AED199: LitI2_Byte 0
  loc_AED19B: LitVar_Missing var_C0
  loc_AED19E: LitI2_Byte 0
  loc_AED1A0: LitI4 1
  loc_AED1A5: FLdPr Me
  loc_AED1A8: MemLdStr global_128
  loc_AED1AB: Ary1LdPr
  loc_AED1AC: MemLdStr global_16
  loc_AED1AF: CVarStr var_A0
  loc_AED1B2: PopAdLdVar
  loc_AED1B3: FMemLdRf unk_4C7659
  loc_AED1B8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED1BD: FFree1Var var_C0 = ""
  loc_AED1C0: LitI2_Byte 0
  loc_AED1C2: LitVar_Missing var_C0
  loc_AED1C5: LitI2_Byte 0
  loc_AED1C7: LitI4 1
  loc_AED1CC: FLdPr Me
  loc_AED1CF: MemLdStr global_128
  loc_AED1D2: Ary1LdPr
  loc_AED1D3: MemLdStr global_20
  loc_AED1D6: CVarStr var_A0
  loc_AED1D9: PopAdLdVar
  loc_AED1DA: FMemLdRf unk_4C7659
  loc_AED1DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED1E4: FFree1Var var_C0 = ""
  loc_AED1E7: LitI2_Byte 0
  loc_AED1E9: LitVar_Missing var_C0
  loc_AED1EC: LitI2_Byte 0
  loc_AED1EE: LitI4 1
  loc_AED1F3: FLdPr Me
  loc_AED1F6: MemLdStr global_128
  loc_AED1F9: Ary1LdPr
  loc_AED1FA: MemLdStr global_24
  loc_AED1FD: CVarStr var_A0
  loc_AED200: PopAdLdVar
  loc_AED201: FMemLdRf unk_4C7659
  loc_AED206: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED20B: FFree1Var var_C0 = ""
  loc_AED20E: LitI2_Byte 0
  loc_AED210: LitVar_Missing var_C0
  loc_AED213: LitI2_Byte 0
  loc_AED215: LitI4 1
  loc_AED21A: FLdPr Me
  loc_AED21D: MemLdStr global_128
  loc_AED220: Ary1LdPr
  loc_AED221: MemLdStr global_28
  loc_AED224: CVarStr var_A0
  loc_AED227: PopAdLdVar
  loc_AED228: FMemLdRf unk_4C7659
  loc_AED22D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED232: FFree1Var var_C0 = ""
  loc_AED235: LitI2_Byte 0
  loc_AED237: LitVar_Missing var_C0
  loc_AED23A: LitI2_Byte 0
  loc_AED23C: LitI4 1
  loc_AED241: FLdPr Me
  loc_AED244: MemLdStr global_128
  loc_AED247: Ary1LdPr
  loc_AED248: MemLdStr global_32
  loc_AED24B: CVarStr var_A0
  loc_AED24E: PopAdLdVar
  loc_AED24F: FMemLdRf unk_4C7659
  loc_AED254: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED259: FFree1Var var_C0 = ""
  loc_AED25C: LitI4 0
  loc_AED261: FStR4 var_90
  loc_AED264: AryUnlock
  loc_AED267: AryUnlock
  loc_AED26A: FLdPr Me
  loc_AED26D: MemLdI2 global_118
  loc_AED270: LitI2_Byte 1
  loc_AED272: AddI2
  loc_AED273: FLdPr Me
  loc_AED276: MemStI2 global_118
  loc_AED279: LitI4 0
  loc_AED27E: FLdPr Me
  loc_AED281: MemLdI2 global_118
  loc_AED284: CI4UI1
  loc_AED285: LitI4 1
  loc_AED28A: FLdPr Me
  loc_AED28D: MemLdStr global_100
  loc_AED290: Ary1LdPr
  loc_AED291: MemLdRfVar from_stack_1.global_112
  loc_AED294: RedimPreserve
  loc_AED29E: Call Proc_212_20_BA8C10()
  loc_AED2A3: ExitProcHresult
End Function

Private Function Proc_212_20_BA8C10() 'BA8C10
  'Data Table: 4C76E8
  loc_BA85DC: FLdPr Me
  loc_BA85DF: MemLdI2 global_122
  loc_BA85E2: LitI2_Byte 1
  loc_BA85E4: AddI2
  loc_BA85E5: FLdPr Me
  loc_BA85E8: MemStI2 global_122
  loc_BA85EB: LitI2_Byte 0
  loc_BA85ED: FLdPr Me
  loc_BA85F0: MemStI2 global_124
  loc_BA85F3: LitI4 0
  loc_BA85F8: FLdPr Me
  loc_BA85FB: MemLdI2 global_122
  loc_BA85FE: CI4UI1
  loc_BA85FF: FLdPr Me
  loc_BA8602: MemLdI2 global_118
  loc_BA8605: CI4UI1
  loc_BA8606: LitI4 1
  loc_BA860B: FLdPr Me
  loc_BA860E: MemLdStr global_100
  loc_BA8611: Ary1LdPr
  loc_BA8612: MemLdStr global_112
  loc_BA8615: Ary1LdPr
  loc_BA8616: MemLdRfVar from_stack_1.global_0
  loc_BA8619: RedimPreserve
  loc_BA8623: FLdPr Me
  loc_BA8626: MemLdI2 global_122
  loc_BA8629: CI4UI1
  loc_BA862A: FLdPr Me
  loc_BA862D: MemLdI2 global_118
  loc_BA8630: CI4UI1
  loc_BA8631: LitI4 1
  loc_BA8636: FLdPr Me
  loc_BA8639: MemLdStr global_100
  loc_BA863C: AryLock
  loc_BA863F: Ary1LdPr
  loc_BA8640: MemLdStr global_112
  loc_BA8643: AryLock
  loc_BA8646: Ary1LdPr
  loc_BA8647: MemLdStr global_0
  loc_BA864A: AryLock
  loc_BA864D: Ary1LdRf
  loc_BA864E: FStR4 var_94
  loc_BA8651: FLdRfVar var_B0
  loc_BA8654: LitVarStr var_AC, "CuotDefa"
  loc_BA8659: PopAdLdVar
  loc_BA865A: FLdRfVar var_9C
  loc_BA865D: FLdRfVar var_98
  loc_BA8660: FLdPr Me
  loc_BA8663: MemLdRfVar from_stack_1.global_88
  loc_BA8666: NewIfNullPr clsdetafapa
  loc_BA8669: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_BA866E: FLdPr var_98
  loc_BA8671:  = Me.Fields
  loc_BA8676: FLdPr var_9C
  loc_BA8679: from_stack_2 = Me.Item(from_stack_1)
  loc_BA867E: LitI2_Byte 0
  loc_BA8680: LitVar_Missing var_E0
  loc_BA8683: LitI2_Byte 0
  loc_BA8685: FLdZeroAd var_B0
  loc_BA8688: CVarAd
  loc_BA868C: PopAdLdVar
  loc_BA868D: FMemLdRf unk_4C7655
  loc_BA8692: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8697: FFreeAd var_98 = ""
  loc_BA869E: FFreeVar var_C0 = ""
  loc_BA86A5: FLdRfVar var_C0
  loc_BA86A8: FLdPr Me
  loc_BA86AB: MemLdRfVar from_stack_1.global_88
  loc_BA86AE: NewIfNullPr clsdetafapa
  loc_BA86B1: from_stack_1 = clsdetafapa.FeveDefa
  loc_BA86B6: LitI2_Byte 0
  loc_BA86B8: LitVar_Missing var_E0
  loc_BA86BB: LitI2_Byte 0
  loc_BA86BD: FLdVar var_C0
  loc_BA86C1: FMemLdRf unk_4C7655
  loc_BA86C6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA86CB: FFreeVar var_C0 = ""
  loc_BA86D2: FLdPr Me
  loc_BA86D5: MemLdI2 global_118
  loc_BA86D8: LitI2_Byte 1
  loc_BA86DA: GtI2
  loc_BA86DB: BranchF loc_BA8A32
  loc_BA86DE: FMemLdR4 var_94(0)
  loc_BA86E3: FLdPr Me
  loc_BA86E6: MemLdI2 global_118
  loc_BA86E9: LitI2_Byte 1
  loc_BA86EB: SubI2
  loc_BA86EC: CI4UI1
  loc_BA86ED: LitI4 1
  loc_BA86F2: FLdPr Me
  loc_BA86F5: MemLdStr global_100
  loc_BA86F8: Ary1LdPr
  loc_BA86F9: MemLdStr global_112
  loc_BA86FC: Ary1LdPr
  loc_BA86FD: MemLdStr global_0
  loc_BA8700: LitI2_Byte 1
  loc_BA8702: FnUBound
  loc_BA8704: FLdPr Me
  loc_BA8707: MemLdI2 global_118
  loc_BA870A: LitI2_Byte 1
  loc_BA870C: SubI2
  loc_BA870D: CI4UI1
  loc_BA870E: LitI4 1
  loc_BA8713: FLdPr Me
  loc_BA8716: MemLdStr global_100
  loc_BA8719: Ary1LdPr
  loc_BA871A: MemLdStr global_112
  loc_BA871D: Ary1LdPr
  loc_BA871E: MemLdStr global_0
  loc_BA8721: Ary1LdPr
  loc_BA8722: MemLdStr global_0
  loc_BA8725: EqStr
  loc_BA8727: BranchF loc_BA8868
  loc_BA872A: FLdRfVar var_E8
  loc_BA872D: FLdPr Me
  loc_BA8730: MemLdRfVar from_stack_1.global_88
  loc_BA8733: NewIfNullPr clsdetafapa
  loc_BA8736: from_stack_1 = clsdetafapa.CapiDefa
  loc_BA873B: LitI2_Byte 0
  loc_BA873D: LitVar_Missing var_C0
  loc_BA8740: LitI2_Byte &HFF
  loc_BA8742: FLdFPR8 var_E8
  loc_BA8745: CVarR8
  loc_BA8749: PopAdLdVar
  loc_BA874A: FMemLdRf unk_4C7655
  loc_BA874F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8754: FFree1Var var_C0 = ""
  loc_BA8757: FLdRfVar var_E8
  loc_BA875A: FLdPr Me
  loc_BA875D: MemLdRfVar from_stack_1.global_88
  loc_BA8760: NewIfNullPr clsdetafapa
  loc_BA8763: from_stack_1 = clsdetafapa.DecaDefa
  loc_BA8768: LitI2_Byte 0
  loc_BA876A: LitVar_Missing var_C0
  loc_BA876D: LitI2_Byte &HFF
  loc_BA876F: FLdFPR8 var_E8
  loc_BA8772: CVarR8
  loc_BA8776: PopAdLdVar
  loc_BA8777: FMemLdRf unk_4C7655
  loc_BA877C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8781: FFree1Var var_C0 = ""
  loc_BA8784: FLdRfVar var_E8
  loc_BA8787: FLdPr Me
  loc_BA878A: MemLdRfVar from_stack_1.global_88
  loc_BA878D: NewIfNullPr clsdetafapa
  loc_BA8790: from_stack_1 = clsdetafapa.RecaDefa
  loc_BA8795: LitI2_Byte 0
  loc_BA8797: LitVar_Missing var_C0
  loc_BA879A: LitI2_Byte &HFF
  loc_BA879C: FLdFPR8 var_E8
  loc_BA879F: CVarR8
  loc_BA87A3: PopAdLdVar
  loc_BA87A4: FMemLdRf unk_4C7655
  loc_BA87A9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA87AE: FFree1Var var_C0 = ""
  loc_BA87B1: FLdRfVar var_E8
  loc_BA87B4: FLdPr Me
  loc_BA87B7: MemLdRfVar from_stack_1.global_88
  loc_BA87BA: NewIfNullPr clsdetafapa
  loc_BA87BD: from_stack_1 = clsdetafapa.DereDefa
  loc_BA87C2: LitI2_Byte 0
  loc_BA87C4: LitVar_Missing var_C0
  loc_BA87C7: LitI2_Byte &HFF
  loc_BA87C9: FLdFPR8 var_E8
  loc_BA87CC: CVarR8
  loc_BA87D0: PopAdLdVar
  loc_BA87D1: FMemLdRf unk_4C7655
  loc_BA87D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA87DB: FFree1Var var_C0 = ""
  loc_BA87DE: FLdRfVar var_E8
  loc_BA87E1: FLdPr Me
  loc_BA87E4: MemLdRfVar from_stack_1.global_88
  loc_BA87E7: NewIfNullPr clsdetafapa
  loc_BA87EA: from_stack_1 = clsdetafapa.InteDefa
  loc_BA87EF: LitI2_Byte 0
  loc_BA87F1: LitVar_Missing var_C0
  loc_BA87F4: LitI2_Byte &HFF
  loc_BA87F6: FLdFPR8 var_E8
  loc_BA87F9: CVarR8
  loc_BA87FD: PopAdLdVar
  loc_BA87FE: FMemLdRf unk_4C7655
  loc_BA8803: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8808: FFree1Var var_C0 = ""
  loc_BA880B: FLdRfVar var_E8
  loc_BA880E: FLdPr Me
  loc_BA8811: MemLdRfVar from_stack_1.global_88
  loc_BA8814: NewIfNullPr clsdetafapa
  loc_BA8817: from_stack_1 = clsdetafapa.ApreDefa
  loc_BA881C: LitI2_Byte 0
  loc_BA881E: LitVar_Missing var_C0
  loc_BA8821: LitI2_Byte &HFF
  loc_BA8823: FLdFPR8 var_E8
  loc_BA8826: CVarR8
  loc_BA882A: PopAdLdVar
  loc_BA882B: FMemLdRf unk_4C7655
  loc_BA8830: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8835: FFree1Var var_C0 = ""
  loc_BA8838: FLdRfVar var_E8
  loc_BA883B: FLdPr Me
  loc_BA883E: MemLdRfVar from_stack_1.global_88
  loc_BA8841: NewIfNullPr clsdetafapa
  loc_BA8844: from_stack_1 = clsdetafapa.TotaDefa
  loc_BA8849: LitI2_Byte 0
  loc_BA884B: LitVar_Missing var_C0
  loc_BA884E: LitI2_Byte &HFF
  loc_BA8850: FLdFPR8 var_E8
  loc_BA8853: CVarR8
  loc_BA8857: PopAdLdVar
  loc_BA8858: FMemLdRf unk_4C7655
  loc_BA885D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8862: FFree1Var var_C0 = ""
  loc_BA8865: Branch loc_BA8A2F
  loc_BA8868: FLdRfVar var_E8
  loc_BA886B: FLdPr Me
  loc_BA886E: MemLdRfVar from_stack_1.global_88
  loc_BA8871: NewIfNullPr clsdetafapa
  loc_BA8874: from_stack_1 = clsdetafapa.CapiDefa
  loc_BA8879: LitI2_Byte 0
  loc_BA887B: LitI4 1
  loc_BA8880: FLdPr Me
  loc_BA8883: MemLdStr global_128
  loc_BA8886: AryLock
  loc_BA8889: Ary1LdPr
  loc_BA888A: MemLdRfVar from_stack_1.global_8
  loc_BA888D: CVarRef
  loc_BA8892: LitI2_Byte &HFF
  loc_BA8894: FLdFPR8 var_E8
  loc_BA8897: CVarR8
  loc_BA889B: PopAdLdVar
  loc_BA889C: FMemLdRf unk_4C7655
  loc_BA88A1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA88A6: AryUnlock
  loc_BA88A9: FLdRfVar var_E8
  loc_BA88AC: FLdPr Me
  loc_BA88AF: MemLdRfVar from_stack_1.global_88
  loc_BA88B2: NewIfNullPr clsdetafapa
  loc_BA88B5: from_stack_1 = clsdetafapa.DecaDefa
  loc_BA88BA: LitI2_Byte 0
  loc_BA88BC: LitI4 1
  loc_BA88C1: FLdPr Me
  loc_BA88C4: MemLdStr global_128
  loc_BA88C7: AryLock
  loc_BA88CA: Ary1LdPr
  loc_BA88CB: MemLdRfVar from_stack_1.global_12
  loc_BA88CE: CVarRef
  loc_BA88D3: LitI2_Byte &HFF
  loc_BA88D5: FLdFPR8 var_E8
  loc_BA88D8: CVarR8
  loc_BA88DC: PopAdLdVar
  loc_BA88DD: FMemLdRf unk_4C7655
  loc_BA88E2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA88E7: AryUnlock
  loc_BA88EA: FLdRfVar var_E8
  loc_BA88ED: FLdPr Me
  loc_BA88F0: MemLdRfVar from_stack_1.global_88
  loc_BA88F3: NewIfNullPr clsdetafapa
  loc_BA88F6: from_stack_1 = clsdetafapa.RecaDefa
  loc_BA88FB: LitI2_Byte 0
  loc_BA88FD: LitI4 1
  loc_BA8902: FLdPr Me
  loc_BA8905: MemLdStr global_128
  loc_BA8908: AryLock
  loc_BA890B: Ary1LdPr
  loc_BA890C: MemLdRfVar from_stack_1.global_16
  loc_BA890F: CVarRef
  loc_BA8914: LitI2_Byte &HFF
  loc_BA8916: FLdFPR8 var_E8
  loc_BA8919: CVarR8
  loc_BA891D: PopAdLdVar
  loc_BA891E: FMemLdRf unk_4C7655
  loc_BA8923: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8928: AryUnlock
  loc_BA892B: FLdRfVar var_E8
  loc_BA892E: FLdPr Me
  loc_BA8931: MemLdRfVar from_stack_1.global_88
  loc_BA8934: NewIfNullPr clsdetafapa
  loc_BA8937: from_stack_1 = clsdetafapa.DereDefa
  loc_BA893C: LitI2_Byte 0
  loc_BA893E: LitI4 1
  loc_BA8943: FLdPr Me
  loc_BA8946: MemLdStr global_128
  loc_BA8949: AryLock
  loc_BA894C: Ary1LdPr
  loc_BA894D: MemLdRfVar from_stack_1.global_20
  loc_BA8950: CVarRef
  loc_BA8955: LitI2_Byte &HFF
  loc_BA8957: FLdFPR8 var_E8
  loc_BA895A: CVarR8
  loc_BA895E: PopAdLdVar
  loc_BA895F: FMemLdRf unk_4C7655
  loc_BA8964: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8969: AryUnlock
  loc_BA896C: FLdRfVar var_E8
  loc_BA896F: FLdPr Me
  loc_BA8972: MemLdRfVar from_stack_1.global_88
  loc_BA8975: NewIfNullPr clsdetafapa
  loc_BA8978: from_stack_1 = clsdetafapa.InteDefa
  loc_BA897D: LitI2_Byte 0
  loc_BA897F: LitI4 1
  loc_BA8984: FLdPr Me
  loc_BA8987: MemLdStr global_128
  loc_BA898A: AryLock
  loc_BA898D: Ary1LdPr
  loc_BA898E: MemLdRfVar from_stack_1.global_24
  loc_BA8991: CVarRef
  loc_BA8996: LitI2_Byte &HFF
  loc_BA8998: FLdFPR8 var_E8
  loc_BA899B: CVarR8
  loc_BA899F: PopAdLdVar
  loc_BA89A0: FMemLdRf unk_4C7655
  loc_BA89A5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA89AA: AryUnlock
  loc_BA89AD: FLdRfVar var_E8
  loc_BA89B0: FLdPr Me
  loc_BA89B3: MemLdRfVar from_stack_1.global_88
  loc_BA89B6: NewIfNullPr clsdetafapa
  loc_BA89B9: from_stack_1 = clsdetafapa.ApreDefa
  loc_BA89BE: LitI2_Byte 0
  loc_BA89C0: LitI4 1
  loc_BA89C5: FLdPr Me
  loc_BA89C8: MemLdStr global_128
  loc_BA89CB: AryLock
  loc_BA89CE: Ary1LdPr
  loc_BA89CF: MemLdRfVar from_stack_1.global_28
  loc_BA89D2: CVarRef
  loc_BA89D7: LitI2_Byte &HFF
  loc_BA89D9: FLdFPR8 var_E8
  loc_BA89DC: CVarR8
  loc_BA89E0: PopAdLdVar
  loc_BA89E1: FMemLdRf unk_4C7655
  loc_BA89E6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA89EB: AryUnlock
  loc_BA89EE: FLdRfVar var_E8
  loc_BA89F1: FLdPr Me
  loc_BA89F4: MemLdRfVar from_stack_1.global_88
  loc_BA89F7: NewIfNullPr clsdetafapa
  loc_BA89FA: from_stack_1 = clsdetafapa.TotaDefa
  loc_BA89FF: LitI2_Byte 0
  loc_BA8A01: LitI4 1
  loc_BA8A06: FLdPr Me
  loc_BA8A09: MemLdStr global_128
  loc_BA8A0C: AryLock
  loc_BA8A0F: Ary1LdPr
  loc_BA8A10: MemLdRfVar from_stack_1.global_32
  loc_BA8A13: CVarRef
  loc_BA8A18: LitI2_Byte &HFF
  loc_BA8A1A: FLdFPR8 var_E8
  loc_BA8A1D: CVarR8
  loc_BA8A21: PopAdLdVar
  loc_BA8A22: FMemLdRf unk_4C7655
  loc_BA8A27: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8A2C: AryUnlock
  loc_BA8A2F: Branch loc_BA8BF9
  loc_BA8A32: FLdRfVar var_E8
  loc_BA8A35: FLdPr Me
  loc_BA8A38: MemLdRfVar from_stack_1.global_88
  loc_BA8A3B: NewIfNullPr clsdetafapa
  loc_BA8A3E: from_stack_1 = clsdetafapa.CapiDefa
  loc_BA8A43: LitI2_Byte 0
  loc_BA8A45: LitI4 1
  loc_BA8A4A: FLdPr Me
  loc_BA8A4D: MemLdStr global_128
  loc_BA8A50: AryLock
  loc_BA8A53: Ary1LdPr
  loc_BA8A54: MemLdRfVar from_stack_1.global_8
  loc_BA8A57: CVarRef
  loc_BA8A5C: LitI2_Byte &HFF
  loc_BA8A5E: FLdFPR8 var_E8
  loc_BA8A61: CVarR8
  loc_BA8A65: PopAdLdVar
  loc_BA8A66: FMemLdRf unk_4C7655
  loc_BA8A6B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8A70: AryUnlock
  loc_BA8A73: FLdRfVar var_E8
  loc_BA8A76: FLdPr Me
  loc_BA8A79: MemLdRfVar from_stack_1.global_88
  loc_BA8A7C: NewIfNullPr clsdetafapa
  loc_BA8A7F: from_stack_1 = clsdetafapa.DecaDefa
  loc_BA8A84: LitI2_Byte 0
  loc_BA8A86: LitI4 1
  loc_BA8A8B: FLdPr Me
  loc_BA8A8E: MemLdStr global_128
  loc_BA8A91: AryLock
  loc_BA8A94: Ary1LdPr
  loc_BA8A95: MemLdRfVar from_stack_1.global_12
  loc_BA8A98: CVarRef
  loc_BA8A9D: LitI2_Byte &HFF
  loc_BA8A9F: FLdFPR8 var_E8
  loc_BA8AA2: CVarR8
  loc_BA8AA6: PopAdLdVar
  loc_BA8AA7: FMemLdRf unk_4C7655
  loc_BA8AAC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8AB1: AryUnlock
  loc_BA8AB4: FLdRfVar var_E8
  loc_BA8AB7: FLdPr Me
  loc_BA8ABA: MemLdRfVar from_stack_1.global_88
  loc_BA8ABD: NewIfNullPr clsdetafapa
  loc_BA8AC0: from_stack_1 = clsdetafapa.RecaDefa
  loc_BA8AC5: LitI2_Byte 0
  loc_BA8AC7: LitI4 1
  loc_BA8ACC: FLdPr Me
  loc_BA8ACF: MemLdStr global_128
  loc_BA8AD2: AryLock
  loc_BA8AD5: Ary1LdPr
  loc_BA8AD6: MemLdRfVar from_stack_1.global_16
  loc_BA8AD9: CVarRef
  loc_BA8ADE: LitI2_Byte &HFF
  loc_BA8AE0: FLdFPR8 var_E8
  loc_BA8AE3: CVarR8
  loc_BA8AE7: PopAdLdVar
  loc_BA8AE8: FMemLdRf unk_4C7655
  loc_BA8AED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8AF2: AryUnlock
  loc_BA8AF5: FLdRfVar var_E8
  loc_BA8AF8: FLdPr Me
  loc_BA8AFB: MemLdRfVar from_stack_1.global_88
  loc_BA8AFE: NewIfNullPr clsdetafapa
  loc_BA8B01: from_stack_1 = clsdetafapa.DereDefa
  loc_BA8B06: LitI2_Byte 0
  loc_BA8B08: LitI4 1
  loc_BA8B0D: FLdPr Me
  loc_BA8B10: MemLdStr global_128
  loc_BA8B13: AryLock
  loc_BA8B16: Ary1LdPr
  loc_BA8B17: MemLdRfVar from_stack_1.global_20
  loc_BA8B1A: CVarRef
  loc_BA8B1F: LitI2_Byte &HFF
  loc_BA8B21: FLdFPR8 var_E8
  loc_BA8B24: CVarR8
  loc_BA8B28: PopAdLdVar
  loc_BA8B29: FMemLdRf unk_4C7655
  loc_BA8B2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8B33: AryUnlock
  loc_BA8B36: FLdRfVar var_E8
  loc_BA8B39: FLdPr Me
  loc_BA8B3C: MemLdRfVar from_stack_1.global_88
  loc_BA8B3F: NewIfNullPr clsdetafapa
  loc_BA8B42: from_stack_1 = clsdetafapa.InteDefa
  loc_BA8B47: LitI2_Byte 0
  loc_BA8B49: LitI4 1
  loc_BA8B4E: FLdPr Me
  loc_BA8B51: MemLdStr global_128
  loc_BA8B54: AryLock
  loc_BA8B57: Ary1LdPr
  loc_BA8B58: MemLdRfVar from_stack_1.global_24
  loc_BA8B5B: CVarRef
  loc_BA8B60: LitI2_Byte &HFF
  loc_BA8B62: FLdFPR8 var_E8
  loc_BA8B65: CVarR8
  loc_BA8B69: PopAdLdVar
  loc_BA8B6A: FMemLdRf unk_4C7655
  loc_BA8B6F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8B74: AryUnlock
  loc_BA8B77: FLdRfVar var_E8
  loc_BA8B7A: FLdPr Me
  loc_BA8B7D: MemLdRfVar from_stack_1.global_88
  loc_BA8B80: NewIfNullPr clsdetafapa
  loc_BA8B83: from_stack_1 = clsdetafapa.ApreDefa
  loc_BA8B88: LitI2_Byte 0
  loc_BA8B8A: LitI4 1
  loc_BA8B8F: FLdPr Me
  loc_BA8B92: MemLdStr global_128
  loc_BA8B95: AryLock
  loc_BA8B98: Ary1LdPr
  loc_BA8B99: MemLdRfVar from_stack_1.global_28
  loc_BA8B9C: CVarRef
  loc_BA8BA1: LitI2_Byte &HFF
  loc_BA8BA3: FLdFPR8 var_E8
  loc_BA8BA6: CVarR8
  loc_BA8BAA: PopAdLdVar
  loc_BA8BAB: FMemLdRf unk_4C7655
  loc_BA8BB0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8BB5: AryUnlock
  loc_BA8BB8: FLdRfVar var_E8
  loc_BA8BBB: FLdPr Me
  loc_BA8BBE: MemLdRfVar from_stack_1.global_88
  loc_BA8BC1: NewIfNullPr clsdetafapa
  loc_BA8BC4: from_stack_1 = clsdetafapa.TotaDefa
  loc_BA8BC9: LitI2_Byte 0
  loc_BA8BCB: LitI4 1
  loc_BA8BD0: FLdPr Me
  loc_BA8BD3: MemLdStr global_128
  loc_BA8BD6: AryLock
  loc_BA8BD9: Ary1LdPr
  loc_BA8BDA: MemLdRfVar from_stack_1.global_32
  loc_BA8BDD: CVarRef
  loc_BA8BE2: LitI2_Byte &HFF
  loc_BA8BE4: FLdFPR8 var_E8
  loc_BA8BE7: CVarR8
  loc_BA8BEB: PopAdLdVar
  loc_BA8BEC: FMemLdRf unk_4C7655
  loc_BA8BF1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA8BF6: AryUnlock
  loc_BA8BF9: LitI4 0
  loc_BA8BFE: FStR4 var_94
  loc_BA8C01: AryUnlock
  loc_BA8C04: AryUnlock
  loc_BA8C07: AryUnlock
  loc_BA8C0A: Call Proc_212_21_AE36E8()
  loc_BA8C0F: ExitProcHresult
End Function

Private Function Proc_212_21_AE36E8() 'AE36E8
  'Data Table: 4C76E8
  loc_AE3588: FLdPr Me
  loc_AE358B: MemLdI2 global_126
  loc_AE358E: LitI2_Byte &H1E
  loc_AE3590: GeI2
  loc_AE3591: FLdPr Me
  loc_AE3594: MemLdI2 global_124
  loc_AE3597: LitI2_Byte 0
  loc_AE3599: GtI2
  loc_AE359A: AndI4
  loc_AE359B: BranchF loc_AE35A4
  loc_AE359E: from_stack_1v = Proc_212_19_AED2A4()
  loc_AE35A3: ExitProcHresult
  loc_AE35A4: FLdPr Me
  loc_AE35A7: MemLdI2 global_124
  loc_AE35AA: LitI2_Byte 1
  loc_AE35AC: AddI2
  loc_AE35AD: FLdPr Me
  loc_AE35B0: MemStI2 global_124
  loc_AE35B3: FLdPr Me
  loc_AE35B6: MemLdI2 global_126
  loc_AE35B9: LitI2_Byte 1
  loc_AE35BB: AddI2
  loc_AE35BC: FLdPr Me
  loc_AE35BF: MemStI2 global_126
  loc_AE35C2: LitI4 0
  loc_AE35C7: FLdPr Me
  loc_AE35CA: MemLdI2 global_124
  loc_AE35CD: CI4UI1
  loc_AE35CE: FLdPr Me
  loc_AE35D1: MemLdI2 global_122
  loc_AE35D4: CI4UI1
  loc_AE35D5: FLdPr Me
  loc_AE35D8: MemLdI2 global_118
  loc_AE35DB: CI4UI1
  loc_AE35DC: LitI4 1
  loc_AE35E1: FLdPr Me
  loc_AE35E4: MemLdStr global_100
  loc_AE35E7: Ary1LdPr
  loc_AE35E8: MemLdStr global_112
  loc_AE35EB: Ary1LdPr
  loc_AE35EC: MemLdStr global_0
  loc_AE35EF: Ary1LdPr
  loc_AE35F0: MemLdRfVar from_stack_1.global_40
  loc_AE35F3: RedimPreserve
  loc_AE35FD: FLdPr Me
  loc_AE3600: MemLdI2 global_124
  loc_AE3603: CI4UI1
  loc_AE3604: FLdPr Me
  loc_AE3607: MemLdI2 global_122
  loc_AE360A: CI4UI1
  loc_AE360B: FLdPr Me
  loc_AE360E: MemLdI2 global_118
  loc_AE3611: CI4UI1
  loc_AE3612: LitI4 1
  loc_AE3617: FLdPr Me
  loc_AE361A: MemLdStr global_100
  loc_AE361D: AryLock
  loc_AE3620: Ary1LdPr
  loc_AE3621: MemLdStr global_112
  loc_AE3624: AryLock
  loc_AE3627: Ary1LdPr
  loc_AE3628: MemLdStr global_0
  loc_AE362B: AryLock
  loc_AE362E: Ary1LdPr
  loc_AE362F: MemLdStr global_40
  loc_AE3632: AryLock
  loc_AE3635: Ary1LdRf
  loc_AE3636: FStR4 var_98
  loc_AE3639: FLdRfVar var_A8
  loc_AE363C: FLdPr Me
  loc_AE363F: MemLdRfVar from_stack_1.global_88
  loc_AE3642: NewIfNullPr clsdetafapa
  loc_AE3645: from_stack_1 = clsdetafapa.PeriCtct
  loc_AE364A: LitI2_Byte 0
  loc_AE364C: LitVar_Missing var_C8
  loc_AE364F: LitI2_Byte 0
  loc_AE3651: FLdVar var_A8
  loc_AE3655: FMemLdRf unk_4C7651
  loc_AE365A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE365F: FFreeVar var_A8 = ""
  loc_AE3666: FLdRfVar var_A8
  loc_AE3669: FLdPr Me
  loc_AE366C: MemLdRfVar from_stack_1.global_88
  loc_AE366F: NewIfNullPr clsdetafapa
  loc_AE3672: from_stack_1 = clsdetafapa.BimeCtct
  loc_AE3677: LitI2_Byte 0
  loc_AE3679: LitVar_Missing var_C8
  loc_AE367C: LitI2_Byte 0
  loc_AE367E: FLdVar var_A8
  loc_AE3682: FMemLdRf unk_4C7651
  loc_AE3687: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE368C: FFreeVar var_A8 = ""
  loc_AE3693: FLdRfVar var_A8
  loc_AE3696: FLdPr Me
  loc_AE3699: MemLdRfVar from_stack_1.global_88
  loc_AE369C: NewIfNullPr clsdetafapa
  loc_AE369F: from_stack_1 = clsdetafapa.CapiFacc
  loc_AE36A4: LitI2_Byte 0
  loc_AE36A6: LitVar_Missing var_C8
  loc_AE36A9: LitI2_Byte &HFF
  loc_AE36AB: FLdVar var_A8
  loc_AE36AF: FMemLdRf unk_4C7651
  loc_AE36B4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE36B9: FFreeVar var_A8 = ""
  loc_AE36C0: LitI4 0
  loc_AE36C5: FStR4 var_98
  loc_AE36C8: AryUnlock
  loc_AE36CB: AryUnlock
  loc_AE36CE: AryUnlock
  loc_AE36D1: AryUnlock
  loc_AE36D4: LitI2_Byte 1
  loc_AE36D6: PopTmpLdAd2 var_CA
  loc_AE36D9: FLdPr Me
  loc_AE36DC: MemLdRfVar from_stack_1.global_88
  loc_AE36DF: NewIfNullPr clsdetafapa
  loc_AE36E2: Call clsdetafapa.Move(from_stack_1v)
  loc_AE36E7: ExitProcHresult
End Function

Private Function Proc_212_22_B13F68() 'B13F68
  'Data Table: 4C76E8
  loc_B13D30: FLdPr Me
  loc_B13D33: MemLdI2 global_116
  loc_B13D36: LitI2_Byte 1
  loc_B13D38: AddI2
  loc_B13D39: FLdPr Me
  loc_B13D3C: MemStI2 global_116
  loc_B13D3F: LitI4 0
  loc_B13D44: FLdPr Me
  loc_B13D47: MemLdI2 global_116
  loc_B13D4A: CI4UI1
  loc_B13D4B: FLdPr Me
  loc_B13D4E: MemLdRfVar from_stack_1.global_104
  loc_B13D51: RedimPreserve
  loc_B13D5B: FLdPr Me
  loc_B13D5E: MemLdRfVar from_stack_1.global_84
  loc_B13D61: NewIfNullAd
  loc_B13D64: FStAd var_88 
  loc_B13D68: FLdRfVar var_8A
  loc_B13D6B: FLdPr var_88
  loc_B13D6E: from_stack_1 = clsboleto.CuotDefa
  loc_B13D73: LitI2_Byte 0
  loc_B13D75: LitVar_Missing var_C0
  loc_B13D78: LitI2_Byte 0
  loc_B13D7A: FLdI2 var_8A
  loc_B13D7D: CVarI2 var_A0
  loc_B13D80: PopAdLdVar
  loc_B13D81: FLdPr Me
  loc_B13D84: MemLdI2 global_116
  loc_B13D87: CI4UI1
  loc_B13D88: FLdPr Me
  loc_B13D8B: MemLdStr global_104
  loc_B13D8E: AryLock
  loc_B13D91: Ary1LdPr
  loc_B13D92: MemLdRfVar from_stack_1.global_0
  loc_B13D95: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13D9A: AryUnlock
  loc_B13D9D: FFree1Var var_C0 = ""
  loc_B13DA0: FLdRfVar var_8A
  loc_B13DA3: FLdPr var_88
  loc_B13DA6: from_stack_1 = clsboleto.PeriBole
  loc_B13DAB: LitI2_Byte 0
  loc_B13DAD: LitVar_Missing var_C0
  loc_B13DB0: LitI2_Byte 0
  loc_B13DB2: FLdI2 var_8A
  loc_B13DB5: CVarI2 var_A0
  loc_B13DB8: PopAdLdVar
  loc_B13DB9: FLdPr Me
  loc_B13DBC: MemLdI2 global_116
  loc_B13DBF: CI4UI1
  loc_B13DC0: FLdPr Me
  loc_B13DC3: MemLdStr global_104
  loc_B13DC6: AryLock
  loc_B13DC9: Ary1LdPr
  loc_B13DCA: MemLdRfVar from_stack_1.global_4
  loc_B13DCD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13DD2: AryUnlock
  loc_B13DD5: FFree1Var var_C0 = ""
  loc_B13DD8: FLdRfVar var_C4
  loc_B13DDB: FLdPr var_88
  loc_B13DDE: from_stack_1 = clsboleto.NumeBole
  loc_B13DE3: LitI2_Byte 0
  loc_B13DE5: LitVar_Missing var_C0
  loc_B13DE8: LitI2_Byte 0
  loc_B13DEA: ILdRf var_C4
  loc_B13DED: CVarI4
  loc_B13DF1: PopAdLdVar
  loc_B13DF2: FLdPr Me
  loc_B13DF5: MemLdI2 global_116
  loc_B13DF8: CI4UI1
  loc_B13DF9: FLdPr Me
  loc_B13DFC: MemLdStr global_104
  loc_B13DFF: AryLock
  loc_B13E02: Ary1LdPr
  loc_B13E03: MemLdRfVar from_stack_1.global_8
  loc_B13E06: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13E0B: AryUnlock
  loc_B13E0E: FFree1Var var_C0 = ""
  loc_B13E11: FLdRfVar var_C0
  loc_B13E14: FLdPr var_88
  loc_B13E17: from_stack_1 = clsboleto.FeveBole
  loc_B13E1C: LitI2_Byte 0
  loc_B13E1E: LitVar_Missing var_D4
  loc_B13E21: LitI2_Byte 0
  loc_B13E23: FLdVar var_C0
  loc_B13E27: FLdPr Me
  loc_B13E2A: MemLdI2 global_116
  loc_B13E2D: CI4UI1
  loc_B13E2E: FLdPr Me
  loc_B13E31: MemLdStr global_104
  loc_B13E34: AryLock
  loc_B13E37: Ary1LdPr
  loc_B13E38: MemLdRfVar from_stack_1.global_12
  loc_B13E3B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13E40: AryUnlock
  loc_B13E43: FFreeVar var_C0 = ""
  loc_B13E4A: FLdRfVar var_DC
  loc_B13E4D: FLdPr var_88
  loc_B13E50: from_stack_1 = clsboleto.TotaBole
  loc_B13E55: LitI2_Byte 0
  loc_B13E57: LitVar_Missing var_C0
  loc_B13E5A: LitI2_Byte &HFF
  loc_B13E5C: FLdFPR8 var_DC
  loc_B13E5F: CVarR8
  loc_B13E63: PopAdLdVar
  loc_B13E64: FLdPr Me
  loc_B13E67: MemLdI2 global_116
  loc_B13E6A: CI4UI1
  loc_B13E6B: FLdPr Me
  loc_B13E6E: MemLdStr global_104
  loc_B13E71: AryLock
  loc_B13E74: Ary1LdPr
  loc_B13E75: MemLdRfVar from_stack_1.global_16
  loc_B13E78: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13E7D: AryUnlock
  loc_B13E80: FFree1Var var_C0 = ""
  loc_B13E83: FLdRfVar var_8A
  loc_B13E86: FLdPr var_88
  loc_B13E89: from_stack_1 = clsboleto.PeriBole
  loc_B13E8E: FLdRfVar var_C4
  loc_B13E91: FLdPr var_88
  loc_B13E94: from_stack_1 = clsboleto.NumeBole
  loc_B13E99: FLdRfVar var_DE
  loc_B13E9C: FLdPr var_88
  loc_B13E9F: from_stack_1 = clsboleto.CuotDefa
  loc_B13EA4: FLdRfVar var_E4
  loc_B13EA7: FLdPr var_88
  loc_B13EAA: from_stack_1 = clsboleto.CuenCtct
  loc_B13EAF: FLdRfVar var_EA
  loc_B13EB2: FLdPr Me
  loc_B13EB5: VCallAd Control_ID_CodiOficCbo
  loc_B13EB8: FStAdFunc var_E8
  loc_B13EBB: FLdPr var_E8
  loc_B13EBE:  = Me.ListIndex
  loc_B13EC3: FLdRfVar var_F4
  loc_B13EC6: FLdI2 var_EA
  loc_B13EC9: FLdPr Me
  loc_B13ECC: VCallAd Control_ID_CodiOficCbo
  loc_B13ECF: FStAdFunc var_F0
  loc_B13ED2: FLdPr var_F0
  loc_B13ED5:  = Me.ItemData
  loc_B13EDA: FLdRfVar var_DC
  loc_B13EDD: FLdPr var_88
  loc_B13EE0: from_stack_1 = clsboleto.TotaBole
  loc_B13EE5: FLdRfVar var_C0
  loc_B13EE8: FLdPr var_88
  loc_B13EEB: from_stack_1 = clsboleto.FeveBole
  loc_B13EF0: FLdRfVar var_C0
  loc_B13EF3: CStrVarVal var_108
  loc_B13EF7: FLdFPR8 var_DC
  loc_B13EFA: CStrR8
  loc_B13EFC: FStStrNoPop var_104
  loc_B13EFF: ILdRf var_F4
  loc_B13F02: CUI1I4
  loc_B13F04: ILdRf var_E4
  loc_B13F07: FLdI2 var_DE
  loc_B13F0A: CStrUI1
  loc_B13F0C: FStStrNoPop var_100
  loc_B13F0F: ILdRf var_C4
  loc_B13F12: CStrI4
  loc_B13F14: FStStrNoPop var_FC
  loc_B13F17: FLdI2 var_8A
  loc_B13F1A: CStrUI1
  loc_B13F1C: FStStrNoPop var_F8
  loc_B13F1F: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_B13F24: PopTmpLdAdStr var_110
  loc_B13F27: FLdPr Me
  loc_B13F2A: MemLdI2 global_116
  loc_B13F2D: CI4UI1
  loc_B13F2E: FLdPr Me
  loc_B13F31: MemLdStr global_104
  loc_B13F34: Ary1LdPr
  loc_B13F35: MemLdRfVar from_stack_1.global_20
  loc_B13F38: StAryMove
  loc_B13F3A: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_E4 = "": var_104 = ""
  loc_B13F49: FFreeAd var_E8 = ""
  loc_B13F50: FFree1Var var_C0 = ""
  loc_B13F53: LitI2_Byte 1
  loc_B13F55: PopTmpLdAd2 var_8A
  loc_B13F58: FLdPr var_88
  loc_B13F5B: Call clsboleto.Move(from_stack_1v)
  loc_B13F60: LitNothing
  loc_B13F62: FStAd var_88 
  loc_B13F66: ExitProcHresult
End Function

Private Function Proc_212_23_C0A4AC() 'C0A4AC
  'Data Table: 4C76E8
  loc_C09B74: FLdPr Me
  loc_C09B77: MemLdRfVar from_stack_1.global_92
  loc_C09B7A: NewIfNullAd
  loc_C09B7D: FStAd var_8C 
  loc_C09B81: LitStr "SELECT facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, detabole.CodiConc, DetaConc, DetaTifa, TotaFapa, FirmFapa, CufiFapa, DetaTifp, usua.DetaPers DetaPersUsuario"
  loc_C09B84: LitStr " FROM facipago"
  loc_C09B87: ConcatStr
  loc_C09B88: FStStrNoPop var_90
  loc_C09B8B: LitStr " LEFT JOIN tipofapa ON tipofapa.CodiTifa = facipago.CodiTifa"
  loc_C09B8E: ConcatStr
  loc_C09B8F: FStStrNoPop var_94
  loc_C09B92: LitStr " LEFT JOIN boleto ON boleto.CodiFapa = facipago.CodiFapa"
  loc_C09B95: ConcatStr
  loc_C09B96: FStStrNoPop var_98
  loc_C09B99: LitStr " LEFT JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole"
  loc_C09B9C: ConcatStr
  loc_C09B9D: FStStrNoPop var_9C
  loc_C09BA0: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriBole AND concepto.CodiConc = detabole.CodiConc"
  loc_C09BA3: ConcatStr
  loc_C09BA4: FStStrNoPop var_A0
  loc_C09BA7: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = facipago.CucuPers"
  loc_C09BAA: ConcatStr
  loc_C09BAB: FStStrNoPop var_A4
  loc_C09BAE: LitStr " LEFT JOIN infogov.usuario ON infogov.usuario.CodiUsua = facipago.AltaUsua"
  loc_C09BB1: ConcatStr
  loc_C09BB2: FStStrNoPop var_A8
  loc_C09BB5: LitStr " LEFT JOIN infogov.persona usua ON usua.CucuPers = infogov.usuario.CucuPers"
  loc_C09BB8: ConcatStr
  loc_C09BB9: FStStrNoPop var_AC
  loc_C09BBC: LitStr " LEFT JOIN tipofirmFapa ON tipofirmFapa.CodiTifp = facipago.CodiTifp"
  loc_C09BBF: ConcatStr
  loc_C09BC0: FStStrNoPop var_B0
  loc_C09BC3: LitStr " WHERE facipago.CodiFapa = "
  loc_C09BC6: ConcatStr
  loc_C09BC7: FStStrNoPop var_C8
  loc_C09BCA: FLdPr Me
  loc_C09BCD: VCallAd Control_ID_CodiFapaMsk
  loc_C09BD0: FStAdFunc var_B4
  loc_C09BD3: FLdPr var_B4
  loc_C09BD6: LateIdLdVar var_C4 DispID_22 0
  loc_C09BDD: CStrVarTmp
  loc_C09BDE: FStStrNoPop var_CC
  loc_C09BE1: ConcatStr
  loc_C09BE2: FStStrNoPop var_D0
  loc_C09BE5: LitStr " GROUP BY facipago.CodiFapa"
  loc_C09BE8: ConcatStr
  loc_C09BE9: FStStrNoPop var_D4
  loc_C09BEC: FLdPr var_8C
  loc_C09BEF: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C09BF4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C09C11: FFree1Ad var_B4
  loc_C09C14: FFree1Var var_C4 = ""
  loc_C09C17: LitI4 0
  loc_C09C1C: LitI4 1
  loc_C09C21: FLdPr Me
  loc_C09C24: MemLdRfVar from_stack_1.global_108
  loc_C09C27: Redim
  loc_C09C31: FLdPr var_8C
  loc_C09C34: Call clsfacipago.MoveFirst()
  loc_C09C39: FLdRfVar var_90
  loc_C09C3C: FLdPr var_8C
  loc_C09C3F: from_stack_1 = clsfacipago.CuenCtct
  loc_C09C44: LitI2_Byte 0
  loc_C09C46: LitVar_Missing var_F8
  loc_C09C49: LitI2_Byte 0
  loc_C09C4B: FLdZeroAd var_90
  loc_C09C4E: CVarStr var_C4
  loc_C09C51: PopAdLdVar
  loc_C09C52: LitI4 1
  loc_C09C57: FLdPr Me
  loc_C09C5A: MemLdStr global_108
  loc_C09C5D: AryLock
  loc_C09C60: Ary1LdPr
  loc_C09C61: MemLdRfVar from_stack_1.global_0
  loc_C09C64: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09C69: AryUnlock
  loc_C09C6C: FFreeVar var_C4 = ""
  loc_C09C73: FLdRfVar var_FA
  loc_C09C76: FLdPr var_8C
  loc_C09C79: from_stack_1 = clsfacipago.CodiOfic
  loc_C09C7E: FLdUI1
  loc_C09C82: CI2UI1
  loc_C09C84: LitI2_Byte 1
  loc_C09C86: EqI2
  loc_C09C87: BranchF loc_C09D17
  loc_C09C8A: FLdRfVar var_90
  loc_C09C8D: FLdPr var_8C
  loc_C09C90: from_stack_1 = clsfacipago.CuenCtct
  loc_C09C95: FLdRfVar var_88
  loc_C09C98: NewIfNullRf
  loc_C09C9C: ILdRf var_90
  loc_C09C9F: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_C09CA4: FFree1Str var_90
  loc_C09CA7: BranchF loc_C09CEA
  loc_C09CAA: FLdRfVar var_90
  loc_C09CAD: FLdRfVar var_88
  loc_C09CB0: NewIfNullPr tblPersonaGIS
  loc_C09CB3: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C09CB8: LitI2_Byte 0
  loc_C09CBA: LitVar_Missing var_F8
  loc_C09CBD: LitI2_Byte 0
  loc_C09CBF: FLdZeroAd var_90
  loc_C09CC2: CVarStr var_C4
  loc_C09CC5: PopAdLdVar
  loc_C09CC6: LitI4 1
  loc_C09CCB: FLdPr Me
  loc_C09CCE: MemLdStr global_108
  loc_C09CD1: AryLock
  loc_C09CD4: Ary1LdPr
  loc_C09CD5: MemLdRfVar from_stack_1.global_4
  loc_C09CD8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09CDD: AryUnlock
  loc_C09CE0: FFreeVar var_C4 = ""
  loc_C09CE7: Branch loc_C09D14
  loc_C09CEA: LitI2_Byte 0
  loc_C09CEC: LitVar_Missing var_C4
  loc_C09CEF: LitI2_Byte 0
  loc_C09CF1: LitVarStr var_E8, vbNullString
  loc_C09CF6: PopAdLdVar
  loc_C09CF7: LitI4 1
  loc_C09CFC: FLdPr Me
  loc_C09CFF: MemLdStr global_108
  loc_C09D02: AryLock
  loc_C09D05: Ary1LdPr
  loc_C09D06: MemLdRfVar from_stack_1.global_4
  loc_C09D09: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09D0E: AryUnlock
  loc_C09D11: FFree1Var var_C4 = ""
  loc_C09D14: Branch loc_C09D4E
  loc_C09D17: FLdRfVar var_C4
  loc_C09D1A: FLdPr var_8C
  loc_C09D1D: from_stack_1 = clsfacipago.DetaPers
  loc_C09D22: LitI2_Byte 0
  loc_C09D24: LitVar_Missing var_F8
  loc_C09D27: LitI2_Byte 0
  loc_C09D29: FLdVar var_C4
  loc_C09D2D: LitI4 1
  loc_C09D32: FLdPr Me
  loc_C09D35: MemLdStr global_108
  loc_C09D38: AryLock
  loc_C09D3B: Ary1LdPr
  loc_C09D3C: MemLdRfVar from_stack_1.global_4
  loc_C09D3F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09D44: AryUnlock
  loc_C09D47: FFreeVar var_C4 = ""
  loc_C09D4E: FLdRfVar var_C4
  loc_C09D51: FLdPr var_8C
  loc_C09D54: from_stack_1 = clsfacipago.CodiConc
  loc_C09D59: LitI2_Byte 0
  loc_C09D5B: LitVar_Missing var_F8
  loc_C09D5E: LitI2_Byte 0
  loc_C09D60: FLdVar var_C4
  loc_C09D64: LitI4 1
  loc_C09D69: FLdPr Me
  loc_C09D6C: MemLdStr global_108
  loc_C09D6F: AryLock
  loc_C09D72: Ary1LdPr
  loc_C09D73: MemLdRfVar from_stack_1.global_8
  loc_C09D76: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09D7B: AryUnlock
  loc_C09D7E: FFreeVar var_C4 = ""
  loc_C09D85: FLdRfVar var_C4
  loc_C09D88: FLdPr var_8C
  loc_C09D8B: from_stack_1 = clsfacipago.DetaConc
  loc_C09D90: LitI2_Byte 0
  loc_C09D92: LitVar_Missing var_F8
  loc_C09D95: LitI2_Byte 0
  loc_C09D97: FLdVar var_C4
  loc_C09D9B: LitI4 1
  loc_C09DA0: FLdPr Me
  loc_C09DA3: MemLdStr global_108
  loc_C09DA6: AryLock
  loc_C09DA9: Ary1LdPr
  loc_C09DAA: MemLdRfVar from_stack_1.global_12
  loc_C09DAD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09DB2: AryUnlock
  loc_C09DB5: FFreeVar var_C4 = ""
  loc_C09DBC: FLdRfVar var_90
  loc_C09DBF: FLdPr var_8C
  loc_C09DC2: from_stack_1 = clsfacipago.DetaTifa
  loc_C09DC7: LitI2_Byte 0
  loc_C09DC9: LitVar_Missing var_F8
  loc_C09DCC: LitI2_Byte 0
  loc_C09DCE: FLdZeroAd var_90
  loc_C09DD1: CVarStr var_C4
  loc_C09DD4: PopAdLdVar
  loc_C09DD5: LitI4 1
  loc_C09DDA: FLdPr Me
  loc_C09DDD: MemLdStr global_108
  loc_C09DE0: AryLock
  loc_C09DE3: Ary1LdPr
  loc_C09DE4: MemLdRfVar from_stack_1.global_16
  loc_C09DE7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09DEC: AryUnlock
  loc_C09DEF: FFreeVar var_C4 = ""
  loc_C09DF6: FLdRfVar var_114
  loc_C09DF9: LitVarStr var_E8, "DetaPersUsuario"
  loc_C09DFE: PopAdLdVar
  loc_C09DFF: FLdRfVar var_110
  loc_C09E02: FLdRfVar var_B4
  loc_C09E05: FLdPr var_8C
  loc_C09E08: from_stack_1v = clsfacipago.RsFrmGet()
  loc_C09E0D: FLdPr var_B4
  loc_C09E10:  = Me.Fields
  loc_C09E15: FLdPr var_110
  loc_C09E18: from_stack_2 = Me.Item(from_stack_1)
  loc_C09E1D: LitI2_Byte 0
  loc_C09E1F: LitVar_Missing var_F8
  loc_C09E22: LitI2_Byte 0
  loc_C09E24: FLdZeroAd var_114
  loc_C09E27: CVarAd
  loc_C09E2B: PopAdLdVar
  loc_C09E2C: LitI4 1
  loc_C09E31: FLdPr Me
  loc_C09E34: MemLdStr global_108
  loc_C09E37: AryLock
  loc_C09E3A: Ary1LdPr
  loc_C09E3B: MemLdRfVar from_stack_1.global_20
  loc_C09E3E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09E43: AryUnlock
  loc_C09E46: FFreeAd var_B4 = ""
  loc_C09E4D: FFreeVar var_C4 = ""
  loc_C09E54: FLdRfVar var_114
  loc_C09E57: LitVarStr var_E8, "CufiFapa"
  loc_C09E5C: PopAdLdVar
  loc_C09E5D: FLdRfVar var_110
  loc_C09E60: FLdRfVar var_B4
  loc_C09E63: FLdPr var_8C
  loc_C09E66: from_stack_1v = clsfacipago.RsFrmGet()
  loc_C09E6B: FLdPr var_B4
  loc_C09E6E:  = Me.Fields
  loc_C09E73: FLdPr var_110
  loc_C09E76: from_stack_2 = Me.Item(from_stack_1)
  loc_C09E7B: LitI2_Byte 0
  loc_C09E7D: LitVar_Missing var_F8
  loc_C09E80: LitI2_Byte 0
  loc_C09E82: FLdZeroAd var_114
  loc_C09E85: CVarAd
  loc_C09E89: PopAdLdVar
  loc_C09E8A: LitI4 1
  loc_C09E8F: FLdPr Me
  loc_C09E92: MemLdStr global_108
  loc_C09E95: AryLock
  loc_C09E98: Ary1LdPr
  loc_C09E99: MemLdRfVar from_stack_1.global_24
  loc_C09E9C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09EA1: AryUnlock
  loc_C09EA4: FFreeAd var_B4 = ""
  loc_C09EAB: FFreeVar var_C4 = ""
  loc_C09EB2: FLdRfVar var_114
  loc_C09EB5: LitVarStr var_E8, "FirmFapa"
  loc_C09EBA: PopAdLdVar
  loc_C09EBB: FLdRfVar var_110
  loc_C09EBE: FLdRfVar var_B4
  loc_C09EC1: FLdPr var_8C
  loc_C09EC4: from_stack_1v = clsfacipago.RsFrmGet()
  loc_C09EC9: FLdPr var_B4
  loc_C09ECC:  = Me.Fields
  loc_C09ED1: FLdPr var_110
  loc_C09ED4: from_stack_2 = Me.Item(from_stack_1)
  loc_C09ED9: LitI2_Byte 0
  loc_C09EDB: LitVar_Missing var_F8
  loc_C09EDE: LitI2_Byte 0
  loc_C09EE0: FLdZeroAd var_114
  loc_C09EE3: CVarAd
  loc_C09EE7: PopAdLdVar
  loc_C09EE8: LitI4 1
  loc_C09EED: FLdPr Me
  loc_C09EF0: MemLdStr global_108
  loc_C09EF3: AryLock
  loc_C09EF6: Ary1LdPr
  loc_C09EF7: MemLdRfVar from_stack_1.global_28
  loc_C09EFA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09EFF: AryUnlock
  loc_C09F02: FFreeAd var_B4 = ""
  loc_C09F09: FFreeVar var_C4 = ""
  loc_C09F10: FLdRfVar var_114
  loc_C09F13: LitVarStr var_E8, "DetaTifp"
  loc_C09F18: PopAdLdVar
  loc_C09F19: FLdRfVar var_110
  loc_C09F1C: FLdRfVar var_B4
  loc_C09F1F: FLdPr var_8C
  loc_C09F22: from_stack_1v = clsfacipago.RsFrmGet()
  loc_C09F27: FLdPr var_B4
  loc_C09F2A:  = Me.Fields
  loc_C09F2F: FLdPr var_110
  loc_C09F32: from_stack_2 = Me.Item(from_stack_1)
  loc_C09F37: LitI2_Byte 0
  loc_C09F39: LitVar_Missing var_F8
  loc_C09F3C: LitI2_Byte 0
  loc_C09F3E: FLdZeroAd var_114
  loc_C09F41: CVarAd
  loc_C09F45: PopAdLdVar
  loc_C09F46: LitI4 1
  loc_C09F4B: FLdPr Me
  loc_C09F4E: MemLdStr global_108
  loc_C09F51: AryLock
  loc_C09F54: Ary1LdPr
  loc_C09F55: MemLdRfVar from_stack_1.global_32
  loc_C09F58: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09F5D: AryUnlock
  loc_C09F60: FFreeAd var_B4 = ""
  loc_C09F67: FFreeVar var_C4 = ""
  loc_C09F6E: FLdRfVar var_11C
  loc_C09F71: FLdPr var_8C
  loc_C09F74: from_stack_1 = clsfacipago.TotaFapa
  loc_C09F79: LitI2_Byte 0
  loc_C09F7B: LitVar_Missing var_C4
  loc_C09F7E: LitI2_Byte &HFF
  loc_C09F80: FLdFPR8 var_11C
  loc_C09F83: CVarR8
  loc_C09F87: PopAdLdVar
  loc_C09F88: LitI4 1
  loc_C09F8D: FLdPr Me
  loc_C09F90: MemLdStr global_108
  loc_C09F93: AryLock
  loc_C09F96: Ary1LdPr
  loc_C09F97: MemLdRfVar from_stack_1.global_36
  loc_C09F9A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C09F9F: AryUnlock
  loc_C09FA2: FFree1Var var_C4 = ""
  loc_C09FA5: LitNothing
  loc_C09FA7: FStAd var_8C 
  loc_C09FAB: FLdPr Me
  loc_C09FAE: MemLdRfVar from_stack_1.global_88
  loc_C09FB1: NewIfNullAd
  loc_C09FB4: FStAd var_120 
  loc_C09FB8: LitStr "SELECT @saldo:=TotaFapa FROM facipago WHERE CodiFapa = "
  loc_C09FBB: FLdPr Me
  loc_C09FBE: VCallAd Control_ID_CodiFapaMsk
  loc_C09FC1: FStAdFunc var_B4
  loc_C09FC4: FLdPr var_B4
  loc_C09FC7: LateIdLdVar var_C4 DispID_22 0
  loc_C09FCE: CStrVarTmp
  loc_C09FCF: FStStrNoPop var_90
  loc_C09FD2: ConcatStr
  loc_C09FD3: FStStrNoPop var_94
  loc_C09FD6: FLdPr var_120
  loc_C09FD9: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_C09FDE: FFreeStr var_90 = ""
  loc_C09FE5: FFree1Ad var_B4
  loc_C09FE8: FFree1Var var_C4 = ""
  loc_C09FEB: LitStr "SELECT CuotDefa, FeveDefa, CapiDefa, DecaDefa, RecaDefa, DereDefa, ApreDefa, InteDefa, TotaDefa, cast(@saldo:=@saldo-TotaDefa as DECIMAL(10,2)) as saldo FROM detafapa WHERE CodiFapa = "
  loc_C09FEE: FLdPr Me
  loc_C09FF1: VCallAd Control_ID_CodiFapaMsk
  loc_C09FF4: FStAdFunc var_B4
  loc_C09FF7: FLdPr var_B4
  loc_C09FFA: LateIdLdVar var_C4 DispID_22 0
  loc_C0A001: CStrVarTmp
  loc_C0A002: FStStrNoPop var_90
  loc_C0A005: ConcatStr
  loc_C0A006: FStStrNoPop var_94
  loc_C0A009: LitStr " ORDER BY CuotDefa"
  loc_C0A00C: ConcatStr
  loc_C0A00D: FStStrNoPop var_98
  loc_C0A010: FLdPr var_120
  loc_C0A013: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_C0A018: FFreeStr var_90 = "": var_94 = ""
  loc_C0A021: FFree1Ad var_B4
  loc_C0A024: FFree1Var var_C4 = ""
  loc_C0A027: FLdRfVar var_124
  loc_C0A02A: FLdPr var_120
  loc_C0A02D: from_stack_1 = clsdetafapa.RecordCount
  loc_C0A032: LitI4 0
  loc_C0A037: ILdRf var_124
  loc_C0A03A: LitI4 1
  loc_C0A03F: FLdPr Me
  loc_C0A042: MemLdStr global_108
  loc_C0A045: Ary1LdPr
  loc_C0A046: MemLdRfVar from_stack_1.global_40
  loc_C0A049: RedimPreserve
  loc_C0A053: FLdPr var_120
  loc_C0A056: Call clsdetafapa.MoveFirst()
  loc_C0A05B: LitI4 0
  loc_C0A060: LitI4 1
  loc_C0A065: LitI4 1
  loc_C0A06A: FLdPr Me
  loc_C0A06D: MemLdStr global_108
  loc_C0A070: Ary1LdPr
  loc_C0A071: MemLdRfVar from_stack_1.global_44
  loc_C0A074: Redim
  loc_C0A07E: LitI2_Byte 1
  loc_C0A080: FLdPr Me
  loc_C0A083: MemLdRfVar from_stack_1.global_122
  loc_C0A086: LitI4 1
  loc_C0A08B: FLdPr Me
  loc_C0A08E: MemLdStr global_108
  loc_C0A091: Ary1LdPr
  loc_C0A092: MemLdStr global_40
  loc_C0A095: LitI2_Byte 1
  loc_C0A097: FnUBound
  loc_C0A099: CI2I4
  loc_C0A09A: ForI2 var_128
  loc_C0A0A0: FLdRfVar var_114
  loc_C0A0A3: LitVarStr var_E8, "CuotDefa"
  loc_C0A0A8: PopAdLdVar
  loc_C0A0A9: FLdRfVar var_110
  loc_C0A0AC: FLdRfVar var_B4
  loc_C0A0AF: FLdPr var_120
  loc_C0A0B2: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_C0A0B7: FLdPr var_B4
  loc_C0A0BA:  = Me.Fields
  loc_C0A0BF: FLdPr var_110
  loc_C0A0C2: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A0C7: LitI2_Byte 0
  loc_C0A0C9: LitVar_Missing var_F8
  loc_C0A0CC: LitI2_Byte 0
  loc_C0A0CE: FLdZeroAd var_114
  loc_C0A0D1: CVarAd
  loc_C0A0D5: PopAdLdVar
  loc_C0A0D6: FLdPr Me
  loc_C0A0D9: MemLdI2 global_122
  loc_C0A0DC: CI4UI1
  loc_C0A0DD: LitI4 1
  loc_C0A0E2: FLdPr Me
  loc_C0A0E5: MemLdStr global_108
  loc_C0A0E8: AryLock
  loc_C0A0EB: Ary1LdPr
  loc_C0A0EC: MemLdStr global_40
  loc_C0A0EF: AryLock
  loc_C0A0F2: Ary1LdPr
  loc_C0A0F3: MemLdRfVar from_stack_1.global_0
  loc_C0A0F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A0FB: AryUnlock
  loc_C0A0FE: AryUnlock
  loc_C0A101: FFreeAd var_B4 = ""
  loc_C0A108: FFreeVar var_C4 = ""
  loc_C0A10F: FLdRfVar var_C4
  loc_C0A112: FLdPr var_120
  loc_C0A115: from_stack_1 = clsdetafapa.FeveDefa
  loc_C0A11A: LitI2_Byte 0
  loc_C0A11C: LitVar_Missing var_F8
  loc_C0A11F: LitI2_Byte 0
  loc_C0A121: FLdVar var_C4
  loc_C0A125: FLdPr Me
  loc_C0A128: MemLdI2 global_122
  loc_C0A12B: CI4UI1
  loc_C0A12C: LitI4 1
  loc_C0A131: FLdPr Me
  loc_C0A134: MemLdStr global_108
  loc_C0A137: AryLock
  loc_C0A13A: Ary1LdPr
  loc_C0A13B: MemLdStr global_40
  loc_C0A13E: AryLock
  loc_C0A141: Ary1LdPr
  loc_C0A142: MemLdRfVar from_stack_1.global_4
  loc_C0A145: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A14A: AryUnlock
  loc_C0A14D: AryUnlock
  loc_C0A150: FFreeVar var_C4 = ""
  loc_C0A157: FLdRfVar var_11C
  loc_C0A15A: FLdPr var_120
  loc_C0A15D: from_stack_1 = clsdetafapa.CapiDefa
  loc_C0A162: LitI2_Byte 0
  loc_C0A164: LitI4 1
  loc_C0A169: LitI4 1
  loc_C0A16E: FLdPr Me
  loc_C0A171: MemLdStr global_108
  loc_C0A174: AryLock
  loc_C0A177: Ary1LdPr
  loc_C0A178: MemLdStr global_44
  loc_C0A17B: AryLock
  loc_C0A17E: Ary1LdPr
  loc_C0A17F: MemLdRfVar from_stack_1.global_8
  loc_C0A182: CVarRef
  loc_C0A187: LitI2_Byte &HFF
  loc_C0A189: FLdFPR8 var_11C
  loc_C0A18C: CVarR8
  loc_C0A190: PopAdLdVar
  loc_C0A191: FLdPr Me
  loc_C0A194: MemLdI2 global_122
  loc_C0A197: CI4UI1
  loc_C0A198: LitI4 1
  loc_C0A19D: FLdPr Me
  loc_C0A1A0: MemLdStr global_108
  loc_C0A1A3: AryLock
  loc_C0A1A6: Ary1LdPr
  loc_C0A1A7: MemLdStr global_40
  loc_C0A1AA: AryLock
  loc_C0A1AD: Ary1LdPr
  loc_C0A1AE: MemLdRfVar from_stack_1.global_8
  loc_C0A1B1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A1B6: AryUnlock
  loc_C0A1B9: AryUnlock
  loc_C0A1BC: AryUnlock
  loc_C0A1BF: AryUnlock
  loc_C0A1C2: FLdRfVar var_11C
  loc_C0A1C5: FLdPr var_120
  loc_C0A1C8: from_stack_1 = clsdetafapa.DecaDefa
  loc_C0A1CD: LitI2_Byte 0
  loc_C0A1CF: LitI4 1
  loc_C0A1D4: LitI4 1
  loc_C0A1D9: FLdPr Me
  loc_C0A1DC: MemLdStr global_108
  loc_C0A1DF: AryLock
  loc_C0A1E2: Ary1LdPr
  loc_C0A1E3: MemLdStr global_44
  loc_C0A1E6: AryLock
  loc_C0A1E9: Ary1LdPr
  loc_C0A1EA: MemLdRfVar from_stack_1.global_12
  loc_C0A1ED: CVarRef
  loc_C0A1F2: LitI2_Byte &HFF
  loc_C0A1F4: FLdFPR8 var_11C
  loc_C0A1F7: CVarR8
  loc_C0A1FB: PopAdLdVar
  loc_C0A1FC: FLdPr Me
  loc_C0A1FF: MemLdI2 global_122
  loc_C0A202: CI4UI1
  loc_C0A203: LitI4 1
  loc_C0A208: FLdPr Me
  loc_C0A20B: MemLdStr global_108
  loc_C0A20E: AryLock
  loc_C0A211: Ary1LdPr
  loc_C0A212: MemLdStr global_40
  loc_C0A215: AryLock
  loc_C0A218: Ary1LdPr
  loc_C0A219: MemLdRfVar from_stack_1.global_12
  loc_C0A21C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A221: AryUnlock
  loc_C0A224: AryUnlock
  loc_C0A227: AryUnlock
  loc_C0A22A: AryUnlock
  loc_C0A22D: FLdRfVar var_11C
  loc_C0A230: FLdPr var_120
  loc_C0A233: from_stack_1 = clsdetafapa.RecaDefa
  loc_C0A238: LitI2_Byte 0
  loc_C0A23A: LitI4 1
  loc_C0A23F: LitI4 1
  loc_C0A244: FLdPr Me
  loc_C0A247: MemLdStr global_108
  loc_C0A24A: AryLock
  loc_C0A24D: Ary1LdPr
  loc_C0A24E: MemLdStr global_44
  loc_C0A251: AryLock
  loc_C0A254: Ary1LdPr
  loc_C0A255: MemLdRfVar from_stack_1.global_16
  loc_C0A258: CVarRef
  loc_C0A25D: LitI2_Byte &HFF
  loc_C0A25F: FLdFPR8 var_11C
  loc_C0A262: CVarR8
  loc_C0A266: PopAdLdVar
  loc_C0A267: FLdPr Me
  loc_C0A26A: MemLdI2 global_122
  loc_C0A26D: CI4UI1
  loc_C0A26E: LitI4 1
  loc_C0A273: FLdPr Me
  loc_C0A276: MemLdStr global_108
  loc_C0A279: AryLock
  loc_C0A27C: Ary1LdPr
  loc_C0A27D: MemLdStr global_40
  loc_C0A280: AryLock
  loc_C0A283: Ary1LdPr
  loc_C0A284: MemLdRfVar from_stack_1.global_16
  loc_C0A287: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A28C: AryUnlock
  loc_C0A28F: AryUnlock
  loc_C0A292: AryUnlock
  loc_C0A295: AryUnlock
  loc_C0A298: FLdRfVar var_11C
  loc_C0A29B: FLdPr var_120
  loc_C0A29E: from_stack_1 = clsdetafapa.DereDefa
  loc_C0A2A3: LitI2_Byte 0
  loc_C0A2A5: LitI4 1
  loc_C0A2AA: LitI4 1
  loc_C0A2AF: FLdPr Me
  loc_C0A2B2: MemLdStr global_108
  loc_C0A2B5: AryLock
  loc_C0A2B8: Ary1LdPr
  loc_C0A2B9: MemLdStr global_44
  loc_C0A2BC: AryLock
  loc_C0A2BF: Ary1LdPr
  loc_C0A2C0: MemLdRfVar from_stack_1.global_20
  loc_C0A2C3: CVarRef
  loc_C0A2C8: LitI2_Byte &HFF
  loc_C0A2CA: FLdFPR8 var_11C
  loc_C0A2CD: CVarR8
  loc_C0A2D1: PopAdLdVar
  loc_C0A2D2: FLdPr Me
  loc_C0A2D5: MemLdI2 global_122
  loc_C0A2D8: CI4UI1
  loc_C0A2D9: LitI4 1
  loc_C0A2DE: FLdPr Me
  loc_C0A2E1: MemLdStr global_108
  loc_C0A2E4: AryLock
  loc_C0A2E7: Ary1LdPr
  loc_C0A2E8: MemLdStr global_40
  loc_C0A2EB: AryLock
  loc_C0A2EE: Ary1LdPr
  loc_C0A2EF: MemLdRfVar from_stack_1.global_20
  loc_C0A2F2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A2F7: AryUnlock
  loc_C0A2FA: AryUnlock
  loc_C0A2FD: AryUnlock
  loc_C0A300: AryUnlock
  loc_C0A303: FLdRfVar var_11C
  loc_C0A306: FLdPr var_120
  loc_C0A309: from_stack_1 = clsdetafapa.ApreDefa
  loc_C0A30E: LitI2_Byte 0
  loc_C0A310: LitI4 1
  loc_C0A315: LitI4 1
  loc_C0A31A: FLdPr Me
  loc_C0A31D: MemLdStr global_108
  loc_C0A320: AryLock
  loc_C0A323: Ary1LdPr
  loc_C0A324: MemLdStr global_44
  loc_C0A327: AryLock
  loc_C0A32A: Ary1LdPr
  loc_C0A32B: MemLdRfVar from_stack_1.global_28
  loc_C0A32E: CVarRef
  loc_C0A333: LitI2_Byte &HFF
  loc_C0A335: FLdFPR8 var_11C
  loc_C0A338: CVarR8
  loc_C0A33C: PopAdLdVar
  loc_C0A33D: FLdPr Me
  loc_C0A340: MemLdI2 global_122
  loc_C0A343: CI4UI1
  loc_C0A344: LitI4 1
  loc_C0A349: FLdPr Me
  loc_C0A34C: MemLdStr global_108
  loc_C0A34F: AryLock
  loc_C0A352: Ary1LdPr
  loc_C0A353: MemLdStr global_40
  loc_C0A356: AryLock
  loc_C0A359: Ary1LdPr
  loc_C0A35A: MemLdRfVar from_stack_1.global_28
  loc_C0A35D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A362: AryUnlock
  loc_C0A365: AryUnlock
  loc_C0A368: AryUnlock
  loc_C0A36B: AryUnlock
  loc_C0A36E: FLdRfVar var_11C
  loc_C0A371: FLdPr var_120
  loc_C0A374: from_stack_1 = clsdetafapa.InteDefa
  loc_C0A379: LitI2_Byte 0
  loc_C0A37B: LitI4 1
  loc_C0A380: LitI4 1
  loc_C0A385: FLdPr Me
  loc_C0A388: MemLdStr global_108
  loc_C0A38B: AryLock
  loc_C0A38E: Ary1LdPr
  loc_C0A38F: MemLdStr global_44
  loc_C0A392: AryLock
  loc_C0A395: Ary1LdPr
  loc_C0A396: MemLdRfVar from_stack_1.global_24
  loc_C0A399: CVarRef
  loc_C0A39E: LitI2_Byte &HFF
  loc_C0A3A0: FLdFPR8 var_11C
  loc_C0A3A3: CVarR8
  loc_C0A3A7: PopAdLdVar
  loc_C0A3A8: FLdPr Me
  loc_C0A3AB: MemLdI2 global_122
  loc_C0A3AE: CI4UI1
  loc_C0A3AF: LitI4 1
  loc_C0A3B4: FLdPr Me
  loc_C0A3B7: MemLdStr global_108
  loc_C0A3BA: AryLock
  loc_C0A3BD: Ary1LdPr
  loc_C0A3BE: MemLdStr global_40
  loc_C0A3C1: AryLock
  loc_C0A3C4: Ary1LdPr
  loc_C0A3C5: MemLdRfVar from_stack_1.global_24
  loc_C0A3C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A3CD: AryUnlock
  loc_C0A3D0: AryUnlock
  loc_C0A3D3: AryUnlock
  loc_C0A3D6: AryUnlock
  loc_C0A3D9: FLdRfVar var_11C
  loc_C0A3DC: FLdPr var_120
  loc_C0A3DF: from_stack_1 = clsdetafapa.TotaDefa
  loc_C0A3E4: LitI2_Byte 0
  loc_C0A3E6: LitI4 1
  loc_C0A3EB: LitI4 1
  loc_C0A3F0: FLdPr Me
  loc_C0A3F3: MemLdStr global_108
  loc_C0A3F6: AryLock
  loc_C0A3F9: Ary1LdPr
  loc_C0A3FA: MemLdStr global_44
  loc_C0A3FD: AryLock
  loc_C0A400: Ary1LdPr
  loc_C0A401: MemLdRfVar from_stack_1.global_32
  loc_C0A404: CVarRef
  loc_C0A409: LitI2_Byte &HFF
  loc_C0A40B: FLdFPR8 var_11C
  loc_C0A40E: CVarR8
  loc_C0A412: PopAdLdVar
  loc_C0A413: FLdPr Me
  loc_C0A416: MemLdI2 global_122
  loc_C0A419: CI4UI1
  loc_C0A41A: LitI4 1
  loc_C0A41F: FLdPr Me
  loc_C0A422: MemLdStr global_108
  loc_C0A425: AryLock
  loc_C0A428: Ary1LdPr
  loc_C0A429: MemLdStr global_40
  loc_C0A42C: AryLock
  loc_C0A42F: Ary1LdPr
  loc_C0A430: MemLdRfVar from_stack_1.global_32
  loc_C0A433: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A438: AryUnlock
  loc_C0A43B: AryUnlock
  loc_C0A43E: AryUnlock
  loc_C0A441: AryUnlock
  loc_C0A444: FLdRfVar var_C4
  loc_C0A447: FLdPr var_120
  loc_C0A44A: from_stack_1 = clsdetafapa.Saldo
  loc_C0A44F: LitI2_Byte 0
  loc_C0A451: LitVar_Missing var_F8
  loc_C0A454: LitI2_Byte &HFF
  loc_C0A456: FLdVar var_C4
  loc_C0A45A: FLdPr Me
  loc_C0A45D: MemLdI2 global_122
  loc_C0A460: CI4UI1
  loc_C0A461: LitI4 1
  loc_C0A466: FLdPr Me
  loc_C0A469: MemLdStr global_108
  loc_C0A46C: AryLock
  loc_C0A46F: Ary1LdPr
  loc_C0A470: MemLdStr global_40
  loc_C0A473: AryLock
  loc_C0A476: Ary1LdPr
  loc_C0A477: MemLdRfVar from_stack_1.global_36
  loc_C0A47A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0A47F: AryUnlock
  loc_C0A482: AryUnlock
  loc_C0A485: FFreeVar var_C4 = ""
  loc_C0A48C: LitI2_Byte 1
  loc_C0A48E: PopTmpLdAd2 var_FA
  loc_C0A491: FLdPr var_120
  loc_C0A494: Call clsdetafapa.Move(from_stack_1v)
  loc_C0A499: FLdPr Me
  loc_C0A49C: MemLdRfVar from_stack_1.global_122
  loc_C0A49F: NextI2 var_128, loc_C0A0A0
  loc_C0A4A4: LitNothing
  loc_C0A4A6: FStAd var_120 
  loc_C0A4AA: ExitProcHresult
End Function

Private Function Proc_212_24_A8DA18() 'A8DA18
  'Data Table: 4C76E8
  loc_A8D98C: ZeroRetVal
  loc_A8D98E: FLdRfVar var_8C
  loc_A8D991: NewIfNullAd
  loc_A8D994: FStAd var_90 
  loc_A8D998: LitStr "SELECT IFNULL(cast(group_concat(DISTINCT NumeApre ORDER BY NumeApre ASC SEPARATOR ', ') as CHAR),'') as AutoApre"
  loc_A8D99B: LitStr " FROM faciapre WHERE CodiFapa = "
  loc_A8D99E: ConcatStr
  loc_A8D99F: FStStrNoPop var_A8
  loc_A8D9A2: FLdPr Me
  loc_A8D9A5: VCallAd Control_ID_CodiFapaMsk
  loc_A8D9A8: FStAdFunc var_94
  loc_A8D9AB: FLdPr var_94
  loc_A8D9AE: LateIdLdVar var_A4 DispID_22 0
  loc_A8D9B5: CStrVarTmp
  loc_A8D9B6: FStStrNoPop var_AC
  loc_A8D9B9: ConcatStr
  loc_A8D9BA: FStStrNoPop var_B0
  loc_A8D9BD: FLdPr var_90
  loc_A8D9C0: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_A8D9C5: FFreeStr var_A8 = "": var_AC = ""
  loc_A8D9CE: FFree1Ad var_94
  loc_A8D9D1: FFree1Var var_A4 = ""
  loc_A8D9D4: FLdRfVar var_B4
  loc_A8D9D7: FLdPr var_90
  loc_A8D9DA: from_stack_1 = clsboleapre.RecordCount
  loc_A8D9DF: ILdRf var_B4
  loc_A8D9E2: LitI4 0
  loc_A8D9E7: GtI4
  loc_A8D9E8: BranchF loc_A8DA03
  loc_A8D9EB: FLdRfVar var_A4
  loc_A8D9EE: FLdPr var_90
  loc_A8D9F1: from_stack_1 = clsboleapre.AutoApre
  loc_A8D9F6: FLdRfVar var_A4
  loc_A8D9F9: CStrVarTmp
  loc_A8D9FA: FStStr var_88
  loc_A8D9FD: FFree1Var var_A4 = ""
  loc_A8DA00: Branch loc_A8DA09
  loc_A8DA03: LitStr vbNullString
  loc_A8DA06: FStStrCopy var_88
  loc_A8DA09: LitNothing
  loc_A8DA0B: FStAd var_90 
  loc_A8DA0F: ExitProcCbHresult
End Function

Private Function Proc_212_25_BF29D8() 'BF29D8
  'Data Table: 4C76E8
  loc_BF2170: LitVarI2 var_D8, 12
  loc_BF2175: LitVarI2 var_B8, 10
  loc_BF217A: LitI4 1
  loc_BF217F: FLdPr Me
  loc_BF2182: MemLdStr global_100
  loc_BF2185: Ary1LdPr
  loc_BF2186: MemLdStr global_76
  loc_BF2189: FnLenStr
  loc_BF218A: LitI4 9
  loc_BF218F: GeI4
  loc_BF2190: CVarBoolI2 var_98
  loc_BF2194: FLdRfVar var_E8
  loc_BF2197: ImpAdCallFPR4  = IIf(, , )
  loc_BF219C: FLdRfVar var_E8
  loc_BF219F: CI2Var
  loc_BF21A0: FStI2 var_86
  loc_BF21A3: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_BF21AE: LitVarStr var_98, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BF21B3: PopAdLdVar
  loc_BF21B4: FLdPr Me
  loc_BF21B7: MemLdRfVar from_stack_1.global_64
  loc_BF21BA: LdPrVar
  loc_BF21BC: LateMemCall
  loc_BF21C2: LitVarStr var_98, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BF21C7: PopAdLdVar
  loc_BF21C8: FLdPr Me
  loc_BF21CB: MemLdRfVar from_stack_1.global_64
  loc_BF21CE: LdPrVar
  loc_BF21D0: LateMemCall
  loc_BF21D6: LitVarStr var_98, "<head>"
  loc_BF21DB: PopAdLdVar
  loc_BF21DC: FLdPr Me
  loc_BF21DF: MemLdRfVar from_stack_1.global_64
  loc_BF21E2: LdPrVar
  loc_BF21E4: LateMemCall
  loc_BF21EA: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BF21EF: PopAdLdVar
  loc_BF21F0: FLdPr Me
  loc_BF21F3: MemLdRfVar from_stack_1.global_64
  loc_BF21F6: LdPrVar
  loc_BF21F8: LateMemCall
  loc_BF21FE: LitStr "<title>"
  loc_BF2201: FLdRfVar var_EC
  loc_BF2204: FLdPr Me
  loc_BF2207:  = Me.Caption
  loc_BF220C: ILdRf var_EC
  loc_BF220F: ConcatStr
  loc_BF2210: FStStrNoPop var_F0
  loc_BF2213: LitStr "</title>"
  loc_BF2216: ConcatStr
  loc_BF2217: CVarStr var_B8
  loc_BF221A: PopAdLdVar
  loc_BF221B: FLdPr Me
  loc_BF221E: MemLdRfVar from_stack_1.global_64
  loc_BF2221: LdPrVar
  loc_BF2223: LateMemCall
  loc_BF2229: FFreeStr var_EC = ""
  loc_BF2230: FFree1Var var_B8 = ""
  loc_BF2233: LitVarStr var_98, "<style type=""text/css"">"
  loc_BF2238: PopAdLdVar
  loc_BF2239: FLdPr Me
  loc_BF223C: MemLdRfVar from_stack_1.global_64
  loc_BF223F: LdPrVar
  loc_BF2241: LateMemCall
  loc_BF2247: LitVarStr var_98, "<!--"
  loc_BF224C: PopAdLdVar
  loc_BF224D: FLdPr Me
  loc_BF2250: MemLdRfVar from_stack_1.global_64
  loc_BF2253: LdPrVar
  loc_BF2255: LateMemCall
  loc_BF225B: LitVarStr var_98, ".Encabezado {"
  loc_BF2260: PopAdLdVar
  loc_BF2261: FLdPr Me
  loc_BF2264: MemLdRfVar from_stack_1.global_64
  loc_BF2267: LdPrVar
  loc_BF2269: LateMemCall
  loc_BF226F: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BF2274: PopAdLdVar
  loc_BF2275: FLdPr Me
  loc_BF2278: MemLdRfVar from_stack_1.global_64
  loc_BF227B: LdPrVar
  loc_BF227D: LateMemCall
  loc_BF2283: LitVarStr var_98, " font-size: 10px;"
  loc_BF2288: PopAdLdVar
  loc_BF2289: FLdPr Me
  loc_BF228C: MemLdRfVar from_stack_1.global_64
  loc_BF228F: LdPrVar
  loc_BF2291: LateMemCall
  loc_BF2297: LitVarStr var_98, " background-color: #F0F0F0;"
  loc_BF229C: PopAdLdVar
  loc_BF229D: FLdPr Me
  loc_BF22A0: MemLdRfVar from_stack_1.global_64
  loc_BF22A3: LdPrVar
  loc_BF22A5: LateMemCall
  loc_BF22AB: LitVarStr var_98, "}"
  loc_BF22B0: PopAdLdVar
  loc_BF22B1: FLdPr Me
  loc_BF22B4: MemLdRfVar from_stack_1.global_64
  loc_BF22B7: LdPrVar
  loc_BF22B9: LateMemCall
  loc_BF22BF: LitVarStr var_98, ".Normal {"
  loc_BF22C4: PopAdLdVar
  loc_BF22C5: FLdPr Me
  loc_BF22C8: MemLdRfVar from_stack_1.global_64
  loc_BF22CB: LdPrVar
  loc_BF22CD: LateMemCall
  loc_BF22D3: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF22D8: PopAdLdVar
  loc_BF22D9: FLdPr Me
  loc_BF22DC: MemLdRfVar from_stack_1.global_64
  loc_BF22DF: LdPrVar
  loc_BF22E1: LateMemCall
  loc_BF22E7: LitVarStr var_98, " font-size: 11px;"
  loc_BF22EC: PopAdLdVar
  loc_BF22ED: FLdPr Me
  loc_BF22F0: MemLdRfVar from_stack_1.global_64
  loc_BF22F3: LdPrVar
  loc_BF22F5: LateMemCall
  loc_BF22FB: LitVarStr var_98, " vertical-align: top;"
  loc_BF2300: PopAdLdVar
  loc_BF2301: FLdPr Me
  loc_BF2304: MemLdRfVar from_stack_1.global_64
  loc_BF2307: LdPrVar
  loc_BF2309: LateMemCall
  loc_BF230F: LitVarStr var_98, "}"
  loc_BF2314: PopAdLdVar
  loc_BF2315: FLdPr Me
  loc_BF2318: MemLdRfVar from_stack_1.global_64
  loc_BF231B: LdPrVar
  loc_BF231D: LateMemCall
  loc_BF2323: LitVarStr var_98, ".NormalBloqueFin {"
  loc_BF2328: PopAdLdVar
  loc_BF2329: FLdPr Me
  loc_BF232C: MemLdRfVar from_stack_1.global_64
  loc_BF232F: LdPrVar
  loc_BF2331: LateMemCall
  loc_BF2337: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF233C: PopAdLdVar
  loc_BF233D: FLdPr Me
  loc_BF2340: MemLdRfVar from_stack_1.global_64
  loc_BF2343: LdPrVar
  loc_BF2345: LateMemCall
  loc_BF234B: LitStr " font-size: "
  loc_BF234E: FLdI2 var_86
  loc_BF2351: CStrUI1
  loc_BF2353: FStStrNoPop var_EC
  loc_BF2356: ConcatStr
  loc_BF2357: FStStrNoPop var_F0
  loc_BF235A: LitStr "px;"
  loc_BF235D: ConcatStr
  loc_BF235E: CVarStr var_B8
  loc_BF2361: PopAdLdVar
  loc_BF2362: FLdPr Me
  loc_BF2365: MemLdRfVar from_stack_1.global_64
  loc_BF2368: LdPrVar
  loc_BF236A: LateMemCall
  loc_BF2370: FFreeStr var_EC = ""
  loc_BF2377: FFree1Var var_B8 = ""
  loc_BF237A: LitVarStr var_98, " vertical-align: top;"
  loc_BF237F: PopAdLdVar
  loc_BF2380: FLdPr Me
  loc_BF2383: MemLdRfVar from_stack_1.global_64
  loc_BF2386: LdPrVar
  loc_BF2388: LateMemCall
  loc_BF238E: LitVarStr var_98, "}"
  loc_BF2393: PopAdLdVar
  loc_BF2394: FLdPr Me
  loc_BF2397: MemLdRfVar from_stack_1.global_64
  loc_BF239A: LdPrVar
  loc_BF239C: LateMemCall
  loc_BF23A2: LitVarStr var_98, ".NormalBloqueFinGrande {"
  loc_BF23A7: PopAdLdVar
  loc_BF23A8: FLdPr Me
  loc_BF23AB: MemLdRfVar from_stack_1.global_64
  loc_BF23AE: LdPrVar
  loc_BF23B0: LateMemCall
  loc_BF23B6: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF23BB: PopAdLdVar
  loc_BF23BC: FLdPr Me
  loc_BF23BF: MemLdRfVar from_stack_1.global_64
  loc_BF23C2: LdPrVar
  loc_BF23C4: LateMemCall
  loc_BF23CA: LitStr " font-size: "
  loc_BF23CD: FLdI2 var_86
  loc_BF23D0: LitI2_Byte 4
  loc_BF23D2: AddI2
  loc_BF23D3: CStrUI1
  loc_BF23D5: FStStrNoPop var_EC
  loc_BF23D8: ConcatStr
  loc_BF23D9: FStStrNoPop var_F0
  loc_BF23DC: LitStr "px;"
  loc_BF23DF: ConcatStr
  loc_BF23E0: CVarStr var_B8
  loc_BF23E3: PopAdLdVar
  loc_BF23E4: FLdPr Me
  loc_BF23E7: MemLdRfVar from_stack_1.global_64
  loc_BF23EA: LdPrVar
  loc_BF23EC: LateMemCall
  loc_BF23F2: FFreeStr var_EC = ""
  loc_BF23F9: FFree1Var var_B8 = ""
  loc_BF23FC: LitVarStr var_98, " vertical-align: top;"
  loc_BF2401: PopAdLdVar
  loc_BF2402: FLdPr Me
  loc_BF2405: MemLdRfVar from_stack_1.global_64
  loc_BF2408: LdPrVar
  loc_BF240A: LateMemCall
  loc_BF2410: LitVarStr var_98, "}"
  loc_BF2415: PopAdLdVar
  loc_BF2416: FLdPr Me
  loc_BF2419: MemLdRfVar from_stack_1.global_64
  loc_BF241C: LdPrVar
  loc_BF241E: LateMemCall
  loc_BF2424: LitVarStr var_98, ".NombreMunicipio {"
  loc_BF2429: PopAdLdVar
  loc_BF242A: FLdPr Me
  loc_BF242D: MemLdRfVar from_stack_1.global_64
  loc_BF2430: LdPrVar
  loc_BF2432: LateMemCall
  loc_BF2438: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BF243D: PopAdLdVar
  loc_BF243E: FLdPr Me
  loc_BF2441: MemLdRfVar from_stack_1.global_64
  loc_BF2444: LdPrVar
  loc_BF2446: LateMemCall
  loc_BF244C: LitVarStr var_98, " font-size: 14px;"
  loc_BF2451: PopAdLdVar
  loc_BF2452: FLdPr Me
  loc_BF2455: MemLdRfVar from_stack_1.global_64
  loc_BF2458: LdPrVar
  loc_BF245A: LateMemCall
  loc_BF2460: LitVarStr var_98, " font-weight: bold;"
  loc_BF2465: PopAdLdVar
  loc_BF2466: FLdPr Me
  loc_BF2469: MemLdRfVar from_stack_1.global_64
  loc_BF246C: LdPrVar
  loc_BF246E: LateMemCall
  loc_BF2474: LitVarStr var_98, "}"
  loc_BF2479: PopAdLdVar
  loc_BF247A: FLdPr Me
  loc_BF247D: MemLdRfVar from_stack_1.global_64
  loc_BF2480: LdPrVar
  loc_BF2482: LateMemCall
  loc_BF2488: LitVarStr var_98, ".NombreMunicipioBloqueFin {"
  loc_BF248D: PopAdLdVar
  loc_BF248E: FLdPr Me
  loc_BF2491: MemLdRfVar from_stack_1.global_64
  loc_BF2494: LdPrVar
  loc_BF2496: LateMemCall
  loc_BF249C: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BF24A1: PopAdLdVar
  loc_BF24A2: FLdPr Me
  loc_BF24A5: MemLdRfVar from_stack_1.global_64
  loc_BF24A8: LdPrVar
  loc_BF24AA: LateMemCall
  loc_BF24B0: LitVarStr var_98, " font-size: 10px;"
  loc_BF24B5: PopAdLdVar
  loc_BF24B6: FLdPr Me
  loc_BF24B9: MemLdRfVar from_stack_1.global_64
  loc_BF24BC: LdPrVar
  loc_BF24BE: LateMemCall
  loc_BF24C4: LitVarStr var_98, "}"
  loc_BF24C9: PopAdLdVar
  loc_BF24CA: FLdPr Me
  loc_BF24CD: MemLdRfVar from_stack_1.global_64
  loc_BF24D0: LdPrVar
  loc_BF24D2: LateMemCall
  loc_BF24D8: LitVarStr var_98, ".DatosMunicipio {"
  loc_BF24DD: PopAdLdVar
  loc_BF24DE: FLdPr Me
  loc_BF24E1: MemLdRfVar from_stack_1.global_64
  loc_BF24E4: LdPrVar
  loc_BF24E6: LateMemCall
  loc_BF24EC: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BF24F1: PopAdLdVar
  loc_BF24F2: FLdPr Me
  loc_BF24F5: MemLdRfVar from_stack_1.global_64
  loc_BF24F8: LdPrVar
  loc_BF24FA: LateMemCall
  loc_BF2500: LitVarStr var_98, " font-size: 12px;"
  loc_BF2505: PopAdLdVar
  loc_BF2506: FLdPr Me
  loc_BF2509: MemLdRfVar from_stack_1.global_64
  loc_BF250C: LdPrVar
  loc_BF250E: LateMemCall
  loc_BF2514: LitVarStr var_98, "}"
  loc_BF2519: PopAdLdVar
  loc_BF251A: FLdPr Me
  loc_BF251D: MemLdRfVar from_stack_1.global_64
  loc_BF2520: LdPrVar
  loc_BF2522: LateMemCall
  loc_BF2528: LitVarStr var_98, ".Totales {"
  loc_BF252D: PopAdLdVar
  loc_BF252E: FLdPr Me
  loc_BF2531: MemLdRfVar from_stack_1.global_64
  loc_BF2534: LdPrVar
  loc_BF2536: LateMemCall
  loc_BF253C: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF2541: PopAdLdVar
  loc_BF2542: FLdPr Me
  loc_BF2545: MemLdRfVar from_stack_1.global_64
  loc_BF2548: LdPrVar
  loc_BF254A: LateMemCall
  loc_BF2550: LitVarStr var_98, " font-size: 14px;"
  loc_BF2555: PopAdLdVar
  loc_BF2556: FLdPr Me
  loc_BF2559: MemLdRfVar from_stack_1.global_64
  loc_BF255C: LdPrVar
  loc_BF255E: LateMemCall
  loc_BF2564: LitVarStr var_98, " vertical-align: top;"
  loc_BF2569: PopAdLdVar
  loc_BF256A: FLdPr Me
  loc_BF256D: MemLdRfVar from_stack_1.global_64
  loc_BF2570: LdPrVar
  loc_BF2572: LateMemCall
  loc_BF2578: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BF257D: PopAdLdVar
  loc_BF257E: FLdPr Me
  loc_BF2581: MemLdRfVar from_stack_1.global_64
  loc_BF2584: LdPrVar
  loc_BF2586: LateMemCall
  loc_BF258C: LitVarStr var_98, " font-weight: bold;"
  loc_BF2591: PopAdLdVar
  loc_BF2592: FLdPr Me
  loc_BF2595: MemLdRfVar from_stack_1.global_64
  loc_BF2598: LdPrVar
  loc_BF259A: LateMemCall
  loc_BF25A0: LitVarStr var_98, "}"
  loc_BF25A5: PopAdLdVar
  loc_BF25A6: FLdPr Me
  loc_BF25A9: MemLdRfVar from_stack_1.global_64
  loc_BF25AC: LdPrVar
  loc_BF25AE: LateMemCall
  loc_BF25B4: LitVarStr var_98, ".Total {"
  loc_BF25B9: PopAdLdVar
  loc_BF25BA: FLdPr Me
  loc_BF25BD: MemLdRfVar from_stack_1.global_64
  loc_BF25C0: LdPrVar
  loc_BF25C2: LateMemCall
  loc_BF25C8: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF25CD: PopAdLdVar
  loc_BF25CE: FLdPr Me
  loc_BF25D1: MemLdRfVar from_stack_1.global_64
  loc_BF25D4: LdPrVar
  loc_BF25D6: LateMemCall
  loc_BF25DC: LitVarStr var_98, " font-size: 14px;"
  loc_BF25E1: PopAdLdVar
  loc_BF25E2: FLdPr Me
  loc_BF25E5: MemLdRfVar from_stack_1.global_64
  loc_BF25E8: LdPrVar
  loc_BF25EA: LateMemCall
  loc_BF25F0: LitVarStr var_98, " vertical-align: top;"
  loc_BF25F5: PopAdLdVar
  loc_BF25F6: FLdPr Me
  loc_BF25F9: MemLdRfVar from_stack_1.global_64
  loc_BF25FC: LdPrVar
  loc_BF25FE: LateMemCall
  loc_BF2604: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BF2609: PopAdLdVar
  loc_BF260A: FLdPr Me
  loc_BF260D: MemLdRfVar from_stack_1.global_64
  loc_BF2610: LdPrVar
  loc_BF2612: LateMemCall
  loc_BF2618: LitVarStr var_98, " font-weight: bold;"
  loc_BF261D: PopAdLdVar
  loc_BF261E: FLdPr Me
  loc_BF2621: MemLdRfVar from_stack_1.global_64
  loc_BF2624: LdPrVar
  loc_BF2626: LateMemCall
  loc_BF262C: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BF2631: PopAdLdVar
  loc_BF2632: FLdPr Me
  loc_BF2635: MemLdRfVar from_stack_1.global_64
  loc_BF2638: LdPrVar
  loc_BF263A: LateMemCall
  loc_BF2640: LitVarStr var_98, "}"
  loc_BF2645: PopAdLdVar
  loc_BF2646: FLdPr Me
  loc_BF2649: MemLdRfVar from_stack_1.global_64
  loc_BF264C: LdPrVar
  loc_BF264E: LateMemCall
  loc_BF2654: LitVarStr var_98, ".Vencimiento {"
  loc_BF2659: PopAdLdVar
  loc_BF265A: FLdPr Me
  loc_BF265D: MemLdRfVar from_stack_1.global_64
  loc_BF2660: LdPrVar
  loc_BF2662: LateMemCall
  loc_BF2668: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF266D: PopAdLdVar
  loc_BF266E: FLdPr Me
  loc_BF2671: MemLdRfVar from_stack_1.global_64
  loc_BF2674: LdPrVar
  loc_BF2676: LateMemCall
  loc_BF267C: LitStr " font-size: "
  loc_BF267F: FLdI2 var_86
  loc_BF2682: CStrUI1
  loc_BF2684: FStStrNoPop var_EC
  loc_BF2687: ConcatStr
  loc_BF2688: FStStrNoPop var_F0
  loc_BF268B: LitStr "px;"
  loc_BF268E: ConcatStr
  loc_BF268F: CVarStr var_B8
  loc_BF2692: PopAdLdVar
  loc_BF2693: FLdPr Me
  loc_BF2696: MemLdRfVar from_stack_1.global_64
  loc_BF2699: LdPrVar
  loc_BF269B: LateMemCall
  loc_BF26A1: FFreeStr var_EC = ""
  loc_BF26A8: FFree1Var var_B8 = ""
  loc_BF26AB: LitVarStr var_98, " vertical-align: top;"
  loc_BF26B0: PopAdLdVar
  loc_BF26B1: FLdPr Me
  loc_BF26B4: MemLdRfVar from_stack_1.global_64
  loc_BF26B7: LdPrVar
  loc_BF26B9: LateMemCall
  loc_BF26BF: LitVarStr var_98, " font-weight: bold;"
  loc_BF26C4: PopAdLdVar
  loc_BF26C5: FLdPr Me
  loc_BF26C8: MemLdRfVar from_stack_1.global_64
  loc_BF26CB: LdPrVar
  loc_BF26CD: LateMemCall
  loc_BF26D3: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BF26D8: PopAdLdVar
  loc_BF26D9: FLdPr Me
  loc_BF26DC: MemLdRfVar from_stack_1.global_64
  loc_BF26DF: LdPrVar
  loc_BF26E1: LateMemCall
  loc_BF26E7: LitVarStr var_98, "}"
  loc_BF26EC: PopAdLdVar
  loc_BF26ED: FLdPr Me
  loc_BF26F0: MemLdRfVar from_stack_1.global_64
  loc_BF26F3: LdPrVar
  loc_BF26F5: LateMemCall
  loc_BF26FB: LitVarStr var_98, ".Resaltado {"
  loc_BF2700: PopAdLdVar
  loc_BF2701: FLdPr Me
  loc_BF2704: MemLdRfVar from_stack_1.global_64
  loc_BF2707: LdPrVar
  loc_BF2709: LateMemCall
  loc_BF270F: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF2714: PopAdLdVar
  loc_BF2715: FLdPr Me
  loc_BF2718: MemLdRfVar from_stack_1.global_64
  loc_BF271B: LdPrVar
  loc_BF271D: LateMemCall
  loc_BF2723: LitVarStr var_98, " font-size: 11px;"
  loc_BF2728: PopAdLdVar
  loc_BF2729: FLdPr Me
  loc_BF272C: MemLdRfVar from_stack_1.global_64
  loc_BF272F: LdPrVar
  loc_BF2731: LateMemCall
  loc_BF2737: LitVarStr var_98, " vertical-align: top;"
  loc_BF273C: PopAdLdVar
  loc_BF273D: FLdPr Me
  loc_BF2740: MemLdRfVar from_stack_1.global_64
  loc_BF2743: LdPrVar
  loc_BF2745: LateMemCall
  loc_BF274B: LitVarStr var_98, " font-weight: bold;"
  loc_BF2750: PopAdLdVar
  loc_BF2751: FLdPr Me
  loc_BF2754: MemLdRfVar from_stack_1.global_64
  loc_BF2757: LdPrVar
  loc_BF2759: LateMemCall
  loc_BF275F: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BF2764: PopAdLdVar
  loc_BF2765: FLdPr Me
  loc_BF2768: MemLdRfVar from_stack_1.global_64
  loc_BF276B: LdPrVar
  loc_BF276D: LateMemCall
  loc_BF2773: LitVarStr var_98, "}"
  loc_BF2778: PopAdLdVar
  loc_BF2779: FLdPr Me
  loc_BF277C: MemLdRfVar from_stack_1.global_64
  loc_BF277F: LdPrVar
  loc_BF2781: LateMemCall
  loc_BF2787: LitVarStr var_98, ".CodBar {"
  loc_BF278C: PopAdLdVar
  loc_BF278D: FLdPr Me
  loc_BF2790: MemLdRfVar from_stack_1.global_64
  loc_BF2793: LdPrVar
  loc_BF2795: LateMemCall
  loc_BF279B: LitVarStr var_98, " font-family: ""Code 128"";"
  loc_BF27A0: PopAdLdVar
  loc_BF27A1: FLdPr Me
  loc_BF27A4: MemLdRfVar from_stack_1.global_64
  loc_BF27A7: LdPrVar
  loc_BF27A9: LateMemCall
  loc_BF27AF: LitStr " font-size: "
  loc_BF27B2: LitI2_Byte &H30
  loc_BF27B4: CStrUI1
  loc_BF27B6: FStStrNoPop var_EC
  loc_BF27B9: ConcatStr
  loc_BF27BA: FStStrNoPop var_F0
  loc_BF27BD: LitStr "px;"
  loc_BF27C0: ConcatStr
  loc_BF27C1: CVarStr var_B8
  loc_BF27C4: PopAdLdVar
  loc_BF27C5: FLdPr Me
  loc_BF27C8: MemLdRfVar from_stack_1.global_64
  loc_BF27CB: LdPrVar
  loc_BF27CD: LateMemCall
  loc_BF27D3: FFreeStr var_EC = ""
  loc_BF27DA: FFree1Var var_B8 = ""
  loc_BF27DD: LitVarStr var_98, " font-style: normal;"
  loc_BF27E2: PopAdLdVar
  loc_BF27E3: FLdPr Me
  loc_BF27E6: MemLdRfVar from_stack_1.global_64
  loc_BF27E9: LdPrVar
  loc_BF27EB: LateMemCall
  loc_BF27F1: LitVarStr var_98, " line-height: normal;"
  loc_BF27F6: PopAdLdVar
  loc_BF27F7: FLdPr Me
  loc_BF27FA: MemLdRfVar from_stack_1.global_64
  loc_BF27FD: LdPrVar
  loc_BF27FF: LateMemCall
  loc_BF2805: LitVarStr var_98, " font-weight: normal;"
  loc_BF280A: PopAdLdVar
  loc_BF280B: FLdPr Me
  loc_BF280E: MemLdRfVar from_stack_1.global_64
  loc_BF2811: LdPrVar
  loc_BF2813: LateMemCall
  loc_BF2819: LitVarStr var_98, "}"
  loc_BF281E: PopAdLdVar
  loc_BF281F: FLdPr Me
  loc_BF2822: MemLdRfVar from_stack_1.global_64
  loc_BF2825: LdPrVar
  loc_BF2827: LateMemCall
  loc_BF282D: LitVarStr var_98, ".LineaDato {"
  loc_BF2832: PopAdLdVar
  loc_BF2833: FLdPr Me
  loc_BF2836: MemLdRfVar from_stack_1.global_64
  loc_BF2839: LdPrVar
  loc_BF283B: LateMemCall
  loc_BF2841: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF2846: PopAdLdVar
  loc_BF2847: FLdPr Me
  loc_BF284A: MemLdRfVar from_stack_1.global_64
  loc_BF284D: LdPrVar
  loc_BF284F: LateMemCall
  loc_BF2855: LitVarStr var_98, " font-size: 11px;"
  loc_BF285A: PopAdLdVar
  loc_BF285B: FLdPr Me
  loc_BF285E: MemLdRfVar from_stack_1.global_64
  loc_BF2861: LdPrVar
  loc_BF2863: LateMemCall
  loc_BF2869: LitVarStr var_98, "}"
  loc_BF286E: PopAdLdVar
  loc_BF286F: FLdPr Me
  loc_BF2872: MemLdRfVar from_stack_1.global_64
  loc_BF2875: LdPrVar
  loc_BF2877: LateMemCall
  loc_BF287D: LitVarStr var_98, ".DatosEncabezado {"
  loc_BF2882: PopAdLdVar
  loc_BF2883: FLdPr Me
  loc_BF2886: MemLdRfVar from_stack_1.global_64
  loc_BF2889: LdPrVar
  loc_BF288B: LateMemCall
  loc_BF2891: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF2896: PopAdLdVar
  loc_BF2897: FLdPr Me
  loc_BF289A: MemLdRfVar from_stack_1.global_64
  loc_BF289D: LdPrVar
  loc_BF289F: LateMemCall
  loc_BF28A5: LitVarStr var_98, " font-size: 12px;"
  loc_BF28AA: PopAdLdVar
  loc_BF28AB: FLdPr Me
  loc_BF28AE: MemLdRfVar from_stack_1.global_64
  loc_BF28B1: LdPrVar
  loc_BF28B3: LateMemCall
  loc_BF28B9: LitVarStr var_98, "}"
  loc_BF28BE: PopAdLdVar
  loc_BF28BF: FLdPr Me
  loc_BF28C2: MemLdRfVar from_stack_1.global_64
  loc_BF28C5: LdPrVar
  loc_BF28C7: LateMemCall
  loc_BF28CD: LitVarStr var_98, ".DatosEncabezadoGrande {"
  loc_BF28D2: PopAdLdVar
  loc_BF28D3: FLdPr Me
  loc_BF28D6: MemLdRfVar from_stack_1.global_64
  loc_BF28D9: LdPrVar
  loc_BF28DB: LateMemCall
  loc_BF28E1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF28E6: PopAdLdVar
  loc_BF28E7: FLdPr Me
  loc_BF28EA: MemLdRfVar from_stack_1.global_64
  loc_BF28ED: LdPrVar
  loc_BF28EF: LateMemCall
  loc_BF28F5: LitVarStr var_98, " font-size: 16px;"
  loc_BF28FA: PopAdLdVar
  loc_BF28FB: FLdPr Me
  loc_BF28FE: MemLdRfVar from_stack_1.global_64
  loc_BF2901: LdPrVar
  loc_BF2903: LateMemCall
  loc_BF2909: LitVarStr var_98, "}"
  loc_BF290E: PopAdLdVar
  loc_BF290F: FLdPr Me
  loc_BF2912: MemLdRfVar from_stack_1.global_64
  loc_BF2915: LdPrVar
  loc_BF2917: LateMemCall
  loc_BF291D: LitVarStr var_98, ".SubTotal {"
  loc_BF2922: PopAdLdVar
  loc_BF2923: FLdPr Me
  loc_BF2926: MemLdRfVar from_stack_1.global_64
  loc_BF2929: LdPrVar
  loc_BF292B: LateMemCall
  loc_BF2931: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF2936: PopAdLdVar
  loc_BF2937: FLdPr Me
  loc_BF293A: MemLdRfVar from_stack_1.global_64
  loc_BF293D: LdPrVar
  loc_BF293F: LateMemCall
  loc_BF2945: LitVarStr var_98, " font-size: 11px;"
  loc_BF294A: PopAdLdVar
  loc_BF294B: FLdPr Me
  loc_BF294E: MemLdRfVar from_stack_1.global_64
  loc_BF2951: LdPrVar
  loc_BF2953: LateMemCall
  loc_BF2959: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BF295E: PopAdLdVar
  loc_BF295F: FLdPr Me
  loc_BF2962: MemLdRfVar from_stack_1.global_64
  loc_BF2965: LdPrVar
  loc_BF2967: LateMemCall
  loc_BF296D: LitVarStr var_98, "}"
  loc_BF2972: PopAdLdVar
  loc_BF2973: FLdPr Me
  loc_BF2976: MemLdRfVar from_stack_1.global_64
  loc_BF2979: LdPrVar
  loc_BF297B: LateMemCall
  loc_BF2981: LitVarStr var_98, "-->"
  loc_BF2986: PopAdLdVar
  loc_BF2987: FLdPr Me
  loc_BF298A: MemLdRfVar from_stack_1.global_64
  loc_BF298D: LdPrVar
  loc_BF298F: LateMemCall
  loc_BF2995: LitVarStr var_98, "</style>"
  loc_BF299A: PopAdLdVar
  loc_BF299B: FLdPr Me
  loc_BF299E: MemLdRfVar from_stack_1.global_64
  loc_BF29A1: LdPrVar
  loc_BF29A3: LateMemCall
  loc_BF29A9: LitI4 0
  loc_BF29AE: FStStrCopy var_F0
  loc_BF29B1: FLdRfVar var_F0
  loc_BF29B4: LitI4 0
  loc_BF29B9: FStStrCopy var_EC
  loc_BF29BC: FLdRfVar var_EC
  loc_BF29BF: LitI2_Byte 0
  loc_BF29C1: PopTmpLdAd2 var_F2
  loc_BF29C4: FLdPr Me
  loc_BF29C7: MemLdRfVar from_stack_1.global_64
  loc_BF29CA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BF29CF: FFreeStr var_EC = ""
  loc_BF29D6: ExitProcHresult
  loc_BF29D7: LitI2_Byte &H70
End Function

Private Function Proc_212_26_BDE708() 'BDE708
  'Data Table: 4C76E8
  loc_BDDFC0: LitI4 1
  loc_BDDFC5: FLdPr Me
  loc_BDDFC8: MemLdStr global_100
  loc_BDDFCB: AryLock
  loc_BDDFCE: Ary1LdRf
  loc_BDDFCF: FStR4 var_8C
  loc_BDDFD2: LitVarStr var_9C, "<table align=""center"" height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BDDFD7: PopAdLdVar
  loc_BDDFD8: FLdPr Me
  loc_BDDFDB: MemLdRfVar from_stack_1.global_64
  loc_BDDFDE: LdPrVar
  loc_BDDFE0: LateMemCall
  loc_BDDFE6: LitVarStr var_9C, "  <tr valign=""top""><td>"
  loc_BDDFEB: PopAdLdVar
  loc_BDDFEC: FLdPr Me
  loc_BDDFEF: MemLdRfVar from_stack_1.global_64
  loc_BDDFF2: LdPrVar
  loc_BDDFF4: LateMemCall
  loc_BDDFFA: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BDDFFF: PopAdLdVar
  loc_BDE000: FLdPr Me
  loc_BDE003: MemLdRfVar from_stack_1.global_64
  loc_BDE006: LdPrVar
  loc_BDE008: LateMemCall
  loc_BDE00E: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_BDE013: PopAdLdVar
  loc_BDE014: FLdPr Me
  loc_BDE017: MemLdRfVar from_stack_1.global_64
  loc_BDE01A: LdPrVar
  loc_BDE01C: LateMemCall
  loc_BDE022: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BDE025: LitI2_Byte &H5F
  loc_BDE027: CStrUI1
  loc_BDE029: FStStrNoPop var_B0
  loc_BDE02C: ConcatStr
  loc_BDE02D: FStStrNoPop var_B4
  loc_BDE030: LitStr """ height="""
  loc_BDE033: ConcatStr
  loc_BDE034: FStStrNoPop var_B8
  loc_BDE037: LitI2_Byte &H3C
  loc_BDE039: CStrUI1
  loc_BDE03B: FStStrNoPop var_BC
  loc_BDE03E: ConcatStr
  loc_BDE03F: FStStrNoPop var_C0
  loc_BDE042: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_BDE045: ConcatStr
  loc_BDE046: FStStrNoPop var_C4
  loc_BDE049: LitI2_Byte &H3C
  loc_BDE04B: CStrUI1
  loc_BDE04D: FStStrNoPop var_C8
  loc_BDE050: ConcatStr
  loc_BDE051: FStStrNoPop var_CC
  loc_BDE054: LitStr """ height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_BDE057: ConcatStr
  loc_BDE058: FStStrNoPop var_D0
  loc_BDE05B: LitStr "Municipalidad de Guaymallén"
  loc_BDE05E: ConcatStr
  loc_BDE05F: FStStrNoPop var_D4
  loc_BDE062: LitStr "</span><br />"
  loc_BDE065: ConcatStr
  loc_BDE066: CVarStr var_E4
  loc_BDE069: PopAdLdVar
  loc_BDE06A: FLdPr Me
  loc_BDE06D: MemLdRfVar from_stack_1.global_64
  loc_BDE070: LdPrVar
  loc_BDE072: LateMemCall
  loc_BDE078: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BDE08F: FFree1Var var_E4 = ""
  loc_BDE092: LitStr "    "
  loc_BDE095: LitStr "Dirección de Rentas"
  loc_BDE098: ConcatStr
  loc_BDE099: FStStrNoPop var_B0
  loc_BDE09C: LitStr "<br>"
  loc_BDE09F: ConcatStr
  loc_BDE0A0: CVarStr var_E4
  loc_BDE0A3: PopAdLdVar
  loc_BDE0A4: FLdPr Me
  loc_BDE0A7: MemLdRfVar from_stack_1.global_64
  loc_BDE0AA: LdPrVar
  loc_BDE0AC: LateMemCall
  loc_BDE0B2: FFree1Str var_B0
  loc_BDE0B5: FFree1Var var_E4 = ""
  loc_BDE0B8: LitStr "    "
  loc_BDE0BB: LitStr "Libertad 720 - Villa Nueva"
  loc_BDE0BE: ConcatStr
  loc_BDE0BF: FStStrNoPop var_B0
  loc_BDE0C2: LitStr "<br>"
  loc_BDE0C5: ConcatStr
  loc_BDE0C6: CVarStr var_E4
  loc_BDE0C9: PopAdLdVar
  loc_BDE0CA: FLdPr Me
  loc_BDE0CD: MemLdRfVar from_stack_1.global_64
  loc_BDE0D0: LdPrVar
  loc_BDE0D2: LateMemCall
  loc_BDE0D8: FFree1Str var_B0
  loc_BDE0DB: FFree1Var var_E4 = ""
  loc_BDE0DE: LitStr "    "
  loc_BDE0E1: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BDE0E4: ConcatStr
  loc_BDE0E5: FStStrNoPop var_B0
  loc_BDE0E8: LitStr "<br>"
  loc_BDE0EB: ConcatStr
  loc_BDE0EC: CVarStr var_E4
  loc_BDE0EF: PopAdLdVar
  loc_BDE0F0: FLdPr Me
  loc_BDE0F3: MemLdRfVar from_stack_1.global_64
  loc_BDE0F6: LdPrVar
  loc_BDE0F8: LateMemCall
  loc_BDE0FE: FFree1Str var_B0
  loc_BDE101: FFree1Var var_E4 = ""
  loc_BDE104: LitStr "    "
  loc_BDE107: LitStr "C.U.I.T.: "
  loc_BDE10A: ConcatStr
  loc_BDE10B: FStStrNoPop var_B0
  loc_BDE10E: LitStr "30-99914707-7"
  loc_BDE111: ConcatStr
  loc_BDE112: FStStrNoPop var_B4
  loc_BDE115: LitStr "<br>"
  loc_BDE118: ConcatStr
  loc_BDE119: CVarStr var_E4
  loc_BDE11C: PopAdLdVar
  loc_BDE11D: FLdPr Me
  loc_BDE120: MemLdRfVar from_stack_1.global_64
  loc_BDE123: LdPrVar
  loc_BDE125: LateMemCall
  loc_BDE12B: FFreeStr var_B0 = ""
  loc_BDE132: FFree1Var var_E4 = ""
  loc_BDE135: LitStr " <div align=""right""><em>"
  loc_BDE138: LitStr "&nbsp;"
  loc_BDE13B: ConcatStr
  loc_BDE13C: FStStrNoPop var_B0
  loc_BDE13F: LitStr "</em></div></td>"
  loc_BDE142: ConcatStr
  loc_BDE143: CVarStr var_E4
  loc_BDE146: PopAdLdVar
  loc_BDE147: FLdPr Me
  loc_BDE14A: MemLdRfVar from_stack_1.global_64
  loc_BDE14D: LdPrVar
  loc_BDE14F: LateMemCall
  loc_BDE155: FFree1Str var_B0
  loc_BDE158: FFree1Var var_E4 = ""
  loc_BDE15B: LitVarStr var_9C, "  </tr>"
  loc_BDE160: PopAdLdVar
  loc_BDE161: FLdPr Me
  loc_BDE164: MemLdRfVar from_stack_1.global_64
  loc_BDE167: LdPrVar
  loc_BDE169: LateMemCall
  loc_BDE16F: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_BDE174: PopAdLdVar
  loc_BDE175: FLdPr Me
  loc_BDE178: MemLdRfVar from_stack_1.global_64
  loc_BDE17B: LdPrVar
  loc_BDE17D: LateMemCall
  loc_BDE183: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_BDE188: PopAdLdVar
  loc_BDE189: FLdPr Me
  loc_BDE18C: MemLdRfVar from_stack_1.global_64
  loc_BDE18F: LdPrVar
  loc_BDE191: LateMemCall
  loc_BDE197: LitStr "    <td><strong>FACILIDAD DE PAGO - "
  loc_BDE19A: FLdPr Me
  loc_BDE19D: VCallAd Control_ID_CodiFapaMsk
  loc_BDE1A0: FStAdFunc var_E8
  loc_BDE1A3: FLdPr var_E8
  loc_BDE1A6: LateIdLdVar var_E4 DispID_0 0
  loc_BDE1AD: CStrVarTmp
  loc_BDE1AE: FStStrNoPop var_B0
  loc_BDE1B1: ConcatStr
  loc_BDE1B2: FStStrNoPop var_B4
  loc_BDE1B5: LitStr "</strong></td>"
  loc_BDE1B8: ConcatStr
  loc_BDE1B9: CVarStr var_F8
  loc_BDE1BC: PopAdLdVar
  loc_BDE1BD: FLdPr Me
  loc_BDE1C0: MemLdRfVar from_stack_1.global_64
  loc_BDE1C3: LdPrVar
  loc_BDE1C5: LateMemCall
  loc_BDE1CB: FFreeStr var_B0 = ""
  loc_BDE1D2: FFree1Ad var_E8
  loc_BDE1D5: FFreeVar var_E4 = ""
  loc_BDE1DC: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_BDE1E1: PopAdLdVar
  loc_BDE1E2: FLdPr Me
  loc_BDE1E5: MemLdRfVar from_stack_1.global_64
  loc_BDE1E8: LdPrVar
  loc_BDE1EA: LateMemCall
  loc_BDE1F0: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_BDE1F3: LitI4 1
  loc_BDE1F8: FLdPr Me
  loc_BDE1FB: MemLdStr global_104
  loc_BDE1FE: Ary1LdPr
  loc_BDE1FF: MemLdStr global_4
  loc_BDE202: ConcatStr
  loc_BDE203: FStStrNoPop var_B0
  loc_BDE206: LitStr "/"
  loc_BDE209: ConcatStr
  loc_BDE20A: FStStrNoPop var_B4
  loc_BDE20D: LitI4 1
  loc_BDE212: FLdPr Me
  loc_BDE215: MemLdStr global_104
  loc_BDE218: Ary1LdPr
  loc_BDE219: MemLdStr global_8
  loc_BDE21C: ConcatStr
  loc_BDE21D: FStStrNoPop var_B8
  loc_BDE220: LitStr "</strong></td>"
  loc_BDE223: ConcatStr
  loc_BDE224: CVarStr var_E4
  loc_BDE227: PopAdLdVar
  loc_BDE228: FLdPr Me
  loc_BDE22B: MemLdRfVar from_stack_1.global_64
  loc_BDE22E: LdPrVar
  loc_BDE230: LateMemCall
  loc_BDE236: FFreeStr var_B0 = "": var_B4 = ""
  loc_BDE23F: FFree1Var var_E4 = ""
  loc_BDE242: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_BDE247: PopAdLdVar
  loc_BDE248: FLdPr Me
  loc_BDE24B: MemLdRfVar from_stack_1.global_64
  loc_BDE24E: LdPrVar
  loc_BDE250: LateMemCall
  loc_BDE256: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_BDE259: LitI4 1
  loc_BDE25E: FLdPr Me
  loc_BDE261: MemLdStr global_104
  loc_BDE264: Ary1LdPr
  loc_BDE265: MemLdStr global_12
  loc_BDE268: ConcatStr
  loc_BDE269: FStStrNoPop var_B0
  loc_BDE26C: LitStr "</strong></td>"
  loc_BDE26F: ConcatStr
  loc_BDE270: CVarStr var_E4
  loc_BDE273: PopAdLdVar
  loc_BDE274: FLdPr Me
  loc_BDE277: MemLdRfVar from_stack_1.global_64
  loc_BDE27A: LdPrVar
  loc_BDE27C: LateMemCall
  loc_BDE282: FFree1Str var_B0
  loc_BDE285: FFree1Var var_E4 = ""
  loc_BDE288: LitVarStr var_9C, "  </tr>"
  loc_BDE28D: PopAdLdVar
  loc_BDE28E: FLdPr Me
  loc_BDE291: MemLdRfVar from_stack_1.global_64
  loc_BDE294: LdPrVar
  loc_BDE296: LateMemCall
  loc_BDE29C: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_BDE2A1: PopAdLdVar
  loc_BDE2A2: FLdPr Me
  loc_BDE2A5: MemLdRfVar from_stack_1.global_64
  loc_BDE2A8: LdPrVar
  loc_BDE2AA: LateMemCall
  loc_BDE2B0: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_BDE2B5: PopAdLdVar
  loc_BDE2B6: FLdPr Me
  loc_BDE2B9: MemLdRfVar from_stack_1.global_64
  loc_BDE2BC: LdPrVar
  loc_BDE2BE: LateMemCall
  loc_BDE2C4: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_BDE2C7: LitI4 1
  loc_BDE2CC: FLdPr Me
  loc_BDE2CF: MemLdStr global_100
  loc_BDE2D2: Ary1LdPr
  loc_BDE2D3: MemLdStr global_4
  loc_BDE2D6: ConcatStr
  loc_BDE2D7: FStStrNoPop var_B0
  loc_BDE2DA: LitStr "</span> "
  loc_BDE2DD: ConcatStr
  loc_BDE2DE: FStStrNoPop var_B4
  loc_BDE2E1: LitI4 1
  loc_BDE2E6: FLdPr Me
  loc_BDE2E9: MemLdStr global_100
  loc_BDE2EC: Ary1LdPr
  loc_BDE2ED: MemLdStr global_0
  loc_BDE2F0: ConcatStr
  loc_BDE2F1: FStStrNoPop var_B8
  loc_BDE2F4: LitStr "<br>"
  loc_BDE2F7: ConcatStr
  loc_BDE2F8: CVarStr var_E4
  loc_BDE2FB: PopAdLdVar
  loc_BDE2FC: FLdPr Me
  loc_BDE2FF: MemLdRfVar from_stack_1.global_64
  loc_BDE302: LdPrVar
  loc_BDE304: LateMemCall
  loc_BDE30A: FFreeStr var_B0 = "": var_B4 = ""
  loc_BDE313: FFree1Var var_E4 = ""
  loc_BDE316: FMemLdR4 var_8C(40)
  loc_BDE31B: LitStr vbNullString
  loc_BDE31E: NeStr
  loc_BDE320: BranchF loc_BDE34B
  loc_BDE323: LitStr "      Vínculo: "
  loc_BDE326: FMemLdR4 var_8C(40)
  loc_BDE32B: ConcatStr
  loc_BDE32C: FStStrNoPop var_B0
  loc_BDE32F: LitStr "<br>"
  loc_BDE332: ConcatStr
  loc_BDE333: CVarStr var_E4
  loc_BDE336: PopAdLdVar
  loc_BDE337: FLdPr Me
  loc_BDE33A: MemLdRfVar from_stack_1.global_64
  loc_BDE33D: LdPrVar
  loc_BDE33F: LateMemCall
  loc_BDE345: FFree1Str var_B0
  loc_BDE348: FFree1Var var_E4 = ""
  loc_BDE34B: LitStr "      "
  loc_BDE34E: LitI4 1
  loc_BDE353: FLdPr Me
  loc_BDE356: MemLdStr global_100
  loc_BDE359: Ary1LdPr
  loc_BDE35A: MemLdStr global_8
  loc_BDE35D: ConcatStr
  loc_BDE35E: FStStrNoPop var_B0
  loc_BDE361: LitStr " "
  loc_BDE364: ConcatStr
  loc_BDE365: CVarStr var_11C
  loc_BDE368: LitVarStr var_10C, vbNullString
  loc_BDE36D: FStVarCopyObj var_E4
  loc_BDE370: FLdRfVar var_E4
  loc_BDE373: LitI4 1
  loc_BDE378: FLdPr Me
  loc_BDE37B: MemLdStr global_100
  loc_BDE37E: AryLock
  loc_BDE381: Ary1LdPr
  loc_BDE382: MemLdRfVar from_stack_1.global_12
  loc_BDE385: CVarRef
  loc_BDE38A: LitI4 1
  loc_BDE38F: FLdPr Me
  loc_BDE392: MemLdStr global_100
  loc_BDE395: Ary1LdPr
  loc_BDE396: MemLdStr global_12
  loc_BDE399: LitStr vbNullString
  loc_BDE39C: NeStr
  loc_BDE39E: CVarBoolI2 var_9C
  loc_BDE3A2: FLdRfVar var_F8
  loc_BDE3A5: ImpAdCallFPR4  = IIf(, , )
  loc_BDE3AA: AryUnlock
  loc_BDE3AD: FLdRfVar var_F8
  loc_BDE3B0: ConcatVar var_12C
  loc_BDE3B4: LitVarStr var_13C, " "
  loc_BDE3B9: ConcatVar var_14C
  loc_BDE3BD: LitI4 1
  loc_BDE3C2: FLdPr Me
  loc_BDE3C5: MemLdStr global_100
  loc_BDE3C8: Ary1LdPr
  loc_BDE3C9: MemLdStr global_28
  loc_BDE3CC: CVarStr var_15C
  loc_BDE3CF: ConcatVar var_16C
  loc_BDE3D3: LitVarStr var_17C, "<br>"
  loc_BDE3D8: ConcatVar var_18C
  loc_BDE3DC: LitI4 1
  loc_BDE3E1: FLdPr Me
  loc_BDE3E4: MemLdStr global_100
  loc_BDE3E7: Ary1LdPr
  loc_BDE3E8: MemLdStr global_32
  loc_BDE3EB: CVarStr var_19C
  loc_BDE3EE: ConcatVar var_1AC
  loc_BDE3F2: LitVarStr var_1BC, " ("
  loc_BDE3F7: ConcatVar var_1CC
  loc_BDE3FB: LitI4 1
  loc_BDE400: FLdPr Me
  loc_BDE403: MemLdStr global_100
  loc_BDE406: Ary1LdPr
  loc_BDE407: MemLdStr global_36
  loc_BDE40A: CVarStr var_1DC
  loc_BDE40D: ConcatVar var_1EC
  loc_BDE411: LitVarStr var_1FC, ")</strong></td>"
  loc_BDE416: ConcatVar var_20C
  loc_BDE41A: PopAdLdVar
  loc_BDE41B: FLdPr Me
  loc_BDE41E: MemLdRfVar from_stack_1.global_64
  loc_BDE421: LdPrVar
  loc_BDE423: LateMemCall
  loc_BDE429: FFree1Str var_B0
  loc_BDE42C: FFreeVar var_9C = "": var_E4 = "": var_11C = "": var_F8 = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1EC = ""
  loc_BDE447: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_BDE44C: PopAdLdVar
  loc_BDE44D: FLdPr Me
  loc_BDE450: MemLdRfVar from_stack_1.global_64
  loc_BDE453: LdPrVar
  loc_BDE455: LateMemCall
  loc_BDE45B: LitStr "    <td colspan=""3""><strong>"
  loc_BDE45E: FLdRfVar var_B0
  loc_BDE461: FLdPr Me
  loc_BDE464: VCallAd Control_ID_CodiOficCbo
  loc_BDE467: FStAdFunc var_E8
  loc_BDE46A: FLdPr var_E8
  loc_BDE46D:  = Me.Text
  loc_BDE472: ILdRf var_B0
  loc_BDE475: ConcatStr
  loc_BDE476: FStStrNoPop var_B4
  loc_BDE479: LitStr " - Cuenta: <span class=""NormalBloqueFinGrande"">"
  loc_BDE47C: ConcatStr
  loc_BDE47D: FStStrNoPop var_BC
  loc_BDE480: FLdRfVar var_B8
  loc_BDE483: FLdPr Me
  loc_BDE486: VCallAd Control_ID_CuenCtctTxt
  loc_BDE489: FStAdFunc var_220
  loc_BDE48C: FLdPr var_220
  loc_BDE48F:  = Me.Text
  loc_BDE494: ILdRf var_B8
  loc_BDE497: ConcatStr
  loc_BDE498: FStStrNoPop var_C0
  loc_BDE49B: LitStr "</span></strong><br>"
  loc_BDE49E: ConcatStr
  loc_BDE49F: CVarStr var_E4
  loc_BDE4A2: PopAdLdVar
  loc_BDE4A3: FLdPr Me
  loc_BDE4A6: MemLdRfVar from_stack_1.global_64
  loc_BDE4A9: LdPrVar
  loc_BDE4AB: LateMemCall
  loc_BDE4B1: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = ""
  loc_BDE4BE: FFreeAd var_E8 = ""
  loc_BDE4C5: FFree1Var var_E4 = ""
  loc_BDE4C8: LitStr "          DOM. REAL&nbsp;&nbsp;&nbsp;: <strong>"
  loc_BDE4CB: FMemLdR4 var_8C(80)
  loc_BDE4D0: ConcatStr
  loc_BDE4D1: FStStrNoPop var_B0
  loc_BDE4D4: LitStr " "
  loc_BDE4D7: ConcatStr
  loc_BDE4D8: FStStrNoPop var_B4
  loc_BDE4DB: FMemLdR4 var_8C(84)
  loc_BDE4E0: ConcatStr
  loc_BDE4E1: FStStrNoPop var_B8
  loc_BDE4E4: LitStr " "
  loc_BDE4E7: ConcatStr
  loc_BDE4E8: FStStrNoPop var_BC
  loc_BDE4EB: FMemLdR4 var_8C(88)
  loc_BDE4F0: ConcatStr
  loc_BDE4F1: FStStrNoPop var_C0
  loc_BDE4F4: LitStr " "
  loc_BDE4F7: ConcatStr
  loc_BDE4F8: CVarStr var_12C
  loc_BDE4FB: LitVarStr var_AC, vbNullString
  loc_BDE500: FStVarCopyObj var_F8
  loc_BDE503: FLdRfVar var_F8
  loc_BDE506: LitStr "Bº "
  loc_BDE509: FMemLdR4 var_8C(96)
  loc_BDE50E: ConcatStr
  loc_BDE50F: FStStrNoPop var_C4
  loc_BDE512: LitStr " "
  loc_BDE515: ConcatStr
  loc_BDE516: FStStrNoPop var_C8
  loc_BDE519: FMemLdR4 var_8C(100)
  loc_BDE51E: ConcatStr
  loc_BDE51F: FStStrNoPop var_CC
  loc_BDE522: LitStr " "
  loc_BDE525: ConcatStr
  loc_BDE526: FStStrNoPop var_D0
  loc_BDE529: FMemLdR4 var_8C(104)
  loc_BDE52E: ConcatStr
  loc_BDE52F: CVarStr var_E4
  loc_BDE532: FMemLdR4 var_8C(92)
  loc_BDE537: LitStr "0"
  loc_BDE53A: NeStr
  loc_BDE53C: CVarBoolI2 var_9C
  loc_BDE540: FLdRfVar var_11C
  loc_BDE543: ImpAdCallFPR4  = IIf(, , )
  loc_BDE548: FLdRfVar var_11C
  loc_BDE54B: ConcatVar var_14C
  loc_BDE54F: LitVarStr var_10C, " "
  loc_BDE554: ConcatVar var_16C
  loc_BDE558: FMemLdR4 var_8C(108)
  loc_BDE55D: CVarStr var_13C
  loc_BDE560: ConcatVar var_18C
  loc_BDE564: LitVarStr var_15C, "</strong></td>"
  loc_BDE569: ConcatVar var_1AC
  loc_BDE56D: PopAdLdVar
  loc_BDE56E: FLdPr Me
  loc_BDE571: MemLdRfVar from_stack_1.global_64
  loc_BDE574: LdPrVar
  loc_BDE576: LateMemCall
  loc_BDE57C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_BDE591: FFreeVar var_9C = "": var_E4 = "": var_F8 = "": var_12C = "": var_11C = "": var_14C = "": var_16C = "": var_18C = ""
  loc_BDE5A6: LitVarStr var_9C, "  </tr>"
  loc_BDE5AB: PopAdLdVar
  loc_BDE5AC: FLdPr Me
  loc_BDE5AF: MemLdRfVar from_stack_1.global_64
  loc_BDE5B2: LdPrVar
  loc_BDE5B4: LateMemCall
  loc_BDE5BA: LitVarStr var_9C, "</table>"
  loc_BDE5BF: PopAdLdVar
  loc_BDE5C0: FLdPr Me
  loc_BDE5C3: MemLdRfVar from_stack_1.global_64
  loc_BDE5C6: LdPrVar
  loc_BDE5C8: LateMemCall
  loc_BDE5CE: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BDE5D3: PopAdLdVar
  loc_BDE5D4: FLdPr Me
  loc_BDE5D7: MemLdRfVar from_stack_1.global_64
  loc_BDE5DA: LdPrVar
  loc_BDE5DC: LateMemCall
  loc_BDE5E2: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDE5E7: PopAdLdVar
  loc_BDE5E8: FLdPr Me
  loc_BDE5EB: MemLdRfVar from_stack_1.global_64
  loc_BDE5EE: LdPrVar
  loc_BDE5F0: LateMemCall
  loc_BDE5F6: LitVarStr var_9C, "    <td>CUOTA</td>"
  loc_BDE5FB: PopAdLdVar
  loc_BDE5FC: FLdPr Me
  loc_BDE5FF: MemLdRfVar from_stack_1.global_64
  loc_BDE602: LdPrVar
  loc_BDE604: LateMemCall
  loc_BDE60A: LitVarStr var_9C, "    <td>VENCIMIENTO</td>"
  loc_BDE60F: PopAdLdVar
  loc_BDE610: FLdPr Me
  loc_BDE613: MemLdRfVar from_stack_1.global_64
  loc_BDE616: LdPrVar
  loc_BDE618: LateMemCall
  loc_BDE61E: LitVarStr var_9C, "    <td width=""5" & Chr(37) & """>PERIODO</td>"
  loc_BDE623: PopAdLdVar
  loc_BDE624: FLdPr Me
  loc_BDE627: MemLdRfVar from_stack_1.global_64
  loc_BDE62A: LdPrVar
  loc_BDE62C: LateMemCall
  loc_BDE632: LitVarStr var_9C, "    <td width=""5" & Chr(37) & """>BIMESTRE</td>"
  loc_BDE637: PopAdLdVar
  loc_BDE638: FLdPr Me
  loc_BDE63B: MemLdRfVar from_stack_1.global_64
  loc_BDE63E: LdPrVar
  loc_BDE640: LateMemCall
  loc_BDE646: LitVarStr var_9C, "    <td width=""5" & Chr(37) & """>CAPITAL</td>"
  loc_BDE64B: PopAdLdVar
  loc_BDE64C: FLdPr Me
  loc_BDE64F: MemLdRfVar from_stack_1.global_64
  loc_BDE652: LdPrVar
  loc_BDE654: LateMemCall
  loc_BDE65A: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BDE65F: PopAdLdVar
  loc_BDE660: FLdPr Me
  loc_BDE663: MemLdRfVar from_stack_1.global_64
  loc_BDE666: LdPrVar
  loc_BDE668: LateMemCall
  loc_BDE66E: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. CAPI.</td>"
  loc_BDE673: PopAdLdVar
  loc_BDE674: FLdPr Me
  loc_BDE677: MemLdRfVar from_stack_1.global_64
  loc_BDE67A: LdPrVar
  loc_BDE67C: LateMemCall
  loc_BDE682: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_BDE687: PopAdLdVar
  loc_BDE688: FLdPr Me
  loc_BDE68B: MemLdRfVar from_stack_1.global_64
  loc_BDE68E: LdPrVar
  loc_BDE690: LateMemCall
  loc_BDE696: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. RECA.</td>"
  loc_BDE69B: PopAdLdVar
  loc_BDE69C: FLdPr Me
  loc_BDE69F: MemLdRfVar from_stack_1.global_64
  loc_BDE6A2: LdPrVar
  loc_BDE6A4: LateMemCall
  loc_BDE6AA: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_BDE6AF: PopAdLdVar
  loc_BDE6B0: FLdPr Me
  loc_BDE6B3: MemLdRfVar from_stack_1.global_64
  loc_BDE6B6: LdPrVar
  loc_BDE6B8: LateMemCall
  loc_BDE6BE: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>APREMIO</td>"
  loc_BDE6C3: PopAdLdVar
  loc_BDE6C4: FLdPr Me
  loc_BDE6C7: MemLdRfVar from_stack_1.global_64
  loc_BDE6CA: LdPrVar
  loc_BDE6CC: LateMemCall
  loc_BDE6D2: LitVarStr var_9C, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_BDE6D7: PopAdLdVar
  loc_BDE6D8: FLdPr Me
  loc_BDE6DB: MemLdRfVar from_stack_1.global_64
  loc_BDE6DE: LdPrVar
  loc_BDE6E0: LateMemCall
  loc_BDE6E6: LitVarStr var_9C, "  </tr>"
  loc_BDE6EB: PopAdLdVar
  loc_BDE6EC: FLdPr Me
  loc_BDE6EF: MemLdRfVar from_stack_1.global_64
  loc_BDE6F2: LdPrVar
  loc_BDE6F4: LateMemCall
  loc_BDE6FA: LitI4 0
  loc_BDE6FF: FStR4 var_8C
  loc_BDE702: AryUnlock
  loc_BDE705: ExitProcHresult
  loc_BDE706: Ary1StCy
End Function

Private Function Proc_212_27_BE16EC() 'BE16EC
  'Data Table: 4C76E8
  loc_BE0F48: LitI2_Byte 1
  loc_BE0F4A: FLdPr Me
  loc_BE0F4D: MemLdRfVar from_stack_1.global_122
  loc_BE0F50: FLdPr Me
  loc_BE0F53: MemLdI2 global_118
  loc_BE0F56: CI4UI1
  loc_BE0F57: LitI4 1
  loc_BE0F5C: FLdPr Me
  loc_BE0F5F: MemLdStr global_100
  loc_BE0F62: Ary1LdPr
  loc_BE0F63: MemLdStr global_112
  loc_BE0F66: Ary1LdPr
  loc_BE0F67: MemLdStr global_0
  loc_BE0F6A: LitI2_Byte 1
  loc_BE0F6C: FnUBound
  loc_BE0F6E: CI2I4
  loc_BE0F6F: ForI2 var_88
  loc_BE0F75: LitI2_Byte 1
  loc_BE0F77: FLdPr Me
  loc_BE0F7A: MemLdRfVar from_stack_1.global_124
  loc_BE0F7D: FLdPr Me
  loc_BE0F80: MemLdI2 global_122
  loc_BE0F83: CI4UI1
  loc_BE0F84: FLdPr Me
  loc_BE0F87: MemLdI2 global_118
  loc_BE0F8A: CI4UI1
  loc_BE0F8B: LitI4 1
  loc_BE0F90: FLdPr Me
  loc_BE0F93: MemLdStr global_100
  loc_BE0F96: Ary1LdPr
  loc_BE0F97: MemLdStr global_112
  loc_BE0F9A: Ary1LdPr
  loc_BE0F9B: MemLdStr global_0
  loc_BE0F9E: Ary1LdPr
  loc_BE0F9F: MemLdStr global_40
  loc_BE0FA2: LitI2_Byte 1
  loc_BE0FA4: FnUBound
  loc_BE0FA6: CI2I4
  loc_BE0FA7: ForI2 var_8C
  loc_BE0FAD: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BE0FB2: PopAdLdVar
  loc_BE0FB3: FLdPr Me
  loc_BE0FB6: MemLdRfVar from_stack_1.global_64
  loc_BE0FB9: LdPrVar
  loc_BE0FBB: LateMemCall
  loc_BE0FC1: FLdPr Me
  loc_BE0FC4: MemLdI2 global_122
  loc_BE0FC7: CI4UI1
  loc_BE0FC8: FLdPr Me
  loc_BE0FCB: MemLdI2 global_118
  loc_BE0FCE: CI4UI1
  loc_BE0FCF: LitI4 1
  loc_BE0FD4: FLdPr Me
  loc_BE0FD7: MemLdStr global_100
  loc_BE0FDA: AryLock
  loc_BE0FDD: Ary1LdPr
  loc_BE0FDE: MemLdStr global_112
  loc_BE0FE1: AryLock
  loc_BE0FE4: Ary1LdPr
  loc_BE0FE5: MemLdStr global_0
  loc_BE0FE8: AryLock
  loc_BE0FEB: Ary1LdRf
  loc_BE0FEC: FStR4 var_BC
  loc_BE0FEF: FLdPr Me
  loc_BE0FF2: MemLdI2 global_124
  loc_BE0FF5: LitI2_Byte 1
  loc_BE0FF7: EqI2
  loc_BE0FF8: BranchF loc_BE1079
  loc_BE0FFB: LitStr vbNullString
  loc_BE0FFE: LitI2_Byte 0
  loc_BE1000: FMemLdR4 var_BC(40)
  loc_BE1005: LitI2_Byte 1
  loc_BE1007: FnUBound
  loc_BE1009: CI2I4
  loc_BE100A: LitI2_Byte 0
  loc_BE100C: LitStr "center"
  loc_BE100F: FMemLdR4 var_BC(0)
  loc_BE1014: LitStr "/"
  loc_BE1017: ConcatStr
  loc_BE1018: FStStrNoPop var_C0
  loc_BE101B: FLdPr Me
  loc_BE101E: MemLdStr global_112
  loc_BE1021: ConcatStr
  loc_BE1022: FStStrNoPop var_C4
  loc_BE1025: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE102A: CVarStr var_D4
  loc_BE102D: PopAdLdVar
  loc_BE102E: FLdPr Me
  loc_BE1031: MemLdRfVar from_stack_1.global_64
  loc_BE1034: LdPrVar
  loc_BE1036: LateMemCall
  loc_BE103C: FFreeStr var_C0 = ""
  loc_BE1043: FFree1Var var_D4 = ""
  loc_BE1046: LitStr vbNullString
  loc_BE1049: LitI2_Byte 0
  loc_BE104B: FMemLdR4 var_BC(40)
  loc_BE1050: LitI2_Byte 1
  loc_BE1052: FnUBound
  loc_BE1054: CI2I4
  loc_BE1055: LitI2_Byte 0
  loc_BE1057: LitStr "center"
  loc_BE105A: FMemLdR4 var_BC(4)
  loc_BE105F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE1064: CVarStr var_D4
  loc_BE1067: PopAdLdVar
  loc_BE1068: FLdPr Me
  loc_BE106B: MemLdRfVar from_stack_1.global_64
  loc_BE106E: LdPrVar
  loc_BE1070: LateMemCall
  loc_BE1076: FFree1Var var_D4 = ""
  loc_BE1079: FLdPr Me
  loc_BE107C: MemLdI2 global_124
  loc_BE107F: CI4UI1
  loc_BE1080: FMemLdR4 var_BC(40)
  loc_BE1085: AryLock
  loc_BE1088: Ary1LdRf
  loc_BE1089: FStR4 var_DC
  loc_BE108C: LitStr vbNullString
  loc_BE108F: LitI2_Byte 0
  loc_BE1091: LitI2_Byte 0
  loc_BE1093: LitI2_Byte 0
  loc_BE1095: LitStr "right"
  loc_BE1098: FMemLdR4 var_DC(0)
  loc_BE109D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE10A2: CVarStr var_D4
  loc_BE10A5: PopAdLdVar
  loc_BE10A6: FLdPr Me
  loc_BE10A9: MemLdRfVar from_stack_1.global_64
  loc_BE10AC: LdPrVar
  loc_BE10AE: LateMemCall
  loc_BE10B4: FFree1Var var_D4 = ""
  loc_BE10B7: LitStr vbNullString
  loc_BE10BA: LitI2_Byte 0
  loc_BE10BC: LitI2_Byte 0
  loc_BE10BE: LitI2_Byte 0
  loc_BE10C0: LitStr "right"
  loc_BE10C3: FMemLdR4 var_DC(4)
  loc_BE10C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE10CD: CVarStr var_D4
  loc_BE10D0: PopAdLdVar
  loc_BE10D1: FLdPr Me
  loc_BE10D4: MemLdRfVar from_stack_1.global_64
  loc_BE10D7: LdPrVar
  loc_BE10D9: LateMemCall
  loc_BE10DF: FFree1Var var_D4 = ""
  loc_BE10E2: LitStr vbNullString
  loc_BE10E5: LitI2_Byte 0
  loc_BE10E7: LitI2_Byte 0
  loc_BE10E9: LitI2_Byte 0
  loc_BE10EB: LitStr "right"
  loc_BE10EE: FMemLdR4 var_DC(8)
  loc_BE10F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE10F8: CVarStr var_D4
  loc_BE10FB: PopAdLdVar
  loc_BE10FC: FLdPr Me
  loc_BE10FF: MemLdRfVar from_stack_1.global_64
  loc_BE1102: LdPrVar
  loc_BE1104: LateMemCall
  loc_BE110A: FFree1Var var_D4 = ""
  loc_BE110D: LitI4 0
  loc_BE1112: FStR4 var_DC
  loc_BE1115: AryUnlock
  loc_BE1118: FLdPr Me
  loc_BE111B: MemLdI2 global_124
  loc_BE111E: LitI2_Byte 1
  loc_BE1120: EqI2
  loc_BE1121: BranchF loc_BE1411
  loc_BE1124: FMemLdRf unk_4C762D
  loc_BE1129: CVarRef
  loc_BE112E: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE1133: FStVarCopyObj var_D4
  loc_BE1136: FLdRfVar var_D4
  loc_BE1139: FMemLdR4 var_BC(8)
  loc_BE113E: LitStr "0,00"
  loc_BE1141: EqStr
  loc_BE1143: CVarBoolI2 var_9C
  loc_BE1147: FLdRfVar var_FC
  loc_BE114A: ImpAdCallFPR4  = IIf(, , )
  loc_BE114F: LitStr vbNullString
  loc_BE1152: LitI2_Byte 0
  loc_BE1154: FMemLdR4 var_BC(40)
  loc_BE1159: LitI2_Byte 1
  loc_BE115B: FnUBound
  loc_BE115D: CI2I4
  loc_BE115E: LitI2_Byte 0
  loc_BE1160: LitStr "right"
  loc_BE1163: FLdRfVar var_FC
  loc_BE1166: CStrVarVal var_C0
  loc_BE116A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE116F: CVarStr var_10C
  loc_BE1172: PopAdLdVar
  loc_BE1173: FLdPr Me
  loc_BE1176: MemLdRfVar from_stack_1.global_64
  loc_BE1179: LdPrVar
  loc_BE117B: LateMemCall
  loc_BE1181: FFree1Str var_C0
  loc_BE1184: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE118F: FMemLdRf unk_4C762D
  loc_BE1194: CVarRef
  loc_BE1199: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE119E: FStVarCopyObj var_D4
  loc_BE11A1: FLdRfVar var_D4
  loc_BE11A4: FMemLdR4 var_BC(12)
  loc_BE11A9: LitStr "0,00"
  loc_BE11AC: EqStr
  loc_BE11AE: CVarBoolI2 var_9C
  loc_BE11B2: FLdRfVar var_FC
  loc_BE11B5: ImpAdCallFPR4  = IIf(, , )
  loc_BE11BA: LitStr vbNullString
  loc_BE11BD: LitI2_Byte 0
  loc_BE11BF: FMemLdR4 var_BC(40)
  loc_BE11C4: LitI2_Byte 1
  loc_BE11C6: FnUBound
  loc_BE11C8: CI2I4
  loc_BE11C9: LitI2_Byte 0
  loc_BE11CB: LitStr "right"
  loc_BE11CE: FLdRfVar var_FC
  loc_BE11D1: CStrVarVal var_C0
  loc_BE11D5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE11DA: CVarStr var_10C
  loc_BE11DD: PopAdLdVar
  loc_BE11DE: FLdPr Me
  loc_BE11E1: MemLdRfVar from_stack_1.global_64
  loc_BE11E4: LdPrVar
  loc_BE11E6: LateMemCall
  loc_BE11EC: FFree1Str var_C0
  loc_BE11EF: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE11FA: FMemLdRf unk_4C762D
  loc_BE11FF: CVarRef
  loc_BE1204: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE1209: FStVarCopyObj var_D4
  loc_BE120C: FLdRfVar var_D4
  loc_BE120F: FMemLdR4 var_BC(16)
  loc_BE1214: LitStr "0,00"
  loc_BE1217: EqStr
  loc_BE1219: CVarBoolI2 var_9C
  loc_BE121D: FLdRfVar var_FC
  loc_BE1220: ImpAdCallFPR4  = IIf(, , )
  loc_BE1225: LitStr vbNullString
  loc_BE1228: LitI2_Byte 0
  loc_BE122A: FMemLdR4 var_BC(40)
  loc_BE122F: LitI2_Byte 1
  loc_BE1231: FnUBound
  loc_BE1233: CI2I4
  loc_BE1234: LitI2_Byte 0
  loc_BE1236: LitStr "right"
  loc_BE1239: FLdRfVar var_FC
  loc_BE123C: CStrVarVal var_C0
  loc_BE1240: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE1245: CVarStr var_10C
  loc_BE1248: PopAdLdVar
  loc_BE1249: FLdPr Me
  loc_BE124C: MemLdRfVar from_stack_1.global_64
  loc_BE124F: LdPrVar
  loc_BE1251: LateMemCall
  loc_BE1257: FFree1Str var_C0
  loc_BE125A: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE1265: FMemLdRf unk_4C762D
  loc_BE126A: CVarRef
  loc_BE126F: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE1274: FStVarCopyObj var_D4
  loc_BE1277: FLdRfVar var_D4
  loc_BE127A: FMemLdR4 var_BC(20)
  loc_BE127F: LitStr "0,00"
  loc_BE1282: EqStr
  loc_BE1284: CVarBoolI2 var_9C
  loc_BE1288: FLdRfVar var_FC
  loc_BE128B: ImpAdCallFPR4  = IIf(, , )
  loc_BE1290: LitStr vbNullString
  loc_BE1293: LitI2_Byte 0
  loc_BE1295: FMemLdR4 var_BC(40)
  loc_BE129A: LitI2_Byte 1
  loc_BE129C: FnUBound
  loc_BE129E: CI2I4
  loc_BE129F: LitI2_Byte 0
  loc_BE12A1: LitStr "right"
  loc_BE12A4: FLdRfVar var_FC
  loc_BE12A7: CStrVarVal var_C0
  loc_BE12AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE12B0: CVarStr var_10C
  loc_BE12B3: PopAdLdVar
  loc_BE12B4: FLdPr Me
  loc_BE12B7: MemLdRfVar from_stack_1.global_64
  loc_BE12BA: LdPrVar
  loc_BE12BC: LateMemCall
  loc_BE12C2: FFree1Str var_C0
  loc_BE12C5: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE12D0: FMemLdRf unk_4C762D
  loc_BE12D5: CVarRef
  loc_BE12DA: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE12DF: FStVarCopyObj var_D4
  loc_BE12E2: FLdRfVar var_D4
  loc_BE12E5: FMemLdR4 var_BC(24)
  loc_BE12EA: LitStr "0,00"
  loc_BE12ED: EqStr
  loc_BE12EF: CVarBoolI2 var_9C
  loc_BE12F3: FLdRfVar var_FC
  loc_BE12F6: ImpAdCallFPR4  = IIf(, , )
  loc_BE12FB: LitStr vbNullString
  loc_BE12FE: LitI2_Byte 0
  loc_BE1300: FMemLdR4 var_BC(40)
  loc_BE1305: LitI2_Byte 1
  loc_BE1307: FnUBound
  loc_BE1309: CI2I4
  loc_BE130A: LitI2_Byte 0
  loc_BE130C: LitStr "right"
  loc_BE130F: FLdRfVar var_FC
  loc_BE1312: CStrVarVal var_C0
  loc_BE1316: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE131B: CVarStr var_10C
  loc_BE131E: PopAdLdVar
  loc_BE131F: FLdPr Me
  loc_BE1322: MemLdRfVar from_stack_1.global_64
  loc_BE1325: LdPrVar
  loc_BE1327: LateMemCall
  loc_BE132D: FFree1Str var_C0
  loc_BE1330: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE133B: FMemLdRf unk_4C762D
  loc_BE1340: CVarRef
  loc_BE1345: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE134A: FStVarCopyObj var_D4
  loc_BE134D: FLdRfVar var_D4
  loc_BE1350: FMemLdR4 var_BC(28)
  loc_BE1355: LitStr "0,00"
  loc_BE1358: EqStr
  loc_BE135A: CVarBoolI2 var_9C
  loc_BE135E: FLdRfVar var_FC
  loc_BE1361: ImpAdCallFPR4  = IIf(, , )
  loc_BE1366: LitStr vbNullString
  loc_BE1369: LitI2_Byte 0
  loc_BE136B: FMemLdR4 var_BC(40)
  loc_BE1370: LitI2_Byte 1
  loc_BE1372: FnUBound
  loc_BE1374: CI2I4
  loc_BE1375: LitI2_Byte 0
  loc_BE1377: LitStr "right"
  loc_BE137A: FLdRfVar var_FC
  loc_BE137D: CStrVarVal var_C0
  loc_BE1381: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE1386: CVarStr var_10C
  loc_BE1389: PopAdLdVar
  loc_BE138A: FLdPr Me
  loc_BE138D: MemLdRfVar from_stack_1.global_64
  loc_BE1390: LdPrVar
  loc_BE1392: LateMemCall
  loc_BE1398: FFree1Str var_C0
  loc_BE139B: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE13A6: FMemLdRf unk_4C762D
  loc_BE13AB: CVarRef
  loc_BE13B0: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE13B5: FStVarCopyObj var_D4
  loc_BE13B8: FLdRfVar var_D4
  loc_BE13BB: FMemLdR4 var_BC(32)
  loc_BE13C0: LitStr "0,00"
  loc_BE13C3: EqStr
  loc_BE13C5: CVarBoolI2 var_9C
  loc_BE13C9: FLdRfVar var_FC
  loc_BE13CC: ImpAdCallFPR4  = IIf(, , )
  loc_BE13D1: LitStr vbNullString
  loc_BE13D4: LitI2_Byte 0
  loc_BE13D6: FMemLdR4 var_BC(40)
  loc_BE13DB: LitI2_Byte 1
  loc_BE13DD: FnUBound
  loc_BE13DF: CI2I4
  loc_BE13E0: LitI2_Byte 0
  loc_BE13E2: LitStr "right"
  loc_BE13E5: FLdRfVar var_FC
  loc_BE13E8: CStrVarVal var_C0
  loc_BE13EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE13F1: CVarStr var_10C
  loc_BE13F4: PopAdLdVar
  loc_BE13F5: FLdPr Me
  loc_BE13F8: MemLdRfVar from_stack_1.global_64
  loc_BE13FB: LdPrVar
  loc_BE13FD: LateMemCall
  loc_BE1403: FFree1Str var_C0
  loc_BE1406: FFreeVar var_9C = "": var_D4 = "": var_FC = ""
  loc_BE1411: LitI4 0
  loc_BE1416: FStR4 var_BC
  loc_BE1419: AryUnlock
  loc_BE141C: AryUnlock
  loc_BE141F: AryUnlock
  loc_BE1422: LitVarStr var_9C, "     </tr>"
  loc_BE1427: PopAdLdVar
  loc_BE1428: FLdPr Me
  loc_BE142B: MemLdRfVar from_stack_1.global_64
  loc_BE142E: LdPrVar
  loc_BE1430: LateMemCall
  loc_BE1436: FLdPr Me
  loc_BE1439: MemLdRfVar from_stack_1.global_124
  loc_BE143C: NextI2 var_8C, loc_BE0FAD
  loc_BE1441: FLdPr Me
  loc_BE1444: MemLdRfVar from_stack_1.global_122
  loc_BE1447: NextI2 var_88, loc_BE0F75
  loc_BE144C: FLdPr Me
  loc_BE144F: MemLdI2 global_118
  loc_BE1452: CI4UI1
  loc_BE1453: LitI4 1
  loc_BE1458: FLdPr Me
  loc_BE145B: MemLdStr global_100
  loc_BE145E: Ary1LdPr
  loc_BE145F: MemLdStr global_112
  loc_BE1462: LitI2_Byte 1
  loc_BE1464: FnUBound
  loc_BE1466: LtI4
  loc_BE1467: BranchF loc_BE16E9
  loc_BE146A: LitVarStr var_9C, "</table><p><hr></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_BE146F: PopAdLdVar
  loc_BE1470: FLdPr Me
  loc_BE1473: MemLdRfVar from_stack_1.global_64
  loc_BE1476: LdPrVar
  loc_BE1478: LateMemCall
  loc_BE147E: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BE1483: PopAdLdVar
  loc_BE1484: FLdPr Me
  loc_BE1487: MemLdRfVar from_stack_1.global_64
  loc_BE148A: LdPrVar
  loc_BE148C: LateMemCall
  loc_BE1492: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE1497: PopAdLdVar
  loc_BE1498: FLdPr Me
  loc_BE149B: MemLdRfVar from_stack_1.global_64
  loc_BE149E: LdPrVar
  loc_BE14A0: LateMemCall
  loc_BE14A6: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_BE14A9: FLdPr Me
  loc_BE14AC: MemLdI2 global_118
  loc_BE14AF: CStrUI1
  loc_BE14B1: FStStrNoPop var_C0
  loc_BE14B4: ConcatStr
  loc_BE14B5: FStStrNoPop var_C4
  loc_BE14B8: LitStr "</td>"
  loc_BE14BB: ConcatStr
  loc_BE14BC: CVarStr var_D4
  loc_BE14BF: PopAdLdVar
  loc_BE14C0: FLdPr Me
  loc_BE14C3: MemLdRfVar from_stack_1.global_64
  loc_BE14C6: LdPrVar
  loc_BE14C8: LateMemCall
  loc_BE14CE: FFreeStr var_C0 = ""
  loc_BE14D5: FFree1Var var_D4 = ""
  loc_BE14D8: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BE14DD: PopAdLdVar
  loc_BE14DE: FLdPr Me
  loc_BE14E1: MemLdRfVar from_stack_1.global_64
  loc_BE14E4: LdPrVar
  loc_BE14E6: LateMemCall
  loc_BE14EC: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. CAPI.</td>"
  loc_BE14F1: PopAdLdVar
  loc_BE14F2: FLdPr Me
  loc_BE14F5: MemLdRfVar from_stack_1.global_64
  loc_BE14F8: LdPrVar
  loc_BE14FA: LateMemCall
  loc_BE1500: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_BE1505: PopAdLdVar
  loc_BE1506: FLdPr Me
  loc_BE1509: MemLdRfVar from_stack_1.global_64
  loc_BE150C: LdPrVar
  loc_BE150E: LateMemCall
  loc_BE1514: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. RECA.</td>"
  loc_BE1519: PopAdLdVar
  loc_BE151A: FLdPr Me
  loc_BE151D: MemLdRfVar from_stack_1.global_64
  loc_BE1520: LdPrVar
  loc_BE1522: LateMemCall
  loc_BE1528: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_BE152D: PopAdLdVar
  loc_BE152E: FLdPr Me
  loc_BE1531: MemLdRfVar from_stack_1.global_64
  loc_BE1534: LdPrVar
  loc_BE1536: LateMemCall
  loc_BE153C: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>APREMIO</td>"
  loc_BE1541: PopAdLdVar
  loc_BE1542: FLdPr Me
  loc_BE1545: MemLdRfVar from_stack_1.global_64
  loc_BE1548: LdPrVar
  loc_BE154A: LateMemCall
  loc_BE1550: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>TOTAL</td>"
  loc_BE1555: PopAdLdVar
  loc_BE1556: FLdPr Me
  loc_BE1559: MemLdRfVar from_stack_1.global_64
  loc_BE155C: LdPrVar
  loc_BE155E: LateMemCall
  loc_BE1564: LitVarStr var_9C, "  </tr>"
  loc_BE1569: PopAdLdVar
  loc_BE156A: FLdPr Me
  loc_BE156D: MemLdRfVar from_stack_1.global_64
  loc_BE1570: LdPrVar
  loc_BE1572: LateMemCall
  loc_BE1578: LitVarStr var_9C, "  <tr align=""center"" class=""Normal"">"
  loc_BE157D: PopAdLdVar
  loc_BE157E: FLdPr Me
  loc_BE1581: MemLdRfVar from_stack_1.global_64
  loc_BE1584: LdPrVar
  loc_BE1586: LateMemCall
  loc_BE158C: FLdPr Me
  loc_BE158F: MemLdI2 global_118
  loc_BE1592: CI4UI1
  loc_BE1593: LitI4 1
  loc_BE1598: FLdPr Me
  loc_BE159B: MemLdStr global_100
  loc_BE159E: AryLock
  loc_BE15A1: Ary1LdPr
  loc_BE15A2: MemLdStr global_112
  loc_BE15A5: AryLock
  loc_BE15A8: Ary1LdPr
  loc_BE15A9: MemLdRfVar from_stack_1.global_4
  loc_BE15AC: FStR4 var_128
  loc_BE15AF: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE15B2: FMemLdR4 var_128(8)
  loc_BE15B7: ConcatStr
  loc_BE15B8: FStStrNoPop var_C0
  loc_BE15BB: LitStr "</td>"
  loc_BE15BE: ConcatStr
  loc_BE15BF: CVarStr var_D4
  loc_BE15C2: PopAdLdVar
  loc_BE15C3: FLdPr Me
  loc_BE15C6: MemLdRfVar from_stack_1.global_64
  loc_BE15C9: LdPrVar
  loc_BE15CB: LateMemCall
  loc_BE15D1: FFree1Str var_C0
  loc_BE15D4: FFree1Var var_D4 = ""
  loc_BE15D7: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE15DA: FMemLdR4 var_128(12)
  loc_BE15DF: ConcatStr
  loc_BE15E0: FStStrNoPop var_C0
  loc_BE15E3: LitStr "</td>"
  loc_BE15E6: ConcatStr
  loc_BE15E7: CVarStr var_D4
  loc_BE15EA: PopAdLdVar
  loc_BE15EB: FLdPr Me
  loc_BE15EE: MemLdRfVar from_stack_1.global_64
  loc_BE15F1: LdPrVar
  loc_BE15F3: LateMemCall
  loc_BE15F9: FFree1Str var_C0
  loc_BE15FC: FFree1Var var_D4 = ""
  loc_BE15FF: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE1602: FMemLdR4 var_128(16)
  loc_BE1607: ConcatStr
  loc_BE1608: FStStrNoPop var_C0
  loc_BE160B: LitStr "</td>"
  loc_BE160E: ConcatStr
  loc_BE160F: CVarStr var_D4
  loc_BE1612: PopAdLdVar
  loc_BE1613: FLdPr Me
  loc_BE1616: MemLdRfVar from_stack_1.global_64
  loc_BE1619: LdPrVar
  loc_BE161B: LateMemCall
  loc_BE1621: FFree1Str var_C0
  loc_BE1624: FFree1Var var_D4 = ""
  loc_BE1627: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE162A: FMemLdR4 var_128(20)
  loc_BE162F: ConcatStr
  loc_BE1630: FStStrNoPop var_C0
  loc_BE1633: LitStr "</td>"
  loc_BE1636: ConcatStr
  loc_BE1637: CVarStr var_D4
  loc_BE163A: PopAdLdVar
  loc_BE163B: FLdPr Me
  loc_BE163E: MemLdRfVar from_stack_1.global_64
  loc_BE1641: LdPrVar
  loc_BE1643: LateMemCall
  loc_BE1649: FFree1Str var_C0
  loc_BE164C: FFree1Var var_D4 = ""
  loc_BE164F: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE1652: FMemLdR4 var_128(24)
  loc_BE1657: ConcatStr
  loc_BE1658: FStStrNoPop var_C0
  loc_BE165B: LitStr "</td>"
  loc_BE165E: ConcatStr
  loc_BE165F: CVarStr var_D4
  loc_BE1662: PopAdLdVar
  loc_BE1663: FLdPr Me
  loc_BE1666: MemLdRfVar from_stack_1.global_64
  loc_BE1669: LdPrVar
  loc_BE166B: LateMemCall
  loc_BE1671: FFree1Str var_C0
  loc_BE1674: FFree1Var var_D4 = ""
  loc_BE1677: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE167A: FMemLdR4 var_128(28)
  loc_BE167F: ConcatStr
  loc_BE1680: FStStrNoPop var_C0
  loc_BE1683: LitStr "</td>"
  loc_BE1686: ConcatStr
  loc_BE1687: CVarStr var_D4
  loc_BE168A: PopAdLdVar
  loc_BE168B: FLdPr Me
  loc_BE168E: MemLdRfVar from_stack_1.global_64
  loc_BE1691: LdPrVar
  loc_BE1693: LateMemCall
  loc_BE1699: FFree1Str var_C0
  loc_BE169C: FFree1Var var_D4 = ""
  loc_BE169F: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BE16A2: FMemLdR4 var_128(32)
  loc_BE16A7: ConcatStr
  loc_BE16A8: FStStrNoPop var_C0
  loc_BE16AB: LitStr "</td>"
  loc_BE16AE: ConcatStr
  loc_BE16AF: CVarStr var_D4
  loc_BE16B2: PopAdLdVar
  loc_BE16B3: FLdPr Me
  loc_BE16B6: MemLdRfVar from_stack_1.global_64
  loc_BE16B9: LdPrVar
  loc_BE16BB: LateMemCall
  loc_BE16C1: FFree1Str var_C0
  loc_BE16C4: FFree1Var var_D4 = ""
  loc_BE16C7: LitI4 0
  loc_BE16CC: FStR4 var_128
  loc_BE16CF: AryUnlock
  loc_BE16D2: AryUnlock
  loc_BE16D5: LitVarStr var_9C, "  </tr></table>"
  loc_BE16DA: PopAdLdVar
  loc_BE16DB: FLdPr Me
  loc_BE16DE: MemLdRfVar from_stack_1.global_64
  loc_BE16E1: LdPrVar
  loc_BE16E3: LateMemCall
  loc_BE16E9: ExitProcHresult
  loc_BE16EA: CR8I4
  loc_BE16EB: LeR8
End Function

Private Function Proc_212_28_B54A34() 'B54A34
  'Data Table: 4C76E8
  loc_B54680: LitVarStr var_94, "  <tr align=""right"" class=""Totales"">"
  loc_B54685: PopAdLdVar
  loc_B54686: FLdPr Me
  loc_B54689: MemLdRfVar from_stack_1.global_64
  loc_B5468C: LdPrVar
  loc_B5468E: LateMemCall
  loc_B54694: LitVarStr var_94, "    <td colspan=""5"" align=""center"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B54699: PopAdLdVar
  loc_B5469A: FLdPr Me
  loc_B5469D: MemLdRfVar from_stack_1.global_64
  loc_B546A0: LdPrVar
  loc_B546A2: LateMemCall
  loc_B546A8: LitStr "    <td>"
  loc_B546AB: LitI4 1
  loc_B546B0: FLdPr Me
  loc_B546B3: MemLdStr global_128
  loc_B546B6: Ary1LdPr
  loc_B546B7: MemLdStr global_8
  loc_B546BA: ConcatStr
  loc_B546BB: FStStrNoPop var_A8
  loc_B546BE: LitStr "</td>"
  loc_B546C1: ConcatStr
  loc_B546C2: CVarStr var_B8
  loc_B546C5: PopAdLdVar
  loc_B546C6: FLdPr Me
  loc_B546C9: MemLdRfVar from_stack_1.global_64
  loc_B546CC: LdPrVar
  loc_B546CE: LateMemCall
  loc_B546D4: FFree1Str var_A8
  loc_B546D7: FFree1Var var_B8 = ""
  loc_B546DA: LitStr "    <td>"
  loc_B546DD: LitI4 1
  loc_B546E2: FLdPr Me
  loc_B546E5: MemLdStr global_128
  loc_B546E8: Ary1LdPr
  loc_B546E9: MemLdStr global_12
  loc_B546EC: ConcatStr
  loc_B546ED: FStStrNoPop var_A8
  loc_B546F0: LitStr "</td>"
  loc_B546F3: ConcatStr
  loc_B546F4: CVarStr var_B8
  loc_B546F7: PopAdLdVar
  loc_B546F8: FLdPr Me
  loc_B546FB: MemLdRfVar from_stack_1.global_64
  loc_B546FE: LdPrVar
  loc_B54700: LateMemCall
  loc_B54706: FFree1Str var_A8
  loc_B54709: FFree1Var var_B8 = ""
  loc_B5470C: LitStr "    <td>"
  loc_B5470F: LitI4 1
  loc_B54714: FLdPr Me
  loc_B54717: MemLdStr global_128
  loc_B5471A: Ary1LdPr
  loc_B5471B: MemLdStr global_16
  loc_B5471E: ConcatStr
  loc_B5471F: FStStrNoPop var_A8
  loc_B54722: LitStr "</td>"
  loc_B54725: ConcatStr
  loc_B54726: CVarStr var_B8
  loc_B54729: PopAdLdVar
  loc_B5472A: FLdPr Me
  loc_B5472D: MemLdRfVar from_stack_1.global_64
  loc_B54730: LdPrVar
  loc_B54732: LateMemCall
  loc_B54738: FFree1Str var_A8
  loc_B5473B: FFree1Var var_B8 = ""
  loc_B5473E: LitStr "    <td>"
  loc_B54741: LitI4 1
  loc_B54746: FLdPr Me
  loc_B54749: MemLdStr global_128
  loc_B5474C: Ary1LdPr
  loc_B5474D: MemLdStr global_20
  loc_B54750: ConcatStr
  loc_B54751: FStStrNoPop var_A8
  loc_B54754: LitStr "</td>"
  loc_B54757: ConcatStr
  loc_B54758: CVarStr var_B8
  loc_B5475B: PopAdLdVar
  loc_B5475C: FLdPr Me
  loc_B5475F: MemLdRfVar from_stack_1.global_64
  loc_B54762: LdPrVar
  loc_B54764: LateMemCall
  loc_B5476A: FFree1Str var_A8
  loc_B5476D: FFree1Var var_B8 = ""
  loc_B54770: LitStr "    <td>"
  loc_B54773: LitI4 1
  loc_B54778: FLdPr Me
  loc_B5477B: MemLdStr global_128
  loc_B5477E: Ary1LdPr
  loc_B5477F: MemLdStr global_24
  loc_B54782: ConcatStr
  loc_B54783: FStStrNoPop var_A8
  loc_B54786: LitStr "</td>"
  loc_B54789: ConcatStr
  loc_B5478A: CVarStr var_B8
  loc_B5478D: PopAdLdVar
  loc_B5478E: FLdPr Me
  loc_B54791: MemLdRfVar from_stack_1.global_64
  loc_B54794: LdPrVar
  loc_B54796: LateMemCall
  loc_B5479C: FFree1Str var_A8
  loc_B5479F: FFree1Var var_B8 = ""
  loc_B547A2: LitStr "    <td>"
  loc_B547A5: LitI4 1
  loc_B547AA: FLdPr Me
  loc_B547AD: MemLdStr global_128
  loc_B547B0: Ary1LdPr
  loc_B547B1: MemLdStr global_28
  loc_B547B4: ConcatStr
  loc_B547B5: FStStrNoPop var_A8
  loc_B547B8: LitStr "</td>"
  loc_B547BB: ConcatStr
  loc_B547BC: CVarStr var_B8
  loc_B547BF: PopAdLdVar
  loc_B547C0: FLdPr Me
  loc_B547C3: MemLdRfVar from_stack_1.global_64
  loc_B547C6: LdPrVar
  loc_B547C8: LateMemCall
  loc_B547CE: FFree1Str var_A8
  loc_B547D1: FFree1Var var_B8 = ""
  loc_B547D4: LitStr "    <td align=""right"" class=""Total"">"
  loc_B547D7: LitI4 1
  loc_B547DC: FLdPr Me
  loc_B547DF: MemLdStr global_128
  loc_B547E2: Ary1LdPr
  loc_B547E3: MemLdStr global_32
  loc_B547E6: ConcatStr
  loc_B547E7: FStStrNoPop var_A8
  loc_B547EA: LitStr "</td>"
  loc_B547ED: ConcatStr
  loc_B547EE: CVarStr var_B8
  loc_B547F1: PopAdLdVar
  loc_B547F2: FLdPr Me
  loc_B547F5: MemLdRfVar from_stack_1.global_64
  loc_B547F8: LdPrVar
  loc_B547FA: LateMemCall
  loc_B54800: FFree1Str var_A8
  loc_B54803: FFree1Var var_B8 = ""
  loc_B54806: LitVarStr var_94, "  </tr>"
  loc_B5480B: PopAdLdVar
  loc_B5480C: FLdPr Me
  loc_B5480F: MemLdRfVar from_stack_1.global_64
  loc_B54812: LdPrVar
  loc_B54814: LateMemCall
  loc_B5481A: LitVarStr var_94, "  <tr>"
  loc_B5481F: PopAdLdVar
  loc_B54820: FLdPr Me
  loc_B54823: MemLdRfVar from_stack_1.global_64
  loc_B54826: LdPrVar
  loc_B54828: LateMemCall
  loc_B5482E: LitStr "    <td colspan=""12"" valign=""top"">SON PESOS: <strong>"
  loc_B54831: LitI4 1
  loc_B54836: FLdPr Me
  loc_B54839: MemLdStr global_128
  loc_B5483C: Ary1LdPr
  loc_B5483D: MemLdStr global_32
  loc_B54840: CR8Str
  loc_B54842: PopFPR8
  loc_B54843: ImpAdCallI2 Proc_272_28_AB2798(, )
  loc_B54848: FStStrNoPop var_A8
  loc_B5484B: ConcatStr
  loc_B5484C: FStStrNoPop var_BC
  loc_B5484F: LitStr ".---</strong></td>"
  loc_B54852: ConcatStr
  loc_B54853: CVarStr var_B8
  loc_B54856: PopAdLdVar
  loc_B54857: FLdPr Me
  loc_B5485A: MemLdRfVar from_stack_1.global_64
  loc_B5485D: LdPrVar
  loc_B5485F: LateMemCall
  loc_B54865: FFreeStr var_A8 = ""
  loc_B5486C: FFree1Var var_B8 = ""
  loc_B5486F: LitVarStr var_94, "  </tr>"
  loc_B54874: PopAdLdVar
  loc_B54875: FLdPr Me
  loc_B54878: MemLdRfVar from_stack_1.global_64
  loc_B5487B: LdPrVar
  loc_B5487D: LateMemCall
  loc_B54883: LitI4 1
  loc_B54888: FLdPr Me
  loc_B5488B: MemLdStr global_100
  loc_B5488E: Ary1LdPr
  loc_B5488F: MemLdStr global_72
  loc_B54892: LitStr vbNullString
  loc_B54895: NeStr
  loc_B54897: BranchF loc_B54958
  loc_B5489A: LitVarStr var_94, "  <tr>"
  loc_B5489F: PopAdLdVar
  loc_B548A0: FLdPr Me
  loc_B548A3: MemLdRfVar from_stack_1.global_64
  loc_B548A6: LdPrVar
  loc_B548A8: LateMemCall
  loc_B548AE: LitVarStr var_10C, "    <td colspan=""12"" align=""left"" valign=""top"">Boleta"
  loc_B548B3: LitVarStr var_DC, vbNullString
  loc_B548B8: FStVarCopyObj var_EC
  loc_B548BB: FLdRfVar var_EC
  loc_B548BE: LitVarStr var_A4, "s"
  loc_B548C3: FStVarCopyObj var_CC
  loc_B548C6: FLdRfVar var_CC
  loc_B548C9: LitI4 1
  loc_B548CE: LitI4 1
  loc_B548D3: FLdPr Me
  loc_B548D6: MemLdStr global_100
  loc_B548D9: Ary1LdPr
  loc_B548DA: MemLdStr global_72
  loc_B548DD: LitStr ","
  loc_B548E0: LitI4 0
  loc_B548E5: FnInStr4
  loc_B548E7: CVarI4
  loc_B548EB: FLdRfVar var_FC
  loc_B548EE: ImpAdCallFPR4  = IIf(, , )
  loc_B548F3: FLdRfVar var_FC
  loc_B548F6: ConcatVar var_11C
  loc_B548FA: LitVarStr var_12C, " de apremio: <strong> "
  loc_B548FF: ConcatVar var_13C
  loc_B54903: LitI4 1
  loc_B54908: FLdPr Me
  loc_B5490B: MemLdStr global_100
  loc_B5490E: Ary1LdPr
  loc_B5490F: MemLdStr global_72
  loc_B54912: CVarStr var_14C
  loc_B54915: ConcatVar var_15C
  loc_B54919: LitVarStr var_16C, "</strong></td>"
  loc_B5491E: ConcatVar var_17C
  loc_B54922: PopAdLdVar
  loc_B54923: FLdPr Me
  loc_B54926: MemLdRfVar from_stack_1.global_64
  loc_B54929: LdPrVar
  loc_B5492B: LateMemCall
  loc_B54931: FFreeVar var_B8 = "": var_CC = "": var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = ""
  loc_B54944: LitVarStr var_94, "  </tr>"
  loc_B54949: PopAdLdVar
  loc_B5494A: FLdPr Me
  loc_B5494D: MemLdRfVar from_stack_1.global_64
  loc_B54950: LdPrVar
  loc_B54952: LateMemCall
  loc_B54958: LitVarStr var_94, "</table>"
  loc_B5495D: PopAdLdVar
  loc_B5495E: FLdPr Me
  loc_B54961: MemLdRfVar from_stack_1.global_64
  loc_B54964: LdPrVar
  loc_B54966: LateMemCall
  loc_B5496C: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B5496F: FLdRfVar var_A8
  loc_B54972: FLdRfVar var_190
  loc_B54975: NewIfNullPr clsparagene
  loc_B54978: from_stack_1v = clsparagene.ObtenerLeyendaBoletos()
  loc_B5497D: ILdRf var_A8
  loc_B54980: ConcatStr
  loc_B54981: FStStrNoPop var_BC
  loc_B54984: LitStr "</div>"
  loc_B54987: ConcatStr
  loc_B54988: CVarStr var_B8
  loc_B5498B: PopAdLdVar
  loc_B5498C: FLdPr Me
  loc_B5498F: MemLdRfVar from_stack_1.global_64
  loc_B54992: LdPrVar
  loc_B54994: LateMemCall
  loc_B5499A: FFreeStr var_A8 = ""
  loc_B549A1: FFree1Var var_B8 = ""
  loc_B549A4: LitStr "<br><table align=""center"" class=""Resaltado""><tr><td align=""justify"">Cuota pagada N&ordm; "
  loc_B549A7: LitI4 1
  loc_B549AC: FLdPr Me
  loc_B549AF: MemLdStr global_104
  loc_B549B2: Ary1LdPr
  loc_B549B3: MemLdStr global_0
  loc_B549B6: ConcatStr
  loc_B549B7: FStStrNoPop var_A8
  loc_B549BA: LitStr ". Importe: "
  loc_B549BD: ConcatStr
  loc_B549BE: FStStrNoPop var_BC
  loc_B549C1: LitI4 1
  loc_B549C6: LitI4 1
  loc_B549CB: LitI4 1
  loc_B549D0: FLdPr Me
  loc_B549D3: MemLdStr global_100
  loc_B549D6: Ary1LdPr
  loc_B549D7: MemLdStr global_112
  loc_B549DA: Ary1LdPr
  loc_B549DB: MemLdStr global_0
  loc_B549DE: Ary1LdPr
  loc_B549DF: MemLdStr global_32
  loc_B549E2: ConcatStr
  loc_B549E3: FStStrNoPop var_194
  loc_B549E6: LitStr "</td></tr></table>"
  loc_B549E9: ConcatStr
  loc_B549EA: CVarStr var_B8
  loc_B549ED: PopAdLdVar
  loc_B549EE: FLdPr Me
  loc_B549F1: MemLdRfVar from_stack_1.global_64
  loc_B549F4: LdPrVar
  loc_B549F6: LateMemCall
  loc_B549FC: FFreeStr var_A8 = "": var_BC = ""
  loc_B54A05: FFree1Var var_B8 = ""
  loc_B54A08: LitVarStr var_94, "</td>"
  loc_B54A0D: PopAdLdVar
  loc_B54A0E: FLdPr Me
  loc_B54A11: MemLdRfVar from_stack_1.global_64
  loc_B54A14: LdPrVar
  loc_B54A16: LateMemCall
  loc_B54A1C: LitVarStr var_94, "</tr></table><hr>"
  loc_B54A21: PopAdLdVar
  loc_B54A22: FLdPr Me
  loc_B54A25: MemLdRfVar from_stack_1.global_64
  loc_B54A28: LdPrVar
  loc_B54A2A: LateMemCall
  loc_B54A30: ExitProcHresult
End Function

Private Function Proc_212_29_B92950() 'B92950
  'Data Table: 4C76E8
  loc_B923E4: FLdPr Me
  loc_B923E7: MemLdI2 global_116
  loc_B923EA: CI4UI1
  loc_B923EB: FLdPr Me
  loc_B923EE: MemLdStr global_104
  loc_B923F1: AryLock
  loc_B923F4: Ary1LdRf
  loc_B923F5: FStR4 var_8C
  loc_B923F8: LitVarStr var_9C, "<table width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B923FD: PopAdLdVar
  loc_B923FE: FLdPr Me
  loc_B92401: MemLdRfVar from_stack_1.global_64
  loc_B92404: LdPrVar
  loc_B92406: LateMemCall
  loc_B9240C: LitVarStr var_9C, "  <tr>"
  loc_B92411: PopAdLdVar
  loc_B92412: FLdPr Me
  loc_B92415: MemLdRfVar from_stack_1.global_64
  loc_B92418: LdPrVar
  loc_B9241A: LateMemCall
  loc_B92420: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B92425: PopAdLdVar
  loc_B92426: FLdPr Me
  loc_B92429: MemLdRfVar from_stack_1.global_64
  loc_B9242C: LdPrVar
  loc_B9242E: LateMemCall
  loc_B92434: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B92439: PopAdLdVar
  loc_B9243A: FLdPr Me
  loc_B9243D: MemLdRfVar from_stack_1.global_64
  loc_B92440: LdPrVar
  loc_B92442: LateMemCall
  loc_B92448: LitVarStr var_9C, "      <tr>"
  loc_B9244D: PopAdLdVar
  loc_B9244E: FLdPr Me
  loc_B92451: MemLdRfVar from_stack_1.global_64
  loc_B92454: LdPrVar
  loc_B92456: LateMemCall
  loc_B9245C: LitVarStr var_AC, "        <td colspan=""8"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B92461: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B92466: FStVarCopyObj var_BC
  loc_B92469: FLdRfVar var_BC
  loc_B9246C: FLdRfVar var_CC
  loc_B9246F: ImpAdCallFPR4  = Ucase()
  loc_B92474: FLdRfVar var_CC
  loc_B92477: ConcatVar var_DC
  loc_B9247B: LitVarStr var_EC, " - "
  loc_B92480: ConcatVar var_FC
  loc_B92484: LitVarStr var_10C, "Dirección de Rentas"
  loc_B92489: ConcatVar var_11C
  loc_B9248D: LitVarStr var_12C, "</td>"
  loc_B92492: ConcatVar var_13C
  loc_B92496: PopAdLdVar
  loc_B92497: FLdPr Me
  loc_B9249A: MemLdRfVar from_stack_1.global_64
  loc_B9249D: LdPrVar
  loc_B9249F: LateMemCall
  loc_B924A5: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B924B4: LitVarStr var_9C, "        </tr>"
  loc_B924B9: PopAdLdVar
  loc_B924BA: FLdPr Me
  loc_B924BD: MemLdRfVar from_stack_1.global_64
  loc_B924C0: LdPrVar
  loc_B924C2: LateMemCall
  loc_B924C8: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B924CD: PopAdLdVar
  loc_B924CE: FLdPr Me
  loc_B924D1: MemLdRfVar from_stack_1.global_64
  loc_B924D4: LdPrVar
  loc_B924D6: LateMemCall
  loc_B924DC: LitVarStr var_9C, "        <td colspan=""8"">APELLIDO Y NOMBRE</td>"
  loc_B924E1: PopAdLdVar
  loc_B924E2: FLdPr Me
  loc_B924E5: MemLdRfVar from_stack_1.global_64
  loc_B924E8: LdPrVar
  loc_B924EA: LateMemCall
  loc_B924F0: LitVarStr var_9C, "        </tr>"
  loc_B924F5: PopAdLdVar
  loc_B924F6: FLdPr Me
  loc_B924F9: MemLdRfVar from_stack_1.global_64
  loc_B924FC: LdPrVar
  loc_B924FE: LateMemCall
  loc_B92504: LitVarStr var_9C, "      <tr>"
  loc_B92509: PopAdLdVar
  loc_B9250A: FLdPr Me
  loc_B9250D: MemLdRfVar from_stack_1.global_64
  loc_B92510: LdPrVar
  loc_B92512: LateMemCall
  loc_B92518: LitStr "        <td align=""left"" colspan=""8"" class=""NormalBloqueFinGrande"">"
  loc_B9251B: LitI4 1
  loc_B92520: FLdPr Me
  loc_B92523: MemLdStr global_100
  loc_B92526: Ary1LdPr
  loc_B92527: MemLdStr global_4
  loc_B9252A: ConcatStr
  loc_B9252B: FStStrNoPop var_150
  loc_B9252E: LitStr "</td>"
  loc_B92531: ConcatStr
  loc_B92532: CVarStr var_BC
  loc_B92535: PopAdLdVar
  loc_B92536: FLdPr Me
  loc_B92539: MemLdRfVar from_stack_1.global_64
  loc_B9253C: LdPrVar
  loc_B9253E: LateMemCall
  loc_B92544: FFree1Str var_150
  loc_B92547: FFree1Var var_BC = ""
  loc_B9254A: LitVarStr var_9C, "        </tr>"
  loc_B9254F: PopAdLdVar
  loc_B92550: FLdPr Me
  loc_B92553: MemLdRfVar from_stack_1.global_64
  loc_B92556: LdPrVar
  loc_B92558: LateMemCall
  loc_B9255E: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B92563: PopAdLdVar
  loc_B92564: FLdPr Me
  loc_B92567: MemLdRfVar from_stack_1.global_64
  loc_B9256A: LdPrVar
  loc_B9256C: LateMemCall
  loc_B92572: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>CUOTA</td>"
  loc_B92577: PopAdLdVar
  loc_B92578: FLdPr Me
  loc_B9257B: MemLdRfVar from_stack_1.global_64
  loc_B9257E: LdPrVar
  loc_B92580: LateMemCall
  loc_B92586: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>FACILIDAD</td>"
  loc_B9258B: PopAdLdVar
  loc_B9258C: FLdPr Me
  loc_B9258F: MemLdRfVar from_stack_1.global_64
  loc_B92592: LdPrVar
  loc_B92594: LateMemCall
  loc_B9259A: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>USUARIO</td>"
  loc_B9259F: PopAdLdVar
  loc_B925A0: FLdPr Me
  loc_B925A3: MemLdRfVar from_stack_1.global_64
  loc_B925A6: LdPrVar
  loc_B925A8: LateMemCall
  loc_B925AE: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>OFICINA</td>"
  loc_B925B3: PopAdLdVar
  loc_B925B4: FLdPr Me
  loc_B925B7: MemLdRfVar from_stack_1.global_64
  loc_B925BA: LdPrVar
  loc_B925BC: LateMemCall
  loc_B925C2: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>CUENTA</td>"
  loc_B925C7: PopAdLdVar
  loc_B925C8: FLdPr Me
  loc_B925CB: MemLdRfVar from_stack_1.global_64
  loc_B925CE: LdPrVar
  loc_B925D0: LateMemCall
  loc_B925D6: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>BOLETO</td>"
  loc_B925DB: PopAdLdVar
  loc_B925DC: FLdPr Me
  loc_B925DF: MemLdRfVar from_stack_1.global_64
  loc_B925E2: LdPrVar
  loc_B925E4: LateMemCall
  loc_B925EA: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B925EF: PopAdLdVar
  loc_B925F0: FLdPr Me
  loc_B925F3: MemLdRfVar from_stack_1.global_64
  loc_B925F6: LdPrVar
  loc_B925F8: LateMemCall
  loc_B925FE: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_B92603: PopAdLdVar
  loc_B92604: FLdPr Me
  loc_B92607: MemLdRfVar from_stack_1.global_64
  loc_B9260A: LdPrVar
  loc_B9260C: LateMemCall
  loc_B92612: LitVarStr var_9C, "      </tr>"
  loc_B92617: PopAdLdVar
  loc_B92618: FLdPr Me
  loc_B9261B: MemLdRfVar from_stack_1.global_64
  loc_B9261E: LdPrVar
  loc_B92620: LateMemCall
  loc_B92626: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_B9262B: PopAdLdVar
  loc_B9262C: FLdPr Me
  loc_B9262F: MemLdRfVar from_stack_1.global_64
  loc_B92632: LdPrVar
  loc_B92634: LateMemCall
  loc_B9263A: LitStr "        <td align=""right"">"
  loc_B9263D: FMemLdR4 var_8C(0)
  loc_B92642: ConcatStr
  loc_B92643: FStStrNoPop var_150
  loc_B92646: LitStr "/"
  loc_B92649: ConcatStr
  loc_B9264A: FStStrNoPop var_154
  loc_B9264D: FLdPr Me
  loc_B92650: MemLdStr global_112
  loc_B92653: ConcatStr
  loc_B92654: FStStrNoPop var_158
  loc_B92657: LitStr "</td>"
  loc_B9265A: ConcatStr
  loc_B9265B: CVarStr var_BC
  loc_B9265E: PopAdLdVar
  loc_B9265F: FLdPr Me
  loc_B92662: MemLdRfVar from_stack_1.global_64
  loc_B92665: LdPrVar
  loc_B92667: LateMemCall
  loc_B9266D: FFreeStr var_150 = "": var_154 = ""
  loc_B92676: FFree1Var var_BC = ""
  loc_B92679: LitStr "        <td align=""right"">"
  loc_B9267C: FLdPr Me
  loc_B9267F: VCallAd Control_ID_CodiFapaMsk
  loc_B92682: FStAdFunc var_15C
  loc_B92685: FLdPr var_15C
  loc_B92688: LateIdLdVar var_BC DispID_22 0
  loc_B9268F: CStrVarTmp
  loc_B92690: FStStrNoPop var_150
  loc_B92693: ConcatStr
  loc_B92694: FStStrNoPop var_154
  loc_B92697: LitStr "</td>"
  loc_B9269A: ConcatStr
  loc_B9269B: CVarStr var_CC
  loc_B9269E: PopAdLdVar
  loc_B9269F: FLdPr Me
  loc_B926A2: MemLdRfVar from_stack_1.global_64
  loc_B926A5: LdPrVar
  loc_B926A7: LateMemCall
  loc_B926AD: FFreeStr var_150 = ""
  loc_B926B4: FFree1Ad var_15C
  loc_B926B7: FFreeVar var_BC = ""
  loc_B926BE: LitStr "        <td align=""center"">"
  loc_B926C1: LitI4 1
  loc_B926C6: FLdPr Me
  loc_B926C9: MemLdStr global_100
  loc_B926CC: Ary1LdPr
  loc_B926CD: MemLdStr global_64
  loc_B926D0: ConcatStr
  loc_B926D1: FStStrNoPop var_150
  loc_B926D4: LitStr "</td>"
  loc_B926D7: ConcatStr
  loc_B926D8: CVarStr var_BC
  loc_B926DB: PopAdLdVar
  loc_B926DC: FLdPr Me
  loc_B926DF: MemLdRfVar from_stack_1.global_64
  loc_B926E2: LdPrVar
  loc_B926E4: LateMemCall
  loc_B926EA: FFree1Str var_150
  loc_B926ED: FFree1Var var_BC = ""
  loc_B926F0: LitStr "        <td align=""right"">"
  loc_B926F3: FLdRfVar var_168
  loc_B926F6: FLdRfVar var_15E
  loc_B926F9: FLdPr Me
  loc_B926FC: VCallAd Control_ID_CodiOficCbo
  loc_B926FF: FStAdFunc var_15C
  loc_B92702: FLdPr var_15C
  loc_B92705:  = Me.ListIndex
  loc_B9270A: FLdI2 var_15E
  loc_B9270D: FLdPr Me
  loc_B92710: VCallAd Control_ID_CodiOficCbo
  loc_B92713: FStAdFunc var_164
  loc_B92716: FLdPr var_164
  loc_B92719:  = Me.ItemData
  loc_B9271E: ILdRf var_168
  loc_B92721: CStrI4
  loc_B92723: FStStrNoPop var_150
  loc_B92726: ConcatStr
  loc_B92727: FStStrNoPop var_154
  loc_B9272A: LitStr "</td>"
  loc_B9272D: ConcatStr
  loc_B9272E: CVarStr var_BC
  loc_B92731: PopAdLdVar
  loc_B92732: FLdPr Me
  loc_B92735: MemLdRfVar from_stack_1.global_64
  loc_B92738: LdPrVar
  loc_B9273A: LateMemCall
  loc_B92740: FFreeStr var_150 = ""
  loc_B92747: FFreeAd var_15C = ""
  loc_B9274E: FFree1Var var_BC = ""
  loc_B92751: LitStr "        <td align=""right"" class=""NormalBloqueFinGrande"">"
  loc_B92754: FLdRfVar var_150
  loc_B92757: FLdPr Me
  loc_B9275A: VCallAd Control_ID_CuenCtctTxt
  loc_B9275D: FStAdFunc var_15C
  loc_B92760: FLdPr var_15C
  loc_B92763:  = Me.Text
  loc_B92768: ILdRf var_150
  loc_B9276B: ConcatStr
  loc_B9276C: FStStrNoPop var_154
  loc_B9276F: LitStr "</td>"
  loc_B92772: ConcatStr
  loc_B92773: CVarStr var_BC
  loc_B92776: PopAdLdVar
  loc_B92777: FLdPr Me
  loc_B9277A: MemLdRfVar from_stack_1.global_64
  loc_B9277D: LdPrVar
  loc_B9277F: LateMemCall
  loc_B92785: FFreeStr var_150 = ""
  loc_B9278C: FFree1Ad var_15C
  loc_B9278F: FFree1Var var_BC = ""
  loc_B92792: LitStr "        <td align=""right"">"
  loc_B92795: FMemLdR4 var_8C(4)
  loc_B9279A: ConcatStr
  loc_B9279B: FStStrNoPop var_150
  loc_B9279E: LitStr "/"
  loc_B927A1: ConcatStr
  loc_B927A2: FStStrNoPop var_154
  loc_B927A5: FMemLdR4 var_8C(8)
  loc_B927AA: ConcatStr
  loc_B927AB: FStStrNoPop var_158
  loc_B927AE: LitStr "</td>"
  loc_B927B1: ConcatStr
  loc_B927B2: CVarStr var_BC
  loc_B927B5: PopAdLdVar
  loc_B927B6: FLdPr Me
  loc_B927B9: MemLdRfVar from_stack_1.global_64
  loc_B927BC: LdPrVar
  loc_B927BE: LateMemCall
  loc_B927C4: FFreeStr var_150 = "": var_154 = ""
  loc_B927CD: FFree1Var var_BC = ""
  loc_B927D0: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B927D3: FMemLdR4 var_8C(12)
  loc_B927D8: ConcatStr
  loc_B927D9: FStStrNoPop var_150
  loc_B927DC: LitStr "</td>"
  loc_B927DF: ConcatStr
  loc_B927E0: CVarStr var_BC
  loc_B927E3: PopAdLdVar
  loc_B927E4: FLdPr Me
  loc_B927E7: MemLdRfVar from_stack_1.global_64
  loc_B927EA: LdPrVar
  loc_B927EC: LateMemCall
  loc_B927F2: FFree1Str var_150
  loc_B927F5: FFree1Var var_BC = ""
  loc_B927F8: LitStr "        <td align=""right"">"
  loc_B927FB: FMemLdR4 var_8C(16)
  loc_B92800: ConcatStr
  loc_B92801: FStStrNoPop var_150
  loc_B92804: LitStr "</td>"
  loc_B92807: ConcatStr
  loc_B92808: CVarStr var_BC
  loc_B9280B: PopAdLdVar
  loc_B9280C: FLdPr Me
  loc_B9280F: MemLdRfVar from_stack_1.global_64
  loc_B92812: LdPrVar
  loc_B92814: LateMemCall
  loc_B9281A: FFree1Str var_150
  loc_B9281D: FFree1Var var_BC = ""
  loc_B92820: LitVarStr var_9C, "      </tr>"
  loc_B92825: PopAdLdVar
  loc_B92826: FLdPr Me
  loc_B92829: MemLdRfVar from_stack_1.global_64
  loc_B9282C: LdPrVar
  loc_B9282E: LateMemCall
  loc_B92834: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B92839: PopAdLdVar
  loc_B9283A: FLdPr Me
  loc_B9283D: MemLdRfVar from_stack_1.global_64
  loc_B92840: LdPrVar
  loc_B92842: LateMemCall
  loc_B92848: LitVarStr var_9C, "          <td colspan=""8"" class=""Normal"">"
  loc_B9284D: PopAdLdVar
  loc_B9284E: FLdPr Me
  loc_B92851: MemLdRfVar from_stack_1.global_64
  loc_B92854: LdPrVar
  loc_B92856: LateMemCall
  loc_B9285C: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B92861: PopAdLdVar
  loc_B92862: FLdPr Me
  loc_B92865: MemLdRfVar from_stack_1.global_64
  loc_B92868: LdPrVar
  loc_B9286A: LateMemCall
  loc_B92870: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B92873: LitI4 1
  loc_B92878: FMemLdR4 var_8C(20)
  loc_B9287D: Ary1LdI4
  loc_B9287E: ConcatStr
  loc_B9287F: FStStrNoPop var_150
  loc_B92882: LitStr "</td><tr>"
  loc_B92885: ConcatStr
  loc_B92886: CVarStr var_BC
  loc_B92889: PopAdLdVar
  loc_B9288A: FLdPr Me
  loc_B9288D: MemLdRfVar from_stack_1.global_64
  loc_B92890: LdPrVar
  loc_B92892: LateMemCall
  loc_B92898: FFree1Str var_150
  loc_B9289B: FFree1Var var_BC = ""
  loc_B9289E: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B928A1: LitI4 0
  loc_B928A6: FMemLdR4 var_8C(20)
  loc_B928AB: Ary1LdI4
  loc_B928AC: ConcatStr
  loc_B928AD: FStStrNoPop var_150
  loc_B928B0: LitStr "</td><tr>"
  loc_B928B3: ConcatStr
  loc_B928B4: CVarStr var_BC
  loc_B928B7: PopAdLdVar
  loc_B928B8: FLdPr Me
  loc_B928BB: MemLdRfVar from_stack_1.global_64
  loc_B928BE: LdPrVar
  loc_B928C0: LateMemCall
  loc_B928C6: FFree1Str var_150
  loc_B928C9: FFree1Var var_BC = ""
  loc_B928CC: LitVarStr var_9C, "           </table>"
  loc_B928D1: PopAdLdVar
  loc_B928D2: FLdPr Me
  loc_B928D5: MemLdRfVar from_stack_1.global_64
  loc_B928D8: LdPrVar
  loc_B928DA: LateMemCall
  loc_B928E0: LitVarStr var_9C, "          </td>"
  loc_B928E5: PopAdLdVar
  loc_B928E6: FLdPr Me
  loc_B928E9: MemLdRfVar from_stack_1.global_64
  loc_B928EC: LdPrVar
  loc_B928EE: LateMemCall
  loc_B928F4: LitVarStr var_9C, "      </tr>"
  loc_B928F9: PopAdLdVar
  loc_B928FA: FLdPr Me
  loc_B928FD: MemLdRfVar from_stack_1.global_64
  loc_B92900: LdPrVar
  loc_B92902: LateMemCall
  loc_B92908: LitVarStr var_9C, "    </table>"
  loc_B9290D: PopAdLdVar
  loc_B9290E: FLdPr Me
  loc_B92911: MemLdRfVar from_stack_1.global_64
  loc_B92914: LdPrVar
  loc_B92916: LateMemCall
  loc_B9291C: LitVarStr var_9C, "  </th></tr>"
  loc_B92921: PopAdLdVar
  loc_B92922: FLdPr Me
  loc_B92925: MemLdRfVar from_stack_1.global_64
  loc_B92928: LdPrVar
  loc_B9292A: LateMemCall
  loc_B92930: LitVarStr var_9C, "</table>"
  loc_B92935: PopAdLdVar
  loc_B92936: FLdPr Me
  loc_B92939: MemLdRfVar from_stack_1.global_64
  loc_B9293C: LdPrVar
  loc_B9293E: LateMemCall
  loc_B92944: LitI4 0
  loc_B92949: FStR4 var_8C
  loc_B9294C: AryUnlock
  loc_B9294F: ExitProcHresult
End Function

Private Function Proc_212_30_C42DA0() 'C42DA0
  'Data Table: 4C76E8
  loc_C42134: LitI4 1
  loc_C42139: FLdPr Me
  loc_C4213C: MemLdStr global_108
  loc_C4213F: AryLock
  loc_C42142: Ary1LdRf
  loc_C42143: FStR4 var_8C
  loc_C42146: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_C4214B: PopAdLdVar
  loc_C4214C: FLdPr Me
  loc_C4214F: MemLdRfVar from_stack_1.global_64
  loc_C42152: LdPrVar
  loc_C42154: LateMemCall
  loc_C4215A: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_C4215F: PopAdLdVar
  loc_C42160: FLdPr Me
  loc_C42163: MemLdRfVar from_stack_1.global_64
  loc_C42166: LdPrVar
  loc_C42168: LateMemCall
  loc_C4216E: LitVarStr var_9C, "  <tr valign=""middle"">"
  loc_C42173: PopAdLdVar
  loc_C42174: FLdPr Me
  loc_C42177: MemLdRfVar from_stack_1.global_64
  loc_C4217A: LdPrVar
  loc_C4217C: LateMemCall
  loc_C42182: LitStr "    <th align=""center"" valign=""middle"" class=""Titulo1""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C42185: LitI2_Byte &H5F
  loc_C42187: CStrUI1
  loc_C42189: FStStrNoPop var_B0
  loc_C4218C: ConcatStr
  loc_C4218D: FStStrNoPop var_B4
  loc_C42190: LitStr """ height="""
  loc_C42193: ConcatStr
  loc_C42194: FStStrNoPop var_B8
  loc_C42197: LitI2_Byte &H3C
  loc_C42199: CStrUI1
  loc_C4219B: FStStrNoPop var_BC
  loc_C4219E: ConcatStr
  loc_C4219F: FStStrNoPop var_C0
  loc_C421A2: LitStr """ align=""left""><img src=""l3.jpg"" width="""
  loc_C421A5: ConcatStr
  loc_C421A6: FStStrNoPop var_C4
  loc_C421A9: LitI2_Byte &H3C
  loc_C421AB: CStrUI1
  loc_C421AD: FStStrNoPop var_C8
  loc_C421B0: ConcatStr
  loc_C421B1: FStStrNoPop var_CC
  loc_C421B4: LitStr """ height=53 alt=""Escudo"" align=""right""><br>"
  loc_C421B7: ConcatStr
  loc_C421B8: FStStrNoPop var_D0
  loc_C421BB: LitStr "Municipalidad de Guaymallén"
  loc_C421BE: ConcatStr
  loc_C421BF: FStStrNoPop var_D4
  loc_C421C2: LitStr "<br>"
  loc_C421C5: ConcatStr
  loc_C421C6: FStStrNoPop var_D8
  loc_C421C9: LitStr "Dirección de Rentas"
  loc_C421CC: ConcatStr
  loc_C421CD: FStStrNoPop var_DC
  loc_C421D0: LitStr "</th>"
  loc_C421D3: ConcatStr
  loc_C421D4: CVarStr var_EC
  loc_C421D7: PopAdLdVar
  loc_C421D8: FLdPr Me
  loc_C421DB: MemLdRfVar from_stack_1.global_64
  loc_C421DE: LdPrVar
  loc_C421E0: LateMemCall
  loc_C421E6: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_C42201: FFree1Var var_EC = ""
  loc_C42204: LitVarStr var_9C, "  </tr>"
  loc_C42209: PopAdLdVar
  loc_C4220A: FLdPr Me
  loc_C4220D: MemLdRfVar from_stack_1.global_64
  loc_C42210: LdPrVar
  loc_C42212: LateMemCall
  loc_C42218: LitVarStr var_9C, "  <tr><th><hr></th></tr>"
  loc_C4221D: PopAdLdVar
  loc_C4221E: FLdPr Me
  loc_C42221: MemLdRfVar from_stack_1.global_64
  loc_C42224: LdPrVar
  loc_C42226: LateMemCall
  loc_C4222C: LitVarStr var_9C, "  <tr valign=""top"" class=""DatosEncabezado"">"
  loc_C42231: PopAdLdVar
  loc_C42232: FLdPr Me
  loc_C42235: MemLdRfVar from_stack_1.global_64
  loc_C42238: LdPrVar
  loc_C4223A: LateMemCall
  loc_C42240: LitVarStr var_9C, "    <th align=""left"" valign=""top""><table width=""562"" border=""0"" align=""left"" cellpadding=""2"" cellspacing=""2"">"
  loc_C42245: PopAdLdVar
  loc_C42246: FLdPr Me
  loc_C42249: MemLdRfVar from_stack_1.global_64
  loc_C4224C: LdPrVar
  loc_C4224E: LateMemCall
  loc_C42254: LitVarStr var_9C, "      <tr valign=""top"" class=""DatosEncabezadoGrande"">"
  loc_C42259: PopAdLdVar
  loc_C4225A: FLdPr Me
  loc_C4225D: MemLdRfVar from_stack_1.global_64
  loc_C42260: LdPrVar
  loc_C42262: LateMemCall
  loc_C42268: LitVarStr var_9C, "        <td align=""right""><strong>FACILIDAD:</strong></td>"
  loc_C4226D: PopAdLdVar
  loc_C4226E: FLdPr Me
  loc_C42271: MemLdRfVar from_stack_1.global_64
  loc_C42274: LdPrVar
  loc_C42276: LateMemCall
  loc_C4227C: LitStr "        <td>"
  loc_C4227F: FLdPr Me
  loc_C42282: VCallAd Control_ID_CodiFapaMsk
  loc_C42285: FStAdFunc var_F0
  loc_C42288: FLdPr var_F0
  loc_C4228B: LateIdLdVar var_EC DispID_22 0
  loc_C42292: CStrVarTmp
  loc_C42293: FStStrNoPop var_B0
  loc_C42296: ConcatStr
  loc_C42297: FStStrNoPop var_B4
  loc_C4229A: LitStr "</td>"
  loc_C4229D: ConcatStr
  loc_C4229E: CVarStr var_100
  loc_C422A1: PopAdLdVar
  loc_C422A2: FLdPr Me
  loc_C422A5: MemLdRfVar from_stack_1.global_64
  loc_C422A8: LdPrVar
  loc_C422AA: LateMemCall
  loc_C422B0: FFreeStr var_B0 = ""
  loc_C422B7: FFree1Ad var_F0
  loc_C422BA: FFreeVar var_EC = ""
  loc_C422C1: LitVarStr var_9C, "        </tr>"
  loc_C422C6: PopAdLdVar
  loc_C422C7: FLdPr Me
  loc_C422CA: MemLdRfVar from_stack_1.global_64
  loc_C422CD: LdPrVar
  loc_C422CF: LateMemCall
  loc_C422D5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C422DA: PopAdLdVar
  loc_C422DB: FLdPr Me
  loc_C422DE: MemLdRfVar from_stack_1.global_64
  loc_C422E1: LdPrVar
  loc_C422E3: LateMemCall
  loc_C422E9: LitVarStr var_9C, "        <td align=""right""><strong>Cuenta y Titular:</strong></td>"
  loc_C422EE: PopAdLdVar
  loc_C422EF: FLdPr Me
  loc_C422F2: MemLdRfVar from_stack_1.global_64
  loc_C422F5: LdPrVar
  loc_C422F7: LateMemCall
  loc_C422FD: LitStr "        <td>"
  loc_C42300: FMemLdR4 var_8C(0)
  loc_C42305: ConcatStr
  loc_C42306: FStStrNoPop var_B0
  loc_C42309: LitStr " - "
  loc_C4230C: ConcatStr
  loc_C4230D: FStStrNoPop var_B4
  loc_C42310: FMemLdR4 var_8C(4)
  loc_C42315: ConcatStr
  loc_C42316: FStStrNoPop var_B8
  loc_C42319: LitStr "</td>"
  loc_C4231C: ConcatStr
  loc_C4231D: CVarStr var_EC
  loc_C42320: PopAdLdVar
  loc_C42321: FLdPr Me
  loc_C42324: MemLdRfVar from_stack_1.global_64
  loc_C42327: LdPrVar
  loc_C42329: LateMemCall
  loc_C4232F: FFreeStr var_B0 = "": var_B4 = ""
  loc_C42338: FFree1Var var_EC = ""
  loc_C4233B: LitVarStr var_9C, "        </tr>"
  loc_C42340: PopAdLdVar
  loc_C42341: FLdPr Me
  loc_C42344: MemLdRfVar from_stack_1.global_64
  loc_C42347: LdPrVar
  loc_C42349: LateMemCall
  loc_C4234F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C42354: PopAdLdVar
  loc_C42355: FLdPr Me
  loc_C42358: MemLdRfVar from_stack_1.global_64
  loc_C4235B: LdPrVar
  loc_C4235D: LateMemCall
  loc_C42363: LitVarStr var_9C, "        <td align=""right""><strong>Concepto:</strong></td>"
  loc_C42368: PopAdLdVar
  loc_C42369: FLdPr Me
  loc_C4236C: MemLdRfVar from_stack_1.global_64
  loc_C4236F: LdPrVar
  loc_C42371: LateMemCall
  loc_C42377: LitStr "        <td>"
  loc_C4237A: FMemLdR4 var_8C(8)
  loc_C4237F: ConcatStr
  loc_C42380: FStStrNoPop var_B0
  loc_C42383: LitStr " - "
  loc_C42386: ConcatStr
  loc_C42387: FStStrNoPop var_B4
  loc_C4238A: FMemLdR4 var_8C(12)
  loc_C4238F: ConcatStr
  loc_C42390: FStStrNoPop var_B8
  loc_C42393: LitStr "</td>"
  loc_C42396: ConcatStr
  loc_C42397: CVarStr var_EC
  loc_C4239A: PopAdLdVar
  loc_C4239B: FLdPr Me
  loc_C4239E: MemLdRfVar from_stack_1.global_64
  loc_C423A1: LdPrVar
  loc_C423A3: LateMemCall
  loc_C423A9: FFreeStr var_B0 = "": var_B4 = ""
  loc_C423B2: FFree1Var var_EC = ""
  loc_C423B5: LitVarStr var_9C, "      </tr>"
  loc_C423BA: PopAdLdVar
  loc_C423BB: FLdPr Me
  loc_C423BE: MemLdRfVar from_stack_1.global_64
  loc_C423C1: LdPrVar
  loc_C423C3: LateMemCall
  loc_C423C9: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C423CE: PopAdLdVar
  loc_C423CF: FLdPr Me
  loc_C423D2: MemLdRfVar from_stack_1.global_64
  loc_C423D5: LdPrVar
  loc_C423D7: LateMemCall
  loc_C423DD: LitVarStr var_9C, "        <td align=""right""><strong>Tipo de Plan:</strong></td>"
  loc_C423E2: PopAdLdVar
  loc_C423E3: FLdPr Me
  loc_C423E6: MemLdRfVar from_stack_1.global_64
  loc_C423E9: LdPrVar
  loc_C423EB: LateMemCall
  loc_C423F1: LitStr "        <td>"
  loc_C423F4: FMemLdR4 var_8C(16)
  loc_C423F9: ConcatStr
  loc_C423FA: FStStrNoPop var_B0
  loc_C423FD: LitStr "</td>"
  loc_C42400: ConcatStr
  loc_C42401: CVarStr var_EC
  loc_C42404: PopAdLdVar
  loc_C42405: FLdPr Me
  loc_C42408: MemLdRfVar from_stack_1.global_64
  loc_C4240B: LdPrVar
  loc_C4240D: LateMemCall
  loc_C42413: FFree1Str var_B0
  loc_C42416: FFree1Var var_EC = ""
  loc_C42419: LitVarStr var_9C, "      </tr>"
  loc_C4241E: PopAdLdVar
  loc_C4241F: FLdPr Me
  loc_C42422: MemLdRfVar from_stack_1.global_64
  loc_C42425: LdPrVar
  loc_C42427: LateMemCall
  loc_C4242D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C42432: PopAdLdVar
  loc_C42433: FLdPr Me
  loc_C42436: MemLdRfVar from_stack_1.global_64
  loc_C42439: LdPrVar
  loc_C4243B: LateMemCall
  loc_C42441: LitVarStr var_9C, "        <td align=""right""><strong>Importe del Plan:</strong></td>"
  loc_C42446: PopAdLdVar
  loc_C42447: FLdPr Me
  loc_C4244A: MemLdRfVar from_stack_1.global_64
  loc_C4244D: LdPrVar
  loc_C4244F: LateMemCall
  loc_C42455: LitStr "        <td>$ "
  loc_C42458: FMemLdR4 var_8C(36)
  loc_C4245D: ConcatStr
  loc_C4245E: FStStrNoPop var_B0
  loc_C42461: LitStr "</td>"
  loc_C42464: ConcatStr
  loc_C42465: CVarStr var_EC
  loc_C42468: PopAdLdVar
  loc_C42469: FLdPr Me
  loc_C4246C: MemLdRfVar from_stack_1.global_64
  loc_C4246F: LdPrVar
  loc_C42471: LateMemCall
  loc_C42477: FFree1Str var_B0
  loc_C4247A: FFree1Var var_EC = ""
  loc_C4247D: LitVarStr var_9C, "      </tr>"
  loc_C42482: PopAdLdVar
  loc_C42483: FLdPr Me
  loc_C42486: MemLdRfVar from_stack_1.global_64
  loc_C42489: LdPrVar
  loc_C4248B: LateMemCall
  loc_C42491: LitVarStr var_9C, "    </table></th>"
  loc_C42496: PopAdLdVar
  loc_C42497: FLdPr Me
  loc_C4249A: MemLdRfVar from_stack_1.global_64
  loc_C4249D: LdPrVar
  loc_C4249F: LateMemCall
  loc_C424A5: LitVarStr var_9C, "  </tr>"
  loc_C424AA: PopAdLdVar
  loc_C424AB: FLdPr Me
  loc_C424AE: MemLdRfVar from_stack_1.global_64
  loc_C424B1: LdPrVar
  loc_C424B3: LateMemCall
  loc_C424B9: LitVarStr var_9C, "</table>"
  loc_C424BE: PopAdLdVar
  loc_C424BF: FLdPr Me
  loc_C424C2: MemLdRfVar from_stack_1.global_64
  loc_C424C5: LdPrVar
  loc_C424C7: LateMemCall
  loc_C424CD: LitVarStr var_9C, "<br>"
  loc_C424D2: PopAdLdVar
  loc_C424D3: FLdPr Me
  loc_C424D6: MemLdRfVar from_stack_1.global_64
  loc_C424D9: LdPrVar
  loc_C424DB: LateMemCall
  loc_C424E1: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C424E6: PopAdLdVar
  loc_C424E7: FLdPr Me
  loc_C424EA: MemLdRfVar from_stack_1.global_64
  loc_C424ED: LdPrVar
  loc_C424EF: LateMemCall
  loc_C424F5: LitVarStr var_9C, " <THEAD>"
  loc_C424FA: PopAdLdVar
  loc_C424FB: FLdPr Me
  loc_C424FE: MemLdRfVar from_stack_1.global_64
  loc_C42501: LdPrVar
  loc_C42503: LateMemCall
  loc_C42509: LitVarStr var_9C, " <tr align=""center"" class=""Encabezado"">"
  loc_C4250E: PopAdLdVar
  loc_C4250F: FLdPr Me
  loc_C42512: MemLdRfVar from_stack_1.global_64
  loc_C42515: LdPrVar
  loc_C42517: LateMemCall
  loc_C4251D: LitVarStr var_9C, "     <th>Cuota</th>"
  loc_C42522: PopAdLdVar
  loc_C42523: FLdPr Me
  loc_C42526: MemLdRfVar from_stack_1.global_64
  loc_C42529: LdPrVar
  loc_C4252B: LateMemCall
  loc_C42531: LitVarStr var_9C, "     <th>F. Vencim.</th>"
  loc_C42536: PopAdLdVar
  loc_C42537: FLdPr Me
  loc_C4253A: MemLdRfVar from_stack_1.global_64
  loc_C4253D: LdPrVar
  loc_C4253F: LateMemCall
  loc_C42545: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Capital</th>"
  loc_C4254A: PopAdLdVar
  loc_C4254B: FLdPr Me
  loc_C4254E: MemLdRfVar from_stack_1.global_64
  loc_C42551: LdPrVar
  loc_C42553: LateMemCall
  loc_C42559: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Desc. Capital</th>"
  loc_C4255E: PopAdLdVar
  loc_C4255F: FLdPr Me
  loc_C42562: MemLdRfVar from_stack_1.global_64
  loc_C42565: LdPrVar
  loc_C42567: LateMemCall
  loc_C4256D: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Recargo</th>"
  loc_C42572: PopAdLdVar
  loc_C42573: FLdPr Me
  loc_C42576: MemLdRfVar from_stack_1.global_64
  loc_C42579: LdPrVar
  loc_C4257B: LateMemCall
  loc_C42581: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Desc. Recargo</th>"
  loc_C42586: PopAdLdVar
  loc_C42587: FLdPr Me
  loc_C4258A: MemLdRfVar from_stack_1.global_64
  loc_C4258D: LdPrVar
  loc_C4258F: LateMemCall
  loc_C42595: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Apremio</th>"
  loc_C4259A: PopAdLdVar
  loc_C4259B: FLdPr Me
  loc_C4259E: MemLdRfVar from_stack_1.global_64
  loc_C425A1: LdPrVar
  loc_C425A3: LateMemCall
  loc_C425A9: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Inter&eacute;s</th>"
  loc_C425AE: PopAdLdVar
  loc_C425AF: FLdPr Me
  loc_C425B2: MemLdRfVar from_stack_1.global_64
  loc_C425B5: LdPrVar
  loc_C425B7: LateMemCall
  loc_C425BD: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>VALOR CUOTA</th>"
  loc_C425C2: PopAdLdVar
  loc_C425C3: FLdPr Me
  loc_C425C6: MemLdRfVar from_stack_1.global_64
  loc_C425C9: LdPrVar
  loc_C425CB: LateMemCall
  loc_C425D1: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Saldo</th>"
  loc_C425D6: PopAdLdVar
  loc_C425D7: FLdPr Me
  loc_C425DA: MemLdRfVar from_stack_1.global_64
  loc_C425DD: LdPrVar
  loc_C425DF: LateMemCall
  loc_C425E5: LitVarStr var_9C, "  </tr>"
  loc_C425EA: PopAdLdVar
  loc_C425EB: FLdPr Me
  loc_C425EE: MemLdRfVar from_stack_1.global_64
  loc_C425F1: LdPrVar
  loc_C425F3: LateMemCall
  loc_C425F9: LitVarStr var_9C, " </THEAD>"
  loc_C425FE: PopAdLdVar
  loc_C425FF: FLdPr Me
  loc_C42602: MemLdRfVar from_stack_1.global_64
  loc_C42605: LdPrVar
  loc_C42607: LateMemCall
  loc_C4260D: LitI2_Byte 1
  loc_C4260F: FLdPr Me
  loc_C42612: MemLdRfVar from_stack_1.global_122
  loc_C42615: FMemLdR4 var_8C(40)
  loc_C4261A: LitI2_Byte 1
  loc_C4261C: FnUBound
  loc_C4261E: CI2I4
  loc_C4261F: ForI2 var_104
  loc_C42625: FLdPr Me
  loc_C42628: MemLdI2 global_122
  loc_C4262B: CI4UI1
  loc_C4262C: FMemLdR4 var_8C(40)
  loc_C42631: AryLock
  loc_C42634: Ary1LdRf
  loc_C42635: FStR4 var_10C
  loc_C42638: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C4263D: PopAdLdVar
  loc_C4263E: FLdPr Me
  loc_C42641: MemLdRfVar from_stack_1.global_64
  loc_C42644: LdPrVar
  loc_C42646: LateMemCall
  loc_C4264C: LitStr vbNullString
  loc_C4264F: LitI2_Byte 0
  loc_C42651: LitI2_Byte 0
  loc_C42653: LitI2_Byte 0
  loc_C42655: LitStr "right"
  loc_C42658: FMemLdR4 var_10C(0)
  loc_C4265D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C42662: CVarStr var_EC
  loc_C42665: PopAdLdVar
  loc_C42666: FLdPr Me
  loc_C42669: MemLdRfVar from_stack_1.global_64
  loc_C4266C: LdPrVar
  loc_C4266E: LateMemCall
  loc_C42674: FFree1Var var_EC = ""
  loc_C42677: LitStr vbNullString
  loc_C4267A: LitI2_Byte 0
  loc_C4267C: LitI2_Byte 0
  loc_C4267E: LitI2_Byte 0
  loc_C42680: LitStr "center"
  loc_C42683: FMemLdR4 var_10C(4)
  loc_C42688: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C4268D: CVarStr var_EC
  loc_C42690: PopAdLdVar
  loc_C42691: FLdPr Me
  loc_C42694: MemLdRfVar from_stack_1.global_64
  loc_C42697: LdPrVar
  loc_C42699: LateMemCall
  loc_C4269F: FFree1Var var_EC = ""
  loc_C426A2: LitStr vbNullString
  loc_C426A5: LitI2_Byte 0
  loc_C426A7: LitI2_Byte 0
  loc_C426A9: LitI2_Byte 0
  loc_C426AB: LitStr "right"
  loc_C426AE: FMemLdR4 var_10C(8)
  loc_C426B3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C426B8: CVarStr var_EC
  loc_C426BB: PopAdLdVar
  loc_C426BC: FLdPr Me
  loc_C426BF: MemLdRfVar from_stack_1.global_64
  loc_C426C2: LdPrVar
  loc_C426C4: LateMemCall
  loc_C426CA: FFree1Var var_EC = ""
  loc_C426CD: LitStr vbNullString
  loc_C426D0: LitI2_Byte 0
  loc_C426D2: LitI2_Byte 0
  loc_C426D4: LitI2_Byte 0
  loc_C426D6: LitStr "right"
  loc_C426D9: FMemLdR4 var_10C(12)
  loc_C426DE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C426E3: CVarStr var_EC
  loc_C426E6: PopAdLdVar
  loc_C426E7: FLdPr Me
  loc_C426EA: MemLdRfVar from_stack_1.global_64
  loc_C426ED: LdPrVar
  loc_C426EF: LateMemCall
  loc_C426F5: FFree1Var var_EC = ""
  loc_C426F8: LitStr vbNullString
  loc_C426FB: LitI2_Byte 0
  loc_C426FD: LitI2_Byte 0
  loc_C426FF: LitI2_Byte 0
  loc_C42701: LitStr "right"
  loc_C42704: FMemLdR4 var_10C(16)
  loc_C42709: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C4270E: CVarStr var_EC
  loc_C42711: PopAdLdVar
  loc_C42712: FLdPr Me
  loc_C42715: MemLdRfVar from_stack_1.global_64
  loc_C42718: LdPrVar
  loc_C4271A: LateMemCall
  loc_C42720: FFree1Var var_EC = ""
  loc_C42723: LitStr vbNullString
  loc_C42726: LitI2_Byte 0
  loc_C42728: LitI2_Byte 0
  loc_C4272A: LitI2_Byte 0
  loc_C4272C: LitStr "right"
  loc_C4272F: FMemLdR4 var_10C(20)
  loc_C42734: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C42739: CVarStr var_EC
  loc_C4273C: PopAdLdVar
  loc_C4273D: FLdPr Me
  loc_C42740: MemLdRfVar from_stack_1.global_64
  loc_C42743: LdPrVar
  loc_C42745: LateMemCall
  loc_C4274B: FFree1Var var_EC = ""
  loc_C4274E: LitStr vbNullString
  loc_C42751: LitI2_Byte 0
  loc_C42753: LitI2_Byte 0
  loc_C42755: LitI2_Byte 0
  loc_C42757: LitStr "right"
  loc_C4275A: FMemLdR4 var_10C(28)
  loc_C4275F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C42764: CVarStr var_EC
  loc_C42767: PopAdLdVar
  loc_C42768: FLdPr Me
  loc_C4276B: MemLdRfVar from_stack_1.global_64
  loc_C4276E: LdPrVar
  loc_C42770: LateMemCall
  loc_C42776: FFree1Var var_EC = ""
  loc_C42779: LitStr vbNullString
  loc_C4277C: LitI2_Byte 0
  loc_C4277E: LitI2_Byte 0
  loc_C42780: LitI2_Byte 0
  loc_C42782: LitStr "right"
  loc_C42785: FMemLdR4 var_10C(24)
  loc_C4278A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C4278F: CVarStr var_EC
  loc_C42792: PopAdLdVar
  loc_C42793: FLdPr Me
  loc_C42796: MemLdRfVar from_stack_1.global_64
  loc_C42799: LdPrVar
  loc_C4279B: LateMemCall
  loc_C427A1: FFree1Var var_EC = ""
  loc_C427A4: LitStr vbNullString
  loc_C427A7: LitI2_Byte 0
  loc_C427A9: LitI2_Byte 0
  loc_C427AB: LitI2_Byte 0
  loc_C427AD: LitStr "right"
  loc_C427B0: FMemLdR4 var_10C(32)
  loc_C427B5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C427BA: CVarStr var_EC
  loc_C427BD: PopAdLdVar
  loc_C427BE: FLdPr Me
  loc_C427C1: MemLdRfVar from_stack_1.global_64
  loc_C427C4: LdPrVar
  loc_C427C6: LateMemCall
  loc_C427CC: FFree1Var var_EC = ""
  loc_C427CF: LitStr vbNullString
  loc_C427D2: LitI2_Byte 0
  loc_C427D4: LitI2_Byte 0
  loc_C427D6: LitI2_Byte 0
  loc_C427D8: LitStr "right"
  loc_C427DB: FMemLdR4 var_10C(36)
  loc_C427E0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C427E5: CVarStr var_EC
  loc_C427E8: PopAdLdVar
  loc_C427E9: FLdPr Me
  loc_C427EC: MemLdRfVar from_stack_1.global_64
  loc_C427EF: LdPrVar
  loc_C427F1: LateMemCall
  loc_C427F7: FFree1Var var_EC = ""
  loc_C427FA: LitVarStr var_9C, "     </tr>"
  loc_C427FF: PopAdLdVar
  loc_C42800: FLdPr Me
  loc_C42803: MemLdRfVar from_stack_1.global_64
  loc_C42806: LdPrVar
  loc_C42808: LateMemCall
  loc_C4280E: LitI4 0
  loc_C42813: FStR4 var_10C
  loc_C42816: AryUnlock
  loc_C42819: FLdPr Me
  loc_C4281C: MemLdRfVar from_stack_1.global_122
  loc_C4281F: NextI2 var_104, loc_C42625
  loc_C42824: LitVarStr var_9C, " <tr align=""right"">"
  loc_C42829: PopAdLdVar
  loc_C4282A: FLdPr Me
  loc_C4282D: MemLdRfVar from_stack_1.global_64
  loc_C42830: LdPrVar
  loc_C42832: LateMemCall
  loc_C42838: LitVarStr var_9C, "     <td colspan=""2"" align=""center"" class=""Encabezado"">TOTALES</td>"
  loc_C4283D: PopAdLdVar
  loc_C4283E: FLdPr Me
  loc_C42841: MemLdRfVar from_stack_1.global_64
  loc_C42844: LdPrVar
  loc_C42846: LateMemCall
  loc_C4284C: LitStr "     <td class=""SubTotal"">"
  loc_C4284F: LitI4 1
  loc_C42854: FMemLdR4 var_8C(44)
  loc_C42859: Ary1LdPr
  loc_C4285A: MemLdStr global_8
  loc_C4285D: ConcatStr
  loc_C4285E: FStStrNoPop var_B0
  loc_C42861: LitStr "</td>"
  loc_C42864: ConcatStr
  loc_C42865: CVarStr var_EC
  loc_C42868: PopAdLdVar
  loc_C42869: FLdPr Me
  loc_C4286C: MemLdRfVar from_stack_1.global_64
  loc_C4286F: LdPrVar
  loc_C42871: LateMemCall
  loc_C42877: FFree1Str var_B0
  loc_C4287A: FFree1Var var_EC = ""
  loc_C4287D: LitStr "     <td class=""SubTotal"">"
  loc_C42880: LitI4 1
  loc_C42885: FMemLdR4 var_8C(44)
  loc_C4288A: Ary1LdPr
  loc_C4288B: MemLdStr global_12
  loc_C4288E: ConcatStr
  loc_C4288F: FStStrNoPop var_B0
  loc_C42892: LitStr "</td>"
  loc_C42895: ConcatStr
  loc_C42896: CVarStr var_EC
  loc_C42899: PopAdLdVar
  loc_C4289A: FLdPr Me
  loc_C4289D: MemLdRfVar from_stack_1.global_64
  loc_C428A0: LdPrVar
  loc_C428A2: LateMemCall
  loc_C428A8: FFree1Str var_B0
  loc_C428AB: FFree1Var var_EC = ""
  loc_C428AE: LitStr "     <td class=""SubTotal"">"
  loc_C428B1: LitI4 1
  loc_C428B6: FMemLdR4 var_8C(44)
  loc_C428BB: Ary1LdPr
  loc_C428BC: MemLdStr global_16
  loc_C428BF: ConcatStr
  loc_C428C0: FStStrNoPop var_B0
  loc_C428C3: LitStr "</td>"
  loc_C428C6: ConcatStr
  loc_C428C7: CVarStr var_EC
  loc_C428CA: PopAdLdVar
  loc_C428CB: FLdPr Me
  loc_C428CE: MemLdRfVar from_stack_1.global_64
  loc_C428D1: LdPrVar
  loc_C428D3: LateMemCall
  loc_C428D9: FFree1Str var_B0
  loc_C428DC: FFree1Var var_EC = ""
  loc_C428DF: LitStr "     <td class=""SubTotal"">"
  loc_C428E2: LitI4 1
  loc_C428E7: FMemLdR4 var_8C(44)
  loc_C428EC: Ary1LdPr
  loc_C428ED: MemLdStr global_20
  loc_C428F0: ConcatStr
  loc_C428F1: FStStrNoPop var_B0
  loc_C428F4: LitStr "</td>"
  loc_C428F7: ConcatStr
  loc_C428F8: CVarStr var_EC
  loc_C428FB: PopAdLdVar
  loc_C428FC: FLdPr Me
  loc_C428FF: MemLdRfVar from_stack_1.global_64
  loc_C42902: LdPrVar
  loc_C42904: LateMemCall
  loc_C4290A: FFree1Str var_B0
  loc_C4290D: FFree1Var var_EC = ""
  loc_C42910: LitStr "     <td class=""SubTotal"">"
  loc_C42913: LitI4 1
  loc_C42918: FMemLdR4 var_8C(44)
  loc_C4291D: Ary1LdPr
  loc_C4291E: MemLdStr global_28
  loc_C42921: ConcatStr
  loc_C42922: FStStrNoPop var_B0
  loc_C42925: LitStr "</td>"
  loc_C42928: ConcatStr
  loc_C42929: CVarStr var_EC
  loc_C4292C: PopAdLdVar
  loc_C4292D: FLdPr Me
  loc_C42930: MemLdRfVar from_stack_1.global_64
  loc_C42933: LdPrVar
  loc_C42935: LateMemCall
  loc_C4293B: FFree1Str var_B0
  loc_C4293E: FFree1Var var_EC = ""
  loc_C42941: LitStr "     <td class=""SubTotal"">"
  loc_C42944: LitI4 1
  loc_C42949: FMemLdR4 var_8C(44)
  loc_C4294E: Ary1LdPr
  loc_C4294F: MemLdStr global_24
  loc_C42952: ConcatStr
  loc_C42953: FStStrNoPop var_B0
  loc_C42956: LitStr "</td>"
  loc_C42959: ConcatStr
  loc_C4295A: CVarStr var_EC
  loc_C4295D: PopAdLdVar
  loc_C4295E: FLdPr Me
  loc_C42961: MemLdRfVar from_stack_1.global_64
  loc_C42964: LdPrVar
  loc_C42966: LateMemCall
  loc_C4296C: FFree1Str var_B0
  loc_C4296F: FFree1Var var_EC = ""
  loc_C42972: LitStr "     <td class=""SubTotal"">"
  loc_C42975: LitI4 1
  loc_C4297A: FMemLdR4 var_8C(44)
  loc_C4297F: Ary1LdPr
  loc_C42980: MemLdStr global_32
  loc_C42983: ConcatStr
  loc_C42984: FStStrNoPop var_B0
  loc_C42987: LitStr "</td>"
  loc_C4298A: ConcatStr
  loc_C4298B: CVarStr var_EC
  loc_C4298E: PopAdLdVar
  loc_C4298F: FLdPr Me
  loc_C42992: MemLdRfVar from_stack_1.global_64
  loc_C42995: LdPrVar
  loc_C42997: LateMemCall
  loc_C4299D: FFree1Str var_B0
  loc_C429A0: FFree1Var var_EC = ""
  loc_C429A3: LitVarStr var_9C, "     <td class=""Encabezado"">&nbsp;</td>"
  loc_C429A8: PopAdLdVar
  loc_C429A9: FLdPr Me
  loc_C429AC: MemLdRfVar from_stack_1.global_64
  loc_C429AF: LdPrVar
  loc_C429B1: LateMemCall
  loc_C429B7: LitVarStr var_9C, "  </tr>"
  loc_C429BC: PopAdLdVar
  loc_C429BD: FLdPr Me
  loc_C429C0: MemLdRfVar from_stack_1.global_64
  loc_C429C3: LdPrVar
  loc_C429C5: LateMemCall
  loc_C429CB: LitVarStr var_9C, "</table>"
  loc_C429D0: PopAdLdVar
  loc_C429D1: FLdPr Me
  loc_C429D4: MemLdRfVar from_stack_1.global_64
  loc_C429D7: LdPrVar
  loc_C429D9: LateMemCall
  loc_C429DF: LitVarStr var_9C, "<p>&nbsp;</p>"
  loc_C429E4: PopAdLdVar
  loc_C429E5: FLdPr Me
  loc_C429E8: MemLdRfVar from_stack_1.global_64
  loc_C429EB: LdPrVar
  loc_C429ED: LateMemCall
  loc_C429F3: LitVarStr var_9C, "<table border=""0"" align=""center"">"
  loc_C429F8: PopAdLdVar
  loc_C429F9: FLdPr Me
  loc_C429FC: MemLdRfVar from_stack_1.global_64
  loc_C429FF: LdPrVar
  loc_C42A01: LateMemCall
  loc_C42A07: LitVarStr var_9C, "  <tr align=""center"" class=""Titulo1"">"
  loc_C42A0C: PopAdLdVar
  loc_C42A0D: FLdPr Me
  loc_C42A10: MemLdRfVar from_stack_1.global_64
  loc_C42A13: LdPrVar
  loc_C42A15: LateMemCall
  loc_C42A1B: LitVarStr var_9C, "    <td width=""33" & Chr(37) & """>..........................................................</td>"
  loc_C42A20: PopAdLdVar
  loc_C42A21: FLdPr Me
  loc_C42A24: MemLdRfVar from_stack_1.global_64
  loc_C42A27: LdPrVar
  loc_C42A29: LateMemCall
  loc_C42A2F: LitVarStr var_9C, "    <td width=""200"" rowspan=""2"">&nbsp;</td>"
  loc_C42A34: PopAdLdVar
  loc_C42A35: FLdPr Me
  loc_C42A38: MemLdRfVar from_stack_1.global_64
  loc_C42A3B: LdPrVar
  loc_C42A3D: LateMemCall
  loc_C42A43: LitVarStr var_9C, "    <td width=""33" & Chr(37) & """>..........................................................</td>"
  loc_C42A48: PopAdLdVar
  loc_C42A49: FLdPr Me
  loc_C42A4C: MemLdRfVar from_stack_1.global_64
  loc_C42A4F: LdPrVar
  loc_C42A51: LateMemCall
  loc_C42A57: LitVarStr var_9C, "  </tr>"
  loc_C42A5C: PopAdLdVar
  loc_C42A5D: FLdPr Me
  loc_C42A60: MemLdRfVar from_stack_1.global_64
  loc_C42A63: LdPrVar
  loc_C42A65: LateMemCall
  loc_C42A6B: LitVarStr var_9C, "  <tr align=""center"" valign=""top"" class=""DatosEncabezado"">"
  loc_C42A70: PopAdLdVar
  loc_C42A71: FLdPr Me
  loc_C42A74: MemLdRfVar from_stack_1.global_64
  loc_C42A77: LdPrVar
  loc_C42A79: LateMemCall
  loc_C42A7F: LitStr "    <td>"
  loc_C42A82: FMemLdR4 var_8C(20)
  loc_C42A87: ConcatStr
  loc_C42A88: FStStrNoPop var_B0
  loc_C42A8B: LitStr "</td>"
  loc_C42A8E: ConcatStr
  loc_C42A8F: CVarStr var_EC
  loc_C42A92: PopAdLdVar
  loc_C42A93: FLdPr Me
  loc_C42A96: MemLdRfVar from_stack_1.global_64
  loc_C42A99: LdPrVar
  loc_C42A9B: LateMemCall
  loc_C42AA1: FFree1Str var_B0
  loc_C42AA4: FFree1Var var_EC = ""
  loc_C42AA7: LitStr "    <td>Firma del Contribuyente y/o fiador solidario "
  loc_C42AAA: LitStr "<strong>"
  loc_C42AAD: ConcatStr
  loc_C42AAE: FStStrNoPop var_B0
  loc_C42AB1: FMemLdR4 var_8C(32)
  loc_C42AB6: ConcatStr
  loc_C42AB7: FStStrNoPop var_B4
  loc_C42ABA: LitStr "</strong></td>"
  loc_C42ABD: ConcatStr
  loc_C42ABE: CVarStr var_EC
  loc_C42AC1: PopAdLdVar
  loc_C42AC2: FLdPr Me
  loc_C42AC5: MemLdRfVar from_stack_1.global_64
  loc_C42AC8: LdPrVar
  loc_C42ACA: LateMemCall
  loc_C42AD0: FFreeStr var_B0 = ""
  loc_C42AD7: FFree1Var var_EC = ""
  loc_C42ADA: LitVarStr var_9C, "  </tr>"
  loc_C42ADF: PopAdLdVar
  loc_C42AE0: FLdPr Me
  loc_C42AE3: MemLdRfVar from_stack_1.global_64
  loc_C42AE6: LdPrVar
  loc_C42AE8: LateMemCall
  loc_C42AEE: LitVarStr var_9C, "  <tr align=""center"" valign=""top"" class=""DatosEncabezado"">"
  loc_C42AF3: PopAdLdVar
  loc_C42AF4: FLdPr Me
  loc_C42AF7: MemLdRfVar from_stack_1.global_64
  loc_C42AFA: LdPrVar
  loc_C42AFC: LateMemCall
  loc_C42B02: LitVarStr var_9C, "    <td width=""33" & Chr(37) & """>                                                          </td>"
  loc_C42B07: PopAdLdVar
  loc_C42B08: FLdPr Me
  loc_C42B0B: MemLdRfVar from_stack_1.global_64
  loc_C42B0E: LdPrVar
  loc_C42B10: LateMemCall
  loc_C42B16: LitVarStr var_9C, "    <td width=""200"" rowspan=""2"">&nbsp;</td>"
  loc_C42B1B: PopAdLdVar
  loc_C42B1C: FLdPr Me
  loc_C42B1F: MemLdRfVar from_stack_1.global_64
  loc_C42B22: LdPrVar
  loc_C42B24: LateMemCall
  loc_C42B2A: FMemLdR4 var_8C(24)
  loc_C42B2F: FnLenStr
  loc_C42B30: LitI4 &HB
  loc_C42B35: EqI4
  loc_C42B36: BranchF loc_C42B92
  loc_C42B39: LitVarStr var_11C, "    <td width=""33" & Chr(37) & """>"
  loc_C42B3E: LitI4 1
  loc_C42B43: LitI4 1
  loc_C42B48: LitVarStr var_AC, "00-00000000-0"
  loc_C42B4D: FStVarCopyObj var_EC
  loc_C42B50: FLdRfVar var_EC
  loc_C42B53: FMemLdRf 9CB8
  loc_C42B58: CVarRef
  loc_C42B5D: FLdRfVar var_100
  loc_C42B60: ImpAdCallFPR4  = Format(, )
  loc_C42B65: FLdRfVar var_100
  loc_C42B68: ConcatVar var_12C
  loc_C42B6C: LitVarStr var_13C, "</td>"
  loc_C42B71: ConcatVar var_14C
  loc_C42B75: PopAdLdVar
  loc_C42B76: FLdPr Me
  loc_C42B79: MemLdRfVar from_stack_1.global_64
  loc_C42B7C: LdPrVar
  loc_C42B7E: LateMemCall
  loc_C42B84: FFreeVar var_EC = "": var_100 = "": var_12C = ""
  loc_C42B8F: Branch loc_C42BBA
  loc_C42B92: LitStr "    <td width=""33" & Chr(37) & """>"
  loc_C42B95: FMemLdR4 var_8C(24)
  loc_C42B9A: ConcatStr
  loc_C42B9B: FStStrNoPop var_B0
  loc_C42B9E: LitStr "</td>"
  loc_C42BA1: ConcatStr
  loc_C42BA2: CVarStr var_EC
  loc_C42BA5: PopAdLdVar
  loc_C42BA6: FLdPr Me
  loc_C42BA9: MemLdRfVar from_stack_1.global_64
  loc_C42BAC: LdPrVar
  loc_C42BAE: LateMemCall
  loc_C42BB4: FFree1Str var_B0
  loc_C42BB7: FFree1Var var_EC = ""
  loc_C42BBA: LitVarStr var_9C, "  </tr>"
  loc_C42BBF: PopAdLdVar
  loc_C42BC0: FLdPr Me
  loc_C42BC3: MemLdRfVar from_stack_1.global_64
  loc_C42BC6: LdPrVar
  loc_C42BC8: LateMemCall
  loc_C42BCE: LitVarStr var_9C, "  <tr align=""center"" class=""DatosEncabezado""><td>&nbsp;</td><td> C.U.I.L - Numero de Documento</td></tr>"
  loc_C42BD3: PopAdLdVar
  loc_C42BD4: FLdPr Me
  loc_C42BD7: MemLdRfVar from_stack_1.global_64
  loc_C42BDA: LdPrVar
  loc_C42BDC: LateMemCall
  loc_C42BE2: LitVarStr var_9C, "  <tr align=""center"" valign=""top"" class=""DatosEncabezado"">"
  loc_C42BE7: PopAdLdVar
  loc_C42BE8: FLdPr Me
  loc_C42BEB: MemLdRfVar from_stack_1.global_64
  loc_C42BEE: LdPrVar
  loc_C42BF0: LateMemCall
  loc_C42BF6: LitVarStr var_9C, "    <td width=""33" & Chr(37) & """>                                                          </td>"
  loc_C42BFB: PopAdLdVar
  loc_C42BFC: FLdPr Me
  loc_C42BFF: MemLdRfVar from_stack_1.global_64
  loc_C42C02: LdPrVar
  loc_C42C04: LateMemCall
  loc_C42C0A: LitVarStr var_9C, "    <td width=""200"" rowspan=""2"">&nbsp;</td>"
  loc_C42C0F: PopAdLdVar
  loc_C42C10: FLdPr Me
  loc_C42C13: MemLdRfVar from_stack_1.global_64
  loc_C42C16: LdPrVar
  loc_C42C18: LateMemCall
  loc_C42C1E: LitStr "    <td width=""33" & Chr(37) & """>"
  loc_C42C21: FMemLdR4 var_8C(28)
  loc_C42C26: ConcatStr
  loc_C42C27: FStStrNoPop var_B0
  loc_C42C2A: LitStr "</td>"
  loc_C42C2D: ConcatStr
  loc_C42C2E: CVarStr var_EC
  loc_C42C31: PopAdLdVar
  loc_C42C32: FLdPr Me
  loc_C42C35: MemLdRfVar from_stack_1.global_64
  loc_C42C38: LdPrVar
  loc_C42C3A: LateMemCall
  loc_C42C40: FFree1Str var_B0
  loc_C42C43: FFree1Var var_EC = ""
  loc_C42C46: LitVarStr var_9C, "  </tr>"
  loc_C42C4B: PopAdLdVar
  loc_C42C4C: FLdPr Me
  loc_C42C4F: MemLdRfVar from_stack_1.global_64
  loc_C42C52: LdPrVar
  loc_C42C54: LateMemCall
  loc_C42C5A: LitVarStr var_9C, "  <tr align=""center"" class=""DatosEncabezado""><td>&nbsp;</td><td>Apellido y Nombre / Teléfono</td></tr>"
  loc_C42C5F: PopAdLdVar
  loc_C42C60: FLdPr Me
  loc_C42C63: MemLdRfVar from_stack_1.global_64
  loc_C42C66: LdPrVar
  loc_C42C68: LateMemCall
  loc_C42C6E: LitVarStr var_9C, "</table>"
  loc_C42C73: PopAdLdVar
  loc_C42C74: FLdPr Me
  loc_C42C77: MemLdRfVar from_stack_1.global_64
  loc_C42C7A: LdPrVar
  loc_C42C7C: LateMemCall
  loc_C42C82: LitVarStr var_9C, "<p class=""DatosEncabezado"">&nbsp;</p>"
  loc_C42C87: PopAdLdVar
  loc_C42C88: FLdPr Me
  loc_C42C8B: MemLdRfVar from_stack_1.global_64
  loc_C42C8E: LdPrVar
  loc_C42C90: LateMemCall
  loc_C42C96: LitI2_Byte &HFF
  loc_C42C98: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C42C9D: FStFPR8 var_164
  loc_C42CA0: LitI4 1
  loc_C42CA5: LitI4 1
  loc_C42CAA: LitVarStr var_AC, "dddd d \de "
  loc_C42CAF: FStVarCopyObj var_EC
  loc_C42CB2: FLdRfVar var_EC
  loc_C42CB5: FLdRfVar var_164
  loc_C42CB8: CVarRef
  loc_C42CBD: FLdRfVar var_100
  loc_C42CC0: ImpAdCallFPR4  = Format(, )
  loc_C42CC5: FLdRfVar var_B4
  loc_C42CC8: FLdRfVar var_100
  loc_C42CCB: CStrVarVal var_B0
  loc_C42CCF: Call Proc_212_31_A6EBC4()
  loc_C42CD4: FLdZeroAd var_B4
  loc_C42CD7: FStStr var_168
  loc_C42CDA: FFree1Str var_B0
  loc_C42CDD: FFreeVar var_EC = ""
  loc_C42CE4: LitI4 1
  loc_C42CE9: LitI4 1
  loc_C42CEE: LitVarStr var_AC, "mmmm \de yyyy - \Hora: hh:mm:ss"
  loc_C42CF3: FStVarCopyObj var_EC
  loc_C42CF6: FLdRfVar var_EC
  loc_C42CF9: FLdRfVar var_164
  loc_C42CFC: CVarRef
  loc_C42D01: FLdRfVar var_100
  loc_C42D04: ImpAdCallFPR4  = Format(, )
  loc_C42D09: ILdRf var_168
  loc_C42D0C: FLdRfVar var_B4
  loc_C42D0F: FLdRfVar var_100
  loc_C42D12: CStrVarVal var_B0
  loc_C42D16: Call Proc_212_31_A6EBC4()
  loc_C42D1B: ILdRf var_B4
  loc_C42D1E: ConcatStr
  loc_C42D1F: FStStr var_168
  loc_C42D22: FFreeStr var_B0 = ""
  loc_C42D29: FFreeVar var_EC = ""
  loc_C42D30: LitStr "<p class=""DatosEncabezado"">"
  loc_C42D33: LitStr "Guaymallén"
  loc_C42D36: ConcatStr
  loc_C42D37: FStStrNoPop var_B0
  loc_C42D3A: LitStr ", (Mza), "
  loc_C42D3D: ConcatStr
  loc_C42D3E: FStStrNoPop var_B4
  loc_C42D41: ILdRf var_168
  loc_C42D44: ConcatStr
  loc_C42D45: FStStrNoPop var_B8
  loc_C42D48: LitStr "</p>"
  loc_C42D4B: ConcatStr
  loc_C42D4C: CVarStr var_EC
  loc_C42D4F: PopAdLdVar
  loc_C42D50: FLdPr Me
  loc_C42D53: MemLdRfVar from_stack_1.global_64
  loc_C42D56: LdPrVar
  loc_C42D58: LateMemCall
  loc_C42D5E: FFreeStr var_B0 = "": var_B4 = ""
  loc_C42D67: FFree1Var var_EC = ""
  loc_C42D6A: LitVarStr var_9C, "<p align=""justify"" class=""DatosEncabezado"">La falta de pago del anticipo o una cuota, dará lugar a la caducidad del plan, aplicando las cuotas canceladas como pago a cuenta de la deuda."
  loc_C42D6F: PopAdLdVar
  loc_C42D70: FLdPr Me
  loc_C42D73: MemLdRfVar from_stack_1.global_64
  loc_C42D76: LdPrVar
  loc_C42D78: LateMemCall
  loc_C42D7E: LitVarStr var_9C, "</p>"
  loc_C42D83: PopAdLdVar
  loc_C42D84: FLdPr Me
  loc_C42D87: MemLdRfVar from_stack_1.global_64
  loc_C42D8A: LdPrVar
  loc_C42D8C: LateMemCall
  loc_C42D92: LitI4 0
  loc_C42D97: FStR4 var_8C
  loc_C42D9A: AryUnlock
  loc_C42D9D: ExitProcHresult
End Function

Private Function Proc_212_31_A6EBC4(arg_C) 'A6EBC4
  'Data Table: 4C76E8
  loc_A6EB60: ILdRf arg_C
  loc_A6EB63: FStStrCopy var_8C
  loc_A6EB66: ZeroRetVal
  loc_A6EB68: LitI4 1
  loc_A6EB6D: FLdRfVar var_8C
  loc_A6EB70: CVarRef
  loc_A6EB75: FLdRfVar var_AC
  loc_A6EB78: ImpAdCallFPR4  = Left(, )
  loc_A6EB7D: FLdRfVar var_AC
  loc_A6EB80: FLdRfVar var_BC
  loc_A6EB83: ImpAdCallFPR4  = Ucase()
  loc_A6EB88: FLdRfVar var_BC
  loc_A6EB8B: ILdRf var_8C
  loc_A6EB8E: FnLenStr
  loc_A6EB8F: LitI4 1
  loc_A6EB94: SubI4
  loc_A6EB95: FLdRfVar var_8C
  loc_A6EB98: CVarRef
  loc_A6EB9D: FLdRfVar var_DC
  loc_A6EBA0: ImpAdCallFPR4  = Right(, )
  loc_A6EBA5: FLdRfVar var_DC
  loc_A6EBA8: ConcatVar var_EC
  loc_A6EBAC: CStrVarTmp
  loc_A6EBAD: FStStr var_88
  loc_A6EBB0: FFreeVar var_AC = "": var_BC = "": var_DC = ""
  loc_A6EBBB: ExitProcCbHresult
End Function

Private Function Proc_212_32_9FAE34() '9FAE34
  'Data Table: 4C76E8
  loc_9FAE08: LitVarStr var_94, "</body>"
  loc_9FAE0D: PopAdLdVar
  loc_9FAE0E: FLdPr Me
  loc_9FAE11: MemLdRfVar from_stack_1.global_64
  loc_9FAE14: LdPrVar
  loc_9FAE16: LateMemCall
  loc_9FAE1C: LitVarStr var_94, "</html>"
  loc_9FAE21: PopAdLdVar
  loc_9FAE22: FLdPr Me
  loc_9FAE25: MemLdRfVar from_stack_1.global_64
  loc_9FAE28: LdPrVar
  loc_9FAE2A: LateMemCall
  loc_9FAE30: ExitProcHresult
End Function
