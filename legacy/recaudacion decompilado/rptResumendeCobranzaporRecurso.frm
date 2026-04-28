VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeCobranzaporRecurso
  Caption = "Resumen de Cobranza por Recurso"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeCobranzaporRecurso.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9852
  ClientHeight = 8520
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 8265
    Width = 9855
    Height = 255
    TabIndex = 35
    OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8640
    Top = 7080
    Width = 855
    Height = 735
    TabIndex = 34
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
    Picture = "rptResumendeCobranzaporRecurso.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0B9C
    Left = 9120
    Top = 6840
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4200
    Top = 6840
    Width = 3375
    Height = 1215
    TabIndex = 32
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 36
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 33
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 0
    Top = 6840
    Width = 4095
    Height = 1215
    TabIndex = 29
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 31
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 30
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9615
    Height = 6735
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame6
      Caption = "Ordenar por"
      Left = 120
      Top = 4440
      Width = 9255
      Height = 855
      TabIndex = 22
      Begin VB.OptionButton CodiConcOpt
        Caption = "Código"
        Left = 2040
        Top = 360
        Width = 1335
        Height = 330
        TabIndex = 23
      End
      Begin VB.OptionButton DetaConcOpt
        Caption = "Detalle"
        Left = 4200
        Top = 360
        Width = 1095
        Height = 330
        TabIndex = 24
      End
    End
    Begin VB.Frame Frame5
      Caption = "Agrupación"
      Left = 120
      Top = 5520
      Width = 9255
      Height = 855
      TabIndex = 25
      Begin VB.OptionButton AnaliticoOpt
        Caption = "Analítico"
        Left = 4200
        Top = 360
        Width = 1215
        Height = 300
        TabIndex = 27
      End
      Begin VB.OptionButton SinteticoOpt
        Caption = "Sintético"
        Left = 2040
        Top = 360
        Width = 1335
        Height = 300
        TabIndex = 26
      End
    End
    Begin VB.Frame Frame4
      Caption = "Concepto"
      Left = 120
      Top = 1920
      Width = 9255
      Height = 2295
      TabIndex = 12
      Begin VB.TextBox ExCodiConcTxt
        Left = 1200
        Top = 1440
        Width = 7935
        Height = 420
        TabIndex = 20
        MaxLength = 50
      End
      Begin MSMask.MaskEdBox CodiConcDesdeMsk
        Left = 1200
        Top = 480
        Width = 1215
        Height = 360
        TabIndex = 14
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiConcHastaMsk
        Left = 1200
        Top = 960
        Width = 1215
        Height = 360
        TabIndex = 17
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0C98
      End
      Begin VB.Label Label8
        Caption = "(Ingrese los conceptos que no quiere incluir separados por coma)"
        Left = 960
        Top = 1920
        Width = 6900
        Height = 300
        TabIndex = 21
        AutoSize = -1  'True
      End
      Begin VB.Label Label7
        Caption = "No incluir:"
        Left = 120
        Top = 1440
        Width = 1020
        Height = 300
        TabIndex = 19
        AutoSize = -1  'True
      End
      Begin VB.Label DetaConcHastaLbl
        Left = 2520
        Top = 960
        Width = 6615
        Height = 375
        TabIndex = 18
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DetaConcDesdeLbl
        Left = 2520
        Top = 480
        Width = 6615
        Height = 375
        TabIndex = 15
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 360
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 13
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 360
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 16
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Envío"
      Left = 120
      Top = 240
      Width = 3015
      Height = 1575
      TabIndex = 1
      Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0D30
      End
      Begin MSMask.MaskEdBox FeenAcpaHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0DE0
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame PeriodoFra
      Caption = "Número de Grupo"
      Left = 3240
      Top = 240
      Width = 3015
      Height = 1575
      TabIndex = 6
      Begin MSMask.MaskEdBox NumeAcpaDesdeMsk
        Left = 1560
        Top = 480
        Width = 735
        Height = 360
        TabIndex = 8
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0E90
      End
      Begin MSMask.MaskEdBox NumeAcpaHastaMsk
        Left = 1560
        Top = 960
        Width = 735
        Height = 360
        TabIndex = 10
        OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0F20
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 780
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 9
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 720
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 600
      Width = 1575
      Height = 615
      TabIndex = 11
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8760
    Top = 7320
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptResumendeCobranzaporRecurso.frx":0FB0
  End
End

Attribute VB_Name = "rptResumendeCobranzaporRecurso"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560A88
  bStruc(60) As Byte ' String fields: 15
End Type

Private Type UDT_2_0056F9C0
  bStruc(84) As Byte ' String fields: 7
End Type


Private Sub cmdPrevia_Click() '9DC800
  'Data Table: 502C50
  loc_9DC7E8: ILdRf Me
  loc_9DC7EB: CastAd
  loc_9DC7EE: FStAdFunc var_88
  loc_9DC7F1: FLdRfVar var_88
  loc_9DC7F4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9DC7F9: FFree1Ad var_88
  loc_9DC7FC: ExitProcHresult
  loc_9DC7FD: AndI4
  loc_9DC7FE: AddR8
End Sub

Private Sub cmdPredeterminada_Click() '9D810C
  'Data Table: 502C50
  loc_9D80F4: LitI2_Byte 0
  loc_9D80F6: ILdRf Me
  loc_9D80F9: CastAd
  loc_9D80FC: FStAdFunc var_88
  loc_9D80FF: FLdRfVar var_88
  loc_9D8102: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D8107: FFree1Ad var_88
  loc_9D810A: ExitProcHresult
End Sub

Private Sub CodiConcDesdeMsk_UnknownEvent_0 '9BCFA8
  'Data Table: 502C50
  loc_9BCF94: FLdPr Me
  loc_9BCF97: VCallAd Control_ID_CodiConcDesdeMsk
  loc_9BCF9A: CVarAd
  loc_9BCF9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCFA3: FFree1Var var_94 = ""
  loc_9BCFA6: ExitProcHresult
End Sub

Private Function CodiConcDesdeMsk_UnknownEvent_8(arg_C) 'ADD910
  'Data Table: 502C50
  loc_ADD7D0: FLdPr Me
  loc_ADD7D3: VCallAd Control_ID_CodiConcDesdeMsk
  loc_ADD7D6: FStAdFunc var_88
  loc_ADD7D9: FLdPr var_88
  loc_ADD7DC: LateIdLdVar var_98 DispID_22 0
  loc_ADD7E3: CStrVarTmp
  loc_ADD7E4: FStStrNoPop var_9C
  loc_ADD7E7: LitStr vbNullString
  loc_ADD7EA: NeStr
  loc_ADD7EC: FFree1Str var_9C
  loc_ADD7EF: FFree1Ad var_88
  loc_ADD7F2: FFree1Var var_98 = ""
  loc_ADD7F5: BranchF loc_ADD90D
  loc_ADD7F8: FLdPr Me
  loc_ADD7FB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ADD7FE: FStAdFunc var_88
  loc_ADD801: FLdPr var_88
  loc_ADD804: LateIdLdVar var_98 DispID_15 0
  loc_ADD80B: CStrVarTmp
  loc_ADD80C: CVarStr var_AC
  loc_ADD80F: FLdRfVar var_BC
  loc_ADD812: ImpAdCallFPR4  = Year()
  loc_ADD817: FLdPr Me
  loc_ADD81A: VCallAd Control_ID_CodiConcDesdeMsk
  loc_ADD81D: FStAdFunc var_C0
  loc_ADD820: FLdPr var_C0
  loc_ADD823: LateIdLdVar var_D0 DispID_22 0
  loc_ADD82A: PopAd
  loc_ADD82C: LitI2_Byte 0
  loc_ADD82E: LitI2_Byte 0
  loc_ADD830: LitI2_Byte 0
  loc_ADD832: LitI2_Byte 0
  loc_ADD834: LitI2_Byte 0
  loc_ADD836: LitI2_Byte 0
  loc_ADD838: LitI2_Byte 0
  loc_ADD83A: LitI2_Byte 0
  loc_ADD83C: LitI2_Byte 0
  loc_ADD83E: FLdRfVar var_D0
  loc_ADD841: CStrVarTmp
  loc_ADD842: FStStrNoPop var_9C
  loc_ADD845: FLdRfVar var_BC
  loc_ADD848: CI2Var
  loc_ADD849: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADD84E: FStStrNoPop var_D4
  loc_ADD851: FLdPr Me
  loc_ADD854: MemStStrCopy
  loc_ADD858: FFreeStr var_9C = ""
  loc_ADD85F: FFreeAd var_88 = ""
  loc_ADD866: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADD871: FLdPr Me
  loc_ADD874: VCallAd Control_ID_CodiConcDesdeMsk
  loc_ADD877: FStAdFuncNoPop
  loc_ADD87A: CastAd
  loc_ADD87D: FStAdFunc var_C0
  loc_ADD880: FLdRfVar var_C0
  loc_ADD883: FLdPr Me
  loc_ADD886: MemLdStr global_104
  loc_ADD889: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADD88E: IStI2 arg_C
  loc_ADD891: FFreeAd var_88 = ""
  loc_ADD898: ILdI2 arg_C
  loc_ADD89B: NotI4
  loc_ADD89C: BranchF loc_ADD90D
  loc_ADD89F: FLdPr Me
  loc_ADD8A2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ADD8A5: FStAdFunc var_88
  loc_ADD8A8: FLdPr var_88
  loc_ADD8AB: LateIdLdVar var_98 DispID_15 0
  loc_ADD8B2: CStrVarTmp
  loc_ADD8B3: CVarStr var_AC
  loc_ADD8B6: FLdRfVar var_BC
  loc_ADD8B9: ImpAdCallFPR4  = Year()
  loc_ADD8BE: FLdPr Me
  loc_ADD8C1: VCallAd Control_ID_CodiConcDesdeMsk
  loc_ADD8C4: FStAdFunc var_C0
  loc_ADD8C7: FLdPr var_C0
  loc_ADD8CA: LateIdLdVar var_D0 DispID_22 0
  loc_ADD8D1: CStrVarTmp
  loc_ADD8D2: FStStrNoPop var_9C
  loc_ADD8D5: FLdRfVar var_BC
  loc_ADD8D8: CI2Var
  loc_ADD8D9: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADD8DE: FStStrNoPop var_D4
  loc_ADD8E1: FLdPr Me
  loc_ADD8E4: VCallAd Control_ID_DetaConcDesdeLbl
  loc_ADD8E7: FStAdFunc var_D8
  loc_ADD8EA: FLdPr var_D8
  loc_ADD8ED: Me.Caption = from_stack_1
  loc_ADD8F2: FFreeStr var_9C = ""
  loc_ADD8F9: FFreeAd var_88 = "": var_C0 = ""
  loc_ADD902: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADD90D: ExitProcHresult
End Function

Private Sub CodiConcDesdeMsk_KeyPress(KeyAscii As Integer) 'AC33F4
  'Data Table: 502C50
  loc_AC32F8: ILdI2 KeyAscii
  loc_AC32FB: CI4UI1
  loc_AC32FC: LitI4 &H20
  loc_AC3301: EqI4
  loc_AC3302: BranchF loc_AC33F1
  loc_AC3305: FLdPr Me
  loc_AC3308: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC330B: FStAdFunc var_88
  loc_AC330E: FLdPr var_88
  loc_AC3311: LateIdLdVar var_98 DispID_15 0
  loc_AC3318: CStrVarTmp
  loc_AC3319: CVarStr var_A8
  loc_AC331C: FLdRfVar var_B8
  loc_AC331F: ImpAdCallFPR4  = Year()
  loc_AC3324: FLdRfVar var_B8
  loc_AC3327: CI2Var
  loc_AC3328: ImpAdLdRf MemVar_D94354
  loc_AC332B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC332E: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC3333: FFree1Ad var_88
  loc_AC3336: FFreeVar var_98 = "": var_A8 = ""
  loc_AC333F: LitVar_Missing var_D8
  loc_AC3342: PopAdLdVar
  loc_AC3343: LitVarI4
  loc_AC334B: PopAdLdVar
  loc_AC334C: ImpAdLdRf MemVar_D94354
  loc_AC334F: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC3352: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC3357: FLdRfVar var_DC
  loc_AC335A: FLdRfVar var_88
  loc_AC335D: ImpAdLdRf MemVar_D94354
  loc_AC3360: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC3363: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC3368: FLdPr var_88
  loc_AC336B: from_stack_1 = clsconcepto.RecordCount
  loc_AC3370: ILdRf var_DC
  loc_AC3373: LitI4 0
  loc_AC3378: GtI4
  loc_AC3379: FFree1Ad var_88
  loc_AC337C: BranchF loc_AC33F1
  loc_AC337F: FLdRfVar var_E0
  loc_AC3382: FLdRfVar var_88
  loc_AC3385: ImpAdLdRf MemVar_D94354
  loc_AC3388: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC338B: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC3390: FLdPr var_88
  loc_AC3393: from_stack_1 = clsconcepto.CodiConc
  loc_AC3398: FLdZeroAd var_E0
  loc_AC339B: CVarStr var_98
  loc_AC339E: PopAdLdVar
  loc_AC339F: FLdPr Me
  loc_AC33A2: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AC33A5: FStAdFunc var_E4
  loc_AC33A8: FLdPr var_E4
  loc_AC33AB: LateIdSt
  loc_AC33B0: FFreeAd var_88 = ""
  loc_AC33B7: FFree1Var var_98 = ""
  loc_AC33BA: FLdRfVar var_E0
  loc_AC33BD: FLdRfVar var_88
  loc_AC33C0: ImpAdLdRf MemVar_D94354
  loc_AC33C3: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC33C6: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC33CB: FLdPr var_88
  loc_AC33CE: from_stack_1 = clsconcepto.DetaConc
  loc_AC33D3: ILdRf var_E0
  loc_AC33D6: FLdPr Me
  loc_AC33D9: VCallAd Control_ID_DetaConcDesdeLbl
  loc_AC33DC: FStAdFunc var_E4
  loc_AC33DF: FLdPr var_E4
  loc_AC33E2: Me.Caption = from_stack_1
  loc_AC33E7: FFree1Str var_E0
  loc_AC33EA: FFreeAd var_88 = ""
  loc_AC33F1: ExitProcHresult
  loc_AC33F2: FStR8 var_27FD
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9BC978
  'Data Table: 502C50
  loc_9BC964: FLdPr Me
  loc_9BC967: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9BC96A: CVarAd
  loc_9BC96E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC973: FFree1Var var_94 = ""
  loc_9BC976: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_8 'A64E20
  'Data Table: 502C50
  loc_A64DC4: FLdPr Me
  loc_A64DC7: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A64DCA: FStAdFunc var_88
  loc_A64DCD: FLdPr var_88
  loc_A64DD0: LateIdLdVar var_98 DispID_15 0
  loc_A64DD7: CStrVarTmp
  loc_A64DD8: FStStrNoPop var_9C
  loc_A64DDB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64DE0: FStStrNoPop var_A0
  loc_A64DE3: FLdPr Me
  loc_A64DE6: MemStStrCopy
  loc_A64DEA: FFreeStr var_9C = ""
  loc_A64DF1: FFree1Ad var_88
  loc_A64DF4: FFree1Var var_98 = ""
  loc_A64DF7: FLdPr Me
  loc_A64DFA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A64DFD: FStAdFuncNoPop
  loc_A64E00: CastAd
  loc_A64E03: FStAdFunc var_A4
  loc_A64E06: FLdRfVar var_A4
  loc_A64E09: FLdPr Me
  loc_A64E0C: MemLdStr global_104
  loc_A64E0F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64E14: IStI2 KeyAscii
  loc_A64E17: FFreeAd var_88 = ""
  loc_A64E1E: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_KeyPress(KeyAscii As Integer) 'A25578
  'Data Table: 502C50
  loc_A25530: ILdI2 KeyAscii
  loc_A25533: CI4UI1
  loc_A25534: LitI4 &H20
  loc_A25539: EqI4
  loc_A2553A: BranchF loc_A25577
  loc_A2553D: LitVar_Missing var_A4
  loc_A25540: PopAdLdVar
  loc_A25541: LitVarI4
  loc_A25549: PopAdLdVar
  loc_A2554A: ImpAdLdRf MemVar_D930A4
  loc_A2554D: NewIfNullPr frmCalendario
  loc_A25550: frmCalendario.Show from_stack_1, from_stack_2
  loc_A25555: ImpAdLdRf MemVar_D93028
  loc_A25558: CDargRef
  loc_A2555C: FLdPr Me
  loc_A2555F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A25562: FStAdFunc var_A8
  loc_A25565: FLdPr var_A8
  loc_A25568: LateIdSt
  loc_A2556D: FFree1Ad var_A8
  loc_A25570: LitStr vbNullString
  loc_A25573: ImpAdStStrCopy MemVar_D93028
  loc_A25577: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_UnknownEvent_0 '9BD0C8
  'Data Table: 502C50
  loc_9BD0B4: FLdPr Me
  loc_9BD0B7: VCallAd Control_ID_CodiConcHastaMsk
  loc_9BD0BA: CVarAd
  loc_9BD0BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD0C3: FFree1Var var_94 = ""
  loc_9BD0C6: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_UnknownEvent_8 'ADDAA4
  'Data Table: 502C50
  loc_ADD964: FLdPr Me
  loc_ADD967: VCallAd Control_ID_CodiConcDesdeMsk
  loc_ADD96A: FStAdFunc var_88
  loc_ADD96D: FLdPr var_88
  loc_ADD970: LateIdLdVar var_98 DispID_22 0
  loc_ADD977: CStrVarTmp
  loc_ADD978: FStStrNoPop var_9C
  loc_ADD97B: LitStr vbNullString
  loc_ADD97E: NeStr
  loc_ADD980: FFree1Str var_9C
  loc_ADD983: FFree1Ad var_88
  loc_ADD986: FFree1Var var_98 = ""
  loc_ADD989: BranchF loc_ADDAA1
  loc_ADD98C: FLdPr Me
  loc_ADD98F: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ADD992: FStAdFunc var_88
  loc_ADD995: FLdPr var_88
  loc_ADD998: LateIdLdVar var_98 DispID_15 0
  loc_ADD99F: CStrVarTmp
  loc_ADD9A0: CVarStr var_AC
  loc_ADD9A3: FLdRfVar var_BC
  loc_ADD9A6: ImpAdCallFPR4  = Year()
  loc_ADD9AB: FLdPr Me
  loc_ADD9AE: VCallAd Control_ID_CodiConcHastaMsk
  loc_ADD9B1: FStAdFunc var_C0
  loc_ADD9B4: FLdPr var_C0
  loc_ADD9B7: LateIdLdVar var_D0 DispID_22 0
  loc_ADD9BE: PopAd
  loc_ADD9C0: LitI2_Byte 0
  loc_ADD9C2: LitI2_Byte 0
  loc_ADD9C4: LitI2_Byte 0
  loc_ADD9C6: LitI2_Byte 0
  loc_ADD9C8: LitI2_Byte 0
  loc_ADD9CA: LitI2_Byte 0
  loc_ADD9CC: LitI2_Byte 0
  loc_ADD9CE: LitI2_Byte 0
  loc_ADD9D0: LitI2_Byte 0
  loc_ADD9D2: FLdRfVar var_D0
  loc_ADD9D5: CStrVarTmp
  loc_ADD9D6: FStStrNoPop var_9C
  loc_ADD9D9: FLdRfVar var_BC
  loc_ADD9DC: CI2Var
  loc_ADD9DD: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADD9E2: FStStrNoPop var_D4
  loc_ADD9E5: FLdPr Me
  loc_ADD9E8: MemStStrCopy
  loc_ADD9EC: FFreeStr var_9C = ""
  loc_ADD9F3: FFreeAd var_88 = ""
  loc_ADD9FA: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADDA05: FLdPr Me
  loc_ADDA08: VCallAd Control_ID_CodiConcHastaMsk
  loc_ADDA0B: FStAdFuncNoPop
  loc_ADDA0E: CastAd
  loc_ADDA11: FStAdFunc var_C0
  loc_ADDA14: FLdRfVar var_C0
  loc_ADDA17: FLdPr Me
  loc_ADDA1A: MemLdStr global_104
  loc_ADDA1D: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADDA22: IStI2 KeyAscii
  loc_ADDA25: FFreeAd var_88 = ""
  loc_ADDA2C: ILdI2 KeyAscii
  loc_ADDA2F: NotI4
  loc_ADDA30: BranchF loc_ADDAA1
  loc_ADDA33: FLdPr Me
  loc_ADDA36: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ADDA39: FStAdFunc var_88
  loc_ADDA3C: FLdPr var_88
  loc_ADDA3F: LateIdLdVar var_98 DispID_15 0
  loc_ADDA46: CStrVarTmp
  loc_ADDA47: CVarStr var_AC
  loc_ADDA4A: FLdRfVar var_BC
  loc_ADDA4D: ImpAdCallFPR4  = Year()
  loc_ADDA52: FLdPr Me
  loc_ADDA55: VCallAd Control_ID_CodiConcHastaMsk
  loc_ADDA58: FStAdFunc var_C0
  loc_ADDA5B: FLdPr var_C0
  loc_ADDA5E: LateIdLdVar var_D0 DispID_22 0
  loc_ADDA65: CStrVarTmp
  loc_ADDA66: FStStrNoPop var_9C
  loc_ADDA69: FLdRfVar var_BC
  loc_ADDA6C: CI2Var
  loc_ADDA6D: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADDA72: FStStrNoPop var_D4
  loc_ADDA75: FLdPr Me
  loc_ADDA78: VCallAd Control_ID_DetaConcHastaLbl
  loc_ADDA7B: FStAdFunc var_D8
  loc_ADDA7E: FLdPr var_D8
  loc_ADDA81: Me.Caption = from_stack_1
  loc_ADDA86: FFreeStr var_9C = ""
  loc_ADDA8D: FFreeAd var_88 = "": var_C0 = ""
  loc_ADDA96: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADDAA1: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_KeyPress(KeyAscii As Integer) 'AC316C
  'Data Table: 502C50
  loc_AC3070: ILdI2 KeyAscii
  loc_AC3073: CI4UI1
  loc_AC3074: LitI4 &H20
  loc_AC3079: EqI4
  loc_AC307A: BranchF loc_AC3169
  loc_AC307D: FLdPr Me
  loc_AC3080: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC3083: FStAdFunc var_88
  loc_AC3086: FLdPr var_88
  loc_AC3089: LateIdLdVar var_98 DispID_15 0
  loc_AC3090: CStrVarTmp
  loc_AC3091: CVarStr var_A8
  loc_AC3094: FLdRfVar var_B8
  loc_AC3097: ImpAdCallFPR4  = Year()
  loc_AC309C: FLdRfVar var_B8
  loc_AC309F: CI2Var
  loc_AC30A0: ImpAdLdRf MemVar_D94354
  loc_AC30A3: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC30A6: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC30AB: FFree1Ad var_88
  loc_AC30AE: FFreeVar var_98 = "": var_A8 = ""
  loc_AC30B7: LitVar_Missing var_D8
  loc_AC30BA: PopAdLdVar
  loc_AC30BB: LitVarI4
  loc_AC30C3: PopAdLdVar
  loc_AC30C4: ImpAdLdRf MemVar_D94354
  loc_AC30C7: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC30CA: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC30CF: FLdRfVar var_DC
  loc_AC30D2: FLdRfVar var_88
  loc_AC30D5: ImpAdLdRf MemVar_D94354
  loc_AC30D8: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC30DB: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC30E0: FLdPr var_88
  loc_AC30E3: from_stack_1 = clsconcepto.RecordCount
  loc_AC30E8: ILdRf var_DC
  loc_AC30EB: LitI4 0
  loc_AC30F0: GtI4
  loc_AC30F1: FFree1Ad var_88
  loc_AC30F4: BranchF loc_AC3169
  loc_AC30F7: FLdRfVar var_E0
  loc_AC30FA: FLdRfVar var_88
  loc_AC30FD: ImpAdLdRf MemVar_D94354
  loc_AC3100: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC3103: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC3108: FLdPr var_88
  loc_AC310B: from_stack_1 = clsconcepto.CodiConc
  loc_AC3110: FLdZeroAd var_E0
  loc_AC3113: CVarStr var_98
  loc_AC3116: PopAdLdVar
  loc_AC3117: FLdPr Me
  loc_AC311A: VCallAd Control_ID_CodiConcHastaMsk
  loc_AC311D: FStAdFunc var_E4
  loc_AC3120: FLdPr var_E4
  loc_AC3123: LateIdSt
  loc_AC3128: FFreeAd var_88 = ""
  loc_AC312F: FFree1Var var_98 = ""
  loc_AC3132: FLdRfVar var_E0
  loc_AC3135: FLdRfVar var_88
  loc_AC3138: ImpAdLdRf MemVar_D94354
  loc_AC313B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC313E: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC3143: FLdPr var_88
  loc_AC3146: from_stack_1 = clsconcepto.DetaConc
  loc_AC314B: ILdRf var_E0
  loc_AC314E: FLdPr Me
  loc_AC3151: VCallAd Control_ID_DetaConcHastaLbl
  loc_AC3154: FStAdFunc var_E4
  loc_AC3157: FLdPr var_E4
  loc_AC315A: Me.Caption = from_stack_1
  loc_AC315F: FFree1Str var_E0
  loc_AC3162: FFreeAd var_88 = ""
  loc_AC3169: ExitProcHresult
  loc_AC316A: FStStrNoPop var_2800
End Sub

Private Sub ExCodiConcTxt_Validate(Cancel As Boolean) 'A951F0
  'Data Table: 502C50
  loc_A95148: FLdRfVar var_8A
  loc_A9514B: FLdPr Me
  loc_A9514E: VCallAd Control_ID_ExCodiConcTxt
  loc_A95151: FStAdFunc var_88
  loc_A95154: FLdPr var_88
  loc_A95157:  = Me.Enabled
  loc_A9515C: FLdI2 var_8A
  loc_A9515F: FLdRfVar var_94
  loc_A95162: FLdPr Me
  loc_A95165: VCallAd Control_ID_ExCodiConcTxt
  loc_A95168: FStAdFunc var_90
  loc_A9516B: FLdPr var_90
  loc_A9516E:  = Me.Text
  loc_A95173: ILdRf var_94
  loc_A95176: LitStr vbNullString
  loc_A95179: NeStr
  loc_A9517B: AndI4
  loc_A9517C: FFree1Str var_94
  loc_A9517F: FFreeAd var_88 = ""
  loc_A95186: BranchF loc_A951EC
  loc_A95189: FLdRfVar var_94
  loc_A9518C: FLdPr Me
  loc_A9518F: VCallAd Control_ID_ExCodiConcTxt
  loc_A95192: FStAdFunc var_88
  loc_A95195: FLdPr var_88
  loc_A95198:  = Me.Text
  loc_A9519D: ILdRf var_94
  loc_A951A0: LitStr " Excepto "
  loc_A951A3: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A951A8: FStStrNoPop var_98
  loc_A951AB: FLdPr Me
  loc_A951AE: MemStStrCopy
  loc_A951B2: FFreeStr var_94 = ""
  loc_A951B9: FFree1Ad var_88
  loc_A951BC: FLdPr Me
  loc_A951BF: MemLdStr global_104
  loc_A951C2: LitStr vbNullString
  loc_A951C5: NeStr
  loc_A951C7: BranchF loc_A951EC
  loc_A951CA: FLdPr Me
  loc_A951CD: MemLdStr global_104
  loc_A951D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A951D5: FLdPr Me
  loc_A951D8: VCallAd Control_ID_ExCodiConcTxt
  loc_A951DB: CVarAd
  loc_A951DF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A951E4: FFree1Var var_A8 = ""
  loc_A951E7: LitI2_Byte &HFF
  loc_A951E9: IStI2 Cancel
  loc_A951EC: ExitProcHresult
  loc_A951ED: MemStI4 global_893
End Sub

Private Sub cmdSalir_Click() 'A02504
  'Data Table: 502C50
  loc_A024D4: LitVarStr var_94, "Cerrando..."
  loc_A024D9: PopAdLdVar
  loc_A024DA: FLdPr Me
  loc_A024DD: VCallAd Control_ID_statusBar
  loc_A024E0: FStAdFunc var_A8
  loc_A024E3: FLdPr var_A8
  loc_A024E6: LateIdSt
  loc_A024EB: FFree1Ad var_A8
  loc_A024EE: ILdRf Me
  loc_A024F1: FStAdNoPop
  loc_A024F5: ImpAdLdRf MemVar_D9C5D8
  loc_A024F8: NewIfNullPr Global
  loc_A024FB: Global.Unload from_stack_1
  loc_A02500: FFree1Ad var_A8
  loc_A02503: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E136C
  'Data Table: 502C50
  loc_9E1350: LitI2_Byte 0
  loc_9E1352: PopTmpLdAd2 var_8A
  loc_9E1355: ILdRf Me
  loc_9E1358: CastAd
  loc_9E135B: FStAdFunc var_88
  loc_9E135E: FLdRfVar var_88
  loc_9E1361: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1366: FFree1Ad var_88
  loc_9E1369: ExitProcHresult
  loc_9E136A: FnLBound
End Sub

Private Sub NumeAcpaHastaMsk_UnknownEvent_0 '9BF558
  'Data Table: 502C50
  loc_9BF544: FLdPr Me
  loc_9BF547: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_9BF54A: CVarAd
  loc_9BF54E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF553: FFree1Var var_94 = ""
  loc_9BF556: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A118A8
  'Data Table: 502C50
  loc_A11868: LitI2_Byte 0
  loc_A1186A: FLdPr Me
  loc_A1186D: MemStI2 bGenerado
  loc_A11870: LitI2_Byte &HFF
  loc_A11872: FLdPr Me
  loc_A11875: MemStI2 bLogos
  loc_A11878: LitI2_Byte 0
  loc_A1187A: ILdRf Me
  loc_A1187D: CastAd
  loc_A11880: FStAdFunc var_88
  loc_A11883: FLdRfVar var_88
  loc_A11886: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A1188B: FFree1Ad var_88
  loc_A1188E: Call HabilitarCriterio()
  loc_A11893: ILdRf Me
  loc_A11896: CastAd
  loc_A11899: FStAdFunc var_88
  loc_A1189C: FLdRfVar var_88
  loc_A1189F: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A118A4: FFree1Ad var_88
  loc_A118A7: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9BEB38
  'Data Table: 502C50
  loc_9BEB24: FLdPr Me
  loc_9BEB27: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9BEB2A: CVarAd
  loc_9BEB2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEB33: FFree1Var var_94 = ""
  loc_9BEB36: ExitProcHresult
End Sub

Private Function FeenAcpaHastaMsk_UnknownEvent_8(arg_C) 'AC7564
  'Data Table: 502C50
  loc_AC7470: FLdPr Me
  loc_AC7473: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7476: FStAdFunc var_88
  loc_AC7479: FLdPr var_88
  loc_AC747C: LateIdLdVar var_98 DispID_15 0
  loc_AC7483: CStrVarTmp
  loc_AC7484: FStStrNoPop var_9C
  loc_AC7487: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AC748C: FStStrNoPop var_A0
  loc_AC748F: FLdPr Me
  loc_AC7492: MemStStrCopy
  loc_AC7496: FFreeStr var_9C = ""
  loc_AC749D: FFree1Ad var_88
  loc_AC74A0: FFree1Var var_98 = ""
  loc_AC74A3: FLdPr Me
  loc_AC74A6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC74A9: FStAdFuncNoPop
  loc_AC74AC: CastAd
  loc_AC74AF: FStAdFunc var_A4
  loc_AC74B2: FLdRfVar var_A4
  loc_AC74B5: FLdPr Me
  loc_AC74B8: MemLdStr global_104
  loc_AC74BB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC74C0: IStI2 arg_C
  loc_AC74C3: FFreeAd var_88 = ""
  loc_AC74CA: ILdI2 arg_C
  loc_AC74CD: BranchF loc_AC74D1
  loc_AC74D0: ExitProcHresult
  loc_AC74D1: FLdPr Me
  loc_AC74D4: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC74D7: FStAdFunc var_88
  loc_AC74DA: FLdPr var_88
  loc_AC74DD: LateIdLdVar var_98 DispID_15 0
  loc_AC74E4: CStrVarTmp
  loc_AC74E5: CVarStr var_B4
  loc_AC74E8: FLdRfVar var_C4
  loc_AC74EB: ImpAdCallFPR4  = Year()
  loc_AC74F0: FLdRfVar var_C4
  loc_AC74F3: FLdPr Me
  loc_AC74F6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC74F9: FStAdFunc var_A4
  loc_AC74FC: FLdPr var_A4
  loc_AC74FF: LateIdLdVar var_D4 DispID_15 0
  loc_AC7506: CStrVarTmp
  loc_AC7507: CVarStr var_E4
  loc_AC750A: FLdRfVar var_F4
  loc_AC750D: ImpAdCallFPR4  = Year()
  loc_AC7512: FLdRfVar var_F4
  loc_AC7515: NeVarBool
  loc_AC7517: FFreeAd var_88 = ""
  loc_AC751E: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AC752D: BranchF loc_AC7561
  loc_AC7530: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AC7533: FLdPr Me
  loc_AC7536: MemStStrCopy
  loc_AC753A: FLdPr Me
  loc_AC753D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7540: FStAdFuncNoPop
  loc_AC7543: CastAd
  loc_AC7546: FStAdFunc var_A4
  loc_AC7549: FLdRfVar var_A4
  loc_AC754C: FLdPr Me
  loc_AC754F: MemLdStr global_104
  loc_AC7552: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC7557: IStI2 arg_C
  loc_AC755A: FFreeAd var_88 = ""
  loc_AC7561: ExitProcHresult
End Function

Private Sub FeenAcpaHastaMsk_KeyPress(KeyAscii As Integer) 'A25480
  'Data Table: 502C50
  loc_A25438: ILdI2 KeyAscii
  loc_A2543B: CI4UI1
  loc_A2543C: LitI4 &H20
  loc_A25441: EqI4
  loc_A25442: BranchF loc_A2547F
  loc_A25445: LitVar_Missing var_A4
  loc_A25448: PopAdLdVar
  loc_A25449: LitVarI4
  loc_A25451: PopAdLdVar
  loc_A25452: ImpAdLdRf MemVar_D930A4
  loc_A25455: NewIfNullPr frmCalendario
  loc_A25458: frmCalendario.Show from_stack_1, from_stack_2
  loc_A2545D: ImpAdLdRf MemVar_D93028
  loc_A25460: CDargRef
  loc_A25464: FLdPr Me
  loc_A25467: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A2546A: FStAdFunc var_A8
  loc_A2546D: FLdPr var_A8
  loc_A25470: LateIdSt
  loc_A25475: FFree1Ad var_A8
  loc_A25478: LitStr vbNullString
  loc_A2547B: ImpAdStStrCopy MemVar_D93028
  loc_A2547F: ExitProcHresult
End Sub

Private Sub NumeAcpaDesdeMsk_UnknownEvent_0 '9BF0D8
  'Data Table: 502C50
  loc_9BF0C4: FLdPr Me
  loc_9BF0C7: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_9BF0CA: CVarAd
  loc_9BF0CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF0D3: FFree1Var var_94 = ""
  loc_9BF0D6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1CB28
  'Data Table: 502C50
  loc_A1CAF0: FLdPr Me
  loc_A1CAF3: VCallAd Control_ID_statusBar
  loc_A1CAF6: FStAdFunc var_88
  loc_A1CAF9: FLdPr var_88
  loc_A1CAFC: LateIdLdVar var_98 DispID_1 0
  loc_A1CB03: CStrVarTmp
  loc_A1CB04: CVarStr var_A8
  loc_A1CB07: PopAdLdVar
  loc_A1CB08: FLdPr Me
  loc_A1CB0B: VCallAd Control_ID_statusBar
  loc_A1CB0E: FStAdFunc var_BC
  loc_A1CB11: FLdPr var_BC
  loc_A1CB14: LateIdSt
  loc_A1CB19: FFreeAd var_88 = ""
  loc_A1CB20: FFreeVar var_98 = ""
  loc_A1CB27: ExitProcHresult
End Sub

Private Sub Form_Load() 'A97908
  'Data Table: 502C50
  loc_A97858: ILdRf Me
  loc_A9785B: CastAd
  loc_A9785E: FStAdFunc var_88
  loc_A97861: FLdRfVar var_88
  loc_A97864: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A97869: FFree1Ad var_88
  loc_A9786C: Call cmdNueva_Click()
  loc_A97871: LitI2_Byte 0
  loc_A97873: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A97878: CStrDate
  loc_A9787A: CVarStr var_98
  loc_A9787D: PopAdLdVar
  loc_A9787E: FLdPr Me
  loc_A97881: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A97884: FStAdFunc var_88
  loc_A97887: FLdPr var_88
  loc_A9788A: LateIdSt
  loc_A9788F: FFree1Ad var_88
  loc_A97892: FFree1Var var_98 = ""
  loc_A97895: FLdPr Me
  loc_A97898: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A9789B: FStAdFunc var_88
  loc_A9789E: FLdPr var_88
  loc_A978A1: LateIdLdVar var_98 DispID_0 0
  loc_A978A8: CStrVarTmp
  loc_A978A9: CVarStr var_B8
  loc_A978AC: PopAdLdVar
  loc_A978AD: FLdPr Me
  loc_A978B0: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A978B3: FStAdFunc var_BC
  loc_A978B6: FLdPr var_BC
  loc_A978B9: LateIdSt
  loc_A978BE: FFreeAd var_88 = ""
  loc_A978C5: FFreeVar var_98 = ""
  loc_A978CC: LitI2_Byte &HFF
  loc_A978CE: FLdPr Me
  loc_A978D1: VCallAd Control_ID_CodiConcOpt
  loc_A978D4: FStAdFunc var_88
  loc_A978D7: FLdPr var_88
  loc_A978DA: Me.Value = from_stack_1b
  loc_A978DF: FFree1Ad var_88
  loc_A978E2: LitI2_Byte &HFF
  loc_A978E4: FLdPr Me
  loc_A978E7: VCallAd Control_ID_SinteticoOpt
  loc_A978EA: FStAdFunc var_88
  loc_A978ED: FLdPr var_88
  loc_A978F0: Me.Value = from_stack_1b
  loc_A978F5: FFree1Ad var_88
  loc_A978F8: ImpAdLdI2 MemVar_D93C8E
  loc_A978FB: FLdPr Me
  loc_A978FE: MemStI2 global_108
  loc_A97901: LitI2_Byte &HFF
  loc_A97903: ImpAdStI2 MemVar_D93C8E
  loc_A97906: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9E52F4
  'Data Table: 502C50
  loc_9E52D4: FLdPr Me
  loc_9E52D7: VCallAd Control_ID_wbbReporte
  loc_9E52DA: FStAdFunc var_88
  loc_9E52DD: FLdRfVar var_88
  loc_9E52E0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9E52E5: FFree1Ad var_88
  loc_9E52E8: FLdPr Me
  loc_9E52EB: MemLdI2 global_108
  loc_9E52EE: ImpAdStI2 MemVar_D93C8E
  loc_9E52F1: ExitProcHresult
  loc_9E52F2: FLdPr var_2800
End Sub

Private Sub cmdXLS_Click() '9E11DC
  'Data Table: 502C50
  loc_9E11C0: LitI2_Byte &HFF
  loc_9E11C2: LitI2_Byte 0
  loc_9E11C4: ILdRf Me
  loc_9E11C7: CastAd
  loc_9E11CA: FStAdFunc var_88
  loc_9E11CD: FLdRfVar var_88
  loc_9E11D0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E11D5: FFree1Ad var_88
  loc_9E11D8: ExitProcHresult
End Sub

Public Function bLogosGet() '504544
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '504553
  bLogos = Value
End Sub

Public Function bGeneradoGet() '504562
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '504571
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9BDB7C
  'Data Table: 502C50
  loc_9BDB64: LitI2_Byte 0
  loc_9BDB66: FLdPr Me
  loc_9BDB69: MemStI2 bLogos
  loc_9BDB6C: Call GeneraHTML()
  loc_9BDB71: LitI2_Byte &HFF
  loc_9BDB73: FLdPr Me
  loc_9BDB76: MemStI2 bLogos
  loc_9BDB79: ExitProcHresult
  loc_9BDB7A: FStFPR8 var_27FD
End Sub

Public Sub HabilitarCriterio() 'AC120C
  'Data Table: 502C50
  loc_AC1138: LitI4 0
  loc_AC113D: LitI4 &HA
  loc_AC1142: FLdRfVar var_88
  loc_AC1145: Redim
  loc_AC114F: FLdPr Me
  loc_AC1152: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC1155: CVarAd
  loc_AC1159: ParmAry1St
  loc_AC115F: FLdPr Me
  loc_AC1162: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC1165: CVarAd
  loc_AC1169: ParmAry1St
  loc_AC116F: FLdPr Me
  loc_AC1172: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_AC1175: CVarAd
  loc_AC1179: ParmAry1St
  loc_AC117F: FLdPr Me
  loc_AC1182: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_AC1185: CVarAd
  loc_AC1189: ParmAry1St
  loc_AC118F: FLdPr Me
  loc_AC1192: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AC1195: CVarAd
  loc_AC1199: ParmAry1St
  loc_AC119F: FLdPr Me
  loc_AC11A2: VCallAd Control_ID_CodiConcHastaMsk
  loc_AC11A5: CVarAd
  loc_AC11A9: ParmAry1St
  loc_AC11AF: FLdPr Me
  loc_AC11B2: VCallAd Control_ID_ExCodiConcTxt
  loc_AC11B5: CVarAd
  loc_AC11B9: ParmAry1St
  loc_AC11BF: FLdPr Me
  loc_AC11C2: VCallAd Control_ID_CodiConcOpt
  loc_AC11C5: CVarAd
  loc_AC11C9: ParmAry1St
  loc_AC11CF: FLdPr Me
  loc_AC11D2: VCallAd Control_ID_DetaConcOpt
  loc_AC11D5: CVarAd
  loc_AC11D9: ParmAry1St
  loc_AC11DF: FLdPr Me
  loc_AC11E2: VCallAd Control_ID_SinteticoOpt
  loc_AC11E5: CVarAd
  loc_AC11E9: ParmAry1St
  loc_AC11EF: FLdPr Me
  loc_AC11F2: VCallAd Control_ID_AnaliticoOpt
  loc_AC11F5: CVarAd
  loc_AC11F9: ParmAry1St
  loc_AC11FF: FLdRfVar var_88
  loc_AC1202: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC1207: FLdRfVar var_88
  loc_AC120A: Erase
  loc_AC120B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CD13C4
  'Data Table: 502C50
  loc_CCEDC4: FLdPr Me
  loc_CCEDC7: MemLdI2 bGenerado
  loc_CCEDCA: BranchF loc_CCEDCE
  loc_CCEDCD: ExitProcHresult
  loc_CCEDCE: LitVarStr var_B0, "Generando reporte..."
  loc_CCEDD3: PopAdLdVar
  loc_CCEDD4: FLdPr Me
  loc_CCEDD7: VCallAd Control_ID_statusBar
  loc_CCEDDA: FStAdFunc var_C4
  loc_CCEDDD: FLdPr var_C4
  loc_CCEDE0: LateIdSt
  loc_CCEDE5: FFree1Ad var_C4
  loc_CCEDE8: LitI4 &HB
  loc_CCEDED: CI2I4
  loc_CCEDEE: FLdPr Me
  loc_CCEDF1: Me.MousePointer = from_stack_1
  loc_CCEDF6: LitI2_Byte 0
  loc_CCEDF8: PopTmpLdAd2 var_C6
  loc_CCEDFB: Call FeenAcpaDesdeMsk_UnknownEvent_8()
  loc_CCEE00: FLdPr Me
  loc_CCEE03: MemLdStr global_104
  loc_CCEE06: LitStr vbNullString
  loc_CCEE09: NeStr
  loc_CCEE0B: BranchF loc_CCEE11
  loc_CCEE0E: Branch loc_CD1399
  loc_CCEE11: LitI2_Byte 0
  loc_CCEE13: PopTmpLdAd2 var_C6
  loc_CCEE16: from_stack_2v = FeenAcpaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_CCEE1B: FLdPr Me
  loc_CCEE1E: MemLdStr global_104
  loc_CCEE21: LitStr vbNullString
  loc_CCEE24: NeStr
  loc_CCEE26: BranchF loc_CCEE2C
  loc_CCEE29: Branch loc_CD1399
  loc_CCEE2C: LitI2_Byte 0
  loc_CCEE2E: PopTmpLdAd2 var_C6
  loc_CCEE31: from_stack_2v = CodiConcDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_CCEE36: FLdPr Me
  loc_CCEE39: MemLdStr global_104
  loc_CCEE3C: LitStr vbNullString
  loc_CCEE3F: NeStr
  loc_CCEE41: BranchF loc_CCEE47
  loc_CCEE44: Branch loc_CD1399
  loc_CCEE47: LitI2_Byte 0
  loc_CCEE49: PopTmpLdAd2 var_C6
  loc_CCEE4C: Call CodiConcHastaMsk_UnknownEvent_8()
  loc_CCEE51: FLdPr Me
  loc_CCEE54: MemLdStr global_104
  loc_CCEE57: LitStr vbNullString
  loc_CCEE5A: NeStr
  loc_CCEE5C: BranchF loc_CCEE62
  loc_CCEE5F: Branch loc_CD1399
  loc_CCEE62: LitI2_Byte 0
  loc_CCEE64: PopTmpLdAd2 var_C6
  loc_CCEE67: Call ExCodiConcTxt_Validate(from_stack_1v)
  loc_CCEE6C: FLdPr Me
  loc_CCEE6F: MemLdStr global_104
  loc_CCEE72: LitStr vbNullString
  loc_CCEE75: NeStr
  loc_CCEE77: BranchF loc_CCEE7D
  loc_CCEE7A: Branch loc_CD1399
  loc_CCEE7D: FLdPr Me
  loc_CCEE80: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_CCEE83: FStAdFunc var_C4
  loc_CCEE86: FLdPr var_C4
  loc_CCEE89: LateIdLdVar var_D8 DispID_22 0
  loc_CCEE90: PopAd
  loc_CCEE92: FLdPr Me
  loc_CCEE95: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_CCEE98: FStAdFunc var_E0
  loc_CCEE9B: FLdPr var_E0
  loc_CCEE9E: LateIdLdVar var_F0 DispID_22 0
  loc_CCEEA5: PopAd
  loc_CCEEA7: LitVarStr var_C0, vbNullString
  loc_CCEEAC: FStVarCopyObj var_114
  loc_CCEEAF: FLdRfVar var_114
  loc_CCEEB2: LitStr " AND NumeAcpa >= "
  loc_CCEEB5: FLdRfVar var_F0
  loc_CCEEB8: CStrVarTmp
  loc_CCEEB9: FStStrNoPop var_F4
  loc_CCEEBC: ConcatStr
  loc_CCEEBD: CVarStr var_104
  loc_CCEEC0: FLdRfVar var_D8
  loc_CCEEC3: CStrVarTmp
  loc_CCEEC4: FStStrNoPop var_DC
  loc_CCEEC7: LitStr vbNullString
  loc_CCEECA: NeStr
  loc_CCEECC: CVarBoolI2 var_B0
  loc_CCEED0: FLdRfVar var_124
  loc_CCEED3: ImpAdCallFPR4  = IIf(, , )
  loc_CCEED8: FLdRfVar var_124
  loc_CCEEDB: CStrVarTmp
  loc_CCEEDC: FStStr var_88
  loc_CCEEDF: FFreeStr var_DC = ""
  loc_CCEEE6: FFreeAd var_C4 = ""
  loc_CCEEED: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_CCEEFC: FLdPr Me
  loc_CCEEFF: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_CCEF02: FStAdFunc var_C4
  loc_CCEF05: FLdPr var_C4
  loc_CCEF08: LateIdLdVar var_D8 DispID_22 0
  loc_CCEF0F: PopAd
  loc_CCEF11: FLdPr Me
  loc_CCEF14: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_CCEF17: FStAdFunc var_E0
  loc_CCEF1A: FLdPr var_E0
  loc_CCEF1D: LateIdLdVar var_F0 DispID_22 0
  loc_CCEF24: PopAd
  loc_CCEF26: LitVarStr var_C0, vbNullString
  loc_CCEF2B: FStVarCopyObj var_114
  loc_CCEF2E: FLdRfVar var_114
  loc_CCEF31: LitStr " AND NumeAcpa <= "
  loc_CCEF34: FLdRfVar var_F0
  loc_CCEF37: CStrVarTmp
  loc_CCEF38: FStStrNoPop var_F4
  loc_CCEF3B: ConcatStr
  loc_CCEF3C: CVarStr var_104
  loc_CCEF3F: FLdRfVar var_D8
  loc_CCEF42: CStrVarTmp
  loc_CCEF43: FStStrNoPop var_DC
  loc_CCEF46: LitStr vbNullString
  loc_CCEF49: NeStr
  loc_CCEF4B: CVarBoolI2 var_B0
  loc_CCEF4F: FLdRfVar var_124
  loc_CCEF52: ImpAdCallFPR4  = IIf(, , )
  loc_CCEF57: FLdRfVar var_124
  loc_CCEF5A: CStrVarTmp
  loc_CCEF5B: FStStr var_8C
  loc_CCEF5E: FFreeStr var_DC = ""
  loc_CCEF65: FFreeAd var_C4 = ""
  loc_CCEF6C: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_CCEF7B: FLdPr Me
  loc_CCEF7E: VCallAd Control_ID_CodiConcDesdeMsk
  loc_CCEF81: FStAdFunc var_C4
  loc_CCEF84: FLdPr var_C4
  loc_CCEF87: LateIdLdVar var_D8 DispID_22 0
  loc_CCEF8E: PopAd
  loc_CCEF90: FLdPr Me
  loc_CCEF93: VCallAd Control_ID_CodiConcDesdeMsk
  loc_CCEF96: FStAdFunc var_E0
  loc_CCEF99: FLdPr var_E0
  loc_CCEF9C: LateIdLdVar var_F0 DispID_22 0
  loc_CCEFA3: PopAd
  loc_CCEFA5: LitVarStr var_C0, vbNullString
  loc_CCEFAA: FStVarCopyObj var_114
  loc_CCEFAD: FLdRfVar var_114
  loc_CCEFB0: LitStr " AND deta.CodiConc >= '"
  loc_CCEFB3: FLdRfVar var_F0
  loc_CCEFB6: CStrVarTmp
  loc_CCEFB7: FStStrNoPop var_F4
  loc_CCEFBA: ConcatStr
  loc_CCEFBB: FStStrNoPop var_128
  loc_CCEFBE: LitStr "'"
  loc_CCEFC1: ConcatStr
  loc_CCEFC2: CVarStr var_104
  loc_CCEFC5: FLdRfVar var_D8
  loc_CCEFC8: CStrVarTmp
  loc_CCEFC9: FStStrNoPop var_DC
  loc_CCEFCC: LitStr vbNullString
  loc_CCEFCF: NeStr
  loc_CCEFD1: CVarBoolI2 var_B0
  loc_CCEFD5: FLdRfVar var_124
  loc_CCEFD8: ImpAdCallFPR4  = IIf(, , )
  loc_CCEFDD: FLdRfVar var_124
  loc_CCEFE0: CStrVarTmp
  loc_CCEFE1: FStStr var_90
  loc_CCEFE4: FFreeStr var_DC = "": var_F4 = ""
  loc_CCEFED: FFreeAd var_C4 = ""
  loc_CCEFF4: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_CCF003: FLdPr Me
  loc_CCF006: VCallAd Control_ID_CodiConcHastaMsk
  loc_CCF009: FStAdFunc var_C4
  loc_CCF00C: FLdPr var_C4
  loc_CCF00F: LateIdLdVar var_D8 DispID_22 0
  loc_CCF016: PopAd
  loc_CCF018: FLdPr Me
  loc_CCF01B: VCallAd Control_ID_CodiConcHastaMsk
  loc_CCF01E: FStAdFunc var_E0
  loc_CCF021: FLdPr var_E0
  loc_CCF024: LateIdLdVar var_F0 DispID_22 0
  loc_CCF02B: PopAd
  loc_CCF02D: LitVarStr var_C0, vbNullString
  loc_CCF032: FStVarCopyObj var_114
  loc_CCF035: FLdRfVar var_114
  loc_CCF038: LitStr " AND deta.CodiConc <= '"
  loc_CCF03B: FLdRfVar var_F0
  loc_CCF03E: CStrVarTmp
  loc_CCF03F: FStStrNoPop var_F4
  loc_CCF042: ConcatStr
  loc_CCF043: FStStrNoPop var_128
  loc_CCF046: LitStr "'"
  loc_CCF049: ConcatStr
  loc_CCF04A: CVarStr var_104
  loc_CCF04D: FLdRfVar var_D8
  loc_CCF050: CStrVarTmp
  loc_CCF051: FStStrNoPop var_DC
  loc_CCF054: LitStr vbNullString
  loc_CCF057: NeStr
  loc_CCF059: CVarBoolI2 var_B0
  loc_CCF05D: FLdRfVar var_124
  loc_CCF060: ImpAdCallFPR4  = IIf(, , )
  loc_CCF065: FLdRfVar var_124
  loc_CCF068: CStrVarTmp
  loc_CCF069: FStStr var_94
  loc_CCF06C: FFreeStr var_DC = "": var_F4 = ""
  loc_CCF075: FFreeAd var_C4 = ""
  loc_CCF07C: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_CCF08B: FLdRfVar var_C6
  loc_CCF08E: FLdPr Me
  loc_CCF091: VCallAd Control_ID_AnaliticoOpt
  loc_CCF094: FStAdFunc var_C4
  loc_CCF097: FLdPr var_C4
  loc_CCF09A:  = Me.Value
  loc_CCF09F: LitVarStr var_138, vbNullString
  loc_CCF0A4: FStVarCopyObj var_F0
  loc_CCF0A7: FLdRfVar var_F0
  loc_CCF0AA: LitVarStr var_C0, ", PeriBole, NumeBole"
  loc_CCF0AF: FStVarCopyObj var_D8
  loc_CCF0B2: FLdRfVar var_D8
  loc_CCF0B5: FLdI2 var_C6
  loc_CCF0B8: CVarBoolI2 var_B0
  loc_CCF0BC: FLdRfVar var_104
  loc_CCF0BF: ImpAdCallFPR4  = IIf(, , )
  loc_CCF0C4: FLdRfVar var_104
  loc_CCF0C7: CStrVarTmp
  loc_CCF0C8: FStStr var_98
  loc_CCF0CB: FFree1Ad var_C4
  loc_CCF0CE: FFreeVar var_B0 = "": var_D8 = "": var_F0 = ""
  loc_CCF0D9: FLdRfVar var_DC
  loc_CCF0DC: FLdPr Me
  loc_CCF0DF: VCallAd Control_ID_ExCodiConcTxt
  loc_CCF0E2: FStAdFunc var_C4
  loc_CCF0E5: FLdPr var_C4
  loc_CCF0E8:  = Me.Text
  loc_CCF0ED: FLdRfVar var_F4
  loc_CCF0F0: FLdPr Me
  loc_CCF0F3: VCallAd Control_ID_ExCodiConcTxt
  loc_CCF0F6: FStAdFunc var_E0
  loc_CCF0F9: FLdPr var_E0
  loc_CCF0FC:  = Me.Text
  loc_CCF101: LitVarStr var_C0, vbNullString
  loc_CCF106: FStVarCopyObj var_F0
  loc_CCF109: FLdRfVar var_F0
  loc_CCF10C: LitStr " AND deta.CodiConc NOT IN ("
  loc_CCF10F: ILdRf var_F4
  loc_CCF112: ConcatStr
  loc_CCF113: FStStrNoPop var_128
  loc_CCF116: LitStr ")"
  loc_CCF119: ConcatStr
  loc_CCF11A: CVarStr var_D8
  loc_CCF11D: ILdRf var_DC
  loc_CCF120: LitStr vbNullString
  loc_CCF123: NeStr
  loc_CCF125: CVarBoolI2 var_B0
  loc_CCF129: FLdRfVar var_104
  loc_CCF12C: ImpAdCallFPR4  = IIf(, , )
  loc_CCF131: FLdRfVar var_104
  loc_CCF134: CStrVarTmp
  loc_CCF135: FStStr var_A0
  loc_CCF138: FFreeStr var_DC = "": var_F4 = ""
  loc_CCF141: FFreeAd var_C4 = ""
  loc_CCF148: FFreeVar var_B0 = "": var_D8 = "": var_F0 = ""
  loc_CCF153: FLdRfVar var_C6
  loc_CCF156: FLdPr Me
  loc_CCF159: VCallAd Control_ID_CodiConcOpt
  loc_CCF15C: FStAdFunc var_C4
  loc_CCF15F: FLdPr var_C4
  loc_CCF162:  = Me.Value
  loc_CCF167: FLdI2 var_C6
  loc_CCF16A: FFree1Ad var_C4
  loc_CCF16D: BranchF loc_CCF179
  loc_CCF170: LitStr "CodiConc, FeenAcpa"
  loc_CCF173: FStStrCopy var_9C
  loc_CCF176: Branch loc_CCF19C
  loc_CCF179: FLdRfVar var_C6
  loc_CCF17C: FLdPr Me
  loc_CCF17F: VCallAd Control_ID_DetaConcOpt
  loc_CCF182: FStAdFunc var_C4
  loc_CCF185: FLdPr var_C4
  loc_CCF188:  = Me.Value
  loc_CCF18D: FLdI2 var_C6
  loc_CCF190: FFree1Ad var_C4
  loc_CCF193: BranchF loc_CCF19C
  loc_CCF196: LitStr "DetaConc, FeenAcpa"
  loc_CCF199: FStStrCopy var_9C
  loc_CCF19C: FLdPr Me
  loc_CCF19F: MemLdRfVar from_stack_1.global_76
  loc_CCF1A2: NewIfNullAd
  loc_CCF1A5: FStAd var_13C 
  loc_CCF1A9: FLdPr Me
  loc_CCF1AC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF1AF: FStAdFunc var_C4
  loc_CCF1B2: FLdPr var_C4
  loc_CCF1B5: LateIdLdVar var_D8 DispID_15 0
  loc_CCF1BC: PopAd
  loc_CCF1BE: FLdPr Me
  loc_CCF1C1: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF1C4: FStAdFunc var_E0
  loc_CCF1C7: FLdPr var_E0
  loc_CCF1CA: LateIdLdVar var_114 DispID_15 0
  loc_CCF1D1: PopAd
  loc_CCF1D3: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_CCF1D6: LitStr " CREATE TEMPORARY TABLE deta"
  loc_CCF1D9: ConcatStr
  loc_CCF1DA: FStStrNoPop var_DC
  loc_CCF1DD: LitStr " SELECT detapago.CodiConc, sum(CapiDepa-DecaDepa-ExenDepa-CrafDepa) as TotaDepa, "
  loc_CCF1E0: ConcatStr
  loc_CCF1E1: FStStrNoPop var_F4
  loc_CCF1E4: LitStr " detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
  loc_CCF1E7: ConcatStr
  loc_CCF1E8: FStStrNoPop var_128
  loc_CCF1EB: LitStr " FROM detapago"
  loc_CCF1EE: ConcatStr
  loc_CCF1EF: FStStrNoPop var_140
  loc_CCF1F2: LitStr " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCF1F5: ConcatStr
  loc_CCF1F6: FStStrNoPop var_144
  loc_CCF1F9: LitI4 1
  loc_CCF1FE: LitI4 1
  loc_CCF203: LitVarStr var_B0, "yyyy-mm-dd"
  loc_CCF208: FStVarCopyObj var_104
  loc_CCF20B: FLdRfVar var_104
  loc_CCF20E: FLdRfVar var_D8
  loc_CCF211: CStrVarTmp
  loc_CCF212: CVarStr var_F0
  loc_CCF215: ImpAdCallI2 Format$(, )
  loc_CCF21A: FStStrNoPop var_148
  loc_CCF21D: ConcatStr
  loc_CCF21E: FStStrNoPop var_14C
  loc_CCF221: LitStr "' AND '"
  loc_CCF224: ConcatStr
  loc_CCF225: FStStrNoPop var_160
  loc_CCF228: LitI4 1
  loc_CCF22D: LitI4 1
  loc_CCF232: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CCF237: FStVarCopyObj var_15C
  loc_CCF23A: FLdRfVar var_15C
  loc_CCF23D: FLdRfVar var_114
  loc_CCF240: CStrVarTmp
  loc_CCF241: CVarStr var_124
  loc_CCF244: ImpAdCallI2 Format$(, )
  loc_CCF249: FStStrNoPop var_164
  loc_CCF24C: ConcatStr
  loc_CCF24D: FStStrNoPop var_168
  loc_CCF250: LitStr "'"
  loc_CCF253: ConcatStr
  loc_CCF254: FStStrNoPop var_16C
  loc_CCF257: ILdRf var_88
  loc_CCF25A: ConcatStr
  loc_CCF25B: FStStrNoPop var_170
  loc_CCF25E: ILdRf var_8C
  loc_CCF261: ConcatStr
  loc_CCF262: FStStrNoPop var_174
  loc_CCF265: LitStr " GROUP BY detapago.CodiConc"
  loc_CCF268: ConcatStr
  loc_CCF269: FStStrNoPop var_178
  loc_CCF26C: ILdRf var_98
  loc_CCF26F: ConcatStr
  loc_CCF270: FStStrNoPop var_17C
  loc_CCF273: LitStr ";"
  loc_CCF276: ConcatStr
  loc_CCF277: FStStrNoPop var_180
  loc_CCF27A: FLdPr var_13C
  loc_CCF27D: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CCF282: FFreeStr var_DC = "": var_F4 = "": var_128 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_CCF2A5: FFreeAd var_C4 = ""
  loc_CCF2AC: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_124 = ""
  loc_CCF2BB: LitStr "Municipalidad de Guaymallén"
  loc_CCF2BE: LitStr "Municipalidad de Rivadavia"
  loc_CCF2C1: EqStr
  loc_CCF2C3: LitStr "Municipalidad de Guaymallén"
  loc_CCF2C6: LitStr "Municipalidad de Tunuyán"
  loc_CCF2C9: EqStr
  loc_CCF2CB: OrI4
  loc_CCF2CC: BranchF loc_CCF88A
  loc_CCF2CF: FLdPr Me
  loc_CCF2D2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF2D5: FStAdFunc var_E0
  loc_CCF2D8: FLdPr var_E0
  loc_CCF2DB: LateIdLdVar var_190 DispID_15 0
  loc_CCF2E2: PopAd
  loc_CCF2E4: FLdPr Me
  loc_CCF2E7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF2EA: FStAdFunc var_1E4
  loc_CCF2ED: FLdPr var_1E4
  loc_CCF2F0: LateIdLdVar var_1F4 DispID_15 0
  loc_CCF2F7: PopAd
  loc_CCF2F9: FLdPr Me
  loc_CCF2FC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF2FF: FStAdFunc var_38C
  loc_CCF302: FLdPr var_38C
  loc_CCF305: LateIdLdVar var_39C DispID_15 0
  loc_CCF30C: PopAd
  loc_CCF30E: FLdPr Me
  loc_CCF311: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF314: FStAdFunc var_410
  loc_CCF317: FLdPr var_410
  loc_CCF31A: LateIdLdVar var_420 DispID_15 0
  loc_CCF321: PopAd
  loc_CCF323: FLdPr Me
  loc_CCF326: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF329: FStAdFunc var_5D8
  loc_CCF32C: FLdPr var_5D8
  loc_CCF32F: LateIdLdVar var_5E8 DispID_15 0
  loc_CCF336: PopAd
  loc_CCF338: FLdPr Me
  loc_CCF33B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF33E: FStAdFunc var_65C
  loc_CCF341: FLdPr var_65C
  loc_CCF344: LateIdLdVar var_66C DispID_15 0
  loc_CCF34B: PopAd
  loc_CCF34D: FLdPr Me
  loc_CCF350: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF353: FStAdFunc var_824
  loc_CCF356: FLdPr var_824
  loc_CCF359: LateIdLdVar var_834 DispID_15 0
  loc_CCF360: PopAd
  loc_CCF362: FLdPr Me
  loc_CCF365: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF368: FStAdFunc var_8A8
  loc_CCF36B: FLdPr var_8A8
  loc_CCF36E: LateIdLdVar var_8B8 DispID_15 0
  loc_CCF375: PopAd
  loc_CCF377: FLdPr Me
  loc_CCF37A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF37D: FStAdFunc var_9F0
  loc_CCF380: FLdPr var_9F0
  loc_CCF383: LateIdLdVar var_A00 DispID_15 0
  loc_CCF38A: PopAd
  loc_CCF38C: FLdPr Me
  loc_CCF38F: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF392: FStAdFunc var_A74
  loc_CCF395: FLdPr var_A74
  loc_CCF398: LateIdLdVar var_A84 DispID_15 0
  loc_CCF39F: PopAd
  loc_CCF3A1: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCF3A4: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF3A7: ConcatStr
  loc_CCF3A8: CVarStr var_114
  loc_CCF3AB: FLdPr Me
  loc_CCF3AE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF3B1: FStAdFunc var_C4
  loc_CCF3B4: FLdPr var_C4
  loc_CCF3B7: LateIdLdVar var_D8 DispID_15 0
  loc_CCF3BE: CStrVarTmp
  loc_CCF3BF: CVarStr var_F0
  loc_CCF3C2: FLdRfVar var_104
  loc_CCF3C5: ImpAdCallFPR4  = Year()
  loc_CCF3CA: FLdRfVar var_104
  loc_CCF3CD: ConcatVar var_124
  loc_CCF3D1: LitVarStr var_B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCF3D6: ConcatVar var_15C
  loc_CCF3DA: LitI4 1
  loc_CCF3DF: LitI4 1
  loc_CCF3E4: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CCF3E9: FStVarCopyObj var_1B0
  loc_CCF3EC: FLdRfVar var_1B0
  loc_CCF3EF: FLdRfVar var_190
  loc_CCF3F2: CStrVarTmp
  loc_CCF3F3: CVarStr var_1A0
  loc_CCF3F6: ImpAdCallI2 Format$(, )
  loc_CCF3FB: CVarStr var_1C0
  loc_CCF3FE: ConcatVar var_1D0
  loc_CCF402: LitVarStr var_138, "' AND '"
  loc_CCF407: ConcatVar var_1E0
  loc_CCF40B: LitI4 1
  loc_CCF410: LitI4 1
  loc_CCF415: LitVarStr var_214, "yyyy-mm-dd"
  loc_CCF41A: FStVarCopyObj var_224
  loc_CCF41D: FLdRfVar var_224
  loc_CCF420: FLdRfVar var_1F4
  loc_CCF423: CStrVarTmp
  loc_CCF424: CVarStr var_204
  loc_CCF427: ImpAdCallI2 Format$(, )
  loc_CCF42C: CVarStr var_234
  loc_CCF42F: ConcatVar var_244
  loc_CCF433: LitVarStr var_254, "'"
  loc_CCF438: ConcatVar var_264
  loc_CCF43C: ILdRf var_88
  loc_CCF43F: CVarStr var_274
  loc_CCF442: ConcatVar var_284
  loc_CCF446: ILdRf var_8C
  loc_CCF449: CVarStr var_294
  loc_CCF44C: ConcatVar var_2A4
  loc_CCF450: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CCF455: ConcatVar var_2C4
  loc_CCF459: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCF45E: ConcatVar var_2E4
  loc_CCF462: LitVarStr var_2F4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF467: ConcatVar var_304
  loc_CCF46B: FLdPr Me
  loc_CCF46E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF471: FStAdFunc var_308
  loc_CCF474: FLdPr var_308
  loc_CCF477: LateIdLdVar var_318 DispID_15 0
  loc_CCF47E: CStrVarTmp
  loc_CCF47F: CVarStr var_328
  loc_CCF482: FLdRfVar var_338
  loc_CCF485: ImpAdCallFPR4  = Year()
  loc_CCF48A: FLdRfVar var_338
  loc_CCF48D: ConcatVar var_348
  loc_CCF491: LitVarStr var_358, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCF496: ConcatVar var_368
  loc_CCF49A: LitVarStr var_378, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCF49F: ConcatVar var_388
  loc_CCF4A3: LitI4 1
  loc_CCF4A8: LitI4 1
  loc_CCF4AD: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_CCF4B2: FStVarCopyObj var_3CC
  loc_CCF4B5: FLdRfVar var_3CC
  loc_CCF4B8: FLdRfVar var_39C
  loc_CCF4BB: CStrVarTmp
  loc_CCF4BC: CVarStr var_3AC
  loc_CCF4BF: ImpAdCallI2 Format$(, )
  loc_CCF4C4: CVarStr var_3DC
  loc_CCF4C7: ConcatVar var_3EC
  loc_CCF4CB: LitVarStr var_3FC, "' AND '"
  loc_CCF4D0: ConcatVar var_40C
  loc_CCF4D4: LitI4 1
  loc_CCF4D9: LitI4 1
  loc_CCF4DE: LitVarStr var_440, "yyyy-mm-dd"
  loc_CCF4E3: FStVarCopyObj var_450
  loc_CCF4E6: FLdRfVar var_450
  loc_CCF4E9: FLdRfVar var_420
  loc_CCF4EC: CStrVarTmp
  loc_CCF4ED: CVarStr var_430
  loc_CCF4F0: ImpAdCallI2 Format$(, )
  loc_CCF4F5: CVarStr var_460
  loc_CCF4F8: ConcatVar var_470
  loc_CCF4FC: LitVarStr var_480, "'"
  loc_CCF501: ConcatVar var_490
  loc_CCF505: ILdRf var_88
  loc_CCF508: CVarStr var_4A0
  loc_CCF50B: ConcatVar var_4B0
  loc_CCF50F: ILdRf var_8C
  loc_CCF512: CVarStr var_4C0
  loc_CCF515: ConcatVar var_4D0
  loc_CCF519: LitVarStr var_4E0, " GROUP BY TRUE;"
  loc_CCF51E: ConcatVar var_4F0
  loc_CCF522: LitVarStr var_500, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CCF527: ConcatVar var_510
  loc_CCF52B: LitVarStr var_520, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCF530: ConcatVar var_530
  loc_CCF534: LitVarStr var_540, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF539: ConcatVar var_550
  loc_CCF53D: FLdPr Me
  loc_CCF540: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF543: FStAdFunc var_554
  loc_CCF546: FLdPr var_554
  loc_CCF549: LateIdLdVar var_564 DispID_15 0
  loc_CCF550: CStrVarTmp
  loc_CCF551: CVarStr var_574
  loc_CCF554: FLdRfVar var_584
  loc_CCF557: ImpAdCallFPR4  = Year()
  loc_CCF55C: FLdRfVar var_584
  loc_CCF55F: ConcatVar var_594
  loc_CCF563: LitVarStr var_5A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCF568: ConcatVar var_5B4
  loc_CCF56C: LitVarStr var_5C4, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCF571: ConcatVar var_5D4
  loc_CCF575: LitI4 1
  loc_CCF57A: LitI4 1
  loc_CCF57F: LitVarStr var_608, "yyyy-mm-dd"
  loc_CCF584: FStVarCopyObj var_618
  loc_CCF587: FLdRfVar var_618
  loc_CCF58A: FLdRfVar var_5E8
  loc_CCF58D: CStrVarTmp
  loc_CCF58E: CVarStr var_5F8
  loc_CCF591: ImpAdCallI2 Format$(, )
  loc_CCF596: CVarStr var_628
  loc_CCF599: ConcatVar var_638
  loc_CCF59D: LitVarStr var_648, "' AND '"
  loc_CCF5A2: ConcatVar var_658
  loc_CCF5A6: LitI4 1
  loc_CCF5AB: LitI4 1
  loc_CCF5B0: LitVarStr var_68C, "yyyy-mm-dd"
  loc_CCF5B5: FStVarCopyObj var_69C
  loc_CCF5B8: FLdRfVar var_69C
  loc_CCF5BB: FLdRfVar var_66C
  loc_CCF5BE: CStrVarTmp
  loc_CCF5BF: CVarStr var_67C
  loc_CCF5C2: ImpAdCallI2 Format$(, )
  loc_CCF5C7: CVarStr var_6AC
  loc_CCF5CA: ConcatVar var_6BC
  loc_CCF5CE: LitVarStr var_6CC, "'"
  loc_CCF5D3: ConcatVar var_6DC
  loc_CCF5D7: ILdRf var_88
  loc_CCF5DA: CVarStr var_6EC
  loc_CCF5DD: ConcatVar var_6FC
  loc_CCF5E1: ILdRf var_8C
  loc_CCF5E4: CVarStr var_70C
  loc_CCF5E7: ConcatVar var_71C
  loc_CCF5EB: LitVarStr var_72C, " GROUP BY TRUE;"
  loc_CCF5F0: ConcatVar var_73C
  loc_CCF5F4: LitVarStr var_74C, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CCF5F9: ConcatVar var_75C
  loc_CCF5FD: LitVarStr var_76C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCF602: ConcatVar var_77C
  loc_CCF606: LitVarStr var_78C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF60B: ConcatVar var_79C
  loc_CCF60F: FLdPr Me
  loc_CCF612: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF615: FStAdFunc var_7A0
  loc_CCF618: FLdPr var_7A0
  loc_CCF61B: LateIdLdVar var_7B0 DispID_15 0
  loc_CCF622: CStrVarTmp
  loc_CCF623: CVarStr var_7C0
  loc_CCF626: FLdRfVar var_7D0
  loc_CCF629: ImpAdCallFPR4  = Year()
  loc_CCF62E: FLdRfVar var_7D0
  loc_CCF631: ConcatVar var_7E0
  loc_CCF635: LitVarStr var_7F0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCF63A: ConcatVar var_800
  loc_CCF63E: LitVarStr var_810, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCF643: ConcatVar var_820
  loc_CCF647: LitI4 1
  loc_CCF64C: LitI4 1
  loc_CCF651: LitVarStr var_854, "yyyy-mm-dd"
  loc_CCF656: FStVarCopyObj var_864
  loc_CCF659: FLdRfVar var_864
  loc_CCF65C: FLdRfVar var_834
  loc_CCF65F: CStrVarTmp
  loc_CCF660: CVarStr var_844
  loc_CCF663: ImpAdCallI2 Format$(, )
  loc_CCF668: CVarStr var_874
  loc_CCF66B: ConcatVar var_884
  loc_CCF66F: LitVarStr var_894, "' AND '"
  loc_CCF674: ConcatVar var_8A4
  loc_CCF678: LitI4 1
  loc_CCF67D: LitI4 1
  loc_CCF682: LitVarStr var_8D8, "yyyy-mm-dd"
  loc_CCF687: FStVarCopyObj var_8E8
  loc_CCF68A: FLdRfVar var_8E8
  loc_CCF68D: FLdRfVar var_8B8
  loc_CCF690: CStrVarTmp
  loc_CCF691: CVarStr var_8C8
  loc_CCF694: ImpAdCallI2 Format$(, )
  loc_CCF699: CVarStr var_8F8
  loc_CCF69C: ConcatVar var_908
  loc_CCF6A0: LitVarStr var_918, "'"
  loc_CCF6A5: ConcatVar var_928
  loc_CCF6A9: ILdRf var_88
  loc_CCF6AC: CVarStr var_938
  loc_CCF6AF: ConcatVar var_948
  loc_CCF6B3: ILdRf var_8C
  loc_CCF6B6: CVarStr var_958
  loc_CCF6B9: ConcatVar var_968
  loc_CCF6BD: LitVarStr var_978, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF6C2: ConcatVar var_988
  loc_CCF6C6: FLdPr Me
  loc_CCF6C9: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF6CC: FStAdFunc var_98C
  loc_CCF6CF: FLdPr var_98C
  loc_CCF6D2: LateIdLdVar var_99C DispID_15 0
  loc_CCF6D9: CStrVarTmp
  loc_CCF6DA: CVarStr var_9AC
  loc_CCF6DD: FLdRfVar var_9BC
  loc_CCF6E0: ImpAdCallFPR4  = Year()
  loc_CCF6E5: FLdRfVar var_9BC
  loc_CCF6E8: ConcatVar var_9CC
  loc_CCF6EC: LitVarStr var_9DC, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCF6F1: ConcatVar var_9EC
  loc_CCF6F5: LitI4 1
  loc_CCF6FA: LitI4 1
  loc_CCF6FF: LitVarStr var_A20, "yyyy-mm-dd"
  loc_CCF704: FStVarCopyObj var_A30
  loc_CCF707: FLdRfVar var_A30
  loc_CCF70A: FLdRfVar var_A00
  loc_CCF70D: CStrVarTmp
  loc_CCF70E: CVarStr var_A10
  loc_CCF711: ImpAdCallI2 Format$(, )
  loc_CCF716: CVarStr var_A40
  loc_CCF719: ConcatVar var_A50
  loc_CCF71D: LitVarStr var_A60, "' AND '"
  loc_CCF722: ConcatVar var_A70
  loc_CCF726: LitI4 1
  loc_CCF72B: LitI4 1
  loc_CCF730: LitVarStr var_AA4, "yyyy-mm-dd"
  loc_CCF735: FStVarCopyObj var_AB4
  loc_CCF738: FLdRfVar var_AB4
  loc_CCF73B: FLdRfVar var_A84
  loc_CCF73E: CStrVarTmp
  loc_CCF73F: CVarStr var_A94
  loc_CCF742: ImpAdCallI2 Format$(, )
  loc_CCF747: CVarStr var_AC4
  loc_CCF74A: ConcatVar var_AD4
  loc_CCF74E: LitVarStr var_AE4, "'"
  loc_CCF753: ConcatVar var_AF4
  loc_CCF757: ILdRf var_88
  loc_CCF75A: CVarStr var_B04
  loc_CCF75D: ConcatVar var_B14
  loc_CCF761: ILdRf var_8C
  loc_CCF764: CVarStr var_B24
  loc_CCF767: ConcatVar var_B34
  loc_CCF76B: LitVarStr var_B44, " GROUP BY TRUE;"
  loc_CCF770: ConcatVar var_B54
  loc_CCF774: CStrVarVal var_DC
  loc_CCF778: FLdPr var_13C
  loc_CCF77B: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CCF780: FFree1Str var_DC
  loc_CCF783: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = "": var_8A8 = "": var_98C = "": var_9F0 = ""
  loc_CCF7A4: FFreeVar var_968 = "": var_99C = "": var_9AC = "": var_988 = "": var_9BC = "": var_9CC = "": var_A00 = "": var_A10 = "": var_A30 = "": var_9EC = "": var_A40 = "": var_A50 = "": var_A84 = "": var_A94 = "": var_AB4 = "": var_A70 = "": var_AC4 = "": var_AD4 = "": var_AF4 = "": var_B14 = "": var_B34 = "": var_B54 = "": var_69C = "": var_658 = "": var_6AC = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_77C = "": var_7B0 = "": var_7C0 = "": var_79C = "": var_7D0 = "": var_7E0 = "": var_800 = "": var_834 = "": var_844 = "": var_864 = "": var_820 = "": var_874 = "": var_884 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_8A4 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_388 = "": var_3DC = "": var_3EC = "": var_420 = "": var_430 = "": var_450 = "": var_40C = "": var_460 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_564 = "": var_574 = "": var_550 = "": var_584 = "": var_594 = "": var_5B4 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_5D4 = "": var_628 = "": var_638 = "": var_66C = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_318 = "": var_328 = "": var_304 = "": var_338 = "": var_348 = "": var_368 = "": var_39C = ""
  loc_CCF887: Branch loc_CD1211
  loc_CCF88A: LitStr "Municipalidad de Guaymallén"
  loc_CCF88D: LitStr "Municipalidad de General Alvear"
  loc_CCF890: EqStr
  loc_CCF892: BranchF loc_CCFE50
  loc_CCF895: FLdPr Me
  loc_CCF898: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF89B: FStAdFunc var_E0
  loc_CCF89E: FLdPr var_E0
  loc_CCF8A1: LateIdLdVar var_190 DispID_15 0
  loc_CCF8A8: PopAd
  loc_CCF8AA: FLdPr Me
  loc_CCF8AD: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF8B0: FStAdFunc var_1E4
  loc_CCF8B3: FLdPr var_1E4
  loc_CCF8B6: LateIdLdVar var_1F4 DispID_15 0
  loc_CCF8BD: PopAd
  loc_CCF8BF: FLdPr Me
  loc_CCF8C2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF8C5: FStAdFunc var_38C
  loc_CCF8C8: FLdPr var_38C
  loc_CCF8CB: LateIdLdVar var_39C DispID_15 0
  loc_CCF8D2: PopAd
  loc_CCF8D4: FLdPr Me
  loc_CCF8D7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF8DA: FStAdFunc var_410
  loc_CCF8DD: FLdPr var_410
  loc_CCF8E0: LateIdLdVar var_420 DispID_15 0
  loc_CCF8E7: PopAd
  loc_CCF8E9: FLdPr Me
  loc_CCF8EC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF8EF: FStAdFunc var_5D8
  loc_CCF8F2: FLdPr var_5D8
  loc_CCF8F5: LateIdLdVar var_5E8 DispID_15 0
  loc_CCF8FC: PopAd
  loc_CCF8FE: FLdPr Me
  loc_CCF901: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF904: FStAdFunc var_65C
  loc_CCF907: FLdPr var_65C
  loc_CCF90A: LateIdLdVar var_66C DispID_15 0
  loc_CCF911: PopAd
  loc_CCF913: FLdPr Me
  loc_CCF916: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF919: FStAdFunc var_824
  loc_CCF91C: FLdPr var_824
  loc_CCF91F: LateIdLdVar var_834 DispID_15 0
  loc_CCF926: PopAd
  loc_CCF928: FLdPr Me
  loc_CCF92B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF92E: FStAdFunc var_8A8
  loc_CCF931: FLdPr var_8A8
  loc_CCF934: LateIdLdVar var_8B8 DispID_15 0
  loc_CCF93B: PopAd
  loc_CCF93D: FLdPr Me
  loc_CCF940: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF943: FStAdFunc var_9F0
  loc_CCF946: FLdPr var_9F0
  loc_CCF949: LateIdLdVar var_A00 DispID_15 0
  loc_CCF950: PopAd
  loc_CCF952: FLdPr Me
  loc_CCF955: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCF958: FStAdFunc var_A74
  loc_CCF95B: FLdPr var_A74
  loc_CCF95E: LateIdLdVar var_A84 DispID_15 0
  loc_CCF965: PopAd
  loc_CCF967: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCF96A: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCF96D: ConcatStr
  loc_CCF96E: CVarStr var_114
  loc_CCF971: FLdPr Me
  loc_CCF974: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCF977: FStAdFunc var_C4
  loc_CCF97A: FLdPr var_C4
  loc_CCF97D: LateIdLdVar var_D8 DispID_15 0
  loc_CCF984: CStrVarTmp
  loc_CCF985: CVarStr var_F0
  loc_CCF988: FLdRfVar var_104
  loc_CCF98B: ImpAdCallFPR4  = Year()
  loc_CCF990: FLdRfVar var_104
  loc_CCF993: ConcatVar var_124
  loc_CCF997: LitVarStr var_B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCF99C: ConcatVar var_15C
  loc_CCF9A0: LitI4 1
  loc_CCF9A5: LitI4 1
  loc_CCF9AA: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CCF9AF: FStVarCopyObj var_1B0
  loc_CCF9B2: FLdRfVar var_1B0
  loc_CCF9B5: FLdRfVar var_190
  loc_CCF9B8: CStrVarTmp
  loc_CCF9B9: CVarStr var_1A0
  loc_CCF9BC: ImpAdCallI2 Format$(, )
  loc_CCF9C1: CVarStr var_1C0
  loc_CCF9C4: ConcatVar var_1D0
  loc_CCF9C8: LitVarStr var_138, "' AND '"
  loc_CCF9CD: ConcatVar var_1E0
  loc_CCF9D1: LitI4 1
  loc_CCF9D6: LitI4 1
  loc_CCF9DB: LitVarStr var_214, "yyyy-mm-dd"
  loc_CCF9E0: FStVarCopyObj var_224
  loc_CCF9E3: FLdRfVar var_224
  loc_CCF9E6: FLdRfVar var_1F4
  loc_CCF9E9: CStrVarTmp
  loc_CCF9EA: CVarStr var_204
  loc_CCF9ED: ImpAdCallI2 Format$(, )
  loc_CCF9F2: CVarStr var_234
  loc_CCF9F5: ConcatVar var_244
  loc_CCF9F9: LitVarStr var_254, "'"
  loc_CCF9FE: ConcatVar var_264
  loc_CCFA02: ILdRf var_88
  loc_CCFA05: CVarStr var_274
  loc_CCFA08: ConcatVar var_284
  loc_CCFA0C: ILdRf var_8C
  loc_CCFA0F: CVarStr var_294
  loc_CCFA12: ConcatVar var_2A4
  loc_CCFA16: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CCFA1B: ConcatVar var_2C4
  loc_CCFA1F: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+HoreBoap+HoofBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCFA24: ConcatVar var_2E4
  loc_CCFA28: LitVarStr var_2F4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFA2D: ConcatVar var_304
  loc_CCFA31: FLdPr Me
  loc_CCFA34: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFA37: FStAdFunc var_308
  loc_CCFA3A: FLdPr var_308
  loc_CCFA3D: LateIdLdVar var_318 DispID_15 0
  loc_CCFA44: CStrVarTmp
  loc_CCFA45: CVarStr var_328
  loc_CCFA48: FLdRfVar var_338
  loc_CCFA4B: ImpAdCallFPR4  = Year()
  loc_CCFA50: FLdRfVar var_338
  loc_CCFA53: ConcatVar var_348
  loc_CCFA57: LitVarStr var_358, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCFA5C: ConcatVar var_368
  loc_CCFA60: LitVarStr var_378, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCFA65: ConcatVar var_388
  loc_CCFA69: LitI4 1
  loc_CCFA6E: LitI4 1
  loc_CCFA73: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_CCFA78: FStVarCopyObj var_3CC
  loc_CCFA7B: FLdRfVar var_3CC
  loc_CCFA7E: FLdRfVar var_39C
  loc_CCFA81: CStrVarTmp
  loc_CCFA82: CVarStr var_3AC
  loc_CCFA85: ImpAdCallI2 Format$(, )
  loc_CCFA8A: CVarStr var_3DC
  loc_CCFA8D: ConcatVar var_3EC
  loc_CCFA91: LitVarStr var_3FC, "' AND '"
  loc_CCFA96: ConcatVar var_40C
  loc_CCFA9A: LitI4 1
  loc_CCFA9F: LitI4 1
  loc_CCFAA4: LitVarStr var_440, "yyyy-mm-dd"
  loc_CCFAA9: FStVarCopyObj var_450
  loc_CCFAAC: FLdRfVar var_450
  loc_CCFAAF: FLdRfVar var_420
  loc_CCFAB2: CStrVarTmp
  loc_CCFAB3: CVarStr var_430
  loc_CCFAB6: ImpAdCallI2 Format$(, )
  loc_CCFABB: CVarStr var_460
  loc_CCFABE: ConcatVar var_470
  loc_CCFAC2: LitVarStr var_480, "'"
  loc_CCFAC7: ConcatVar var_490
  loc_CCFACB: ILdRf var_88
  loc_CCFACE: CVarStr var_4A0
  loc_CCFAD1: ConcatVar var_4B0
  loc_CCFAD5: ILdRf var_8C
  loc_CCFAD8: CVarStr var_4C0
  loc_CCFADB: ConcatVar var_4D0
  loc_CCFADF: LitVarStr var_4E0, " GROUP BY TRUE;"
  loc_CCFAE4: ConcatVar var_4F0
  loc_CCFAE8: LitVarStr var_500, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(MoreBoap+MoofBoap) as TotaDepa, "
  loc_CCFAED: ConcatVar var_510
  loc_CCFAF1: LitVarStr var_520, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCFAF6: ConcatVar var_530
  loc_CCFAFA: LitVarStr var_540, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFAFF: ConcatVar var_550
  loc_CCFB03: FLdPr Me
  loc_CCFB06: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFB09: FStAdFunc var_554
  loc_CCFB0C: FLdPr var_554
  loc_CCFB0F: LateIdLdVar var_564 DispID_15 0
  loc_CCFB16: CStrVarTmp
  loc_CCFB17: CVarStr var_574
  loc_CCFB1A: FLdRfVar var_584
  loc_CCFB1D: ImpAdCallFPR4  = Year()
  loc_CCFB22: FLdRfVar var_584
  loc_CCFB25: ConcatVar var_594
  loc_CCFB29: LitVarStr var_5A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCFB2E: ConcatVar var_5B4
  loc_CCFB32: LitVarStr var_5C4, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCFB37: ConcatVar var_5D4
  loc_CCFB3B: LitI4 1
  loc_CCFB40: LitI4 1
  loc_CCFB45: LitVarStr var_608, "yyyy-mm-dd"
  loc_CCFB4A: FStVarCopyObj var_618
  loc_CCFB4D: FLdRfVar var_618
  loc_CCFB50: FLdRfVar var_5E8
  loc_CCFB53: CStrVarTmp
  loc_CCFB54: CVarStr var_5F8
  loc_CCFB57: ImpAdCallI2 Format$(, )
  loc_CCFB5C: CVarStr var_628
  loc_CCFB5F: ConcatVar var_638
  loc_CCFB63: LitVarStr var_648, "' AND '"
  loc_CCFB68: ConcatVar var_658
  loc_CCFB6C: LitI4 1
  loc_CCFB71: LitI4 1
  loc_CCFB76: LitVarStr var_68C, "yyyy-mm-dd"
  loc_CCFB7B: FStVarCopyObj var_69C
  loc_CCFB7E: FLdRfVar var_69C
  loc_CCFB81: FLdRfVar var_66C
  loc_CCFB84: CStrVarTmp
  loc_CCFB85: CVarStr var_67C
  loc_CCFB88: ImpAdCallI2 Format$(, )
  loc_CCFB8D: CVarStr var_6AC
  loc_CCFB90: ConcatVar var_6BC
  loc_CCFB94: LitVarStr var_6CC, "'"
  loc_CCFB99: ConcatVar var_6DC
  loc_CCFB9D: ILdRf var_88
  loc_CCFBA0: CVarStr var_6EC
  loc_CCFBA3: ConcatVar var_6FC
  loc_CCFBA7: ILdRf var_8C
  loc_CCFBAA: CVarStr var_70C
  loc_CCFBAD: ConcatVar var_71C
  loc_CCFBB1: LitVarStr var_72C, " GROUP BY TRUE;"
  loc_CCFBB6: ConcatVar var_73C
  loc_CCFBBA: LitVarStr var_74C, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CCFBBF: ConcatVar var_75C
  loc_CCFBC3: LitVarStr var_76C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCFBC8: ConcatVar var_77C
  loc_CCFBCC: LitVarStr var_78C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFBD1: ConcatVar var_79C
  loc_CCFBD5: FLdPr Me
  loc_CCFBD8: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFBDB: FStAdFunc var_7A0
  loc_CCFBDE: FLdPr var_7A0
  loc_CCFBE1: LateIdLdVar var_7B0 DispID_15 0
  loc_CCFBE8: CStrVarTmp
  loc_CCFBE9: CVarStr var_7C0
  loc_CCFBEC: FLdRfVar var_7D0
  loc_CCFBEF: ImpAdCallFPR4  = Year()
  loc_CCFBF4: FLdRfVar var_7D0
  loc_CCFBF7: ConcatVar var_7E0
  loc_CCFBFB: LitVarStr var_7F0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CCFC00: ConcatVar var_800
  loc_CCFC04: LitVarStr var_810, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CCFC09: ConcatVar var_820
  loc_CCFC0D: LitI4 1
  loc_CCFC12: LitI4 1
  loc_CCFC17: LitVarStr var_854, "yyyy-mm-dd"
  loc_CCFC1C: FStVarCopyObj var_864
  loc_CCFC1F: FLdRfVar var_864
  loc_CCFC22: FLdRfVar var_834
  loc_CCFC25: CStrVarTmp
  loc_CCFC26: CVarStr var_844
  loc_CCFC29: ImpAdCallI2 Format$(, )
  loc_CCFC2E: CVarStr var_874
  loc_CCFC31: ConcatVar var_884
  loc_CCFC35: LitVarStr var_894, "' AND '"
  loc_CCFC3A: ConcatVar var_8A4
  loc_CCFC3E: LitI4 1
  loc_CCFC43: LitI4 1
  loc_CCFC48: LitVarStr var_8D8, "yyyy-mm-dd"
  loc_CCFC4D: FStVarCopyObj var_8E8
  loc_CCFC50: FLdRfVar var_8E8
  loc_CCFC53: FLdRfVar var_8B8
  loc_CCFC56: CStrVarTmp
  loc_CCFC57: CVarStr var_8C8
  loc_CCFC5A: ImpAdCallI2 Format$(, )
  loc_CCFC5F: CVarStr var_8F8
  loc_CCFC62: ConcatVar var_908
  loc_CCFC66: LitVarStr var_918, "'"
  loc_CCFC6B: ConcatVar var_928
  loc_CCFC6F: ILdRf var_88
  loc_CCFC72: CVarStr var_938
  loc_CCFC75: ConcatVar var_948
  loc_CCFC79: ILdRf var_8C
  loc_CCFC7C: CVarStr var_958
  loc_CCFC7F: ConcatVar var_968
  loc_CCFC83: LitVarStr var_978, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFC88: ConcatVar var_988
  loc_CCFC8C: FLdPr Me
  loc_CCFC8F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFC92: FStAdFunc var_98C
  loc_CCFC95: FLdPr var_98C
  loc_CCFC98: LateIdLdVar var_99C DispID_15 0
  loc_CCFC9F: CStrVarTmp
  loc_CCFCA0: CVarStr var_9AC
  loc_CCFCA3: FLdRfVar var_9BC
  loc_CCFCA6: ImpAdCallFPR4  = Year()
  loc_CCFCAB: FLdRfVar var_9BC
  loc_CCFCAE: ConcatVar var_9CC
  loc_CCFCB2: LitVarStr var_9DC, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCFCB7: ConcatVar var_9EC
  loc_CCFCBB: LitI4 1
  loc_CCFCC0: LitI4 1
  loc_CCFCC5: LitVarStr var_A20, "yyyy-mm-dd"
  loc_CCFCCA: FStVarCopyObj var_A30
  loc_CCFCCD: FLdRfVar var_A30
  loc_CCFCD0: FLdRfVar var_A00
  loc_CCFCD3: CStrVarTmp
  loc_CCFCD4: CVarStr var_A10
  loc_CCFCD7: ImpAdCallI2 Format$(, )
  loc_CCFCDC: CVarStr var_A40
  loc_CCFCDF: ConcatVar var_A50
  loc_CCFCE3: LitVarStr var_A60, "' AND '"
  loc_CCFCE8: ConcatVar var_A70
  loc_CCFCEC: LitI4 1
  loc_CCFCF1: LitI4 1
  loc_CCFCF6: LitVarStr var_AA4, "yyyy-mm-dd"
  loc_CCFCFB: FStVarCopyObj var_AB4
  loc_CCFCFE: FLdRfVar var_AB4
  loc_CCFD01: FLdRfVar var_A84
  loc_CCFD04: CStrVarTmp
  loc_CCFD05: CVarStr var_A94
  loc_CCFD08: ImpAdCallI2 Format$(, )
  loc_CCFD0D: CVarStr var_AC4
  loc_CCFD10: ConcatVar var_AD4
  loc_CCFD14: LitVarStr var_AE4, "'"
  loc_CCFD19: ConcatVar var_AF4
  loc_CCFD1D: ILdRf var_88
  loc_CCFD20: CVarStr var_B04
  loc_CCFD23: ConcatVar var_B14
  loc_CCFD27: ILdRf var_8C
  loc_CCFD2A: CVarStr var_B24
  loc_CCFD2D: ConcatVar var_B34
  loc_CCFD31: LitVarStr var_B44, " GROUP BY TRUE;"
  loc_CCFD36: ConcatVar var_B54
  loc_CCFD3A: CStrVarVal var_DC
  loc_CCFD3E: FLdPr var_13C
  loc_CCFD41: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CCFD46: FFree1Str var_DC
  loc_CCFD49: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = "": var_8A8 = "": var_98C = "": var_9F0 = ""
  loc_CCFD6A: FFreeVar var_968 = "": var_99C = "": var_9AC = "": var_988 = "": var_9BC = "": var_9CC = "": var_A00 = "": var_A10 = "": var_A30 = "": var_9EC = "": var_A40 = "": var_A50 = "": var_A84 = "": var_A94 = "": var_AB4 = "": var_A70 = "": var_AC4 = "": var_AD4 = "": var_AF4 = "": var_B14 = "": var_B34 = "": var_B54 = "": var_69C = "": var_658 = "": var_6AC = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_77C = "": var_7B0 = "": var_7C0 = "": var_79C = "": var_7D0 = "": var_7E0 = "": var_800 = "": var_834 = "": var_844 = "": var_864 = "": var_820 = "": var_874 = "": var_884 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_8A4 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_388 = "": var_3DC = "": var_3EC = "": var_420 = "": var_430 = "": var_450 = "": var_40C = "": var_460 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_564 = "": var_574 = "": var_550 = "": var_584 = "": var_594 = "": var_5B4 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_5D4 = "": var_628 = "": var_638 = "": var_66C = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_318 = "": var_328 = "": var_304 = "": var_338 = "": var_348 = "": var_368 = "": var_39C = ""
  loc_CCFE4D: Branch loc_CD1211
  loc_CCFE50: LitStr "Municipalidad de Guaymallén"
  loc_CCFE53: LitStr "Municipalidad de Guaymallén"
  loc_CCFE56: EqStr
  loc_CCFE58: BranchF loc_CD0416
  loc_CCFE5B: FLdPr Me
  loc_CCFE5E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFE61: FStAdFunc var_E0
  loc_CCFE64: FLdPr var_E0
  loc_CCFE67: LateIdLdVar var_190 DispID_15 0
  loc_CCFE6E: PopAd
  loc_CCFE70: FLdPr Me
  loc_CCFE73: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCFE76: FStAdFunc var_1E4
  loc_CCFE79: FLdPr var_1E4
  loc_CCFE7C: LateIdLdVar var_1F4 DispID_15 0
  loc_CCFE83: PopAd
  loc_CCFE85: FLdPr Me
  loc_CCFE88: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFE8B: FStAdFunc var_38C
  loc_CCFE8E: FLdPr var_38C
  loc_CCFE91: LateIdLdVar var_39C DispID_15 0
  loc_CCFE98: PopAd
  loc_CCFE9A: FLdPr Me
  loc_CCFE9D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCFEA0: FStAdFunc var_410
  loc_CCFEA3: FLdPr var_410
  loc_CCFEA6: LateIdLdVar var_420 DispID_15 0
  loc_CCFEAD: PopAd
  loc_CCFEAF: FLdPr Me
  loc_CCFEB2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFEB5: FStAdFunc var_5D8
  loc_CCFEB8: FLdPr var_5D8
  loc_CCFEBB: LateIdLdVar var_5E8 DispID_15 0
  loc_CCFEC2: PopAd
  loc_CCFEC4: FLdPr Me
  loc_CCFEC7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCFECA: FStAdFunc var_65C
  loc_CCFECD: FLdPr var_65C
  loc_CCFED0: LateIdLdVar var_66C DispID_15 0
  loc_CCFED7: PopAd
  loc_CCFED9: FLdPr Me
  loc_CCFEDC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFEDF: FStAdFunc var_824
  loc_CCFEE2: FLdPr var_824
  loc_CCFEE5: LateIdLdVar var_834 DispID_15 0
  loc_CCFEEC: PopAd
  loc_CCFEEE: FLdPr Me
  loc_CCFEF1: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCFEF4: FStAdFunc var_8A8
  loc_CCFEF7: FLdPr var_8A8
  loc_CCFEFA: LateIdLdVar var_8B8 DispID_15 0
  loc_CCFF01: PopAd
  loc_CCFF03: FLdPr Me
  loc_CCFF06: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFF09: FStAdFunc var_9F0
  loc_CCFF0C: FLdPr var_9F0
  loc_CCFF0F: LateIdLdVar var_A00 DispID_15 0
  loc_CCFF16: PopAd
  loc_CCFF18: FLdPr Me
  loc_CCFF1B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CCFF1E: FStAdFunc var_A74
  loc_CCFF21: FLdPr var_A74
  loc_CCFF24: LateIdLdVar var_A84 DispID_15 0
  loc_CCFF2B: PopAd
  loc_CCFF2D: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCFF30: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFF33: ConcatStr
  loc_CCFF34: CVarStr var_114
  loc_CCFF37: FLdPr Me
  loc_CCFF3A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFF3D: FStAdFunc var_C4
  loc_CCFF40: FLdPr var_C4
  loc_CCFF43: LateIdLdVar var_D8 DispID_15 0
  loc_CCFF4A: CStrVarTmp
  loc_CCFF4B: CVarStr var_F0
  loc_CCFF4E: FLdRfVar var_104
  loc_CCFF51: ImpAdCallFPR4  = Year()
  loc_CCFF56: FLdRfVar var_104
  loc_CCFF59: ConcatVar var_124
  loc_CCFF5D: LitVarStr var_B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CCFF62: ConcatVar var_15C
  loc_CCFF66: LitI4 1
  loc_CCFF6B: LitI4 1
  loc_CCFF70: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CCFF75: FStVarCopyObj var_1B0
  loc_CCFF78: FLdRfVar var_1B0
  loc_CCFF7B: FLdRfVar var_190
  loc_CCFF7E: CStrVarTmp
  loc_CCFF7F: CVarStr var_1A0
  loc_CCFF82: ImpAdCallI2 Format$(, )
  loc_CCFF87: CVarStr var_1C0
  loc_CCFF8A: ConcatVar var_1D0
  loc_CCFF8E: LitVarStr var_138, "' AND '"
  loc_CCFF93: ConcatVar var_1E0
  loc_CCFF97: LitI4 1
  loc_CCFF9C: LitI4 1
  loc_CCFFA1: LitVarStr var_214, "yyyy-mm-dd"
  loc_CCFFA6: FStVarCopyObj var_224
  loc_CCFFA9: FLdRfVar var_224
  loc_CCFFAC: FLdRfVar var_1F4
  loc_CCFFAF: CStrVarTmp
  loc_CCFFB0: CVarStr var_204
  loc_CCFFB3: ImpAdCallI2 Format$(, )
  loc_CCFFB8: CVarStr var_234
  loc_CCFFBB: ConcatVar var_244
  loc_CCFFBF: LitVarStr var_254, "'"
  loc_CCFFC4: ConcatVar var_264
  loc_CCFFC8: ILdRf var_88
  loc_CCFFCB: CVarStr var_274
  loc_CCFFCE: ConcatVar var_284
  loc_CCFFD2: ILdRf var_8C
  loc_CCFFD5: CVarStr var_294
  loc_CCFFD8: ConcatVar var_2A4
  loc_CCFFDC: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CCFFE1: ConcatVar var_2C4
  loc_CCFFE5: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+IcomBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CCFFEA: ConcatVar var_2E4
  loc_CCFFEE: LitVarStr var_2F4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CCFFF3: ConcatVar var_304
  loc_CCFFF7: FLdPr Me
  loc_CCFFFA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CCFFFD: FStAdFunc var_308
  loc_CD0000: FLdPr var_308
  loc_CD0003: LateIdLdVar var_318 DispID_15 0
  loc_CD000A: CStrVarTmp
  loc_CD000B: CVarStr var_328
  loc_CD000E: FLdRfVar var_338
  loc_CD0011: ImpAdCallFPR4  = Year()
  loc_CD0016: FLdRfVar var_338
  loc_CD0019: ConcatVar var_348
  loc_CD001D: LitVarStr var_358, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD0022: ConcatVar var_368
  loc_CD0026: LitVarStr var_378, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD002B: ConcatVar var_388
  loc_CD002F: LitI4 1
  loc_CD0034: LitI4 1
  loc_CD0039: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_CD003E: FStVarCopyObj var_3CC
  loc_CD0041: FLdRfVar var_3CC
  loc_CD0044: FLdRfVar var_39C
  loc_CD0047: CStrVarTmp
  loc_CD0048: CVarStr var_3AC
  loc_CD004B: ImpAdCallI2 Format$(, )
  loc_CD0050: CVarStr var_3DC
  loc_CD0053: ConcatVar var_3EC
  loc_CD0057: LitVarStr var_3FC, "' AND '"
  loc_CD005C: ConcatVar var_40C
  loc_CD0060: LitI4 1
  loc_CD0065: LitI4 1
  loc_CD006A: LitVarStr var_440, "yyyy-mm-dd"
  loc_CD006F: FStVarCopyObj var_450
  loc_CD0072: FLdRfVar var_450
  loc_CD0075: FLdRfVar var_420
  loc_CD0078: CStrVarTmp
  loc_CD0079: CVarStr var_430
  loc_CD007C: ImpAdCallI2 Format$(, )
  loc_CD0081: CVarStr var_460
  loc_CD0084: ConcatVar var_470
  loc_CD0088: LitVarStr var_480, "'"
  loc_CD008D: ConcatVar var_490
  loc_CD0091: ILdRf var_88
  loc_CD0094: CVarStr var_4A0
  loc_CD0097: ConcatVar var_4B0
  loc_CD009B: ILdRf var_8C
  loc_CD009E: CVarStr var_4C0
  loc_CD00A1: ConcatVar var_4D0
  loc_CD00A5: LitVarStr var_4E0, " GROUP BY TRUE;"
  loc_CD00AA: ConcatVar var_4F0
  loc_CD00AE: LitVarStr var_500, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, "
  loc_CD00B3: ConcatVar var_510
  loc_CD00B7: LitVarStr var_520, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD00BC: ConcatVar var_530
  loc_CD00C0: LitVarStr var_540, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD00C5: ConcatVar var_550
  loc_CD00C9: FLdPr Me
  loc_CD00CC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD00CF: FStAdFunc var_554
  loc_CD00D2: FLdPr var_554
  loc_CD00D5: LateIdLdVar var_564 DispID_15 0
  loc_CD00DC: CStrVarTmp
  loc_CD00DD: CVarStr var_574
  loc_CD00E0: FLdRfVar var_584
  loc_CD00E3: ImpAdCallFPR4  = Year()
  loc_CD00E8: FLdRfVar var_584
  loc_CD00EB: ConcatVar var_594
  loc_CD00EF: LitVarStr var_5A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD00F4: ConcatVar var_5B4
  loc_CD00F8: LitVarStr var_5C4, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD00FD: ConcatVar var_5D4
  loc_CD0101: LitI4 1
  loc_CD0106: LitI4 1
  loc_CD010B: LitVarStr var_608, "yyyy-mm-dd"
  loc_CD0110: FStVarCopyObj var_618
  loc_CD0113: FLdRfVar var_618
  loc_CD0116: FLdRfVar var_5E8
  loc_CD0119: CStrVarTmp
  loc_CD011A: CVarStr var_5F8
  loc_CD011D: ImpAdCallI2 Format$(, )
  loc_CD0122: CVarStr var_628
  loc_CD0125: ConcatVar var_638
  loc_CD0129: LitVarStr var_648, "' AND '"
  loc_CD012E: ConcatVar var_658
  loc_CD0132: LitI4 1
  loc_CD0137: LitI4 1
  loc_CD013C: LitVarStr var_68C, "yyyy-mm-dd"
  loc_CD0141: FStVarCopyObj var_69C
  loc_CD0144: FLdRfVar var_69C
  loc_CD0147: FLdRfVar var_66C
  loc_CD014A: CStrVarTmp
  loc_CD014B: CVarStr var_67C
  loc_CD014E: ImpAdCallI2 Format$(, )
  loc_CD0153: CVarStr var_6AC
  loc_CD0156: ConcatVar var_6BC
  loc_CD015A: LitVarStr var_6CC, "'"
  loc_CD015F: ConcatVar var_6DC
  loc_CD0163: ILdRf var_88
  loc_CD0166: CVarStr var_6EC
  loc_CD0169: ConcatVar var_6FC
  loc_CD016D: ILdRf var_8C
  loc_CD0170: CVarStr var_70C
  loc_CD0173: ConcatVar var_71C
  loc_CD0177: LitVarStr var_72C, " GROUP BY TRUE;"
  loc_CD017C: ConcatVar var_73C
  loc_CD0180: LitVarStr var_74C, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CD0185: ConcatVar var_75C
  loc_CD0189: LitVarStr var_76C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD018E: ConcatVar var_77C
  loc_CD0192: LitVarStr var_78C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0197: ConcatVar var_79C
  loc_CD019B: FLdPr Me
  loc_CD019E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD01A1: FStAdFunc var_7A0
  loc_CD01A4: FLdPr var_7A0
  loc_CD01A7: LateIdLdVar var_7B0 DispID_15 0
  loc_CD01AE: CStrVarTmp
  loc_CD01AF: CVarStr var_7C0
  loc_CD01B2: FLdRfVar var_7D0
  loc_CD01B5: ImpAdCallFPR4  = Year()
  loc_CD01BA: FLdRfVar var_7D0
  loc_CD01BD: ConcatVar var_7E0
  loc_CD01C1: LitVarStr var_7F0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD01C6: ConcatVar var_800
  loc_CD01CA: LitVarStr var_810, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD01CF: ConcatVar var_820
  loc_CD01D3: LitI4 1
  loc_CD01D8: LitI4 1
  loc_CD01DD: LitVarStr var_854, "yyyy-mm-dd"
  loc_CD01E2: FStVarCopyObj var_864
  loc_CD01E5: FLdRfVar var_864
  loc_CD01E8: FLdRfVar var_834
  loc_CD01EB: CStrVarTmp
  loc_CD01EC: CVarStr var_844
  loc_CD01EF: ImpAdCallI2 Format$(, )
  loc_CD01F4: CVarStr var_874
  loc_CD01F7: ConcatVar var_884
  loc_CD01FB: LitVarStr var_894, "' AND '"
  loc_CD0200: ConcatVar var_8A4
  loc_CD0204: LitI4 1
  loc_CD0209: LitI4 1
  loc_CD020E: LitVarStr var_8D8, "yyyy-mm-dd"
  loc_CD0213: FStVarCopyObj var_8E8
  loc_CD0216: FLdRfVar var_8E8
  loc_CD0219: FLdRfVar var_8B8
  loc_CD021C: CStrVarTmp
  loc_CD021D: CVarStr var_8C8
  loc_CD0220: ImpAdCallI2 Format$(, )
  loc_CD0225: CVarStr var_8F8
  loc_CD0228: ConcatVar var_908
  loc_CD022C: LitVarStr var_918, "'"
  loc_CD0231: ConcatVar var_928
  loc_CD0235: ILdRf var_88
  loc_CD0238: CVarStr var_938
  loc_CD023B: ConcatVar var_948
  loc_CD023F: ILdRf var_8C
  loc_CD0242: CVarStr var_958
  loc_CD0245: ConcatVar var_968
  loc_CD0249: LitVarStr var_978, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD024E: ConcatVar var_988
  loc_CD0252: FLdPr Me
  loc_CD0255: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0258: FStAdFunc var_98C
  loc_CD025B: FLdPr var_98C
  loc_CD025E: LateIdLdVar var_99C DispID_15 0
  loc_CD0265: CStrVarTmp
  loc_CD0266: CVarStr var_9AC
  loc_CD0269: FLdRfVar var_9BC
  loc_CD026C: ImpAdCallFPR4  = Year()
  loc_CD0271: FLdRfVar var_9BC
  loc_CD0274: ConcatVar var_9CC
  loc_CD0278: LitVarStr var_9DC, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CD027D: ConcatVar var_9EC
  loc_CD0281: LitI4 1
  loc_CD0286: LitI4 1
  loc_CD028B: LitVarStr var_A20, "yyyy-mm-dd"
  loc_CD0290: FStVarCopyObj var_A30
  loc_CD0293: FLdRfVar var_A30
  loc_CD0296: FLdRfVar var_A00
  loc_CD0299: CStrVarTmp
  loc_CD029A: CVarStr var_A10
  loc_CD029D: ImpAdCallI2 Format$(, )
  loc_CD02A2: CVarStr var_A40
  loc_CD02A5: ConcatVar var_A50
  loc_CD02A9: LitVarStr var_A60, "' AND '"
  loc_CD02AE: ConcatVar var_A70
  loc_CD02B2: LitI4 1
  loc_CD02B7: LitI4 1
  loc_CD02BC: LitVarStr var_AA4, "yyyy-mm-dd"
  loc_CD02C1: FStVarCopyObj var_AB4
  loc_CD02C4: FLdRfVar var_AB4
  loc_CD02C7: FLdRfVar var_A84
  loc_CD02CA: CStrVarTmp
  loc_CD02CB: CVarStr var_A94
  loc_CD02CE: ImpAdCallI2 Format$(, )
  loc_CD02D3: CVarStr var_AC4
  loc_CD02D6: ConcatVar var_AD4
  loc_CD02DA: LitVarStr var_AE4, "'"
  loc_CD02DF: ConcatVar var_AF4
  loc_CD02E3: ILdRf var_88
  loc_CD02E6: CVarStr var_B04
  loc_CD02E9: ConcatVar var_B14
  loc_CD02ED: ILdRf var_8C
  loc_CD02F0: CVarStr var_B24
  loc_CD02F3: ConcatVar var_B34
  loc_CD02F7: LitVarStr var_B44, " GROUP BY TRUE;"
  loc_CD02FC: ConcatVar var_B54
  loc_CD0300: CStrVarVal var_DC
  loc_CD0304: FLdPr var_13C
  loc_CD0307: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CD030C: FFree1Str var_DC
  loc_CD030F: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = "": var_8A8 = "": var_98C = "": var_9F0 = ""
  loc_CD0330: FFreeVar var_968 = "": var_99C = "": var_9AC = "": var_988 = "": var_9BC = "": var_9CC = "": var_A00 = "": var_A10 = "": var_A30 = "": var_9EC = "": var_A40 = "": var_A50 = "": var_A84 = "": var_A94 = "": var_AB4 = "": var_A70 = "": var_AC4 = "": var_AD4 = "": var_AF4 = "": var_B14 = "": var_B34 = "": var_B54 = "": var_69C = "": var_658 = "": var_6AC = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_77C = "": var_7B0 = "": var_7C0 = "": var_79C = "": var_7D0 = "": var_7E0 = "": var_800 = "": var_834 = "": var_844 = "": var_864 = "": var_820 = "": var_874 = "": var_884 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_8A4 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_388 = "": var_3DC = "": var_3EC = "": var_420 = "": var_430 = "": var_450 = "": var_40C = "": var_460 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_564 = "": var_574 = "": var_550 = "": var_584 = "": var_594 = "": var_5B4 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_5D4 = "": var_628 = "": var_638 = "": var_66C = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_318 = "": var_328 = "": var_304 = "": var_338 = "": var_348 = "": var_368 = "": var_39C = ""
  loc_CD0413: Branch loc_CD1211
  loc_CD0416: LitStr "Municipalidad de Guaymallén"
  loc_CD0419: LitStr "Municipalidad de San Martin"
  loc_CD041C: EqStr
  loc_CD041E: BranchF loc_CD08C0
  loc_CD0421: FLdPr Me
  loc_CD0424: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0427: FStAdFunc var_E0
  loc_CD042A: FLdPr var_E0
  loc_CD042D: LateIdLdVar var_190 DispID_15 0
  loc_CD0434: PopAd
  loc_CD0436: FLdPr Me
  loc_CD0439: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD043C: FStAdFunc var_1E4
  loc_CD043F: FLdPr var_1E4
  loc_CD0442: LateIdLdVar var_1F4 DispID_15 0
  loc_CD0449: PopAd
  loc_CD044B: FLdPr Me
  loc_CD044E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0451: FStAdFunc var_38C
  loc_CD0454: FLdPr var_38C
  loc_CD0457: LateIdLdVar var_3AC DispID_15 0
  loc_CD045E: PopAd
  loc_CD0460: FLdPr Me
  loc_CD0463: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0466: FStAdFunc var_410
  loc_CD0469: FLdPr var_410
  loc_CD046C: LateIdLdVar var_430 DispID_15 0
  loc_CD0473: PopAd
  loc_CD0475: FLdPr Me
  loc_CD0478: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD047B: FStAdFunc var_5D8
  loc_CD047E: FLdPr var_5D8
  loc_CD0481: LateIdLdVar var_5F8 DispID_15 0
  loc_CD0488: PopAd
  loc_CD048A: FLdPr Me
  loc_CD048D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0490: FStAdFunc var_65C
  loc_CD0493: FLdPr var_65C
  loc_CD0496: LateIdLdVar var_67C DispID_15 0
  loc_CD049D: PopAd
  loc_CD049F: FLdPr Me
  loc_CD04A2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD04A5: FStAdFunc var_824
  loc_CD04A8: FLdPr var_824
  loc_CD04AB: LateIdLdVar var_800 DispID_15 0
  loc_CD04B2: PopAd
  loc_CD04B4: FLdPr Me
  loc_CD04B7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD04BA: FStAdFunc var_8A8
  loc_CD04BD: FLdPr var_8A8
  loc_CD04C0: LateIdLdVar var_884 DispID_15 0
  loc_CD04C7: PopAd
  loc_CD04C9: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD04CC: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD04CF: ConcatStr
  loc_CD04D0: CVarStr var_114
  loc_CD04D3: FLdPr Me
  loc_CD04D6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD04D9: FStAdFunc var_C4
  loc_CD04DC: FLdPr var_C4
  loc_CD04DF: LateIdLdVar var_D8 DispID_15 0
  loc_CD04E6: CStrVarTmp
  loc_CD04E7: CVarStr var_F0
  loc_CD04EA: FLdRfVar var_104
  loc_CD04ED: ImpAdCallFPR4  = Year()
  loc_CD04F2: FLdRfVar var_104
  loc_CD04F5: ConcatVar var_124
  loc_CD04F9: LitVarStr var_B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CD04FE: ConcatVar var_15C
  loc_CD0502: LitI4 1
  loc_CD0507: LitI4 1
  loc_CD050C: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CD0511: FStVarCopyObj var_1B0
  loc_CD0514: FLdRfVar var_1B0
  loc_CD0517: FLdRfVar var_190
  loc_CD051A: CStrVarTmp
  loc_CD051B: CVarStr var_1A0
  loc_CD051E: ImpAdCallI2 Format$(, )
  loc_CD0523: CVarStr var_1C0
  loc_CD0526: ConcatVar var_1D0
  loc_CD052A: LitVarStr var_138, "' AND '"
  loc_CD052F: ConcatVar var_1E0
  loc_CD0533: LitI4 1
  loc_CD0538: LitI4 1
  loc_CD053D: LitVarStr var_214, "yyyy-mm-dd"
  loc_CD0542: FStVarCopyObj var_224
  loc_CD0545: FLdRfVar var_224
  loc_CD0548: FLdRfVar var_1F4
  loc_CD054B: CStrVarTmp
  loc_CD054C: CVarStr var_204
  loc_CD054F: ImpAdCallI2 Format$(, )
  loc_CD0554: CVarStr var_234
  loc_CD0557: ConcatVar var_244
  loc_CD055B: LitVarStr var_254, "'"
  loc_CD0560: ConcatVar var_264
  loc_CD0564: ILdRf var_88
  loc_CD0567: CVarStr var_274
  loc_CD056A: ConcatVar var_284
  loc_CD056E: ILdRf var_8C
  loc_CD0571: CVarStr var_294
  loc_CD0574: ConcatVar var_2A4
  loc_CD0578: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CD057D: ConcatVar var_2C4
  loc_CD0581: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, "
  loc_CD0586: ConcatVar var_2E4
  loc_CD058A: LitVarStr var_2F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD058F: ConcatVar var_304
  loc_CD0593: LitVarStr var_358, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0598: ConcatVar var_318
  loc_CD059C: FLdPr Me
  loc_CD059F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD05A2: FStAdFunc var_308
  loc_CD05A5: FLdPr var_308
  loc_CD05A8: LateIdLdVar var_328 DispID_15 0
  loc_CD05AF: CStrVarTmp
  loc_CD05B0: CVarStr var_338
  loc_CD05B3: FLdRfVar var_348
  loc_CD05B6: ImpAdCallFPR4  = Year()
  loc_CD05BB: FLdRfVar var_348
  loc_CD05BE: ConcatVar var_368
  loc_CD05C2: LitVarStr var_378, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD05C7: ConcatVar var_388
  loc_CD05CB: LitVarStr var_3BC, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD05D0: ConcatVar var_39C
  loc_CD05D4: LitI4 1
  loc_CD05D9: LitI4 1
  loc_CD05DE: LitVarStr var_3FC, "yyyy-mm-dd"
  loc_CD05E3: FStVarCopyObj var_3DC
  loc_CD05E6: FLdRfVar var_3DC
  loc_CD05E9: FLdRfVar var_3AC
  loc_CD05EC: CStrVarTmp
  loc_CD05ED: CVarStr var_3CC
  loc_CD05F0: ImpAdCallI2 Format$(, )
  loc_CD05F5: CVarStr var_3EC
  loc_CD05F8: ConcatVar var_40C
  loc_CD05FC: LitVarStr var_440, "' AND '"
  loc_CD0601: ConcatVar var_420
  loc_CD0605: LitI4 1
  loc_CD060A: LitI4 1
  loc_CD060F: LitVarStr var_480, "yyyy-mm-dd"
  loc_CD0614: FStVarCopyObj var_460
  loc_CD0617: FLdRfVar var_460
  loc_CD061A: FLdRfVar var_430
  loc_CD061D: CStrVarTmp
  loc_CD061E: CVarStr var_450
  loc_CD0621: ImpAdCallI2 Format$(, )
  loc_CD0626: CVarStr var_470
  loc_CD0629: ConcatVar var_490
  loc_CD062D: LitVarStr var_4A0, "'"
  loc_CD0632: ConcatVar var_4B0
  loc_CD0636: ILdRf var_88
  loc_CD0639: CVarStr var_4C0
  loc_CD063C: ConcatVar var_4D0
  loc_CD0640: ILdRf var_8C
  loc_CD0643: CVarStr var_4E0
  loc_CD0646: ConcatVar var_4F0
  loc_CD064A: LitVarStr var_500, " GROUP BY TRUE;"
  loc_CD064F: ConcatVar var_510
  loc_CD0653: LitVarStr var_520, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CD0658: ConcatVar var_530
  loc_CD065C: LitVarStr var_540, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0661: ConcatVar var_550
  loc_CD0665: LitVarStr var_5A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD066A: ConcatVar var_564
  loc_CD066E: FLdPr Me
  loc_CD0671: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0674: FStAdFunc var_554
  loc_CD0677: FLdPr var_554
  loc_CD067A: LateIdLdVar var_574 DispID_15 0
  loc_CD0681: CStrVarTmp
  loc_CD0682: CVarStr var_584
  loc_CD0685: FLdRfVar var_594
  loc_CD0688: ImpAdCallFPR4  = Year()
  loc_CD068D: FLdRfVar var_594
  loc_CD0690: ConcatVar var_5B4
  loc_CD0694: LitVarStr var_5C4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD0699: ConcatVar var_5D4
  loc_CD069D: LitVarStr var_608, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD06A2: ConcatVar var_5E8
  loc_CD06A6: LitI4 1
  loc_CD06AB: LitI4 1
  loc_CD06B0: LitVarStr var_648, "yyyy-mm-dd"
  loc_CD06B5: FStVarCopyObj var_628
  loc_CD06B8: FLdRfVar var_628
  loc_CD06BB: FLdRfVar var_5F8
  loc_CD06BE: CStrVarTmp
  loc_CD06BF: CVarStr var_618
  loc_CD06C2: ImpAdCallI2 Format$(, )
  loc_CD06C7: CVarStr var_638
  loc_CD06CA: ConcatVar var_658
  loc_CD06CE: LitVarStr var_68C, "' AND '"
  loc_CD06D3: ConcatVar var_66C
  loc_CD06D7: LitI4 1
  loc_CD06DC: LitI4 1
  loc_CD06E1: LitVarStr var_6CC, "yyyy-mm-dd"
  loc_CD06E6: FStVarCopyObj var_6AC
  loc_CD06E9: FLdRfVar var_6AC
  loc_CD06EC: FLdRfVar var_67C
  loc_CD06EF: CStrVarTmp
  loc_CD06F0: CVarStr var_69C
  loc_CD06F3: ImpAdCallI2 Format$(, )
  loc_CD06F8: CVarStr var_6BC
  loc_CD06FB: ConcatVar var_6DC
  loc_CD06FF: LitVarStr var_6EC, "'"
  loc_CD0704: ConcatVar var_6FC
  loc_CD0708: ILdRf var_88
  loc_CD070B: CVarStr var_70C
  loc_CD070E: ConcatVar var_71C
  loc_CD0712: ILdRf var_8C
  loc_CD0715: CVarStr var_72C
  loc_CD0718: ConcatVar var_73C
  loc_CD071C: LitVarStr var_74C, " GROUP BY TRUE; "
  loc_CD0721: ConcatVar var_75C
  loc_CD0725: LitVarStr var_76C, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD072A: ConcatVar var_77C
  loc_CD072E: FLdPr Me
  loc_CD0731: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0734: FStAdFunc var_7A0
  loc_CD0737: FLdPr var_7A0
  loc_CD073A: LateIdLdVar var_79C DispID_15 0
  loc_CD0741: CStrVarTmp
  loc_CD0742: CVarStr var_7B0
  loc_CD0745: FLdRfVar var_7C0
  loc_CD0748: ImpAdCallFPR4  = Year()
  loc_CD074D: FLdRfVar var_7C0
  loc_CD0750: ConcatVar var_7D0
  loc_CD0754: LitVarStr var_78C, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CD0759: ConcatVar var_7E0
  loc_CD075D: LitI4 1
  loc_CD0762: LitI4 1
  loc_CD0767: LitVarStr var_7F0, "yyyy-mm-dd"
  loc_CD076C: FStVarCopyObj var_834
  loc_CD076F: FLdRfVar var_834
  loc_CD0772: FLdRfVar var_800
  loc_CD0775: CStrVarTmp
  loc_CD0776: CVarStr var_820
  loc_CD0779: ImpAdCallI2 Format$(, )
  loc_CD077E: CVarStr var_844
  loc_CD0781: ConcatVar var_864
  loc_CD0785: LitVarStr var_810, "' AND '"
  loc_CD078A: ConcatVar var_874
  loc_CD078E: LitI4 1
  loc_CD0793: LitI4 1
  loc_CD0798: LitVarStr var_854, "yyyy-mm-dd"
  loc_CD079D: FStVarCopyObj var_8B8
  loc_CD07A0: FLdRfVar var_8B8
  loc_CD07A3: FLdRfVar var_884
  loc_CD07A6: CStrVarTmp
  loc_CD07A7: CVarStr var_8A4
  loc_CD07AA: ImpAdCallI2 Format$(, )
  loc_CD07AF: CVarStr var_8C8
  loc_CD07B2: ConcatVar var_8E8
  loc_CD07B6: LitVarStr var_894, "'"
  loc_CD07BB: ConcatVar var_8F8
  loc_CD07BF: ILdRf var_88
  loc_CD07C2: CVarStr var_8D8
  loc_CD07C5: ConcatVar var_908
  loc_CD07C9: ILdRf var_8C
  loc_CD07CC: CVarStr var_918
  loc_CD07CF: ConcatVar var_928
  loc_CD07D3: LitVarStr var_938, " GROUP BY TRUE;"
  loc_CD07D8: ConcatVar var_948
  loc_CD07DC: CStrVarVal var_DC
  loc_CD07E0: FLdPr var_13C
  loc_CD07E3: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CD07E8: FFree1Str var_DC
  loc_CD07EB: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = ""
  loc_CD0806: FFreeVar var_69C = "": var_6AC = "": var_66C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_79C = "": var_7B0 = "": var_77C = "": var_7C0 = "": var_7D0 = "": var_800 = "": var_820 = "": var_834 = "": var_7E0 = "": var_844 = "": var_864 = "": var_884 = "": var_8A4 = "": var_8B8 = "": var_874 = "": var_8C8 = "": var_8E8 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_3DC = "": var_39C = "": var_3EC = "": var_40C = "": var_430 = "": var_450 = "": var_460 = "": var_420 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_550 = "": var_574 = "": var_584 = "": var_564 = "": var_594 = "": var_5B4 = "": var_5D4 = "": var_5F8 = "": var_618 = "": var_628 = "": var_5E8 = "": var_638 = "": var_658 = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_338 = "": var_318 = "": var_348 = "": var_368 = "": var_388 = ""
  loc_CD08BD: Branch loc_CD1211
  loc_CD08C0: LitStr "Municipalidad de Guaymallén"
  loc_CD08C3: LitStr "Municipalidad de Maipu"
  loc_CD08C6: EqStr
  loc_CD08C8: BranchF loc_CD0D6A
  loc_CD08CB: FLdPr Me
  loc_CD08CE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD08D1: FStAdFunc var_E0
  loc_CD08D4: FLdPr var_E0
  loc_CD08D7: LateIdLdVar var_190 DispID_15 0
  loc_CD08DE: PopAd
  loc_CD08E0: FLdPr Me
  loc_CD08E3: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD08E6: FStAdFunc var_1E4
  loc_CD08E9: FLdPr var_1E4
  loc_CD08EC: LateIdLdVar var_1F4 DispID_15 0
  loc_CD08F3: PopAd
  loc_CD08F5: FLdPr Me
  loc_CD08F8: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD08FB: FStAdFunc var_38C
  loc_CD08FE: FLdPr var_38C
  loc_CD0901: LateIdLdVar var_3AC DispID_15 0
  loc_CD0908: PopAd
  loc_CD090A: FLdPr Me
  loc_CD090D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0910: FStAdFunc var_410
  loc_CD0913: FLdPr var_410
  loc_CD0916: LateIdLdVar var_430 DispID_15 0
  loc_CD091D: PopAd
  loc_CD091F: FLdPr Me
  loc_CD0922: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0925: FStAdFunc var_5D8
  loc_CD0928: FLdPr var_5D8
  loc_CD092B: LateIdLdVar var_5F8 DispID_15 0
  loc_CD0932: PopAd
  loc_CD0934: FLdPr Me
  loc_CD0937: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD093A: FStAdFunc var_65C
  loc_CD093D: FLdPr var_65C
  loc_CD0940: LateIdLdVar var_67C DispID_15 0
  loc_CD0947: PopAd
  loc_CD0949: FLdPr Me
  loc_CD094C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD094F: FStAdFunc var_824
  loc_CD0952: FLdPr var_824
  loc_CD0955: LateIdLdVar var_800 DispID_15 0
  loc_CD095C: PopAd
  loc_CD095E: FLdPr Me
  loc_CD0961: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0964: FStAdFunc var_8A8
  loc_CD0967: FLdPr var_8A8
  loc_CD096A: LateIdLdVar var_884 DispID_15 0
  loc_CD0971: PopAd
  loc_CD0973: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0976: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0979: ConcatStr
  loc_CD097A: CVarStr var_114
  loc_CD097D: FLdPr Me
  loc_CD0980: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0983: FStAdFunc var_C4
  loc_CD0986: FLdPr var_C4
  loc_CD0989: LateIdLdVar var_D8 DispID_15 0
  loc_CD0990: CStrVarTmp
  loc_CD0991: CVarStr var_F0
  loc_CD0994: FLdRfVar var_104
  loc_CD0997: ImpAdCallFPR4  = Year()
  loc_CD099C: FLdRfVar var_104
  loc_CD099F: ConcatVar var_124
  loc_CD09A3: LitVarStr var_B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CD09A8: ConcatVar var_15C
  loc_CD09AC: LitI4 1
  loc_CD09B1: LitI4 1
  loc_CD09B6: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CD09BB: FStVarCopyObj var_1B0
  loc_CD09BE: FLdRfVar var_1B0
  loc_CD09C1: FLdRfVar var_190
  loc_CD09C4: CStrVarTmp
  loc_CD09C5: CVarStr var_1A0
  loc_CD09C8: ImpAdCallI2 Format$(, )
  loc_CD09CD: CVarStr var_1C0
  loc_CD09D0: ConcatVar var_1D0
  loc_CD09D4: LitVarStr var_138, "' AND '"
  loc_CD09D9: ConcatVar var_1E0
  loc_CD09DD: LitI4 1
  loc_CD09E2: LitI4 1
  loc_CD09E7: LitVarStr var_214, "yyyy-mm-dd"
  loc_CD09EC: FStVarCopyObj var_224
  loc_CD09EF: FLdRfVar var_224
  loc_CD09F2: FLdRfVar var_1F4
  loc_CD09F5: CStrVarTmp
  loc_CD09F6: CVarStr var_204
  loc_CD09F9: ImpAdCallI2 Format$(, )
  loc_CD09FE: CVarStr var_234
  loc_CD0A01: ConcatVar var_244
  loc_CD0A05: LitVarStr var_254, "'"
  loc_CD0A0A: ConcatVar var_264
  loc_CD0A0E: ILdRf var_88
  loc_CD0A11: CVarStr var_274
  loc_CD0A14: ConcatVar var_284
  loc_CD0A18: ILdRf var_8C
  loc_CD0A1B: CVarStr var_294
  loc_CD0A1E: ConcatVar var_2A4
  loc_CD0A22: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CD0A27: ConcatVar var_2C4
  loc_CD0A2B: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+NoinBoap) as TotaDepa, "
  loc_CD0A30: ConcatVar var_2E4
  loc_CD0A34: LitVarStr var_2F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0A39: ConcatVar var_304
  loc_CD0A3D: LitVarStr var_358, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0A42: ConcatVar var_318
  loc_CD0A46: FLdPr Me
  loc_CD0A49: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0A4C: FStAdFunc var_308
  loc_CD0A4F: FLdPr var_308
  loc_CD0A52: LateIdLdVar var_328 DispID_15 0
  loc_CD0A59: CStrVarTmp
  loc_CD0A5A: CVarStr var_338
  loc_CD0A5D: FLdRfVar var_348
  loc_CD0A60: ImpAdCallFPR4  = Year()
  loc_CD0A65: FLdRfVar var_348
  loc_CD0A68: ConcatVar var_368
  loc_CD0A6C: LitVarStr var_378, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD0A71: ConcatVar var_388
  loc_CD0A75: LitVarStr var_3BC, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD0A7A: ConcatVar var_39C
  loc_CD0A7E: LitI4 1
  loc_CD0A83: LitI4 1
  loc_CD0A88: LitVarStr var_3FC, "yyyy-mm-dd"
  loc_CD0A8D: FStVarCopyObj var_3DC
  loc_CD0A90: FLdRfVar var_3DC
  loc_CD0A93: FLdRfVar var_3AC
  loc_CD0A96: CStrVarTmp
  loc_CD0A97: CVarStr var_3CC
  loc_CD0A9A: ImpAdCallI2 Format$(, )
  loc_CD0A9F: CVarStr var_3EC
  loc_CD0AA2: ConcatVar var_40C
  loc_CD0AA6: LitVarStr var_440, "' AND '"
  loc_CD0AAB: ConcatVar var_420
  loc_CD0AAF: LitI4 1
  loc_CD0AB4: LitI4 1
  loc_CD0AB9: LitVarStr var_480, "yyyy-mm-dd"
  loc_CD0ABE: FStVarCopyObj var_460
  loc_CD0AC1: FLdRfVar var_460
  loc_CD0AC4: FLdRfVar var_430
  loc_CD0AC7: CStrVarTmp
  loc_CD0AC8: CVarStr var_450
  loc_CD0ACB: ImpAdCallI2 Format$(, )
  loc_CD0AD0: CVarStr var_470
  loc_CD0AD3: ConcatVar var_490
  loc_CD0AD7: LitVarStr var_4A0, "'"
  loc_CD0ADC: ConcatVar var_4B0
  loc_CD0AE0: ILdRf var_88
  loc_CD0AE3: CVarStr var_4C0
  loc_CD0AE6: ConcatVar var_4D0
  loc_CD0AEA: ILdRf var_8C
  loc_CD0AED: CVarStr var_4E0
  loc_CD0AF0: ConcatVar var_4F0
  loc_CD0AF4: LitVarStr var_500, " GROUP BY TRUE;"
  loc_CD0AF9: ConcatVar var_510
  loc_CD0AFD: LitVarStr var_520, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ComiBoap+CoadBoap+TajuBoap+ApleBoap+DefiBoap) as TotaDepa, "
  loc_CD0B02: ConcatVar var_530
  loc_CD0B06: LitVarStr var_540, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0B0B: ConcatVar var_550
  loc_CD0B0F: LitVarStr var_5A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0B14: ConcatVar var_564
  loc_CD0B18: FLdPr Me
  loc_CD0B1B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0B1E: FStAdFunc var_554
  loc_CD0B21: FLdPr var_554
  loc_CD0B24: LateIdLdVar var_574 DispID_15 0
  loc_CD0B2B: CStrVarTmp
  loc_CD0B2C: CVarStr var_584
  loc_CD0B2F: FLdRfVar var_594
  loc_CD0B32: ImpAdCallFPR4  = Year()
  loc_CD0B37: FLdRfVar var_594
  loc_CD0B3A: ConcatVar var_5B4
  loc_CD0B3E: LitVarStr var_5C4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD0B43: ConcatVar var_5D4
  loc_CD0B47: LitVarStr var_608, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD0B4C: ConcatVar var_5E8
  loc_CD0B50: LitI4 1
  loc_CD0B55: LitI4 1
  loc_CD0B5A: LitVarStr var_648, "yyyy-mm-dd"
  loc_CD0B5F: FStVarCopyObj var_628
  loc_CD0B62: FLdRfVar var_628
  loc_CD0B65: FLdRfVar var_5F8
  loc_CD0B68: CStrVarTmp
  loc_CD0B69: CVarStr var_618
  loc_CD0B6C: ImpAdCallI2 Format$(, )
  loc_CD0B71: CVarStr var_638
  loc_CD0B74: ConcatVar var_658
  loc_CD0B78: LitVarStr var_68C, "' AND '"
  loc_CD0B7D: ConcatVar var_66C
  loc_CD0B81: LitI4 1
  loc_CD0B86: LitI4 1
  loc_CD0B8B: LitVarStr var_6CC, "yyyy-mm-dd"
  loc_CD0B90: FStVarCopyObj var_6AC
  loc_CD0B93: FLdRfVar var_6AC
  loc_CD0B96: FLdRfVar var_67C
  loc_CD0B99: CStrVarTmp
  loc_CD0B9A: CVarStr var_69C
  loc_CD0B9D: ImpAdCallI2 Format$(, )
  loc_CD0BA2: CVarStr var_6BC
  loc_CD0BA5: ConcatVar var_6DC
  loc_CD0BA9: LitVarStr var_6EC, "'"
  loc_CD0BAE: ConcatVar var_6FC
  loc_CD0BB2: ILdRf var_88
  loc_CD0BB5: CVarStr var_70C
  loc_CD0BB8: ConcatVar var_71C
  loc_CD0BBC: ILdRf var_8C
  loc_CD0BBF: CVarStr var_72C
  loc_CD0BC2: ConcatVar var_73C
  loc_CD0BC6: LitVarStr var_74C, " GROUP BY TRUE; "
  loc_CD0BCB: ConcatVar var_75C
  loc_CD0BCF: LitVarStr var_76C, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0BD4: ConcatVar var_77C
  loc_CD0BD8: FLdPr Me
  loc_CD0BDB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0BDE: FStAdFunc var_7A0
  loc_CD0BE1: FLdPr var_7A0
  loc_CD0BE4: LateIdLdVar var_79C DispID_15 0
  loc_CD0BEB: CStrVarTmp
  loc_CD0BEC: CVarStr var_7B0
  loc_CD0BEF: FLdRfVar var_7C0
  loc_CD0BF2: ImpAdCallFPR4  = Year()
  loc_CD0BF7: FLdRfVar var_7C0
  loc_CD0BFA: ConcatVar var_7D0
  loc_CD0BFE: LitVarStr var_78C, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CD0C03: ConcatVar var_7E0
  loc_CD0C07: LitI4 1
  loc_CD0C0C: LitI4 1
  loc_CD0C11: LitVarStr var_7F0, "yyyy-mm-dd"
  loc_CD0C16: FStVarCopyObj var_834
  loc_CD0C19: FLdRfVar var_834
  loc_CD0C1C: FLdRfVar var_800
  loc_CD0C1F: CStrVarTmp
  loc_CD0C20: CVarStr var_820
  loc_CD0C23: ImpAdCallI2 Format$(, )
  loc_CD0C28: CVarStr var_844
  loc_CD0C2B: ConcatVar var_864
  loc_CD0C2F: LitVarStr var_810, "' AND '"
  loc_CD0C34: ConcatVar var_874
  loc_CD0C38: LitI4 1
  loc_CD0C3D: LitI4 1
  loc_CD0C42: LitVarStr var_854, "yyyy-mm-dd"
  loc_CD0C47: FStVarCopyObj var_8B8
  loc_CD0C4A: FLdRfVar var_8B8
  loc_CD0C4D: FLdRfVar var_884
  loc_CD0C50: CStrVarTmp
  loc_CD0C51: CVarStr var_8A4
  loc_CD0C54: ImpAdCallI2 Format$(, )
  loc_CD0C59: CVarStr var_8C8
  loc_CD0C5C: ConcatVar var_8E8
  loc_CD0C60: LitVarStr var_894, "'"
  loc_CD0C65: ConcatVar var_8F8
  loc_CD0C69: ILdRf var_88
  loc_CD0C6C: CVarStr var_8D8
  loc_CD0C6F: ConcatVar var_908
  loc_CD0C73: ILdRf var_8C
  loc_CD0C76: CVarStr var_918
  loc_CD0C79: ConcatVar var_928
  loc_CD0C7D: LitVarStr var_938, " GROUP BY TRUE;"
  loc_CD0C82: ConcatVar var_948
  loc_CD0C86: CStrVarVal var_DC
  loc_CD0C8A: FLdPr var_13C
  loc_CD0C8D: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CD0C92: FFree1Str var_DC
  loc_CD0C95: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = ""
  loc_CD0CB0: FFreeVar var_69C = "": var_6AC = "": var_66C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_79C = "": var_7B0 = "": var_77C = "": var_7C0 = "": var_7D0 = "": var_800 = "": var_820 = "": var_834 = "": var_7E0 = "": var_844 = "": var_864 = "": var_884 = "": var_8A4 = "": var_8B8 = "": var_874 = "": var_8C8 = "": var_8E8 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_3DC = "": var_39C = "": var_3EC = "": var_40C = "": var_430 = "": var_450 = "": var_460 = "": var_420 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_550 = "": var_574 = "": var_584 = "": var_564 = "": var_594 = "": var_5B4 = "": var_5D4 = "": var_5F8 = "": var_618 = "": var_628 = "": var_5E8 = "": var_638 = "": var_658 = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_338 = "": var_318 = "": var_348 = "": var_368 = "": var_388 = ""
  loc_CD0D67: Branch loc_CD1211
  loc_CD0D6A: FLdPr Me
  loc_CD0D6D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0D70: FStAdFunc var_E0
  loc_CD0D73: FLdPr var_E0
  loc_CD0D76: LateIdLdVar var_190 DispID_15 0
  loc_CD0D7D: PopAd
  loc_CD0D7F: FLdPr Me
  loc_CD0D82: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0D85: FStAdFunc var_1E4
  loc_CD0D88: FLdPr var_1E4
  loc_CD0D8B: LateIdLdVar var_1F4 DispID_15 0
  loc_CD0D92: PopAd
  loc_CD0D94: FLdPr Me
  loc_CD0D97: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0D9A: FStAdFunc var_38C
  loc_CD0D9D: FLdPr var_38C
  loc_CD0DA0: LateIdLdVar var_3AC DispID_15 0
  loc_CD0DA7: PopAd
  loc_CD0DA9: FLdPr Me
  loc_CD0DAC: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0DAF: FStAdFunc var_410
  loc_CD0DB2: FLdPr var_410
  loc_CD0DB5: LateIdLdVar var_430 DispID_15 0
  loc_CD0DBC: PopAd
  loc_CD0DBE: FLdPr Me
  loc_CD0DC1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0DC4: FStAdFunc var_5D8
  loc_CD0DC7: FLdPr var_5D8
  loc_CD0DCA: LateIdLdVar var_5F8 DispID_15 0
  loc_CD0DD1: PopAd
  loc_CD0DD3: FLdPr Me
  loc_CD0DD6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0DD9: FStAdFunc var_65C
  loc_CD0DDC: FLdPr var_65C
  loc_CD0DDF: LateIdLdVar var_67C DispID_15 0
  loc_CD0DE6: PopAd
  loc_CD0DE8: FLdPr Me
  loc_CD0DEB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0DEE: FStAdFunc var_824
  loc_CD0DF1: FLdPr var_824
  loc_CD0DF4: LateIdLdVar var_800 DispID_15 0
  loc_CD0DFB: PopAd
  loc_CD0DFD: FLdPr Me
  loc_CD0E00: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CD0E03: FStAdFunc var_8A8
  loc_CD0E06: FLdPr var_8A8
  loc_CD0E09: LateIdLdVar var_884 DispID_15 0
  loc_CD0E10: PopAd
  loc_CD0E12: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_CD0E15: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0E18: ConcatStr
  loc_CD0E19: FStStrNoPop var_DC
  loc_CD0E1C: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0E1F: ConcatStr
  loc_CD0E20: CVarStr var_114
  loc_CD0E23: FLdPr Me
  loc_CD0E26: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0E29: FStAdFunc var_C4
  loc_CD0E2C: FLdPr var_C4
  loc_CD0E2F: LateIdLdVar var_D8 DispID_15 0
  loc_CD0E36: CStrVarTmp
  loc_CD0E37: CVarStr var_F0
  loc_CD0E3A: FLdRfVar var_104
  loc_CD0E3D: ImpAdCallFPR4  = Year()
  loc_CD0E42: FLdRfVar var_104
  loc_CD0E45: ConcatVar var_124
  loc_CD0E49: LitVarStr var_B0, " WHERE FeenAcpa BETWEEN '"
  loc_CD0E4E: ConcatVar var_15C
  loc_CD0E52: LitI4 1
  loc_CD0E57: LitI4 1
  loc_CD0E5C: LitVarStr var_C0, "yyyy-mm-dd"
  loc_CD0E61: FStVarCopyObj var_1B0
  loc_CD0E64: FLdRfVar var_1B0
  loc_CD0E67: FLdRfVar var_190
  loc_CD0E6A: CStrVarTmp
  loc_CD0E6B: CVarStr var_1A0
  loc_CD0E6E: ImpAdCallI2 Format$(, )
  loc_CD0E73: CVarStr var_1C0
  loc_CD0E76: ConcatVar var_1D0
  loc_CD0E7A: LitVarStr var_138, "' AND '"
  loc_CD0E7F: ConcatVar var_1E0
  loc_CD0E83: LitI4 1
  loc_CD0E88: LitI4 1
  loc_CD0E8D: LitVarStr var_214, "yyyy-mm-dd"
  loc_CD0E92: FStVarCopyObj var_224
  loc_CD0E95: FLdRfVar var_224
  loc_CD0E98: FLdRfVar var_1F4
  loc_CD0E9B: CStrVarTmp
  loc_CD0E9C: CVarStr var_204
  loc_CD0E9F: ImpAdCallI2 Format$(, )
  loc_CD0EA4: CVarStr var_234
  loc_CD0EA7: ConcatVar var_244
  loc_CD0EAB: LitVarStr var_254, "'"
  loc_CD0EB0: ConcatVar var_264
  loc_CD0EB4: ILdRf var_88
  loc_CD0EB7: CVarStr var_274
  loc_CD0EBA: ConcatVar var_284
  loc_CD0EBE: ILdRf var_8C
  loc_CD0EC1: CVarStr var_294
  loc_CD0EC4: ConcatVar var_2A4
  loc_CD0EC8: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CD0ECD: ConcatVar var_2C4
  loc_CD0ED1: LitVarStr var_2D4, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_CD0ED6: ConcatVar var_2E4
  loc_CD0EDA: LitVarStr var_2F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0EDF: ConcatVar var_304
  loc_CD0EE3: LitVarStr var_358, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0EE8: ConcatVar var_318
  loc_CD0EEC: FLdPr Me
  loc_CD0EEF: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0EF2: FStAdFunc var_308
  loc_CD0EF5: FLdPr var_308
  loc_CD0EF8: LateIdLdVar var_328 DispID_15 0
  loc_CD0EFF: CStrVarTmp
  loc_CD0F00: CVarStr var_338
  loc_CD0F03: FLdRfVar var_348
  loc_CD0F06: ImpAdCallFPR4  = Year()
  loc_CD0F0B: FLdRfVar var_348
  loc_CD0F0E: ConcatVar var_368
  loc_CD0F12: LitVarStr var_378, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD0F17: ConcatVar var_388
  loc_CD0F1B: LitVarStr var_3BC, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD0F20: ConcatVar var_39C
  loc_CD0F24: LitI4 1
  loc_CD0F29: LitI4 1
  loc_CD0F2E: LitVarStr var_3FC, "yyyy-mm-dd"
  loc_CD0F33: FStVarCopyObj var_3DC
  loc_CD0F36: FLdRfVar var_3DC
  loc_CD0F39: FLdRfVar var_3AC
  loc_CD0F3C: CStrVarTmp
  loc_CD0F3D: CVarStr var_3CC
  loc_CD0F40: ImpAdCallI2 Format$(, )
  loc_CD0F45: CVarStr var_3EC
  loc_CD0F48: ConcatVar var_40C
  loc_CD0F4C: LitVarStr var_440, "' AND '"
  loc_CD0F51: ConcatVar var_420
  loc_CD0F55: LitI4 1
  loc_CD0F5A: LitI4 1
  loc_CD0F5F: LitVarStr var_480, "yyyy-mm-dd"
  loc_CD0F64: FStVarCopyObj var_460
  loc_CD0F67: FLdRfVar var_460
  loc_CD0F6A: FLdRfVar var_430
  loc_CD0F6D: CStrVarTmp
  loc_CD0F6E: CVarStr var_450
  loc_CD0F71: ImpAdCallI2 Format$(, )
  loc_CD0F76: CVarStr var_470
  loc_CD0F79: ConcatVar var_490
  loc_CD0F7D: LitVarStr var_4A0, "'"
  loc_CD0F82: ConcatVar var_4B0
  loc_CD0F86: ILdRf var_88
  loc_CD0F89: CVarStr var_4C0
  loc_CD0F8C: ConcatVar var_4D0
  loc_CD0F90: ILdRf var_8C
  loc_CD0F93: CVarStr var_4E0
  loc_CD0F96: ConcatVar var_4F0
  loc_CD0F9A: LitVarStr var_500, " GROUP BY TRUE;"
  loc_CD0F9F: ConcatVar var_510
  loc_CD0FA3: LitVarStr var_520, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CD0FA8: ConcatVar var_530
  loc_CD0FAC: LitVarStr var_540, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CD0FB1: ConcatVar var_550
  loc_CD0FB5: LitVarStr var_5A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD0FBA: ConcatVar var_564
  loc_CD0FBE: FLdPr Me
  loc_CD0FC1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD0FC4: FStAdFunc var_554
  loc_CD0FC7: FLdPr var_554
  loc_CD0FCA: LateIdLdVar var_574 DispID_15 0
  loc_CD0FD1: CStrVarTmp
  loc_CD0FD2: CVarStr var_584
  loc_CD0FD5: FLdRfVar var_594
  loc_CD0FD8: ImpAdCallFPR4  = Year()
  loc_CD0FDD: FLdRfVar var_594
  loc_CD0FE0: ConcatVar var_5B4
  loc_CD0FE4: LitVarStr var_5C4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD0FE9: ConcatVar var_5D4
  loc_CD0FED: LitVarStr var_608, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CD0FF2: ConcatVar var_5E8
  loc_CD0FF6: LitI4 1
  loc_CD0FFB: LitI4 1
  loc_CD1000: LitVarStr var_648, "yyyy-mm-dd"
  loc_CD1005: FStVarCopyObj var_628
  loc_CD1008: FLdRfVar var_628
  loc_CD100B: FLdRfVar var_5F8
  loc_CD100E: CStrVarTmp
  loc_CD100F: CVarStr var_618
  loc_CD1012: ImpAdCallI2 Format$(, )
  loc_CD1017: CVarStr var_638
  loc_CD101A: ConcatVar var_658
  loc_CD101E: LitVarStr var_68C, "' AND '"
  loc_CD1023: ConcatVar var_66C
  loc_CD1027: LitI4 1
  loc_CD102C: LitI4 1
  loc_CD1031: LitVarStr var_6CC, "yyyy-mm-dd"
  loc_CD1036: FStVarCopyObj var_6AC
  loc_CD1039: FLdRfVar var_6AC
  loc_CD103C: FLdRfVar var_67C
  loc_CD103F: CStrVarTmp
  loc_CD1040: CVarStr var_69C
  loc_CD1043: ImpAdCallI2 Format$(, )
  loc_CD1048: CVarStr var_6BC
  loc_CD104B: ConcatVar var_6DC
  loc_CD104F: LitVarStr var_6EC, "'"
  loc_CD1054: ConcatVar var_6FC
  loc_CD1058: ILdRf var_88
  loc_CD105B: CVarStr var_70C
  loc_CD105E: ConcatVar var_71C
  loc_CD1062: ILdRf var_8C
  loc_CD1065: CVarStr var_72C
  loc_CD1068: ConcatVar var_73C
  loc_CD106C: LitVarStr var_74C, " GROUP BY TRUE;"
  loc_CD1071: ConcatVar var_75C
  loc_CD1075: LitVarStr var_76C, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD107A: ConcatVar var_77C
  loc_CD107E: FLdPr Me
  loc_CD1081: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD1084: FStAdFunc var_7A0
  loc_CD1087: FLdPr var_7A0
  loc_CD108A: LateIdLdVar var_79C DispID_15 0
  loc_CD1091: CStrVarTmp
  loc_CD1092: CVarStr var_7B0
  loc_CD1095: FLdRfVar var_7C0
  loc_CD1098: ImpAdCallFPR4  = Year()
  loc_CD109D: FLdRfVar var_7C0
  loc_CD10A0: ConcatVar var_7D0
  loc_CD10A4: LitVarStr var_78C, " WHERE FeenAcpa BETWEEN '"
  loc_CD10A9: ConcatVar var_7E0
  loc_CD10AD: LitI4 1
  loc_CD10B2: LitI4 1
  loc_CD10B7: LitVarStr var_7F0, "yyyy-mm-dd"
  loc_CD10BC: FStVarCopyObj var_834
  loc_CD10BF: FLdRfVar var_834
  loc_CD10C2: FLdRfVar var_800
  loc_CD10C5: CStrVarTmp
  loc_CD10C6: CVarStr var_820
  loc_CD10C9: ImpAdCallI2 Format$(, )
  loc_CD10CE: CVarStr var_844
  loc_CD10D1: ConcatVar var_864
  loc_CD10D5: LitVarStr var_810, "' AND '"
  loc_CD10DA: ConcatVar var_874
  loc_CD10DE: LitI4 1
  loc_CD10E3: LitI4 1
  loc_CD10E8: LitVarStr var_854, "yyyy-mm-dd"
  loc_CD10ED: FStVarCopyObj var_8B8
  loc_CD10F0: FLdRfVar var_8B8
  loc_CD10F3: FLdRfVar var_884
  loc_CD10F6: CStrVarTmp
  loc_CD10F7: CVarStr var_8A4
  loc_CD10FA: ImpAdCallI2 Format$(, )
  loc_CD10FF: CVarStr var_8C8
  loc_CD1102: ConcatVar var_8E8
  loc_CD1106: LitVarStr var_894, "'"
  loc_CD110B: ConcatVar var_8F8
  loc_CD110F: ILdRf var_88
  loc_CD1112: CVarStr var_8D8
  loc_CD1115: ConcatVar var_908
  loc_CD1119: ILdRf var_8C
  loc_CD111C: CVarStr var_918
  loc_CD111F: ConcatVar var_928
  loc_CD1123: LitVarStr var_938, " GROUP BY TRUE;"
  loc_CD1128: ConcatVar var_948
  loc_CD112C: CStrVarVal var_F4
  loc_CD1130: FLdPr var_13C
  loc_CD1133: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CD1138: FFreeStr var_DC = ""
  loc_CD113F: FFreeAd var_C4 = "": var_E0 = "": var_1E4 = "": var_308 = "": var_38C = "": var_410 = "": var_554 = "": var_5D8 = "": var_65C = "": var_7A0 = "": var_824 = ""
  loc_CD115A: FFreeVar var_69C = "": var_6AC = "": var_66C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_79C = "": var_7B0 = "": var_77C = "": var_7C0 = "": var_7D0 = "": var_800 = "": var_820 = "": var_834 = "": var_7E0 = "": var_844 = "": var_864 = "": var_884 = "": var_8A4 = "": var_8B8 = "": var_874 = "": var_8C8 = "": var_8E8 = "": var_8F8 = "": var_908 = "": var_928 = "": var_948 = "": var_3CC = "": var_3DC = "": var_39C = "": var_3EC = "": var_40C = "": var_430 = "": var_450 = "": var_460 = "": var_420 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_550 = "": var_574 = "": var_584 = "": var_564 = "": var_594 = "": var_5B4 = "": var_5D4 = "": var_5F8 = "": var_618 = "": var_628 = "": var_5E8 = "": var_638 = "": var_658 = "": var_67C = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F4 = "": var_204 = "": var_224 = "": var_1E0 = "": var_234 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_338 = "": var_318 = "": var_348 = "": var_368 = "": var_388 = ""
  loc_CD1211: LitStr "SELECT deta.CodiConc, ifnull(DetaConc,'') as DetaConc, DetaPers, ExpeBole, TotaDepa, ifnull(IngrConc,'') as IngrConc, DetaCuco, "
  loc_CD1214: LitStr " deta.FeenAcpa, deta.CodiOfic, deta.CuenCtct, deta.PeriBole, deta.NumeBole, CapiDepa, DecaDepa, ExenDepa FROM deta"
  loc_CD1217: ConcatStr
  loc_CD1218: FStStrNoPop var_DC
  loc_CD121B: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CD121E: ConcatStr
  loc_CD121F: CVarStr var_114
  loc_CD1222: FLdPr Me
  loc_CD1225: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CD1228: FStAdFunc var_C4
  loc_CD122B: FLdPr var_C4
  loc_CD122E: LateIdLdVar var_D8 DispID_15 0
  loc_CD1235: CStrVarTmp
  loc_CD1236: CVarStr var_F0
  loc_CD1239: FLdRfVar var_104
  loc_CD123C: ImpAdCallFPR4  = Year()
  loc_CD1241: FLdRfVar var_104
  loc_CD1244: ConcatVar var_124
  loc_CD1248: LitVarStr var_B0, " AND concepto.CodiConc = deta.CodiConc"
  loc_CD124D: ConcatVar var_15C
  loc_CD1251: LitVarStr var_C0, " LEFT JOIN boleto ON boleto.PeriBole = deta.PeriBole AND boleto.NumeBole = deta.NumeBole"
  loc_CD1256: ConcatVar var_190
  loc_CD125A: LitVarStr var_138, " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_CD125F: ConcatVar var_1A0
  loc_CD1263: LitVarStr var_214, " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = concepto.PeriInfo AND infogov.cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD1268: ConcatVar var_1B0
  loc_CD126C: LitVarStr var_254, " WHERE TotaDepa <> 0 "
  loc_CD1271: ConcatVar var_1C0
  loc_CD1275: ILdRf var_90
  loc_CD1278: CVarStr var_274
  loc_CD127B: ConcatVar var_1D0
  loc_CD127F: ILdRf var_94
  loc_CD1282: CVarStr var_294
  loc_CD1285: ConcatVar var_1E0
  loc_CD1289: ILdRf var_A0
  loc_CD128C: CVarStr var_2B4
  loc_CD128F: ConcatVar var_1F4
  loc_CD1293: LitVarStr var_2D4, " ORDER BY "
  loc_CD1298: ConcatVar var_204
  loc_CD129C: ILdRf var_9C
  loc_CD129F: CVarStr var_2F4
  loc_CD12A2: ConcatVar var_224
  loc_CD12A6: LitVarStr var_358, ";"
  loc_CD12AB: ConcatVar var_234
  loc_CD12AF: CStrVarVal var_F4
  loc_CD12B3: FLdPr var_13C
  loc_CD12B6: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CD12BB: FFreeStr var_DC = ""
  loc_CD12C2: FFree1Ad var_C4
  loc_CD12C5: FFreeVar var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_15C = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F4 = "": var_204 = "": var_224 = ""
  loc_CD12E8: FLdRfVar var_B58
  loc_CD12EB: FLdPr var_13C
  loc_CD12EE: from_stack_1 = clsconcepto.RecordCount
  loc_CD12F3: ILdRf var_B58
  loc_CD12F6: LitI4 0
  loc_CD12FB: EqI4
  loc_CD12FC: BranchF loc_CD130A
  loc_CD12FF: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CD1302: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CD1307: Branch loc_CD1399
  loc_CD130A: LitI2_Byte 0
  loc_CD130C: CStrUI1
  loc_CD130E: FStStrNoPop var_DC
  loc_CD1311: FLdPr Me
  loc_CD1314: MemStStrCopy
  loc_CD1318: FFree1Str var_DC
  loc_CD131B: LitI2_Byte 0
  loc_CD131D: FLdPr Me
  loc_CD1320: MemStI2 global_92
  loc_CD1323: LitI4 0
  loc_CD1328: LitI4 0
  loc_CD132D: FLdPr Me
  loc_CD1330: MemLdRfVar from_stack_1.global_84
  loc_CD1333: Redim
  loc_CD133D: Call Proc_215_32_AD7B4C()
  loc_CD1342: FLdRfVar var_C6
  loc_CD1345: FLdPr var_13C
  loc_CD1348: from_stack_1 = clsconcepto.EOF
  loc_CD134D: FLdI2 var_C6
  loc_CD1350: NotI4
  loc_CD1351: BranchF loc_CD138B
  loc_CD1354: FLdRfVar var_DC
  loc_CD1357: FLdPr var_13C
  loc_CD135A: from_stack_1 = clsconcepto.CodiConc
  loc_CD135F: ILdRf var_DC
  loc_CD1362: FLdPr Me
  loc_CD1365: MemLdI2 global_92
  loc_CD1368: CI4UI1
  loc_CD1369: FLdPr Me
  loc_CD136C: MemLdStr global_84
  loc_CD136F: Ary1LdPr
  loc_CD1370: MemLdStr global_0
  loc_CD1373: NeStr
  loc_CD1375: FFree1Str var_DC
  loc_CD1378: BranchF loc_CD1383
  loc_CD137B: Call Proc_215_32_AD7B4C()
  loc_CD1380: Branch loc_CD1388
  loc_CD1383: Call Proc_215_33_B305E0()
  loc_CD1388: Branch loc_CD1342
  loc_CD138B: LitNothing
  loc_CD138D: FStAd var_13C 
  loc_CD1391: LitI2_Byte &HFF
  loc_CD1393: FLdPr Me
  loc_CD1396: MemStI2 bGenerado
  loc_CD1399: LitI4 0
  loc_CD139E: CI2I4
  loc_CD139F: FLdPr Me
  loc_CD13A2: Me.MousePointer = from_stack_1
  loc_CD13A7: LitVarStr var_B0, vbNullString
  loc_CD13AC: PopAdLdVar
  loc_CD13AD: FLdPr Me
  loc_CD13B0: VCallAd Control_ID_statusBar
  loc_CD13B3: FStAdFunc var_C4
  loc_CD13B6: FLdPr var_C4
  loc_CD13B9: LateIdSt
  loc_CD13BE: FFree1Ad var_C4
  loc_CD13C1: ExitProcHresult
  loc_CD13C2: LitI2_Byte 0
End Sub

Public Sub GeneraHTML() 'BC5838
  'Data Table: 502C50
  loc_BC518C: FLdRfVar var_88
  loc_BC518F: LitI2_Byte 0
  loc_BC5191: LitI2_Byte &HFF
  loc_BC5193: ImpAdLdI4 MemVar_D93C84
  loc_BC5196: FLdPr Me
  loc_BC5199: MemLdRfVar from_stack_1.global_56
  loc_BC519C: NewIfNullPr IFileSystem3
  loc_BC519F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BC51A4: ILdRf var_88
  loc_BC51A7: FLdPr Me
  loc_BC51AA: MemStVarAd
  loc_BC51AE: FFree1Ad var_88
  loc_BC51B1: LitI2_Byte &HFF
  loc_BC51B3: ImpAdStI2 MemVar_D93C8A
  loc_BC51B6: Call Proc_215_34_C43AAC()
  loc_BC51BB: LitI2_Byte 1
  loc_BC51BD: FLdPr Me
  loc_BC51C0: MemLdRfVar from_stack_1.global_92
  loc_BC51C3: FLdPr Me
  loc_BC51C6: MemLdStr global_84
  loc_BC51C9: LitI2_Byte 1
  loc_BC51CB: FnUBound
  loc_BC51CD: CI2I4
  loc_BC51CE: ForI2 var_8C
  loc_BC51D4: FLdRfVar var_8E
  loc_BC51D7: FLdPr Me
  loc_BC51DA: VCallAd Control_ID_AnaliticoOpt
  loc_BC51DD: FStAdFunc var_88
  loc_BC51E0: FLdPr var_88
  loc_BC51E3:  = Me.Value
  loc_BC51E8: FLdI2 var_8E
  loc_BC51EB: FFree1Ad var_88
  loc_BC51EE: BranchF loc_BC5208
  loc_BC51F1: LitVarStr var_A0, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC51F6: PopAdLdVar
  loc_BC51F7: FLdPr Me
  loc_BC51FA: MemLdRfVar from_stack_1.global_60
  loc_BC51FD: LdPrVar
  loc_BC51FF: LateMemCall
  loc_BC5205: Branch loc_BC521C
  loc_BC5208: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BC520D: PopAdLdVar
  loc_BC520E: FLdPr Me
  loc_BC5211: MemLdRfVar from_stack_1.global_60
  loc_BC5214: LdPrVar
  loc_BC5216: LateMemCall
  loc_BC521C: FLdPr Me
  loc_BC521F: MemLdI2 global_92
  loc_BC5222: CI4UI1
  loc_BC5223: FLdPr Me
  loc_BC5226: MemLdStr global_84
  loc_BC5229: AryLock
  loc_BC522C: Ary1LdRf
  loc_BC522D: FStR4 var_B8
  loc_BC5230: FLdRfVar var_8E
  loc_BC5233: FLdPr Me
  loc_BC5236: VCallAd Control_ID_AnaliticoOpt
  loc_BC5239: FStAdFunc var_88
  loc_BC523C: FLdPr var_88
  loc_BC523F:  = Me.Value
  loc_BC5244: LitVarStr var_108, "   <td align=""left"" colspan="""
  loc_BC5249: LitVarI2 var_E8, 1
  loc_BC524E: LitVarI2 var_C8, 5
  loc_BC5253: FLdI2 var_8E
  loc_BC5256: CVarBoolI2 var_A0
  loc_BC525A: FLdRfVar var_F8
  loc_BC525D: ImpAdCallFPR4  = IIf(, , )
  loc_BC5262: FLdRfVar var_F8
  loc_BC5265: ConcatVar var_118
  loc_BC5269: LitVarStr var_128, """>"
  loc_BC526E: ConcatVar var_138
  loc_BC5272: FMemLdR4 var_B8(0)
  loc_BC5277: CVarStr var_148
  loc_BC527A: ConcatVar var_158
  loc_BC527E: LitVarStr var_168, " - "
  loc_BC5283: ConcatVar var_178
  loc_BC5287: FMemLdR4 var_B8(4)
  loc_BC528C: CVarStr var_188
  loc_BC528F: ConcatVar var_198
  loc_BC5293: LitVarStr var_1A8, "</td>"
  loc_BC5298: ConcatVar var_1B8
  loc_BC529C: PopAdLdVar
  loc_BC529D: FLdPr Me
  loc_BC52A0: MemLdRfVar from_stack_1.global_60
  loc_BC52A3: LdPrVar
  loc_BC52A5: LateMemCall
  loc_BC52AB: FFree1Ad var_88
  loc_BC52AE: FFreeVar var_A0 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = ""
  loc_BC52C5: FLdRfVar var_8E
  loc_BC52C8: FLdPr Me
  loc_BC52CB: VCallAd Control_ID_AnaliticoOpt
  loc_BC52CE: FStAdFunc var_88
  loc_BC52D1: FLdPr var_88
  loc_BC52D4:  = Me.Value
  loc_BC52D9: LitVarStr var_108, "   <td align=""left"" colspan="""
  loc_BC52DE: LitVarI2 var_E8, 1
  loc_BC52E3: LitVarI2 var_C8, 4
  loc_BC52E8: FLdI2 var_8E
  loc_BC52EB: CVarBoolI2 var_A0
  loc_BC52EF: FLdRfVar var_F8
  loc_BC52F2: ImpAdCallFPR4  = IIf(, , )
  loc_BC52F7: FLdRfVar var_F8
  loc_BC52FA: ConcatVar var_118
  loc_BC52FE: LitVarStr var_128, """>"
  loc_BC5303: ConcatVar var_138
  loc_BC5307: FMemLdR4 var_B8(12)
  loc_BC530C: CVarStr var_148
  loc_BC530F: ConcatVar var_158
  loc_BC5313: LitVarStr var_168, " - "
  loc_BC5318: ConcatVar var_178
  loc_BC531C: FMemLdR4 var_B8(16)
  loc_BC5321: CVarStr var_188
  loc_BC5324: ConcatVar var_198
  loc_BC5328: LitVarStr var_1A8, "</td>"
  loc_BC532D: ConcatVar var_1B8
  loc_BC5331: PopAdLdVar
  loc_BC5332: FLdPr Me
  loc_BC5335: MemLdRfVar from_stack_1.global_60
  loc_BC5338: LdPrVar
  loc_BC533A: LateMemCall
  loc_BC5340: FFree1Ad var_88
  loc_BC5343: FFreeVar var_A0 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = ""
  loc_BC535A: LitStr vbNullString
  loc_BC535D: LitI2_Byte 0
  loc_BC535F: LitI2_Byte 0
  loc_BC5361: LitI2_Byte 0
  loc_BC5363: LitStr "right"
  loc_BC5366: FMemLdR4 var_B8(80)
  loc_BC536B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5370: CVarStr var_C8
  loc_BC5373: PopAdLdVar
  loc_BC5374: FLdPr Me
  loc_BC5377: MemLdRfVar from_stack_1.global_60
  loc_BC537A: LdPrVar
  loc_BC537C: LateMemCall
  loc_BC5382: FFree1Var var_C8 = ""
  loc_BC5385: LitI4 0
  loc_BC538A: FStR4 var_B8
  loc_BC538D: AryUnlock
  loc_BC5390: LitVarStr var_A0, "     </tr>"
  loc_BC5395: PopAdLdVar
  loc_BC5396: FLdPr Me
  loc_BC5399: MemLdRfVar from_stack_1.global_60
  loc_BC539C: LdPrVar
  loc_BC539E: LateMemCall
  loc_BC53A4: FLdRfVar var_8E
  loc_BC53A7: FLdPr Me
  loc_BC53AA: VCallAd Control_ID_AnaliticoOpt
  loc_BC53AD: FStAdFunc var_88
  loc_BC53B0: FLdPr var_88
  loc_BC53B3:  = Me.Value
  loc_BC53B8: FLdI2 var_8E
  loc_BC53BB: FFree1Ad var_88
  loc_BC53BE: BranchF loc_BC575A
  loc_BC53C1: LitI4 1
  loc_BC53C6: FLdPr Me
  loc_BC53C9: MemLdRfVar from_stack_1.global_96
  loc_BC53CC: FLdPr Me
  loc_BC53CF: MemLdI2 global_92
  loc_BC53D2: CI4UI1
  loc_BC53D3: FLdPr Me
  loc_BC53D6: MemLdStr global_84
  loc_BC53D9: Ary1LdPr
  loc_BC53DA: MemLdStr global_20
  loc_BC53DD: LitI2_Byte 1
  loc_BC53DF: FnUBound
  loc_BC53E1: ForI4 var_1D0
  loc_BC53E7: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BC53EC: PopAdLdVar
  loc_BC53ED: FLdPr Me
  loc_BC53F0: MemLdRfVar from_stack_1.global_60
  loc_BC53F3: LdPrVar
  loc_BC53F5: LateMemCall
  loc_BC53FB: FLdPr Me
  loc_BC53FE: MemLdStr global_96
  loc_BC5401: FLdPr Me
  loc_BC5404: MemLdI2 global_92
  loc_BC5407: CI4UI1
  loc_BC5408: FLdPr Me
  loc_BC540B: MemLdStr global_84
  loc_BC540E: AryLock
  loc_BC5411: Ary1LdPr
  loc_BC5412: MemLdStr global_20
  loc_BC5415: AryLock
  loc_BC5418: Ary1LdRf
  loc_BC5419: FStR4 var_1DC
  loc_BC541C: LitStr vbNullString
  loc_BC541F: LitI2_Byte 0
  loc_BC5421: LitI2_Byte 0
  loc_BC5423: LitI2_Byte 0
  loc_BC5425: LitStr "center"
  loc_BC5428: FMemLdR4 var_1DC(0)
  loc_BC542D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5432: CVarStr var_C8
  loc_BC5435: PopAdLdVar
  loc_BC5436: FLdPr Me
  loc_BC5439: MemLdRfVar from_stack_1.global_60
  loc_BC543C: LdPrVar
  loc_BC543E: LateMemCall
  loc_BC5444: FFree1Var var_C8 = ""
  loc_BC5447: LitStr vbNullString
  loc_BC544A: LitI2_Byte 0
  loc_BC544C: LitI2_Byte 0
  loc_BC544E: LitI2_Byte 0
  loc_BC5450: LitStr "right"
  loc_BC5453: FMemLdR4 var_1DC(4)
  loc_BC5458: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC545D: CVarStr var_C8
  loc_BC5460: PopAdLdVar
  loc_BC5461: FLdPr Me
  loc_BC5464: MemLdRfVar from_stack_1.global_60
  loc_BC5467: LdPrVar
  loc_BC5469: LateMemCall
  loc_BC546F: FFree1Var var_C8 = ""
  loc_BC5472: LitStr vbNullString
  loc_BC5475: LitI2_Byte 0
  loc_BC5477: LitI2_Byte 0
  loc_BC5479: LitI2_Byte 0
  loc_BC547B: LitStr "right"
  loc_BC547E: FMemLdR4 var_1DC(8)
  loc_BC5483: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5488: CVarStr var_C8
  loc_BC548B: PopAdLdVar
  loc_BC548C: FLdPr Me
  loc_BC548F: MemLdRfVar from_stack_1.global_60
  loc_BC5492: LdPrVar
  loc_BC5494: LateMemCall
  loc_BC549A: FFree1Var var_C8 = ""
  loc_BC549D: LitStr vbNullString
  loc_BC54A0: LitI2_Byte 0
  loc_BC54A2: LitI2_Byte 0
  loc_BC54A4: LitI2_Byte 0
  loc_BC54A6: LitStr "right"
  loc_BC54A9: FMemLdR4 var_1DC(12)
  loc_BC54AE: LitStr "/"
  loc_BC54B1: ConcatStr
  loc_BC54B2: FStStrNoPop var_1E0
  loc_BC54B5: FMemLdR4 var_1DC(16)
  loc_BC54BA: ConcatStr
  loc_BC54BB: FStStrNoPop var_1E4
  loc_BC54BE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC54C3: CVarStr var_C8
  loc_BC54C6: PopAdLdVar
  loc_BC54C7: FLdPr Me
  loc_BC54CA: MemLdRfVar from_stack_1.global_60
  loc_BC54CD: LdPrVar
  loc_BC54CF: LateMemCall
  loc_BC54D5: FFreeStr var_1E0 = ""
  loc_BC54DC: FFree1Var var_C8 = ""
  loc_BC54DF: LitStr vbNullString
  loc_BC54E2: LitI2_Byte 0
  loc_BC54E4: LitI2_Byte 0
  loc_BC54E6: LitI2_Byte 0
  loc_BC54E8: LitStr "left"
  loc_BC54EB: FMemLdR4 var_1DC(20)
  loc_BC54F0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC54F5: CVarStr var_C8
  loc_BC54F8: PopAdLdVar
  loc_BC54F9: FLdPr Me
  loc_BC54FC: MemLdRfVar from_stack_1.global_60
  loc_BC54FF: LdPrVar
  loc_BC5501: LateMemCall
  loc_BC5507: FFree1Var var_C8 = ""
  loc_BC550A: LitStr vbNullString
  loc_BC550D: LitI2_Byte 0
  loc_BC550F: LitI2_Byte 0
  loc_BC5511: LitI2_Byte 0
  loc_BC5513: LitStr "left"
  loc_BC5516: FMemLdR4 var_1DC(24)
  loc_BC551B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5520: CVarStr var_C8
  loc_BC5523: PopAdLdVar
  loc_BC5524: FLdPr Me
  loc_BC5527: MemLdRfVar from_stack_1.global_60
  loc_BC552A: LdPrVar
  loc_BC552C: LateMemCall
  loc_BC5532: FFree1Var var_C8 = ""
  loc_BC5535: LitStr vbNullString
  loc_BC5538: LitI2_Byte 0
  loc_BC553A: LitI2_Byte 0
  loc_BC553C: LitI2_Byte 0
  loc_BC553E: LitStr "right"
  loc_BC5541: FMemLdR4 var_1DC(28)
  loc_BC5546: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC554B: CVarStr var_C8
  loc_BC554E: PopAdLdVar
  loc_BC554F: FLdPr Me
  loc_BC5552: MemLdRfVar from_stack_1.global_60
  loc_BC5555: LdPrVar
  loc_BC5557: LateMemCall
  loc_BC555D: FFree1Var var_C8 = ""
  loc_BC5560: LitStr vbNullString
  loc_BC5563: LitI2_Byte 0
  loc_BC5565: LitI2_Byte 0
  loc_BC5567: LitI2_Byte 0
  loc_BC5569: LitStr "right"
  loc_BC556C: FMemLdR4 var_1DC(32)
  loc_BC5571: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5576: CVarStr var_C8
  loc_BC5579: PopAdLdVar
  loc_BC557A: FLdPr Me
  loc_BC557D: MemLdRfVar from_stack_1.global_60
  loc_BC5580: LdPrVar
  loc_BC5582: LateMemCall
  loc_BC5588: FFree1Var var_C8 = ""
  loc_BC558B: LitStr vbNullString
  loc_BC558E: LitI2_Byte 0
  loc_BC5590: LitI2_Byte 0
  loc_BC5592: LitI2_Byte 0
  loc_BC5594: LitStr "right"
  loc_BC5597: FMemLdR4 var_1DC(48)
  loc_BC559C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC55A1: CVarStr var_C8
  loc_BC55A4: PopAdLdVar
  loc_BC55A5: FLdPr Me
  loc_BC55A8: MemLdRfVar from_stack_1.global_60
  loc_BC55AB: LdPrVar
  loc_BC55AD: LateMemCall
  loc_BC55B3: FFree1Var var_C8 = ""
  loc_BC55B6: LitStr vbNullString
  loc_BC55B9: LitI2_Byte 0
  loc_BC55BB: LitI2_Byte 0
  loc_BC55BD: LitI2_Byte 0
  loc_BC55BF: LitStr "right"
  loc_BC55C2: FMemLdR4 var_1DC(56)
  loc_BC55C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC55CC: CVarStr var_C8
  loc_BC55CF: PopAdLdVar
  loc_BC55D0: FLdPr Me
  loc_BC55D3: MemLdRfVar from_stack_1.global_60
  loc_BC55D6: LdPrVar
  loc_BC55D8: LateMemCall
  loc_BC55DE: FFree1Var var_C8 = ""
  loc_BC55E1: LitI4 0
  loc_BC55E6: FStR4 var_1DC
  loc_BC55E9: AryUnlock
  loc_BC55EC: AryUnlock
  loc_BC55EF: LitVarStr var_A0, "     </tr>"
  loc_BC55F4: PopAdLdVar
  loc_BC55F5: FLdPr Me
  loc_BC55F8: MemLdRfVar from_stack_1.global_60
  loc_BC55FB: LdPrVar
  loc_BC55FD: LateMemCall
  loc_BC5603: FLdPr Me
  loc_BC5606: MemLdRfVar from_stack_1.global_96
  loc_BC5609: NextI4 var_1D0, loc_BC53E7
  loc_BC560E: LitVarStr var_A0, "    <tr class=""SubTotales"">"
  loc_BC5613: PopAdLdVar
  loc_BC5614: FLdPr Me
  loc_BC5617: MemLdRfVar from_stack_1.global_60
  loc_BC561A: LdPrVar
  loc_BC561C: LateMemCall
  loc_BC5622: LitStr "    <td colspan=""6"" align=""right"">Subtotales "
  loc_BC5625: FLdPr Me
  loc_BC5628: MemLdI2 global_92
  loc_BC562B: CI4UI1
  loc_BC562C: FLdPr Me
  loc_BC562F: MemLdStr global_84
  loc_BC5632: Ary1LdPr
  loc_BC5633: MemLdStr global_0
  loc_BC5636: ConcatStr
  loc_BC5637: FStStrNoPop var_1E0
  loc_BC563A: LitStr " - "
  loc_BC563D: ConcatStr
  loc_BC563E: FStStrNoPop var_1E4
  loc_BC5641: FLdPr Me
  loc_BC5644: MemLdI2 global_92
  loc_BC5647: CI4UI1
  loc_BC5648: FLdPr Me
  loc_BC564B: MemLdStr global_84
  loc_BC564E: Ary1LdPr
  loc_BC564F: MemLdStr global_4
  loc_BC5652: ConcatStr
  loc_BC5653: FStStrNoPop var_1E8
  loc_BC5656: LitStr "</td>"
  loc_BC5659: ConcatStr
  loc_BC565A: CVarStr var_C8
  loc_BC565D: PopAdLdVar
  loc_BC565E: FLdPr Me
  loc_BC5661: MemLdRfVar from_stack_1.global_60
  loc_BC5664: LdPrVar
  loc_BC5666: LateMemCall
  loc_BC566C: FFreeStr var_1E0 = "": var_1E4 = ""
  loc_BC5675: FFree1Var var_C8 = ""
  loc_BC5678: FLdPr Me
  loc_BC567B: MemLdI2 global_92
  loc_BC567E: CI4UI1
  loc_BC567F: FLdPr Me
  loc_BC5682: MemLdStr global_84
  loc_BC5685: AryLock
  loc_BC5688: Ary1LdPr
  loc_BC5689: MemLdRfVar from_stack_1.global_24
  loc_BC568C: FStR4 var_1F0
  loc_BC568F: LitStr vbNullString
  loc_BC5692: LitI2_Byte 0
  loc_BC5694: LitI2_Byte 0
  loc_BC5696: LitI2_Byte 0
  loc_BC5698: LitStr "right"
  loc_BC569B: FMemLdR4 var_1F0(28)
  loc_BC56A0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC56A5: CVarStr var_C8
  loc_BC56A8: PopAdLdVar
  loc_BC56A9: FLdPr Me
  loc_BC56AC: MemLdRfVar from_stack_1.global_60
  loc_BC56AF: LdPrVar
  loc_BC56B1: LateMemCall
  loc_BC56B7: FFree1Var var_C8 = ""
  loc_BC56BA: LitStr vbNullString
  loc_BC56BD: LitI2_Byte 0
  loc_BC56BF: LitI2_Byte 0
  loc_BC56C1: LitI2_Byte 0
  loc_BC56C3: LitStr "right"
  loc_BC56C6: FMemLdR4 var_1F0(32)
  loc_BC56CB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC56D0: CVarStr var_C8
  loc_BC56D3: PopAdLdVar
  loc_BC56D4: FLdPr Me
  loc_BC56D7: MemLdRfVar from_stack_1.global_60
  loc_BC56DA: LdPrVar
  loc_BC56DC: LateMemCall
  loc_BC56E2: FFree1Var var_C8 = ""
  loc_BC56E5: LitStr vbNullString
  loc_BC56E8: LitI2_Byte 0
  loc_BC56EA: LitI2_Byte 0
  loc_BC56EC: LitI2_Byte 0
  loc_BC56EE: LitStr "right"
  loc_BC56F1: FMemLdR4 var_1F0(48)
  loc_BC56F6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC56FB: CVarStr var_C8
  loc_BC56FE: PopAdLdVar
  loc_BC56FF: FLdPr Me
  loc_BC5702: MemLdRfVar from_stack_1.global_60
  loc_BC5705: LdPrVar
  loc_BC5707: LateMemCall
  loc_BC570D: FFree1Var var_C8 = ""
  loc_BC5710: LitStr vbNullString
  loc_BC5713: LitI2_Byte 0
  loc_BC5715: LitI2_Byte 0
  loc_BC5717: LitI2_Byte 0
  loc_BC5719: LitStr "right"
  loc_BC571C: FMemLdR4 var_1F0(56)
  loc_BC5721: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC5726: CVarStr var_C8
  loc_BC5729: PopAdLdVar
  loc_BC572A: FLdPr Me
  loc_BC572D: MemLdRfVar from_stack_1.global_60
  loc_BC5730: LdPrVar
  loc_BC5732: LateMemCall
  loc_BC5738: FFree1Var var_C8 = ""
  loc_BC573B: LitI4 0
  loc_BC5740: FStR4 var_1F0
  loc_BC5743: AryUnlock
  loc_BC5746: LitVarStr var_A0, "     </tr>"
  loc_BC574B: PopAdLdVar
  loc_BC574C: FLdPr Me
  loc_BC574F: MemLdRfVar from_stack_1.global_60
  loc_BC5752: LdPrVar
  loc_BC5754: LateMemCall
  loc_BC575A: FLdPr Me
  loc_BC575D: MemLdRfVar from_stack_1.global_92
  loc_BC5760: NextI2 var_8C, loc_BC51D4
  loc_BC5765: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_BC576A: PopAdLdVar
  loc_BC576B: FLdPr Me
  loc_BC576E: MemLdRfVar from_stack_1.global_60
  loc_BC5771: LdPrVar
  loc_BC5773: LateMemCall
  loc_BC5779: FLdRfVar var_8E
  loc_BC577C: FLdPr Me
  loc_BC577F: VCallAd Control_ID_AnaliticoOpt
  loc_BC5782: FStAdFunc var_88
  loc_BC5785: FLdPr var_88
  loc_BC5788:  = Me.Value
  loc_BC578D: LitVarStr var_108, "    <td colspan="""
  loc_BC5792: LitVarI2 var_E8, 2
  loc_BC5797: LitVarI2 var_C8, 9
  loc_BC579C: FLdI2 var_8E
  loc_BC579F: CVarBoolI2 var_A0
  loc_BC57A3: FLdRfVar var_F8
  loc_BC57A6: ImpAdCallFPR4  = IIf(, , )
  loc_BC57AB: FLdRfVar var_F8
  loc_BC57AE: ConcatVar var_118
  loc_BC57B2: LitVarStr var_128, """ align=""right"">Total</td>"
  loc_BC57B7: ConcatVar var_138
  loc_BC57BB: PopAdLdVar
  loc_BC57BC: FLdPr Me
  loc_BC57BF: MemLdRfVar from_stack_1.global_60
  loc_BC57C2: LdPrVar
  loc_BC57C4: LateMemCall
  loc_BC57CA: FFree1Ad var_88
  loc_BC57CD: FFreeVar var_A0 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_BC57DC: LitStr vbNullString
  loc_BC57DF: LitI2_Byte 0
  loc_BC57E1: LitI2_Byte 0
  loc_BC57E3: LitI2_Byte 0
  loc_BC57E5: LitStr "right"
  loc_BC57E8: FLdPr Me
  loc_BC57EB: MemLdStr global_88
  loc_BC57EE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC57F3: CVarStr var_C8
  loc_BC57F6: PopAdLdVar
  loc_BC57F7: FLdPr Me
  loc_BC57FA: MemLdRfVar from_stack_1.global_60
  loc_BC57FD: LdPrVar
  loc_BC57FF: LateMemCall
  loc_BC5805: FFree1Var var_C8 = ""
  loc_BC5808: LitVarStr var_A0, "     </tr>"
  loc_BC580D: PopAdLdVar
  loc_BC580E: FLdPr Me
  loc_BC5811: MemLdRfVar from_stack_1.global_60
  loc_BC5814: LdPrVar
  loc_BC5816: LateMemCall
  loc_BC581C: Call Proc_215_35_A0C7C8()
  loc_BC5821: FLdPr Me
  loc_BC5824: MemLdRfVar from_stack_1.global_60
  loc_BC5827: LdPrVar
  loc_BC5829: LateMemCall
  loc_BC582F: LitStr vbNullString
  loc_BC5832: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BC5837: ExitProcHresult
End Sub

Private Function Proc_215_32_AD7B4C() 'AD7B4C
  'Data Table: 502C50
  loc_AD7A10: FLdPr Me
  loc_AD7A13: MemLdI2 global_92
  loc_AD7A16: LitI2_Byte 1
  loc_AD7A18: AddI2
  loc_AD7A19: FLdPr Me
  loc_AD7A1C: MemStI2 global_92
  loc_AD7A1F: LitI4 0
  loc_AD7A24: FLdPr Me
  loc_AD7A27: MemStI4 global_96
  loc_AD7A2A: LitI4 0
  loc_AD7A2F: FLdPr Me
  loc_AD7A32: MemLdI2 global_92
  loc_AD7A35: CI4UI1
  loc_AD7A36: FLdPr Me
  loc_AD7A39: MemLdRfVar from_stack_1.global_84
  loc_AD7A3C: RedimPreserve
  loc_AD7A46: FLdPr Me
  loc_AD7A49: MemLdRfVar from_stack_1.global_76
  loc_AD7A4C: NewIfNullAd
  loc_AD7A4F: FStAd var_88 
  loc_AD7A53: FLdRfVar var_8C
  loc_AD7A56: FLdPr var_88
  loc_AD7A59: from_stack_1 = clsconcepto.CodiConc
  loc_AD7A5E: LitI2_Byte 0
  loc_AD7A60: LitVar_Missing var_C0
  loc_AD7A63: LitI2_Byte 0
  loc_AD7A65: FLdZeroAd var_8C
  loc_AD7A68: CVarStr var_A0
  loc_AD7A6B: PopAdLdVar
  loc_AD7A6C: FLdPr Me
  loc_AD7A6F: MemLdI2 global_92
  loc_AD7A72: CI4UI1
  loc_AD7A73: FLdPr Me
  loc_AD7A76: MemLdStr global_84
  loc_AD7A79: AryLock
  loc_AD7A7C: Ary1LdPr
  loc_AD7A7D: MemLdRfVar from_stack_1.global_0
  loc_AD7A80: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD7A85: AryUnlock
  loc_AD7A88: FFreeVar var_A0 = ""
  loc_AD7A8F: FLdRfVar var_8C
  loc_AD7A92: FLdPr var_88
  loc_AD7A95: from_stack_1 = clsconcepto.DetaConc
  loc_AD7A9A: LitI2_Byte 0
  loc_AD7A9C: LitVar_Missing var_C0
  loc_AD7A9F: LitI2_Byte 0
  loc_AD7AA1: FLdZeroAd var_8C
  loc_AD7AA4: CVarStr var_A0
  loc_AD7AA7: PopAdLdVar
  loc_AD7AA8: FLdPr Me
  loc_AD7AAB: MemLdI2 global_92
  loc_AD7AAE: CI4UI1
  loc_AD7AAF: FLdPr Me
  loc_AD7AB2: MemLdStr global_84
  loc_AD7AB5: AryLock
  loc_AD7AB8: Ary1LdPr
  loc_AD7AB9: MemLdRfVar from_stack_1.global_4
  loc_AD7ABC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD7AC1: AryUnlock
  loc_AD7AC4: FFreeVar var_A0 = ""
  loc_AD7ACB: FLdRfVar var_8C
  loc_AD7ACE: FLdPr var_88
  loc_AD7AD1: from_stack_1 = clsconcepto.IngrConc
  loc_AD7AD6: LitI2_Byte 0
  loc_AD7AD8: LitVar_Missing var_C0
  loc_AD7ADB: LitI2_Byte 0
  loc_AD7ADD: FLdZeroAd var_8C
  loc_AD7AE0: CVarStr var_A0
  loc_AD7AE3: PopAdLdVar
  loc_AD7AE4: FLdPr Me
  loc_AD7AE7: MemLdI2 global_92
  loc_AD7AEA: CI4UI1
  loc_AD7AEB: FLdPr Me
  loc_AD7AEE: MemLdStr global_84
  loc_AD7AF1: AryLock
  loc_AD7AF4: Ary1LdPr
  loc_AD7AF5: MemLdRfVar from_stack_1.global_12
  loc_AD7AF8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD7AFD: AryUnlock
  loc_AD7B00: FFreeVar var_A0 = ""
  loc_AD7B07: FLdRfVar var_A0
  loc_AD7B0A: FLdPr var_88
  loc_AD7B0D: from_stack_1 = clsconcepto.DetaCuco
  loc_AD7B12: LitI2_Byte 0
  loc_AD7B14: LitVar_Missing var_C0
  loc_AD7B17: LitI2_Byte 0
  loc_AD7B19: FLdVar var_A0
  loc_AD7B1D: FLdPr Me
  loc_AD7B20: MemLdI2 global_92
  loc_AD7B23: CI4UI1
  loc_AD7B24: FLdPr Me
  loc_AD7B27: MemLdStr global_84
  loc_AD7B2A: AryLock
  loc_AD7B2D: Ary1LdPr
  loc_AD7B2E: MemLdRfVar from_stack_1.global_16
  loc_AD7B31: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD7B36: AryUnlock
  loc_AD7B39: FFreeVar var_A0 = ""
  loc_AD7B40: LitNothing
  loc_AD7B42: FStAd var_88 
  loc_AD7B46: Call Proc_215_33_B305E0()
  loc_AD7B4B: ExitProcHresult
End Function

Private Function Proc_215_33_B305E0() 'B305E0
  'Data Table: 502C50
  loc_B302F4: FLdPr Me
  loc_B302F7: MemLdStr global_96
  loc_B302FA: LitI4 1
  loc_B302FF: AddI4
  loc_B30300: FLdPr Me
  loc_B30303: MemStI4 global_96
  loc_B30306: LitI4 0
  loc_B3030B: FLdPr Me
  loc_B3030E: MemLdStr global_96
  loc_B30311: FLdPr Me
  loc_B30314: MemLdI2 global_92
  loc_B30317: CI4UI1
  loc_B30318: FLdPr Me
  loc_B3031B: MemLdStr global_84
  loc_B3031E: Ary1LdPr
  loc_B3031F: MemLdRfVar from_stack_1.global_20
  loc_B30322: RedimPreserve
  loc_B3032C: FLdPr Me
  loc_B3032F: MemLdStr global_96
  loc_B30332: FLdPr Me
  loc_B30335: MemLdI2 global_92
  loc_B30338: CI4UI1
  loc_B30339: FLdPr Me
  loc_B3033C: MemLdStr global_84
  loc_B3033F: AryLock
  loc_B30342: Ary1LdPr
  loc_B30343: MemLdStr global_20
  loc_B30346: AryLock
  loc_B30349: Ary1LdRf
  loc_B3034A: FStR4 var_90
  loc_B3034D: FLdRfVar var_94
  loc_B30350: FLdPr Me
  loc_B30353: MemLdRfVar from_stack_1.global_76
  loc_B30356: NewIfNullPr clsconcepto
  loc_B30359: from_stack_1 = clsconcepto.FeenAcpa
  loc_B3035E: LitI2_Byte 0
  loc_B30360: LitVar_Missing var_C4
  loc_B30363: LitI2_Byte 0
  loc_B30365: FLdZeroAd var_94
  loc_B30368: CVarStr var_A4
  loc_B3036B: PopAdLdVar
  loc_B3036C: FMemLdRf unk_502BC1
  loc_B30371: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30376: FFreeVar var_A4 = ""
  loc_B3037D: FLdRfVar var_C6
  loc_B30380: FLdPr Me
  loc_B30383: MemLdRfVar from_stack_1.global_76
  loc_B30386: NewIfNullPr clsconcepto
  loc_B30389: from_stack_1 = clsconcepto.CodiOfic
  loc_B3038E: LitI2_Byte 0
  loc_B30390: LitVar_Missing var_A4
  loc_B30393: LitI2_Byte 0
  loc_B30395: FLdUI1
  loc_B30399: CVarUI1
  loc_B3039D: PopAdLdVar
  loc_B3039E: FMemLdRf unk_502BC1
  loc_B303A3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B303A8: FFree1Var var_A4 = ""
  loc_B303AB: FLdRfVar var_94
  loc_B303AE: FLdPr Me
  loc_B303B1: MemLdRfVar from_stack_1.global_76
  loc_B303B4: NewIfNullPr clsconcepto
  loc_B303B7: from_stack_1 = clsconcepto.CuenCtct
  loc_B303BC: LitI2_Byte 0
  loc_B303BE: LitVar_Missing var_C4
  loc_B303C1: LitI2_Byte 0
  loc_B303C3: FLdZeroAd var_94
  loc_B303C6: CVarStr var_A4
  loc_B303C9: PopAdLdVar
  loc_B303CA: FMemLdRf unk_502BC1
  loc_B303CF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B303D4: FFreeVar var_A4 = ""
  loc_B303DB: FLdRfVar var_C6
  loc_B303DE: FLdPr Me
  loc_B303E1: MemLdRfVar from_stack_1.global_76
  loc_B303E4: NewIfNullPr clsconcepto
  loc_B303E7: from_stack_1 = clsconcepto.PeriBole
  loc_B303EC: LitI2_Byte 0
  loc_B303EE: LitVar_Missing var_A4
  loc_B303F1: LitI2_Byte 0
  loc_B303F3: FLdI2 var_C6
  loc_B303F6: CVarI2 var_B4
  loc_B303F9: PopAdLdVar
  loc_B303FA: FMemLdRf unk_502BC1
  loc_B303FF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30404: FFree1Var var_A4 = ""
  loc_B30407: FLdRfVar var_DC
  loc_B3040A: FLdPr Me
  loc_B3040D: MemLdRfVar from_stack_1.global_76
  loc_B30410: NewIfNullPr clsconcepto
  loc_B30413: from_stack_1 = clsconcepto.NumeBole
  loc_B30418: LitI2_Byte 0
  loc_B3041A: LitVar_Missing var_A4
  loc_B3041D: LitI2_Byte 0
  loc_B3041F: ILdRf var_DC
  loc_B30422: CVarI4
  loc_B30426: PopAdLdVar
  loc_B30427: FMemLdRf unk_502BC1
  loc_B3042C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30431: FFree1Var var_A4 = ""
  loc_B30434: FLdRfVar var_A4
  loc_B30437: FLdPr Me
  loc_B3043A: MemLdRfVar from_stack_1.global_76
  loc_B3043D: NewIfNullPr clsconcepto
  loc_B30440: from_stack_1 = clsconcepto.DetaPers
  loc_B30445: LitI2_Byte 0
  loc_B30447: LitVar_Missing var_C4
  loc_B3044A: LitI2_Byte 0
  loc_B3044C: FLdVar var_A4
  loc_B30450: FMemLdRf unk_502BC1
  loc_B30455: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3045A: FFreeVar var_A4 = ""
  loc_B30461: FLdRfVar var_A4
  loc_B30464: FLdPr Me
  loc_B30467: MemLdRfVar from_stack_1.global_76
  loc_B3046A: NewIfNullPr clsconcepto
  loc_B3046D: from_stack_1 = clsconcepto.ExpeBole
  loc_B30472: LitI2_Byte 0
  loc_B30474: LitVar_Missing var_C4
  loc_B30477: LitI2_Byte 0
  loc_B30479: FLdVar var_A4
  loc_B3047D: FMemLdRf unk_502BC1
  loc_B30482: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30487: FFreeVar var_A4 = ""
  loc_B3048E: FLdRfVar var_E4
  loc_B30491: FLdPr Me
  loc_B30494: MemLdRfVar from_stack_1.global_76
  loc_B30497: NewIfNullPr clsconcepto
  loc_B3049A: from_stack_1 = clsconcepto.CapiDepa
  loc_B3049F: LitI2_Byte 0
  loc_B304A1: FLdPr Me
  loc_B304A4: MemLdI2 global_92
  loc_B304A7: CI4UI1
  loc_B304A8: FLdPr Me
  loc_B304AB: MemLdStr global_84
  loc_B304AE: AryLock
  loc_B304B1: Ary1LdPr
  loc_B304B2: MemLdRfVar from_stack_1.bLogos
  loc_B304B5: CVarRef
  loc_B304BA: LitI2_Byte &HFF
  loc_B304BC: FLdFPR8 var_E4
  loc_B304BF: CVarR8
  loc_B304C3: PopAdLdVar
  loc_B304C4: FMemLdRf unk_502BC1
  loc_B304C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B304CE: AryUnlock
  loc_B304D1: FLdRfVar var_E4
  loc_B304D4: FLdPr Me
  loc_B304D7: MemLdRfVar from_stack_1.global_76
  loc_B304DA: NewIfNullPr clsconcepto
  loc_B304DD: from_stack_1 = clsconcepto.DecaDepa
  loc_B304E2: LitI2_Byte 0
  loc_B304E4: FLdPr Me
  loc_B304E7: MemLdI2 global_92
  loc_B304EA: CI4UI1
  loc_B304EB: FLdPr Me
  loc_B304EE: MemLdStr global_84
  loc_B304F1: AryLock
  loc_B304F4: Ary1LdPr
  loc_B304F5: MemLdRfVar from_stack_1.global_56
  loc_B304F8: CVarRef
  loc_B304FD: LitI2_Byte &HFF
  loc_B304FF: FLdFPR8 var_E4
  loc_B30502: CVarR8
  loc_B30506: PopAdLdVar
  loc_B30507: FMemLdRf unk_502BC1
  loc_B3050C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30511: AryUnlock
  loc_B30514: FLdRfVar var_E4
  loc_B30517: FLdPr Me
  loc_B3051A: MemLdRfVar from_stack_1.global_76
  loc_B3051D: NewIfNullPr clsconcepto
  loc_B30520: from_stack_1 = clsconcepto.ExenDepa
  loc_B30525: LitI2_Byte 0
  loc_B30527: FLdPr Me
  loc_B3052A: MemLdI2 global_92
  loc_B3052D: CI4UI1
  loc_B3052E: FLdPr Me
  loc_B30531: MemLdStr global_84
  loc_B30534: AryLock
  loc_B30537: Ary1LdPr
  loc_B30538: MemLdRfVar from_stack_1.global_72
  loc_B3053B: CVarRef
  loc_B30540: LitI2_Byte &HFF
  loc_B30542: FLdFPR8 var_E4
  loc_B30545: CVarR8
  loc_B30549: PopAdLdVar
  loc_B3054A: FMemLdRf unk_502BC1
  loc_B3054F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30554: AryUnlock
  loc_B30557: FLdRfVar var_A4
  loc_B3055A: FLdPr Me
  loc_B3055D: MemLdRfVar from_stack_1.global_76
  loc_B30560: NewIfNullPr clsconcepto
  loc_B30563: from_stack_1 = clsconcepto.TotaDepa
  loc_B30568: LitI2_Byte 0
  loc_B3056A: FLdPr Me
  loc_B3056D: MemLdI2 global_92
  loc_B30570: CI4UI1
  loc_B30571: FLdPr Me
  loc_B30574: MemLdStr global_84
  loc_B30577: AryLock
  loc_B3057A: Ary1LdPr
  loc_B3057B: MemLdRfVar from_stack_1.global_80
  loc_B3057E: CVarRef
  loc_B30583: LitI2_Byte &HFF
  loc_B30585: FLdVar var_A4
  loc_B30589: FMemLdRf unk_502BC1
  loc_B3058E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B30593: AryUnlock
  loc_B30596: FFree1Var var_A4 = ""
  loc_B30599: LitI2_Byte 0
  loc_B3059B: FLdPr Me
  loc_B3059E: MemLdRfVar from_stack_1.global_88
  loc_B305A1: CVarRef
  loc_B305A6: LitI2_Byte &HFF
  loc_B305A8: FMemLdR4 var_90(56)
  loc_B305AD: CVarStr var_B4
  loc_B305B0: PopAdLdVar
  loc_B305B1: FLdPr Me
  loc_B305B4: MemLdRfVar from_stack_1.global_100
  loc_B305B7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B305BC: LitI4 0
  loc_B305C1: FStR4 var_90
  loc_B305C4: AryUnlock
  loc_B305C7: AryUnlock
  loc_B305CA: LitI2_Byte 1
  loc_B305CC: PopTmpLdAd2 var_C6
  loc_B305CF: FLdPr Me
  loc_B305D2: MemLdRfVar from_stack_1.global_76
  loc_B305D5: NewIfNullPr clsconcepto
  loc_B305D8: Call clsconcepto.Move(from_stack_1v)
  loc_B305DD: ExitProcHresult
End Function

Private Function Proc_215_34_C43AAC() 'C43AAC
  'Data Table: 502C50
  loc_C42E20: LitVarStr var_94, "<html>"
  loc_C42E25: PopAdLdVar
  loc_C42E26: FLdPr Me
  loc_C42E29: MemLdRfVar from_stack_1.global_60
  loc_C42E2C: LdPrVar
  loc_C42E2E: LateMemCall
  loc_C42E34: LitVarStr var_94, "<head>"
  loc_C42E39: PopAdLdVar
  loc_C42E3A: FLdPr Me
  loc_C42E3D: MemLdRfVar from_stack_1.global_60
  loc_C42E40: LdPrVar
  loc_C42E42: LateMemCall
  loc_C42E48: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C42E4D: PopAdLdVar
  loc_C42E4E: FLdPr Me
  loc_C42E51: MemLdRfVar from_stack_1.global_60
  loc_C42E54: LdPrVar
  loc_C42E56: LateMemCall
  loc_C42E5C: LitStr "<title>"
  loc_C42E5F: FLdRfVar var_A8
  loc_C42E62: FLdPr Me
  loc_C42E65:  = Me.Caption
  loc_C42E6A: ILdRf var_A8
  loc_C42E6D: ConcatStr
  loc_C42E6E: FStStrNoPop var_AC
  loc_C42E71: LitStr "</title>"
  loc_C42E74: ConcatStr
  loc_C42E75: CVarStr var_BC
  loc_C42E78: PopAdLdVar
  loc_C42E79: FLdPr Me
  loc_C42E7C: MemLdRfVar from_stack_1.global_60
  loc_C42E7F: LdPrVar
  loc_C42E81: LateMemCall
  loc_C42E87: FFreeStr var_A8 = ""
  loc_C42E8E: FFree1Var var_BC = ""
  loc_C42E91: LitVarStr var_94, "<style type=""text/css"">"
  loc_C42E96: PopAdLdVar
  loc_C42E97: FLdPr Me
  loc_C42E9A: MemLdRfVar from_stack_1.global_60
  loc_C42E9D: LdPrVar
  loc_C42E9F: LateMemCall
  loc_C42EA5: LitVarStr var_94, ".Titulo1 {"
  loc_C42EAA: PopAdLdVar
  loc_C42EAB: FLdPr Me
  loc_C42EAE: MemLdRfVar from_stack_1.global_60
  loc_C42EB1: LdPrVar
  loc_C42EB3: LateMemCall
  loc_C42EB9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C42EBE: PopAdLdVar
  loc_C42EBF: FLdPr Me
  loc_C42EC2: MemLdRfVar from_stack_1.global_60
  loc_C42EC5: LdPrVar
  loc_C42EC7: LateMemCall
  loc_C42ECD: LitVarStr var_94, " font-size: 18px;"
  loc_C42ED2: PopAdLdVar
  loc_C42ED3: FLdPr Me
  loc_C42ED6: MemLdRfVar from_stack_1.global_60
  loc_C42ED9: LdPrVar
  loc_C42EDB: LateMemCall
  loc_C42EE1: LitVarStr var_94, " font-weight: bold;"
  loc_C42EE6: PopAdLdVar
  loc_C42EE7: FLdPr Me
  loc_C42EEA: MemLdRfVar from_stack_1.global_60
  loc_C42EED: LdPrVar
  loc_C42EEF: LateMemCall
  loc_C42EF5: LitVarStr var_94, "}"
  loc_C42EFA: PopAdLdVar
  loc_C42EFB: FLdPr Me
  loc_C42EFE: MemLdRfVar from_stack_1.global_60
  loc_C42F01: LdPrVar
  loc_C42F03: LateMemCall
  loc_C42F09: LitVarStr var_94, ".Titulo2 {"
  loc_C42F0E: PopAdLdVar
  loc_C42F0F: FLdPr Me
  loc_C42F12: MemLdRfVar from_stack_1.global_60
  loc_C42F15: LdPrVar
  loc_C42F17: LateMemCall
  loc_C42F1D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C42F22: PopAdLdVar
  loc_C42F23: FLdPr Me
  loc_C42F26: MemLdRfVar from_stack_1.global_60
  loc_C42F29: LdPrVar
  loc_C42F2B: LateMemCall
  loc_C42F31: LitVarStr var_94, " font-size: 14px;"
  loc_C42F36: PopAdLdVar
  loc_C42F37: FLdPr Me
  loc_C42F3A: MemLdRfVar from_stack_1.global_60
  loc_C42F3D: LdPrVar
  loc_C42F3F: LateMemCall
  loc_C42F45: LitVarStr var_94, " font-weight: bold;"
  loc_C42F4A: PopAdLdVar
  loc_C42F4B: FLdPr Me
  loc_C42F4E: MemLdRfVar from_stack_1.global_60
  loc_C42F51: LdPrVar
  loc_C42F53: LateMemCall
  loc_C42F59: LitVarStr var_94, "}"
  loc_C42F5E: PopAdLdVar
  loc_C42F5F: FLdPr Me
  loc_C42F62: MemLdRfVar from_stack_1.global_60
  loc_C42F65: LdPrVar
  loc_C42F67: LateMemCall
  loc_C42F6D: LitVarStr var_94, ".Normal {"
  loc_C42F72: PopAdLdVar
  loc_C42F73: FLdPr Me
  loc_C42F76: MemLdRfVar from_stack_1.global_60
  loc_C42F79: LdPrVar
  loc_C42F7B: LateMemCall
  loc_C42F81: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C42F86: PopAdLdVar
  loc_C42F87: FLdPr Me
  loc_C42F8A: MemLdRfVar from_stack_1.global_60
  loc_C42F8D: LdPrVar
  loc_C42F8F: LateMemCall
  loc_C42F95: LitVarStr var_94, " font-size: 12px;"
  loc_C42F9A: PopAdLdVar
  loc_C42F9B: FLdPr Me
  loc_C42F9E: MemLdRfVar from_stack_1.global_60
  loc_C42FA1: LdPrVar
  loc_C42FA3: LateMemCall
  loc_C42FA9: LitVarStr var_94, " font-style: normal;"
  loc_C42FAE: PopAdLdVar
  loc_C42FAF: FLdPr Me
  loc_C42FB2: MemLdRfVar from_stack_1.global_60
  loc_C42FB5: LdPrVar
  loc_C42FB7: LateMemCall
  loc_C42FBD: LitVarStr var_94, " font-weight: normal;"
  loc_C42FC2: PopAdLdVar
  loc_C42FC3: FLdPr Me
  loc_C42FC6: MemLdRfVar from_stack_1.global_60
  loc_C42FC9: LdPrVar
  loc_C42FCB: LateMemCall
  loc_C42FD1: LitVarStr var_94, " font-variant: normal;"
  loc_C42FD6: PopAdLdVar
  loc_C42FD7: FLdPr Me
  loc_C42FDA: MemLdRfVar from_stack_1.global_60
  loc_C42FDD: LdPrVar
  loc_C42FDF: LateMemCall
  loc_C42FE5: LitVarStr var_94, "}"
  loc_C42FEA: PopAdLdVar
  loc_C42FEB: FLdPr Me
  loc_C42FEE: MemLdRfVar from_stack_1.global_60
  loc_C42FF1: LdPrVar
  loc_C42FF3: LateMemCall
  loc_C42FF9: LitVarStr var_94, ".Encabezado {"
  loc_C42FFE: PopAdLdVar
  loc_C42FFF: FLdPr Me
  loc_C43002: MemLdRfVar from_stack_1.global_60
  loc_C43005: LdPrVar
  loc_C43007: LateMemCall
  loc_C4300D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C43012: PopAdLdVar
  loc_C43013: FLdPr Me
  loc_C43016: MemLdRfVar from_stack_1.global_60
  loc_C43019: LdPrVar
  loc_C4301B: LateMemCall
  loc_C43021: LitVarStr var_94, " font-size: 11px;"
  loc_C43026: PopAdLdVar
  loc_C43027: FLdPr Me
  loc_C4302A: MemLdRfVar from_stack_1.global_60
  loc_C4302D: LdPrVar
  loc_C4302F: LateMemCall
  loc_C43035: LitVarStr var_94, " font-weight: bold;"
  loc_C4303A: PopAdLdVar
  loc_C4303B: FLdPr Me
  loc_C4303E: MemLdRfVar from_stack_1.global_60
  loc_C43041: LdPrVar
  loc_C43043: LateMemCall
  loc_C43049: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C4304E: PopAdLdVar
  loc_C4304F: FLdPr Me
  loc_C43052: MemLdRfVar from_stack_1.global_60
  loc_C43055: LdPrVar
  loc_C43057: LateMemCall
  loc_C4305D: LitVarStr var_94, "}"
  loc_C43062: PopAdLdVar
  loc_C43063: FLdPr Me
  loc_C43066: MemLdRfVar from_stack_1.global_60
  loc_C43069: LdPrVar
  loc_C4306B: LateMemCall
  loc_C43071: LitVarStr var_94, ".LineaDato {"
  loc_C43076: PopAdLdVar
  loc_C43077: FLdPr Me
  loc_C4307A: MemLdRfVar from_stack_1.global_60
  loc_C4307D: LdPrVar
  loc_C4307F: LateMemCall
  loc_C43085: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C4308A: PopAdLdVar
  loc_C4308B: FLdPr Me
  loc_C4308E: MemLdRfVar from_stack_1.global_60
  loc_C43091: LdPrVar
  loc_C43093: LateMemCall
  loc_C43099: LitVarStr var_94, " font-size: 10px;"
  loc_C4309E: PopAdLdVar
  loc_C4309F: FLdPr Me
  loc_C430A2: MemLdRfVar from_stack_1.global_60
  loc_C430A5: LdPrVar
  loc_C430A7: LateMemCall
  loc_C430AD: LitVarStr var_94, "}"
  loc_C430B2: PopAdLdVar
  loc_C430B3: FLdPr Me
  loc_C430B6: MemLdRfVar from_stack_1.global_60
  loc_C430B9: LdPrVar
  loc_C430BB: LateMemCall
  loc_C430C1: LitVarStr var_94, ".Totales {"
  loc_C430C6: PopAdLdVar
  loc_C430C7: FLdPr Me
  loc_C430CA: MemLdRfVar from_stack_1.global_60
  loc_C430CD: LdPrVar
  loc_C430CF: LateMemCall
  loc_C430D5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C430DA: PopAdLdVar
  loc_C430DB: FLdPr Me
  loc_C430DE: MemLdRfVar from_stack_1.global_60
  loc_C430E1: LdPrVar
  loc_C430E3: LateMemCall
  loc_C430E9: LitVarStr var_94, " font-size: 12px;"
  loc_C430EE: PopAdLdVar
  loc_C430EF: FLdPr Me
  loc_C430F2: MemLdRfVar from_stack_1.global_60
  loc_C430F5: LdPrVar
  loc_C430F7: LateMemCall
  loc_C430FD: LitVarStr var_94, " font-weight: bold;"
  loc_C43102: PopAdLdVar
  loc_C43103: FLdPr Me
  loc_C43106: MemLdRfVar from_stack_1.global_60
  loc_C43109: LdPrVar
  loc_C4310B: LateMemCall
  loc_C43111: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C43116: PopAdLdVar
  loc_C43117: FLdPr Me
  loc_C4311A: MemLdRfVar from_stack_1.global_60
  loc_C4311D: LdPrVar
  loc_C4311F: LateMemCall
  loc_C43125: LitVarStr var_94, "}"
  loc_C4312A: PopAdLdVar
  loc_C4312B: FLdPr Me
  loc_C4312E: MemLdRfVar from_stack_1.global_60
  loc_C43131: LdPrVar
  loc_C43133: LateMemCall
  loc_C43139: LitVarStr var_94, ".SubTotales {"
  loc_C4313E: PopAdLdVar
  loc_C4313F: FLdPr Me
  loc_C43142: MemLdRfVar from_stack_1.global_60
  loc_C43145: LdPrVar
  loc_C43147: LateMemCall
  loc_C4314D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C43152: PopAdLdVar
  loc_C43153: FLdPr Me
  loc_C43156: MemLdRfVar from_stack_1.global_60
  loc_C43159: LdPrVar
  loc_C4315B: LateMemCall
  loc_C43161: LitVarStr var_94, " font-size: 10px;"
  loc_C43166: PopAdLdVar
  loc_C43167: FLdPr Me
  loc_C4316A: MemLdRfVar from_stack_1.global_60
  loc_C4316D: LdPrVar
  loc_C4316F: LateMemCall
  loc_C43175: LitVarStr var_94, " font-weight: bold;"
  loc_C4317A: PopAdLdVar
  loc_C4317B: FLdPr Me
  loc_C4317E: MemLdRfVar from_stack_1.global_60
  loc_C43181: LdPrVar
  loc_C43183: LateMemCall
  loc_C43189: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_C4318E: PopAdLdVar
  loc_C4318F: FLdPr Me
  loc_C43192: MemLdRfVar from_stack_1.global_60
  loc_C43195: LdPrVar
  loc_C43197: LateMemCall
  loc_C4319D: LitVarStr var_94, "}"
  loc_C431A2: PopAdLdVar
  loc_C431A3: FLdPr Me
  loc_C431A6: MemLdRfVar from_stack_1.global_60
  loc_C431A9: LdPrVar
  loc_C431AB: LateMemCall
  loc_C431B1: LitVarStr var_94, ".SubTotales {"
  loc_C431B6: PopAdLdVar
  loc_C431B7: FLdPr Me
  loc_C431BA: MemLdRfVar from_stack_1.global_60
  loc_C431BD: LdPrVar
  loc_C431BF: LateMemCall
  loc_C431C5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C431CA: PopAdLdVar
  loc_C431CB: FLdPr Me
  loc_C431CE: MemLdRfVar from_stack_1.global_60
  loc_C431D1: LdPrVar
  loc_C431D3: LateMemCall
  loc_C431D9: LitVarStr var_94, " font-size: 10px;"
  loc_C431DE: PopAdLdVar
  loc_C431DF: FLdPr Me
  loc_C431E2: MemLdRfVar from_stack_1.global_60
  loc_C431E5: LdPrVar
  loc_C431E7: LateMemCall
  loc_C431ED: LitVarStr var_94, " font-weight: bold;"
  loc_C431F2: PopAdLdVar
  loc_C431F3: FLdPr Me
  loc_C431F6: MemLdRfVar from_stack_1.global_60
  loc_C431F9: LdPrVar
  loc_C431FB: LateMemCall
  loc_C43201: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C43206: PopAdLdVar
  loc_C43207: FLdPr Me
  loc_C4320A: MemLdRfVar from_stack_1.global_60
  loc_C4320D: LdPrVar
  loc_C4320F: LateMemCall
  loc_C43215: LitVarStr var_94, "}"
  loc_C4321A: PopAdLdVar
  loc_C4321B: FLdPr Me
  loc_C4321E: MemLdRfVar from_stack_1.global_60
  loc_C43221: LdPrVar
  loc_C43223: LateMemCall
  loc_C43229: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C4322E: PopAdLdVar
  loc_C4322F: FLdPr Me
  loc_C43232: MemLdRfVar from_stack_1.global_60
  loc_C43235: LdPrVar
  loc_C43237: LateMemCall
  loc_C4323D: LitVarStr var_94, "</style>"
  loc_C43242: PopAdLdVar
  loc_C43243: FLdPr Me
  loc_C43246: MemLdRfVar from_stack_1.global_60
  loc_C43249: LdPrVar
  loc_C4324B: LateMemCall
  loc_C43251: LitI4 0
  loc_C43256: FStStrCopy var_AC
  loc_C43259: FLdRfVar var_AC
  loc_C4325C: LitI4 0
  loc_C43261: FStStrCopy var_A8
  loc_C43264: FLdRfVar var_A8
  loc_C43267: LitI2_Byte 0
  loc_C43269: PopTmpLdAd2 var_BE
  loc_C4326C: FLdPr Me
  loc_C4326F: MemLdRfVar from_stack_1.global_60
  loc_C43272: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C43277: FFreeStr var_A8 = ""
  loc_C4327E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C43283: PopAdLdVar
  loc_C43284: FLdPr Me
  loc_C43287: MemLdRfVar from_stack_1.global_60
  loc_C4328A: LdPrVar
  loc_C4328C: LateMemCall
  loc_C43292: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C43297: PopAdLdVar
  loc_C43298: FLdPr Me
  loc_C4329B: MemLdRfVar from_stack_1.global_60
  loc_C4329E: LdPrVar
  loc_C432A0: LateMemCall
  loc_C432A6: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_C432AB: PopAdLdVar
  loc_C432AC: FLdPr Me
  loc_C432AF: MemLdRfVar from_stack_1.global_60
  loc_C432B2: LdPrVar
  loc_C432B4: LateMemCall
  loc_C432BA: FLdPr Me
  loc_C432BD: MemLdI2 bLogos
  loc_C432C0: BranchF loc_C43309
  loc_C432C3: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C432C6: LitI2_Byte &H5F
  loc_C432C8: CStrUI1
  loc_C432CA: FStStrNoPop var_A8
  loc_C432CD: ConcatStr
  loc_C432CE: FStStrNoPop var_AC
  loc_C432D1: LitStr """ height="""
  loc_C432D4: ConcatStr
  loc_C432D5: FStStrNoPop var_C4
  loc_C432D8: LitI2_Byte &H3C
  loc_C432DA: CStrUI1
  loc_C432DC: FStStrNoPop var_C8
  loc_C432DF: ConcatStr
  loc_C432E0: FStStrNoPop var_CC
  loc_C432E3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_C432E6: ConcatStr
  loc_C432E7: CVarStr var_BC
  loc_C432EA: PopAdLdVar
  loc_C432EB: FLdPr Me
  loc_C432EE: MemLdRfVar from_stack_1.global_60
  loc_C432F1: LdPrVar
  loc_C432F3: LateMemCall
  loc_C432F9: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C43306: FFree1Var var_BC = ""
  loc_C43309: LitStr "    <br>"
  loc_C4330C: LitStr "Municipalidad de Guaymallén"
  loc_C4330F: ConcatStr
  loc_C43310: FStStrNoPop var_A8
  loc_C43313: LitStr "</p>"
  loc_C43316: ConcatStr
  loc_C43317: CVarStr var_BC
  loc_C4331A: PopAdLdVar
  loc_C4331B: FLdPr Me
  loc_C4331E: MemLdRfVar from_stack_1.global_60
  loc_C43321: LdPrVar
  loc_C43323: LateMemCall
  loc_C43329: FFree1Str var_A8
  loc_C4332C: FFree1Var var_BC = ""
  loc_C4332F: LitStr "    <p>"
  loc_C43332: FLdRfVar var_A8
  loc_C43335: FLdPr Me
  loc_C43338:  = Me.Caption
  loc_C4333D: ILdRf var_A8
  loc_C43340: ConcatStr
  loc_C43341: FStStrNoPop var_AC
  loc_C43344: LitStr "</p></th>"
  loc_C43347: ConcatStr
  loc_C43348: CVarStr var_BC
  loc_C4334B: PopAdLdVar
  loc_C4334C: FLdPr Me
  loc_C4334F: MemLdRfVar from_stack_1.global_60
  loc_C43352: LdPrVar
  loc_C43354: LateMemCall
  loc_C4335A: FFreeStr var_A8 = ""
  loc_C43361: FFree1Var var_BC = ""
  loc_C43364: LitVarStr var_94, "  </tr>"
  loc_C43369: PopAdLdVar
  loc_C4336A: FLdPr Me
  loc_C4336D: MemLdRfVar from_stack_1.global_60
  loc_C43370: LdPrVar
  loc_C43372: LateMemCall
  loc_C43378: LitVarStr var_94, "  <tr>"
  loc_C4337D: PopAdLdVar
  loc_C4337E: FLdPr Me
  loc_C43381: MemLdRfVar from_stack_1.global_60
  loc_C43384: LdPrVar
  loc_C43386: LateMemCall
  loc_C4338C: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C43391: PopAdLdVar
  loc_C43392: FLdPr Me
  loc_C43395: MemLdRfVar from_stack_1.global_60
  loc_C43398: LdPrVar
  loc_C4339A: LateMemCall
  loc_C433A0: LitVarStr var_94, "  </tr>"
  loc_C433A5: PopAdLdVar
  loc_C433A6: FLdPr Me
  loc_C433A9: MemLdRfVar from_stack_1.global_60
  loc_C433AC: LdPrVar
  loc_C433AE: LateMemCall
  loc_C433B4: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C433B9: PopAdLdVar
  loc_C433BA: FLdPr Me
  loc_C433BD: MemLdRfVar from_stack_1.global_60
  loc_C433C0: LdPrVar
  loc_C433C2: LateMemCall
  loc_C433C8: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_C433CB: FLdPr Me
  loc_C433CE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C433D1: FStAdFunc var_D0
  loc_C433D4: FLdPr var_D0
  loc_C433D7: LateIdLdVar var_BC DispID_15 0
  loc_C433DE: CStrVarTmp
  loc_C433DF: FStStrNoPop var_A8
  loc_C433E2: ConcatStr
  loc_C433E3: FStStrNoPop var_AC
  loc_C433E6: LitStr "<br>"
  loc_C433E9: ConcatStr
  loc_C433EA: CVarStr var_E0
  loc_C433ED: PopAdLdVar
  loc_C433EE: FLdPr Me
  loc_C433F1: MemLdRfVar from_stack_1.global_60
  loc_C433F4: LdPrVar
  loc_C433F6: LateMemCall
  loc_C433FC: FFreeStr var_A8 = ""
  loc_C43403: FFree1Ad var_D0
  loc_C43406: FFreeVar var_BC = ""
  loc_C4340D: LitStr "                                      <strong>Hasta: </strong>"
  loc_C43410: FLdPr Me
  loc_C43413: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C43416: FStAdFunc var_D0
  loc_C43419: FLdPr var_D0
  loc_C4341C: LateIdLdVar var_BC DispID_15 0
  loc_C43423: CStrVarTmp
  loc_C43424: FStStrNoPop var_A8
  loc_C43427: ConcatStr
  loc_C43428: FStStrNoPop var_AC
  loc_C4342B: LitStr "<br></td>"
  loc_C4342E: ConcatStr
  loc_C4342F: CVarStr var_E0
  loc_C43432: PopAdLdVar
  loc_C43433: FLdPr Me
  loc_C43436: MemLdRfVar from_stack_1.global_60
  loc_C43439: LdPrVar
  loc_C4343B: LateMemCall
  loc_C43441: FFreeStr var_A8 = ""
  loc_C43448: FFree1Ad var_D0
  loc_C4344B: FFreeVar var_BC = ""
  loc_C43452: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_C43457: PopAdLdVar
  loc_C43458: FLdPr Me
  loc_C4345B: MemLdRfVar from_stack_1.global_60
  loc_C4345E: LdPrVar
  loc_C43460: LateMemCall
  loc_C43466: FLdPr Me
  loc_C43469: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C4346C: FStAdFunc var_D0
  loc_C4346F: FLdPr var_D0
  loc_C43472: LateIdLdVar var_BC DispID_0 0
  loc_C43479: CStrVarTmp
  loc_C4347A: FStStrNoPop var_A8
  loc_C4347D: LitStr vbNullString
  loc_C43480: NeStr
  loc_C43482: FLdPr Me
  loc_C43485: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C43488: FStAdFunc var_E4
  loc_C4348B: FLdPr var_E4
  loc_C4348E: LateIdLdVar var_E0 DispID_0 0
  loc_C43495: CStrVarTmp
  loc_C43496: FStStrNoPop var_AC
  loc_C43499: LitStr vbNullString
  loc_C4349C: NeStr
  loc_C4349E: OrI4
  loc_C4349F: FFreeStr var_A8 = ""
  loc_C434A6: FFreeAd var_D0 = ""
  loc_C434AD: FFreeVar var_BC = ""
  loc_C434B4: BranchF loc_C435EA
  loc_C434B7: FLdPr Me
  loc_C434BA: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C434BD: FStAdFunc var_D0
  loc_C434C0: FLdPr var_D0
  loc_C434C3: LateIdLdVar var_BC DispID_0 0
  loc_C434CA: PopAd
  loc_C434CC: FLdPr Me
  loc_C434CF: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C434D2: FStAdFunc var_E4
  loc_C434D5: FLdPr var_E4
  loc_C434D8: LateIdLdVar var_E0 DispID_0 0
  loc_C434DF: PopAd
  loc_C434E1: LitVarStr var_124, "                               "
  loc_C434E6: LitVarStr var_A4, vbNullString
  loc_C434EB: FStVarCopyObj var_104
  loc_C434EE: FLdRfVar var_104
  loc_C434F1: LitStr "<strong>Desde Grupo: </strong>"
  loc_C434F4: FLdRfVar var_E0
  loc_C434F7: CStrVarTmp
  loc_C434F8: FStStrNoPop var_AC
  loc_C434FB: ConcatStr
  loc_C434FC: FStStrNoPop var_C4
  loc_C434FF: LitStr "<br>"
  loc_C43502: ConcatStr
  loc_C43503: CVarStr var_F4
  loc_C43506: FLdRfVar var_BC
  loc_C43509: CStrVarTmp
  loc_C4350A: FStStrNoPop var_A8
  loc_C4350D: LitStr vbNullString
  loc_C43510: NeStr
  loc_C43512: CVarBoolI2 var_94
  loc_C43516: FLdRfVar var_114
  loc_C43519: ImpAdCallFPR4  = IIf(, , )
  loc_C4351E: FLdRfVar var_114
  loc_C43521: ConcatVar var_134
  loc_C43525: PopAdLdVar
  loc_C43526: FLdPr Me
  loc_C43529: MemLdRfVar from_stack_1.global_60
  loc_C4352C: LdPrVar
  loc_C4352E: LateMemCall
  loc_C43534: FFreeStr var_A8 = "": var_AC = ""
  loc_C4353D: FFreeAd var_D0 = ""
  loc_C43544: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_C43555: FLdPr Me
  loc_C43558: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C4355B: FStAdFunc var_D0
  loc_C4355E: FLdPr var_D0
  loc_C43561: LateIdLdVar var_BC DispID_0 0
  loc_C43568: PopAd
  loc_C4356A: FLdPr Me
  loc_C4356D: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C43570: FStAdFunc var_E4
  loc_C43573: FLdPr var_E4
  loc_C43576: LateIdLdVar var_E0 DispID_0 0
  loc_C4357D: PopAd
  loc_C4357F: LitVarStr var_124, "                               "
  loc_C43584: LitVarStr var_A4, "&nbsp;"
  loc_C43589: FStVarCopyObj var_104
  loc_C4358C: FLdRfVar var_104
  loc_C4358F: LitStr "<strong>Hasta Grupo: </strong>"
  loc_C43592: FLdRfVar var_E0
  loc_C43595: CStrVarTmp
  loc_C43596: FStStrNoPop var_AC
  loc_C43599: ConcatStr
  loc_C4359A: CVarStr var_F4
  loc_C4359D: FLdRfVar var_BC
  loc_C435A0: CStrVarTmp
  loc_C435A1: FStStrNoPop var_A8
  loc_C435A4: LitStr vbNullString
  loc_C435A7: NeStr
  loc_C435A9: CVarBoolI2 var_94
  loc_C435AD: FLdRfVar var_114
  loc_C435B0: ImpAdCallFPR4  = IIf(, , )
  loc_C435B5: FLdRfVar var_114
  loc_C435B8: ConcatVar var_134
  loc_C435BC: PopAdLdVar
  loc_C435BD: FLdPr Me
  loc_C435C0: MemLdRfVar from_stack_1.global_60
  loc_C435C3: LdPrVar
  loc_C435C5: LateMemCall
  loc_C435CB: FFreeStr var_A8 = ""
  loc_C435D2: FFreeAd var_D0 = ""
  loc_C435D9: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_C435EA: LitVarStr var_94, " </td>"
  loc_C435EF: PopAdLdVar
  loc_C435F0: FLdPr Me
  loc_C435F3: MemLdRfVar from_stack_1.global_60
  loc_C435F6: LdPrVar
  loc_C435F8: LateMemCall
  loc_C435FE: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_C43603: PopAdLdVar
  loc_C43604: FLdPr Me
  loc_C43607: MemLdRfVar from_stack_1.global_60
  loc_C4360A: LdPrVar
  loc_C4360C: LateMemCall
  loc_C43612: FLdPr Me
  loc_C43615: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C43618: FStAdFunc var_D0
  loc_C4361B: FLdPr var_D0
  loc_C4361E: LateIdLdVar var_BC DispID_22 0
  loc_C43625: CStrVarTmp
  loc_C43626: FStStrNoPop var_A8
  loc_C43629: LitStr vbNullString
  loc_C4362C: NeStr
  loc_C4362E: FLdPr Me
  loc_C43631: VCallAd Control_ID_CodiConcHastaMsk
  loc_C43634: FStAdFunc var_E4
  loc_C43637: FLdPr var_E4
  loc_C4363A: LateIdLdVar var_E0 DispID_22 0
  loc_C43641: CStrVarTmp
  loc_C43642: FStStrNoPop var_AC
  loc_C43645: LitStr vbNullString
  loc_C43648: NeStr
  loc_C4364A: OrI4
  loc_C4364B: FFreeStr var_A8 = ""
  loc_C43652: FFreeAd var_D0 = ""
  loc_C43659: FFreeVar var_BC = ""
  loc_C43660: BranchF loc_C43796
  loc_C43663: FLdPr Me
  loc_C43666: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C43669: FStAdFunc var_D0
  loc_C4366C: FLdPr var_D0
  loc_C4366F: LateIdLdVar var_BC DispID_22 0
  loc_C43676: PopAd
  loc_C43678: FLdPr Me
  loc_C4367B: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C4367E: FStAdFunc var_E4
  loc_C43681: FLdPr var_E4
  loc_C43684: LateIdLdVar var_E0 DispID_22 0
  loc_C4368B: PopAd
  loc_C4368D: LitVarStr var_124, "                               "
  loc_C43692: LitVarStr var_A4, vbNullString
  loc_C43697: FStVarCopyObj var_104
  loc_C4369A: FLdRfVar var_104
  loc_C4369D: LitStr "<strong>Desde Concepto: </strong>"
  loc_C436A0: FLdRfVar var_E0
  loc_C436A3: CStrVarTmp
  loc_C436A4: FStStrNoPop var_AC
  loc_C436A7: ConcatStr
  loc_C436A8: FStStrNoPop var_C4
  loc_C436AB: LitStr "<br>"
  loc_C436AE: ConcatStr
  loc_C436AF: CVarStr var_F4
  loc_C436B2: FLdRfVar var_BC
  loc_C436B5: CStrVarTmp
  loc_C436B6: FStStrNoPop var_A8
  loc_C436B9: LitStr vbNullString
  loc_C436BC: NeStr
  loc_C436BE: CVarBoolI2 var_94
  loc_C436C2: FLdRfVar var_114
  loc_C436C5: ImpAdCallFPR4  = IIf(, , )
  loc_C436CA: FLdRfVar var_114
  loc_C436CD: ConcatVar var_134
  loc_C436D1: PopAdLdVar
  loc_C436D2: FLdPr Me
  loc_C436D5: MemLdRfVar from_stack_1.global_60
  loc_C436D8: LdPrVar
  loc_C436DA: LateMemCall
  loc_C436E0: FFreeStr var_A8 = "": var_AC = ""
  loc_C436E9: FFreeAd var_D0 = ""
  loc_C436F0: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_C43701: FLdPr Me
  loc_C43704: VCallAd Control_ID_CodiConcHastaMsk
  loc_C43707: FStAdFunc var_D0
  loc_C4370A: FLdPr var_D0
  loc_C4370D: LateIdLdVar var_BC DispID_22 0
  loc_C43714: PopAd
  loc_C43716: FLdPr Me
  loc_C43719: VCallAd Control_ID_CodiConcHastaMsk
  loc_C4371C: FStAdFunc var_E4
  loc_C4371F: FLdPr var_E4
  loc_C43722: LateIdLdVar var_E0 DispID_22 0
  loc_C43729: PopAd
  loc_C4372B: LitVarStr var_124, "                               "
  loc_C43730: LitVarStr var_A4, "&nbsp;"
  loc_C43735: FStVarCopyObj var_104
  loc_C43738: FLdRfVar var_104
  loc_C4373B: LitStr "<strong>Hasta Concepto: </strong>"
  loc_C4373E: FLdRfVar var_E0
  loc_C43741: CStrVarTmp
  loc_C43742: FStStrNoPop var_AC
  loc_C43745: ConcatStr
  loc_C43746: CVarStr var_F4
  loc_C43749: FLdRfVar var_BC
  loc_C4374C: CStrVarTmp
  loc_C4374D: FStStrNoPop var_A8
  loc_C43750: LitStr vbNullString
  loc_C43753: NeStr
  loc_C43755: CVarBoolI2 var_94
  loc_C43759: FLdRfVar var_114
  loc_C4375C: ImpAdCallFPR4  = IIf(, , )
  loc_C43761: FLdRfVar var_114
  loc_C43764: ConcatVar var_134
  loc_C43768: PopAdLdVar
  loc_C43769: FLdPr Me
  loc_C4376C: MemLdRfVar from_stack_1.global_60
  loc_C4376F: LdPrVar
  loc_C43771: LateMemCall
  loc_C43777: FFreeStr var_A8 = ""
  loc_C4377E: FFreeAd var_D0 = ""
  loc_C43785: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_C43796: FLdRfVar var_A8
  loc_C43799: FLdPr Me
  loc_C4379C: VCallAd Control_ID_ExCodiConcTxt
  loc_C4379F: FStAdFunc var_D0
  loc_C437A2: FLdPr var_D0
  loc_C437A5:  = Me.Text
  loc_C437AA: ILdRf var_A8
  loc_C437AD: LitStr vbNullString
  loc_C437B0: NeStr
  loc_C437B2: FFree1Str var_A8
  loc_C437B5: FFree1Ad var_D0
  loc_C437B8: BranchF loc_C43824
  loc_C437BB: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C437C0: PopAdLdVar
  loc_C437C1: FLdPr Me
  loc_C437C4: MemLdRfVar from_stack_1.global_60
  loc_C437C7: LdPrVar
  loc_C437C9: LateMemCall
  loc_C437CF: LitStr "    <td align=""left"" valign=""top""><strong>No incluye los siguientes conceptos: </strong>"
  loc_C437D2: FLdRfVar var_A8
  loc_C437D5: FLdPr Me
  loc_C437D8: VCallAd Control_ID_ExCodiConcTxt
  loc_C437DB: FStAdFunc var_D0
  loc_C437DE: FLdPr var_D0
  loc_C437E1:  = Me.Text
  loc_C437E6: ILdRf var_A8
  loc_C437E9: ConcatStr
  loc_C437EA: FStStrNoPop var_AC
  loc_C437ED: LitStr "<br>"
  loc_C437F0: ConcatStr
  loc_C437F1: CVarStr var_BC
  loc_C437F4: PopAdLdVar
  loc_C437F5: FLdPr Me
  loc_C437F8: MemLdRfVar from_stack_1.global_60
  loc_C437FB: LdPrVar
  loc_C437FD: LateMemCall
  loc_C43803: FFreeStr var_A8 = ""
  loc_C4380A: FFree1Ad var_D0
  loc_C4380D: FFree1Var var_BC = ""
  loc_C43810: LitVarStr var_94, "  </tr>"
  loc_C43815: PopAdLdVar
  loc_C43816: FLdPr Me
  loc_C43819: MemLdRfVar from_stack_1.global_60
  loc_C4381C: LdPrVar
  loc_C4381E: LateMemCall
  loc_C43824: LitVarStr var_94, " </td>"
  loc_C43829: PopAdLdVar
  loc_C4382A: FLdPr Me
  loc_C4382D: MemLdRfVar from_stack_1.global_60
  loc_C43830: LdPrVar
  loc_C43832: LateMemCall
  loc_C43838: LitVarStr var_94, "  </tr>"
  loc_C4383D: PopAdLdVar
  loc_C4383E: FLdPr Me
  loc_C43841: MemLdRfVar from_stack_1.global_60
  loc_C43844: LdPrVar
  loc_C43846: LateMemCall
  loc_C4384C: LitVarStr var_94, "</table>"
  loc_C43851: PopAdLdVar
  loc_C43852: FLdPr Me
  loc_C43855: MemLdRfVar from_stack_1.global_60
  loc_C43858: LdPrVar
  loc_C4385A: LateMemCall
  loc_C43860: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C43865: PopAdLdVar
  loc_C43866: FLdPr Me
  loc_C43869: MemLdRfVar from_stack_1.global_60
  loc_C4386C: LdPrVar
  loc_C4386E: LateMemCall
  loc_C43874: LitVarStr var_94, "  <thead>"
  loc_C43879: PopAdLdVar
  loc_C4387A: FLdPr Me
  loc_C4387D: MemLdRfVar from_stack_1.global_60
  loc_C43880: LdPrVar
  loc_C43882: LateMemCall
  loc_C43888: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C4388D: PopAdLdVar
  loc_C4388E: FLdPr Me
  loc_C43891: MemLdRfVar from_stack_1.global_60
  loc_C43894: LdPrVar
  loc_C43896: LateMemCall
  loc_C4389C: FLdRfVar var_BE
  loc_C4389F: FLdPr Me
  loc_C438A2: VCallAd Control_ID_AnaliticoOpt
  loc_C438A5: FStAdFunc var_D0
  loc_C438A8: FLdPr var_D0
  loc_C438AB:  = Me.Value
  loc_C438B0: LitVarStr var_144, "    <th colspan="""
  loc_C438B5: LitVarI2 var_E0, 1
  loc_C438BA: LitVarI2 var_BC, 5
  loc_C438BF: FLdI2 var_BE
  loc_C438C2: CVarBoolI2 var_94
  loc_C438C6: FLdRfVar var_F4
  loc_C438C9: ImpAdCallFPR4  = IIf(, , )
  loc_C438CE: FLdRfVar var_F4
  loc_C438D1: ConcatVar var_104
  loc_C438D5: LitVarStr var_154, """>Concepto</th>"
  loc_C438DA: ConcatVar var_114
  loc_C438DE: PopAdLdVar
  loc_C438DF: FLdPr Me
  loc_C438E2: MemLdRfVar from_stack_1.global_60
  loc_C438E5: LdPrVar
  loc_C438E7: LateMemCall
  loc_C438ED: FFree1Ad var_D0
  loc_C438F0: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_F4 = "": var_104 = ""
  loc_C438FF: FLdRfVar var_BE
  loc_C43902: FLdPr Me
  loc_C43905: VCallAd Control_ID_AnaliticoOpt
  loc_C43908: FStAdFunc var_D0
  loc_C4390B: FLdPr var_D0
  loc_C4390E:  = Me.Value
  loc_C43913: LitVarStr var_144, "    <th colspan="""
  loc_C43918: LitVarI2 var_E0, 1
  loc_C4391D: LitVarI2 var_BC, 4
  loc_C43922: FLdI2 var_BE
  loc_C43925: CVarBoolI2 var_94
  loc_C43929: FLdRfVar var_F4
  loc_C4392C: ImpAdCallFPR4  = IIf(, , )
  loc_C43931: FLdRfVar var_F4
  loc_C43934: ConcatVar var_104
  loc_C43938: LitVarStr var_154, """>Cuenta Contable</th>"
  loc_C4393D: ConcatVar var_114
  loc_C43941: PopAdLdVar
  loc_C43942: FLdPr Me
  loc_C43945: MemLdRfVar from_stack_1.global_60
  loc_C43948: LdPrVar
  loc_C4394A: LateMemCall
  loc_C43950: FFree1Ad var_D0
  loc_C43953: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_F4 = "": var_104 = ""
  loc_C43962: LitVarStr var_94, "    <th>Importe</th>"
  loc_C43967: PopAdLdVar
  loc_C43968: FLdPr Me
  loc_C4396B: MemLdRfVar from_stack_1.global_60
  loc_C4396E: LdPrVar
  loc_C43970: LateMemCall
  loc_C43976: LitVarStr var_94, "  </tr>"
  loc_C4397B: PopAdLdVar
  loc_C4397C: FLdPr Me
  loc_C4397F: MemLdRfVar from_stack_1.global_60
  loc_C43982: LdPrVar
  loc_C43984: LateMemCall
  loc_C4398A: FLdRfVar var_BE
  loc_C4398D: FLdPr Me
  loc_C43990: VCallAd Control_ID_AnaliticoOpt
  loc_C43993: FStAdFunc var_D0
  loc_C43996: FLdPr var_D0
  loc_C43999:  = Me.Value
  loc_C4399E: FLdI2 var_BE
  loc_C439A1: FFree1Ad var_D0
  loc_C439A4: BranchF loc_C43A97
  loc_C439A7: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C439AC: PopAdLdVar
  loc_C439AD: FLdPr Me
  loc_C439B0: MemLdRfVar from_stack_1.global_60
  loc_C439B3: LdPrVar
  loc_C439B5: LateMemCall
  loc_C439BB: LitVarStr var_94, "    <th>Fecha</th>"
  loc_C439C0: PopAdLdVar
  loc_C439C1: FLdPr Me
  loc_C439C4: MemLdRfVar from_stack_1.global_60
  loc_C439C7: LdPrVar
  loc_C439C9: LateMemCall
  loc_C439CF: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_C439D4: PopAdLdVar
  loc_C439D5: FLdPr Me
  loc_C439D8: MemLdRfVar from_stack_1.global_60
  loc_C439DB: LdPrVar
  loc_C439DD: LateMemCall
  loc_C439E3: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C439E8: PopAdLdVar
  loc_C439E9: FLdPr Me
  loc_C439EC: MemLdRfVar from_stack_1.global_60
  loc_C439EF: LdPrVar
  loc_C439F1: LateMemCall
  loc_C439F7: LitVarStr var_94, "    <th>Boleto</th>"
  loc_C439FC: PopAdLdVar
  loc_C439FD: FLdPr Me
  loc_C43A00: MemLdRfVar from_stack_1.global_60
  loc_C43A03: LdPrVar
  loc_C43A05: LateMemCall
  loc_C43A0B: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C43A10: PopAdLdVar
  loc_C43A11: FLdPr Me
  loc_C43A14: MemLdRfVar from_stack_1.global_60
  loc_C43A17: LdPrVar
  loc_C43A19: LateMemCall
  loc_C43A1F: LitVarStr var_94, "    <th>Exped.</th>"
  loc_C43A24: PopAdLdVar
  loc_C43A25: FLdPr Me
  loc_C43A28: MemLdRfVar from_stack_1.global_60
  loc_C43A2B: LdPrVar
  loc_C43A2D: LateMemCall
  loc_C43A33: LitVarStr var_94, "    <th>Capital</th>"
  loc_C43A38: PopAdLdVar
  loc_C43A39: FLdPr Me
  loc_C43A3C: MemLdRfVar from_stack_1.global_60
  loc_C43A3F: LdPrVar
  loc_C43A41: LateMemCall
  loc_C43A47: LitVarStr var_94, "    <th>Desc. de<br>capital</th>"
  loc_C43A4C: PopAdLdVar
  loc_C43A4D: FLdPr Me
  loc_C43A50: MemLdRfVar from_stack_1.global_60
  loc_C43A53: LdPrVar
  loc_C43A55: LateMemCall
  loc_C43A5B: LitVarStr var_94, "    <th>Exen.</th>"
  loc_C43A60: PopAdLdVar
  loc_C43A61: FLdPr Me
  loc_C43A64: MemLdRfVar from_stack_1.global_60
  loc_C43A67: LdPrVar
  loc_C43A69: LateMemCall
  loc_C43A6F: LitVarStr var_94, "    <th>Total</th>"
  loc_C43A74: PopAdLdVar
  loc_C43A75: FLdPr Me
  loc_C43A78: MemLdRfVar from_stack_1.global_60
  loc_C43A7B: LdPrVar
  loc_C43A7D: LateMemCall
  loc_C43A83: LitVarStr var_94, "  </tr>"
  loc_C43A88: PopAdLdVar
  loc_C43A89: FLdPr Me
  loc_C43A8C: MemLdRfVar from_stack_1.global_60
  loc_C43A8F: LdPrVar
  loc_C43A91: LateMemCall
  loc_C43A97: LitVarStr var_94, "  </thead>"
  loc_C43A9C: PopAdLdVar
  loc_C43A9D: FLdPr Me
  loc_C43AA0: MemLdRfVar from_stack_1.global_60
  loc_C43AA3: LdPrVar
  loc_C43AA5: LateMemCall
  loc_C43AAB: ExitProcHresult
End Function

Private Function Proc_215_35_A0C7C8() 'A0C7C8
  'Data Table: 502C50
  loc_A0C788: LitVarStr var_94, "</table>"
  loc_A0C78D: PopAdLdVar
  loc_A0C78E: FLdPr Me
  loc_A0C791: MemLdRfVar from_stack_1.global_60
  loc_A0C794: LdPrVar
  loc_A0C796: LateMemCall
  loc_A0C79C: LitVarStr var_94, "</body>"
  loc_A0C7A1: PopAdLdVar
  loc_A0C7A2: FLdPr Me
  loc_A0C7A5: MemLdRfVar from_stack_1.global_60
  loc_A0C7A8: LdPrVar
  loc_A0C7AA: LateMemCall
  loc_A0C7B0: LitVarStr var_94, "</html>"
  loc_A0C7B5: PopAdLdVar
  loc_A0C7B6: FLdPr Me
  loc_A0C7B9: MemLdRfVar from_stack_1.global_60
  loc_A0C7BC: LdPrVar
  loc_A0C7BE: LateMemCall
  loc_A0C7C4: ExitProcHresult
End Function
