VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988IIB5Resumen
  Caption = "Reporte de Deudores - Resumen"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988IIB5Resumen.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8940
  ClientHeight = 4332
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4080
    Width = 8940
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptA2988IIB5Resumen.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 2760
    Width = 855
    Height = 735
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptA2988IIB5Resumen.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988IIB5Resumen.frx":0B9C
    Left = 8040
    Top = 2760
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2520
    Width = 3375
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
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 19
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
    Top = 2520
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
    Caption = "1"
    Left = 120
    Top = 0
    Width = 7575
    Height = 2415
    TabIndex = 10
    Begin VB.OptionButton OptContabilidad
      Caption = "Contabilidad"
      Left = 3360
      Top = 1800
      Width = 1815
      Height = 495
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
    Begin VB.OptionButton OptRentas
      Caption = "Rentas"
      Left = 1320
      Top = 1800
      Width = 1215
      Height = 495
      TabIndex = 17
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
    Begin VB.CheckBox SepararOpt
      Caption = "Separar por hojas"
      Left = 2280
      Top = 1320
      Width = 2415
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
    Begin VB.CommandButton HastaFechaCmd
      Left = 3720
      Top = 885
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptA2988IIB5Resumen.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeFechaCmd
      Left = 3720
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 1
      Picture = "rptA2988IIB5Resumen.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5760
      Top = 360
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2280
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptA2988IIB5Resumen.frx":1684
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2280
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptA2988IIB5Resumen.frx":1734
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1500
      Top = 885
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1440
      Top = 360
      Width = 765
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 3120
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptA2988IIB5Resumen.frx":17E4
  End
End

Attribute VB_Name = "rptA2988IIB5Resumen"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560A88
  bStruc(60) As Byte ' String fields: 15
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A12F10
  'Data Table: 4B2668
  loc_A12ED8: FLdPr Me
  loc_A12EDB: VCallAd Control_ID_statusBar
  loc_A12EDE: FStAdFunc var_88
  loc_A12EE1: FLdPr var_88
  loc_A12EE4: LateIdLdVar var_98 DispID_1 0
  loc_A12EEB: CStrVarTmp
  loc_A12EEC: CVarStr var_A8
  loc_A12EEF: PopAdLdVar
  loc_A12EF0: FLdPr Me
  loc_A12EF3: VCallAd Control_ID_statusBar
  loc_A12EF6: FStAdFunc var_BC
  loc_A12EF9: FLdPr var_BC
  loc_A12EFC: LateIdSt
  loc_A12F01: FFreeAd var_88 = ""
  loc_A12F08: FFreeVar var_98 = ""
  loc_A12F0F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E2CBC
  'Data Table: 4B2668
  loc_9E2CA0: LitI2_Byte &HFF
  loc_9E2CA2: LitI2_Byte 0
  loc_9E2CA4: ILdRf Me
  loc_9E2CA7: CastAd
  loc_9E2CAA: FStAdFunc var_88
  loc_9E2CAD: FLdRfVar var_88
  loc_9E2CB0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2CB5: FFree1Ad var_88
  loc_9E2CB8: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CD1E4
  'Data Table: 4B2668
  loc_9CD1CC: LitI2_Byte 0
  loc_9CD1CE: ILdRf Me
  loc_9CD1D1: CastAd
  loc_9CD1D4: FStAdFunc var_88
  loc_9CD1D7: FLdRfVar var_88
  loc_9CD1DA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CD1DF: FFree1Ad var_88
  loc_9CD1E2: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BEFB8
  'Data Table: 4B2668
  loc_9BEFA4: FLdPr Me
  loc_9BEFA7: VCallAd Control_ID_DesdeMsk
  loc_9BEFAA: CVarAd
  loc_9BEFAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEFB3: FFree1Var var_94 = ""
  loc_9BEFB6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A63B60
  'Data Table: 4B2668
  loc_A63B04: FLdPr Me
  loc_A63B07: VCallAd Control_ID_DesdeMsk
  loc_A63B0A: FStAdFunc var_88
  loc_A63B0D: FLdPr var_88
  loc_A63B10: LateIdLdVar var_98 DispID_15 0
  loc_A63B17: CStrVarTmp
  loc_A63B18: FStStrNoPop var_9C
  loc_A63B1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63B20: FStStrNoPop var_A0
  loc_A63B23: FLdPr Me
  loc_A63B26: MemStStrCopy
  loc_A63B2A: FFreeStr var_9C = ""
  loc_A63B31: FFree1Ad var_88
  loc_A63B34: FFree1Var var_98 = ""
  loc_A63B37: FLdPr Me
  loc_A63B3A: VCallAd Control_ID_DesdeMsk
  loc_A63B3D: FStAdFuncNoPop
  loc_A63B40: CastAd
  loc_A63B43: FStAdFunc var_A4
  loc_A63B46: FLdRfVar var_A4
  loc_A63B49: FLdPr Me
  loc_A63B4C: MemLdStr global_96
  loc_A63B4F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63B54: IStI2 arg_C
  loc_A63B57: FFreeAd var_88 = ""
  loc_A63B5E: ExitProcHresult
End Function

Private Sub DesdeFechaCmd_Click() 'A0F0E4
  'Data Table: 4B2668
  loc_A0F0A8: LitVar_Missing var_A4
  loc_A0F0AB: PopAdLdVar
  loc_A0F0AC: LitVarI4
  loc_A0F0B4: PopAdLdVar
  loc_A0F0B5: ImpAdLdRf MemVar_D930A4
  loc_A0F0B8: NewIfNullPr frmCalendario
  loc_A0F0BB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0F0C0: ImpAdLdRf MemVar_D93028
  loc_A0F0C3: CDargRef
  loc_A0F0C7: FLdPr Me
  loc_A0F0CA: VCallAd Control_ID_DesdeMsk
  loc_A0F0CD: FStAdFunc var_A8
  loc_A0F0D0: FLdPr var_A8
  loc_A0F0D3: LateIdSt
  loc_A0F0D8: FFree1Ad var_A8
  loc_A0F0DB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0F0E0: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0F1C4
  'Data Table: 4B2668
  loc_A0F188: LitVar_Missing var_A4
  loc_A0F18B: PopAdLdVar
  loc_A0F18C: LitVarI4
  loc_A0F194: PopAdLdVar
  loc_A0F195: ImpAdLdRf MemVar_D930A4
  loc_A0F198: NewIfNullPr frmCalendario
  loc_A0F19B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0F1A0: ImpAdLdRf MemVar_D93028
  loc_A0F1A3: CDargRef
  loc_A0F1A7: FLdPr Me
  loc_A0F1AA: VCallAd Control_ID_HastaMsk
  loc_A0F1AD: FStAdFunc var_A8
  loc_A0F1B0: FLdPr var_A8
  loc_A0F1B3: LateIdSt
  loc_A0F1B8: FFree1Ad var_A8
  loc_A0F1BB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0F1C0: ExitProcHresult
  loc_A0F1C1: FStStrNoPop var_14C
End Sub

Private Sub cmdSalir_Click() 'A05574
  'Data Table: 4B2668
  loc_A05544: LitVarStr var_94, "Cerrando..."
  loc_A05549: PopAdLdVar
  loc_A0554A: FLdPr Me
  loc_A0554D: VCallAd Control_ID_statusBar
  loc_A05550: FStAdFunc var_A8
  loc_A05553: FLdPr var_A8
  loc_A05556: LateIdSt
  loc_A0555B: FFree1Ad var_A8
  loc_A0555E: ILdRf Me
  loc_A05561: FStAdNoPop
  loc_A05565: ImpAdLdRf MemVar_D9C5D8
  loc_A05568: NewIfNullPr Global
  loc_A0556B: Global.Unload from_stack_1
  loc_A05570: FFree1Ad var_A8
  loc_A05573: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2B7C
  'Data Table: 4B2668
  loc_9E2B60: LitI2_Byte 0
  loc_9E2B62: PopTmpLdAd2 var_8A
  loc_9E2B65: ILdRf Me
  loc_9E2B68: CastAd
  loc_9E2B6B: FStAdFunc var_88
  loc_9E2B6E: FLdRfVar var_88
  loc_9E2B71: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2B76: FFree1Ad var_88
  loc_9E2B79: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BEF70
  'Data Table: 4B2668
  loc_9BEF5C: FLdPr Me
  loc_9BEF5F: VCallAd Control_ID_HastaMsk
  loc_9BEF62: CVarAd
  loc_9BEF66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEF6B: FFree1Var var_94 = ""
  loc_9BEF6E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'ACAEBC
  'Data Table: 4B2668
  loc_ACADBC: FLdPr Me
  loc_ACADBF: VCallAd Control_ID_HastaMsk
  loc_ACADC2: FStAdFunc var_88
  loc_ACADC5: FLdPr var_88
  loc_ACADC8: LateIdLdVar var_98 DispID_15 0
  loc_ACADCF: CStrVarTmp
  loc_ACADD0: FStStrNoPop var_9C
  loc_ACADD3: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACADD8: FStStrNoPop var_A0
  loc_ACADDB: FLdPr Me
  loc_ACADDE: MemStStrCopy
  loc_ACADE2: FFreeStr var_9C = ""
  loc_ACADE9: FFree1Ad var_88
  loc_ACADEC: FFree1Var var_98 = ""
  loc_ACADEF: FLdPr Me
  loc_ACADF2: VCallAd Control_ID_HastaMsk
  loc_ACADF5: FStAdFuncNoPop
  loc_ACADF8: CastAd
  loc_ACADFB: FStAdFunc var_A4
  loc_ACADFE: FLdRfVar var_A4
  loc_ACAE01: FLdPr Me
  loc_ACAE04: MemLdStr global_96
  loc_ACAE07: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACAE0C: IStI2 arg_C
  loc_ACAE0F: FFreeAd var_88 = ""
  loc_ACAE16: ILdI2 arg_C
  loc_ACAE19: NotI4
  loc_ACAE1A: BranchF loc_ACAEBA
  loc_ACAE1D: FLdPr Me
  loc_ACAE20: VCallAd Control_ID_HastaMsk
  loc_ACAE23: FStAdFunc var_88
  loc_ACAE26: FLdPr var_88
  loc_ACAE29: LateIdLdVar var_98 DispID_15 0
  loc_ACAE30: CStrVarTmp
  loc_ACAE31: CVarStr var_B4
  loc_ACAE34: FLdRfVar var_C4
  loc_ACAE37: ImpAdCallFPR4  = Year()
  loc_ACAE3C: FLdRfVar var_C4
  loc_ACAE3F: FLdPr Me
  loc_ACAE42: VCallAd Control_ID_DesdeMsk
  loc_ACAE45: FStAdFunc var_A4
  loc_ACAE48: FLdPr var_A4
  loc_ACAE4B: LateIdLdVar var_D4 DispID_15 0
  loc_ACAE52: CStrVarTmp
  loc_ACAE53: CVarStr var_E4
  loc_ACAE56: FLdRfVar var_F4
  loc_ACAE59: ImpAdCallFPR4  = Year()
  loc_ACAE5E: FLdRfVar var_F4
  loc_ACAE61: NeVarBool
  loc_ACAE63: FFreeAd var_88 = ""
  loc_ACAE6A: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_ACAE79: BranchF loc_ACAE89
  loc_ACAE7C: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_ACAE7F: FLdPr Me
  loc_ACAE82: MemStStrCopy
  loc_ACAE86: Branch loc_ACAE93
  loc_ACAE89: LitStr vbNullString
  loc_ACAE8C: FLdPr Me
  loc_ACAE8F: MemStStrCopy
  loc_ACAE93: FLdPr Me
  loc_ACAE96: VCallAd Control_ID_HastaMsk
  loc_ACAE99: FStAdFuncNoPop
  loc_ACAE9C: CastAd
  loc_ACAE9F: FStAdFunc var_A4
  loc_ACAEA2: FLdRfVar var_A4
  loc_ACAEA5: FLdPr Me
  loc_ACAEA8: MemLdStr global_96
  loc_ACAEAB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACAEB0: IStI2 arg_C
  loc_ACAEB3: FFreeAd var_88 = ""
  loc_ACAEBA: ExitProcHresult
End Function

Private Sub cmdNueva_Click() 'AEF1CC
  'Data Table: 4B2668
  loc_AEF054: LitI2_Byte 0
  loc_AEF056: FLdPr Me
  loc_AEF059: MemStI2 bGenerado
  loc_AEF05C: LitI2_Byte &HFF
  loc_AEF05E: FLdPr Me
  loc_AEF061: MemStI2 bLogos
  loc_AEF064: LitI2_Byte 0
  loc_AEF066: ILdRf Me
  loc_AEF069: CastAd
  loc_AEF06C: FStAdFunc var_88
  loc_AEF06F: FLdRfVar var_88
  loc_AEF072: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AEF077: FFree1Ad var_88
  loc_AEF07A: LitI2_Byte 0
  loc_AEF07C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEF081: CVarDate var_A8
  loc_AEF085: FLdRfVar var_B8
  loc_AEF088: ImpAdCallFPR4  = Year()
  loc_AEF08D: LitI2_Byte 0
  loc_AEF08F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEF094: CVarDate var_D8
  loc_AEF098: FLdRfVar var_E8
  loc_AEF09B: ImpAdCallFPR4  = Month()
  loc_AEF0A0: LitI2_Byte 1
  loc_AEF0A2: FLdRfVar var_E8
  loc_AEF0A5: LitVarI2 var_F8, 1
  loc_AEF0AA: SubVar var_108
  loc_AEF0AE: CI2Var
  loc_AEF0AF: FLdRfVar var_B8
  loc_AEF0B2: CI2Var
  loc_AEF0B3: FLdRfVar var_118
  loc_AEF0B6: ImpAdCallFPR4  = DateSerial(, , )
  loc_AEF0BB: FLdRfVar var_118
  loc_AEF0BE: CStrVarTmp
  loc_AEF0BF: CVarStr var_128
  loc_AEF0C2: PopAdLdVar
  loc_AEF0C3: FLdPr Me
  loc_AEF0C6: VCallAd Control_ID_DesdeMsk
  loc_AEF0C9: FStAdFunc var_88
  loc_AEF0CC: FLdPr var_88
  loc_AEF0CF: LateIdSt
  loc_AEF0D4: FFree1Ad var_88
  loc_AEF0D7: FFreeVar var_A8 = "": var_D8 = "": var_E8 = "": var_B8 = "": var_118 = ""
  loc_AEF0E6: FLdPr Me
  loc_AEF0E9: VCallAd Control_ID_DesdeMsk
  loc_AEF0EC: FStAdFunc var_88
  loc_AEF0EF: FLdPr var_88
  loc_AEF0F2: LateIdLdVar var_A8 DispID_15 0
  loc_AEF0F9: CStrVarTmp
  loc_AEF0FA: CVarStr var_B8
  loc_AEF0FD: FLdRfVar var_D8
  loc_AEF100: ImpAdCallFPR4  = Year()
  loc_AEF105: FLdPr Me
  loc_AEF108: VCallAd Control_ID_DesdeMsk
  loc_AEF10B: FStAdFunc var_13C
  loc_AEF10E: FLdPr var_13C
  loc_AEF111: LateIdLdVar var_E8 DispID_15 0
  loc_AEF118: CStrVarTmp
  loc_AEF119: CVarStr var_108
  loc_AEF11C: FLdRfVar var_118
  loc_AEF11F: ImpAdCallFPR4  = Month()
  loc_AEF124: LitI2_Byte 1
  loc_AEF126: FLdRfVar var_118
  loc_AEF129: LitVarI2 var_98, 1
  loc_AEF12E: AddVar var_128
  loc_AEF132: CI2Var
  loc_AEF133: FLdRfVar var_D8
  loc_AEF136: CI2Var
  loc_AEF137: FLdRfVar var_14C
  loc_AEF13A: ImpAdCallFPR4  = DateSerial(, , )
  loc_AEF13F: FLdRfVar var_14C
  loc_AEF142: LitVarI2 var_C8, 1
  loc_AEF147: SubVar var_15C
  loc_AEF14B: CStrVarTmp
  loc_AEF14C: CVarStr var_16C
  loc_AEF14F: PopAdLdVar
  loc_AEF150: FLdPr Me
  loc_AEF153: VCallAd Control_ID_HastaMsk
  loc_AEF156: FStAdFunc var_170
  loc_AEF159: FLdPr var_170
  loc_AEF15C: LateIdSt
  loc_AEF161: FFreeAd var_88 = "": var_13C = ""
  loc_AEF16A: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_118 = "": var_D8 = "": var_128 = "": var_14C = ""
  loc_AEF17F: LitI4 0
  loc_AEF184: CI2I4
  loc_AEF185: FLdPr Me
  loc_AEF188: VCallAd Control_ID_SepararOpt
  loc_AEF18B: FStAdFunc var_88
  loc_AEF18E: FLdPr var_88
  loc_AEF191: Me.Value = from_stack_1
  loc_AEF196: FFree1Ad var_88
  loc_AEF199: LitI2_Byte &HFF
  loc_AEF19B: FLdPr Me
  loc_AEF19E: VCallAd Control_ID_OptRentas
  loc_AEF1A1: FStAdFunc var_88
  loc_AEF1A4: FLdPr var_88
  loc_AEF1A7: Me.Value = from_stack_1b
  loc_AEF1AC: FFree1Ad var_88
  loc_AEF1AF: Call HabilitarCriterio()
  loc_AEF1B4: ILdRf Me
  loc_AEF1B7: CastAd
  loc_AEF1BA: FStAdFunc var_88
  loc_AEF1BD: FLdRfVar var_88
  loc_AEF1C0: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AEF1C5: FFree1Ad var_88
  loc_AEF1C8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CD230
  'Data Table: 4B2668
  loc_9CD218: ILdRf Me
  loc_9CD21B: CastAd
  loc_9CD21E: FStAdFunc var_88
  loc_9CD221: FLdRfVar var_88
  loc_9CD224: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CD229: FFree1Ad var_88
  loc_9CD22C: ExitProcHresult
End Sub

Private Sub Form_Load() '9E2C6C
  'Data Table: 4B2668
  loc_9E2C50: ILdRf Me
  loc_9E2C53: CastAd
  loc_9E2C56: FStAdFunc var_88
  loc_9E2C59: FLdRfVar var_88
  loc_9E2C5C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E2C61: FFree1Ad var_88
  loc_9E2C64: Call cmdNueva_Click()
  loc_9E2C69: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD0B4
  'Data Table: 4B2668
  loc_9CD09C: FLdPr Me
  loc_9CD09F: VCallAd Control_ID_wbbReporte
  loc_9CD0A2: FStAdFunc var_88
  loc_9CD0A5: FLdRfVar var_88
  loc_9CD0A8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD0AD: FFree1Ad var_88
  loc_9CD0B0: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4B36FC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B370B
  bGenerado = Value
End Sub

Public Function bLogosGet() '4B371A
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4B3729
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A80EF0
  'Data Table: 4B2668
  loc_A80E7C: LitI4 0
  loc_A80E81: LitI4 4
  loc_A80E86: FLdRfVar var_88
  loc_A80E89: Redim
  loc_A80E93: FLdPr Me
  loc_A80E96: VCallAd Control_ID_DesdeMsk
  loc_A80E99: CVarAd
  loc_A80E9D: ParmAry1St
  loc_A80EA3: FLdPr Me
  loc_A80EA6: VCallAd Control_ID_DesdeFechaCmd
  loc_A80EA9: CVarAd
  loc_A80EAD: ParmAry1St
  loc_A80EB3: FLdPr Me
  loc_A80EB6: VCallAd Control_ID_HastaMsk
  loc_A80EB9: CVarAd
  loc_A80EBD: ParmAry1St
  loc_A80EC3: FLdPr Me
  loc_A80EC6: VCallAd Control_ID_HastaFechaCmd
  loc_A80EC9: CVarAd
  loc_A80ECD: ParmAry1St
  loc_A80ED3: FLdPr Me
  loc_A80ED6: VCallAd Control_ID_SepararOpt
  loc_A80ED9: CVarAd
  loc_A80EDD: ParmAry1St
  loc_A80EE3: FLdRfVar var_88
  loc_A80EE6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A80EEB: FLdRfVar var_88
  loc_A80EEE: Erase
  loc_A80EEF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C99070
  'Data Table: 4B2668
  loc_C97750: LitI2_Byte 0
  loc_C97752: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C97757: FStFPR8 var_98
  loc_C9775A: FLdPr Me
  loc_C9775D: MemLdI2 bGenerado
  loc_C97760: BranchF loc_C97764
  loc_C97763: ExitProcHresult
  loc_C97764: LitVarStr var_A8, "Generando reporte..."
  loc_C97769: PopAdLdVar
  loc_C9776A: FLdPr Me
  loc_C9776D: VCallAd Control_ID_statusBar
  loc_C97770: FStAdFunc var_BC
  loc_C97773: FLdPr var_BC
  loc_C97776: LateIdSt
  loc_C9777B: FFree1Ad var_BC
  loc_C9777E: LitI4 &HB
  loc_C97783: CI2I4
  loc_C97784: FLdPr Me
  loc_C97787: Me.MousePointer = from_stack_1
  loc_C9778C: LitStr "192.168.40.54"
  loc_C9778F: LitStr "192.168.40.54"
  loc_C97792: EqStr
  loc_C97794: BranchF loc_C977E5
  loc_C97797: ImpAdLdI4 MemVar_D9302C
  loc_C9779A: LitStr "root"
  loc_C9779D: NeStr
  loc_C9779F: ImpAdLdI4 MemVar_D9302C
  loc_C977A2: LitStr "sonia"
  loc_C977A5: NeStr
  loc_C977A7: AndI4
  loc_C977A8: ImpAdLdI4 MemVar_D9302C
  loc_C977AB: LitStr "prueba"
  loc_C977AE: NeStr
  loc_C977B0: AndI4
  loc_C977B1: BranchF loc_C977E5
  loc_C977B4: FLdRfVar var_98
  loc_C977B7: ImpAdCallI2 Proc_18_4_AAC868()
  loc_C977BC: FStStrNoPop var_C0
  loc_C977BF: FLdPr Me
  loc_C977C2: MemStStrCopy
  loc_C977C6: FFree1Str var_C0
  loc_C977C9: FLdPr Me
  loc_C977CC: MemLdStr global_96
  loc_C977CF: LitStr vbNullString
  loc_C977D2: NeStr
  loc_C977D4: BranchF loc_C977E5
  loc_C977D7: FLdPr Me
  loc_C977DA: MemLdStr global_96
  loc_C977DD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C977E2: Branch loc_C99044
  loc_C977E5: LitI2_Byte 0
  loc_C977E7: PopTmpLdAd2 var_C2
  loc_C977EA: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C977EF: FLdPr Me
  loc_C977F2: MemLdStr global_96
  loc_C977F5: LitStr vbNullString
  loc_C977F8: NeStr
  loc_C977FA: BranchF loc_C97800
  loc_C977FD: Branch loc_C99044
  loc_C97800: LitI2_Byte 0
  loc_C97802: PopTmpLdAd2 var_C2
  loc_C97805: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C9780A: FLdPr Me
  loc_C9780D: MemLdStr global_96
  loc_C97810: LitStr vbNullString
  loc_C97813: NeStr
  loc_C97815: BranchF loc_C9781B
  loc_C97818: Branch loc_C99044
  loc_C9781B: FLdPr Me
  loc_C9781E: VCallAd Control_ID_DesdeMsk
  loc_C97821: FStAdFunc var_BC
  loc_C97824: FLdPr var_BC
  loc_C97827: LateIdLdVar var_D4 DispID_15 0
  loc_C9782E: PopAd
  loc_C97830: LitI4 1
  loc_C97835: LitI4 1
  loc_C9783A: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C9783F: FStVarCopyObj var_F4
  loc_C97842: FLdRfVar var_F4
  loc_C97845: FLdRfVar var_D4
  loc_C97848: CStrVarTmp
  loc_C97849: CVarStr var_E4
  loc_C9784C: ImpAdCallI2 Format$(, )
  loc_C97851: FStStr var_88
  loc_C97854: FFree1Ad var_BC
  loc_C97857: FFreeVar var_D4 = "": var_E4 = ""
  loc_C97860: FLdPr Me
  loc_C97863: VCallAd Control_ID_HastaMsk
  loc_C97866: FStAdFunc var_BC
  loc_C97869: FLdPr var_BC
  loc_C9786C: LateIdLdVar var_D4 DispID_15 0
  loc_C97873: PopAd
  loc_C97875: LitI4 1
  loc_C9787A: LitI4 1
  loc_C9787F: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C97884: FStVarCopyObj var_F4
  loc_C97887: FLdRfVar var_F4
  loc_C9788A: FLdRfVar var_D4
  loc_C9788D: CStrVarTmp
  loc_C9788E: CVarStr var_E4
  loc_C97891: ImpAdCallI2 Format$(, )
  loc_C97896: FStStr var_8C
  loc_C97899: FFree1Ad var_BC
  loc_C9789C: FFreeVar var_D4 = "": var_E4 = ""
  loc_C978A5: LitStr "Municipalidad de Guaymallén"
  loc_C978A8: LitStr "Municipalidad de Guaymallén"
  loc_C978AB: NeStr
  loc_C978AD: BranchF loc_C9822C
  loc_C978B0: FLdPr Me
  loc_C978B3: MemLdRfVar from_stack_1.global_76
  loc_C978B6: NewIfNullAd
  loc_C978B9: FStAd var_F8 
  loc_C978BD: LitStr "Municipalidad de Guaymallén"
  loc_C978C0: LitStr "Municipalidad de Malargüe"
  loc_C978C3: EqStr
  loc_C978C5: BranchF loc_C97A4B
  loc_C978C8: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C978CB: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C978CE: ConcatStr
  loc_C978CF: FStStrNoPop var_C0
  loc_C978D2: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C978D5: ConcatStr
  loc_C978D6: FStStrNoPop var_FC
  loc_C978D9: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_C978DC: ConcatStr
  loc_C978DD: FStStrNoPop var_100
  loc_C978E0: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C978E3: ConcatStr
  loc_C978E4: FStStrNoPop var_104
  loc_C978E7: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C978EA: ConcatStr
  loc_C978EB: CVarStr var_E4
  loc_C978EE: FLdRfVar var_88
  loc_C978F1: CVarRef
  loc_C978F6: FLdRfVar var_D4
  loc_C978F9: ImpAdCallFPR4  = Year()
  loc_C978FE: FLdRfVar var_D4
  loc_C97901: ConcatVar var_F4
  loc_C97905: LitVarStr var_B8, " AND concepto.ActiConc <> ''"
  loc_C9790A: ConcatVar var_114
  loc_C9790E: LitVarStr var_124, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C97913: ConcatVar var_134
  loc_C97917: ILdRf var_88
  loc_C9791A: CVarStr var_144
  loc_C9791D: ConcatVar var_154
  loc_C97921: LitVarStr var_164, "' AND '"
  loc_C97926: ConcatVar var_174
  loc_C9792A: ILdRf var_8C
  loc_C9792D: CVarStr var_184
  loc_C97930: ConcatVar var_194
  loc_C97934: LitVarStr var_1A4, "'"
  loc_C97939: ConcatVar var_1B4
  loc_C9793D: LitVarStr var_1C4, " GROUP BY ActiConc) UNION ALL"
  loc_C97942: ConcatVar var_1D4
  loc_C97946: LitVarStr var_1E4, " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C9794B: ConcatVar var_1F4
  loc_C9794F: LitVarStr var_204, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C97954: ConcatVar var_214
  loc_C97958: LitVarStr var_224, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C9795D: ConcatVar var_234
  loc_C97961: FLdRfVar var_88
  loc_C97964: CVarRef
  loc_C97969: FLdRfVar var_254
  loc_C9796C: ImpAdCallFPR4  = Year()
  loc_C97971: FLdRfVar var_254
  loc_C97974: ConcatVar var_264
  loc_C97978: LitVarStr var_274, " AND concepto.ActiConc <> ''"
  loc_C9797D: ConcatVar var_284
  loc_C97981: LitVarStr var_294, " WHERE ctacte.FealCtct < '"
  loc_C97986: ConcatVar var_2A4
  loc_C9798A: ILdRf var_88
  loc_C9798D: CVarStr var_2B4
  loc_C97990: ConcatVar var_2C4
  loc_C97994: LitVarStr var_2D4, "' GROUP BY ActiConc) UNION ALL"
  loc_C97999: ConcatVar var_2E4
  loc_C9799D: LitVarStr var_2F4, " (SELECT histoctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C979A2: ConcatVar var_304
  loc_C979A6: LitVarStr var_314, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct,   000000000.00 as CobrCtct"
  loc_C979AB: ConcatVar var_324
  loc_C979AF: LitVarStr var_334, " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_C979B4: ConcatVar var_344
  loc_C979B8: FLdRfVar var_88
  loc_C979BB: CVarRef
  loc_C979C0: FLdRfVar var_364
  loc_C979C3: ImpAdCallFPR4  = Year()
  loc_C979C8: FLdRfVar var_364
  loc_C979CB: ConcatVar var_374
  loc_C979CF: LitVarStr var_384, " AND concepto.ActiConc <> ''"
  loc_C979D4: ConcatVar var_394
  loc_C979D8: LitVarStr var_3A4, " WHERE histoctacte.FealCtct < '"
  loc_C979DD: ConcatVar var_3B4
  loc_C979E1: ILdRf var_88
  loc_C979E4: CVarStr var_3C4
  loc_C979E7: ConcatVar var_3D4
  loc_C979EB: LitVarStr var_3E4, "' GROUP BY ActiConc); CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_C979F0: ConcatVar var_3F4
  loc_C979F4: CStrVarVal var_3F8
  loc_C979F8: FLdPr var_F8
  loc_C979FB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C97A00: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C97A0D: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = ""
  loc_C97A48: Branch loc_C97B6D
  loc_C97A4B: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C97A4E: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C97A51: ConcatStr
  loc_C97A52: FStStrNoPop var_C0
  loc_C97A55: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C97A58: ConcatStr
  loc_C97A59: FStStrNoPop var_FC
  loc_C97A5C: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_C97A5F: ConcatStr
  loc_C97A60: FStStrNoPop var_100
  loc_C97A63: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C97A66: ConcatStr
  loc_C97A67: FStStrNoPop var_104
  loc_C97A6A: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C97A6D: ConcatStr
  loc_C97A6E: CVarStr var_E4
  loc_C97A71: FLdRfVar var_88
  loc_C97A74: CVarRef
  loc_C97A79: FLdRfVar var_D4
  loc_C97A7C: ImpAdCallFPR4  = Year()
  loc_C97A81: FLdRfVar var_D4
  loc_C97A84: ConcatVar var_F4
  loc_C97A88: LitVarStr var_B8, " AND concepto.ActiConc <> ''"
  loc_C97A8D: ConcatVar var_114
  loc_C97A91: LitVarStr var_124, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C97A96: ConcatVar var_134
  loc_C97A9A: ILdRf var_88
  loc_C97A9D: CVarStr var_144
  loc_C97AA0: ConcatVar var_154
  loc_C97AA4: LitVarStr var_164, "' AND '"
  loc_C97AA9: ConcatVar var_174
  loc_C97AAD: ILdRf var_8C
  loc_C97AB0: CVarStr var_184
  loc_C97AB3: ConcatVar var_194
  loc_C97AB7: LitVarStr var_1A4, "'"
  loc_C97ABC: ConcatVar var_1B4
  loc_C97AC0: LitVarStr var_1C4, " GROUP BY ActiConc) UNION ALL"
  loc_C97AC5: ConcatVar var_1D4
  loc_C97AC9: LitVarStr var_1E4, " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C97ACE: ConcatVar var_1F4
  loc_C97AD2: LitVarStr var_204, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C97AD7: ConcatVar var_214
  loc_C97ADB: LitVarStr var_224, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C97AE0: ConcatVar var_234
  loc_C97AE4: FLdRfVar var_88
  loc_C97AE7: CVarRef
  loc_C97AEC: FLdRfVar var_254
  loc_C97AEF: ImpAdCallFPR4  = Year()
  loc_C97AF4: FLdRfVar var_254
  loc_C97AF7: ConcatVar var_264
  loc_C97AFB: LitVarStr var_274, " AND concepto.ActiConc <> ''"
  loc_C97B00: ConcatVar var_284
  loc_C97B04: LitVarStr var_294, " WHERE ctacte.FealCtct < '"
  loc_C97B09: ConcatVar var_2A4
  loc_C97B0D: ILdRf var_88
  loc_C97B10: CVarStr var_2B4
  loc_C97B13: ConcatVar var_2C4
  loc_C97B17: LitVarStr var_2D4, "' GROUP BY ActiConc);"
  loc_C97B1C: ConcatVar var_2E4
  loc_C97B20: LitVarStr var_2F4, " CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_C97B25: ConcatVar var_304
  loc_C97B29: CStrVarVal var_3F8
  loc_C97B2D: FLdPr var_F8
  loc_C97B30: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C97B35: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C97B42: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = ""
  loc_C97B6D: LitStr "SELECT tribu.ActiConc, DetaCuco, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C97B70: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C97B73: ConcatStr
  loc_C97B74: FStStrNoPop var_C0
  loc_C97B77: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct"
  loc_C97B7A: ConcatStr
  loc_C97B7B: FStStrNoPop var_FC
  loc_C97B7E: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_C97B81: ConcatStr
  loc_C97B82: CVarStr var_E4
  loc_C97B85: FLdRfVar var_88
  loc_C97B88: CVarRef
  loc_C97B8D: FLdRfVar var_D4
  loc_C97B90: ImpAdCallFPR4  = Year()
  loc_C97B95: FLdRfVar var_D4
  loc_C97B98: ConcatVar var_F4
  loc_C97B9C: LitVarStr var_B8, " AND c.CodiCuco = tribu.ActiConc"
  loc_C97BA1: ConcatVar var_114
  loc_C97BA5: LitVarStr var_124, " GROUP BY tribu.ActiConc ORDER BY ActiConc"
  loc_C97BAA: ConcatVar var_134
  loc_C97BAE: CStrVarVal var_100
  loc_C97BB2: FLdPr var_F8
  loc_C97BB5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C97BBA: FFreeStr var_C0 = "": var_FC = ""
  loc_C97BC3: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = ""
  loc_C97BD0: FLdRfVar var_3FC
  loc_C97BD3: FLdPr var_F8
  loc_C97BD6: from_stack_1 = clsctacte.RecordCount
  loc_C97BDB: ILdRf var_3FC
  loc_C97BDE: LitI4 0
  loc_C97BE3: EqI4
  loc_C97BE4: BranchF loc_C97BF2
  loc_C97BE7: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C97BEA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C97BEF: Branch loc_C99044
  loc_C97BF2: LitI4 1
  loc_C97BF7: LitI4 1
  loc_C97BFC: FLdPr Me
  loc_C97BFF: MemLdRfVar from_stack_1.global_92
  loc_C97C02: Redim
  loc_C97C0C: LitI4 1
  loc_C97C11: FLdRfVar var_3FC
  loc_C97C14: FLdPr var_F8
  loc_C97C17: from_stack_1 = clsctacte.RecordCount
  loc_C97C1C: ILdRf var_3FC
  loc_C97C1F: FLdPr Me
  loc_C97C22: MemLdRfVar from_stack_1.global_84
  loc_C97C25: Redim
  loc_C97C2F: FLdPr var_F8
  loc_C97C32: Call clsctacte.MoveFirst()
  loc_C97C37: LitI4 1
  loc_C97C3C: FLdPr Me
  loc_C97C3F: MemLdRfVar from_stack_1.global_88
  loc_C97C42: FLdPr Me
  loc_C97C45: MemLdStr global_84
  loc_C97C48: LitI2_Byte 1
  loc_C97C4A: FnUBound
  loc_C97C4C: ForI4 var_404
  loc_C97C52: FLdRfVar var_D4
  loc_C97C55: FLdPr var_F8
  loc_C97C58: from_stack_1 = clsctacte.ActiConc
  loc_C97C5D: LitI2_Byte 0
  loc_C97C5F: LitVar_Missing var_E4
  loc_C97C62: LitI2_Byte 0
  loc_C97C64: FLdVar var_D4
  loc_C97C68: FLdPr Me
  loc_C97C6B: MemLdStr global_88
  loc_C97C6E: FLdPr Me
  loc_C97C71: MemLdStr global_84
  loc_C97C74: AryLock
  loc_C97C77: Ary1LdPr
  loc_C97C78: MemLdRfVar from_stack_1.global_0
  loc_C97C7B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97C80: AryUnlock
  loc_C97C83: FFreeVar var_D4 = ""
  loc_C97C8A: FLdRfVar var_D4
  loc_C97C8D: FLdPr var_F8
  loc_C97C90: from_stack_1 = clsctacte.DetaCuco
  loc_C97C95: LitI2_Byte 0
  loc_C97C97: LitVar_Missing var_E4
  loc_C97C9A: LitI2_Byte 0
  loc_C97C9C: FLdVar var_D4
  loc_C97CA0: FLdPr Me
  loc_C97CA3: MemLdStr global_88
  loc_C97CA6: FLdPr Me
  loc_C97CA9: MemLdStr global_84
  loc_C97CAC: AryLock
  loc_C97CAF: Ary1LdPr
  loc_C97CB0: MemLdRfVar from_stack_1.global_8
  loc_C97CB3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97CB8: AryUnlock
  loc_C97CBB: FFreeVar var_D4 = ""
  loc_C97CC2: FLdRfVar var_D4
  loc_C97CC5: FLdPr var_F8
  loc_C97CC8: from_stack_1 = clsctacte.SainCtct
  loc_C97CCD: LitI2_Byte 0
  loc_C97CCF: LitI4 1
  loc_C97CD4: FLdPr Me
  loc_C97CD7: MemLdStr global_92
  loc_C97CDA: AryLock
  loc_C97CDD: Ary1LdPr
  loc_C97CDE: MemLdRfVar from_stack_1.global_12
  loc_C97CE1: CVarRef
  loc_C97CE6: LitI2_Byte &HFF
  loc_C97CE8: FLdVar var_D4
  loc_C97CEC: FLdPr Me
  loc_C97CEF: MemLdStr global_88
  loc_C97CF2: FLdPr Me
  loc_C97CF5: MemLdStr global_84
  loc_C97CF8: AryLock
  loc_C97CFB: Ary1LdPr
  loc_C97CFC: MemLdRfVar from_stack_1.global_12
  loc_C97CFF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97D04: AryUnlock
  loc_C97D07: AryUnlock
  loc_C97D0A: FFree1Var var_D4 = ""
  loc_C97D0D: FLdRfVar var_D4
  loc_C97D10: FLdPr var_F8
  loc_C97D13: from_stack_1 = clsctacte.AforCtct
  loc_C97D18: LitI2_Byte 0
  loc_C97D1A: LitI4 1
  loc_C97D1F: FLdPr Me
  loc_C97D22: MemLdStr global_92
  loc_C97D25: AryLock
  loc_C97D28: Ary1LdPr
  loc_C97D29: MemLdRfVar from_stack_1.global_16
  loc_C97D2C: CVarRef
  loc_C97D31: LitI2_Byte &HFF
  loc_C97D33: FLdVar var_D4
  loc_C97D37: FLdPr Me
  loc_C97D3A: MemLdStr global_88
  loc_C97D3D: FLdPr Me
  loc_C97D40: MemLdStr global_84
  loc_C97D43: AryLock
  loc_C97D46: Ary1LdPr
  loc_C97D47: MemLdRfVar from_stack_1.global_16
  loc_C97D4A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97D4F: AryUnlock
  loc_C97D52: AryUnlock
  loc_C97D55: FFree1Var var_D4 = ""
  loc_C97D58: FLdRfVar var_414
  loc_C97D5B: FLdPr var_F8
  loc_C97D5E: from_stack_1 = clsctacte.DebeCtct
  loc_C97D63: LitI2_Byte 0
  loc_C97D65: LitI4 1
  loc_C97D6A: FLdPr Me
  loc_C97D6D: MemLdStr global_92
  loc_C97D70: AryLock
  loc_C97D73: Ary1LdPr
  loc_C97D74: MemLdRfVar from_stack_1.global_20
  loc_C97D77: CVarRef
  loc_C97D7C: LitI2_Byte &HFF
  loc_C97D7E: FLdFPR8 var_414
  loc_C97D81: CVarR8
  loc_C97D85: PopAdLdVar
  loc_C97D86: FLdPr Me
  loc_C97D89: MemLdStr global_88
  loc_C97D8C: FLdPr Me
  loc_C97D8F: MemLdStr global_84
  loc_C97D92: AryLock
  loc_C97D95: Ary1LdPr
  loc_C97D96: MemLdRfVar from_stack_1.global_20
  loc_C97D99: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97D9E: AryUnlock
  loc_C97DA1: AryUnlock
  loc_C97DA4: FLdRfVar var_414
  loc_C97DA7: FLdPr var_F8
  loc_C97DAA: from_stack_1 = clsctacte.CredCtct
  loc_C97DAF: LitI2_Byte 0
  loc_C97DB1: LitI4 1
  loc_C97DB6: FLdPr Me
  loc_C97DB9: MemLdStr global_92
  loc_C97DBC: AryLock
  loc_C97DBF: Ary1LdPr
  loc_C97DC0: MemLdRfVar from_stack_1.global_24
  loc_C97DC3: CVarRef
  loc_C97DC8: LitI2_Byte &HFF
  loc_C97DCA: FLdFPR8 var_414
  loc_C97DCD: CVarR8
  loc_C97DD1: PopAdLdVar
  loc_C97DD2: FLdPr Me
  loc_C97DD5: MemLdStr global_88
  loc_C97DD8: FLdPr Me
  loc_C97DDB: MemLdStr global_84
  loc_C97DDE: AryLock
  loc_C97DE1: Ary1LdPr
  loc_C97DE2: MemLdRfVar from_stack_1.global_24
  loc_C97DE5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97DEA: AryUnlock
  loc_C97DED: AryUnlock
  loc_C97DF0: FLdRfVar var_D4
  loc_C97DF3: FLdPr var_F8
  loc_C97DF6: from_stack_1 = clsctacte.PresCtct
  loc_C97DFB: LitI2_Byte 0
  loc_C97DFD: LitI4 1
  loc_C97E02: FLdPr Me
  loc_C97E05: MemLdStr global_92
  loc_C97E08: AryLock
  loc_C97E0B: Ary1LdPr
  loc_C97E0C: MemLdRfVar from_stack_1.global_28
  loc_C97E0F: CVarRef
  loc_C97E14: LitI2_Byte &HFF
  loc_C97E16: FLdVar var_D4
  loc_C97E1A: FLdPr Me
  loc_C97E1D: MemLdStr global_88
  loc_C97E20: FLdPr Me
  loc_C97E23: MemLdStr global_84
  loc_C97E26: AryLock
  loc_C97E29: Ary1LdPr
  loc_C97E2A: MemLdRfVar from_stack_1.global_28
  loc_C97E2D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97E32: AryUnlock
  loc_C97E35: AryUnlock
  loc_C97E38: FFree1Var var_D4 = ""
  loc_C97E3B: FLdRfVar var_D4
  loc_C97E3E: FLdPr var_F8
  loc_C97E41: from_stack_1 = clsctacte.CondCtct
  loc_C97E46: LitI2_Byte 0
  loc_C97E48: LitI4 1
  loc_C97E4D: FLdPr Me
  loc_C97E50: MemLdStr global_92
  loc_C97E53: AryLock
  loc_C97E56: Ary1LdPr
  loc_C97E57: MemLdRfVar from_stack_1.global_32
  loc_C97E5A: CVarRef
  loc_C97E5F: LitI2_Byte &HFF
  loc_C97E61: FLdVar var_D4
  loc_C97E65: FLdPr Me
  loc_C97E68: MemLdStr global_88
  loc_C97E6B: FLdPr Me
  loc_C97E6E: MemLdStr global_84
  loc_C97E71: AryLock
  loc_C97E74: Ary1LdPr
  loc_C97E75: MemLdRfVar from_stack_1.global_32
  loc_C97E78: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97E7D: AryUnlock
  loc_C97E80: AryUnlock
  loc_C97E83: FFree1Var var_D4 = ""
  loc_C97E86: FLdRfVar var_D4
  loc_C97E89: FLdPr var_F8
  loc_C97E8C: from_stack_1 = clsctacte.ExenCtct
  loc_C97E91: LitI2_Byte 0
  loc_C97E93: LitI4 1
  loc_C97E98: FLdPr Me
  loc_C97E9B: MemLdStr global_92
  loc_C97E9E: AryLock
  loc_C97EA1: Ary1LdPr
  loc_C97EA2: MemLdRfVar from_stack_1.global_36
  loc_C97EA5: CVarRef
  loc_C97EAA: LitI2_Byte &HFF
  loc_C97EAC: FLdVar var_D4
  loc_C97EB0: FLdPr Me
  loc_C97EB3: MemLdStr global_88
  loc_C97EB6: FLdPr Me
  loc_C97EB9: MemLdStr global_84
  loc_C97EBC: AryLock
  loc_C97EBF: Ary1LdPr
  loc_C97EC0: MemLdRfVar from_stack_1.global_36
  loc_C97EC3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97EC8: AryUnlock
  loc_C97ECB: AryUnlock
  loc_C97ECE: FFree1Var var_D4 = ""
  loc_C97ED1: FLdRfVar var_D4
  loc_C97ED4: FLdPr var_F8
  loc_C97ED7: from_stack_1 = clsctacte.DescCtct
  loc_C97EDC: LitI2_Byte 0
  loc_C97EDE: LitI4 1
  loc_C97EE3: FLdPr Me
  loc_C97EE6: MemLdStr global_92
  loc_C97EE9: AryLock
  loc_C97EEC: Ary1LdPr
  loc_C97EED: MemLdRfVar from_stack_1.global_40
  loc_C97EF0: CVarRef
  loc_C97EF5: LitI2_Byte &HFF
  loc_C97EF7: FLdVar var_D4
  loc_C97EFB: FLdPr Me
  loc_C97EFE: MemLdStr global_88
  loc_C97F01: FLdPr Me
  loc_C97F04: MemLdStr global_84
  loc_C97F07: AryLock
  loc_C97F0A: Ary1LdPr
  loc_C97F0B: MemLdRfVar from_stack_1.global_40
  loc_C97F0E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97F13: AryUnlock
  loc_C97F16: AryUnlock
  loc_C97F19: FFree1Var var_D4 = ""
  loc_C97F1C: FLdRfVar var_D4
  loc_C97F1F: FLdPr var_F8
  loc_C97F22: from_stack_1 = clsctacte.CobrCtct
  loc_C97F27: LitI2_Byte 0
  loc_C97F29: LitI4 1
  loc_C97F2E: FLdPr Me
  loc_C97F31: MemLdStr global_92
  loc_C97F34: AryLock
  loc_C97F37: Ary1LdPr
  loc_C97F38: MemLdRfVar from_stack_1.global_44
  loc_C97F3B: CVarRef
  loc_C97F40: LitI2_Byte &HFF
  loc_C97F42: FLdVar var_D4
  loc_C97F46: FLdPr Me
  loc_C97F49: MemLdStr global_88
  loc_C97F4C: FLdPr Me
  loc_C97F4F: MemLdStr global_84
  loc_C97F52: AryLock
  loc_C97F55: Ary1LdPr
  loc_C97F56: MemLdRfVar from_stack_1.global_44
  loc_C97F59: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97F5E: AryUnlock
  loc_C97F61: AryUnlock
  loc_C97F64: FFree1Var var_D4 = ""
  loc_C97F67: FLdRfVar var_D4
  loc_C97F6A: FLdPr var_F8
  loc_C97F6D: from_stack_1 = clsctacte.SafiCtct
  loc_C97F72: LitI2_Byte 0
  loc_C97F74: LitI4 1
  loc_C97F79: FLdPr Me
  loc_C97F7C: MemLdStr global_92
  loc_C97F7F: AryLock
  loc_C97F82: Ary1LdPr
  loc_C97F83: MemLdRfVar from_stack_1.global_48
  loc_C97F86: CVarRef
  loc_C97F8B: LitI2_Byte &HFF
  loc_C97F8D: FLdVar var_D4
  loc_C97F91: FLdPr Me
  loc_C97F94: MemLdStr global_88
  loc_C97F97: FLdPr Me
  loc_C97F9A: MemLdStr global_84
  loc_C97F9D: AryLock
  loc_C97FA0: Ary1LdPr
  loc_C97FA1: MemLdRfVar from_stack_1.global_48
  loc_C97FA4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C97FA9: AryUnlock
  loc_C97FAC: AryUnlock
  loc_C97FAF: FFree1Var var_D4 = ""
  loc_C97FB2: LitI2_Byte 1
  loc_C97FB4: PopTmpLdAd2 var_C2
  loc_C97FB7: FLdPr var_F8
  loc_C97FBA: Call clsctacte.Move(from_stack_1v)
  loc_C97FBF: FLdPr Me
  loc_C97FC2: MemLdRfVar from_stack_1.global_88
  loc_C97FC5: NextI4 var_404, loc_C97C52
  loc_C97FCA: LitI4 1
  loc_C97FCF: FLdPr Me
  loc_C97FD2: MemLdRfVar from_stack_1.global_88
  loc_C97FD5: FLdPr Me
  loc_C97FD8: MemLdStr global_84
  loc_C97FDB: LitI2_Byte 1
  loc_C97FDD: FnUBound
  loc_C97FDF: ForI4 var_41C
  loc_C97FE5: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C97FE8: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C97FEB: ConcatStr
  loc_C97FEC: FStStrNoPop var_C0
  loc_C97FEF: LitStr " sum(if(CodiTimo in (3,8,10,19,22,24,27),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C97FF2: ConcatStr
  loc_C97FF3: FStStrNoPop var_FC
  loc_C97FF6: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_C97FF9: ConcatStr
  loc_C97FFA: FStStrNoPop var_100
  loc_C97FFD: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtct"
  loc_C98000: ConcatStr
  loc_C98001: FStStrNoPop var_104
  loc_C98004: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C98007: ConcatStr
  loc_C98008: CVarStr var_E4
  loc_C9800B: FLdRfVar var_88
  loc_C9800E: CVarRef
  loc_C98013: FLdRfVar var_D4
  loc_C98016: ImpAdCallFPR4  = Year()
  loc_C9801B: FLdRfVar var_D4
  loc_C9801E: ConcatVar var_F4
  loc_C98022: LitVarStr var_B8, " AND concepto.ActiConc = '"
  loc_C98027: ConcatVar var_114
  loc_C9802B: FLdPr Me
  loc_C9802E: MemLdStr global_88
  loc_C98031: FLdPr Me
  loc_C98034: MemLdStr global_84
  loc_C98037: Ary1LdPr
  loc_C98038: MemLdStr global_0
  loc_C9803B: CVarStr var_124
  loc_C9803E: ConcatVar var_134
  loc_C98042: LitVarStr var_144, "'"
  loc_C98047: ConcatVar var_154
  loc_C9804B: LitVarStr var_164, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C98050: ConcatVar var_174
  loc_C98054: ILdRf var_88
  loc_C98057: CVarStr var_184
  loc_C9805A: ConcatVar var_194
  loc_C9805E: LitVarStr var_1A4, "' AND '"
  loc_C98063: ConcatVar var_1B4
  loc_C98067: ILdRf var_8C
  loc_C9806A: CVarStr var_1C4
  loc_C9806D: ConcatVar var_1D4
  loc_C98071: LitVarStr var_1E4, "'"
  loc_C98076: ConcatVar var_1F4
  loc_C9807A: LitVarStr var_204, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct) UNION ALL "
  loc_C9807F: ConcatVar var_214
  loc_C98083: LitVarStr var_224, " (SELECT ctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct, 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C98088: ConcatVar var_234
  loc_C9808C: LitVarStr var_244, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C98091: ConcatVar var_254
  loc_C98095: FLdRfVar var_88
  loc_C98098: CVarRef
  loc_C9809D: FLdRfVar var_264
  loc_C980A0: ImpAdCallFPR4  = Year()
  loc_C980A5: FLdRfVar var_264
  loc_C980A8: ConcatVar var_284
  loc_C980AC: LitVarStr var_294, " AND concepto.ActiConc = '"
  loc_C980B1: ConcatVar var_2A4
  loc_C980B5: FLdPr Me
  loc_C980B8: MemLdStr global_88
  loc_C980BB: FLdPr Me
  loc_C980BE: MemLdStr global_84
  loc_C980C1: Ary1LdPr
  loc_C980C2: MemLdStr global_0
  loc_C980C5: CVarStr var_2B4
  loc_C980C8: ConcatVar var_2C4
  loc_C980CC: LitVarStr var_2D4, "'"
  loc_C980D1: ConcatVar var_2E4
  loc_C980D5: LitVarStr var_2F4, " WHERE ctacte.FealCtct < '"
  loc_C980DA: ConcatVar var_304
  loc_C980DE: ILdRf var_88
  loc_C980E1: CVarStr var_314
  loc_C980E4: ConcatVar var_324
  loc_C980E8: LitVarStr var_334, "' GROUP BY ctacte.CodiOfic, ctacte.CuenCtct) UNION ALL "
  loc_C980ED: ConcatVar var_344
  loc_C980F1: LitVarStr var_354, " (SELECT histoctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C980F6: ConcatVar var_364
  loc_C980FA: LitVarStr var_384, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct"
  loc_C980FF: ConcatVar var_374
  loc_C98103: LitVarStr var_3A4, " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_C98108: ConcatVar var_394
  loc_C9810C: FLdRfVar var_88
  loc_C9810F: CVarRef
  loc_C98114: FLdRfVar var_3B4
  loc_C98117: ImpAdCallFPR4  = Year()
  loc_C9811C: FLdRfVar var_3B4
  loc_C9811F: ConcatVar var_3D4
  loc_C98123: LitVarStr var_3E4, " AND concepto.ActiConc = '"
  loc_C98128: ConcatVar var_3F4
  loc_C9812C: FLdPr Me
  loc_C9812F: MemLdStr global_88
  loc_C98132: FLdPr Me
  loc_C98135: MemLdStr global_84
  loc_C98138: Ary1LdPr
  loc_C98139: MemLdStr global_0
  loc_C9813C: CVarStr var_42C
  loc_C9813F: ConcatVar var_43C
  loc_C98143: LitVarStr var_44C, "'"
  loc_C98148: ConcatVar var_45C
  loc_C9814C: LitVarStr var_46C, " WHERE histoctacte.FealCtct < '"
  loc_C98151: ConcatVar var_47C
  loc_C98155: ILdRf var_88
  loc_C98158: CVarStr var_48C
  loc_C9815B: ConcatVar var_49C
  loc_C9815F: LitVarStr var_4AC, "' GROUP BY histoctacte.CodiOfic, histoctacte.CuenCtct);"
  loc_C98164: ConcatVar var_4BC
  loc_C98168: LitVarStr var_4CC, " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_C9816D: ConcatVar var_4DC
  loc_C98171: CStrVarVal var_3F8
  loc_C98175: FLdPr var_F8
  loc_C98178: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C9817D: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C9818A: FFreeVar var_47C = "": var_49C = "": var_4BC = "": var_4DC = "": var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_43C = ""
  loc_C981D1: LitStr "SELECT tribu.CuenCtct, tribu.CodiOfic"
  loc_C981D4: LitStr " FROM tribu INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_C981D7: ConcatStr
  loc_C981D8: FStStrNoPop var_C0
  loc_C981DB: LitStr " GROUP BY tribu.CodiOfic, tribu.CuenCtct"
  loc_C981DE: ConcatStr
  loc_C981DF: FStStrNoPop var_FC
  loc_C981E2: FLdPr var_F8
  loc_C981E5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C981EA: FFreeStr var_C0 = ""
  loc_C981F1: FLdRfVar var_3FC
  loc_C981F4: FLdPr var_F8
  loc_C981F7: from_stack_1 = clsctacte.RecordCount
  loc_C981FC: ILdRf var_3FC
  loc_C981FF: CStrI4
  loc_C98201: FStStrNoPop var_C0
  loc_C98204: FLdPr Me
  loc_C98207: MemLdStr global_88
  loc_C9820A: FLdPr Me
  loc_C9820D: MemLdStr global_84
  loc_C98210: Ary1LdPr
  loc_C98211: MemStStrCopy
  loc_C98215: FFree1Str var_C0
  loc_C98218: FLdPr Me
  loc_C9821B: MemLdRfVar from_stack_1.global_88
  loc_C9821E: NextI4 var_41C, loc_C97FE5
  loc_C98223: LitNothing
  loc_C98225: FStAd var_F8 
  loc_C98229: Branch loc_C9903C
  loc_C9822C: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_C9822F: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_C98232: ConcatStr
  loc_C98233: FStStrNoPop var_C0
  loc_C98236: LitStr " uenCtct` varchar(11) NOT NULL default '',"
  loc_C98239: ConcatStr
  loc_C9823A: FStStrNoPop var_FC
  loc_C9823D: LitStr " odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_C98240: ConcatStr
  loc_C98241: FStStrNoPop var_100
  loc_C98244: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_C98247: ConcatStr
  loc_C98248: FStStrNoPop var_104
  loc_C9824B: LitStr " ainCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C9824E: ConcatStr
  loc_C9824F: FStStrNoPop var_3F8
  loc_C98252: LitStr " forCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C98255: ConcatStr
  loc_C98256: FStStrNoPop var_4E0
  loc_C98259: LitStr " ebeCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C9825C: ConcatStr
  loc_C9825D: FStStrNoPop var_4E4
  loc_C98260: LitStr " redCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C98263: ConcatStr
  loc_C98264: FStStrNoPop var_4E8
  loc_C98267: LitStr " resCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C9826A: ConcatStr
  loc_C9826B: FStStrNoPop var_4EC
  loc_C9826E: LitStr " ondCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C98271: ConcatStr
  loc_C98272: FStStrNoPop var_4F0
  loc_C98275: LitStr " xenCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C98278: ConcatStr
  loc_C98279: FStStrNoPop var_4F4
  loc_C9827C: LitStr " escCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C9827F: ConcatStr
  loc_C98280: FStStrNoPop var_4F8
  loc_C98283: LitStr " obrCtct` decimal(16,2) NOT NULL default '0.00',"
  loc_C98286: ConcatStr
  loc_C98287: FStStrNoPop var_4FC
  loc_C9828A: LitStr " KEY mpidx` (`CodiConc`)"
  loc_C9828D: ConcatStr
  loc_C9828E: FStStrNoPop var_500
  loc_C98291: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C98294: ConcatStr
  loc_C98295: FStStrNoPop var_504
  loc_C98298: FLdPr Me
  loc_C9829B: MemLdRfVar from_stack_1.global_76
  loc_C9829E: NewIfNullPr clsctacte
  loc_C982A1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C982A6: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F4 = "": var_4F8 = "": var_4FC = "": var_500 = ""
  loc_C982C7: LitStr "SELECT * FROM concepto "
  loc_C982CA: LitStr " WHERE PeriInfo = "
  loc_C982CD: ConcatStr
  loc_C982CE: CVarStr var_E4
  loc_C982D1: FLdRfVar var_88
  loc_C982D4: CVarRef
  loc_C982D9: FLdRfVar var_D4
  loc_C982DC: ImpAdCallFPR4  = Year()
  loc_C982E1: FLdRfVar var_D4
  loc_C982E4: ConcatVar var_F4
  loc_C982E8: LitVarStr var_B8, " AND ActiConc <> ''"
  loc_C982ED: ConcatVar var_114
  loc_C982F1: CStrVarVal var_C0
  loc_C982F5: FLdPr Me
  loc_C982F8: MemLdRfVar from_stack_1.global_80
  loc_C982FB: NewIfNullPr clsboleto
  loc_C982FE: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C98303: FFree1Str var_C0
  loc_C98306: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_C98311: FLdRfVar var_3FC
  loc_C98314: FLdPr Me
  loc_C98317: MemLdRfVar from_stack_1.global_80
  loc_C9831A: NewIfNullPr clsboleto
  loc_C9831D: from_stack_1 = clsboleto.RecordCount
  loc_C98322: ILdRf var_3FC
  loc_C98325: LitI4 0
  loc_C9832A: GtI4
  loc_C9832B: BranchF loc_C98AEE
  loc_C9832E: FLdPr Me
  loc_C98331: MemLdRfVar from_stack_1.global_80
  loc_C98334: NewIfNullPr clsboleto
  loc_C98337: Call clsboleto.MoveFirst()
  loc_C9833C: FLdRfVar var_C2
  loc_C9833F: FLdPr Me
  loc_C98342: MemLdRfVar from_stack_1.global_80
  loc_C98345: NewIfNullPr clsboleto
  loc_C98348: from_stack_1 = clsboleto.EOF
  loc_C9834D: FLdI2 var_C2
  loc_C98350: NotI4
  loc_C98351: BranchF loc_C98AEE
  loc_C98354: FLdRfVar var_D4
  loc_C98357: FLdRfVar var_50C
  loc_C9835A: LitVarStr var_A8, "SacuConc"
  loc_C9835F: PopAdLdVar
  loc_C98360: FLdRfVar var_508
  loc_C98363: FLdRfVar var_BC
  loc_C98366: FLdPr Me
  loc_C98369: MemLdRfVar from_stack_1.global_80
  loc_C9836C: NewIfNullPr clsboleto
  loc_C9836F: from_stack_1v = clsboleto.RsFrmGet()
  loc_C98374: FLdPr var_BC
  loc_C98377:  = Me.Fields
  loc_C9837C: FLdPr var_508
  loc_C9837F: from_stack_2 = Me.Item(from_stack_1)
  loc_C98384: FLdPr var_50C
  loc_C98387:  = Me.Value
  loc_C9838C: FLdRfVar var_D4
  loc_C9838F: FnCByteVar
  loc_C98391: CI2UI1
  loc_C98393: LitI2_Byte 0
  loc_C98395: EqI2
  loc_C98396: FFreeAd var_BC = "": var_508 = ""
  loc_C9839F: FFree1Var var_D4 = ""
  loc_C983A2: BranchF loc_C98636
  loc_C983A5: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_C983A8: LitStr " CREATE TEMPORARY TABLE tmp_saldo"
  loc_C983AB: ConcatStr
  loc_C983AC: FStStrNoPop var_C0
  loc_C983AF: LitStr " SELECT Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, SUM(DebeCtct-CredCtct) AS SainCtct"
  loc_C983B2: ConcatStr
  loc_C983B3: FStStrNoPop var_FC
  loc_C983B6: LitStr " FROM ctacte"
  loc_C983B9: ConcatStr
  loc_C983BA: FStStrNoPop var_100
  loc_C983BD: LitStr " WHERE ctacte.FealCtct < '2018-07-01'"
  loc_C983C0: ConcatStr
  loc_C983C1: FStStrNoPop var_104
  loc_C983C4: LitStr " AND CodiConc = '"
  loc_C983C7: ConcatStr
  loc_C983C8: FStStrNoPop var_4E0
  loc_C983CB: FLdRfVar var_3F8
  loc_C983CE: FLdPr Me
  loc_C983D1: MemLdRfVar from_stack_1.global_80
  loc_C983D4: NewIfNullPr clsboleto
  loc_C983D7: from_stack_1 = clsboleto.CodiConc
  loc_C983DC: ILdRf var_3F8
  loc_C983DF: ConcatStr
  loc_C983E0: FStStrNoPop var_4E4
  loc_C983E3: LitStr "'"
  loc_C983E6: ConcatStr
  loc_C983E7: FStStrNoPop var_4E8
  loc_C983EA: LitStr " GROUP BY Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_C983ED: ConcatStr
  loc_C983EE: FStStrNoPop var_4EC
  loc_C983F1: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial;"
  loc_C983F4: ConcatStr
  loc_C983F5: FStStrNoPop var_4F0
  loc_C983F8: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial"
  loc_C983FB: ConcatStr
  loc_C983FC: FStStrNoPop var_4F4
  loc_C983FF: LitStr " SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(ctacte.CodiOfic,0) CodiOfic, IFNULL(ctacte.CodiConc,'"
  loc_C98402: ConcatStr
  loc_C98403: FStStrNoPop var_4FC
  loc_C98406: FLdRfVar var_4F8
  loc_C98409: FLdPr Me
  loc_C9840C: MemLdRfVar from_stack_1.global_80
  loc_C9840F: NewIfNullPr clsboleto
  loc_C98412: from_stack_1 = clsboleto.CodiConc
  loc_C98417: ILdRf var_4F8
  loc_C9841A: ConcatStr
  loc_C9841B: FStStrNoPop var_500
  loc_C9841E: LitStr "') CodiConc,"
  loc_C98421: ConcatStr
  loc_C98422: FStStrNoPop var_504
  loc_C98425: LitStr " IFNULL(SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct),'0') AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct FROM tmp_saldo"
  loc_C98428: ConcatStr
  loc_C98429: FStStrNoPop var_510
  loc_C9842C: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic"
  loc_C9842F: ConcatStr
  loc_C98430: FStStrNoPop var_514
  loc_C98433: LitStr " AND ctacte.CuenCtct = tmp_saldo.CuenCtct"
  loc_C98436: ConcatStr
  loc_C98437: FStStrNoPop var_518
  loc_C9843A: LitStr " AND ctacte.PeriCtct = tmp_saldo.PeriCtct"
  loc_C9843D: ConcatStr
  loc_C9843E: FStStrNoPop var_51C
  loc_C98441: LitStr " AND ctacte.BimeCtct = tmp_saldo.BimeCtct"
  loc_C98444: ConcatStr
  loc_C98445: FStStrNoPop var_520
  loc_C98448: LitStr " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_C9844B: ConcatStr
  loc_C9844C: FStStrNoPop var_524
  loc_C9844F: LitStr " AND ctacte.FealCtct < '2018-07-01'"
  loc_C98452: ConcatStr
  loc_C98453: FStStrNoPop var_528
  loc_C98456: FLdPr Me
  loc_C98459: MemLdRfVar from_stack_1.global_76
  loc_C9845C: NewIfNullPr clsctacte
  loc_C9845F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98464: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_4E0 = "": var_3F8 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F4 = "": var_4FC = "": var_4F8 = "": var_500 = "": var_504 = "": var_510 = "": var_514 = "": var_518 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_C98493: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_C98496: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_C98499: ConcatStr
  loc_C9849A: FStStrNoPop var_C0
  loc_C9849D: LitStr " SELECT CuenCtct, CodiOfic, CodiConc,"
  loc_C984A0: ConcatStr
  loc_C984A1: FStStrNoPop var_FC
  loc_C984A4: LitStr " SUM(SainCtct) SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C984A7: ConcatStr
  loc_C984A8: FStStrNoPop var_100
  loc_C984AB: LitStr " FROM tmp_saldo_inicial"
  loc_C984AE: ConcatStr
  loc_C984AF: FStStrNoPop var_104
  loc_C984B2: FLdPr Me
  loc_C984B5: MemLdRfVar from_stack_1.global_76
  loc_C984B8: NewIfNullPr clsctacte
  loc_C984BB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C984C0: FFreeStr var_C0 = "": var_FC = "": var_100 = ""
  loc_C984CB: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_C984CE: LitStr " SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(CodiOfic,0) CodiOfic, IFNULL(CodiConc,'"
  loc_C984D1: ConcatStr
  loc_C984D2: FStStrNoPop var_FC
  loc_C984D5: FLdRfVar var_C0
  loc_C984D8: FLdPr Me
  loc_C984DB: MemLdRfVar from_stack_1.global_80
  loc_C984DE: NewIfNullPr clsboleto
  loc_C984E1: from_stack_1 = clsboleto.CodiConc
  loc_C984E6: ILdRf var_C0
  loc_C984E9: ConcatStr
  loc_C984EA: FStStrNoPop var_100
  loc_C984ED: LitStr "') CodiConc, IFNULL(SUM(DebeCtct-CredCtct),0) AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C984F0: ConcatStr
  loc_C984F1: FStStrNoPop var_104
  loc_C984F4: LitStr " FROM ctacte"
  loc_C984F7: ConcatStr
  loc_C984F8: FStStrNoPop var_3F8
  loc_C984FB: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C984FE: ConcatStr
  loc_C984FF: FStStrNoPop var_4E0
  loc_C98502: ILdRf var_88
  loc_C98505: ConcatStr
  loc_C98506: FStStrNoPop var_4E4
  loc_C98509: LitStr "' AND CodiConc = '"
  loc_C9850C: ConcatStr
  loc_C9850D: FStStrNoPop var_4EC
  loc_C98510: FLdRfVar var_4E8
  loc_C98513: FLdPr Me
  loc_C98516: MemLdRfVar from_stack_1.global_80
  loc_C98519: NewIfNullPr clsboleto
  loc_C9851C: from_stack_1 = clsboleto.CodiConc
  loc_C98521: ILdRf var_4E8
  loc_C98524: ConcatStr
  loc_C98525: FStStrNoPop var_4F0
  loc_C98528: LitStr "'"
  loc_C9852B: ConcatStr
  loc_C9852C: FStStrNoPop var_4F4
  loc_C9852F: FLdPr Me
  loc_C98532: MemLdRfVar from_stack_1.global_76
  loc_C98535: NewIfNullPr clsctacte
  loc_C98538: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C9853D: FFreeStr var_FC = "": var_C0 = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4EC = "": var_4E8 = "": var_4F0 = ""
  loc_C98556: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_C98559: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_C9855C: ConcatStr
  loc_C9855D: FStStrNoPop var_C0
  loc_C98560: LitStr " SELECT CuenCtct, CodiOfic, CodiConc, SUM(SainCtct) SainCtct, AforCtct, DebeCtct, CredCtct, PresCtct, CondCtct, ExenCtct, DescCtct, CobrCtct"
  loc_C98563: ConcatStr
  loc_C98564: FStStrNoPop var_FC
  loc_C98567: LitStr " FROM tmp_saldo_inicial1"
  loc_C9856A: ConcatStr
  loc_C9856B: FStStrNoPop var_100
  loc_C9856E: FLdPr Me
  loc_C98571: MemLdRfVar from_stack_1.global_76
  loc_C98574: NewIfNullPr clsctacte
  loc_C98577: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C9857C: FFreeStr var_C0 = "": var_FC = ""
  loc_C98585: LitStr "INSERT INTO tribu"
  loc_C98588: LitStr " (SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(CodiOfic,'0') CodiOfic, IFNULL(CodiConc,'') CodiConc, 000000000.00 AS SainCtct, IFNULL(SUM(IF(CodiTimo=1, DebeCtct,000000000.00)),0) AS AforCtct ,"
  loc_C9858B: ConcatStr
  loc_C9858C: FStStrNoPop var_C0
  loc_C9858F: LitStr " IFNULL(sum(if(CodiTimo in (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)),'0') as DebeCtct, IFNULL(sum(if(CodiTimo in (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)) + SUM(if(CodiTimo IN (27,28),DebeCtct,000000000.00)),'0')  as CredCtct,"
  loc_C98592: ConcatStr
  loc_C98593: FStStrNoPop var_FC
  loc_C98596: LitStr " IFNULL(sum(if(CodiTimo=12,CredCtct,000000000.00)),'0') as PresCtct, IFNULL(sum(if(CodiTimo=14,CredCtct,000000000.00)),'0') as CondCtct, IFNULL(sum(if(CodiTimo=15,CredCtct,000000000.00)),'0') as ExenCtct, IFNULL(sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) - SUM(if(CodiTimo IN (28),DebeCtct,000000000.00)),'0') as DescCtct,"
  loc_C98599: ConcatStr
  loc_C9859A: FStStrNoPop var_100
  loc_C9859D: LitStr " IFNULL(sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)),'0') as CobrCtct"
  loc_C985A0: ConcatStr
  loc_C985A1: FStStrNoPop var_104
  loc_C985A4: LitStr " FROM ctacte "
  loc_C985A7: ConcatStr
  loc_C985A8: FStStrNoPop var_3F8
  loc_C985AB: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C985AE: ConcatStr
  loc_C985AF: FStStrNoPop var_4E0
  loc_C985B2: ILdRf var_88
  loc_C985B5: ConcatStr
  loc_C985B6: FStStrNoPop var_4E4
  loc_C985B9: LitStr "' AND '"
  loc_C985BC: ConcatStr
  loc_C985BD: FStStrNoPop var_4E8
  loc_C985C0: ILdRf var_8C
  loc_C985C3: ConcatStr
  loc_C985C4: FStStrNoPop var_4EC
  loc_C985C7: LitStr "'"
  loc_C985CA: ConcatStr
  loc_C985CB: FStStrNoPop var_4F0
  loc_C985CE: LitStr " AND ctacte.CodiConc = '"
  loc_C985D1: ConcatStr
  loc_C985D2: FStStrNoPop var_4F8
  loc_C985D5: FLdRfVar var_4F4
  loc_C985D8: FLdPr Me
  loc_C985DB: MemLdRfVar from_stack_1.global_80
  loc_C985DE: NewIfNullPr clsboleto
  loc_C985E1: from_stack_1 = clsboleto.CodiConc
  loc_C985E6: ILdRf var_4F4
  loc_C985E9: ConcatStr
  loc_C985EA: FStStrNoPop var_4FC
  loc_C985ED: LitStr "'"
  loc_C985F0: ConcatStr
  loc_C985F1: FStStrNoPop var_500
  loc_C985F4: LitStr " ) UNION ALL"
  loc_C985F7: ConcatStr
  loc_C985F8: FStStrNoPop var_504
  loc_C985FB: LitStr " (SELECT * FROM tmp_saldo_info);"
  loc_C985FE: ConcatStr
  loc_C985FF: FStStrNoPop var_510
  loc_C98602: FLdPr Me
  loc_C98605: MemLdRfVar from_stack_1.global_76
  loc_C98608: NewIfNullPr clsctacte
  loc_C9860B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98610: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F8 = "": var_4F4 = "": var_4FC = "": var_500 = "": var_504 = ""
  loc_C98633: Branch loc_C98ADD
  loc_C98636: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_inicial1;"
  loc_C98639: LitStr " CREATE TEMPORARY TABLE tmp_saldo_inicial1"
  loc_C9863C: ConcatStr
  loc_C9863D: FStStrNoPop var_C0
  loc_C98640: LitStr " SELECT '"
  loc_C98643: ConcatStr
  loc_C98644: FStStrNoPop var_100
  loc_C98647: FLdRfVar var_FC
  loc_C9864A: FLdPr Me
  loc_C9864D: MemLdRfVar from_stack_1.global_80
  loc_C98650: NewIfNullPr clsboleto
  loc_C98653: from_stack_1 = clsboleto.CodiConc
  loc_C98658: ILdRf var_FC
  loc_C9865B: ConcatStr
  loc_C9865C: FStStrNoPop var_104
  loc_C9865F: LitStr "' CodiConc, CodiOfic, CuenCtct, ROUND(SUM(replace(ImpoSain,',','.')),2) SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C98662: ConcatStr
  loc_C98663: FStStrNoPop var_3F8
  loc_C98666: LitStr " FROM saldoinicialcuota WHERE ConcViej = '"
  loc_C98669: ConcatStr
  loc_C9866A: CVarStr var_E4
  loc_C9866D: FLdRfVar var_D4
  loc_C98670: FLdRfVar var_50C
  loc_C98673: LitVarStr var_A8, "ConcViej"
  loc_C98678: PopAdLdVar
  loc_C98679: FLdRfVar var_508
  loc_C9867C: FLdRfVar var_BC
  loc_C9867F: FLdPr Me
  loc_C98682: MemLdRfVar from_stack_1.global_80
  loc_C98685: NewIfNullPr clsboleto
  loc_C98688: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9868D: FLdPr var_BC
  loc_C98690:  = Me.Fields
  loc_C98695: FLdPr var_508
  loc_C98698: from_stack_2 = Me.Item(from_stack_1)
  loc_C9869D: FLdPr var_50C
  loc_C986A0:  = Me.Value
  loc_C986A5: FLdRfVar var_D4
  loc_C986A8: ConcatVar var_F4
  loc_C986AC: LitVarStr var_B8, "'"
  loc_C986B1: ConcatVar var_114
  loc_C986B5: CStrVarVal var_4E0
  loc_C986B9: FLdPr Me
  loc_C986BC: MemLdRfVar from_stack_1.global_76
  loc_C986BF: NewIfNullPr clsctacte
  loc_C986C2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C986C7: FFreeStr var_C0 = "": var_100 = "": var_FC = "": var_104 = "": var_3F8 = ""
  loc_C986D6: FFreeAd var_BC = "": var_508 = ""
  loc_C986DF: FFreeVar var_E4 = "": var_D4 = "": var_F4 = ""
  loc_C986EA: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_C986ED: LitStr " SELECT '"
  loc_C986F0: ConcatStr
  loc_C986F1: FStStrNoPop var_FC
  loc_C986F4: FLdRfVar var_C0
  loc_C986F7: FLdPr Me
  loc_C986FA: MemLdRfVar from_stack_1.global_80
  loc_C986FD: NewIfNullPr clsboleto
  loc_C98700: from_stack_1 = clsboleto.CodiConc
  loc_C98705: ILdRf var_C0
  loc_C98708: ConcatStr
  loc_C98709: FStStrNoPop var_100
  loc_C9870C: LitStr "' CodiConc, CodiOfic, CuenCtct, SUM(credito) * -1 AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C9870F: ConcatStr
  loc_C98710: FStStrNoPop var_104
  loc_C98713: LitStr " FROM saldocreditocuota"
  loc_C98716: ConcatStr
  loc_C98717: FStStrNoPop var_3F8
  loc_C9871A: LitStr " WHERE ConcViej = '"
  loc_C9871D: ConcatStr
  loc_C9871E: CVarStr var_E4
  loc_C98721: FLdRfVar var_D4
  loc_C98724: FLdRfVar var_50C
  loc_C98727: LitVarStr var_A8, "ConcViej"
  loc_C9872C: PopAdLdVar
  loc_C9872D: FLdRfVar var_508
  loc_C98730: FLdRfVar var_BC
  loc_C98733: FLdPr Me
  loc_C98736: MemLdRfVar from_stack_1.global_80
  loc_C98739: NewIfNullPr clsboleto
  loc_C9873C: from_stack_1v = clsboleto.RsFrmGet()
  loc_C98741: FLdPr var_BC
  loc_C98744:  = Me.Fields
  loc_C98749: FLdPr var_508
  loc_C9874C: from_stack_2 = Me.Item(from_stack_1)
  loc_C98751: FLdPr var_50C
  loc_C98754:  = Me.Value
  loc_C98759: FLdRfVar var_D4
  loc_C9875C: ConcatVar var_F4
  loc_C98760: LitVarStr var_B8, "' AND  FechaHasta < '"
  loc_C98765: ConcatVar var_114
  loc_C98769: ILdRf var_88
  loc_C9876C: CVarStr var_124
  loc_C9876F: ConcatVar var_134
  loc_C98773: LitVarStr var_144, "'"
  loc_C98778: ConcatVar var_154
  loc_C9877C: CStrVarVal var_4E0
  loc_C98780: FLdPr Me
  loc_C98783: MemLdRfVar from_stack_1.global_76
  loc_C98786: NewIfNullPr clsctacte
  loc_C98789: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C9878E: FFreeStr var_FC = "": var_C0 = "": var_100 = "": var_104 = "": var_3F8 = ""
  loc_C9879D: FFreeAd var_BC = "": var_508 = ""
  loc_C987A6: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = ""
  loc_C987B5: LitStr "INSERT INTO tmp_saldo_inicial1"
  loc_C987B8: LitStr " SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(CodiOfic,0) CodiOfic, IFNULL(CodiConc,'"
  loc_C987BB: ConcatStr
  loc_C987BC: FStStrNoPop var_FC
  loc_C987BF: FLdRfVar var_C0
  loc_C987C2: FLdPr Me
  loc_C987C5: MemLdRfVar from_stack_1.global_80
  loc_C987C8: NewIfNullPr clsboleto
  loc_C987CB: from_stack_1 = clsboleto.CodiConc
  loc_C987D0: ILdRf var_C0
  loc_C987D3: ConcatStr
  loc_C987D4: FStStrNoPop var_100
  loc_C987D7: LitStr "') CodiConc, SUM(IF(CodiTimo IN (3,8,10,19,22,24),DebeCtct,0))-SUM(CredCtct) AS SainCtct, 000000000.00 AS AforCtct, 000000000.00 AS DebeCtct, 000000000.00 AS CredCtct, 000000000.00 AS PresCtct, 000000000.00 AS CondCtct, 000000000.00 AS ExenCtct, 000000000.00 AS DescCtct, 000000000.00 AS CobrCtct"
  loc_C987DA: ConcatStr
  loc_C987DB: FStStrNoPop var_104
  loc_C987DE: LitStr " FROM ctacte"
  loc_C987E1: ConcatStr
  loc_C987E2: FStStrNoPop var_3F8
  loc_C987E5: LitStr " WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C987E8: ConcatStr
  loc_C987E9: FStStrNoPop var_4E0
  loc_C987EC: ILdRf var_88
  loc_C987EF: ConcatStr
  loc_C987F0: FStStrNoPop var_4E4
  loc_C987F3: LitStr "' AND CodiConc = '"
  loc_C987F6: ConcatStr
  loc_C987F7: FStStrNoPop var_4EC
  loc_C987FA: FLdRfVar var_4E8
  loc_C987FD: FLdPr Me
  loc_C98800: MemLdRfVar from_stack_1.global_80
  loc_C98803: NewIfNullPr clsboleto
  loc_C98806: from_stack_1 = clsboleto.CodiConc
  loc_C9880B: ILdRf var_4E8
  loc_C9880E: ConcatStr
  loc_C9880F: FStStrNoPop var_4F0
  loc_C98812: LitStr "'"
  loc_C98815: ConcatStr
  loc_C98816: FStStrNoPop var_4F4
  loc_C98819: FLdPr Me
  loc_C9881C: MemLdRfVar from_stack_1.global_76
  loc_C9881F: NewIfNullPr clsctacte
  loc_C98822: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98827: FFreeStr var_FC = "": var_C0 = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4EC = "": var_4E8 = "": var_4F0 = ""
  loc_C98840: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_C98843: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_C98846: ConcatStr
  loc_C98847: FStStrNoPop var_C0
  loc_C9884A: LitStr " SELECT CuenCtct, CodiOfic, CodiConc, SUM(SainCtct) SainCtct, AforCtct, DebeCtct, CredCtct, PresCtct, CondCtct, ExenCtct, DescCtct, CobrCtct"
  loc_C9884D: ConcatStr
  loc_C9884E: FStStrNoPop var_FC
  loc_C98851: LitStr " FROM tmp_saldo_inicial1"
  loc_C98854: ConcatStr
  loc_C98855: FStStrNoPop var_100
  loc_C98858: FLdPr Me
  loc_C9885B: MemLdRfVar from_stack_1.global_76
  loc_C9885E: NewIfNullPr clsctacte
  loc_C98861: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98866: FFreeStr var_C0 = "": var_FC = ""
  loc_C9886F: FLdRfVar var_C2
  loc_C98872: FLdPr Me
  loc_C98875: VCallAd Control_ID_OptRentas
  loc_C98878: FStAdFunc var_BC
  loc_C9887B: FLdPr var_BC
  loc_C9887E:  = Me.Value
  loc_C98883: FLdI2 var_C2
  loc_C98886: LitI2_Byte &HFF
  loc_C98888: EqI2
  loc_C98889: FFree1Ad var_BC
  loc_C9888C: BranchF loc_C98A0F
  loc_C9888F: LitStr "INSERT INTO tribu"
  loc_C98892: LitStr " (SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(CodiOfic,'0') CodiOfic, IFNULL(CodiConc,'') CodiConc, 000000000.00 AS SainCtct, IFNULL(SUM(IF(CodiTimo=1, 000000000.00,000000000.00)),0) AS AforCtct ,"
  loc_C98895: ConcatStr
  loc_C98896: FStStrNoPop var_C0
  loc_C98899: LitStr " IFNULL(sum(if(CodiTimo in (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)),'0') as DebeCtct, IFNULL(sum(if(CodiTimo in (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)) + SUM(if(CodiTimo IN (27,28),DebeCtct,000000000.00)),'0') as CredCtct,"
  loc_C9889C: ConcatStr
  loc_C9889D: FStStrNoPop var_FC
  loc_C988A0: LitStr " IFNULL(sum(if(CodiTimo=12,CredCtct,000000000.00)),'0') as PresCtct, IFNULL(sum(if(CodiTimo=14,CredCtct,000000000.00)),'0') as CondCtct, IFNULL(sum(if(CodiTimo=15,CredCtct,000000000.00)),'0') as ExenCtct, IFNULL(sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) - SUM(if(CodiTimo IN (28),DebeCtct,000000000.00)),'0') as DescCtct,"
  loc_C988A3: ConcatStr
  loc_C988A4: FStStrNoPop var_100
  loc_C988A7: LitStr " IFNULL(sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)),'0') as CobrCtct"
  loc_C988AA: ConcatStr
  loc_C988AB: FStStrNoPop var_104
  loc_C988AE: LitStr " FROM ctacte "
  loc_C988B1: ConcatStr
  loc_C988B2: FStStrNoPop var_3F8
  loc_C988B5: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C988B8: ConcatStr
  loc_C988B9: FStStrNoPop var_4E0
  loc_C988BC: ILdRf var_88
  loc_C988BF: ConcatStr
  loc_C988C0: FStStrNoPop var_4E4
  loc_C988C3: LitStr "' AND '"
  loc_C988C6: ConcatStr
  loc_C988C7: FStStrNoPop var_4E8
  loc_C988CA: ILdRf var_8C
  loc_C988CD: ConcatStr
  loc_C988CE: FStStrNoPop var_4EC
  loc_C988D1: LitStr "'"
  loc_C988D4: ConcatStr
  loc_C988D5: FStStrNoPop var_4F0
  loc_C988D8: LitStr " AND ctacte.CodiConc = '"
  loc_C988DB: ConcatStr
  loc_C988DC: FStStrNoPop var_4F8
  loc_C988DF: FLdRfVar var_4F4
  loc_C988E2: FLdPr Me
  loc_C988E5: MemLdRfVar from_stack_1.global_80
  loc_C988E8: NewIfNullPr clsboleto
  loc_C988EB: from_stack_1 = clsboleto.CodiConc
  loc_C988F0: ILdRf var_4F4
  loc_C988F3: ConcatStr
  loc_C988F4: FStStrNoPop var_4FC
  loc_C988F7: LitStr "'"
  loc_C988FA: ConcatStr
  loc_C988FB: FStStrNoPop var_500
  loc_C988FE: LitStr " ) UNION ALL"
  loc_C98901: ConcatStr
  loc_C98902: FStStrNoPop var_504
  loc_C98905: LitStr " (SELECT  IFNULL(saldocreditocuota.CuenCtct,'') CuenCtct, IFNULL(saldocreditocuota.CodiOfic,'0') CodiOfic,"
  loc_C98908: ConcatStr
  loc_C98909: FStStrNoPop var_514
  loc_C9890C: FLdRfVar var_510
  loc_C9890F: FLdPr Me
  loc_C98912: MemLdRfVar from_stack_1.global_80
  loc_C98915: NewIfNullPr clsboleto
  loc_C98918: from_stack_1 = clsboleto.CodiConc
  loc_C9891D: ILdRf var_510
  loc_C98920: ConcatStr
  loc_C98921: FStStrNoPop var_518
  loc_C98924: LitStr ", 000000000.00 SainCtct, 000000000.00  AforCtct, 000000000.00  DebeCtct, SUM(Credito)  CredCtct, 000000000.00  PresCtct, 000000000.00  CondCtct, 000000000.00  ExenCtct, 000000000.00  DescCtct, 000000000.00  CobrCtct FROM saldocreditocuota"
  loc_C98927: ConcatStr
  loc_C98928: FStStrNoPop var_51C
  loc_C9892B: LitStr " WHERE ConcViej = '"
  loc_C9892E: ConcatStr
  loc_C9892F: CVarStr var_E4
  loc_C98932: FLdRfVar var_D4
  loc_C98935: FLdRfVar var_50C
  loc_C98938: LitVarStr var_A8, "ConcViej"
  loc_C9893D: PopAdLdVar
  loc_C9893E: FLdRfVar var_508
  loc_C98941: FLdRfVar var_BC
  loc_C98944: FLdPr Me
  loc_C98947: MemLdRfVar from_stack_1.global_80
  loc_C9894A: NewIfNullPr clsboleto
  loc_C9894D: from_stack_1v = clsboleto.RsFrmGet()
  loc_C98952: FLdPr var_BC
  loc_C98955:  = Me.Fields
  loc_C9895A: FLdPr var_508
  loc_C9895D: from_stack_2 = Me.Item(from_stack_1)
  loc_C98962: FLdPr var_50C
  loc_C98965:  = Me.Value
  loc_C9896A: FLdRfVar var_D4
  loc_C9896D: ConcatVar var_F4
  loc_C98971: LitVarStr var_B8, "' AND FechaDesde >= '"
  loc_C98976: ConcatVar var_114
  loc_C9897A: ILdRf var_88
  loc_C9897D: CVarStr var_124
  loc_C98980: ConcatVar var_134
  loc_C98984: LitVarStr var_144, "' AND FechaHasta <= '"
  loc_C98989: ConcatVar var_154
  loc_C9898D: ILdRf var_8C
  loc_C98990: CVarStr var_164
  loc_C98993: ConcatVar var_174
  loc_C98997: LitVarStr var_184, "'"
  loc_C9899C: ConcatVar var_194
  loc_C989A0: LitVarStr var_1A4, " GROUP BY saldocreditocuota.CodiOfic, saldocreditocuota.CuenCtct) UNION ALL"
  loc_C989A5: ConcatVar var_1B4
  loc_C989A9: LitVarStr var_1C4, " (SELECT * FROM tmp_saldo_info);"
  loc_C989AE: ConcatVar var_1D4
  loc_C989B2: CStrVarVal var_520
  loc_C989B6: FLdPr Me
  loc_C989B9: MemLdRfVar from_stack_1.global_76
  loc_C989BC: NewIfNullPr clsctacte
  loc_C989BF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C989C4: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F8 = "": var_4F4 = "": var_4FC = "": var_500 = "": var_504 = "": var_514 = "": var_510 = "": var_518 = "": var_51C = ""
  loc_C989EF: FFreeAd var_BC = "": var_508 = ""
  loc_C989F8: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_174 = "": var_194 = "": var_1B4 = ""
  loc_C98A0F: FLdRfVar var_C2
  loc_C98A12: FLdPr Me
  loc_C98A15: VCallAd Control_ID_OptContabilidad
  loc_C98A18: FStAdFunc var_BC
  loc_C98A1B: FLdPr var_BC
  loc_C98A1E:  = Me.Value
  loc_C98A23: FLdI2 var_C2
  loc_C98A26: LitI2_Byte &HFF
  loc_C98A28: EqI2
  loc_C98A29: FFree1Ad var_BC
  loc_C98A2C: BranchF loc_C98ADD
  loc_C98A2F: LitStr "INSERT INTO tribu"
  loc_C98A32: LitStr " (SELECT IFNULL(ctacte.CuenCtct,'') CuenCtct, IFNULL(CodiOfic,'0') CodiOfic, IFNULL(CodiConc,'') CodiConc, 000000000.00 AS SainCtct, IFNULL(SUM(IF(CodiTimo=1, DebeCtct,000000000.00)),0) AS AforCtct ,"
  loc_C98A35: ConcatStr
  loc_C98A36: FStStrNoPop var_C0
  loc_C98A39: LitStr " IFNULL(sum(if(CodiTimo in (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)),'0') as DebeCtct, IFNULL(sum(if(CodiTimo in (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68),CredCtct,000000000.00)) + SUM(if(CodiTimo IN (27,28),DebeCtct,000000000.00)),'0') as CredCtct,"
  loc_C98A3C: ConcatStr
  loc_C98A3D: FStStrNoPop var_FC
  loc_C98A40: LitStr " IFNULL(sum(if(CodiTimo=12,CredCtct,000000000.00)),'0') as PresCtct, IFNULL(sum(if(CodiTimo=14,CredCtct,000000000.00)),'0') as CondCtct, IFNULL(sum(if(CodiTimo=15,CredCtct,000000000.00)),'0') as ExenCtct, IFNULL(sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) - SUM(if(CodiTimo IN (28),DebeCtct,000000000.00)),'0') as DescCtct,"
  loc_C98A43: ConcatStr
  loc_C98A44: FStStrNoPop var_100
  loc_C98A47: LitStr " IFNULL(sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)),'0') as CobrCtct"
  loc_C98A4A: ConcatStr
  loc_C98A4B: FStStrNoPop var_104
  loc_C98A4E: LitStr " FROM ctacte "
  loc_C98A51: ConcatStr
  loc_C98A52: FStStrNoPop var_3F8
  loc_C98A55: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C98A58: ConcatStr
  loc_C98A59: FStStrNoPop var_4E0
  loc_C98A5C: ILdRf var_88
  loc_C98A5F: ConcatStr
  loc_C98A60: FStStrNoPop var_4E4
  loc_C98A63: LitStr "' AND '"
  loc_C98A66: ConcatStr
  loc_C98A67: FStStrNoPop var_4E8
  loc_C98A6A: ILdRf var_8C
  loc_C98A6D: ConcatStr
  loc_C98A6E: FStStrNoPop var_4EC
  loc_C98A71: LitStr "'"
  loc_C98A74: ConcatStr
  loc_C98A75: FStStrNoPop var_4F0
  loc_C98A78: LitStr " AND ctacte.CodiConc = '"
  loc_C98A7B: ConcatStr
  loc_C98A7C: FStStrNoPop var_4F8
  loc_C98A7F: FLdRfVar var_4F4
  loc_C98A82: FLdPr Me
  loc_C98A85: MemLdRfVar from_stack_1.global_80
  loc_C98A88: NewIfNullPr clsboleto
  loc_C98A8B: from_stack_1 = clsboleto.CodiConc
  loc_C98A90: ILdRf var_4F4
  loc_C98A93: ConcatStr
  loc_C98A94: FStStrNoPop var_4FC
  loc_C98A97: LitStr "'"
  loc_C98A9A: ConcatStr
  loc_C98A9B: FStStrNoPop var_500
  loc_C98A9E: LitStr " ) UNION ALL"
  loc_C98AA1: ConcatStr
  loc_C98AA2: FStStrNoPop var_504
  loc_C98AA5: LitStr " (SELECT * FROM tmp_saldo_info);"
  loc_C98AA8: ConcatStr
  loc_C98AA9: FStStrNoPop var_510
  loc_C98AAC: FLdPr Me
  loc_C98AAF: MemLdRfVar from_stack_1.global_76
  loc_C98AB2: NewIfNullPr clsctacte
  loc_C98AB5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98ABA: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_3F8 = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F8 = "": var_4F4 = "": var_4FC = "": var_500 = "": var_504 = ""
  loc_C98ADD: FLdPr Me
  loc_C98AE0: MemLdRfVar from_stack_1.global_80
  loc_C98AE3: NewIfNullPr clsboleto
  loc_C98AE6: Call clsboleto.MoveSiguiente()
  loc_C98AEB: Branch loc_C9833C
  loc_C98AEE: FLdPr Me
  loc_C98AF1: MemLdRfVar from_stack_1.global_76
  loc_C98AF4: NewIfNullAd
  loc_C98AF7: FStAd var_52C 
  loc_C98AFB: FLdRfVar var_C2
  loc_C98AFE: FLdPr Me
  loc_C98B01: VCallAd Control_ID_OptRentas
  loc_C98B04: FStAdFunc var_BC
  loc_C98B07: FLdPr var_BC
  loc_C98B0A:  = Me.Value
  loc_C98B0F: FLdI2 var_C2
  loc_C98B12: LitI2_Byte &HFF
  loc_C98B14: EqI2
  loc_C98B15: FFree1Ad var_BC
  loc_C98B18: BranchF loc_C98B7E
  loc_C98B1B: LitStr "SELECT concepto.ActiConc, tribu.CodiConc, DetaConc , sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C98B1E: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C98B21: ConcatStr
  loc_C98B22: FStStrNoPop var_C0
  loc_C98B25: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct"
  loc_C98B28: ConcatStr
  loc_C98B29: FStStrNoPop var_FC
  loc_C98B2C: LitStr " FROM tribu INNER JOIN concepto ON concepto.PeriInfo = "
  loc_C98B2F: ConcatStr
  loc_C98B30: CVarStr var_E4
  loc_C98B33: FLdRfVar var_88
  loc_C98B36: CVarRef
  loc_C98B3B: FLdRfVar var_D4
  loc_C98B3E: ImpAdCallFPR4  = Year()
  loc_C98B43: FLdRfVar var_D4
  loc_C98B46: ConcatVar var_F4
  loc_C98B4A: LitVarStr var_B8, " AND concepto.CodiConc = tribu.CodiConc"
  loc_C98B4F: ConcatVar var_114
  loc_C98B53: LitVarStr var_124, " GROUP BY tribu.CodiConc ORDER BY CodiConc"
  loc_C98B58: ConcatVar var_134
  loc_C98B5C: CStrVarVal var_100
  loc_C98B60: FLdPr var_52C
  loc_C98B63: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98B68: FFreeStr var_C0 = "": var_FC = ""
  loc_C98B71: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = ""
  loc_C98B7E: FLdRfVar var_C2
  loc_C98B81: FLdPr Me
  loc_C98B84: VCallAd Control_ID_OptContabilidad
  loc_C98B87: FStAdFunc var_BC
  loc_C98B8A: FLdPr var_BC
  loc_C98B8D:  = Me.Value
  loc_C98B92: FLdI2 var_C2
  loc_C98B95: LitI2_Byte &HFF
  loc_C98B97: EqI2
  loc_C98B98: FFree1Ad var_BC
  loc_C98B9B: BranchF loc_C98C01
  loc_C98B9E: LitStr "SELECT concepto.ActiConc, tribu.CodiConc CodiConc, DetaConc , sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C98BA1: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C98BA4: ConcatStr
  loc_C98BA5: FStStrNoPop var_C0
  loc_C98BA8: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct"
  loc_C98BAB: ConcatStr
  loc_C98BAC: FStStrNoPop var_FC
  loc_C98BAF: LitStr " FROM tribu INNER JOIN concepto ON concepto.PeriInfo = "
  loc_C98BB2: ConcatStr
  loc_C98BB3: CVarStr var_E4
  loc_C98BB6: FLdRfVar var_88
  loc_C98BB9: CVarRef
  loc_C98BBE: FLdRfVar var_D4
  loc_C98BC1: ImpAdCallFPR4  = Year()
  loc_C98BC6: FLdRfVar var_D4
  loc_C98BC9: ConcatVar var_F4
  loc_C98BCD: LitVarStr var_B8, " AND concepto.CodiConc = tribu.CodiConc"
  loc_C98BD2: ConcatVar var_114
  loc_C98BD6: LitVarStr var_124, " GROUP BY tribu.CodiConc ORDER BY concepto.ActiConc, tribu.CodiConc"
  loc_C98BDB: ConcatVar var_134
  loc_C98BDF: CStrVarVal var_100
  loc_C98BE3: FLdPr var_52C
  loc_C98BE6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C98BEB: FFreeStr var_C0 = "": var_FC = ""
  loc_C98BF4: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = ""
  loc_C98C01: FLdRfVar var_3FC
  loc_C98C04: FLdPr var_52C
  loc_C98C07: from_stack_1 = clsctacte.RecordCount
  loc_C98C0C: ILdRf var_3FC
  loc_C98C0F: LitI4 0
  loc_C98C14: EqI4
  loc_C98C15: BranchF loc_C98C23
  loc_C98C18: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C98C1B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C98C20: Branch loc_C99044
  loc_C98C23: LitI4 1
  loc_C98C28: LitI4 1
  loc_C98C2D: FLdPr Me
  loc_C98C30: MemLdRfVar from_stack_1.global_92
  loc_C98C33: Redim
  loc_C98C3D: LitI4 1
  loc_C98C42: FLdRfVar var_3FC
  loc_C98C45: FLdPr var_52C
  loc_C98C48: from_stack_1 = clsctacte.RecordCount
  loc_C98C4D: ILdRf var_3FC
  loc_C98C50: FLdPr Me
  loc_C98C53: MemLdRfVar from_stack_1.global_84
  loc_C98C56: Redim
  loc_C98C60: FLdPr var_52C
  loc_C98C63: Call clsctacte.MoveFirst()
  loc_C98C68: LitI4 1
  loc_C98C6D: FLdPr Me
  loc_C98C70: MemLdRfVar from_stack_1.global_88
  loc_C98C73: FLdPr Me
  loc_C98C76: MemLdStr global_84
  loc_C98C79: LitI2_Byte 1
  loc_C98C7B: FnUBound
  loc_C98C7D: ForI4 var_534
  loc_C98C83: FLdRfVar var_D4
  loc_C98C86: FLdPr var_52C
  loc_C98C89: from_stack_1 = clsctacte.ActiConc
  loc_C98C8E: LitI2_Byte 0
  loc_C98C90: LitVar_Missing var_E4
  loc_C98C93: LitI2_Byte 0
  loc_C98C95: FLdVar var_D4
  loc_C98C99: FLdPr Me
  loc_C98C9C: MemLdStr global_88
  loc_C98C9F: FLdPr Me
  loc_C98CA2: MemLdStr global_84
  loc_C98CA5: AryLock
  loc_C98CA8: Ary1LdPr
  loc_C98CA9: MemLdRfVar from_stack_1.global_0
  loc_C98CAC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98CB1: AryUnlock
  loc_C98CB4: FFreeVar var_D4 = ""
  loc_C98CBB: FLdRfVar var_C0
  loc_C98CBE: FLdPr var_52C
  loc_C98CC1: from_stack_1 = clsctacte.CodiConc
  loc_C98CC6: LitI2_Byte 0
  loc_C98CC8: LitVar_Missing var_E4
  loc_C98CCB: LitI2_Byte 0
  loc_C98CCD: FLdZeroAd var_C0
  loc_C98CD0: CVarStr var_D4
  loc_C98CD3: PopAdLdVar
  loc_C98CD4: FLdPr Me
  loc_C98CD7: MemLdStr global_88
  loc_C98CDA: FLdPr Me
  loc_C98CDD: MemLdStr global_84
  loc_C98CE0: AryLock
  loc_C98CE3: Ary1LdPr
  loc_C98CE4: MemLdRfVar from_stack_1.global_4
  loc_C98CE7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98CEC: AryUnlock
  loc_C98CEF: FFreeVar var_D4 = ""
  loc_C98CF6: FLdRfVar var_D4
  loc_C98CF9: FLdPr var_52C
  loc_C98CFC: from_stack_1 = clsctacte.DetaConc
  loc_C98D01: LitI2_Byte 0
  loc_C98D03: LitVar_Missing var_E4
  loc_C98D06: LitI2_Byte 0
  loc_C98D08: FLdVar var_D4
  loc_C98D0C: FLdPr Me
  loc_C98D0F: MemLdStr global_88
  loc_C98D12: FLdPr Me
  loc_C98D15: MemLdStr global_84
  loc_C98D18: AryLock
  loc_C98D1B: Ary1LdPr
  loc_C98D1C: MemLdRfVar from_stack_1.global_8
  loc_C98D1F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98D24: AryUnlock
  loc_C98D27: FFreeVar var_D4 = ""
  loc_C98D2E: FLdRfVar var_D4
  loc_C98D31: FLdPr var_52C
  loc_C98D34: from_stack_1 = clsctacte.SainCtct
  loc_C98D39: LitI2_Byte 0
  loc_C98D3B: LitI4 1
  loc_C98D40: FLdPr Me
  loc_C98D43: MemLdStr global_92
  loc_C98D46: AryLock
  loc_C98D49: Ary1LdPr
  loc_C98D4A: MemLdRfVar from_stack_1.global_12
  loc_C98D4D: CVarRef
  loc_C98D52: LitI2_Byte &HFF
  loc_C98D54: FLdVar var_D4
  loc_C98D58: FLdPr Me
  loc_C98D5B: MemLdStr global_88
  loc_C98D5E: FLdPr Me
  loc_C98D61: MemLdStr global_84
  loc_C98D64: AryLock
  loc_C98D67: Ary1LdPr
  loc_C98D68: MemLdRfVar from_stack_1.global_12
  loc_C98D6B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98D70: AryUnlock
  loc_C98D73: AryUnlock
  loc_C98D76: FFree1Var var_D4 = ""
  loc_C98D79: FLdRfVar var_D4
  loc_C98D7C: FLdPr var_52C
  loc_C98D7F: from_stack_1 = clsctacte.AforCtct
  loc_C98D84: LitI2_Byte 0
  loc_C98D86: LitI4 1
  loc_C98D8B: FLdPr Me
  loc_C98D8E: MemLdStr global_92
  loc_C98D91: AryLock
  loc_C98D94: Ary1LdPr
  loc_C98D95: MemLdRfVar from_stack_1.global_16
  loc_C98D98: CVarRef
  loc_C98D9D: LitI2_Byte &HFF
  loc_C98D9F: FLdVar var_D4
  loc_C98DA3: FLdPr Me
  loc_C98DA6: MemLdStr global_88
  loc_C98DA9: FLdPr Me
  loc_C98DAC: MemLdStr global_84
  loc_C98DAF: AryLock
  loc_C98DB2: Ary1LdPr
  loc_C98DB3: MemLdRfVar from_stack_1.global_16
  loc_C98DB6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98DBB: AryUnlock
  loc_C98DBE: AryUnlock
  loc_C98DC1: FFree1Var var_D4 = ""
  loc_C98DC4: FLdRfVar var_414
  loc_C98DC7: FLdPr var_52C
  loc_C98DCA: from_stack_1 = clsctacte.DebeCtct
  loc_C98DCF: LitI2_Byte 0
  loc_C98DD1: LitI4 1
  loc_C98DD6: FLdPr Me
  loc_C98DD9: MemLdStr global_92
  loc_C98DDC: AryLock
  loc_C98DDF: Ary1LdPr
  loc_C98DE0: MemLdRfVar from_stack_1.global_20
  loc_C98DE3: CVarRef
  loc_C98DE8: LitI2_Byte &HFF
  loc_C98DEA: FLdFPR8 var_414
  loc_C98DED: CVarR8
  loc_C98DF1: PopAdLdVar
  loc_C98DF2: FLdPr Me
  loc_C98DF5: MemLdStr global_88
  loc_C98DF8: FLdPr Me
  loc_C98DFB: MemLdStr global_84
  loc_C98DFE: AryLock
  loc_C98E01: Ary1LdPr
  loc_C98E02: MemLdRfVar from_stack_1.global_20
  loc_C98E05: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98E0A: AryUnlock
  loc_C98E0D: AryUnlock
  loc_C98E10: FLdRfVar var_414
  loc_C98E13: FLdPr var_52C
  loc_C98E16: from_stack_1 = clsctacte.CredCtct
  loc_C98E1B: LitI2_Byte 0
  loc_C98E1D: LitI4 1
  loc_C98E22: FLdPr Me
  loc_C98E25: MemLdStr global_92
  loc_C98E28: AryLock
  loc_C98E2B: Ary1LdPr
  loc_C98E2C: MemLdRfVar from_stack_1.global_24
  loc_C98E2F: CVarRef
  loc_C98E34: LitI2_Byte &HFF
  loc_C98E36: FLdFPR8 var_414
  loc_C98E39: CVarR8
  loc_C98E3D: PopAdLdVar
  loc_C98E3E: FLdPr Me
  loc_C98E41: MemLdStr global_88
  loc_C98E44: FLdPr Me
  loc_C98E47: MemLdStr global_84
  loc_C98E4A: AryLock
  loc_C98E4D: Ary1LdPr
  loc_C98E4E: MemLdRfVar from_stack_1.global_24
  loc_C98E51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98E56: AryUnlock
  loc_C98E59: AryUnlock
  loc_C98E5C: FLdRfVar var_D4
  loc_C98E5F: FLdPr var_52C
  loc_C98E62: from_stack_1 = clsctacte.PresCtct
  loc_C98E67: LitI2_Byte 0
  loc_C98E69: LitI4 1
  loc_C98E6E: FLdPr Me
  loc_C98E71: MemLdStr global_92
  loc_C98E74: AryLock
  loc_C98E77: Ary1LdPr
  loc_C98E78: MemLdRfVar from_stack_1.global_28
  loc_C98E7B: CVarRef
  loc_C98E80: LitI2_Byte &HFF
  loc_C98E82: FLdVar var_D4
  loc_C98E86: FLdPr Me
  loc_C98E89: MemLdStr global_88
  loc_C98E8C: FLdPr Me
  loc_C98E8F: MemLdStr global_84
  loc_C98E92: AryLock
  loc_C98E95: Ary1LdPr
  loc_C98E96: MemLdRfVar from_stack_1.global_28
  loc_C98E99: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98E9E: AryUnlock
  loc_C98EA1: AryUnlock
  loc_C98EA4: FFree1Var var_D4 = ""
  loc_C98EA7: FLdRfVar var_D4
  loc_C98EAA: FLdPr var_52C
  loc_C98EAD: from_stack_1 = clsctacte.CondCtct
  loc_C98EB2: LitI2_Byte 0
  loc_C98EB4: LitI4 1
  loc_C98EB9: FLdPr Me
  loc_C98EBC: MemLdStr global_92
  loc_C98EBF: AryLock
  loc_C98EC2: Ary1LdPr
  loc_C98EC3: MemLdRfVar from_stack_1.global_32
  loc_C98EC6: CVarRef
  loc_C98ECB: LitI2_Byte &HFF
  loc_C98ECD: FLdVar var_D4
  loc_C98ED1: FLdPr Me
  loc_C98ED4: MemLdStr global_88
  loc_C98ED7: FLdPr Me
  loc_C98EDA: MemLdStr global_84
  loc_C98EDD: AryLock
  loc_C98EE0: Ary1LdPr
  loc_C98EE1: MemLdRfVar from_stack_1.global_32
  loc_C98EE4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98EE9: AryUnlock
  loc_C98EEC: AryUnlock
  loc_C98EEF: FFree1Var var_D4 = ""
  loc_C98EF2: FLdRfVar var_D4
  loc_C98EF5: FLdPr var_52C
  loc_C98EF8: from_stack_1 = clsctacte.ExenCtct
  loc_C98EFD: LitI2_Byte 0
  loc_C98EFF: LitI4 1
  loc_C98F04: FLdPr Me
  loc_C98F07: MemLdStr global_92
  loc_C98F0A: AryLock
  loc_C98F0D: Ary1LdPr
  loc_C98F0E: MemLdRfVar from_stack_1.global_36
  loc_C98F11: CVarRef
  loc_C98F16: LitI2_Byte &HFF
  loc_C98F18: FLdVar var_D4
  loc_C98F1C: FLdPr Me
  loc_C98F1F: MemLdStr global_88
  loc_C98F22: FLdPr Me
  loc_C98F25: MemLdStr global_84
  loc_C98F28: AryLock
  loc_C98F2B: Ary1LdPr
  loc_C98F2C: MemLdRfVar from_stack_1.global_36
  loc_C98F2F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98F34: AryUnlock
  loc_C98F37: AryUnlock
  loc_C98F3A: FFree1Var var_D4 = ""
  loc_C98F3D: FLdRfVar var_D4
  loc_C98F40: FLdPr var_52C
  loc_C98F43: from_stack_1 = clsctacte.DescCtct
  loc_C98F48: LitI2_Byte 0
  loc_C98F4A: LitI4 1
  loc_C98F4F: FLdPr Me
  loc_C98F52: MemLdStr global_92
  loc_C98F55: AryLock
  loc_C98F58: Ary1LdPr
  loc_C98F59: MemLdRfVar from_stack_1.global_40
  loc_C98F5C: CVarRef
  loc_C98F61: LitI2_Byte &HFF
  loc_C98F63: FLdVar var_D4
  loc_C98F67: FLdPr Me
  loc_C98F6A: MemLdStr global_88
  loc_C98F6D: FLdPr Me
  loc_C98F70: MemLdStr global_84
  loc_C98F73: AryLock
  loc_C98F76: Ary1LdPr
  loc_C98F77: MemLdRfVar from_stack_1.global_40
  loc_C98F7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98F7F: AryUnlock
  loc_C98F82: AryUnlock
  loc_C98F85: FFree1Var var_D4 = ""
  loc_C98F88: FLdRfVar var_D4
  loc_C98F8B: FLdPr var_52C
  loc_C98F8E: from_stack_1 = clsctacte.CobrCtct
  loc_C98F93: LitI2_Byte 0
  loc_C98F95: LitI4 1
  loc_C98F9A: FLdPr Me
  loc_C98F9D: MemLdStr global_92
  loc_C98FA0: AryLock
  loc_C98FA3: Ary1LdPr
  loc_C98FA4: MemLdRfVar from_stack_1.global_44
  loc_C98FA7: CVarRef
  loc_C98FAC: LitI2_Byte &HFF
  loc_C98FAE: FLdVar var_D4
  loc_C98FB2: FLdPr Me
  loc_C98FB5: MemLdStr global_88
  loc_C98FB8: FLdPr Me
  loc_C98FBB: MemLdStr global_84
  loc_C98FBE: AryLock
  loc_C98FC1: Ary1LdPr
  loc_C98FC2: MemLdRfVar from_stack_1.global_44
  loc_C98FC5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C98FCA: AryUnlock
  loc_C98FCD: AryUnlock
  loc_C98FD0: FFree1Var var_D4 = ""
  loc_C98FD3: FLdRfVar var_D4
  loc_C98FD6: FLdPr var_52C
  loc_C98FD9: from_stack_1 = clsctacte.SafiCtct
  loc_C98FDE: LitI2_Byte 0
  loc_C98FE0: LitI4 1
  loc_C98FE5: FLdPr Me
  loc_C98FE8: MemLdStr global_92
  loc_C98FEB: AryLock
  loc_C98FEE: Ary1LdPr
  loc_C98FEF: MemLdRfVar from_stack_1.global_48
  loc_C98FF2: CVarRef
  loc_C98FF7: LitI2_Byte &HFF
  loc_C98FF9: FLdVar var_D4
  loc_C98FFD: FLdPr Me
  loc_C99000: MemLdStr global_88
  loc_C99003: FLdPr Me
  loc_C99006: MemLdStr global_84
  loc_C99009: AryLock
  loc_C9900C: Ary1LdPr
  loc_C9900D: MemLdRfVar from_stack_1.global_48
  loc_C99010: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C99015: AryUnlock
  loc_C99018: AryUnlock
  loc_C9901B: FFree1Var var_D4 = ""
  loc_C9901E: LitI2_Byte 1
  loc_C99020: PopTmpLdAd2 var_C2
  loc_C99023: FLdPr var_52C
  loc_C99026: Call clsctacte.Move(from_stack_1v)
  loc_C9902B: FLdPr Me
  loc_C9902E: MemLdRfVar from_stack_1.global_88
  loc_C99031: NextI4 var_534, loc_C98C83
  loc_C99036: LitNothing
  loc_C99038: FStAd var_52C 
  loc_C9903C: LitI2_Byte &HFF
  loc_C9903E: FLdPr Me
  loc_C99041: MemStI2 bGenerado
  loc_C99044: LitI4 0
  loc_C99049: CI2I4
  loc_C9904A: FLdPr Me
  loc_C9904D: Me.MousePointer = from_stack_1
  loc_C99052: LitVarStr var_A8, vbNullString
  loc_C99057: PopAdLdVar
  loc_C99058: FLdPr Me
  loc_C9905B: VCallAd Control_ID_statusBar
  loc_C9905E: FStAdFunc var_BC
  loc_C99061: FLdPr var_BC
  loc_C99064: LateIdSt
  loc_C99069: FFree1Ad var_BC
  loc_C9906C: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BF7864
  'Data Table: 4B2668
  loc_BF6FE8: FLdRfVar var_88
  loc_BF6FEB: LitI2_Byte 0
  loc_BF6FED: LitI2_Byte &HFF
  loc_BF6FEF: ImpAdLdI4 MemVar_D93C84
  loc_BF6FF2: FLdPr Me
  loc_BF6FF5: MemLdRfVar from_stack_1.global_56
  loc_BF6FF8: NewIfNullPr IFileSystem3
  loc_BF6FFB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BF7000: ILdRf var_88
  loc_BF7003: FLdPr Me
  loc_BF7006: MemStVarAd
  loc_BF700A: FFree1Ad var_88
  loc_BF700D: FLdRfVar var_8A
  loc_BF7010: FLdPr Me
  loc_BF7013: VCallAd Control_ID_SepararOpt
  loc_BF7016: FStAdFunc var_88
  loc_BF7019: FLdPr var_88
  loc_BF701C:  = Me.Value
  loc_BF7021: FLdI2 var_8A
  loc_BF7024: CI4UI1
  loc_BF7025: LitI4 0
  loc_BF702A: EqI4
  loc_BF702B: ImpAdStI2 MemVar_D93C8A
  loc_BF702E: FFree1Ad var_88
  loc_BF7031: Call Proc_310_23_B5670C()
  loc_BF7036: Call Proc_310_24_B6CEDC()
  loc_BF703B: LitI4 1
  loc_BF7040: FLdPr Me
  loc_BF7043: MemLdRfVar from_stack_1.global_88
  loc_BF7046: FLdPr Me
  loc_BF7049: MemLdStr global_84
  loc_BF704C: LitI2_Byte 1
  loc_BF704E: FnUBound
  loc_BF7050: ForI4 var_94
  loc_BF7056: FLdRfVar var_8A
  loc_BF7059: FLdPr Me
  loc_BF705C: VCallAd Control_ID_SepararOpt
  loc_BF705F: FStAdFunc var_88
  loc_BF7062: FLdPr var_88
  loc_BF7065:  = Me.Value
  loc_BF706A: FLdI2 var_8A
  loc_BF706D: CI4UI1
  loc_BF706E: LitI4 1
  loc_BF7073: EqI4
  loc_BF7074: FLdPr Me
  loc_BF7077: MemLdStr global_88
  loc_BF707A: LitI4 1
  loc_BF707F: GtI4
  loc_BF7080: AndI4
  loc_BF7081: FFree1Ad var_88
  loc_BF7084: BranchF loc_BF70A0
  loc_BF7087: LitVarStr var_A4, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_BF708C: PopAdLdVar
  loc_BF708D: FLdPr Me
  loc_BF7090: MemLdRfVar from_stack_1.global_60
  loc_BF7093: LdPrVar
  loc_BF7095: LateMemCall
  loc_BF709B: Call Proc_310_24_B6CEDC()
  loc_BF70A0: FLdPr Me
  loc_BF70A3: MemLdStr global_88
  loc_BF70A6: FLdPr Me
  loc_BF70A9: MemLdStr global_84
  loc_BF70AC: AryLock
  loc_BF70AF: Ary1LdRf
  loc_BF70B0: FStR4 var_BC
  loc_BF70B3: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BF70B8: PopAdLdVar
  loc_BF70B9: FLdPr Me
  loc_BF70BC: MemLdRfVar from_stack_1.global_60
  loc_BF70BF: LdPrVar
  loc_BF70C1: LateMemCall
  loc_BF70C7: LitStr vbNullString
  loc_BF70CA: LitI2_Byte 0
  loc_BF70CC: LitI2_Byte 0
  loc_BF70CE: LitI2_Byte 0
  loc_BF70D0: LitStr "left"
  loc_BF70D3: FMemLdR4 var_BC(0)
  loc_BF70D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF70DD: CVarStr var_CC
  loc_BF70E0: PopAdLdVar
  loc_BF70E1: FLdPr Me
  loc_BF70E4: MemLdRfVar from_stack_1.global_60
  loc_BF70E7: LdPrVar
  loc_BF70E9: LateMemCall
  loc_BF70EF: FFree1Var var_CC = ""
  loc_BF70F2: LitStr vbNullString
  loc_BF70F5: LitI2_Byte 0
  loc_BF70F7: LitI2_Byte 0
  loc_BF70F9: LitI2_Byte 0
  loc_BF70FB: LitStr "left"
  loc_BF70FE: FMemLdR4 var_BC(4)
  loc_BF7103: LitStr " - "
  loc_BF7106: ConcatStr
  loc_BF7107: FStStrNoPop var_D0
  loc_BF710A: FMemLdR4 var_BC(8)
  loc_BF710F: ConcatStr
  loc_BF7110: FStStrNoPop var_D4
  loc_BF7113: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7118: CVarStr var_CC
  loc_BF711B: PopAdLdVar
  loc_BF711C: FLdPr Me
  loc_BF711F: MemLdRfVar from_stack_1.global_60
  loc_BF7122: LdPrVar
  loc_BF7124: LateMemCall
  loc_BF712A: FFreeStr var_D0 = ""
  loc_BF7131: FFree1Var var_CC = ""
  loc_BF7134: LitStr vbNullString
  loc_BF7137: LitI2_Byte 0
  loc_BF7139: LitI2_Byte 0
  loc_BF713B: LitI2_Byte 0
  loc_BF713D: LitStr "right"
  loc_BF7140: FMemLdR4 var_BC(12)
  loc_BF7145: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF714A: CVarStr var_CC
  loc_BF714D: PopAdLdVar
  loc_BF714E: FLdPr Me
  loc_BF7151: MemLdRfVar from_stack_1.global_60
  loc_BF7154: LdPrVar
  loc_BF7156: LateMemCall
  loc_BF715C: FFree1Var var_CC = ""
  loc_BF715F: LitStr vbNullString
  loc_BF7162: LitI2_Byte 0
  loc_BF7164: LitI2_Byte 0
  loc_BF7166: LitI2_Byte 0
  loc_BF7168: LitStr "right"
  loc_BF716B: FMemLdR4 var_BC(16)
  loc_BF7170: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7175: CVarStr var_CC
  loc_BF7178: PopAdLdVar
  loc_BF7179: FLdPr Me
  loc_BF717C: MemLdRfVar from_stack_1.global_60
  loc_BF717F: LdPrVar
  loc_BF7181: LateMemCall
  loc_BF7187: FFree1Var var_CC = ""
  loc_BF718A: LitStr vbNullString
  loc_BF718D: LitI2_Byte 0
  loc_BF718F: LitI2_Byte 0
  loc_BF7191: LitI2_Byte 0
  loc_BF7193: LitStr "right"
  loc_BF7196: FMemLdR4 var_BC(20)
  loc_BF719B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF71A0: CVarStr var_CC
  loc_BF71A3: PopAdLdVar
  loc_BF71A4: FLdPr Me
  loc_BF71A7: MemLdRfVar from_stack_1.global_60
  loc_BF71AA: LdPrVar
  loc_BF71AC: LateMemCall
  loc_BF71B2: FFree1Var var_CC = ""
  loc_BF71B5: LitStr vbNullString
  loc_BF71B8: LitI2_Byte 0
  loc_BF71BA: LitI2_Byte 0
  loc_BF71BC: LitI2_Byte 0
  loc_BF71BE: LitStr "right"
  loc_BF71C1: FMemLdR4 var_BC(24)
  loc_BF71C6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF71CB: CVarStr var_CC
  loc_BF71CE: PopAdLdVar
  loc_BF71CF: FLdPr Me
  loc_BF71D2: MemLdRfVar from_stack_1.global_60
  loc_BF71D5: LdPrVar
  loc_BF71D7: LateMemCall
  loc_BF71DD: FFree1Var var_CC = ""
  loc_BF71E0: LitStr vbNullString
  loc_BF71E3: LitI2_Byte 0
  loc_BF71E5: LitI2_Byte 0
  loc_BF71E7: LitI2_Byte 0
  loc_BF71E9: LitStr "right"
  loc_BF71EC: FMemLdR4 var_BC(28)
  loc_BF71F1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF71F6: CVarStr var_CC
  loc_BF71F9: PopAdLdVar
  loc_BF71FA: FLdPr Me
  loc_BF71FD: MemLdRfVar from_stack_1.global_60
  loc_BF7200: LdPrVar
  loc_BF7202: LateMemCall
  loc_BF7208: FFree1Var var_CC = ""
  loc_BF720B: LitStr vbNullString
  loc_BF720E: LitI2_Byte 0
  loc_BF7210: LitI2_Byte 0
  loc_BF7212: LitI2_Byte 0
  loc_BF7214: LitStr "right"
  loc_BF7217: FMemLdR4 var_BC(32)
  loc_BF721C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7221: CVarStr var_CC
  loc_BF7224: PopAdLdVar
  loc_BF7225: FLdPr Me
  loc_BF7228: MemLdRfVar from_stack_1.global_60
  loc_BF722B: LdPrVar
  loc_BF722D: LateMemCall
  loc_BF7233: FFree1Var var_CC = ""
  loc_BF7236: LitStr vbNullString
  loc_BF7239: LitI2_Byte 0
  loc_BF723B: LitI2_Byte 0
  loc_BF723D: LitI2_Byte 0
  loc_BF723F: LitStr "right"
  loc_BF7242: FMemLdR4 var_BC(36)
  loc_BF7247: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF724C: CVarStr var_CC
  loc_BF724F: PopAdLdVar
  loc_BF7250: FLdPr Me
  loc_BF7253: MemLdRfVar from_stack_1.global_60
  loc_BF7256: LdPrVar
  loc_BF7258: LateMemCall
  loc_BF725E: FFree1Var var_CC = ""
  loc_BF7261: LitStr vbNullString
  loc_BF7264: LitI2_Byte 0
  loc_BF7266: LitI2_Byte 0
  loc_BF7268: LitI2_Byte 0
  loc_BF726A: LitStr "right"
  loc_BF726D: FMemLdR4 var_BC(40)
  loc_BF7272: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7277: CVarStr var_CC
  loc_BF727A: PopAdLdVar
  loc_BF727B: FLdPr Me
  loc_BF727E: MemLdRfVar from_stack_1.global_60
  loc_BF7281: LdPrVar
  loc_BF7283: LateMemCall
  loc_BF7289: FFree1Var var_CC = ""
  loc_BF728C: LitStr vbNullString
  loc_BF728F: LitI2_Byte 0
  loc_BF7291: LitI2_Byte 0
  loc_BF7293: LitI2_Byte 0
  loc_BF7295: LitStr "right"
  loc_BF7298: FMemLdR4 var_BC(44)
  loc_BF729D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF72A2: CVarStr var_CC
  loc_BF72A5: PopAdLdVar
  loc_BF72A6: FLdPr Me
  loc_BF72A9: MemLdRfVar from_stack_1.global_60
  loc_BF72AC: LdPrVar
  loc_BF72AE: LateMemCall
  loc_BF72B4: FFree1Var var_CC = ""
  loc_BF72B7: LitStr vbNullString
  loc_BF72BA: LitI2_Byte 0
  loc_BF72BC: LitI2_Byte 0
  loc_BF72BE: LitI2_Byte 0
  loc_BF72C0: LitStr "right"
  loc_BF72C3: FMemLdR4 var_BC(48)
  loc_BF72C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF72CD: CVarStr var_CC
  loc_BF72D0: PopAdLdVar
  loc_BF72D1: FLdPr Me
  loc_BF72D4: MemLdRfVar from_stack_1.global_60
  loc_BF72D7: LdPrVar
  loc_BF72D9: LateMemCall
  loc_BF72DF: FFree1Var var_CC = ""
  loc_BF72E2: LitVarStr var_A4, "     </tr>"
  loc_BF72E7: PopAdLdVar
  loc_BF72E8: FLdPr Me
  loc_BF72EB: MemLdRfVar from_stack_1.global_60
  loc_BF72EE: LdPrVar
  loc_BF72F0: LateMemCall
  loc_BF72F6: LitI4 0
  loc_BF72FB: FStR4 var_BC
  loc_BF72FE: AryUnlock
  loc_BF7301: FLdRfVar var_8A
  loc_BF7304: FLdPr Me
  loc_BF7307: VCallAd Control_ID_SepararOpt
  loc_BF730A: FStAdFunc var_88
  loc_BF730D: FLdPr var_88
  loc_BF7310:  = Me.Value
  loc_BF7315: FLdI2 var_8A
  loc_BF7318: CI4UI1
  loc_BF7319: LitI4 1
  loc_BF731E: EqI4
  loc_BF731F: FFree1Ad var_88
  loc_BF7322: BranchF loc_BF7483
  loc_BF7325: LitVarStr var_A4, "</table>"
  loc_BF732A: PopAdLdVar
  loc_BF732B: FLdPr Me
  loc_BF732E: MemLdRfVar from_stack_1.global_60
  loc_BF7331: LdPrVar
  loc_BF7333: LateMemCall
  loc_BF7339: LitVarStr var_A4, "<p>&nbsp;</p>"
  loc_BF733E: PopAdLdVar
  loc_BF733F: FLdPr Me
  loc_BF7342: MemLdRfVar from_stack_1.global_60
  loc_BF7345: LdPrVar
  loc_BF7347: LateMemCall
  loc_BF734D: LitVarStr var_A4, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BF7352: PopAdLdVar
  loc_BF7353: FLdPr Me
  loc_BF7356: MemLdRfVar from_stack_1.global_60
  loc_BF7359: LdPrVar
  loc_BF735B: LateMemCall
  loc_BF7361: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_BF7366: PopAdLdVar
  loc_BF7367: FLdPr Me
  loc_BF736A: MemLdRfVar from_stack_1.global_60
  loc_BF736D: LdPrVar
  loc_BF736F: LateMemCall
  loc_BF7375: LitVarStr var_A4, "    <th>Nombre del Archivo</th>"
  loc_BF737A: PopAdLdVar
  loc_BF737B: FLdPr Me
  loc_BF737E: MemLdRfVar from_stack_1.global_60
  loc_BF7381: LdPrVar
  loc_BF7383: LateMemCall
  loc_BF7389: LitVarStr var_A4, "    <th>Cant. Registros</th>"
  loc_BF738E: PopAdLdVar
  loc_BF738F: FLdPr Me
  loc_BF7392: MemLdRfVar from_stack_1.global_60
  loc_BF7395: LdPrVar
  loc_BF7397: LateMemCall
  loc_BF739D: LitVarStr var_A4, "  </tr>"
  loc_BF73A2: PopAdLdVar
  loc_BF73A3: FLdPr Me
  loc_BF73A6: MemLdRfVar from_stack_1.global_60
  loc_BF73A9: LdPrVar
  loc_BF73AB: LateMemCall
  loc_BF73B1: FLdPr Me
  loc_BF73B4: MemLdStr global_88
  loc_BF73B7: FLdPr Me
  loc_BF73BA: MemLdStr global_84
  loc_BF73BD: AryLock
  loc_BF73C0: Ary1LdRf
  loc_BF73C1: FStR4 var_DC
  loc_BF73C4: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BF73C9: PopAdLdVar
  loc_BF73CA: FLdPr Me
  loc_BF73CD: MemLdRfVar from_stack_1.global_60
  loc_BF73D0: LdPrVar
  loc_BF73D2: LateMemCall
  loc_BF73D8: FLdRfVar var_D0
  loc_BF73DB: FLdPr Me
  loc_BF73DE:  = Me.Caption
  loc_BF73E3: LitStr vbNullString
  loc_BF73E6: LitI2_Byte 0
  loc_BF73E8: LitI2_Byte 0
  loc_BF73EA: LitI2_Byte 0
  loc_BF73EC: LitStr "left"
  loc_BF73EF: ILdRf var_D0
  loc_BF73F2: LitStr " - "
  loc_BF73F5: ConcatStr
  loc_BF73F6: FStStrNoPop var_D4
  loc_BF73F9: FMemLdR4 var_DC(0)
  loc_BF73FE: ConcatStr
  loc_BF73FF: FStStrNoPop var_E0
  loc_BF7402: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7407: CVarStr var_CC
  loc_BF740A: PopAdLdVar
  loc_BF740B: FLdPr Me
  loc_BF740E: MemLdRfVar from_stack_1.global_60
  loc_BF7411: LdPrVar
  loc_BF7413: LateMemCall
  loc_BF7419: FFreeStr var_D0 = "": var_D4 = ""
  loc_BF7422: FFree1Var var_CC = ""
  loc_BF7425: LitStr vbNullString
  loc_BF7428: LitI2_Byte 0
  loc_BF742A: LitI2_Byte 0
  loc_BF742C: LitI2_Byte 0
  loc_BF742E: LitStr "right"
  loc_BF7431: FMemLdR4 var_DC(56)
  loc_BF7436: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF743B: CVarStr var_CC
  loc_BF743E: PopAdLdVar
  loc_BF743F: FLdPr Me
  loc_BF7442: MemLdRfVar from_stack_1.global_60
  loc_BF7445: LdPrVar
  loc_BF7447: LateMemCall
  loc_BF744D: FFree1Var var_CC = ""
  loc_BF7450: LitVarStr var_A4, "     </tr>"
  loc_BF7455: PopAdLdVar
  loc_BF7456: FLdPr Me
  loc_BF7459: MemLdRfVar from_stack_1.global_60
  loc_BF745C: LdPrVar
  loc_BF745E: LateMemCall
  loc_BF7464: LitI4 0
  loc_BF7469: FStR4 var_DC
  loc_BF746C: AryUnlock
  loc_BF746F: LitVarStr var_A4, "</table>"
  loc_BF7474: PopAdLdVar
  loc_BF7475: FLdPr Me
  loc_BF7478: MemLdRfVar from_stack_1.global_60
  loc_BF747B: LdPrVar
  loc_BF747D: LateMemCall
  loc_BF7483: FLdPr Me
  loc_BF7486: MemLdRfVar from_stack_1.global_88
  loc_BF7489: NextI4 var_94, loc_BF7056
  loc_BF748E: FLdRfVar var_8A
  loc_BF7491: FLdPr Me
  loc_BF7494: VCallAd Control_ID_SepararOpt
  loc_BF7497: FStAdFunc var_88
  loc_BF749A: FLdPr var_88
  loc_BF749D:  = Me.Value
  loc_BF74A2: FLdI2 var_8A
  loc_BF74A5: CI4UI1
  loc_BF74A6: LitI4 0
  loc_BF74AB: EqI4
  loc_BF74AC: FFree1Ad var_88
  loc_BF74AF: BranchF loc_BF7834
  loc_BF74B2: LitVarStr var_A4, "  <tr valign=""top"" class=""Totales"">"
  loc_BF74B7: PopAdLdVar
  loc_BF74B8: FLdPr Me
  loc_BF74BB: MemLdRfVar from_stack_1.global_60
  loc_BF74BE: LdPrVar
  loc_BF74C0: LateMemCall
  loc_BF74C6: LitVarStr var_A4, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_BF74CB: PopAdLdVar
  loc_BF74CC: FLdPr Me
  loc_BF74CF: MemLdRfVar from_stack_1.global_60
  loc_BF74D2: LdPrVar
  loc_BF74D4: LateMemCall
  loc_BF74DA: LitI4 1
  loc_BF74DF: FLdPr Me
  loc_BF74E2: MemLdStr global_92
  loc_BF74E5: AryLock
  loc_BF74E8: Ary1LdRf
  loc_BF74E9: FStR4 var_E8
  loc_BF74EC: LitStr vbNullString
  loc_BF74EF: LitI2_Byte 0
  loc_BF74F1: LitI2_Byte 0
  loc_BF74F3: LitI2_Byte 0
  loc_BF74F5: LitStr "right"
  loc_BF74F8: FMemLdR4 var_E8(12)
  loc_BF74FD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7502: CVarStr var_CC
  loc_BF7505: PopAdLdVar
  loc_BF7506: FLdPr Me
  loc_BF7509: MemLdRfVar from_stack_1.global_60
  loc_BF750C: LdPrVar
  loc_BF750E: LateMemCall
  loc_BF7514: FFree1Var var_CC = ""
  loc_BF7517: LitStr vbNullString
  loc_BF751A: LitI2_Byte 0
  loc_BF751C: LitI2_Byte 0
  loc_BF751E: LitI2_Byte 0
  loc_BF7520: LitStr "right"
  loc_BF7523: FMemLdR4 var_E8(16)
  loc_BF7528: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF752D: CVarStr var_CC
  loc_BF7530: PopAdLdVar
  loc_BF7531: FLdPr Me
  loc_BF7534: MemLdRfVar from_stack_1.global_60
  loc_BF7537: LdPrVar
  loc_BF7539: LateMemCall
  loc_BF753F: FFree1Var var_CC = ""
  loc_BF7542: LitStr vbNullString
  loc_BF7545: LitI2_Byte 0
  loc_BF7547: LitI2_Byte 0
  loc_BF7549: LitI2_Byte 0
  loc_BF754B: LitStr "right"
  loc_BF754E: FMemLdR4 var_E8(20)
  loc_BF7553: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7558: CVarStr var_CC
  loc_BF755B: PopAdLdVar
  loc_BF755C: FLdPr Me
  loc_BF755F: MemLdRfVar from_stack_1.global_60
  loc_BF7562: LdPrVar
  loc_BF7564: LateMemCall
  loc_BF756A: FFree1Var var_CC = ""
  loc_BF756D: LitStr vbNullString
  loc_BF7570: LitI2_Byte 0
  loc_BF7572: LitI2_Byte 0
  loc_BF7574: LitI2_Byte 0
  loc_BF7576: LitStr "right"
  loc_BF7579: FMemLdR4 var_E8(24)
  loc_BF757E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7583: CVarStr var_CC
  loc_BF7586: PopAdLdVar
  loc_BF7587: FLdPr Me
  loc_BF758A: MemLdRfVar from_stack_1.global_60
  loc_BF758D: LdPrVar
  loc_BF758F: LateMemCall
  loc_BF7595: FFree1Var var_CC = ""
  loc_BF7598: LitStr vbNullString
  loc_BF759B: LitI2_Byte 0
  loc_BF759D: LitI2_Byte 0
  loc_BF759F: LitI2_Byte 0
  loc_BF75A1: LitStr "right"
  loc_BF75A4: FMemLdR4 var_E8(28)
  loc_BF75A9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF75AE: CVarStr var_CC
  loc_BF75B1: PopAdLdVar
  loc_BF75B2: FLdPr Me
  loc_BF75B5: MemLdRfVar from_stack_1.global_60
  loc_BF75B8: LdPrVar
  loc_BF75BA: LateMemCall
  loc_BF75C0: FFree1Var var_CC = ""
  loc_BF75C3: LitStr vbNullString
  loc_BF75C6: LitI2_Byte 0
  loc_BF75C8: LitI2_Byte 0
  loc_BF75CA: LitI2_Byte 0
  loc_BF75CC: LitStr "right"
  loc_BF75CF: FMemLdR4 var_E8(32)
  loc_BF75D4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF75D9: CVarStr var_CC
  loc_BF75DC: PopAdLdVar
  loc_BF75DD: FLdPr Me
  loc_BF75E0: MemLdRfVar from_stack_1.global_60
  loc_BF75E3: LdPrVar
  loc_BF75E5: LateMemCall
  loc_BF75EB: FFree1Var var_CC = ""
  loc_BF75EE: LitStr vbNullString
  loc_BF75F1: LitI2_Byte 0
  loc_BF75F3: LitI2_Byte 0
  loc_BF75F5: LitI2_Byte 0
  loc_BF75F7: LitStr "right"
  loc_BF75FA: FMemLdR4 var_E8(36)
  loc_BF75FF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7604: CVarStr var_CC
  loc_BF7607: PopAdLdVar
  loc_BF7608: FLdPr Me
  loc_BF760B: MemLdRfVar from_stack_1.global_60
  loc_BF760E: LdPrVar
  loc_BF7610: LateMemCall
  loc_BF7616: FFree1Var var_CC = ""
  loc_BF7619: LitStr vbNullString
  loc_BF761C: LitI2_Byte 0
  loc_BF761E: LitI2_Byte 0
  loc_BF7620: LitI2_Byte 0
  loc_BF7622: LitStr "right"
  loc_BF7625: FMemLdR4 var_E8(40)
  loc_BF762A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF762F: CVarStr var_CC
  loc_BF7632: PopAdLdVar
  loc_BF7633: FLdPr Me
  loc_BF7636: MemLdRfVar from_stack_1.global_60
  loc_BF7639: LdPrVar
  loc_BF763B: LateMemCall
  loc_BF7641: FFree1Var var_CC = ""
  loc_BF7644: LitStr vbNullString
  loc_BF7647: LitI2_Byte 0
  loc_BF7649: LitI2_Byte 0
  loc_BF764B: LitI2_Byte 0
  loc_BF764D: LitStr "right"
  loc_BF7650: FMemLdR4 var_E8(44)
  loc_BF7655: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF765A: CVarStr var_CC
  loc_BF765D: PopAdLdVar
  loc_BF765E: FLdPr Me
  loc_BF7661: MemLdRfVar from_stack_1.global_60
  loc_BF7664: LdPrVar
  loc_BF7666: LateMemCall
  loc_BF766C: FFree1Var var_CC = ""
  loc_BF766F: LitStr vbNullString
  loc_BF7672: LitI2_Byte 0
  loc_BF7674: LitI2_Byte 0
  loc_BF7676: LitI2_Byte 0
  loc_BF7678: LitStr "right"
  loc_BF767B: FMemLdR4 var_E8(48)
  loc_BF7680: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF7685: CVarStr var_CC
  loc_BF7688: PopAdLdVar
  loc_BF7689: FLdPr Me
  loc_BF768C: MemLdRfVar from_stack_1.global_60
  loc_BF768F: LdPrVar
  loc_BF7691: LateMemCall
  loc_BF7697: FFree1Var var_CC = ""
  loc_BF769A: LitI4 0
  loc_BF769F: FStR4 var_E8
  loc_BF76A2: AryUnlock
  loc_BF76A5: LitVarStr var_A4, "     </tr>"
  loc_BF76AA: PopAdLdVar
  loc_BF76AB: FLdPr Me
  loc_BF76AE: MemLdRfVar from_stack_1.global_60
  loc_BF76B1: LdPrVar
  loc_BF76B3: LateMemCall
  loc_BF76B9: LitVarStr var_A4, "</table>"
  loc_BF76BE: PopAdLdVar
  loc_BF76BF: FLdPr Me
  loc_BF76C2: MemLdRfVar from_stack_1.global_60
  loc_BF76C5: LdPrVar
  loc_BF76C7: LateMemCall
  loc_BF76CD: LitVarStr var_A4, "<p>&nbsp;</p>"
  loc_BF76D2: PopAdLdVar
  loc_BF76D3: FLdPr Me
  loc_BF76D6: MemLdRfVar from_stack_1.global_60
  loc_BF76D9: LdPrVar
  loc_BF76DB: LateMemCall
  loc_BF76E1: LitStr "Municipalidad de Guaymallén"
  loc_BF76E4: LitStr "Municipalidad de Guaymallén"
  loc_BF76E7: NeStr
  loc_BF76E9: BranchF loc_BF7834
  loc_BF76EC: LitVarStr var_A4, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BF76F1: PopAdLdVar
  loc_BF76F2: FLdPr Me
  loc_BF76F5: MemLdRfVar from_stack_1.global_60
  loc_BF76F8: LdPrVar
  loc_BF76FA: LateMemCall
  loc_BF7700: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_BF7705: PopAdLdVar
  loc_BF7706: FLdPr Me
  loc_BF7709: MemLdRfVar from_stack_1.global_60
  loc_BF770C: LdPrVar
  loc_BF770E: LateMemCall
  loc_BF7714: LitVarStr var_A4, "    <th>Nombre del Archivo</th>"
  loc_BF7719: PopAdLdVar
  loc_BF771A: FLdPr Me
  loc_BF771D: MemLdRfVar from_stack_1.global_60
  loc_BF7720: LdPrVar
  loc_BF7722: LateMemCall
  loc_BF7728: LitVarStr var_A4, "    <th>Cant. Registros</th>"
  loc_BF772D: PopAdLdVar
  loc_BF772E: FLdPr Me
  loc_BF7731: MemLdRfVar from_stack_1.global_60
  loc_BF7734: LdPrVar
  loc_BF7736: LateMemCall
  loc_BF773C: LitVarStr var_A4, "  </tr>"
  loc_BF7741: PopAdLdVar
  loc_BF7742: FLdPr Me
  loc_BF7745: MemLdRfVar from_stack_1.global_60
  loc_BF7748: LdPrVar
  loc_BF774A: LateMemCall
  loc_BF7750: LitI4 1
  loc_BF7755: FLdPr Me
  loc_BF7758: MemLdRfVar from_stack_1.global_88
  loc_BF775B: FLdPr Me
  loc_BF775E: MemLdStr global_84
  loc_BF7761: LitI2_Byte 1
  loc_BF7763: FnUBound
  loc_BF7765: ForI4 var_F0
  loc_BF776B: FLdPr Me
  loc_BF776E: MemLdStr global_88
  loc_BF7771: FLdPr Me
  loc_BF7774: MemLdStr global_84
  loc_BF7777: AryLock
  loc_BF777A: Ary1LdRf
  loc_BF777B: FStR4 var_F8
  loc_BF777E: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BF7783: PopAdLdVar
  loc_BF7784: FLdPr Me
  loc_BF7787: MemLdRfVar from_stack_1.global_60
  loc_BF778A: LdPrVar
  loc_BF778C: LateMemCall
  loc_BF7792: FLdRfVar var_D0
  loc_BF7795: FLdPr Me
  loc_BF7798:  = Me.Caption
  loc_BF779D: LitStr vbNullString
  loc_BF77A0: LitI2_Byte 0
  loc_BF77A2: LitI2_Byte 0
  loc_BF77A4: LitI2_Byte 0
  loc_BF77A6: LitStr "left"
  loc_BF77A9: ILdRf var_D0
  loc_BF77AC: LitStr " - "
  loc_BF77AF: ConcatStr
  loc_BF77B0: FStStrNoPop var_D4
  loc_BF77B3: FMemLdR4 var_F8(0)
  loc_BF77B8: ConcatStr
  loc_BF77B9: FStStrNoPop var_E0
  loc_BF77BC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF77C1: CVarStr var_CC
  loc_BF77C4: PopAdLdVar
  loc_BF77C5: FLdPr Me
  loc_BF77C8: MemLdRfVar from_stack_1.global_60
  loc_BF77CB: LdPrVar
  loc_BF77CD: LateMemCall
  loc_BF77D3: FFreeStr var_D0 = "": var_D4 = ""
  loc_BF77DC: FFree1Var var_CC = ""
  loc_BF77DF: LitStr vbNullString
  loc_BF77E2: LitI2_Byte 0
  loc_BF77E4: LitI2_Byte 0
  loc_BF77E6: LitI2_Byte 0
  loc_BF77E8: LitStr "right"
  loc_BF77EB: FMemLdR4 var_F8(56)
  loc_BF77F0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BF77F5: CVarStr var_CC
  loc_BF77F8: PopAdLdVar
  loc_BF77F9: FLdPr Me
  loc_BF77FC: MemLdRfVar from_stack_1.global_60
  loc_BF77FF: LdPrVar
  loc_BF7801: LateMemCall
  loc_BF7807: FFree1Var var_CC = ""
  loc_BF780A: LitVarStr var_A4, "     </tr>"
  loc_BF780F: PopAdLdVar
  loc_BF7810: FLdPr Me
  loc_BF7813: MemLdRfVar from_stack_1.global_60
  loc_BF7816: LdPrVar
  loc_BF7818: LateMemCall
  loc_BF781E: LitI4 0
  loc_BF7823: FStR4 var_F8
  loc_BF7826: AryUnlock
  loc_BF7829: FLdPr Me
  loc_BF782C: MemLdRfVar from_stack_1.global_88
  loc_BF782F: NextI4 var_F0, loc_BF776B
  loc_BF7834: LitVarStr var_A4, "</table>"
  loc_BF7839: PopAdLdVar
  loc_BF783A: FLdPr Me
  loc_BF783D: MemLdRfVar from_stack_1.global_60
  loc_BF7840: LdPrVar
  loc_BF7842: LateMemCall
  loc_BF7848: Call Proc_310_25_9F77F0()
  loc_BF784D: FLdPr Me
  loc_BF7850: MemLdRfVar from_stack_1.global_60
  loc_BF7853: LdPrVar
  loc_BF7855: LateMemCall
  loc_BF785B: LitStr vbNullString
  loc_BF785E: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BF7863: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9BEF2C
  'Data Table: 4B2668
  loc_9BEF14: LitI2_Byte 0
  loc_9BEF16: FLdPr Me
  loc_9BEF19: MemStI2 bLogos
  loc_9BEF1C: Call GeneraHTML()
  loc_9BEF21: LitI2_Byte &HFF
  loc_9BEF23: FLdPr Me
  loc_9BEF26: MemStI2 bLogos
  loc_9BEF29: ExitProcHresult
End Sub

Private Function Proc_310_23_B5670C() 'B5670C
  'Data Table: 4B2668
  loc_B56324: LitVarStr var_98, "<html>"
  loc_B56329: PopAdLdVar
  loc_B5632A: FLdPr Me
  loc_B5632D: MemLdRfVar from_stack_1.global_60
  loc_B56330: LdPrVar
  loc_B56332: LateMemCall
  loc_B56338: LitVarStr var_98, "<head>"
  loc_B5633D: PopAdLdVar
  loc_B5633E: FLdPr Me
  loc_B56341: MemLdRfVar from_stack_1.global_60
  loc_B56344: LdPrVar
  loc_B56346: LateMemCall
  loc_B5634C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B56351: PopAdLdVar
  loc_B56352: FLdPr Me
  loc_B56355: MemLdRfVar from_stack_1.global_60
  loc_B56358: LdPrVar
  loc_B5635A: LateMemCall
  loc_B56360: LitStr "<title>"
  loc_B56363: FLdRfVar var_AC
  loc_B56366: FLdPr Me
  loc_B56369:  = Me.Caption
  loc_B5636E: ILdRf var_AC
  loc_B56371: ConcatStr
  loc_B56372: FStStrNoPop var_B0
  loc_B56375: LitStr "</title>"
  loc_B56378: ConcatStr
  loc_B56379: CVarStr var_C0
  loc_B5637C: PopAdLdVar
  loc_B5637D: FLdPr Me
  loc_B56380: MemLdRfVar from_stack_1.global_60
  loc_B56383: LdPrVar
  loc_B56385: LateMemCall
  loc_B5638B: FFreeStr var_AC = ""
  loc_B56392: FFree1Var var_C0 = ""
  loc_B56395: LitVarStr var_98, "<style type=""text/css"">"
  loc_B5639A: PopAdLdVar
  loc_B5639B: FLdPr Me
  loc_B5639E: MemLdRfVar from_stack_1.global_60
  loc_B563A1: LdPrVar
  loc_B563A3: LateMemCall
  loc_B563A9: LitVarStr var_98, ".Titulo1 {"
  loc_B563AE: PopAdLdVar
  loc_B563AF: FLdPr Me
  loc_B563B2: MemLdRfVar from_stack_1.global_60
  loc_B563B5: LdPrVar
  loc_B563B7: LateMemCall
  loc_B563BD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B563C2: PopAdLdVar
  loc_B563C3: FLdPr Me
  loc_B563C6: MemLdRfVar from_stack_1.global_60
  loc_B563C9: LdPrVar
  loc_B563CB: LateMemCall
  loc_B563D1: LitVarStr var_98, " font-size: 18px;"
  loc_B563D6: PopAdLdVar
  loc_B563D7: FLdPr Me
  loc_B563DA: MemLdRfVar from_stack_1.global_60
  loc_B563DD: LdPrVar
  loc_B563DF: LateMemCall
  loc_B563E5: LitVarStr var_98, " font-weight: bold;"
  loc_B563EA: PopAdLdVar
  loc_B563EB: FLdPr Me
  loc_B563EE: MemLdRfVar from_stack_1.global_60
  loc_B563F1: LdPrVar
  loc_B563F3: LateMemCall
  loc_B563F9: LitVarStr var_98, "}"
  loc_B563FE: PopAdLdVar
  loc_B563FF: FLdPr Me
  loc_B56402: MemLdRfVar from_stack_1.global_60
  loc_B56405: LdPrVar
  loc_B56407: LateMemCall
  loc_B5640D: LitVarStr var_98, ".Titulo2 {"
  loc_B56412: PopAdLdVar
  loc_B56413: FLdPr Me
  loc_B56416: MemLdRfVar from_stack_1.global_60
  loc_B56419: LdPrVar
  loc_B5641B: LateMemCall
  loc_B56421: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B56426: PopAdLdVar
  loc_B56427: FLdPr Me
  loc_B5642A: MemLdRfVar from_stack_1.global_60
  loc_B5642D: LdPrVar
  loc_B5642F: LateMemCall
  loc_B56435: LitVarStr var_98, " font-size: 14px;"
  loc_B5643A: PopAdLdVar
  loc_B5643B: FLdPr Me
  loc_B5643E: MemLdRfVar from_stack_1.global_60
  loc_B56441: LdPrVar
  loc_B56443: LateMemCall
  loc_B56449: LitVarStr var_98, " font-weight: bold;"
  loc_B5644E: PopAdLdVar
  loc_B5644F: FLdPr Me
  loc_B56452: MemLdRfVar from_stack_1.global_60
  loc_B56455: LdPrVar
  loc_B56457: LateMemCall
  loc_B5645D: LitVarStr var_98, "}"
  loc_B56462: PopAdLdVar
  loc_B56463: FLdPr Me
  loc_B56466: MemLdRfVar from_stack_1.global_60
  loc_B56469: LdPrVar
  loc_B5646B: LateMemCall
  loc_B56471: LitVarStr var_98, ".Normal {"
  loc_B56476: PopAdLdVar
  loc_B56477: FLdPr Me
  loc_B5647A: MemLdRfVar from_stack_1.global_60
  loc_B5647D: LdPrVar
  loc_B5647F: LateMemCall
  loc_B56485: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B5648A: PopAdLdVar
  loc_B5648B: FLdPr Me
  loc_B5648E: MemLdRfVar from_stack_1.global_60
  loc_B56491: LdPrVar
  loc_B56493: LateMemCall
  loc_B56499: LitVarStr var_98, " font-size: 12px;"
  loc_B5649E: PopAdLdVar
  loc_B5649F: FLdPr Me
  loc_B564A2: MemLdRfVar from_stack_1.global_60
  loc_B564A5: LdPrVar
  loc_B564A7: LateMemCall
  loc_B564AD: LitVarStr var_98, " font-style: normal;"
  loc_B564B2: PopAdLdVar
  loc_B564B3: FLdPr Me
  loc_B564B6: MemLdRfVar from_stack_1.global_60
  loc_B564B9: LdPrVar
  loc_B564BB: LateMemCall
  loc_B564C1: LitVarStr var_98, " font-weight: normal;"
  loc_B564C6: PopAdLdVar
  loc_B564C7: FLdPr Me
  loc_B564CA: MemLdRfVar from_stack_1.global_60
  loc_B564CD: LdPrVar
  loc_B564CF: LateMemCall
  loc_B564D5: LitVarStr var_98, " font-variant: normal;"
  loc_B564DA: PopAdLdVar
  loc_B564DB: FLdPr Me
  loc_B564DE: MemLdRfVar from_stack_1.global_60
  loc_B564E1: LdPrVar
  loc_B564E3: LateMemCall
  loc_B564E9: LitVarStr var_98, "}"
  loc_B564EE: PopAdLdVar
  loc_B564EF: FLdPr Me
  loc_B564F2: MemLdRfVar from_stack_1.global_60
  loc_B564F5: LdPrVar
  loc_B564F7: LateMemCall
  loc_B564FD: LitVarStr var_98, ".Encabezado {"
  loc_B56502: PopAdLdVar
  loc_B56503: FLdPr Me
  loc_B56506: MemLdRfVar from_stack_1.global_60
  loc_B56509: LdPrVar
  loc_B5650B: LateMemCall
  loc_B56511: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_B56516: PopAdLdVar
  loc_B56517: FLdPr Me
  loc_B5651A: MemLdRfVar from_stack_1.global_60
  loc_B5651D: LdPrVar
  loc_B5651F: LateMemCall
  loc_B56525: LitVarStr var_98, " font-size: 14px;"
  loc_B5652A: PopAdLdVar
  loc_B5652B: FLdPr Me
  loc_B5652E: MemLdRfVar from_stack_1.global_60
  loc_B56531: LdPrVar
  loc_B56533: LateMemCall
  loc_B56539: LitVarStr var_98, " font-weight: bold;"
  loc_B5653E: PopAdLdVar
  loc_B5653F: FLdPr Me
  loc_B56542: MemLdRfVar from_stack_1.global_60
  loc_B56545: LdPrVar
  loc_B56547: LateMemCall
  loc_B5654D: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_B56552: PopAdLdVar
  loc_B56553: FLdPr Me
  loc_B56556: MemLdRfVar from_stack_1.global_60
  loc_B56559: LdPrVar
  loc_B5655B: LateMemCall
  loc_B56561: LitVarStr var_98, "}"
  loc_B56566: PopAdLdVar
  loc_B56567: FLdPr Me
  loc_B5656A: MemLdRfVar from_stack_1.global_60
  loc_B5656D: LdPrVar
  loc_B5656F: LateMemCall
  loc_B56575: LitVarStr var_98, ".LineaDato {"
  loc_B5657A: PopAdLdVar
  loc_B5657B: FLdPr Me
  loc_B5657E: MemLdRfVar from_stack_1.global_60
  loc_B56581: LdPrVar
  loc_B56583: LateMemCall
  loc_B56589: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B5658E: PopAdLdVar
  loc_B5658F: FLdPr Me
  loc_B56592: MemLdRfVar from_stack_1.global_60
  loc_B56595: LdPrVar
  loc_B56597: LateMemCall
  loc_B5659D: LitVarStr var_98, " font-size: 12px;"
  loc_B565A2: PopAdLdVar
  loc_B565A3: FLdPr Me
  loc_B565A6: MemLdRfVar from_stack_1.global_60
  loc_B565A9: LdPrVar
  loc_B565AB: LateMemCall
  loc_B565B1: LitVarStr var_98, "}"
  loc_B565B6: PopAdLdVar
  loc_B565B7: FLdPr Me
  loc_B565BA: MemLdRfVar from_stack_1.global_60
  loc_B565BD: LdPrVar
  loc_B565BF: LateMemCall
  loc_B565C5: LitVarStr var_98, ".Totales {"
  loc_B565CA: PopAdLdVar
  loc_B565CB: FLdPr Me
  loc_B565CE: MemLdRfVar from_stack_1.global_60
  loc_B565D1: LdPrVar
  loc_B565D3: LateMemCall
  loc_B565D9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B565DE: PopAdLdVar
  loc_B565DF: FLdPr Me
  loc_B565E2: MemLdRfVar from_stack_1.global_60
  loc_B565E5: LdPrVar
  loc_B565E7: LateMemCall
  loc_B565ED: LitVarStr var_98, " font-size: 14px;"
  loc_B565F2: PopAdLdVar
  loc_B565F3: FLdPr Me
  loc_B565F6: MemLdRfVar from_stack_1.global_60
  loc_B565F9: LdPrVar
  loc_B565FB: LateMemCall
  loc_B56601: LitVarStr var_98, " font-weight: bold;"
  loc_B56606: PopAdLdVar
  loc_B56607: FLdPr Me
  loc_B5660A: MemLdRfVar from_stack_1.global_60
  loc_B5660D: LdPrVar
  loc_B5660F: LateMemCall
  loc_B56615: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B5661A: PopAdLdVar
  loc_B5661B: FLdPr Me
  loc_B5661E: MemLdRfVar from_stack_1.global_60
  loc_B56621: LdPrVar
  loc_B56623: LateMemCall
  loc_B56629: LitVarStr var_98, "}"
  loc_B5662E: PopAdLdVar
  loc_B5662F: FLdPr Me
  loc_B56632: MemLdRfVar from_stack_1.global_60
  loc_B56635: LdPrVar
  loc_B56637: LateMemCall
  loc_B5663D: LitVarStr var_98, ".SubTotales {"
  loc_B56642: PopAdLdVar
  loc_B56643: FLdPr Me
  loc_B56646: MemLdRfVar from_stack_1.global_60
  loc_B56649: LdPrVar
  loc_B5664B: LateMemCall
  loc_B56651: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B56656: PopAdLdVar
  loc_B56657: FLdPr Me
  loc_B5665A: MemLdRfVar from_stack_1.global_60
  loc_B5665D: LdPrVar
  loc_B5665F: LateMemCall
  loc_B56665: LitVarStr var_98, " font-size: 10px;"
  loc_B5666A: PopAdLdVar
  loc_B5666B: FLdPr Me
  loc_B5666E: MemLdRfVar from_stack_1.global_60
  loc_B56671: LdPrVar
  loc_B56673: LateMemCall
  loc_B56679: LitVarStr var_98, " font-weight: bold;"
  loc_B5667E: PopAdLdVar
  loc_B5667F: FLdPr Me
  loc_B56682: MemLdRfVar from_stack_1.global_60
  loc_B56685: LdPrVar
  loc_B56687: LateMemCall
  loc_B5668D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B56692: PopAdLdVar
  loc_B56693: FLdPr Me
  loc_B56696: MemLdRfVar from_stack_1.global_60
  loc_B56699: LdPrVar
  loc_B5669B: LateMemCall
  loc_B566A1: LitVarStr var_98, "}"
  loc_B566A6: PopAdLdVar
  loc_B566A7: FLdPr Me
  loc_B566AA: MemLdRfVar from_stack_1.global_60
  loc_B566AD: LdPrVar
  loc_B566AF: LateMemCall
  loc_B566B5: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_B566BA: PopAdLdVar
  loc_B566BB: FLdPr Me
  loc_B566BE: MemLdRfVar from_stack_1.global_60
  loc_B566C1: LdPrVar
  loc_B566C3: LateMemCall
  loc_B566C9: LitVarStr var_98, "</style>"
  loc_B566CE: PopAdLdVar
  loc_B566CF: FLdPr Me
  loc_B566D2: MemLdRfVar from_stack_1.global_60
  loc_B566D5: LdPrVar
  loc_B566D7: LateMemCall
  loc_B566DD: LitI4 0
  loc_B566E2: FStStrCopy var_B0
  loc_B566E5: FLdRfVar var_B0
  loc_B566E8: LitI4 0
  loc_B566ED: FStStrCopy var_AC
  loc_B566F0: FLdRfVar var_AC
  loc_B566F3: LitI2_Byte &HFF
  loc_B566F5: PopTmpLdAd2 var_C2
  loc_B566F8: FLdPr Me
  loc_B566FB: MemLdRfVar from_stack_1.global_60
  loc_B566FE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B56703: FFreeStr var_AC = ""
  loc_B5670A: ExitProcHresult
End Function

Private Function Proc_310_24_B6CEDC() 'B6CEDC
  'Data Table: 4B2668
  loc_B6CA50: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B6CA55: PopAdLdVar
  loc_B6CA56: FLdPr Me
  loc_B6CA59: MemLdRfVar from_stack_1.global_60
  loc_B6CA5C: LdPrVar
  loc_B6CA5E: LateMemCall
  loc_B6CA64: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_B6CA69: PopAdLdVar
  loc_B6CA6A: FLdPr Me
  loc_B6CA6D: MemLdRfVar from_stack_1.global_60
  loc_B6CA70: LdPrVar
  loc_B6CA72: LateMemCall
  loc_B6CA78: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_B6CA7D: PopAdLdVar
  loc_B6CA7E: FLdPr Me
  loc_B6CA81: MemLdRfVar from_stack_1.global_60
  loc_B6CA84: LdPrVar
  loc_B6CA86: LateMemCall
  loc_B6CA8C: FLdPr Me
  loc_B6CA8F: MemLdI2 bLogos
  loc_B6CA92: BranchF loc_B6CAED
  loc_B6CA95: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B6CA98: LitI2_Byte &H5F
  loc_B6CA9A: CStrUI1
  loc_B6CA9C: FStStrNoPop var_A8
  loc_B6CA9F: ConcatStr
  loc_B6CAA0: FStStrNoPop var_AC
  loc_B6CAA3: LitStr """ height="""
  loc_B6CAA6: ConcatStr
  loc_B6CAA7: FStStrNoPop var_B0
  loc_B6CAAA: LitI2_Byte &H3C
  loc_B6CAAC: CStrUI1
  loc_B6CAAE: FStStrNoPop var_B4
  loc_B6CAB1: ConcatStr
  loc_B6CAB2: FStStrNoPop var_B8
  loc_B6CAB5: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B6CAB8: ConcatStr
  loc_B6CAB9: FStStrNoPop var_BC
  loc_B6CABC: LitStr "Municipalidad de Guaymallén"
  loc_B6CABF: ConcatStr
  loc_B6CAC0: FStStrNoPop var_C0
  loc_B6CAC3: LitStr "</p>"
  loc_B6CAC6: ConcatStr
  loc_B6CAC7: CVarStr var_D0
  loc_B6CACA: PopAdLdVar
  loc_B6CACB: FLdPr Me
  loc_B6CACE: MemLdRfVar from_stack_1.global_60
  loc_B6CAD1: LdPrVar
  loc_B6CAD3: LateMemCall
  loc_B6CAD9: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B6CAEA: FFree1Var var_D0 = ""
  loc_B6CAED: LitStr "    <p>"
  loc_B6CAF0: FLdRfVar var_A8
  loc_B6CAF3: FLdPr Me
  loc_B6CAF6:  = Me.Caption
  loc_B6CAFB: ILdRf var_A8
  loc_B6CAFE: ConcatStr
  loc_B6CAFF: FStStrNoPop var_AC
  loc_B6CB02: LitStr "</p></th>"
  loc_B6CB05: ConcatStr
  loc_B6CB06: CVarStr var_D0
  loc_B6CB09: PopAdLdVar
  loc_B6CB0A: FLdPr Me
  loc_B6CB0D: MemLdRfVar from_stack_1.global_60
  loc_B6CB10: LdPrVar
  loc_B6CB12: LateMemCall
  loc_B6CB18: FFreeStr var_A8 = ""
  loc_B6CB1F: FFree1Var var_D0 = ""
  loc_B6CB22: LitVarStr var_94, "  </tr>"
  loc_B6CB27: PopAdLdVar
  loc_B6CB28: FLdPr Me
  loc_B6CB2B: MemLdRfVar from_stack_1.global_60
  loc_B6CB2E: LdPrVar
  loc_B6CB30: LateMemCall
  loc_B6CB36: LitVarStr var_94, "  <tr>"
  loc_B6CB3B: PopAdLdVar
  loc_B6CB3C: FLdPr Me
  loc_B6CB3F: MemLdRfVar from_stack_1.global_60
  loc_B6CB42: LdPrVar
  loc_B6CB44: LateMemCall
  loc_B6CB4A: LitVarStr var_94, "    <th><hr></th>"
  loc_B6CB4F: PopAdLdVar
  loc_B6CB50: FLdPr Me
  loc_B6CB53: MemLdRfVar from_stack_1.global_60
  loc_B6CB56: LdPrVar
  loc_B6CB58: LateMemCall
  loc_B6CB5E: LitVarStr var_94, "  </tr>"
  loc_B6CB63: PopAdLdVar
  loc_B6CB64: FLdPr Me
  loc_B6CB67: MemLdRfVar from_stack_1.global_60
  loc_B6CB6A: LdPrVar
  loc_B6CB6C: LateMemCall
  loc_B6CB72: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_B6CB77: PopAdLdVar
  loc_B6CB78: FLdPr Me
  loc_B6CB7B: MemLdRfVar from_stack_1.global_60
  loc_B6CB7E: LdPrVar
  loc_B6CB80: LateMemCall
  loc_B6CB86: LitStr "    <td align=""left"" valign=""top""><strong><br>Desde: </strong>"
  loc_B6CB89: FLdPr Me
  loc_B6CB8C: VCallAd Control_ID_DesdeMsk
  loc_B6CB8F: FStAdFunc var_D4
  loc_B6CB92: FLdPr var_D4
  loc_B6CB95: LateIdLdVar var_D0 DispID_15 0
  loc_B6CB9C: CStrVarTmp
  loc_B6CB9D: FStStrNoPop var_A8
  loc_B6CBA0: ConcatStr
  loc_B6CBA1: CVarStr var_E4
  loc_B6CBA4: PopAdLdVar
  loc_B6CBA5: FLdPr Me
  loc_B6CBA8: MemLdRfVar from_stack_1.global_60
  loc_B6CBAB: LdPrVar
  loc_B6CBAD: LateMemCall
  loc_B6CBB3: FFree1Str var_A8
  loc_B6CBB6: FFree1Ad var_D4
  loc_B6CBB9: FFreeVar var_D0 = ""
  loc_B6CBC0: LitStr "                                      &nbsp;&nbsp;&nbsp;&nbsp;<strong>Hasta: </strong>"
  loc_B6CBC3: FLdPr Me
  loc_B6CBC6: VCallAd Control_ID_HastaMsk
  loc_B6CBC9: FStAdFunc var_D4
  loc_B6CBCC: FLdPr var_D4
  loc_B6CBCF: LateIdLdVar var_D0 DispID_15 0
  loc_B6CBD6: CStrVarTmp
  loc_B6CBD7: FStStrNoPop var_A8
  loc_B6CBDA: ConcatStr
  loc_B6CBDB: FStStrNoPop var_AC
  loc_B6CBDE: LitStr "</td>"
  loc_B6CBE1: ConcatStr
  loc_B6CBE2: CVarStr var_E4
  loc_B6CBE5: PopAdLdVar
  loc_B6CBE6: FLdPr Me
  loc_B6CBE9: MemLdRfVar from_stack_1.global_60
  loc_B6CBEC: LdPrVar
  loc_B6CBEE: LateMemCall
  loc_B6CBF4: FFreeStr var_A8 = ""
  loc_B6CBFB: FFree1Ad var_D4
  loc_B6CBFE: FFreeVar var_D0 = ""
  loc_B6CC05: LitVarStr var_94, "  </tr>"
  loc_B6CC0A: PopAdLdVar
  loc_B6CC0B: FLdPr Me
  loc_B6CC0E: MemLdRfVar from_stack_1.global_60
  loc_B6CC11: LdPrVar
  loc_B6CC13: LateMemCall
  loc_B6CC19: LitVarStr var_94, "</table>"
  loc_B6CC1E: PopAdLdVar
  loc_B6CC1F: FLdPr Me
  loc_B6CC22: MemLdRfVar from_stack_1.global_60
  loc_B6CC25: LdPrVar
  loc_B6CC27: LateMemCall
  loc_B6CC2D: LitVarStr var_94, "<br><table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B6CC32: PopAdLdVar
  loc_B6CC33: FLdPr Me
  loc_B6CC36: MemLdRfVar from_stack_1.global_60
  loc_B6CC39: LdPrVar
  loc_B6CC3B: LateMemCall
  loc_B6CC41: LitVarStr var_94, "  <thead>"
  loc_B6CC46: PopAdLdVar
  loc_B6CC47: FLdPr Me
  loc_B6CC4A: MemLdRfVar from_stack_1.global_60
  loc_B6CC4D: LdPrVar
  loc_B6CC4F: LateMemCall
  loc_B6CC55: FLdRfVar var_E6
  loc_B6CC58: FLdPr Me
  loc_B6CC5B: VCallAd Control_ID_OptContabilidad
  loc_B6CC5E: FStAdFunc var_D4
  loc_B6CC61: FLdPr var_D4
  loc_B6CC64:  = Me.Value
  loc_B6CC69: FLdI2 var_E6
  loc_B6CC6C: LitI2_Byte &HFF
  loc_B6CC6E: EqI2
  loc_B6CC6F: FFree1Ad var_D4
  loc_B6CC72: BranchF loc_B6CD8D
  loc_B6CC75: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B6CC7A: PopAdLdVar
  loc_B6CC7B: FLdPr Me
  loc_B6CC7E: MemLdRfVar from_stack_1.global_60
  loc_B6CC81: LdPrVar
  loc_B6CC83: LateMemCall
  loc_B6CC89: LitVarStr var_94, "    <th>Cuenta Patrimonial</th>"
  loc_B6CC8E: PopAdLdVar
  loc_B6CC8F: FLdPr Me
  loc_B6CC92: MemLdRfVar from_stack_1.global_60
  loc_B6CC95: LdPrVar
  loc_B6CC97: LateMemCall
  loc_B6CC9D: LitVarStr var_94, "    <th>Concepto</th>"
  loc_B6CCA2: PopAdLdVar
  loc_B6CCA3: FLdPr Me
  loc_B6CCA6: MemLdRfVar from_stack_1.global_60
  loc_B6CCA9: LdPrVar
  loc_B6CCAB: LateMemCall
  loc_B6CCB1: LitVarStr var_94, "    <th>S. Inicial</th>"
  loc_B6CCB6: PopAdLdVar
  loc_B6CCB7: FLdPr Me
  loc_B6CCBA: MemLdRfVar from_stack_1.global_60
  loc_B6CCBD: LdPrVar
  loc_B6CCBF: LateMemCall
  loc_B6CCC5: LitVarStr var_94, "    <th>Aforos (1)</th>"
  loc_B6CCCA: PopAdLdVar
  loc_B6CCCB: FLdPr Me
  loc_B6CCCE: MemLdRfVar from_stack_1.global_60
  loc_B6CCD1: LdPrVar
  loc_B6CCD3: LateMemCall
  loc_B6CCD9: LitVarStr var_94, "    <th>Débitos (3,8,10,19,22,24)</th>"
  loc_B6CCDE: PopAdLdVar
  loc_B6CCDF: FLdPr Me
  loc_B6CCE2: MemLdRfVar from_stack_1.global_60
  loc_B6CCE5: LdPrVar
  loc_B6CCE7: LateMemCall
  loc_B6CCED: LitVarStr var_94, "    <th>Créditos (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68)</th>"
  loc_B6CCF2: PopAdLdVar
  loc_B6CCF3: FLdPr Me
  loc_B6CCF6: MemLdRfVar from_stack_1.global_60
  loc_B6CCF9: LdPrVar
  loc_B6CCFB: LateMemCall
  loc_B6CD01: LitVarStr var_94, "    <th>Pres. (12)</th>"
  loc_B6CD06: PopAdLdVar
  loc_B6CD07: FLdPr Me
  loc_B6CD0A: MemLdRfVar from_stack_1.global_60
  loc_B6CD0D: LdPrVar
  loc_B6CD0F: LateMemCall
  loc_B6CD15: LitVarStr var_94, "    <th>Condo (14).</th>"
  loc_B6CD1A: PopAdLdVar
  loc_B6CD1B: FLdPr Me
  loc_B6CD1E: MemLdRfVar from_stack_1.global_60
  loc_B6CD21: LdPrVar
  loc_B6CD23: LateMemCall
  loc_B6CD29: LitVarStr var_94, "    <th>Exenc (15).</th>"
  loc_B6CD2E: PopAdLdVar
  loc_B6CD2F: FLdPr Me
  loc_B6CD32: MemLdRfVar from_stack_1.global_60
  loc_B6CD35: LdPrVar
  loc_B6CD37: LateMemCall
  loc_B6CD3D: LitVarStr var_94, "    <th>Desc. (6,7)</th>"
  loc_B6CD42: PopAdLdVar
  loc_B6CD43: FLdPr Me
  loc_B6CD46: MemLdRfVar from_stack_1.global_60
  loc_B6CD49: LdPrVar
  loc_B6CD4B: LateMemCall
  loc_B6CD51: LitVarStr var_94, "    <th>Cobrado (2,4,5,9,21,25-26)</th>"
  loc_B6CD56: PopAdLdVar
  loc_B6CD57: FLdPr Me
  loc_B6CD5A: MemLdRfVar from_stack_1.global_60
  loc_B6CD5D: LdPrVar
  loc_B6CD5F: LateMemCall
  loc_B6CD65: LitVarStr var_94, "    <th>S. Final</th>"
  loc_B6CD6A: PopAdLdVar
  loc_B6CD6B: FLdPr Me
  loc_B6CD6E: MemLdRfVar from_stack_1.global_60
  loc_B6CD71: LdPrVar
  loc_B6CD73: LateMemCall
  loc_B6CD79: LitVarStr var_94, "  </tr>"
  loc_B6CD7E: PopAdLdVar
  loc_B6CD7F: FLdPr Me
  loc_B6CD82: MemLdRfVar from_stack_1.global_60
  loc_B6CD85: LdPrVar
  loc_B6CD87: LateMemCall
  loc_B6CD8D: FLdRfVar var_E6
  loc_B6CD90: FLdPr Me
  loc_B6CD93: VCallAd Control_ID_OptRentas
  loc_B6CD96: FStAdFunc var_D4
  loc_B6CD99: FLdPr var_D4
  loc_B6CD9C:  = Me.Value
  loc_B6CDA1: FLdI2 var_E6
  loc_B6CDA4: LitI2_Byte &HFF
  loc_B6CDA6: EqI2
  loc_B6CDA7: FFree1Ad var_D4
  loc_B6CDAA: BranchF loc_B6CEC5
  loc_B6CDAD: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B6CDB2: PopAdLdVar
  loc_B6CDB3: FLdPr Me
  loc_B6CDB6: MemLdRfVar from_stack_1.global_60
  loc_B6CDB9: LdPrVar
  loc_B6CDBB: LateMemCall
  loc_B6CDC1: LitVarStr var_94, "    <th>Cuenta Patrimonial</th>"
  loc_B6CDC6: PopAdLdVar
  loc_B6CDC7: FLdPr Me
  loc_B6CDCA: MemLdRfVar from_stack_1.global_60
  loc_B6CDCD: LdPrVar
  loc_B6CDCF: LateMemCall
  loc_B6CDD5: LitVarStr var_94, "    <th>Concepto</th>"
  loc_B6CDDA: PopAdLdVar
  loc_B6CDDB: FLdPr Me
  loc_B6CDDE: MemLdRfVar from_stack_1.global_60
  loc_B6CDE1: LdPrVar
  loc_B6CDE3: LateMemCall
  loc_B6CDE9: LitVarStr var_94, "    <th>S. Inicial</th>"
  loc_B6CDEE: PopAdLdVar
  loc_B6CDEF: FLdPr Me
  loc_B6CDF2: MemLdRfVar from_stack_1.global_60
  loc_B6CDF5: LdPrVar
  loc_B6CDF7: LateMemCall
  loc_B6CDFD: LitVarStr var_94, "    <th>Aforos</th>"
  loc_B6CE02: PopAdLdVar
  loc_B6CE03: FLdPr Me
  loc_B6CE06: MemLdRfVar from_stack_1.global_60
  loc_B6CE09: LdPrVar
  loc_B6CE0B: LateMemCall
  loc_B6CE11: LitVarStr var_94, "    <th>Débitos</th>"
  loc_B6CE16: PopAdLdVar
  loc_B6CE17: FLdPr Me
  loc_B6CE1A: MemLdRfVar from_stack_1.global_60
  loc_B6CE1D: LdPrVar
  loc_B6CE1F: LateMemCall
  loc_B6CE25: LitVarStr var_94, "    <th>Créditos</th>"
  loc_B6CE2A: PopAdLdVar
  loc_B6CE2B: FLdPr Me
  loc_B6CE2E: MemLdRfVar from_stack_1.global_60
  loc_B6CE31: LdPrVar
  loc_B6CE33: LateMemCall
  loc_B6CE39: LitVarStr var_94, "    <th>Pres.</th>"
  loc_B6CE3E: PopAdLdVar
  loc_B6CE3F: FLdPr Me
  loc_B6CE42: MemLdRfVar from_stack_1.global_60
  loc_B6CE45: LdPrVar
  loc_B6CE47: LateMemCall
  loc_B6CE4D: LitVarStr var_94, "    <th>Condo.</th>"
  loc_B6CE52: PopAdLdVar
  loc_B6CE53: FLdPr Me
  loc_B6CE56: MemLdRfVar from_stack_1.global_60
  loc_B6CE59: LdPrVar
  loc_B6CE5B: LateMemCall
  loc_B6CE61: LitVarStr var_94, "    <th>Exenc.</th>"
  loc_B6CE66: PopAdLdVar
  loc_B6CE67: FLdPr Me
  loc_B6CE6A: MemLdRfVar from_stack_1.global_60
  loc_B6CE6D: LdPrVar
  loc_B6CE6F: LateMemCall
  loc_B6CE75: LitVarStr var_94, "    <th>Desc.</th>"
  loc_B6CE7A: PopAdLdVar
  loc_B6CE7B: FLdPr Me
  loc_B6CE7E: MemLdRfVar from_stack_1.global_60
  loc_B6CE81: LdPrVar
  loc_B6CE83: LateMemCall
  loc_B6CE89: LitVarStr var_94, "    <th>Cobrado</th>"
  loc_B6CE8E: PopAdLdVar
  loc_B6CE8F: FLdPr Me
  loc_B6CE92: MemLdRfVar from_stack_1.global_60
  loc_B6CE95: LdPrVar
  loc_B6CE97: LateMemCall
  loc_B6CE9D: LitVarStr var_94, "    <th>S. Final</th>"
  loc_B6CEA2: PopAdLdVar
  loc_B6CEA3: FLdPr Me
  loc_B6CEA6: MemLdRfVar from_stack_1.global_60
  loc_B6CEA9: LdPrVar
  loc_B6CEAB: LateMemCall
  loc_B6CEB1: LitVarStr var_94, "  </tr>"
  loc_B6CEB6: PopAdLdVar
  loc_B6CEB7: FLdPr Me
  loc_B6CEBA: MemLdRfVar from_stack_1.global_60
  loc_B6CEBD: LdPrVar
  loc_B6CEBF: LateMemCall
  loc_B6CEC5: LitVarStr var_94, "  </thead>"
  loc_B6CECA: PopAdLdVar
  loc_B6CECB: FLdPr Me
  loc_B6CECE: MemLdRfVar from_stack_1.global_60
  loc_B6CED1: LdPrVar
  loc_B6CED3: LateMemCall
  loc_B6CED9: ExitProcHresult
  loc_B6CEDA: IDvI2
End Function

Private Function Proc_310_25_9F77F0() '9F77F0
  'Data Table: 4B2668
  loc_9F77C4: LitVarStr var_94, "</body>"
  loc_9F77C9: PopAdLdVar
  loc_9F77CA: FLdPr Me
  loc_9F77CD: MemLdRfVar from_stack_1.global_60
  loc_9F77D0: LdPrVar
  loc_9F77D2: LateMemCall
  loc_9F77D8: LitVarStr var_94, "</html>"
  loc_9F77DD: PopAdLdVar
  loc_9F77DE: FLdPr Me
  loc_9F77E1: MemLdRfVar from_stack_1.global_60
  loc_9F77E4: LdPrVar
  loc_9F77E6: LateMemCall
  loc_9F77EC: ExitProcHresult
End Function
