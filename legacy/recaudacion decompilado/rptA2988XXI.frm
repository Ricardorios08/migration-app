VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988XXI
  Caption = "Acuerdo 2988 Anexo XXI"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988XXI.frx":0000
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
    OleObjectBlob = "rptA2988XXI.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11055
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA2988XXI.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA2988XXI.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988XXI.frx":0C04
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
      OleObjectBlob = "rptA2988XXI.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptA2988XXI.frx":0D18
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
    OleObjectBlob = "rptA2988XXI.frx":0DC8
  End
End

Attribute VB_Name = "rptA2988XXI"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00560E20
  bStruc(20) As Byte ' String fields: 3
End Type


Private Sub cmdSalir_Click() 'A02694
  'Data Table: 496280
  loc_A02664: LitVarStr var_94, "Cerrando..."
  loc_A02669: PopAdLdVar
  loc_A0266A: FLdPr Me
  loc_A0266D: VCallAd Control_ID_statusBar
  loc_A02670: FStAdFunc var_A8
  loc_A02673: FLdPr var_A8
  loc_A02676: LateIdSt
  loc_A0267B: FFree1Ad var_A8
  loc_A0267E: ILdRf Me
  loc_A02681: FStAdNoPop
  loc_A02685: ImpAdLdRf MemVar_D9C5D8
  loc_A02688: NewIfNullPr Global
  loc_A0268B: Global.Unload from_stack_1
  loc_A02690: FFree1Ad var_A8
  loc_A02693: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CB6E0
  'Data Table: 496280
  loc_9CB6C8: LitI2_Byte 0
  loc_9CB6CA: ILdRf Me
  loc_9CB6CD: CastAd
  loc_9CB6D0: FStAdFunc var_88
  loc_9CB6D3: FLdRfVar var_88
  loc_9CB6D6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB6DB: FFree1Ad var_88
  loc_9CB6DE: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E203C
  'Data Table: 496280
  loc_9E2020: LitI2_Byte 0
  loc_9E2022: LitI2_Byte 0
  loc_9E2024: ILdRf Me
  loc_9E2027: CastAd
  loc_9E202A: FStAdFunc var_88
  loc_9E202D: FLdRfVar var_88
  loc_9E2030: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2035: FFree1Ad var_88
  loc_9E2038: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E21CC
  'Data Table: 496280
  loc_9E21B0: LitI2_Byte 0
  loc_9E21B2: PopTmpLdAd2 var_8A
  loc_9E21B5: ILdRf Me
  loc_9E21B8: CastAd
  loc_9E21BB: FStAdFunc var_88
  loc_9E21BE: FLdRfVar var_88
  loc_9E21C1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E21C6: FFree1Ad var_88
  loc_9E21C9: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BE430
  'Data Table: 496280
  loc_9BE41C: FLdPr Me
  loc_9BE41F: VCallAd Control_ID_DesdeMsk
  loc_9BE422: CVarAd
  loc_9BE426: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE42B: FFree1Var var_94 = ""
  loc_9BE42E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A65460
  'Data Table: 496280
  loc_A65404: FLdPr Me
  loc_A65407: VCallAd Control_ID_DesdeMsk
  loc_A6540A: FStAdFunc var_88
  loc_A6540D: FLdPr var_88
  loc_A65410: LateIdLdVar var_98 DispID_15 0
  loc_A65417: CStrVarTmp
  loc_A65418: FStStrNoPop var_9C
  loc_A6541B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65420: FStStrNoPop var_A0
  loc_A65423: FLdPr Me
  loc_A65426: MemStStrCopy
  loc_A6542A: FFreeStr var_9C = ""
  loc_A65431: FFree1Ad var_88
  loc_A65434: FFree1Var var_98 = ""
  loc_A65437: FLdPr Me
  loc_A6543A: VCallAd Control_ID_DesdeMsk
  loc_A6543D: FStAdFuncNoPop
  loc_A65440: CastAd
  loc_A65443: FStAdFunc var_A4
  loc_A65446: FLdRfVar var_A4
  loc_A65449: FLdPr Me
  loc_A6544C: MemLdStr global_108
  loc_A6544F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65454: IStI2 arg_C
  loc_A65457: FFreeAd var_88 = ""
  loc_A6545E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A21E40
  'Data Table: 496280
  loc_A21DF8: ILdI2 KeyAscii
  loc_A21DFB: CI4UI1
  loc_A21DFC: LitI4 &H20
  loc_A21E01: EqI4
  loc_A21E02: BranchF loc_A21E3F
  loc_A21E05: LitVar_Missing var_A4
  loc_A21E08: PopAdLdVar
  loc_A21E09: LitVarI4
  loc_A21E11: PopAdLdVar
  loc_A21E12: ImpAdLdRf MemVar_D930A4
  loc_A21E15: NewIfNullPr frmCalendario
  loc_A21E18: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21E1D: ImpAdLdRf MemVar_D93028
  loc_A21E20: CDargRef
  loc_A21E24: FLdPr Me
  loc_A21E27: VCallAd Control_ID_DesdeMsk
  loc_A21E2A: FStAdFunc var_A8
  loc_A21E2D: FLdPr var_A8
  loc_A21E30: LateIdSt
  loc_A21E35: FFree1Ad var_A8
  loc_A21E38: LitStr vbNullString
  loc_A21E3B: ImpAdStStrCopy MemVar_D93028
  loc_A21E3F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A2C4
  'Data Table: 496280
  loc_A0A28C: LitI2_Byte 0
  loc_A0A28E: FLdPr Me
  loc_A0A291: MemStI2 bGenerado
  loc_A0A294: LitI2_Byte 0
  loc_A0A296: ILdRf Me
  loc_A0A299: CastAd
  loc_A0A29C: FStAdFunc var_88
  loc_A0A29F: FLdRfVar var_88
  loc_A0A2A2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A0A2A7: FFree1Ad var_88
  loc_A0A2AA: Call HabilitarCriterio()
  loc_A0A2AF: ILdRf Me
  loc_A0A2B2: CastAd
  loc_A0A2B5: FStAdFunc var_88
  loc_A0A2B8: FLdRfVar var_88
  loc_A0A2BB: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A2C0: FFree1Ad var_88
  loc_A0A2C3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A12A60
  'Data Table: 496280
  loc_A12A28: FLdPr Me
  loc_A12A2B: VCallAd Control_ID_statusBar
  loc_A12A2E: FStAdFunc var_88
  loc_A12A31: FLdPr var_88
  loc_A12A34: LateIdLdVar var_98 DispID_1 0
  loc_A12A3B: CStrVarTmp
  loc_A12A3C: CVarStr var_A8
  loc_A12A3F: PopAdLdVar
  loc_A12A40: FLdPr Me
  loc_A12A43: VCallAd Control_ID_statusBar
  loc_A12A46: FStAdFunc var_BC
  loc_A12A49: FLdPr var_BC
  loc_A12A4C: LateIdSt
  loc_A12A51: FFreeAd var_88 = ""
  loc_A12A58: FFreeVar var_98 = ""
  loc_A12A5F: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CB648
  'Data Table: 496280
  loc_9CB630: LitI2_Byte 0
  loc_9CB632: ILdRf Me
  loc_9CB635: CastAd
  loc_9CB638: FStAdFunc var_88
  loc_9CB63B: FLdRfVar var_88
  loc_9CB63E: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CB643: FFree1Ad var_88
  loc_9CB646: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BE3E8
  'Data Table: 496280
  loc_9BE3D4: FLdPr Me
  loc_9BE3D7: VCallAd Control_ID_HastaMsk
  loc_9BE3DA: CVarAd
  loc_9BE3DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE3E3: FFree1Var var_94 = ""
  loc_9BE3E6: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA5BBC
  'Data Table: 496280
  loc_AA5B0C: FLdPr Me
  loc_AA5B0F: VCallAd Control_ID_HastaMsk
  loc_AA5B12: FStAdFunc var_88
  loc_AA5B15: FLdPr var_88
  loc_AA5B18: LateIdLdVar var_98 DispID_15 0
  loc_AA5B1F: CStrVarTmp
  loc_AA5B20: CVarStr var_A8
  loc_AA5B23: ImpAdCallI2 IsDate()
  loc_AA5B28: FFree1Ad var_88
  loc_AA5B2B: FFreeVar var_98 = ""
  loc_AA5B32: BranchF loc_AA5BB8
  loc_AA5B35: FLdPr Me
  loc_AA5B38: VCallAd Control_ID_HastaMsk
  loc_AA5B3B: FStAdFunc var_88
  loc_AA5B3E: FLdPr var_88
  loc_AA5B41: LateIdLdVar var_98 DispID_15 0
  loc_AA5B48: CStrVarTmp
  loc_AA5B49: CVarStr var_A8
  loc_AA5B4C: FLdRfVar var_B8
  loc_AA5B4F: ImpAdCallFPR4  = Year()
  loc_AA5B54: FLdRfVar var_B8
  loc_AA5B57: FLdPr Me
  loc_AA5B5A: VCallAd Control_ID_DesdeMsk
  loc_AA5B5D: FStAdFunc var_BC
  loc_AA5B60: FLdPr var_BC
  loc_AA5B63: LateIdLdVar var_CC DispID_15 0
  loc_AA5B6A: CStrVarTmp
  loc_AA5B6B: CVarStr var_DC
  loc_AA5B6E: FLdRfVar var_EC
  loc_AA5B71: ImpAdCallFPR4  = Year()
  loc_AA5B76: FLdRfVar var_EC
  loc_AA5B79: NeVarBool
  loc_AA5B7B: FFreeAd var_88 = ""
  loc_AA5B82: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA5B91: BranchF loc_AA5BB8
  loc_AA5B94: FLdPr Me
  loc_AA5B97: VCallAd Control_ID_HastaMsk
  loc_AA5B9A: FStAdFuncNoPop
  loc_AA5B9D: CastAd
  loc_AA5BA0: FStAdFunc var_BC
  loc_AA5BA3: FLdRfVar var_BC
  loc_AA5BA6: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA5BA9: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA5BAE: IStI2 arg_C
  loc_AA5BB1: FFreeAd var_88 = ""
  loc_AA5BB8: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A221A4
  'Data Table: 496280
  loc_A2215C: ILdI2 KeyAscii
  loc_A2215F: CI4UI1
  loc_A22160: LitI4 &H20
  loc_A22165: EqI4
  loc_A22166: BranchF loc_A221A3
  loc_A22169: LitVar_Missing var_A4
  loc_A2216C: PopAdLdVar
  loc_A2216D: LitVarI4
  loc_A22175: PopAdLdVar
  loc_A22176: ImpAdLdRf MemVar_D930A4
  loc_A22179: NewIfNullPr frmCalendario
  loc_A2217C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22181: ImpAdLdRf MemVar_D93028
  loc_A22184: CDargRef
  loc_A22188: FLdPr Me
  loc_A2218B: VCallAd Control_ID_HastaMsk
  loc_A2218E: FStAdFunc var_A8
  loc_A22191: FLdPr var_A8
  loc_A22194: LateIdSt
  loc_A22199: FFree1Ad var_A8
  loc_A2219C: LitStr vbNullString
  loc_A2219F: ImpAdStStrCopy MemVar_D93028
  loc_A221A3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB8F4
  'Data Table: 496280
  loc_9CB8DC: ILdRf Me
  loc_9CB8DF: CastAd
  loc_9CB8E2: FStAdFunc var_88
  loc_9CB8E5: FLdRfVar var_88
  loc_9CB8E8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB8ED: FFree1Ad var_88
  loc_9CB8F0: ExitProcHresult
End Sub

Private Sub Form_Load() 'AE0774
  'Data Table: 496280
  loc_AE0640: ILdRf Me
  loc_AE0643: CastAd
  loc_AE0646: FStAdFunc var_88
  loc_AE0649: FLdRfVar var_88
  loc_AE064C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AE0651: FFree1Ad var_88
  loc_AE0654: LitVarStr var_98, "Acuerdo 2988 Anexo XXI"
  loc_AE0659: CStrVarVal var_9C
  loc_AE065D: FLdPr Me
  loc_AE0660: Me.Caption = from_stack_1
  loc_AE0665: FFree1Str var_9C
  loc_AE0668: Call cmdNueva_Click()
  loc_AE066D: LitI2_Byte 0
  loc_AE066F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0674: CVarDate var_AC
  loc_AE0678: FLdRfVar var_BC
  loc_AE067B: ImpAdCallFPR4  = Year()
  loc_AE0680: LitI2_Byte 0
  loc_AE0682: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE0687: CVarDate var_DC
  loc_AE068B: FLdRfVar var_EC
  loc_AE068E: ImpAdCallFPR4  = Month()
  loc_AE0693: LitI2_Byte 1
  loc_AE0695: FLdRfVar var_EC
  loc_AE0698: LitVarI2 var_FC, 1
  loc_AE069D: SubVar var_10C
  loc_AE06A1: CI2Var
  loc_AE06A2: FLdRfVar var_BC
  loc_AE06A5: CI2Var
  loc_AE06A6: FLdRfVar var_11C
  loc_AE06A9: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE06AE: FLdRfVar var_11C
  loc_AE06B1: CStrVarTmp
  loc_AE06B2: CVarStr var_12C
  loc_AE06B5: PopAdLdVar
  loc_AE06B6: FLdPr Me
  loc_AE06B9: VCallAd Control_ID_DesdeMsk
  loc_AE06BC: FStAdFunc var_88
  loc_AE06BF: FLdPr var_88
  loc_AE06C2: LateIdSt
  loc_AE06C7: FFree1Ad var_88
  loc_AE06CA: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_AE06D9: FLdPr Me
  loc_AE06DC: VCallAd Control_ID_DesdeMsk
  loc_AE06DF: FStAdFunc var_88
  loc_AE06E2: FLdPr var_88
  loc_AE06E5: LateIdLdVar var_AC DispID_15 0
  loc_AE06EC: CStrVarTmp
  loc_AE06ED: CVarStr var_BC
  loc_AE06F0: FLdRfVar var_DC
  loc_AE06F3: ImpAdCallFPR4  = Year()
  loc_AE06F8: FLdPr Me
  loc_AE06FB: VCallAd Control_ID_DesdeMsk
  loc_AE06FE: FStAdFunc var_140
  loc_AE0701: FLdPr var_140
  loc_AE0704: LateIdLdVar var_EC DispID_15 0
  loc_AE070B: CStrVarTmp
  loc_AE070C: CVarStr var_10C
  loc_AE070F: FLdRfVar var_11C
  loc_AE0712: ImpAdCallFPR4  = Month()
  loc_AE0717: LitI2_Byte 1
  loc_AE0719: FLdRfVar var_11C
  loc_AE071C: LitVarI2 var_98, 1
  loc_AE0721: AddVar var_12C
  loc_AE0725: CI2Var
  loc_AE0726: FLdRfVar var_DC
  loc_AE0729: CI2Var
  loc_AE072A: FLdRfVar var_150
  loc_AE072D: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0732: FLdRfVar var_150
  loc_AE0735: LitVarI2 var_CC, 1
  loc_AE073A: SubVar var_160
  loc_AE073E: CStrVarTmp
  loc_AE073F: CVarStr var_170
  loc_AE0742: PopAdLdVar
  loc_AE0743: FLdPr Me
  loc_AE0746: VCallAd Control_ID_HastaMsk
  loc_AE0749: FStAdFunc var_174
  loc_AE074C: FLdPr var_174
  loc_AE074F: LateIdSt
  loc_AE0754: FFreeAd var_88 = "": var_140 = ""
  loc_AE075D: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AE0772: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB5FC
  'Data Table: 496280
  loc_9CB5E4: FLdPr Me
  loc_9CB5E7: VCallAd Control_ID_wbbReporte
  loc_9CB5EA: FStAdFunc var_88
  loc_9CB5ED: FLdRfVar var_88
  loc_9CB5F0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB5F5: FFree1Ad var_88
  loc_9CB5F8: ExitProcHresult
End Sub

Public Function bGeneradoGet() '497150
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49715F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A426F8
  'Data Table: 496280
  loc_A426B4: LitI4 0
  loc_A426B9: LitI4 1
  loc_A426BE: FLdRfVar var_88
  loc_A426C1: Redim
  loc_A426CB: FLdPr Me
  loc_A426CE: VCallAd Control_ID_DesdeMsk
  loc_A426D1: CVarAd
  loc_A426D5: ParmAry1St
  loc_A426DB: FLdPr Me
  loc_A426DE: VCallAd Control_ID_HastaMsk
  loc_A426E1: CVarAd
  loc_A426E5: ParmAry1St
  loc_A426EB: FLdRfVar var_88
  loc_A426EE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A426F3: FLdRfVar var_88
  loc_A426F6: Erase
  loc_A426F7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CD66F0
  'Data Table: 496280
  loc_CD3EE8: LitI2_Byte 0
  loc_CD3EEA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CD3EEF: FStFPR8 var_94
  loc_CD3EF2: FLdPr Me
  loc_CD3EF5: MemLdI2 bGenerado
  loc_CD3EF8: BranchF loc_CD3EFC
  loc_CD3EFB: ExitProcHresult
  loc_CD3EFC: LitVarStr var_A4, "Generando reporte..."
  loc_CD3F01: PopAdLdVar
  loc_CD3F02: FLdPr Me
  loc_CD3F05: VCallAd Control_ID_statusBar
  loc_CD3F08: FStAdFunc var_B8
  loc_CD3F0B: FLdPr var_B8
  loc_CD3F0E: LateIdSt
  loc_CD3F13: FFree1Ad var_B8
  loc_CD3F16: LitI4 &HB
  loc_CD3F1B: CI2I4
  loc_CD3F1C: FLdPr Me
  loc_CD3F1F: Me.MousePointer = from_stack_1
  loc_CD3F24: LitStr "Municipalidad de Guaymallén"
  loc_CD3F27: LitStr "Municipalidad de Guaymallén"
  loc_CD3F2A: EqStr
  loc_CD3F2C: BranchF loc_CD3F6B
  loc_CD3F2F: LitStr "192.168.40.54"
  loc_CD3F32: LitStr "192.168.40.54"
  loc_CD3F35: EqStr
  loc_CD3F37: BranchF loc_CD3F6B
  loc_CD3F3A: FLdRfVar var_94
  loc_CD3F3D: ImpAdCallI2 Proc_18_4_AAC868()
  loc_CD3F42: FStStrNoPop var_BC
  loc_CD3F45: FLdPr Me
  loc_CD3F48: MemStStrCopy
  loc_CD3F4C: FFree1Str var_BC
  loc_CD3F4F: FLdPr Me
  loc_CD3F52: MemLdStr global_108
  loc_CD3F55: LitStr vbNullString
  loc_CD3F58: NeStr
  loc_CD3F5A: BranchF loc_CD3F6B
  loc_CD3F5D: FLdPr Me
  loc_CD3F60: MemLdStr global_108
  loc_CD3F63: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CD3F68: Branch loc_CD66C4
  loc_CD3F6B: LitI2_Byte 0
  loc_CD3F6D: PopTmpLdAd2 var_BE
  loc_CD3F70: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_CD3F75: FLdPr Me
  loc_CD3F78: MemLdStr global_108
  loc_CD3F7B: LitStr vbNullString
  loc_CD3F7E: NeStr
  loc_CD3F80: BranchF loc_CD3F86
  loc_CD3F83: Branch loc_CD66C4
  loc_CD3F86: LitI2_Byte 0
  loc_CD3F88: PopTmpLdAd2 var_BE
  loc_CD3F8B: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_CD3F90: FLdPr Me
  loc_CD3F93: MemLdStr global_108
  loc_CD3F96: LitStr vbNullString
  loc_CD3F99: NeStr
  loc_CD3F9B: BranchF loc_CD3FA1
  loc_CD3F9E: Branch loc_CD66C4
  loc_CD3FA1: FLdPr Me
  loc_CD3FA4: VCallAd Control_ID_DesdeMsk
  loc_CD3FA7: FStAdFunc var_B8
  loc_CD3FAA: FLdPr var_B8
  loc_CD3FAD: LateIdLdVar var_D0 DispID_15 0
  loc_CD3FB4: PopAd
  loc_CD3FB6: LitI4 1
  loc_CD3FBB: LitI4 1
  loc_CD3FC0: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_CD3FC5: FStVarCopyObj var_F0
  loc_CD3FC8: FLdRfVar var_F0
  loc_CD3FCB: FLdRfVar var_D0
  loc_CD3FCE: CStrVarTmp
  loc_CD3FCF: CVarStr var_E0
  loc_CD3FD2: ImpAdCallI2 Format$(, )
  loc_CD3FD7: FStStr var_88
  loc_CD3FDA: FFree1Ad var_B8
  loc_CD3FDD: FFreeVar var_D0 = "": var_E0 = ""
  loc_CD3FE6: FLdPr Me
  loc_CD3FE9: VCallAd Control_ID_HastaMsk
  loc_CD3FEC: FStAdFunc var_B8
  loc_CD3FEF: FLdPr var_B8
  loc_CD3FF2: LateIdLdVar var_D0 DispID_15 0
  loc_CD3FF9: PopAd
  loc_CD3FFB: LitI4 1
  loc_CD4000: LitI4 1
  loc_CD4005: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_CD400A: FStVarCopyObj var_F0
  loc_CD400D: FLdRfVar var_F0
  loc_CD4010: FLdRfVar var_D0
  loc_CD4013: CStrVarTmp
  loc_CD4014: CVarStr var_E0
  loc_CD4017: ImpAdCallI2 Format$(, )
  loc_CD401C: FStStr var_8C
  loc_CD401F: FFree1Ad var_B8
  loc_CD4022: FFreeVar var_D0 = "": var_E0 = ""
  loc_CD402B: FLdPr Me
  loc_CD402E: MemLdRfVar from_stack_1.global_92
  loc_CD4031: NewIfNullAd
  loc_CD4034: FStAd var_F4 
  loc_CD4038: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_conc;"
  loc_CD403B: LitStr " CREATE TEMPORARY TABLE tmp_conc ("
  loc_CD403E: ConcatStr
  loc_CD403F: FStStrNoPop var_BC
  loc_CD4042: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_CD4045: ConcatStr
  loc_CD4046: FStStrNoPop var_F8
  loc_CD4049: LitStr " obrCtaCte` decimal(14,2) NOT NULL default '0.00',"
  loc_CD404C: ConcatStr
  loc_CD404D: FStStrNoPop var_FC
  loc_CD4050: LitStr " endEnre` decimal(14,2) NOT NULL default '0.00',"
  loc_CD4053: ConcatStr
  loc_CD4054: FStStrNoPop var_100
  loc_CD4057: LitStr " KEY mpidx` (`CodiConc`)"
  loc_CD405A: ConcatStr
  loc_CD405B: FStStrNoPop var_104
  loc_CD405E: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_CD4061: ConcatStr
  loc_CD4062: FStStrNoPop var_108
  loc_CD4065: FLdPr var_F4
  loc_CD4068: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD406D: FFreeStr var_BC = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_CD407C: LitStr " INSERT INTO tmp_conc "
  loc_CD407F: LitStr " SELECT ctacte.CodiConc, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00))-sum(if(CodiTimo in (26,27),DebeCtct,000000000.00)) as CobrCtaCte, 0 RendEnre"
  loc_CD4082: ConcatStr
  loc_CD4083: FStStrNoPop var_BC
  loc_CD4086: LitStr " FROM ctacte"
  loc_CD4089: ConcatStr
  loc_CD408A: FStStrNoPop var_F8
  loc_CD408D: LitStr " WHERE ctacte.FealCtct BETWEEN "
  loc_CD4090: ConcatStr
  loc_CD4091: FStStrNoPop var_FC
  loc_CD4094: ILdRf var_88
  loc_CD4097: ConcatStr
  loc_CD4098: FStStrNoPop var_100
  loc_CD409B: LitStr " AND "
  loc_CD409E: ConcatStr
  loc_CD409F: FStStrNoPop var_104
  loc_CD40A2: ILdRf var_8C
  loc_CD40A5: ConcatStr
  loc_CD40A6: FStStrNoPop var_108
  loc_CD40A9: LitStr " AND ctacte.CodiTimo IN (2,4,5,9,21,25,26,27)"
  loc_CD40AC: ConcatStr
  loc_CD40AD: FStStrNoPop var_10C
  loc_CD40B0: LitStr " GROUP BY ctacte.CodiConc"
  loc_CD40B3: ConcatStr
  loc_CD40B4: FStStrNoPop var_110
  loc_CD40B7: FLdPr var_F4
  loc_CD40BA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD40BF: FFreeStr var_BC = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_CD40D2: LitStr " INSERT INTO tmp_conc "
  loc_CD40D5: LitStr " SELECT detapago.CodiConc, 0 CobrCtaCte, SUM(CapiDepa) - Sum(DecaDepa) - Sum(ExenDepa) - Sum(CrafDepa) as RendEnre"
  loc_CD40D8: ConcatStr
  loc_CD40D9: FStStrNoPop var_BC
  loc_CD40DC: LitStr " FROM detapago"
  loc_CD40DF: ConcatStr
  loc_CD40E0: FStStrNoPop var_F8
  loc_CD40E3: LitStr " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD40E6: ConcatStr
  loc_CD40E7: FStStrNoPop var_FC
  loc_CD40EA: ILdRf var_88
  loc_CD40ED: ConcatStr
  loc_CD40EE: FStStrNoPop var_100
  loc_CD40F1: LitStr " AND "
  loc_CD40F4: ConcatStr
  loc_CD40F5: FStStrNoPop var_104
  loc_CD40F8: ILdRf var_8C
  loc_CD40FB: ConcatStr
  loc_CD40FC: FStStrNoPop var_108
  loc_CD40FF: LitStr " GROUP BY detapago.CodiConc"
  loc_CD4102: ConcatStr
  loc_CD4103: FStStrNoPop var_10C
  loc_CD4106: FLdPr var_F4
  loc_CD4109: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD410E: FFreeStr var_BC = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_CD411F: LitStr "Municipalidad de Guaymallén"
  loc_CD4122: LitStr "Municipalidad de Rivadavia"
  loc_CD4125: EqStr
  loc_CD4127: LitStr "Municipalidad de Guaymallén"
  loc_CD412A: LitStr "Municipalidad de Tunuyán"
  loc_CD412D: EqStr
  loc_CD412F: OrI4
  loc_CD4130: BranchF loc_CD4660
  loc_CD4133: FLdPr Me
  loc_CD4136: VCallAd Control_ID_DesdeMsk
  loc_CD4139: FStAdFunc var_144
  loc_CD413C: FLdPr var_144
  loc_CD413F: LateIdLdVar var_154 DispID_15 0
  loc_CD4146: PopAd
  loc_CD4148: FLdPr Me
  loc_CD414B: VCallAd Control_ID_HastaMsk
  loc_CD414E: FStAdFunc var_1B8
  loc_CD4151: FLdPr var_1B8
  loc_CD4154: LateIdLdVar var_1C8 DispID_15 0
  loc_CD415B: PopAd
  loc_CD415D: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD4160: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD4163: ConcatStr
  loc_CD4164: FStStrNoPop var_BC
  loc_CD4167: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD416A: ConcatStr
  loc_CD416B: CVarStr var_120
  loc_CD416E: FLdPr Me
  loc_CD4171: VCallAd Control_ID_DesdeMsk
  loc_CD4174: FStAdFunc var_B8
  loc_CD4177: FLdPr var_B8
  loc_CD417A: LateIdLdVar var_D0 DispID_15 0
  loc_CD4181: CStrVarTmp
  loc_CD4182: CVarStr var_E0
  loc_CD4185: FLdRfVar var_F0
  loc_CD4188: ImpAdCallFPR4  = Year()
  loc_CD418D: FLdRfVar var_F0
  loc_CD4190: ConcatVar var_130
  loc_CD4194: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD4199: ConcatVar var_140
  loc_CD419D: LitI4 1
  loc_CD41A2: LitI4 1
  loc_CD41A7: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD41AC: FStVarCopyObj var_174
  loc_CD41AF: FLdRfVar var_174
  loc_CD41B2: FLdRfVar var_154
  loc_CD41B5: CStrVarTmp
  loc_CD41B6: CVarStr var_164
  loc_CD41B9: ImpAdCallI2 Format$(, )
  loc_CD41BE: CVarStr var_184
  loc_CD41C1: ConcatVar var_194
  loc_CD41C5: LitVarStr var_1A4, " AND "
  loc_CD41CA: ConcatVar var_1B4
  loc_CD41CE: LitI4 1
  loc_CD41D3: LitI4 1
  loc_CD41D8: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD41DD: FStVarCopyObj var_1F8
  loc_CD41E0: FLdRfVar var_1F8
  loc_CD41E3: FLdRfVar var_1C8
  loc_CD41E6: CStrVarTmp
  loc_CD41E7: CVarStr var_1D8
  loc_CD41EA: ImpAdCallI2 Format$(, )
  loc_CD41EF: CVarStr var_208
  loc_CD41F2: ConcatVar var_218
  loc_CD41F6: CStrVarVal var_F8
  loc_CD41FA: FLdPr var_F4
  loc_CD41FD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4202: FFreeStr var_BC = ""
  loc_CD4209: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4212: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD4237: FLdPr Me
  loc_CD423A: VCallAd Control_ID_DesdeMsk
  loc_CD423D: FStAdFunc var_144
  loc_CD4240: FLdPr var_144
  loc_CD4243: LateIdLdVar var_164 DispID_15 0
  loc_CD424A: PopAd
  loc_CD424C: FLdPr Me
  loc_CD424F: VCallAd Control_ID_HastaMsk
  loc_CD4252: FStAdFunc var_1B8
  loc_CD4255: FLdPr var_1B8
  loc_CD4258: LateIdLdVar var_1D8 DispID_15 0
  loc_CD425F: PopAd
  loc_CD4261: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoadPare as CodiConc, 0 CobrCtaCte, "
  loc_CD4264: LitStr " sum(CoadBoap) as RendEnre"
  loc_CD4267: ConcatStr
  loc_CD4268: FStStrNoPop var_BC
  loc_CD426B: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD426E: ConcatStr
  loc_CD426F: CVarStr var_120
  loc_CD4272: FLdPr Me
  loc_CD4275: VCallAd Control_ID_DesdeMsk
  loc_CD4278: FStAdFunc var_B8
  loc_CD427B: FLdPr var_B8
  loc_CD427E: LateIdLdVar var_D0 DispID_15 0
  loc_CD4285: CStrVarTmp
  loc_CD4286: CVarStr var_E0
  loc_CD4289: FLdRfVar var_F0
  loc_CD428C: ImpAdCallFPR4  = Year()
  loc_CD4291: FLdRfVar var_F0
  loc_CD4294: ConcatVar var_130
  loc_CD4298: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD429D: ConcatVar var_140
  loc_CD42A1: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD42A6: ConcatVar var_154
  loc_CD42AA: LitI4 1
  loc_CD42AF: LitI4 1
  loc_CD42B4: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD42B9: FStVarCopyObj var_184
  loc_CD42BC: FLdRfVar var_184
  loc_CD42BF: FLdRfVar var_164
  loc_CD42C2: CStrVarTmp
  loc_CD42C3: CVarStr var_174
  loc_CD42C6: ImpAdCallI2 Format$(, )
  loc_CD42CB: CVarStr var_194
  loc_CD42CE: ConcatVar var_1B4
  loc_CD42D2: LitVarStr var_1E8, " AND "
  loc_CD42D7: ConcatVar var_1C8
  loc_CD42DB: LitI4 1
  loc_CD42E0: LitI4 1
  loc_CD42E5: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD42EA: FStVarCopyObj var_208
  loc_CD42ED: FLdRfVar var_208
  loc_CD42F0: FLdRfVar var_1D8
  loc_CD42F3: CStrVarTmp
  loc_CD42F4: CVarStr var_1F8
  loc_CD42F7: ImpAdCallI2 Format$(, )
  loc_CD42FC: CVarStr var_218
  loc_CD42FF: ConcatVar var_238
  loc_CD4303: CStrVarVal var_F8
  loc_CD4307: FLdPr var_F4
  loc_CD430A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD430F: FFreeStr var_BC = ""
  loc_CD4316: FFreeAd var_B8 = "": var_144 = ""
  loc_CD431F: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4346: FLdPr Me
  loc_CD4349: VCallAd Control_ID_DesdeMsk
  loc_CD434C: FStAdFunc var_144
  loc_CD434F: FLdPr var_144
  loc_CD4352: LateIdLdVar var_164 DispID_15 0
  loc_CD4359: PopAd
  loc_CD435B: FLdPr Me
  loc_CD435E: VCallAd Control_ID_HastaMsk
  loc_CD4361: FStAdFunc var_1B8
  loc_CD4364: FLdPr var_1B8
  loc_CD4367: LateIdLdVar var_1D8 DispID_15 0
  loc_CD436E: PopAd
  loc_CD4370: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoapPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4373: LitStr " sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as RendEnre"
  loc_CD4376: ConcatStr
  loc_CD4377: FStStrNoPop var_BC
  loc_CD437A: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD437D: ConcatStr
  loc_CD437E: CVarStr var_120
  loc_CD4381: FLdPr Me
  loc_CD4384: VCallAd Control_ID_DesdeMsk
  loc_CD4387: FStAdFunc var_B8
  loc_CD438A: FLdPr var_B8
  loc_CD438D: LateIdLdVar var_D0 DispID_15 0
  loc_CD4394: CStrVarTmp
  loc_CD4395: CVarStr var_E0
  loc_CD4398: FLdRfVar var_F0
  loc_CD439B: ImpAdCallFPR4  = Year()
  loc_CD43A0: FLdRfVar var_F0
  loc_CD43A3: ConcatVar var_130
  loc_CD43A7: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD43AC: ConcatVar var_140
  loc_CD43B0: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD43B5: ConcatVar var_154
  loc_CD43B9: LitI4 1
  loc_CD43BE: LitI4 1
  loc_CD43C3: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD43C8: FStVarCopyObj var_184
  loc_CD43CB: FLdRfVar var_184
  loc_CD43CE: FLdRfVar var_164
  loc_CD43D1: CStrVarTmp
  loc_CD43D2: CVarStr var_174
  loc_CD43D5: ImpAdCallI2 Format$(, )
  loc_CD43DA: CVarStr var_194
  loc_CD43DD: ConcatVar var_1B4
  loc_CD43E1: LitVarStr var_1E8, " AND "
  loc_CD43E6: ConcatVar var_1C8
  loc_CD43EA: LitI4 1
  loc_CD43EF: LitI4 1
  loc_CD43F4: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD43F9: FStVarCopyObj var_208
  loc_CD43FC: FLdRfVar var_208
  loc_CD43FF: FLdRfVar var_1D8
  loc_CD4402: CStrVarTmp
  loc_CD4403: CVarStr var_1F8
  loc_CD4406: ImpAdCallI2 Format$(, )
  loc_CD440B: CVarStr var_218
  loc_CD440E: ConcatVar var_238
  loc_CD4412: CStrVarVal var_F8
  loc_CD4416: FLdPr var_F4
  loc_CD4419: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD441E: FFreeStr var_BC = ""
  loc_CD4425: FFreeAd var_B8 = "": var_144 = ""
  loc_CD442E: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4455: FLdPr Me
  loc_CD4458: VCallAd Control_ID_DesdeMsk
  loc_CD445B: FStAdFunc var_144
  loc_CD445E: FLdPr var_144
  loc_CD4461: LateIdLdVar var_164 DispID_15 0
  loc_CD4468: PopAd
  loc_CD446A: FLdPr Me
  loc_CD446D: VCallAd Control_ID_HastaMsk
  loc_CD4470: FStAdFunc var_1B8
  loc_CD4473: FLdPr var_1B8
  loc_CD4476: LateIdLdVar var_1D8 DispID_15 0
  loc_CD447D: PopAd
  loc_CD447F: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoimPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4482: LitStr " sum(ApleBoap+DefiBoap+ReseBoap) RendEnre"
  loc_CD4485: ConcatStr
  loc_CD4486: FStStrNoPop var_BC
  loc_CD4489: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD448C: ConcatStr
  loc_CD448D: CVarStr var_120
  loc_CD4490: FLdPr Me
  loc_CD4493: VCallAd Control_ID_DesdeMsk
  loc_CD4496: FStAdFunc var_B8
  loc_CD4499: FLdPr var_B8
  loc_CD449C: LateIdLdVar var_D0 DispID_15 0
  loc_CD44A3: CStrVarTmp
  loc_CD44A4: CVarStr var_E0
  loc_CD44A7: FLdRfVar var_F0
  loc_CD44AA: ImpAdCallFPR4  = Year()
  loc_CD44AF: FLdRfVar var_F0
  loc_CD44B2: ConcatVar var_130
  loc_CD44B6: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD44BB: ConcatVar var_140
  loc_CD44BF: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD44C4: ConcatVar var_154
  loc_CD44C8: LitI4 1
  loc_CD44CD: LitI4 1
  loc_CD44D2: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD44D7: FStVarCopyObj var_184
  loc_CD44DA: FLdRfVar var_184
  loc_CD44DD: FLdRfVar var_164
  loc_CD44E0: CStrVarTmp
  loc_CD44E1: CVarStr var_174
  loc_CD44E4: ImpAdCallI2 Format$(, )
  loc_CD44E9: CVarStr var_194
  loc_CD44EC: ConcatVar var_1B4
  loc_CD44F0: LitVarStr var_1E8, " AND "
  loc_CD44F5: ConcatVar var_1C8
  loc_CD44F9: LitI4 1
  loc_CD44FE: LitI4 1
  loc_CD4503: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4508: FStVarCopyObj var_208
  loc_CD450B: FLdRfVar var_208
  loc_CD450E: FLdRfVar var_1D8
  loc_CD4511: CStrVarTmp
  loc_CD4512: CVarStr var_1F8
  loc_CD4515: ImpAdCallI2 Format$(, )
  loc_CD451A: CVarStr var_218
  loc_CD451D: ConcatVar var_238
  loc_CD4521: CStrVarVal var_F8
  loc_CD4525: FLdPr var_F4
  loc_CD4528: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD452D: FFreeStr var_BC = ""
  loc_CD4534: FFreeAd var_B8 = "": var_144 = ""
  loc_CD453D: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4564: FLdPr Me
  loc_CD4567: VCallAd Control_ID_DesdeMsk
  loc_CD456A: FStAdFunc var_144
  loc_CD456D: FLdPr var_144
  loc_CD4570: LateIdLdVar var_154 DispID_15 0
  loc_CD4577: PopAd
  loc_CD4579: FLdPr Me
  loc_CD457C: VCallAd Control_ID_HastaMsk
  loc_CD457F: FStAdFunc var_1B8
  loc_CD4582: FLdPr var_1B8
  loc_CD4585: LateIdLdVar var_1C8 DispID_15 0
  loc_CD458C: PopAd
  loc_CD458E: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoinPare as CodiConc, 0 CobrCtaCte, sum(InteDepa) as RendEnre"
  loc_CD4591: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4594: ConcatStr
  loc_CD4595: CVarStr var_120
  loc_CD4598: FLdPr Me
  loc_CD459B: VCallAd Control_ID_DesdeMsk
  loc_CD459E: FStAdFunc var_B8
  loc_CD45A1: FLdPr var_B8
  loc_CD45A4: LateIdLdVar var_D0 DispID_15 0
  loc_CD45AB: CStrVarTmp
  loc_CD45AC: CVarStr var_E0
  loc_CD45AF: FLdRfVar var_F0
  loc_CD45B2: ImpAdCallFPR4  = Year()
  loc_CD45B7: FLdRfVar var_F0
  loc_CD45BA: ConcatVar var_130
  loc_CD45BE: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD45C3: ConcatVar var_140
  loc_CD45C7: LitI4 1
  loc_CD45CC: LitI4 1
  loc_CD45D1: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD45D6: FStVarCopyObj var_174
  loc_CD45D9: FLdRfVar var_174
  loc_CD45DC: FLdRfVar var_154
  loc_CD45DF: CStrVarTmp
  loc_CD45E0: CVarStr var_164
  loc_CD45E3: ImpAdCallI2 Format$(, )
  loc_CD45E8: CVarStr var_184
  loc_CD45EB: ConcatVar var_194
  loc_CD45EF: LitVarStr var_1A4, " AND "
  loc_CD45F4: ConcatVar var_1B4
  loc_CD45F8: LitI4 1
  loc_CD45FD: LitI4 1
  loc_CD4602: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD4607: FStVarCopyObj var_1F8
  loc_CD460A: FLdRfVar var_1F8
  loc_CD460D: FLdRfVar var_1C8
  loc_CD4610: CStrVarTmp
  loc_CD4611: CVarStr var_1D8
  loc_CD4614: ImpAdCallI2 Format$(, )
  loc_CD4619: CVarStr var_208
  loc_CD461C: ConcatVar var_218
  loc_CD4620: CStrVarVal var_BC
  loc_CD4624: FLdPr var_F4
  loc_CD4627: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD462C: FFree1Str var_BC
  loc_CD462F: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4638: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD465D: Branch loc_CD5E81
  loc_CD4660: LitStr "Municipalidad de Guaymallén"
  loc_CD4663: LitStr "Municipalidad de General Alvear"
  loc_CD4666: EqStr
  loc_CD4668: BranchF loc_CD4BA3
  loc_CD466B: FLdPr Me
  loc_CD466E: VCallAd Control_ID_DesdeMsk
  loc_CD4671: FStAdFunc var_144
  loc_CD4674: FLdPr var_144
  loc_CD4677: LateIdLdVar var_154 DispID_15 0
  loc_CD467E: PopAd
  loc_CD4680: FLdPr Me
  loc_CD4683: VCallAd Control_ID_HastaMsk
  loc_CD4686: FStAdFunc var_1B8
  loc_CD4689: FLdPr var_1B8
  loc_CD468C: LateIdLdVar var_1C8 DispID_15 0
  loc_CD4693: PopAd
  loc_CD4695: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD4698: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD469B: ConcatStr
  loc_CD469C: FStStrNoPop var_BC
  loc_CD469F: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD46A2: ConcatStr
  loc_CD46A3: CVarStr var_120
  loc_CD46A6: FLdPr Me
  loc_CD46A9: VCallAd Control_ID_DesdeMsk
  loc_CD46AC: FStAdFunc var_B8
  loc_CD46AF: FLdPr var_B8
  loc_CD46B2: LateIdLdVar var_D0 DispID_15 0
  loc_CD46B9: CStrVarTmp
  loc_CD46BA: CVarStr var_E0
  loc_CD46BD: FLdRfVar var_F0
  loc_CD46C0: ImpAdCallFPR4  = Year()
  loc_CD46C5: FLdRfVar var_F0
  loc_CD46C8: ConcatVar var_130
  loc_CD46CC: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD46D1: ConcatVar var_140
  loc_CD46D5: LitI4 1
  loc_CD46DA: LitI4 1
  loc_CD46DF: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD46E4: FStVarCopyObj var_174
  loc_CD46E7: FLdRfVar var_174
  loc_CD46EA: FLdRfVar var_154
  loc_CD46ED: CStrVarTmp
  loc_CD46EE: CVarStr var_164
  loc_CD46F1: ImpAdCallI2 Format$(, )
  loc_CD46F6: CVarStr var_184
  loc_CD46F9: ConcatVar var_194
  loc_CD46FD: LitVarStr var_1A4, " AND "
  loc_CD4702: ConcatVar var_1B4
  loc_CD4706: LitI4 1
  loc_CD470B: LitI4 1
  loc_CD4710: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD4715: FStVarCopyObj var_1F8
  loc_CD4718: FLdRfVar var_1F8
  loc_CD471B: FLdRfVar var_1C8
  loc_CD471E: CStrVarTmp
  loc_CD471F: CVarStr var_1D8
  loc_CD4722: ImpAdCallI2 Format$(, )
  loc_CD4727: CVarStr var_208
  loc_CD472A: ConcatVar var_218
  loc_CD472E: CStrVarVal var_F8
  loc_CD4732: FLdPr var_F4
  loc_CD4735: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD473A: FFreeStr var_BC = ""
  loc_CD4741: FFreeAd var_B8 = "": var_144 = ""
  loc_CD474A: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD476F: FLdPr Me
  loc_CD4772: VCallAd Control_ID_DesdeMsk
  loc_CD4775: FStAdFunc var_144
  loc_CD4778: FLdPr var_144
  loc_CD477B: LateIdLdVar var_164 DispID_15 0
  loc_CD4782: PopAd
  loc_CD4784: FLdPr Me
  loc_CD4787: VCallAd Control_ID_HastaMsk
  loc_CD478A: FStAdFunc var_1B8
  loc_CD478D: FLdPr var_1B8
  loc_CD4790: LateIdLdVar var_1D8 DispID_15 0
  loc_CD4797: PopAd
  loc_CD4799: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoadPare as CodiConc, 0 CobrCtaCte,"
  loc_CD479C: LitStr " SUM(CoadBoap+HoreBoap+HoofBoap) as RendEnre"
  loc_CD479F: ConcatStr
  loc_CD47A0: FStStrNoPop var_BC
  loc_CD47A3: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD47A6: ConcatStr
  loc_CD47A7: CVarStr var_120
  loc_CD47AA: FLdPr Me
  loc_CD47AD: VCallAd Control_ID_DesdeMsk
  loc_CD47B0: FStAdFunc var_B8
  loc_CD47B3: FLdPr var_B8
  loc_CD47B6: LateIdLdVar var_D0 DispID_15 0
  loc_CD47BD: CStrVarTmp
  loc_CD47BE: CVarStr var_E0
  loc_CD47C1: FLdRfVar var_F0
  loc_CD47C4: ImpAdCallFPR4  = Year()
  loc_CD47C9: FLdRfVar var_F0
  loc_CD47CC: ConcatVar var_130
  loc_CD47D0: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD47D5: ConcatVar var_140
  loc_CD47D9: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD47DE: ConcatVar var_154
  loc_CD47E2: LitI4 1
  loc_CD47E7: LitI4 1
  loc_CD47EC: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD47F1: FStVarCopyObj var_184
  loc_CD47F4: FLdRfVar var_184
  loc_CD47F7: FLdRfVar var_164
  loc_CD47FA: CStrVarTmp
  loc_CD47FB: CVarStr var_174
  loc_CD47FE: ImpAdCallI2 Format$(, )
  loc_CD4803: CVarStr var_194
  loc_CD4806: ConcatVar var_1B4
  loc_CD480A: LitVarStr var_1E8, " AND "
  loc_CD480F: ConcatVar var_1C8
  loc_CD4813: LitI4 1
  loc_CD4818: LitI4 1
  loc_CD481D: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4822: FStVarCopyObj var_208
  loc_CD4825: FLdRfVar var_208
  loc_CD4828: FLdRfVar var_1D8
  loc_CD482B: CStrVarTmp
  loc_CD482C: CVarStr var_1F8
  loc_CD482F: ImpAdCallI2 Format$(, )
  loc_CD4834: CVarStr var_218
  loc_CD4837: ConcatVar var_238
  loc_CD483B: CStrVarVal var_F8
  loc_CD483F: FLdPr var_F4
  loc_CD4842: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4847: FFreeStr var_BC = ""
  loc_CD484E: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4857: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD487E: FLdPr Me
  loc_CD4881: VCallAd Control_ID_DesdeMsk
  loc_CD4884: FStAdFunc var_144
  loc_CD4887: FLdPr var_144
  loc_CD488A: LateIdLdVar var_164 DispID_15 0
  loc_CD4891: PopAd
  loc_CD4893: FLdPr Me
  loc_CD4896: VCallAd Control_ID_HastaMsk
  loc_CD4899: FStAdFunc var_1B8
  loc_CD489C: FLdPr var_1B8
  loc_CD489F: LateIdLdVar var_1D8 DispID_15 0
  loc_CD48A6: PopAd
  loc_CD48A8: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoapPare as CodiConc, 0 CobrCtaCte,"
  loc_CD48AB: LitStr " SUM(MoreBoap+MoofBoap) as RendEnre"
  loc_CD48AE: ConcatStr
  loc_CD48AF: FStStrNoPop var_BC
  loc_CD48B2: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD48B5: ConcatStr
  loc_CD48B6: CVarStr var_120
  loc_CD48B9: FLdPr Me
  loc_CD48BC: VCallAd Control_ID_DesdeMsk
  loc_CD48BF: FStAdFunc var_B8
  loc_CD48C2: FLdPr var_B8
  loc_CD48C5: LateIdLdVar var_D0 DispID_15 0
  loc_CD48CC: CStrVarTmp
  loc_CD48CD: CVarStr var_E0
  loc_CD48D0: FLdRfVar var_F0
  loc_CD48D3: ImpAdCallFPR4  = Year()
  loc_CD48D8: FLdRfVar var_F0
  loc_CD48DB: ConcatVar var_130
  loc_CD48DF: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD48E4: ConcatVar var_140
  loc_CD48E8: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD48ED: ConcatVar var_154
  loc_CD48F1: LitI4 1
  loc_CD48F6: LitI4 1
  loc_CD48FB: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD4900: FStVarCopyObj var_184
  loc_CD4903: FLdRfVar var_184
  loc_CD4906: FLdRfVar var_164
  loc_CD4909: CStrVarTmp
  loc_CD490A: CVarStr var_174
  loc_CD490D: ImpAdCallI2 Format$(, )
  loc_CD4912: CVarStr var_194
  loc_CD4915: ConcatVar var_1B4
  loc_CD4919: LitVarStr var_1E8, " AND "
  loc_CD491E: ConcatVar var_1C8
  loc_CD4922: LitI4 1
  loc_CD4927: LitI4 1
  loc_CD492C: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4931: FStVarCopyObj var_208
  loc_CD4934: FLdRfVar var_208
  loc_CD4937: FLdRfVar var_1D8
  loc_CD493A: CStrVarTmp
  loc_CD493B: CVarStr var_1F8
  loc_CD493E: ImpAdCallI2 Format$(, )
  loc_CD4943: CVarStr var_218
  loc_CD4946: ConcatVar var_238
  loc_CD494A: CStrVarVal var_F8
  loc_CD494E: FLdPr var_F4
  loc_CD4951: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4956: FFreeStr var_BC = ""
  loc_CD495D: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4966: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD498D: FLdPr Me
  loc_CD4990: VCallAd Control_ID_DesdeMsk
  loc_CD4993: FStAdFunc var_144
  loc_CD4996: FLdPr var_144
  loc_CD4999: LateIdLdVar var_164 DispID_15 0
  loc_CD49A0: PopAd
  loc_CD49A2: FLdPr Me
  loc_CD49A5: VCallAd Control_ID_HastaMsk
  loc_CD49A8: FStAdFunc var_1B8
  loc_CD49AB: FLdPr var_1B8
  loc_CD49AE: LateIdLdVar var_1D8 DispID_15 0
  loc_CD49B5: PopAd
  loc_CD49B7: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoimPare as CodiConc, 0 CobrCtaCte,"
  loc_CD49BA: LitStr " SUM(ApleBoap+DefiBoap+ReseBoap) as RendEnre"
  loc_CD49BD: ConcatStr
  loc_CD49BE: FStStrNoPop var_BC
  loc_CD49C1: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD49C4: ConcatStr
  loc_CD49C5: CVarStr var_120
  loc_CD49C8: FLdPr Me
  loc_CD49CB: VCallAd Control_ID_DesdeMsk
  loc_CD49CE: FStAdFunc var_B8
  loc_CD49D1: FLdPr var_B8
  loc_CD49D4: LateIdLdVar var_D0 DispID_15 0
  loc_CD49DB: CStrVarTmp
  loc_CD49DC: CVarStr var_E0
  loc_CD49DF: FLdRfVar var_F0
  loc_CD49E2: ImpAdCallFPR4  = Year()
  loc_CD49E7: FLdRfVar var_F0
  loc_CD49EA: ConcatVar var_130
  loc_CD49EE: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD49F3: ConcatVar var_140
  loc_CD49F7: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD49FC: ConcatVar var_154
  loc_CD4A00: LitI4 1
  loc_CD4A05: LitI4 1
  loc_CD4A0A: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD4A0F: FStVarCopyObj var_184
  loc_CD4A12: FLdRfVar var_184
  loc_CD4A15: FLdRfVar var_164
  loc_CD4A18: CStrVarTmp
  loc_CD4A19: CVarStr var_174
  loc_CD4A1C: ImpAdCallI2 Format$(, )
  loc_CD4A21: CVarStr var_194
  loc_CD4A24: ConcatVar var_1B4
  loc_CD4A28: LitVarStr var_1E8, " AND "
  loc_CD4A2D: ConcatVar var_1C8
  loc_CD4A31: LitI4 1
  loc_CD4A36: LitI4 1
  loc_CD4A3B: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4A40: FStVarCopyObj var_208
  loc_CD4A43: FLdRfVar var_208
  loc_CD4A46: FLdRfVar var_1D8
  loc_CD4A49: CStrVarTmp
  loc_CD4A4A: CVarStr var_1F8
  loc_CD4A4D: ImpAdCallI2 Format$(, )
  loc_CD4A52: CVarStr var_218
  loc_CD4A55: ConcatVar var_238
  loc_CD4A59: CStrVarVal var_F8
  loc_CD4A5D: FLdPr var_F4
  loc_CD4A60: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4A65: FFreeStr var_BC = ""
  loc_CD4A6C: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4A75: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4A9C: FLdPr Me
  loc_CD4A9F: VCallAd Control_ID_DesdeMsk
  loc_CD4AA2: FStAdFunc var_144
  loc_CD4AA5: FLdPr var_144
  loc_CD4AA8: LateIdLdVar var_154 DispID_15 0
  loc_CD4AAF: PopAd
  loc_CD4AB1: FLdPr Me
  loc_CD4AB4: VCallAd Control_ID_HastaMsk
  loc_CD4AB7: FStAdFunc var_1B8
  loc_CD4ABA: FLdPr var_1B8
  loc_CD4ABD: LateIdLdVar var_1C8 DispID_15 0
  loc_CD4AC4: PopAd
  loc_CD4AC6: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoinPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4AC9: LitStr " sum(InteDepa) as RendEnre"
  loc_CD4ACC: ConcatStr
  loc_CD4ACD: FStStrNoPop var_BC
  loc_CD4AD0: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4AD3: ConcatStr
  loc_CD4AD4: CVarStr var_120
  loc_CD4AD7: FLdPr Me
  loc_CD4ADA: VCallAd Control_ID_DesdeMsk
  loc_CD4ADD: FStAdFunc var_B8
  loc_CD4AE0: FLdPr var_B8
  loc_CD4AE3: LateIdLdVar var_D0 DispID_15 0
  loc_CD4AEA: CStrVarTmp
  loc_CD4AEB: CVarStr var_E0
  loc_CD4AEE: FLdRfVar var_F0
  loc_CD4AF1: ImpAdCallFPR4  = Year()
  loc_CD4AF6: FLdRfVar var_F0
  loc_CD4AF9: ConcatVar var_130
  loc_CD4AFD: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD4B02: ConcatVar var_140
  loc_CD4B06: LitI4 1
  loc_CD4B0B: LitI4 1
  loc_CD4B10: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD4B15: FStVarCopyObj var_174
  loc_CD4B18: FLdRfVar var_174
  loc_CD4B1B: FLdRfVar var_154
  loc_CD4B1E: CStrVarTmp
  loc_CD4B1F: CVarStr var_164
  loc_CD4B22: ImpAdCallI2 Format$(, )
  loc_CD4B27: CVarStr var_184
  loc_CD4B2A: ConcatVar var_194
  loc_CD4B2E: LitVarStr var_1A4, " AND "
  loc_CD4B33: ConcatVar var_1B4
  loc_CD4B37: LitI4 1
  loc_CD4B3C: LitI4 1
  loc_CD4B41: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD4B46: FStVarCopyObj var_1F8
  loc_CD4B49: FLdRfVar var_1F8
  loc_CD4B4C: FLdRfVar var_1C8
  loc_CD4B4F: CStrVarTmp
  loc_CD4B50: CVarStr var_1D8
  loc_CD4B53: ImpAdCallI2 Format$(, )
  loc_CD4B58: CVarStr var_208
  loc_CD4B5B: ConcatVar var_218
  loc_CD4B5F: CStrVarVal var_F8
  loc_CD4B63: FLdPr var_F4
  loc_CD4B66: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4B6B: FFreeStr var_BC = ""
  loc_CD4B72: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4B7B: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD4BA0: Branch loc_CD5E81
  loc_CD4BA3: LitStr "Municipalidad de Guaymallén"
  loc_CD4BA6: LitStr "Municipalidad de Guaymallén"
  loc_CD4BA9: EqStr
  loc_CD4BAB: BranchF loc_CD50E6
  loc_CD4BAE: FLdPr Me
  loc_CD4BB1: VCallAd Control_ID_DesdeMsk
  loc_CD4BB4: FStAdFunc var_144
  loc_CD4BB7: FLdPr var_144
  loc_CD4BBA: LateIdLdVar var_154 DispID_15 0
  loc_CD4BC1: PopAd
  loc_CD4BC3: FLdPr Me
  loc_CD4BC6: VCallAd Control_ID_HastaMsk
  loc_CD4BC9: FStAdFunc var_1B8
  loc_CD4BCC: FLdPr var_1B8
  loc_CD4BCF: LateIdLdVar var_1C8 DispID_15 0
  loc_CD4BD6: PopAd
  loc_CD4BD8: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD4BDB: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD4BDE: ConcatStr
  loc_CD4BDF: FStStrNoPop var_BC
  loc_CD4BE2: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4BE5: ConcatStr
  loc_CD4BE6: CVarStr var_120
  loc_CD4BE9: FLdPr Me
  loc_CD4BEC: VCallAd Control_ID_DesdeMsk
  loc_CD4BEF: FStAdFunc var_B8
  loc_CD4BF2: FLdPr var_B8
  loc_CD4BF5: LateIdLdVar var_D0 DispID_15 0
  loc_CD4BFC: CStrVarTmp
  loc_CD4BFD: CVarStr var_E0
  loc_CD4C00: FLdRfVar var_F0
  loc_CD4C03: ImpAdCallFPR4  = Year()
  loc_CD4C08: FLdRfVar var_F0
  loc_CD4C0B: ConcatVar var_130
  loc_CD4C0F: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD4C14: ConcatVar var_140
  loc_CD4C18: LitI4 1
  loc_CD4C1D: LitI4 1
  loc_CD4C22: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD4C27: FStVarCopyObj var_174
  loc_CD4C2A: FLdRfVar var_174
  loc_CD4C2D: FLdRfVar var_154
  loc_CD4C30: CStrVarTmp
  loc_CD4C31: CVarStr var_164
  loc_CD4C34: ImpAdCallI2 Format$(, )
  loc_CD4C39: CVarStr var_184
  loc_CD4C3C: ConcatVar var_194
  loc_CD4C40: LitVarStr var_1A4, " AND "
  loc_CD4C45: ConcatVar var_1B4
  loc_CD4C49: LitI4 1
  loc_CD4C4E: LitI4 1
  loc_CD4C53: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD4C58: FStVarCopyObj var_1F8
  loc_CD4C5B: FLdRfVar var_1F8
  loc_CD4C5E: FLdRfVar var_1C8
  loc_CD4C61: CStrVarTmp
  loc_CD4C62: CVarStr var_1D8
  loc_CD4C65: ImpAdCallI2 Format$(, )
  loc_CD4C6A: CVarStr var_208
  loc_CD4C6D: ConcatVar var_218
  loc_CD4C71: CStrVarVal var_F8
  loc_CD4C75: FLdPr var_F4
  loc_CD4C78: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4C7D: FFreeStr var_BC = ""
  loc_CD4C84: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4C8D: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD4CB2: FLdPr Me
  loc_CD4CB5: VCallAd Control_ID_DesdeMsk
  loc_CD4CB8: FStAdFunc var_144
  loc_CD4CBB: FLdPr var_144
  loc_CD4CBE: LateIdLdVar var_164 DispID_15 0
  loc_CD4CC5: PopAd
  loc_CD4CC7: FLdPr Me
  loc_CD4CCA: VCallAd Control_ID_HastaMsk
  loc_CD4CCD: FStAdFunc var_1B8
  loc_CD4CD0: FLdPr var_1B8
  loc_CD4CD3: LateIdLdVar var_1D8 DispID_15 0
  loc_CD4CDA: PopAd
  loc_CD4CDC: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoadPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4CDF: LitStr " SUM(CoadBoap+IcomBoap) as RendEnre"
  loc_CD4CE2: ConcatStr
  loc_CD4CE3: FStStrNoPop var_BC
  loc_CD4CE6: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4CE9: ConcatStr
  loc_CD4CEA: CVarStr var_120
  loc_CD4CED: FLdPr Me
  loc_CD4CF0: VCallAd Control_ID_DesdeMsk
  loc_CD4CF3: FStAdFunc var_B8
  loc_CD4CF6: FLdPr var_B8
  loc_CD4CF9: LateIdLdVar var_D0 DispID_15 0
  loc_CD4D00: CStrVarTmp
  loc_CD4D01: CVarStr var_E0
  loc_CD4D04: FLdRfVar var_F0
  loc_CD4D07: ImpAdCallFPR4  = Year()
  loc_CD4D0C: FLdRfVar var_F0
  loc_CD4D0F: ConcatVar var_130
  loc_CD4D13: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD4D18: ConcatVar var_140
  loc_CD4D1C: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD4D21: ConcatVar var_154
  loc_CD4D25: LitI4 1
  loc_CD4D2A: LitI4 1
  loc_CD4D2F: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD4D34: FStVarCopyObj var_184
  loc_CD4D37: FLdRfVar var_184
  loc_CD4D3A: FLdRfVar var_164
  loc_CD4D3D: CStrVarTmp
  loc_CD4D3E: CVarStr var_174
  loc_CD4D41: ImpAdCallI2 Format$(, )
  loc_CD4D46: CVarStr var_194
  loc_CD4D49: ConcatVar var_1B4
  loc_CD4D4D: LitVarStr var_1E8, " AND "
  loc_CD4D52: ConcatVar var_1C8
  loc_CD4D56: LitI4 1
  loc_CD4D5B: LitI4 1
  loc_CD4D60: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4D65: FStVarCopyObj var_208
  loc_CD4D68: FLdRfVar var_208
  loc_CD4D6B: FLdRfVar var_1D8
  loc_CD4D6E: CStrVarTmp
  loc_CD4D6F: CVarStr var_1F8
  loc_CD4D72: ImpAdCallI2 Format$(, )
  loc_CD4D77: CVarStr var_218
  loc_CD4D7A: ConcatVar var_238
  loc_CD4D7E: CStrVarVal var_F8
  loc_CD4D82: FLdPr var_F4
  loc_CD4D85: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4D8A: FFreeStr var_BC = ""
  loc_CD4D91: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4D9A: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4DC1: FLdPr Me
  loc_CD4DC4: VCallAd Control_ID_DesdeMsk
  loc_CD4DC7: FStAdFunc var_144
  loc_CD4DCA: FLdPr var_144
  loc_CD4DCD: LateIdLdVar var_164 DispID_15 0
  loc_CD4DD4: PopAd
  loc_CD4DD6: FLdPr Me
  loc_CD4DD9: VCallAd Control_ID_HastaMsk
  loc_CD4DDC: FStAdFunc var_1B8
  loc_CD4DDF: FLdPr var_1B8
  loc_CD4DE2: LateIdLdVar var_1D8 DispID_15 0
  loc_CD4DE9: PopAd
  loc_CD4DEB: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoapPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4DEE: LitStr " SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as RendEnre"
  loc_CD4DF1: ConcatStr
  loc_CD4DF2: FStStrNoPop var_BC
  loc_CD4DF5: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4DF8: ConcatStr
  loc_CD4DF9: CVarStr var_120
  loc_CD4DFC: FLdPr Me
  loc_CD4DFF: VCallAd Control_ID_DesdeMsk
  loc_CD4E02: FStAdFunc var_B8
  loc_CD4E05: FLdPr var_B8
  loc_CD4E08: LateIdLdVar var_D0 DispID_15 0
  loc_CD4E0F: CStrVarTmp
  loc_CD4E10: CVarStr var_E0
  loc_CD4E13: FLdRfVar var_F0
  loc_CD4E16: ImpAdCallFPR4  = Year()
  loc_CD4E1B: FLdRfVar var_F0
  loc_CD4E1E: ConcatVar var_130
  loc_CD4E22: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD4E27: ConcatVar var_140
  loc_CD4E2B: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD4E30: ConcatVar var_154
  loc_CD4E34: LitI4 1
  loc_CD4E39: LitI4 1
  loc_CD4E3E: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD4E43: FStVarCopyObj var_184
  loc_CD4E46: FLdRfVar var_184
  loc_CD4E49: FLdRfVar var_164
  loc_CD4E4C: CStrVarTmp
  loc_CD4E4D: CVarStr var_174
  loc_CD4E50: ImpAdCallI2 Format$(, )
  loc_CD4E55: CVarStr var_194
  loc_CD4E58: ConcatVar var_1B4
  loc_CD4E5C: LitVarStr var_1E8, " AND "
  loc_CD4E61: ConcatVar var_1C8
  loc_CD4E65: LitI4 1
  loc_CD4E6A: LitI4 1
  loc_CD4E6F: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4E74: FStVarCopyObj var_208
  loc_CD4E77: FLdRfVar var_208
  loc_CD4E7A: FLdRfVar var_1D8
  loc_CD4E7D: CStrVarTmp
  loc_CD4E7E: CVarStr var_1F8
  loc_CD4E81: ImpAdCallI2 Format$(, )
  loc_CD4E86: CVarStr var_218
  loc_CD4E89: ConcatVar var_238
  loc_CD4E8D: CStrVarVal var_F8
  loc_CD4E91: FLdPr var_F4
  loc_CD4E94: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4E99: FFreeStr var_BC = ""
  loc_CD4EA0: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4EA9: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4ED0: FLdPr Me
  loc_CD4ED3: VCallAd Control_ID_DesdeMsk
  loc_CD4ED6: FStAdFunc var_144
  loc_CD4ED9: FLdPr var_144
  loc_CD4EDC: LateIdLdVar var_164 DispID_15 0
  loc_CD4EE3: PopAd
  loc_CD4EE5: FLdPr Me
  loc_CD4EE8: VCallAd Control_ID_HastaMsk
  loc_CD4EEB: FStAdFunc var_1B8
  loc_CD4EEE: FLdPr var_1B8
  loc_CD4EF1: LateIdLdVar var_1D8 DispID_15 0
  loc_CD4EF8: PopAd
  loc_CD4EFA: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoimPare as CodiConc, 0 CobrCtaCte,"
  loc_CD4EFD: LitStr " SUM(ApleBoap+DefiBoap+ReseBoap) as RendEnre"
  loc_CD4F00: ConcatStr
  loc_CD4F01: FStStrNoPop var_BC
  loc_CD4F04: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD4F07: ConcatStr
  loc_CD4F08: CVarStr var_120
  loc_CD4F0B: FLdPr Me
  loc_CD4F0E: VCallAd Control_ID_DesdeMsk
  loc_CD4F11: FStAdFunc var_B8
  loc_CD4F14: FLdPr var_B8
  loc_CD4F17: LateIdLdVar var_D0 DispID_15 0
  loc_CD4F1E: CStrVarTmp
  loc_CD4F1F: CVarStr var_E0
  loc_CD4F22: FLdRfVar var_F0
  loc_CD4F25: ImpAdCallFPR4  = Year()
  loc_CD4F2A: FLdRfVar var_F0
  loc_CD4F2D: ConcatVar var_130
  loc_CD4F31: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD4F36: ConcatVar var_140
  loc_CD4F3A: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD4F3F: ConcatVar var_154
  loc_CD4F43: LitI4 1
  loc_CD4F48: LitI4 1
  loc_CD4F4D: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD4F52: FStVarCopyObj var_184
  loc_CD4F55: FLdRfVar var_184
  loc_CD4F58: FLdRfVar var_164
  loc_CD4F5B: CStrVarTmp
  loc_CD4F5C: CVarStr var_174
  loc_CD4F5F: ImpAdCallI2 Format$(, )
  loc_CD4F64: CVarStr var_194
  loc_CD4F67: ConcatVar var_1B4
  loc_CD4F6B: LitVarStr var_1E8, " AND "
  loc_CD4F70: ConcatVar var_1C8
  loc_CD4F74: LitI4 1
  loc_CD4F79: LitI4 1
  loc_CD4F7E: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD4F83: FStVarCopyObj var_208
  loc_CD4F86: FLdRfVar var_208
  loc_CD4F89: FLdRfVar var_1D8
  loc_CD4F8C: CStrVarTmp
  loc_CD4F8D: CVarStr var_1F8
  loc_CD4F90: ImpAdCallI2 Format$(, )
  loc_CD4F95: CVarStr var_218
  loc_CD4F98: ConcatVar var_238
  loc_CD4F9C: CStrVarVal var_F8
  loc_CD4FA0: FLdPr var_F4
  loc_CD4FA3: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD4FA8: FFreeStr var_BC = ""
  loc_CD4FAF: FFreeAd var_B8 = "": var_144 = ""
  loc_CD4FB8: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD4FDF: FLdPr Me
  loc_CD4FE2: VCallAd Control_ID_DesdeMsk
  loc_CD4FE5: FStAdFunc var_144
  loc_CD4FE8: FLdPr var_144
  loc_CD4FEB: LateIdLdVar var_154 DispID_15 0
  loc_CD4FF2: PopAd
  loc_CD4FF4: FLdPr Me
  loc_CD4FF7: VCallAd Control_ID_HastaMsk
  loc_CD4FFA: FStAdFunc var_1B8
  loc_CD4FFD: FLdPr var_1B8
  loc_CD5000: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5007: PopAd
  loc_CD5009: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoinPare as CodiConc, 0 CobrCtaCte, "
  loc_CD500C: LitStr " sum(InteDepa) as RendEnre"
  loc_CD500F: ConcatStr
  loc_CD5010: FStStrNoPop var_BC
  loc_CD5013: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5016: ConcatStr
  loc_CD5017: CVarStr var_120
  loc_CD501A: FLdPr Me
  loc_CD501D: VCallAd Control_ID_DesdeMsk
  loc_CD5020: FStAdFunc var_B8
  loc_CD5023: FLdPr var_B8
  loc_CD5026: LateIdLdVar var_D0 DispID_15 0
  loc_CD502D: CStrVarTmp
  loc_CD502E: CVarStr var_E0
  loc_CD5031: FLdRfVar var_F0
  loc_CD5034: ImpAdCallFPR4  = Year()
  loc_CD5039: FLdRfVar var_F0
  loc_CD503C: ConcatVar var_130
  loc_CD5040: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD5045: ConcatVar var_140
  loc_CD5049: LitI4 1
  loc_CD504E: LitI4 1
  loc_CD5053: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD5058: FStVarCopyObj var_174
  loc_CD505B: FLdRfVar var_174
  loc_CD505E: FLdRfVar var_154
  loc_CD5061: CStrVarTmp
  loc_CD5062: CVarStr var_164
  loc_CD5065: ImpAdCallI2 Format$(, )
  loc_CD506A: CVarStr var_184
  loc_CD506D: ConcatVar var_194
  loc_CD5071: LitVarStr var_1A4, " AND "
  loc_CD5076: ConcatVar var_1B4
  loc_CD507A: LitI4 1
  loc_CD507F: LitI4 1
  loc_CD5084: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD5089: FStVarCopyObj var_1F8
  loc_CD508C: FLdRfVar var_1F8
  loc_CD508F: FLdRfVar var_1C8
  loc_CD5092: CStrVarTmp
  loc_CD5093: CVarStr var_1D8
  loc_CD5096: ImpAdCallI2 Format$(, )
  loc_CD509B: CVarStr var_208
  loc_CD509E: ConcatVar var_218
  loc_CD50A2: CStrVarVal var_F8
  loc_CD50A6: FLdPr var_F4
  loc_CD50A9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD50AE: FFreeStr var_BC = ""
  loc_CD50B5: FFreeAd var_B8 = "": var_144 = ""
  loc_CD50BE: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD50E3: Branch loc_CD5E81
  loc_CD50E6: LitStr "Municipalidad de Guaymallén"
  loc_CD50E9: LitStr "Municipalidad de Santa Rosa"
  loc_CD50EC: EqStr
  loc_CD50EE: LitStr "Municipalidad de Guaymallén"
  loc_CD50F1: LitStr "Municipalidad de La Paz"
  loc_CD50F4: EqStr
  loc_CD50F6: OrI4
  loc_CD50F7: BranchF loc_CD5632
  loc_CD50FA: FLdPr Me
  loc_CD50FD: VCallAd Control_ID_DesdeMsk
  loc_CD5100: FStAdFunc var_144
  loc_CD5103: FLdPr var_144
  loc_CD5106: LateIdLdVar var_154 DispID_15 0
  loc_CD510D: PopAd
  loc_CD510F: FLdPr Me
  loc_CD5112: VCallAd Control_ID_HastaMsk
  loc_CD5115: FStAdFunc var_1B8
  loc_CD5118: FLdPr var_1B8
  loc_CD511B: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5122: PopAd
  loc_CD5124: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD5127: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD512A: ConcatStr
  loc_CD512B: FStStrNoPop var_BC
  loc_CD512E: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5131: ConcatStr
  loc_CD5132: CVarStr var_120
  loc_CD5135: FLdPr Me
  loc_CD5138: VCallAd Control_ID_DesdeMsk
  loc_CD513B: FStAdFunc var_B8
  loc_CD513E: FLdPr var_B8
  loc_CD5141: LateIdLdVar var_D0 DispID_15 0
  loc_CD5148: CStrVarTmp
  loc_CD5149: CVarStr var_E0
  loc_CD514C: FLdRfVar var_F0
  loc_CD514F: ImpAdCallFPR4  = Year()
  loc_CD5154: FLdRfVar var_F0
  loc_CD5157: ConcatVar var_130
  loc_CD515B: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD5160: ConcatVar var_140
  loc_CD5164: LitI4 1
  loc_CD5169: LitI4 1
  loc_CD516E: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD5173: FStVarCopyObj var_174
  loc_CD5176: FLdRfVar var_174
  loc_CD5179: FLdRfVar var_154
  loc_CD517C: CStrVarTmp
  loc_CD517D: CVarStr var_164
  loc_CD5180: ImpAdCallI2 Format$(, )
  loc_CD5185: CVarStr var_184
  loc_CD5188: ConcatVar var_194
  loc_CD518C: LitVarStr var_1A4, " AND "
  loc_CD5191: ConcatVar var_1B4
  loc_CD5195: LitI4 1
  loc_CD519A: LitI4 1
  loc_CD519F: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD51A4: FStVarCopyObj var_1F8
  loc_CD51A7: FLdRfVar var_1F8
  loc_CD51AA: FLdRfVar var_1C8
  loc_CD51AD: CStrVarTmp
  loc_CD51AE: CVarStr var_1D8
  loc_CD51B1: ImpAdCallI2 Format$(, )
  loc_CD51B6: CVarStr var_208
  loc_CD51B9: ConcatVar var_218
  loc_CD51BD: CStrVarVal var_F8
  loc_CD51C1: FLdPr var_F4
  loc_CD51C4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD51C9: FFreeStr var_BC = ""
  loc_CD51D0: FFreeAd var_B8 = "": var_144 = ""
  loc_CD51D9: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD51FE: FLdPr Me
  loc_CD5201: VCallAd Control_ID_DesdeMsk
  loc_CD5204: FStAdFunc var_144
  loc_CD5207: FLdPr var_144
  loc_CD520A: LateIdLdVar var_164 DispID_15 0
  loc_CD5211: PopAd
  loc_CD5213: FLdPr Me
  loc_CD5216: VCallAd Control_ID_HastaMsk
  loc_CD5219: FStAdFunc var_1B8
  loc_CD521C: FLdPr var_1B8
  loc_CD521F: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5226: PopAd
  loc_CD5228: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoadPare,'') as CodiConc, 0 CobrCtaCte,"
  loc_CD522B: LitStr " IFNULL(SUM(CoadBoap+IcomBoap),0) as RendEnre"
  loc_CD522E: ConcatStr
  loc_CD522F: FStStrNoPop var_BC
  loc_CD5232: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5235: ConcatStr
  loc_CD5236: CVarStr var_120
  loc_CD5239: FLdPr Me
  loc_CD523C: VCallAd Control_ID_DesdeMsk
  loc_CD523F: FStAdFunc var_B8
  loc_CD5242: FLdPr var_B8
  loc_CD5245: LateIdLdVar var_D0 DispID_15 0
  loc_CD524C: CStrVarTmp
  loc_CD524D: CVarStr var_E0
  loc_CD5250: FLdRfVar var_F0
  loc_CD5253: ImpAdCallFPR4  = Year()
  loc_CD5258: FLdRfVar var_F0
  loc_CD525B: ConcatVar var_130
  loc_CD525F: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD5264: ConcatVar var_140
  loc_CD5268: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD526D: ConcatVar var_154
  loc_CD5271: LitI4 1
  loc_CD5276: LitI4 1
  loc_CD527B: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD5280: FStVarCopyObj var_184
  loc_CD5283: FLdRfVar var_184
  loc_CD5286: FLdRfVar var_164
  loc_CD5289: CStrVarTmp
  loc_CD528A: CVarStr var_174
  loc_CD528D: ImpAdCallI2 Format$(, )
  loc_CD5292: CVarStr var_194
  loc_CD5295: ConcatVar var_1B4
  loc_CD5299: LitVarStr var_1E8, " AND "
  loc_CD529E: ConcatVar var_1C8
  loc_CD52A2: LitI4 1
  loc_CD52A7: LitI4 1
  loc_CD52AC: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD52B1: FStVarCopyObj var_208
  loc_CD52B4: FLdRfVar var_208
  loc_CD52B7: FLdRfVar var_1D8
  loc_CD52BA: CStrVarTmp
  loc_CD52BB: CVarStr var_1F8
  loc_CD52BE: ImpAdCallI2 Format$(, )
  loc_CD52C3: CVarStr var_218
  loc_CD52C6: ConcatVar var_238
  loc_CD52CA: CStrVarVal var_F8
  loc_CD52CE: FLdPr var_F4
  loc_CD52D1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD52D6: FFreeStr var_BC = ""
  loc_CD52DD: FFreeAd var_B8 = "": var_144 = ""
  loc_CD52E6: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD530D: FLdPr Me
  loc_CD5310: VCallAd Control_ID_DesdeMsk
  loc_CD5313: FStAdFunc var_144
  loc_CD5316: FLdPr var_144
  loc_CD5319: LateIdLdVar var_164 DispID_15 0
  loc_CD5320: PopAd
  loc_CD5322: FLdPr Me
  loc_CD5325: VCallAd Control_ID_HastaMsk
  loc_CD5328: FStAdFunc var_1B8
  loc_CD532B: FLdPr var_1B8
  loc_CD532E: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5335: PopAd
  loc_CD5337: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoapPare,'') as CodiConc, 0 CobrCtaCte,"
  loc_CD533A: LitStr " IFNULL(SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap),0) as RendEnre"
  loc_CD533D: ConcatStr
  loc_CD533E: FStStrNoPop var_BC
  loc_CD5341: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5344: ConcatStr
  loc_CD5345: CVarStr var_120
  loc_CD5348: FLdPr Me
  loc_CD534B: VCallAd Control_ID_DesdeMsk
  loc_CD534E: FStAdFunc var_B8
  loc_CD5351: FLdPr var_B8
  loc_CD5354: LateIdLdVar var_D0 DispID_15 0
  loc_CD535B: CStrVarTmp
  loc_CD535C: CVarStr var_E0
  loc_CD535F: FLdRfVar var_F0
  loc_CD5362: ImpAdCallFPR4  = Year()
  loc_CD5367: FLdRfVar var_F0
  loc_CD536A: ConcatVar var_130
  loc_CD536E: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD5373: ConcatVar var_140
  loc_CD5377: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD537C: ConcatVar var_154
  loc_CD5380: LitI4 1
  loc_CD5385: LitI4 1
  loc_CD538A: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD538F: FStVarCopyObj var_184
  loc_CD5392: FLdRfVar var_184
  loc_CD5395: FLdRfVar var_164
  loc_CD5398: CStrVarTmp
  loc_CD5399: CVarStr var_174
  loc_CD539C: ImpAdCallI2 Format$(, )
  loc_CD53A1: CVarStr var_194
  loc_CD53A4: ConcatVar var_1B4
  loc_CD53A8: LitVarStr var_1E8, " AND "
  loc_CD53AD: ConcatVar var_1C8
  loc_CD53B1: LitI4 1
  loc_CD53B6: LitI4 1
  loc_CD53BB: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD53C0: FStVarCopyObj var_208
  loc_CD53C3: FLdRfVar var_208
  loc_CD53C6: FLdRfVar var_1D8
  loc_CD53C9: CStrVarTmp
  loc_CD53CA: CVarStr var_1F8
  loc_CD53CD: ImpAdCallI2 Format$(, )
  loc_CD53D2: CVarStr var_218
  loc_CD53D5: ConcatVar var_238
  loc_CD53D9: CStrVarVal var_F8
  loc_CD53DD: FLdPr var_F4
  loc_CD53E0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD53E5: FFreeStr var_BC = ""
  loc_CD53EC: FFreeAd var_B8 = "": var_144 = ""
  loc_CD53F5: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD541C: FLdPr Me
  loc_CD541F: VCallAd Control_ID_DesdeMsk
  loc_CD5422: FStAdFunc var_144
  loc_CD5425: FLdPr var_144
  loc_CD5428: LateIdLdVar var_164 DispID_15 0
  loc_CD542F: PopAd
  loc_CD5431: FLdPr Me
  loc_CD5434: VCallAd Control_ID_HastaMsk
  loc_CD5437: FStAdFunc var_1B8
  loc_CD543A: FLdPr var_1B8
  loc_CD543D: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5444: PopAd
  loc_CD5446: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoimPare,'') as CodiConc, 0 CobrCtaCte,"
  loc_CD5449: LitStr " IFNULL(SUM(ApleBoap+DefiBoap+ReseBoap),0) as RendEnre"
  loc_CD544C: ConcatStr
  loc_CD544D: FStStrNoPop var_BC
  loc_CD5450: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5453: ConcatStr
  loc_CD5454: CVarStr var_120
  loc_CD5457: FLdPr Me
  loc_CD545A: VCallAd Control_ID_DesdeMsk
  loc_CD545D: FStAdFunc var_B8
  loc_CD5460: FLdPr var_B8
  loc_CD5463: LateIdLdVar var_D0 DispID_15 0
  loc_CD546A: CStrVarTmp
  loc_CD546B: CVarStr var_E0
  loc_CD546E: FLdRfVar var_F0
  loc_CD5471: ImpAdCallFPR4  = Year()
  loc_CD5476: FLdRfVar var_F0
  loc_CD5479: ConcatVar var_130
  loc_CD547D: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD5482: ConcatVar var_140
  loc_CD5486: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD548B: ConcatVar var_154
  loc_CD548F: LitI4 1
  loc_CD5494: LitI4 1
  loc_CD5499: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD549E: FStVarCopyObj var_184
  loc_CD54A1: FLdRfVar var_184
  loc_CD54A4: FLdRfVar var_164
  loc_CD54A7: CStrVarTmp
  loc_CD54A8: CVarStr var_174
  loc_CD54AB: ImpAdCallI2 Format$(, )
  loc_CD54B0: CVarStr var_194
  loc_CD54B3: ConcatVar var_1B4
  loc_CD54B7: LitVarStr var_1E8, " AND "
  loc_CD54BC: ConcatVar var_1C8
  loc_CD54C0: LitI4 1
  loc_CD54C5: LitI4 1
  loc_CD54CA: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD54CF: FStVarCopyObj var_208
  loc_CD54D2: FLdRfVar var_208
  loc_CD54D5: FLdRfVar var_1D8
  loc_CD54D8: CStrVarTmp
  loc_CD54D9: CVarStr var_1F8
  loc_CD54DC: ImpAdCallI2 Format$(, )
  loc_CD54E1: CVarStr var_218
  loc_CD54E4: ConcatVar var_238
  loc_CD54E8: CStrVarVal var_F8
  loc_CD54EC: FLdPr var_F4
  loc_CD54EF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD54F4: FFreeStr var_BC = ""
  loc_CD54FB: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5504: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD552B: FLdPr Me
  loc_CD552E: VCallAd Control_ID_DesdeMsk
  loc_CD5531: FStAdFunc var_144
  loc_CD5534: FLdPr var_144
  loc_CD5537: LateIdLdVar var_154 DispID_15 0
  loc_CD553E: PopAd
  loc_CD5540: FLdPr Me
  loc_CD5543: VCallAd Control_ID_HastaMsk
  loc_CD5546: FStAdFunc var_1B8
  loc_CD5549: FLdPr var_1B8
  loc_CD554C: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5553: PopAd
  loc_CD5555: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoinPare,'') as CodiConc, 0 CobrCtaCte, "
  loc_CD5558: LitStr " IFNULL(sum(InteDepa),0) as RendEnre"
  loc_CD555B: ConcatStr
  loc_CD555C: FStStrNoPop var_BC
  loc_CD555F: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5562: ConcatStr
  loc_CD5563: CVarStr var_120
  loc_CD5566: FLdPr Me
  loc_CD5569: VCallAd Control_ID_DesdeMsk
  loc_CD556C: FStAdFunc var_B8
  loc_CD556F: FLdPr var_B8
  loc_CD5572: LateIdLdVar var_D0 DispID_15 0
  loc_CD5579: CStrVarTmp
  loc_CD557A: CVarStr var_E0
  loc_CD557D: FLdRfVar var_F0
  loc_CD5580: ImpAdCallFPR4  = Year()
  loc_CD5585: FLdRfVar var_F0
  loc_CD5588: ConcatVar var_130
  loc_CD558C: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD5591: ConcatVar var_140
  loc_CD5595: LitI4 1
  loc_CD559A: LitI4 1
  loc_CD559F: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD55A4: FStVarCopyObj var_174
  loc_CD55A7: FLdRfVar var_174
  loc_CD55AA: FLdRfVar var_154
  loc_CD55AD: CStrVarTmp
  loc_CD55AE: CVarStr var_164
  loc_CD55B1: ImpAdCallI2 Format$(, )
  loc_CD55B6: CVarStr var_184
  loc_CD55B9: ConcatVar var_194
  loc_CD55BD: LitVarStr var_1A4, " AND "
  loc_CD55C2: ConcatVar var_1B4
  loc_CD55C6: LitI4 1
  loc_CD55CB: LitI4 1
  loc_CD55D0: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD55D5: FStVarCopyObj var_1F8
  loc_CD55D8: FLdRfVar var_1F8
  loc_CD55DB: FLdRfVar var_1C8
  loc_CD55DE: CStrVarTmp
  loc_CD55DF: CVarStr var_1D8
  loc_CD55E2: ImpAdCallI2 Format$(, )
  loc_CD55E7: CVarStr var_208
  loc_CD55EA: ConcatVar var_218
  loc_CD55EE: CStrVarVal var_F8
  loc_CD55F2: FLdPr var_F4
  loc_CD55F5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD55FA: FFreeStr var_BC = ""
  loc_CD5601: FFreeAd var_B8 = "": var_144 = ""
  loc_CD560A: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD562F: Branch loc_CD5E81
  loc_CD5632: LitStr "Municipalidad de Guaymallén"
  loc_CD5635: LitStr "Municipalidad de San Martin"
  loc_CD5638: EqStr
  loc_CD563A: BranchF loc_CD5A66
  loc_CD563D: FLdPr Me
  loc_CD5640: VCallAd Control_ID_DesdeMsk
  loc_CD5643: FStAdFunc var_144
  loc_CD5646: FLdPr var_144
  loc_CD5649: LateIdLdVar var_154 DispID_15 0
  loc_CD5650: PopAd
  loc_CD5652: FLdPr Me
  loc_CD5655: VCallAd Control_ID_HastaMsk
  loc_CD5658: FStAdFunc var_1B8
  loc_CD565B: FLdPr var_1B8
  loc_CD565E: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5665: PopAd
  loc_CD5667: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD566A: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD566D: ConcatStr
  loc_CD566E: FStStrNoPop var_BC
  loc_CD5671: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5674: ConcatStr
  loc_CD5675: CVarStr var_120
  loc_CD5678: FLdPr Me
  loc_CD567B: VCallAd Control_ID_DesdeMsk
  loc_CD567E: FStAdFunc var_B8
  loc_CD5681: FLdPr var_B8
  loc_CD5684: LateIdLdVar var_D0 DispID_15 0
  loc_CD568B: CStrVarTmp
  loc_CD568C: CVarStr var_E0
  loc_CD568F: FLdRfVar var_F0
  loc_CD5692: ImpAdCallFPR4  = Year()
  loc_CD5697: FLdRfVar var_F0
  loc_CD569A: ConcatVar var_130
  loc_CD569E: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD56A3: ConcatVar var_140
  loc_CD56A7: LitI4 1
  loc_CD56AC: LitI4 1
  loc_CD56B1: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD56B6: FStVarCopyObj var_174
  loc_CD56B9: FLdRfVar var_174
  loc_CD56BC: FLdRfVar var_154
  loc_CD56BF: CStrVarTmp
  loc_CD56C0: CVarStr var_164
  loc_CD56C3: ImpAdCallI2 Format$(, )
  loc_CD56C8: CVarStr var_184
  loc_CD56CB: ConcatVar var_194
  loc_CD56CF: LitVarStr var_1A4, " AND "
  loc_CD56D4: ConcatVar var_1B4
  loc_CD56D8: LitI4 1
  loc_CD56DD: LitI4 1
  loc_CD56E2: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD56E7: FStVarCopyObj var_1F8
  loc_CD56EA: FLdRfVar var_1F8
  loc_CD56ED: FLdRfVar var_1C8
  loc_CD56F0: CStrVarTmp
  loc_CD56F1: CVarStr var_1D8
  loc_CD56F4: ImpAdCallI2 Format$(, )
  loc_CD56F9: CVarStr var_208
  loc_CD56FC: ConcatVar var_218
  loc_CD5700: CStrVarVal var_F8
  loc_CD5704: FLdPr var_F4
  loc_CD5707: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD570C: FFreeStr var_BC = ""
  loc_CD5713: FFreeAd var_B8 = "": var_144 = ""
  loc_CD571C: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD5741: FLdPr Me
  loc_CD5744: VCallAd Control_ID_DesdeMsk
  loc_CD5747: FStAdFunc var_144
  loc_CD574A: FLdPr var_144
  loc_CD574D: LateIdLdVar var_164 DispID_15 0
  loc_CD5754: PopAd
  loc_CD5756: FLdPr Me
  loc_CD5759: VCallAd Control_ID_HastaMsk
  loc_CD575C: FStAdFunc var_1B8
  loc_CD575F: FLdPr var_1B8
  loc_CD5762: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5769: PopAd
  loc_CD576B: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoapPare as CodiConc, 0 CobrCtaCte,"
  loc_CD576E: LitStr " SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as RendEnre"
  loc_CD5771: ConcatStr
  loc_CD5772: FStStrNoPop var_BC
  loc_CD5775: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5778: ConcatStr
  loc_CD5779: CVarStr var_120
  loc_CD577C: FLdPr Me
  loc_CD577F: VCallAd Control_ID_DesdeMsk
  loc_CD5782: FStAdFunc var_B8
  loc_CD5785: FLdPr var_B8
  loc_CD5788: LateIdLdVar var_D0 DispID_15 0
  loc_CD578F: CStrVarTmp
  loc_CD5790: CVarStr var_E0
  loc_CD5793: FLdRfVar var_F0
  loc_CD5796: ImpAdCallFPR4  = Year()
  loc_CD579B: FLdRfVar var_F0
  loc_CD579E: ConcatVar var_130
  loc_CD57A2: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD57A7: ConcatVar var_140
  loc_CD57AB: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD57B0: ConcatVar var_154
  loc_CD57B4: LitI4 1
  loc_CD57B9: LitI4 1
  loc_CD57BE: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD57C3: FStVarCopyObj var_184
  loc_CD57C6: FLdRfVar var_184
  loc_CD57C9: FLdRfVar var_164
  loc_CD57CC: CStrVarTmp
  loc_CD57CD: CVarStr var_174
  loc_CD57D0: ImpAdCallI2 Format$(, )
  loc_CD57D5: CVarStr var_194
  loc_CD57D8: ConcatVar var_1B4
  loc_CD57DC: LitVarStr var_1E8, " AND "
  loc_CD57E1: ConcatVar var_1C8
  loc_CD57E5: LitI4 1
  loc_CD57EA: LitI4 1
  loc_CD57EF: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD57F4: FStVarCopyObj var_208
  loc_CD57F7: FLdRfVar var_208
  loc_CD57FA: FLdRfVar var_1D8
  loc_CD57FD: CStrVarTmp
  loc_CD57FE: CVarStr var_1F8
  loc_CD5801: ImpAdCallI2 Format$(, )
  loc_CD5806: CVarStr var_218
  loc_CD5809: ConcatVar var_238
  loc_CD580D: CStrVarVal var_F8
  loc_CD5811: FLdPr var_F4
  loc_CD5814: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5819: FFreeStr var_BC = ""
  loc_CD5820: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5829: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD5850: FLdPr Me
  loc_CD5853: VCallAd Control_ID_DesdeMsk
  loc_CD5856: FStAdFunc var_144
  loc_CD5859: FLdPr var_144
  loc_CD585C: LateIdLdVar var_164 DispID_15 0
  loc_CD5863: PopAd
  loc_CD5865: FLdPr Me
  loc_CD5868: VCallAd Control_ID_HastaMsk
  loc_CD586B: FStAdFunc var_1B8
  loc_CD586E: FLdPr var_1B8
  loc_CD5871: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5878: PopAd
  loc_CD587A: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoimPare as CodiConc, 0 CobrCtaCte,"
  loc_CD587D: LitStr " SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as RendEnre"
  loc_CD5880: ConcatStr
  loc_CD5881: FStStrNoPop var_BC
  loc_CD5884: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5887: ConcatStr
  loc_CD5888: CVarStr var_120
  loc_CD588B: FLdPr Me
  loc_CD588E: VCallAd Control_ID_DesdeMsk
  loc_CD5891: FStAdFunc var_B8
  loc_CD5894: FLdPr var_B8
  loc_CD5897: LateIdLdVar var_D0 DispID_15 0
  loc_CD589E: CStrVarTmp
  loc_CD589F: CVarStr var_E0
  loc_CD58A2: FLdRfVar var_F0
  loc_CD58A5: ImpAdCallFPR4  = Year()
  loc_CD58AA: FLdRfVar var_F0
  loc_CD58AD: ConcatVar var_130
  loc_CD58B1: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD58B6: ConcatVar var_140
  loc_CD58BA: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD58BF: ConcatVar var_154
  loc_CD58C3: LitI4 1
  loc_CD58C8: LitI4 1
  loc_CD58CD: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD58D2: FStVarCopyObj var_184
  loc_CD58D5: FLdRfVar var_184
  loc_CD58D8: FLdRfVar var_164
  loc_CD58DB: CStrVarTmp
  loc_CD58DC: CVarStr var_174
  loc_CD58DF: ImpAdCallI2 Format$(, )
  loc_CD58E4: CVarStr var_194
  loc_CD58E7: ConcatVar var_1B4
  loc_CD58EB: LitVarStr var_1E8, " AND "
  loc_CD58F0: ConcatVar var_1C8
  loc_CD58F4: LitI4 1
  loc_CD58F9: LitI4 1
  loc_CD58FE: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD5903: FStVarCopyObj var_208
  loc_CD5906: FLdRfVar var_208
  loc_CD5909: FLdRfVar var_1D8
  loc_CD590C: CStrVarTmp
  loc_CD590D: CVarStr var_1F8
  loc_CD5910: ImpAdCallI2 Format$(, )
  loc_CD5915: CVarStr var_218
  loc_CD5918: ConcatVar var_238
  loc_CD591C: CStrVarVal var_F8
  loc_CD5920: FLdPr var_F4
  loc_CD5923: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5928: FFreeStr var_BC = ""
  loc_CD592F: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5938: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD595F: FLdPr Me
  loc_CD5962: VCallAd Control_ID_DesdeMsk
  loc_CD5965: FStAdFunc var_144
  loc_CD5968: FLdPr var_144
  loc_CD596B: LateIdLdVar var_154 DispID_15 0
  loc_CD5972: PopAd
  loc_CD5974: FLdPr Me
  loc_CD5977: VCallAd Control_ID_HastaMsk
  loc_CD597A: FStAdFunc var_1B8
  loc_CD597D: FLdPr var_1B8
  loc_CD5980: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5987: PopAd
  loc_CD5989: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoinPare as CodiConc, 0 CobrCtaCte, "
  loc_CD598C: LitStr " sum(InteDepa) as RendEnre"
  loc_CD598F: ConcatStr
  loc_CD5990: FStStrNoPop var_BC
  loc_CD5993: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5996: ConcatStr
  loc_CD5997: CVarStr var_120
  loc_CD599A: FLdPr Me
  loc_CD599D: VCallAd Control_ID_DesdeMsk
  loc_CD59A0: FStAdFunc var_B8
  loc_CD59A3: FLdPr var_B8
  loc_CD59A6: LateIdLdVar var_D0 DispID_15 0
  loc_CD59AD: CStrVarTmp
  loc_CD59AE: CVarStr var_E0
  loc_CD59B1: FLdRfVar var_F0
  loc_CD59B4: ImpAdCallFPR4  = Year()
  loc_CD59B9: FLdRfVar var_F0
  loc_CD59BC: ConcatVar var_130
  loc_CD59C0: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD59C5: ConcatVar var_140
  loc_CD59C9: LitI4 1
  loc_CD59CE: LitI4 1
  loc_CD59D3: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD59D8: FStVarCopyObj var_174
  loc_CD59DB: FLdRfVar var_174
  loc_CD59DE: FLdRfVar var_154
  loc_CD59E1: CStrVarTmp
  loc_CD59E2: CVarStr var_164
  loc_CD59E5: ImpAdCallI2 Format$(, )
  loc_CD59EA: CVarStr var_184
  loc_CD59ED: ConcatVar var_194
  loc_CD59F1: LitVarStr var_1A4, " AND "
  loc_CD59F6: ConcatVar var_1B4
  loc_CD59FA: LitI4 1
  loc_CD59FF: LitI4 1
  loc_CD5A04: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD5A09: FStVarCopyObj var_1F8
  loc_CD5A0C: FLdRfVar var_1F8
  loc_CD5A0F: FLdRfVar var_1C8
  loc_CD5A12: CStrVarTmp
  loc_CD5A13: CVarStr var_1D8
  loc_CD5A16: ImpAdCallI2 Format$(, )
  loc_CD5A1B: CVarStr var_208
  loc_CD5A1E: ConcatVar var_218
  loc_CD5A22: CStrVarVal var_F8
  loc_CD5A26: FLdPr var_F4
  loc_CD5A29: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5A2E: FFreeStr var_BC = ""
  loc_CD5A35: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5A3E: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD5A63: Branch loc_CD5E81
  loc_CD5A66: FLdPr Me
  loc_CD5A69: VCallAd Control_ID_DesdeMsk
  loc_CD5A6C: FStAdFunc var_144
  loc_CD5A6F: FLdPr var_144
  loc_CD5A72: LateIdLdVar var_154 DispID_15 0
  loc_CD5A79: PopAd
  loc_CD5A7B: FLdPr Me
  loc_CD5A7E: VCallAd Control_ID_HastaMsk
  loc_CD5A81: FStAdFunc var_1B8
  loc_CD5A84: FLdPr var_1B8
  loc_CD5A87: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5A8E: PopAd
  loc_CD5A90: LitStr " INSERT INTO tmp_conc SELECT pararenta.CorePare as CodiConc, 0 CobrCtaCte,"
  loc_CD5A93: LitStr " sum(RecaDepa-DereDepa) as RendEnre"
  loc_CD5A96: ConcatStr
  loc_CD5A97: FStStrNoPop var_BC
  loc_CD5A9A: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5A9D: ConcatStr
  loc_CD5A9E: CVarStr var_120
  loc_CD5AA1: FLdPr Me
  loc_CD5AA4: VCallAd Control_ID_DesdeMsk
  loc_CD5AA7: FStAdFunc var_B8
  loc_CD5AAA: FLdPr var_B8
  loc_CD5AAD: LateIdLdVar var_D0 DispID_15 0
  loc_CD5AB4: CStrVarTmp
  loc_CD5AB5: CVarStr var_E0
  loc_CD5AB8: FLdRfVar var_F0
  loc_CD5ABB: ImpAdCallFPR4  = Year()
  loc_CD5AC0: FLdRfVar var_F0
  loc_CD5AC3: ConcatVar var_130
  loc_CD5AC7: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD5ACC: ConcatVar var_140
  loc_CD5AD0: LitI4 1
  loc_CD5AD5: LitI4 1
  loc_CD5ADA: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD5ADF: FStVarCopyObj var_174
  loc_CD5AE2: FLdRfVar var_174
  loc_CD5AE5: FLdRfVar var_154
  loc_CD5AE8: CStrVarTmp
  loc_CD5AE9: CVarStr var_164
  loc_CD5AEC: ImpAdCallI2 Format$(, )
  loc_CD5AF1: CVarStr var_184
  loc_CD5AF4: ConcatVar var_194
  loc_CD5AF8: LitVarStr var_1A4, " AND "
  loc_CD5AFD: ConcatVar var_1B4
  loc_CD5B01: LitI4 1
  loc_CD5B06: LitI4 1
  loc_CD5B0B: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD5B10: FStVarCopyObj var_1F8
  loc_CD5B13: FLdRfVar var_1F8
  loc_CD5B16: FLdRfVar var_1C8
  loc_CD5B19: CStrVarTmp
  loc_CD5B1A: CVarStr var_1D8
  loc_CD5B1D: ImpAdCallI2 Format$(, )
  loc_CD5B22: CVarStr var_208
  loc_CD5B25: ConcatVar var_218
  loc_CD5B29: CStrVarVal var_F8
  loc_CD5B2D: FLdPr var_F4
  loc_CD5B30: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5B35: FFreeStr var_BC = ""
  loc_CD5B3C: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5B45: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD5B6A: FLdPr Me
  loc_CD5B6D: VCallAd Control_ID_DesdeMsk
  loc_CD5B70: FStAdFunc var_144
  loc_CD5B73: FLdPr var_144
  loc_CD5B76: LateIdLdVar var_164 DispID_15 0
  loc_CD5B7D: PopAd
  loc_CD5B7F: FLdPr Me
  loc_CD5B82: VCallAd Control_ID_HastaMsk
  loc_CD5B85: FStAdFunc var_1B8
  loc_CD5B88: FLdPr var_1B8
  loc_CD5B8B: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5B92: PopAd
  loc_CD5B94: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoadPare,'') as CodiConc, 0 CobrCtaCte, "
  loc_CD5B97: LitStr " IFNULL(sum(CoadBoap),0) as RendEnre"
  loc_CD5B9A: ConcatStr
  loc_CD5B9B: FStStrNoPop var_BC
  loc_CD5B9E: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5BA1: ConcatStr
  loc_CD5BA2: CVarStr var_120
  loc_CD5BA5: FLdPr Me
  loc_CD5BA8: VCallAd Control_ID_DesdeMsk
  loc_CD5BAB: FStAdFunc var_B8
  loc_CD5BAE: FLdPr var_B8
  loc_CD5BB1: LateIdLdVar var_D0 DispID_15 0
  loc_CD5BB8: CStrVarTmp
  loc_CD5BB9: CVarStr var_E0
  loc_CD5BBC: FLdRfVar var_F0
  loc_CD5BBF: ImpAdCallFPR4  = Year()
  loc_CD5BC4: FLdRfVar var_F0
  loc_CD5BC7: ConcatVar var_130
  loc_CD5BCB: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CD5BD0: ConcatVar var_140
  loc_CD5BD4: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD5BD9: ConcatVar var_154
  loc_CD5BDD: LitI4 1
  loc_CD5BE2: LitI4 1
  loc_CD5BE7: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD5BEC: FStVarCopyObj var_184
  loc_CD5BEF: FLdRfVar var_184
  loc_CD5BF2: FLdRfVar var_164
  loc_CD5BF5: CStrVarTmp
  loc_CD5BF6: CVarStr var_174
  loc_CD5BF9: ImpAdCallI2 Format$(, )
  loc_CD5BFE: CVarStr var_194
  loc_CD5C01: ConcatVar var_1B4
  loc_CD5C05: LitVarStr var_1E8, " AND "
  loc_CD5C0A: ConcatVar var_1C8
  loc_CD5C0E: LitI4 1
  loc_CD5C13: LitI4 1
  loc_CD5C18: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD5C1D: FStVarCopyObj var_208
  loc_CD5C20: FLdRfVar var_208
  loc_CD5C23: FLdRfVar var_1D8
  loc_CD5C26: CStrVarTmp
  loc_CD5C27: CVarStr var_1F8
  loc_CD5C2A: ImpAdCallI2 Format$(, )
  loc_CD5C2F: CVarStr var_218
  loc_CD5C32: ConcatVar var_238
  loc_CD5C36: CStrVarVal var_F8
  loc_CD5C3A: FLdPr var_F4
  loc_CD5C3D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5C42: FFreeStr var_BC = ""
  loc_CD5C49: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5C52: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD5C79: FLdPr Me
  loc_CD5C7C: VCallAd Control_ID_DesdeMsk
  loc_CD5C7F: FStAdFunc var_144
  loc_CD5C82: FLdPr var_144
  loc_CD5C85: LateIdLdVar var_164 DispID_15 0
  loc_CD5C8C: PopAd
  loc_CD5C8E: FLdPr Me
  loc_CD5C91: VCallAd Control_ID_HastaMsk
  loc_CD5C94: FStAdFunc var_1B8
  loc_CD5C97: FLdPr var_1B8
  loc_CD5C9A: LateIdLdVar var_1D8 DispID_15 0
  loc_CD5CA1: PopAd
  loc_CD5CA3: LitStr " INSERT INTO tmp_conc SELECT IFNULL(pararenta.CoapPare,'') as CodiConc, 0 CobrCtaCte,"
  loc_CD5CA6: LitStr " IFNULL(sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap),0) as RendEnre"
  loc_CD5CA9: ConcatStr
  loc_CD5CAA: FStStrNoPop var_BC
  loc_CD5CAD: LitStr " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5CB0: ConcatStr
  loc_CD5CB1: CVarStr var_120
  loc_CD5CB4: FLdPr Me
  loc_CD5CB7: VCallAd Control_ID_DesdeMsk
  loc_CD5CBA: FStAdFunc var_B8
  loc_CD5CBD: FLdPr var_B8
  loc_CD5CC0: LateIdLdVar var_D0 DispID_15 0
  loc_CD5CC7: CStrVarTmp
  loc_CD5CC8: CVarStr var_E0
  loc_CD5CCB: FLdRfVar var_F0
  loc_CD5CCE: ImpAdCallFPR4  = Year()
  loc_CD5CD3: FLdRfVar var_F0
  loc_CD5CD6: ConcatVar var_130
  loc_CD5CDA: LitVarStr var_A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CD5CDF: ConcatVar var_140
  loc_CD5CE3: LitVarStr var_B4, " WHERE pago.FeenAcpa BETWEEN "
  loc_CD5CE8: ConcatVar var_154
  loc_CD5CEC: LitI4 1
  loc_CD5CF1: LitI4 1
  loc_CD5CF6: LitVarStr var_1A4, "'yyyy-mm-dd'"
  loc_CD5CFB: FStVarCopyObj var_184
  loc_CD5CFE: FLdRfVar var_184
  loc_CD5D01: FLdRfVar var_164
  loc_CD5D04: CStrVarTmp
  loc_CD5D05: CVarStr var_174
  loc_CD5D08: ImpAdCallI2 Format$(, )
  loc_CD5D0D: CVarStr var_194
  loc_CD5D10: ConcatVar var_1B4
  loc_CD5D14: LitVarStr var_1E8, " AND "
  loc_CD5D19: ConcatVar var_1C8
  loc_CD5D1D: LitI4 1
  loc_CD5D22: LitI4 1
  loc_CD5D27: LitVarStr var_228, "'yyyy-mm-dd'"
  loc_CD5D2C: FStVarCopyObj var_208
  loc_CD5D2F: FLdRfVar var_208
  loc_CD5D32: FLdRfVar var_1D8
  loc_CD5D35: CStrVarTmp
  loc_CD5D36: CVarStr var_1F8
  loc_CD5D39: ImpAdCallI2 Format$(, )
  loc_CD5D3E: CVarStr var_218
  loc_CD5D41: ConcatVar var_238
  loc_CD5D45: CStrVarVal var_F8
  loc_CD5D49: FLdPr var_F4
  loc_CD5D4C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5D51: FFreeStr var_BC = ""
  loc_CD5D58: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5D61: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_184 = "": var_154 = "": var_194 = "": var_1B4 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_1C8 = "": var_218 = ""
  loc_CD5D88: FLdPr Me
  loc_CD5D8B: VCallAd Control_ID_DesdeMsk
  loc_CD5D8E: FStAdFunc var_144
  loc_CD5D91: FLdPr var_144
  loc_CD5D94: LateIdLdVar var_154 DispID_15 0
  loc_CD5D9B: PopAd
  loc_CD5D9D: FLdPr Me
  loc_CD5DA0: VCallAd Control_ID_HastaMsk
  loc_CD5DA3: FStAdFunc var_1B8
  loc_CD5DA6: FLdPr var_1B8
  loc_CD5DA9: LateIdLdVar var_1C8 DispID_15 0
  loc_CD5DB0: PopAd
  loc_CD5DB2: LitStr " INSERT INTO tmp_conc SELECT pararenta.CoinPare as CodiConc, 0 CobrCtaCte, sum(InteDepa) as RendEnre"
  loc_CD5DB5: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CD5DB8: ConcatStr
  loc_CD5DB9: CVarStr var_120
  loc_CD5DBC: FLdPr Me
  loc_CD5DBF: VCallAd Control_ID_DesdeMsk
  loc_CD5DC2: FStAdFunc var_B8
  loc_CD5DC5: FLdPr var_B8
  loc_CD5DC8: LateIdLdVar var_D0 DispID_15 0
  loc_CD5DCF: CStrVarTmp
  loc_CD5DD0: CVarStr var_E0
  loc_CD5DD3: FLdRfVar var_F0
  loc_CD5DD6: ImpAdCallFPR4  = Year()
  loc_CD5DDB: FLdRfVar var_F0
  loc_CD5DDE: ConcatVar var_130
  loc_CD5DE2: LitVarStr var_A4, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CD5DE7: ConcatVar var_140
  loc_CD5DEB: LitI4 1
  loc_CD5DF0: LitI4 1
  loc_CD5DF5: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_CD5DFA: FStVarCopyObj var_174
  loc_CD5DFD: FLdRfVar var_174
  loc_CD5E00: FLdRfVar var_154
  loc_CD5E03: CStrVarTmp
  loc_CD5E04: CVarStr var_164
  loc_CD5E07: ImpAdCallI2 Format$(, )
  loc_CD5E0C: CVarStr var_184
  loc_CD5E0F: ConcatVar var_194
  loc_CD5E13: LitVarStr var_1A4, " AND "
  loc_CD5E18: ConcatVar var_1B4
  loc_CD5E1C: LitI4 1
  loc_CD5E21: LitI4 1
  loc_CD5E26: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_CD5E2B: FStVarCopyObj var_1F8
  loc_CD5E2E: FLdRfVar var_1F8
  loc_CD5E31: FLdRfVar var_1C8
  loc_CD5E34: CStrVarTmp
  loc_CD5E35: CVarStr var_1D8
  loc_CD5E38: ImpAdCallI2 Format$(, )
  loc_CD5E3D: CVarStr var_208
  loc_CD5E40: ConcatVar var_218
  loc_CD5E44: CStrVarVal var_BC
  loc_CD5E48: FLdPr var_F4
  loc_CD5E4B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5E50: FFree1Str var_BC
  loc_CD5E53: FFreeAd var_B8 = "": var_144 = ""
  loc_CD5E5C: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_154 = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B4 = "": var_208 = ""
  loc_CD5E81: LitStr "Municipalidad de Guaymallén"
  loc_CD5E84: LitStr "Municipalidad de General Alvear"
  loc_CD5E87: EqStr
  loc_CD5E89: BranchF loc_CD5F3C
  loc_CD5E8C: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD5E8F: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD5E92: ConcatStr
  loc_CD5E93: CVarStr var_120
  loc_CD5E96: FLdPr Me
  loc_CD5E99: VCallAd Control_ID_DesdeMsk
  loc_CD5E9C: FStAdFunc var_B8
  loc_CD5E9F: FLdPr var_B8
  loc_CD5EA2: LateIdLdVar var_D0 DispID_15 0
  loc_CD5EA9: CStrVarTmp
  loc_CD5EAA: CVarStr var_E0
  loc_CD5EAD: FLdRfVar var_F0
  loc_CD5EB0: ImpAdCallFPR4  = Year()
  loc_CD5EB5: FLdRfVar var_F0
  loc_CD5EB8: ConcatVar var_130
  loc_CD5EBC: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_CD5EC1: ConcatVar var_140
  loc_CD5EC5: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD5ECA: ConcatVar var_154
  loc_CD5ECE: FLdPr Me
  loc_CD5ED1: VCallAd Control_ID_DesdeMsk
  loc_CD5ED4: FStAdFunc var_144
  loc_CD5ED7: FLdPr var_144
  loc_CD5EDA: LateIdLdVar var_164 DispID_15 0
  loc_CD5EE1: CStrVarTmp
  loc_CD5EE2: CVarStr var_174
  loc_CD5EE5: FLdRfVar var_184
  loc_CD5EE8: ImpAdCallFPR4  = Year()
  loc_CD5EED: FLdRfVar var_184
  loc_CD5EF0: ConcatVar var_194
  loc_CD5EF4: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD5EF9: ConcatVar var_1B4
  loc_CD5EFD: LitVarStr var_1E8, " GROUP BY CodiConc"
  loc_CD5F02: ConcatVar var_1C8
  loc_CD5F06: CStrVarVal var_BC
  loc_CD5F0A: FLdPr var_F4
  loc_CD5F0D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5F12: FFree1Str var_BC
  loc_CD5F15: FFreeAd var_B8 = ""
  loc_CD5F1C: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_CD5F39: Branch loc_CD62E0
  loc_CD5F3C: LitStr "Municipalidad de Guaymallén"
  loc_CD5F3F: LitStr "Municipalidad de Guaymallén"
  loc_CD5F42: EqStr
  loc_CD5F44: BranchF loc_CD5FF7
  loc_CD5F47: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD5F4A: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD5F4D: ConcatStr
  loc_CD5F4E: CVarStr var_120
  loc_CD5F51: FLdPr Me
  loc_CD5F54: VCallAd Control_ID_DesdeMsk
  loc_CD5F57: FStAdFunc var_B8
  loc_CD5F5A: FLdPr var_B8
  loc_CD5F5D: LateIdLdVar var_D0 DispID_15 0
  loc_CD5F64: CStrVarTmp
  loc_CD5F65: CVarStr var_E0
  loc_CD5F68: FLdRfVar var_F0
  loc_CD5F6B: ImpAdCallFPR4  = Year()
  loc_CD5F70: FLdRfVar var_F0
  loc_CD5F73: ConcatVar var_130
  loc_CD5F77: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc AND concepto.ActiConc <> ''"
  loc_CD5F7C: ConcatVar var_140
  loc_CD5F80: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD5F85: ConcatVar var_154
  loc_CD5F89: FLdPr Me
  loc_CD5F8C: VCallAd Control_ID_DesdeMsk
  loc_CD5F8F: FStAdFunc var_144
  loc_CD5F92: FLdPr var_144
  loc_CD5F95: LateIdLdVar var_164 DispID_15 0
  loc_CD5F9C: CStrVarTmp
  loc_CD5F9D: CVarStr var_174
  loc_CD5FA0: FLdRfVar var_184
  loc_CD5FA3: ImpAdCallFPR4  = Year()
  loc_CD5FA8: FLdRfVar var_184
  loc_CD5FAB: ConcatVar var_194
  loc_CD5FAF: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD5FB4: ConcatVar var_1B4
  loc_CD5FB8: LitVarStr var_1E8, " GROUP BY CodiConc"
  loc_CD5FBD: ConcatVar var_1C8
  loc_CD5FC1: CStrVarVal var_BC
  loc_CD5FC5: FLdPr var_F4
  loc_CD5FC8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD5FCD: FFree1Str var_BC
  loc_CD5FD0: FFreeAd var_B8 = ""
  loc_CD5FD7: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_CD5FF4: Branch loc_CD62E0
  loc_CD5FF7: LitStr "Municipalidad de Guaymallén"
  loc_CD5FFA: LitStr "Municipalidad de Malargüe"
  loc_CD5FFD: EqStr
  loc_CD5FFF: BranchF loc_CD60B2
  loc_CD6002: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD6005: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD6008: ConcatStr
  loc_CD6009: CVarStr var_120
  loc_CD600C: FLdPr Me
  loc_CD600F: VCallAd Control_ID_DesdeMsk
  loc_CD6012: FStAdFunc var_B8
  loc_CD6015: FLdPr var_B8
  loc_CD6018: LateIdLdVar var_D0 DispID_15 0
  loc_CD601F: CStrVarTmp
  loc_CD6020: CVarStr var_E0
  loc_CD6023: FLdRfVar var_F0
  loc_CD6026: ImpAdCallFPR4  = Year()
  loc_CD602B: FLdRfVar var_F0
  loc_CD602E: ConcatVar var_130
  loc_CD6032: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc AND concepto.ActiConc <> ''"
  loc_CD6037: ConcatVar var_140
  loc_CD603B: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD6040: ConcatVar var_154
  loc_CD6044: FLdPr Me
  loc_CD6047: VCallAd Control_ID_DesdeMsk
  loc_CD604A: FStAdFunc var_144
  loc_CD604D: FLdPr var_144
  loc_CD6050: LateIdLdVar var_164 DispID_15 0
  loc_CD6057: CStrVarTmp
  loc_CD6058: CVarStr var_174
  loc_CD605B: FLdRfVar var_184
  loc_CD605E: ImpAdCallFPR4  = Year()
  loc_CD6063: FLdRfVar var_184
  loc_CD6066: ConcatVar var_194
  loc_CD606A: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD606F: ConcatVar var_1B4
  loc_CD6073: LitVarStr var_1E8, " GROUP BY CodiConc"
  loc_CD6078: ConcatVar var_1C8
  loc_CD607C: CStrVarVal var_BC
  loc_CD6080: FLdPr var_F4
  loc_CD6083: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD6088: FFree1Str var_BC
  loc_CD608B: FFreeAd var_B8 = ""
  loc_CD6092: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_CD60AF: Branch loc_CD62E0
  loc_CD60B2: LitStr "Municipalidad de Guaymallén"
  loc_CD60B5: LitStr "Municipalidad de La Paz"
  loc_CD60B8: EqStr
  loc_CD60BA: BranchF loc_CD616D
  loc_CD60BD: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD60C0: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD60C3: ConcatStr
  loc_CD60C4: CVarStr var_120
  loc_CD60C7: FLdPr Me
  loc_CD60CA: VCallAd Control_ID_DesdeMsk
  loc_CD60CD: FStAdFunc var_B8
  loc_CD60D0: FLdPr var_B8
  loc_CD60D3: LateIdLdVar var_D0 DispID_15 0
  loc_CD60DA: CStrVarTmp
  loc_CD60DB: CVarStr var_E0
  loc_CD60DE: FLdRfVar var_F0
  loc_CD60E1: ImpAdCallFPR4  = Year()
  loc_CD60E6: FLdRfVar var_F0
  loc_CD60E9: ConcatVar var_130
  loc_CD60ED: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_CD60F2: ConcatVar var_140
  loc_CD60F6: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD60FB: ConcatVar var_154
  loc_CD60FF: FLdPr Me
  loc_CD6102: VCallAd Control_ID_DesdeMsk
  loc_CD6105: FStAdFunc var_144
  loc_CD6108: FLdPr var_144
  loc_CD610B: LateIdLdVar var_164 DispID_15 0
  loc_CD6112: CStrVarTmp
  loc_CD6113: CVarStr var_174
  loc_CD6116: FLdRfVar var_184
  loc_CD6119: ImpAdCallFPR4  = Year()
  loc_CD611E: FLdRfVar var_184
  loc_CD6121: ConcatVar var_194
  loc_CD6125: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD612A: ConcatVar var_1B4
  loc_CD612E: LitVarStr var_1E8, " GROUP BY CodiConc"
  loc_CD6133: ConcatVar var_1C8
  loc_CD6137: CStrVarVal var_BC
  loc_CD613B: FLdPr var_F4
  loc_CD613E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD6143: FFree1Str var_BC
  loc_CD6146: FFreeAd var_B8 = ""
  loc_CD614D: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_CD616A: Branch loc_CD62E0
  loc_CD616D: LitStr "Municipalidad de Guaymallén"
  loc_CD6170: LitStr "Municipalidad de San Martin"
  loc_CD6173: EqStr
  loc_CD6175: BranchF loc_CD6228
  loc_CD6178: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD617B: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD617E: ConcatStr
  loc_CD617F: CVarStr var_120
  loc_CD6182: FLdPr Me
  loc_CD6185: VCallAd Control_ID_DesdeMsk
  loc_CD6188: FStAdFunc var_B8
  loc_CD618B: FLdPr var_B8
  loc_CD618E: LateIdLdVar var_D0 DispID_15 0
  loc_CD6195: CStrVarTmp
  loc_CD6196: CVarStr var_E0
  loc_CD6199: FLdRfVar var_F0
  loc_CD619C: ImpAdCallFPR4  = Year()
  loc_CD61A1: FLdRfVar var_F0
  loc_CD61A4: ConcatVar var_130
  loc_CD61A8: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_CD61AD: ConcatVar var_140
  loc_CD61B1: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD61B6: ConcatVar var_154
  loc_CD61BA: FLdPr Me
  loc_CD61BD: VCallAd Control_ID_DesdeMsk
  loc_CD61C0: FStAdFunc var_144
  loc_CD61C3: FLdPr var_144
  loc_CD61C6: LateIdLdVar var_164 DispID_15 0
  loc_CD61CD: CStrVarTmp
  loc_CD61CE: CVarStr var_174
  loc_CD61D1: FLdRfVar var_184
  loc_CD61D4: ImpAdCallFPR4  = Year()
  loc_CD61D9: FLdRfVar var_184
  loc_CD61DC: ConcatVar var_194
  loc_CD61E0: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD61E5: ConcatVar var_1B4
  loc_CD61E9: LitVarStr var_1E8, " GROUP BY CodiConc"
  loc_CD61EE: ConcatVar var_1C8
  loc_CD61F2: CStrVarVal var_BC
  loc_CD61F6: FLdPr var_F4
  loc_CD61F9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD61FE: FFree1Str var_BC
  loc_CD6201: FFreeAd var_B8 = ""
  loc_CD6208: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_CD6225: Branch loc_CD62E0
  loc_CD6228: LitStr " SELECT concepto.IngrConc, tmp_conc.CodiConc, IFNULL(DetaConc,'') DetaConc, SUM(CobrCtaCte) CobrCtaCte, SUM(RendEnre) RendEnre, SUM(CobrCtaCte)- SUM(RendEnre) Diferencia FROM tmp_conc "
  loc_CD622B: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CD622E: ConcatStr
  loc_CD622F: CVarStr var_120
  loc_CD6232: FLdPr Me
  loc_CD6235: VCallAd Control_ID_DesdeMsk
  loc_CD6238: FStAdFunc var_B8
  loc_CD623B: FLdPr var_B8
  loc_CD623E: LateIdLdVar var_D0 DispID_15 0
  loc_CD6245: CStrVarTmp
  loc_CD6246: CVarStr var_E0
  loc_CD6249: FLdRfVar var_F0
  loc_CD624C: ImpAdCallFPR4  = Year()
  loc_CD6251: FLdRfVar var_F0
  loc_CD6254: ConcatVar var_130
  loc_CD6258: LitVarStr var_A4, " AND concepto.CodiConc = tmp_conc.Codiconc"
  loc_CD625D: ConcatVar var_140
  loc_CD6261: LitVarStr var_B4, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CD6266: ConcatVar var_154
  loc_CD626A: FLdPr Me
  loc_CD626D: VCallAd Control_ID_DesdeMsk
  loc_CD6270: FStAdFunc var_144
  loc_CD6273: FLdPr var_144
  loc_CD6276: LateIdLdVar var_164 DispID_15 0
  loc_CD627D: CStrVarTmp
  loc_CD627E: CVarStr var_174
  loc_CD6281: FLdRfVar var_184
  loc_CD6284: ImpAdCallFPR4  = Year()
  loc_CD6289: FLdRfVar var_184
  loc_CD628C: ConcatVar var_194
  loc_CD6290: LitVarStr var_1A4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CD6295: ConcatVar var_1B4
  loc_CD6299: LitVarStr var_1E8, " AND MID(cuentacontable.CodiTicu,1,1) IN (5,7)"
  loc_CD629E: ConcatVar var_1C8
  loc_CD62A2: LitVarStr var_228, " GROUP BY CodiConc"
  loc_CD62A7: ConcatVar var_1D8
  loc_CD62AB: CStrVarVal var_BC
  loc_CD62AF: FLdPr var_F4
  loc_CD62B2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD62B7: FFree1Str var_BC
  loc_CD62BA: FFreeAd var_B8 = ""
  loc_CD62C1: FFreeVar var_D0 = "": var_E0 = "": var_120 = "": var_F0 = "": var_130 = "": var_140 = "": var_164 = "": var_174 = "": var_154 = "": var_184 = "": var_194 = "": var_1B4 = "": var_1C8 = ""
  loc_CD62E0: FLdRfVar var_23C
  loc_CD62E3: FLdPr var_F4
  loc_CD62E6: from_stack_1 = clsctacte.RecordCount
  loc_CD62EB: ILdRf var_23C
  loc_CD62EE: LitI4 0
  loc_CD62F3: EqI4
  loc_CD62F4: BranchF loc_CD6302
  loc_CD62F7: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CD62FA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CD62FF: Branch loc_CD66C4
  loc_CD6302: LitI4 0
  loc_CD6307: LitI4 1
  loc_CD630C: FLdPr Me
  loc_CD630F: MemLdRfVar from_stack_1.global_104
  loc_CD6312: Redim
  loc_CD631C: LitI4 0
  loc_CD6321: FLdRfVar var_23C
  loc_CD6324: FLdPr var_F4
  loc_CD6327: from_stack_1 = clsctacte.RecordCount
  loc_CD632C: ILdRf var_23C
  loc_CD632F: FLdPr Me
  loc_CD6332: MemLdRfVar from_stack_1.global_96
  loc_CD6335: Redim
  loc_CD633F: FLdPr var_F4
  loc_CD6342: Call clsctacte.MoveFirst()
  loc_CD6347: FLdRfVar var_23C
  loc_CD634A: FLdPr var_F4
  loc_CD634D: from_stack_1 = clsctacte.RecordCount
  loc_CD6352: ILdRf var_23C
  loc_CD6355: CR8I4
  loc_CD6356: CVarR4
  loc_CD635A: PopAdLdVar
  loc_CD635B: FLdPrThis
  loc_CD635C: VCallAd Control_ID_Pbar
  loc_CD635F: FStAdFunc var_B8
  loc_CD6362: FLdPr var_B8
  loc_CD6365: LateIdSt
  loc_CD636A: FFree1Ad var_B8
  loc_CD636D: LitVar_TRUE var_A4
  loc_CD6370: PopAdLdVar
  loc_CD6371: FLdPrThis
  loc_CD6372: VCallAd Control_ID_Pbar
  loc_CD6375: FStAdFunc var_B8
  loc_CD6378: FLdPr var_B8
  loc_CD637B: LateIdSt
  loc_CD6380: FFree1Ad var_B8
  loc_CD6383: LitI4 1
  loc_CD6388: FLdPr Me
  loc_CD638B: MemLdRfVar from_stack_1.global_100
  loc_CD638E: FLdPr Me
  loc_CD6391: MemLdStr global_96
  loc_CD6394: LitI2_Byte 1
  loc_CD6396: FnUBound
  loc_CD6398: ForI4 var_244
  loc_CD639E: FLdPr Me
  loc_CD63A1: MemLdStr global_100
  loc_CD63A4: CR8I4
  loc_CD63A5: CVarR4
  loc_CD63A9: PopAdLdVar
  loc_CD63AA: FLdPrThis
  loc_CD63AB: VCallAd Control_ID_Pbar
  loc_CD63AE: FStAdFunc var_B8
  loc_CD63B1: FLdPr var_B8
  loc_CD63B4: LateIdSt
  loc_CD63B9: FFree1Ad var_B8
  loc_CD63BC: FLdRfVar var_D0
  loc_CD63BF: FLdRfVar var_1B8
  loc_CD63C2: LitVarStr var_A4, "IngrConc"
  loc_CD63C7: PopAdLdVar
  loc_CD63C8: FLdRfVar var_144
  loc_CD63CB: FLdRfVar var_B8
  loc_CD63CE: FLdPr var_F4
  loc_CD63D1: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD63D6: FLdPr var_B8
  loc_CD63D9:  = Me.Fields
  loc_CD63DE: FLdPr var_144
  loc_CD63E1: from_stack_2 = Me.Item(from_stack_1)
  loc_CD63E6: FLdPr var_1B8
  loc_CD63E9:  = Me.Value
  loc_CD63EE: FLdRfVar var_F0
  loc_CD63F1: FLdRfVar var_250
  loc_CD63F4: LitVarStr var_1A4, "CodiConc"
  loc_CD63F9: PopAdLdVar
  loc_CD63FA: FLdRfVar var_24C
  loc_CD63FD: FLdRfVar var_248
  loc_CD6400: FLdPr var_F4
  loc_CD6403: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD6408: FLdPr var_248
  loc_CD640B:  = Me.Fields
  loc_CD6410: FLdPr var_24C
  loc_CD6413: from_stack_2 = Me.Item(from_stack_1)
  loc_CD6418: FLdPr var_250
  loc_CD641B:  = Me.Value
  loc_CD6420: LitI2_Byte 0
  loc_CD6422: LitVar_Missing var_130
  loc_CD6425: LitI2_Byte 0
  loc_CD6427: FLdRfVar var_D0
  loc_CD642A: LitVarStr var_B4, " - "
  loc_CD642F: ConcatVar var_E0
  loc_CD6433: FLdRfVar var_F0
  loc_CD6436: ConcatVar var_120
  loc_CD643A: PopAdLdVar
  loc_CD643B: FLdPr Me
  loc_CD643E: MemLdStr global_100
  loc_CD6441: FLdPr Me
  loc_CD6444: MemLdStr global_96
  loc_CD6447: AryLock
  loc_CD644A: Ary1LdPr
  loc_CD644B: MemLdRfVar from_stack_1.global_0
  loc_CD644E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CD6453: AryUnlock
  loc_CD6456: FFreeAd var_B8 = "": var_144 = "": var_1B8 = "": var_248 = "": var_24C = ""
  loc_CD6465: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_120 = ""
  loc_CD6472: FLdRfVar var_1B8
  loc_CD6475: LitVarStr var_A4, "DetaConc"
  loc_CD647A: PopAdLdVar
  loc_CD647B: FLdRfVar var_144
  loc_CD647E: FLdRfVar var_B8
  loc_CD6481: FLdPr var_F4
  loc_CD6484: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD6489: FLdPr var_B8
  loc_CD648C:  = Me.Fields
  loc_CD6491: FLdPr var_144
  loc_CD6494: from_stack_2 = Me.Item(from_stack_1)
  loc_CD6499: LitI2_Byte 0
  loc_CD649B: LitVar_Missing var_E0
  loc_CD649E: LitI2_Byte 0
  loc_CD64A0: FLdZeroAd var_1B8
  loc_CD64A3: CVarAd
  loc_CD64A7: PopAdLdVar
  loc_CD64A8: FLdPr Me
  loc_CD64AB: MemLdStr global_100
  loc_CD64AE: FLdPr Me
  loc_CD64B1: MemLdStr global_96
  loc_CD64B4: AryLock
  loc_CD64B7: Ary1LdPr
  loc_CD64B8: MemLdRfVar from_stack_1.global_4
  loc_CD64BB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CD64C0: AryUnlock
  loc_CD64C3: FFreeAd var_B8 = ""
  loc_CD64CA: FFreeVar var_D0 = ""
  loc_CD64D1: FLdRfVar var_1B8
  loc_CD64D4: LitVarStr var_A4, "CobrCtaCte"
  loc_CD64D9: PopAdLdVar
  loc_CD64DA: FLdRfVar var_144
  loc_CD64DD: FLdRfVar var_B8
  loc_CD64E0: FLdPr var_F4
  loc_CD64E3: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD64E8: FLdPr var_B8
  loc_CD64EB:  = Me.Fields
  loc_CD64F0: FLdPr var_144
  loc_CD64F3: from_stack_2 = Me.Item(from_stack_1)
  loc_CD64F8: LitI2_Byte 0
  loc_CD64FA: LitI4 1
  loc_CD64FF: FLdPr Me
  loc_CD6502: MemLdStr global_104
  loc_CD6505: AryLock
  loc_CD6508: Ary1LdPr
  loc_CD6509: MemLdRfVar from_stack_1.global_0
  loc_CD650C: CVarRef
  loc_CD6511: LitI2_Byte &HFF
  loc_CD6513: FLdZeroAd var_1B8
  loc_CD6516: CVarAd
  loc_CD651A: PopAdLdVar
  loc_CD651B: FLdPr Me
  loc_CD651E: MemLdStr global_100
  loc_CD6521: FLdPr Me
  loc_CD6524: MemLdStr global_96
  loc_CD6527: AryLock
  loc_CD652A: Ary1LdPr
  loc_CD652B: MemLdRfVar from_stack_1.global_8
  loc_CD652E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CD6533: AryUnlock
  loc_CD6536: AryUnlock
  loc_CD6539: FFreeAd var_B8 = ""
  loc_CD6540: FFree1Var var_D0 = ""
  loc_CD6543: FLdRfVar var_1B8
  loc_CD6546: LitVarStr var_A4, "RendEnre"
  loc_CD654B: PopAdLdVar
  loc_CD654C: FLdRfVar var_144
  loc_CD654F: FLdRfVar var_B8
  loc_CD6552: FLdPr var_F4
  loc_CD6555: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD655A: FLdPr var_B8
  loc_CD655D:  = Me.Fields
  loc_CD6562: FLdPr var_144
  loc_CD6565: from_stack_2 = Me.Item(from_stack_1)
  loc_CD656A: LitI2_Byte 0
  loc_CD656C: LitI4 1
  loc_CD6571: FLdPr Me
  loc_CD6574: MemLdStr global_104
  loc_CD6577: AryLock
  loc_CD657A: Ary1LdPr
  loc_CD657B: MemLdRfVar from_stack_1.global_4
  loc_CD657E: CVarRef
  loc_CD6583: LitI2_Byte &HFF
  loc_CD6585: FLdZeroAd var_1B8
  loc_CD6588: CVarAd
  loc_CD658C: PopAdLdVar
  loc_CD658D: FLdPr Me
  loc_CD6590: MemLdStr global_100
  loc_CD6593: FLdPr Me
  loc_CD6596: MemLdStr global_96
  loc_CD6599: AryLock
  loc_CD659C: Ary1LdPr
  loc_CD659D: MemLdRfVar from_stack_1.global_12
  loc_CD65A0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CD65A5: AryUnlock
  loc_CD65A8: AryUnlock
  loc_CD65AB: FFreeAd var_B8 = ""
  loc_CD65B2: FFree1Var var_D0 = ""
  loc_CD65B5: FLdRfVar var_D0
  loc_CD65B8: FLdRfVar var_1B8
  loc_CD65BB: LitVarStr var_A4, "CobrCtaCte"
  loc_CD65C0: PopAdLdVar
  loc_CD65C1: FLdRfVar var_144
  loc_CD65C4: FLdRfVar var_B8
  loc_CD65C7: FLdPr var_F4
  loc_CD65CA: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD65CF: FLdPr var_B8
  loc_CD65D2:  = Me.Fields
  loc_CD65D7: FLdPr var_144
  loc_CD65DA: from_stack_2 = Me.Item(from_stack_1)
  loc_CD65DF: FLdPr var_1B8
  loc_CD65E2:  = Me.Value
  loc_CD65E7: FLdRfVar var_E0
  loc_CD65EA: FLdRfVar var_250
  loc_CD65ED: LitVarStr var_B4, "RendEnre"
  loc_CD65F2: PopAdLdVar
  loc_CD65F3: FLdRfVar var_24C
  loc_CD65F6: FLdRfVar var_248
  loc_CD65F9: FLdPr var_F4
  loc_CD65FC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD6601: FLdPr var_248
  loc_CD6604:  = Me.Fields
  loc_CD6609: FLdPr var_24C
  loc_CD660C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD6611: FLdPr var_250
  loc_CD6614:  = Me.Value
  loc_CD6619: LitI2_Byte 0
  loc_CD661B: LitI4 1
  loc_CD6620: FLdPr Me
  loc_CD6623: MemLdStr global_104
  loc_CD6626: Ary1LdPr
  loc_CD6627: MemLdStr global_0
  loc_CD662A: CR8Str
  loc_CD662C: LitI4 1
  loc_CD6631: FLdPr Me
  loc_CD6634: MemLdStr global_104
  loc_CD6637: Ary1LdPr
  loc_CD6638: MemLdStr global_4
  loc_CD663B: CR8Str
  loc_CD663D: SubR4
  loc_CD663E: CVarR8
  loc_CD6642: LitI2_Byte &HFF
  loc_CD6644: FLdRfVar var_D0
  loc_CD6647: FnCDblVar
  loc_CD6649: FLdRfVar var_E0
  loc_CD664C: FnCDblVar
  loc_CD664E: SubR4
  loc_CD664F: CVarR8
  loc_CD6653: PopAdLdVar
  loc_CD6654: FLdPr Me
  loc_CD6657: MemLdStr global_100
  loc_CD665A: FLdPr Me
  loc_CD665D: MemLdStr global_96
  loc_CD6660: AryLock
  loc_CD6663: Ary1LdPr
  loc_CD6664: MemLdRfVar from_stack_1.global_16
  loc_CD6667: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CD666C: AryUnlock
  loc_CD666F: FFreeAd var_B8 = "": var_144 = "": var_1B8 = "": var_248 = "": var_24C = ""
  loc_CD667E: FFreeVar var_D0 = "": var_E0 = ""
  loc_CD6687: LitI2_Byte 1
  loc_CD6689: PopTmpLdAd2 var_BE
  loc_CD668C: FLdPr var_F4
  loc_CD668F: Call clsctacte.Move(from_stack_1v)
  loc_CD6694: FLdPr Me
  loc_CD6697: MemLdRfVar from_stack_1.global_100
  loc_CD669A: NextI4 var_244, loc_CD639E
  loc_CD669F: LitVar_FALSE
  loc_CD66A3: PopAdLdVar
  loc_CD66A4: FLdPrThis
  loc_CD66A5: VCallAd Control_ID_Pbar
  loc_CD66A8: FStAdFunc var_B8
  loc_CD66AB: FLdPr var_B8
  loc_CD66AE: LateIdSt
  loc_CD66B3: FFree1Ad var_B8
  loc_CD66B6: LitNothing
  loc_CD66B8: FStAd var_F4 
  loc_CD66BC: LitI2_Byte &HFF
  loc_CD66BE: FLdPr Me
  loc_CD66C1: MemStI2 bGenerado
  loc_CD66C4: LitI4 0
  loc_CD66C9: CI2I4
  loc_CD66CA: FLdPr Me
  loc_CD66CD: Me.MousePointer = from_stack_1
  loc_CD66D2: LitVarStr var_A4, vbNullString
  loc_CD66D7: PopAdLdVar
  loc_CD66D8: FLdPr Me
  loc_CD66DB: VCallAd Control_ID_statusBar
  loc_CD66DE: FStAdFunc var_B8
  loc_CD66E1: FLdPr var_B8
  loc_CD66E4: LateIdSt
  loc_CD66E9: FFree1Ad var_B8
  loc_CD66EC: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B91D50
  'Data Table: 496280
  loc_B91854: OnErrorGoto loc_B91CD3
  loc_B91857: FLdPr Me
  loc_B9185A: VCallAd Control_ID_DesdeMsk
  loc_B9185D: FStAdFunc var_100
  loc_B91860: FLdPr var_100
  loc_B91863: LateIdLdVar var_110 DispID_15 0
  loc_B9186A: CStrVarTmp
  loc_B9186B: CVarStr var_120
  loc_B9186E: FLdRfVar var_130
  loc_B91871: ImpAdCallFPR4  = Month()
  loc_B91876: FLdPr Me
  loc_B91879: VCallAd Control_ID_DesdeMsk
  loc_B9187C: FStAdFunc var_1D8
  loc_B9187F: FLdPr var_1D8
  loc_B91882: LateIdLdVar var_1E8 DispID_15 0
  loc_B91889: CStrVarTmp
  loc_B9188A: CVarStr var_1F8
  loc_B9188D: FLdRfVar var_208
  loc_B91890: ImpAdCallFPR4  = Month()
  loc_B91895: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B9189A: FStStrNoPop var_88
  loc_B9189D: LitStr "\Acuerdo 2988\"
  loc_B918A0: ConcatStr
  loc_B918A1: CVarStr var_CC
  loc_B918A4: FLdPr Me
  loc_B918A7: VCallAd Control_ID_DesdeMsk
  loc_B918AA: FStAdFunc var_8C
  loc_B918AD: FLdPr var_8C
  loc_B918B0: LateIdLdVar var_9C DispID_15 0
  loc_B918B7: CStrVarTmp
  loc_B918B8: CVarStr var_AC
  loc_B918BB: FLdRfVar var_BC
  loc_B918BE: ImpAdCallFPR4  = Year()
  loc_B918C3: FLdRfVar var_BC
  loc_B918C6: ConcatVar var_DC
  loc_B918CA: LitVarStr var_EC, "\Mes "
  loc_B918CF: ConcatVar var_FC
  loc_B918D3: LitI4 1
  loc_B918D8: LitI4 1
  loc_B918DD: LitVarStr var_140, "00"
  loc_B918E2: FStVarCopyObj var_150
  loc_B918E5: FLdRfVar var_150
  loc_B918E8: FLdRfVar var_130
  loc_B918EB: FLdRfVar var_160
  loc_B918EE: ImpAdCallFPR4  = Format(, )
  loc_B918F3: FLdRfVar var_160
  loc_B918F6: ConcatVar var_170
  loc_B918FA: LitVarStr var_180, "\"
  loc_B918FF: ConcatVar var_190
  loc_B91903: FLdPr Me
  loc_B91906: VCallAd Control_ID_DesdeMsk
  loc_B91909: FStAdFunc var_194
  loc_B9190C: FLdPr var_194
  loc_B9190F: LateIdLdVar var_1A4 DispID_15 0
  loc_B91916: CStrVarTmp
  loc_B91917: CVarStr var_1B4
  loc_B9191A: FLdRfVar var_1C4
  loc_B9191D: ImpAdCallFPR4  = Year()
  loc_B91922: FLdRfVar var_1C4
  loc_B91925: ConcatVar var_1D4
  loc_B91929: LitI4 1
  loc_B9192E: LitI4 1
  loc_B91933: LitVarStr var_218, "00"
  loc_B91938: FStVarCopyObj var_228
  loc_B9193B: FLdRfVar var_228
  loc_B9193E: FLdRfVar var_208
  loc_B91941: FLdRfVar var_238
  loc_B91944: ImpAdCallFPR4  = Format(, )
  loc_B91949: FLdRfVar var_238
  loc_B9194C: ConcatVar var_248
  loc_B91950: LitVarStr var_258, " - ConPagRen.txt"
  loc_B91955: ConcatVar var_268
  loc_B91959: CStrVarTmp
  loc_B9195A: ImpAdStStr MemVar_D93030
  loc_B9195E: FFree1Str var_88
  loc_B91961: FFreeAd var_8C = "": var_100 = "": var_194 = ""
  loc_B9196C: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_120 = "": var_130 = "": var_150 = "": var_FC = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_190 = "": var_1C4 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1D4 = "": var_238 = "": var_248 = ""
  loc_B9199F: ImpAdLdI4 MemVar_D93030
  loc_B919A2: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B919A7: LitStr "	"
  loc_B919AA: FStStrCopy var_26C
  loc_B919AD: LitVarStr var_EC, "266"
  loc_B919B2: FLdPr Me
  loc_B919B5: VCallAd Control_ID_DesdeMsk
  loc_B919B8: FStAdFunc var_8C
  loc_B919BB: FLdPr var_8C
  loc_B919BE: LateIdLdVar var_9C DispID_15 0
  loc_B919C5: CStrVarTmp
  loc_B919C6: CVarStr var_AC
  loc_B919C9: FLdRfVar var_BC
  loc_B919CC: ImpAdCallFPR4  = Year()
  loc_B919D1: FLdRfVar var_BC
  loc_B919D4: ConcatVar var_CC
  loc_B919D8: LitVarStr var_140, "060204"
  loc_B919DD: ConcatVar var_DC
  loc_B919E1: CStrVarTmp
  loc_B919E2: FStStr var_270
  loc_B919E5: FFree1Ad var_8C
  loc_B919E8: FFreeVar var_9C = "": var_AC = "": var_BC = "": var_CC = ""
  loc_B919F5: FLdRfVar var_8C
  loc_B919F8: LitI2_Byte 0
  loc_B919FA: LitI2_Byte &HFF
  loc_B919FC: ImpAdLdI4 MemVar_D93030
  loc_B919FF: FLdPr Me
  loc_B91A02: MemLdRfVar from_stack_1.global_56
  loc_B91A05: NewIfNullPr IFileSystem3
  loc_B91A08: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B91A0D: ILdRf var_8C
  loc_B91A10: FLdPr Me
  loc_B91A13: MemStVarAd
  loc_B91A17: FFree1Ad var_8C
  loc_B91A1A: FLdPr Me
  loc_B91A1D: MemLdStr global_96
  loc_B91A20: LitI2_Byte 1
  loc_B91A22: FnUBound
  loc_B91A24: LitI4 0
  loc_B91A29: EqI4
  loc_B91A2A: BranchF loc_B91A8C
  loc_B91A2D: LitI4 0
  loc_B91A32: LitI4 1
  loc_B91A37: FLdRfVar var_274
  loc_B91A3A: Redim
  loc_B91A44: LitVarStr var_EC, "|"
  loc_B91A49: LitI4 0
  loc_B91A4E: ILdRf var_274
  loc_B91A51: Ary1StVarCopy
  loc_B91A53: LitVarStr var_140, "SIN MOVIMIENTO"
  loc_B91A58: LitI4 1
  loc_B91A5D: ILdRf var_274
  loc_B91A60: Ary1StVarCopy
  loc_B91A62: FLdRfVar var_274
  loc_B91A65: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B91A6A: FStStr var_88
  loc_B91A6D: FLdRfVar var_274
  loc_B91A70: Erase
  loc_B91A71: FLdZeroAd var_88
  loc_B91A74: CVarStr var_9C
  loc_B91A77: PopAdLdVar
  loc_B91A78: FLdPr Me
  loc_B91A7B: MemLdRfVar from_stack_1.global_76
  loc_B91A7E: LdPrVar
  loc_B91A80: LateMemCall
  loc_B91A86: FFree1Var var_9C = ""
  loc_B91A89: Branch loc_B91CC1
  loc_B91A8C: LitI4 0
  loc_B91A91: LitI4 7
  loc_B91A96: FLdRfVar var_274
  loc_B91A99: Redim
  loc_B91AA3: LitVarStr var_EC, "|"
  loc_B91AA8: LitI4 0
  loc_B91AAD: ILdRf var_274
  loc_B91AB0: Ary1StVarCopy
  loc_B91AB2: LitVarStr var_140, "PeriodoPresenta"
  loc_B91AB7: LitI4 1
  loc_B91ABC: ILdRf var_274
  loc_B91ABF: Ary1StVarCopy
  loc_B91AC1: LitVarStr var_180, "ExpID"
  loc_B91AC6: LitI4 2
  loc_B91ACB: ILdRf var_274
  loc_B91ACE: Ary1StVarCopy
  loc_B91AD0: LitVarStr var_218, "Conceptocod"
  loc_B91AD5: LitI4 3
  loc_B91ADA: ILdRf var_274
  loc_B91ADD: Ary1StVarCopy
  loc_B91ADF: LitVarStr var_258, "ConceptoDet"
  loc_B91AE4: LitI4 4
  loc_B91AE9: ILdRf var_274
  loc_B91AEC: Ary1StVarCopy
  loc_B91AEE: LitVarStr var_284, "TotalPagRegCta"
  loc_B91AF3: LitI4 5
  loc_B91AF8: ILdRf var_274
  loc_B91AFB: Ary1StVarCopy
  loc_B91AFD: LitVarStr var_294, "TotalRendido"
  loc_B91B02: LitI4 6
  loc_B91B07: ILdRf var_274
  loc_B91B0A: Ary1StVarCopy
  loc_B91B0C: LitVarStr var_2A4, "Diferencia"
  loc_B91B11: LitI4 7
  loc_B91B16: ILdRf var_274
  loc_B91B19: Ary1StVarCopy
  loc_B91B1B: FLdRfVar var_274
  loc_B91B1E: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B91B23: FStStr var_88
  loc_B91B26: FLdRfVar var_274
  loc_B91B29: Erase
  loc_B91B2A: FLdZeroAd var_88
  loc_B91B2D: CVarStr var_9C
  loc_B91B30: PopAdLdVar
  loc_B91B31: FLdPr Me
  loc_B91B34: MemLdRfVar from_stack_1.global_76
  loc_B91B37: LdPrVar
  loc_B91B39: LateMemCall
  loc_B91B3F: FFree1Var var_9C = ""
  loc_B91B42: LitI4 1
  loc_B91B47: FLdPr Me
  loc_B91B4A: MemLdRfVar from_stack_1.global_100
  loc_B91B4D: FLdPr Me
  loc_B91B50: MemLdStr global_96
  loc_B91B53: LitI2_Byte 1
  loc_B91B55: FnUBound
  loc_B91B57: ForI4 var_2BC
  loc_B91B5D: FLdPr Me
  loc_B91B60: MemLdStr global_100
  loc_B91B63: FLdPr Me
  loc_B91B66: MemLdStr global_96
  loc_B91B69: AryLock
  loc_B91B6C: Ary1LdRf
  loc_B91B6D: FStR4 var_2C4
  loc_B91B70: FLdPr Me
  loc_B91B73: VCallAd Control_ID_DesdeMsk
  loc_B91B76: FStAdFunc var_100
  loc_B91B79: FLdPr var_100
  loc_B91B7C: LateIdLdVar var_CC DispID_15 0
  loc_B91B83: CStrVarTmp
  loc_B91B84: CVarStr var_DC
  loc_B91B87: FLdRfVar var_FC
  loc_B91B8A: ImpAdCallFPR4  = Month()
  loc_B91B8F: LitI4 0
  loc_B91B94: LitI4 7
  loc_B91B99: FLdRfVar var_274
  loc_B91B9C: Redim
  loc_B91BA6: LitVarStr var_140, "|"
  loc_B91BAB: LitI4 0
  loc_B91BB0: ILdRf var_274
  loc_B91BB3: Ary1StVarCopy
  loc_B91BB5: FLdPr Me
  loc_B91BB8: VCallAd Control_ID_DesdeMsk
  loc_B91BBB: FStAdFunc var_8C
  loc_B91BBE: FLdPr var_8C
  loc_B91BC1: LateIdLdVar var_9C DispID_15 0
  loc_B91BC8: CStrVarTmp
  loc_B91BC9: CVarStr var_AC
  loc_B91BCC: FLdRfVar var_BC
  loc_B91BCF: ImpAdCallFPR4  = Year()
  loc_B91BD4: FLdRfVar var_BC
  loc_B91BD7: LitI4 1
  loc_B91BDC: LitI4 1
  loc_B91BE1: LitVarStr var_EC, "00"
  loc_B91BE6: FStVarCopyObj var_110
  loc_B91BE9: FLdRfVar var_110
  loc_B91BEC: FLdRfVar var_FC
  loc_B91BEF: FLdRfVar var_120
  loc_B91BF2: ImpAdCallFPR4  = Format(, )
  loc_B91BF7: FLdRfVar var_120
  loc_B91BFA: ConcatVar var_130
  loc_B91BFE: ParmAry1St
  loc_B91C04: FLdRfVar var_270
  loc_B91C07: CVarRef
  loc_B91C0C: ParmAry1St
  loc_B91C12: FMemLdRf unk_495FBD
  loc_B91C17: CVarRef
  loc_B91C1C: ParmAry1St
  loc_B91C22: FMemLdRf unk_495FBD
  loc_B91C27: CVarRef
  loc_B91C2C: ParmAry1St
  loc_B91C32: FMemLdR4 var_2C4(8)
  loc_B91C37: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B91C3C: CVarStr var_150
  loc_B91C3F: ParmAry1St
  loc_B91C45: FMemLdR4 var_2C4(12)
  loc_B91C4A: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B91C4F: CVarStr var_160
  loc_B91C52: ParmAry1St
  loc_B91C58: FMemLdR4 var_2C4(16)
  loc_B91C5D: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B91C62: CVarStr var_170
  loc_B91C65: ParmAry1St
  loc_B91C6B: FLdRfVar var_274
  loc_B91C6E: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B91C73: FStStr var_88
  loc_B91C76: FLdRfVar var_274
  loc_B91C79: Erase
  loc_B91C7A: FLdZeroAd var_88
  loc_B91C7D: CVarStr var_190
  loc_B91C80: PopAdLdVar
  loc_B91C81: FLdPr Me
  loc_B91C84: MemLdRfVar from_stack_1.global_76
  loc_B91C87: LdPrVar
  loc_B91C89: LateMemCall
  loc_B91C8F: FFreeAd var_8C = ""
  loc_B91C96: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_DC = "": var_FC = "": var_110 = "": var_BC = "": var_120 = ""
  loc_B91CAB: LitI4 0
  loc_B91CB0: FStR4 var_2C4
  loc_B91CB3: AryUnlock
  loc_B91CB6: FLdPr Me
  loc_B91CB9: MemLdRfVar from_stack_1.global_100
  loc_B91CBC: NextI4 var_2BC, loc_B91B5D
  loc_B91CC1: FLdPr Me
  loc_B91CC4: MemLdRfVar from_stack_1.global_76
  loc_B91CC7: LdPrVar
  loc_B91CC9: LateMemCall
  loc_B91CCF: On Error GoTo 0
  loc_B91CD2: ExitProcHresult
  loc_B91CD3: LitVar_Missing var_CC
  loc_B91CD6: LitVar_Missing var_BC
  loc_B91CD9: LitVar_Missing var_AC
  loc_B91CDC: LitI4 0
  loc_B91CE1: LitStr "Error "
  loc_B91CE4: FLdRfVar var_2C8
  loc_B91CE7: ImpAdCallI2 Err 'rtcErrObj
  loc_B91CEC: FStAdFunc var_8C
  loc_B91CEF: FLdPr var_8C
  loc_B91CF2:  = Err.Number
  loc_B91CF7: ILdRf var_2C8
  loc_B91CFA: CStrI4
  loc_B91CFC: FStStrNoPop var_88
  loc_B91CFF: ConcatStr
  loc_B91D00: FStStrNoPop var_2CC
  loc_B91D03: LitStr " ("
  loc_B91D06: ConcatStr
  loc_B91D07: FStStrNoPop var_2D4
  loc_B91D0A: FLdRfVar var_2D0
  loc_B91D0D: ImpAdCallI2 Err 'rtcErrObj
  loc_B91D12: FStAdFunc var_100
  loc_B91D15: FLdPr var_100
  loc_B91D18:  = Err.Description
  loc_B91D1D: ILdRf var_2D0
  loc_B91D20: ConcatStr
  loc_B91D21: FStStrNoPop var_2D8
  loc_B91D24: LitStr ") in procedure GeneraTXT of Formulario rptA2988XXI"
  loc_B91D27: ConcatStr
  loc_B91D28: CVarStr var_9C
  loc_B91D2B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B91D30: FFreeStr var_88 = "": var_2CC = "": var_2D4 = "": var_2D0 = ""
  loc_B91D3D: FFreeAd var_8C = ""
  loc_B91D44: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B91D4F: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'B93AB0
  'Data Table: 496280
  loc_B93548: ImpAdLdI4 MemVar_D93030
  loc_B9354B: FStStrCopy var_88
  loc_B9354E: LitI4 0
  loc_B93553: LitStr "Excel.Application"
  loc_B93556: FLdRfVar var_B4
  loc_B93559: ImpAdCallFPR4  = CreateObject(, )
  loc_B9355E: FLdRfVar var_B4
  loc_B93561: FLdRfVar var_98
  loc_B93564: SetVarVarFunc
  loc_B93566: FLdRfVar var_98
  loc_B93569: VarLateMemLdVar var_B4, .Workbooks
  loc_B9356F: CastAdVar Me
  loc_B93573: FStAdFunc var_9C
  loc_B93576: FFree1Var var_B4 = ""
  loc_B93579: FLdRfVar var_E0
  loc_B9357C: LitVarI2 var_DC, 1
  loc_B93581: PopAdLdVar
  loc_B93582: FLdRfVar var_CC
  loc_B93585: FLdRfVar var_C8
  loc_B93588: LitI4 &H409
  loc_B9358D: LitVar_Missing var_C4
  loc_B93590: PopAdLdVar
  loc_B93591: FLdPr var_9C
  loc_B93594:  = Forms
  loc_B93599: FLdPr var_C8
  loc_B9359C: Call 0.Method_arg_20C ()
  loc_B935A1: FLdPr var_CC
  loc_B935A4: Me.BackColor = from_stack_1
  loc_B935A9: ILdRf var_E0
  loc_B935AC: CastAd
  loc_B935AF: FStAdFunc var_A0
  loc_B935B2: FFreeAd var_C8 = "": var_CC = ""
  loc_B935BB: LitVar_TRUE var_C4
  loc_B935BE: PopAdLdVar
  loc_B935BF: FLdRfVar var_98
  loc_B935C2: VarLateMemSt .Visible
  loc_B935C6: LitVarI2 var_C4, 1
  loc_B935CB: PopAdLdVar
  loc_B935CC: LitVarI2 var_F0, 1
  loc_B935D1: PopAdLdVar
  loc_B935D2: LitVarStr var_110, "CÓDIGO DEL CONCEPTO DE RECAUDACIÓN"
  loc_B935D7: PopAdLdVar
  loc_B935D8: FLdRfVar var_C8
  loc_B935DB: FLdPr var_A0
  loc_B935DE:  = Me.FontUnderline
  loc_B935E3: FLdPr var_C8
  loc_B935E6: LateIdCallSt
  loc_B935EE: FFree1Ad var_C8
  loc_B935F1: LitVarI2 var_C4, 1
  loc_B935F6: PopAdLdVar
  loc_B935F7: LitVarI2 var_F0, 2
  loc_B935FC: PopAdLdVar
  loc_B935FD: LitVarStr var_110, "NOMBRE DEL CONCEPTO"
  loc_B93602: PopAdLdVar
  loc_B93603: FLdRfVar var_C8
  loc_B93606: FLdPr var_A0
  loc_B93609:  = Me.FontUnderline
  loc_B9360E: FLdPr var_C8
  loc_B93611: LateIdCallSt
  loc_B93619: FFree1Ad var_C8
  loc_B9361C: LitVarI2 var_C4, 1
  loc_B93621: PopAdLdVar
  loc_B93622: LitVarI2 var_F0, 3
  loc_B93627: PopAdLdVar
  loc_B93628: LitVarStr var_110, "TOTAL PAGADO REGISTRADO EN CTA. CTE. CONTRIBU."
  loc_B9362D: PopAdLdVar
  loc_B9362E: FLdRfVar var_C8
  loc_B93631: FLdPr var_A0
  loc_B93634:  = Me.FontUnderline
  loc_B93639: FLdPr var_C8
  loc_B9363C: LateIdCallSt
  loc_B93644: FFree1Ad var_C8
  loc_B93647: LitVarI2 var_C4, 1
  loc_B9364C: PopAdLdVar
  loc_B9364D: LitVarI2 var_F0, 4
  loc_B93652: PopAdLdVar
  loc_B93653: LitVarStr var_110, "TOTAL RENDIDO POR ENTIDAD RECAUDADORA"
  loc_B93658: PopAdLdVar
  loc_B93659: FLdRfVar var_C8
  loc_B9365C: FLdPr var_A0
  loc_B9365F:  = Me.FontUnderline
  loc_B93664: FLdPr var_C8
  loc_B93667: LateIdCallSt
  loc_B9366F: FFree1Ad var_C8
  loc_B93672: LitVarI2 var_C4, 1
  loc_B93677: PopAdLdVar
  loc_B93678: LitVarI2 var_F0, 5
  loc_B9367D: PopAdLdVar
  loc_B9367E: LitVarStr var_110, "DIFERENCIA"
  loc_B93683: PopAdLdVar
  loc_B93684: FLdRfVar var_C8
  loc_B93687: FLdPr var_A0
  loc_B9368A:  = Me.FontUnderline
  loc_B9368F: FLdPr var_C8
  loc_B93692: LateIdCallSt
  loc_B9369A: FFree1Ad var_C8
  loc_B9369D: LitI2_Byte 1
  loc_B9369F: FStI2 var_A2
  loc_B936A2: LitI4 1
  loc_B936A7: FLdPr Me
  loc_B936AA: MemLdRfVar from_stack_1.global_100
  loc_B936AD: FLdPr Me
  loc_B936B0: MemLdStr global_96
  loc_B936B3: LitI2_Byte 1
  loc_B936B5: FnUBound
  loc_B936B7: ForI4 var_128
  loc_B936BD: FLdPr Me
  loc_B936C0: MemLdStr global_100
  loc_B936C3: FLdPr Me
  loc_B936C6: MemLdStr global_96
  loc_B936C9: AryLock
  loc_B936CC: Ary1LdPr
  loc_B936CD: MemLdRfVar from_stack_1.global_8
  loc_B936D0: FStR4 var_130
  loc_B936D3: FLdI2 var_A2
  loc_B936D6: CI4UI1
  loc_B936D7: FLdPr Me
  loc_B936DA: MemLdStr global_100
  loc_B936DD: AddI4
  loc_B936DE: CVarI4
  loc_B936E2: PopAdLdVar
  loc_B936E3: LitVarI2 var_F0, 1
  loc_B936E8: PopAdLdVar
  loc_B936E9: FLdPr Me
  loc_B936EC: MemLdStr global_100
  loc_B936EF: FLdPr Me
  loc_B936F2: MemLdStr global_96
  loc_B936F5: Ary1LdPr
  loc_B936F6: MemLdStr global_0
  loc_B936F9: CVarStr var_110
  loc_B936FC: PopAdLdVar
  loc_B936FD: FLdRfVar var_C8
  loc_B93700: FLdPr var_A0
  loc_B93703:  = Me.FontUnderline
  loc_B93708: FLdPr var_C8
  loc_B9370B: LateIdCallSt
  loc_B93713: FFree1Ad var_C8
  loc_B93716: FLdI2 var_A2
  loc_B93719: CI4UI1
  loc_B9371A: FLdPr Me
  loc_B9371D: MemLdStr global_100
  loc_B93720: AddI4
  loc_B93721: CVarI4
  loc_B93725: PopAdLdVar
  loc_B93726: LitVarI2 var_F0, 2
  loc_B9372B: PopAdLdVar
  loc_B9372C: FLdPr Me
  loc_B9372F: MemLdStr global_100
  loc_B93732: FLdPr Me
  loc_B93735: MemLdStr global_96
  loc_B93738: Ary1LdPr
  loc_B93739: MemLdStr global_4
  loc_B9373C: CVarStr var_110
  loc_B9373F: PopAdLdVar
  loc_B93740: FLdRfVar var_C8
  loc_B93743: FLdPr var_A0
  loc_B93746:  = Me.FontUnderline
  loc_B9374B: FLdPr var_C8
  loc_B9374E: LateIdCallSt
  loc_B93756: FFree1Ad var_C8
  loc_B93759: FLdI2 var_A2
  loc_B9375C: CI4UI1
  loc_B9375D: FLdPr Me
  loc_B93760: MemLdStr global_100
  loc_B93763: AddI4
  loc_B93764: CVarI4
  loc_B93768: PopAdLdVar
  loc_B93769: LitVarI2 var_F0, 3
  loc_B9376E: PopAdLdVar
  loc_B9376F: FMemLdR4 var_130(0)
  loc_B93774: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B93779: CVarR8
  loc_B9377D: PopAdLdVar
  loc_B9377E: FLdRfVar var_C8
  loc_B93781: FLdPr var_A0
  loc_B93784:  = Me.FontUnderline
  loc_B93789: FLdPr var_C8
  loc_B9378C: LateIdCallSt
  loc_B93794: FFree1Ad var_C8
  loc_B93797: FLdI2 var_A2
  loc_B9379A: CI4UI1
  loc_B9379B: FLdPr Me
  loc_B9379E: MemLdStr global_100
  loc_B937A1: AddI4
  loc_B937A2: CVarI4
  loc_B937A6: PopAdLdVar
  loc_B937A7: LitVarI2 var_F0, 4
  loc_B937AC: PopAdLdVar
  loc_B937AD: FMemLdR4 var_130(4)
  loc_B937B2: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B937B7: CVarR8
  loc_B937BB: PopAdLdVar
  loc_B937BC: FLdRfVar var_C8
  loc_B937BF: FLdPr var_A0
  loc_B937C2:  = Me.FontUnderline
  loc_B937C7: FLdPr var_C8
  loc_B937CA: LateIdCallSt
  loc_B937D2: FFree1Ad var_C8
  loc_B937D5: FLdI2 var_A2
  loc_B937D8: CI4UI1
  loc_B937D9: FLdPr Me
  loc_B937DC: MemLdStr global_100
  loc_B937DF: AddI4
  loc_B937E0: CVarI4
  loc_B937E4: PopAdLdVar
  loc_B937E5: LitVarI2 var_F0, 5
  loc_B937EA: PopAdLdVar
  loc_B937EB: FMemLdR4 var_130(8)
  loc_B937F0: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_B937F5: CVarR8
  loc_B937F9: PopAdLdVar
  loc_B937FA: FLdRfVar var_C8
  loc_B937FD: FLdPr var_A0
  loc_B93800:  = Me.FontUnderline
  loc_B93805: FLdPr var_C8
  loc_B93808: LateIdCallSt
  loc_B93810: FFree1Ad var_C8
  loc_B93813: LitI4 0
  loc_B93818: FStR4 var_130
  loc_B9381B: AryUnlock
  loc_B9381E: FLdPr Me
  loc_B93821: MemLdRfVar from_stack_1.global_100
  loc_B93824: NextI4 var_128, loc_B936BD
  loc_B93829: FLdI2 var_A2
  loc_B9382C: CI4UI1
  loc_B9382D: FLdPr Me
  loc_B93830: MemLdStr global_100
  loc_B93833: AddI4
  loc_B93834: CVarI4
  loc_B93838: PopAdLdVar
  loc_B93839: LitVarI2 var_F0, 2
  loc_B9383E: PopAdLdVar
  loc_B9383F: LitVarStr var_110, "TOTALES"
  loc_B93844: PopAdLdVar
  loc_B93845: FLdRfVar var_C8
  loc_B93848: FLdPr var_A0
  loc_B9384B:  = Me.FontUnderline
  loc_B93850: FLdPr var_C8
  loc_B93853: LateIdCallSt
  loc_B9385B: FFree1Ad var_C8
  loc_B9385E: FLdI2 var_A2
  loc_B93861: CI4UI1
  loc_B93862: FLdPr Me
  loc_B93865: MemLdStr global_100
  loc_B93868: AddI4
  loc_B93869: CVarI4
  loc_B9386D: PopAdLdVar
  loc_B9386E: LitVarI2 var_F0, 3
  loc_B93873: PopAdLdVar
  loc_B93874: LitStr "=SUM(R[-"
  loc_B93877: FLdPr Me
  loc_B9387A: MemLdStr global_96
  loc_B9387D: LitI2_Byte 1
  loc_B9387F: FnUBound
  loc_B93881: CStrI4
  loc_B93883: FStStrNoPop var_134
  loc_B93886: ConcatStr
  loc_B93887: FStStrNoPop var_138
  loc_B9388A: LitStr "]C:R[-1]C)"
  loc_B9388D: ConcatStr
  loc_B9388E: CVarStr var_B4
  loc_B93891: PopAdLdVar
  loc_B93892: FLdRfVar var_C8
  loc_B93895: FLdPr var_A0
  loc_B93898:  = Me.FontUnderline
  loc_B9389D: FLdPr var_C8
  loc_B938A0: LateIdCallSt
  loc_B938A8: FFreeStr var_134 = ""
  loc_B938AF: FFree1Ad var_C8
  loc_B938B2: FFree1Var var_B4 = ""
  loc_B938B5: FLdI2 var_A2
  loc_B938B8: CI4UI1
  loc_B938B9: FLdPr Me
  loc_B938BC: MemLdStr global_100
  loc_B938BF: AddI4
  loc_B938C0: CVarI4
  loc_B938C4: PopAdLdVar
  loc_B938C5: LitVarI2 var_F0, 4
  loc_B938CA: PopAdLdVar
  loc_B938CB: LitStr "=SUM(R[-"
  loc_B938CE: FLdPr Me
  loc_B938D1: MemLdStr global_96
  loc_B938D4: LitI2_Byte 1
  loc_B938D6: FnUBound
  loc_B938D8: CStrI4
  loc_B938DA: FStStrNoPop var_134
  loc_B938DD: ConcatStr
  loc_B938DE: FStStrNoPop var_138
  loc_B938E1: LitStr "]C:R[-1]C)"
  loc_B938E4: ConcatStr
  loc_B938E5: CVarStr var_B4
  loc_B938E8: PopAdLdVar
  loc_B938E9: FLdRfVar var_C8
  loc_B938EC: FLdPr var_A0
  loc_B938EF:  = Me.FontUnderline
  loc_B938F4: FLdPr var_C8
  loc_B938F7: LateIdCallSt
  loc_B938FF: FFreeStr var_134 = ""
  loc_B93906: FFree1Ad var_C8
  loc_B93909: FFree1Var var_B4 = ""
  loc_B9390C: FLdI2 var_A2
  loc_B9390F: CI4UI1
  loc_B93910: FLdPr Me
  loc_B93913: MemLdStr global_100
  loc_B93916: AddI4
  loc_B93917: CVarI4
  loc_B9391B: PopAdLdVar
  loc_B9391C: LitVarI2 var_F0, 5
  loc_B93921: PopAdLdVar
  loc_B93922: LitStr "=SUM(R[-"
  loc_B93925: FLdPr Me
  loc_B93928: MemLdStr global_96
  loc_B9392B: LitI2_Byte 1
  loc_B9392D: FnUBound
  loc_B9392F: CStrI4
  loc_B93931: FStStrNoPop var_134
  loc_B93934: ConcatStr
  loc_B93935: FStStrNoPop var_138
  loc_B93938: LitStr "]C:R[-1]C)"
  loc_B9393B: ConcatStr
  loc_B9393C: CVarStr var_B4
  loc_B9393F: PopAdLdVar
  loc_B93940: FLdRfVar var_C8
  loc_B93943: FLdPr var_A0
  loc_B93946:  = Me.FontUnderline
  loc_B9394B: FLdPr var_C8
  loc_B9394E: LateIdCallSt
  loc_B93956: FFreeStr var_134 = ""
  loc_B9395D: FFree1Ad var_C8
  loc_B93960: FFree1Var var_B4 = ""
  loc_B93963: LitVar_TRUE var_F0
  loc_B93966: PopAdLdVar
  loc_B93967: FLdRfVar var_C8
  loc_B9396A: LitVar_Missing var_DC
  loc_B9396D: PopAdLdVar
  loc_B9396E: LitVarStr var_C4, "A1:E1"
  loc_B93973: PopAdLdVar
  loc_B93974: FLdPr var_A0
  loc_B93977:  = Me.Image
  loc_B9397C: FLdPr var_C8
  loc_B9397F: LateIdLdVar var_B4 DispID_146 0
  loc_B93986: CastAdVar Me
  loc_B9398A: FStAdFunc var_CC
  loc_B9398D: FLdPr var_CC
  loc_B93990: LateIdSt
  loc_B93995: FFreeAd var_C8 = ""
  loc_B9399C: FFree1Var var_B4 = ""
  loc_B9399F: LitVar_TRUE var_DC
  loc_B939A2: PopAdLdVar
  loc_B939A3: FLdRfVar var_C8
  loc_B939A6: LitVar_Missing var_C4
  loc_B939A9: PopAdLdVar
  loc_B939AA: LitStr "B"
  loc_B939AD: FLdPr Me
  loc_B939B0: MemLdStr global_100
  loc_B939B3: LitI4 1
  loc_B939B8: AddI4
  loc_B939B9: CStrI4
  loc_B939BB: FStStrNoPop var_134
  loc_B939BE: ConcatStr
  loc_B939BF: FStStrNoPop var_138
  loc_B939C2: LitStr ":E"
  loc_B939C5: ConcatStr
  loc_B939C6: FStStrNoPop var_13C
  loc_B939C9: FLdPr Me
  loc_B939CC: MemLdStr global_100
  loc_B939CF: LitI4 1
  loc_B939D4: AddI4
  loc_B939D5: CStrI4
  loc_B939D7: FStStrNoPop var_140
  loc_B939DA: ConcatStr
  loc_B939DB: CVarStr var_B4
  loc_B939DE: PopAdLdVar
  loc_B939DF: FLdPr var_A0
  loc_B939E2:  = Me.Image
  loc_B939E7: FLdPr var_C8
  loc_B939EA: LateIdLdVar var_150 DispID_146 0
  loc_B939F1: CastAdVar Me
  loc_B939F5: FStAdFunc var_CC
  loc_B939F8: FLdPr var_CC
  loc_B939FB: LateIdSt
  loc_B93A00: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_B93A0B: FFreeAd var_C8 = ""
  loc_B93A12: FFreeVar var_B4 = ""
  loc_B93A19: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_B93A1E: PopAdLdVar
  loc_B93A1F: LitVarStr var_C4, "C:E"
  loc_B93A24: PopAdLdVar
  loc_B93A25: FLdRfVar var_C8
  loc_B93A28: FLdPr var_A0
  loc_B93A2B:  = Me.CurrentY
  loc_B93A30: FLdPr var_C8
  loc_B93A33: LateIdCallLdVar
  loc_B93A3D: VarLateMemSt .NumberFormat
  loc_B93A41: FFree1Ad var_C8
  loc_B93A44: FFree1Var var_B4 = ""
  loc_B93A47: LitVarStr var_C4, "A:E"
  loc_B93A4C: PopAdLdVar
  loc_B93A4D: FLdRfVar var_C8
  loc_B93A50: FLdPr var_A0
  loc_B93A53:  = Me.CurrentY
  loc_B93A58: FLdPr var_C8
  loc_B93A5B: LateIdCallLdVar
  loc_B93A65: LdPrVar
  loc_B93A67: LateMemCall
  loc_B93A6D: FFree1Ad var_C8
  loc_B93A70: FFree1Var var_150 = ""
  loc_B93A73: LitVar_Missing var_180
  loc_B93A76: PopAdLdVar
  loc_B93A77: LitVar_Missing var_170
  loc_B93A7A: PopAdLdVar
  loc_B93A7B: LitVar_Missing var_160
  loc_B93A7E: PopAdLdVar
  loc_B93A7F: LitVar_Missing var_120
  loc_B93A82: PopAdLdVar
  loc_B93A83: LitVar_Missing var_110
  loc_B93A86: PopAdLdVar
  loc_B93A87: LitVar_Missing var_100
  loc_B93A8A: PopAdLdVar
  loc_B93A8B: LitVar_Missing var_F0
  loc_B93A8E: PopAdLdVar
  loc_B93A8F: LitVar_Missing var_DC
  loc_B93A92: PopAdLdVar
  loc_B93A93: LitVar_Missing var_C4
  loc_B93A96: PopAdLdVar
  loc_B93A97: ILdRf var_88
  loc_B93A9A: FLdPr var_A0
  loc_B93A9D: Me.MouseIcon = from_stack_1
  loc_B93AA2: LitI4 &H409
  loc_B93AA7: FLdPr var_9C
  loc_B93AAF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B1627C
  'Data Table: 496280
  loc_B16004: FLdRfVar var_88
  loc_B16007: LitI2_Byte 0
  loc_B16009: LitI2_Byte &HFF
  loc_B1600B: ImpAdLdI4 MemVar_D93C84
  loc_B1600E: FLdPr Me
  loc_B16011: MemLdRfVar from_stack_1.global_56
  loc_B16014: NewIfNullPr IFileSystem3
  loc_B16017: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B1601C: ILdRf var_88
  loc_B1601F: FLdPr Me
  loc_B16022: MemStVarAd
  loc_B16026: FFree1Ad var_88
  loc_B16029: LitI2_Byte &HFF
  loc_B1602B: ImpAdStI2 MemVar_D93C8A
  loc_B1602E: Call Proc_242_23_BB62FC()
  loc_B16033: LitI4 1
  loc_B16038: FLdPr Me
  loc_B1603B: MemLdRfVar from_stack_1.global_100
  loc_B1603E: FLdPr Me
  loc_B16041: MemLdStr global_96
  loc_B16044: LitI2_Byte 1
  loc_B16046: FnUBound
  loc_B16048: ForI4 var_90
  loc_B1604E: FLdPr Me
  loc_B16051: MemLdStr global_100
  loc_B16054: FLdPr Me
  loc_B16057: MemLdStr global_96
  loc_B1605A: AryLock
  loc_B1605D: Ary1LdRf
  loc_B1605E: FStR4 var_98
  loc_B16061: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B16066: PopAdLdVar
  loc_B16067: FLdPr Me
  loc_B1606A: MemLdRfVar from_stack_1.global_60
  loc_B1606D: LdPrVar
  loc_B1606F: LateMemCall
  loc_B16075: LitStr vbNullString
  loc_B16078: LitI2_Byte 0
  loc_B1607A: LitI2_Byte 0
  loc_B1607C: LitI2_Byte 0
  loc_B1607E: LitStr "right"
  loc_B16081: FMemLdR4 var_98(0)
  loc_B16086: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1608B: CVarStr var_C8
  loc_B1608E: PopAdLdVar
  loc_B1608F: FLdPr Me
  loc_B16092: MemLdRfVar from_stack_1.global_60
  loc_B16095: LdPrVar
  loc_B16097: LateMemCall
  loc_B1609D: FFree1Var var_C8 = ""
  loc_B160A0: LitStr vbNullString
  loc_B160A3: LitI2_Byte 0
  loc_B160A5: LitI2_Byte 0
  loc_B160A7: LitI2_Byte 0
  loc_B160A9: LitStr "left"
  loc_B160AC: FMemLdR4 var_98(4)
  loc_B160B1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B160B6: CVarStr var_C8
  loc_B160B9: PopAdLdVar
  loc_B160BA: FLdPr Me
  loc_B160BD: MemLdRfVar from_stack_1.global_60
  loc_B160C0: LdPrVar
  loc_B160C2: LateMemCall
  loc_B160C8: FFree1Var var_C8 = ""
  loc_B160CB: FMemLdRf unk_4961E9
  loc_B160D0: FStR4 var_CC
  loc_B160D3: LitStr vbNullString
  loc_B160D6: LitI2_Byte 0
  loc_B160D8: LitI2_Byte 0
  loc_B160DA: LitI2_Byte 0
  loc_B160DC: LitStr "right"
  loc_B160DF: FMemLdR4 var_CC(0)
  loc_B160E4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B160E9: CVarStr var_C8
  loc_B160EC: PopAdLdVar
  loc_B160ED: FLdPr Me
  loc_B160F0: MemLdRfVar from_stack_1.global_60
  loc_B160F3: LdPrVar
  loc_B160F5: LateMemCall
  loc_B160FB: FFree1Var var_C8 = ""
  loc_B160FE: LitStr vbNullString
  loc_B16101: LitI2_Byte 0
  loc_B16103: LitI2_Byte 0
  loc_B16105: LitI2_Byte 0
  loc_B16107: LitStr "right"
  loc_B1610A: FMemLdR4 var_CC(4)
  loc_B1610F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B16114: CVarStr var_C8
  loc_B16117: PopAdLdVar
  loc_B16118: FLdPr Me
  loc_B1611B: MemLdRfVar from_stack_1.global_60
  loc_B1611E: LdPrVar
  loc_B16120: LateMemCall
  loc_B16126: FFree1Var var_C8 = ""
  loc_B16129: LitStr vbNullString
  loc_B1612C: LitI2_Byte 0
  loc_B1612E: LitI2_Byte 0
  loc_B16130: LitI2_Byte 0
  loc_B16132: LitStr "right"
  loc_B16135: FMemLdR4 var_CC(8)
  loc_B1613A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1613F: CVarStr var_C8
  loc_B16142: PopAdLdVar
  loc_B16143: FLdPr Me
  loc_B16146: MemLdRfVar from_stack_1.global_60
  loc_B16149: LdPrVar
  loc_B1614B: LateMemCall
  loc_B16151: FFree1Var var_C8 = ""
  loc_B16154: LitI4 0
  loc_B16159: FStR4 var_CC
  loc_B1615C: LitVarStr var_A8, "     </tr>"
  loc_B16161: PopAdLdVar
  loc_B16162: FLdPr Me
  loc_B16165: MemLdRfVar from_stack_1.global_60
  loc_B16168: LdPrVar
  loc_B1616A: LateMemCall
  loc_B16170: LitI4 0
  loc_B16175: FStR4 var_98
  loc_B16178: AryUnlock
  loc_B1617B: FLdPr Me
  loc_B1617E: MemLdRfVar from_stack_1.global_100
  loc_B16181: NextI4 var_90, loc_B1604E
  loc_B16186: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B1618B: PopAdLdVar
  loc_B1618C: FLdPr Me
  loc_B1618F: MemLdRfVar from_stack_1.global_60
  loc_B16192: LdPrVar
  loc_B16194: LateMemCall
  loc_B1619A: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B1619F: PopAdLdVar
  loc_B161A0: FLdPr Me
  loc_B161A3: MemLdRfVar from_stack_1.global_60
  loc_B161A6: LdPrVar
  loc_B161A8: LateMemCall
  loc_B161AE: LitI4 1
  loc_B161B3: FLdPr Me
  loc_B161B6: MemLdStr global_104
  loc_B161B9: AryLock
  loc_B161BC: Ary1LdRf
  loc_B161BD: FStR4 var_D4
  loc_B161C0: LitStr vbNullString
  loc_B161C3: LitI2_Byte 0
  loc_B161C5: LitI2_Byte 0
  loc_B161C7: LitI2_Byte 0
  loc_B161C9: LitStr "right"
  loc_B161CC: FMemLdR4 var_D4(0)
  loc_B161D1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B161D6: CVarStr var_C8
  loc_B161D9: PopAdLdVar
  loc_B161DA: FLdPr Me
  loc_B161DD: MemLdRfVar from_stack_1.global_60
  loc_B161E0: LdPrVar
  loc_B161E2: LateMemCall
  loc_B161E8: FFree1Var var_C8 = ""
  loc_B161EB: LitStr vbNullString
  loc_B161EE: LitI2_Byte 0
  loc_B161F0: LitI2_Byte 0
  loc_B161F2: LitI2_Byte 0
  loc_B161F4: LitStr "right"
  loc_B161F7: FMemLdR4 var_D4(4)
  loc_B161FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B16201: CVarStr var_C8
  loc_B16204: PopAdLdVar
  loc_B16205: FLdPr Me
  loc_B16208: MemLdRfVar from_stack_1.global_60
  loc_B1620B: LdPrVar
  loc_B1620D: LateMemCall
  loc_B16213: FFree1Var var_C8 = ""
  loc_B16216: LitStr vbNullString
  loc_B16219: LitI2_Byte 0
  loc_B1621B: LitI2_Byte 0
  loc_B1621D: LitI2_Byte 0
  loc_B1621F: LitStr "right"
  loc_B16222: FMemLdR4 var_D4(8)
  loc_B16227: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1622C: CVarStr var_C8
  loc_B1622F: PopAdLdVar
  loc_B16230: FLdPr Me
  loc_B16233: MemLdRfVar from_stack_1.global_60
  loc_B16236: LdPrVar
  loc_B16238: LateMemCall
  loc_B1623E: FFree1Var var_C8 = ""
  loc_B16241: LitI4 0
  loc_B16246: FStR4 var_D4
  loc_B16249: AryUnlock
  loc_B1624C: LitVarStr var_A8, "     </tr>"
  loc_B16251: PopAdLdVar
  loc_B16252: FLdPr Me
  loc_B16255: MemLdRfVar from_stack_1.global_60
  loc_B16258: LdPrVar
  loc_B1625A: LateMemCall
  loc_B16260: Call Proc_242_24_ADEC50()
  loc_B16265: FLdPr Me
  loc_B16268: MemLdRfVar from_stack_1.global_60
  loc_B1626B: LdPrVar
  loc_B1626D: LateMemCall
  loc_B16273: LitStr vbNullString
  loc_B16276: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B1627B: ExitProcHresult
End Sub

Private Function Proc_242_23_BB62FC() 'BB62FC
  'Data Table: 496280
  loc_BB5C6C: LitVarStr var_94, "<html>"
  loc_BB5C71: PopAdLdVar
  loc_BB5C72: FLdPr Me
  loc_BB5C75: MemLdRfVar from_stack_1.global_60
  loc_BB5C78: LdPrVar
  loc_BB5C7A: LateMemCall
  loc_BB5C80: LitVarStr var_94, "<head>"
  loc_BB5C85: PopAdLdVar
  loc_BB5C86: FLdPr Me
  loc_BB5C89: MemLdRfVar from_stack_1.global_60
  loc_BB5C8C: LdPrVar
  loc_BB5C8E: LateMemCall
  loc_BB5C94: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB5C99: PopAdLdVar
  loc_BB5C9A: FLdPr Me
  loc_BB5C9D: MemLdRfVar from_stack_1.global_60
  loc_BB5CA0: LdPrVar
  loc_BB5CA2: LateMemCall
  loc_BB5CA8: LitStr "<title>"
  loc_BB5CAB: FLdRfVar var_A8
  loc_BB5CAE: FLdPr Me
  loc_BB5CB1:  = Me.Caption
  loc_BB5CB6: ILdRf var_A8
  loc_BB5CB9: ConcatStr
  loc_BB5CBA: FStStrNoPop var_AC
  loc_BB5CBD: LitStr "</title>"
  loc_BB5CC0: ConcatStr
  loc_BB5CC1: CVarStr var_BC
  loc_BB5CC4: PopAdLdVar
  loc_BB5CC5: FLdPr Me
  loc_BB5CC8: MemLdRfVar from_stack_1.global_60
  loc_BB5CCB: LdPrVar
  loc_BB5CCD: LateMemCall
  loc_BB5CD3: FFreeStr var_A8 = ""
  loc_BB5CDA: FFree1Var var_BC = ""
  loc_BB5CDD: LitVarStr var_94, "<style type=""text/css"">"
  loc_BB5CE2: PopAdLdVar
  loc_BB5CE3: FLdPr Me
  loc_BB5CE6: MemLdRfVar from_stack_1.global_60
  loc_BB5CE9: LdPrVar
  loc_BB5CEB: LateMemCall
  loc_BB5CF1: LitVarStr var_94, ".Titulo1 {"
  loc_BB5CF6: PopAdLdVar
  loc_BB5CF7: FLdPr Me
  loc_BB5CFA: MemLdRfVar from_stack_1.global_60
  loc_BB5CFD: LdPrVar
  loc_BB5CFF: LateMemCall
  loc_BB5D05: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB5D0A: PopAdLdVar
  loc_BB5D0B: FLdPr Me
  loc_BB5D0E: MemLdRfVar from_stack_1.global_60
  loc_BB5D11: LdPrVar
  loc_BB5D13: LateMemCall
  loc_BB5D19: LitVarStr var_94, " font-size: 18px;"
  loc_BB5D1E: PopAdLdVar
  loc_BB5D1F: FLdPr Me
  loc_BB5D22: MemLdRfVar from_stack_1.global_60
  loc_BB5D25: LdPrVar
  loc_BB5D27: LateMemCall
  loc_BB5D2D: LitVarStr var_94, " font-weight: bold;"
  loc_BB5D32: PopAdLdVar
  loc_BB5D33: FLdPr Me
  loc_BB5D36: MemLdRfVar from_stack_1.global_60
  loc_BB5D39: LdPrVar
  loc_BB5D3B: LateMemCall
  loc_BB5D41: LitVarStr var_94, "}"
  loc_BB5D46: PopAdLdVar
  loc_BB5D47: FLdPr Me
  loc_BB5D4A: MemLdRfVar from_stack_1.global_60
  loc_BB5D4D: LdPrVar
  loc_BB5D4F: LateMemCall
  loc_BB5D55: LitVarStr var_94, ".Titulo2 {"
  loc_BB5D5A: PopAdLdVar
  loc_BB5D5B: FLdPr Me
  loc_BB5D5E: MemLdRfVar from_stack_1.global_60
  loc_BB5D61: LdPrVar
  loc_BB5D63: LateMemCall
  loc_BB5D69: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB5D6E: PopAdLdVar
  loc_BB5D6F: FLdPr Me
  loc_BB5D72: MemLdRfVar from_stack_1.global_60
  loc_BB5D75: LdPrVar
  loc_BB5D77: LateMemCall
  loc_BB5D7D: LitVarStr var_94, " font-size: 14px;"
  loc_BB5D82: PopAdLdVar
  loc_BB5D83: FLdPr Me
  loc_BB5D86: MemLdRfVar from_stack_1.global_60
  loc_BB5D89: LdPrVar
  loc_BB5D8B: LateMemCall
  loc_BB5D91: LitVarStr var_94, " font-weight: bold;"
  loc_BB5D96: PopAdLdVar
  loc_BB5D97: FLdPr Me
  loc_BB5D9A: MemLdRfVar from_stack_1.global_60
  loc_BB5D9D: LdPrVar
  loc_BB5D9F: LateMemCall
  loc_BB5DA5: LitVarStr var_94, "}"
  loc_BB5DAA: PopAdLdVar
  loc_BB5DAB: FLdPr Me
  loc_BB5DAE: MemLdRfVar from_stack_1.global_60
  loc_BB5DB1: LdPrVar
  loc_BB5DB3: LateMemCall
  loc_BB5DB9: LitVarStr var_94, ".Normal {"
  loc_BB5DBE: PopAdLdVar
  loc_BB5DBF: FLdPr Me
  loc_BB5DC2: MemLdRfVar from_stack_1.global_60
  loc_BB5DC5: LdPrVar
  loc_BB5DC7: LateMemCall
  loc_BB5DCD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB5DD2: PopAdLdVar
  loc_BB5DD3: FLdPr Me
  loc_BB5DD6: MemLdRfVar from_stack_1.global_60
  loc_BB5DD9: LdPrVar
  loc_BB5DDB: LateMemCall
  loc_BB5DE1: LitVarStr var_94, " font-size: 12px;"
  loc_BB5DE6: PopAdLdVar
  loc_BB5DE7: FLdPr Me
  loc_BB5DEA: MemLdRfVar from_stack_1.global_60
  loc_BB5DED: LdPrVar
  loc_BB5DEF: LateMemCall
  loc_BB5DF5: LitVarStr var_94, " font-style: normal;"
  loc_BB5DFA: PopAdLdVar
  loc_BB5DFB: FLdPr Me
  loc_BB5DFE: MemLdRfVar from_stack_1.global_60
  loc_BB5E01: LdPrVar
  loc_BB5E03: LateMemCall
  loc_BB5E09: LitVarStr var_94, " font-weight: normal;"
  loc_BB5E0E: PopAdLdVar
  loc_BB5E0F: FLdPr Me
  loc_BB5E12: MemLdRfVar from_stack_1.global_60
  loc_BB5E15: LdPrVar
  loc_BB5E17: LateMemCall
  loc_BB5E1D: LitVarStr var_94, " font-variant: normal;"
  loc_BB5E22: PopAdLdVar
  loc_BB5E23: FLdPr Me
  loc_BB5E26: MemLdRfVar from_stack_1.global_60
  loc_BB5E29: LdPrVar
  loc_BB5E2B: LateMemCall
  loc_BB5E31: LitVarStr var_94, "}"
  loc_BB5E36: PopAdLdVar
  loc_BB5E37: FLdPr Me
  loc_BB5E3A: MemLdRfVar from_stack_1.global_60
  loc_BB5E3D: LdPrVar
  loc_BB5E3F: LateMemCall
  loc_BB5E45: LitVarStr var_94, ".Encabezado {"
  loc_BB5E4A: PopAdLdVar
  loc_BB5E4B: FLdPr Me
  loc_BB5E4E: MemLdRfVar from_stack_1.global_60
  loc_BB5E51: LdPrVar
  loc_BB5E53: LateMemCall
  loc_BB5E59: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB5E5E: PopAdLdVar
  loc_BB5E5F: FLdPr Me
  loc_BB5E62: MemLdRfVar from_stack_1.global_60
  loc_BB5E65: LdPrVar
  loc_BB5E67: LateMemCall
  loc_BB5E6D: LitVarStr var_94, " font-size: 11px;"
  loc_BB5E72: PopAdLdVar
  loc_BB5E73: FLdPr Me
  loc_BB5E76: MemLdRfVar from_stack_1.global_60
  loc_BB5E79: LdPrVar
  loc_BB5E7B: LateMemCall
  loc_BB5E81: LitVarStr var_94, " font-weight: bold;"
  loc_BB5E86: PopAdLdVar
  loc_BB5E87: FLdPr Me
  loc_BB5E8A: MemLdRfVar from_stack_1.global_60
  loc_BB5E8D: LdPrVar
  loc_BB5E8F: LateMemCall
  loc_BB5E95: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BB5E9A: PopAdLdVar
  loc_BB5E9B: FLdPr Me
  loc_BB5E9E: MemLdRfVar from_stack_1.global_60
  loc_BB5EA1: LdPrVar
  loc_BB5EA3: LateMemCall
  loc_BB5EA9: LitVarStr var_94, "}"
  loc_BB5EAE: PopAdLdVar
  loc_BB5EAF: FLdPr Me
  loc_BB5EB2: MemLdRfVar from_stack_1.global_60
  loc_BB5EB5: LdPrVar
  loc_BB5EB7: LateMemCall
  loc_BB5EBD: LitVarStr var_94, ".LineaDato {"
  loc_BB5EC2: PopAdLdVar
  loc_BB5EC3: FLdPr Me
  loc_BB5EC6: MemLdRfVar from_stack_1.global_60
  loc_BB5EC9: LdPrVar
  loc_BB5ECB: LateMemCall
  loc_BB5ED1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB5ED6: PopAdLdVar
  loc_BB5ED7: FLdPr Me
  loc_BB5EDA: MemLdRfVar from_stack_1.global_60
  loc_BB5EDD: LdPrVar
  loc_BB5EDF: LateMemCall
  loc_BB5EE5: LitVarStr var_94, " font-size: 10px;"
  loc_BB5EEA: PopAdLdVar
  loc_BB5EEB: FLdPr Me
  loc_BB5EEE: MemLdRfVar from_stack_1.global_60
  loc_BB5EF1: LdPrVar
  loc_BB5EF3: LateMemCall
  loc_BB5EF9: LitVarStr var_94, "}"
  loc_BB5EFE: PopAdLdVar
  loc_BB5EFF: FLdPr Me
  loc_BB5F02: MemLdRfVar from_stack_1.global_60
  loc_BB5F05: LdPrVar
  loc_BB5F07: LateMemCall
  loc_BB5F0D: LitVarStr var_94, ".Totales {"
  loc_BB5F12: PopAdLdVar
  loc_BB5F13: FLdPr Me
  loc_BB5F16: MemLdRfVar from_stack_1.global_60
  loc_BB5F19: LdPrVar
  loc_BB5F1B: LateMemCall
  loc_BB5F21: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB5F26: PopAdLdVar
  loc_BB5F27: FLdPr Me
  loc_BB5F2A: MemLdRfVar from_stack_1.global_60
  loc_BB5F2D: LdPrVar
  loc_BB5F2F: LateMemCall
  loc_BB5F35: LitVarStr var_94, " font-size: 12px;"
  loc_BB5F3A: PopAdLdVar
  loc_BB5F3B: FLdPr Me
  loc_BB5F3E: MemLdRfVar from_stack_1.global_60
  loc_BB5F41: LdPrVar
  loc_BB5F43: LateMemCall
  loc_BB5F49: LitVarStr var_94, " font-weight: bold;"
  loc_BB5F4E: PopAdLdVar
  loc_BB5F4F: FLdPr Me
  loc_BB5F52: MemLdRfVar from_stack_1.global_60
  loc_BB5F55: LdPrVar
  loc_BB5F57: LateMemCall
  loc_BB5F5D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB5F62: PopAdLdVar
  loc_BB5F63: FLdPr Me
  loc_BB5F66: MemLdRfVar from_stack_1.global_60
  loc_BB5F69: LdPrVar
  loc_BB5F6B: LateMemCall
  loc_BB5F71: LitVarStr var_94, "}"
  loc_BB5F76: PopAdLdVar
  loc_BB5F77: FLdPr Me
  loc_BB5F7A: MemLdRfVar from_stack_1.global_60
  loc_BB5F7D: LdPrVar
  loc_BB5F7F: LateMemCall
  loc_BB5F85: LitVarStr var_94, ".SubTotales {"
  loc_BB5F8A: PopAdLdVar
  loc_BB5F8B: FLdPr Me
  loc_BB5F8E: MemLdRfVar from_stack_1.global_60
  loc_BB5F91: LdPrVar
  loc_BB5F93: LateMemCall
  loc_BB5F99: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB5F9E: PopAdLdVar
  loc_BB5F9F: FLdPr Me
  loc_BB5FA2: MemLdRfVar from_stack_1.global_60
  loc_BB5FA5: LdPrVar
  loc_BB5FA7: LateMemCall
  loc_BB5FAD: LitVarStr var_94, " font-size: 10px;"
  loc_BB5FB2: PopAdLdVar
  loc_BB5FB3: FLdPr Me
  loc_BB5FB6: MemLdRfVar from_stack_1.global_60
  loc_BB5FB9: LdPrVar
  loc_BB5FBB: LateMemCall
  loc_BB5FC1: LitVarStr var_94, " font-weight: bold;"
  loc_BB5FC6: PopAdLdVar
  loc_BB5FC7: FLdPr Me
  loc_BB5FCA: MemLdRfVar from_stack_1.global_60
  loc_BB5FCD: LdPrVar
  loc_BB5FCF: LateMemCall
  loc_BB5FD5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB5FDA: PopAdLdVar
  loc_BB5FDB: FLdPr Me
  loc_BB5FDE: MemLdRfVar from_stack_1.global_60
  loc_BB5FE1: LdPrVar
  loc_BB5FE3: LateMemCall
  loc_BB5FE9: LitVarStr var_94, "}"
  loc_BB5FEE: PopAdLdVar
  loc_BB5FEF: FLdPr Me
  loc_BB5FF2: MemLdRfVar from_stack_1.global_60
  loc_BB5FF5: LdPrVar
  loc_BB5FF7: LateMemCall
  loc_BB5FFD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BB6002: PopAdLdVar
  loc_BB6003: FLdPr Me
  loc_BB6006: MemLdRfVar from_stack_1.global_60
  loc_BB6009: LdPrVar
  loc_BB600B: LateMemCall
  loc_BB6011: LitVarStr var_94, "</style>"
  loc_BB6016: PopAdLdVar
  loc_BB6017: FLdPr Me
  loc_BB601A: MemLdRfVar from_stack_1.global_60
  loc_BB601D: LdPrVar
  loc_BB601F: LateMemCall
  loc_BB6025: LitI4 0
  loc_BB602A: FStStrCopy var_AC
  loc_BB602D: FLdRfVar var_AC
  loc_BB6030: LitI4 0
  loc_BB6035: FStStrCopy var_A8
  loc_BB6038: FLdRfVar var_A8
  loc_BB603B: LitI2_Byte &HFF
  loc_BB603D: PopTmpLdAd2 var_BE
  loc_BB6040: FLdPr Me
  loc_BB6043: MemLdRfVar from_stack_1.global_60
  loc_BB6046: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB604B: FFreeStr var_A8 = ""
  loc_BB6052: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB6057: PopAdLdVar
  loc_BB6058: FLdPr Me
  loc_BB605B: MemLdRfVar from_stack_1.global_60
  loc_BB605E: LdPrVar
  loc_BB6060: LateMemCall
  loc_BB6066: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BB606B: PopAdLdVar
  loc_BB606C: FLdPr Me
  loc_BB606F: MemLdRfVar from_stack_1.global_60
  loc_BB6072: LdPrVar
  loc_BB6074: LateMemCall
  loc_BB607A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB607D: LitI2_Byte &H5F
  loc_BB607F: CStrUI1
  loc_BB6081: FStStrNoPop var_A8
  loc_BB6084: ConcatStr
  loc_BB6085: FStStrNoPop var_AC
  loc_BB6088: LitStr """ height="""
  loc_BB608B: ConcatStr
  loc_BB608C: FStStrNoPop var_C4
  loc_BB608F: LitI2_Byte &H3C
  loc_BB6091: CStrUI1
  loc_BB6093: FStStrNoPop var_C8
  loc_BB6096: ConcatStr
  loc_BB6097: FStStrNoPop var_CC
  loc_BB609A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB609D: ConcatStr
  loc_BB609E: FStStrNoPop var_D0
  loc_BB60A1: LitStr "Municipalidad de Guaymallén"
  loc_BB60A4: ConcatStr
  loc_BB60A5: FStStrNoPop var_D4
  loc_BB60A8: LitStr "</p>"
  loc_BB60AB: ConcatStr
  loc_BB60AC: CVarStr var_BC
  loc_BB60AF: PopAdLdVar
  loc_BB60B0: FLdPr Me
  loc_BB60B3: MemLdRfVar from_stack_1.global_60
  loc_BB60B6: LdPrVar
  loc_BB60B8: LateMemCall
  loc_BB60BE: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB60CF: FFree1Var var_BC = ""
  loc_BB60D2: LitStr "    <p>"
  loc_BB60D5: FLdRfVar var_A8
  loc_BB60D8: FLdPr Me
  loc_BB60DB:  = Me.Caption
  loc_BB60E0: ILdRf var_A8
  loc_BB60E3: ConcatStr
  loc_BB60E4: FStStrNoPop var_AC
  loc_BB60E7: LitStr "</p></th>"
  loc_BB60EA: ConcatStr
  loc_BB60EB: CVarStr var_BC
  loc_BB60EE: PopAdLdVar
  loc_BB60EF: FLdPr Me
  loc_BB60F2: MemLdRfVar from_stack_1.global_60
  loc_BB60F5: LdPrVar
  loc_BB60F7: LateMemCall
  loc_BB60FD: FFreeStr var_A8 = ""
  loc_BB6104: FFree1Var var_BC = ""
  loc_BB6107: LitVarStr var_94, "  </tr>"
  loc_BB610C: PopAdLdVar
  loc_BB610D: FLdPr Me
  loc_BB6110: MemLdRfVar from_stack_1.global_60
  loc_BB6113: LdPrVar
  loc_BB6115: LateMemCall
  loc_BB611B: LitVarStr var_94, "  <tr>"
  loc_BB6120: PopAdLdVar
  loc_BB6121: FLdPr Me
  loc_BB6124: MemLdRfVar from_stack_1.global_60
  loc_BB6127: LdPrVar
  loc_BB6129: LateMemCall
  loc_BB612F: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BB6134: PopAdLdVar
  loc_BB6135: FLdPr Me
  loc_BB6138: MemLdRfVar from_stack_1.global_60
  loc_BB613B: LdPrVar
  loc_BB613D: LateMemCall
  loc_BB6143: LitVarStr var_94, "  </tr>"
  loc_BB6148: PopAdLdVar
  loc_BB6149: FLdPr Me
  loc_BB614C: MemLdRfVar from_stack_1.global_60
  loc_BB614F: LdPrVar
  loc_BB6151: LateMemCall
  loc_BB6157: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BB615C: PopAdLdVar
  loc_BB615D: FLdPr Me
  loc_BB6160: MemLdRfVar from_stack_1.global_60
  loc_BB6163: LdPrVar
  loc_BB6165: LateMemCall
  loc_BB616B: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BB616E: FLdPr Me
  loc_BB6171: VCallAd Control_ID_DesdeMsk
  loc_BB6174: FStAdFunc var_D8
  loc_BB6177: FLdPr var_D8
  loc_BB617A: LateIdLdVar var_BC DispID_15 0
  loc_BB6181: CStrVarTmp
  loc_BB6182: FStStrNoPop var_A8
  loc_BB6185: ConcatStr
  loc_BB6186: FStStrNoPop var_AC
  loc_BB6189: LitStr "</td>"
  loc_BB618C: ConcatStr
  loc_BB618D: CVarStr var_E8
  loc_BB6190: PopAdLdVar
  loc_BB6191: FLdPr Me
  loc_BB6194: MemLdRfVar from_stack_1.global_60
  loc_BB6197: LdPrVar
  loc_BB6199: LateMemCall
  loc_BB619F: FFreeStr var_A8 = ""
  loc_BB61A6: FFree1Ad var_D8
  loc_BB61A9: FFreeVar var_BC = ""
  loc_BB61B0: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BB61B3: FLdPr Me
  loc_BB61B6: VCallAd Control_ID_HastaMsk
  loc_BB61B9: FStAdFunc var_D8
  loc_BB61BC: FLdPr var_D8
  loc_BB61BF: LateIdLdVar var_BC DispID_15 0
  loc_BB61C6: CStrVarTmp
  loc_BB61C7: FStStrNoPop var_A8
  loc_BB61CA: ConcatStr
  loc_BB61CB: FStStrNoPop var_AC
  loc_BB61CE: LitStr "</td>"
  loc_BB61D1: ConcatStr
  loc_BB61D2: CVarStr var_E8
  loc_BB61D5: PopAdLdVar
  loc_BB61D6: FLdPr Me
  loc_BB61D9: MemLdRfVar from_stack_1.global_60
  loc_BB61DC: LdPrVar
  loc_BB61DE: LateMemCall
  loc_BB61E4: FFreeStr var_A8 = ""
  loc_BB61EB: FFree1Ad var_D8
  loc_BB61EE: FFreeVar var_BC = ""
  loc_BB61F5: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BB61FA: PopAdLdVar
  loc_BB61FB: FLdPr Me
  loc_BB61FE: MemLdRfVar from_stack_1.global_60
  loc_BB6201: LdPrVar
  loc_BB6203: LateMemCall
  loc_BB6209: LitVarStr var_94, "  </tr>"
  loc_BB620E: PopAdLdVar
  loc_BB620F: FLdPr Me
  loc_BB6212: MemLdRfVar from_stack_1.global_60
  loc_BB6215: LdPrVar
  loc_BB6217: LateMemCall
  loc_BB621D: LitVarStr var_94, "</table>"
  loc_BB6222: PopAdLdVar
  loc_BB6223: FLdPr Me
  loc_BB6226: MemLdRfVar from_stack_1.global_60
  loc_BB6229: LdPrVar
  loc_BB622B: LateMemCall
  loc_BB6231: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB6236: PopAdLdVar
  loc_BB6237: FLdPr Me
  loc_BB623A: MemLdRfVar from_stack_1.global_60
  loc_BB623D: LdPrVar
  loc_BB623F: LateMemCall
  loc_BB6245: LitVarStr var_94, "  <thead>"
  loc_BB624A: PopAdLdVar
  loc_BB624B: FLdPr Me
  loc_BB624E: MemLdRfVar from_stack_1.global_60
  loc_BB6251: LdPrVar
  loc_BB6253: LateMemCall
  loc_BB6259: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB625E: PopAdLdVar
  loc_BB625F: FLdPr Me
  loc_BB6262: MemLdRfVar from_stack_1.global_60
  loc_BB6265: LdPrVar
  loc_BB6267: LateMemCall
  loc_BB626D: LitVarStr var_94, "    <th>CÓDIGO DEL CONCEPTO DE <br> RECAUDACIÓN</th>"
  loc_BB6272: PopAdLdVar
  loc_BB6273: FLdPr Me
  loc_BB6276: MemLdRfVar from_stack_1.global_60
  loc_BB6279: LdPrVar
  loc_BB627B: LateMemCall
  loc_BB6281: LitVarStr var_94, "    <th>NOMBRE DEL CONCEPTO</th>"
  loc_BB6286: PopAdLdVar
  loc_BB6287: FLdPr Me
  loc_BB628A: MemLdRfVar from_stack_1.global_60
  loc_BB628D: LdPrVar
  loc_BB628F: LateMemCall
  loc_BB6295: LitVarStr var_94, "    <th>TOTAL PAGADO REGISTRADO EN <br> CTA. CTE. CONTRIBU. </th>"
  loc_BB629A: PopAdLdVar
  loc_BB629B: FLdPr Me
  loc_BB629E: MemLdRfVar from_stack_1.global_60
  loc_BB62A1: LdPrVar
  loc_BB62A3: LateMemCall
  loc_BB62A9: LitVarStr var_94, "    <th>TOTAL RENDIDO POR ENTIDAD <br> RECAUDADORA </th>"
  loc_BB62AE: PopAdLdVar
  loc_BB62AF: FLdPr Me
  loc_BB62B2: MemLdRfVar from_stack_1.global_60
  loc_BB62B5: LdPrVar
  loc_BB62B7: LateMemCall
  loc_BB62BD: LitVarStr var_94, "    <th>DIFERENCIA</th>"
  loc_BB62C2: PopAdLdVar
  loc_BB62C3: FLdPr Me
  loc_BB62C6: MemLdRfVar from_stack_1.global_60
  loc_BB62C9: LdPrVar
  loc_BB62CB: LateMemCall
  loc_BB62D1: LitVarStr var_94, "  </tr>"
  loc_BB62D6: PopAdLdVar
  loc_BB62D7: FLdPr Me
  loc_BB62DA: MemLdRfVar from_stack_1.global_60
  loc_BB62DD: LdPrVar
  loc_BB62DF: LateMemCall
  loc_BB62E5: LitVarStr var_94, "  </thead>"
  loc_BB62EA: PopAdLdVar
  loc_BB62EB: FLdPr Me
  loc_BB62EE: MemLdRfVar from_stack_1.global_60
  loc_BB62F1: LdPrVar
  loc_BB62F3: LateMemCall
  loc_BB62F9: ExitProcHresult
  loc_BB62FA: AndI4
End Function

Private Function Proc_242_24_ADEC50() 'ADEC50
  'Data Table: 496280
  loc_ADEAE4: LitVarStr var_94, "</table>"
  loc_ADEAE9: PopAdLdVar
  loc_ADEAEA: FLdPr Me
  loc_ADEAED: MemLdRfVar from_stack_1.global_60
  loc_ADEAF0: LdPrVar
  loc_ADEAF2: LateMemCall
  loc_ADEAF8: LitVarStr var_94, "<br>"
  loc_ADEAFD: PopAdLdVar
  loc_ADEAFE: FLdPr Me
  loc_ADEB01: MemLdRfVar from_stack_1.global_60
  loc_ADEB04: LdPrVar
  loc_ADEB06: LateMemCall
  loc_ADEB0C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_ADEB11: PopAdLdVar
  loc_ADEB12: FLdPr Me
  loc_ADEB15: MemLdRfVar from_stack_1.global_60
  loc_ADEB18: LdPrVar
  loc_ADEB1A: LateMemCall
  loc_ADEB20: LitVarStr var_94, "  <tr>"
  loc_ADEB25: PopAdLdVar
  loc_ADEB26: FLdPr Me
  loc_ADEB29: MemLdRfVar from_stack_1.global_60
  loc_ADEB2C: LdPrVar
  loc_ADEB2E: LateMemCall
  loc_ADEB34: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_ADEB39: PopAdLdVar
  loc_ADEB3A: FLdPr Me
  loc_ADEB3D: MemLdRfVar from_stack_1.global_60
  loc_ADEB40: LdPrVar
  loc_ADEB42: LateMemCall
  loc_ADEB48: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_ADEB4D: PopAdLdVar
  loc_ADEB4E: FLdPr Me
  loc_ADEB51: MemLdRfVar from_stack_1.global_60
  loc_ADEB54: LdPrVar
  loc_ADEB56: LateMemCall
  loc_ADEB5C: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_ADEB61: PopAdLdVar
  loc_ADEB62: FLdPr Me
  loc_ADEB65: MemLdRfVar from_stack_1.global_60
  loc_ADEB68: LdPrVar
  loc_ADEB6A: LateMemCall
  loc_ADEB70: LitVarStr var_94, "          <map name=""Map"">"
  loc_ADEB75: PopAdLdVar
  loc_ADEB76: FLdPr Me
  loc_ADEB79: MemLdRfVar from_stack_1.global_60
  loc_ADEB7C: LdPrVar
  loc_ADEB7E: LateMemCall
  loc_ADEB84: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_ADEB89: PopAdLdVar
  loc_ADEB8A: FLdPr Me
  loc_ADEB8D: MemLdRfVar from_stack_1.global_60
  loc_ADEB90: LdPrVar
  loc_ADEB92: LateMemCall
  loc_ADEB98: LitVarStr var_94, "          </map>"
  loc_ADEB9D: PopAdLdVar
  loc_ADEB9E: FLdPr Me
  loc_ADEBA1: MemLdRfVar from_stack_1.global_60
  loc_ADEBA4: LdPrVar
  loc_ADEBA6: LateMemCall
  loc_ADEBAC: LitVarStr var_94, "    </div></th>"
  loc_ADEBB1: PopAdLdVar
  loc_ADEBB2: FLdPr Me
  loc_ADEBB5: MemLdRfVar from_stack_1.global_60
  loc_ADEBB8: LdPrVar
  loc_ADEBBA: LateMemCall
  loc_ADEBC0: LitVarStr var_94, "  </tr>"
  loc_ADEBC5: PopAdLdVar
  loc_ADEBC6: FLdPr Me
  loc_ADEBC9: MemLdRfVar from_stack_1.global_60
  loc_ADEBCC: LdPrVar
  loc_ADEBCE: LateMemCall
  loc_ADEBD4: LitVarStr var_94, "  <tr>"
  loc_ADEBD9: PopAdLdVar
  loc_ADEBDA: FLdPr Me
  loc_ADEBDD: MemLdRfVar from_stack_1.global_60
  loc_ADEBE0: LdPrVar
  loc_ADEBE2: LateMemCall
  loc_ADEBE8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_ADEBED: PopAdLdVar
  loc_ADEBEE: FLdPr Me
  loc_ADEBF1: MemLdRfVar from_stack_1.global_60
  loc_ADEBF4: LdPrVar
  loc_ADEBF6: LateMemCall
  loc_ADEBFC: LitVarStr var_94, "  </tr>"
  loc_ADEC01: PopAdLdVar
  loc_ADEC02: FLdPr Me
  loc_ADEC05: MemLdRfVar from_stack_1.global_60
  loc_ADEC08: LdPrVar
  loc_ADEC0A: LateMemCall
  loc_ADEC10: LitVarStr var_94, "</table>"
  loc_ADEC15: PopAdLdVar
  loc_ADEC16: FLdPr Me
  loc_ADEC19: MemLdRfVar from_stack_1.global_60
  loc_ADEC1C: LdPrVar
  loc_ADEC1E: LateMemCall
  loc_ADEC24: LitVarStr var_94, "</body>"
  loc_ADEC29: PopAdLdVar
  loc_ADEC2A: FLdPr Me
  loc_ADEC2D: MemLdRfVar from_stack_1.global_60
  loc_ADEC30: LdPrVar
  loc_ADEC32: LateMemCall
  loc_ADEC38: LitVarStr var_94, "</html>"
  loc_ADEC3D: PopAdLdVar
  loc_ADEC3E: FLdPr Me
  loc_ADEC41: MemLdRfVar from_stack_1.global_60
  loc_ADEC44: LdPrVar
  loc_ADEC46: LateMemCall
  loc_ADEC4C: ExitProcHresult
  loc_ADEC4D: ILdI4 Me02
End Function
