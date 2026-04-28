VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949a23
  Caption = "Acuerdo 3949 Anexo 23"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949a23.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10788
  ClientHeight = 3360
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 1680
    Width = 9015
    Height = 150
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA3949a23.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3105
    Width = 10785
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptA3949a23.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2040
    Width = 855
    Height = 735
    TabIndex = 6
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptA3949a23.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949a23.frx":0C04
    Left = 10080
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1800
    Width = 4815
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3360
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1800
    Width = 4095
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Caption = "25-05-2023"
    Left = 120
    Top = 0
    Width = 9015
    Height = 1575
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 3000
      Top = 360
      Width = 735
      Height = 420
      TabIndex = 0
      OleObjectBlob = "rptA3949a23.frx":0C68
    End
    Begin VB.ComboBox TrimestreCbo
      Style = 2
      Left = 3000
      Top = 840
      Width = 1815
      Height = 420
      TabIndex = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 1860
      Top = 840
      Width = 1050
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 2040
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9840
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptA3949a23.frx":0CD0
  End
End

Attribute VB_Name = "rptA3949a23"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() 'A03AE4
  'Data Table: 4A11B8
  loc_A03AB4: LitVarStr var_94, "Cerrando..."
  loc_A03AB9: PopAdLdVar
  loc_A03ABA: FLdPr Me
  loc_A03ABD: VCallAd Control_ID_statusBar
  loc_A03AC0: FStAdFunc var_A8
  loc_A03AC3: FLdPr var_A8
  loc_A03AC6: LateIdSt
  loc_A03ACB: FFree1Ad var_A8
  loc_A03ACE: ILdRf Me
  loc_A03AD1: FStAdNoPop
  loc_A03AD5: ImpAdLdRf MemVar_D9C5D8
  loc_A03AD8: NewIfNullPr Global
  loc_A03ADB: Global.Unload from_stack_1
  loc_A03AE0: FFree1Ad var_A8
  loc_A03AE3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CD904
  'Data Table: 4A11B8
  loc_9CD8EC: LitI2_Byte 0
  loc_9CD8EE: ILdRf Me
  loc_9CD8F1: CastAd
  loc_9CD8F4: FStAdFunc var_88
  loc_9CD8F7: FLdRfVar var_88
  loc_9CD8FA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CD8FF: FFree1Ad var_88
  loc_9CD902: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2EEC
  'Data Table: 4A11B8
  loc_9E2ED0: LitI2_Byte 0
  loc_9E2ED2: PopTmpLdAd2 var_8A
  loc_9E2ED5: ILdRf Me
  loc_9E2ED8: CastAd
  loc_9E2EDB: FStAdFunc var_88
  loc_9E2EDE: FLdRfVar var_88
  loc_9E2EE1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2EE6: FFree1Ad var_88
  loc_9E2EE9: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E357C
  'Data Table: 4A11B8
  loc_9E3560: LitI2_Byte &HFF
  loc_9E3562: LitI2_Byte 0
  loc_9E3564: ILdRf Me
  loc_9E3567: CastAd
  loc_9E356A: FStAdFunc var_88
  loc_9E356D: FLdRfVar var_88
  loc_9E3570: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3575: FFree1Ad var_88
  loc_9E3578: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD2634
  'Data Table: 4A11B8
  loc_AD2504: LitI2_Byte &HFF
  loc_AD2506: FLdPr Me
  loc_AD2509: MemStI2 bLogos
  loc_AD250C: LitI2_Byte 0
  loc_AD250E: FLdPr Me
  loc_AD2511: MemStI2 bGenerado
  loc_AD2514: LitI2_Byte 0
  loc_AD2516: ILdRf Me
  loc_AD2519: CastAd
  loc_AD251C: FStAdFunc var_88
  loc_AD251F: FLdRfVar var_88
  loc_AD2522: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AD2527: FFree1Ad var_88
  loc_AD252A: ImpAdLdI2 MemVar_D93034
  loc_AD252D: CStrUI1
  loc_AD252F: CVarStr var_98
  loc_AD2532: PopAdLdVar
  loc_AD2533: FLdPr Me
  loc_AD2536: VCallAd Control_ID_PeriInfoMsk
  loc_AD2539: FStAdFunc var_88
  loc_AD253C: FLdPr var_88
  loc_AD253F: LateIdSt
  loc_AD2544: FFree1Ad var_88
  loc_AD2547: FFree1Var var_98 = ""
  loc_AD254A: LitI2_Byte 0
  loc_AD254C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD2551: CVarDate var_98
  loc_AD2555: FLdRfVar var_B8
  loc_AD2558: ImpAdCallFPR4  = Month()
  loc_AD255D: FLdRfVar var_B8
  loc_AD2560: FStVar var_C8
  loc_AD2564: FFree1Var var_98 = ""
  loc_AD2567: FLdRfVar var_C8
  loc_AD256A: LitVarI2 var_D8, 1
  loc_AD256F: HardType
  loc_AD2570: LitVarI2 var_A8, 3
  loc_AD2575: HardType
  loc_AD2576: BetweenVar
  loc_AD2578: BranchF loc_AD2594
  loc_AD257B: LitI2_Byte 0
  loc_AD257D: FLdPr Me
  loc_AD2580: VCallAd Control_ID_TrimestreCbo
  loc_AD2583: FStAdFunc var_88
  loc_AD2586: FLdPr var_88
  loc_AD2589: Me.ListIndex = from_stack_1
  loc_AD258E: FFree1Ad var_88
  loc_AD2591: Branch loc_AD2618
  loc_AD2594: FLdRfVar var_C8
  loc_AD2597: LitVarI2 var_D8, 4
  loc_AD259C: HardType
  loc_AD259D: LitVarI2 var_A8, 6
  loc_AD25A2: HardType
  loc_AD25A3: BetweenVar
  loc_AD25A5: BranchF loc_AD25C1
  loc_AD25A8: LitI2_Byte 1
  loc_AD25AA: FLdPr Me
  loc_AD25AD: VCallAd Control_ID_TrimestreCbo
  loc_AD25B0: FStAdFunc var_88
  loc_AD25B3: FLdPr var_88
  loc_AD25B6: Me.ListIndex = from_stack_1
  loc_AD25BB: FFree1Ad var_88
  loc_AD25BE: Branch loc_AD2618
  loc_AD25C1: FLdRfVar var_C8
  loc_AD25C4: LitVarI2 var_D8, 7
  loc_AD25C9: HardType
  loc_AD25CA: LitVarI2 var_A8, 9
  loc_AD25CF: HardType
  loc_AD25D0: BetweenVar
  loc_AD25D2: BranchF loc_AD25EE
  loc_AD25D5: LitI2_Byte 2
  loc_AD25D7: FLdPr Me
  loc_AD25DA: VCallAd Control_ID_TrimestreCbo
  loc_AD25DD: FStAdFunc var_88
  loc_AD25E0: FLdPr var_88
  loc_AD25E3: Me.ListIndex = from_stack_1
  loc_AD25E8: FFree1Ad var_88
  loc_AD25EB: Branch loc_AD2618
  loc_AD25EE: FLdRfVar var_C8
  loc_AD25F1: LitVarI2 var_D8, 10
  loc_AD25F6: HardType
  loc_AD25F7: LitVarI2 var_A8, 12
  loc_AD25FC: HardType
  loc_AD25FD: BetweenVar
  loc_AD25FF: BranchF loc_AD2618
  loc_AD2602: LitI2_Byte 3
  loc_AD2604: FLdPr Me
  loc_AD2607: VCallAd Control_ID_TrimestreCbo
  loc_AD260A: FStAdFunc var_88
  loc_AD260D: FLdPr var_88
  loc_AD2610: Me.ListIndex = from_stack_1
  loc_AD2615: FFree1Ad var_88
  loc_AD2618: Call HabilitarCriterio()
  loc_AD261D: ILdRf Me
  loc_AD2620: CastAd
  loc_AD2623: FStAdFunc var_88
  loc_AD2626: FLdRfVar var_88
  loc_AD2629: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD262E: FFree1Ad var_88
  loc_AD2631: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A12970
  'Data Table: 4A11B8
  loc_A12938: FLdPr Me
  loc_A1293B: VCallAd Control_ID_statusBar
  loc_A1293E: FStAdFunc var_88
  loc_A12941: FLdPr var_88
  loc_A12944: LateIdLdVar var_98 DispID_1 0
  loc_A1294B: CStrVarTmp
  loc_A1294C: CVarStr var_A8
  loc_A1294F: PopAdLdVar
  loc_A12950: FLdPr Me
  loc_A12953: VCallAd Control_ID_statusBar
  loc_A12956: FStAdFunc var_BC
  loc_A12959: FLdPr var_BC
  loc_A1295C: LateIdSt
  loc_A12961: FFreeAd var_88 = ""
  loc_A12968: FFreeVar var_98 = ""
  loc_A1296F: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAC00C
  'Data Table: 4A11B8
  loc_AABF38: ILdRf Me
  loc_AABF3B: CastAd
  loc_AABF3E: FStAdFunc var_88
  loc_AABF41: FLdRfVar var_88
  loc_AABF44: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AABF49: FFree1Ad var_88
  loc_AABF4C: FLdPr Me
  loc_AABF4F: VCallAd Control_ID_TrimestreCbo
  loc_AABF52: FStAdFunc var_8C
  loc_AABF55: LitVar_Missing var_9C
  loc_AABF58: PopAdLdVar
  loc_AABF59: LitStr "Primero"
  loc_AABF5C: FLdPr var_8C
  loc_AABF5F: Me.AddItem from_stack_1, from_stack_2
  loc_AABF64: LitI4 3
  loc_AABF69: FLdRfVar var_9E
  loc_AABF6C: FLdPr var_8C
  loc_AABF6F:  = Me.NewIndex
  loc_AABF74: FLdI2 var_9E
  loc_AABF77: FLdPr var_8C
  loc_AABF7A: Me.ItemData = from_stack_1
  loc_AABF7F: LitVar_Missing var_9C
  loc_AABF82: PopAdLdVar
  loc_AABF83: LitStr "Segundo"
  loc_AABF86: FLdPr var_8C
  loc_AABF89: Me.AddItem from_stack_1, from_stack_2
  loc_AABF8E: LitI4 6
  loc_AABF93: FLdRfVar var_9E
  loc_AABF96: FLdPr var_8C
  loc_AABF99:  = Me.NewIndex
  loc_AABF9E: FLdI2 var_9E
  loc_AABFA1: FLdPr var_8C
  loc_AABFA4: Me.ItemData = from_stack_1
  loc_AABFA9: LitVar_Missing var_9C
  loc_AABFAC: PopAdLdVar
  loc_AABFAD: LitStr "Tercero"
  loc_AABFB0: FLdPr var_8C
  loc_AABFB3: Me.AddItem from_stack_1, from_stack_2
  loc_AABFB8: LitI4 9
  loc_AABFBD: FLdRfVar var_9E
  loc_AABFC0: FLdPr var_8C
  loc_AABFC3:  = Me.NewIndex
  loc_AABFC8: FLdI2 var_9E
  loc_AABFCB: FLdPr var_8C
  loc_AABFCE: Me.ItemData = from_stack_1
  loc_AABFD3: LitVar_Missing var_9C
  loc_AABFD6: PopAdLdVar
  loc_AABFD7: LitStr "Cuarto"
  loc_AABFDA: FLdPr var_8C
  loc_AABFDD: Me.AddItem from_stack_1, from_stack_2
  loc_AABFE2: LitI4 &HC
  loc_AABFE7: FLdRfVar var_9E
  loc_AABFEA: FLdPr var_8C
  loc_AABFED:  = Me.NewIndex
  loc_AABFF2: FLdI2 var_9E
  loc_AABFF5: FLdPr var_8C
  loc_AABFF8: Me.ItemData = from_stack_1
  loc_AABFFD: LitNothing
  loc_AABFFF: FStAd var_8C 
  loc_AAC003: Call cmdNueva_Click()
  loc_AAC008: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD2C8
  'Data Table: 4A11B8
  loc_9CD2B0: FLdPr Me
  loc_9CD2B3: VCallAd Control_ID_wbbReporte
  loc_9CD2B6: FStAdFunc var_88
  loc_9CD2B9: FLdRfVar var_88
  loc_9CD2BC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD2C1: FFree1Ad var_88
  loc_9CD2C4: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CD6A4
  'Data Table: 4A11B8
  loc_9CD68C: LitI2_Byte &HFF
  loc_9CD68E: ILdRf Me
  loc_9CD691: CastAd
  loc_9CD694: FStAdFunc var_88
  loc_9CD697: FLdRfVar var_88
  loc_9CD69A: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CD69F: FFree1Ad var_88
  loc_9CD6A2: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9BF240
  'Data Table: 4A11B8
  loc_9BF22C: FLdPr Me
  loc_9BF22F: VCallAd Control_ID_PeriInfoMsk
  loc_9BF232: CVarAd
  loc_9BF236: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF23B: FFree1Var var_94 = ""
  loc_9BF23E: ExitProcHresult
End Sub

Private Function PeriInfoMsk_UnknownEvent_8(arg_C) 'A73050
  'Data Table: 4A11B8
  loc_A72FE8: FLdPr Me
  loc_A72FEB: VCallAd Control_ID_PeriInfoMsk
  loc_A72FEE: FStAdFunc var_88
  loc_A72FF1: FLdPr var_88
  loc_A72FF4: LateIdLdVar var_98 DispID_22 0
  loc_A72FFB: PopAd
  loc_A72FFD: LitI2_Byte 0
  loc_A72FFF: FLdRfVar var_98
  loc_A73002: CStrVarTmp
  loc_A73003: FStStrNoPop var_9C
  loc_A73006: LitStr "Periodo"
  loc_A73009: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A7300E: FStStrNoPop var_A0
  loc_A73011: FLdPr Me
  loc_A73014: MemStStrCopy
  loc_A73018: FFreeStr var_9C = ""
  loc_A7301F: FFree1Ad var_88
  loc_A73022: FFree1Var var_98 = ""
  loc_A73025: FLdPr Me
  loc_A73028: VCallAd Control_ID_PeriInfoMsk
  loc_A7302B: FStAdFuncNoPop
  loc_A7302E: CastAd
  loc_A73031: FStAdFunc var_A4
  loc_A73034: FLdRfVar var_A4
  loc_A73037: FLdPr Me
  loc_A7303A: MemLdStr global_112
  loc_A7303D: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A73042: IStI2 arg_C
  loc_A73045: FFreeAd var_88 = ""
  loc_A7304C: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9CD99C
  'Data Table: 4A11B8
  loc_9CD984: ILdRf Me
  loc_9CD987: CastAd
  loc_9CD98A: FStAdFunc var_88
  loc_9CD98D: FLdRfVar var_88
  loc_9CD990: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CD995: FFree1Ad var_88
  loc_9CD998: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4A2158
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A2167
  bGenerado = Value
End Sub

Public Function bLogosGet() '4A2176
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4A2185
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9BF43C
  'Data Table: 4A11B8
  loc_9BF424: LitI2_Byte 0
  loc_9BF426: FLdPr Me
  loc_9BF429: MemStI2 bLogos
  loc_9BF42C: Call GeneraHTML()
  loc_9BF431: LitI2_Byte &HFF
  loc_9BF433: FLdPr Me
  loc_9BF436: MemStI2 bLogos
  loc_9BF439: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A43550
  'Data Table: 4A11B8
  loc_A4350C: LitI4 0
  loc_A43511: LitI4 1
  loc_A43516: FLdRfVar var_88
  loc_A43519: Redim
  loc_A43523: FLdPr Me
  loc_A43526: VCallAd Control_ID_PeriInfoMsk
  loc_A43529: CVarAd
  loc_A4352D: ParmAry1St
  loc_A43533: FLdPr Me
  loc_A43536: VCallAd Control_ID_TrimestreCbo
  loc_A43539: CVarAd
  loc_A4353D: ParmAry1St
  loc_A43543: FLdRfVar var_88
  loc_A43546: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4354B: FLdRfVar var_88
  loc_A4354E: Erase
  loc_A4354F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CA38EC
  'Data Table: 4A11B8
  loc_CA1C9C: LitI2_Byte 0
  loc_CA1C9E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA1CA3: FStFPR8 var_90
  loc_CA1CA6: LitStr "Municipalidad de Guaymallén"
  loc_CA1CA9: LitStr "Municipalidad de Guaymallén"
  loc_CA1CAC: EqStr
  loc_CA1CAE: BranchF loc_CA1CF8
  loc_CA1CB1: LitStr "192.168.40.54"
  loc_CA1CB4: LitStr "192.168.40.54"
  loc_CA1CB7: EqStr
  loc_CA1CB9: BranchF loc_CA1CF8
  loc_CA1CBC: ImpAdLdI4 MemVar_D9302C
  loc_CA1CBF: LitStr "root"
  loc_CA1CC2: NeStr
  loc_CA1CC4: BranchF loc_CA1CF8
  loc_CA1CC7: FLdRfVar var_90
  loc_CA1CCA: ImpAdCallI2 Proc_18_4_AAC868()
  loc_CA1CCF: FStStrNoPop var_94
  loc_CA1CD2: FLdPr Me
  loc_CA1CD5: MemStStrCopy
  loc_CA1CD9: FFree1Str var_94
  loc_CA1CDC: FLdPr Me
  loc_CA1CDF: MemLdStr global_112
  loc_CA1CE2: LitStr vbNullString
  loc_CA1CE5: NeStr
  loc_CA1CE7: BranchF loc_CA1CF8
  loc_CA1CEA: FLdPr Me
  loc_CA1CED: MemLdStr global_112
  loc_CA1CF0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CA1CF5: Branch loc_CA38C3
  loc_CA1CF8: FLdPr Me
  loc_CA1CFB: MemLdI2 bGenerado
  loc_CA1CFE: BranchF loc_CA1D02
  loc_CA1D01: ExitProcHresult
  loc_CA1D02: LitVarStr var_A4, "Generando reporte..."
  loc_CA1D07: PopAdLdVar
  loc_CA1D08: FLdPr Me
  loc_CA1D0B: VCallAd Control_ID_statusBar
  loc_CA1D0E: FStAdFunc var_B8
  loc_CA1D11: FLdPr var_B8
  loc_CA1D14: LateIdSt
  loc_CA1D19: FFree1Ad var_B8
  loc_CA1D1C: LitI4 &HB
  loc_CA1D21: CI2I4
  loc_CA1D22: FLdPr Me
  loc_CA1D25: Me.MousePointer = from_stack_1
  loc_CA1D2A: LitI2_Byte 0
  loc_CA1D2C: PopTmpLdAd2 var_BA
  loc_CA1D2F: from_stack_2v = PeriInfoMsk_UnknownEvent_8(from_stack_1v)
  loc_CA1D34: FLdPr Me
  loc_CA1D37: MemLdStr global_112
  loc_CA1D3A: LitStr vbNullString
  loc_CA1D3D: NeStr
  loc_CA1D3F: BranchF loc_CA1D45
  loc_CA1D42: Branch loc_CA38C3
  loc_CA1D45: FLdPr Me
  loc_CA1D48: VCallAd Control_ID_PeriInfoMsk
  loc_CA1D4B: FStAdFunc var_B8
  loc_CA1D4E: FLdPr var_B8
  loc_CA1D51: LateIdLdVar var_CC DispID_22 0
  loc_CA1D58: PopAd
  loc_CA1D5A: FLdRfVar var_BA
  loc_CA1D5D: FLdPr Me
  loc_CA1D60: VCallAd Control_ID_TrimestreCbo
  loc_CA1D63: FStAdFunc var_D0
  loc_CA1D66: FLdPr var_D0
  loc_CA1D69:  = Me.ListIndex
  loc_CA1D6E: LitI2_Byte 1
  loc_CA1D70: FLdI2 var_BA
  loc_CA1D73: LitI2_Byte 1
  loc_CA1D75: AddI2
  loc_CA1D76: LitI2_Byte 3
  loc_CA1D78: MulI2
  loc_CA1D79: LitI2_Byte 1
  loc_CA1D7B: AddI2
  loc_CA1D7C: FLdRfVar var_CC
  loc_CA1D7F: CStrVarTmp
  loc_CA1D80: FStStrNoPop var_94
  loc_CA1D83: CI2Str
  loc_CA1D85: FLdRfVar var_E0
  loc_CA1D88: ImpAdCallFPR4  = DateSerial(, , )
  loc_CA1D8D: LitI4 1
  loc_CA1D92: LitI4 1
  loc_CA1D97: LitVarStr var_B4, "yyyy-mm-dd"
  loc_CA1D9C: FStVarCopyObj var_110
  loc_CA1D9F: FLdRfVar var_110
  loc_CA1DA2: FLdRfVar var_E0
  loc_CA1DA5: LitVarI2 var_A4, 1
  loc_CA1DAA: SubVar var_F0
  loc_CA1DAE: FStVar var_100
  loc_CA1DB2: FLdRfVar var_100
  loc_CA1DB5: ImpAdCallI2 Format$(, )
  loc_CA1DBA: FStStr var_88
  loc_CA1DBD: FFree1Str var_94
  loc_CA1DC0: FFreeAd var_B8 = ""
  loc_CA1DC7: FFreeVar var_CC = "": var_E0 = "": var_100 = ""
  loc_CA1DD2: FLdPr Me
  loc_CA1DD5: MemLdRfVar from_stack_1.global_92
  loc_CA1DD8: NewIfNullAd
  loc_CA1DDB: FStAd var_114 
  loc_CA1DDF: LitStr "Municipalidad de Guaymallén"
  loc_CA1DE2: LitStr "Municipalidad de Guaymallén"
  loc_CA1DE5: NeStr
  loc_CA1DE7: BranchF loc_CA2471
  loc_CA1DEA: LitStr "Municipalidad de Guaymallén"
  loc_CA1DED: LitStr "Municipalidad de Malargüe"
  loc_CA1DF0: EqStr
  loc_CA1DF2: BranchF loc_CA1FB6
  loc_CA1DF5: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_CA1DF8: LitStr " (SELECT ActiConc, 000000000.00 AS morosidad, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as facturacion,"
  loc_CA1DFB: ConcatStr
  loc_CA1DFC: FStStrNoPop var_94
  loc_CA1DFF: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1, "
  loc_CA1E02: ConcatStr
  loc_CA1E03: FStStrNoPop var_118
  loc_CA1E06: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as debitos, sum(if(CodiTimo in (11,12,20,23),CredCtct,000000000.00)) as creditos,"
  loc_CA1E09: ConcatStr
  loc_CA1E0A: FStStrNoPop var_11C
  loc_CA1E0D: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as prescripciones, sum(if(CodiTimo=14,CredCtct,000000000.00)) as condonaciones, sum(if(CodiTimo=15,CredCtct,000000000.00)) as exenciones,"
  loc_CA1E10: ConcatStr
  loc_CA1E11: FStStrNoPop var_120
  loc_CA1E14: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as descuentos"
  loc_CA1E17: ConcatStr
  loc_CA1E18: FStStrNoPop var_124
  loc_CA1E1B: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA1E1E: ConcatStr
  loc_CA1E1F: FStStrNoPop var_128
  loc_CA1E22: FLdPr Me
  loc_CA1E25: VCallAd Control_ID_PeriInfoMsk
  loc_CA1E28: FStAdFunc var_B8
  loc_CA1E2B: FLdPr var_B8
  loc_CA1E2E: LateIdLdVar var_CC DispID_22 0
  loc_CA1E35: CStrVarTmp
  loc_CA1E36: FStStrNoPop var_12C
  loc_CA1E39: ConcatStr
  loc_CA1E3A: FStStrNoPop var_130
  loc_CA1E3D: LitStr " AND concepto.ActiConc <> ''"
  loc_CA1E40: ConcatStr
  loc_CA1E41: FStStrNoPop var_134
  loc_CA1E44: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_CA1E47: ConcatStr
  loc_CA1E48: FStStrNoPop var_138
  loc_CA1E4B: FLdPr Me
  loc_CA1E4E: VCallAd Control_ID_PeriInfoMsk
  loc_CA1E51: FStAdFunc var_D0
  loc_CA1E54: FLdPr var_D0
  loc_CA1E57: LateIdLdVar var_E0 DispID_22 0
  loc_CA1E5E: CStrVarTmp
  loc_CA1E5F: FStStrNoPop var_13C
  loc_CA1E62: ConcatStr
  loc_CA1E63: FStStrNoPop var_140
  loc_CA1E66: LitStr "-01-01' AND '"
  loc_CA1E69: ConcatStr
  loc_CA1E6A: FStStrNoPop var_144
  loc_CA1E6D: ILdRf var_88
  loc_CA1E70: ConcatStr
  loc_CA1E71: FStStrNoPop var_148
  loc_CA1E74: LitStr "'"
  loc_CA1E77: ConcatStr
  loc_CA1E78: FStStrNoPop var_14C
  loc_CA1E7B: LitStr " GROUP BY ActiConc) UNION ALL"
  loc_CA1E7E: ConcatStr
  loc_CA1E7F: FStStrNoPop var_150
  loc_CA1E82: LitStr " (SELECT ActiConc, sum(DebeCtct-CredCtct) as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1, "
  loc_CA1E85: ConcatStr
  loc_CA1E86: FStStrNoPop var_154
  loc_CA1E89: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA1E8C: ConcatStr
  loc_CA1E8D: FStStrNoPop var_158
  loc_CA1E90: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA1E93: ConcatStr
  loc_CA1E94: FStStrNoPop var_160
  loc_CA1E97: FLdPr Me
  loc_CA1E9A: VCallAd Control_ID_PeriInfoMsk
  loc_CA1E9D: FStAdFunc var_15C
  loc_CA1EA0: FLdPr var_15C
  loc_CA1EA3: LateIdLdVar var_F0 DispID_22 0
  loc_CA1EAA: CStrVarTmp
  loc_CA1EAB: FStStrNoPop var_164
  loc_CA1EAE: ConcatStr
  loc_CA1EAF: FStStrNoPop var_168
  loc_CA1EB2: LitStr " AND concepto.ActiConc <> ''"
  loc_CA1EB5: ConcatStr
  loc_CA1EB6: FStStrNoPop var_16C
  loc_CA1EB9: LitStr " WHERE ctacte.FealCtct < '"
  loc_CA1EBC: ConcatStr
  loc_CA1EBD: FStStrNoPop var_174
  loc_CA1EC0: FLdPr Me
  loc_CA1EC3: VCallAd Control_ID_PeriInfoMsk
  loc_CA1EC6: FStAdFunc var_170
  loc_CA1EC9: FLdPr var_170
  loc_CA1ECC: LateIdLdVar var_100 DispID_22 0
  loc_CA1ED3: CStrVarTmp
  loc_CA1ED4: FStStrNoPop var_178
  loc_CA1ED7: ConcatStr
  loc_CA1ED8: FStStrNoPop var_17C
  loc_CA1EDB: LitStr "-01-01' GROUP BY ActiConc) UNION ALL"
  loc_CA1EDE: ConcatStr
  loc_CA1EDF: FStStrNoPop var_180
  loc_CA1EE2: LitStr " (SELECT ActiConc, sum(DebeCtct-CredCtct) as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1, "
  loc_CA1EE5: ConcatStr
  loc_CA1EE6: FStStrNoPop var_184
  loc_CA1EE9: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA1EEC: ConcatStr
  loc_CA1EED: FStStrNoPop var_188
  loc_CA1EF0: LitStr " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA1EF3: ConcatStr
  loc_CA1EF4: FStStrNoPop var_190
  loc_CA1EF7: FLdPr Me
  loc_CA1EFA: VCallAd Control_ID_PeriInfoMsk
  loc_CA1EFD: FStAdFunc var_18C
  loc_CA1F00: FLdPr var_18C
  loc_CA1F03: LateIdLdVar var_110 DispID_22 0
  loc_CA1F0A: CStrVarTmp
  loc_CA1F0B: FStStrNoPop var_194
  loc_CA1F0E: ConcatStr
  loc_CA1F0F: FStStrNoPop var_198
  loc_CA1F12: LitStr " AND concepto.ActiConc <> ''"
  loc_CA1F15: ConcatStr
  loc_CA1F16: FStStrNoPop var_19C
  loc_CA1F19: LitStr " WHERE histoctacte.FealCtct < '"
  loc_CA1F1C: ConcatStr
  loc_CA1F1D: FStStrNoPop var_1B4
  loc_CA1F20: FLdPr Me
  loc_CA1F23: VCallAd Control_ID_PeriInfoMsk
  loc_CA1F26: FStAdFunc var_1A0
  loc_CA1F29: FLdPr var_1A0
  loc_CA1F2C: LateIdLdVar var_1B0 DispID_22 0
  loc_CA1F33: CStrVarTmp
  loc_CA1F34: FStStrNoPop var_1B8
  loc_CA1F37: ConcatStr
  loc_CA1F38: FStStrNoPop var_1BC
  loc_CA1F3B: LitStr "-01-01' GROUP BY ActiConc); CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_CA1F3E: ConcatStr
  loc_CA1F3F: FStStrNoPop var_1C0
  loc_CA1F42: FLdPr var_114
  loc_CA1F45: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA1F4A: FFreeStr var_198 = "": var_19C = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = ""
  loc_CA1F95: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = "": var_18C = ""
  loc_CA1FA4: FFreeVar var_CC = "": var_E0 = "": var_F0 = "": var_100 = "": var_110 = ""
  loc_CA1FB3: Branch loc_CA2101
  loc_CA1FB6: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_CA1FB9: LitStr " (SELECT ActiConc, 000000000.00 AS morosidad, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as facturacion,"
  loc_CA1FBC: ConcatStr
  loc_CA1FBD: FStStrNoPop var_94
  loc_CA1FC0: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1, "
  loc_CA1FC3: ConcatStr
  loc_CA1FC4: FStStrNoPop var_118
  loc_CA1FC7: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as debitos, sum(if(CodiTimo in (11,12,20,23),CredCtct,000000000.00)) as creditos,"
  loc_CA1FCA: ConcatStr
  loc_CA1FCB: FStStrNoPop var_11C
  loc_CA1FCE: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as prescripciones, sum(if(CodiTimo=14,CredCtct,000000000.00)) as condonaciones, sum(if(CodiTimo=15,CredCtct,000000000.00)) as exenciones,"
  loc_CA1FD1: ConcatStr
  loc_CA1FD2: FStStrNoPop var_120
  loc_CA1FD5: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as descuentos"
  loc_CA1FD8: ConcatStr
  loc_CA1FD9: FStStrNoPop var_124
  loc_CA1FDC: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA1FDF: ConcatStr
  loc_CA1FE0: FStStrNoPop var_128
  loc_CA1FE3: FLdPr Me
  loc_CA1FE6: VCallAd Control_ID_PeriInfoMsk
  loc_CA1FE9: FStAdFunc var_B8
  loc_CA1FEC: FLdPr var_B8
  loc_CA1FEF: LateIdLdVar var_CC DispID_22 0
  loc_CA1FF6: CStrVarTmp
  loc_CA1FF7: FStStrNoPop var_12C
  loc_CA1FFA: ConcatStr
  loc_CA1FFB: FStStrNoPop var_130
  loc_CA1FFE: LitStr " AND concepto.ActiConc <> ''"
  loc_CA2001: ConcatStr
  loc_CA2002: FStStrNoPop var_134
  loc_CA2005: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_CA2008: ConcatStr
  loc_CA2009: FStStrNoPop var_138
  loc_CA200C: FLdPr Me
  loc_CA200F: VCallAd Control_ID_PeriInfoMsk
  loc_CA2012: FStAdFunc var_D0
  loc_CA2015: FLdPr var_D0
  loc_CA2018: LateIdLdVar var_E0 DispID_22 0
  loc_CA201F: CStrVarTmp
  loc_CA2020: FStStrNoPop var_13C
  loc_CA2023: ConcatStr
  loc_CA2024: FStStrNoPop var_140
  loc_CA2027: LitStr "-01-01' AND '"
  loc_CA202A: ConcatStr
  loc_CA202B: FStStrNoPop var_144
  loc_CA202E: ILdRf var_88
  loc_CA2031: ConcatStr
  loc_CA2032: FStStrNoPop var_148
  loc_CA2035: LitStr "'"
  loc_CA2038: ConcatStr
  loc_CA2039: FStStrNoPop var_14C
  loc_CA203C: LitStr " GROUP BY ActiConc) UNION ALL"
  loc_CA203F: ConcatStr
  loc_CA2040: FStStrNoPop var_150
  loc_CA2043: LitStr " (SELECT ActiConc, sum(DebeCtct-CredCtct) as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1, "
  loc_CA2046: ConcatStr
  loc_CA2047: FStStrNoPop var_154
  loc_CA204A: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones ,000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA204D: ConcatStr
  loc_CA204E: FStStrNoPop var_158
  loc_CA2051: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA2054: ConcatStr
  loc_CA2055: FStStrNoPop var_160
  loc_CA2058: FLdPr Me
  loc_CA205B: VCallAd Control_ID_PeriInfoMsk
  loc_CA205E: FStAdFunc var_15C
  loc_CA2061: FLdPr var_15C
  loc_CA2064: LateIdLdVar var_F0 DispID_22 0
  loc_CA206B: CStrVarTmp
  loc_CA206C: FStStrNoPop var_164
  loc_CA206F: ConcatStr
  loc_CA2070: FStStrNoPop var_168
  loc_CA2073: LitStr " AND concepto.ActiConc <> ''"
  loc_CA2076: ConcatStr
  loc_CA2077: FStStrNoPop var_16C
  loc_CA207A: LitStr " WHERE ctacte.FealCtct < '"
  loc_CA207D: ConcatStr
  loc_CA207E: FStStrNoPop var_174
  loc_CA2081: FLdPr Me
  loc_CA2084: VCallAd Control_ID_PeriInfoMsk
  loc_CA2087: FStAdFunc var_170
  loc_CA208A: FLdPr var_170
  loc_CA208D: LateIdLdVar var_100 DispID_22 0
  loc_CA2094: CStrVarTmp
  loc_CA2095: FStStrNoPop var_178
  loc_CA2098: ConcatStr
  loc_CA2099: FStStrNoPop var_17C
  loc_CA209C: LitStr "-01-01' GROUP BY ActiConc);"
  loc_CA209F: ConcatStr
  loc_CA20A0: FStStrNoPop var_180
  loc_CA20A3: LitStr " CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_CA20A6: ConcatStr
  loc_CA20A7: FStStrNoPop var_184
  loc_CA20AA: FLdPr var_114
  loc_CA20AD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA20B2: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_CA20EB: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA20F6: FFreeVar var_CC = "": var_E0 = "": var_F0 = ""
  loc_CA2101: LitStr "DROP TEMPORARY TABLE IF EXISTS afo; CREATE TEMPORARY TABLE afo"
  loc_CA2104: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte"
  loc_CA2107: ConcatStr
  loc_CA2108: FStStrNoPop var_94
  loc_CA210B: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA210E: ConcatStr
  loc_CA210F: FStStrNoPop var_118
  loc_CA2112: FLdPr Me
  loc_CA2115: VCallAd Control_ID_PeriInfoMsk
  loc_CA2118: FStAdFunc var_B8
  loc_CA211B: FLdPr var_B8
  loc_CA211E: LateIdLdVar var_CC DispID_22 0
  loc_CA2125: CStrVarTmp
  loc_CA2126: FStStrNoPop var_11C
  loc_CA2129: ConcatStr
  loc_CA212A: FStStrNoPop var_120
  loc_CA212D: LitStr " AND concepto.ActiConc <> ''"
  loc_CA2130: ConcatStr
  loc_CA2131: FStStrNoPop var_124
  loc_CA2134: LitStr " WHERE MoviCtct = 1 AND FealCtct < '"
  loc_CA2137: ConcatStr
  loc_CA2138: FStStrNoPop var_128
  loc_CA213B: FLdPr Me
  loc_CA213E: VCallAd Control_ID_PeriInfoMsk
  loc_CA2141: FStAdFunc var_D0
  loc_CA2144: FLdPr var_D0
  loc_CA2147: LateIdLdVar var_E0 DispID_22 0
  loc_CA214E: CStrVarTmp
  loc_CA214F: FStStrNoPop var_12C
  loc_CA2152: ConcatStr
  loc_CA2153: FStStrNoPop var_130
  loc_CA2156: LitStr "-01-01';"
  loc_CA2159: ConcatStr
  loc_CA215A: FStStrNoPop var_134
  loc_CA215D: LitStr " "
  loc_CA2160: ConcatStr
  loc_CA2161: FStStrNoPop var_138
  loc_CA2164: LitStr " INSERT INTO tribu"
  loc_CA2167: ConcatStr
  loc_CA2168: FStStrNoPop var_13C
  loc_CA216B: LitStr " SELECT ActiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero, 000000000.00 as recupero1, "
  loc_CA216E: ConcatStr
  loc_CA216F: FStStrNoPop var_140
  loc_CA2172: LitStr " 0 as debitos, 0 as creditos, 0 as prescripciones , 0 as condonaciones, 0 as exenciones, 0 as descuentos"
  loc_CA2175: ConcatStr
  loc_CA2176: FStStrNoPop var_144
  loc_CA2179: LitStr " FROM ctacte INNER JOIN afo ON afo.CodiOfic = ctacte.CodiOfic AND afo.CuenCtct = ctacte.CuenCtct"
  loc_CA217C: ConcatStr
  loc_CA217D: FStStrNoPop var_148
  loc_CA2180: LitStr "   AND afo.PeriCtct = ctacte.PeriCtct AND afo.BimeCtct = ctacte.BimeCtct AND afo.NumeCtct = ctacte.NumeCtct"
  loc_CA2183: ConcatStr
  loc_CA2184: FStStrNoPop var_14C
  loc_CA2187: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA218A: ConcatStr
  loc_CA218B: FStStrNoPop var_150
  loc_CA218E: FLdPr Me
  loc_CA2191: VCallAd Control_ID_PeriInfoMsk
  loc_CA2194: FStAdFunc var_15C
  loc_CA2197: FLdPr var_15C
  loc_CA219A: LateIdLdVar var_F0 DispID_22 0
  loc_CA21A1: CStrVarTmp
  loc_CA21A2: FStStrNoPop var_154
  loc_CA21A5: ConcatStr
  loc_CA21A6: FStStrNoPop var_158
  loc_CA21A9: LitStr " AND concepto.ActiConc <> ''"
  loc_CA21AC: ConcatStr
  loc_CA21AD: FStStrNoPop var_160
  loc_CA21B0: LitStr " WHERE FealCtct BETWEEN '"
  loc_CA21B3: ConcatStr
  loc_CA21B4: FStStrNoPop var_164
  loc_CA21B7: FLdPr Me
  loc_CA21BA: VCallAd Control_ID_PeriInfoMsk
  loc_CA21BD: FStAdFunc var_170
  loc_CA21C0: FLdPr var_170
  loc_CA21C3: LateIdLdVar var_100 DispID_22 0
  loc_CA21CA: CStrVarTmp
  loc_CA21CB: FStStrNoPop var_168
  loc_CA21CE: ConcatStr
  loc_CA21CF: FStStrNoPop var_16C
  loc_CA21D2: LitStr "-01-01' AND '"
  loc_CA21D5: ConcatStr
  loc_CA21D6: FStStrNoPop var_174
  loc_CA21D9: ILdRf var_88
  loc_CA21DC: ConcatStr
  loc_CA21DD: FStStrNoPop var_178
  loc_CA21E0: LitStr "' AND (CodiTimo in (2,4,5,9,21,25,26,27))"
  loc_CA21E3: ConcatStr
  loc_CA21E4: FStStrNoPop var_17C
  loc_CA21E7: LitStr " GROUP BY ActiConc; DROP TEMPORARY TABLE IF EXISTS afo;"
  loc_CA21EA: ConcatStr
  loc_CA21EB: FStStrNoPop var_180
  loc_CA21EE: FLdPr var_114
  loc_CA21F1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA21F6: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = ""
  loc_CA222D: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA2238: FFreeVar var_CC = "": var_E0 = "": var_F0 = ""
  loc_CA2243: LitStr "DROP TEMPORARY TABLE IF EXISTS recupero1; "
  loc_CA2246: LitStr " CREATE TEMPORARY TABLE recupero1 SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte "
  loc_CA2249: ConcatStr
  loc_CA224A: FStStrNoPop var_94
  loc_CA224D: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA2250: ConcatStr
  loc_CA2251: FStStrNoPop var_118
  loc_CA2254: FLdPr Me
  loc_CA2257: VCallAd Control_ID_PeriInfoMsk
  loc_CA225A: FStAdFunc var_B8
  loc_CA225D: FLdPr var_B8
  loc_CA2260: LateIdLdVar var_CC DispID_22 0
  loc_CA2267: CStrVarTmp
  loc_CA2268: FStStrNoPop var_11C
  loc_CA226B: ConcatStr
  loc_CA226C: FStStrNoPop var_120
  loc_CA226F: LitStr " AND concepto.ActiConc <> '' "
  loc_CA2272: ConcatStr
  loc_CA2273: FStStrNoPop var_124
  loc_CA2276: LitStr " WHERE MoviCtct = 1 AND FealCtct BETWEEN '"
  loc_CA2279: ConcatStr
  loc_CA227A: FStStrNoPop var_128
  loc_CA227D: FLdPr Me
  loc_CA2280: VCallAd Control_ID_PeriInfoMsk
  loc_CA2283: FStAdFunc var_D0
  loc_CA2286: FLdPr var_D0
  loc_CA2289: LateIdLdVar var_E0 DispID_22 0
  loc_CA2290: CStrVarTmp
  loc_CA2291: FStStrNoPop var_12C
  loc_CA2294: ConcatStr
  loc_CA2295: FStStrNoPop var_130
  loc_CA2298: LitStr "-01-01' AND '"
  loc_CA229B: ConcatStr
  loc_CA229C: FStStrNoPop var_134
  loc_CA229F: ILdRf var_88
  loc_CA22A2: ConcatStr
  loc_CA22A3: FStStrNoPop var_138
  loc_CA22A6: LitStr "';  "
  loc_CA22A9: ConcatStr
  loc_CA22AA: FStStrNoPop var_13C
  loc_CA22AD: LitStr " INSERT INTO tribu "
  loc_CA22B0: ConcatStr
  loc_CA22B1: FStStrNoPop var_140
  loc_CA22B4: LitStr " SELECT ActiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion,"
  loc_CA22B7: ConcatStr
  loc_CA22B8: FStStrNoPop var_144
  loc_CA22BB: LitStr " 000000000.00 as recupero, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero1, "
  loc_CA22BE: ConcatStr
  loc_CA22BF: FStStrNoPop var_148
  loc_CA22C2: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones ,000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA22C5: ConcatStr
  loc_CA22C6: FStStrNoPop var_14C
  loc_CA22C9: LitStr " FROM ctacte "
  loc_CA22CC: ConcatStr
  loc_CA22CD: FStStrNoPop var_150
  loc_CA22D0: LitStr " INNER JOIN recupero1 ON recupero1.CodiOfic = ctacte.CodiOfic AND recupero1.CuenCtct = ctacte.CuenCtct   AND recupero1.PeriCtct = ctacte.PeriCtct AND recupero1.BimeCtct = ctacte.BimeCtct AND recupero1.NumeCtct = ctacte.NumeCtct "
  loc_CA22D3: ConcatStr
  loc_CA22D4: FStStrNoPop var_154
  loc_CA22D7: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_CA22DA: ConcatStr
  loc_CA22DB: FStStrNoPop var_158
  loc_CA22DE: FLdPr Me
  loc_CA22E1: VCallAd Control_ID_PeriInfoMsk
  loc_CA22E4: FStAdFunc var_15C
  loc_CA22E7: FLdPr var_15C
  loc_CA22EA: LateIdLdVar var_F0 DispID_22 0
  loc_CA22F1: CStrVarTmp
  loc_CA22F2: FStStrNoPop var_160
  loc_CA22F5: ConcatStr
  loc_CA22F6: FStStrNoPop var_164
  loc_CA22F9: LitStr " AND concepto.ActiConc <> ''"
  loc_CA22FC: ConcatStr
  loc_CA22FD: FStStrNoPop var_168
  loc_CA2300: LitStr " WHERE FealCtct BETWEEN '"
  loc_CA2303: ConcatStr
  loc_CA2304: FStStrNoPop var_16C
  loc_CA2307: FLdPr Me
  loc_CA230A: VCallAd Control_ID_PeriInfoMsk
  loc_CA230D: FStAdFunc var_170
  loc_CA2310: FLdPr var_170
  loc_CA2313: LateIdLdVar var_100 DispID_22 0
  loc_CA231A: CStrVarTmp
  loc_CA231B: FStStrNoPop var_174
  loc_CA231E: ConcatStr
  loc_CA231F: FStStrNoPop var_178
  loc_CA2322: LitStr "-01-01' AND '"
  loc_CA2325: ConcatStr
  loc_CA2326: FStStrNoPop var_17C
  loc_CA2329: ILdRf var_88
  loc_CA232C: ConcatStr
  loc_CA232D: FStStrNoPop var_180
  loc_CA2330: LitStr "' AND (CodiTimo in (2,4,5,9,21,25,26,27)) GROUP BY ActiConc; "
  loc_CA2333: ConcatStr
  loc_CA2334: FStStrNoPop var_184
  loc_CA2337: LitStr " DROP TEMPORARY TABLE IF EXISTS recupero1;"
  loc_CA233A: ConcatStr
  loc_CA233B: FStStrNoPop var_188
  loc_CA233E: FLdPr var_114
  loc_CA2341: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2346: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_CA2381: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA238C: FFreeVar var_CC = "": var_E0 = "": var_F0 = ""
  loc_CA2397: LitStr "Municipalidad de Guaymallén"
  loc_CA239A: LitStr "Municipalidad de San Martin"
  loc_CA239D: EqStr
  loc_CA239F: BranchF loc_CA240E
  loc_CA23A2: LitStr "SELECT ActiConc, DetaCuco, sum(morosidad) as morosidad, sum(facturacion) as facturacion,"
  loc_CA23A5: LitStr " sum(recaudacion) as recaudacion, sum(recupero) as recupero, sum(recupero1) recupero1,"
  loc_CA23A8: ConcatStr
  loc_CA23A9: FStStrNoPop var_94
  loc_CA23AC: LitStr " sum(morosidad)+sum(facturacion)-sum(recupero)-sum(recupero1)+sum(debitos)-sum(creditos)-sum(prescripciones)-sum(condonaciones)-sum(exenciones)-sum(descuentos) as salmoracufin"
  loc_CA23AF: ConcatStr
  loc_CA23B0: FStStrNoPop var_118
  loc_CA23B3: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_CA23B6: ConcatStr
  loc_CA23B7: FStStrNoPop var_11C
  loc_CA23BA: FLdPr Me
  loc_CA23BD: VCallAd Control_ID_PeriInfoMsk
  loc_CA23C0: FStAdFunc var_B8
  loc_CA23C3: FLdPr var_B8
  loc_CA23C6: LateIdLdVar var_CC DispID_22 0
  loc_CA23CD: CStrVarTmp
  loc_CA23CE: FStStrNoPop var_120
  loc_CA23D1: ConcatStr
  loc_CA23D2: FStStrNoPop var_124
  loc_CA23D5: LitStr " AND c.CodiCuco = tribu.ActiConc"
  loc_CA23D8: ConcatStr
  loc_CA23D9: FStStrNoPop var_128
  loc_CA23DC: LitStr " WHERE tribu.ActiConc <> '1281760000'"
  loc_CA23DF: ConcatStr
  loc_CA23E0: FStStrNoPop var_12C
  loc_CA23E3: LitStr " GROUP BY ActiConc ORDER BY ActiConc"
  loc_CA23E6: ConcatStr
  loc_CA23E7: FStStrNoPop var_130
  loc_CA23EA: FLdPr var_114
  loc_CA23ED: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA23F2: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_CA2405: FFree1Ad var_B8
  loc_CA2408: FFree1Var var_CC = ""
  loc_CA240B: Branch loc_CA246E
  loc_CA240E: LitStr "SELECT ActiConc, DetaCuco, sum(morosidad) as morosidad, sum(facturacion) as facturacion,"
  loc_CA2411: LitStr " sum(recaudacion) as recaudacion, sum(recupero) as recupero, sum(recupero1) recupero1,"
  loc_CA2414: ConcatStr
  loc_CA2415: FStStrNoPop var_94
  loc_CA2418: LitStr " sum(morosidad)+sum(facturacion)-sum(recupero)-sum(recupero1)+sum(debitos)-sum(creditos)-sum(prescripciones)-sum(condonaciones)-sum(exenciones)-sum(descuentos) as salmoracufin"
  loc_CA241B: ConcatStr
  loc_CA241C: FStStrNoPop var_118
  loc_CA241F: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_CA2422: ConcatStr
  loc_CA2423: FStStrNoPop var_11C
  loc_CA2426: FLdPr Me
  loc_CA2429: VCallAd Control_ID_PeriInfoMsk
  loc_CA242C: FStAdFunc var_B8
  loc_CA242F: FLdPr var_B8
  loc_CA2432: LateIdLdVar var_CC DispID_22 0
  loc_CA2439: CStrVarTmp
  loc_CA243A: FStStrNoPop var_120
  loc_CA243D: ConcatStr
  loc_CA243E: FStStrNoPop var_124
  loc_CA2441: LitStr " AND c.CodiCuco = tribu.ActiConc"
  loc_CA2444: ConcatStr
  loc_CA2445: FStStrNoPop var_128
  loc_CA2448: LitStr " GROUP BY ActiConc ORDER BY ActiConc"
  loc_CA244B: ConcatStr
  loc_CA244C: FStStrNoPop var_12C
  loc_CA244F: FLdPr var_114
  loc_CA2452: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2457: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_CA2468: FFree1Ad var_B8
  loc_CA246B: FFree1Var var_CC = ""
  loc_CA246E: Branch loc_CA35C3
  loc_CA2471: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_CA2474: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_CA2477: ConcatStr
  loc_CA2478: FStStrNoPop var_94
  loc_CA247B: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_CA247E: ConcatStr
  loc_CA247F: FStStrNoPop var_118
  loc_CA2482: LitStr " orosidad` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2485: ConcatStr
  loc_CA2486: FStStrNoPop var_11C
  loc_CA2489: LitStr " acturacion` decimal(14,2) NOT NULL default '0.00',"
  loc_CA248C: ConcatStr
  loc_CA248D: FStStrNoPop var_120
  loc_CA2490: LitStr " ecaudacion` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2493: ConcatStr
  loc_CA2494: FStStrNoPop var_124
  loc_CA2497: LitStr " ecupero` decimal(14,2) NOT NULL default '0.00',"
  loc_CA249A: ConcatStr
  loc_CA249B: FStStrNoPop var_128
  loc_CA249E: LitStr " ecupero1` decimal(14,2) NOT NULL default '0.00',"
  loc_CA24A1: ConcatStr
  loc_CA24A2: FStStrNoPop var_12C
  loc_CA24A5: LitStr " almoracufin` decimal(14,2) NOT NULL default '0.00',"
  loc_CA24A8: ConcatStr
  loc_CA24A9: FStStrNoPop var_130
  loc_CA24AC: LitStr " KEY mpidx` (`CodiConc`)"
  loc_CA24AF: ConcatStr
  loc_CA24B0: FStStrNoPop var_134
  loc_CA24B3: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_CA24B6: ConcatStr
  loc_CA24B7: FStStrNoPop var_138
  loc_CA24BA: FLdPr var_114
  loc_CA24BD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA24C2: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_CA24D9: LitStr "SELECT * FROM concepto "
  loc_CA24DC: LitStr " WHERE PeriInfo = "
  loc_CA24DF: ConcatStr
  loc_CA24E0: FStStrNoPop var_94
  loc_CA24E3: FLdPr Me
  loc_CA24E6: VCallAd Control_ID_PeriInfoMsk
  loc_CA24E9: FStAdFunc var_B8
  loc_CA24EC: FLdPr var_B8
  loc_CA24EF: LateIdLdVar var_CC DispID_22 0
  loc_CA24F6: CStrVarTmp
  loc_CA24F7: FStStrNoPop var_118
  loc_CA24FA: ConcatStr
  loc_CA24FB: FStStrNoPop var_11C
  loc_CA24FE: LitStr " AND ActiConc <> ''"
  loc_CA2501: ConcatStr
  loc_CA2502: FStStrNoPop var_120
  loc_CA2505: FLdPr Me
  loc_CA2508: MemLdRfVar from_stack_1.global_96
  loc_CA250B: NewIfNullPr clsconcepto
  loc_CA250E: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CA2513: FFreeStr var_94 = "": var_118 = "": var_11C = ""
  loc_CA251E: FFree1Ad var_B8
  loc_CA2521: FFree1Var var_CC = ""
  loc_CA2524: FLdRfVar var_1C4
  loc_CA2527: FLdPr Me
  loc_CA252A: MemLdRfVar from_stack_1.global_96
  loc_CA252D: NewIfNullPr clsconcepto
  loc_CA2530: from_stack_1 = clsconcepto.RecordCount
  loc_CA2535: ILdRf var_1C4
  loc_CA2538: LitI4 0
  loc_CA253D: GtI4
  loc_CA253E: BranchF loc_CA356C
  loc_CA2541: FLdPr Me
  loc_CA2544: MemLdRfVar from_stack_1.global_96
  loc_CA2547: NewIfNullPr clsconcepto
  loc_CA254A: Call clsconcepto.MoveFirst()
  loc_CA254F: FLdRfVar var_BA
  loc_CA2552: FLdPr Me
  loc_CA2555: MemLdRfVar from_stack_1.global_96
  loc_CA2558: NewIfNullPr clsconcepto
  loc_CA255B: from_stack_1 = clsconcepto.EOF
  loc_CA2560: FLdI2 var_BA
  loc_CA2563: NotI4
  loc_CA2564: BranchF loc_CA356C
  loc_CA2567: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_tribu;"
  loc_CA256A: LitStr " CREATE TEMPORARY TABLE tmp_tribu ("
  loc_CA256D: ConcatStr
  loc_CA256E: FStStrNoPop var_94
  loc_CA2571: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_CA2574: ConcatStr
  loc_CA2575: FStStrNoPop var_118
  loc_CA2578: LitStr " orosidad` decimal(14,2) NOT NULL default '0.00',"
  loc_CA257B: ConcatStr
  loc_CA257C: FStStrNoPop var_11C
  loc_CA257F: LitStr " acturacion` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2582: ConcatStr
  loc_CA2583: FStStrNoPop var_120
  loc_CA2586: LitStr " ecaudacion` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2589: ConcatStr
  loc_CA258A: FStStrNoPop var_124
  loc_CA258D: LitStr " ecupero` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2590: ConcatStr
  loc_CA2591: FStStrNoPop var_128
  loc_CA2594: LitStr " ecupero1` decimal(14,2) NOT NULL default '0.00',"
  loc_CA2597: ConcatStr
  loc_CA2598: FStStrNoPop var_12C
  loc_CA259B: LitStr " ebitos` decimal(14,2) NOT NULL default '0.00',"
  loc_CA259E: ConcatStr
  loc_CA259F: FStStrNoPop var_130
  loc_CA25A2: LitStr " reditos` decimal(14,2) NOT NULL default '0.00',"
  loc_CA25A5: ConcatStr
  loc_CA25A6: FStStrNoPop var_134
  loc_CA25A9: LitStr " rescripciones` decimal(14,2) NOT NULL default '0.00',"
  loc_CA25AC: ConcatStr
  loc_CA25AD: FStStrNoPop var_138
  loc_CA25B0: LitStr " ondonaciones` decimal(14,2) NOT NULL default '0.00',"
  loc_CA25B3: ConcatStr
  loc_CA25B4: FStStrNoPop var_13C
  loc_CA25B7: LitStr " xenciones` decimal(14,2) NOT NULL default '0.00',"
  loc_CA25BA: ConcatStr
  loc_CA25BB: FStStrNoPop var_140
  loc_CA25BE: LitStr " escuentos` decimal(14,2) NOT NULL default '0.00',"
  loc_CA25C1: ConcatStr
  loc_CA25C2: FStStrNoPop var_144
  loc_CA25C5: LitStr " KEY mpidx` (`CodiConc`)"
  loc_CA25C8: ConcatStr
  loc_CA25C9: FStStrNoPop var_148
  loc_CA25CC: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_CA25CF: ConcatStr
  loc_CA25D0: FStStrNoPop var_14C
  loc_CA25D3: FLdPr var_114
  loc_CA25D6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA25DB: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_CA25FC: FLdRfVar var_CC
  loc_CA25FF: FLdRfVar var_15C
  loc_CA2602: LitVarStr var_A4, "SacuConc"
  loc_CA2607: PopAdLdVar
  loc_CA2608: FLdRfVar var_D0
  loc_CA260B: FLdRfVar var_B8
  loc_CA260E: FLdPr Me
  loc_CA2611: MemLdRfVar from_stack_1.global_96
  loc_CA2614: NewIfNullPr clsconcepto
  loc_CA2617: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA261C: FLdPr var_B8
  loc_CA261F:  = Me.Fields
  loc_CA2624: FLdPr var_D0
  loc_CA2627: from_stack_2 = Me.Item(from_stack_1)
  loc_CA262C: FLdPr var_15C
  loc_CA262F:  = Me.Value
  loc_CA2634: FLdRfVar var_CC
  loc_CA2637: FnCByteVar
  loc_CA2639: CI2UI1
  loc_CA263B: LitI2_Byte 0
  loc_CA263D: EqI2
  loc_CA263E: FFreeAd var_B8 = "": var_D0 = ""
  loc_CA2647: FFree1Var var_CC = ""
  loc_CA264A: BranchF loc_CA2D3C
  loc_CA264D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_CA2650: LitStr " CREATE TEMPORARY TABLE tmp_saldo"
  loc_CA2653: ConcatStr
  loc_CA2654: FStStrNoPop var_94
  loc_CA2657: LitStr " SELECT Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, SUM(DebeCtct-CredCtct) AS SainCtct"
  loc_CA265A: ConcatStr
  loc_CA265B: FStStrNoPop var_118
  loc_CA265E: LitStr " FROM ctacte"
  loc_CA2661: ConcatStr
  loc_CA2662: FStStrNoPop var_11C
  loc_CA2665: LitStr " WHERE ctacte.FealCtct < '2018-07-01'"
  loc_CA2668: ConcatStr
  loc_CA2669: FStStrNoPop var_120
  loc_CA266C: LitStr " AND CodiConc = '"
  loc_CA266F: ConcatStr
  loc_CA2670: CVarStr var_E0
  loc_CA2673: FLdRfVar var_CC
  loc_CA2676: FLdRfVar var_15C
  loc_CA2679: LitVarStr var_A4, "CodiConc"
  loc_CA267E: PopAdLdVar
  loc_CA267F: FLdRfVar var_D0
  loc_CA2682: FLdRfVar var_B8
  loc_CA2685: FLdPr Me
  loc_CA2688: MemLdRfVar from_stack_1.global_96
  loc_CA268B: NewIfNullPr clsconcepto
  loc_CA268E: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2693: FLdPr var_B8
  loc_CA2696:  = Me.Fields
  loc_CA269B: FLdPr var_D0
  loc_CA269E: from_stack_2 = Me.Item(from_stack_1)
  loc_CA26A3: FLdPr var_15C
  loc_CA26A6:  = Me.Value
  loc_CA26AB: FLdRfVar var_CC
  loc_CA26AE: ConcatVar var_F0
  loc_CA26B2: LitVarStr var_B4, "'"
  loc_CA26B7: ConcatVar var_100
  loc_CA26BB: LitVarStr var_1D4, " GROUP BY Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_CA26C0: ConcatVar var_110
  loc_CA26C4: LitVarStr var_1E4, " DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial;"
  loc_CA26C9: ConcatVar var_1B0
  loc_CA26CD: LitVarStr var_1F4, " CREATE TEMPORARY TABLE tmp_saldo_inicial"
  loc_CA26D2: ConcatVar var_204
  loc_CA26D6: LitVarStr var_214, " SELECT IFNULL(ctacte.CodiConc,'"
  loc_CA26DB: ConcatVar var_224
  loc_CA26DF: FLdRfVar var_244
  loc_CA26E2: FLdRfVar var_1A0
  loc_CA26E5: LitVarStr var_234, "CodiConc"
  loc_CA26EA: PopAdLdVar
  loc_CA26EB: FLdRfVar var_18C
  loc_CA26EE: FLdRfVar var_170
  loc_CA26F1: FLdPr Me
  loc_CA26F4: MemLdRfVar from_stack_1.global_96
  loc_CA26F7: NewIfNullPr clsconcepto
  loc_CA26FA: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA26FF: FLdPr var_170
  loc_CA2702:  = Me.Fields
  loc_CA2707: FLdPr var_18C
  loc_CA270A: from_stack_2 = Me.Item(from_stack_1)
  loc_CA270F: FLdPr var_1A0
  loc_CA2712:  = Me.Value
  loc_CA2717: FLdRfVar var_244
  loc_CA271A: ConcatVar var_254
  loc_CA271E: LitVarStr var_264, "') CodiConc,"
  loc_CA2723: ConcatVar var_274
  loc_CA2727: LitVarStr var_284, " IFNULL(SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct),'0') AS morosidad,"
  loc_CA272C: ConcatVar var_294
  loc_CA2730: LitVarStr var_2A4, " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA2735: ConcatVar var_2B4
  loc_CA2739: LitVarStr var_2C4, " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA273E: ConcatVar var_2D4
  loc_CA2742: LitVarStr var_2E4, " FROM tmp_saldo"
  loc_CA2747: ConcatVar var_2F4
  loc_CA274B: LitVarStr var_304, " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic"
  loc_CA2750: ConcatVar var_314
  loc_CA2754: LitVarStr var_324, " AND ctacte.CuenCtct = tmp_saldo.CuenCtct"
  loc_CA2759: ConcatVar var_334
  loc_CA275D: LitVarStr var_344, " AND ctacte.PeriCtct = tmp_saldo.PeriCtct"
  loc_CA2762: ConcatVar var_354
  loc_CA2766: LitVarStr var_364, " AND ctacte.BimeCtct = tmp_saldo.BimeCtct"
  loc_CA276B: ConcatVar var_374
  loc_CA276F: LitVarStr var_384, " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_CA2774: ConcatVar var_394
  loc_CA2778: LitVarStr var_3A4, " AND ctacte.FealCtct < '2018-07-01'"
  loc_CA277D: ConcatVar var_3B4
  loc_CA2781: CStrVarVal var_124
  loc_CA2785: FLdPr var_114
  loc_CA2788: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA278D: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA279A: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = "": var_18C = ""
  loc_CA27A9: FFreeVar var_E0 = "": var_CC = "": var_F0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = ""
  loc_CA27D6: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_CA27D9: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_CA27DC: ConcatStr
  loc_CA27DD: FStStrNoPop var_94
  loc_CA27E0: LitStr " SELECT CodiConc,"
  loc_CA27E3: ConcatStr
  loc_CA27E4: FStStrNoPop var_118
  loc_CA27E7: LitStr " SUM(Morosidad) Morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA27EA: ConcatStr
  loc_CA27EB: FStStrNoPop var_11C
  loc_CA27EE: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA27F1: ConcatStr
  loc_CA27F2: FStStrNoPop var_120
  loc_CA27F5: LitStr " FROM tmp_saldo_inicial"
  loc_CA27F8: ConcatStr
  loc_CA27F9: FStStrNoPop var_124
  loc_CA27FC: FLdPr var_114
  loc_CA27FF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2804: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA2811: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_CA2814: LitStr " SELECT CodiConc, IFNULL(SUM(DebeCtct-CredCtct),0) AS morosidad,"
  loc_CA2817: ConcatStr
  loc_CA2818: FStStrNoPop var_94
  loc_CA281B: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA281E: ConcatStr
  loc_CA281F: FStStrNoPop var_118
  loc_CA2822: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2825: ConcatStr
  loc_CA2826: FStStrNoPop var_11C
  loc_CA2829: LitStr " FROM ctacte"
  loc_CA282C: ConcatStr
  loc_CA282D: FStStrNoPop var_120
  loc_CA2830: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND ctacte.FealCtct < '"
  loc_CA2833: ConcatStr
  loc_CA2834: FStStrNoPop var_124
  loc_CA2837: FLdPr Me
  loc_CA283A: VCallAd Control_ID_PeriInfoMsk
  loc_CA283D: FStAdFunc var_B8
  loc_CA2840: FLdPr var_B8
  loc_CA2843: LateIdLdVar var_CC DispID_22 0
  loc_CA284A: CStrVarTmp
  loc_CA284B: FStStrNoPop var_128
  loc_CA284E: ConcatStr
  loc_CA284F: FStStrNoPop var_12C
  loc_CA2852: LitStr "-01-01'"
  loc_CA2855: ConcatStr
  loc_CA2856: FStStrNoPop var_130
  loc_CA2859: LitStr " AND CodiConc = '"
  loc_CA285C: ConcatStr
  loc_CA285D: CVarStr var_F0
  loc_CA2860: FLdRfVar var_E0
  loc_CA2863: FLdRfVar var_170
  loc_CA2866: LitVarStr var_A4, "CodiConc"
  loc_CA286B: PopAdLdVar
  loc_CA286C: FLdRfVar var_15C
  loc_CA286F: FLdRfVar var_D0
  loc_CA2872: FLdPr Me
  loc_CA2875: MemLdRfVar from_stack_1.global_96
  loc_CA2878: NewIfNullPr clsconcepto
  loc_CA287B: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2880: FLdPr var_D0
  loc_CA2883:  = Me.Fields
  loc_CA2888: FLdPr var_15C
  loc_CA288B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2890: FLdPr var_170
  loc_CA2893:  = Me.Value
  loc_CA2898: FLdRfVar var_E0
  loc_CA289B: ConcatVar var_100
  loc_CA289F: LitVarStr var_B4, "'"
  loc_CA28A4: ConcatVar var_110
  loc_CA28A8: CStrVarVal var_134
  loc_CA28AC: FLdPr var_114
  loc_CA28AF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA28B4: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_CA28C9: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA28D4: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = ""
  loc_CA28E1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_CA28E4: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_CA28E7: ConcatStr
  loc_CA28E8: FStStrNoPop var_94
  loc_CA28EB: LitStr " SELECT CodiConc, SUM(morosidad) morosidad,"
  loc_CA28EE: ConcatStr
  loc_CA28EF: FStStrNoPop var_118
  loc_CA28F2: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA28F5: ConcatStr
  loc_CA28F6: FStStrNoPop var_11C
  loc_CA28F9: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA28FC: ConcatStr
  loc_CA28FD: FStStrNoPop var_120
  loc_CA2900: LitStr " FROM tmp_saldo_inicial1"
  loc_CA2903: ConcatStr
  loc_CA2904: FStStrNoPop var_124
  loc_CA2907: FLdPr var_114
  loc_CA290A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA290F: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA291C: LitStr " INSERT INTO tmp_tribu"
  loc_CA291F: LitStr " (SELECT IFNULL(CodiConc,'') CodiConc, 000000000.00 AS morosidad, IFNULL(SUM(IF(CodiTimo=1,DebeCtct,000000000.00)),0) AS facturacion, "
  loc_CA2922: ConcatStr
  loc_CA2923: FStStrNoPop var_94
  loc_CA2926: LitStr " IFNULL(SUM(IF(CodiTimo IN (2,4,5,9,21,25),CredCtct,000000000.00)),0) - IFNULL(SUM(IF(CodiTimo IN (26,27),DebeCtct,000000000.00)),0) AS recaudacion, "
  loc_CA2929: ConcatStr
  loc_CA292A: FStStrNoPop var_118
  loc_CA292D: LitStr " 000000000.00 AS recupero, 000000000.00 AS recupero1, "
  loc_CA2930: ConcatStr
  loc_CA2931: FStStrNoPop var_11C
  loc_CA2934: LitStr " IFNULL(SUM(IF(CodiTimo IN (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)),0) AS debitos, "
  loc_CA2937: ConcatStr
  loc_CA2938: FStStrNoPop var_120
  loc_CA293B: LitStr " IFNULL(SUM(IF(CodiTimo IN (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)) + SUM(if(CodiTimo IN (27,28),DebeCtct,000000000.00)),'0') AS creditos, "
  loc_CA293E: ConcatStr
  loc_CA293F: FStStrNoPop var_124
  loc_CA2942: LitStr " IFNULL(SUM(IF(CodiTimo=12,CredCtct,000000000.00)),0) AS prescripciones,"
  loc_CA2945: ConcatStr
  loc_CA2946: FStStrNoPop var_128
  loc_CA2949: LitStr " IFNULL(SUM(IF(CodiTimo=14,CredCtct,000000000.00)),0) AS condonaciones, "
  loc_CA294C: ConcatStr
  loc_CA294D: FStStrNoPop var_12C
  loc_CA2950: LitStr " IFNULL(SUM(IF(CodiTimo=15,CredCtct,000000000.00)),0) AS exenciones, "
  loc_CA2953: ConcatStr
  loc_CA2954: FStStrNoPop var_130
  loc_CA2957: LitStr " IFNULL(SUM(IF(CodiTimo IN (6,7),CredCtct,000000000.00)),0) - IFNULL(SUM(IF(CodiTimo IN (28),DebeCtct,000000000.00)),0)  AS descuentos"
  loc_CA295A: ConcatStr
  loc_CA295B: FStStrNoPop var_134
  loc_CA295E: LitStr " FROM ctacte"
  loc_CA2961: ConcatStr
  loc_CA2962: FStStrNoPop var_138
  loc_CA2965: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_CA2968: ConcatStr
  loc_CA2969: FStStrNoPop var_13C
  loc_CA296C: FLdPr Me
  loc_CA296F: VCallAd Control_ID_PeriInfoMsk
  loc_CA2972: FStAdFunc var_B8
  loc_CA2975: FLdPr var_B8
  loc_CA2978: LateIdLdVar var_CC DispID_22 0
  loc_CA297F: CStrVarTmp
  loc_CA2980: FStStrNoPop var_140
  loc_CA2983: ConcatStr
  loc_CA2984: FStStrNoPop var_144
  loc_CA2987: LitStr "-01-01' AND '"
  loc_CA298A: ConcatStr
  loc_CA298B: FStStrNoPop var_148
  loc_CA298E: ILdRf var_88
  loc_CA2991: ConcatStr
  loc_CA2992: FStStrNoPop var_14C
  loc_CA2995: LitStr "' AND ctacte.CodiConc = '"
  loc_CA2998: ConcatStr
  loc_CA2999: CVarStr var_F0
  loc_CA299C: FLdRfVar var_E0
  loc_CA299F: FLdRfVar var_170
  loc_CA29A2: LitVarStr var_A4, "CodiConc"
  loc_CA29A7: PopAdLdVar
  loc_CA29A8: FLdRfVar var_15C
  loc_CA29AB: FLdRfVar var_D0
  loc_CA29AE: FLdPr Me
  loc_CA29B1: MemLdRfVar from_stack_1.global_96
  loc_CA29B4: NewIfNullPr clsconcepto
  loc_CA29B7: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA29BC: FLdPr var_D0
  loc_CA29BF:  = Me.Fields
  loc_CA29C4: FLdPr var_15C
  loc_CA29C7: from_stack_2 = Me.Item(from_stack_1)
  loc_CA29CC: FLdPr var_170
  loc_CA29CF:  = Me.Value
  loc_CA29D4: FLdRfVar var_E0
  loc_CA29D7: ConcatVar var_100
  loc_CA29DB: LitVarStr var_B4, "') UNION ALL"
  loc_CA29E0: ConcatVar var_110
  loc_CA29E4: LitVarStr var_1D4, " (SELECT * FROM tmp_saldo_info);"
  loc_CA29E9: ConcatVar var_1B0
  loc_CA29ED: CStrVarVal var_150
  loc_CA29F1: FLdPr var_114
  loc_CA29F4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA29F9: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_CA2A1C: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA2A27: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = ""
  loc_CA2A36: LitStr " DROP TEMPORARY TABLE IF EXISTS afo; CREATE TEMPORARY TABLE afo"
  loc_CA2A39: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte"
  loc_CA2A3C: ConcatStr
  loc_CA2A3D: FStStrNoPop var_94
  loc_CA2A40: LitStr " WHERE MoviCtct = 1 AND FealCtct < '"
  loc_CA2A43: ConcatStr
  loc_CA2A44: FStStrNoPop var_118
  loc_CA2A47: FLdPr Me
  loc_CA2A4A: VCallAd Control_ID_PeriInfoMsk
  loc_CA2A4D: FStAdFunc var_B8
  loc_CA2A50: FLdPr var_B8
  loc_CA2A53: LateIdLdVar var_CC DispID_22 0
  loc_CA2A5A: CStrVarTmp
  loc_CA2A5B: FStStrNoPop var_11C
  loc_CA2A5E: ConcatStr
  loc_CA2A5F: FStStrNoPop var_120
  loc_CA2A62: LitStr "-01-01'"
  loc_CA2A65: ConcatStr
  loc_CA2A66: FStStrNoPop var_124
  loc_CA2A69: LitStr " AND ctacte.CodiConc = '"
  loc_CA2A6C: ConcatStr
  loc_CA2A6D: CVarStr var_F0
  loc_CA2A70: FLdRfVar var_E0
  loc_CA2A73: FLdRfVar var_170
  loc_CA2A76: LitVarStr var_A4, "CodiConc"
  loc_CA2A7B: PopAdLdVar
  loc_CA2A7C: FLdRfVar var_15C
  loc_CA2A7F: FLdRfVar var_D0
  loc_CA2A82: FLdPr Me
  loc_CA2A85: MemLdRfVar from_stack_1.global_96
  loc_CA2A88: NewIfNullPr clsconcepto
  loc_CA2A8B: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2A90: FLdPr var_D0
  loc_CA2A93:  = Me.Fields
  loc_CA2A98: FLdPr var_15C
  loc_CA2A9B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2AA0: FLdPr var_170
  loc_CA2AA3:  = Me.Value
  loc_CA2AA8: FLdRfVar var_E0
  loc_CA2AAB: ConcatVar var_100
  loc_CA2AAF: LitVarStr var_B4, "';"
  loc_CA2AB4: ConcatVar var_110
  loc_CA2AB8: LitVarStr var_1D4, " INSERT INTO tmp_tribu"
  loc_CA2ABD: ConcatVar var_1B0
  loc_CA2AC1: LitVarStr var_1E4, " SELECT CodiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero, 000000000.00 as recupero1,"
  loc_CA2AC6: ConcatVar var_204
  loc_CA2ACA: LitVarStr var_1F4, " 0 as debitos, 0 as creditos, 0 as prescripciones, 0 as condonaciones, 0 as exenciones, 0 as descuentos"
  loc_CA2ACF: ConcatVar var_224
  loc_CA2AD3: LitVarStr var_214, " FROM ctacte INNER JOIN afo ON afo.CodiOfic = ctacte.CodiOfic AND afo.CuenCtct = ctacte.CuenCtct"
  loc_CA2AD8: ConcatVar var_244
  loc_CA2ADC: LitVarStr var_234, " AND afo.PeriCtct = ctacte.PeriCtct AND afo.BimeCtct = ctacte.BimeCtct AND afo.NumeCtct = ctacte.NumeCtct"
  loc_CA2AE1: ConcatVar var_254
  loc_CA2AE5: LitVarStr var_264, " WHERE FealCtct BETWEEN '"
  loc_CA2AEA: ConcatVar var_274
  loc_CA2AEE: FLdPr Me
  loc_CA2AF1: VCallAd Control_ID_PeriInfoMsk
  loc_CA2AF4: FStAdFunc var_18C
  loc_CA2AF7: FLdPr var_18C
  loc_CA2AFA: LateIdLdVar var_294 DispID_22 0
  loc_CA2B01: CStrVarTmp
  loc_CA2B02: CVarStr var_2B4
  loc_CA2B05: ConcatVar var_2D4
  loc_CA2B09: LitVarStr var_284, "-01-01' AND '"
  loc_CA2B0E: ConcatVar var_2F4
  loc_CA2B12: ILdRf var_88
  loc_CA2B15: CVarStr var_2A4
  loc_CA2B18: ConcatVar var_314
  loc_CA2B1C: LitVarStr var_2C4, "' AND (CodiTimo in (2,4,5,9,21,25,26,27))"
  loc_CA2B21: ConcatVar var_334
  loc_CA2B25: LitVarStr var_2E4, " AND ctacte.CodiConc = '"
  loc_CA2B2A: ConcatVar var_354
  loc_CA2B2E: FLdRfVar var_374
  loc_CA2B31: FLdRfVar var_3BC
  loc_CA2B34: LitVarStr var_304, "CodiConc"
  loc_CA2B39: PopAdLdVar
  loc_CA2B3A: FLdRfVar var_3B8
  loc_CA2B3D: FLdRfVar var_1A0
  loc_CA2B40: FLdPr Me
  loc_CA2B43: MemLdRfVar from_stack_1.global_96
  loc_CA2B46: NewIfNullPr clsconcepto
  loc_CA2B49: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2B4E: FLdPr var_1A0
  loc_CA2B51:  = Me.Fields
  loc_CA2B56: FLdPr var_3B8
  loc_CA2B59: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2B5E: FLdPr var_3BC
  loc_CA2B61:  = Me.Value
  loc_CA2B66: FLdRfVar var_374
  loc_CA2B69: ConcatVar var_394
  loc_CA2B6D: LitVarStr var_324, "'"
  loc_CA2B72: ConcatVar var_3B4
  loc_CA2B76: LitVarStr var_344, " GROUP BY CodiConc; DROP TEMPORARY TABLE IF EXISTS afo;"
  loc_CA2B7B: ConcatVar var_3CC
  loc_CA2B7F: CStrVarVal var_128
  loc_CA2B83: FLdPr var_114
  loc_CA2B86: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2B8B: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA2B9A: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = "": var_18C = "": var_1A0 = "": var_3B8 = ""
  loc_CA2BAD: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_294 = "": var_274 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = ""
  loc_CA2BDC: LitStr " DROP TEMPORARY TABLE IF EXISTS recupero1;"
  loc_CA2BDF: LitStr " CREATE TEMPORARY TABLE recupero1 SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte"
  loc_CA2BE2: ConcatStr
  loc_CA2BE3: FStStrNoPop var_94
  loc_CA2BE6: LitStr " WHERE MoviCtct = 1 AND FealCtct >= '"
  loc_CA2BE9: ConcatStr
  loc_CA2BEA: FStStrNoPop var_118
  loc_CA2BED: FLdPr Me
  loc_CA2BF0: VCallAd Control_ID_PeriInfoMsk
  loc_CA2BF3: FStAdFunc var_B8
  loc_CA2BF6: FLdPr var_B8
  loc_CA2BF9: LateIdLdVar var_CC DispID_22 0
  loc_CA2C00: CStrVarTmp
  loc_CA2C01: FStStrNoPop var_11C
  loc_CA2C04: ConcatStr
  loc_CA2C05: FStStrNoPop var_120
  loc_CA2C08: LitStr "-01-01'"
  loc_CA2C0B: ConcatStr
  loc_CA2C0C: FStStrNoPop var_124
  loc_CA2C0F: LitStr " AND ctacte.CodiConc = '"
  loc_CA2C12: ConcatStr
  loc_CA2C13: CVarStr var_F0
  loc_CA2C16: FLdRfVar var_E0
  loc_CA2C19: FLdRfVar var_170
  loc_CA2C1C: LitVarStr var_A4, "CodiConc"
  loc_CA2C21: PopAdLdVar
  loc_CA2C22: FLdRfVar var_15C
  loc_CA2C25: FLdRfVar var_D0
  loc_CA2C28: FLdPr Me
  loc_CA2C2B: MemLdRfVar from_stack_1.global_96
  loc_CA2C2E: NewIfNullPr clsconcepto
  loc_CA2C31: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2C36: FLdPr var_D0
  loc_CA2C39:  = Me.Fields
  loc_CA2C3E: FLdPr var_15C
  loc_CA2C41: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2C46: FLdPr var_170
  loc_CA2C49:  = Me.Value
  loc_CA2C4E: FLdRfVar var_E0
  loc_CA2C51: ConcatVar var_100
  loc_CA2C55: LitVarStr var_B4, "';"
  loc_CA2C5A: ConcatVar var_110
  loc_CA2C5E: LitVarStr var_1D4, " INSERT INTO tmp_tribu"
  loc_CA2C63: ConcatVar var_1B0
  loc_CA2C67: LitVarStr var_1E4, " SELECT CodiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion,"
  loc_CA2C6C: ConcatVar var_204
  loc_CA2C70: LitVarStr var_1F4, " 000000000.00 as recupero, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero1,"
  loc_CA2C75: ConcatVar var_224
  loc_CA2C79: LitVarStr var_214, " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2C7E: ConcatVar var_244
  loc_CA2C82: LitVarStr var_234, " FROM ctacte"
  loc_CA2C87: ConcatVar var_254
  loc_CA2C8B: LitVarStr var_264, " INNER JOIN recupero1 ON recupero1.CodiOfic = ctacte.CodiOfic AND recupero1.CuenCtct = ctacte.CuenCtct   AND recupero1.PeriCtct = ctacte.PeriCtct AND recupero1.BimeCtct = ctacte.BimeCtct AND recupero1.NumeCtct = ctacte.NumeCtct"
  loc_CA2C90: ConcatVar var_274
  loc_CA2C94: LitVarStr var_284, " WHERE FealCtct BETWEEN '"
  loc_CA2C99: ConcatVar var_294
  loc_CA2C9D: FLdPr Me
  loc_CA2CA0: VCallAd Control_ID_PeriInfoMsk
  loc_CA2CA3: FStAdFunc var_18C
  loc_CA2CA6: FLdPr var_18C
  loc_CA2CA9: LateIdLdVar var_2B4 DispID_22 0
  loc_CA2CB0: CStrVarTmp
  loc_CA2CB1: CVarStr var_2D4
  loc_CA2CB4: ConcatVar var_2F4
  loc_CA2CB8: LitVarStr var_2A4, "-01-01' AND '"
  loc_CA2CBD: ConcatVar var_314
  loc_CA2CC1: ILdRf var_88
  loc_CA2CC4: CVarStr var_2C4
  loc_CA2CC7: ConcatVar var_334
  loc_CA2CCB: LitVarStr var_2E4, "' AND (CodiTimo in (2,4,5,9,21,25,26,27)) "
  loc_CA2CD0: ConcatVar var_354
  loc_CA2CD4: LitVarStr var_304, " GROUP BY CodiConc;"
  loc_CA2CD9: ConcatVar var_374
  loc_CA2CDD: LitVarStr var_324, " DROP TEMPORARY TABLE IF EXISTS recupero1;"
  loc_CA2CE2: ConcatVar var_394
  loc_CA2CE6: CStrVarVal var_128
  loc_CA2CEA: FLdPr var_114
  loc_CA2CED: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2CF2: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA2D01: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = ""
  loc_CA2D0E: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_2B4 = "": var_294 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = ""
  loc_CA2D39: Branch loc_CA3520
  loc_CA2D3C: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_CA2D3F: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_CA2D42: ConcatStr
  loc_CA2D43: FStStrNoPop var_94
  loc_CA2D46: LitStr " SELECT '"
  loc_CA2D49: ConcatStr
  loc_CA2D4A: FStStrNoPop var_11C
  loc_CA2D4D: FLdRfVar var_118
  loc_CA2D50: FLdPr Me
  loc_CA2D53: MemLdRfVar from_stack_1.global_96
  loc_CA2D56: NewIfNullPr clsconcepto
  loc_CA2D59: from_stack_1 = clsconcepto.CodiConc
  loc_CA2D5E: ILdRf var_118
  loc_CA2D61: ConcatStr
  loc_CA2D62: FStStrNoPop var_120
  loc_CA2D65: LitStr "' CodiConc, ROUND(SUM(replace(ImpoSain,',','.')),2) morosidad, "
  loc_CA2D68: ConcatStr
  loc_CA2D69: FStStrNoPop var_124
  loc_CA2D6C: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA2D6F: ConcatStr
  loc_CA2D70: FStStrNoPop var_128
  loc_CA2D73: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2D76: ConcatStr
  loc_CA2D77: FStStrNoPop var_12C
  loc_CA2D7A: LitStr " FROM saldoinicialcuota WHERE ConcViej = '"
  loc_CA2D7D: ConcatStr
  loc_CA2D7E: CVarStr var_E0
  loc_CA2D81: FLdRfVar var_CC
  loc_CA2D84: FLdRfVar var_15C
  loc_CA2D87: LitVarStr var_A4, "ConcViej"
  loc_CA2D8C: PopAdLdVar
  loc_CA2D8D: FLdRfVar var_D0
  loc_CA2D90: FLdRfVar var_B8
  loc_CA2D93: FLdPr Me
  loc_CA2D96: MemLdRfVar from_stack_1.global_96
  loc_CA2D99: NewIfNullPr clsconcepto
  loc_CA2D9C: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2DA1: FLdPr var_B8
  loc_CA2DA4:  = Me.Fields
  loc_CA2DA9: FLdPr var_D0
  loc_CA2DAC: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2DB1: FLdPr var_15C
  loc_CA2DB4:  = Me.Value
  loc_CA2DB9: FLdRfVar var_CC
  loc_CA2DBC: ConcatVar var_F0
  loc_CA2DC0: LitVarStr var_B4, "'"
  loc_CA2DC5: ConcatVar var_100
  loc_CA2DC9: CStrVarVal var_130
  loc_CA2DCD: FLdPr var_114
  loc_CA2DD0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2DD5: FFreeStr var_94 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_CA2DE8: FFreeAd var_B8 = "": var_D0 = ""
  loc_CA2DF1: FFreeVar var_E0 = "": var_CC = "": var_F0 = ""
  loc_CA2DFC: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_CA2DFF: LitStr " SELECT '"
  loc_CA2E02: ConcatStr
  loc_CA2E03: FStStrNoPop var_118
  loc_CA2E06: FLdRfVar var_94
  loc_CA2E09: FLdPr Me
  loc_CA2E0C: MemLdRfVar from_stack_1.global_96
  loc_CA2E0F: NewIfNullPr clsconcepto
  loc_CA2E12: from_stack_1 = clsconcepto.CodiConc
  loc_CA2E17: ILdRf var_94
  loc_CA2E1A: ConcatStr
  loc_CA2E1B: FStStrNoPop var_11C
  loc_CA2E1E: LitStr "' CodiConc, SUM(credito) * -1 AS morosidad, "
  loc_CA2E21: ConcatStr
  loc_CA2E22: FStStrNoPop var_120
  loc_CA2E25: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA2E28: ConcatStr
  loc_CA2E29: FStStrNoPop var_124
  loc_CA2E2C: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2E2F: ConcatStr
  loc_CA2E30: FStStrNoPop var_128
  loc_CA2E33: LitStr " FROM saldocreditocuota"
  loc_CA2E36: ConcatStr
  loc_CA2E37: FStStrNoPop var_12C
  loc_CA2E3A: LitStr " WHERE ConcViej = '"
  loc_CA2E3D: ConcatStr
  loc_CA2E3E: CVarStr var_E0
  loc_CA2E41: FLdRfVar var_CC
  loc_CA2E44: FLdRfVar var_15C
  loc_CA2E47: LitVarStr var_A4, "ConcViej"
  loc_CA2E4C: PopAdLdVar
  loc_CA2E4D: FLdRfVar var_D0
  loc_CA2E50: FLdRfVar var_B8
  loc_CA2E53: FLdPr Me
  loc_CA2E56: MemLdRfVar from_stack_1.global_96
  loc_CA2E59: NewIfNullPr clsconcepto
  loc_CA2E5C: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA2E61: FLdPr var_B8
  loc_CA2E64:  = Me.Fields
  loc_CA2E69: FLdPr var_D0
  loc_CA2E6C: from_stack_2 = Me.Item(from_stack_1)
  loc_CA2E71: FLdPr var_15C
  loc_CA2E74:  = Me.Value
  loc_CA2E79: FLdRfVar var_CC
  loc_CA2E7C: ConcatVar var_F0
  loc_CA2E80: LitVarStr var_B4, "' AND  FechaHasta < '"
  loc_CA2E85: ConcatVar var_100
  loc_CA2E89: FLdPr Me
  loc_CA2E8C: VCallAd Control_ID_PeriInfoMsk
  loc_CA2E8F: FStAdFunc var_170
  loc_CA2E92: FLdPr var_170
  loc_CA2E95: LateIdLdVar var_110 DispID_22 0
  loc_CA2E9C: CStrVarTmp
  loc_CA2E9D: CVarStr var_1B0
  loc_CA2EA0: ConcatVar var_204
  loc_CA2EA4: LitVarStr var_1D4, "-01-01'"
  loc_CA2EA9: ConcatVar var_224
  loc_CA2EAD: CStrVarVal var_130
  loc_CA2EB1: FLdPr var_114
  loc_CA2EB4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2EB9: FFreeStr var_118 = "": var_94 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_CA2ECC: FFreeAd var_B8 = "": var_D0 = "": var_15C = ""
  loc_CA2ED7: FFreeVar var_E0 = "": var_CC = "": var_F0 = "": var_110 = "": var_100 = "": var_1B0 = "": var_204 = ""
  loc_CA2EEA: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_CA2EED: LitStr " SELECT IFNULL(CodiConc,'"
  loc_CA2EF0: ConcatStr
  loc_CA2EF1: FStStrNoPop var_118
  loc_CA2EF4: FLdRfVar var_94
  loc_CA2EF7: FLdPr Me
  loc_CA2EFA: MemLdRfVar from_stack_1.global_96
  loc_CA2EFD: NewIfNullPr clsconcepto
  loc_CA2F00: from_stack_1 = clsconcepto.CodiConc
  loc_CA2F05: ILdRf var_94
  loc_CA2F08: ConcatStr
  loc_CA2F09: FStStrNoPop var_11C
  loc_CA2F0C: LitStr "') CodiConc, SUM(IF(CodiTimo IN (3,8,10,19,22,24),DebeCtct,0))-SUM(CredCtct) AS morosidad,"
  loc_CA2F0F: ConcatStr
  loc_CA2F10: FStStrNoPop var_120
  loc_CA2F13: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA2F16: ConcatStr
  loc_CA2F17: FStStrNoPop var_124
  loc_CA2F1A: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2F1D: ConcatStr
  loc_CA2F1E: FStStrNoPop var_128
  loc_CA2F21: LitStr " FROM ctacte"
  loc_CA2F24: ConcatStr
  loc_CA2F25: FStStrNoPop var_12C
  loc_CA2F28: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND ctacte.FealCtct < '"
  loc_CA2F2B: ConcatStr
  loc_CA2F2C: FStStrNoPop var_130
  loc_CA2F2F: FLdPr Me
  loc_CA2F32: VCallAd Control_ID_PeriInfoMsk
  loc_CA2F35: FStAdFunc var_B8
  loc_CA2F38: FLdPr var_B8
  loc_CA2F3B: LateIdLdVar var_CC DispID_22 0
  loc_CA2F42: CStrVarTmp
  loc_CA2F43: FStStrNoPop var_134
  loc_CA2F46: ConcatStr
  loc_CA2F47: FStStrNoPop var_138
  loc_CA2F4A: LitStr "-01-01'"
  loc_CA2F4D: ConcatStr
  loc_CA2F4E: FStStrNoPop var_13C
  loc_CA2F51: LitStr " AND CodiConc = '"
  loc_CA2F54: ConcatStr
  loc_CA2F55: FStStrNoPop var_144
  loc_CA2F58: FLdRfVar var_140
  loc_CA2F5B: FLdPr Me
  loc_CA2F5E: MemLdRfVar from_stack_1.global_96
  loc_CA2F61: NewIfNullPr clsconcepto
  loc_CA2F64: from_stack_1 = clsconcepto.CodiConc
  loc_CA2F69: ILdRf var_140
  loc_CA2F6C: ConcatStr
  loc_CA2F6D: FStStrNoPop var_148
  loc_CA2F70: LitStr "'"
  loc_CA2F73: ConcatStr
  loc_CA2F74: FStStrNoPop var_14C
  loc_CA2F77: FLdPr var_114
  loc_CA2F7A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2F7F: FFreeStr var_118 = "": var_94 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = ""
  loc_CA2FA0: FFree1Ad var_B8
  loc_CA2FA3: FFree1Var var_CC = ""
  loc_CA2FA6: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_CA2FA9: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_CA2FAC: ConcatStr
  loc_CA2FAD: FStStrNoPop var_94
  loc_CA2FB0: LitStr " SELECT CodiConc, SUM(morosidad) morosidad,"
  loc_CA2FB3: ConcatStr
  loc_CA2FB4: FStStrNoPop var_118
  loc_CA2FB7: LitStr " 000000000.00 as facturacion, 000000000.00 as recaudacion, 000000000.00 as recupero, 000000000.00 as recupero1,"
  loc_CA2FBA: ConcatStr
  loc_CA2FBB: FStStrNoPop var_11C
  loc_CA2FBE: LitStr " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA2FC1: ConcatStr
  loc_CA2FC2: FStStrNoPop var_120
  loc_CA2FC5: LitStr " FROM tmp_saldo_inicial1"
  loc_CA2FC8: ConcatStr
  loc_CA2FC9: FStStrNoPop var_124
  loc_CA2FCC: FLdPr var_114
  loc_CA2FCF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA2FD4: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA2FE1: LitStr " INSERT INTO tmp_tribu"
  loc_CA2FE4: LitStr " (SELECT IFNULL(CodiConc,'') CodiConc, 000000000.00 AS morosidad, IFNULL(SUM(IF(CodiTimo=1, 000000000.00,000000000.00)),0) AS facturacion, "
  loc_CA2FE7: ConcatStr
  loc_CA2FE8: FStStrNoPop var_94
  loc_CA2FEB: LitStr " IFNULL(SUM(IF(CodiTimo IN (2,4,5,9,21,25),CredCtct,000000000.00)),0) - IFNULL(SUM(IF(CodiTimo IN (26,27),DebeCtct,000000000.00)),0) AS recaudacion, "
  loc_CA2FEE: ConcatStr
  loc_CA2FEF: FStStrNoPop var_118
  loc_CA2FF2: LitStr " 000000000.00 AS recupero, 000000000.00 AS recupero1, "
  loc_CA2FF5: ConcatStr
  loc_CA2FF6: FStStrNoPop var_11C
  loc_CA2FF9: LitStr " IFNULL(SUM(IF(CodiTimo IN (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)),0) AS debitos, "
  loc_CA2FFC: ConcatStr
  loc_CA2FFD: FStStrNoPop var_120
  loc_CA3000: LitStr " IFNULL(SUM(IF(CodiTimo IN (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)) + SUM(if(CodiTimo IN (27,28),DebeCtct,000000000.00)),'0') AS creditos, "
  loc_CA3003: ConcatStr
  loc_CA3004: FStStrNoPop var_124
  loc_CA3007: LitStr " IFNULL(SUM(IF(CodiTimo=12,CredCtct,000000000.00)),0) AS prescripciones, "
  loc_CA300A: ConcatStr
  loc_CA300B: FStStrNoPop var_128
  loc_CA300E: LitStr " IFNULL(SUM(IF(CodiTimo=14,CredCtct,000000000.00)),0) AS condonaciones, "
  loc_CA3011: ConcatStr
  loc_CA3012: FStStrNoPop var_12C
  loc_CA3015: LitStr " IFNULL(SUM(IF(CodiTimo=15,CredCtct,000000000.00)),0) AS exenciones, "
  loc_CA3018: ConcatStr
  loc_CA3019: FStStrNoPop var_130
  loc_CA301C: LitStr " IFNULL(SUM(IF(CodiTimo IN (6,7),CredCtct,000000000.00)),0) - IFNULL(SUM(IF(CodiTimo IN (28),DebeCtct,000000000.00)),0) AS descuentos"
  loc_CA301F: ConcatStr
  loc_CA3020: FStStrNoPop var_134
  loc_CA3023: LitStr " FROM ctacte"
  loc_CA3026: ConcatStr
  loc_CA3027: FStStrNoPop var_138
  loc_CA302A: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_CA302D: ConcatStr
  loc_CA302E: FStStrNoPop var_13C
  loc_CA3031: FLdPr Me
  loc_CA3034: VCallAd Control_ID_PeriInfoMsk
  loc_CA3037: FStAdFunc var_B8
  loc_CA303A: FLdPr var_B8
  loc_CA303D: LateIdLdVar var_CC DispID_22 0
  loc_CA3044: CStrVarTmp
  loc_CA3045: FStStrNoPop var_140
  loc_CA3048: ConcatStr
  loc_CA3049: FStStrNoPop var_144
  loc_CA304C: LitStr "-01-01' AND '"
  loc_CA304F: ConcatStr
  loc_CA3050: FStStrNoPop var_148
  loc_CA3053: ILdRf var_88
  loc_CA3056: ConcatStr
  loc_CA3057: FStStrNoPop var_14C
  loc_CA305A: LitStr "' AND ctacte.CodiConc = '"
  loc_CA305D: ConcatStr
  loc_CA305E: CVarStr var_F0
  loc_CA3061: FLdRfVar var_E0
  loc_CA3064: FLdRfVar var_170
  loc_CA3067: LitVarStr var_A4, "CodiConc"
  loc_CA306C: PopAdLdVar
  loc_CA306D: FLdRfVar var_15C
  loc_CA3070: FLdRfVar var_D0
  loc_CA3073: FLdPr Me
  loc_CA3076: MemLdRfVar from_stack_1.global_96
  loc_CA3079: NewIfNullPr clsconcepto
  loc_CA307C: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA3081: FLdPr var_D0
  loc_CA3084:  = Me.Fields
  loc_CA3089: FLdPr var_15C
  loc_CA308C: from_stack_2 = Me.Item(from_stack_1)
  loc_CA3091: FLdPr var_170
  loc_CA3094:  = Me.Value
  loc_CA3099: FLdRfVar var_E0
  loc_CA309C: ConcatVar var_100
  loc_CA30A0: LitVarStr var_B4, "') UNION ALL"
  loc_CA30A5: ConcatVar var_110
  loc_CA30A9: LitVarStr var_1D4, " (SELECT "
  loc_CA30AE: ConcatVar var_1B0
  loc_CA30B2: FLdRfVar var_150
  loc_CA30B5: FLdPr Me
  loc_CA30B8: MemLdRfVar from_stack_1.global_96
  loc_CA30BB: NewIfNullPr clsconcepto
  loc_CA30BE: from_stack_1 = clsconcepto.CodiConc
  loc_CA30C3: FLdZeroAd var_150
  loc_CA30C6: CVarStr var_204
  loc_CA30C9: ConcatVar var_224
  loc_CA30CD: LitVarStr var_1E4, " CodiConc, 000000000.00 morosidad, 000000000.00  facturacion, "
  loc_CA30D2: ConcatVar var_244
  loc_CA30D6: LitVarStr var_1F4, " 000000000.00 recaudacion, 000000000.00 AS recupero, 000000000.00 AS recupero1,"
  loc_CA30DB: ConcatVar var_254
  loc_CA30DF: LitVarStr var_214, " 000000000.00  debitos, SUM(Credito)  creditos,"
  loc_CA30E4: ConcatVar var_274
  loc_CA30E8: LitVarStr var_234, " 000000000.00  prescripciones, 000000000.00  condonaciones, 000000000.00  exenciones, 000000000.00  descuentos"
  loc_CA30ED: ConcatVar var_294
  loc_CA30F1: LitVarStr var_264, " FROM saldocreditocuota"
  loc_CA30F6: ConcatVar var_2B4
  loc_CA30FA: LitVarStr var_284, " WHERE FechaDesde >= '"
  loc_CA30FF: ConcatVar var_2D4
  loc_CA3103: FLdPr Me
  loc_CA3106: VCallAd Control_ID_PeriInfoMsk
  loc_CA3109: FStAdFunc var_18C
  loc_CA310C: FLdPr var_18C
  loc_CA310F: LateIdLdVar var_2F4 DispID_22 0
  loc_CA3116: CStrVarTmp
  loc_CA3117: CVarStr var_314
  loc_CA311A: ConcatVar var_334
  loc_CA311E: LitVarStr var_2A4, "-01-01' AND FechaHasta <= '"
  loc_CA3123: ConcatVar var_354
  loc_CA3127: ILdRf var_88
  loc_CA312A: CVarStr var_2C4
  loc_CA312D: ConcatVar var_374
  loc_CA3131: LitVarStr var_2E4, "' AND ConcViej = '"
  loc_CA3136: ConcatVar var_394
  loc_CA313A: FLdRfVar var_3B4
  loc_CA313D: FLdRfVar var_3BC
  loc_CA3140: LitVarStr var_304, "ConcViej"
  loc_CA3145: PopAdLdVar
  loc_CA3146: FLdRfVar var_3B8
  loc_CA3149: FLdRfVar var_1A0
  loc_CA314C: FLdPr Me
  loc_CA314F: MemLdRfVar from_stack_1.global_96
  loc_CA3152: NewIfNullPr clsconcepto
  loc_CA3155: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA315A: FLdPr var_1A0
  loc_CA315D:  = Me.Fields
  loc_CA3162: FLdPr var_3B8
  loc_CA3165: from_stack_2 = Me.Item(from_stack_1)
  loc_CA316A: FLdPr var_3BC
  loc_CA316D:  = Me.Value
  loc_CA3172: FLdRfVar var_3B4
  loc_CA3175: ConcatVar var_3CC
  loc_CA3179: LitVarStr var_324, "')"
  loc_CA317E: ConcatVar var_3DC
  loc_CA3182: LitVarStr var_344, " UNION ALL"
  loc_CA3187: ConcatVar var_3EC
  loc_CA318B: LitVarStr var_364, " (SELECT * FROM tmp_saldo_info);"
  loc_CA3190: ConcatVar var_3FC
  loc_CA3194: CStrVarVal var_154
  loc_CA3198: FLdPr var_114
  loc_CA319B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA31A0: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_CA31C3: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = "": var_18C = "": var_1A0 = "": var_3B8 = ""
  loc_CA31D6: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2F4 = "": var_2D4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = ""
  loc_CA320B: LitStr " DROP TEMPORARY TABLE IF EXISTS afo; CREATE TEMPORARY TABLE afo"
  loc_CA320E: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte"
  loc_CA3211: ConcatStr
  loc_CA3212: FStStrNoPop var_94
  loc_CA3215: LitStr " WHERE MoviCtct = 1 AND FealCtct < '"
  loc_CA3218: ConcatStr
  loc_CA3219: FStStrNoPop var_118
  loc_CA321C: FLdPr Me
  loc_CA321F: VCallAd Control_ID_PeriInfoMsk
  loc_CA3222: FStAdFunc var_B8
  loc_CA3225: FLdPr var_B8
  loc_CA3228: LateIdLdVar var_CC DispID_22 0
  loc_CA322F: CStrVarTmp
  loc_CA3230: FStStrNoPop var_11C
  loc_CA3233: ConcatStr
  loc_CA3234: FStStrNoPop var_120
  loc_CA3237: LitStr "-01-01'"
  loc_CA323A: ConcatStr
  loc_CA323B: FStStrNoPop var_124
  loc_CA323E: LitStr " AND ctacte.CodiConc = '"
  loc_CA3241: ConcatStr
  loc_CA3242: CVarStr var_F0
  loc_CA3245: FLdRfVar var_E0
  loc_CA3248: FLdRfVar var_170
  loc_CA324B: LitVarStr var_A4, "CodiConc"
  loc_CA3250: PopAdLdVar
  loc_CA3251: FLdRfVar var_15C
  loc_CA3254: FLdRfVar var_D0
  loc_CA3257: FLdPr Me
  loc_CA325A: MemLdRfVar from_stack_1.global_96
  loc_CA325D: NewIfNullPr clsconcepto
  loc_CA3260: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA3265: FLdPr var_D0
  loc_CA3268:  = Me.Fields
  loc_CA326D: FLdPr var_15C
  loc_CA3270: from_stack_2 = Me.Item(from_stack_1)
  loc_CA3275: FLdPr var_170
  loc_CA3278:  = Me.Value
  loc_CA327D: FLdRfVar var_E0
  loc_CA3280: ConcatVar var_100
  loc_CA3284: LitVarStr var_B4, "';"
  loc_CA3289: ConcatVar var_110
  loc_CA328D: LitVarStr var_1D4, " INSERT INTO tmp_tribu"
  loc_CA3292: ConcatVar var_1B0
  loc_CA3296: LitVarStr var_1E4, " SELECT CodiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero, 000000000.00 as recupero1,"
  loc_CA329B: ConcatVar var_204
  loc_CA329F: LitVarStr var_1F4, " 0 as debitos, 0 as creditos, 0 as prescripciones, 0 as condonaciones, 0 as exenciones, 0 as descuentos"
  loc_CA32A4: ConcatVar var_224
  loc_CA32A8: LitVarStr var_214, " FROM ctacte INNER JOIN afo ON afo.CodiOfic = ctacte.CodiOfic AND afo.CuenCtct = ctacte.CuenCtct"
  loc_CA32AD: ConcatVar var_244
  loc_CA32B1: LitVarStr var_234, " AND afo.PeriCtct = ctacte.PeriCtct AND afo.BimeCtct = ctacte.BimeCtct AND afo.NumeCtct = ctacte.NumeCtct"
  loc_CA32B6: ConcatVar var_254
  loc_CA32BA: LitVarStr var_264, " WHERE FealCtct BETWEEN '"
  loc_CA32BF: ConcatVar var_274
  loc_CA32C3: FLdPr Me
  loc_CA32C6: VCallAd Control_ID_PeriInfoMsk
  loc_CA32C9: FStAdFunc var_18C
  loc_CA32CC: FLdPr var_18C
  loc_CA32CF: LateIdLdVar var_294 DispID_22 0
  loc_CA32D6: CStrVarTmp
  loc_CA32D7: CVarStr var_2B4
  loc_CA32DA: ConcatVar var_2D4
  loc_CA32DE: LitVarStr var_284, "-01-01' AND '"
  loc_CA32E3: ConcatVar var_2F4
  loc_CA32E7: ILdRf var_88
  loc_CA32EA: CVarStr var_2A4
  loc_CA32ED: ConcatVar var_314
  loc_CA32F1: LitVarStr var_2C4, "' AND (CodiTimo in (2,4,5,9,21,25,26,27))"
  loc_CA32F6: ConcatVar var_334
  loc_CA32FA: LitVarStr var_2E4, " AND ctacte.CodiConc = '"
  loc_CA32FF: ConcatVar var_354
  loc_CA3303: FLdRfVar var_374
  loc_CA3306: FLdRfVar var_3BC
  loc_CA3309: LitVarStr var_304, "CodiConc"
  loc_CA330E: PopAdLdVar
  loc_CA330F: FLdRfVar var_3B8
  loc_CA3312: FLdRfVar var_1A0
  loc_CA3315: FLdPr Me
  loc_CA3318: MemLdRfVar from_stack_1.global_96
  loc_CA331B: NewIfNullPr clsconcepto
  loc_CA331E: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA3323: FLdPr var_1A0
  loc_CA3326:  = Me.Fields
  loc_CA332B: FLdPr var_3B8
  loc_CA332E: from_stack_2 = Me.Item(from_stack_1)
  loc_CA3333: FLdPr var_3BC
  loc_CA3336:  = Me.Value
  loc_CA333B: FLdRfVar var_374
  loc_CA333E: ConcatVar var_394
  loc_CA3342: LitVarStr var_324, "'"
  loc_CA3347: ConcatVar var_3B4
  loc_CA334B: LitVarStr var_344, " GROUP BY CodiConc; DROP TEMPORARY TABLE IF EXISTS afo;"
  loc_CA3350: ConcatVar var_3CC
  loc_CA3354: CStrVarVal var_128
  loc_CA3358: FLdPr var_114
  loc_CA335B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA3360: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA336F: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = "": var_18C = "": var_1A0 = "": var_3B8 = ""
  loc_CA3382: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_294 = "": var_274 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = ""
  loc_CA33B1: LitStr " DROP TEMPORARY TABLE IF EXISTS recupero1;"
  loc_CA33B4: LitStr " CREATE TEMPORARY TABLE recupero1 SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct FROM ctacte"
  loc_CA33B7: ConcatStr
  loc_CA33B8: FStStrNoPop var_94
  loc_CA33BB: LitStr " WHERE MoviCtct = 1 AND FealCtct BETWEEN '"
  loc_CA33BE: ConcatStr
  loc_CA33BF: FStStrNoPop var_118
  loc_CA33C2: FLdPr Me
  loc_CA33C5: VCallAd Control_ID_PeriInfoMsk
  loc_CA33C8: FStAdFunc var_B8
  loc_CA33CB: FLdPr var_B8
  loc_CA33CE: LateIdLdVar var_CC DispID_22 0
  loc_CA33D5: CStrVarTmp
  loc_CA33D6: FStStrNoPop var_11C
  loc_CA33D9: ConcatStr
  loc_CA33DA: FStStrNoPop var_120
  loc_CA33DD: LitStr "-01-01' AND '"
  loc_CA33E0: ConcatStr
  loc_CA33E1: FStStrNoPop var_124
  loc_CA33E4: ILdRf var_88
  loc_CA33E7: ConcatStr
  loc_CA33E8: FStStrNoPop var_128
  loc_CA33EB: LitStr "'"
  loc_CA33EE: ConcatStr
  loc_CA33EF: FStStrNoPop var_12C
  loc_CA33F2: LitStr " AND ctacte.CodiConc = '"
  loc_CA33F5: ConcatStr
  loc_CA33F6: CVarStr var_F0
  loc_CA33F9: FLdRfVar var_E0
  loc_CA33FC: FLdRfVar var_170
  loc_CA33FF: LitVarStr var_A4, "CodiConc"
  loc_CA3404: PopAdLdVar
  loc_CA3405: FLdRfVar var_15C
  loc_CA3408: FLdRfVar var_D0
  loc_CA340B: FLdPr Me
  loc_CA340E: MemLdRfVar from_stack_1.global_96
  loc_CA3411: NewIfNullPr clsconcepto
  loc_CA3414: from_stack_1v = clsconcepto.RsFrmGet()
  loc_CA3419: FLdPr var_D0
  loc_CA341C:  = Me.Fields
  loc_CA3421: FLdPr var_15C
  loc_CA3424: from_stack_2 = Me.Item(from_stack_1)
  loc_CA3429: FLdPr var_170
  loc_CA342C:  = Me.Value
  loc_CA3431: FLdRfVar var_E0
  loc_CA3434: ConcatVar var_100
  loc_CA3438: LitVarStr var_B4, "';"
  loc_CA343D: ConcatVar var_110
  loc_CA3441: LitVarStr var_1D4, " INSERT INTO tmp_tribu"
  loc_CA3446: ConcatVar var_1B0
  loc_CA344A: LitVarStr var_1E4, " SELECT CodiConc, 000000000.00 as morosidad, 000000000.00 as facturacion, 000000000.00 as recaudacion,"
  loc_CA344F: ConcatVar var_204
  loc_CA3453: LitVarStr var_1F4, " 000000000.00 as recupero, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) - sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as recupero1,"
  loc_CA3458: ConcatVar var_224
  loc_CA345C: LitVarStr var_214, " 000000000.00 as debitos, 000000000.00 as creditos, 000000000.00 as prescripciones, 000000000.00 as condonaciones, 000000000.00 as exenciones, 000000000.00 as descuentos"
  loc_CA3461: ConcatVar var_244
  loc_CA3465: LitVarStr var_234, " FROM ctacte"
  loc_CA346A: ConcatVar var_254
  loc_CA346E: LitVarStr var_264, " INNER JOIN recupero1 ON recupero1.CodiOfic = ctacte.CodiOfic AND recupero1.CuenCtct = ctacte.CuenCtct   AND recupero1.PeriCtct = ctacte.PeriCtct AND recupero1.BimeCtct = ctacte.BimeCtct AND recupero1.NumeCtct = ctacte.NumeCtct"
  loc_CA3473: ConcatVar var_274
  loc_CA3477: LitVarStr var_284, " WHERE FealCtct BETWEEN '"
  loc_CA347C: ConcatVar var_294
  loc_CA3480: FLdPr Me
  loc_CA3483: VCallAd Control_ID_PeriInfoMsk
  loc_CA3486: FStAdFunc var_18C
  loc_CA3489: FLdPr var_18C
  loc_CA348C: LateIdLdVar var_2B4 DispID_22 0
  loc_CA3493: CStrVarTmp
  loc_CA3494: CVarStr var_2D4
  loc_CA3497: ConcatVar var_2F4
  loc_CA349B: LitVarStr var_2A4, "-01-01' AND '"
  loc_CA34A0: ConcatVar var_314
  loc_CA34A4: ILdRf var_88
  loc_CA34A7: CVarStr var_2C4
  loc_CA34AA: ConcatVar var_334
  loc_CA34AE: LitVarStr var_2E4, "' AND (CodiTimo in (2,4,5,9,21,25,26,27)) "
  loc_CA34B3: ConcatVar var_354
  loc_CA34B7: LitVarStr var_304, " GROUP BY CodiConc;"
  loc_CA34BC: ConcatVar var_374
  loc_CA34C0: LitVarStr var_324, " DROP TEMPORARY TABLE IF EXISTS recupero1;"
  loc_CA34C5: ConcatVar var_394
  loc_CA34C9: CStrVarVal var_130
  loc_CA34CD: FLdPr var_114
  loc_CA34D0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA34D5: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_CA34E8: FFreeAd var_B8 = "": var_D0 = "": var_15C = "": var_170 = ""
  loc_CA34F5: FFreeVar var_CC = "": var_F0 = "": var_E0 = "": var_100 = "": var_110 = "": var_1B0 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_2B4 = "": var_294 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = "": var_354 = "": var_374 = ""
  loc_CA3520: LitStr " INSERT INTO tribu"
  loc_CA3523: LitStr " SELECT CodiConc, IFNULL(sum(morosidad),0) as morosidad, IFNULL(sum(facturacion),0) as facturacion,"
  loc_CA3526: ConcatStr
  loc_CA3527: FStStrNoPop var_94
  loc_CA352A: LitStr " IFNULL(sum(recaudacion),0) as recaudacion, IFNULL(sum(recupero),0) as recupero, IFNULL(sum(recupero1),0) recupero1,"
  loc_CA352D: ConcatStr
  loc_CA352E: FStStrNoPop var_118
  loc_CA3531: LitStr " IFNULL(sum(morosidad),0)+IFNULL(sum(facturacion),0)-IFNULL(sum(recupero),0)-IFNULL(sum(recupero1),0) +IFNULL(sum(debitos),0)-IFNULL(sum(creditos),0)-IFNULL(sum(prescripciones),0)-IFNULL(sum(condonaciones),0)-IFNULL(sum(exenciones),0)-IFNULL(sum(descuentos),0) as salmoracufin"
  loc_CA3534: ConcatStr
  loc_CA3535: FStStrNoPop var_11C
  loc_CA3538: LitStr " FROM tmp_tribu"
  loc_CA353B: ConcatStr
  loc_CA353C: FStStrNoPop var_120
  loc_CA353F: LitStr " GROUP BY CodiConc ORDER BY CodiConc"
  loc_CA3542: ConcatStr
  loc_CA3543: FStStrNoPop var_124
  loc_CA3546: FLdPr var_114
  loc_CA3549: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA354E: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA355B: FLdPr Me
  loc_CA355E: MemLdRfVar from_stack_1.global_96
  loc_CA3561: NewIfNullPr clsconcepto
  loc_CA3564: Call clsconcepto.MoveSiguiente()
  loc_CA3569: Branch loc_CA254F
  loc_CA356C: LitStr "SELECT tribu.CodiConc ActiConc, c.DetaConc DetaCuco, morosidad, facturacion,"
  loc_CA356F: LitStr " recupero1, recupero, salmoracufin"
  loc_CA3572: ConcatStr
  loc_CA3573: FStStrNoPop var_94
  loc_CA3576: LitStr " FROM tribu INNER JOIN concepto as c ON c.PeriInfo = "
  loc_CA3579: ConcatStr
  loc_CA357A: FStStrNoPop var_118
  loc_CA357D: FLdPr Me
  loc_CA3580: VCallAd Control_ID_PeriInfoMsk
  loc_CA3583: FStAdFunc var_B8
  loc_CA3586: FLdPr var_B8
  loc_CA3589: LateIdLdVar var_CC DispID_22 0
  loc_CA3590: CStrVarTmp
  loc_CA3591: FStStrNoPop var_11C
  loc_CA3594: ConcatStr
  loc_CA3595: FStStrNoPop var_120
  loc_CA3598: LitStr " AND c.CodiConc = tribu.CodiConc"
  loc_CA359B: ConcatStr
  loc_CA359C: FStStrNoPop var_124
  loc_CA359F: LitStr " GROUP BY tribu.CodiConc ORDER BY tribu.CodiConc"
  loc_CA35A2: ConcatStr
  loc_CA35A3: FStStrNoPop var_128
  loc_CA35A6: FLdPr var_114
  loc_CA35A9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA35AE: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA35BD: FFree1Ad var_B8
  loc_CA35C0: FFree1Var var_CC = ""
  loc_CA35C3: FLdRfVar var_1C4
  loc_CA35C6: FLdPr var_114
  loc_CA35C9: from_stack_1 = clsctacte.RecordCount
  loc_CA35CE: ILdRf var_1C4
  loc_CA35D1: LitI4 0
  loc_CA35D6: EqI4
  loc_CA35D7: BranchF loc_CA35E5
  loc_CA35DA: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CA35DD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CA35E2: Branch loc_CA38C3
  loc_CA35E5: LitI4 0
  loc_CA35EA: LitI4 1
  loc_CA35EF: FLdPr Me
  loc_CA35F2: MemLdRfVar from_stack_1.global_104
  loc_CA35F5: Redim
  loc_CA35FF: LitI4 0
  loc_CA3604: FLdRfVar var_1C4
  loc_CA3607: FLdPr var_114
  loc_CA360A: from_stack_1 = clsctacte.RecordCount
  loc_CA360F: ILdRf var_1C4
  loc_CA3612: FLdPr Me
  loc_CA3615: MemLdRfVar from_stack_1.global_100
  loc_CA3618: Redim
  loc_CA3622: FLdPr var_114
  loc_CA3625: Call clsctacte.MoveFirst()
  loc_CA362A: FLdRfVar var_1C4
  loc_CA362D: FLdPr var_114
  loc_CA3630: from_stack_1 = clsctacte.RecordCount
  loc_CA3635: ILdRf var_1C4
  loc_CA3638: CR8I4
  loc_CA3639: CVarR4
  loc_CA363D: PopAdLdVar
  loc_CA363E: FLdPrThis
  loc_CA363F: VCallAd Control_ID_Pbar
  loc_CA3642: FStAdFunc var_B8
  loc_CA3645: FLdPr var_B8
  loc_CA3648: LateIdSt
  loc_CA364D: FFree1Ad var_B8
  loc_CA3650: LitVar_TRUE var_A4
  loc_CA3653: PopAdLdVar
  loc_CA3654: FLdPrThis
  loc_CA3655: VCallAd Control_ID_Pbar
  loc_CA3658: FStAdFunc var_B8
  loc_CA365B: FLdPr var_B8
  loc_CA365E: LateIdSt
  loc_CA3663: FFree1Ad var_B8
  loc_CA3666: LitI4 1
  loc_CA366B: FLdPr Me
  loc_CA366E: MemLdRfVar from_stack_1.global_108
  loc_CA3671: FLdPr Me
  loc_CA3674: MemLdStr global_100
  loc_CA3677: LitI2_Byte 1
  loc_CA3679: FnUBound
  loc_CA367B: ForI4 var_404
  loc_CA3681: FLdPr Me
  loc_CA3684: MemLdStr global_108
  loc_CA3687: CR8I4
  loc_CA3688: CVarR4
  loc_CA368C: PopAdLdVar
  loc_CA368D: FLdPrThis
  loc_CA368E: VCallAd Control_ID_Pbar
  loc_CA3691: FStAdFunc var_B8
  loc_CA3694: FLdPr var_B8
  loc_CA3697: LateIdSt
  loc_CA369C: FFree1Ad var_B8
  loc_CA369F: FLdRfVar var_CC
  loc_CA36A2: FLdPr var_114
  loc_CA36A5: from_stack_1 = clsctacte.ActiConc
  loc_CA36AA: LitI2_Byte 0
  loc_CA36AC: LitVar_Missing var_E0
  loc_CA36AF: LitI2_Byte 0
  loc_CA36B1: FLdVar var_CC
  loc_CA36B5: FLdPr Me
  loc_CA36B8: MemLdStr global_108
  loc_CA36BB: FLdPr Me
  loc_CA36BE: MemLdStr global_100
  loc_CA36C1: AryLock
  loc_CA36C4: Ary1LdPr
  loc_CA36C5: MemLdRfVar from_stack_1.global_0
  loc_CA36C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA36CD: AryUnlock
  loc_CA36D0: FFreeVar var_CC = ""
  loc_CA36D7: FLdRfVar var_CC
  loc_CA36DA: FLdPr var_114
  loc_CA36DD: from_stack_1 = clsctacte.DetaCuco
  loc_CA36E2: LitI2_Byte 0
  loc_CA36E4: LitVar_Missing var_E0
  loc_CA36E7: LitI2_Byte 0
  loc_CA36E9: FLdVar var_CC
  loc_CA36ED: FLdPr Me
  loc_CA36F0: MemLdStr global_108
  loc_CA36F3: FLdPr Me
  loc_CA36F6: MemLdStr global_100
  loc_CA36F9: AryLock
  loc_CA36FC: Ary1LdPr
  loc_CA36FD: MemLdRfVar from_stack_1.global_4
  loc_CA3700: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA3705: AryUnlock
  loc_CA3708: FFreeVar var_CC = ""
  loc_CA370F: FLdRfVar var_CC
  loc_CA3712: FLdPr var_114
  loc_CA3715: from_stack_1 = clsctacte.morosidad
  loc_CA371A: LitI2_Byte 0
  loc_CA371C: LitI4 1
  loc_CA3721: FLdPr Me
  loc_CA3724: MemLdStr global_104
  loc_CA3727: AryLock
  loc_CA372A: Ary1LdPr
  loc_CA372B: MemLdRfVar from_stack_1.global_8
  loc_CA372E: CVarRef
  loc_CA3733: LitI2_Byte &HFF
  loc_CA3735: FLdVar var_CC
  loc_CA3739: FLdPr Me
  loc_CA373C: MemLdStr global_108
  loc_CA373F: FLdPr Me
  loc_CA3742: MemLdStr global_100
  loc_CA3745: AryLock
  loc_CA3748: Ary1LdPr
  loc_CA3749: MemLdRfVar from_stack_1.global_8
  loc_CA374C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA3751: AryUnlock
  loc_CA3754: AryUnlock
  loc_CA3757: FFree1Var var_CC = ""
  loc_CA375A: FLdRfVar var_CC
  loc_CA375D: FLdPr var_114
  loc_CA3760: from_stack_1 = clsctacte.facturacion
  loc_CA3765: LitI2_Byte 0
  loc_CA3767: LitI4 1
  loc_CA376C: FLdPr Me
  loc_CA376F: MemLdStr global_104
  loc_CA3772: AryLock
  loc_CA3775: Ary1LdPr
  loc_CA3776: MemLdRfVar from_stack_1.global_12
  loc_CA3779: CVarRef
  loc_CA377E: LitI2_Byte &HFF
  loc_CA3780: FLdVar var_CC
  loc_CA3784: FLdPr Me
  loc_CA3787: MemLdStr global_108
  loc_CA378A: FLdPr Me
  loc_CA378D: MemLdStr global_100
  loc_CA3790: AryLock
  loc_CA3793: Ary1LdPr
  loc_CA3794: MemLdRfVar from_stack_1.global_12
  loc_CA3797: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA379C: AryUnlock
  loc_CA379F: AryUnlock
  loc_CA37A2: FFree1Var var_CC = ""
  loc_CA37A5: FLdRfVar var_CC
  loc_CA37A8: FLdPr var_114
  loc_CA37AB: from_stack_1 = clsctacte.recupero1
  loc_CA37B0: LitI2_Byte 0
  loc_CA37B2: LitI4 1
  loc_CA37B7: FLdPr Me
  loc_CA37BA: MemLdStr global_104
  loc_CA37BD: AryLock
  loc_CA37C0: Ary1LdPr
  loc_CA37C1: MemLdRfVar from_stack_1.global_16
  loc_CA37C4: CVarRef
  loc_CA37C9: LitI2_Byte &HFF
  loc_CA37CB: FLdVar var_CC
  loc_CA37CF: FLdPr Me
  loc_CA37D2: MemLdStr global_108
  loc_CA37D5: FLdPr Me
  loc_CA37D8: MemLdStr global_100
  loc_CA37DB: AryLock
  loc_CA37DE: Ary1LdPr
  loc_CA37DF: MemLdRfVar from_stack_1.global_16
  loc_CA37E2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA37E7: AryUnlock
  loc_CA37EA: AryUnlock
  loc_CA37ED: FFree1Var var_CC = ""
  loc_CA37F0: FLdRfVar var_CC
  loc_CA37F3: FLdPr var_114
  loc_CA37F6: from_stack_1 = clsctacte.recupero
  loc_CA37FB: LitI2_Byte 0
  loc_CA37FD: LitI4 1
  loc_CA3802: FLdPr Me
  loc_CA3805: MemLdStr global_104
  loc_CA3808: AryLock
  loc_CA380B: Ary1LdPr
  loc_CA380C: MemLdRfVar from_stack_1.global_20
  loc_CA380F: CVarRef
  loc_CA3814: LitI2_Byte &HFF
  loc_CA3816: FLdVar var_CC
  loc_CA381A: FLdPr Me
  loc_CA381D: MemLdStr global_108
  loc_CA3820: FLdPr Me
  loc_CA3823: MemLdStr global_100
  loc_CA3826: AryLock
  loc_CA3829: Ary1LdPr
  loc_CA382A: MemLdRfVar from_stack_1.global_20
  loc_CA382D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA3832: AryUnlock
  loc_CA3835: AryUnlock
  loc_CA3838: FFree1Var var_CC = ""
  loc_CA383B: FLdRfVar var_CC
  loc_CA383E: FLdPr var_114
  loc_CA3841: from_stack_1 = clsctacte.salmoracufin
  loc_CA3846: LitI2_Byte 0
  loc_CA3848: LitI4 1
  loc_CA384D: FLdPr Me
  loc_CA3850: MemLdStr global_104
  loc_CA3853: AryLock
  loc_CA3856: Ary1LdPr
  loc_CA3857: MemLdRfVar from_stack_1.global_24
  loc_CA385A: CVarRef
  loc_CA385F: LitI2_Byte &HFF
  loc_CA3861: FLdVar var_CC
  loc_CA3865: FLdPr Me
  loc_CA3868: MemLdStr global_108
  loc_CA386B: FLdPr Me
  loc_CA386E: MemLdStr global_100
  loc_CA3871: AryLock
  loc_CA3874: Ary1LdPr
  loc_CA3875: MemLdRfVar from_stack_1.global_24
  loc_CA3878: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CA387D: AryUnlock
  loc_CA3880: AryUnlock
  loc_CA3883: FFree1Var var_CC = ""
  loc_CA3886: LitI2_Byte 1
  loc_CA3888: PopTmpLdAd2 var_BA
  loc_CA388B: FLdPr var_114
  loc_CA388E: Call clsctacte.Move(from_stack_1v)
  loc_CA3893: FLdPr Me
  loc_CA3896: MemLdRfVar from_stack_1.global_108
  loc_CA3899: NextI4 var_404, loc_CA3681
  loc_CA389E: LitVar_FALSE
  loc_CA38A2: PopAdLdVar
  loc_CA38A3: FLdPrThis
  loc_CA38A4: VCallAd Control_ID_Pbar
  loc_CA38A7: FStAdFunc var_B8
  loc_CA38AA: FLdPr var_B8
  loc_CA38AD: LateIdSt
  loc_CA38B2: FFree1Ad var_B8
  loc_CA38B5: LitNothing
  loc_CA38B7: FStAd var_114 
  loc_CA38BB: LitI2_Byte &HFF
  loc_CA38BD: FLdPr Me
  loc_CA38C0: MemStI2 bGenerado
  loc_CA38C3: LitI4 0
  loc_CA38C8: CI2I4
  loc_CA38C9: FLdPr Me
  loc_CA38CC: Me.MousePointer = from_stack_1
  loc_CA38D1: LitVarStr var_A4, vbNullString
  loc_CA38D6: PopAdLdVar
  loc_CA38D7: FLdPr Me
  loc_CA38DA: VCallAd Control_ID_statusBar
  loc_CA38DD: FStAdFunc var_B8
  loc_CA38E0: FLdPr var_B8
  loc_CA38E3: LateIdSt
  loc_CA38E8: FFree1Ad var_B8
  loc_CA38EB: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B434C8
  'Data Table: 4A11B8
  loc_B431BC: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B431C1: FStStrNoPop var_88
  loc_B431C4: LitStr "\Acuerdo 3949\"
  loc_B431C7: ConcatStr
  loc_B431C8: FStStrNoPop var_A0
  loc_B431CB: FLdPr Me
  loc_B431CE: VCallAd Control_ID_PeriInfoMsk
  loc_B431D1: FStAdFunc var_8C
  loc_B431D4: FLdPr var_8C
  loc_B431D7: LateIdLdVar var_9C DispID_22 0
  loc_B431DE: CStrVarTmp
  loc_B431DF: FStStrNoPop var_A4
  loc_B431E2: ConcatStr
  loc_B431E3: FStStrNoPop var_A8
  loc_B431E6: LitStr "\Trimestre "
  loc_B431E9: ConcatStr
  loc_B431EA: FStStrNoPop var_B4
  loc_B431ED: FLdRfVar var_AE
  loc_B431F0: FLdPr Me
  loc_B431F3: VCallAd Control_ID_TrimestreCbo
  loc_B431F6: FStAdFunc var_AC
  loc_B431F9: FLdPr var_AC
  loc_B431FC:  = Me.ListIndex
  loc_B43201: FLdI2 var_AE
  loc_B43204: LitI2_Byte 1
  loc_B43206: AddI2
  loc_B43207: CStrUI1
  loc_B43209: FStStrNoPop var_B8
  loc_B4320C: ConcatStr
  loc_B4320D: FStStrNoPop var_BC
  loc_B43210: LitStr "\infmordertasree.txt"
  loc_B43213: ConcatStr
  loc_B43214: ImpAdStStr MemVar_D93030
  loc_B43218: FFreeStr var_88 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B4 = "": var_B8 = ""
  loc_B43229: FFreeAd var_8C = ""
  loc_B43230: FFree1Var var_9C = ""
  loc_B43233: ImpAdLdI4 MemVar_D93030
  loc_B43236: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B4323B: LitStr "|"
  loc_B4323E: FStStrCopy var_C4
  loc_B43241: FLdRfVar var_8C
  loc_B43244: LitI2_Byte 0
  loc_B43246: LitI2_Byte &HFF
  loc_B43248: ImpAdLdI4 MemVar_D93030
  loc_B4324B: FLdPr Me
  loc_B4324E: MemLdRfVar from_stack_1.global_56
  loc_B43251: NewIfNullPr IFileSystem3
  loc_B43254: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B43259: ILdRf var_8C
  loc_B4325C: FLdPr Me
  loc_B4325F: MemStVarAd
  loc_B43263: FFree1Ad var_8C
  loc_B43266: LitI4 0
  loc_B4326B: LitI4 &HA
  loc_B43270: FLdRfVar var_C8
  loc_B43273: Redim
  loc_B4327D: LitVarStr var_D8, "|"
  loc_B43282: LitI4 0
  loc_B43287: ILdRf var_C8
  loc_B4328A: Ary1StVarCopy
  loc_B4328C: LitVarStr var_E8, "ejercicio"
  loc_B43291: LitI4 1
  loc_B43296: ILdRf var_C8
  loc_B43299: Ary1StVarCopy
  loc_B4329B: LitVarStr var_F8, "trimestre"
  loc_B432A0: LitI4 2
  loc_B432A5: ILdRf var_C8
  loc_B432A8: Ary1StVarCopy
  loc_B432AA: LitVarStr var_108, "nomenclador"
  loc_B432AF: LitI4 3
  loc_B432B4: ILdRf var_C8
  loc_B432B7: Ary1StVarCopy
  loc_B432B9: LitVarStr var_118, "concepto"
  loc_B432BE: LitI4 4
  loc_B432C3: ILdRf var_C8
  loc_B432C6: Ary1StVarCopy
  loc_B432C8: LitVarStr var_128, "conceptodsc"
  loc_B432CD: LitI4 5
  loc_B432D2: ILdRf var_C8
  loc_B432D5: Ary1StVarCopy
  loc_B432D7: LitVarStr var_138, "morosidad"
  loc_B432DC: LitI4 6
  loc_B432E1: ILdRf var_C8
  loc_B432E4: Ary1StVarCopy
  loc_B432E6: LitVarStr var_148, "facturacion"
  loc_B432EB: LitI4 7
  loc_B432F0: ILdRf var_C8
  loc_B432F3: Ary1StVarCopy
  loc_B432F5: LitVarStr var_158, "recaudacion"
  loc_B432FA: LitI4 8
  loc_B432FF: ILdRf var_C8
  loc_B43302: Ary1StVarCopy
  loc_B43304: LitVarStr var_168, "recupero"
  loc_B43309: LitI4 9
  loc_B4330E: ILdRf var_C8
  loc_B43311: Ary1StVarCopy
  loc_B43313: LitVarStr var_178, "salmoracufin"
  loc_B43318: LitI4 &HA
  loc_B4331D: ILdRf var_C8
  loc_B43320: Ary1StVarCopy
  loc_B43322: FLdRfVar var_C8
  loc_B43325: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B4332A: FStStr var_88
  loc_B4332D: FLdRfVar var_C8
  loc_B43330: Erase
  loc_B43331: FLdZeroAd var_88
  loc_B43334: CVarStr var_9C
  loc_B43337: PopAdLdVar
  loc_B43338: FLdPr Me
  loc_B4333B: MemLdRfVar from_stack_1.global_76
  loc_B4333E: LdPrVar
  loc_B43340: LateMemCall
  loc_B43346: FFree1Var var_9C = ""
  loc_B43349: LitI4 1
  loc_B4334E: FLdPr Me
  loc_B43351: MemLdRfVar from_stack_1.global_108
  loc_B43354: FLdPr Me
  loc_B43357: MemLdStr global_100
  loc_B4335A: LitI2_Byte 1
  loc_B4335C: FnUBound
  loc_B4335E: ForI4 var_190
  loc_B43364: FLdPr Me
  loc_B43367: MemLdStr global_108
  loc_B4336A: FLdPr Me
  loc_B4336D: MemLdStr global_100
  loc_B43370: AryLock
  loc_B43373: Ary1LdRf
  loc_B43374: FStR4 var_198
  loc_B43377: LitI4 0
  loc_B4337C: LitI4 &HA
  loc_B43381: FLdRfVar var_C8
  loc_B43384: Redim
  loc_B4338E: LitVarStr var_D8, "|"
  loc_B43393: LitI4 0
  loc_B43398: ILdRf var_C8
  loc_B4339B: Ary1StVarCopy
  loc_B4339D: FLdPr Me
  loc_B433A0: VCallAd Control_ID_PeriInfoMsk
  loc_B433A3: FStAdFunc var_8C
  loc_B433A6: FLdPr var_8C
  loc_B433A9: LateIdLdVar var_9C DispID_22 0
  loc_B433B0: CStrVarTmp
  loc_B433B1: CVarStr var_1A8
  loc_B433B4: ParmAry1St
  loc_B433BA: FLdRfVar var_AE
  loc_B433BD: FLdPr Me
  loc_B433C0: VCallAd Control_ID_TrimestreCbo
  loc_B433C3: FStAdFunc var_AC
  loc_B433C6: FLdPr var_AC
  loc_B433C9:  = Me.ListIndex
  loc_B433CE: FLdI2 var_AE
  loc_B433D1: LitI2_Byte 1
  loc_B433D3: AddI2
  loc_B433D4: CVarI2 var_E8
  loc_B433D7: LitI4 2
  loc_B433DC: ILdRf var_C8
  loc_B433DF: Ary1StVar
  loc_B433E0: LitVarStr var_F8, "060204"
  loc_B433E5: LitI4 3
  loc_B433EA: ILdRf var_C8
  loc_B433ED: Ary1StVarCopy
  loc_B433EF: FMemLdRf unk_4A1021
  loc_B433F4: CVarRef
  loc_B433F9: ParmAry1St
  loc_B433FF: FMemLdRf unk_4A1021
  loc_B43404: CVarRef
  loc_B43409: ParmAry1St
  loc_B4340F: FMemLdR4 var_198(8)
  loc_B43414: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B43419: CVarStr var_1B8
  loc_B4341C: ParmAry1St
  loc_B43422: FMemLdR4 var_198(12)
  loc_B43427: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B4342C: CVarStr var_1C8
  loc_B4342F: ParmAry1St
  loc_B43435: FMemLdR4 var_198(16)
  loc_B4343A: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B4343F: CVarStr var_1D8
  loc_B43442: ParmAry1St
  loc_B43448: FMemLdR4 var_198(20)
  loc_B4344D: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B43452: CVarStr var_1E8
  loc_B43455: ParmAry1St
  loc_B4345B: FMemLdR4 var_198(24)
  loc_B43460: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B43465: CVarStr var_1F8
  loc_B43468: ParmAry1St
  loc_B4346E: FLdRfVar var_C8
  loc_B43471: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B43476: FStStr var_88
  loc_B43479: FLdRfVar var_C8
  loc_B4347C: Erase
  loc_B4347D: FLdZeroAd var_88
  loc_B43480: CVarStr var_208
  loc_B43483: PopAdLdVar
  loc_B43484: FLdPr Me
  loc_B43487: MemLdRfVar from_stack_1.global_76
  loc_B4348A: LdPrVar
  loc_B4348C: LateMemCall
  loc_B43492: FFreeAd var_8C = ""
  loc_B43499: FFreeVar var_9C = ""
  loc_B434A0: LitI4 0
  loc_B434A5: FStR4 var_198
  loc_B434A8: AryUnlock
  loc_B434AB: FLdPr Me
  loc_B434AE: MemLdRfVar from_stack_1.global_108
  loc_B434B1: NextI4 var_190, loc_B43364
  loc_B434B6: FLdPr Me
  loc_B434B9: MemLdRfVar from_stack_1.global_76
  loc_B434BC: LdPrVar
  loc_B434BE: LateMemCall
  loc_B434C4: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B34000
  'Data Table: 4A11B8
  loc_B33D00: FLdRfVar var_88
  loc_B33D03: LitI2_Byte 0
  loc_B33D05: LitI2_Byte &HFF
  loc_B33D07: ImpAdLdI4 MemVar_D93C84
  loc_B33D0A: FLdPr Me
  loc_B33D0D: MemLdRfVar from_stack_1.global_56
  loc_B33D10: NewIfNullPr IFileSystem3
  loc_B33D13: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B33D18: ILdRf var_88
  loc_B33D1B: FLdPr Me
  loc_B33D1E: MemStVarAd
  loc_B33D22: FFree1Ad var_88
  loc_B33D25: LitI2_Byte &HFF
  loc_B33D27: ImpAdStI2 MemVar_D93C8A
  loc_B33D2A: Call Proc_130_21_BC9960()
  loc_B33D2F: LitI4 1
  loc_B33D34: FLdPr Me
  loc_B33D37: MemLdRfVar from_stack_1.global_108
  loc_B33D3A: FLdPr Me
  loc_B33D3D: MemLdStr global_100
  loc_B33D40: LitI2_Byte 1
  loc_B33D42: FnUBound
  loc_B33D44: ForI4 var_90
  loc_B33D4A: FLdPr Me
  loc_B33D4D: MemLdStr global_108
  loc_B33D50: FLdPr Me
  loc_B33D53: MemLdStr global_100
  loc_B33D56: AryLock
  loc_B33D59: Ary1LdRf
  loc_B33D5A: FStR4 var_98
  loc_B33D5D: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B33D62: PopAdLdVar
  loc_B33D63: FLdPr Me
  loc_B33D66: MemLdRfVar from_stack_1.global_60
  loc_B33D69: LdPrVar
  loc_B33D6B: LateMemCall
  loc_B33D71: LitStr vbNullString
  loc_B33D74: LitI2_Byte 0
  loc_B33D76: LitI2_Byte 0
  loc_B33D78: LitI2_Byte 0
  loc_B33D7A: LitStr "right"
  loc_B33D7D: FMemLdR4 var_98(0)
  loc_B33D82: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33D87: CVarStr var_C8
  loc_B33D8A: PopAdLdVar
  loc_B33D8B: FLdPr Me
  loc_B33D8E: MemLdRfVar from_stack_1.global_60
  loc_B33D91: LdPrVar
  loc_B33D93: LateMemCall
  loc_B33D99: FFree1Var var_C8 = ""
  loc_B33D9C: LitStr vbNullString
  loc_B33D9F: LitI2_Byte 0
  loc_B33DA1: LitI2_Byte 0
  loc_B33DA3: LitI2_Byte 0
  loc_B33DA5: LitStr "left"
  loc_B33DA8: FMemLdR4 var_98(4)
  loc_B33DAD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33DB2: CVarStr var_C8
  loc_B33DB5: PopAdLdVar
  loc_B33DB6: FLdPr Me
  loc_B33DB9: MemLdRfVar from_stack_1.global_60
  loc_B33DBC: LdPrVar
  loc_B33DBE: LateMemCall
  loc_B33DC4: FFree1Var var_C8 = ""
  loc_B33DC7: LitStr vbNullString
  loc_B33DCA: LitI2_Byte 0
  loc_B33DCC: LitI2_Byte 0
  loc_B33DCE: LitI2_Byte 0
  loc_B33DD0: LitStr "right"
  loc_B33DD3: FMemLdR4 var_98(8)
  loc_B33DD8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33DDD: CVarStr var_C8
  loc_B33DE0: PopAdLdVar
  loc_B33DE1: FLdPr Me
  loc_B33DE4: MemLdRfVar from_stack_1.global_60
  loc_B33DE7: LdPrVar
  loc_B33DE9: LateMemCall
  loc_B33DEF: FFree1Var var_C8 = ""
  loc_B33DF2: LitStr vbNullString
  loc_B33DF5: LitI2_Byte 0
  loc_B33DF7: LitI2_Byte 0
  loc_B33DF9: LitI2_Byte 0
  loc_B33DFB: LitStr "right"
  loc_B33DFE: FMemLdR4 var_98(12)
  loc_B33E03: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33E08: CVarStr var_C8
  loc_B33E0B: PopAdLdVar
  loc_B33E0C: FLdPr Me
  loc_B33E0F: MemLdRfVar from_stack_1.global_60
  loc_B33E12: LdPrVar
  loc_B33E14: LateMemCall
  loc_B33E1A: FFree1Var var_C8 = ""
  loc_B33E1D: LitStr vbNullString
  loc_B33E20: LitI2_Byte 0
  loc_B33E22: LitI2_Byte 0
  loc_B33E24: LitI2_Byte 0
  loc_B33E26: LitStr "right"
  loc_B33E29: FMemLdR4 var_98(16)
  loc_B33E2E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33E33: CVarStr var_C8
  loc_B33E36: PopAdLdVar
  loc_B33E37: FLdPr Me
  loc_B33E3A: MemLdRfVar from_stack_1.global_60
  loc_B33E3D: LdPrVar
  loc_B33E3F: LateMemCall
  loc_B33E45: FFree1Var var_C8 = ""
  loc_B33E48: LitStr vbNullString
  loc_B33E4B: LitI2_Byte 0
  loc_B33E4D: LitI2_Byte 0
  loc_B33E4F: LitI2_Byte 0
  loc_B33E51: LitStr "right"
  loc_B33E54: FMemLdR4 var_98(20)
  loc_B33E59: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33E5E: CVarStr var_C8
  loc_B33E61: PopAdLdVar
  loc_B33E62: FLdPr Me
  loc_B33E65: MemLdRfVar from_stack_1.global_60
  loc_B33E68: LdPrVar
  loc_B33E6A: LateMemCall
  loc_B33E70: FFree1Var var_C8 = ""
  loc_B33E73: LitStr vbNullString
  loc_B33E76: LitI2_Byte 0
  loc_B33E78: LitI2_Byte 0
  loc_B33E7A: LitI2_Byte 0
  loc_B33E7C: LitStr "right"
  loc_B33E7F: FMemLdR4 var_98(24)
  loc_B33E84: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33E89: CVarStr var_C8
  loc_B33E8C: PopAdLdVar
  loc_B33E8D: FLdPr Me
  loc_B33E90: MemLdRfVar from_stack_1.global_60
  loc_B33E93: LdPrVar
  loc_B33E95: LateMemCall
  loc_B33E9B: FFree1Var var_C8 = ""
  loc_B33E9E: LitVarStr var_A8, "     </tr>"
  loc_B33EA3: PopAdLdVar
  loc_B33EA4: FLdPr Me
  loc_B33EA7: MemLdRfVar from_stack_1.global_60
  loc_B33EAA: LdPrVar
  loc_B33EAC: LateMemCall
  loc_B33EB2: LitI4 0
  loc_B33EB7: FStR4 var_98
  loc_B33EBA: AryUnlock
  loc_B33EBD: FLdPr Me
  loc_B33EC0: MemLdRfVar from_stack_1.global_108
  loc_B33EC3: NextI4 var_90, loc_B33D4A
  loc_B33EC8: LitVarStr var_A8, "  <tr align=""right"" class=""Totales""><th colspan=""2"">TOTALES</th>"
  loc_B33ECD: PopAdLdVar
  loc_B33ECE: FLdPr Me
  loc_B33ED1: MemLdRfVar from_stack_1.global_60
  loc_B33ED4: LdPrVar
  loc_B33ED6: LateMemCall
  loc_B33EDC: LitI4 1
  loc_B33EE1: FLdPr Me
  loc_B33EE4: MemLdStr global_104
  loc_B33EE7: AryLock
  loc_B33EEA: Ary1LdRf
  loc_B33EEB: FStR4 var_D0
  loc_B33EEE: LitStr vbNullString
  loc_B33EF1: LitI2_Byte 0
  loc_B33EF3: LitI2_Byte 0
  loc_B33EF5: LitI2_Byte 0
  loc_B33EF7: LitStr "right"
  loc_B33EFA: FMemLdR4 var_D0(8)
  loc_B33EFF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33F04: CVarStr var_C8
  loc_B33F07: PopAdLdVar
  loc_B33F08: FLdPr Me
  loc_B33F0B: MemLdRfVar from_stack_1.global_60
  loc_B33F0E: LdPrVar
  loc_B33F10: LateMemCall
  loc_B33F16: FFree1Var var_C8 = ""
  loc_B33F19: LitStr vbNullString
  loc_B33F1C: LitI2_Byte 0
  loc_B33F1E: LitI2_Byte 0
  loc_B33F20: LitI2_Byte 0
  loc_B33F22: LitStr "right"
  loc_B33F25: FMemLdR4 var_D0(12)
  loc_B33F2A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33F2F: CVarStr var_C8
  loc_B33F32: PopAdLdVar
  loc_B33F33: FLdPr Me
  loc_B33F36: MemLdRfVar from_stack_1.global_60
  loc_B33F39: LdPrVar
  loc_B33F3B: LateMemCall
  loc_B33F41: FFree1Var var_C8 = ""
  loc_B33F44: LitStr vbNullString
  loc_B33F47: LitI2_Byte 0
  loc_B33F49: LitI2_Byte 0
  loc_B33F4B: LitI2_Byte 0
  loc_B33F4D: LitStr "right"
  loc_B33F50: FMemLdR4 var_D0(16)
  loc_B33F55: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33F5A: CVarStr var_C8
  loc_B33F5D: PopAdLdVar
  loc_B33F5E: FLdPr Me
  loc_B33F61: MemLdRfVar from_stack_1.global_60
  loc_B33F64: LdPrVar
  loc_B33F66: LateMemCall
  loc_B33F6C: FFree1Var var_C8 = ""
  loc_B33F6F: LitStr vbNullString
  loc_B33F72: LitI2_Byte 0
  loc_B33F74: LitI2_Byte 0
  loc_B33F76: LitI2_Byte 0
  loc_B33F78: LitStr "right"
  loc_B33F7B: FMemLdR4 var_D0(20)
  loc_B33F80: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33F85: CVarStr var_C8
  loc_B33F88: PopAdLdVar
  loc_B33F89: FLdPr Me
  loc_B33F8C: MemLdRfVar from_stack_1.global_60
  loc_B33F8F: LdPrVar
  loc_B33F91: LateMemCall
  loc_B33F97: FFree1Var var_C8 = ""
  loc_B33F9A: LitStr vbNullString
  loc_B33F9D: LitI2_Byte 0
  loc_B33F9F: LitI2_Byte 0
  loc_B33FA1: LitI2_Byte 0
  loc_B33FA3: LitStr "right"
  loc_B33FA6: FMemLdR4 var_D0(24)
  loc_B33FAB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B33FB0: CVarStr var_C8
  loc_B33FB3: PopAdLdVar
  loc_B33FB4: FLdPr Me
  loc_B33FB7: MemLdRfVar from_stack_1.global_60
  loc_B33FBA: LdPrVar
  loc_B33FBC: LateMemCall
  loc_B33FC2: FFree1Var var_C8 = ""
  loc_B33FC5: LitVarStr var_A8, "     </tr>"
  loc_B33FCA: PopAdLdVar
  loc_B33FCB: FLdPr Me
  loc_B33FCE: MemLdRfVar from_stack_1.global_60
  loc_B33FD1: LdPrVar
  loc_B33FD3: LateMemCall
  loc_B33FD9: LitI4 0
  loc_B33FDE: FStR4 var_D0
  loc_B33FE1: AryUnlock
  loc_B33FE4: Call Proc_130_22_A0FA88()
  loc_B33FE9: FLdPr Me
  loc_B33FEC: MemLdRfVar from_stack_1.global_60
  loc_B33FEF: LdPrVar
  loc_B33FF1: LateMemCall
  loc_B33FF7: LitStr vbNullString
  loc_B33FFA: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B33FFF: ExitProcHresult
End Sub

Private Function Proc_130_21_BC9960() 'BC9960
  'Data Table: 4A11B8
  loc_BC9268: LitVarStr var_98, "<html>"
  loc_BC926D: PopAdLdVar
  loc_BC926E: FLdPr Me
  loc_BC9271: MemLdRfVar from_stack_1.global_60
  loc_BC9274: LdPrVar
  loc_BC9276: LateMemCall
  loc_BC927C: LitVarStr var_98, "<head>"
  loc_BC9281: PopAdLdVar
  loc_BC9282: FLdPr Me
  loc_BC9285: MemLdRfVar from_stack_1.global_60
  loc_BC9288: LdPrVar
  loc_BC928A: LateMemCall
  loc_BC9290: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC9295: PopAdLdVar
  loc_BC9296: FLdPr Me
  loc_BC9299: MemLdRfVar from_stack_1.global_60
  loc_BC929C: LdPrVar
  loc_BC929E: LateMemCall
  loc_BC92A4: LitStr "<title>"
  loc_BC92A7: FLdRfVar var_AC
  loc_BC92AA: FLdPr Me
  loc_BC92AD:  = Me.Caption
  loc_BC92B2: ILdRf var_AC
  loc_BC92B5: ConcatStr
  loc_BC92B6: FStStrNoPop var_B0
  loc_BC92B9: LitStr "</title>"
  loc_BC92BC: ConcatStr
  loc_BC92BD: CVarStr var_C0
  loc_BC92C0: PopAdLdVar
  loc_BC92C1: FLdPr Me
  loc_BC92C4: MemLdRfVar from_stack_1.global_60
  loc_BC92C7: LdPrVar
  loc_BC92C9: LateMemCall
  loc_BC92CF: FFreeStr var_AC = ""
  loc_BC92D6: FFree1Var var_C0 = ""
  loc_BC92D9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BC92DE: PopAdLdVar
  loc_BC92DF: FLdPr Me
  loc_BC92E2: MemLdRfVar from_stack_1.global_60
  loc_BC92E5: LdPrVar
  loc_BC92E7: LateMemCall
  loc_BC92ED: LitVarStr var_98, ".Titulo1 {"
  loc_BC92F2: PopAdLdVar
  loc_BC92F3: FLdPr Me
  loc_BC92F6: MemLdRfVar from_stack_1.global_60
  loc_BC92F9: LdPrVar
  loc_BC92FB: LateMemCall
  loc_BC9301: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC9306: PopAdLdVar
  loc_BC9307: FLdPr Me
  loc_BC930A: MemLdRfVar from_stack_1.global_60
  loc_BC930D: LdPrVar
  loc_BC930F: LateMemCall
  loc_BC9315: LitVarStr var_98, " font-size: 18px;"
  loc_BC931A: PopAdLdVar
  loc_BC931B: FLdPr Me
  loc_BC931E: MemLdRfVar from_stack_1.global_60
  loc_BC9321: LdPrVar
  loc_BC9323: LateMemCall
  loc_BC9329: LitVarStr var_98, " font-weight: bold;"
  loc_BC932E: PopAdLdVar
  loc_BC932F: FLdPr Me
  loc_BC9332: MemLdRfVar from_stack_1.global_60
  loc_BC9335: LdPrVar
  loc_BC9337: LateMemCall
  loc_BC933D: LitVarStr var_98, "}"
  loc_BC9342: PopAdLdVar
  loc_BC9343: FLdPr Me
  loc_BC9346: MemLdRfVar from_stack_1.global_60
  loc_BC9349: LdPrVar
  loc_BC934B: LateMemCall
  loc_BC9351: LitVarStr var_98, ".Titulo2 {"
  loc_BC9356: PopAdLdVar
  loc_BC9357: FLdPr Me
  loc_BC935A: MemLdRfVar from_stack_1.global_60
  loc_BC935D: LdPrVar
  loc_BC935F: LateMemCall
  loc_BC9365: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC936A: PopAdLdVar
  loc_BC936B: FLdPr Me
  loc_BC936E: MemLdRfVar from_stack_1.global_60
  loc_BC9371: LdPrVar
  loc_BC9373: LateMemCall
  loc_BC9379: LitVarStr var_98, " font-size: 14px;"
  loc_BC937E: PopAdLdVar
  loc_BC937F: FLdPr Me
  loc_BC9382: MemLdRfVar from_stack_1.global_60
  loc_BC9385: LdPrVar
  loc_BC9387: LateMemCall
  loc_BC938D: LitVarStr var_98, " font-weight: bold;"
  loc_BC9392: PopAdLdVar
  loc_BC9393: FLdPr Me
  loc_BC9396: MemLdRfVar from_stack_1.global_60
  loc_BC9399: LdPrVar
  loc_BC939B: LateMemCall
  loc_BC93A1: LitVarStr var_98, "}"
  loc_BC93A6: PopAdLdVar
  loc_BC93A7: FLdPr Me
  loc_BC93AA: MemLdRfVar from_stack_1.global_60
  loc_BC93AD: LdPrVar
  loc_BC93AF: LateMemCall
  loc_BC93B5: LitVarStr var_98, ".Normal {"
  loc_BC93BA: PopAdLdVar
  loc_BC93BB: FLdPr Me
  loc_BC93BE: MemLdRfVar from_stack_1.global_60
  loc_BC93C1: LdPrVar
  loc_BC93C3: LateMemCall
  loc_BC93C9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC93CE: PopAdLdVar
  loc_BC93CF: FLdPr Me
  loc_BC93D2: MemLdRfVar from_stack_1.global_60
  loc_BC93D5: LdPrVar
  loc_BC93D7: LateMemCall
  loc_BC93DD: LitVarStr var_98, " font-size: 12px;"
  loc_BC93E2: PopAdLdVar
  loc_BC93E3: FLdPr Me
  loc_BC93E6: MemLdRfVar from_stack_1.global_60
  loc_BC93E9: LdPrVar
  loc_BC93EB: LateMemCall
  loc_BC93F1: LitVarStr var_98, " font-style: normal;"
  loc_BC93F6: PopAdLdVar
  loc_BC93F7: FLdPr Me
  loc_BC93FA: MemLdRfVar from_stack_1.global_60
  loc_BC93FD: LdPrVar
  loc_BC93FF: LateMemCall
  loc_BC9405: LitVarStr var_98, " font-weight: normal;"
  loc_BC940A: PopAdLdVar
  loc_BC940B: FLdPr Me
  loc_BC940E: MemLdRfVar from_stack_1.global_60
  loc_BC9411: LdPrVar
  loc_BC9413: LateMemCall
  loc_BC9419: LitVarStr var_98, " font-variant: normal;"
  loc_BC941E: PopAdLdVar
  loc_BC941F: FLdPr Me
  loc_BC9422: MemLdRfVar from_stack_1.global_60
  loc_BC9425: LdPrVar
  loc_BC9427: LateMemCall
  loc_BC942D: LitVarStr var_98, "}"
  loc_BC9432: PopAdLdVar
  loc_BC9433: FLdPr Me
  loc_BC9436: MemLdRfVar from_stack_1.global_60
  loc_BC9439: LdPrVar
  loc_BC943B: LateMemCall
  loc_BC9441: LitVarStr var_98, ".Encabezado {"
  loc_BC9446: PopAdLdVar
  loc_BC9447: FLdPr Me
  loc_BC944A: MemLdRfVar from_stack_1.global_60
  loc_BC944D: LdPrVar
  loc_BC944F: LateMemCall
  loc_BC9455: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC945A: PopAdLdVar
  loc_BC945B: FLdPr Me
  loc_BC945E: MemLdRfVar from_stack_1.global_60
  loc_BC9461: LdPrVar
  loc_BC9463: LateMemCall
  loc_BC9469: LitVarStr var_98, " font-size: 11px;"
  loc_BC946E: PopAdLdVar
  loc_BC946F: FLdPr Me
  loc_BC9472: MemLdRfVar from_stack_1.global_60
  loc_BC9475: LdPrVar
  loc_BC9477: LateMemCall
  loc_BC947D: LitVarStr var_98, " font-weight: bold;"
  loc_BC9482: PopAdLdVar
  loc_BC9483: FLdPr Me
  loc_BC9486: MemLdRfVar from_stack_1.global_60
  loc_BC9489: LdPrVar
  loc_BC948B: LateMemCall
  loc_BC9491: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BC9496: PopAdLdVar
  loc_BC9497: FLdPr Me
  loc_BC949A: MemLdRfVar from_stack_1.global_60
  loc_BC949D: LdPrVar
  loc_BC949F: LateMemCall
  loc_BC94A5: LitVarStr var_98, "}"
  loc_BC94AA: PopAdLdVar
  loc_BC94AB: FLdPr Me
  loc_BC94AE: MemLdRfVar from_stack_1.global_60
  loc_BC94B1: LdPrVar
  loc_BC94B3: LateMemCall
  loc_BC94B9: LitVarStr var_98, ".LineaDato {"
  loc_BC94BE: PopAdLdVar
  loc_BC94BF: FLdPr Me
  loc_BC94C2: MemLdRfVar from_stack_1.global_60
  loc_BC94C5: LdPrVar
  loc_BC94C7: LateMemCall
  loc_BC94CD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC94D2: PopAdLdVar
  loc_BC94D3: FLdPr Me
  loc_BC94D6: MemLdRfVar from_stack_1.global_60
  loc_BC94D9: LdPrVar
  loc_BC94DB: LateMemCall
  loc_BC94E1: LitVarStr var_98, " font-size: 10px;"
  loc_BC94E6: PopAdLdVar
  loc_BC94E7: FLdPr Me
  loc_BC94EA: MemLdRfVar from_stack_1.global_60
  loc_BC94ED: LdPrVar
  loc_BC94EF: LateMemCall
  loc_BC94F5: LitVarStr var_98, "}"
  loc_BC94FA: PopAdLdVar
  loc_BC94FB: FLdPr Me
  loc_BC94FE: MemLdRfVar from_stack_1.global_60
  loc_BC9501: LdPrVar
  loc_BC9503: LateMemCall
  loc_BC9509: LitVarStr var_98, ".Totales {"
  loc_BC950E: PopAdLdVar
  loc_BC950F: FLdPr Me
  loc_BC9512: MemLdRfVar from_stack_1.global_60
  loc_BC9515: LdPrVar
  loc_BC9517: LateMemCall
  loc_BC951D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC9522: PopAdLdVar
  loc_BC9523: FLdPr Me
  loc_BC9526: MemLdRfVar from_stack_1.global_60
  loc_BC9529: LdPrVar
  loc_BC952B: LateMemCall
  loc_BC9531: LitVarStr var_98, " font-size: 12px;"
  loc_BC9536: PopAdLdVar
  loc_BC9537: FLdPr Me
  loc_BC953A: MemLdRfVar from_stack_1.global_60
  loc_BC953D: LdPrVar
  loc_BC953F: LateMemCall
  loc_BC9545: LitVarStr var_98, " font-weight: bold;"
  loc_BC954A: PopAdLdVar
  loc_BC954B: FLdPr Me
  loc_BC954E: MemLdRfVar from_stack_1.global_60
  loc_BC9551: LdPrVar
  loc_BC9553: LateMemCall
  loc_BC9559: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC955E: PopAdLdVar
  loc_BC955F: FLdPr Me
  loc_BC9562: MemLdRfVar from_stack_1.global_60
  loc_BC9565: LdPrVar
  loc_BC9567: LateMemCall
  loc_BC956D: LitVarStr var_98, "}"
  loc_BC9572: PopAdLdVar
  loc_BC9573: FLdPr Me
  loc_BC9576: MemLdRfVar from_stack_1.global_60
  loc_BC9579: LdPrVar
  loc_BC957B: LateMemCall
  loc_BC9581: LitVarStr var_98, ".SubTotales {"
  loc_BC9586: PopAdLdVar
  loc_BC9587: FLdPr Me
  loc_BC958A: MemLdRfVar from_stack_1.global_60
  loc_BC958D: LdPrVar
  loc_BC958F: LateMemCall
  loc_BC9595: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC959A: PopAdLdVar
  loc_BC959B: FLdPr Me
  loc_BC959E: MemLdRfVar from_stack_1.global_60
  loc_BC95A1: LdPrVar
  loc_BC95A3: LateMemCall
  loc_BC95A9: LitVarStr var_98, " font-size: 10px;"
  loc_BC95AE: PopAdLdVar
  loc_BC95AF: FLdPr Me
  loc_BC95B2: MemLdRfVar from_stack_1.global_60
  loc_BC95B5: LdPrVar
  loc_BC95B7: LateMemCall
  loc_BC95BD: LitVarStr var_98, " font-weight: bold;"
  loc_BC95C2: PopAdLdVar
  loc_BC95C3: FLdPr Me
  loc_BC95C6: MemLdRfVar from_stack_1.global_60
  loc_BC95C9: LdPrVar
  loc_BC95CB: LateMemCall
  loc_BC95D1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC95D6: PopAdLdVar
  loc_BC95D7: FLdPr Me
  loc_BC95DA: MemLdRfVar from_stack_1.global_60
  loc_BC95DD: LdPrVar
  loc_BC95DF: LateMemCall
  loc_BC95E5: LitVarStr var_98, "}"
  loc_BC95EA: PopAdLdVar
  loc_BC95EB: FLdPr Me
  loc_BC95EE: MemLdRfVar from_stack_1.global_60
  loc_BC95F1: LdPrVar
  loc_BC95F3: LateMemCall
  loc_BC95F9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BC95FE: PopAdLdVar
  loc_BC95FF: FLdPr Me
  loc_BC9602: MemLdRfVar from_stack_1.global_60
  loc_BC9605: LdPrVar
  loc_BC9607: LateMemCall
  loc_BC960D: LitVarStr var_98, "</style>"
  loc_BC9612: PopAdLdVar
  loc_BC9613: FLdPr Me
  loc_BC9616: MemLdRfVar from_stack_1.global_60
  loc_BC9619: LdPrVar
  loc_BC961B: LateMemCall
  loc_BC9621: LitI4 0
  loc_BC9626: FStStrCopy var_B0
  loc_BC9629: FLdRfVar var_B0
  loc_BC962C: LitI4 0
  loc_BC9631: FStStrCopy var_AC
  loc_BC9634: FLdRfVar var_AC
  loc_BC9637: LitI2_Byte &HFF
  loc_BC9639: PopTmpLdAd2 var_C2
  loc_BC963C: FLdPr Me
  loc_BC963F: MemLdRfVar from_stack_1.global_60
  loc_BC9642: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC9647: FFreeStr var_AC = ""
  loc_BC964E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC9653: PopAdLdVar
  loc_BC9654: FLdPr Me
  loc_BC9657: MemLdRfVar from_stack_1.global_60
  loc_BC965A: LdPrVar
  loc_BC965C: LateMemCall
  loc_BC9662: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BC9667: PopAdLdVar
  loc_BC9668: FLdPr Me
  loc_BC966B: MemLdRfVar from_stack_1.global_60
  loc_BC966E: LdPrVar
  loc_BC9670: LateMemCall
  loc_BC9676: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BC967B: PopAdLdVar
  loc_BC967C: FLdPr Me
  loc_BC967F: MemLdRfVar from_stack_1.global_60
  loc_BC9682: LdPrVar
  loc_BC9684: LateMemCall
  loc_BC968A: FLdPr Me
  loc_BC968D: MemLdI2 bLogos
  loc_BC9690: BranchF loc_BC96D9
  loc_BC9693: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC9696: LitI2_Byte &H5F
  loc_BC9698: CStrUI1
  loc_BC969A: FStStrNoPop var_AC
  loc_BC969D: ConcatStr
  loc_BC969E: FStStrNoPop var_B0
  loc_BC96A1: LitStr """ height="""
  loc_BC96A4: ConcatStr
  loc_BC96A5: FStStrNoPop var_C8
  loc_BC96A8: LitI2_Byte &H3C
  loc_BC96AA: CStrUI1
  loc_BC96AC: FStStrNoPop var_CC
  loc_BC96AF: ConcatStr
  loc_BC96B0: FStStrNoPop var_D0
  loc_BC96B3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BC96B6: ConcatStr
  loc_BC96B7: CVarStr var_C0
  loc_BC96BA: PopAdLdVar
  loc_BC96BB: FLdPr Me
  loc_BC96BE: MemLdRfVar from_stack_1.global_60
  loc_BC96C1: LdPrVar
  loc_BC96C3: LateMemCall
  loc_BC96C9: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BC96D6: FFree1Var var_C0 = ""
  loc_BC96D9: LitStr "     <br>"
  loc_BC96DC: LitStr "Municipalidad de Guaymallén"
  loc_BC96DF: ConcatStr
  loc_BC96E0: FStStrNoPop var_AC
  loc_BC96E3: LitStr "</p>"
  loc_BC96E6: ConcatStr
  loc_BC96E7: CVarStr var_C0
  loc_BC96EA: PopAdLdVar
  loc_BC96EB: FLdPr Me
  loc_BC96EE: MemLdRfVar from_stack_1.global_60
  loc_BC96F1: LdPrVar
  loc_BC96F3: LateMemCall
  loc_BC96F9: FFree1Str var_AC
  loc_BC96FC: FFree1Var var_C0 = ""
  loc_BC96FF: LitStr "    <p>"
  loc_BC9702: FLdRfVar var_AC
  loc_BC9705: FLdPr Me
  loc_BC9708:  = Me.Caption
  loc_BC970D: ILdRf var_AC
  loc_BC9710: ConcatStr
  loc_BC9711: FStStrNoPop var_B0
  loc_BC9714: LitStr "</p></th>"
  loc_BC9717: ConcatStr
  loc_BC9718: CVarStr var_C0
  loc_BC971B: PopAdLdVar
  loc_BC971C: FLdPr Me
  loc_BC971F: MemLdRfVar from_stack_1.global_60
  loc_BC9722: LdPrVar
  loc_BC9724: LateMemCall
  loc_BC972A: FFreeStr var_AC = ""
  loc_BC9731: FFree1Var var_C0 = ""
  loc_BC9734: LitVarStr var_98, "  </tr>"
  loc_BC9739: PopAdLdVar
  loc_BC973A: FLdPr Me
  loc_BC973D: MemLdRfVar from_stack_1.global_60
  loc_BC9740: LdPrVar
  loc_BC9742: LateMemCall
  loc_BC9748: LitVarStr var_98, "  <tr>"
  loc_BC974D: PopAdLdVar
  loc_BC974E: FLdPr Me
  loc_BC9751: MemLdRfVar from_stack_1.global_60
  loc_BC9754: LdPrVar
  loc_BC9756: LateMemCall
  loc_BC975C: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BC9761: PopAdLdVar
  loc_BC9762: FLdPr Me
  loc_BC9765: MemLdRfVar from_stack_1.global_60
  loc_BC9768: LdPrVar
  loc_BC976A: LateMemCall
  loc_BC9770: LitVarStr var_98, "  </tr>"
  loc_BC9775: PopAdLdVar
  loc_BC9776: FLdPr Me
  loc_BC9779: MemLdRfVar from_stack_1.global_60
  loc_BC977C: LdPrVar
  loc_BC977E: LateMemCall
  loc_BC9784: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BC9789: PopAdLdVar
  loc_BC978A: FLdPr Me
  loc_BC978D: MemLdRfVar from_stack_1.global_60
  loc_BC9790: LdPrVar
  loc_BC9792: LateMemCall
  loc_BC9798: LitStr "    <td align=""left"" valign=""top""><strong>Periodo: </strong>"
  loc_BC979B: FLdPr Me
  loc_BC979E: VCallAd Control_ID_PeriInfoMsk
  loc_BC97A1: FStAdFunc var_D4
  loc_BC97A4: FLdPr var_D4
  loc_BC97A7: LateIdLdVar var_C0 DispID_22 0
  loc_BC97AE: CStrVarTmp
  loc_BC97AF: FStStrNoPop var_AC
  loc_BC97B2: ConcatStr
  loc_BC97B3: FStStrNoPop var_B0
  loc_BC97B6: LitStr "</td>"
  loc_BC97B9: ConcatStr
  loc_BC97BA: CVarStr var_E4
  loc_BC97BD: PopAdLdVar
  loc_BC97BE: FLdPr Me
  loc_BC97C1: MemLdRfVar from_stack_1.global_60
  loc_BC97C4: LdPrVar
  loc_BC97C6: LateMemCall
  loc_BC97CC: FFreeStr var_AC = ""
  loc_BC97D3: FFree1Ad var_D4
  loc_BC97D6: FFreeVar var_C0 = ""
  loc_BC97DD: LitStr "    <td align=""center"" valign=""top""><strong>Trimestre: </strong>"
  loc_BC97E0: FLdRfVar var_AC
  loc_BC97E3: FLdPr Me
  loc_BC97E6: VCallAd Control_ID_TrimestreCbo
  loc_BC97E9: FStAdFunc var_D4
  loc_BC97EC: FLdPr var_D4
  loc_BC97EF:  = Me.Text
  loc_BC97F4: ILdRf var_AC
  loc_BC97F7: ConcatStr
  loc_BC97F8: FStStrNoPop var_B0
  loc_BC97FB: LitStr "</td>"
  loc_BC97FE: ConcatStr
  loc_BC97FF: CVarStr var_C0
  loc_BC9802: PopAdLdVar
  loc_BC9803: FLdPr Me
  loc_BC9806: MemLdRfVar from_stack_1.global_60
  loc_BC9809: LdPrVar
  loc_BC980B: LateMemCall
  loc_BC9811: FFreeStr var_AC = ""
  loc_BC9818: FFree1Ad var_D4
  loc_BC981B: FFree1Var var_C0 = ""
  loc_BC981E: LitStr "    <td align=""right"" valign=""top""><strong>Nomenclador: </strong>"
  loc_BC9821: LitStr "060204"
  loc_BC9824: ConcatStr
  loc_BC9825: FStStrNoPop var_AC
  loc_BC9828: LitStr "</td>"
  loc_BC982B: ConcatStr
  loc_BC982C: CVarStr var_C0
  loc_BC982F: PopAdLdVar
  loc_BC9830: FLdPr Me
  loc_BC9833: MemLdRfVar from_stack_1.global_60
  loc_BC9836: LdPrVar
  loc_BC9838: LateMemCall
  loc_BC983E: FFree1Str var_AC
  loc_BC9841: FFree1Var var_C0 = ""
  loc_BC9844: LitVarStr var_98, "  </tr>"
  loc_BC9849: PopAdLdVar
  loc_BC984A: FLdPr Me
  loc_BC984D: MemLdRfVar from_stack_1.global_60
  loc_BC9850: LdPrVar
  loc_BC9852: LateMemCall
  loc_BC9858: LitVarStr var_98, "</table>"
  loc_BC985D: PopAdLdVar
  loc_BC985E: FLdPr Me
  loc_BC9861: MemLdRfVar from_stack_1.global_60
  loc_BC9864: LdPrVar
  loc_BC9866: LateMemCall
  loc_BC986C: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC9871: PopAdLdVar
  loc_BC9872: FLdPr Me
  loc_BC9875: MemLdRfVar from_stack_1.global_60
  loc_BC9878: LdPrVar
  loc_BC987A: LateMemCall
  loc_BC9880: LitVarStr var_98, "  <thead>"
  loc_BC9885: PopAdLdVar
  loc_BC9886: FLdPr Me
  loc_BC9889: MemLdRfVar from_stack_1.global_60
  loc_BC988C: LdPrVar
  loc_BC988E: LateMemCall
  loc_BC9894: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC9899: PopAdLdVar
  loc_BC989A: FLdPr Me
  loc_BC989D: MemLdRfVar from_stack_1.global_60
  loc_BC98A0: LdPrVar
  loc_BC98A2: LateMemCall
  loc_BC98A8: LitVarStr var_98, "    <th>Concepto</th>"
  loc_BC98AD: PopAdLdVar
  loc_BC98AE: FLdPr Me
  loc_BC98B1: MemLdRfVar from_stack_1.global_60
  loc_BC98B4: LdPrVar
  loc_BC98B6: LateMemCall
  loc_BC98BC: LitVarStr var_98, "    <th>Detalle del Concepto</th>"
  loc_BC98C1: PopAdLdVar
  loc_BC98C2: FLdPr Me
  loc_BC98C5: MemLdRfVar from_stack_1.global_60
  loc_BC98C8: LdPrVar
  loc_BC98CA: LateMemCall
  loc_BC98D0: LitVarStr var_98, "    <th>Morosidad</th>"
  loc_BC98D5: PopAdLdVar
  loc_BC98D6: FLdPr Me
  loc_BC98D9: MemLdRfVar from_stack_1.global_60
  loc_BC98DC: LdPrVar
  loc_BC98DE: LateMemCall
  loc_BC98E4: LitVarStr var_98, "    <th>Facturación</th>"
  loc_BC98E9: PopAdLdVar
  loc_BC98EA: FLdPr Me
  loc_BC98ED: MemLdRfVar from_stack_1.global_60
  loc_BC98F0: LdPrVar
  loc_BC98F2: LateMemCall
  loc_BC98F8: LitVarStr var_98, "    <th>Recaudación</th>"
  loc_BC98FD: PopAdLdVar
  loc_BC98FE: FLdPr Me
  loc_BC9901: MemLdRfVar from_stack_1.global_60
  loc_BC9904: LdPrVar
  loc_BC9906: LateMemCall
  loc_BC990C: LitVarStr var_98, "    <th>Recupero</th>"
  loc_BC9911: PopAdLdVar
  loc_BC9912: FLdPr Me
  loc_BC9915: MemLdRfVar from_stack_1.global_60
  loc_BC9918: LdPrVar
  loc_BC991A: LateMemCall
  loc_BC9920: LitVarStr var_98, "    <th>Saldo Morosidad<br>Acumulada al<br>Fin del Trimestre</th>"
  loc_BC9925: PopAdLdVar
  loc_BC9926: FLdPr Me
  loc_BC9929: MemLdRfVar from_stack_1.global_60
  loc_BC992C: LdPrVar
  loc_BC992E: LateMemCall
  loc_BC9934: LitVarStr var_98, "  </tr>"
  loc_BC9939: PopAdLdVar
  loc_BC993A: FLdPr Me
  loc_BC993D: MemLdRfVar from_stack_1.global_60
  loc_BC9940: LdPrVar
  loc_BC9942: LateMemCall
  loc_BC9948: LitVarStr var_98, "  </thead>"
  loc_BC994D: PopAdLdVar
  loc_BC994E: FLdPr Me
  loc_BC9951: MemLdRfVar from_stack_1.global_60
  loc_BC9954: LdPrVar
  loc_BC9956: LateMemCall
  loc_BC995C: ExitProcHresult
End Function

Private Function Proc_130_22_A0FA88() 'A0FA88
  'Data Table: 4A11B8
  loc_A0FA48: LitVarStr var_94, "</table>"
  loc_A0FA4D: PopAdLdVar
  loc_A0FA4E: FLdPr Me
  loc_A0FA51: MemLdRfVar from_stack_1.global_60
  loc_A0FA54: LdPrVar
  loc_A0FA56: LateMemCall
  loc_A0FA5C: LitVarStr var_94, "</body>"
  loc_A0FA61: PopAdLdVar
  loc_A0FA62: FLdPr Me
  loc_A0FA65: MemLdRfVar from_stack_1.global_60
  loc_A0FA68: LdPrVar
  loc_A0FA6A: LateMemCall
  loc_A0FA70: LitVarStr var_94, "</html>"
  loc_A0FA75: PopAdLdVar
  loc_A0FA76: FLdPr Me
  loc_A0FA79: MemLdRfVar from_stack_1.global_60
  loc_A0FA7C: LdPrVar
  loc_A0FA7E: LateMemCall
  loc_A0FA84: ExitProcHresult
  loc_A0FA85: AryUnlock
End Function
