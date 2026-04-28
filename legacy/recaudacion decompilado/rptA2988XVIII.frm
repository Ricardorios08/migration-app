VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988XVIII
  Caption = "Acuerdo 2988 Anexo XVIII"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988XVIII.frx":0000
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
    OleObjectBlob = "rptA2988XVIII.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11055
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA2988XVIII.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA2988XVIII.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988XVIII.frx":0C04
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
      OleObjectBlob = "rptA2988XVIII.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptA2988XVIII.frx":0D18
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
    OleObjectBlob = "rptA2988XVIII.frx":0DC8
  End
End

Attribute VB_Name = "rptA2988XVIII"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00560C4C
  bStruc(32) As Byte ' String fields: 6
End Type


Private Sub cmdSalir_Click() 'A05380
  'Data Table: 4A6C60
  loc_A05350: LitVarStr var_94, "Cerrando..."
  loc_A05355: PopAdLdVar
  loc_A05356: FLdPr Me
  loc_A05359: VCallAd Control_ID_statusBar
  loc_A0535C: FStAdFunc var_A8
  loc_A0535F: FLdPr var_A8
  loc_A05362: LateIdSt
  loc_A05367: FFree1Ad var_A8
  loc_A0536A: ILdRf Me
  loc_A0536D: FStAdNoPop
  loc_A05371: ImpAdLdRf MemVar_D9C5D8
  loc_A05374: NewIfNullPr Global
  loc_A05377: Global.Unload from_stack_1
  loc_A0537C: FFree1Ad var_A8
  loc_A0537F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CC43C
  'Data Table: 4A6C60
  loc_9CC424: LitI2_Byte 0
  loc_9CC426: ILdRf Me
  loc_9CC429: CastAd
  loc_9CC42C: FStAdFunc var_88
  loc_9CC42F: FLdRfVar var_88
  loc_9CC432: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CC437: FFree1Ad var_88
  loc_9CC43A: ExitProcHresult
End Sub

Private Sub cmdXLS_Click(arg_10) '9E285C
  'Data Table: 4A6C60
  loc_9E2840: LitI2_Byte 0
  loc_9E2842: LitI2_Byte 0
  loc_9E2844: ILdRf Me
  loc_9E2847: CastAd
  loc_9E284A: FStAdFunc var_88
  loc_9E284D: FLdRfVar var_88
  loc_9E2850: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2855: FFree1Ad var_88
  loc_9E2858: ExitProcHresult
  loc_9E2859: FLdRfVar arg_102
End Sub

Private Sub cmdPdf_Click() '9E28FC
  'Data Table: 4A6C60
  loc_9E28E0: LitI2_Byte 0
  loc_9E28E2: PopTmpLdAd2 var_8A
  loc_9E28E5: ILdRf Me
  loc_9E28E8: CastAd
  loc_9E28EB: FStAdFunc var_88
  loc_9E28EE: FLdRfVar var_88
  loc_9E28F1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E28F6: FFree1Ad var_88
  loc_9E28F9: ExitProcHresult
  loc_9E28FA: CBoolR4
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BEBC8
  'Data Table: 4A6C60
  loc_9BEBB4: FLdPr Me
  loc_9BEBB7: VCallAd Control_ID_DesdeMsk
  loc_9BEBBA: CVarAd
  loc_9BEBBE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEBC3: FFree1Var var_94 = ""
  loc_9BEBC6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A63FC0
  'Data Table: 4A6C60
  loc_A63F64: FLdPr Me
  loc_A63F67: VCallAd Control_ID_DesdeMsk
  loc_A63F6A: FStAdFunc var_88
  loc_A63F6D: FLdPr var_88
  loc_A63F70: LateIdLdVar var_98 DispID_15 0
  loc_A63F77: CStrVarTmp
  loc_A63F78: FStStrNoPop var_9C
  loc_A63F7B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63F80: FStStrNoPop var_A0
  loc_A63F83: FLdPr Me
  loc_A63F86: MemStStrCopy
  loc_A63F8A: FFreeStr var_9C = ""
  loc_A63F91: FFree1Ad var_88
  loc_A63F94: FFree1Var var_98 = ""
  loc_A63F97: FLdPr Me
  loc_A63F9A: VCallAd Control_ID_DesdeMsk
  loc_A63F9D: FStAdFuncNoPop
  loc_A63FA0: CastAd
  loc_A63FA3: FStAdFunc var_A4
  loc_A63FA6: FLdRfVar var_A4
  loc_A63FA9: FLdPr Me
  loc_A63FAC: MemLdStr global_116
  loc_A63FAF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63FB4: IStI2 arg_C
  loc_A63FB7: FFreeAd var_88 = ""
  loc_A63FBE: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A21BD4
  'Data Table: 4A6C60
  loc_A21B8C: ILdI2 KeyAscii
  loc_A21B8F: CI4UI1
  loc_A21B90: LitI4 &H20
  loc_A21B95: EqI4
  loc_A21B96: BranchF loc_A21BD3
  loc_A21B99: LitVar_Missing var_A4
  loc_A21B9C: PopAdLdVar
  loc_A21B9D: LitVarI4
  loc_A21BA5: PopAdLdVar
  loc_A21BA6: ImpAdLdRf MemVar_D930A4
  loc_A21BA9: NewIfNullPr frmCalendario
  loc_A21BAC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21BB1: ImpAdLdRf MemVar_D93028
  loc_A21BB4: CDargRef
  loc_A21BB8: FLdPr Me
  loc_A21BBB: VCallAd Control_ID_DesdeMsk
  loc_A21BBE: FStAdFunc var_A8
  loc_A21BC1: FLdPr var_A8
  loc_A21BC4: LateIdSt
  loc_A21BC9: FFree1Ad var_A8
  loc_A21BCC: LitStr vbNullString
  loc_A21BCF: ImpAdStStrCopy MemVar_D93028
  loc_A21BD3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A39C
  'Data Table: 4A6C60
  loc_A0A364: LitI2_Byte 0
  loc_A0A366: FLdPr Me
  loc_A0A369: MemStI2 bGenerado
  loc_A0A36C: LitI2_Byte 0
  loc_A0A36E: ILdRf Me
  loc_A0A371: CastAd
  loc_A0A374: FStAdFunc var_88
  loc_A0A377: FLdRfVar var_88
  loc_A0A37A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A0A37F: FFree1Ad var_88
  loc_A0A382: Call HabilitarCriterio()
  loc_A0A387: ILdRf Me
  loc_A0A38A: CastAd
  loc_A0A38D: FStAdFunc var_88
  loc_A0A390: FLdRfVar var_88
  loc_A0A393: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A398: FFree1Ad var_88
  loc_A0A39B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A132D0
  'Data Table: 4A6C60
  loc_A13298: FLdPr Me
  loc_A1329B: VCallAd Control_ID_statusBar
  loc_A1329E: FStAdFunc var_88
  loc_A132A1: FLdPr var_88
  loc_A132A4: LateIdLdVar var_98 DispID_1 0
  loc_A132AB: CStrVarTmp
  loc_A132AC: CVarStr var_A8
  loc_A132AF: PopAdLdVar
  loc_A132B0: FLdPr Me
  loc_A132B3: VCallAd Control_ID_statusBar
  loc_A132B6: FStAdFunc var_BC
  loc_A132B9: FLdPr var_BC
  loc_A132BC: LateIdSt
  loc_A132C1: FFreeAd var_88 = ""
  loc_A132C8: FFreeVar var_98 = ""
  loc_A132CF: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CC3A4
  'Data Table: 4A6C60
  loc_9CC38C: LitI2_Byte 0
  loc_9CC38E: ILdRf Me
  loc_9CC391: CastAd
  loc_9CC394: FStAdFunc var_88
  loc_9CC397: FLdRfVar var_88
  loc_9CC39A: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CC39F: FFree1Ad var_88
  loc_9CC3A2: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BEB80
  'Data Table: 4A6C60
  loc_9BEB6C: FLdPr Me
  loc_9BEB6F: VCallAd Control_ID_HastaMsk
  loc_9BEB72: CVarAd
  loc_9BEB76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEB7B: FFree1Var var_94 = ""
  loc_9BEB7E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA64E0
  'Data Table: 4A6C60
  loc_AA6430: FLdPr Me
  loc_AA6433: VCallAd Control_ID_HastaMsk
  loc_AA6436: FStAdFunc var_88
  loc_AA6439: FLdPr var_88
  loc_AA643C: LateIdLdVar var_98 DispID_15 0
  loc_AA6443: CStrVarTmp
  loc_AA6444: CVarStr var_A8
  loc_AA6447: ImpAdCallI2 IsDate()
  loc_AA644C: FFree1Ad var_88
  loc_AA644F: FFreeVar var_98 = ""
  loc_AA6456: BranchF loc_AA64DC
  loc_AA6459: FLdPr Me
  loc_AA645C: VCallAd Control_ID_HastaMsk
  loc_AA645F: FStAdFunc var_88
  loc_AA6462: FLdPr var_88
  loc_AA6465: LateIdLdVar var_98 DispID_15 0
  loc_AA646C: CStrVarTmp
  loc_AA646D: CVarStr var_A8
  loc_AA6470: FLdRfVar var_B8
  loc_AA6473: ImpAdCallFPR4  = Year()
  loc_AA6478: FLdRfVar var_B8
  loc_AA647B: FLdPr Me
  loc_AA647E: VCallAd Control_ID_DesdeMsk
  loc_AA6481: FStAdFunc var_BC
  loc_AA6484: FLdPr var_BC
  loc_AA6487: LateIdLdVar var_CC DispID_15 0
  loc_AA648E: CStrVarTmp
  loc_AA648F: CVarStr var_DC
  loc_AA6492: FLdRfVar var_EC
  loc_AA6495: ImpAdCallFPR4  = Year()
  loc_AA649A: FLdRfVar var_EC
  loc_AA649D: NeVarBool
  loc_AA649F: FFreeAd var_88 = ""
  loc_AA64A6: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA64B5: BranchF loc_AA64DC
  loc_AA64B8: FLdPr Me
  loc_AA64BB: VCallAd Control_ID_HastaMsk
  loc_AA64BE: FStAdFuncNoPop
  loc_AA64C1: CastAd
  loc_AA64C4: FStAdFunc var_BC
  loc_AA64C7: FLdRfVar var_BC
  loc_AA64CA: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA64CD: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA64D2: IStI2 arg_C
  loc_AA64D5: FFreeAd var_88 = ""
  loc_AA64DC: ExitProcHresult
  loc_AA64DD: NeR4
  loc_AA64DF: LtI2
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A21604
  'Data Table: 4A6C60
  loc_A215BC: ILdI2 KeyAscii
  loc_A215BF: CI4UI1
  loc_A215C0: LitI4 &H20
  loc_A215C5: EqI4
  loc_A215C6: BranchF loc_A21603
  loc_A215C9: LitVar_Missing var_A4
  loc_A215CC: PopAdLdVar
  loc_A215CD: LitVarI4
  loc_A215D5: PopAdLdVar
  loc_A215D6: ImpAdLdRf MemVar_D930A4
  loc_A215D9: NewIfNullPr frmCalendario
  loc_A215DC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A215E1: ImpAdLdRf MemVar_D93028
  loc_A215E4: CDargRef
  loc_A215E8: FLdPr Me
  loc_A215EB: VCallAd Control_ID_HastaMsk
  loc_A215EE: FStAdFunc var_A8
  loc_A215F1: FLdPr var_A8
  loc_A215F4: LateIdSt
  loc_A215F9: FFree1Ad var_A8
  loc_A215FC: LitStr vbNullString
  loc_A215FF: ImpAdStStrCopy MemVar_D93028
  loc_A21603: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CC56C
  'Data Table: 4A6C60
  loc_9CC554: ILdRf Me
  loc_9CC557: CastAd
  loc_9CC55A: FStAdFunc var_88
  loc_9CC55D: FLdRfVar var_88
  loc_9CC560: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC565: FFree1Ad var_88
  loc_9CC568: ExitProcHresult
  loc_9CC569: FLdRfVar var_3B0
End Sub

Private Sub Form_Load() 'AE0AAC
  'Data Table: 4A6C60
  loc_AE0978: ILdRf Me
  loc_AE097B: CastAd
  loc_AE097E: FStAdFunc var_88
  loc_AE0981: FLdRfVar var_88
  loc_AE0984: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AE0989: FFree1Ad var_88
  loc_AE098C: LitVarStr var_98, "Acuerdo 2988 Anexo XVIII"
  loc_AE0991: CStrVarVal var_9C
  loc_AE0995: FLdPr Me
  loc_AE0998: Me.Caption = from_stack_1
  loc_AE099D: FFree1Str var_9C
  loc_AE09A0: Call cmdNueva_Click()
  loc_AE09A5: LitI2_Byte 0
  loc_AE09A7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE09AC: CVarDate var_AC
  loc_AE09B0: FLdRfVar var_BC
  loc_AE09B3: ImpAdCallFPR4  = Year()
  loc_AE09B8: LitI2_Byte 0
  loc_AE09BA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE09BF: CVarDate var_DC
  loc_AE09C3: FLdRfVar var_EC
  loc_AE09C6: ImpAdCallFPR4  = Month()
  loc_AE09CB: LitI2_Byte 1
  loc_AE09CD: FLdRfVar var_EC
  loc_AE09D0: LitVarI2 var_FC, 1
  loc_AE09D5: SubVar var_10C
  loc_AE09D9: CI2Var
  loc_AE09DA: FLdRfVar var_BC
  loc_AE09DD: CI2Var
  loc_AE09DE: FLdRfVar var_11C
  loc_AE09E1: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE09E6: FLdRfVar var_11C
  loc_AE09E9: CStrVarTmp
  loc_AE09EA: CVarStr var_12C
  loc_AE09ED: PopAdLdVar
  loc_AE09EE: FLdPr Me
  loc_AE09F1: VCallAd Control_ID_DesdeMsk
  loc_AE09F4: FStAdFunc var_88
  loc_AE09F7: FLdPr var_88
  loc_AE09FA: LateIdSt
  loc_AE09FF: FFree1Ad var_88
  loc_AE0A02: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_AE0A11: FLdPr Me
  loc_AE0A14: VCallAd Control_ID_DesdeMsk
  loc_AE0A17: FStAdFunc var_88
  loc_AE0A1A: FLdPr var_88
  loc_AE0A1D: LateIdLdVar var_AC DispID_15 0
  loc_AE0A24: CStrVarTmp
  loc_AE0A25: CVarStr var_BC
  loc_AE0A28: FLdRfVar var_DC
  loc_AE0A2B: ImpAdCallFPR4  = Year()
  loc_AE0A30: FLdPr Me
  loc_AE0A33: VCallAd Control_ID_DesdeMsk
  loc_AE0A36: FStAdFunc var_140
  loc_AE0A39: FLdPr var_140
  loc_AE0A3C: LateIdLdVar var_EC DispID_15 0
  loc_AE0A43: CStrVarTmp
  loc_AE0A44: CVarStr var_10C
  loc_AE0A47: FLdRfVar var_11C
  loc_AE0A4A: ImpAdCallFPR4  = Month()
  loc_AE0A4F: LitI2_Byte 1
  loc_AE0A51: FLdRfVar var_11C
  loc_AE0A54: LitVarI2 var_98, 1
  loc_AE0A59: AddVar var_12C
  loc_AE0A5D: CI2Var
  loc_AE0A5E: FLdRfVar var_DC
  loc_AE0A61: CI2Var
  loc_AE0A62: FLdRfVar var_150
  loc_AE0A65: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE0A6A: FLdRfVar var_150
  loc_AE0A6D: LitVarI2 var_CC, 1
  loc_AE0A72: SubVar var_160
  loc_AE0A76: CStrVarTmp
  loc_AE0A77: CVarStr var_170
  loc_AE0A7A: PopAdLdVar
  loc_AE0A7B: FLdPr Me
  loc_AE0A7E: VCallAd Control_ID_HastaMsk
  loc_AE0A81: FStAdFunc var_174
  loc_AE0A84: FLdPr var_174
  loc_AE0A87: LateIdSt
  loc_AE0A8C: FFreeAd var_88 = "": var_140 = ""
  loc_AE0A95: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AE0AAA: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC0AC
  'Data Table: 4A6C60
  loc_9CC094: FLdPr Me
  loc_9CC097: VCallAd Control_ID_wbbReporte
  loc_9CC09A: FStAdFunc var_88
  loc_9CC09D: FLdRfVar var_88
  loc_9CC0A0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC0A5: FFree1Ad var_88
  loc_9CC0A8: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4A7C64
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A7C73
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A42A28
  'Data Table: 4A6C60
  loc_A429E4: LitI4 0
  loc_A429E9: LitI4 1
  loc_A429EE: FLdRfVar var_88
  loc_A429F1: Redim
  loc_A429FB: FLdPr Me
  loc_A429FE: VCallAd Control_ID_DesdeMsk
  loc_A42A01: CVarAd
  loc_A42A05: ParmAry1St
  loc_A42A0B: FLdPr Me
  loc_A42A0E: VCallAd Control_ID_HastaMsk
  loc_A42A11: CVarAd
  loc_A42A15: ParmAry1St
  loc_A42A1B: FLdRfVar var_88
  loc_A42A1E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A42A23: FLdRfVar var_88
  loc_A42A26: Erase
  loc_A42A27: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CFBDD4
  'Data Table: 4A6C60
  loc_CF8CA8: FLdPr Me
  loc_CF8CAB: MemLdI2 bGenerado
  loc_CF8CAE: BranchF loc_CF8CB2
  loc_CF8CB1: ExitProcHresult
  loc_CF8CB2: LitVarStr var_EC, "Generando reporte..."
  loc_CF8CB7: PopAdLdVar
  loc_CF8CB8: FLdPr Me
  loc_CF8CBB: VCallAd Control_ID_statusBar
  loc_CF8CBE: FStAdFunc var_100
  loc_CF8CC1: FLdPr var_100
  loc_CF8CC4: LateIdSt
  loc_CF8CC9: FFree1Ad var_100
  loc_CF8CCC: LitI4 &HB
  loc_CF8CD1: CI2I4
  loc_CF8CD2: FLdPr Me
  loc_CF8CD5: Me.MousePointer = from_stack_1
  loc_CF8CDA: LitI2_Byte 0
  loc_CF8CDC: PopTmpLdAd2 var_102
  loc_CF8CDF: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_CF8CE4: FLdPr Me
  loc_CF8CE7: MemLdStr global_116
  loc_CF8CEA: LitStr vbNullString
  loc_CF8CED: NeStr
  loc_CF8CEF: BranchF loc_CF8CF5
  loc_CF8CF2: Branch loc_CFBDAA
  loc_CF8CF5: LitI2_Byte 0
  loc_CF8CF7: PopTmpLdAd2 var_102
  loc_CF8CFA: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_CF8CFF: FLdPr Me
  loc_CF8D02: MemLdStr global_116
  loc_CF8D05: LitStr vbNullString
  loc_CF8D08: NeStr
  loc_CF8D0A: BranchF loc_CF8D10
  loc_CF8D0D: Branch loc_CFBDAA
  loc_CF8D10: FLdPr Me
  loc_CF8D13: VCallAd Control_ID_DesdeMsk
  loc_CF8D16: FStAdFunc var_100
  loc_CF8D19: FLdPr var_100
  loc_CF8D1C: LateIdLdVar var_114 DispID_15 0
  loc_CF8D23: PopAd
  loc_CF8D25: LitI4 1
  loc_CF8D2A: LitI4 1
  loc_CF8D2F: LitVarStr var_EC, "yyyy-mm-dd"
  loc_CF8D34: FStVarCopyObj var_134
  loc_CF8D37: FLdRfVar var_134
  loc_CF8D3A: FLdRfVar var_114
  loc_CF8D3D: CStrVarTmp
  loc_CF8D3E: CVarStr var_124
  loc_CF8D41: ImpAdCallI2 Format$(, )
  loc_CF8D46: FStStr var_88
  loc_CF8D49: FFree1Ad var_100
  loc_CF8D4C: FFreeVar var_114 = "": var_124 = ""
  loc_CF8D55: FLdPr Me
  loc_CF8D58: VCallAd Control_ID_HastaMsk
  loc_CF8D5B: FStAdFunc var_100
  loc_CF8D5E: FLdPr var_100
  loc_CF8D61: LateIdLdVar var_114 DispID_15 0
  loc_CF8D68: PopAd
  loc_CF8D6A: LitI4 1
  loc_CF8D6F: LitI4 1
  loc_CF8D74: LitVarStr var_EC, "yyyy-mm-dd"
  loc_CF8D79: FStVarCopyObj var_134
  loc_CF8D7C: FLdRfVar var_134
  loc_CF8D7F: FLdRfVar var_114
  loc_CF8D82: CStrVarTmp
  loc_CF8D83: CVarStr var_124
  loc_CF8D86: ImpAdCallI2 Format$(, )
  loc_CF8D8B: FStStr var_8C
  loc_CF8D8E: FFree1Ad var_100
  loc_CF8D91: FFreeVar var_114 = "": var_124 = ""
  loc_CF8D9A: FLdPr Me
  loc_CF8D9D: MemLdRfVar from_stack_1.global_92
  loc_CF8DA0: NewIfNullAd
  loc_CF8DA3: FStAd var_138 
  loc_CF8DA7: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_tribu;"
  loc_CF8DAA: LitStr " CREATE TEMPORARY TABLE tmp_tribu ("
  loc_CF8DAD: ConcatStr
  loc_CF8DAE: FStStrNoPop var_13C
  loc_CF8DB1: LitStr " odiEnre` smallint(3) unsigned NOT NULL default '0',"
  loc_CF8DB4: ConcatStr
  loc_CF8DB5: FStStrNoPop var_140
  loc_CF8DB8: LitStr " rden` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0', "
  loc_CF8DBB: ConcatStr
  loc_CF8DBC: FStStrNoPop var_144
  loc_CF8DBF: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_CF8DC2: ConcatStr
  loc_CF8DC3: FStStrNoPop var_148
  loc_CF8DC6: LitStr " otaCtct` decimal(14,2) NOT NULL default '0.00',"
  loc_CF8DC9: ConcatStr
  loc_CF8DCA: FStStrNoPop var_14C
  loc_CF8DCD: LitStr " omiCtct` decimal(14,2) NOT NULL default '0.00',"
  loc_CF8DD0: ConcatStr
  loc_CF8DD1: FStStrNoPop var_150
  loc_CF8DD4: LitStr " KEY mpidx` (`CodiEnre`,`CodiConc`)"
  loc_CF8DD7: ConcatStr
  loc_CF8DD8: FStStrNoPop var_154
  loc_CF8DDB: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_CF8DDE: ConcatStr
  loc_CF8DDF: FStStrNoPop var_158
  loc_CF8DE2: FLdPr var_138
  loc_CF8DE5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CF8DEA: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_CF8DFD: LitStr " INSERT INTO tmp_tribu "
  loc_CF8E00: LitStr " SELECT acrepago.CodiEnre, 1, detapago.CodiConc, "
  loc_CF8E03: ConcatStr
  loc_CF8E04: FStStrNoPop var_13C
  loc_CF8E07: LitStr " Sum(CapiDepa) - Sum(DecaDepa) - Sum(ExenDepa) - Sum(CrafDepa) as Tota, 0 as ComiCtct "
  loc_CF8E0A: ConcatStr
  loc_CF8E0B: FStStrNoPop var_140
  loc_CF8E0E: LitStr " From detapago"
  loc_CF8E11: ConcatStr
  loc_CF8E12: FStStrNoPop var_144
  loc_CF8E15: LitStr " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CF8E18: ConcatStr
  loc_CF8E19: FStStrNoPop var_148
  loc_CF8E1C: LitStr " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CF8E1F: ConcatStr
  loc_CF8E20: FStStrNoPop var_14C
  loc_CF8E23: ILdRf var_88
  loc_CF8E26: ConcatStr
  loc_CF8E27: FStStrNoPop var_150
  loc_CF8E2A: LitStr "' AND '"
  loc_CF8E2D: ConcatStr
  loc_CF8E2E: FStStrNoPop var_154
  loc_CF8E31: ILdRf var_8C
  loc_CF8E34: ConcatStr
  loc_CF8E35: FStStrNoPop var_158
  loc_CF8E38: LitStr "'"
  loc_CF8E3B: ConcatStr
  loc_CF8E3C: FStStrNoPop var_15C
  loc_CF8E3F: LitStr " GROUP BY acrepago.CodiEnre, detapago.CodiConc"
  loc_CF8E42: ConcatStr
  loc_CF8E43: FStStrNoPop var_160
  loc_CF8E46: FLdPr var_138
  loc_CF8E49: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CF8E4E: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_CF8E65: LitStr "Municipalidad de Guaymallén"
  loc_CF8E68: LitStr "Municipalidad de Rivadavia"
  loc_CF8E6B: EqStr
  loc_CF8E6D: LitStr "Municipalidad de Guaymallén"
  loc_CF8E70: LitStr "Municipalidad de Tunuyán"
  loc_CF8E73: EqStr
  loc_CF8E75: OrI4
  loc_CF8E76: BranchF loc_CF93B1
  loc_CF8E79: FLdPr Me
  loc_CF8E7C: VCallAd Control_ID_DesdeMsk
  loc_CF8E7F: FStAdFunc var_1A4
  loc_CF8E82: FLdPr var_1A4
  loc_CF8E85: LateIdLdVar var_1B4 DispID_15 0
  loc_CF8E8C: PopAd
  loc_CF8E8E: FLdPr Me
  loc_CF8E91: VCallAd Control_ID_HastaMsk
  loc_CF8E94: FStAdFunc var_228
  loc_CF8E97: FLdPr var_228
  loc_CF8E9A: LateIdLdVar var_238 DispID_15 0
  loc_CF8EA1: PopAd
  loc_CF8EA3: FLdPr Me
  loc_CF8EA6: VCallAd Control_ID_DesdeMsk
  loc_CF8EA9: FStAdFunc var_390
  loc_CF8EAC: FLdPr var_390
  loc_CF8EAF: LateIdLdVar var_3A0 DispID_15 0
  loc_CF8EB6: PopAd
  loc_CF8EB8: FLdPr Me
  loc_CF8EBB: VCallAd Control_ID_HastaMsk
  loc_CF8EBE: FStAdFunc var_414
  loc_CF8EC1: FLdPr var_414
  loc_CF8EC4: LateIdLdVar var_424 DispID_15 0
  loc_CF8ECB: PopAd
  loc_CF8ECD: FLdPr Me
  loc_CF8ED0: VCallAd Control_ID_DesdeMsk
  loc_CF8ED3: FStAdFunc var_55C
  loc_CF8ED6: FLdPr var_55C
  loc_CF8ED9: LateIdLdVar var_56C DispID_15 0
  loc_CF8EE0: PopAd
  loc_CF8EE2: FLdPr Me
  loc_CF8EE5: VCallAd Control_ID_HastaMsk
  loc_CF8EE8: FStAdFunc var_5E0
  loc_CF8EEB: FLdPr var_5E0
  loc_CF8EEE: LateIdLdVar var_5F0 DispID_15 0
  loc_CF8EF5: PopAd
  loc_CF8EF7: FLdPr Me
  loc_CF8EFA: VCallAd Control_ID_DesdeMsk
  loc_CF8EFD: FStAdFunc var_728
  loc_CF8F00: FLdPr var_728
  loc_CF8F03: LateIdLdVar var_738 DispID_15 0
  loc_CF8F0A: PopAd
  loc_CF8F0C: FLdPr Me
  loc_CF8F0F: VCallAd Control_ID_HastaMsk
  loc_CF8F12: FStAdFunc var_7AC
  loc_CF8F15: FLdPr var_7AC
  loc_CF8F18: LateIdLdVar var_7BC DispID_15 0
  loc_CF8F1F: PopAd
  loc_CF8F21: FLdPr Me
  loc_CF8F24: VCallAd Control_ID_DesdeMsk
  loc_CF8F27: FStAdFunc var_8F4
  loc_CF8F2A: FLdPr var_8F4
  loc_CF8F2D: LateIdLdVar var_904 DispID_15 0
  loc_CF8F34: PopAd
  loc_CF8F36: FLdPr Me
  loc_CF8F39: VCallAd Control_ID_HastaMsk
  loc_CF8F3C: FStAdFunc var_978
  loc_CF8F3F: FLdPr var_978
  loc_CF8F42: LateIdLdVar var_988 DispID_15 0
  loc_CF8F49: PopAd
  loc_CF8F4B: LitStr " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CorePare as CodiConc,"
  loc_CF8F4E: LitStr " sum(RecaDepa-DereDepa) as TotaDepa, 0 as ComiCtct"
  loc_CF8F51: ConcatStr
  loc_CF8F52: FStStrNoPop var_13C
  loc_CF8F55: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF8F58: ConcatStr
  loc_CF8F59: CVarStr var_170
  loc_CF8F5C: FLdPr Me
  loc_CF8F5F: VCallAd Control_ID_DesdeMsk
  loc_CF8F62: FStAdFunc var_100
  loc_CF8F65: FLdPr var_100
  loc_CF8F68: LateIdLdVar var_114 DispID_15 0
  loc_CF8F6F: CStrVarTmp
  loc_CF8F70: CVarStr var_124
  loc_CF8F73: FLdRfVar var_134
  loc_CF8F76: ImpAdCallFPR4  = Year()
  loc_CF8F7B: FLdRfVar var_134
  loc_CF8F7E: ConcatVar var_180
  loc_CF8F82: LitVarStr var_EC, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF8F87: ConcatVar var_190
  loc_CF8F8B: LitVarStr var_FC, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF8F90: ConcatVar var_1A0
  loc_CF8F94: LitI4 1
  loc_CF8F99: LitI4 1
  loc_CF8F9E: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_CF8FA3: FStVarCopyObj var_1E4
  loc_CF8FA6: FLdRfVar var_1E4
  loc_CF8FA9: FLdRfVar var_1B4
  loc_CF8FAC: CStrVarTmp
  loc_CF8FAD: CVarStr var_1C4
  loc_CF8FB0: ImpAdCallI2 Format$(, )
  loc_CF8FB5: CVarStr var_1F4
  loc_CF8FB8: ConcatVar var_204
  loc_CF8FBC: LitVarStr var_214, " AND "
  loc_CF8FC1: ConcatVar var_224
  loc_CF8FC5: LitI4 1
  loc_CF8FCA: LitI4 1
  loc_CF8FCF: LitVarStr var_258, "'yyyy-mm-dd'"
  loc_CF8FD4: FStVarCopyObj var_268
  loc_CF8FD7: FLdRfVar var_268
  loc_CF8FDA: FLdRfVar var_238
  loc_CF8FDD: CStrVarTmp
  loc_CF8FDE: CVarStr var_248
  loc_CF8FE1: ImpAdCallI2 Format$(, )
  loc_CF8FE6: CVarStr var_278
  loc_CF8FE9: ConcatVar var_288
  loc_CF8FED: LitVarStr var_298, " GROUP BY acrepago.CodiEnre;"
  loc_CF8FF2: ConcatVar var_2A8
  loc_CF8FF6: LitVarStr var_2B8, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoadPare as CodiConc,"
  loc_CF8FFB: ConcatVar var_2C8
  loc_CF8FFF: LitVarStr var_2D8, " sum(CoadBoap) as TotaDepa, 0 as ComiCtct"
  loc_CF9004: ConcatVar var_2E8
  loc_CF9008: LitVarStr var_2F8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF900D: ConcatVar var_308
  loc_CF9011: FLdPr Me
  loc_CF9014: VCallAd Control_ID_DesdeMsk
  loc_CF9017: FStAdFunc var_30C
  loc_CF901A: FLdPr var_30C
  loc_CF901D: LateIdLdVar var_31C DispID_15 0
  loc_CF9024: CStrVarTmp
  loc_CF9025: CVarStr var_32C
  loc_CF9028: FLdRfVar var_33C
  loc_CF902B: ImpAdCallFPR4  = Year()
  loc_CF9030: FLdRfVar var_33C
  loc_CF9033: ConcatVar var_34C
  loc_CF9037: LitVarStr var_35C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF903C: ConcatVar var_36C
  loc_CF9040: LitVarStr var_37C, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF9045: ConcatVar var_38C
  loc_CF9049: LitI4 1
  loc_CF904E: LitI4 1
  loc_CF9053: LitVarStr var_3C0, "'yyyy-mm-dd'"
  loc_CF9058: FStVarCopyObj var_3D0
  loc_CF905B: FLdRfVar var_3D0
  loc_CF905E: FLdRfVar var_3A0
  loc_CF9061: CStrVarTmp
  loc_CF9062: CVarStr var_3B0
  loc_CF9065: ImpAdCallI2 Format$(, )
  loc_CF906A: CVarStr var_3E0
  loc_CF906D: ConcatVar var_3F0
  loc_CF9071: LitVarStr var_400, " AND "
  loc_CF9076: ConcatVar var_410
  loc_CF907A: LitI4 1
  loc_CF907F: LitI4 1
  loc_CF9084: LitVarStr var_444, "'yyyy-mm-dd'"
  loc_CF9089: FStVarCopyObj var_454
  loc_CF908C: FLdRfVar var_454
  loc_CF908F: FLdRfVar var_424
  loc_CF9092: CStrVarTmp
  loc_CF9093: CVarStr var_434
  loc_CF9096: ImpAdCallI2 Format$(, )
  loc_CF909B: CVarStr var_464
  loc_CF909E: ConcatVar var_474
  loc_CF90A2: LitVarStr var_484, " GROUP BY acrepago.CodiEnre; "
  loc_CF90A7: ConcatVar var_494
  loc_CF90AB: LitVarStr var_4A4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoapPare as CodiConc, sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, 0 as  ComiCtct"
  loc_CF90B0: ConcatVar var_4B4
  loc_CF90B4: LitVarStr var_4C4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF90B9: ConcatVar var_4D4
  loc_CF90BD: FLdPr Me
  loc_CF90C0: VCallAd Control_ID_DesdeMsk
  loc_CF90C3: FStAdFunc var_4D8
  loc_CF90C6: FLdPr var_4D8
  loc_CF90C9: LateIdLdVar var_4E8 DispID_15 0
  loc_CF90D0: CStrVarTmp
  loc_CF90D1: CVarStr var_4F8
  loc_CF90D4: FLdRfVar var_508
  loc_CF90D7: ImpAdCallFPR4  = Year()
  loc_CF90DC: FLdRfVar var_508
  loc_CF90DF: ConcatVar var_518
  loc_CF90E3: LitVarStr var_528, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF90E8: ConcatVar var_538
  loc_CF90EC: LitVarStr var_548, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF90F1: ConcatVar var_558
  loc_CF90F5: LitI4 1
  loc_CF90FA: LitI4 1
  loc_CF90FF: LitVarStr var_58C, "'yyyy-mm-dd'"
  loc_CF9104: FStVarCopyObj var_59C
  loc_CF9107: FLdRfVar var_59C
  loc_CF910A: FLdRfVar var_56C
  loc_CF910D: CStrVarTmp
  loc_CF910E: CVarStr var_57C
  loc_CF9111: ImpAdCallI2 Format$(, )
  loc_CF9116: CVarStr var_5AC
  loc_CF9119: ConcatVar var_5BC
  loc_CF911D: LitVarStr var_5CC, " AND "
  loc_CF9122: ConcatVar var_5DC
  loc_CF9126: LitI4 1
  loc_CF912B: LitI4 1
  loc_CF9130: LitVarStr var_610, "'yyyy-mm-dd'"
  loc_CF9135: FStVarCopyObj var_620
  loc_CF9138: FLdRfVar var_620
  loc_CF913B: FLdRfVar var_5F0
  loc_CF913E: CStrVarTmp
  loc_CF913F: CVarStr var_600
  loc_CF9142: ImpAdCallI2 Format$(, )
  loc_CF9147: CVarStr var_630
  loc_CF914A: ConcatVar var_640
  loc_CF914E: LitVarStr var_650, " GROUP BY acrepago.CodiEnre; "
  loc_CF9153: ConcatVar var_660
  loc_CF9157: LitVarStr var_670, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, 0 as ComiCtct "
  loc_CF915C: ConcatVar var_680
  loc_CF9160: LitVarStr var_690, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9165: ConcatVar var_6A0
  loc_CF9169: FLdPr Me
  loc_CF916C: VCallAd Control_ID_DesdeMsk
  loc_CF916F: FStAdFunc var_6A4
  loc_CF9172: FLdPr var_6A4
  loc_CF9175: LateIdLdVar var_6B4 DispID_15 0
  loc_CF917C: CStrVarTmp
  loc_CF917D: CVarStr var_6C4
  loc_CF9180: FLdRfVar var_6D4
  loc_CF9183: ImpAdCallFPR4  = Year()
  loc_CF9188: FLdRfVar var_6D4
  loc_CF918B: ConcatVar var_6E4
  loc_CF918F: LitVarStr var_6F4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF9194: ConcatVar var_704
  loc_CF9198: LitVarStr var_714, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF919D: ConcatVar var_724
  loc_CF91A1: LitI4 1
  loc_CF91A6: LitI4 1
  loc_CF91AB: LitVarStr var_758, "'yyyy-mm-dd'"
  loc_CF91B0: FStVarCopyObj var_768
  loc_CF91B3: FLdRfVar var_768
  loc_CF91B6: FLdRfVar var_738
  loc_CF91B9: CStrVarTmp
  loc_CF91BA: CVarStr var_748
  loc_CF91BD: ImpAdCallI2 Format$(, )
  loc_CF91C2: CVarStr var_778
  loc_CF91C5: ConcatVar var_788
  loc_CF91C9: LitVarStr var_798, " AND "
  loc_CF91CE: ConcatVar var_7A8
  loc_CF91D2: LitI4 1
  loc_CF91D7: LitI4 1
  loc_CF91DC: LitVarStr var_7DC, "'yyyy-mm-dd'"
  loc_CF91E1: FStVarCopyObj var_7EC
  loc_CF91E4: FLdRfVar var_7EC
  loc_CF91E7: FLdRfVar var_7BC
  loc_CF91EA: CStrVarTmp
  loc_CF91EB: CVarStr var_7CC
  loc_CF91EE: ImpAdCallI2 Format$(, )
  loc_CF91F3: CVarStr var_7FC
  loc_CF91F6: ConcatVar var_80C
  loc_CF91FA: LitVarStr var_81C, " GROUP BY acrepago.CodiEnre; "
  loc_CF91FF: ConcatVar var_82C
  loc_CF9203: LitVarStr var_83C, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, 0 as ComiCtct "
  loc_CF9208: ConcatVar var_84C
  loc_CF920C: LitVarStr var_85C, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9211: ConcatVar var_86C
  loc_CF9215: FLdPr Me
  loc_CF9218: VCallAd Control_ID_DesdeMsk
  loc_CF921B: FStAdFunc var_870
  loc_CF921E: FLdPr var_870
  loc_CF9221: LateIdLdVar var_880 DispID_15 0
  loc_CF9228: CStrVarTmp
  loc_CF9229: CVarStr var_890
  loc_CF922C: FLdRfVar var_8A0
  loc_CF922F: ImpAdCallFPR4  = Year()
  loc_CF9234: FLdRfVar var_8A0
  loc_CF9237: ConcatVar var_8B0
  loc_CF923B: LitVarStr var_8C0, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa =detapago.NumeAcpa "
  loc_CF9240: ConcatVar var_8D0
  loc_CF9244: LitVarStr var_8E0, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF9249: ConcatVar var_8F0
  loc_CF924D: LitI4 1
  loc_CF9252: LitI4 1
  loc_CF9257: LitVarStr var_924, "'yyyy-mm-dd'"
  loc_CF925C: FStVarCopyObj var_934
  loc_CF925F: FLdRfVar var_934
  loc_CF9262: FLdRfVar var_904
  loc_CF9265: CStrVarTmp
  loc_CF9266: CVarStr var_914
  loc_CF9269: ImpAdCallI2 Format$(, )
  loc_CF926E: CVarStr var_944
  loc_CF9271: ConcatVar var_954
  loc_CF9275: LitVarStr var_964, " AND "
  loc_CF927A: ConcatVar var_974
  loc_CF927E: LitI4 1
  loc_CF9283: LitI4 1
  loc_CF9288: LitVarStr var_9A8, "'yyyy-mm-dd'"
  loc_CF928D: FStVarCopyObj var_9B8
  loc_CF9290: FLdRfVar var_9B8
  loc_CF9293: FLdRfVar var_988
  loc_CF9296: CStrVarTmp
  loc_CF9297: CVarStr var_998
  loc_CF929A: ImpAdCallI2 Format$(, )
  loc_CF929F: CVarStr var_9C8
  loc_CF92A2: ConcatVar var_9D8
  loc_CF92A6: LitVarStr var_9E8, " GROUP BY acrepago.CodiEnre"
  loc_CF92AB: ConcatVar var_9F8
  loc_CF92AF: CStrVarVal var_140
  loc_CF92B3: FLdPr var_138
  loc_CF92B6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CF92BB: FFreeStr var_13C = ""
  loc_CF92C2: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = "": var_5E0 = "": var_6A4 = "": var_728 = "": var_7AC = "": var_870 = "": var_8F4 = ""
  loc_CF92E3: FFreeVar var_8F0 = "": var_944 = "": var_954 = "": var_988 = "": var_998 = "": var_9B8 = "": var_974 = "": var_9C8 = "": var_9D8 = "": var_9F8 = "": var_680 = "": var_6B4 = "": var_6C4 = "": var_6A0 = "": var_6D4 = "": var_6E4 = "": var_704 = "": var_738 = "": var_748 = "": var_768 = "": var_724 = "": var_778 = "": var_788 = "": var_7BC = "": var_7CC = "": var_7EC = "": var_7A8 = "": var_7FC = "": var_80C = "": var_82C = "": var_84C = "": var_880 = "": var_890 = "": var_86C = "": var_8A0 = "": var_8B0 = "": var_8D0 = "": var_904 = "": var_914 = "": var_934 = "": var_38C = "": var_3E0 = "": var_3F0 = "": var_424 = "": var_434 = "": var_454 = "": var_410 = "": var_464 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4E8 = "": var_4F8 = "": var_4D4 = "": var_508 = "": var_518 = "": var_538 = "": var_56C = "": var_57C = "": var_59C = "": var_558 = "": var_5AC = "": var_5BC = "": var_5F0 = "": var_600 = "": var_620 = "": var_5DC = "": var_630 = "": var_640 = "": var_660 = "": var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1A0 = "": var_1F4 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_224 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_308 = "": var_33C = "": var_34C = "": var_36C = "": var_3A0 = "": var_3B0 = ""
  loc_CF93AE: Branch loc_CFA6F4
  loc_CF93B1: LitStr "Municipalidad de Guaymallén"
  loc_CF93B4: LitStr "Municipalidad de General Alvear"
  loc_CF93B7: EqStr
  loc_CF93B9: BranchF loc_CF990A
  loc_CF93BC: FLdPr Me
  loc_CF93BF: VCallAd Control_ID_DesdeMsk
  loc_CF93C2: FStAdFunc var_1A4
  loc_CF93C5: FLdPr var_1A4
  loc_CF93C8: LateIdLdVar var_1B4 DispID_15 0
  loc_CF93CF: PopAd
  loc_CF93D1: FLdPr Me
  loc_CF93D4: VCallAd Control_ID_HastaMsk
  loc_CF93D7: FStAdFunc var_228
  loc_CF93DA: FLdPr var_228
  loc_CF93DD: LateIdLdVar var_238 DispID_15 0
  loc_CF93E4: PopAd
  loc_CF93E6: FLdPr Me
  loc_CF93E9: VCallAd Control_ID_DesdeMsk
  loc_CF93EC: FStAdFunc var_390
  loc_CF93EF: FLdPr var_390
  loc_CF93F2: LateIdLdVar var_3A0 DispID_15 0
  loc_CF93F9: PopAd
  loc_CF93FB: FLdPr Me
  loc_CF93FE: VCallAd Control_ID_HastaMsk
  loc_CF9401: FStAdFunc var_414
  loc_CF9404: FLdPr var_414
  loc_CF9407: LateIdLdVar var_424 DispID_15 0
  loc_CF940E: PopAd
  loc_CF9410: FLdPr Me
  loc_CF9413: VCallAd Control_ID_DesdeMsk
  loc_CF9416: FStAdFunc var_55C
  loc_CF9419: FLdPr var_55C
  loc_CF941C: LateIdLdVar var_57C DispID_15 0
  loc_CF9423: PopAd
  loc_CF9425: FLdPr Me
  loc_CF9428: VCallAd Control_ID_HastaMsk
  loc_CF942B: FStAdFunc var_5E0
  loc_CF942E: FLdPr var_5E0
  loc_CF9431: LateIdLdVar var_600 DispID_15 0
  loc_CF9438: PopAd
  loc_CF943A: FLdPr Me
  loc_CF943D: VCallAd Control_ID_DesdeMsk
  loc_CF9440: FStAdFunc var_728
  loc_CF9443: FLdPr var_728
  loc_CF9446: LateIdLdVar var_768 DispID_15 0
  loc_CF944D: PopAd
  loc_CF944F: FLdPr Me
  loc_CF9452: VCallAd Control_ID_HastaMsk
  loc_CF9455: FStAdFunc var_7AC
  loc_CF9458: FLdPr var_7AC
  loc_CF945B: LateIdLdVar var_7EC DispID_15 0
  loc_CF9462: PopAd
  loc_CF9464: FLdPr Me
  loc_CF9467: VCallAd Control_ID_DesdeMsk
  loc_CF946A: FStAdFunc var_8F4
  loc_CF946D: FLdPr var_8F4
  loc_CF9470: LateIdLdVar var_934 DispID_15 0
  loc_CF9477: PopAd
  loc_CF9479: FLdPr Me
  loc_CF947C: VCallAd Control_ID_HastaMsk
  loc_CF947F: FStAdFunc var_978
  loc_CF9482: FLdPr var_978
  loc_CF9485: LateIdLdVar var_9B8 DispID_15 0
  loc_CF948C: PopAd
  loc_CF948E: LitStr " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CorePare as CodiConc,"
  loc_CF9491: LitStr " sum(RecaDepa-DereDepa) as TotaDepa, 0 ComiCtct"
  loc_CF9494: ConcatStr
  loc_CF9495: FStStrNoPop var_13C
  loc_CF9498: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF949B: ConcatStr
  loc_CF949C: CVarStr var_170
  loc_CF949F: FLdPr Me
  loc_CF94A2: VCallAd Control_ID_DesdeMsk
  loc_CF94A5: FStAdFunc var_100
  loc_CF94A8: FLdPr var_100
  loc_CF94AB: LateIdLdVar var_114 DispID_15 0
  loc_CF94B2: CStrVarTmp
  loc_CF94B3: CVarStr var_124
  loc_CF94B6: FLdRfVar var_134
  loc_CF94B9: ImpAdCallFPR4  = Year()
  loc_CF94BE: FLdRfVar var_134
  loc_CF94C1: ConcatVar var_180
  loc_CF94C5: LitVarStr var_EC, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF94CA: ConcatVar var_190
  loc_CF94CE: LitVarStr var_FC, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF94D3: ConcatVar var_1A0
  loc_CF94D7: LitI4 1
  loc_CF94DC: LitI4 1
  loc_CF94E1: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_CF94E6: FStVarCopyObj var_1E4
  loc_CF94E9: FLdRfVar var_1E4
  loc_CF94EC: FLdRfVar var_1B4
  loc_CF94EF: CStrVarTmp
  loc_CF94F0: CVarStr var_1C4
  loc_CF94F3: ImpAdCallI2 Format$(, )
  loc_CF94F8: CVarStr var_1F4
  loc_CF94FB: ConcatVar var_204
  loc_CF94FF: LitVarStr var_214, " AND "
  loc_CF9504: ConcatVar var_224
  loc_CF9508: LitI4 1
  loc_CF950D: LitI4 1
  loc_CF9512: LitVarStr var_258, "'yyyy-mm-dd'"
  loc_CF9517: FStVarCopyObj var_268
  loc_CF951A: FLdRfVar var_268
  loc_CF951D: FLdRfVar var_238
  loc_CF9520: CStrVarTmp
  loc_CF9521: CVarStr var_248
  loc_CF9524: ImpAdCallI2 Format$(, )
  loc_CF9529: CVarStr var_278
  loc_CF952C: ConcatVar var_288
  loc_CF9530: LitVarStr var_298, " GROUP BY acrepago.CodiEnre;"
  loc_CF9535: ConcatVar var_2A8
  loc_CF9539: LitVarStr var_2B8, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoadPare as CodiConc,"
  loc_CF953E: ConcatVar var_2C8
  loc_CF9542: LitVarStr var_2D8, " SUM(CoadBoap+HoreBoap+HoofBoap) as TotaDepa, 0 as ComiCtct"
  loc_CF9547: ConcatVar var_2E8
  loc_CF954B: LitVarStr var_2F8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9550: ConcatVar var_308
  loc_CF9554: FLdPr Me
  loc_CF9557: VCallAd Control_ID_DesdeMsk
  loc_CF955A: FStAdFunc var_30C
  loc_CF955D: FLdPr var_30C
  loc_CF9560: LateIdLdVar var_31C DispID_15 0
  loc_CF9567: CStrVarTmp
  loc_CF9568: CVarStr var_32C
  loc_CF956B: FLdRfVar var_33C
  loc_CF956E: ImpAdCallFPR4  = Year()
  loc_CF9573: FLdRfVar var_33C
  loc_CF9576: ConcatVar var_34C
  loc_CF957A: LitVarStr var_35C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF957F: ConcatVar var_36C
  loc_CF9583: LitVarStr var_37C, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF9588: ConcatVar var_38C
  loc_CF958C: LitI4 1
  loc_CF9591: LitI4 1
  loc_CF9596: LitVarStr var_3C0, "'yyyy-mm-dd'"
  loc_CF959B: FStVarCopyObj var_3D0
  loc_CF959E: FLdRfVar var_3D0
  loc_CF95A1: FLdRfVar var_3A0
  loc_CF95A4: CStrVarTmp
  loc_CF95A5: CVarStr var_3B0
  loc_CF95A8: ImpAdCallI2 Format$(, )
  loc_CF95AD: CVarStr var_3E0
  loc_CF95B0: ConcatVar var_3F0
  loc_CF95B4: LitVarStr var_400, " AND "
  loc_CF95B9: ConcatVar var_410
  loc_CF95BD: LitI4 1
  loc_CF95C2: LitI4 1
  loc_CF95C7: LitVarStr var_444, "'yyyy-mm-dd'"
  loc_CF95CC: FStVarCopyObj var_454
  loc_CF95CF: FLdRfVar var_454
  loc_CF95D2: FLdRfVar var_424
  loc_CF95D5: CStrVarTmp
  loc_CF95D6: CVarStr var_434
  loc_CF95D9: ImpAdCallI2 Format$(, )
  loc_CF95DE: CVarStr var_464
  loc_CF95E1: ConcatVar var_474
  loc_CF95E5: LitVarStr var_484, " GROUP BY acrepago.CodiEnre; "
  loc_CF95EA: ConcatVar var_494
  loc_CF95EE: LitVarStr var_4A4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoapPare as CodiConc,"
  loc_CF95F3: ConcatVar var_4B4
  loc_CF95F7: LitVarStr var_4C4, " SUM(MoreBoap+MoofBoap) as TotaDepa, 0 as ComiCtct"
  loc_CF95FC: ConcatVar var_4D4
  loc_CF9600: LitVarStr var_528, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9605: ConcatVar var_4E8
  loc_CF9609: FLdPr Me
  loc_CF960C: VCallAd Control_ID_DesdeMsk
  loc_CF960F: FStAdFunc var_4D8
  loc_CF9612: FLdPr var_4D8
  loc_CF9615: LateIdLdVar var_4F8 DispID_15 0
  loc_CF961C: CStrVarTmp
  loc_CF961D: CVarStr var_508
  loc_CF9620: FLdRfVar var_518
  loc_CF9623: ImpAdCallFPR4  = Year()
  loc_CF9628: FLdRfVar var_518
  loc_CF962B: ConcatVar var_538
  loc_CF962F: LitVarStr var_548, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF9634: ConcatVar var_558
  loc_CF9638: LitVarStr var_58C, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF963D: ConcatVar var_56C
  loc_CF9641: LitI4 1
  loc_CF9646: LitI4 1
  loc_CF964B: LitVarStr var_5CC, "'yyyy-mm-dd'"
  loc_CF9650: FStVarCopyObj var_5AC
  loc_CF9653: FLdRfVar var_5AC
  loc_CF9656: FLdRfVar var_57C
  loc_CF9659: CStrVarTmp
  loc_CF965A: CVarStr var_59C
  loc_CF965D: ImpAdCallI2 Format$(, )
  loc_CF9662: CVarStr var_5BC
  loc_CF9665: ConcatVar var_5DC
  loc_CF9669: LitVarStr var_610, " AND "
  loc_CF966E: ConcatVar var_5F0
  loc_CF9672: LitI4 1
  loc_CF9677: LitI4 1
  loc_CF967C: LitVarStr var_650, "'yyyy-mm-dd'"
  loc_CF9681: FStVarCopyObj var_630
  loc_CF9684: FLdRfVar var_630
  loc_CF9687: FLdRfVar var_600
  loc_CF968A: CStrVarTmp
  loc_CF968B: CVarStr var_620
  loc_CF968E: ImpAdCallI2 Format$(, )
  loc_CF9693: CVarStr var_640
  loc_CF9696: ConcatVar var_660
  loc_CF969A: LitVarStr var_670, " GROUP BY acrepago.CodiEnre; "
  loc_CF969F: ConcatVar var_680
  loc_CF96A3: LitVarStr var_690, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoimPare as CodiConc, "
  loc_CF96A8: ConcatVar var_6A0
  loc_CF96AC: LitVarStr var_6F4, " SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, 0 as ComiCtct "
  loc_CF96B1: ConcatVar var_6B4
  loc_CF96B5: LitVarStr var_714, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF96BA: ConcatVar var_6C4
  loc_CF96BE: FLdPr Me
  loc_CF96C1: VCallAd Control_ID_DesdeMsk
  loc_CF96C4: FStAdFunc var_6A4
  loc_CF96C7: FLdPr var_6A4
  loc_CF96CA: LateIdLdVar var_6D4 DispID_15 0
  loc_CF96D1: CStrVarTmp
  loc_CF96D2: CVarStr var_6E4
  loc_CF96D5: FLdRfVar var_704
  loc_CF96D8: ImpAdCallFPR4  = Year()
  loc_CF96DD: FLdRfVar var_704
  loc_CF96E0: ConcatVar var_724
  loc_CF96E4: LitVarStr var_758, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF96E9: ConcatVar var_738
  loc_CF96ED: LitVarStr var_798, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF96F2: ConcatVar var_748
  loc_CF96F6: LitI4 1
  loc_CF96FB: LitI4 1
  loc_CF9700: LitVarStr var_7DC, "'yyyy-mm-dd'"
  loc_CF9705: FStVarCopyObj var_788
  loc_CF9708: FLdRfVar var_788
  loc_CF970B: FLdRfVar var_768
  loc_CF970E: CStrVarTmp
  loc_CF970F: CVarStr var_778
  loc_CF9712: ImpAdCallI2 Format$(, )
  loc_CF9717: CVarStr var_7A8
  loc_CF971A: ConcatVar var_7BC
  loc_CF971E: LitVarStr var_81C, " AND "
  loc_CF9723: ConcatVar var_7CC
  loc_CF9727: LitI4 1
  loc_CF972C: LitI4 1
  loc_CF9731: LitVarStr var_83C, "'yyyy-mm-dd'"
  loc_CF9736: FStVarCopyObj var_80C
  loc_CF9739: FLdRfVar var_80C
  loc_CF973C: FLdRfVar var_7EC
  loc_CF973F: CStrVarTmp
  loc_CF9740: CVarStr var_7FC
  loc_CF9743: ImpAdCallI2 Format$(, )
  loc_CF9748: CVarStr var_82C
  loc_CF974B: ConcatVar var_84C
  loc_CF974F: LitVarStr var_85C, " GROUP BY acrepago.CodiEnre; "
  loc_CF9754: ConcatVar var_86C
  loc_CF9758: LitVarStr var_8C0, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoinPare as CodiConc, "
  loc_CF975D: ConcatVar var_880
  loc_CF9761: LitVarStr var_8E0, " sum(InteDepa) as TotaDepa, 0 ComiCtct FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9766: ConcatVar var_890
  loc_CF976A: FLdPr Me
  loc_CF976D: VCallAd Control_ID_DesdeMsk
  loc_CF9770: FStAdFunc var_870
  loc_CF9773: FLdPr var_870
  loc_CF9776: LateIdLdVar var_8A0 DispID_15 0
  loc_CF977D: CStrVarTmp
  loc_CF977E: CVarStr var_8B0
  loc_CF9781: FLdRfVar var_8D0
  loc_CF9784: ImpAdCallFPR4  = Year()
  loc_CF9789: FLdRfVar var_8D0
  loc_CF978C: ConcatVar var_8F0
  loc_CF9790: LitVarStr var_924, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF9795: ConcatVar var_904
  loc_CF9799: LitVarStr var_964, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF979E: ConcatVar var_914
  loc_CF97A2: LitI4 1
  loc_CF97A7: LitI4 1
  loc_CF97AC: LitVarStr var_9A8, "'yyyy-mm-dd'"
  loc_CF97B1: FStVarCopyObj var_954
  loc_CF97B4: FLdRfVar var_954
  loc_CF97B7: FLdRfVar var_934
  loc_CF97BA: CStrVarTmp
  loc_CF97BB: CVarStr var_944
  loc_CF97BE: ImpAdCallI2 Format$(, )
  loc_CF97C3: CVarStr var_974
  loc_CF97C6: ConcatVar var_988
  loc_CF97CA: LitVarStr var_9E8, " AND "
  loc_CF97CF: ConcatVar var_998
  loc_CF97D3: LitI4 1
  loc_CF97D8: LitI4 1
  loc_CF97DD: LitVarStr var_A08, "'yyyy-mm-dd'"
  loc_CF97E2: FStVarCopyObj var_9D8
  loc_CF97E5: FLdRfVar var_9D8
  loc_CF97E8: FLdRfVar var_9B8
  loc_CF97EB: CStrVarTmp
  loc_CF97EC: CVarStr var_9C8
  loc_CF97EF: ImpAdCallI2 Format$(, )
  loc_CF97F4: CVarStr var_9F8
  loc_CF97F7: ConcatVar var_A18
  loc_CF97FB: LitVarStr var_A28, " GROUP BY acrepago.CodiEnre;"
  loc_CF9800: ConcatVar var_A38
  loc_CF9804: CStrVarVal var_140
  loc_CF9808: FLdPr var_138
  loc_CF980B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CF9810: FFreeStr var_13C = ""
  loc_CF9817: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = "": var_5E0 = "": var_6A4 = "": var_728 = "": var_7AC = "": var_870 = "": var_8F4 = ""
  loc_CF9838: FFreeVar var_944 = "": var_954 = "": var_914 = "": var_974 = "": var_988 = "": var_9B8 = "": var_9C8 = "": var_9D8 = "": var_998 = "": var_9F8 = "": var_A18 = "": var_A38 = "": var_680 = "": var_6A0 = "": var_6B4 = "": var_6D4 = "": var_6E4 = "": var_6C4 = "": var_704 = "": var_724 = "": var_738 = "": var_768 = "": var_778 = "": var_788 = "": var_748 = "": var_7A8 = "": var_7BC = "": var_7EC = "": var_7FC = "": var_80C = "": var_7CC = "": var_82C = "": var_84C = "": var_86C = "": var_880 = "": var_8A0 = "": var_8B0 = "": var_890 = "": var_8D0 = "": var_8F0 = "": var_904 = "": var_934 = "": var_38C = "": var_3E0 = "": var_3F0 = "": var_424 = "": var_434 = "": var_454 = "": var_410 = "": var_464 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4D4 = "": var_4F8 = "": var_508 = "": var_4E8 = "": var_518 = "": var_538 = "": var_558 = "": var_57C = "": var_59C = "": var_5AC = "": var_56C = "": var_5BC = "": var_5DC = "": var_600 = "": var_620 = "": var_630 = "": var_5F0 = "": var_640 = "": var_660 = "": var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1A0 = "": var_1F4 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_224 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_308 = "": var_33C = "": var_34C = "": var_36C = "": var_3A0 = "": var_3B0 = ""
  loc_CF9907: Branch loc_CFA6F4
  loc_CF990A: LitStr "Municipalidad de Guaymallén"
  loc_CF990D: LitStr "Municipalidad de Guaymallén"
  loc_CF9910: EqStr
  loc_CF9912: BranchF loc_CF9E4D
  loc_CF9915: FLdPr Me
  loc_CF9918: VCallAd Control_ID_DesdeMsk
  loc_CF991B: FStAdFunc var_1A4
  loc_CF991E: FLdPr var_1A4
  loc_CF9921: LateIdLdVar var_1B4 DispID_15 0
  loc_CF9928: PopAd
  loc_CF992A: FLdPr Me
  loc_CF992D: VCallAd Control_ID_HastaMsk
  loc_CF9930: FStAdFunc var_228
  loc_CF9933: FLdPr var_228
  loc_CF9936: LateIdLdVar var_238 DispID_15 0
  loc_CF993D: PopAd
  loc_CF993F: FLdPr Me
  loc_CF9942: VCallAd Control_ID_DesdeMsk
  loc_CF9945: FStAdFunc var_390
  loc_CF9948: FLdPr var_390
  loc_CF994B: LateIdLdVar var_3A0 DispID_15 0
  loc_CF9952: PopAd
  loc_CF9954: FLdPr Me
  loc_CF9957: VCallAd Control_ID_HastaMsk
  loc_CF995A: FStAdFunc var_414
  loc_CF995D: FLdPr var_414
  loc_CF9960: LateIdLdVar var_424 DispID_15 0
  loc_CF9967: PopAd
  loc_CF9969: FLdPr Me
  loc_CF996C: VCallAd Control_ID_DesdeMsk
  loc_CF996F: FStAdFunc var_55C
  loc_CF9972: FLdPr var_55C
  loc_CF9975: LateIdLdVar var_56C DispID_15 0
  loc_CF997C: PopAd
  loc_CF997E: FLdPr Me
  loc_CF9981: VCallAd Control_ID_HastaMsk
  loc_CF9984: FStAdFunc var_5E0
  loc_CF9987: FLdPr var_5E0
  loc_CF998A: LateIdLdVar var_5F0 DispID_15 0
  loc_CF9991: PopAd
  loc_CF9993: FLdPr Me
  loc_CF9996: VCallAd Control_ID_DesdeMsk
  loc_CF9999: FStAdFunc var_728
  loc_CF999C: FLdPr var_728
  loc_CF999F: LateIdLdVar var_738 DispID_15 0
  loc_CF99A6: PopAd
  loc_CF99A8: FLdPr Me
  loc_CF99AB: VCallAd Control_ID_HastaMsk
  loc_CF99AE: FStAdFunc var_7AC
  loc_CF99B1: FLdPr var_7AC
  loc_CF99B4: LateIdLdVar var_7BC DispID_15 0
  loc_CF99BB: PopAd
  loc_CF99BD: FLdPr Me
  loc_CF99C0: VCallAd Control_ID_DesdeMsk
  loc_CF99C3: FStAdFunc var_8F4
  loc_CF99C6: FLdPr var_8F4
  loc_CF99C9: LateIdLdVar var_904 DispID_15 0
  loc_CF99D0: PopAd
  loc_CF99D2: FLdPr Me
  loc_CF99D5: VCallAd Control_ID_HastaMsk
  loc_CF99D8: FStAdFunc var_978
  loc_CF99DB: FLdPr var_978
  loc_CF99DE: LateIdLdVar var_988 DispID_15 0
  loc_CF99E5: PopAd
  loc_CF99E7: LitStr " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CorePare as CodiConc,"
  loc_CF99EA: LitStr " sum(RecaDepa-DereDepa) as TotaDepa, 0 ComiCtct"
  loc_CF99ED: ConcatStr
  loc_CF99EE: FStStrNoPop var_13C
  loc_CF99F1: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF99F4: ConcatStr
  loc_CF99F5: CVarStr var_170
  loc_CF99F8: FLdPr Me
  loc_CF99FB: VCallAd Control_ID_DesdeMsk
  loc_CF99FE: FStAdFunc var_100
  loc_CF9A01: FLdPr var_100
  loc_CF9A04: LateIdLdVar var_114 DispID_15 0
  loc_CF9A0B: CStrVarTmp
  loc_CF9A0C: CVarStr var_124
  loc_CF9A0F: FLdRfVar var_134
  loc_CF9A12: ImpAdCallFPR4  = Year()
  loc_CF9A17: FLdRfVar var_134
  loc_CF9A1A: ConcatVar var_180
  loc_CF9A1E: LitVarStr var_EC, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF9A23: ConcatVar var_190
  loc_CF9A27: LitVarStr var_FC, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF9A2C: ConcatVar var_1A0
  loc_CF9A30: LitI4 1
  loc_CF9A35: LitI4 1
  loc_CF9A3A: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_CF9A3F: FStVarCopyObj var_1E4
  loc_CF9A42: FLdRfVar var_1E4
  loc_CF9A45: FLdRfVar var_1B4
  loc_CF9A48: CStrVarTmp
  loc_CF9A49: CVarStr var_1C4
  loc_CF9A4C: ImpAdCallI2 Format$(, )
  loc_CF9A51: CVarStr var_1F4
  loc_CF9A54: ConcatVar var_204
  loc_CF9A58: LitVarStr var_214, " AND "
  loc_CF9A5D: ConcatVar var_224
  loc_CF9A61: LitI4 1
  loc_CF9A66: LitI4 1
  loc_CF9A6B: LitVarStr var_258, "'yyyy-mm-dd'"
  loc_CF9A70: FStVarCopyObj var_268
  loc_CF9A73: FLdRfVar var_268
  loc_CF9A76: FLdRfVar var_238
  loc_CF9A79: CStrVarTmp
  loc_CF9A7A: CVarStr var_248
  loc_CF9A7D: ImpAdCallI2 Format$(, )
  loc_CF9A82: CVarStr var_278
  loc_CF9A85: ConcatVar var_288
  loc_CF9A89: LitVarStr var_298, " GROUP BY acrepago.CodiEnre;"
  loc_CF9A8E: ConcatVar var_2A8
  loc_CF9A92: LitVarStr var_2B8, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoadPare as CodiConc,"
  loc_CF9A97: ConcatVar var_2C8
  loc_CF9A9B: LitVarStr var_2D8, " SUM(CoadBoap+IcomBoap) as TotaDepa, 0 as ComiCtct"
  loc_CF9AA0: ConcatVar var_2E8
  loc_CF9AA4: LitVarStr var_2F8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9AA9: ConcatVar var_308
  loc_CF9AAD: FLdPr Me
  loc_CF9AB0: VCallAd Control_ID_DesdeMsk
  loc_CF9AB3: FStAdFunc var_30C
  loc_CF9AB6: FLdPr var_30C
  loc_CF9AB9: LateIdLdVar var_31C DispID_15 0
  loc_CF9AC0: CStrVarTmp
  loc_CF9AC1: CVarStr var_32C
  loc_CF9AC4: FLdRfVar var_33C
  loc_CF9AC7: ImpAdCallFPR4  = Year()
  loc_CF9ACC: FLdRfVar var_33C
  loc_CF9ACF: ConcatVar var_34C
  loc_CF9AD3: LitVarStr var_35C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole  INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF9AD8: ConcatVar var_36C
  loc_CF9ADC: LitVarStr var_37C, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF9AE1: ConcatVar var_38C
  loc_CF9AE5: LitI4 1
  loc_CF9AEA: LitI4 1
  loc_CF9AEF: LitVarStr var_3C0, "'yyyy-mm-dd'"
  loc_CF9AF4: FStVarCopyObj var_3D0
  loc_CF9AF7: FLdRfVar var_3D0
  loc_CF9AFA: FLdRfVar var_3A0
  loc_CF9AFD: CStrVarTmp
  loc_CF9AFE: CVarStr var_3B0
  loc_CF9B01: ImpAdCallI2 Format$(, )
  loc_CF9B06: CVarStr var_3E0
  loc_CF9B09: ConcatVar var_3F0
  loc_CF9B0D: LitVarStr var_400, " AND "
  loc_CF9B12: ConcatVar var_410
  loc_CF9B16: LitI4 1
  loc_CF9B1B: LitI4 1
  loc_CF9B20: LitVarStr var_444, "'yyyy-mm-dd'"
  loc_CF9B25: FStVarCopyObj var_454
  loc_CF9B28: FLdRfVar var_454
  loc_CF9B2B: FLdRfVar var_424
  loc_CF9B2E: CStrVarTmp
  loc_CF9B2F: CVarStr var_434
  loc_CF9B32: ImpAdCallI2 Format$(, )
  loc_CF9B37: CVarStr var_464
  loc_CF9B3A: ConcatVar var_474
  loc_CF9B3E: LitVarStr var_484, " GROUP BY acrepago.CodiEnre; "
  loc_CF9B43: ConcatVar var_494
  loc_CF9B47: LitVarStr var_4A4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, 0 ComiCtct"
  loc_CF9B4C: ConcatVar var_4B4
  loc_CF9B50: LitVarStr var_4C4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9B55: ConcatVar var_4D4
  loc_CF9B59: FLdPr Me
  loc_CF9B5C: VCallAd Control_ID_DesdeMsk
  loc_CF9B5F: FStAdFunc var_4D8
  loc_CF9B62: FLdPr var_4D8
  loc_CF9B65: LateIdLdVar var_4E8 DispID_15 0
  loc_CF9B6C: CStrVarTmp
  loc_CF9B6D: CVarStr var_4F8
  loc_CF9B70: FLdRfVar var_508
  loc_CF9B73: ImpAdCallFPR4  = Year()
  loc_CF9B78: FLdRfVar var_508
  loc_CF9B7B: ConcatVar var_518
  loc_CF9B7F: LitVarStr var_528, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF9B84: ConcatVar var_538
  loc_CF9B88: LitVarStr var_548, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF9B8D: ConcatVar var_558
  loc_CF9B91: LitI4 1
  loc_CF9B96: LitI4 1
  loc_CF9B9B: LitVarStr var_58C, "'yyyy-mm-dd'"
  loc_CF9BA0: FStVarCopyObj var_59C
  loc_CF9BA3: FLdRfVar var_59C
  loc_CF9BA6: FLdRfVar var_56C
  loc_CF9BA9: CStrVarTmp
  loc_CF9BAA: CVarStr var_57C
  loc_CF9BAD: ImpAdCallI2 Format$(, )
  loc_CF9BB2: CVarStr var_5AC
  loc_CF9BB5: ConcatVar var_5BC
  loc_CF9BB9: LitVarStr var_5CC, " AND "
  loc_CF9BBE: ConcatVar var_5DC
  loc_CF9BC2: LitI4 1
  loc_CF9BC7: LitI4 1
  loc_CF9BCC: LitVarStr var_610, "'yyyy-mm-dd'"
  loc_CF9BD1: FStVarCopyObj var_620
  loc_CF9BD4: FLdRfVar var_620
  loc_CF9BD7: FLdRfVar var_5F0
  loc_CF9BDA: CStrVarTmp
  loc_CF9BDB: CVarStr var_600
  loc_CF9BDE: ImpAdCallI2 Format$(, )
  loc_CF9BE3: CVarStr var_630
  loc_CF9BE6: ConcatVar var_640
  loc_CF9BEA: LitVarStr var_650, " GROUP BY acrepago.CodiEnre; "
  loc_CF9BEF: ConcatVar var_660
  loc_CF9BF3: LitVarStr var_670, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, 0 as ComiCtct "
  loc_CF9BF8: ConcatVar var_680
  loc_CF9BFC: LitVarStr var_690, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9C01: ConcatVar var_6A0
  loc_CF9C05: FLdPr Me
  loc_CF9C08: VCallAd Control_ID_DesdeMsk
  loc_CF9C0B: FStAdFunc var_6A4
  loc_CF9C0E: FLdPr var_6A4
  loc_CF9C11: LateIdLdVar var_6B4 DispID_15 0
  loc_CF9C18: CStrVarTmp
  loc_CF9C19: CVarStr var_6C4
  loc_CF9C1C: FLdRfVar var_6D4
  loc_CF9C1F: ImpAdCallFPR4  = Year()
  loc_CF9C24: FLdRfVar var_6D4
  loc_CF9C27: ConcatVar var_6E4
  loc_CF9C2B: LitVarStr var_6F4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CF9C30: ConcatVar var_704
  loc_CF9C34: LitVarStr var_714, " WHERE pago.FeenAcpa BETWEEN "
  loc_CF9C39: ConcatVar var_724
  loc_CF9C3D: LitI4 1
  loc_CF9C42: LitI4 1
  loc_CF9C47: LitVarStr var_758, "'yyyy-mm-dd'"
  loc_CF9C4C: FStVarCopyObj var_768
  loc_CF9C4F: FLdRfVar var_768
  loc_CF9C52: FLdRfVar var_738
  loc_CF9C55: CStrVarTmp
  loc_CF9C56: CVarStr var_748
  loc_CF9C59: ImpAdCallI2 Format$(, )
  loc_CF9C5E: CVarStr var_778
  loc_CF9C61: ConcatVar var_788
  loc_CF9C65: LitVarStr var_798, " AND "
  loc_CF9C6A: ConcatVar var_7A8
  loc_CF9C6E: LitI4 1
  loc_CF9C73: LitI4 1
  loc_CF9C78: LitVarStr var_7DC, "'yyyy-mm-dd'"
  loc_CF9C7D: FStVarCopyObj var_7EC
  loc_CF9C80: FLdRfVar var_7EC
  loc_CF9C83: FLdRfVar var_7BC
  loc_CF9C86: CStrVarTmp
  loc_CF9C87: CVarStr var_7CC
  loc_CF9C8A: ImpAdCallI2 Format$(, )
  loc_CF9C8F: CVarStr var_7FC
  loc_CF9C92: ConcatVar var_80C
  loc_CF9C96: LitVarStr var_81C, " GROUP BY acrepago.CodiEnre; "
  loc_CF9C9B: ConcatVar var_82C
  loc_CF9C9F: LitVarStr var_83C, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoinPare as CodiConc, "
  loc_CF9CA4: ConcatVar var_84C
  loc_CF9CA8: LitVarStr var_85C, " sum(InteDepa) as TotaDepa, 0 as ComiCtct FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9CAD: ConcatVar var_86C
  loc_CF9CB1: FLdPr Me
  loc_CF9CB4: VCallAd Control_ID_DesdeMsk
  loc_CF9CB7: FStAdFunc var_870
  loc_CF9CBA: FLdPr var_870
  loc_CF9CBD: LateIdLdVar var_880 DispID_15 0
  loc_CF9CC4: CStrVarTmp
  loc_CF9CC5: CVarStr var_890
  loc_CF9CC8: FLdRfVar var_8A0
  loc_CF9CCB: ImpAdCallFPR4  = Year()
  loc_CF9CD0: FLdRfVar var_8A0
  loc_CF9CD3: ConcatVar var_8B0
  loc_CF9CD7: LitVarStr var_8C0, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF9CDC: ConcatVar var_8D0
  loc_CF9CE0: LitVarStr var_8E0, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CF9CE5: ConcatVar var_8F0
  loc_CF9CE9: LitI4 1
  loc_CF9CEE: LitI4 1
  loc_CF9CF3: LitVarStr var_924, "'yyyy-mm-dd'"
  loc_CF9CF8: FStVarCopyObj var_934
  loc_CF9CFB: FLdRfVar var_934
  loc_CF9CFE: FLdRfVar var_904
  loc_CF9D01: CStrVarTmp
  loc_CF9D02: CVarStr var_914
  loc_CF9D05: ImpAdCallI2 Format$(, )
  loc_CF9D0A: CVarStr var_944
  loc_CF9D0D: ConcatVar var_954
  loc_CF9D11: LitVarStr var_964, " AND "
  loc_CF9D16: ConcatVar var_974
  loc_CF9D1A: LitI4 1
  loc_CF9D1F: LitI4 1
  loc_CF9D24: LitVarStr var_9A8, "'yyyy-mm-dd'"
  loc_CF9D29: FStVarCopyObj var_9B8
  loc_CF9D2C: FLdRfVar var_9B8
  loc_CF9D2F: FLdRfVar var_988
  loc_CF9D32: CStrVarTmp
  loc_CF9D33: CVarStr var_998
  loc_CF9D36: ImpAdCallI2 Format$(, )
  loc_CF9D3B: CVarStr var_9C8
  loc_CF9D3E: ConcatVar var_9D8
  loc_CF9D42: LitVarStr var_9E8, " GROUP BY acrepago.CodiEnre;"
  loc_CF9D47: ConcatVar var_9F8
  loc_CF9D4B: CStrVarVal var_140
  loc_CF9D4F: FLdPr var_138
  loc_CF9D52: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CF9D57: FFreeStr var_13C = ""
  loc_CF9D5E: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = "": var_5E0 = "": var_6A4 = "": var_728 = "": var_7AC = "": var_870 = "": var_8F4 = ""
  loc_CF9D7F: FFreeVar var_8F0 = "": var_944 = "": var_954 = "": var_988 = "": var_998 = "": var_9B8 = "": var_974 = "": var_9C8 = "": var_9D8 = "": var_9F8 = "": var_680 = "": var_6B4 = "": var_6C4 = "": var_6A0 = "": var_6D4 = "": var_6E4 = "": var_704 = "": var_738 = "": var_748 = "": var_768 = "": var_724 = "": var_778 = "": var_788 = "": var_7BC = "": var_7CC = "": var_7EC = "": var_7A8 = "": var_7FC = "": var_80C = "": var_82C = "": var_84C = "": var_880 = "": var_890 = "": var_86C = "": var_8A0 = "": var_8B0 = "": var_8D0 = "": var_904 = "": var_914 = "": var_934 = "": var_38C = "": var_3E0 = "": var_3F0 = "": var_424 = "": var_434 = "": var_454 = "": var_410 = "": var_464 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4E8 = "": var_4F8 = "": var_4D4 = "": var_508 = "": var_518 = "": var_538 = "": var_56C = "": var_57C = "": var_59C = "": var_558 = "": var_5AC = "": var_5BC = "": var_5F0 = "": var_600 = "": var_620 = "": var_5DC = "": var_630 = "": var_640 = "": var_660 = "": var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1A0 = "": var_1F4 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_224 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_308 = "": var_33C = "": var_34C = "": var_36C = "": var_3A0 = "": var_3B0 = ""
  loc_CF9E4A: Branch loc_CFA6F4
  loc_CF9E4D: LitStr "Municipalidad de Guaymallén"
  loc_CF9E50: LitStr "Municipalidad de San Martin"
  loc_CF9E53: EqStr
  loc_CF9E55: BranchF loc_CFA2AD
  loc_CF9E58: FLdPr Me
  loc_CF9E5B: VCallAd Control_ID_DesdeMsk
  loc_CF9E5E: FStAdFunc var_1A4
  loc_CF9E61: FLdPr var_1A4
  loc_CF9E64: LateIdLdVar var_1B4 DispID_15 0
  loc_CF9E6B: PopAd
  loc_CF9E6D: FLdPr Me
  loc_CF9E70: VCallAd Control_ID_HastaMsk
  loc_CF9E73: FStAdFunc var_228
  loc_CF9E76: FLdPr var_228
  loc_CF9E79: LateIdLdVar var_238 DispID_15 0
  loc_CF9E80: PopAd
  loc_CF9E82: FLdPr Me
  loc_CF9E85: VCallAd Control_ID_DesdeMsk
  loc_CF9E88: FStAdFunc var_390
  loc_CF9E8B: FLdPr var_390
  loc_CF9E8E: LateIdLdVar var_3B0 DispID_15 0
  loc_CF9E95: PopAd
  loc_CF9E97: FLdPr Me
  loc_CF9E9A: VCallAd Control_ID_HastaMsk
  loc_CF9E9D: FStAdFunc var_414
  loc_CF9EA0: FLdPr var_414
  loc_CF9EA3: LateIdLdVar var_434 DispID_15 0
  loc_CF9EAA: PopAd
  loc_CF9EAC: FLdPr Me
  loc_CF9EAF: VCallAd Control_ID_DesdeMsk
  loc_CF9EB2: FStAdFunc var_55C
  loc_CF9EB5: FLdPr var_55C
  loc_CF9EB8: LateIdLdVar var_5AC DispID_15 0
  loc_CF9EBF: PopAd
  loc_CF9EC1: FLdPr Me
  loc_CF9EC4: VCallAd Control_ID_HastaMsk
  loc_CF9EC7: FStAdFunc var_5E0
  loc_CF9ECA: FLdPr var_5E0
  loc_CF9ECD: LateIdLdVar var_630 DispID_15 0
  loc_CF9ED4: PopAd
  loc_CF9ED6: FLdPr Me
  loc_CF9ED9: VCallAd Control_ID_DesdeMsk
  loc_CF9EDC: FStAdFunc var_728
  loc_CF9EDF: FLdPr var_728
  loc_CF9EE2: LateIdLdVar var_778 DispID_15 0
  loc_CF9EE9: PopAd
  loc_CF9EEB: FLdPr Me
  loc_CF9EEE: VCallAd Control_ID_HastaMsk
  loc_CF9EF1: FStAdFunc var_7AC
  loc_CF9EF4: FLdPr var_7AC
  loc_CF9EF7: LateIdLdVar var_7FC DispID_15 0
  loc_CF9EFE: PopAd
  loc_CF9F00: LitStr " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1 ,pararenta.CorePare as CodiConc, "
  loc_CF9F03: LitStr " sum(RecaDepa-DereDepa) as TotaDepa, 0 ComiCtct"
  loc_CF9F06: ConcatStr
  loc_CF9F07: FStStrNoPop var_13C
  loc_CF9F0A: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9F0D: ConcatStr
  loc_CF9F0E: CVarStr var_170
  loc_CF9F11: FLdPr Me
  loc_CF9F14: VCallAd Control_ID_DesdeMsk
  loc_CF9F17: FStAdFunc var_100
  loc_CF9F1A: FLdPr var_100
  loc_CF9F1D: LateIdLdVar var_114 DispID_15 0
  loc_CF9F24: CStrVarTmp
  loc_CF9F25: CVarStr var_124
  loc_CF9F28: FLdRfVar var_134
  loc_CF9F2B: ImpAdCallFPR4  = Year()
  loc_CF9F30: FLdRfVar var_134
  loc_CF9F33: ConcatVar var_180
  loc_CF9F37: LitVarStr var_EC, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CF9F3C: ConcatVar var_190
  loc_CF9F40: LitVarStr var_FC, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CF9F45: ConcatVar var_1A0
  loc_CF9F49: LitI4 1
  loc_CF9F4E: LitI4 1
  loc_CF9F53: LitVarStr var_1D4, "yyyy-mm-dd"
  loc_CF9F58: FStVarCopyObj var_1E4
  loc_CF9F5B: FLdRfVar var_1E4
  loc_CF9F5E: FLdRfVar var_1B4
  loc_CF9F61: CStrVarTmp
  loc_CF9F62: CVarStr var_1C4
  loc_CF9F65: ImpAdCallI2 Format$(, )
  loc_CF9F6A: CVarStr var_1F4
  loc_CF9F6D: ConcatVar var_204
  loc_CF9F71: LitVarStr var_214, "' AND '"
  loc_CF9F76: ConcatVar var_224
  loc_CF9F7A: LitI4 1
  loc_CF9F7F: LitI4 1
  loc_CF9F84: LitVarStr var_258, "yyyy-mm-dd"
  loc_CF9F89: FStVarCopyObj var_268
  loc_CF9F8C: FLdRfVar var_268
  loc_CF9F8F: FLdRfVar var_238
  loc_CF9F92: CStrVarTmp
  loc_CF9F93: CVarStr var_248
  loc_CF9F96: ImpAdCallI2 Format$(, )
  loc_CF9F9B: CVarStr var_278
  loc_CF9F9E: ConcatVar var_288
  loc_CF9FA2: LitVarStr var_298, "' GROUP BY acrepago.CodiEnre;"
  loc_CF9FA7: ConcatVar var_2A8
  loc_CF9FAB: LitVarStr var_2B8, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1 ,pararenta.CoapPare as CodiConc,"
  loc_CF9FB0: ConcatVar var_2C8
  loc_CF9FB4: LitVarStr var_2D8, " SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, 0 ComiCtct "
  loc_CF9FB9: ConcatVar var_2E8
  loc_CF9FBD: LitVarStr var_2F8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CF9FC2: ConcatVar var_308
  loc_CF9FC6: FLdPr Me
  loc_CF9FC9: VCallAd Control_ID_DesdeMsk
  loc_CF9FCC: FStAdFunc var_30C
  loc_CF9FCF: FLdPr var_30C
  loc_CF9FD2: LateIdLdVar var_31C DispID_15 0
  loc_CF9FD9: CStrVarTmp
  loc_CF9FDA: CVarStr var_32C
  loc_CF9FDD: FLdRfVar var_33C
  loc_CF9FE0: ImpAdCallFPR4  = Year()
  loc_CF9FE5: FLdRfVar var_33C
  loc_CF9FE8: ConcatVar var_34C
  loc_CF9FEC: LitVarStr var_35C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CF9FF1: ConcatVar var_36C
  loc_CF9FF5: LitVarStr var_37C, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CF9FFA: ConcatVar var_38C
  loc_CF9FFE: LitVarStr var_3C0, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CFA003: ConcatVar var_3A0
  loc_CFA007: LitI4 1
  loc_CFA00C: LitI4 1
  loc_CFA011: LitVarStr var_400, "yyyy-mm-dd"
  loc_CFA016: FStVarCopyObj var_3E0
  loc_CFA019: FLdRfVar var_3E0
  loc_CFA01C: FLdRfVar var_3B0
  loc_CFA01F: CStrVarTmp
  loc_CFA020: CVarStr var_3D0
  loc_CFA023: ImpAdCallI2 Format$(, )
  loc_CFA028: CVarStr var_3F0
  loc_CFA02B: ConcatVar var_410
  loc_CFA02F: LitVarStr var_444, "' AND '"
  loc_CFA034: ConcatVar var_424
  loc_CFA038: LitI4 1
  loc_CFA03D: LitI4 1
  loc_CFA042: LitVarStr var_484, "yyyy-mm-dd"
  loc_CFA047: FStVarCopyObj var_464
  loc_CFA04A: FLdRfVar var_464
  loc_CFA04D: FLdRfVar var_434
  loc_CFA050: CStrVarTmp
  loc_CFA051: CVarStr var_454
  loc_CFA054: ImpAdCallI2 Format$(, )
  loc_CFA059: CVarStr var_474
  loc_CFA05C: ConcatVar var_494
  loc_CFA060: LitVarStr var_4A4, "' GROUP By acrepago.CodiEnre;"
  loc_CFA065: ConcatVar var_4B4
  loc_CFA069: LitVarStr var_4C4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1 ,pararenta.CoimPare as CodiConc,"
  loc_CFA06E: ConcatVar var_4D4
  loc_CFA072: LitVarStr var_528, " SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as TotaDepa, 0 ComiCtct "
  loc_CFA077: ConcatVar var_4E8
  loc_CFA07B: LitVarStr var_548, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA080: ConcatVar var_4F8
  loc_CFA084: FLdPr Me
  loc_CFA087: VCallAd Control_ID_DesdeMsk
  loc_CFA08A: FStAdFunc var_4D8
  loc_CFA08D: FLdPr var_4D8
  loc_CFA090: LateIdLdVar var_508 DispID_15 0
  loc_CFA097: CStrVarTmp
  loc_CFA098: CVarStr var_518
  loc_CFA09B: FLdRfVar var_538
  loc_CFA09E: ImpAdCallFPR4  = Year()
  loc_CFA0A3: FLdRfVar var_538
  loc_CFA0A6: ConcatVar var_558
  loc_CFA0AA: LitVarStr var_58C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CFA0AF: ConcatVar var_56C
  loc_CFA0B3: LitVarStr var_5CC, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CFA0B8: ConcatVar var_57C
  loc_CFA0BC: LitVarStr var_610, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CFA0C1: ConcatVar var_59C
  loc_CFA0C5: LitI4 1
  loc_CFA0CA: LitI4 1
  loc_CFA0CF: LitVarStr var_650, "yyyy-mm-dd"
  loc_CFA0D4: FStVarCopyObj var_5DC
  loc_CFA0D7: FLdRfVar var_5DC
  loc_CFA0DA: FLdRfVar var_5AC
  loc_CFA0DD: CStrVarTmp
  loc_CFA0DE: CVarStr var_5BC
  loc_CFA0E1: ImpAdCallI2 Format$(, )
  loc_CFA0E6: CVarStr var_5F0
  loc_CFA0E9: ConcatVar var_600
  loc_CFA0ED: LitVarStr var_670, "' AND '"
  loc_CFA0F2: ConcatVar var_620
  loc_CFA0F6: LitI4 1
  loc_CFA0FB: LitI4 1
  loc_CFA100: LitVarStr var_690, "yyyy-mm-dd"
  loc_CFA105: FStVarCopyObj var_660
  loc_CFA108: FLdRfVar var_660
  loc_CFA10B: FLdRfVar var_630
  loc_CFA10E: CStrVarTmp
  loc_CFA10F: CVarStr var_640
  loc_CFA112: ImpAdCallI2 Format$(, )
  loc_CFA117: CVarStr var_680
  loc_CFA11A: ConcatVar var_6A0
  loc_CFA11E: LitVarStr var_6F4, "' GROUP By acrepago.CodiEnre;"
  loc_CFA123: ConcatVar var_6B4
  loc_CFA127: LitVarStr var_714, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, 0 ComiCtct "
  loc_CFA12C: ConcatVar var_6C4
  loc_CFA130: LitVarStr var_758, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA135: ConcatVar var_6D4
  loc_CFA139: FLdPr Me
  loc_CFA13C: VCallAd Control_ID_DesdeMsk
  loc_CFA13F: FStAdFunc var_6A4
  loc_CFA142: FLdPr var_6A4
  loc_CFA145: LateIdLdVar var_6E4 DispID_15 0
  loc_CFA14C: CStrVarTmp
  loc_CFA14D: CVarStr var_704
  loc_CFA150: FLdRfVar var_724
  loc_CFA153: ImpAdCallFPR4  = Year()
  loc_CFA158: FLdRfVar var_724
  loc_CFA15B: ConcatVar var_738
  loc_CFA15F: LitVarStr var_798, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CFA164: ConcatVar var_748
  loc_CFA168: LitVarStr var_7DC, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CFA16D: ConcatVar var_768
  loc_CFA171: LitI4 1
  loc_CFA176: LitI4 1
  loc_CFA17B: LitVarStr var_81C, "yyyy-mm-dd"
  loc_CFA180: FStVarCopyObj var_7A8
  loc_CFA183: FLdRfVar var_7A8
  loc_CFA186: FLdRfVar var_778
  loc_CFA189: CStrVarTmp
  loc_CFA18A: CVarStr var_788
  loc_CFA18D: ImpAdCallI2 Format$(, )
  loc_CFA192: CVarStr var_7BC
  loc_CFA195: ConcatVar var_7CC
  loc_CFA199: LitVarStr var_83C, "' AND '"
  loc_CFA19E: ConcatVar var_7EC
  loc_CFA1A2: LitI4 1
  loc_CFA1A7: LitI4 1
  loc_CFA1AC: LitVarStr var_85C, "yyyy-mm-dd"
  loc_CFA1B1: FStVarCopyObj var_82C
  loc_CFA1B4: FLdRfVar var_82C
  loc_CFA1B7: FLdRfVar var_7FC
  loc_CFA1BA: CStrVarTmp
  loc_CFA1BB: CVarStr var_80C
  loc_CFA1BE: ImpAdCallI2 Format$(, )
  loc_CFA1C3: CVarStr var_84C
  loc_CFA1C6: ConcatVar var_86C
  loc_CFA1CA: LitVarStr var_8C0, "' GROUP BY acrepago.CodiEnre;"
  loc_CFA1CF: ConcatVar var_880
  loc_CFA1D3: CStrVarVal var_140
  loc_CFA1D7: FLdPr var_138
  loc_CFA1DA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA1DF: FFreeStr var_13C = ""
  loc_CFA1E6: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = "": var_5E0 = "": var_6A4 = "": var_728 = ""
  loc_CFA201: FFreeVar var_680 = "": var_6A0 = "": var_6B4 = "": var_6C4 = "": var_6E4 = "": var_704 = "": var_6D4 = "": var_724 = "": var_738 = "": var_748 = "": var_778 = "": var_788 = "": var_7A8 = "": var_768 = "": var_7BC = "": var_7CC = "": var_7FC = "": var_80C = "": var_82C = "": var_7EC = "": var_84C = "": var_86C = "": var_880 = "": var_3E0 = "": var_3A0 = "": var_3F0 = "": var_410 = "": var_434 = "": var_454 = "": var_464 = "": var_424 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4D4 = "": var_4E8 = "": var_508 = "": var_518 = "": var_4F8 = "": var_538 = "": var_558 = "": var_56C = "": var_57C = "": var_5AC = "": var_5BC = "": var_5DC = "": var_59C = "": var_5F0 = "": var_600 = "": var_630 = "": var_640 = "": var_660 = "": var_620 = "": var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1A0 = "": var_1F4 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_224 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_308 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3B0 = ""
  loc_CFA2AA: Branch loc_CFA6F4
  loc_CFA2AD: FLdPr Me
  loc_CFA2B0: VCallAd Control_ID_DesdeMsk
  loc_CFA2B3: FStAdFunc var_1A4
  loc_CFA2B6: FLdPr var_1A4
  loc_CFA2B9: LateIdLdVar var_1B4 DispID_15 0
  loc_CFA2C0: PopAd
  loc_CFA2C2: FLdPr Me
  loc_CFA2C5: VCallAd Control_ID_HastaMsk
  loc_CFA2C8: FStAdFunc var_228
  loc_CFA2CB: FLdPr var_228
  loc_CFA2CE: LateIdLdVar var_238 DispID_15 0
  loc_CFA2D5: PopAd
  loc_CFA2D7: FLdPr Me
  loc_CFA2DA: VCallAd Control_ID_DesdeMsk
  loc_CFA2DD: FStAdFunc var_390
  loc_CFA2E0: FLdPr var_390
  loc_CFA2E3: LateIdLdVar var_3B0 DispID_15 0
  loc_CFA2EA: PopAd
  loc_CFA2EC: FLdPr Me
  loc_CFA2EF: VCallAd Control_ID_HastaMsk
  loc_CFA2F2: FStAdFunc var_414
  loc_CFA2F5: FLdPr var_414
  loc_CFA2F8: LateIdLdVar var_434 DispID_15 0
  loc_CFA2FF: PopAd
  loc_CFA301: FLdPr Me
  loc_CFA304: VCallAd Control_ID_DesdeMsk
  loc_CFA307: FStAdFunc var_55C
  loc_CFA30A: FLdPr var_55C
  loc_CFA30D: LateIdLdVar var_59C DispID_15 0
  loc_CFA314: PopAd
  loc_CFA316: FLdPr Me
  loc_CFA319: VCallAd Control_ID_HastaMsk
  loc_CFA31C: FStAdFunc var_5E0
  loc_CFA31F: FLdPr var_5E0
  loc_CFA322: LateIdLdVar var_620 DispID_15 0
  loc_CFA329: PopAd
  loc_CFA32B: FLdPr Me
  loc_CFA32E: VCallAd Control_ID_DesdeMsk
  loc_CFA331: FStAdFunc var_728
  loc_CFA334: FLdPr var_728
  loc_CFA337: LateIdLdVar var_768 DispID_15 0
  loc_CFA33E: PopAd
  loc_CFA340: FLdPr Me
  loc_CFA343: VCallAd Control_ID_HastaMsk
  loc_CFA346: FStAdFunc var_7AC
  loc_CFA349: FLdPr var_7AC
  loc_CFA34C: LateIdLdVar var_7EC DispID_15 0
  loc_CFA353: PopAd
  loc_CFA355: LitStr " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CorePare as CodiConc,"
  loc_CFA358: LitStr " sum(RecaDepa-DereDepa) as TotaDepa, 0 as ComiCtct"
  loc_CFA35B: ConcatStr
  loc_CFA35C: FStStrNoPop var_13C
  loc_CFA35F: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA362: ConcatStr
  loc_CFA363: CVarStr var_170
  loc_CFA366: FLdPr Me
  loc_CFA369: VCallAd Control_ID_DesdeMsk
  loc_CFA36C: FStAdFunc var_100
  loc_CFA36F: FLdPr var_100
  loc_CFA372: LateIdLdVar var_114 DispID_15 0
  loc_CFA379: CStrVarTmp
  loc_CFA37A: CVarStr var_124
  loc_CFA37D: FLdRfVar var_134
  loc_CFA380: ImpAdCallFPR4  = Year()
  loc_CFA385: FLdRfVar var_134
  loc_CFA388: ConcatVar var_180
  loc_CFA38C: LitVarStr var_EC, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CFA391: ConcatVar var_190
  loc_CFA395: LitVarStr var_FC, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CFA39A: ConcatVar var_1A0
  loc_CFA39E: LitI4 1
  loc_CFA3A3: LitI4 1
  loc_CFA3A8: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_CFA3AD: FStVarCopyObj var_1E4
  loc_CFA3B0: FLdRfVar var_1E4
  loc_CFA3B3: FLdRfVar var_1B4
  loc_CFA3B6: CStrVarTmp
  loc_CFA3B7: CVarStr var_1C4
  loc_CFA3BA: ImpAdCallI2 Format$(, )
  loc_CFA3BF: CVarStr var_1F4
  loc_CFA3C2: ConcatVar var_204
  loc_CFA3C6: LitVarStr var_214, " AND "
  loc_CFA3CB: ConcatVar var_224
  loc_CFA3CF: LitI4 1
  loc_CFA3D4: LitI4 1
  loc_CFA3D9: LitVarStr var_258, "'yyyy-mm-dd'"
  loc_CFA3DE: FStVarCopyObj var_268
  loc_CFA3E1: FLdRfVar var_268
  loc_CFA3E4: FLdRfVar var_238
  loc_CFA3E7: CStrVarTmp
  loc_CFA3E8: CVarStr var_248
  loc_CFA3EB: ImpAdCallI2 Format$(, )
  loc_CFA3F0: CVarStr var_278
  loc_CFA3F3: ConcatVar var_288
  loc_CFA3F7: LitVarStr var_298, " GROUP BY acrepago.CodiEnre;"
  loc_CFA3FC: ConcatVar var_2A8
  loc_CFA400: LitVarStr var_2B8, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoadPare as CodiConc,"
  loc_CFA405: ConcatVar var_2C8
  loc_CFA409: LitVarStr var_2D8, " sum(CoadBoap) as TotaDepa, 0 as ComiCtct"
  loc_CFA40E: ConcatVar var_2E8
  loc_CFA412: LitVarStr var_2F8, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA417: ConcatVar var_308
  loc_CFA41B: FLdPr Me
  loc_CFA41E: VCallAd Control_ID_DesdeMsk
  loc_CFA421: FStAdFunc var_30C
  loc_CFA424: FLdPr var_30C
  loc_CFA427: LateIdLdVar var_31C DispID_15 0
  loc_CFA42E: CStrVarTmp
  loc_CFA42F: CVarStr var_32C
  loc_CFA432: FLdRfVar var_33C
  loc_CFA435: ImpAdCallFPR4  = Year()
  loc_CFA43A: FLdRfVar var_33C
  loc_CFA43D: ConcatVar var_34C
  loc_CFA441: LitVarStr var_35C, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_CFA446: ConcatVar var_36C
  loc_CFA44A: LitVarStr var_37C, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CFA44F: ConcatVar var_38C
  loc_CFA453: LitVarStr var_3C0, " WHERE pago.FeenAcpa BETWEEN "
  loc_CFA458: ConcatVar var_3A0
  loc_CFA45C: LitI4 1
  loc_CFA461: LitI4 1
  loc_CFA466: LitVarStr var_400, "'yyyy-mm-dd'"
  loc_CFA46B: FStVarCopyObj var_3E0
  loc_CFA46E: FLdRfVar var_3E0
  loc_CFA471: FLdRfVar var_3B0
  loc_CFA474: CStrVarTmp
  loc_CFA475: CVarStr var_3D0
  loc_CFA478: ImpAdCallI2 Format$(, )
  loc_CFA47D: CVarStr var_3F0
  loc_CFA480: ConcatVar var_410
  loc_CFA484: LitVarStr var_444, " AND "
  loc_CFA489: ConcatVar var_424
  loc_CFA48D: LitI4 1
  loc_CFA492: LitI4 1
  loc_CFA497: LitVarStr var_484, "'yyyy-mm-dd'"
  loc_CFA49C: FStVarCopyObj var_464
  loc_CFA49F: FLdRfVar var_464
  loc_CFA4A2: FLdRfVar var_434
  loc_CFA4A5: CStrVarTmp
  loc_CFA4A6: CVarStr var_454
  loc_CFA4A9: ImpAdCallI2 Format$(, )
  loc_CFA4AE: CVarStr var_474
  loc_CFA4B1: ConcatVar var_494
  loc_CFA4B5: LitVarStr var_4A4, " GROUP BY acrepago.CodiEnre;"
  loc_CFA4BA: ConcatVar var_4B4
  loc_CFA4BE: LitVarStr var_4C4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, 0 as ComiCtct "
  loc_CFA4C3: ConcatVar var_4D4
  loc_CFA4C7: LitVarStr var_528, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA4CC: ConcatVar var_4E8
  loc_CFA4D0: FLdPr Me
  loc_CFA4D3: VCallAd Control_ID_DesdeMsk
  loc_CFA4D6: FStAdFunc var_4D8
  loc_CFA4D9: FLdPr var_4D8
  loc_CFA4DC: LateIdLdVar var_4F8 DispID_15 0
  loc_CFA4E3: CStrVarTmp
  loc_CFA4E4: CVarStr var_508
  loc_CFA4E7: FLdRfVar var_518
  loc_CFA4EA: ImpAdCallFPR4  = Year()
  loc_CFA4EF: FLdRfVar var_518
  loc_CFA4F2: ConcatVar var_538
  loc_CFA4F6: LitVarStr var_548, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CFA4FB: ConcatVar var_558
  loc_CFA4FF: LitVarStr var_58C, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CFA504: ConcatVar var_56C
  loc_CFA508: LitVarStr var_5CC, " WHERE pago.FeenAcpa BETWEEN "
  loc_CFA50D: ConcatVar var_57C
  loc_CFA511: LitI4 1
  loc_CFA516: LitI4 1
  loc_CFA51B: LitVarStr var_610, "'yyyy-mm-dd'"
  loc_CFA520: FStVarCopyObj var_5BC
  loc_CFA523: FLdRfVar var_5BC
  loc_CFA526: FLdRfVar var_59C
  loc_CFA529: CStrVarTmp
  loc_CFA52A: CVarStr var_5AC
  loc_CFA52D: ImpAdCallI2 Format$(, )
  loc_CFA532: CVarStr var_5DC
  loc_CFA535: ConcatVar var_5F0
  loc_CFA539: LitVarStr var_650, " AND "
  loc_CFA53E: ConcatVar var_600
  loc_CFA542: LitI4 1
  loc_CFA547: LitI4 1
  loc_CFA54C: LitVarStr var_670, "'yyyy-mm-dd'"
  loc_CFA551: FStVarCopyObj var_640
  loc_CFA554: FLdRfVar var_640
  loc_CFA557: FLdRfVar var_620
  loc_CFA55A: CStrVarTmp
  loc_CFA55B: CVarStr var_630
  loc_CFA55E: ImpAdCallI2 Format$(, )
  loc_CFA563: CVarStr var_660
  loc_CFA566: ConcatVar var_680
  loc_CFA56A: LitVarStr var_690, " GROUP BY acrepago.CodiEnre;"
  loc_CFA56F: ConcatVar var_6A0
  loc_CFA573: LitVarStr var_6F4, " INSERT INTO tmp_tribu SELECT acrepago.CodiEnre, 1, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, 0 as ComiCtct"
  loc_CFA578: ConcatVar var_6B4
  loc_CFA57C: LitVarStr var_714, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CFA581: ConcatVar var_6C4
  loc_CFA585: FLdPr Me
  loc_CFA588: VCallAd Control_ID_DesdeMsk
  loc_CFA58B: FStAdFunc var_6A4
  loc_CFA58E: FLdPr var_6A4
  loc_CFA591: LateIdLdVar var_6D4 DispID_15 0
  loc_CFA598: CStrVarTmp
  loc_CFA599: CVarStr var_6E4
  loc_CFA59C: FLdRfVar var_704
  loc_CFA59F: ImpAdCallFPR4  = Year()
  loc_CFA5A4: FLdRfVar var_704
  loc_CFA5A7: ConcatVar var_724
  loc_CFA5AB: LitVarStr var_758, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CFA5B0: ConcatVar var_738
  loc_CFA5B4: LitVarStr var_798, " WHERE detapago.FeenAcpa BETWEEN "
  loc_CFA5B9: ConcatVar var_748
  loc_CFA5BD: LitI4 1
  loc_CFA5C2: LitI4 1
  loc_CFA5C7: LitVarStr var_7DC, "'yyyy-mm-dd'"
  loc_CFA5CC: FStVarCopyObj var_788
  loc_CFA5CF: FLdRfVar var_788
  loc_CFA5D2: FLdRfVar var_768
  loc_CFA5D5: CStrVarTmp
  loc_CFA5D6: CVarStr var_778
  loc_CFA5D9: ImpAdCallI2 Format$(, )
  loc_CFA5DE: CVarStr var_7A8
  loc_CFA5E1: ConcatVar var_7BC
  loc_CFA5E5: LitVarStr var_81C, " AND "
  loc_CFA5EA: ConcatVar var_7CC
  loc_CFA5EE: LitI4 1
  loc_CFA5F3: LitI4 1
  loc_CFA5F8: LitVarStr var_83C, "'yyyy-mm-dd'"
  loc_CFA5FD: FStVarCopyObj var_80C
  loc_CFA600: FLdRfVar var_80C
  loc_CFA603: FLdRfVar var_7EC
  loc_CFA606: CStrVarTmp
  loc_CFA607: CVarStr var_7FC
  loc_CFA60A: ImpAdCallI2 Format$(, )
  loc_CFA60F: CVarStr var_82C
  loc_CFA612: ConcatVar var_84C
  loc_CFA616: LitVarStr var_85C, " GROUP BY acrepago.CodiEnre"
  loc_CFA61B: ConcatVar var_86C
  loc_CFA61F: CStrVarVal var_140
  loc_CFA623: FLdPr var_138
  loc_CFA626: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA62B: FFreeStr var_13C = ""
  loc_CFA632: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = "": var_5E0 = "": var_6A4 = "": var_728 = ""
  loc_CFA64D: FFreeVar var_680 = "": var_6A0 = "": var_6B4 = "": var_6D4 = "": var_6E4 = "": var_6C4 = "": var_704 = "": var_724 = "": var_738 = "": var_768 = "": var_778 = "": var_788 = "": var_748 = "": var_7A8 = "": var_7BC = "": var_7EC = "": var_7FC = "": var_80C = "": var_7CC = "": var_82C = "": var_84C = "": var_86C = "": var_3E0 = "": var_3A0 = "": var_3F0 = "": var_410 = "": var_434 = "": var_454 = "": var_464 = "": var_424 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4D4 = "": var_4F8 = "": var_508 = "": var_4E8 = "": var_518 = "": var_538 = "": var_558 = "": var_56C = "": var_59C = "": var_5AC = "": var_5BC = "": var_57C = "": var_5DC = "": var_5F0 = "": var_620 = "": var_630 = "": var_640 = "": var_600 = "": var_660 = "": var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1A0 = "": var_1F4 = "": var_204 = "": var_238 = "": var_248 = "": var_268 = "": var_224 = "": var_278 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_308 = "": var_33C = "": var_34C = "": var_36C = "": var_38C = "": var_3B0 = ""
  loc_CFA6F4: LitStr "Municipalidad de Guaymallén"
  loc_CFA6F7: LitStr "Municipalidad de Guaymallén"
  loc_CFA6FA: EqStr
  loc_CFA6FC: BranchF loc_CFA74D
  loc_CFA6FF: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_tribu_Conc;"
  loc_CFA702: LitStr " CREATE TEMPORARY TABLE tmp_tribu_Conc"
  loc_CFA705: ConcatStr
  loc_CFA706: FStStrNoPop var_13C
  loc_CFA709: LitStr " SELECT CodiEnre, Orden, tmp_tribu.CodiConc, SUM(TotaCtct) TotaCtct, ComiCtct FROM tmp_tribu"
  loc_CFA70C: ConcatStr
  loc_CFA70D: FStStrNoPop var_140
  loc_CFA710: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CFA713: ConcatStr
  loc_CFA714: FStStrNoPop var_144
  loc_CFA717: ImpAdLdI2 MemVar_D93034
  loc_CFA71A: CStrUI1
  loc_CFA71C: FStStrNoPop var_148
  loc_CFA71F: ConcatStr
  loc_CFA720: FStStrNoPop var_14C
  loc_CFA723: LitStr " AND concepto.CodiConc = tmp_tribu.CodiConc AND concepto.ActiConc <> ''"
  loc_CFA726: ConcatStr
  loc_CFA727: FStStrNoPop var_150
  loc_CFA72A: LitStr " GROUP BY tmp_tribu.CodiEnre, tmp_tribu.Orden, tmp_tribu.CodiConc"
  loc_CFA72D: ConcatStr
  loc_CFA72E: FStStrNoPop var_154
  loc_CFA731: FLdPr var_138
  loc_CFA734: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA739: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_CFA74A: Branch loc_CFA776
  loc_CFA74D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_tribu_Conc;"
  loc_CFA750: LitStr " CREATE TEMPORARY TABLE tmp_tribu_Conc"
  loc_CFA753: ConcatStr
  loc_CFA754: FStStrNoPop var_13C
  loc_CFA757: LitStr " SELECT CodiEnre, Orden, CodiConc, SUM(TotaCtct) TotaCtct, ComiCtct FROM tmp_tribu"
  loc_CFA75A: ConcatStr
  loc_CFA75B: FStStrNoPop var_140
  loc_CFA75E: LitStr " GROUP BY CodiEnre, Orden, CodiConc"
  loc_CFA761: ConcatStr
  loc_CFA762: FStStrNoPop var_144
  loc_CFA765: FLdPr var_138
  loc_CFA768: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA76D: FFreeStr var_13C = "": var_140 = ""
  loc_CFA776: LitStr " DELETE FROM tmp_tribu;"
  loc_CFA779: LitStr " INSERT INTO tmp_tribu"
  loc_CFA77C: ConcatStr
  loc_CFA77D: FStStrNoPop var_13C
  loc_CFA780: LitStr " SELECT * FROM tmp_tribu_Conc"
  loc_CFA783: ConcatStr
  loc_CFA784: FStStrNoPop var_140
  loc_CFA787: FLdPr var_138
  loc_CFA78A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA78F: FFreeStr var_13C = ""
  loc_CFA796: LitStr "Municipalidad de Guaymallén"
  loc_CFA799: LitStr "Municipalidad de Rivadavia"
  loc_CFA79C: EqStr
  loc_CFA79E: BranchF loc_CFA88D
  loc_CFA7A1: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_tribu_nuevo;"
  loc_CFA7A4: LitStr " CREATE TEMPORARY TABLE tmp_tribu_nuevo"
  loc_CFA7A7: ConcatStr
  loc_CFA7A8: FStStrNoPop var_13C
  loc_CFA7AB: LitStr " SELECT tmp_tribu.* FROM tmp_tribu"
  loc_CFA7AE: ConcatStr
  loc_CFA7AF: FStStrNoPop var_140
  loc_CFA7B2: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFA7B5: ConcatStr
  loc_CFA7B6: CVarStr var_170
  loc_CFA7B9: FLdPr Me
  loc_CFA7BC: VCallAd Control_ID_DesdeMsk
  loc_CFA7BF: FStAdFunc var_100
  loc_CFA7C2: FLdPr var_100
  loc_CFA7C5: LateIdLdVar var_114 DispID_15 0
  loc_CFA7CC: CStrVarTmp
  loc_CFA7CD: CVarStr var_124
  loc_CFA7D0: FLdRfVar var_134
  loc_CFA7D3: ImpAdCallFPR4  = Year()
  loc_CFA7D8: FLdRfVar var_134
  loc_CFA7DB: ConcatVar var_180
  loc_CFA7DF: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFA7E4: ConcatVar var_190
  loc_CFA7E8: LitVarStr var_FC, " INNER JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CFA7ED: ConcatVar var_1A0
  loc_CFA7F1: FLdPr Me
  loc_CFA7F4: VCallAd Control_ID_DesdeMsk
  loc_CFA7F7: FStAdFunc var_1A4
  loc_CFA7FA: FLdPr var_1A4
  loc_CFA7FD: LateIdLdVar var_1B4 DispID_15 0
  loc_CFA804: CStrVarTmp
  loc_CFA805: CVarStr var_1C4
  loc_CFA808: FLdRfVar var_1E4
  loc_CFA80B: ImpAdCallFPR4  = Year()
  loc_CFA810: FLdRfVar var_1E4
  loc_CFA813: ConcatVar var_1F4
  loc_CFA817: LitVarStr var_1D4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CFA81C: ConcatVar var_204
  loc_CFA820: LitVarStr var_214, " AND MID(cuentacontable.CodiTicu,1,1) = 5"
  loc_CFA825: ConcatVar var_224
  loc_CFA829: LitVarStr var_258, " ORDER BY CodiEnre, Orden, CodiConc"
  loc_CFA82E: ConcatVar var_238
  loc_CFA832: CStrVarVal var_144
  loc_CFA836: FLdPr var_138
  loc_CFA839: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA83E: FFreeStr var_13C = "": var_140 = ""
  loc_CFA847: FFreeAd var_100 = ""
  loc_CFA84E: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = ""
  loc_CFA86D: LitStr " DELETE FROM tmp_tribu;"
  loc_CFA870: LitStr " INSERT INTO tmp_tribu"
  loc_CFA873: ConcatStr
  loc_CFA874: FStStrNoPop var_13C
  loc_CFA877: LitStr " SELECT * FROM tmp_tribu_nuevo"
  loc_CFA87A: ConcatStr
  loc_CFA87B: FStStrNoPop var_140
  loc_CFA87E: FLdPr var_138
  loc_CFA881: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA886: FFreeStr var_13C = ""
  loc_CFA88D: LitStr "Municipalidad de Guaymallén"
  loc_CFA890: LitStr "Municipalidad de General Alvear"
  loc_CFA893: EqStr
  loc_CFA895: BranchF loc_CFA992
  loc_CFA898: FLdPr Me
  loc_CFA89B: VCallAd Control_ID_DesdeMsk
  loc_CFA89E: FStAdFunc var_100
  loc_CFA8A1: FLdPr var_100
  loc_CFA8A4: LateIdLdVar var_114 DispID_15 0
  loc_CFA8AB: PopAd
  loc_CFA8AD: FLdPr Me
  loc_CFA8B0: VCallAd Control_ID_HastaMsk
  loc_CFA8B3: FStAdFunc var_1A4
  loc_CFA8B6: FLdPr var_1A4
  loc_CFA8B9: LateIdLdVar var_170 DispID_15 0
  loc_CFA8C0: PopAd
  loc_CFA8C2: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_movibanco;"
  loc_CFA8C5: LitStr " CREATE TEMPORARY TABLE tmp_movibanco"
  loc_CFA8C8: ConcatStr
  loc_CFA8C9: FStStrNoPop var_13C
  loc_CFA8CC: LitStr " SELECT movibanco.CodiEnre, 0, "
  loc_CFA8CF: ConcatStr
  loc_CFA8D0: FStStrNoPop var_140
  loc_CFA8D3: LitStr " IFNULL((SELECT SUM(tmp_tribu.TotaCtct) FROM tmp_tribu WHERE tmp_tribu.CodiEnre = contpres.movibanco.CodiEnre),0) TotaCtct,"
  loc_CFA8D6: ConcatStr
  loc_CFA8D7: FStStrNoPop var_144
  loc_CFA8DA: LitStr " SUM(ComiMoba)+SUM(IvaMoba) as Comi"
  loc_CFA8DD: ConcatStr
  loc_CFA8DE: FStStrNoPop var_148
  loc_CFA8E1: LitStr " FROM contpres.movibanco"
  loc_CFA8E4: ConcatStr
  loc_CFA8E5: FStStrNoPop var_14C
  loc_CFA8E8: LitStr " WHERE FechMoba BETWEEN "
  loc_CFA8EB: ConcatStr
  loc_CFA8EC: FStStrNoPop var_150
  loc_CFA8EF: LitI4 1
  loc_CFA8F4: LitI4 1
  loc_CFA8F9: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_CFA8FE: FStVarCopyObj var_134
  loc_CFA901: FLdRfVar var_134
  loc_CFA904: FLdRfVar var_114
  loc_CFA907: CStrVarTmp
  loc_CFA908: CVarStr var_124
  loc_CFA90B: ImpAdCallI2 Format$(, )
  loc_CFA910: FStStrNoPop var_154
  loc_CFA913: ConcatStr
  loc_CFA914: FStStrNoPop var_158
  loc_CFA917: LitStr " AND "
  loc_CFA91A: ConcatStr
  loc_CFA91B: FStStrNoPop var_15C
  loc_CFA91E: LitI4 1
  loc_CFA923: LitI4 1
  loc_CFA928: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_CFA92D: FStVarCopyObj var_190
  loc_CFA930: FLdRfVar var_190
  loc_CFA933: FLdRfVar var_170
  loc_CFA936: CStrVarTmp
  loc_CFA937: CVarStr var_180
  loc_CFA93A: ImpAdCallI2 Format$(, )
  loc_CFA93F: FStStrNoPop var_160
  loc_CFA942: ConcatStr
  loc_CFA943: FStStrNoPop var_A3C
  loc_CFA946: LitStr " AND CodiTimb IN (5,6,18)"
  loc_CFA949: ConcatStr
  loc_CFA94A: FStStrNoPop var_A40
  loc_CFA94D: LitStr " GROUP BY CodiEnre"
  loc_CFA950: ConcatStr
  loc_CFA951: FStStrNoPop var_A44
  loc_CFA954: FLdPr var_138
  loc_CFA957: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFA95C: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_A3C = "": var_A40 = ""
  loc_CFA979: FFreeAd var_100 = ""
  loc_CFA980: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_170 = "": var_180 = ""
  loc_CFA98F: Branch loc_CFAA89
  loc_CFA992: FLdPr Me
  loc_CFA995: VCallAd Control_ID_DesdeMsk
  loc_CFA998: FStAdFunc var_100
  loc_CFA99B: FLdPr var_100
  loc_CFA99E: LateIdLdVar var_114 DispID_15 0
  loc_CFA9A5: PopAd
  loc_CFA9A7: FLdPr Me
  loc_CFA9AA: VCallAd Control_ID_HastaMsk
  loc_CFA9AD: FStAdFunc var_1A4
  loc_CFA9B0: FLdPr var_1A4
  loc_CFA9B3: LateIdLdVar var_170 DispID_15 0
  loc_CFA9BA: PopAd
  loc_CFA9BC: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_movibanco;"
  loc_CFA9BF: LitStr " CREATE TEMPORARY TABLE tmp_movibanco"
  loc_CFA9C2: ConcatStr
  loc_CFA9C3: FStStrNoPop var_13C
  loc_CFA9C6: LitStr " SELECT movibanco.CodiEnre, 0, "
  loc_CFA9C9: ConcatStr
  loc_CFA9CA: FStStrNoPop var_140
  loc_CFA9CD: LitStr " IFNULL((SELECT SUM(tmp_tribu.TotaCtct) FROM tmp_tribu WHERE tmp_tribu.CodiEnre = contpres.movibanco.CodiEnre),0) TotaCtct,"
  loc_CFA9D0: ConcatStr
  loc_CFA9D1: FStStrNoPop var_144
  loc_CFA9D4: LitStr " SUM(ComiMoba)+SUM(IvaMoba) as Comi"
  loc_CFA9D7: ConcatStr
  loc_CFA9D8: FStStrNoPop var_148
  loc_CFA9DB: LitStr " FROM contpres.movibanco"
  loc_CFA9DE: ConcatStr
  loc_CFA9DF: FStStrNoPop var_14C
  loc_CFA9E2: LitStr " WHERE FechMoba BETWEEN "
  loc_CFA9E5: ConcatStr
  loc_CFA9E6: FStStrNoPop var_150
  loc_CFA9E9: LitI4 1
  loc_CFA9EE: LitI4 1
  loc_CFA9F3: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_CFA9F8: FStVarCopyObj var_134
  loc_CFA9FB: FLdRfVar var_134
  loc_CFA9FE: FLdRfVar var_114
  loc_CFAA01: CStrVarTmp
  loc_CFAA02: CVarStr var_124
  loc_CFAA05: ImpAdCallI2 Format$(, )
  loc_CFAA0A: FStStrNoPop var_154
  loc_CFAA0D: ConcatStr
  loc_CFAA0E: FStStrNoPop var_158
  loc_CFAA11: LitStr " AND "
  loc_CFAA14: ConcatStr
  loc_CFAA15: FStStrNoPop var_15C
  loc_CFAA18: LitI4 1
  loc_CFAA1D: LitI4 1
  loc_CFAA22: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_CFAA27: FStVarCopyObj var_190
  loc_CFAA2A: FLdRfVar var_190
  loc_CFAA2D: FLdRfVar var_170
  loc_CFAA30: CStrVarTmp
  loc_CFAA31: CVarStr var_180
  loc_CFAA34: ImpAdCallI2 Format$(, )
  loc_CFAA39: FStStrNoPop var_160
  loc_CFAA3C: ConcatStr
  loc_CFAA3D: FStStrNoPop var_A3C
  loc_CFAA40: LitStr " AND CodiTimb IN (5,6)"
  loc_CFAA43: ConcatStr
  loc_CFAA44: FStStrNoPop var_A40
  loc_CFAA47: LitStr " GROUP BY CodiEnre"
  loc_CFAA4A: ConcatStr
  loc_CFAA4B: FStStrNoPop var_A44
  loc_CFAA4E: FLdPr var_138
  loc_CFAA51: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAA56: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_A3C = "": var_A40 = ""
  loc_CFAA73: FFreeAd var_100 = ""
  loc_CFAA7A: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_170 = "": var_180 = ""
  loc_CFAA89: LitStr "Municipalidad de Guaymallén"
  loc_CFAA8C: LitStr "Municipalidad de Rivadavia"
  loc_CFAA8F: NeStr
  loc_CFAA91: LitStr "Municipalidad de Guaymallén"
  loc_CFAA94: LitStr "Municipalidad de Guaymallén"
  loc_CFAA97: NeStr
  loc_CFAA99: AndI4
  loc_CFAA9A: BranchF loc_CFAAB2
  loc_CFAA9D: LitStr "INSERT INTO tmp_tribu (CodiEnre, Orden, TotaCtct, ComiCtct)"
  loc_CFAAA0: LitStr "SELECT * FROM tmp_movibanco"
  loc_CFAAA3: ConcatStr
  loc_CFAAA4: FStStrNoPop var_13C
  loc_CFAAA7: FLdPr var_138
  loc_CFAAAA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAAAF: FFree1Str var_13C
  loc_CFAAB2: LitStr "Municipalidad de Guaymallén"
  loc_CFAAB5: LitStr "Municipalidad de General Alvear"
  loc_CFAAB8: NeStr
  loc_CFAABA: BranchF loc_CFAB9A
  loc_CFAABD: LitStr "Municipalidad de Guaymallén"
  loc_CFAAC0: LitStr "Municipalidad de Guaymallén"
  loc_CFAAC3: EqStr
  loc_CFAAC5: BranchF loc_CFAB4A
  loc_CFAAC8: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_tribu1;"
  loc_CFAACB: LitStr " CREATE TEMPORARY TABLE tmp_tribu1"
  loc_CFAACE: ConcatStr
  loc_CFAACF: FStStrNoPop var_13C
  loc_CFAAD2: LitStr " SELECT IFNULL(tmp_movibanco.CodiEnre,tmp_tribu.CodiEnre) CodiEnre, IFNULL(tmp_movibanco.0,0) Orden,"
  loc_CFAAD5: ConcatStr
  loc_CFAAD6: FStStrNoPop var_140
  loc_CFAAD9: LitStr " IFNULL(tmp_movibanco.TotaCtct,SUM(tmp_tribu.TotaCtct)) Tota, IFNULL(tmp_movibanco.Comi,0) Comi "
  loc_CFAADC: ConcatStr
  loc_CFAADD: FStStrNoPop var_144
  loc_CFAAE0: LitStr " FROM tmp_tribu"
  loc_CFAAE3: ConcatStr
  loc_CFAAE4: FStStrNoPop var_148
  loc_CFAAE7: LitStr " LEFT JOIN tmp_movibanco ON tmp_movibanco.CodiEnre = tmp_tribu.CodiEnre"
  loc_CFAAEA: ConcatStr
  loc_CFAAEB: FStStrNoPop var_14C
  loc_CFAAEE: LitStr " WHERE tmp_tribu.CodiEnre <> 16"
  loc_CFAAF1: ConcatStr
  loc_CFAAF2: FStStrNoPop var_150
  loc_CFAAF5: LitStr " GROUP BY tmp_tribu.CodiEnre; "
  loc_CFAAF8: ConcatStr
  loc_CFAAF9: FStStrNoPop var_154
  loc_CFAAFC: FLdPr var_138
  loc_CFAAFF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAB04: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_CFAB15: LitStr "INSERT INTO tmp_tribu1"
  loc_CFAB18: LitStr " SELECT 16 CodiEnre, 0 Orden, SUM(tmp_tribu.TotaCtct) Tota,"
  loc_CFAB1B: ConcatStr
  loc_CFAB1C: FStStrNoPop var_13C
  loc_CFAB1F: LitStr " (SELECT SUM(comi) FROM tmp_movibanco WHERE tmp_movibanco.CodiEnre IN (52,55))  Comi"
  loc_CFAB22: ConcatStr
  loc_CFAB23: FStStrNoPop var_140
  loc_CFAB26: LitStr " FROM tmp_tribu"
  loc_CFAB29: ConcatStr
  loc_CFAB2A: FStStrNoPop var_144
  loc_CFAB2D: LitStr " WHERE tmp_tribu.CodiEnre = 16;"
  loc_CFAB30: ConcatStr
  loc_CFAB31: FStStrNoPop var_148
  loc_CFAB34: FLdPr var_138
  loc_CFAB37: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAB3C: FFreeStr var_13C = "": var_140 = "": var_144 = ""
  loc_CFAB47: Branch loc_CFAB85
  loc_CFAB4A: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_tribu1;"
  loc_CFAB4D: LitStr " CREATE TEMPORARY TABLE tmp_tribu1"
  loc_CFAB50: ConcatStr
  loc_CFAB51: FStStrNoPop var_13C
  loc_CFAB54: LitStr " SELECT IFNULL(tmp_movibanco.CodiEnre,tmp_tribu.CodiEnre) CodiEnre, IFNULL(tmp_movibanco.0,0) Orden,"
  loc_CFAB57: ConcatStr
  loc_CFAB58: FStStrNoPop var_140
  loc_CFAB5B: LitStr " IFNULL(tmp_movibanco.TotaCtct,SUM(tmp_tribu.TotaCtct)) Tota, IFNULL(tmp_movibanco.Comi,0) Comi FROM tmp_tribu"
  loc_CFAB5E: ConcatStr
  loc_CFAB5F: FStStrNoPop var_144
  loc_CFAB62: LitStr " LEFT JOIN tmp_movibanco ON tmp_movibanco.CodiEnre = tmp_tribu.CodiEnre"
  loc_CFAB65: ConcatStr
  loc_CFAB66: FStStrNoPop var_148
  loc_CFAB69: LitStr " GROUP BY tmp_tribu.CodiEnre"
  loc_CFAB6C: ConcatStr
  loc_CFAB6D: FStStrNoPop var_14C
  loc_CFAB70: FLdPr var_138
  loc_CFAB73: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAB78: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_CFAB85: LitStr "INSERT INTO tmp_tribu (CodiEnre, Orden, TotaCtct, ComiCtct)"
  loc_CFAB88: LitStr "SELECT * FROM tmp_tribu1"
  loc_CFAB8B: ConcatStr
  loc_CFAB8C: FStStrNoPop var_13C
  loc_CFAB8F: FLdPr var_138
  loc_CFAB92: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAB97: FFree1Str var_13C
  loc_CFAB9A: LitStr "Municipalidad de Guaymallén"
  loc_CFAB9D: LitStr "Municipalidad de Rivadavia"
  loc_CFABA0: EqStr
  loc_CFABA2: BranchF loc_CFAC23
  loc_CFABA5: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFABA8: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFABAB: ConcatStr
  loc_CFABAC: CVarStr var_170
  loc_CFABAF: FLdPr Me
  loc_CFABB2: VCallAd Control_ID_DesdeMsk
  loc_CFABB5: FStAdFunc var_100
  loc_CFABB8: FLdPr var_100
  loc_CFABBB: LateIdLdVar var_114 DispID_15 0
  loc_CFABC2: CStrVarTmp
  loc_CFABC3: CVarStr var_124
  loc_CFABC6: FLdRfVar var_134
  loc_CFABC9: ImpAdCallFPR4  = Year()
  loc_CFABCE: FLdRfVar var_134
  loc_CFABD1: ConcatVar var_180
  loc_CFABD5: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFABDA: ConcatVar var_190
  loc_CFABDE: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFABE3: ConcatVar var_1A0
  loc_CFABE7: LitVarStr var_1D4, " WHERE TotaCtct > 0"
  loc_CFABEC: ConcatVar var_1B4
  loc_CFABF0: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFABF5: ConcatVar var_1C4
  loc_CFABF9: CStrVarVal var_13C
  loc_CFABFD: FLdPr var_138
  loc_CFAC00: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAC05: FFree1Str var_13C
  loc_CFAC08: FFree1Ad var_100
  loc_CFAC0B: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFAC20: Branch loc_CFAEF5
  loc_CFAC23: LitStr "Municipalidad de Guaymallén"
  loc_CFAC26: LitStr "Municipalidad de Guaymallén"
  loc_CFAC29: EqStr
  loc_CFAC2B: BranchF loc_CFACB7
  loc_CFAC2E: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct "
  loc_CFAC31: LitStr " FROM tmp_tribu "
  loc_CFAC34: ConcatStr
  loc_CFAC35: FStStrNoPop var_13C
  loc_CFAC38: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFAC3B: ConcatStr
  loc_CFAC3C: CVarStr var_170
  loc_CFAC3F: FLdPr Me
  loc_CFAC42: VCallAd Control_ID_DesdeMsk
  loc_CFAC45: FStAdFunc var_100
  loc_CFAC48: FLdPr var_100
  loc_CFAC4B: LateIdLdVar var_114 DispID_15 0
  loc_CFAC52: CStrVarTmp
  loc_CFAC53: CVarStr var_124
  loc_CFAC56: FLdRfVar var_134
  loc_CFAC59: ImpAdCallFPR4  = Year()
  loc_CFAC5E: FLdRfVar var_134
  loc_CFAC61: ConcatVar var_180
  loc_CFAC65: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc"
  loc_CFAC6A: ConcatVar var_190
  loc_CFAC6E: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFAC73: ConcatVar var_1A0
  loc_CFAC77: LitVarStr var_1D4, " WHERE TotaCtct > 0"
  loc_CFAC7C: ConcatVar var_1B4
  loc_CFAC80: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFAC85: ConcatVar var_1C4
  loc_CFAC89: CStrVarVal var_140
  loc_CFAC8D: FLdPr var_138
  loc_CFAC90: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAC95: FFreeStr var_13C = ""
  loc_CFAC9C: FFree1Ad var_100
  loc_CFAC9F: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFACB4: Branch loc_CFAEF5
  loc_CFACB7: LitStr "Municipalidad de Guaymallén"
  loc_CFACBA: LitStr "Municipalidad de Malargüe"
  loc_CFACBD: EqStr
  loc_CFACBF: BranchF loc_CFAD93
  loc_CFACC2: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, concat(concepto.IngrConc,'-', tmp_tribu.CodiConc) CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFACC5: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFACC8: ConcatStr
  loc_CFACC9: CVarStr var_170
  loc_CFACCC: FLdPr Me
  loc_CFACCF: VCallAd Control_ID_DesdeMsk
  loc_CFACD2: FStAdFunc var_100
  loc_CFACD5: FLdPr var_100
  loc_CFACD8: LateIdLdVar var_114 DispID_15 0
  loc_CFACDF: CStrVarTmp
  loc_CFACE0: CVarStr var_124
  loc_CFACE3: FLdRfVar var_134
  loc_CFACE6: ImpAdCallFPR4  = Year()
  loc_CFACEB: FLdRfVar var_134
  loc_CFACEE: ConcatVar var_180
  loc_CFACF2: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFACF7: ConcatVar var_190
  loc_CFACFB: LitVarStr var_FC, " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CFAD00: ConcatVar var_1A0
  loc_CFAD04: FLdPr Me
  loc_CFAD07: VCallAd Control_ID_DesdeMsk
  loc_CFAD0A: FStAdFunc var_1A4
  loc_CFAD0D: FLdPr var_1A4
  loc_CFAD10: LateIdLdVar var_1B4 DispID_15 0
  loc_CFAD17: CStrVarTmp
  loc_CFAD18: CVarStr var_1C4
  loc_CFAD1B: FLdRfVar var_1E4
  loc_CFAD1E: ImpAdCallFPR4  = Year()
  loc_CFAD23: FLdRfVar var_1E4
  loc_CFAD26: ConcatVar var_1F4
  loc_CFAD2A: LitVarStr var_1D4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CFAD2F: ConcatVar var_204
  loc_CFAD33: LitVarStr var_214, " AND MID(cuentacontable.CodiTicu,1,1) = 5"
  loc_CFAD38: ConcatVar var_224
  loc_CFAD3C: LitVarStr var_258, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFAD41: ConcatVar var_238
  loc_CFAD45: LitVarStr var_298, " WHERE TotaCtct > 0"
  loc_CFAD4A: ConcatVar var_248
  loc_CFAD4E: LitVarStr var_2B8, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFAD53: ConcatVar var_268
  loc_CFAD57: CStrVarVal var_13C
  loc_CFAD5B: FLdPr var_138
  loc_CFAD5E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAD63: FFree1Str var_13C
  loc_CFAD66: FFreeAd var_100 = ""
  loc_CFAD6D: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_238 = "": var_248 = ""
  loc_CFAD90: Branch loc_CFAEF5
  loc_CFAD93: LitStr "Municipalidad de Guaymallén"
  loc_CFAD96: LitStr "Municipalidad de San Martin"
  loc_CFAD99: EqStr
  loc_CFAD9B: BranchF loc_CFAE27
  loc_CFAD9E: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct "
  loc_CFADA1: LitStr " FROM tmp_tribu "
  loc_CFADA4: ConcatStr
  loc_CFADA5: FStStrNoPop var_13C
  loc_CFADA8: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFADAB: ConcatStr
  loc_CFADAC: CVarStr var_170
  loc_CFADAF: FLdPr Me
  loc_CFADB2: VCallAd Control_ID_DesdeMsk
  loc_CFADB5: FStAdFunc var_100
  loc_CFADB8: FLdPr var_100
  loc_CFADBB: LateIdLdVar var_114 DispID_15 0
  loc_CFADC2: CStrVarTmp
  loc_CFADC3: CVarStr var_124
  loc_CFADC6: FLdRfVar var_134
  loc_CFADC9: ImpAdCallFPR4  = Year()
  loc_CFADCE: FLdRfVar var_134
  loc_CFADD1: ConcatVar var_180
  loc_CFADD5: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc"
  loc_CFADDA: ConcatVar var_190
  loc_CFADDE: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFADE3: ConcatVar var_1A0
  loc_CFADE7: LitVarStr var_1D4, " WHERE TotaCtct > 0"
  loc_CFADEC: ConcatVar var_1B4
  loc_CFADF0: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFADF5: ConcatVar var_1C4
  loc_CFADF9: CStrVarVal var_140
  loc_CFADFD: FLdPr var_138
  loc_CFAE00: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAE05: FFreeStr var_13C = ""
  loc_CFAE0C: FFree1Ad var_100
  loc_CFAE0F: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFAE24: Branch loc_CFAEF5
  loc_CFAE27: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFAE2A: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFAE2D: ConcatStr
  loc_CFAE2E: CVarStr var_170
  loc_CFAE31: FLdPr Me
  loc_CFAE34: VCallAd Control_ID_DesdeMsk
  loc_CFAE37: FStAdFunc var_100
  loc_CFAE3A: FLdPr var_100
  loc_CFAE3D: LateIdLdVar var_114 DispID_15 0
  loc_CFAE44: CStrVarTmp
  loc_CFAE45: CVarStr var_124
  loc_CFAE48: FLdRfVar var_134
  loc_CFAE4B: ImpAdCallFPR4  = Year()
  loc_CFAE50: FLdRfVar var_134
  loc_CFAE53: ConcatVar var_180
  loc_CFAE57: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFAE5C: ConcatVar var_190
  loc_CFAE60: LitVarStr var_FC, " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CFAE65: ConcatVar var_1A0
  loc_CFAE69: FLdPr Me
  loc_CFAE6C: VCallAd Control_ID_DesdeMsk
  loc_CFAE6F: FStAdFunc var_1A4
  loc_CFAE72: FLdPr var_1A4
  loc_CFAE75: LateIdLdVar var_1B4 DispID_15 0
  loc_CFAE7C: CStrVarTmp
  loc_CFAE7D: CVarStr var_1C4
  loc_CFAE80: FLdRfVar var_1E4
  loc_CFAE83: ImpAdCallFPR4  = Year()
  loc_CFAE88: FLdRfVar var_1E4
  loc_CFAE8B: ConcatVar var_1F4
  loc_CFAE8F: LitVarStr var_1D4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CFAE94: ConcatVar var_204
  loc_CFAE98: LitVarStr var_214, " AND MID(cuentacontable.CodiTicu,1,1) = 5"
  loc_CFAE9D: ConcatVar var_224
  loc_CFAEA1: LitVarStr var_258, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFAEA6: ConcatVar var_238
  loc_CFAEAA: LitVarStr var_298, " WHERE TotaCtct > 0"
  loc_CFAEAF: ConcatVar var_248
  loc_CFAEB3: LitVarStr var_2B8, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFAEB8: ConcatVar var_268
  loc_CFAEBC: CStrVarVal var_13C
  loc_CFAEC0: FLdPr var_138
  loc_CFAEC3: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFAEC8: FFree1Str var_13C
  loc_CFAECB: FFreeAd var_100 = ""
  loc_CFAED2: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_238 = "": var_248 = ""
  loc_CFAEF5: FLdRfVar var_A48
  loc_CFAEF8: FLdPr var_138
  loc_CFAEFB: from_stack_1 = clsctacte.RecordCount
  loc_CFAF00: ILdRf var_A48
  loc_CFAF03: LitI4 0
  loc_CFAF08: EqI4
  loc_CFAF09: BranchF loc_CFAF17
  loc_CFAF0C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CFAF0F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CFAF14: Branch loc_CFBDAA
  loc_CFAF17: FLdRfVar var_A48
  loc_CFAF1A: FLdPr var_138
  loc_CFAF1D: from_stack_1 = clsctacte.RecordCount
  loc_CFAF22: ILdRf var_A48
  loc_CFAF25: LitI4 0
  loc_CFAF2A: GtI4
  loc_CFAF2B: BranchF loc_CFB46E
  loc_CFAF2E: FLdPr var_138
  loc_CFAF31: Call clsctacte.MoveFirst()
  loc_CFAF36: FLdRfVar var_102
  loc_CFAF39: FLdPr Me
  loc_CFAF3C: MemLdRfVar from_stack_1.global_92
  loc_CFAF3F: NewIfNullPr clsctacte
  loc_CFAF42: from_stack_1 = clsctacte.EOF
  loc_CFAF47: FLdI2 var_102
  loc_CFAF4A: NotI4
  loc_CFAF4B: BranchF loc_CFB46E
  loc_CFAF4E: FLdRfVar var_114
  loc_CFAF51: FLdRfVar var_228
  loc_CFAF54: LitVarStr var_EC, "Orden"
  loc_CFAF59: PopAdLdVar
  loc_CFAF5A: FLdRfVar var_1A4
  loc_CFAF5D: FLdRfVar var_100
  loc_CFAF60: FLdPr var_138
  loc_CFAF63: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFAF68: FLdPr var_100
  loc_CFAF6B:  = Me.Fields
  loc_CFAF70: FLdPr var_1A4
  loc_CFAF73: from_stack_2 = Me.Item(from_stack_1)
  loc_CFAF78: FLdPr var_228
  loc_CFAF7B:  = Me.Value
  loc_CFAF80: FLdRfVar var_114
  loc_CFAF83: FnCByteVar
  loc_CFAF85: CI2UI1
  loc_CFAF87: LitI2_Byte 0
  loc_CFAF89: EqI2
  loc_CFAF8A: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFAF93: FFree1Var var_114 = ""
  loc_CFAF96: BranchF loc_CFB07D
  loc_CFAF99: LitStr "SELECT * FROM tmp_tribu "
  loc_CFAF9C: LitStr " WHERE CodiEnre = "
  loc_CFAF9F: ConcatStr
  loc_CFAFA0: CVarStr var_124
  loc_CFAFA3: FLdRfVar var_114
  loc_CFAFA6: FLdRfVar var_228
  loc_CFAFA9: LitVarStr var_EC, "CodiEnre"
  loc_CFAFAE: PopAdLdVar
  loc_CFAFAF: FLdRfVar var_1A4
  loc_CFAFB2: FLdRfVar var_100
  loc_CFAFB5: FLdPr var_138
  loc_CFAFB8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFAFBD: FLdPr var_100
  loc_CFAFC0:  = Me.Fields
  loc_CFAFC5: FLdPr var_1A4
  loc_CFAFC8: from_stack_2 = Me.Item(from_stack_1)
  loc_CFAFCD: FLdPr var_228
  loc_CFAFD0:  = Me.Value
  loc_CFAFD5: FLdRfVar var_114
  loc_CFAFD8: ConcatVar var_134
  loc_CFAFDC: LitVarStr var_FC, " AND Orden = 1"
  loc_CFAFE1: ConcatVar var_170
  loc_CFAFE5: LitVarStr var_1D4, " AND TotaCtct > 0"
  loc_CFAFEA: ConcatVar var_180
  loc_CFAFEE: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFAFF3: ConcatVar var_190
  loc_CFAFF7: CStrVarVal var_13C
  loc_CFAFFB: FLdPr Me
  loc_CFAFFE: MemLdRfVar from_stack_1.global_96
  loc_CFB001: NewIfNullPr clsctacte
  loc_CFB004: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB009: FFree1Str var_13C
  loc_CFB00C: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFB015: FFreeVar var_124 = "": var_114 = "": var_134 = "": var_170 = "": var_180 = ""
  loc_CFB024: FLdRfVar var_A48
  loc_CFB027: FLdPr Me
  loc_CFB02A: MemLdRfVar from_stack_1.global_96
  loc_CFB02D: NewIfNullPr clsctacte
  loc_CFB030: from_stack_1 = clsctacte.RecordCount
  loc_CFB035: ILdRf var_A48
  loc_CFB038: LitI4 0
  loc_CFB03D: GtI4
  loc_CFB03E: BranchF loc_CFB059
  loc_CFB041: FLdRfVar var_A48
  loc_CFB044: FLdPr Me
  loc_CFB047: MemLdRfVar from_stack_1.global_96
  loc_CFB04A: NewIfNullPr clsctacte
  loc_CFB04D: from_stack_1 = clsctacte.RecordCount
  loc_CFB052: ILdRf var_A48
  loc_CFB055: CR8I4
  loc_CFB056: FStFPR8 var_BC
  loc_CFB059: LitI2_Byte 0
  loc_CFB05B: CR8I2
  loc_CFB05C: FStFPR8 var_AC
  loc_CFB05F: LitI2_Byte 0
  loc_CFB061: CR8I2
  loc_CFB062: FStFPR8 var_B4
  loc_CFB065: LitI2_Byte 0
  loc_CFB067: CR8I2
  loc_CFB068: FStFPR8 var_94
  loc_CFB06B: LitI2_Byte 0
  loc_CFB06D: CR8I2
  loc_CFB06E: FStFPR8 var_9C
  loc_CFB071: LitI2_Byte 0
  loc_CFB073: CR8I2
  loc_CFB074: FStFPR8 var_A4
  loc_CFB077: LitI2_Byte 0
  loc_CFB079: CR8I2
  loc_CFB07A: FStFPR8 var_C4
  loc_CFB07D: FLdRfVar var_114
  loc_CFB080: FLdRfVar var_228
  loc_CFB083: LitVarStr var_EC, "Orden"
  loc_CFB088: PopAdLdVar
  loc_CFB089: FLdRfVar var_1A4
  loc_CFB08C: FLdRfVar var_100
  loc_CFB08F: FLdPr var_138
  loc_CFB092: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB097: FLdPr var_100
  loc_CFB09A:  = Me.Fields
  loc_CFB09F: FLdPr var_1A4
  loc_CFB0A2: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB0A7: FLdPr var_228
  loc_CFB0AA:  = Me.Value
  loc_CFB0AF: FLdRfVar var_114
  loc_CFB0B2: FnCByteVar
  loc_CFB0B4: CI2UI1
  loc_CFB0B6: LitI2_Byte 0
  loc_CFB0B8: EqI2
  loc_CFB0B9: FLdRfVar var_124
  loc_CFB0BC: FLdRfVar var_414
  loc_CFB0BF: LitVarStr var_FC, "ComiCtct"
  loc_CFB0C4: PopAdLdVar
  loc_CFB0C5: FLdRfVar var_390
  loc_CFB0C8: FLdRfVar var_30C
  loc_CFB0CB: FLdPr var_138
  loc_CFB0CE: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB0D3: FLdPr var_30C
  loc_CFB0D6:  = Me.Fields
  loc_CFB0DB: FLdPr var_390
  loc_CFB0DE: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB0E3: FLdPr var_414
  loc_CFB0E6:  = Me.Value
  loc_CFB0EB: FLdRfVar var_124
  loc_CFB0EE: FnCDblVar
  loc_CFB0F0: LitI2_Byte 0
  loc_CFB0F2: CR8I2
  loc_CFB0F3: GtR4
  loc_CFB0F4: AndI4
  loc_CFB0F5: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = ""
  loc_CFB104: FFreeVar var_114 = ""
  loc_CFB10B: BranchF loc_CFB19A
  loc_CFB10E: FLdRfVar var_114
  loc_CFB111: FLdRfVar var_228
  loc_CFB114: LitVarStr var_EC, "ComiCtct"
  loc_CFB119: PopAdLdVar
  loc_CFB11A: FLdRfVar var_1A4
  loc_CFB11D: FLdRfVar var_100
  loc_CFB120: FLdPr var_138
  loc_CFB123: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB128: FLdPr var_100
  loc_CFB12B:  = Me.Fields
  loc_CFB130: FLdPr var_1A4
  loc_CFB133: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB138: FLdPr var_228
  loc_CFB13B:  = Me.Value
  loc_CFB140: FLdRfVar var_114
  loc_CFB143: FnCDblVar
  loc_CFB145: FStFPR8 var_AC
  loc_CFB148: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFB151: FFree1Var var_114 = ""
  loc_CFB154: FLdRfVar var_114
  loc_CFB157: FLdRfVar var_228
  loc_CFB15A: LitVarStr var_EC, "TotaCtct"
  loc_CFB15F: PopAdLdVar
  loc_CFB160: FLdRfVar var_1A4
  loc_CFB163: FLdRfVar var_100
  loc_CFB166: FLdPr var_138
  loc_CFB169: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB16E: FLdPr var_100
  loc_CFB171:  = Me.Fields
  loc_CFB176: FLdPr var_1A4
  loc_CFB179: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB17E: FLdPr var_228
  loc_CFB181:  = Me.Value
  loc_CFB186: FLdRfVar var_114
  loc_CFB189: FnCDblVar
  loc_CFB18B: FStFPR8 var_B4
  loc_CFB18E: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFB197: FFree1Var var_114 = ""
  loc_CFB19A: FLdRfVar var_114
  loc_CFB19D: FLdRfVar var_228
  loc_CFB1A0: LitVarStr var_EC, "Orden"
  loc_CFB1A5: PopAdLdVar
  loc_CFB1A6: FLdRfVar var_1A4
  loc_CFB1A9: FLdRfVar var_100
  loc_CFB1AC: FLdPr var_138
  loc_CFB1AF: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB1B4: FLdPr var_100
  loc_CFB1B7:  = Me.Fields
  loc_CFB1BC: FLdPr var_1A4
  loc_CFB1BF: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB1C4: FLdPr var_228
  loc_CFB1C7:  = Me.Value
  loc_CFB1CC: FLdRfVar var_114
  loc_CFB1CF: FnCByteVar
  loc_CFB1D1: CI2UI1
  loc_CFB1D3: LitI2_Byte 1
  loc_CFB1D5: EqI2
  loc_CFB1D6: FLdFPR8 var_AC
  loc_CFB1D9: LitI2_Byte 0
  loc_CFB1DB: CR8I2
  loc_CFB1DC: NeR8
  loc_CFB1DD: AndI4
  loc_CFB1DE: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFB1E7: FFree1Var var_114 = ""
  loc_CFB1EA: BranchF loc_CFB31B
  loc_CFB1ED: FLdRfVar var_114
  loc_CFB1F0: FLdRfVar var_228
  loc_CFB1F3: LitVarStr var_EC, "TotaCtct"
  loc_CFB1F8: PopAdLdVar
  loc_CFB1F9: FLdRfVar var_1A4
  loc_CFB1FC: FLdRfVar var_100
  loc_CFB1FF: FLdPr var_138
  loc_CFB202: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB207: FLdPr var_100
  loc_CFB20A:  = Me.Fields
  loc_CFB20F: FLdPr var_1A4
  loc_CFB212: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB217: FLdPr var_228
  loc_CFB21A:  = Me.Value
  loc_CFB21F: LitI4 2
  loc_CFB224: FLdRfVar var_114
  loc_CFB227: FnCDblVar
  loc_CFB229: LitI2_Byte &H64
  loc_CFB22B: CR8I2
  loc_CFB22C: MulR8
  loc_CFB22D: FLdFPR8 var_B4
  loc_CFB230: DivR8
  loc_CFB231: CVarR8
  loc_CFB235: FLdRfVar var_134
  loc_CFB238: ImpAdCallFPR4  = Round(, )
  loc_CFB23D: FLdRfVar var_134
  loc_CFB240: CR4Var
  loc_CFB241: FStFPR8 var_94
  loc_CFB244: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFB24D: FFreeVar var_114 = "": var_124 = ""
  loc_CFB256: LitI4 2
  loc_CFB25B: FLdFPR8 var_AC
  loc_CFB25E: FnCDblR8
  loc_CFB260: FLdFPR8 var_94
  loc_CFB263: MulR8
  loc_CFB264: LitI2_Byte &H64
  loc_CFB266: CR8I2
  loc_CFB267: DivR8
  loc_CFB268: CVarR8
  loc_CFB26C: FLdRfVar var_124
  loc_CFB26F: ImpAdCallFPR4  = Round(, )
  loc_CFB274: FLdRfVar var_124
  loc_CFB277: CR4Var
  loc_CFB278: FStFPR8 var_9C
  loc_CFB27B: FFreeVar var_114 = ""
  loc_CFB282: FLdFPR8 var_A4
  loc_CFB285: FLdFPR8 var_9C
  loc_CFB288: AddR8
  loc_CFB289: FStFPR8 var_A4
  loc_CFB28C: FLdFPR8 var_C4
  loc_CFB28F: LitI2_Byte 1
  loc_CFB291: CR8I2
  loc_CFB292: AddR8
  loc_CFB293: FStFPR8 var_C4
  loc_CFB296: FLdFPR8 var_BC
  loc_CFB299: FLdFPR8 var_C4
  loc_CFB29C: EqR4
  loc_CFB29D: BranchF loc_CFB31B
  loc_CFB2A0: FLdFPR8 var_AC
  loc_CFB2A3: FLdFPR8 var_A4
  loc_CFB2A6: GtR4
  loc_CFB2A7: BranchF loc_CFB2E0
  loc_CFB2AA: FLdFPR8 var_9C
  loc_CFB2AD: CVarR8
  loc_CFB2B1: LitI4 2
  loc_CFB2B6: FLdFPR8 var_AC
  loc_CFB2B9: FLdFPR8 var_A4
  loc_CFB2BC: SubR4
  loc_CFB2BD: CVarR8
  loc_CFB2C1: FLdRfVar var_124
  loc_CFB2C4: ImpAdCallFPR4  = Round(, )
  loc_CFB2C9: FLdRfVar var_124
  loc_CFB2CC: AddVar var_134
  loc_CFB2D0: CR4Var
  loc_CFB2D1: FStFPR8 var_9C
  loc_CFB2D4: FFreeVar var_114 = "": var_124 = ""
  loc_CFB2DD: Branch loc_CFB31B
  loc_CFB2E0: FLdFPR8 var_AC
  loc_CFB2E3: FLdFPR8 var_A4
  loc_CFB2E6: LtR8
  loc_CFB2E7: BranchF loc_CFB31B
  loc_CFB2EA: FLdFPR8 var_9C
  loc_CFB2ED: CVarR8
  loc_CFB2F1: LitI4 2
  loc_CFB2F6: FLdFPR8 var_A4
  loc_CFB2F9: FLdFPR8 var_AC
  loc_CFB2FC: SubR4
  loc_CFB2FD: CVarR8
  loc_CFB301: FLdRfVar var_124
  loc_CFB304: ImpAdCallFPR4  = Round(, )
  loc_CFB309: FLdRfVar var_124
  loc_CFB30C: SubVar var_134
  loc_CFB310: CR4Var
  loc_CFB311: FStFPR8 var_9C
  loc_CFB314: FFreeVar var_114 = ""
  loc_CFB31B: LitStr "UPDATE tmp_tribu SET ComiCtct = "
  loc_CFB31E: LitI4 0
  loc_CFB323: LitI4 -1
  loc_CFB328: LitI4 1
  loc_CFB32D: LitStr "."
  loc_CFB330: LitStr ","
  loc_CFB333: FLdFPR8 var_9C
  loc_CFB336: CStrR8
  loc_CFB338: FStStrNoPop var_13C
  loc_CFB33B: ImpAdCallI2 Replace(, , , , , )
  loc_CFB340: FStStrNoPop var_140
  loc_CFB343: ConcatStr
  loc_CFB344: FStStrNoPop var_144
  loc_CFB347: LitStr " WHERE CodiEnre = "
  loc_CFB34A: ConcatStr
  loc_CFB34B: CVarStr var_124
  loc_CFB34E: FLdRfVar var_114
  loc_CFB351: FLdRfVar var_228
  loc_CFB354: LitVarStr var_EC, "CodiEnre"
  loc_CFB359: PopAdLdVar
  loc_CFB35A: FLdRfVar var_1A4
  loc_CFB35D: FLdRfVar var_100
  loc_CFB360: FLdPr var_138
  loc_CFB363: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB368: FLdPr var_100
  loc_CFB36B:  = Me.Fields
  loc_CFB370: FLdPr var_1A4
  loc_CFB373: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB378: FLdPr var_228
  loc_CFB37B:  = Me.Value
  loc_CFB380: FLdRfVar var_114
  loc_CFB383: ConcatVar var_134
  loc_CFB387: LitVarStr var_FC, " AND Orden = "
  loc_CFB38C: ConcatVar var_170
  loc_CFB390: FLdRfVar var_180
  loc_CFB393: FLdRfVar var_414
  loc_CFB396: LitVarStr var_1D4, "Orden"
  loc_CFB39B: PopAdLdVar
  loc_CFB39C: FLdRfVar var_390
  loc_CFB39F: FLdRfVar var_30C
  loc_CFB3A2: FLdPr var_138
  loc_CFB3A5: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB3AA: FLdPr var_30C
  loc_CFB3AD:  = Me.Fields
  loc_CFB3B2: FLdPr var_390
  loc_CFB3B5: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB3BA: FLdPr var_414
  loc_CFB3BD:  = Me.Value
  loc_CFB3C2: FLdRfVar var_180
  loc_CFB3C5: ConcatVar var_190
  loc_CFB3C9: LitVarStr var_214, " AND CodiConc = '"
  loc_CFB3CE: ConcatVar var_1A0
  loc_CFB3D2: FLdRfVar var_1B4
  loc_CFB3D5: FLdRfVar var_5E0
  loc_CFB3D8: LitVarStr var_258, "CodiConc"
  loc_CFB3DD: PopAdLdVar
  loc_CFB3DE: FLdRfVar var_55C
  loc_CFB3E1: FLdRfVar var_4D8
  loc_CFB3E4: FLdPr var_138
  loc_CFB3E7: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB3EC: FLdPr var_4D8
  loc_CFB3EF:  = Me.Fields
  loc_CFB3F4: FLdPr var_55C
  loc_CFB3F7: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB3FC: FLdPr var_5E0
  loc_CFB3FF:  = Me.Value
  loc_CFB404: FLdRfVar var_1B4
  loc_CFB407: ConcatVar var_1C4
  loc_CFB40B: LitVarStr var_298, "'"
  loc_CFB410: ConcatVar var_1E4
  loc_CFB414: CStrVarVal var_148
  loc_CFB418: FLdPr Me
  loc_CFB41B: MemLdRfVar from_stack_1.global_100
  loc_CFB41E: NewIfNullPr clsctacte
  loc_CFB421: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB426: FFreeStr var_13C = "": var_140 = "": var_144 = ""
  loc_CFB431: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = "": var_414 = "": var_4D8 = "": var_55C = ""
  loc_CFB446: FFreeVar var_124 = "": var_114 = "": var_134 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = "": var_1C4 = ""
  loc_CFB45D: FLdPr Me
  loc_CFB460: MemLdRfVar from_stack_1.global_92
  loc_CFB463: NewIfNullPr clsctacte
  loc_CFB466: Call clsctacte.MoveSiguiente()
  loc_CFB46B: Branch loc_CFAF36
  loc_CFB46E: LitNothing
  loc_CFB470: FStAd var_138 
  loc_CFB474: FLdPr Me
  loc_CFB477: MemLdRfVar from_stack_1.global_92
  loc_CFB47A: NewIfNullAd
  loc_CFB47D: FStAd var_A4C 
  loc_CFB481: LitStr "Municipalidad de Guaymallén"
  loc_CFB484: LitStr "Municipalidad de Rivadavia"
  loc_CFB487: EqStr
  loc_CFB489: BranchF loc_CFB50A
  loc_CFB48C: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFB48F: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFB492: ConcatStr
  loc_CFB493: CVarStr var_170
  loc_CFB496: FLdPr Me
  loc_CFB499: VCallAd Control_ID_DesdeMsk
  loc_CFB49C: FStAdFunc var_100
  loc_CFB49F: FLdPr var_100
  loc_CFB4A2: LateIdLdVar var_114 DispID_15 0
  loc_CFB4A9: CStrVarTmp
  loc_CFB4AA: CVarStr var_124
  loc_CFB4AD: FLdRfVar var_134
  loc_CFB4B0: ImpAdCallFPR4  = Year()
  loc_CFB4B5: FLdRfVar var_134
  loc_CFB4B8: ConcatVar var_180
  loc_CFB4BC: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFB4C1: ConcatVar var_190
  loc_CFB4C5: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFB4CA: ConcatVar var_1A0
  loc_CFB4CE: LitVarStr var_1D4, " WHERE TotaCtct > 0 AND Orden = 1"
  loc_CFB4D3: ConcatVar var_1B4
  loc_CFB4D7: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFB4DC: ConcatVar var_1C4
  loc_CFB4E0: CStrVarVal var_13C
  loc_CFB4E4: FLdPr var_A4C
  loc_CFB4E7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB4EC: FFree1Str var_13C
  loc_CFB4EF: FFree1Ad var_100
  loc_CFB4F2: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFB507: Branch loc_CFB7C6
  loc_CFB50A: LitStr "Municipalidad de Guaymallén"
  loc_CFB50D: LitStr "Municipalidad de Guaymallén"
  loc_CFB510: EqStr
  loc_CFB512: BranchF loc_CFB593
  loc_CFB515: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFB518: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFB51B: ConcatStr
  loc_CFB51C: CVarStr var_170
  loc_CFB51F: FLdPr Me
  loc_CFB522: VCallAd Control_ID_DesdeMsk
  loc_CFB525: FStAdFunc var_100
  loc_CFB528: FLdPr var_100
  loc_CFB52B: LateIdLdVar var_114 DispID_15 0
  loc_CFB532: CStrVarTmp
  loc_CFB533: CVarStr var_124
  loc_CFB536: FLdRfVar var_134
  loc_CFB539: ImpAdCallFPR4  = Year()
  loc_CFB53E: FLdRfVar var_134
  loc_CFB541: ConcatVar var_180
  loc_CFB545: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFB54A: ConcatVar var_190
  loc_CFB54E: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFB553: ConcatVar var_1A0
  loc_CFB557: LitVarStr var_1D4, " WHERE TotaCtct > 0 AND Orden = 1"
  loc_CFB55C: ConcatVar var_1B4
  loc_CFB560: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFB565: ConcatVar var_1C4
  loc_CFB569: CStrVarVal var_13C
  loc_CFB56D: FLdPr var_A4C
  loc_CFB570: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB575: FFree1Str var_13C
  loc_CFB578: FFree1Ad var_100
  loc_CFB57B: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFB590: Branch loc_CFB7C6
  loc_CFB593: LitStr "Municipalidad de Guaymallén"
  loc_CFB596: LitStr "Municipalidad de Malargüe"
  loc_CFB599: EqStr
  loc_CFB59B: BranchF loc_CFB66F
  loc_CFB59E: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, concat(concepto.IngrConc,'-', tmp_tribu.CodiConc) CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFB5A1: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFB5A4: ConcatStr
  loc_CFB5A5: CVarStr var_170
  loc_CFB5A8: FLdPr Me
  loc_CFB5AB: VCallAd Control_ID_DesdeMsk
  loc_CFB5AE: FStAdFunc var_100
  loc_CFB5B1: FLdPr var_100
  loc_CFB5B4: LateIdLdVar var_114 DispID_15 0
  loc_CFB5BB: CStrVarTmp
  loc_CFB5BC: CVarStr var_124
  loc_CFB5BF: FLdRfVar var_134
  loc_CFB5C2: ImpAdCallFPR4  = Year()
  loc_CFB5C7: FLdRfVar var_134
  loc_CFB5CA: ConcatVar var_180
  loc_CFB5CE: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFB5D3: ConcatVar var_190
  loc_CFB5D7: LitVarStr var_FC, " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CFB5DC: ConcatVar var_1A0
  loc_CFB5E0: FLdPr Me
  loc_CFB5E3: VCallAd Control_ID_DesdeMsk
  loc_CFB5E6: FStAdFunc var_1A4
  loc_CFB5E9: FLdPr var_1A4
  loc_CFB5EC: LateIdLdVar var_1B4 DispID_15 0
  loc_CFB5F3: CStrVarTmp
  loc_CFB5F4: CVarStr var_1C4
  loc_CFB5F7: FLdRfVar var_1E4
  loc_CFB5FA: ImpAdCallFPR4  = Year()
  loc_CFB5FF: FLdRfVar var_1E4
  loc_CFB602: ConcatVar var_1F4
  loc_CFB606: LitVarStr var_1D4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CFB60B: ConcatVar var_204
  loc_CFB60F: LitVarStr var_214, " AND MID(cuentacontable.CodiTicu,1,1) = 5"
  loc_CFB614: ConcatVar var_224
  loc_CFB618: LitVarStr var_258, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFB61D: ConcatVar var_238
  loc_CFB621: LitVarStr var_298, " WHERE TotaCtct > 0 AND Orden = 1"
  loc_CFB626: ConcatVar var_248
  loc_CFB62A: LitVarStr var_2B8, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFB62F: ConcatVar var_268
  loc_CFB633: CStrVarVal var_13C
  loc_CFB637: FLdPr var_A4C
  loc_CFB63A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB63F: FFree1Str var_13C
  loc_CFB642: FFreeAd var_100 = ""
  loc_CFB649: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_238 = "": var_248 = ""
  loc_CFB66C: Branch loc_CFB7C6
  loc_CFB66F: LitStr "Municipalidad de Guaymallén"
  loc_CFB672: LitStr "Municipalidad de San Martin"
  loc_CFB675: EqStr
  loc_CFB677: BranchF loc_CFB6F8
  loc_CFB67A: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFB67D: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFB680: ConcatStr
  loc_CFB681: CVarStr var_170
  loc_CFB684: FLdPr Me
  loc_CFB687: VCallAd Control_ID_DesdeMsk
  loc_CFB68A: FStAdFunc var_100
  loc_CFB68D: FLdPr var_100
  loc_CFB690: LateIdLdVar var_114 DispID_15 0
  loc_CFB697: CStrVarTmp
  loc_CFB698: CVarStr var_124
  loc_CFB69B: FLdRfVar var_134
  loc_CFB69E: ImpAdCallFPR4  = Year()
  loc_CFB6A3: FLdRfVar var_134
  loc_CFB6A6: ConcatVar var_180
  loc_CFB6AA: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFB6AF: ConcatVar var_190
  loc_CFB6B3: LitVarStr var_FC, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFB6B8: ConcatVar var_1A0
  loc_CFB6BC: LitVarStr var_1D4, " WHERE TotaCtct > 0 AND Orden = 1"
  loc_CFB6C1: ConcatVar var_1B4
  loc_CFB6C5: LitVarStr var_214, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFB6CA: ConcatVar var_1C4
  loc_CFB6CE: CStrVarVal var_13C
  loc_CFB6D2: FLdPr var_A4C
  loc_CFB6D5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB6DA: FFree1Str var_13C
  loc_CFB6DD: FFree1Ad var_100
  loc_CFB6E0: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B4 = ""
  loc_CFB6F5: Branch loc_CFB7C6
  loc_CFB6F8: LitStr "SELECT tmp_tribu.CodiEnre, Orden, entereca.DetaEnre, tmp_tribu.CodiConc, concepto.DetaConc, tmp_tribu.TotaCtct, tmp_tribu.ComiCtct FROM tmp_tribu "
  loc_CFB6FB: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CFB6FE: ConcatStr
  loc_CFB6FF: CVarStr var_170
  loc_CFB702: FLdPr Me
  loc_CFB705: VCallAd Control_ID_DesdeMsk
  loc_CFB708: FStAdFunc var_100
  loc_CFB70B: FLdPr var_100
  loc_CFB70E: LateIdLdVar var_114 DispID_15 0
  loc_CFB715: CStrVarTmp
  loc_CFB716: CVarStr var_124
  loc_CFB719: FLdRfVar var_134
  loc_CFB71C: ImpAdCallFPR4  = Year()
  loc_CFB721: FLdRfVar var_134
  loc_CFB724: ConcatVar var_180
  loc_CFB728: LitVarStr var_EC, " AND concepto.CodiConc = tmp_tribu.CodiConc "
  loc_CFB72D: ConcatVar var_190
  loc_CFB731: LitVarStr var_FC, " LEFT JOIN infogov.cuentacontable ON cuentacontable.PeriInfo = "
  loc_CFB736: ConcatVar var_1A0
  loc_CFB73A: FLdPr Me
  loc_CFB73D: VCallAd Control_ID_DesdeMsk
  loc_CFB740: FStAdFunc var_1A4
  loc_CFB743: FLdPr var_1A4
  loc_CFB746: LateIdLdVar var_1B4 DispID_15 0
  loc_CFB74D: CStrVarTmp
  loc_CFB74E: CVarStr var_1C4
  loc_CFB751: FLdRfVar var_1E4
  loc_CFB754: ImpAdCallFPR4  = Year()
  loc_CFB759: FLdRfVar var_1E4
  loc_CFB75C: ConcatVar var_1F4
  loc_CFB760: LitVarStr var_1D4, " AND cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CFB765: ConcatVar var_204
  loc_CFB769: LitVarStr var_214, " AND MID(cuentacontable.CodiTicu,1,1) = 5"
  loc_CFB76E: ConcatVar var_224
  loc_CFB772: LitVarStr var_258, " LEFT JOIN infogov.entereca ON entereca.CodiEnre = tmp_tribu.codiEnre"
  loc_CFB777: ConcatVar var_238
  loc_CFB77B: LitVarStr var_298, " WHERE TotaCtct > 0 AND Orden = 1"
  loc_CFB780: ConcatVar var_248
  loc_CFB784: LitVarStr var_2B8, " ORDER BY CodiEnre, Orden, CodiConc "
  loc_CFB789: ConcatVar var_268
  loc_CFB78D: CStrVarVal var_13C
  loc_CFB791: FLdPr var_A4C
  loc_CFB794: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CFB799: FFree1Str var_13C
  loc_CFB79C: FFreeAd var_100 = ""
  loc_CFB7A3: FFreeVar var_114 = "": var_124 = "": var_170 = "": var_134 = "": var_180 = "": var_190 = "": var_1B4 = "": var_1C4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_238 = "": var_248 = ""
  loc_CFB7C6: FLdRfVar var_A48
  loc_CFB7C9: FLdPr var_A4C
  loc_CFB7CC: from_stack_1 = clsctacte.RecordCount
  loc_CFB7D1: ILdRf var_A48
  loc_CFB7D4: LitI4 0
  loc_CFB7D9: EqI4
  loc_CFB7DA: BranchF loc_CFB7E8
  loc_CFB7DD: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CFB7E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CFB7E5: Branch loc_CFBDAA
  loc_CFB7E8: LitI2_Byte 0
  loc_CFB7EA: CR8I2
  loc_CFB7EB: FStFPR8 var_CC
  loc_CFB7EE: LitI2_Byte 0
  loc_CFB7F0: CR8I2
  loc_CFB7F1: FStFPR8 var_D4
  loc_CFB7F4: LitI2_Byte 0
  loc_CFB7F6: CR8I2
  loc_CFB7F7: FStFPR8 var_DC
  loc_CFB7FA: LitI4 0
  loc_CFB7FF: LitI4 1
  loc_CFB804: FLdPr Me
  loc_CFB807: MemLdRfVar from_stack_1.global_112
  loc_CFB80A: Redim
  loc_CFB814: LitI4 0
  loc_CFB819: FLdRfVar var_A48
  loc_CFB81C: FLdPr var_A4C
  loc_CFB81F: from_stack_1 = clsctacte.RecordCount
  loc_CFB824: ILdRf var_A48
  loc_CFB827: FLdPr Me
  loc_CFB82A: MemLdRfVar from_stack_1.global_104
  loc_CFB82D: Redim
  loc_CFB837: FLdPr var_A4C
  loc_CFB83A: Call clsctacte.MoveFirst()
  loc_CFB83F: FLdRfVar var_A48
  loc_CFB842: FLdPr var_A4C
  loc_CFB845: from_stack_1 = clsctacte.RecordCount
  loc_CFB84A: ILdRf var_A48
  loc_CFB84D: CR8I4
  loc_CFB84E: CVarR4
  loc_CFB852: PopAdLdVar
  loc_CFB853: FLdPrThis
  loc_CFB854: VCallAd Control_ID_Pbar
  loc_CFB857: FStAdFunc var_100
  loc_CFB85A: FLdPr var_100
  loc_CFB85D: LateIdSt
  loc_CFB862: FFree1Ad var_100
  loc_CFB865: LitVar_TRUE var_EC
  loc_CFB868: PopAdLdVar
  loc_CFB869: FLdPrThis
  loc_CFB86A: VCallAd Control_ID_Pbar
  loc_CFB86D: FStAdFunc var_100
  loc_CFB870: FLdPr var_100
  loc_CFB873: LateIdSt
  loc_CFB878: FFree1Ad var_100
  loc_CFB87B: LitI4 1
  loc_CFB880: FLdPr Me
  loc_CFB883: MemLdRfVar from_stack_1.global_108
  loc_CFB886: FLdPr Me
  loc_CFB889: MemLdStr global_104
  loc_CFB88C: LitI2_Byte 1
  loc_CFB88E: FnUBound
  loc_CFB890: ForI4 var_A54
  loc_CFB896: FLdPr Me
  loc_CFB899: MemLdStr global_108
  loc_CFB89C: CR8I4
  loc_CFB89D: CVarR4
  loc_CFB8A1: PopAdLdVar
  loc_CFB8A2: FLdPrThis
  loc_CFB8A3: VCallAd Control_ID_Pbar
  loc_CFB8A6: FStAdFunc var_100
  loc_CFB8A9: FLdPr var_100
  loc_CFB8AC: LateIdSt
  loc_CFB8B1: FFree1Ad var_100
  loc_CFB8B4: FLdRfVar var_228
  loc_CFB8B7: LitVarStr var_EC, "Orden"
  loc_CFB8BC: PopAdLdVar
  loc_CFB8BD: FLdRfVar var_1A4
  loc_CFB8C0: FLdRfVar var_100
  loc_CFB8C3: FLdPr var_A4C
  loc_CFB8C6: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB8CB: FLdPr var_100
  loc_CFB8CE:  = Me.Fields
  loc_CFB8D3: FLdPr var_1A4
  loc_CFB8D6: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB8DB: LitI2_Byte 0
  loc_CFB8DD: LitVar_Missing var_124
  loc_CFB8E0: LitI2_Byte 0
  loc_CFB8E2: FLdZeroAd var_228
  loc_CFB8E5: CVarAd
  loc_CFB8E9: PopAdLdVar
  loc_CFB8EA: FLdPr Me
  loc_CFB8ED: MemLdStr global_108
  loc_CFB8F0: FLdPr Me
  loc_CFB8F3: MemLdStr global_104
  loc_CFB8F6: AryLock
  loc_CFB8F9: Ary1LdPr
  loc_CFB8FA: MemLdRfVar from_stack_1.global_0
  loc_CFB8FD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFB902: AryUnlock
  loc_CFB905: FFreeAd var_100 = ""
  loc_CFB90C: FFreeVar var_114 = ""
  loc_CFB913: FLdRfVar var_228
  loc_CFB916: LitVarStr var_EC, "CodiEnre"
  loc_CFB91B: PopAdLdVar
  loc_CFB91C: FLdRfVar var_1A4
  loc_CFB91F: FLdRfVar var_100
  loc_CFB922: FLdPr var_A4C
  loc_CFB925: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB92A: FLdPr var_100
  loc_CFB92D:  = Me.Fields
  loc_CFB932: FLdPr var_1A4
  loc_CFB935: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB93A: LitI2_Byte 0
  loc_CFB93C: LitVar_Missing var_124
  loc_CFB93F: LitI2_Byte 0
  loc_CFB941: FLdZeroAd var_228
  loc_CFB944: CVarAd
  loc_CFB948: PopAdLdVar
  loc_CFB949: FLdPr Me
  loc_CFB94C: MemLdStr global_108
  loc_CFB94F: FLdPr Me
  loc_CFB952: MemLdStr global_104
  loc_CFB955: AryLock
  loc_CFB958: Ary1LdPr
  loc_CFB959: MemLdRfVar from_stack_1.global_4
  loc_CFB95C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFB961: AryUnlock
  loc_CFB964: FFreeAd var_100 = ""
  loc_CFB96B: FFreeVar var_114 = ""
  loc_CFB972: FLdRfVar var_228
  loc_CFB975: LitVarStr var_EC, "DetaEnre"
  loc_CFB97A: PopAdLdVar
  loc_CFB97B: FLdRfVar var_1A4
  loc_CFB97E: FLdRfVar var_100
  loc_CFB981: FLdPr var_A4C
  loc_CFB984: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB989: FLdPr var_100
  loc_CFB98C:  = Me.Fields
  loc_CFB991: FLdPr var_1A4
  loc_CFB994: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB999: LitI2_Byte 0
  loc_CFB99B: LitVar_Missing var_124
  loc_CFB99E: LitI2_Byte 0
  loc_CFB9A0: FLdZeroAd var_228
  loc_CFB9A3: CVarAd
  loc_CFB9A7: PopAdLdVar
  loc_CFB9A8: FLdPr Me
  loc_CFB9AB: MemLdStr global_108
  loc_CFB9AE: FLdPr Me
  loc_CFB9B1: MemLdStr global_104
  loc_CFB9B4: AryLock
  loc_CFB9B7: Ary1LdPr
  loc_CFB9B8: MemLdRfVar from_stack_1.global_8
  loc_CFB9BB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFB9C0: AryUnlock
  loc_CFB9C3: FFreeAd var_100 = ""
  loc_CFB9CA: FFreeVar var_114 = ""
  loc_CFB9D1: FLdRfVar var_228
  loc_CFB9D4: LitVarStr var_EC, "CodiConc"
  loc_CFB9D9: PopAdLdVar
  loc_CFB9DA: FLdRfVar var_1A4
  loc_CFB9DD: FLdRfVar var_100
  loc_CFB9E0: FLdPr var_A4C
  loc_CFB9E3: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFB9E8: FLdPr var_100
  loc_CFB9EB:  = Me.Fields
  loc_CFB9F0: FLdPr var_1A4
  loc_CFB9F3: from_stack_2 = Me.Item(from_stack_1)
  loc_CFB9F8: LitI2_Byte 0
  loc_CFB9FA: LitVar_Missing var_124
  loc_CFB9FD: LitI2_Byte 0
  loc_CFB9FF: FLdZeroAd var_228
  loc_CFBA02: CVarAd
  loc_CFBA06: PopAdLdVar
  loc_CFBA07: FLdPr Me
  loc_CFBA0A: MemLdStr global_108
  loc_CFBA0D: FLdPr Me
  loc_CFBA10: MemLdStr global_104
  loc_CFBA13: AryLock
  loc_CFBA16: Ary1LdPr
  loc_CFBA17: MemLdRfVar from_stack_1.global_12
  loc_CFBA1A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBA1F: AryUnlock
  loc_CFBA22: FFreeAd var_100 = ""
  loc_CFBA29: FFreeVar var_114 = ""
  loc_CFBA30: FLdRfVar var_228
  loc_CFBA33: LitVarStr var_EC, "DetaConc"
  loc_CFBA38: PopAdLdVar
  loc_CFBA39: FLdRfVar var_1A4
  loc_CFBA3C: FLdRfVar var_100
  loc_CFBA3F: FLdPr var_A4C
  loc_CFBA42: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBA47: FLdPr var_100
  loc_CFBA4A:  = Me.Fields
  loc_CFBA4F: FLdPr var_1A4
  loc_CFBA52: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBA57: LitI2_Byte 0
  loc_CFBA59: LitVar_Missing var_124
  loc_CFBA5C: LitI2_Byte 0
  loc_CFBA5E: FLdZeroAd var_228
  loc_CFBA61: CVarAd
  loc_CFBA65: PopAdLdVar
  loc_CFBA66: FLdPr Me
  loc_CFBA69: MemLdStr global_108
  loc_CFBA6C: FLdPr Me
  loc_CFBA6F: MemLdStr global_104
  loc_CFBA72: AryLock
  loc_CFBA75: Ary1LdPr
  loc_CFBA76: MemLdRfVar from_stack_1.global_16
  loc_CFBA79: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBA7E: AryUnlock
  loc_CFBA81: FFreeAd var_100 = ""
  loc_CFBA88: FFreeVar var_114 = ""
  loc_CFBA8F: FLdRfVar var_228
  loc_CFBA92: LitVarStr var_EC, "TotaCtct"
  loc_CFBA97: PopAdLdVar
  loc_CFBA98: FLdRfVar var_1A4
  loc_CFBA9B: FLdRfVar var_100
  loc_CFBA9E: FLdPr var_A4C
  loc_CFBAA1: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBAA6: FLdPr var_100
  loc_CFBAA9:  = Me.Fields
  loc_CFBAAE: FLdPr var_1A4
  loc_CFBAB1: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBAB6: LitI2_Byte 0
  loc_CFBAB8: LitI4 1
  loc_CFBABD: FLdPr Me
  loc_CFBAC0: MemLdStr global_112
  loc_CFBAC3: AryLock
  loc_CFBAC6: Ary1LdPr
  loc_CFBAC7: MemLdRfVar from_stack_1.global_0
  loc_CFBACA: CVarRef
  loc_CFBACF: LitI2_Byte &HFF
  loc_CFBAD1: FLdZeroAd var_228
  loc_CFBAD4: CVarAd
  loc_CFBAD8: PopAdLdVar
  loc_CFBAD9: FLdPr Me
  loc_CFBADC: MemLdStr global_108
  loc_CFBADF: FLdPr Me
  loc_CFBAE2: MemLdStr global_104
  loc_CFBAE5: AryLock
  loc_CFBAE8: Ary1LdPr
  loc_CFBAE9: MemLdRfVar from_stack_1.global_20
  loc_CFBAEC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBAF1: AryUnlock
  loc_CFBAF4: AryUnlock
  loc_CFBAF7: FFreeAd var_100 = ""
  loc_CFBAFE: FFree1Var var_114 = ""
  loc_CFBB01: FLdRfVar var_228
  loc_CFBB04: LitVarStr var_EC, "ComiCtct"
  loc_CFBB09: PopAdLdVar
  loc_CFBB0A: FLdRfVar var_1A4
  loc_CFBB0D: FLdRfVar var_100
  loc_CFBB10: FLdPr var_A4C
  loc_CFBB13: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBB18: FLdPr var_100
  loc_CFBB1B:  = Me.Fields
  loc_CFBB20: FLdPr var_1A4
  loc_CFBB23: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBB28: LitI2_Byte 0
  loc_CFBB2A: LitI4 1
  loc_CFBB2F: FLdPr Me
  loc_CFBB32: MemLdStr global_112
  loc_CFBB35: AryLock
  loc_CFBB38: Ary1LdPr
  loc_CFBB39: MemLdRfVar from_stack_1.global_4
  loc_CFBB3C: CVarRef
  loc_CFBB41: LitI2_Byte &HFF
  loc_CFBB43: FLdZeroAd var_228
  loc_CFBB46: CVarAd
  loc_CFBB4A: PopAdLdVar
  loc_CFBB4B: FLdPr Me
  loc_CFBB4E: MemLdStr global_108
  loc_CFBB51: FLdPr Me
  loc_CFBB54: MemLdStr global_104
  loc_CFBB57: AryLock
  loc_CFBB5A: Ary1LdPr
  loc_CFBB5B: MemLdRfVar from_stack_1.global_24
  loc_CFBB5E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBB63: AryUnlock
  loc_CFBB66: AryUnlock
  loc_CFBB69: FFreeAd var_100 = ""
  loc_CFBB70: FFree1Var var_114 = ""
  loc_CFBB73: FLdRfVar var_114
  loc_CFBB76: FLdRfVar var_228
  loc_CFBB79: LitVarStr var_EC, "TotaCtct"
  loc_CFBB7E: PopAdLdVar
  loc_CFBB7F: FLdRfVar var_1A4
  loc_CFBB82: FLdRfVar var_100
  loc_CFBB85: FLdPr var_A4C
  loc_CFBB88: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBB8D: FLdPr var_100
  loc_CFBB90:  = Me.Fields
  loc_CFBB95: FLdPr var_1A4
  loc_CFBB98: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBB9D: FLdPr var_228
  loc_CFBBA0:  = Me.Value
  loc_CFBBA5: FLdRfVar var_124
  loc_CFBBA8: FLdRfVar var_414
  loc_CFBBAB: LitVarStr var_FC, "ComiCtct"
  loc_CFBBB0: PopAdLdVar
  loc_CFBBB1: FLdRfVar var_390
  loc_CFBBB4: FLdRfVar var_30C
  loc_CFBBB7: FLdPr var_A4C
  loc_CFBBBA: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBBBF: FLdPr var_30C
  loc_CFBBC2:  = Me.Fields
  loc_CFBBC7: FLdPr var_390
  loc_CFBBCA: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBBCF: FLdPr var_414
  loc_CFBBD2:  = Me.Value
  loc_CFBBD7: LitI2_Byte 0
  loc_CFBBD9: LitI4 1
  loc_CFBBDE: FLdPr Me
  loc_CFBBE1: MemLdStr global_112
  loc_CFBBE4: AryLock
  loc_CFBBE7: Ary1LdPr
  loc_CFBBE8: MemLdRfVar from_stack_1.global_8
  loc_CFBBEB: CVarRef
  loc_CFBBF0: LitI2_Byte &HFF
  loc_CFBBF2: FLdRfVar var_114
  loc_CFBBF5: FnCDblVar
  loc_CFBBF7: CVarR8
  loc_CFBBFB: FLdRfVar var_124
  loc_CFBBFE: SubVar var_134
  loc_CFBC02: PopAdLdVar
  loc_CFBC03: FLdPr Me
  loc_CFBC06: MemLdStr global_108
  loc_CFBC09: FLdPr Me
  loc_CFBC0C: MemLdStr global_104
  loc_CFBC0F: AryLock
  loc_CFBC12: Ary1LdPr
  loc_CFBC13: MemLdRfVar from_stack_1.global_28
  loc_CFBC16: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBC1B: AryUnlock
  loc_CFBC1E: AryUnlock
  loc_CFBC21: FFreeAd var_100 = "": var_1A4 = "": var_228 = "": var_30C = "": var_390 = ""
  loc_CFBC30: FFreeVar var_114 = ""
  loc_CFBC37: FLdFPR8 var_CC
  loc_CFBC3A: CVarR8
  loc_CFBC3E: FLdRfVar var_114
  loc_CFBC41: FLdRfVar var_228
  loc_CFBC44: LitVarStr var_EC, "TotaCtct"
  loc_CFBC49: PopAdLdVar
  loc_CFBC4A: FLdRfVar var_1A4
  loc_CFBC4D: FLdRfVar var_100
  loc_CFBC50: FLdPr var_A4C
  loc_CFBC53: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBC58: FLdPr var_100
  loc_CFBC5B:  = Me.Fields
  loc_CFBC60: FLdPr var_1A4
  loc_CFBC63: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBC68: FLdPr var_228
  loc_CFBC6B:  = Me.Value
  loc_CFBC70: FLdRfVar var_114
  loc_CFBC73: AddVar var_124
  loc_CFBC77: CR4Var
  loc_CFBC78: FStFPR8 var_CC
  loc_CFBC7B: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFBC84: FFreeVar var_114 = ""
  loc_CFBC8B: FLdFPR8 var_D4
  loc_CFBC8E: CVarR8
  loc_CFBC92: FLdRfVar var_114
  loc_CFBC95: FLdRfVar var_228
  loc_CFBC98: LitVarStr var_EC, "ComiCtct"
  loc_CFBC9D: PopAdLdVar
  loc_CFBC9E: FLdRfVar var_1A4
  loc_CFBCA1: FLdRfVar var_100
  loc_CFBCA4: FLdPr var_A4C
  loc_CFBCA7: from_stack_1v = clsctacte.RsFrmGet()
  loc_CFBCAC: FLdPr var_100
  loc_CFBCAF:  = Me.Fields
  loc_CFBCB4: FLdPr var_1A4
  loc_CFBCB7: from_stack_2 = Me.Item(from_stack_1)
  loc_CFBCBC: FLdPr var_228
  loc_CFBCBF:  = Me.Value
  loc_CFBCC4: FLdRfVar var_114
  loc_CFBCC7: AddVar var_124
  loc_CFBCCB: CR4Var
  loc_CFBCCC: FStFPR8 var_D4
  loc_CFBCCF: FFreeAd var_100 = "": var_1A4 = ""
  loc_CFBCD8: FFreeVar var_114 = ""
  loc_CFBCDF: LitI2_Byte 1
  loc_CFBCE1: PopTmpLdAd2 var_102
  loc_CFBCE4: FLdPr var_A4C
  loc_CFBCE7: Call clsctacte.Move(from_stack_1v)
  loc_CFBCEC: FLdPr Me
  loc_CFBCEF: MemLdRfVar from_stack_1.global_108
  loc_CFBCF2: NextI4 var_A54, loc_CFB896
  loc_CFBCF7: FLdFPR8 var_CC
  loc_CFBCFA: FLdFPR8 var_D4
  loc_CFBCFD: SubR4
  loc_CFBCFE: FStFPR8 var_DC
  loc_CFBD01: LitI2_Byte 0
  loc_CFBD03: LitVar_Missing var_114
  loc_CFBD06: LitI2_Byte &HFF
  loc_CFBD08: FLdFPR8 var_CC
  loc_CFBD0B: CVarR8
  loc_CFBD0F: PopAdLdVar
  loc_CFBD10: LitI4 1
  loc_CFBD15: FLdPr Me
  loc_CFBD18: MemLdStr global_112
  loc_CFBD1B: AryLock
  loc_CFBD1E: Ary1LdPr
  loc_CFBD1F: MemLdRfVar from_stack_1.global_0
  loc_CFBD22: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBD27: AryUnlock
  loc_CFBD2A: FFree1Var var_114 = ""
  loc_CFBD2D: LitI2_Byte 0
  loc_CFBD2F: LitVar_Missing var_114
  loc_CFBD32: LitI2_Byte &HFF
  loc_CFBD34: FLdFPR8 var_D4
  loc_CFBD37: CVarR8
  loc_CFBD3B: PopAdLdVar
  loc_CFBD3C: LitI4 1
  loc_CFBD41: FLdPr Me
  loc_CFBD44: MemLdStr global_112
  loc_CFBD47: AryLock
  loc_CFBD4A: Ary1LdPr
  loc_CFBD4B: MemLdRfVar from_stack_1.global_4
  loc_CFBD4E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBD53: AryUnlock
  loc_CFBD56: FFree1Var var_114 = ""
  loc_CFBD59: LitI2_Byte 0
  loc_CFBD5B: LitVar_Missing var_114
  loc_CFBD5E: LitI2_Byte &HFF
  loc_CFBD60: FLdFPR8 var_DC
  loc_CFBD63: CVarR8
  loc_CFBD67: PopAdLdVar
  loc_CFBD68: LitI4 1
  loc_CFBD6D: FLdPr Me
  loc_CFBD70: MemLdStr global_112
  loc_CFBD73: AryLock
  loc_CFBD76: Ary1LdPr
  loc_CFBD77: MemLdRfVar from_stack_1.global_8
  loc_CFBD7A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CFBD7F: AryUnlock
  loc_CFBD82: FFree1Var var_114 = ""
  loc_CFBD85: LitVar_FALSE
  loc_CFBD89: PopAdLdVar
  loc_CFBD8A: FLdPrThis
  loc_CFBD8B: VCallAd Control_ID_Pbar
  loc_CFBD8E: FStAdFunc var_100
  loc_CFBD91: FLdPr var_100
  loc_CFBD94: LateIdSt
  loc_CFBD99: FFree1Ad var_100
  loc_CFBD9C: LitNothing
  loc_CFBD9E: FStAd var_A4C 
  loc_CFBDA2: LitI2_Byte &HFF
  loc_CFBDA4: FLdPr Me
  loc_CFBDA7: MemStI2 bGenerado
  loc_CFBDAA: LitI4 0
  loc_CFBDAF: CI2I4
  loc_CFBDB0: FLdPr Me
  loc_CFBDB3: Me.MousePointer = from_stack_1
  loc_CFBDB8: LitVarStr var_EC, vbNullString
  loc_CFBDBD: PopAdLdVar
  loc_CFBDBE: FLdPr Me
  loc_CFBDC1: VCallAd Control_ID_statusBar
  loc_CFBDC4: FStAdFunc var_100
  loc_CFBDC7: FLdPr var_100
  loc_CFBDCA: LateIdSt
  loc_CFBDCF: FFree1Ad var_100
  loc_CFBDD2: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B9C244
  'Data Table: 4A6C60
  loc_B9BD08: OnErrorGoto loc_B9C1C5
  loc_B9BD0B: FLdPr Me
  loc_B9BD0E: VCallAd Control_ID_DesdeMsk
  loc_B9BD11: FStAdFunc var_100
  loc_B9BD14: FLdPr var_100
  loc_B9BD17: LateIdLdVar var_110 DispID_15 0
  loc_B9BD1E: CStrVarTmp
  loc_B9BD1F: CVarStr var_120
  loc_B9BD22: FLdRfVar var_130
  loc_B9BD25: ImpAdCallFPR4  = Month()
  loc_B9BD2A: FLdPr Me
  loc_B9BD2D: VCallAd Control_ID_DesdeMsk
  loc_B9BD30: FStAdFunc var_1D8
  loc_B9BD33: FLdPr var_1D8
  loc_B9BD36: LateIdLdVar var_1E8 DispID_15 0
  loc_B9BD3D: CStrVarTmp
  loc_B9BD3E: CVarStr var_1F8
  loc_B9BD41: FLdRfVar var_208
  loc_B9BD44: ImpAdCallFPR4  = Month()
  loc_B9BD49: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B9BD4E: FStStrNoPop var_88
  loc_B9BD51: LitStr "\Acuerdo 2988\"
  loc_B9BD54: ConcatStr
  loc_B9BD55: CVarStr var_CC
  loc_B9BD58: FLdPr Me
  loc_B9BD5B: VCallAd Control_ID_DesdeMsk
  loc_B9BD5E: FStAdFunc var_8C
  loc_B9BD61: FLdPr var_8C
  loc_B9BD64: LateIdLdVar var_9C DispID_15 0
  loc_B9BD6B: CStrVarTmp
  loc_B9BD6C: CVarStr var_AC
  loc_B9BD6F: FLdRfVar var_BC
  loc_B9BD72: ImpAdCallFPR4  = Year()
  loc_B9BD77: FLdRfVar var_BC
  loc_B9BD7A: ConcatVar var_DC
  loc_B9BD7E: LitVarStr var_EC, "\Mes "
  loc_B9BD83: ConcatVar var_FC
  loc_B9BD87: LitI4 1
  loc_B9BD8C: LitI4 1
  loc_B9BD91: LitVarStr var_140, "00"
  loc_B9BD96: FStVarCopyObj var_150
  loc_B9BD99: FLdRfVar var_150
  loc_B9BD9C: FLdRfVar var_130
  loc_B9BD9F: FLdRfVar var_160
  loc_B9BDA2: ImpAdCallFPR4  = Format(, )
  loc_B9BDA7: FLdRfVar var_160
  loc_B9BDAA: ConcatVar var_170
  loc_B9BDAE: LitVarStr var_180, "\"
  loc_B9BDB3: ConcatVar var_190
  loc_B9BDB7: FLdPr Me
  loc_B9BDBA: VCallAd Control_ID_DesdeMsk
  loc_B9BDBD: FStAdFunc var_194
  loc_B9BDC0: FLdPr var_194
  loc_B9BDC3: LateIdLdVar var_1A4 DispID_15 0
  loc_B9BDCA: CStrVarTmp
  loc_B9BDCB: CVarStr var_1B4
  loc_B9BDCE: FLdRfVar var_1C4
  loc_B9BDD1: ImpAdCallFPR4  = Year()
  loc_B9BDD6: FLdRfVar var_1C4
  loc_B9BDD9: ConcatVar var_1D4
  loc_B9BDDD: LitI4 1
  loc_B9BDE2: LitI4 1
  loc_B9BDE7: LitVarStr var_218, "00"
  loc_B9BDEC: FStVarCopyObj var_228
  loc_B9BDEF: FLdRfVar var_228
  loc_B9BDF2: FLdRfVar var_208
  loc_B9BDF5: FLdRfVar var_238
  loc_B9BDF8: ImpAdCallFPR4  = Format(, )
  loc_B9BDFD: FLdRfVar var_238
  loc_B9BE00: ConcatVar var_248
  loc_B9BE04: LitVarStr var_258, " - TotalFondoEntRec.txt"
  loc_B9BE09: ConcatVar var_268
  loc_B9BE0D: CStrVarTmp
  loc_B9BE0E: ImpAdStStr MemVar_D93030
  loc_B9BE12: FFree1Str var_88
  loc_B9BE15: FFreeAd var_8C = "": var_100 = "": var_194 = ""
  loc_B9BE20: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_120 = "": var_130 = "": var_150 = "": var_FC = "": var_160 = "": var_170 = "": var_1A4 = "": var_1B4 = "": var_190 = "": var_1C4 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1D4 = "": var_238 = "": var_248 = ""
  loc_B9BE53: ImpAdLdI4 MemVar_D93030
  loc_B9BE56: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B9BE5B: LitStr "	"
  loc_B9BE5E: FStStrCopy var_26C
  loc_B9BE61: LitVarStr var_EC, "266"
  loc_B9BE66: FLdPr Me
  loc_B9BE69: VCallAd Control_ID_DesdeMsk
  loc_B9BE6C: FStAdFunc var_8C
  loc_B9BE6F: FLdPr var_8C
  loc_B9BE72: LateIdLdVar var_9C DispID_15 0
  loc_B9BE79: CStrVarTmp
  loc_B9BE7A: CVarStr var_AC
  loc_B9BE7D: FLdRfVar var_BC
  loc_B9BE80: ImpAdCallFPR4  = Year()
  loc_B9BE85: FLdRfVar var_BC
  loc_B9BE88: ConcatVar var_CC
  loc_B9BE8C: LitVarStr var_140, "060204"
  loc_B9BE91: ConcatVar var_DC
  loc_B9BE95: CStrVarTmp
  loc_B9BE96: FStStr var_270
  loc_B9BE99: FFree1Ad var_8C
  loc_B9BE9C: FFreeVar var_9C = "": var_AC = "": var_BC = "": var_CC = ""
  loc_B9BEA9: FLdRfVar var_8C
  loc_B9BEAC: LitI2_Byte 0
  loc_B9BEAE: LitI2_Byte &HFF
  loc_B9BEB0: ImpAdLdI4 MemVar_D93030
  loc_B9BEB3: FLdPr Me
  loc_B9BEB6: MemLdRfVar from_stack_1.global_56
  loc_B9BEB9: NewIfNullPr IFileSystem3
  loc_B9BEBC: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B9BEC1: ILdRf var_8C
  loc_B9BEC4: FLdPr Me
  loc_B9BEC7: MemStVarAd
  loc_B9BECB: FFree1Ad var_8C
  loc_B9BECE: FLdPr Me
  loc_B9BED1: MemLdStr global_104
  loc_B9BED4: LitI2_Byte 1
  loc_B9BED6: FnUBound
  loc_B9BED8: LitI4 0
  loc_B9BEDD: EqI4
  loc_B9BEDE: BranchF loc_B9BF40
  loc_B9BEE1: LitI4 0
  loc_B9BEE6: LitI4 1
  loc_B9BEEB: FLdRfVar var_274
  loc_B9BEEE: Redim
  loc_B9BEF8: LitVarStr var_EC, "|"
  loc_B9BEFD: LitI4 0
  loc_B9BF02: ILdRf var_274
  loc_B9BF05: Ary1StVarCopy
  loc_B9BF07: LitVarStr var_140, "SIN MOVIMIENTO"
  loc_B9BF0C: LitI4 1
  loc_B9BF11: ILdRf var_274
  loc_B9BF14: Ary1StVarCopy
  loc_B9BF16: FLdRfVar var_274
  loc_B9BF19: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B9BF1E: FStStr var_88
  loc_B9BF21: FLdRfVar var_274
  loc_B9BF24: Erase
  loc_B9BF25: FLdZeroAd var_88
  loc_B9BF28: CVarStr var_9C
  loc_B9BF2B: PopAdLdVar
  loc_B9BF2C: FLdPr Me
  loc_B9BF2F: MemLdRfVar from_stack_1.global_76
  loc_B9BF32: LdPrVar
  loc_B9BF34: LateMemCall
  loc_B9BF3A: FFree1Var var_9C = ""
  loc_B9BF3D: Branch loc_B9C1B3
  loc_B9BF40: LitI4 0
  loc_B9BF45: LitI4 9
  loc_B9BF4A: FLdRfVar var_274
  loc_B9BF4D: Redim
  loc_B9BF57: LitVarStr var_EC, "|"
  loc_B9BF5C: LitI4 0
  loc_B9BF61: ILdRf var_274
  loc_B9BF64: Ary1StVarCopy
  loc_B9BF66: LitVarStr var_140, "PeriodoPresenta"
  loc_B9BF6B: LitI4 1
  loc_B9BF70: ILdRf var_274
  loc_B9BF73: Ary1StVarCopy
  loc_B9BF75: LitVarStr var_180, "ExpID"
  loc_B9BF7A: LitI4 2
  loc_B9BF7F: ILdRf var_274
  loc_B9BF82: Ary1StVarCopy
  loc_B9BF84: LitVarStr var_218, "EntidadCod"
  loc_B9BF89: LitI4 3
  loc_B9BF8E: ILdRf var_274
  loc_B9BF91: Ary1StVarCopy
  loc_B9BF93: LitVarStr var_258, "EntidadDet"
  loc_B9BF98: LitI4 4
  loc_B9BF9D: ILdRf var_274
  loc_B9BFA0: Ary1StVarCopy
  loc_B9BFA2: LitVarStr var_284, "ConceptoCod"
  loc_B9BFA7: LitI4 5
  loc_B9BFAC: ILdRf var_274
  loc_B9BFAF: Ary1StVarCopy
  loc_B9BFB1: LitVarStr var_294, "ConceptoDet"
  loc_B9BFB6: LitI4 6
  loc_B9BFBB: ILdRf var_274
  loc_B9BFBE: Ary1StVarCopy
  loc_B9BFC0: LitVarStr var_2A4, "TotalRendido"
  loc_B9BFC5: LitI4 7
  loc_B9BFCA: ILdRf var_274
  loc_B9BFCD: Ary1StVarCopy
  loc_B9BFCF: LitVarStr var_2B4, "ComiBco"
  loc_B9BFD4: LitI4 8
  loc_B9BFD9: ILdRf var_274
  loc_B9BFDC: Ary1StVarCopy
  loc_B9BFDE: LitVarStr var_2C4, "NetoRegIng"
  loc_B9BFE3: LitI4 9
  loc_B9BFE8: ILdRf var_274
  loc_B9BFEB: Ary1StVarCopy
  loc_B9BFED: FLdRfVar var_274
  loc_B9BFF0: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B9BFF5: FStStr var_88
  loc_B9BFF8: FLdRfVar var_274
  loc_B9BFFB: Erase
  loc_B9BFFC: FLdZeroAd var_88
  loc_B9BFFF: CVarStr var_9C
  loc_B9C002: PopAdLdVar
  loc_B9C003: FLdPr Me
  loc_B9C006: MemLdRfVar from_stack_1.global_76
  loc_B9C009: LdPrVar
  loc_B9C00B: LateMemCall
  loc_B9C011: FFree1Var var_9C = ""
  loc_B9C014: LitI4 1
  loc_B9C019: FLdPr Me
  loc_B9C01C: MemLdRfVar from_stack_1.global_108
  loc_B9C01F: FLdPr Me
  loc_B9C022: MemLdStr global_104
  loc_B9C025: LitI2_Byte 1
  loc_B9C027: FnUBound
  loc_B9C029: ForI4 var_2DC
  loc_B9C02F: FLdPr Me
  loc_B9C032: MemLdStr global_108
  loc_B9C035: FLdPr Me
  loc_B9C038: MemLdStr global_104
  loc_B9C03B: AryLock
  loc_B9C03E: Ary1LdRf
  loc_B9C03F: FStR4 var_2E4
  loc_B9C042: FLdPr Me
  loc_B9C045: VCallAd Control_ID_DesdeMsk
  loc_B9C048: FStAdFunc var_100
  loc_B9C04B: FLdPr var_100
  loc_B9C04E: LateIdLdVar var_CC DispID_15 0
  loc_B9C055: CStrVarTmp
  loc_B9C056: CVarStr var_DC
  loc_B9C059: FLdRfVar var_FC
  loc_B9C05C: ImpAdCallFPR4  = Month()
  loc_B9C061: LitI4 0
  loc_B9C066: LitI4 9
  loc_B9C06B: FLdRfVar var_274
  loc_B9C06E: Redim
  loc_B9C078: LitVarStr var_140, "|"
  loc_B9C07D: LitI4 0
  loc_B9C082: ILdRf var_274
  loc_B9C085: Ary1StVarCopy
  loc_B9C087: FLdPr Me
  loc_B9C08A: VCallAd Control_ID_DesdeMsk
  loc_B9C08D: FStAdFunc var_8C
  loc_B9C090: FLdPr var_8C
  loc_B9C093: LateIdLdVar var_9C DispID_15 0
  loc_B9C09A: CStrVarTmp
  loc_B9C09B: CVarStr var_AC
  loc_B9C09E: FLdRfVar var_BC
  loc_B9C0A1: ImpAdCallFPR4  = Year()
  loc_B9C0A6: FLdRfVar var_BC
  loc_B9C0A9: LitI4 1
  loc_B9C0AE: LitI4 1
  loc_B9C0B3: LitVarStr var_EC, "00"
  loc_B9C0B8: FStVarCopyObj var_110
  loc_B9C0BB: FLdRfVar var_110
  loc_B9C0BE: FLdRfVar var_FC
  loc_B9C0C1: FLdRfVar var_120
  loc_B9C0C4: ImpAdCallFPR4  = Format(, )
  loc_B9C0C9: FLdRfVar var_120
  loc_B9C0CC: ConcatVar var_130
  loc_B9C0D0: ParmAry1St
  loc_B9C0D6: FLdRfVar var_270
  loc_B9C0D9: CVarRef
  loc_B9C0DE: ParmAry1St
  loc_B9C0E4: FMemLdRf 0
  loc_B9C0E9: CVarRef
  loc_B9C0EE: ParmAry1St
  loc_B9C0F4: FMemLdRf 0
  loc_B9C0F9: CVarRef
  loc_B9C0FE: ParmAry1St
  loc_B9C104: FMemLdRf 0
  loc_B9C109: CVarRef
  loc_B9C10E: ParmAry1St
  loc_B9C114: FMemLdRf 0
  loc_B9C119: CVarRef
  loc_B9C11E: ParmAry1St
  loc_B9C124: FMemLdR4 var_2E4(20)
  loc_B9C129: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B9C12E: CVarStr var_150
  loc_B9C131: ParmAry1St
  loc_B9C137: FMemLdR4 var_2E4(24)
  loc_B9C13C: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B9C141: CVarStr var_160
  loc_B9C144: ParmAry1St
  loc_B9C14A: FMemLdR4 var_2E4(28)
  loc_B9C14F: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B9C154: CVarStr var_170
  loc_B9C157: ParmAry1St
  loc_B9C15D: FLdRfVar var_274
  loc_B9C160: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B9C165: FStStr var_88
  loc_B9C168: FLdRfVar var_274
  loc_B9C16B: Erase
  loc_B9C16C: FLdZeroAd var_88
  loc_B9C16F: CVarStr var_190
  loc_B9C172: PopAdLdVar
  loc_B9C173: FLdPr Me
  loc_B9C176: MemLdRfVar from_stack_1.global_76
  loc_B9C179: LdPrVar
  loc_B9C17B: LateMemCall
  loc_B9C181: FFreeAd var_8C = ""
  loc_B9C188: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_DC = "": var_FC = "": var_110 = "": var_BC = "": var_120 = ""
  loc_B9C19D: LitI4 0
  loc_B9C1A2: FStR4 var_2E4
  loc_B9C1A5: AryUnlock
  loc_B9C1A8: FLdPr Me
  loc_B9C1AB: MemLdRfVar from_stack_1.global_108
  loc_B9C1AE: NextI4 var_2DC, loc_B9C02F
  loc_B9C1B3: FLdPr Me
  loc_B9C1B6: MemLdRfVar from_stack_1.global_76
  loc_B9C1B9: LdPrVar
  loc_B9C1BB: LateMemCall
  loc_B9C1C1: On Error GoTo 0
  loc_B9C1C4: ExitProcHresult
  loc_B9C1C5: LitVar_Missing var_CC
  loc_B9C1C8: LitVar_Missing var_BC
  loc_B9C1CB: LitVar_Missing var_AC
  loc_B9C1CE: LitI4 0
  loc_B9C1D3: LitStr "Error "
  loc_B9C1D6: FLdRfVar var_2E8
  loc_B9C1D9: ImpAdCallI2 Err 'rtcErrObj
  loc_B9C1DE: FStAdFunc var_8C
  loc_B9C1E1: FLdPr var_8C
  loc_B9C1E4:  = Err.Number
  loc_B9C1E9: ILdRf var_2E8
  loc_B9C1EC: CStrI4
  loc_B9C1EE: FStStrNoPop var_88
  loc_B9C1F1: ConcatStr
  loc_B9C1F2: FStStrNoPop var_2EC
  loc_B9C1F5: LitStr " ("
  loc_B9C1F8: ConcatStr
  loc_B9C1F9: FStStrNoPop var_2F4
  loc_B9C1FC: FLdRfVar var_2F0
  loc_B9C1FF: ImpAdCallI2 Err 'rtcErrObj
  loc_B9C204: FStAdFunc var_100
  loc_B9C207: FLdPr var_100
  loc_B9C20A:  = Err.Description
  loc_B9C20F: ILdRf var_2F0
  loc_B9C212: ConcatStr
  loc_B9C213: FStStrNoPop var_2F8
  loc_B9C216: LitStr ") in procedure GeneraTXT of Formulario rptA2988XVIII"
  loc_B9C219: ConcatStr
  loc_B9C21A: CVarStr var_9C
  loc_B9C21D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B9C222: FFreeStr var_88 = "": var_2EC = "": var_2F4 = "": var_2F0 = ""
  loc_B9C22F: FFreeAd var_8C = ""
  loc_B9C236: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B9C241: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'BAD488
  'Data Table: 4A6C60
  loc_BACE44: ImpAdLdI4 MemVar_D93030
  loc_BACE47: FStStrCopy var_88
  loc_BACE4A: LitI4 0
  loc_BACE4F: LitStr "Excel.Application"
  loc_BACE52: FLdRfVar var_B4
  loc_BACE55: ImpAdCallFPR4  = CreateObject(, )
  loc_BACE5A: FLdRfVar var_B4
  loc_BACE5D: FLdRfVar var_98
  loc_BACE60: SetVarVarFunc
  loc_BACE62: FLdRfVar var_98
  loc_BACE65: VarLateMemLdVar var_B4, .Workbooks
  loc_BACE6B: CastAdVar Me
  loc_BACE6F: FStAdFunc var_9C
  loc_BACE72: FFree1Var var_B4 = ""
  loc_BACE75: FLdRfVar var_E0
  loc_BACE78: LitVarI2 var_DC, 1
  loc_BACE7D: PopAdLdVar
  loc_BACE7E: FLdRfVar var_CC
  loc_BACE81: FLdRfVar var_C8
  loc_BACE84: LitI4 &H409
  loc_BACE89: LitVar_Missing var_C4
  loc_BACE8C: PopAdLdVar
  loc_BACE8D: FLdPr var_9C
  loc_BACE90:  = Forms
  loc_BACE95: FLdPr var_C8
  loc_BACE98: Call 0.Method_arg_20C ()
  loc_BACE9D: FLdPr var_CC
  loc_BACEA0: Me.BackColor = from_stack_1
  loc_BACEA5: ILdRf var_E0
  loc_BACEA8: CastAd
  loc_BACEAB: FStAdFunc var_A0
  loc_BACEAE: FFreeAd var_C8 = "": var_CC = ""
  loc_BACEB7: LitVar_TRUE var_C4
  loc_BACEBA: PopAdLdVar
  loc_BACEBB: FLdRfVar var_98
  loc_BACEBE: VarLateMemSt .Visible
  loc_BACEC2: LitVarI2 var_C4, 1
  loc_BACEC7: PopAdLdVar
  loc_BACEC8: LitVarI2 var_F0, 1
  loc_BACECD: PopAdLdVar
  loc_BACECE: LitVarStr var_110, "Cod. Rec."
  loc_BACED3: PopAdLdVar
  loc_BACED4: FLdRfVar var_C8
  loc_BACED7: FLdPr var_A0
  loc_BACEDA:  = Me.FontUnderline
  loc_BACEDF: FLdPr var_C8
  loc_BACEE2: LateIdCallSt
  loc_BACEEA: FFree1Ad var_C8
  loc_BACEED: LitVarI2 var_C4, 1
  loc_BACEF2: PopAdLdVar
  loc_BACEF3: LitVarI2 var_F0, 2
  loc_BACEF8: PopAdLdVar
  loc_BACEF9: LitVarStr var_110, "Detalle de Recaudador"
  loc_BACEFE: PopAdLdVar
  loc_BACEFF: FLdRfVar var_C8
  loc_BACF02: FLdPr var_A0
  loc_BACF05:  = Me.FontUnderline
  loc_BACF0A: FLdPr var_C8
  loc_BACF0D: LateIdCallSt
  loc_BACF15: FFree1Ad var_C8
  loc_BACF18: LitVarI2 var_C4, 1
  loc_BACF1D: PopAdLdVar
  loc_BACF1E: LitVarI2 var_F0, 3
  loc_BACF23: PopAdLdVar
  loc_BACF24: LitVarStr var_110, "Cod. Concepto"
  loc_BACF29: PopAdLdVar
  loc_BACF2A: FLdRfVar var_C8
  loc_BACF2D: FLdPr var_A0
  loc_BACF30:  = Me.FontUnderline
  loc_BACF35: FLdPr var_C8
  loc_BACF38: LateIdCallSt
  loc_BACF40: FFree1Ad var_C8
  loc_BACF43: LitVarI2 var_C4, 1
  loc_BACF48: PopAdLdVar
  loc_BACF49: LitVarI2 var_F0, 4
  loc_BACF4E: PopAdLdVar
  loc_BACF4F: LitVarStr var_110, "Detalle de Concepto"
  loc_BACF54: PopAdLdVar
  loc_BACF55: FLdRfVar var_C8
  loc_BACF58: FLdPr var_A0
  loc_BACF5B:  = Me.FontUnderline
  loc_BACF60: FLdPr var_C8
  loc_BACF63: LateIdCallSt
  loc_BACF6B: FFree1Ad var_C8
  loc_BACF6E: LitVarI2 var_C4, 1
  loc_BACF73: PopAdLdVar
  loc_BACF74: LitVarI2 var_F0, 5
  loc_BACF79: PopAdLdVar
  loc_BACF7A: LitVarStr var_110, "Tota Rendido"
  loc_BACF7F: PopAdLdVar
  loc_BACF80: FLdRfVar var_C8
  loc_BACF83: FLdPr var_A0
  loc_BACF86:  = Me.FontUnderline
  loc_BACF8B: FLdPr var_C8
  loc_BACF8E: LateIdCallSt
  loc_BACF96: FFree1Ad var_C8
  loc_BACF99: LitVarI2 var_C4, 1
  loc_BACF9E: PopAdLdVar
  loc_BACF9F: LitVarI2 var_F0, 6
  loc_BACFA4: PopAdLdVar
  loc_BACFA5: LitVarStr var_110, "Comisión"
  loc_BACFAA: PopAdLdVar
  loc_BACFAB: FLdRfVar var_C8
  loc_BACFAE: FLdPr var_A0
  loc_BACFB1:  = Me.FontUnderline
  loc_BACFB6: FLdPr var_C8
  loc_BACFB9: LateIdCallSt
  loc_BACFC1: FFree1Ad var_C8
  loc_BACFC4: LitVarI2 var_C4, 1
  loc_BACFC9: PopAdLdVar
  loc_BACFCA: LitVarI2 var_F0, 7
  loc_BACFCF: PopAdLdVar
  loc_BACFD0: LitVarStr var_110, "Neto"
  loc_BACFD5: PopAdLdVar
  loc_BACFD6: FLdRfVar var_C8
  loc_BACFD9: FLdPr var_A0
  loc_BACFDC:  = Me.FontUnderline
  loc_BACFE1: FLdPr var_C8
  loc_BACFE4: LateIdCallSt
  loc_BACFEC: FFree1Ad var_C8
  loc_BACFEF: LitI2_Byte 1
  loc_BACFF1: FStI2 var_A2
  loc_BACFF4: LitI4 1
  loc_BACFF9: FLdPr Me
  loc_BACFFC: MemLdRfVar from_stack_1.global_108
  loc_BACFFF: FLdPr Me
  loc_BAD002: MemLdStr global_104
  loc_BAD005: LitI2_Byte 1
  loc_BAD007: FnUBound
  loc_BAD009: ForI4 var_128
  loc_BAD00F: FLdPr Me
  loc_BAD012: MemLdStr global_108
  loc_BAD015: FLdPr Me
  loc_BAD018: MemLdStr global_104
  loc_BAD01B: AryLock
  loc_BAD01E: Ary1LdPr
  loc_BAD01F: MemLdRfVar from_stack_1.global_20
  loc_BAD022: FStR4 var_130
  loc_BAD025: FLdI2 var_A2
  loc_BAD028: CI4UI1
  loc_BAD029: FLdPr Me
  loc_BAD02C: MemLdStr global_108
  loc_BAD02F: AddI4
  loc_BAD030: CVarI4
  loc_BAD034: PopAdLdVar
  loc_BAD035: LitVarI2 var_F0, 1
  loc_BAD03A: PopAdLdVar
  loc_BAD03B: FLdPr Me
  loc_BAD03E: MemLdStr global_108
  loc_BAD041: FLdPr Me
  loc_BAD044: MemLdStr global_104
  loc_BAD047: Ary1LdPr
  loc_BAD048: MemLdStr global_4
  loc_BAD04B: CVarStr var_110
  loc_BAD04E: PopAdLdVar
  loc_BAD04F: FLdRfVar var_C8
  loc_BAD052: FLdPr var_A0
  loc_BAD055:  = Me.FontUnderline
  loc_BAD05A: FLdPr var_C8
  loc_BAD05D: LateIdCallSt
  loc_BAD065: FFree1Ad var_C8
  loc_BAD068: FLdI2 var_A2
  loc_BAD06B: CI4UI1
  loc_BAD06C: FLdPr Me
  loc_BAD06F: MemLdStr global_108
  loc_BAD072: AddI4
  loc_BAD073: CVarI4
  loc_BAD077: PopAdLdVar
  loc_BAD078: LitVarI2 var_F0, 2
  loc_BAD07D: PopAdLdVar
  loc_BAD07E: FLdPr Me
  loc_BAD081: MemLdStr global_108
  loc_BAD084: FLdPr Me
  loc_BAD087: MemLdStr global_104
  loc_BAD08A: Ary1LdPr
  loc_BAD08B: MemLdStr global_8
  loc_BAD08E: CVarStr var_110
  loc_BAD091: PopAdLdVar
  loc_BAD092: FLdRfVar var_C8
  loc_BAD095: FLdPr var_A0
  loc_BAD098:  = Me.FontUnderline
  loc_BAD09D: FLdPr var_C8
  loc_BAD0A0: LateIdCallSt
  loc_BAD0A8: FFree1Ad var_C8
  loc_BAD0AB: FLdI2 var_A2
  loc_BAD0AE: CI4UI1
  loc_BAD0AF: FLdPr Me
  loc_BAD0B2: MemLdStr global_108
  loc_BAD0B5: AddI4
  loc_BAD0B6: CVarI4
  loc_BAD0BA: PopAdLdVar
  loc_BAD0BB: LitVarI2 var_F0, 3
  loc_BAD0C0: PopAdLdVar
  loc_BAD0C1: FLdPr Me
  loc_BAD0C4: MemLdStr global_108
  loc_BAD0C7: FLdPr Me
  loc_BAD0CA: MemLdStr global_104
  loc_BAD0CD: Ary1LdPr
  loc_BAD0CE: MemLdStr global_12
  loc_BAD0D1: CVarStr var_110
  loc_BAD0D4: PopAdLdVar
  loc_BAD0D5: FLdRfVar var_C8
  loc_BAD0D8: FLdPr var_A0
  loc_BAD0DB:  = Me.FontUnderline
  loc_BAD0E0: FLdPr var_C8
  loc_BAD0E3: LateIdCallSt
  loc_BAD0EB: FFree1Ad var_C8
  loc_BAD0EE: FLdI2 var_A2
  loc_BAD0F1: CI4UI1
  loc_BAD0F2: FLdPr Me
  loc_BAD0F5: MemLdStr global_108
  loc_BAD0F8: AddI4
  loc_BAD0F9: CVarI4
  loc_BAD0FD: PopAdLdVar
  loc_BAD0FE: LitVarI2 var_F0, 4
  loc_BAD103: PopAdLdVar
  loc_BAD104: FLdPr Me
  loc_BAD107: MemLdStr global_108
  loc_BAD10A: FLdPr Me
  loc_BAD10D: MemLdStr global_104
  loc_BAD110: Ary1LdPr
  loc_BAD111: MemLdStr global_16
  loc_BAD114: CVarStr var_110
  loc_BAD117: PopAdLdVar
  loc_BAD118: FLdRfVar var_C8
  loc_BAD11B: FLdPr var_A0
  loc_BAD11E:  = Me.FontUnderline
  loc_BAD123: FLdPr var_C8
  loc_BAD126: LateIdCallSt
  loc_BAD12E: FFree1Ad var_C8
  loc_BAD131: FLdI2 var_A2
  loc_BAD134: CI4UI1
  loc_BAD135: FLdPr Me
  loc_BAD138: MemLdStr global_108
  loc_BAD13B: AddI4
  loc_BAD13C: CVarI4
  loc_BAD140: PopAdLdVar
  loc_BAD141: LitVarI2 var_F0, 5
  loc_BAD146: PopAdLdVar
  loc_BAD147: FMemLdR4 var_130(0)
  loc_BAD14C: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BAD151: CVarR8
  loc_BAD155: PopAdLdVar
  loc_BAD156: FLdRfVar var_C8
  loc_BAD159: FLdPr var_A0
  loc_BAD15C:  = Me.FontUnderline
  loc_BAD161: FLdPr var_C8
  loc_BAD164: LateIdCallSt
  loc_BAD16C: FFree1Ad var_C8
  loc_BAD16F: FLdI2 var_A2
  loc_BAD172: CI4UI1
  loc_BAD173: FLdPr Me
  loc_BAD176: MemLdStr global_108
  loc_BAD179: AddI4
  loc_BAD17A: CVarI4
  loc_BAD17E: PopAdLdVar
  loc_BAD17F: LitVarI2 var_F0, 6
  loc_BAD184: PopAdLdVar
  loc_BAD185: FMemLdR4 var_130(4)
  loc_BAD18A: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BAD18F: CVarR8
  loc_BAD193: PopAdLdVar
  loc_BAD194: FLdRfVar var_C8
  loc_BAD197: FLdPr var_A0
  loc_BAD19A:  = Me.FontUnderline
  loc_BAD19F: FLdPr var_C8
  loc_BAD1A2: LateIdCallSt
  loc_BAD1AA: FFree1Ad var_C8
  loc_BAD1AD: FLdI2 var_A2
  loc_BAD1B0: CI4UI1
  loc_BAD1B1: FLdPr Me
  loc_BAD1B4: MemLdStr global_108
  loc_BAD1B7: AddI4
  loc_BAD1B8: CVarI4
  loc_BAD1BC: PopAdLdVar
  loc_BAD1BD: LitVarI2 var_F0, 7
  loc_BAD1C2: PopAdLdVar
  loc_BAD1C3: FMemLdR4 var_130(8)
  loc_BAD1C8: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BAD1CD: CVarR8
  loc_BAD1D1: PopAdLdVar
  loc_BAD1D2: FLdRfVar var_C8
  loc_BAD1D5: FLdPr var_A0
  loc_BAD1D8:  = Me.FontUnderline
  loc_BAD1DD: FLdPr var_C8
  loc_BAD1E0: LateIdCallSt
  loc_BAD1E8: FFree1Ad var_C8
  loc_BAD1EB: LitI4 0
  loc_BAD1F0: FStR4 var_130
  loc_BAD1F3: AryUnlock
  loc_BAD1F6: FLdPr Me
  loc_BAD1F9: MemLdRfVar from_stack_1.global_108
  loc_BAD1FC: NextI4 var_128, loc_BAD00F
  loc_BAD201: FLdI2 var_A2
  loc_BAD204: CI4UI1
  loc_BAD205: FLdPr Me
  loc_BAD208: MemLdStr global_108
  loc_BAD20B: AddI4
  loc_BAD20C: CVarI4
  loc_BAD210: PopAdLdVar
  loc_BAD211: LitVarI2 var_F0, 4
  loc_BAD216: PopAdLdVar
  loc_BAD217: LitVarStr var_110, "TOTALES"
  loc_BAD21C: PopAdLdVar
  loc_BAD21D: FLdRfVar var_C8
  loc_BAD220: FLdPr var_A0
  loc_BAD223:  = Me.FontUnderline
  loc_BAD228: FLdPr var_C8
  loc_BAD22B: LateIdCallSt
  loc_BAD233: FFree1Ad var_C8
  loc_BAD236: FLdI2 var_A2
  loc_BAD239: CI4UI1
  loc_BAD23A: FLdPr Me
  loc_BAD23D: MemLdStr global_108
  loc_BAD240: AddI4
  loc_BAD241: CVarI4
  loc_BAD245: PopAdLdVar
  loc_BAD246: LitVarI2 var_F0, 5
  loc_BAD24B: PopAdLdVar
  loc_BAD24C: LitStr "=SUM(R[-"
  loc_BAD24F: FLdPr Me
  loc_BAD252: MemLdStr global_104
  loc_BAD255: LitI2_Byte 1
  loc_BAD257: FnUBound
  loc_BAD259: CStrI4
  loc_BAD25B: FStStrNoPop var_134
  loc_BAD25E: ConcatStr
  loc_BAD25F: FStStrNoPop var_138
  loc_BAD262: LitStr "]C:R[-1]C)"
  loc_BAD265: ConcatStr
  loc_BAD266: CVarStr var_B4
  loc_BAD269: PopAdLdVar
  loc_BAD26A: FLdRfVar var_C8
  loc_BAD26D: FLdPr var_A0
  loc_BAD270:  = Me.FontUnderline
  loc_BAD275: FLdPr var_C8
  loc_BAD278: LateIdCallSt
  loc_BAD280: FFreeStr var_134 = ""
  loc_BAD287: FFree1Ad var_C8
  loc_BAD28A: FFree1Var var_B4 = ""
  loc_BAD28D: FLdI2 var_A2
  loc_BAD290: CI4UI1
  loc_BAD291: FLdPr Me
  loc_BAD294: MemLdStr global_108
  loc_BAD297: AddI4
  loc_BAD298: CVarI4
  loc_BAD29C: PopAdLdVar
  loc_BAD29D: LitVarI2 var_F0, 6
  loc_BAD2A2: PopAdLdVar
  loc_BAD2A3: LitStr "=SUM(R[-"
  loc_BAD2A6: FLdPr Me
  loc_BAD2A9: MemLdStr global_104
  loc_BAD2AC: LitI2_Byte 1
  loc_BAD2AE: FnUBound
  loc_BAD2B0: CStrI4
  loc_BAD2B2: FStStrNoPop var_134
  loc_BAD2B5: ConcatStr
  loc_BAD2B6: FStStrNoPop var_138
  loc_BAD2B9: LitStr "]C:R[-1]C)"
  loc_BAD2BC: ConcatStr
  loc_BAD2BD: CVarStr var_B4
  loc_BAD2C0: PopAdLdVar
  loc_BAD2C1: FLdRfVar var_C8
  loc_BAD2C4: FLdPr var_A0
  loc_BAD2C7:  = Me.FontUnderline
  loc_BAD2CC: FLdPr var_C8
  loc_BAD2CF: LateIdCallSt
  loc_BAD2D7: FFreeStr var_134 = ""
  loc_BAD2DE: FFree1Ad var_C8
  loc_BAD2E1: FFree1Var var_B4 = ""
  loc_BAD2E4: FLdI2 var_A2
  loc_BAD2E7: CI4UI1
  loc_BAD2E8: FLdPr Me
  loc_BAD2EB: MemLdStr global_108
  loc_BAD2EE: AddI4
  loc_BAD2EF: CVarI4
  loc_BAD2F3: PopAdLdVar
  loc_BAD2F4: LitVarI2 var_F0, 7
  loc_BAD2F9: PopAdLdVar
  loc_BAD2FA: LitStr "=SUM(R[-"
  loc_BAD2FD: FLdPr Me
  loc_BAD300: MemLdStr global_104
  loc_BAD303: LitI2_Byte 1
  loc_BAD305: FnUBound
  loc_BAD307: CStrI4
  loc_BAD309: FStStrNoPop var_134
  loc_BAD30C: ConcatStr
  loc_BAD30D: FStStrNoPop var_138
  loc_BAD310: LitStr "]C:R[-1]C)"
  loc_BAD313: ConcatStr
  loc_BAD314: CVarStr var_B4
  loc_BAD317: PopAdLdVar
  loc_BAD318: FLdRfVar var_C8
  loc_BAD31B: FLdPr var_A0
  loc_BAD31E:  = Me.FontUnderline
  loc_BAD323: FLdPr var_C8
  loc_BAD326: LateIdCallSt
  loc_BAD32E: FFreeStr var_134 = ""
  loc_BAD335: FFree1Ad var_C8
  loc_BAD338: FFree1Var var_B4 = ""
  loc_BAD33B: LitVar_TRUE var_F0
  loc_BAD33E: PopAdLdVar
  loc_BAD33F: FLdRfVar var_C8
  loc_BAD342: LitVar_Missing var_DC
  loc_BAD345: PopAdLdVar
  loc_BAD346: LitVarStr var_C4, "A1:G1"
  loc_BAD34B: PopAdLdVar
  loc_BAD34C: FLdPr var_A0
  loc_BAD34F:  = Me.Image
  loc_BAD354: FLdPr var_C8
  loc_BAD357: LateIdLdVar var_B4 DispID_146 0
  loc_BAD35E: CastAdVar Me
  loc_BAD362: FStAdFunc var_CC
  loc_BAD365: FLdPr var_CC
  loc_BAD368: LateIdSt
  loc_BAD36D: FFreeAd var_C8 = ""
  loc_BAD374: FFree1Var var_B4 = ""
  loc_BAD377: LitVar_TRUE var_DC
  loc_BAD37A: PopAdLdVar
  loc_BAD37B: FLdRfVar var_C8
  loc_BAD37E: LitVar_Missing var_C4
  loc_BAD381: PopAdLdVar
  loc_BAD382: LitStr "B"
  loc_BAD385: FLdPr Me
  loc_BAD388: MemLdStr global_108
  loc_BAD38B: LitI4 1
  loc_BAD390: AddI4
  loc_BAD391: CStrI4
  loc_BAD393: FStStrNoPop var_134
  loc_BAD396: ConcatStr
  loc_BAD397: FStStrNoPop var_138
  loc_BAD39A: LitStr ":L"
  loc_BAD39D: ConcatStr
  loc_BAD39E: FStStrNoPop var_13C
  loc_BAD3A1: FLdPr Me
  loc_BAD3A4: MemLdStr global_108
  loc_BAD3A7: LitI4 1
  loc_BAD3AC: AddI4
  loc_BAD3AD: CStrI4
  loc_BAD3AF: FStStrNoPop var_140
  loc_BAD3B2: ConcatStr
  loc_BAD3B3: CVarStr var_B4
  loc_BAD3B6: PopAdLdVar
  loc_BAD3B7: FLdPr var_A0
  loc_BAD3BA:  = Me.Image
  loc_BAD3BF: FLdPr var_C8
  loc_BAD3C2: LateIdLdVar var_150 DispID_146 0
  loc_BAD3C9: CastAdVar Me
  loc_BAD3CD: FStAdFunc var_CC
  loc_BAD3D0: FLdPr var_CC
  loc_BAD3D3: LateIdSt
  loc_BAD3D8: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BAD3E3: FFreeAd var_C8 = ""
  loc_BAD3EA: FFreeVar var_B4 = ""
  loc_BAD3F1: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_BAD3F6: PopAdLdVar
  loc_BAD3F7: LitVarStr var_C4, "E:G"
  loc_BAD3FC: PopAdLdVar
  loc_BAD3FD: FLdRfVar var_C8
  loc_BAD400: FLdPr var_A0
  loc_BAD403:  = Me.CurrentY
  loc_BAD408: FLdPr var_C8
  loc_BAD40B: LateIdCallLdVar
  loc_BAD415: VarLateMemSt .NumberFormat
  loc_BAD419: FFree1Ad var_C8
  loc_BAD41C: FFree1Var var_B4 = ""
  loc_BAD41F: LitVarStr var_C4, "A:G"
  loc_BAD424: PopAdLdVar
  loc_BAD425: FLdRfVar var_C8
  loc_BAD428: FLdPr var_A0
  loc_BAD42B:  = Me.CurrentY
  loc_BAD430: FLdPr var_C8
  loc_BAD433: LateIdCallLdVar
  loc_BAD43D: LdPrVar
  loc_BAD43F: LateMemCall
  loc_BAD445: FFree1Ad var_C8
  loc_BAD448: FFree1Var var_150 = ""
  loc_BAD44B: LitVar_Missing var_180
  loc_BAD44E: PopAdLdVar
  loc_BAD44F: LitVar_Missing var_170
  loc_BAD452: PopAdLdVar
  loc_BAD453: LitVar_Missing var_160
  loc_BAD456: PopAdLdVar
  loc_BAD457: LitVar_Missing var_120
  loc_BAD45A: PopAdLdVar
  loc_BAD45B: LitVar_Missing var_110
  loc_BAD45E: PopAdLdVar
  loc_BAD45F: LitVar_Missing var_100
  loc_BAD462: PopAdLdVar
  loc_BAD463: LitVar_Missing var_F0
  loc_BAD466: PopAdLdVar
  loc_BAD467: LitVar_Missing var_DC
  loc_BAD46A: PopAdLdVar
  loc_BAD46B: LitVar_Missing var_C4
  loc_BAD46E: PopAdLdVar
  loc_BAD46F: ILdRf var_88
  loc_BAD472: FLdPr var_A0
  loc_BAD475: Me.MouseIcon = from_stack_1
  loc_BAD47A: LitI4 &H409
  loc_BAD47F: FLdPr var_9C
  loc_BAD487: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B27CAC
  'Data Table: 4A6C60
  loc_B279DC: FLdRfVar var_88
  loc_B279DF: LitI2_Byte 0
  loc_B279E1: LitI2_Byte &HFF
  loc_B279E3: ImpAdLdI4 MemVar_D93C84
  loc_B279E6: FLdPr Me
  loc_B279E9: MemLdRfVar from_stack_1.global_56
  loc_B279EC: NewIfNullPr IFileSystem3
  loc_B279EF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B279F4: ILdRf var_88
  loc_B279F7: FLdPr Me
  loc_B279FA: MemStVarAd
  loc_B279FE: FFree1Ad var_88
  loc_B27A01: LitI2_Byte &HFF
  loc_B27A03: ImpAdStI2 MemVar_D93C8A
  loc_B27A06: Call Proc_241_23_BC1F7C()
  loc_B27A0B: LitI4 1
  loc_B27A10: FLdPr Me
  loc_B27A13: MemLdRfVar from_stack_1.global_108
  loc_B27A16: FLdPr Me
  loc_B27A19: MemLdStr global_104
  loc_B27A1C: LitI2_Byte 1
  loc_B27A1E: FnUBound
  loc_B27A20: ForI4 var_90
  loc_B27A26: FLdPr Me
  loc_B27A29: MemLdStr global_108
  loc_B27A2C: FLdPr Me
  loc_B27A2F: MemLdStr global_104
  loc_B27A32: AryLock
  loc_B27A35: Ary1LdRf
  loc_B27A36: FStR4 var_98
  loc_B27A39: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B27A3E: PopAdLdVar
  loc_B27A3F: FLdPr Me
  loc_B27A42: MemLdRfVar from_stack_1.global_60
  loc_B27A45: LdPrVar
  loc_B27A47: LateMemCall
  loc_B27A4D: LitStr vbNullString
  loc_B27A50: LitI2_Byte 0
  loc_B27A52: LitI2_Byte 0
  loc_B27A54: LitI2_Byte 0
  loc_B27A56: LitStr "right"
  loc_B27A59: FMemLdR4 var_98(4)
  loc_B27A5E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27A63: CVarStr var_C8
  loc_B27A66: PopAdLdVar
  loc_B27A67: FLdPr Me
  loc_B27A6A: MemLdRfVar from_stack_1.global_60
  loc_B27A6D: LdPrVar
  loc_B27A6F: LateMemCall
  loc_B27A75: FFree1Var var_C8 = ""
  loc_B27A78: LitStr vbNullString
  loc_B27A7B: LitI2_Byte 0
  loc_B27A7D: LitI2_Byte 0
  loc_B27A7F: LitI2_Byte 0
  loc_B27A81: LitStr "left"
  loc_B27A84: FMemLdR4 var_98(8)
  loc_B27A89: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27A8E: CVarStr var_C8
  loc_B27A91: PopAdLdVar
  loc_B27A92: FLdPr Me
  loc_B27A95: MemLdRfVar from_stack_1.global_60
  loc_B27A98: LdPrVar
  loc_B27A9A: LateMemCall
  loc_B27AA0: FFree1Var var_C8 = ""
  loc_B27AA3: LitStr vbNullString
  loc_B27AA6: LitI2_Byte 0
  loc_B27AA8: LitI2_Byte 0
  loc_B27AAA: LitI2_Byte 0
  loc_B27AAC: LitStr "right"
  loc_B27AAF: FMemLdR4 var_98(12)
  loc_B27AB4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27AB9: CVarStr var_C8
  loc_B27ABC: PopAdLdVar
  loc_B27ABD: FLdPr Me
  loc_B27AC0: MemLdRfVar from_stack_1.global_60
  loc_B27AC3: LdPrVar
  loc_B27AC5: LateMemCall
  loc_B27ACB: FFree1Var var_C8 = ""
  loc_B27ACE: LitStr vbNullString
  loc_B27AD1: LitI2_Byte 0
  loc_B27AD3: LitI2_Byte 0
  loc_B27AD5: LitI2_Byte 0
  loc_B27AD7: LitStr "left"
  loc_B27ADA: FMemLdR4 var_98(16)
  loc_B27ADF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27AE4: CVarStr var_C8
  loc_B27AE7: PopAdLdVar
  loc_B27AE8: FLdPr Me
  loc_B27AEB: MemLdRfVar from_stack_1.global_60
  loc_B27AEE: LdPrVar
  loc_B27AF0: LateMemCall
  loc_B27AF6: FFree1Var var_C8 = ""
  loc_B27AF9: FMemLdRf ext_4010C4
  loc_B27AFE: FStR4 var_CC
  loc_B27B01: LitStr vbNullString
  loc_B27B04: LitI2_Byte 0
  loc_B27B06: LitI2_Byte 0
  loc_B27B08: LitI2_Byte 0
  loc_B27B0A: LitStr "right"
  loc_B27B0D: FMemLdR4 var_CC(0)
  loc_B27B12: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27B17: CVarStr var_C8
  loc_B27B1A: PopAdLdVar
  loc_B27B1B: FLdPr Me
  loc_B27B1E: MemLdRfVar from_stack_1.global_60
  loc_B27B21: LdPrVar
  loc_B27B23: LateMemCall
  loc_B27B29: FFree1Var var_C8 = ""
  loc_B27B2C: LitStr vbNullString
  loc_B27B2F: LitI2_Byte 0
  loc_B27B31: LitI2_Byte 0
  loc_B27B33: LitI2_Byte 0
  loc_B27B35: LitStr "right"
  loc_B27B38: FMemLdR4 var_CC(4)
  loc_B27B3D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27B42: CVarStr var_C8
  loc_B27B45: PopAdLdVar
  loc_B27B46: FLdPr Me
  loc_B27B49: MemLdRfVar from_stack_1.global_60
  loc_B27B4C: LdPrVar
  loc_B27B4E: LateMemCall
  loc_B27B54: FFree1Var var_C8 = ""
  loc_B27B57: LitStr vbNullString
  loc_B27B5A: LitI2_Byte 0
  loc_B27B5C: LitI2_Byte 0
  loc_B27B5E: LitI2_Byte 0
  loc_B27B60: LitStr "right"
  loc_B27B63: FMemLdR4 var_CC(8)
  loc_B27B68: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27B6D: CVarStr var_C8
  loc_B27B70: PopAdLdVar
  loc_B27B71: FLdPr Me
  loc_B27B74: MemLdRfVar from_stack_1.global_60
  loc_B27B77: LdPrVar
  loc_B27B79: LateMemCall
  loc_B27B7F: FFree1Var var_C8 = ""
  loc_B27B82: LitI4 0
  loc_B27B87: FStR4 var_CC
  loc_B27B8A: LitVarStr var_A8, "     </tr>"
  loc_B27B8F: PopAdLdVar
  loc_B27B90: FLdPr Me
  loc_B27B93: MemLdRfVar from_stack_1.global_60
  loc_B27B96: LdPrVar
  loc_B27B98: LateMemCall
  loc_B27B9E: LitI4 0
  loc_B27BA3: FStR4 var_98
  loc_B27BA6: AryUnlock
  loc_B27BA9: FLdPr Me
  loc_B27BAC: MemLdRfVar from_stack_1.global_108
  loc_B27BAF: NextI4 var_90, loc_B27A26
  loc_B27BB4: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B27BB9: PopAdLdVar
  loc_B27BBA: FLdPr Me
  loc_B27BBD: MemLdRfVar from_stack_1.global_60
  loc_B27BC0: LdPrVar
  loc_B27BC2: LateMemCall
  loc_B27BC8: LitVarStr var_A8, "    <td colspan=""4"" align=""right"">Totales</td>"
  loc_B27BCD: PopAdLdVar
  loc_B27BCE: FLdPr Me
  loc_B27BD1: MemLdRfVar from_stack_1.global_60
  loc_B27BD4: LdPrVar
  loc_B27BD6: LateMemCall
  loc_B27BDC: LitI4 1
  loc_B27BE1: FLdPr Me
  loc_B27BE4: MemLdStr global_112
  loc_B27BE7: AryLock
  loc_B27BEA: Ary1LdRf
  loc_B27BEB: FStR4 var_D4
  loc_B27BEE: LitStr vbNullString
  loc_B27BF1: LitI2_Byte 0
  loc_B27BF3: LitI2_Byte 0
  loc_B27BF5: LitI2_Byte 0
  loc_B27BF7: LitStr "right"
  loc_B27BFA: FMemLdR4 var_D4(0)
  loc_B27BFF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27C04: CVarStr var_C8
  loc_B27C07: PopAdLdVar
  loc_B27C08: FLdPr Me
  loc_B27C0B: MemLdRfVar from_stack_1.global_60
  loc_B27C0E: LdPrVar
  loc_B27C10: LateMemCall
  loc_B27C16: FFree1Var var_C8 = ""
  loc_B27C19: LitStr vbNullString
  loc_B27C1C: LitI2_Byte 0
  loc_B27C1E: LitI2_Byte 0
  loc_B27C20: LitI2_Byte 0
  loc_B27C22: LitStr "right"
  loc_B27C25: FMemLdR4 var_D4(4)
  loc_B27C2A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27C2F: CVarStr var_C8
  loc_B27C32: PopAdLdVar
  loc_B27C33: FLdPr Me
  loc_B27C36: MemLdRfVar from_stack_1.global_60
  loc_B27C39: LdPrVar
  loc_B27C3B: LateMemCall
  loc_B27C41: FFree1Var var_C8 = ""
  loc_B27C44: LitStr vbNullString
  loc_B27C47: LitI2_Byte 0
  loc_B27C49: LitI2_Byte 0
  loc_B27C4B: LitI2_Byte 0
  loc_B27C4D: LitStr "right"
  loc_B27C50: FMemLdR4 var_D4(8)
  loc_B27C55: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B27C5A: CVarStr var_C8
  loc_B27C5D: PopAdLdVar
  loc_B27C5E: FLdPr Me
  loc_B27C61: MemLdRfVar from_stack_1.global_60
  loc_B27C64: LdPrVar
  loc_B27C66: LateMemCall
  loc_B27C6C: FFree1Var var_C8 = ""
  loc_B27C6F: LitI4 0
  loc_B27C74: FStR4 var_D4
  loc_B27C77: AryUnlock
  loc_B27C7A: LitVarStr var_A8, "     </tr>"
  loc_B27C7F: PopAdLdVar
  loc_B27C80: FLdPr Me
  loc_B27C83: MemLdRfVar from_stack_1.global_60
  loc_B27C86: LdPrVar
  loc_B27C88: LateMemCall
  loc_B27C8E: Call Proc_241_24_AE0E1C()
  loc_B27C93: FLdPr Me
  loc_B27C96: MemLdRfVar from_stack_1.global_60
  loc_B27C99: LdPrVar
  loc_B27C9B: LateMemCall
  loc_B27CA1: LitStr vbNullString
  loc_B27CA4: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B27CA9: ExitProcHresult
End Sub

Private Function Proc_241_23_BC1F7C() 'BC1F7C
  'Data Table: 4A6C60
  loc_BC18C4: LitVarStr var_94, "<html>"
  loc_BC18C9: PopAdLdVar
  loc_BC18CA: FLdPr Me
  loc_BC18CD: MemLdRfVar from_stack_1.global_60
  loc_BC18D0: LdPrVar
  loc_BC18D2: LateMemCall
  loc_BC18D8: LitVarStr var_94, "<head>"
  loc_BC18DD: PopAdLdVar
  loc_BC18DE: FLdPr Me
  loc_BC18E1: MemLdRfVar from_stack_1.global_60
  loc_BC18E4: LdPrVar
  loc_BC18E6: LateMemCall
  loc_BC18EC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC18F1: PopAdLdVar
  loc_BC18F2: FLdPr Me
  loc_BC18F5: MemLdRfVar from_stack_1.global_60
  loc_BC18F8: LdPrVar
  loc_BC18FA: LateMemCall
  loc_BC1900: LitStr "<title>"
  loc_BC1903: FLdRfVar var_A8
  loc_BC1906: FLdPr Me
  loc_BC1909:  = Me.Caption
  loc_BC190E: ILdRf var_A8
  loc_BC1911: ConcatStr
  loc_BC1912: FStStrNoPop var_AC
  loc_BC1915: LitStr "</title>"
  loc_BC1918: ConcatStr
  loc_BC1919: CVarStr var_BC
  loc_BC191C: PopAdLdVar
  loc_BC191D: FLdPr Me
  loc_BC1920: MemLdRfVar from_stack_1.global_60
  loc_BC1923: LdPrVar
  loc_BC1925: LateMemCall
  loc_BC192B: FFreeStr var_A8 = ""
  loc_BC1932: FFree1Var var_BC = ""
  loc_BC1935: LitVarStr var_94, "<style type=""text/css"">"
  loc_BC193A: PopAdLdVar
  loc_BC193B: FLdPr Me
  loc_BC193E: MemLdRfVar from_stack_1.global_60
  loc_BC1941: LdPrVar
  loc_BC1943: LateMemCall
  loc_BC1949: LitVarStr var_94, ".Titulo1 {"
  loc_BC194E: PopAdLdVar
  loc_BC194F: FLdPr Me
  loc_BC1952: MemLdRfVar from_stack_1.global_60
  loc_BC1955: LdPrVar
  loc_BC1957: LateMemCall
  loc_BC195D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC1962: PopAdLdVar
  loc_BC1963: FLdPr Me
  loc_BC1966: MemLdRfVar from_stack_1.global_60
  loc_BC1969: LdPrVar
  loc_BC196B: LateMemCall
  loc_BC1971: LitVarStr var_94, " font-size: 18px;"
  loc_BC1976: PopAdLdVar
  loc_BC1977: FLdPr Me
  loc_BC197A: MemLdRfVar from_stack_1.global_60
  loc_BC197D: LdPrVar
  loc_BC197F: LateMemCall
  loc_BC1985: LitVarStr var_94, " font-weight: bold;"
  loc_BC198A: PopAdLdVar
  loc_BC198B: FLdPr Me
  loc_BC198E: MemLdRfVar from_stack_1.global_60
  loc_BC1991: LdPrVar
  loc_BC1993: LateMemCall
  loc_BC1999: LitVarStr var_94, "}"
  loc_BC199E: PopAdLdVar
  loc_BC199F: FLdPr Me
  loc_BC19A2: MemLdRfVar from_stack_1.global_60
  loc_BC19A5: LdPrVar
  loc_BC19A7: LateMemCall
  loc_BC19AD: LitVarStr var_94, ".Titulo2 {"
  loc_BC19B2: PopAdLdVar
  loc_BC19B3: FLdPr Me
  loc_BC19B6: MemLdRfVar from_stack_1.global_60
  loc_BC19B9: LdPrVar
  loc_BC19BB: LateMemCall
  loc_BC19C1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC19C6: PopAdLdVar
  loc_BC19C7: FLdPr Me
  loc_BC19CA: MemLdRfVar from_stack_1.global_60
  loc_BC19CD: LdPrVar
  loc_BC19CF: LateMemCall
  loc_BC19D5: LitVarStr var_94, " font-size: 14px;"
  loc_BC19DA: PopAdLdVar
  loc_BC19DB: FLdPr Me
  loc_BC19DE: MemLdRfVar from_stack_1.global_60
  loc_BC19E1: LdPrVar
  loc_BC19E3: LateMemCall
  loc_BC19E9: LitVarStr var_94, " font-weight: bold;"
  loc_BC19EE: PopAdLdVar
  loc_BC19EF: FLdPr Me
  loc_BC19F2: MemLdRfVar from_stack_1.global_60
  loc_BC19F5: LdPrVar
  loc_BC19F7: LateMemCall
  loc_BC19FD: LitVarStr var_94, "}"
  loc_BC1A02: PopAdLdVar
  loc_BC1A03: FLdPr Me
  loc_BC1A06: MemLdRfVar from_stack_1.global_60
  loc_BC1A09: LdPrVar
  loc_BC1A0B: LateMemCall
  loc_BC1A11: LitVarStr var_94, ".Normal {"
  loc_BC1A16: PopAdLdVar
  loc_BC1A17: FLdPr Me
  loc_BC1A1A: MemLdRfVar from_stack_1.global_60
  loc_BC1A1D: LdPrVar
  loc_BC1A1F: LateMemCall
  loc_BC1A25: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC1A2A: PopAdLdVar
  loc_BC1A2B: FLdPr Me
  loc_BC1A2E: MemLdRfVar from_stack_1.global_60
  loc_BC1A31: LdPrVar
  loc_BC1A33: LateMemCall
  loc_BC1A39: LitVarStr var_94, " font-size: 12px;"
  loc_BC1A3E: PopAdLdVar
  loc_BC1A3F: FLdPr Me
  loc_BC1A42: MemLdRfVar from_stack_1.global_60
  loc_BC1A45: LdPrVar
  loc_BC1A47: LateMemCall
  loc_BC1A4D: LitVarStr var_94, " font-style: normal;"
  loc_BC1A52: PopAdLdVar
  loc_BC1A53: FLdPr Me
  loc_BC1A56: MemLdRfVar from_stack_1.global_60
  loc_BC1A59: LdPrVar
  loc_BC1A5B: LateMemCall
  loc_BC1A61: LitVarStr var_94, " font-weight: normal;"
  loc_BC1A66: PopAdLdVar
  loc_BC1A67: FLdPr Me
  loc_BC1A6A: MemLdRfVar from_stack_1.global_60
  loc_BC1A6D: LdPrVar
  loc_BC1A6F: LateMemCall
  loc_BC1A75: LitVarStr var_94, " font-variant: normal;"
  loc_BC1A7A: PopAdLdVar
  loc_BC1A7B: FLdPr Me
  loc_BC1A7E: MemLdRfVar from_stack_1.global_60
  loc_BC1A81: LdPrVar
  loc_BC1A83: LateMemCall
  loc_BC1A89: LitVarStr var_94, "}"
  loc_BC1A8E: PopAdLdVar
  loc_BC1A8F: FLdPr Me
  loc_BC1A92: MemLdRfVar from_stack_1.global_60
  loc_BC1A95: LdPrVar
  loc_BC1A97: LateMemCall
  loc_BC1A9D: LitVarStr var_94, ".Encabezado {"
  loc_BC1AA2: PopAdLdVar
  loc_BC1AA3: FLdPr Me
  loc_BC1AA6: MemLdRfVar from_stack_1.global_60
  loc_BC1AA9: LdPrVar
  loc_BC1AAB: LateMemCall
  loc_BC1AB1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC1AB6: PopAdLdVar
  loc_BC1AB7: FLdPr Me
  loc_BC1ABA: MemLdRfVar from_stack_1.global_60
  loc_BC1ABD: LdPrVar
  loc_BC1ABF: LateMemCall
  loc_BC1AC5: LitVarStr var_94, " font-size: 11px;"
  loc_BC1ACA: PopAdLdVar
  loc_BC1ACB: FLdPr Me
  loc_BC1ACE: MemLdRfVar from_stack_1.global_60
  loc_BC1AD1: LdPrVar
  loc_BC1AD3: LateMemCall
  loc_BC1AD9: LitVarStr var_94, " font-weight: bold;"
  loc_BC1ADE: PopAdLdVar
  loc_BC1ADF: FLdPr Me
  loc_BC1AE2: MemLdRfVar from_stack_1.global_60
  loc_BC1AE5: LdPrVar
  loc_BC1AE7: LateMemCall
  loc_BC1AED: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BC1AF2: PopAdLdVar
  loc_BC1AF3: FLdPr Me
  loc_BC1AF6: MemLdRfVar from_stack_1.global_60
  loc_BC1AF9: LdPrVar
  loc_BC1AFB: LateMemCall
  loc_BC1B01: LitVarStr var_94, "}"
  loc_BC1B06: PopAdLdVar
  loc_BC1B07: FLdPr Me
  loc_BC1B0A: MemLdRfVar from_stack_1.global_60
  loc_BC1B0D: LdPrVar
  loc_BC1B0F: LateMemCall
  loc_BC1B15: LitVarStr var_94, ".LineaDato {"
  loc_BC1B1A: PopAdLdVar
  loc_BC1B1B: FLdPr Me
  loc_BC1B1E: MemLdRfVar from_stack_1.global_60
  loc_BC1B21: LdPrVar
  loc_BC1B23: LateMemCall
  loc_BC1B29: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC1B2E: PopAdLdVar
  loc_BC1B2F: FLdPr Me
  loc_BC1B32: MemLdRfVar from_stack_1.global_60
  loc_BC1B35: LdPrVar
  loc_BC1B37: LateMemCall
  loc_BC1B3D: LitVarStr var_94, " font-size: 10px;"
  loc_BC1B42: PopAdLdVar
  loc_BC1B43: FLdPr Me
  loc_BC1B46: MemLdRfVar from_stack_1.global_60
  loc_BC1B49: LdPrVar
  loc_BC1B4B: LateMemCall
  loc_BC1B51: LitVarStr var_94, "}"
  loc_BC1B56: PopAdLdVar
  loc_BC1B57: FLdPr Me
  loc_BC1B5A: MemLdRfVar from_stack_1.global_60
  loc_BC1B5D: LdPrVar
  loc_BC1B5F: LateMemCall
  loc_BC1B65: LitVarStr var_94, ".Totales {"
  loc_BC1B6A: PopAdLdVar
  loc_BC1B6B: FLdPr Me
  loc_BC1B6E: MemLdRfVar from_stack_1.global_60
  loc_BC1B71: LdPrVar
  loc_BC1B73: LateMemCall
  loc_BC1B79: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC1B7E: PopAdLdVar
  loc_BC1B7F: FLdPr Me
  loc_BC1B82: MemLdRfVar from_stack_1.global_60
  loc_BC1B85: LdPrVar
  loc_BC1B87: LateMemCall
  loc_BC1B8D: LitVarStr var_94, " font-size: 12px;"
  loc_BC1B92: PopAdLdVar
  loc_BC1B93: FLdPr Me
  loc_BC1B96: MemLdRfVar from_stack_1.global_60
  loc_BC1B99: LdPrVar
  loc_BC1B9B: LateMemCall
  loc_BC1BA1: LitVarStr var_94, " font-weight: bold;"
  loc_BC1BA6: PopAdLdVar
  loc_BC1BA7: FLdPr Me
  loc_BC1BAA: MemLdRfVar from_stack_1.global_60
  loc_BC1BAD: LdPrVar
  loc_BC1BAF: LateMemCall
  loc_BC1BB5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC1BBA: PopAdLdVar
  loc_BC1BBB: FLdPr Me
  loc_BC1BBE: MemLdRfVar from_stack_1.global_60
  loc_BC1BC1: LdPrVar
  loc_BC1BC3: LateMemCall
  loc_BC1BC9: LitVarStr var_94, "}"
  loc_BC1BCE: PopAdLdVar
  loc_BC1BCF: FLdPr Me
  loc_BC1BD2: MemLdRfVar from_stack_1.global_60
  loc_BC1BD5: LdPrVar
  loc_BC1BD7: LateMemCall
  loc_BC1BDD: LitVarStr var_94, ".SubTotales {"
  loc_BC1BE2: PopAdLdVar
  loc_BC1BE3: FLdPr Me
  loc_BC1BE6: MemLdRfVar from_stack_1.global_60
  loc_BC1BE9: LdPrVar
  loc_BC1BEB: LateMemCall
  loc_BC1BF1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC1BF6: PopAdLdVar
  loc_BC1BF7: FLdPr Me
  loc_BC1BFA: MemLdRfVar from_stack_1.global_60
  loc_BC1BFD: LdPrVar
  loc_BC1BFF: LateMemCall
  loc_BC1C05: LitVarStr var_94, " font-size: 10px;"
  loc_BC1C0A: PopAdLdVar
  loc_BC1C0B: FLdPr Me
  loc_BC1C0E: MemLdRfVar from_stack_1.global_60
  loc_BC1C11: LdPrVar
  loc_BC1C13: LateMemCall
  loc_BC1C19: LitVarStr var_94, " font-weight: bold;"
  loc_BC1C1E: PopAdLdVar
  loc_BC1C1F: FLdPr Me
  loc_BC1C22: MemLdRfVar from_stack_1.global_60
  loc_BC1C25: LdPrVar
  loc_BC1C27: LateMemCall
  loc_BC1C2D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC1C32: PopAdLdVar
  loc_BC1C33: FLdPr Me
  loc_BC1C36: MemLdRfVar from_stack_1.global_60
  loc_BC1C39: LdPrVar
  loc_BC1C3B: LateMemCall
  loc_BC1C41: LitVarStr var_94, "}"
  loc_BC1C46: PopAdLdVar
  loc_BC1C47: FLdPr Me
  loc_BC1C4A: MemLdRfVar from_stack_1.global_60
  loc_BC1C4D: LdPrVar
  loc_BC1C4F: LateMemCall
  loc_BC1C55: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BC1C5A: PopAdLdVar
  loc_BC1C5B: FLdPr Me
  loc_BC1C5E: MemLdRfVar from_stack_1.global_60
  loc_BC1C61: LdPrVar
  loc_BC1C63: LateMemCall
  loc_BC1C69: LitVarStr var_94, "</style>"
  loc_BC1C6E: PopAdLdVar
  loc_BC1C6F: FLdPr Me
  loc_BC1C72: MemLdRfVar from_stack_1.global_60
  loc_BC1C75: LdPrVar
  loc_BC1C77: LateMemCall
  loc_BC1C7D: LitI4 0
  loc_BC1C82: FStStrCopy var_AC
  loc_BC1C85: FLdRfVar var_AC
  loc_BC1C88: LitI4 0
  loc_BC1C8D: FStStrCopy var_A8
  loc_BC1C90: FLdRfVar var_A8
  loc_BC1C93: LitI2_Byte &HFF
  loc_BC1C95: PopTmpLdAd2 var_BE
  loc_BC1C98: FLdPr Me
  loc_BC1C9B: MemLdRfVar from_stack_1.global_60
  loc_BC1C9E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC1CA3: FFreeStr var_A8 = ""
  loc_BC1CAA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC1CAF: PopAdLdVar
  loc_BC1CB0: FLdPr Me
  loc_BC1CB3: MemLdRfVar from_stack_1.global_60
  loc_BC1CB6: LdPrVar
  loc_BC1CB8: LateMemCall
  loc_BC1CBE: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BC1CC3: PopAdLdVar
  loc_BC1CC4: FLdPr Me
  loc_BC1CC7: MemLdRfVar from_stack_1.global_60
  loc_BC1CCA: LdPrVar
  loc_BC1CCC: LateMemCall
  loc_BC1CD2: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC1CD5: LitI2_Byte &H5F
  loc_BC1CD7: CStrUI1
  loc_BC1CD9: FStStrNoPop var_A8
  loc_BC1CDC: ConcatStr
  loc_BC1CDD: FStStrNoPop var_AC
  loc_BC1CE0: LitStr """ height="""
  loc_BC1CE3: ConcatStr
  loc_BC1CE4: FStStrNoPop var_C4
  loc_BC1CE7: LitI2_Byte &H3C
  loc_BC1CE9: CStrUI1
  loc_BC1CEB: FStStrNoPop var_C8
  loc_BC1CEE: ConcatStr
  loc_BC1CEF: FStStrNoPop var_CC
  loc_BC1CF2: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC1CF5: ConcatStr
  loc_BC1CF6: FStStrNoPop var_D0
  loc_BC1CF9: LitStr "Municipalidad de Guaymallén"
  loc_BC1CFC: ConcatStr
  loc_BC1CFD: FStStrNoPop var_D4
  loc_BC1D00: LitStr "</p>"
  loc_BC1D03: ConcatStr
  loc_BC1D04: CVarStr var_BC
  loc_BC1D07: PopAdLdVar
  loc_BC1D08: FLdPr Me
  loc_BC1D0B: MemLdRfVar from_stack_1.global_60
  loc_BC1D0E: LdPrVar
  loc_BC1D10: LateMemCall
  loc_BC1D16: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BC1D27: FFree1Var var_BC = ""
  loc_BC1D2A: LitStr "    <p>"
  loc_BC1D2D: FLdRfVar var_A8
  loc_BC1D30: FLdPr Me
  loc_BC1D33:  = Me.Caption
  loc_BC1D38: ILdRf var_A8
  loc_BC1D3B: ConcatStr
  loc_BC1D3C: FStStrNoPop var_AC
  loc_BC1D3F: LitStr "</p></th>"
  loc_BC1D42: ConcatStr
  loc_BC1D43: CVarStr var_BC
  loc_BC1D46: PopAdLdVar
  loc_BC1D47: FLdPr Me
  loc_BC1D4A: MemLdRfVar from_stack_1.global_60
  loc_BC1D4D: LdPrVar
  loc_BC1D4F: LateMemCall
  loc_BC1D55: FFreeStr var_A8 = ""
  loc_BC1D5C: FFree1Var var_BC = ""
  loc_BC1D5F: LitVarStr var_94, "  </tr>"
  loc_BC1D64: PopAdLdVar
  loc_BC1D65: FLdPr Me
  loc_BC1D68: MemLdRfVar from_stack_1.global_60
  loc_BC1D6B: LdPrVar
  loc_BC1D6D: LateMemCall
  loc_BC1D73: LitVarStr var_94, "  <tr>"
  loc_BC1D78: PopAdLdVar
  loc_BC1D79: FLdPr Me
  loc_BC1D7C: MemLdRfVar from_stack_1.global_60
  loc_BC1D7F: LdPrVar
  loc_BC1D81: LateMemCall
  loc_BC1D87: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BC1D8C: PopAdLdVar
  loc_BC1D8D: FLdPr Me
  loc_BC1D90: MemLdRfVar from_stack_1.global_60
  loc_BC1D93: LdPrVar
  loc_BC1D95: LateMemCall
  loc_BC1D9B: LitVarStr var_94, "  </tr>"
  loc_BC1DA0: PopAdLdVar
  loc_BC1DA1: FLdPr Me
  loc_BC1DA4: MemLdRfVar from_stack_1.global_60
  loc_BC1DA7: LdPrVar
  loc_BC1DA9: LateMemCall
  loc_BC1DAF: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BC1DB4: PopAdLdVar
  loc_BC1DB5: FLdPr Me
  loc_BC1DB8: MemLdRfVar from_stack_1.global_60
  loc_BC1DBB: LdPrVar
  loc_BC1DBD: LateMemCall
  loc_BC1DC3: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BC1DC6: FLdPr Me
  loc_BC1DC9: VCallAd Control_ID_DesdeMsk
  loc_BC1DCC: FStAdFunc var_D8
  loc_BC1DCF: FLdPr var_D8
  loc_BC1DD2: LateIdLdVar var_BC DispID_15 0
  loc_BC1DD9: CStrVarTmp
  loc_BC1DDA: FStStrNoPop var_A8
  loc_BC1DDD: ConcatStr
  loc_BC1DDE: FStStrNoPop var_AC
  loc_BC1DE1: LitStr "</td>"
  loc_BC1DE4: ConcatStr
  loc_BC1DE5: CVarStr var_E8
  loc_BC1DE8: PopAdLdVar
  loc_BC1DE9: FLdPr Me
  loc_BC1DEC: MemLdRfVar from_stack_1.global_60
  loc_BC1DEF: LdPrVar
  loc_BC1DF1: LateMemCall
  loc_BC1DF7: FFreeStr var_A8 = ""
  loc_BC1DFE: FFree1Ad var_D8
  loc_BC1E01: FFreeVar var_BC = ""
  loc_BC1E08: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BC1E0B: FLdPr Me
  loc_BC1E0E: VCallAd Control_ID_HastaMsk
  loc_BC1E11: FStAdFunc var_D8
  loc_BC1E14: FLdPr var_D8
  loc_BC1E17: LateIdLdVar var_BC DispID_15 0
  loc_BC1E1E: CStrVarTmp
  loc_BC1E1F: FStStrNoPop var_A8
  loc_BC1E22: ConcatStr
  loc_BC1E23: FStStrNoPop var_AC
  loc_BC1E26: LitStr "</td>"
  loc_BC1E29: ConcatStr
  loc_BC1E2A: CVarStr var_E8
  loc_BC1E2D: PopAdLdVar
  loc_BC1E2E: FLdPr Me
  loc_BC1E31: MemLdRfVar from_stack_1.global_60
  loc_BC1E34: LdPrVar
  loc_BC1E36: LateMemCall
  loc_BC1E3C: FFreeStr var_A8 = ""
  loc_BC1E43: FFree1Ad var_D8
  loc_BC1E46: FFreeVar var_BC = ""
  loc_BC1E4D: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BC1E52: PopAdLdVar
  loc_BC1E53: FLdPr Me
  loc_BC1E56: MemLdRfVar from_stack_1.global_60
  loc_BC1E59: LdPrVar
  loc_BC1E5B: LateMemCall
  loc_BC1E61: LitVarStr var_94, "  </tr>"
  loc_BC1E66: PopAdLdVar
  loc_BC1E67: FLdPr Me
  loc_BC1E6A: MemLdRfVar from_stack_1.global_60
  loc_BC1E6D: LdPrVar
  loc_BC1E6F: LateMemCall
  loc_BC1E75: LitVarStr var_94, "</table>"
  loc_BC1E7A: PopAdLdVar
  loc_BC1E7B: FLdPr Me
  loc_BC1E7E: MemLdRfVar from_stack_1.global_60
  loc_BC1E81: LdPrVar
  loc_BC1E83: LateMemCall
  loc_BC1E89: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC1E8E: PopAdLdVar
  loc_BC1E8F: FLdPr Me
  loc_BC1E92: MemLdRfVar from_stack_1.global_60
  loc_BC1E95: LdPrVar
  loc_BC1E97: LateMemCall
  loc_BC1E9D: LitVarStr var_94, "  <thead>"
  loc_BC1EA2: PopAdLdVar
  loc_BC1EA3: FLdPr Me
  loc_BC1EA6: MemLdRfVar from_stack_1.global_60
  loc_BC1EA9: LdPrVar
  loc_BC1EAB: LateMemCall
  loc_BC1EB1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC1EB6: PopAdLdVar
  loc_BC1EB7: FLdPr Me
  loc_BC1EBA: MemLdRfVar from_stack_1.global_60
  loc_BC1EBD: LdPrVar
  loc_BC1EBF: LateMemCall
  loc_BC1EC5: LitVarStr var_94, "    <th>Cod. Rec.</th>"
  loc_BC1ECA: PopAdLdVar
  loc_BC1ECB: FLdPr Me
  loc_BC1ECE: MemLdRfVar from_stack_1.global_60
  loc_BC1ED1: LdPrVar
  loc_BC1ED3: LateMemCall
  loc_BC1ED9: LitVarStr var_94, "    <th>Detalle de Recaudador</th>"
  loc_BC1EDE: PopAdLdVar
  loc_BC1EDF: FLdPr Me
  loc_BC1EE2: MemLdRfVar from_stack_1.global_60
  loc_BC1EE5: LdPrVar
  loc_BC1EE7: LateMemCall
  loc_BC1EED: LitVarStr var_94, "    <th>Cod. Conc.</th>"
  loc_BC1EF2: PopAdLdVar
  loc_BC1EF3: FLdPr Me
  loc_BC1EF6: MemLdRfVar from_stack_1.global_60
  loc_BC1EF9: LdPrVar
  loc_BC1EFB: LateMemCall
  loc_BC1F01: LitVarStr var_94, "    <th>Detalle del Concepto</th>"
  loc_BC1F06: PopAdLdVar
  loc_BC1F07: FLdPr Me
  loc_BC1F0A: MemLdRfVar from_stack_1.global_60
  loc_BC1F0D: LdPrVar
  loc_BC1F0F: LateMemCall
  loc_BC1F15: LitVarStr var_94, "    <th>Total</th>"
  loc_BC1F1A: PopAdLdVar
  loc_BC1F1B: FLdPr Me
  loc_BC1F1E: MemLdRfVar from_stack_1.global_60
  loc_BC1F21: LdPrVar
  loc_BC1F23: LateMemCall
  loc_BC1F29: LitVarStr var_94, "    <th>Comisión</th>"
  loc_BC1F2E: PopAdLdVar
  loc_BC1F2F: FLdPr Me
  loc_BC1F32: MemLdRfVar from_stack_1.global_60
  loc_BC1F35: LdPrVar
  loc_BC1F37: LateMemCall
  loc_BC1F3D: LitVarStr var_94, "    <th>Neto</th>"
  loc_BC1F42: PopAdLdVar
  loc_BC1F43: FLdPr Me
  loc_BC1F46: MemLdRfVar from_stack_1.global_60
  loc_BC1F49: LdPrVar
  loc_BC1F4B: LateMemCall
  loc_BC1F51: LitVarStr var_94, "  </tr>"
  loc_BC1F56: PopAdLdVar
  loc_BC1F57: FLdPr Me
  loc_BC1F5A: MemLdRfVar from_stack_1.global_60
  loc_BC1F5D: LdPrVar
  loc_BC1F5F: LateMemCall
  loc_BC1F65: LitVarStr var_94, "  </thead>"
  loc_BC1F6A: PopAdLdVar
  loc_BC1F6B: FLdPr Me
  loc_BC1F6E: MemLdRfVar from_stack_1.global_60
  loc_BC1F71: LdPrVar
  loc_BC1F73: LateMemCall
  loc_BC1F79: ExitProcHresult
  loc_BC1F7A: GeCyR8
End Function

Private Function Proc_241_24_AE0E1C() 'AE0E1C
  'Data Table: 4A6C60
  loc_AE0CB0: LitVarStr var_94, "</table>"
  loc_AE0CB5: PopAdLdVar
  loc_AE0CB6: FLdPr Me
  loc_AE0CB9: MemLdRfVar from_stack_1.global_60
  loc_AE0CBC: LdPrVar
  loc_AE0CBE: LateMemCall
  loc_AE0CC4: LitVarStr var_94, "<br>"
  loc_AE0CC9: PopAdLdVar
  loc_AE0CCA: FLdPr Me
  loc_AE0CCD: MemLdRfVar from_stack_1.global_60
  loc_AE0CD0: LdPrVar
  loc_AE0CD2: LateMemCall
  loc_AE0CD8: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_AE0CDD: PopAdLdVar
  loc_AE0CDE: FLdPr Me
  loc_AE0CE1: MemLdRfVar from_stack_1.global_60
  loc_AE0CE4: LdPrVar
  loc_AE0CE6: LateMemCall
  loc_AE0CEC: LitVarStr var_94, "  <tr>"
  loc_AE0CF1: PopAdLdVar
  loc_AE0CF2: FLdPr Me
  loc_AE0CF5: MemLdRfVar from_stack_1.global_60
  loc_AE0CF8: LdPrVar
  loc_AE0CFA: LateMemCall
  loc_AE0D00: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_AE0D05: PopAdLdVar
  loc_AE0D06: FLdPr Me
  loc_AE0D09: MemLdRfVar from_stack_1.global_60
  loc_AE0D0C: LdPrVar
  loc_AE0D0E: LateMemCall
  loc_AE0D14: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_AE0D19: PopAdLdVar
  loc_AE0D1A: FLdPr Me
  loc_AE0D1D: MemLdRfVar from_stack_1.global_60
  loc_AE0D20: LdPrVar
  loc_AE0D22: LateMemCall
  loc_AE0D28: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_AE0D2D: PopAdLdVar
  loc_AE0D2E: FLdPr Me
  loc_AE0D31: MemLdRfVar from_stack_1.global_60
  loc_AE0D34: LdPrVar
  loc_AE0D36: LateMemCall
  loc_AE0D3C: LitVarStr var_94, "          <map name=""Map"">"
  loc_AE0D41: PopAdLdVar
  loc_AE0D42: FLdPr Me
  loc_AE0D45: MemLdRfVar from_stack_1.global_60
  loc_AE0D48: LdPrVar
  loc_AE0D4A: LateMemCall
  loc_AE0D50: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_AE0D55: PopAdLdVar
  loc_AE0D56: FLdPr Me
  loc_AE0D59: MemLdRfVar from_stack_1.global_60
  loc_AE0D5C: LdPrVar
  loc_AE0D5E: LateMemCall
  loc_AE0D64: LitVarStr var_94, "          </map>"
  loc_AE0D69: PopAdLdVar
  loc_AE0D6A: FLdPr Me
  loc_AE0D6D: MemLdRfVar from_stack_1.global_60
  loc_AE0D70: LdPrVar
  loc_AE0D72: LateMemCall
  loc_AE0D78: LitVarStr var_94, "    </div></th>"
  loc_AE0D7D: PopAdLdVar
  loc_AE0D7E: FLdPr Me
  loc_AE0D81: MemLdRfVar from_stack_1.global_60
  loc_AE0D84: LdPrVar
  loc_AE0D86: LateMemCall
  loc_AE0D8C: LitVarStr var_94, "  </tr>"
  loc_AE0D91: PopAdLdVar
  loc_AE0D92: FLdPr Me
  loc_AE0D95: MemLdRfVar from_stack_1.global_60
  loc_AE0D98: LdPrVar
  loc_AE0D9A: LateMemCall
  loc_AE0DA0: LitVarStr var_94, "  <tr>"
  loc_AE0DA5: PopAdLdVar
  loc_AE0DA6: FLdPr Me
  loc_AE0DA9: MemLdRfVar from_stack_1.global_60
  loc_AE0DAC: LdPrVar
  loc_AE0DAE: LateMemCall
  loc_AE0DB4: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_AE0DB9: PopAdLdVar
  loc_AE0DBA: FLdPr Me
  loc_AE0DBD: MemLdRfVar from_stack_1.global_60
  loc_AE0DC0: LdPrVar
  loc_AE0DC2: LateMemCall
  loc_AE0DC8: LitVarStr var_94, "  </tr>"
  loc_AE0DCD: PopAdLdVar
  loc_AE0DCE: FLdPr Me
  loc_AE0DD1: MemLdRfVar from_stack_1.global_60
  loc_AE0DD4: LdPrVar
  loc_AE0DD6: LateMemCall
  loc_AE0DDC: LitVarStr var_94, "</table>"
  loc_AE0DE1: PopAdLdVar
  loc_AE0DE2: FLdPr Me
  loc_AE0DE5: MemLdRfVar from_stack_1.global_60
  loc_AE0DE8: LdPrVar
  loc_AE0DEA: LateMemCall
  loc_AE0DF0: LitVarStr var_94, "</body>"
  loc_AE0DF5: PopAdLdVar
  loc_AE0DF6: FLdPr Me
  loc_AE0DF9: MemLdRfVar from_stack_1.global_60
  loc_AE0DFC: LdPrVar
  loc_AE0DFE: LateMemCall
  loc_AE0E04: LitVarStr var_94, "</html>"
  loc_AE0E09: PopAdLdVar
  loc_AE0E0A: FLdPr Me
  loc_AE0E0D: MemLdRfVar from_stack_1.global_60
  loc_AE0E10: LdPrVar
  loc_AE0E12: LateMemCall
  loc_AE0E18: ExitProcHresult
End Function
