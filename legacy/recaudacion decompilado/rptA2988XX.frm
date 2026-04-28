VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988XX
  Caption = "Acuerdo 2988 Anexo XX"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988XX.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11052
  ClientHeight = 3732
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 0
    Top = 1920
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptA2988XX.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11055
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA2988XX.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA2988XX.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988XX.frx":0C04
    Left = 9840
    Top = 1920
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
      OleObjectBlob = "rptA2988XX.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptA2988XX.frx":0D18
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
    OleObjectBlob = "rptA2988XX.frx":0DC8
  End
End

Attribute VB_Name = "rptA2988XX"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00560D48
  bStruc(24) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() 'A02E64
  'Data Table: 49B954
  loc_A02E34: LitVarStr var_94, "Cerrando..."
  loc_A02E39: PopAdLdVar
  loc_A02E3A: FLdPr Me
  loc_A02E3D: VCallAd Control_ID_statusBar
  loc_A02E40: FStAdFunc var_A8
  loc_A02E43: FLdPr var_A8
  loc_A02E46: LateIdSt
  loc_A02E4B: FFree1Ad var_A8
  loc_A02E4E: ILdRf Me
  loc_A02E51: FStAdNoPop
  loc_A02E55: ImpAdLdRf MemVar_D9C5D8
  loc_A02E58: NewIfNullPr Global
  loc_A02E5B: Global.Unload from_stack_1
  loc_A02E60: FFree1Ad var_A8
  loc_A02E63: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CBC84
  'Data Table: 49B954
  loc_9CBC6C: LitI2_Byte 0
  loc_9CBC6E: ILdRf Me
  loc_9CBC71: CastAd
  loc_9CBC74: FStAdFunc var_88
  loc_9CBC77: FLdRfVar var_88
  loc_9CBC7A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CBC7F: FFree1Ad var_88
  loc_9CBC82: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E244C
  'Data Table: 49B954
  loc_9E2430: LitI2_Byte 0
  loc_9E2432: LitI2_Byte 0
  loc_9E2434: ILdRf Me
  loc_9E2437: CastAd
  loc_9E243A: FStAdFunc var_88
  loc_9E243D: FLdRfVar var_88
  loc_9E2440: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2445: FFree1Ad var_88
  loc_9E2448: ExitProcHresult
  loc_9E2449: PopFPR4
  loc_9E244A: FFreeVar  = ""
End Sub

Private Sub cmdPdf_Click() '9E253C
  'Data Table: 49B954
  loc_9E2520: LitI2_Byte 0
  loc_9E2522: PopTmpLdAd2 var_8A
  loc_9E2525: ILdRf Me
  loc_9E2528: CastAd
  loc_9E252B: FStAdFunc var_88
  loc_9E252E: FLdRfVar var_88
  loc_9E2531: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2536: FFree1Ad var_88
  loc_9E2539: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BE6B8
  'Data Table: 49B954
  loc_9BE6A4: FLdPr Me
  loc_9BE6A7: VCallAd Control_ID_DesdeMsk
  loc_9BE6AA: CVarAd
  loc_9BE6AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE6B3: FFree1Var var_94 = ""
  loc_9BE6B6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A65D20
  'Data Table: 49B954
  loc_A65CC4: FLdPr Me
  loc_A65CC7: VCallAd Control_ID_DesdeMsk
  loc_A65CCA: FStAdFunc var_88
  loc_A65CCD: FLdPr var_88
  loc_A65CD0: LateIdLdVar var_98 DispID_15 0
  loc_A65CD7: CStrVarTmp
  loc_A65CD8: FStStrNoPop var_9C
  loc_A65CDB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65CE0: FStStrNoPop var_A0
  loc_A65CE3: FLdPr Me
  loc_A65CE6: MemStStrCopy
  loc_A65CEA: FFreeStr var_9C = ""
  loc_A65CF1: FFree1Ad var_88
  loc_A65CF4: FFree1Var var_98 = ""
  loc_A65CF7: FLdPr Me
  loc_A65CFA: VCallAd Control_ID_DesdeMsk
  loc_A65CFD: FStAdFuncNoPop
  loc_A65D00: CastAd
  loc_A65D03: FStAdFunc var_A4
  loc_A65D06: FLdRfVar var_A4
  loc_A65D09: FLdPr Me
  loc_A65D0C: MemLdStr global_108
  loc_A65D0F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65D14: IStI2 arg_C
  loc_A65D17: FFreeAd var_88 = ""
  loc_A65D1E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A21588
  'Data Table: 49B954
  loc_A21540: ILdI2 KeyAscii
  loc_A21543: CI4UI1
  loc_A21544: LitI4 &H20
  loc_A21549: EqI4
  loc_A2154A: BranchF loc_A21587
  loc_A2154D: LitVar_Missing var_A4
  loc_A21550: PopAdLdVar
  loc_A21551: LitVarI4
  loc_A21559: PopAdLdVar
  loc_A2155A: ImpAdLdRf MemVar_D930A4
  loc_A2155D: NewIfNullPr frmCalendario
  loc_A21560: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21565: ImpAdLdRf MemVar_D93028
  loc_A21568: CDargRef
  loc_A2156C: FLdPr Me
  loc_A2156F: VCallAd Control_ID_DesdeMsk
  loc_A21572: FStAdFunc var_A8
  loc_A21575: FLdPr var_A8
  loc_A21578: LateIdSt
  loc_A2157D: FFree1Ad var_A8
  loc_A21580: LitStr vbNullString
  loc_A21583: ImpAdStStrCopy MemVar_D93028
  loc_A21587: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A0A8
  'Data Table: 49B954
  loc_A0A070: LitI2_Byte 0
  loc_A0A072: FLdPr Me
  loc_A0A075: MemStI2 bGenerado
  loc_A0A078: LitI2_Byte 0
  loc_A0A07A: ILdRf Me
  loc_A0A07D: CastAd
  loc_A0A080: FStAdFunc var_88
  loc_A0A083: FLdRfVar var_88
  loc_A0A086: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A0A08B: FFree1Ad var_88
  loc_A0A08E: Call HabilitarCriterio()
  loc_A0A093: ILdRf Me
  loc_A0A096: CastAd
  loc_A0A099: FStAdFunc var_88
  loc_A0A09C: FLdRfVar var_88
  loc_A0A09F: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A0A4: FFree1Ad var_88
  loc_A0A0A7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13348
  'Data Table: 49B954
  loc_A13310: FLdPr Me
  loc_A13313: VCallAd Control_ID_statusBar
  loc_A13316: FStAdFunc var_88
  loc_A13319: FLdPr var_88
  loc_A1331C: LateIdLdVar var_98 DispID_1 0
  loc_A13323: CStrVarTmp
  loc_A13324: CVarStr var_A8
  loc_A13327: PopAdLdVar
  loc_A13328: FLdPr Me
  loc_A1332B: VCallAd Control_ID_statusBar
  loc_A1332E: FStAdFunc var_BC
  loc_A13331: FLdPr var_BC
  loc_A13334: LateIdSt
  loc_A13339: FFreeAd var_88 = ""
  loc_A13340: FFreeVar var_98 = ""
  loc_A13347: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CBC38
  'Data Table: 49B954
  loc_9CBC20: LitI2_Byte 0
  loc_9CBC22: ILdRf Me
  loc_9CBC25: CastAd
  loc_9CBC28: FStAdFunc var_88
  loc_9CBC2B: FLdRfVar var_88
  loc_9CBC2E: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CBC33: FFree1Ad var_88
  loc_9CBC36: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BE598
  'Data Table: 49B954
  loc_9BE584: FLdPr Me
  loc_9BE587: VCallAd Control_ID_HastaMsk
  loc_9BE58A: CVarAd
  loc_9BE58E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE593: FFree1Var var_94 = ""
  loc_9BE596: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA5DC4
  'Data Table: 49B954
  loc_AA5D14: FLdPr Me
  loc_AA5D17: VCallAd Control_ID_HastaMsk
  loc_AA5D1A: FStAdFunc var_88
  loc_AA5D1D: FLdPr var_88
  loc_AA5D20: LateIdLdVar var_98 DispID_15 0
  loc_AA5D27: CStrVarTmp
  loc_AA5D28: CVarStr var_A8
  loc_AA5D2B: ImpAdCallI2 IsDate()
  loc_AA5D30: FFree1Ad var_88
  loc_AA5D33: FFreeVar var_98 = ""
  loc_AA5D3A: BranchF loc_AA5DC0
  loc_AA5D3D: FLdPr Me
  loc_AA5D40: VCallAd Control_ID_HastaMsk
  loc_AA5D43: FStAdFunc var_88
  loc_AA5D46: FLdPr var_88
  loc_AA5D49: LateIdLdVar var_98 DispID_15 0
  loc_AA5D50: CStrVarTmp
  loc_AA5D51: CVarStr var_A8
  loc_AA5D54: FLdRfVar var_B8
  loc_AA5D57: ImpAdCallFPR4  = Year()
  loc_AA5D5C: FLdRfVar var_B8
  loc_AA5D5F: FLdPr Me
  loc_AA5D62: VCallAd Control_ID_DesdeMsk
  loc_AA5D65: FStAdFunc var_BC
  loc_AA5D68: FLdPr var_BC
  loc_AA5D6B: LateIdLdVar var_CC DispID_15 0
  loc_AA5D72: CStrVarTmp
  loc_AA5D73: CVarStr var_DC
  loc_AA5D76: FLdRfVar var_EC
  loc_AA5D79: ImpAdCallFPR4  = Year()
  loc_AA5D7E: FLdRfVar var_EC
  loc_AA5D81: NeVarBool
  loc_AA5D83: FFreeAd var_88 = ""
  loc_AA5D8A: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA5D99: BranchF loc_AA5DC0
  loc_AA5D9C: FLdPr Me
  loc_AA5D9F: VCallAd Control_ID_HastaMsk
  loc_AA5DA2: FStAdFuncNoPop
  loc_AA5DA5: CastAd
  loc_AA5DA8: FStAdFunc var_BC
  loc_AA5DAB: FLdRfVar var_BC
  loc_AA5DAE: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA5DB1: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA5DB6: IStI2 arg_C
  loc_AA5DB9: FFreeAd var_88 = ""
  loc_AA5DC0: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A20FB8
  'Data Table: 49B954
  loc_A20F70: ILdI2 KeyAscii
  loc_A20F73: CI4UI1
  loc_A20F74: LitI4 &H20
  loc_A20F79: EqI4
  loc_A20F7A: BranchF loc_A20FB7
  loc_A20F7D: LitVar_Missing var_A4
  loc_A20F80: PopAdLdVar
  loc_A20F81: LitVarI4
  loc_A20F89: PopAdLdVar
  loc_A20F8A: ImpAdLdRf MemVar_D930A4
  loc_A20F8D: NewIfNullPr frmCalendario
  loc_A20F90: frmCalendario.Show from_stack_1, from_stack_2
  loc_A20F95: ImpAdLdRf MemVar_D93028
  loc_A20F98: CDargRef
  loc_A20F9C: FLdPr Me
  loc_A20F9F: VCallAd Control_ID_HastaMsk
  loc_A20FA2: FStAdFunc var_A8
  loc_A20FA5: FLdPr var_A8
  loc_A20FA8: LateIdSt
  loc_A20FAD: FFree1Ad var_A8
  loc_A20FB0: LitStr vbNullString
  loc_A20FB3: ImpAdStStrCopy MemVar_D93028
  loc_A20FB7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CBFC8
  'Data Table: 49B954
  loc_9CBFB0: ILdRf Me
  loc_9CBFB3: CastAd
  loc_9CBFB6: FStAdFunc var_88
  loc_9CBFB9: FLdRfVar var_88
  loc_9CBFBC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CBFC1: FFree1Ad var_88
  loc_9CBFC4: ExitProcHresult
End Sub

Private Sub Form_Load() 'AE0F80
  'Data Table: 49B954
  loc_AE0E4C: ILdRf Me
  loc_AE0E4F: CastAd
  loc_AE0E52: FStAdFunc var_88
  loc_AE0E55: FLdRfVar var_88
  loc_AE0E58: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AE0E5D: FFree1Ad var_88
  loc_AE0E60: LitVarStr var_98, "Acuerdo 2988 Anexo XX"
  loc_AE0E65: CStrVarVal var_9C
  loc_AE0E69: FLdPr Me
  loc_AE0E6C: Me.Caption = from_stack_1
  loc_AE0E71: FFree1Str var_9C
  loc_AE0E74: Call cmdNueva_Click()
  loc_AE0E79: LitI2_Byte 0
  loc_AE0E7B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0E80: CVarDate var_AC
  loc_AE0E84: FLdRfVar var_BC
  loc_AE0E87: ImpAdCallFPR4  = Year()
  loc_AE0E8C: LitI2_Byte 0
  loc_AE0E8E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0E93: CVarDate var_DC
  loc_AE0E97: FLdRfVar var_EC
  loc_AE0E9A: ImpAdCallFPR4  = Month()
  loc_AE0E9F: LitI2_Byte 1
  loc_AE0EA1: FLdRfVar var_EC
  loc_AE0EA4: LitVarI2 var_FC, 1
  loc_AE0EA9: SubVar var_10C
  loc_AE0EAD: CI2Var
  loc_AE0EAE: FLdRfVar var_BC
  loc_AE0EB1: CI2Var
  loc_AE0EB2: FLdRfVar var_11C
  loc_AE0EB5: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0EBA: FLdRfVar var_11C
  loc_AE0EBD: CStrVarTmp
  loc_AE0EBE: CVarStr var_12C
  loc_AE0EC1: PopAdLdVar
  loc_AE0EC2: FLdPr Me
  loc_AE0EC5: VCallAd Control_ID_DesdeMsk
  loc_AE0EC8: FStAdFunc var_88
  loc_AE0ECB: FLdPr var_88
  loc_AE0ECE: LateIdSt
  loc_AE0ED3: FFree1Ad var_88
  loc_AE0ED6: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_AE0EE5: FLdPr Me
  loc_AE0EE8: VCallAd Control_ID_DesdeMsk
  loc_AE0EEB: FStAdFunc var_88
  loc_AE0EEE: FLdPr var_88
  loc_AE0EF1: LateIdLdVar var_AC DispID_15 0
  loc_AE0EF8: CStrVarTmp
  loc_AE0EF9: CVarStr var_BC
  loc_AE0EFC: FLdRfVar var_DC
  loc_AE0EFF: ImpAdCallFPR4  = Year()
  loc_AE0F04: FLdPr Me
  loc_AE0F07: VCallAd Control_ID_DesdeMsk
  loc_AE0F0A: FStAdFunc var_140
  loc_AE0F0D: FLdPr var_140
  loc_AE0F10: LateIdLdVar var_EC DispID_15 0
  loc_AE0F17: CStrVarTmp
  loc_AE0F18: CVarStr var_10C
  loc_AE0F1B: FLdRfVar var_11C
  loc_AE0F1E: ImpAdCallFPR4  = Month()
  loc_AE0F23: LitI2_Byte 1
  loc_AE0F25: FLdRfVar var_11C
  loc_AE0F28: LitVarI2 var_98, 1
  loc_AE0F2D: AddVar var_12C
  loc_AE0F31: CI2Var
  loc_AE0F32: FLdRfVar var_DC
  loc_AE0F35: CI2Var
  loc_AE0F36: FLdRfVar var_150
  loc_AE0F39: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0F3E: FLdRfVar var_150
  loc_AE0F41: LitVarI2 var_CC, 1
  loc_AE0F46: SubVar var_160
  loc_AE0F4A: CStrVarTmp
  loc_AE0F4B: CVarStr var_170
  loc_AE0F4E: PopAdLdVar
  loc_AE0F4F: FLdPr Me
  loc_AE0F52: VCallAd Control_ID_HastaMsk
  loc_AE0F55: FStAdFunc var_174
  loc_AE0F58: FLdPr var_174
  loc_AE0F5B: LateIdSt
  loc_AE0F60: FFreeAd var_88 = "": var_140 = ""
  loc_AE0F69: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AE0F7E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB98C
  'Data Table: 49B954
  loc_9CB974: FLdPr Me
  loc_9CB977: VCallAd Control_ID_wbbReporte
  loc_9CB97A: FStAdFunc var_88
  loc_9CB97D: FLdRfVar var_88
  loc_9CB980: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB985: FFree1Ad var_88
  loc_9CB988: ExitProcHresult
  loc_9CB989: BranchTVar
End Sub

Public Function bGeneradoGet() '49C888
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49C897
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A43880
  'Data Table: 49B954
  loc_A4383C: LitI4 0
  loc_A43841: LitI4 1
  loc_A43846: FLdRfVar var_88
  loc_A43849: Redim
  loc_A43853: FLdPr Me
  loc_A43856: VCallAd Control_ID_DesdeMsk
  loc_A43859: CVarAd
  loc_A4385D: ParmAry1St
  loc_A43863: FLdPr Me
  loc_A43866: VCallAd Control_ID_HastaMsk
  loc_A43869: CVarAd
  loc_A4386D: ParmAry1St
  loc_A43873: FLdRfVar var_88
  loc_A43876: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4387B: FLdRfVar var_88
  loc_A4387E: Erase
  loc_A4387F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'D05B88
  'Data Table: 49B954
  loc_D0281C: FLdPr Me
  loc_D0281F: MemLdI2 bGenerado
  loc_D02822: BranchF loc_D02826
  loc_D02825: ExitProcHresult
  loc_D02826: LitVarStr var_9C, "Generando reporte..."
  loc_D0282B: PopAdLdVar
  loc_D0282C: FLdPr Me
  loc_D0282F: VCallAd Control_ID_statusBar
  loc_D02832: FStAdFunc var_B0
  loc_D02835: FLdPr var_B0
  loc_D02838: LateIdSt
  loc_D0283D: FFree1Ad var_B0
  loc_D02840: LitI4 &HB
  loc_D02845: CI2I4
  loc_D02846: FLdPr Me
  loc_D02849: Me.MousePointer = from_stack_1
  loc_D0284E: LitI2_Byte 0
  loc_D02850: PopTmpLdAd2 var_B2
  loc_D02853: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_D02858: FLdPr Me
  loc_D0285B: MemLdStr global_108
  loc_D0285E: LitStr vbNullString
  loc_D02861: NeStr
  loc_D02863: BranchF loc_D02869
  loc_D02866: Branch loc_D05B5D
  loc_D02869: LitI2_Byte 0
  loc_D0286B: PopTmpLdAd2 var_B2
  loc_D0286E: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_D02873: FLdPr Me
  loc_D02876: MemLdStr global_108
  loc_D02879: LitStr vbNullString
  loc_D0287C: NeStr
  loc_D0287E: BranchF loc_D02884
  loc_D02881: Branch loc_D05B5D
  loc_D02884: FLdPr Me
  loc_D02887: VCallAd Control_ID_DesdeMsk
  loc_D0288A: FStAdFunc var_B0
  loc_D0288D: FLdPr var_B0
  loc_D02890: LateIdLdVar var_C4 DispID_15 0
  loc_D02897: PopAd
  loc_D02899: LitI4 1
  loc_D0289E: LitI4 1
  loc_D028A3: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_D028A8: FStVarCopyObj var_E4
  loc_D028AB: FLdRfVar var_E4
  loc_D028AE: FLdRfVar var_C4
  loc_D028B1: CStrVarTmp
  loc_D028B2: CVarStr var_D4
  loc_D028B5: ImpAdCallI2 Format$(, )
  loc_D028BA: FStStr var_88
  loc_D028BD: FFree1Ad var_B0
  loc_D028C0: FFreeVar var_C4 = "": var_D4 = ""
  loc_D028C9: FLdPr Me
  loc_D028CC: VCallAd Control_ID_HastaMsk
  loc_D028CF: FStAdFunc var_B0
  loc_D028D2: FLdPr var_B0
  loc_D028D5: LateIdLdVar var_C4 DispID_15 0
  loc_D028DC: PopAd
  loc_D028DE: LitI4 1
  loc_D028E3: LitI4 1
  loc_D028E8: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_D028ED: FStVarCopyObj var_E4
  loc_D028F0: FLdRfVar var_E4
  loc_D028F3: FLdRfVar var_C4
  loc_D028F6: CStrVarTmp
  loc_D028F7: CVarStr var_D4
  loc_D028FA: ImpAdCallI2 Format$(, )
  loc_D028FF: FStStr var_8C
  loc_D02902: FFree1Ad var_B0
  loc_D02905: FFreeVar var_C4 = "": var_D4 = ""
  loc_D0290E: FLdPr Me
  loc_D02911: MemLdRfVar from_stack_1.global_92
  loc_D02914: NewIfNullAd
  loc_D02917: FStAd var_E8 
  loc_D0291B: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_conc;"
  loc_D0291E: LitStr " CREATE TEMPORARY TABLE tmp_conc ("
  loc_D02921: ConcatStr
  loc_D02922: FStStrNoPop var_EC
  loc_D02925: LitStr " odiCuco` varchar(12) NOT NULL default '',"
  loc_D02928: ConcatStr
  loc_D02929: FStStrNoPop var_F0
  loc_D0292C: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_D0292F: ConcatStr
  loc_D02930: FStStrNoPop var_F4
  loc_D02933: LitStr " ngresado` decimal(16,2) NOT NULL default '0.00',"
  loc_D02936: ConcatStr
  loc_D02937: FStStrNoPop var_F8
  loc_D0293A: LitStr " obrado` decimal(16,2) NOT NULL default '0.00',"
  loc_D0293D: ConcatStr
  loc_D0293E: FStStrNoPop var_FC
  loc_D02941: LitStr " iferencia` decimal(16,2) NOT NULL default '0.00',"
  loc_D02944: ConcatStr
  loc_D02945: FStStrNoPop var_100
  loc_D02948: LitStr " KEY mpidx` (`CodiCuco`,`CodiConc`)"
  loc_D0294B: ConcatStr
  loc_D0294C: FStStrNoPop var_104
  loc_D0294F: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_D02952: ConcatStr
  loc_D02953: FStStrNoPop var_108
  loc_D02956: FLdPr var_E8
  loc_D02959: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D0295E: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_D02971: LitStr "Municipalidad de Guaymallén"
  loc_D02974: LitStr "Municipalidad de San Carlos"
  loc_D02977: EqStr
  loc_D02979: BranchF loc_D029C3
  loc_D0297C: LitStr " INSERT INTO tmp_conc"
  loc_D0297F: LitStr " SELECT contpres.ingreso.CodiCuco, contpres.ingreso.CodiConc, SUM(contpres.ingreso.ImpoIngr) Ingresado, 0000000000.00 Cobrado, 0000000000.00 Diferencia "
  loc_D02982: ConcatStr
  loc_D02983: FStStrNoPop var_EC
  loc_D02986: LitStr " FROM contpres.ingreso WHERE FechIngr BETWEEN "
  loc_D02989: ConcatStr
  loc_D0298A: FStStrNoPop var_F0
  loc_D0298D: ILdRf var_88
  loc_D02990: ConcatStr
  loc_D02991: FStStrNoPop var_F4
  loc_D02994: LitStr " AND "
  loc_D02997: ConcatStr
  loc_D02998: FStStrNoPop var_F8
  loc_D0299B: ILdRf var_8C
  loc_D0299E: ConcatStr
  loc_D0299F: FStStrNoPop var_FC
  loc_D029A2: LitStr " GROUP BY CodiConc, CodiCuco"
  loc_D029A5: ConcatStr
  loc_D029A6: FStStrNoPop var_100
  loc_D029A9: FLdPr var_E8
  loc_D029AC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D029B1: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_D029C0: Branch loc_D02A62
  loc_D029C3: LitStr "Municipalidad de Guaymallén"
  loc_D029C6: LitStr "Municipalidad de Malargüe"
  loc_D029C9: EqStr
  loc_D029CB: LitStr "Municipalidad de Guaymallén"
  loc_D029CE: LitStr "Municipalidad de Guaymallén"
  loc_D029D1: EqStr
  loc_D029D3: OrI4
  loc_D029D4: BranchF loc_D02A1E
  loc_D029D7: LitStr " INSERT INTO tmp_conc"
  loc_D029DA: LitStr " SELECT contpres.ingreso.CodiCuco, contpres.ingreso.CodiConc, SUM(contpres.ingreso.ImpoIngr) Ingresado, 0000000000.00 Cobrado, 0000000000.00 Diferencia "
  loc_D029DD: ConcatStr
  loc_D029DE: FStStrNoPop var_EC
  loc_D029E1: LitStr " FROM contpres.ingreso WHERE FechIngr BETWEEN "
  loc_D029E4: ConcatStr
  loc_D029E5: FStStrNoPop var_F0
  loc_D029E8: ILdRf var_88
  loc_D029EB: ConcatStr
  loc_D029EC: FStStrNoPop var_F4
  loc_D029EF: LitStr " AND "
  loc_D029F2: ConcatStr
  loc_D029F3: FStStrNoPop var_F8
  loc_D029F6: ILdRf var_8C
  loc_D029F9: ConcatStr
  loc_D029FA: FStStrNoPop var_FC
  loc_D029FD: LitStr " GROUP BY CodiCuco"
  loc_D02A00: ConcatStr
  loc_D02A01: FStStrNoPop var_100
  loc_D02A04: FLdPr var_E8
  loc_D02A07: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02A0C: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_D02A1B: Branch loc_D02A62
  loc_D02A1E: LitStr " INSERT INTO tmp_conc"
  loc_D02A21: LitStr " SELECT contpres.ingreso.CodiCuco, contpres.ingreso.CodiConc, SUM(contpres.ingreso.ImpoIngr) Ingresado, 0000000000.00 Cobrado, 0000000000.00 Diferencia "
  loc_D02A24: ConcatStr
  loc_D02A25: FStStrNoPop var_EC
  loc_D02A28: LitStr " FROM contpres.ingreso WHERE FechIngr BETWEEN "
  loc_D02A2B: ConcatStr
  loc_D02A2C: FStStrNoPop var_F0
  loc_D02A2F: ILdRf var_88
  loc_D02A32: ConcatStr
  loc_D02A33: FStStrNoPop var_F4
  loc_D02A36: LitStr " AND "
  loc_D02A39: ConcatStr
  loc_D02A3A: FStStrNoPop var_F8
  loc_D02A3D: ILdRf var_8C
  loc_D02A40: ConcatStr
  loc_D02A41: FStStrNoPop var_FC
  loc_D02A44: LitStr " GROUP BY CodiConc"
  loc_D02A47: ConcatStr
  loc_D02A48: FStStrNoPop var_100
  loc_D02A4B: FLdPr var_E8
  loc_D02A4E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02A53: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_D02A62: LitStr "Municipalidad de Guaymallén"
  loc_D02A65: LitStr "Municipalidad de Malargüe"
  loc_D02A68: EqStr
  loc_D02A6A: LitStr "Municipalidad de Guaymallén"
  loc_D02A6D: LitStr "Municipalidad de Guaymallén"
  loc_D02A70: EqStr
  loc_D02A72: OrI4
  loc_D02A73: BranchF loc_D02AE8
  loc_D02A76: LitStr " INSERT INTO tmp_conc "
  loc_D02A79: LitStr " SELECT c.IngrConc, detapago.CodiConc, 0 Ingresado, SUM(CapiDepa) - Sum(DecaDepa) - Sum(ExenDepa) - Sum(CrafDepa) as Cobrado, 0 as Diferencia"
  loc_D02A7C: ConcatStr
  loc_D02A7D: FStStrNoPop var_EC
  loc_D02A80: LitStr " FROM detapago"
  loc_D02A83: ConcatStr
  loc_D02A84: FStStrNoPop var_F0
  loc_D02A87: LitStr " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02A8A: ConcatStr
  loc_D02A8B: FStStrNoPop var_F4
  loc_D02A8E: ImpAdLdI2 MemVar_D93034
  loc_D02A91: CStrUI1
  loc_D02A93: FStStrNoPop var_F8
  loc_D02A96: ConcatStr
  loc_D02A97: FStStrNoPop var_FC
  loc_D02A9A: LitStr " AND c.CodiConc = detapago.CodiConc"
  loc_D02A9D: ConcatStr
  loc_D02A9E: FStStrNoPop var_100
  loc_D02AA1: LitStr " WHERE detapago.FeenAcpa BETWEEN "
  loc_D02AA4: ConcatStr
  loc_D02AA5: FStStrNoPop var_104
  loc_D02AA8: ILdRf var_88
  loc_D02AAB: ConcatStr
  loc_D02AAC: FStStrNoPop var_108
  loc_D02AAF: LitStr " AND "
  loc_D02AB2: ConcatStr
  loc_D02AB3: FStStrNoPop var_10C
  loc_D02AB6: ILdRf var_8C
  loc_D02AB9: ConcatStr
  loc_D02ABA: FStStrNoPop var_110
  loc_D02ABD: LitStr " GROUP BY c.IngrConc"
  loc_D02AC0: ConcatStr
  loc_D02AC1: FStStrNoPop var_114
  loc_D02AC4: FLdPr var_E8
  loc_D02AC7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02ACC: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_D02AE5: Branch loc_D02B57
  loc_D02AE8: LitStr " INSERT INTO tmp_conc "
  loc_D02AEB: LitStr " SELECT c.IngrConc, detapago.CodiConc, 0 Ingresado, SUM(CapiDepa) - Sum(DecaDepa) - Sum(ExenDepa) - Sum(CrafDepa) as Cobrado, 0 as Diferencia"
  loc_D02AEE: ConcatStr
  loc_D02AEF: FStStrNoPop var_EC
  loc_D02AF2: LitStr " FROM detapago"
  loc_D02AF5: ConcatStr
  loc_D02AF6: FStStrNoPop var_F0
  loc_D02AF9: LitStr " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02AFC: ConcatStr
  loc_D02AFD: FStStrNoPop var_F4
  loc_D02B00: ImpAdLdI2 MemVar_D93034
  loc_D02B03: CStrUI1
  loc_D02B05: FStStrNoPop var_F8
  loc_D02B08: ConcatStr
  loc_D02B09: FStStrNoPop var_FC
  loc_D02B0C: LitStr " AND c.CodiConc = detapago.CodiConc"
  loc_D02B0F: ConcatStr
  loc_D02B10: FStStrNoPop var_100
  loc_D02B13: LitStr " WHERE detapago.FeenAcpa BETWEEN "
  loc_D02B16: ConcatStr
  loc_D02B17: FStStrNoPop var_104
  loc_D02B1A: ILdRf var_88
  loc_D02B1D: ConcatStr
  loc_D02B1E: FStStrNoPop var_108
  loc_D02B21: LitStr " AND "
  loc_D02B24: ConcatStr
  loc_D02B25: FStStrNoPop var_10C
  loc_D02B28: ILdRf var_8C
  loc_D02B2B: ConcatStr
  loc_D02B2C: FStStrNoPop var_110
  loc_D02B2F: LitStr " GROUP BY detapago.CodiConc"
  loc_D02B32: ConcatStr
  loc_D02B33: FStStrNoPop var_114
  loc_D02B36: FLdPr var_E8
  loc_D02B39: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02B3E: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_D02B57: LitStr "Municipalidad de Guaymallén"
  loc_D02B5A: LitStr "Municipalidad de Rivadavia"
  loc_D02B5D: EqStr
  loc_D02B5F: LitStr "Municipalidad de Guaymallén"
  loc_D02B62: LitStr "Municipalidad de Tunuyán"
  loc_D02B65: EqStr
  loc_D02B67: OrI4
  loc_D02B68: BranchF loc_D03142
  loc_D02B6B: FLdPr Me
  loc_D02B6E: VCallAd Control_ID_DesdeMsk
  loc_D02B71: FStAdFunc var_198
  loc_D02B74: FLdPr var_198
  loc_D02B77: LateIdLdVar var_1A8 DispID_15 0
  loc_D02B7E: PopAd
  loc_D02B80: FLdPr Me
  loc_D02B83: VCallAd Control_ID_HastaMsk
  loc_D02B86: FStAdFunc var_21C
  loc_D02B89: FLdPr var_21C
  loc_D02B8C: LateIdLdVar var_22C DispID_15 0
  loc_D02B93: PopAd
  loc_D02B95: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D02B98: LitStr " sum(RecaDepa-DereDepa) as Cobrado, 0 as Diferencia"
  loc_D02B9B: ConcatStr
  loc_D02B9C: FStStrNoPop var_EC
  loc_D02B9F: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D02BA2: ConcatStr
  loc_D02BA3: CVarStr var_124
  loc_D02BA6: FLdPr Me
  loc_D02BA9: VCallAd Control_ID_DesdeMsk
  loc_D02BAC: FStAdFunc var_B0
  loc_D02BAF: FLdPr var_B0
  loc_D02BB2: LateIdLdVar var_C4 DispID_15 0
  loc_D02BB9: CStrVarTmp
  loc_D02BBA: CVarStr var_D4
  loc_D02BBD: FLdRfVar var_E4
  loc_D02BC0: ImpAdCallFPR4  = Year()
  loc_D02BC5: FLdRfVar var_E4
  loc_D02BC8: ConcatVar var_134
  loc_D02BCC: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02BD1: ConcatVar var_144
  loc_D02BD5: ImpAdLdI2 MemVar_D93034
  loc_D02BD8: CVarI2 var_AC
  loc_D02BDB: ConcatVar var_154
  loc_D02BDF: LitVarStr var_164, " AND c.CodiConc = detapago.CodiConc"
  loc_D02BE4: ConcatVar var_174
  loc_D02BE8: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D02BED: ConcatVar var_194
  loc_D02BF1: LitI4 1
  loc_D02BF6: LitI4 1
  loc_D02BFB: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D02C00: FStVarCopyObj var_1D8
  loc_D02C03: FLdRfVar var_1D8
  loc_D02C06: FLdRfVar var_1A8
  loc_D02C09: CStrVarTmp
  loc_D02C0A: CVarStr var_1B8
  loc_D02C0D: ImpAdCallI2 Format$(, )
  loc_D02C12: CVarStr var_1E8
  loc_D02C15: ConcatVar var_1F8
  loc_D02C19: LitVarStr var_208, " AND "
  loc_D02C1E: ConcatVar var_218
  loc_D02C22: LitI4 1
  loc_D02C27: LitI4 1
  loc_D02C2C: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D02C31: FStVarCopyObj var_25C
  loc_D02C34: FLdRfVar var_25C
  loc_D02C37: FLdRfVar var_22C
  loc_D02C3A: CStrVarTmp
  loc_D02C3B: CVarStr var_23C
  loc_D02C3E: ImpAdCallI2 Format$(, )
  loc_D02C43: CVarStr var_26C
  loc_D02C46: ConcatVar var_27C
  loc_D02C4A: CStrVarVal var_F0
  loc_D02C4E: FLdPr var_E8
  loc_D02C51: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02C56: FFreeStr var_EC = ""
  loc_D02C5D: FFreeAd var_B0 = "": var_198 = ""
  loc_D02C66: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D02C91: FLdPr Me
  loc_D02C94: VCallAd Control_ID_DesdeMsk
  loc_D02C97: FStAdFunc var_198
  loc_D02C9A: FLdPr var_198
  loc_D02C9D: LateIdLdVar var_1B8 DispID_15 0
  loc_D02CA4: PopAd
  loc_D02CA6: FLdPr Me
  loc_D02CA9: VCallAd Control_ID_HastaMsk
  loc_D02CAC: FStAdFunc var_21C
  loc_D02CAF: FLdPr var_21C
  loc_D02CB2: LateIdLdVar var_23C DispID_15 0
  loc_D02CB9: PopAd
  loc_D02CBB: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoadPare as CodiConc, 0 Ingresado, "
  loc_D02CBE: LitStr " sum(CoadBoap) as Cobrado, 0 as Diferencia"
  loc_D02CC1: ConcatStr
  loc_D02CC2: FStStrNoPop var_EC
  loc_D02CC5: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D02CC8: ConcatStr
  loc_D02CC9: CVarStr var_124
  loc_D02CCC: FLdPr Me
  loc_D02CCF: VCallAd Control_ID_DesdeMsk
  loc_D02CD2: FStAdFunc var_B0
  loc_D02CD5: FLdPr var_B0
  loc_D02CD8: LateIdLdVar var_C4 DispID_15 0
  loc_D02CDF: CStrVarTmp
  loc_D02CE0: CVarStr var_D4
  loc_D02CE3: FLdRfVar var_E4
  loc_D02CE6: ImpAdCallFPR4  = Year()
  loc_D02CEB: FLdRfVar var_E4
  loc_D02CEE: ConcatVar var_134
  loc_D02CF2: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02CF7: ConcatVar var_144
  loc_D02CFB: ImpAdLdI2 MemVar_D93034
  loc_D02CFE: CVarI2 var_AC
  loc_D02D01: ConcatVar var_154
  loc_D02D05: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D02D0A: ConcatVar var_174
  loc_D02D0E: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D02D13: ConcatVar var_194
  loc_D02D17: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D02D1C: ConcatVar var_1A8
  loc_D02D20: LitI4 1
  loc_D02D25: LitI4 1
  loc_D02D2A: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D02D2F: FStVarCopyObj var_1E8
  loc_D02D32: FLdRfVar var_1E8
  loc_D02D35: FLdRfVar var_1B8
  loc_D02D38: CStrVarTmp
  loc_D02D39: CVarStr var_1D8
  loc_D02D3C: ImpAdCallI2 Format$(, )
  loc_D02D41: CVarStr var_1F8
  loc_D02D44: ConcatVar var_218
  loc_D02D48: LitVarStr var_24C, " AND "
  loc_D02D4D: ConcatVar var_22C
  loc_D02D51: LitI4 1
  loc_D02D56: LitI4 1
  loc_D02D5B: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D02D60: FStVarCopyObj var_26C
  loc_D02D63: FLdRfVar var_26C
  loc_D02D66: FLdRfVar var_23C
  loc_D02D69: CStrVarTmp
  loc_D02D6A: CVarStr var_25C
  loc_D02D6D: ImpAdCallI2 Format$(, )
  loc_D02D72: CVarStr var_27C
  loc_D02D75: ConcatVar var_29C
  loc_D02D79: CStrVarVal var_F0
  loc_D02D7D: FLdPr var_E8
  loc_D02D80: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02D85: FFreeStr var_EC = ""
  loc_D02D8C: FFreeAd var_B0 = "": var_198 = ""
  loc_D02D95: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D02DC2: FLdPr Me
  loc_D02DC5: VCallAd Control_ID_DesdeMsk
  loc_D02DC8: FStAdFunc var_198
  loc_D02DCB: FLdPr var_198
  loc_D02DCE: LateIdLdVar var_1B8 DispID_15 0
  loc_D02DD5: PopAd
  loc_D02DD7: FLdPr Me
  loc_D02DDA: VCallAd Control_ID_HastaMsk
  loc_D02DDD: FStAdFunc var_21C
  loc_D02DE0: FLdPr var_21C
  loc_D02DE3: LateIdLdVar var_23C DispID_15 0
  loc_D02DEA: PopAd
  loc_D02DEC: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D02DEF: LitStr " sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as cobrado, 0 as diferencia "
  loc_D02DF2: ConcatStr
  loc_D02DF3: FStStrNoPop var_EC
  loc_D02DF6: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D02DF9: ConcatStr
  loc_D02DFA: CVarStr var_124
  loc_D02DFD: FLdPr Me
  loc_D02E00: VCallAd Control_ID_DesdeMsk
  loc_D02E03: FStAdFunc var_B0
  loc_D02E06: FLdPr var_B0
  loc_D02E09: LateIdLdVar var_C4 DispID_15 0
  loc_D02E10: CStrVarTmp
  loc_D02E11: CVarStr var_D4
  loc_D02E14: FLdRfVar var_E4
  loc_D02E17: ImpAdCallFPR4  = Year()
  loc_D02E1C: FLdRfVar var_E4
  loc_D02E1F: ConcatVar var_134
  loc_D02E23: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02E28: ConcatVar var_144
  loc_D02E2C: ImpAdLdI2 MemVar_D93034
  loc_D02E2F: CVarI2 var_AC
  loc_D02E32: ConcatVar var_154
  loc_D02E36: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D02E3B: ConcatVar var_174
  loc_D02E3F: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D02E44: ConcatVar var_194
  loc_D02E48: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D02E4D: ConcatVar var_1A8
  loc_D02E51: LitI4 1
  loc_D02E56: LitI4 1
  loc_D02E5B: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D02E60: FStVarCopyObj var_1E8
  loc_D02E63: FLdRfVar var_1E8
  loc_D02E66: FLdRfVar var_1B8
  loc_D02E69: CStrVarTmp
  loc_D02E6A: CVarStr var_1D8
  loc_D02E6D: ImpAdCallI2 Format$(, )
  loc_D02E72: CVarStr var_1F8
  loc_D02E75: ConcatVar var_218
  loc_D02E79: LitVarStr var_24C, " AND "
  loc_D02E7E: ConcatVar var_22C
  loc_D02E82: LitI4 1
  loc_D02E87: LitI4 1
  loc_D02E8C: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D02E91: FStVarCopyObj var_26C
  loc_D02E94: FLdRfVar var_26C
  loc_D02E97: FLdRfVar var_23C
  loc_D02E9A: CStrVarTmp
  loc_D02E9B: CVarStr var_25C
  loc_D02E9E: ImpAdCallI2 Format$(, )
  loc_D02EA3: CVarStr var_27C
  loc_D02EA6: ConcatVar var_29C
  loc_D02EAA: CStrVarVal var_F0
  loc_D02EAE: FLdPr var_E8
  loc_D02EB1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02EB6: FFreeStr var_EC = ""
  loc_D02EBD: FFreeAd var_B0 = "": var_198 = ""
  loc_D02EC6: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D02EF3: FLdPr Me
  loc_D02EF6: VCallAd Control_ID_DesdeMsk
  loc_D02EF9: FStAdFunc var_198
  loc_D02EFC: FLdPr var_198
  loc_D02EFF: LateIdLdVar var_1B8 DispID_15 0
  loc_D02F06: PopAd
  loc_D02F08: FLdPr Me
  loc_D02F0B: VCallAd Control_ID_HastaMsk
  loc_D02F0E: FStAdFunc var_21C
  loc_D02F11: FLdPr var_21C
  loc_D02F14: LateIdLdVar var_23C DispID_15 0
  loc_D02F1B: PopAd
  loc_D02F1D: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoimPare as CodiConc, 0 Ingresado,"
  loc_D02F20: LitStr " sum(ApleBoap+DefiBoap+ReseBoap) Cobrado, 0 as diferencia "
  loc_D02F23: ConcatStr
  loc_D02F24: FStStrNoPop var_EC
  loc_D02F27: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D02F2A: ConcatStr
  loc_D02F2B: CVarStr var_124
  loc_D02F2E: FLdPr Me
  loc_D02F31: VCallAd Control_ID_DesdeMsk
  loc_D02F34: FStAdFunc var_B0
  loc_D02F37: FLdPr var_B0
  loc_D02F3A: LateIdLdVar var_C4 DispID_15 0
  loc_D02F41: CStrVarTmp
  loc_D02F42: CVarStr var_D4
  loc_D02F45: FLdRfVar var_E4
  loc_D02F48: ImpAdCallFPR4  = Year()
  loc_D02F4D: FLdRfVar var_E4
  loc_D02F50: ConcatVar var_134
  loc_D02F54: LitVarStr var_9C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D02F59: ConcatVar var_144
  loc_D02F5D: LitVarStr var_AC, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D02F62: ConcatVar var_154
  loc_D02F66: ImpAdLdI2 MemVar_D93034
  loc_D02F69: CVarI2 var_164
  loc_D02F6C: ConcatVar var_174
  loc_D02F70: LitVarStr var_184, " AND c.CodiConc = pararenta.CoimPare"
  loc_D02F75: ConcatVar var_194
  loc_D02F79: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D02F7E: ConcatVar var_1A8
  loc_D02F82: LitI4 1
  loc_D02F87: LitI4 1
  loc_D02F8C: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D02F91: FStVarCopyObj var_1E8
  loc_D02F94: FLdRfVar var_1E8
  loc_D02F97: FLdRfVar var_1B8
  loc_D02F9A: CStrVarTmp
  loc_D02F9B: CVarStr var_1D8
  loc_D02F9E: ImpAdCallI2 Format$(, )
  loc_D02FA3: CVarStr var_1F8
  loc_D02FA6: ConcatVar var_218
  loc_D02FAA: LitVarStr var_24C, " AND "
  loc_D02FAF: ConcatVar var_22C
  loc_D02FB3: LitI4 1
  loc_D02FB8: LitI4 1
  loc_D02FBD: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D02FC2: FStVarCopyObj var_26C
  loc_D02FC5: FLdRfVar var_26C
  loc_D02FC8: FLdRfVar var_23C
  loc_D02FCB: CStrVarTmp
  loc_D02FCC: CVarStr var_25C
  loc_D02FCF: ImpAdCallI2 Format$(, )
  loc_D02FD4: CVarStr var_27C
  loc_D02FD7: ConcatVar var_29C
  loc_D02FDB: CStrVarVal var_F0
  loc_D02FDF: FLdPr var_E8
  loc_D02FE2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D02FE7: FFreeStr var_EC = ""
  loc_D02FEE: FFreeAd var_B0 = "": var_198 = ""
  loc_D02FF7: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03024: FLdPr Me
  loc_D03027: VCallAd Control_ID_DesdeMsk
  loc_D0302A: FStAdFunc var_198
  loc_D0302D: FLdPr var_198
  loc_D03030: LateIdLdVar var_1A8 DispID_15 0
  loc_D03037: PopAd
  loc_D03039: FLdPr Me
  loc_D0303C: VCallAd Control_ID_HastaMsk
  loc_D0303F: FStAdFunc var_21C
  loc_D03042: FLdPr var_21C
  loc_D03045: LateIdLdVar var_22C DispID_15 0
  loc_D0304C: PopAd
  loc_D0304E: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado, sum(InteDepa) as Cobrado, 0 as Diferencia"
  loc_D03051: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03054: ConcatStr
  loc_D03055: CVarStr var_124
  loc_D03058: FLdPr Me
  loc_D0305B: VCallAd Control_ID_DesdeMsk
  loc_D0305E: FStAdFunc var_B0
  loc_D03061: FLdPr var_B0
  loc_D03064: LateIdLdVar var_C4 DispID_15 0
  loc_D0306B: CStrVarTmp
  loc_D0306C: CVarStr var_D4
  loc_D0306F: FLdRfVar var_E4
  loc_D03072: ImpAdCallFPR4  = Year()
  loc_D03077: FLdRfVar var_E4
  loc_D0307A: ConcatVar var_134
  loc_D0307E: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03083: ConcatVar var_144
  loc_D03087: ImpAdLdI2 MemVar_D93034
  loc_D0308A: CVarI2 var_AC
  loc_D0308D: ConcatVar var_154
  loc_D03091: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D03096: ConcatVar var_174
  loc_D0309A: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D0309F: ConcatVar var_194
  loc_D030A3: LitI4 1
  loc_D030A8: LitI4 1
  loc_D030AD: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D030B2: FStVarCopyObj var_1D8
  loc_D030B5: FLdRfVar var_1D8
  loc_D030B8: FLdRfVar var_1A8
  loc_D030BB: CStrVarTmp
  loc_D030BC: CVarStr var_1B8
  loc_D030BF: ImpAdCallI2 Format$(, )
  loc_D030C4: CVarStr var_1E8
  loc_D030C7: ConcatVar var_1F8
  loc_D030CB: LitVarStr var_208, " AND "
  loc_D030D0: ConcatVar var_218
  loc_D030D4: LitI4 1
  loc_D030D9: LitI4 1
  loc_D030DE: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D030E3: FStVarCopyObj var_25C
  loc_D030E6: FLdRfVar var_25C
  loc_D030E9: FLdRfVar var_22C
  loc_D030EC: CStrVarTmp
  loc_D030ED: CVarStr var_23C
  loc_D030F0: ImpAdCallI2 Format$(, )
  loc_D030F5: CVarStr var_26C
  loc_D030F8: ConcatVar var_27C
  loc_D030FC: CStrVarVal var_EC
  loc_D03100: FLdPr var_E8
  loc_D03103: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03108: FFree1Str var_EC
  loc_D0310B: FFreeAd var_B0 = "": var_198 = ""
  loc_D03114: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D0313F: Branch loc_D05269
  loc_D03142: LitStr "Municipalidad de Guaymallén"
  loc_D03145: LitStr "Municipalidad de General Alvear"
  loc_D03148: EqStr
  loc_D0314A: BranchF loc_D0372F
  loc_D0314D: FLdPr Me
  loc_D03150: VCallAd Control_ID_DesdeMsk
  loc_D03153: FStAdFunc var_198
  loc_D03156: FLdPr var_198
  loc_D03159: LateIdLdVar var_1A8 DispID_15 0
  loc_D03160: PopAd
  loc_D03162: FLdPr Me
  loc_D03165: VCallAd Control_ID_HastaMsk
  loc_D03168: FStAdFunc var_21C
  loc_D0316B: FLdPr var_21C
  loc_D0316E: LateIdLdVar var_22C DispID_15 0
  loc_D03175: PopAd
  loc_D03177: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D0317A: LitStr " sum(RecaDepa-DereDepa) as Cobrado, 0 as Diferencia"
  loc_D0317D: ConcatStr
  loc_D0317E: FStStrNoPop var_EC
  loc_D03181: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03184: ConcatStr
  loc_D03185: CVarStr var_124
  loc_D03188: FLdPr Me
  loc_D0318B: VCallAd Control_ID_DesdeMsk
  loc_D0318E: FStAdFunc var_B0
  loc_D03191: FLdPr var_B0
  loc_D03194: LateIdLdVar var_C4 DispID_15 0
  loc_D0319B: CStrVarTmp
  loc_D0319C: CVarStr var_D4
  loc_D0319F: FLdRfVar var_E4
  loc_D031A2: ImpAdCallFPR4  = Year()
  loc_D031A7: FLdRfVar var_E4
  loc_D031AA: ConcatVar var_134
  loc_D031AE: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D031B3: ConcatVar var_144
  loc_D031B7: ImpAdLdI2 MemVar_D93034
  loc_D031BA: CVarI2 var_AC
  loc_D031BD: ConcatVar var_154
  loc_D031C1: LitVarStr var_164, " AND c.CodiConc = detapago.CodiConc"
  loc_D031C6: ConcatVar var_174
  loc_D031CA: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D031CF: ConcatVar var_194
  loc_D031D3: LitI4 1
  loc_D031D8: LitI4 1
  loc_D031DD: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D031E2: FStVarCopyObj var_1D8
  loc_D031E5: FLdRfVar var_1D8
  loc_D031E8: FLdRfVar var_1A8
  loc_D031EB: CStrVarTmp
  loc_D031EC: CVarStr var_1B8
  loc_D031EF: ImpAdCallI2 Format$(, )
  loc_D031F4: CVarStr var_1E8
  loc_D031F7: ConcatVar var_1F8
  loc_D031FB: LitVarStr var_208, " AND "
  loc_D03200: ConcatVar var_218
  loc_D03204: LitI4 1
  loc_D03209: LitI4 1
  loc_D0320E: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D03213: FStVarCopyObj var_25C
  loc_D03216: FLdRfVar var_25C
  loc_D03219: FLdRfVar var_22C
  loc_D0321C: CStrVarTmp
  loc_D0321D: CVarStr var_23C
  loc_D03220: ImpAdCallI2 Format$(, )
  loc_D03225: CVarStr var_26C
  loc_D03228: ConcatVar var_27C
  loc_D0322C: CStrVarVal var_F0
  loc_D03230: FLdPr var_E8
  loc_D03233: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03238: FFreeStr var_EC = ""
  loc_D0323F: FFreeAd var_B0 = "": var_198 = ""
  loc_D03248: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D03273: FLdPr Me
  loc_D03276: VCallAd Control_ID_DesdeMsk
  loc_D03279: FStAdFunc var_198
  loc_D0327C: FLdPr var_198
  loc_D0327F: LateIdLdVar var_1B8 DispID_15 0
  loc_D03286: PopAd
  loc_D03288: FLdPr Me
  loc_D0328B: VCallAd Control_ID_HastaMsk
  loc_D0328E: FStAdFunc var_21C
  loc_D03291: FLdPr var_21C
  loc_D03294: LateIdLdVar var_23C DispID_15 0
  loc_D0329B: PopAd
  loc_D0329D: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoadPare as CodiConc, 0 Ingresado,"
  loc_D032A0: LitStr " SUM(CoadBoap+HoreBoap+HoofBoap) as Cobrado, 0 as Diferencia"
  loc_D032A3: ConcatStr
  loc_D032A4: FStStrNoPop var_EC
  loc_D032A7: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D032AA: ConcatStr
  loc_D032AB: CVarStr var_124
  loc_D032AE: FLdPr Me
  loc_D032B1: VCallAd Control_ID_DesdeMsk
  loc_D032B4: FStAdFunc var_B0
  loc_D032B7: FLdPr var_B0
  loc_D032BA: LateIdLdVar var_C4 DispID_15 0
  loc_D032C1: CStrVarTmp
  loc_D032C2: CVarStr var_D4
  loc_D032C5: FLdRfVar var_E4
  loc_D032C8: ImpAdCallFPR4  = Year()
  loc_D032CD: FLdRfVar var_E4
  loc_D032D0: ConcatVar var_134
  loc_D032D4: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D032D9: ConcatVar var_144
  loc_D032DD: ImpAdLdI2 MemVar_D93034
  loc_D032E0: CVarI2 var_AC
  loc_D032E3: ConcatVar var_154
  loc_D032E7: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D032EC: ConcatVar var_174
  loc_D032F0: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D032F5: ConcatVar var_194
  loc_D032F9: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D032FE: ConcatVar var_1A8
  loc_D03302: LitI4 1
  loc_D03307: LitI4 1
  loc_D0330C: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03311: FStVarCopyObj var_1E8
  loc_D03314: FLdRfVar var_1E8
  loc_D03317: FLdRfVar var_1B8
  loc_D0331A: CStrVarTmp
  loc_D0331B: CVarStr var_1D8
  loc_D0331E: ImpAdCallI2 Format$(, )
  loc_D03323: CVarStr var_1F8
  loc_D03326: ConcatVar var_218
  loc_D0332A: LitVarStr var_24C, " AND "
  loc_D0332F: ConcatVar var_22C
  loc_D03333: LitI4 1
  loc_D03338: LitI4 1
  loc_D0333D: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D03342: FStVarCopyObj var_26C
  loc_D03345: FLdRfVar var_26C
  loc_D03348: FLdRfVar var_23C
  loc_D0334B: CStrVarTmp
  loc_D0334C: CVarStr var_25C
  loc_D0334F: ImpAdCallI2 Format$(, )
  loc_D03354: CVarStr var_27C
  loc_D03357: ConcatVar var_29C
  loc_D0335B: CStrVarVal var_F0
  loc_D0335F: FLdPr var_E8
  loc_D03362: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03367: FFreeStr var_EC = ""
  loc_D0336E: FFreeAd var_B0 = "": var_198 = ""
  loc_D03377: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D033A4: FLdPr Me
  loc_D033A7: VCallAd Control_ID_DesdeMsk
  loc_D033AA: FStAdFunc var_198
  loc_D033AD: FLdPr var_198
  loc_D033B0: LateIdLdVar var_1B8 DispID_15 0
  loc_D033B7: PopAd
  loc_D033B9: FLdPr Me
  loc_D033BC: VCallAd Control_ID_HastaMsk
  loc_D033BF: FStAdFunc var_21C
  loc_D033C2: FLdPr var_21C
  loc_D033C5: LateIdLdVar var_23C DispID_15 0
  loc_D033CC: PopAd
  loc_D033CE: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D033D1: LitStr " SUM(MoreBoap+MoofBoap) as Cobrado, 0 as Diferencia"
  loc_D033D4: ConcatStr
  loc_D033D5: FStStrNoPop var_EC
  loc_D033D8: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D033DB: ConcatStr
  loc_D033DC: CVarStr var_124
  loc_D033DF: FLdPr Me
  loc_D033E2: VCallAd Control_ID_DesdeMsk
  loc_D033E5: FStAdFunc var_B0
  loc_D033E8: FLdPr var_B0
  loc_D033EB: LateIdLdVar var_C4 DispID_15 0
  loc_D033F2: CStrVarTmp
  loc_D033F3: CVarStr var_D4
  loc_D033F6: FLdRfVar var_E4
  loc_D033F9: ImpAdCallFPR4  = Year()
  loc_D033FE: FLdRfVar var_E4
  loc_D03401: ConcatVar var_134
  loc_D03405: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0340A: ConcatVar var_144
  loc_D0340E: ImpAdLdI2 MemVar_D93034
  loc_D03411: CVarI2 var_AC
  loc_D03414: ConcatVar var_154
  loc_D03418: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D0341D: ConcatVar var_174
  loc_D03421: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D03426: ConcatVar var_194
  loc_D0342A: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D0342F: ConcatVar var_1A8
  loc_D03433: LitI4 1
  loc_D03438: LitI4 1
  loc_D0343D: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03442: FStVarCopyObj var_1E8
  loc_D03445: FLdRfVar var_1E8
  loc_D03448: FLdRfVar var_1B8
  loc_D0344B: CStrVarTmp
  loc_D0344C: CVarStr var_1D8
  loc_D0344F: ImpAdCallI2 Format$(, )
  loc_D03454: CVarStr var_1F8
  loc_D03457: ConcatVar var_218
  loc_D0345B: LitVarStr var_24C, " AND "
  loc_D03460: ConcatVar var_22C
  loc_D03464: LitI4 1
  loc_D03469: LitI4 1
  loc_D0346E: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D03473: FStVarCopyObj var_26C
  loc_D03476: FLdRfVar var_26C
  loc_D03479: FLdRfVar var_23C
  loc_D0347C: CStrVarTmp
  loc_D0347D: CVarStr var_25C
  loc_D03480: ImpAdCallI2 Format$(, )
  loc_D03485: CVarStr var_27C
  loc_D03488: ConcatVar var_29C
  loc_D0348C: CStrVarVal var_F0
  loc_D03490: FLdPr var_E8
  loc_D03493: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03498: FFreeStr var_EC = ""
  loc_D0349F: FFreeAd var_B0 = "": var_198 = ""
  loc_D034A8: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D034D5: FLdPr Me
  loc_D034D8: VCallAd Control_ID_DesdeMsk
  loc_D034DB: FStAdFunc var_198
  loc_D034DE: FLdPr var_198
  loc_D034E1: LateIdLdVar var_1B8 DispID_15 0
  loc_D034E8: PopAd
  loc_D034EA: FLdPr Me
  loc_D034ED: VCallAd Control_ID_HastaMsk
  loc_D034F0: FStAdFunc var_21C
  loc_D034F3: FLdPr var_21C
  loc_D034F6: LateIdLdVar var_23C DispID_15 0
  loc_D034FD: PopAd
  loc_D034FF: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoimPare as CodiConc, 0 Ingresado,"
  loc_D03502: LitStr " SUM(ApleBoap+DefiBoap+ReseBoap) as Cobrado, 0 as Diferencia "
  loc_D03505: ConcatStr
  loc_D03506: FStStrNoPop var_EC
  loc_D03509: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D0350C: ConcatStr
  loc_D0350D: CVarStr var_124
  loc_D03510: FLdPr Me
  loc_D03513: VCallAd Control_ID_DesdeMsk
  loc_D03516: FStAdFunc var_B0
  loc_D03519: FLdPr var_B0
  loc_D0351C: LateIdLdVar var_C4 DispID_15 0
  loc_D03523: CStrVarTmp
  loc_D03524: CVarStr var_D4
  loc_D03527: FLdRfVar var_E4
  loc_D0352A: ImpAdCallFPR4  = Year()
  loc_D0352F: FLdRfVar var_E4
  loc_D03532: ConcatVar var_134
  loc_D03536: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0353B: ConcatVar var_144
  loc_D0353F: ImpAdLdI2 MemVar_D93034
  loc_D03542: CVarI2 var_AC
  loc_D03545: ConcatVar var_154
  loc_D03549: LitVarStr var_164, " AND c.CodiConc = pararenta.CoimPare"
  loc_D0354E: ConcatVar var_174
  loc_D03552: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D03557: ConcatVar var_194
  loc_D0355B: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D03560: ConcatVar var_1A8
  loc_D03564: LitI4 1
  loc_D03569: LitI4 1
  loc_D0356E: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03573: FStVarCopyObj var_1E8
  loc_D03576: FLdRfVar var_1E8
  loc_D03579: FLdRfVar var_1B8
  loc_D0357C: CStrVarTmp
  loc_D0357D: CVarStr var_1D8
  loc_D03580: ImpAdCallI2 Format$(, )
  loc_D03585: CVarStr var_1F8
  loc_D03588: ConcatVar var_218
  loc_D0358C: LitVarStr var_24C, " AND "
  loc_D03591: ConcatVar var_22C
  loc_D03595: LitI4 1
  loc_D0359A: LitI4 1
  loc_D0359F: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D035A4: FStVarCopyObj var_26C
  loc_D035A7: FLdRfVar var_26C
  loc_D035AA: FLdRfVar var_23C
  loc_D035AD: CStrVarTmp
  loc_D035AE: CVarStr var_25C
  loc_D035B1: ImpAdCallI2 Format$(, )
  loc_D035B6: CVarStr var_27C
  loc_D035B9: ConcatVar var_29C
  loc_D035BD: CStrVarVal var_F0
  loc_D035C1: FLdPr var_E8
  loc_D035C4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D035C9: FFreeStr var_EC = ""
  loc_D035D0: FFreeAd var_B0 = "": var_198 = ""
  loc_D035D9: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03606: FLdPr Me
  loc_D03609: VCallAd Control_ID_DesdeMsk
  loc_D0360C: FStAdFunc var_198
  loc_D0360F: FLdPr var_198
  loc_D03612: LateIdLdVar var_1A8 DispID_15 0
  loc_D03619: PopAd
  loc_D0361B: FLdPr Me
  loc_D0361E: VCallAd Control_ID_HastaMsk
  loc_D03621: FStAdFunc var_21C
  loc_D03624: FLdPr var_21C
  loc_D03627: LateIdLdVar var_22C DispID_15 0
  loc_D0362E: PopAd
  loc_D03630: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado,"
  loc_D03633: LitStr " sum(InteDepa) as Cobrado, 0 Diferencia"
  loc_D03636: ConcatStr
  loc_D03637: FStStrNoPop var_EC
  loc_D0363A: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D0363D: ConcatStr
  loc_D0363E: CVarStr var_124
  loc_D03641: FLdPr Me
  loc_D03644: VCallAd Control_ID_DesdeMsk
  loc_D03647: FStAdFunc var_B0
  loc_D0364A: FLdPr var_B0
  loc_D0364D: LateIdLdVar var_C4 DispID_15 0
  loc_D03654: CStrVarTmp
  loc_D03655: CVarStr var_D4
  loc_D03658: FLdRfVar var_E4
  loc_D0365B: ImpAdCallFPR4  = Year()
  loc_D03660: FLdRfVar var_E4
  loc_D03663: ConcatVar var_134
  loc_D03667: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0366C: ConcatVar var_144
  loc_D03670: ImpAdLdI2 MemVar_D93034
  loc_D03673: CVarI2 var_AC
  loc_D03676: ConcatVar var_154
  loc_D0367A: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D0367F: ConcatVar var_174
  loc_D03683: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D03688: ConcatVar var_194
  loc_D0368C: LitI4 1
  loc_D03691: LitI4 1
  loc_D03696: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D0369B: FStVarCopyObj var_1D8
  loc_D0369E: FLdRfVar var_1D8
  loc_D036A1: FLdRfVar var_1A8
  loc_D036A4: CStrVarTmp
  loc_D036A5: CVarStr var_1B8
  loc_D036A8: ImpAdCallI2 Format$(, )
  loc_D036AD: CVarStr var_1E8
  loc_D036B0: ConcatVar var_1F8
  loc_D036B4: LitVarStr var_208, " AND "
  loc_D036B9: ConcatVar var_218
  loc_D036BD: LitI4 1
  loc_D036C2: LitI4 1
  loc_D036C7: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D036CC: FStVarCopyObj var_25C
  loc_D036CF: FLdRfVar var_25C
  loc_D036D2: FLdRfVar var_22C
  loc_D036D5: CStrVarTmp
  loc_D036D6: CVarStr var_23C
  loc_D036D9: ImpAdCallI2 Format$(, )
  loc_D036DE: CVarStr var_26C
  loc_D036E1: ConcatVar var_27C
  loc_D036E5: CStrVarVal var_F0
  loc_D036E9: FLdPr var_E8
  loc_D036EC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D036F1: FFreeStr var_EC = ""
  loc_D036F8: FFreeAd var_B0 = "": var_198 = ""
  loc_D03701: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D0372C: Branch loc_D05269
  loc_D0372F: LitStr "Municipalidad de Guaymallén"
  loc_D03732: LitStr "Municipalidad de Guaymallén"
  loc_D03735: EqStr
  loc_D03737: BranchF loc_D03D1C
  loc_D0373A: FLdPr Me
  loc_D0373D: VCallAd Control_ID_DesdeMsk
  loc_D03740: FStAdFunc var_198
  loc_D03743: FLdPr var_198
  loc_D03746: LateIdLdVar var_1A8 DispID_15 0
  loc_D0374D: PopAd
  loc_D0374F: FLdPr Me
  loc_D03752: VCallAd Control_ID_HastaMsk
  loc_D03755: FStAdFunc var_21C
  loc_D03758: FLdPr var_21C
  loc_D0375B: LateIdLdVar var_22C DispID_15 0
  loc_D03762: PopAd
  loc_D03764: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D03767: LitStr " sum(RecaDepa-DereDepa) as Cobrado, 0 as Diferencia "
  loc_D0376A: ConcatStr
  loc_D0376B: FStStrNoPop var_EC
  loc_D0376E: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03771: ConcatStr
  loc_D03772: CVarStr var_124
  loc_D03775: FLdPr Me
  loc_D03778: VCallAd Control_ID_DesdeMsk
  loc_D0377B: FStAdFunc var_B0
  loc_D0377E: FLdPr var_B0
  loc_D03781: LateIdLdVar var_C4 DispID_15 0
  loc_D03788: CStrVarTmp
  loc_D03789: CVarStr var_D4
  loc_D0378C: FLdRfVar var_E4
  loc_D0378F: ImpAdCallFPR4  = Year()
  loc_D03794: FLdRfVar var_E4
  loc_D03797: ConcatVar var_134
  loc_D0379B: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D037A0: ConcatVar var_144
  loc_D037A4: ImpAdLdI2 MemVar_D93034
  loc_D037A7: CVarI2 var_AC
  loc_D037AA: ConcatVar var_154
  loc_D037AE: LitVarStr var_164, " AND c.CodiConc = detapago.CodiConc"
  loc_D037B3: ConcatVar var_174
  loc_D037B7: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D037BC: ConcatVar var_194
  loc_D037C0: LitI4 1
  loc_D037C5: LitI4 1
  loc_D037CA: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D037CF: FStVarCopyObj var_1D8
  loc_D037D2: FLdRfVar var_1D8
  loc_D037D5: FLdRfVar var_1A8
  loc_D037D8: CStrVarTmp
  loc_D037D9: CVarStr var_1B8
  loc_D037DC: ImpAdCallI2 Format$(, )
  loc_D037E1: CVarStr var_1E8
  loc_D037E4: ConcatVar var_1F8
  loc_D037E8: LitVarStr var_208, " AND "
  loc_D037ED: ConcatVar var_218
  loc_D037F1: LitI4 1
  loc_D037F6: LitI4 1
  loc_D037FB: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D03800: FStVarCopyObj var_25C
  loc_D03803: FLdRfVar var_25C
  loc_D03806: FLdRfVar var_22C
  loc_D03809: CStrVarTmp
  loc_D0380A: CVarStr var_23C
  loc_D0380D: ImpAdCallI2 Format$(, )
  loc_D03812: CVarStr var_26C
  loc_D03815: ConcatVar var_27C
  loc_D03819: CStrVarVal var_F0
  loc_D0381D: FLdPr var_E8
  loc_D03820: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03825: FFreeStr var_EC = ""
  loc_D0382C: FFreeAd var_B0 = "": var_198 = ""
  loc_D03835: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D03860: FLdPr Me
  loc_D03863: VCallAd Control_ID_DesdeMsk
  loc_D03866: FStAdFunc var_198
  loc_D03869: FLdPr var_198
  loc_D0386C: LateIdLdVar var_1B8 DispID_15 0
  loc_D03873: PopAd
  loc_D03875: FLdPr Me
  loc_D03878: VCallAd Control_ID_HastaMsk
  loc_D0387B: FStAdFunc var_21C
  loc_D0387E: FLdPr var_21C
  loc_D03881: LateIdLdVar var_23C DispID_15 0
  loc_D03888: PopAd
  loc_D0388A: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoadPare as CodiConc, 0 Ingresado,"
  loc_D0388D: LitStr " SUM(CoadBoap+IcomBoap) as Cobrado, 0 as Diferencia"
  loc_D03890: ConcatStr
  loc_D03891: FStStrNoPop var_EC
  loc_D03894: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03897: ConcatStr
  loc_D03898: CVarStr var_124
  loc_D0389B: FLdPr Me
  loc_D0389E: VCallAd Control_ID_DesdeMsk
  loc_D038A1: FStAdFunc var_B0
  loc_D038A4: FLdPr var_B0
  loc_D038A7: LateIdLdVar var_C4 DispID_15 0
  loc_D038AE: CStrVarTmp
  loc_D038AF: CVarStr var_D4
  loc_D038B2: FLdRfVar var_E4
  loc_D038B5: ImpAdCallFPR4  = Year()
  loc_D038BA: FLdRfVar var_E4
  loc_D038BD: ConcatVar var_134
  loc_D038C1: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D038C6: ConcatVar var_144
  loc_D038CA: ImpAdLdI2 MemVar_D93034
  loc_D038CD: CVarI2 var_AC
  loc_D038D0: ConcatVar var_154
  loc_D038D4: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D038D9: ConcatVar var_174
  loc_D038DD: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D038E2: ConcatVar var_194
  loc_D038E6: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D038EB: ConcatVar var_1A8
  loc_D038EF: LitI4 1
  loc_D038F4: LitI4 1
  loc_D038F9: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D038FE: FStVarCopyObj var_1E8
  loc_D03901: FLdRfVar var_1E8
  loc_D03904: FLdRfVar var_1B8
  loc_D03907: CStrVarTmp
  loc_D03908: CVarStr var_1D8
  loc_D0390B: ImpAdCallI2 Format$(, )
  loc_D03910: CVarStr var_1F8
  loc_D03913: ConcatVar var_218
  loc_D03917: LitVarStr var_24C, " AND "
  loc_D0391C: ConcatVar var_22C
  loc_D03920: LitI4 1
  loc_D03925: LitI4 1
  loc_D0392A: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D0392F: FStVarCopyObj var_26C
  loc_D03932: FLdRfVar var_26C
  loc_D03935: FLdRfVar var_23C
  loc_D03938: CStrVarTmp
  loc_D03939: CVarStr var_25C
  loc_D0393C: ImpAdCallI2 Format$(, )
  loc_D03941: CVarStr var_27C
  loc_D03944: ConcatVar var_29C
  loc_D03948: CStrVarVal var_F0
  loc_D0394C: FLdPr var_E8
  loc_D0394F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03954: FFreeStr var_EC = ""
  loc_D0395B: FFreeAd var_B0 = "": var_198 = ""
  loc_D03964: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03991: FLdPr Me
  loc_D03994: VCallAd Control_ID_DesdeMsk
  loc_D03997: FStAdFunc var_198
  loc_D0399A: FLdPr var_198
  loc_D0399D: LateIdLdVar var_1B8 DispID_15 0
  loc_D039A4: PopAd
  loc_D039A6: FLdPr Me
  loc_D039A9: VCallAd Control_ID_HastaMsk
  loc_D039AC: FStAdFunc var_21C
  loc_D039AF: FLdPr var_21C
  loc_D039B2: LateIdLdVar var_23C DispID_15 0
  loc_D039B9: PopAd
  loc_D039BB: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D039BE: LitStr " SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as Cobrado, 0 as Diferencia"
  loc_D039C1: ConcatStr
  loc_D039C2: FStStrNoPop var_EC
  loc_D039C5: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D039C8: ConcatStr
  loc_D039C9: CVarStr var_124
  loc_D039CC: FLdPr Me
  loc_D039CF: VCallAd Control_ID_DesdeMsk
  loc_D039D2: FStAdFunc var_B0
  loc_D039D5: FLdPr var_B0
  loc_D039D8: LateIdLdVar var_C4 DispID_15 0
  loc_D039DF: CStrVarTmp
  loc_D039E0: CVarStr var_D4
  loc_D039E3: FLdRfVar var_E4
  loc_D039E6: ImpAdCallFPR4  = Year()
  loc_D039EB: FLdRfVar var_E4
  loc_D039EE: ConcatVar var_134
  loc_D039F2: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D039F7: ConcatVar var_144
  loc_D039FB: ImpAdLdI2 MemVar_D93034
  loc_D039FE: CVarI2 var_AC
  loc_D03A01: ConcatVar var_154
  loc_D03A05: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D03A0A: ConcatVar var_174
  loc_D03A0E: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D03A13: ConcatVar var_194
  loc_D03A17: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D03A1C: ConcatVar var_1A8
  loc_D03A20: LitI4 1
  loc_D03A25: LitI4 1
  loc_D03A2A: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03A2F: FStVarCopyObj var_1E8
  loc_D03A32: FLdRfVar var_1E8
  loc_D03A35: FLdRfVar var_1B8
  loc_D03A38: CStrVarTmp
  loc_D03A39: CVarStr var_1D8
  loc_D03A3C: ImpAdCallI2 Format$(, )
  loc_D03A41: CVarStr var_1F8
  loc_D03A44: ConcatVar var_218
  loc_D03A48: LitVarStr var_24C, " AND "
  loc_D03A4D: ConcatVar var_22C
  loc_D03A51: LitI4 1
  loc_D03A56: LitI4 1
  loc_D03A5B: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D03A60: FStVarCopyObj var_26C
  loc_D03A63: FLdRfVar var_26C
  loc_D03A66: FLdRfVar var_23C
  loc_D03A69: CStrVarTmp
  loc_D03A6A: CVarStr var_25C
  loc_D03A6D: ImpAdCallI2 Format$(, )
  loc_D03A72: CVarStr var_27C
  loc_D03A75: ConcatVar var_29C
  loc_D03A79: CStrVarVal var_F0
  loc_D03A7D: FLdPr var_E8
  loc_D03A80: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03A85: FFreeStr var_EC = ""
  loc_D03A8C: FFreeAd var_B0 = "": var_198 = ""
  loc_D03A95: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03AC2: FLdPr Me
  loc_D03AC5: VCallAd Control_ID_DesdeMsk
  loc_D03AC8: FStAdFunc var_198
  loc_D03ACB: FLdPr var_198
  loc_D03ACE: LateIdLdVar var_1B8 DispID_15 0
  loc_D03AD5: PopAd
  loc_D03AD7: FLdPr Me
  loc_D03ADA: VCallAd Control_ID_HastaMsk
  loc_D03ADD: FStAdFunc var_21C
  loc_D03AE0: FLdPr var_21C
  loc_D03AE3: LateIdLdVar var_23C DispID_15 0
  loc_D03AEA: PopAd
  loc_D03AEC: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoimPare as CodiConc, 0 Ingresado,"
  loc_D03AEF: LitStr " SUM(ApleBoap+DefiBoap+ReseBoap) as Cobrado, 0 as Diferencia "
  loc_D03AF2: ConcatStr
  loc_D03AF3: FStStrNoPop var_EC
  loc_D03AF6: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03AF9: ConcatStr
  loc_D03AFA: CVarStr var_124
  loc_D03AFD: FLdPr Me
  loc_D03B00: VCallAd Control_ID_DesdeMsk
  loc_D03B03: FStAdFunc var_B0
  loc_D03B06: FLdPr var_B0
  loc_D03B09: LateIdLdVar var_C4 DispID_15 0
  loc_D03B10: CStrVarTmp
  loc_D03B11: CVarStr var_D4
  loc_D03B14: FLdRfVar var_E4
  loc_D03B17: ImpAdCallFPR4  = Year()
  loc_D03B1C: FLdRfVar var_E4
  loc_D03B1F: ConcatVar var_134
  loc_D03B23: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03B28: ConcatVar var_144
  loc_D03B2C: ImpAdLdI2 MemVar_D93034
  loc_D03B2F: CVarI2 var_AC
  loc_D03B32: ConcatVar var_154
  loc_D03B36: LitVarStr var_164, " AND c.CodiConc = pararenta.CoimPare"
  loc_D03B3B: ConcatVar var_174
  loc_D03B3F: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D03B44: ConcatVar var_194
  loc_D03B48: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D03B4D: ConcatVar var_1A8
  loc_D03B51: LitI4 1
  loc_D03B56: LitI4 1
  loc_D03B5B: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03B60: FStVarCopyObj var_1E8
  loc_D03B63: FLdRfVar var_1E8
  loc_D03B66: FLdRfVar var_1B8
  loc_D03B69: CStrVarTmp
  loc_D03B6A: CVarStr var_1D8
  loc_D03B6D: ImpAdCallI2 Format$(, )
  loc_D03B72: CVarStr var_1F8
  loc_D03B75: ConcatVar var_218
  loc_D03B79: LitVarStr var_24C, " AND "
  loc_D03B7E: ConcatVar var_22C
  loc_D03B82: LitI4 1
  loc_D03B87: LitI4 1
  loc_D03B8C: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D03B91: FStVarCopyObj var_26C
  loc_D03B94: FLdRfVar var_26C
  loc_D03B97: FLdRfVar var_23C
  loc_D03B9A: CStrVarTmp
  loc_D03B9B: CVarStr var_25C
  loc_D03B9E: ImpAdCallI2 Format$(, )
  loc_D03BA3: CVarStr var_27C
  loc_D03BA6: ConcatVar var_29C
  loc_D03BAA: CStrVarVal var_F0
  loc_D03BAE: FLdPr var_E8
  loc_D03BB1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03BB6: FFreeStr var_EC = ""
  loc_D03BBD: FFreeAd var_B0 = "": var_198 = ""
  loc_D03BC6: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03BF3: FLdPr Me
  loc_D03BF6: VCallAd Control_ID_DesdeMsk
  loc_D03BF9: FStAdFunc var_198
  loc_D03BFC: FLdPr var_198
  loc_D03BFF: LateIdLdVar var_1A8 DispID_15 0
  loc_D03C06: PopAd
  loc_D03C08: FLdPr Me
  loc_D03C0B: VCallAd Control_ID_HastaMsk
  loc_D03C0E: FStAdFunc var_21C
  loc_D03C11: FLdPr var_21C
  loc_D03C14: LateIdLdVar var_22C DispID_15 0
  loc_D03C1B: PopAd
  loc_D03C1D: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado, "
  loc_D03C20: LitStr " sum(InteDepa) as Cobrado, 0 Diferencia"
  loc_D03C23: ConcatStr
  loc_D03C24: FStStrNoPop var_EC
  loc_D03C27: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03C2A: ConcatStr
  loc_D03C2B: CVarStr var_124
  loc_D03C2E: FLdPr Me
  loc_D03C31: VCallAd Control_ID_DesdeMsk
  loc_D03C34: FStAdFunc var_B0
  loc_D03C37: FLdPr var_B0
  loc_D03C3A: LateIdLdVar var_C4 DispID_15 0
  loc_D03C41: CStrVarTmp
  loc_D03C42: CVarStr var_D4
  loc_D03C45: FLdRfVar var_E4
  loc_D03C48: ImpAdCallFPR4  = Year()
  loc_D03C4D: FLdRfVar var_E4
  loc_D03C50: ConcatVar var_134
  loc_D03C54: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03C59: ConcatVar var_144
  loc_D03C5D: ImpAdLdI2 MemVar_D93034
  loc_D03C60: CVarI2 var_AC
  loc_D03C63: ConcatVar var_154
  loc_D03C67: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D03C6C: ConcatVar var_174
  loc_D03C70: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D03C75: ConcatVar var_194
  loc_D03C79: LitI4 1
  loc_D03C7E: LitI4 1
  loc_D03C83: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D03C88: FStVarCopyObj var_1D8
  loc_D03C8B: FLdRfVar var_1D8
  loc_D03C8E: FLdRfVar var_1A8
  loc_D03C91: CStrVarTmp
  loc_D03C92: CVarStr var_1B8
  loc_D03C95: ImpAdCallI2 Format$(, )
  loc_D03C9A: CVarStr var_1E8
  loc_D03C9D: ConcatVar var_1F8
  loc_D03CA1: LitVarStr var_208, " AND "
  loc_D03CA6: ConcatVar var_218
  loc_D03CAA: LitI4 1
  loc_D03CAF: LitI4 1
  loc_D03CB4: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D03CB9: FStVarCopyObj var_25C
  loc_D03CBC: FLdRfVar var_25C
  loc_D03CBF: FLdRfVar var_22C
  loc_D03CC2: CStrVarTmp
  loc_D03CC3: CVarStr var_23C
  loc_D03CC6: ImpAdCallI2 Format$(, )
  loc_D03CCB: CVarStr var_26C
  loc_D03CCE: ConcatVar var_27C
  loc_D03CD2: CStrVarVal var_F0
  loc_D03CD6: FLdPr var_E8
  loc_D03CD9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03CDE: FFreeStr var_EC = ""
  loc_D03CE5: FFreeAd var_B0 = "": var_198 = ""
  loc_D03CEE: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D03D19: Branch loc_D05269
  loc_D03D1C: LitStr "Municipalidad de Guaymallén"
  loc_D03D1F: LitStr "Municipalidad de Santa Rosa"
  loc_D03D22: EqStr
  loc_D03D24: LitStr "Municipalidad de Guaymallén"
  loc_D03D27: LitStr "Municipalidad de La Paz"
  loc_D03D2A: EqStr
  loc_D03D2C: OrI4
  loc_D03D2D: BranchF loc_D04312
  loc_D03D30: FLdPr Me
  loc_D03D33: VCallAd Control_ID_DesdeMsk
  loc_D03D36: FStAdFunc var_198
  loc_D03D39: FLdPr var_198
  loc_D03D3C: LateIdLdVar var_1A8 DispID_15 0
  loc_D03D43: PopAd
  loc_D03D45: FLdPr Me
  loc_D03D48: VCallAd Control_ID_HastaMsk
  loc_D03D4B: FStAdFunc var_21C
  loc_D03D4E: FLdPr var_21C
  loc_D03D51: LateIdLdVar var_22C DispID_15 0
  loc_D03D58: PopAd
  loc_D03D5A: LitStr " INSERT INTO tmp_conc SELECT IFNULL(c.IngrConc,'') IngrConc, IFNULL(pararenta.CorePare,'') as CodiConc, 0 Ingresado,"
  loc_D03D5D: LitStr " IFNULL(sum(RecaDepa-DereDepa),0) as Cobrado, 0 as Diferencia "
  loc_D03D60: ConcatStr
  loc_D03D61: FStStrNoPop var_EC
  loc_D03D64: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03D67: ConcatStr
  loc_D03D68: CVarStr var_124
  loc_D03D6B: FLdPr Me
  loc_D03D6E: VCallAd Control_ID_DesdeMsk
  loc_D03D71: FStAdFunc var_B0
  loc_D03D74: FLdPr var_B0
  loc_D03D77: LateIdLdVar var_C4 DispID_15 0
  loc_D03D7E: CStrVarTmp
  loc_D03D7F: CVarStr var_D4
  loc_D03D82: FLdRfVar var_E4
  loc_D03D85: ImpAdCallFPR4  = Year()
  loc_D03D8A: FLdRfVar var_E4
  loc_D03D8D: ConcatVar var_134
  loc_D03D91: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03D96: ConcatVar var_144
  loc_D03D9A: ImpAdLdI2 MemVar_D93034
  loc_D03D9D: CVarI2 var_AC
  loc_D03DA0: ConcatVar var_154
  loc_D03DA4: LitVarStr var_164, " AND c.CodiConc = detapago.CodiConc"
  loc_D03DA9: ConcatVar var_174
  loc_D03DAD: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D03DB2: ConcatVar var_194
  loc_D03DB6: LitI4 1
  loc_D03DBB: LitI4 1
  loc_D03DC0: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D03DC5: FStVarCopyObj var_1D8
  loc_D03DC8: FLdRfVar var_1D8
  loc_D03DCB: FLdRfVar var_1A8
  loc_D03DCE: CStrVarTmp
  loc_D03DCF: CVarStr var_1B8
  loc_D03DD2: ImpAdCallI2 Format$(, )
  loc_D03DD7: CVarStr var_1E8
  loc_D03DDA: ConcatVar var_1F8
  loc_D03DDE: LitVarStr var_208, " AND "
  loc_D03DE3: ConcatVar var_218
  loc_D03DE7: LitI4 1
  loc_D03DEC: LitI4 1
  loc_D03DF1: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D03DF6: FStVarCopyObj var_25C
  loc_D03DF9: FLdRfVar var_25C
  loc_D03DFC: FLdRfVar var_22C
  loc_D03DFF: CStrVarTmp
  loc_D03E00: CVarStr var_23C
  loc_D03E03: ImpAdCallI2 Format$(, )
  loc_D03E08: CVarStr var_26C
  loc_D03E0B: ConcatVar var_27C
  loc_D03E0F: CStrVarVal var_F0
  loc_D03E13: FLdPr var_E8
  loc_D03E16: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03E1B: FFreeStr var_EC = ""
  loc_D03E22: FFreeAd var_B0 = "": var_198 = ""
  loc_D03E2B: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D03E56: FLdPr Me
  loc_D03E59: VCallAd Control_ID_DesdeMsk
  loc_D03E5C: FStAdFunc var_198
  loc_D03E5F: FLdPr var_198
  loc_D03E62: LateIdLdVar var_1B8 DispID_15 0
  loc_D03E69: PopAd
  loc_D03E6B: FLdPr Me
  loc_D03E6E: VCallAd Control_ID_HastaMsk
  loc_D03E71: FStAdFunc var_21C
  loc_D03E74: FLdPr var_21C
  loc_D03E77: LateIdLdVar var_23C DispID_15 0
  loc_D03E7E: PopAd
  loc_D03E80: LitStr " INSERT INTO tmp_conc SELECT IFNULL(c.IngrConc,'') IngrConc , IFNULL(pararenta.CoadPare,'') as CodiConc, 0 Ingresado,"
  loc_D03E83: LitStr " IFNULL(SUM(CoadBoap+IcomBoap),0) as Cobrado, 0 as Diferencia"
  loc_D03E86: ConcatStr
  loc_D03E87: FStStrNoPop var_EC
  loc_D03E8A: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03E8D: ConcatStr
  loc_D03E8E: CVarStr var_124
  loc_D03E91: FLdPr Me
  loc_D03E94: VCallAd Control_ID_DesdeMsk
  loc_D03E97: FStAdFunc var_B0
  loc_D03E9A: FLdPr var_B0
  loc_D03E9D: LateIdLdVar var_C4 DispID_15 0
  loc_D03EA4: CStrVarTmp
  loc_D03EA5: CVarStr var_D4
  loc_D03EA8: FLdRfVar var_E4
  loc_D03EAB: ImpAdCallFPR4  = Year()
  loc_D03EB0: FLdRfVar var_E4
  loc_D03EB3: ConcatVar var_134
  loc_D03EB7: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03EBC: ConcatVar var_144
  loc_D03EC0: ImpAdLdI2 MemVar_D93034
  loc_D03EC3: CVarI2 var_AC
  loc_D03EC6: ConcatVar var_154
  loc_D03ECA: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D03ECF: ConcatVar var_174
  loc_D03ED3: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D03ED8: ConcatVar var_194
  loc_D03EDC: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D03EE1: ConcatVar var_1A8
  loc_D03EE5: LitI4 1
  loc_D03EEA: LitI4 1
  loc_D03EEF: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D03EF4: FStVarCopyObj var_1E8
  loc_D03EF7: FLdRfVar var_1E8
  loc_D03EFA: FLdRfVar var_1B8
  loc_D03EFD: CStrVarTmp
  loc_D03EFE: CVarStr var_1D8
  loc_D03F01: ImpAdCallI2 Format$(, )
  loc_D03F06: CVarStr var_1F8
  loc_D03F09: ConcatVar var_218
  loc_D03F0D: LitVarStr var_24C, " AND "
  loc_D03F12: ConcatVar var_22C
  loc_D03F16: LitI4 1
  loc_D03F1B: LitI4 1
  loc_D03F20: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D03F25: FStVarCopyObj var_26C
  loc_D03F28: FLdRfVar var_26C
  loc_D03F2B: FLdRfVar var_23C
  loc_D03F2E: CStrVarTmp
  loc_D03F2F: CVarStr var_25C
  loc_D03F32: ImpAdCallI2 Format$(, )
  loc_D03F37: CVarStr var_27C
  loc_D03F3A: ConcatVar var_29C
  loc_D03F3E: CStrVarVal var_F0
  loc_D03F42: FLdPr var_E8
  loc_D03F45: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D03F4A: FFreeStr var_EC = ""
  loc_D03F51: FFreeAd var_B0 = "": var_198 = ""
  loc_D03F5A: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D03F87: FLdPr Me
  loc_D03F8A: VCallAd Control_ID_DesdeMsk
  loc_D03F8D: FStAdFunc var_198
  loc_D03F90: FLdPr var_198
  loc_D03F93: LateIdLdVar var_1B8 DispID_15 0
  loc_D03F9A: PopAd
  loc_D03F9C: FLdPr Me
  loc_D03F9F: VCallAd Control_ID_HastaMsk
  loc_D03FA2: FStAdFunc var_21C
  loc_D03FA5: FLdPr var_21C
  loc_D03FA8: LateIdLdVar var_23C DispID_15 0
  loc_D03FAF: PopAd
  loc_D03FB1: LitStr " INSERT INTO tmp_conc SELECT IFNULL(c.IngrConc,'') IngrConc, IFNULL(pararenta.CoapPare,'') as CodiConc, 0 Ingresado,"
  loc_D03FB4: LitStr " IFNULL(SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap),0) as Cobrado, 0 as Diferencia"
  loc_D03FB7: ConcatStr
  loc_D03FB8: FStStrNoPop var_EC
  loc_D03FBB: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D03FBE: ConcatStr
  loc_D03FBF: CVarStr var_124
  loc_D03FC2: FLdPr Me
  loc_D03FC5: VCallAd Control_ID_DesdeMsk
  loc_D03FC8: FStAdFunc var_B0
  loc_D03FCB: FLdPr var_B0
  loc_D03FCE: LateIdLdVar var_C4 DispID_15 0
  loc_D03FD5: CStrVarTmp
  loc_D03FD6: CVarStr var_D4
  loc_D03FD9: FLdRfVar var_E4
  loc_D03FDC: ImpAdCallFPR4  = Year()
  loc_D03FE1: FLdRfVar var_E4
  loc_D03FE4: ConcatVar var_134
  loc_D03FE8: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D03FED: ConcatVar var_144
  loc_D03FF1: ImpAdLdI2 MemVar_D93034
  loc_D03FF4: CVarI2 var_AC
  loc_D03FF7: ConcatVar var_154
  loc_D03FFB: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D04000: ConcatVar var_174
  loc_D04004: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D04009: ConcatVar var_194
  loc_D0400D: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D04012: ConcatVar var_1A8
  loc_D04016: LitI4 1
  loc_D0401B: LitI4 1
  loc_D04020: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04025: FStVarCopyObj var_1E8
  loc_D04028: FLdRfVar var_1E8
  loc_D0402B: FLdRfVar var_1B8
  loc_D0402E: CStrVarTmp
  loc_D0402F: CVarStr var_1D8
  loc_D04032: ImpAdCallI2 Format$(, )
  loc_D04037: CVarStr var_1F8
  loc_D0403A: ConcatVar var_218
  loc_D0403E: LitVarStr var_24C, " AND "
  loc_D04043: ConcatVar var_22C
  loc_D04047: LitI4 1
  loc_D0404C: LitI4 1
  loc_D04051: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04056: FStVarCopyObj var_26C
  loc_D04059: FLdRfVar var_26C
  loc_D0405C: FLdRfVar var_23C
  loc_D0405F: CStrVarTmp
  loc_D04060: CVarStr var_25C
  loc_D04063: ImpAdCallI2 Format$(, )
  loc_D04068: CVarStr var_27C
  loc_D0406B: ConcatVar var_29C
  loc_D0406F: CStrVarVal var_F0
  loc_D04073: FLdPr var_E8
  loc_D04076: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D0407B: FFreeStr var_EC = ""
  loc_D04082: FFreeAd var_B0 = "": var_198 = ""
  loc_D0408B: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D040B8: FLdPr Me
  loc_D040BB: VCallAd Control_ID_DesdeMsk
  loc_D040BE: FStAdFunc var_198
  loc_D040C1: FLdPr var_198
  loc_D040C4: LateIdLdVar var_1B8 DispID_15 0
  loc_D040CB: PopAd
  loc_D040CD: FLdPr Me
  loc_D040D0: VCallAd Control_ID_HastaMsk
  loc_D040D3: FStAdFunc var_21C
  loc_D040D6: FLdPr var_21C
  loc_D040D9: LateIdLdVar var_23C DispID_15 0
  loc_D040E0: PopAd
  loc_D040E2: LitStr " INSERT INTO tmp_conc SELECT IFNULL(c.IngrConc,0), IFNULL(pararenta.CoimPare,0) as CodiConc, 0 Ingresado,"
  loc_D040E5: LitStr " IFNULL(SUM(ApleBoap+DefiBoap+ReseBoap),0) as Cobrado, 0 as Diferencia "
  loc_D040E8: ConcatStr
  loc_D040E9: FStStrNoPop var_EC
  loc_D040EC: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D040EF: ConcatStr
  loc_D040F0: CVarStr var_124
  loc_D040F3: FLdPr Me
  loc_D040F6: VCallAd Control_ID_DesdeMsk
  loc_D040F9: FStAdFunc var_B0
  loc_D040FC: FLdPr var_B0
  loc_D040FF: LateIdLdVar var_C4 DispID_15 0
  loc_D04106: CStrVarTmp
  loc_D04107: CVarStr var_D4
  loc_D0410A: FLdRfVar var_E4
  loc_D0410D: ImpAdCallFPR4  = Year()
  loc_D04112: FLdRfVar var_E4
  loc_D04115: ConcatVar var_134
  loc_D04119: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0411E: ConcatVar var_144
  loc_D04122: ImpAdLdI2 MemVar_D93034
  loc_D04125: CVarI2 var_AC
  loc_D04128: ConcatVar var_154
  loc_D0412C: LitVarStr var_164, " AND c.CodiConc = pararenta.CoimPare"
  loc_D04131: ConcatVar var_174
  loc_D04135: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D0413A: ConcatVar var_194
  loc_D0413E: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D04143: ConcatVar var_1A8
  loc_D04147: LitI4 1
  loc_D0414C: LitI4 1
  loc_D04151: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04156: FStVarCopyObj var_1E8
  loc_D04159: FLdRfVar var_1E8
  loc_D0415C: FLdRfVar var_1B8
  loc_D0415F: CStrVarTmp
  loc_D04160: CVarStr var_1D8
  loc_D04163: ImpAdCallI2 Format$(, )
  loc_D04168: CVarStr var_1F8
  loc_D0416B: ConcatVar var_218
  loc_D0416F: LitVarStr var_24C, " AND "
  loc_D04174: ConcatVar var_22C
  loc_D04178: LitI4 1
  loc_D0417D: LitI4 1
  loc_D04182: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04187: FStVarCopyObj var_26C
  loc_D0418A: FLdRfVar var_26C
  loc_D0418D: FLdRfVar var_23C
  loc_D04190: CStrVarTmp
  loc_D04191: CVarStr var_25C
  loc_D04194: ImpAdCallI2 Format$(, )
  loc_D04199: CVarStr var_27C
  loc_D0419C: ConcatVar var_29C
  loc_D041A0: CStrVarVal var_F0
  loc_D041A4: FLdPr var_E8
  loc_D041A7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D041AC: FFreeStr var_EC = ""
  loc_D041B3: FFreeAd var_B0 = "": var_198 = ""
  loc_D041BC: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D041E9: FLdPr Me
  loc_D041EC: VCallAd Control_ID_DesdeMsk
  loc_D041EF: FStAdFunc var_198
  loc_D041F2: FLdPr var_198
  loc_D041F5: LateIdLdVar var_1A8 DispID_15 0
  loc_D041FC: PopAd
  loc_D041FE: FLdPr Me
  loc_D04201: VCallAd Control_ID_HastaMsk
  loc_D04204: FStAdFunc var_21C
  loc_D04207: FLdPr var_21C
  loc_D0420A: LateIdLdVar var_22C DispID_15 0
  loc_D04211: PopAd
  loc_D04213: LitStr " INSERT INTO tmp_conc SELECT IFNULL(c.IngrConc,'') IngrConc, IFNULL(pararenta.CoinPare,'') as CodiConc, 0 Ingresado, "
  loc_D04216: LitStr " IFNULL(sum(InteDepa),0) as Cobrado, 0 Diferencia"
  loc_D04219: ConcatStr
  loc_D0421A: FStStrNoPop var_EC
  loc_D0421D: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04220: ConcatStr
  loc_D04221: CVarStr var_124
  loc_D04224: FLdPr Me
  loc_D04227: VCallAd Control_ID_DesdeMsk
  loc_D0422A: FStAdFunc var_B0
  loc_D0422D: FLdPr var_B0
  loc_D04230: LateIdLdVar var_C4 DispID_15 0
  loc_D04237: CStrVarTmp
  loc_D04238: CVarStr var_D4
  loc_D0423B: FLdRfVar var_E4
  loc_D0423E: ImpAdCallFPR4  = Year()
  loc_D04243: FLdRfVar var_E4
  loc_D04246: ConcatVar var_134
  loc_D0424A: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0424F: ConcatVar var_144
  loc_D04253: ImpAdLdI2 MemVar_D93034
  loc_D04256: CVarI2 var_AC
  loc_D04259: ConcatVar var_154
  loc_D0425D: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D04262: ConcatVar var_174
  loc_D04266: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D0426B: ConcatVar var_194
  loc_D0426F: LitI4 1
  loc_D04274: LitI4 1
  loc_D04279: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D0427E: FStVarCopyObj var_1D8
  loc_D04281: FLdRfVar var_1D8
  loc_D04284: FLdRfVar var_1A8
  loc_D04287: CStrVarTmp
  loc_D04288: CVarStr var_1B8
  loc_D0428B: ImpAdCallI2 Format$(, )
  loc_D04290: CVarStr var_1E8
  loc_D04293: ConcatVar var_1F8
  loc_D04297: LitVarStr var_208, " AND "
  loc_D0429C: ConcatVar var_218
  loc_D042A0: LitI4 1
  loc_D042A5: LitI4 1
  loc_D042AA: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D042AF: FStVarCopyObj var_25C
  loc_D042B2: FLdRfVar var_25C
  loc_D042B5: FLdRfVar var_22C
  loc_D042B8: CStrVarTmp
  loc_D042B9: CVarStr var_23C
  loc_D042BC: ImpAdCallI2 Format$(, )
  loc_D042C1: CVarStr var_26C
  loc_D042C4: ConcatVar var_27C
  loc_D042C8: CStrVarVal var_F0
  loc_D042CC: FLdPr var_E8
  loc_D042CF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D042D4: FFreeStr var_EC = ""
  loc_D042DB: FFreeAd var_B0 = "": var_198 = ""
  loc_D042E4: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D0430F: Branch loc_D05269
  loc_D04312: LitStr "Municipalidad de Guaymallén"
  loc_D04315: LitStr "Municipalidad de San Martin"
  loc_D04318: EqStr
  loc_D0431A: BranchF loc_D047CE
  loc_D0431D: FLdPr Me
  loc_D04320: VCallAd Control_ID_DesdeMsk
  loc_D04323: FStAdFunc var_198
  loc_D04326: FLdPr var_198
  loc_D04329: LateIdLdVar var_1A8 DispID_15 0
  loc_D04330: PopAd
  loc_D04332: FLdPr Me
  loc_D04335: VCallAd Control_ID_HastaMsk
  loc_D04338: FStAdFunc var_21C
  loc_D0433B: FLdPr var_21C
  loc_D0433E: LateIdLdVar var_22C DispID_15 0
  loc_D04345: PopAd
  loc_D04347: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D0434A: LitStr " sum(RecaDepa-DereDepa) as Cobrado, 0 as Diferencia "
  loc_D0434D: ConcatStr
  loc_D0434E: FStStrNoPop var_EC
  loc_D04351: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04354: ConcatStr
  loc_D04355: CVarStr var_124
  loc_D04358: FLdPr Me
  loc_D0435B: VCallAd Control_ID_DesdeMsk
  loc_D0435E: FStAdFunc var_B0
  loc_D04361: FLdPr var_B0
  loc_D04364: LateIdLdVar var_C4 DispID_15 0
  loc_D0436B: CStrVarTmp
  loc_D0436C: CVarStr var_D4
  loc_D0436F: FLdRfVar var_E4
  loc_D04372: ImpAdCallFPR4  = Year()
  loc_D04377: FLdRfVar var_E4
  loc_D0437A: ConcatVar var_134
  loc_D0437E: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04383: ConcatVar var_144
  loc_D04387: ImpAdLdI2 MemVar_D93034
  loc_D0438A: CVarI2 var_AC
  loc_D0438D: ConcatVar var_154
  loc_D04391: LitVarStr var_164, " AND c.CodiConc = detapago.CodiConc"
  loc_D04396: ConcatVar var_174
  loc_D0439A: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D0439F: ConcatVar var_194
  loc_D043A3: LitI4 1
  loc_D043A8: LitI4 1
  loc_D043AD: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D043B2: FStVarCopyObj var_1D8
  loc_D043B5: FLdRfVar var_1D8
  loc_D043B8: FLdRfVar var_1A8
  loc_D043BB: CStrVarTmp
  loc_D043BC: CVarStr var_1B8
  loc_D043BF: ImpAdCallI2 Format$(, )
  loc_D043C4: CVarStr var_1E8
  loc_D043C7: ConcatVar var_1F8
  loc_D043CB: LitVarStr var_208, " AND "
  loc_D043D0: ConcatVar var_218
  loc_D043D4: LitI4 1
  loc_D043D9: LitI4 1
  loc_D043DE: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D043E3: FStVarCopyObj var_25C
  loc_D043E6: FLdRfVar var_25C
  loc_D043E9: FLdRfVar var_22C
  loc_D043EC: CStrVarTmp
  loc_D043ED: CVarStr var_23C
  loc_D043F0: ImpAdCallI2 Format$(, )
  loc_D043F5: CVarStr var_26C
  loc_D043F8: ConcatVar var_27C
  loc_D043FC: CStrVarVal var_F0
  loc_D04400: FLdPr var_E8
  loc_D04403: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04408: FFreeStr var_EC = ""
  loc_D0440F: FFreeAd var_B0 = "": var_198 = ""
  loc_D04418: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D04443: FLdPr Me
  loc_D04446: VCallAd Control_ID_DesdeMsk
  loc_D04449: FStAdFunc var_198
  loc_D0444C: FLdPr var_198
  loc_D0444F: LateIdLdVar var_1B8 DispID_15 0
  loc_D04456: PopAd
  loc_D04458: FLdPr Me
  loc_D0445B: VCallAd Control_ID_HastaMsk
  loc_D0445E: FStAdFunc var_21C
  loc_D04461: FLdPr var_21C
  loc_D04464: LateIdLdVar var_23C DispID_15 0
  loc_D0446B: PopAd
  loc_D0446D: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D04470: LitStr " SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as Cobrado, 0 as Diferencia"
  loc_D04473: ConcatStr
  loc_D04474: FStStrNoPop var_EC
  loc_D04477: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D0447A: ConcatStr
  loc_D0447B: CVarStr var_124
  loc_D0447E: FLdPr Me
  loc_D04481: VCallAd Control_ID_DesdeMsk
  loc_D04484: FStAdFunc var_B0
  loc_D04487: FLdPr var_B0
  loc_D0448A: LateIdLdVar var_C4 DispID_15 0
  loc_D04491: CStrVarTmp
  loc_D04492: CVarStr var_D4
  loc_D04495: FLdRfVar var_E4
  loc_D04498: ImpAdCallFPR4  = Year()
  loc_D0449D: FLdRfVar var_E4
  loc_D044A0: ConcatVar var_134
  loc_D044A4: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D044A9: ConcatVar var_144
  loc_D044AD: ImpAdLdI2 MemVar_D93034
  loc_D044B0: CVarI2 var_AC
  loc_D044B3: ConcatVar var_154
  loc_D044B7: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D044BC: ConcatVar var_174
  loc_D044C0: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D044C5: ConcatVar var_194
  loc_D044C9: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D044CE: ConcatVar var_1A8
  loc_D044D2: LitI4 1
  loc_D044D7: LitI4 1
  loc_D044DC: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D044E1: FStVarCopyObj var_1E8
  loc_D044E4: FLdRfVar var_1E8
  loc_D044E7: FLdRfVar var_1B8
  loc_D044EA: CStrVarTmp
  loc_D044EB: CVarStr var_1D8
  loc_D044EE: ImpAdCallI2 Format$(, )
  loc_D044F3: CVarStr var_1F8
  loc_D044F6: ConcatVar var_218
  loc_D044FA: LitVarStr var_24C, " AND "
  loc_D044FF: ConcatVar var_22C
  loc_D04503: LitI4 1
  loc_D04508: LitI4 1
  loc_D0450D: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04512: FStVarCopyObj var_26C
  loc_D04515: FLdRfVar var_26C
  loc_D04518: FLdRfVar var_23C
  loc_D0451B: CStrVarTmp
  loc_D0451C: CVarStr var_25C
  loc_D0451F: ImpAdCallI2 Format$(, )
  loc_D04524: CVarStr var_27C
  loc_D04527: ConcatVar var_29C
  loc_D0452B: CStrVarVal var_F0
  loc_D0452F: FLdPr var_E8
  loc_D04532: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04537: FFreeStr var_EC = ""
  loc_D0453E: FFreeAd var_B0 = "": var_198 = ""
  loc_D04547: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D04574: FLdPr Me
  loc_D04577: VCallAd Control_ID_DesdeMsk
  loc_D0457A: FStAdFunc var_198
  loc_D0457D: FLdPr var_198
  loc_D04580: LateIdLdVar var_1B8 DispID_15 0
  loc_D04587: PopAd
  loc_D04589: FLdPr Me
  loc_D0458C: VCallAd Control_ID_HastaMsk
  loc_D0458F: FStAdFunc var_21C
  loc_D04592: FLdPr var_21C
  loc_D04595: LateIdLdVar var_23C DispID_15 0
  loc_D0459C: PopAd
  loc_D0459E: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoimPare as CodiConc, 0 Ingresado,"
  loc_D045A1: LitStr " SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as Cobrado, 0 as Diferencia "
  loc_D045A4: ConcatStr
  loc_D045A5: FStStrNoPop var_EC
  loc_D045A8: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D045AB: ConcatStr
  loc_D045AC: CVarStr var_124
  loc_D045AF: FLdPr Me
  loc_D045B2: VCallAd Control_ID_DesdeMsk
  loc_D045B5: FStAdFunc var_B0
  loc_D045B8: FLdPr var_B0
  loc_D045BB: LateIdLdVar var_C4 DispID_15 0
  loc_D045C2: CStrVarTmp
  loc_D045C3: CVarStr var_D4
  loc_D045C6: FLdRfVar var_E4
  loc_D045C9: ImpAdCallFPR4  = Year()
  loc_D045CE: FLdRfVar var_E4
  loc_D045D1: ConcatVar var_134
  loc_D045D5: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D045DA: ConcatVar var_144
  loc_D045DE: ImpAdLdI2 MemVar_D93034
  loc_D045E1: CVarI2 var_AC
  loc_D045E4: ConcatVar var_154
  loc_D045E8: LitVarStr var_164, " AND c.CodiConc = pararenta.CoimPare"
  loc_D045ED: ConcatVar var_174
  loc_D045F1: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D045F6: ConcatVar var_194
  loc_D045FA: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D045FF: ConcatVar var_1A8
  loc_D04603: LitI4 1
  loc_D04608: LitI4 1
  loc_D0460D: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04612: FStVarCopyObj var_1E8
  loc_D04615: FLdRfVar var_1E8
  loc_D04618: FLdRfVar var_1B8
  loc_D0461B: CStrVarTmp
  loc_D0461C: CVarStr var_1D8
  loc_D0461F: ImpAdCallI2 Format$(, )
  loc_D04624: CVarStr var_1F8
  loc_D04627: ConcatVar var_218
  loc_D0462B: LitVarStr var_24C, " AND "
  loc_D04630: ConcatVar var_22C
  loc_D04634: LitI4 1
  loc_D04639: LitI4 1
  loc_D0463E: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04643: FStVarCopyObj var_26C
  loc_D04646: FLdRfVar var_26C
  loc_D04649: FLdRfVar var_23C
  loc_D0464C: CStrVarTmp
  loc_D0464D: CVarStr var_25C
  loc_D04650: ImpAdCallI2 Format$(, )
  loc_D04655: CVarStr var_27C
  loc_D04658: ConcatVar var_29C
  loc_D0465C: CStrVarVal var_F0
  loc_D04660: FLdPr var_E8
  loc_D04663: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04668: FFreeStr var_EC = ""
  loc_D0466F: FFreeAd var_B0 = "": var_198 = ""
  loc_D04678: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D046A5: FLdPr Me
  loc_D046A8: VCallAd Control_ID_DesdeMsk
  loc_D046AB: FStAdFunc var_198
  loc_D046AE: FLdPr var_198
  loc_D046B1: LateIdLdVar var_1A8 DispID_15 0
  loc_D046B8: PopAd
  loc_D046BA: FLdPr Me
  loc_D046BD: VCallAd Control_ID_HastaMsk
  loc_D046C0: FStAdFunc var_21C
  loc_D046C3: FLdPr var_21C
  loc_D046C6: LateIdLdVar var_22C DispID_15 0
  loc_D046CD: PopAd
  loc_D046CF: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado, "
  loc_D046D2: LitStr " sum(InteDepa) as Cobrado, 0 Diferencia"
  loc_D046D5: ConcatStr
  loc_D046D6: FStStrNoPop var_EC
  loc_D046D9: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D046DC: ConcatStr
  loc_D046DD: CVarStr var_124
  loc_D046E0: FLdPr Me
  loc_D046E3: VCallAd Control_ID_DesdeMsk
  loc_D046E6: FStAdFunc var_B0
  loc_D046E9: FLdPr var_B0
  loc_D046EC: LateIdLdVar var_C4 DispID_15 0
  loc_D046F3: CStrVarTmp
  loc_D046F4: CVarStr var_D4
  loc_D046F7: FLdRfVar var_E4
  loc_D046FA: ImpAdCallFPR4  = Year()
  loc_D046FF: FLdRfVar var_E4
  loc_D04702: ConcatVar var_134
  loc_D04706: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0470B: ConcatVar var_144
  loc_D0470F: ImpAdLdI2 MemVar_D93034
  loc_D04712: CVarI2 var_AC
  loc_D04715: ConcatVar var_154
  loc_D04719: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D0471E: ConcatVar var_174
  loc_D04722: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D04727: ConcatVar var_194
  loc_D0472B: LitI4 1
  loc_D04730: LitI4 1
  loc_D04735: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D0473A: FStVarCopyObj var_1D8
  loc_D0473D: FLdRfVar var_1D8
  loc_D04740: FLdRfVar var_1A8
  loc_D04743: CStrVarTmp
  loc_D04744: CVarStr var_1B8
  loc_D04747: ImpAdCallI2 Format$(, )
  loc_D0474C: CVarStr var_1E8
  loc_D0474F: ConcatVar var_1F8
  loc_D04753: LitVarStr var_208, " AND "
  loc_D04758: ConcatVar var_218
  loc_D0475C: LitI4 1
  loc_D04761: LitI4 1
  loc_D04766: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D0476B: FStVarCopyObj var_25C
  loc_D0476E: FLdRfVar var_25C
  loc_D04771: FLdRfVar var_22C
  loc_D04774: CStrVarTmp
  loc_D04775: CVarStr var_23C
  loc_D04778: ImpAdCallI2 Format$(, )
  loc_D0477D: CVarStr var_26C
  loc_D04780: ConcatVar var_27C
  loc_D04784: CStrVarVal var_F0
  loc_D04788: FLdPr var_E8
  loc_D0478B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04790: FFreeStr var_EC = ""
  loc_D04797: FFreeAd var_B0 = "": var_198 = ""
  loc_D047A0: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D047CB: Branch loc_D05269
  loc_D047CE: LitStr "Municipalidad de Guaymallén"
  loc_D047D1: LitStr "Municipalidad de Tupungato"
  loc_D047D4: EqStr
  loc_D047D6: BranchF loc_D04DBB
  loc_D047D9: FLdPr Me
  loc_D047DC: VCallAd Control_ID_DesdeMsk
  loc_D047DF: FStAdFunc var_198
  loc_D047E2: FLdPr var_198
  loc_D047E5: LateIdLdVar var_1A8 DispID_15 0
  loc_D047EC: PopAd
  loc_D047EE: FLdPr Me
  loc_D047F1: VCallAd Control_ID_HastaMsk
  loc_D047F4: FStAdFunc var_21C
  loc_D047F7: FLdPr var_21C
  loc_D047FA: LateIdLdVar var_22C DispID_15 0
  loc_D04801: PopAd
  loc_D04803: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D04806: LitStr " sum(RecaDepa-DereDepa) as Cobrado, 0 as Diferencia"
  loc_D04809: ConcatStr
  loc_D0480A: FStStrNoPop var_EC
  loc_D0480D: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04810: ConcatStr
  loc_D04811: CVarStr var_124
  loc_D04814: FLdPr Me
  loc_D04817: VCallAd Control_ID_DesdeMsk
  loc_D0481A: FStAdFunc var_B0
  loc_D0481D: FLdPr var_B0
  loc_D04820: LateIdLdVar var_C4 DispID_15 0
  loc_D04827: CStrVarTmp
  loc_D04828: CVarStr var_D4
  loc_D0482B: FLdRfVar var_E4
  loc_D0482E: ImpAdCallFPR4  = Year()
  loc_D04833: FLdRfVar var_E4
  loc_D04836: ConcatVar var_134
  loc_D0483A: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D0483F: ConcatVar var_144
  loc_D04843: ImpAdLdI2 MemVar_D93034
  loc_D04846: CVarI2 var_AC
  loc_D04849: ConcatVar var_154
  loc_D0484D: LitVarStr var_164, " AND c.CodiConc = pararenta.CorePare"
  loc_D04852: ConcatVar var_174
  loc_D04856: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D0485B: ConcatVar var_194
  loc_D0485F: LitI4 1
  loc_D04864: LitI4 1
  loc_D04869: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D0486E: FStVarCopyObj var_1D8
  loc_D04871: FLdRfVar var_1D8
  loc_D04874: FLdRfVar var_1A8
  loc_D04877: CStrVarTmp
  loc_D04878: CVarStr var_1B8
  loc_D0487B: ImpAdCallI2 Format$(, )
  loc_D04880: CVarStr var_1E8
  loc_D04883: ConcatVar var_1F8
  loc_D04887: LitVarStr var_208, " AND "
  loc_D0488C: ConcatVar var_218
  loc_D04890: LitI4 1
  loc_D04895: LitI4 1
  loc_D0489A: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D0489F: FStVarCopyObj var_25C
  loc_D048A2: FLdRfVar var_25C
  loc_D048A5: FLdRfVar var_22C
  loc_D048A8: CStrVarTmp
  loc_D048A9: CVarStr var_23C
  loc_D048AC: ImpAdCallI2 Format$(, )
  loc_D048B1: CVarStr var_26C
  loc_D048B4: ConcatVar var_27C
  loc_D048B8: CStrVarVal var_F0
  loc_D048BC: FLdPr var_E8
  loc_D048BF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D048C4: FFreeStr var_EC = ""
  loc_D048CB: FFreeAd var_B0 = "": var_198 = ""
  loc_D048D4: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D048FF: FLdPr Me
  loc_D04902: VCallAd Control_ID_DesdeMsk
  loc_D04905: FStAdFunc var_198
  loc_D04908: FLdPr var_198
  loc_D0490B: LateIdLdVar var_1B8 DispID_15 0
  loc_D04912: PopAd
  loc_D04914: FLdPr Me
  loc_D04917: VCallAd Control_ID_HastaMsk
  loc_D0491A: FStAdFunc var_21C
  loc_D0491D: FLdPr var_21C
  loc_D04920: LateIdLdVar var_23C DispID_15 0
  loc_D04927: PopAd
  loc_D04929: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoadPare as CodiConc, 0 Ingresado, "
  loc_D0492C: LitStr " sum(CoadBoap) as Cobrado, 0 as Diferencia"
  loc_D0492F: ConcatStr
  loc_D04930: FStStrNoPop var_EC
  loc_D04933: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04936: ConcatStr
  loc_D04937: CVarStr var_124
  loc_D0493A: FLdPr Me
  loc_D0493D: VCallAd Control_ID_DesdeMsk
  loc_D04940: FStAdFunc var_B0
  loc_D04943: FLdPr var_B0
  loc_D04946: LateIdLdVar var_C4 DispID_15 0
  loc_D0494D: CStrVarTmp
  loc_D0494E: CVarStr var_D4
  loc_D04951: FLdRfVar var_E4
  loc_D04954: ImpAdCallFPR4  = Year()
  loc_D04959: FLdRfVar var_E4
  loc_D0495C: ConcatVar var_134
  loc_D04960: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04965: ConcatVar var_144
  loc_D04969: ImpAdLdI2 MemVar_D93034
  loc_D0496C: CVarI2 var_AC
  loc_D0496F: ConcatVar var_154
  loc_D04973: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D04978: ConcatVar var_174
  loc_D0497C: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D04981: ConcatVar var_194
  loc_D04985: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D0498A: ConcatVar var_1A8
  loc_D0498E: LitI4 1
  loc_D04993: LitI4 1
  loc_D04998: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D0499D: FStVarCopyObj var_1E8
  loc_D049A0: FLdRfVar var_1E8
  loc_D049A3: FLdRfVar var_1B8
  loc_D049A6: CStrVarTmp
  loc_D049A7: CVarStr var_1D8
  loc_D049AA: ImpAdCallI2 Format$(, )
  loc_D049AF: CVarStr var_1F8
  loc_D049B2: ConcatVar var_218
  loc_D049B6: LitVarStr var_24C, " AND "
  loc_D049BB: ConcatVar var_22C
  loc_D049BF: LitI4 1
  loc_D049C4: LitI4 1
  loc_D049C9: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D049CE: FStVarCopyObj var_26C
  loc_D049D1: FLdRfVar var_26C
  loc_D049D4: FLdRfVar var_23C
  loc_D049D7: CStrVarTmp
  loc_D049D8: CVarStr var_25C
  loc_D049DB: ImpAdCallI2 Format$(, )
  loc_D049E0: CVarStr var_27C
  loc_D049E3: ConcatVar var_29C
  loc_D049E7: CStrVarVal var_F0
  loc_D049EB: FLdPr var_E8
  loc_D049EE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D049F3: FFreeStr var_EC = ""
  loc_D049FA: FFreeAd var_B0 = "": var_198 = ""
  loc_D04A03: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D04A30: FLdPr Me
  loc_D04A33: VCallAd Control_ID_DesdeMsk
  loc_D04A36: FStAdFunc var_198
  loc_D04A39: FLdPr var_198
  loc_D04A3C: LateIdLdVar var_1B8 DispID_15 0
  loc_D04A43: PopAd
  loc_D04A45: FLdPr Me
  loc_D04A48: VCallAd Control_ID_HastaMsk
  loc_D04A4B: FStAdFunc var_21C
  loc_D04A4E: FLdPr var_21C
  loc_D04A51: LateIdLdVar var_23C DispID_15 0
  loc_D04A58: PopAd
  loc_D04A5A: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D04A5D: LitStr " sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) cobrado, 0 as diferencia "
  loc_D04A60: ConcatStr
  loc_D04A61: FStStrNoPop var_EC
  loc_D04A64: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04A67: ConcatStr
  loc_D04A68: CVarStr var_124
  loc_D04A6B: FLdPr Me
  loc_D04A6E: VCallAd Control_ID_DesdeMsk
  loc_D04A71: FStAdFunc var_B0
  loc_D04A74: FLdPr var_B0
  loc_D04A77: LateIdLdVar var_C4 DispID_15 0
  loc_D04A7E: CStrVarTmp
  loc_D04A7F: CVarStr var_D4
  loc_D04A82: FLdRfVar var_E4
  loc_D04A85: ImpAdCallFPR4  = Year()
  loc_D04A8A: FLdRfVar var_E4
  loc_D04A8D: ConcatVar var_134
  loc_D04A91: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04A96: ConcatVar var_144
  loc_D04A9A: ImpAdLdI2 MemVar_D93034
  loc_D04A9D: CVarI2 var_AC
  loc_D04AA0: ConcatVar var_154
  loc_D04AA4: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D04AA9: ConcatVar var_174
  loc_D04AAD: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D04AB2: ConcatVar var_194
  loc_D04AB6: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D04ABB: ConcatVar var_1A8
  loc_D04ABF: LitI4 1
  loc_D04AC4: LitI4 1
  loc_D04AC9: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04ACE: FStVarCopyObj var_1E8
  loc_D04AD1: FLdRfVar var_1E8
  loc_D04AD4: FLdRfVar var_1B8
  loc_D04AD7: CStrVarTmp
  loc_D04AD8: CVarStr var_1D8
  loc_D04ADB: ImpAdCallI2 Format$(, )
  loc_D04AE0: CVarStr var_1F8
  loc_D04AE3: ConcatVar var_218
  loc_D04AE7: LitVarStr var_24C, " AND "
  loc_D04AEC: ConcatVar var_22C
  loc_D04AF0: LitI4 1
  loc_D04AF5: LitI4 1
  loc_D04AFA: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04AFF: FStVarCopyObj var_26C
  loc_D04B02: FLdRfVar var_26C
  loc_D04B05: FLdRfVar var_23C
  loc_D04B08: CStrVarTmp
  loc_D04B09: CVarStr var_25C
  loc_D04B0C: ImpAdCallI2 Format$(, )
  loc_D04B11: CVarStr var_27C
  loc_D04B14: ConcatVar var_29C
  loc_D04B18: CStrVarVal var_F0
  loc_D04B1C: FLdPr var_E8
  loc_D04B1F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04B24: FFreeStr var_EC = ""
  loc_D04B2B: FFreeAd var_B0 = "": var_198 = ""
  loc_D04B34: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D04B61: FLdPr Me
  loc_D04B64: VCallAd Control_ID_DesdeMsk
  loc_D04B67: FStAdFunc var_198
  loc_D04B6A: FLdPr var_198
  loc_D04B6D: LateIdLdVar var_1B8 DispID_15 0
  loc_D04B74: PopAd
  loc_D04B76: FLdPr Me
  loc_D04B79: VCallAd Control_ID_HastaMsk
  loc_D04B7C: FStAdFunc var_21C
  loc_D04B7F: FLdPr var_21C
  loc_D04B82: LateIdLdVar var_23C DispID_15 0
  loc_D04B89: PopAd
  loc_D04B8B: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoimPare as CodiConc, 0 Ingresado,"
  loc_D04B8E: LitStr " sum(ApleBoap+DefiBoap+ReseBoap) as cobrado, 0 as diferencia "
  loc_D04B91: ConcatStr
  loc_D04B92: FStStrNoPop var_EC
  loc_D04B95: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04B98: ConcatStr
  loc_D04B99: CVarStr var_124
  loc_D04B9C: FLdPr Me
  loc_D04B9F: VCallAd Control_ID_DesdeMsk
  loc_D04BA2: FStAdFunc var_B0
  loc_D04BA5: FLdPr var_B0
  loc_D04BA8: LateIdLdVar var_C4 DispID_15 0
  loc_D04BAF: CStrVarTmp
  loc_D04BB0: CVarStr var_D4
  loc_D04BB3: FLdRfVar var_E4
  loc_D04BB6: ImpAdCallFPR4  = Year()
  loc_D04BBB: FLdRfVar var_E4
  loc_D04BBE: ConcatVar var_134
  loc_D04BC2: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04BC7: ConcatVar var_144
  loc_D04BCB: ImpAdLdI2 MemVar_D93034
  loc_D04BCE: CVarI2 var_AC
  loc_D04BD1: ConcatVar var_154
  loc_D04BD5: LitVarStr var_164, " AND c.CodiConc = pararenta.CoimPare"
  loc_D04BDA: ConcatVar var_174
  loc_D04BDE: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D04BE3: ConcatVar var_194
  loc_D04BE7: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D04BEC: ConcatVar var_1A8
  loc_D04BF0: LitI4 1
  loc_D04BF5: LitI4 1
  loc_D04BFA: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04BFF: FStVarCopyObj var_1E8
  loc_D04C02: FLdRfVar var_1E8
  loc_D04C05: FLdRfVar var_1B8
  loc_D04C08: CStrVarTmp
  loc_D04C09: CVarStr var_1D8
  loc_D04C0C: ImpAdCallI2 Format$(, )
  loc_D04C11: CVarStr var_1F8
  loc_D04C14: ConcatVar var_218
  loc_D04C18: LitVarStr var_24C, " AND "
  loc_D04C1D: ConcatVar var_22C
  loc_D04C21: LitI4 1
  loc_D04C26: LitI4 1
  loc_D04C2B: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04C30: FStVarCopyObj var_26C
  loc_D04C33: FLdRfVar var_26C
  loc_D04C36: FLdRfVar var_23C
  loc_D04C39: CStrVarTmp
  loc_D04C3A: CVarStr var_25C
  loc_D04C3D: ImpAdCallI2 Format$(, )
  loc_D04C42: CVarStr var_27C
  loc_D04C45: ConcatVar var_29C
  loc_D04C49: CStrVarVal var_F0
  loc_D04C4D: FLdPr var_E8
  loc_D04C50: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04C55: FFreeStr var_EC = ""
  loc_D04C5C: FFreeAd var_B0 = "": var_198 = ""
  loc_D04C65: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D04C92: FLdPr Me
  loc_D04C95: VCallAd Control_ID_DesdeMsk
  loc_D04C98: FStAdFunc var_198
  loc_D04C9B: FLdPr var_198
  loc_D04C9E: LateIdLdVar var_1A8 DispID_15 0
  loc_D04CA5: PopAd
  loc_D04CA7: FLdPr Me
  loc_D04CAA: VCallAd Control_ID_HastaMsk
  loc_D04CAD: FStAdFunc var_21C
  loc_D04CB0: FLdPr var_21C
  loc_D04CB3: LateIdLdVar var_22C DispID_15 0
  loc_D04CBA: PopAd
  loc_D04CBC: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado,"
  loc_D04CBF: LitStr " sum(InteDepa) as cobrado, 0 as diferencia "
  loc_D04CC2: ConcatStr
  loc_D04CC3: FStStrNoPop var_EC
  loc_D04CC6: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04CC9: ConcatStr
  loc_D04CCA: CVarStr var_124
  loc_D04CCD: FLdPr Me
  loc_D04CD0: VCallAd Control_ID_DesdeMsk
  loc_D04CD3: FStAdFunc var_B0
  loc_D04CD6: FLdPr var_B0
  loc_D04CD9: LateIdLdVar var_C4 DispID_15 0
  loc_D04CE0: CStrVarTmp
  loc_D04CE1: CVarStr var_D4
  loc_D04CE4: FLdRfVar var_E4
  loc_D04CE7: ImpAdCallFPR4  = Year()
  loc_D04CEC: FLdRfVar var_E4
  loc_D04CEF: ConcatVar var_134
  loc_D04CF3: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04CF8: ConcatVar var_144
  loc_D04CFC: ImpAdLdI2 MemVar_D93034
  loc_D04CFF: CVarI2 var_AC
  loc_D04D02: ConcatVar var_154
  loc_D04D06: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D04D0B: ConcatVar var_174
  loc_D04D0F: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D04D14: ConcatVar var_194
  loc_D04D18: LitI4 1
  loc_D04D1D: LitI4 1
  loc_D04D22: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D04D27: FStVarCopyObj var_1D8
  loc_D04D2A: FLdRfVar var_1D8
  loc_D04D2D: FLdRfVar var_1A8
  loc_D04D30: CStrVarTmp
  loc_D04D31: CVarStr var_1B8
  loc_D04D34: ImpAdCallI2 Format$(, )
  loc_D04D39: CVarStr var_1E8
  loc_D04D3C: ConcatVar var_1F8
  loc_D04D40: LitVarStr var_208, " AND "
  loc_D04D45: ConcatVar var_218
  loc_D04D49: LitI4 1
  loc_D04D4E: LitI4 1
  loc_D04D53: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D04D58: FStVarCopyObj var_25C
  loc_D04D5B: FLdRfVar var_25C
  loc_D04D5E: FLdRfVar var_22C
  loc_D04D61: CStrVarTmp
  loc_D04D62: CVarStr var_23C
  loc_D04D65: ImpAdCallI2 Format$(, )
  loc_D04D6A: CVarStr var_26C
  loc_D04D6D: ConcatVar var_27C
  loc_D04D71: CStrVarVal var_F0
  loc_D04D75: FLdPr var_E8
  loc_D04D78: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04D7D: FFreeStr var_EC = ""
  loc_D04D84: FFreeAd var_B0 = "": var_198 = ""
  loc_D04D8D: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D04DB8: Branch loc_D05269
  loc_D04DBB: FLdPr Me
  loc_D04DBE: VCallAd Control_ID_DesdeMsk
  loc_D04DC1: FStAdFunc var_198
  loc_D04DC4: FLdPr var_198
  loc_D04DC7: LateIdLdVar var_1A8 DispID_15 0
  loc_D04DCE: PopAd
  loc_D04DD0: FLdPr Me
  loc_D04DD3: VCallAd Control_ID_HastaMsk
  loc_D04DD6: FStAdFunc var_21C
  loc_D04DD9: FLdPr var_21C
  loc_D04DDC: LateIdLdVar var_22C DispID_15 0
  loc_D04DE3: PopAd
  loc_D04DE5: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CorePare as CodiConc, 0 Ingresado,"
  loc_D04DE8: LitStr " IFNULL(sum(RecaDepa-DereDepa),0) as Cobrado, 0 as Diferencia"
  loc_D04DEB: ConcatStr
  loc_D04DEC: FStStrNoPop var_EC
  loc_D04DEF: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04DF2: ConcatStr
  loc_D04DF3: CVarStr var_124
  loc_D04DF6: FLdPr Me
  loc_D04DF9: VCallAd Control_ID_DesdeMsk
  loc_D04DFC: FStAdFunc var_B0
  loc_D04DFF: FLdPr var_B0
  loc_D04E02: LateIdLdVar var_C4 DispID_15 0
  loc_D04E09: CStrVarTmp
  loc_D04E0A: CVarStr var_D4
  loc_D04E0D: FLdRfVar var_E4
  loc_D04E10: ImpAdCallFPR4  = Year()
  loc_D04E15: FLdRfVar var_E4
  loc_D04E18: ConcatVar var_134
  loc_D04E1C: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04E21: ConcatVar var_144
  loc_D04E25: ImpAdLdI2 MemVar_D93034
  loc_D04E28: CVarI2 var_AC
  loc_D04E2B: ConcatVar var_154
  loc_D04E2F: LitVarStr var_164, " AND c.CodiConc = pararenta.CorePare"
  loc_D04E34: ConcatVar var_174
  loc_D04E38: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D04E3D: ConcatVar var_194
  loc_D04E41: LitI4 1
  loc_D04E46: LitI4 1
  loc_D04E4B: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D04E50: FStVarCopyObj var_1D8
  loc_D04E53: FLdRfVar var_1D8
  loc_D04E56: FLdRfVar var_1A8
  loc_D04E59: CStrVarTmp
  loc_D04E5A: CVarStr var_1B8
  loc_D04E5D: ImpAdCallI2 Format$(, )
  loc_D04E62: CVarStr var_1E8
  loc_D04E65: ConcatVar var_1F8
  loc_D04E69: LitVarStr var_208, " AND "
  loc_D04E6E: ConcatVar var_218
  loc_D04E72: LitI4 1
  loc_D04E77: LitI4 1
  loc_D04E7C: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D04E81: FStVarCopyObj var_25C
  loc_D04E84: FLdRfVar var_25C
  loc_D04E87: FLdRfVar var_22C
  loc_D04E8A: CStrVarTmp
  loc_D04E8B: CVarStr var_23C
  loc_D04E8E: ImpAdCallI2 Format$(, )
  loc_D04E93: CVarStr var_26C
  loc_D04E96: ConcatVar var_27C
  loc_D04E9A: CStrVarVal var_F0
  loc_D04E9E: FLdPr var_E8
  loc_D04EA1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04EA6: FFreeStr var_EC = ""
  loc_D04EAD: FFreeAd var_B0 = "": var_198 = ""
  loc_D04EB6: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D04EE1: FLdPr Me
  loc_D04EE4: VCallAd Control_ID_DesdeMsk
  loc_D04EE7: FStAdFunc var_198
  loc_D04EEA: FLdPr var_198
  loc_D04EED: LateIdLdVar var_1B8 DispID_15 0
  loc_D04EF4: PopAd
  loc_D04EF6: FLdPr Me
  loc_D04EF9: VCallAd Control_ID_HastaMsk
  loc_D04EFC: FStAdFunc var_21C
  loc_D04EFF: FLdPr var_21C
  loc_D04F02: LateIdLdVar var_23C DispID_15 0
  loc_D04F09: PopAd
  loc_D04F0B: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoadPare as CodiConc, 0 Ingresado, "
  loc_D04F0E: LitStr " IFNULL(sum(CoadBoap),0) as Cobrado, 0 as Diferencia"
  loc_D04F11: ConcatStr
  loc_D04F12: FStStrNoPop var_EC
  loc_D04F15: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D04F18: ConcatStr
  loc_D04F19: CVarStr var_124
  loc_D04F1C: FLdPr Me
  loc_D04F1F: VCallAd Control_ID_DesdeMsk
  loc_D04F22: FStAdFunc var_B0
  loc_D04F25: FLdPr var_B0
  loc_D04F28: LateIdLdVar var_C4 DispID_15 0
  loc_D04F2F: CStrVarTmp
  loc_D04F30: CVarStr var_D4
  loc_D04F33: FLdRfVar var_E4
  loc_D04F36: ImpAdCallFPR4  = Year()
  loc_D04F3B: FLdRfVar var_E4
  loc_D04F3E: ConcatVar var_134
  loc_D04F42: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D04F47: ConcatVar var_144
  loc_D04F4B: ImpAdLdI2 MemVar_D93034
  loc_D04F4E: CVarI2 var_AC
  loc_D04F51: ConcatVar var_154
  loc_D04F55: LitVarStr var_164, " AND c.CodiConc = pararenta.CoadPare"
  loc_D04F5A: ConcatVar var_174
  loc_D04F5E: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_D04F63: ConcatVar var_194
  loc_D04F67: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D04F6C: ConcatVar var_1A8
  loc_D04F70: LitI4 1
  loc_D04F75: LitI4 1
  loc_D04F7A: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D04F7F: FStVarCopyObj var_1E8
  loc_D04F82: FLdRfVar var_1E8
  loc_D04F85: FLdRfVar var_1B8
  loc_D04F88: CStrVarTmp
  loc_D04F89: CVarStr var_1D8
  loc_D04F8C: ImpAdCallI2 Format$(, )
  loc_D04F91: CVarStr var_1F8
  loc_D04F94: ConcatVar var_218
  loc_D04F98: LitVarStr var_24C, " AND "
  loc_D04F9D: ConcatVar var_22C
  loc_D04FA1: LitI4 1
  loc_D04FA6: LitI4 1
  loc_D04FAB: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D04FB0: FStVarCopyObj var_26C
  loc_D04FB3: FLdRfVar var_26C
  loc_D04FB6: FLdRfVar var_23C
  loc_D04FB9: CStrVarTmp
  loc_D04FBA: CVarStr var_25C
  loc_D04FBD: ImpAdCallI2 Format$(, )
  loc_D04FC2: CVarStr var_27C
  loc_D04FC5: ConcatVar var_29C
  loc_D04FC9: CStrVarVal var_F0
  loc_D04FCD: FLdPr var_E8
  loc_D04FD0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D04FD5: FFreeStr var_EC = ""
  loc_D04FDC: FFreeAd var_B0 = "": var_198 = ""
  loc_D04FE5: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D05012: FLdPr Me
  loc_D05015: VCallAd Control_ID_DesdeMsk
  loc_D05018: FStAdFunc var_198
  loc_D0501B: FLdPr var_198
  loc_D0501E: LateIdLdVar var_1B8 DispID_15 0
  loc_D05025: PopAd
  loc_D05027: FLdPr Me
  loc_D0502A: VCallAd Control_ID_HastaMsk
  loc_D0502D: FStAdFunc var_21C
  loc_D05030: FLdPr var_21C
  loc_D05033: LateIdLdVar var_23C DispID_15 0
  loc_D0503A: PopAd
  loc_D0503C: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoapPare as CodiConc, 0 Ingresado,"
  loc_D0503F: LitStr " IFNULL(sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap),0) as cobrado, 0 as diferencia "
  loc_D05042: ConcatStr
  loc_D05043: FStStrNoPop var_EC
  loc_D05046: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D05049: ConcatStr
  loc_D0504A: CVarStr var_124
  loc_D0504D: FLdPr Me
  loc_D05050: VCallAd Control_ID_DesdeMsk
  loc_D05053: FStAdFunc var_B0
  loc_D05056: FLdPr var_B0
  loc_D05059: LateIdLdVar var_C4 DispID_15 0
  loc_D05060: CStrVarTmp
  loc_D05061: CVarStr var_D4
  loc_D05064: FLdRfVar var_E4
  loc_D05067: ImpAdCallFPR4  = Year()
  loc_D0506C: FLdRfVar var_E4
  loc_D0506F: ConcatVar var_134
  loc_D05073: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D05078: ConcatVar var_144
  loc_D0507C: ImpAdLdI2 MemVar_D93034
  loc_D0507F: CVarI2 var_AC
  loc_D05082: ConcatVar var_154
  loc_D05086: LitVarStr var_164, " AND c.CodiConc = pararenta.CoapPare"
  loc_D0508B: ConcatVar var_174
  loc_D0508F: LitVarStr var_184, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_D05094: ConcatVar var_194
  loc_D05098: LitVarStr var_1C8, " WHERE pago.FeenAcpa BETWEEN "
  loc_D0509D: ConcatVar var_1A8
  loc_D050A1: LitI4 1
  loc_D050A6: LitI4 1
  loc_D050AB: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_D050B0: FStVarCopyObj var_1E8
  loc_D050B3: FLdRfVar var_1E8
  loc_D050B6: FLdRfVar var_1B8
  loc_D050B9: CStrVarTmp
  loc_D050BA: CVarStr var_1D8
  loc_D050BD: ImpAdCallI2 Format$(, )
  loc_D050C2: CVarStr var_1F8
  loc_D050C5: ConcatVar var_218
  loc_D050C9: LitVarStr var_24C, " AND "
  loc_D050CE: ConcatVar var_22C
  loc_D050D2: LitI4 1
  loc_D050D7: LitI4 1
  loc_D050DC: LitVarStr var_28C, "'yyyy-mm-dd'"
  loc_D050E1: FStVarCopyObj var_26C
  loc_D050E4: FLdRfVar var_26C
  loc_D050E7: FLdRfVar var_23C
  loc_D050EA: CStrVarTmp
  loc_D050EB: CVarStr var_25C
  loc_D050EE: ImpAdCallI2 Format$(, )
  loc_D050F3: CVarStr var_27C
  loc_D050F6: ConcatVar var_29C
  loc_D050FA: CStrVarVal var_F0
  loc_D050FE: FLdPr var_E8
  loc_D05101: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D05106: FFreeStr var_EC = ""
  loc_D0510D: FFreeAd var_B0 = "": var_198 = ""
  loc_D05116: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_218 = "": var_23C = "": var_25C = "": var_26C = "": var_22C = "": var_27C = ""
  loc_D05143: FLdPr Me
  loc_D05146: VCallAd Control_ID_DesdeMsk
  loc_D05149: FStAdFunc var_198
  loc_D0514C: FLdPr var_198
  loc_D0514F: LateIdLdVar var_1A8 DispID_15 0
  loc_D05156: PopAd
  loc_D05158: FLdPr Me
  loc_D0515B: VCallAd Control_ID_HastaMsk
  loc_D0515E: FStAdFunc var_21C
  loc_D05161: FLdPr var_21C
  loc_D05164: LateIdLdVar var_22C DispID_15 0
  loc_D0516B: PopAd
  loc_D0516D: LitStr " INSERT INTO tmp_conc SELECT c.IngrConc, pararenta.CoinPare as CodiConc, 0 Ingresado,"
  loc_D05170: LitStr " IFNULL(sum(InteDepa),0) as cobrado, 0 as diferencia "
  loc_D05173: ConcatStr
  loc_D05174: FStStrNoPop var_EC
  loc_D05177: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_D0517A: ConcatStr
  loc_D0517B: CVarStr var_124
  loc_D0517E: FLdPr Me
  loc_D05181: VCallAd Control_ID_DesdeMsk
  loc_D05184: FStAdFunc var_B0
  loc_D05187: FLdPr var_B0
  loc_D0518A: LateIdLdVar var_C4 DispID_15 0
  loc_D05191: CStrVarTmp
  loc_D05192: CVarStr var_D4
  loc_D05195: FLdRfVar var_E4
  loc_D05198: ImpAdCallFPR4  = Year()
  loc_D0519D: FLdRfVar var_E4
  loc_D051A0: ConcatVar var_134
  loc_D051A4: LitVarStr var_9C, " INNER JOIN recaudacion.concepto c ON c.PeriInfo = "
  loc_D051A9: ConcatVar var_144
  loc_D051AD: ImpAdLdI2 MemVar_D93034
  loc_D051B0: CVarI2 var_AC
  loc_D051B3: ConcatVar var_154
  loc_D051B7: LitVarStr var_164, " AND c.CodiConc = pararenta.CoinPare"
  loc_D051BC: ConcatVar var_174
  loc_D051C0: LitVarStr var_184, " WHERE detapago.FeenAcpa BETWEEN "
  loc_D051C5: ConcatVar var_194
  loc_D051C9: LitI4 1
  loc_D051CE: LitI4 1
  loc_D051D3: LitVarStr var_1C8, "'yyyy-mm-dd'"
  loc_D051D8: FStVarCopyObj var_1D8
  loc_D051DB: FLdRfVar var_1D8
  loc_D051DE: FLdRfVar var_1A8
  loc_D051E1: CStrVarTmp
  loc_D051E2: CVarStr var_1B8
  loc_D051E5: ImpAdCallI2 Format$(, )
  loc_D051EA: CVarStr var_1E8
  loc_D051ED: ConcatVar var_1F8
  loc_D051F1: LitVarStr var_208, " AND "
  loc_D051F6: ConcatVar var_218
  loc_D051FA: LitI4 1
  loc_D051FF: LitI4 1
  loc_D05204: LitVarStr var_24C, "'yyyy-mm-dd'"
  loc_D05209: FStVarCopyObj var_25C
  loc_D0520C: FLdRfVar var_25C
  loc_D0520F: FLdRfVar var_22C
  loc_D05212: CStrVarTmp
  loc_D05213: CVarStr var_23C
  loc_D05216: ImpAdCallI2 Format$(, )
  loc_D0521B: CVarStr var_26C
  loc_D0521E: ConcatVar var_27C
  loc_D05222: CStrVarVal var_F0
  loc_D05226: FLdPr var_E8
  loc_D05229: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D0522E: FFreeStr var_EC = ""
  loc_D05235: FFreeAd var_B0 = "": var_198 = ""
  loc_D0523E: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_194 = "": var_1E8 = "": var_1F8 = "": var_22C = "": var_23C = "": var_25C = "": var_218 = "": var_26C = ""
  loc_D05269: LitStr "Municipalidad de Guaymallén"
  loc_D0526C: LitStr "Municipalidad de Malargüe"
  loc_D0526F: EqStr
  loc_D05271: BranchF loc_D0532F
  loc_D05274: LitStr " SELECT tmp_conc.CodiCuco,  IngrConc, tmp_conc.CodiConc, IFNULL(DetaCuco,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D05277: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D0527A: ConcatStr
  loc_D0527B: CVarStr var_124
  loc_D0527E: FLdPr Me
  loc_D05281: VCallAd Control_ID_DesdeMsk
  loc_D05284: FStAdFunc var_B0
  loc_D05287: FLdPr var_B0
  loc_D0528A: LateIdLdVar var_C4 DispID_15 0
  loc_D05291: CStrVarTmp
  loc_D05292: CVarStr var_D4
  loc_D05295: FLdRfVar var_E4
  loc_D05298: ImpAdCallFPR4  = Year()
  loc_D0529D: FLdRfVar var_E4
  loc_D052A0: ConcatVar var_134
  loc_D052A4: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc AND concepto.ActiConc <> ''"
  loc_D052A9: ConcatVar var_144
  loc_D052AD: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D052B2: ConcatVar var_154
  loc_D052B6: FLdPr Me
  loc_D052B9: VCallAd Control_ID_DesdeMsk
  loc_D052BC: FStAdFunc var_198
  loc_D052BF: FLdPr var_198
  loc_D052C2: LateIdLdVar var_174 DispID_15 0
  loc_D052C9: CStrVarTmp
  loc_D052CA: CVarStr var_194
  loc_D052CD: FLdRfVar var_1A8
  loc_D052D0: ImpAdCallFPR4  = Year()
  loc_D052D5: FLdRfVar var_1A8
  loc_D052D8: ConcatVar var_1B8
  loc_D052DC: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D052E1: ConcatVar var_1D8
  loc_D052E5: LitVarStr var_184, " WHERE tmp_conc.CodiCuco NOT IN (1141011700,1141050912,1141050913,1141050914)"
  loc_D052EA: ConcatVar var_1E8
  loc_D052EE: LitVarStr var_1C8, " GROUP BY tmp_conc.CodiCuco, tmp_conc.CodiConc"
  loc_D052F3: ConcatVar var_1F8
  loc_D052F7: CStrVarVal var_EC
  loc_D052FB: FLdPr var_E8
  loc_D052FE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D05303: FFree1Str var_EC
  loc_D05306: FFreeAd var_B0 = ""
  loc_D0530D: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_1E8 = ""
  loc_D0532C: Branch loc_D05780
  loc_D0532F: LitStr "Municipalidad de Guaymallén"
  loc_D05332: LitStr "Municipalidad de General Alvear"
  loc_D05335: EqStr
  loc_D05337: BranchF loc_D053EA
  loc_D0533A: LitStr " SELECT tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaCuco,'') DetaConc, SUM(IF(MID(cuentacontable.CodiTicu,1,1) IN (5,7),Ingresado,0)) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D0533D: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_D05340: ConcatStr
  loc_D05341: CVarStr var_124
  loc_D05344: FLdPr Me
  loc_D05347: VCallAd Control_ID_DesdeMsk
  loc_D0534A: FStAdFunc var_B0
  loc_D0534D: FLdPr var_B0
  loc_D05350: LateIdLdVar var_C4 DispID_15 0
  loc_D05357: CStrVarTmp
  loc_D05358: CVarStr var_D4
  loc_D0535B: FLdRfVar var_E4
  loc_D0535E: ImpAdCallFPR4  = Year()
  loc_D05363: FLdRfVar var_E4
  loc_D05366: ConcatVar var_134
  loc_D0536A: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_D0536F: ConcatVar var_144
  loc_D05373: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D05378: ConcatVar var_154
  loc_D0537C: FLdPr Me
  loc_D0537F: VCallAd Control_ID_DesdeMsk
  loc_D05382: FStAdFunc var_198
  loc_D05385: FLdPr var_198
  loc_D05388: LateIdLdVar var_174 DispID_15 0
  loc_D0538F: CStrVarTmp
  loc_D05390: CVarStr var_194
  loc_D05393: FLdRfVar var_1A8
  loc_D05396: ImpAdCallFPR4  = Year()
  loc_D0539B: FLdRfVar var_1A8
  loc_D0539E: ConcatVar var_1B8
  loc_D053A2: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D053A7: ConcatVar var_1D8
  loc_D053AB: LitVarStr var_184, " GROUP BY tmp_conc.CodiCuco, tmp_conc.CodiConc"
  loc_D053B0: ConcatVar var_1E8
  loc_D053B4: CStrVarVal var_EC
  loc_D053B8: FLdPr var_E8
  loc_D053BB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D053C0: FFree1Str var_EC
  loc_D053C3: FFreeAd var_B0 = ""
  loc_D053CA: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_D053E7: Branch loc_D05780
  loc_D053EA: LitStr "Municipalidad de Guaymallén"
  loc_D053ED: LitStr "Municipalidad de San Carlos"
  loc_D053F0: EqStr
  loc_D053F2: BranchF loc_D054B0
  loc_D053F5: LitStr " SELECT tmp_conc.CodiCuco, tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaCuco,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D053F8: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D053FB: ConcatStr
  loc_D053FC: CVarStr var_124
  loc_D053FF: FLdPr Me
  loc_D05402: VCallAd Control_ID_DesdeMsk
  loc_D05405: FStAdFunc var_B0
  loc_D05408: FLdPr var_B0
  loc_D0540B: LateIdLdVar var_C4 DispID_15 0
  loc_D05412: CStrVarTmp
  loc_D05413: CVarStr var_D4
  loc_D05416: FLdRfVar var_E4
  loc_D05419: ImpAdCallFPR4  = Year()
  loc_D0541E: FLdRfVar var_E4
  loc_D05421: ConcatVar var_134
  loc_D05425: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_D0542A: ConcatVar var_144
  loc_D0542E: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D05433: ConcatVar var_154
  loc_D05437: FLdPr Me
  loc_D0543A: VCallAd Control_ID_DesdeMsk
  loc_D0543D: FStAdFunc var_198
  loc_D05440: FLdPr var_198
  loc_D05443: LateIdLdVar var_174 DispID_15 0
  loc_D0544A: CStrVarTmp
  loc_D0544B: CVarStr var_194
  loc_D0544E: FLdRfVar var_1A8
  loc_D05451: ImpAdCallFPR4  = Year()
  loc_D05456: FLdRfVar var_1A8
  loc_D05459: ConcatVar var_1B8
  loc_D0545D: LitVarStr var_164, " AND cuentacontable.CodiCuco = tmp_conc.CodiCuco"
  loc_D05462: ConcatVar var_1D8
  loc_D05466: LitVarStr var_184, " AND MID(cuentacontable.CodiTicu,1,1) IN (5,7)"
  loc_D0546B: ConcatVar var_1E8
  loc_D0546F: LitVarStr var_1C8, " GROUP BY tmp_conc.CodiCuco, tmp_conc.CodiConc"
  loc_D05474: ConcatVar var_1F8
  loc_D05478: CStrVarVal var_EC
  loc_D0547C: FLdPr var_E8
  loc_D0547F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D05484: FFree1Str var_EC
  loc_D05487: FFreeAd var_B0 = ""
  loc_D0548E: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_1E8 = ""
  loc_D054AD: Branch loc_D05780
  loc_D054B0: LitStr "Municipalidad de Guaymallén"
  loc_D054B3: LitStr "Municipalidad de Guaymallén"
  loc_D054B6: EqStr
  loc_D054B8: BranchF loc_D05618
  loc_D054BB: LitStr " SELECT tmp_conc.CodiCuco, tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaCuco,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D054BE: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D054C1: ConcatStr
  loc_D054C2: CVarStr var_124
  loc_D054C5: FLdPr Me
  loc_D054C8: VCallAd Control_ID_DesdeMsk
  loc_D054CB: FStAdFunc var_B0
  loc_D054CE: FLdPr var_B0
  loc_D054D1: LateIdLdVar var_C4 DispID_15 0
  loc_D054D8: CStrVarTmp
  loc_D054D9: CVarStr var_D4
  loc_D054DC: FLdRfVar var_E4
  loc_D054DF: ImpAdCallFPR4  = Year()
  loc_D054E4: FLdRfVar var_E4
  loc_D054E7: ConcatVar var_134
  loc_D054EB: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc AND concepto.ActiConc <> ''"
  loc_D054F0: ConcatVar var_144
  loc_D054F4: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D054F9: ConcatVar var_154
  loc_D054FD: FLdPr Me
  loc_D05500: VCallAd Control_ID_DesdeMsk
  loc_D05503: FStAdFunc var_198
  loc_D05506: FLdPr var_198
  loc_D05509: LateIdLdVar var_174 DispID_15 0
  loc_D05510: CStrVarTmp
  loc_D05511: CVarStr var_194
  loc_D05514: FLdRfVar var_1A8
  loc_D05517: ImpAdCallFPR4  = Year()
  loc_D0551C: FLdRfVar var_1A8
  loc_D0551F: ConcatVar var_1B8
  loc_D05523: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D05528: ConcatVar var_1D8
  loc_D0552C: LitVarStr var_184, " GROUP BY tmp_conc.CodiCuco, tmp_conc.CodiConc"
  loc_D05531: ConcatVar var_1E8
  loc_D05535: CStrVarVal var_EC
  loc_D05539: FLdPr var_E8
  loc_D0553C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D05541: FFree1Str var_EC
  loc_D05544: FFreeAd var_B0 = ""
  loc_D0554B: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_D05568: LitStr " SELECT tmp_conc.CodiCuco, tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaCuco,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D0556B: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_D0556E: ConcatStr
  loc_D0556F: CVarStr var_124
  loc_D05572: FLdPr Me
  loc_D05575: VCallAd Control_ID_DesdeMsk
  loc_D05578: FStAdFunc var_B0
  loc_D0557B: FLdPr var_B0
  loc_D0557E: LateIdLdVar var_C4 DispID_15 0
  loc_D05585: CStrVarTmp
  loc_D05586: CVarStr var_D4
  loc_D05589: FLdRfVar var_E4
  loc_D0558C: ImpAdCallFPR4  = Year()
  loc_D05591: FLdRfVar var_E4
  loc_D05594: ConcatVar var_134
  loc_D05598: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc AND concepto.ActiConc <> ''"
  loc_D0559D: ConcatVar var_144
  loc_D055A1: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D055A6: ConcatVar var_154
  loc_D055AA: FLdPr Me
  loc_D055AD: VCallAd Control_ID_DesdeMsk
  loc_D055B0: FStAdFunc var_198
  loc_D055B3: FLdPr var_198
  loc_D055B6: LateIdLdVar var_174 DispID_15 0
  loc_D055BD: CStrVarTmp
  loc_D055BE: CVarStr var_194
  loc_D055C1: FLdRfVar var_1A8
  loc_D055C4: ImpAdCallFPR4  = Year()
  loc_D055C9: FLdRfVar var_1A8
  loc_D055CC: ConcatVar var_1B8
  loc_D055D0: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D055D5: ConcatVar var_1D8
  loc_D055D9: LitVarStr var_184, " GROUP BY IngrConc"
  loc_D055DE: ConcatVar var_1E8
  loc_D055E2: CStrVarVal var_EC
  loc_D055E6: FLdPr var_E8
  loc_D055E9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D055EE: FFree1Str var_EC
  loc_D055F1: FFreeAd var_B0 = ""
  loc_D055F8: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_D05615: Branch loc_D05780
  loc_D05618: LitStr "Municipalidad de Guaymallén"
  loc_D0561B: LitStr "Municipalidad de La Paz"
  loc_D0561E: EqStr
  loc_D05620: BranchF loc_D056D3
  loc_D05623: LitStr " SELECT tmp_conc.CodiCuco, tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D05626: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D05629: ConcatStr
  loc_D0562A: CVarStr var_124
  loc_D0562D: FLdPr Me
  loc_D05630: VCallAd Control_ID_DesdeMsk
  loc_D05633: FStAdFunc var_B0
  loc_D05636: FLdPr var_B0
  loc_D05639: LateIdLdVar var_C4 DispID_15 0
  loc_D05640: CStrVarTmp
  loc_D05641: CVarStr var_D4
  loc_D05644: FLdRfVar var_E4
  loc_D05647: ImpAdCallFPR4  = Year()
  loc_D0564C: FLdRfVar var_E4
  loc_D0564F: ConcatVar var_134
  loc_D05653: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_D05658: ConcatVar var_144
  loc_D0565C: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D05661: ConcatVar var_154
  loc_D05665: FLdPr Me
  loc_D05668: VCallAd Control_ID_DesdeMsk
  loc_D0566B: FStAdFunc var_198
  loc_D0566E: FLdPr var_198
  loc_D05671: LateIdLdVar var_174 DispID_15 0
  loc_D05678: CStrVarTmp
  loc_D05679: CVarStr var_194
  loc_D0567C: FLdRfVar var_1A8
  loc_D0567F: ImpAdCallFPR4  = Year()
  loc_D05684: FLdRfVar var_1A8
  loc_D05687: ConcatVar var_1B8
  loc_D0568B: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D05690: ConcatVar var_1D8
  loc_D05694: LitVarStr var_184, " GROUP BY CodiConc"
  loc_D05699: ConcatVar var_1E8
  loc_D0569D: CStrVarVal var_EC
  loc_D056A1: FLdPr var_E8
  loc_D056A4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D056A9: FFree1Str var_EC
  loc_D056AC: FFreeAd var_B0 = ""
  loc_D056B3: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_D056D0: Branch loc_D05780
  loc_D056D3: LitStr " SELECT tmp_conc.CodiCuco, tmp_conc.CodiCuco IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(Ingresado) Ingresado, SUM(Cobrado) Cobrado, SUM(Diferencia) Diferencia FROM tmp_conc "
  loc_D056D6: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D056D9: ConcatStr
  loc_D056DA: CVarStr var_124
  loc_D056DD: FLdPr Me
  loc_D056E0: VCallAd Control_ID_DesdeMsk
  loc_D056E3: FStAdFunc var_B0
  loc_D056E6: FLdPr var_B0
  loc_D056E9: LateIdLdVar var_C4 DispID_15 0
  loc_D056F0: CStrVarTmp
  loc_D056F1: CVarStr var_D4
  loc_D056F4: FLdRfVar var_E4
  loc_D056F7: ImpAdCallFPR4  = Year()
  loc_D056FC: FLdRfVar var_E4
  loc_D056FF: ConcatVar var_134
  loc_D05703: LitVarStr var_9C, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_D05708: ConcatVar var_144
  loc_D0570C: LitVarStr var_AC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_D05711: ConcatVar var_154
  loc_D05715: FLdPr Me
  loc_D05718: VCallAd Control_ID_DesdeMsk
  loc_D0571B: FStAdFunc var_198
  loc_D0571E: FLdPr var_198
  loc_D05721: LateIdLdVar var_174 DispID_15 0
  loc_D05728: CStrVarTmp
  loc_D05729: CVarStr var_194
  loc_D0572C: FLdRfVar var_1A8
  loc_D0572F: ImpAdCallFPR4  = Year()
  loc_D05734: FLdRfVar var_1A8
  loc_D05737: ConcatVar var_1B8
  loc_D0573B: LitVarStr var_164, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_D05740: ConcatVar var_1D8
  loc_D05744: LitVarStr var_184, " GROUP BY CodiConc"
  loc_D05749: ConcatVar var_1E8
  loc_D0574D: CStrVarVal var_EC
  loc_D05751: FLdPr var_E8
  loc_D05754: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D05759: FFree1Str var_EC
  loc_D0575C: FFreeAd var_B0 = ""
  loc_D05763: FFreeVar var_C4 = "": var_D4 = "": var_124 = "": var_E4 = "": var_134 = "": var_144 = "": var_174 = "": var_194 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_D05780: FLdRfVar var_2A0
  loc_D05783: FLdPr var_E8
  loc_D05786: from_stack_1 = clsctacte.RecordCount
  loc_D0578B: ILdRf var_2A0
  loc_D0578E: LitI4 0
  loc_D05793: EqI4
  loc_D05794: BranchF loc_D057A2
  loc_D05797: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_D0579A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D0579F: Branch loc_D05B5D
  loc_D057A2: LitI4 0
  loc_D057A7: LitI4 1
  loc_D057AC: FLdPr Me
  loc_D057AF: MemLdRfVar from_stack_1.global_104
  loc_D057B2: Redim
  loc_D057BC: LitI4 0
  loc_D057C1: FLdRfVar var_2A0
  loc_D057C4: FLdPr var_E8
  loc_D057C7: from_stack_1 = clsctacte.RecordCount
  loc_D057CC: ILdRf var_2A0
  loc_D057CF: FLdPr Me
  loc_D057D2: MemLdRfVar from_stack_1.global_96
  loc_D057D5: Redim
  loc_D057DF: FLdPr var_E8
  loc_D057E2: Call clsctacte.MoveFirst()
  loc_D057E7: FLdRfVar var_2A0
  loc_D057EA: FLdPr var_E8
  loc_D057ED: from_stack_1 = clsctacte.RecordCount
  loc_D057F2: ILdRf var_2A0
  loc_D057F5: CR8I4
  loc_D057F6: CVarR4
  loc_D057FA: PopAdLdVar
  loc_D057FB: FLdPrThis
  loc_D057FC: VCallAd Control_ID_Pbar
  loc_D057FF: FStAdFunc var_B0
  loc_D05802: FLdPr var_B0
  loc_D05805: LateIdSt
  loc_D0580A: FFree1Ad var_B0
  loc_D0580D: LitVar_TRUE var_9C
  loc_D05810: PopAdLdVar
  loc_D05811: FLdPrThis
  loc_D05812: VCallAd Control_ID_Pbar
  loc_D05815: FStAdFunc var_B0
  loc_D05818: FLdPr var_B0
  loc_D0581B: LateIdSt
  loc_D05820: FFree1Ad var_B0
  loc_D05823: LitI4 1
  loc_D05828: FLdPr Me
  loc_D0582B: MemLdRfVar from_stack_1.global_100
  loc_D0582E: FLdPr Me
  loc_D05831: MemLdStr global_96
  loc_D05834: LitI2_Byte 1
  loc_D05836: FnUBound
  loc_D05838: ForI4 var_2A8
  loc_D0583E: FLdPr Me
  loc_D05841: MemLdStr global_100
  loc_D05844: CR8I4
  loc_D05845: CVarR4
  loc_D05849: PopAdLdVar
  loc_D0584A: FLdPrThis
  loc_D0584B: VCallAd Control_ID_Pbar
  loc_D0584E: FStAdFunc var_B0
  loc_D05851: FLdPr var_B0
  loc_D05854: LateIdSt
  loc_D05859: FFree1Ad var_B0
  loc_D0585C: FLdRfVar var_21C
  loc_D0585F: LitVarStr var_9C, "IngrConc"
  loc_D05864: PopAdLdVar
  loc_D05865: FLdRfVar var_198
  loc_D05868: FLdRfVar var_B0
  loc_D0586B: FLdPr var_E8
  loc_D0586E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05873: FLdPr var_B0
  loc_D05876:  = Me.Fields
  loc_D0587B: FLdPr var_198
  loc_D0587E: from_stack_2 = Me.Item(from_stack_1)
  loc_D05883: LitI2_Byte 0
  loc_D05885: LitVar_Missing var_D4
  loc_D05888: LitI2_Byte 0
  loc_D0588A: FLdZeroAd var_21C
  loc_D0588D: CVarAd
  loc_D05891: PopAdLdVar
  loc_D05892: FLdPr Me
  loc_D05895: MemLdStr global_100
  loc_D05898: FLdPr Me
  loc_D0589B: MemLdStr global_96
  loc_D0589E: AryLock
  loc_D058A1: Ary1LdPr
  loc_D058A2: MemLdRfVar from_stack_1.global_0
  loc_D058A5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D058AA: AryUnlock
  loc_D058AD: FFreeAd var_B0 = ""
  loc_D058B4: FFreeVar var_C4 = ""
  loc_D058BB: FLdRfVar var_21C
  loc_D058BE: LitVarStr var_9C, "CodiConc"
  loc_D058C3: PopAdLdVar
  loc_D058C4: FLdRfVar var_198
  loc_D058C7: FLdRfVar var_B0
  loc_D058CA: FLdPr var_E8
  loc_D058CD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D058D2: FLdPr var_B0
  loc_D058D5:  = Me.Fields
  loc_D058DA: FLdPr var_198
  loc_D058DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D058E2: LitI2_Byte 0
  loc_D058E4: LitVar_Missing var_D4
  loc_D058E7: LitI2_Byte 0
  loc_D058E9: FLdZeroAd var_21C
  loc_D058EC: CVarAd
  loc_D058F0: PopAdLdVar
  loc_D058F1: FLdPr Me
  loc_D058F4: MemLdStr global_100
  loc_D058F7: FLdPr Me
  loc_D058FA: MemLdStr global_96
  loc_D058FD: AryLock
  loc_D05900: Ary1LdPr
  loc_D05901: MemLdRfVar from_stack_1.global_4
  loc_D05904: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D05909: AryUnlock
  loc_D0590C: FFreeAd var_B0 = ""
  loc_D05913: FFreeVar var_C4 = ""
  loc_D0591A: FLdRfVar var_21C
  loc_D0591D: LitVarStr var_9C, "DetaConc"
  loc_D05922: PopAdLdVar
  loc_D05923: FLdRfVar var_198
  loc_D05926: FLdRfVar var_B0
  loc_D05929: FLdPr var_E8
  loc_D0592C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05931: FLdPr var_B0
  loc_D05934:  = Me.Fields
  loc_D05939: FLdPr var_198
  loc_D0593C: from_stack_2 = Me.Item(from_stack_1)
  loc_D05941: LitI2_Byte 0
  loc_D05943: LitVar_Missing var_D4
  loc_D05946: LitI2_Byte 0
  loc_D05948: FLdZeroAd var_21C
  loc_D0594B: CVarAd
  loc_D0594F: PopAdLdVar
  loc_D05950: FLdPr Me
  loc_D05953: MemLdStr global_100
  loc_D05956: FLdPr Me
  loc_D05959: MemLdStr global_96
  loc_D0595C: AryLock
  loc_D0595F: Ary1LdPr
  loc_D05960: MemLdRfVar from_stack_1.global_8
  loc_D05963: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D05968: AryUnlock
  loc_D0596B: FFreeAd var_B0 = ""
  loc_D05972: FFreeVar var_C4 = ""
  loc_D05979: FLdRfVar var_21C
  loc_D0597C: LitVarStr var_9C, "Ingresado"
  loc_D05981: PopAdLdVar
  loc_D05982: FLdRfVar var_198
  loc_D05985: FLdRfVar var_B0
  loc_D05988: FLdPr var_E8
  loc_D0598B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05990: FLdPr var_B0
  loc_D05993:  = Me.Fields
  loc_D05998: FLdPr var_198
  loc_D0599B: from_stack_2 = Me.Item(from_stack_1)
  loc_D059A0: LitI2_Byte 0
  loc_D059A2: LitI4 1
  loc_D059A7: FLdPr Me
  loc_D059AA: MemLdStr global_104
  loc_D059AD: AryLock
  loc_D059B0: Ary1LdPr
  loc_D059B1: MemLdRfVar from_stack_1.global_0
  loc_D059B4: CVarRef
  loc_D059B9: LitI2_Byte &HFF
  loc_D059BB: FLdZeroAd var_21C
  loc_D059BE: CVarAd
  loc_D059C2: PopAdLdVar
  loc_D059C3: FLdPr Me
  loc_D059C6: MemLdStr global_100
  loc_D059C9: FLdPr Me
  loc_D059CC: MemLdStr global_96
  loc_D059CF: AryLock
  loc_D059D2: Ary1LdPr
  loc_D059D3: MemLdRfVar from_stack_1.global_12
  loc_D059D6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D059DB: AryUnlock
  loc_D059DE: AryUnlock
  loc_D059E1: FFreeAd var_B0 = ""
  loc_D059E8: FFree1Var var_C4 = ""
  loc_D059EB: FLdRfVar var_21C
  loc_D059EE: LitVarStr var_9C, "Cobrado"
  loc_D059F3: PopAdLdVar
  loc_D059F4: FLdRfVar var_198
  loc_D059F7: FLdRfVar var_B0
  loc_D059FA: FLdPr var_E8
  loc_D059FD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05A02: FLdPr var_B0
  loc_D05A05:  = Me.Fields
  loc_D05A0A: FLdPr var_198
  loc_D05A0D: from_stack_2 = Me.Item(from_stack_1)
  loc_D05A12: LitI2_Byte 0
  loc_D05A14: LitI4 1
  loc_D05A19: FLdPr Me
  loc_D05A1C: MemLdStr global_104
  loc_D05A1F: AryLock
  loc_D05A22: Ary1LdPr
  loc_D05A23: MemLdRfVar from_stack_1.global_4
  loc_D05A26: CVarRef
  loc_D05A2B: LitI2_Byte &HFF
  loc_D05A2D: FLdZeroAd var_21C
  loc_D05A30: CVarAd
  loc_D05A34: PopAdLdVar
  loc_D05A35: FLdPr Me
  loc_D05A38: MemLdStr global_100
  loc_D05A3B: FLdPr Me
  loc_D05A3E: MemLdStr global_96
  loc_D05A41: AryLock
  loc_D05A44: Ary1LdPr
  loc_D05A45: MemLdRfVar from_stack_1.global_16
  loc_D05A48: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D05A4D: AryUnlock
  loc_D05A50: AryUnlock
  loc_D05A53: FFreeAd var_B0 = ""
  loc_D05A5A: FFree1Var var_C4 = ""
  loc_D05A5D: FLdRfVar var_C4
  loc_D05A60: FLdRfVar var_21C
  loc_D05A63: LitVarStr var_9C, "Ingresado"
  loc_D05A68: PopAdLdVar
  loc_D05A69: FLdRfVar var_198
  loc_D05A6C: FLdRfVar var_B0
  loc_D05A6F: FLdPr var_E8
  loc_D05A72: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05A77: FLdPr var_B0
  loc_D05A7A:  = Me.Fields
  loc_D05A7F: FLdPr var_198
  loc_D05A82: from_stack_2 = Me.Item(from_stack_1)
  loc_D05A87: FLdPr var_21C
  loc_D05A8A:  = Me.Value
  loc_D05A8F: FLdRfVar var_D4
  loc_D05A92: FLdRfVar var_2BC
  loc_D05A95: LitVarStr var_AC, "Cobrado"
  loc_D05A9A: PopAdLdVar
  loc_D05A9B: FLdRfVar var_2B8
  loc_D05A9E: FLdRfVar var_2B4
  loc_D05AA1: FLdPr var_E8
  loc_D05AA4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D05AA9: FLdPr var_2B4
  loc_D05AAC:  = Me.Fields
  loc_D05AB1: FLdPr var_2B8
  loc_D05AB4: from_stack_2 = Me.Item(from_stack_1)
  loc_D05AB9: FLdPr var_2BC
  loc_D05ABC:  = Me.Value
  loc_D05AC1: LitI2_Byte 0
  loc_D05AC3: LitI4 1
  loc_D05AC8: FLdPr Me
  loc_D05ACB: MemLdStr global_104
  loc_D05ACE: AryLock
  loc_D05AD1: Ary1LdPr
  loc_D05AD2: MemLdRfVar from_stack_1.global_8
  loc_D05AD5: CVarRef
  loc_D05ADA: LitI2_Byte &HFF
  loc_D05ADC: FLdRfVar var_C4
  loc_D05ADF: FnCDblVar
  loc_D05AE1: FLdRfVar var_D4
  loc_D05AE4: FnCDblVar
  loc_D05AE6: SubR4
  loc_D05AE7: CVarR8
  loc_D05AEB: PopAdLdVar
  loc_D05AEC: FLdPr Me
  loc_D05AEF: MemLdStr global_100
  loc_D05AF2: FLdPr Me
  loc_D05AF5: MemLdStr global_96
  loc_D05AF8: AryLock
  loc_D05AFB: Ary1LdPr
  loc_D05AFC: MemLdRfVar from_stack_1.global_20
  loc_D05AFF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D05B04: AryUnlock
  loc_D05B07: AryUnlock
  loc_D05B0A: FFreeAd var_B0 = "": var_198 = "": var_21C = "": var_2B4 = "": var_2B8 = ""
  loc_D05B19: FFreeVar var_C4 = ""
  loc_D05B20: LitI2_Byte 1
  loc_D05B22: PopTmpLdAd2 var_B2
  loc_D05B25: FLdPr var_E8
  loc_D05B28: Call clsctacte.Move(from_stack_1v)
  loc_D05B2D: FLdPr Me
  loc_D05B30: MemLdRfVar from_stack_1.global_100
  loc_D05B33: NextI4 var_2A8, loc_D0583E
  loc_D05B38: LitVar_FALSE
  loc_D05B3C: PopAdLdVar
  loc_D05B3D: FLdPrThis
  loc_D05B3E: VCallAd Control_ID_Pbar
  loc_D05B41: FStAdFunc var_B0
  loc_D05B44: FLdPr var_B0
  loc_D05B47: LateIdSt
  loc_D05B4C: FFree1Ad var_B0
  loc_D05B4F: LitNothing
  loc_D05B51: FStAd var_E8 
  loc_D05B55: LitI2_Byte &HFF
  loc_D05B57: FLdPr Me
  loc_D05B5A: MemStI2 bGenerado
  loc_D05B5D: LitI4 0
  loc_D05B62: CI2I4
  loc_D05B63: FLdPr Me
  loc_D05B66: Me.MousePointer = from_stack_1
  loc_D05B6B: LitVarStr var_9C, vbNullString
  loc_D05B70: PopAdLdVar
  loc_D05B71: FLdPr Me
  loc_D05B74: VCallAd Control_ID_statusBar
  loc_D05B77: FStAdFunc var_B0
  loc_D05B7A: FLdPr var_B0
  loc_D05B7D: LateIdSt
  loc_D05B82: FFree1Ad var_B0
  loc_D05B85: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B945F8
  'Data Table: 49B954
  loc_B940EC: OnErrorGoto loc_B94579
  loc_B940EF: FLdPr Me
  loc_B940F2: VCallAd Control_ID_DesdeMsk
  loc_B940F5: FStAdFunc var_100
  loc_B940F8: FLdPr var_100
  loc_B940FB: LateIdLdVar var_110 DispID_15 0
  loc_B94102: CStrVarTmp
  loc_B94103: CVarStr var_120
  loc_B94106: FLdRfVar var_130
  loc_B94109: ImpAdCallFPR4  = Month()
  loc_B9410E: FLdPr Me
  loc_B94111: VCallAd Control_ID_DesdeMsk
  loc_B94114: FStAdFunc var_1D8
  loc_B94117: FLdPr var_1D8
  loc_B9411A: LateIdLdVar var_1E8 DispID_15 0
  loc_B94121: CStrVarTmp
  loc_B94122: CVarStr var_1F8
  loc_B94125: FLdRfVar var_208
  loc_B94128: ImpAdCallFPR4  = Month()
  loc_B9412D: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B94132: FStStrNoPop var_88
  loc_B94135: LitStr "\Acuerdo 2988\"
  loc_B94138: ConcatStr
  loc_B94139: CVarStr var_CC
  loc_B9413C: FLdPr Me
  loc_B9413F: VCallAd Control_ID_DesdeMsk
  loc_B94142: FStAdFunc var_8C
  loc_B94145: FLdPr var_8C
  loc_B94148: LateIdLdVar var_9C DispID_15 0
  loc_B9414F: CStrVarTmp
  loc_B94150: CVarStr var_AC
  loc_B94153: FLdRfVar var_BC
  loc_B94156: ImpAdCallFPR4  = Year()
  loc_B9415B: FLdRfVar var_BC
  loc_B9415E: ConcatVar var_DC
  loc_B94162: LitVarStr var_EC, "\Mes "
  loc_B94167: ConcatVar var_FC
  loc_B9416B: LitI4 1
  loc_B94170: LitI4 1
  loc_B94175: LitVarStr var_140, "00"
  loc_B9417A: FStVarCopyObj var_150
  loc_B9417D: FLdRfVar var_150
  loc_B94180: FLdRfVar var_130
  loc_B94183: FLdRfVar var_160
  loc_B94186: ImpAdCallFPR4  = Format(, )
  loc_B9418B: FLdRfVar var_160
  loc_B9418E: ConcatVar var_170
  loc_B94192: LitVarStr var_180, "\"
  loc_B94197: ConcatVar var_190
  loc_B9419B: FLdPr Me
  loc_B9419E: VCallAd Control_ID_DesdeMsk
  loc_B941A1: FStAdFunc var_194
  loc_B941A4: FLdPr var_194
  loc_B941A7: LateIdLdVar var_1A4 DispID_15 0
  loc_B941AE: CStrVarTmp
  loc_B941AF: CVarStr var_1B4
  loc_B941B2: FLdRfVar var_1C4
  loc_B941B5: ImpAdCallFPR4  = Year()
  loc_B941BA: FLdRfVar var_1C4
  loc_B941BD: ConcatVar var_1D4
  loc_B941C1: LitI4 1
  loc_B941C6: LitI4 1
  loc_B941CB: LitVarStr var_218, "00"
  loc_B941D0: FStVarCopyObj var_228
  loc_B941D3: FLdRfVar var_228
  loc_B941D6: FLdRfVar var_208
  loc_B941D9: FLdRfVar var_238
  loc_B941DC: ImpAdCallFPR4  = Format(, )
  loc_B941E1: FLdRfVar var_238
  loc_B941E4: ConcatVar var_248
  loc_B941E8: LitVarStr var_258, " -  ConRecRen.txt"
  loc_B941ED: ConcatVar var_268
  loc_B941F1: CStrVarTmp
  loc_B941F2: ImpAdStStr MemVar_D93030
  loc_B941F6: FFree1Str var_88
  loc_B941F9: FFreeAd var_8C = "": var_100 = "": var_194 = ""
  loc_B94204: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_120 = "": var_130 = "": var_150 = "": var_FC = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_190 = "": var_1C4 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1D4 = "": var_238 = "": var_248 = ""
  loc_B94237: ImpAdLdI4 MemVar_D93030
  loc_B9423A: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B9423F: LitStr "	"
  loc_B94242: FStStrCopy var_26C
  loc_B94245: LitVarStr var_EC, "266"
  loc_B9424A: FLdPr Me
  loc_B9424D: VCallAd Control_ID_DesdeMsk
  loc_B94250: FStAdFunc var_8C
  loc_B94253: FLdPr var_8C
  loc_B94256: LateIdLdVar var_9C DispID_15 0
  loc_B9425D: CStrVarTmp
  loc_B9425E: CVarStr var_AC
  loc_B94261: FLdRfVar var_BC
  loc_B94264: ImpAdCallFPR4  = Year()
  loc_B94269: FLdRfVar var_BC
  loc_B9426C: ConcatVar var_CC
  loc_B94270: LitVarStr var_140, "060204"
  loc_B94275: ConcatVar var_DC
  loc_B94279: CStrVarTmp
  loc_B9427A: FStStr var_270
  loc_B9427D: FFree1Ad var_8C
  loc_B94280: FFreeVar var_9C = "": var_AC = "": var_BC = "": var_CC = ""
  loc_B9428D: FLdRfVar var_8C
  loc_B94290: LitI2_Byte 0
  loc_B94292: LitI2_Byte &HFF
  loc_B94294: ImpAdLdI4 MemVar_D93030
  loc_B94297: FLdPr Me
  loc_B9429A: MemLdRfVar from_stack_1.global_56
  loc_B9429D: NewIfNullPr IFileSystem3
  loc_B942A0: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B942A5: ILdRf var_8C
  loc_B942A8: FLdPr Me
  loc_B942AB: MemStVarAd
  loc_B942AF: FFree1Ad var_8C
  loc_B942B2: FLdPr Me
  loc_B942B5: MemLdStr global_96
  loc_B942B8: LitI2_Byte 1
  loc_B942BA: FnUBound
  loc_B942BC: LitI4 0
  loc_B942C1: EqI4
  loc_B942C2: BranchF loc_B94324
  loc_B942C5: LitI4 0
  loc_B942CA: LitI4 1
  loc_B942CF: FLdRfVar var_274
  loc_B942D2: Redim
  loc_B942DC: LitVarStr var_EC, "|"
  loc_B942E1: LitI4 0
  loc_B942E6: ILdRf var_274
  loc_B942E9: Ary1StVarCopy
  loc_B942EB: LitVarStr var_140, "SIN MOVIMIENTO"
  loc_B942F0: LitI4 1
  loc_B942F5: ILdRf var_274
  loc_B942F8: Ary1StVarCopy
  loc_B942FA: FLdRfVar var_274
  loc_B942FD: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B94302: FStStr var_88
  loc_B94305: FLdRfVar var_274
  loc_B94308: Erase
  loc_B94309: FLdZeroAd var_88
  loc_B9430C: CVarStr var_9C
  loc_B9430F: PopAdLdVar
  loc_B94310: FLdPr Me
  loc_B94313: MemLdRfVar from_stack_1.global_76
  loc_B94316: LdPrVar
  loc_B94318: LateMemCall
  loc_B9431E: FFree1Var var_9C = ""
  loc_B94321: Branch loc_B94567
  loc_B94324: LitI4 0
  loc_B94329: LitI4 7
  loc_B9432E: FLdRfVar var_274
  loc_B94331: Redim
  loc_B9433B: LitVarStr var_EC, "|"
  loc_B94340: LitI4 0
  loc_B94345: ILdRf var_274
  loc_B94348: Ary1StVarCopy
  loc_B9434A: LitVarStr var_140, "PeriodoPresenta"
  loc_B9434F: LitI4 1
  loc_B94354: ILdRf var_274
  loc_B94357: Ary1StVarCopy
  loc_B94359: LitVarStr var_180, "ExpID"
  loc_B9435E: LitI4 2
  loc_B94363: ILdRf var_274
  loc_B94366: Ary1StVarCopy
  loc_B94368: LitVarStr var_218, "ConceptoCod"
  loc_B9436D: LitI4 3
  loc_B94372: ILdRf var_274
  loc_B94375: Ary1StVarCopy
  loc_B94377: LitVarStr var_258, "ConceptoDet"
  loc_B9437C: LitI4 4
  loc_B94381: ILdRf var_274
  loc_B94384: Ary1StVarCopy
  loc_B94386: LitVarStr var_284, "TotalRegEje"
  loc_B9438B: LitI4 5
  loc_B94390: ILdRf var_274
  loc_B94393: Ary1StVarCopy
  loc_B94395: LitVarStr var_294, "TotalRendido"
  loc_B9439A: LitI4 6
  loc_B9439F: ILdRf var_274
  loc_B943A2: Ary1StVarCopy
  loc_B943A4: LitVarStr var_2A4, "Diferencia"
  loc_B943A9: LitI4 7
  loc_B943AE: ILdRf var_274
  loc_B943B1: Ary1StVarCopy
  loc_B943B3: FLdRfVar var_274
  loc_B943B6: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B943BB: FStStr var_88
  loc_B943BE: FLdRfVar var_274
  loc_B943C1: Erase
  loc_B943C2: FLdZeroAd var_88
  loc_B943C5: CVarStr var_9C
  loc_B943C8: PopAdLdVar
  loc_B943C9: FLdPr Me
  loc_B943CC: MemLdRfVar from_stack_1.global_76
  loc_B943CF: LdPrVar
  loc_B943D1: LateMemCall
  loc_B943D7: FFree1Var var_9C = ""
  loc_B943DA: LitI4 1
  loc_B943DF: FLdPr Me
  loc_B943E2: MemLdRfVar from_stack_1.global_100
  loc_B943E5: FLdPr Me
  loc_B943E8: MemLdStr global_96
  loc_B943EB: LitI2_Byte 1
  loc_B943ED: FnUBound
  loc_B943EF: ForI4 var_2BC
  loc_B943F5: FLdPr Me
  loc_B943F8: MemLdStr global_100
  loc_B943FB: FLdPr Me
  loc_B943FE: MemLdStr global_96
  loc_B94401: AryLock
  loc_B94404: Ary1LdRf
  loc_B94405: FStR4 var_2C4
  loc_B94408: FLdPr Me
  loc_B9440B: VCallAd Control_ID_DesdeMsk
  loc_B9440E: FStAdFunc var_100
  loc_B94411: FLdPr var_100
  loc_B94414: LateIdLdVar var_CC DispID_15 0
  loc_B9441B: CStrVarTmp
  loc_B9441C: CVarStr var_DC
  loc_B9441F: FLdRfVar var_FC
  loc_B94422: ImpAdCallFPR4  = Month()
  loc_B94427: LitI4 0
  loc_B9442C: LitI4 7
  loc_B94431: FLdRfVar var_274
  loc_B94434: Redim
  loc_B9443E: LitVarStr var_140, "|"
  loc_B94443: LitI4 0
  loc_B94448: ILdRf var_274
  loc_B9444B: Ary1StVarCopy
  loc_B9444D: FLdPr Me
  loc_B94450: VCallAd Control_ID_DesdeMsk
  loc_B94453: FStAdFunc var_8C
  loc_B94456: FLdPr var_8C
  loc_B94459: LateIdLdVar var_9C DispID_15 0
  loc_B94460: CStrVarTmp
  loc_B94461: CVarStr var_AC
  loc_B94464: FLdRfVar var_BC
  loc_B94467: ImpAdCallFPR4  = Year()
  loc_B9446C: FLdRfVar var_BC
  loc_B9446F: LitI4 1
  loc_B94474: LitI4 1
  loc_B94479: LitVarStr var_EC, "00"
  loc_B9447E: FStVarCopyObj var_110
  loc_B94481: FLdRfVar var_110
  loc_B94484: FLdRfVar var_FC
  loc_B94487: FLdRfVar var_120
  loc_B9448A: ImpAdCallFPR4  = Format(, )
  loc_B9448F: FLdRfVar var_120
  loc_B94492: ConcatVar var_130
  loc_B94496: ParmAry1St
  loc_B9449C: FLdRfVar var_270
  loc_B9449F: CVarRef
  loc_B944A4: ParmAry1St
  loc_B944AA: FMemLdR4 var_2C4(0)
  loc_B944AF: LitStr " - "
  loc_B944B2: ConcatStr
  loc_B944B3: FStStrNoPop var_88
  loc_B944B6: FMemLdR4 var_2C4(4)
  loc_B944BB: ConcatStr
  loc_B944BC: CVarStr var_150
  loc_B944BF: ParmAry1St
  loc_B944C5: FMemLdRf Method_A117C0
  loc_B944CA: CVarRef
  loc_B944CF: ParmAry1St
  loc_B944D5: FMemLdR4 var_2C4(12)
  loc_B944DA: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B944DF: CVarStr var_160
  loc_B944E2: ParmAry1St
  loc_B944E8: FMemLdR4 var_2C4(16)
  loc_B944ED: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B944F2: CVarStr var_170
  loc_B944F5: ParmAry1St
  loc_B944FB: FMemLdR4 var_2C4(20)
  loc_B94500: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B94505: CVarStr var_190
  loc_B94508: ParmAry1St
  loc_B9450E: FLdRfVar var_274
  loc_B94511: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B94516: FStStr var_2C8
  loc_B94519: FLdRfVar var_274
  loc_B9451C: Erase
  loc_B9451D: FLdZeroAd var_2C8
  loc_B94520: CVarStr var_1A4
  loc_B94523: PopAdLdVar
  loc_B94524: FLdPr Me
  loc_B94527: MemLdRfVar from_stack_1.global_76
  loc_B9452A: LdPrVar
  loc_B9452C: LateMemCall
  loc_B94532: FFree1Str var_88
  loc_B94535: FFreeAd var_8C = ""
  loc_B9453C: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_DC = "": var_FC = "": var_110 = "": var_BC = "": var_120 = ""
  loc_B94551: LitI4 0
  loc_B94556: FStR4 var_2C4
  loc_B94559: AryUnlock
  loc_B9455C: FLdPr Me
  loc_B9455F: MemLdRfVar from_stack_1.global_100
  loc_B94562: NextI4 var_2BC, loc_B943F5
  loc_B94567: FLdPr Me
  loc_B9456A: MemLdRfVar from_stack_1.global_76
  loc_B9456D: LdPrVar
  loc_B9456F: LateMemCall
  loc_B94575: On Error GoTo 0
  loc_B94578: ExitProcHresult
  loc_B94579: LitVar_Missing var_CC
  loc_B9457C: LitVar_Missing var_BC
  loc_B9457F: LitVar_Missing var_AC
  loc_B94582: LitI4 0
  loc_B94587: LitStr "Error "
  loc_B9458A: FLdRfVar var_2CC
  loc_B9458D: ImpAdCallI2 Err 'rtcErrObj
  loc_B94592: FStAdFunc var_8C
  loc_B94595: FLdPr var_8C
  loc_B94598:  = Err.Number
  loc_B9459D: ILdRf var_2CC
  loc_B945A0: CStrI4
  loc_B945A2: FStStrNoPop var_88
  loc_B945A5: ConcatStr
  loc_B945A6: FStStrNoPop var_2C8
  loc_B945A9: LitStr " ("
  loc_B945AC: ConcatStr
  loc_B945AD: FStStrNoPop var_2D4
  loc_B945B0: FLdRfVar var_2D0
  loc_B945B3: ImpAdCallI2 Err 'rtcErrObj
  loc_B945B8: FStAdFunc var_100
  loc_B945BB: FLdPr var_100
  loc_B945BE:  = Err.Description
  loc_B945C3: ILdRf var_2D0
  loc_B945C6: ConcatStr
  loc_B945C7: FStStrNoPop var_2D8
  loc_B945CA: LitStr ") in procedure GeneraTXT of Formulario rptA2988XX"
  loc_B945CD: ConcatStr
  loc_B945CE: CVarStr var_9C
  loc_B945D1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B945D6: FFreeStr var_88 = "": var_2C8 = "": var_2D4 = "": var_2D0 = ""
  loc_B945E3: FFreeAd var_8C = ""
  loc_B945EA: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B945F5: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'B98CE0
  'Data Table: 49B954
  loc_B98758: ImpAdLdI4 MemVar_D93030
  loc_B9875B: FStStrCopy var_88
  loc_B9875E: LitI4 0
  loc_B98763: LitStr "Excel.Application"
  loc_B98766: FLdRfVar var_B4
  loc_B98769: ImpAdCallFPR4  = CreateObject(, )
  loc_B9876E: FLdRfVar var_B4
  loc_B98771: FLdRfVar var_98
  loc_B98774: SetVarVarFunc
  loc_B98776: FLdRfVar var_98
  loc_B98779: VarLateMemLdVar var_B4, .Workbooks
  loc_B9877F: CastAdVar Me
  loc_B98783: FStAdFunc var_9C
  loc_B98786: FFree1Var var_B4 = ""
  loc_B98789: FLdRfVar var_E0
  loc_B9878C: LitVarI2 var_DC, 1
  loc_B98791: PopAdLdVar
  loc_B98792: FLdRfVar var_CC
  loc_B98795: FLdRfVar var_C8
  loc_B98798: LitI4 &H409
  loc_B9879D: LitVar_Missing var_C4
  loc_B987A0: PopAdLdVar
  loc_B987A1: FLdPr var_9C
  loc_B987A4:  = Forms
  loc_B987A9: FLdPr var_C8
  loc_B987AC: Call 0.Method_arg_20C ()
  loc_B987B1: FLdPr var_CC
  loc_B987B4: Me.BackColor = from_stack_1
  loc_B987B9: ILdRf var_E0
  loc_B987BC: CastAd
  loc_B987BF: FStAdFunc var_A0
  loc_B987C2: FFreeAd var_C8 = "": var_CC = ""
  loc_B987CB: LitVar_TRUE var_C4
  loc_B987CE: PopAdLdVar
  loc_B987CF: FLdRfVar var_98
  loc_B987D2: VarLateMemSt .Visible
  loc_B987D6: LitVarI2 var_C4, 1
  loc_B987DB: PopAdLdVar
  loc_B987DC: LitVarI2 var_F0, 1
  loc_B987E1: PopAdLdVar
  loc_B987E2: LitVarStr var_110, "Cod. Concepto"
  loc_B987E7: PopAdLdVar
  loc_B987E8: FLdRfVar var_C8
  loc_B987EB: FLdPr var_A0
  loc_B987EE:  = Me.FontUnderline
  loc_B987F3: FLdPr var_C8
  loc_B987F6: LateIdCallSt
  loc_B987FE: FFree1Ad var_C8
  loc_B98801: LitVarI2 var_C4, 1
  loc_B98806: PopAdLdVar
  loc_B98807: LitVarI2 var_F0, 2
  loc_B9880C: PopAdLdVar
  loc_B9880D: LitVarStr var_110, "Detalle de Concepto"
  loc_B98812: PopAdLdVar
  loc_B98813: FLdRfVar var_C8
  loc_B98816: FLdPr var_A0
  loc_B98819:  = Me.FontUnderline
  loc_B9881E: FLdPr var_C8
  loc_B98821: LateIdCallSt
  loc_B98829: FFree1Ad var_C8
  loc_B9882C: LitVarI2 var_C4, 1
  loc_B98831: PopAdLdVar
  loc_B98832: LitVarI2 var_F0, 3
  loc_B98837: PopAdLdVar
  loc_B98838: LitVarStr var_110, "Total Ingresado Anexo IV"
  loc_B9883D: PopAdLdVar
  loc_B9883E: FLdRfVar var_C8
  loc_B98841: FLdPr var_A0
  loc_B98844:  = Me.FontUnderline
  loc_B98849: FLdPr var_C8
  loc_B9884C: LateIdCallSt
  loc_B98854: FFree1Ad var_C8
  loc_B98857: LitVarI2 var_C4, 1
  loc_B9885C: PopAdLdVar
  loc_B9885D: LitVarI2 var_F0, 4
  loc_B98862: PopAdLdVar
  loc_B98863: LitVarStr var_110, "Total Rendido Entidad Recaudadora"
  loc_B98868: PopAdLdVar
  loc_B98869: FLdRfVar var_C8
  loc_B9886C: FLdPr var_A0
  loc_B9886F:  = Me.FontUnderline
  loc_B98874: FLdPr var_C8
  loc_B98877: LateIdCallSt
  loc_B9887F: FFree1Ad var_C8
  loc_B98882: LitVarI2 var_C4, 1
  loc_B98887: PopAdLdVar
  loc_B98888: LitVarI2 var_F0, 5
  loc_B9888D: PopAdLdVar
  loc_B9888E: LitVarStr var_110, "Diferencia"
  loc_B98893: PopAdLdVar
  loc_B98894: FLdRfVar var_C8
  loc_B98897: FLdPr var_A0
  loc_B9889A:  = Me.FontUnderline
  loc_B9889F: FLdPr var_C8
  loc_B988A2: LateIdCallSt
  loc_B988AA: FFree1Ad var_C8
  loc_B988AD: LitI2_Byte 1
  loc_B988AF: FStI2 var_A2
  loc_B988B2: LitI4 1
  loc_B988B7: FLdPr Me
  loc_B988BA: MemLdRfVar from_stack_1.global_100
  loc_B988BD: FLdPr Me
  loc_B988C0: MemLdStr global_96
  loc_B988C3: LitI2_Byte 1
  loc_B988C5: FnUBound
  loc_B988C7: ForI4 var_128
  loc_B988CD: FLdPr Me
  loc_B988D0: MemLdStr global_100
  loc_B988D3: FLdPr Me
  loc_B988D6: MemLdStr global_96
  loc_B988D9: AryLock
  loc_B988DC: Ary1LdPr
  loc_B988DD: MemLdRfVar from_stack_1.global_12
  loc_B988E0: FStR4 var_130
  loc_B988E3: FLdI2 var_A2
  loc_B988E6: CI4UI1
  loc_B988E7: FLdPr Me
  loc_B988EA: MemLdStr global_100
  loc_B988ED: AddI4
  loc_B988EE: CVarI4
  loc_B988F2: PopAdLdVar
  loc_B988F3: LitVarI2 var_F0, 1
  loc_B988F8: PopAdLdVar
  loc_B988F9: FLdPr Me
  loc_B988FC: MemLdStr global_100
  loc_B988FF: FLdPr Me
  loc_B98902: MemLdStr global_96
  loc_B98905: Ary1LdPr
  loc_B98906: MemLdStr global_0
  loc_B98909: LitStr " - "
  loc_B9890C: ConcatStr
  loc_B9890D: FStStrNoPop var_134
  loc_B98910: FLdPr Me
  loc_B98913: MemLdStr global_100
  loc_B98916: FLdPr Me
  loc_B98919: MemLdStr global_96
  loc_B9891C: Ary1LdPr
  loc_B9891D: MemLdStr global_4
  loc_B98920: ConcatStr
  loc_B98921: CVarStr var_B4
  loc_B98924: PopAdLdVar
  loc_B98925: FLdRfVar var_C8
  loc_B98928: FLdPr var_A0
  loc_B9892B:  = Me.FontUnderline
  loc_B98930: FLdPr var_C8
  loc_B98933: LateIdCallSt
  loc_B9893B: FFree1Str var_134
  loc_B9893E: FFree1Ad var_C8
  loc_B98941: FFree1Var var_B4 = ""
  loc_B98944: FLdI2 var_A2
  loc_B98947: CI4UI1
  loc_B98948: FLdPr Me
  loc_B9894B: MemLdStr global_100
  loc_B9894E: AddI4
  loc_B9894F: CVarI4
  loc_B98953: PopAdLdVar
  loc_B98954: LitVarI2 var_F0, 2
  loc_B98959: PopAdLdVar
  loc_B9895A: FLdPr Me
  loc_B9895D: MemLdStr global_100
  loc_B98960: FLdPr Me
  loc_B98963: MemLdStr global_96
  loc_B98966: Ary1LdPr
  loc_B98967: MemLdStr global_8
  loc_B9896A: CVarStr var_110
  loc_B9896D: PopAdLdVar
  loc_B9896E: FLdRfVar var_C8
  loc_B98971: FLdPr var_A0
  loc_B98974:  = Me.FontUnderline
  loc_B98979: FLdPr var_C8
  loc_B9897C: LateIdCallSt
  loc_B98984: FFree1Ad var_C8
  loc_B98987: FLdI2 var_A2
  loc_B9898A: CI4UI1
  loc_B9898B: FLdPr Me
  loc_B9898E: MemLdStr global_100
  loc_B98991: AddI4
  loc_B98992: CVarI4
  loc_B98996: PopAdLdVar
  loc_B98997: LitVarI2 var_F0, 3
  loc_B9899C: PopAdLdVar
  loc_B9899D: FMemLdR4 var_130(0)
  loc_B989A2: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B989A7: CVarR8
  loc_B989AB: PopAdLdVar
  loc_B989AC: FLdRfVar var_C8
  loc_B989AF: FLdPr var_A0
  loc_B989B2:  = Me.FontUnderline
  loc_B989B7: FLdPr var_C8
  loc_B989BA: LateIdCallSt
  loc_B989C2: FFree1Ad var_C8
  loc_B989C5: FLdI2 var_A2
  loc_B989C8: CI4UI1
  loc_B989C9: FLdPr Me
  loc_B989CC: MemLdStr global_100
  loc_B989CF: AddI4
  loc_B989D0: CVarI4
  loc_B989D4: PopAdLdVar
  loc_B989D5: LitVarI2 var_F0, 4
  loc_B989DA: PopAdLdVar
  loc_B989DB: FMemLdR4 var_130(4)
  loc_B989E0: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B989E5: CVarR8
  loc_B989E9: PopAdLdVar
  loc_B989EA: FLdRfVar var_C8
  loc_B989ED: FLdPr var_A0
  loc_B989F0:  = Me.FontUnderline
  loc_B989F5: FLdPr var_C8
  loc_B989F8: LateIdCallSt
  loc_B98A00: FFree1Ad var_C8
  loc_B98A03: FLdI2 var_A2
  loc_B98A06: CI4UI1
  loc_B98A07: FLdPr Me
  loc_B98A0A: MemLdStr global_100
  loc_B98A0D: AddI4
  loc_B98A0E: CVarI4
  loc_B98A12: PopAdLdVar
  loc_B98A13: LitVarI2 var_F0, 5
  loc_B98A18: PopAdLdVar
  loc_B98A19: FMemLdR4 var_130(8)
  loc_B98A1E: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B98A23: CVarR8
  loc_B98A27: PopAdLdVar
  loc_B98A28: FLdRfVar var_C8
  loc_B98A2B: FLdPr var_A0
  loc_B98A2E:  = Me.FontUnderline
  loc_B98A33: FLdPr var_C8
  loc_B98A36: LateIdCallSt
  loc_B98A3E: FFree1Ad var_C8
  loc_B98A41: LitI4 0
  loc_B98A46: FStR4 var_130
  loc_B98A49: AryUnlock
  loc_B98A4C: FLdPr Me
  loc_B98A4F: MemLdRfVar from_stack_1.global_100
  loc_B98A52: NextI4 var_128, loc_B988CD
  loc_B98A57: FLdI2 var_A2
  loc_B98A5A: CI4UI1
  loc_B98A5B: FLdPr Me
  loc_B98A5E: MemLdStr global_100
  loc_B98A61: AddI4
  loc_B98A62: CVarI4
  loc_B98A66: PopAdLdVar
  loc_B98A67: LitVarI2 var_F0, 2
  loc_B98A6C: PopAdLdVar
  loc_B98A6D: LitVarStr var_110, "TOTALES"
  loc_B98A72: PopAdLdVar
  loc_B98A73: FLdRfVar var_C8
  loc_B98A76: FLdPr var_A0
  loc_B98A79:  = Me.FontUnderline
  loc_B98A7E: FLdPr var_C8
  loc_B98A81: LateIdCallSt
  loc_B98A89: FFree1Ad var_C8
  loc_B98A8C: FLdI2 var_A2
  loc_B98A8F: CI4UI1
  loc_B98A90: FLdPr Me
  loc_B98A93: MemLdStr global_100
  loc_B98A96: AddI4
  loc_B98A97: CVarI4
  loc_B98A9B: PopAdLdVar
  loc_B98A9C: LitVarI2 var_F0, 3
  loc_B98AA1: PopAdLdVar
  loc_B98AA2: LitStr "=SUM(R[-"
  loc_B98AA5: FLdPr Me
  loc_B98AA8: MemLdStr global_96
  loc_B98AAB: LitI2_Byte 1
  loc_B98AAD: FnUBound
  loc_B98AAF: CStrI4
  loc_B98AB1: FStStrNoPop var_134
  loc_B98AB4: ConcatStr
  loc_B98AB5: FStStrNoPop var_138
  loc_B98AB8: LitStr "]C:R[-1]C)"
  loc_B98ABB: ConcatStr
  loc_B98ABC: CVarStr var_B4
  loc_B98ABF: PopAdLdVar
  loc_B98AC0: FLdRfVar var_C8
  loc_B98AC3: FLdPr var_A0
  loc_B98AC6:  = Me.FontUnderline
  loc_B98ACB: FLdPr var_C8
  loc_B98ACE: LateIdCallSt
  loc_B98AD6: FFreeStr var_134 = ""
  loc_B98ADD: FFree1Ad var_C8
  loc_B98AE0: FFree1Var var_B4 = ""
  loc_B98AE3: FLdI2 var_A2
  loc_B98AE6: CI4UI1
  loc_B98AE7: FLdPr Me
  loc_B98AEA: MemLdStr global_100
  loc_B98AED: AddI4
  loc_B98AEE: CVarI4
  loc_B98AF2: PopAdLdVar
  loc_B98AF3: LitVarI2 var_F0, 4
  loc_B98AF8: PopAdLdVar
  loc_B98AF9: LitStr "=SUM(R[-"
  loc_B98AFC: FLdPr Me
  loc_B98AFF: MemLdStr global_96
  loc_B98B02: LitI2_Byte 1
  loc_B98B04: FnUBound
  loc_B98B06: CStrI4
  loc_B98B08: FStStrNoPop var_134
  loc_B98B0B: ConcatStr
  loc_B98B0C: FStStrNoPop var_138
  loc_B98B0F: LitStr "]C:R[-1]C)"
  loc_B98B12: ConcatStr
  loc_B98B13: CVarStr var_B4
  loc_B98B16: PopAdLdVar
  loc_B98B17: FLdRfVar var_C8
  loc_B98B1A: FLdPr var_A0
  loc_B98B1D:  = Me.FontUnderline
  loc_B98B22: FLdPr var_C8
  loc_B98B25: LateIdCallSt
  loc_B98B2D: FFreeStr var_134 = ""
  loc_B98B34: FFree1Ad var_C8
  loc_B98B37: FFree1Var var_B4 = ""
  loc_B98B3A: FLdI2 var_A2
  loc_B98B3D: CI4UI1
  loc_B98B3E: FLdPr Me
  loc_B98B41: MemLdStr global_100
  loc_B98B44: AddI4
  loc_B98B45: CVarI4
  loc_B98B49: PopAdLdVar
  loc_B98B4A: LitVarI2 var_F0, 5
  loc_B98B4F: PopAdLdVar
  loc_B98B50: LitStr "=SUM(R[-"
  loc_B98B53: FLdPr Me
  loc_B98B56: MemLdStr global_96
  loc_B98B59: LitI2_Byte 1
  loc_B98B5B: FnUBound
  loc_B98B5D: CStrI4
  loc_B98B5F: FStStrNoPop var_134
  loc_B98B62: ConcatStr
  loc_B98B63: FStStrNoPop var_138
  loc_B98B66: LitStr "]C:R[-1]C)"
  loc_B98B69: ConcatStr
  loc_B98B6A: CVarStr var_B4
  loc_B98B6D: PopAdLdVar
  loc_B98B6E: FLdRfVar var_C8
  loc_B98B71: FLdPr var_A0
  loc_B98B74:  = Me.FontUnderline
  loc_B98B79: FLdPr var_C8
  loc_B98B7C: LateIdCallSt
  loc_B98B84: FFreeStr var_134 = ""
  loc_B98B8B: FFree1Ad var_C8
  loc_B98B8E: FFree1Var var_B4 = ""
  loc_B98B91: LitVar_TRUE var_F0
  loc_B98B94: PopAdLdVar
  loc_B98B95: FLdRfVar var_C8
  loc_B98B98: LitVar_Missing var_DC
  loc_B98B9B: PopAdLdVar
  loc_B98B9C: LitVarStr var_C4, "A1:E1"
  loc_B98BA1: PopAdLdVar
  loc_B98BA2: FLdPr var_A0
  loc_B98BA5:  = Me.Image
  loc_B98BAA: FLdPr var_C8
  loc_B98BAD: LateIdLdVar var_B4 DispID_146 0
  loc_B98BB4: CastAdVar Me
  loc_B98BB8: FStAdFunc var_CC
  loc_B98BBB: FLdPr var_CC
  loc_B98BBE: LateIdSt
  loc_B98BC3: FFreeAd var_C8 = ""
  loc_B98BCA: FFree1Var var_B4 = ""
  loc_B98BCD: LitVar_TRUE var_DC
  loc_B98BD0: PopAdLdVar
  loc_B98BD1: FLdRfVar var_C8
  loc_B98BD4: LitVar_Missing var_C4
  loc_B98BD7: PopAdLdVar
  loc_B98BD8: LitStr "A"
  loc_B98BDB: FLdPr Me
  loc_B98BDE: MemLdStr global_100
  loc_B98BE1: LitI4 1
  loc_B98BE6: AddI4
  loc_B98BE7: CStrI4
  loc_B98BE9: FStStrNoPop var_134
  loc_B98BEC: ConcatStr
  loc_B98BED: FStStrNoPop var_138
  loc_B98BF0: LitStr ":E"
  loc_B98BF3: ConcatStr
  loc_B98BF4: FStStrNoPop var_13C
  loc_B98BF7: FLdPr Me
  loc_B98BFA: MemLdStr global_100
  loc_B98BFD: LitI4 1
  loc_B98C02: AddI4
  loc_B98C03: CStrI4
  loc_B98C05: FStStrNoPop var_140
  loc_B98C08: ConcatStr
  loc_B98C09: CVarStr var_B4
  loc_B98C0C: PopAdLdVar
  loc_B98C0D: FLdPr var_A0
  loc_B98C10:  = Me.Image
  loc_B98C15: FLdPr var_C8
  loc_B98C18: LateIdLdVar var_150 DispID_146 0
  loc_B98C1F: CastAdVar Me
  loc_B98C23: FStAdFunc var_CC
  loc_B98C26: FLdPr var_CC
  loc_B98C29: LateIdSt
  loc_B98C2E: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_B98C39: FFreeAd var_C8 = ""
  loc_B98C40: FFreeVar var_B4 = ""
  loc_B98C47: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_B98C4C: PopAdLdVar
  loc_B98C4D: LitVarStr var_C4, "C:E"
  loc_B98C52: PopAdLdVar
  loc_B98C53: FLdRfVar var_C8
  loc_B98C56: FLdPr var_A0
  loc_B98C59:  = Me.CurrentY
  loc_B98C5E: FLdPr var_C8
  loc_B98C61: LateIdCallLdVar
  loc_B98C6B: VarLateMemSt .NumberFormat
  loc_B98C6F: FFree1Ad var_C8
  loc_B98C72: FFree1Var var_B4 = ""
  loc_B98C75: LitVarStr var_C4, "A:E"
  loc_B98C7A: PopAdLdVar
  loc_B98C7B: FLdRfVar var_C8
  loc_B98C7E: FLdPr var_A0
  loc_B98C81:  = Me.CurrentY
  loc_B98C86: FLdPr var_C8
  loc_B98C89: LateIdCallLdVar
  loc_B98C93: LdPrVar
  loc_B98C95: LateMemCall
  loc_B98C9B: FFree1Ad var_C8
  loc_B98C9E: FFree1Var var_150 = ""
  loc_B98CA1: LitVar_Missing var_180
  loc_B98CA4: PopAdLdVar
  loc_B98CA5: LitVar_Missing var_170
  loc_B98CA8: PopAdLdVar
  loc_B98CA9: LitVar_Missing var_160
  loc_B98CAC: PopAdLdVar
  loc_B98CAD: LitVar_Missing var_120
  loc_B98CB0: PopAdLdVar
  loc_B98CB1: LitVar_Missing var_110
  loc_B98CB4: PopAdLdVar
  loc_B98CB5: LitVar_Missing var_100
  loc_B98CB8: PopAdLdVar
  loc_B98CB9: LitVar_Missing var_F0
  loc_B98CBC: PopAdLdVar
  loc_B98CBD: LitVar_Missing var_DC
  loc_B98CC0: PopAdLdVar
  loc_B98CC1: LitVar_Missing var_C4
  loc_B98CC4: PopAdLdVar
  loc_B98CC5: ILdRf var_88
  loc_B98CC8: FLdPr var_A0
  loc_B98CCB: Me.MouseIcon = from_stack_1
  loc_B98CD0: LitI4 &H409
  loc_B98CD5: FLdPr var_9C
  loc_B98CDD: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B1D178
  'Data Table: 49B954
  loc_B1CEE8: FLdRfVar var_88
  loc_B1CEEB: LitI2_Byte 0
  loc_B1CEED: LitI2_Byte &HFF
  loc_B1CEEF: ImpAdLdI4 MemVar_D93C84
  loc_B1CEF2: FLdPr Me
  loc_B1CEF5: MemLdRfVar from_stack_1.global_56
  loc_B1CEF8: NewIfNullPr IFileSystem3
  loc_B1CEFB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B1CF00: ILdRf var_88
  loc_B1CF03: FLdPr Me
  loc_B1CF06: MemStVarAd
  loc_B1CF0A: FFree1Ad var_88
  loc_B1CF0D: LitI2_Byte &HFF
  loc_B1CF0F: ImpAdStI2 MemVar_D93C8A
  loc_B1CF12: Call Proc_326_23_BB69E4()
  loc_B1CF17: LitI4 1
  loc_B1CF1C: FLdPr Me
  loc_B1CF1F: MemLdRfVar from_stack_1.global_100
  loc_B1CF22: FLdPr Me
  loc_B1CF25: MemLdStr global_96
  loc_B1CF28: LitI2_Byte 1
  loc_B1CF2A: FnUBound
  loc_B1CF2C: ForI4 var_90
  loc_B1CF32: FLdPr Me
  loc_B1CF35: MemLdStr global_100
  loc_B1CF38: FLdPr Me
  loc_B1CF3B: MemLdStr global_96
  loc_B1CF3E: AryLock
  loc_B1CF41: Ary1LdRf
  loc_B1CF42: FStR4 var_98
  loc_B1CF45: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B1CF4A: PopAdLdVar
  loc_B1CF4B: FLdPr Me
  loc_B1CF4E: MemLdRfVar from_stack_1.global_60
  loc_B1CF51: LdPrVar
  loc_B1CF53: LateMemCall
  loc_B1CF59: LitStr vbNullString
  loc_B1CF5C: LitI2_Byte 0
  loc_B1CF5E: LitI2_Byte 0
  loc_B1CF60: LitI2_Byte 0
  loc_B1CF62: LitStr "right"
  loc_B1CF65: FMemLdR4 var_98(0)
  loc_B1CF6A: LitStr " - "
  loc_B1CF6D: ConcatStr
  loc_B1CF6E: FStStrNoPop var_BC
  loc_B1CF71: FMemLdR4 var_98(4)
  loc_B1CF76: ConcatStr
  loc_B1CF77: FStStrNoPop var_C0
  loc_B1CF7A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1CF7F: CVarStr var_D0
  loc_B1CF82: PopAdLdVar
  loc_B1CF83: FLdPr Me
  loc_B1CF86: MemLdRfVar from_stack_1.global_60
  loc_B1CF89: LdPrVar
  loc_B1CF8B: LateMemCall
  loc_B1CF91: FFreeStr var_BC = ""
  loc_B1CF98: FFree1Var var_D0 = ""
  loc_B1CF9B: LitStr vbNullString
  loc_B1CF9E: LitI2_Byte 0
  loc_B1CFA0: LitI2_Byte 0
  loc_B1CFA2: LitI2_Byte 0
  loc_B1CFA4: LitStr "left"
  loc_B1CFA7: FMemLdR4 var_98(8)
  loc_B1CFAC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1CFB1: CVarStr var_D0
  loc_B1CFB4: PopAdLdVar
  loc_B1CFB5: FLdPr Me
  loc_B1CFB8: MemLdRfVar from_stack_1.global_60
  loc_B1CFBB: LdPrVar
  loc_B1CFBD: LateMemCall
  loc_B1CFC3: FFree1Var var_D0 = ""
  loc_B1CFC6: FMemLdRf unk_49B8BD
  loc_B1CFCB: FStR4 var_D4
  loc_B1CFCE: LitStr vbNullString
  loc_B1CFD1: LitI2_Byte 0
  loc_B1CFD3: LitI2_Byte 0
  loc_B1CFD5: LitI2_Byte 0
  loc_B1CFD7: LitStr "right"
  loc_B1CFDA: FMemLdR4 var_D4(0)
  loc_B1CFDF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1CFE4: CVarStr var_D0
  loc_B1CFE7: PopAdLdVar
  loc_B1CFE8: FLdPr Me
  loc_B1CFEB: MemLdRfVar from_stack_1.global_60
  loc_B1CFEE: LdPrVar
  loc_B1CFF0: LateMemCall
  loc_B1CFF6: FFree1Var var_D0 = ""
  loc_B1CFF9: LitStr vbNullString
  loc_B1CFFC: LitI2_Byte 0
  loc_B1CFFE: LitI2_Byte 0
  loc_B1D000: LitI2_Byte 0
  loc_B1D002: LitStr "right"
  loc_B1D005: FMemLdR4 var_D4(4)
  loc_B1D00A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1D00F: CVarStr var_D0
  loc_B1D012: PopAdLdVar
  loc_B1D013: FLdPr Me
  loc_B1D016: MemLdRfVar from_stack_1.global_60
  loc_B1D019: LdPrVar
  loc_B1D01B: LateMemCall
  loc_B1D021: FFree1Var var_D0 = ""
  loc_B1D024: LitStr vbNullString
  loc_B1D027: LitI2_Byte 0
  loc_B1D029: LitI2_Byte 0
  loc_B1D02B: LitI2_Byte 0
  loc_B1D02D: LitStr "right"
  loc_B1D030: FMemLdR4 var_D4(8)
  loc_B1D035: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1D03A: CVarStr var_D0
  loc_B1D03D: PopAdLdVar
  loc_B1D03E: FLdPr Me
  loc_B1D041: MemLdRfVar from_stack_1.global_60
  loc_B1D044: LdPrVar
  loc_B1D046: LateMemCall
  loc_B1D04C: FFree1Var var_D0 = ""
  loc_B1D04F: LitI4 0
  loc_B1D054: FStR4 var_D4
  loc_B1D057: LitVarStr var_A8, "     </tr>"
  loc_B1D05C: PopAdLdVar
  loc_B1D05D: FLdPr Me
  loc_B1D060: MemLdRfVar from_stack_1.global_60
  loc_B1D063: LdPrVar
  loc_B1D065: LateMemCall
  loc_B1D06B: LitI4 0
  loc_B1D070: FStR4 var_98
  loc_B1D073: AryUnlock
  loc_B1D076: FLdPr Me
  loc_B1D079: MemLdRfVar from_stack_1.global_100
  loc_B1D07C: NextI4 var_90, loc_B1CF32
  loc_B1D081: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B1D086: PopAdLdVar
  loc_B1D087: FLdPr Me
  loc_B1D08A: MemLdRfVar from_stack_1.global_60
  loc_B1D08D: LdPrVar
  loc_B1D08F: LateMemCall
  loc_B1D095: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B1D09A: PopAdLdVar
  loc_B1D09B: FLdPr Me
  loc_B1D09E: MemLdRfVar from_stack_1.global_60
  loc_B1D0A1: LdPrVar
  loc_B1D0A3: LateMemCall
  loc_B1D0A9: LitI4 1
  loc_B1D0AE: FLdPr Me
  loc_B1D0B1: MemLdStr global_104
  loc_B1D0B4: AryLock
  loc_B1D0B7: Ary1LdRf
  loc_B1D0B8: FStR4 var_DC
  loc_B1D0BB: LitStr vbNullString
  loc_B1D0BE: LitI2_Byte 0
  loc_B1D0C0: LitI2_Byte 0
  loc_B1D0C2: LitI2_Byte 0
  loc_B1D0C4: LitStr "right"
  loc_B1D0C7: FMemLdR4 var_DC(0)
  loc_B1D0CC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1D0D1: CVarStr var_D0
  loc_B1D0D4: PopAdLdVar
  loc_B1D0D5: FLdPr Me
  loc_B1D0D8: MemLdRfVar from_stack_1.global_60
  loc_B1D0DB: LdPrVar
  loc_B1D0DD: LateMemCall
  loc_B1D0E3: FFree1Var var_D0 = ""
  loc_B1D0E6: LitStr vbNullString
  loc_B1D0E9: LitI2_Byte 0
  loc_B1D0EB: LitI2_Byte 0
  loc_B1D0ED: LitI2_Byte 0
  loc_B1D0EF: LitStr "right"
  loc_B1D0F2: FMemLdR4 var_DC(4)
  loc_B1D0F7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1D0FC: CVarStr var_D0
  loc_B1D0FF: PopAdLdVar
  loc_B1D100: FLdPr Me
  loc_B1D103: MemLdRfVar from_stack_1.global_60
  loc_B1D106: LdPrVar
  loc_B1D108: LateMemCall
  loc_B1D10E: FFree1Var var_D0 = ""
  loc_B1D111: LitStr vbNullString
  loc_B1D114: LitI2_Byte 0
  loc_B1D116: LitI2_Byte 0
  loc_B1D118: LitI2_Byte 0
  loc_B1D11A: LitStr "right"
  loc_B1D11D: FMemLdR4 var_DC(8)
  loc_B1D122: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1D127: CVarStr var_D0
  loc_B1D12A: PopAdLdVar
  loc_B1D12B: FLdPr Me
  loc_B1D12E: MemLdRfVar from_stack_1.global_60
  loc_B1D131: LdPrVar
  loc_B1D133: LateMemCall
  loc_B1D139: FFree1Var var_D0 = ""
  loc_B1D13C: LitI4 0
  loc_B1D141: FStR4 var_DC
  loc_B1D144: AryUnlock
  loc_B1D147: LitVarStr var_A8, "     </tr>"
  loc_B1D14C: PopAdLdVar
  loc_B1D14D: FLdPr Me
  loc_B1D150: MemLdRfVar from_stack_1.global_60
  loc_B1D153: LdPrVar
  loc_B1D155: LateMemCall
  loc_B1D15B: Call Proc_326_24_AE0610()
  loc_B1D160: FLdPr Me
  loc_B1D163: MemLdRfVar from_stack_1.global_60
  loc_B1D166: LdPrVar
  loc_B1D168: LateMemCall
  loc_B1D16E: LitStr vbNullString
  loc_B1D171: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B1D176: ExitProcHresult
  loc_B1D177: ConcatStr
End Sub

Private Function Proc_326_23_BB69E4() 'BB69E4
  'Data Table: 49B954
  loc_BB6354: LitVarStr var_94, "<html>"
  loc_BB6359: PopAdLdVar
  loc_BB635A: FLdPr Me
  loc_BB635D: MemLdRfVar from_stack_1.global_60
  loc_BB6360: LdPrVar
  loc_BB6362: LateMemCall
  loc_BB6368: LitVarStr var_94, "<head>"
  loc_BB636D: PopAdLdVar
  loc_BB636E: FLdPr Me
  loc_BB6371: MemLdRfVar from_stack_1.global_60
  loc_BB6374: LdPrVar
  loc_BB6376: LateMemCall
  loc_BB637C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB6381: PopAdLdVar
  loc_BB6382: FLdPr Me
  loc_BB6385: MemLdRfVar from_stack_1.global_60
  loc_BB6388: LdPrVar
  loc_BB638A: LateMemCall
  loc_BB6390: LitStr "<title>"
  loc_BB6393: FLdRfVar var_A8
  loc_BB6396: FLdPr Me
  loc_BB6399:  = Me.Caption
  loc_BB639E: ILdRf var_A8
  loc_BB63A1: ConcatStr
  loc_BB63A2: FStStrNoPop var_AC
  loc_BB63A5: LitStr "</title>"
  loc_BB63A8: ConcatStr
  loc_BB63A9: CVarStr var_BC
  loc_BB63AC: PopAdLdVar
  loc_BB63AD: FLdPr Me
  loc_BB63B0: MemLdRfVar from_stack_1.global_60
  loc_BB63B3: LdPrVar
  loc_BB63B5: LateMemCall
  loc_BB63BB: FFreeStr var_A8 = ""
  loc_BB63C2: FFree1Var var_BC = ""
  loc_BB63C5: LitVarStr var_94, "<style type=""text/css"">"
  loc_BB63CA: PopAdLdVar
  loc_BB63CB: FLdPr Me
  loc_BB63CE: MemLdRfVar from_stack_1.global_60
  loc_BB63D1: LdPrVar
  loc_BB63D3: LateMemCall
  loc_BB63D9: LitVarStr var_94, ".Titulo1 {"
  loc_BB63DE: PopAdLdVar
  loc_BB63DF: FLdPr Me
  loc_BB63E2: MemLdRfVar from_stack_1.global_60
  loc_BB63E5: LdPrVar
  loc_BB63E7: LateMemCall
  loc_BB63ED: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB63F2: PopAdLdVar
  loc_BB63F3: FLdPr Me
  loc_BB63F6: MemLdRfVar from_stack_1.global_60
  loc_BB63F9: LdPrVar
  loc_BB63FB: LateMemCall
  loc_BB6401: LitVarStr var_94, " font-size: 18px;"
  loc_BB6406: PopAdLdVar
  loc_BB6407: FLdPr Me
  loc_BB640A: MemLdRfVar from_stack_1.global_60
  loc_BB640D: LdPrVar
  loc_BB640F: LateMemCall
  loc_BB6415: LitVarStr var_94, " font-weight: bold;"
  loc_BB641A: PopAdLdVar
  loc_BB641B: FLdPr Me
  loc_BB641E: MemLdRfVar from_stack_1.global_60
  loc_BB6421: LdPrVar
  loc_BB6423: LateMemCall
  loc_BB6429: LitVarStr var_94, "}"
  loc_BB642E: PopAdLdVar
  loc_BB642F: FLdPr Me
  loc_BB6432: MemLdRfVar from_stack_1.global_60
  loc_BB6435: LdPrVar
  loc_BB6437: LateMemCall
  loc_BB643D: LitVarStr var_94, ".Titulo2 {"
  loc_BB6442: PopAdLdVar
  loc_BB6443: FLdPr Me
  loc_BB6446: MemLdRfVar from_stack_1.global_60
  loc_BB6449: LdPrVar
  loc_BB644B: LateMemCall
  loc_BB6451: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB6456: PopAdLdVar
  loc_BB6457: FLdPr Me
  loc_BB645A: MemLdRfVar from_stack_1.global_60
  loc_BB645D: LdPrVar
  loc_BB645F: LateMemCall
  loc_BB6465: LitVarStr var_94, " font-size: 14px;"
  loc_BB646A: PopAdLdVar
  loc_BB646B: FLdPr Me
  loc_BB646E: MemLdRfVar from_stack_1.global_60
  loc_BB6471: LdPrVar
  loc_BB6473: LateMemCall
  loc_BB6479: LitVarStr var_94, " font-weight: bold;"
  loc_BB647E: PopAdLdVar
  loc_BB647F: FLdPr Me
  loc_BB6482: MemLdRfVar from_stack_1.global_60
  loc_BB6485: LdPrVar
  loc_BB6487: LateMemCall
  loc_BB648D: LitVarStr var_94, "}"
  loc_BB6492: PopAdLdVar
  loc_BB6493: FLdPr Me
  loc_BB6496: MemLdRfVar from_stack_1.global_60
  loc_BB6499: LdPrVar
  loc_BB649B: LateMemCall
  loc_BB64A1: LitVarStr var_94, ".Normal {"
  loc_BB64A6: PopAdLdVar
  loc_BB64A7: FLdPr Me
  loc_BB64AA: MemLdRfVar from_stack_1.global_60
  loc_BB64AD: LdPrVar
  loc_BB64AF: LateMemCall
  loc_BB64B5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB64BA: PopAdLdVar
  loc_BB64BB: FLdPr Me
  loc_BB64BE: MemLdRfVar from_stack_1.global_60
  loc_BB64C1: LdPrVar
  loc_BB64C3: LateMemCall
  loc_BB64C9: LitVarStr var_94, " font-size: 12px;"
  loc_BB64CE: PopAdLdVar
  loc_BB64CF: FLdPr Me
  loc_BB64D2: MemLdRfVar from_stack_1.global_60
  loc_BB64D5: LdPrVar
  loc_BB64D7: LateMemCall
  loc_BB64DD: LitVarStr var_94, " font-style: normal;"
  loc_BB64E2: PopAdLdVar
  loc_BB64E3: FLdPr Me
  loc_BB64E6: MemLdRfVar from_stack_1.global_60
  loc_BB64E9: LdPrVar
  loc_BB64EB: LateMemCall
  loc_BB64F1: LitVarStr var_94, " font-weight: normal;"
  loc_BB64F6: PopAdLdVar
  loc_BB64F7: FLdPr Me
  loc_BB64FA: MemLdRfVar from_stack_1.global_60
  loc_BB64FD: LdPrVar
  loc_BB64FF: LateMemCall
  loc_BB6505: LitVarStr var_94, " font-variant: normal;"
  loc_BB650A: PopAdLdVar
  loc_BB650B: FLdPr Me
  loc_BB650E: MemLdRfVar from_stack_1.global_60
  loc_BB6511: LdPrVar
  loc_BB6513: LateMemCall
  loc_BB6519: LitVarStr var_94, "}"
  loc_BB651E: PopAdLdVar
  loc_BB651F: FLdPr Me
  loc_BB6522: MemLdRfVar from_stack_1.global_60
  loc_BB6525: LdPrVar
  loc_BB6527: LateMemCall
  loc_BB652D: LitVarStr var_94, ".Encabezado {"
  loc_BB6532: PopAdLdVar
  loc_BB6533: FLdPr Me
  loc_BB6536: MemLdRfVar from_stack_1.global_60
  loc_BB6539: LdPrVar
  loc_BB653B: LateMemCall
  loc_BB6541: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB6546: PopAdLdVar
  loc_BB6547: FLdPr Me
  loc_BB654A: MemLdRfVar from_stack_1.global_60
  loc_BB654D: LdPrVar
  loc_BB654F: LateMemCall
  loc_BB6555: LitVarStr var_94, " font-size: 11px;"
  loc_BB655A: PopAdLdVar
  loc_BB655B: FLdPr Me
  loc_BB655E: MemLdRfVar from_stack_1.global_60
  loc_BB6561: LdPrVar
  loc_BB6563: LateMemCall
  loc_BB6569: LitVarStr var_94, " font-weight: bold;"
  loc_BB656E: PopAdLdVar
  loc_BB656F: FLdPr Me
  loc_BB6572: MemLdRfVar from_stack_1.global_60
  loc_BB6575: LdPrVar
  loc_BB6577: LateMemCall
  loc_BB657D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BB6582: PopAdLdVar
  loc_BB6583: FLdPr Me
  loc_BB6586: MemLdRfVar from_stack_1.global_60
  loc_BB6589: LdPrVar
  loc_BB658B: LateMemCall
  loc_BB6591: LitVarStr var_94, "}"
  loc_BB6596: PopAdLdVar
  loc_BB6597: FLdPr Me
  loc_BB659A: MemLdRfVar from_stack_1.global_60
  loc_BB659D: LdPrVar
  loc_BB659F: LateMemCall
  loc_BB65A5: LitVarStr var_94, ".LineaDato {"
  loc_BB65AA: PopAdLdVar
  loc_BB65AB: FLdPr Me
  loc_BB65AE: MemLdRfVar from_stack_1.global_60
  loc_BB65B1: LdPrVar
  loc_BB65B3: LateMemCall
  loc_BB65B9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB65BE: PopAdLdVar
  loc_BB65BF: FLdPr Me
  loc_BB65C2: MemLdRfVar from_stack_1.global_60
  loc_BB65C5: LdPrVar
  loc_BB65C7: LateMemCall
  loc_BB65CD: LitVarStr var_94, " font-size: 10px;"
  loc_BB65D2: PopAdLdVar
  loc_BB65D3: FLdPr Me
  loc_BB65D6: MemLdRfVar from_stack_1.global_60
  loc_BB65D9: LdPrVar
  loc_BB65DB: LateMemCall
  loc_BB65E1: LitVarStr var_94, "}"
  loc_BB65E6: PopAdLdVar
  loc_BB65E7: FLdPr Me
  loc_BB65EA: MemLdRfVar from_stack_1.global_60
  loc_BB65ED: LdPrVar
  loc_BB65EF: LateMemCall
  loc_BB65F5: LitVarStr var_94, ".Totales {"
  loc_BB65FA: PopAdLdVar
  loc_BB65FB: FLdPr Me
  loc_BB65FE: MemLdRfVar from_stack_1.global_60
  loc_BB6601: LdPrVar
  loc_BB6603: LateMemCall
  loc_BB6609: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB660E: PopAdLdVar
  loc_BB660F: FLdPr Me
  loc_BB6612: MemLdRfVar from_stack_1.global_60
  loc_BB6615: LdPrVar
  loc_BB6617: LateMemCall
  loc_BB661D: LitVarStr var_94, " font-size: 12px;"
  loc_BB6622: PopAdLdVar
  loc_BB6623: FLdPr Me
  loc_BB6626: MemLdRfVar from_stack_1.global_60
  loc_BB6629: LdPrVar
  loc_BB662B: LateMemCall
  loc_BB6631: LitVarStr var_94, " font-weight: bold;"
  loc_BB6636: PopAdLdVar
  loc_BB6637: FLdPr Me
  loc_BB663A: MemLdRfVar from_stack_1.global_60
  loc_BB663D: LdPrVar
  loc_BB663F: LateMemCall
  loc_BB6645: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB664A: PopAdLdVar
  loc_BB664B: FLdPr Me
  loc_BB664E: MemLdRfVar from_stack_1.global_60
  loc_BB6651: LdPrVar
  loc_BB6653: LateMemCall
  loc_BB6659: LitVarStr var_94, "}"
  loc_BB665E: PopAdLdVar
  loc_BB665F: FLdPr Me
  loc_BB6662: MemLdRfVar from_stack_1.global_60
  loc_BB6665: LdPrVar
  loc_BB6667: LateMemCall
  loc_BB666D: LitVarStr var_94, ".SubTotales {"
  loc_BB6672: PopAdLdVar
  loc_BB6673: FLdPr Me
  loc_BB6676: MemLdRfVar from_stack_1.global_60
  loc_BB6679: LdPrVar
  loc_BB667B: LateMemCall
  loc_BB6681: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB6686: PopAdLdVar
  loc_BB6687: FLdPr Me
  loc_BB668A: MemLdRfVar from_stack_1.global_60
  loc_BB668D: LdPrVar
  loc_BB668F: LateMemCall
  loc_BB6695: LitVarStr var_94, " font-size: 10px;"
  loc_BB669A: PopAdLdVar
  loc_BB669B: FLdPr Me
  loc_BB669E: MemLdRfVar from_stack_1.global_60
  loc_BB66A1: LdPrVar
  loc_BB66A3: LateMemCall
  loc_BB66A9: LitVarStr var_94, " font-weight: bold;"
  loc_BB66AE: PopAdLdVar
  loc_BB66AF: FLdPr Me
  loc_BB66B2: MemLdRfVar from_stack_1.global_60
  loc_BB66B5: LdPrVar
  loc_BB66B7: LateMemCall
  loc_BB66BD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB66C2: PopAdLdVar
  loc_BB66C3: FLdPr Me
  loc_BB66C6: MemLdRfVar from_stack_1.global_60
  loc_BB66C9: LdPrVar
  loc_BB66CB: LateMemCall
  loc_BB66D1: LitVarStr var_94, "}"
  loc_BB66D6: PopAdLdVar
  loc_BB66D7: FLdPr Me
  loc_BB66DA: MemLdRfVar from_stack_1.global_60
  loc_BB66DD: LdPrVar
  loc_BB66DF: LateMemCall
  loc_BB66E5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BB66EA: PopAdLdVar
  loc_BB66EB: FLdPr Me
  loc_BB66EE: MemLdRfVar from_stack_1.global_60
  loc_BB66F1: LdPrVar
  loc_BB66F3: LateMemCall
  loc_BB66F9: LitVarStr var_94, "</style>"
  loc_BB66FE: PopAdLdVar
  loc_BB66FF: FLdPr Me
  loc_BB6702: MemLdRfVar from_stack_1.global_60
  loc_BB6705: LdPrVar
  loc_BB6707: LateMemCall
  loc_BB670D: LitI4 0
  loc_BB6712: FStStrCopy var_AC
  loc_BB6715: FLdRfVar var_AC
  loc_BB6718: LitI4 0
  loc_BB671D: FStStrCopy var_A8
  loc_BB6720: FLdRfVar var_A8
  loc_BB6723: LitI2_Byte &HFF
  loc_BB6725: PopTmpLdAd2 var_BE
  loc_BB6728: FLdPr Me
  loc_BB672B: MemLdRfVar from_stack_1.global_60
  loc_BB672E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB6733: FFreeStr var_A8 = ""
  loc_BB673A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB673F: PopAdLdVar
  loc_BB6740: FLdPr Me
  loc_BB6743: MemLdRfVar from_stack_1.global_60
  loc_BB6746: LdPrVar
  loc_BB6748: LateMemCall
  loc_BB674E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BB6753: PopAdLdVar
  loc_BB6754: FLdPr Me
  loc_BB6757: MemLdRfVar from_stack_1.global_60
  loc_BB675A: LdPrVar
  loc_BB675C: LateMemCall
  loc_BB6762: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB6765: LitI2_Byte &H5F
  loc_BB6767: CStrUI1
  loc_BB6769: FStStrNoPop var_A8
  loc_BB676C: ConcatStr
  loc_BB676D: FStStrNoPop var_AC
  loc_BB6770: LitStr """ height="""
  loc_BB6773: ConcatStr
  loc_BB6774: FStStrNoPop var_C4
  loc_BB6777: LitI2_Byte &H3C
  loc_BB6779: CStrUI1
  loc_BB677B: FStStrNoPop var_C8
  loc_BB677E: ConcatStr
  loc_BB677F: FStStrNoPop var_CC
  loc_BB6782: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB6785: ConcatStr
  loc_BB6786: FStStrNoPop var_D0
  loc_BB6789: LitStr "Municipalidad de Guaymallén"
  loc_BB678C: ConcatStr
  loc_BB678D: FStStrNoPop var_D4
  loc_BB6790: LitStr "</p>"
  loc_BB6793: ConcatStr
  loc_BB6794: CVarStr var_BC
  loc_BB6797: PopAdLdVar
  loc_BB6798: FLdPr Me
  loc_BB679B: MemLdRfVar from_stack_1.global_60
  loc_BB679E: LdPrVar
  loc_BB67A0: LateMemCall
  loc_BB67A6: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB67B7: FFree1Var var_BC = ""
  loc_BB67BA: LitStr "    <p>"
  loc_BB67BD: FLdRfVar var_A8
  loc_BB67C0: FLdPr Me
  loc_BB67C3:  = Me.Caption
  loc_BB67C8: ILdRf var_A8
  loc_BB67CB: ConcatStr
  loc_BB67CC: FStStrNoPop var_AC
  loc_BB67CF: LitStr "</p></th>"
  loc_BB67D2: ConcatStr
  loc_BB67D3: CVarStr var_BC
  loc_BB67D6: PopAdLdVar
  loc_BB67D7: FLdPr Me
  loc_BB67DA: MemLdRfVar from_stack_1.global_60
  loc_BB67DD: LdPrVar
  loc_BB67DF: LateMemCall
  loc_BB67E5: FFreeStr var_A8 = ""
  loc_BB67EC: FFree1Var var_BC = ""
  loc_BB67EF: LitVarStr var_94, "  </tr>"
  loc_BB67F4: PopAdLdVar
  loc_BB67F5: FLdPr Me
  loc_BB67F8: MemLdRfVar from_stack_1.global_60
  loc_BB67FB: LdPrVar
  loc_BB67FD: LateMemCall
  loc_BB6803: LitVarStr var_94, "  <tr>"
  loc_BB6808: PopAdLdVar
  loc_BB6809: FLdPr Me
  loc_BB680C: MemLdRfVar from_stack_1.global_60
  loc_BB680F: LdPrVar
  loc_BB6811: LateMemCall
  loc_BB6817: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BB681C: PopAdLdVar
  loc_BB681D: FLdPr Me
  loc_BB6820: MemLdRfVar from_stack_1.global_60
  loc_BB6823: LdPrVar
  loc_BB6825: LateMemCall
  loc_BB682B: LitVarStr var_94, "  </tr>"
  loc_BB6830: PopAdLdVar
  loc_BB6831: FLdPr Me
  loc_BB6834: MemLdRfVar from_stack_1.global_60
  loc_BB6837: LdPrVar
  loc_BB6839: LateMemCall
  loc_BB683F: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BB6844: PopAdLdVar
  loc_BB6845: FLdPr Me
  loc_BB6848: MemLdRfVar from_stack_1.global_60
  loc_BB684B: LdPrVar
  loc_BB684D: LateMemCall
  loc_BB6853: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BB6856: FLdPr Me
  loc_BB6859: VCallAd Control_ID_DesdeMsk
  loc_BB685C: FStAdFunc var_D8
  loc_BB685F: FLdPr var_D8
  loc_BB6862: LateIdLdVar var_BC DispID_15 0
  loc_BB6869: CStrVarTmp
  loc_BB686A: FStStrNoPop var_A8
  loc_BB686D: ConcatStr
  loc_BB686E: FStStrNoPop var_AC
  loc_BB6871: LitStr "</td>"
  loc_BB6874: ConcatStr
  loc_BB6875: CVarStr var_E8
  loc_BB6878: PopAdLdVar
  loc_BB6879: FLdPr Me
  loc_BB687C: MemLdRfVar from_stack_1.global_60
  loc_BB687F: LdPrVar
  loc_BB6881: LateMemCall
  loc_BB6887: FFreeStr var_A8 = ""
  loc_BB688E: FFree1Ad var_D8
  loc_BB6891: FFreeVar var_BC = ""
  loc_BB6898: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BB689B: FLdPr Me
  loc_BB689E: VCallAd Control_ID_HastaMsk
  loc_BB68A1: FStAdFunc var_D8
  loc_BB68A4: FLdPr var_D8
  loc_BB68A7: LateIdLdVar var_BC DispID_15 0
  loc_BB68AE: CStrVarTmp
  loc_BB68AF: FStStrNoPop var_A8
  loc_BB68B2: ConcatStr
  loc_BB68B3: FStStrNoPop var_AC
  loc_BB68B6: LitStr "</td>"
  loc_BB68B9: ConcatStr
  loc_BB68BA: CVarStr var_E8
  loc_BB68BD: PopAdLdVar
  loc_BB68BE: FLdPr Me
  loc_BB68C1: MemLdRfVar from_stack_1.global_60
  loc_BB68C4: LdPrVar
  loc_BB68C6: LateMemCall
  loc_BB68CC: FFreeStr var_A8 = ""
  loc_BB68D3: FFree1Ad var_D8
  loc_BB68D6: FFreeVar var_BC = ""
  loc_BB68DD: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BB68E2: PopAdLdVar
  loc_BB68E3: FLdPr Me
  loc_BB68E6: MemLdRfVar from_stack_1.global_60
  loc_BB68E9: LdPrVar
  loc_BB68EB: LateMemCall
  loc_BB68F1: LitVarStr var_94, "  </tr>"
  loc_BB68F6: PopAdLdVar
  loc_BB68F7: FLdPr Me
  loc_BB68FA: MemLdRfVar from_stack_1.global_60
  loc_BB68FD: LdPrVar
  loc_BB68FF: LateMemCall
  loc_BB6905: LitVarStr var_94, "</table>"
  loc_BB690A: PopAdLdVar
  loc_BB690B: FLdPr Me
  loc_BB690E: MemLdRfVar from_stack_1.global_60
  loc_BB6911: LdPrVar
  loc_BB6913: LateMemCall
  loc_BB6919: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB691E: PopAdLdVar
  loc_BB691F: FLdPr Me
  loc_BB6922: MemLdRfVar from_stack_1.global_60
  loc_BB6925: LdPrVar
  loc_BB6927: LateMemCall
  loc_BB692D: LitVarStr var_94, "  <thead>"
  loc_BB6932: PopAdLdVar
  loc_BB6933: FLdPr Me
  loc_BB6936: MemLdRfVar from_stack_1.global_60
  loc_BB6939: LdPrVar
  loc_BB693B: LateMemCall
  loc_BB6941: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB6946: PopAdLdVar
  loc_BB6947: FLdPr Me
  loc_BB694A: MemLdRfVar from_stack_1.global_60
  loc_BB694D: LdPrVar
  loc_BB694F: LateMemCall
  loc_BB6955: LitVarStr var_94, "    <th>Cod. Conc.</th>"
  loc_BB695A: PopAdLdVar
  loc_BB695B: FLdPr Me
  loc_BB695E: MemLdRfVar from_stack_1.global_60
  loc_BB6961: LdPrVar
  loc_BB6963: LateMemCall
  loc_BB6969: LitVarStr var_94, "    <th>Detalle del Concepto</th>"
  loc_BB696E: PopAdLdVar
  loc_BB696F: FLdPr Me
  loc_BB6972: MemLdRfVar from_stack_1.global_60
  loc_BB6975: LdPrVar
  loc_BB6977: LateMemCall
  loc_BB697D: LitVarStr var_94, "    <th>Total Ingresado en Anexo IV</th>"
  loc_BB6982: PopAdLdVar
  loc_BB6983: FLdPr Me
  loc_BB6986: MemLdRfVar from_stack_1.global_60
  loc_BB6989: LdPrVar
  loc_BB698B: LateMemCall
  loc_BB6991: LitVarStr var_94, "    <th>Total Rendido Por Entidada Recaudadora</th>"
  loc_BB6996: PopAdLdVar
  loc_BB6997: FLdPr Me
  loc_BB699A: MemLdRfVar from_stack_1.global_60
  loc_BB699D: LdPrVar
  loc_BB699F: LateMemCall
  loc_BB69A5: LitVarStr var_94, "    <th>Diferencia</th>"
  loc_BB69AA: PopAdLdVar
  loc_BB69AB: FLdPr Me
  loc_BB69AE: MemLdRfVar from_stack_1.global_60
  loc_BB69B1: LdPrVar
  loc_BB69B3: LateMemCall
  loc_BB69B9: LitVarStr var_94, "  </tr>"
  loc_BB69BE: PopAdLdVar
  loc_BB69BF: FLdPr Me
  loc_BB69C2: MemLdRfVar from_stack_1.global_60
  loc_BB69C5: LdPrVar
  loc_BB69C7: LateMemCall
  loc_BB69CD: LitVarStr var_94, "  </thead>"
  loc_BB69D2: PopAdLdVar
  loc_BB69D3: FLdPr Me
  loc_BB69D6: MemLdRfVar from_stack_1.global_60
  loc_BB69D9: LdPrVar
  loc_BB69DB: LateMemCall
  loc_BB69E1: ExitProcHresult
  loc_BB69E2: CI4Str
End Function

Private Function Proc_326_24_AE0610() 'AE0610
  'Data Table: 49B954
  loc_AE04A4: LitVarStr var_94, "</table>"
  loc_AE04A9: PopAdLdVar
  loc_AE04AA: FLdPr Me
  loc_AE04AD: MemLdRfVar from_stack_1.global_60
  loc_AE04B0: LdPrVar
  loc_AE04B2: LateMemCall
  loc_AE04B8: LitVarStr var_94, "<br>"
  loc_AE04BD: PopAdLdVar
  loc_AE04BE: FLdPr Me
  loc_AE04C1: MemLdRfVar from_stack_1.global_60
  loc_AE04C4: LdPrVar
  loc_AE04C6: LateMemCall
  loc_AE04CC: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_AE04D1: PopAdLdVar
  loc_AE04D2: FLdPr Me
  loc_AE04D5: MemLdRfVar from_stack_1.global_60
  loc_AE04D8: LdPrVar
  loc_AE04DA: LateMemCall
  loc_AE04E0: LitVarStr var_94, "  <tr>"
  loc_AE04E5: PopAdLdVar
  loc_AE04E6: FLdPr Me
  loc_AE04E9: MemLdRfVar from_stack_1.global_60
  loc_AE04EC: LdPrVar
  loc_AE04EE: LateMemCall
  loc_AE04F4: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_AE04F9: PopAdLdVar
  loc_AE04FA: FLdPr Me
  loc_AE04FD: MemLdRfVar from_stack_1.global_60
  loc_AE0500: LdPrVar
  loc_AE0502: LateMemCall
  loc_AE0508: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_AE050D: PopAdLdVar
  loc_AE050E: FLdPr Me
  loc_AE0511: MemLdRfVar from_stack_1.global_60
  loc_AE0514: LdPrVar
  loc_AE0516: LateMemCall
  loc_AE051C: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_AE0521: PopAdLdVar
  loc_AE0522: FLdPr Me
  loc_AE0525: MemLdRfVar from_stack_1.global_60
  loc_AE0528: LdPrVar
  loc_AE052A: LateMemCall
  loc_AE0530: LitVarStr var_94, "          <map name=""Map"">"
  loc_AE0535: PopAdLdVar
  loc_AE0536: FLdPr Me
  loc_AE0539: MemLdRfVar from_stack_1.global_60
  loc_AE053C: LdPrVar
  loc_AE053E: LateMemCall
  loc_AE0544: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_AE0549: PopAdLdVar
  loc_AE054A: FLdPr Me
  loc_AE054D: MemLdRfVar from_stack_1.global_60
  loc_AE0550: LdPrVar
  loc_AE0552: LateMemCall
  loc_AE0558: LitVarStr var_94, "          </map>"
  loc_AE055D: PopAdLdVar
  loc_AE055E: FLdPr Me
  loc_AE0561: MemLdRfVar from_stack_1.global_60
  loc_AE0564: LdPrVar
  loc_AE0566: LateMemCall
  loc_AE056C: LitVarStr var_94, "    </div></th>"
  loc_AE0571: PopAdLdVar
  loc_AE0572: FLdPr Me
  loc_AE0575: MemLdRfVar from_stack_1.global_60
  loc_AE0578: LdPrVar
  loc_AE057A: LateMemCall
  loc_AE0580: LitVarStr var_94, "  </tr>"
  loc_AE0585: PopAdLdVar
  loc_AE0586: FLdPr Me
  loc_AE0589: MemLdRfVar from_stack_1.global_60
  loc_AE058C: LdPrVar
  loc_AE058E: LateMemCall
  loc_AE0594: LitVarStr var_94, "  <tr>"
  loc_AE0599: PopAdLdVar
  loc_AE059A: FLdPr Me
  loc_AE059D: MemLdRfVar from_stack_1.global_60
  loc_AE05A0: LdPrVar
  loc_AE05A2: LateMemCall
  loc_AE05A8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_AE05AD: PopAdLdVar
  loc_AE05AE: FLdPr Me
  loc_AE05B1: MemLdRfVar from_stack_1.global_60
  loc_AE05B4: LdPrVar
  loc_AE05B6: LateMemCall
  loc_AE05BC: LitVarStr var_94, "  </tr>"
  loc_AE05C1: PopAdLdVar
  loc_AE05C2: FLdPr Me
  loc_AE05C5: MemLdRfVar from_stack_1.global_60
  loc_AE05C8: LdPrVar
  loc_AE05CA: LateMemCall
  loc_AE05D0: LitVarStr var_94, "</table>"
  loc_AE05D5: PopAdLdVar
  loc_AE05D6: FLdPr Me
  loc_AE05D9: MemLdRfVar from_stack_1.global_60
  loc_AE05DC: LdPrVar
  loc_AE05DE: LateMemCall
  loc_AE05E4: LitVarStr var_94, "</body>"
  loc_AE05E9: PopAdLdVar
  loc_AE05EA: FLdPr Me
  loc_AE05ED: MemLdRfVar from_stack_1.global_60
  loc_AE05F0: LdPrVar
  loc_AE05F2: LateMemCall
  loc_AE05F8: LitVarStr var_94, "</html>"
  loc_AE05FD: PopAdLdVar
  loc_AE05FE: FLdPr Me
  loc_AE0601: MemLdRfVar from_stack_1.global_60
  loc_AE0604: LdPrVar
  loc_AE0606: LateMemCall
  loc_AE060C: ExitProcHresult
  loc_AE060D: AryUnlock
End Function
