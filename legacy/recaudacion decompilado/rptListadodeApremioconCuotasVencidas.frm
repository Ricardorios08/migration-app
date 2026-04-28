VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeApremioconCuotasVencidas
  Caption = "Listado de Apremio con Cuotas Vencidas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeApremioconCuotasVencidas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9840
  ClientHeight = 3960
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
    Top = 3705
    Width = 9840
    Height = 255
    TabIndex = 18
    OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 2520
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
    Picture = "rptListadodeApremioconCuotasVencidas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":0B9C
    Left = 8040
    Top = 2400
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2400
    Width = 3135
    Height = 1215
    TabIndex = 16
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 24
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
    Left = 120
    Top = 2400
    Width = 4095
    Height = 1215
    TabIndex = 15
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
    Width = 8535
    Height = 2295
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton FealFapaOpt
      Caption = "Fecha del Plan de Pago"
      Left = 3240
      Top = 360
      Width = 2895
      Height = 375
      TabIndex = 1
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton NumeApreOpt
      Caption = "Número de Apremio"
      Left = 120
      Top = 360
      Width = 2895
      Height = 375
      TabIndex = 0
      CausesValidation = 0   'False
    End
    Begin VB.Frame FealFapaFra
      Left = 3240
      Top = 600
      Width = 3015
      Height = 1455
      TabIndex = 21
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 5
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptListadodeApremioconCuotasVencidas.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 885
        Width = 375
        Height = 375
        TabIndex = 7
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptListadodeApremioconCuotasVencidas.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealFapaDesdeMsk
        Left = 960
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":1684
      End
      Begin MSMask.MaskEdBox FealFapaHastaMsk
        Left = 960
        Top = 885
        Width = 1335
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 23
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 885
        Width = 705
        Height = 300
        TabIndex = 22
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame NumeApreFra
      Left = 120
      Top = 600
      Width = 3015
      Height = 1455
      TabIndex = 19
      Begin MSMask.MaskEdBox NumeApreDesdeMsk
        Left = 1440
        Top = 360
        Width = 1215
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":17E4
      End
      Begin MSMask.MaskEdBox NumeApreHastaMsk
        Left = 1440
        Top = 840
        Width = 1215
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":187C
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 660
        Top = 840
        Width = 705
        Height = 300
        TabIndex = 20
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 600
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 13
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6600
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 11
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptListadodeApremioconCuotasVencidas.frx":1914
  End
End

Attribute VB_Name = "rptListadodeApremioconCuotasVencidas"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdNueva_Click() 'A9CE70
  'Data Table: 4C3A1C
  loc_A9CDB0: LitI2_Byte 0
  loc_A9CDB2: FLdPr Me
  loc_A9CDB5: MemStI2 bGenerado
  loc_A9CDB8: LitI2_Byte 0
  loc_A9CDBA: ILdRf Me
  loc_A9CDBD: CastAd
  loc_A9CDC0: FStAdFunc var_88
  loc_A9CDC3: FLdRfVar var_88
  loc_A9CDC6: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A9CDCB: FFree1Ad var_88
  loc_A9CDCE: LitI2_Byte &HFF
  loc_A9CDD0: FLdPr Me
  loc_A9CDD3: VCallAd Control_ID_NumeApreOpt
  loc_A9CDD6: FStAdFunc var_88
  loc_A9CDD9: FLdPr var_88
  loc_A9CDDC: Me.Value = from_stack_1b
  loc_A9CDE1: FFree1Ad var_88
  loc_A9CDE4: LitI2_Byte &HFF
  loc_A9CDE6: Call Proc_135_29_AE231C()
  loc_A9CDEB: LitVarStr var_98, vbNullString
  loc_A9CDF0: PopAdLdVar
  loc_A9CDF1: FLdPr Me
  loc_A9CDF4: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A9CDF7: FStAdFunc var_88
  loc_A9CDFA: FLdPr var_88
  loc_A9CDFD: LateIdSt
  loc_A9CE02: FFree1Ad var_88
  loc_A9CE05: LitVarStr var_98, vbNullString
  loc_A9CE0A: PopAdLdVar
  loc_A9CE0B: FLdPr Me
  loc_A9CE0E: VCallAd Control_ID_NumeApreHastaMsk
  loc_A9CE11: FStAdFunc var_88
  loc_A9CE14: FLdPr var_88
  loc_A9CE17: LateIdSt
  loc_A9CE1C: FFree1Ad var_88
  loc_A9CE1F: LitVarStr var_98, vbNullString
  loc_A9CE24: PopAdLdVar
  loc_A9CE25: FLdPr Me
  loc_A9CE28: VCallAd Control_ID_FealFapaDesdeMsk
  loc_A9CE2B: FStAdFunc var_88
  loc_A9CE2E: FLdPr var_88
  loc_A9CE31: LateIdSt
  loc_A9CE36: FFree1Ad var_88
  loc_A9CE39: LitVarStr var_98, vbNullString
  loc_A9CE3E: PopAdLdVar
  loc_A9CE3F: FLdPr Me
  loc_A9CE42: VCallAd Control_ID_FealFapaHastaMsk
  loc_A9CE45: FStAdFunc var_88
  loc_A9CE48: FLdPr var_88
  loc_A9CE4B: LateIdSt
  loc_A9CE50: FFree1Ad var_88
  loc_A9CE53: Call HabilitarCriterio()
  loc_A9CE58: ILdRf Me
  loc_A9CE5B: CastAd
  loc_A9CE5E: FStAdFunc var_88
  loc_A9CE61: FLdRfVar var_88
  loc_A9CE64: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A9CE69: FFree1Ad var_88
  loc_A9CE6C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A002A4
  'Data Table: 4C3A1C
  loc_A00274: LitVarStr var_94, "Cerrando..."
  loc_A00279: PopAdLdVar
  loc_A0027A: FLdPr Me
  loc_A0027D: VCallAd Control_ID_statusBar
  loc_A00280: FStAdFunc var_A8
  loc_A00283: FLdPr var_A8
  loc_A00286: LateIdSt
  loc_A0028B: FFree1Ad var_A8
  loc_A0028E: ILdRf Me
  loc_A00291: FStAdNoPop
  loc_A00295: ImpAdLdRf MemVar_D9C5D8
  loc_A00298: NewIfNullPr Global
  loc_A0029B: Global.Unload from_stack_1
  loc_A002A0: FFree1Ad var_A8
  loc_A002A3: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0CEC4
  'Data Table: 4C3A1C
  loc_A0CE88: LitVar_Missing var_A4
  loc_A0CE8B: PopAdLdVar
  loc_A0CE8C: LitVarI4
  loc_A0CE94: PopAdLdVar
  loc_A0CE95: ImpAdLdRf MemVar_D930A4
  loc_A0CE98: NewIfNullPr frmCalendario
  loc_A0CE9B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CEA0: ImpAdLdRf MemVar_D93028
  loc_A0CEA3: CDargRef
  loc_A0CEA7: FLdPr Me
  loc_A0CEAA: VCallAd Control_ID_FealFapaDesdeMsk
  loc_A0CEAD: FStAdFunc var_A8
  loc_A0CEB0: FLdPr var_A8
  loc_A0CEB3: LateIdSt
  loc_A0CEB8: FFree1Ad var_A8
  loc_A0CEBB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CEC0: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0EEB4
  'Data Table: 4C3A1C
  loc_A0EE78: LitVar_Missing var_A4
  loc_A0EE7B: PopAdLdVar
  loc_A0EE7C: LitVarI4
  loc_A0EE84: PopAdLdVar
  loc_A0EE85: ImpAdLdRf MemVar_D930A4
  loc_A0EE88: NewIfNullPr frmCalendario
  loc_A0EE8B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0EE90: ImpAdLdRf MemVar_D93028
  loc_A0EE93: CDargRef
  loc_A0EE97: FLdPr Me
  loc_A0EE9A: VCallAd Control_ID_FealFapaHastaMsk
  loc_A0EE9D: FStAdFunc var_A8
  loc_A0EEA0: FLdPr var_A8
  loc_A0EEA3: LateIdSt
  loc_A0EEA8: FFree1Ad var_A8
  loc_A0EEAB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0EEB0: ExitProcHresult
End Sub

Private Sub NumeApreOpt_Click() '9AF8CC
  'Data Table: 4C3A1C
  loc_9AF8C4: LitI2_Byte &HFF
  loc_9AF8C6: Call Proc_135_29_AE231C()
  loc_9AF8CB: ExitProcHresult
End Sub

Private Sub NumeApreDesdeMsk_UnknownEvent_0 '9C7B80
  'Data Table: 4C3A1C
  loc_9C7B6C: FLdPr Me
  loc_9C7B6F: VCallAd Control_ID_NumeApreDesdeMsk
  loc_9C7B72: CVarAd
  loc_9C7B76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7B7B: FFree1Var var_94 = ""
  loc_9C7B7E: ExitProcHresult
End Sub

Private Function NumeApreDesdeMsk_UnknownEvent_8(arg_C) 'A731A8
  'Data Table: 4C3A1C
  loc_A73140: FLdPr Me
  loc_A73143: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A73146: FStAdFunc var_88
  loc_A73149: FLdPr var_88
  loc_A7314C: LateIdLdVar var_98 DispID_22 0
  loc_A73153: PopAd
  loc_A73155: LitI2_Byte 0
  loc_A73157: LitI2_Byte 0
  loc_A73159: FLdRfVar var_98
  loc_A7315C: CStrVarTmp
  loc_A7315D: FStStrNoPop var_9C
  loc_A73160: LitStr "Número de Apremio"
  loc_A73163: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A73168: FStStrNoPop var_A0
  loc_A7316B: FLdPr Me
  loc_A7316E: MemStStrCopy
  loc_A73172: FFreeStr var_9C = ""
  loc_A73179: FFree1Ad var_88
  loc_A7317C: FFree1Var var_98 = ""
  loc_A7317F: FLdPr Me
  loc_A73182: VCallAd Control_ID_NumeApreDesdeMsk
  loc_A73185: FStAdFuncNoPop
  loc_A73188: CastAd
  loc_A7318B: FStAdFunc var_A4
  loc_A7318E: FLdRfVar var_A4
  loc_A73191: FLdPr Me
  loc_A73194: MemLdStr global_88
  loc_A73197: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7319C: IStI2 arg_C
  loc_A7319F: FFreeAd var_88 = ""
  loc_A731A6: ExitProcHresult
End Function

Private Sub NumeApreHastaMsk_UnknownEvent_0 '9C7BC8
  'Data Table: 4C3A1C
  loc_9C7BB4: FLdPr Me
  loc_9C7BB7: VCallAd Control_ID_NumeApreHastaMsk
  loc_9C7BBA: CVarAd
  loc_9C7BBE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7BC3: FFree1Var var_94 = ""
  loc_9C7BC6: ExitProcHresult
End Sub

Private Function NumeApreHastaMsk_UnknownEvent_8(arg_C) 'A70754
  'Data Table: 4C3A1C
  loc_A706EC: FLdPr Me
  loc_A706EF: VCallAd Control_ID_NumeApreHastaMsk
  loc_A706F2: FStAdFunc var_88
  loc_A706F5: FLdPr var_88
  loc_A706F8: LateIdLdVar var_98 DispID_22 0
  loc_A706FF: PopAd
  loc_A70701: LitI2_Byte 0
  loc_A70703: LitI2_Byte 0
  loc_A70705: FLdRfVar var_98
  loc_A70708: CStrVarTmp
  loc_A70709: FStStrNoPop var_9C
  loc_A7070C: LitStr "Número de Apremio"
  loc_A7070F: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A70714: FStStrNoPop var_A0
  loc_A70717: FLdPr Me
  loc_A7071A: MemStStrCopy
  loc_A7071E: FFreeStr var_9C = ""
  loc_A70725: FFree1Ad var_88
  loc_A70728: FFree1Var var_98 = ""
  loc_A7072B: FLdPr Me
  loc_A7072E: VCallAd Control_ID_NumeApreHastaMsk
  loc_A70731: FStAdFuncNoPop
  loc_A70734: CastAd
  loc_A70737: FStAdFunc var_A4
  loc_A7073A: FLdRfVar var_A4
  loc_A7073D: FLdPr Me
  loc_A70740: MemLdStr global_88
  loc_A70743: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A70748: IStI2 arg_C
  loc_A7074B: FFreeAd var_88 = ""
  loc_A70752: ExitProcHresult
End Function

Private Sub FealFapaDesdeMsk_UnknownEvent_0 '9C7C10
  'Data Table: 4C3A1C
  loc_9C7BFC: FLdPr Me
  loc_9C7BFF: VCallAd Control_ID_FealFapaDesdeMsk
  loc_9C7C02: CVarAd
  loc_9C7C06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7C0B: FFree1Var var_94 = ""
  loc_9C7C0E: ExitProcHresult
End Sub

Private Function FealFapaDesdeMsk_UnknownEvent_8(arg_C) 'A633E0
  'Data Table: 4C3A1C
  loc_A63384: FLdPr Me
  loc_A63387: VCallAd Control_ID_FealFapaDesdeMsk
  loc_A6338A: FStAdFunc var_88
  loc_A6338D: FLdPr var_88
  loc_A63390: LateIdLdVar var_98 DispID_15 0
  loc_A63397: CStrVarTmp
  loc_A63398: FStStrNoPop var_9C
  loc_A6339B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A633A0: FStStrNoPop var_A0
  loc_A633A3: FLdPr Me
  loc_A633A6: MemStStrCopy
  loc_A633AA: FFreeStr var_9C = ""
  loc_A633B1: FFree1Ad var_88
  loc_A633B4: FFree1Var var_98 = ""
  loc_A633B7: FLdPr Me
  loc_A633BA: VCallAd Control_ID_FealFapaDesdeMsk
  loc_A633BD: FStAdFuncNoPop
  loc_A633C0: CastAd
  loc_A633C3: FStAdFunc var_A4
  loc_A633C6: FLdRfVar var_A4
  loc_A633C9: FLdPr Me
  loc_A633CC: MemLdStr global_88
  loc_A633CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A633D4: IStI2 arg_C
  loc_A633D7: FFreeAd var_88 = ""
  loc_A633DE: ExitProcHresult
End Function

Private Sub FealFapaHastaMsk_UnknownEvent_0 '9C7C58
  'Data Table: 4C3A1C
  loc_9C7C44: FLdPr Me
  loc_9C7C47: VCallAd Control_ID_FealFapaHastaMsk
  loc_9C7C4A: CVarAd
  loc_9C7C4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7C53: FFree1Var var_94 = ""
  loc_9C7C56: ExitProcHresult
End Sub

Private Function FealFapaHastaMsk_UnknownEvent_8(arg_C) 'A63480
  'Data Table: 4C3A1C
  loc_A63424: FLdPr Me
  loc_A63427: VCallAd Control_ID_FealFapaHastaMsk
  loc_A6342A: FStAdFunc var_88
  loc_A6342D: FLdPr var_88
  loc_A63430: LateIdLdVar var_98 DispID_15 0
  loc_A63437: CStrVarTmp
  loc_A63438: FStStrNoPop var_9C
  loc_A6343B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63440: FStStrNoPop var_A0
  loc_A63443: FLdPr Me
  loc_A63446: MemStStrCopy
  loc_A6344A: FFreeStr var_9C = ""
  loc_A63451: FFree1Ad var_88
  loc_A63454: FFree1Var var_98 = ""
  loc_A63457: FLdPr Me
  loc_A6345A: VCallAd Control_ID_FealFapaHastaMsk
  loc_A6345D: FStAdFuncNoPop
  loc_A63460: CastAd
  loc_A63463: FStAdFunc var_A4
  loc_A63466: FLdRfVar var_A4
  loc_A63469: FLdPr Me
  loc_A6346C: MemLdStr global_88
  loc_A6346F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63474: IStI2 arg_C
  loc_A63477: FFreeAd var_88 = ""
  loc_A6347E: ExitProcHresult
End Function

Private Sub FealFapaOpt_Click() '9AF974
  'Data Table: 4C3A1C
  loc_9AF96C: LitI2_Byte 0
  loc_9AF96E: Call Proc_135_29_AE231C()
  loc_9AF973: ExitProcHresult
End Sub

Private Sub Form_Load() '9DF10C
  'Data Table: 4C3A1C
  loc_9DF0F0: ILdRf Me
  loc_9DF0F3: CastAd
  loc_9DF0F6: FStAdFunc var_88
  loc_9DF0F9: FLdRfVar var_88
  loc_9DF0FC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DF101: FFree1Ad var_88
  loc_9DF104: Call cmdNueva_Click()
  loc_9DF109: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C8468
  'Data Table: 4C3A1C
  loc_9C8450: FLdPr Me
  loc_9C8453: VCallAd Control_ID_wbbReporte
  loc_9C8456: FStAdFunc var_88
  loc_9C8459: FLdRfVar var_88
  loc_9C845C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C8461: FFree1Ad var_88
  loc_9C8464: ExitProcHresult
  loc_9C8465: VCallAd Control_ID_
End Sub

Private Sub cmdPredeterminada_Click() 'A43780
  'Data Table: 4C3A1C
  loc_A4372C: LitI2_Byte 0
  loc_A4372E: ILdRf Me
  loc_A43731: CastAd
  loc_A43734: FStAdFunc var_88
  loc_A43737: FLdRfVar var_88
  loc_A4373A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A4373F: FFree1Ad var_88
  loc_A43742: FLdRfVar var_8A
  loc_A43745: FLdPr Me
  loc_A43748: VCallAd Control_ID_cmdPredeterminada
  loc_A4374B: FStAdFunc var_88
  loc_A4374E: FLdPr var_88
  loc_A43751:  = Me.Enabled
  loc_A43756: FLdI2 var_8A
  loc_A43759: NotI4
  loc_A4375A: FFree1Ad var_88
  loc_A4375D: BranchF loc_A43768
  loc_A43760: ImpAdCallFPR4 DoEvents()
  loc_A43765: Branch loc_A43742
  loc_A43768: ILdRf Me
  loc_A4376B: FStAdNoPop
  loc_A4376F: ImpAdLdRf MemVar_D9C5D8
  loc_A43772: NewIfNullPr Global
  loc_A43775: Global.Unload from_stack_1
  loc_A4377A: FFree1Ad var_88
  loc_A4377D: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9C8338
  'Data Table: 4C3A1C
  loc_9C8320: ILdRf Me
  loc_9C8323: CastAd
  loc_9C8326: FStAdFunc var_88
  loc_9C8329: FLdRfVar var_88
  loc_9C832C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C8331: FFree1Ad var_88
  loc_9C8334: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DD76C
  'Data Table: 4C3A1C
  loc_9DD750: LitI2_Byte 0
  loc_9DD752: PopTmpLdAd2 var_8A
  loc_9DD755: ILdRf Me
  loc_9DD758: CastAd
  loc_9DD75B: FStAdFunc var_88
  loc_9DD75E: FLdRfVar var_88
  loc_9DD761: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DD766: FFree1Ad var_88
  loc_9DD769: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A158C8
  'Data Table: 4C3A1C
  loc_A15890: FLdPr Me
  loc_A15893: VCallAd Control_ID_statusBar
  loc_A15896: FStAdFunc var_88
  loc_A15899: FLdPr var_88
  loc_A1589C: LateIdLdVar var_98 DispID_1 0
  loc_A158A3: CStrVarTmp
  loc_A158A4: CVarStr var_A8
  loc_A158A7: PopAdLdVar
  loc_A158A8: FLdPr Me
  loc_A158AB: VCallAd Control_ID_statusBar
  loc_A158AE: FStAdFunc var_BC
  loc_A158B1: FLdPr var_BC
  loc_A158B4: LateIdSt
  loc_A158B9: FFreeAd var_88 = ""
  loc_A158C0: FFreeVar var_98 = ""
  loc_A158C7: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD4EC
  'Data Table: 4C3A1C
  loc_9DD4D0: LitI2_Byte &HFF
  loc_9DD4D2: LitI2_Byte 0
  loc_9DD4D4: ILdRf Me
  loc_9DD4D7: CastAd
  loc_9DD4DA: FStAdFunc var_88
  loc_9DD4DD: FLdRfVar var_88
  loc_9DD4E0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD4E5: FFree1Ad var_88
  loc_9DD4E8: ExitProcHresult
End Sub

Public Function bLogosGet() '4C4B78
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4C4B87
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4C4B96
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C4BA5
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A40E00
  'Data Table: 4C3A1C
  loc_A40DBC: LitI4 0
  loc_A40DC1: LitI4 1
  loc_A40DC6: FLdRfVar var_88
  loc_A40DC9: Redim
  loc_A40DD3: FLdPr Me
  loc_A40DD6: VCallAd Control_ID_NumeApreOpt
  loc_A40DD9: CVarAd
  loc_A40DDD: ParmAry1St
  loc_A40DE3: FLdPr Me
  loc_A40DE6: VCallAd Control_ID_FealFapaOpt
  loc_A40DE9: CVarAd
  loc_A40DED: ParmAry1St
  loc_A40DF3: FLdRfVar var_88
  loc_A40DF6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A40DFB: FLdRfVar var_88
  loc_A40DFE: Erase
  loc_A40DFF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BBC3D8
  'Data Table: 4C3A1C
  loc_BBBD70: FLdPr Me
  loc_BBBD73: MemLdI2 bGenerado
  loc_BBBD76: BranchF loc_BBBD7A
  loc_BBBD79: ExitProcHresult
  loc_BBBD7A: LitVarStr var_9C, "Generando reporte..."
  loc_BBBD7F: PopAdLdVar
  loc_BBBD80: FLdPr Me
  loc_BBBD83: VCallAd Control_ID_statusBar
  loc_BBBD86: FStAdFunc var_B0
  loc_BBBD89: FLdPr var_B0
  loc_BBBD8C: LateIdSt
  loc_BBBD91: FFree1Ad var_B0
  loc_BBBD94: LitI4 &HB
  loc_BBBD99: CI2I4
  loc_BBBD9A: FLdPr Me
  loc_BBBD9D: Me.MousePointer = from_stack_1
  loc_BBBDA2: FLdRfVar var_B2
  loc_BBBDA5: FLdPr Me
  loc_BBBDA8: VCallAd Control_ID_NumeApreOpt
  loc_BBBDAB: FStAdFunc var_B0
  loc_BBBDAE: FLdPr var_B0
  loc_BBBDB1:  = Me.Value
  loc_BBBDB6: FLdI2 var_B2
  loc_BBBDB9: FFree1Ad var_B0
  loc_BBBDBC: BranchF loc_BBBE51
  loc_BBBDBF: LitI2_Byte 0
  loc_BBBDC1: PopTmpLdAd2 var_B2
  loc_BBBDC4: from_stack_2v = NumeApreDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BBBDC9: FLdPr Me
  loc_BBBDCC: MemLdStr global_88
  loc_BBBDCF: LitStr vbNullString
  loc_BBBDD2: NeStr
  loc_BBBDD4: BranchF loc_BBBDDA
  loc_BBBDD7: Branch loc_BBC3AF
  loc_BBBDDA: LitI2_Byte 0
  loc_BBBDDC: PopTmpLdAd2 var_B2
  loc_BBBDDF: from_stack_2v = NumeApreHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BBBDE4: FLdPr Me
  loc_BBBDE7: MemLdStr global_88
  loc_BBBDEA: LitStr vbNullString
  loc_BBBDED: NeStr
  loc_BBBDEF: BranchF loc_BBBDF5
  loc_BBBDF2: Branch loc_BBC3AF
  loc_BBBDF5: LitStr " AND apremio.NumeApre BETWEEN "
  loc_BBBDF8: FLdPr Me
  loc_BBBDFB: VCallAd Control_ID_NumeApreDesdeMsk
  loc_BBBDFE: FStAdFunc var_B0
  loc_BBBE01: FLdPr var_B0
  loc_BBBE04: LateIdLdVar var_C4 DispID_22 0
  loc_BBBE0B: CStrVarTmp
  loc_BBBE0C: FStStrNoPop var_C8
  loc_BBBE0F: ConcatStr
  loc_BBBE10: FStStrNoPop var_CC
  loc_BBBE13: LitStr " AND "
  loc_BBBE16: ConcatStr
  loc_BBBE17: FStStrNoPop var_E4
  loc_BBBE1A: FLdPr Me
  loc_BBBE1D: VCallAd Control_ID_NumeApreHastaMsk
  loc_BBBE20: FStAdFunc var_D0
  loc_BBBE23: FLdPr var_D0
  loc_BBBE26: LateIdLdVar var_E0 DispID_22 0
  loc_BBBE2D: CStrVarTmp
  loc_BBBE2E: FStStrNoPop var_E8
  loc_BBBE31: ConcatStr
  loc_BBBE32: FStStr var_88
  loc_BBBE35: FFreeStr var_C8 = "": var_CC = "": var_E4 = ""
  loc_BBBE40: FFreeAd var_B0 = ""
  loc_BBBE47: FFreeVar var_C4 = ""
  loc_BBBE4E: Branch loc_BBBF2C
  loc_BBBE51: LitI2_Byte 0
  loc_BBBE53: PopTmpLdAd2 var_B2
  loc_BBBE56: from_stack_2v = FealFapaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BBBE5B: FLdPr Me
  loc_BBBE5E: MemLdStr global_88
  loc_BBBE61: LitStr vbNullString
  loc_BBBE64: NeStr
  loc_BBBE66: BranchF loc_BBBE6C
  loc_BBBE69: Branch loc_BBC3AF
  loc_BBBE6C: LitI2_Byte 0
  loc_BBBE6E: PopTmpLdAd2 var_B2
  loc_BBBE71: from_stack_2v = FealFapaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BBBE76: FLdPr Me
  loc_BBBE79: MemLdStr global_88
  loc_BBBE7C: LitStr vbNullString
  loc_BBBE7F: NeStr
  loc_BBBE81: BranchF loc_BBBE87
  loc_BBBE84: Branch loc_BBC3AF
  loc_BBBE87: FLdPr Me
  loc_BBBE8A: VCallAd Control_ID_FealFapaDesdeMsk
  loc_BBBE8D: FStAdFunc var_B0
  loc_BBBE90: FLdPr var_B0
  loc_BBBE93: LateIdLdVar var_C4 DispID_15 0
  loc_BBBE9A: PopAd
  loc_BBBE9C: FLdPr Me
  loc_BBBE9F: VCallAd Control_ID_FealFapaHastaMsk
  loc_BBBEA2: FStAdFunc var_D0
  loc_BBBEA5: FLdPr var_D0
  loc_BBBEA8: LateIdLdVar var_108 DispID_15 0
  loc_BBBEAF: PopAd
  loc_BBBEB1: LitStr " AND FealFapa BETWEEN "
  loc_BBBEB4: LitI4 1
  loc_BBBEB9: LitI4 1
  loc_BBBEBE: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BBBEC3: FStVarCopyObj var_F8
  loc_BBBEC6: FLdRfVar var_F8
  loc_BBBEC9: FLdRfVar var_C4
  loc_BBBECC: CStrVarTmp
  loc_BBBECD: CVarStr var_E0
  loc_BBBED0: ImpAdCallI2 Format$(, )
  loc_BBBED5: FStStrNoPop var_C8
  loc_BBBED8: ConcatStr
  loc_BBBED9: FStStrNoPop var_CC
  loc_BBBEDC: LitStr " AND "
  loc_BBBEDF: ConcatStr
  loc_BBBEE0: FStStrNoPop var_E4
  loc_BBBEE3: LitI4 1
  loc_BBBEE8: LitI4 1
  loc_BBBEED: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_BBBEF2: FStVarCopyObj var_128
  loc_BBBEF5: FLdRfVar var_128
  loc_BBBEF8: FLdRfVar var_108
  loc_BBBEFB: CStrVarTmp
  loc_BBBEFC: CVarStr var_118
  loc_BBBEFF: ImpAdCallI2 Format$(, )
  loc_BBBF04: FStStrNoPop var_E8
  loc_BBBF07: ConcatStr
  loc_BBBF08: FStStr var_8C
  loc_BBBF0B: FFreeStr var_C8 = "": var_CC = "": var_E4 = ""
  loc_BBBF16: FFreeAd var_B0 = ""
  loc_BBBF1D: FFreeVar var_C4 = "": var_E0 = "": var_F8 = "": var_108 = "": var_118 = ""
  loc_BBBF2C: FLdPr Me
  loc_BBBF2F: MemLdRfVar from_stack_1.global_76
  loc_BBBF32: NewIfNullAd
  loc_BBBF35: FStAd var_12C 
  loc_BBBF39: LitStr "DROP TEMPORARY TABLE IF EXISTS apre;"
  loc_BBBF3C: LitStr " CREATE TEMPORARY TABLE apre"
  loc_BBBF3F: ConcatStr
  loc_BBBF40: FStStrNoPop var_C8
  loc_BBBF43: LitStr " SELECT apremio.NumeApre, AutoApre, apremio.CodiOfic, apremio.CuenCtct, DetaPers, apremio.CodiInju,"
  loc_BBBF46: ConcatStr
  loc_BBBF47: FStStrNoPop var_CC
  loc_BBBF4A: LitStr " ctacte.CodiFapa, FealFapa, ifnull(facipago.CacuFapa, 0) as CacuFapa, count(DISTINCT FepaDefa) as FepaDefa,"
  loc_BBBF4D: ConcatStr
  loc_BBBF4E: FStStrNoPop var_E4
  loc_BBBF51: LitStr " DecrPers, NurePers, MarePers, CarePers, UbrePers, DelrPers, CoprPers"
  loc_BBBF54: ConcatStr
  loc_BBBF55: FStStrNoPop var_E8
  loc_BBBF58: LitStr " FROM apremio"
  loc_BBBF5B: ConcatStr
  loc_BBBF5C: FStStrNoPop var_130
  loc_BBBF5F: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = apremio.CodiOfic AND ctacte.CuenCtct = apremio.CuenCtct AND ctacte.NumeApre = apremio.NumeApre"
  loc_BBBF62: ConcatStr
  loc_BBBF63: FStStrNoPop var_134
  loc_BBBF66: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = ctacte.CodiFapa"
  loc_BBBF69: ConcatStr
  loc_BBBF6A: FStStrNoPop var_138
  loc_BBBF6D: LitStr " LEFT JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_BBBF70: ConcatStr
  loc_BBBF71: FStStrNoPop var_13C
  loc_BBBF74: LitStr " LEFT JOIN infogov.persona as per ON per.CucuPers = apremio.CucuPers"
  loc_BBBF77: ConcatStr
  loc_BBBF78: FStStrNoPop var_140
  loc_BBBF7B: LitStr " WHERE facipago.CodiFapa <> 0 "
  loc_BBBF7E: ConcatStr
  loc_BBBF7F: FStStrNoPop var_144
  loc_BBBF82: ILdRf var_88
  loc_BBBF85: ConcatStr
  loc_BBBF86: FStStrNoPop var_148
  loc_BBBF89: ILdRf var_8C
  loc_BBBF8C: ConcatStr
  loc_BBBF8D: FStStrNoPop var_14C
  loc_BBBF90: LitStr " GROUP BY apremio.NumeApre;"
  loc_BBBF93: ConcatStr
  loc_BBBF94: FStStrNoPop var_150
  loc_BBBF97: FLdPr var_12C
  loc_BBBF9A: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BBBF9F: FFreeStr var_C8 = "": var_CC = "": var_E4 = "": var_E8 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_BBBFBC: LitStr "SELECT apre.*, count(DISTINCT FeveDefa) as FeveDefa"
  loc_BBBFBF: LitStr " FROM apre"
  loc_BBBFC2: ConcatStr
  loc_BBBFC3: FStStrNoPop var_C8
  loc_BBBFC6: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = apre.CodiOfic AND ctacte.CuenCtct = apre.CuenCtct AND ctacte.NumeApre = apre.NumeApre"
  loc_BBBFC9: ConcatStr
  loc_BBBFCA: FStStrNoPop var_CC
  loc_BBBFCD: LitStr " LEFT JOIN detafapa ON detafapa.CodiFapa = ctacte.CodiFapa AND detafapa.FepaDefa is null"
  loc_BBBFD0: ConcatStr
  loc_BBBFD1: FStStrNoPop var_E4
  loc_BBBFD4: LitStr " AND FeveDefa is not null AND FeveDefa < curdate()"
  loc_BBBFD7: ConcatStr
  loc_BBBFD8: FStStrNoPop var_E8
  loc_BBBFDB: LitStr " GROUP BY NumeApre HAVING FeveDefa > 0 ORDER BY apre.NumeApre;"
  loc_BBBFDE: ConcatStr
  loc_BBBFDF: FStStrNoPop var_130
  loc_BBBFE2: FLdPr var_12C
  loc_BBBFE5: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BBBFEA: FFreeStr var_C8 = "": var_CC = "": var_E4 = "": var_E8 = ""
  loc_BBBFF7: FLdRfVar var_154
  loc_BBBFFA: FLdPr var_12C
  loc_BBBFFD: from_stack_1 = clsapremio.RecordCount
  loc_BBC002: ILdRf var_154
  loc_BBC005: LitI4 0
  loc_BBC00A: EqI4
  loc_BBC00B: BranchF loc_BBC019
  loc_BBC00E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BBC011: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BBC016: Branch loc_BBC3AF
  loc_BBC019: LitI4 0
  loc_BBC01E: FLdRfVar var_154
  loc_BBC021: FLdPr var_12C
  loc_BBC024: from_stack_1 = clsapremio.RecordCount
  loc_BBC029: ILdRf var_154
  loc_BBC02C: FLdPr Me
  loc_BBC02F: MemLdRfVar from_stack_1.global_80
  loc_BBC032: Redim
  loc_BBC03C: FLdPr var_12C
  loc_BBC03F: Call clsapremio.MoveFirst()
  loc_BBC044: LitI4 1
  loc_BBC049: FLdPr Me
  loc_BBC04C: MemLdRfVar from_stack_1.global_84
  loc_BBC04F: FLdPr Me
  loc_BBC052: MemLdStr global_80
  loc_BBC055: LitI2_Byte 1
  loc_BBC057: FnUBound
  loc_BBC059: ForI4 var_15C
  loc_BBC05F: FLdRfVar var_154
  loc_BBC062: FLdPr var_12C
  loc_BBC065: from_stack_1 = clsapremio.NumeApre
  loc_BBC06A: LitI2_Byte 0
  loc_BBC06C: LitVar_Missing var_C4
  loc_BBC06F: LitI2_Byte 0
  loc_BBC071: ILdRf var_154
  loc_BBC074: CVarI4
  loc_BBC078: PopAdLdVar
  loc_BBC079: FLdPr Me
  loc_BBC07C: MemLdStr global_84
  loc_BBC07F: FLdPr Me
  loc_BBC082: MemLdStr global_80
  loc_BBC085: AryLock
  loc_BBC088: Ary1LdPr
  loc_BBC089: MemLdRfVar from_stack_1.global_0
  loc_BBC08C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC091: AryUnlock
  loc_BBC094: FFree1Var var_C4 = ""
  loc_BBC097: FLdRfVar var_154
  loc_BBC09A: FLdPr var_12C
  loc_BBC09D: from_stack_1 = clsapremio.AutoApre
  loc_BBC0A2: LitI2_Byte 0
  loc_BBC0A4: LitVar_Missing var_C4
  loc_BBC0A7: LitI2_Byte 0
  loc_BBC0A9: ILdRf var_154
  loc_BBC0AC: CVarI4
  loc_BBC0B0: PopAdLdVar
  loc_BBC0B1: FLdPr Me
  loc_BBC0B4: MemLdStr global_84
  loc_BBC0B7: FLdPr Me
  loc_BBC0BA: MemLdStr global_80
  loc_BBC0BD: AryLock
  loc_BBC0C0: Ary1LdPr
  loc_BBC0C1: MemLdRfVar from_stack_1.global_4
  loc_BBC0C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC0C9: AryUnlock
  loc_BBC0CC: FFree1Var var_C4 = ""
  loc_BBC0CF: FLdRfVar var_B2
  loc_BBC0D2: FLdPr var_12C
  loc_BBC0D5: from_stack_1 = clsapremio.CodiOfic
  loc_BBC0DA: LitI2_Byte 0
  loc_BBC0DC: LitVar_Missing var_C4
  loc_BBC0DF: LitI2_Byte 0
  loc_BBC0E1: FLdUI1
  loc_BBC0E5: CVarUI1
  loc_BBC0E9: PopAdLdVar
  loc_BBC0EA: FLdPr Me
  loc_BBC0ED: MemLdStr global_84
  loc_BBC0F0: FLdPr Me
  loc_BBC0F3: MemLdStr global_80
  loc_BBC0F6: AryLock
  loc_BBC0F9: Ary1LdPr
  loc_BBC0FA: MemLdRfVar from_stack_1.global_8
  loc_BBC0FD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC102: AryUnlock
  loc_BBC105: FFree1Var var_C4 = ""
  loc_BBC108: FLdRfVar var_C8
  loc_BBC10B: FLdPr var_12C
  loc_BBC10E: from_stack_1 = clsapremio.CuenCtct
  loc_BBC113: LitI2_Byte 0
  loc_BBC115: LitVar_Missing var_E0
  loc_BBC118: LitI2_Byte 0
  loc_BBC11A: FLdZeroAd var_C8
  loc_BBC11D: CVarStr var_C4
  loc_BBC120: PopAdLdVar
  loc_BBC121: FLdPr Me
  loc_BBC124: MemLdStr global_84
  loc_BBC127: FLdPr Me
  loc_BBC12A: MemLdStr global_80
  loc_BBC12D: AryLock
  loc_BBC130: Ary1LdPr
  loc_BBC131: MemLdRfVar from_stack_1.global_12
  loc_BBC134: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC139: AryUnlock
  loc_BBC13C: FFreeVar var_C4 = ""
  loc_BBC143: FLdRfVar var_C4
  loc_BBC146: FLdPr var_12C
  loc_BBC149: from_stack_1 = clsapremio.DetaPers
  loc_BBC14E: LitI2_Byte 0
  loc_BBC150: LitVar_Missing var_E0
  loc_BBC153: LitI2_Byte 0
  loc_BBC155: FLdVar var_C4
  loc_BBC159: FLdPr Me
  loc_BBC15C: MemLdStr global_84
  loc_BBC15F: FLdPr Me
  loc_BBC162: MemLdStr global_80
  loc_BBC165: AryLock
  loc_BBC168: Ary1LdPr
  loc_BBC169: MemLdRfVar from_stack_1.global_16
  loc_BBC16C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC171: AryUnlock
  loc_BBC174: FFreeVar var_C4 = ""
  loc_BBC17B: FLdRfVar var_B2
  loc_BBC17E: FLdPr var_12C
  loc_BBC181: from_stack_1 = clsapremio.CodiInju
  loc_BBC186: LitI2_Byte 0
  loc_BBC188: LitVar_Missing var_C4
  loc_BBC18B: LitI2_Byte 0
  loc_BBC18D: FLdI2 var_B2
  loc_BBC190: CVarI2 var_9C
  loc_BBC193: PopAdLdVar
  loc_BBC194: FLdPr Me
  loc_BBC197: MemLdStr global_84
  loc_BBC19A: FLdPr Me
  loc_BBC19D: MemLdStr global_80
  loc_BBC1A0: AryLock
  loc_BBC1A3: Ary1LdPr
  loc_BBC1A4: MemLdRfVar from_stack_1.global_20
  loc_BBC1A7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC1AC: AryUnlock
  loc_BBC1AF: FFree1Var var_C4 = ""
  loc_BBC1B2: FLdRfVar var_154
  loc_BBC1B5: FLdPr var_12C
  loc_BBC1B8: from_stack_1 = clsapremio.CodiFapa
  loc_BBC1BD: LitI2_Byte 0
  loc_BBC1BF: LitVar_Missing var_C4
  loc_BBC1C2: LitI2_Byte 0
  loc_BBC1C4: ILdRf var_154
  loc_BBC1C7: CVarI4
  loc_BBC1CB: PopAdLdVar
  loc_BBC1CC: FLdPr Me
  loc_BBC1CF: MemLdStr global_84
  loc_BBC1D2: FLdPr Me
  loc_BBC1D5: MemLdStr global_80
  loc_BBC1D8: AryLock
  loc_BBC1DB: Ary1LdPr
  loc_BBC1DC: MemLdRfVar from_stack_1.global_24
  loc_BBC1DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC1E4: AryUnlock
  loc_BBC1E7: FFree1Var var_C4 = ""
  loc_BBC1EA: FLdRfVar var_C8
  loc_BBC1ED: FLdPr var_12C
  loc_BBC1F0: from_stack_1 = clsapremio.FealFapa
  loc_BBC1F5: LitI2_Byte 0
  loc_BBC1F7: LitVar_Missing var_E0
  loc_BBC1FA: LitI2_Byte 0
  loc_BBC1FC: FLdZeroAd var_C8
  loc_BBC1FF: CVarStr var_C4
  loc_BBC202: PopAdLdVar
  loc_BBC203: FLdPr Me
  loc_BBC206: MemLdStr global_84
  loc_BBC209: FLdPr Me
  loc_BBC20C: MemLdStr global_80
  loc_BBC20F: AryLock
  loc_BBC212: Ary1LdPr
  loc_BBC213: MemLdRfVar from_stack_1.global_28
  loc_BBC216: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC21B: AryUnlock
  loc_BBC21E: FFreeVar var_C4 = ""
  loc_BBC225: FLdRfVar var_B2
  loc_BBC228: FLdPr var_12C
  loc_BBC22B: from_stack_1 = clsapremio.CacuFapa
  loc_BBC230: LitI2_Byte 0
  loc_BBC232: LitVar_Missing var_C4
  loc_BBC235: LitI2_Byte 0
  loc_BBC237: FLdI2 var_B2
  loc_BBC23A: CVarI2 var_9C
  loc_BBC23D: PopAdLdVar
  loc_BBC23E: FLdPr Me
  loc_BBC241: MemLdStr global_84
  loc_BBC244: FLdPr Me
  loc_BBC247: MemLdStr global_80
  loc_BBC24A: AryLock
  loc_BBC24D: Ary1LdPr
  loc_BBC24E: MemLdRfVar from_stack_1.global_32
  loc_BBC251: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC256: AryUnlock
  loc_BBC259: FFree1Var var_C4 = ""
  loc_BBC25C: FLdRfVar var_C8
  loc_BBC25F: FLdPr var_12C
  loc_BBC262: from_stack_1 = clsapremio.FepaDefa
  loc_BBC267: LitI2_Byte 0
  loc_BBC269: LitVar_Missing var_E0
  loc_BBC26C: LitI2_Byte 0
  loc_BBC26E: FLdZeroAd var_C8
  loc_BBC271: CVarStr var_C4
  loc_BBC274: PopAdLdVar
  loc_BBC275: FLdPr Me
  loc_BBC278: MemLdStr global_84
  loc_BBC27B: FLdPr Me
  loc_BBC27E: MemLdStr global_80
  loc_BBC281: AryLock
  loc_BBC284: Ary1LdPr
  loc_BBC285: MemLdRfVar from_stack_1.global_36
  loc_BBC288: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC28D: AryUnlock
  loc_BBC290: FFreeVar var_C4 = ""
  loc_BBC297: FLdRfVar var_C8
  loc_BBC29A: FLdPr var_12C
  loc_BBC29D: from_stack_1 = clsapremio.FeveDefa
  loc_BBC2A2: LitI2_Byte 0
  loc_BBC2A4: LitVar_Missing var_E0
  loc_BBC2A7: LitI2_Byte 0
  loc_BBC2A9: FLdZeroAd var_C8
  loc_BBC2AC: CVarStr var_C4
  loc_BBC2AF: PopAdLdVar
  loc_BBC2B0: FLdPr Me
  loc_BBC2B3: MemLdStr global_84
  loc_BBC2B6: FLdPr Me
  loc_BBC2B9: MemLdStr global_80
  loc_BBC2BC: AryLock
  loc_BBC2BF: Ary1LdPr
  loc_BBC2C0: MemLdRfVar from_stack_1.global_40
  loc_BBC2C3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC2C8: AryUnlock
  loc_BBC2CB: FFreeVar var_C4 = ""
  loc_BBC2D2: FLdRfVar var_C8
  loc_BBC2D5: FLdPr var_12C
  loc_BBC2D8: from_stack_1 = clsapremio.DecrPers
  loc_BBC2DD: FLdRfVar var_CC
  loc_BBC2E0: FLdPr var_12C
  loc_BBC2E3: from_stack_1 = clsapremio.NurePers
  loc_BBC2E8: FLdRfVar var_130
  loc_BBC2EB: FLdPr var_12C
  loc_BBC2EE: from_stack_1 = clsapremio.UbrePers
  loc_BBC2F3: FLdRfVar var_13C
  loc_BBC2F6: FLdPr var_12C
  loc_BBC2F9: from_stack_1 = clsapremio.DelrPers
  loc_BBC2FE: FLdRfVar var_148
  loc_BBC301: FLdPr var_12C
  loc_BBC304: from_stack_1 = clsapremio.CoprPers
  loc_BBC309: LitI2_Byte 0
  loc_BBC30B: LitVar_Missing var_E0
  loc_BBC30E: LitI2_Byte 0
  loc_BBC310: ILdRf var_C8
  loc_BBC313: LitStr " "
  loc_BBC316: ConcatStr
  loc_BBC317: FStStrNoPop var_E4
  loc_BBC31A: ILdRf var_CC
  loc_BBC31D: ConcatStr
  loc_BBC31E: FStStrNoPop var_E8
  loc_BBC321: LitStr " "
  loc_BBC324: ConcatStr
  loc_BBC325: FStStrNoPop var_134
  loc_BBC328: ILdRf var_130
  loc_BBC32B: ConcatStr
  loc_BBC32C: FStStrNoPop var_138
  loc_BBC32F: LitStr " "
  loc_BBC332: ConcatStr
  loc_BBC333: FStStrNoPop var_140
  loc_BBC336: ILdRf var_13C
  loc_BBC339: ConcatStr
  loc_BBC33A: FStStrNoPop var_144
  loc_BBC33D: LitStr " "
  loc_BBC340: ConcatStr
  loc_BBC341: FStStrNoPop var_14C
  loc_BBC344: ILdRf var_148
  loc_BBC347: ConcatStr
  loc_BBC348: CVarStr var_C4
  loc_BBC34B: PopAdLdVar
  loc_BBC34C: FLdPr Me
  loc_BBC34F: MemLdStr global_84
  loc_BBC352: FLdPr Me
  loc_BBC355: MemLdStr global_80
  loc_BBC358: AryLock
  loc_BBC35B: Ary1LdPr
  loc_BBC35C: MemLdRfVar from_stack_1.global_44
  loc_BBC35F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBC364: AryUnlock
  loc_BBC367: FFreeStr var_C8 = "": var_E4 = "": var_CC = "": var_E8 = "": var_134 = "": var_130 = "": var_138 = "": var_140 = "": var_13C = "": var_144 = "": var_14C = ""
  loc_BBC382: FFreeVar var_C4 = ""
  loc_BBC389: LitI2_Byte 1
  loc_BBC38B: PopTmpLdAd2 var_B2
  loc_BBC38E: FLdPr var_12C
  loc_BBC391: Call clsapremio.Move(from_stack_1v)
  loc_BBC396: FLdPr Me
  loc_BBC399: MemLdRfVar from_stack_1.global_84
  loc_BBC39C: NextI4 var_15C, loc_BBC05F
  loc_BBC3A1: LitNothing
  loc_BBC3A3: FStAd var_12C 
  loc_BBC3A7: LitI2_Byte &HFF
  loc_BBC3A9: FLdPr Me
  loc_BBC3AC: MemStI2 bGenerado
  loc_BBC3AF: LitI4 0
  loc_BBC3B4: CI2I4
  loc_BBC3B5: FLdPr Me
  loc_BBC3B8: Me.MousePointer = from_stack_1
  loc_BBC3BD: LitVarStr var_9C, vbNullString
  loc_BBC3C2: PopAdLdVar
  loc_BBC3C3: FLdPr Me
  loc_BBC3C6: VCallAd Control_ID_statusBar
  loc_BBC3C9: FStAdFunc var_B0
  loc_BBC3CC: FLdPr var_B0
  loc_BBC3CF: LateIdSt
  loc_BBC3D4: FFree1Ad var_B0
  loc_BBC3D7: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B23134
  'Data Table: 4C3A1C
  loc_B22E78: FLdRfVar var_88
  loc_B22E7B: LitI2_Byte 0
  loc_B22E7D: LitI2_Byte &HFF
  loc_B22E7F: ImpAdLdI4 MemVar_D93C84
  loc_B22E82: FLdPr Me
  loc_B22E85: MemLdRfVar from_stack_1.global_56
  loc_B22E88: NewIfNullPr IFileSystem3
  loc_B22E8B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B22E90: ILdRf var_88
  loc_B22E93: FLdPr Me
  loc_B22E96: MemStVarAd
  loc_B22E9A: FFree1Ad var_88
  loc_B22E9D: LitI2_Byte &HFF
  loc_B22E9F: ImpAdStI2 MemVar_D93C8A
  loc_B22EA2: Call Proc_135_30_BEC360()
  loc_B22EA7: LitI4 1
  loc_B22EAC: FLdPr Me
  loc_B22EAF: MemLdRfVar from_stack_1.global_84
  loc_B22EB2: FLdPr Me
  loc_B22EB5: MemLdStr global_80
  loc_B22EB8: LitI2_Byte 1
  loc_B22EBA: FnUBound
  loc_B22EBC: ForI4 var_90
  loc_B22EC2: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B22EC7: PopAdLdVar
  loc_B22EC8: FLdPr Me
  loc_B22ECB: MemLdRfVar from_stack_1.global_60
  loc_B22ECE: LdPrVar
  loc_B22ED0: LateMemCall
  loc_B22ED6: FLdPr Me
  loc_B22ED9: MemLdStr global_84
  loc_B22EDC: FLdPr Me
  loc_B22EDF: MemLdStr global_80
  loc_B22EE2: AryLock
  loc_B22EE5: Ary1LdRf
  loc_B22EE6: FStR4 var_B8
  loc_B22EE9: LitStr vbNullString
  loc_B22EEC: LitI2_Byte 0
  loc_B22EEE: LitI2_Byte 0
  loc_B22EF0: LitI2_Byte 0
  loc_B22EF2: LitStr "right"
  loc_B22EF5: FMemLdR4 var_B8(0)
  loc_B22EFA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22EFF: CVarStr var_C8
  loc_B22F02: PopAdLdVar
  loc_B22F03: FLdPr Me
  loc_B22F06: MemLdRfVar from_stack_1.global_60
  loc_B22F09: LdPrVar
  loc_B22F0B: LateMemCall
  loc_B22F11: FFree1Var var_C8 = ""
  loc_B22F14: LitStr vbNullString
  loc_B22F17: LitI2_Byte 0
  loc_B22F19: LitI2_Byte 0
  loc_B22F1B: LitI2_Byte 0
  loc_B22F1D: LitStr "right"
  loc_B22F20: FMemLdR4 var_B8(4)
  loc_B22F25: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22F2A: CVarStr var_C8
  loc_B22F2D: PopAdLdVar
  loc_B22F2E: FLdPr Me
  loc_B22F31: MemLdRfVar from_stack_1.global_60
  loc_B22F34: LdPrVar
  loc_B22F36: LateMemCall
  loc_B22F3C: FFree1Var var_C8 = ""
  loc_B22F3F: LitStr vbNullString
  loc_B22F42: LitI2_Byte 0
  loc_B22F44: LitI2_Byte 0
  loc_B22F46: LitI2_Byte 0
  loc_B22F48: LitStr "right"
  loc_B22F4B: FMemLdR4 var_B8(8)
  loc_B22F50: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22F55: CVarStr var_C8
  loc_B22F58: PopAdLdVar
  loc_B22F59: FLdPr Me
  loc_B22F5C: MemLdRfVar from_stack_1.global_60
  loc_B22F5F: LdPrVar
  loc_B22F61: LateMemCall
  loc_B22F67: FFree1Var var_C8 = ""
  loc_B22F6A: LitStr vbNullString
  loc_B22F6D: LitI2_Byte 0
  loc_B22F6F: LitI2_Byte 0
  loc_B22F71: LitI2_Byte 0
  loc_B22F73: LitStr "right"
  loc_B22F76: FMemLdR4 var_B8(12)
  loc_B22F7B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22F80: CVarStr var_C8
  loc_B22F83: PopAdLdVar
  loc_B22F84: FLdPr Me
  loc_B22F87: MemLdRfVar from_stack_1.global_60
  loc_B22F8A: LdPrVar
  loc_B22F8C: LateMemCall
  loc_B22F92: FFree1Var var_C8 = ""
  loc_B22F95: LitStr vbNullString
  loc_B22F98: LitI2_Byte 0
  loc_B22F9A: LitI2_Byte 0
  loc_B22F9C: LitI2_Byte 0
  loc_B22F9E: LitStr "left"
  loc_B22FA1: FMemLdR4 var_B8(16)
  loc_B22FA6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22FAB: CVarStr var_C8
  loc_B22FAE: PopAdLdVar
  loc_B22FAF: FLdPr Me
  loc_B22FB2: MemLdRfVar from_stack_1.global_60
  loc_B22FB5: LdPrVar
  loc_B22FB7: LateMemCall
  loc_B22FBD: FFree1Var var_C8 = ""
  loc_B22FC0: LitStr vbNullString
  loc_B22FC3: LitI2_Byte 0
  loc_B22FC5: LitI2_Byte 0
  loc_B22FC7: LitI2_Byte 0
  loc_B22FC9: LitStr "left"
  loc_B22FCC: FMemLdR4 var_B8(44)
  loc_B22FD1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22FD6: CVarStr var_C8
  loc_B22FD9: PopAdLdVar
  loc_B22FDA: FLdPr Me
  loc_B22FDD: MemLdRfVar from_stack_1.global_60
  loc_B22FE0: LdPrVar
  loc_B22FE2: LateMemCall
  loc_B22FE8: FFree1Var var_C8 = ""
  loc_B22FEB: LitStr vbNullString
  loc_B22FEE: LitI2_Byte 0
  loc_B22FF0: LitI2_Byte 0
  loc_B22FF2: LitI2_Byte 0
  loc_B22FF4: LitStr "right"
  loc_B22FF7: FMemLdR4 var_B8(20)
  loc_B22FFC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23001: CVarStr var_C8
  loc_B23004: PopAdLdVar
  loc_B23005: FLdPr Me
  loc_B23008: MemLdRfVar from_stack_1.global_60
  loc_B2300B: LdPrVar
  loc_B2300D: LateMemCall
  loc_B23013: FFree1Var var_C8 = ""
  loc_B23016: LitStr vbNullString
  loc_B23019: LitI2_Byte 0
  loc_B2301B: LitI2_Byte 0
  loc_B2301D: LitI2_Byte 0
  loc_B2301F: LitStr "right"
  loc_B23022: FMemLdR4 var_B8(24)
  loc_B23027: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2302C: CVarStr var_C8
  loc_B2302F: PopAdLdVar
  loc_B23030: FLdPr Me
  loc_B23033: MemLdRfVar from_stack_1.global_60
  loc_B23036: LdPrVar
  loc_B23038: LateMemCall
  loc_B2303E: FFree1Var var_C8 = ""
  loc_B23041: LitStr vbNullString
  loc_B23044: LitI2_Byte 0
  loc_B23046: LitI2_Byte 0
  loc_B23048: LitI2_Byte 0
  loc_B2304A: LitStr "center"
  loc_B2304D: FMemLdR4 var_B8(28)
  loc_B23052: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23057: CVarStr var_C8
  loc_B2305A: PopAdLdVar
  loc_B2305B: FLdPr Me
  loc_B2305E: MemLdRfVar from_stack_1.global_60
  loc_B23061: LdPrVar
  loc_B23063: LateMemCall
  loc_B23069: FFree1Var var_C8 = ""
  loc_B2306C: LitStr vbNullString
  loc_B2306F: LitI2_Byte 0
  loc_B23071: LitI2_Byte 0
  loc_B23073: LitI2_Byte 0
  loc_B23075: LitStr "right"
  loc_B23078: FMemLdR4 var_B8(32)
  loc_B2307D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B23082: CVarStr var_C8
  loc_B23085: PopAdLdVar
  loc_B23086: FLdPr Me
  loc_B23089: MemLdRfVar from_stack_1.global_60
  loc_B2308C: LdPrVar
  loc_B2308E: LateMemCall
  loc_B23094: FFree1Var var_C8 = ""
  loc_B23097: LitStr vbNullString
  loc_B2309A: LitI2_Byte 0
  loc_B2309C: LitI2_Byte 0
  loc_B2309E: LitI2_Byte 0
  loc_B230A0: LitStr "right"
  loc_B230A3: FMemLdR4 var_B8(36)
  loc_B230A8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B230AD: CVarStr var_C8
  loc_B230B0: PopAdLdVar
  loc_B230B1: FLdPr Me
  loc_B230B4: MemLdRfVar from_stack_1.global_60
  loc_B230B7: LdPrVar
  loc_B230B9: LateMemCall
  loc_B230BF: FFree1Var var_C8 = ""
  loc_B230C2: LitStr vbNullString
  loc_B230C5: LitI2_Byte 0
  loc_B230C7: LitI2_Byte 0
  loc_B230C9: LitI2_Byte 0
  loc_B230CB: LitStr "right"
  loc_B230CE: FMemLdR4 var_B8(40)
  loc_B230D3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B230D8: CVarStr var_C8
  loc_B230DB: PopAdLdVar
  loc_B230DC: FLdPr Me
  loc_B230DF: MemLdRfVar from_stack_1.global_60
  loc_B230E2: LdPrVar
  loc_B230E4: LateMemCall
  loc_B230EA: FFree1Var var_C8 = ""
  loc_B230ED: LitI4 0
  loc_B230F2: FStR4 var_B8
  loc_B230F5: AryUnlock
  loc_B230F8: LitVarStr var_A0, "     </tr>"
  loc_B230FD: PopAdLdVar
  loc_B230FE: FLdPr Me
  loc_B23101: MemLdRfVar from_stack_1.global_60
  loc_B23104: LdPrVar
  loc_B23106: LateMemCall
  loc_B2310C: FLdPr Me
  loc_B2310F: MemLdRfVar from_stack_1.global_84
  loc_B23112: NextI4 var_90, loc_B22EC2
  loc_B23117: Call Proc_135_31_A0EF98()
  loc_B2311C: FLdPr Me
  loc_B2311F: MemLdRfVar from_stack_1.global_60
  loc_B23122: LdPrVar
  loc_B23124: LateMemCall
  loc_B2312A: LitStr vbNullString
  loc_B2312D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B23132: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C7CEC
  'Data Table: 4C3A1C
  loc_9C7CD4: LitI2_Byte 0
  loc_9C7CD6: FLdPr Me
  loc_9C7CD9: MemStI2 bLogos
  loc_9C7CDC: Call GeneraHTML()
  loc_9C7CE1: LitI2_Byte &HFF
  loc_9C7CE3: FLdPr Me
  loc_9C7CE6: MemStI2 bLogos
  loc_9C7CE9: ExitProcHresult
  loc_9C7CEA: FLdPr var_5C00
End Sub

Private Function Proc_135_29_AE231C(arg_C) 'AE231C
  'Data Table: 4C3A1C
  loc_AE21C4: FLdI2 arg_C
  loc_AE21C7: BranchF loc_AE2273
  loc_AE21CA: LitI4 0
  loc_AE21CF: LitI4 1
  loc_AE21D4: FLdRfVar var_88
  loc_AE21D7: Redim
  loc_AE21E1: FLdPr Me
  loc_AE21E4: VCallAd Control_ID_NumeApreDesdeMsk
  loc_AE21E7: CVarAd
  loc_AE21EB: ParmAry1St
  loc_AE21F1: FLdPr Me
  loc_AE21F4: VCallAd Control_ID_NumeApreHastaMsk
  loc_AE21F7: CVarAd
  loc_AE21FB: ParmAry1St
  loc_AE2201: FLdRfVar var_88
  loc_AE2204: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE2209: FLdRfVar var_88
  loc_AE220C: Erase
  loc_AE220D: LitI4 0
  loc_AE2212: LitI4 3
  loc_AE2217: FLdRfVar var_88
  loc_AE221A: Redim
  loc_AE2224: FLdPr Me
  loc_AE2227: VCallAd Control_ID_FealFapaDesdeMsk
  loc_AE222A: CVarAd
  loc_AE222E: ParmAry1St
  loc_AE2234: FLdPr Me
  loc_AE2237: VCallAd Control_ID_DesdeFechaCmd
  loc_AE223A: CVarAd
  loc_AE223E: ParmAry1St
  loc_AE2244: FLdPr Me
  loc_AE2247: VCallAd Control_ID_FealFapaHastaMsk
  loc_AE224A: CVarAd
  loc_AE224E: ParmAry1St
  loc_AE2254: FLdPr Me
  loc_AE2257: VCallAd Control_ID_HastaFechaCmd
  loc_AE225A: CVarAd
  loc_AE225E: ParmAry1St
  loc_AE2264: FLdRfVar var_88
  loc_AE2267: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AE226C: FLdRfVar var_88
  loc_AE226F: Erase
  loc_AE2270: Branch loc_AE2319
  loc_AE2273: LitI4 0
  loc_AE2278: LitI4 3
  loc_AE227D: FLdRfVar var_88
  loc_AE2280: Redim
  loc_AE228A: FLdPr Me
  loc_AE228D: VCallAd Control_ID_FealFapaDesdeMsk
  loc_AE2290: CVarAd
  loc_AE2294: ParmAry1St
  loc_AE229A: FLdPr Me
  loc_AE229D: VCallAd Control_ID_DesdeFechaCmd
  loc_AE22A0: CVarAd
  loc_AE22A4: ParmAry1St
  loc_AE22AA: FLdPr Me
  loc_AE22AD: VCallAd Control_ID_FealFapaHastaMsk
  loc_AE22B0: CVarAd
  loc_AE22B4: ParmAry1St
  loc_AE22BA: FLdPr Me
  loc_AE22BD: VCallAd Control_ID_HastaFechaCmd
  loc_AE22C0: CVarAd
  loc_AE22C4: ParmAry1St
  loc_AE22CA: FLdRfVar var_88
  loc_AE22CD: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE22D2: FLdRfVar var_88
  loc_AE22D5: Erase
  loc_AE22D6: LitI4 0
  loc_AE22DB: LitI4 1
  loc_AE22E0: FLdRfVar var_88
  loc_AE22E3: Redim
  loc_AE22ED: FLdPr Me
  loc_AE22F0: VCallAd Control_ID_NumeApreDesdeMsk
  loc_AE22F3: CVarAd
  loc_AE22F7: ParmAry1St
  loc_AE22FD: FLdPr Me
  loc_AE2300: VCallAd Control_ID_NumeApreHastaMsk
  loc_AE2303: CVarAd
  loc_AE2307: ParmAry1St
  loc_AE230D: FLdRfVar var_88
  loc_AE2310: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AE2315: FLdRfVar var_88
  loc_AE2318: Erase
  loc_AE2319: ExitProcHresult
End Function

Private Function Proc_135_30_BEC360() 'BEC360
  'Data Table: 4C3A1C
  loc_BEBB40: LitVarStr var_94, "<html>"
  loc_BEBB45: PopAdLdVar
  loc_BEBB46: FLdPr Me
  loc_BEBB49: MemLdRfVar from_stack_1.global_60
  loc_BEBB4C: LdPrVar
  loc_BEBB4E: LateMemCall
  loc_BEBB54: LitVarStr var_94, "<head>"
  loc_BEBB59: PopAdLdVar
  loc_BEBB5A: FLdPr Me
  loc_BEBB5D: MemLdRfVar from_stack_1.global_60
  loc_BEBB60: LdPrVar
  loc_BEBB62: LateMemCall
  loc_BEBB68: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BEBB6D: PopAdLdVar
  loc_BEBB6E: FLdPr Me
  loc_BEBB71: MemLdRfVar from_stack_1.global_60
  loc_BEBB74: LdPrVar
  loc_BEBB76: LateMemCall
  loc_BEBB7C: LitStr "<title>"
  loc_BEBB7F: FLdRfVar var_A8
  loc_BEBB82: FLdPr Me
  loc_BEBB85:  = Me.Caption
  loc_BEBB8A: ILdRf var_A8
  loc_BEBB8D: ConcatStr
  loc_BEBB8E: FStStrNoPop var_AC
  loc_BEBB91: LitStr "</title>"
  loc_BEBB94: ConcatStr
  loc_BEBB95: CVarStr var_BC
  loc_BEBB98: PopAdLdVar
  loc_BEBB99: FLdPr Me
  loc_BEBB9C: MemLdRfVar from_stack_1.global_60
  loc_BEBB9F: LdPrVar
  loc_BEBBA1: LateMemCall
  loc_BEBBA7: FFreeStr var_A8 = ""
  loc_BEBBAE: FFree1Var var_BC = ""
  loc_BEBBB1: LitVarStr var_94, "<style type=""text/css"">"
  loc_BEBBB6: PopAdLdVar
  loc_BEBBB7: FLdPr Me
  loc_BEBBBA: MemLdRfVar from_stack_1.global_60
  loc_BEBBBD: LdPrVar
  loc_BEBBBF: LateMemCall
  loc_BEBBC5: LitVarStr var_94, ".Titulo1 {"
  loc_BEBBCA: PopAdLdVar
  loc_BEBBCB: FLdPr Me
  loc_BEBBCE: MemLdRfVar from_stack_1.global_60
  loc_BEBBD1: LdPrVar
  loc_BEBBD3: LateMemCall
  loc_BEBBD9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BEBBDE: PopAdLdVar
  loc_BEBBDF: FLdPr Me
  loc_BEBBE2: MemLdRfVar from_stack_1.global_60
  loc_BEBBE5: LdPrVar
  loc_BEBBE7: LateMemCall
  loc_BEBBED: LitVarStr var_94, " font-size: 18px;"
  loc_BEBBF2: PopAdLdVar
  loc_BEBBF3: FLdPr Me
  loc_BEBBF6: MemLdRfVar from_stack_1.global_60
  loc_BEBBF9: LdPrVar
  loc_BEBBFB: LateMemCall
  loc_BEBC01: LitVarStr var_94, " font-weight: bold;"
  loc_BEBC06: PopAdLdVar
  loc_BEBC07: FLdPr Me
  loc_BEBC0A: MemLdRfVar from_stack_1.global_60
  loc_BEBC0D: LdPrVar
  loc_BEBC0F: LateMemCall
  loc_BEBC15: LitVarStr var_94, "}"
  loc_BEBC1A: PopAdLdVar
  loc_BEBC1B: FLdPr Me
  loc_BEBC1E: MemLdRfVar from_stack_1.global_60
  loc_BEBC21: LdPrVar
  loc_BEBC23: LateMemCall
  loc_BEBC29: LitVarStr var_94, ".Titulo2 {"
  loc_BEBC2E: PopAdLdVar
  loc_BEBC2F: FLdPr Me
  loc_BEBC32: MemLdRfVar from_stack_1.global_60
  loc_BEBC35: LdPrVar
  loc_BEBC37: LateMemCall
  loc_BEBC3D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BEBC42: PopAdLdVar
  loc_BEBC43: FLdPr Me
  loc_BEBC46: MemLdRfVar from_stack_1.global_60
  loc_BEBC49: LdPrVar
  loc_BEBC4B: LateMemCall
  loc_BEBC51: LitVarStr var_94, " font-size: 14px;"
  loc_BEBC56: PopAdLdVar
  loc_BEBC57: FLdPr Me
  loc_BEBC5A: MemLdRfVar from_stack_1.global_60
  loc_BEBC5D: LdPrVar
  loc_BEBC5F: LateMemCall
  loc_BEBC65: LitVarStr var_94, " font-weight: bold;"
  loc_BEBC6A: PopAdLdVar
  loc_BEBC6B: FLdPr Me
  loc_BEBC6E: MemLdRfVar from_stack_1.global_60
  loc_BEBC71: LdPrVar
  loc_BEBC73: LateMemCall
  loc_BEBC79: LitVarStr var_94, "}"
  loc_BEBC7E: PopAdLdVar
  loc_BEBC7F: FLdPr Me
  loc_BEBC82: MemLdRfVar from_stack_1.global_60
  loc_BEBC85: LdPrVar
  loc_BEBC87: LateMemCall
  loc_BEBC8D: LitVarStr var_94, ".Normal {"
  loc_BEBC92: PopAdLdVar
  loc_BEBC93: FLdPr Me
  loc_BEBC96: MemLdRfVar from_stack_1.global_60
  loc_BEBC99: LdPrVar
  loc_BEBC9B: LateMemCall
  loc_BEBCA1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BEBCA6: PopAdLdVar
  loc_BEBCA7: FLdPr Me
  loc_BEBCAA: MemLdRfVar from_stack_1.global_60
  loc_BEBCAD: LdPrVar
  loc_BEBCAF: LateMemCall
  loc_BEBCB5: LitVarStr var_94, " font-size: 12px;"
  loc_BEBCBA: PopAdLdVar
  loc_BEBCBB: FLdPr Me
  loc_BEBCBE: MemLdRfVar from_stack_1.global_60
  loc_BEBCC1: LdPrVar
  loc_BEBCC3: LateMemCall
  loc_BEBCC9: LitVarStr var_94, " font-style: normal;"
  loc_BEBCCE: PopAdLdVar
  loc_BEBCCF: FLdPr Me
  loc_BEBCD2: MemLdRfVar from_stack_1.global_60
  loc_BEBCD5: LdPrVar
  loc_BEBCD7: LateMemCall
  loc_BEBCDD: LitVarStr var_94, " font-weight: normal;"
  loc_BEBCE2: PopAdLdVar
  loc_BEBCE3: FLdPr Me
  loc_BEBCE6: MemLdRfVar from_stack_1.global_60
  loc_BEBCE9: LdPrVar
  loc_BEBCEB: LateMemCall
  loc_BEBCF1: LitVarStr var_94, " font-variant: normal;"
  loc_BEBCF6: PopAdLdVar
  loc_BEBCF7: FLdPr Me
  loc_BEBCFA: MemLdRfVar from_stack_1.global_60
  loc_BEBCFD: LdPrVar
  loc_BEBCFF: LateMemCall
  loc_BEBD05: LitVarStr var_94, "}"
  loc_BEBD0A: PopAdLdVar
  loc_BEBD0B: FLdPr Me
  loc_BEBD0E: MemLdRfVar from_stack_1.global_60
  loc_BEBD11: LdPrVar
  loc_BEBD13: LateMemCall
  loc_BEBD19: LitVarStr var_94, ".Encabezado {"
  loc_BEBD1E: PopAdLdVar
  loc_BEBD1F: FLdPr Me
  loc_BEBD22: MemLdRfVar from_stack_1.global_60
  loc_BEBD25: LdPrVar
  loc_BEBD27: LateMemCall
  loc_BEBD2D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BEBD32: PopAdLdVar
  loc_BEBD33: FLdPr Me
  loc_BEBD36: MemLdRfVar from_stack_1.global_60
  loc_BEBD39: LdPrVar
  loc_BEBD3B: LateMemCall
  loc_BEBD41: LitVarStr var_94, " font-size: 11px;"
  loc_BEBD46: PopAdLdVar
  loc_BEBD47: FLdPr Me
  loc_BEBD4A: MemLdRfVar from_stack_1.global_60
  loc_BEBD4D: LdPrVar
  loc_BEBD4F: LateMemCall
  loc_BEBD55: LitVarStr var_94, " font-weight: bold;"
  loc_BEBD5A: PopAdLdVar
  loc_BEBD5B: FLdPr Me
  loc_BEBD5E: MemLdRfVar from_stack_1.global_60
  loc_BEBD61: LdPrVar
  loc_BEBD63: LateMemCall
  loc_BEBD69: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BEBD6E: PopAdLdVar
  loc_BEBD6F: FLdPr Me
  loc_BEBD72: MemLdRfVar from_stack_1.global_60
  loc_BEBD75: LdPrVar
  loc_BEBD77: LateMemCall
  loc_BEBD7D: LitVarStr var_94, "}"
  loc_BEBD82: PopAdLdVar
  loc_BEBD83: FLdPr Me
  loc_BEBD86: MemLdRfVar from_stack_1.global_60
  loc_BEBD89: LdPrVar
  loc_BEBD8B: LateMemCall
  loc_BEBD91: LitVarStr var_94, ".LineaDato {"
  loc_BEBD96: PopAdLdVar
  loc_BEBD97: FLdPr Me
  loc_BEBD9A: MemLdRfVar from_stack_1.global_60
  loc_BEBD9D: LdPrVar
  loc_BEBD9F: LateMemCall
  loc_BEBDA5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEBDAA: PopAdLdVar
  loc_BEBDAB: FLdPr Me
  loc_BEBDAE: MemLdRfVar from_stack_1.global_60
  loc_BEBDB1: LdPrVar
  loc_BEBDB3: LateMemCall
  loc_BEBDB9: LitVarStr var_94, " font-size: 10px;"
  loc_BEBDBE: PopAdLdVar
  loc_BEBDBF: FLdPr Me
  loc_BEBDC2: MemLdRfVar from_stack_1.global_60
  loc_BEBDC5: LdPrVar
  loc_BEBDC7: LateMemCall
  loc_BEBDCD: LitVarStr var_94, "}"
  loc_BEBDD2: PopAdLdVar
  loc_BEBDD3: FLdPr Me
  loc_BEBDD6: MemLdRfVar from_stack_1.global_60
  loc_BEBDD9: LdPrVar
  loc_BEBDDB: LateMemCall
  loc_BEBDE1: LitVarStr var_94, ".Totales {"
  loc_BEBDE6: PopAdLdVar
  loc_BEBDE7: FLdPr Me
  loc_BEBDEA: MemLdRfVar from_stack_1.global_60
  loc_BEBDED: LdPrVar
  loc_BEBDEF: LateMemCall
  loc_BEBDF5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEBDFA: PopAdLdVar
  loc_BEBDFB: FLdPr Me
  loc_BEBDFE: MemLdRfVar from_stack_1.global_60
  loc_BEBE01: LdPrVar
  loc_BEBE03: LateMemCall
  loc_BEBE09: LitVarStr var_94, " font-size: 12px;"
  loc_BEBE0E: PopAdLdVar
  loc_BEBE0F: FLdPr Me
  loc_BEBE12: MemLdRfVar from_stack_1.global_60
  loc_BEBE15: LdPrVar
  loc_BEBE17: LateMemCall
  loc_BEBE1D: LitVarStr var_94, " font-weight: bold;"
  loc_BEBE22: PopAdLdVar
  loc_BEBE23: FLdPr Me
  loc_BEBE26: MemLdRfVar from_stack_1.global_60
  loc_BEBE29: LdPrVar
  loc_BEBE2B: LateMemCall
  loc_BEBE31: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BEBE36: PopAdLdVar
  loc_BEBE37: FLdPr Me
  loc_BEBE3A: MemLdRfVar from_stack_1.global_60
  loc_BEBE3D: LdPrVar
  loc_BEBE3F: LateMemCall
  loc_BEBE45: LitVarStr var_94, "}"
  loc_BEBE4A: PopAdLdVar
  loc_BEBE4B: FLdPr Me
  loc_BEBE4E: MemLdRfVar from_stack_1.global_60
  loc_BEBE51: LdPrVar
  loc_BEBE53: LateMemCall
  loc_BEBE59: LitVarStr var_94, ".SubTotales {"
  loc_BEBE5E: PopAdLdVar
  loc_BEBE5F: FLdPr Me
  loc_BEBE62: MemLdRfVar from_stack_1.global_60
  loc_BEBE65: LdPrVar
  loc_BEBE67: LateMemCall
  loc_BEBE6D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEBE72: PopAdLdVar
  loc_BEBE73: FLdPr Me
  loc_BEBE76: MemLdRfVar from_stack_1.global_60
  loc_BEBE79: LdPrVar
  loc_BEBE7B: LateMemCall
  loc_BEBE81: LitVarStr var_94, " font-size: 10px;"
  loc_BEBE86: PopAdLdVar
  loc_BEBE87: FLdPr Me
  loc_BEBE8A: MemLdRfVar from_stack_1.global_60
  loc_BEBE8D: LdPrVar
  loc_BEBE8F: LateMemCall
  loc_BEBE95: LitVarStr var_94, " font-weight: bold;"
  loc_BEBE9A: PopAdLdVar
  loc_BEBE9B: FLdPr Me
  loc_BEBE9E: MemLdRfVar from_stack_1.global_60
  loc_BEBEA1: LdPrVar
  loc_BEBEA3: LateMemCall
  loc_BEBEA9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BEBEAE: PopAdLdVar
  loc_BEBEAF: FLdPr Me
  loc_BEBEB2: MemLdRfVar from_stack_1.global_60
  loc_BEBEB5: LdPrVar
  loc_BEBEB7: LateMemCall
  loc_BEBEBD: LitVarStr var_94, "}"
  loc_BEBEC2: PopAdLdVar
  loc_BEBEC3: FLdPr Me
  loc_BEBEC6: MemLdRfVar from_stack_1.global_60
  loc_BEBEC9: LdPrVar
  loc_BEBECB: LateMemCall
  loc_BEBED1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BEBED6: PopAdLdVar
  loc_BEBED7: FLdPr Me
  loc_BEBEDA: MemLdRfVar from_stack_1.global_60
  loc_BEBEDD: LdPrVar
  loc_BEBEDF: LateMemCall
  loc_BEBEE5: LitVarStr var_94, "</style>"
  loc_BEBEEA: PopAdLdVar
  loc_BEBEEB: FLdPr Me
  loc_BEBEEE: MemLdRfVar from_stack_1.global_60
  loc_BEBEF1: LdPrVar
  loc_BEBEF3: LateMemCall
  loc_BEBEF9: LitI4 0
  loc_BEBEFE: FStStrCopy var_AC
  loc_BEBF01: FLdRfVar var_AC
  loc_BEBF04: LitI4 0
  loc_BEBF09: FStStrCopy var_A8
  loc_BEBF0C: FLdRfVar var_A8
  loc_BEBF0F: LitI2_Byte &HFF
  loc_BEBF11: PopTmpLdAd2 var_BE
  loc_BEBF14: FLdPr Me
  loc_BEBF17: MemLdRfVar from_stack_1.global_60
  loc_BEBF1A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BEBF1F: FFreeStr var_A8 = ""
  loc_BEBF26: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BEBF2B: PopAdLdVar
  loc_BEBF2C: FLdPr Me
  loc_BEBF2F: MemLdRfVar from_stack_1.global_60
  loc_BEBF32: LdPrVar
  loc_BEBF34: LateMemCall
  loc_BEBF3A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BEBF3F: PopAdLdVar
  loc_BEBF40: FLdPr Me
  loc_BEBF43: MemLdRfVar from_stack_1.global_60
  loc_BEBF46: LdPrVar
  loc_BEBF48: LateMemCall
  loc_BEBF4E: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BEBF53: PopAdLdVar
  loc_BEBF54: FLdPr Me
  loc_BEBF57: MemLdRfVar from_stack_1.global_60
  loc_BEBF5A: LdPrVar
  loc_BEBF5C: LateMemCall
  loc_BEBF62: FLdPr Me
  loc_BEBF65: MemLdI2 bLogos
  loc_BEBF68: BranchF loc_BEBFB1
  loc_BEBF6B: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BEBF6E: LitI2_Byte &H5F
  loc_BEBF70: CStrUI1
  loc_BEBF72: FStStrNoPop var_A8
  loc_BEBF75: ConcatStr
  loc_BEBF76: FStStrNoPop var_AC
  loc_BEBF79: LitStr """ height="""
  loc_BEBF7C: ConcatStr
  loc_BEBF7D: FStStrNoPop var_C4
  loc_BEBF80: LitI2_Byte &H3C
  loc_BEBF82: CStrUI1
  loc_BEBF84: FStStrNoPop var_C8
  loc_BEBF87: ConcatStr
  loc_BEBF88: FStStrNoPop var_CC
  loc_BEBF8B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BEBF8E: ConcatStr
  loc_BEBF8F: CVarStr var_BC
  loc_BEBF92: PopAdLdVar
  loc_BEBF93: FLdPr Me
  loc_BEBF96: MemLdRfVar from_stack_1.global_60
  loc_BEBF99: LdPrVar
  loc_BEBF9B: LateMemCall
  loc_BEBFA1: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BEBFAE: FFree1Var var_BC = ""
  loc_BEBFB1: LitStr "     <br>"
  loc_BEBFB4: LitStr "Municipalidad de Guaymallén"
  loc_BEBFB7: ConcatStr
  loc_BEBFB8: FStStrNoPop var_A8
  loc_BEBFBB: LitStr "</p>"
  loc_BEBFBE: ConcatStr
  loc_BEBFBF: CVarStr var_BC
  loc_BEBFC2: PopAdLdVar
  loc_BEBFC3: FLdPr Me
  loc_BEBFC6: MemLdRfVar from_stack_1.global_60
  loc_BEBFC9: LdPrVar
  loc_BEBFCB: LateMemCall
  loc_BEBFD1: FFree1Str var_A8
  loc_BEBFD4: FFree1Var var_BC = ""
  loc_BEBFD7: LitStr "    <p>"
  loc_BEBFDA: FLdRfVar var_A8
  loc_BEBFDD: FLdPr Me
  loc_BEBFE0:  = Me.Caption
  loc_BEBFE5: ILdRf var_A8
  loc_BEBFE8: ConcatStr
  loc_BEBFE9: FStStrNoPop var_AC
  loc_BEBFEC: LitStr "</p></th>"
  loc_BEBFEF: ConcatStr
  loc_BEBFF0: CVarStr var_BC
  loc_BEBFF3: PopAdLdVar
  loc_BEBFF4: FLdPr Me
  loc_BEBFF7: MemLdRfVar from_stack_1.global_60
  loc_BEBFFA: LdPrVar
  loc_BEBFFC: LateMemCall
  loc_BEC002: FFreeStr var_A8 = ""
  loc_BEC009: FFree1Var var_BC = ""
  loc_BEC00C: LitVarStr var_94, "  </tr>"
  loc_BEC011: PopAdLdVar
  loc_BEC012: FLdPr Me
  loc_BEC015: MemLdRfVar from_stack_1.global_60
  loc_BEC018: LdPrVar
  loc_BEC01A: LateMemCall
  loc_BEC020: LitVarStr var_94, "  <tr>"
  loc_BEC025: PopAdLdVar
  loc_BEC026: FLdPr Me
  loc_BEC029: MemLdRfVar from_stack_1.global_60
  loc_BEC02C: LdPrVar
  loc_BEC02E: LateMemCall
  loc_BEC034: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BEC039: PopAdLdVar
  loc_BEC03A: FLdPr Me
  loc_BEC03D: MemLdRfVar from_stack_1.global_60
  loc_BEC040: LdPrVar
  loc_BEC042: LateMemCall
  loc_BEC048: LitVarStr var_94, "  </tr>"
  loc_BEC04D: PopAdLdVar
  loc_BEC04E: FLdPr Me
  loc_BEC051: MemLdRfVar from_stack_1.global_60
  loc_BEC054: LdPrVar
  loc_BEC056: LateMemCall
  loc_BEC05C: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BEC061: PopAdLdVar
  loc_BEC062: FLdPr Me
  loc_BEC065: MemLdRfVar from_stack_1.global_60
  loc_BEC068: LdPrVar
  loc_BEC06A: LateMemCall
  loc_BEC070: FLdRfVar var_BE
  loc_BEC073: FLdPr Me
  loc_BEC076: VCallAd Control_ID_NumeApreOpt
  loc_BEC079: FStAdFunc var_D0
  loc_BEC07C: FLdPr var_D0
  loc_BEC07F:  = Me.Value
  loc_BEC084: FLdI2 var_BE
  loc_BEC087: FFree1Ad var_D0
  loc_BEC08A: BranchF loc_BEC11A
  loc_BEC08D: LitStr "    <td align=""left""><strong>Desde Apremio: </strong>"
  loc_BEC090: FLdPr Me
  loc_BEC093: VCallAd Control_ID_NumeApreDesdeMsk
  loc_BEC096: FStAdFunc var_D0
  loc_BEC099: FLdPr var_D0
  loc_BEC09C: LateIdLdVar var_BC DispID_22 0
  loc_BEC0A3: CStrVarTmp
  loc_BEC0A4: FStStrNoPop var_A8
  loc_BEC0A7: ConcatStr
  loc_BEC0A8: FStStrNoPop var_AC
  loc_BEC0AB: LitStr "</td>"
  loc_BEC0AE: ConcatStr
  loc_BEC0AF: CVarStr var_E0
  loc_BEC0B2: PopAdLdVar
  loc_BEC0B3: FLdPr Me
  loc_BEC0B6: MemLdRfVar from_stack_1.global_60
  loc_BEC0B9: LdPrVar
  loc_BEC0BB: LateMemCall
  loc_BEC0C1: FFreeStr var_A8 = ""
  loc_BEC0C8: FFree1Ad var_D0
  loc_BEC0CB: FFreeVar var_BC = ""
  loc_BEC0D2: LitStr "    <td align=""right""><strong>Hasta Apremio: </strong>"
  loc_BEC0D5: FLdPr Me
  loc_BEC0D8: VCallAd Control_ID_NumeApreHastaMsk
  loc_BEC0DB: FStAdFunc var_D0
  loc_BEC0DE: FLdPr var_D0
  loc_BEC0E1: LateIdLdVar var_BC DispID_22 0
  loc_BEC0E8: CStrVarTmp
  loc_BEC0E9: FStStrNoPop var_A8
  loc_BEC0EC: ConcatStr
  loc_BEC0ED: FStStrNoPop var_AC
  loc_BEC0F0: LitStr "</td>"
  loc_BEC0F3: ConcatStr
  loc_BEC0F4: CVarStr var_E0
  loc_BEC0F7: PopAdLdVar
  loc_BEC0F8: FLdPr Me
  loc_BEC0FB: MemLdRfVar from_stack_1.global_60
  loc_BEC0FE: LdPrVar
  loc_BEC100: LateMemCall
  loc_BEC106: FFreeStr var_A8 = ""
  loc_BEC10D: FFree1Ad var_D0
  loc_BEC110: FFreeVar var_BC = ""
  loc_BEC117: Branch loc_BEC1A4
  loc_BEC11A: LitStr "    <td align=""left""><strong>Desde Fecha del Plan de Pago: </strong>"
  loc_BEC11D: FLdPr Me
  loc_BEC120: VCallAd Control_ID_FealFapaDesdeMsk
  loc_BEC123: FStAdFunc var_D0
  loc_BEC126: FLdPr var_D0
  loc_BEC129: LateIdLdVar var_BC DispID_15 0
  loc_BEC130: CStrVarTmp
  loc_BEC131: FStStrNoPop var_A8
  loc_BEC134: ConcatStr
  loc_BEC135: FStStrNoPop var_AC
  loc_BEC138: LitStr "</td>"
  loc_BEC13B: ConcatStr
  loc_BEC13C: CVarStr var_E0
  loc_BEC13F: PopAdLdVar
  loc_BEC140: FLdPr Me
  loc_BEC143: MemLdRfVar from_stack_1.global_60
  loc_BEC146: LdPrVar
  loc_BEC148: LateMemCall
  loc_BEC14E: FFreeStr var_A8 = ""
  loc_BEC155: FFree1Ad var_D0
  loc_BEC158: FFreeVar var_BC = ""
  loc_BEC15F: LitStr "    <td align=""right""><strong>Hasta Fecha del Plan de Pago: </strong>"
  loc_BEC162: FLdPr Me
  loc_BEC165: VCallAd Control_ID_FealFapaHastaMsk
  loc_BEC168: FStAdFunc var_D0
  loc_BEC16B: FLdPr var_D0
  loc_BEC16E: LateIdLdVar var_BC DispID_15 0
  loc_BEC175: CStrVarTmp
  loc_BEC176: FStStrNoPop var_A8
  loc_BEC179: ConcatStr
  loc_BEC17A: FStStrNoPop var_AC
  loc_BEC17D: LitStr "</td>"
  loc_BEC180: ConcatStr
  loc_BEC181: CVarStr var_E0
  loc_BEC184: PopAdLdVar
  loc_BEC185: FLdPr Me
  loc_BEC188: MemLdRfVar from_stack_1.global_60
  loc_BEC18B: LdPrVar
  loc_BEC18D: LateMemCall
  loc_BEC193: FFreeStr var_A8 = ""
  loc_BEC19A: FFree1Ad var_D0
  loc_BEC19D: FFreeVar var_BC = ""
  loc_BEC1A4: LitVarStr var_94, "  </tr>"
  loc_BEC1A9: PopAdLdVar
  loc_BEC1AA: FLdPr Me
  loc_BEC1AD: MemLdRfVar from_stack_1.global_60
  loc_BEC1B0: LdPrVar
  loc_BEC1B2: LateMemCall
  loc_BEC1B8: LitVarStr var_94, "</table>"
  loc_BEC1BD: PopAdLdVar
  loc_BEC1BE: FLdPr Me
  loc_BEC1C1: MemLdRfVar from_stack_1.global_60
  loc_BEC1C4: LdPrVar
  loc_BEC1C6: LateMemCall
  loc_BEC1CC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BEC1D1: PopAdLdVar
  loc_BEC1D2: FLdPr Me
  loc_BEC1D5: MemLdRfVar from_stack_1.global_60
  loc_BEC1D8: LdPrVar
  loc_BEC1DA: LateMemCall
  loc_BEC1E0: LitVarStr var_94, "  <thead>"
  loc_BEC1E5: PopAdLdVar
  loc_BEC1E6: FLdPr Me
  loc_BEC1E9: MemLdRfVar from_stack_1.global_60
  loc_BEC1EC: LdPrVar
  loc_BEC1EE: LateMemCall
  loc_BEC1F4: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BEC1F9: PopAdLdVar
  loc_BEC1FA: FLdPr Me
  loc_BEC1FD: MemLdRfVar from_stack_1.global_60
  loc_BEC200: LdPrVar
  loc_BEC202: LateMemCall
  loc_BEC208: LitVarStr var_94, "    <th rowspan=""2"">Nº</th>"
  loc_BEC20D: PopAdLdVar
  loc_BEC20E: FLdPr Me
  loc_BEC211: MemLdRfVar from_stack_1.global_60
  loc_BEC214: LdPrVar
  loc_BEC216: LateMemCall
  loc_BEC21C: LitVarStr var_94, "    <th rowspan=""2"">Auto</th>"
  loc_BEC221: PopAdLdVar
  loc_BEC222: FLdPr Me
  loc_BEC225: MemLdRfVar from_stack_1.global_60
  loc_BEC228: LdPrVar
  loc_BEC22A: LateMemCall
  loc_BEC230: LitVarStr var_94, "    <th rowspan=""2"">Of.</th>"
  loc_BEC235: PopAdLdVar
  loc_BEC236: FLdPr Me
  loc_BEC239: MemLdRfVar from_stack_1.global_60
  loc_BEC23C: LdPrVar
  loc_BEC23E: LateMemCall
  loc_BEC244: LitVarStr var_94, "    <th rowspan=""2"">Cuenta</th>"
  loc_BEC249: PopAdLdVar
  loc_BEC24A: FLdPr Me
  loc_BEC24D: MemLdRfVar from_stack_1.global_60
  loc_BEC250: LdPrVar
  loc_BEC252: LateMemCall
  loc_BEC258: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_BEC25D: PopAdLdVar
  loc_BEC25E: FLdPr Me
  loc_BEC261: MemLdRfVar from_stack_1.global_60
  loc_BEC264: LdPrVar
  loc_BEC266: LateMemCall
  loc_BEC26C: LitVarStr var_94, "    <th rowspan=""2"">Domicilio Postal</th>"
  loc_BEC271: PopAdLdVar
  loc_BEC272: FLdPr Me
  loc_BEC275: MemLdRfVar from_stack_1.global_60
  loc_BEC278: LdPrVar
  loc_BEC27A: LateMemCall
  loc_BEC280: LitVarStr var_94, "    <th rowspan=""2"">Inst.</th>"
  loc_BEC285: PopAdLdVar
  loc_BEC286: FLdPr Me
  loc_BEC289: MemLdRfVar from_stack_1.global_60
  loc_BEC28C: LdPrVar
  loc_BEC28E: LateMemCall
  loc_BEC294: LitVarStr var_94, "    <th colspan=""5"">Facilidad</th>"
  loc_BEC299: PopAdLdVar
  loc_BEC29A: FLdPr Me
  loc_BEC29D: MemLdRfVar from_stack_1.global_60
  loc_BEC2A0: LdPrVar
  loc_BEC2A2: LateMemCall
  loc_BEC2A8: LitVarStr var_94, "  </tr>"
  loc_BEC2AD: PopAdLdVar
  loc_BEC2AE: FLdPr Me
  loc_BEC2B1: MemLdRfVar from_stack_1.global_60
  loc_BEC2B4: LdPrVar
  loc_BEC2B6: LateMemCall
  loc_BEC2BC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BEC2C1: PopAdLdVar
  loc_BEC2C2: FLdPr Me
  loc_BEC2C5: MemLdRfVar from_stack_1.global_60
  loc_BEC2C8: LdPrVar
  loc_BEC2CA: LateMemCall
  loc_BEC2D0: LitVarStr var_94, "    <th>Nº</th>"
  loc_BEC2D5: PopAdLdVar
  loc_BEC2D6: FLdPr Me
  loc_BEC2D9: MemLdRfVar from_stack_1.global_60
  loc_BEC2DC: LdPrVar
  loc_BEC2DE: LateMemCall
  loc_BEC2E4: LitVarStr var_94, "    <th>Fecha</th>"
  loc_BEC2E9: PopAdLdVar
  loc_BEC2EA: FLdPr Me
  loc_BEC2ED: MemLdRfVar from_stack_1.global_60
  loc_BEC2F0: LdPrVar
  loc_BEC2F2: LateMemCall
  loc_BEC2F8: LitVarStr var_94, "    <th>Cuotas</th>"
  loc_BEC2FD: PopAdLdVar
  loc_BEC2FE: FLdPr Me
  loc_BEC301: MemLdRfVar from_stack_1.global_60
  loc_BEC304: LdPrVar
  loc_BEC306: LateMemCall
  loc_BEC30C: LitVarStr var_94, "    <th>Pagadas</th>"
  loc_BEC311: PopAdLdVar
  loc_BEC312: FLdPr Me
  loc_BEC315: MemLdRfVar from_stack_1.global_60
  loc_BEC318: LdPrVar
  loc_BEC31A: LateMemCall
  loc_BEC320: LitVarStr var_94, "    <th>Vencidas</th>"
  loc_BEC325: PopAdLdVar
  loc_BEC326: FLdPr Me
  loc_BEC329: MemLdRfVar from_stack_1.global_60
  loc_BEC32C: LdPrVar
  loc_BEC32E: LateMemCall
  loc_BEC334: LitVarStr var_94, "  </tr>"
  loc_BEC339: PopAdLdVar
  loc_BEC33A: FLdPr Me
  loc_BEC33D: MemLdRfVar from_stack_1.global_60
  loc_BEC340: LdPrVar
  loc_BEC342: LateMemCall
  loc_BEC348: LitVarStr var_94, "  </thead>"
  loc_BEC34D: PopAdLdVar
  loc_BEC34E: FLdPr Me
  loc_BEC351: MemLdRfVar from_stack_1.global_60
  loc_BEC354: LdPrVar
  loc_BEC356: LateMemCall
  loc_BEC35C: ExitProcHresult
End Function

Private Function Proc_135_31_A0EF98() 'A0EF98
  'Data Table: 4C3A1C
  loc_A0EF58: LitVarStr var_94, "</table>"
  loc_A0EF5D: PopAdLdVar
  loc_A0EF5E: FLdPr Me
  loc_A0EF61: MemLdRfVar from_stack_1.global_60
  loc_A0EF64: LdPrVar
  loc_A0EF66: LateMemCall
  loc_A0EF6C: LitVarStr var_94, "</body>"
  loc_A0EF71: PopAdLdVar
  loc_A0EF72: FLdPr Me
  loc_A0EF75: MemLdRfVar from_stack_1.global_60
  loc_A0EF78: LdPrVar
  loc_A0EF7A: LateMemCall
  loc_A0EF80: LitVarStr var_94, "</html>"
  loc_A0EF85: PopAdLdVar
  loc_A0EF86: FLdPr Me
  loc_A0EF89: MemLdRfVar from_stack_1.global_60
  loc_A0EF8C: LdPrVar
  loc_A0EF8E: LateMemCall
  loc_A0EF94: ExitProcHresult
  loc_A0EF95: FStVarCopyObj Proc_135_31_A0EF9800
End Function
