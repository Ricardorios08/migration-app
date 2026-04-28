VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeAforosporConcepto
  Caption = "Listado de Aforos por Concepto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeAforosporConcepto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9972
  ClientHeight = 8280
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
  Begin VB.TextBox Text1
    Left = 0
    Top = 6720
    Width = 9615
    Height = 1095
    Enabled = 0   'False
    Text = "rptListadodeAforosporConcepto.frx":08CA
    TabIndex = 24
    MultiLine = -1  'True
    ScrollBars = 2
  End
  Begin VB.Frame Frame5
    Caption = "Buscar por:"
    Left = 360
    Top = 360
    Width = 7455
    Height = 855
    TabIndex = 23
    Begin VB.OptionButton PagoOpt
      Caption = "Pago"
      Left = 4440
      Top = 360
      Width = 975
      Height = 375
      TabIndex = 1
    End
    Begin VB.OptionButton AforoOpt
      Caption = "Aforo"
      Left = 1800
      Top = 360
      Width = 975
      Height = 300
      TabIndex = 0
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 8025
    Width = 9975
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptListadodeAforosporConcepto.frx":09C8
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 5640
    Width = 855
    Height = 735
    TabIndex = 12
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
    Picture = "rptListadodeAforosporConcepto.frx":0A48
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeAforosporConcepto.frx":0C9A
    Left = 9120
    Top = 5640
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4200
    Top = 5400
    Width = 3495
    Height = 1215
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 25
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 0
    Top = 5400
    Width = 4095
    Height = 1215
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9735
    Height = 5415
    TabIndex = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox MostrarRubrosChk
      Caption = "Mostrar Rubros y Subrubros"
      Left = 1440
      Top = 3360
      Width = 3615
      Height = 375
      TabIndex = 32
    End
    Begin VB.Frame FechasFra
      Caption = "Fecha de "
      Left = 240
      Top = 1320
      Width = 7455
      Height = 1095
      TabIndex = 18
      Begin MSMask.MaskEdBox DesdeMsk
        Left = 1680
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptListadodeAforosporConcepto.frx":0CFE
      End
      Begin MSMask.MaskEdBox HastaMsk
        Left = 5160
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeAforosporConcepto.frx":0DAE
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 840
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 20
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
        Left = 4380
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 19
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7920
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 11
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 2760
      Width = 1215
      Height = 360
      TabIndex = 4
      OleObjectBlob = "rptListadodeAforosporConcepto.frx":0E5E
    End
    Begin MSMask.MaskEdBox CodiSubrMsk
      Left = 1425
      Top = 4920
      Width = 1695
      Height = 420
      TabIndex = 7
      OleObjectBlob = "rptListadodeAforosporConcepto.frx":0EF6
    End
    Begin MSMask.MaskEdBox CodiRubrMsk
      Left = 1425
      Top = 4320
      Width = 1215
      Height = 420
      TabIndex = 6
      OleObjectBlob = "rptListadodeAforosporConcepto.frx":0F94
    End
    Begin MSMask.MaskEdBox CodiRamoMsk
      Left = 1425
      Top = 3720
      Width = 1215
      Height = 420
      TabIndex = 5
      OleObjectBlob = "rptListadodeAforosporConcepto.frx":102C
    End
    Begin VB.Label DetaSubrLbl
      ForeColor = &HFF0000&
      Left = 3225
      Top = 4920
      Width = 7410
      Height = 420
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiSubrLbl
      Caption = "Sub Rubro:"
      Left = 120
      Top = 4920
      Width = 1215
      Height = 300
      TabIndex = 30
      Alignment = 1 'Right Justify
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
    Begin VB.Label DetaRubrLbl
      ForeColor = &HFF0000&
      Left = 2760
      Top = 4320
      Width = 6810
      Height = 420
      TabIndex = 29
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiRubrLbl
      Caption = "Rubro:"
      Left = 615
      Top = 4320
      Width = 720
      Height = 300
      TabIndex = 28
      Alignment = 1 'Right Justify
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
    Begin VB.Label DetaRamoLbl
      ForeColor = &HFF0000&
      Left = 2760
      Top = 3720
      Width = 6810
      Height = 420
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiRamoLbl
      Caption = "Ramo:"
      Left = 630
      Top = 3720
      Width = 705
      Height = 300
      TabIndex = 26
      Alignment = 1 'Right Justify
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
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 270
      Top = 2760
      Width = 1095
      Height = 300
      TabIndex = 22
      Alignment = 1 'Right Justify
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
    Begin VB.Label DetaConcLbl
      Left = 2760
      Top = 2760
      Width = 6855
      Height = 375
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 5880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptListadodeAforosporConcepto.frx":10BA
  End
End

Attribute VB_Name = "rptListadodeAforosporConcepto"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdNueva_Click() 'B17DC0
  'Data Table: 4FD9E0
  loc_B17B5C: LitI2_Byte 0
  loc_B17B5E: FLdPr Me
  loc_B17B61: MemStI2 bGenerado
  loc_B17B64: LitI2_Byte &HFF
  loc_B17B66: FLdPr Me
  loc_B17B69: MemStI2 bLogos
  loc_B17B6C: LitI2_Byte 0
  loc_B17B6E: ILdRf Me
  loc_B17B71: CastAd
  loc_B17B74: FStAdFunc var_88
  loc_B17B77: FLdRfVar var_88
  loc_B17B7A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_B17B7F: FFree1Ad var_88
  loc_B17B82: LitI2_Byte &HFF
  loc_B17B84: FLdPr Me
  loc_B17B87: VCallAd Control_ID_AforoOpt
  loc_B17B8A: FStAdFunc var_88
  loc_B17B8D: FLdPr var_88
  loc_B17B90: Me.Value = from_stack_1b
  loc_B17B95: FFree1Ad var_88
  loc_B17B98: LitI2_Byte 0
  loc_B17B9A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B17B9F: CStrDate
  loc_B17BA1: CVarStr var_98
  loc_B17BA4: PopAdLdVar
  loc_B17BA5: FLdPr Me
  loc_B17BA8: VCallAd Control_ID_HastaMsk
  loc_B17BAB: FStAdFunc var_88
  loc_B17BAE: FLdPr var_88
  loc_B17BB1: LateIdSt
  loc_B17BB6: FFree1Ad var_88
  loc_B17BB9: FFree1Var var_98 = ""
  loc_B17BBC: FLdPr Me
  loc_B17BBF: VCallAd Control_ID_HastaMsk
  loc_B17BC2: FStAdFunc var_88
  loc_B17BC5: FLdPr var_88
  loc_B17BC8: LateIdLdVar var_98 DispID_15 0
  loc_B17BCF: CStrVarTmp
  loc_B17BD0: CVarStr var_B8
  loc_B17BD3: FLdRfVar var_C8
  loc_B17BD6: ImpAdCallFPR4  = Year()
  loc_B17BDB: FLdPr Me
  loc_B17BDE: VCallAd Control_ID_HastaMsk
  loc_B17BE1: FStAdFunc var_CC
  loc_B17BE4: FLdPr var_CC
  loc_B17BE7: LateIdLdVar var_DC DispID_15 0
  loc_B17BEE: CStrVarTmp
  loc_B17BEF: CVarStr var_EC
  loc_B17BF2: FLdRfVar var_FC
  loc_B17BF5: ImpAdCallFPR4  = Month()
  loc_B17BFA: LitI2_Byte 1
  loc_B17BFC: FLdRfVar var_FC
  loc_B17BFF: CI2Var
  loc_B17C00: FLdRfVar var_C8
  loc_B17C03: CI2Var
  loc_B17C04: FLdRfVar var_10C
  loc_B17C07: ImpAdCallFPR4  = DateSerial(, , )
  loc_B17C0C: FLdRfVar var_10C
  loc_B17C0F: CStrVarTmp
  loc_B17C10: CVarStr var_11C
  loc_B17C13: PopAdLdVar
  loc_B17C14: FLdPr Me
  loc_B17C17: VCallAd Control_ID_DesdeMsk
  loc_B17C1A: FStAdFunc var_120
  loc_B17C1D: FLdPr var_120
  loc_B17C20: LateIdSt
  loc_B17C25: FFreeAd var_88 = "": var_CC = ""
  loc_B17C2E: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_EC = "": var_C8 = "": var_FC = "": var_10C = ""
  loc_B17C41: LitVarStr var_A8, vbNullString
  loc_B17C46: PopAdLdVar
  loc_B17C47: FLdPr Me
  loc_B17C4A: VCallAd Control_ID_CodiConcMsk
  loc_B17C4D: FStAdFunc var_88
  loc_B17C50: FLdPr var_88
  loc_B17C53: LateIdSt
  loc_B17C58: FFree1Ad var_88
  loc_B17C5B: LitStr vbNullString
  loc_B17C5E: FLdPr Me
  loc_B17C61: VCallAd Control_ID_DetaConcLbl
  loc_B17C64: FStAdFunc var_88
  loc_B17C67: FLdPr var_88
  loc_B17C6A: Me.Caption = from_stack_1
  loc_B17C6F: FFree1Ad var_88
  loc_B17C72: LitI2_Byte 0
  loc_B17C74: FLdPr Me
  loc_B17C77: VCallAd Control_ID_MostrarRubrosChk
  loc_B17C7A: FStAdFunc var_88
  loc_B17C7D: FLdPr var_88
  loc_B17C80: Me.Value = from_stack_1
  loc_B17C85: FFree1Ad var_88
  loc_B17C88: LitI2_Byte 0
  loc_B17C8A: FLdPr Me
  loc_B17C8D: VCallAd Control_ID_CodiRamoLbl
  loc_B17C90: FStAdFunc var_88
  loc_B17C93: FLdPr var_88
  loc_B17C96: Me.Visible = from_stack_1b
  loc_B17C9B: FFree1Ad var_88
  loc_B17C9E: LitI2_Byte 0
  loc_B17CA0: FLdPr Me
  loc_B17CA3: VCallAd Control_ID_CodiRubrLbl
  loc_B17CA6: FStAdFunc var_88
  loc_B17CA9: FLdPr var_88
  loc_B17CAC: Me.Visible = from_stack_1b
  loc_B17CB1: FFree1Ad var_88
  loc_B17CB4: LitI2_Byte 0
  loc_B17CB6: FLdPr Me
  loc_B17CB9: VCallAd Control_ID_CodiSubrLbl
  loc_B17CBC: FStAdFunc var_88
  loc_B17CBF: FLdPr var_88
  loc_B17CC2: Me.Visible = from_stack_1b
  loc_B17CC7: FFree1Ad var_88
  loc_B17CCA: LitVar_FALSE
  loc_B17CCE: PopAdLdVar
  loc_B17CCF: FLdPr Me
  loc_B17CD2: VCallAd Control_ID_CodiRamoMsk
  loc_B17CD5: FStAdFunc var_88
  loc_B17CD8: FLdPr var_88
  loc_B17CDB: LateIdSt
  loc_B17CE0: FFree1Ad var_88
  loc_B17CE3: LitVar_FALSE
  loc_B17CE7: PopAdLdVar
  loc_B17CE8: FLdPr Me
  loc_B17CEB: VCallAd Control_ID_CodiRubrMsk
  loc_B17CEE: FStAdFunc var_88
  loc_B17CF1: FLdPr var_88
  loc_B17CF4: LateIdSt
  loc_B17CF9: FFree1Ad var_88
  loc_B17CFC: LitVar_FALSE
  loc_B17D00: PopAdLdVar
  loc_B17D01: FLdPr Me
  loc_B17D04: VCallAd Control_ID_CodiSubrMsk
  loc_B17D07: FStAdFunc var_88
  loc_B17D0A: FLdPr var_88
  loc_B17D0D: LateIdSt
  loc_B17D12: FFree1Ad var_88
  loc_B17D15: LitI2_Byte 0
  loc_B17D17: FLdPr Me
  loc_B17D1A: VCallAd Control_ID_DetaRamoLbl
  loc_B17D1D: FStAdFunc var_88
  loc_B17D20: FLdPr var_88
  loc_B17D23: Me.Visible = from_stack_1b
  loc_B17D28: FFree1Ad var_88
  loc_B17D2B: LitI2_Byte 0
  loc_B17D2D: FLdPr Me
  loc_B17D30: VCallAd Control_ID_DetaRubrLbl
  loc_B17D33: FStAdFunc var_88
  loc_B17D36: FLdPr var_88
  loc_B17D39: Me.Visible = from_stack_1b
  loc_B17D3E: FFree1Ad var_88
  loc_B17D41: LitI2_Byte 0
  loc_B17D43: FLdPr Me
  loc_B17D46: VCallAd Control_ID_DetaSubrLbl
  loc_B17D49: FStAdFunc var_88
  loc_B17D4C: FLdPr var_88
  loc_B17D4F: Me.Visible = from_stack_1b
  loc_B17D54: FFree1Ad var_88
  loc_B17D57: LitVarStr var_A8, vbNullString
  loc_B17D5C: PopAdLdVar
  loc_B17D5D: FLdPr Me
  loc_B17D60: VCallAd Control_ID_CodiRamoMsk
  loc_B17D63: FStAdFunc var_88
  loc_B17D66: FLdPr var_88
  loc_B17D69: LateIdSt
  loc_B17D6E: FFree1Ad var_88
  loc_B17D71: LitVarStr var_A8, vbNullString
  loc_B17D76: PopAdLdVar
  loc_B17D77: FLdPr Me
  loc_B17D7A: VCallAd Control_ID_CodiRubrMsk
  loc_B17D7D: FStAdFunc var_88
  loc_B17D80: FLdPr var_88
  loc_B17D83: LateIdSt
  loc_B17D88: FFree1Ad var_88
  loc_B17D8B: LitVarStr var_A8, vbNullString
  loc_B17D90: PopAdLdVar
  loc_B17D91: FLdPr Me
  loc_B17D94: VCallAd Control_ID_CodiSubrMsk
  loc_B17D97: FStAdFunc var_88
  loc_B17D9A: FLdPr var_88
  loc_B17D9D: LateIdSt
  loc_B17DA2: FFree1Ad var_88
  loc_B17DA5: Call HabilitarCriterio()
  loc_B17DAA: ILdRf Me
  loc_B17DAD: CastAd
  loc_B17DB0: FStAdFunc var_88
  loc_B17DB3: FLdRfVar var_88
  loc_B17DB6: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B17DBB: FFree1Ad var_88
  loc_B17DBE: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C4070
  'Data Table: 4FD9E0
  loc_9C405C: FLdPr Me
  loc_9C405F: VCallAd Control_ID_HastaMsk
  loc_9C4062: CVarAd
  loc_9C4066: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C406B: FFree1Var var_94 = ""
  loc_9C406E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AE8220
  'Data Table: 4FD9E0
  loc_AE80BC: FLdPr Me
  loc_AE80BF: VCallAd Control_ID_DesdeMsk
  loc_AE80C2: FStAdFunc var_88
  loc_AE80C5: FLdPr var_88
  loc_AE80C8: LateIdLdVar var_98 DispID_15 0
  loc_AE80CF: CStrVarTmp
  loc_AE80D0: CVarStr var_A8
  loc_AE80D3: ImpAdCallI2 IsDate()
  loc_AE80D8: FFree1Ad var_88
  loc_AE80DB: FFreeVar var_98 = ""
  loc_AE80E2: BranchF loc_AE8202
  loc_AE80E5: FLdPr Me
  loc_AE80E8: VCallAd Control_ID_HastaMsk
  loc_AE80EB: FStAdFunc var_88
  loc_AE80EE: FLdPr var_88
  loc_AE80F1: LateIdLdVar var_98 DispID_15 0
  loc_AE80F8: CStrVarTmp
  loc_AE80F9: CVarStr var_A8
  loc_AE80FC: ImpAdCallI2 IsDate()
  loc_AE8101: FFree1Ad var_88
  loc_AE8104: FFreeVar var_98 = ""
  loc_AE810B: BranchF loc_AE81FF
  loc_AE810E: FLdPr Me
  loc_AE8111: VCallAd Control_ID_HastaMsk
  loc_AE8114: FStAdFunc var_88
  loc_AE8117: FLdPr var_88
  loc_AE811A: LateIdLdVar var_98 DispID_15 0
  loc_AE8121: CStrVarTmp
  loc_AE8122: FStStrNoPop var_AC
  loc_AE8125: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AE812A: FStStrNoPop var_B0
  loc_AE812D: FLdPr Me
  loc_AE8130: MemStStrCopy
  loc_AE8134: FFreeStr var_AC = ""
  loc_AE813B: FFree1Ad var_88
  loc_AE813E: FFree1Var var_98 = ""
  loc_AE8141: FLdPr Me
  loc_AE8144: VCallAd Control_ID_HastaMsk
  loc_AE8147: FStAdFuncNoPop
  loc_AE814A: CastAd
  loc_AE814D: FStAdFunc var_B4
  loc_AE8150: FLdRfVar var_B4
  loc_AE8153: FLdPr Me
  loc_AE8156: MemLdStr global_100
  loc_AE8159: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE815E: IStI2 arg_C
  loc_AE8161: FFreeAd var_88 = ""
  loc_AE8168: ILdI2 arg_C
  loc_AE816B: NotI4
  loc_AE816C: BranchF loc_AE81FF
  loc_AE816F: FLdPr Me
  loc_AE8172: VCallAd Control_ID_DesdeMsk
  loc_AE8175: FStAdFunc var_88
  loc_AE8178: FLdPr var_88
  loc_AE817B: LateIdLdVar var_98 DispID_15 0
  loc_AE8182: CStrVarTmp
  loc_AE8183: CVarStr var_A8
  loc_AE8186: FLdRfVar var_C4
  loc_AE8189: ImpAdCallFPR4  = Year()
  loc_AE818E: FLdRfVar var_C4
  loc_AE8191: FLdPr Me
  loc_AE8194: VCallAd Control_ID_HastaMsk
  loc_AE8197: FStAdFunc var_B4
  loc_AE819A: FLdPr var_B4
  loc_AE819D: LateIdLdVar var_D4 DispID_15 0
  loc_AE81A4: CStrVarTmp
  loc_AE81A5: CVarStr var_E4
  loc_AE81A8: FLdRfVar var_F4
  loc_AE81AB: ImpAdCallFPR4  = Year()
  loc_AE81B0: FLdRfVar var_F4
  loc_AE81B3: NeVarBool
  loc_AE81B5: FFreeAd var_88 = ""
  loc_AE81BC: FFreeVar var_98 = "": var_A8 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AE81CB: BranchF loc_AE81FF
  loc_AE81CE: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AE81D1: FLdPr Me
  loc_AE81D4: MemStStrCopy
  loc_AE81D8: FLdPr Me
  loc_AE81DB: VCallAd Control_ID_HastaMsk
  loc_AE81DE: FStAdFuncNoPop
  loc_AE81E1: CastAd
  loc_AE81E4: FStAdFunc var_B4
  loc_AE81E7: FLdRfVar var_B4
  loc_AE81EA: FLdPr Me
  loc_AE81ED: MemLdStr global_100
  loc_AE81F0: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE81F5: IStI2 arg_C
  loc_AE81F8: FFreeAd var_88 = ""
  loc_AE81FF: Branch loc_AE821C
  loc_AE8202: LitVarStr var_114, vbNullString
  loc_AE8207: PopAdLdVar
  loc_AE8208: FLdPr Me
  loc_AE820B: VCallAd Control_ID_HastaMsk
  loc_AE820E: FStAdFunc var_88
  loc_AE8211: FLdPr var_88
  loc_AE8214: LateIdSt
  loc_AE8219: FFree1Ad var_88
  loc_AE821C: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A23F30
  'Data Table: 4FD9E0
  loc_A23EE8: ILdI2 KeyAscii
  loc_A23EEB: CI4UI1
  loc_A23EEC: LitI4 &H20
  loc_A23EF1: EqI4
  loc_A23EF2: BranchF loc_A23F2F
  loc_A23EF5: LitVar_Missing var_A4
  loc_A23EF8: PopAdLdVar
  loc_A23EF9: LitVarI4
  loc_A23F01: PopAdLdVar
  loc_A23F02: ImpAdLdRf MemVar_D930A4
  loc_A23F05: NewIfNullPr frmCalendario
  loc_A23F08: frmCalendario.Show from_stack_1, from_stack_2
  loc_A23F0D: ImpAdLdRf MemVar_D93028
  loc_A23F10: CDargRef
  loc_A23F14: FLdPr Me
  loc_A23F17: VCallAd Control_ID_HastaMsk
  loc_A23F1A: FStAdFunc var_A8
  loc_A23F1D: FLdPr var_A8
  loc_A23F20: LateIdSt
  loc_A23F25: FFree1Ad var_A8
  loc_A23F28: LitStr vbNullString
  loc_A23F2B: ImpAdStStrCopy MemVar_D93028
  loc_A23F2F: ExitProcHresult
End Sub

Private Sub Form_Load() '9DDD0C
  'Data Table: 4FD9E0
  loc_9DDCF0: ILdRf Me
  loc_9DDCF3: CastAd
  loc_9DDCF6: FStAdFunc var_88
  loc_9DDCF9: FLdRfVar var_88
  loc_9DDCFC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DDD01: FFree1Ad var_88
  loc_9DDD04: Call cmdNueva_Click()
  loc_9DDD09: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE530
  'Data Table: 4FD9E0
  loc_9CE518: FLdPr Me
  loc_9CE51B: VCallAd Control_ID_wbbReporte
  loc_9CE51E: FStAdFunc var_88
  loc_9CE521: FLdRfVar var_88
  loc_9CE524: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE529: FFree1Ad var_88
  loc_9CE52C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A00308
  'Data Table: 4FD9E0
  loc_A002D8: LitVarStr var_94, "Cerrando..."
  loc_A002DD: PopAdLdVar
  loc_A002DE: FLdPr Me
  loc_A002E1: VCallAd Control_ID_statusBar
  loc_A002E4: FStAdFunc var_A8
  loc_A002E7: FLdPr var_A8
  loc_A002EA: LateIdSt
  loc_A002EF: FFree1Ad var_A8
  loc_A002F2: ILdRf Me
  loc_A002F5: FStAdNoPop
  loc_A002F9: ImpAdLdRf MemVar_D9C5D8
  loc_A002FC: NewIfNullPr Global
  loc_A002FF: Global.Unload from_stack_1
  loc_A00304: FFree1Ad var_A8
  loc_A00307: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C9424
  'Data Table: 4FD9E0
  loc_9C940C: LitI2_Byte 0
  loc_9C940E: ILdRf Me
  loc_9C9411: CastAd
  loc_9C9414: FStAdFunc var_88
  loc_9C9417: FLdRfVar var_88
  loc_9C941A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C941F: FFree1Ad var_88
  loc_9C9422: ExitProcHresult
End Sub

Private Sub CodiRamoMsk_UnknownEvent_0 '9C39F8
  'Data Table: 4FD9E0
  loc_9C39E4: FLdPr Me
  loc_9C39E7: VCallAd Control_ID_CodiRamoMsk
  loc_9C39EA: CVarAd
  loc_9C39EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C39F3: FFree1Var var_94 = ""
  loc_9C39F6: ExitProcHresult
End Sub

Private Function CodiRamoMsk_UnknownEvent_8(arg_C) 'A94330
  'Data Table: 4FD9E0
  loc_A94288: FLdPr Me
  loc_A9428B: VCallAd Control_ID_CodiRamoMsk
  loc_A9428E: FStAdFunc var_88
  loc_A94291: FLdPr var_88
  loc_A94294: LateIdLdVar var_98 DispID_22 0
  loc_A9429B: CStrVarTmp
  loc_A9429C: FStStrNoPop var_9C
  loc_A9429F: ImpAdCallI2 Proc_18_30_A55680()
  loc_A942A4: FStStrNoPop var_A0
  loc_A942A7: FLdPr Me
  loc_A942AA: MemStStrCopy
  loc_A942AE: FFreeStr var_9C = ""
  loc_A942B5: FFree1Ad var_88
  loc_A942B8: FFree1Var var_98 = ""
  loc_A942BB: FLdPr Me
  loc_A942BE: VCallAd Control_ID_CodiRamoMsk
  loc_A942C1: FStAdFuncNoPop
  loc_A942C4: CastAd
  loc_A942C7: FStAdFunc var_A4
  loc_A942CA: FLdRfVar var_A4
  loc_A942CD: FLdPr Me
  loc_A942D0: MemLdStr global_100
  loc_A942D3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A942D8: IStI2 arg_C
  loc_A942DB: FFreeAd var_88 = ""
  loc_A942E2: ILdI2 arg_C
  loc_A942E5: NotI4
  loc_A942E6: BranchF loc_A9432C
  loc_A942E9: FLdPr Me
  loc_A942EC: VCallAd Control_ID_CodiRamoMsk
  loc_A942EF: FStAdFunc var_88
  loc_A942F2: FLdPr var_88
  loc_A942F5: LateIdLdVar var_98 DispID_22 0
  loc_A942FC: CStrVarTmp
  loc_A942FD: FStStrNoPop var_9C
  loc_A94300: CI2Str
  loc_A94302: ImpAdCallI2 Proc_270_33_A79860()
  loc_A94307: FStStrNoPop var_A0
  loc_A9430A: FLdPr Me
  loc_A9430D: VCallAd Control_ID_DetaRamoLbl
  loc_A94310: FStAdFunc var_A4
  loc_A94313: FLdPr var_A4
  loc_A94316: Me.Caption = from_stack_1
  loc_A9431B: FFreeStr var_9C = ""
  loc_A94322: FFreeAd var_88 = ""
  loc_A94329: FFree1Var var_98 = ""
  loc_A9432C: ExitProcHresult
  loc_A9432D: ImpAdLdFPR4 MemVar_4FBE70
End Function

Private Sub CodiRamoMsk_KeyPress(KeyAscii As Integer) 'AD58FC
  'Data Table: 4FD9E0
  loc_AD57D4: ILdI2 KeyAscii
  loc_AD57D7: LitI2_Byte &H20
  loc_AD57D9: EqI2
  loc_AD57DA: BranchF loc_AD58FA
  loc_AD57DD: LitI2_Byte 0
  loc_AD57DF: IStI2 KeyAscii
  loc_AD57E2: LitVar_Missing var_A4
  loc_AD57E5: PopAdLdVar
  loc_AD57E6: LitVarI4
  loc_AD57EE: PopAdLdVar
  loc_AD57EF: ImpAdLdRf MemVar_D94484
  loc_AD57F2: NewIfNullPr dlgBuscarRamo
  loc_AD57F5: dlgBuscarRamo.Show from_stack_1, from_stack_2
  loc_AD57FA: FLdRfVar var_AC
  loc_AD57FD: FLdRfVar var_A8
  loc_AD5800: ImpAdLdRf MemVar_D94484
  loc_AD5803: NewIfNullPr dlgBuscarRamo
  loc_AD5806: from_stack_1v = dlgBuscarRamo.global_4264548Get()
  loc_AD580B: FLdPr var_A8
  loc_AD580E: from_stack_1 = clsbase.RecordCount
  loc_AD5813: ILdRf var_AC
  loc_AD5816: LitI4 0
  loc_AD581B: GtI4
  loc_AD581C: FFree1Ad var_A8
  loc_AD581F: BranchF loc_AD58FA
  loc_AD5822: FLdRfVar var_C8
  loc_AD5825: FLdRfVar var_B8
  loc_AD5828: LitVarStr var_94, "CodiRamo"
  loc_AD582D: PopAdLdVar
  loc_AD582E: FLdRfVar var_B4
  loc_AD5831: FLdRfVar var_B0
  loc_AD5834: FLdRfVar var_A8
  loc_AD5837: ImpAdLdRf MemVar_D94484
  loc_AD583A: NewIfNullPr dlgBuscarRamo
  loc_AD583D: from_stack_1v = dlgBuscarRamo.global_4264548Get()
  loc_AD5842: FLdPr var_A8
  loc_AD5845: from_stack_1v = clsbase.RsFrmGet()
  loc_AD584A: FLdPr var_B0
  loc_AD584D:  = Me.Fields
  loc_AD5852: FLdPr var_B4
  loc_AD5855: from_stack_2 = Me.Item(from_stack_1)
  loc_AD585A: FLdPr var_B8
  loc_AD585D:  = Me.Value
  loc_AD5862: FLdRfVar var_C8
  loc_AD5865: CStrVarTmp
  loc_AD5866: CVarStr var_D8
  loc_AD5869: PopAdLdVar
  loc_AD586A: FLdPr Me
  loc_AD586D: VCallAd Control_ID_CodiRamoMsk
  loc_AD5870: FStAdFunc var_DC
  loc_AD5873: FLdPr var_DC
  loc_AD5876: LateIdSt
  loc_AD587B: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD5888: FFreeVar var_C8 = ""
  loc_AD588F: FLdRfVar var_C8
  loc_AD5892: FLdRfVar var_B8
  loc_AD5895: LitVarStr var_94, "DetaRamo"
  loc_AD589A: PopAdLdVar
  loc_AD589B: FLdRfVar var_B4
  loc_AD589E: FLdRfVar var_B0
  loc_AD58A1: FLdRfVar var_A8
  loc_AD58A4: ImpAdLdRf MemVar_D94484
  loc_AD58A7: NewIfNullPr dlgBuscarRamo
  loc_AD58AA: from_stack_1v = dlgBuscarRamo.global_4264548Get()
  loc_AD58AF: FLdPr var_A8
  loc_AD58B2: from_stack_1v = clsbase.RsFrmGet()
  loc_AD58B7: FLdPr var_B0
  loc_AD58BA:  = Me.Fields
  loc_AD58BF: FLdPr var_B4
  loc_AD58C2: from_stack_2 = Me.Item(from_stack_1)
  loc_AD58C7: FLdPr var_B8
  loc_AD58CA:  = Me.Value
  loc_AD58CF: FLdRfVar var_C8
  loc_AD58D2: CStrVarTmp
  loc_AD58D3: FStStrNoPop var_E0
  loc_AD58D6: FLdPr Me
  loc_AD58D9: VCallAd Control_ID_DetaRamoLbl
  loc_AD58DC: FStAdFunc var_DC
  loc_AD58DF: FLdPr var_DC
  loc_AD58E2: Me.Caption = from_stack_1
  loc_AD58E7: FFree1Str var_E0
  loc_AD58EA: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD58F7: FFree1Var var_C8 = ""
  loc_AD58FA: ExitProcHresult
End Sub

Private Sub cmdXLS_Click(arg_18) '9E18BC
  'Data Table: 4FD9E0
  loc_9E18A0: LitI2_Byte &HFF
  loc_9E18A2: LitI2_Byte 0
  loc_9E18A4: ILdRf Me
  loc_9E18A7: CastAd
  loc_9E18AA: FStAdFunc var_88
  loc_9E18AD: FLdRfVar var_88
  loc_9E18B0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E18B5: FFree1Ad var_88
  loc_9E18B8: ExitProcHresult
  loc_9E18B9: FStFPR8 arg_1800
End Sub

Private Sub CodiRubrMsk_UnknownEvent_0 '9C3A40
  'Data Table: 4FD9E0
  loc_9C3A2C: FLdPr Me
  loc_9C3A2F: VCallAd Control_ID_CodiRubrMsk
  loc_9C3A32: CVarAd
  loc_9C3A36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3A3B: FFree1Var var_94 = ""
  loc_9C3A3E: ExitProcHresult
End Sub

Private Function CodiRubrMsk_UnknownEvent_8(arg_C) 'AC15DC
  'Data Table: 4FD9E0
  loc_AC14EC: FLdPr Me
  loc_AC14EF: VCallAd Control_ID_CodiRamoMsk
  loc_AC14F2: FStAdFunc var_88
  loc_AC14F5: FLdPr var_88
  loc_AC14F8: LateIdLdVar var_98 DispID_22 0
  loc_AC14FF: PopAd
  loc_AC1501: FLdPr Me
  loc_AC1504: VCallAd Control_ID_CodiRubrMsk
  loc_AC1507: FStAdFunc var_9C
  loc_AC150A: FLdPr var_9C
  loc_AC150D: LateIdLdVar var_AC DispID_22 0
  loc_AC1514: CStrVarTmp
  loc_AC1515: FStStrNoPop var_B4
  loc_AC1518: FLdRfVar var_98
  loc_AC151B: CStrVarTmp
  loc_AC151C: FStStrNoPop var_B0
  loc_AC151F: ImpAdCallI2 Proc_18_31_A7B970(, )
  loc_AC1524: FStStrNoPop var_B8
  loc_AC1527: FLdPr Me
  loc_AC152A: MemStStrCopy
  loc_AC152E: FFreeStr var_B0 = "": var_B4 = ""
  loc_AC1537: FFreeAd var_88 = ""
  loc_AC153E: FFreeVar var_98 = ""
  loc_AC1545: FLdPr Me
  loc_AC1548: VCallAd Control_ID_CodiRubrMsk
  loc_AC154B: FStAdFuncNoPop
  loc_AC154E: CastAd
  loc_AC1551: FStAdFunc var_9C
  loc_AC1554: FLdRfVar var_9C
  loc_AC1557: FLdPr Me
  loc_AC155A: MemLdStr global_100
  loc_AC155D: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC1562: IStI2 arg_C
  loc_AC1565: FFreeAd var_88 = ""
  loc_AC156C: ILdI2 arg_C
  loc_AC156F: NotI4
  loc_AC1570: BranchF loc_AC15DB
  loc_AC1573: FLdPr Me
  loc_AC1576: VCallAd Control_ID_CodiRamoMsk
  loc_AC1579: FStAdFunc var_88
  loc_AC157C: FLdPr var_88
  loc_AC157F: LateIdLdVar var_98 DispID_22 0
  loc_AC1586: PopAd
  loc_AC1588: FLdPr Me
  loc_AC158B: VCallAd Control_ID_CodiRubrMsk
  loc_AC158E: FStAdFunc var_9C
  loc_AC1591: FLdPr var_9C
  loc_AC1594: LateIdLdVar var_AC DispID_22 0
  loc_AC159B: CStrVarTmp
  loc_AC159C: FStStrNoPop var_B4
  loc_AC159F: CI4Str
  loc_AC15A0: FLdRfVar var_98
  loc_AC15A3: CStrVarTmp
  loc_AC15A4: FStStrNoPop var_B0
  loc_AC15A7: CI2Str
  loc_AC15A9: ImpAdCallI2 Proc_270_34_A8B6D8(, )
  loc_AC15AE: FStStrNoPop var_B8
  loc_AC15B1: FLdPr Me
  loc_AC15B4: VCallAd Control_ID_DetaRubrLbl
  loc_AC15B7: FStAdFunc var_BC
  loc_AC15BA: FLdPr var_BC
  loc_AC15BD: Me.Caption = from_stack_1
  loc_AC15C2: FFreeStr var_B0 = "": var_B4 = ""
  loc_AC15CB: FFreeAd var_88 = "": var_9C = ""
  loc_AC15D4: FFreeVar var_98 = ""
  loc_AC15DB: ExitProcHresult
End Function

Private Sub CodiRubrMsk_KeyPress(KeyAscii As Integer) 'AE8E70
  'Data Table: 4FD9E0
  loc_AE8D00: ILdI2 KeyAscii
  loc_AE8D03: LitI2_Byte &H20
  loc_AE8D05: EqI2
  loc_AE8D06: BranchF loc_AE8E6D
  loc_AE8D09: LitI2_Byte 0
  loc_AE8D0B: IStI2 KeyAscii
  loc_AE8D0E: LitI2_Byte 0
  loc_AE8D10: PopTmpLdAd2 var_86
  loc_AE8D13: from_stack_2v = CodiRamoMsk_UnknownEvent_8(from_stack_1v)
  loc_AE8D18: FLdPr Me
  loc_AE8D1B: MemLdStr global_100
  loc_AE8D1E: LitStr vbNullString
  loc_AE8D21: NeStr
  loc_AE8D23: BranchF loc_AE8D27
  loc_AE8D26: ExitProcHresult
  loc_AE8D27: ImpAdLdRf MemVar_D9445C
  loc_AE8D2A: NewIfNullAd
  loc_AE8D2D: FStAd var_8C 
  loc_AE8D31: FLdPr Me
  loc_AE8D34: VCallAd Control_ID_CodiRamoMsk
  loc_AE8D37: FStAdFunc var_90
  loc_AE8D3A: FLdPr var_90
  loc_AE8D3D: LateIdLdVar var_A0 DispID_22 0
  loc_AE8D44: CStrVarTmp
  loc_AE8D45: FStStrNoPop var_A4
  loc_AE8D48: CI2Str
  loc_AE8D4A: FLdPr var_8C
  loc_AE8D4D: Call dlgBuscarRubro.iCodiRamoPut(from_stack_1v)
  loc_AE8D52: FFree1Str var_A4
  loc_AE8D55: FFree1Ad var_90
  loc_AE8D58: FFree1Var var_A0 = ""
  loc_AE8D5B: LitVar_Missing var_C4
  loc_AE8D5E: PopAdLdVar
  loc_AE8D5F: LitVarI4
  loc_AE8D67: PopAdLdVar
  loc_AE8D68: FLdPr var_8C
  loc_AE8D6B: Me.Show from_stack_1, from_stack_2
  loc_AE8D70: FLdRfVar var_C8
  loc_AE8D73: FLdRfVar var_90
  loc_AE8D76: FLdPr var_8C
  loc_AE8D79: from_stack_1v = dlgBuscarRubro.global_4319644Get()
  loc_AE8D7E: FLdPr var_90
  loc_AE8D81: from_stack_1 = clsbase.RecordCount
  loc_AE8D86: ILdRf var_C8
  loc_AE8D89: LitI4 0
  loc_AE8D8E: GtI4
  loc_AE8D8F: FFree1Ad var_90
  loc_AE8D92: BranchF loc_AE8E67
  loc_AE8D95: FLdRfVar var_A0
  loc_AE8D98: FLdRfVar var_D4
  loc_AE8D9B: LitVarStr var_B4, "CodiRubr"
  loc_AE8DA0: PopAdLdVar
  loc_AE8DA1: FLdRfVar var_D0
  loc_AE8DA4: FLdRfVar var_CC
  loc_AE8DA7: FLdRfVar var_90
  loc_AE8DAA: FLdPr var_8C
  loc_AE8DAD: from_stack_1v = dlgBuscarRubro.global_4319644Get()
  loc_AE8DB2: FLdPr var_90
  loc_AE8DB5: from_stack_1v = clsbase.RsFrmGet()
  loc_AE8DBA: FLdPr var_CC
  loc_AE8DBD:  = Me.Fields
  loc_AE8DC2: FLdPr var_D0
  loc_AE8DC5: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8DCA: FLdPr var_D4
  loc_AE8DCD:  = Me.Value
  loc_AE8DD2: FLdRfVar var_A0
  loc_AE8DD5: CStrVarTmp
  loc_AE8DD6: CVarStr var_E4
  loc_AE8DD9: PopAdLdVar
  loc_AE8DDA: FLdPr Me
  loc_AE8DDD: VCallAd Control_ID_CodiRubrMsk
  loc_AE8DE0: FStAdFunc var_E8
  loc_AE8DE3: FLdPr var_E8
  loc_AE8DE6: LateIdSt
  loc_AE8DEB: FFreeAd var_90 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AE8DF8: FFreeVar var_A0 = ""
  loc_AE8DFF: FLdRfVar var_A0
  loc_AE8E02: FLdRfVar var_D4
  loc_AE8E05: LitVarStr var_B4, "DetaRubr"
  loc_AE8E0A: PopAdLdVar
  loc_AE8E0B: FLdRfVar var_D0
  loc_AE8E0E: FLdRfVar var_CC
  loc_AE8E11: FLdRfVar var_90
  loc_AE8E14: FLdPr var_8C
  loc_AE8E17: from_stack_1v = dlgBuscarRubro.global_4319644Get()
  loc_AE8E1C: FLdPr var_90
  loc_AE8E1F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE8E24: FLdPr var_CC
  loc_AE8E27:  = Me.Fields
  loc_AE8E2C: FLdPr var_D0
  loc_AE8E2F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8E34: FLdPr var_D4
  loc_AE8E37:  = Me.Value
  loc_AE8E3C: FLdRfVar var_A0
  loc_AE8E3F: CStrVarTmp
  loc_AE8E40: FStStrNoPop var_A4
  loc_AE8E43: FLdPr Me
  loc_AE8E46: VCallAd Control_ID_DetaRubrLbl
  loc_AE8E49: FStAdFunc var_E8
  loc_AE8E4C: FLdPr var_E8
  loc_AE8E4F: Me.Caption = from_stack_1
  loc_AE8E54: FFree1Str var_A4
  loc_AE8E57: FFreeAd var_90 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AE8E64: FFree1Var var_A0 = ""
  loc_AE8E67: LitNothing
  loc_AE8E69: FStAd var_8C 
  loc_AE8E6D: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CEC9C
  'Data Table: 4FD9E0
  loc_9CEC84: ILdRf Me
  loc_9CEC87: CastAd
  loc_9CEC8A: FStAdFunc var_88
  loc_9CEC8D: FLdRfVar var_88
  loc_9CEC90: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CEC95: FFree1Ad var_88
  loc_9CEC98: ExitProcHresult
End Sub

Private Sub CodiSubrMsk_UnknownEvent_0 '9C3A88
  'Data Table: 4FD9E0
  loc_9C3A74: FLdPr Me
  loc_9C3A77: VCallAd Control_ID_CodiSubrMsk
  loc_9C3A7A: CVarAd
  loc_9C3A7E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3A83: FFree1Var var_94 = ""
  loc_9C3A86: ExitProcHresult
End Sub

Private Function CodiSubrMsk_UnknownEvent_8(arg_C) 'AE5DB8
  'Data Table: 4FD9E0
  loc_AE5C5C: FLdPr Me
  loc_AE5C5F: VCallAd Control_ID_CodiSubrMsk
  loc_AE5C62: FStAdFunc var_88
  loc_AE5C65: FLdPr var_88
  loc_AE5C68: LateIdLdVar var_98 DispID_22 0
  loc_AE5C6F: CStrVarTmp
  loc_AE5C70: FStStrNoPop var_9C
  loc_AE5C73: LitStr vbNullString
  loc_AE5C76: NeStr
  loc_AE5C78: FFree1Str var_9C
  loc_AE5C7B: FFree1Ad var_88
  loc_AE5C7E: FFree1Var var_98 = ""
  loc_AE5C81: BranchF loc_AE5DB7
  loc_AE5C84: FLdPr Me
  loc_AE5C87: VCallAd Control_ID_CodiRamoMsk
  loc_AE5C8A: FStAdFunc var_88
  loc_AE5C8D: FLdPr var_88
  loc_AE5C90: LateIdLdVar var_98 DispID_22 0
  loc_AE5C97: PopAd
  loc_AE5C99: FLdPr Me
  loc_AE5C9C: VCallAd Control_ID_CodiRubrMsk
  loc_AE5C9F: FStAdFunc var_A0
  loc_AE5CA2: FLdPr var_A0
  loc_AE5CA5: LateIdLdVar var_B0 DispID_22 0
  loc_AE5CAC: PopAd
  loc_AE5CAE: FLdPr Me
  loc_AE5CB1: VCallAd Control_ID_CodiSubrMsk
  loc_AE5CB4: FStAdFunc var_B4
  loc_AE5CB7: FLdPr var_B4
  loc_AE5CBA: LateIdLdVar var_C4 DispID_22 0
  loc_AE5CC1: CStrVarTmp
  loc_AE5CC2: FStStrNoPop var_CC
  loc_AE5CC5: FLdRfVar var_B0
  loc_AE5CC8: CStrVarTmp
  loc_AE5CC9: FStStrNoPop var_C8
  loc_AE5CCC: FLdRfVar var_98
  loc_AE5CCF: CStrVarTmp
  loc_AE5CD0: FStStrNoPop var_9C
  loc_AE5CD3: ImpAdCallI2 Proc_18_32_AE3A18(, , )
  loc_AE5CD8: FStStrNoPop var_D0
  loc_AE5CDB: FLdPr Me
  loc_AE5CDE: MemStStrCopy
  loc_AE5CE2: FFreeStr var_9C = "": var_C8 = "": var_CC = ""
  loc_AE5CED: FFreeAd var_88 = "": var_A0 = ""
  loc_AE5CF6: FFreeVar var_98 = "": var_B0 = ""
  loc_AE5CFF: FLdPr Me
  loc_AE5D02: VCallAd Control_ID_CodiSubrMsk
  loc_AE5D05: FStAdFuncNoPop
  loc_AE5D08: CastAd
  loc_AE5D0B: FStAdFunc var_A0
  loc_AE5D0E: FLdRfVar var_A0
  loc_AE5D11: FLdPr Me
  loc_AE5D14: MemLdStr global_100
  loc_AE5D17: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE5D1C: IStI2 arg_C
  loc_AE5D1F: FFreeAd var_88 = ""
  loc_AE5D26: ILdI2 arg_C
  loc_AE5D29: NotI4
  loc_AE5D2A: BranchF loc_AE5DB7
  loc_AE5D2D: FLdPr Me
  loc_AE5D30: VCallAd Control_ID_CodiRamoMsk
  loc_AE5D33: FStAdFunc var_88
  loc_AE5D36: FLdPr var_88
  loc_AE5D39: LateIdLdVar var_98 DispID_22 0
  loc_AE5D40: PopAd
  loc_AE5D42: FLdPr Me
  loc_AE5D45: VCallAd Control_ID_CodiRubrMsk
  loc_AE5D48: FStAdFunc var_A0
  loc_AE5D4B: FLdPr var_A0
  loc_AE5D4E: LateIdLdVar var_B0 DispID_22 0
  loc_AE5D55: PopAd
  loc_AE5D57: FLdPr Me
  loc_AE5D5A: VCallAd Control_ID_CodiSubrMsk
  loc_AE5D5D: FStAdFunc var_B4
  loc_AE5D60: FLdPr var_B4
  loc_AE5D63: LateIdLdVar var_C4 DispID_22 0
  loc_AE5D6A: CStrVarTmp
  loc_AE5D6B: FStStrNoPop var_CC
  loc_AE5D6E: FLdRfVar var_B0
  loc_AE5D71: CStrVarTmp
  loc_AE5D72: FStStrNoPop var_C8
  loc_AE5D75: CI4Str
  loc_AE5D76: FLdRfVar var_98
  loc_AE5D79: CStrVarTmp
  loc_AE5D7A: FStStrNoPop var_9C
  loc_AE5D7D: CI2Str
  loc_AE5D7F: ImpAdCallI2 Proc_270_35_AEBAE8(, , )
  loc_AE5D84: FStStrNoPop var_D0
  loc_AE5D87: FLdPr Me
  loc_AE5D8A: VCallAd Control_ID_DetaSubrLbl
  loc_AE5D8D: FStAdFunc var_D4
  loc_AE5D90: FLdPr var_D4
  loc_AE5D93: Me.Caption = from_stack_1
  loc_AE5D98: FFreeStr var_9C = "": var_C8 = "": var_CC = ""
  loc_AE5DA3: FFreeAd var_88 = "": var_A0 = "": var_B4 = ""
  loc_AE5DAE: FFreeVar var_98 = "": var_B0 = ""
  loc_AE5DB7: ExitProcHresult
End Function

Private Sub CodiSubrMsk_KeyPress(KeyAscii As Integer) 'AF6660
  'Data Table: 4FD9E0
  loc_AF64B0: ILdI2 KeyAscii
  loc_AF64B3: LitI2_Byte &H20
  loc_AF64B5: EqI2
  loc_AF64B6: BranchF loc_AF665F
  loc_AF64B9: LitI2_Byte 0
  loc_AF64BB: IStI2 KeyAscii
  loc_AF64BE: LitI2_Byte 0
  loc_AF64C0: PopTmpLdAd2 var_86
  loc_AF64C3: from_stack_2v = CodiRamoMsk_UnknownEvent_8(from_stack_1v)
  loc_AF64C8: FLdPr Me
  loc_AF64CB: MemLdStr global_100
  loc_AF64CE: LitStr vbNullString
  loc_AF64D1: NeStr
  loc_AF64D3: BranchF loc_AF64D7
  loc_AF64D6: ExitProcHresult
  loc_AF64D7: LitI2_Byte 0
  loc_AF64D9: PopTmpLdAd2 var_86
  loc_AF64DC: from_stack_2v = CodiRubrMsk_UnknownEvent_8(from_stack_1v)
  loc_AF64E1: FLdPr Me
  loc_AF64E4: MemLdStr global_100
  loc_AF64E7: LitStr vbNullString
  loc_AF64EA: NeStr
  loc_AF64EC: BranchF loc_AF64F0
  loc_AF64EF: ExitProcHresult
  loc_AF64F0: ImpAdLdRf MemVar_D94920
  loc_AF64F3: NewIfNullAd
  loc_AF64F6: FStAd var_8C 
  loc_AF64FA: FLdPr Me
  loc_AF64FD: VCallAd Control_ID_CodiRamoMsk
  loc_AF6500: FStAdFunc var_90
  loc_AF6503: FLdPr var_90
  loc_AF6506: LateIdLdVar var_A0 DispID_22 0
  loc_AF650D: CStrVarTmp
  loc_AF650E: FStStrNoPop var_A4
  loc_AF6511: CI2Str
  loc_AF6513: FLdPr var_8C
  loc_AF6516: Call dlgBuscarSubRubro.iCodiRamoPut(from_stack_1v)
  loc_AF651B: FFree1Str var_A4
  loc_AF651E: FFree1Ad var_90
  loc_AF6521: FFree1Var var_A0 = ""
  loc_AF6524: FLdPr Me
  loc_AF6527: VCallAd Control_ID_CodiRubrMsk
  loc_AF652A: FStAdFunc var_90
  loc_AF652D: FLdPr var_90
  loc_AF6530: LateIdLdVar var_A0 DispID_22 0
  loc_AF6537: CStrVarTmp
  loc_AF6538: FStStrNoPop var_A4
  loc_AF653B: CI4Str
  loc_AF653C: FLdPr var_8C
  loc_AF653F: Call dlgBuscarSubRubro.iCodiRubrPut(from_stack_1v)
  loc_AF6544: FFree1Str var_A4
  loc_AF6547: FFree1Ad var_90
  loc_AF654A: FFree1Var var_A0 = ""
  loc_AF654D: LitVar_Missing var_C4
  loc_AF6550: PopAdLdVar
  loc_AF6551: LitVarI4
  loc_AF6559: PopAdLdVar
  loc_AF655A: FLdPr var_8C
  loc_AF655D: Me.Show from_stack_1, from_stack_2
  loc_AF6562: FLdRfVar var_C8
  loc_AF6565: FLdRfVar var_90
  loc_AF6568: FLdPr var_8C
  loc_AF656B: from_stack_1v = dlgBuscarSubRubro.global_4286704Get()
  loc_AF6570: FLdPr var_90
  loc_AF6573: from_stack_1 = clsbase.RecordCount
  loc_AF6578: ILdRf var_C8
  loc_AF657B: LitI4 0
  loc_AF6580: GtI4
  loc_AF6581: FFree1Ad var_90
  loc_AF6584: BranchF loc_AF6659
  loc_AF6587: FLdRfVar var_A0
  loc_AF658A: FLdRfVar var_D4
  loc_AF658D: LitVarStr var_B4, "CodiSubr"
  loc_AF6592: PopAdLdVar
  loc_AF6593: FLdRfVar var_D0
  loc_AF6596: FLdRfVar var_CC
  loc_AF6599: FLdRfVar var_90
  loc_AF659C: FLdPr var_8C
  loc_AF659F: from_stack_1v = dlgBuscarSubRubro.global_4286704Get()
  loc_AF65A4: FLdPr var_90
  loc_AF65A7: from_stack_1v = clsbase.RsFrmGet()
  loc_AF65AC: FLdPr var_CC
  loc_AF65AF:  = Me.Fields
  loc_AF65B4: FLdPr var_D0
  loc_AF65B7: from_stack_2 = Me.Item(from_stack_1)
  loc_AF65BC: FLdPr var_D4
  loc_AF65BF:  = Me.Value
  loc_AF65C4: FLdRfVar var_A0
  loc_AF65C7: CStrVarTmp
  loc_AF65C8: CVarStr var_E4
  loc_AF65CB: PopAdLdVar
  loc_AF65CC: FLdPr Me
  loc_AF65CF: VCallAd Control_ID_CodiSubrMsk
  loc_AF65D2: FStAdFunc var_E8
  loc_AF65D5: FLdPr var_E8
  loc_AF65D8: LateIdSt
  loc_AF65DD: FFreeAd var_90 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AF65EA: FFreeVar var_A0 = ""
  loc_AF65F1: FLdRfVar var_A0
  loc_AF65F4: FLdRfVar var_D4
  loc_AF65F7: LitVarStr var_B4, "DetaSubr"
  loc_AF65FC: PopAdLdVar
  loc_AF65FD: FLdRfVar var_D0
  loc_AF6600: FLdRfVar var_CC
  loc_AF6603: FLdRfVar var_90
  loc_AF6606: FLdPr var_8C
  loc_AF6609: from_stack_1v = dlgBuscarSubRubro.global_4286704Get()
  loc_AF660E: FLdPr var_90
  loc_AF6611: from_stack_1v = clsbase.RsFrmGet()
  loc_AF6616: FLdPr var_CC
  loc_AF6619:  = Me.Fields
  loc_AF661E: FLdPr var_D0
  loc_AF6621: from_stack_2 = Me.Item(from_stack_1)
  loc_AF6626: FLdPr var_D4
  loc_AF6629:  = Me.Value
  loc_AF662E: FLdRfVar var_A0
  loc_AF6631: CStrVarTmp
  loc_AF6632: FStStrNoPop var_A4
  loc_AF6635: FLdPr Me
  loc_AF6638: VCallAd Control_ID_DetaSubrLbl
  loc_AF663B: FStAdFunc var_E8
  loc_AF663E: FLdPr var_E8
  loc_AF6641: Me.Caption = from_stack_1
  loc_AF6646: FFree1Str var_A4
  loc_AF6649: FFreeAd var_90 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AF6656: FFree1Var var_A0 = ""
  loc_AF6659: LitNothing
  loc_AF665B: FStAd var_8C 
  loc_AF665F: ExitProcHresult
End Sub

Private Sub MostrarRubrosChk_Click() 'B1524C
  'Data Table: 4FD9E0
  loc_B14FD4: FLdRfVar var_8A
  loc_B14FD7: FLdPr Me
  loc_B14FDA: VCallAd Control_ID_MostrarRubrosChk
  loc_B14FDD: FStAdFunc var_88
  loc_B14FE0: FLdPr var_88
  loc_B14FE3:  = Me.Value
  loc_B14FE8: FLdI2 var_8A
  loc_B14FEB: LitI2_Byte 1
  loc_B14FED: EqI2
  loc_B14FEE: FFree1Ad var_88
  loc_B14FF1: BranchF loc_B1510B
  loc_B14FF4: LitI2_Byte &HFF
  loc_B14FF6: FLdPr Me
  loc_B14FF9: VCallAd Control_ID_CodiRamoLbl
  loc_B14FFC: FStAdFunc var_88
  loc_B14FFF: FLdPr var_88
  loc_B15002: Me.Visible = from_stack_1b
  loc_B15007: FFree1Ad var_88
  loc_B1500A: LitI2_Byte &HFF
  loc_B1500C: FLdPr Me
  loc_B1500F: VCallAd Control_ID_CodiRubrLbl
  loc_B15012: FStAdFunc var_88
  loc_B15015: FLdPr var_88
  loc_B15018: Me.Visible = from_stack_1b
  loc_B1501D: FFree1Ad var_88
  loc_B15020: LitI2_Byte &HFF
  loc_B15022: FLdPr Me
  loc_B15025: VCallAd Control_ID_CodiSubrLbl
  loc_B15028: FStAdFunc var_88
  loc_B1502B: FLdPr var_88
  loc_B1502E: Me.Visible = from_stack_1b
  loc_B15033: FFree1Ad var_88
  loc_B15036: LitVar_TRUE var_9C
  loc_B15039: PopAdLdVar
  loc_B1503A: FLdPr Me
  loc_B1503D: VCallAd Control_ID_CodiRamoMsk
  loc_B15040: FStAdFunc var_88
  loc_B15043: FLdPr var_88
  loc_B15046: LateIdSt
  loc_B1504B: FFree1Ad var_88
  loc_B1504E: LitVar_TRUE var_9C
  loc_B15051: PopAdLdVar
  loc_B15052: FLdPr Me
  loc_B15055: VCallAd Control_ID_CodiRubrMsk
  loc_B15058: FStAdFunc var_88
  loc_B1505B: FLdPr var_88
  loc_B1505E: LateIdSt
  loc_B15063: FFree1Ad var_88
  loc_B15066: LitVar_TRUE var_9C
  loc_B15069: PopAdLdVar
  loc_B1506A: FLdPr Me
  loc_B1506D: VCallAd Control_ID_CodiSubrMsk
  loc_B15070: FStAdFunc var_88
  loc_B15073: FLdPr var_88
  loc_B15076: LateIdSt
  loc_B1507B: FFree1Ad var_88
  loc_B1507E: LitI2_Byte &HFF
  loc_B15080: FLdPr Me
  loc_B15083: VCallAd Control_ID_DetaRamoLbl
  loc_B15086: FStAdFunc var_88
  loc_B15089: FLdPr var_88
  loc_B1508C: Me.Visible = from_stack_1b
  loc_B15091: FFree1Ad var_88
  loc_B15094: LitI2_Byte &HFF
  loc_B15096: FLdPr Me
  loc_B15099: VCallAd Control_ID_DetaRubrLbl
  loc_B1509C: FStAdFunc var_88
  loc_B1509F: FLdPr var_88
  loc_B150A2: Me.Visible = from_stack_1b
  loc_B150A7: FFree1Ad var_88
  loc_B150AA: LitI2_Byte &HFF
  loc_B150AC: FLdPr Me
  loc_B150AF: VCallAd Control_ID_DetaSubrLbl
  loc_B150B2: FStAdFunc var_88
  loc_B150B5: FLdPr var_88
  loc_B150B8: Me.Visible = from_stack_1b
  loc_B150BD: FFree1Ad var_88
  loc_B150C0: LitVar_TRUE var_9C
  loc_B150C3: PopAdLdVar
  loc_B150C4: FLdPr Me
  loc_B150C7: VCallAd Control_ID_CodiRamoMsk
  loc_B150CA: FStAdFunc var_88
  loc_B150CD: FLdPr var_88
  loc_B150D0: LateIdSt
  loc_B150D5: FFree1Ad var_88
  loc_B150D8: LitVar_TRUE var_9C
  loc_B150DB: PopAdLdVar
  loc_B150DC: FLdPr Me
  loc_B150DF: VCallAd Control_ID_CodiRubrMsk
  loc_B150E2: FStAdFunc var_88
  loc_B150E5: FLdPr var_88
  loc_B150E8: LateIdSt
  loc_B150ED: FFree1Ad var_88
  loc_B150F0: LitVar_TRUE var_9C
  loc_B150F3: PopAdLdVar
  loc_B150F4: FLdPr Me
  loc_B150F7: VCallAd Control_ID_CodiSubrMsk
  loc_B150FA: FStAdFunc var_88
  loc_B150FD: FLdPr var_88
  loc_B15100: LateIdSt
  loc_B15105: FFree1Ad var_88
  loc_B15108: Branch loc_B15248
  loc_B1510B: FLdRfVar var_8A
  loc_B1510E: FLdPr Me
  loc_B15111: VCallAd Control_ID_MostrarRubrosChk
  loc_B15114: FStAdFunc var_88
  loc_B15117: FLdPr var_88
  loc_B1511A:  = Me.Value
  loc_B1511F: FLdI2 var_8A
  loc_B15122: LitI2_Byte 0
  loc_B15124: EqI2
  loc_B15125: FFree1Ad var_88
  loc_B15128: BranchF loc_B15248
  loc_B1512B: LitI2_Byte 0
  loc_B1512D: FLdPr Me
  loc_B15130: VCallAd Control_ID_CodiRamoLbl
  loc_B15133: FStAdFunc var_88
  loc_B15136: FLdPr var_88
  loc_B15139: Me.Visible = from_stack_1b
  loc_B1513E: FFree1Ad var_88
  loc_B15141: LitI2_Byte 0
  loc_B15143: FLdPr Me
  loc_B15146: VCallAd Control_ID_CodiRubrLbl
  loc_B15149: FStAdFunc var_88
  loc_B1514C: FLdPr var_88
  loc_B1514F: Me.Visible = from_stack_1b
  loc_B15154: FFree1Ad var_88
  loc_B15157: LitI2_Byte 0
  loc_B15159: FLdPr Me
  loc_B1515C: VCallAd Control_ID_CodiSubrLbl
  loc_B1515F: FStAdFunc var_88
  loc_B15162: FLdPr var_88
  loc_B15165: Me.Visible = from_stack_1b
  loc_B1516A: FFree1Ad var_88
  loc_B1516D: LitVar_FALSE
  loc_B15171: PopAdLdVar
  loc_B15172: FLdPr Me
  loc_B15175: VCallAd Control_ID_CodiRamoMsk
  loc_B15178: FStAdFunc var_88
  loc_B1517B: FLdPr var_88
  loc_B1517E: LateIdSt
  loc_B15183: FFree1Ad var_88
  loc_B15186: LitVar_FALSE
  loc_B1518A: PopAdLdVar
  loc_B1518B: FLdPr Me
  loc_B1518E: VCallAd Control_ID_CodiRubrMsk
  loc_B15191: FStAdFunc var_88
  loc_B15194: FLdPr var_88
  loc_B15197: LateIdSt
  loc_B1519C: FFree1Ad var_88
  loc_B1519F: LitVar_FALSE
  loc_B151A3: PopAdLdVar
  loc_B151A4: FLdPr Me
  loc_B151A7: VCallAd Control_ID_CodiSubrMsk
  loc_B151AA: FStAdFunc var_88
  loc_B151AD: FLdPr var_88
  loc_B151B0: LateIdSt
  loc_B151B5: FFree1Ad var_88
  loc_B151B8: LitI2_Byte 0
  loc_B151BA: FLdPr Me
  loc_B151BD: VCallAd Control_ID_DetaRamoLbl
  loc_B151C0: FStAdFunc var_88
  loc_B151C3: FLdPr var_88
  loc_B151C6: Me.Visible = from_stack_1b
  loc_B151CB: FFree1Ad var_88
  loc_B151CE: LitI2_Byte 0
  loc_B151D0: FLdPr Me
  loc_B151D3: VCallAd Control_ID_DetaRubrLbl
  loc_B151D6: FStAdFunc var_88
  loc_B151D9: FLdPr var_88
  loc_B151DC: Me.Visible = from_stack_1b
  loc_B151E1: FFree1Ad var_88
  loc_B151E4: LitI2_Byte 0
  loc_B151E6: FLdPr Me
  loc_B151E9: VCallAd Control_ID_DetaSubrLbl
  loc_B151EC: FStAdFunc var_88
  loc_B151EF: FLdPr var_88
  loc_B151F2: Me.Visible = from_stack_1b
  loc_B151F7: FFree1Ad var_88
  loc_B151FA: LitVarStr var_9C, vbNullString
  loc_B151FF: PopAdLdVar
  loc_B15200: FLdPr Me
  loc_B15203: VCallAd Control_ID_CodiRamoMsk
  loc_B15206: FStAdFunc var_88
  loc_B15209: FLdPr var_88
  loc_B1520C: LateIdSt
  loc_B15211: FFree1Ad var_88
  loc_B15214: LitVarStr var_9C, vbNullString
  loc_B15219: PopAdLdVar
  loc_B1521A: FLdPr Me
  loc_B1521D: VCallAd Control_ID_CodiRubrMsk
  loc_B15220: FStAdFunc var_88
  loc_B15223: FLdPr var_88
  loc_B15226: LateIdSt
  loc_B1522B: FFree1Ad var_88
  loc_B1522E: LitVarStr var_9C, vbNullString
  loc_B15233: PopAdLdVar
  loc_B15234: FLdPr Me
  loc_B15237: VCallAd Control_ID_CodiSubrMsk
  loc_B1523A: FStAdFunc var_88
  loc_B1523D: FLdPr var_88
  loc_B15240: LateIdSt
  loc_B15245: FFree1Ad var_88
  loc_B15248: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C4028
  'Data Table: 4FD9E0
  loc_9C4014: FLdPr Me
  loc_9C4017: VCallAd Control_ID_DesdeMsk
  loc_9C401A: CVarAd
  loc_9C401E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4023: FFree1Var var_94 = ""
  loc_9C4026: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A84CE0
  'Data Table: 4FD9E0
  loc_A84C5C: FLdPr Me
  loc_A84C5F: VCallAd Control_ID_DesdeMsk
  loc_A84C62: FStAdFunc var_88
  loc_A84C65: FLdPr var_88
  loc_A84C68: LateIdLdVar var_98 DispID_15 0
  loc_A84C6F: CStrVarTmp
  loc_A84C70: CVarStr var_A8
  loc_A84C73: ImpAdCallI2 IsDate()
  loc_A84C78: FFree1Ad var_88
  loc_A84C7B: FFreeVar var_98 = ""
  loc_A84C82: BranchF loc_A84CDF
  loc_A84C85: FLdPr Me
  loc_A84C88: VCallAd Control_ID_DesdeMsk
  loc_A84C8B: FStAdFunc var_88
  loc_A84C8E: FLdPr var_88
  loc_A84C91: LateIdLdVar var_98 DispID_15 0
  loc_A84C98: CStrVarTmp
  loc_A84C99: FStStrNoPop var_AC
  loc_A84C9C: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A84CA1: FStStrNoPop var_B0
  loc_A84CA4: FLdPr Me
  loc_A84CA7: MemStStrCopy
  loc_A84CAB: FFreeStr var_AC = ""
  loc_A84CB2: FFree1Ad var_88
  loc_A84CB5: FFree1Var var_98 = ""
  loc_A84CB8: FLdPr Me
  loc_A84CBB: VCallAd Control_ID_DesdeMsk
  loc_A84CBE: FStAdFuncNoPop
  loc_A84CC1: CastAd
  loc_A84CC4: FStAdFunc var_B4
  loc_A84CC7: FLdRfVar var_B4
  loc_A84CCA: FLdPr Me
  loc_A84CCD: MemLdStr global_100
  loc_A84CD0: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A84CD5: IStI2 arg_C
  loc_A84CD8: FFreeAd var_88 = ""
  loc_A84CDF: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A23EB4
  'Data Table: 4FD9E0
  loc_A23E6C: ILdI2 KeyAscii
  loc_A23E6F: CI4UI1
  loc_A23E70: LitI4 &H20
  loc_A23E75: EqI4
  loc_A23E76: BranchF loc_A23EB3
  loc_A23E79: LitVar_Missing var_A4
  loc_A23E7C: PopAdLdVar
  loc_A23E7D: LitVarI4
  loc_A23E85: PopAdLdVar
  loc_A23E86: ImpAdLdRf MemVar_D930A4
  loc_A23E89: NewIfNullPr frmCalendario
  loc_A23E8C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A23E91: ImpAdLdRf MemVar_D93028
  loc_A23E94: CDargRef
  loc_A23E98: FLdPr Me
  loc_A23E9B: VCallAd Control_ID_DesdeMsk
  loc_A23E9E: FStAdFunc var_A8
  loc_A23EA1: FLdPr var_A8
  loc_A23EA4: LateIdSt
  loc_A23EA9: FFree1Ad var_A8
  loc_A23EAC: LitStr vbNullString
  loc_A23EAF: ImpAdStStrCopy MemVar_D93028
  loc_A23EB3: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C4100
  'Data Table: 4FD9E0
  loc_9C40EC: FLdPr Me
  loc_9C40EF: VCallAd Control_ID_CodiConcMsk
  loc_9C40F2: CVarAd
  loc_9C40F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C40FB: FFree1Var var_94 = ""
  loc_9C40FE: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'AD6C44
  'Data Table: 4FD9E0
  loc_AD6B14: FLdPr Me
  loc_AD6B17: VCallAd Control_ID_DesdeMsk
  loc_AD6B1A: FStAdFunc var_88
  loc_AD6B1D: FLdPr var_88
  loc_AD6B20: LateIdLdVar var_98 DispID_15 0
  loc_AD6B27: CStrVarTmp
  loc_AD6B28: CVarStr var_A8
  loc_AD6B2B: ImpAdCallI2 IsDate()
  loc_AD6B30: FFree1Ad var_88
  loc_AD6B33: FFreeVar var_98 = ""
  loc_AD6B3A: BranchF loc_AD6B75
  loc_AD6B3D: FLdPr Me
  loc_AD6B40: VCallAd Control_ID_DesdeMsk
  loc_AD6B43: FStAdFunc var_88
  loc_AD6B46: FLdPr var_88
  loc_AD6B49: LateIdLdVar var_98 DispID_15 0
  loc_AD6B50: CStrVarTmp
  loc_AD6B51: CVarStr var_A8
  loc_AD6B54: FLdRfVar var_B8
  loc_AD6B57: ImpAdCallFPR4  = Year()
  loc_AD6B5C: FLdRfVar var_B8
  loc_AD6B5F: CI2Var
  loc_AD6B60: FLdPr Me
  loc_AD6B63: MemStI2 global_104
  loc_AD6B66: FFree1Ad var_88
  loc_AD6B69: FFreeVar var_98 = "": var_A8 = ""
  loc_AD6B72: Branch loc_AD6B7E
  loc_AD6B75: ImpAdLdI2 MemVar_D93034
  loc_AD6B78: FLdPr Me
  loc_AD6B7B: MemStI2 global_104
  loc_AD6B7E: FLdPr Me
  loc_AD6B81: VCallAd Control_ID_CodiConcMsk
  loc_AD6B84: FStAdFunc var_88
  loc_AD6B87: FLdPr var_88
  loc_AD6B8A: LateIdLdVar var_98 DispID_22 0
  loc_AD6B91: PopAd
  loc_AD6B93: LitI2_Byte 0
  loc_AD6B95: LitI2_Byte 0
  loc_AD6B97: LitI2_Byte 0
  loc_AD6B99: LitI2_Byte 0
  loc_AD6B9B: LitI2_Byte 0
  loc_AD6B9D: LitI2_Byte 0
  loc_AD6B9F: LitI2_Byte 0
  loc_AD6BA1: LitI2_Byte 0
  loc_AD6BA3: LitI2_Byte 0
  loc_AD6BA5: FLdRfVar var_98
  loc_AD6BA8: CStrVarTmp
  loc_AD6BA9: FStStrNoPop var_BC
  loc_AD6BAC: FLdPr Me
  loc_AD6BAF: MemLdI2 global_104
  loc_AD6BB2: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AD6BB7: FStStrNoPop var_C0
  loc_AD6BBA: FLdPr Me
  loc_AD6BBD: MemStStrCopy
  loc_AD6BC1: FFreeStr var_BC = ""
  loc_AD6BC8: FFree1Ad var_88
  loc_AD6BCB: FFree1Var var_98 = ""
  loc_AD6BCE: FLdPr Me
  loc_AD6BD1: VCallAd Control_ID_CodiConcMsk
  loc_AD6BD4: FStAdFuncNoPop
  loc_AD6BD7: CastAd
  loc_AD6BDA: FStAdFunc var_C4
  loc_AD6BDD: FLdRfVar var_C4
  loc_AD6BE0: FLdPr Me
  loc_AD6BE3: MemLdStr global_100
  loc_AD6BE6: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AD6BEB: IStI2 KeyAscii
  loc_AD6BEE: FFreeAd var_88 = ""
  loc_AD6BF5: ILdI2 KeyAscii
  loc_AD6BF8: NotI4
  loc_AD6BF9: BranchF loc_AD6C43
  loc_AD6BFC: FLdPr Me
  loc_AD6BFF: VCallAd Control_ID_CodiConcMsk
  loc_AD6C02: FStAdFunc var_88
  loc_AD6C05: FLdPr var_88
  loc_AD6C08: LateIdLdVar var_98 DispID_22 0
  loc_AD6C0F: CStrVarTmp
  loc_AD6C10: FStStrNoPop var_BC
  loc_AD6C13: FLdPr Me
  loc_AD6C16: MemLdI2 global_104
  loc_AD6C19: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AD6C1E: FStStrNoPop var_C0
  loc_AD6C21: FLdPr Me
  loc_AD6C24: VCallAd Control_ID_DetaConcLbl
  loc_AD6C27: FStAdFunc var_C4
  loc_AD6C2A: FLdPr var_C4
  loc_AD6C2D: Me.Caption = from_stack_1
  loc_AD6C32: FFreeStr var_BC = ""
  loc_AD6C39: FFreeAd var_88 = ""
  loc_AD6C40: FFree1Var var_98 = ""
  loc_AD6C43: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AD9680
  'Data Table: 4FD9E0
  loc_AD9544: ILdI2 KeyAscii
  loc_AD9547: LitI2_Byte &H20
  loc_AD9549: EqI2
  loc_AD954A: BranchF loc_AD967F
  loc_AD954D: LitI2_Byte 0
  loc_AD954F: IStI2 KeyAscii
  loc_AD9552: FLdPr Me
  loc_AD9555: VCallAd Control_ID_DesdeMsk
  loc_AD9558: FStAdFunc var_88
  loc_AD955B: FLdPr var_88
  loc_AD955E: LateIdLdVar var_98 DispID_15 0
  loc_AD9565: CStrVarTmp
  loc_AD9566: CVarStr var_A8
  loc_AD9569: ImpAdCallI2 IsDate()
  loc_AD956E: FFree1Ad var_88
  loc_AD9571: FFreeVar var_98 = ""
  loc_AD9578: BranchF loc_AD95B3
  loc_AD957B: FLdPr Me
  loc_AD957E: VCallAd Control_ID_DesdeMsk
  loc_AD9581: FStAdFunc var_88
  loc_AD9584: FLdPr var_88
  loc_AD9587: LateIdLdVar var_98 DispID_15 0
  loc_AD958E: CStrVarTmp
  loc_AD958F: CVarStr var_A8
  loc_AD9592: FLdRfVar var_B8
  loc_AD9595: ImpAdCallFPR4  = Year()
  loc_AD959A: FLdRfVar var_B8
  loc_AD959D: CI2Var
  loc_AD959E: FLdPr Me
  loc_AD95A1: MemStI2 global_104
  loc_AD95A4: FFree1Ad var_88
  loc_AD95A7: FFreeVar var_98 = "": var_A8 = ""
  loc_AD95B0: Branch loc_AD95BC
  loc_AD95B3: ImpAdLdI2 MemVar_D93034
  loc_AD95B6: FLdPr Me
  loc_AD95B9: MemStI2 global_104
  loc_AD95BC: FLdPr Me
  loc_AD95BF: MemLdI2 global_104
  loc_AD95C2: ImpAdLdRf MemVar_D94354
  loc_AD95C5: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD95C8: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AD95CD: LitVar_Missing var_D8
  loc_AD95D0: PopAdLdVar
  loc_AD95D1: LitVarI4
  loc_AD95D9: PopAdLdVar
  loc_AD95DA: ImpAdLdRf MemVar_D94354
  loc_AD95DD: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD95E0: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AD95E5: FLdRfVar var_DC
  loc_AD95E8: FLdRfVar var_88
  loc_AD95EB: ImpAdLdRf MemVar_D94354
  loc_AD95EE: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD95F1: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD95F6: FLdPr var_88
  loc_AD95F9: from_stack_1 = clsconcepto.RecordCount
  loc_AD95FE: ILdRf var_DC
  loc_AD9601: LitI4 0
  loc_AD9606: GtI4
  loc_AD9607: FFree1Ad var_88
  loc_AD960A: BranchF loc_AD967F
  loc_AD960D: FLdRfVar var_E0
  loc_AD9610: FLdRfVar var_88
  loc_AD9613: ImpAdLdRf MemVar_D94354
  loc_AD9616: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD9619: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD961E: FLdPr var_88
  loc_AD9621: from_stack_1 = clsconcepto.CodiConc
  loc_AD9626: FLdZeroAd var_E0
  loc_AD9629: CVarStr var_98
  loc_AD962C: PopAdLdVar
  loc_AD962D: FLdPr Me
  loc_AD9630: VCallAd Control_ID_CodiConcMsk
  loc_AD9633: FStAdFunc var_E4
  loc_AD9636: FLdPr var_E4
  loc_AD9639: LateIdSt
  loc_AD963E: FFreeAd var_88 = ""
  loc_AD9645: FFree1Var var_98 = ""
  loc_AD9648: FLdRfVar var_E0
  loc_AD964B: FLdRfVar var_88
  loc_AD964E: ImpAdLdRf MemVar_D94354
  loc_AD9651: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD9654: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD9659: FLdPr var_88
  loc_AD965C: from_stack_1 = clsconcepto.DetaConc
  loc_AD9661: ILdRf var_E0
  loc_AD9664: FLdPr Me
  loc_AD9667: VCallAd Control_ID_DetaConcLbl
  loc_AD966A: FStAdFunc var_E4
  loc_AD966D: FLdPr var_E4
  loc_AD9670: Me.Caption = from_stack_1
  loc_AD9675: FFree1Str var_E0
  loc_AD9678: FFreeAd var_88 = ""
  loc_AD967F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DDF3C
  'Data Table: 4FD9E0
  loc_9DDF20: LitI2_Byte 0
  loc_9DDF22: PopTmpLdAd2 var_8A
  loc_9DDF25: ILdRf Me
  loc_9DDF28: CastAd
  loc_9DDF2B: FStAdFunc var_88
  loc_9DDF2E: FLdRfVar var_88
  loc_9DDF31: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DDF36: FFree1Ad var_88
  loc_9DDF39: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1C858
  'Data Table: 4FD9E0
  loc_A1C820: FLdPr Me
  loc_A1C823: VCallAd Control_ID_statusBar
  loc_A1C826: FStAdFunc var_88
  loc_A1C829: FLdPr var_88
  loc_A1C82C: LateIdLdVar var_98 DispID_1 0
  loc_A1C833: CStrVarTmp
  loc_A1C834: CVarStr var_A8
  loc_A1C837: PopAdLdVar
  loc_A1C838: FLdPr Me
  loc_A1C83B: VCallAd Control_ID_statusBar
  loc_A1C83E: FStAdFunc var_BC
  loc_A1C841: FLdPr var_BC
  loc_A1C844: LateIdSt
  loc_A1C849: FFreeAd var_88 = ""
  loc_A1C850: FFreeVar var_98 = ""
  loc_A1C857: ExitProcHresult
End Sub

Private Sub PagoOpt_Click() '9EE850
  'Data Table: 4FD9E0
  loc_9EE82C: LitStr "Fecha de Pago"
  loc_9EE82F: FLdPr Me
  loc_9EE832: VCallAd Control_ID_FechasFra
  loc_9EE835: FStAdFunc var_88
  loc_9EE838: FLdPr var_88
  loc_9EE83B: Me.Caption = from_stack_1
  loc_9EE840: FFree1Ad var_88
  loc_9EE843: LitStr "Listado de Pagos por Concepto"
  loc_9EE846: FLdPr Me
  loc_9EE849: Me.Caption = from_stack_1
  loc_9EE84E: ExitProcHresult
End Sub

Private Sub AforoOpt_Click() '9EE7F8
  'Data Table: 4FD9E0
  loc_9EE7D4: LitStr "Fecha de Alta"
  loc_9EE7D7: FLdPr Me
  loc_9EE7DA: VCallAd Control_ID_FechasFra
  loc_9EE7DD: FStAdFunc var_88
  loc_9EE7E0: FLdPr var_88
  loc_9EE7E3: Me.Caption = from_stack_1
  loc_9EE7E8: FFree1Ad var_88
  loc_9EE7EB: LitStr "Listado de Aforos por Concepto"
  loc_9EE7EE: FLdPr Me
  loc_9EE7F1: Me.Caption = from_stack_1
  loc_9EE7F6: ExitProcHresult
  loc_9EE7F7: LitI2_Byte &H68
End Sub

Public Function bLogosGet() '4FF124
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4FF133
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4FF142
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4FF151
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A8AF28
  'Data Table: 4FD9E0
  loc_A8AEA4: LitI4 0
  loc_A8AEA9: LitI4 5
  loc_A8AEAE: FLdRfVar var_88
  loc_A8AEB1: Redim
  loc_A8AEBB: FLdPr Me
  loc_A8AEBE: VCallAd Control_ID_AforoOpt
  loc_A8AEC1: CVarAd
  loc_A8AEC5: ParmAry1St
  loc_A8AECB: FLdPr Me
  loc_A8AECE: VCallAd Control_ID_PagoOpt
  loc_A8AED1: CVarAd
  loc_A8AED5: ParmAry1St
  loc_A8AEDB: FLdPr Me
  loc_A8AEDE: VCallAd Control_ID_DesdeMsk
  loc_A8AEE1: CVarAd
  loc_A8AEE5: ParmAry1St
  loc_A8AEEB: FLdPr Me
  loc_A8AEEE: VCallAd Control_ID_HastaMsk
  loc_A8AEF1: CVarAd
  loc_A8AEF5: ParmAry1St
  loc_A8AEFB: FLdPr Me
  loc_A8AEFE: VCallAd Control_ID_CodiConcMsk
  loc_A8AF01: CVarAd
  loc_A8AF05: ParmAry1St
  loc_A8AF0B: FLdPr Me
  loc_A8AF0E: VCallAd Control_ID_MostrarRubrosChk
  loc_A8AF11: CVarAd
  loc_A8AF15: ParmAry1St
  loc_A8AF1B: FLdRfVar var_88
  loc_A8AF1E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8AF23: FLdRfVar var_88
  loc_A8AF26: Erase
  loc_A8AF27: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C5099C
  'Data Table: 4FD9E0
  loc_C4FC24: FLdPr Me
  loc_C4FC27: MemLdI2 bGenerado
  loc_C4FC2A: BranchF loc_C4FC2E
  loc_C4FC2D: ExitProcHresult
  loc_C4FC2E: LitVarStr var_94, "Generando reporte..."
  loc_C4FC33: PopAdLdVar
  loc_C4FC34: FLdPr Me
  loc_C4FC37: VCallAd Control_ID_statusBar
  loc_C4FC3A: FStAdFunc var_A8
  loc_C4FC3D: FLdPr var_A8
  loc_C4FC40: LateIdSt
  loc_C4FC45: FFree1Ad var_A8
  loc_C4FC48: LitI4 &HB
  loc_C4FC4D: CI2I4
  loc_C4FC4E: FLdPr Me
  loc_C4FC51: Me.MousePointer = from_stack_1
  loc_C4FC56: LitI2_Byte 0
  loc_C4FC58: PopTmpLdAd2 var_AE
  loc_C4FC5B: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C4FC60: FLdPr Me
  loc_C4FC63: MemLdStr global_100
  loc_C4FC66: LitStr vbNullString
  loc_C4FC69: NeStr
  loc_C4FC6B: BranchF loc_C4FC71
  loc_C4FC6E: Branch loc_C50972
  loc_C4FC71: LitI2_Byte 0
  loc_C4FC73: PopTmpLdAd2 var_AE
  loc_C4FC76: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C4FC7B: FLdPr Me
  loc_C4FC7E: MemLdStr global_100
  loc_C4FC81: LitStr vbNullString
  loc_C4FC84: NeStr
  loc_C4FC86: BranchF loc_C4FC8C
  loc_C4FC89: Branch loc_C50972
  loc_C4FC8C: LitI2_Byte 0
  loc_C4FC8E: PopTmpLdAd2 var_AE
  loc_C4FC91: Call CodiConcMsk_UnknownEvent_8()
  loc_C4FC96: FLdPr Me
  loc_C4FC99: MemLdStr global_100
  loc_C4FC9C: LitStr vbNullString
  loc_C4FC9F: NeStr
  loc_C4FCA1: BranchF loc_C4FCA7
  loc_C4FCA4: Branch loc_C50972
  loc_C4FCA7: FLdPr Me
  loc_C4FCAA: VCallAd Control_ID_DesdeMsk
  loc_C4FCAD: FStAdFunc var_A8
  loc_C4FCB0: FLdPr var_A8
  loc_C4FCB3: LateIdLdVar var_C0 DispID_15 0
  loc_C4FCBA: CStrVarTmp
  loc_C4FCBB: CVarStr var_D0
  loc_C4FCBE: ImpAdCallI2 IsDate()
  loc_C4FCC3: FLdPr Me
  loc_C4FCC6: VCallAd Control_ID_HastaMsk
  loc_C4FCC9: FStAdFunc var_D4
  loc_C4FCCC: FLdPr var_D4
  loc_C4FCCF: LateIdLdVar var_E4 DispID_15 0
  loc_C4FCD6: CStrVarTmp
  loc_C4FCD7: CVarStr var_F4
  loc_C4FCDA: ImpAdCallI2 IsDate()
  loc_C4FCDF: AndI4
  loc_C4FCE0: FFreeAd var_A8 = ""
  loc_C4FCE7: FFreeVar var_C0 = "": var_D0 = "": var_E4 = ""
  loc_C4FCF2: BranchF loc_C4FDAA
  loc_C4FCF5: FLdPr Me
  loc_C4FCF8: VCallAd Control_ID_DesdeMsk
  loc_C4FCFB: FStAdFunc var_A8
  loc_C4FCFE: FLdPr var_A8
  loc_C4FD01: LateIdLdVar var_C0 DispID_15 0
  loc_C4FD08: PopAd
  loc_C4FD0A: FLdPr Me
  loc_C4FD0D: VCallAd Control_ID_HastaMsk
  loc_C4FD10: FStAdFunc var_D4
  loc_C4FD13: FLdPr var_D4
  loc_C4FD16: LateIdLdVar var_134 DispID_15 0
  loc_C4FD1D: PopAd
  loc_C4FD1F: LitVarStr var_A4, " AND c1.FealCtct BETWEEN "
  loc_C4FD24: LitI4 1
  loc_C4FD29: LitI4 1
  loc_C4FD2E: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C4FD33: FStVarCopyObj var_E4
  loc_C4FD36: FLdRfVar var_E4
  loc_C4FD39: FLdRfVar var_C0
  loc_C4FD3C: CStrVarTmp
  loc_C4FD3D: CVarStr var_D0
  loc_C4FD40: FLdRfVar var_F4
  loc_C4FD43: ImpAdCallFPR4  = Format(, )
  loc_C4FD48: FLdRfVar var_F4
  loc_C4FD4B: ConcatVar var_104
  loc_C4FD4F: LitVarStr var_114, " AND "
  loc_C4FD54: ConcatVar var_124
  loc_C4FD58: LitI4 1
  loc_C4FD5D: LitI4 1
  loc_C4FD62: LitVarStr var_154, "'yyyy-mm-dd'"
  loc_C4FD67: FStVarCopyObj var_164
  loc_C4FD6A: FLdRfVar var_164
  loc_C4FD6D: FLdRfVar var_134
  loc_C4FD70: CStrVarTmp
  loc_C4FD71: CVarStr var_144
  loc_C4FD74: FLdRfVar var_174
  loc_C4FD77: ImpAdCallFPR4  = Format(, )
  loc_C4FD7C: FLdRfVar var_174
  loc_C4FD7F: ConcatVar var_184
  loc_C4FD83: CStrVarTmp
  loc_C4FD84: FStStr var_AC
  loc_C4FD87: FFreeAd var_A8 = ""
  loc_C4FD8E: FFreeVar var_C0 = "": var_D0 = "": var_E4 = "": var_F4 = "": var_104 = "": var_134 = "": var_144 = "": var_164 = "": var_124 = "": var_174 = ""
  loc_C4FDA7: Branch loc_C4FDB0
  loc_C4FDAA: LitStr vbNullString
  loc_C4FDAD: FStStrCopy var_AC
  loc_C4FDB0: FLdPr Me
  loc_C4FDB3: VCallAd Control_ID_CodiRamoMsk
  loc_C4FDB6: FStAdFunc var_A8
  loc_C4FDB9: FLdPr var_A8
  loc_C4FDBC: LateIdLdVar var_C0 DispID_22 0
  loc_C4FDC3: CStrVarTmp
  loc_C4FDC4: FStStrNoPop var_188
  loc_C4FDC7: LitStr vbNullString
  loc_C4FDCA: NeStr
  loc_C4FDCC: FLdPr Me
  loc_C4FDCF: VCallAd Control_ID_CodiRubrMsk
  loc_C4FDD2: FStAdFunc var_D4
  loc_C4FDD5: FLdPr var_D4
  loc_C4FDD8: LateIdLdVar var_D0 DispID_22 0
  loc_C4FDDF: CStrVarTmp
  loc_C4FDE0: FStStrNoPop var_18C
  loc_C4FDE3: LitStr vbNullString
  loc_C4FDE6: NeStr
  loc_C4FDE8: AndI4
  loc_C4FDE9: FLdPr Me
  loc_C4FDEC: VCallAd Control_ID_CodiSubrMsk
  loc_C4FDEF: FStAdFunc var_190
  loc_C4FDF2: FLdPr var_190
  loc_C4FDF5: LateIdLdVar var_E4 DispID_22 0
  loc_C4FDFC: CStrVarTmp
  loc_C4FDFD: FStStrNoPop var_194
  loc_C4FE00: LitStr vbNullString
  loc_C4FE03: NeStr
  loc_C4FE05: AndI4
  loc_C4FE06: FFreeStr var_188 = "": var_18C = ""
  loc_C4FE0F: FFreeAd var_A8 = "": var_D4 = ""
  loc_C4FE18: FFreeVar var_C0 = "": var_D0 = ""
  loc_C4FE21: BranchF loc_C4FED4
  loc_C4FE24: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_come;"
  loc_C4FE27: LitStr " CREATE TEMPORARY TABLE tmp_come"
  loc_C4FE2A: ConcatStr
  loc_C4FE2B: FStStrNoPop var_188
  loc_C4FE2E: LitStr " SELECT CodiCome FROM servcome WHERE CodiRamo = "
  loc_C4FE31: ConcatStr
  loc_C4FE32: FStStrNoPop var_18C
  loc_C4FE35: FLdPr Me
  loc_C4FE38: VCallAd Control_ID_CodiRamoMsk
  loc_C4FE3B: FStAdFunc var_A8
  loc_C4FE3E: FLdPr var_A8
  loc_C4FE41: LateIdLdVar var_C0 DispID_22 0
  loc_C4FE48: CStrVarTmp
  loc_C4FE49: FStStrNoPop var_194
  loc_C4FE4C: ConcatStr
  loc_C4FE4D: FStStrNoPop var_198
  loc_C4FE50: LitStr " AND CodiRubr = "
  loc_C4FE53: ConcatStr
  loc_C4FE54: FStStrNoPop var_19C
  loc_C4FE57: FLdPr Me
  loc_C4FE5A: VCallAd Control_ID_CodiRamoMsk
  loc_C4FE5D: FStAdFunc var_D4
  loc_C4FE60: FLdPr var_D4
  loc_C4FE63: LateIdLdVar var_D0 DispID_22 0
  loc_C4FE6A: CStrVarTmp
  loc_C4FE6B: FStStrNoPop var_1A0
  loc_C4FE6E: ConcatStr
  loc_C4FE6F: FStStrNoPop var_1A4
  loc_C4FE72: LitStr " AND CodiSubr = "
  loc_C4FE75: ConcatStr
  loc_C4FE76: FStStrNoPop var_1A8
  loc_C4FE79: FLdPr Me
  loc_C4FE7C: VCallAd Control_ID_CodiSubrMsk
  loc_C4FE7F: FStAdFunc var_190
  loc_C4FE82: FLdPr var_190
  loc_C4FE85: LateIdLdVar var_E4 DispID_22 0
  loc_C4FE8C: CStrVarTmp
  loc_C4FE8D: FStStrNoPop var_1AC
  loc_C4FE90: ConcatStr
  loc_C4FE91: FStStrNoPop var_1B0
  loc_C4FE94: LitStr " GROUP BY CodiCome;"
  loc_C4FE97: ConcatStr
  loc_C4FE98: FStStrNoPop var_1B4
  loc_C4FE9B: FLdPr Me
  loc_C4FE9E: MemLdRfVar from_stack_1.global_76
  loc_C4FEA1: NewIfNullPr clsctacte
  loc_C4FEA4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4FEA9: FFreeStr var_188 = "": var_18C = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_C4FEC2: FFreeAd var_A8 = "": var_D4 = ""
  loc_C4FECB: FFreeVar var_C0 = "": var_D0 = ""
  loc_C4FED4: FLdPr Me
  loc_C4FED7: MemLdRfVar from_stack_1.global_76
  loc_C4FEDA: NewIfNullAd
  loc_C4FEDD: FStAd var_1B8 
  loc_C4FEE1: FLdRfVar var_AE
  loc_C4FEE4: FLdPr Me
  loc_C4FEE7: VCallAd Control_ID_AforoOpt
  loc_C4FEEA: FStAdFunc var_A8
  loc_C4FEED: FLdPr var_A8
  loc_C4FEF0:  = Me.Value
  loc_C4FEF5: FLdI2 var_AE
  loc_C4FEF8: FFree1Ad var_A8
  loc_C4FEFB: BranchF loc_C50423
  loc_C4FEFE: FLdRfVar var_AE
  loc_C4FF01: FLdPr Me
  loc_C4FF04: VCallAd Control_ID_MostrarRubrosChk
  loc_C4FF07: FStAdFunc var_A8
  loc_C4FF0A: FLdPr var_A8
  loc_C4FF0D:  = Me.Value
  loc_C4FF12: FLdI2 var_AE
  loc_C4FF15: LitI2_Byte 1
  loc_C4FF17: EqI2
  loc_C4FF18: FFree1Ad var_A8
  loc_C4FF1B: BranchF loc_C501FB
  loc_C4FF1E: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_come;"
  loc_C4FF21: LitStr " CREATE TEMPORARY TABLE tmp_come"
  loc_C4FF24: ConcatStr
  loc_C4FF25: FStStrNoPop var_188
  loc_C4FF28: LitStr " SELECT CodiCome FROM servcome WHERE CodiRamo = "
  loc_C4FF2B: ConcatStr
  loc_C4FF2C: FStStrNoPop var_18C
  loc_C4FF2F: FLdPr Me
  loc_C4FF32: VCallAd Control_ID_CodiRamoMsk
  loc_C4FF35: FStAdFunc var_A8
  loc_C4FF38: FLdPr var_A8
  loc_C4FF3B: LateIdLdVar var_C0 DispID_22 0
  loc_C4FF42: CStrVarTmp
  loc_C4FF43: FStStrNoPop var_194
  loc_C4FF46: ConcatStr
  loc_C4FF47: FStStrNoPop var_198
  loc_C4FF4A: LitStr " AND CodiRubr = "
  loc_C4FF4D: ConcatStr
  loc_C4FF4E: FStStrNoPop var_19C
  loc_C4FF51: FLdPr Me
  loc_C4FF54: VCallAd Control_ID_CodiRubrMsk
  loc_C4FF57: FStAdFunc var_D4
  loc_C4FF5A: FLdPr var_D4
  loc_C4FF5D: LateIdLdVar var_D0 DispID_22 0
  loc_C4FF64: CStrVarTmp
  loc_C4FF65: FStStrNoPop var_1A0
  loc_C4FF68: ConcatStr
  loc_C4FF69: FStStrNoPop var_1A4
  loc_C4FF6C: LitStr " AND CodiSubr = "
  loc_C4FF6F: ConcatStr
  loc_C4FF70: FStStrNoPop var_1A8
  loc_C4FF73: FLdPr Me
  loc_C4FF76: VCallAd Control_ID_CodiSubrMsk
  loc_C4FF79: FStAdFunc var_190
  loc_C4FF7C: FLdPr var_190
  loc_C4FF7F: LateIdLdVar var_E4 DispID_22 0
  loc_C4FF86: CStrVarTmp
  loc_C4FF87: FStStrNoPop var_1AC
  loc_C4FF8A: ConcatStr
  loc_C4FF8B: FStStrNoPop var_1B0
  loc_C4FF8E: LitStr " GROUP BY CodiCome;"
  loc_C4FF91: ConcatStr
  loc_C4FF92: FStStrNoPop var_1B4
  loc_C4FF95: FLdPr var_1B8
  loc_C4FF98: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4FF9D: FFreeStr var_188 = "": var_18C = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_C4FFB6: FFreeAd var_A8 = "": var_D4 = ""
  loc_C4FFBF: FFreeVar var_C0 = "": var_D0 = ""
  loc_C4FFC8: FLdPr Me
  loc_C4FFCB: VCallAd Control_ID_DesdeMsk
  loc_C4FFCE: FStAdFunc var_A8
  loc_C4FFD1: FLdPr var_A8
  loc_C4FFD4: LateIdLdVar var_C0 DispID_15 0
  loc_C4FFDB: PopAd
  loc_C4FFDD: FLdPr Me
  loc_C4FFE0: VCallAd Control_ID_HastaMsk
  loc_C4FFE3: FStAdFunc var_D4
  loc_C4FFE6: FLdPr var_D4
  loc_C4FFE9: LateIdLdVar var_144 DispID_15 0
  loc_C4FFF0: PopAd
  loc_C4FFF2: FLdPr Me
  loc_C4FFF5: VCallAd Control_ID_DesdeMsk
  loc_C4FFF8: FStAdFunc var_190
  loc_C4FFFB: FLdPr var_190
  loc_C4FFFE: LateIdLdVar var_208 DispID_15 0
  loc_C50005: PopAd
  loc_C50007: FLdPr Me
  loc_C5000A: VCallAd Control_ID_HastaMsk
  loc_C5000D: FStAdFunc var_27C
  loc_C50010: FLdPr var_27C
  loc_C50013: LateIdLdVar var_28C DispID_15 0
  loc_C5001A: PopAd
  loc_C5001C: LitStr " SELECT c1.CuenCtct, DetaPers, c1.PeriCtct, c1.BimeCtct, c1.PeriBole, c1.NumeBole, c1.FealCtct, c1.ExpeCtct, c1.DebeCtct,"
  loc_C5001F: LitStr " sum(ifnull(c2.CredCtct,0)) as CredCtct, max(c2.FeveCtct) as FeveCtct, SUM(IF(c2.FealCtct >= "
  loc_C50022: ConcatStr
  loc_C50023: CVarStr var_104
  loc_C50026: LitI4 1
  loc_C5002B: LitI4 1
  loc_C50030: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C50035: FStVarCopyObj var_E4
  loc_C50038: FLdRfVar var_E4
  loc_C5003B: FLdRfVar var_C0
  loc_C5003E: CStrVarTmp
  loc_C5003F: CVarStr var_D0
  loc_C50042: FLdRfVar var_F4
  loc_C50045: ImpAdCallFPR4  = Format(, )
  loc_C5004A: FLdRfVar var_F4
  loc_C5004D: ConcatVar var_124
  loc_C50051: LitVarStr var_A4, " AND c2.FealCtct <= "
  loc_C50056: ConcatVar var_134
  loc_C5005A: LitI4 1
  loc_C5005F: LitI4 1
  loc_C50064: LitVarStr var_114, "'yyyy-mm-dd'"
  loc_C50069: FStVarCopyObj var_174
  loc_C5006C: FLdRfVar var_174
  loc_C5006F: FLdRfVar var_144
  loc_C50072: CStrVarTmp
  loc_C50073: CVarStr var_164
  loc_C50076: FLdRfVar var_184
  loc_C50079: ImpAdCallFPR4  = Format(, )
  loc_C5007E: FLdRfVar var_184
  loc_C50081: ConcatVar var_1C8
  loc_C50085: LitVarStr var_154, ",IFNULL(c2.CredCtct,0),0)) AS PagosPeriodo,  "
  loc_C5008A: ConcatVar var_1D8
  loc_C5008E: LitVarStr var_1E8, " SUM(IF(c2.FealCtct >= "
  loc_C50093: ConcatVar var_1F8
  loc_C50097: LitI4 1
  loc_C5009C: LitI4 1
  loc_C500A1: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_C500A6: FStVarCopyObj var_238
  loc_C500A9: FLdRfVar var_238
  loc_C500AC: FLdRfVar var_208
  loc_C500AF: CStrVarTmp
  loc_C500B0: CVarStr var_218
  loc_C500B3: FLdRfVar var_248
  loc_C500B6: ImpAdCallFPR4  = Format(, )
  loc_C500BB: FLdRfVar var_248
  loc_C500BE: ConcatVar var_258
  loc_C500C2: LitVarStr var_268, " AND c2.FealCtct <= "
  loc_C500C7: ConcatVar var_278
  loc_C500CB: LitI4 1
  loc_C500D0: LitI4 1
  loc_C500D5: LitVarStr var_2AC, "'yyyy-mm-dd'"
  loc_C500DA: FStVarCopyObj var_2BC
  loc_C500DD: FLdRfVar var_2BC
  loc_C500E0: FLdRfVar var_28C
  loc_C500E3: CStrVarTmp
  loc_C500E4: CVarStr var_29C
  loc_C500E7: FLdRfVar var_2CC
  loc_C500EA: ImpAdCallFPR4  = Format(, )
  loc_C500EF: FLdRfVar var_2CC
  loc_C500F2: ConcatVar var_2DC
  loc_C500F6: LitVarStr var_2EC, ",0,IFNULL(c2.CredCtct,0))) AS PagosFueraPeriodo "
  loc_C500FB: ConcatVar var_2FC
  loc_C500FF: LitVarStr var_30C, " FROM ctacte as c1"
  loc_C50104: ConcatVar var_31C
  loc_C50108: LitVarStr var_32C, " LEFT JOIN ctacte as c2 ON c2.CodiOfic = c1.CodiOfic AND c2.CuenCtct = c1.CuenCtct"
  loc_C5010D: ConcatVar var_33C
  loc_C50111: LitVarStr var_34C, "   AND c2.PeriCtct = c1.PeriCtct AND c2.BimeCtct = c1.BimeCtct AND c2.NumeCtct = c1.NumeCtct"
  loc_C50116: ConcatVar var_35C
  loc_C5011A: LitVarStr var_36C, "   AND c2.MoviCtct > 1 AND c2.CodiTimo in(2,4,5,9,21,25) "
  loc_C5011F: ConcatVar var_37C
  loc_C50123: LitVarStr var_38C, " LEFT JOIN relacion ON relacion.CodiOfic = c1.CodiOfic AND relacion.CuenCtct = c1.CuenCtct"
  loc_C50128: ConcatVar var_39C
  loc_C5012C: LitVarStr var_3AC, "   AND relacion.TipoRela = 'Titular'"
  loc_C50131: ConcatVar var_3BC
  loc_C50135: LitVarStr var_3CC, " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C5013A: ConcatVar var_3DC
  loc_C5013E: LitVarStr var_3EC, " INNER JOIN tmp_come ON tmp_come.codiCome = c1.CuenCtct"
  loc_C50143: ConcatVar var_3FC
  loc_C50147: LitVarStr var_40C, " WHERE c1.CodiTimo = 1 AND c1.CodiConc = '"
  loc_C5014C: ConcatVar var_41C
  loc_C50150: FLdPr Me
  loc_C50153: VCallAd Control_ID_CodiConcMsk
  loc_C50156: FStAdFunc var_420
  loc_C50159: FLdPr var_420
  loc_C5015C: LateIdLdVar var_430 DispID_22 0
  loc_C50163: CStrVarTmp
  loc_C50164: CVarStr var_440
  loc_C50167: ConcatVar var_450
  loc_C5016B: LitVarStr var_460, "'"
  loc_C50170: ConcatVar var_470
  loc_C50174: ILdRf var_AC
  loc_C50177: CVarStr var_480
  loc_C5017A: ConcatVar var_490
  loc_C5017E: LitVarStr var_4A0, " GROUP BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct ORDER BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct"
  loc_C50183: ConcatVar var_4B0
  loc_C50187: CStrVarVal var_188
  loc_C5018B: FLdPr var_1B8
  loc_C5018E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C50193: FFree1Str var_188
  loc_C50196: FFreeAd var_A8 = "": var_D4 = "": var_190 = "": var_27C = ""
  loc_C501A3: FFreeVar var_39C = "": var_3BC = "": var_3DC = "": var_3FC = "": var_430 = "": var_41C = "": var_440 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = "": var_C0 = "": var_D0 = "": var_E4 = "": var_104 = "": var_F4 = "": var_124 = "": var_144 = "": var_164 = "": var_174 = "": var_134 = "": var_184 = "": var_1C8 = "": var_1D8 = "": var_208 = "": var_218 = "": var_238 = "": var_1F8 = "": var_248 = "": var_258 = "": var_28C = "": var_29C = "": var_2BC = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = ""
  loc_C501F8: Branch loc_C50420
  loc_C501FB: FLdPr Me
  loc_C501FE: VCallAd Control_ID_DesdeMsk
  loc_C50201: FStAdFunc var_A8
  loc_C50204: FLdPr var_A8
  loc_C50207: LateIdLdVar var_C0 DispID_15 0
  loc_C5020E: PopAd
  loc_C50210: FLdPr Me
  loc_C50213: VCallAd Control_ID_HastaMsk
  loc_C50216: FStAdFunc var_D4
  loc_C50219: FLdPr var_D4
  loc_C5021C: LateIdLdVar var_144 DispID_15 0
  loc_C50223: PopAd
  loc_C50225: FLdPr Me
  loc_C50228: VCallAd Control_ID_DesdeMsk
  loc_C5022B: FStAdFunc var_190
  loc_C5022E: FLdPr var_190
  loc_C50231: LateIdLdVar var_208 DispID_15 0
  loc_C50238: PopAd
  loc_C5023A: FLdPr Me
  loc_C5023D: VCallAd Control_ID_HastaMsk
  loc_C50240: FStAdFunc var_27C
  loc_C50243: FLdPr var_27C
  loc_C50246: LateIdLdVar var_28C DispID_15 0
  loc_C5024D: PopAd
  loc_C5024F: LitStr "SELECT c1.CuenCtct, DetaPers, c1.PeriCtct, c1.BimeCtct, c1.PeriBole, c1.NumeBole, c1.FealCtct, c1.ExpeCtct, c1.DebeCtct,"
  loc_C50252: LitStr " sum(ifnull(c2.CredCtct,0)) as CredCtct, max(c2.FeveCtct) as FeveCtct, SUM(IF(c2.FealCtct >= "
  loc_C50255: ConcatStr
  loc_C50256: CVarStr var_104
  loc_C50259: LitI4 1
  loc_C5025E: LitI4 1
  loc_C50263: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C50268: FStVarCopyObj var_E4
  loc_C5026B: FLdRfVar var_E4
  loc_C5026E: FLdRfVar var_C0
  loc_C50271: CStrVarTmp
  loc_C50272: CVarStr var_D0
  loc_C50275: FLdRfVar var_F4
  loc_C50278: ImpAdCallFPR4  = Format(, )
  loc_C5027D: FLdRfVar var_F4
  loc_C50280: ConcatVar var_124
  loc_C50284: LitVarStr var_A4, " AND c2.FealCtct <= "
  loc_C50289: ConcatVar var_134
  loc_C5028D: LitI4 1
  loc_C50292: LitI4 1
  loc_C50297: LitVarStr var_114, "'yyyy-mm-dd'"
  loc_C5029C: FStVarCopyObj var_174
  loc_C5029F: FLdRfVar var_174
  loc_C502A2: FLdRfVar var_144
  loc_C502A5: CStrVarTmp
  loc_C502A6: CVarStr var_164
  loc_C502A9: FLdRfVar var_184
  loc_C502AC: ImpAdCallFPR4  = Format(, )
  loc_C502B1: FLdRfVar var_184
  loc_C502B4: ConcatVar var_1C8
  loc_C502B8: LitVarStr var_154, ",IFNULL(c2.CredCtct,0),0)) AS PagosPeriodo,  "
  loc_C502BD: ConcatVar var_1D8
  loc_C502C1: LitVarStr var_1E8, " SUM(IF(c2.FealCtct >= "
  loc_C502C6: ConcatVar var_1F8
  loc_C502CA: LitI4 1
  loc_C502CF: LitI4 1
  loc_C502D4: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_C502D9: FStVarCopyObj var_238
  loc_C502DC: FLdRfVar var_238
  loc_C502DF: FLdRfVar var_208
  loc_C502E2: CStrVarTmp
  loc_C502E3: CVarStr var_218
  loc_C502E6: FLdRfVar var_248
  loc_C502E9: ImpAdCallFPR4  = Format(, )
  loc_C502EE: FLdRfVar var_248
  loc_C502F1: ConcatVar var_258
  loc_C502F5: LitVarStr var_268, " AND c2.FealCtct <= "
  loc_C502FA: ConcatVar var_278
  loc_C502FE: LitI4 1
  loc_C50303: LitI4 1
  loc_C50308: LitVarStr var_2AC, "'yyyy-mm-dd'"
  loc_C5030D: FStVarCopyObj var_2BC
  loc_C50310: FLdRfVar var_2BC
  loc_C50313: FLdRfVar var_28C
  loc_C50316: CStrVarTmp
  loc_C50317: CVarStr var_29C
  loc_C5031A: FLdRfVar var_2CC
  loc_C5031D: ImpAdCallFPR4  = Format(, )
  loc_C50322: FLdRfVar var_2CC
  loc_C50325: ConcatVar var_2DC
  loc_C50329: LitVarStr var_2EC, ",0,IFNULL(c2.CredCtct,0))) AS PagosFueraPeriodo "
  loc_C5032E: ConcatVar var_2FC
  loc_C50332: LitVarStr var_30C, " FROM ctacte as c1"
  loc_C50337: ConcatVar var_31C
  loc_C5033B: LitVarStr var_32C, " LEFT JOIN ctacte as c2 ON c2.CodiOfic = c1.CodiOfic AND c2.CuenCtct = c1.CuenCtct"
  loc_C50340: ConcatVar var_33C
  loc_C50344: LitVarStr var_34C, "   AND c2.PeriCtct = c1.PeriCtct AND c2.BimeCtct = c1.BimeCtct AND c2.NumeCtct = c1.NumeCtct"
  loc_C50349: ConcatVar var_35C
  loc_C5034D: LitVarStr var_36C, "   AND c2.MoviCtct > 1 AND c2.CodiTimo in(2,4,5,9,21,25) "
  loc_C50352: ConcatVar var_37C
  loc_C50356: LitVarStr var_38C, " LEFT JOIN relacion ON relacion.CodiOfic = c1.CodiOfic AND relacion.CuenCtct = c1.CuenCtct"
  loc_C5035B: ConcatVar var_39C
  loc_C5035F: LitVarStr var_3AC, "   AND relacion.TipoRela = 'Titular'"
  loc_C50364: ConcatVar var_3BC
  loc_C50368: LitVarStr var_3CC, " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C5036D: ConcatVar var_3DC
  loc_C50371: LitVarStr var_3EC, " WHERE c1.CodiTimo = 1 AND c1.CodiConc = '"
  loc_C50376: ConcatVar var_3FC
  loc_C5037A: FLdPr Me
  loc_C5037D: VCallAd Control_ID_CodiConcMsk
  loc_C50380: FStAdFunc var_420
  loc_C50383: FLdPr var_420
  loc_C50386: LateIdLdVar var_41C DispID_22 0
  loc_C5038D: CStrVarTmp
  loc_C5038E: CVarStr var_430
  loc_C50391: ConcatVar var_440
  loc_C50395: LitVarStr var_40C, "'"
  loc_C5039A: ConcatVar var_450
  loc_C5039E: ILdRf var_AC
  loc_C503A1: CVarStr var_460
  loc_C503A4: ConcatVar var_470
  loc_C503A8: LitVarStr var_480, " GROUP BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct ORDER BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct"
  loc_C503AD: ConcatVar var_490
  loc_C503B1: CStrVarVal var_188
  loc_C503B5: FLdPr var_1B8
  loc_C503B8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C503BD: FFree1Str var_188
  loc_C503C0: FFreeAd var_A8 = "": var_D4 = "": var_190 = "": var_27C = ""
  loc_C503CD: FFreeVar var_39C = "": var_3BC = "": var_3DC = "": var_41C = "": var_3FC = "": var_430 = "": var_440 = "": var_450 = "": var_470 = "": var_490 = "": var_C0 = "": var_D0 = "": var_E4 = "": var_104 = "": var_F4 = "": var_124 = "": var_144 = "": var_164 = "": var_174 = "": var_134 = "": var_184 = "": var_1C8 = "": var_1D8 = "": var_208 = "": var_218 = "": var_238 = "": var_1F8 = "": var_248 = "": var_258 = "": var_28C = "": var_29C = "": var_2BC = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = ""
  loc_C50420: Branch loc_C504CB
  loc_C50423: LitStr "SELECT c1.CuenCtct, DetaPers, c1.PeriCtct, c1.BimeCtct, c1.PeriBole, c1.NumeBole, c1.FeveCtct as FealCtct, c2.DebeCtct,"
  loc_C50426: LitStr " c1.CredCtct, c2.FeveCtct, c2.ExpeCtct FROM ctacte as c1"
  loc_C50429: ConcatStr
  loc_C5042A: FStStrNoPop var_188
  loc_C5042D: LitStr " LEFT JOIN ctacte as c2 ON c2.CodiOfic = c1.CodiOfic AND c2.CuenCtct = c1.CuenCtct"
  loc_C50430: ConcatStr
  loc_C50431: FStStrNoPop var_18C
  loc_C50434: LitStr " AND c2.PeriCtct = c1.PeriCtct AND c2.BimeCtct = c1.BimeCtct AND c2.NumeCtct = c1.NumeCtct"
  loc_C50437: ConcatStr
  loc_C50438: FStStrNoPop var_194
  loc_C5043B: LitStr " AND c2.MoviCtct = 1"
  loc_C5043E: ConcatStr
  loc_C5043F: FStStrNoPop var_198
  loc_C50442: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = c1.CodiOfic AND relacion.CuenCtct = c1.CuenCtct"
  loc_C50445: ConcatStr
  loc_C50446: FStStrNoPop var_19C
  loc_C50449: LitStr " AND relacion.TipoRela = 'Titular'"
  loc_C5044C: ConcatStr
  loc_C5044D: FStStrNoPop var_1A0
  loc_C50450: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C50453: ConcatStr
  loc_C50454: FStStrNoPop var_1A4
  loc_C50457: LitStr " WHERE c1.CodiTimo in(2,4,5,9,21,25)"
  loc_C5045A: ConcatStr
  loc_C5045B: FStStrNoPop var_1A8
  loc_C5045E: LitStr " AND c1.CodiConc = '"
  loc_C50461: ConcatStr
  loc_C50462: FStStrNoPop var_1AC
  loc_C50465: FLdPr Me
  loc_C50468: VCallAd Control_ID_CodiConcMsk
  loc_C5046B: FStAdFunc var_A8
  loc_C5046E: FLdPr var_A8
  loc_C50471: LateIdLdVar var_C0 DispID_22 0
  loc_C50478: CStrVarTmp
  loc_C50479: FStStrNoPop var_1B0
  loc_C5047C: ConcatStr
  loc_C5047D: FStStrNoPop var_1B4
  loc_C50480: LitStr "'"
  loc_C50483: ConcatStr
  loc_C50484: FStStrNoPop var_4B4
  loc_C50487: ILdRf var_AC
  loc_C5048A: ConcatStr
  loc_C5048B: FStStrNoPop var_4B8
  loc_C5048E: LitStr " GROUP BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct, c1.MoviCtct "
  loc_C50491: ConcatStr
  loc_C50492: FStStrNoPop var_4BC
  loc_C50495: LitStr " ORDER BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct, c1.MoviCtct"
  loc_C50498: ConcatStr
  loc_C50499: FStStrNoPop var_4C0
  loc_C5049C: FLdPr var_1B8
  loc_C5049F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C504A4: FFreeStr var_188 = "": var_18C = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_4B4 = "": var_4B8 = "": var_4BC = ""
  loc_C504C5: FFree1Ad var_A8
  loc_C504C8: FFree1Var var_C0 = ""
  loc_C504CB: FLdRfVar var_4C4
  loc_C504CE: FLdPr var_1B8
  loc_C504D1: from_stack_1 = clsctacte.RecordCount
  loc_C504D6: ILdRf var_4C4
  loc_C504D9: LitI4 0
  loc_C504DE: EqI4
  loc_C504DF: BranchF loc_C504ED
  loc_C504E2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C504E5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C504EA: Branch loc_C50972
  loc_C504ED: LitStr vbNullString
  loc_C504F0: FStStrCopy var_4C8
  loc_C504F3: LitI2_Byte 0
  loc_C504F5: CStrUI1
  loc_C504F7: FStStrNoPop var_188
  loc_C504FA: FLdPr Me
  loc_C504FD: MemStStrCopy
  loc_C50501: FFree1Str var_188
  loc_C50504: LitI2_Byte 0
  loc_C50506: LitVar_Missing var_C0
  loc_C50509: LitI2_Byte &HFF
  loc_C5050B: LitVarI2 var_94, 0
  loc_C50510: PopAdLdVar
  loc_C50511: FLdPr Me
  loc_C50514: MemLdRfVar from_stack_1.global_92
  loc_C50517: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C5051C: FFree1Var var_C0 = ""
  loc_C5051F: LitI2_Byte 0
  loc_C50521: LitVar_Missing var_C0
  loc_C50524: LitI2_Byte &HFF
  loc_C50526: LitVarI2 var_94, 0
  loc_C5052B: PopAdLdVar
  loc_C5052C: FLdPr Me
  loc_C5052F: MemLdRfVar from_stack_1.global_96
  loc_C50532: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50537: FFree1Var var_C0 = ""
  loc_C5053A: LitI2_Byte 0
  loc_C5053C: LitVar_Missing var_C0
  loc_C5053F: LitI2_Byte &HFF
  loc_C50541: LitVarI2 var_94, 0
  loc_C50546: PopAdLdVar
  loc_C50547: FLdPr Me
  loc_C5054A: MemLdRfVar from_stack_1.global_108
  loc_C5054D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50552: FFree1Var var_C0 = ""
  loc_C50555: LitI2_Byte 0
  loc_C50557: LitVar_Missing var_C0
  loc_C5055A: LitI2_Byte &HFF
  loc_C5055C: LitVarI2 var_94, 0
  loc_C50561: PopAdLdVar
  loc_C50562: FLdPr Me
  loc_C50565: MemLdRfVar from_stack_1.global_112
  loc_C50568: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C5056D: FFree1Var var_C0 = ""
  loc_C50570: LitI4 0
  loc_C50575: FLdRfVar var_4C4
  loc_C50578: FLdPr var_1B8
  loc_C5057B: from_stack_1 = clsctacte.RecordCount
  loc_C50580: ILdRf var_4C4
  loc_C50583: FLdPr Me
  loc_C50586: MemLdRfVar from_stack_1.global_80
  loc_C50589: Redim
  loc_C50593: FLdPr var_1B8
  loc_C50596: Call clsctacte.MoveFirst()
  loc_C5059B: LitI4 1
  loc_C505A0: FLdPr Me
  loc_C505A3: MemLdRfVar from_stack_1.global_84
  loc_C505A6: FLdPr Me
  loc_C505A9: MemLdStr global_80
  loc_C505AC: LitI2_Byte 1
  loc_C505AE: FnUBound
  loc_C505B0: ForI4 var_4D0
  loc_C505B6: FLdRfVar var_188
  loc_C505B9: FLdPr var_1B8
  loc_C505BC: from_stack_1 = clsctacte.CuenCtct
  loc_C505C1: LitI2_Byte 0
  loc_C505C3: LitVar_Missing var_D0
  loc_C505C6: LitI2_Byte 0
  loc_C505C8: FLdZeroAd var_188
  loc_C505CB: CVarStr var_C0
  loc_C505CE: PopAdLdVar
  loc_C505CF: FLdPr Me
  loc_C505D2: MemLdStr global_84
  loc_C505D5: FLdPr Me
  loc_C505D8: MemLdStr global_80
  loc_C505DB: AryLock
  loc_C505DE: Ary1LdPr
  loc_C505DF: MemLdRfVar from_stack_1.global_0
  loc_C505E2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C505E7: AryUnlock
  loc_C505EA: FFreeVar var_C0 = ""
  loc_C505F1: FLdRfVar var_C0
  loc_C505F4: FLdPr var_1B8
  loc_C505F7: from_stack_1 = clsctacte.DetaPers
  loc_C505FC: LitI2_Byte 0
  loc_C505FE: LitVar_Missing var_D0
  loc_C50601: LitI2_Byte 0
  loc_C50603: FLdVar var_C0
  loc_C50607: FLdPr Me
  loc_C5060A: MemLdStr global_84
  loc_C5060D: FLdPr Me
  loc_C50610: MemLdStr global_80
  loc_C50613: AryLock
  loc_C50616: Ary1LdPr
  loc_C50617: MemLdRfVar from_stack_1.global_4
  loc_C5061A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C5061F: AryUnlock
  loc_C50622: FFreeVar var_C0 = ""
  loc_C50629: FLdRfVar var_AE
  loc_C5062C: FLdPr var_1B8
  loc_C5062F: from_stack_1 = clsctacte.PeriCtct
  loc_C50634: LitI2_Byte 0
  loc_C50636: LitVar_Missing var_C0
  loc_C50639: LitI2_Byte 0
  loc_C5063B: FLdI2 var_AE
  loc_C5063E: CVarI2 var_94
  loc_C50641: PopAdLdVar
  loc_C50642: FLdPr Me
  loc_C50645: MemLdStr global_84
  loc_C50648: FLdPr Me
  loc_C5064B: MemLdStr global_80
  loc_C5064E: AryLock
  loc_C50651: Ary1LdPr
  loc_C50652: MemLdRfVar from_stack_1.global_8
  loc_C50655: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C5065A: AryUnlock
  loc_C5065D: FFree1Var var_C0 = ""
  loc_C50660: FLdRfVar var_AE
  loc_C50663: FLdPr var_1B8
  loc_C50666: from_stack_1 = clsctacte.BimeCtct
  loc_C5066B: LitI2_Byte 0
  loc_C5066D: LitVar_Missing var_C0
  loc_C50670: LitI2_Byte 0
  loc_C50672: FLdI2 var_AE
  loc_C50675: CVarI2 var_94
  loc_C50678: PopAdLdVar
  loc_C50679: FLdPr Me
  loc_C5067C: MemLdStr global_84
  loc_C5067F: FLdPr Me
  loc_C50682: MemLdStr global_80
  loc_C50685: AryLock
  loc_C50688: Ary1LdPr
  loc_C50689: MemLdRfVar from_stack_1.global_12
  loc_C5068C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50691: AryUnlock
  loc_C50694: FFree1Var var_C0 = ""
  loc_C50697: FLdRfVar var_AE
  loc_C5069A: FLdPr var_1B8
  loc_C5069D: from_stack_1 = clsctacte.PeriBole
  loc_C506A2: FLdRfVar var_4C4
  loc_C506A5: FLdPr var_1B8
  loc_C506A8: from_stack_1 = clsctacte.NumeBole
  loc_C506AD: LitI2_Byte 0
  loc_C506AF: LitVar_Missing var_D0
  loc_C506B2: LitI2_Byte 0
  loc_C506B4: FLdI2 var_AE
  loc_C506B7: CStrUI1
  loc_C506B9: FStStrNoPop var_188
  loc_C506BC: LitStr "-"
  loc_C506BF: ConcatStr
  loc_C506C0: FStStrNoPop var_18C
  loc_C506C3: ILdRf var_4C4
  loc_C506C6: CStrI4
  loc_C506C8: FStStrNoPop var_194
  loc_C506CB: ConcatStr
  loc_C506CC: CVarStr var_C0
  loc_C506CF: PopAdLdVar
  loc_C506D0: FLdPr Me
  loc_C506D3: MemLdStr global_84
  loc_C506D6: FLdPr Me
  loc_C506D9: MemLdStr global_80
  loc_C506DC: AryLock
  loc_C506DF: Ary1LdPr
  loc_C506E0: MemLdRfVar from_stack_1.global_16
  loc_C506E3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C506E8: AryUnlock
  loc_C506EB: FFreeStr var_188 = "": var_18C = ""
  loc_C506F4: FFreeVar var_C0 = ""
  loc_C506FB: FLdRfVar var_188
  loc_C506FE: FLdPr var_1B8
  loc_C50701: from_stack_1 = clsctacte.FealCtct
  loc_C50706: LitI2_Byte 0
  loc_C50708: LitVar_Missing var_D0
  loc_C5070B: LitI2_Byte 0
  loc_C5070D: FLdZeroAd var_188
  loc_C50710: CVarStr var_C0
  loc_C50713: PopAdLdVar
  loc_C50714: FLdPr Me
  loc_C50717: MemLdStr global_84
  loc_C5071A: FLdPr Me
  loc_C5071D: MemLdStr global_80
  loc_C50720: AryLock
  loc_C50723: Ary1LdPr
  loc_C50724: MemLdRfVar from_stack_1.global_20
  loc_C50727: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C5072C: AryUnlock
  loc_C5072F: FFreeVar var_C0 = ""
  loc_C50736: FLdRfVar var_188
  loc_C50739: FLdPr var_1B8
  loc_C5073C: from_stack_1 = clsctacte.ExpeCtct
  loc_C50741: LitI2_Byte 0
  loc_C50743: LitVar_Missing var_D0
  loc_C50746: LitI2_Byte 0
  loc_C50748: FLdZeroAd var_188
  loc_C5074B: CVarStr var_C0
  loc_C5074E: PopAdLdVar
  loc_C5074F: FLdPr Me
  loc_C50752: MemLdStr global_84
  loc_C50755: FLdPr Me
  loc_C50758: MemLdStr global_80
  loc_C5075B: AryLock
  loc_C5075E: Ary1LdPr
  loc_C5075F: MemLdRfVar from_stack_1.global_24
  loc_C50762: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50767: AryUnlock
  loc_C5076A: FFreeVar var_C0 = ""
  loc_C50771: FLdRfVar var_4DC
  loc_C50774: FLdPr var_1B8
  loc_C50777: from_stack_1 = clsctacte.DebeCtct
  loc_C5077C: LitI2_Byte 0
  loc_C5077E: FLdPr Me
  loc_C50781: MemLdRfVar from_stack_1.global_92
  loc_C50784: CVarRef
  loc_C50789: LitI2_Byte &HFF
  loc_C5078B: FLdFPR8 var_4DC
  loc_C5078E: CVarR8
  loc_C50792: PopAdLdVar
  loc_C50793: FLdPr Me
  loc_C50796: MemLdStr global_84
  loc_C50799: FLdPr Me
  loc_C5079C: MemLdStr global_80
  loc_C5079F: AryLock
  loc_C507A2: Ary1LdPr
  loc_C507A3: MemLdRfVar from_stack_1.global_28
  loc_C507A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C507AB: AryUnlock
  loc_C507AE: FLdRfVar var_4DC
  loc_C507B1: FLdPr var_1B8
  loc_C507B4: from_stack_1 = clsctacte.CredCtct
  loc_C507B9: LitI2_Byte 0
  loc_C507BB: FLdPr Me
  loc_C507BE: MemLdRfVar from_stack_1.global_96
  loc_C507C1: CVarRef
  loc_C507C6: LitI2_Byte &HFF
  loc_C507C8: FLdFPR8 var_4DC
  loc_C507CB: CVarR8
  loc_C507CF: PopAdLdVar
  loc_C507D0: FLdPr Me
  loc_C507D3: MemLdStr global_84
  loc_C507D6: FLdPr Me
  loc_C507D9: MemLdStr global_80
  loc_C507DC: AryLock
  loc_C507DF: Ary1LdPr
  loc_C507E0: MemLdRfVar from_stack_1.global_32
  loc_C507E3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C507E8: AryUnlock
  loc_C507EB: FLdRfVar var_C0
  loc_C507EE: FLdPr var_1B8
  loc_C507F1: from_stack_1 = clsctacte.FeveCtct
  loc_C507F6: LitI2_Byte 0
  loc_C507F8: LitVar_Missing var_D0
  loc_C507FB: LitI2_Byte 0
  loc_C507FD: FLdVar var_C0
  loc_C50801: FLdPr Me
  loc_C50804: MemLdStr global_84
  loc_C50807: FLdPr Me
  loc_C5080A: MemLdStr global_80
  loc_C5080D: AryLock
  loc_C50810: Ary1LdPr
  loc_C50811: MemLdRfVar from_stack_1.global_36
  loc_C50814: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50819: AryUnlock
  loc_C5081C: FFreeVar var_C0 = ""
  loc_C50823: FLdRfVar var_AE
  loc_C50826: FLdPr Me
  loc_C50829: VCallAd Control_ID_AforoOpt
  loc_C5082C: FStAdFunc var_A8
  loc_C5082F: FLdPr var_A8
  loc_C50832:  = Me.Value
  loc_C50837: FLdI2 var_AE
  loc_C5083A: FFree1Ad var_A8
  loc_C5083D: BranchF loc_C50906
  loc_C50840: FLdRfVar var_190
  loc_C50843: LitVarStr var_94, "PagosPeriodo"
  loc_C50848: PopAdLdVar
  loc_C50849: FLdRfVar var_D4
  loc_C5084C: FLdRfVar var_A8
  loc_C5084F: FLdPr var_1B8
  loc_C50852: from_stack_1v = clsctacte.RsFrmGet()
  loc_C50857: FLdPr var_A8
  loc_C5085A:  = Me.Fields
  loc_C5085F: FLdPr var_D4
  loc_C50862: from_stack_2 = Me.Item(from_stack_1)
  loc_C50867: LitI2_Byte 0
  loc_C50869: FLdPr Me
  loc_C5086C: MemLdRfVar from_stack_1.global_108
  loc_C5086F: CVarRef
  loc_C50874: LitI2_Byte &HFF
  loc_C50876: FLdZeroAd var_190
  loc_C50879: CVarAd
  loc_C5087D: PopAdLdVar
  loc_C5087E: FLdPr Me
  loc_C50881: MemLdStr global_84
  loc_C50884: FLdPr Me
  loc_C50887: MemLdStr global_80
  loc_C5088A: AryLock
  loc_C5088D: Ary1LdPr
  loc_C5088E: MemLdRfVar from_stack_1.global_40
  loc_C50891: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C50896: AryUnlock
  loc_C50899: FFreeAd var_A8 = ""
  loc_C508A0: FFree1Var var_C0 = ""
  loc_C508A3: FLdRfVar var_190
  loc_C508A6: LitVarStr var_94, "PagosFueraPeriodo"
  loc_C508AB: PopAdLdVar
  loc_C508AC: FLdRfVar var_D4
  loc_C508AF: FLdRfVar var_A8
  loc_C508B2: FLdPr var_1B8
  loc_C508B5: from_stack_1v = clsctacte.RsFrmGet()
  loc_C508BA: FLdPr var_A8
  loc_C508BD:  = Me.Fields
  loc_C508C2: FLdPr var_D4
  loc_C508C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C508CA: LitI2_Byte 0
  loc_C508CC: FLdPr Me
  loc_C508CF: MemLdRfVar from_stack_1.global_112
  loc_C508D2: CVarRef
  loc_C508D7: LitI2_Byte &HFF
  loc_C508D9: FLdZeroAd var_190
  loc_C508DC: CVarAd
  loc_C508E0: PopAdLdVar
  loc_C508E1: FLdPr Me
  loc_C508E4: MemLdStr global_84
  loc_C508E7: FLdPr Me
  loc_C508EA: MemLdStr global_80
  loc_C508ED: AryLock
  loc_C508F0: Ary1LdPr
  loc_C508F1: MemLdRfVar from_stack_1.global_44
  loc_C508F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C508F9: AryUnlock
  loc_C508FC: FFreeAd var_A8 = ""
  loc_C50903: FFree1Var var_C0 = ""
  loc_C50906: FLdPr Me
  loc_C50909: MemLdStr global_84
  loc_C5090C: FLdPr Me
  loc_C5090F: MemLdStr global_80
  loc_C50912: Ary1LdPr
  loc_C50913: MemLdStr global_0
  loc_C50916: ILdRf var_4C8
  loc_C50919: NeStr
  loc_C5091B: BranchF loc_C5094C
  loc_C5091E: FLdPr Me
  loc_C50921: MemLdStr global_88
  loc_C50924: CR8Str
  loc_C50926: LitI2_Byte 1
  loc_C50928: CR8I2
  loc_C50929: AddR8
  loc_C5092A: CStrR8
  loc_C5092C: FStStrNoPop var_188
  loc_C5092F: FLdPr Me
  loc_C50932: MemStStrCopy
  loc_C50936: FFree1Str var_188
  loc_C50939: FLdPr Me
  loc_C5093C: MemLdStr global_84
  loc_C5093F: FLdPr Me
  loc_C50942: MemLdStr global_80
  loc_C50945: Ary1LdPr
  loc_C50946: MemLdStr global_0
  loc_C50949: FStStrCopy var_4C8
  loc_C5094C: LitI2_Byte 1
  loc_C5094E: PopTmpLdAd2 var_AE
  loc_C50951: FLdPr var_1B8
  loc_C50954: Call clsctacte.Move(from_stack_1v)
  loc_C50959: FLdPr Me
  loc_C5095C: MemLdRfVar from_stack_1.global_84
  loc_C5095F: NextI4 var_4D0, loc_C505B6
  loc_C50964: LitNothing
  loc_C50966: FStAd var_1B8 
  loc_C5096A: LitI2_Byte &HFF
  loc_C5096C: FLdPr Me
  loc_C5096F: MemStI2 bGenerado
  loc_C50972: LitI4 0
  loc_C50977: CI2I4
  loc_C50978: FLdPr Me
  loc_C5097B: Me.MousePointer = from_stack_1
  loc_C50980: LitVarStr var_94, vbNullString
  loc_C50985: PopAdLdVar
  loc_C50986: FLdPr Me
  loc_C50989: VCallAd Control_ID_statusBar
  loc_C5098C: FStAdFunc var_A8
  loc_C5098F: FLdPr var_A8
  loc_C50992: LateIdSt
  loc_C50997: FFree1Ad var_A8
  loc_C5099A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B511BC
  'Data Table: 4FD9E0
  loc_B50E08: FLdRfVar var_88
  loc_B50E0B: LitI2_Byte 0
  loc_B50E0D: LitI2_Byte &HFF
  loc_B50E0F: ImpAdLdI4 MemVar_D93C84
  loc_B50E12: FLdPr Me
  loc_B50E15: MemLdRfVar from_stack_1.global_56
  loc_B50E18: NewIfNullPr IFileSystem3
  loc_B50E1B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B50E20: ILdRf var_88
  loc_B50E23: FLdPr Me
  loc_B50E26: MemStVarAd
  loc_B50E2A: FFree1Ad var_88
  loc_B50E2D: LitI2_Byte &HFF
  loc_B50E2F: ImpAdStI2 MemVar_D93C8A
  loc_B50E32: Call Proc_342_39_C09B0C()
  loc_B50E37: LitI4 1
  loc_B50E3C: FLdPr Me
  loc_B50E3F: MemLdRfVar from_stack_1.global_84
  loc_B50E42: FLdPr Me
  loc_B50E45: MemLdStr global_80
  loc_B50E48: LitI2_Byte 1
  loc_B50E4A: FnUBound
  loc_B50E4C: ForI4 var_90
  loc_B50E52: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B50E57: PopAdLdVar
  loc_B50E58: FLdPr Me
  loc_B50E5B: MemLdRfVar from_stack_1.global_60
  loc_B50E5E: LdPrVar
  loc_B50E60: LateMemCall
  loc_B50E66: FLdPr Me
  loc_B50E69: MemLdStr global_84
  loc_B50E6C: FLdPr Me
  loc_B50E6F: MemLdStr global_80
  loc_B50E72: AryLock
  loc_B50E75: Ary1LdRf
  loc_B50E76: FStR4 var_B8
  loc_B50E79: LitStr vbNullString
  loc_B50E7C: LitI2_Byte 0
  loc_B50E7E: LitI2_Byte 0
  loc_B50E80: LitI2_Byte 0
  loc_B50E82: LitStr "right"
  loc_B50E85: FMemLdR4 var_B8(0)
  loc_B50E8A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50E8F: CVarStr var_C8
  loc_B50E92: PopAdLdVar
  loc_B50E93: FLdPr Me
  loc_B50E96: MemLdRfVar from_stack_1.global_60
  loc_B50E99: LdPrVar
  loc_B50E9B: LateMemCall
  loc_B50EA1: FFree1Var var_C8 = ""
  loc_B50EA4: LitStr vbNullString
  loc_B50EA7: LitI2_Byte 0
  loc_B50EA9: LitI2_Byte 0
  loc_B50EAB: LitI2_Byte 0
  loc_B50EAD: LitStr "left"
  loc_B50EB0: FMemLdR4 var_B8(4)
  loc_B50EB5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50EBA: CVarStr var_C8
  loc_B50EBD: PopAdLdVar
  loc_B50EBE: FLdPr Me
  loc_B50EC1: MemLdRfVar from_stack_1.global_60
  loc_B50EC4: LdPrVar
  loc_B50EC6: LateMemCall
  loc_B50ECC: FFree1Var var_C8 = ""
  loc_B50ECF: LitStr vbNullString
  loc_B50ED2: LitI2_Byte 0
  loc_B50ED4: LitI2_Byte 0
  loc_B50ED6: LitI2_Byte 0
  loc_B50ED8: LitStr "right"
  loc_B50EDB: FMemLdR4 var_B8(8)
  loc_B50EE0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50EE5: CVarStr var_C8
  loc_B50EE8: PopAdLdVar
  loc_B50EE9: FLdPr Me
  loc_B50EEC: MemLdRfVar from_stack_1.global_60
  loc_B50EEF: LdPrVar
  loc_B50EF1: LateMemCall
  loc_B50EF7: FFree1Var var_C8 = ""
  loc_B50EFA: LitStr vbNullString
  loc_B50EFD: LitI2_Byte 0
  loc_B50EFF: LitI2_Byte 0
  loc_B50F01: LitI2_Byte 0
  loc_B50F03: LitStr "right"
  loc_B50F06: FMemLdR4 var_B8(12)
  loc_B50F0B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50F10: CVarStr var_C8
  loc_B50F13: PopAdLdVar
  loc_B50F14: FLdPr Me
  loc_B50F17: MemLdRfVar from_stack_1.global_60
  loc_B50F1A: LdPrVar
  loc_B50F1C: LateMemCall
  loc_B50F22: FFree1Var var_C8 = ""
  loc_B50F25: LitStr vbNullString
  loc_B50F28: LitI2_Byte 0
  loc_B50F2A: LitI2_Byte 0
  loc_B50F2C: LitI2_Byte 0
  loc_B50F2E: LitStr "right"
  loc_B50F31: FMemLdR4 var_B8(16)
  loc_B50F36: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50F3B: CVarStr var_C8
  loc_B50F3E: PopAdLdVar
  loc_B50F3F: FLdPr Me
  loc_B50F42: MemLdRfVar from_stack_1.global_60
  loc_B50F45: LdPrVar
  loc_B50F47: LateMemCall
  loc_B50F4D: FFree1Var var_C8 = ""
  loc_B50F50: LitStr vbNullString
  loc_B50F53: LitI2_Byte 0
  loc_B50F55: LitI2_Byte 0
  loc_B50F57: LitI2_Byte 0
  loc_B50F59: LitStr "center"
  loc_B50F5C: FMemLdR4 var_B8(20)
  loc_B50F61: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50F66: CVarStr var_C8
  loc_B50F69: PopAdLdVar
  loc_B50F6A: FLdPr Me
  loc_B50F6D: MemLdRfVar from_stack_1.global_60
  loc_B50F70: LdPrVar
  loc_B50F72: LateMemCall
  loc_B50F78: FFree1Var var_C8 = ""
  loc_B50F7B: LitStr vbNullString
  loc_B50F7E: LitI2_Byte 0
  loc_B50F80: LitI2_Byte 0
  loc_B50F82: LitI2_Byte 0
  loc_B50F84: LitStr "right"
  loc_B50F87: FMemLdR4 var_B8(24)
  loc_B50F8C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50F91: CVarStr var_C8
  loc_B50F94: PopAdLdVar
  loc_B50F95: FLdPr Me
  loc_B50F98: MemLdRfVar from_stack_1.global_60
  loc_B50F9B: LdPrVar
  loc_B50F9D: LateMemCall
  loc_B50FA3: FFree1Var var_C8 = ""
  loc_B50FA6: LitStr vbNullString
  loc_B50FA9: LitI2_Byte 0
  loc_B50FAB: LitI2_Byte 0
  loc_B50FAD: LitI2_Byte 0
  loc_B50FAF: LitStr "right"
  loc_B50FB2: FMemLdR4 var_B8(28)
  loc_B50FB7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50FBC: CVarStr var_C8
  loc_B50FBF: PopAdLdVar
  loc_B50FC0: FLdPr Me
  loc_B50FC3: MemLdRfVar from_stack_1.global_60
  loc_B50FC6: LdPrVar
  loc_B50FC8: LateMemCall
  loc_B50FCE: FFree1Var var_C8 = ""
  loc_B50FD1: LitStr vbNullString
  loc_B50FD4: LitI2_Byte 0
  loc_B50FD6: LitI2_Byte 0
  loc_B50FD8: LitI2_Byte 0
  loc_B50FDA: LitStr "right"
  loc_B50FDD: FMemLdR4 var_B8(32)
  loc_B50FE2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B50FE7: CVarStr var_C8
  loc_B50FEA: PopAdLdVar
  loc_B50FEB: FLdPr Me
  loc_B50FEE: MemLdRfVar from_stack_1.global_60
  loc_B50FF1: LdPrVar
  loc_B50FF3: LateMemCall
  loc_B50FF9: FFree1Var var_C8 = ""
  loc_B50FFC: LitStr vbNullString
  loc_B50FFF: LitI2_Byte 0
  loc_B51001: LitI2_Byte 0
  loc_B51003: LitI2_Byte 0
  loc_B51005: LitStr "center"
  loc_B51008: FMemLdR4 var_B8(36)
  loc_B5100D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51012: CVarStr var_C8
  loc_B51015: PopAdLdVar
  loc_B51016: FLdPr Me
  loc_B51019: MemLdRfVar from_stack_1.global_60
  loc_B5101C: LdPrVar
  loc_B5101E: LateMemCall
  loc_B51024: FFree1Var var_C8 = ""
  loc_B51027: LitI4 0
  loc_B5102C: FStR4 var_B8
  loc_B5102F: AryUnlock
  loc_B51032: LitVarStr var_A0, "     </tr>"
  loc_B51037: PopAdLdVar
  loc_B51038: FLdPr Me
  loc_B5103B: MemLdRfVar from_stack_1.global_60
  loc_B5103E: LdPrVar
  loc_B51040: LateMemCall
  loc_B51046: FLdPr Me
  loc_B51049: MemLdRfVar from_stack_1.global_84
  loc_B5104C: NextI4 var_90, loc_B50E52
  loc_B51051: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_B51056: PopAdLdVar
  loc_B51057: FLdPr Me
  loc_B5105A: MemLdRfVar from_stack_1.global_60
  loc_B5105D: LdPrVar
  loc_B5105F: LateMemCall
  loc_B51065: LitStr "    <td colspan=""7"" align=""center"">Cuentas: "
  loc_B51068: LitI4 -1
  loc_B5106D: LitI4 0
  loc_B51072: LitI4 -1
  loc_B51077: LitI4 0
  loc_B5107C: FLdPr Me
  loc_B5107F: MemLdRfVar from_stack_1.global_88
  loc_B51082: CVarRef
  loc_B51087: ImpAdCallI2 FormatNumber(, , , , )
  loc_B5108C: FStStrNoPop var_CC
  loc_B5108F: ConcatStr
  loc_B51090: FStStrNoPop var_D0
  loc_B51093: LitStr "</td>"
  loc_B51096: ConcatStr
  loc_B51097: CVarStr var_C8
  loc_B5109A: PopAdLdVar
  loc_B5109B: FLdPr Me
  loc_B5109E: MemLdRfVar from_stack_1.global_60
  loc_B510A1: LdPrVar
  loc_B510A3: LateMemCall
  loc_B510A9: FFreeStr var_CC = ""
  loc_B510B0: FFree1Var var_C8 = ""
  loc_B510B3: FLdRfVar var_D2
  loc_B510B6: FLdPr Me
  loc_B510B9: VCallAd Control_ID_PagoOpt
  loc_B510BC: FStAdFunc var_88
  loc_B510BF: FLdPr var_88
  loc_B510C2:  = Me.Value
  loc_B510C7: FLdI2 var_D2
  loc_B510CA: LitI2_Byte &HFF
  loc_B510CC: EqI2
  loc_B510CD: FFree1Ad var_88
  loc_B510D0: BranchF loc_B51106
  loc_B510D3: LitStr vbNullString
  loc_B510D6: LitI2_Byte 0
  loc_B510D8: LitI2_Byte 0
  loc_B510DA: LitI2_Byte 0
  loc_B510DC: LitStr "right"
  loc_B510DF: LitI2_Byte 0
  loc_B510E1: CStrUI1
  loc_B510E3: FStStrNoPop var_CC
  loc_B510E6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B510EB: CVarStr var_C8
  loc_B510EE: PopAdLdVar
  loc_B510EF: FLdPr Me
  loc_B510F2: MemLdRfVar from_stack_1.global_60
  loc_B510F5: LdPrVar
  loc_B510F7: LateMemCall
  loc_B510FD: FFree1Str var_CC
  loc_B51100: FFree1Var var_C8 = ""
  loc_B51103: Branch loc_B51132
  loc_B51106: LitStr vbNullString
  loc_B51109: LitI2_Byte 0
  loc_B5110B: LitI2_Byte 0
  loc_B5110D: LitI2_Byte 0
  loc_B5110F: LitStr "right"
  loc_B51112: FLdPr Me
  loc_B51115: MemLdStr global_92
  loc_B51118: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5111D: CVarStr var_C8
  loc_B51120: PopAdLdVar
  loc_B51121: FLdPr Me
  loc_B51124: MemLdRfVar from_stack_1.global_60
  loc_B51127: LdPrVar
  loc_B51129: LateMemCall
  loc_B5112F: FFree1Var var_C8 = ""
  loc_B51132: LitStr vbNullString
  loc_B51135: LitI2_Byte 0
  loc_B51137: LitI2_Byte 0
  loc_B51139: LitI2_Byte 0
  loc_B5113B: LitStr "right"
  loc_B5113E: FLdPr Me
  loc_B51141: MemLdStr global_96
  loc_B51144: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51149: CVarStr var_C8
  loc_B5114C: PopAdLdVar
  loc_B5114D: FLdPr Me
  loc_B51150: MemLdRfVar from_stack_1.global_60
  loc_B51153: LdPrVar
  loc_B51155: LateMemCall
  loc_B5115B: FFree1Var var_C8 = ""
  loc_B5115E: LitStr vbNullString
  loc_B51161: LitI2_Byte 0
  loc_B51163: LitI2_Byte 0
  loc_B51165: LitI2_Byte 0
  loc_B51167: LitI4 0
  loc_B5116C: LitStr vbNullString
  loc_B5116F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51174: CVarStr var_C8
  loc_B51177: PopAdLdVar
  loc_B51178: FLdPr Me
  loc_B5117B: MemLdRfVar from_stack_1.global_60
  loc_B5117E: LdPrVar
  loc_B51180: LateMemCall
  loc_B51186: FFree1Var var_C8 = ""
  loc_B51189: LitVarStr var_A0, "     </tr>"
  loc_B5118E: PopAdLdVar
  loc_B5118F: FLdPr Me
  loc_B51192: MemLdRfVar from_stack_1.global_60
  loc_B51195: LdPrVar
  loc_B51197: LateMemCall
  loc_B5119D: Call Proc_342_40_B167F0()
  loc_B511A2: FLdPr Me
  loc_B511A5: MemLdRfVar from_stack_1.global_60
  loc_B511A8: LdPrVar
  loc_B511AA: LateMemCall
  loc_B511B0: LitStr vbNullString
  loc_B511B3: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B511B8: ExitProcHresult
  loc_B511B9: Ary1LdRf
End Sub

Public Sub GeneraXLS() '9C41DC
  'Data Table: 4FD9E0
  loc_9C41C4: LitI2_Byte 0
  loc_9C41C6: FLdPr Me
  loc_9C41C9: MemStI2 bLogos
  loc_9C41CC: Call GeneraHTML()
  loc_9C41D1: LitI2_Byte &HFF
  loc_9C41D3: FLdPr Me
  loc_9C41D6: MemStI2 bLogos
  loc_9C41D9: ExitProcHresult
  loc_9C41DA: Ary1LdCy
End Sub

Private Function Proc_342_38_AC035C() 'AC035C
  'Data Table: 4FD9E0
  loc_AC0268: FLdPr Me
  loc_AC026B: VCallAd Control_ID_DesdeMsk
  loc_AC026E: FStAdFunc var_88
  loc_AC0271: FLdPr var_88
  loc_AC0274: LateIdLdVar var_98 DispID_15 0
  loc_AC027B: CStrVarTmp
  loc_AC027C: CVarStr var_A8
  loc_AC027F: FLdRfVar var_B8
  loc_AC0282: ImpAdCallFPR4  = Year()
  loc_AC0287: FLdRfVar var_B8
  loc_AC028A: CI2Var
  loc_AC028B: ImpAdLdRf MemVar_D94354
  loc_AC028E: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0291: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC0296: FFree1Ad var_88
  loc_AC0299: FFreeVar var_98 = "": var_A8 = ""
  loc_AC02A2: LitVar_Missing var_D8
  loc_AC02A5: PopAdLdVar
  loc_AC02A6: LitVarI4
  loc_AC02AE: PopAdLdVar
  loc_AC02AF: ImpAdLdRf MemVar_D94354
  loc_AC02B2: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC02B5: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC02BA: FLdRfVar var_DC
  loc_AC02BD: FLdRfVar var_88
  loc_AC02C0: ImpAdLdRf MemVar_D94354
  loc_AC02C3: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC02C6: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC02CB: FLdPr var_88
  loc_AC02CE: from_stack_1 = clsconcepto.RecordCount
  loc_AC02D3: ILdRf var_DC
  loc_AC02D6: LitI4 0
  loc_AC02DB: GtI4
  loc_AC02DC: FFree1Ad var_88
  loc_AC02DF: BranchF loc_AC0354
  loc_AC02E2: FLdRfVar var_E0
  loc_AC02E5: FLdRfVar var_88
  loc_AC02E8: ImpAdLdRf MemVar_D94354
  loc_AC02EB: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC02EE: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC02F3: FLdPr var_88
  loc_AC02F6: from_stack_1 = clsconcepto.CodiConc
  loc_AC02FB: FLdZeroAd var_E0
  loc_AC02FE: CVarStr var_98
  loc_AC0301: PopAdLdVar
  loc_AC0302: FLdPr Me
  loc_AC0305: VCallAd Control_ID_CodiConcMsk
  loc_AC0308: FStAdFunc var_E4
  loc_AC030B: FLdPr var_E4
  loc_AC030E: LateIdSt
  loc_AC0313: FFreeAd var_88 = ""
  loc_AC031A: FFree1Var var_98 = ""
  loc_AC031D: FLdRfVar var_E0
  loc_AC0320: FLdRfVar var_88
  loc_AC0323: ImpAdLdRf MemVar_D94354
  loc_AC0326: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC0329: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC032E: FLdPr var_88
  loc_AC0331: from_stack_1 = clsconcepto.DetaConc
  loc_AC0336: ILdRf var_E0
  loc_AC0339: FLdPr Me
  loc_AC033C: VCallAd Control_ID_DetaConcLbl
  loc_AC033F: FStAdFunc var_E4
  loc_AC0342: FLdPr var_E4
  loc_AC0345: Me.Caption = from_stack_1
  loc_AC034A: FFree1Str var_E0
  loc_AC034D: FFreeAd var_88 = ""
  loc_AC0354: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AC0359: ExitProcHresult
End Function

Private Function Proc_342_39_C09B0C() 'C09B0C
  'Data Table: 4FD9E0
  loc_C091A8: LitVarStr var_94, "<html>"
  loc_C091AD: PopAdLdVar
  loc_C091AE: FLdPr Me
  loc_C091B1: MemLdRfVar from_stack_1.global_60
  loc_C091B4: LdPrVar
  loc_C091B6: LateMemCall
  loc_C091BC: LitVarStr var_94, "<head>"
  loc_C091C1: PopAdLdVar
  loc_C091C2: FLdPr Me
  loc_C091C5: MemLdRfVar from_stack_1.global_60
  loc_C091C8: LdPrVar
  loc_C091CA: LateMemCall
  loc_C091D0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C091D5: PopAdLdVar
  loc_C091D6: FLdPr Me
  loc_C091D9: MemLdRfVar from_stack_1.global_60
  loc_C091DC: LdPrVar
  loc_C091DE: LateMemCall
  loc_C091E4: LitStr "<title>"
  loc_C091E7: FLdRfVar var_A8
  loc_C091EA: FLdPr Me
  loc_C091ED:  = Me.Caption
  loc_C091F2: ILdRf var_A8
  loc_C091F5: ConcatStr
  loc_C091F6: FStStrNoPop var_AC
  loc_C091F9: LitStr "</title>"
  loc_C091FC: ConcatStr
  loc_C091FD: CVarStr var_BC
  loc_C09200: PopAdLdVar
  loc_C09201: FLdPr Me
  loc_C09204: MemLdRfVar from_stack_1.global_60
  loc_C09207: LdPrVar
  loc_C09209: LateMemCall
  loc_C0920F: FFreeStr var_A8 = ""
  loc_C09216: FFree1Var var_BC = ""
  loc_C09219: LitVarStr var_94, "<style type=""text/css"">"
  loc_C0921E: PopAdLdVar
  loc_C0921F: FLdPr Me
  loc_C09222: MemLdRfVar from_stack_1.global_60
  loc_C09225: LdPrVar
  loc_C09227: LateMemCall
  loc_C0922D: LitVarStr var_94, ".Titulo1 {"
  loc_C09232: PopAdLdVar
  loc_C09233: FLdPr Me
  loc_C09236: MemLdRfVar from_stack_1.global_60
  loc_C09239: LdPrVar
  loc_C0923B: LateMemCall
  loc_C09241: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C09246: PopAdLdVar
  loc_C09247: FLdPr Me
  loc_C0924A: MemLdRfVar from_stack_1.global_60
  loc_C0924D: LdPrVar
  loc_C0924F: LateMemCall
  loc_C09255: LitVarStr var_94, " font-size: 18px;"
  loc_C0925A: PopAdLdVar
  loc_C0925B: FLdPr Me
  loc_C0925E: MemLdRfVar from_stack_1.global_60
  loc_C09261: LdPrVar
  loc_C09263: LateMemCall
  loc_C09269: LitVarStr var_94, " font-weight: bold;"
  loc_C0926E: PopAdLdVar
  loc_C0926F: FLdPr Me
  loc_C09272: MemLdRfVar from_stack_1.global_60
  loc_C09275: LdPrVar
  loc_C09277: LateMemCall
  loc_C0927D: LitVarStr var_94, "}"
  loc_C09282: PopAdLdVar
  loc_C09283: FLdPr Me
  loc_C09286: MemLdRfVar from_stack_1.global_60
  loc_C09289: LdPrVar
  loc_C0928B: LateMemCall
  loc_C09291: LitVarStr var_94, ".Titulo2 {"
  loc_C09296: PopAdLdVar
  loc_C09297: FLdPr Me
  loc_C0929A: MemLdRfVar from_stack_1.global_60
  loc_C0929D: LdPrVar
  loc_C0929F: LateMemCall
  loc_C092A5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C092AA: PopAdLdVar
  loc_C092AB: FLdPr Me
  loc_C092AE: MemLdRfVar from_stack_1.global_60
  loc_C092B1: LdPrVar
  loc_C092B3: LateMemCall
  loc_C092B9: LitVarStr var_94, " font-size: 14px;"
  loc_C092BE: PopAdLdVar
  loc_C092BF: FLdPr Me
  loc_C092C2: MemLdRfVar from_stack_1.global_60
  loc_C092C5: LdPrVar
  loc_C092C7: LateMemCall
  loc_C092CD: LitVarStr var_94, " font-weight: bold;"
  loc_C092D2: PopAdLdVar
  loc_C092D3: FLdPr Me
  loc_C092D6: MemLdRfVar from_stack_1.global_60
  loc_C092D9: LdPrVar
  loc_C092DB: LateMemCall
  loc_C092E1: LitVarStr var_94, "}"
  loc_C092E6: PopAdLdVar
  loc_C092E7: FLdPr Me
  loc_C092EA: MemLdRfVar from_stack_1.global_60
  loc_C092ED: LdPrVar
  loc_C092EF: LateMemCall
  loc_C092F5: LitVarStr var_94, ".Normal {"
  loc_C092FA: PopAdLdVar
  loc_C092FB: FLdPr Me
  loc_C092FE: MemLdRfVar from_stack_1.global_60
  loc_C09301: LdPrVar
  loc_C09303: LateMemCall
  loc_C09309: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0930E: PopAdLdVar
  loc_C0930F: FLdPr Me
  loc_C09312: MemLdRfVar from_stack_1.global_60
  loc_C09315: LdPrVar
  loc_C09317: LateMemCall
  loc_C0931D: LitVarStr var_94, " font-size: 12px;"
  loc_C09322: PopAdLdVar
  loc_C09323: FLdPr Me
  loc_C09326: MemLdRfVar from_stack_1.global_60
  loc_C09329: LdPrVar
  loc_C0932B: LateMemCall
  loc_C09331: LitVarStr var_94, " font-style: normal;"
  loc_C09336: PopAdLdVar
  loc_C09337: FLdPr Me
  loc_C0933A: MemLdRfVar from_stack_1.global_60
  loc_C0933D: LdPrVar
  loc_C0933F: LateMemCall
  loc_C09345: LitVarStr var_94, " font-weight: normal;"
  loc_C0934A: PopAdLdVar
  loc_C0934B: FLdPr Me
  loc_C0934E: MemLdRfVar from_stack_1.global_60
  loc_C09351: LdPrVar
  loc_C09353: LateMemCall
  loc_C09359: LitVarStr var_94, " font-variant: normal;"
  loc_C0935E: PopAdLdVar
  loc_C0935F: FLdPr Me
  loc_C09362: MemLdRfVar from_stack_1.global_60
  loc_C09365: LdPrVar
  loc_C09367: LateMemCall
  loc_C0936D: LitVarStr var_94, "}"
  loc_C09372: PopAdLdVar
  loc_C09373: FLdPr Me
  loc_C09376: MemLdRfVar from_stack_1.global_60
  loc_C09379: LdPrVar
  loc_C0937B: LateMemCall
  loc_C09381: LitVarStr var_94, ".Encabezado {"
  loc_C09386: PopAdLdVar
  loc_C09387: FLdPr Me
  loc_C0938A: MemLdRfVar from_stack_1.global_60
  loc_C0938D: LdPrVar
  loc_C0938F: LateMemCall
  loc_C09395: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C0939A: PopAdLdVar
  loc_C0939B: FLdPr Me
  loc_C0939E: MemLdRfVar from_stack_1.global_60
  loc_C093A1: LdPrVar
  loc_C093A3: LateMemCall
  loc_C093A9: LitVarStr var_94, " font-size: 11px;"
  loc_C093AE: PopAdLdVar
  loc_C093AF: FLdPr Me
  loc_C093B2: MemLdRfVar from_stack_1.global_60
  loc_C093B5: LdPrVar
  loc_C093B7: LateMemCall
  loc_C093BD: LitVarStr var_94, " font-weight: bold;"
  loc_C093C2: PopAdLdVar
  loc_C093C3: FLdPr Me
  loc_C093C6: MemLdRfVar from_stack_1.global_60
  loc_C093C9: LdPrVar
  loc_C093CB: LateMemCall
  loc_C093D1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C093D6: PopAdLdVar
  loc_C093D7: FLdPr Me
  loc_C093DA: MemLdRfVar from_stack_1.global_60
  loc_C093DD: LdPrVar
  loc_C093DF: LateMemCall
  loc_C093E5: LitVarStr var_94, "}"
  loc_C093EA: PopAdLdVar
  loc_C093EB: FLdPr Me
  loc_C093EE: MemLdRfVar from_stack_1.global_60
  loc_C093F1: LdPrVar
  loc_C093F3: LateMemCall
  loc_C093F9: LitVarStr var_94, ".LineaDato {"
  loc_C093FE: PopAdLdVar
  loc_C093FF: FLdPr Me
  loc_C09402: MemLdRfVar from_stack_1.global_60
  loc_C09405: LdPrVar
  loc_C09407: LateMemCall
  loc_C0940D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C09412: PopAdLdVar
  loc_C09413: FLdPr Me
  loc_C09416: MemLdRfVar from_stack_1.global_60
  loc_C09419: LdPrVar
  loc_C0941B: LateMemCall
  loc_C09421: LitVarStr var_94, " font-size: 10px;"
  loc_C09426: PopAdLdVar
  loc_C09427: FLdPr Me
  loc_C0942A: MemLdRfVar from_stack_1.global_60
  loc_C0942D: LdPrVar
  loc_C0942F: LateMemCall
  loc_C09435: LitVarStr var_94, "}"
  loc_C0943A: PopAdLdVar
  loc_C0943B: FLdPr Me
  loc_C0943E: MemLdRfVar from_stack_1.global_60
  loc_C09441: LdPrVar
  loc_C09443: LateMemCall
  loc_C09449: LitVarStr var_94, ".Totales {"
  loc_C0944E: PopAdLdVar
  loc_C0944F: FLdPr Me
  loc_C09452: MemLdRfVar from_stack_1.global_60
  loc_C09455: LdPrVar
  loc_C09457: LateMemCall
  loc_C0945D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C09462: PopAdLdVar
  loc_C09463: FLdPr Me
  loc_C09466: MemLdRfVar from_stack_1.global_60
  loc_C09469: LdPrVar
  loc_C0946B: LateMemCall
  loc_C09471: LitVarStr var_94, " font-size: 12px;"
  loc_C09476: PopAdLdVar
  loc_C09477: FLdPr Me
  loc_C0947A: MemLdRfVar from_stack_1.global_60
  loc_C0947D: LdPrVar
  loc_C0947F: LateMemCall
  loc_C09485: LitVarStr var_94, " font-weight: bold;"
  loc_C0948A: PopAdLdVar
  loc_C0948B: FLdPr Me
  loc_C0948E: MemLdRfVar from_stack_1.global_60
  loc_C09491: LdPrVar
  loc_C09493: LateMemCall
  loc_C09499: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C0949E: PopAdLdVar
  loc_C0949F: FLdPr Me
  loc_C094A2: MemLdRfVar from_stack_1.global_60
  loc_C094A5: LdPrVar
  loc_C094A7: LateMemCall
  loc_C094AD: LitVarStr var_94, "}"
  loc_C094B2: PopAdLdVar
  loc_C094B3: FLdPr Me
  loc_C094B6: MemLdRfVar from_stack_1.global_60
  loc_C094B9: LdPrVar
  loc_C094BB: LateMemCall
  loc_C094C1: LitVarStr var_94, ".SubTotales {"
  loc_C094C6: PopAdLdVar
  loc_C094C7: FLdPr Me
  loc_C094CA: MemLdRfVar from_stack_1.global_60
  loc_C094CD: LdPrVar
  loc_C094CF: LateMemCall
  loc_C094D5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C094DA: PopAdLdVar
  loc_C094DB: FLdPr Me
  loc_C094DE: MemLdRfVar from_stack_1.global_60
  loc_C094E1: LdPrVar
  loc_C094E3: LateMemCall
  loc_C094E9: LitVarStr var_94, " font-size: 10px;"
  loc_C094EE: PopAdLdVar
  loc_C094EF: FLdPr Me
  loc_C094F2: MemLdRfVar from_stack_1.global_60
  loc_C094F5: LdPrVar
  loc_C094F7: LateMemCall
  loc_C094FD: LitVarStr var_94, " font-weight: bold;"
  loc_C09502: PopAdLdVar
  loc_C09503: FLdPr Me
  loc_C09506: MemLdRfVar from_stack_1.global_60
  loc_C09509: LdPrVar
  loc_C0950B: LateMemCall
  loc_C09511: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_C09516: PopAdLdVar
  loc_C09517: FLdPr Me
  loc_C0951A: MemLdRfVar from_stack_1.global_60
  loc_C0951D: LdPrVar
  loc_C0951F: LateMemCall
  loc_C09525: LitVarStr var_94, "}"
  loc_C0952A: PopAdLdVar
  loc_C0952B: FLdPr Me
  loc_C0952E: MemLdRfVar from_stack_1.global_60
  loc_C09531: LdPrVar
  loc_C09533: LateMemCall
  loc_C09539: LitVarStr var_94, ".SubTotales {"
  loc_C0953E: PopAdLdVar
  loc_C0953F: FLdPr Me
  loc_C09542: MemLdRfVar from_stack_1.global_60
  loc_C09545: LdPrVar
  loc_C09547: LateMemCall
  loc_C0954D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C09552: PopAdLdVar
  loc_C09553: FLdPr Me
  loc_C09556: MemLdRfVar from_stack_1.global_60
  loc_C09559: LdPrVar
  loc_C0955B: LateMemCall
  loc_C09561: LitVarStr var_94, " font-size: 10px;"
  loc_C09566: PopAdLdVar
  loc_C09567: FLdPr Me
  loc_C0956A: MemLdRfVar from_stack_1.global_60
  loc_C0956D: LdPrVar
  loc_C0956F: LateMemCall
  loc_C09575: LitVarStr var_94, " font-weight: bold;"
  loc_C0957A: PopAdLdVar
  loc_C0957B: FLdPr Me
  loc_C0957E: MemLdRfVar from_stack_1.global_60
  loc_C09581: LdPrVar
  loc_C09583: LateMemCall
  loc_C09589: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C0958E: PopAdLdVar
  loc_C0958F: FLdPr Me
  loc_C09592: MemLdRfVar from_stack_1.global_60
  loc_C09595: LdPrVar
  loc_C09597: LateMemCall
  loc_C0959D: LitVarStr var_94, "}"
  loc_C095A2: PopAdLdVar
  loc_C095A3: FLdPr Me
  loc_C095A6: MemLdRfVar from_stack_1.global_60
  loc_C095A9: LdPrVar
  loc_C095AB: LateMemCall
  loc_C095B1: LitVarStr var_94, ".EncabezadoTotales {"
  loc_C095B6: PopAdLdVar
  loc_C095B7: FLdPr Me
  loc_C095BA: MemLdRfVar from_stack_1.global_60
  loc_C095BD: LdPrVar
  loc_C095BF: LateMemCall
  loc_C095C5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C095CA: PopAdLdVar
  loc_C095CB: FLdPr Me
  loc_C095CE: MemLdRfVar from_stack_1.global_60
  loc_C095D1: LdPrVar
  loc_C095D3: LateMemCall
  loc_C095D9: LitVarStr var_94, " font-size: 14px;"
  loc_C095DE: PopAdLdVar
  loc_C095DF: FLdPr Me
  loc_C095E2: MemLdRfVar from_stack_1.global_60
  loc_C095E5: LdPrVar
  loc_C095E7: LateMemCall
  loc_C095ED: LitVarStr var_94, " font-weight: bold;"
  loc_C095F2: PopAdLdVar
  loc_C095F3: FLdPr Me
  loc_C095F6: MemLdRfVar from_stack_1.global_60
  loc_C095F9: LdPrVar
  loc_C095FB: LateMemCall
  loc_C09601: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C09606: PopAdLdVar
  loc_C09607: FLdPr Me
  loc_C0960A: MemLdRfVar from_stack_1.global_60
  loc_C0960D: LdPrVar
  loc_C0960F: LateMemCall
  loc_C09615: LitVarStr var_94, "}"
  loc_C0961A: PopAdLdVar
  loc_C0961B: FLdPr Me
  loc_C0961E: MemLdRfVar from_stack_1.global_60
  loc_C09621: LdPrVar
  loc_C09623: LateMemCall
  loc_C09629: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C0962E: PopAdLdVar
  loc_C0962F: FLdPr Me
  loc_C09632: MemLdRfVar from_stack_1.global_60
  loc_C09635: LdPrVar
  loc_C09637: LateMemCall
  loc_C0963D: LitVarStr var_94, "</style>"
  loc_C09642: PopAdLdVar
  loc_C09643: FLdPr Me
  loc_C09646: MemLdRfVar from_stack_1.global_60
  loc_C09649: LdPrVar
  loc_C0964B: LateMemCall
  loc_C09651: LitI4 0
  loc_C09656: FStStrCopy var_AC
  loc_C09659: FLdRfVar var_AC
  loc_C0965C: LitI4 0
  loc_C09661: FStStrCopy var_A8
  loc_C09664: FLdRfVar var_A8
  loc_C09667: LitI2_Byte 0
  loc_C09669: PopTmpLdAd2 var_BE
  loc_C0966C: FLdPr Me
  loc_C0966F: MemLdRfVar from_stack_1.global_60
  loc_C09672: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C09677: FFreeStr var_A8 = ""
  loc_C0967E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C09683: PopAdLdVar
  loc_C09684: FLdPr Me
  loc_C09687: MemLdRfVar from_stack_1.global_60
  loc_C0968A: LdPrVar
  loc_C0968C: LateMemCall
  loc_C09692: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C09697: PopAdLdVar
  loc_C09698: FLdPr Me
  loc_C0969B: MemLdRfVar from_stack_1.global_60
  loc_C0969E: LdPrVar
  loc_C096A0: LateMemCall
  loc_C096A6: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_C096AB: PopAdLdVar
  loc_C096AC: FLdPr Me
  loc_C096AF: MemLdRfVar from_stack_1.global_60
  loc_C096B2: LdPrVar
  loc_C096B4: LateMemCall
  loc_C096BA: FLdPr Me
  loc_C096BD: MemLdI2 bLogos
  loc_C096C0: BranchF loc_C0971B
  loc_C096C3: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C096C6: LitI2_Byte &H5F
  loc_C096C8: CStrUI1
  loc_C096CA: FStStrNoPop var_A8
  loc_C096CD: ConcatStr
  loc_C096CE: FStStrNoPop var_AC
  loc_C096D1: LitStr """ height="""
  loc_C096D4: ConcatStr
  loc_C096D5: FStStrNoPop var_C4
  loc_C096D8: LitI2_Byte &H3C
  loc_C096DA: CStrUI1
  loc_C096DC: FStStrNoPop var_C8
  loc_C096DF: ConcatStr
  loc_C096E0: FStStrNoPop var_CC
  loc_C096E3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C096E6: ConcatStr
  loc_C096E7: FStStrNoPop var_D0
  loc_C096EA: LitStr "Municipalidad de Guaymallén"
  loc_C096ED: ConcatStr
  loc_C096EE: FStStrNoPop var_D4
  loc_C096F1: LitStr "</p>"
  loc_C096F4: ConcatStr
  loc_C096F5: CVarStr var_BC
  loc_C096F8: PopAdLdVar
  loc_C096F9: FLdPr Me
  loc_C096FC: MemLdRfVar from_stack_1.global_60
  loc_C096FF: LdPrVar
  loc_C09701: LateMemCall
  loc_C09707: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C09718: FFree1Var var_BC = ""
  loc_C0971B: LitStr "    <p>"
  loc_C0971E: FLdRfVar var_A8
  loc_C09721: FLdPr Me
  loc_C09724:  = Me.Caption
  loc_C09729: ILdRf var_A8
  loc_C0972C: ConcatStr
  loc_C0972D: FStStrNoPop var_AC
  loc_C09730: LitStr "</p></th>"
  loc_C09733: ConcatStr
  loc_C09734: CVarStr var_BC
  loc_C09737: PopAdLdVar
  loc_C09738: FLdPr Me
  loc_C0973B: MemLdRfVar from_stack_1.global_60
  loc_C0973E: LdPrVar
  loc_C09740: LateMemCall
  loc_C09746: FFreeStr var_A8 = ""
  loc_C0974D: FFree1Var var_BC = ""
  loc_C09750: LitVarStr var_94, "  </tr>"
  loc_C09755: PopAdLdVar
  loc_C09756: FLdPr Me
  loc_C09759: MemLdRfVar from_stack_1.global_60
  loc_C0975C: LdPrVar
  loc_C0975E: LateMemCall
  loc_C09764: LitVarStr var_94, "  <tr>"
  loc_C09769: PopAdLdVar
  loc_C0976A: FLdPr Me
  loc_C0976D: MemLdRfVar from_stack_1.global_60
  loc_C09770: LdPrVar
  loc_C09772: LateMemCall
  loc_C09778: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_C0977D: PopAdLdVar
  loc_C0977E: FLdPr Me
  loc_C09781: MemLdRfVar from_stack_1.global_60
  loc_C09784: LdPrVar
  loc_C09786: LateMemCall
  loc_C0978C: LitVarStr var_94, "  </tr>"
  loc_C09791: PopAdLdVar
  loc_C09792: FLdPr Me
  loc_C09795: MemLdRfVar from_stack_1.global_60
  loc_C09798: LdPrVar
  loc_C0979A: LateMemCall
  loc_C097A0: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C097A5: PopAdLdVar
  loc_C097A6: FLdPr Me
  loc_C097A9: MemLdRfVar from_stack_1.global_60
  loc_C097AC: LdPrVar
  loc_C097AE: LateMemCall
  loc_C097B4: FLdRfVar var_BE
  loc_C097B7: FLdPr Me
  loc_C097BA: VCallAd Control_ID_AforoOpt
  loc_C097BD: FStAdFunc var_D8
  loc_C097C0: FLdPr var_D8
  loc_C097C3:  = Me.Value
  loc_C097C8: LitVarStr var_118, "    <td align=""left"" width=""33" & Chr(37) & """><strong>Fecha de "
  loc_C097CD: LitVarStr var_E8, "Pago"
  loc_C097D2: FStVarCopyObj var_F8
  loc_C097D5: FLdRfVar var_F8
  loc_C097D8: LitVarStr var_A4, "Vencimiento"
  loc_C097DD: FStVarCopyObj var_BC
  loc_C097E0: FLdRfVar var_BC
  loc_C097E3: FLdI2 var_BE
  loc_C097E6: CVarBoolI2 var_94
  loc_C097EA: FLdRfVar var_108
  loc_C097ED: ImpAdCallFPR4  = IIf(, , )
  loc_C097F2: FLdRfVar var_108
  loc_C097F5: ConcatVar var_128
  loc_C097F9: LitVarStr var_138, "</strong>:</td>"
  loc_C097FE: ConcatVar var_148
  loc_C09802: PopAdLdVar
  loc_C09803: FLdPr Me
  loc_C09806: MemLdRfVar from_stack_1.global_60
  loc_C09809: LdPrVar
  loc_C0980B: LateMemCall
  loc_C09811: FFree1Ad var_D8
  loc_C09814: FFreeVar var_94 = "": var_BC = "": var_F8 = "": var_108 = "": var_128 = ""
  loc_C09823: LitStr "    <td align=""center""><strong>Desde: </strong>"
  loc_C09826: FLdPr Me
  loc_C09829: VCallAd Control_ID_DesdeMsk
  loc_C0982C: FStAdFunc var_D8
  loc_C0982F: FLdPr var_D8
  loc_C09832: LateIdLdVar var_BC DispID_15 0
  loc_C09839: CStrVarTmp
  loc_C0983A: FStStrNoPop var_A8
  loc_C0983D: ConcatStr
  loc_C0983E: FStStrNoPop var_AC
  loc_C09841: LitStr "</td>"
  loc_C09844: ConcatStr
  loc_C09845: CVarStr var_F8
  loc_C09848: PopAdLdVar
  loc_C09849: FLdPr Me
  loc_C0984C: MemLdRfVar from_stack_1.global_60
  loc_C0984F: LdPrVar
  loc_C09851: LateMemCall
  loc_C09857: FFreeStr var_A8 = ""
  loc_C0985E: FFree1Ad var_D8
  loc_C09861: FFreeVar var_BC = ""
  loc_C09868: LitStr "    <td align=""right"" width=""33" & Chr(37) & """><strong>Hasta: </strong>"
  loc_C0986B: FLdPr Me
  loc_C0986E: VCallAd Control_ID_HastaMsk
  loc_C09871: FStAdFunc var_D8
  loc_C09874: FLdPr var_D8
  loc_C09877: LateIdLdVar var_BC DispID_15 0
  loc_C0987E: CStrVarTmp
  loc_C0987F: FStStrNoPop var_A8
  loc_C09882: ConcatStr
  loc_C09883: FStStrNoPop var_AC
  loc_C09886: LitStr "</td>"
  loc_C09889: ConcatStr
  loc_C0988A: CVarStr var_F8
  loc_C0988D: PopAdLdVar
  loc_C0988E: FLdPr Me
  loc_C09891: MemLdRfVar from_stack_1.global_60
  loc_C09894: LdPrVar
  loc_C09896: LateMemCall
  loc_C0989C: FFreeStr var_A8 = ""
  loc_C098A3: FFree1Ad var_D8
  loc_C098A6: FFreeVar var_BC = ""
  loc_C098AD: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C098B2: PopAdLdVar
  loc_C098B3: FLdPr Me
  loc_C098B6: MemLdRfVar from_stack_1.global_60
  loc_C098B9: LdPrVar
  loc_C098BB: LateMemCall
  loc_C098C1: LitStr "    <td colspan=""3"" align=""left""><strong>Concepto: </strong>"
  loc_C098C4: FLdPr Me
  loc_C098C7: VCallAd Control_ID_CodiConcMsk
  loc_C098CA: FStAdFunc var_D8
  loc_C098CD: FLdPr var_D8
  loc_C098D0: LateIdLdVar var_BC DispID_22 0
  loc_C098D7: CStrVarTmp
  loc_C098D8: FStStrNoPop var_A8
  loc_C098DB: ConcatStr
  loc_C098DC: FStStrNoPop var_AC
  loc_C098DF: LitStr " - "
  loc_C098E2: ConcatStr
  loc_C098E3: FStStrNoPop var_C8
  loc_C098E6: FLdRfVar var_C4
  loc_C098E9: FLdPr Me
  loc_C098EC: VCallAd Control_ID_DetaConcLbl
  loc_C098EF: FStAdFunc var_15C
  loc_C098F2: FLdPr var_15C
  loc_C098F5:  = Me.Caption
  loc_C098FA: ILdRf var_C4
  loc_C098FD: ConcatStr
  loc_C098FE: FStStrNoPop var_CC
  loc_C09901: LitStr "</td>"
  loc_C09904: ConcatStr
  loc_C09905: CVarStr var_F8
  loc_C09908: PopAdLdVar
  loc_C09909: FLdPr Me
  loc_C0990C: MemLdRfVar from_stack_1.global_60
  loc_C0990F: LdPrVar
  loc_C09911: LateMemCall
  loc_C09917: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C09924: FFreeAd var_D8 = ""
  loc_C0992B: FFreeVar var_BC = ""
  loc_C09932: LitVarStr var_94, "  </tr>"
  loc_C09937: PopAdLdVar
  loc_C09938: FLdPr Me
  loc_C0993B: MemLdRfVar from_stack_1.global_60
  loc_C0993E: LdPrVar
  loc_C09940: LateMemCall
  loc_C09946: LitVarStr var_94, "</table>"
  loc_C0994B: PopAdLdVar
  loc_C0994C: FLdPr Me
  loc_C0994F: MemLdRfVar from_stack_1.global_60
  loc_C09952: LdPrVar
  loc_C09954: LateMemCall
  loc_C0995A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C0995F: PopAdLdVar
  loc_C09960: FLdPr Me
  loc_C09963: MemLdRfVar from_stack_1.global_60
  loc_C09966: LdPrVar
  loc_C09968: LateMemCall
  loc_C0996E: LitVarStr var_94, "  <thead>"
  loc_C09973: PopAdLdVar
  loc_C09974: FLdPr Me
  loc_C09977: MemLdRfVar from_stack_1.global_60
  loc_C0997A: LdPrVar
  loc_C0997C: LateMemCall
  loc_C09982: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C09987: PopAdLdVar
  loc_C09988: FLdPr Me
  loc_C0998B: MemLdRfVar from_stack_1.global_60
  loc_C0998E: LdPrVar
  loc_C09990: LateMemCall
  loc_C09996: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C0999B: PopAdLdVar
  loc_C0999C: FLdPr Me
  loc_C0999F: MemLdRfVar from_stack_1.global_60
  loc_C099A2: LdPrVar
  loc_C099A4: LateMemCall
  loc_C099AA: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C099AF: PopAdLdVar
  loc_C099B0: FLdPr Me
  loc_C099B3: MemLdRfVar from_stack_1.global_60
  loc_C099B6: LdPrVar
  loc_C099B8: LateMemCall
  loc_C099BE: LitVarStr var_94, "    <th>Periodo</th>"
  loc_C099C3: PopAdLdVar
  loc_C099C4: FLdPr Me
  loc_C099C7: MemLdRfVar from_stack_1.global_60
  loc_C099CA: LdPrVar
  loc_C099CC: LateMemCall
  loc_C099D2: LitVarStr var_94, "    <th>Bimestre</th>"
  loc_C099D7: PopAdLdVar
  loc_C099D8: FLdPr Me
  loc_C099DB: MemLdRfVar from_stack_1.global_60
  loc_C099DE: LdPrVar
  loc_C099E0: LateMemCall
  loc_C099E6: LitVarStr var_94, "    <th>Boleto</th>"
  loc_C099EB: PopAdLdVar
  loc_C099EC: FLdPr Me
  loc_C099EF: MemLdRfVar from_stack_1.global_60
  loc_C099F2: LdPrVar
  loc_C099F4: LateMemCall
  loc_C099FA: FLdRfVar var_BE
  loc_C099FD: FLdPr Me
  loc_C09A00: VCallAd Control_ID_AforoOpt
  loc_C09A03: FStAdFunc var_D8
  loc_C09A06: FLdPr var_D8
  loc_C09A09:  = Me.Value
  loc_C09A0E: FLdI2 var_BE
  loc_C09A11: FFree1Ad var_D8
  loc_C09A14: BranchF loc_C09A7E
  loc_C09A17: LitVarStr var_94, "    <th>Fecha de Aforo</th>"
  loc_C09A1C: PopAdLdVar
  loc_C09A1D: FLdPr Me
  loc_C09A20: MemLdRfVar from_stack_1.global_60
  loc_C09A23: LdPrVar
  loc_C09A25: LateMemCall
  loc_C09A2B: LitVarStr var_94, "    <th>Exp. de Aforo</th>"
  loc_C09A30: PopAdLdVar
  loc_C09A31: FLdPr Me
  loc_C09A34: MemLdRfVar from_stack_1.global_60
  loc_C09A37: LdPrVar
  loc_C09A39: LateMemCall
  loc_C09A3F: LitVarStr var_94, "    <th>Aforo</th>"
  loc_C09A44: PopAdLdVar
  loc_C09A45: FLdPr Me
  loc_C09A48: MemLdRfVar from_stack_1.global_60
  loc_C09A4B: LdPrVar
  loc_C09A4D: LateMemCall
  loc_C09A53: LitVarStr var_94, "    <th>Pago</th>"
  loc_C09A58: PopAdLdVar
  loc_C09A59: FLdPr Me
  loc_C09A5C: MemLdRfVar from_stack_1.global_60
  loc_C09A5F: LdPrVar
  loc_C09A61: LateMemCall
  loc_C09A67: LitVarStr var_94, "    <th>Fecha de Pago</th>"
  loc_C09A6C: PopAdLdVar
  loc_C09A6D: FLdPr Me
  loc_C09A70: MemLdRfVar from_stack_1.global_60
  loc_C09A73: LdPrVar
  loc_C09A75: LateMemCall
  loc_C09A7B: Branch loc_C09AE2
  loc_C09A7E: LitVarStr var_94, "    <th>Fecha de Pago</th>"
  loc_C09A83: PopAdLdVar
  loc_C09A84: FLdPr Me
  loc_C09A87: MemLdRfVar from_stack_1.global_60
  loc_C09A8A: LdPrVar
  loc_C09A8C: LateMemCall
  loc_C09A92: LitVarStr var_94, "    <th>Exp. de Aforo</th>"
  loc_C09A97: PopAdLdVar
  loc_C09A98: FLdPr Me
  loc_C09A9B: MemLdRfVar from_stack_1.global_60
  loc_C09A9E: LdPrVar
  loc_C09AA0: LateMemCall
  loc_C09AA6: LitVarStr var_94, "    <th>Aforo</th>"
  loc_C09AAB: PopAdLdVar
  loc_C09AAC: FLdPr Me
  loc_C09AAF: MemLdRfVar from_stack_1.global_60
  loc_C09AB2: LdPrVar
  loc_C09AB4: LateMemCall
  loc_C09ABA: LitVarStr var_94, "    <th>Pago</th>"
  loc_C09ABF: PopAdLdVar
  loc_C09AC0: FLdPr Me
  loc_C09AC3: MemLdRfVar from_stack_1.global_60
  loc_C09AC6: LdPrVar
  loc_C09AC8: LateMemCall
  loc_C09ACE: LitVarStr var_94, "    <th>Fecha de Aforo</th>"
  loc_C09AD3: PopAdLdVar
  loc_C09AD4: FLdPr Me
  loc_C09AD7: MemLdRfVar from_stack_1.global_60
  loc_C09ADA: LdPrVar
  loc_C09ADC: LateMemCall
  loc_C09AE2: LitVarStr var_94, "  </tr>"
  loc_C09AE7: PopAdLdVar
  loc_C09AE8: FLdPr Me
  loc_C09AEB: MemLdRfVar from_stack_1.global_60
  loc_C09AEE: LdPrVar
  loc_C09AF0: LateMemCall
  loc_C09AF6: LitVarStr var_94, "  </thead>"
  loc_C09AFB: PopAdLdVar
  loc_C09AFC: FLdPr Me
  loc_C09AFF: MemLdRfVar from_stack_1.global_60
  loc_C09B02: LdPrVar
  loc_C09B04: LateMemCall
  loc_C09B0A: ExitProcHresult
End Function

Private Function Proc_342_40_B167F0() 'B167F0
  'Data Table: 4FD9E0
  loc_B16574: FLdRfVar var_8A
  loc_B16577: FLdPr Me
  loc_B1657A: VCallAd Control_ID_AforoOpt
  loc_B1657D: FStAdFunc var_88
  loc_B16580: FLdPr var_88
  loc_B16583:  = Me.Value
  loc_B16588: FLdI2 var_8A
  loc_B1658B: FFree1Ad var_88
  loc_B1658E: BranchF loc_B167B1
  loc_B16591: LitVarStr var_9C, "</table>"
  loc_B16596: PopAdLdVar
  loc_B16597: FLdPr Me
  loc_B1659A: MemLdRfVar from_stack_1.global_60
  loc_B1659D: LdPrVar
  loc_B1659F: LateMemCall
  loc_B165A5: LitVarStr var_9C, "<br>"
  loc_B165AA: PopAdLdVar
  loc_B165AB: FLdPr Me
  loc_B165AE: MemLdRfVar from_stack_1.global_60
  loc_B165B1: LdPrVar
  loc_B165B3: LateMemCall
  loc_B165B9: LitVarStr var_9C, "<table border=""0"" align=""center"">"
  loc_B165BE: PopAdLdVar
  loc_B165BF: FLdPr Me
  loc_B165C2: MemLdRfVar from_stack_1.global_60
  loc_B165C5: LdPrVar
  loc_B165C7: LateMemCall
  loc_B165CD: LitVarStr var_9C, "  <tr class=""EncabezadoTotales"">"
  loc_B165D2: PopAdLdVar
  loc_B165D3: FLdPr Me
  loc_B165D6: MemLdRfVar from_stack_1.global_60
  loc_B165D9: LdPrVar
  loc_B165DB: LateMemCall
  loc_B165E1: LitVarStr var_9C, "    <td colspan=""2"" align=""center"">Totales</td>"
  loc_B165E6: PopAdLdVar
  loc_B165E7: FLdPr Me
  loc_B165EA: MemLdRfVar from_stack_1.global_60
  loc_B165ED: LdPrVar
  loc_B165EF: LateMemCall
  loc_B165F5: LitVarStr var_9C, "  </tr>"
  loc_B165FA: PopAdLdVar
  loc_B165FB: FLdPr Me
  loc_B165FE: MemLdRfVar from_stack_1.global_60
  loc_B16601: LdPrVar
  loc_B16603: LateMemCall
  loc_B16609: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B1660E: PopAdLdVar
  loc_B1660F: FLdPr Me
  loc_B16612: MemLdRfVar from_stack_1.global_60
  loc_B16615: LdPrVar
  loc_B16617: LateMemCall
  loc_B1661D: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Total de Aforos:</td>"
  loc_B16622: PopAdLdVar
  loc_B16623: FLdPr Me
  loc_B16626: MemLdRfVar from_stack_1.global_60
  loc_B16629: LdPrVar
  loc_B1662B: LateMemCall
  loc_B16631: LitStr "    <td class=""Totales"">"
  loc_B16634: FLdPr Me
  loc_B16637: MemLdStr global_92
  loc_B1663A: ConcatStr
  loc_B1663B: FStStrNoPop var_B0
  loc_B1663E: LitStr "</td>"
  loc_B16641: ConcatStr
  loc_B16642: CVarStr var_C0
  loc_B16645: PopAdLdVar
  loc_B16646: FLdPr Me
  loc_B16649: MemLdRfVar from_stack_1.global_60
  loc_B1664C: LdPrVar
  loc_B1664E: LateMemCall
  loc_B16654: FFree1Str var_B0
  loc_B16657: FFree1Var var_C0 = ""
  loc_B1665A: LitVarStr var_9C, "  </tr>"
  loc_B1665F: PopAdLdVar
  loc_B16660: FLdPr Me
  loc_B16663: MemLdRfVar from_stack_1.global_60
  loc_B16666: LdPrVar
  loc_B16668: LateMemCall
  loc_B1666E: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B16673: PopAdLdVar
  loc_B16674: FLdPr Me
  loc_B16677: MemLdRfVar from_stack_1.global_60
  loc_B1667A: LdPrVar
  loc_B1667C: LateMemCall
  loc_B16682: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Total de Pagos:</td>"
  loc_B16687: PopAdLdVar
  loc_B16688: FLdPr Me
  loc_B1668B: MemLdRfVar from_stack_1.global_60
  loc_B1668E: LdPrVar
  loc_B16690: LateMemCall
  loc_B16696: LitStr "    <td class=""Totales"">"
  loc_B16699: FLdPr Me
  loc_B1669C: MemLdStr global_96
  loc_B1669F: ConcatStr
  loc_B166A0: FStStrNoPop var_B0
  loc_B166A3: LitStr "</td>"
  loc_B166A6: ConcatStr
  loc_B166A7: CVarStr var_C0
  loc_B166AA: PopAdLdVar
  loc_B166AB: FLdPr Me
  loc_B166AE: MemLdRfVar from_stack_1.global_60
  loc_B166B1: LdPrVar
  loc_B166B3: LateMemCall
  loc_B166B9: FFree1Str var_B0
  loc_B166BC: FFree1Var var_C0 = ""
  loc_B166BF: LitVarStr var_9C, "  </tr>"
  loc_B166C4: PopAdLdVar
  loc_B166C5: FLdPr Me
  loc_B166C8: MemLdRfVar from_stack_1.global_60
  loc_B166CB: LdPrVar
  loc_B166CD: LateMemCall
  loc_B166D3: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B166D8: PopAdLdVar
  loc_B166D9: FLdPr Me
  loc_B166DC: MemLdRfVar from_stack_1.global_60
  loc_B166DF: LdPrVar
  loc_B166E1: LateMemCall
  loc_B166E7: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Total de Pagos en el Periodo:</td>"
  loc_B166EC: PopAdLdVar
  loc_B166ED: FLdPr Me
  loc_B166F0: MemLdRfVar from_stack_1.global_60
  loc_B166F3: LdPrVar
  loc_B166F5: LateMemCall
  loc_B166FB: LitStr "    <td class=""Totales"">"
  loc_B166FE: FLdPr Me
  loc_B16701: MemLdStr global_108
  loc_B16704: ConcatStr
  loc_B16705: FStStrNoPop var_B0
  loc_B16708: LitStr "</td>"
  loc_B1670B: ConcatStr
  loc_B1670C: CVarStr var_C0
  loc_B1670F: PopAdLdVar
  loc_B16710: FLdPr Me
  loc_B16713: MemLdRfVar from_stack_1.global_60
  loc_B16716: LdPrVar
  loc_B16718: LateMemCall
  loc_B1671E: FFree1Str var_B0
  loc_B16721: FFree1Var var_C0 = ""
  loc_B16724: LitVarStr var_9C, "  </tr>"
  loc_B16729: PopAdLdVar
  loc_B1672A: FLdPr Me
  loc_B1672D: MemLdRfVar from_stack_1.global_60
  loc_B16730: LdPrVar
  loc_B16732: LateMemCall
  loc_B16738: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B1673D: PopAdLdVar
  loc_B1673E: FLdPr Me
  loc_B16741: MemLdRfVar from_stack_1.global_60
  loc_B16744: LdPrVar
  loc_B16746: LateMemCall
  loc_B1674C: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Total de Pagos fuera del Periodo:</td>"
  loc_B16751: PopAdLdVar
  loc_B16752: FLdPr Me
  loc_B16755: MemLdRfVar from_stack_1.global_60
  loc_B16758: LdPrVar
  loc_B1675A: LateMemCall
  loc_B16760: LitStr "    <td class=""Totales"">"
  loc_B16763: FLdPr Me
  loc_B16766: MemLdStr global_112
  loc_B16769: ConcatStr
  loc_B1676A: FStStrNoPop var_B0
  loc_B1676D: LitStr "</td>"
  loc_B16770: ConcatStr
  loc_B16771: CVarStr var_C0
  loc_B16774: PopAdLdVar
  loc_B16775: FLdPr Me
  loc_B16778: MemLdRfVar from_stack_1.global_60
  loc_B1677B: LdPrVar
  loc_B1677D: LateMemCall
  loc_B16783: FFree1Str var_B0
  loc_B16786: FFree1Var var_C0 = ""
  loc_B16789: LitVarStr var_9C, "  </tr>"
  loc_B1678E: PopAdLdVar
  loc_B1678F: FLdPr Me
  loc_B16792: MemLdRfVar from_stack_1.global_60
  loc_B16795: LdPrVar
  loc_B16797: LateMemCall
  loc_B1679D: LitVarStr var_9C, "</table>"
  loc_B167A2: PopAdLdVar
  loc_B167A3: FLdPr Me
  loc_B167A6: MemLdRfVar from_stack_1.global_60
  loc_B167A9: LdPrVar
  loc_B167AB: LateMemCall
  loc_B167B1: LitVarStr var_9C, "</table>"
  loc_B167B6: PopAdLdVar
  loc_B167B7: FLdPr Me
  loc_B167BA: MemLdRfVar from_stack_1.global_60
  loc_B167BD: LdPrVar
  loc_B167BF: LateMemCall
  loc_B167C5: LitVarStr var_9C, "</body>"
  loc_B167CA: PopAdLdVar
  loc_B167CB: FLdPr Me
  loc_B167CE: MemLdRfVar from_stack_1.global_60
  loc_B167D1: LdPrVar
  loc_B167D3: LateMemCall
  loc_B167D9: LitVarStr var_9C, "</html>"
  loc_B167DE: PopAdLdVar
  loc_B167DF: FLdPr Me
  loc_B167E2: MemLdRfVar from_stack_1.global_60
  loc_B167E5: LdPrVar
  loc_B167E7: LateMemCall
  loc_B167ED: ExitProcHresult
  loc_B167EE: ILdRf arg_68FF
End Function
