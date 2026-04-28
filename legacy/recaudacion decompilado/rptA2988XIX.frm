VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988XIX
  Caption = "Acuerdo 2988 Anexo XIX"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988XIX.frx":0000
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
    OleObjectBlob = "rptA2988XIX.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11055
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA2988XIX.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA2988XIX.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988XIX.frx":0C04
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
      OleObjectBlob = "rptA2988XIX.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptA2988XIX.frx":0D18
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
    OleObjectBlob = "rptA2988XIX.frx":0DC8
  End
End

Attribute VB_Name = "rptA2988XIX"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00560B74
  bStruc(24) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() 'A05448
  'Data Table: 48FD64
  loc_A05418: LitVarStr var_94, "Cerrando..."
  loc_A0541D: PopAdLdVar
  loc_A0541E: FLdPr Me
  loc_A05421: VCallAd Control_ID_statusBar
  loc_A05424: FStAdFunc var_A8
  loc_A05427: FLdPr var_A8
  loc_A0542A: LateIdSt
  loc_A0542F: FFree1Ad var_A8
  loc_A05432: ILdRf Me
  loc_A05435: FStAdNoPop
  loc_A05439: ImpAdLdRf MemVar_D9C5D8
  loc_A0543C: NewIfNullPr Global
  loc_A0543F: Global.Unload from_stack_1
  loc_A05444: FFree1Ad var_A8
  loc_A05447: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CCD24
  'Data Table: 48FD64
  loc_9CCD0C: LitI2_Byte 0
  loc_9CCD0E: ILdRf Me
  loc_9CCD11: CastAd
  loc_9CCD14: FStAdFunc var_88
  loc_9CCD17: FLdRfVar var_88
  loc_9CCD1A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CCD1F: FFree1Ad var_88
  loc_9CCD22: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E2A3C
  'Data Table: 48FD64
  loc_9E2A20: LitI2_Byte 0
  loc_9E2A22: LitI2_Byte 0
  loc_9E2A24: ILdRf Me
  loc_9E2A27: CastAd
  loc_9E2A2A: FStAdFunc var_88
  loc_9E2A2D: FLdRfVar var_88
  loc_9E2A30: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2A35: FFree1Ad var_88
  loc_9E2A38: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2ADC
  'Data Table: 48FD64
  loc_9E2AC0: LitI2_Byte 0
  loc_9E2AC2: PopTmpLdAd2 var_8A
  loc_9E2AC5: ILdRf Me
  loc_9E2AC8: CastAd
  loc_9E2ACB: FStAdFunc var_88
  loc_9E2ACE: FLdRfVar var_88
  loc_9E2AD1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2AD6: FFree1Ad var_88
  loc_9E2AD9: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BED30
  'Data Table: 48FD64
  loc_9BED1C: FLdPr Me
  loc_9BED1F: VCallAd Control_ID_DesdeMsk
  loc_9BED22: CVarAd
  loc_9BED26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BED2B: FFree1Var var_94 = ""
  loc_9BED2E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A64F60
  'Data Table: 48FD64
  loc_A64F04: FLdPr Me
  loc_A64F07: VCallAd Control_ID_DesdeMsk
  loc_A64F0A: FStAdFunc var_88
  loc_A64F0D: FLdPr var_88
  loc_A64F10: LateIdLdVar var_98 DispID_15 0
  loc_A64F17: CStrVarTmp
  loc_A64F18: FStStrNoPop var_9C
  loc_A64F1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64F20: FStStrNoPop var_A0
  loc_A64F23: FLdPr Me
  loc_A64F26: MemStStrCopy
  loc_A64F2A: FFreeStr var_9C = ""
  loc_A64F31: FFree1Ad var_88
  loc_A64F34: FFree1Var var_98 = ""
  loc_A64F37: FLdPr Me
  loc_A64F3A: VCallAd Control_ID_DesdeMsk
  loc_A64F3D: FStAdFuncNoPop
  loc_A64F40: CastAd
  loc_A64F43: FStAdFunc var_A4
  loc_A64F46: FLdRfVar var_A4
  loc_A64F49: FLdPr Me
  loc_A64F4C: MemLdStr global_108
  loc_A64F4F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64F54: IStI2 arg_C
  loc_A64F57: FFreeAd var_88 = ""
  loc_A64F5E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A21FB4
  'Data Table: 48FD64
  loc_A21F6C: ILdI2 KeyAscii
  loc_A21F6F: CI4UI1
  loc_A21F70: LitI4 &H20
  loc_A21F75: EqI4
  loc_A21F76: BranchF loc_A21FB3
  loc_A21F79: LitVar_Missing var_A4
  loc_A21F7C: PopAdLdVar
  loc_A21F7D: LitVarI4
  loc_A21F85: PopAdLdVar
  loc_A21F86: ImpAdLdRf MemVar_D930A4
  loc_A21F89: NewIfNullPr frmCalendario
  loc_A21F8C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21F91: ImpAdLdRf MemVar_D93028
  loc_A21F94: CDargRef
  loc_A21F98: FLdPr Me
  loc_A21F9B: VCallAd Control_ID_DesdeMsk
  loc_A21F9E: FStAdFunc var_A8
  loc_A21FA1: FLdPr var_A8
  loc_A21FA4: LateIdSt
  loc_A21FA9: FFree1Ad var_A8
  loc_A21FAC: LitStr vbNullString
  loc_A21FAF: ImpAdStStrCopy MemVar_D93028
  loc_A21FB3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A7D4
  'Data Table: 48FD64
  loc_A0A79C: LitI2_Byte 0
  loc_A0A79E: FLdPr Me
  loc_A0A7A1: MemStI2 bGenerado
  loc_A0A7A4: LitI2_Byte 0
  loc_A0A7A6: ILdRf Me
  loc_A0A7A9: CastAd
  loc_A0A7AC: FStAdFunc var_88
  loc_A0A7AF: FLdRfVar var_88
  loc_A0A7B2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A0A7B7: FFree1Ad var_88
  loc_A0A7BA: Call HabilitarCriterio()
  loc_A0A7BF: ILdRf Me
  loc_A0A7C2: CastAd
  loc_A0A7C5: FStAdFunc var_88
  loc_A0A7C8: FLdRfVar var_88
  loc_A0A7CB: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A7D0: FFree1Ad var_88
  loc_A0A7D3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13078
  'Data Table: 48FD64
  loc_A13040: FLdPr Me
  loc_A13043: VCallAd Control_ID_statusBar
  loc_A13046: FStAdFunc var_88
  loc_A13049: FLdPr var_88
  loc_A1304C: LateIdLdVar var_98 DispID_1 0
  loc_A13053: CStrVarTmp
  loc_A13054: CVarStr var_A8
  loc_A13057: PopAdLdVar
  loc_A13058: FLdPr Me
  loc_A1305B: VCallAd Control_ID_statusBar
  loc_A1305E: FStAdFunc var_BC
  loc_A13061: FLdPr var_BC
  loc_A13064: LateIdSt
  loc_A13069: FFreeAd var_88 = ""
  loc_A13070: FFreeVar var_98 = ""
  loc_A13077: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CCC8C
  'Data Table: 48FD64
  loc_9CCC74: LitI2_Byte 0
  loc_9CCC76: ILdRf Me
  loc_9CCC79: CastAd
  loc_9CCC7C: FStAdFunc var_88
  loc_9CCC7F: FLdRfVar var_88
  loc_9CCC82: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CCC87: FFree1Ad var_88
  loc_9CCC8A: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BEC10
  'Data Table: 48FD64
  loc_9BEBFC: FLdPr Me
  loc_9BEBFF: VCallAd Control_ID_HastaMsk
  loc_9BEC02: CVarAd
  loc_9BEC06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEC0B: FFree1Var var_94 = ""
  loc_9BEC0E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA700C
  'Data Table: 48FD64
  loc_AA6F5C: FLdPr Me
  loc_AA6F5F: VCallAd Control_ID_HastaMsk
  loc_AA6F62: FStAdFunc var_88
  loc_AA6F65: FLdPr var_88
  loc_AA6F68: LateIdLdVar var_98 DispID_15 0
  loc_AA6F6F: CStrVarTmp
  loc_AA6F70: CVarStr var_A8
  loc_AA6F73: ImpAdCallI2 IsDate()
  loc_AA6F78: FFree1Ad var_88
  loc_AA6F7B: FFreeVar var_98 = ""
  loc_AA6F82: BranchF loc_AA7008
  loc_AA6F85: FLdPr Me
  loc_AA6F88: VCallAd Control_ID_HastaMsk
  loc_AA6F8B: FStAdFunc var_88
  loc_AA6F8E: FLdPr var_88
  loc_AA6F91: LateIdLdVar var_98 DispID_15 0
  loc_AA6F98: CStrVarTmp
  loc_AA6F99: CVarStr var_A8
  loc_AA6F9C: FLdRfVar var_B8
  loc_AA6F9F: ImpAdCallFPR4  = Year()
  loc_AA6FA4: FLdRfVar var_B8
  loc_AA6FA7: FLdPr Me
  loc_AA6FAA: VCallAd Control_ID_DesdeMsk
  loc_AA6FAD: FStAdFunc var_BC
  loc_AA6FB0: FLdPr var_BC
  loc_AA6FB3: LateIdLdVar var_CC DispID_15 0
  loc_AA6FBA: CStrVarTmp
  loc_AA6FBB: CVarStr var_DC
  loc_AA6FBE: FLdRfVar var_EC
  loc_AA6FC1: ImpAdCallFPR4  = Year()
  loc_AA6FC6: FLdRfVar var_EC
  loc_AA6FC9: NeVarBool
  loc_AA6FCB: FFreeAd var_88 = ""
  loc_AA6FD2: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA6FE1: BranchF loc_AA7008
  loc_AA6FE4: FLdPr Me
  loc_AA6FE7: VCallAd Control_ID_HastaMsk
  loc_AA6FEA: FStAdFuncNoPop
  loc_AA6FED: CastAd
  loc_AA6FF0: FStAdFunc var_BC
  loc_AA6FF3: FLdRfVar var_BC
  loc_AA6FF6: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA6FF9: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA6FFE: IStI2 arg_C
  loc_AA7001: FFreeAd var_88 = ""
  loc_AA7008: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A21C50
  'Data Table: 48FD64
  loc_A21C08: ILdI2 KeyAscii
  loc_A21C0B: CI4UI1
  loc_A21C0C: LitI4 &H20
  loc_A21C11: EqI4
  loc_A21C12: BranchF loc_A21C4F
  loc_A21C15: LitVar_Missing var_A4
  loc_A21C18: PopAdLdVar
  loc_A21C19: LitVarI4
  loc_A21C21: PopAdLdVar
  loc_A21C22: ImpAdLdRf MemVar_D930A4
  loc_A21C25: NewIfNullPr frmCalendario
  loc_A21C28: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21C2D: ImpAdLdRf MemVar_D93028
  loc_A21C30: CDargRef
  loc_A21C34: FLdPr Me
  loc_A21C37: VCallAd Control_ID_HastaMsk
  loc_A21C3A: FStAdFunc var_A8
  loc_A21C3D: FLdPr var_A8
  loc_A21C40: LateIdSt
  loc_A21C45: FFree1Ad var_A8
  loc_A21C48: LitStr vbNullString
  loc_A21C4B: ImpAdStStrCopy MemVar_D93028
  loc_A21C4F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CD01C
  'Data Table: 48FD64
  loc_9CD004: ILdRf Me
  loc_9CD007: CastAd
  loc_9CD00A: FStAdFunc var_88
  loc_9CD00D: FLdRfVar var_88
  loc_9CD010: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CD015: FFree1Ad var_88
  loc_9CD018: ExitProcHresult
End Sub

Private Sub Form_Load() 'AE0C48
  'Data Table: 48FD64
  loc_AE0B14: ILdRf Me
  loc_AE0B17: CastAd
  loc_AE0B1A: FStAdFunc var_88
  loc_AE0B1D: FLdRfVar var_88
  loc_AE0B20: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AE0B25: FFree1Ad var_88
  loc_AE0B28: LitVarStr var_98, "Acuerdo 2988 Anexo XIX"
  loc_AE0B2D: CStrVarVal var_9C
  loc_AE0B31: FLdPr Me
  loc_AE0B34: Me.Caption = from_stack_1
  loc_AE0B39: FFree1Str var_9C
  loc_AE0B3C: Call cmdNueva_Click()
  loc_AE0B41: LitI2_Byte 0
  loc_AE0B43: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0B48: CVarDate var_AC
  loc_AE0B4C: FLdRfVar var_BC
  loc_AE0B4F: ImpAdCallFPR4  = Year()
  loc_AE0B54: LitI2_Byte 0
  loc_AE0B56: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0B5B: CVarDate var_DC
  loc_AE0B5F: FLdRfVar var_EC
  loc_AE0B62: ImpAdCallFPR4  = Month()
  loc_AE0B67: LitI2_Byte 1
  loc_AE0B69: FLdRfVar var_EC
  loc_AE0B6C: LitVarI2 var_FC, 1
  loc_AE0B71: SubVar var_10C
  loc_AE0B75: CI2Var
  loc_AE0B76: FLdRfVar var_BC
  loc_AE0B79: CI2Var
  loc_AE0B7A: FLdRfVar var_11C
  loc_AE0B7D: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0B82: FLdRfVar var_11C
  loc_AE0B85: CStrVarTmp
  loc_AE0B86: CVarStr var_12C
  loc_AE0B89: PopAdLdVar
  loc_AE0B8A: FLdPr Me
  loc_AE0B8D: VCallAd Control_ID_DesdeMsk
  loc_AE0B90: FStAdFunc var_88
  loc_AE0B93: FLdPr var_88
  loc_AE0B96: LateIdSt
  loc_AE0B9B: FFree1Ad var_88
  loc_AE0B9E: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_AE0BAD: FLdPr Me
  loc_AE0BB0: VCallAd Control_ID_DesdeMsk
  loc_AE0BB3: FStAdFunc var_88
  loc_AE0BB6: FLdPr var_88
  loc_AE0BB9: LateIdLdVar var_AC DispID_15 0
  loc_AE0BC0: CStrVarTmp
  loc_AE0BC1: CVarStr var_BC
  loc_AE0BC4: FLdRfVar var_DC
  loc_AE0BC7: ImpAdCallFPR4  = Year()
  loc_AE0BCC: FLdPr Me
  loc_AE0BCF: VCallAd Control_ID_DesdeMsk
  loc_AE0BD2: FStAdFunc var_140
  loc_AE0BD5: FLdPr var_140
  loc_AE0BD8: LateIdLdVar var_EC DispID_15 0
  loc_AE0BDF: CStrVarTmp
  loc_AE0BE0: CVarStr var_10C
  loc_AE0BE3: FLdRfVar var_11C
  loc_AE0BE6: ImpAdCallFPR4  = Month()
  loc_AE0BEB: LitI2_Byte 1
  loc_AE0BED: FLdRfVar var_11C
  loc_AE0BF0: LitVarI2 var_98, 1
  loc_AE0BF5: AddVar var_12C
  loc_AE0BF9: CI2Var
  loc_AE0BFA: FLdRfVar var_DC
  loc_AE0BFD: CI2Var
  loc_AE0BFE: FLdRfVar var_150
  loc_AE0C01: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0C06: FLdRfVar var_150
  loc_AE0C09: LitVarI2 var_CC, 1
  loc_AE0C0E: SubVar var_160
  loc_AE0C12: CStrVarTmp
  loc_AE0C13: CVarStr var_170
  loc_AE0C16: PopAdLdVar
  loc_AE0C17: FLdPr Me
  loc_AE0C1A: VCallAd Control_ID_HastaMsk
  loc_AE0C1D: FStAdFunc var_174
  loc_AE0C20: FLdPr var_174
  loc_AE0C23: LateIdSt
  loc_AE0C28: FFreeAd var_88 = "": var_140 = ""
  loc_AE0C31: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AE0C46: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC5B8
  'Data Table: 48FD64
  loc_9CC5A0: FLdPr Me
  loc_9CC5A3: VCallAd Control_ID_wbbReporte
  loc_9CC5A6: FStAdFunc var_88
  loc_9CC5A9: FLdRfVar var_88
  loc_9CC5AC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC5B1: FFree1Ad var_88
  loc_9CC5B4: ExitProcHresult
End Sub

Public Function bGeneradoGet() '490BB8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '490BC7
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A43220
  'Data Table: 48FD64
  loc_A431DC: LitI4 0
  loc_A431E1: LitI4 1
  loc_A431E6: FLdRfVar var_88
  loc_A431E9: Redim
  loc_A431F3: FLdPr Me
  loc_A431F6: VCallAd Control_ID_DesdeMsk
  loc_A431F9: CVarAd
  loc_A431FD: ParmAry1St
  loc_A43203: FLdPr Me
  loc_A43206: VCallAd Control_ID_HastaMsk
  loc_A43209: CVarAd
  loc_A4320D: ParmAry1St
  loc_A43213: FLdRfVar var_88
  loc_A43216: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4321B: FLdRfVar var_88
  loc_A4321E: Erase
  loc_A4321F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C10718
  'Data Table: 48FD64
  loc_C0FDE0: LitI2_Byte 0
  loc_C0FDE2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C0FDE7: FStFPR8 var_94
  loc_C0FDEA: FLdPr Me
  loc_C0FDED: MemLdI2 bGenerado
  loc_C0FDF0: BranchF loc_C0FDF4
  loc_C0FDF3: ExitProcHresult
  loc_C0FDF4: LitVarStr var_A4, "Generando reporte..."
  loc_C0FDF9: PopAdLdVar
  loc_C0FDFA: FLdPr Me
  loc_C0FDFD: VCallAd Control_ID_statusBar
  loc_C0FE00: FStAdFunc var_B8
  loc_C0FE03: FLdPr var_B8
  loc_C0FE06: LateIdSt
  loc_C0FE0B: FFree1Ad var_B8
  loc_C0FE0E: LitI4 &HB
  loc_C0FE13: CI2I4
  loc_C0FE14: FLdPr Me
  loc_C0FE17: Me.MousePointer = from_stack_1
  loc_C0FE1C: LitStr "Municipalidad de Guaymallén"
  loc_C0FE1F: LitStr "Municipalidad de Guaymallén"
  loc_C0FE22: EqStr
  loc_C0FE24: BranchF loc_C0FE63
  loc_C0FE27: LitStr "192.168.40.54"
  loc_C0FE2A: LitStr "192.168.40.54"
  loc_C0FE2D: EqStr
  loc_C0FE2F: BranchF loc_C0FE63
  loc_C0FE32: FLdRfVar var_94
  loc_C0FE35: ImpAdCallI2 Proc_18_4_AAC868()
  loc_C0FE3A: FStStrNoPop var_BC
  loc_C0FE3D: FLdPr Me
  loc_C0FE40: MemStStrCopy
  loc_C0FE44: FFree1Str var_BC
  loc_C0FE47: FLdPr Me
  loc_C0FE4A: MemLdStr global_108
  loc_C0FE4D: LitStr vbNullString
  loc_C0FE50: NeStr
  loc_C0FE52: BranchF loc_C0FE63
  loc_C0FE55: FLdPr Me
  loc_C0FE58: MemLdStr global_108
  loc_C0FE5B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C0FE60: Branch loc_C106EE
  loc_C0FE63: LitI2_Byte 0
  loc_C0FE65: PopTmpLdAd2 var_BE
  loc_C0FE68: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C0FE6D: FLdPr Me
  loc_C0FE70: MemLdStr global_108
  loc_C0FE73: LitStr vbNullString
  loc_C0FE76: NeStr
  loc_C0FE78: BranchF loc_C0FE7E
  loc_C0FE7B: Branch loc_C106EE
  loc_C0FE7E: LitI2_Byte 0
  loc_C0FE80: PopTmpLdAd2 var_BE
  loc_C0FE83: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C0FE88: FLdPr Me
  loc_C0FE8B: MemLdStr global_108
  loc_C0FE8E: LitStr vbNullString
  loc_C0FE91: NeStr
  loc_C0FE93: BranchF loc_C0FE99
  loc_C0FE96: Branch loc_C106EE
  loc_C0FE99: FLdPr Me
  loc_C0FE9C: VCallAd Control_ID_DesdeMsk
  loc_C0FE9F: FStAdFunc var_B8
  loc_C0FEA2: FLdPr var_B8
  loc_C0FEA5: LateIdLdVar var_D0 DispID_15 0
  loc_C0FEAC: PopAd
  loc_C0FEAE: LitI4 1
  loc_C0FEB3: LitI4 1
  loc_C0FEB8: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_C0FEBD: FStVarCopyObj var_F0
  loc_C0FEC0: FLdRfVar var_F0
  loc_C0FEC3: FLdRfVar var_D0
  loc_C0FEC6: CStrVarTmp
  loc_C0FEC7: CVarStr var_E0
  loc_C0FECA: ImpAdCallI2 Format$(, )
  loc_C0FECF: FStStr var_88
  loc_C0FED2: FFree1Ad var_B8
  loc_C0FED5: FFreeVar var_D0 = "": var_E0 = ""
  loc_C0FEDE: FLdPr Me
  loc_C0FEE1: VCallAd Control_ID_HastaMsk
  loc_C0FEE4: FStAdFunc var_B8
  loc_C0FEE7: FLdPr var_B8
  loc_C0FEEA: LateIdLdVar var_D0 DispID_15 0
  loc_C0FEF1: PopAd
  loc_C0FEF3: LitI4 1
  loc_C0FEF8: LitI4 1
  loc_C0FEFD: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_C0FF02: FStVarCopyObj var_F0
  loc_C0FF05: FLdRfVar var_F0
  loc_C0FF08: FLdRfVar var_D0
  loc_C0FF0B: CStrVarTmp
  loc_C0FF0C: CVarStr var_E0
  loc_C0FF0F: ImpAdCallI2 Format$(, )
  loc_C0FF14: FStStr var_8C
  loc_C0FF17: FFree1Ad var_B8
  loc_C0FF1A: FFreeVar var_D0 = "": var_E0 = ""
  loc_C0FF23: FLdPr Me
  loc_C0FF26: MemLdRfVar from_stack_1.global_92
  loc_C0FF29: NewIfNullAd
  loc_C0FF2C: FStAd var_F4 
  loc_C0FF30: LitStr "Municipalidad de Guaymallén"
  loc_C0FF33: LitStr "Municipalidad de Guaymallén"
  loc_C0FF36: EqStr
  loc_C0FF38: BranchF loc_C1002F
  loc_C0FF3B: LitVarStr var_A4, "CALL nAnexoXIX`('"
  loc_C0FF40: FLdPr Me
  loc_C0FF43: VCallAd Control_ID_DesdeMsk
  loc_C0FF46: FStAdFunc var_B8
  loc_C0FF49: FLdPr var_B8
  loc_C0FF4C: LateIdLdVar var_D0 DispID_15 0
  loc_C0FF53: CStrVarTmp
  loc_C0FF54: CVarStr var_E0
  loc_C0FF57: FLdRfVar var_F0
  loc_C0FF5A: ImpAdCallFPR4  = Year()
  loc_C0FF5F: FLdRfVar var_F0
  loc_C0FF62: ConcatVar var_104
  loc_C0FF66: LitVarStr var_B4, "',"
  loc_C0FF6B: ConcatVar var_114
  loc_C0FF6F: ILdRf var_88
  loc_C0FF72: CVarStr var_124
  loc_C0FF75: ConcatVar var_134
  loc_C0FF79: LitVarStr var_144, ", "
  loc_C0FF7E: ConcatVar var_154
  loc_C0FF82: ILdRf var_8C
  loc_C0FF85: CVarStr var_164
  loc_C0FF88: ConcatVar var_174
  loc_C0FF8C: LitVarStr var_184, ")"
  loc_C0FF91: ConcatVar var_194
  loc_C0FF95: CStrVarVal var_BC
  loc_C0FF99: FLdPr var_F4
  loc_C0FF9C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0FFA1: FFree1Str var_BC
  loc_C0FFA4: FFree1Ad var_B8
  loc_C0FFA7: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_104 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = ""
  loc_C0FFBC: LitStr "SELECT IngrConc, ActiConc, CodiConc, DetaCuco DetaConc, SUM(CobrCtct) CobrCtct, SUM(IngrCtct) IngrCtct "
  loc_C0FFBF: LitStr " FROM tmp_ingreso1"
  loc_C0FFC2: ConcatStr
  loc_C0FFC3: FStStrNoPop var_BC
  loc_C0FFC6: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = "
  loc_C0FFC9: ConcatStr
  loc_C0FFCA: CVarStr var_104
  loc_C0FFCD: FLdPr Me
  loc_C0FFD0: VCallAd Control_ID_DesdeMsk
  loc_C0FFD3: FStAdFunc var_B8
  loc_C0FFD6: FLdPr var_B8
  loc_C0FFD9: LateIdLdVar var_D0 DispID_15 0
  loc_C0FFE0: CStrVarTmp
  loc_C0FFE1: CVarStr var_E0
  loc_C0FFE4: FLdRfVar var_F0
  loc_C0FFE7: ImpAdCallFPR4  = Year()
  loc_C0FFEC: FLdRfVar var_F0
  loc_C0FFEF: ConcatVar var_114
  loc_C0FFF3: LitVarStr var_A4, " AND infogov.cuentacontable.CodiCuco = tmp_ingreso1.IngrConc"
  loc_C0FFF8: ConcatVar var_134
  loc_C0FFFC: LitVarStr var_B4, " GROUP BY IngrConc"
  loc_C10001: ConcatVar var_154
  loc_C10005: CStrVarVal var_198
  loc_C10009: FLdPr var_F4
  loc_C1000C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C10011: FFreeStr var_BC = ""
  loc_C10018: FFree1Ad var_B8
  loc_C1001B: FFreeVar var_D0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_114 = "": var_134 = ""
  loc_C1002C: Branch loc_C10311
  loc_C1002F: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_concepto;"
  loc_C10032: LitStr " CREATE TEMPORARY TABLE tmp_concepto"
  loc_C10035: ConcatStr
  loc_C10036: FStStrNoPop var_BC
  loc_C10039: LitStr " SELECT PeriInfo, CodiConc, IngrConc, ActiConc FROM concepto "
  loc_C1003C: ConcatStr
  loc_C1003D: FStStrNoPop var_198
  loc_C10040: LitStr " WHERE PeriInfo = "
  loc_C10043: ConcatStr
  loc_C10044: CVarStr var_104
  loc_C10047: FLdPr Me
  loc_C1004A: VCallAd Control_ID_DesdeMsk
  loc_C1004D: FStAdFunc var_B8
  loc_C10050: FLdPr var_B8
  loc_C10053: LateIdLdVar var_D0 DispID_15 0
  loc_C1005A: CStrVarTmp
  loc_C1005B: CVarStr var_E0
  loc_C1005E: FLdRfVar var_F0
  loc_C10061: ImpAdCallFPR4  = Year()
  loc_C10066: FLdRfVar var_F0
  loc_C10069: ConcatVar var_114
  loc_C1006D: LitVarStr var_A4, " AND ActiConc <> ''"
  loc_C10072: ConcatVar var_134
  loc_C10076: LitVarStr var_B4, " GROUP BY IngrConc"
  loc_C1007B: ConcatVar var_154
  loc_C1007F: CStrVarVal var_19C
  loc_C10083: FLdPr var_F4
  loc_C10086: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C1008B: FFreeStr var_BC = "": var_198 = ""
  loc_C10094: FFree1Ad var_B8
  loc_C10097: FFreeVar var_D0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_114 = "": var_134 = ""
  loc_C100A8: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_conc;"
  loc_C100AB: LitStr " CREATE TEMPORARY TABLE tmp_conc"
  loc_C100AE: ConcatStr
  loc_C100AF: FStStrNoPop var_BC
  loc_C100B2: LitStr " SELECT concepto.PeriInfo, concepto.CodiConc, concepto.DetaConc, concepto.IngrConc, concepto.ActiConc"
  loc_C100B5: ConcatStr
  loc_C100B6: FStStrNoPop var_198
  loc_C100B9: LitStr " FROM concepto"
  loc_C100BC: ConcatStr
  loc_C100BD: FStStrNoPop var_19C
  loc_C100C0: LitStr " INNER JOIN tmp_concepto ON tmp_concepto.periInfo = concepto.PeriInfo "
  loc_C100C3: ConcatStr
  loc_C100C4: FStStrNoPop var_1A0
  loc_C100C7: LitStr " AND tmp_concepto.IngrConc = concepto.ingrconc"
  loc_C100CA: ConcatStr
  loc_C100CB: FStStrNoPop var_1A4
  loc_C100CE: FLdPr var_F4
  loc_C100D1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C100D6: FFreeStr var_BC = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_C100E3: LitStr " INSERT INTO tmp_conc"
  loc_C100E6: LitStr " SELECT periinfo, '', 'Sin detalle', ingrconc, acticonc"
  loc_C100E9: ConcatStr
  loc_C100EA: FStStrNoPop var_BC
  loc_C100ED: LitStr " FROM tmp_concepto"
  loc_C100F0: ConcatStr
  loc_C100F1: FStStrNoPop var_198
  loc_C100F4: FLdPr var_F4
  loc_C100F7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C100FC: FFreeStr var_BC = ""
  loc_C10103: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ingreso;"
  loc_C10106: LitStr " CREATE TEMPORARY TABLE tmp_ingreso"
  loc_C10109: ConcatStr
  loc_C1010A: FStStrNoPop var_BC
  loc_C1010D: LitStr " SELECT IngrConc, ActiConc, CodiConc, DetaConc, "
  loc_C10110: ConcatStr
  loc_C10111: FStStrNoPop var_198
  loc_C10114: LitStr " IFNULL((SELECT sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00))"
  loc_C10117: ConcatStr
  loc_C10118: FStStrNoPop var_19C
  loc_C1011B: LitStr " FROM ctacte WHERE ctacte.FealCtct BETWEEN "
  loc_C1011E: ConcatStr
  loc_C1011F: FStStrNoPop var_1A0
  loc_C10122: ILdRf var_88
  loc_C10125: ConcatStr
  loc_C10126: FStStrNoPop var_1A4
  loc_C10129: LitStr " AND "
  loc_C1012C: ConcatStr
  loc_C1012D: FStStrNoPop var_1A8
  loc_C10130: ILdRf var_8C
  loc_C10133: ConcatStr
  loc_C10134: FStStrNoPop var_1AC
  loc_C10137: LitStr " AND ctacte.CodiConc = tmp_conc.CodiConc),0) as CobrCtct,"
  loc_C1013A: ConcatStr
  loc_C1013B: FStStrNoPop var_1B0
  loc_C1013E: LitStr " IFNULL((SELECT SUM(ImpoIngr) FROM contpres.ingreso WHERE FechIngr BETWEEN "
  loc_C10141: ConcatStr
  loc_C10142: FStStrNoPop var_1B4
  loc_C10145: ILdRf var_88
  loc_C10148: ConcatStr
  loc_C10149: FStStrNoPop var_1B8
  loc_C1014C: LitStr " AND "
  loc_C1014F: ConcatStr
  loc_C10150: FStStrNoPop var_1BC
  loc_C10153: ILdRf var_8C
  loc_C10156: ConcatStr
  loc_C10157: FStStrNoPop var_1C0
  loc_C1015A: LitStr " AND ingreso.codicuco = tmp_conc.ingrconc AND ingreso.CodiConc = tmp_conc.CodiConc),0) as IngrCtct"
  loc_C1015D: ConcatStr
  loc_C1015E: FStStrNoPop var_1C4
  loc_C10161: LitStr " FROM tmp_conc HAVING CobrCtct <> 0 OR IngrCtct  <> 0 ORDER BY IngrConc"
  loc_C10164: ConcatStr
  loc_C10165: FStStrNoPop var_1C8
  loc_C10168: FLdPr var_F4
  loc_C1016B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C10170: FFreeStr var_BC = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_C1018F: LitStr "Municipalidad de Guaymallén"
  loc_C10192: LitStr "Municipalidad de Tunuyán"
  loc_C10195: EqStr
  loc_C10197: BranchF loc_C10218
  loc_C1019A: LitStr "SELECT IngrConc, ActiConc, CodiConc, DetaCuco DetaConc, SUM(CobrCtct) CobrCtct, SUM(IngrCtct) IngrCtct "
  loc_C1019D: LitStr " FROM tmp_ingreso"
  loc_C101A0: ConcatStr
  loc_C101A1: FStStrNoPop var_BC
  loc_C101A4: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = "
  loc_C101A7: ConcatStr
  loc_C101A8: CVarStr var_104
  loc_C101AB: FLdPr Me
  loc_C101AE: VCallAd Control_ID_DesdeMsk
  loc_C101B1: FStAdFunc var_B8
  loc_C101B4: FLdPr var_B8
  loc_C101B7: LateIdLdVar var_D0 DispID_15 0
  loc_C101BE: CStrVarTmp
  loc_C101BF: CVarStr var_E0
  loc_C101C2: FLdRfVar var_F0
  loc_C101C5: ImpAdCallFPR4  = Year()
  loc_C101CA: FLdRfVar var_F0
  loc_C101CD: ConcatVar var_114
  loc_C101D1: LitVarStr var_A4, " AND infogov.cuentacontable.CodiCuco = tmp_ingreso.IngrConc"
  loc_C101D6: ConcatVar var_134
  loc_C101DA: LitVarStr var_B4, " WHERE tmp_ingreso.CodiConc <> '13031500' "
  loc_C101DF: ConcatVar var_154
  loc_C101E3: LitVarStr var_124, " GROUP BY IngrConc"
  loc_C101E8: ConcatVar var_174
  loc_C101EC: CStrVarVal var_198
  loc_C101F0: FLdPr var_F4
  loc_C101F3: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C101F8: FFreeStr var_BC = ""
  loc_C101FF: FFree1Ad var_B8
  loc_C10202: FFreeVar var_D0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_C10215: Branch loc_C10311
  loc_C10218: LitStr "Municipalidad de Guaymallén"
  loc_C1021B: LitStr "Municipalidad de Malargüe"
  loc_C1021E: EqStr
  loc_C10220: BranchF loc_C102A1
  loc_C10223: LitStr "SELECT IngrConc, ActiConc, CodiConc, DetaCuco DetaConc, SUM(CobrCtct) CobrCtct, SUM(IngrCtct) IngrCtct "
  loc_C10226: LitStr " FROM tmp_ingreso"
  loc_C10229: ConcatStr
  loc_C1022A: FStStrNoPop var_BC
  loc_C1022D: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = "
  loc_C10230: ConcatStr
  loc_C10231: CVarStr var_104
  loc_C10234: FLdPr Me
  loc_C10237: VCallAd Control_ID_DesdeMsk
  loc_C1023A: FStAdFunc var_B8
  loc_C1023D: FLdPr var_B8
  loc_C10240: LateIdLdVar var_D0 DispID_15 0
  loc_C10247: CStrVarTmp
  loc_C10248: CVarStr var_E0
  loc_C1024B: FLdRfVar var_F0
  loc_C1024E: ImpAdCallFPR4  = Year()
  loc_C10253: FLdRfVar var_F0
  loc_C10256: ConcatVar var_114
  loc_C1025A: LitVarStr var_A4, " AND infogov.cuentacontable.CodiCuco = tmp_ingreso.IngrConc"
  loc_C1025F: ConcatVar var_134
  loc_C10263: LitVarStr var_B4, " WHERE tmp_ingreso.IngrConc NOT IN (1141011700,1141050912,1141050913,1141050914)"
  loc_C10268: ConcatVar var_154
  loc_C1026C: LitVarStr var_124, " GROUP BY IngrConc"
  loc_C10271: ConcatVar var_174
  loc_C10275: CStrVarVal var_198
  loc_C10279: FLdPr var_F4
  loc_C1027C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C10281: FFreeStr var_BC = ""
  loc_C10288: FFree1Ad var_B8
  loc_C1028B: FFreeVar var_D0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_C1029E: Branch loc_C10311
  loc_C102A1: LitStr "SELECT IngrConc, ActiConc, CodiConc, DetaCuco DetaConc, SUM(CobrCtct) CobrCtct, SUM(IngrCtct) IngrCtct "
  loc_C102A4: LitStr " FROM tmp_ingreso"
  loc_C102A7: ConcatStr
  loc_C102A8: FStStrNoPop var_BC
  loc_C102AB: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = "
  loc_C102AE: ConcatStr
  loc_C102AF: CVarStr var_104
  loc_C102B2: FLdPr Me
  loc_C102B5: VCallAd Control_ID_DesdeMsk
  loc_C102B8: FStAdFunc var_B8
  loc_C102BB: FLdPr var_B8
  loc_C102BE: LateIdLdVar var_D0 DispID_15 0
  loc_C102C5: CStrVarTmp
  loc_C102C6: CVarStr var_E0
  loc_C102C9: FLdRfVar var_F0
  loc_C102CC: ImpAdCallFPR4  = Year()
  loc_C102D1: FLdRfVar var_F0
  loc_C102D4: ConcatVar var_114
  loc_C102D8: LitVarStr var_A4, " AND infogov.cuentacontable.CodiCuco = tmp_ingreso.IngrConc"
  loc_C102DD: ConcatVar var_134
  loc_C102E1: LitVarStr var_B4, " GROUP BY IngrConc"
  loc_C102E6: ConcatVar var_154
  loc_C102EA: CStrVarVal var_198
  loc_C102EE: FLdPr var_F4
  loc_C102F1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C102F6: FFreeStr var_BC = ""
  loc_C102FD: FFree1Ad var_B8
  loc_C10300: FFreeVar var_D0 = "": var_E0 = "": var_104 = "": var_F0 = "": var_114 = "": var_134 = ""
  loc_C10311: FLdRfVar var_1CC
  loc_C10314: FLdPr var_F4
  loc_C10317: from_stack_1 = clsctacte.RecordCount
  loc_C1031C: ILdRf var_1CC
  loc_C1031F: LitI4 0
  loc_C10324: EqI4
  loc_C10325: BranchF loc_C10333
  loc_C10328: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C1032B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C10330: Branch loc_C106EE
  loc_C10333: LitI4 0
  loc_C10338: LitI4 1
  loc_C1033D: FLdPr Me
  loc_C10340: MemLdRfVar from_stack_1.global_104
  loc_C10343: Redim
  loc_C1034D: LitI4 0
  loc_C10352: FLdRfVar var_1CC
  loc_C10355: FLdPr var_F4
  loc_C10358: from_stack_1 = clsctacte.RecordCount
  loc_C1035D: ILdRf var_1CC
  loc_C10360: FLdPr Me
  loc_C10363: MemLdRfVar from_stack_1.global_96
  loc_C10366: Redim
  loc_C10370: FLdPr var_F4
  loc_C10373: Call clsctacte.MoveFirst()
  loc_C10378: FLdRfVar var_1CC
  loc_C1037B: FLdPr var_F4
  loc_C1037E: from_stack_1 = clsctacte.RecordCount
  loc_C10383: ILdRf var_1CC
  loc_C10386: CR8I4
  loc_C10387: CVarR4
  loc_C1038B: PopAdLdVar
  loc_C1038C: FLdPrThis
  loc_C1038D: VCallAd Control_ID_Pbar
  loc_C10390: FStAdFunc var_B8
  loc_C10393: FLdPr var_B8
  loc_C10396: LateIdSt
  loc_C1039B: FFree1Ad var_B8
  loc_C1039E: LitVar_TRUE var_A4
  loc_C103A1: PopAdLdVar
  loc_C103A2: FLdPrThis
  loc_C103A3: VCallAd Control_ID_Pbar
  loc_C103A6: FStAdFunc var_B8
  loc_C103A9: FLdPr var_B8
  loc_C103AC: LateIdSt
  loc_C103B1: FFree1Ad var_B8
  loc_C103B4: LitI4 1
  loc_C103B9: FLdPr Me
  loc_C103BC: MemLdRfVar from_stack_1.global_100
  loc_C103BF: FLdPr Me
  loc_C103C2: MemLdStr global_96
  loc_C103C5: LitI2_Byte 1
  loc_C103C7: FnUBound
  loc_C103C9: ForI4 var_1D4
  loc_C103CF: FLdPr Me
  loc_C103D2: MemLdStr global_100
  loc_C103D5: CR8I4
  loc_C103D6: CVarR4
  loc_C103DA: PopAdLdVar
  loc_C103DB: FLdPrThis
  loc_C103DC: VCallAd Control_ID_Pbar
  loc_C103DF: FStAdFunc var_B8
  loc_C103E2: FLdPr var_B8
  loc_C103E5: LateIdSt
  loc_C103EA: FFree1Ad var_B8
  loc_C103ED: FLdRfVar var_1DC
  loc_C103F0: LitVarStr var_A4, "IngrConc"
  loc_C103F5: PopAdLdVar
  loc_C103F6: FLdRfVar var_1D8
  loc_C103F9: FLdRfVar var_B8
  loc_C103FC: FLdPr var_F4
  loc_C103FF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C10404: FLdPr var_B8
  loc_C10407:  = Me.Fields
  loc_C1040C: FLdPr var_1D8
  loc_C1040F: from_stack_2 = Me.Item(from_stack_1)
  loc_C10414: LitI2_Byte 0
  loc_C10416: LitVar_Missing var_E0
  loc_C10419: LitI2_Byte 0
  loc_C1041B: FLdZeroAd var_1DC
  loc_C1041E: CVarAd
  loc_C10422: PopAdLdVar
  loc_C10423: FLdPr Me
  loc_C10426: MemLdStr global_100
  loc_C10429: FLdPr Me
  loc_C1042C: MemLdStr global_96
  loc_C1042F: AryLock
  loc_C10432: Ary1LdPr
  loc_C10433: MemLdRfVar from_stack_1.global_0
  loc_C10436: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1043B: AryUnlock
  loc_C1043E: FFreeAd var_B8 = ""
  loc_C10445: FFreeVar var_D0 = ""
  loc_C1044C: FLdRfVar var_1DC
  loc_C1044F: LitVarStr var_A4, "ActiConc"
  loc_C10454: PopAdLdVar
  loc_C10455: FLdRfVar var_1D8
  loc_C10458: FLdRfVar var_B8
  loc_C1045B: FLdPr var_F4
  loc_C1045E: from_stack_1v = clsctacte.RsFrmGet()
  loc_C10463: FLdPr var_B8
  loc_C10466:  = Me.Fields
  loc_C1046B: FLdPr var_1D8
  loc_C1046E: from_stack_2 = Me.Item(from_stack_1)
  loc_C10473: LitI2_Byte 0
  loc_C10475: LitVar_Missing var_E0
  loc_C10478: LitI2_Byte 0
  loc_C1047A: FLdZeroAd var_1DC
  loc_C1047D: CVarAd
  loc_C10481: PopAdLdVar
  loc_C10482: FLdPr Me
  loc_C10485: MemLdStr global_100
  loc_C10488: FLdPr Me
  loc_C1048B: MemLdStr global_96
  loc_C1048E: AryLock
  loc_C10491: Ary1LdPr
  loc_C10492: MemLdRfVar from_stack_1.global_4
  loc_C10495: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1049A: AryUnlock
  loc_C1049D: FFreeAd var_B8 = ""
  loc_C104A4: FFreeVar var_D0 = ""
  loc_C104AB: FLdRfVar var_1DC
  loc_C104AE: LitVarStr var_A4, "DetaConc"
  loc_C104B3: PopAdLdVar
  loc_C104B4: FLdRfVar var_1D8
  loc_C104B7: FLdRfVar var_B8
  loc_C104BA: FLdPr var_F4
  loc_C104BD: from_stack_1v = clsctacte.RsFrmGet()
  loc_C104C2: FLdPr var_B8
  loc_C104C5:  = Me.Fields
  loc_C104CA: FLdPr var_1D8
  loc_C104CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C104D2: LitI2_Byte 0
  loc_C104D4: LitVar_Missing var_E0
  loc_C104D7: LitI2_Byte 0
  loc_C104D9: FLdZeroAd var_1DC
  loc_C104DC: CVarAd
  loc_C104E0: PopAdLdVar
  loc_C104E1: FLdPr Me
  loc_C104E4: MemLdStr global_100
  loc_C104E7: FLdPr Me
  loc_C104EA: MemLdStr global_96
  loc_C104ED: AryLock
  loc_C104F0: Ary1LdPr
  loc_C104F1: MemLdRfVar from_stack_1.global_8
  loc_C104F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C104F9: AryUnlock
  loc_C104FC: FFreeAd var_B8 = ""
  loc_C10503: FFreeVar var_D0 = ""
  loc_C1050A: FLdRfVar var_1DC
  loc_C1050D: LitVarStr var_A4, "CobrCtct"
  loc_C10512: PopAdLdVar
  loc_C10513: FLdRfVar var_1D8
  loc_C10516: FLdRfVar var_B8
  loc_C10519: FLdPr var_F4
  loc_C1051C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C10521: FLdPr var_B8
  loc_C10524:  = Me.Fields
  loc_C10529: FLdPr var_1D8
  loc_C1052C: from_stack_2 = Me.Item(from_stack_1)
  loc_C10531: LitI2_Byte 0
  loc_C10533: LitI4 1
  loc_C10538: FLdPr Me
  loc_C1053B: MemLdStr global_104
  loc_C1053E: AryLock
  loc_C10541: Ary1LdPr
  loc_C10542: MemLdRfVar from_stack_1.global_0
  loc_C10545: CVarRef
  loc_C1054A: LitI2_Byte &HFF
  loc_C1054C: FLdZeroAd var_1DC
  loc_C1054F: CVarAd
  loc_C10553: PopAdLdVar
  loc_C10554: FLdPr Me
  loc_C10557: MemLdStr global_100
  loc_C1055A: FLdPr Me
  loc_C1055D: MemLdStr global_96
  loc_C10560: AryLock
  loc_C10563: Ary1LdPr
  loc_C10564: MemLdRfVar from_stack_1.global_12
  loc_C10567: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1056C: AryUnlock
  loc_C1056F: AryUnlock
  loc_C10572: FFreeAd var_B8 = ""
  loc_C10579: FFree1Var var_D0 = ""
  loc_C1057C: FLdRfVar var_1DC
  loc_C1057F: LitVarStr var_A4, "IngrCtct"
  loc_C10584: PopAdLdVar
  loc_C10585: FLdRfVar var_1D8
  loc_C10588: FLdRfVar var_B8
  loc_C1058B: FLdPr var_F4
  loc_C1058E: from_stack_1v = clsctacte.RsFrmGet()
  loc_C10593: FLdPr var_B8
  loc_C10596:  = Me.Fields
  loc_C1059B: FLdPr var_1D8
  loc_C1059E: from_stack_2 = Me.Item(from_stack_1)
  loc_C105A3: LitI2_Byte 0
  loc_C105A5: LitI4 1
  loc_C105AA: FLdPr Me
  loc_C105AD: MemLdStr global_104
  loc_C105B0: AryLock
  loc_C105B3: Ary1LdPr
  loc_C105B4: MemLdRfVar from_stack_1.global_4
  loc_C105B7: CVarRef
  loc_C105BC: LitI2_Byte &HFF
  loc_C105BE: FLdZeroAd var_1DC
  loc_C105C1: CVarAd
  loc_C105C5: PopAdLdVar
  loc_C105C6: FLdPr Me
  loc_C105C9: MemLdStr global_100
  loc_C105CC: FLdPr Me
  loc_C105CF: MemLdStr global_96
  loc_C105D2: AryLock
  loc_C105D5: Ary1LdPr
  loc_C105D6: MemLdRfVar from_stack_1.global_16
  loc_C105D9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C105DE: AryUnlock
  loc_C105E1: AryUnlock
  loc_C105E4: FFreeAd var_B8 = ""
  loc_C105EB: FFree1Var var_D0 = ""
  loc_C105EE: FLdRfVar var_D0
  loc_C105F1: FLdRfVar var_1DC
  loc_C105F4: LitVarStr var_A4, "CobrCtct"
  loc_C105F9: PopAdLdVar
  loc_C105FA: FLdRfVar var_1D8
  loc_C105FD: FLdRfVar var_B8
  loc_C10600: FLdPr var_F4
  loc_C10603: from_stack_1v = clsctacte.RsFrmGet()
  loc_C10608: FLdPr var_B8
  loc_C1060B:  = Me.Fields
  loc_C10610: FLdPr var_1D8
  loc_C10613: from_stack_2 = Me.Item(from_stack_1)
  loc_C10618: FLdPr var_1DC
  loc_C1061B:  = Me.Value
  loc_C10620: FLdRfVar var_E0
  loc_C10623: FLdRfVar var_1F0
  loc_C10626: LitVarStr var_B4, "IngrCtct"
  loc_C1062B: PopAdLdVar
  loc_C1062C: FLdRfVar var_1EC
  loc_C1062F: FLdRfVar var_1E8
  loc_C10632: FLdPr var_F4
  loc_C10635: from_stack_1v = clsctacte.RsFrmGet()
  loc_C1063A: FLdPr var_1E8
  loc_C1063D:  = Me.Fields
  loc_C10642: FLdPr var_1EC
  loc_C10645: from_stack_2 = Me.Item(from_stack_1)
  loc_C1064A: FLdPr var_1F0
  loc_C1064D:  = Me.Value
  loc_C10652: LitI2_Byte 0
  loc_C10654: LitI4 1
  loc_C10659: FLdPr Me
  loc_C1065C: MemLdStr global_104
  loc_C1065F: AryLock
  loc_C10662: Ary1LdPr
  loc_C10663: MemLdRfVar from_stack_1.global_8
  loc_C10666: CVarRef
  loc_C1066B: LitI2_Byte &HFF
  loc_C1066D: FLdRfVar var_D0
  loc_C10670: FnCDblVar
  loc_C10672: FLdRfVar var_E0
  loc_C10675: FnCDblVar
  loc_C10677: SubR4
  loc_C10678: CVarR8
  loc_C1067C: PopAdLdVar
  loc_C1067D: FLdPr Me
  loc_C10680: MemLdStr global_100
  loc_C10683: FLdPr Me
  loc_C10686: MemLdStr global_96
  loc_C10689: AryLock
  loc_C1068C: Ary1LdPr
  loc_C1068D: MemLdRfVar from_stack_1.global_20
  loc_C10690: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C10695: AryUnlock
  loc_C10698: AryUnlock
  loc_C1069B: FFreeAd var_B8 = "": var_1D8 = "": var_1DC = "": var_1E8 = "": var_1EC = ""
  loc_C106AA: FFreeVar var_D0 = ""
  loc_C106B1: LitI2_Byte 1
  loc_C106B3: PopTmpLdAd2 var_BE
  loc_C106B6: FLdPr var_F4
  loc_C106B9: Call clsctacte.Move(from_stack_1v)
  loc_C106BE: FLdPr Me
  loc_C106C1: MemLdRfVar from_stack_1.global_100
  loc_C106C4: NextI4 var_1D4, loc_C103CF
  loc_C106C9: LitVar_FALSE
  loc_C106CD: PopAdLdVar
  loc_C106CE: FLdPrThis
  loc_C106CF: VCallAd Control_ID_Pbar
  loc_C106D2: FStAdFunc var_B8
  loc_C106D5: FLdPr var_B8
  loc_C106D8: LateIdSt
  loc_C106DD: FFree1Ad var_B8
  loc_C106E0: LitNothing
  loc_C106E2: FStAd var_F4 
  loc_C106E6: LitI2_Byte &HFF
  loc_C106E8: FLdPr Me
  loc_C106EB: MemStI2 bGenerado
  loc_C106EE: LitI4 0
  loc_C106F3: CI2I4
  loc_C106F4: FLdPr Me
  loc_C106F7: Me.MousePointer = from_stack_1
  loc_C106FC: LitVarStr var_A4, vbNullString
  loc_C10701: PopAdLdVar
  loc_C10702: FLdPr Me
  loc_C10705: VCallAd Control_ID_statusBar
  loc_C10708: FStAdFunc var_B8
  loc_C1070B: FLdPr var_B8
  loc_C1070E: LateIdSt
  loc_C10713: FFree1Ad var_B8
  loc_C10716: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B94BD0
  'Data Table: 48FD64
  loc_B946C4: OnErrorGoto loc_B94B51
  loc_B946C7: FLdPr Me
  loc_B946CA: VCallAd Control_ID_DesdeMsk
  loc_B946CD: FStAdFunc var_100
  loc_B946D0: FLdPr var_100
  loc_B946D3: LateIdLdVar var_110 DispID_15 0
  loc_B946DA: CStrVarTmp
  loc_B946DB: CVarStr var_120
  loc_B946DE: FLdRfVar var_130
  loc_B946E1: ImpAdCallFPR4  = Month()
  loc_B946E6: FLdPr Me
  loc_B946E9: VCallAd Control_ID_DesdeMsk
  loc_B946EC: FStAdFunc var_1D8
  loc_B946EF: FLdPr var_1D8
  loc_B946F2: LateIdLdVar var_1E8 DispID_15 0
  loc_B946F9: CStrVarTmp
  loc_B946FA: CVarStr var_1F8
  loc_B946FD: FLdRfVar var_208
  loc_B94700: ImpAdCallFPR4  = Month()
  loc_B94705: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B9470A: FStStrNoPop var_88
  loc_B9470D: LitStr "\Acuerdo 2988\"
  loc_B94710: ConcatStr
  loc_B94711: CVarStr var_CC
  loc_B94714: FLdPr Me
  loc_B94717: VCallAd Control_ID_DesdeMsk
  loc_B9471A: FStAdFunc var_8C
  loc_B9471D: FLdPr var_8C
  loc_B94720: LateIdLdVar var_9C DispID_15 0
  loc_B94727: CStrVarTmp
  loc_B94728: CVarStr var_AC
  loc_B9472B: FLdRfVar var_BC
  loc_B9472E: ImpAdCallFPR4  = Year()
  loc_B94733: FLdRfVar var_BC
  loc_B94736: ConcatVar var_DC
  loc_B9473A: LitVarStr var_EC, "\Mes "
  loc_B9473F: ConcatVar var_FC
  loc_B94743: LitI4 1
  loc_B94748: LitI4 1
  loc_B9474D: LitVarStr var_140, "00"
  loc_B94752: FStVarCopyObj var_150
  loc_B94755: FLdRfVar var_150
  loc_B94758: FLdRfVar var_130
  loc_B9475B: FLdRfVar var_160
  loc_B9475E: ImpAdCallFPR4  = Format(, )
  loc_B94763: FLdRfVar var_160
  loc_B94766: ConcatVar var_170
  loc_B9476A: LitVarStr var_180, "\"
  loc_B9476F: ConcatVar var_190
  loc_B94773: FLdPr Me
  loc_B94776: VCallAd Control_ID_DesdeMsk
  loc_B94779: FStAdFunc var_194
  loc_B9477C: FLdPr var_194
  loc_B9477F: LateIdLdVar var_1A4 DispID_15 0
  loc_B94786: CStrVarTmp
  loc_B94787: CVarStr var_1B4
  loc_B9478A: FLdRfVar var_1C4
  loc_B9478D: ImpAdCallFPR4  = Year()
  loc_B94792: FLdRfVar var_1C4
  loc_B94795: ConcatVar var_1D4
  loc_B94799: LitI4 1
  loc_B9479E: LitI4 1
  loc_B947A3: LitVarStr var_218, "00"
  loc_B947A8: FStVarCopyObj var_228
  loc_B947AB: FLdRfVar var_228
  loc_B947AE: FLdRfVar var_208
  loc_B947B1: FLdRfVar var_238
  loc_B947B4: ImpAdCallFPR4  = Format(, )
  loc_B947B9: FLdRfVar var_238
  loc_B947BC: ConcatVar var_248
  loc_B947C0: LitVarStr var_258, " - ConPagRec.txt"
  loc_B947C5: ConcatVar var_268
  loc_B947C9: CStrVarTmp
  loc_B947CA: ImpAdStStr MemVar_D93030
  loc_B947CE: FFree1Str var_88
  loc_B947D1: FFreeAd var_8C = "": var_100 = "": var_194 = ""
  loc_B947DC: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_120 = "": var_130 = "": var_150 = "": var_FC = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_190 = "": var_1C4 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1D4 = "": var_238 = "": var_248 = ""
  loc_B9480F: ImpAdLdI4 MemVar_D93030
  loc_B94812: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B94817: LitStr "	"
  loc_B9481A: FStStrCopy var_26C
  loc_B9481D: LitVarStr var_EC, "266"
  loc_B94822: FLdPr Me
  loc_B94825: VCallAd Control_ID_DesdeMsk
  loc_B94828: FStAdFunc var_8C
  loc_B9482B: FLdPr var_8C
  loc_B9482E: LateIdLdVar var_9C DispID_15 0
  loc_B94835: CStrVarTmp
  loc_B94836: CVarStr var_AC
  loc_B94839: FLdRfVar var_BC
  loc_B9483C: ImpAdCallFPR4  = Year()
  loc_B94841: FLdRfVar var_BC
  loc_B94844: ConcatVar var_CC
  loc_B94848: LitVarStr var_140, "060204"
  loc_B9484D: ConcatVar var_DC
  loc_B94851: CStrVarTmp
  loc_B94852: FStStr var_270
  loc_B94855: FFree1Ad var_8C
  loc_B94858: FFreeVar var_9C = "": var_AC = "": var_BC = "": var_CC = ""
  loc_B94865: FLdRfVar var_8C
  loc_B94868: LitI2_Byte 0
  loc_B9486A: LitI2_Byte &HFF
  loc_B9486C: ImpAdLdI4 MemVar_D93030
  loc_B9486F: FLdPr Me
  loc_B94872: MemLdRfVar from_stack_1.global_56
  loc_B94875: NewIfNullPr IFileSystem3
  loc_B94878: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B9487D: ILdRf var_8C
  loc_B94880: FLdPr Me
  loc_B94883: MemStVarAd
  loc_B94887: FFree1Ad var_8C
  loc_B9488A: FLdPr Me
  loc_B9488D: MemLdStr global_96
  loc_B94890: LitI2_Byte 1
  loc_B94892: FnUBound
  loc_B94894: LitI4 0
  loc_B94899: EqI4
  loc_B9489A: BranchF loc_B948FC
  loc_B9489D: LitI4 0
  loc_B948A2: LitI4 1
  loc_B948A7: FLdRfVar var_274
  loc_B948AA: Redim
  loc_B948B4: LitVarStr var_EC, "|"
  loc_B948B9: LitI4 0
  loc_B948BE: ILdRf var_274
  loc_B948C1: Ary1StVarCopy
  loc_B948C3: LitVarStr var_140, "SIN MOVIMIENTO"
  loc_B948C8: LitI4 1
  loc_B948CD: ILdRf var_274
  loc_B948D0: Ary1StVarCopy
  loc_B948D2: FLdRfVar var_274
  loc_B948D5: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B948DA: FStStr var_88
  loc_B948DD: FLdRfVar var_274
  loc_B948E0: Erase
  loc_B948E1: FLdZeroAd var_88
  loc_B948E4: CVarStr var_9C
  loc_B948E7: PopAdLdVar
  loc_B948E8: FLdPr Me
  loc_B948EB: MemLdRfVar from_stack_1.global_76
  loc_B948EE: LdPrVar
  loc_B948F0: LateMemCall
  loc_B948F6: FFree1Var var_9C = ""
  loc_B948F9: Branch loc_B94B3F
  loc_B948FC: LitI4 0
  loc_B94901: LitI4 7
  loc_B94906: FLdRfVar var_274
  loc_B94909: Redim
  loc_B94913: LitVarStr var_EC, "|"
  loc_B94918: LitI4 0
  loc_B9491D: ILdRf var_274
  loc_B94920: Ary1StVarCopy
  loc_B94922: LitVarStr var_140, "PeriodoPresenta"
  loc_B94927: LitI4 1
  loc_B9492C: ILdRf var_274
  loc_B9492F: Ary1StVarCopy
  loc_B94931: LitVarStr var_180, "ExpID"
  loc_B94936: LitI4 2
  loc_B9493B: ILdRf var_274
  loc_B9493E: Ary1StVarCopy
  loc_B94940: LitVarStr var_218, "ConceptoCod"
  loc_B94945: LitI4 3
  loc_B9494A: ILdRf var_274
  loc_B9494D: Ary1StVarCopy
  loc_B9494F: LitVarStr var_258, "ConceptoDet "
  loc_B94954: LitI4 4
  loc_B94959: ILdRf var_274
  loc_B9495C: Ary1StVarCopy
  loc_B9495E: LitVarStr var_284, "TotalPagReg"
  loc_B94963: LitI4 5
  loc_B94968: ILdRf var_274
  loc_B9496B: Ary1StVarCopy
  loc_B9496D: LitVarStr var_294, "TotalRegEje"
  loc_B94972: LitI4 6
  loc_B94977: ILdRf var_274
  loc_B9497A: Ary1StVarCopy
  loc_B9497C: LitVarStr var_2A4, "Diferencia"
  loc_B94981: LitI4 7
  loc_B94986: ILdRf var_274
  loc_B94989: Ary1StVarCopy
  loc_B9498B: FLdRfVar var_274
  loc_B9498E: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B94993: FStStr var_88
  loc_B94996: FLdRfVar var_274
  loc_B94999: Erase
  loc_B9499A: FLdZeroAd var_88
  loc_B9499D: CVarStr var_9C
  loc_B949A0: PopAdLdVar
  loc_B949A1: FLdPr Me
  loc_B949A4: MemLdRfVar from_stack_1.global_76
  loc_B949A7: LdPrVar
  loc_B949A9: LateMemCall
  loc_B949AF: FFree1Var var_9C = ""
  loc_B949B2: LitI4 1
  loc_B949B7: FLdPr Me
  loc_B949BA: MemLdRfVar from_stack_1.global_100
  loc_B949BD: FLdPr Me
  loc_B949C0: MemLdStr global_96
  loc_B949C3: LitI2_Byte 1
  loc_B949C5: FnUBound
  loc_B949C7: ForI4 var_2BC
  loc_B949CD: FLdPr Me
  loc_B949D0: MemLdStr global_100
  loc_B949D3: FLdPr Me
  loc_B949D6: MemLdStr global_96
  loc_B949D9: AryLock
  loc_B949DC: Ary1LdRf
  loc_B949DD: FStR4 var_2C4
  loc_B949E0: FLdPr Me
  loc_B949E3: VCallAd Control_ID_DesdeMsk
  loc_B949E6: FStAdFunc var_100
  loc_B949E9: FLdPr var_100
  loc_B949EC: LateIdLdVar var_CC DispID_15 0
  loc_B949F3: CStrVarTmp
  loc_B949F4: CVarStr var_DC
  loc_B949F7: FLdRfVar var_FC
  loc_B949FA: ImpAdCallFPR4  = Month()
  loc_B949FF: LitI4 0
  loc_B94A04: LitI4 7
  loc_B94A09: FLdRfVar var_274
  loc_B94A0C: Redim
  loc_B94A16: LitVarStr var_140, "|"
  loc_B94A1B: LitI4 0
  loc_B94A20: ILdRf var_274
  loc_B94A23: Ary1StVarCopy
  loc_B94A25: FLdPr Me
  loc_B94A28: VCallAd Control_ID_DesdeMsk
  loc_B94A2B: FStAdFunc var_8C
  loc_B94A2E: FLdPr var_8C
  loc_B94A31: LateIdLdVar var_9C DispID_15 0
  loc_B94A38: CStrVarTmp
  loc_B94A39: CVarStr var_AC
  loc_B94A3C: FLdRfVar var_BC
  loc_B94A3F: ImpAdCallFPR4  = Year()
  loc_B94A44: FLdRfVar var_BC
  loc_B94A47: LitI4 1
  loc_B94A4C: LitI4 1
  loc_B94A51: LitVarStr var_EC, "00"
  loc_B94A56: FStVarCopyObj var_110
  loc_B94A59: FLdRfVar var_110
  loc_B94A5C: FLdRfVar var_FC
  loc_B94A5F: FLdRfVar var_120
  loc_B94A62: ImpAdCallFPR4  = Format(, )
  loc_B94A67: FLdRfVar var_120
  loc_B94A6A: ConcatVar var_130
  loc_B94A6E: ParmAry1St
  loc_B94A74: FLdRfVar var_270
  loc_B94A77: CVarRef
  loc_B94A7C: ParmAry1St
  loc_B94A82: FMemLdR4 var_2C4(0)
  loc_B94A87: LitStr " - "
  loc_B94A8A: ConcatStr
  loc_B94A8B: FStStrNoPop var_88
  loc_B94A8E: FMemLdR4 var_2C4(4)
  loc_B94A93: ConcatStr
  loc_B94A94: CVarStr var_150
  loc_B94A97: ParmAry1St
  loc_B94A9D: FMemLdRf unk_48FAA1
  loc_B94AA2: CVarRef
  loc_B94AA7: ParmAry1St
  loc_B94AAD: FMemLdR4 var_2C4(12)
  loc_B94AB2: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B94AB7: CVarStr var_160
  loc_B94ABA: ParmAry1St
  loc_B94AC0: FMemLdR4 var_2C4(16)
  loc_B94AC5: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B94ACA: CVarStr var_170
  loc_B94ACD: ParmAry1St
  loc_B94AD3: FMemLdR4 var_2C4(20)
  loc_B94AD8: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B94ADD: CVarStr var_190
  loc_B94AE0: ParmAry1St
  loc_B94AE6: FLdRfVar var_274
  loc_B94AE9: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B94AEE: FStStr var_2C8
  loc_B94AF1: FLdRfVar var_274
  loc_B94AF4: Erase
  loc_B94AF5: FLdZeroAd var_2C8
  loc_B94AF8: CVarStr var_1A4
  loc_B94AFB: PopAdLdVar
  loc_B94AFC: FLdPr Me
  loc_B94AFF: MemLdRfVar from_stack_1.global_76
  loc_B94B02: LdPrVar
  loc_B94B04: LateMemCall
  loc_B94B0A: FFree1Str var_88
  loc_B94B0D: FFreeAd var_8C = ""
  loc_B94B14: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_DC = "": var_FC = "": var_110 = "": var_BC = "": var_120 = ""
  loc_B94B29: LitI4 0
  loc_B94B2E: FStR4 var_2C4
  loc_B94B31: AryUnlock
  loc_B94B34: FLdPr Me
  loc_B94B37: MemLdRfVar from_stack_1.global_100
  loc_B94B3A: NextI4 var_2BC, loc_B949CD
  loc_B94B3F: FLdPr Me
  loc_B94B42: MemLdRfVar from_stack_1.global_76
  loc_B94B45: LdPrVar
  loc_B94B47: LateMemCall
  loc_B94B4D: On Error GoTo 0
  loc_B94B50: ExitProcHresult
  loc_B94B51: LitVar_Missing var_CC
  loc_B94B54: LitVar_Missing var_BC
  loc_B94B57: LitVar_Missing var_AC
  loc_B94B5A: LitI4 0
  loc_B94B5F: LitStr "Error "
  loc_B94B62: FLdRfVar var_2CC
  loc_B94B65: ImpAdCallI2 Err 'rtcErrObj
  loc_B94B6A: FStAdFunc var_8C
  loc_B94B6D: FLdPr var_8C
  loc_B94B70:  = Err.Number
  loc_B94B75: ILdRf var_2CC
  loc_B94B78: CStrI4
  loc_B94B7A: FStStrNoPop var_88
  loc_B94B7D: ConcatStr
  loc_B94B7E: FStStrNoPop var_2C8
  loc_B94B81: LitStr " ("
  loc_B94B84: ConcatStr
  loc_B94B85: FStStrNoPop var_2D4
  loc_B94B88: FLdRfVar var_2D0
  loc_B94B8B: ImpAdCallI2 Err 'rtcErrObj
  loc_B94B90: FStAdFunc var_100
  loc_B94B93: FLdPr var_100
  loc_B94B96:  = Err.Description
  loc_B94B9B: ILdRf var_2D0
  loc_B94B9E: ConcatStr
  loc_B94B9F: FStStrNoPop var_2D8
  loc_B94BA2: LitStr ") in procedure GeneraTXT of Formulario rptA2988XIX"
  loc_B94BA5: ConcatStr
  loc_B94BA6: CVarStr var_9C
  loc_B94BA9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B94BAE: FFreeStr var_88 = "": var_2C8 = "": var_2D4 = "": var_2D0 = ""
  loc_B94BBB: FFreeAd var_8C = ""
  loc_B94BC2: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B94BCD: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'B992D0
  'Data Table: 48FD64
  loc_B98D48: ImpAdLdI4 MemVar_D93030
  loc_B98D4B: FStStrCopy var_88
  loc_B98D4E: LitI4 0
  loc_B98D53: LitStr "Excel.Application"
  loc_B98D56: FLdRfVar var_B4
  loc_B98D59: ImpAdCallFPR4  = CreateObject(, )
  loc_B98D5E: FLdRfVar var_B4
  loc_B98D61: FLdRfVar var_98
  loc_B98D64: SetVarVarFunc
  loc_B98D66: FLdRfVar var_98
  loc_B98D69: VarLateMemLdVar var_B4, .Workbooks
  loc_B98D6F: CastAdVar Me
  loc_B98D73: FStAdFunc var_9C
  loc_B98D76: FFree1Var var_B4 = ""
  loc_B98D79: FLdRfVar var_E0
  loc_B98D7C: LitVarI2 var_DC, 1
  loc_B98D81: PopAdLdVar
  loc_B98D82: FLdRfVar var_CC
  loc_B98D85: FLdRfVar var_C8
  loc_B98D88: LitI4 &H409
  loc_B98D8D: LitVar_Missing var_C4
  loc_B98D90: PopAdLdVar
  loc_B98D91: FLdPr var_9C
  loc_B98D94:  = Forms
  loc_B98D99: FLdPr var_C8
  loc_B98D9C: Call 0.Method_arg_20C ()
  loc_B98DA1: FLdPr var_CC
  loc_B98DA4: Me.BackColor = from_stack_1
  loc_B98DA9: ILdRf var_E0
  loc_B98DAC: CastAd
  loc_B98DAF: FStAdFunc var_A0
  loc_B98DB2: FFreeAd var_C8 = "": var_CC = ""
  loc_B98DBB: LitVar_TRUE var_C4
  loc_B98DBE: PopAdLdVar
  loc_B98DBF: FLdRfVar var_98
  loc_B98DC2: VarLateMemSt .Visible
  loc_B98DC6: LitVarI2 var_C4, 1
  loc_B98DCB: PopAdLdVar
  loc_B98DCC: LitVarI2 var_F0, 1
  loc_B98DD1: PopAdLdVar
  loc_B98DD2: LitVarStr var_110, "Cod. Concepto"
  loc_B98DD7: PopAdLdVar
  loc_B98DD8: FLdRfVar var_C8
  loc_B98DDB: FLdPr var_A0
  loc_B98DDE:  = Me.FontUnderline
  loc_B98DE3: FLdPr var_C8
  loc_B98DE6: LateIdCallSt
  loc_B98DEE: FFree1Ad var_C8
  loc_B98DF1: LitVarI2 var_C4, 1
  loc_B98DF6: PopAdLdVar
  loc_B98DF7: LitVarI2 var_F0, 2
  loc_B98DFC: PopAdLdVar
  loc_B98DFD: LitVarStr var_110, "Detalle de Concepto"
  loc_B98E02: PopAdLdVar
  loc_B98E03: FLdRfVar var_C8
  loc_B98E06: FLdPr var_A0
  loc_B98E09:  = Me.FontUnderline
  loc_B98E0E: FLdPr var_C8
  loc_B98E11: LateIdCallSt
  loc_B98E19: FFree1Ad var_C8
  loc_B98E1C: LitVarI2 var_C4, 1
  loc_B98E21: PopAdLdVar
  loc_B98E22: LitVarI2 var_F0, 3
  loc_B98E27: PopAdLdVar
  loc_B98E28: LitVarStr var_110, "Total Pagos en CtaCte"
  loc_B98E2D: PopAdLdVar
  loc_B98E2E: FLdRfVar var_C8
  loc_B98E31: FLdPr var_A0
  loc_B98E34:  = Me.FontUnderline
  loc_B98E39: FLdPr var_C8
  loc_B98E3C: LateIdCallSt
  loc_B98E44: FFree1Ad var_C8
  loc_B98E47: LitVarI2 var_C4, 1
  loc_B98E4C: PopAdLdVar
  loc_B98E4D: LitVarI2 var_F0, 4
  loc_B98E52: PopAdLdVar
  loc_B98E53: LitVarStr var_110, "Total Ingresado Anexo IV"
  loc_B98E58: PopAdLdVar
  loc_B98E59: FLdRfVar var_C8
  loc_B98E5C: FLdPr var_A0
  loc_B98E5F:  = Me.FontUnderline
  loc_B98E64: FLdPr var_C8
  loc_B98E67: LateIdCallSt
  loc_B98E6F: FFree1Ad var_C8
  loc_B98E72: LitVarI2 var_C4, 1
  loc_B98E77: PopAdLdVar
  loc_B98E78: LitVarI2 var_F0, 5
  loc_B98E7D: PopAdLdVar
  loc_B98E7E: LitVarStr var_110, "Diferencia"
  loc_B98E83: PopAdLdVar
  loc_B98E84: FLdRfVar var_C8
  loc_B98E87: FLdPr var_A0
  loc_B98E8A:  = Me.FontUnderline
  loc_B98E8F: FLdPr var_C8
  loc_B98E92: LateIdCallSt
  loc_B98E9A: FFree1Ad var_C8
  loc_B98E9D: LitI2_Byte 1
  loc_B98E9F: FStI2 var_A2
  loc_B98EA2: LitI4 1
  loc_B98EA7: FLdPr Me
  loc_B98EAA: MemLdRfVar from_stack_1.global_100
  loc_B98EAD: FLdPr Me
  loc_B98EB0: MemLdStr global_96
  loc_B98EB3: LitI2_Byte 1
  loc_B98EB5: FnUBound
  loc_B98EB7: ForI4 var_128
  loc_B98EBD: FLdPr Me
  loc_B98EC0: MemLdStr global_100
  loc_B98EC3: FLdPr Me
  loc_B98EC6: MemLdStr global_96
  loc_B98EC9: AryLock
  loc_B98ECC: Ary1LdPr
  loc_B98ECD: MemLdRfVar from_stack_1.global_12
  loc_B98ED0: FStR4 var_130
  loc_B98ED3: FLdI2 var_A2
  loc_B98ED6: CI4UI1
  loc_B98ED7: FLdPr Me
  loc_B98EDA: MemLdStr global_100
  loc_B98EDD: AddI4
  loc_B98EDE: CVarI4
  loc_B98EE2: PopAdLdVar
  loc_B98EE3: LitVarI2 var_F0, 1
  loc_B98EE8: PopAdLdVar
  loc_B98EE9: FLdPr Me
  loc_B98EEC: MemLdStr global_100
  loc_B98EEF: FLdPr Me
  loc_B98EF2: MemLdStr global_96
  loc_B98EF5: Ary1LdPr
  loc_B98EF6: MemLdStr global_0
  loc_B98EF9: LitStr " - "
  loc_B98EFC: ConcatStr
  loc_B98EFD: FStStrNoPop var_134
  loc_B98F00: FLdPr Me
  loc_B98F03: MemLdStr global_100
  loc_B98F06: FLdPr Me
  loc_B98F09: MemLdStr global_96
  loc_B98F0C: Ary1LdPr
  loc_B98F0D: MemLdStr global_4
  loc_B98F10: ConcatStr
  loc_B98F11: CVarStr var_B4
  loc_B98F14: PopAdLdVar
  loc_B98F15: FLdRfVar var_C8
  loc_B98F18: FLdPr var_A0
  loc_B98F1B:  = Me.FontUnderline
  loc_B98F20: FLdPr var_C8
  loc_B98F23: LateIdCallSt
  loc_B98F2B: FFree1Str var_134
  loc_B98F2E: FFree1Ad var_C8
  loc_B98F31: FFree1Var var_B4 = ""
  loc_B98F34: FLdI2 var_A2
  loc_B98F37: CI4UI1
  loc_B98F38: FLdPr Me
  loc_B98F3B: MemLdStr global_100
  loc_B98F3E: AddI4
  loc_B98F3F: CVarI4
  loc_B98F43: PopAdLdVar
  loc_B98F44: LitVarI2 var_F0, 2
  loc_B98F49: PopAdLdVar
  loc_B98F4A: FLdPr Me
  loc_B98F4D: MemLdStr global_100
  loc_B98F50: FLdPr Me
  loc_B98F53: MemLdStr global_96
  loc_B98F56: Ary1LdPr
  loc_B98F57: MemLdStr global_8
  loc_B98F5A: CVarStr var_110
  loc_B98F5D: PopAdLdVar
  loc_B98F5E: FLdRfVar var_C8
  loc_B98F61: FLdPr var_A0
  loc_B98F64:  = Me.FontUnderline
  loc_B98F69: FLdPr var_C8
  loc_B98F6C: LateIdCallSt
  loc_B98F74: FFree1Ad var_C8
  loc_B98F77: FLdI2 var_A2
  loc_B98F7A: CI4UI1
  loc_B98F7B: FLdPr Me
  loc_B98F7E: MemLdStr global_100
  loc_B98F81: AddI4
  loc_B98F82: CVarI4
  loc_B98F86: PopAdLdVar
  loc_B98F87: LitVarI2 var_F0, 3
  loc_B98F8C: PopAdLdVar
  loc_B98F8D: FMemLdR4 var_130(0)
  loc_B98F92: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B98F97: CVarR8
  loc_B98F9B: PopAdLdVar
  loc_B98F9C: FLdRfVar var_C8
  loc_B98F9F: FLdPr var_A0
  loc_B98FA2:  = Me.FontUnderline
  loc_B98FA7: FLdPr var_C8
  loc_B98FAA: LateIdCallSt
  loc_B98FB2: FFree1Ad var_C8
  loc_B98FB5: FLdI2 var_A2
  loc_B98FB8: CI4UI1
  loc_B98FB9: FLdPr Me
  loc_B98FBC: MemLdStr global_100
  loc_B98FBF: AddI4
  loc_B98FC0: CVarI4
  loc_B98FC4: PopAdLdVar
  loc_B98FC5: LitVarI2 var_F0, 4
  loc_B98FCA: PopAdLdVar
  loc_B98FCB: FMemLdR4 var_130(4)
  loc_B98FD0: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B98FD5: CVarR8
  loc_B98FD9: PopAdLdVar
  loc_B98FDA: FLdRfVar var_C8
  loc_B98FDD: FLdPr var_A0
  loc_B98FE0:  = Me.FontUnderline
  loc_B98FE5: FLdPr var_C8
  loc_B98FE8: LateIdCallSt
  loc_B98FF0: FFree1Ad var_C8
  loc_B98FF3: FLdI2 var_A2
  loc_B98FF6: CI4UI1
  loc_B98FF7: FLdPr Me
  loc_B98FFA: MemLdStr global_100
  loc_B98FFD: AddI4
  loc_B98FFE: CVarI4
  loc_B99002: PopAdLdVar
  loc_B99003: LitVarI2 var_F0, 5
  loc_B99008: PopAdLdVar
  loc_B99009: FMemLdR4 var_130(8)
  loc_B9900E: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B99013: CVarR8
  loc_B99017: PopAdLdVar
  loc_B99018: FLdRfVar var_C8
  loc_B9901B: FLdPr var_A0
  loc_B9901E:  = Me.FontUnderline
  loc_B99023: FLdPr var_C8
  loc_B99026: LateIdCallSt
  loc_B9902E: FFree1Ad var_C8
  loc_B99031: LitI4 0
  loc_B99036: FStR4 var_130
  loc_B99039: AryUnlock
  loc_B9903C: FLdPr Me
  loc_B9903F: MemLdRfVar from_stack_1.global_100
  loc_B99042: NextI4 var_128, loc_B98EBD
  loc_B99047: FLdI2 var_A2
  loc_B9904A: CI4UI1
  loc_B9904B: FLdPr Me
  loc_B9904E: MemLdStr global_100
  loc_B99051: AddI4
  loc_B99052: CVarI4
  loc_B99056: PopAdLdVar
  loc_B99057: LitVarI2 var_F0, 2
  loc_B9905C: PopAdLdVar
  loc_B9905D: LitVarStr var_110, "TOTALES"
  loc_B99062: PopAdLdVar
  loc_B99063: FLdRfVar var_C8
  loc_B99066: FLdPr var_A0
  loc_B99069:  = Me.FontUnderline
  loc_B9906E: FLdPr var_C8
  loc_B99071: LateIdCallSt
  loc_B99079: FFree1Ad var_C8
  loc_B9907C: FLdI2 var_A2
  loc_B9907F: CI4UI1
  loc_B99080: FLdPr Me
  loc_B99083: MemLdStr global_100
  loc_B99086: AddI4
  loc_B99087: CVarI4
  loc_B9908B: PopAdLdVar
  loc_B9908C: LitVarI2 var_F0, 3
  loc_B99091: PopAdLdVar
  loc_B99092: LitStr "=SUM(R[-"
  loc_B99095: FLdPr Me
  loc_B99098: MemLdStr global_96
  loc_B9909B: LitI2_Byte 1
  loc_B9909D: FnUBound
  loc_B9909F: CStrI4
  loc_B990A1: FStStrNoPop var_134
  loc_B990A4: ConcatStr
  loc_B990A5: FStStrNoPop var_138
  loc_B990A8: LitStr "]C:R[-1]C)"
  loc_B990AB: ConcatStr
  loc_B990AC: CVarStr var_B4
  loc_B990AF: PopAdLdVar
  loc_B990B0: FLdRfVar var_C8
  loc_B990B3: FLdPr var_A0
  loc_B990B6:  = Me.FontUnderline
  loc_B990BB: FLdPr var_C8
  loc_B990BE: LateIdCallSt
  loc_B990C6: FFreeStr var_134 = ""
  loc_B990CD: FFree1Ad var_C8
  loc_B990D0: FFree1Var var_B4 = ""
  loc_B990D3: FLdI2 var_A2
  loc_B990D6: CI4UI1
  loc_B990D7: FLdPr Me
  loc_B990DA: MemLdStr global_100
  loc_B990DD: AddI4
  loc_B990DE: CVarI4
  loc_B990E2: PopAdLdVar
  loc_B990E3: LitVarI2 var_F0, 4
  loc_B990E8: PopAdLdVar
  loc_B990E9: LitStr "=SUM(R[-"
  loc_B990EC: FLdPr Me
  loc_B990EF: MemLdStr global_96
  loc_B990F2: LitI2_Byte 1
  loc_B990F4: FnUBound
  loc_B990F6: CStrI4
  loc_B990F8: FStStrNoPop var_134
  loc_B990FB: ConcatStr
  loc_B990FC: FStStrNoPop var_138
  loc_B990FF: LitStr "]C:R[-1]C)"
  loc_B99102: ConcatStr
  loc_B99103: CVarStr var_B4
  loc_B99106: PopAdLdVar
  loc_B99107: FLdRfVar var_C8
  loc_B9910A: FLdPr var_A0
  loc_B9910D:  = Me.FontUnderline
  loc_B99112: FLdPr var_C8
  loc_B99115: LateIdCallSt
  loc_B9911D: FFreeStr var_134 = ""
  loc_B99124: FFree1Ad var_C8
  loc_B99127: FFree1Var var_B4 = ""
  loc_B9912A: FLdI2 var_A2
  loc_B9912D: CI4UI1
  loc_B9912E: FLdPr Me
  loc_B99131: MemLdStr global_100
  loc_B99134: AddI4
  loc_B99135: CVarI4
  loc_B99139: PopAdLdVar
  loc_B9913A: LitVarI2 var_F0, 5
  loc_B9913F: PopAdLdVar
  loc_B99140: LitStr "=SUM(R[-"
  loc_B99143: FLdPr Me
  loc_B99146: MemLdStr global_96
  loc_B99149: LitI2_Byte 1
  loc_B9914B: FnUBound
  loc_B9914D: CStrI4
  loc_B9914F: FStStrNoPop var_134
  loc_B99152: ConcatStr
  loc_B99153: FStStrNoPop var_138
  loc_B99156: LitStr "]C:R[-1]C)"
  loc_B99159: ConcatStr
  loc_B9915A: CVarStr var_B4
  loc_B9915D: PopAdLdVar
  loc_B9915E: FLdRfVar var_C8
  loc_B99161: FLdPr var_A0
  loc_B99164:  = Me.FontUnderline
  loc_B99169: FLdPr var_C8
  loc_B9916C: LateIdCallSt
  loc_B99174: FFreeStr var_134 = ""
  loc_B9917B: FFree1Ad var_C8
  loc_B9917E: FFree1Var var_B4 = ""
  loc_B99181: LitVar_TRUE var_F0
  loc_B99184: PopAdLdVar
  loc_B99185: FLdRfVar var_C8
  loc_B99188: LitVar_Missing var_DC
  loc_B9918B: PopAdLdVar
  loc_B9918C: LitVarStr var_C4, "A1:E1"
  loc_B99191: PopAdLdVar
  loc_B99192: FLdPr var_A0
  loc_B99195:  = Me.Image
  loc_B9919A: FLdPr var_C8
  loc_B9919D: LateIdLdVar var_B4 DispID_146 0
  loc_B991A4: CastAdVar Me
  loc_B991A8: FStAdFunc var_CC
  loc_B991AB: FLdPr var_CC
  loc_B991AE: LateIdSt
  loc_B991B3: FFreeAd var_C8 = ""
  loc_B991BA: FFree1Var var_B4 = ""
  loc_B991BD: LitVar_TRUE var_DC
  loc_B991C0: PopAdLdVar
  loc_B991C1: FLdRfVar var_C8
  loc_B991C4: LitVar_Missing var_C4
  loc_B991C7: PopAdLdVar
  loc_B991C8: LitStr "A"
  loc_B991CB: FLdPr Me
  loc_B991CE: MemLdStr global_100
  loc_B991D1: LitI4 1
  loc_B991D6: AddI4
  loc_B991D7: CStrI4
  loc_B991D9: FStStrNoPop var_134
  loc_B991DC: ConcatStr
  loc_B991DD: FStStrNoPop var_138
  loc_B991E0: LitStr ":E"
  loc_B991E3: ConcatStr
  loc_B991E4: FStStrNoPop var_13C
  loc_B991E7: FLdPr Me
  loc_B991EA: MemLdStr global_100
  loc_B991ED: LitI4 1
  loc_B991F2: AddI4
  loc_B991F3: CStrI4
  loc_B991F5: FStStrNoPop var_140
  loc_B991F8: ConcatStr
  loc_B991F9: CVarStr var_B4
  loc_B991FC: PopAdLdVar
  loc_B991FD: FLdPr var_A0
  loc_B99200:  = Me.Image
  loc_B99205: FLdPr var_C8
  loc_B99208: LateIdLdVar var_150 DispID_146 0
  loc_B9920F: CastAdVar Me
  loc_B99213: FStAdFunc var_CC
  loc_B99216: FLdPr var_CC
  loc_B99219: LateIdSt
  loc_B9921E: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_B99229: FFreeAd var_C8 = ""
  loc_B99230: FFreeVar var_B4 = ""
  loc_B99237: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_B9923C: PopAdLdVar
  loc_B9923D: LitVarStr var_C4, "C:E"
  loc_B99242: PopAdLdVar
  loc_B99243: FLdRfVar var_C8
  loc_B99246: FLdPr var_A0
  loc_B99249:  = Me.CurrentY
  loc_B9924E: FLdPr var_C8
  loc_B99251: LateIdCallLdVar
  loc_B9925B: VarLateMemSt .NumberFormat
  loc_B9925F: FFree1Ad var_C8
  loc_B99262: FFree1Var var_B4 = ""
  loc_B99265: LitVarStr var_C4, "A:E"
  loc_B9926A: PopAdLdVar
  loc_B9926B: FLdRfVar var_C8
  loc_B9926E: FLdPr var_A0
  loc_B99271:  = Me.CurrentY
  loc_B99276: FLdPr var_C8
  loc_B99279: LateIdCallLdVar
  loc_B99283: LdPrVar
  loc_B99285: LateMemCall
  loc_B9928B: FFree1Ad var_C8
  loc_B9928E: FFree1Var var_150 = ""
  loc_B99291: LitVar_Missing var_180
  loc_B99294: PopAdLdVar
  loc_B99295: LitVar_Missing var_170
  loc_B99298: PopAdLdVar
  loc_B99299: LitVar_Missing var_160
  loc_B9929C: PopAdLdVar
  loc_B9929D: LitVar_Missing var_120
  loc_B992A0: PopAdLdVar
  loc_B992A1: LitVar_Missing var_110
  loc_B992A4: PopAdLdVar
  loc_B992A5: LitVar_Missing var_100
  loc_B992A8: PopAdLdVar
  loc_B992A9: LitVar_Missing var_F0
  loc_B992AC: PopAdLdVar
  loc_B992AD: LitVar_Missing var_DC
  loc_B992B0: PopAdLdVar
  loc_B992B1: LitVar_Missing var_C4
  loc_B992B4: PopAdLdVar
  loc_B992B5: ILdRf var_88
  loc_B992B8: FLdPr var_A0
  loc_B992BB: Me.MouseIcon = from_stack_1
  loc_B992C0: LitI4 &H409
  loc_B992C5: FLdPr var_9C
  loc_B992CD: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B1DCD8
  'Data Table: 48FD64
  loc_B1DA48: FLdRfVar var_88
  loc_B1DA4B: LitI2_Byte 0
  loc_B1DA4D: LitI2_Byte &HFF
  loc_B1DA4F: ImpAdLdI4 MemVar_D93C84
  loc_B1DA52: FLdPr Me
  loc_B1DA55: MemLdRfVar from_stack_1.global_56
  loc_B1DA58: NewIfNullPr IFileSystem3
  loc_B1DA5B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B1DA60: ILdRf var_88
  loc_B1DA63: FLdPr Me
  loc_B1DA66: MemStVarAd
  loc_B1DA6A: FFree1Ad var_88
  loc_B1DA6D: LitI2_Byte &HFF
  loc_B1DA6F: ImpAdStI2 MemVar_D93C8A
  loc_B1DA72: Call Proc_253_23_BB70CC()
  loc_B1DA77: LitI4 1
  loc_B1DA7C: FLdPr Me
  loc_B1DA7F: MemLdRfVar from_stack_1.global_100
  loc_B1DA82: FLdPr Me
  loc_B1DA85: MemLdStr global_96
  loc_B1DA88: LitI2_Byte 1
  loc_B1DA8A: FnUBound
  loc_B1DA8C: ForI4 var_90
  loc_B1DA92: FLdPr Me
  loc_B1DA95: MemLdStr global_100
  loc_B1DA98: FLdPr Me
  loc_B1DA9B: MemLdStr global_96
  loc_B1DA9E: AryLock
  loc_B1DAA1: Ary1LdRf
  loc_B1DAA2: FStR4 var_98
  loc_B1DAA5: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B1DAAA: PopAdLdVar
  loc_B1DAAB: FLdPr Me
  loc_B1DAAE: MemLdRfVar from_stack_1.global_60
  loc_B1DAB1: LdPrVar
  loc_B1DAB3: LateMemCall
  loc_B1DAB9: LitStr vbNullString
  loc_B1DABC: LitI2_Byte 0
  loc_B1DABE: LitI2_Byte 0
  loc_B1DAC0: LitI2_Byte 0
  loc_B1DAC2: LitStr "right"
  loc_B1DAC5: FMemLdR4 var_98(0)
  loc_B1DACA: LitStr " - "
  loc_B1DACD: ConcatStr
  loc_B1DACE: FStStrNoPop var_BC
  loc_B1DAD1: FMemLdR4 var_98(4)
  loc_B1DAD6: ConcatStr
  loc_B1DAD7: FStStrNoPop var_C0
  loc_B1DADA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DADF: CVarStr var_D0
  loc_B1DAE2: PopAdLdVar
  loc_B1DAE3: FLdPr Me
  loc_B1DAE6: MemLdRfVar from_stack_1.global_60
  loc_B1DAE9: LdPrVar
  loc_B1DAEB: LateMemCall
  loc_B1DAF1: FFreeStr var_BC = ""
  loc_B1DAF8: FFree1Var var_D0 = ""
  loc_B1DAFB: LitStr vbNullString
  loc_B1DAFE: LitI2_Byte 0
  loc_B1DB00: LitI2_Byte 0
  loc_B1DB02: LitI2_Byte 0
  loc_B1DB04: LitStr "left"
  loc_B1DB07: FMemLdR4 var_98(8)
  loc_B1DB0C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DB11: CVarStr var_D0
  loc_B1DB14: PopAdLdVar
  loc_B1DB15: FLdPr Me
  loc_B1DB18: MemLdRfVar from_stack_1.global_60
  loc_B1DB1B: LdPrVar
  loc_B1DB1D: LateMemCall
  loc_B1DB23: FFree1Var var_D0 = ""
  loc_B1DB26: FMemLdRf 360424
  loc_B1DB2B: FStR4 var_D4
  loc_B1DB2E: LitStr vbNullString
  loc_B1DB31: LitI2_Byte 0
  loc_B1DB33: LitI2_Byte 0
  loc_B1DB35: LitI2_Byte 0
  loc_B1DB37: LitStr "right"
  loc_B1DB3A: FMemLdR4 var_D4(0)
  loc_B1DB3F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DB44: CVarStr var_D0
  loc_B1DB47: PopAdLdVar
  loc_B1DB48: FLdPr Me
  loc_B1DB4B: MemLdRfVar from_stack_1.global_60
  loc_B1DB4E: LdPrVar
  loc_B1DB50: LateMemCall
  loc_B1DB56: FFree1Var var_D0 = ""
  loc_B1DB59: LitStr vbNullString
  loc_B1DB5C: LitI2_Byte 0
  loc_B1DB5E: LitI2_Byte 0
  loc_B1DB60: LitI2_Byte 0
  loc_B1DB62: LitStr "right"
  loc_B1DB65: FMemLdR4 var_D4(4)
  loc_B1DB6A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DB6F: CVarStr var_D0
  loc_B1DB72: PopAdLdVar
  loc_B1DB73: FLdPr Me
  loc_B1DB76: MemLdRfVar from_stack_1.global_60
  loc_B1DB79: LdPrVar
  loc_B1DB7B: LateMemCall
  loc_B1DB81: FFree1Var var_D0 = ""
  loc_B1DB84: LitStr vbNullString
  loc_B1DB87: LitI2_Byte 0
  loc_B1DB89: LitI2_Byte 0
  loc_B1DB8B: LitI2_Byte 0
  loc_B1DB8D: LitStr "right"
  loc_B1DB90: FMemLdR4 var_D4(8)
  loc_B1DB95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DB9A: CVarStr var_D0
  loc_B1DB9D: PopAdLdVar
  loc_B1DB9E: FLdPr Me
  loc_B1DBA1: MemLdRfVar from_stack_1.global_60
  loc_B1DBA4: LdPrVar
  loc_B1DBA6: LateMemCall
  loc_B1DBAC: FFree1Var var_D0 = ""
  loc_B1DBAF: LitI4 0
  loc_B1DBB4: FStR4 var_D4
  loc_B1DBB7: LitVarStr var_A8, "     </tr>"
  loc_B1DBBC: PopAdLdVar
  loc_B1DBBD: FLdPr Me
  loc_B1DBC0: MemLdRfVar from_stack_1.global_60
  loc_B1DBC3: LdPrVar
  loc_B1DBC5: LateMemCall
  loc_B1DBCB: LitI4 0
  loc_B1DBD0: FStR4 var_98
  loc_B1DBD3: AryUnlock
  loc_B1DBD6: FLdPr Me
  loc_B1DBD9: MemLdRfVar from_stack_1.global_100
  loc_B1DBDC: NextI4 var_90, loc_B1DA92
  loc_B1DBE1: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B1DBE6: PopAdLdVar
  loc_B1DBE7: FLdPr Me
  loc_B1DBEA: MemLdRfVar from_stack_1.global_60
  loc_B1DBED: LdPrVar
  loc_B1DBEF: LateMemCall
  loc_B1DBF5: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B1DBFA: PopAdLdVar
  loc_B1DBFB: FLdPr Me
  loc_B1DBFE: MemLdRfVar from_stack_1.global_60
  loc_B1DC01: LdPrVar
  loc_B1DC03: LateMemCall
  loc_B1DC09: LitI4 1
  loc_B1DC0E: FLdPr Me
  loc_B1DC11: MemLdStr global_104
  loc_B1DC14: AryLock
  loc_B1DC17: Ary1LdRf
  loc_B1DC18: FStR4 var_DC
  loc_B1DC1B: LitStr vbNullString
  loc_B1DC1E: LitI2_Byte 0
  loc_B1DC20: LitI2_Byte 0
  loc_B1DC22: LitI2_Byte 0
  loc_B1DC24: LitStr "right"
  loc_B1DC27: FMemLdR4 var_DC(0)
  loc_B1DC2C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DC31: CVarStr var_D0
  loc_B1DC34: PopAdLdVar
  loc_B1DC35: FLdPr Me
  loc_B1DC38: MemLdRfVar from_stack_1.global_60
  loc_B1DC3B: LdPrVar
  loc_B1DC3D: LateMemCall
  loc_B1DC43: FFree1Var var_D0 = ""
  loc_B1DC46: LitStr vbNullString
  loc_B1DC49: LitI2_Byte 0
  loc_B1DC4B: LitI2_Byte 0
  loc_B1DC4D: LitI2_Byte 0
  loc_B1DC4F: LitStr "right"
  loc_B1DC52: FMemLdR4 var_DC(4)
  loc_B1DC57: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DC5C: CVarStr var_D0
  loc_B1DC5F: PopAdLdVar
  loc_B1DC60: FLdPr Me
  loc_B1DC63: MemLdRfVar from_stack_1.global_60
  loc_B1DC66: LdPrVar
  loc_B1DC68: LateMemCall
  loc_B1DC6E: FFree1Var var_D0 = ""
  loc_B1DC71: LitStr vbNullString
  loc_B1DC74: LitI2_Byte 0
  loc_B1DC76: LitI2_Byte 0
  loc_B1DC78: LitI2_Byte 0
  loc_B1DC7A: LitStr "right"
  loc_B1DC7D: FMemLdR4 var_DC(8)
  loc_B1DC82: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1DC87: CVarStr var_D0
  loc_B1DC8A: PopAdLdVar
  loc_B1DC8B: FLdPr Me
  loc_B1DC8E: MemLdRfVar from_stack_1.global_60
  loc_B1DC91: LdPrVar
  loc_B1DC93: LateMemCall
  loc_B1DC99: FFree1Var var_D0 = ""
  loc_B1DC9C: LitI4 0
  loc_B1DCA1: FStR4 var_DC
  loc_B1DCA4: AryUnlock
  loc_B1DCA7: LitVarStr var_A8, "     </tr>"
  loc_B1DCAC: PopAdLdVar
  loc_B1DCAD: FLdPr Me
  loc_B1DCB0: MemLdRfVar from_stack_1.global_60
  loc_B1DCB3: LdPrVar
  loc_B1DCB5: LateMemCall
  loc_B1DCBB: Call Proc_253_24_AE1154()
  loc_B1DCC0: FLdPr Me
  loc_B1DCC3: MemLdRfVar from_stack_1.global_60
  loc_B1DCC6: LdPrVar
  loc_B1DCC8: LateMemCall
  loc_B1DCCE: LitStr vbNullString
  loc_B1DCD1: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B1DCD6: ExitProcHresult
End Sub

Private Function Proc_253_23_BB70CC() 'BB70CC
  'Data Table: 48FD64
  loc_BB6A3C: LitVarStr var_94, "<html>"
  loc_BB6A41: PopAdLdVar
  loc_BB6A42: FLdPr Me
  loc_BB6A45: MemLdRfVar from_stack_1.global_60
  loc_BB6A48: LdPrVar
  loc_BB6A4A: LateMemCall
  loc_BB6A50: LitVarStr var_94, "<head>"
  loc_BB6A55: PopAdLdVar
  loc_BB6A56: FLdPr Me
  loc_BB6A59: MemLdRfVar from_stack_1.global_60
  loc_BB6A5C: LdPrVar
  loc_BB6A5E: LateMemCall
  loc_BB6A64: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB6A69: PopAdLdVar
  loc_BB6A6A: FLdPr Me
  loc_BB6A6D: MemLdRfVar from_stack_1.global_60
  loc_BB6A70: LdPrVar
  loc_BB6A72: LateMemCall
  loc_BB6A78: LitStr "<title>"
  loc_BB6A7B: FLdRfVar var_A8
  loc_BB6A7E: FLdPr Me
  loc_BB6A81:  = Me.Caption
  loc_BB6A86: ILdRf var_A8
  loc_BB6A89: ConcatStr
  loc_BB6A8A: FStStrNoPop var_AC
  loc_BB6A8D: LitStr "</title>"
  loc_BB6A90: ConcatStr
  loc_BB6A91: CVarStr var_BC
  loc_BB6A94: PopAdLdVar
  loc_BB6A95: FLdPr Me
  loc_BB6A98: MemLdRfVar from_stack_1.global_60
  loc_BB6A9B: LdPrVar
  loc_BB6A9D: LateMemCall
  loc_BB6AA3: FFreeStr var_A8 = ""
  loc_BB6AAA: FFree1Var var_BC = ""
  loc_BB6AAD: LitVarStr var_94, "<style type=""text/css"">"
  loc_BB6AB2: PopAdLdVar
  loc_BB6AB3: FLdPr Me
  loc_BB6AB6: MemLdRfVar from_stack_1.global_60
  loc_BB6AB9: LdPrVar
  loc_BB6ABB: LateMemCall
  loc_BB6AC1: LitVarStr var_94, ".Titulo1 {"
  loc_BB6AC6: PopAdLdVar
  loc_BB6AC7: FLdPr Me
  loc_BB6ACA: MemLdRfVar from_stack_1.global_60
  loc_BB6ACD: LdPrVar
  loc_BB6ACF: LateMemCall
  loc_BB6AD5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB6ADA: PopAdLdVar
  loc_BB6ADB: FLdPr Me
  loc_BB6ADE: MemLdRfVar from_stack_1.global_60
  loc_BB6AE1: LdPrVar
  loc_BB6AE3: LateMemCall
  loc_BB6AE9: LitVarStr var_94, " font-size: 18px;"
  loc_BB6AEE: PopAdLdVar
  loc_BB6AEF: FLdPr Me
  loc_BB6AF2: MemLdRfVar from_stack_1.global_60
  loc_BB6AF5: LdPrVar
  loc_BB6AF7: LateMemCall
  loc_BB6AFD: LitVarStr var_94, " font-weight: bold;"
  loc_BB6B02: PopAdLdVar
  loc_BB6B03: FLdPr Me
  loc_BB6B06: MemLdRfVar from_stack_1.global_60
  loc_BB6B09: LdPrVar
  loc_BB6B0B: LateMemCall
  loc_BB6B11: LitVarStr var_94, "}"
  loc_BB6B16: PopAdLdVar
  loc_BB6B17: FLdPr Me
  loc_BB6B1A: MemLdRfVar from_stack_1.global_60
  loc_BB6B1D: LdPrVar
  loc_BB6B1F: LateMemCall
  loc_BB6B25: LitVarStr var_94, ".Titulo2 {"
  loc_BB6B2A: PopAdLdVar
  loc_BB6B2B: FLdPr Me
  loc_BB6B2E: MemLdRfVar from_stack_1.global_60
  loc_BB6B31: LdPrVar
  loc_BB6B33: LateMemCall
  loc_BB6B39: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB6B3E: PopAdLdVar
  loc_BB6B3F: FLdPr Me
  loc_BB6B42: MemLdRfVar from_stack_1.global_60
  loc_BB6B45: LdPrVar
  loc_BB6B47: LateMemCall
  loc_BB6B4D: LitVarStr var_94, " font-size: 14px;"
  loc_BB6B52: PopAdLdVar
  loc_BB6B53: FLdPr Me
  loc_BB6B56: MemLdRfVar from_stack_1.global_60
  loc_BB6B59: LdPrVar
  loc_BB6B5B: LateMemCall
  loc_BB6B61: LitVarStr var_94, " font-weight: bold;"
  loc_BB6B66: PopAdLdVar
  loc_BB6B67: FLdPr Me
  loc_BB6B6A: MemLdRfVar from_stack_1.global_60
  loc_BB6B6D: LdPrVar
  loc_BB6B6F: LateMemCall
  loc_BB6B75: LitVarStr var_94, "}"
  loc_BB6B7A: PopAdLdVar
  loc_BB6B7B: FLdPr Me
  loc_BB6B7E: MemLdRfVar from_stack_1.global_60
  loc_BB6B81: LdPrVar
  loc_BB6B83: LateMemCall
  loc_BB6B89: LitVarStr var_94, ".Normal {"
  loc_BB6B8E: PopAdLdVar
  loc_BB6B8F: FLdPr Me
  loc_BB6B92: MemLdRfVar from_stack_1.global_60
  loc_BB6B95: LdPrVar
  loc_BB6B97: LateMemCall
  loc_BB6B9D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB6BA2: PopAdLdVar
  loc_BB6BA3: FLdPr Me
  loc_BB6BA6: MemLdRfVar from_stack_1.global_60
  loc_BB6BA9: LdPrVar
  loc_BB6BAB: LateMemCall
  loc_BB6BB1: LitVarStr var_94, " font-size: 12px;"
  loc_BB6BB6: PopAdLdVar
  loc_BB6BB7: FLdPr Me
  loc_BB6BBA: MemLdRfVar from_stack_1.global_60
  loc_BB6BBD: LdPrVar
  loc_BB6BBF: LateMemCall
  loc_BB6BC5: LitVarStr var_94, " font-style: normal;"
  loc_BB6BCA: PopAdLdVar
  loc_BB6BCB: FLdPr Me
  loc_BB6BCE: MemLdRfVar from_stack_1.global_60
  loc_BB6BD1: LdPrVar
  loc_BB6BD3: LateMemCall
  loc_BB6BD9: LitVarStr var_94, " font-weight: normal;"
  loc_BB6BDE: PopAdLdVar
  loc_BB6BDF: FLdPr Me
  loc_BB6BE2: MemLdRfVar from_stack_1.global_60
  loc_BB6BE5: LdPrVar
  loc_BB6BE7: LateMemCall
  loc_BB6BED: LitVarStr var_94, " font-variant: normal;"
  loc_BB6BF2: PopAdLdVar
  loc_BB6BF3: FLdPr Me
  loc_BB6BF6: MemLdRfVar from_stack_1.global_60
  loc_BB6BF9: LdPrVar
  loc_BB6BFB: LateMemCall
  loc_BB6C01: LitVarStr var_94, "}"
  loc_BB6C06: PopAdLdVar
  loc_BB6C07: FLdPr Me
  loc_BB6C0A: MemLdRfVar from_stack_1.global_60
  loc_BB6C0D: LdPrVar
  loc_BB6C0F: LateMemCall
  loc_BB6C15: LitVarStr var_94, ".Encabezado {"
  loc_BB6C1A: PopAdLdVar
  loc_BB6C1B: FLdPr Me
  loc_BB6C1E: MemLdRfVar from_stack_1.global_60
  loc_BB6C21: LdPrVar
  loc_BB6C23: LateMemCall
  loc_BB6C29: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB6C2E: PopAdLdVar
  loc_BB6C2F: FLdPr Me
  loc_BB6C32: MemLdRfVar from_stack_1.global_60
  loc_BB6C35: LdPrVar
  loc_BB6C37: LateMemCall
  loc_BB6C3D: LitVarStr var_94, " font-size: 11px;"
  loc_BB6C42: PopAdLdVar
  loc_BB6C43: FLdPr Me
  loc_BB6C46: MemLdRfVar from_stack_1.global_60
  loc_BB6C49: LdPrVar
  loc_BB6C4B: LateMemCall
  loc_BB6C51: LitVarStr var_94, " font-weight: bold;"
  loc_BB6C56: PopAdLdVar
  loc_BB6C57: FLdPr Me
  loc_BB6C5A: MemLdRfVar from_stack_1.global_60
  loc_BB6C5D: LdPrVar
  loc_BB6C5F: LateMemCall
  loc_BB6C65: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BB6C6A: PopAdLdVar
  loc_BB6C6B: FLdPr Me
  loc_BB6C6E: MemLdRfVar from_stack_1.global_60
  loc_BB6C71: LdPrVar
  loc_BB6C73: LateMemCall
  loc_BB6C79: LitVarStr var_94, "}"
  loc_BB6C7E: PopAdLdVar
  loc_BB6C7F: FLdPr Me
  loc_BB6C82: MemLdRfVar from_stack_1.global_60
  loc_BB6C85: LdPrVar
  loc_BB6C87: LateMemCall
  loc_BB6C8D: LitVarStr var_94, ".LineaDato {"
  loc_BB6C92: PopAdLdVar
  loc_BB6C93: FLdPr Me
  loc_BB6C96: MemLdRfVar from_stack_1.global_60
  loc_BB6C99: LdPrVar
  loc_BB6C9B: LateMemCall
  loc_BB6CA1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB6CA6: PopAdLdVar
  loc_BB6CA7: FLdPr Me
  loc_BB6CAA: MemLdRfVar from_stack_1.global_60
  loc_BB6CAD: LdPrVar
  loc_BB6CAF: LateMemCall
  loc_BB6CB5: LitVarStr var_94, " font-size: 10px;"
  loc_BB6CBA: PopAdLdVar
  loc_BB6CBB: FLdPr Me
  loc_BB6CBE: MemLdRfVar from_stack_1.global_60
  loc_BB6CC1: LdPrVar
  loc_BB6CC3: LateMemCall
  loc_BB6CC9: LitVarStr var_94, "}"
  loc_BB6CCE: PopAdLdVar
  loc_BB6CCF: FLdPr Me
  loc_BB6CD2: MemLdRfVar from_stack_1.global_60
  loc_BB6CD5: LdPrVar
  loc_BB6CD7: LateMemCall
  loc_BB6CDD: LitVarStr var_94, ".Totales {"
  loc_BB6CE2: PopAdLdVar
  loc_BB6CE3: FLdPr Me
  loc_BB6CE6: MemLdRfVar from_stack_1.global_60
  loc_BB6CE9: LdPrVar
  loc_BB6CEB: LateMemCall
  loc_BB6CF1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB6CF6: PopAdLdVar
  loc_BB6CF7: FLdPr Me
  loc_BB6CFA: MemLdRfVar from_stack_1.global_60
  loc_BB6CFD: LdPrVar
  loc_BB6CFF: LateMemCall
  loc_BB6D05: LitVarStr var_94, " font-size: 12px;"
  loc_BB6D0A: PopAdLdVar
  loc_BB6D0B: FLdPr Me
  loc_BB6D0E: MemLdRfVar from_stack_1.global_60
  loc_BB6D11: LdPrVar
  loc_BB6D13: LateMemCall
  loc_BB6D19: LitVarStr var_94, " font-weight: bold;"
  loc_BB6D1E: PopAdLdVar
  loc_BB6D1F: FLdPr Me
  loc_BB6D22: MemLdRfVar from_stack_1.global_60
  loc_BB6D25: LdPrVar
  loc_BB6D27: LateMemCall
  loc_BB6D2D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB6D32: PopAdLdVar
  loc_BB6D33: FLdPr Me
  loc_BB6D36: MemLdRfVar from_stack_1.global_60
  loc_BB6D39: LdPrVar
  loc_BB6D3B: LateMemCall
  loc_BB6D41: LitVarStr var_94, "}"
  loc_BB6D46: PopAdLdVar
  loc_BB6D47: FLdPr Me
  loc_BB6D4A: MemLdRfVar from_stack_1.global_60
  loc_BB6D4D: LdPrVar
  loc_BB6D4F: LateMemCall
  loc_BB6D55: LitVarStr var_94, ".SubTotales {"
  loc_BB6D5A: PopAdLdVar
  loc_BB6D5B: FLdPr Me
  loc_BB6D5E: MemLdRfVar from_stack_1.global_60
  loc_BB6D61: LdPrVar
  loc_BB6D63: LateMemCall
  loc_BB6D69: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB6D6E: PopAdLdVar
  loc_BB6D6F: FLdPr Me
  loc_BB6D72: MemLdRfVar from_stack_1.global_60
  loc_BB6D75: LdPrVar
  loc_BB6D77: LateMemCall
  loc_BB6D7D: LitVarStr var_94, " font-size: 10px;"
  loc_BB6D82: PopAdLdVar
  loc_BB6D83: FLdPr Me
  loc_BB6D86: MemLdRfVar from_stack_1.global_60
  loc_BB6D89: LdPrVar
  loc_BB6D8B: LateMemCall
  loc_BB6D91: LitVarStr var_94, " font-weight: bold;"
  loc_BB6D96: PopAdLdVar
  loc_BB6D97: FLdPr Me
  loc_BB6D9A: MemLdRfVar from_stack_1.global_60
  loc_BB6D9D: LdPrVar
  loc_BB6D9F: LateMemCall
  loc_BB6DA5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB6DAA: PopAdLdVar
  loc_BB6DAB: FLdPr Me
  loc_BB6DAE: MemLdRfVar from_stack_1.global_60
  loc_BB6DB1: LdPrVar
  loc_BB6DB3: LateMemCall
  loc_BB6DB9: LitVarStr var_94, "}"
  loc_BB6DBE: PopAdLdVar
  loc_BB6DBF: FLdPr Me
  loc_BB6DC2: MemLdRfVar from_stack_1.global_60
  loc_BB6DC5: LdPrVar
  loc_BB6DC7: LateMemCall
  loc_BB6DCD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BB6DD2: PopAdLdVar
  loc_BB6DD3: FLdPr Me
  loc_BB6DD6: MemLdRfVar from_stack_1.global_60
  loc_BB6DD9: LdPrVar
  loc_BB6DDB: LateMemCall
  loc_BB6DE1: LitVarStr var_94, "</style>"
  loc_BB6DE6: PopAdLdVar
  loc_BB6DE7: FLdPr Me
  loc_BB6DEA: MemLdRfVar from_stack_1.global_60
  loc_BB6DED: LdPrVar
  loc_BB6DEF: LateMemCall
  loc_BB6DF5: LitI4 0
  loc_BB6DFA: FStStrCopy var_AC
  loc_BB6DFD: FLdRfVar var_AC
  loc_BB6E00: LitI4 0
  loc_BB6E05: FStStrCopy var_A8
  loc_BB6E08: FLdRfVar var_A8
  loc_BB6E0B: LitI2_Byte &HFF
  loc_BB6E0D: PopTmpLdAd2 var_BE
  loc_BB6E10: FLdPr Me
  loc_BB6E13: MemLdRfVar from_stack_1.global_60
  loc_BB6E16: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB6E1B: FFreeStr var_A8 = ""
  loc_BB6E22: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB6E27: PopAdLdVar
  loc_BB6E28: FLdPr Me
  loc_BB6E2B: MemLdRfVar from_stack_1.global_60
  loc_BB6E2E: LdPrVar
  loc_BB6E30: LateMemCall
  loc_BB6E36: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BB6E3B: PopAdLdVar
  loc_BB6E3C: FLdPr Me
  loc_BB6E3F: MemLdRfVar from_stack_1.global_60
  loc_BB6E42: LdPrVar
  loc_BB6E44: LateMemCall
  loc_BB6E4A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB6E4D: LitI2_Byte &H5F
  loc_BB6E4F: CStrUI1
  loc_BB6E51: FStStrNoPop var_A8
  loc_BB6E54: ConcatStr
  loc_BB6E55: FStStrNoPop var_AC
  loc_BB6E58: LitStr """ height="""
  loc_BB6E5B: ConcatStr
  loc_BB6E5C: FStStrNoPop var_C4
  loc_BB6E5F: LitI2_Byte &H3C
  loc_BB6E61: CStrUI1
  loc_BB6E63: FStStrNoPop var_C8
  loc_BB6E66: ConcatStr
  loc_BB6E67: FStStrNoPop var_CC
  loc_BB6E6A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB6E6D: ConcatStr
  loc_BB6E6E: FStStrNoPop var_D0
  loc_BB6E71: LitStr "Municipalidad de Guaymallén"
  loc_BB6E74: ConcatStr
  loc_BB6E75: FStStrNoPop var_D4
  loc_BB6E78: LitStr "</p>"
  loc_BB6E7B: ConcatStr
  loc_BB6E7C: CVarStr var_BC
  loc_BB6E7F: PopAdLdVar
  loc_BB6E80: FLdPr Me
  loc_BB6E83: MemLdRfVar from_stack_1.global_60
  loc_BB6E86: LdPrVar
  loc_BB6E88: LateMemCall
  loc_BB6E8E: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB6E9F: FFree1Var var_BC = ""
  loc_BB6EA2: LitStr "    <p>"
  loc_BB6EA5: FLdRfVar var_A8
  loc_BB6EA8: FLdPr Me
  loc_BB6EAB:  = Me.Caption
  loc_BB6EB0: ILdRf var_A8
  loc_BB6EB3: ConcatStr
  loc_BB6EB4: FStStrNoPop var_AC
  loc_BB6EB7: LitStr "</p></th>"
  loc_BB6EBA: ConcatStr
  loc_BB6EBB: CVarStr var_BC
  loc_BB6EBE: PopAdLdVar
  loc_BB6EBF: FLdPr Me
  loc_BB6EC2: MemLdRfVar from_stack_1.global_60
  loc_BB6EC5: LdPrVar
  loc_BB6EC7: LateMemCall
  loc_BB6ECD: FFreeStr var_A8 = ""
  loc_BB6ED4: FFree1Var var_BC = ""
  loc_BB6ED7: LitVarStr var_94, "  </tr>"
  loc_BB6EDC: PopAdLdVar
  loc_BB6EDD: FLdPr Me
  loc_BB6EE0: MemLdRfVar from_stack_1.global_60
  loc_BB6EE3: LdPrVar
  loc_BB6EE5: LateMemCall
  loc_BB6EEB: LitVarStr var_94, "  <tr>"
  loc_BB6EF0: PopAdLdVar
  loc_BB6EF1: FLdPr Me
  loc_BB6EF4: MemLdRfVar from_stack_1.global_60
  loc_BB6EF7: LdPrVar
  loc_BB6EF9: LateMemCall
  loc_BB6EFF: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BB6F04: PopAdLdVar
  loc_BB6F05: FLdPr Me
  loc_BB6F08: MemLdRfVar from_stack_1.global_60
  loc_BB6F0B: LdPrVar
  loc_BB6F0D: LateMemCall
  loc_BB6F13: LitVarStr var_94, "  </tr>"
  loc_BB6F18: PopAdLdVar
  loc_BB6F19: FLdPr Me
  loc_BB6F1C: MemLdRfVar from_stack_1.global_60
  loc_BB6F1F: LdPrVar
  loc_BB6F21: LateMemCall
  loc_BB6F27: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BB6F2C: PopAdLdVar
  loc_BB6F2D: FLdPr Me
  loc_BB6F30: MemLdRfVar from_stack_1.global_60
  loc_BB6F33: LdPrVar
  loc_BB6F35: LateMemCall
  loc_BB6F3B: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BB6F3E: FLdPr Me
  loc_BB6F41: VCallAd Control_ID_DesdeMsk
  loc_BB6F44: FStAdFunc var_D8
  loc_BB6F47: FLdPr var_D8
  loc_BB6F4A: LateIdLdVar var_BC DispID_15 0
  loc_BB6F51: CStrVarTmp
  loc_BB6F52: FStStrNoPop var_A8
  loc_BB6F55: ConcatStr
  loc_BB6F56: FStStrNoPop var_AC
  loc_BB6F59: LitStr "</td>"
  loc_BB6F5C: ConcatStr
  loc_BB6F5D: CVarStr var_E8
  loc_BB6F60: PopAdLdVar
  loc_BB6F61: FLdPr Me
  loc_BB6F64: MemLdRfVar from_stack_1.global_60
  loc_BB6F67: LdPrVar
  loc_BB6F69: LateMemCall
  loc_BB6F6F: FFreeStr var_A8 = ""
  loc_BB6F76: FFree1Ad var_D8
  loc_BB6F79: FFreeVar var_BC = ""
  loc_BB6F80: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BB6F83: FLdPr Me
  loc_BB6F86: VCallAd Control_ID_HastaMsk
  loc_BB6F89: FStAdFunc var_D8
  loc_BB6F8C: FLdPr var_D8
  loc_BB6F8F: LateIdLdVar var_BC DispID_15 0
  loc_BB6F96: CStrVarTmp
  loc_BB6F97: FStStrNoPop var_A8
  loc_BB6F9A: ConcatStr
  loc_BB6F9B: FStStrNoPop var_AC
  loc_BB6F9E: LitStr "</td>"
  loc_BB6FA1: ConcatStr
  loc_BB6FA2: CVarStr var_E8
  loc_BB6FA5: PopAdLdVar
  loc_BB6FA6: FLdPr Me
  loc_BB6FA9: MemLdRfVar from_stack_1.global_60
  loc_BB6FAC: LdPrVar
  loc_BB6FAE: LateMemCall
  loc_BB6FB4: FFreeStr var_A8 = ""
  loc_BB6FBB: FFree1Ad var_D8
  loc_BB6FBE: FFreeVar var_BC = ""
  loc_BB6FC5: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BB6FCA: PopAdLdVar
  loc_BB6FCB: FLdPr Me
  loc_BB6FCE: MemLdRfVar from_stack_1.global_60
  loc_BB6FD1: LdPrVar
  loc_BB6FD3: LateMemCall
  loc_BB6FD9: LitVarStr var_94, "  </tr>"
  loc_BB6FDE: PopAdLdVar
  loc_BB6FDF: FLdPr Me
  loc_BB6FE2: MemLdRfVar from_stack_1.global_60
  loc_BB6FE5: LdPrVar
  loc_BB6FE7: LateMemCall
  loc_BB6FED: LitVarStr var_94, "</table>"
  loc_BB6FF2: PopAdLdVar
  loc_BB6FF3: FLdPr Me
  loc_BB6FF6: MemLdRfVar from_stack_1.global_60
  loc_BB6FF9: LdPrVar
  loc_BB6FFB: LateMemCall
  loc_BB7001: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB7006: PopAdLdVar
  loc_BB7007: FLdPr Me
  loc_BB700A: MemLdRfVar from_stack_1.global_60
  loc_BB700D: LdPrVar
  loc_BB700F: LateMemCall
  loc_BB7015: LitVarStr var_94, "  <thead>"
  loc_BB701A: PopAdLdVar
  loc_BB701B: FLdPr Me
  loc_BB701E: MemLdRfVar from_stack_1.global_60
  loc_BB7021: LdPrVar
  loc_BB7023: LateMemCall
  loc_BB7029: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB702E: PopAdLdVar
  loc_BB702F: FLdPr Me
  loc_BB7032: MemLdRfVar from_stack_1.global_60
  loc_BB7035: LdPrVar
  loc_BB7037: LateMemCall
  loc_BB703D: LitVarStr var_94, "    <th>Cod. Conc.</th>"
  loc_BB7042: PopAdLdVar
  loc_BB7043: FLdPr Me
  loc_BB7046: MemLdRfVar from_stack_1.global_60
  loc_BB7049: LdPrVar
  loc_BB704B: LateMemCall
  loc_BB7051: LitVarStr var_94, "    <th>Detalle del Concepto</th>"
  loc_BB7056: PopAdLdVar
  loc_BB7057: FLdPr Me
  loc_BB705A: MemLdRfVar from_stack_1.global_60
  loc_BB705D: LdPrVar
  loc_BB705F: LateMemCall
  loc_BB7065: LitVarStr var_94, "    <th>Total Pagos CtaCte</th>"
  loc_BB706A: PopAdLdVar
  loc_BB706B: FLdPr Me
  loc_BB706E: MemLdRfVar from_stack_1.global_60
  loc_BB7071: LdPrVar
  loc_BB7073: LateMemCall
  loc_BB7079: LitVarStr var_94, "    <th>Tota Ingresado en Anexo IV</th>"
  loc_BB707E: PopAdLdVar
  loc_BB707F: FLdPr Me
  loc_BB7082: MemLdRfVar from_stack_1.global_60
  loc_BB7085: LdPrVar
  loc_BB7087: LateMemCall
  loc_BB708D: LitVarStr var_94, "    <th>Diferencia</th>"
  loc_BB7092: PopAdLdVar
  loc_BB7093: FLdPr Me
  loc_BB7096: MemLdRfVar from_stack_1.global_60
  loc_BB7099: LdPrVar
  loc_BB709B: LateMemCall
  loc_BB70A1: LitVarStr var_94, "  </tr>"
  loc_BB70A6: PopAdLdVar
  loc_BB70A7: FLdPr Me
  loc_BB70AA: MemLdRfVar from_stack_1.global_60
  loc_BB70AD: LdPrVar
  loc_BB70AF: LateMemCall
  loc_BB70B5: LitVarStr var_94, "  </thead>"
  loc_BB70BA: PopAdLdVar
  loc_BB70BB: FLdPr Me
  loc_BB70BE: MemLdRfVar from_stack_1.global_60
  loc_BB70C1: LdPrVar
  loc_BB70C3: LateMemCall
  loc_BB70C9: ExitProcHresult
End Function

Private Function Proc_253_24_AE1154() 'AE1154
  'Data Table: 48FD64
  loc_AE0FE8: LitVarStr var_94, "</table>"
  loc_AE0FED: PopAdLdVar
  loc_AE0FEE: FLdPr Me
  loc_AE0FF1: MemLdRfVar from_stack_1.global_60
  loc_AE0FF4: LdPrVar
  loc_AE0FF6: LateMemCall
  loc_AE0FFC: LitVarStr var_94, "<br>"
  loc_AE1001: PopAdLdVar
  loc_AE1002: FLdPr Me
  loc_AE1005: MemLdRfVar from_stack_1.global_60
  loc_AE1008: LdPrVar
  loc_AE100A: LateMemCall
  loc_AE1010: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_AE1015: PopAdLdVar
  loc_AE1016: FLdPr Me
  loc_AE1019: MemLdRfVar from_stack_1.global_60
  loc_AE101C: LdPrVar
  loc_AE101E: LateMemCall
  loc_AE1024: LitVarStr var_94, "  <tr>"
  loc_AE1029: PopAdLdVar
  loc_AE102A: FLdPr Me
  loc_AE102D: MemLdRfVar from_stack_1.global_60
  loc_AE1030: LdPrVar
  loc_AE1032: LateMemCall
  loc_AE1038: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_AE103D: PopAdLdVar
  loc_AE103E: FLdPr Me
  loc_AE1041: MemLdRfVar from_stack_1.global_60
  loc_AE1044: LdPrVar
  loc_AE1046: LateMemCall
  loc_AE104C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_AE1051: PopAdLdVar
  loc_AE1052: FLdPr Me
  loc_AE1055: MemLdRfVar from_stack_1.global_60
  loc_AE1058: LdPrVar
  loc_AE105A: LateMemCall
  loc_AE1060: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_AE1065: PopAdLdVar
  loc_AE1066: FLdPr Me
  loc_AE1069: MemLdRfVar from_stack_1.global_60
  loc_AE106C: LdPrVar
  loc_AE106E: LateMemCall
  loc_AE1074: LitVarStr var_94, "          <map name=""Map"">"
  loc_AE1079: PopAdLdVar
  loc_AE107A: FLdPr Me
  loc_AE107D: MemLdRfVar from_stack_1.global_60
  loc_AE1080: LdPrVar
  loc_AE1082: LateMemCall
  loc_AE1088: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_AE108D: PopAdLdVar
  loc_AE108E: FLdPr Me
  loc_AE1091: MemLdRfVar from_stack_1.global_60
  loc_AE1094: LdPrVar
  loc_AE1096: LateMemCall
  loc_AE109C: LitVarStr var_94, "          </map>"
  loc_AE10A1: PopAdLdVar
  loc_AE10A2: FLdPr Me
  loc_AE10A5: MemLdRfVar from_stack_1.global_60
  loc_AE10A8: LdPrVar
  loc_AE10AA: LateMemCall
  loc_AE10B0: LitVarStr var_94, "    </div></th>"
  loc_AE10B5: PopAdLdVar
  loc_AE10B6: FLdPr Me
  loc_AE10B9: MemLdRfVar from_stack_1.global_60
  loc_AE10BC: LdPrVar
  loc_AE10BE: LateMemCall
  loc_AE10C4: LitVarStr var_94, "  </tr>"
  loc_AE10C9: PopAdLdVar
  loc_AE10CA: FLdPr Me
  loc_AE10CD: MemLdRfVar from_stack_1.global_60
  loc_AE10D0: LdPrVar
  loc_AE10D2: LateMemCall
  loc_AE10D8: LitVarStr var_94, "  <tr>"
  loc_AE10DD: PopAdLdVar
  loc_AE10DE: FLdPr Me
  loc_AE10E1: MemLdRfVar from_stack_1.global_60
  loc_AE10E4: LdPrVar
  loc_AE10E6: LateMemCall
  loc_AE10EC: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_AE10F1: PopAdLdVar
  loc_AE10F2: FLdPr Me
  loc_AE10F5: MemLdRfVar from_stack_1.global_60
  loc_AE10F8: LdPrVar
  loc_AE10FA: LateMemCall
  loc_AE1100: LitVarStr var_94, "  </tr>"
  loc_AE1105: PopAdLdVar
  loc_AE1106: FLdPr Me
  loc_AE1109: MemLdRfVar from_stack_1.global_60
  loc_AE110C: LdPrVar
  loc_AE110E: LateMemCall
  loc_AE1114: LitVarStr var_94, "</table>"
  loc_AE1119: PopAdLdVar
  loc_AE111A: FLdPr Me
  loc_AE111D: MemLdRfVar from_stack_1.global_60
  loc_AE1120: LdPrVar
  loc_AE1122: LateMemCall
  loc_AE1128: LitVarStr var_94, "</body>"
  loc_AE112D: PopAdLdVar
  loc_AE112E: FLdPr Me
  loc_AE1131: MemLdRfVar from_stack_1.global_60
  loc_AE1134: LdPrVar
  loc_AE1136: LateMemCall
  loc_AE113C: LitVarStr var_94, "</html>"
  loc_AE1141: PopAdLdVar
  loc_AE1142: FLdPr Me
  loc_AE1145: MemLdRfVar from_stack_1.global_60
  loc_AE1148: LdPrVar
  loc_AE114A: LateMemCall
  loc_AE1150: ExitProcHresult
End Function
