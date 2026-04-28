VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumenGeneraldeRecaudadores
  Caption = "Resumen General de Recaudadores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumenGeneraldeRecaudadores.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9216
  ClientHeight = 4296
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4044
    Width = 9216
    Height = 252
    TabIndex = 14
    OleObjectBlob = "rptResumenGeneraldeRecaudadores.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 3000
    Width = 855
    Height = 735
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptResumenGeneraldeRecaudadores.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumenGeneraldeRecaudadores.frx":0B9C
    Left = 8400
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2760
    Width = 3255
    Height = 1215
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 18
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 7
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
    Top = 2760
    Width = 4095
    Height = 1215
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 6
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
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8895
    Height = 2655
    TabIndex = 10
    Begin VB.CheckBox IncluyeChk
      Caption = "Incluye no actualizados"
      Left = 960
      Top = 2160
      Width = 2895
      Height = 375
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
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Pago"
      Left = 960
      Top = 360
      Width = 3015
      Height = 1575
      TabIndex = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        Picture = "rptResumenGeneraldeRecaudadores.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        Picture = "rptResumenGeneraldeRecaudadores.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealBoapDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumenGeneraldeRecaudadores.frx":1684
      End
      Begin MSMask.MaskEdBox FealBoapHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumenGeneraldeRecaudadores.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 17
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
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 16
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4800
      Top = 480
      Width = 1575
      Height = 615
      TabIndex = 8
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
    Left = 8280
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptResumenGeneraldeRecaudadores.frx":17E4
  End
End

Attribute VB_Name = "rptResumenGeneraldeRecaudadores"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005681B0
  bStruc(44) As Byte ' String fields: 10
End Type

Private Type UDT_3_005681FC
  bStruc(20) As Byte ' String fields: 4
End Type


Private Sub FealBoapDesdeMsk_UnknownEvent_0 '9C2840
  'Data Table: 494084
  loc_9C282C: FLdPr Me
  loc_9C282F: VCallAd Control_ID_FealBoapDesdeMsk
  loc_9C2832: CVarAd
  loc_9C2836: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C283B: FFree1Var var_94 = ""
  loc_9C283E: ExitProcHresult
End Sub

Private Function FealBoapDesdeMsk_UnknownEvent_8(arg_C) 'A61860
  'Data Table: 494084
  loc_A61804: FLdPr Me
  loc_A61807: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A6180A: FStAdFunc var_88
  loc_A6180D: FLdPr var_88
  loc_A61810: LateIdLdVar var_98 DispID_15 0
  loc_A61817: CStrVarTmp
  loc_A61818: FStStrNoPop var_9C
  loc_A6181B: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A61820: FStStrNoPop var_A0
  loc_A61823: FLdPr Me
  loc_A61826: MemStStrCopy
  loc_A6182A: FFreeStr var_9C = ""
  loc_A61831: FFree1Ad var_88
  loc_A61834: FFree1Var var_98 = ""
  loc_A61837: FLdPr Me
  loc_A6183A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A6183D: FStAdFuncNoPop
  loc_A61840: CastAd
  loc_A61843: FStAdFunc var_A4
  loc_A61846: FLdRfVar var_A4
  loc_A61849: FLdPr Me
  loc_A6184C: MemLdStr global_92
  loc_A6184F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61854: IStI2 arg_C
  loc_A61857: FFreeAd var_88 = ""
  loc_A6185E: ExitProcHresult
End Function

Private Sub cmdXLS_Click() '9E27BC
  'Data Table: 494084
  loc_9E27A0: LitI2_Byte &HFF
  loc_9E27A2: LitI2_Byte 0
  loc_9E27A4: ILdRf Me
  loc_9E27A7: CastAd
  loc_9E27AA: FStAdFunc var_88
  loc_9E27AD: FLdRfVar var_88
  loc_9E27B0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E27B5: FFree1Ad var_88
  loc_9E27B8: ExitProcHresult
End Sub

Private Sub FealBoapHastaMsk_UnknownEvent_0 '9C27B0
  'Data Table: 494084
  loc_9C279C: FLdPr Me
  loc_9C279F: VCallAd Control_ID_FealBoapHastaMsk
  loc_9C27A2: CVarAd
  loc_9C27A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C27AB: FFree1Var var_94 = ""
  loc_9C27AE: ExitProcHresult
End Sub

Private Function FealBoapHastaMsk_UnknownEvent_8(arg_C) 'A61AE0
  'Data Table: 494084
  loc_A61A84: FLdPr Me
  loc_A61A87: VCallAd Control_ID_FealBoapHastaMsk
  loc_A61A8A: FStAdFunc var_88
  loc_A61A8D: FLdPr var_88
  loc_A61A90: LateIdLdVar var_98 DispID_15 0
  loc_A61A97: CStrVarTmp
  loc_A61A98: FStStrNoPop var_9C
  loc_A61A9B: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A61AA0: FStStrNoPop var_A0
  loc_A61AA3: FLdPr Me
  loc_A61AA6: MemStStrCopy
  loc_A61AAA: FFreeStr var_9C = ""
  loc_A61AB1: FFree1Ad var_88
  loc_A61AB4: FFree1Var var_98 = ""
  loc_A61AB7: FLdPr Me
  loc_A61ABA: VCallAd Control_ID_FealBoapHastaMsk
  loc_A61ABD: FStAdFuncNoPop
  loc_A61AC0: CastAd
  loc_A61AC3: FStAdFunc var_A4
  loc_A61AC6: FLdRfVar var_A4
  loc_A61AC9: FLdPr Me
  loc_A61ACC: MemLdStr global_92
  loc_A61ACF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61AD4: IStI2 arg_C
  loc_A61AD7: FFreeAd var_88 = ""
  loc_A61ADE: ExitProcHresult
End Function

Private Sub cmdPdf_Click(Index As Integer) '9E276C
  'Data Table: 494084
  loc_9E2750: LitI2_Byte 0
  loc_9E2752: PopTmpLdAd2 var_8A
  loc_9E2755: ILdRf Me
  loc_9E2758: CastAd
  loc_9E275B: FStAdFunc var_88
  loc_9E275E: FLdRfVar var_88
  loc_9E2761: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2766: FFree1Ad var_88
  loc_9E2769: ExitProcHresult
  loc_9E276A: CRec2Uni Index00
End Sub

Private Sub cmdPredeterminada_Click() '9D4858
  'Data Table: 494084
  loc_9D4840: LitI2_Byte 0
  loc_9D4842: ILdRf Me
  loc_9D4845: CastAd
  loc_9D4848: FStAdFunc var_88
  loc_9D484B: FLdRfVar var_88
  loc_9D484E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D4853: FFree1Ad var_88
  loc_9D4856: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FFB38
  'Data Table: 494084
  loc_9FFB08: LitVarStr var_94, "Cerrando..."
  loc_9FFB0D: PopAdLdVar
  loc_9FFB0E: FLdPr Me
  loc_9FFB11: VCallAd Control_ID_statusBar
  loc_9FFB14: FStAdFunc var_A8
  loc_9FFB17: FLdPr var_A8
  loc_9FFB1A: LateIdSt
  loc_9FFB1F: FFree1Ad var_A8
  loc_9FFB22: ILdRf Me
  loc_9FFB25: FStAdNoPop
  loc_9FFB29: ImpAdLdRf MemVar_D9C5D8
  loc_9FFB2C: NewIfNullPr Global
  loc_9FFB2F: Global.Unload from_stack_1
  loc_9FFB34: FFree1Ad var_A8
  loc_9FFB37: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D4690
  'Data Table: 494084
  loc_9D4678: ILdRf Me
  loc_9D467B: CastAd
  loc_9D467E: FStAdFunc var_88
  loc_9D4681: FLdRfVar var_88
  loc_9D4684: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D4689: FFree1Ad var_88
  loc_9D468C: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AB9B44
  'Data Table: 494084
  loc_AB9A60: LitI2_Byte 0
  loc_AB9A62: FLdPr Me
  loc_AB9A65: MemStI2 bGenerado
  loc_AB9A68: LitI2_Byte &HFF
  loc_AB9A6A: FLdPr Me
  loc_AB9A6D: MemStI2 bLogos
  loc_AB9A70: LitI2_Byte 0
  loc_AB9A72: ILdRf Me
  loc_AB9A75: CastAd
  loc_AB9A78: FStAdFunc var_88
  loc_AB9A7B: FLdRfVar var_88
  loc_AB9A7E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AB9A83: FFree1Ad var_88
  loc_AB9A86: LitI2_Byte 0
  loc_AB9A88: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB9A8D: CVarDate var_A8
  loc_AB9A91: FLdRfVar var_B8
  loc_AB9A94: ImpAdCallFPR4  = Year()
  loc_AB9A99: LitI2_Byte 0
  loc_AB9A9B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB9AA0: CVarDate var_D8
  loc_AB9AA4: FLdRfVar var_E8
  loc_AB9AA7: ImpAdCallFPR4  = Month()
  loc_AB9AAC: LitI2_Byte 1
  loc_AB9AAE: FLdRfVar var_E8
  loc_AB9AB1: CI2Var
  loc_AB9AB2: FLdRfVar var_B8
  loc_AB9AB5: CI2Var
  loc_AB9AB6: FLdRfVar var_F8
  loc_AB9AB9: ImpAdCallFPR4  = DateSerial(, , )
  loc_AB9ABE: FLdRfVar var_F8
  loc_AB9AC1: CStrVarTmp
  loc_AB9AC2: CVarStr var_108
  loc_AB9AC5: PopAdLdVar
  loc_AB9AC6: FLdPr Me
  loc_AB9AC9: VCallAd Control_ID_FealBoapDesdeMsk
  loc_AB9ACC: FStAdFunc var_88
  loc_AB9ACF: FLdPr var_88
  loc_AB9AD2: LateIdSt
  loc_AB9AD7: FFree1Ad var_88
  loc_AB9ADA: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AB9AE9: LitI2_Byte 0
  loc_AB9AEB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB9AF0: CStrDate
  loc_AB9AF2: CVarStr var_A8
  loc_AB9AF5: PopAdLdVar
  loc_AB9AF6: FLdPr Me
  loc_AB9AF9: VCallAd Control_ID_FealBoapHastaMsk
  loc_AB9AFC: FStAdFunc var_88
  loc_AB9AFF: FLdPr var_88
  loc_AB9B02: LateIdSt
  loc_AB9B07: FFree1Ad var_88
  loc_AB9B0A: FFree1Var var_A8 = ""
  loc_AB9B0D: LitI4 1
  loc_AB9B12: CI2I4
  loc_AB9B13: FLdPr Me
  loc_AB9B16: VCallAd Control_ID_IncluyeChk
  loc_AB9B19: FStAdFunc var_88
  loc_AB9B1C: FLdPr var_88
  loc_AB9B1F: Me.Value = from_stack_1
  loc_AB9B24: FFree1Ad var_88
  loc_AB9B27: Call HabilitarCriterio()
  loc_AB9B2C: ILdRf Me
  loc_AB9B2F: CastAd
  loc_AB9B32: FStAdFunc var_88
  loc_AB9B35: FLdRfVar var_88
  loc_AB9B38: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AB9B3D: FFree1Ad var_88
  loc_AB9B40: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13258
  'Data Table: 494084
  loc_A13220: FLdPr Me
  loc_A13223: VCallAd Control_ID_statusBar
  loc_A13226: FStAdFunc var_88
  loc_A13229: FLdPr var_88
  loc_A1322C: LateIdLdVar var_98 DispID_1 0
  loc_A13233: CStrVarTmp
  loc_A13234: CVarStr var_A8
  loc_A13237: PopAdLdVar
  loc_A13238: FLdPr Me
  loc_A1323B: VCallAd Control_ID_statusBar
  loc_A1323E: FStAdFunc var_BC
  loc_A13241: FLdPr var_BC
  loc_A13244: LateIdSt
  loc_A13249: FFreeAd var_88 = ""
  loc_A13250: FFreeVar var_98 = ""
  loc_A13257: ExitProcHresult
End Sub

Private Sub Form_Load(arg_C) '9E262C
  'Data Table: 494084
  loc_9E2610: ILdRf Me
  loc_9E2613: CastAd
  loc_9E2616: FStAdFunc var_88
  loc_9E2619: FLdRfVar var_88
  loc_9E261C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E2621: FFree1Ad var_88
  loc_9E2624: Call cmdNueva_Click()
  loc_9E2629: ExitProcHresult
  loc_9E262A: FLdFPR4 arg_C00
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D4A20
  'Data Table: 494084
  loc_9D4A08: FLdPr Me
  loc_9D4A0B: VCallAd Control_ID_wbbReporte
  loc_9D4A0E: FStAdFunc var_88
  loc_9D4A11: FLdRfVar var_88
  loc_9D4A14: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D4A19: FFree1Ad var_88
  loc_9D4A1C: ExitProcHresult
  loc_9D4A1D: GtR4
  loc_9D4A1E: NeCy
End Sub

Private Sub DesdeFechaCmd_Click() 'A0B644
  'Data Table: 494084
  loc_A0B608: LitVar_Missing var_A4
  loc_A0B60B: PopAdLdVar
  loc_A0B60C: LitVarI4
  loc_A0B614: PopAdLdVar
  loc_A0B615: ImpAdLdRf MemVar_D930A4
  loc_A0B618: NewIfNullPr frmCalendario
  loc_A0B61B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0B620: ImpAdLdRf MemVar_D93028
  loc_A0B623: CDargRef
  loc_A0B627: FLdPr Me
  loc_A0B62A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A0B62D: FStAdFunc var_A8
  loc_A0B630: FLdPr var_A8
  loc_A0B633: LateIdSt
  loc_A0B638: FFree1Ad var_A8
  loc_A0B63B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0B640: ExitProcHresult
  loc_A0B641: EqI2
  loc_A0B642: LeI2
End Sub

Private Sub HastaFechaCmd_Click() 'A0AE64
  'Data Table: 494084
  loc_A0AE28: LitVar_Missing var_A4
  loc_A0AE2B: PopAdLdVar
  loc_A0AE2C: LitVarI4
  loc_A0AE34: PopAdLdVar
  loc_A0AE35: ImpAdLdRf MemVar_D930A4
  loc_A0AE38: NewIfNullPr frmCalendario
  loc_A0AE3B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0AE40: ImpAdLdRf MemVar_D93028
  loc_A0AE43: CDargRef
  loc_A0AE47: FLdPr Me
  loc_A0AE4A: VCallAd Control_ID_FealBoapHastaMsk
  loc_A0AE4D: FStAdFunc var_A8
  loc_A0AE50: FLdPr var_A8
  loc_A0AE53: LateIdSt
  loc_A0AE58: FFree1Ad var_A8
  loc_A0AE5B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0AE60: ExitProcHresult
End Sub

Public Function bLogosGet() '494EE4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '494EF3
  bLogos = Value
End Sub

Public Function bGeneradoGet() '494F02
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '494F11
  bGenerado = Value
End Sub

Public Sub GeneraXLS(arg_C) '9C237C
  'Data Table: 494084
  loc_9C2364: LitI2_Byte 0
  loc_9C2366: FLdPr Me
  loc_9C2369: MemStI2 bLogos
  loc_9C236C: Call GeneraHTML()
  loc_9C2371: LitI2_Byte &HFF
  loc_9C2373: FLdPr Me
  loc_9C2376: MemStI2 bLogos
  loc_9C2379: ExitProcHresult
  loc_9C237A: CRec2Uni arg_C00
End Sub

Public Sub HabilitarCriterio() 'A7F29C
  'Data Table: 494084
  loc_A7F228: LitI4 0
  loc_A7F22D: LitI4 4
  loc_A7F232: FLdRfVar var_88
  loc_A7F235: Redim
  loc_A7F23F: FLdPr Me
  loc_A7F242: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A7F245: CVarAd
  loc_A7F249: ParmAry1St
  loc_A7F24F: FLdPr Me
  loc_A7F252: VCallAd Control_ID_DesdeFechaCmd
  loc_A7F255: CVarAd
  loc_A7F259: ParmAry1St
  loc_A7F25F: FLdPr Me
  loc_A7F262: VCallAd Control_ID_FealBoapHastaMsk
  loc_A7F265: CVarAd
  loc_A7F269: ParmAry1St
  loc_A7F26F: FLdPr Me
  loc_A7F272: VCallAd Control_ID_HastaFechaCmd
  loc_A7F275: CVarAd
  loc_A7F279: ParmAry1St
  loc_A7F27F: FLdPr Me
  loc_A7F282: VCallAd Control_ID_IncluyeChk
  loc_A7F285: CVarAd
  loc_A7F289: ParmAry1St
  loc_A7F28F: FLdRfVar var_88
  loc_A7F292: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A7F297: FLdRfVar var_88
  loc_A7F29A: Erase
  loc_A7F29B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B5907C
  'Data Table: 494084
  loc_B58CEC: FLdPr Me
  loc_B58CEF: MemLdI2 bGenerado
  loc_B58CF2: BranchF loc_B58CF6
  loc_B58CF5: ExitProcHresult
  loc_B58CF6: LitVarStr var_98, "Generando reporte..."
  loc_B58CFB: PopAdLdVar
  loc_B58CFC: FLdPr Me
  loc_B58CFF: VCallAd Control_ID_statusBar
  loc_B58D02: FStAdFunc var_AC
  loc_B58D05: FLdPr var_AC
  loc_B58D08: LateIdSt
  loc_B58D0D: FFree1Ad var_AC
  loc_B58D10: LitI4 &HB
  loc_B58D15: CI2I4
  loc_B58D16: FLdPr Me
  loc_B58D19: Me.MousePointer = from_stack_1
  loc_B58D1E: FLdRfVar var_AE
  loc_B58D21: FLdPr Me
  loc_B58D24: VCallAd Control_ID_IncluyeChk
  loc_B58D27: FStAdFunc var_AC
  loc_B58D2A: FLdPr var_AC
  loc_B58D2D:  = Me.Value
  loc_B58D32: LitVarStr var_D0, " EstaBoap='Actualizado'"
  loc_B58D37: FStVarCopyObj var_E0
  loc_B58D3A: FLdRfVar var_E0
  loc_B58D3D: LitVarStr var_A8, " EstaBoap in ('Actualizado','Pagado')"
  loc_B58D42: FStVarCopyObj var_C0
  loc_B58D45: FLdRfVar var_C0
  loc_B58D48: FLdI2 var_AE
  loc_B58D4B: CI4UI1
  loc_B58D4C: LitI4 1
  loc_B58D51: EqI4
  loc_B58D52: CVarBoolI2 var_98
  loc_B58D56: FLdRfVar var_F0
  loc_B58D59: ImpAdCallFPR4  = IIf(, , )
  loc_B58D5E: FLdRfVar var_F0
  loc_B58D61: CStrVarTmp
  loc_B58D62: FStStr var_88
  loc_B58D65: FFree1Ad var_AC
  loc_B58D68: FFreeVar var_98 = "": var_C0 = "": var_E0 = ""
  loc_B58D73: FLdPr Me
  loc_B58D76: MemLdRfVar from_stack_1.global_76
  loc_B58D79: NewIfNullAd
  loc_B58D7C: FStAd var_F4 
  loc_B58D80: FLdPr Me
  loc_B58D83: VCallAd Control_ID_FealBoapDesdeMsk
  loc_B58D86: FStAdFunc var_AC
  loc_B58D89: FLdPr var_AC
  loc_B58D8C: LateIdLdVar var_C0 DispID_15 0
  loc_B58D93: PopAd
  loc_B58D95: FLdPr Me
  loc_B58D98: VCallAd Control_ID_FealBoapHastaMsk
  loc_B58D9B: FStAdFunc var_12C
  loc_B58D9E: FLdPr var_12C
  loc_B58DA1: LateIdLdVar var_13C DispID_15 0
  loc_B58DA8: PopAd
  loc_B58DAA: LitStr " SELECT boleapredeta.CodiReca, recaudador.DetaReca, FealBoap, FeacBoap, apremio.CodiOfic, apremio.CuenCtct, DetaPers, apremio.NumeApre,"
  loc_B58DAD: LitStr " AutoApre , boleapredeta.CodiInju, boleapredeta.CodiOfju, boleapredeta.ImreBade HoreBoap, boleapredeta.ImofBade HoofBoap"
  loc_B58DB0: ConcatStr
  loc_B58DB1: FStStrNoPop var_F8
  loc_B58DB4: LitStr " FROM boleapredeta"
  loc_B58DB7: ConcatStr
  loc_B58DB8: FStStrNoPop var_FC
  loc_B58DBB: LitStr " INNER JOIN boleapre ON boleapre.PeriBole = boleapredeta.PeriBole"
  loc_B58DBE: ConcatStr
  loc_B58DBF: FStStrNoPop var_100
  loc_B58DC2: LitStr " AND boleapre.NumeBole = boleapredeta.NumeBole"
  loc_B58DC5: ConcatStr
  loc_B58DC6: FStStrNoPop var_104
  loc_B58DC9: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_B58DCC: ConcatStr
  loc_B58DCD: FStStrNoPop var_108
  loc_B58DD0: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_B58DD3: ConcatStr
  loc_B58DD4: FStStrNoPop var_10C
  loc_B58DD7: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = boleapredeta.CodiReca "
  loc_B58DDA: ConcatStr
  loc_B58DDB: FStStrNoPop var_110
  loc_B58DDE: LitStr " WHERE "
  loc_B58DE1: ConcatStr
  loc_B58DE2: FStStrNoPop var_114
  loc_B58DE5: ILdRf var_88
  loc_B58DE8: ConcatStr
  loc_B58DE9: FStStrNoPop var_118
  loc_B58DEC: LitStr " AND boleapre.FeenAcpa"
  loc_B58DEF: ConcatStr
  loc_B58DF0: FStStrNoPop var_11C
  loc_B58DF3: LitStr " BETWEEN '"
  loc_B58DF6: ConcatStr
  loc_B58DF7: FStStrNoPop var_120
  loc_B58DFA: LitI4 1
  loc_B58DFF: LitI4 1
  loc_B58E04: LitVarStr var_98, "yyyy-mm-dd"
  loc_B58E09: FStVarCopyObj var_F0
  loc_B58E0C: FLdRfVar var_F0
  loc_B58E0F: FLdRfVar var_C0
  loc_B58E12: CStrVarTmp
  loc_B58E13: CVarStr var_E0
  loc_B58E16: ImpAdCallI2 Format$(, )
  loc_B58E1B: FStStrNoPop var_124
  loc_B58E1E: ConcatStr
  loc_B58E1F: FStStrNoPop var_128
  loc_B58E22: LitStr "' AND '"
  loc_B58E25: ConcatStr
  loc_B58E26: FStStrNoPop var_160
  loc_B58E29: LitI4 1
  loc_B58E2E: LitI4 1
  loc_B58E33: LitVarStr var_A8, "yyyy-mm-dd"
  loc_B58E38: FStVarCopyObj var_15C
  loc_B58E3B: FLdRfVar var_15C
  loc_B58E3E: FLdRfVar var_13C
  loc_B58E41: CStrVarTmp
  loc_B58E42: CVarStr var_14C
  loc_B58E45: ImpAdCallI2 Format$(, )
  loc_B58E4A: FStStrNoPop var_164
  loc_B58E4D: ConcatStr
  loc_B58E4E: FStStrNoPop var_168
  loc_B58E51: LitStr "'"
  loc_B58E54: ConcatStr
  loc_B58E55: FStStrNoPop var_16C
  loc_B58E58: LitStr " ORDER BY boleapredeta.CodiReca, boleapre.FeenAcpa"
  loc_B58E5B: ConcatStr
  loc_B58E5C: FStStrNoPop var_170
  loc_B58E5F: FLdPr var_F4
  loc_B58E62: Call clsbase.RedefineRS(from_stack_1v)
  loc_B58E67: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_B58E8E: FFreeAd var_AC = ""
  loc_B58E95: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_13C = "": var_14C = ""
  loc_B58EA4: FLdRfVar var_174
  loc_B58EA7: FLdPr var_F4
  loc_B58EAA: from_stack_1 = clsbase.RecordCount
  loc_B58EAF: ILdRf var_174
  loc_B58EB2: LitI4 0
  loc_B58EB7: EqI4
  loc_B58EB8: BranchF loc_B58EC6
  loc_B58EBB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B58EBE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B58EC3: Branch loc_B59050
  loc_B58EC6: LitI4 0
  loc_B58ECB: LitI4 1
  loc_B58ED0: FLdPr Me
  loc_B58ED3: MemLdRfVar from_stack_1.global_84
  loc_B58ED6: Redim
  loc_B58EE0: LitI4 0
  loc_B58EE5: LitI4 1
  loc_B58EEA: FLdPr Me
  loc_B58EED: MemLdRfVar from_stack_1.global_80
  loc_B58EF0: Redim
  loc_B58EFA: LitI2_Byte 0
  loc_B58EFC: FLdPr Me
  loc_B58EFF: MemStI2 global_88
  loc_B58F02: FLdPr var_F4
  loc_B58F05: Call clsbase.MoveFirst()
  loc_B58F0A: Call Proc_97_23_AE31EC()
  loc_B58F0F: FLdRfVar var_AE
  loc_B58F12: FLdPr var_F4
  loc_B58F15: from_stack_1 = clsbase.EOF
  loc_B58F1A: FLdI2 var_AE
  loc_B58F1D: NotI4
  loc_B58F1E: BranchF loc_B58F8B
  loc_B58F21: FLdRfVar var_C0
  loc_B58F24: FLdRfVar var_178
  loc_B58F27: LitVarStr var_98, "CodiReca"
  loc_B58F2C: PopAdLdVar
  loc_B58F2D: FLdRfVar var_12C
  loc_B58F30: FLdRfVar var_AC
  loc_B58F33: FLdPr var_F4
  loc_B58F36: from_stack_1v = clsbase.RsFrmGet()
  loc_B58F3B: FLdPr var_AC
  loc_B58F3E:  = Me.Fields
  loc_B58F43: FLdPr var_12C
  loc_B58F46: from_stack_2 = Me.Item(from_stack_1)
  loc_B58F4B: FLdPr var_178
  loc_B58F4E:  = Me.Value
  loc_B58F53: FLdRfVar var_C0
  loc_B58F56: FnCIntVar
  loc_B58F58: FLdPr Me
  loc_B58F5B: MemLdI2 global_88
  loc_B58F5E: CI4UI1
  loc_B58F5F: FLdPr Me
  loc_B58F62: MemLdStr global_80
  loc_B58F65: Ary1LdPr
  loc_B58F66: MemLdStr global_0
  loc_B58F69: CI2Str
  loc_B58F6B: EqI2
  loc_B58F6C: FFreeAd var_AC = "": var_12C = ""
  loc_B58F75: FFree1Var var_C0 = ""
  loc_B58F78: BranchF loc_B58F83
  loc_B58F7B: Call Proc_97_24_B87F10()
  loc_B58F80: Branch loc_B58F88
  loc_B58F83: Call Proc_97_23_AE31EC()
  loc_B58F88: Branch loc_B58F0F
  loc_B58F8B: LitNothing
  loc_B58F8D: FStAd var_F4 
  loc_B58F91: FLdRfVar var_AE
  loc_B58F94: FLdPr Me
  loc_B58F97: VCallAd Control_ID_IncluyeChk
  loc_B58F9A: FStAdFunc var_AC
  loc_B58F9D: FLdPr var_AC
  loc_B58FA0:  = Me.Value
  loc_B58FA5: FLdI2 var_AE
  loc_B58FA8: FFree1Ad var_AC
  loc_B58FAB: BranchF loc_B59048
  loc_B58FAE: LitI2_Byte 1
  loc_B58FB0: FLdPr Me
  loc_B58FB3: MemLdRfVar from_stack_1.global_88
  loc_B58FB6: FLdPr Me
  loc_B58FB9: MemLdStr global_80
  loc_B58FBC: LitI2_Byte 1
  loc_B58FBE: FnUBound
  loc_B58FC0: CI2I4
  loc_B58FC1: ForI2 var_180
  loc_B58FC7: LitI2_Byte 0
  loc_B58FC9: LitI4 1
  loc_B58FCE: FLdPr Me
  loc_B58FD1: MemLdStr global_84
  loc_B58FD4: AryLock
  loc_B58FD7: Ary1LdPr
  loc_B58FD8: MemLdRfVar from_stack_1.global_0
  loc_B58FDB: CVarRef
  loc_B58FE0: LitI2_Byte &HFF
  loc_B58FE2: FLdPr Me
  loc_B58FE5: MemLdI2 global_88
  loc_B58FE8: CI4UI1
  loc_B58FE9: FLdPr Me
  loc_B58FEC: MemLdStr global_80
  loc_B58FEF: Ary1LdPr
  loc_B58FF0: MemLdStr global_12
  loc_B58FF3: CVarStr var_98
  loc_B58FF6: PopAdLdVar
  loc_B58FF7: FLdRfVar var_17C
  loc_B58FFA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B58FFF: AryUnlock
  loc_B59002: LitI2_Byte 0
  loc_B59004: LitI4 1
  loc_B59009: FLdPr Me
  loc_B5900C: MemLdStr global_84
  loc_B5900F: AryLock
  loc_B59012: Ary1LdPr
  loc_B59013: MemLdRfVar from_stack_1.global_4
  loc_B59016: CVarRef
  loc_B5901B: LitI2_Byte &HFF
  loc_B5901D: FLdPr Me
  loc_B59020: MemLdI2 global_88
  loc_B59023: CI4UI1
  loc_B59024: FLdPr Me
  loc_B59027: MemLdStr global_80
  loc_B5902A: Ary1LdPr
  loc_B5902B: MemLdStr global_16
  loc_B5902E: CVarStr var_98
  loc_B59031: PopAdLdVar
  loc_B59032: FLdRfVar var_17C
  loc_B59035: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B5903A: AryUnlock
  loc_B5903D: FLdPr Me
  loc_B59040: MemLdRfVar from_stack_1.global_88
  loc_B59043: NextI2 var_180, loc_B58FC7
  loc_B59048: LitI2_Byte &HFF
  loc_B5904A: FLdPr Me
  loc_B5904D: MemStI2 bGenerado
  loc_B59050: LitI4 0
  loc_B59055: CI2I4
  loc_B59056: FLdPr Me
  loc_B59059: Me.MousePointer = from_stack_1
  loc_B5905E: LitVarStr var_98, vbNullString
  loc_B59063: PopAdLdVar
  loc_B59064: FLdPr Me
  loc_B59067: VCallAd Control_ID_statusBar
  loc_B5906A: FStAdFunc var_AC
  loc_B5906D: FLdPr var_AC
  loc_B59070: LateIdSt
  loc_B59075: FFree1Ad var_AC
  loc_B59078: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B868F0
  'Data Table: 494084
  loc_B863C8: FLdRfVar var_88
  loc_B863CB: LitI2_Byte 0
  loc_B863CD: LitI2_Byte &HFF
  loc_B863CF: ImpAdLdI4 MemVar_D93C84
  loc_B863D2: FLdPr Me
  loc_B863D5: MemLdRfVar from_stack_1.global_56
  loc_B863D8: NewIfNullPr IFileSystem3
  loc_B863DB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B863E0: ILdRf var_88
  loc_B863E3: FLdPr Me
  loc_B863E6: MemStVarAd
  loc_B863EA: FFree1Ad var_88
  loc_B863ED: LitI2_Byte &HFF
  loc_B863EF: ImpAdStI2 MemVar_D93C8A
  loc_B863F2: Call Proc_97_25_BEA1B4()
  loc_B863F7: LitI2_Byte 1
  loc_B863F9: FLdPr Me
  loc_B863FC: MemLdRfVar from_stack_1.global_88
  loc_B863FF: FLdPr Me
  loc_B86402: MemLdStr global_80
  loc_B86405: LitI2_Byte 1
  loc_B86407: FnUBound
  loc_B86409: CI2I4
  loc_B8640A: ForI2 var_8C
  loc_B86410: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_B86415: PopAdLdVar
  loc_B86416: FLdPr Me
  loc_B86419: MemLdRfVar from_stack_1.global_60
  loc_B8641C: LdPrVar
  loc_B8641E: LateMemCall
  loc_B86424: LitStr "    <th colspan=""20"">RECAUDADOR: "
  loc_B86427: FLdPr Me
  loc_B8642A: MemLdI2 global_88
  loc_B8642D: CI4UI1
  loc_B8642E: FLdPr Me
  loc_B86431: MemLdStr global_80
  loc_B86434: Ary1LdPr
  loc_B86435: MemLdStr global_0
  loc_B86438: ConcatStr
  loc_B86439: FStStrNoPop var_B0
  loc_B8643C: LitStr " - "
  loc_B8643F: ConcatStr
  loc_B86440: FStStrNoPop var_B4
  loc_B86443: FLdPr Me
  loc_B86446: MemLdI2 global_88
  loc_B86449: CI4UI1
  loc_B8644A: FLdPr Me
  loc_B8644D: MemLdStr global_80
  loc_B86450: Ary1LdPr
  loc_B86451: MemLdStr global_4
  loc_B86454: ConcatStr
  loc_B86455: FStStrNoPop var_B8
  loc_B86458: LitStr "</th>"
  loc_B8645B: ConcatStr
  loc_B8645C: CVarStr var_C8
  loc_B8645F: PopAdLdVar
  loc_B86460: FLdPr Me
  loc_B86463: MemLdRfVar from_stack_1.global_60
  loc_B86466: LdPrVar
  loc_B86468: LateMemCall
  loc_B8646E: FFreeStr var_B0 = "": var_B4 = ""
  loc_B86477: FFree1Var var_C8 = ""
  loc_B8647A: LitVarStr var_9C, "     </tr>"
  loc_B8647F: PopAdLdVar
  loc_B86480: FLdPr Me
  loc_B86483: MemLdRfVar from_stack_1.global_60
  loc_B86486: LdPrVar
  loc_B86488: LateMemCall
  loc_B8648E: LitI2_Byte 1
  loc_B86490: FLdPr Me
  loc_B86493: MemLdRfVar from_stack_1.global_90
  loc_B86496: FLdPr Me
  loc_B86499: MemLdI2 global_88
  loc_B8649C: CI4UI1
  loc_B8649D: FLdPr Me
  loc_B864A0: MemLdStr global_80
  loc_B864A3: Ary1LdPr
  loc_B864A4: MemLdStr global_8
  loc_B864A7: LitI2_Byte 1
  loc_B864A9: FnUBound
  loc_B864AB: CI2I4
  loc_B864AC: ForI2 var_CC
  loc_B864B2: FLdPr Me
  loc_B864B5: MemLdI2 global_90
  loc_B864B8: CI4UI1
  loc_B864B9: FLdPr Me
  loc_B864BC: MemLdI2 global_88
  loc_B864BF: CI4UI1
  loc_B864C0: FLdPr Me
  loc_B864C3: MemLdStr global_80
  loc_B864C6: AryLock
  loc_B864C9: Ary1LdPr
  loc_B864CA: MemLdStr global_8
  loc_B864CD: AryLock
  loc_B864D0: Ary1LdRf
  loc_B864D1: FStR4 var_D8
  loc_B864D4: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B864D9: PopAdLdVar
  loc_B864DA: FLdPr Me
  loc_B864DD: MemLdRfVar from_stack_1.global_60
  loc_B864E0: LdPrVar
  loc_B864E2: LateMemCall
  loc_B864E8: LitStr vbNullString
  loc_B864EB: LitI2_Byte 0
  loc_B864ED: LitI2_Byte 0
  loc_B864EF: LitI2_Byte 0
  loc_B864F1: LitStr "center"
  loc_B864F4: FMemLdR4 var_D8(0)
  loc_B864F9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B864FE: CVarStr var_C8
  loc_B86501: PopAdLdVar
  loc_B86502: FLdPr Me
  loc_B86505: MemLdRfVar from_stack_1.global_60
  loc_B86508: LdPrVar
  loc_B8650A: LateMemCall
  loc_B86510: FFree1Var var_C8 = ""
  loc_B86513: FMemLdRf ext_4010C4
  loc_B86518: CVarRef
  loc_B8651D: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_B86522: FStVarCopyObj var_C8
  loc_B86525: FLdRfVar var_C8
  loc_B86528: FMemLdR4 var_D8(4)
  loc_B8652D: LitStr vbNullString
  loc_B86530: EqStr
  loc_B86532: CVarBoolI2 var_9C
  loc_B86536: FLdRfVar var_F8
  loc_B86539: ImpAdCallFPR4  = IIf(, , )
  loc_B8653E: LitStr vbNullString
  loc_B86541: LitI2_Byte 0
  loc_B86543: LitI2_Byte 0
  loc_B86545: LitI2_Byte 0
  loc_B86547: LitStr "center"
  loc_B8654A: FLdRfVar var_F8
  loc_B8654D: CStrVarVal var_B0
  loc_B86551: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B86556: CVarStr var_108
  loc_B86559: PopAdLdVar
  loc_B8655A: FLdPr Me
  loc_B8655D: MemLdRfVar from_stack_1.global_60
  loc_B86560: LdPrVar
  loc_B86562: LateMemCall
  loc_B86568: FFree1Str var_B0
  loc_B8656B: FFreeVar var_9C = "": var_C8 = "": var_F8 = ""
  loc_B86576: LitStr vbNullString
  loc_B86579: LitI2_Byte 0
  loc_B8657B: LitI2_Byte 0
  loc_B8657D: LitI2_Byte 0
  loc_B8657F: LitStr "right"
  loc_B86582: FMemLdR4 var_D8(8)
  loc_B86587: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8658C: CVarStr var_C8
  loc_B8658F: PopAdLdVar
  loc_B86590: FLdPr Me
  loc_B86593: MemLdRfVar from_stack_1.global_60
  loc_B86596: LdPrVar
  loc_B86598: LateMemCall
  loc_B8659E: FFree1Var var_C8 = ""
  loc_B865A1: LitStr vbNullString
  loc_B865A4: LitI2_Byte 0
  loc_B865A6: LitI2_Byte 0
  loc_B865A8: LitI2_Byte 0
  loc_B865AA: LitStr "right"
  loc_B865AD: FMemLdR4 var_D8(12)
  loc_B865B2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B865B7: CVarStr var_C8
  loc_B865BA: PopAdLdVar
  loc_B865BB: FLdPr Me
  loc_B865BE: MemLdRfVar from_stack_1.global_60
  loc_B865C1: LdPrVar
  loc_B865C3: LateMemCall
  loc_B865C9: FFree1Var var_C8 = ""
  loc_B865CC: LitStr vbNullString
  loc_B865CF: LitI2_Byte 0
  loc_B865D1: LitI2_Byte 0
  loc_B865D3: LitI2_Byte 0
  loc_B865D5: LitStr "right"
  loc_B865D8: FMemLdR4 var_D8(16)
  loc_B865DD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B865E2: CVarStr var_C8
  loc_B865E5: PopAdLdVar
  loc_B865E6: FLdPr Me
  loc_B865E9: MemLdRfVar from_stack_1.global_60
  loc_B865EC: LdPrVar
  loc_B865EE: LateMemCall
  loc_B865F4: FFree1Var var_C8 = ""
  loc_B865F7: LitStr vbNullString
  loc_B865FA: LitI2_Byte 0
  loc_B865FC: LitI2_Byte 0
  loc_B865FE: LitI2_Byte 0
  loc_B86600: LitStr "right"
  loc_B86603: FMemLdR4 var_D8(20)
  loc_B86608: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8660D: CVarStr var_C8
  loc_B86610: PopAdLdVar
  loc_B86611: FLdPr Me
  loc_B86614: MemLdRfVar from_stack_1.global_60
  loc_B86617: LdPrVar
  loc_B86619: LateMemCall
  loc_B8661F: FFree1Var var_C8 = ""
  loc_B86622: LitStr vbNullString
  loc_B86625: LitI2_Byte 0
  loc_B86627: LitI2_Byte 0
  loc_B86629: LitI2_Byte 0
  loc_B8662B: LitStr "right"
  loc_B8662E: FMemLdR4 var_D8(24)
  loc_B86633: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B86638: CVarStr var_C8
  loc_B8663B: PopAdLdVar
  loc_B8663C: FLdPr Me
  loc_B8663F: MemLdRfVar from_stack_1.global_60
  loc_B86642: LdPrVar
  loc_B86644: LateMemCall
  loc_B8664A: FFree1Var var_C8 = ""
  loc_B8664D: LitStr vbNullString
  loc_B86650: LitI2_Byte 0
  loc_B86652: LitI2_Byte 0
  loc_B86654: LitI2_Byte 0
  loc_B86656: LitStr "right"
  loc_B86659: FMemLdR4 var_D8(28)
  loc_B8665E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B86663: CVarStr var_C8
  loc_B86666: PopAdLdVar
  loc_B86667: FLdPr Me
  loc_B8666A: MemLdRfVar from_stack_1.global_60
  loc_B8666D: LdPrVar
  loc_B8666F: LateMemCall
  loc_B86675: FFree1Var var_C8 = ""
  loc_B86678: LitStr vbNullString
  loc_B8667B: LitI2_Byte 0
  loc_B8667D: LitI2_Byte 0
  loc_B8667F: LitI2_Byte 0
  loc_B86681: LitStr "right"
  loc_B86684: FMemLdR4 var_D8(36)
  loc_B86689: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8668E: CVarStr var_C8
  loc_B86691: PopAdLdVar
  loc_B86692: FLdPr Me
  loc_B86695: MemLdRfVar from_stack_1.global_60
  loc_B86698: LdPrVar
  loc_B8669A: LateMemCall
  loc_B866A0: FFree1Var var_C8 = ""
  loc_B866A3: LitStr vbNullString
  loc_B866A6: LitI2_Byte 0
  loc_B866A8: LitI2_Byte 0
  loc_B866AA: LitI2_Byte 0
  loc_B866AC: LitStr "right"
  loc_B866AF: FMemLdR4 var_D8(32)
  loc_B866B4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B866B9: CVarStr var_C8
  loc_B866BC: PopAdLdVar
  loc_B866BD: FLdPr Me
  loc_B866C0: MemLdRfVar from_stack_1.global_60
  loc_B866C3: LdPrVar
  loc_B866C5: LateMemCall
  loc_B866CB: FFree1Var var_C8 = ""
  loc_B866CE: LitStr vbNullString
  loc_B866D1: LitI2_Byte 0
  loc_B866D3: LitI2_Byte 0
  loc_B866D5: LitI2_Byte 0
  loc_B866D7: LitStr "right"
  loc_B866DA: FMemLdR4 var_D8(40)
  loc_B866DF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B866E4: CVarStr var_C8
  loc_B866E7: PopAdLdVar
  loc_B866E8: FLdPr Me
  loc_B866EB: MemLdRfVar from_stack_1.global_60
  loc_B866EE: LdPrVar
  loc_B866F0: LateMemCall
  loc_B866F6: FFree1Var var_C8 = ""
  loc_B866F9: LitI4 0
  loc_B866FE: FStR4 var_D8
  loc_B86701: AryUnlock
  loc_B86704: AryUnlock
  loc_B86707: FLdPr Me
  loc_B8670A: MemLdRfVar from_stack_1.global_90
  loc_B8670D: NextI2 var_CC, loc_B864B2
  loc_B86712: FLdPr Me
  loc_B86715: MemLdStr global_80
  loc_B86718: LitI2_Byte 1
  loc_B8671A: FnUBound
  loc_B8671C: LitI4 1
  loc_B86721: GtI4
  loc_B86722: BranchF loc_B867EE
  loc_B86725: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_B8672A: PopAdLdVar
  loc_B8672B: FLdPr Me
  loc_B8672E: MemLdRfVar from_stack_1.global_60
  loc_B86731: LdPrVar
  loc_B86733: LateMemCall
  loc_B86739: LitVarStr var_9C, "    <th colspan=""8"">Subtotal</th>"
  loc_B8673E: PopAdLdVar
  loc_B8673F: FLdPr Me
  loc_B86742: MemLdRfVar from_stack_1.global_60
  loc_B86745: LdPrVar
  loc_B86747: LateMemCall
  loc_B8674D: FLdPr Me
  loc_B86750: MemLdI2 global_88
  loc_B86753: CI4UI1
  loc_B86754: FLdPr Me
  loc_B86757: MemLdStr global_80
  loc_B8675A: AryLock
  loc_B8675D: Ary1LdPr
  loc_B8675E: MemLdRfVar from_stack_1.global_12
  loc_B86761: FStR4 var_120
  loc_B86764: LitStr vbNullString
  loc_B86767: LitI2_Byte 0
  loc_B86769: LitI2_Byte 0
  loc_B8676B: LitI2_Byte 0
  loc_B8676D: LitStr "right"
  loc_B86770: FMemLdR4 var_120(0)
  loc_B86775: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8677A: CVarStr var_C8
  loc_B8677D: PopAdLdVar
  loc_B8677E: FLdPr Me
  loc_B86781: MemLdRfVar from_stack_1.global_60
  loc_B86784: LdPrVar
  loc_B86786: LateMemCall
  loc_B8678C: FFree1Var var_C8 = ""
  loc_B8678F: LitStr vbNullString
  loc_B86792: LitI2_Byte 0
  loc_B86794: LitI2_Byte 0
  loc_B86796: LitI2_Byte 0
  loc_B86798: LitStr "right"
  loc_B8679B: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_B8679E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B867A3: CVarStr var_C8
  loc_B867A6: PopAdLdVar
  loc_B867A7: FLdPr Me
  loc_B867AA: MemLdRfVar from_stack_1.global_60
  loc_B867AD: LdPrVar
  loc_B867AF: LateMemCall
  loc_B867B5: FFree1Var var_C8 = ""
  loc_B867B8: LitStr vbNullString
  loc_B867BB: LitI2_Byte 0
  loc_B867BD: LitI2_Byte 0
  loc_B867BF: LitI2_Byte 0
  loc_B867C1: LitStr "right"
  loc_B867C4: FMemLdR4 var_120(4)
  loc_B867C9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B867CE: CVarStr var_C8
  loc_B867D1: PopAdLdVar
  loc_B867D2: FLdPr Me
  loc_B867D5: MemLdRfVar from_stack_1.global_60
  loc_B867D8: LdPrVar
  loc_B867DA: LateMemCall
  loc_B867E0: FFree1Var var_C8 = ""
  loc_B867E3: LitI4 0
  loc_B867E8: FStR4 var_120
  loc_B867EB: AryUnlock
  loc_B867EE: FLdPr Me
  loc_B867F1: MemLdRfVar from_stack_1.global_88
  loc_B867F4: NextI2 var_8C, loc_B86410
  loc_B867F9: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_B867FE: PopAdLdVar
  loc_B867FF: FLdPr Me
  loc_B86802: MemLdRfVar from_stack_1.global_60
  loc_B86805: LdPrVar
  loc_B86807: LateMemCall
  loc_B8680D: LitVarStr var_9C, "    <td colspan=""8"" align=""right"">Total</td>"
  loc_B86812: PopAdLdVar
  loc_B86813: FLdPr Me
  loc_B86816: MemLdRfVar from_stack_1.global_60
  loc_B86819: LdPrVar
  loc_B8681B: LateMemCall
  loc_B86821: LitI4 1
  loc_B86826: FLdPr Me
  loc_B86829: MemLdStr global_84
  loc_B8682C: AryLock
  loc_B8682F: Ary1LdRf
  loc_B86830: FStR4 var_128
  loc_B86833: LitStr vbNullString
  loc_B86836: LitI2_Byte 0
  loc_B86838: LitI2_Byte 0
  loc_B8683A: LitI2_Byte 0
  loc_B8683C: LitStr "right"
  loc_B8683F: FMemLdR4 var_128(0)
  loc_B86844: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B86849: CVarStr var_C8
  loc_B8684C: PopAdLdVar
  loc_B8684D: FLdPr Me
  loc_B86850: MemLdRfVar from_stack_1.global_60
  loc_B86853: LdPrVar
  loc_B86855: LateMemCall
  loc_B8685B: FFree1Var var_C8 = ""
  loc_B8685E: LitStr vbNullString
  loc_B86861: LitI2_Byte 0
  loc_B86863: LitI2_Byte 0
  loc_B86865: LitI2_Byte 0
  loc_B86867: LitStr "right"
  loc_B8686A: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_B8686D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B86872: CVarStr var_C8
  loc_B86875: PopAdLdVar
  loc_B86876: FLdPr Me
  loc_B86879: MemLdRfVar from_stack_1.global_60
  loc_B8687C: LdPrVar
  loc_B8687E: LateMemCall
  loc_B86884: FFree1Var var_C8 = ""
  loc_B86887: LitStr vbNullString
  loc_B8688A: LitI2_Byte 0
  loc_B8688C: LitI2_Byte 0
  loc_B8688E: LitI2_Byte 0
  loc_B86890: LitStr "right"
  loc_B86893: FMemLdR4 var_128(4)
  loc_B86898: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B8689D: CVarStr var_C8
  loc_B868A0: PopAdLdVar
  loc_B868A1: FLdPr Me
  loc_B868A4: MemLdRfVar from_stack_1.global_60
  loc_B868A7: LdPrVar
  loc_B868A9: LateMemCall
  loc_B868AF: FFree1Var var_C8 = ""
  loc_B868B2: LitI4 0
  loc_B868B7: FStR4 var_128
  loc_B868BA: AryUnlock
  loc_B868BD: LitVarStr var_9C, "     </tr>"
  loc_B868C2: PopAdLdVar
  loc_B868C3: FLdPr Me
  loc_B868C6: MemLdRfVar from_stack_1.global_60
  loc_B868C9: LdPrVar
  loc_B868CB: LateMemCall
  loc_B868D1: Call Proc_97_26_A0AAE8()
  loc_B868D6: FLdPr Me
  loc_B868D9: MemLdRfVar from_stack_1.global_60
  loc_B868DC: LdPrVar
  loc_B868DE: LateMemCall
  loc_B868E4: LitStr vbNullString
  loc_B868E7: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B868EC: ExitProcHresult
End Sub

Private Function Proc_97_23_AE31EC() 'AE31EC
  'Data Table: 494084
  loc_AE3090: FLdPr Me
  loc_AE3093: MemLdI2 global_88
  loc_AE3096: LitI2_Byte 1
  loc_AE3098: AddI2
  loc_AE3099: FLdPr Me
  loc_AE309C: MemStI2 global_88
  loc_AE309F: LitI2_Byte 0
  loc_AE30A1: FLdPr Me
  loc_AE30A4: MemStI2 global_90
  loc_AE30A7: LitI4 0
  loc_AE30AC: FLdPr Me
  loc_AE30AF: MemLdI2 global_88
  loc_AE30B2: CI4UI1
  loc_AE30B3: FLdPr Me
  loc_AE30B6: MemLdRfVar from_stack_1.global_80
  loc_AE30B9: RedimPreserve
  loc_AE30C3: FLdRfVar var_A0
  loc_AE30C6: LitVarStr var_9C, "CodiReca"
  loc_AE30CB: PopAdLdVar
  loc_AE30CC: FLdRfVar var_8C
  loc_AE30CF: FLdRfVar var_88
  loc_AE30D2: FLdPr Me
  loc_AE30D5: MemLdRfVar from_stack_1.global_76
  loc_AE30D8: NewIfNullPr clsbase
  loc_AE30DB: from_stack_1v = clsbase.RsFrmGet()
  loc_AE30E0: FLdPr var_88
  loc_AE30E3:  = Me.Fields
  loc_AE30E8: FLdPr var_8C
  loc_AE30EB: from_stack_2 = Me.Item(from_stack_1)
  loc_AE30F0: LitI2_Byte 0
  loc_AE30F2: LitVar_Missing var_D4
  loc_AE30F5: LitI2_Byte 0
  loc_AE30F7: FLdZeroAd var_A0
  loc_AE30FA: CVarAd
  loc_AE30FE: PopAdLdVar
  loc_AE30FF: FLdPr Me
  loc_AE3102: MemLdI2 global_88
  loc_AE3105: CI4UI1
  loc_AE3106: FLdPr Me
  loc_AE3109: MemLdStr global_80
  loc_AE310C: AryLock
  loc_AE310F: Ary1LdPr
  loc_AE3110: MemLdRfVar from_stack_1.global_0
  loc_AE3113: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE3118: AryUnlock
  loc_AE311B: FFreeAd var_88 = ""
  loc_AE3122: FFreeVar var_B4 = ""
  loc_AE3129: FLdRfVar var_A0
  loc_AE312C: LitVarStr var_9C, "DetaReca"
  loc_AE3131: PopAdLdVar
  loc_AE3132: FLdRfVar var_8C
  loc_AE3135: FLdRfVar var_88
  loc_AE3138: FLdPr Me
  loc_AE313B: MemLdRfVar from_stack_1.global_76
  loc_AE313E: NewIfNullPr clsbase
  loc_AE3141: from_stack_1v = clsbase.RsFrmGet()
  loc_AE3146: FLdPr var_88
  loc_AE3149:  = Me.Fields
  loc_AE314E: FLdPr var_8C
  loc_AE3151: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3156: LitI2_Byte 0
  loc_AE3158: LitVar_Missing var_D4
  loc_AE315B: LitI2_Byte 0
  loc_AE315D: FLdZeroAd var_A0
  loc_AE3160: CVarAd
  loc_AE3164: PopAdLdVar
  loc_AE3165: FLdPr Me
  loc_AE3168: MemLdI2 global_88
  loc_AE316B: CI4UI1
  loc_AE316C: FLdPr Me
  loc_AE316F: MemLdStr global_80
  loc_AE3172: AryLock
  loc_AE3175: Ary1LdPr
  loc_AE3176: MemLdRfVar from_stack_1.global_4
  loc_AE3179: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE317E: AryUnlock
  loc_AE3181: FFreeAd var_88 = ""
  loc_AE3188: FFreeVar var_B4 = ""
  loc_AE318F: FLdPr Me
  loc_AE3192: MemLdI2 global_88
  loc_AE3195: CI4UI1
  loc_AE3196: FLdPr Me
  loc_AE3199: MemLdStr global_80
  loc_AE319C: AryLock
  loc_AE319F: Ary1LdPr
  loc_AE31A0: MemLdRfVar from_stack_1.global_12
  loc_AE31A3: FStR4 var_DC
  loc_AE31A6: LitI2_Byte 0
  loc_AE31A8: LitVar_Missing var_B4
  loc_AE31AB: LitI2_Byte &HFF
  loc_AE31AD: LitVarI2 var_9C, 0
  loc_AE31B2: PopAdLdVar
  loc_AE31B3: FMemLdRf 0
  loc_AE31B8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE31BD: FFree1Var var_B4 = ""
  loc_AE31C0: LitI2_Byte 0
  loc_AE31C2: LitVar_Missing var_B4
  loc_AE31C5: LitI2_Byte &HFF
  loc_AE31C7: LitVarI2 var_9C, 0
  loc_AE31CC: PopAdLdVar
  loc_AE31CD: FMemLdRf 0
  loc_AE31D2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE31D7: FFree1Var var_B4 = ""
  loc_AE31DA: LitI4 0
  loc_AE31DF: FStR4 var_DC
  loc_AE31E2: AryUnlock
  loc_AE31E5: Call Proc_97_24_B87F10()
  loc_AE31EA: ExitProcHresult
End Function

Private Function Proc_97_24_B87F10() 'B87F10
  'Data Table: 494084
  loc_B879D8: FLdPr Me
  loc_B879DB: MemLdI2 global_90
  loc_B879DE: LitI2_Byte 1
  loc_B879E0: AddI2
  loc_B879E1: FLdPr Me
  loc_B879E4: MemStI2 global_90
  loc_B879E7: LitI4 0
  loc_B879EC: FLdPr Me
  loc_B879EF: MemLdI2 global_90
  loc_B879F2: CI4UI1
  loc_B879F3: FLdPr Me
  loc_B879F6: MemLdI2 global_88
  loc_B879F9: CI4UI1
  loc_B879FA: FLdPr Me
  loc_B879FD: MemLdStr global_80
  loc_B87A00: Ary1LdPr
  loc_B87A01: MemLdRfVar from_stack_1.global_8
  loc_B87A04: RedimPreserve
  loc_B87A0E: FLdPr Me
  loc_B87A11: MemLdI2 global_90
  loc_B87A14: CI4UI1
  loc_B87A15: FLdPr Me
  loc_B87A18: MemLdI2 global_88
  loc_B87A1B: CI4UI1
  loc_B87A1C: FLdPr Me
  loc_B87A1F: MemLdStr global_80
  loc_B87A22: AryLock
  loc_B87A25: Ary1LdPr
  loc_B87A26: MemLdStr global_8
  loc_B87A29: AryLock
  loc_B87A2C: Ary1LdRf
  loc_B87A2D: FStR4 var_90
  loc_B87A30: FLdRfVar var_AC
  loc_B87A33: LitVarStr var_A8, "FealBoap"
  loc_B87A38: PopAdLdVar
  loc_B87A39: FLdRfVar var_98
  loc_B87A3C: FLdRfVar var_94
  loc_B87A3F: FLdPr Me
  loc_B87A42: MemLdRfVar from_stack_1.global_76
  loc_B87A45: NewIfNullPr clsbase
  loc_B87A48: from_stack_1v = clsbase.RsFrmGet()
  loc_B87A4D: FLdPr var_94
  loc_B87A50:  = Me.Fields
  loc_B87A55: FLdPr var_98
  loc_B87A58: from_stack_2 = Me.Item(from_stack_1)
  loc_B87A5D: LitI2_Byte 0
  loc_B87A5F: LitVar_Missing var_DC
  loc_B87A62: LitI2_Byte 0
  loc_B87A64: FLdZeroAd var_AC
  loc_B87A67: CVarAd
  loc_B87A6B: PopAdLdVar
  loc_B87A6C: FMemLdRf 0
  loc_B87A71: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87A76: FFreeAd var_94 = ""
  loc_B87A7D: FFreeVar var_BC = ""
  loc_B87A84: FLdRfVar var_AC
  loc_B87A87: LitVarStr var_A8, "FeacBoap"
  loc_B87A8C: PopAdLdVar
  loc_B87A8D: FLdRfVar var_98
  loc_B87A90: FLdRfVar var_94
  loc_B87A93: FLdPr Me
  loc_B87A96: MemLdRfVar from_stack_1.global_76
  loc_B87A99: NewIfNullPr clsbase
  loc_B87A9C: from_stack_1v = clsbase.RsFrmGet()
  loc_B87AA1: FLdPr var_94
  loc_B87AA4:  = Me.Fields
  loc_B87AA9: FLdPr var_98
  loc_B87AAC: from_stack_2 = Me.Item(from_stack_1)
  loc_B87AB1: LitI2_Byte 0
  loc_B87AB3: LitVar_Missing var_DC
  loc_B87AB6: LitI2_Byte 0
  loc_B87AB8: FLdZeroAd var_AC
  loc_B87ABB: CVarAd
  loc_B87ABF: PopAdLdVar
  loc_B87AC0: FMemLdRf 0
  loc_B87AC5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87ACA: FFreeAd var_94 = ""
  loc_B87AD1: FFreeVar var_BC = ""
  loc_B87AD8: FLdRfVar var_AC
  loc_B87ADB: LitVarStr var_A8, "CodiOfic"
  loc_B87AE0: PopAdLdVar
  loc_B87AE1: FLdRfVar var_98
  loc_B87AE4: FLdRfVar var_94
  loc_B87AE7: FLdPr Me
  loc_B87AEA: MemLdRfVar from_stack_1.global_76
  loc_B87AED: NewIfNullPr clsbase
  loc_B87AF0: from_stack_1v = clsbase.RsFrmGet()
  loc_B87AF5: FLdPr var_94
  loc_B87AF8:  = Me.Fields
  loc_B87AFD: FLdPr var_98
  loc_B87B00: from_stack_2 = Me.Item(from_stack_1)
  loc_B87B05: LitI2_Byte 0
  loc_B87B07: LitVar_Missing var_DC
  loc_B87B0A: LitI2_Byte 0
  loc_B87B0C: FLdZeroAd var_AC
  loc_B87B0F: CVarAd
  loc_B87B13: PopAdLdVar
  loc_B87B14: FMemLdRf 0
  loc_B87B19: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87B1E: FFreeAd var_94 = ""
  loc_B87B25: FFreeVar var_BC = ""
  loc_B87B2C: FLdRfVar var_AC
  loc_B87B2F: LitVarStr var_A8, "CuenCtct"
  loc_B87B34: PopAdLdVar
  loc_B87B35: FLdRfVar var_98
  loc_B87B38: FLdRfVar var_94
  loc_B87B3B: FLdPr Me
  loc_B87B3E: MemLdRfVar from_stack_1.global_76
  loc_B87B41: NewIfNullPr clsbase
  loc_B87B44: from_stack_1v = clsbase.RsFrmGet()
  loc_B87B49: FLdPr var_94
  loc_B87B4C:  = Me.Fields
  loc_B87B51: FLdPr var_98
  loc_B87B54: from_stack_2 = Me.Item(from_stack_1)
  loc_B87B59: LitI2_Byte 0
  loc_B87B5B: LitVar_Missing var_DC
  loc_B87B5E: LitI2_Byte 0
  loc_B87B60: FLdZeroAd var_AC
  loc_B87B63: CVarAd
  loc_B87B67: PopAdLdVar
  loc_B87B68: FMemLdRf 0
  loc_B87B6D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87B72: FFreeAd var_94 = ""
  loc_B87B79: FFreeVar var_BC = ""
  loc_B87B80: FLdRfVar var_AC
  loc_B87B83: LitVarStr var_A8, "DetaPers"
  loc_B87B88: PopAdLdVar
  loc_B87B89: FLdRfVar var_98
  loc_B87B8C: FLdRfVar var_94
  loc_B87B8F: FLdPr Me
  loc_B87B92: MemLdRfVar from_stack_1.global_76
  loc_B87B95: NewIfNullPr clsbase
  loc_B87B98: from_stack_1v = clsbase.RsFrmGet()
  loc_B87B9D: FLdPr var_94
  loc_B87BA0:  = Me.Fields
  loc_B87BA5: FLdPr var_98
  loc_B87BA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B87BAD: LitI2_Byte 0
  loc_B87BAF: LitVar_Missing var_DC
  loc_B87BB2: LitI2_Byte 0
  loc_B87BB4: FLdZeroAd var_AC
  loc_B87BB7: CVarAd
  loc_B87BBB: PopAdLdVar
  loc_B87BBC: FMemLdRf 0
  loc_B87BC1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87BC6: FFreeAd var_94 = ""
  loc_B87BCD: FFreeVar var_BC = ""
  loc_B87BD4: FLdRfVar var_AC
  loc_B87BD7: LitVarStr var_A8, "NumeApre"
  loc_B87BDC: PopAdLdVar
  loc_B87BDD: FLdRfVar var_98
  loc_B87BE0: FLdRfVar var_94
  loc_B87BE3: FLdPr Me
  loc_B87BE6: MemLdRfVar from_stack_1.global_76
  loc_B87BE9: NewIfNullPr clsbase
  loc_B87BEC: from_stack_1v = clsbase.RsFrmGet()
  loc_B87BF1: FLdPr var_94
  loc_B87BF4:  = Me.Fields
  loc_B87BF9: FLdPr var_98
  loc_B87BFC: from_stack_2 = Me.Item(from_stack_1)
  loc_B87C01: LitI2_Byte 0
  loc_B87C03: LitVar_Missing var_DC
  loc_B87C06: LitI2_Byte 0
  loc_B87C08: FLdZeroAd var_AC
  loc_B87C0B: CVarAd
  loc_B87C0F: PopAdLdVar
  loc_B87C10: FMemLdRf 0
  loc_B87C15: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87C1A: FFreeAd var_94 = ""
  loc_B87C21: FFreeVar var_BC = ""
  loc_B87C28: FLdRfVar var_AC
  loc_B87C2B: LitVarStr var_A8, "AutoApre"
  loc_B87C30: PopAdLdVar
  loc_B87C31: FLdRfVar var_98
  loc_B87C34: FLdRfVar var_94
  loc_B87C37: FLdPr Me
  loc_B87C3A: MemLdRfVar from_stack_1.global_76
  loc_B87C3D: NewIfNullPr clsbase
  loc_B87C40: from_stack_1v = clsbase.RsFrmGet()
  loc_B87C45: FLdPr var_94
  loc_B87C48:  = Me.Fields
  loc_B87C4D: FLdPr var_98
  loc_B87C50: from_stack_2 = Me.Item(from_stack_1)
  loc_B87C55: LitI2_Byte 0
  loc_B87C57: LitVar_Missing var_DC
  loc_B87C5A: LitI2_Byte 0
  loc_B87C5C: FLdZeroAd var_AC
  loc_B87C5F: CVarAd
  loc_B87C63: PopAdLdVar
  loc_B87C64: FMemLdRf 0
  loc_B87C69: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87C6E: FFreeAd var_94 = ""
  loc_B87C75: FFreeVar var_BC = ""
  loc_B87C7C: FLdRfVar var_AC
  loc_B87C7F: LitVarStr var_A8, "CodiInju"
  loc_B87C84: PopAdLdVar
  loc_B87C85: FLdRfVar var_98
  loc_B87C88: FLdRfVar var_94
  loc_B87C8B: FLdPr Me
  loc_B87C8E: MemLdRfVar from_stack_1.global_76
  loc_B87C91: NewIfNullPr clsbase
  loc_B87C94: from_stack_1v = clsbase.RsFrmGet()
  loc_B87C99: FLdPr var_94
  loc_B87C9C:  = Me.Fields
  loc_B87CA1: FLdPr var_98
  loc_B87CA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B87CA9: LitI2_Byte 0
  loc_B87CAB: LitVar_Missing var_DC
  loc_B87CAE: LitI2_Byte 0
  loc_B87CB0: FLdZeroAd var_AC
  loc_B87CB3: CVarAd
  loc_B87CB7: PopAdLdVar
  loc_B87CB8: FMemLdRf 0
  loc_B87CBD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87CC2: FFreeAd var_94 = ""
  loc_B87CC9: FFreeVar var_BC = ""
  loc_B87CD0: FLdRfVar var_AC
  loc_B87CD3: LitVarStr var_A8, "CodiOfju"
  loc_B87CD8: PopAdLdVar
  loc_B87CD9: FLdRfVar var_98
  loc_B87CDC: FLdRfVar var_94
  loc_B87CDF: FLdPr Me
  loc_B87CE2: MemLdRfVar from_stack_1.global_76
  loc_B87CE5: NewIfNullPr clsbase
  loc_B87CE8: from_stack_1v = clsbase.RsFrmGet()
  loc_B87CED: FLdPr var_94
  loc_B87CF0:  = Me.Fields
  loc_B87CF5: FLdPr var_98
  loc_B87CF8: from_stack_2 = Me.Item(from_stack_1)
  loc_B87CFD: LitI2_Byte 0
  loc_B87CFF: LitVar_Missing var_DC
  loc_B87D02: LitI2_Byte 0
  loc_B87D04: FLdZeroAd var_AC
  loc_B87D07: CVarAd
  loc_B87D0B: PopAdLdVar
  loc_B87D0C: FMemLdRf 0
  loc_B87D11: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87D16: FFreeAd var_94 = ""
  loc_B87D1D: FFreeVar var_BC = ""
  loc_B87D24: FLdRfVar var_DE
  loc_B87D27: FLdPr Me
  loc_B87D2A: VCallAd Control_ID_IncluyeChk
  loc_B87D2D: FStAdFunc var_94
  loc_B87D30: FLdPr var_94
  loc_B87D33:  = Me.Value
  loc_B87D38: FLdI2 var_DE
  loc_B87D3B: CI4UI1
  loc_B87D3C: LitI4 1
  loc_B87D41: EqI4
  loc_B87D42: FFree1Ad var_94
  loc_B87D45: BranchF loc_B87E1D
  loc_B87D48: FLdRfVar var_AC
  loc_B87D4B: LitVarStr var_A8, "HoreBoap"
  loc_B87D50: PopAdLdVar
  loc_B87D51: FLdRfVar var_98
  loc_B87D54: FLdRfVar var_94
  loc_B87D57: FLdPr Me
  loc_B87D5A: MemLdRfVar from_stack_1.global_76
  loc_B87D5D: NewIfNullPr clsbase
  loc_B87D60: from_stack_1v = clsbase.RsFrmGet()
  loc_B87D65: FLdPr var_94
  loc_B87D68:  = Me.Fields
  loc_B87D6D: FLdPr var_98
  loc_B87D70: from_stack_2 = Me.Item(from_stack_1)
  loc_B87D75: LitI2_Byte 0
  loc_B87D77: FLdPr Me
  loc_B87D7A: MemLdI2 global_88
  loc_B87D7D: CI4UI1
  loc_B87D7E: FLdPr Me
  loc_B87D81: MemLdStr global_80
  loc_B87D84: AryLock
  loc_B87D87: Ary1LdPr
  loc_B87D88: MemLdRfVar from_stack_1.global_12
  loc_B87D8B: CVarRef
  loc_B87D90: LitI2_Byte &HFF
  loc_B87D92: FLdZeroAd var_AC
  loc_B87D95: CVarAd
  loc_B87D99: PopAdLdVar
  loc_B87D9A: FMemLdRf 0
  loc_B87D9F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87DA4: AryUnlock
  loc_B87DA7: FFreeAd var_94 = ""
  loc_B87DAE: FFree1Var var_BC = ""
  loc_B87DB1: FLdRfVar var_AC
  loc_B87DB4: LitVarStr var_A8, "HoofBoap"
  loc_B87DB9: PopAdLdVar
  loc_B87DBA: FLdRfVar var_98
  loc_B87DBD: FLdRfVar var_94
  loc_B87DC0: FLdPr Me
  loc_B87DC3: MemLdRfVar from_stack_1.global_76
  loc_B87DC6: NewIfNullPr clsbase
  loc_B87DC9: from_stack_1v = clsbase.RsFrmGet()
  loc_B87DCE: FLdPr var_94
  loc_B87DD1:  = Me.Fields
  loc_B87DD6: FLdPr var_98
  loc_B87DD9: from_stack_2 = Me.Item(from_stack_1)
  loc_B87DDE: LitI2_Byte 0
  loc_B87DE0: FLdPr Me
  loc_B87DE3: MemLdI2 global_88
  loc_B87DE6: CI4UI1
  loc_B87DE7: FLdPr Me
  loc_B87DEA: MemLdStr global_80
  loc_B87DED: AryLock
  loc_B87DF0: Ary1LdPr
  loc_B87DF1: MemLdRfVar from_stack_1.global_16
  loc_B87DF4: CVarRef
  loc_B87DF9: LitI2_Byte &HFF
  loc_B87DFB: FLdZeroAd var_AC
  loc_B87DFE: CVarAd
  loc_B87E02: PopAdLdVar
  loc_B87E03: FMemLdRf 0
  loc_B87E08: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87E0D: AryUnlock
  loc_B87E10: FFreeAd var_94 = ""
  loc_B87E17: FFree1Var var_BC = ""
  loc_B87E1A: Branch loc_B87EEB
  loc_B87E1D: FLdRfVar var_AC
  loc_B87E20: LitVarStr var_A8, "HoreBoap"
  loc_B87E25: PopAdLdVar
  loc_B87E26: FLdRfVar var_98
  loc_B87E29: FLdRfVar var_94
  loc_B87E2C: FLdPr Me
  loc_B87E2F: MemLdRfVar from_stack_1.global_76
  loc_B87E32: NewIfNullPr clsbase
  loc_B87E35: from_stack_1v = clsbase.RsFrmGet()
  loc_B87E3A: FLdPr var_94
  loc_B87E3D:  = Me.Fields
  loc_B87E42: FLdPr var_98
  loc_B87E45: from_stack_2 = Me.Item(from_stack_1)
  loc_B87E4A: LitI2_Byte 0
  loc_B87E4C: LitI4 1
  loc_B87E51: FLdPr Me
  loc_B87E54: MemLdStr global_84
  loc_B87E57: AryLock
  loc_B87E5A: Ary1LdPr
  loc_B87E5B: MemLdRfVar from_stack_1.global_0
  loc_B87E5E: CVarRef
  loc_B87E63: LitI2_Byte &HFF
  loc_B87E65: FLdZeroAd var_AC
  loc_B87E68: CVarAd
  loc_B87E6C: PopAdLdVar
  loc_B87E6D: FMemLdRf 0
  loc_B87E72: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87E77: AryUnlock
  loc_B87E7A: FFreeAd var_94 = ""
  loc_B87E81: FFree1Var var_BC = ""
  loc_B87E84: FLdRfVar var_AC
  loc_B87E87: LitVarStr var_A8, "HoofBoap"
  loc_B87E8C: PopAdLdVar
  loc_B87E8D: FLdRfVar var_98
  loc_B87E90: FLdRfVar var_94
  loc_B87E93: FLdPr Me
  loc_B87E96: MemLdRfVar from_stack_1.global_76
  loc_B87E99: NewIfNullPr clsbase
  loc_B87E9C: from_stack_1v = clsbase.RsFrmGet()
  loc_B87EA1: FLdPr var_94
  loc_B87EA4:  = Me.Fields
  loc_B87EA9: FLdPr var_98
  loc_B87EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_B87EB1: LitI2_Byte 0
  loc_B87EB3: LitI4 1
  loc_B87EB8: FLdPr Me
  loc_B87EBB: MemLdStr global_84
  loc_B87EBE: AryLock
  loc_B87EC1: Ary1LdPr
  loc_B87EC2: MemLdRfVar from_stack_1.global_4
  loc_B87EC5: CVarRef
  loc_B87ECA: LitI2_Byte &HFF
  loc_B87ECC: FLdZeroAd var_AC
  loc_B87ECF: CVarAd
  loc_B87ED3: PopAdLdVar
  loc_B87ED4: FMemLdRf 0
  loc_B87ED9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B87EDE: AryUnlock
  loc_B87EE1: FFreeAd var_94 = ""
  loc_B87EE8: FFree1Var var_BC = ""
  loc_B87EEB: LitI4 0
  loc_B87EF0: FStR4 var_90
  loc_B87EF3: AryUnlock
  loc_B87EF6: AryUnlock
  loc_B87EF9: LitI2_Byte 1
  loc_B87EFB: PopTmpLdAd2 var_DE
  loc_B87EFE: FLdPr Me
  loc_B87F01: MemLdRfVar from_stack_1.global_76
  loc_B87F04: NewIfNullPr clsbase
  loc_B87F07: Call clsbase.Move(from_stack_1v)
  loc_B87F0C: ExitProcHresult
End Function

Private Function Proc_97_25_BEA1B4() 'BEA1B4
  'Data Table: 494084
  loc_BE99B4: LitVarStr var_94, "<html>"
  loc_BE99B9: PopAdLdVar
  loc_BE99BA: FLdPr Me
  loc_BE99BD: MemLdRfVar from_stack_1.global_60
  loc_BE99C0: LdPrVar
  loc_BE99C2: LateMemCall
  loc_BE99C8: LitVarStr var_94, "<head>"
  loc_BE99CD: PopAdLdVar
  loc_BE99CE: FLdPr Me
  loc_BE99D1: MemLdRfVar from_stack_1.global_60
  loc_BE99D4: LdPrVar
  loc_BE99D6: LateMemCall
  loc_BE99DC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE99E1: PopAdLdVar
  loc_BE99E2: FLdPr Me
  loc_BE99E5: MemLdRfVar from_stack_1.global_60
  loc_BE99E8: LdPrVar
  loc_BE99EA: LateMemCall
  loc_BE99F0: LitStr "<title>"
  loc_BE99F3: FLdRfVar var_A8
  loc_BE99F6: FLdPr Me
  loc_BE99F9:  = Me.Caption
  loc_BE99FE: ILdRf var_A8
  loc_BE9A01: ConcatStr
  loc_BE9A02: FStStrNoPop var_AC
  loc_BE9A05: LitStr "</title>"
  loc_BE9A08: ConcatStr
  loc_BE9A09: CVarStr var_BC
  loc_BE9A0C: PopAdLdVar
  loc_BE9A0D: FLdPr Me
  loc_BE9A10: MemLdRfVar from_stack_1.global_60
  loc_BE9A13: LdPrVar
  loc_BE9A15: LateMemCall
  loc_BE9A1B: FFreeStr var_A8 = ""
  loc_BE9A22: FFree1Var var_BC = ""
  loc_BE9A25: LitVarStr var_94, "<style type=""text/css"">"
  loc_BE9A2A: PopAdLdVar
  loc_BE9A2B: FLdPr Me
  loc_BE9A2E: MemLdRfVar from_stack_1.global_60
  loc_BE9A31: LdPrVar
  loc_BE9A33: LateMemCall
  loc_BE9A39: LitVarStr var_94, ".Titulo1 {"
  loc_BE9A3E: PopAdLdVar
  loc_BE9A3F: FLdPr Me
  loc_BE9A42: MemLdRfVar from_stack_1.global_60
  loc_BE9A45: LdPrVar
  loc_BE9A47: LateMemCall
  loc_BE9A4D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE9A52: PopAdLdVar
  loc_BE9A53: FLdPr Me
  loc_BE9A56: MemLdRfVar from_stack_1.global_60
  loc_BE9A59: LdPrVar
  loc_BE9A5B: LateMemCall
  loc_BE9A61: LitVarStr var_94, " font-size: 18px;"
  loc_BE9A66: PopAdLdVar
  loc_BE9A67: FLdPr Me
  loc_BE9A6A: MemLdRfVar from_stack_1.global_60
  loc_BE9A6D: LdPrVar
  loc_BE9A6F: LateMemCall
  loc_BE9A75: LitVarStr var_94, " font-weight: bold;"
  loc_BE9A7A: PopAdLdVar
  loc_BE9A7B: FLdPr Me
  loc_BE9A7E: MemLdRfVar from_stack_1.global_60
  loc_BE9A81: LdPrVar
  loc_BE9A83: LateMemCall
  loc_BE9A89: LitVarStr var_94, "}"
  loc_BE9A8E: PopAdLdVar
  loc_BE9A8F: FLdPr Me
  loc_BE9A92: MemLdRfVar from_stack_1.global_60
  loc_BE9A95: LdPrVar
  loc_BE9A97: LateMemCall
  loc_BE9A9D: LitVarStr var_94, ".Titulo2 {"
  loc_BE9AA2: PopAdLdVar
  loc_BE9AA3: FLdPr Me
  loc_BE9AA6: MemLdRfVar from_stack_1.global_60
  loc_BE9AA9: LdPrVar
  loc_BE9AAB: LateMemCall
  loc_BE9AB1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE9AB6: PopAdLdVar
  loc_BE9AB7: FLdPr Me
  loc_BE9ABA: MemLdRfVar from_stack_1.global_60
  loc_BE9ABD: LdPrVar
  loc_BE9ABF: LateMemCall
  loc_BE9AC5: LitVarStr var_94, " font-size: 14px;"
  loc_BE9ACA: PopAdLdVar
  loc_BE9ACB: FLdPr Me
  loc_BE9ACE: MemLdRfVar from_stack_1.global_60
  loc_BE9AD1: LdPrVar
  loc_BE9AD3: LateMemCall
  loc_BE9AD9: LitVarStr var_94, " font-weight: bold;"
  loc_BE9ADE: PopAdLdVar
  loc_BE9ADF: FLdPr Me
  loc_BE9AE2: MemLdRfVar from_stack_1.global_60
  loc_BE9AE5: LdPrVar
  loc_BE9AE7: LateMemCall
  loc_BE9AED: LitVarStr var_94, "}"
  loc_BE9AF2: PopAdLdVar
  loc_BE9AF3: FLdPr Me
  loc_BE9AF6: MemLdRfVar from_stack_1.global_60
  loc_BE9AF9: LdPrVar
  loc_BE9AFB: LateMemCall
  loc_BE9B01: LitVarStr var_94, ".Normal {"
  loc_BE9B06: PopAdLdVar
  loc_BE9B07: FLdPr Me
  loc_BE9B0A: MemLdRfVar from_stack_1.global_60
  loc_BE9B0D: LdPrVar
  loc_BE9B0F: LateMemCall
  loc_BE9B15: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE9B1A: PopAdLdVar
  loc_BE9B1B: FLdPr Me
  loc_BE9B1E: MemLdRfVar from_stack_1.global_60
  loc_BE9B21: LdPrVar
  loc_BE9B23: LateMemCall
  loc_BE9B29: LitVarStr var_94, " font-size: 12px;"
  loc_BE9B2E: PopAdLdVar
  loc_BE9B2F: FLdPr Me
  loc_BE9B32: MemLdRfVar from_stack_1.global_60
  loc_BE9B35: LdPrVar
  loc_BE9B37: LateMemCall
  loc_BE9B3D: LitVarStr var_94, " font-style: normal;"
  loc_BE9B42: PopAdLdVar
  loc_BE9B43: FLdPr Me
  loc_BE9B46: MemLdRfVar from_stack_1.global_60
  loc_BE9B49: LdPrVar
  loc_BE9B4B: LateMemCall
  loc_BE9B51: LitVarStr var_94, " font-weight: normal;"
  loc_BE9B56: PopAdLdVar
  loc_BE9B57: FLdPr Me
  loc_BE9B5A: MemLdRfVar from_stack_1.global_60
  loc_BE9B5D: LdPrVar
  loc_BE9B5F: LateMemCall
  loc_BE9B65: LitVarStr var_94, " font-variant: normal;"
  loc_BE9B6A: PopAdLdVar
  loc_BE9B6B: FLdPr Me
  loc_BE9B6E: MemLdRfVar from_stack_1.global_60
  loc_BE9B71: LdPrVar
  loc_BE9B73: LateMemCall
  loc_BE9B79: LitVarStr var_94, "}"
  loc_BE9B7E: PopAdLdVar
  loc_BE9B7F: FLdPr Me
  loc_BE9B82: MemLdRfVar from_stack_1.global_60
  loc_BE9B85: LdPrVar
  loc_BE9B87: LateMemCall
  loc_BE9B8D: LitVarStr var_94, ".Encabezado {"
  loc_BE9B92: PopAdLdVar
  loc_BE9B93: FLdPr Me
  loc_BE9B96: MemLdRfVar from_stack_1.global_60
  loc_BE9B99: LdPrVar
  loc_BE9B9B: LateMemCall
  loc_BE9BA1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE9BA6: PopAdLdVar
  loc_BE9BA7: FLdPr Me
  loc_BE9BAA: MemLdRfVar from_stack_1.global_60
  loc_BE9BAD: LdPrVar
  loc_BE9BAF: LateMemCall
  loc_BE9BB5: LitVarStr var_94, " font-size: 11px;"
  loc_BE9BBA: PopAdLdVar
  loc_BE9BBB: FLdPr Me
  loc_BE9BBE: MemLdRfVar from_stack_1.global_60
  loc_BE9BC1: LdPrVar
  loc_BE9BC3: LateMemCall
  loc_BE9BC9: LitVarStr var_94, " font-weight: bold;"
  loc_BE9BCE: PopAdLdVar
  loc_BE9BCF: FLdPr Me
  loc_BE9BD2: MemLdRfVar from_stack_1.global_60
  loc_BE9BD5: LdPrVar
  loc_BE9BD7: LateMemCall
  loc_BE9BDD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BE9BE2: PopAdLdVar
  loc_BE9BE3: FLdPr Me
  loc_BE9BE6: MemLdRfVar from_stack_1.global_60
  loc_BE9BE9: LdPrVar
  loc_BE9BEB: LateMemCall
  loc_BE9BF1: LitVarStr var_94, "}"
  loc_BE9BF6: PopAdLdVar
  loc_BE9BF7: FLdPr Me
  loc_BE9BFA: MemLdRfVar from_stack_1.global_60
  loc_BE9BFD: LdPrVar
  loc_BE9BFF: LateMemCall
  loc_BE9C05: LitVarStr var_94, ".LineaDato {"
  loc_BE9C0A: PopAdLdVar
  loc_BE9C0B: FLdPr Me
  loc_BE9C0E: MemLdRfVar from_stack_1.global_60
  loc_BE9C11: LdPrVar
  loc_BE9C13: LateMemCall
  loc_BE9C19: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE9C1E: PopAdLdVar
  loc_BE9C1F: FLdPr Me
  loc_BE9C22: MemLdRfVar from_stack_1.global_60
  loc_BE9C25: LdPrVar
  loc_BE9C27: LateMemCall
  loc_BE9C2D: LitVarStr var_94, " font-size: 10px;"
  loc_BE9C32: PopAdLdVar
  loc_BE9C33: FLdPr Me
  loc_BE9C36: MemLdRfVar from_stack_1.global_60
  loc_BE9C39: LdPrVar
  loc_BE9C3B: LateMemCall
  loc_BE9C41: LitVarStr var_94, "}"
  loc_BE9C46: PopAdLdVar
  loc_BE9C47: FLdPr Me
  loc_BE9C4A: MemLdRfVar from_stack_1.global_60
  loc_BE9C4D: LdPrVar
  loc_BE9C4F: LateMemCall
  loc_BE9C55: LitVarStr var_94, ".Totales {"
  loc_BE9C5A: PopAdLdVar
  loc_BE9C5B: FLdPr Me
  loc_BE9C5E: MemLdRfVar from_stack_1.global_60
  loc_BE9C61: LdPrVar
  loc_BE9C63: LateMemCall
  loc_BE9C69: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE9C6E: PopAdLdVar
  loc_BE9C6F: FLdPr Me
  loc_BE9C72: MemLdRfVar from_stack_1.global_60
  loc_BE9C75: LdPrVar
  loc_BE9C77: LateMemCall
  loc_BE9C7D: LitVarStr var_94, " font-size: 12px;"
  loc_BE9C82: PopAdLdVar
  loc_BE9C83: FLdPr Me
  loc_BE9C86: MemLdRfVar from_stack_1.global_60
  loc_BE9C89: LdPrVar
  loc_BE9C8B: LateMemCall
  loc_BE9C91: LitVarStr var_94, " font-weight: bold;"
  loc_BE9C96: PopAdLdVar
  loc_BE9C97: FLdPr Me
  loc_BE9C9A: MemLdRfVar from_stack_1.global_60
  loc_BE9C9D: LdPrVar
  loc_BE9C9F: LateMemCall
  loc_BE9CA5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE9CAA: PopAdLdVar
  loc_BE9CAB: FLdPr Me
  loc_BE9CAE: MemLdRfVar from_stack_1.global_60
  loc_BE9CB1: LdPrVar
  loc_BE9CB3: LateMemCall
  loc_BE9CB9: LitVarStr var_94, "}"
  loc_BE9CBE: PopAdLdVar
  loc_BE9CBF: FLdPr Me
  loc_BE9CC2: MemLdRfVar from_stack_1.global_60
  loc_BE9CC5: LdPrVar
  loc_BE9CC7: LateMemCall
  loc_BE9CCD: LitVarStr var_94, ".SubTotales {"
  loc_BE9CD2: PopAdLdVar
  loc_BE9CD3: FLdPr Me
  loc_BE9CD6: MemLdRfVar from_stack_1.global_60
  loc_BE9CD9: LdPrVar
  loc_BE9CDB: LateMemCall
  loc_BE9CE1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE9CE6: PopAdLdVar
  loc_BE9CE7: FLdPr Me
  loc_BE9CEA: MemLdRfVar from_stack_1.global_60
  loc_BE9CED: LdPrVar
  loc_BE9CEF: LateMemCall
  loc_BE9CF5: LitVarStr var_94, " font-size: 10px;"
  loc_BE9CFA: PopAdLdVar
  loc_BE9CFB: FLdPr Me
  loc_BE9CFE: MemLdRfVar from_stack_1.global_60
  loc_BE9D01: LdPrVar
  loc_BE9D03: LateMemCall
  loc_BE9D09: LitVarStr var_94, " font-weight: bold;"
  loc_BE9D0E: PopAdLdVar
  loc_BE9D0F: FLdPr Me
  loc_BE9D12: MemLdRfVar from_stack_1.global_60
  loc_BE9D15: LdPrVar
  loc_BE9D17: LateMemCall
  loc_BE9D1D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE9D22: PopAdLdVar
  loc_BE9D23: FLdPr Me
  loc_BE9D26: MemLdRfVar from_stack_1.global_60
  loc_BE9D29: LdPrVar
  loc_BE9D2B: LateMemCall
  loc_BE9D31: LitVarStr var_94, "}"
  loc_BE9D36: PopAdLdVar
  loc_BE9D37: FLdPr Me
  loc_BE9D3A: MemLdRfVar from_stack_1.global_60
  loc_BE9D3D: LdPrVar
  loc_BE9D3F: LateMemCall
  loc_BE9D45: LitVarStr var_94, ".Tilde {"
  loc_BE9D4A: PopAdLdVar
  loc_BE9D4B: FLdPr Me
  loc_BE9D4E: MemLdRfVar from_stack_1.global_60
  loc_BE9D51: LdPrVar
  loc_BE9D53: LateMemCall
  loc_BE9D59: LitVarStr var_94, " font-family: Wingdings;"
  loc_BE9D5E: PopAdLdVar
  loc_BE9D5F: FLdPr Me
  loc_BE9D62: MemLdRfVar from_stack_1.global_60
  loc_BE9D65: LdPrVar
  loc_BE9D67: LateMemCall
  loc_BE9D6D: LitVarStr var_94, " font-size: 12px;"
  loc_BE9D72: PopAdLdVar
  loc_BE9D73: FLdPr Me
  loc_BE9D76: MemLdRfVar from_stack_1.global_60
  loc_BE9D79: LdPrVar
  loc_BE9D7B: LateMemCall
  loc_BE9D81: LitVarStr var_94, "}"
  loc_BE9D86: PopAdLdVar
  loc_BE9D87: FLdPr Me
  loc_BE9D8A: MemLdRfVar from_stack_1.global_60
  loc_BE9D8D: LdPrVar
  loc_BE9D8F: LateMemCall
  loc_BE9D95: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BE9D9A: PopAdLdVar
  loc_BE9D9B: FLdPr Me
  loc_BE9D9E: MemLdRfVar from_stack_1.global_60
  loc_BE9DA1: LdPrVar
  loc_BE9DA3: LateMemCall
  loc_BE9DA9: LitVarStr var_94, "</style>"
  loc_BE9DAE: PopAdLdVar
  loc_BE9DAF: FLdPr Me
  loc_BE9DB2: MemLdRfVar from_stack_1.global_60
  loc_BE9DB5: LdPrVar
  loc_BE9DB7: LateMemCall
  loc_BE9DBD: LitI4 0
  loc_BE9DC2: FStStrCopy var_AC
  loc_BE9DC5: FLdRfVar var_AC
  loc_BE9DC8: LitI4 0
  loc_BE9DCD: FStStrCopy var_A8
  loc_BE9DD0: FLdRfVar var_A8
  loc_BE9DD3: LitI2_Byte &HFF
  loc_BE9DD5: PopTmpLdAd2 var_BE
  loc_BE9DD8: FLdPr Me
  loc_BE9DDB: MemLdRfVar from_stack_1.global_60
  loc_BE9DDE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE9DE3: FFreeStr var_A8 = ""
  loc_BE9DEA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE9DEF: PopAdLdVar
  loc_BE9DF0: FLdPr Me
  loc_BE9DF3: MemLdRfVar from_stack_1.global_60
  loc_BE9DF6: LdPrVar
  loc_BE9DF8: LateMemCall
  loc_BE9DFE: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BE9E03: PopAdLdVar
  loc_BE9E04: FLdPr Me
  loc_BE9E07: MemLdRfVar from_stack_1.global_60
  loc_BE9E0A: LdPrVar
  loc_BE9E0C: LateMemCall
  loc_BE9E12: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BE9E17: PopAdLdVar
  loc_BE9E18: FLdPr Me
  loc_BE9E1B: MemLdRfVar from_stack_1.global_60
  loc_BE9E1E: LdPrVar
  loc_BE9E20: LateMemCall
  loc_BE9E26: FLdPr Me
  loc_BE9E29: MemLdI2 bLogos
  loc_BE9E2C: BranchF loc_BE9E75
  loc_BE9E2F: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE9E32: LitI2_Byte &H5F
  loc_BE9E34: CStrUI1
  loc_BE9E36: FStStrNoPop var_A8
  loc_BE9E39: ConcatStr
  loc_BE9E3A: FStStrNoPop var_AC
  loc_BE9E3D: LitStr """ height="""
  loc_BE9E40: ConcatStr
  loc_BE9E41: FStStrNoPop var_C4
  loc_BE9E44: LitI2_Byte &H3C
  loc_BE9E46: CStrUI1
  loc_BE9E48: FStStrNoPop var_C8
  loc_BE9E4B: ConcatStr
  loc_BE9E4C: FStStrNoPop var_CC
  loc_BE9E4F: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BE9E52: ConcatStr
  loc_BE9E53: CVarStr var_BC
  loc_BE9E56: PopAdLdVar
  loc_BE9E57: FLdPr Me
  loc_BE9E5A: MemLdRfVar from_stack_1.global_60
  loc_BE9E5D: LdPrVar
  loc_BE9E5F: LateMemCall
  loc_BE9E65: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BE9E72: FFree1Var var_BC = ""
  loc_BE9E75: LitStr "    <br>"
  loc_BE9E78: LitStr "Municipalidad de Guaymallén"
  loc_BE9E7B: ConcatStr
  loc_BE9E7C: FStStrNoPop var_A8
  loc_BE9E7F: LitStr "</p>"
  loc_BE9E82: ConcatStr
  loc_BE9E83: CVarStr var_BC
  loc_BE9E86: PopAdLdVar
  loc_BE9E87: FLdPr Me
  loc_BE9E8A: MemLdRfVar from_stack_1.global_60
  loc_BE9E8D: LdPrVar
  loc_BE9E8F: LateMemCall
  loc_BE9E95: FFree1Str var_A8
  loc_BE9E98: FFree1Var var_BC = ""
  loc_BE9E9B: LitStr "    <p>"
  loc_BE9E9E: FLdRfVar var_A8
  loc_BE9EA1: FLdPr Me
  loc_BE9EA4:  = Me.Caption
  loc_BE9EA9: ILdRf var_A8
  loc_BE9EAC: ConcatStr
  loc_BE9EAD: FStStrNoPop var_AC
  loc_BE9EB0: LitStr "</p></th>"
  loc_BE9EB3: ConcatStr
  loc_BE9EB4: CVarStr var_BC
  loc_BE9EB7: PopAdLdVar
  loc_BE9EB8: FLdPr Me
  loc_BE9EBB: MemLdRfVar from_stack_1.global_60
  loc_BE9EBE: LdPrVar
  loc_BE9EC0: LateMemCall
  loc_BE9EC6: FFreeStr var_A8 = ""
  loc_BE9ECD: FFree1Var var_BC = ""
  loc_BE9ED0: LitVarStr var_94, "  </tr>"
  loc_BE9ED5: PopAdLdVar
  loc_BE9ED6: FLdPr Me
  loc_BE9ED9: MemLdRfVar from_stack_1.global_60
  loc_BE9EDC: LdPrVar
  loc_BE9EDE: LateMemCall
  loc_BE9EE4: LitVarStr var_94, "  <tr>"
  loc_BE9EE9: PopAdLdVar
  loc_BE9EEA: FLdPr Me
  loc_BE9EED: MemLdRfVar from_stack_1.global_60
  loc_BE9EF0: LdPrVar
  loc_BE9EF2: LateMemCall
  loc_BE9EF8: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BE9EFD: PopAdLdVar
  loc_BE9EFE: FLdPr Me
  loc_BE9F01: MemLdRfVar from_stack_1.global_60
  loc_BE9F04: LdPrVar
  loc_BE9F06: LateMemCall
  loc_BE9F0C: LitVarStr var_94, "  </tr>"
  loc_BE9F11: PopAdLdVar
  loc_BE9F12: FLdPr Me
  loc_BE9F15: MemLdRfVar from_stack_1.global_60
  loc_BE9F18: LdPrVar
  loc_BE9F1A: LateMemCall
  loc_BE9F20: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BE9F25: PopAdLdVar
  loc_BE9F26: FLdPr Me
  loc_BE9F29: MemLdRfVar from_stack_1.global_60
  loc_BE9F2C: LdPrVar
  loc_BE9F2E: LateMemCall
  loc_BE9F34: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BE9F37: FLdPr Me
  loc_BE9F3A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_BE9F3D: FStAdFunc var_D0
  loc_BE9F40: FLdPr var_D0
  loc_BE9F43: LateIdLdVar var_BC DispID_15 0
  loc_BE9F4A: CStrVarTmp
  loc_BE9F4B: FStStrNoPop var_A8
  loc_BE9F4E: ConcatStr
  loc_BE9F4F: FStStrNoPop var_AC
  loc_BE9F52: LitStr "<br>"
  loc_BE9F55: ConcatStr
  loc_BE9F56: CVarStr var_E0
  loc_BE9F59: PopAdLdVar
  loc_BE9F5A: FLdPr Me
  loc_BE9F5D: MemLdRfVar from_stack_1.global_60
  loc_BE9F60: LdPrVar
  loc_BE9F62: LateMemCall
  loc_BE9F68: FFreeStr var_A8 = ""
  loc_BE9F6F: FFree1Ad var_D0
  loc_BE9F72: FFreeVar var_BC = ""
  loc_BE9F79: LitStr "                                      <strong>Hasta: </strong>"
  loc_BE9F7C: FLdPr Me
  loc_BE9F7F: VCallAd Control_ID_FealBoapHastaMsk
  loc_BE9F82: FStAdFunc var_D0
  loc_BE9F85: FLdPr var_D0
  loc_BE9F88: LateIdLdVar var_BC DispID_15 0
  loc_BE9F8F: CStrVarTmp
  loc_BE9F90: FStStrNoPop var_A8
  loc_BE9F93: ConcatStr
  loc_BE9F94: FStStrNoPop var_AC
  loc_BE9F97: LitStr "<br>"
  loc_BE9F9A: ConcatStr
  loc_BE9F9B: CVarStr var_E0
  loc_BE9F9E: PopAdLdVar
  loc_BE9F9F: FLdPr Me
  loc_BE9FA2: MemLdRfVar from_stack_1.global_60
  loc_BE9FA5: LdPrVar
  loc_BE9FA7: LateMemCall
  loc_BE9FAD: FFreeStr var_A8 = ""
  loc_BE9FB4: FFree1Ad var_D0
  loc_BE9FB7: FFreeVar var_BC = ""
  loc_BE9FBE: FLdRfVar var_BE
  loc_BE9FC1: FLdPr Me
  loc_BE9FC4: VCallAd Control_ID_IncluyeChk
  loc_BE9FC7: FStAdFunc var_D0
  loc_BE9FCA: FLdPr var_D0
  loc_BE9FCD:  = Me.Value
  loc_BE9FD2: LitVarStr var_110, "                                      "
  loc_BE9FD7: LitVarStr var_F0, "Sólo actualizados"
  loc_BE9FDC: FStVarCopyObj var_E0
  loc_BE9FDF: FLdRfVar var_E0
  loc_BE9FE2: LitVarStr var_A4, "Incluye no actualizados"
  loc_BE9FE7: FStVarCopyObj var_BC
  loc_BE9FEA: FLdRfVar var_BC
  loc_BE9FED: FLdI2 var_BE
  loc_BE9FF0: CI4UI1
  loc_BE9FF1: LitI4 1
  loc_BE9FF6: EqI4
  loc_BE9FF7: CVarBoolI2 var_94
  loc_BE9FFB: FLdRfVar var_100
  loc_BE9FFE: ImpAdCallFPR4  = IIf(, , )
  loc_BEA003: FLdRfVar var_100
  loc_BEA006: ConcatVar var_120
  loc_BEA00A: LitVarStr var_130, "</td>"
  loc_BEA00F: ConcatVar var_140
  loc_BEA013: PopAdLdVar
  loc_BEA014: FLdPr Me
  loc_BEA017: MemLdRfVar from_stack_1.global_60
  loc_BEA01A: LdPrVar
  loc_BEA01C: LateMemCall
  loc_BEA022: FFree1Ad var_D0
  loc_BEA025: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_100 = "": var_120 = ""
  loc_BEA034: LitVarStr var_94, "    <td align=""right"" valign=""top"">"
  loc_BEA039: PopAdLdVar
  loc_BEA03A: FLdPr Me
  loc_BEA03D: MemLdRfVar from_stack_1.global_60
  loc_BEA040: LdPrVar
  loc_BEA042: LateMemCall
  loc_BEA048: LitVarStr var_94, "  </td></tr>"
  loc_BEA04D: PopAdLdVar
  loc_BEA04E: FLdPr Me
  loc_BEA051: MemLdRfVar from_stack_1.global_60
  loc_BEA054: LdPrVar
  loc_BEA056: LateMemCall
  loc_BEA05C: LitVarStr var_94, "</table>"
  loc_BEA061: PopAdLdVar
  loc_BEA062: FLdPr Me
  loc_BEA065: MemLdRfVar from_stack_1.global_60
  loc_BEA068: LdPrVar
  loc_BEA06A: LateMemCall
  loc_BEA070: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BEA075: PopAdLdVar
  loc_BEA076: FLdPr Me
  loc_BEA079: MemLdRfVar from_stack_1.global_60
  loc_BEA07C: LdPrVar
  loc_BEA07E: LateMemCall
  loc_BEA084: LitVarStr var_94, "  <thead>"
  loc_BEA089: PopAdLdVar
  loc_BEA08A: FLdPr Me
  loc_BEA08D: MemLdRfVar from_stack_1.global_60
  loc_BEA090: LdPrVar
  loc_BEA092: LateMemCall
  loc_BEA098: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BEA09D: PopAdLdVar
  loc_BEA09E: FLdPr Me
  loc_BEA0A1: MemLdRfVar from_stack_1.global_60
  loc_BEA0A4: LdPrVar
  loc_BEA0A6: LateMemCall
  loc_BEA0AC: LitVarStr var_94, "    <th rowspan=""2"">Fecha pago</th>"
  loc_BEA0B1: PopAdLdVar
  loc_BEA0B2: FLdPr Me
  loc_BEA0B5: MemLdRfVar from_stack_1.global_60
  loc_BEA0B8: LdPrVar
  loc_BEA0BA: LateMemCall
  loc_BEA0C0: LitVarStr var_94, "    <th rowspan=""2"">Fecha actu.</th>"
  loc_BEA0C5: PopAdLdVar
  loc_BEA0C6: FLdPr Me
  loc_BEA0C9: MemLdRfVar from_stack_1.global_60
  loc_BEA0CC: LdPrVar
  loc_BEA0CE: LateMemCall
  loc_BEA0D4: LitVarStr var_94, "    <th rowspan=""2"">Ofic.</th>"
  loc_BEA0D9: PopAdLdVar
  loc_BEA0DA: FLdPr Me
  loc_BEA0DD: MemLdRfVar from_stack_1.global_60
  loc_BEA0E0: LdPrVar
  loc_BEA0E2: LateMemCall
  loc_BEA0E8: LitVarStr var_94, "    <th rowspan=""2"">Cuenta</th>"
  loc_BEA0ED: PopAdLdVar
  loc_BEA0EE: FLdPr Me
  loc_BEA0F1: MemLdRfVar from_stack_1.global_60
  loc_BEA0F4: LdPrVar
  loc_BEA0F6: LateMemCall
  loc_BEA0FC: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_BEA101: PopAdLdVar
  loc_BEA102: FLdPr Me
  loc_BEA105: MemLdRfVar from_stack_1.global_60
  loc_BEA108: LdPrVar
  loc_BEA10A: LateMemCall
  loc_BEA110: LitVarStr var_94, "    <th rowspan=""2"">Boleta Apre.</th>"
  loc_BEA115: PopAdLdVar
  loc_BEA116: FLdPr Me
  loc_BEA119: MemLdRfVar from_stack_1.global_60
  loc_BEA11C: LdPrVar
  loc_BEA11E: LateMemCall
  loc_BEA124: LitVarStr var_94, "    <th rowspan=""2"">Juicio</th>"
  loc_BEA129: PopAdLdVar
  loc_BEA12A: FLdPr Me
  loc_BEA12D: MemLdRfVar from_stack_1.global_60
  loc_BEA130: LdPrVar
  loc_BEA132: LateMemCall
  loc_BEA138: LitVarStr var_94, "    <th rowspan=""2"">Instancia</th>"
  loc_BEA13D: PopAdLdVar
  loc_BEA13E: FLdPr Me
  loc_BEA141: MemLdRfVar from_stack_1.global_60
  loc_BEA144: LdPrVar
  loc_BEA146: LateMemCall
  loc_BEA14C: LitVarStr var_94, "    <th rowspan=""2"">Honorarios<br>de Recaudador</th>"
  loc_BEA151: PopAdLdVar
  loc_BEA152: FLdPr Me
  loc_BEA155: MemLdRfVar from_stack_1.global_60
  loc_BEA158: LdPrVar
  loc_BEA15A: LateMemCall
  loc_BEA160: LitVarStr var_94, "    <th rowspan=""2"">Código<br>Of. de Justicia</th>"
  loc_BEA165: PopAdLdVar
  loc_BEA166: FLdPr Me
  loc_BEA169: MemLdRfVar from_stack_1.global_60
  loc_BEA16C: LdPrVar
  loc_BEA16E: LateMemCall
  loc_BEA174: LitVarStr var_94, "    <th rowspan=""2"">Honorarios<br>Of. de Justicia</th>"
  loc_BEA179: PopAdLdVar
  loc_BEA17A: FLdPr Me
  loc_BEA17D: MemLdRfVar from_stack_1.global_60
  loc_BEA180: LdPrVar
  loc_BEA182: LateMemCall
  loc_BEA188: LitVarStr var_94, "  </tr>"
  loc_BEA18D: PopAdLdVar
  loc_BEA18E: FLdPr Me
  loc_BEA191: MemLdRfVar from_stack_1.global_60
  loc_BEA194: LdPrVar
  loc_BEA196: LateMemCall
  loc_BEA19C: LitVarStr var_94, "  </thead>"
  loc_BEA1A1: PopAdLdVar
  loc_BEA1A2: FLdPr Me
  loc_BEA1A5: MemLdRfVar from_stack_1.global_60
  loc_BEA1A8: LdPrVar
  loc_BEA1AA: LateMemCall
  loc_BEA1B0: ExitProcHresult
End Function

Private Function Proc_97_26_A0AAE8() 'A0AAE8
  'Data Table: 494084
  loc_A0AAA8: LitVarStr var_94, "</table>"
  loc_A0AAAD: PopAdLdVar
  loc_A0AAAE: FLdPr Me
  loc_A0AAB1: MemLdRfVar from_stack_1.global_60
  loc_A0AAB4: LdPrVar
  loc_A0AAB6: LateMemCall
  loc_A0AABC: LitVarStr var_94, "</body>"
  loc_A0AAC1: PopAdLdVar
  loc_A0AAC2: FLdPr Me
  loc_A0AAC5: MemLdRfVar from_stack_1.global_60
  loc_A0AAC8: LdPrVar
  loc_A0AACA: LateMemCall
  loc_A0AAD0: LitVarStr var_94, "</html>"
  loc_A0AAD5: PopAdLdVar
  loc_A0AAD6: FLdPr Me
  loc_A0AAD9: MemLdRfVar from_stack_1.global_60
  loc_A0AADC: LdPrVar
  loc_A0AADE: LateMemCall
  loc_A0AAE4: ExitProcHresult
End Function
