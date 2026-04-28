VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeApremioParaTribunal
  Caption = "Listado de Apremio para el Tribunal"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeApremioParaTribunal.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10740
  ClientHeight = 5124
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
    Top = 4875
    Width = 10740
    Height = 255
    TabIndex = 22
    OleObjectBlob = "rptListadodeApremioParaTribunal.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 3360
    Width = 855
    Height = 735
    TabIndex = 20
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
    Picture = "rptListadodeApremioParaTribunal.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0B9C
    Left = 9720
    Top = 3600
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 3120
    Width = 4815
    Height = 1215
    TabIndex = 16
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3360
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 19
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3120
    Width = 4095
    Height = 1215
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 2895
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
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 6495
      Height = 2175
      TabIndex = 1
      Begin VB.OptionButton OptFecha
        Caption = "Por Fecha"
        Left = 4080
        Top = 480
        Width = 1575
        Height = 300
        TabIndex = 3
      End
      Begin VB.OptionButton OptNrodeApremio
        Caption = "Por Nro de Apremio"
        Left = 360
        Top = 480
        Width = 2535
        Height = 300
        TabIndex = 2
      End
      Begin MSMask.MaskEdBox NumeApreDesdeMsk
        Left = 1320
        Top = 960
        Width = 1215
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0C00
      End
      Begin MSMask.MaskEdBox NumeApreHastaMsk
        Left = 1320
        Top = 1440
        Width = 1215
        Height = 360
        TabIndex = 9
        OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0C98
      End
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 4080
        Top = 960
        Width = 1335
        Height = 360
        TabIndex = 7
        OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0D30
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 4080
        Top = 1440
        Width = 1335
        Height = 360
        TabIndex = 11
        OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0DE0
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 3300
        Top = 1440
        Width = 705
        Height = 300
        TabIndex = 10
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 3240
        Top = 960
        Width = 765
        Height = 300
        TabIndex = 6
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 540
        Top = 1440
        Width = 705
        Height = 300
        TabIndex = 8
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 480
        Top = 960
        Width = 765
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 12
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9600
    Top = 3720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptListadodeApremioParaTribunal.frx":0E90
  End
End

Attribute VB_Name = "rptListadodeApremioParaTribunal"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdPredeterminada_Click() '9CDF40
  'Data Table: 4B9A3C
  loc_9CDF28: LitI2_Byte 0
  loc_9CDF2A: ILdRf Me
  loc_9CDF2D: CastAd
  loc_9CDF30: FStAdFunc var_88
  loc_9CDF33: FLdRfVar var_88
  loc_9CDF36: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CDF3B: FFree1Ad var_88
  loc_9CDF3E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1DB90
  'Data Table: 4B9A3C
  loc_A1DB58: FLdPr Me
  loc_A1DB5B: VCallAd Control_ID_statusBar
  loc_A1DB5E: FStAdFunc var_88
  loc_A1DB61: FLdPr var_88
  loc_A1DB64: LateIdLdVar var_98 DispID_1 0
  loc_A1DB6B: CStrVarTmp
  loc_A1DB6C: CVarStr var_A8
  loc_A1DB6F: PopAdLdVar
  loc_A1DB70: FLdPr Me
  loc_A1DB73: VCallAd Control_ID_statusBar
  loc_A1DB76: FStAdFunc var_BC
  loc_A1DB79: FLdPr var_BC
  loc_A1DB7C: LateIdSt
  loc_A1DB81: FFreeAd var_88 = ""
  loc_A1DB88: FFreeVar var_98 = ""
  loc_A1DB8F: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CE1EC
  'Data Table: 4B9A3C
  loc_9CE1D4: LitI2_Byte &HFF
  loc_9CE1D6: ILdRf Me
  loc_9CE1D9: CastAd
  loc_9CE1DC: FStAdFunc var_88
  loc_9CE1DF: FLdRfVar var_88
  loc_9CE1E2: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CE1E7: FFree1Ad var_88
  loc_9CE1EA: ExitProcHresult
End Sub

Private Sub NumeApreDesdeMsk_UnknownEvent_0 '9C4730
  'Data Table: 4B9A3C
  loc_9C471C: FLdPr Me
  loc_9C471F: VCallAd Control_ID_NumeApreDesdeMsk
  loc_9C4722: CVarAd
  loc_9C4726: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C472B: FFree1Var var_94 = ""
  loc_9C472E: ExitProcHresult
End Sub

Private Function NumeApreDesdeMsk_UnknownEvent_8(arg_C) 'A871F8
  'Data Table: 4B9A3C
  loc_A87168: FLdPr Me
  loc_A8716B: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A8716E: FStAdFunc var_88
  loc_A87171: FLdPr var_88
  loc_A87174: LateIdLdVar var_98 DispID_13 -32767
  loc_A8717B: CBoolVar
  loc_A8717D: FFree1Ad var_88
  loc_A87180: FFree1Var var_98 = ""
  loc_A87183: BranchF loc_A871F5
  loc_A87186: FLdPr Me
  loc_A87189: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A8718C: FStAdFunc var_88
  loc_A8718F: FLdPr var_88
  loc_A87192: LateIdLdVar var_98 DispID_22 0
  loc_A87199: PopAd
  loc_A8719B: LitI2_Byte &HFF
  loc_A8719D: LitI2_Byte 0
  loc_A8719F: FLdRfVar var_98
  loc_A871A2: CStrVarTmp
  loc_A871A3: FStStrNoPop var_9C
  loc_A871A6: LitStr "Número de Apremio"
  loc_A871A9: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A871AE: FStStrNoPop var_A0
  loc_A871B1: FLdPr Me
  loc_A871B4: MemStStrCopy
  loc_A871B8: FFreeStr var_9C = ""
  loc_A871BF: FFree1Ad var_88
  loc_A871C2: FFree1Var var_98 = ""
  loc_A871C5: FLdPr Me
  loc_A871C8: MemLdStr global_116
  loc_A871CB: LitStr vbNullString
  loc_A871CE: NeStr
  loc_A871D0: BranchF loc_A871F5
  loc_A871D3: FLdPr Me
  loc_A871D6: MemLdStr global_116
  loc_A871D9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A871DE: FLdPr Me
  loc_A871E1: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A871E4: CVarAd
  loc_A871E8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A871ED: FFree1Var var_98 = ""
  loc_A871F0: LitI2_Byte &HFF
  loc_A871F2: IStI2 arg_C
  loc_A871F5: ExitProcHresult
End Function

Private Sub cmdSalir_Click() 'A01DFC
  'Data Table: 4B9A3C
  loc_A01DCC: LitVarStr var_94, "Cerrando..."
  loc_A01DD1: PopAdLdVar
  loc_A01DD2: FLdPr Me
  loc_A01DD5: VCallAd Control_ID_statusBar
  loc_A01DD8: FStAdFunc var_A8
  loc_A01DDB: FLdPr var_A8
  loc_A01DDE: LateIdSt
  loc_A01DE3: FFree1Ad var_A8
  loc_A01DE6: ILdRf Me
  loc_A01DE9: FStAdNoPop
  loc_A01DED: ImpAdLdRf MemVar_D9C5D8
  loc_A01DF0: NewIfNullPr Global
  loc_A01DF3: Global.Unload from_stack_1
  loc_A01DF8: FFree1Ad var_A8
  loc_A01DFB: ExitProcHresult
End Sub

Private Sub NumeApreHastaMsk_UnknownEvent_0 '9C4778
  'Data Table: 4B9A3C
  loc_9C4764: FLdPr Me
  loc_9C4767: VCallAd Control_ID_NumeApreHastaMsk
  loc_9C476A: CVarAd
  loc_9C476E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4773: FFree1Var var_94 = ""
  loc_9C4776: ExitProcHresult
End Sub

Private Function NumeApreHastaMsk_UnknownEvent_8(arg_C) 'A87538
  'Data Table: 4B9A3C
  loc_A874A8: FLdPr Me
  loc_A874AB: VCallAd Control_ID_NumeApreHastaMsk
  loc_A874AE: FStAdFunc var_88
  loc_A874B1: FLdPr var_88
  loc_A874B4: LateIdLdVar var_98 DispID_13 -32767
  loc_A874BB: CBoolVar
  loc_A874BD: FFree1Ad var_88
  loc_A874C0: FFree1Var var_98 = ""
  loc_A874C3: BranchF loc_A87535
  loc_A874C6: FLdPr Me
  loc_A874C9: VCallAd Control_ID_NumeApreHastaMsk
  loc_A874CC: FStAdFunc var_88
  loc_A874CF: FLdPr var_88
  loc_A874D2: LateIdLdVar var_98 DispID_22 0
  loc_A874D9: PopAd
  loc_A874DB: LitI2_Byte &HFF
  loc_A874DD: LitI2_Byte 0
  loc_A874DF: FLdRfVar var_98
  loc_A874E2: CStrVarTmp
  loc_A874E3: FStStrNoPop var_9C
  loc_A874E6: LitStr "Número de Apremio"
  loc_A874E9: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A874EE: FStStrNoPop var_A0
  loc_A874F1: FLdPr Me
  loc_A874F4: MemStStrCopy
  loc_A874F8: FFreeStr var_9C = ""
  loc_A874FF: FFree1Ad var_88
  loc_A87502: FFree1Var var_98 = ""
  loc_A87505: FLdPr Me
  loc_A87508: MemLdStr global_116
  loc_A8750B: LitStr vbNullString
  loc_A8750E: NeStr
  loc_A87510: BranchF loc_A87535
  loc_A87513: FLdPr Me
  loc_A87516: MemLdStr global_116
  loc_A87519: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8751E: FLdPr Me
  loc_A87521: VCallAd Control_ID_NumeApreHastaMsk
  loc_A87524: CVarAd
  loc_A87528: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8752D: FFree1Var var_98 = ""
  loc_A87530: LitI2_Byte &HFF
  loc_A87532: IStI2 arg_C
  loc_A87535: ExitProcHresult
End Function

Private Sub OptFecha_Click() 'ABFE80
  'Data Table: 4B9A3C
  loc_ABFD78: FLdRfVar var_8A
  loc_ABFD7B: FLdPr Me
  loc_ABFD7E: VCallAd Control_ID_OptFecha
  loc_ABFD81: FStAdFunc var_88
  loc_ABFD84: FLdPr var_88
  loc_ABFD87:  = Me.Value
  loc_ABFD8C: FLdI2 var_8A
  loc_ABFD8F: LitI2_Byte &HFF
  loc_ABFD91: EqI2
  loc_ABFD92: FFree1Ad var_88
  loc_ABFD95: BranchF loc_ABFDFA
  loc_ABFD98: LitVar_FALSE
  loc_ABFD9C: PopAdLdVar
  loc_ABFD9D: FLdPr Me
  loc_ABFDA0: VCallAd Control_ID_NumeApreDesdeMsk
  loc_ABFDA3: FStAdFunc var_88
  loc_ABFDA6: FLdPr var_88
  loc_ABFDA9: LateIdSt
  loc_ABFDAE: FFree1Ad var_88
  loc_ABFDB1: LitVar_FALSE
  loc_ABFDB5: PopAdLdVar
  loc_ABFDB6: FLdPr Me
  loc_ABFDB9: VCallAd Control_ID_NumeApreHastaMsk
  loc_ABFDBC: FStAdFunc var_88
  loc_ABFDBF: FLdPr var_88
  loc_ABFDC2: LateIdSt
  loc_ABFDC7: FFree1Ad var_88
  loc_ABFDCA: LitVar_TRUE var_9C
  loc_ABFDCD: PopAdLdVar
  loc_ABFDCE: FLdPr Me
  loc_ABFDD1: VCallAd Control_ID_FealCtctDesdeMsk
  loc_ABFDD4: FStAdFunc var_88
  loc_ABFDD7: FLdPr var_88
  loc_ABFDDA: LateIdSt
  loc_ABFDDF: FFree1Ad var_88
  loc_ABFDE2: LitVar_TRUE var_9C
  loc_ABFDE5: PopAdLdVar
  loc_ABFDE6: FLdPr Me
  loc_ABFDE9: VCallAd Control_ID_FealCtctHastaMsk
  loc_ABFDEC: FStAdFunc var_88
  loc_ABFDEF: FLdPr var_88
  loc_ABFDF2: LateIdSt
  loc_ABFDF7: FFree1Ad var_88
  loc_ABFDFA: FLdRfVar var_8A
  loc_ABFDFD: FLdPr Me
  loc_ABFE00: VCallAd Control_ID_OptFecha
  loc_ABFE03: FStAdFunc var_88
  loc_ABFE06: FLdPr var_88
  loc_ABFE09:  = Me.Value
  loc_ABFE0E: FLdI2 var_8A
  loc_ABFE11: LitI2_Byte 0
  loc_ABFE13: EqI2
  loc_ABFE14: FFree1Ad var_88
  loc_ABFE17: BranchF loc_ABFE7C
  loc_ABFE1A: LitVar_TRUE var_9C
  loc_ABFE1D: PopAdLdVar
  loc_ABFE1E: FLdPr Me
  loc_ABFE21: VCallAd Control_ID_NumeApreDesdeMsk
  loc_ABFE24: FStAdFunc var_88
  loc_ABFE27: FLdPr var_88
  loc_ABFE2A: LateIdSt
  loc_ABFE2F: FFree1Ad var_88
  loc_ABFE32: LitVar_TRUE var_9C
  loc_ABFE35: PopAdLdVar
  loc_ABFE36: FLdPr Me
  loc_ABFE39: VCallAd Control_ID_NumeApreHastaMsk
  loc_ABFE3C: FStAdFunc var_88
  loc_ABFE3F: FLdPr var_88
  loc_ABFE42: LateIdSt
  loc_ABFE47: FFree1Ad var_88
  loc_ABFE4A: LitVar_FALSE
  loc_ABFE4E: PopAdLdVar
  loc_ABFE4F: FLdPr Me
  loc_ABFE52: VCallAd Control_ID_FealCtctDesdeMsk
  loc_ABFE55: FStAdFunc var_88
  loc_ABFE58: FLdPr var_88
  loc_ABFE5B: LateIdSt
  loc_ABFE60: FFree1Ad var_88
  loc_ABFE63: LitVar_FALSE
  loc_ABFE67: PopAdLdVar
  loc_ABFE68: FLdPr Me
  loc_ABFE6B: VCallAd Control_ID_FealCtctHastaMsk
  loc_ABFE6E: FStAdFunc var_88
  loc_ABFE71: FLdPr var_88
  loc_ABFE74: LateIdSt
  loc_ABFE79: FFree1Ad var_88
  loc_ABFE7C: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C4658
  'Data Table: 4B9A3C
  loc_9C4644: FLdPr Me
  loc_9C4647: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C464A: CVarAd
  loc_9C464E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4653: FFree1Var var_94 = ""
  loc_9C4656: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A655A0
  'Data Table: 4B9A3C
  loc_A65544: FLdPr Me
  loc_A65547: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6554A: FStAdFunc var_88
  loc_A6554D: FLdPr var_88
  loc_A65550: LateIdLdVar var_98 DispID_15 0
  loc_A65557: CStrVarTmp
  loc_A65558: FStStrNoPop var_9C
  loc_A6555B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65560: FStStrNoPop var_A0
  loc_A65563: FLdPr Me
  loc_A65566: MemStStrCopy
  loc_A6556A: FFreeStr var_9C = ""
  loc_A65571: FFree1Ad var_88
  loc_A65574: FFree1Var var_98 = ""
  loc_A65577: FLdPr Me
  loc_A6557A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6557D: FStAdFuncNoPop
  loc_A65580: CastAd
  loc_A65583: FStAdFunc var_A4
  loc_A65586: FLdRfVar var_A4
  loc_A65589: FLdPr Me
  loc_A6558C: MemLdStr global_116
  loc_A6558F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65594: IStI2 arg_C
  loc_A65597: FFreeAd var_88 = ""
  loc_A6559E: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A24DB8
  'Data Table: 4B9A3C
  loc_A24D70: ILdI2 KeyAscii
  loc_A24D73: CI4UI1
  loc_A24D74: LitI4 &H20
  loc_A24D79: EqI4
  loc_A24D7A: BranchF loc_A24DB7
  loc_A24D7D: LitVar_Missing var_A4
  loc_A24D80: PopAdLdVar
  loc_A24D81: LitVarI4
  loc_A24D89: PopAdLdVar
  loc_A24D8A: ImpAdLdRf MemVar_D930A4
  loc_A24D8D: NewIfNullPr frmCalendario
  loc_A24D90: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24D95: ImpAdLdRf MemVar_D93028
  loc_A24D98: CDargRef
  loc_A24D9C: FLdPr Me
  loc_A24D9F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A24DA2: FStAdFunc var_A8
  loc_A24DA5: FLdPr var_A8
  loc_A24DA8: LateIdSt
  loc_A24DAD: FFree1Ad var_A8
  loc_A24DB0: LitStr vbNullString
  loc_A24DB3: ImpAdStStrCopy MemVar_D93028
  loc_A24DB7: ExitProcHresult
End Sub

Private Sub Form_Load() '9DE43C
  'Data Table: 4B9A3C
  loc_9DE420: ILdRf Me
  loc_9DE423: CastAd
  loc_9DE426: FStAdFunc var_88
  loc_9DE429: FLdRfVar var_88
  loc_9DE42C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DE431: FFree1Ad var_88
  loc_9DE434: Call cmdNueva_Click()
  loc_9DE439: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CDEF4
  'Data Table: 4B9A3C
  loc_9CDEDC: FLdPr Me
  loc_9CDEDF: VCallAd Control_ID_wbbReporte
  loc_9CDEE2: FStAdFunc var_88
  loc_9CDEE5: FLdRfVar var_88
  loc_9CDEE8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CDEED: FFree1Ad var_88
  loc_9CDEF0: ExitProcHresult
  loc_9CDEF1: LtI2
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C46E8
  'Data Table: 4B9A3C
  loc_9C46D4: FLdPr Me
  loc_9C46D7: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C46DA: CVarAd
  loc_9C46DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C46E3: FFree1Var var_94 = ""
  loc_9C46E6: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_8 'A632A0
  'Data Table: 4B9A3C
  loc_A63244: FLdPr Me
  loc_A63247: VCallAd Control_ID_FealCtctHastaMsk
  loc_A6324A: FStAdFunc var_88
  loc_A6324D: FLdPr var_88
  loc_A63250: LateIdLdVar var_98 DispID_15 0
  loc_A63257: CStrVarTmp
  loc_A63258: FStStrNoPop var_9C
  loc_A6325B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63260: FStStrNoPop var_A0
  loc_A63263: FLdPr Me
  loc_A63266: MemStStrCopy
  loc_A6326A: FFreeStr var_9C = ""
  loc_A63271: FFree1Ad var_88
  loc_A63274: FFree1Var var_98 = ""
  loc_A63277: FLdPr Me
  loc_A6327A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A6327D: FStAdFuncNoPop
  loc_A63280: CastAd
  loc_A63283: FStAdFunc var_A4
  loc_A63286: FLdRfVar var_A4
  loc_A63289: FLdPr Me
  loc_A6328C: MemLdStr global_116
  loc_A6328F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63294: IStI2 Cancel
  loc_A63297: FFreeAd var_88 = ""
  loc_A6329E: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A24EB0
  'Data Table: 4B9A3C
  loc_A24E68: ILdI2 KeyAscii
  loc_A24E6B: CI4UI1
  loc_A24E6C: LitI4 &H20
  loc_A24E71: EqI4
  loc_A24E72: BranchF loc_A24EAF
  loc_A24E75: LitVar_Missing var_A4
  loc_A24E78: PopAdLdVar
  loc_A24E79: LitVarI4
  loc_A24E81: PopAdLdVar
  loc_A24E82: ImpAdLdRf MemVar_D930A4
  loc_A24E85: NewIfNullPr frmCalendario
  loc_A24E88: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24E8D: ImpAdLdRf MemVar_D93028
  loc_A24E90: CDargRef
  loc_A24E94: FLdPr Me
  loc_A24E97: VCallAd Control_ID_FealCtctHastaMsk
  loc_A24E9A: FStAdFunc var_A8
  loc_A24E9D: FLdPr var_A8
  loc_A24EA0: LateIdSt
  loc_A24EA5: FFree1Ad var_A8
  loc_A24EA8: LitStr vbNullString
  loc_A24EAB: ImpAdStStrCopy MemVar_D93028
  loc_A24EAF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE5CC
  'Data Table: 4B9A3C
  loc_9DE5B0: LitI2_Byte 0
  loc_9DE5B2: PopTmpLdAd2 var_8A
  loc_9DE5B5: ILdRf Me
  loc_9DE5B8: CastAd
  loc_9DE5BB: FStAdFunc var_88
  loc_9DE5BE: FLdRfVar var_88
  loc_9DE5C1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE5C6: FFree1Ad var_88
  loc_9DE5C9: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CDF8C
  'Data Table: 4B9A3C
  loc_9CDF74: ILdRf Me
  loc_9CDF77: CastAd
  loc_9CDF7A: FStAdFunc var_88
  loc_9CDF7D: FLdRfVar var_88
  loc_9CDF80: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CDF85: FFree1Ad var_88
  loc_9CDF88: ExitProcHresult
End Sub

Private Sub OptNrodeApremio_Click() 'AC00F8
  'Data Table: 4B9A3C
  loc_ABFFF0: FLdRfVar var_8A
  loc_ABFFF3: FLdPr Me
  loc_ABFFF6: VCallAd Control_ID_OptNrodeApremio
  loc_ABFFF9: FStAdFunc var_88
  loc_ABFFFC: FLdPr var_88
  loc_ABFFFF:  = Me.Value
  loc_AC0004: FLdI2 var_8A
  loc_AC0007: LitI2_Byte &HFF
  loc_AC0009: EqI2
  loc_AC000A: FFree1Ad var_88
  loc_AC000D: BranchF loc_AC0072
  loc_AC0010: LitVar_TRUE var_9C
  loc_AC0013: PopAdLdVar
  loc_AC0014: FLdPr Me
  loc_AC0017: VCallAd Control_ID_NumeApreDesdeMsk
  loc_AC001A: FStAdFunc var_88
  loc_AC001D: FLdPr var_88
  loc_AC0020: LateIdSt
  loc_AC0025: FFree1Ad var_88
  loc_AC0028: LitVar_TRUE var_9C
  loc_AC002B: PopAdLdVar
  loc_AC002C: FLdPr Me
  loc_AC002F: VCallAd Control_ID_NumeApreHastaMsk
  loc_AC0032: FStAdFunc var_88
  loc_AC0035: FLdPr var_88
  loc_AC0038: LateIdSt
  loc_AC003D: FFree1Ad var_88
  loc_AC0040: LitVar_FALSE
  loc_AC0044: PopAdLdVar
  loc_AC0045: FLdPr Me
  loc_AC0048: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC004B: FStAdFunc var_88
  loc_AC004E: FLdPr var_88
  loc_AC0051: LateIdSt
  loc_AC0056: FFree1Ad var_88
  loc_AC0059: LitVar_FALSE
  loc_AC005D: PopAdLdVar
  loc_AC005E: FLdPr Me
  loc_AC0061: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC0064: FStAdFunc var_88
  loc_AC0067: FLdPr var_88
  loc_AC006A: LateIdSt
  loc_AC006F: FFree1Ad var_88
  loc_AC0072: FLdRfVar var_8A
  loc_AC0075: FLdPr Me
  loc_AC0078: VCallAd Control_ID_OptNrodeApremio
  loc_AC007B: FStAdFunc var_88
  loc_AC007E: FLdPr var_88
  loc_AC0081:  = Me.Value
  loc_AC0086: FLdI2 var_8A
  loc_AC0089: LitI2_Byte 0
  loc_AC008B: EqI2
  loc_AC008C: FFree1Ad var_88
  loc_AC008F: BranchF loc_AC00F4
  loc_AC0092: LitVar_FALSE
  loc_AC0096: PopAdLdVar
  loc_AC0097: FLdPr Me
  loc_AC009A: VCallAd Control_ID_NumeApreDesdeMsk
  loc_AC009D: FStAdFunc var_88
  loc_AC00A0: FLdPr var_88
  loc_AC00A3: LateIdSt
  loc_AC00A8: FFree1Ad var_88
  loc_AC00AB: LitVar_FALSE
  loc_AC00AF: PopAdLdVar
  loc_AC00B0: FLdPr Me
  loc_AC00B3: VCallAd Control_ID_NumeApreHastaMsk
  loc_AC00B6: FStAdFunc var_88
  loc_AC00B9: FLdPr var_88
  loc_AC00BC: LateIdSt
  loc_AC00C1: FFree1Ad var_88
  loc_AC00C4: LitVar_TRUE var_9C
  loc_AC00C7: PopAdLdVar
  loc_AC00C8: FLdPr Me
  loc_AC00CB: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC00CE: FStAdFunc var_88
  loc_AC00D1: FLdPr var_88
  loc_AC00D4: LateIdSt
  loc_AC00D9: FFree1Ad var_88
  loc_AC00DC: LitVar_TRUE var_9C
  loc_AC00DF: PopAdLdVar
  loc_AC00E0: FLdPr Me
  loc_AC00E3: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC00E6: FStAdFunc var_88
  loc_AC00E9: FLdPr var_88
  loc_AC00EC: LateIdSt
  loc_AC00F1: FFree1Ad var_88
  loc_AC00F4: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AB5D58
  'Data Table: 4B9A3C
  loc_AB5C68: LitI2_Byte 0
  loc_AB5C6A: FLdPr Me
  loc_AB5C6D: MemStI2 bGenerado
  loc_AB5C70: LitI2_Byte 0
  loc_AB5C72: ILdRf Me
  loc_AB5C75: CastAd
  loc_AB5C78: FStAdFunc var_88
  loc_AB5C7B: FLdRfVar var_88
  loc_AB5C7E: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AB5C83: FFree1Ad var_88
  loc_AB5C86: LitI2_Byte &HFF
  loc_AB5C88: FLdPr Me
  loc_AB5C8B: VCallAd Control_ID_OptNrodeApremio
  loc_AB5C8E: FStAdFunc var_88
  loc_AB5C91: FLdPr var_88
  loc_AB5C94: Me.Value = from_stack_1b
  loc_AB5C99: FFree1Ad var_88
  loc_AB5C9C: LitI2_Byte 0
  loc_AB5C9E: FLdPr Me
  loc_AB5CA1: VCallAd Control_ID_OptFecha
  loc_AB5CA4: FStAdFunc var_88
  loc_AB5CA7: FLdPr var_88
  loc_AB5CAA: Me.Value = from_stack_1b
  loc_AB5CAF: FFree1Ad var_88
  loc_AB5CB2: LitI2_Byte 0
  loc_AB5CB4: CStrUI1
  loc_AB5CB6: CVarStr var_98
  loc_AB5CB9: PopAdLdVar
  loc_AB5CBA: FLdPr Me
  loc_AB5CBD: VCallAd Control_ID_NumeApreDesdeMsk
  loc_AB5CC0: FStAdFunc var_88
  loc_AB5CC3: FLdPr var_88
  loc_AB5CC6: LateIdSt
  loc_AB5CCB: FFree1Ad var_88
  loc_AB5CCE: FFree1Var var_98 = ""
  loc_AB5CD1: LitI4 &HF423F
  loc_AB5CD6: CStrI4
  loc_AB5CD8: CVarStr var_98
  loc_AB5CDB: PopAdLdVar
  loc_AB5CDC: FLdPr Me
  loc_AB5CDF: VCallAd Control_ID_NumeApreHastaMsk
  loc_AB5CE2: FStAdFunc var_88
  loc_AB5CE5: FLdPr var_88
  loc_AB5CE8: LateIdSt
  loc_AB5CED: FFree1Ad var_88
  loc_AB5CF0: FFree1Var var_98 = ""
  loc_AB5CF3: LitI2_Byte 0
  loc_AB5CF5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB5CFA: CStrDate
  loc_AB5CFC: CVarStr var_98
  loc_AB5CFF: PopAdLdVar
  loc_AB5D00: FLdPr Me
  loc_AB5D03: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AB5D06: FStAdFunc var_88
  loc_AB5D09: FLdPr var_88
  loc_AB5D0C: LateIdSt
  loc_AB5D11: FFree1Ad var_88
  loc_AB5D14: FFree1Var var_98 = ""
  loc_AB5D17: LitI2_Byte 0
  loc_AB5D19: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB5D1E: CStrDate
  loc_AB5D20: CVarStr var_98
  loc_AB5D23: PopAdLdVar
  loc_AB5D24: FLdPr Me
  loc_AB5D27: VCallAd Control_ID_FealCtctHastaMsk
  loc_AB5D2A: FStAdFunc var_88
  loc_AB5D2D: FLdPr var_88
  loc_AB5D30: LateIdSt
  loc_AB5D35: FFree1Ad var_88
  loc_AB5D38: FFree1Var var_98 = ""
  loc_AB5D3B: Call HabilitarCriterio()
  loc_AB5D40: ILdRf Me
  loc_AB5D43: CastAd
  loc_AB5D46: FStAdFunc var_88
  loc_AB5D49: FLdRfVar var_88
  loc_AB5D4C: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AB5D51: FFree1Ad var_88
  loc_AB5D54: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DE3EC
  'Data Table: 4B9A3C
  loc_9DE3D0: LitI2_Byte &HFF
  loc_9DE3D2: LitI2_Byte 0
  loc_9DE3D4: ILdRf Me
  loc_9DE3D7: CastAd
  loc_9DE3DA: FStAdFunc var_88
  loc_9DE3DD: FLdRfVar var_88
  loc_9DE3E0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DE3E5: FFree1Ad var_88
  loc_9DE3E8: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4BAAF4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4BAB03
  bGenerado = Value
End Sub

Public Function bLogosGet() '4BAB12
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4BAB21
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A8AE50
  'Data Table: 4B9A3C
  loc_A8ADCC: LitI4 0
  loc_A8ADD1: LitI4 5
  loc_A8ADD6: FLdRfVar var_88
  loc_A8ADD9: Redim
  loc_A8ADE3: FLdPr Me
  loc_A8ADE6: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A8ADE9: CVarAd
  loc_A8ADED: ParmAry1St
  loc_A8ADF3: FLdPr Me
  loc_A8ADF6: VCallAd Control_ID_NumeApreHastaMsk
  loc_A8ADF9: CVarAd
  loc_A8ADFD: ParmAry1St
  loc_A8AE03: FLdPr Me
  loc_A8AE06: VCallAd Control_ID_OptFecha
  loc_A8AE09: CVarAd
  loc_A8AE0D: ParmAry1St
  loc_A8AE13: FLdPr Me
  loc_A8AE16: VCallAd Control_ID_OptNrodeApremio
  loc_A8AE19: CVarAd
  loc_A8AE1D: ParmAry1St
  loc_A8AE23: FLdPr Me
  loc_A8AE26: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A8AE29: CVarAd
  loc_A8AE2D: ParmAry1St
  loc_A8AE33: FLdPr Me
  loc_A8AE36: VCallAd Control_ID_FealCtctHastaMsk
  loc_A8AE39: CVarAd
  loc_A8AE3D: ParmAry1St
  loc_A8AE43: FLdRfVar var_88
  loc_A8AE46: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8AE4B: FLdRfVar var_88
  loc_A8AE4E: Erase
  loc_A8AE4F: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C48E4
  'Data Table: 4B9A3C
  loc_9C48CC: LitI2_Byte 0
  loc_9C48CE: FLdPr Me
  loc_9C48D1: MemStI2 bLogos
  loc_9C48D4: Call GeneraHTML()
  loc_9C48D9: LitI2_Byte &HFF
  loc_9C48DB: FLdPr Me
  loc_9C48DE: MemStI2 bLogos
  loc_9C48E1: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C090EC
  'Data Table: 4B9A3C
  loc_C087E4: FLdPr Me
  loc_C087E7: MemLdI2 bGenerado
  loc_C087EA: BranchF loc_C087EE
  loc_C087ED: ExitProcHresult
  loc_C087EE: LitVarStr var_98, "Generando reporte..."
  loc_C087F3: PopAdLdVar
  loc_C087F4: FLdPr Me
  loc_C087F7: VCallAd Control_ID_statusBar
  loc_C087FA: FStAdFunc var_AC
  loc_C087FD: FLdPr var_AC
  loc_C08800: LateIdSt
  loc_C08805: FFree1Ad var_AC
  loc_C08808: LitI4 &HB
  loc_C0880D: CI2I4
  loc_C0880E: FLdPr Me
  loc_C08811: Me.MousePointer = from_stack_1
  loc_C08816: LitI2_Byte 0
  loc_C08818: PopTmpLdAd2 var_AE
  loc_C0881B: from_stack_2v = NumeApreDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C08820: FLdPr Me
  loc_C08823: MemLdStr global_116
  loc_C08826: LitStr vbNullString
  loc_C08829: NeStr
  loc_C0882B: BranchF loc_C08831
  loc_C0882E: Branch loc_C090C1
  loc_C08831: LitI2_Byte 0
  loc_C08833: PopTmpLdAd2 var_AE
  loc_C08836: from_stack_2v = NumeApreHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C0883B: FLdPr Me
  loc_C0883E: MemLdStr global_116
  loc_C08841: LitStr vbNullString
  loc_C08844: NeStr
  loc_C08846: BranchF loc_C0884C
  loc_C08849: Branch loc_C090C1
  loc_C0884C: LitI2_Byte 0
  loc_C0884E: PopTmpLdAd2 var_AE
  loc_C08851: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C08856: FLdPr Me
  loc_C08859: MemLdStr global_116
  loc_C0885C: LitStr vbNullString
  loc_C0885F: NeStr
  loc_C08861: BranchF loc_C08867
  loc_C08864: Branch loc_C090C1
  loc_C08867: LitI2_Byte 0
  loc_C08869: PopTmpLdAd2 var_AE
  loc_C0886C: Call FealCtctHastaMsk_UnknownEvent_8()
  loc_C08871: FLdPr Me
  loc_C08874: MemLdStr global_116
  loc_C08877: LitStr vbNullString
  loc_C0887A: NeStr
  loc_C0887C: BranchF loc_C08882
  loc_C0887F: Branch loc_C090C1
  loc_C08882: FLdRfVar var_AE
  loc_C08885: FLdPr Me
  loc_C08888: VCallAd Control_ID_OptFecha
  loc_C0888B: FStAdFunc var_AC
  loc_C0888E: FLdPr var_AC
  loc_C08891:  = Me.Value
  loc_C08896: FLdI2 var_AE
  loc_C08899: LitI2_Byte &HFF
  loc_C0889B: EqI2
  loc_C0889C: FFree1Ad var_AC
  loc_C0889F: BranchF loc_C08954
  loc_C088A2: FLdPr Me
  loc_C088A5: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C088A8: FStAdFunc var_AC
  loc_C088AB: FLdPr var_AC
  loc_C088AE: LateIdLdVar var_C0 DispID_15 0
  loc_C088B5: PopAd
  loc_C088B7: FLdPr Me
  loc_C088BA: VCallAd Control_ID_FealCtctHastaMsk
  loc_C088BD: FStAdFunc var_124
  loc_C088C0: FLdPr var_124
  loc_C088C3: LateIdLdVar var_134 DispID_15 0
  loc_C088CA: PopAd
  loc_C088CC: LitVarStr var_A8, " WHERE apremio.FealApre BETWEEN "
  loc_C088D1: LitI4 1
  loc_C088D6: LitI4 1
  loc_C088DB: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_C088E0: FStVarCopyObj var_E0
  loc_C088E3: FLdRfVar var_E0
  loc_C088E6: FLdRfVar var_C0
  loc_C088E9: CStrVarTmp
  loc_C088EA: CVarStr var_D0
  loc_C088ED: FLdRfVar var_F0
  loc_C088F0: ImpAdCallFPR4  = Format(, )
  loc_C088F5: FLdRfVar var_F0
  loc_C088F8: ConcatVar var_100
  loc_C088FC: LitVarStr var_110, " AND "
  loc_C08901: ConcatVar var_120
  loc_C08905: LitI4 1
  loc_C0890A: LitI4 1
  loc_C0890F: LitVarStr var_154, "'yyyy-mm-dd'"
  loc_C08914: FStVarCopyObj var_164
  loc_C08917: FLdRfVar var_164
  loc_C0891A: FLdRfVar var_134
  loc_C0891D: CStrVarTmp
  loc_C0891E: CVarStr var_144
  loc_C08921: FLdRfVar var_174
  loc_C08924: ImpAdCallFPR4  = Format(, )
  loc_C08929: FLdRfVar var_174
  loc_C0892C: ConcatVar var_184
  loc_C08930: CStrVarTmp
  loc_C08931: FStStr var_88
  loc_C08934: FFreeAd var_AC = ""
  loc_C0893B: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_100 = "": var_134 = "": var_144 = "": var_164 = "": var_120 = "": var_174 = ""
  loc_C08954: FLdRfVar var_AE
  loc_C08957: FLdPr Me
  loc_C0895A: VCallAd Control_ID_OptNrodeApremio
  loc_C0895D: FStAdFunc var_AC
  loc_C08960: FLdPr var_AC
  loc_C08963:  = Me.Value
  loc_C08968: FLdI2 var_AE
  loc_C0896B: LitI2_Byte &HFF
  loc_C0896D: EqI2
  loc_C0896E: FFree1Ad var_AC
  loc_C08971: BranchF loc_C089CD
  loc_C08974: LitStr " WHERE apremio.NumeApre >= "
  loc_C08977: FLdPr Me
  loc_C0897A: VCallAd Control_ID_NumeApreDesdeMsk
  loc_C0897D: FStAdFunc var_AC
  loc_C08980: FLdPr var_AC
  loc_C08983: LateIdLdVar var_C0 DispID_22 0
  loc_C0898A: CStrVarTmp
  loc_C0898B: FStStrNoPop var_188
  loc_C0898E: ConcatStr
  loc_C0898F: FStStrNoPop var_18C
  loc_C08992: LitStr " AND apremio.NumeApre <= "
  loc_C08995: ConcatStr
  loc_C08996: FStStrNoPop var_190
  loc_C08999: FLdPr Me
  loc_C0899C: VCallAd Control_ID_NumeApreHastaMsk
  loc_C0899F: FStAdFunc var_124
  loc_C089A2: FLdPr var_124
  loc_C089A5: LateIdLdVar var_D0 DispID_22 0
  loc_C089AC: CStrVarTmp
  loc_C089AD: FStStrNoPop var_194
  loc_C089B0: ConcatStr
  loc_C089B1: FStStr var_88
  loc_C089B4: FFreeStr var_188 = "": var_18C = "": var_190 = ""
  loc_C089BF: FFreeAd var_AC = ""
  loc_C089C6: FFreeVar var_C0 = ""
  loc_C089CD: FLdPr Me
  loc_C089D0: MemLdRfVar from_stack_1.global_92
  loc_C089D3: NewIfNullAd
  loc_C089D6: FStAd var_198 
  loc_C089DA: LitStr "Municipalidad de Guaymallén"
  loc_C089DD: LitStr "Municipalidad de Lavalle"
  loc_C089E0: EqStr
  loc_C089E2: BranchF loc_C08A83
  loc_C089E5: LitStr "SELECT apremio.NumeApre, apremio.FealApre, apremio.AutoApre, instapre.FechInap,"
  loc_C089E8: LitStr " concat('MUN. DE "
  loc_C089EB: ConcatStr
  loc_C089EC: FStStrNoPop var_188
  loc_C089EF: LitStr "Guaymallén"
  loc_C089F2: ConcatStr
  loc_C089F3: FStStrNoPop var_18C
  loc_C089F6: LitStr " C/ ', DetaPers) as caratula, (apremio.CapiApre + apremio.RecaApre) MontApre,"
  loc_C089F9: ConcatStr
  loc_C089FA: FStStrNoPop var_190
  loc_C089FD: LitStr " concat('"
  loc_C08A00: ConcatStr
  loc_C08A01: FStStrNoPop var_194
  loc_C08A04: LitStr "Juzgado Paz Letrado de Guaymallén"
  loc_C08A07: ConcatStr
  loc_C08A08: FStStrNoPop var_19C
  loc_C08A0B: LitStr "',IF(apremio.AutoApre <> 0,if(mod(apremio.AutoApre,2)=0,' Secretaria 4',' Secretaria 3'),'')) as Tribunal, "
  loc_C08A0E: ConcatStr
  loc_C08A0F: FStStrNoPop var_1A0
  loc_C08A12: LitStr " (SELECT CodiInju FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) InjuUlti, "
  loc_C08A15: ConcatStr
  loc_C08A16: FStStrNoPop var_1A4
  loc_C08A19: LitStr " (SELECT instapre.FechInap FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) FejuUlti, "
  loc_C08A1C: ConcatStr
  loc_C08A1D: FStStrNoPop var_1A8
  loc_C08A20: LitStr " IF(apremio.CancApre=1,'Apremio: Pagado',IF(apremio.EstaApre=7,'Apremio:Suspendido','Apremio:Activo')) as EstaApre, "
  loc_C08A23: ConcatStr
  loc_C08A24: FStStrNoPop var_1AC
  loc_C08A27: LitStr " (SELECT group_concat(distinct concat('F.P:',' ',faciapre.CodiFapa,' ',facipago.EstaFapa)) FROM faciapre"
  loc_C08A2A: ConcatStr
  loc_C08A2B: FStStrNoPop var_1B0
  loc_C08A2E: LitStr " INNER JOIN facipago ON facipago.CodiFapa = faciapre.CodiFapa WHERE faciapre.NumeApre = apremio.NumeApre) as Facilidad"
  loc_C08A31: ConcatStr
  loc_C08A32: FStStrNoPop var_1B4
  loc_C08A35: LitStr " FROM apremio"
  loc_C08A38: ConcatStr
  loc_C08A39: FStStrNoPop var_1B8
  loc_C08A3C: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND instapre.CodiInju = 2"
  loc_C08A3F: ConcatStr
  loc_C08A40: FStStrNoPop var_1BC
  loc_C08A43: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C08A46: ConcatStr
  loc_C08A47: FStStrNoPop var_1C0
  loc_C08A4A: ILdRf var_88
  loc_C08A4D: ConcatStr
  loc_C08A4E: FStStrNoPop var_1C4
  loc_C08A51: FLdPr Me
  loc_C08A54: MemLdRfVar from_stack_1.global_92
  loc_C08A57: NewIfNullPr clsapremio
  loc_C08A5A: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C08A5F: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_C08A80: Branch loc_C08BAE
  loc_C08A83: LitStr "Municipalidad de Guaymallén"
  loc_C08A86: LitStr "Municipalidad de General Alvear"
  loc_C08A89: EqStr
  loc_C08A8B: BranchF loc_C08B1A
  loc_C08A8E: LitStr "SELECT apremio.NumeApre, apremio.FealApre, apremio.AutoApre, instapre.FechInap,"
  loc_C08A91: LitStr " concat('MUN. DE "
  loc_C08A94: ConcatStr
  loc_C08A95: FStStrNoPop var_188
  loc_C08A98: LitStr "Guaymallén"
  loc_C08A9B: ConcatStr
  loc_C08A9C: FStStrNoPop var_18C
  loc_C08A9F: LitStr " C/ ', DetaPers) as caratula, (apremio.CapiApre + apremio.RecaApre) MontApre, '"
  loc_C08AA2: ConcatStr
  loc_C08AA3: FStStrNoPop var_190
  loc_C08AA6: LitStr "Juzgado Paz Letrado de Guaymallén"
  loc_C08AA9: ConcatStr
  loc_C08AAA: FStStrNoPop var_194
  loc_C08AAD: LitStr "' as Tribunal, "
  loc_C08AB0: ConcatStr
  loc_C08AB1: FStStrNoPop var_19C
  loc_C08AB4: LitStr " (SELECT CodiInju FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) InjuUlti, "
  loc_C08AB7: ConcatStr
  loc_C08AB8: FStStrNoPop var_1A0
  loc_C08ABB: LitStr " (SELECT instapre.FechInap FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) FejuUlti, "
  loc_C08ABE: ConcatStr
  loc_C08ABF: FStStrNoPop var_1A4
  loc_C08AC2: LitStr " recaudador.DetaReca as DetaReca"
  loc_C08AC5: ConcatStr
  loc_C08AC6: FStStrNoPop var_1A8
  loc_C08AC9: LitStr " FROM apremio"
  loc_C08ACC: ConcatStr
  loc_C08ACD: FStStrNoPop var_1AC
  loc_C08AD0: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND instapre.CodiInju = 2"
  loc_C08AD3: ConcatStr
  loc_C08AD4: FStStrNoPop var_1B0
  loc_C08AD7: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C08ADA: ConcatStr
  loc_C08ADB: FStStrNoPop var_1B4
  loc_C08ADE: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_C08AE1: ConcatStr
  loc_C08AE2: FStStrNoPop var_1B8
  loc_C08AE5: ILdRf var_88
  loc_C08AE8: ConcatStr
  loc_C08AE9: FStStrNoPop var_1BC
  loc_C08AEC: FLdPr Me
  loc_C08AEF: MemLdRfVar from_stack_1.global_92
  loc_C08AF2: NewIfNullPr clsapremio
  loc_C08AF5: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C08AFA: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_C08B17: Branch loc_C08BAE
  loc_C08B1A: LitStr "Municipalidad de Guaymallén"
  loc_C08B1D: LitStr "Municipalidad de Guaymallén"
  loc_C08B20: EqStr
  loc_C08B22: BranchF loc_C08BAE
  loc_C08B25: LitStr "SELECT apremio.NumeApre, apremio.FealApre, apremio.AutoApre, instapre.FechInap,"
  loc_C08B28: LitStr " concat('MUN. DE "
  loc_C08B2B: ConcatStr
  loc_C08B2C: FStStrNoPop var_188
  loc_C08B2F: LitStr "Guaymallén"
  loc_C08B32: ConcatStr
  loc_C08B33: FStStrNoPop var_18C
  loc_C08B36: LitStr " C/ ', DetaPers) as caratula, (apremio.CapiApre + apremio.RecaApre) MontApre, '"
  loc_C08B39: ConcatStr
  loc_C08B3A: FStStrNoPop var_190
  loc_C08B3D: LitStr "Juzgado Paz Letrado de Guaymallén"
  loc_C08B40: ConcatStr
  loc_C08B41: FStStrNoPop var_194
  loc_C08B44: LitStr "' as Tribunal, "
  loc_C08B47: ConcatStr
  loc_C08B48: FStStrNoPop var_19C
  loc_C08B4B: LitStr " (SELECT CodiInju FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) InjuUlti, "
  loc_C08B4E: ConcatStr
  loc_C08B4F: FStStrNoPop var_1A0
  loc_C08B52: LitStr " (SELECT instapre.FechInap FROM instapre WHERE NumeApre = apremio.NumeApre ORDER BY CodiInju desc  LIMIT 1) FejuUlti, "
  loc_C08B55: ConcatStr
  loc_C08B56: FStStrNoPop var_1A4
  loc_C08B59: LitStr " recaudador.DetaReca as DetaReca"
  loc_C08B5C: ConcatStr
  loc_C08B5D: FStStrNoPop var_1A8
  loc_C08B60: LitStr " FROM apremio"
  loc_C08B63: ConcatStr
  loc_C08B64: FStStrNoPop var_1AC
  loc_C08B67: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND instapre.CodiInju = 2"
  loc_C08B6A: ConcatStr
  loc_C08B6B: FStStrNoPop var_1B0
  loc_C08B6E: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_C08B71: ConcatStr
  loc_C08B72: FStStrNoPop var_1B4
  loc_C08B75: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_C08B78: ConcatStr
  loc_C08B79: FStStrNoPop var_1B8
  loc_C08B7C: ILdRf var_88
  loc_C08B7F: ConcatStr
  loc_C08B80: FStStrNoPop var_1BC
  loc_C08B83: FLdPr Me
  loc_C08B86: MemLdRfVar from_stack_1.global_92
  loc_C08B89: NewIfNullPr clsapremio
  loc_C08B8C: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C08B91: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_C08BAE: FLdRfVar var_1C8
  loc_C08BB1: FLdPr var_198
  loc_C08BB4: from_stack_1 = clsapremio.RecordCount
  loc_C08BB9: ILdRf var_1C8
  loc_C08BBC: LitI4 0
  loc_C08BC1: EqI4
  loc_C08BC2: BranchF loc_C08BD0
  loc_C08BC5: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C08BC8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C08BCD: Branch loc_C090C1
  loc_C08BD0: LitI4 0
  loc_C08BD5: FLdRfVar var_1C8
  loc_C08BD8: FLdPr var_198
  loc_C08BDB: from_stack_1 = clsapremio.RecordCount
  loc_C08BE0: ILdRf var_1C8
  loc_C08BE3: FLdPr Me
  loc_C08BE6: MemLdRfVar from_stack_1.global_104
  loc_C08BE9: Redim
  loc_C08BF3: FLdPr var_198
  loc_C08BF6: Call clsapremio.MoveFirst()
  loc_C08BFB: LitI4 1
  loc_C08C00: FLdPr Me
  loc_C08C03: MemLdRfVar from_stack_1.global_108
  loc_C08C06: FLdPr Me
  loc_C08C09: MemLdStr global_104
  loc_C08C0C: LitI2_Byte 1
  loc_C08C0E: FnUBound
  loc_C08C10: ForI4 var_1D0
  loc_C08C16: FLdRfVar var_1D4
  loc_C08C19: LitVarStr var_98, "NumeApre"
  loc_C08C1E: PopAdLdVar
  loc_C08C1F: FLdRfVar var_124
  loc_C08C22: FLdRfVar var_AC
  loc_C08C25: FLdPr var_198
  loc_C08C28: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08C2D: FLdPr var_AC
  loc_C08C30:  = Me.Fields
  loc_C08C35: FLdPr var_124
  loc_C08C38: from_stack_2 = Me.Item(from_stack_1)
  loc_C08C3D: LitI2_Byte 0
  loc_C08C3F: LitVar_Missing var_D0
  loc_C08C42: LitI2_Byte 0
  loc_C08C44: FLdZeroAd var_1D4
  loc_C08C47: CVarAd
  loc_C08C4B: PopAdLdVar
  loc_C08C4C: FLdPr Me
  loc_C08C4F: MemLdStr global_108
  loc_C08C52: FLdPr Me
  loc_C08C55: MemLdStr global_104
  loc_C08C58: AryLock
  loc_C08C5B: Ary1LdPr
  loc_C08C5C: MemLdRfVar from_stack_1.global_0
  loc_C08C5F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08C64: AryUnlock
  loc_C08C67: FFreeAd var_AC = ""
  loc_C08C6E: FFreeVar var_C0 = ""
  loc_C08C75: FLdRfVar var_1D4
  loc_C08C78: LitVarStr var_98, "FealApre"
  loc_C08C7D: PopAdLdVar
  loc_C08C7E: FLdRfVar var_124
  loc_C08C81: FLdRfVar var_AC
  loc_C08C84: FLdPr var_198
  loc_C08C87: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08C8C: FLdPr var_AC
  loc_C08C8F:  = Me.Fields
  loc_C08C94: FLdPr var_124
  loc_C08C97: from_stack_2 = Me.Item(from_stack_1)
  loc_C08C9C: LitI2_Byte 0
  loc_C08C9E: LitVar_Missing var_D0
  loc_C08CA1: LitI2_Byte 0
  loc_C08CA3: FLdZeroAd var_1D4
  loc_C08CA6: CVarAd
  loc_C08CAA: PopAdLdVar
  loc_C08CAB: FLdPr Me
  loc_C08CAE: MemLdStr global_108
  loc_C08CB1: FLdPr Me
  loc_C08CB4: MemLdStr global_104
  loc_C08CB7: AryLock
  loc_C08CBA: Ary1LdPr
  loc_C08CBB: MemLdRfVar from_stack_1.global_4
  loc_C08CBE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08CC3: AryUnlock
  loc_C08CC6: FFreeAd var_AC = ""
  loc_C08CCD: FFreeVar var_C0 = ""
  loc_C08CD4: FLdRfVar var_1D4
  loc_C08CD7: LitVarStr var_98, "AutoApre"
  loc_C08CDC: PopAdLdVar
  loc_C08CDD: FLdRfVar var_124
  loc_C08CE0: FLdRfVar var_AC
  loc_C08CE3: FLdPr var_198
  loc_C08CE6: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08CEB: FLdPr var_AC
  loc_C08CEE:  = Me.Fields
  loc_C08CF3: FLdPr var_124
  loc_C08CF6: from_stack_2 = Me.Item(from_stack_1)
  loc_C08CFB: LitI2_Byte 0
  loc_C08CFD: LitVar_Missing var_D0
  loc_C08D00: LitI2_Byte 0
  loc_C08D02: FLdZeroAd var_1D4
  loc_C08D05: CVarAd
  loc_C08D09: PopAdLdVar
  loc_C08D0A: FLdPr Me
  loc_C08D0D: MemLdStr global_108
  loc_C08D10: FLdPr Me
  loc_C08D13: MemLdStr global_104
  loc_C08D16: AryLock
  loc_C08D19: Ary1LdPr
  loc_C08D1A: MemLdRfVar from_stack_1.global_8
  loc_C08D1D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08D22: AryUnlock
  loc_C08D25: FFreeAd var_AC = ""
  loc_C08D2C: FFreeVar var_C0 = ""
  loc_C08D33: FLdRfVar var_1D4
  loc_C08D36: LitVarStr var_98, "FechInap"
  loc_C08D3B: PopAdLdVar
  loc_C08D3C: FLdRfVar var_124
  loc_C08D3F: FLdRfVar var_AC
  loc_C08D42: FLdPr var_198
  loc_C08D45: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08D4A: FLdPr var_AC
  loc_C08D4D:  = Me.Fields
  loc_C08D52: FLdPr var_124
  loc_C08D55: from_stack_2 = Me.Item(from_stack_1)
  loc_C08D5A: LitI2_Byte 0
  loc_C08D5C: LitVar_Missing var_D0
  loc_C08D5F: LitI2_Byte 0
  loc_C08D61: FLdZeroAd var_1D4
  loc_C08D64: CVarAd
  loc_C08D68: PopAdLdVar
  loc_C08D69: FLdPr Me
  loc_C08D6C: MemLdStr global_108
  loc_C08D6F: FLdPr Me
  loc_C08D72: MemLdStr global_104
  loc_C08D75: AryLock
  loc_C08D78: Ary1LdPr
  loc_C08D79: MemLdRfVar from_stack_1.global_12
  loc_C08D7C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08D81: AryUnlock
  loc_C08D84: FFreeAd var_AC = ""
  loc_C08D8B: FFreeVar var_C0 = ""
  loc_C08D92: FLdRfVar var_1D4
  loc_C08D95: LitVarStr var_98, "Caratula"
  loc_C08D9A: PopAdLdVar
  loc_C08D9B: FLdRfVar var_124
  loc_C08D9E: FLdRfVar var_AC
  loc_C08DA1: FLdPr var_198
  loc_C08DA4: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08DA9: FLdPr var_AC
  loc_C08DAC:  = Me.Fields
  loc_C08DB1: FLdPr var_124
  loc_C08DB4: from_stack_2 = Me.Item(from_stack_1)
  loc_C08DB9: LitI2_Byte 0
  loc_C08DBB: LitVar_Missing var_D0
  loc_C08DBE: LitI2_Byte 0
  loc_C08DC0: FLdZeroAd var_1D4
  loc_C08DC3: CVarAd
  loc_C08DC7: PopAdLdVar
  loc_C08DC8: FLdPr Me
  loc_C08DCB: MemLdStr global_108
  loc_C08DCE: FLdPr Me
  loc_C08DD1: MemLdStr global_104
  loc_C08DD4: AryLock
  loc_C08DD7: Ary1LdPr
  loc_C08DD8: MemLdRfVar from_stack_1.global_16
  loc_C08DDB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08DE0: AryUnlock
  loc_C08DE3: FFreeAd var_AC = ""
  loc_C08DEA: FFreeVar var_C0 = ""
  loc_C08DF1: FLdRfVar var_1D4
  loc_C08DF4: LitVarStr var_98, "MontApre"
  loc_C08DF9: PopAdLdVar
  loc_C08DFA: FLdRfVar var_124
  loc_C08DFD: FLdRfVar var_AC
  loc_C08E00: FLdPr var_198
  loc_C08E03: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08E08: FLdPr var_AC
  loc_C08E0B:  = Me.Fields
  loc_C08E10: FLdPr var_124
  loc_C08E13: from_stack_2 = Me.Item(from_stack_1)
  loc_C08E18: LitI2_Byte 0
  loc_C08E1A: LitVar_Missing var_D0
  loc_C08E1D: LitI2_Byte &HFF
  loc_C08E1F: FLdZeroAd var_1D4
  loc_C08E22: CVarAd
  loc_C08E26: PopAdLdVar
  loc_C08E27: FLdPr Me
  loc_C08E2A: MemLdStr global_108
  loc_C08E2D: FLdPr Me
  loc_C08E30: MemLdStr global_104
  loc_C08E33: AryLock
  loc_C08E36: Ary1LdPr
  loc_C08E37: MemLdRfVar from_stack_1.global_20
  loc_C08E3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08E3F: AryUnlock
  loc_C08E42: FFreeAd var_AC = ""
  loc_C08E49: FFreeVar var_C0 = ""
  loc_C08E50: FLdRfVar var_1D4
  loc_C08E53: LitVarStr var_98, "Tribunal"
  loc_C08E58: PopAdLdVar
  loc_C08E59: FLdRfVar var_124
  loc_C08E5C: FLdRfVar var_AC
  loc_C08E5F: FLdPr var_198
  loc_C08E62: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08E67: FLdPr var_AC
  loc_C08E6A:  = Me.Fields
  loc_C08E6F: FLdPr var_124
  loc_C08E72: from_stack_2 = Me.Item(from_stack_1)
  loc_C08E77: LitI2_Byte 0
  loc_C08E79: LitVar_Missing var_D0
  loc_C08E7C: LitI2_Byte 0
  loc_C08E7E: FLdZeroAd var_1D4
  loc_C08E81: CVarAd
  loc_C08E85: PopAdLdVar
  loc_C08E86: FLdPr Me
  loc_C08E89: MemLdStr global_108
  loc_C08E8C: FLdPr Me
  loc_C08E8F: MemLdStr global_104
  loc_C08E92: AryLock
  loc_C08E95: Ary1LdPr
  loc_C08E96: MemLdRfVar from_stack_1.global_24
  loc_C08E99: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08E9E: AryUnlock
  loc_C08EA1: FFreeAd var_AC = ""
  loc_C08EA8: FFreeVar var_C0 = ""
  loc_C08EAF: FLdRfVar var_1D4
  loc_C08EB2: LitVarStr var_98, "InjuUlti"
  loc_C08EB7: PopAdLdVar
  loc_C08EB8: FLdRfVar var_124
  loc_C08EBB: FLdRfVar var_AC
  loc_C08EBE: FLdPr var_198
  loc_C08EC1: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08EC6: FLdPr var_AC
  loc_C08EC9:  = Me.Fields
  loc_C08ECE: FLdPr var_124
  loc_C08ED1: from_stack_2 = Me.Item(from_stack_1)
  loc_C08ED6: LitI2_Byte 0
  loc_C08ED8: LitVar_Missing var_D0
  loc_C08EDB: LitI2_Byte 0
  loc_C08EDD: FLdZeroAd var_1D4
  loc_C08EE0: CVarAd
  loc_C08EE4: PopAdLdVar
  loc_C08EE5: FLdPr Me
  loc_C08EE8: MemLdStr global_108
  loc_C08EEB: FLdPr Me
  loc_C08EEE: MemLdStr global_104
  loc_C08EF1: AryLock
  loc_C08EF4: Ary1LdPr
  loc_C08EF5: MemLdRfVar from_stack_1.global_28
  loc_C08EF8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08EFD: AryUnlock
  loc_C08F00: FFreeAd var_AC = ""
  loc_C08F07: FFreeVar var_C0 = ""
  loc_C08F0E: FLdRfVar var_1D4
  loc_C08F11: LitVarStr var_98, "FejuUlti"
  loc_C08F16: PopAdLdVar
  loc_C08F17: FLdRfVar var_124
  loc_C08F1A: FLdRfVar var_AC
  loc_C08F1D: FLdPr var_198
  loc_C08F20: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08F25: FLdPr var_AC
  loc_C08F28:  = Me.Fields
  loc_C08F2D: FLdPr var_124
  loc_C08F30: from_stack_2 = Me.Item(from_stack_1)
  loc_C08F35: LitI2_Byte 0
  loc_C08F37: LitVar_Missing var_D0
  loc_C08F3A: LitI2_Byte 0
  loc_C08F3C: FLdZeroAd var_1D4
  loc_C08F3F: CVarAd
  loc_C08F43: PopAdLdVar
  loc_C08F44: FLdPr Me
  loc_C08F47: MemLdStr global_108
  loc_C08F4A: FLdPr Me
  loc_C08F4D: MemLdStr global_104
  loc_C08F50: AryLock
  loc_C08F53: Ary1LdPr
  loc_C08F54: MemLdRfVar from_stack_1.global_32
  loc_C08F57: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C08F5C: AryUnlock
  loc_C08F5F: FFreeAd var_AC = ""
  loc_C08F66: FFreeVar var_C0 = ""
  loc_C08F6D: LitStr "Municipalidad de Guaymallén"
  loc_C08F70: LitStr "Municipalidad de Lavalle"
  loc_C08F73: EqStr
  loc_C08F75: BranchF loc_C09031
  loc_C08F78: FLdRfVar var_C0
  loc_C08F7B: FLdRfVar var_1D4
  loc_C08F7E: LitVarStr var_98, "EstaApre"
  loc_C08F83: PopAdLdVar
  loc_C08F84: FLdRfVar var_124
  loc_C08F87: FLdRfVar var_AC
  loc_C08F8A: FLdPr var_198
  loc_C08F8D: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08F92: FLdPr var_AC
  loc_C08F95:  = Me.Fields
  loc_C08F9A: FLdPr var_124
  loc_C08F9D: from_stack_2 = Me.Item(from_stack_1)
  loc_C08FA2: FLdPr var_1D4
  loc_C08FA5:  = Me.Value
  loc_C08FAA: FLdRfVar var_E0
  loc_C08FAD: FLdRfVar var_1E4
  loc_C08FB0: LitVarStr var_110, "Facilidad"
  loc_C08FB5: PopAdLdVar
  loc_C08FB6: FLdRfVar var_1E0
  loc_C08FB9: FLdRfVar var_1DC
  loc_C08FBC: FLdPr var_198
  loc_C08FBF: from_stack_1v = clsapremio.RsFrmGet()
  loc_C08FC4: FLdPr var_1DC
  loc_C08FC7:  = Me.Fields
  loc_C08FCC: FLdPr var_1E0
  loc_C08FCF: from_stack_2 = Me.Item(from_stack_1)
  loc_C08FD4: FLdPr var_1E4
  loc_C08FD7:  = Me.Value
  loc_C08FDC: LitI2_Byte 0
  loc_C08FDE: LitVar_Missing var_100
  loc_C08FE1: LitI2_Byte 0
  loc_C08FE3: FLdRfVar var_C0
  loc_C08FE6: LitVarStr var_A8, ","
  loc_C08FEB: ConcatVar var_D0
  loc_C08FEF: FLdRfVar var_E0
  loc_C08FF2: ConcatVar var_F0
  loc_C08FF6: PopAdLdVar
  loc_C08FF7: FLdPr Me
  loc_C08FFA: MemLdStr global_108
  loc_C08FFD: FLdPr Me
  loc_C09000: MemLdStr global_104
  loc_C09003: AryLock
  loc_C09006: Ary1LdPr
  loc_C09007: MemLdRfVar from_stack_1.global_36
  loc_C0900A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C0900F: AryUnlock
  loc_C09012: FFreeAd var_AC = "": var_124 = "": var_1D4 = "": var_1DC = "": var_1E0 = ""
  loc_C09021: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = ""
  loc_C0902E: Branch loc_C0909B
  loc_C09031: LitStr "Municipalidad de Guaymallén"
  loc_C09034: LitStr "Municipalidad de General Alvear"
  loc_C09037: EqStr
  loc_C09039: BranchF loc_C0909B
  loc_C0903C: FLdRfVar var_1D4
  loc_C0903F: LitVarStr var_98, "DetaReca"
  loc_C09044: PopAdLdVar
  loc_C09045: FLdRfVar var_124
  loc_C09048: FLdRfVar var_AC
  loc_C0904B: FLdPr var_198
  loc_C0904E: from_stack_1v = clsapremio.RsFrmGet()
  loc_C09053: FLdPr var_AC
  loc_C09056:  = Me.Fields
  loc_C0905B: FLdPr var_124
  loc_C0905E: from_stack_2 = Me.Item(from_stack_1)
  loc_C09063: LitI2_Byte 0
  loc_C09065: LitVar_Missing var_D0
  loc_C09068: LitI2_Byte 0
  loc_C0906A: FLdZeroAd var_1D4
  loc_C0906D: CVarAd
  loc_C09071: PopAdLdVar
  loc_C09072: FLdPr Me
  loc_C09075: MemLdStr global_108
  loc_C09078: FLdPr Me
  loc_C0907B: MemLdStr global_104
  loc_C0907E: AryLock
  loc_C09081: Ary1LdPr
  loc_C09082: MemLdRfVar from_stack_1.global_36
  loc_C09085: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C0908A: AryUnlock
  loc_C0908D: FFreeAd var_AC = ""
  loc_C09094: FFreeVar var_C0 = ""
  loc_C0909B: LitI2_Byte 1
  loc_C0909D: PopTmpLdAd2 var_AE
  loc_C090A0: FLdPr var_198
  loc_C090A3: Call clsapremio.Move(from_stack_1v)
  loc_C090A8: FLdPr Me
  loc_C090AB: MemLdRfVar from_stack_1.global_108
  loc_C090AE: NextI4 var_1D0, loc_C08C16
  loc_C090B3: LitNothing
  loc_C090B5: FStAd var_198 
  loc_C090B9: LitI2_Byte &HFF
  loc_C090BB: FLdPr Me
  loc_C090BE: MemStI2 bGenerado
  loc_C090C1: LitI4 0
  loc_C090C6: CI2I4
  loc_C090C7: FLdPr Me
  loc_C090CA: Me.MousePointer = from_stack_1
  loc_C090CF: LitVarStr var_98, vbNullString
  loc_C090D4: PopAdLdVar
  loc_C090D5: FLdPr Me
  loc_C090D8: VCallAd Control_ID_statusBar
  loc_C090DB: FStAdFunc var_AC
  loc_C090DE: FLdPr var_AC
  loc_C090E1: LateIdSt
  loc_C090E6: FFree1Ad var_AC
  loc_C090E9: ExitProcHresult
  loc_C090EA: FStR8 var_3BFD
End Sub

Public Sub GeneraHTML() 'B472FC
  'Data Table: 4B9A3C
  loc_B46FA0: FLdRfVar var_88
  loc_B46FA3: LitI2_Byte 0
  loc_B46FA5: LitI2_Byte &HFF
  loc_B46FA7: ImpAdLdI4 MemVar_D93C84
  loc_B46FAA: FLdPr Me
  loc_B46FAD: MemLdRfVar from_stack_1.global_56
  loc_B46FB0: NewIfNullPr IFileSystem3
  loc_B46FB3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B46FB8: ILdRf var_88
  loc_B46FBB: FLdPr Me
  loc_B46FBE: MemStVarAd
  loc_B46FC2: FFree1Ad var_88
  loc_B46FC5: LitI2_Byte &HFF
  loc_B46FC7: ImpAdStI2 MemVar_D93C8A
  loc_B46FCA: Call Proc_316_31_BBBD28()
  loc_B46FCF: LitI4 1
  loc_B46FD4: FLdPr Me
  loc_B46FD7: MemLdRfVar from_stack_1.global_108
  loc_B46FDA: FLdPr Me
  loc_B46FDD: MemLdStr global_104
  loc_B46FE0: LitI2_Byte 1
  loc_B46FE2: FnUBound
  loc_B46FE4: ForI4 var_90
  loc_B46FEA: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B46FEF: PopAdLdVar
  loc_B46FF0: FLdPr Me
  loc_B46FF3: MemLdRfVar from_stack_1.global_60
  loc_B46FF6: LdPrVar
  loc_B46FF8: LateMemCall
  loc_B46FFE: FLdPr Me
  loc_B47001: MemLdStr global_108
  loc_B47004: FLdPr Me
  loc_B47007: MemLdStr global_104
  loc_B4700A: AryLock
  loc_B4700D: Ary1LdRf
  loc_B4700E: FStR4 var_B8
  loc_B47011: LitStr vbNullString
  loc_B47014: LitI2_Byte 0
  loc_B47016: LitI2_Byte 0
  loc_B47018: LitI2_Byte 0
  loc_B4701A: LitStr "right"
  loc_B4701D: FMemLdR4 var_B8(0)
  loc_B47022: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B47027: CVarStr var_C8
  loc_B4702A: PopAdLdVar
  loc_B4702B: FLdPr Me
  loc_B4702E: MemLdRfVar from_stack_1.global_60
  loc_B47031: LdPrVar
  loc_B47033: LateMemCall
  loc_B47039: FFree1Var var_C8 = ""
  loc_B4703C: LitStr vbNullString
  loc_B4703F: LitI2_Byte 0
  loc_B47041: LitI2_Byte 0
  loc_B47043: LitI2_Byte 0
  loc_B47045: LitStr "left"
  loc_B47048: FMemLdR4 var_B8(4)
  loc_B4704D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B47052: CVarStr var_C8
  loc_B47055: PopAdLdVar
  loc_B47056: FLdPr Me
  loc_B47059: MemLdRfVar from_stack_1.global_60
  loc_B4705C: LdPrVar
  loc_B4705E: LateMemCall
  loc_B47064: FFree1Var var_C8 = ""
  loc_B47067: LitStr vbNullString
  loc_B4706A: LitI2_Byte 0
  loc_B4706C: LitI2_Byte 0
  loc_B4706E: LitI2_Byte 0
  loc_B47070: LitStr "right"
  loc_B47073: FMemLdR4 var_B8(8)
  loc_B47078: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4707D: CVarStr var_C8
  loc_B47080: PopAdLdVar
  loc_B47081: FLdPr Me
  loc_B47084: MemLdRfVar from_stack_1.global_60
  loc_B47087: LdPrVar
  loc_B47089: LateMemCall
  loc_B4708F: FFree1Var var_C8 = ""
  loc_B47092: LitStr vbNullString
  loc_B47095: LitI2_Byte 0
  loc_B47097: LitI2_Byte 0
  loc_B47099: LitI2_Byte 0
  loc_B4709B: LitStr "right"
  loc_B4709E: FMemLdR4 var_B8(12)
  loc_B470A3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B470A8: CVarStr var_C8
  loc_B470AB: PopAdLdVar
  loc_B470AC: FLdPr Me
  loc_B470AF: MemLdRfVar from_stack_1.global_60
  loc_B470B2: LdPrVar
  loc_B470B4: LateMemCall
  loc_B470BA: FFree1Var var_C8 = ""
  loc_B470BD: LitStr vbNullString
  loc_B470C0: LitI2_Byte 0
  loc_B470C2: LitI2_Byte 0
  loc_B470C4: LitI2_Byte 0
  loc_B470C6: LitStr "left"
  loc_B470C9: FMemLdR4 var_B8(16)
  loc_B470CE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B470D3: CVarStr var_C8
  loc_B470D6: PopAdLdVar
  loc_B470D7: FLdPr Me
  loc_B470DA: MemLdRfVar from_stack_1.global_60
  loc_B470DD: LdPrVar
  loc_B470DF: LateMemCall
  loc_B470E5: FFree1Var var_C8 = ""
  loc_B470E8: LitStr vbNullString
  loc_B470EB: LitI2_Byte 0
  loc_B470ED: LitI2_Byte 0
  loc_B470EF: LitI2_Byte 0
  loc_B470F1: LitStr "right"
  loc_B470F4: FMemLdR4 var_B8(20)
  loc_B470F9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B470FE: CVarStr var_C8
  loc_B47101: PopAdLdVar
  loc_B47102: FLdPr Me
  loc_B47105: MemLdRfVar from_stack_1.global_60
  loc_B47108: LdPrVar
  loc_B4710A: LateMemCall
  loc_B47110: FFree1Var var_C8 = ""
  loc_B47113: LitStr vbNullString
  loc_B47116: LitI2_Byte 0
  loc_B47118: LitI2_Byte 0
  loc_B4711A: LitI2_Byte 0
  loc_B4711C: LitStr "left"
  loc_B4711F: FMemLdR4 var_B8(24)
  loc_B47124: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B47129: CVarStr var_C8
  loc_B4712C: PopAdLdVar
  loc_B4712D: FLdPr Me
  loc_B47130: MemLdRfVar from_stack_1.global_60
  loc_B47133: LdPrVar
  loc_B47135: LateMemCall
  loc_B4713B: FFree1Var var_C8 = ""
  loc_B4713E: LitStr vbNullString
  loc_B47141: LitI2_Byte 0
  loc_B47143: LitI2_Byte 0
  loc_B47145: LitI2_Byte 0
  loc_B47147: LitStr "right"
  loc_B4714A: FMemLdR4 var_B8(28)
  loc_B4714F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B47154: CVarStr var_C8
  loc_B47157: PopAdLdVar
  loc_B47158: FLdPr Me
  loc_B4715B: MemLdRfVar from_stack_1.global_60
  loc_B4715E: LdPrVar
  loc_B47160: LateMemCall
  loc_B47166: FFree1Var var_C8 = ""
  loc_B47169: LitStr vbNullString
  loc_B4716C: LitI2_Byte 0
  loc_B4716E: LitI2_Byte 0
  loc_B47170: LitI2_Byte 0
  loc_B47172: LitStr "right"
  loc_B47175: FMemLdR4 var_B8(32)
  loc_B4717A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4717F: CVarStr var_C8
  loc_B47182: PopAdLdVar
  loc_B47183: FLdPr Me
  loc_B47186: MemLdRfVar from_stack_1.global_60
  loc_B47189: LdPrVar
  loc_B4718B: LateMemCall
  loc_B47191: FFree1Var var_C8 = ""
  loc_B47194: LitI4 0
  loc_B47199: LitI4 -1
  loc_B4719E: LitI4 1
  loc_B471A3: LitStr "&nbsp;<br>"
  loc_B471A6: LitStr ","
  loc_B471A9: FMemLdR4 var_B8(36)
  loc_B471AE: ImpAdCallI2 Replace(, , , , , )
  loc_B471B3: FStStr var_D0
  loc_B471B6: LitStr vbNullString
  loc_B471B9: LitI2_Byte 0
  loc_B471BB: LitI2_Byte 0
  loc_B471BD: LitI2_Byte 0
  loc_B471BF: LitStr "left"
  loc_B471C2: FLdZeroAd var_D0
  loc_B471C5: FStStrNoPop var_CC
  loc_B471C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B471CD: CVarStr var_C8
  loc_B471D0: PopAdLdVar
  loc_B471D1: FLdPr Me
  loc_B471D4: MemLdRfVar from_stack_1.global_60
  loc_B471D7: LdPrVar
  loc_B471D9: LateMemCall
  loc_B471DF: FFreeStr var_CC = ""
  loc_B471E6: FFree1Var var_C8 = ""
  loc_B471E9: LitI4 0
  loc_B471EE: FStR4 var_B8
  loc_B471F1: AryUnlock
  loc_B471F4: LitVarStr var_A0, "     </tr>"
  loc_B471F9: PopAdLdVar
  loc_B471FA: FLdPr Me
  loc_B471FD: MemLdRfVar from_stack_1.global_60
  loc_B47200: LdPrVar
  loc_B47202: LateMemCall
  loc_B47208: FLdPr Me
  loc_B4720B: MemLdRfVar from_stack_1.global_108
  loc_B4720E: NextI4 var_90, loc_B46FEA
  loc_B47213: LitVarStr var_A0, "  <tr align=""center"" class=""Totales"">"
  loc_B47218: PopAdLdVar
  loc_B47219: FLdPr Me
  loc_B4721C: MemLdRfVar from_stack_1.global_60
  loc_B4721F: LdPrVar
  loc_B47221: LateMemCall
  loc_B47227: LitStr "    <th colspan=""10"">"
  loc_B4722A: LitI4 -1
  loc_B4722F: LitI4 0
  loc_B47234: LitI4 -1
  loc_B47239: LitI4 0
  loc_B4723E: FLdPr Me
  loc_B47241: MemLdStr global_104
  loc_B47244: LitI2_Byte 1
  loc_B47246: FnUBound
  loc_B47248: CVarI4
  loc_B4724C: ImpAdCallI2 FormatNumber(, , , , )
  loc_B47251: FStStrNoPop var_CC
  loc_B47254: ConcatStr
  loc_B47255: FStStrNoPop var_D0
  loc_B47258: LitStr " boleta"
  loc_B4725B: ConcatStr
  loc_B4725C: CVarStr var_130
  loc_B4725F: LitVarStr var_100, vbNullString
  loc_B47264: FStVarCopyObj var_110
  loc_B47267: FLdRfVar var_110
  loc_B4726A: LitVarStr var_E0, "s"
  loc_B4726F: FStVarCopyObj var_F0
  loc_B47272: FLdRfVar var_F0
  loc_B47275: FLdPr Me
  loc_B47278: MemLdStr global_104
  loc_B4727B: LitI2_Byte 1
  loc_B4727D: FnUBound
  loc_B4727F: LitI4 1
  loc_B47284: GtI4
  loc_B47285: CVarBoolI2 var_B0
  loc_B47289: FLdRfVar var_120
  loc_B4728C: ImpAdCallFPR4  = IIf(, , )
  loc_B47291: FLdRfVar var_120
  loc_B47294: ConcatVar var_140
  loc_B47298: LitVarStr var_150, ".</th>"
  loc_B4729D: ConcatVar var_160
  loc_B472A1: PopAdLdVar
  loc_B472A2: FLdPr Me
  loc_B472A5: MemLdRfVar from_stack_1.global_60
  loc_B472A8: LdPrVar
  loc_B472AA: LateMemCall
  loc_B472B0: FFreeStr var_CC = ""
  loc_B472B7: FFreeVar var_C8 = "": var_B0 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B472CA: LitVarStr var_A0, "  </tr>"
  loc_B472CF: PopAdLdVar
  loc_B472D0: FLdPr Me
  loc_B472D3: MemLdRfVar from_stack_1.global_60
  loc_B472D6: LdPrVar
  loc_B472D8: LateMemCall
  loc_B472DE: Call Proc_316_32_A0DB78()
  loc_B472E3: FLdPr Me
  loc_B472E6: MemLdRfVar from_stack_1.global_60
  loc_B472E9: LdPrVar
  loc_B472EB: LateMemCall
  loc_B472F1: LitStr vbNullString
  loc_B472F4: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B472F9: ExitProcHresult
  loc_B472FA: AryLock
End Sub

Public Sub GeneraTXT() '9AE9F4
  'Data Table: 4B9A3C
  loc_9AE9F0: ExitProcHresult
End Sub

Private Function Proc_316_31_BBBD28() 'BBBD28
  'Data Table: 4B9A3C
  loc_BBB674: LitVarStr var_94, "<html>"
  loc_BBB679: PopAdLdVar
  loc_BBB67A: FLdPr Me
  loc_BBB67D: MemLdRfVar from_stack_1.global_60
  loc_BBB680: LdPrVar
  loc_BBB682: LateMemCall
  loc_BBB688: LitVarStr var_94, "<head>"
  loc_BBB68D: PopAdLdVar
  loc_BBB68E: FLdPr Me
  loc_BBB691: MemLdRfVar from_stack_1.global_60
  loc_BBB694: LdPrVar
  loc_BBB696: LateMemCall
  loc_BBB69C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBB6A1: PopAdLdVar
  loc_BBB6A2: FLdPr Me
  loc_BBB6A5: MemLdRfVar from_stack_1.global_60
  loc_BBB6A8: LdPrVar
  loc_BBB6AA: LateMemCall
  loc_BBB6B0: LitStr "<title>"
  loc_BBB6B3: FLdRfVar var_A8
  loc_BBB6B6: FLdPr Me
  loc_BBB6B9:  = Me.Caption
  loc_BBB6BE: ILdRf var_A8
  loc_BBB6C1: ConcatStr
  loc_BBB6C2: FStStrNoPop var_AC
  loc_BBB6C5: LitStr "</title>"
  loc_BBB6C8: ConcatStr
  loc_BBB6C9: CVarStr var_BC
  loc_BBB6CC: PopAdLdVar
  loc_BBB6CD: FLdPr Me
  loc_BBB6D0: MemLdRfVar from_stack_1.global_60
  loc_BBB6D3: LdPrVar
  loc_BBB6D5: LateMemCall
  loc_BBB6DB: FFreeStr var_A8 = ""
  loc_BBB6E2: FFree1Var var_BC = ""
  loc_BBB6E5: LitVarStr var_94, "<style type=""text/css"">"
  loc_BBB6EA: PopAdLdVar
  loc_BBB6EB: FLdPr Me
  loc_BBB6EE: MemLdRfVar from_stack_1.global_60
  loc_BBB6F1: LdPrVar
  loc_BBB6F3: LateMemCall
  loc_BBB6F9: LitVarStr var_94, ".Titulo1 {"
  loc_BBB6FE: PopAdLdVar
  loc_BBB6FF: FLdPr Me
  loc_BBB702: MemLdRfVar from_stack_1.global_60
  loc_BBB705: LdPrVar
  loc_BBB707: LateMemCall
  loc_BBB70D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB712: PopAdLdVar
  loc_BBB713: FLdPr Me
  loc_BBB716: MemLdRfVar from_stack_1.global_60
  loc_BBB719: LdPrVar
  loc_BBB71B: LateMemCall
  loc_BBB721: LitVarStr var_94, " font-size: 18px;"
  loc_BBB726: PopAdLdVar
  loc_BBB727: FLdPr Me
  loc_BBB72A: MemLdRfVar from_stack_1.global_60
  loc_BBB72D: LdPrVar
  loc_BBB72F: LateMemCall
  loc_BBB735: LitVarStr var_94, " font-weight: bold;"
  loc_BBB73A: PopAdLdVar
  loc_BBB73B: FLdPr Me
  loc_BBB73E: MemLdRfVar from_stack_1.global_60
  loc_BBB741: LdPrVar
  loc_BBB743: LateMemCall
  loc_BBB749: LitVarStr var_94, "}"
  loc_BBB74E: PopAdLdVar
  loc_BBB74F: FLdPr Me
  loc_BBB752: MemLdRfVar from_stack_1.global_60
  loc_BBB755: LdPrVar
  loc_BBB757: LateMemCall
  loc_BBB75D: LitVarStr var_94, ".Titulo2 {"
  loc_BBB762: PopAdLdVar
  loc_BBB763: FLdPr Me
  loc_BBB766: MemLdRfVar from_stack_1.global_60
  loc_BBB769: LdPrVar
  loc_BBB76B: LateMemCall
  loc_BBB771: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB776: PopAdLdVar
  loc_BBB777: FLdPr Me
  loc_BBB77A: MemLdRfVar from_stack_1.global_60
  loc_BBB77D: LdPrVar
  loc_BBB77F: LateMemCall
  loc_BBB785: LitVarStr var_94, " font-size: 14px;"
  loc_BBB78A: PopAdLdVar
  loc_BBB78B: FLdPr Me
  loc_BBB78E: MemLdRfVar from_stack_1.global_60
  loc_BBB791: LdPrVar
  loc_BBB793: LateMemCall
  loc_BBB799: LitVarStr var_94, " font-weight: bold;"
  loc_BBB79E: PopAdLdVar
  loc_BBB79F: FLdPr Me
  loc_BBB7A2: MemLdRfVar from_stack_1.global_60
  loc_BBB7A5: LdPrVar
  loc_BBB7A7: LateMemCall
  loc_BBB7AD: LitVarStr var_94, "}"
  loc_BBB7B2: PopAdLdVar
  loc_BBB7B3: FLdPr Me
  loc_BBB7B6: MemLdRfVar from_stack_1.global_60
  loc_BBB7B9: LdPrVar
  loc_BBB7BB: LateMemCall
  loc_BBB7C1: LitVarStr var_94, ".Normal {"
  loc_BBB7C6: PopAdLdVar
  loc_BBB7C7: FLdPr Me
  loc_BBB7CA: MemLdRfVar from_stack_1.global_60
  loc_BBB7CD: LdPrVar
  loc_BBB7CF: LateMemCall
  loc_BBB7D5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB7DA: PopAdLdVar
  loc_BBB7DB: FLdPr Me
  loc_BBB7DE: MemLdRfVar from_stack_1.global_60
  loc_BBB7E1: LdPrVar
  loc_BBB7E3: LateMemCall
  loc_BBB7E9: LitVarStr var_94, " font-size: 12px;"
  loc_BBB7EE: PopAdLdVar
  loc_BBB7EF: FLdPr Me
  loc_BBB7F2: MemLdRfVar from_stack_1.global_60
  loc_BBB7F5: LdPrVar
  loc_BBB7F7: LateMemCall
  loc_BBB7FD: LitVarStr var_94, " font-style: normal;"
  loc_BBB802: PopAdLdVar
  loc_BBB803: FLdPr Me
  loc_BBB806: MemLdRfVar from_stack_1.global_60
  loc_BBB809: LdPrVar
  loc_BBB80B: LateMemCall
  loc_BBB811: LitVarStr var_94, " font-weight: normal;"
  loc_BBB816: PopAdLdVar
  loc_BBB817: FLdPr Me
  loc_BBB81A: MemLdRfVar from_stack_1.global_60
  loc_BBB81D: LdPrVar
  loc_BBB81F: LateMemCall
  loc_BBB825: LitVarStr var_94, " font-variant: normal;"
  loc_BBB82A: PopAdLdVar
  loc_BBB82B: FLdPr Me
  loc_BBB82E: MemLdRfVar from_stack_1.global_60
  loc_BBB831: LdPrVar
  loc_BBB833: LateMemCall
  loc_BBB839: LitVarStr var_94, "}"
  loc_BBB83E: PopAdLdVar
  loc_BBB83F: FLdPr Me
  loc_BBB842: MemLdRfVar from_stack_1.global_60
  loc_BBB845: LdPrVar
  loc_BBB847: LateMemCall
  loc_BBB84D: LitVarStr var_94, ".Encabezado {"
  loc_BBB852: PopAdLdVar
  loc_BBB853: FLdPr Me
  loc_BBB856: MemLdRfVar from_stack_1.global_60
  loc_BBB859: LdPrVar
  loc_BBB85B: LateMemCall
  loc_BBB861: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBB866: PopAdLdVar
  loc_BBB867: FLdPr Me
  loc_BBB86A: MemLdRfVar from_stack_1.global_60
  loc_BBB86D: LdPrVar
  loc_BBB86F: LateMemCall
  loc_BBB875: LitVarStr var_94, " font-size: 11px;"
  loc_BBB87A: PopAdLdVar
  loc_BBB87B: FLdPr Me
  loc_BBB87E: MemLdRfVar from_stack_1.global_60
  loc_BBB881: LdPrVar
  loc_BBB883: LateMemCall
  loc_BBB889: LitVarStr var_94, " font-weight: bold;"
  loc_BBB88E: PopAdLdVar
  loc_BBB88F: FLdPr Me
  loc_BBB892: MemLdRfVar from_stack_1.global_60
  loc_BBB895: LdPrVar
  loc_BBB897: LateMemCall
  loc_BBB89D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BBB8A2: PopAdLdVar
  loc_BBB8A3: FLdPr Me
  loc_BBB8A6: MemLdRfVar from_stack_1.global_60
  loc_BBB8A9: LdPrVar
  loc_BBB8AB: LateMemCall
  loc_BBB8B1: LitVarStr var_94, "}"
  loc_BBB8B6: PopAdLdVar
  loc_BBB8B7: FLdPr Me
  loc_BBB8BA: MemLdRfVar from_stack_1.global_60
  loc_BBB8BD: LdPrVar
  loc_BBB8BF: LateMemCall
  loc_BBB8C5: LitVarStr var_94, ".LineaDato {"
  loc_BBB8CA: PopAdLdVar
  loc_BBB8CB: FLdPr Me
  loc_BBB8CE: MemLdRfVar from_stack_1.global_60
  loc_BBB8D1: LdPrVar
  loc_BBB8D3: LateMemCall
  loc_BBB8D9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB8DE: PopAdLdVar
  loc_BBB8DF: FLdPr Me
  loc_BBB8E2: MemLdRfVar from_stack_1.global_60
  loc_BBB8E5: LdPrVar
  loc_BBB8E7: LateMemCall
  loc_BBB8ED: LitVarStr var_94, " font-size: 10px;"
  loc_BBB8F2: PopAdLdVar
  loc_BBB8F3: FLdPr Me
  loc_BBB8F6: MemLdRfVar from_stack_1.global_60
  loc_BBB8F9: LdPrVar
  loc_BBB8FB: LateMemCall
  loc_BBB901: LitVarStr var_94, "}"
  loc_BBB906: PopAdLdVar
  loc_BBB907: FLdPr Me
  loc_BBB90A: MemLdRfVar from_stack_1.global_60
  loc_BBB90D: LdPrVar
  loc_BBB90F: LateMemCall
  loc_BBB915: LitVarStr var_94, ".Totales {"
  loc_BBB91A: PopAdLdVar
  loc_BBB91B: FLdPr Me
  loc_BBB91E: MemLdRfVar from_stack_1.global_60
  loc_BBB921: LdPrVar
  loc_BBB923: LateMemCall
  loc_BBB929: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB92E: PopAdLdVar
  loc_BBB92F: FLdPr Me
  loc_BBB932: MemLdRfVar from_stack_1.global_60
  loc_BBB935: LdPrVar
  loc_BBB937: LateMemCall
  loc_BBB93D: LitVarStr var_94, " font-size: 12px;"
  loc_BBB942: PopAdLdVar
  loc_BBB943: FLdPr Me
  loc_BBB946: MemLdRfVar from_stack_1.global_60
  loc_BBB949: LdPrVar
  loc_BBB94B: LateMemCall
  loc_BBB951: LitVarStr var_94, " font-weight: bold;"
  loc_BBB956: PopAdLdVar
  loc_BBB957: FLdPr Me
  loc_BBB95A: MemLdRfVar from_stack_1.global_60
  loc_BBB95D: LdPrVar
  loc_BBB95F: LateMemCall
  loc_BBB965: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBB96A: PopAdLdVar
  loc_BBB96B: FLdPr Me
  loc_BBB96E: MemLdRfVar from_stack_1.global_60
  loc_BBB971: LdPrVar
  loc_BBB973: LateMemCall
  loc_BBB979: LitVarStr var_94, "}"
  loc_BBB97E: PopAdLdVar
  loc_BBB97F: FLdPr Me
  loc_BBB982: MemLdRfVar from_stack_1.global_60
  loc_BBB985: LdPrVar
  loc_BBB987: LateMemCall
  loc_BBB98D: LitVarStr var_94, ".SubTotales {"
  loc_BBB992: PopAdLdVar
  loc_BBB993: FLdPr Me
  loc_BBB996: MemLdRfVar from_stack_1.global_60
  loc_BBB999: LdPrVar
  loc_BBB99B: LateMemCall
  loc_BBB9A1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB9A6: PopAdLdVar
  loc_BBB9A7: FLdPr Me
  loc_BBB9AA: MemLdRfVar from_stack_1.global_60
  loc_BBB9AD: LdPrVar
  loc_BBB9AF: LateMemCall
  loc_BBB9B5: LitVarStr var_94, " font-size: 10px;"
  loc_BBB9BA: PopAdLdVar
  loc_BBB9BB: FLdPr Me
  loc_BBB9BE: MemLdRfVar from_stack_1.global_60
  loc_BBB9C1: LdPrVar
  loc_BBB9C3: LateMemCall
  loc_BBB9C9: LitVarStr var_94, " font-weight: bold;"
  loc_BBB9CE: PopAdLdVar
  loc_BBB9CF: FLdPr Me
  loc_BBB9D2: MemLdRfVar from_stack_1.global_60
  loc_BBB9D5: LdPrVar
  loc_BBB9D7: LateMemCall
  loc_BBB9DD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBB9E2: PopAdLdVar
  loc_BBB9E3: FLdPr Me
  loc_BBB9E6: MemLdRfVar from_stack_1.global_60
  loc_BBB9E9: LdPrVar
  loc_BBB9EB: LateMemCall
  loc_BBB9F1: LitVarStr var_94, "}"
  loc_BBB9F6: PopAdLdVar
  loc_BBB9F7: FLdPr Me
  loc_BBB9FA: MemLdRfVar from_stack_1.global_60
  loc_BBB9FD: LdPrVar
  loc_BBB9FF: LateMemCall
  loc_BBBA05: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BBBA0A: PopAdLdVar
  loc_BBBA0B: FLdPr Me
  loc_BBBA0E: MemLdRfVar from_stack_1.global_60
  loc_BBBA11: LdPrVar
  loc_BBBA13: LateMemCall
  loc_BBBA19: LitVarStr var_94, "</style>"
  loc_BBBA1E: PopAdLdVar
  loc_BBBA1F: FLdPr Me
  loc_BBBA22: MemLdRfVar from_stack_1.global_60
  loc_BBBA25: LdPrVar
  loc_BBBA27: LateMemCall
  loc_BBBA2D: LitI4 0
  loc_BBBA32: FStStrCopy var_AC
  loc_BBBA35: FLdRfVar var_AC
  loc_BBBA38: LitI4 0
  loc_BBBA3D: FStStrCopy var_A8
  loc_BBBA40: FLdRfVar var_A8
  loc_BBBA43: LitI2_Byte 0
  loc_BBBA45: PopTmpLdAd2 var_BE
  loc_BBBA48: FLdPr Me
  loc_BBBA4B: MemLdRfVar from_stack_1.global_60
  loc_BBBA4E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBBA53: FFreeStr var_A8 = ""
  loc_BBBA5A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBBA5F: PopAdLdVar
  loc_BBBA60: FLdPr Me
  loc_BBBA63: MemLdRfVar from_stack_1.global_60
  loc_BBBA66: LdPrVar
  loc_BBBA68: LateMemCall
  loc_BBBA6E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BBBA73: PopAdLdVar
  loc_BBBA74: FLdPr Me
  loc_BBBA77: MemLdRfVar from_stack_1.global_60
  loc_BBBA7A: LdPrVar
  loc_BBBA7C: LateMemCall
  loc_BBBA82: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BBBA87: PopAdLdVar
  loc_BBBA88: FLdPr Me
  loc_BBBA8B: MemLdRfVar from_stack_1.global_60
  loc_BBBA8E: LdPrVar
  loc_BBBA90: LateMemCall
  loc_BBBA96: FLdPr Me
  loc_BBBA99: MemLdI2 bLogos
  loc_BBBA9C: BranchF loc_BBBAE5
  loc_BBBA9F: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBBAA2: LitI2_Byte &H5F
  loc_BBBAA4: CStrUI1
  loc_BBBAA6: FStStrNoPop var_A8
  loc_BBBAA9: ConcatStr
  loc_BBBAAA: FStStrNoPop var_AC
  loc_BBBAAD: LitStr """ height="""
  loc_BBBAB0: ConcatStr
  loc_BBBAB1: FStStrNoPop var_C4
  loc_BBBAB4: LitI2_Byte &H3C
  loc_BBBAB6: CStrUI1
  loc_BBBAB8: FStStrNoPop var_C8
  loc_BBBABB: ConcatStr
  loc_BBBABC: FStStrNoPop var_CC
  loc_BBBABF: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BBBAC2: ConcatStr
  loc_BBBAC3: CVarStr var_BC
  loc_BBBAC6: PopAdLdVar
  loc_BBBAC7: FLdPr Me
  loc_BBBACA: MemLdRfVar from_stack_1.global_60
  loc_BBBACD: LdPrVar
  loc_BBBACF: LateMemCall
  loc_BBBAD5: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BBBAE2: FFree1Var var_BC = ""
  loc_BBBAE5: LitStr "     <br>"
  loc_BBBAE8: LitStr "Municipalidad de Guaymallén"
  loc_BBBAEB: ConcatStr
  loc_BBBAEC: FStStrNoPop var_A8
  loc_BBBAEF: LitStr "</p>"
  loc_BBBAF2: ConcatStr
  loc_BBBAF3: CVarStr var_BC
  loc_BBBAF6: PopAdLdVar
  loc_BBBAF7: FLdPr Me
  loc_BBBAFA: MemLdRfVar from_stack_1.global_60
  loc_BBBAFD: LdPrVar
  loc_BBBAFF: LateMemCall
  loc_BBBB05: FFree1Str var_A8
  loc_BBBB08: FFree1Var var_BC = ""
  loc_BBBB0B: LitStr "    <p>"
  loc_BBBB0E: FLdRfVar var_A8
  loc_BBBB11: FLdPr Me
  loc_BBBB14:  = Me.Caption
  loc_BBBB19: ILdRf var_A8
  loc_BBBB1C: ConcatStr
  loc_BBBB1D: FStStrNoPop var_AC
  loc_BBBB20: LitStr "</p></th>"
  loc_BBBB23: ConcatStr
  loc_BBBB24: CVarStr var_BC
  loc_BBBB27: PopAdLdVar
  loc_BBBB28: FLdPr Me
  loc_BBBB2B: MemLdRfVar from_stack_1.global_60
  loc_BBBB2E: LdPrVar
  loc_BBBB30: LateMemCall
  loc_BBBB36: FFreeStr var_A8 = ""
  loc_BBBB3D: FFree1Var var_BC = ""
  loc_BBBB40: LitVarStr var_94, "  </tr>"
  loc_BBBB45: PopAdLdVar
  loc_BBBB46: FLdPr Me
  loc_BBBB49: MemLdRfVar from_stack_1.global_60
  loc_BBBB4C: LdPrVar
  loc_BBBB4E: LateMemCall
  loc_BBBB54: LitVarStr var_94, "  <tr>"
  loc_BBBB59: PopAdLdVar
  loc_BBBB5A: FLdPr Me
  loc_BBBB5D: MemLdRfVar from_stack_1.global_60
  loc_BBBB60: LdPrVar
  loc_BBBB62: LateMemCall
  loc_BBBB68: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BBBB6D: PopAdLdVar
  loc_BBBB6E: FLdPr Me
  loc_BBBB71: MemLdRfVar from_stack_1.global_60
  loc_BBBB74: LdPrVar
  loc_BBBB76: LateMemCall
  loc_BBBB7C: LitVarStr var_94, "  </tr>"
  loc_BBBB81: PopAdLdVar
  loc_BBBB82: FLdPr Me
  loc_BBBB85: MemLdRfVar from_stack_1.global_60
  loc_BBBB88: LdPrVar
  loc_BBBB8A: LateMemCall
  loc_BBBB90: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BBBB95: PopAdLdVar
  loc_BBBB96: FLdPr Me
  loc_BBBB99: MemLdRfVar from_stack_1.global_60
  loc_BBBB9C: LdPrVar
  loc_BBBB9E: LateMemCall
  loc_BBBBA4: LitVarStr var_94, "  </tr>"
  loc_BBBBA9: PopAdLdVar
  loc_BBBBAA: FLdPr Me
  loc_BBBBAD: MemLdRfVar from_stack_1.global_60
  loc_BBBBB0: LdPrVar
  loc_BBBBB2: LateMemCall
  loc_BBBBB8: LitVarStr var_94, "</table>"
  loc_BBBBBD: PopAdLdVar
  loc_BBBBBE: FLdPr Me
  loc_BBBBC1: MemLdRfVar from_stack_1.global_60
  loc_BBBBC4: LdPrVar
  loc_BBBBC6: LateMemCall
  loc_BBBBCC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBBBD1: PopAdLdVar
  loc_BBBBD2: FLdPr Me
  loc_BBBBD5: MemLdRfVar from_stack_1.global_60
  loc_BBBBD8: LdPrVar
  loc_BBBBDA: LateMemCall
  loc_BBBBE0: LitVarStr var_94, "  <thead>"
  loc_BBBBE5: PopAdLdVar
  loc_BBBBE6: FLdPr Me
  loc_BBBBE9: MemLdRfVar from_stack_1.global_60
  loc_BBBBEC: LdPrVar
  loc_BBBBEE: LateMemCall
  loc_BBBBF4: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBBBF9: PopAdLdVar
  loc_BBBBFA: FLdPr Me
  loc_BBBBFD: MemLdRfVar from_stack_1.global_60
  loc_BBBC00: LdPrVar
  loc_BBBC02: LateMemCall
  loc_BBBC08: LitVarStr var_94, "    <th>Boleta de Deuda</th>"
  loc_BBBC0D: PopAdLdVar
  loc_BBBC0E: FLdPr Me
  loc_BBBC11: MemLdRfVar from_stack_1.global_60
  loc_BBBC14: LdPrVar
  loc_BBBC16: LateMemCall
  loc_BBBC1C: LitVarStr var_94, "    <th>Fecha de<br>Emisión</th>"
  loc_BBBC21: PopAdLdVar
  loc_BBBC22: FLdPr Me
  loc_BBBC25: MemLdRfVar from_stack_1.global_60
  loc_BBBC28: LdPrVar
  loc_BBBC2A: LateMemCall
  loc_BBBC30: LitVarStr var_94, "    <th>Nro juicio</th>"
  loc_BBBC35: PopAdLdVar
  loc_BBBC36: FLdPr Me
  loc_BBBC39: MemLdRfVar from_stack_1.global_60
  loc_BBBC3C: LdPrVar
  loc_BBBC3E: LateMemCall
  loc_BBBC44: LitVarStr var_94, "    <th>Fecha de<br>Inicio de Juicio</th>"
  loc_BBBC49: PopAdLdVar
  loc_BBBC4A: FLdPr Me
  loc_BBBC4D: MemLdRfVar from_stack_1.global_60
  loc_BBBC50: LdPrVar
  loc_BBBC52: LateMemCall
  loc_BBBC58: LitVarStr var_94, "    <th>Caratula</th>"
  loc_BBBC5D: PopAdLdVar
  loc_BBBC5E: FLdPr Me
  loc_BBBC61: MemLdRfVar from_stack_1.global_60
  loc_BBBC64: LdPrVar
  loc_BBBC66: LateMemCall
  loc_BBBC6C: LitVarStr var_94, "    <th>Monto</th>"
  loc_BBBC71: PopAdLdVar
  loc_BBBC72: FLdPr Me
  loc_BBBC75: MemLdRfVar from_stack_1.global_60
  loc_BBBC78: LdPrVar
  loc_BBBC7A: LateMemCall
  loc_BBBC80: LitVarStr var_94, "    <th>Tribunal</th>"
  loc_BBBC85: PopAdLdVar
  loc_BBBC86: FLdPr Me
  loc_BBBC89: MemLdRfVar from_stack_1.global_60
  loc_BBBC8C: LdPrVar
  loc_BBBC8E: LateMemCall
  loc_BBBC94: LitVarStr var_94, "    <th>Estado <br>Procesal (Ultimo)</th>"
  loc_BBBC99: PopAdLdVar
  loc_BBBC9A: FLdPr Me
  loc_BBBC9D: MemLdRfVar from_stack_1.global_60
  loc_BBBCA0: LdPrVar
  loc_BBBCA2: LateMemCall
  loc_BBBCA8: LitVarStr var_94, "    <th>Fecha</th>"
  loc_BBBCAD: PopAdLdVar
  loc_BBBCAE: FLdPr Me
  loc_BBBCB1: MemLdRfVar from_stack_1.global_60
  loc_BBBCB4: LdPrVar
  loc_BBBCB6: LateMemCall
  loc_BBBCBC: LitStr "Municipalidad de Guaymallén"
  loc_BBBCBF: LitStr "Municipalidad de Lavalle"
  loc_BBBCC2: EqStr
  loc_BBBCC4: BranchF loc_BBBCDE
  loc_BBBCC7: LitVarStr var_94, "    <th width=""18" & Chr(37) & """>Observaciones</th>"
  loc_BBBCCC: PopAdLdVar
  loc_BBBCCD: FLdPr Me
  loc_BBBCD0: MemLdRfVar from_stack_1.global_60
  loc_BBBCD3: LdPrVar
  loc_BBBCD5: LateMemCall
  loc_BBBCDB: Branch loc_BBBCFD
  loc_BBBCDE: LitStr "Municipalidad de Guaymallén"
  loc_BBBCE1: LitStr "Municipalidad de General Alvear"
  loc_BBBCE4: EqStr
  loc_BBBCE6: BranchF loc_BBBCFD
  loc_BBBCE9: LitVarStr var_94, "    <th width=""18" & Chr(37) & """>Recaudador</th>"
  loc_BBBCEE: PopAdLdVar
  loc_BBBCEF: FLdPr Me
  loc_BBBCF2: MemLdRfVar from_stack_1.global_60
  loc_BBBCF5: LdPrVar
  loc_BBBCF7: LateMemCall
  loc_BBBCFD: LitVarStr var_94, "  </tr>"
  loc_BBBD02: PopAdLdVar
  loc_BBBD03: FLdPr Me
  loc_BBBD06: MemLdRfVar from_stack_1.global_60
  loc_BBBD09: LdPrVar
  loc_BBBD0B: LateMemCall
  loc_BBBD11: LitVarStr var_94, "  </thead>"
  loc_BBBD16: PopAdLdVar
  loc_BBBD17: FLdPr Me
  loc_BBBD1A: MemLdRfVar from_stack_1.global_60
  loc_BBBD1D: LdPrVar
  loc_BBBD1F: LateMemCall
  loc_BBBD25: ExitProcHresult
End Function

Private Function Proc_316_32_A0DB78() 'A0DB78
  'Data Table: 4B9A3C
  loc_A0DB38: LitVarStr var_94, "</table>"
  loc_A0DB3D: PopAdLdVar
  loc_A0DB3E: FLdPr Me
  loc_A0DB41: MemLdRfVar from_stack_1.global_60
  loc_A0DB44: LdPrVar
  loc_A0DB46: LateMemCall
  loc_A0DB4C: LitVarStr var_94, "</body>"
  loc_A0DB51: PopAdLdVar
  loc_A0DB52: FLdPr Me
  loc_A0DB55: MemLdRfVar from_stack_1.global_60
  loc_A0DB58: LdPrVar
  loc_A0DB5A: LateMemCall
  loc_A0DB60: LitVarStr var_94, "</html>"
  loc_A0DB65: PopAdLdVar
  loc_A0DB66: FLdPr Me
  loc_A0DB69: MemLdRfVar from_stack_1.global_60
  loc_A0DB6C: LdPrVar
  loc_A0DB6E: LateMemCall
  loc_A0DB74: ExitProcHresult
End Function
