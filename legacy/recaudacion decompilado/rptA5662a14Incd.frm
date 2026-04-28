VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA5662a14Incd
  Caption = "Acuerdo 5661 Aticulo 14 Inciso D"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA5662a14Incd.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11136
  ClientHeight = 3732
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 0
    Top = 1920
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptA5662a14Incd.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11136
    Height = 252
    TabIndex = 16
    OleObjectBlob = "rptA5662a14Incd.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9840
    Top = 2040
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA5662a14Incd.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA5662a14Incd.frx":0C04
    Left = 10080
    Top = 2040
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2040
    Width = 4695
    Height = 1215
    TabIndex = 10
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
      Left = 3120
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
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
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
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
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 240
    Top = 2040
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10815
    Height = 1815
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2160
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptA5662a14Incd.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptA5662a14Incd.frx":0D18
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 4
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1320
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 1
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
    Left = 9960
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptA5662a14Incd.frx":0DC8
  End
End

Attribute VB_Name = "rptA5662a14Incd"

Public bGenerado As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdSalir_Click() 'A04B4C
  'Data Table: 49DC8C
  loc_A04B1C: LitVarStr var_94, "Cerrando..."
  loc_A04B21: PopAdLdVar
  loc_A04B22: FLdPr Me
  loc_A04B25: VCallAd Control_ID_statusBar
  loc_A04B28: FStAdFunc var_A8
  loc_A04B2B: FLdPr var_A8
  loc_A04B2E: LateIdSt
  loc_A04B33: FFree1Ad var_A8
  loc_A04B36: ILdRf Me
  loc_A04B39: FStAdNoPop
  loc_A04B3D: ImpAdLdRf MemVar_D9C5D8
  loc_A04B40: NewIfNullPr Global
  loc_A04B43: Global.Unload from_stack_1
  loc_A04B48: FFree1Ad var_A8
  loc_A04B4B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CB188
  'Data Table: 49DC8C
  loc_9CB170: LitI2_Byte 0
  loc_9CB172: ILdRf Me
  loc_9CB175: CastAd
  loc_9CB178: FStAdFunc var_88
  loc_9CB17B: FLdRfVar var_88
  loc_9CB17E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB183: FFree1Ad var_88
  loc_9CB186: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E1A9C
  'Data Table: 49DC8C
  loc_9E1A80: LitI2_Byte 0
  loc_9E1A82: LitI2_Byte 0
  loc_9E1A84: ILdRf Me
  loc_9E1A87: CastAd
  loc_9E1A8A: FStAdFunc var_88
  loc_9E1A8D: FLdRfVar var_88
  loc_9E1A90: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1A95: FFree1Ad var_88
  loc_9E1A98: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E1B8C
  'Data Table: 49DC8C
  loc_9E1B70: LitI2_Byte 0
  loc_9E1B72: PopTmpLdAd2 var_8A
  loc_9E1B75: ILdRf Me
  loc_9E1B78: CastAd
  loc_9E1B7B: FStAdFunc var_88
  loc_9E1B7E: FLdRfVar var_88
  loc_9E1B81: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1B86: FFree1Ad var_88
  loc_9E1B89: ExitProcHresult
  loc_9E1B8A: CExtInstUnk
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BD9C8
  'Data Table: 49DC8C
  loc_9BD9B4: FLdPr Me
  loc_9BD9B7: VCallAd Control_ID_DesdeMsk
  loc_9BD9BA: CVarAd
  loc_9BD9BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD9C3: FFree1Var var_94 = ""
  loc_9BD9C6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A61B80
  'Data Table: 49DC8C
  loc_A61B24: FLdPr Me
  loc_A61B27: VCallAd Control_ID_DesdeMsk
  loc_A61B2A: FStAdFunc var_88
  loc_A61B2D: FLdPr var_88
  loc_A61B30: LateIdLdVar var_98 DispID_15 0
  loc_A61B37: CStrVarTmp
  loc_A61B38: FStStrNoPop var_9C
  loc_A61B3B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A61B40: FStStrNoPop var_A0
  loc_A61B43: FLdPr Me
  loc_A61B46: MemStStrCopy
  loc_A61B4A: FFreeStr var_9C = ""
  loc_A61B51: FFree1Ad var_88
  loc_A61B54: FFree1Var var_98 = ""
  loc_A61B57: FLdPr Me
  loc_A61B5A: VCallAd Control_ID_DesdeMsk
  loc_A61B5D: FStAdFuncNoPop
  loc_A61B60: CastAd
  loc_A61B63: FStAdFunc var_A4
  loc_A61B66: FLdRfVar var_A4
  loc_A61B69: FLdPr Me
  loc_A61B6C: MemLdStr global_112
  loc_A61B6F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61B74: IStI2 arg_C
  loc_A61B77: FFreeAd var_88 = ""
  loc_A61B7E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A22AD8
  'Data Table: 49DC8C
  loc_A22A90: ILdI2 KeyAscii
  loc_A22A93: CI4UI1
  loc_A22A94: LitI4 &H20
  loc_A22A99: EqI4
  loc_A22A9A: BranchF loc_A22AD7
  loc_A22A9D: LitVar_Missing var_A4
  loc_A22AA0: PopAdLdVar
  loc_A22AA1: LitVarI4
  loc_A22AA9: PopAdLdVar
  loc_A22AAA: ImpAdLdRf MemVar_D930A4
  loc_A22AAD: NewIfNullPr frmCalendario
  loc_A22AB0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22AB5: ImpAdLdRf MemVar_D93028
  loc_A22AB8: CDargRef
  loc_A22ABC: FLdPr Me
  loc_A22ABF: VCallAd Control_ID_DesdeMsk
  loc_A22AC2: FStAdFunc var_A8
  loc_A22AC5: FLdPr var_A8
  loc_A22AC8: LateIdSt
  loc_A22ACD: FFree1Ad var_A8
  loc_A22AD0: LitStr vbNullString
  loc_A22AD3: ImpAdStStrCopy MemVar_D93028
  loc_A22AD7: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0910C
  'Data Table: 49DC8C
  loc_A090D4: LitI2_Byte 0
  loc_A090D6: FLdPr Me
  loc_A090D9: MemStI2 bGenerado
  loc_A090DC: LitI2_Byte 0
  loc_A090DE: ILdRf Me
  loc_A090E1: CastAd
  loc_A090E4: FStAdFunc var_88
  loc_A090E7: FLdRfVar var_88
  loc_A090EA: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A090EF: FFree1Ad var_88
  loc_A090F2: Call HabilitarCriterio()
  loc_A090F7: ILdRf Me
  loc_A090FA: CastAd
  loc_A090FD: FStAdFunc var_88
  loc_A09100: FLdRfVar var_88
  loc_A09103: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A09108: FFree1Ad var_88
  loc_A0910B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15580
  'Data Table: 49DC8C
  loc_A15548: FLdPr Me
  loc_A1554B: VCallAd Control_ID_statusBar
  loc_A1554E: FStAdFunc var_88
  loc_A15551: FLdPr var_88
  loc_A15554: LateIdLdVar var_98 DispID_1 0
  loc_A1555B: CStrVarTmp
  loc_A1555C: CVarStr var_A8
  loc_A1555F: PopAdLdVar
  loc_A15560: FLdPr Me
  loc_A15563: VCallAd Control_ID_statusBar
  loc_A15566: FStAdFunc var_BC
  loc_A15569: FLdPr var_BC
  loc_A1556C: LateIdSt
  loc_A15571: FFreeAd var_88 = ""
  loc_A15578: FFreeVar var_98 = ""
  loc_A1557F: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CB0A4
  'Data Table: 49DC8C
  loc_9CB08C: LitI2_Byte 0
  loc_9CB08E: ILdRf Me
  loc_9CB091: CastAd
  loc_9CB094: FStAdFunc var_88
  loc_9CB097: FLdRfVar var_88
  loc_9CB09A: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CB09F: FFree1Ad var_88
  loc_9CB0A2: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BD938
  'Data Table: 49DC8C
  loc_9BD924: FLdPr Me
  loc_9BD927: VCallAd Control_ID_HastaMsk
  loc_9BD92A: CVarAd
  loc_9BD92E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD933: FFree1Var var_94 = ""
  loc_9BD936: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA6D00
  'Data Table: 49DC8C
  loc_AA6C50: FLdPr Me
  loc_AA6C53: VCallAd Control_ID_HastaMsk
  loc_AA6C56: FStAdFunc var_88
  loc_AA6C59: FLdPr var_88
  loc_AA6C5C: LateIdLdVar var_98 DispID_15 0
  loc_AA6C63: CStrVarTmp
  loc_AA6C64: CVarStr var_A8
  loc_AA6C67: ImpAdCallI2 IsDate()
  loc_AA6C6C: FFree1Ad var_88
  loc_AA6C6F: FFreeVar var_98 = ""
  loc_AA6C76: BranchF loc_AA6CFC
  loc_AA6C79: FLdPr Me
  loc_AA6C7C: VCallAd Control_ID_HastaMsk
  loc_AA6C7F: FStAdFunc var_88
  loc_AA6C82: FLdPr var_88
  loc_AA6C85: LateIdLdVar var_98 DispID_15 0
  loc_AA6C8C: CStrVarTmp
  loc_AA6C8D: CVarStr var_A8
  loc_AA6C90: FLdRfVar var_B8
  loc_AA6C93: ImpAdCallFPR4  = Year()
  loc_AA6C98: FLdRfVar var_B8
  loc_AA6C9B: FLdPr Me
  loc_AA6C9E: VCallAd Control_ID_DesdeMsk
  loc_AA6CA1: FStAdFunc var_BC
  loc_AA6CA4: FLdPr var_BC
  loc_AA6CA7: LateIdLdVar var_CC DispID_15 0
  loc_AA6CAE: CStrVarTmp
  loc_AA6CAF: CVarStr var_DC
  loc_AA6CB2: FLdRfVar var_EC
  loc_AA6CB5: ImpAdCallFPR4  = Year()
  loc_AA6CBA: FLdRfVar var_EC
  loc_AA6CBD: NeVarBool
  loc_AA6CBF: FFreeAd var_88 = ""
  loc_AA6CC6: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA6CD5: BranchF loc_AA6CFC
  loc_AA6CD8: FLdPr Me
  loc_AA6CDB: VCallAd Control_ID_HastaMsk
  loc_AA6CDE: FStAdFuncNoPop
  loc_AA6CE1: CastAd
  loc_AA6CE4: FStAdFunc var_BC
  loc_AA6CE7: FLdRfVar var_BC
  loc_AA6CEA: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA6CED: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA6CF2: IStI2 arg_C
  loc_AA6CF5: FFreeAd var_88 = ""
  loc_AA6CFC: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A211A8
  'Data Table: 49DC8C
  loc_A21160: ILdI2 KeyAscii
  loc_A21163: CI4UI1
  loc_A21164: LitI4 &H20
  loc_A21169: EqI4
  loc_A2116A: BranchF loc_A211A7
  loc_A2116D: LitVar_Missing var_A4
  loc_A21170: PopAdLdVar
  loc_A21171: LitVarI4
  loc_A21179: PopAdLdVar
  loc_A2117A: ImpAdLdRf MemVar_D930A4
  loc_A2117D: NewIfNullPr frmCalendario
  loc_A21180: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21185: ImpAdLdRf MemVar_D93028
  loc_A21188: CDargRef
  loc_A2118C: FLdPr Me
  loc_A2118F: VCallAd Control_ID_HastaMsk
  loc_A21192: FStAdFunc var_A8
  loc_A21195: FLdPr var_A8
  loc_A21198: LateIdSt
  loc_A2119D: FFree1Ad var_A8
  loc_A211A0: LitStr vbNullString
  loc_A211A3: ImpAdStStrCopy MemVar_D93028
  loc_A211A7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB220
  'Data Table: 49DC8C
  loc_9CB208: ILdRf Me
  loc_9CB20B: CastAd
  loc_9CB20E: FStAdFunc var_88
  loc_9CB211: FLdRfVar var_88
  loc_9CB214: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB219: FFree1Ad var_88
  loc_9CB21C: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADF424
  'Data Table: 49DC8C
  loc_ADF2F0: ILdRf Me
  loc_ADF2F3: CastAd
  loc_ADF2F6: FStAdFunc var_88
  loc_ADF2F9: FLdRfVar var_88
  loc_ADF2FC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_ADF301: FFree1Ad var_88
  loc_ADF304: LitVarStr var_98, "Acuerdo 2988 Articulo 14 Inciso D"
  loc_ADF309: CStrVarVal var_9C
  loc_ADF30D: FLdPr Me
  loc_ADF310: Me.Caption = from_stack_1
  loc_ADF315: FFree1Str var_9C
  loc_ADF318: Call cmdNueva_Click()
  loc_ADF31D: LitI2_Byte 0
  loc_ADF31F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADF324: CVarDate var_AC
  loc_ADF328: FLdRfVar var_BC
  loc_ADF32B: ImpAdCallFPR4  = Year()
  loc_ADF330: LitI2_Byte 0
  loc_ADF332: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADF337: CVarDate var_DC
  loc_ADF33B: FLdRfVar var_EC
  loc_ADF33E: ImpAdCallFPR4  = Month()
  loc_ADF343: LitI2_Byte 1
  loc_ADF345: FLdRfVar var_EC
  loc_ADF348: LitVarI2 var_FC, 1
  loc_ADF34D: SubVar var_10C
  loc_ADF351: CI2Var
  loc_ADF352: FLdRfVar var_BC
  loc_ADF355: CI2Var
  loc_ADF356: FLdRfVar var_11C
  loc_ADF359: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADF35E: FLdRfVar var_11C
  loc_ADF361: CStrVarTmp
  loc_ADF362: CVarStr var_12C
  loc_ADF365: PopAdLdVar
  loc_ADF366: FLdPr Me
  loc_ADF369: VCallAd Control_ID_DesdeMsk
  loc_ADF36C: FStAdFunc var_88
  loc_ADF36F: FLdPr var_88
  loc_ADF372: LateIdSt
  loc_ADF377: FFree1Ad var_88
  loc_ADF37A: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_ADF389: FLdPr Me
  loc_ADF38C: VCallAd Control_ID_DesdeMsk
  loc_ADF38F: FStAdFunc var_88
  loc_ADF392: FLdPr var_88
  loc_ADF395: LateIdLdVar var_AC DispID_15 0
  loc_ADF39C: CStrVarTmp
  loc_ADF39D: CVarStr var_BC
  loc_ADF3A0: FLdRfVar var_DC
  loc_ADF3A3: ImpAdCallFPR4  = Year()
  loc_ADF3A8: FLdPr Me
  loc_ADF3AB: VCallAd Control_ID_DesdeMsk
  loc_ADF3AE: FStAdFunc var_140
  loc_ADF3B1: FLdPr var_140
  loc_ADF3B4: LateIdLdVar var_EC DispID_15 0
  loc_ADF3BB: CStrVarTmp
  loc_ADF3BC: CVarStr var_10C
  loc_ADF3BF: FLdRfVar var_11C
  loc_ADF3C2: ImpAdCallFPR4  = Month()
  loc_ADF3C7: LitI2_Byte 1
  loc_ADF3C9: FLdRfVar var_11C
  loc_ADF3CC: LitVarI2 var_98, 1
  loc_ADF3D1: AddVar var_12C
  loc_ADF3D5: CI2Var
  loc_ADF3D6: FLdRfVar var_DC
  loc_ADF3D9: CI2Var
  loc_ADF3DA: FLdRfVar var_150
  loc_ADF3DD: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADF3E2: FLdRfVar var_150
  loc_ADF3E5: LitVarI2 var_CC, 1
  loc_ADF3EA: SubVar var_160
  loc_ADF3EE: CStrVarTmp
  loc_ADF3EF: CVarStr var_170
  loc_ADF3F2: PopAdLdVar
  loc_ADF3F3: FLdPr Me
  loc_ADF3F6: VCallAd Control_ID_HastaMsk
  loc_ADF3F9: FStAdFunc var_174
  loc_ADF3FC: FLdPr var_174
  loc_ADF3FF: LateIdSt
  loc_ADF404: FFreeAd var_88 = "": var_140 = ""
  loc_ADF40D: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_ADF422: ExitProcHresult
  loc_ADF423: NeI4
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CAF74
  'Data Table: 49DC8C
  loc_9CAF5C: FLdPr Me
  loc_9CAF5F: VCallAd Control_ID_wbbReporte
  loc_9CAF62: FStAdFunc var_88
  loc_9CAF65: FLdRfVar var_88
  loc_9CAF68: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CAF6D: FFree1Ad var_88
  loc_9CAF70: ExitProcHresult
End Sub

Public Function bGeneradoGet() '49EBCC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49EBDB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A43CC0
  'Data Table: 49DC8C
  loc_A43C7C: LitI4 0
  loc_A43C81: LitI4 1
  loc_A43C86: FLdRfVar var_88
  loc_A43C89: Redim
  loc_A43C93: FLdPr Me
  loc_A43C96: VCallAd Control_ID_DesdeMsk
  loc_A43C99: CVarAd
  loc_A43C9D: ParmAry1St
  loc_A43CA3: FLdPr Me
  loc_A43CA6: VCallAd Control_ID_HastaMsk
  loc_A43CA9: CVarAd
  loc_A43CAD: ParmAry1St
  loc_A43CB3: FLdRfVar var_88
  loc_A43CB6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43CBB: FLdRfVar var_88
  loc_A43CBE: Erase
  loc_A43CBF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C60E38
  'Data Table: 49DC8C
  loc_C5FF1C: FLdPr Me
  loc_C5FF1F: MemLdI2 bGenerado
  loc_C5FF22: BranchF loc_C5FF26
  loc_C5FF25: ExitProcHresult
  loc_C5FF26: LitVarStr var_9C, "Generando reporte..."
  loc_C5FF2B: PopAdLdVar
  loc_C5FF2C: FLdPr Me
  loc_C5FF2F: VCallAd Control_ID_statusBar
  loc_C5FF32: FStAdFunc var_B0
  loc_C5FF35: FLdPr var_B0
  loc_C5FF38: LateIdSt
  loc_C5FF3D: FFree1Ad var_B0
  loc_C5FF40: LitI4 &HB
  loc_C5FF45: CI2I4
  loc_C5FF46: FLdPr Me
  loc_C5FF49: Me.MousePointer = from_stack_1
  loc_C5FF4E: LitI2_Byte 0
  loc_C5FF50: PopTmpLdAd2 var_B2
  loc_C5FF53: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C5FF58: FLdPr Me
  loc_C5FF5B: MemLdStr global_112
  loc_C5FF5E: LitStr vbNullString
  loc_C5FF61: NeStr
  loc_C5FF63: BranchF loc_C5FF69
  loc_C5FF66: Branch loc_C60E0F
  loc_C5FF69: LitI2_Byte 0
  loc_C5FF6B: PopTmpLdAd2 var_B2
  loc_C5FF6E: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C5FF73: FLdPr Me
  loc_C5FF76: MemLdStr global_112
  loc_C5FF79: LitStr vbNullString
  loc_C5FF7C: NeStr
  loc_C5FF7E: BranchF loc_C5FF84
  loc_C5FF81: Branch loc_C60E0F
  loc_C5FF84: FLdPr Me
  loc_C5FF87: VCallAd Control_ID_DesdeMsk
  loc_C5FF8A: FStAdFunc var_B0
  loc_C5FF8D: FLdPr var_B0
  loc_C5FF90: LateIdLdVar var_C4 DispID_15 0
  loc_C5FF97: PopAd
  loc_C5FF99: LitI4 1
  loc_C5FF9E: LitI4 1
  loc_C5FFA3: LitVarStr var_9C, "yyyy-mm-dd"
  loc_C5FFA8: FStVarCopyObj var_E4
  loc_C5FFAB: FLdRfVar var_E4
  loc_C5FFAE: FLdRfVar var_C4
  loc_C5FFB1: CStrVarTmp
  loc_C5FFB2: CVarStr var_D4
  loc_C5FFB5: ImpAdCallI2 Format$(, )
  loc_C5FFBA: FStStr var_88
  loc_C5FFBD: FFree1Ad var_B0
  loc_C5FFC0: FFreeVar var_C4 = "": var_D4 = ""
  loc_C5FFC9: FLdPr Me
  loc_C5FFCC: VCallAd Control_ID_HastaMsk
  loc_C5FFCF: FStAdFunc var_B0
  loc_C5FFD2: FLdPr var_B0
  loc_C5FFD5: LateIdLdVar var_C4 DispID_15 0
  loc_C5FFDC: PopAd
  loc_C5FFDE: LitI4 1
  loc_C5FFE3: LitI4 1
  loc_C5FFE8: LitVarStr var_9C, "yyyy-mm-dd"
  loc_C5FFED: FStVarCopyObj var_E4
  loc_C5FFF0: FLdRfVar var_E4
  loc_C5FFF3: FLdRfVar var_C4
  loc_C5FFF6: CStrVarTmp
  loc_C5FFF7: CVarStr var_D4
  loc_C5FFFA: ImpAdCallI2 Format$(, )
  loc_C5FFFF: FStStr var_8C
  loc_C60002: FFree1Ad var_B0
  loc_C60005: FFreeVar var_C4 = "": var_D4 = ""
  loc_C6000E: FLdPr Me
  loc_C60011: MemLdRfVar from_stack_1.global_92
  loc_C60014: NewIfNullAd
  loc_C60017: FStAd var_E8 
  loc_C6001B: LitStr "Municipalidad de Guaymallén"
  loc_C6001E: LitStr "Municipalidad de Guaymallén"
  loc_C60021: NeStr
  loc_C60023: BranchF loc_C6046C
  loc_C60026: LitStr "Municipalidad de Guaymallén"
  loc_C60029: LitStr "Municipalidad de Malargüe"
  loc_C6002C: EqStr
  loc_C6002E: BranchF loc_C601B4
  loc_C60031: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C60034: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C60037: ConcatStr
  loc_C60038: FStStrNoPop var_EC
  loc_C6003B: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C6003E: ConcatStr
  loc_C6003F: FStStrNoPop var_F0
  loc_C60042: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_C60045: ConcatStr
  loc_C60046: FStStrNoPop var_F4
  loc_C60049: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C6004C: ConcatStr
  loc_C6004D: FStStrNoPop var_F8
  loc_C60050: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C60053: ConcatStr
  loc_C60054: CVarStr var_D4
  loc_C60057: FLdRfVar var_88
  loc_C6005A: CVarRef
  loc_C6005F: FLdRfVar var_C4
  loc_C60062: ImpAdCallFPR4  = Year()
  loc_C60067: FLdRfVar var_C4
  loc_C6006A: ConcatVar var_E4
  loc_C6006E: LitVarStr var_AC, " AND concepto.ActiConc <> ''"
  loc_C60073: ConcatVar var_108
  loc_C60077: LitVarStr var_118, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C6007C: ConcatVar var_128
  loc_C60080: ILdRf var_88
  loc_C60083: CVarStr var_138
  loc_C60086: ConcatVar var_148
  loc_C6008A: LitVarStr var_158, "' AND '"
  loc_C6008F: ConcatVar var_168
  loc_C60093: ILdRf var_8C
  loc_C60096: CVarStr var_178
  loc_C60099: ConcatVar var_188
  loc_C6009D: LitVarStr var_198, "'"
  loc_C600A2: ConcatVar var_1A8
  loc_C600A6: LitVarStr var_1B8, " GROUP BY ActiConc) UNION ALL"
  loc_C600AB: ConcatVar var_1C8
  loc_C600AF: LitVarStr var_1D8, " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C600B4: ConcatVar var_1E8
  loc_C600B8: LitVarStr var_1F8, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C600BD: ConcatVar var_208
  loc_C600C1: LitVarStr var_218, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C600C6: ConcatVar var_228
  loc_C600CA: FLdRfVar var_88
  loc_C600CD: CVarRef
  loc_C600D2: FLdRfVar var_248
  loc_C600D5: ImpAdCallFPR4  = Year()
  loc_C600DA: FLdRfVar var_248
  loc_C600DD: ConcatVar var_258
  loc_C600E1: LitVarStr var_268, " AND concepto.ActiConc <> ''"
  loc_C600E6: ConcatVar var_278
  loc_C600EA: LitVarStr var_288, " WHERE ctacte.FealCtct < '"
  loc_C600EF: ConcatVar var_298
  loc_C600F3: ILdRf var_88
  loc_C600F6: CVarStr var_2A8
  loc_C600F9: ConcatVar var_2B8
  loc_C600FD: LitVarStr var_2C8, "' GROUP BY ActiConc) UNION ALL"
  loc_C60102: ConcatVar var_2D8
  loc_C60106: LitVarStr var_2E8, " (SELECT histoctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C6010B: ConcatVar var_2F8
  loc_C6010F: LitVarStr var_308, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct,   000000000.00 as CobrCtct"
  loc_C60114: ConcatVar var_318
  loc_C60118: LitVarStr var_328, " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_C6011D: ConcatVar var_338
  loc_C60121: FLdRfVar var_88
  loc_C60124: CVarRef
  loc_C60129: FLdRfVar var_358
  loc_C6012C: ImpAdCallFPR4  = Year()
  loc_C60131: FLdRfVar var_358
  loc_C60134: ConcatVar var_368
  loc_C60138: LitVarStr var_378, " AND concepto.ActiConc <> ''"
  loc_C6013D: ConcatVar var_388
  loc_C60141: LitVarStr var_398, " WHERE histoctacte.FealCtct < '"
  loc_C60146: ConcatVar var_3A8
  loc_C6014A: ILdRf var_88
  loc_C6014D: CVarStr var_3B8
  loc_C60150: ConcatVar var_3C8
  loc_C60154: LitVarStr var_3D8, "' GROUP BY ActiConc); CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_C60159: ConcatVar var_3E8
  loc_C6015D: CStrVarVal var_3EC
  loc_C60161: FLdPr var_E8
  loc_C60164: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60169: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C60176: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = "": var_358 = "": var_368 = "": var_388 = "": var_3A8 = "": var_3C8 = ""
  loc_C601B1: Branch loc_C60406
  loc_C601B4: LitStr "Municipalidad de Guaymallén"
  loc_C601B7: LitStr "Municipalidad de San Martin"
  loc_C601BA: EqStr
  loc_C601BC: BranchF loc_C602E4
  loc_C601BF: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C601C2: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C601C5: ConcatStr
  loc_C601C6: FStStrNoPop var_EC
  loc_C601C9: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C601CC: ConcatStr
  loc_C601CD: FStStrNoPop var_F0
  loc_C601D0: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_C601D3: ConcatStr
  loc_C601D4: FStStrNoPop var_F4
  loc_C601D7: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C601DA: ConcatStr
  loc_C601DB: FStStrNoPop var_F8
  loc_C601DE: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C601E1: ConcatStr
  loc_C601E2: CVarStr var_D4
  loc_C601E5: FLdRfVar var_88
  loc_C601E8: CVarRef
  loc_C601ED: FLdRfVar var_C4
  loc_C601F0: ImpAdCallFPR4  = Year()
  loc_C601F5: FLdRfVar var_C4
  loc_C601F8: ConcatVar var_E4
  loc_C601FC: LitVarStr var_AC, " AND concepto.ActiConc <> ''"
  loc_C60201: ConcatVar var_108
  loc_C60205: LitVarStr var_118, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C6020A: ConcatVar var_128
  loc_C6020E: ILdRf var_88
  loc_C60211: CVarStr var_138
  loc_C60214: ConcatVar var_148
  loc_C60218: LitVarStr var_158, "' AND '"
  loc_C6021D: ConcatVar var_168
  loc_C60221: ILdRf var_8C
  loc_C60224: CVarStr var_178
  loc_C60227: ConcatVar var_188
  loc_C6022B: LitVarStr var_198, "' AND ctacte.CodiConc <> '13031300' "
  loc_C60230: ConcatVar var_1A8
  loc_C60234: LitVarStr var_1B8, " GROUP BY ActiConc) UNION ALL"
  loc_C60239: ConcatVar var_1C8
  loc_C6023D: LitVarStr var_1D8, " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C60242: ConcatVar var_1E8
  loc_C60246: LitVarStr var_1F8, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C6024B: ConcatVar var_208
  loc_C6024F: LitVarStr var_218, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C60254: ConcatVar var_228
  loc_C60258: FLdRfVar var_88
  loc_C6025B: CVarRef
  loc_C60260: FLdRfVar var_248
  loc_C60263: ImpAdCallFPR4  = Year()
  loc_C60268: FLdRfVar var_248
  loc_C6026B: ConcatVar var_258
  loc_C6026F: LitVarStr var_268, " AND concepto.ActiConc <> ''"
  loc_C60274: ConcatVar var_278
  loc_C60278: LitVarStr var_288, " WHERE ctacte.FealCtct < '"
  loc_C6027D: ConcatVar var_298
  loc_C60281: ILdRf var_88
  loc_C60284: CVarStr var_2A8
  loc_C60287: ConcatVar var_2B8
  loc_C6028B: LitVarStr var_2C8, "' AND ctacte.CodiConc <> '13031300' GROUP BY ActiConc);"
  loc_C60290: ConcatVar var_2D8
  loc_C60294: LitVarStr var_2E8, " CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_C60299: ConcatVar var_2F8
  loc_C6029D: CStrVarVal var_3EC
  loc_C602A1: FLdPr var_E8
  loc_C602A4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C602A9: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C602B6: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = ""
  loc_C602E1: Branch loc_C60406
  loc_C602E4: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C602E7: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C602EA: ConcatStr
  loc_C602EB: FStStrNoPop var_EC
  loc_C602EE: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C602F1: ConcatStr
  loc_C602F2: FStStrNoPop var_F0
  loc_C602F5: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_C602F8: ConcatStr
  loc_C602F9: FStStrNoPop var_F4
  loc_C602FC: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C602FF: ConcatStr
  loc_C60300: FStStrNoPop var_F8
  loc_C60303: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C60306: ConcatStr
  loc_C60307: CVarStr var_D4
  loc_C6030A: FLdRfVar var_88
  loc_C6030D: CVarRef
  loc_C60312: FLdRfVar var_C4
  loc_C60315: ImpAdCallFPR4  = Year()
  loc_C6031A: FLdRfVar var_C4
  loc_C6031D: ConcatVar var_E4
  loc_C60321: LitVarStr var_AC, " AND concepto.ActiConc <> ''"
  loc_C60326: ConcatVar var_108
  loc_C6032A: LitVarStr var_118, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C6032F: ConcatVar var_128
  loc_C60333: ILdRf var_88
  loc_C60336: CVarStr var_138
  loc_C60339: ConcatVar var_148
  loc_C6033D: LitVarStr var_158, "' AND '"
  loc_C60342: ConcatVar var_168
  loc_C60346: ILdRf var_8C
  loc_C60349: CVarStr var_178
  loc_C6034C: ConcatVar var_188
  loc_C60350: LitVarStr var_198, "'"
  loc_C60355: ConcatVar var_1A8
  loc_C60359: LitVarStr var_1B8, " GROUP BY ActiConc) UNION ALL"
  loc_C6035E: ConcatVar var_1C8
  loc_C60362: LitVarStr var_1D8, " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C60367: ConcatVar var_1E8
  loc_C6036B: LitVarStr var_1F8, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C60370: ConcatVar var_208
  loc_C60374: LitVarStr var_218, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C60379: ConcatVar var_228
  loc_C6037D: FLdRfVar var_88
  loc_C60380: CVarRef
  loc_C60385: FLdRfVar var_248
  loc_C60388: ImpAdCallFPR4  = Year()
  loc_C6038D: FLdRfVar var_248
  loc_C60390: ConcatVar var_258
  loc_C60394: LitVarStr var_268, " AND concepto.ActiConc <> ''"
  loc_C60399: ConcatVar var_278
  loc_C6039D: LitVarStr var_288, " WHERE ctacte.FealCtct < '"
  loc_C603A2: ConcatVar var_298
  loc_C603A6: ILdRf var_88
  loc_C603A9: CVarStr var_2A8
  loc_C603AC: ConcatVar var_2B8
  loc_C603B0: LitVarStr var_2C8, "' GROUP BY ActiConc);"
  loc_C603B5: ConcatVar var_2D8
  loc_C603B9: LitVarStr var_2E8, " CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_C603BE: ConcatVar var_2F8
  loc_C603C2: CStrVarVal var_3EC
  loc_C603C6: FLdPr var_E8
  loc_C603C9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C603CE: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C603DB: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = ""
  loc_C60406: LitStr "SELECT tribu.ActiConc, DetaCuco, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C60409: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C6040C: ConcatStr
  loc_C6040D: FStStrNoPop var_EC
  loc_C60410: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct"
  loc_C60413: ConcatStr
  loc_C60414: FStStrNoPop var_F0
  loc_C60417: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_C6041A: ConcatStr
  loc_C6041B: CVarStr var_D4
  loc_C6041E: FLdRfVar var_88
  loc_C60421: CVarRef
  loc_C60426: FLdRfVar var_C4
  loc_C60429: ImpAdCallFPR4  = Year()
  loc_C6042E: FLdRfVar var_C4
  loc_C60431: ConcatVar var_E4
  loc_C60435: LitVarStr var_AC, " AND c.CodiCuco = tribu.ActiConc"
  loc_C6043A: ConcatVar var_108
  loc_C6043E: LitVarStr var_118, " GROUP BY tribu.ActiConc ORDER BY ActiConc"
  loc_C60443: ConcatVar var_128
  loc_C60447: CStrVarVal var_F4
  loc_C6044B: FLdPr var_E8
  loc_C6044E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60453: FFreeStr var_EC = "": var_F0 = ""
  loc_C6045C: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_108 = ""
  loc_C60469: Branch loc_C60ACE
  loc_C6046C: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_C6046F: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_C60472: ConcatStr
  loc_C60473: FStStrNoPop var_EC
  loc_C60476: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_C60479: ConcatStr
  loc_C6047A: FStStrNoPop var_F0
  loc_C6047D: LitStr " ainCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C60480: ConcatStr
  loc_C60481: FStStrNoPop var_F4
  loc_C60484: LitStr " forCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C60487: ConcatStr
  loc_C60488: FStStrNoPop var_F8
  loc_C6048B: LitStr " ebeCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C6048E: ConcatStr
  loc_C6048F: FStStrNoPop var_3EC
  loc_C60492: LitStr " redCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C60495: ConcatStr
  loc_C60496: FStStrNoPop var_3F0
  loc_C60499: LitStr " resCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C6049C: ConcatStr
  loc_C6049D: FStStrNoPop var_3F4
  loc_C604A0: LitStr " ondCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C604A3: ConcatStr
  loc_C604A4: FStStrNoPop var_3F8
  loc_C604A7: LitStr " xenCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C604AA: ConcatStr
  loc_C604AB: FStStrNoPop var_3FC
  loc_C604AE: LitStr " escCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C604B1: ConcatStr
  loc_C604B2: FStStrNoPop var_400
  loc_C604B5: LitStr " obrCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_C604B8: ConcatStr
  loc_C604B9: FStStrNoPop var_404
  loc_C604BC: LitStr " KEY mpidx` (`CodiConc`)"
  loc_C604BF: ConcatStr
  loc_C604C0: FStStrNoPop var_408
  loc_C604C3: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C604C6: ConcatStr
  loc_C604C7: FStStrNoPop var_40C
  loc_C604CA: FLdPr var_E8
  loc_C604CD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C604D2: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = ""
  loc_C604EF: LitStr "SELECT * FROM concepto "
  loc_C604F2: LitStr " WHERE PeriInfo = "
  loc_C604F5: ConcatStr
  loc_C604F6: CVarStr var_108
  loc_C604F9: FLdPr Me
  loc_C604FC: VCallAd Control_ID_DesdeMsk
  loc_C604FF: FStAdFunc var_B0
  loc_C60502: FLdPr var_B0
  loc_C60505: LateIdLdVar var_C4 DispID_15 0
  loc_C6050C: CStrVarTmp
  loc_C6050D: CVarStr var_D4
  loc_C60510: FLdRfVar var_E4
  loc_C60513: ImpAdCallFPR4  = Year()
  loc_C60518: FLdRfVar var_E4
  loc_C6051B: ConcatVar var_128
  loc_C6051F: LitVarStr var_9C, " AND ActiConc <> ''"
  loc_C60524: ConcatVar var_148
  loc_C60528: CStrVarVal var_EC
  loc_C6052C: FLdPr Me
  loc_C6052F: MemLdRfVar from_stack_1.global_96
  loc_C60532: NewIfNullPr clsboleto
  loc_C60535: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C6053A: FFree1Str var_EC
  loc_C6053D: FFree1Ad var_B0
  loc_C60540: FFreeVar var_C4 = "": var_D4 = "": var_108 = "": var_E4 = "": var_128 = ""
  loc_C6054F: FLdRfVar var_410
  loc_C60552: FLdPr Me
  loc_C60555: MemLdRfVar from_stack_1.global_96
  loc_C60558: NewIfNullPr clsboleto
  loc_C6055B: from_stack_1 = clsboleto.RecordCount
  loc_C60560: ILdRf var_410
  loc_C60563: LitI4 0
  loc_C60568: GtI4
  loc_C60569: BranchF loc_C60A6B
  loc_C6056C: FLdPr Me
  loc_C6056F: MemLdRfVar from_stack_1.global_96
  loc_C60572: NewIfNullPr clsboleto
  loc_C60575: Call clsboleto.MoveFirst()
  loc_C6057A: FLdRfVar var_B2
  loc_C6057D: FLdPr Me
  loc_C60580: MemLdRfVar from_stack_1.global_96
  loc_C60583: NewIfNullPr clsboleto
  loc_C60586: from_stack_1 = clsboleto.EOF
  loc_C6058B: FLdI2 var_B2
  loc_C6058E: NotI4
  loc_C6058F: BranchF loc_C60A6B
  loc_C60592: FLdRfVar var_C4
  loc_C60595: FLdRfVar var_418
  loc_C60598: LitVarStr var_9C, "SacuConc"
  loc_C6059D: PopAdLdVar
  loc_C6059E: FLdRfVar var_414
  loc_C605A1: FLdRfVar var_B0
  loc_C605A4: FLdPr Me
  loc_C605A7: MemLdRfVar from_stack_1.global_96
  loc_C605AA: NewIfNullPr clsboleto
  loc_C605AD: from_stack_1v = clsboleto.RsFrmGet()
  loc_C605B2: FLdPr var_B0
  loc_C605B5:  = Me.Fields
  loc_C605BA: FLdPr var_414
  loc_C605BD: from_stack_2 = Me.Item(from_stack_1)
  loc_C605C2: FLdPr var_418
  loc_C605C5:  = Me.Value
  loc_C605CA: FLdRfVar var_C4
  loc_C605CD: FnCByteVar
  loc_C605CF: CI2UI1
  loc_C605D1: LitI2_Byte 0
  loc_C605D3: EqI2
  loc_C605D4: FFreeAd var_B0 = "": var_414 = ""
  loc_C605DD: FFree1Var var_C4 = ""
  loc_C605E0: BranchF loc_C60856
  loc_C605E3: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_C605E6: LitStr " CREATE TEMPORARY TABLE tmp_saldo"
  loc_C605E9: ConcatStr
  loc_C605EA: FStStrNoPop var_EC
  loc_C605ED: LitStr " SELECT Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, SUM(DebeCtct-CredCtct) AS SainCtct"
  loc_C605F0: ConcatStr
  loc_C605F1: FStStrNoPop var_F0
  loc_C605F4: LitStr " FROM ctacte"
  loc_C605F7: ConcatStr
  loc_C605F8: FStStrNoPop var_F4
  loc_C605FB: LitStr " WHERE ctacte.FealCtct < '2018-07-01'"
  loc_C605FE: ConcatStr
  loc_C605FF: FStStrNoPop var_F8
  loc_C60602: LitStr " AND CodiConc = '"
  loc_C60605: ConcatStr
  loc_C60606: FStStrNoPop var_3F0
  loc_C60609: FLdRfVar var_3EC
  loc_C6060C: FLdPr Me
  loc_C6060F: MemLdRfVar from_stack_1.global_96
  loc_C60612: NewIfNullPr clsboleto
  loc_C60615: from_stack_1 = clsboleto.CodiConc
  loc_C6061A: ILdRf var_3EC
  loc_C6061D: ConcatStr
  loc_C6061E: FStStrNoPop var_3F4
  loc_C60621: LitStr "'"
  loc_C60624: ConcatStr
  loc_C60625: FStStrNoPop var_3F8
  loc_C60628: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_C6062B: ConcatStr
  loc_C6062C: FStStrNoPop var_3FC
  loc_C6062F: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial;"
  loc_C60632: ConcatStr
  loc_C60633: FStStrNoPop var_400
  loc_C60636: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial"
  loc_C60639: ConcatStr
  loc_C6063A: FStStrNoPop var_404
  loc_C6063D: LitStr " SELECT IFNULL(ctacte.CodiConc,'"
  loc_C60640: ConcatStr
  loc_C60641: FStStrNoPop var_40C
  loc_C60644: FLdRfVar var_408
  loc_C60647: FLdPr Me
  loc_C6064A: MemLdRfVar from_stack_1.global_96
  loc_C6064D: NewIfNullPr clsboleto
  loc_C60650: from_stack_1 = clsboleto.CodiConc
  loc_C60655: ILdRf var_408
  loc_C60658: ConcatStr
  loc_C60659: FStStrNoPop var_41C
  loc_C6065C: LitStr "') CodiConc,"
  loc_C6065F: ConcatStr
  loc_C60660: FStStrNoPop var_420
  loc_C60663: LitStr " IFNULL(SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct),'0') AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct FROM tmp_saldo"
  loc_C60666: ConcatStr
  loc_C60667: FStStrNoPop var_424
  loc_C6066A: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic"
  loc_C6066D: ConcatStr
  loc_C6066E: FStStrNoPop var_428
  loc_C60671: LitStr " AND ctacte.CuenCtct = tmp_saldo.CuenCtct"
  loc_C60674: ConcatStr
  loc_C60675: FStStrNoPop var_42C
  loc_C60678: LitStr " AND ctacte.PeriCtct = tmp_saldo.PeriCtct"
  loc_C6067B: ConcatStr
  loc_C6067C: FStStrNoPop var_430
  loc_C6067F: LitStr " AND ctacte.BimeCtct = tmp_saldo.BimeCtct"
  loc_C60682: ConcatStr
  loc_C60683: FStStrNoPop var_434
  loc_C60686: LitStr " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_C60689: ConcatStr
  loc_C6068A: FStStrNoPop var_438
  loc_C6068D: LitStr " AND ctacte.FealCtct < '2018-07-01'"
  loc_C60690: ConcatStr
  loc_C60691: FStStrNoPop var_43C
  loc_C60694: FLdPr var_E8
  loc_C60697: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6069C: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_3F0 = "": var_3EC = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_40C = "": var_408 = "": var_41C = "": var_420 = "": var_424 = "": var_428 = "": var_42C = "": var_430 = "": var_434 = "": var_438 = ""
  loc_C606CB: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_C606CE: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_C606D1: ConcatStr
  loc_C606D2: FStStrNoPop var_EC
  loc_C606D5: LitStr " SELECT CodiConc,"
  loc_C606D8: ConcatStr
  loc_C606D9: FStStrNoPop var_F0
  loc_C606DC: LitStr " SUM(SainCtct) SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C606DF: ConcatStr
  loc_C606E0: FStStrNoPop var_F4
  loc_C606E3: LitStr " FROM tmp_saldo_inicial"
  loc_C606E6: ConcatStr
  loc_C606E7: FStStrNoPop var_F8
  loc_C606EA: FLdPr var_E8
  loc_C606ED: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C606F2: FFreeStr var_EC = "": var_F0 = "": var_F4 = ""
  loc_C606FD: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_C60700: LitStr " SELECT IFNULL(CodiConc,'"
  loc_C60703: ConcatStr
  loc_C60704: FStStrNoPop var_F0
  loc_C60707: FLdRfVar var_EC
  loc_C6070A: FLdPr Me
  loc_C6070D: MemLdRfVar from_stack_1.global_96
  loc_C60710: NewIfNullPr clsboleto
  loc_C60713: from_stack_1 = clsboleto.CodiConc
  loc_C60718: ILdRf var_EC
  loc_C6071B: ConcatStr
  loc_C6071C: FStStrNoPop var_F4
  loc_C6071F: LitStr "') CodiConc, IFNULL(SUM(DebeCtct-CredCtct),0) AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C60722: ConcatStr
  loc_C60723: FStStrNoPop var_F8
  loc_C60726: LitStr " FROM ctacte"
  loc_C60729: ConcatStr
  loc_C6072A: FStStrNoPop var_3EC
  loc_C6072D: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C60730: ConcatStr
  loc_C60731: FStStrNoPop var_3F0
  loc_C60734: ILdRf var_88
  loc_C60737: ConcatStr
  loc_C60738: FStStrNoPop var_3F4
  loc_C6073B: LitStr "' AND CodiConc = '"
  loc_C6073E: ConcatStr
  loc_C6073F: FStStrNoPop var_3FC
  loc_C60742: FLdRfVar var_3F8
  loc_C60745: FLdPr Me
  loc_C60748: MemLdRfVar from_stack_1.global_96
  loc_C6074B: NewIfNullPr clsboleto
  loc_C6074E: from_stack_1 = clsboleto.CodiConc
  loc_C60753: ILdRf var_3F8
  loc_C60756: ConcatStr
  loc_C60757: FStStrNoPop var_400
  loc_C6075A: LitStr "'"
  loc_C6075D: ConcatStr
  loc_C6075E: FStStrNoPop var_404
  loc_C60761: FLdPr var_E8
  loc_C60764: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60769: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_F8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3FC = "": var_3F8 = "": var_400 = ""
  loc_C60782: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_C60785: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_C60788: ConcatStr
  loc_C60789: FStStrNoPop var_EC
  loc_C6078C: LitStr " SELECT CodiConc, SUM(SainCtct) SainCtct, AforCtct, DebeCtct, CredCtct, PresCtct, CondCtct, ExenCtct, DescCtct, CobrCtct"
  loc_C6078F: ConcatStr
  loc_C60790: FStStrNoPop var_F0
  loc_C60793: LitStr " FROM tmp_saldo_inicial1"
  loc_C60796: ConcatStr
  loc_C60797: FStStrNoPop var_F4
  loc_C6079A: FLdPr var_E8
  loc_C6079D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C607A2: FFreeStr var_EC = "": var_F0 = ""
  loc_C607AB: LitStr "INSERT INTO tribu"
  loc_C607AE: LitStr " (SELECT IFNULL(CodiConc,'') CodiConc, 000000000.00 AS SainCtct, IFNULL(SUM(IF(CodiTimo=1, DebeCtct,000000000.00)),0) AS AforCtct ,"
  loc_C607B1: ConcatStr
  loc_C607B2: FStStrNoPop var_EC
  loc_C607B5: LitStr " IFNULL(sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)),'0') as DebeCtct, IFNULL(sum(if(CodiTimo in (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)),'0') as CredCtct,"
  loc_C607B8: ConcatStr
  loc_C607B9: FStStrNoPop var_F0
  loc_C607BC: LitStr " IFNULL(sum(if(CodiTimo=12,CredCtct,000000000.00)),'0') as PresCtct, IFNULL(sum(if(CodiTimo=14,CredCtct,000000000.00)),'0') as CondCtct, IFNULL(sum(if(CodiTimo=15,CredCtct,000000000.00)),'0') as ExenCtct, IFNULL(sum(if(CodiTimo in (6,7),CredCtct,000000000.00)),'0') as DescCtct,"
  loc_C607BF: ConcatStr
  loc_C607C0: FStStrNoPop var_F4
  loc_C607C3: LitStr " IFNULL(sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)),'0') as CobrCtct"
  loc_C607C6: ConcatStr
  loc_C607C7: FStStrNoPop var_F8
  loc_C607CA: LitStr " FROM ctacte "
  loc_C607CD: ConcatStr
  loc_C607CE: FStStrNoPop var_3EC
  loc_C607D1: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C607D4: ConcatStr
  loc_C607D5: FStStrNoPop var_3F0
  loc_C607D8: ILdRf var_88
  loc_C607DB: ConcatStr
  loc_C607DC: FStStrNoPop var_3F4
  loc_C607DF: LitStr "' AND '"
  loc_C607E2: ConcatStr
  loc_C607E3: FStStrNoPop var_3F8
  loc_C607E6: ILdRf var_8C
  loc_C607E9: ConcatStr
  loc_C607EA: FStStrNoPop var_3FC
  loc_C607ED: LitStr "'"
  loc_C607F0: ConcatStr
  loc_C607F1: FStStrNoPop var_400
  loc_C607F4: LitStr " AND ctacte.CodiConc = '"
  loc_C607F7: ConcatStr
  loc_C607F8: FStStrNoPop var_408
  loc_C607FB: FLdRfVar var_404
  loc_C607FE: FLdPr Me
  loc_C60801: MemLdRfVar from_stack_1.global_96
  loc_C60804: NewIfNullPr clsboleto
  loc_C60807: from_stack_1 = clsboleto.CodiConc
  loc_C6080C: ILdRf var_404
  loc_C6080F: ConcatStr
  loc_C60810: FStStrNoPop var_40C
  loc_C60813: LitStr "'"
  loc_C60816: ConcatStr
  loc_C60817: FStStrNoPop var_41C
  loc_C6081A: LitStr " ) UNION ALL"
  loc_C6081D: ConcatStr
  loc_C6081E: FStStrNoPop var_420
  loc_C60821: LitStr " (SELECT * FROM tmp_saldo_info);"
  loc_C60824: ConcatStr
  loc_C60825: FStStrNoPop var_424
  loc_C60828: FLdPr var_E8
  loc_C6082B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60830: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_408 = "": var_404 = "": var_40C = "": var_41C = "": var_420 = ""
  loc_C60853: Branch loc_C60A5A
  loc_C60856: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_C60859: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_C6085C: ConcatStr
  loc_C6085D: FStStrNoPop var_EC
  loc_C60860: LitStr " SELECT '"
  loc_C60863: ConcatStr
  loc_C60864: FStStrNoPop var_F4
  loc_C60867: FLdRfVar var_F0
  loc_C6086A: FLdPr Me
  loc_C6086D: MemLdRfVar from_stack_1.global_96
  loc_C60870: NewIfNullPr clsboleto
  loc_C60873: from_stack_1 = clsboleto.CodiConc
  loc_C60878: ILdRf var_F0
  loc_C6087B: ConcatStr
  loc_C6087C: FStStrNoPop var_F8
  loc_C6087F: LitStr "' CodiConc, ROUND(SUM(replace(ImpoSain,',','.')),2) SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C60882: ConcatStr
  loc_C60883: FStStrNoPop var_3EC
  loc_C60886: LitStr " FROM saldoinicialcuota WHERE ConcViej = '"
  loc_C60889: ConcatStr
  loc_C6088A: CVarStr var_D4
  loc_C6088D: FLdRfVar var_C4
  loc_C60890: FLdRfVar var_418
  loc_C60893: LitVarStr var_9C, "ConcViej"
  loc_C60898: PopAdLdVar
  loc_C60899: FLdRfVar var_414
  loc_C6089C: FLdRfVar var_B0
  loc_C6089F: FLdPr Me
  loc_C608A2: MemLdRfVar from_stack_1.global_96
  loc_C608A5: NewIfNullPr clsboleto
  loc_C608A8: from_stack_1v = clsboleto.RsFrmGet()
  loc_C608AD: FLdPr var_B0
  loc_C608B0:  = Me.Fields
  loc_C608B5: FLdPr var_414
  loc_C608B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C608BD: FLdPr var_418
  loc_C608C0:  = Me.Value
  loc_C608C5: FLdRfVar var_C4
  loc_C608C8: ConcatVar var_E4
  loc_C608CC: LitVarStr var_AC, "'"
  loc_C608D1: ConcatVar var_108
  loc_C608D5: CStrVarVal var_3F0
  loc_C608D9: FLdPr var_E8
  loc_C608DC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C608E1: FFreeStr var_EC = "": var_F4 = "": var_F0 = "": var_F8 = "": var_3EC = ""
  loc_C608F0: FFreeAd var_B0 = "": var_414 = ""
  loc_C608F9: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_C60904: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_C60907: LitStr " SELECT IFNULL(CodiConc,'"
  loc_C6090A: ConcatStr
  loc_C6090B: FStStrNoPop var_F0
  loc_C6090E: FLdRfVar var_EC
  loc_C60911: FLdPr Me
  loc_C60914: MemLdRfVar from_stack_1.global_96
  loc_C60917: NewIfNullPr clsboleto
  loc_C6091A: from_stack_1 = clsboleto.CodiConc
  loc_C6091F: ILdRf var_EC
  loc_C60922: ConcatStr
  loc_C60923: FStStrNoPop var_F4
  loc_C60926: LitStr "') CodiConc, SUM(IF(CodiTimo IN (3,8,10,19,22,24),DebeCtct,0))-SUM(CredCtct) AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C60929: ConcatStr
  loc_C6092A: FStStrNoPop var_F8
  loc_C6092D: LitStr " FROM ctacte"
  loc_C60930: ConcatStr
  loc_C60931: FStStrNoPop var_3EC
  loc_C60934: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C60937: ConcatStr
  loc_C60938: FStStrNoPop var_3F0
  loc_C6093B: ILdRf var_88
  loc_C6093E: ConcatStr
  loc_C6093F: FStStrNoPop var_3F4
  loc_C60942: LitStr "' AND CodiConc = '"
  loc_C60945: ConcatStr
  loc_C60946: FStStrNoPop var_3FC
  loc_C60949: FLdRfVar var_3F8
  loc_C6094C: FLdPr Me
  loc_C6094F: MemLdRfVar from_stack_1.global_96
  loc_C60952: NewIfNullPr clsboleto
  loc_C60955: from_stack_1 = clsboleto.CodiConc
  loc_C6095A: ILdRf var_3F8
  loc_C6095D: ConcatStr
  loc_C6095E: FStStrNoPop var_400
  loc_C60961: LitStr "'"
  loc_C60964: ConcatStr
  loc_C60965: FStStrNoPop var_404
  loc_C60968: FLdPr var_E8
  loc_C6096B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60970: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_F8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3FC = "": var_3F8 = "": var_400 = ""
  loc_C60989: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_C6098C: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_C6098F: ConcatStr
  loc_C60990: FStStrNoPop var_EC
  loc_C60993: LitStr " SELECT CodiConc, SUM(SainCtct) SainCtct, AforCtct, DebeCtct, CredCtct, PresCtct, CondCtct, ExenCtct, DescCtct, CobrCtct"
  loc_C60996: ConcatStr
  loc_C60997: FStStrNoPop var_F0
  loc_C6099A: LitStr " FROM tmp_saldo_inicial1"
  loc_C6099D: ConcatStr
  loc_C6099E: FStStrNoPop var_F4
  loc_C609A1: FLdPr var_E8
  loc_C609A4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C609A9: FFreeStr var_EC = "": var_F0 = ""
  loc_C609B2: LitStr "INSERT INTO tribu"
  loc_C609B5: LitStr " (SELECT IFNULL(CodiConc,'') CodiConc, 000000000.00 AS SainCtct, IFNULL(SUM(IF(CodiTimo=1, 000000000.00,000000000.00)),0) AS AforCtct ,"
  loc_C609B8: ConcatStr
  loc_C609B9: FStStrNoPop var_EC
  loc_C609BC: LitStr " IFNULL(sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)),'0') as DebeCtct, IFNULL(sum(if(CodiTimo in (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)),'0') as CredCtct,"
  loc_C609BF: ConcatStr
  loc_C609C0: FStStrNoPop var_F0
  loc_C609C3: LitStr " IFNULL(sum(if(CodiTimo=12,CredCtct,000000000.00)),'0') as PresCtct, IFNULL(sum(if(CodiTimo=14,CredCtct,000000000.00)),'0') as CondCtct, IFNULL(sum(if(CodiTimo=15,CredCtct,000000000.00)),'0') as ExenCtct, IFNULL(sum(if(CodiTimo in (6,7),CredCtct,000000000.00)),'0') as DescCtct,"
  loc_C609C6: ConcatStr
  loc_C609C7: FStStrNoPop var_F4
  loc_C609CA: LitStr " IFNULL(sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)),'0') as CobrCtct"
  loc_C609CD: ConcatStr
  loc_C609CE: FStStrNoPop var_F8
  loc_C609D1: LitStr " FROM ctacte "
  loc_C609D4: ConcatStr
  loc_C609D5: FStStrNoPop var_3EC
  loc_C609D8: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C609DB: ConcatStr
  loc_C609DC: FStStrNoPop var_3F0
  loc_C609DF: ILdRf var_88
  loc_C609E2: ConcatStr
  loc_C609E3: FStStrNoPop var_3F4
  loc_C609E6: LitStr "' AND '"
  loc_C609E9: ConcatStr
  loc_C609EA: FStStrNoPop var_3F8
  loc_C609ED: ILdRf var_8C
  loc_C609F0: ConcatStr
  loc_C609F1: FStStrNoPop var_3FC
  loc_C609F4: LitStr "'"
  loc_C609F7: ConcatStr
  loc_C609F8: FStStrNoPop var_400
  loc_C609FB: LitStr " AND ctacte.CodiConc = '"
  loc_C609FE: ConcatStr
  loc_C609FF: FStStrNoPop var_408
  loc_C60A02: FLdRfVar var_404
  loc_C60A05: FLdPr Me
  loc_C60A08: MemLdRfVar from_stack_1.global_96
  loc_C60A0B: NewIfNullPr clsboleto
  loc_C60A0E: from_stack_1 = clsboleto.CodiConc
  loc_C60A13: ILdRf var_404
  loc_C60A16: ConcatStr
  loc_C60A17: FStStrNoPop var_40C
  loc_C60A1A: LitStr "'"
  loc_C60A1D: ConcatStr
  loc_C60A1E: FStStrNoPop var_41C
  loc_C60A21: LitStr " ) UNION ALL"
  loc_C60A24: ConcatStr
  loc_C60A25: FStStrNoPop var_420
  loc_C60A28: LitStr " (SELECT * FROM tmp_saldo_info);"
  loc_C60A2B: ConcatStr
  loc_C60A2C: FStStrNoPop var_424
  loc_C60A2F: FLdPr var_E8
  loc_C60A32: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60A37: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_3EC = "": var_3F0 = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_408 = "": var_404 = "": var_40C = "": var_41C = "": var_420 = ""
  loc_C60A5A: FLdPr Me
  loc_C60A5D: MemLdRfVar from_stack_1.global_96
  loc_C60A60: NewIfNullPr clsboleto
  loc_C60A63: Call clsboleto.MoveSiguiente()
  loc_C60A68: Branch loc_C6057A
  loc_C60A6B: LitStr "SELECT tribu.CodiConc ActiConc, DetaConc DetaCuco, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C60A6E: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C60A71: ConcatStr
  loc_C60A72: FStStrNoPop var_EC
  loc_C60A75: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct"
  loc_C60A78: ConcatStr
  loc_C60A79: FStStrNoPop var_F0
  loc_C60A7C: LitStr " FROM tribu LEFT JOIN concepto as c ON c.PeriInfo = "
  loc_C60A7F: ConcatStr
  loc_C60A80: CVarStr var_D4
  loc_C60A83: FLdRfVar var_88
  loc_C60A86: CVarRef
  loc_C60A8B: FLdRfVar var_C4
  loc_C60A8E: ImpAdCallFPR4  = Year()
  loc_C60A93: FLdRfVar var_C4
  loc_C60A96: ConcatVar var_E4
  loc_C60A9A: LitVarStr var_AC, " AND c.CodiConc = tribu.CodiConc"
  loc_C60A9F: ConcatVar var_108
  loc_C60AA3: LitVarStr var_118, " GROUP BY tribu.CodiConc"
  loc_C60AA8: ConcatVar var_128
  loc_C60AAC: CStrVarVal var_F4
  loc_C60AB0: FLdPr var_E8
  loc_C60AB3: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C60AB8: FFreeStr var_EC = "": var_F0 = ""
  loc_C60AC1: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_108 = ""
  loc_C60ACE: FLdRfVar var_410
  loc_C60AD1: FLdPr var_E8
  loc_C60AD4: from_stack_1 = clsctacte.RecordCount
  loc_C60AD9: ILdRf var_410
  loc_C60ADC: LitI4 0
  loc_C60AE1: EqI4
  loc_C60AE2: BranchF loc_C60AF0
  loc_C60AE5: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C60AE8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C60AED: Branch loc_C60E0F
  loc_C60AF0: LitI4 0
  loc_C60AF5: LitI4 1
  loc_C60AFA: FLdPr Me
  loc_C60AFD: MemLdRfVar from_stack_1.global_108
  loc_C60B00: Redim
  loc_C60B0A: LitI4 0
  loc_C60B0F: FLdRfVar var_410
  loc_C60B12: FLdPr var_E8
  loc_C60B15: from_stack_1 = clsctacte.RecordCount
  loc_C60B1A: ILdRf var_410
  loc_C60B1D: FLdPr Me
  loc_C60B20: MemLdRfVar from_stack_1.global_100
  loc_C60B23: Redim
  loc_C60B2D: FLdPr var_E8
  loc_C60B30: Call clsctacte.MoveFirst()
  loc_C60B35: FLdRfVar var_410
  loc_C60B38: FLdPr var_E8
  loc_C60B3B: from_stack_1 = clsctacte.RecordCount
  loc_C60B40: ILdRf var_410
  loc_C60B43: CR8I4
  loc_C60B44: CVarR4
  loc_C60B48: PopAdLdVar
  loc_C60B49: FLdPrThis
  loc_C60B4A: VCallAd Control_ID_Pbar
  loc_C60B4D: FStAdFunc var_B0
  loc_C60B50: FLdPr var_B0
  loc_C60B53: LateIdSt
  loc_C60B58: FFree1Ad var_B0
  loc_C60B5B: LitVar_TRUE var_9C
  loc_C60B5E: PopAdLdVar
  loc_C60B5F: FLdPrThis
  loc_C60B60: VCallAd Control_ID_Pbar
  loc_C60B63: FStAdFunc var_B0
  loc_C60B66: FLdPr var_B0
  loc_C60B69: LateIdSt
  loc_C60B6E: FFree1Ad var_B0
  loc_C60B71: LitI4 1
  loc_C60B76: FLdPr Me
  loc_C60B79: MemLdRfVar from_stack_1.global_104
  loc_C60B7C: FLdPr Me
  loc_C60B7F: MemLdStr global_100
  loc_C60B82: LitI2_Byte 1
  loc_C60B84: FnUBound
  loc_C60B86: ForI4 var_444
  loc_C60B8C: FLdPr Me
  loc_C60B8F: MemLdStr global_104
  loc_C60B92: CR8I4
  loc_C60B93: CVarR4
  loc_C60B97: PopAdLdVar
  loc_C60B98: FLdPrThis
  loc_C60B99: VCallAd Control_ID_Pbar
  loc_C60B9C: FStAdFunc var_B0
  loc_C60B9F: FLdPr var_B0
  loc_C60BA2: LateIdSt
  loc_C60BA7: FFree1Ad var_B0
  loc_C60BAA: FLdRfVar var_C4
  loc_C60BAD: FLdPr var_E8
  loc_C60BB0: from_stack_1 = clsctacte.ActiConc
  loc_C60BB5: LitI2_Byte 0
  loc_C60BB7: LitVar_Missing var_D4
  loc_C60BBA: LitI2_Byte 0
  loc_C60BBC: FLdVar var_C4
  loc_C60BC0: FLdPr Me
  loc_C60BC3: MemLdStr global_104
  loc_C60BC6: FLdPr Me
  loc_C60BC9: MemLdStr global_100
  loc_C60BCC: AryLock
  loc_C60BCF: Ary1LdPr
  loc_C60BD0: MemLdRfVar from_stack_1.global_0
  loc_C60BD3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60BD8: AryUnlock
  loc_C60BDB: FFreeVar var_C4 = ""
  loc_C60BE2: FLdRfVar var_C4
  loc_C60BE5: FLdPr var_E8
  loc_C60BE8: from_stack_1 = clsctacte.DetaCuco
  loc_C60BED: LitI2_Byte 0
  loc_C60BEF: LitVar_Missing var_D4
  loc_C60BF2: LitI2_Byte 0
  loc_C60BF4: FLdVar var_C4
  loc_C60BF8: FLdPr Me
  loc_C60BFB: MemLdStr global_104
  loc_C60BFE: FLdPr Me
  loc_C60C01: MemLdStr global_100
  loc_C60C04: AryLock
  loc_C60C07: Ary1LdPr
  loc_C60C08: MemLdRfVar from_stack_1.global_4
  loc_C60C0B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60C10: AryUnlock
  loc_C60C13: FFreeVar var_C4 = ""
  loc_C60C1A: FLdRfVar var_C4
  loc_C60C1D: FLdPr var_E8
  loc_C60C20: from_stack_1 = clsctacte.SainCtct
  loc_C60C25: LitI2_Byte 0
  loc_C60C27: LitI4 1
  loc_C60C2C: FLdPr Me
  loc_C60C2F: MemLdStr global_108
  loc_C60C32: AryLock
  loc_C60C35: Ary1LdPr
  loc_C60C36: MemLdRfVar from_stack_1.global_8
  loc_C60C39: CVarRef
  loc_C60C3E: LitI2_Byte &HFF
  loc_C60C40: FLdVar var_C4
  loc_C60C44: FLdPr Me
  loc_C60C47: MemLdStr global_104
  loc_C60C4A: FLdPr Me
  loc_C60C4D: MemLdStr global_100
  loc_C60C50: AryLock
  loc_C60C53: Ary1LdPr
  loc_C60C54: MemLdRfVar from_stack_1.global_8
  loc_C60C57: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60C5C: AryUnlock
  loc_C60C5F: AryUnlock
  loc_C60C62: FFree1Var var_C4 = ""
  loc_C60C65: FLdRfVar var_454
  loc_C60C68: FLdPr var_E8
  loc_C60C6B: from_stack_1 = clsctacte.DebeCtct
  loc_C60C70: FLdRfVar var_C4
  loc_C60C73: FLdPr var_E8
  loc_C60C76: from_stack_1 = clsctacte.AforCtct
  loc_C60C7B: LitI2_Byte 0
  loc_C60C7D: LitI4 1
  loc_C60C82: FLdPr Me
  loc_C60C85: MemLdStr global_108
  loc_C60C88: AryLock
  loc_C60C8B: Ary1LdPr
  loc_C60C8C: MemLdRfVar from_stack_1.global_12
  loc_C60C8F: CVarRef
  loc_C60C94: LitI2_Byte &HFF
  loc_C60C96: FLdFPR8 var_454
  loc_C60C99: CVarR8
  loc_C60C9D: FLdRfVar var_C4
  loc_C60CA0: AddVar var_D4
  loc_C60CA4: PopAdLdVar
  loc_C60CA5: FLdPr Me
  loc_C60CA8: MemLdStr global_104
  loc_C60CAB: FLdPr Me
  loc_C60CAE: MemLdStr global_100
  loc_C60CB1: AryLock
  loc_C60CB4: Ary1LdPr
  loc_C60CB5: MemLdRfVar from_stack_1.global_12
  loc_C60CB8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60CBD: AryUnlock
  loc_C60CC0: AryUnlock
  loc_C60CC3: FFreeVar var_C4 = ""
  loc_C60CCA: FLdRfVar var_454
  loc_C60CCD: FLdPr var_E8
  loc_C60CD0: from_stack_1 = clsctacte.CredCtct
  loc_C60CD5: FLdRfVar var_C4
  loc_C60CD8: FLdPr var_E8
  loc_C60CDB: from_stack_1 = clsctacte.PresCtct
  loc_C60CE0: FLdRfVar var_E4
  loc_C60CE3: FLdPr var_E8
  loc_C60CE6: from_stack_1 = clsctacte.CondCtct
  loc_C60CEB: FLdRfVar var_128
  loc_C60CEE: FLdPr var_E8
  loc_C60CF1: from_stack_1 = clsctacte.ExenCtct
  loc_C60CF6: FLdRfVar var_168
  loc_C60CF9: FLdPr var_E8
  loc_C60CFC: from_stack_1 = clsctacte.DescCtct
  loc_C60D01: FLdRfVar var_1A8
  loc_C60D04: FLdPr var_E8
  loc_C60D07: from_stack_1 = clsctacte.CobrCtct
  loc_C60D0C: LitI2_Byte 0
  loc_C60D0E: LitI4 1
  loc_C60D13: FLdPr Me
  loc_C60D16: MemLdStr global_108
  loc_C60D19: AryLock
  loc_C60D1C: Ary1LdPr
  loc_C60D1D: MemLdRfVar from_stack_1.global_16
  loc_C60D20: CVarRef
  loc_C60D25: LitI2_Byte &HFF
  loc_C60D27: FLdFPR8 var_454
  loc_C60D2A: CVarR8
  loc_C60D2E: FLdRfVar var_C4
  loc_C60D31: AddVar var_D4
  loc_C60D35: FLdRfVar var_E4
  loc_C60D38: AddVar var_108
  loc_C60D3C: FLdRfVar var_128
  loc_C60D3F: AddVar var_148
  loc_C60D43: FLdRfVar var_168
  loc_C60D46: AddVar var_188
  loc_C60D4A: FLdRfVar var_1A8
  loc_C60D4D: AddVar var_1C8
  loc_C60D51: PopAdLdVar
  loc_C60D52: FLdPr Me
  loc_C60D55: MemLdStr global_104
  loc_C60D58: FLdPr Me
  loc_C60D5B: MemLdStr global_100
  loc_C60D5E: AryLock
  loc_C60D61: Ary1LdPr
  loc_C60D62: MemLdRfVar from_stack_1.global_16
  loc_C60D65: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60D6A: AryUnlock
  loc_C60D6D: AryUnlock
  loc_C60D70: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = ""
  loc_C60D87: FLdRfVar var_C4
  loc_C60D8A: FLdPr var_E8
  loc_C60D8D: from_stack_1 = clsctacte.SafiCtct
  loc_C60D92: LitI2_Byte 0
  loc_C60D94: LitI4 1
  loc_C60D99: FLdPr Me
  loc_C60D9C: MemLdStr global_108
  loc_C60D9F: AryLock
  loc_C60DA2: Ary1LdPr
  loc_C60DA3: MemLdRfVar from_stack_1.global_20
  loc_C60DA6: CVarRef
  loc_C60DAB: LitI2_Byte &HFF
  loc_C60DAD: FLdVar var_C4
  loc_C60DB1: FLdPr Me
  loc_C60DB4: MemLdStr global_104
  loc_C60DB7: FLdPr Me
  loc_C60DBA: MemLdStr global_100
  loc_C60DBD: AryLock
  loc_C60DC0: Ary1LdPr
  loc_C60DC1: MemLdRfVar from_stack_1.global_20
  loc_C60DC4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C60DC9: AryUnlock
  loc_C60DCC: AryUnlock
  loc_C60DCF: FFree1Var var_C4 = ""
  loc_C60DD2: LitI2_Byte 1
  loc_C60DD4: PopTmpLdAd2 var_B2
  loc_C60DD7: FLdPr var_E8
  loc_C60DDA: Call clsctacte.Move(from_stack_1v)
  loc_C60DDF: FLdPr Me
  loc_C60DE2: MemLdRfVar from_stack_1.global_104
  loc_C60DE5: NextI4 var_444, loc_C60B8C
  loc_C60DEA: LitVar_FALSE
  loc_C60DEE: PopAdLdVar
  loc_C60DEF: FLdPrThis
  loc_C60DF0: VCallAd Control_ID_Pbar
  loc_C60DF3: FStAdFunc var_B0
  loc_C60DF6: FLdPr var_B0
  loc_C60DF9: LateIdSt
  loc_C60DFE: FFree1Ad var_B0
  loc_C60E01: LitNothing
  loc_C60E03: FStAd var_E8 
  loc_C60E07: LitI2_Byte &HFF
  loc_C60E09: FLdPr Me
  loc_C60E0C: MemStI2 bGenerado
  loc_C60E0F: LitI4 0
  loc_C60E14: CI2I4
  loc_C60E15: FLdPr Me
  loc_C60E18: Me.MousePointer = from_stack_1
  loc_C60E1D: LitVarStr var_9C, vbNullString
  loc_C60E22: PopAdLdVar
  loc_C60E23: FLdPr Me
  loc_C60E26: VCallAd Control_ID_statusBar
  loc_C60E29: FStAdFunc var_B0
  loc_C60E2C: FLdPr var_B0
  loc_C60E2F: LateIdSt
  loc_C60E34: FFree1Ad var_B0
  loc_C60E37: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B8F508
  'Data Table: 49DC8C
  loc_B8F00C: OnErrorGoto loc_B8F489
  loc_B8F00F: FLdPr Me
  loc_B8F012: VCallAd Control_ID_DesdeMsk
  loc_B8F015: FStAdFunc var_1A8
  loc_B8F018: FLdPr var_1A8
  loc_B8F01B: LateIdLdVar var_1B8 DispID_15 0
  loc_B8F022: CStrVarTmp
  loc_B8F023: CVarStr var_1C8
  loc_B8F026: FLdRfVar var_1D8
  loc_B8F029: ImpAdCallFPR4  = Month()
  loc_B8F02E: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B8F033: FStStrNoPop var_88
  loc_B8F036: LitStr "\Acuerdo 2988\"
  loc_B8F039: ConcatStr
  loc_B8F03A: CVarStr var_CC
  loc_B8F03D: FLdPr Me
  loc_B8F040: VCallAd Control_ID_DesdeMsk
  loc_B8F043: FStAdFunc var_8C
  loc_B8F046: FLdPr var_8C
  loc_B8F049: LateIdLdVar var_9C DispID_15 0
  loc_B8F050: CStrVarTmp
  loc_B8F051: CVarStr var_AC
  loc_B8F054: FLdRfVar var_BC
  loc_B8F057: ImpAdCallFPR4  = Year()
  loc_B8F05C: FLdRfVar var_BC
  loc_B8F05F: ConcatVar var_DC
  loc_B8F063: LitVarStr var_EC, "\Mes "
  loc_B8F068: ConcatVar var_FC
  loc_B8F06C: FLdPr Me
  loc_B8F06F: VCallAd Control_ID_DesdeMsk
  loc_B8F072: FStAdFunc var_100
  loc_B8F075: FLdPr var_100
  loc_B8F078: LateIdLdVar var_110 DispID_15 0
  loc_B8F07F: CStrVarTmp
  loc_B8F080: CVarStr var_120
  loc_B8F083: FLdRfVar var_130
  loc_B8F086: ImpAdCallFPR4  = Month()
  loc_B8F08B: FLdRfVar var_130
  loc_B8F08E: ConcatVar var_140
  loc_B8F092: LitVarStr var_150, "\"
  loc_B8F097: ConcatVar var_160
  loc_B8F09B: FLdPr Me
  loc_B8F09E: VCallAd Control_ID_DesdeMsk
  loc_B8F0A1: FStAdFunc var_164
  loc_B8F0A4: FLdPr var_164
  loc_B8F0A7: LateIdLdVar var_174 DispID_15 0
  loc_B8F0AE: CStrVarTmp
  loc_B8F0AF: CVarStr var_184
  loc_B8F0B2: FLdRfVar var_194
  loc_B8F0B5: ImpAdCallFPR4  = Year()
  loc_B8F0BA: FLdRfVar var_194
  loc_B8F0BD: ConcatVar var_1A4
  loc_B8F0C1: LitI4 1
  loc_B8F0C6: LitI4 1
  loc_B8F0CB: LitVarStr var_1E8, "00"
  loc_B8F0D0: FStVarCopyObj var_1F8
  loc_B8F0D3: FLdRfVar var_1F8
  loc_B8F0D6: FLdRfVar var_1D8
  loc_B8F0D9: FLdRfVar var_208
  loc_B8F0DC: ImpAdCallFPR4  = Format(, )
  loc_B8F0E1: FLdRfVar var_208
  loc_B8F0E4: ConcatVar var_218
  loc_B8F0E8: LitVarStr var_228, " - TotalCtaCobrar.txt"
  loc_B8F0ED: ConcatVar var_238
  loc_B8F0F1: CStrVarTmp
  loc_B8F0F2: ImpAdStStr MemVar_D93030
  loc_B8F0F6: FFree1Str var_88
  loc_B8F0F9: FFreeAd var_8C = "": var_100 = "": var_164 = ""
  loc_B8F104: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_120 = "": var_FC = "": var_130 = "": var_140 = "": var_174 = "": var_184 = "": var_160 = "": var_194 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1A4 = "": var_208 = "": var_218 = ""
  loc_B8F133: ImpAdLdI4 MemVar_D93030
  loc_B8F136: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B8F13B: LitStr "	"
  loc_B8F13E: FStStrCopy var_23C
  loc_B8F141: LitVarStr var_EC, "266"
  loc_B8F146: FLdPr Me
  loc_B8F149: VCallAd Control_ID_DesdeMsk
  loc_B8F14C: FStAdFunc var_8C
  loc_B8F14F: FLdPr var_8C
  loc_B8F152: LateIdLdVar var_9C DispID_15 0
  loc_B8F159: CStrVarTmp
  loc_B8F15A: CVarStr var_AC
  loc_B8F15D: FLdRfVar var_BC
  loc_B8F160: ImpAdCallFPR4  = Year()
  loc_B8F165: FLdRfVar var_BC
  loc_B8F168: ConcatVar var_CC
  loc_B8F16C: LitVarStr var_150, "060204"
  loc_B8F171: ConcatVar var_DC
  loc_B8F175: CStrVarTmp
  loc_B8F176: FStStr var_240
  loc_B8F179: FFree1Ad var_8C
  loc_B8F17C: FFreeVar var_9C = "": var_AC = "": var_BC = "": var_CC = ""
  loc_B8F189: FLdRfVar var_8C
  loc_B8F18C: LitI2_Byte 0
  loc_B8F18E: LitI2_Byte &HFF
  loc_B8F190: ImpAdLdI4 MemVar_D93030
  loc_B8F193: FLdPr Me
  loc_B8F196: MemLdRfVar from_stack_1.global_56
  loc_B8F199: NewIfNullPr IFileSystem3
  loc_B8F19C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B8F1A1: ILdRf var_8C
  loc_B8F1A4: FLdPr Me
  loc_B8F1A7: MemStVarAd
  loc_B8F1AB: FFree1Ad var_8C
  loc_B8F1AE: FLdPr Me
  loc_B8F1B1: MemLdStr global_100
  loc_B8F1B4: LitI2_Byte 1
  loc_B8F1B6: FnUBound
  loc_B8F1B8: LitI4 0
  loc_B8F1BD: EqI4
  loc_B8F1BE: BranchF loc_B8F220
  loc_B8F1C1: LitI4 0
  loc_B8F1C6: LitI4 1
  loc_B8F1CB: FLdRfVar var_244
  loc_B8F1CE: Redim
  loc_B8F1D8: LitVarStr var_EC, "|"
  loc_B8F1DD: LitI4 0
  loc_B8F1E2: ILdRf var_244
  loc_B8F1E5: Ary1StVarCopy
  loc_B8F1E7: LitVarStr var_150, "SIN MOVIMIENTO"
  loc_B8F1EC: LitI4 1
  loc_B8F1F1: ILdRf var_244
  loc_B8F1F4: Ary1StVarCopy
  loc_B8F1F6: FLdRfVar var_244
  loc_B8F1F9: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B8F1FE: FStStr var_88
  loc_B8F201: FLdRfVar var_244
  loc_B8F204: Erase
  loc_B8F205: FLdZeroAd var_88
  loc_B8F208: CVarStr var_9C
  loc_B8F20B: PopAdLdVar
  loc_B8F20C: FLdPr Me
  loc_B8F20F: MemLdRfVar from_stack_1.global_76
  loc_B8F212: LdPrVar
  loc_B8F214: LateMemCall
  loc_B8F21A: FFree1Var var_9C = ""
  loc_B8F21D: Branch loc_B8F477
  loc_B8F220: LitI4 0
  loc_B8F225: LitI4 8
  loc_B8F22A: FLdRfVar var_244
  loc_B8F22D: Redim
  loc_B8F237: LitVarStr var_EC, "|"
  loc_B8F23C: LitI4 0
  loc_B8F241: ILdRf var_244
  loc_B8F244: Ary1StVarCopy
  loc_B8F246: LitVarStr var_150, "PeriodoPresenta"
  loc_B8F24B: LitI4 1
  loc_B8F250: ILdRf var_244
  loc_B8F253: Ary1StVarCopy
  loc_B8F255: LitVarStr var_1E8, "ExpID"
  loc_B8F25A: LitI4 2
  loc_B8F25F: ILdRf var_244
  loc_B8F262: Ary1StVarCopy
  loc_B8F264: LitVarStr var_228, "IngresoCod"
  loc_B8F269: LitI4 3
  loc_B8F26E: ILdRf var_244
  loc_B8F271: Ary1StVarCopy
  loc_B8F273: LitVarStr var_254, "IngresoDet"
  loc_B8F278: LitI4 4
  loc_B8F27D: ILdRf var_244
  loc_B8F280: Ary1StVarCopy
  loc_B8F282: LitVarStr var_264, "SaldoIni"
  loc_B8F287: LitI4 5
  loc_B8F28C: ILdRf var_244
  loc_B8F28F: Ary1StVarCopy
  loc_B8F291: LitVarStr var_274, "TotalDeb"
  loc_B8F296: LitI4 6
  loc_B8F29B: ILdRf var_244
  loc_B8F29E: Ary1StVarCopy
  loc_B8F2A0: LitVarStr var_284, "TotalCre"
  loc_B8F2A5: LitI4 7
  loc_B8F2AA: ILdRf var_244
  loc_B8F2AD: Ary1StVarCopy
  loc_B8F2AF: LitVarStr var_294, "SaldoFin"
  loc_B8F2B4: LitI4 8
  loc_B8F2B9: ILdRf var_244
  loc_B8F2BC: Ary1StVarCopy
  loc_B8F2BE: FLdRfVar var_244
  loc_B8F2C1: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B8F2C6: FStStr var_88
  loc_B8F2C9: FLdRfVar var_244
  loc_B8F2CC: Erase
  loc_B8F2CD: FLdZeroAd var_88
  loc_B8F2D0: CVarStr var_9C
  loc_B8F2D3: PopAdLdVar
  loc_B8F2D4: FLdPr Me
  loc_B8F2D7: MemLdRfVar from_stack_1.global_76
  loc_B8F2DA: LdPrVar
  loc_B8F2DC: LateMemCall
  loc_B8F2E2: FFree1Var var_9C = ""
  loc_B8F2E5: LitI4 1
  loc_B8F2EA: FLdPr Me
  loc_B8F2ED: MemLdRfVar from_stack_1.global_104
  loc_B8F2F0: FLdPr Me
  loc_B8F2F3: MemLdStr global_100
  loc_B8F2F6: LitI2_Byte 1
  loc_B8F2F8: FnUBound
  loc_B8F2FA: ForI4 var_2AC
  loc_B8F300: FLdPr Me
  loc_B8F303: MemLdStr global_104
  loc_B8F306: FLdPr Me
  loc_B8F309: MemLdStr global_100
  loc_B8F30C: AryLock
  loc_B8F30F: Ary1LdRf
  loc_B8F310: FStR4 var_2B4
  loc_B8F313: FLdPr Me
  loc_B8F316: VCallAd Control_ID_DesdeMsk
  loc_B8F319: FStAdFunc var_100
  loc_B8F31C: FLdPr var_100
  loc_B8F31F: LateIdLdVar var_CC DispID_15 0
  loc_B8F326: CStrVarTmp
  loc_B8F327: CVarStr var_DC
  loc_B8F32A: FLdRfVar var_FC
  loc_B8F32D: ImpAdCallFPR4  = Month()
  loc_B8F332: LitI4 0
  loc_B8F337: LitI4 8
  loc_B8F33C: FLdRfVar var_244
  loc_B8F33F: Redim
  loc_B8F349: LitVarStr var_150, "|"
  loc_B8F34E: LitI4 0
  loc_B8F353: ILdRf var_244
  loc_B8F356: Ary1StVarCopy
  loc_B8F358: FLdPr Me
  loc_B8F35B: VCallAd Control_ID_DesdeMsk
  loc_B8F35E: FStAdFunc var_8C
  loc_B8F361: FLdPr var_8C
  loc_B8F364: LateIdLdVar var_9C DispID_15 0
  loc_B8F36B: CStrVarTmp
  loc_B8F36C: CVarStr var_AC
  loc_B8F36F: FLdRfVar var_BC
  loc_B8F372: ImpAdCallFPR4  = Year()
  loc_B8F377: FLdRfVar var_BC
  loc_B8F37A: LitI4 1
  loc_B8F37F: LitI4 1
  loc_B8F384: LitVarStr var_EC, "00"
  loc_B8F389: FStVarCopyObj var_110
  loc_B8F38C: FLdRfVar var_110
  loc_B8F38F: FLdRfVar var_FC
  loc_B8F392: FLdRfVar var_120
  loc_B8F395: ImpAdCallFPR4  = Format(, )
  loc_B8F39A: FLdRfVar var_120
  loc_B8F39D: ConcatVar var_130
  loc_B8F3A1: ParmAry1St
  loc_B8F3A7: FLdRfVar var_240
  loc_B8F3AA: CVarRef
  loc_B8F3AF: ParmAry1St
  loc_B8F3B5: FMemLdRf 110040
  loc_B8F3BA: CVarRef
  loc_B8F3BF: ParmAry1St
  loc_B8F3C5: FMemLdRf 110040
  loc_B8F3CA: CVarRef
  loc_B8F3CF: ParmAry1St
  loc_B8F3D5: FMemLdR4 var_2B4(8)
  loc_B8F3DA: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B8F3DF: CVarStr var_140
  loc_B8F3E2: ParmAry1St
  loc_B8F3E8: FMemLdR4 var_2B4(12)
  loc_B8F3ED: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B8F3F2: CVarStr var_160
  loc_B8F3F5: ParmAry1St
  loc_B8F3FB: FMemLdR4 var_2B4(16)
  loc_B8F400: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B8F405: CVarStr var_174
  loc_B8F408: ParmAry1St
  loc_B8F40E: FMemLdR4 var_2B4(20)
  loc_B8F413: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B8F418: CVarStr var_184
  loc_B8F41B: ParmAry1St
  loc_B8F421: FLdRfVar var_244
  loc_B8F424: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B8F429: FStStr var_88
  loc_B8F42C: FLdRfVar var_244
  loc_B8F42F: Erase
  loc_B8F430: FLdZeroAd var_88
  loc_B8F433: CVarStr var_194
  loc_B8F436: PopAdLdVar
  loc_B8F437: FLdPr Me
  loc_B8F43A: MemLdRfVar from_stack_1.global_76
  loc_B8F43D: LdPrVar
  loc_B8F43F: LateMemCall
  loc_B8F445: FFreeAd var_8C = ""
  loc_B8F44C: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_DC = "": var_FC = "": var_110 = "": var_BC = "": var_120 = ""
  loc_B8F461: LitI4 0
  loc_B8F466: FStR4 var_2B4
  loc_B8F469: AryUnlock
  loc_B8F46C: FLdPr Me
  loc_B8F46F: MemLdRfVar from_stack_1.global_104
  loc_B8F472: NextI4 var_2AC, loc_B8F300
  loc_B8F477: FLdPr Me
  loc_B8F47A: MemLdRfVar from_stack_1.global_76
  loc_B8F47D: LdPrVar
  loc_B8F47F: LateMemCall
  loc_B8F485: On Error GoTo 0
  loc_B8F488: ExitProcHresult
  loc_B8F489: LitVar_Missing var_CC
  loc_B8F48C: LitVar_Missing var_BC
  loc_B8F48F: LitVar_Missing var_AC
  loc_B8F492: LitI4 0
  loc_B8F497: LitStr "Error "
  loc_B8F49A: FLdRfVar var_2B8
  loc_B8F49D: ImpAdCallI2 Err 'rtcErrObj
  loc_B8F4A2: FStAdFunc var_8C
  loc_B8F4A5: FLdPr var_8C
  loc_B8F4A8:  = Err.Number
  loc_B8F4AD: ILdRf var_2B8
  loc_B8F4B0: CStrI4
  loc_B8F4B2: FStStrNoPop var_88
  loc_B8F4B5: ConcatStr
  loc_B8F4B6: FStStrNoPop var_2BC
  loc_B8F4B9: LitStr " ("
  loc_B8F4BC: ConcatStr
  loc_B8F4BD: FStStrNoPop var_2C4
  loc_B8F4C0: FLdRfVar var_2C0
  loc_B8F4C3: ImpAdCallI2 Err 'rtcErrObj
  loc_B8F4C8: FStAdFunc var_100
  loc_B8F4CB: FLdPr var_100
  loc_B8F4CE:  = Err.Description
  loc_B8F4D3: ILdRf var_2C0
  loc_B8F4D6: ConcatStr
  loc_B8F4D7: FStStrNoPop var_2C8
  loc_B8F4DA: LitStr ") in procedure GeneraTXT of Formulario rptA2988XIX"
  loc_B8F4DD: ConcatStr
  loc_B8F4DE: CVarStr var_9C
  loc_B8F4E1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B8F4E6: FFreeStr var_88 = "": var_2BC = "": var_2C4 = "": var_2C0 = ""
  loc_B8F4F3: FFreeAd var_8C = ""
  loc_B8F4FA: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B8F505: ExitProcHresult
  loc_B8F506: CBoolVarNull
End Sub

Public Sub GeneraXLS(arg_20) 'BA71FC
  'Data Table: 49DC8C
  loc_BA6BEC: ImpAdLdI4 MemVar_D93030
  loc_BA6BEF: FStStrCopy var_88
  loc_BA6BF2: LitI4 0
  loc_BA6BF7: LitStr "Excel.Application"
  loc_BA6BFA: FLdRfVar var_B4
  loc_BA6BFD: ImpAdCallFPR4  = CreateObject(, )
  loc_BA6C02: FLdRfVar var_B4
  loc_BA6C05: FLdRfVar var_98
  loc_BA6C08: SetVarVarFunc
  loc_BA6C0A: FLdRfVar var_98
  loc_BA6C0D: VarLateMemLdVar var_B4, .Workbooks
  loc_BA6C13: CastAdVar Me
  loc_BA6C17: FStAdFunc var_9C
  loc_BA6C1A: FFree1Var var_B4 = ""
  loc_BA6C1D: FLdRfVar var_E0
  loc_BA6C20: LitVarI2 var_DC, 1
  loc_BA6C25: PopAdLdVar
  loc_BA6C26: FLdRfVar var_CC
  loc_BA6C29: FLdRfVar var_C8
  loc_BA6C2C: LitI4 &H409
  loc_BA6C31: LitVar_Missing var_C4
  loc_BA6C34: PopAdLdVar
  loc_BA6C35: FLdPr var_9C
  loc_BA6C38:  = Forms
  loc_BA6C3D: FLdPr var_C8
  loc_BA6C40: Call 0.Method_arg_20C ()
  loc_BA6C45: FLdPr var_CC
  loc_BA6C48: Me.BackColor = from_stack_1
  loc_BA6C4D: ILdRf var_E0
  loc_BA6C50: CastAd
  loc_BA6C53: FStAdFunc var_A0
  loc_BA6C56: FFreeAd var_C8 = "": var_CC = ""
  loc_BA6C5F: LitVar_TRUE var_C4
  loc_BA6C62: PopAdLdVar
  loc_BA6C63: FLdRfVar var_98
  loc_BA6C66: VarLateMemSt .Visible
  loc_BA6C6A: LitVarI2 var_C4, 1
  loc_BA6C6F: PopAdLdVar
  loc_BA6C70: LitVarI2 var_F0, 1
  loc_BA6C75: PopAdLdVar
  loc_BA6C76: LitVarStr var_110, "Cod. Cuenta"
  loc_BA6C7B: PopAdLdVar
  loc_BA6C7C: FLdRfVar var_C8
  loc_BA6C7F: FLdPr var_A0
  loc_BA6C82:  = Me.FontUnderline
  loc_BA6C87: FLdPr var_C8
  loc_BA6C8A: LateIdCallSt
  loc_BA6C92: FFree1Ad var_C8
  loc_BA6C95: LitVarI2 var_C4, 1
  loc_BA6C9A: PopAdLdVar
  loc_BA6C9B: LitVarI2 var_F0, 2
  loc_BA6CA0: PopAdLdVar
  loc_BA6CA1: LitVarStr var_110, "Detalle de Cuenta"
  loc_BA6CA6: PopAdLdVar
  loc_BA6CA7: FLdRfVar var_C8
  loc_BA6CAA: FLdPr var_A0
  loc_BA6CAD:  = Me.FontUnderline
  loc_BA6CB2: FLdPr var_C8
  loc_BA6CB5: LateIdCallSt
  loc_BA6CBD: FFree1Ad var_C8
  loc_BA6CC0: LitVarI2 var_C4, 1
  loc_BA6CC5: PopAdLdVar
  loc_BA6CC6: LitVarI2 var_F0, 3
  loc_BA6CCB: PopAdLdVar
  loc_BA6CCC: LitVarStr var_110, "saldo Inicial"
  loc_BA6CD1: PopAdLdVar
  loc_BA6CD2: FLdRfVar var_C8
  loc_BA6CD5: FLdPr var_A0
  loc_BA6CD8:  = Me.FontUnderline
  loc_BA6CDD: FLdPr var_C8
  loc_BA6CE0: LateIdCallSt
  loc_BA6CE8: FFree1Ad var_C8
  loc_BA6CEB: LitVarI2 var_C4, 1
  loc_BA6CF0: PopAdLdVar
  loc_BA6CF1: LitVarI2 var_F0, 4
  loc_BA6CF6: PopAdLdVar
  loc_BA6CF7: LitVarStr var_110, "Total de Debitos"
  loc_BA6CFC: PopAdLdVar
  loc_BA6CFD: FLdRfVar var_C8
  loc_BA6D00: FLdPr var_A0
  loc_BA6D03:  = Me.FontUnderline
  loc_BA6D08: FLdPr var_C8
  loc_BA6D0B: LateIdCallSt
  loc_BA6D13: FFree1Ad var_C8
  loc_BA6D16: LitVarI2 var_C4, 1
  loc_BA6D1B: PopAdLdVar
  loc_BA6D1C: LitVarI2 var_F0, 5
  loc_BA6D21: PopAdLdVar
  loc_BA6D22: LitVarStr var_110, "Tota de Creditos"
  loc_BA6D27: PopAdLdVar
  loc_BA6D28: FLdRfVar var_C8
  loc_BA6D2B: FLdPr var_A0
  loc_BA6D2E:  = Me.FontUnderline
  loc_BA6D33: FLdPr var_C8
  loc_BA6D36: LateIdCallSt
  loc_BA6D3E: FFree1Ad var_C8
  loc_BA6D41: LitVarI2 var_C4, 1
  loc_BA6D46: PopAdLdVar
  loc_BA6D47: LitVarI2 var_F0, 6
  loc_BA6D4C: PopAdLdVar
  loc_BA6D4D: LitVarStr var_110, "Saldo Final"
  loc_BA6D52: PopAdLdVar
  loc_BA6D53: FLdRfVar var_C8
  loc_BA6D56: FLdPr var_A0
  loc_BA6D59:  = Me.FontUnderline
  loc_BA6D5E: FLdPr var_C8
  loc_BA6D61: LateIdCallSt
  loc_BA6D69: FFree1Ad var_C8
  loc_BA6D6C: LitI2_Byte 1
  loc_BA6D6E: FStI2 var_A2
  loc_BA6D71: LitI4 1
  loc_BA6D76: FLdPr Me
  loc_BA6D79: MemLdRfVar from_stack_1.global_104
  loc_BA6D7C: FLdPr Me
  loc_BA6D7F: MemLdStr global_100
  loc_BA6D82: LitI2_Byte 1
  loc_BA6D84: FnUBound
  loc_BA6D86: ForI4 var_128
  loc_BA6D8C: FLdPr Me
  loc_BA6D8F: MemLdStr global_104
  loc_BA6D92: FLdPr Me
  loc_BA6D95: MemLdStr global_100
  loc_BA6D98: AryLock
  loc_BA6D9B: Ary1LdRf
  loc_BA6D9C: FStR4 var_130
  loc_BA6D9F: FLdI2 var_A2
  loc_BA6DA2: CI4UI1
  loc_BA6DA3: FLdPr Me
  loc_BA6DA6: MemLdStr global_104
  loc_BA6DA9: AddI4
  loc_BA6DAA: CVarI4
  loc_BA6DAE: PopAdLdVar
  loc_BA6DAF: LitVarI2 var_F0, 1
  loc_BA6DB4: PopAdLdVar
  loc_BA6DB5: FMemLdR4 var_130(0)
  loc_BA6DBA: CVarStr var_110
  loc_BA6DBD: PopAdLdVar
  loc_BA6DBE: FLdRfVar var_C8
  loc_BA6DC1: FLdPr var_A0
  loc_BA6DC4:  = Me.FontUnderline
  loc_BA6DC9: FLdPr var_C8
  loc_BA6DCC: LateIdCallSt
  loc_BA6DD4: FFree1Ad var_C8
  loc_BA6DD7: FLdI2 var_A2
  loc_BA6DDA: CI4UI1
  loc_BA6DDB: FLdPr Me
  loc_BA6DDE: MemLdStr global_104
  loc_BA6DE1: AddI4
  loc_BA6DE2: CVarI4
  loc_BA6DE6: PopAdLdVar
  loc_BA6DE7: LitVarI2 var_F0, 2
  loc_BA6DEC: PopAdLdVar
  loc_BA6DED: FMemLdR4 var_130(4)
  loc_BA6DF2: CVarStr var_110
  loc_BA6DF5: PopAdLdVar
  loc_BA6DF6: FLdRfVar var_C8
  loc_BA6DF9: FLdPr var_A0
  loc_BA6DFC:  = Me.FontUnderline
  loc_BA6E01: FLdPr var_C8
  loc_BA6E04: LateIdCallSt
  loc_BA6E0C: FFree1Ad var_C8
  loc_BA6E0F: FLdI2 var_A2
  loc_BA6E12: CI4UI1
  loc_BA6E13: FLdPr Me
  loc_BA6E16: MemLdStr global_104
  loc_BA6E19: AddI4
  loc_BA6E1A: CVarI4
  loc_BA6E1E: PopAdLdVar
  loc_BA6E1F: LitVarI2 var_F0, 3
  loc_BA6E24: PopAdLdVar
  loc_BA6E25: FMemLdR4 var_130(8)
  loc_BA6E2A: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BA6E2F: CVarR8
  loc_BA6E33: PopAdLdVar
  loc_BA6E34: FLdRfVar var_C8
  loc_BA6E37: FLdPr var_A0
  loc_BA6E3A:  = Me.FontUnderline
  loc_BA6E3F: FLdPr var_C8
  loc_BA6E42: LateIdCallSt
  loc_BA6E4A: FFree1Ad var_C8
  loc_BA6E4D: FLdI2 var_A2
  loc_BA6E50: CI4UI1
  loc_BA6E51: FLdPr Me
  loc_BA6E54: MemLdStr global_104
  loc_BA6E57: AddI4
  loc_BA6E58: CVarI4
  loc_BA6E5C: PopAdLdVar
  loc_BA6E5D: LitVarI2 var_F0, 4
  loc_BA6E62: PopAdLdVar
  loc_BA6E63: FMemLdR4 var_130(12)
  loc_BA6E68: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BA6E6D: CVarR8
  loc_BA6E71: PopAdLdVar
  loc_BA6E72: FLdRfVar var_C8
  loc_BA6E75: FLdPr var_A0
  loc_BA6E78:  = Me.FontUnderline
  loc_BA6E7D: FLdPr var_C8
  loc_BA6E80: LateIdCallSt
  loc_BA6E88: FFree1Ad var_C8
  loc_BA6E8B: FLdI2 var_A2
  loc_BA6E8E: CI4UI1
  loc_BA6E8F: FLdPr Me
  loc_BA6E92: MemLdStr global_104
  loc_BA6E95: AddI4
  loc_BA6E96: CVarI4
  loc_BA6E9A: PopAdLdVar
  loc_BA6E9B: LitVarI2 var_F0, 5
  loc_BA6EA0: PopAdLdVar
  loc_BA6EA1: FMemLdR4 var_130(16)
  loc_BA6EA6: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BA6EAB: CVarR8
  loc_BA6EAF: PopAdLdVar
  loc_BA6EB0: FLdRfVar var_C8
  loc_BA6EB3: FLdPr var_A0
  loc_BA6EB6:  = Me.FontUnderline
  loc_BA6EBB: FLdPr var_C8
  loc_BA6EBE: LateIdCallSt
  loc_BA6EC6: FFree1Ad var_C8
  loc_BA6EC9: FLdI2 var_A2
  loc_BA6ECC: CI4UI1
  loc_BA6ECD: FLdPr Me
  loc_BA6ED0: MemLdStr global_104
  loc_BA6ED3: AddI4
  loc_BA6ED4: CVarI4
  loc_BA6ED8: PopAdLdVar
  loc_BA6ED9: LitVarI2 var_F0, 6
  loc_BA6EDE: PopAdLdVar
  loc_BA6EDF: FMemLdR4 var_130(20)
  loc_BA6EE4: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BA6EE9: CVarR8
  loc_BA6EED: PopAdLdVar
  loc_BA6EEE: FLdRfVar var_C8
  loc_BA6EF1: FLdPr var_A0
  loc_BA6EF4:  = Me.FontUnderline
  loc_BA6EF9: FLdPr var_C8
  loc_BA6EFC: LateIdCallSt
  loc_BA6F04: FFree1Ad var_C8
  loc_BA6F07: LitI4 0
  loc_BA6F0C: FStR4 var_130
  loc_BA6F0F: AryUnlock
  loc_BA6F12: FLdPr Me
  loc_BA6F15: MemLdRfVar from_stack_1.global_104
  loc_BA6F18: NextI4 var_128, loc_BA6D8C
  loc_BA6F1D: FLdI2 var_A2
  loc_BA6F20: CI4UI1
  loc_BA6F21: FLdPr Me
  loc_BA6F24: MemLdStr global_104
  loc_BA6F27: AddI4
  loc_BA6F28: CVarI4
  loc_BA6F2C: PopAdLdVar
  loc_BA6F2D: LitVarI2 var_F0, 2
  loc_BA6F32: PopAdLdVar
  loc_BA6F33: LitVarStr var_110, "TOTALES"
  loc_BA6F38: PopAdLdVar
  loc_BA6F39: FLdRfVar var_C8
  loc_BA6F3C: FLdPr var_A0
  loc_BA6F3F:  = Me.FontUnderline
  loc_BA6F44: FLdPr var_C8
  loc_BA6F47: LateIdCallSt
  loc_BA6F4F: FFree1Ad var_C8
  loc_BA6F52: FLdI2 var_A2
  loc_BA6F55: CI4UI1
  loc_BA6F56: FLdPr Me
  loc_BA6F59: MemLdStr global_104
  loc_BA6F5C: AddI4
  loc_BA6F5D: CVarI4
  loc_BA6F61: PopAdLdVar
  loc_BA6F62: LitVarI2 var_F0, 3
  loc_BA6F67: PopAdLdVar
  loc_BA6F68: LitStr "=SUM(R[-"
  loc_BA6F6B: FLdPr Me
  loc_BA6F6E: MemLdStr global_100
  loc_BA6F71: LitI2_Byte 1
  loc_BA6F73: FnUBound
  loc_BA6F75: CStrI4
  loc_BA6F77: FStStrNoPop var_134
  loc_BA6F7A: ConcatStr
  loc_BA6F7B: FStStrNoPop var_138
  loc_BA6F7E: LitStr "]C:R[-1]C)"
  loc_BA6F81: ConcatStr
  loc_BA6F82: CVarStr var_B4
  loc_BA6F85: PopAdLdVar
  loc_BA6F86: FLdRfVar var_C8
  loc_BA6F89: FLdPr var_A0
  loc_BA6F8C:  = Me.FontUnderline
  loc_BA6F91: FLdPr var_C8
  loc_BA6F94: LateIdCallSt
  loc_BA6F9C: FFreeStr var_134 = ""
  loc_BA6FA3: FFree1Ad var_C8
  loc_BA6FA6: FFree1Var var_B4 = ""
  loc_BA6FA9: FLdI2 var_A2
  loc_BA6FAC: CI4UI1
  loc_BA6FAD: FLdPr Me
  loc_BA6FB0: MemLdStr global_104
  loc_BA6FB3: AddI4
  loc_BA6FB4: CVarI4
  loc_BA6FB8: PopAdLdVar
  loc_BA6FB9: LitVarI2 var_F0, 4
  loc_BA6FBE: PopAdLdVar
  loc_BA6FBF: LitStr "=SUM(R[-"
  loc_BA6FC2: FLdPr Me
  loc_BA6FC5: MemLdStr global_100
  loc_BA6FC8: LitI2_Byte 1
  loc_BA6FCA: FnUBound
  loc_BA6FCC: CStrI4
  loc_BA6FCE: FStStrNoPop var_134
  loc_BA6FD1: ConcatStr
  loc_BA6FD2: FStStrNoPop var_138
  loc_BA6FD5: LitStr "]C:R[-1]C)"
  loc_BA6FD8: ConcatStr
  loc_BA6FD9: CVarStr var_B4
  loc_BA6FDC: PopAdLdVar
  loc_BA6FDD: FLdRfVar var_C8
  loc_BA6FE0: FLdPr var_A0
  loc_BA6FE3:  = Me.FontUnderline
  loc_BA6FE8: FLdPr var_C8
  loc_BA6FEB: LateIdCallSt
  loc_BA6FF3: FFreeStr var_134 = ""
  loc_BA6FFA: FFree1Ad var_C8
  loc_BA6FFD: FFree1Var var_B4 = ""
  loc_BA7000: FLdI2 var_A2
  loc_BA7003: CI4UI1
  loc_BA7004: FLdPr Me
  loc_BA7007: MemLdStr global_104
  loc_BA700A: AddI4
  loc_BA700B: CVarI4
  loc_BA700F: PopAdLdVar
  loc_BA7010: LitVarI2 var_F0, 5
  loc_BA7015: PopAdLdVar
  loc_BA7016: LitStr "=SUM(R[-"
  loc_BA7019: FLdPr Me
  loc_BA701C: MemLdStr global_100
  loc_BA701F: LitI2_Byte 1
  loc_BA7021: FnUBound
  loc_BA7023: CStrI4
  loc_BA7025: FStStrNoPop var_134
  loc_BA7028: ConcatStr
  loc_BA7029: FStStrNoPop var_138
  loc_BA702C: LitStr "]C:R[-1]C)"
  loc_BA702F: ConcatStr
  loc_BA7030: CVarStr var_B4
  loc_BA7033: PopAdLdVar
  loc_BA7034: FLdRfVar var_C8
  loc_BA7037: FLdPr var_A0
  loc_BA703A:  = Me.FontUnderline
  loc_BA703F: FLdPr var_C8
  loc_BA7042: LateIdCallSt
  loc_BA704A: FFreeStr var_134 = ""
  loc_BA7051: FFree1Ad var_C8
  loc_BA7054: FFree1Var var_B4 = ""
  loc_BA7057: FLdI2 var_A2
  loc_BA705A: CI4UI1
  loc_BA705B: FLdPr Me
  loc_BA705E: MemLdStr global_104
  loc_BA7061: AddI4
  loc_BA7062: CVarI4
  loc_BA7066: PopAdLdVar
  loc_BA7067: LitVarI2 var_F0, 6
  loc_BA706C: PopAdLdVar
  loc_BA706D: LitStr "=SUM(R[-"
  loc_BA7070: FLdPr Me
  loc_BA7073: MemLdStr global_100
  loc_BA7076: LitI2_Byte 1
  loc_BA7078: FnUBound
  loc_BA707A: CStrI4
  loc_BA707C: FStStrNoPop var_134
  loc_BA707F: ConcatStr
  loc_BA7080: FStStrNoPop var_138
  loc_BA7083: LitStr "]C:R[-1]C)"
  loc_BA7086: ConcatStr
  loc_BA7087: CVarStr var_B4
  loc_BA708A: PopAdLdVar
  loc_BA708B: FLdRfVar var_C8
  loc_BA708E: FLdPr var_A0
  loc_BA7091:  = Me.FontUnderline
  loc_BA7096: FLdPr var_C8
  loc_BA7099: LateIdCallSt
  loc_BA70A1: FFreeStr var_134 = ""
  loc_BA70A8: FFree1Ad var_C8
  loc_BA70AB: FFree1Var var_B4 = ""
  loc_BA70AE: LitVar_TRUE var_F0
  loc_BA70B1: PopAdLdVar
  loc_BA70B2: FLdRfVar var_C8
  loc_BA70B5: LitVar_Missing var_DC
  loc_BA70B8: PopAdLdVar
  loc_BA70B9: LitVarStr var_C4, "A1:F1"
  loc_BA70BE: PopAdLdVar
  loc_BA70BF: FLdPr var_A0
  loc_BA70C2:  = Me.Image
  loc_BA70C7: FLdPr var_C8
  loc_BA70CA: LateIdLdVar var_B4 DispID_146 0
  loc_BA70D1: CastAdVar Me
  loc_BA70D5: FStAdFunc var_CC
  loc_BA70D8: FLdPr var_CC
  loc_BA70DB: LateIdSt
  loc_BA70E0: FFreeAd var_C8 = ""
  loc_BA70E7: FFree1Var var_B4 = ""
  loc_BA70EA: LitVar_TRUE var_DC
  loc_BA70ED: PopAdLdVar
  loc_BA70EE: FLdRfVar var_C8
  loc_BA70F1: LitVar_Missing var_C4
  loc_BA70F4: PopAdLdVar
  loc_BA70F5: LitStr "A"
  loc_BA70F8: FLdPr Me
  loc_BA70FB: MemLdStr global_104
  loc_BA70FE: LitI4 1
  loc_BA7103: AddI4
  loc_BA7104: CStrI4
  loc_BA7106: FStStrNoPop var_134
  loc_BA7109: ConcatStr
  loc_BA710A: FStStrNoPop var_138
  loc_BA710D: LitStr ":F"
  loc_BA7110: ConcatStr
  loc_BA7111: FStStrNoPop var_13C
  loc_BA7114: FLdPr Me
  loc_BA7117: MemLdStr global_104
  loc_BA711A: LitI4 1
  loc_BA711F: AddI4
  loc_BA7120: CStrI4
  loc_BA7122: FStStrNoPop var_140
  loc_BA7125: ConcatStr
  loc_BA7126: CVarStr var_B4
  loc_BA7129: PopAdLdVar
  loc_BA712A: FLdPr var_A0
  loc_BA712D:  = Me.Image
  loc_BA7132: FLdPr var_C8
  loc_BA7135: LateIdLdVar var_150 DispID_146 0
  loc_BA713C: CastAdVar Me
  loc_BA7140: FStAdFunc var_CC
  loc_BA7143: FLdPr var_CC
  loc_BA7146: LateIdSt
  loc_BA714B: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BA7156: FFreeAd var_C8 = ""
  loc_BA715D: FFreeVar var_B4 = ""
  loc_BA7164: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_BA7169: PopAdLdVar
  loc_BA716A: LitVarStr var_C4, "C:F"
  loc_BA716F: PopAdLdVar
  loc_BA7170: FLdRfVar var_C8
  loc_BA7173: FLdPr var_A0
  loc_BA7176:  = Me.CurrentY
  loc_BA717B: FLdPr var_C8
  loc_BA717E: LateIdCallLdVar
  loc_BA7188: VarLateMemSt .NumberFormat
  loc_BA718C: FFree1Ad var_C8
  loc_BA718F: FFree1Var var_B4 = ""
  loc_BA7192: LitVarStr var_C4, "A:F"
  loc_BA7197: PopAdLdVar
  loc_BA7198: FLdRfVar var_C8
  loc_BA719B: FLdPr var_A0
  loc_BA719E:  = Me.CurrentY
  loc_BA71A3: FLdPr var_C8
  loc_BA71A6: LateIdCallLdVar
  loc_BA71B0: LdPrVar
  loc_BA71B2: LateMemCall
  loc_BA71B8: FFree1Ad var_C8
  loc_BA71BB: FFree1Var var_150 = ""
  loc_BA71BE: LitVar_Missing var_180
  loc_BA71C1: PopAdLdVar
  loc_BA71C2: LitVar_Missing var_170
  loc_BA71C5: PopAdLdVar
  loc_BA71C6: LitVar_Missing var_160
  loc_BA71C9: PopAdLdVar
  loc_BA71CA: LitVar_Missing var_120
  loc_BA71CD: PopAdLdVar
  loc_BA71CE: LitVar_Missing var_110
  loc_BA71D1: PopAdLdVar
  loc_BA71D2: LitVar_Missing var_100
  loc_BA71D5: PopAdLdVar
  loc_BA71D6: LitVar_Missing var_F0
  loc_BA71D9: PopAdLdVar
  loc_BA71DA: LitVar_Missing var_DC
  loc_BA71DD: PopAdLdVar
  loc_BA71DE: LitVar_Missing var_C4
  loc_BA71E1: PopAdLdVar
  loc_BA71E2: ILdRf var_88
  loc_BA71E5: FLdPr var_A0
  loc_BA71E8: Me.MouseIcon = from_stack_1
  loc_BA71ED: LitI4 &H409
  loc_BA71F2: FLdPr var_9C
  loc_BA71FA: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2402C
  'Data Table: 49DC8C
  loc_B23D6C: FLdRfVar var_88
  loc_B23D6F: LitI2_Byte 0
  loc_B23D71: LitI2_Byte &HFF
  loc_B23D73: ImpAdLdI4 MemVar_D93C84
  loc_B23D76: FLdPr Me
  loc_B23D79: MemLdRfVar from_stack_1.global_56
  loc_B23D7C: NewIfNullPr IFileSystem3
  loc_B23D7F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B23D84: ILdRf var_88
  loc_B23D87: FLdPr Me
  loc_B23D8A: MemStVarAd
  loc_B23D8E: FFree1Ad var_88
  loc_B23D91: LitI2_Byte &HFF
  loc_B23D93: ImpAdStI2 MemVar_D93C8A
  loc_B23D96: Call Proc_286_23_BBCB10()
  loc_B23D9B: LitI4 1
  loc_B23DA0: FLdPr Me
  loc_B23DA3: MemLdRfVar from_stack_1.global_104
  loc_B23DA6: FLdPr Me
  loc_B23DA9: MemLdStr global_100
  loc_B23DAC: LitI2_Byte 1
  loc_B23DAE: FnUBound
  loc_B23DB0: ForI4 var_90
  loc_B23DB6: FLdPr Me
  loc_B23DB9: MemLdStr global_104
  loc_B23DBC: FLdPr Me
  loc_B23DBF: MemLdStr global_100
  loc_B23DC2: AryLock
  loc_B23DC5: Ary1LdRf
  loc_B23DC6: FStR4 var_98
  loc_B23DC9: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B23DCE: PopAdLdVar
  loc_B23DCF: FLdPr Me
  loc_B23DD2: MemLdRfVar from_stack_1.global_60
  loc_B23DD5: LdPrVar
  loc_B23DD7: LateMemCall
  loc_B23DDD: LitStr vbNullString
  loc_B23DE0: LitI2_Byte 0
  loc_B23DE2: LitI2_Byte 0
  loc_B23DE4: LitI2_Byte 0
  loc_B23DE6: LitStr "right"
  loc_B23DE9: FMemLdR4 var_98(0)
  loc_B23DEE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23DF3: CVarStr var_C8
  loc_B23DF6: PopAdLdVar
  loc_B23DF7: FLdPr Me
  loc_B23DFA: MemLdRfVar from_stack_1.global_60
  loc_B23DFD: LdPrVar
  loc_B23DFF: LateMemCall
  loc_B23E05: FFree1Var var_C8 = ""
  loc_B23E08: LitStr vbNullString
  loc_B23E0B: LitI2_Byte 0
  loc_B23E0D: LitI2_Byte 0
  loc_B23E0F: LitI2_Byte 0
  loc_B23E11: LitStr "left"
  loc_B23E14: FMemLdR4 var_98(4)
  loc_B23E19: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23E1E: CVarStr var_C8
  loc_B23E21: PopAdLdVar
  loc_B23E22: FLdPr Me
  loc_B23E25: MemLdRfVar from_stack_1.global_60
  loc_B23E28: LdPrVar
  loc_B23E2A: LateMemCall
  loc_B23E30: FFree1Var var_C8 = ""
  loc_B23E33: LitStr vbNullString
  loc_B23E36: LitI2_Byte 0
  loc_B23E38: LitI2_Byte 0
  loc_B23E3A: LitI2_Byte 0
  loc_B23E3C: LitStr "right"
  loc_B23E3F: FMemLdR4 var_98(8)
  loc_B23E44: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23E49: CVarStr var_C8
  loc_B23E4C: PopAdLdVar
  loc_B23E4D: FLdPr Me
  loc_B23E50: MemLdRfVar from_stack_1.global_60
  loc_B23E53: LdPrVar
  loc_B23E55: LateMemCall
  loc_B23E5B: FFree1Var var_C8 = ""
  loc_B23E5E: LitStr vbNullString
  loc_B23E61: LitI2_Byte 0
  loc_B23E63: LitI2_Byte 0
  loc_B23E65: LitI2_Byte 0
  loc_B23E67: LitStr "right"
  loc_B23E6A: FMemLdR4 var_98(12)
  loc_B23E6F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23E74: CVarStr var_C8
  loc_B23E77: PopAdLdVar
  loc_B23E78: FLdPr Me
  loc_B23E7B: MemLdRfVar from_stack_1.global_60
  loc_B23E7E: LdPrVar
  loc_B23E80: LateMemCall
  loc_B23E86: FFree1Var var_C8 = ""
  loc_B23E89: LitStr vbNullString
  loc_B23E8C: LitI2_Byte 0
  loc_B23E8E: LitI2_Byte 0
  loc_B23E90: LitI2_Byte 0
  loc_B23E92: LitStr "right"
  loc_B23E95: FMemLdR4 var_98(16)
  loc_B23E9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23E9F: CVarStr var_C8
  loc_B23EA2: PopAdLdVar
  loc_B23EA3: FLdPr Me
  loc_B23EA6: MemLdRfVar from_stack_1.global_60
  loc_B23EA9: LdPrVar
  loc_B23EAB: LateMemCall
  loc_B23EB1: FFree1Var var_C8 = ""
  loc_B23EB4: LitStr vbNullString
  loc_B23EB7: LitI2_Byte 0
  loc_B23EB9: LitI2_Byte 0
  loc_B23EBB: LitI2_Byte 0
  loc_B23EBD: LitStr "right"
  loc_B23EC0: FMemLdR4 var_98(20)
  loc_B23EC5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23ECA: CVarStr var_C8
  loc_B23ECD: PopAdLdVar
  loc_B23ECE: FLdPr Me
  loc_B23ED1: MemLdRfVar from_stack_1.global_60
  loc_B23ED4: LdPrVar
  loc_B23ED6: LateMemCall
  loc_B23EDC: FFree1Var var_C8 = ""
  loc_B23EDF: LitVarStr var_A8, "     </tr>"
  loc_B23EE4: PopAdLdVar
  loc_B23EE5: FLdPr Me
  loc_B23EE8: MemLdRfVar from_stack_1.global_60
  loc_B23EEB: LdPrVar
  loc_B23EED: LateMemCall
  loc_B23EF3: LitI4 0
  loc_B23EF8: FStR4 var_98
  loc_B23EFB: AryUnlock
  loc_B23EFE: FLdPr Me
  loc_B23F01: MemLdRfVar from_stack_1.global_104
  loc_B23F04: NextI4 var_90, loc_B23DB6
  loc_B23F09: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B23F0E: PopAdLdVar
  loc_B23F0F: FLdPr Me
  loc_B23F12: MemLdRfVar from_stack_1.global_60
  loc_B23F15: LdPrVar
  loc_B23F17: LateMemCall
  loc_B23F1D: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B23F22: PopAdLdVar
  loc_B23F23: FLdPr Me
  loc_B23F26: MemLdRfVar from_stack_1.global_60
  loc_B23F29: LdPrVar
  loc_B23F2B: LateMemCall
  loc_B23F31: LitI4 1
  loc_B23F36: FLdPr Me
  loc_B23F39: MemLdStr global_108
  loc_B23F3C: AryLock
  loc_B23F3F: Ary1LdRf
  loc_B23F40: FStR4 var_D0
  loc_B23F43: LitStr vbNullString
  loc_B23F46: LitI2_Byte 0
  loc_B23F48: LitI2_Byte 0
  loc_B23F4A: LitI2_Byte 0
  loc_B23F4C: LitStr "right"
  loc_B23F4F: FMemLdR4 var_D0(8)
  loc_B23F54: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23F59: CVarStr var_C8
  loc_B23F5C: PopAdLdVar
  loc_B23F5D: FLdPr Me
  loc_B23F60: MemLdRfVar from_stack_1.global_60
  loc_B23F63: LdPrVar
  loc_B23F65: LateMemCall
  loc_B23F6B: FFree1Var var_C8 = ""
  loc_B23F6E: LitStr vbNullString
  loc_B23F71: LitI2_Byte 0
  loc_B23F73: LitI2_Byte 0
  loc_B23F75: LitI2_Byte 0
  loc_B23F77: LitStr "right"
  loc_B23F7A: FMemLdR4 var_D0(12)
  loc_B23F7F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23F84: CVarStr var_C8
  loc_B23F87: PopAdLdVar
  loc_B23F88: FLdPr Me
  loc_B23F8B: MemLdRfVar from_stack_1.global_60
  loc_B23F8E: LdPrVar
  loc_B23F90: LateMemCall
  loc_B23F96: FFree1Var var_C8 = ""
  loc_B23F99: LitStr vbNullString
  loc_B23F9C: LitI2_Byte 0
  loc_B23F9E: LitI2_Byte 0
  loc_B23FA0: LitI2_Byte 0
  loc_B23FA2: LitStr "right"
  loc_B23FA5: FMemLdR4 var_D0(16)
  loc_B23FAA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23FAF: CVarStr var_C8
  loc_B23FB2: PopAdLdVar
  loc_B23FB3: FLdPr Me
  loc_B23FB6: MemLdRfVar from_stack_1.global_60
  loc_B23FB9: LdPrVar
  loc_B23FBB: LateMemCall
  loc_B23FC1: FFree1Var var_C8 = ""
  loc_B23FC4: LitStr vbNullString
  loc_B23FC7: LitI2_Byte 0
  loc_B23FC9: LitI2_Byte 0
  loc_B23FCB: LitI2_Byte 0
  loc_B23FCD: LitStr "right"
  loc_B23FD0: FMemLdR4 var_D0(20)
  loc_B23FD5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23FDA: CVarStr var_C8
  loc_B23FDD: PopAdLdVar
  loc_B23FDE: FLdPr Me
  loc_B23FE1: MemLdRfVar from_stack_1.global_60
  loc_B23FE4: LdPrVar
  loc_B23FE6: LateMemCall
  loc_B23FEC: FFree1Var var_C8 = ""
  loc_B23FEF: LitI4 0
  loc_B23FF4: FStR4 var_D0
  loc_B23FF7: AryUnlock
  loc_B23FFA: LitVarStr var_A8, "     </tr>"
  loc_B23FFF: PopAdLdVar
  loc_B24000: FLdPr Me
  loc_B24003: MemLdRfVar from_stack_1.global_60
  loc_B24006: LdPrVar
  loc_B24008: LateMemCall
  loc_B2400E: Call Proc_286_24_ADFFA0()
  loc_B24013: FLdPr Me
  loc_B24016: MemLdRfVar from_stack_1.global_60
  loc_B24019: LdPrVar
  loc_B2401B: LateMemCall
  loc_B24021: LitStr vbNullString
  loc_B24024: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B24029: ExitProcHresult
  loc_B2402A: AddI2
End Sub

Private Function Proc_286_23_BBCB10() 'BBCB10
  'Data Table: 49DC8C
  loc_BBC46C: LitVarStr var_94, "<html>"
  loc_BBC471: PopAdLdVar
  loc_BBC472: FLdPr Me
  loc_BBC475: MemLdRfVar from_stack_1.global_60
  loc_BBC478: LdPrVar
  loc_BBC47A: LateMemCall
  loc_BBC480: LitVarStr var_94, "<head>"
  loc_BBC485: PopAdLdVar
  loc_BBC486: FLdPr Me
  loc_BBC489: MemLdRfVar from_stack_1.global_60
  loc_BBC48C: LdPrVar
  loc_BBC48E: LateMemCall
  loc_BBC494: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBC499: PopAdLdVar
  loc_BBC49A: FLdPr Me
  loc_BBC49D: MemLdRfVar from_stack_1.global_60
  loc_BBC4A0: LdPrVar
  loc_BBC4A2: LateMemCall
  loc_BBC4A8: LitStr "<title>"
  loc_BBC4AB: FLdRfVar var_A8
  loc_BBC4AE: FLdPr Me
  loc_BBC4B1:  = Me.Caption
  loc_BBC4B6: ILdRf var_A8
  loc_BBC4B9: ConcatStr
  loc_BBC4BA: FStStrNoPop var_AC
  loc_BBC4BD: LitStr "</title>"
  loc_BBC4C0: ConcatStr
  loc_BBC4C1: CVarStr var_BC
  loc_BBC4C4: PopAdLdVar
  loc_BBC4C5: FLdPr Me
  loc_BBC4C8: MemLdRfVar from_stack_1.global_60
  loc_BBC4CB: LdPrVar
  loc_BBC4CD: LateMemCall
  loc_BBC4D3: FFreeStr var_A8 = ""
  loc_BBC4DA: FFree1Var var_BC = ""
  loc_BBC4DD: LitVarStr var_94, "<style type=""text/css"">"
  loc_BBC4E2: PopAdLdVar
  loc_BBC4E3: FLdPr Me
  loc_BBC4E6: MemLdRfVar from_stack_1.global_60
  loc_BBC4E9: LdPrVar
  loc_BBC4EB: LateMemCall
  loc_BBC4F1: LitVarStr var_94, ".Titulo1 {"
  loc_BBC4F6: PopAdLdVar
  loc_BBC4F7: FLdPr Me
  loc_BBC4FA: MemLdRfVar from_stack_1.global_60
  loc_BBC4FD: LdPrVar
  loc_BBC4FF: LateMemCall
  loc_BBC505: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBC50A: PopAdLdVar
  loc_BBC50B: FLdPr Me
  loc_BBC50E: MemLdRfVar from_stack_1.global_60
  loc_BBC511: LdPrVar
  loc_BBC513: LateMemCall
  loc_BBC519: LitVarStr var_94, " font-size: 18px;"
  loc_BBC51E: PopAdLdVar
  loc_BBC51F: FLdPr Me
  loc_BBC522: MemLdRfVar from_stack_1.global_60
  loc_BBC525: LdPrVar
  loc_BBC527: LateMemCall
  loc_BBC52D: LitVarStr var_94, " font-weight: bold;"
  loc_BBC532: PopAdLdVar
  loc_BBC533: FLdPr Me
  loc_BBC536: MemLdRfVar from_stack_1.global_60
  loc_BBC539: LdPrVar
  loc_BBC53B: LateMemCall
  loc_BBC541: LitVarStr var_94, "}"
  loc_BBC546: PopAdLdVar
  loc_BBC547: FLdPr Me
  loc_BBC54A: MemLdRfVar from_stack_1.global_60
  loc_BBC54D: LdPrVar
  loc_BBC54F: LateMemCall
  loc_BBC555: LitVarStr var_94, ".Titulo2 {"
  loc_BBC55A: PopAdLdVar
  loc_BBC55B: FLdPr Me
  loc_BBC55E: MemLdRfVar from_stack_1.global_60
  loc_BBC561: LdPrVar
  loc_BBC563: LateMemCall
  loc_BBC569: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBC56E: PopAdLdVar
  loc_BBC56F: FLdPr Me
  loc_BBC572: MemLdRfVar from_stack_1.global_60
  loc_BBC575: LdPrVar
  loc_BBC577: LateMemCall
  loc_BBC57D: LitVarStr var_94, " font-size: 14px;"
  loc_BBC582: PopAdLdVar
  loc_BBC583: FLdPr Me
  loc_BBC586: MemLdRfVar from_stack_1.global_60
  loc_BBC589: LdPrVar
  loc_BBC58B: LateMemCall
  loc_BBC591: LitVarStr var_94, " font-weight: bold;"
  loc_BBC596: PopAdLdVar
  loc_BBC597: FLdPr Me
  loc_BBC59A: MemLdRfVar from_stack_1.global_60
  loc_BBC59D: LdPrVar
  loc_BBC59F: LateMemCall
  loc_BBC5A5: LitVarStr var_94, "}"
  loc_BBC5AA: PopAdLdVar
  loc_BBC5AB: FLdPr Me
  loc_BBC5AE: MemLdRfVar from_stack_1.global_60
  loc_BBC5B1: LdPrVar
  loc_BBC5B3: LateMemCall
  loc_BBC5B9: LitVarStr var_94, ".Normal {"
  loc_BBC5BE: PopAdLdVar
  loc_BBC5BF: FLdPr Me
  loc_BBC5C2: MemLdRfVar from_stack_1.global_60
  loc_BBC5C5: LdPrVar
  loc_BBC5C7: LateMemCall
  loc_BBC5CD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBC5D2: PopAdLdVar
  loc_BBC5D3: FLdPr Me
  loc_BBC5D6: MemLdRfVar from_stack_1.global_60
  loc_BBC5D9: LdPrVar
  loc_BBC5DB: LateMemCall
  loc_BBC5E1: LitVarStr var_94, " font-size: 12px;"
  loc_BBC5E6: PopAdLdVar
  loc_BBC5E7: FLdPr Me
  loc_BBC5EA: MemLdRfVar from_stack_1.global_60
  loc_BBC5ED: LdPrVar
  loc_BBC5EF: LateMemCall
  loc_BBC5F5: LitVarStr var_94, " font-style: normal;"
  loc_BBC5FA: PopAdLdVar
  loc_BBC5FB: FLdPr Me
  loc_BBC5FE: MemLdRfVar from_stack_1.global_60
  loc_BBC601: LdPrVar
  loc_BBC603: LateMemCall
  loc_BBC609: LitVarStr var_94, " font-weight: normal;"
  loc_BBC60E: PopAdLdVar
  loc_BBC60F: FLdPr Me
  loc_BBC612: MemLdRfVar from_stack_1.global_60
  loc_BBC615: LdPrVar
  loc_BBC617: LateMemCall
  loc_BBC61D: LitVarStr var_94, " font-variant: normal;"
  loc_BBC622: PopAdLdVar
  loc_BBC623: FLdPr Me
  loc_BBC626: MemLdRfVar from_stack_1.global_60
  loc_BBC629: LdPrVar
  loc_BBC62B: LateMemCall
  loc_BBC631: LitVarStr var_94, "}"
  loc_BBC636: PopAdLdVar
  loc_BBC637: FLdPr Me
  loc_BBC63A: MemLdRfVar from_stack_1.global_60
  loc_BBC63D: LdPrVar
  loc_BBC63F: LateMemCall
  loc_BBC645: LitVarStr var_94, ".Encabezado {"
  loc_BBC64A: PopAdLdVar
  loc_BBC64B: FLdPr Me
  loc_BBC64E: MemLdRfVar from_stack_1.global_60
  loc_BBC651: LdPrVar
  loc_BBC653: LateMemCall
  loc_BBC659: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBC65E: PopAdLdVar
  loc_BBC65F: FLdPr Me
  loc_BBC662: MemLdRfVar from_stack_1.global_60
  loc_BBC665: LdPrVar
  loc_BBC667: LateMemCall
  loc_BBC66D: LitVarStr var_94, " font-size: 11px;"
  loc_BBC672: PopAdLdVar
  loc_BBC673: FLdPr Me
  loc_BBC676: MemLdRfVar from_stack_1.global_60
  loc_BBC679: LdPrVar
  loc_BBC67B: LateMemCall
  loc_BBC681: LitVarStr var_94, " font-weight: bold;"
  loc_BBC686: PopAdLdVar
  loc_BBC687: FLdPr Me
  loc_BBC68A: MemLdRfVar from_stack_1.global_60
  loc_BBC68D: LdPrVar
  loc_BBC68F: LateMemCall
  loc_BBC695: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BBC69A: PopAdLdVar
  loc_BBC69B: FLdPr Me
  loc_BBC69E: MemLdRfVar from_stack_1.global_60
  loc_BBC6A1: LdPrVar
  loc_BBC6A3: LateMemCall
  loc_BBC6A9: LitVarStr var_94, "}"
  loc_BBC6AE: PopAdLdVar
  loc_BBC6AF: FLdPr Me
  loc_BBC6B2: MemLdRfVar from_stack_1.global_60
  loc_BBC6B5: LdPrVar
  loc_BBC6B7: LateMemCall
  loc_BBC6BD: LitVarStr var_94, ".LineaDato {"
  loc_BBC6C2: PopAdLdVar
  loc_BBC6C3: FLdPr Me
  loc_BBC6C6: MemLdRfVar from_stack_1.global_60
  loc_BBC6C9: LdPrVar
  loc_BBC6CB: LateMemCall
  loc_BBC6D1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBC6D6: PopAdLdVar
  loc_BBC6D7: FLdPr Me
  loc_BBC6DA: MemLdRfVar from_stack_1.global_60
  loc_BBC6DD: LdPrVar
  loc_BBC6DF: LateMemCall
  loc_BBC6E5: LitVarStr var_94, " font-size: 10px;"
  loc_BBC6EA: PopAdLdVar
  loc_BBC6EB: FLdPr Me
  loc_BBC6EE: MemLdRfVar from_stack_1.global_60
  loc_BBC6F1: LdPrVar
  loc_BBC6F3: LateMemCall
  loc_BBC6F9: LitVarStr var_94, "}"
  loc_BBC6FE: PopAdLdVar
  loc_BBC6FF: FLdPr Me
  loc_BBC702: MemLdRfVar from_stack_1.global_60
  loc_BBC705: LdPrVar
  loc_BBC707: LateMemCall
  loc_BBC70D: LitVarStr var_94, ".Totales {"
  loc_BBC712: PopAdLdVar
  loc_BBC713: FLdPr Me
  loc_BBC716: MemLdRfVar from_stack_1.global_60
  loc_BBC719: LdPrVar
  loc_BBC71B: LateMemCall
  loc_BBC721: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBC726: PopAdLdVar
  loc_BBC727: FLdPr Me
  loc_BBC72A: MemLdRfVar from_stack_1.global_60
  loc_BBC72D: LdPrVar
  loc_BBC72F: LateMemCall
  loc_BBC735: LitVarStr var_94, " font-size: 12px;"
  loc_BBC73A: PopAdLdVar
  loc_BBC73B: FLdPr Me
  loc_BBC73E: MemLdRfVar from_stack_1.global_60
  loc_BBC741: LdPrVar
  loc_BBC743: LateMemCall
  loc_BBC749: LitVarStr var_94, " font-weight: bold;"
  loc_BBC74E: PopAdLdVar
  loc_BBC74F: FLdPr Me
  loc_BBC752: MemLdRfVar from_stack_1.global_60
  loc_BBC755: LdPrVar
  loc_BBC757: LateMemCall
  loc_BBC75D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBC762: PopAdLdVar
  loc_BBC763: FLdPr Me
  loc_BBC766: MemLdRfVar from_stack_1.global_60
  loc_BBC769: LdPrVar
  loc_BBC76B: LateMemCall
  loc_BBC771: LitVarStr var_94, "}"
  loc_BBC776: PopAdLdVar
  loc_BBC777: FLdPr Me
  loc_BBC77A: MemLdRfVar from_stack_1.global_60
  loc_BBC77D: LdPrVar
  loc_BBC77F: LateMemCall
  loc_BBC785: LitVarStr var_94, ".SubTotales {"
  loc_BBC78A: PopAdLdVar
  loc_BBC78B: FLdPr Me
  loc_BBC78E: MemLdRfVar from_stack_1.global_60
  loc_BBC791: LdPrVar
  loc_BBC793: LateMemCall
  loc_BBC799: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBC79E: PopAdLdVar
  loc_BBC79F: FLdPr Me
  loc_BBC7A2: MemLdRfVar from_stack_1.global_60
  loc_BBC7A5: LdPrVar
  loc_BBC7A7: LateMemCall
  loc_BBC7AD: LitVarStr var_94, " font-size: 10px;"
  loc_BBC7B2: PopAdLdVar
  loc_BBC7B3: FLdPr Me
  loc_BBC7B6: MemLdRfVar from_stack_1.global_60
  loc_BBC7B9: LdPrVar
  loc_BBC7BB: LateMemCall
  loc_BBC7C1: LitVarStr var_94, " font-weight: bold;"
  loc_BBC7C6: PopAdLdVar
  loc_BBC7C7: FLdPr Me
  loc_BBC7CA: MemLdRfVar from_stack_1.global_60
  loc_BBC7CD: LdPrVar
  loc_BBC7CF: LateMemCall
  loc_BBC7D5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBC7DA: PopAdLdVar
  loc_BBC7DB: FLdPr Me
  loc_BBC7DE: MemLdRfVar from_stack_1.global_60
  loc_BBC7E1: LdPrVar
  loc_BBC7E3: LateMemCall
  loc_BBC7E9: LitVarStr var_94, "}"
  loc_BBC7EE: PopAdLdVar
  loc_BBC7EF: FLdPr Me
  loc_BBC7F2: MemLdRfVar from_stack_1.global_60
  loc_BBC7F5: LdPrVar
  loc_BBC7F7: LateMemCall
  loc_BBC7FD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BBC802: PopAdLdVar
  loc_BBC803: FLdPr Me
  loc_BBC806: MemLdRfVar from_stack_1.global_60
  loc_BBC809: LdPrVar
  loc_BBC80B: LateMemCall
  loc_BBC811: LitVarStr var_94, "</style>"
  loc_BBC816: PopAdLdVar
  loc_BBC817: FLdPr Me
  loc_BBC81A: MemLdRfVar from_stack_1.global_60
  loc_BBC81D: LdPrVar
  loc_BBC81F: LateMemCall
  loc_BBC825: LitI4 0
  loc_BBC82A: FStStrCopy var_AC
  loc_BBC82D: FLdRfVar var_AC
  loc_BBC830: LitI4 0
  loc_BBC835: FStStrCopy var_A8
  loc_BBC838: FLdRfVar var_A8
  loc_BBC83B: LitI2_Byte &HFF
  loc_BBC83D: PopTmpLdAd2 var_BE
  loc_BBC840: FLdPr Me
  loc_BBC843: MemLdRfVar from_stack_1.global_60
  loc_BBC846: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBC84B: FFreeStr var_A8 = ""
  loc_BBC852: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBC857: PopAdLdVar
  loc_BBC858: FLdPr Me
  loc_BBC85B: MemLdRfVar from_stack_1.global_60
  loc_BBC85E: LdPrVar
  loc_BBC860: LateMemCall
  loc_BBC866: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BBC86B: PopAdLdVar
  loc_BBC86C: FLdPr Me
  loc_BBC86F: MemLdRfVar from_stack_1.global_60
  loc_BBC872: LdPrVar
  loc_BBC874: LateMemCall
  loc_BBC87A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBC87D: LitI2_Byte &H5F
  loc_BBC87F: CStrUI1
  loc_BBC881: FStStrNoPop var_A8
  loc_BBC884: ConcatStr
  loc_BBC885: FStStrNoPop var_AC
  loc_BBC888: LitStr """ height="""
  loc_BBC88B: ConcatStr
  loc_BBC88C: FStStrNoPop var_C4
  loc_BBC88F: LitI2_Byte &H3C
  loc_BBC891: CStrUI1
  loc_BBC893: FStStrNoPop var_C8
  loc_BBC896: ConcatStr
  loc_BBC897: FStStrNoPop var_CC
  loc_BBC89A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BBC89D: ConcatStr
  loc_BBC89E: FStStrNoPop var_D0
  loc_BBC8A1: LitStr "Municipalidad de Guaymallén"
  loc_BBC8A4: ConcatStr
  loc_BBC8A5: FStStrNoPop var_D4
  loc_BBC8A8: LitStr "</p>"
  loc_BBC8AB: ConcatStr
  loc_BBC8AC: CVarStr var_BC
  loc_BBC8AF: PopAdLdVar
  loc_BBC8B0: FLdPr Me
  loc_BBC8B3: MemLdRfVar from_stack_1.global_60
  loc_BBC8B6: LdPrVar
  loc_BBC8B8: LateMemCall
  loc_BBC8BE: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BBC8CF: FFree1Var var_BC = ""
  loc_BBC8D2: LitStr "    <p>"
  loc_BBC8D5: FLdRfVar var_A8
  loc_BBC8D8: FLdPr Me
  loc_BBC8DB:  = Me.Caption
  loc_BBC8E0: ILdRf var_A8
  loc_BBC8E3: ConcatStr
  loc_BBC8E4: FStStrNoPop var_AC
  loc_BBC8E7: LitStr "</p></th>"
  loc_BBC8EA: ConcatStr
  loc_BBC8EB: CVarStr var_BC
  loc_BBC8EE: PopAdLdVar
  loc_BBC8EF: FLdPr Me
  loc_BBC8F2: MemLdRfVar from_stack_1.global_60
  loc_BBC8F5: LdPrVar
  loc_BBC8F7: LateMemCall
  loc_BBC8FD: FFreeStr var_A8 = ""
  loc_BBC904: FFree1Var var_BC = ""
  loc_BBC907: LitVarStr var_94, "  </tr>"
  loc_BBC90C: PopAdLdVar
  loc_BBC90D: FLdPr Me
  loc_BBC910: MemLdRfVar from_stack_1.global_60
  loc_BBC913: LdPrVar
  loc_BBC915: LateMemCall
  loc_BBC91B: LitVarStr var_94, "  <tr>"
  loc_BBC920: PopAdLdVar
  loc_BBC921: FLdPr Me
  loc_BBC924: MemLdRfVar from_stack_1.global_60
  loc_BBC927: LdPrVar
  loc_BBC929: LateMemCall
  loc_BBC92F: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BBC934: PopAdLdVar
  loc_BBC935: FLdPr Me
  loc_BBC938: MemLdRfVar from_stack_1.global_60
  loc_BBC93B: LdPrVar
  loc_BBC93D: LateMemCall
  loc_BBC943: LitVarStr var_94, "  </tr>"
  loc_BBC948: PopAdLdVar
  loc_BBC949: FLdPr Me
  loc_BBC94C: MemLdRfVar from_stack_1.global_60
  loc_BBC94F: LdPrVar
  loc_BBC951: LateMemCall
  loc_BBC957: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BBC95C: PopAdLdVar
  loc_BBC95D: FLdPr Me
  loc_BBC960: MemLdRfVar from_stack_1.global_60
  loc_BBC963: LdPrVar
  loc_BBC965: LateMemCall
  loc_BBC96B: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BBC96E: FLdPr Me
  loc_BBC971: VCallAd Control_ID_DesdeMsk
  loc_BBC974: FStAdFunc var_D8
  loc_BBC977: FLdPr var_D8
  loc_BBC97A: LateIdLdVar var_BC DispID_15 0
  loc_BBC981: CStrVarTmp
  loc_BBC982: FStStrNoPop var_A8
  loc_BBC985: ConcatStr
  loc_BBC986: FStStrNoPop var_AC
  loc_BBC989: LitStr "</td>"
  loc_BBC98C: ConcatStr
  loc_BBC98D: CVarStr var_E8
  loc_BBC990: PopAdLdVar
  loc_BBC991: FLdPr Me
  loc_BBC994: MemLdRfVar from_stack_1.global_60
  loc_BBC997: LdPrVar
  loc_BBC999: LateMemCall
  loc_BBC99F: FFreeStr var_A8 = ""
  loc_BBC9A6: FFree1Ad var_D8
  loc_BBC9A9: FFreeVar var_BC = ""
  loc_BBC9B0: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BBC9B3: FLdPr Me
  loc_BBC9B6: VCallAd Control_ID_HastaMsk
  loc_BBC9B9: FStAdFunc var_D8
  loc_BBC9BC: FLdPr var_D8
  loc_BBC9BF: LateIdLdVar var_BC DispID_15 0
  loc_BBC9C6: CStrVarTmp
  loc_BBC9C7: FStStrNoPop var_A8
  loc_BBC9CA: ConcatStr
  loc_BBC9CB: FStStrNoPop var_AC
  loc_BBC9CE: LitStr "</td>"
  loc_BBC9D1: ConcatStr
  loc_BBC9D2: CVarStr var_E8
  loc_BBC9D5: PopAdLdVar
  loc_BBC9D6: FLdPr Me
  loc_BBC9D9: MemLdRfVar from_stack_1.global_60
  loc_BBC9DC: LdPrVar
  loc_BBC9DE: LateMemCall
  loc_BBC9E4: FFreeStr var_A8 = ""
  loc_BBC9EB: FFree1Ad var_D8
  loc_BBC9EE: FFreeVar var_BC = ""
  loc_BBC9F5: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BBC9FA: PopAdLdVar
  loc_BBC9FB: FLdPr Me
  loc_BBC9FE: MemLdRfVar from_stack_1.global_60
  loc_BBCA01: LdPrVar
  loc_BBCA03: LateMemCall
  loc_BBCA09: LitVarStr var_94, "  </tr>"
  loc_BBCA0E: PopAdLdVar
  loc_BBCA0F: FLdPr Me
  loc_BBCA12: MemLdRfVar from_stack_1.global_60
  loc_BBCA15: LdPrVar
  loc_BBCA17: LateMemCall
  loc_BBCA1D: LitVarStr var_94, "</table>"
  loc_BBCA22: PopAdLdVar
  loc_BBCA23: FLdPr Me
  loc_BBCA26: MemLdRfVar from_stack_1.global_60
  loc_BBCA29: LdPrVar
  loc_BBCA2B: LateMemCall
  loc_BBCA31: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBCA36: PopAdLdVar
  loc_BBCA37: FLdPr Me
  loc_BBCA3A: MemLdRfVar from_stack_1.global_60
  loc_BBCA3D: LdPrVar
  loc_BBCA3F: LateMemCall
  loc_BBCA45: LitVarStr var_94, "  <thead>"
  loc_BBCA4A: PopAdLdVar
  loc_BBCA4B: FLdPr Me
  loc_BBCA4E: MemLdRfVar from_stack_1.global_60
  loc_BBCA51: LdPrVar
  loc_BBCA53: LateMemCall
  loc_BBCA59: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBCA5E: PopAdLdVar
  loc_BBCA5F: FLdPr Me
  loc_BBCA62: MemLdRfVar from_stack_1.global_60
  loc_BBCA65: LdPrVar
  loc_BBCA67: LateMemCall
  loc_BBCA6D: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_BBCA72: PopAdLdVar
  loc_BBCA73: FLdPr Me
  loc_BBCA76: MemLdRfVar from_stack_1.global_60
  loc_BBCA79: LdPrVar
  loc_BBCA7B: LateMemCall
  loc_BBCA81: LitVarStr var_94, "    <th>Detalle</th>"
  loc_BBCA86: PopAdLdVar
  loc_BBCA87: FLdPr Me
  loc_BBCA8A: MemLdRfVar from_stack_1.global_60
  loc_BBCA8D: LdPrVar
  loc_BBCA8F: LateMemCall
  loc_BBCA95: LitVarStr var_94, "    <th>Saldo Inicial</th>"
  loc_BBCA9A: PopAdLdVar
  loc_BBCA9B: FLdPr Me
  loc_BBCA9E: MemLdRfVar from_stack_1.global_60
  loc_BBCAA1: LdPrVar
  loc_BBCAA3: LateMemCall
  loc_BBCAA9: LitVarStr var_94, "    <th>Total de Debitos</th>"
  loc_BBCAAE: PopAdLdVar
  loc_BBCAAF: FLdPr Me
  loc_BBCAB2: MemLdRfVar from_stack_1.global_60
  loc_BBCAB5: LdPrVar
  loc_BBCAB7: LateMemCall
  loc_BBCABD: LitVarStr var_94, "    <th>Total de Creditos</th>"
  loc_BBCAC2: PopAdLdVar
  loc_BBCAC3: FLdPr Me
  loc_BBCAC6: MemLdRfVar from_stack_1.global_60
  loc_BBCAC9: LdPrVar
  loc_BBCACB: LateMemCall
  loc_BBCAD1: LitVarStr var_94, "    <th>Saldo Final</th>"
  loc_BBCAD6: PopAdLdVar
  loc_BBCAD7: FLdPr Me
  loc_BBCADA: MemLdRfVar from_stack_1.global_60
  loc_BBCADD: LdPrVar
  loc_BBCADF: LateMemCall
  loc_BBCAE5: LitVarStr var_94, "  </tr>"
  loc_BBCAEA: PopAdLdVar
  loc_BBCAEB: FLdPr Me
  loc_BBCAEE: MemLdRfVar from_stack_1.global_60
  loc_BBCAF1: LdPrVar
  loc_BBCAF3: LateMemCall
  loc_BBCAF9: LitVarStr var_94, "  </thead>"
  loc_BBCAFE: PopAdLdVar
  loc_BBCAFF: FLdPr Me
  loc_BBCB02: MemLdRfVar from_stack_1.global_60
  loc_BBCB05: LdPrVar
  loc_BBCB07: LateMemCall
  loc_BBCB0D: ExitProcHresult
  loc_BBCB0E: LtI2
End Function

Private Function Proc_286_24_ADFFA0() 'ADFFA0
  'Data Table: 49DC8C
  loc_ADFE34: LitVarStr var_94, "</table>"
  loc_ADFE39: PopAdLdVar
  loc_ADFE3A: FLdPr Me
  loc_ADFE3D: MemLdRfVar from_stack_1.global_60
  loc_ADFE40: LdPrVar
  loc_ADFE42: LateMemCall
  loc_ADFE48: LitVarStr var_94, "<br>"
  loc_ADFE4D: PopAdLdVar
  loc_ADFE4E: FLdPr Me
  loc_ADFE51: MemLdRfVar from_stack_1.global_60
  loc_ADFE54: LdPrVar
  loc_ADFE56: LateMemCall
  loc_ADFE5C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_ADFE61: PopAdLdVar
  loc_ADFE62: FLdPr Me
  loc_ADFE65: MemLdRfVar from_stack_1.global_60
  loc_ADFE68: LdPrVar
  loc_ADFE6A: LateMemCall
  loc_ADFE70: LitVarStr var_94, "  <tr>"
  loc_ADFE75: PopAdLdVar
  loc_ADFE76: FLdPr Me
  loc_ADFE79: MemLdRfVar from_stack_1.global_60
  loc_ADFE7C: LdPrVar
  loc_ADFE7E: LateMemCall
  loc_ADFE84: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_ADFE89: PopAdLdVar
  loc_ADFE8A: FLdPr Me
  loc_ADFE8D: MemLdRfVar from_stack_1.global_60
  loc_ADFE90: LdPrVar
  loc_ADFE92: LateMemCall
  loc_ADFE98: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_ADFE9D: PopAdLdVar
  loc_ADFE9E: FLdPr Me
  loc_ADFEA1: MemLdRfVar from_stack_1.global_60
  loc_ADFEA4: LdPrVar
  loc_ADFEA6: LateMemCall
  loc_ADFEAC: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_ADFEB1: PopAdLdVar
  loc_ADFEB2: FLdPr Me
  loc_ADFEB5: MemLdRfVar from_stack_1.global_60
  loc_ADFEB8: LdPrVar
  loc_ADFEBA: LateMemCall
  loc_ADFEC0: LitVarStr var_94, "          <map name=""Map"">"
  loc_ADFEC5: PopAdLdVar
  loc_ADFEC6: FLdPr Me
  loc_ADFEC9: MemLdRfVar from_stack_1.global_60
  loc_ADFECC: LdPrVar
  loc_ADFECE: LateMemCall
  loc_ADFED4: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_ADFED9: PopAdLdVar
  loc_ADFEDA: FLdPr Me
  loc_ADFEDD: MemLdRfVar from_stack_1.global_60
  loc_ADFEE0: LdPrVar
  loc_ADFEE2: LateMemCall
  loc_ADFEE8: LitVarStr var_94, "          </map>"
  loc_ADFEED: PopAdLdVar
  loc_ADFEEE: FLdPr Me
  loc_ADFEF1: MemLdRfVar from_stack_1.global_60
  loc_ADFEF4: LdPrVar
  loc_ADFEF6: LateMemCall
  loc_ADFEFC: LitVarStr var_94, "    </div></th>"
  loc_ADFF01: PopAdLdVar
  loc_ADFF02: FLdPr Me
  loc_ADFF05: MemLdRfVar from_stack_1.global_60
  loc_ADFF08: LdPrVar
  loc_ADFF0A: LateMemCall
  loc_ADFF10: LitVarStr var_94, "  </tr>"
  loc_ADFF15: PopAdLdVar
  loc_ADFF16: FLdPr Me
  loc_ADFF19: MemLdRfVar from_stack_1.global_60
  loc_ADFF1C: LdPrVar
  loc_ADFF1E: LateMemCall
  loc_ADFF24: LitVarStr var_94, "  <tr>"
  loc_ADFF29: PopAdLdVar
  loc_ADFF2A: FLdPr Me
  loc_ADFF2D: MemLdRfVar from_stack_1.global_60
  loc_ADFF30: LdPrVar
  loc_ADFF32: LateMemCall
  loc_ADFF38: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_ADFF3D: PopAdLdVar
  loc_ADFF3E: FLdPr Me
  loc_ADFF41: MemLdRfVar from_stack_1.global_60
  loc_ADFF44: LdPrVar
  loc_ADFF46: LateMemCall
  loc_ADFF4C: LitVarStr var_94, "  </tr>"
  loc_ADFF51: PopAdLdVar
  loc_ADFF52: FLdPr Me
  loc_ADFF55: MemLdRfVar from_stack_1.global_60
  loc_ADFF58: LdPrVar
  loc_ADFF5A: LateMemCall
  loc_ADFF60: LitVarStr var_94, "</table>"
  loc_ADFF65: PopAdLdVar
  loc_ADFF66: FLdPr Me
  loc_ADFF69: MemLdRfVar from_stack_1.global_60
  loc_ADFF6C: LdPrVar
  loc_ADFF6E: LateMemCall
  loc_ADFF74: LitVarStr var_94, "</body>"
  loc_ADFF79: PopAdLdVar
  loc_ADFF7A: FLdPr Me
  loc_ADFF7D: MemLdRfVar from_stack_1.global_60
  loc_ADFF80: LdPrVar
  loc_ADFF82: LateMemCall
  loc_ADFF88: LitVarStr var_94, "</html>"
  loc_ADFF8D: PopAdLdVar
  loc_ADFF8E: FLdPr Me
  loc_ADFF91: MemLdRfVar from_stack_1.global_60
  loc_ADFF94: LdPrVar
  loc_ADFF96: LateMemCall
  loc_ADFF9C: ExitProcHresult
End Function
