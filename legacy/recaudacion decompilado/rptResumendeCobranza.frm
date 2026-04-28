VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeCobranza
  Caption = "Resumen de Cobranza"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeCobranza.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8748
  ClientHeight = 4932
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
    Top = 4680
    Width = 8745
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptResumendeCobranza.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 3600
    Width = 855
    Height = 735
    TabIndex = 13
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
    Picture = "rptResumendeCobranza.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeCobranza.frx":0B9C
    Left = 7320
    Top = 1560
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3360
    Width = 3375
    Height = 1215
    TabIndex = 17
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 27
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 4095
    Height = 1215
    TabIndex = 16
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 3255
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame5
      Caption = "Por Usuario:"
      Left = 2040
      Top = 1800
      Width = 4215
      Height = 1215
      TabIndex = 26
      Begin VB.ComboBox CodiUsuaCbo
        Style = 2
        Left = 360
        Top = 480
        Width = 3615
        Height = 420
        TabIndex = 8
      End
    End
    Begin VB.Frame Frame4
      Left = 120
      Top = 1800
      Width = 1695
      Height = 1215
      TabIndex = 25
      Begin VB.OptionButton AnaliticoOpt
        Caption = "Analítico"
        Left = 240
        Top = 720
        Width = 1335
        Height = 300
        TabIndex = 7
      End
      Begin VB.OptionButton SinteticoOpt
        Caption = "Sintético"
        Left = 240
        Top = 360
        Width = 1335
        Height = 300
        TabIndex = 6
      End
    End
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Envío"
      Left = 120
      Top = 240
      Width = 3015
      Height = 1575
      TabIndex = 22
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranza.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranza.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumendeCobranza.frx":1684
      End
      Begin MSMask.MaskEdBox FeenAcpaHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumendeCobranza.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 24
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 23
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame PeriodoFra
      Caption = "Número de Grupo"
      Left = 3240
      Top = 240
      Width = 3015
      Height = 1575
      TabIndex = 20
      Begin MSMask.MaskEdBox NumeAcpaDesdeMsk
        Left = 1560
        Top = 480
        Width = 735
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptResumendeCobranza.frx":17E4
      End
      Begin MSMask.MaskEdBox NumeAcpaHastaMsk
        Left = 1560
        Top = 960
        Width = 735
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptResumendeCobranza.frx":1874
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 780
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 21
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 720
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 14
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6600
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 12
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 3840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptResumendeCobranza.frx":1904
  End
End

Attribute VB_Name = "rptResumendeCobranza"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_00569034
  bStruc(60) As Byte ' String fields: 9
End Type

Private Type UDT_3_0056907C
  bStruc(112) As Byte ' String fields: 10
End Type

Private Type UDT_4_0056911C
  bStruc(72) As Byte ' String fields: 12
End Type

Private Type UDT_5_0056919C
  bStruc(36) As Byte ' String fields: 3
End Type

Private Type UDT_6_005691F0
  bStruc(60) As Byte ' String fields: 9
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1CF60
  'Data Table: 4E4644
  loc_A1CF28: FLdPr Me
  loc_A1CF2B: VCallAd Control_ID_statusBar
  loc_A1CF2E: FStAdFunc var_88
  loc_A1CF31: FLdPr var_88
  loc_A1CF34: LateIdLdVar var_98 DispID_1 0
  loc_A1CF3B: CStrVarTmp
  loc_A1CF3C: CVarStr var_A8
  loc_A1CF3F: PopAdLdVar
  loc_A1CF40: FLdPr Me
  loc_A1CF43: VCallAd Control_ID_statusBar
  loc_A1CF46: FStAdFunc var_BC
  loc_A1CF49: FLdPr var_BC
  loc_A1CF4C: LateIdSt
  loc_A1CF51: FFreeAd var_88 = ""
  loc_A1CF58: FFreeVar var_98 = ""
  loc_A1CF5F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D95D4
  'Data Table: 4E4644
  loc_9D95BC: ILdRf Me
  loc_9D95BF: CastAd
  loc_9D95C2: FStAdFunc var_88
  loc_9D95C5: FLdRfVar var_88
  loc_9D95C8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D95CD: FFree1Ad var_88
  loc_9D95D0: ExitProcHresult
  loc_9D95D1: FnLenStr
  loc_9D95D2: LtI4
End Sub

Private Sub cmdXLS_Click() '9DFA1C
  'Data Table: 4E4644
  loc_9DFA00: LitI2_Byte &HFF
  loc_9DFA02: LitI2_Byte 0
  loc_9DFA04: ILdRf Me
  loc_9DFA07: CastAd
  loc_9DFA0A: FStAdFunc var_88
  loc_9DFA0D: FLdRfVar var_88
  loc_9DFA10: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DFA15: FFree1Ad var_88
  loc_9DFA18: ExitProcHresult
  loc_9DFA19: LitI2_Byte 1
End Sub

Private Sub cmdPdf_Click() '9E050C
  'Data Table: 4E4644
  loc_9E04F0: LitI2_Byte 0
  loc_9E04F2: PopTmpLdAd2 var_8A
  loc_9E04F5: ILdRf Me
  loc_9E04F8: CastAd
  loc_9E04FB: FStAdFunc var_88
  loc_9E04FE: FLdRfVar var_88
  loc_9E0501: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0506: FFree1Ad var_88
  loc_9E0509: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ABB6A4
  'Data Table: 4E4644
  loc_ABB5B0: ImpAdLdI4 MemVar_D9302C
  loc_ABB5B3: ImpAdCallI2 Proc_270_90_A7E070()
  loc_ABB5B8: FLdPr Me
  loc_ABB5BB: MemStI2 global_148
  loc_ABB5BE: LitI2_Byte 0
  loc_ABB5C0: FLdPr Me
  loc_ABB5C3: MemStI2 bGenerado
  loc_ABB5C6: LitI2_Byte &HFF
  loc_ABB5C8: FLdPr Me
  loc_ABB5CB: MemStI2 bLogos
  loc_ABB5CE: LitI2_Byte 0
  loc_ABB5D0: ILdRf Me
  loc_ABB5D3: CastAd
  loc_ABB5D6: FStAdFunc var_88
  loc_ABB5D9: FLdRfVar var_88
  loc_ABB5DC: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ABB5E1: FFree1Ad var_88
  loc_ABB5E4: LitI2_Byte 0
  loc_ABB5E6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABB5EB: CStrDate
  loc_ABB5ED: CVarStr var_98
  loc_ABB5F0: PopAdLdVar
  loc_ABB5F1: FLdPr Me
  loc_ABB5F4: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ABB5F7: FStAdFunc var_88
  loc_ABB5FA: FLdPr var_88
  loc_ABB5FD: LateIdSt
  loc_ABB602: FFree1Ad var_88
  loc_ABB605: FFree1Var var_98 = ""
  loc_ABB608: FLdPr Me
  loc_ABB60B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ABB60E: FStAdFunc var_88
  loc_ABB611: FLdPr var_88
  loc_ABB614: LateIdLdVar var_98 DispID_0 0
  loc_ABB61B: CStrVarTmp
  loc_ABB61C: CVarStr var_B8
  loc_ABB61F: PopAdLdVar
  loc_ABB620: FLdPr Me
  loc_ABB623: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ABB626: FStAdFunc var_BC
  loc_ABB629: FLdPr var_BC
  loc_ABB62C: LateIdSt
  loc_ABB631: FFreeAd var_88 = ""
  loc_ABB638: FFreeVar var_98 = ""
  loc_ABB63F: LitVarStr var_A8, vbNullString
  loc_ABB644: PopAdLdVar
  loc_ABB645: FLdPr Me
  loc_ABB648: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_ABB64B: FStAdFunc var_88
  loc_ABB64E: FLdPr var_88
  loc_ABB651: LateIdSt
  loc_ABB656: FFree1Ad var_88
  loc_ABB659: LitVarStr var_A8, vbNullString
  loc_ABB65E: PopAdLdVar
  loc_ABB65F: FLdPr Me
  loc_ABB662: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_ABB665: FStAdFunc var_88
  loc_ABB668: FLdPr var_88
  loc_ABB66B: LateIdSt
  loc_ABB670: FFree1Ad var_88
  loc_ABB673: LitI2_Byte &HFF
  loc_ABB675: FLdPr Me
  loc_ABB678: VCallAd Control_ID_SinteticoOpt
  loc_ABB67B: FStAdFunc var_88
  loc_ABB67E: FLdPr var_88
  loc_ABB681: Me.Value = from_stack_1b
  loc_ABB686: FFree1Ad var_88
  loc_ABB689: Call HabilitarCriterio()
  loc_ABB68E: ILdRf Me
  loc_ABB691: CastAd
  loc_ABB694: FStAdFunc var_88
  loc_ABB697: FLdRfVar var_88
  loc_ABB69A: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ABB69F: FFree1Ad var_88
  loc_ABB6A2: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A40948
  'Data Table: 4E4644
  loc_A408F4: LitI2_Byte 0
  loc_A408F6: ILdRf Me
  loc_A408F9: CastAd
  loc_A408FC: FStAdFunc var_88
  loc_A408FF: FLdRfVar var_88
  loc_A40902: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A40907: FFree1Ad var_88
  loc_A4090A: FLdRfVar var_8A
  loc_A4090D: FLdPr Me
  loc_A40910: VCallAd Control_ID_cmdPredeterminada
  loc_A40913: FStAdFunc var_88
  loc_A40916: FLdPr var_88
  loc_A40919:  = Me.Enabled
  loc_A4091E: FLdI2 var_8A
  loc_A40921: NotI4
  loc_A40922: FFree1Ad var_88
  loc_A40925: BranchF loc_A40930
  loc_A40928: ImpAdCallFPR4 DoEvents()
  loc_A4092D: Branch loc_A4090A
  loc_A40930: ILdRf Me
  loc_A40933: FStAdNoPop
  loc_A40937: ImpAdLdRf MemVar_D9C5D8
  loc_A4093A: NewIfNullPr Global
  loc_A4093D: Global.Unload from_stack_1
  loc_A40942: FFree1Ad var_88
  loc_A40945: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9C68F0
  'Data Table: 4E4644
  loc_9C68DC: FLdPr Me
  loc_9C68DF: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9C68E2: CVarAd
  loc_9C68E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C68EB: FFree1Var var_94 = ""
  loc_9C68EE: ExitProcHresult
End Sub

Private Function FeenAcpaDesdeMsk_UnknownEvent_8(arg_C) 'A6EE78
  'Data Table: 4E4644
  loc_A6EE10: FLdPr Me
  loc_A6EE13: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6EE16: FStAdFunc var_88
  loc_A6EE19: FLdPr var_88
  loc_A6EE1C: LateIdLdVar var_98 DispID_15 0
  loc_A6EE23: CStrVarTmp
  loc_A6EE24: FStStrNoPop var_9C
  loc_A6EE27: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A6EE2C: FStStrNoPop var_A0
  loc_A6EE2F: FLdPr Me
  loc_A6EE32: MemStStrCopy
  loc_A6EE36: FFreeStr var_9C = ""
  loc_A6EE3D: FFree1Ad var_88
  loc_A6EE40: FFree1Var var_98 = ""
  loc_A6EE43: FLdPr Me
  loc_A6EE46: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6EE49: FStAdFuncNoPop
  loc_A6EE4C: CastAd
  loc_A6EE4F: FStAdFunc var_A4
  loc_A6EE52: FLdRfVar var_A4
  loc_A6EE55: FLdPr Me
  loc_A6EE58: MemLdStr global_156
  loc_A6EE5B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6EE60: IStI2 arg_C
  loc_A6EE63: FFreeAd var_88 = ""
  loc_A6EE6A: ILdI2 arg_C
  loc_A6EE6D: NotI4
  loc_A6EE6E: BranchF loc_A6EE76
  loc_A6EE71: Call Proc_81_29_B27F7C()
  loc_A6EE76: ExitProcHresult
End Function

Private Sub Form_Load() 'A098A0
  'Data Table: 4E4644
  loc_A0986C: ILdRf Me
  loc_A0986F: CastAd
  loc_A09872: FStAdFunc var_88
  loc_A09875: FLdRfVar var_88
  loc_A09878: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A0987D: FFree1Ad var_88
  loc_A09880: FLdRfVar var_8C
  loc_A09883: FLdPr Me
  loc_A09886:  = Me.Caption
  loc_A0988B: ILdRf var_8C
  loc_A0988E: FLdPr Me
  loc_A09891: MemStStrCopy
  loc_A09895: FFree1Str var_8C
  loc_A09898: Call cmdNueva_Click()
  loc_A0989D: ExitProcHresult
  loc_A0989E: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D9E70
  'Data Table: 4E4644
  loc_9D9E58: FLdPr Me
  loc_9D9E5B: VCallAd Control_ID_wbbReporte
  loc_9D9E5E: FStAdFunc var_88
  loc_9D9E61: FLdRfVar var_88
  loc_9D9E64: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D9E69: FFree1Ad var_88
  loc_9D9E6C: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9C17A8
  'Data Table: 4E4644
  loc_9C1794: FLdPr Me
  loc_9C1797: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9C179A: CVarAd
  loc_9C179E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C17A3: FFree1Var var_94 = ""
  loc_9C17A6: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_8 'A6E5BC
  'Data Table: 4E4644
  loc_A6E554: FLdPr Me
  loc_A6E557: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A6E55A: FStAdFunc var_88
  loc_A6E55D: FLdPr var_88
  loc_A6E560: LateIdLdVar var_98 DispID_15 0
  loc_A6E567: CStrVarTmp
  loc_A6E568: FStStrNoPop var_9C
  loc_A6E56B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A6E570: FStStrNoPop var_A0
  loc_A6E573: FLdPr Me
  loc_A6E576: MemStStrCopy
  loc_A6E57A: FFreeStr var_9C = ""
  loc_A6E581: FFree1Ad var_88
  loc_A6E584: FFree1Var var_98 = ""
  loc_A6E587: FLdPr Me
  loc_A6E58A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A6E58D: FStAdFuncNoPop
  loc_A6E590: CastAd
  loc_A6E593: FStAdFunc var_A4
  loc_A6E596: FLdRfVar var_A4
  loc_A6E599: FLdPr Me
  loc_A6E59C: MemLdStr global_156
  loc_A6E59F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6E5A4: IStI2 Cancel
  loc_A6E5A7: FFreeAd var_88 = ""
  loc_A6E5AE: ILdI2 Cancel
  loc_A6E5B1: NotI4
  loc_A6E5B2: BranchF loc_A6E5BA
  loc_A6E5B5: Call Proc_81_29_B27F7C()
  loc_A6E5BA: ExitProcHresult
End Sub

Private Sub NumeAcpaHastaMsk_UnknownEvent_0 '9C1E68
  'Data Table: 4E4644
  loc_9C1E54: FLdPr Me
  loc_9C1E57: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_9C1E5A: CVarAd
  loc_9C1E5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1E63: FFree1Var var_94 = ""
  loc_9C1E66: ExitProcHresult
End Sub

Private Sub NumeAcpaHastaMsk_UnknownEvent_8 '9AFF5C
  'Data Table: 4E4644
  loc_9AFF54: Call Proc_81_29_B27F7C()
  loc_9AFF59: ExitProcHresult
End Sub

Private Sub SinteticoOpt_Click() '9DFF1C
  'Data Table: 4E4644
  loc_9DFF00: FLdPr Me
  loc_9DFF03: MemLdStr global_152
  loc_9DFF06: LitStr " (sintético)"
  loc_9DFF09: ConcatStr
  loc_9DFF0A: FStStrNoPop var_88
  loc_9DFF0D: FLdPr Me
  loc_9DFF10: Me.Caption = from_stack_1
  loc_9DFF15: FFree1Str var_88
  loc_9DFF18: ExitProcHresult
  loc_9DFF19: NeR8
  loc_9DFF1A: Ary1LdCy
End Sub

Private Sub AnaliticoOpt_Click() '9E02DC
  'Data Table: 4E4644
  loc_9E02C0: FLdPr Me
  loc_9E02C3: MemLdStr global_152
  loc_9E02C6: LitStr " (analítico)"
  loc_9E02C9: ConcatStr
  loc_9E02CA: FStStrNoPop var_88
  loc_9E02CD: FLdPr Me
  loc_9E02D0: Me.Caption = from_stack_1
  loc_9E02D5: FFree1Str var_88
  loc_9E02D8: ExitProcHresult
End Sub

Private Sub NumeAcpaDesdeMsk_UnknownEvent_0 '9C1EB0
  'Data Table: 4E4644
  loc_9C1E9C: FLdPr Me
  loc_9C1E9F: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_9C1EA2: CVarAd
  loc_9C1EA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1EAB: FFree1Var var_94 = ""
  loc_9C1EAE: ExitProcHresult
End Sub

Private Sub NumeAcpaDesdeMsk_UnknownEvent_8 '9AFD9C
  'Data Table: 4E4644
  loc_9AFD94: Call Proc_81_29_B27F7C()
  loc_9AFD99: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0B724
  'Data Table: 4E4644
  loc_A0B6E8: LitVar_Missing var_A4
  loc_A0B6EB: PopAdLdVar
  loc_A0B6EC: LitVarI4
  loc_A0B6F4: PopAdLdVar
  loc_A0B6F5: ImpAdLdRf MemVar_D930A4
  loc_A0B6F8: NewIfNullPr frmCalendario
  loc_A0B6FB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0B700: ImpAdLdRf MemVar_D93028
  loc_A0B703: CDargRef
  loc_A0B707: FLdPr Me
  loc_A0B70A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A0B70D: FStAdFunc var_A8
  loc_A0B710: FLdPr var_A8
  loc_A0B713: LateIdSt
  loc_A0B718: FFree1Ad var_A8
  loc_A0B71B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0B720: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0CAD4
  'Data Table: 4E4644
  loc_A0CA98: LitVar_Missing var_A4
  loc_A0CA9B: PopAdLdVar
  loc_A0CA9C: LitVarI4
  loc_A0CAA4: PopAdLdVar
  loc_A0CAA5: ImpAdLdRf MemVar_D930A4
  loc_A0CAA8: NewIfNullPr frmCalendario
  loc_A0CAAB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CAB0: ImpAdLdRf MemVar_D93028
  loc_A0CAB3: CDargRef
  loc_A0CAB7: FLdPr Me
  loc_A0CABA: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A0CABD: FStAdFunc var_A8
  loc_A0CAC0: FLdPr var_A8
  loc_A0CAC3: LateIdSt
  loc_A0CAC8: FFree1Ad var_A8
  loc_A0CACB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CAD0: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FFA70
  'Data Table: 4E4644
  loc_9FFA40: LitVarStr var_94, "Cerrando..."
  loc_9FFA45: PopAdLdVar
  loc_9FFA46: FLdPr Me
  loc_9FFA49: VCallAd Control_ID_statusBar
  loc_9FFA4C: FStAdFunc var_A8
  loc_9FFA4F: FLdPr var_A8
  loc_9FFA52: LateIdSt
  loc_9FFA57: FFree1Ad var_A8
  loc_9FFA5A: ILdRf Me
  loc_9FFA5D: FStAdNoPop
  loc_9FFA61: ImpAdLdRf MemVar_D9C5D8
  loc_9FFA64: NewIfNullPr Global
  loc_9FFA67: Global.Unload from_stack_1
  loc_9FFA6C: FFree1Ad var_A8
  loc_9FFA6F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4E5AFC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4E5B0B
  bGenerado = Value
End Sub

Public Function bLogosGet() '4E5B1A
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4E5B29
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'AAEB80
  'Data Table: 4E4644
  loc_AAEACC: LitI4 0
  loc_AAEAD1: LitI4 8
  loc_AAEAD6: FLdRfVar var_88
  loc_AAEAD9: Redim
  loc_AAEAE3: FLdPr Me
  loc_AAEAE6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AAEAE9: CVarAd
  loc_AAEAED: ParmAry1St
  loc_AAEAF3: FLdPr Me
  loc_AAEAF6: VCallAd Control_ID_DesdeFechaCmd
  loc_AAEAF9: CVarAd
  loc_AAEAFD: ParmAry1St
  loc_AAEB03: FLdPr Me
  loc_AAEB06: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AAEB09: CVarAd
  loc_AAEB0D: ParmAry1St
  loc_AAEB13: FLdPr Me
  loc_AAEB16: VCallAd Control_ID_HastaFechaCmd
  loc_AAEB19: CVarAd
  loc_AAEB1D: ParmAry1St
  loc_AAEB23: FLdPr Me
  loc_AAEB26: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_AAEB29: CVarAd
  loc_AAEB2D: ParmAry1St
  loc_AAEB33: FLdPr Me
  loc_AAEB36: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_AAEB39: CVarAd
  loc_AAEB3D: ParmAry1St
  loc_AAEB43: FLdPr Me
  loc_AAEB46: VCallAd Control_ID_SinteticoOpt
  loc_AAEB49: CVarAd
  loc_AAEB4D: ParmAry1St
  loc_AAEB53: FLdPr Me
  loc_AAEB56: VCallAd Control_ID_AnaliticoOpt
  loc_AAEB59: CVarAd
  loc_AAEB5D: ParmAry1St
  loc_AAEB63: FLdPr Me
  loc_AAEB66: VCallAd Control_ID_CodiUsuaCbo
  loc_AAEB69: CVarAd
  loc_AAEB6D: ParmAry1St
  loc_AAEB73: FLdRfVar var_88
  loc_AAEB76: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AAEB7B: FLdRfVar var_88
  loc_AAEB7E: Erase
  loc_AAEB7F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C9C738
  'Data Table: 4E4644
  loc_C9ACB0: FLdPr Me
  loc_C9ACB3: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C9ACB6: FStAdFunc var_94
  loc_C9ACB9: FLdPr var_94
  loc_C9ACBC: LateIdLdVar var_A4 DispID_0 0
  loc_C9ACC3: PopAd
  loc_C9ACC5: FLdPr Me
  loc_C9ACC8: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C9ACCB: FStAdFunc var_AC
  loc_C9ACCE: FLdPr var_AC
  loc_C9ACD1: LateIdLdVar var_BC DispID_0 0
  loc_C9ACD8: PopAd
  loc_C9ACDA: LitVarStr var_F0, vbNullString
  loc_C9ACDF: FStVarCopyObj var_100
  loc_C9ACE2: FLdRfVar var_100
  loc_C9ACE5: LitStr " AND acrepago.NumeAcpa >= "
  loc_C9ACE8: FLdRfVar var_BC
  loc_C9ACEB: CStrVarTmp
  loc_C9ACEC: FStStrNoPop var_C0
  loc_C9ACEF: ConcatStr
  loc_C9ACF0: CVarStr var_E0
  loc_C9ACF3: FLdRfVar var_A4
  loc_C9ACF6: CStrVarTmp
  loc_C9ACF7: FStStrNoPop var_A8
  loc_C9ACFA: LitStr vbNullString
  loc_C9ACFD: NeStr
  loc_C9ACFF: CVarBoolI2 var_D0
  loc_C9AD03: FLdRfVar var_110
  loc_C9AD06: ImpAdCallFPR4  = IIf(, , )
  loc_C9AD0B: FLdRfVar var_110
  loc_C9AD0E: CStrVarTmp
  loc_C9AD0F: FStStr var_88
  loc_C9AD12: FFreeStr var_A8 = ""
  loc_C9AD19: FFreeAd var_94 = ""
  loc_C9AD20: FFreeVar var_A4 = "": var_BC = "": var_D0 = "": var_E0 = "": var_100 = ""
  loc_C9AD2F: FLdPr Me
  loc_C9AD32: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C9AD35: FStAdFunc var_94
  loc_C9AD38: FLdPr var_94
  loc_C9AD3B: LateIdLdVar var_A4 DispID_0 0
  loc_C9AD42: PopAd
  loc_C9AD44: FLdPr Me
  loc_C9AD47: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C9AD4A: FStAdFunc var_AC
  loc_C9AD4D: FLdPr var_AC
  loc_C9AD50: LateIdLdVar var_BC DispID_0 0
  loc_C9AD57: PopAd
  loc_C9AD59: LitVarStr var_F0, vbNullString
  loc_C9AD5E: FStVarCopyObj var_100
  loc_C9AD61: FLdRfVar var_100
  loc_C9AD64: LitStr " AND acrepago.NumeAcpa <= "
  loc_C9AD67: FLdRfVar var_BC
  loc_C9AD6A: CStrVarTmp
  loc_C9AD6B: FStStrNoPop var_C0
  loc_C9AD6E: ConcatStr
  loc_C9AD6F: CVarStr var_E0
  loc_C9AD72: FLdRfVar var_A4
  loc_C9AD75: CStrVarTmp
  loc_C9AD76: FStStrNoPop var_A8
  loc_C9AD79: LitStr vbNullString
  loc_C9AD7C: NeStr
  loc_C9AD7E: CVarBoolI2 var_D0
  loc_C9AD82: FLdRfVar var_110
  loc_C9AD85: ImpAdCallFPR4  = IIf(, , )
  loc_C9AD8A: FLdRfVar var_110
  loc_C9AD8D: CStrVarTmp
  loc_C9AD8E: FStStr var_8C
  loc_C9AD91: FFreeStr var_A8 = ""
  loc_C9AD98: FFreeAd var_94 = ""
  loc_C9AD9F: FFreeVar var_A4 = "": var_BC = "": var_D0 = "": var_E0 = "": var_100 = ""
  loc_C9ADAE: FLdRfVar var_112
  loc_C9ADB1: FLdPr Me
  loc_C9ADB4: VCallAd Control_ID_CodiUsuaCbo
  loc_C9ADB7: FStAdFunc var_94
  loc_C9ADBA: FLdPr var_94
  loc_C9ADBD:  = Me.ListIndex
  loc_C9ADC2: FLdRfVar var_A8
  loc_C9ADC5: FLdPr Me
  loc_C9ADC8: VCallAd Control_ID_CodiUsuaCbo
  loc_C9ADCB: FStAdFunc var_AC
  loc_C9ADCE: FLdPr var_AC
  loc_C9ADD1:  = Me.Text
  loc_C9ADD6: LitVarStr var_F0, vbNullString
  loc_C9ADDB: FStVarCopyObj var_BC
  loc_C9ADDE: FLdRfVar var_BC
  loc_C9ADE1: LitStr " AND pago.CodiUsua = '"
  loc_C9ADE4: ILdRf var_A8
  loc_C9ADE7: ConcatStr
  loc_C9ADE8: FStStrNoPop var_C0
  loc_C9ADEB: LitStr "'"
  loc_C9ADEE: ConcatStr
  loc_C9ADEF: CVarStr var_A4
  loc_C9ADF2: FLdI2 var_112
  loc_C9ADF5: LitI2_Byte 0
  loc_C9ADF7: GtI2
  loc_C9ADF8: CVarBoolI2 var_D0
  loc_C9ADFC: FLdRfVar var_E0
  loc_C9ADFF: ImpAdCallFPR4  = IIf(, , )
  loc_C9AE04: FLdRfVar var_E0
  loc_C9AE07: CStrVarTmp
  loc_C9AE08: FStStr var_90
  loc_C9AE0B: FFreeStr var_A8 = ""
  loc_C9AE12: FFreeAd var_94 = ""
  loc_C9AE19: FFreeVar var_D0 = "": var_A4 = "": var_BC = ""
  loc_C9AE24: FLdPr Me
  loc_C9AE27: MemLdI2 bGenerado
  loc_C9AE2A: BranchF loc_C9AE2E
  loc_C9AE2D: ExitProcHresult
  loc_C9AE2E: LitVarStr var_D0, "Generando reporte..."
  loc_C9AE33: PopAdLdVar
  loc_C9AE34: FLdPr Me
  loc_C9AE37: VCallAd Control_ID_statusBar
  loc_C9AE3A: FStAdFunc var_94
  loc_C9AE3D: FLdPr var_94
  loc_C9AE40: LateIdSt
  loc_C9AE45: FFree1Ad var_94
  loc_C9AE48: LitI4 &HB
  loc_C9AE4D: CI2I4
  loc_C9AE4E: FLdPr Me
  loc_C9AE51: Me.MousePointer = from_stack_1
  loc_C9AE56: FLdPr Me
  loc_C9AE59: MemLdRfVar from_stack_1.global_76
  loc_C9AE5C: NewIfNullAd
  loc_C9AE5F: FStAd var_118 
  loc_C9AE63: FLdPr Me
  loc_C9AE66: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C9AE69: FStAdFunc var_94
  loc_C9AE6C: FLdPr var_94
  loc_C9AE6F: LateIdLdVar var_A4 DispID_15 0
  loc_C9AE76: PopAd
  loc_C9AE78: FLdPr Me
  loc_C9AE7B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C9AE7E: FStAdFunc var_AC
  loc_C9AE81: FLdPr var_AC
  loc_C9AE84: LateIdLdVar var_100 DispID_15 0
  loc_C9AE8B: PopAd
  loc_C9AE8D: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, acrepago.CodiEnre, DetaEnre, TocoAcpa, ImpoAcpa, FepaAcpa"
  loc_C9AE90: LitStr " FROM acrepago LEFT JOIN  infogov.entereca ON infogov.entereca.CodiEnre = acrepago.CodiEnre"
  loc_C9AE93: ConcatStr
  loc_C9AE94: FStStrNoPop var_A8
  loc_C9AE97: LitStr " WHERE FeenAcpa BETWEEN '"
  loc_C9AE9A: ConcatStr
  loc_C9AE9B: FStStrNoPop var_C0
  loc_C9AE9E: LitI4 1
  loc_C9AEA3: LitI4 1
  loc_C9AEA8: LitVarStr var_D0, "yyyy-mm-dd"
  loc_C9AEAD: FStVarCopyObj var_E0
  loc_C9AEB0: FLdRfVar var_E0
  loc_C9AEB3: FLdRfVar var_A4
  loc_C9AEB6: CStrVarTmp
  loc_C9AEB7: CVarStr var_BC
  loc_C9AEBA: ImpAdCallI2 Format$(, )
  loc_C9AEBF: FStStrNoPop var_11C
  loc_C9AEC2: ConcatStr
  loc_C9AEC3: FStStrNoPop var_120
  loc_C9AEC6: LitStr "' AND '"
  loc_C9AEC9: ConcatStr
  loc_C9AECA: FStStrNoPop var_134
  loc_C9AECD: LitI4 1
  loc_C9AED2: LitI4 1
  loc_C9AED7: LitVarStr var_F0, "yyyy-mm-dd"
  loc_C9AEDC: FStVarCopyObj var_130
  loc_C9AEDF: FLdRfVar var_130
  loc_C9AEE2: FLdRfVar var_100
  loc_C9AEE5: CStrVarTmp
  loc_C9AEE6: CVarStr var_110
  loc_C9AEE9: ImpAdCallI2 Format$(, )
  loc_C9AEEE: FStStrNoPop var_138
  loc_C9AEF1: ConcatStr
  loc_C9AEF2: FStStrNoPop var_13C
  loc_C9AEF5: LitStr "'"
  loc_C9AEF8: ConcatStr
  loc_C9AEF9: FStStrNoPop var_140
  loc_C9AEFC: ILdRf var_88
  loc_C9AEFF: ConcatStr
  loc_C9AF00: FStStrNoPop var_144
  loc_C9AF03: ILdRf var_8C
  loc_C9AF06: ConcatStr
  loc_C9AF07: FStStrNoPop var_148
  loc_C9AF0A: LitStr " ORDER BY FeenAcpa, acrepago.NumeAcpa"
  loc_C9AF0D: ConcatStr
  loc_C9AF0E: FStStrNoPop var_14C
  loc_C9AF11: FLdPr var_118
  loc_C9AF14: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_C9AF19: FFreeStr var_A8 = "": var_C0 = "": var_11C = "": var_120 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C9AF32: FFreeAd var_94 = ""
  loc_C9AF39: FFreeVar var_A4 = "": var_BC = "": var_E0 = "": var_100 = "": var_110 = ""
  loc_C9AF48: FLdRfVar var_150
  loc_C9AF4B: FLdPr var_118
  loc_C9AF4E: from_stack_1 = clsacrepago.RecordCount
  loc_C9AF53: ILdRf var_150
  loc_C9AF56: LitI4 0
  loc_C9AF5B: EqI4
  loc_C9AF5C: BranchF loc_C9AF6A
  loc_C9AF5F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C9AF62: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9AF67: Branch loc_C9C70D
  loc_C9AF6A: FLdPr Me
  loc_C9AF6D: MemLdRfVar from_stack_1.global_100
  loc_C9AF70: FStR4 var_154
  loc_C9AF73: LitI2_Byte 0
  loc_C9AF75: CStrUI1
  loc_C9AF77: FStStrNoPop var_A8
  loc_C9AF7A: FMemStStrCopy
  loc_C9AF7F: FFree1Str var_A8
  loc_C9AF82: LitI2_Byte 0
  loc_C9AF84: CStrUI1
  loc_C9AF86: FStStrNoPop var_A8
  loc_C9AF89: FMemStStrCopy
  loc_C9AF8E: FFree1Str var_A8
  loc_C9AF91: LitI2_Byte 0
  loc_C9AF93: CStrUI1
  loc_C9AF95: FStStrNoPop var_A8
  loc_C9AF98: FMemStStrCopy
  loc_C9AF9D: FFree1Str var_A8
  loc_C9AFA0: LitI2_Byte 0
  loc_C9AFA2: CStrUI1
  loc_C9AFA4: FStStrNoPop var_A8
  loc_C9AFA7: FMemStStrCopy
  loc_C9AFAC: FFree1Str var_A8
  loc_C9AFAF: LitI2_Byte 0
  loc_C9AFB1: CStrUI1
  loc_C9AFB3: FStStrNoPop var_A8
  loc_C9AFB6: FMemStStrCopy
  loc_C9AFBB: FFree1Str var_A8
  loc_C9AFBE: LitI2_Byte 0
  loc_C9AFC0: CStrUI1
  loc_C9AFC2: FStStrNoPop var_A8
  loc_C9AFC5: FMemStStrCopy
  loc_C9AFCA: FFree1Str var_A8
  loc_C9AFCD: LitI2_Byte 0
  loc_C9AFCF: CStrUI1
  loc_C9AFD1: FStStrNoPop var_A8
  loc_C9AFD4: FMemStStrCopy
  loc_C9AFD9: FFree1Str var_A8
  loc_C9AFDC: LitI4 0
  loc_C9AFE1: FStR4 var_154
  loc_C9AFE4: LitI2_Byte 0
  loc_C9AFE6: FLdPr Me
  loc_C9AFE9: MemStI2 global_132
  loc_C9AFEC: LitI4 0
  loc_C9AFF1: LitI4 1
  loc_C9AFF6: FLdPr Me
  loc_C9AFF9: MemLdRfVar from_stack_1.global_92
  loc_C9AFFC: Redim
  loc_C9B006: Call Proc_81_30_A78DD0()
  loc_C9B00B: FLdRfVar var_112
  loc_C9B00E: FLdPr var_118
  loc_C9B011: from_stack_1 = clsacrepago.EOF
  loc_C9B016: FLdI2 var_112
  loc_C9B019: NotI4
  loc_C9B01A: BranchF loc_C9B058
  loc_C9B01D: FLdRfVar var_A4
  loc_C9B020: FLdPr var_118
  loc_C9B023: from_stack_1 = clsacrepago.FeenAcpa
  loc_C9B028: FLdRfVar var_A4
  loc_C9B02B: FLdPr Me
  loc_C9B02E: MemLdI2 global_132
  loc_C9B031: CI4UI1
  loc_C9B032: FLdPr Me
  loc_C9B035: MemLdStr global_92
  loc_C9B038: Ary1LdPr
  loc_C9B039: MemLdStr global_0
  loc_C9B03C: CVarStr var_D0
  loc_C9B03F: HardType
  loc_C9B040: NeVarBool
  loc_C9B042: FFree1Var var_A4 = ""
  loc_C9B045: BranchF loc_C9B050
  loc_C9B048: Call Proc_81_30_A78DD0()
  loc_C9B04D: Branch loc_C9B055
  loc_C9B050: Call Proc_81_31_AE9E74()
  loc_C9B055: Branch loc_C9B00B
  loc_C9B058: LitI2_Byte 1
  loc_C9B05A: FLdPr Me
  loc_C9B05D: MemLdRfVar from_stack_1.global_132
  loc_C9B060: FLdPr Me
  loc_C9B063: MemLdStr global_92
  loc_C9B066: LitI2_Byte 1
  loc_C9B068: FnUBound
  loc_C9B06A: CI2I4
  loc_C9B06B: ForI2 var_158
  loc_C9B071: LitI2_Byte 1
  loc_C9B073: FLdPr Me
  loc_C9B076: MemLdRfVar from_stack_1.global_134
  loc_C9B079: FLdPr Me
  loc_C9B07C: MemLdI2 global_132
  loc_C9B07F: CI4UI1
  loc_C9B080: FLdPr Me
  loc_C9B083: MemLdStr global_92
  loc_C9B086: Ary1LdPr
  loc_C9B087: MemLdStr global_4
  loc_C9B08A: LitI2_Byte 1
  loc_C9B08C: FnUBound
  loc_C9B08E: CI2I4
  loc_C9B08F: ForI2 var_15C
  loc_C9B095: FLdPr Me
  loc_C9B098: MemLdI2 global_134
  loc_C9B09B: CI4UI1
  loc_C9B09C: FLdPr Me
  loc_C9B09F: MemLdI2 global_132
  loc_C9B0A2: CI4UI1
  loc_C9B0A3: FLdPr Me
  loc_C9B0A6: MemLdStr global_92
  loc_C9B0A9: AryLock
  loc_C9B0AC: Ary1LdPr
  loc_C9B0AD: MemLdStr global_4
  loc_C9B0B0: AryLock
  loc_C9B0B3: Ary1LdRf
  loc_C9B0B4: FStR4 var_168
  loc_C9B0B7: LitStr "Municipalidad de Guaymallén"
  loc_C9B0BA: LitStr "Municipalidad de Guaymallén"
  loc_C9B0BD: EqStr
  loc_C9B0BF: BranchF loc_C9B18E
  loc_C9B0C2: LitStr "SELECT pago.PeriBole, pago.numebole, CASE pago.CodiOfic WHEN 1 THEN if(vpadrones_persona.CUIT is null,'', vpadrones_persona.CUIT) WHEN 3 THEN IF(pago.CuenCtct = '' AND pago.TipoPago = 'OnLine',personaweb.CucuPewe,IFNULL(pers.CucuPers,'')) WHEN 9 THEN IF(pago.CuenCtct = '' AND pago.TipoPago = 'OnLine',IFNULL(personaweb.CucuPewe,''),IFNULL(pers.CucuPers,'')) ELSE pers.CucuPers END CucuPers, "
  loc_C9B0C5: LitStr " CASE pago.CodiOfic WHEN 1 THEN if(vpadrones_persona.denominacion is null,'', vpadrones_persona.denominacion) WHEN 3 THEN IF(pago.CuenCtct = '' AND pago.TipoPago = 'OnLine',personaweb.DetaPewe,IFNULL(pers.DetaPers,'')) WHEN 9 THEN IF(pago.CuenCtct = '' AND pago.TipoPago = 'OnLine',IFNULL(personaweb.DetaPewe,''),IFNULL(pers.DetaPers,'')) ELSE pers.DetaPers END DetaPers,"
  loc_C9B0C8: ConcatStr
  loc_C9B0C9: FStStrNoPop var_A8
  loc_C9B0CC: LitStr " CapiPago, DecaPago+ExenPago as DecaPago, RecaPago, DerePago, IntePago, AprePago, TotaPago"
  loc_C9B0CF: ConcatStr
  loc_C9B0D0: FStStrNoPop var_C0
  loc_C9B0D3: LitStr " FROM pago LEFT JOIN infogov.persona as pers ON pers.CucuPers = pago.CucuPers"
  loc_C9B0D6: ConcatStr
  loc_C9B0D7: FStStrNoPop var_11C
  loc_C9B0DA: LitStr " LEFT JOIN vpadrones_persona ON vpadrones_persona.nro_padron = pago.CuenCtct"
  loc_C9B0DD: ConcatStr
  loc_C9B0DE: FStStrNoPop var_120
  loc_C9B0E1: LitStr " AND principal = 'Si'"
  loc_C9B0E4: ConcatStr
  loc_C9B0E5: FStStrNoPop var_134
  loc_C9B0E8: LitStr " AND estado = 'Activo'"
  loc_C9B0EB: ConcatStr
  loc_C9B0EC: FStStrNoPop var_138
  loc_C9B0EF: LitStr " LEFT JOIN personaweb ON personaweb.PeriInfo = pago.PeriBole AND personaweb.NumeBole = pago.NumeBole"
  loc_C9B0F2: ConcatStr
  loc_C9B0F3: FStStrNoPop var_13C
  loc_C9B0F6: LitStr " WHERE FeenAcpa = '"
  loc_C9B0F9: ConcatStr
  loc_C9B0FA: FStStrNoPop var_144
  loc_C9B0FD: LitI4 1
  loc_C9B102: LitI4 1
  loc_C9B107: LitVarStr var_F0, "yyyy-mm-dd"
  loc_C9B10C: FStVarCopyObj var_A4
  loc_C9B10F: FLdRfVar var_A4
  loc_C9B112: FLdPr Me
  loc_C9B115: MemLdI2 global_132
  loc_C9B118: CI4UI1
  loc_C9B119: FLdPr Me
  loc_C9B11C: MemLdStr global_92
  loc_C9B11F: AryLock
  loc_C9B122: Ary1LdPr
  loc_C9B123: MemLdRfVar from_stack_1.global_0
  loc_C9B126: CVarRef
  loc_C9B12B: ImpAdCallI2 Format$(, )
  loc_C9B130: FStStr var_140
  loc_C9B133: AryUnlock
  loc_C9B136: ILdRf var_140
  loc_C9B139: ConcatStr
  loc_C9B13A: FStStrNoPop var_148
  loc_C9B13D: LitStr "' AND NumeAcpa = "
  loc_C9B140: ConcatStr
  loc_C9B141: FStStrNoPop var_14C
  loc_C9B144: FMemLdR4 var_168(0)
  loc_C9B149: ConcatStr
  loc_C9B14A: FStStrNoPop var_170
  loc_C9B14D: ILdRf var_90
  loc_C9B150: ConcatStr
  loc_C9B151: FStStrNoPop var_174
  loc_C9B154: LitStr " ORDER BY pago.PeriBole, pago.NumeBole, pago.CucuPers"
  loc_C9B157: ConcatStr
  loc_C9B158: FStStrNoPop var_178
  loc_C9B15B: FLdPr Me
  loc_C9B15E: MemLdRfVar from_stack_1.global_80
  loc_C9B161: NewIfNullPr clspago
  loc_C9B164: Call clspago.RedefineRS(from_stack_1v)
  loc_C9B169: FFreeStr var_A8 = "": var_C0 = "": var_11C = "": var_120 = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_14C = "": var_170 = "": var_174 = ""
  loc_C9B188: FFree1Var var_A4 = ""
  loc_C9B18B: Branch loc_C9B221
  loc_C9B18E: LitStr "SELECT PeriBole, NumeBole, pago.CucuPers, DetaPers, CapiPago, DecaPago+ExenPago as DecaPago, RecaPago, DerePago, IntePago, AprePago, TotaPago"
  loc_C9B191: LitStr " FROM pago LEFT JOIN infogov.persona as pers ON pers.CucuPers = pago.CucuPers"
  loc_C9B194: ConcatStr
  loc_C9B195: FStStrNoPop var_A8
  loc_C9B198: LitStr " WHERE FeenAcpa = '"
  loc_C9B19B: ConcatStr
  loc_C9B19C: FStStrNoPop var_11C
  loc_C9B19F: LitI4 1
  loc_C9B1A4: LitI4 1
  loc_C9B1A9: LitVarStr var_F0, "yyyy-mm-dd"
  loc_C9B1AE: FStVarCopyObj var_A4
  loc_C9B1B1: FLdRfVar var_A4
  loc_C9B1B4: FLdPr Me
  loc_C9B1B7: MemLdI2 global_132
  loc_C9B1BA: CI4UI1
  loc_C9B1BB: FLdPr Me
  loc_C9B1BE: MemLdStr global_92
  loc_C9B1C1: AryLock
  loc_C9B1C4: Ary1LdPr
  loc_C9B1C5: MemLdRfVar from_stack_1.global_0
  loc_C9B1C8: CVarRef
  loc_C9B1CD: ImpAdCallI2 Format$(, )
  loc_C9B1D2: FStStr var_C0
  loc_C9B1D5: AryUnlock
  loc_C9B1D8: ILdRf var_C0
  loc_C9B1DB: ConcatStr
  loc_C9B1DC: FStStrNoPop var_120
  loc_C9B1DF: LitStr "' AND NumeAcpa = "
  loc_C9B1E2: ConcatStr
  loc_C9B1E3: FStStrNoPop var_134
  loc_C9B1E6: FMemLdR4 var_168(0)
  loc_C9B1EB: ConcatStr
  loc_C9B1EC: FStStrNoPop var_138
  loc_C9B1EF: ILdRf var_90
  loc_C9B1F2: ConcatStr
  loc_C9B1F3: FStStrNoPop var_13C
  loc_C9B1F6: LitStr " ORDER BY PeriBole, NumeBole, CucuPers"
  loc_C9B1F9: ConcatStr
  loc_C9B1FA: FStStrNoPop var_140
  loc_C9B1FD: FLdPr Me
  loc_C9B200: MemLdRfVar from_stack_1.global_80
  loc_C9B203: NewIfNullPr clspago
  loc_C9B206: Call clspago.RedefineRS(from_stack_1v)
  loc_C9B20B: FFreeStr var_A8 = "": var_11C = "": var_C0 = "": var_120 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C9B21E: FFree1Var var_A4 = ""
  loc_C9B221: FLdRfVar var_150
  loc_C9B224: FLdPr Me
  loc_C9B227: MemLdRfVar from_stack_1.global_80
  loc_C9B22A: NewIfNullPr clspago
  loc_C9B22D: from_stack_1 = clspago.RecordCount
  loc_C9B232: ILdRf var_150
  loc_C9B235: LitI4 0
  loc_C9B23A: GtI4
  loc_C9B23B: BranchF loc_C9BCC0
  loc_C9B23E: LitI4 0
  loc_C9B243: FLdRfVar var_150
  loc_C9B246: FLdPr Me
  loc_C9B249: MemLdRfVar from_stack_1.global_80
  loc_C9B24C: NewIfNullPr clspago
  loc_C9B24F: from_stack_1 = clspago.RecordCount
  loc_C9B254: ILdRf var_150
  loc_C9B257: FMemLdRf 0
  loc_C9B25C: Redim
  loc_C9B266: FMemLdR4 var_168(24)
  loc_C9B26B: LitI2_Byte 1
  loc_C9B26D: FnUBound
  loc_C9B26F: CStrI4
  loc_C9B271: FStStrNoPop var_A8
  loc_C9B274: FMemStStrCopy
  loc_C9B279: FFree1Str var_A8
  loc_C9B27C: LitI2_Byte 1
  loc_C9B27E: FLdPr Me
  loc_C9B281: MemLdRfVar from_stack_1.global_136
  loc_C9B284: FMemLdR4 var_168(24)
  loc_C9B289: LitI2_Byte 1
  loc_C9B28B: FnUBound
  loc_C9B28D: CI2I4
  loc_C9B28E: ForI2 var_17C
  loc_C9B294: FLdPr Me
  loc_C9B297: MemLdI2 global_136
  loc_C9B29A: CI4UI1
  loc_C9B29B: FMemLdR4 var_168(24)
  loc_C9B2A0: AryLock
  loc_C9B2A3: Ary1LdRf
  loc_C9B2A4: FStR4 var_184
  loc_C9B2A7: FLdRfVar var_112
  loc_C9B2AA: FLdPr Me
  loc_C9B2AD: MemLdRfVar from_stack_1.global_80
  loc_C9B2B0: NewIfNullPr clspago
  loc_C9B2B3: from_stack_1 = clspago.PeriBole
  loc_C9B2B8: LitI2_Byte 0
  loc_C9B2BA: LitVar_Missing var_A4
  loc_C9B2BD: LitI2_Byte 0
  loc_C9B2BF: FLdI2 var_112
  loc_C9B2C2: CVarI2 var_D0
  loc_C9B2C5: PopAdLdVar
  loc_C9B2C6: FMemLdRf 0
  loc_C9B2CB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B2D0: FFree1Var var_A4 = ""
  loc_C9B2D3: FLdRfVar var_150
  loc_C9B2D6: FLdPr Me
  loc_C9B2D9: MemLdRfVar from_stack_1.global_80
  loc_C9B2DC: NewIfNullPr clspago
  loc_C9B2DF: from_stack_1 = clspago.NumeBole
  loc_C9B2E4: LitI2_Byte 0
  loc_C9B2E6: LitVar_Missing var_A4
  loc_C9B2E9: LitI2_Byte 0
  loc_C9B2EB: ILdRf var_150
  loc_C9B2EE: CVarI4
  loc_C9B2F2: PopAdLdVar
  loc_C9B2F3: FMemLdRf 0
  loc_C9B2F8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B2FD: FFree1Var var_A4 = ""
  loc_C9B300: FLdRfVar var_A8
  loc_C9B303: FLdPr Me
  loc_C9B306: MemLdRfVar from_stack_1.global_80
  loc_C9B309: NewIfNullPr clspago
  loc_C9B30C: from_stack_1 = clspago.CucuPers
  loc_C9B311: LitI2_Byte 0
  loc_C9B313: LitVar_Missing var_BC
  loc_C9B316: LitI2_Byte 0
  loc_C9B318: FLdZeroAd var_A8
  loc_C9B31B: CVarStr var_A4
  loc_C9B31E: PopAdLdVar
  loc_C9B31F: FMemLdRf 0
  loc_C9B324: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B329: FFreeVar var_A4 = ""
  loc_C9B330: FLdRfVar var_A4
  loc_C9B333: FLdPr Me
  loc_C9B336: MemLdRfVar from_stack_1.global_80
  loc_C9B339: NewIfNullPr clspago
  loc_C9B33C: from_stack_1 = clspago.DetaPers
  loc_C9B341: LitI2_Byte 0
  loc_C9B343: LitVar_Missing var_BC
  loc_C9B346: LitI2_Byte 0
  loc_C9B348: FLdVar var_A4
  loc_C9B34C: FMemLdRf 0
  loc_C9B351: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B356: FFreeVar var_A4 = ""
  loc_C9B35D: FLdRfVar var_18C
  loc_C9B360: FLdPr Me
  loc_C9B363: MemLdRfVar from_stack_1.global_80
  loc_C9B366: NewIfNullPr clspago
  loc_C9B369: from_stack_1 = clspago.CapiPago
  loc_C9B36E: LitI2_Byte 0
  loc_C9B370: FLdPr Me
  loc_C9B373: MemLdI2 global_134
  loc_C9B376: CI4UI1
  loc_C9B377: FLdPr Me
  loc_C9B37A: MemLdI2 global_132
  loc_C9B37D: CI4UI1
  loc_C9B37E: FLdPr Me
  loc_C9B381: MemLdStr global_92
  loc_C9B384: AryLock
  loc_C9B387: Ary1LdPr
  loc_C9B388: MemLdStr global_4
  loc_C9B38B: AryLock
  loc_C9B38E: Ary1LdPr
  loc_C9B38F: MemLdRfVar from_stack_1.global_28
  loc_C9B392: CVarRef
  loc_C9B397: LitI2_Byte &HFF
  loc_C9B399: FLdFPR8 var_18C
  loc_C9B39C: CVarR8
  loc_C9B3A0: PopAdLdVar
  loc_C9B3A1: FMemLdRf 0
  loc_C9B3A6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B3AB: AryUnlock
  loc_C9B3AE: AryUnlock
  loc_C9B3B1: FLdRfVar var_18C
  loc_C9B3B4: FLdPr Me
  loc_C9B3B7: MemLdRfVar from_stack_1.global_80
  loc_C9B3BA: NewIfNullPr clspago
  loc_C9B3BD: from_stack_1 = clspago.DecaPago
  loc_C9B3C2: LitI2_Byte 0
  loc_C9B3C4: FLdPr Me
  loc_C9B3C7: MemLdI2 global_134
  loc_C9B3CA: CI4UI1
  loc_C9B3CB: FLdPr Me
  loc_C9B3CE: MemLdI2 global_132
  loc_C9B3D1: CI4UI1
  loc_C9B3D2: FLdPr Me
  loc_C9B3D5: MemLdStr global_92
  loc_C9B3D8: AryLock
  loc_C9B3DB: Ary1LdPr
  loc_C9B3DC: MemLdStr global_4
  loc_C9B3DF: AryLock
  loc_C9B3E2: Ary1LdPr
  loc_C9B3E3: MemLdRfVar from_stack_1.global_32
  loc_C9B3E6: CVarRef
  loc_C9B3EB: LitI2_Byte &HFF
  loc_C9B3ED: FLdFPR8 var_18C
  loc_C9B3F0: CVarR8
  loc_C9B3F4: PopAdLdVar
  loc_C9B3F5: FMemLdRf 0
  loc_C9B3FA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B3FF: AryUnlock
  loc_C9B402: AryUnlock
  loc_C9B405: FLdRfVar var_18C
  loc_C9B408: FLdPr Me
  loc_C9B40B: MemLdRfVar from_stack_1.global_80
  loc_C9B40E: NewIfNullPr clspago
  loc_C9B411: from_stack_1 = clspago.RecaPago
  loc_C9B416: LitI2_Byte 0
  loc_C9B418: FLdPr Me
  loc_C9B41B: MemLdI2 global_134
  loc_C9B41E: CI4UI1
  loc_C9B41F: FLdPr Me
  loc_C9B422: MemLdI2 global_132
  loc_C9B425: CI4UI1
  loc_C9B426: FLdPr Me
  loc_C9B429: MemLdStr global_92
  loc_C9B42C: AryLock
  loc_C9B42F: Ary1LdPr
  loc_C9B430: MemLdStr global_4
  loc_C9B433: AryLock
  loc_C9B436: Ary1LdPr
  loc_C9B437: MemLdRfVar from_stack_1.global_36
  loc_C9B43A: CVarRef
  loc_C9B43F: LitI2_Byte &HFF
  loc_C9B441: FLdFPR8 var_18C
  loc_C9B444: CVarR8
  loc_C9B448: PopAdLdVar
  loc_C9B449: FMemLdRf 0
  loc_C9B44E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B453: AryUnlock
  loc_C9B456: AryUnlock
  loc_C9B459: FLdRfVar var_18C
  loc_C9B45C: FLdPr Me
  loc_C9B45F: MemLdRfVar from_stack_1.global_80
  loc_C9B462: NewIfNullPr clspago
  loc_C9B465: from_stack_1 = clspago.DerePago
  loc_C9B46A: LitI2_Byte 0
  loc_C9B46C: FLdPr Me
  loc_C9B46F: MemLdI2 global_134
  loc_C9B472: CI4UI1
  loc_C9B473: FLdPr Me
  loc_C9B476: MemLdI2 global_132
  loc_C9B479: CI4UI1
  loc_C9B47A: FLdPr Me
  loc_C9B47D: MemLdStr global_92
  loc_C9B480: AryLock
  loc_C9B483: Ary1LdPr
  loc_C9B484: MemLdStr global_4
  loc_C9B487: AryLock
  loc_C9B48A: Ary1LdPr
  loc_C9B48B: MemLdRfVar from_stack_1.global_40
  loc_C9B48E: CVarRef
  loc_C9B493: LitI2_Byte &HFF
  loc_C9B495: FLdFPR8 var_18C
  loc_C9B498: CVarR8
  loc_C9B49C: PopAdLdVar
  loc_C9B49D: FMemLdRf 0
  loc_C9B4A2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B4A7: AryUnlock
  loc_C9B4AA: AryUnlock
  loc_C9B4AD: FLdRfVar var_18C
  loc_C9B4B0: FLdPr Me
  loc_C9B4B3: MemLdRfVar from_stack_1.global_80
  loc_C9B4B6: NewIfNullPr clspago
  loc_C9B4B9: from_stack_1 = clspago.IntePago
  loc_C9B4BE: LitI2_Byte 0
  loc_C9B4C0: FLdPr Me
  loc_C9B4C3: MemLdI2 global_134
  loc_C9B4C6: CI4UI1
  loc_C9B4C7: FLdPr Me
  loc_C9B4CA: MemLdI2 global_132
  loc_C9B4CD: CI4UI1
  loc_C9B4CE: FLdPr Me
  loc_C9B4D1: MemLdStr global_92
  loc_C9B4D4: AryLock
  loc_C9B4D7: Ary1LdPr
  loc_C9B4D8: MemLdStr global_4
  loc_C9B4DB: AryLock
  loc_C9B4DE: Ary1LdPr
  loc_C9B4DF: MemLdRfVar from_stack_1.global_44
  loc_C9B4E2: CVarRef
  loc_C9B4E7: LitI2_Byte &HFF
  loc_C9B4E9: FLdFPR8 var_18C
  loc_C9B4EC: CVarR8
  loc_C9B4F0: PopAdLdVar
  loc_C9B4F1: FMemLdRf 0
  loc_C9B4F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B4FB: AryUnlock
  loc_C9B4FE: AryUnlock
  loc_C9B501: FLdRfVar var_18C
  loc_C9B504: FLdPr Me
  loc_C9B507: MemLdRfVar from_stack_1.global_80
  loc_C9B50A: NewIfNullPr clspago
  loc_C9B50D: from_stack_1 = clspago.AprePago
  loc_C9B512: LitI2_Byte 0
  loc_C9B514: FLdPr Me
  loc_C9B517: MemLdI2 global_134
  loc_C9B51A: CI4UI1
  loc_C9B51B: FLdPr Me
  loc_C9B51E: MemLdI2 global_132
  loc_C9B521: CI4UI1
  loc_C9B522: FLdPr Me
  loc_C9B525: MemLdStr global_92
  loc_C9B528: AryLock
  loc_C9B52B: Ary1LdPr
  loc_C9B52C: MemLdStr global_4
  loc_C9B52F: AryLock
  loc_C9B532: Ary1LdPr
  loc_C9B533: MemLdRfVar from_stack_1.global_48
  loc_C9B536: CVarRef
  loc_C9B53B: LitI2_Byte &HFF
  loc_C9B53D: FLdFPR8 var_18C
  loc_C9B540: CVarR8
  loc_C9B544: PopAdLdVar
  loc_C9B545: FMemLdRf 0
  loc_C9B54A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B54F: AryUnlock
  loc_C9B552: AryUnlock
  loc_C9B555: FLdRfVar var_18C
  loc_C9B558: FLdPr Me
  loc_C9B55B: MemLdRfVar from_stack_1.global_80
  loc_C9B55E: NewIfNullPr clspago
  loc_C9B561: from_stack_1 = clspago.TotaPago
  loc_C9B566: LitI2_Byte 0
  loc_C9B568: FLdPr Me
  loc_C9B56B: MemLdI2 global_134
  loc_C9B56E: CI4UI1
  loc_C9B56F: FLdPr Me
  loc_C9B572: MemLdI2 global_132
  loc_C9B575: CI4UI1
  loc_C9B576: FLdPr Me
  loc_C9B579: MemLdStr global_92
  loc_C9B57C: AryLock
  loc_C9B57F: Ary1LdPr
  loc_C9B580: MemLdStr global_4
  loc_C9B583: AryLock
  loc_C9B586: Ary1LdPr
  loc_C9B587: MemLdRfVar from_stack_1.bGenerado
  loc_C9B58A: CVarRef
  loc_C9B58F: LitI2_Byte &HFF
  loc_C9B591: FLdFPR8 var_18C
  loc_C9B594: CVarR8
  loc_C9B598: PopAdLdVar
  loc_C9B599: FMemLdRf 0
  loc_C9B59E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B5A3: AryUnlock
  loc_C9B5A6: AryUnlock
  loc_C9B5A9: LitI4 0
  loc_C9B5AE: FStR4 var_184
  loc_C9B5B1: AryUnlock
  loc_C9B5B4: LitI2_Byte 1
  loc_C9B5B6: PopTmpLdAd2 var_112
  loc_C9B5B9: FLdPr Me
  loc_C9B5BC: MemLdRfVar from_stack_1.global_80
  loc_C9B5BF: NewIfNullPr clspago
  loc_C9B5C2: Call clspago.Move(from_stack_1v)
  loc_C9B5C7: FLdPr Me
  loc_C9B5CA: VCallAd Control_ID_AnaliticoOpt
  loc_C9B5CD: CVarAd
  loc_C9B5D1: CBoolVarNull
  loc_C9B5D3: FFree1Var var_A4 = ""
  loc_C9B5D6: BranchF loc_C9BCB2
  loc_C9B5D9: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, CodiConc, CodiFapa, CuotDefa, NumeApre, CapiDepa, DecaDepa+ExenDepa as DecaDepa, RecaDepa, DereDepa, InteDepa, ApreDepa, TotaDepa"
  loc_C9B5DC: LitStr " FROM detapago"
  loc_C9B5DF: ConcatStr
  loc_C9B5E0: FStStrNoPop var_A8
  loc_C9B5E3: LitStr " WHERE FeenAcpa = '"
  loc_C9B5E6: ConcatStr
  loc_C9B5E7: FStStrNoPop var_11C
  loc_C9B5EA: LitI4 1
  loc_C9B5EF: LitI4 1
  loc_C9B5F4: LitVarStr var_F0, "yyyy-mm-dd"
  loc_C9B5F9: FStVarCopyObj var_A4
  loc_C9B5FC: FLdRfVar var_A4
  loc_C9B5FF: FLdPr Me
  loc_C9B602: MemLdI2 global_132
  loc_C9B605: CI4UI1
  loc_C9B606: FLdPr Me
  loc_C9B609: MemLdStr global_92
  loc_C9B60C: AryLock
  loc_C9B60F: Ary1LdPr
  loc_C9B610: MemLdRfVar from_stack_1.global_0
  loc_C9B613: CVarRef
  loc_C9B618: ImpAdCallI2 Format$(, )
  loc_C9B61D: FStStr var_C0
  loc_C9B620: AryUnlock
  loc_C9B623: ILdRf var_C0
  loc_C9B626: ConcatStr
  loc_C9B627: FStStrNoPop var_120
  loc_C9B62A: LitStr "' AND NumeAcpa = "
  loc_C9B62D: ConcatStr
  loc_C9B62E: FStStrNoPop var_134
  loc_C9B631: FLdPr Me
  loc_C9B634: MemLdI2 global_134
  loc_C9B637: CI4UI1
  loc_C9B638: FLdPr Me
  loc_C9B63B: MemLdI2 global_132
  loc_C9B63E: CI4UI1
  loc_C9B63F: FLdPr Me
  loc_C9B642: MemLdStr global_92
  loc_C9B645: Ary1LdPr
  loc_C9B646: MemLdStr global_4
  loc_C9B649: Ary1LdPr
  loc_C9B64A: MemLdStr global_0
  loc_C9B64D: ConcatStr
  loc_C9B64E: FStStrNoPop var_138
  loc_C9B651: LitStr " AND PeriBole = "
  loc_C9B654: ConcatStr
  loc_C9B655: FStStrNoPop var_13C
  loc_C9B658: FLdPr Me
  loc_C9B65B: MemLdI2 global_136
  loc_C9B65E: CI4UI1
  loc_C9B65F: FMemLdR4 var_168(24)
  loc_C9B664: Ary1LdPr
  loc_C9B665: MemLdStr global_0
  loc_C9B668: ConcatStr
  loc_C9B669: FStStrNoPop var_140
  loc_C9B66C: LitStr " AND NumeBole = "
  loc_C9B66F: ConcatStr
  loc_C9B670: FStStrNoPop var_144
  loc_C9B673: FLdPr Me
  loc_C9B676: MemLdI2 global_136
  loc_C9B679: CI4UI1
  loc_C9B67A: FMemLdR4 var_168(24)
  loc_C9B67F: Ary1LdPr
  loc_C9B680: MemLdStr global_4
  loc_C9B683: ConcatStr
  loc_C9B684: FStStrNoPop var_148
  loc_C9B687: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, CodiConc, CodiFapa, CuotDefa, NumeApre"
  loc_C9B68A: ConcatStr
  loc_C9B68B: FStStrNoPop var_14C
  loc_C9B68E: FLdPr Me
  loc_C9B691: MemLdRfVar from_stack_1.global_84
  loc_C9B694: NewIfNullPr clsdetapago
  loc_C9B697: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_C9B69C: FFreeStr var_A8 = "": var_11C = "": var_C0 = "": var_120 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C9B6B5: FFree1Var var_A4 = ""
  loc_C9B6B8: FLdRfVar var_150
  loc_C9B6BB: FLdPr Me
  loc_C9B6BE: MemLdRfVar from_stack_1.global_84
  loc_C9B6C1: NewIfNullPr clsdetapago
  loc_C9B6C4: from_stack_1 = clsdetapago.RecordCount
  loc_C9B6C9: ILdRf var_150
  loc_C9B6CC: LitI4 0
  loc_C9B6D1: GtI4
  loc_C9B6D2: BranchF loc_C9BBDB
  loc_C9B6D5: FLdRfVar var_150
  loc_C9B6D8: FLdPr Me
  loc_C9B6DB: MemLdRfVar from_stack_1.global_84
  loc_C9B6DE: NewIfNullPr clsdetapago
  loc_C9B6E1: from_stack_1 = clsdetapago.RecordCount
  loc_C9B6E6: LitI4 0
  loc_C9B6EB: ILdRf var_150
  loc_C9B6EE: FLdPr Me
  loc_C9B6F1: MemLdI2 global_136
  loc_C9B6F4: CI4UI1
  loc_C9B6F5: FMemLdR4 var_168(24)
  loc_C9B6FA: Ary1LdPr
  loc_C9B6FB: MemLdRfVar from_stack_1.global_44
  loc_C9B6FE: Redim
  loc_C9B708: FLdPr Me
  loc_C9B70B: MemLdI2 global_136
  loc_C9B70E: CI4UI1
  loc_C9B70F: FMemLdR4 var_168(24)
  loc_C9B714: Ary1LdPr
  loc_C9B715: MemLdStr global_44
  loc_C9B718: LitI2_Byte 1
  loc_C9B71A: FnUBound
  loc_C9B71C: CStrI4
  loc_C9B71E: FStStrNoPop var_A8
  loc_C9B721: FLdPr Me
  loc_C9B724: MemLdI2 global_136
  loc_C9B727: CI4UI1
  loc_C9B728: FMemLdR4 var_168(24)
  loc_C9B72D: Ary1LdPr
  loc_C9B72E: MemStStrCopy
  loc_C9B732: FFree1Str var_A8
  loc_C9B735: LitI2_Byte 0
  loc_C9B737: FLdPr Me
  loc_C9B73A: MemLdI2 global_136
  loc_C9B73D: CI4UI1
  loc_C9B73E: FMemLdR4 var_168(24)
  loc_C9B743: AryLock
  loc_C9B746: Ary1LdPr
  loc_C9B747: MemLdRfVar from_stack_1.global_72
  loc_C9B74A: CVarRef
  loc_C9B74F: LitI2_Byte &HFF
  loc_C9B751: FLdPr Me
  loc_C9B754: MemLdI2 global_136
  loc_C9B757: CI4UI1
  loc_C9B758: FMemLdR4 var_168(24)
  loc_C9B75D: Ary1LdPr
  loc_C9B75E: MemLdStr global_36
  loc_C9B761: CVarStr var_D0
  loc_C9B764: PopAdLdVar
  loc_C9B765: FLdPr Me
  loc_C9B768: MemLdI2 global_136
  loc_C9B76B: CI4UI1
  loc_C9B76C: FMemLdR4 var_168(24)
  loc_C9B771: AryLock
  loc_C9B774: Ary1LdPr
  loc_C9B775: MemLdRfVar from_stack_1.global_68
  loc_C9B778: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B77D: AryUnlock
  loc_C9B780: AryUnlock
  loc_C9B783: LitI2_Byte 1
  loc_C9B785: FLdPr Me
  loc_C9B788: MemLdRfVar from_stack_1.global_138
  loc_C9B78B: FLdPr Me
  loc_C9B78E: MemLdI2 global_136
  loc_C9B791: CI4UI1
  loc_C9B792: FMemLdR4 var_168(24)
  loc_C9B797: Ary1LdPr
  loc_C9B798: MemLdStr global_44
  loc_C9B79B: LitI2_Byte 1
  loc_C9B79D: FnUBound
  loc_C9B79F: CI2I4
  loc_C9B7A0: ForI2 var_194
  loc_C9B7A6: FLdPr Me
  loc_C9B7A9: MemLdI2 global_138
  loc_C9B7AC: CI4UI1
  loc_C9B7AD: FLdPr Me
  loc_C9B7B0: MemLdI2 global_136
  loc_C9B7B3: CI4UI1
  loc_C9B7B4: FMemLdR4 var_168(24)
  loc_C9B7B9: AryLock
  loc_C9B7BC: Ary1LdPr
  loc_C9B7BD: MemLdStr global_44
  loc_C9B7C0: AryLock
  loc_C9B7C3: Ary1LdRf
  loc_C9B7C4: FStR4 var_1A0
  loc_C9B7C7: FLdRfVar var_112
  loc_C9B7CA: FLdPr Me
  loc_C9B7CD: MemLdRfVar from_stack_1.global_84
  loc_C9B7D0: NewIfNullPr clsdetapago
  loc_C9B7D3: from_stack_1 = clsdetapago.CodiOfic
  loc_C9B7D8: LitI2_Byte 0
  loc_C9B7DA: LitVar_Missing var_A4
  loc_C9B7DD: LitI2_Byte 0
  loc_C9B7DF: FLdUI1
  loc_C9B7E3: CVarUI1
  loc_C9B7E7: PopAdLdVar
  loc_C9B7E8: FMemLdRf 0
  loc_C9B7ED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B7F2: FFree1Var var_A4 = ""
  loc_C9B7F5: FLdRfVar var_A8
  loc_C9B7F8: FLdPr Me
  loc_C9B7FB: MemLdRfVar from_stack_1.global_84
  loc_C9B7FE: NewIfNullPr clsdetapago
  loc_C9B801: from_stack_1 = clsdetapago.CuenCtct
  loc_C9B806: LitI2_Byte 0
  loc_C9B808: LitVar_Missing var_BC
  loc_C9B80B: LitI2_Byte 0
  loc_C9B80D: FLdZeroAd var_A8
  loc_C9B810: CVarStr var_A4
  loc_C9B813: PopAdLdVar
  loc_C9B814: FMemLdRf 0
  loc_C9B819: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B81E: FFreeVar var_A4 = ""
  loc_C9B825: FLdRfVar var_150
  loc_C9B828: FLdPr Me
  loc_C9B82B: MemLdRfVar from_stack_1.global_84
  loc_C9B82E: NewIfNullPr clsdetapago
  loc_C9B831: from_stack_1 = clsdetapago.PeriCtct
  loc_C9B836: LitI2_Byte 0
  loc_C9B838: LitVar_Missing var_A4
  loc_C9B83B: LitI2_Byte 0
  loc_C9B83D: ILdRf var_150
  loc_C9B840: CVarI4
  loc_C9B844: PopAdLdVar
  loc_C9B845: FMemLdRf 0
  loc_C9B84A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B84F: FFree1Var var_A4 = ""
  loc_C9B852: FLdRfVar var_112
  loc_C9B855: FLdPr Me
  loc_C9B858: MemLdRfVar from_stack_1.global_84
  loc_C9B85B: NewIfNullPr clsdetapago
  loc_C9B85E: from_stack_1 = clsdetapago.BimeCtct
  loc_C9B863: LitI2_Byte 0
  loc_C9B865: LitVar_Missing var_A4
  loc_C9B868: LitI2_Byte 0
  loc_C9B86A: FLdI2 var_112
  loc_C9B86D: CVarI2 var_D0
  loc_C9B870: PopAdLdVar
  loc_C9B871: FMemLdRf 0
  loc_C9B876: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B87B: FFree1Var var_A4 = ""
  loc_C9B87E: FLdRfVar var_A8
  loc_C9B881: FLdPr Me
  loc_C9B884: MemLdRfVar from_stack_1.global_84
  loc_C9B887: NewIfNullPr clsdetapago
  loc_C9B88A: from_stack_1 = clsdetapago.CodiConc
  loc_C9B88F: LitI2_Byte 0
  loc_C9B891: LitVar_Missing var_BC
  loc_C9B894: LitI2_Byte 0
  loc_C9B896: FLdZeroAd var_A8
  loc_C9B899: CVarStr var_A4
  loc_C9B89C: PopAdLdVar
  loc_C9B89D: FMemLdRf 0
  loc_C9B8A2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B8A7: FFreeVar var_A4 = ""
  loc_C9B8AE: FLdRfVar var_150
  loc_C9B8B1: FLdPr Me
  loc_C9B8B4: MemLdRfVar from_stack_1.global_84
  loc_C9B8B7: NewIfNullPr clsdetapago
  loc_C9B8BA: from_stack_1 = clsdetapago.CodiFapa
  loc_C9B8BF: LitI2_Byte 0
  loc_C9B8C1: LitVar_Missing var_A4
  loc_C9B8C4: LitI2_Byte 0
  loc_C9B8C6: ILdRf var_150
  loc_C9B8C9: CVarI4
  loc_C9B8CD: PopAdLdVar
  loc_C9B8CE: FMemLdRf 0
  loc_C9B8D3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B8D8: FFree1Var var_A4 = ""
  loc_C9B8DB: FLdRfVar var_112
  loc_C9B8DE: FLdPr Me
  loc_C9B8E1: MemLdRfVar from_stack_1.global_84
  loc_C9B8E4: NewIfNullPr clsdetapago
  loc_C9B8E7: from_stack_1 = clsdetapago.CuotDefa
  loc_C9B8EC: LitI2_Byte 0
  loc_C9B8EE: LitVar_Missing var_A4
  loc_C9B8F1: LitI2_Byte 0
  loc_C9B8F3: FLdI2 var_112
  loc_C9B8F6: CVarI2 var_D0
  loc_C9B8F9: PopAdLdVar
  loc_C9B8FA: FMemLdRf 0
  loc_C9B8FF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B904: FFree1Var var_A4 = ""
  loc_C9B907: FLdRfVar var_150
  loc_C9B90A: FLdPr Me
  loc_C9B90D: MemLdRfVar from_stack_1.global_84
  loc_C9B910: NewIfNullPr clsdetapago
  loc_C9B913: from_stack_1 = clsdetapago.NumeApre
  loc_C9B918: LitI2_Byte 0
  loc_C9B91A: LitVar_Missing var_A4
  loc_C9B91D: LitI2_Byte 0
  loc_C9B91F: ILdRf var_150
  loc_C9B922: CVarI4
  loc_C9B926: PopAdLdVar
  loc_C9B927: FMemLdRf 0
  loc_C9B92C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B931: FFree1Var var_A4 = ""
  loc_C9B934: FLdRfVar var_18C
  loc_C9B937: FLdPr Me
  loc_C9B93A: MemLdRfVar from_stack_1.global_84
  loc_C9B93D: NewIfNullPr clsdetapago
  loc_C9B940: from_stack_1 = clsdetapago.CapiDepa
  loc_C9B945: LitI2_Byte 0
  loc_C9B947: FLdPr Me
  loc_C9B94A: MemLdI2 global_136
  loc_C9B94D: CI4UI1
  loc_C9B94E: FLdPr Me
  loc_C9B951: MemLdI2 global_134
  loc_C9B954: CI4UI1
  loc_C9B955: FLdPr Me
  loc_C9B958: MemLdI2 global_132
  loc_C9B95B: CI4UI1
  loc_C9B95C: FLdPr Me
  loc_C9B95F: MemLdStr global_92
  loc_C9B962: AryLock
  loc_C9B965: Ary1LdPr
  loc_C9B966: MemLdStr global_4
  loc_C9B969: AryLock
  loc_C9B96C: Ary1LdPr
  loc_C9B96D: MemLdStr global_24
  loc_C9B970: AryLock
  loc_C9B973: Ary1LdPr
  loc_C9B974: MemLdRfVar from_stack_1.global_48
  loc_C9B977: CVarRef
  loc_C9B97C: LitI2_Byte &HFF
  loc_C9B97E: FLdFPR8 var_18C
  loc_C9B981: CVarR8
  loc_C9B985: PopAdLdVar
  loc_C9B986: FMemLdRf 0
  loc_C9B98B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B990: AryUnlock
  loc_C9B993: AryUnlock
  loc_C9B996: AryUnlock
  loc_C9B999: FLdRfVar var_18C
  loc_C9B99C: FLdPr Me
  loc_C9B99F: MemLdRfVar from_stack_1.global_84
  loc_C9B9A2: NewIfNullPr clsdetapago
  loc_C9B9A5: from_stack_1 = clsdetapago.DecaDepa
  loc_C9B9AA: LitI2_Byte 0
  loc_C9B9AC: FLdPr Me
  loc_C9B9AF: MemLdI2 global_136
  loc_C9B9B2: CI4UI1
  loc_C9B9B3: FLdPr Me
  loc_C9B9B6: MemLdI2 global_134
  loc_C9B9B9: CI4UI1
  loc_C9B9BA: FLdPr Me
  loc_C9B9BD: MemLdI2 global_132
  loc_C9B9C0: CI4UI1
  loc_C9B9C1: FLdPr Me
  loc_C9B9C4: MemLdStr global_92
  loc_C9B9C7: AryLock
  loc_C9B9CA: Ary1LdPr
  loc_C9B9CB: MemLdStr global_4
  loc_C9B9CE: AryLock
  loc_C9B9D1: Ary1LdPr
  loc_C9B9D2: MemLdStr global_24
  loc_C9B9D5: AryLock
  loc_C9B9D8: Ary1LdPr
  loc_C9B9D9: MemLdRfVar from_stack_1.bGenerado
  loc_C9B9DC: CVarRef
  loc_C9B9E1: LitI2_Byte &HFF
  loc_C9B9E3: FLdFPR8 var_18C
  loc_C9B9E6: CVarR8
  loc_C9B9EA: PopAdLdVar
  loc_C9B9EB: FMemLdRf 0
  loc_C9B9F0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9B9F5: AryUnlock
  loc_C9B9F8: AryUnlock
  loc_C9B9FB: AryUnlock
  loc_C9B9FE: FLdRfVar var_18C
  loc_C9BA01: FLdPr Me
  loc_C9BA04: MemLdRfVar from_stack_1.global_84
  loc_C9BA07: NewIfNullPr clsdetapago
  loc_C9BA0A: from_stack_1 = clsdetapago.RecaDepa
  loc_C9BA0F: LitI2_Byte 0
  loc_C9BA11: FLdPr Me
  loc_C9BA14: MemLdI2 global_136
  loc_C9BA17: CI4UI1
  loc_C9BA18: FLdPr Me
  loc_C9BA1B: MemLdI2 global_134
  loc_C9BA1E: CI4UI1
  loc_C9BA1F: FLdPr Me
  loc_C9BA22: MemLdI2 global_132
  loc_C9BA25: CI4UI1
  loc_C9BA26: FLdPr Me
  loc_C9BA29: MemLdStr global_92
  loc_C9BA2C: AryLock
  loc_C9BA2F: Ary1LdPr
  loc_C9BA30: MemLdStr global_4
  loc_C9BA33: AryLock
  loc_C9BA36: Ary1LdPr
  loc_C9BA37: MemLdStr global_24
  loc_C9BA3A: AryLock
  loc_C9BA3D: Ary1LdPr
  loc_C9BA3E: MemLdRfVar from_stack_1.global_56
  loc_C9BA41: CVarRef
  loc_C9BA46: LitI2_Byte &HFF
  loc_C9BA48: FLdFPR8 var_18C
  loc_C9BA4B: CVarR8
  loc_C9BA4F: PopAdLdVar
  loc_C9BA50: FMemLdRf 0
  loc_C9BA55: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BA5A: AryUnlock
  loc_C9BA5D: AryUnlock
  loc_C9BA60: AryUnlock
  loc_C9BA63: FLdRfVar var_18C
  loc_C9BA66: FLdPr Me
  loc_C9BA69: MemLdRfVar from_stack_1.global_84
  loc_C9BA6C: NewIfNullPr clsdetapago
  loc_C9BA6F: from_stack_1 = clsdetapago.DereDepa
  loc_C9BA74: LitI2_Byte 0
  loc_C9BA76: FLdPr Me
  loc_C9BA79: MemLdI2 global_136
  loc_C9BA7C: CI4UI1
  loc_C9BA7D: FLdPr Me
  loc_C9BA80: MemLdI2 global_134
  loc_C9BA83: CI4UI1
  loc_C9BA84: FLdPr Me
  loc_C9BA87: MemLdI2 global_132
  loc_C9BA8A: CI4UI1
  loc_C9BA8B: FLdPr Me
  loc_C9BA8E: MemLdStr global_92
  loc_C9BA91: AryLock
  loc_C9BA94: Ary1LdPr
  loc_C9BA95: MemLdStr global_4
  loc_C9BA98: AryLock
  loc_C9BA9B: Ary1LdPr
  loc_C9BA9C: MemLdStr global_24
  loc_C9BA9F: AryLock
  loc_C9BAA2: Ary1LdPr
  loc_C9BAA3: MemLdRfVar from_stack_1.global_60
  loc_C9BAA6: CVarRef
  loc_C9BAAB: LitI2_Byte &HFF
  loc_C9BAAD: FLdFPR8 var_18C
  loc_C9BAB0: CVarR8
  loc_C9BAB4: PopAdLdVar
  loc_C9BAB5: FMemLdRf 0
  loc_C9BABA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BABF: AryUnlock
  loc_C9BAC2: AryUnlock
  loc_C9BAC5: AryUnlock
  loc_C9BAC8: FLdRfVar var_18C
  loc_C9BACB: FLdPr Me
  loc_C9BACE: MemLdRfVar from_stack_1.global_84
  loc_C9BAD1: NewIfNullPr clsdetapago
  loc_C9BAD4: from_stack_1 = clsdetapago.InteDepa
  loc_C9BAD9: LitI2_Byte 0
  loc_C9BADB: FLdPr Me
  loc_C9BADE: MemLdI2 global_136
  loc_C9BAE1: CI4UI1
  loc_C9BAE2: FLdPr Me
  loc_C9BAE5: MemLdI2 global_134
  loc_C9BAE8: CI4UI1
  loc_C9BAE9: FLdPr Me
  loc_C9BAEC: MemLdI2 global_132
  loc_C9BAEF: CI4UI1
  loc_C9BAF0: FLdPr Me
  loc_C9BAF3: MemLdStr global_92
  loc_C9BAF6: AryLock
  loc_C9BAF9: Ary1LdPr
  loc_C9BAFA: MemLdStr global_4
  loc_C9BAFD: AryLock
  loc_C9BB00: Ary1LdPr
  loc_C9BB01: MemLdStr global_24
  loc_C9BB04: AryLock
  loc_C9BB07: Ary1LdPr
  loc_C9BB08: MemLdRfVar from_stack_1.global_64
  loc_C9BB0B: CVarRef
  loc_C9BB10: LitI2_Byte &HFF
  loc_C9BB12: FLdFPR8 var_18C
  loc_C9BB15: CVarR8
  loc_C9BB19: PopAdLdVar
  loc_C9BB1A: FMemLdRf 0
  loc_C9BB1F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BB24: AryUnlock
  loc_C9BB27: AryUnlock
  loc_C9BB2A: AryUnlock
  loc_C9BB2D: LitI2_Byte 0
  loc_C9BB2F: LitVar_Missing var_A4
  loc_C9BB32: LitI2_Byte 0
  loc_C9BB34: LitVarStr var_D0, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C9BB39: PopAdLdVar
  loc_C9BB3A: FMemLdRf 0
  loc_C9BB3F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BB44: FFree1Var var_A4 = ""
  loc_C9BB47: FLdRfVar var_18C
  loc_C9BB4A: FLdPr Me
  loc_C9BB4D: MemLdRfVar from_stack_1.global_84
  loc_C9BB50: NewIfNullPr clsdetapago
  loc_C9BB53: from_stack_1 = clsdetapago.TotaDepa
  loc_C9BB58: LitI2_Byte 0
  loc_C9BB5A: FLdPr Me
  loc_C9BB5D: MemLdI2 global_136
  loc_C9BB60: CI4UI1
  loc_C9BB61: FLdPr Me
  loc_C9BB64: MemLdI2 global_134
  loc_C9BB67: CI4UI1
  loc_C9BB68: FLdPr Me
  loc_C9BB6B: MemLdI2 global_132
  loc_C9BB6E: CI4UI1
  loc_C9BB6F: FLdPr Me
  loc_C9BB72: MemLdStr global_92
  loc_C9BB75: AryLock
  loc_C9BB78: Ary1LdPr
  loc_C9BB79: MemLdStr global_4
  loc_C9BB7C: AryLock
  loc_C9BB7F: Ary1LdPr
  loc_C9BB80: MemLdStr global_24
  loc_C9BB83: AryLock
  loc_C9BB86: Ary1LdPr
  loc_C9BB87: MemLdRfVar from_stack_1.global_72
  loc_C9BB8A: CVarRef
  loc_C9BB8F: LitI2_Byte &HFF
  loc_C9BB91: FLdFPR8 var_18C
  loc_C9BB94: CVarR8
  loc_C9BB98: PopAdLdVar
  loc_C9BB99: FMemLdRf 0
  loc_C9BB9E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BBA3: AryUnlock
  loc_C9BBA6: AryUnlock
  loc_C9BBA9: AryUnlock
  loc_C9BBAC: LitI4 0
  loc_C9BBB1: FStR4 var_1A0
  loc_C9BBB4: AryUnlock
  loc_C9BBB7: AryUnlock
  loc_C9BBBA: LitI2_Byte 1
  loc_C9BBBC: PopTmpLdAd2 var_112
  loc_C9BBBF: FLdPr Me
  loc_C9BBC2: MemLdRfVar from_stack_1.global_84
  loc_C9BBC5: NewIfNullPr clsdetapago
  loc_C9BBC8: Call clsdetapago.Move(from_stack_1v)
  loc_C9BBCD: FLdPr Me
  loc_C9BBD0: MemLdRfVar from_stack_1.global_138
  loc_C9BBD3: NextI2 var_194, loc_C9B7A6
  loc_C9BBD8: Branch loc_C9BCB2
  loc_C9BBDB: LitStr "No se registra detalle de pago para los datos:"
  loc_C9BBDE: LitStr vbCrLf
  loc_C9BBE1: ConcatStr
  loc_C9BBE2: FStStrNoPop var_A8
  loc_C9BBE5: LitStr "Fecha: "
  loc_C9BBE8: ConcatStr
  loc_C9BBE9: FStStrNoPop var_C0
  loc_C9BBEC: FLdPr Me
  loc_C9BBEF: MemLdI2 global_132
  loc_C9BBF2: CI4UI1
  loc_C9BBF3: FLdPr Me
  loc_C9BBF6: MemLdStr global_92
  loc_C9BBF9: Ary1LdPr
  loc_C9BBFA: MemLdStr global_0
  loc_C9BBFD: ConcatStr
  loc_C9BBFE: FStStrNoPop var_11C
  loc_C9BC01: LitStr ". Grupo: "
  loc_C9BC04: ConcatStr
  loc_C9BC05: FStStrNoPop var_120
  loc_C9BC08: FLdPr Me
  loc_C9BC0B: MemLdI2 global_134
  loc_C9BC0E: CI4UI1
  loc_C9BC0F: FLdPr Me
  loc_C9BC12: MemLdI2 global_132
  loc_C9BC15: CI4UI1
  loc_C9BC16: FLdPr Me
  loc_C9BC19: MemLdStr global_92
  loc_C9BC1C: Ary1LdPr
  loc_C9BC1D: MemLdStr global_4
  loc_C9BC20: Ary1LdPr
  loc_C9BC21: MemLdStr global_0
  loc_C9BC24: ConcatStr
  loc_C9BC25: FStStrNoPop var_134
  loc_C9BC28: LitStr ". Periodo: "
  loc_C9BC2B: ConcatStr
  loc_C9BC2C: FStStrNoPop var_138
  loc_C9BC2F: FLdPr Me
  loc_C9BC32: MemLdI2 global_136
  loc_C9BC35: CI4UI1
  loc_C9BC36: FLdPr Me
  loc_C9BC39: MemLdI2 global_134
  loc_C9BC3C: CI4UI1
  loc_C9BC3D: FLdPr Me
  loc_C9BC40: MemLdI2 global_132
  loc_C9BC43: CI4UI1
  loc_C9BC44: FLdPr Me
  loc_C9BC47: MemLdStr global_92
  loc_C9BC4A: Ary1LdPr
  loc_C9BC4B: MemLdStr global_4
  loc_C9BC4E: Ary1LdPr
  loc_C9BC4F: MemLdStr global_24
  loc_C9BC52: Ary1LdPr
  loc_C9BC53: MemLdStr global_0
  loc_C9BC56: ConcatStr
  loc_C9BC57: FStStrNoPop var_13C
  loc_C9BC5A: LitStr ". Boleto: "
  loc_C9BC5D: ConcatStr
  loc_C9BC5E: FStStrNoPop var_140
  loc_C9BC61: FLdPr Me
  loc_C9BC64: MemLdI2 global_136
  loc_C9BC67: CI4UI1
  loc_C9BC68: FLdPr Me
  loc_C9BC6B: MemLdI2 global_134
  loc_C9BC6E: CI4UI1
  loc_C9BC6F: FLdPr Me
  loc_C9BC72: MemLdI2 global_132
  loc_C9BC75: CI4UI1
  loc_C9BC76: FLdPr Me
  loc_C9BC79: MemLdStr global_92
  loc_C9BC7C: Ary1LdPr
  loc_C9BC7D: MemLdStr global_4
  loc_C9BC80: Ary1LdPr
  loc_C9BC81: MemLdStr global_24
  loc_C9BC84: Ary1LdPr
  loc_C9BC85: MemLdStr global_4
  loc_C9BC88: ConcatStr
  loc_C9BC89: FStStrNoPop var_144
  loc_C9BC8C: LitStr "."
  loc_C9BC8F: ConcatStr
  loc_C9BC90: FStStrNoPop var_148
  loc_C9BC93: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9BC98: FFreeStr var_A8 = "": var_C0 = "": var_11C = "": var_120 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_C9BCAF: Branch loc_C9C70D
  loc_C9BCB2: FLdPr Me
  loc_C9BCB5: MemLdRfVar from_stack_1.global_136
  loc_C9BCB8: NextI2 var_17C, loc_C9B294
  loc_C9BCBD: Branch loc_C9BD02
  loc_C9BCC0: LitStr "No se registran pagos para la fecha: "
  loc_C9BCC3: FLdPr Me
  loc_C9BCC6: MemLdI2 global_132
  loc_C9BCC9: CI4UI1
  loc_C9BCCA: FLdPr Me
  loc_C9BCCD: MemLdStr global_92
  loc_C9BCD0: Ary1LdPr
  loc_C9BCD1: MemLdStr global_0
  loc_C9BCD4: ConcatStr
  loc_C9BCD5: FStStrNoPop var_A8
  loc_C9BCD8: LitStr ", grupo: "
  loc_C9BCDB: ConcatStr
  loc_C9BCDC: FStStrNoPop var_C0
  loc_C9BCDF: FMemLdR4 var_168(0)
  loc_C9BCE4: ConcatStr
  loc_C9BCE5: FStStrNoPop var_11C
  loc_C9BCE8: LitStr ". Verifique los datos."
  loc_C9BCEB: ConcatStr
  loc_C9BCEC: FStStrNoPop var_120
  loc_C9BCEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9BCF4: FFreeStr var_A8 = "": var_C0 = "": var_11C = ""
  loc_C9BCFF: Branch loc_C9C70D
  loc_C9BD02: LitI4 0
  loc_C9BD07: FStR4 var_168
  loc_C9BD0A: AryUnlock
  loc_C9BD0D: AryUnlock
  loc_C9BD10: FLdPr Me
  loc_C9BD13: MemLdRfVar from_stack_1.global_134
  loc_C9BD16: NextI2 var_15C, loc_C9B095
  loc_C9BD1B: FLdPr Me
  loc_C9BD1E: MemLdRfVar from_stack_1.global_132
  loc_C9BD21: NextI2 var_158, loc_C9B071
  loc_C9BD26: LitNothing
  loc_C9BD28: FStAd var_118 
  loc_C9BD2C: LitI2_Byte 1
  loc_C9BD2E: FLdPr Me
  loc_C9BD31: MemLdRfVar from_stack_1.global_132
  loc_C9BD34: FLdPr Me
  loc_C9BD37: MemLdStr global_92
  loc_C9BD3A: LitI2_Byte 1
  loc_C9BD3C: FnUBound
  loc_C9BD3E: CI2I4
  loc_C9BD3F: ForI2 var_1A8
  loc_C9BD45: LitI2_Byte 1
  loc_C9BD47: FLdPr Me
  loc_C9BD4A: MemLdRfVar from_stack_1.global_134
  loc_C9BD4D: FLdPr Me
  loc_C9BD50: MemLdI2 global_132
  loc_C9BD53: CI4UI1
  loc_C9BD54: FLdPr Me
  loc_C9BD57: MemLdStr global_92
  loc_C9BD5A: Ary1LdPr
  loc_C9BD5B: MemLdStr global_4
  loc_C9BD5E: LitI2_Byte 1
  loc_C9BD60: FnUBound
  loc_C9BD62: CI2I4
  loc_C9BD63: ForI2 var_1AC
  loc_C9BD69: FLdPr Me
  loc_C9BD6C: MemLdI2 global_134
  loc_C9BD6F: CI4UI1
  loc_C9BD70: FLdPr Me
  loc_C9BD73: MemLdI2 global_132
  loc_C9BD76: CI4UI1
  loc_C9BD77: FLdPr Me
  loc_C9BD7A: MemLdStr global_92
  loc_C9BD7D: AryLock
  loc_C9BD80: Ary1LdPr
  loc_C9BD81: MemLdStr global_4
  loc_C9BD84: AryLock
  loc_C9BD87: Ary1LdRf
  loc_C9BD88: FStR4 var_1B8
  loc_C9BD8B: FMemLdR4 var_1B8(16)
  loc_C9BD90: FMemLdR4 var_1B8(52)
  loc_C9BD95: NeStr
  loc_C9BD97: BranchF loc_C9BDE5
  loc_C9BD9A: LitI2_Byte &HFF
  loc_C9BD9C: FMemStI2 var_1B8(56)
  loc_C9BDA1: LitI2_Byte 0
  loc_C9BDA3: LitVar_Missing var_A4
  loc_C9BDA6: LitI2_Byte &HFF
  loc_C9BDA8: FMemLdR4 var_1B8(16)
  loc_C9BDAD: CR8Str
  loc_C9BDAF: FMemLdR4 var_1B8(52)
  loc_C9BDB4: CR8Str
  loc_C9BDB6: SubR4
  loc_C9BDB7: CVarR8
  loc_C9BDBB: PopAdLdVar
  loc_C9BDBC: FMemLdRf 0
  loc_C9BDC1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BDC6: FFree1Var var_A4 = ""
  loc_C9BDC9: FMemLdR4 var_1B8(12)
  loc_C9BDCE: CR8Str
  loc_C9BDD0: FMemLdR4 var_1B8(68)
  loc_C9BDD5: CR8Str
  loc_C9BDD7: SubR4
  loc_C9BDD8: CStrR8
  loc_C9BDDA: FStStrNoPop var_A8
  loc_C9BDDD: FMemStStrCopy
  loc_C9BDE2: FFree1Str var_A8
  loc_C9BDE5: LitI2_Byte 0
  loc_C9BDE7: FLdPr Me
  loc_C9BDEA: MemLdI2 global_132
  loc_C9BDED: CI4UI1
  loc_C9BDEE: FLdPr Me
  loc_C9BDF1: MemLdStr global_92
  loc_C9BDF4: AryLock
  loc_C9BDF7: Ary1LdPr
  loc_C9BDF8: MemLdRfVar from_stack_1.global_8
  loc_C9BDFB: CVarRef
  loc_C9BE00: LitI2_Byte &HFF
  loc_C9BE02: FMemLdR4 var_1B8(28)
  loc_C9BE07: CVarStr var_D0
  loc_C9BE0A: PopAdLdVar
  loc_C9BE0B: FLdPr Me
  loc_C9BE0E: MemLdRfVar from_stack_1.global_144
  loc_C9BE11: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BE16: AryUnlock
  loc_C9BE19: LitI2_Byte 0
  loc_C9BE1B: FLdPr Me
  loc_C9BE1E: MemLdI2 global_132
  loc_C9BE21: CI4UI1
  loc_C9BE22: FLdPr Me
  loc_C9BE25: MemLdStr global_92
  loc_C9BE28: AryLock
  loc_C9BE2B: Ary1LdPr
  loc_C9BE2C: MemLdRfVar from_stack_1.global_12
  loc_C9BE2F: CVarRef
  loc_C9BE34: LitI2_Byte &HFF
  loc_C9BE36: FMemLdR4 var_1B8(32)
  loc_C9BE3B: CVarStr var_D0
  loc_C9BE3E: PopAdLdVar
  loc_C9BE3F: FLdPr Me
  loc_C9BE42: MemLdRfVar from_stack_1.global_144
  loc_C9BE45: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BE4A: AryUnlock
  loc_C9BE4D: LitI2_Byte 0
  loc_C9BE4F: FLdPr Me
  loc_C9BE52: MemLdI2 global_132
  loc_C9BE55: CI4UI1
  loc_C9BE56: FLdPr Me
  loc_C9BE59: MemLdStr global_92
  loc_C9BE5C: AryLock
  loc_C9BE5F: Ary1LdPr
  loc_C9BE60: MemLdRfVar from_stack_1.global_16
  loc_C9BE63: CVarRef
  loc_C9BE68: LitI2_Byte &HFF
  loc_C9BE6A: FMemLdR4 var_1B8(36)
  loc_C9BE6F: CVarStr var_D0
  loc_C9BE72: PopAdLdVar
  loc_C9BE73: FLdPr Me
  loc_C9BE76: MemLdRfVar from_stack_1.global_144
  loc_C9BE79: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BE7E: AryUnlock
  loc_C9BE81: LitI2_Byte 0
  loc_C9BE83: FLdPr Me
  loc_C9BE86: MemLdI2 global_132
  loc_C9BE89: CI4UI1
  loc_C9BE8A: FLdPr Me
  loc_C9BE8D: MemLdStr global_92
  loc_C9BE90: AryLock
  loc_C9BE93: Ary1LdPr
  loc_C9BE94: MemLdRfVar from_stack_1.global_20
  loc_C9BE97: CVarRef
  loc_C9BE9C: LitI2_Byte &HFF
  loc_C9BE9E: FMemLdR4 var_1B8(40)
  loc_C9BEA3: CVarStr var_D0
  loc_C9BEA6: PopAdLdVar
  loc_C9BEA7: FLdPr Me
  loc_C9BEAA: MemLdRfVar from_stack_1.global_144
  loc_C9BEAD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BEB2: AryUnlock
  loc_C9BEB5: LitI2_Byte 0
  loc_C9BEB7: FLdPr Me
  loc_C9BEBA: MemLdI2 global_132
  loc_C9BEBD: CI4UI1
  loc_C9BEBE: FLdPr Me
  loc_C9BEC1: MemLdStr global_92
  loc_C9BEC4: AryLock
  loc_C9BEC7: Ary1LdPr
  loc_C9BEC8: MemLdRfVar from_stack_1.global_24
  loc_C9BECB: CVarRef
  loc_C9BED0: LitI2_Byte &HFF
  loc_C9BED2: FMemLdR4 var_1B8(44)
  loc_C9BED7: CVarStr var_D0
  loc_C9BEDA: PopAdLdVar
  loc_C9BEDB: FLdPr Me
  loc_C9BEDE: MemLdRfVar from_stack_1.global_144
  loc_C9BEE1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BEE6: AryUnlock
  loc_C9BEE9: LitI2_Byte 0
  loc_C9BEEB: FLdPr Me
  loc_C9BEEE: MemLdI2 global_132
  loc_C9BEF1: CI4UI1
  loc_C9BEF2: FLdPr Me
  loc_C9BEF5: MemLdStr global_92
  loc_C9BEF8: AryLock
  loc_C9BEFB: Ary1LdPr
  loc_C9BEFC: MemLdRfVar from_stack_1.global_28
  loc_C9BEFF: CVarRef
  loc_C9BF04: LitI2_Byte &HFF
  loc_C9BF06: FMemLdR4 var_1B8(48)
  loc_C9BF0B: CVarStr var_D0
  loc_C9BF0E: PopAdLdVar
  loc_C9BF0F: FLdPr Me
  loc_C9BF12: MemLdRfVar from_stack_1.global_144
  loc_C9BF15: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BF1A: AryUnlock
  loc_C9BF1D: LitI2_Byte 0
  loc_C9BF1F: FLdPr Me
  loc_C9BF22: MemLdI2 global_132
  loc_C9BF25: CI4UI1
  loc_C9BF26: FLdPr Me
  loc_C9BF29: MemLdStr global_92
  loc_C9BF2C: AryLock
  loc_C9BF2F: Ary1LdPr
  loc_C9BF30: MemLdRfVar from_stack_1.global_32
  loc_C9BF33: CVarRef
  loc_C9BF38: LitI2_Byte &HFF
  loc_C9BF3A: FMemLdR4 var_1B8(52)
  loc_C9BF3F: CVarStr var_D0
  loc_C9BF42: PopAdLdVar
  loc_C9BF43: FLdPr Me
  loc_C9BF46: MemLdRfVar from_stack_1.global_144
  loc_C9BF49: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9BF4E: AryUnlock
  loc_C9BF51: LitI4 0
  loc_C9BF56: FStR4 var_1B8
  loc_C9BF59: AryUnlock
  loc_C9BF5C: AryUnlock
  loc_C9BF5F: FLdPr Me
  loc_C9BF62: VCallAd Control_ID_AnaliticoOpt
  loc_C9BF65: CVarAd
  loc_C9BF69: CBoolVarNull
  loc_C9BF6B: FFree1Var var_A4 = ""
  loc_C9BF6E: BranchF loc_C9C00B
  loc_C9BF71: LitI2_Byte 1
  loc_C9BF73: FLdPr Me
  loc_C9BF76: MemLdRfVar from_stack_1.global_136
  loc_C9BF79: FLdPr Me
  loc_C9BF7C: MemLdI2 global_134
  loc_C9BF7F: CI4UI1
  loc_C9BF80: FLdPr Me
  loc_C9BF83: MemLdI2 global_132
  loc_C9BF86: CI4UI1
  loc_C9BF87: FLdPr Me
  loc_C9BF8A: MemLdStr global_92
  loc_C9BF8D: Ary1LdPr
  loc_C9BF8E: MemLdStr global_4
  loc_C9BF91: Ary1LdPr
  loc_C9BF92: MemLdStr global_24
  loc_C9BF95: LitI2_Byte 1
  loc_C9BF97: FnUBound
  loc_C9BF99: CI2I4
  loc_C9BF9A: ForI2 var_1BC
  loc_C9BFA0: FLdPr Me
  loc_C9BFA3: MemLdI2 global_136
  loc_C9BFA6: CI4UI1
  loc_C9BFA7: FLdPr Me
  loc_C9BFAA: MemLdI2 global_134
  loc_C9BFAD: CI4UI1
  loc_C9BFAE: FLdPr Me
  loc_C9BFB1: MemLdI2 global_132
  loc_C9BFB4: CI4UI1
  loc_C9BFB5: FLdPr Me
  loc_C9BFB8: MemLdStr global_92
  loc_C9BFBB: AryLock
  loc_C9BFBE: Ary1LdPr
  loc_C9BFBF: MemLdStr global_4
  loc_C9BFC2: AryLock
  loc_C9BFC5: Ary1LdPr
  loc_C9BFC6: MemLdStr global_24
  loc_C9BFC9: AryLock
  loc_C9BFCC: Ary1LdRf
  loc_C9BFCD: FStR4 var_1CC
  loc_C9BFD0: FLdRfVar var_112
  loc_C9BFD3: FMemLdRf 0
  loc_C9BFD8: FMemLdRf 0
  loc_C9BFDD: FMemLdRf 0
  loc_C9BFE2: Call Proc_81_32_AEFB58()
  loc_C9BFE7: FLdI2 var_112
  loc_C9BFEA: FMemStI2 var_1CC(76)
  loc_C9BFEF: LitI4 0
  loc_C9BFF4: FStR4 var_1CC
  loc_C9BFF7: AryUnlock
  loc_C9BFFA: AryUnlock
  loc_C9BFFD: AryUnlock
  loc_C9C000: FLdPr Me
  loc_C9C003: MemLdRfVar from_stack_1.global_136
  loc_C9C006: NextI2 var_1BC, loc_C9BFA0
  loc_C9C00B: FLdPr Me
  loc_C9C00E: MemLdRfVar from_stack_1.global_134
  loc_C9C011: NextI2 var_1AC, loc_C9BD69
  loc_C9C016: FLdPr Me
  loc_C9C019: MemLdI2 global_132
  loc_C9C01C: CI4UI1
  loc_C9C01D: FLdPr Me
  loc_C9C020: MemLdStr global_92
  loc_C9C023: AryLock
  loc_C9C026: Ary1LdRf
  loc_C9C027: FStR4 var_1D4
  loc_C9C02A: LitI2_Byte 0
  loc_C9C02C: FLdPr Me
  loc_C9C02F: MemLdRfVar from_stack_1.global_100
  loc_C9C032: CVarRef
  loc_C9C037: LitI2_Byte &HFF
  loc_C9C039: FMemLdR4 var_1D4(8)
  loc_C9C03E: CVarStr var_D0
  loc_C9C041: PopAdLdVar
  loc_C9C042: FLdPr Me
  loc_C9C045: MemLdRfVar from_stack_1.global_144
  loc_C9C048: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C04D: LitI2_Byte 0
  loc_C9C04F: FLdPr Me
  loc_C9C052: MemLdRfVar from_stack_1.global_104
  loc_C9C055: CVarRef
  loc_C9C05A: LitI2_Byte &HFF
  loc_C9C05C: FMemLdR4 var_1D4(12)
  loc_C9C061: CVarStr var_D0
  loc_C9C064: PopAdLdVar
  loc_C9C065: FLdPr Me
  loc_C9C068: MemLdRfVar from_stack_1.global_144
  loc_C9C06B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C070: LitI2_Byte 0
  loc_C9C072: FLdPr Me
  loc_C9C075: MemLdRfVar from_stack_1.global_108
  loc_C9C078: CVarRef
  loc_C9C07D: LitI2_Byte &HFF
  loc_C9C07F: FMemLdR4 var_1D4(16)
  loc_C9C084: CVarStr var_D0
  loc_C9C087: PopAdLdVar
  loc_C9C088: FLdPr Me
  loc_C9C08B: MemLdRfVar from_stack_1.global_144
  loc_C9C08E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C093: LitI2_Byte 0
  loc_C9C095: FLdPr Me
  loc_C9C098: MemLdRfVar from_stack_1.global_112
  loc_C9C09B: CVarRef
  loc_C9C0A0: LitI2_Byte &HFF
  loc_C9C0A2: FMemLdR4 var_1D4(20)
  loc_C9C0A7: CVarStr var_D0
  loc_C9C0AA: PopAdLdVar
  loc_C9C0AB: FLdPr Me
  loc_C9C0AE: MemLdRfVar from_stack_1.global_144
  loc_C9C0B1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C0B6: LitI2_Byte 0
  loc_C9C0B8: FLdPr Me
  loc_C9C0BB: MemLdRfVar from_stack_1.global_116
  loc_C9C0BE: CVarRef
  loc_C9C0C3: LitI2_Byte &HFF
  loc_C9C0C5: FMemLdR4 var_1D4(24)
  loc_C9C0CA: CVarStr var_D0
  loc_C9C0CD: PopAdLdVar
  loc_C9C0CE: FLdPr Me
  loc_C9C0D1: MemLdRfVar from_stack_1.global_144
  loc_C9C0D4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C0D9: LitI2_Byte 0
  loc_C9C0DB: FLdPr Me
  loc_C9C0DE: MemLdRfVar from_stack_1.global_120
  loc_C9C0E1: CVarRef
  loc_C9C0E6: LitI2_Byte &HFF
  loc_C9C0E8: FMemLdR4 var_1D4(28)
  loc_C9C0ED: CVarStr var_D0
  loc_C9C0F0: PopAdLdVar
  loc_C9C0F1: FLdPr Me
  loc_C9C0F4: MemLdRfVar from_stack_1.global_144
  loc_C9C0F7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C0FC: LitI2_Byte 0
  loc_C9C0FE: FLdPr Me
  loc_C9C101: MemLdRfVar from_stack_1.global_124
  loc_C9C104: CVarRef
  loc_C9C109: LitI2_Byte &HFF
  loc_C9C10B: FMemLdR4 var_1D4(32)
  loc_C9C110: CVarStr var_D0
  loc_C9C113: PopAdLdVar
  loc_C9C114: FLdPr Me
  loc_C9C117: MemLdRfVar from_stack_1.global_144
  loc_C9C11A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C11F: LitI4 0
  loc_C9C124: FStR4 var_1D4
  loc_C9C127: AryUnlock
  loc_C9C12A: FLdPr Me
  loc_C9C12D: MemLdRfVar from_stack_1.global_132
  loc_C9C130: NextI2 var_1A8, loc_C9BD45
  loc_C9C135: FLdRfVar var_112
  loc_C9C138: FLdPr Me
  loc_C9C13B: VCallAd Control_ID_SinteticoOpt
  loc_C9C13E: FStAdFunc var_94
  loc_C9C141: FLdPr var_94
  loc_C9C144:  = Me.Value
  loc_C9C149: FLdI2 var_112
  loc_C9C14C: FFree1Ad var_94
  loc_C9C14F: BranchF loc_C9C705
  loc_C9C152: FLdPr Me
  loc_C9C155: MemLdRfVar from_stack_1.global_88
  loc_C9C158: NewIfNullAd
  loc_C9C15B: FStAd var_1D8 
  loc_C9C15F: FLdPr Me
  loc_C9C162: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C9C165: FStAdFunc var_94
  loc_C9C168: FLdPr var_94
  loc_C9C16B: LateIdLdVar var_A4 DispID_15 0
  loc_C9C172: PopAd
  loc_C9C174: FLdPr Me
  loc_C9C177: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C9C17A: FStAdFunc var_AC
  loc_C9C17D: FLdPr var_AC
  loc_C9C180: LateIdLdVar var_1F8 DispID_15 0
  loc_C9C187: PopAd
  loc_C9C189: LitStr "SELECT PeriBole, NumeBole, boleto.CucuPers, IFNULL(DetaPers,'') DetaPers, CapiBole, DecaBole, RecaBole, DereBole, InteBole, ApreBole, TotaBole, EstaBole, boleto.AnulUsua, FeanBole, MoanBole"
  loc_C9C18C: LitStr " FROM boleto"
  loc_C9C18F: ConcatStr
  loc_C9C190: FStStrNoPop var_A8
  loc_C9C193: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C9C196: ConcatStr
  loc_C9C197: FStStrNoPop var_C0
  loc_C9C19A: LitStr " WHERE FeanBole BETWEEN "
  loc_C9C19D: ConcatStr
  loc_C9C19E: CVarStr var_110
  loc_C9C1A1: LitI4 1
  loc_C9C1A6: LitI4 1
  loc_C9C1AB: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_C9C1B0: FStVarCopyObj var_E0
  loc_C9C1B3: FLdRfVar var_E0
  loc_C9C1B6: FLdRfVar var_A4
  loc_C9C1B9: CStrVarTmp
  loc_C9C1BA: CVarStr var_BC
  loc_C9C1BD: FLdRfVar var_100
  loc_C9C1C0: ImpAdCallFPR4  = Format(, )
  loc_C9C1C5: FLdRfVar var_100
  loc_C9C1C8: ConcatVar var_130
  loc_C9C1CC: LitVarStr var_F0, " AND "
  loc_C9C1D1: ConcatVar var_1E8
  loc_C9C1D5: LitI4 1
  loc_C9C1DA: LitI4 1
  loc_C9C1DF: LitVarStr var_218, "'yyyy-mm-dd'"
  loc_C9C1E4: FStVarCopyObj var_228
  loc_C9C1E7: FLdRfVar var_228
  loc_C9C1EA: FLdRfVar var_1F8
  loc_C9C1ED: CStrVarTmp
  loc_C9C1EE: CVarStr var_208
  loc_C9C1F1: FLdRfVar var_238
  loc_C9C1F4: ImpAdCallFPR4  = Format(, )
  loc_C9C1F9: FLdRfVar var_238
  loc_C9C1FC: ConcatVar var_248
  loc_C9C200: LitVarStr var_258, " AND (boleto.CodiEnre = "
  loc_C9C205: ConcatVar var_268
  loc_C9C209: FLdPr Me
  loc_C9C20C: MemLdI2 global_148
  loc_C9C20F: CVarI2 var_278
  loc_C9C212: ConcatVar var_288
  loc_C9C216: LitVarStr var_298, " OR boleto.CodiEnre = 0)"
  loc_C9C21B: ConcatVar var_2A8
  loc_C9C21F: LitVarStr var_2B8, " AND (EstaBole = 'Anulado Caja' or EstaBole = 'Anulado Rentas')"
  loc_C9C224: ConcatVar var_2C8
  loc_C9C228: LitVarStr var_2D8, " ORDER BY PeriBole, NumeBole"
  loc_C9C22D: ConcatVar var_2E8
  loc_C9C231: CStrVarVal var_11C
  loc_C9C235: FLdPr var_1D8
  loc_C9C238: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C9C23D: FFreeStr var_A8 = "": var_C0 = ""
  loc_C9C246: FFreeAd var_94 = ""
  loc_C9C24D: FFreeVar var_A4 = "": var_BC = "": var_E0 = "": var_110 = "": var_100 = "": var_130 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = ""
  loc_C9C272: LitI4 0
  loc_C9C277: LitI4 1
  loc_C9C27C: FLdPr Me
  loc_C9C27F: MemLdRfVar from_stack_1.global_128
  loc_C9C282: Redim
  loc_C9C28C: FLdRfVar var_150
  loc_C9C28F: FLdPr var_1D8
  loc_C9C292: from_stack_1 = clsboleto.RecordCount
  loc_C9C297: ILdRf var_150
  loc_C9C29A: LitI4 1
  loc_C9C29F: LtI4
  loc_C9C2A0: BranchF loc_C9C2C0
  loc_C9C2A3: LitI4 0
  loc_C9C2A8: LitI4 0
  loc_C9C2AD: FLdPr Me
  loc_C9C2B0: MemLdRfVar from_stack_1.global_96
  loc_C9C2B3: Redim
  loc_C9C2BD: Branch loc_C9C6FF
  loc_C9C2C0: LitI4 0
  loc_C9C2C5: FLdRfVar var_150
  loc_C9C2C8: FLdPr var_1D8
  loc_C9C2CB: from_stack_1 = clsboleto.RecordCount
  loc_C9C2D0: ILdRf var_150
  loc_C9C2D3: FLdPr Me
  loc_C9C2D6: MemLdRfVar from_stack_1.global_96
  loc_C9C2D9: Redim
  loc_C9C2E3: LitI2_Byte 1
  loc_C9C2E5: FLdPr Me
  loc_C9C2E8: MemLdRfVar from_stack_1.global_140
  loc_C9C2EB: FLdPr Me
  loc_C9C2EE: MemLdStr global_96
  loc_C9C2F1: LitI2_Byte 1
  loc_C9C2F3: FnUBound
  loc_C9C2F5: CI2I4
  loc_C9C2F6: ForI2 var_2EC
  loc_C9C2FC: FLdRfVar var_112
  loc_C9C2FF: FLdPr var_1D8
  loc_C9C302: from_stack_1 = clsboleto.PeriBole
  loc_C9C307: LitI2_Byte 0
  loc_C9C309: LitVar_Missing var_A4
  loc_C9C30C: LitI2_Byte 0
  loc_C9C30E: FLdI2 var_112
  loc_C9C311: CVarI2 var_D0
  loc_C9C314: PopAdLdVar
  loc_C9C315: FLdPr Me
  loc_C9C318: MemLdI2 global_140
  loc_C9C31B: CI4UI1
  loc_C9C31C: FLdPr Me
  loc_C9C31F: MemLdStr global_96
  loc_C9C322: AryLock
  loc_C9C325: Ary1LdPr
  loc_C9C326: MemLdRfVar from_stack_1.global_0
  loc_C9C329: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C32E: AryUnlock
  loc_C9C331: FFree1Var var_A4 = ""
  loc_C9C334: FLdRfVar var_150
  loc_C9C337: FLdPr var_1D8
  loc_C9C33A: from_stack_1 = clsboleto.NumeBole
  loc_C9C33F: LitI2_Byte 0
  loc_C9C341: LitVar_Missing var_A4
  loc_C9C344: LitI2_Byte 0
  loc_C9C346: ILdRf var_150
  loc_C9C349: CVarI4
  loc_C9C34D: PopAdLdVar
  loc_C9C34E: FLdPr Me
  loc_C9C351: MemLdI2 global_140
  loc_C9C354: CI4UI1
  loc_C9C355: FLdPr Me
  loc_C9C358: MemLdStr global_96
  loc_C9C35B: AryLock
  loc_C9C35E: Ary1LdPr
  loc_C9C35F: MemLdRfVar from_stack_1.global_4
  loc_C9C362: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C367: AryUnlock
  loc_C9C36A: FFree1Var var_A4 = ""
  loc_C9C36D: FLdRfVar var_A8
  loc_C9C370: FLdPr var_1D8
  loc_C9C373: from_stack_1 = clsboleto.CucuPers
  loc_C9C378: LitI2_Byte 0
  loc_C9C37A: LitVar_Missing var_BC
  loc_C9C37D: LitI2_Byte 0
  loc_C9C37F: FLdZeroAd var_A8
  loc_C9C382: CVarStr var_A4
  loc_C9C385: PopAdLdVar
  loc_C9C386: FLdPr Me
  loc_C9C389: MemLdI2 global_140
  loc_C9C38C: CI4UI1
  loc_C9C38D: FLdPr Me
  loc_C9C390: MemLdStr global_96
  loc_C9C393: AryLock
  loc_C9C396: Ary1LdPr
  loc_C9C397: MemLdRfVar from_stack_1.global_8
  loc_C9C39A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C39F: AryUnlock
  loc_C9C3A2: FFreeVar var_A4 = ""
  loc_C9C3A9: FLdRfVar var_A8
  loc_C9C3AC: FLdPr var_1D8
  loc_C9C3AF: from_stack_1 = clsboleto.DetaPers
  loc_C9C3B4: LitI2_Byte 0
  loc_C9C3B6: LitVar_Missing var_BC
  loc_C9C3B9: LitI2_Byte 0
  loc_C9C3BB: FLdZeroAd var_A8
  loc_C9C3BE: CVarStr var_A4
  loc_C9C3C1: PopAdLdVar
  loc_C9C3C2: FLdPr Me
  loc_C9C3C5: MemLdI2 global_140
  loc_C9C3C8: CI4UI1
  loc_C9C3C9: FLdPr Me
  loc_C9C3CC: MemLdStr global_96
  loc_C9C3CF: AryLock
  loc_C9C3D2: Ary1LdPr
  loc_C9C3D3: MemLdRfVar from_stack_1.global_12
  loc_C9C3D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C3DB: AryUnlock
  loc_C9C3DE: FFreeVar var_A4 = ""
  loc_C9C3E5: FLdRfVar var_A8
  loc_C9C3E8: FLdPr var_1D8
  loc_C9C3EB: from_stack_1 = clsboleto.EstaBole
  loc_C9C3F0: LitI2_Byte 0
  loc_C9C3F2: LitVar_Missing var_BC
  loc_C9C3F5: LitI2_Byte 0
  loc_C9C3F7: FLdZeroAd var_A8
  loc_C9C3FA: CVarStr var_A4
  loc_C9C3FD: PopAdLdVar
  loc_C9C3FE: FLdPr Me
  loc_C9C401: MemLdI2 global_140
  loc_C9C404: CI4UI1
  loc_C9C405: FLdPr Me
  loc_C9C408: MemLdStr global_96
  loc_C9C40B: AryLock
  loc_C9C40E: Ary1LdPr
  loc_C9C40F: MemLdRfVar from_stack_1.global_16
  loc_C9C412: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C417: AryUnlock
  loc_C9C41A: FFreeVar var_A4 = ""
  loc_C9C421: FLdRfVar var_A4
  loc_C9C424: FLdPr var_1D8
  loc_C9C427: from_stack_1 = clsboleto.FeanBole
  loc_C9C42C: LitI2_Byte 0
  loc_C9C42E: LitVar_Missing var_BC
  loc_C9C431: LitI2_Byte 0
  loc_C9C433: FLdVar var_A4
  loc_C9C437: FLdPr Me
  loc_C9C43A: MemLdI2 global_140
  loc_C9C43D: CI4UI1
  loc_C9C43E: FLdPr Me
  loc_C9C441: MemLdStr global_96
  loc_C9C444: AryLock
  loc_C9C447: Ary1LdPr
  loc_C9C448: MemLdRfVar from_stack_1.global_20
  loc_C9C44B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C450: AryUnlock
  loc_C9C453: FFreeVar var_A4 = ""
  loc_C9C45A: FLdRfVar var_A4
  loc_C9C45D: FLdPr var_1D8
  loc_C9C460: from_stack_1 = clsboleto.MoanBole
  loc_C9C465: LitI2_Byte 0
  loc_C9C467: LitVar_Missing var_BC
  loc_C9C46A: LitI2_Byte 0
  loc_C9C46C: FLdVar var_A4
  loc_C9C470: FLdPr Me
  loc_C9C473: MemLdI2 global_140
  loc_C9C476: CI4UI1
  loc_C9C477: FLdPr Me
  loc_C9C47A: MemLdStr global_96
  loc_C9C47D: AryLock
  loc_C9C480: Ary1LdPr
  loc_C9C481: MemLdRfVar from_stack_1.global_24
  loc_C9C484: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C489: AryUnlock
  loc_C9C48C: FFreeVar var_A4 = ""
  loc_C9C493: FLdRfVar var_A4
  loc_C9C496: FLdPr var_1D8
  loc_C9C499: from_stack_1 = clsboleto.AnulUsua
  loc_C9C49E: LitI2_Byte 0
  loc_C9C4A0: LitVar_Missing var_BC
  loc_C9C4A3: LitI2_Byte 0
  loc_C9C4A5: FLdVar var_A4
  loc_C9C4A9: FLdPr Me
  loc_C9C4AC: MemLdI2 global_140
  loc_C9C4AF: CI4UI1
  loc_C9C4B0: FLdPr Me
  loc_C9C4B3: MemLdStr global_96
  loc_C9C4B6: AryLock
  loc_C9C4B9: Ary1LdPr
  loc_C9C4BA: MemLdRfVar from_stack_1.global_28
  loc_C9C4BD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C4C2: AryUnlock
  loc_C9C4C5: FFreeVar var_A4 = ""
  loc_C9C4CC: FLdRfVar var_18C
  loc_C9C4CF: FLdPr var_1D8
  loc_C9C4D2: from_stack_1 = clsboleto.CapiBole
  loc_C9C4D7: LitI2_Byte 0
  loc_C9C4D9: LitI4 1
  loc_C9C4DE: FLdPr Me
  loc_C9C4E1: MemLdStr global_128
  loc_C9C4E4: AryLock
  loc_C9C4E7: Ary1LdPr
  loc_C9C4E8: MemLdRfVar from_stack_1.global_0
  loc_C9C4EB: CVarRef
  loc_C9C4F0: LitI2_Byte &HFF
  loc_C9C4F2: FLdFPR8 var_18C
  loc_C9C4F5: CVarR8
  loc_C9C4F9: PopAdLdVar
  loc_C9C4FA: FLdPr Me
  loc_C9C4FD: MemLdI2 global_140
  loc_C9C500: CI4UI1
  loc_C9C501: FLdPr Me
  loc_C9C504: MemLdStr global_96
  loc_C9C507: AryLock
  loc_C9C50A: Ary1LdPr
  loc_C9C50B: MemLdRfVar from_stack_1.global_32
  loc_C9C50E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C513: AryUnlock
  loc_C9C516: AryUnlock
  loc_C9C519: FLdRfVar var_18C
  loc_C9C51C: FLdPr var_1D8
  loc_C9C51F: from_stack_1 = clsboleto.DecaBole
  loc_C9C524: LitI2_Byte 0
  loc_C9C526: LitI4 1
  loc_C9C52B: FLdPr Me
  loc_C9C52E: MemLdStr global_128
  loc_C9C531: AryLock
  loc_C9C534: Ary1LdPr
  loc_C9C535: MemLdRfVar from_stack_1.global_4
  loc_C9C538: CVarRef
  loc_C9C53D: LitI2_Byte &HFF
  loc_C9C53F: FLdFPR8 var_18C
  loc_C9C542: CVarR8
  loc_C9C546: PopAdLdVar
  loc_C9C547: FLdPr Me
  loc_C9C54A: MemLdI2 global_140
  loc_C9C54D: CI4UI1
  loc_C9C54E: FLdPr Me
  loc_C9C551: MemLdStr global_96
  loc_C9C554: AryLock
  loc_C9C557: Ary1LdPr
  loc_C9C558: MemLdRfVar from_stack_1.global_36
  loc_C9C55B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C560: AryUnlock
  loc_C9C563: AryUnlock
  loc_C9C566: FLdRfVar var_18C
  loc_C9C569: FLdPr var_1D8
  loc_C9C56C: from_stack_1 = clsboleto.RecaBole
  loc_C9C571: LitI2_Byte 0
  loc_C9C573: LitI4 1
  loc_C9C578: FLdPr Me
  loc_C9C57B: MemLdStr global_128
  loc_C9C57E: AryLock
  loc_C9C581: Ary1LdPr
  loc_C9C582: MemLdRfVar from_stack_1.global_8
  loc_C9C585: CVarRef
  loc_C9C58A: LitI2_Byte &HFF
  loc_C9C58C: FLdFPR8 var_18C
  loc_C9C58F: CVarR8
  loc_C9C593: PopAdLdVar
  loc_C9C594: FLdPr Me
  loc_C9C597: MemLdI2 global_140
  loc_C9C59A: CI4UI1
  loc_C9C59B: FLdPr Me
  loc_C9C59E: MemLdStr global_96
  loc_C9C5A1: AryLock
  loc_C9C5A4: Ary1LdPr
  loc_C9C5A5: MemLdRfVar from_stack_1.global_40
  loc_C9C5A8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C5AD: AryUnlock
  loc_C9C5B0: AryUnlock
  loc_C9C5B3: FLdRfVar var_18C
  loc_C9C5B6: FLdPr var_1D8
  loc_C9C5B9: from_stack_1 = clsboleto.DereBole
  loc_C9C5BE: LitI2_Byte 0
  loc_C9C5C0: LitI4 1
  loc_C9C5C5: FLdPr Me
  loc_C9C5C8: MemLdStr global_128
  loc_C9C5CB: AryLock
  loc_C9C5CE: Ary1LdPr
  loc_C9C5CF: MemLdRfVar from_stack_1.global_12
  loc_C9C5D2: CVarRef
  loc_C9C5D7: LitI2_Byte &HFF
  loc_C9C5D9: FLdFPR8 var_18C
  loc_C9C5DC: CVarR8
  loc_C9C5E0: PopAdLdVar
  loc_C9C5E1: FLdPr Me
  loc_C9C5E4: MemLdI2 global_140
  loc_C9C5E7: CI4UI1
  loc_C9C5E8: FLdPr Me
  loc_C9C5EB: MemLdStr global_96
  loc_C9C5EE: AryLock
  loc_C9C5F1: Ary1LdPr
  loc_C9C5F2: MemLdRfVar from_stack_1.global_44
  loc_C9C5F5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C5FA: AryUnlock
  loc_C9C5FD: AryUnlock
  loc_C9C600: FLdRfVar var_18C
  loc_C9C603: FLdPr var_1D8
  loc_C9C606: from_stack_1 = clsboleto.InteBole
  loc_C9C60B: LitI2_Byte 0
  loc_C9C60D: LitI4 1
  loc_C9C612: FLdPr Me
  loc_C9C615: MemLdStr global_128
  loc_C9C618: AryLock
  loc_C9C61B: Ary1LdPr
  loc_C9C61C: MemLdRfVar from_stack_1.global_16
  loc_C9C61F: CVarRef
  loc_C9C624: LitI2_Byte &HFF
  loc_C9C626: FLdFPR8 var_18C
  loc_C9C629: CVarR8
  loc_C9C62D: PopAdLdVar
  loc_C9C62E: FLdPr Me
  loc_C9C631: MemLdI2 global_140
  loc_C9C634: CI4UI1
  loc_C9C635: FLdPr Me
  loc_C9C638: MemLdStr global_96
  loc_C9C63B: AryLock
  loc_C9C63E: Ary1LdPr
  loc_C9C63F: MemLdRfVar from_stack_1.global_48
  loc_C9C642: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C647: AryUnlock
  loc_C9C64A: AryUnlock
  loc_C9C64D: FLdRfVar var_18C
  loc_C9C650: FLdPr var_1D8
  loc_C9C653: from_stack_1 = clsboleto.ApreBole
  loc_C9C658: LitI2_Byte 0
  loc_C9C65A: LitI4 1
  loc_C9C65F: FLdPr Me
  loc_C9C662: MemLdStr global_128
  loc_C9C665: AryLock
  loc_C9C668: Ary1LdPr
  loc_C9C669: MemLdRfVar from_stack_1.global_20
  loc_C9C66C: CVarRef
  loc_C9C671: LitI2_Byte &HFF
  loc_C9C673: FLdFPR8 var_18C
  loc_C9C676: CVarR8
  loc_C9C67A: PopAdLdVar
  loc_C9C67B: FLdPr Me
  loc_C9C67E: MemLdI2 global_140
  loc_C9C681: CI4UI1
  loc_C9C682: FLdPr Me
  loc_C9C685: MemLdStr global_96
  loc_C9C688: AryLock
  loc_C9C68B: Ary1LdPr
  loc_C9C68C: MemLdRfVar from_stack_1.bGenerado
  loc_C9C68F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C694: AryUnlock
  loc_C9C697: AryUnlock
  loc_C9C69A: FLdRfVar var_18C
  loc_C9C69D: FLdPr var_1D8
  loc_C9C6A0: from_stack_1 = clsboleto.TotaBole
  loc_C9C6A5: LitI2_Byte 0
  loc_C9C6A7: LitI4 1
  loc_C9C6AC: FLdPr Me
  loc_C9C6AF: MemLdStr global_128
  loc_C9C6B2: AryLock
  loc_C9C6B5: Ary1LdPr
  loc_C9C6B6: MemLdRfVar from_stack_1.global_24
  loc_C9C6B9: CVarRef
  loc_C9C6BE: LitI2_Byte &HFF
  loc_C9C6C0: FLdFPR8 var_18C
  loc_C9C6C3: CVarR8
  loc_C9C6C7: PopAdLdVar
  loc_C9C6C8: FLdPr Me
  loc_C9C6CB: MemLdI2 global_140
  loc_C9C6CE: CI4UI1
  loc_C9C6CF: FLdPr Me
  loc_C9C6D2: MemLdStr global_96
  loc_C9C6D5: AryLock
  loc_C9C6D8: Ary1LdPr
  loc_C9C6D9: MemLdRfVar from_stack_1.global_56
  loc_C9C6DC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C9C6E1: AryUnlock
  loc_C9C6E4: AryUnlock
  loc_C9C6E7: LitI2_Byte 1
  loc_C9C6E9: PopTmpLdAd2 var_112
  loc_C9C6EC: FLdPr var_1D8
  loc_C9C6EF: Call clsboleto.Move(from_stack_1v)
  loc_C9C6F4: FLdPr Me
  loc_C9C6F7: MemLdRfVar from_stack_1.global_140
  loc_C9C6FA: NextI2 var_2EC, loc_C9C2FC
  loc_C9C6FF: LitNothing
  loc_C9C701: FStAd var_1D8 
  loc_C9C705: LitI2_Byte &HFF
  loc_C9C707: FLdPr Me
  loc_C9C70A: MemStI2 bGenerado
  loc_C9C70D: LitI4 0
  loc_C9C712: CI2I4
  loc_C9C713: FLdPr Me
  loc_C9C716: Me.MousePointer = from_stack_1
  loc_C9C71B: LitVarStr var_D0, vbNullString
  loc_C9C720: PopAdLdVar
  loc_C9C721: FLdPr Me
  loc_C9C724: VCallAd Control_ID_statusBar
  loc_C9C727: FStAdFunc var_94
  loc_C9C72A: FLdPr var_94
  loc_C9C72D: LateIdSt
  loc_C9C732: FFree1Ad var_94
  loc_C9C735: ExitProcHresult
  loc_C9C736: FStR8 var_3400
End Sub

Public Sub GeneraXLS() '9C40BC
  'Data Table: 4E4644
  loc_9C40A4: LitI2_Byte 0
  loc_9C40A6: FLdPr Me
  loc_9C40A9: MemStI2 bLogos
  loc_9C40AC: Call GeneraHTML()
  loc_9C40B1: LitI2_Byte &HFF
  loc_9C40B3: FLdPr Me
  loc_9C40B6: MemStI2 bLogos
  loc_9C40B9: ExitProcHresult
  loc_9C40BA: FLdPr var_3400
End Sub

Public Sub GeneraHTML() 'CA1BF8
  'Data Table: 4E4644
  loc_CA0040: FLdRfVar var_88
  loc_CA0043: LitI2_Byte 0
  loc_CA0045: LitI2_Byte &HFF
  loc_CA0047: ImpAdLdI4 MemVar_D93C84
  loc_CA004A: FLdPr Me
  loc_CA004D: MemLdRfVar from_stack_1.global_56
  loc_CA0050: NewIfNullPr IFileSystem3
  loc_CA0053: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CA0058: ILdRf var_88
  loc_CA005B: FLdPr Me
  loc_CA005E: MemStVarAd
  loc_CA0062: FFree1Ad var_88
  loc_CA0065: LitI2_Byte &HFF
  loc_CA0067: ImpAdStI2 MemVar_D93C8A
  loc_CA006A: Call Proc_81_33_C27D2C()
  loc_CA006F: LitI2_Byte 1
  loc_CA0071: FLdPr Me
  loc_CA0074: MemLdRfVar from_stack_1.global_132
  loc_CA0077: FLdPr Me
  loc_CA007A: MemLdStr global_92
  loc_CA007D: LitI2_Byte 1
  loc_CA007F: FnUBound
  loc_CA0081: CI2I4
  loc_CA0082: ForI2 var_8C
  loc_CA0088: LitI2_Byte 1
  loc_CA008A: FLdPr Me
  loc_CA008D: MemLdRfVar from_stack_1.global_134
  loc_CA0090: FLdPr Me
  loc_CA0093: MemLdI2 global_132
  loc_CA0096: CI4UI1
  loc_CA0097: FLdPr Me
  loc_CA009A: MemLdStr global_92
  loc_CA009D: Ary1LdPr
  loc_CA009E: MemLdStr global_4
  loc_CA00A1: LitI2_Byte 1
  loc_CA00A3: FnUBound
  loc_CA00A5: CI2I4
  loc_CA00A6: ForI2 var_90
  loc_CA00AC: FLdPr Me
  loc_CA00AF: MemLdI2 global_134
  loc_CA00B2: CI4UI1
  loc_CA00B3: FLdPr Me
  loc_CA00B6: MemLdI2 global_132
  loc_CA00B9: CI4UI1
  loc_CA00BA: FLdPr Me
  loc_CA00BD: MemLdStr global_92
  loc_CA00C0: AryLock
  loc_CA00C3: Ary1LdPr
  loc_CA00C4: MemLdStr global_4
  loc_CA00C7: AryLock
  loc_CA00CA: Ary1LdRf
  loc_CA00CB: FStR4 var_9C
  loc_CA00CE: LitVarStr var_AC, "  <tr align=""center"" class=""LineaDato"">"
  loc_CA00D3: PopAdLdVar
  loc_CA00D4: FLdPr Me
  loc_CA00D7: MemLdRfVar from_stack_1.global_60
  loc_CA00DA: LdPrVar
  loc_CA00DC: LateMemCall
  loc_CA00E2: LitVarStr var_AC, "    <th colspan=""15""><table width=""100" & Chr(37) & """ border=""0"" class=""Encabezado"">"
  loc_CA00E7: PopAdLdVar
  loc_CA00E8: FLdPr Me
  loc_CA00EB: MemLdRfVar from_stack_1.global_60
  loc_CA00EE: LdPrVar
  loc_CA00F0: LateMemCall
  loc_CA00F6: LitVarStr var_AC, "      <tr>"
  loc_CA00FB: PopAdLdVar
  loc_CA00FC: FLdPr Me
  loc_CA00FF: MemLdRfVar from_stack_1.global_60
  loc_CA0102: LdPrVar
  loc_CA0104: LateMemCall
  loc_CA010A: LitStr "        <td width=""16" & Chr(37) & """>Fecha de Env&iacute;o: "
  loc_CA010D: FLdPr Me
  loc_CA0110: MemLdI2 global_132
  loc_CA0113: CI4UI1
  loc_CA0114: FLdPr Me
  loc_CA0117: MemLdStr global_92
  loc_CA011A: Ary1LdPr
  loc_CA011B: MemLdStr global_0
  loc_CA011E: ConcatStr
  loc_CA011F: FStStrNoPop var_C0
  loc_CA0122: LitStr "</td>"
  loc_CA0125: ConcatStr
  loc_CA0126: CVarStr var_D0
  loc_CA0129: PopAdLdVar
  loc_CA012A: FLdPr Me
  loc_CA012D: MemLdRfVar from_stack_1.global_60
  loc_CA0130: LdPrVar
  loc_CA0132: LateMemCall
  loc_CA0138: FFree1Str var_C0
  loc_CA013B: FFree1Var var_D0 = ""
  loc_CA013E: LitStr "        <td width=""8" & Chr(37) & """>Grupo: "
  loc_CA0141: FMemLdR4 var_9C(0)
  loc_CA0146: ConcatStr
  loc_CA0147: FStStrNoPop var_C0
  loc_CA014A: LitStr " </td>"
  loc_CA014D: ConcatStr
  loc_CA014E: CVarStr var_D0
  loc_CA0151: PopAdLdVar
  loc_CA0152: FLdPr Me
  loc_CA0155: MemLdRfVar from_stack_1.global_60
  loc_CA0158: LdPrVar
  loc_CA015A: LateMemCall
  loc_CA0160: FFree1Str var_C0
  loc_CA0163: FFree1Var var_D0 = ""
  loc_CA0166: LitStr "        <td width=""35" & Chr(37) & """>Ente Recaudador: "
  loc_CA0169: FMemLdR4 var_9C(4)
  loc_CA016E: ConcatStr
  loc_CA016F: FStStrNoPop var_C0
  loc_CA0172: LitStr " - "
  loc_CA0175: ConcatStr
  loc_CA0176: FStStrNoPop var_D4
  loc_CA0179: FMemLdR4 var_9C(8)
  loc_CA017E: ConcatStr
  loc_CA017F: FStStrNoPop var_D8
  loc_CA0182: LitStr "</td>"
  loc_CA0185: ConcatStr
  loc_CA0186: CVarStr var_D0
  loc_CA0189: PopAdLdVar
  loc_CA018A: FLdPr Me
  loc_CA018D: MemLdRfVar from_stack_1.global_60
  loc_CA0190: LdPrVar
  loc_CA0192: LateMemCall
  loc_CA0198: FFreeStr var_C0 = "": var_D4 = ""
  loc_CA01A1: FFree1Var var_D0 = ""
  loc_CA01A4: LitStr "        <td width=""15" & Chr(37) & """>Comprobantes: "
  loc_CA01A7: FMemLdR4 var_9C(12)
  loc_CA01AC: ConcatStr
  loc_CA01AD: FStStrNoPop var_C0
  loc_CA01B0: LitStr "</td>"
  loc_CA01B3: ConcatStr
  loc_CA01B4: CVarStr var_D0
  loc_CA01B7: PopAdLdVar
  loc_CA01B8: FLdPr Me
  loc_CA01BB: MemLdRfVar from_stack_1.global_60
  loc_CA01BE: LdPrVar
  loc_CA01C0: LateMemCall
  loc_CA01C6: FFree1Str var_C0
  loc_CA01C9: FFree1Var var_D0 = ""
  loc_CA01CC: LitStr "        <td width=""13" & Chr(37) & """>Cobrado: $ "
  loc_CA01CF: FMemLdR4 var_9C(16)
  loc_CA01D4: ConcatStr
  loc_CA01D5: FStStrNoPop var_C0
  loc_CA01D8: LitStr "</td>"
  loc_CA01DB: ConcatStr
  loc_CA01DC: CVarStr var_D0
  loc_CA01DF: PopAdLdVar
  loc_CA01E0: FLdPr Me
  loc_CA01E3: MemLdRfVar from_stack_1.global_60
  loc_CA01E6: LdPrVar
  loc_CA01E8: LateMemCall
  loc_CA01EE: FFree1Str var_C0
  loc_CA01F1: FFree1Var var_D0 = ""
  loc_CA01F4: LitStr "        <td width=""13" & Chr(37) & """>Fecha de Pago: "
  loc_CA01F7: FMemLdR4 var_9C(20)
  loc_CA01FC: ConcatStr
  loc_CA01FD: FStStrNoPop var_C0
  loc_CA0200: LitStr "</td>"
  loc_CA0203: ConcatStr
  loc_CA0204: CVarStr var_D0
  loc_CA0207: PopAdLdVar
  loc_CA0208: FLdPr Me
  loc_CA020B: MemLdRfVar from_stack_1.global_60
  loc_CA020E: LdPrVar
  loc_CA0210: LateMemCall
  loc_CA0216: FFree1Str var_C0
  loc_CA0219: FFree1Var var_D0 = ""
  loc_CA021C: LitVarStr var_AC, "      </tr>"
  loc_CA0221: PopAdLdVar
  loc_CA0222: FLdPr Me
  loc_CA0225: MemLdRfVar from_stack_1.global_60
  loc_CA0228: LdPrVar
  loc_CA022A: LateMemCall
  loc_CA0230: LitVarStr var_AC, "    </table></th>"
  loc_CA0235: PopAdLdVar
  loc_CA0236: FLdPr Me
  loc_CA0239: MemLdRfVar from_stack_1.global_60
  loc_CA023C: LdPrVar
  loc_CA023E: LateMemCall
  loc_CA0244: LitVarStr var_AC, "  </tr>"
  loc_CA0249: PopAdLdVar
  loc_CA024A: FLdPr Me
  loc_CA024D: MemLdRfVar from_stack_1.global_60
  loc_CA0250: LdPrVar
  loc_CA0252: LateMemCall
  loc_CA0258: LitI4 0
  loc_CA025D: FStR4 var_9C
  loc_CA0260: AryUnlock
  loc_CA0263: AryUnlock
  loc_CA0266: LitI2_Byte 1
  loc_CA0268: FLdPr Me
  loc_CA026B: MemLdRfVar from_stack_1.global_136
  loc_CA026E: FLdPr Me
  loc_CA0271: MemLdI2 global_134
  loc_CA0274: CI4UI1
  loc_CA0275: FLdPr Me
  loc_CA0278: MemLdI2 global_132
  loc_CA027B: CI4UI1
  loc_CA027C: FLdPr Me
  loc_CA027F: MemLdStr global_92
  loc_CA0282: Ary1LdPr
  loc_CA0283: MemLdStr global_4
  loc_CA0286: Ary1LdPr
  loc_CA0287: MemLdStr global_24
  loc_CA028A: LitI2_Byte 1
  loc_CA028C: FnUBound
  loc_CA028E: CI2I4
  loc_CA028F: ForI2 var_DC
  loc_CA0295: FLdPr Me
  loc_CA0298: MemLdI2 global_136
  loc_CA029B: CI4UI1
  loc_CA029C: FLdPr Me
  loc_CA029F: MemLdI2 global_134
  loc_CA02A2: CI4UI1
  loc_CA02A3: FLdPr Me
  loc_CA02A6: MemLdI2 global_132
  loc_CA02A9: CI4UI1
  loc_CA02AA: FLdPr Me
  loc_CA02AD: MemLdStr global_92
  loc_CA02B0: AryLock
  loc_CA02B3: Ary1LdPr
  loc_CA02B4: MemLdStr global_4
  loc_CA02B7: AryLock
  loc_CA02BA: Ary1LdPr
  loc_CA02BB: MemLdStr global_24
  loc_CA02BE: AryLock
  loc_CA02C1: Ary1LdRf
  loc_CA02C2: FStR4 var_EC
  loc_CA02C5: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_CA02CA: PopAdLdVar
  loc_CA02CB: FLdPr Me
  loc_CA02CE: MemLdRfVar from_stack_1.global_60
  loc_CA02D1: LdPrVar
  loc_CA02D3: LateMemCall
  loc_CA02D9: LitStr "    <td colspan=""4"" align=""left"">"
  loc_CA02DC: FMemLdR4 var_EC(0)
  loc_CA02E1: ConcatStr
  loc_CA02E2: FStStrNoPop var_C0
  loc_CA02E5: LitStr "-"
  loc_CA02E8: ConcatStr
  loc_CA02E9: FStStrNoPop var_D4
  loc_CA02EC: FMemLdR4 var_EC(4)
  loc_CA02F1: ConcatStr
  loc_CA02F2: FStStrNoPop var_D8
  loc_CA02F5: LitStr "</td>"
  loc_CA02F8: ConcatStr
  loc_CA02F9: CVarStr var_D0
  loc_CA02FC: PopAdLdVar
  loc_CA02FD: FLdPr Me
  loc_CA0300: MemLdRfVar from_stack_1.global_60
  loc_CA0303: LdPrVar
  loc_CA0305: LateMemCall
  loc_CA030B: FFreeStr var_C0 = "": var_D4 = ""
  loc_CA0314: FFree1Var var_D0 = ""
  loc_CA0317: LitStr "    <td colspan=""2"" align=""left"">"
  loc_CA031A: FMemLdR4 var_EC(8)
  loc_CA031F: ConcatStr
  loc_CA0320: FStStrNoPop var_C0
  loc_CA0323: LitStr "</td>"
  loc_CA0326: ConcatStr
  loc_CA0327: CVarStr var_D0
  loc_CA032A: PopAdLdVar
  loc_CA032B: FLdPr Me
  loc_CA032E: MemLdRfVar from_stack_1.global_60
  loc_CA0331: LdPrVar
  loc_CA0333: LateMemCall
  loc_CA0339: FFree1Str var_C0
  loc_CA033C: FFree1Var var_D0 = ""
  loc_CA033F: LitStr "    <td colspan=""2"" align=""left"">"
  loc_CA0342: FMemLdR4 var_EC(12)
  loc_CA0347: ConcatStr
  loc_CA0348: FStStrNoPop var_C0
  loc_CA034B: LitStr "</td>"
  loc_CA034E: ConcatStr
  loc_CA034F: CVarStr var_D0
  loc_CA0352: PopAdLdVar
  loc_CA0353: FLdPr Me
  loc_CA0356: MemLdRfVar from_stack_1.global_60
  loc_CA0359: LdPrVar
  loc_CA035B: LateMemCall
  loc_CA0361: FFree1Str var_C0
  loc_CA0364: FFree1Var var_D0 = ""
  loc_CA0367: FMemLdRf unk_4E4559
  loc_CA036C: FStR4 var_F0
  loc_CA036F: LitStr vbNullString
  loc_CA0372: LitI2_Byte 0
  loc_CA0374: LitI2_Byte 0
  loc_CA0376: LitI2_Byte 0
  loc_CA0378: LitStr "right"
  loc_CA037B: FMemLdR4 var_F0(0)
  loc_CA0380: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0385: CVarStr var_D0
  loc_CA0388: PopAdLdVar
  loc_CA0389: FLdPr Me
  loc_CA038C: MemLdRfVar from_stack_1.global_60
  loc_CA038F: LdPrVar
  loc_CA0391: LateMemCall
  loc_CA0397: FFree1Var var_D0 = ""
  loc_CA039A: LitStr vbNullString
  loc_CA039D: LitI2_Byte 0
  loc_CA039F: LitI2_Byte 0
  loc_CA03A1: LitI2_Byte 0
  loc_CA03A3: LitStr "right"
  loc_CA03A6: FMemLdR4 var_F0(4)
  loc_CA03AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA03B0: CVarStr var_D0
  loc_CA03B3: PopAdLdVar
  loc_CA03B4: FLdPr Me
  loc_CA03B7: MemLdRfVar from_stack_1.global_60
  loc_CA03BA: LdPrVar
  loc_CA03BC: LateMemCall
  loc_CA03C2: FFree1Var var_D0 = ""
  loc_CA03C5: LitStr vbNullString
  loc_CA03C8: LitI2_Byte 0
  loc_CA03CA: LitI2_Byte 0
  loc_CA03CC: LitI2_Byte 0
  loc_CA03CE: LitStr "right"
  loc_CA03D1: FMemLdR4 var_F0(8)
  loc_CA03D6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA03DB: CVarStr var_D0
  loc_CA03DE: PopAdLdVar
  loc_CA03DF: FLdPr Me
  loc_CA03E2: MemLdRfVar from_stack_1.global_60
  loc_CA03E5: LdPrVar
  loc_CA03E7: LateMemCall
  loc_CA03ED: FFree1Var var_D0 = ""
  loc_CA03F0: LitStr vbNullString
  loc_CA03F3: LitI2_Byte 0
  loc_CA03F5: LitI2_Byte 0
  loc_CA03F7: LitI2_Byte 0
  loc_CA03F9: LitStr "right"
  loc_CA03FC: FMemLdR4 var_F0(12)
  loc_CA0401: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0406: CVarStr var_D0
  loc_CA0409: PopAdLdVar
  loc_CA040A: FLdPr Me
  loc_CA040D: MemLdRfVar from_stack_1.global_60
  loc_CA0410: LdPrVar
  loc_CA0412: LateMemCall
  loc_CA0418: FFree1Var var_D0 = ""
  loc_CA041B: LitStr vbNullString
  loc_CA041E: LitI2_Byte 0
  loc_CA0420: LitI2_Byte 0
  loc_CA0422: LitI2_Byte 0
  loc_CA0424: LitStr "right"
  loc_CA0427: FMemLdR4 var_F0(16)
  loc_CA042C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0431: CVarStr var_D0
  loc_CA0434: PopAdLdVar
  loc_CA0435: FLdPr Me
  loc_CA0438: MemLdRfVar from_stack_1.global_60
  loc_CA043B: LdPrVar
  loc_CA043D: LateMemCall
  loc_CA0443: FFree1Var var_D0 = ""
  loc_CA0446: LitStr vbNullString
  loc_CA0449: LitI2_Byte 0
  loc_CA044B: LitI2_Byte 0
  loc_CA044D: LitI2_Byte 0
  loc_CA044F: LitStr "right"
  loc_CA0452: FMemLdR4 var_F0(20)
  loc_CA0457: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA045C: CVarStr var_D0
  loc_CA045F: PopAdLdVar
  loc_CA0460: FLdPr Me
  loc_CA0463: MemLdRfVar from_stack_1.global_60
  loc_CA0466: LdPrVar
  loc_CA0468: LateMemCall
  loc_CA046E: FFree1Var var_D0 = ""
  loc_CA0471: LitStr vbNullString
  loc_CA0474: LitI2_Byte 0
  loc_CA0476: LitI2_Byte 0
  loc_CA0478: LitI2_Byte 0
  loc_CA047A: LitStr "right"
  loc_CA047D: FMemLdR4 var_F0(24)
  loc_CA0482: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0487: CVarStr var_D0
  loc_CA048A: PopAdLdVar
  loc_CA048B: FLdPr Me
  loc_CA048E: MemLdRfVar from_stack_1.global_60
  loc_CA0491: LdPrVar
  loc_CA0493: LateMemCall
  loc_CA0499: FFree1Var var_D0 = ""
  loc_CA049C: LitI4 0
  loc_CA04A1: FStR4 var_F0
  loc_CA04A4: LitVarStr var_AC, "     </tr>"
  loc_CA04A9: PopAdLdVar
  loc_CA04AA: FLdPr Me
  loc_CA04AD: MemLdRfVar from_stack_1.global_60
  loc_CA04B0: LdPrVar
  loc_CA04B2: LateMemCall
  loc_CA04B8: LitI4 0
  loc_CA04BD: FStR4 var_EC
  loc_CA04C0: AryUnlock
  loc_CA04C3: AryUnlock
  loc_CA04C6: AryUnlock
  loc_CA04C9: FLdPr Me
  loc_CA04CC: VCallAd Control_ID_AnaliticoOpt
  loc_CA04CF: CVarAd
  loc_CA04D3: CBoolVarNull
  loc_CA04D5: FFree1Var var_D0 = ""
  loc_CA04D8: BranchF loc_CA0BBD
  loc_CA04DB: LitI2_Byte 1
  loc_CA04DD: FLdPr Me
  loc_CA04E0: MemLdRfVar from_stack_1.global_138
  loc_CA04E3: FLdPr Me
  loc_CA04E6: MemLdI2 global_136
  loc_CA04E9: CI4UI1
  loc_CA04EA: FLdPr Me
  loc_CA04ED: MemLdI2 global_134
  loc_CA04F0: CI4UI1
  loc_CA04F1: FLdPr Me
  loc_CA04F4: MemLdI2 global_132
  loc_CA04F7: CI4UI1
  loc_CA04F8: FLdPr Me
  loc_CA04FB: MemLdStr global_92
  loc_CA04FE: Ary1LdPr
  loc_CA04FF: MemLdStr global_4
  loc_CA0502: Ary1LdPr
  loc_CA0503: MemLdStr global_24
  loc_CA0506: Ary1LdPr
  loc_CA0507: MemLdStr global_44
  loc_CA050A: LitI2_Byte 1
  loc_CA050C: FnUBound
  loc_CA050E: CI2I4
  loc_CA050F: ForI2 var_F4
  loc_CA0515: FLdPr Me
  loc_CA0518: MemLdI2 global_138
  loc_CA051B: CI4UI1
  loc_CA051C: FLdPr Me
  loc_CA051F: MemLdI2 global_136
  loc_CA0522: CI4UI1
  loc_CA0523: FLdPr Me
  loc_CA0526: MemLdI2 global_134
  loc_CA0529: CI4UI1
  loc_CA052A: FLdPr Me
  loc_CA052D: MemLdI2 global_132
  loc_CA0530: CI4UI1
  loc_CA0531: FLdPr Me
  loc_CA0534: MemLdStr global_92
  loc_CA0537: AryLock
  loc_CA053A: Ary1LdPr
  loc_CA053B: MemLdStr global_4
  loc_CA053E: AryLock
  loc_CA0541: Ary1LdPr
  loc_CA0542: MemLdStr global_24
  loc_CA0545: AryLock
  loc_CA0548: Ary1LdPr
  loc_CA0549: MemLdStr global_44
  loc_CA054C: AryLock
  loc_CA054F: Ary1LdRf
  loc_CA0550: FStR4 var_108
  loc_CA0553: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_CA0558: PopAdLdVar
  loc_CA0559: FLdPr Me
  loc_CA055C: MemLdRfVar from_stack_1.global_60
  loc_CA055F: LdPrVar
  loc_CA0561: LateMemCall
  loc_CA0567: LitStr vbNullString
  loc_CA056A: LitI2_Byte 0
  loc_CA056C: LitI2_Byte 0
  loc_CA056E: LitI2_Byte 0
  loc_CA0570: LitStr "right"
  loc_CA0573: FMemLdR4 var_108(0)
  loc_CA0578: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA057D: CVarStr var_D0
  loc_CA0580: PopAdLdVar
  loc_CA0581: FLdPr Me
  loc_CA0584: MemLdRfVar from_stack_1.global_60
  loc_CA0587: LdPrVar
  loc_CA0589: LateMemCall
  loc_CA058F: FFree1Var var_D0 = ""
  loc_CA0592: LitStr vbNullString
  loc_CA0595: LitI2_Byte 0
  loc_CA0597: LitI2_Byte 0
  loc_CA0599: LitI2_Byte 0
  loc_CA059B: LitStr "right"
  loc_CA059E: FMemLdR4 var_108(4)
  loc_CA05A3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA05A8: CVarStr var_D0
  loc_CA05AB: PopAdLdVar
  loc_CA05AC: FLdPr Me
  loc_CA05AF: MemLdRfVar from_stack_1.global_60
  loc_CA05B2: LdPrVar
  loc_CA05B4: LateMemCall
  loc_CA05BA: FFree1Var var_D0 = ""
  loc_CA05BD: LitStr vbNullString
  loc_CA05C0: LitI2_Byte 0
  loc_CA05C2: LitI2_Byte 0
  loc_CA05C4: LitI2_Byte 0
  loc_CA05C6: LitStr "right"
  loc_CA05C9: FMemLdR4 var_108(8)
  loc_CA05CE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA05D3: CVarStr var_D0
  loc_CA05D6: PopAdLdVar
  loc_CA05D7: FLdPr Me
  loc_CA05DA: MemLdRfVar from_stack_1.global_60
  loc_CA05DD: LdPrVar
  loc_CA05DF: LateMemCall
  loc_CA05E5: FFree1Var var_D0 = ""
  loc_CA05E8: LitStr vbNullString
  loc_CA05EB: LitI2_Byte 0
  loc_CA05ED: LitI2_Byte 0
  loc_CA05EF: LitI2_Byte 0
  loc_CA05F1: LitStr "right"
  loc_CA05F4: FMemLdR4 var_108(12)
  loc_CA05F9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA05FE: CVarStr var_D0
  loc_CA0601: PopAdLdVar
  loc_CA0602: FLdPr Me
  loc_CA0605: MemLdRfVar from_stack_1.global_60
  loc_CA0608: LdPrVar
  loc_CA060A: LateMemCall
  loc_CA0610: FFree1Var var_D0 = ""
  loc_CA0613: LitStr vbNullString
  loc_CA0616: LitI2_Byte 0
  loc_CA0618: LitI2_Byte 0
  loc_CA061A: LitI2_Byte 0
  loc_CA061C: LitStr "right"
  loc_CA061F: FMemLdR4 var_108(16)
  loc_CA0624: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0629: CVarStr var_D0
  loc_CA062C: PopAdLdVar
  loc_CA062D: FLdPr Me
  loc_CA0630: MemLdRfVar from_stack_1.global_60
  loc_CA0633: LdPrVar
  loc_CA0635: LateMemCall
  loc_CA063B: FFree1Var var_D0 = ""
  loc_CA063E: LitStr vbNullString
  loc_CA0641: LitI2_Byte 0
  loc_CA0643: LitI2_Byte 0
  loc_CA0645: LitI2_Byte 0
  loc_CA0647: LitStr "right"
  loc_CA064A: FMemLdR4 var_108(20)
  loc_CA064F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0654: CVarStr var_D0
  loc_CA0657: PopAdLdVar
  loc_CA0658: FLdPr Me
  loc_CA065B: MemLdRfVar from_stack_1.global_60
  loc_CA065E: LdPrVar
  loc_CA0660: LateMemCall
  loc_CA0666: FFree1Var var_D0 = ""
  loc_CA0669: LitStr vbNullString
  loc_CA066C: LitI2_Byte 0
  loc_CA066E: LitI2_Byte 0
  loc_CA0670: LitI2_Byte 0
  loc_CA0672: LitStr "right"
  loc_CA0675: FMemLdR4 var_108(24)
  loc_CA067A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA067F: CVarStr var_D0
  loc_CA0682: PopAdLdVar
  loc_CA0683: FLdPr Me
  loc_CA0686: MemLdRfVar from_stack_1.global_60
  loc_CA0689: LdPrVar
  loc_CA068B: LateMemCall
  loc_CA0691: FFree1Var var_D0 = ""
  loc_CA0694: LitStr vbNullString
  loc_CA0697: LitI2_Byte 0
  loc_CA0699: LitI2_Byte 0
  loc_CA069B: LitI2_Byte 0
  loc_CA069D: LitStr "right"
  loc_CA06A0: FMemLdR4 var_108(28)
  loc_CA06A5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA06AA: CVarStr var_D0
  loc_CA06AD: PopAdLdVar
  loc_CA06AE: FLdPr Me
  loc_CA06B1: MemLdRfVar from_stack_1.global_60
  loc_CA06B4: LdPrVar
  loc_CA06B6: LateMemCall
  loc_CA06BC: FFree1Var var_D0 = ""
  loc_CA06BF: FMemLdRf unk_4E453D
  loc_CA06C4: FStR4 var_10C
  loc_CA06C7: LitStr vbNullString
  loc_CA06CA: LitI2_Byte 0
  loc_CA06CC: LitI2_Byte 0
  loc_CA06CE: LitI2_Byte 0
  loc_CA06D0: LitStr "right"
  loc_CA06D3: FMemLdR4 var_10C(0)
  loc_CA06D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA06DD: CVarStr var_D0
  loc_CA06E0: PopAdLdVar
  loc_CA06E1: FLdPr Me
  loc_CA06E4: MemLdRfVar from_stack_1.global_60
  loc_CA06E7: LdPrVar
  loc_CA06E9: LateMemCall
  loc_CA06EF: FFree1Var var_D0 = ""
  loc_CA06F2: LitStr vbNullString
  loc_CA06F5: LitI2_Byte 0
  loc_CA06F7: LitI2_Byte 0
  loc_CA06F9: LitI2_Byte 0
  loc_CA06FB: LitStr "right"
  loc_CA06FE: FMemLdR4 var_10C(4)
  loc_CA0703: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0708: CVarStr var_D0
  loc_CA070B: PopAdLdVar
  loc_CA070C: FLdPr Me
  loc_CA070F: MemLdRfVar from_stack_1.global_60
  loc_CA0712: LdPrVar
  loc_CA0714: LateMemCall
  loc_CA071A: FFree1Var var_D0 = ""
  loc_CA071D: LitStr vbNullString
  loc_CA0720: LitI2_Byte 0
  loc_CA0722: LitI2_Byte 0
  loc_CA0724: LitI2_Byte 0
  loc_CA0726: LitStr "right"
  loc_CA0729: FMemLdR4 var_10C(8)
  loc_CA072E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0733: CVarStr var_D0
  loc_CA0736: PopAdLdVar
  loc_CA0737: FLdPr Me
  loc_CA073A: MemLdRfVar from_stack_1.global_60
  loc_CA073D: LdPrVar
  loc_CA073F: LateMemCall
  loc_CA0745: FFree1Var var_D0 = ""
  loc_CA0748: LitStr vbNullString
  loc_CA074B: LitI2_Byte 0
  loc_CA074D: LitI2_Byte 0
  loc_CA074F: LitI2_Byte 0
  loc_CA0751: LitStr "right"
  loc_CA0754: FMemLdR4 var_10C(12)
  loc_CA0759: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA075E: CVarStr var_D0
  loc_CA0761: PopAdLdVar
  loc_CA0762: FLdPr Me
  loc_CA0765: MemLdRfVar from_stack_1.global_60
  loc_CA0768: LdPrVar
  loc_CA076A: LateMemCall
  loc_CA0770: FFree1Var var_D0 = ""
  loc_CA0773: LitStr vbNullString
  loc_CA0776: LitI2_Byte 0
  loc_CA0778: LitI2_Byte 0
  loc_CA077A: LitI2_Byte 0
  loc_CA077C: LitStr "right"
  loc_CA077F: FMemLdR4 var_10C(16)
  loc_CA0784: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0789: CVarStr var_D0
  loc_CA078C: PopAdLdVar
  loc_CA078D: FLdPr Me
  loc_CA0790: MemLdRfVar from_stack_1.global_60
  loc_CA0793: LdPrVar
  loc_CA0795: LateMemCall
  loc_CA079B: FFree1Var var_D0 = ""
  loc_CA079E: LitStr vbNullString
  loc_CA07A1: LitI2_Byte 0
  loc_CA07A3: LitI2_Byte 0
  loc_CA07A5: LitI2_Byte 0
  loc_CA07A7: LitStr "right"
  loc_CA07AA: FMemLdR4 var_10C(20)
  loc_CA07AF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA07B4: CVarStr var_D0
  loc_CA07B7: PopAdLdVar
  loc_CA07B8: FLdPr Me
  loc_CA07BB: MemLdRfVar from_stack_1.global_60
  loc_CA07BE: LdPrVar
  loc_CA07C0: LateMemCall
  loc_CA07C6: FFree1Var var_D0 = ""
  loc_CA07C9: LitStr vbNullString
  loc_CA07CC: LitI2_Byte 0
  loc_CA07CE: LitI2_Byte 0
  loc_CA07D0: LitI2_Byte 0
  loc_CA07D2: LitStr "right"
  loc_CA07D5: FMemLdR4 var_10C(24)
  loc_CA07DA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA07DF: CVarStr var_D0
  loc_CA07E2: PopAdLdVar
  loc_CA07E3: FLdPr Me
  loc_CA07E6: MemLdRfVar from_stack_1.global_60
  loc_CA07E9: LdPrVar
  loc_CA07EB: LateMemCall
  loc_CA07F1: FFree1Var var_D0 = ""
  loc_CA07F4: LitI4 0
  loc_CA07F9: FStR4 var_10C
  loc_CA07FC: LitI4 0
  loc_CA0801: FStR4 var_108
  loc_CA0804: AryUnlock
  loc_CA0807: AryUnlock
  loc_CA080A: AryUnlock
  loc_CA080D: AryUnlock
  loc_CA0810: LitVarStr var_AC, "     </tr>"
  loc_CA0815: PopAdLdVar
  loc_CA0816: FLdPr Me
  loc_CA0819: MemLdRfVar from_stack_1.global_60
  loc_CA081C: LdPrVar
  loc_CA081E: LateMemCall
  loc_CA0824: FLdPr Me
  loc_CA0827: MemLdRfVar from_stack_1.global_138
  loc_CA082A: NextI2 var_F4, loc_CA0515
  loc_CA082F: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_CA0834: PopAdLdVar
  loc_CA0835: FLdPr Me
  loc_CA0838: MemLdRfVar from_stack_1.global_60
  loc_CA083B: LdPrVar
  loc_CA083D: LateMemCall
  loc_CA0843: FLdPr Me
  loc_CA0846: MemLdI2 global_136
  loc_CA0849: CI4UI1
  loc_CA084A: FLdPr Me
  loc_CA084D: MemLdI2 global_134
  loc_CA0850: CI4UI1
  loc_CA0851: FLdPr Me
  loc_CA0854: MemLdI2 global_132
  loc_CA0857: CI4UI1
  loc_CA0858: FLdPr Me
  loc_CA085B: MemLdStr global_92
  loc_CA085E: AryLock
  loc_CA0861: Ary1LdPr
  loc_CA0862: MemLdStr global_4
  loc_CA0865: AryLock
  loc_CA0868: Ary1LdPr
  loc_CA0869: MemLdStr global_24
  loc_CA086C: AryLock
  loc_CA086F: Ary1LdRf
  loc_CA0870: FStR4 var_11C
  loc_CA0873: LitStr "    <td align=""right"" colspan=""8"">Subtotal "
  loc_CA0876: FMemLdR4 var_11C(0)
  loc_CA087B: ConcatStr
  loc_CA087C: FStStrNoPop var_C0
  loc_CA087F: LitStr "-"
  loc_CA0882: ConcatStr
  loc_CA0883: FStStrNoPop var_D4
  loc_CA0886: FMemLdR4 var_11C(4)
  loc_CA088B: ConcatStr
  loc_CA088C: FStStrNoPop var_D8
  loc_CA088F: LitStr " - Comprobantes: "
  loc_CA0892: ConcatStr
  loc_CA0893: FStStrNoPop var_120
  loc_CA0896: FMemLdR4 var_11C(108)
  loc_CA089B: ConcatStr
  loc_CA089C: FStStrNoPop var_124
  loc_CA089F: LitStr "</td>"
  loc_CA08A2: ConcatStr
  loc_CA08A3: CVarStr var_D0
  loc_CA08A6: PopAdLdVar
  loc_CA08A7: FLdPr Me
  loc_CA08AA: MemLdRfVar from_stack_1.global_60
  loc_CA08AD: LdPrVar
  loc_CA08AF: LateMemCall
  loc_CA08B5: FFreeStr var_C0 = "": var_D4 = "": var_D8 = "": var_120 = ""
  loc_CA08C2: FFree1Var var_D0 = ""
  loc_CA08C5: FMemLdRf DefiInjuTxt_KeyPress_A06538()
  loc_CA08CA: FStR4 var_128
  loc_CA08CD: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA08D0: FMemLdR4 var_128(0)
  loc_CA08D5: ConcatStr
  loc_CA08D6: FStStrNoPop var_C0
  loc_CA08D9: LitStr "</td>"
  loc_CA08DC: ConcatStr
  loc_CA08DD: CVarStr var_D0
  loc_CA08E0: PopAdLdVar
  loc_CA08E1: FLdPr Me
  loc_CA08E4: MemLdRfVar from_stack_1.global_60
  loc_CA08E7: LdPrVar
  loc_CA08E9: LateMemCall
  loc_CA08EF: FFree1Str var_C0
  loc_CA08F2: FFree1Var var_D0 = ""
  loc_CA08F5: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA08F8: FMemLdR4 var_128(4)
  loc_CA08FD: ConcatStr
  loc_CA08FE: FStStrNoPop var_C0
  loc_CA0901: LitStr "</td>"
  loc_CA0904: ConcatStr
  loc_CA0905: CVarStr var_D0
  loc_CA0908: PopAdLdVar
  loc_CA0909: FLdPr Me
  loc_CA090C: MemLdRfVar from_stack_1.global_60
  loc_CA090F: LdPrVar
  loc_CA0911: LateMemCall
  loc_CA0917: FFree1Str var_C0
  loc_CA091A: FFree1Var var_D0 = ""
  loc_CA091D: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA0920: FMemLdR4 var_128(8)
  loc_CA0925: ConcatStr
  loc_CA0926: FStStrNoPop var_C0
  loc_CA0929: LitStr "</td>"
  loc_CA092C: ConcatStr
  loc_CA092D: CVarStr var_D0
  loc_CA0930: PopAdLdVar
  loc_CA0931: FLdPr Me
  loc_CA0934: MemLdRfVar from_stack_1.global_60
  loc_CA0937: LdPrVar
  loc_CA0939: LateMemCall
  loc_CA093F: FFree1Str var_C0
  loc_CA0942: FFree1Var var_D0 = ""
  loc_CA0945: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA0948: FMemLdR4 var_128(12)
  loc_CA094D: ConcatStr
  loc_CA094E: FStStrNoPop var_C0
  loc_CA0951: LitStr "</td>"
  loc_CA0954: ConcatStr
  loc_CA0955: CVarStr var_D0
  loc_CA0958: PopAdLdVar
  loc_CA0959: FLdPr Me
  loc_CA095C: MemLdRfVar from_stack_1.global_60
  loc_CA095F: LdPrVar
  loc_CA0961: LateMemCall
  loc_CA0967: FFree1Str var_C0
  loc_CA096A: FFree1Var var_D0 = ""
  loc_CA096D: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA0970: FMemLdR4 var_128(16)
  loc_CA0975: ConcatStr
  loc_CA0976: FStStrNoPop var_C0
  loc_CA0979: LitStr "</td>"
  loc_CA097C: ConcatStr
  loc_CA097D: CVarStr var_D0
  loc_CA0980: PopAdLdVar
  loc_CA0981: FLdPr Me
  loc_CA0984: MemLdRfVar from_stack_1.global_60
  loc_CA0987: LdPrVar
  loc_CA0989: LateMemCall
  loc_CA098F: FFree1Str var_C0
  loc_CA0992: FFree1Var var_D0 = ""
  loc_CA0995: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA0998: FMemLdR4 var_128(20)
  loc_CA099D: ConcatStr
  loc_CA099E: FStStrNoPop var_C0
  loc_CA09A1: LitStr "</td>"
  loc_CA09A4: ConcatStr
  loc_CA09A5: CVarStr var_D0
  loc_CA09A8: PopAdLdVar
  loc_CA09A9: FLdPr Me
  loc_CA09AC: MemLdRfVar from_stack_1.global_60
  loc_CA09AF: LdPrVar
  loc_CA09B1: LateMemCall
  loc_CA09B7: FFree1Str var_C0
  loc_CA09BA: FFree1Var var_D0 = ""
  loc_CA09BD: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_CA09C0: FMemLdR4 var_128(24)
  loc_CA09C5: ConcatStr
  loc_CA09C6: FStStrNoPop var_C0
  loc_CA09C9: LitStr "</td>"
  loc_CA09CC: ConcatStr
  loc_CA09CD: CVarStr var_D0
  loc_CA09D0: PopAdLdVar
  loc_CA09D1: FLdPr Me
  loc_CA09D4: MemLdRfVar from_stack_1.global_60
  loc_CA09D7: LdPrVar
  loc_CA09D9: LateMemCall
  loc_CA09DF: FFree1Str var_C0
  loc_CA09E2: FFree1Var var_D0 = ""
  loc_CA09E5: LitI4 0
  loc_CA09EA: FStR4 var_128
  loc_CA09ED: LitVarStr var_AC, "     </tr>"
  loc_CA09F2: PopAdLdVar
  loc_CA09F3: FLdPr Me
  loc_CA09F6: MemLdRfVar from_stack_1.global_60
  loc_CA09F9: LdPrVar
  loc_CA09FB: LateMemCall
  loc_CA0A01: FMemLdI2 var_11C(76)
  loc_CA0A06: BranchF loc_CA0BAC
  loc_CA0A09: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_CA0A0E: PopAdLdVar
  loc_CA0A0F: FLdPr Me
  loc_CA0A12: MemLdRfVar from_stack_1.global_60
  loc_CA0A15: LdPrVar
  loc_CA0A17: LateMemCall
  loc_CA0A1D: LitStr "    <td align=""right"" colspan=""8"">Diferencias "
  loc_CA0A20: FMemLdR4 var_11C(0)
  loc_CA0A25: ConcatStr
  loc_CA0A26: FStStrNoPop var_C0
  loc_CA0A29: LitStr "-"
  loc_CA0A2C: ConcatStr
  loc_CA0A2D: FStStrNoPop var_D4
  loc_CA0A30: FMemLdR4 var_11C(4)
  loc_CA0A35: ConcatStr
  loc_CA0A36: FStStrNoPop var_D8
  loc_CA0A39: LitStr "</td>"
  loc_CA0A3C: ConcatStr
  loc_CA0A3D: CVarStr var_D0
  loc_CA0A40: PopAdLdVar
  loc_CA0A41: FLdPr Me
  loc_CA0A44: MemLdRfVar from_stack_1.global_60
  loc_CA0A47: LdPrVar
  loc_CA0A49: LateMemCall
  loc_CA0A4F: FFreeStr var_C0 = "": var_D4 = ""
  loc_CA0A58: FFree1Var var_D0 = ""
  loc_CA0A5B: FMemLdRf DefiInjuTxt_KeyPress_A06538()
  loc_CA0A60: FStR4 var_12C
  loc_CA0A63: LitStr vbNullString
  loc_CA0A66: LitI2_Byte 0
  loc_CA0A68: LitI2_Byte 0
  loc_CA0A6A: LitI2_Byte 0
  loc_CA0A6C: LitStr "right"
  loc_CA0A6F: FMemLdR4 var_12C(0)
  loc_CA0A74: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0A79: CVarStr var_D0
  loc_CA0A7C: PopAdLdVar
  loc_CA0A7D: FLdPr Me
  loc_CA0A80: MemLdRfVar from_stack_1.global_60
  loc_CA0A83: LdPrVar
  loc_CA0A85: LateMemCall
  loc_CA0A8B: FFree1Var var_D0 = ""
  loc_CA0A8E: LitStr vbNullString
  loc_CA0A91: LitI2_Byte 0
  loc_CA0A93: LitI2_Byte 0
  loc_CA0A95: LitI2_Byte 0
  loc_CA0A97: LitStr "right"
  loc_CA0A9A: FMemLdR4 var_12C(4)
  loc_CA0A9F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0AA4: CVarStr var_D0
  loc_CA0AA7: PopAdLdVar
  loc_CA0AA8: FLdPr Me
  loc_CA0AAB: MemLdRfVar from_stack_1.global_60
  loc_CA0AAE: LdPrVar
  loc_CA0AB0: LateMemCall
  loc_CA0AB6: FFree1Var var_D0 = ""
  loc_CA0AB9: LitStr vbNullString
  loc_CA0ABC: LitI2_Byte 0
  loc_CA0ABE: LitI2_Byte 0
  loc_CA0AC0: LitI2_Byte 0
  loc_CA0AC2: LitStr "right"
  loc_CA0AC5: FMemLdR4 var_12C(8)
  loc_CA0ACA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0ACF: CVarStr var_D0
  loc_CA0AD2: PopAdLdVar
  loc_CA0AD3: FLdPr Me
  loc_CA0AD6: MemLdRfVar from_stack_1.global_60
  loc_CA0AD9: LdPrVar
  loc_CA0ADB: LateMemCall
  loc_CA0AE1: FFree1Var var_D0 = ""
  loc_CA0AE4: LitStr vbNullString
  loc_CA0AE7: LitI2_Byte 0
  loc_CA0AE9: LitI2_Byte 0
  loc_CA0AEB: LitI2_Byte 0
  loc_CA0AED: LitStr "right"
  loc_CA0AF0: FMemLdR4 var_12C(12)
  loc_CA0AF5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0AFA: CVarStr var_D0
  loc_CA0AFD: PopAdLdVar
  loc_CA0AFE: FLdPr Me
  loc_CA0B01: MemLdRfVar from_stack_1.global_60
  loc_CA0B04: LdPrVar
  loc_CA0B06: LateMemCall
  loc_CA0B0C: FFree1Var var_D0 = ""
  loc_CA0B0F: LitStr vbNullString
  loc_CA0B12: LitI2_Byte 0
  loc_CA0B14: LitI2_Byte 0
  loc_CA0B16: LitI2_Byte 0
  loc_CA0B18: LitStr "right"
  loc_CA0B1B: FMemLdR4 var_12C(16)
  loc_CA0B20: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0B25: CVarStr var_D0
  loc_CA0B28: PopAdLdVar
  loc_CA0B29: FLdPr Me
  loc_CA0B2C: MemLdRfVar from_stack_1.global_60
  loc_CA0B2F: LdPrVar
  loc_CA0B31: LateMemCall
  loc_CA0B37: FFree1Var var_D0 = ""
  loc_CA0B3A: LitStr vbNullString
  loc_CA0B3D: LitI2_Byte 0
  loc_CA0B3F: LitI2_Byte 0
  loc_CA0B41: LitI2_Byte 0
  loc_CA0B43: LitStr "right"
  loc_CA0B46: FMemLdR4 var_12C(20)
  loc_CA0B4B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0B50: CVarStr var_D0
  loc_CA0B53: PopAdLdVar
  loc_CA0B54: FLdPr Me
  loc_CA0B57: MemLdRfVar from_stack_1.global_60
  loc_CA0B5A: LdPrVar
  loc_CA0B5C: LateMemCall
  loc_CA0B62: FFree1Var var_D0 = ""
  loc_CA0B65: LitStr vbNullString
  loc_CA0B68: LitI2_Byte 0
  loc_CA0B6A: LitI2_Byte 0
  loc_CA0B6C: LitI2_Byte 0
  loc_CA0B6E: LitStr "right"
  loc_CA0B71: FMemLdR4 var_12C(24)
  loc_CA0B76: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0B7B: CVarStr var_D0
  loc_CA0B7E: PopAdLdVar
  loc_CA0B7F: FLdPr Me
  loc_CA0B82: MemLdRfVar from_stack_1.global_60
  loc_CA0B85: LdPrVar
  loc_CA0B87: LateMemCall
  loc_CA0B8D: FFree1Var var_D0 = ""
  loc_CA0B90: LitI4 0
  loc_CA0B95: FStR4 var_12C
  loc_CA0B98: LitVarStr var_AC, "     </tr>"
  loc_CA0B9D: PopAdLdVar
  loc_CA0B9E: FLdPr Me
  loc_CA0BA1: MemLdRfVar from_stack_1.global_60
  loc_CA0BA4: LdPrVar
  loc_CA0BA6: LateMemCall
  loc_CA0BAC: LitI4 0
  loc_CA0BB1: FStR4 var_11C
  loc_CA0BB4: AryUnlock
  loc_CA0BB7: AryUnlock
  loc_CA0BBA: AryUnlock
  loc_CA0BBD: FLdPr Me
  loc_CA0BC0: MemLdRfVar from_stack_1.global_136
  loc_CA0BC3: NextI2 var_DC, loc_CA0295
  loc_CA0BC8: FLdPr Me
  loc_CA0BCB: MemLdI2 global_134
  loc_CA0BCE: CI4UI1
  loc_CA0BCF: FLdPr Me
  loc_CA0BD2: MemLdI2 global_132
  loc_CA0BD5: CI4UI1
  loc_CA0BD6: FLdPr Me
  loc_CA0BD9: MemLdStr global_92
  loc_CA0BDC: AryLock
  loc_CA0BDF: Ary1LdPr
  loc_CA0BE0: MemLdStr global_4
  loc_CA0BE3: AryLock
  loc_CA0BE6: Ary1LdRf
  loc_CA0BE7: FStR4 var_138
  loc_CA0BEA: LitVarStr var_AC, "  <tr align=""right"" class=""LineaDato"">"
  loc_CA0BEF: PopAdLdVar
  loc_CA0BF0: FLdPr Me
  loc_CA0BF3: MemLdRfVar from_stack_1.global_60
  loc_CA0BF6: LdPrVar
  loc_CA0BF8: LateMemCall
  loc_CA0BFE: LitVarStr var_AC, "    <td colspan=""8""><table width=""100" & Chr(37) & """ border=""0"">"
  loc_CA0C03: PopAdLdVar
  loc_CA0C04: FLdPr Me
  loc_CA0C07: MemLdRfVar from_stack_1.global_60
  loc_CA0C0A: LdPrVar
  loc_CA0C0C: LateMemCall
  loc_CA0C12: LitVarStr var_AC, "        <tr>"
  loc_CA0C17: PopAdLdVar
  loc_CA0C18: FLdPr Me
  loc_CA0C1B: MemLdRfVar from_stack_1.global_60
  loc_CA0C1E: LdPrVar
  loc_CA0C20: LateMemCall
  loc_CA0C26: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA0C2B: PopAdLdVar
  loc_CA0C2C: FLdPr Me
  loc_CA0C2F: MemLdRfVar from_stack_1.global_60
  loc_CA0C32: LdPrVar
  loc_CA0C34: LateMemCall
  loc_CA0C3A: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA0C3F: PopAdLdVar
  loc_CA0C40: FLdPr Me
  loc_CA0C43: MemLdRfVar from_stack_1.global_60
  loc_CA0C46: LdPrVar
  loc_CA0C48: LateMemCall
  loc_CA0C4E: LitVarStr var_AC, "          <td class=""SubTotales"">SUBTOTAL</td>"
  loc_CA0C53: PopAdLdVar
  loc_CA0C54: FLdPr Me
  loc_CA0C57: MemLdRfVar from_stack_1.global_60
  loc_CA0C5A: LdPrVar
  loc_CA0C5C: LateMemCall
  loc_CA0C62: LitStr "          <td class=""SubTotales"">Fecha de Env&iacute;o: "
  loc_CA0C65: FLdPr Me
  loc_CA0C68: MemLdI2 global_132
  loc_CA0C6B: CI4UI1
  loc_CA0C6C: FLdPr Me
  loc_CA0C6F: MemLdStr global_92
  loc_CA0C72: Ary1LdPr
  loc_CA0C73: MemLdStr global_0
  loc_CA0C76: ConcatStr
  loc_CA0C77: FStStrNoPop var_C0
  loc_CA0C7A: LitStr "</td>"
  loc_CA0C7D: ConcatStr
  loc_CA0C7E: CVarStr var_D0
  loc_CA0C81: PopAdLdVar
  loc_CA0C82: FLdPr Me
  loc_CA0C85: MemLdRfVar from_stack_1.global_60
  loc_CA0C88: LdPrVar
  loc_CA0C8A: LateMemCall
  loc_CA0C90: FFree1Str var_C0
  loc_CA0C93: FFree1Var var_D0 = ""
  loc_CA0C96: LitStr "          <td class=""SubTotales"">Grupo: "
  loc_CA0C99: FMemLdR4 var_138(0)
  loc_CA0C9E: ConcatStr
  loc_CA0C9F: FStStrNoPop var_C0
  loc_CA0CA2: LitStr "</td>"
  loc_CA0CA5: ConcatStr
  loc_CA0CA6: CVarStr var_D0
  loc_CA0CA9: PopAdLdVar
  loc_CA0CAA: FLdPr Me
  loc_CA0CAD: MemLdRfVar from_stack_1.global_60
  loc_CA0CB0: LdPrVar
  loc_CA0CB2: LateMemCall
  loc_CA0CB8: FFree1Str var_C0
  loc_CA0CBB: FFree1Var var_D0 = ""
  loc_CA0CBE: LitStr "          <td class=""SubTotales"">Comprobantes: "
  loc_CA0CC1: FMemLdR4 var_138(68)
  loc_CA0CC6: ConcatStr
  loc_CA0CC7: FStStrNoPop var_C0
  loc_CA0CCA: LitStr "</td>"
  loc_CA0CCD: ConcatStr
  loc_CA0CCE: CVarStr var_D0
  loc_CA0CD1: PopAdLdVar
  loc_CA0CD2: FLdPr Me
  loc_CA0CD5: MemLdRfVar from_stack_1.global_60
  loc_CA0CD8: LdPrVar
  loc_CA0CDA: LateMemCall
  loc_CA0CE0: FFree1Str var_C0
  loc_CA0CE3: FFree1Var var_D0 = ""
  loc_CA0CE6: LitVarStr var_AC, "        </tr>"
  loc_CA0CEB: PopAdLdVar
  loc_CA0CEC: FLdPr Me
  loc_CA0CEF: MemLdRfVar from_stack_1.global_60
  loc_CA0CF2: LdPrVar
  loc_CA0CF4: LateMemCall
  loc_CA0CFA: LitVarStr var_AC, "    </table></td>"
  loc_CA0CFF: PopAdLdVar
  loc_CA0D00: FLdPr Me
  loc_CA0D03: MemLdRfVar from_stack_1.global_60
  loc_CA0D06: LdPrVar
  loc_CA0D08: LateMemCall
  loc_CA0D0E: FMemLdRf 0
  loc_CA0D13: FStR4 var_13C
  loc_CA0D16: LitStr "    <td class=""SubTotales"">"
  loc_CA0D19: FMemLdR4 var_13C(0)
  loc_CA0D1E: ConcatStr
  loc_CA0D1F: FStStrNoPop var_C0
  loc_CA0D22: LitStr "</td>"
  loc_CA0D25: ConcatStr
  loc_CA0D26: CVarStr var_D0
  loc_CA0D29: PopAdLdVar
  loc_CA0D2A: FLdPr Me
  loc_CA0D2D: MemLdRfVar from_stack_1.global_60
  loc_CA0D30: LdPrVar
  loc_CA0D32: LateMemCall
  loc_CA0D38: FFree1Str var_C0
  loc_CA0D3B: FFree1Var var_D0 = ""
  loc_CA0D3E: LitStr "    <td class=""SubTotales"">"
  loc_CA0D41: FMemLdR4 var_13C(4)
  loc_CA0D46: ConcatStr
  loc_CA0D47: FStStrNoPop var_C0
  loc_CA0D4A: LitStr "</td>"
  loc_CA0D4D: ConcatStr
  loc_CA0D4E: CVarStr var_D0
  loc_CA0D51: PopAdLdVar
  loc_CA0D52: FLdPr Me
  loc_CA0D55: MemLdRfVar from_stack_1.global_60
  loc_CA0D58: LdPrVar
  loc_CA0D5A: LateMemCall
  loc_CA0D60: FFree1Str var_C0
  loc_CA0D63: FFree1Var var_D0 = ""
  loc_CA0D66: LitStr "    <td class=""SubTotales"">"
  loc_CA0D69: FMemLdR4 var_13C(8)
  loc_CA0D6E: ConcatStr
  loc_CA0D6F: FStStrNoPop var_C0
  loc_CA0D72: LitStr "</td>"
  loc_CA0D75: ConcatStr
  loc_CA0D76: CVarStr var_D0
  loc_CA0D79: PopAdLdVar
  loc_CA0D7A: FLdPr Me
  loc_CA0D7D: MemLdRfVar from_stack_1.global_60
  loc_CA0D80: LdPrVar
  loc_CA0D82: LateMemCall
  loc_CA0D88: FFree1Str var_C0
  loc_CA0D8B: FFree1Var var_D0 = ""
  loc_CA0D8E: LitStr "    <td class=""SubTotales"">"
  loc_CA0D91: FMemLdR4 var_13C(12)
  loc_CA0D96: ConcatStr
  loc_CA0D97: FStStrNoPop var_C0
  loc_CA0D9A: LitStr "</td>"
  loc_CA0D9D: ConcatStr
  loc_CA0D9E: CVarStr var_D0
  loc_CA0DA1: PopAdLdVar
  loc_CA0DA2: FLdPr Me
  loc_CA0DA5: MemLdRfVar from_stack_1.global_60
  loc_CA0DA8: LdPrVar
  loc_CA0DAA: LateMemCall
  loc_CA0DB0: FFree1Str var_C0
  loc_CA0DB3: FFree1Var var_D0 = ""
  loc_CA0DB6: LitStr "    <td class=""SubTotales"">"
  loc_CA0DB9: FMemLdR4 var_13C(16)
  loc_CA0DBE: ConcatStr
  loc_CA0DBF: FStStrNoPop var_C0
  loc_CA0DC2: LitStr "</td>"
  loc_CA0DC5: ConcatStr
  loc_CA0DC6: CVarStr var_D0
  loc_CA0DC9: PopAdLdVar
  loc_CA0DCA: FLdPr Me
  loc_CA0DCD: MemLdRfVar from_stack_1.global_60
  loc_CA0DD0: LdPrVar
  loc_CA0DD2: LateMemCall
  loc_CA0DD8: FFree1Str var_C0
  loc_CA0DDB: FFree1Var var_D0 = ""
  loc_CA0DDE: LitStr "    <td class=""SubTotales"">"
  loc_CA0DE1: FMemLdR4 var_13C(20)
  loc_CA0DE6: ConcatStr
  loc_CA0DE7: FStStrNoPop var_C0
  loc_CA0DEA: LitStr "</td>"
  loc_CA0DED: ConcatStr
  loc_CA0DEE: CVarStr var_D0
  loc_CA0DF1: PopAdLdVar
  loc_CA0DF2: FLdPr Me
  loc_CA0DF5: MemLdRfVar from_stack_1.global_60
  loc_CA0DF8: LdPrVar
  loc_CA0DFA: LateMemCall
  loc_CA0E00: FFree1Str var_C0
  loc_CA0E03: FFree1Var var_D0 = ""
  loc_CA0E06: LitStr "    <td class=""SubTotales"">"
  loc_CA0E09: FMemLdR4 var_13C(24)
  loc_CA0E0E: ConcatStr
  loc_CA0E0F: FStStrNoPop var_C0
  loc_CA0E12: LitStr "</td>"
  loc_CA0E15: ConcatStr
  loc_CA0E16: CVarStr var_D0
  loc_CA0E19: PopAdLdVar
  loc_CA0E1A: FLdPr Me
  loc_CA0E1D: MemLdRfVar from_stack_1.global_60
  loc_CA0E20: LdPrVar
  loc_CA0E22: LateMemCall
  loc_CA0E28: FFree1Str var_C0
  loc_CA0E2B: FFree1Var var_D0 = ""
  loc_CA0E2E: LitI4 0
  loc_CA0E33: FStR4 var_13C
  loc_CA0E36: LitVarStr var_AC, "  </tr>"
  loc_CA0E3B: PopAdLdVar
  loc_CA0E3C: FLdPr Me
  loc_CA0E3F: MemLdRfVar from_stack_1.global_60
  loc_CA0E42: LdPrVar
  loc_CA0E44: LateMemCall
  loc_CA0E4A: FMemLdI2 var_138(56)
  loc_CA0E4F: BranchF loc_CA1083
  loc_CA0E52: LitVarStr var_AC, "  <tr align=""right"" class=""LineaDato"">"
  loc_CA0E57: PopAdLdVar
  loc_CA0E58: FLdPr Me
  loc_CA0E5B: MemLdRfVar from_stack_1.global_60
  loc_CA0E5E: LdPrVar
  loc_CA0E60: LateMemCall
  loc_CA0E66: LitVarStr var_AC, "    <th colspan=""8""><table width=""100" & Chr(37) & """ border=""0"">"
  loc_CA0E6B: PopAdLdVar
  loc_CA0E6C: FLdPr Me
  loc_CA0E6F: MemLdRfVar from_stack_1.global_60
  loc_CA0E72: LdPrVar
  loc_CA0E74: LateMemCall
  loc_CA0E7A: LitVarStr var_AC, "        <tr>"
  loc_CA0E7F: PopAdLdVar
  loc_CA0E80: FLdPr Me
  loc_CA0E83: MemLdRfVar from_stack_1.global_60
  loc_CA0E86: LdPrVar
  loc_CA0E88: LateMemCall
  loc_CA0E8E: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA0E93: PopAdLdVar
  loc_CA0E94: FLdPr Me
  loc_CA0E97: MemLdRfVar from_stack_1.global_60
  loc_CA0E9A: LdPrVar
  loc_CA0E9C: LateMemCall
  loc_CA0EA2: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA0EA7: PopAdLdVar
  loc_CA0EA8: FLdPr Me
  loc_CA0EAB: MemLdRfVar from_stack_1.global_60
  loc_CA0EAE: LdPrVar
  loc_CA0EB0: LateMemCall
  loc_CA0EB6: LitVarStr var_AC, "          <td class=""LineaDato"">DIFERENCIAS</td>"
  loc_CA0EBB: PopAdLdVar
  loc_CA0EBC: FLdPr Me
  loc_CA0EBF: MemLdRfVar from_stack_1.global_60
  loc_CA0EC2: LdPrVar
  loc_CA0EC4: LateMemCall
  loc_CA0ECA: LitStr "          <td class=""LineaDato"">Fecha de Env&iacute;o: "
  loc_CA0ECD: FLdPr Me
  loc_CA0ED0: MemLdI2 global_132
  loc_CA0ED3: CI4UI1
  loc_CA0ED4: FLdPr Me
  loc_CA0ED7: MemLdStr global_92
  loc_CA0EDA: Ary1LdPr
  loc_CA0EDB: MemLdStr global_0
  loc_CA0EDE: ConcatStr
  loc_CA0EDF: FStStrNoPop var_C0
  loc_CA0EE2: LitStr "</td>"
  loc_CA0EE5: ConcatStr
  loc_CA0EE6: CVarStr var_D0
  loc_CA0EE9: PopAdLdVar
  loc_CA0EEA: FLdPr Me
  loc_CA0EED: MemLdRfVar from_stack_1.global_60
  loc_CA0EF0: LdPrVar
  loc_CA0EF2: LateMemCall
  loc_CA0EF8: FFree1Str var_C0
  loc_CA0EFB: FFree1Var var_D0 = ""
  loc_CA0EFE: LitStr "          <td class=""LineaDato"">Grupo: "
  loc_CA0F01: FMemLdR4 var_138(0)
  loc_CA0F06: ConcatStr
  loc_CA0F07: FStStrNoPop var_C0
  loc_CA0F0A: LitStr "</td>"
  loc_CA0F0D: ConcatStr
  loc_CA0F0E: CVarStr var_D0
  loc_CA0F11: PopAdLdVar
  loc_CA0F12: FLdPr Me
  loc_CA0F15: MemLdRfVar from_stack_1.global_60
  loc_CA0F18: LdPrVar
  loc_CA0F1A: LateMemCall
  loc_CA0F20: FFree1Str var_C0
  loc_CA0F23: FFree1Var var_D0 = ""
  loc_CA0F26: LitVarStr var_AC, "        </tr>"
  loc_CA0F2B: PopAdLdVar
  loc_CA0F2C: FLdPr Me
  loc_CA0F2F: MemLdRfVar from_stack_1.global_60
  loc_CA0F32: LdPrVar
  loc_CA0F34: LateMemCall
  loc_CA0F3A: LitVarStr var_AC, "    </table></th>"
  loc_CA0F3F: PopAdLdVar
  loc_CA0F40: FLdPr Me
  loc_CA0F43: MemLdRfVar from_stack_1.global_60
  loc_CA0F46: LdPrVar
  loc_CA0F48: LateMemCall
  loc_CA0F4E: LitStr vbNullString
  loc_CA0F51: LitI2_Byte 0
  loc_CA0F53: LitI2_Byte 0
  loc_CA0F55: LitI2_Byte 0
  loc_CA0F57: LitStr "center"
  loc_CA0F5A: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA0F5D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0F62: CVarStr var_D0
  loc_CA0F65: PopAdLdVar
  loc_CA0F66: FLdPr Me
  loc_CA0F69: MemLdRfVar from_stack_1.global_60
  loc_CA0F6C: LdPrVar
  loc_CA0F6E: LateMemCall
  loc_CA0F74: FFree1Var var_D0 = ""
  loc_CA0F77: LitStr vbNullString
  loc_CA0F7A: LitI2_Byte 0
  loc_CA0F7C: LitI2_Byte 0
  loc_CA0F7E: LitI2_Byte 0
  loc_CA0F80: LitStr "center"
  loc_CA0F83: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA0F86: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0F8B: CVarStr var_D0
  loc_CA0F8E: PopAdLdVar
  loc_CA0F8F: FLdPr Me
  loc_CA0F92: MemLdRfVar from_stack_1.global_60
  loc_CA0F95: LdPrVar
  loc_CA0F97: LateMemCall
  loc_CA0F9D: FFree1Var var_D0 = ""
  loc_CA0FA0: LitStr vbNullString
  loc_CA0FA3: LitI2_Byte 0
  loc_CA0FA5: LitI2_Byte 0
  loc_CA0FA7: LitI2_Byte 0
  loc_CA0FA9: LitStr "center"
  loc_CA0FAC: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA0FAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0FB4: CVarStr var_D0
  loc_CA0FB7: PopAdLdVar
  loc_CA0FB8: FLdPr Me
  loc_CA0FBB: MemLdRfVar from_stack_1.global_60
  loc_CA0FBE: LdPrVar
  loc_CA0FC0: LateMemCall
  loc_CA0FC6: FFree1Var var_D0 = ""
  loc_CA0FC9: LitStr vbNullString
  loc_CA0FCC: LitI2_Byte 0
  loc_CA0FCE: LitI2_Byte 0
  loc_CA0FD0: LitI2_Byte 0
  loc_CA0FD2: LitStr "center"
  loc_CA0FD5: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA0FD8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA0FDD: CVarStr var_D0
  loc_CA0FE0: PopAdLdVar
  loc_CA0FE1: FLdPr Me
  loc_CA0FE4: MemLdRfVar from_stack_1.global_60
  loc_CA0FE7: LdPrVar
  loc_CA0FE9: LateMemCall
  loc_CA0FEF: FFree1Var var_D0 = ""
  loc_CA0FF2: LitStr vbNullString
  loc_CA0FF5: LitI2_Byte 0
  loc_CA0FF7: LitI2_Byte 0
  loc_CA0FF9: LitI2_Byte 0
  loc_CA0FFB: LitStr "center"
  loc_CA0FFE: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA1001: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1006: CVarStr var_D0
  loc_CA1009: PopAdLdVar
  loc_CA100A: FLdPr Me
  loc_CA100D: MemLdRfVar from_stack_1.global_60
  loc_CA1010: LdPrVar
  loc_CA1012: LateMemCall
  loc_CA1018: FFree1Var var_D0 = ""
  loc_CA101B: LitStr vbNullString
  loc_CA101E: LitI2_Byte 0
  loc_CA1020: LitI2_Byte 0
  loc_CA1022: LitI2_Byte 0
  loc_CA1024: LitStr "center"
  loc_CA1027: LitStr "<hr width=""10" & Chr(37) & """"
  loc_CA102A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA102F: CVarStr var_D0
  loc_CA1032: PopAdLdVar
  loc_CA1033: FLdPr Me
  loc_CA1036: MemLdRfVar from_stack_1.global_60
  loc_CA1039: LdPrVar
  loc_CA103B: LateMemCall
  loc_CA1041: FFree1Var var_D0 = ""
  loc_CA1044: LitStr vbNullString
  loc_CA1047: LitI2_Byte 0
  loc_CA1049: LitI2_Byte 0
  loc_CA104B: LitI2_Byte 0
  loc_CA104D: LitStr "right"
  loc_CA1050: FMemLdR4 var_138(64)
  loc_CA1055: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA105A: CVarStr var_D0
  loc_CA105D: PopAdLdVar
  loc_CA105E: FLdPr Me
  loc_CA1061: MemLdRfVar from_stack_1.global_60
  loc_CA1064: LdPrVar
  loc_CA1066: LateMemCall
  loc_CA106C: FFree1Var var_D0 = ""
  loc_CA106F: LitVarStr var_AC, "  </tr>"
  loc_CA1074: PopAdLdVar
  loc_CA1075: FLdPr Me
  loc_CA1078: MemLdRfVar from_stack_1.global_60
  loc_CA107B: LdPrVar
  loc_CA107D: LateMemCall
  loc_CA1083: LitI4 0
  loc_CA1088: FStR4 var_138
  loc_CA108B: AryUnlock
  loc_CA108E: AryUnlock
  loc_CA1091: FLdPr Me
  loc_CA1094: MemLdRfVar from_stack_1.global_134
  loc_CA1097: NextI2 var_90, loc_CA00AC
  loc_CA109C: FLdPr Me
  loc_CA109F: MemLdStr global_92
  loc_CA10A2: LitI2_Byte 1
  loc_CA10A4: FnUBound
  loc_CA10A6: LitI4 1
  loc_CA10AB: GtI4
  loc_CA10AC: BranchF loc_CA12D2
  loc_CA10AF: FLdPr Me
  loc_CA10B2: MemLdI2 global_132
  loc_CA10B5: CI4UI1
  loc_CA10B6: FLdPr Me
  loc_CA10B9: MemLdStr global_92
  loc_CA10BC: AryLock
  loc_CA10BF: Ary1LdRf
  loc_CA10C0: FStR4 var_144
  loc_CA10C3: LitVarStr var_AC, "  <tr align=""right"" class=""LineaDato"">"
  loc_CA10C8: PopAdLdVar
  loc_CA10C9: FLdPr Me
  loc_CA10CC: MemLdRfVar from_stack_1.global_60
  loc_CA10CF: LdPrVar
  loc_CA10D1: LateMemCall
  loc_CA10D7: LitVarStr var_AC, "    <td colspan=""8""><table width=""100" & Chr(37) & """ border=""0"">"
  loc_CA10DC: PopAdLdVar
  loc_CA10DD: FLdPr Me
  loc_CA10E0: MemLdRfVar from_stack_1.global_60
  loc_CA10E3: LdPrVar
  loc_CA10E5: LateMemCall
  loc_CA10EB: LitVarStr var_AC, "        <tr>"
  loc_CA10F0: PopAdLdVar
  loc_CA10F1: FLdPr Me
  loc_CA10F4: MemLdRfVar from_stack_1.global_60
  loc_CA10F7: LdPrVar
  loc_CA10F9: LateMemCall
  loc_CA10FF: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA1104: PopAdLdVar
  loc_CA1105: FLdPr Me
  loc_CA1108: MemLdRfVar from_stack_1.global_60
  loc_CA110B: LdPrVar
  loc_CA110D: LateMemCall
  loc_CA1113: LitVarStr var_AC, "          <td class=""SubTotales"">SUBTOTAL</td>"
  loc_CA1118: PopAdLdVar
  loc_CA1119: FLdPr Me
  loc_CA111C: MemLdRfVar from_stack_1.global_60
  loc_CA111F: LdPrVar
  loc_CA1121: LateMemCall
  loc_CA1127: LitStr "          <td class=""SubTotales"">Fecha de Env&iacute;o: "
  loc_CA112A: FMemLdR4 var_144(0)
  loc_CA112F: ConcatStr
  loc_CA1130: FStStrNoPop var_C0
  loc_CA1133: LitStr "</td>"
  loc_CA1136: ConcatStr
  loc_CA1137: CVarStr var_D0
  loc_CA113A: PopAdLdVar
  loc_CA113B: FLdPr Me
  loc_CA113E: MemLdRfVar from_stack_1.global_60
  loc_CA1141: LdPrVar
  loc_CA1143: LateMemCall
  loc_CA1149: FFree1Str var_C0
  loc_CA114C: FFree1Var var_D0 = ""
  loc_CA114F: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA1154: PopAdLdVar
  loc_CA1155: FLdPr Me
  loc_CA1158: MemLdRfVar from_stack_1.global_60
  loc_CA115B: LdPrVar
  loc_CA115D: LateMemCall
  loc_CA1163: LitVarStr var_AC, "        </tr>"
  loc_CA1168: PopAdLdVar
  loc_CA1169: FLdPr Me
  loc_CA116C: MemLdRfVar from_stack_1.global_60
  loc_CA116F: LdPrVar
  loc_CA1171: LateMemCall
  loc_CA1177: LitVarStr var_AC, "    </table></td>"
  loc_CA117C: PopAdLdVar
  loc_CA117D: FLdPr Me
  loc_CA1180: MemLdRfVar from_stack_1.global_60
  loc_CA1183: LdPrVar
  loc_CA1185: LateMemCall
  loc_CA118B: FMemLdRf unk_4E4501
  loc_CA1190: FStR4 var_148
  loc_CA1193: LitStr "    <td class=""SubTotales"">"
  loc_CA1196: FMemLdR4 var_148(0)
  loc_CA119B: ConcatStr
  loc_CA119C: FStStrNoPop var_C0
  loc_CA119F: LitStr "</td>"
  loc_CA11A2: ConcatStr
  loc_CA11A3: CVarStr var_D0
  loc_CA11A6: PopAdLdVar
  loc_CA11A7: FLdPr Me
  loc_CA11AA: MemLdRfVar from_stack_1.global_60
  loc_CA11AD: LdPrVar
  loc_CA11AF: LateMemCall
  loc_CA11B5: FFree1Str var_C0
  loc_CA11B8: FFree1Var var_D0 = ""
  loc_CA11BB: LitStr "    <td class=""SubTotales"">"
  loc_CA11BE: FMemLdR4 var_148(4)
  loc_CA11C3: ConcatStr
  loc_CA11C4: FStStrNoPop var_C0
  loc_CA11C7: LitStr "</td>"
  loc_CA11CA: ConcatStr
  loc_CA11CB: CVarStr var_D0
  loc_CA11CE: PopAdLdVar
  loc_CA11CF: FLdPr Me
  loc_CA11D2: MemLdRfVar from_stack_1.global_60
  loc_CA11D5: LdPrVar
  loc_CA11D7: LateMemCall
  loc_CA11DD: FFree1Str var_C0
  loc_CA11E0: FFree1Var var_D0 = ""
  loc_CA11E3: LitStr "    <td class=""SubTotales"">"
  loc_CA11E6: FMemLdR4 var_148(8)
  loc_CA11EB: ConcatStr
  loc_CA11EC: FStStrNoPop var_C0
  loc_CA11EF: LitStr "</td>"
  loc_CA11F2: ConcatStr
  loc_CA11F3: CVarStr var_D0
  loc_CA11F6: PopAdLdVar
  loc_CA11F7: FLdPr Me
  loc_CA11FA: MemLdRfVar from_stack_1.global_60
  loc_CA11FD: LdPrVar
  loc_CA11FF: LateMemCall
  loc_CA1205: FFree1Str var_C0
  loc_CA1208: FFree1Var var_D0 = ""
  loc_CA120B: LitStr "    <td class=""SubTotales"">"
  loc_CA120E: FMemLdR4 var_148(12)
  loc_CA1213: ConcatStr
  loc_CA1214: FStStrNoPop var_C0
  loc_CA1217: LitStr "</td>"
  loc_CA121A: ConcatStr
  loc_CA121B: CVarStr var_D0
  loc_CA121E: PopAdLdVar
  loc_CA121F: FLdPr Me
  loc_CA1222: MemLdRfVar from_stack_1.global_60
  loc_CA1225: LdPrVar
  loc_CA1227: LateMemCall
  loc_CA122D: FFree1Str var_C0
  loc_CA1230: FFree1Var var_D0 = ""
  loc_CA1233: LitStr "    <td class=""SubTotales"">"
  loc_CA1236: FMemLdR4 var_148(16)
  loc_CA123B: ConcatStr
  loc_CA123C: FStStrNoPop var_C0
  loc_CA123F: LitStr "</td>"
  loc_CA1242: ConcatStr
  loc_CA1243: CVarStr var_D0
  loc_CA1246: PopAdLdVar
  loc_CA1247: FLdPr Me
  loc_CA124A: MemLdRfVar from_stack_1.global_60
  loc_CA124D: LdPrVar
  loc_CA124F: LateMemCall
  loc_CA1255: FFree1Str var_C0
  loc_CA1258: FFree1Var var_D0 = ""
  loc_CA125B: LitStr "    <td class=""SubTotales"">"
  loc_CA125E: FMemLdR4 var_148(20)
  loc_CA1263: ConcatStr
  loc_CA1264: FStStrNoPop var_C0
  loc_CA1267: LitStr "</td>"
  loc_CA126A: ConcatStr
  loc_CA126B: CVarStr var_D0
  loc_CA126E: PopAdLdVar
  loc_CA126F: FLdPr Me
  loc_CA1272: MemLdRfVar from_stack_1.global_60
  loc_CA1275: LdPrVar
  loc_CA1277: LateMemCall
  loc_CA127D: FFree1Str var_C0
  loc_CA1280: FFree1Var var_D0 = ""
  loc_CA1283: LitStr "    <td class=""SubTotales"">"
  loc_CA1286: FMemLdR4 var_148(24)
  loc_CA128B: ConcatStr
  loc_CA128C: FStStrNoPop var_C0
  loc_CA128F: LitStr "</td>"
  loc_CA1292: ConcatStr
  loc_CA1293: CVarStr var_D0
  loc_CA1296: PopAdLdVar
  loc_CA1297: FLdPr Me
  loc_CA129A: MemLdRfVar from_stack_1.global_60
  loc_CA129D: LdPrVar
  loc_CA129F: LateMemCall
  loc_CA12A5: FFree1Str var_C0
  loc_CA12A8: FFree1Var var_D0 = ""
  loc_CA12AB: LitI4 0
  loc_CA12B0: FStR4 var_148
  loc_CA12B3: LitVarStr var_AC, "     </tr>"
  loc_CA12B8: PopAdLdVar
  loc_CA12B9: FLdPr Me
  loc_CA12BC: MemLdRfVar from_stack_1.global_60
  loc_CA12BF: LdPrVar
  loc_CA12C1: LateMemCall
  loc_CA12C7: LitI4 0
  loc_CA12CC: FStR4 var_144
  loc_CA12CF: AryUnlock
  loc_CA12D2: FLdPr Me
  loc_CA12D5: MemLdRfVar from_stack_1.global_132
  loc_CA12D8: NextI2 var_8C, loc_CA0088
  loc_CA12DD: LitVarStr var_AC, "  <tr align=""right"" class=""Totales"">"
  loc_CA12E2: PopAdLdVar
  loc_CA12E3: FLdPr Me
  loc_CA12E6: MemLdRfVar from_stack_1.global_60
  loc_CA12E9: LdPrVar
  loc_CA12EB: LateMemCall
  loc_CA12F1: LitVarStr var_AC, "    <td colspan=""8"" class=""Totales""><table width=""100" & Chr(37) & """ border=""0"" class=""Totales"">"
  loc_CA12F6: PopAdLdVar
  loc_CA12F7: FLdPr Me
  loc_CA12FA: MemLdRfVar from_stack_1.global_60
  loc_CA12FD: LdPrVar
  loc_CA12FF: LateMemCall
  loc_CA1305: LitVarStr var_AC, "        <tr>"
  loc_CA130A: PopAdLdVar
  loc_CA130B: FLdPr Me
  loc_CA130E: MemLdRfVar from_stack_1.global_60
  loc_CA1311: LdPrVar
  loc_CA1313: LateMemCall
  loc_CA1319: LitVarStr var_AC, "          <td>TOTAL GENERAL</td>"
  loc_CA131E: PopAdLdVar
  loc_CA131F: FLdPr Me
  loc_CA1322: MemLdRfVar from_stack_1.global_60
  loc_CA1325: LdPrVar
  loc_CA1327: LateMemCall
  loc_CA132D: LitVarStr var_AC, "          <td>&nbsp;</td>"
  loc_CA1332: PopAdLdVar
  loc_CA1333: FLdPr Me
  loc_CA1336: MemLdRfVar from_stack_1.global_60
  loc_CA1339: LdPrVar
  loc_CA133B: LateMemCall
  loc_CA1341: LitVarStr var_AC, "        </tr>"
  loc_CA1346: PopAdLdVar
  loc_CA1347: FLdPr Me
  loc_CA134A: MemLdRfVar from_stack_1.global_60
  loc_CA134D: LdPrVar
  loc_CA134F: LateMemCall
  loc_CA1355: LitVarStr var_AC, "    </table></td>"
  loc_CA135A: PopAdLdVar
  loc_CA135B: FLdPr Me
  loc_CA135E: MemLdRfVar from_stack_1.global_60
  loc_CA1361: LdPrVar
  loc_CA1363: LateMemCall
  loc_CA1369: FLdPr Me
  loc_CA136C: MemLdRfVar from_stack_1.global_100
  loc_CA136F: FStR4 var_14C
  loc_CA1372: LitStr vbNullString
  loc_CA1375: LitI2_Byte 0
  loc_CA1377: LitI2_Byte 0
  loc_CA1379: LitI2_Byte 0
  loc_CA137B: LitStr "right"
  loc_CA137E: FMemLdR4 var_14C(0)
  loc_CA1383: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1388: CVarStr var_D0
  loc_CA138B: PopAdLdVar
  loc_CA138C: FLdPr Me
  loc_CA138F: MemLdRfVar from_stack_1.global_60
  loc_CA1392: LdPrVar
  loc_CA1394: LateMemCall
  loc_CA139A: FFree1Var var_D0 = ""
  loc_CA139D: LitStr vbNullString
  loc_CA13A0: LitI2_Byte 0
  loc_CA13A2: LitI2_Byte 0
  loc_CA13A4: LitI2_Byte 0
  loc_CA13A6: LitStr "right"
  loc_CA13A9: FMemLdR4 var_14C(4)
  loc_CA13AE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA13B3: CVarStr var_D0
  loc_CA13B6: PopAdLdVar
  loc_CA13B7: FLdPr Me
  loc_CA13BA: MemLdRfVar from_stack_1.global_60
  loc_CA13BD: LdPrVar
  loc_CA13BF: LateMemCall
  loc_CA13C5: FFree1Var var_D0 = ""
  loc_CA13C8: LitStr vbNullString
  loc_CA13CB: LitI2_Byte 0
  loc_CA13CD: LitI2_Byte 0
  loc_CA13CF: LitI2_Byte 0
  loc_CA13D1: LitStr "right"
  loc_CA13D4: FMemLdR4 var_14C(8)
  loc_CA13D9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA13DE: CVarStr var_D0
  loc_CA13E1: PopAdLdVar
  loc_CA13E2: FLdPr Me
  loc_CA13E5: MemLdRfVar from_stack_1.global_60
  loc_CA13E8: LdPrVar
  loc_CA13EA: LateMemCall
  loc_CA13F0: FFree1Var var_D0 = ""
  loc_CA13F3: LitStr vbNullString
  loc_CA13F6: LitI2_Byte 0
  loc_CA13F8: LitI2_Byte 0
  loc_CA13FA: LitI2_Byte 0
  loc_CA13FC: LitStr "right"
  loc_CA13FF: FMemLdR4 var_14C(12)
  loc_CA1404: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1409: CVarStr var_D0
  loc_CA140C: PopAdLdVar
  loc_CA140D: FLdPr Me
  loc_CA1410: MemLdRfVar from_stack_1.global_60
  loc_CA1413: LdPrVar
  loc_CA1415: LateMemCall
  loc_CA141B: FFree1Var var_D0 = ""
  loc_CA141E: LitStr vbNullString
  loc_CA1421: LitI2_Byte 0
  loc_CA1423: LitI2_Byte 0
  loc_CA1425: LitI2_Byte 0
  loc_CA1427: LitStr "right"
  loc_CA142A: FMemLdR4 var_14C(16)
  loc_CA142F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1434: CVarStr var_D0
  loc_CA1437: PopAdLdVar
  loc_CA1438: FLdPr Me
  loc_CA143B: MemLdRfVar from_stack_1.global_60
  loc_CA143E: LdPrVar
  loc_CA1440: LateMemCall
  loc_CA1446: FFree1Var var_D0 = ""
  loc_CA1449: LitStr vbNullString
  loc_CA144C: LitI2_Byte 0
  loc_CA144E: LitI2_Byte 0
  loc_CA1450: LitI2_Byte 0
  loc_CA1452: LitStr "right"
  loc_CA1455: FMemLdR4 var_14C(20)
  loc_CA145A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA145F: CVarStr var_D0
  loc_CA1462: PopAdLdVar
  loc_CA1463: FLdPr Me
  loc_CA1466: MemLdRfVar from_stack_1.global_60
  loc_CA1469: LdPrVar
  loc_CA146B: LateMemCall
  loc_CA1471: FFree1Var var_D0 = ""
  loc_CA1474: LitStr vbNullString
  loc_CA1477: LitI2_Byte 0
  loc_CA1479: LitI2_Byte 0
  loc_CA147B: LitI2_Byte 0
  loc_CA147D: LitStr "right"
  loc_CA1480: FMemLdR4 var_14C(24)
  loc_CA1485: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA148A: CVarStr var_D0
  loc_CA148D: PopAdLdVar
  loc_CA148E: FLdPr Me
  loc_CA1491: MemLdRfVar from_stack_1.global_60
  loc_CA1494: LdPrVar
  loc_CA1496: LateMemCall
  loc_CA149C: FFree1Var var_D0 = ""
  loc_CA149F: LitI4 0
  loc_CA14A4: FStR4 var_14C
  loc_CA14A7: LitVarStr var_AC, "     </tr>"
  loc_CA14AC: PopAdLdVar
  loc_CA14AD: FLdPr Me
  loc_CA14B0: MemLdRfVar from_stack_1.global_60
  loc_CA14B3: LdPrVar
  loc_CA14B5: LateMemCall
  loc_CA14BB: LitVarStr var_AC, "</table>"
  loc_CA14C0: PopAdLdVar
  loc_CA14C1: FLdPr Me
  loc_CA14C4: MemLdRfVar from_stack_1.global_60
  loc_CA14C7: LdPrVar
  loc_CA14C9: LateMemCall
  loc_CA14CF: FLdRfVar var_14E
  loc_CA14D2: FLdPr Me
  loc_CA14D5: VCallAd Control_ID_SinteticoOpt
  loc_CA14D8: FStAdFunc var_88
  loc_CA14DB: FLdPr var_88
  loc_CA14DE:  = Me.Value
  loc_CA14E3: FLdI2 var_14E
  loc_CA14E6: FFree1Ad var_88
  loc_CA14E9: BranchF loc_CA1BDB
  loc_CA14EC: FLdPr Me
  loc_CA14EF: MemLdStr global_96
  loc_CA14F2: LitI2_Byte 1
  loc_CA14F4: FnUBound
  loc_CA14F6: LitI4 0
  loc_CA14FB: GtI4
  loc_CA14FC: BranchF loc_CA1BDB
  loc_CA14FF: LitVarStr var_AC, "<p>&nbsp;</p>"
  loc_CA1504: PopAdLdVar
  loc_CA1505: FLdPr Me
  loc_CA1508: MemLdRfVar from_stack_1.global_60
  loc_CA150B: LdPrVar
  loc_CA150D: LateMemCall
  loc_CA1513: LitVarStr var_AC, "<div class=""Normal""><strong>Boletos anulados</strong></div>"
  loc_CA1518: PopAdLdVar
  loc_CA1519: FLdPr Me
  loc_CA151C: MemLdRfVar from_stack_1.global_60
  loc_CA151F: LdPrVar
  loc_CA1521: LateMemCall
  loc_CA1527: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_CA152C: PopAdLdVar
  loc_CA152D: FLdPr Me
  loc_CA1530: MemLdRfVar from_stack_1.global_60
  loc_CA1533: LdPrVar
  loc_CA1535: LateMemCall
  loc_CA153B: LitVarStr var_AC, "  <thead>"
  loc_CA1540: PopAdLdVar
  loc_CA1541: FLdPr Me
  loc_CA1544: MemLdRfVar from_stack_1.global_60
  loc_CA1547: LdPrVar
  loc_CA1549: LateMemCall
  loc_CA154F: LitVarStr var_AC, "  <tr align=""center"" class=""Encabezado"">"
  loc_CA1554: PopAdLdVar
  loc_CA1555: FLdPr Me
  loc_CA1558: MemLdRfVar from_stack_1.global_60
  loc_CA155B: LdPrVar
  loc_CA155D: LateMemCall
  loc_CA1563: LitVarStr var_AC, "    <th>Comprobante</th>"
  loc_CA1568: PopAdLdVar
  loc_CA1569: FLdPr Me
  loc_CA156C: MemLdRfVar from_stack_1.global_60
  loc_CA156F: LdPrVar
  loc_CA1571: LateMemCall
  loc_CA1577: LitVarStr var_AC, "    <th>Apellido y Nombre</th>"
  loc_CA157C: PopAdLdVar
  loc_CA157D: FLdPr Me
  loc_CA1580: MemLdRfVar from_stack_1.global_60
  loc_CA1583: LdPrVar
  loc_CA1585: LateMemCall
  loc_CA158B: LitVarStr var_AC, "    <th>Estado</th>"
  loc_CA1590: PopAdLdVar
  loc_CA1591: FLdPr Me
  loc_CA1594: MemLdRfVar from_stack_1.global_60
  loc_CA1597: LdPrVar
  loc_CA1599: LateMemCall
  loc_CA159F: LitVarStr var_AC, "    <th>Fecha</th>"
  loc_CA15A4: PopAdLdVar
  loc_CA15A5: FLdPr Me
  loc_CA15A8: MemLdRfVar from_stack_1.global_60
  loc_CA15AB: LdPrVar
  loc_CA15AD: LateMemCall
  loc_CA15B3: LitVarStr var_AC, "    <th>Motivo</th>"
  loc_CA15B8: PopAdLdVar
  loc_CA15B9: FLdPr Me
  loc_CA15BC: MemLdRfVar from_stack_1.global_60
  loc_CA15BF: LdPrVar
  loc_CA15C1: LateMemCall
  loc_CA15C7: LitVarStr var_AC, "    <th>Usuario</th>"
  loc_CA15CC: PopAdLdVar
  loc_CA15CD: FLdPr Me
  loc_CA15D0: MemLdRfVar from_stack_1.global_60
  loc_CA15D3: LdPrVar
  loc_CA15D5: LateMemCall
  loc_CA15DB: LitVarStr var_AC, "    <th>Capital</th>"
  loc_CA15E0: PopAdLdVar
  loc_CA15E1: FLdPr Me
  loc_CA15E4: MemLdRfVar from_stack_1.global_60
  loc_CA15E7: LdPrVar
  loc_CA15E9: LateMemCall
  loc_CA15EF: LitVarStr var_AC, "    <th>Desc. Cap.</th>"
  loc_CA15F4: PopAdLdVar
  loc_CA15F5: FLdPr Me
  loc_CA15F8: MemLdRfVar from_stack_1.global_60
  loc_CA15FB: LdPrVar
  loc_CA15FD: LateMemCall
  loc_CA1603: LitVarStr var_AC, "    <th>Recargo</th>"
  loc_CA1608: PopAdLdVar
  loc_CA1609: FLdPr Me
  loc_CA160C: MemLdRfVar from_stack_1.global_60
  loc_CA160F: LdPrVar
  loc_CA1611: LateMemCall
  loc_CA1617: LitVarStr var_AC, "    <th>Desc. Rec.</th>"
  loc_CA161C: PopAdLdVar
  loc_CA161D: FLdPr Me
  loc_CA1620: MemLdRfVar from_stack_1.global_60
  loc_CA1623: LdPrVar
  loc_CA1625: LateMemCall
  loc_CA162B: LitVarStr var_AC, "    <th>Inter&eacute;s</th>"
  loc_CA1630: PopAdLdVar
  loc_CA1631: FLdPr Me
  loc_CA1634: MemLdRfVar from_stack_1.global_60
  loc_CA1637: LdPrVar
  loc_CA1639: LateMemCall
  loc_CA163F: LitVarStr var_AC, "    <th>Apremio</th>"
  loc_CA1644: PopAdLdVar
  loc_CA1645: FLdPr Me
  loc_CA1648: MemLdRfVar from_stack_1.global_60
  loc_CA164B: LdPrVar
  loc_CA164D: LateMemCall
  loc_CA1653: LitVarStr var_AC, "    <th>Total</th>"
  loc_CA1658: PopAdLdVar
  loc_CA1659: FLdPr Me
  loc_CA165C: MemLdRfVar from_stack_1.global_60
  loc_CA165F: LdPrVar
  loc_CA1661: LateMemCall
  loc_CA1667: LitVarStr var_AC, "  </tr>"
  loc_CA166C: PopAdLdVar
  loc_CA166D: FLdPr Me
  loc_CA1670: MemLdRfVar from_stack_1.global_60
  loc_CA1673: LdPrVar
  loc_CA1675: LateMemCall
  loc_CA167B: LitVarStr var_AC, "  </thead>"
  loc_CA1680: PopAdLdVar
  loc_CA1681: FLdPr Me
  loc_CA1684: MemLdRfVar from_stack_1.global_60
  loc_CA1687: LdPrVar
  loc_CA1689: LateMemCall
  loc_CA168F: LitI2_Byte 1
  loc_CA1691: FLdPr Me
  loc_CA1694: MemLdRfVar from_stack_1.global_140
  loc_CA1697: FLdPr Me
  loc_CA169A: MemLdStr global_96
  loc_CA169D: LitI2_Byte 1
  loc_CA169F: FnUBound
  loc_CA16A1: CI2I4
  loc_CA16A2: ForI2 var_152
  loc_CA16A8: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_CA16AD: PopAdLdVar
  loc_CA16AE: FLdPr Me
  loc_CA16B1: MemLdRfVar from_stack_1.global_60
  loc_CA16B4: LdPrVar
  loc_CA16B6: LateMemCall
  loc_CA16BC: LitStr vbNullString
  loc_CA16BF: LitI2_Byte 0
  loc_CA16C1: LitI2_Byte 0
  loc_CA16C3: LitI2_Byte 0
  loc_CA16C5: LitStr "right"
  loc_CA16C8: FLdPr Me
  loc_CA16CB: MemLdI2 global_140
  loc_CA16CE: CI4UI1
  loc_CA16CF: FLdPr Me
  loc_CA16D2: MemLdStr global_96
  loc_CA16D5: Ary1LdPr
  loc_CA16D6: MemLdStr global_0
  loc_CA16D9: LitStr "-"
  loc_CA16DC: ConcatStr
  loc_CA16DD: FStStrNoPop var_C0
  loc_CA16E0: FLdPr Me
  loc_CA16E3: MemLdI2 global_140
  loc_CA16E6: CI4UI1
  loc_CA16E7: FLdPr Me
  loc_CA16EA: MemLdStr global_96
  loc_CA16ED: Ary1LdPr
  loc_CA16EE: MemLdStr global_4
  loc_CA16F1: ConcatStr
  loc_CA16F2: FStStrNoPop var_D4
  loc_CA16F5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA16FA: CVarStr var_D0
  loc_CA16FD: PopAdLdVar
  loc_CA16FE: FLdPr Me
  loc_CA1701: MemLdRfVar from_stack_1.global_60
  loc_CA1704: LdPrVar
  loc_CA1706: LateMemCall
  loc_CA170C: FFreeStr var_C0 = ""
  loc_CA1713: FFree1Var var_D0 = ""
  loc_CA1716: LitStr vbNullString
  loc_CA1719: LitI2_Byte 0
  loc_CA171B: LitI2_Byte 0
  loc_CA171D: LitI2_Byte 0
  loc_CA171F: LitStr "left"
  loc_CA1722: FLdPr Me
  loc_CA1725: MemLdI2 global_140
  loc_CA1728: CI4UI1
  loc_CA1729: FLdPr Me
  loc_CA172C: MemLdStr global_96
  loc_CA172F: Ary1LdPr
  loc_CA1730: MemLdStr global_8
  loc_CA1733: LitStr " - "
  loc_CA1736: ConcatStr
  loc_CA1737: FStStrNoPop var_C0
  loc_CA173A: FLdPr Me
  loc_CA173D: MemLdI2 global_140
  loc_CA1740: CI4UI1
  loc_CA1741: FLdPr Me
  loc_CA1744: MemLdStr global_96
  loc_CA1747: Ary1LdPr
  loc_CA1748: MemLdStr global_12
  loc_CA174B: ConcatStr
  loc_CA174C: FStStrNoPop var_D4
  loc_CA174F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1754: CVarStr var_D0
  loc_CA1757: PopAdLdVar
  loc_CA1758: FLdPr Me
  loc_CA175B: MemLdRfVar from_stack_1.global_60
  loc_CA175E: LdPrVar
  loc_CA1760: LateMemCall
  loc_CA1766: FFreeStr var_C0 = ""
  loc_CA176D: FFree1Var var_D0 = ""
  loc_CA1770: LitStr vbNullString
  loc_CA1773: LitI2_Byte 0
  loc_CA1775: LitI2_Byte 0
  loc_CA1777: LitI2_Byte 0
  loc_CA1779: LitStr "center"
  loc_CA177C: FLdPr Me
  loc_CA177F: MemLdI2 global_140
  loc_CA1782: CI4UI1
  loc_CA1783: FLdPr Me
  loc_CA1786: MemLdStr global_96
  loc_CA1789: Ary1LdPr
  loc_CA178A: MemLdStr global_16
  loc_CA178D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1792: CVarStr var_D0
  loc_CA1795: PopAdLdVar
  loc_CA1796: FLdPr Me
  loc_CA1799: MemLdRfVar from_stack_1.global_60
  loc_CA179C: LdPrVar
  loc_CA179E: LateMemCall
  loc_CA17A4: FFree1Var var_D0 = ""
  loc_CA17A7: LitStr vbNullString
  loc_CA17AA: LitI2_Byte 0
  loc_CA17AC: LitI2_Byte 0
  loc_CA17AE: LitI2_Byte 0
  loc_CA17B0: LitStr "center"
  loc_CA17B3: FLdPr Me
  loc_CA17B6: MemLdI2 global_140
  loc_CA17B9: CI4UI1
  loc_CA17BA: FLdPr Me
  loc_CA17BD: MemLdStr global_96
  loc_CA17C0: Ary1LdPr
  loc_CA17C1: MemLdStr global_20
  loc_CA17C4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA17C9: CVarStr var_D0
  loc_CA17CC: PopAdLdVar
  loc_CA17CD: FLdPr Me
  loc_CA17D0: MemLdRfVar from_stack_1.global_60
  loc_CA17D3: LdPrVar
  loc_CA17D5: LateMemCall
  loc_CA17DB: FFree1Var var_D0 = ""
  loc_CA17DE: LitStr vbNullString
  loc_CA17E1: LitI2_Byte 0
  loc_CA17E3: LitI2_Byte 0
  loc_CA17E5: LitI2_Byte 0
  loc_CA17E7: LitStr "left"
  loc_CA17EA: FLdPr Me
  loc_CA17ED: MemLdI2 global_140
  loc_CA17F0: CI4UI1
  loc_CA17F1: FLdPr Me
  loc_CA17F4: MemLdStr global_96
  loc_CA17F7: Ary1LdPr
  loc_CA17F8: MemLdStr global_24
  loc_CA17FB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1800: CVarStr var_D0
  loc_CA1803: PopAdLdVar
  loc_CA1804: FLdPr Me
  loc_CA1807: MemLdRfVar from_stack_1.global_60
  loc_CA180A: LdPrVar
  loc_CA180C: LateMemCall
  loc_CA1812: FFree1Var var_D0 = ""
  loc_CA1815: LitStr vbNullString
  loc_CA1818: LitI2_Byte 0
  loc_CA181A: LitI2_Byte 0
  loc_CA181C: LitI2_Byte 0
  loc_CA181E: LitStr "left"
  loc_CA1821: FLdPr Me
  loc_CA1824: MemLdI2 global_140
  loc_CA1827: CI4UI1
  loc_CA1828: FLdPr Me
  loc_CA182B: MemLdStr global_96
  loc_CA182E: Ary1LdPr
  loc_CA182F: MemLdStr global_28
  loc_CA1832: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1837: CVarStr var_D0
  loc_CA183A: PopAdLdVar
  loc_CA183B: FLdPr Me
  loc_CA183E: MemLdRfVar from_stack_1.global_60
  loc_CA1841: LdPrVar
  loc_CA1843: LateMemCall
  loc_CA1849: FFree1Var var_D0 = ""
  loc_CA184C: FLdPr Me
  loc_CA184F: MemLdI2 global_140
  loc_CA1852: CI4UI1
  loc_CA1853: FLdPr Me
  loc_CA1856: MemLdStr global_96
  loc_CA1859: AryLock
  loc_CA185C: Ary1LdPr
  loc_CA185D: MemLdRfVar from_stack_1.global_32
  loc_CA1860: FStR4 var_15C
  loc_CA1863: LitStr vbNullString
  loc_CA1866: LitI2_Byte 0
  loc_CA1868: LitI2_Byte 0
  loc_CA186A: LitI2_Byte 0
  loc_CA186C: LitStr "right"
  loc_CA186F: FMemLdR4 var_15C(0)
  loc_CA1874: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1879: CVarStr var_D0
  loc_CA187C: PopAdLdVar
  loc_CA187D: FLdPr Me
  loc_CA1880: MemLdRfVar from_stack_1.global_60
  loc_CA1883: LdPrVar
  loc_CA1885: LateMemCall
  loc_CA188B: FFree1Var var_D0 = ""
  loc_CA188E: LitStr vbNullString
  loc_CA1891: LitI2_Byte 0
  loc_CA1893: LitI2_Byte 0
  loc_CA1895: LitI2_Byte 0
  loc_CA1897: LitStr "right"
  loc_CA189A: FMemLdR4 var_15C(4)
  loc_CA189F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA18A4: CVarStr var_D0
  loc_CA18A7: PopAdLdVar
  loc_CA18A8: FLdPr Me
  loc_CA18AB: MemLdRfVar from_stack_1.global_60
  loc_CA18AE: LdPrVar
  loc_CA18B0: LateMemCall
  loc_CA18B6: FFree1Var var_D0 = ""
  loc_CA18B9: LitStr vbNullString
  loc_CA18BC: LitI2_Byte 0
  loc_CA18BE: LitI2_Byte 0
  loc_CA18C0: LitI2_Byte 0
  loc_CA18C2: LitStr "right"
  loc_CA18C5: FMemLdR4 var_15C(8)
  loc_CA18CA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA18CF: CVarStr var_D0
  loc_CA18D2: PopAdLdVar
  loc_CA18D3: FLdPr Me
  loc_CA18D6: MemLdRfVar from_stack_1.global_60
  loc_CA18D9: LdPrVar
  loc_CA18DB: LateMemCall
  loc_CA18E1: FFree1Var var_D0 = ""
  loc_CA18E4: LitStr vbNullString
  loc_CA18E7: LitI2_Byte 0
  loc_CA18E9: LitI2_Byte 0
  loc_CA18EB: LitI2_Byte 0
  loc_CA18ED: LitStr "right"
  loc_CA18F0: FMemLdR4 var_15C(12)
  loc_CA18F5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA18FA: CVarStr var_D0
  loc_CA18FD: PopAdLdVar
  loc_CA18FE: FLdPr Me
  loc_CA1901: MemLdRfVar from_stack_1.global_60
  loc_CA1904: LdPrVar
  loc_CA1906: LateMemCall
  loc_CA190C: FFree1Var var_D0 = ""
  loc_CA190F: LitStr vbNullString
  loc_CA1912: LitI2_Byte 0
  loc_CA1914: LitI2_Byte 0
  loc_CA1916: LitI2_Byte 0
  loc_CA1918: LitStr "right"
  loc_CA191B: FMemLdR4 var_15C(16)
  loc_CA1920: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1925: CVarStr var_D0
  loc_CA1928: PopAdLdVar
  loc_CA1929: FLdPr Me
  loc_CA192C: MemLdRfVar from_stack_1.global_60
  loc_CA192F: LdPrVar
  loc_CA1931: LateMemCall
  loc_CA1937: FFree1Var var_D0 = ""
  loc_CA193A: LitStr vbNullString
  loc_CA193D: LitI2_Byte 0
  loc_CA193F: LitI2_Byte 0
  loc_CA1941: LitI2_Byte 0
  loc_CA1943: LitStr "right"
  loc_CA1946: FMemLdR4 var_15C(20)
  loc_CA194B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1950: CVarStr var_D0
  loc_CA1953: PopAdLdVar
  loc_CA1954: FLdPr Me
  loc_CA1957: MemLdRfVar from_stack_1.global_60
  loc_CA195A: LdPrVar
  loc_CA195C: LateMemCall
  loc_CA1962: FFree1Var var_D0 = ""
  loc_CA1965: LitStr vbNullString
  loc_CA1968: LitI2_Byte 0
  loc_CA196A: LitI2_Byte 0
  loc_CA196C: LitI2_Byte 0
  loc_CA196E: LitStr "right"
  loc_CA1971: FMemLdR4 var_15C(24)
  loc_CA1976: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA197B: CVarStr var_D0
  loc_CA197E: PopAdLdVar
  loc_CA197F: FLdPr Me
  loc_CA1982: MemLdRfVar from_stack_1.global_60
  loc_CA1985: LdPrVar
  loc_CA1987: LateMemCall
  loc_CA198D: FFree1Var var_D0 = ""
  loc_CA1990: LitI4 0
  loc_CA1995: FStR4 var_15C
  loc_CA1998: AryUnlock
  loc_CA199B: LitVarStr var_AC, "     </tr>"
  loc_CA19A0: PopAdLdVar
  loc_CA19A1: FLdPr Me
  loc_CA19A4: MemLdRfVar from_stack_1.global_60
  loc_CA19A7: LdPrVar
  loc_CA19A9: LateMemCall
  loc_CA19AF: FLdPr Me
  loc_CA19B2: MemLdRfVar from_stack_1.global_140
  loc_CA19B5: NextI2 var_152, loc_CA16A8
  loc_CA19BA: LitVarStr var_AC, "  <tr class=""Totales"" align=""right"">"
  loc_CA19BF: PopAdLdVar
  loc_CA19C0: FLdPr Me
  loc_CA19C3: MemLdRfVar from_stack_1.global_60
  loc_CA19C6: LdPrVar
  loc_CA19C8: LateMemCall
  loc_CA19CE: LitStr vbNullString
  loc_CA19D1: LitI2_Byte 0
  loc_CA19D3: LitI2_Byte 0
  loc_CA19D5: LitI2_Byte 0
  loc_CA19D7: LitStr "right"
  loc_CA19DA: LitStr "TOTALES"
  loc_CA19DD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA19E2: CVarStr var_D0
  loc_CA19E5: PopAdLdVar
  loc_CA19E6: FLdPr Me
  loc_CA19E9: MemLdRfVar from_stack_1.global_60
  loc_CA19EC: LdPrVar
  loc_CA19EE: LateMemCall
  loc_CA19F4: FFree1Var var_D0 = ""
  loc_CA19F7: LitStr "   <td colspan=""5"" align=""center"">"
  loc_CA19FA: FLdPr Me
  loc_CA19FD: MemLdStr global_96
  loc_CA1A00: LitI2_Byte 1
  loc_CA1A02: FnUBound
  loc_CA1A04: CStrI4
  loc_CA1A06: FStStrNoPop var_C0
  loc_CA1A09: ConcatStr
  loc_CA1A0A: FStStrNoPop var_D4
  loc_CA1A0D: LitStr " boleto"
  loc_CA1A10: ConcatStr
  loc_CA1A11: CVarStr var_19C
  loc_CA1A14: LitVarStr var_16C, vbNullString
  loc_CA1A19: FStVarCopyObj var_17C
  loc_CA1A1C: FLdRfVar var_17C
  loc_CA1A1F: LitVarStr var_BC, "s"
  loc_CA1A24: FStVarCopyObj var_D0
  loc_CA1A27: FLdRfVar var_D0
  loc_CA1A2A: FLdPr Me
  loc_CA1A2D: MemLdStr global_96
  loc_CA1A30: LitI2_Byte 1
  loc_CA1A32: FnUBound
  loc_CA1A34: LitI4 1
  loc_CA1A39: GtI4
  loc_CA1A3A: CVarBoolI2 var_AC
  loc_CA1A3E: FLdRfVar var_18C
  loc_CA1A41: ImpAdCallFPR4  = IIf(, , )
  loc_CA1A46: FLdRfVar var_18C
  loc_CA1A49: ConcatVar var_1AC
  loc_CA1A4D: LitVarStr var_1BC, "</td>"
  loc_CA1A52: ConcatVar var_1CC
  loc_CA1A56: PopAdLdVar
  loc_CA1A57: FLdPr Me
  loc_CA1A5A: MemLdRfVar from_stack_1.global_60
  loc_CA1A5D: LdPrVar
  loc_CA1A5F: LateMemCall
  loc_CA1A65: FFreeStr var_C0 = ""
  loc_CA1A6C: FFreeVar var_AC = "": var_D0 = "": var_17C = "": var_19C = "": var_18C = "": var_1AC = ""
  loc_CA1A7D: LitI4 1
  loc_CA1A82: FLdPr Me
  loc_CA1A85: MemLdStr global_128
  loc_CA1A88: AryLock
  loc_CA1A8B: Ary1LdRf
  loc_CA1A8C: FStR4 var_1E4
  loc_CA1A8F: LitStr vbNullString
  loc_CA1A92: LitI2_Byte 0
  loc_CA1A94: LitI2_Byte 0
  loc_CA1A96: LitI2_Byte 0
  loc_CA1A98: LitStr "right"
  loc_CA1A9B: FMemLdR4 var_1E4(0)
  loc_CA1AA0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1AA5: CVarStr var_D0
  loc_CA1AA8: PopAdLdVar
  loc_CA1AA9: FLdPr Me
  loc_CA1AAC: MemLdRfVar from_stack_1.global_60
  loc_CA1AAF: LdPrVar
  loc_CA1AB1: LateMemCall
  loc_CA1AB7: FFree1Var var_D0 = ""
  loc_CA1ABA: LitStr vbNullString
  loc_CA1ABD: LitI2_Byte 0
  loc_CA1ABF: LitI2_Byte 0
  loc_CA1AC1: LitI2_Byte 0
  loc_CA1AC3: LitStr "right"
  loc_CA1AC6: FMemLdR4 var_1E4(4)
  loc_CA1ACB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1AD0: CVarStr var_D0
  loc_CA1AD3: PopAdLdVar
  loc_CA1AD4: FLdPr Me
  loc_CA1AD7: MemLdRfVar from_stack_1.global_60
  loc_CA1ADA: LdPrVar
  loc_CA1ADC: LateMemCall
  loc_CA1AE2: FFree1Var var_D0 = ""
  loc_CA1AE5: LitStr vbNullString
  loc_CA1AE8: LitI2_Byte 0
  loc_CA1AEA: LitI2_Byte 0
  loc_CA1AEC: LitI2_Byte 0
  loc_CA1AEE: LitStr "right"
  loc_CA1AF1: FMemLdR4 var_1E4(8)
  loc_CA1AF6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1AFB: CVarStr var_D0
  loc_CA1AFE: PopAdLdVar
  loc_CA1AFF: FLdPr Me
  loc_CA1B02: MemLdRfVar from_stack_1.global_60
  loc_CA1B05: LdPrVar
  loc_CA1B07: LateMemCall
  loc_CA1B0D: FFree1Var var_D0 = ""
  loc_CA1B10: LitStr vbNullString
  loc_CA1B13: LitI2_Byte 0
  loc_CA1B15: LitI2_Byte 0
  loc_CA1B17: LitI2_Byte 0
  loc_CA1B19: LitStr "right"
  loc_CA1B1C: FMemLdR4 var_1E4(12)
  loc_CA1B21: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1B26: CVarStr var_D0
  loc_CA1B29: PopAdLdVar
  loc_CA1B2A: FLdPr Me
  loc_CA1B2D: MemLdRfVar from_stack_1.global_60
  loc_CA1B30: LdPrVar
  loc_CA1B32: LateMemCall
  loc_CA1B38: FFree1Var var_D0 = ""
  loc_CA1B3B: LitStr vbNullString
  loc_CA1B3E: LitI2_Byte 0
  loc_CA1B40: LitI2_Byte 0
  loc_CA1B42: LitI2_Byte 0
  loc_CA1B44: LitStr "right"
  loc_CA1B47: FMemLdR4 var_1E4(16)
  loc_CA1B4C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1B51: CVarStr var_D0
  loc_CA1B54: PopAdLdVar
  loc_CA1B55: FLdPr Me
  loc_CA1B58: MemLdRfVar from_stack_1.global_60
  loc_CA1B5B: LdPrVar
  loc_CA1B5D: LateMemCall
  loc_CA1B63: FFree1Var var_D0 = ""
  loc_CA1B66: LitStr vbNullString
  loc_CA1B69: LitI2_Byte 0
  loc_CA1B6B: LitI2_Byte 0
  loc_CA1B6D: LitI2_Byte 0
  loc_CA1B6F: LitStr "right"
  loc_CA1B72: FMemLdR4 var_1E4(20)
  loc_CA1B77: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1B7C: CVarStr var_D0
  loc_CA1B7F: PopAdLdVar
  loc_CA1B80: FLdPr Me
  loc_CA1B83: MemLdRfVar from_stack_1.global_60
  loc_CA1B86: LdPrVar
  loc_CA1B88: LateMemCall
  loc_CA1B8E: FFree1Var var_D0 = ""
  loc_CA1B91: LitStr vbNullString
  loc_CA1B94: LitI2_Byte 0
  loc_CA1B96: LitI2_Byte 0
  loc_CA1B98: LitI2_Byte 0
  loc_CA1B9A: LitStr "right"
  loc_CA1B9D: FMemLdR4 var_1E4(24)
  loc_CA1BA2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_CA1BA7: CVarStr var_D0
  loc_CA1BAA: PopAdLdVar
  loc_CA1BAB: FLdPr Me
  loc_CA1BAE: MemLdRfVar from_stack_1.global_60
  loc_CA1BB1: LdPrVar
  loc_CA1BB3: LateMemCall
  loc_CA1BB9: FFree1Var var_D0 = ""
  loc_CA1BBC: LitI4 0
  loc_CA1BC1: FStR4 var_1E4
  loc_CA1BC4: AryUnlock
  loc_CA1BC7: LitVarStr var_AC, "     </tr>"
  loc_CA1BCC: PopAdLdVar
  loc_CA1BCD: FLdPr Me
  loc_CA1BD0: MemLdRfVar from_stack_1.global_60
  loc_CA1BD3: LdPrVar
  loc_CA1BD5: LateMemCall
  loc_CA1BDB: Call Proc_81_34_9F6540()
  loc_CA1BE0: FLdPr Me
  loc_CA1BE3: MemLdRfVar from_stack_1.global_60
  loc_CA1BE6: LdPrVar
  loc_CA1BE8: LateMemCall
  loc_CA1BEE: LitStr vbNullString
  loc_CA1BF1: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_CA1BF6: ExitProcHresult
End Sub

Private Function Proc_81_29_B27F7C() 'B27F7C
  'Data Table: 4E4644
  loc_B27CEC: FLdPr Me
  loc_B27CEF: VCallAd Control_ID_CodiUsuaCbo
  loc_B27CF2: FStAdFunc var_98
  loc_B27CF5: FLdPr var_98
  loc_B27CF8: Me.Clear
  loc_B27CFD: FFree1Ad var_98
  loc_B27D00: LitVar_Missing var_A8
  loc_B27D03: PopAdLdVar
  loc_B27D04: LitStr "TODOS"
  loc_B27D07: FLdPr Me
  loc_B27D0A: VCallAd Control_ID_CodiUsuaCbo
  loc_B27D0D: FStAdFunc var_98
  loc_B27D10: FLdPr var_98
  loc_B27D13: Me.AddItem from_stack_1, from_stack_2
  loc_B27D18: FFree1Ad var_98
  loc_B27D1B: FLdPr Me
  loc_B27D1E: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_B27D21: FStAdFunc var_98
  loc_B27D24: FLdPr var_98
  loc_B27D27: LateIdLdVar var_B8 DispID_0 0
  loc_B27D2E: PopAd
  loc_B27D30: FLdPr Me
  loc_B27D33: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_B27D36: FStAdFunc var_C0
  loc_B27D39: FLdPr var_C0
  loc_B27D3C: LateIdLdVar var_D0 DispID_0 0
  loc_B27D43: PopAd
  loc_B27D45: LitVarStr var_F4, vbNullString
  loc_B27D4A: FStVarCopyObj var_104
  loc_B27D4D: FLdRfVar var_104
  loc_B27D50: LitStr " AND NumeAcpa >= "
  loc_B27D53: FLdRfVar var_D0
  loc_B27D56: CStrVarTmp
  loc_B27D57: FStStrNoPop var_D4
  loc_B27D5A: ConcatStr
  loc_B27D5B: CVarStr var_E4
  loc_B27D5E: FLdRfVar var_B8
  loc_B27D61: CStrVarTmp
  loc_B27D62: FStStrNoPop var_BC
  loc_B27D65: LitStr vbNullString
  loc_B27D68: NeStr
  loc_B27D6A: CVarBoolI2 var_A8
  loc_B27D6E: FLdRfVar var_114
  loc_B27D71: ImpAdCallFPR4  = IIf(, , )
  loc_B27D76: FLdRfVar var_114
  loc_B27D79: CStrVarTmp
  loc_B27D7A: FStStr var_90
  loc_B27D7D: FFreeStr var_BC = ""
  loc_B27D84: FFreeAd var_98 = ""
  loc_B27D8B: FFreeVar var_B8 = "": var_D0 = "": var_A8 = "": var_E4 = "": var_104 = ""
  loc_B27D9A: FLdPr Me
  loc_B27D9D: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_B27DA0: FStAdFunc var_98
  loc_B27DA3: FLdPr var_98
  loc_B27DA6: LateIdLdVar var_B8 DispID_0 0
  loc_B27DAD: PopAd
  loc_B27DAF: FLdPr Me
  loc_B27DB2: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_B27DB5: FStAdFunc var_C0
  loc_B27DB8: FLdPr var_C0
  loc_B27DBB: LateIdLdVar var_D0 DispID_0 0
  loc_B27DC2: PopAd
  loc_B27DC4: LitVarStr var_F4, vbNullString
  loc_B27DC9: FStVarCopyObj var_104
  loc_B27DCC: FLdRfVar var_104
  loc_B27DCF: LitStr " AND NumeAcpa <= "
  loc_B27DD2: FLdRfVar var_D0
  loc_B27DD5: CStrVarTmp
  loc_B27DD6: FStStrNoPop var_D4
  loc_B27DD9: ConcatStr
  loc_B27DDA: CVarStr var_E4
  loc_B27DDD: FLdRfVar var_B8
  loc_B27DE0: CStrVarTmp
  loc_B27DE1: FStStrNoPop var_BC
  loc_B27DE4: LitStr vbNullString
  loc_B27DE7: NeStr
  loc_B27DE9: CVarBoolI2 var_A8
  loc_B27DED: FLdRfVar var_114
  loc_B27DF0: ImpAdCallFPR4  = IIf(, , )
  loc_B27DF5: FLdRfVar var_114
  loc_B27DF8: CStrVarTmp
  loc_B27DF9: FStStr var_94
  loc_B27DFC: FFreeStr var_BC = ""
  loc_B27E03: FFreeAd var_98 = ""
  loc_B27E0A: FFreeVar var_B8 = "": var_D0 = "": var_A8 = "": var_E4 = "": var_104 = ""
  loc_B27E19: FLdPr Me
  loc_B27E1C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_B27E1F: FStAdFunc var_98
  loc_B27E22: FLdPr var_98
  loc_B27E25: LateIdLdVar var_B8 DispID_15 0
  loc_B27E2C: PopAd
  loc_B27E2E: FLdPr Me
  loc_B27E31: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_B27E34: FStAdFunc var_C0
  loc_B27E37: FLdPr var_C0
  loc_B27E3A: LateIdLdVar var_144 DispID_15 0
  loc_B27E41: PopAd
  loc_B27E43: LitVarStr var_F4, " AND FeenAcpa BETWEEN "
  loc_B27E48: LitI4 1
  loc_B27E4D: LitI4 1
  loc_B27E52: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_B27E57: FStVarCopyObj var_E4
  loc_B27E5A: FLdRfVar var_E4
  loc_B27E5D: FLdRfVar var_B8
  loc_B27E60: CStrVarTmp
  loc_B27E61: CVarStr var_D0
  loc_B27E64: FLdRfVar var_104
  loc_B27E67: ImpAdCallFPR4  = Format(, )
  loc_B27E6C: FLdRfVar var_104
  loc_B27E6F: ConcatVar var_114
  loc_B27E73: LitVarStr var_124, " AND "
  loc_B27E78: ConcatVar var_134
  loc_B27E7C: LitI4 1
  loc_B27E81: LitI4 1
  loc_B27E86: LitVarStr var_164, "'yyyy-mm-dd'"
  loc_B27E8B: FStVarCopyObj var_174
  loc_B27E8E: FLdRfVar var_174
  loc_B27E91: FLdRfVar var_144
  loc_B27E94: CStrVarTmp
  loc_B27E95: CVarStr var_154
  loc_B27E98: FLdRfVar var_184
  loc_B27E9B: ImpAdCallFPR4  = Format(, )
  loc_B27EA0: FLdRfVar var_184
  loc_B27EA3: ConcatVar var_194
  loc_B27EA7: CStrVarTmp
  loc_B27EA8: FStStr var_8C
  loc_B27EAB: FFreeAd var_98 = ""
  loc_B27EB2: FFreeVar var_B8 = "": var_D0 = "": var_E4 = "": var_104 = "": var_114 = "": var_144 = "": var_154 = "": var_174 = "": var_134 = "": var_184 = ""
  loc_B27ECB: LitStr "SELECT DISTINCT CodiUsua FROM pago WHERE CodiUsua <> 'root'"
  loc_B27ECE: ILdRf var_8C
  loc_B27ED1: ConcatStr
  loc_B27ED2: FStStrNoPop var_BC
  loc_B27ED5: ILdRf var_90
  loc_B27ED8: ConcatStr
  loc_B27ED9: FStStrNoPop var_D4
  loc_B27EDC: ILdRf var_94
  loc_B27EDF: ConcatStr
  loc_B27EE0: FStStrNoPop var_198
  loc_B27EE3: FLdRfVar var_88
  loc_B27EE6: NewIfNullPr clspago
  loc_B27EE9: Call clspago.RedefineRS(from_stack_1v)
  loc_B27EEE: FFreeStr var_BC = "": var_D4 = ""
  loc_B27EF7: FLdRfVar var_19C
  loc_B27EFA: FLdRfVar var_88
  loc_B27EFD: NewIfNullPr clspago
  loc_B27F00: from_stack_1 = clspago.RecordCount
  loc_B27F05: ILdRf var_19C
  loc_B27F08: LitI4 0
  loc_B27F0D: GtI4
  loc_B27F0E: BranchF loc_B27F65
  loc_B27F11: FLdRfVar var_19E
  loc_B27F14: FLdRfVar var_88
  loc_B27F17: NewIfNullPr clspago
  loc_B27F1A: from_stack_1 = clspago.EOF
  loc_B27F1F: FLdI2 var_19E
  loc_B27F22: NotI4
  loc_B27F23: BranchF loc_B27F65
  loc_B27F26: LitVar_Missing var_A8
  loc_B27F29: PopAdLdVar
  loc_B27F2A: FLdRfVar var_BC
  loc_B27F2D: FLdRfVar var_88
  loc_B27F30: NewIfNullPr clspago
  loc_B27F33: from_stack_1 = clspago.CodiUsua
  loc_B27F38: ILdRf var_BC
  loc_B27F3B: FLdPr Me
  loc_B27F3E: VCallAd Control_ID_CodiUsuaCbo
  loc_B27F41: FStAdFunc var_98
  loc_B27F44: FLdPr var_98
  loc_B27F47: Me.AddItem from_stack_1, from_stack_2
  loc_B27F4C: FFree1Str var_BC
  loc_B27F4F: FFree1Ad var_98
  loc_B27F52: LitI2_Byte 1
  loc_B27F54: PopTmpLdAd2 var_19E
  loc_B27F57: FLdRfVar var_88
  loc_B27F5A: NewIfNullPr clspago
  loc_B27F5D: Call clspago.Move(from_stack_1v)
  loc_B27F62: Branch loc_B27F11
  loc_B27F65: LitI2_Byte 0
  loc_B27F67: FLdPr Me
  loc_B27F6A: VCallAd Control_ID_CodiUsuaCbo
  loc_B27F6D: FStAdFunc var_98
  loc_B27F70: FLdPr var_98
  loc_B27F73: Me.ListIndex = from_stack_1
  loc_B27F78: FFree1Ad var_98
  loc_B27F7B: ExitProcHresult
End Function

Private Function Proc_81_30_A78DD0() 'A78DD0
  'Data Table: 4E4644
  loc_A78D58: FLdPr Me
  loc_A78D5B: MemLdI2 global_132
  loc_A78D5E: LitI2_Byte 1
  loc_A78D60: AddI2
  loc_A78D61: FLdPr Me
  loc_A78D64: MemStI2 global_132
  loc_A78D67: LitI2_Byte 0
  loc_A78D69: FLdPr Me
  loc_A78D6C: MemStI2 global_134
  loc_A78D6F: LitI4 0
  loc_A78D74: FLdPr Me
  loc_A78D77: MemLdI2 global_132
  loc_A78D7A: CI4UI1
  loc_A78D7B: FLdPr Me
  loc_A78D7E: MemLdRfVar from_stack_1.global_92
  loc_A78D81: RedimPreserve
  loc_A78D8B: FLdRfVar var_94
  loc_A78D8E: FLdPr Me
  loc_A78D91: MemLdRfVar from_stack_1.global_76
  loc_A78D94: NewIfNullPr clsacrepago
  loc_A78D97: from_stack_1 = clsacrepago.FeenAcpa
  loc_A78D9C: LitI2_Byte 0
  loc_A78D9E: LitVar_Missing var_B8
  loc_A78DA1: LitI2_Byte 0
  loc_A78DA3: FLdVar var_94
  loc_A78DA7: FLdPr Me
  loc_A78DAA: MemLdI2 global_132
  loc_A78DAD: CI4UI1
  loc_A78DAE: FLdPr Me
  loc_A78DB1: MemLdStr global_92
  loc_A78DB4: AryLock
  loc_A78DB7: Ary1LdPr
  loc_A78DB8: MemLdRfVar from_stack_1.global_0
  loc_A78DBB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A78DC0: AryUnlock
  loc_A78DC3: FFreeVar var_94 = ""
  loc_A78DCA: Call Proc_81_31_AE9E74()
  loc_A78DCF: ExitProcHresult
End Function

Private Function Proc_81_31_AE9E74() 'AE9E74
  'Data Table: 4E4644
  loc_AE9CEC: FLdPr Me
  loc_AE9CEF: MemLdI2 global_134
  loc_AE9CF2: LitI2_Byte 1
  loc_AE9CF4: AddI2
  loc_AE9CF5: FLdPr Me
  loc_AE9CF8: MemStI2 global_134
  loc_AE9CFB: LitI4 0
  loc_AE9D00: FLdPr Me
  loc_AE9D03: MemLdI2 global_134
  loc_AE9D06: CI4UI1
  loc_AE9D07: FLdPr Me
  loc_AE9D0A: MemLdI2 global_132
  loc_AE9D0D: CI4UI1
  loc_AE9D0E: FLdPr Me
  loc_AE9D11: MemLdStr global_92
  loc_AE9D14: Ary1LdPr
  loc_AE9D15: MemLdRfVar from_stack_1.global_4
  loc_AE9D18: RedimPreserve
  loc_AE9D22: FLdPr Me
  loc_AE9D25: MemLdI2 global_134
  loc_AE9D28: CI4UI1
  loc_AE9D29: FLdPr Me
  loc_AE9D2C: MemLdI2 global_132
  loc_AE9D2F: CI4UI1
  loc_AE9D30: FLdPr Me
  loc_AE9D33: MemLdStr global_92
  loc_AE9D36: AryLock
  loc_AE9D39: Ary1LdPr
  loc_AE9D3A: MemLdStr global_4
  loc_AE9D3D: AryLock
  loc_AE9D40: Ary1LdRf
  loc_AE9D41: FStR4 var_90
  loc_AE9D44: FLdRfVar var_92
  loc_AE9D47: FLdPr Me
  loc_AE9D4A: MemLdRfVar from_stack_1.global_76
  loc_AE9D4D: NewIfNullPr clsacrepago
  loc_AE9D50: from_stack_1 = clsacrepago.NumeAcpa
  loc_AE9D55: LitI2_Byte 0
  loc_AE9D57: LitVar_Missing var_C4
  loc_AE9D5A: LitI2_Byte 0
  loc_AE9D5C: FLdI2 var_92
  loc_AE9D5F: CVarI2 var_A4
  loc_AE9D62: PopAdLdVar
  loc_AE9D63: FMemLdRf unk_4E45B5
  loc_AE9D68: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9D6D: FFree1Var var_C4 = ""
  loc_AE9D70: FLdRfVar var_92
  loc_AE9D73: FLdPr Me
  loc_AE9D76: MemLdRfVar from_stack_1.global_76
  loc_AE9D79: NewIfNullPr clsacrepago
  loc_AE9D7C: from_stack_1 = clsacrepago.CodiEnre
  loc_AE9D81: LitI2_Byte 0
  loc_AE9D83: LitVar_Missing var_C4
  loc_AE9D86: LitI2_Byte 0
  loc_AE9D88: FLdI2 var_92
  loc_AE9D8B: CVarI2 var_A4
  loc_AE9D8E: PopAdLdVar
  loc_AE9D8F: FMemLdRf unk_4E45B5
  loc_AE9D94: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9D99: FFree1Var var_C4 = ""
  loc_AE9D9C: FLdRfVar var_C4
  loc_AE9D9F: FLdPr Me
  loc_AE9DA2: MemLdRfVar from_stack_1.global_76
  loc_AE9DA5: NewIfNullPr clsacrepago
  loc_AE9DA8: from_stack_1 = clsacrepago.DetaEnre
  loc_AE9DAD: LitI2_Byte 0
  loc_AE9DAF: LitVar_Missing var_D4
  loc_AE9DB2: LitI2_Byte 0
  loc_AE9DB4: FLdVar var_C4
  loc_AE9DB8: FMemLdRf unk_4E45B5
  loc_AE9DBD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9DC2: FFreeVar var_C4 = ""
  loc_AE9DC9: FLdRfVar var_D8
  loc_AE9DCC: FLdPr Me
  loc_AE9DCF: MemLdRfVar from_stack_1.global_76
  loc_AE9DD2: NewIfNullPr clsacrepago
  loc_AE9DD5: from_stack_1 = clsacrepago.TocoAcpa
  loc_AE9DDA: LitI2_Byte 0
  loc_AE9DDC: LitVar_Missing var_C4
  loc_AE9DDF: LitI2_Byte 0
  loc_AE9DE1: ILdRf var_D8
  loc_AE9DE4: CVarI4
  loc_AE9DE8: PopAdLdVar
  loc_AE9DE9: FMemLdRf unk_4E45B5
  loc_AE9DEE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9DF3: FFree1Var var_C4 = ""
  loc_AE9DF6: FLdRfVar var_E0
  loc_AE9DF9: FLdPr Me
  loc_AE9DFC: MemLdRfVar from_stack_1.global_76
  loc_AE9DFF: NewIfNullPr clsacrepago
  loc_AE9E02: from_stack_1 = clsacrepago.ImpoAcpa
  loc_AE9E07: LitI2_Byte 0
  loc_AE9E09: LitVar_Missing var_C4
  loc_AE9E0C: LitI2_Byte &HFF
  loc_AE9E0E: FLdFPR8 var_E0
  loc_AE9E11: CVarR8
  loc_AE9E15: PopAdLdVar
  loc_AE9E16: FMemLdRf unk_4E45B5
  loc_AE9E1B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9E20: FFree1Var var_C4 = ""
  loc_AE9E23: FLdRfVar var_C4
  loc_AE9E26: FLdPr Me
  loc_AE9E29: MemLdRfVar from_stack_1.global_76
  loc_AE9E2C: NewIfNullPr clsacrepago
  loc_AE9E2F: from_stack_1 = clsacrepago.FepaAcpa
  loc_AE9E34: LitI2_Byte 0
  loc_AE9E36: LitVar_Missing var_D4
  loc_AE9E39: LitI2_Byte 0
  loc_AE9E3B: FLdVar var_C4
  loc_AE9E3F: FMemLdRf unk_4E45B5
  loc_AE9E44: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9E49: FFreeVar var_C4 = ""
  loc_AE9E50: LitI4 0
  loc_AE9E55: FStR4 var_90
  loc_AE9E58: AryUnlock
  loc_AE9E5B: AryUnlock
  loc_AE9E5E: LitI2_Byte 1
  loc_AE9E60: PopTmpLdAd2 var_92
  loc_AE9E63: FLdPr Me
  loc_AE9E66: MemLdRfVar from_stack_1.global_76
  loc_AE9E69: NewIfNullPr clsacrepago
  loc_AE9E6C: Call clsacrepago.Move(from_stack_1v)
  loc_AE9E71: ExitProcHresult
End Function

Private Function Proc_81_32_AEFB58(arg_C, arg_10) 'AEFB58
  'Data Table: 4E4644
  loc_AEF9AC: FMemLdR4 arg_C(0)
  loc_AEF9B1: FMemLdR4 arg_10(0)
  loc_AEF9B6: NeStr
  loc_AEF9B8: BranchF loc_AEF9E8
  loc_AEF9BB: LitI2_Byte 0
  loc_AEF9BD: LitVar_Missing var_B8
  loc_AEF9C0: LitI2_Byte &HFF
  loc_AEF9C2: FMemLdR4 arg_C(0)
  loc_AEF9C7: CR8Str
  loc_AEF9C9: FMemLdR4 arg_10(0)
  loc_AEF9CE: CR8Str
  loc_AEF9D0: SubR4
  loc_AEF9D1: CVarR8
  loc_AEF9D5: PopAdLdVar
  loc_AEF9D6: FMemLdRf Proc_272_6_A781DC()
  loc_AEF9DB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEF9E0: FFree1Var var_B8 = ""
  loc_AEF9E3: LitI2_Byte &HFF
  loc_AEF9E5: FStI2 var_86
  loc_AEF9E8: FMemLdR4 arg_C(4)
  loc_AEF9ED: FMemLdR4 arg_10(4)
  loc_AEF9F2: NeStr
  loc_AEF9F4: BranchF loc_AEFA24
  loc_AEF9F7: LitI2_Byte 0
  loc_AEF9F9: LitVar_Missing var_B8
  loc_AEF9FC: LitI2_Byte &HFF
  loc_AEF9FE: FMemLdR4 arg_C(4)
  loc_AEFA03: CR8Str
  loc_AEFA05: FMemLdR4 arg_10(4)
  loc_AEFA0A: CR8Str
  loc_AEFA0C: SubR4
  loc_AEFA0D: CVarR8
  loc_AEFA11: PopAdLdVar
  loc_AEFA12: FMemLdRf Proc_272_6_A781DC()
  loc_AEFA17: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFA1C: FFree1Var var_B8 = ""
  loc_AEFA1F: LitI2_Byte &HFF
  loc_AEFA21: FStI2 var_86
  loc_AEFA24: FMemLdR4 arg_C(8)
  loc_AEFA29: FMemLdR4 arg_10(8)
  loc_AEFA2E: NeStr
  loc_AEFA30: BranchF loc_AEFA60
  loc_AEFA33: LitI2_Byte 0
  loc_AEFA35: LitVar_Missing var_B8
  loc_AEFA38: LitI2_Byte &HFF
  loc_AEFA3A: FMemLdR4 arg_C(8)
  loc_AEFA3F: CR8Str
  loc_AEFA41: FMemLdR4 arg_10(8)
  loc_AEFA46: CR8Str
  loc_AEFA48: SubR4
  loc_AEFA49: CVarR8
  loc_AEFA4D: PopAdLdVar
  loc_AEFA4E: FMemLdRf Proc_272_6_A781DC(, )
  loc_AEFA53: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFA58: FFree1Var var_B8 = ""
  loc_AEFA5B: LitI2_Byte &HFF
  loc_AEFA5D: FStI2 var_86
  loc_AEFA60: FMemLdR4 arg_C(12)
  loc_AEFA65: FMemLdR4 arg_10(12)
  loc_AEFA6A: NeStr
  loc_AEFA6C: BranchF loc_AEFA9C
  loc_AEFA6F: LitI2_Byte 0
  loc_AEFA71: LitVar_Missing var_B8
  loc_AEFA74: LitI2_Byte &HFF
  loc_AEFA76: FMemLdR4 arg_C(12)
  loc_AEFA7B: CR8Str
  loc_AEFA7D: FMemLdR4 arg_10(12)
  loc_AEFA82: CR8Str
  loc_AEFA84: SubR4
  loc_AEFA85: CVarR8
  loc_AEFA89: PopAdLdVar
  loc_AEFA8A: FMemLdRf Proc_272_6_A781DC(, , )
  loc_AEFA8F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFA94: FFree1Var var_B8 = ""
  loc_AEFA97: LitI2_Byte &HFF
  loc_AEFA99: FStI2 var_86
  loc_AEFA9C: FMemLdR4 arg_C(16)
  loc_AEFAA1: FMemLdR4 arg_10(16)
  loc_AEFAA6: NeStr
  loc_AEFAA8: BranchF loc_AEFAD8
  loc_AEFAAB: LitI2_Byte 0
  loc_AEFAAD: LitVar_Missing var_B8
  loc_AEFAB0: LitI2_Byte &HFF
  loc_AEFAB2: FMemLdR4 arg_C(16)
  loc_AEFAB7: CR8Str
  loc_AEFAB9: FMemLdR4 arg_10(16)
  loc_AEFABE: CR8Str
  loc_AEFAC0: SubR4
  loc_AEFAC1: CVarR8
  loc_AEFAC5: PopAdLdVar
  loc_AEFAC6: FMemLdRf Proc_272_6_A781DC(, , , )
  loc_AEFACB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFAD0: FFree1Var var_B8 = ""
  loc_AEFAD3: LitI2_Byte &HFF
  loc_AEFAD5: FStI2 var_86
  loc_AEFAD8: FMemLdR4 arg_C(20)
  loc_AEFADD: FMemLdR4 arg_10(20)
  loc_AEFAE2: NeStr
  loc_AEFAE4: BranchF loc_AEFB14
  loc_AEFAE7: LitI2_Byte 0
  loc_AEFAE9: LitVar_Missing var_B8
  loc_AEFAEC: LitI2_Byte &HFF
  loc_AEFAEE: FMemLdR4 arg_C(20)
  loc_AEFAF3: CR8Str
  loc_AEFAF5: FMemLdR4 arg_10(20)
  loc_AEFAFA: CR8Str
  loc_AEFAFC: SubR4
  loc_AEFAFD: CVarR8
  loc_AEFB01: PopAdLdVar
  loc_AEFB02: FMemLdRf Proc_272_6_A781DC(, , , , )
  loc_AEFB07: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFB0C: FFree1Var var_B8 = ""
  loc_AEFB0F: LitI2_Byte &HFF
  loc_AEFB11: FStI2 var_86
  loc_AEFB14: FMemLdR4 arg_C(24)
  loc_AEFB19: FMemLdR4 arg_10(24)
  loc_AEFB1E: NeStr
  loc_AEFB20: BranchF loc_AEFB50
  loc_AEFB23: LitI2_Byte 0
  loc_AEFB25: LitVar_Missing var_B8
  loc_AEFB28: LitI2_Byte &HFF
  loc_AEFB2A: FMemLdR4 arg_C(24)
  loc_AEFB2F: CR8Str
  loc_AEFB31: FMemLdR4 arg_10(24)
  loc_AEFB36: CR8Str
  loc_AEFB38: SubR4
  loc_AEFB39: CVarR8
  loc_AEFB3D: PopAdLdVar
  loc_AEFB3E: FMemLdRf Proc_272_6_A781DC(, , , , , )
  loc_AEFB43: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AEFB48: FFree1Var var_B8 = ""
  loc_AEFB4B: LitI2_Byte &HFF
  loc_AEFB4D: FStI2 var_86
  loc_AEFB50: ExitProcCbHresult
  loc_AEFB56: FStStrNoPop var_3344
End Function

Private Function Proc_81_33_C27D2C() 'C27D2C
  'Data Table: 4E4644
  loc_C27248: LitVarStr var_98, "<html>"
  loc_C2724D: PopAdLdVar
  loc_C2724E: FLdPr Me
  loc_C27251: MemLdRfVar from_stack_1.global_60
  loc_C27254: LdPrVar
  loc_C27256: LateMemCall
  loc_C2725C: LitVarStr var_98, "<head>"
  loc_C27261: PopAdLdVar
  loc_C27262: FLdPr Me
  loc_C27265: MemLdRfVar from_stack_1.global_60
  loc_C27268: LdPrVar
  loc_C2726A: LateMemCall
  loc_C27270: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C27275: PopAdLdVar
  loc_C27276: FLdPr Me
  loc_C27279: MemLdRfVar from_stack_1.global_60
  loc_C2727C: LdPrVar
  loc_C2727E: LateMemCall
  loc_C27284: LitStr "<title>"
  loc_C27287: FLdRfVar var_AC
  loc_C2728A: FLdPr Me
  loc_C2728D:  = Me.Caption
  loc_C27292: ILdRf var_AC
  loc_C27295: ConcatStr
  loc_C27296: FStStrNoPop var_B0
  loc_C27299: LitStr "</title>"
  loc_C2729C: ConcatStr
  loc_C2729D: CVarStr var_C0
  loc_C272A0: PopAdLdVar
  loc_C272A1: FLdPr Me
  loc_C272A4: MemLdRfVar from_stack_1.global_60
  loc_C272A7: LdPrVar
  loc_C272A9: LateMemCall
  loc_C272AF: FFreeStr var_AC = ""
  loc_C272B6: FFree1Var var_C0 = ""
  loc_C272B9: LitVarStr var_98, "<style type=""text/css"">"
  loc_C272BE: PopAdLdVar
  loc_C272BF: FLdPr Me
  loc_C272C2: MemLdRfVar from_stack_1.global_60
  loc_C272C5: LdPrVar
  loc_C272C7: LateMemCall
  loc_C272CD: LitVarStr var_98, ".Titulo1 {"
  loc_C272D2: PopAdLdVar
  loc_C272D3: FLdPr Me
  loc_C272D6: MemLdRfVar from_stack_1.global_60
  loc_C272D9: LdPrVar
  loc_C272DB: LateMemCall
  loc_C272E1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C272E6: PopAdLdVar
  loc_C272E7: FLdPr Me
  loc_C272EA: MemLdRfVar from_stack_1.global_60
  loc_C272ED: LdPrVar
  loc_C272EF: LateMemCall
  loc_C272F5: LitVarStr var_98, " font-size: 18px;"
  loc_C272FA: PopAdLdVar
  loc_C272FB: FLdPr Me
  loc_C272FE: MemLdRfVar from_stack_1.global_60
  loc_C27301: LdPrVar
  loc_C27303: LateMemCall
  loc_C27309: LitVarStr var_98, " font-weight: bold;"
  loc_C2730E: PopAdLdVar
  loc_C2730F: FLdPr Me
  loc_C27312: MemLdRfVar from_stack_1.global_60
  loc_C27315: LdPrVar
  loc_C27317: LateMemCall
  loc_C2731D: LitVarStr var_98, "}"
  loc_C27322: PopAdLdVar
  loc_C27323: FLdPr Me
  loc_C27326: MemLdRfVar from_stack_1.global_60
  loc_C27329: LdPrVar
  loc_C2732B: LateMemCall
  loc_C27331: LitVarStr var_98, ".Titulo2 {"
  loc_C27336: PopAdLdVar
  loc_C27337: FLdPr Me
  loc_C2733A: MemLdRfVar from_stack_1.global_60
  loc_C2733D: LdPrVar
  loc_C2733F: LateMemCall
  loc_C27345: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2734A: PopAdLdVar
  loc_C2734B: FLdPr Me
  loc_C2734E: MemLdRfVar from_stack_1.global_60
  loc_C27351: LdPrVar
  loc_C27353: LateMemCall
  loc_C27359: LitVarStr var_98, " font-size: 14px;"
  loc_C2735E: PopAdLdVar
  loc_C2735F: FLdPr Me
  loc_C27362: MemLdRfVar from_stack_1.global_60
  loc_C27365: LdPrVar
  loc_C27367: LateMemCall
  loc_C2736D: LitVarStr var_98, " font-weight: bold;"
  loc_C27372: PopAdLdVar
  loc_C27373: FLdPr Me
  loc_C27376: MemLdRfVar from_stack_1.global_60
  loc_C27379: LdPrVar
  loc_C2737B: LateMemCall
  loc_C27381: LitVarStr var_98, "}"
  loc_C27386: PopAdLdVar
  loc_C27387: FLdPr Me
  loc_C2738A: MemLdRfVar from_stack_1.global_60
  loc_C2738D: LdPrVar
  loc_C2738F: LateMemCall
  loc_C27395: LitVarStr var_98, ".Normal {"
  loc_C2739A: PopAdLdVar
  loc_C2739B: FLdPr Me
  loc_C2739E: MemLdRfVar from_stack_1.global_60
  loc_C273A1: LdPrVar
  loc_C273A3: LateMemCall
  loc_C273A9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C273AE: PopAdLdVar
  loc_C273AF: FLdPr Me
  loc_C273B2: MemLdRfVar from_stack_1.global_60
  loc_C273B5: LdPrVar
  loc_C273B7: LateMemCall
  loc_C273BD: LitVarStr var_98, " font-size: 12px;"
  loc_C273C2: PopAdLdVar
  loc_C273C3: FLdPr Me
  loc_C273C6: MemLdRfVar from_stack_1.global_60
  loc_C273C9: LdPrVar
  loc_C273CB: LateMemCall
  loc_C273D1: LitVarStr var_98, " font-style: normal;"
  loc_C273D6: PopAdLdVar
  loc_C273D7: FLdPr Me
  loc_C273DA: MemLdRfVar from_stack_1.global_60
  loc_C273DD: LdPrVar
  loc_C273DF: LateMemCall
  loc_C273E5: LitVarStr var_98, " font-weight: normal;"
  loc_C273EA: PopAdLdVar
  loc_C273EB: FLdPr Me
  loc_C273EE: MemLdRfVar from_stack_1.global_60
  loc_C273F1: LdPrVar
  loc_C273F3: LateMemCall
  loc_C273F9: LitVarStr var_98, " font-variant: normal;"
  loc_C273FE: PopAdLdVar
  loc_C273FF: FLdPr Me
  loc_C27402: MemLdRfVar from_stack_1.global_60
  loc_C27405: LdPrVar
  loc_C27407: LateMemCall
  loc_C2740D: LitVarStr var_98, "}"
  loc_C27412: PopAdLdVar
  loc_C27413: FLdPr Me
  loc_C27416: MemLdRfVar from_stack_1.global_60
  loc_C27419: LdPrVar
  loc_C2741B: LateMemCall
  loc_C27421: LitVarStr var_98, ".Encabezado {"
  loc_C27426: PopAdLdVar
  loc_C27427: FLdPr Me
  loc_C2742A: MemLdRfVar from_stack_1.global_60
  loc_C2742D: LdPrVar
  loc_C2742F: LateMemCall
  loc_C27435: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C2743A: PopAdLdVar
  loc_C2743B: FLdPr Me
  loc_C2743E: MemLdRfVar from_stack_1.global_60
  loc_C27441: LdPrVar
  loc_C27443: LateMemCall
  loc_C27449: LitVarStr var_98, " font-size: 11px;"
  loc_C2744E: PopAdLdVar
  loc_C2744F: FLdPr Me
  loc_C27452: MemLdRfVar from_stack_1.global_60
  loc_C27455: LdPrVar
  loc_C27457: LateMemCall
  loc_C2745D: LitVarStr var_98, " font-weight: bold;"
  loc_C27462: PopAdLdVar
  loc_C27463: FLdPr Me
  loc_C27466: MemLdRfVar from_stack_1.global_60
  loc_C27469: LdPrVar
  loc_C2746B: LateMemCall
  loc_C27471: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C27476: PopAdLdVar
  loc_C27477: FLdPr Me
  loc_C2747A: MemLdRfVar from_stack_1.global_60
  loc_C2747D: LdPrVar
  loc_C2747F: LateMemCall
  loc_C27485: LitVarStr var_98, "}"
  loc_C2748A: PopAdLdVar
  loc_C2748B: FLdPr Me
  loc_C2748E: MemLdRfVar from_stack_1.global_60
  loc_C27491: LdPrVar
  loc_C27493: LateMemCall
  loc_C27499: LitVarStr var_98, ".LineaDato {"
  loc_C2749E: PopAdLdVar
  loc_C2749F: FLdPr Me
  loc_C274A2: MemLdRfVar from_stack_1.global_60
  loc_C274A5: LdPrVar
  loc_C274A7: LateMemCall
  loc_C274AD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C274B2: PopAdLdVar
  loc_C274B3: FLdPr Me
  loc_C274B6: MemLdRfVar from_stack_1.global_60
  loc_C274B9: LdPrVar
  loc_C274BB: LateMemCall
  loc_C274C1: LitVarStr var_98, " font-size: 10px;"
  loc_C274C6: PopAdLdVar
  loc_C274C7: FLdPr Me
  loc_C274CA: MemLdRfVar from_stack_1.global_60
  loc_C274CD: LdPrVar
  loc_C274CF: LateMemCall
  loc_C274D5: LitVarStr var_98, "}"
  loc_C274DA: PopAdLdVar
  loc_C274DB: FLdPr Me
  loc_C274DE: MemLdRfVar from_stack_1.global_60
  loc_C274E1: LdPrVar
  loc_C274E3: LateMemCall
  loc_C274E9: LitVarStr var_98, ".Totales {"
  loc_C274EE: PopAdLdVar
  loc_C274EF: FLdPr Me
  loc_C274F2: MemLdRfVar from_stack_1.global_60
  loc_C274F5: LdPrVar
  loc_C274F7: LateMemCall
  loc_C274FD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C27502: PopAdLdVar
  loc_C27503: FLdPr Me
  loc_C27506: MemLdRfVar from_stack_1.global_60
  loc_C27509: LdPrVar
  loc_C2750B: LateMemCall
  loc_C27511: LitVarStr var_98, " font-size: 12px;"
  loc_C27516: PopAdLdVar
  loc_C27517: FLdPr Me
  loc_C2751A: MemLdRfVar from_stack_1.global_60
  loc_C2751D: LdPrVar
  loc_C2751F: LateMemCall
  loc_C27525: LitVarStr var_98, " font-weight: bold;"
  loc_C2752A: PopAdLdVar
  loc_C2752B: FLdPr Me
  loc_C2752E: MemLdRfVar from_stack_1.global_60
  loc_C27531: LdPrVar
  loc_C27533: LateMemCall
  loc_C27539: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C2753E: PopAdLdVar
  loc_C2753F: FLdPr Me
  loc_C27542: MemLdRfVar from_stack_1.global_60
  loc_C27545: LdPrVar
  loc_C27547: LateMemCall
  loc_C2754D: LitVarStr var_98, "}"
  loc_C27552: PopAdLdVar
  loc_C27553: FLdPr Me
  loc_C27556: MemLdRfVar from_stack_1.global_60
  loc_C27559: LdPrVar
  loc_C2755B: LateMemCall
  loc_C27561: LitVarStr var_98, ".SubTotales {"
  loc_C27566: PopAdLdVar
  loc_C27567: FLdPr Me
  loc_C2756A: MemLdRfVar from_stack_1.global_60
  loc_C2756D: LdPrVar
  loc_C2756F: LateMemCall
  loc_C27575: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2757A: PopAdLdVar
  loc_C2757B: FLdPr Me
  loc_C2757E: MemLdRfVar from_stack_1.global_60
  loc_C27581: LdPrVar
  loc_C27583: LateMemCall
  loc_C27589: LitVarStr var_98, " font-size: 10px;"
  loc_C2758E: PopAdLdVar
  loc_C2758F: FLdPr Me
  loc_C27592: MemLdRfVar from_stack_1.global_60
  loc_C27595: LdPrVar
  loc_C27597: LateMemCall
  loc_C2759D: LitVarStr var_98, " font-weight: bold;"
  loc_C275A2: PopAdLdVar
  loc_C275A3: FLdPr Me
  loc_C275A6: MemLdRfVar from_stack_1.global_60
  loc_C275A9: LdPrVar
  loc_C275AB: LateMemCall
  loc_C275B1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C275B6: PopAdLdVar
  loc_C275B7: FLdPr Me
  loc_C275BA: MemLdRfVar from_stack_1.global_60
  loc_C275BD: LdPrVar
  loc_C275BF: LateMemCall
  loc_C275C5: LitVarStr var_98, "}"
  loc_C275CA: PopAdLdVar
  loc_C275CB: FLdPr Me
  loc_C275CE: MemLdRfVar from_stack_1.global_60
  loc_C275D1: LdPrVar
  loc_C275D3: LateMemCall
  loc_C275D9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C275DE: PopAdLdVar
  loc_C275DF: FLdPr Me
  loc_C275E2: MemLdRfVar from_stack_1.global_60
  loc_C275E5: LdPrVar
  loc_C275E7: LateMemCall
  loc_C275ED: LitVarStr var_98, "</style>"
  loc_C275F2: PopAdLdVar
  loc_C275F3: FLdPr Me
  loc_C275F6: MemLdRfVar from_stack_1.global_60
  loc_C275F9: LdPrVar
  loc_C275FB: LateMemCall
  loc_C27601: LitI4 0
  loc_C27606: FStStrCopy var_B0
  loc_C27609: FLdRfVar var_B0
  loc_C2760C: LitI4 0
  loc_C27611: FStStrCopy var_AC
  loc_C27614: FLdRfVar var_AC
  loc_C27617: LitI2_Byte &HFF
  loc_C27619: PopTmpLdAd2 var_C2
  loc_C2761C: FLdPr Me
  loc_C2761F: MemLdRfVar from_stack_1.global_60
  loc_C27622: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C27627: FFreeStr var_AC = ""
  loc_C2762E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C27633: PopAdLdVar
  loc_C27634: FLdPr Me
  loc_C27637: MemLdRfVar from_stack_1.global_60
  loc_C2763A: LdPrVar
  loc_C2763C: LateMemCall
  loc_C27642: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C27647: PopAdLdVar
  loc_C27648: FLdPr Me
  loc_C2764B: MemLdRfVar from_stack_1.global_60
  loc_C2764E: LdPrVar
  loc_C27650: LateMemCall
  loc_C27656: LitVarStr var_98, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p> "
  loc_C2765B: PopAdLdVar
  loc_C2765C: FLdPr Me
  loc_C2765F: MemLdRfVar from_stack_1.global_60
  loc_C27662: LdPrVar
  loc_C27664: LateMemCall
  loc_C2766A: FLdPr Me
  loc_C2766D: MemLdI2 bLogos
  loc_C27670: BranchF loc_C276CB
  loc_C27673: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C27676: LitI2_Byte &H5F
  loc_C27678: CStrUI1
  loc_C2767A: FStStrNoPop var_AC
  loc_C2767D: ConcatStr
  loc_C2767E: FStStrNoPop var_B0
  loc_C27681: LitStr """ height="""
  loc_C27684: ConcatStr
  loc_C27685: FStStrNoPop var_C8
  loc_C27688: LitI2_Byte &H3C
  loc_C2768A: CStrUI1
  loc_C2768C: FStStrNoPop var_CC
  loc_C2768F: ConcatStr
  loc_C27690: FStStrNoPop var_D0
  loc_C27693: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C27696: ConcatStr
  loc_C27697: FStStrNoPop var_D4
  loc_C2769A: LitStr "Municipalidad de Guaymallén"
  loc_C2769D: ConcatStr
  loc_C2769E: FStStrNoPop var_D8
  loc_C276A1: LitStr "</p>"
  loc_C276A4: ConcatStr
  loc_C276A5: CVarStr var_C0
  loc_C276A8: PopAdLdVar
  loc_C276A9: FLdPr Me
  loc_C276AC: MemLdRfVar from_stack_1.global_60
  loc_C276AF: LdPrVar
  loc_C276B1: LateMemCall
  loc_C276B7: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C276C8: FFree1Var var_C0 = ""
  loc_C276CB: LitStr "    <p>"
  loc_C276CE: FLdRfVar var_AC
  loc_C276D1: FLdPr Me
  loc_C276D4:  = Me.Caption
  loc_C276D9: ILdRf var_AC
  loc_C276DC: ConcatStr
  loc_C276DD: FStStrNoPop var_B0
  loc_C276E0: LitStr "</p></th>"
  loc_C276E3: ConcatStr
  loc_C276E4: CVarStr var_C0
  loc_C276E7: PopAdLdVar
  loc_C276E8: FLdPr Me
  loc_C276EB: MemLdRfVar from_stack_1.global_60
  loc_C276EE: LdPrVar
  loc_C276F0: LateMemCall
  loc_C276F6: FFreeStr var_AC = ""
  loc_C276FD: FFree1Var var_C0 = ""
  loc_C27700: LitVarStr var_98, "  </tr>"
  loc_C27705: PopAdLdVar
  loc_C27706: FLdPr Me
  loc_C27709: MemLdRfVar from_stack_1.global_60
  loc_C2770C: LdPrVar
  loc_C2770E: LateMemCall
  loc_C27714: LitVarStr var_98, "  <tr>"
  loc_C27719: PopAdLdVar
  loc_C2771A: FLdPr Me
  loc_C2771D: MemLdRfVar from_stack_1.global_60
  loc_C27720: LdPrVar
  loc_C27722: LateMemCall
  loc_C27728: LitVarStr var_98, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C2772D: PopAdLdVar
  loc_C2772E: FLdPr Me
  loc_C27731: MemLdRfVar from_stack_1.global_60
  loc_C27734: LdPrVar
  loc_C27736: LateMemCall
  loc_C2773C: LitVarStr var_98, "  </tr>"
  loc_C27741: PopAdLdVar
  loc_C27742: FLdPr Me
  loc_C27745: MemLdRfVar from_stack_1.global_60
  loc_C27748: LdPrVar
  loc_C2774A: LateMemCall
  loc_C27750: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_C27755: PopAdLdVar
  loc_C27756: FLdPr Me
  loc_C27759: MemLdRfVar from_stack_1.global_60
  loc_C2775C: LdPrVar
  loc_C2775E: LateMemCall
  loc_C27764: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_C27767: FLdPr Me
  loc_C2776A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C2776D: FStAdFunc var_DC
  loc_C27770: FLdPr var_DC
  loc_C27773: LateIdLdVar var_C0 DispID_15 0
  loc_C2777A: CStrVarTmp
  loc_C2777B: FStStrNoPop var_AC
  loc_C2777E: ConcatStr
  loc_C2777F: FStStrNoPop var_B0
  loc_C27782: LitStr "<br>"
  loc_C27785: ConcatStr
  loc_C27786: CVarStr var_EC
  loc_C27789: PopAdLdVar
  loc_C2778A: FLdPr Me
  loc_C2778D: MemLdRfVar from_stack_1.global_60
  loc_C27790: LdPrVar
  loc_C27792: LateMemCall
  loc_C27798: FFreeStr var_AC = ""
  loc_C2779F: FFree1Ad var_DC
  loc_C277A2: FFreeVar var_C0 = ""
  loc_C277A9: LitStr "                                      <strong>Hasta: </strong>"
  loc_C277AC: FLdPr Me
  loc_C277AF: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C277B2: FStAdFunc var_DC
  loc_C277B5: FLdPr var_DC
  loc_C277B8: LateIdLdVar var_C0 DispID_15 0
  loc_C277BF: CStrVarTmp
  loc_C277C0: FStStrNoPop var_AC
  loc_C277C3: ConcatStr
  loc_C277C4: FStStrNoPop var_B0
  loc_C277C7: LitStr "<br></td>"
  loc_C277CA: ConcatStr
  loc_C277CB: CVarStr var_EC
  loc_C277CE: PopAdLdVar
  loc_C277CF: FLdPr Me
  loc_C277D2: MemLdRfVar from_stack_1.global_60
  loc_C277D5: LdPrVar
  loc_C277D7: LateMemCall
  loc_C277DD: FFreeStr var_AC = ""
  loc_C277E4: FFree1Ad var_DC
  loc_C277E7: FFreeVar var_C0 = ""
  loc_C277EE: FLdRfVar var_C2
  loc_C277F1: FLdPr Me
  loc_C277F4: VCallAd Control_ID_CodiUsuaCbo
  loc_C277F7: FStAdFunc var_DC
  loc_C277FA: FLdPr var_DC
  loc_C277FD:  = Me.ListIndex
  loc_C27802: FLdI2 var_C2
  loc_C27805: LitI2_Byte 0
  loc_C27807: GtI2
  loc_C27808: FFree1Ad var_DC
  loc_C2780B: BranchF loc_C27852
  loc_C2780E: LitStr "    <td align=""center"" valign=""top""><strong>Cobrado por: </strong>"
  loc_C27811: FLdRfVar var_AC
  loc_C27814: FLdPr Me
  loc_C27817: VCallAd Control_ID_CodiUsuaCbo
  loc_C2781A: FStAdFunc var_DC
  loc_C2781D: FLdPr var_DC
  loc_C27820:  = Me.Text
  loc_C27825: ILdRf var_AC
  loc_C27828: ConcatStr
  loc_C27829: FStStrNoPop var_B0
  loc_C2782C: LitStr "</td>"
  loc_C2782F: ConcatStr
  loc_C27830: CVarStr var_C0
  loc_C27833: PopAdLdVar
  loc_C27834: FLdPr Me
  loc_C27837: MemLdRfVar from_stack_1.global_60
  loc_C2783A: LdPrVar
  loc_C2783C: LateMemCall
  loc_C27842: FFreeStr var_AC = ""
  loc_C27849: FFree1Ad var_DC
  loc_C2784C: FFree1Var var_C0 = ""
  loc_C2784F: Branch loc_C27866
  loc_C27852: LitVarStr var_98, "    <td align=""center"" valign=""top"">&nbsp;</td>"
  loc_C27857: PopAdLdVar
  loc_C27858: FLdPr Me
  loc_C2785B: MemLdRfVar from_stack_1.global_60
  loc_C2785E: LdPrVar
  loc_C27860: LateMemCall
  loc_C27866: LitVarStr var_98, "    <td align=""left"" valign=""top"">"
  loc_C2786B: PopAdLdVar
  loc_C2786C: FLdPr Me
  loc_C2786F: MemLdRfVar from_stack_1.global_60
  loc_C27872: LdPrVar
  loc_C27874: LateMemCall
  loc_C2787A: FLdPr Me
  loc_C2787D: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C27880: FStAdFunc var_DC
  loc_C27883: FLdPr var_DC
  loc_C27886: LateIdLdVar var_C0 DispID_0 0
  loc_C2788D: CStrVarTmp
  loc_C2788E: FStStrNoPop var_AC
  loc_C27891: LitStr vbNullString
  loc_C27894: NeStr
  loc_C27896: FLdPr Me
  loc_C27899: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C2789C: FStAdFunc var_F0
  loc_C2789F: FLdPr var_F0
  loc_C278A2: LateIdLdVar var_EC DispID_0 0
  loc_C278A9: CStrVarTmp
  loc_C278AA: FStStrNoPop var_B0
  loc_C278AD: LitStr vbNullString
  loc_C278B0: NeStr
  loc_C278B2: AndI4
  loc_C278B3: FFreeStr var_AC = ""
  loc_C278BA: FFreeAd var_DC = ""
  loc_C278C1: FFreeVar var_C0 = ""
  loc_C278C8: BranchF loc_C279FE
  loc_C278CB: FLdPr Me
  loc_C278CE: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C278D1: FStAdFunc var_DC
  loc_C278D4: FLdPr var_DC
  loc_C278D7: LateIdLdVar var_C0 DispID_0 0
  loc_C278DE: PopAd
  loc_C278E0: FLdPr Me
  loc_C278E3: VCallAd Control_ID_NumeAcpaDesdeMsk
  loc_C278E6: FStAdFunc var_F0
  loc_C278E9: FLdPr var_F0
  loc_C278EC: LateIdLdVar var_EC DispID_0 0
  loc_C278F3: PopAd
  loc_C278F5: LitVarStr var_130, "                               "
  loc_C278FA: LitVarStr var_A8, vbNullString
  loc_C278FF: FStVarCopyObj var_110
  loc_C27902: FLdRfVar var_110
  loc_C27905: LitStr "<strong>Desde Grupo: </strong>"
  loc_C27908: FLdRfVar var_EC
  loc_C2790B: CStrVarTmp
  loc_C2790C: FStStrNoPop var_B0
  loc_C2790F: ConcatStr
  loc_C27910: FStStrNoPop var_C8
  loc_C27913: LitStr "<br>"
  loc_C27916: ConcatStr
  loc_C27917: CVarStr var_100
  loc_C2791A: FLdRfVar var_C0
  loc_C2791D: CStrVarTmp
  loc_C2791E: FStStrNoPop var_AC
  loc_C27921: LitStr vbNullString
  loc_C27924: NeStr
  loc_C27926: CVarBoolI2 var_98
  loc_C2792A: FLdRfVar var_120
  loc_C2792D: ImpAdCallFPR4  = IIf(, , )
  loc_C27932: FLdRfVar var_120
  loc_C27935: ConcatVar var_140
  loc_C27939: PopAdLdVar
  loc_C2793A: FLdPr Me
  loc_C2793D: MemLdRfVar from_stack_1.global_60
  loc_C27940: LdPrVar
  loc_C27942: LateMemCall
  loc_C27948: FFreeStr var_AC = "": var_B0 = ""
  loc_C27951: FFreeAd var_DC = ""
  loc_C27958: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_C27969: FLdPr Me
  loc_C2796C: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C2796F: FStAdFunc var_DC
  loc_C27972: FLdPr var_DC
  loc_C27975: LateIdLdVar var_C0 DispID_0 0
  loc_C2797C: PopAd
  loc_C2797E: FLdPr Me
  loc_C27981: VCallAd Control_ID_NumeAcpaHastaMsk
  loc_C27984: FStAdFunc var_F0
  loc_C27987: FLdPr var_F0
  loc_C2798A: LateIdLdVar var_EC DispID_0 0
  loc_C27991: PopAd
  loc_C27993: LitVarStr var_130, "                               "
  loc_C27998: LitVarStr var_A8, "&nbsp;"
  loc_C2799D: FStVarCopyObj var_110
  loc_C279A0: FLdRfVar var_110
  loc_C279A3: LitStr "<strong>Hasta Grupo: </strong>"
  loc_C279A6: FLdRfVar var_EC
  loc_C279A9: CStrVarTmp
  loc_C279AA: FStStrNoPop var_B0
  loc_C279AD: ConcatStr
  loc_C279AE: CVarStr var_100
  loc_C279B1: FLdRfVar var_C0
  loc_C279B4: CStrVarTmp
  loc_C279B5: FStStrNoPop var_AC
  loc_C279B8: LitStr vbNullString
  loc_C279BB: NeStr
  loc_C279BD: CVarBoolI2 var_98
  loc_C279C1: FLdRfVar var_120
  loc_C279C4: ImpAdCallFPR4  = IIf(, , )
  loc_C279C9: FLdRfVar var_120
  loc_C279CC: ConcatVar var_140
  loc_C279D0: PopAdLdVar
  loc_C279D1: FLdPr Me
  loc_C279D4: MemLdRfVar from_stack_1.global_60
  loc_C279D7: LdPrVar
  loc_C279D9: LateMemCall
  loc_C279DF: FFreeStr var_AC = ""
  loc_C279E6: FFreeAd var_DC = ""
  loc_C279ED: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_C279FE: LitVarStr var_98, " </td>"
  loc_C27A03: PopAdLdVar
  loc_C27A04: FLdPr Me
  loc_C27A07: MemLdRfVar from_stack_1.global_60
  loc_C27A0A: LdPrVar
  loc_C27A0C: LateMemCall
  loc_C27A12: LitVarStr var_98, "  </tr>"
  loc_C27A17: PopAdLdVar
  loc_C27A18: FLdPr Me
  loc_C27A1B: MemLdRfVar from_stack_1.global_60
  loc_C27A1E: LdPrVar
  loc_C27A20: LateMemCall
  loc_C27A26: LitVarStr var_98, "</table>"
  loc_C27A2B: PopAdLdVar
  loc_C27A2C: FLdPr Me
  loc_C27A2F: MemLdRfVar from_stack_1.global_60
  loc_C27A32: LdPrVar
  loc_C27A34: LateMemCall
  loc_C27A3A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C27A3F: PopAdLdVar
  loc_C27A40: FLdPr Me
  loc_C27A43: MemLdRfVar from_stack_1.global_60
  loc_C27A46: LdPrVar
  loc_C27A48: LateMemCall
  loc_C27A4E: FLdPr Me
  loc_C27A51: VCallAd Control_ID_AnaliticoOpt
  loc_C27A54: FStAdFunc var_DC
  loc_C27A57: LitVarI2 var_100, 1
  loc_C27A5C: LitVarI2 var_EC, 2
  loc_C27A61: FLdZeroAd var_DC
  loc_C27A64: CVarAd
  loc_C27A68: FLdRfVar var_110
  loc_C27A6B: ImpAdCallFPR4  = IIf(, , )
  loc_C27A70: FLdRfVar var_110
  loc_C27A73: CUI1Var
  loc_C27A75: FStUI1 var_86
  loc_C27A79: FFree1Ad var_DC
  loc_C27A7C: FFreeVar var_C0 = "": var_EC = "": var_100 = ""
  loc_C27A87: LitVarStr var_98, "  <thead>"
  loc_C27A8C: PopAdLdVar
  loc_C27A8D: FLdPr Me
  loc_C27A90: MemLdRfVar from_stack_1.global_60
  loc_C27A93: LdPrVar
  loc_C27A95: LateMemCall
  loc_C27A9B: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C27AA0: PopAdLdVar
  loc_C27AA1: FLdPr Me
  loc_C27AA4: MemLdRfVar from_stack_1.global_60
  loc_C27AA7: LdPrVar
  loc_C27AA9: LateMemCall
  loc_C27AAF: LitVarStr var_98, "    <th colspan=""4"">Comprobante</th>"
  loc_C27AB4: PopAdLdVar
  loc_C27AB5: FLdPr Me
  loc_C27AB8: MemLdRfVar from_stack_1.global_60
  loc_C27ABB: LdPrVar
  loc_C27ABD: LateMemCall
  loc_C27AC3: LitVarStr var_98, "    <th colspan=""4"">Apellido y Nombre</th>"
  loc_C27AC8: PopAdLdVar
  loc_C27AC9: FLdPr Me
  loc_C27ACC: MemLdRfVar from_stack_1.global_60
  loc_C27ACF: LdPrVar
  loc_C27AD1: LateMemCall
  loc_C27AD7: LitStr "    <th rowspan="""
  loc_C27ADA: FLdUI1
  loc_C27ADE: CStrI2
  loc_C27AE0: FStStrNoPop var_AC
  loc_C27AE3: ConcatStr
  loc_C27AE4: FStStrNoPop var_B0
  loc_C27AE7: LitStr """>Capital</th>"
  loc_C27AEA: ConcatStr
  loc_C27AEB: CVarStr var_C0
  loc_C27AEE: PopAdLdVar
  loc_C27AEF: FLdPr Me
  loc_C27AF2: MemLdRfVar from_stack_1.global_60
  loc_C27AF5: LdPrVar
  loc_C27AF7: LateMemCall
  loc_C27AFD: FFreeStr var_AC = ""
  loc_C27B04: FFree1Var var_C0 = ""
  loc_C27B07: LitStr "    <th rowspan="""
  loc_C27B0A: FLdUI1
  loc_C27B0E: CStrI2
  loc_C27B10: FStStrNoPop var_AC
  loc_C27B13: ConcatStr
  loc_C27B14: FStStrNoPop var_B0
  loc_C27B17: LitStr """>Desc. Cap.</th>"
  loc_C27B1A: ConcatStr
  loc_C27B1B: CVarStr var_C0
  loc_C27B1E: PopAdLdVar
  loc_C27B1F: FLdPr Me
  loc_C27B22: MemLdRfVar from_stack_1.global_60
  loc_C27B25: LdPrVar
  loc_C27B27: LateMemCall
  loc_C27B2D: FFreeStr var_AC = ""
  loc_C27B34: FFree1Var var_C0 = ""
  loc_C27B37: LitStr "    <th rowspan="""
  loc_C27B3A: FLdUI1
  loc_C27B3E: CStrI2
  loc_C27B40: FStStrNoPop var_AC
  loc_C27B43: ConcatStr
  loc_C27B44: FStStrNoPop var_B0
  loc_C27B47: LitStr """>Recargo</th>"
  loc_C27B4A: ConcatStr
  loc_C27B4B: CVarStr var_C0
  loc_C27B4E: PopAdLdVar
  loc_C27B4F: FLdPr Me
  loc_C27B52: MemLdRfVar from_stack_1.global_60
  loc_C27B55: LdPrVar
  loc_C27B57: LateMemCall
  loc_C27B5D: FFreeStr var_AC = ""
  loc_C27B64: FFree1Var var_C0 = ""
  loc_C27B67: LitStr "    <th rowspan="""
  loc_C27B6A: FLdUI1
  loc_C27B6E: CStrI2
  loc_C27B70: FStStrNoPop var_AC
  loc_C27B73: ConcatStr
  loc_C27B74: FStStrNoPop var_B0
  loc_C27B77: LitStr """>Desc. Rec.</th>"
  loc_C27B7A: ConcatStr
  loc_C27B7B: CVarStr var_C0
  loc_C27B7E: PopAdLdVar
  loc_C27B7F: FLdPr Me
  loc_C27B82: MemLdRfVar from_stack_1.global_60
  loc_C27B85: LdPrVar
  loc_C27B87: LateMemCall
  loc_C27B8D: FFreeStr var_AC = ""
  loc_C27B94: FFree1Var var_C0 = ""
  loc_C27B97: LitStr "    <th rowspan="""
  loc_C27B9A: FLdUI1
  loc_C27B9E: CStrI2
  loc_C27BA0: FStStrNoPop var_AC
  loc_C27BA3: ConcatStr
  loc_C27BA4: FStStrNoPop var_B0
  loc_C27BA7: LitStr """>Inter&eacute;s</th>"
  loc_C27BAA: ConcatStr
  loc_C27BAB: CVarStr var_C0
  loc_C27BAE: PopAdLdVar
  loc_C27BAF: FLdPr Me
  loc_C27BB2: MemLdRfVar from_stack_1.global_60
  loc_C27BB5: LdPrVar
  loc_C27BB7: LateMemCall
  loc_C27BBD: FFreeStr var_AC = ""
  loc_C27BC4: FFree1Var var_C0 = ""
  loc_C27BC7: LitStr "    <th rowspan="""
  loc_C27BCA: FLdUI1
  loc_C27BCE: CStrI2
  loc_C27BD0: FStStrNoPop var_AC
  loc_C27BD3: ConcatStr
  loc_C27BD4: FStStrNoPop var_B0
  loc_C27BD7: LitStr """>Apremio</th>"
  loc_C27BDA: ConcatStr
  loc_C27BDB: CVarStr var_C0
  loc_C27BDE: PopAdLdVar
  loc_C27BDF: FLdPr Me
  loc_C27BE2: MemLdRfVar from_stack_1.global_60
  loc_C27BE5: LdPrVar
  loc_C27BE7: LateMemCall
  loc_C27BED: FFreeStr var_AC = ""
  loc_C27BF4: FFree1Var var_C0 = ""
  loc_C27BF7: LitStr "    <th rowspan="""
  loc_C27BFA: FLdUI1
  loc_C27BFE: CStrI2
  loc_C27C00: FStStrNoPop var_AC
  loc_C27C03: ConcatStr
  loc_C27C04: FStStrNoPop var_B0
  loc_C27C07: LitStr """>Total</th>"
  loc_C27C0A: ConcatStr
  loc_C27C0B: CVarStr var_C0
  loc_C27C0E: PopAdLdVar
  loc_C27C0F: FLdPr Me
  loc_C27C12: MemLdRfVar from_stack_1.global_60
  loc_C27C15: LdPrVar
  loc_C27C17: LateMemCall
  loc_C27C1D: FFreeStr var_AC = ""
  loc_C27C24: FFree1Var var_C0 = ""
  loc_C27C27: LitVarStr var_98, "  </tr>"
  loc_C27C2C: PopAdLdVar
  loc_C27C2D: FLdPr Me
  loc_C27C30: MemLdRfVar from_stack_1.global_60
  loc_C27C33: LdPrVar
  loc_C27C35: LateMemCall
  loc_C27C3B: FLdPr Me
  loc_C27C3E: VCallAd Control_ID_AnaliticoOpt
  loc_C27C41: CVarAd
  loc_C27C45: CBoolVarNull
  loc_C27C47: FFree1Var var_C0 = ""
  loc_C27C4A: BranchF loc_C27D15
  loc_C27C4D: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C27C52: PopAdLdVar
  loc_C27C53: FLdPr Me
  loc_C27C56: MemLdRfVar from_stack_1.global_60
  loc_C27C59: LdPrVar
  loc_C27C5B: LateMemCall
  loc_C27C61: LitVarStr var_98, "    <th>Ofic.</th>"
  loc_C27C66: PopAdLdVar
  loc_C27C67: FLdPr Me
  loc_C27C6A: MemLdRfVar from_stack_1.global_60
  loc_C27C6D: LdPrVar
  loc_C27C6F: LateMemCall
  loc_C27C75: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_C27C7A: PopAdLdVar
  loc_C27C7B: FLdPr Me
  loc_C27C7E: MemLdRfVar from_stack_1.global_60
  loc_C27C81: LdPrVar
  loc_C27C83: LateMemCall
  loc_C27C89: LitVarStr var_98, "    <th>Peri.</th>"
  loc_C27C8E: PopAdLdVar
  loc_C27C8F: FLdPr Me
  loc_C27C92: MemLdRfVar from_stack_1.global_60
  loc_C27C95: LdPrVar
  loc_C27C97: LateMemCall
  loc_C27C9D: LitVarStr var_98, "    <th>Bime.</th>"
  loc_C27CA2: PopAdLdVar
  loc_C27CA3: FLdPr Me
  loc_C27CA6: MemLdRfVar from_stack_1.global_60
  loc_C27CA9: LdPrVar
  loc_C27CAB: LateMemCall
  loc_C27CB1: LitVarStr var_98, "    <th>Concep.</th>"
  loc_C27CB6: PopAdLdVar
  loc_C27CB7: FLdPr Me
  loc_C27CBA: MemLdRfVar from_stack_1.global_60
  loc_C27CBD: LdPrVar
  loc_C27CBF: LateMemCall
  loc_C27CC5: LitVarStr var_98, "    <th>Facilidad</th>"
  loc_C27CCA: PopAdLdVar
  loc_C27CCB: FLdPr Me
  loc_C27CCE: MemLdRfVar from_stack_1.global_60
  loc_C27CD1: LdPrVar
  loc_C27CD3: LateMemCall
  loc_C27CD9: LitVarStr var_98, "    <th>Cuota</th>"
  loc_C27CDE: PopAdLdVar
  loc_C27CDF: FLdPr Me
  loc_C27CE2: MemLdRfVar from_stack_1.global_60
  loc_C27CE5: LdPrVar
  loc_C27CE7: LateMemCall
  loc_C27CED: LitVarStr var_98, "    <th>Apremio</th>"
  loc_C27CF2: PopAdLdVar
  loc_C27CF3: FLdPr Me
  loc_C27CF6: MemLdRfVar from_stack_1.global_60
  loc_C27CF9: LdPrVar
  loc_C27CFB: LateMemCall
  loc_C27D01: LitVarStr var_98, "  </tr>"
  loc_C27D06: PopAdLdVar
  loc_C27D07: FLdPr Me
  loc_C27D0A: MemLdRfVar from_stack_1.global_60
  loc_C27D0D: LdPrVar
  loc_C27D0F: LateMemCall
  loc_C27D15: LitVarStr var_98, "  </thead>"
  loc_C27D1A: PopAdLdVar
  loc_C27D1B: FLdPr Me
  loc_C27D1E: MemLdRfVar from_stack_1.global_60
  loc_C27D21: LdPrVar
  loc_C27D23: LateMemCall
  loc_C27D29: ExitProcHresult
End Function

Private Function Proc_81_34_9F6540() '9F6540
  'Data Table: 4E4644
  loc_9F6514: LitVarStr var_94, "</body>"
  loc_9F6519: PopAdLdVar
  loc_9F651A: FLdPr Me
  loc_9F651D: MemLdRfVar from_stack_1.global_60
  loc_9F6520: LdPrVar
  loc_9F6522: LateMemCall
  loc_9F6528: LitVarStr var_94, "</html>"
  loc_9F652D: PopAdLdVar
  loc_9F652E: FLdPr Me
  loc_9F6531: MemLdRfVar from_stack_1.global_60
  loc_9F6534: LdPrVar
  loc_9F6536: LateMemCall
  loc_9F653C: ExitProcHresult
End Function
