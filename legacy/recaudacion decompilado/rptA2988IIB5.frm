VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988IIB5
  Caption = "Reporte de Deudores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988IIB5.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11052
  ClientHeight = 6336
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 4680
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptA2988IIB5.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6084
    Width = 11052
    Height = 252
    TabIndex = 29
    OleObjectBlob = "rptA2988IIB5.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 5040
    Width = 855
    Height = 735
    TabIndex = 27
    Cancel = -1  'True
    Picture = "rptA2988IIB5.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988IIB5.frx":0C04
    Left = 9960
    Top = 4800
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 4800
    Width = 4695
    Height = 1215
    TabIndex = 23
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
      TabIndex = 26
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
      TabIndex = 25
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
      TabIndex = 24
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
    Top = 4800
    Width = 4095
    Height = 1215
    TabIndex = 20
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
      TabIndex = 22
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
      TabIndex = 21
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
    Height = 4575
    TabIndex = 0
    Begin VB.CheckBox EstadodeDeudaChk
      Caption = "Columnas de Estado de Deuda"
      Left = 5520
      Top = 1560
      Width = 3855
      Height = 375
      TabIndex = 30
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
    Begin VB.OptionButton ConceptoOpt
      Caption = "Por Concepto"
      Left = 240
      Top = 3240
      Width = 1815
      Height = 255
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
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton CuentaContableOpt
      Caption = "Por Cuenta Contable"
      Left = 240
      Top = 1800
      Width = 2655
      Height = 255
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
      CausesValidation = 0   'False
    End
    Begin VB.Frame Frame4
      Caption = "Ordenado según:"
      Left = 4920
      Top = 240
      Width = 3135
      Height = 1215
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
      Begin VB.OptionButton NombreOpt
        Caption = "Apellido y Nombre"
        Left = 600
        Top = 720
        Width = 2295
        Height = 375
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
      End
      Begin VB.OptionButton CuentaOpt
        Caption = "Cuenta"
        Left = 600
        Top = 360
        Width = 2295
        Height = 375
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
    End
    Begin VB.CommandButton HastaFechaCmd
      Left = 3600
      Top = 885
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptA2988IIB5.frx":0C68
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeFechaCmd
      Left = 3600
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptA2988IIB5.frx":11AA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
      Height = 615
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2160
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptA2988IIB5.frx":16EC
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 6
      OleObjectBlob = "rptA2988IIB5.frx":179C
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 3600
      Width = 1215
      Height = 360
      TabIndex = 17
      OleObjectBlob = "rptA2988IIB5.frx":184C
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 2160
      Width = 1575
      Height = 360
      TabIndex = 13
      OleObjectBlob = "rptA2988IIB5.frx":18E4
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 3840
      Top = 2160
      Width = 6615
      Height = 360
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 240
      Top = 2160
      Width = 1860
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 240
      Top = 3600
      Width = 1095
      Height = 300
      TabIndex = 16
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaConcLbl
      Left = 2760
      Top = 3600
      Width = 7575
      Height = 375
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
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
      Left = 1380
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 5
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
    Left = 9840
    Top = 5160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptA2988IIB5.frx":1982
  End
End

Attribute VB_Name = "rptA2988IIB5"

Public bGenerado As Boolean

Private Type UDT_1_00560498
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_2_005604DC
  bStruc(72) As Byte ' String fields: 5
End Type


Private Sub CuentaContableOpt_Click() 'A7BD1C
  'Data Table: 4EEFEC
  loc_A7BC98: FLdRfVar var_8A
  loc_A7BC9B: FLdPr Me
  loc_A7BC9E: VCallAd Control_ID_CuentaContableOpt
  loc_A7BCA1: FStAdFunc var_88
  loc_A7BCA4: FLdPr var_88
  loc_A7BCA7:  = Me.Value
  loc_A7BCAC: FLdI2 var_8A
  loc_A7BCAF: LitI2_Byte &HFF
  loc_A7BCB1: EqI2
  loc_A7BCB2: FFree1Ad var_88
  loc_A7BCB5: BranchF loc_A7BD1A
  loc_A7BCB8: LitVar_TRUE var_9C
  loc_A7BCBB: PopAdLdVar
  loc_A7BCBC: FLdPr Me
  loc_A7BCBF: VCallAd Control_ID_ActiConcMsk
  loc_A7BCC2: FStAdFunc var_88
  loc_A7BCC5: FLdPr var_88
  loc_A7BCC8: LateIdSt
  loc_A7BCCD: FFree1Ad var_88
  loc_A7BCD0: LitVar_FALSE
  loc_A7BCD4: PopAdLdVar
  loc_A7BCD5: FLdPr Me
  loc_A7BCD8: VCallAd Control_ID_CodiConcMsk
  loc_A7BCDB: FStAdFunc var_88
  loc_A7BCDE: FLdPr var_88
  loc_A7BCE1: LateIdSt
  loc_A7BCE6: FFree1Ad var_88
  loc_A7BCE9: LitVarStr var_9C, vbNullString
  loc_A7BCEE: PopAdLdVar
  loc_A7BCEF: FLdPr Me
  loc_A7BCF2: VCallAd Control_ID_CodiConcMsk
  loc_A7BCF5: FStAdFunc var_88
  loc_A7BCF8: FLdPr var_88
  loc_A7BCFB: LateIdSt
  loc_A7BD00: FFree1Ad var_88
  loc_A7BD03: LitStr vbNullString
  loc_A7BD06: FLdPr Me
  loc_A7BD09: VCallAd Control_ID_DetaConcLbl
  loc_A7BD0C: FStAdFunc var_88
  loc_A7BD0F: FLdPr var_88
  loc_A7BD12: Me.Caption = from_stack_1
  loc_A7BD17: FFree1Ad var_88
  loc_A7BD1A: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BFD38
  'Data Table: 4EEFEC
  loc_9BFD24: FLdPr Me
  loc_9BFD27: VCallAd Control_ID_HastaMsk
  loc_9BFD2A: CVarAd
  loc_9BFD2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFD33: FFree1Var var_94 = ""
  loc_9BFD36: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA68F0
  'Data Table: 4EEFEC
  loc_AA6840: FLdPr Me
  loc_AA6843: VCallAd Control_ID_HastaMsk
  loc_AA6846: FStAdFunc var_88
  loc_AA6849: FLdPr var_88
  loc_AA684C: LateIdLdVar var_98 DispID_15 0
  loc_AA6853: CStrVarTmp
  loc_AA6854: CVarStr var_A8
  loc_AA6857: ImpAdCallI2 IsDate()
  loc_AA685C: FFree1Ad var_88
  loc_AA685F: FFreeVar var_98 = ""
  loc_AA6866: BranchF loc_AA68EC
  loc_AA6869: FLdPr Me
  loc_AA686C: VCallAd Control_ID_HastaMsk
  loc_AA686F: FStAdFunc var_88
  loc_AA6872: FLdPr var_88
  loc_AA6875: LateIdLdVar var_98 DispID_15 0
  loc_AA687C: CStrVarTmp
  loc_AA687D: CVarStr var_A8
  loc_AA6880: FLdRfVar var_B8
  loc_AA6883: ImpAdCallFPR4  = Year()
  loc_AA6888: FLdRfVar var_B8
  loc_AA688B: FLdPr Me
  loc_AA688E: VCallAd Control_ID_DesdeMsk
  loc_AA6891: FStAdFunc var_BC
  loc_AA6894: FLdPr var_BC
  loc_AA6897: LateIdLdVar var_CC DispID_15 0
  loc_AA689E: CStrVarTmp
  loc_AA689F: CVarStr var_DC
  loc_AA68A2: FLdRfVar var_EC
  loc_AA68A5: ImpAdCallFPR4  = Year()
  loc_AA68AA: FLdRfVar var_EC
  loc_AA68AD: NeVarBool
  loc_AA68AF: FFreeAd var_88 = ""
  loc_AA68B6: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA68C5: BranchF loc_AA68EC
  loc_AA68C8: FLdPr Me
  loc_AA68CB: VCallAd Control_ID_HastaMsk
  loc_AA68CE: FStAdFuncNoPop
  loc_AA68D1: CastAd
  loc_AA68D4: FStAdFunc var_BC
  loc_AA68D7: FLdRfVar var_BC
  loc_AA68DA: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA68DD: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA68E2: IStI2 arg_C
  loc_AA68E5: FFreeAd var_88 = ""
  loc_AA68EC: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A171A0
  'Data Table: 4EEFEC
  loc_A17168: FLdPr Me
  loc_A1716B: VCallAd Control_ID_statusBar
  loc_A1716E: FStAdFunc var_88
  loc_A17171: FLdPr var_88
  loc_A17174: LateIdLdVar var_98 DispID_1 0
  loc_A1717B: CStrVarTmp
  loc_A1717C: CVarStr var_A8
  loc_A1717F: PopAdLdVar
  loc_A17180: FLdPr Me
  loc_A17183: VCallAd Control_ID_statusBar
  loc_A17186: FStAdFunc var_BC
  loc_A17189: FLdPr var_BC
  loc_A1718C: LateIdSt
  loc_A17191: FFreeAd var_88 = ""
  loc_A17198: FFreeVar var_98 = ""
  loc_A1719F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E40BC
  'Data Table: 4EEFEC
  loc_9E40A0: LitI2_Byte 0
  loc_9E40A2: PopTmpLdAd2 var_8A
  loc_9E40A5: ILdRf Me
  loc_9E40A8: CastAd
  loc_9E40AB: FStAdFunc var_88
  loc_9E40AE: FLdRfVar var_88
  loc_9E40B1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E40B6: FFree1Ad var_88
  loc_9E40B9: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CEE64
  'Data Table: 4EEFEC
  loc_9CEE4C: LitI2_Byte 0
  loc_9CEE4E: ILdRf Me
  loc_9CEE51: CastAd
  loc_9CEE54: FStAdFunc var_88
  loc_9CEE57: FLdRfVar var_88
  loc_9CEE5A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CEE5F: FFree1Ad var_88
  loc_9CEE62: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A1EC
  'Data Table: 4EEFEC
  loc_A0A1B4: LitI2_Byte 0
  loc_A0A1B6: FLdPr Me
  loc_A0A1B9: MemStI2 bGenerado
  loc_A0A1BC: LitI2_Byte 0
  loc_A0A1BE: ILdRf Me
  loc_A0A1C1: CastAd
  loc_A0A1C4: FStAdFunc var_88
  loc_A0A1C7: FLdRfVar var_88
  loc_A0A1CA: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A0A1CF: FFree1Ad var_88
  loc_A0A1D2: Call HabilitarCriterio()
  loc_A0A1D7: ILdRf Me
  loc_A0A1DA: CastAd
  loc_A0A1DD: FStAdFunc var_88
  loc_A0A1E0: FLdRfVar var_88
  loc_A0A1E3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A1E8: FFree1Ad var_88
  loc_A0A1EB: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0E354
  'Data Table: 4EEFEC
  loc_A0E318: LitVar_Missing var_A4
  loc_A0E31B: PopAdLdVar
  loc_A0E31C: LitVarI4
  loc_A0E324: PopAdLdVar
  loc_A0E325: ImpAdLdRf MemVar_D930A4
  loc_A0E328: NewIfNullPr frmCalendario
  loc_A0E32B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0E330: ImpAdLdRf MemVar_D93028
  loc_A0E333: CDargRef
  loc_A0E337: FLdPr Me
  loc_A0E33A: VCallAd Control_ID_DesdeMsk
  loc_A0E33D: FStAdFunc var_A8
  loc_A0E340: FLdPr var_A8
  loc_A0E343: LateIdSt
  loc_A0E348: FFree1Ad var_A8
  loc_A0E34B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0E350: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0E3C4
  'Data Table: 4EEFEC
  loc_A0E388: LitVar_Missing var_A4
  loc_A0E38B: PopAdLdVar
  loc_A0E38C: LitVarI4
  loc_A0E394: PopAdLdVar
  loc_A0E395: ImpAdLdRf MemVar_D930A4
  loc_A0E398: NewIfNullPr frmCalendario
  loc_A0E39B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0E3A0: ImpAdLdRf MemVar_D93028
  loc_A0E3A3: CDargRef
  loc_A0E3A7: FLdPr Me
  loc_A0E3AA: VCallAd Control_ID_HastaMsk
  loc_A0E3AD: FStAdFunc var_A8
  loc_A0E3B0: FLdPr var_A8
  loc_A0E3B3: LateIdSt
  loc_A0E3B8: FFree1Ad var_A8
  loc_A0E3BB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0E3C0: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF8B28
  'Data Table: 4EEFEC
  loc_AF8980: ILdRf Me
  loc_AF8983: CastAd
  loc_AF8986: FStAdFunc var_88
  loc_AF8989: FLdRfVar var_88
  loc_AF898C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AF8991: FFree1Ad var_88
  loc_AF8994: LitVarStr var_98, "Reporte de Deudores"
  loc_AF8999: CStrVarVal var_9C
  loc_AF899D: FLdPr Me
  loc_AF89A0: Me.Caption = from_stack_1
  loc_AF89A5: FFree1Str var_9C
  loc_AF89A8: Call cmdNueva_Click()
  loc_AF89AD: LitVarStr var_98, vbNullString
  loc_AF89B2: PopAdLdVar
  loc_AF89B3: FLdPr Me
  loc_AF89B6: VCallAd Control_ID_ActiConcMsk
  loc_AF89B9: FStAdFunc var_88
  loc_AF89BC: FLdPr var_88
  loc_AF89BF: LateIdSt
  loc_AF89C4: FFree1Ad var_88
  loc_AF89C7: LitStr vbNullString
  loc_AF89CA: FLdPr Me
  loc_AF89CD: VCallAd Control_ID_DetaActiLbl
  loc_AF89D0: FStAdFunc var_88
  loc_AF89D3: FLdPr var_88
  loc_AF89D6: Me.Caption = from_stack_1
  loc_AF89DB: FFree1Ad var_88
  loc_AF89DE: LitI2_Byte 0
  loc_AF89E0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF89E5: CVarDate var_BC
  loc_AF89E9: FLdRfVar var_CC
  loc_AF89EC: ImpAdCallFPR4  = Year()
  loc_AF89F1: LitI2_Byte 0
  loc_AF89F3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF89F8: CVarDate var_DC
  loc_AF89FC: FLdRfVar var_EC
  loc_AF89FF: ImpAdCallFPR4  = Month()
  loc_AF8A04: LitI2_Byte 1
  loc_AF8A06: FLdRfVar var_EC
  loc_AF8A09: LitVarI2 var_FC, 1
  loc_AF8A0E: SubVar var_10C
  loc_AF8A12: CI2Var
  loc_AF8A13: FLdRfVar var_CC
  loc_AF8A16: CI2Var
  loc_AF8A17: FLdRfVar var_11C
  loc_AF8A1A: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF8A1F: FLdRfVar var_11C
  loc_AF8A22: CStrVarTmp
  loc_AF8A23: CVarStr var_12C
  loc_AF8A26: PopAdLdVar
  loc_AF8A27: FLdPr Me
  loc_AF8A2A: VCallAd Control_ID_DesdeMsk
  loc_AF8A2D: FStAdFunc var_88
  loc_AF8A30: FLdPr var_88
  loc_AF8A33: LateIdSt
  loc_AF8A38: FFree1Ad var_88
  loc_AF8A3B: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_CC = "": var_11C = ""
  loc_AF8A4A: FLdPr Me
  loc_AF8A4D: VCallAd Control_ID_DesdeMsk
  loc_AF8A50: FStAdFunc var_88
  loc_AF8A53: FLdPr var_88
  loc_AF8A56: LateIdLdVar var_BC DispID_15 0
  loc_AF8A5D: CStrVarTmp
  loc_AF8A5E: CVarStr var_CC
  loc_AF8A61: FLdRfVar var_DC
  loc_AF8A64: ImpAdCallFPR4  = Year()
  loc_AF8A69: FLdPr Me
  loc_AF8A6C: VCallAd Control_ID_DesdeMsk
  loc_AF8A6F: FStAdFunc var_140
  loc_AF8A72: FLdPr var_140
  loc_AF8A75: LateIdLdVar var_EC DispID_15 0
  loc_AF8A7C: CStrVarTmp
  loc_AF8A7D: CVarStr var_10C
  loc_AF8A80: FLdRfVar var_11C
  loc_AF8A83: ImpAdCallFPR4  = Month()
  loc_AF8A88: LitI2_Byte 1
  loc_AF8A8A: FLdRfVar var_11C
  loc_AF8A8D: LitVarI2 var_98, 1
  loc_AF8A92: AddVar var_12C
  loc_AF8A96: CI2Var
  loc_AF8A97: FLdRfVar var_DC
  loc_AF8A9A: CI2Var
  loc_AF8A9B: FLdRfVar var_150
  loc_AF8A9E: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF8AA3: FLdRfVar var_150
  loc_AF8AA6: LitVarI2 var_AC, 1
  loc_AF8AAB: SubVar var_160
  loc_AF8AAF: CStrVarTmp
  loc_AF8AB0: CVarStr var_170
  loc_AF8AB3: PopAdLdVar
  loc_AF8AB4: FLdPr Me
  loc_AF8AB7: VCallAd Control_ID_HastaMsk
  loc_AF8ABA: FStAdFunc var_174
  loc_AF8ABD: FLdPr var_174
  loc_AF8AC0: LateIdSt
  loc_AF8AC5: FFreeAd var_88 = "": var_140 = ""
  loc_AF8ACE: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AF8AE3: LitI2_Byte 1
  loc_AF8AE5: FLdPr Me
  loc_AF8AE8: VCallAd Control_ID_EstadodeDeudaChk
  loc_AF8AEB: FStAdFunc var_88
  loc_AF8AEE: FLdPr var_88
  loc_AF8AF1: Me.Value = from_stack_1
  loc_AF8AF6: FFree1Ad var_88
  loc_AF8AF9: LitI2_Byte &HFF
  loc_AF8AFB: FLdPr Me
  loc_AF8AFE: VCallAd Control_ID_CuentaOpt
  loc_AF8B01: FStAdFunc var_88
  loc_AF8B04: FLdPr var_88
  loc_AF8B07: Me.Value = from_stack_1b
  loc_AF8B0C: FFree1Ad var_88
  loc_AF8B0F: LitI2_Byte &HFF
  loc_AF8B11: FLdPr Me
  loc_AF8B14: VCallAd Control_ID_CuentaContableOpt
  loc_AF8B17: FStAdFunc var_88
  loc_AF8B1A: FLdPr var_88
  loc_AF8B1D: Me.Value = from_stack_1b
  loc_AF8B22: FFree1Ad var_88
  loc_AF8B25: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CEC04
  'Data Table: 4EEFEC
  loc_9CEBEC: FLdPr Me
  loc_9CEBEF: VCallAd Control_ID_wbbReporte
  loc_9CEBF2: FStAdFunc var_88
  loc_9CEBF5: FLdRfVar var_88
  loc_9CEBF8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CEBFD: FFree1Ad var_88
  loc_9CEC00: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A04DA4
  'Data Table: 4EEFEC
  loc_A04D74: LitVarStr var_94, "Cerrando..."
  loc_A04D79: PopAdLdVar
  loc_A04D7A: FLdPr Me
  loc_A04D7D: VCallAd Control_ID_statusBar
  loc_A04D80: FStAdFunc var_A8
  loc_A04D83: FLdPr var_A8
  loc_A04D86: LateIdSt
  loc_A04D8B: FFree1Ad var_A8
  loc_A04D8E: ILdRf Me
  loc_A04D91: FStAdNoPop
  loc_A04D95: ImpAdLdRf MemVar_D9C5D8
  loc_A04D98: NewIfNullPr Global
  loc_A04D9B: Global.Unload from_stack_1
  loc_A04DA0: FFree1Ad var_A8
  loc_A04DA3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E401C
  'Data Table: 4EEFEC
  loc_9E4000: LitI2_Byte 0
  loc_9E4002: LitI2_Byte 0
  loc_9E4004: ILdRf Me
  loc_9E4007: CastAd
  loc_9E400A: FStAdFunc var_88
  loc_9E400D: FLdRfVar var_88
  loc_9E4010: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E4015: FFree1Ad var_88
  loc_9E4018: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9C00E0
  'Data Table: 4EEFEC
  loc_9C00CC: FLdPr Me
  loc_9C00CF: VCallAd Control_ID_ActiConcMsk
  loc_9C00D2: CVarAd
  loc_9C00D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C00DB: FFree1Var var_94 = ""
  loc_9C00DE: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AFDDEC
  'Data Table: 4EEFEC
  loc_AFDC24: FLdRfVar var_8A
  loc_AFDC27: FLdPr Me
  loc_AFDC2A: VCallAd Control_ID_CuentaContableOpt
  loc_AFDC2D: FStAdFunc var_88
  loc_AFDC30: FLdPr var_88
  loc_AFDC33:  = Me.Value
  loc_AFDC38: FLdI2 var_8A
  loc_AFDC3B: LitI2_Byte &HFF
  loc_AFDC3D: EqI2
  loc_AFDC3E: FFree1Ad var_88
  loc_AFDC41: BranchF loc_AFDDE8
  loc_AFDC44: FLdPr Me
  loc_AFDC47: VCallAd Control_ID_DesdeMsk
  loc_AFDC4A: FStAdFunc var_88
  loc_AFDC4D: FLdPr var_88
  loc_AFDC50: LateIdLdVar var_9C DispID_15 0
  loc_AFDC57: CStrVarTmp
  loc_AFDC58: CVarStr var_AC
  loc_AFDC5B: FLdRfVar var_BC
  loc_AFDC5E: ImpAdCallFPR4  = Year()
  loc_AFDC63: FLdPr Me
  loc_AFDC66: VCallAd Control_ID_ActiConcMsk
  loc_AFDC69: FStAdFunc var_C0
  loc_AFDC6C: FLdPr var_C0
  loc_AFDC6F: LateIdLdVar var_D0 DispID_22 0
  loc_AFDC76: PopAd
  loc_AFDC78: LitI4 0
  loc_AFDC7D: LitI4 1
  loc_AFDC82: FLdRfVar var_DC
  loc_AFDC85: Redim
  loc_AFDC8F: LitVarStr var_EC, "1"
  loc_AFDC94: LitI4 0
  loc_AFDC99: ILdRf var_DC
  loc_AFDC9C: Ary1StVarCopy
  loc_AFDC9E: LitVarStr var_FC, "4"
  loc_AFDCA3: LitI4 1
  loc_AFDCA8: ILdRf var_DC
  loc_AFDCAB: Ary1StVarCopy
  loc_AFDCAD: FLdRfVar var_DC
  loc_AFDCB0: FLdRfVar var_D0
  loc_AFDCB3: CStrVarTmp
  loc_AFDCB4: FStStrNoPop var_D8
  loc_AFDCB7: FLdRfVar var_BC
  loc_AFDCBA: CStrVarVal var_D4
  loc_AFDCBE: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AFDCC3: FStStr var_100
  loc_AFDCC6: FLdRfVar var_DC
  loc_AFDCC9: Erase
  loc_AFDCCA: ILdRf var_100
  loc_AFDCCD: FLdPr Me
  loc_AFDCD0: MemStStrCopy
  loc_AFDCD4: FFreeStr var_D4 = "": var_D8 = ""
  loc_AFDCDD: FFreeAd var_88 = ""
  loc_AFDCE4: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AFDCEF: FLdPr Me
  loc_AFDCF2: VCallAd Control_ID_ActiConcMsk
  loc_AFDCF5: FStAdFuncNoPop
  loc_AFDCF8: CastAd
  loc_AFDCFB: FStAdFunc var_C0
  loc_AFDCFE: FLdRfVar var_C0
  loc_AFDD01: FLdPr Me
  loc_AFDD04: MemLdStr global_112
  loc_AFDD07: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AFDD0C: IStI2 arg_C
  loc_AFDD0F: FFreeAd var_88 = ""
  loc_AFDD16: ILdI2 arg_C
  loc_AFDD19: NotI4
  loc_AFDD1A: BranchF loc_AFDDD4
  loc_AFDD1D: FLdPr Me
  loc_AFDD20: VCallAd Control_ID_DesdeMsk
  loc_AFDD23: FStAdFunc var_88
  loc_AFDD26: FLdPr var_88
  loc_AFDD29: LateIdLdVar var_9C DispID_15 0
  loc_AFDD30: CStrVarTmp
  loc_AFDD31: CVarStr var_AC
  loc_AFDD34: FLdRfVar var_BC
  loc_AFDD37: ImpAdCallFPR4  = Year()
  loc_AFDD3C: FLdPr Me
  loc_AFDD3F: VCallAd Control_ID_ActiConcMsk
  loc_AFDD42: FStAdFunc var_C0
  loc_AFDD45: FLdPr var_C0
  loc_AFDD48: LateIdLdVar var_D0 DispID_22 0
  loc_AFDD4F: CStrVarTmp
  loc_AFDD50: FStStrNoPop var_D4
  loc_AFDD53: FLdRfVar var_BC
  loc_AFDD56: CI2Var
  loc_AFDD57: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AFDD5C: FStStrNoPop var_D8
  loc_AFDD5F: FLdPr Me
  loc_AFDD62: VCallAd Control_ID_DetaActiLbl
  loc_AFDD65: FStAdFunc var_104
  loc_AFDD68: FLdPr var_104
  loc_AFDD6B: Me.Caption = from_stack_1
  loc_AFDD70: FFreeStr var_D4 = ""
  loc_AFDD77: FFreeAd var_88 = "": var_C0 = ""
  loc_AFDD80: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AFDD8B: LitVarStr var_EC, "Reporte de Deudores"
  loc_AFDD90: LitVarStr var_FC, " - "
  loc_AFDD95: ConcatVar var_9C
  loc_AFDD99: FLdPr Me
  loc_AFDD9C: VCallAd Control_ID_ActiConcMsk
  loc_AFDD9F: FStAdFunc var_88
  loc_AFDDA2: FLdPr var_88
  loc_AFDDA5: LateIdLdVar var_AC DispID_22 0
  loc_AFDDAC: CStrVarTmp
  loc_AFDDAD: CVarStr var_BC
  loc_AFDDB0: ConcatVar var_D0
  loc_AFDDB4: CStrVarVal var_D4
  loc_AFDDB8: FLdPr Me
  loc_AFDDBB: Me.Caption = from_stack_1
  loc_AFDDC0: FFree1Str var_D4
  loc_AFDDC3: FFree1Ad var_88
  loc_AFDDC6: FFreeVar var_AC = "": var_9C = "": var_BC = ""
  loc_AFDDD1: Branch loc_AFDDE8
  loc_AFDDD4: LitVarStr var_EC, "Reporte de Deudores"
  loc_AFDDD9: CStrVarVal var_D4
  loc_AFDDDD: FLdPr Me
  loc_AFDDE0: Me.Caption = from_stack_1
  loc_AFDDE5: FFree1Str var_D4
  loc_AFDDE8: ExitProcHresult
End Function

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AE649C
  'Data Table: 4EEFEC
  loc_AE633C: ILdI2 KeyAscii
  loc_AE633F: LitI2_Byte &H20
  loc_AE6341: EqI2
  loc_AE6342: BranchF loc_AE6498
  loc_AE6345: LitI2_Byte 0
  loc_AE6347: IStI2 KeyAscii
  loc_AE634A: ImpAdLdRf MemVar_D9468C
  loc_AE634D: NewIfNullAd
  loc_AE6350: FStAd var_88 
  loc_AE6354: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AE6357: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AE635A: ConcatStr
  loc_AE635B: FStStrNoPop var_8C
  loc_AE635E: LitStr " WHERE co.PeriInfo = "
  loc_AE6361: ConcatStr
  loc_AE6362: CVarStr var_D0
  loc_AE6365: FLdPr Me
  loc_AE6368: VCallAd Control_ID_DesdeMsk
  loc_AE636B: FStAdFunc var_90
  loc_AE636E: FLdPr var_90
  loc_AE6371: LateIdLdVar var_A0 DispID_15 0
  loc_AE6378: CStrVarTmp
  loc_AE6379: CVarStr var_B0
  loc_AE637C: FLdRfVar var_C0
  loc_AE637F: ImpAdCallFPR4  = Year()
  loc_AE6384: FLdRfVar var_C0
  loc_AE6387: ConcatVar var_E0
  loc_AE638B: LitVarStr var_F0, " ORDER BY co.ActiConc"
  loc_AE6390: ConcatVar var_100
  loc_AE6394: CStrVarVal var_104
  loc_AE6398: FLdPr var_88
  loc_AE639B: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AE63A0: FFreeStr var_8C = ""
  loc_AE63A7: FFree1Ad var_90
  loc_AE63AA: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AE63B9: LitVar_Missing var_114
  loc_AE63BC: PopAdLdVar
  loc_AE63BD: LitVarI4
  loc_AE63C5: PopAdLdVar
  loc_AE63C6: FLdPr var_88
  loc_AE63C9: Me.Show from_stack_1, from_stack_2
  loc_AE63CE: FLdRfVar var_8C
  loc_AE63D1: FLdPr var_88
  loc_AE63D4: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE63D9: FLdZeroAd var_8C
  loc_AE63DC: CVarStr var_A0
  loc_AE63DF: PopAdLdVar
  loc_AE63E0: FLdPr Me
  loc_AE63E3: VCallAd Control_ID_ActiConcMsk
  loc_AE63E6: FStAdFunc var_90
  loc_AE63E9: FLdPr var_90
  loc_AE63EC: LateIdSt
  loc_AE63F1: FFree1Ad var_90
  loc_AE63F4: FFree1Var var_A0 = ""
  loc_AE63F7: LitStr vbNullString
  loc_AE63FA: FLdPr var_88
  loc_AE63FD: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AE6402: FLdRfVar var_8C
  loc_AE6405: FLdPr var_88
  loc_AE6408: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AE640D: ILdRf var_8C
  loc_AE6410: FLdPr Me
  loc_AE6413: VCallAd Control_ID_DetaActiLbl
  loc_AE6416: FStAdFunc var_90
  loc_AE6419: FLdPr var_90
  loc_AE641C: Me.Caption = from_stack_1
  loc_AE6421: FFree1Str var_8C
  loc_AE6424: FFree1Ad var_90
  loc_AE6427: FLdRfVar var_8C
  loc_AE642A: FLdPr var_88
  loc_AE642D: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE6432: ILdRf var_8C
  loc_AE6435: LitStr vbNullString
  loc_AE6438: NeStr
  loc_AE643A: FFree1Str var_8C
  loc_AE643D: BranchF loc_AE647E
  loc_AE6440: LitVarStr var_F0, "Reporte de Deudores"
  loc_AE6445: FLdPr Me
  loc_AE6448: VCallAd Control_ID_ActiConcMsk
  loc_AE644B: FStAdFunc var_90
  loc_AE644E: FLdPr var_90
  loc_AE6451: LateIdLdVar var_A0 DispID_22 0
  loc_AE6458: CStrVarTmp
  loc_AE6459: CVarStr var_B0
  loc_AE645C: ConcatVar var_C0
  loc_AE6460: CStrVarVal var_8C
  loc_AE6464: FLdPr Me
  loc_AE6467: Me.Caption = from_stack_1
  loc_AE646C: FFree1Str var_8C
  loc_AE646F: FFree1Ad var_90
  loc_AE6472: FFreeVar var_A0 = "": var_B0 = ""
  loc_AE647B: Branch loc_AE6492
  loc_AE647E: LitVarStr var_F0, "Reporte de Deudores"
  loc_AE6483: CStrVarVal var_8C
  loc_AE6487: FLdPr Me
  loc_AE648A: Me.Caption = from_stack_1
  loc_AE648F: FFree1Str var_8C
  loc_AE6492: LitNothing
  loc_AE6494: FStAd var_88 
  loc_AE6498: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BFDC8
  'Data Table: 4EEFEC
  loc_9BFDB4: FLdPr Me
  loc_9BFDB7: VCallAd Control_ID_DesdeMsk
  loc_9BFDBA: CVarAd
  loc_9BFDBE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFDC3: FFree1Var var_94 = ""
  loc_9BFDC6: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_8 'A61EA0
  'Data Table: 4EEFEC
  loc_A61E44: FLdPr Me
  loc_A61E47: VCallAd Control_ID_DesdeMsk
  loc_A61E4A: FStAdFunc var_88
  loc_A61E4D: FLdPr var_88
  loc_A61E50: LateIdLdVar var_98 DispID_15 0
  loc_A61E57: CStrVarTmp
  loc_A61E58: FStStrNoPop var_9C
  loc_A61E5B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A61E60: FStStrNoPop var_A0
  loc_A61E63: FLdPr Me
  loc_A61E66: MemStStrCopy
  loc_A61E6A: FFreeStr var_9C = ""
  loc_A61E71: FFree1Ad var_88
  loc_A61E74: FFree1Var var_98 = ""
  loc_A61E77: FLdPr Me
  loc_A61E7A: VCallAd Control_ID_DesdeMsk
  loc_A61E7D: FStAdFuncNoPop
  loc_A61E80: CastAd
  loc_A61E83: FStAdFunc var_A4
  loc_A61E86: FLdRfVar var_A4
  loc_A61E89: FLdPr Me
  loc_A61E8C: MemLdStr global_112
  loc_A61E8F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61E94: IStI2 KeyAscii
  loc_A61E97: FFreeAd var_88 = ""
  loc_A61E9E: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C0248
  'Data Table: 4EEFEC
  loc_9C0234: FLdPr Me
  loc_9C0237: VCallAd Control_ID_CodiConcMsk
  loc_9C023A: CVarAd
  loc_9C023E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0243: FFree1Var var_94 = ""
  loc_9C0246: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'B028B4
  'Data Table: 4EEFEC
  loc_B026D0: FLdRfVar var_8A
  loc_B026D3: FLdPr Me
  loc_B026D6: VCallAd Control_ID_ConceptoOpt
  loc_B026D9: FStAdFunc var_88
  loc_B026DC: FLdPr var_88
  loc_B026DF:  = Me.Value
  loc_B026E4: FLdI2 var_8A
  loc_B026E7: LitI2_Byte &HFF
  loc_B026E9: EqI2
  loc_B026EA: FFree1Ad var_88
  loc_B026ED: BranchF loc_B028B0
  loc_B026F0: FLdPr Me
  loc_B026F3: VCallAd Control_ID_DesdeMsk
  loc_B026F6: FStAdFunc var_88
  loc_B026F9: FLdPr var_88
  loc_B026FC: LateIdLdVar var_9C DispID_15 0
  loc_B02703: CStrVarTmp
  loc_B02704: CVarStr var_AC
  loc_B02707: FLdRfVar var_BC
  loc_B0270A: ImpAdCallFPR4  = Year()
  loc_B0270F: FLdPr Me
  loc_B02712: VCallAd Control_ID_CodiConcMsk
  loc_B02715: FStAdFunc var_C0
  loc_B02718: FLdPr var_C0
  loc_B0271B: LateIdLdVar var_D0 DispID_22 0
  loc_B02722: PopAd
  loc_B02724: LitI2_Byte 0
  loc_B02726: LitI2_Byte 0
  loc_B02728: LitI2_Byte 0
  loc_B0272A: LitI2_Byte 0
  loc_B0272C: LitI2_Byte 0
  loc_B0272E: LitI2_Byte 0
  loc_B02730: LitI2_Byte 0
  loc_B02732: LitI2_Byte 0
  loc_B02734: LitI2_Byte 0
  loc_B02736: FLdRfVar var_D0
  loc_B02739: CStrVarTmp
  loc_B0273A: FStStrNoPop var_D4
  loc_B0273D: FLdRfVar var_BC
  loc_B02740: CI2Var
  loc_B02741: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_B02746: FStStrNoPop var_D8
  loc_B02749: FLdPr Me
  loc_B0274C: MemStStrCopy
  loc_B02750: FFreeStr var_D4 = ""
  loc_B02757: FFreeAd var_88 = ""
  loc_B0275E: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B02769: FLdPr Me
  loc_B0276C: VCallAd Control_ID_CodiConcMsk
  loc_B0276F: FStAdFuncNoPop
  loc_B02772: CastAd
  loc_B02775: FStAdFunc var_C0
  loc_B02778: FLdRfVar var_C0
  loc_B0277B: FLdPr Me
  loc_B0277E: MemLdStr global_112
  loc_B02781: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B02786: IStI2 KeyAscii
  loc_B02789: FFreeAd var_88 = ""
  loc_B02790: ILdI2 KeyAscii
  loc_B02793: NotI4
  loc_B02794: BranchF loc_B02805
  loc_B02797: FLdPr Me
  loc_B0279A: VCallAd Control_ID_DesdeMsk
  loc_B0279D: FStAdFunc var_88
  loc_B027A0: FLdPr var_88
  loc_B027A3: LateIdLdVar var_9C DispID_15 0
  loc_B027AA: CStrVarTmp
  loc_B027AB: CVarStr var_AC
  loc_B027AE: FLdRfVar var_BC
  loc_B027B1: ImpAdCallFPR4  = Year()
  loc_B027B6: FLdPr Me
  loc_B027B9: VCallAd Control_ID_CodiConcMsk
  loc_B027BC: FStAdFunc var_C0
  loc_B027BF: FLdPr var_C0
  loc_B027C2: LateIdLdVar var_D0 DispID_22 0
  loc_B027C9: CStrVarTmp
  loc_B027CA: FStStrNoPop var_D4
  loc_B027CD: FLdRfVar var_BC
  loc_B027D0: CI2Var
  loc_B027D1: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_B027D6: FStStrNoPop var_D8
  loc_B027D9: FLdPr Me
  loc_B027DC: VCallAd Control_ID_DetaConcLbl
  loc_B027DF: FStAdFunc var_DC
  loc_B027E2: FLdPr var_DC
  loc_B027E5: Me.Caption = from_stack_1
  loc_B027EA: FFreeStr var_D4 = ""
  loc_B027F1: FFreeAd var_88 = "": var_C0 = ""
  loc_B027FA: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B02805: ILdI2 KeyAscii
  loc_B02808: NotI4
  loc_B02809: BranchF loc_B028B0
  loc_B0280C: FLdPr Me
  loc_B0280F: VCallAd Control_ID_DesdeMsk
  loc_B02812: FStAdFunc var_88
  loc_B02815: FLdPr var_88
  loc_B02818: LateIdLdVar var_9C DispID_15 0
  loc_B0281F: CStrVarTmp
  loc_B02820: CVarStr var_AC
  loc_B02823: FLdRfVar var_BC
  loc_B02826: ImpAdCallFPR4  = Year()
  loc_B0282B: FLdPr Me
  loc_B0282E: VCallAd Control_ID_CodiConcMsk
  loc_B02831: FStAdFunc var_C0
  loc_B02834: FLdPr var_C0
  loc_B02837: LateIdLdVar var_D0 DispID_22 0
  loc_B0283E: PopAd
  loc_B02840: FLdPr Me
  loc_B02843: MemLdRfVar from_stack_1.global_116
  loc_B02846: NewIfNullRf
  loc_B0284A: FLdRfVar var_D0
  loc_B0284D: CStrVarTmp
  loc_B0284E: FStStrNoPop var_D4
  loc_B02851: FLdRfVar var_BC
  loc_B02854: CI2Var
  loc_B02855: ImpAdCallI2  = Proc_270_10_AFACE0(, )
  loc_B0285A: FFree1Str var_D4
  loc_B0285D: FFreeAd var_88 = ""
  loc_B02864: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B0286F: BranchF loc_B028B0
  loc_B02872: FLdRfVar var_D4
  loc_B02875: FLdPr Me
  loc_B02878: MemLdRfVar from_stack_1.global_116
  loc_B0287B: NewIfNullPr tblConcepto
  loc_B0287E: from_stack_1v = tblConcepto.ConcViejGet()
  loc_B02883: ILdRf var_D4
  loc_B02886: FLdPr Me
  loc_B02889: MemStStrCopy
  loc_B0288D: FFree1Str var_D4
  loc_B02890: FLdRfVar var_D4
  loc_B02893: FLdPr Me
  loc_B02896: MemLdRfVar from_stack_1.global_116
  loc_B02899: NewIfNullPr tblConcepto
  loc_B0289C: from_stack_1v = tblConcepto.SacuConcGet()
  loc_B028A1: ILdRf var_D4
  loc_B028A4: CUI1Str
  loc_B028A6: FLdPr Me
  loc_B028A9: MemStUI1
  loc_B028AD: FFree1Str var_D4
  loc_B028B0: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AC5398
  'Data Table: 4EEFEC
  loc_AC529C: ILdI2 KeyAscii
  loc_AC529F: LitI2_Byte &H20
  loc_AC52A1: EqI2
  loc_AC52A2: BranchF loc_AC5396
  loc_AC52A5: LitI2_Byte 0
  loc_AC52A7: IStI2 KeyAscii
  loc_AC52AA: FLdPr Me
  loc_AC52AD: VCallAd Control_ID_DesdeMsk
  loc_AC52B0: FStAdFunc var_88
  loc_AC52B3: FLdPr var_88
  loc_AC52B6: LateIdLdVar var_98 DispID_15 0
  loc_AC52BD: CStrVarTmp
  loc_AC52BE: CVarStr var_A8
  loc_AC52C1: FLdRfVar var_B8
  loc_AC52C4: ImpAdCallFPR4  = Year()
  loc_AC52C9: FLdRfVar var_B8
  loc_AC52CC: CI2Var
  loc_AC52CD: ImpAdLdRf MemVar_D94354
  loc_AC52D0: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC52D3: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC52D8: FFree1Ad var_88
  loc_AC52DB: FFreeVar var_98 = "": var_A8 = ""
  loc_AC52E4: LitVar_Missing var_D8
  loc_AC52E7: PopAdLdVar
  loc_AC52E8: LitVarI4
  loc_AC52F0: PopAdLdVar
  loc_AC52F1: ImpAdLdRf MemVar_D94354
  loc_AC52F4: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC52F7: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC52FC: FLdRfVar var_DC
  loc_AC52FF: FLdRfVar var_88
  loc_AC5302: ImpAdLdRf MemVar_D94354
  loc_AC5305: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC5308: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC530D: FLdPr var_88
  loc_AC5310: from_stack_1 = clsconcepto.RecordCount
  loc_AC5315: ILdRf var_DC
  loc_AC5318: LitI4 0
  loc_AC531D: GtI4
  loc_AC531E: FFree1Ad var_88
  loc_AC5321: BranchF loc_AC5396
  loc_AC5324: FLdRfVar var_E0
  loc_AC5327: FLdRfVar var_88
  loc_AC532A: ImpAdLdRf MemVar_D94354
  loc_AC532D: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC5330: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC5335: FLdPr var_88
  loc_AC5338: from_stack_1 = clsconcepto.CodiConc
  loc_AC533D: FLdZeroAd var_E0
  loc_AC5340: CVarStr var_98
  loc_AC5343: PopAdLdVar
  loc_AC5344: FLdPr Me
  loc_AC5347: VCallAd Control_ID_CodiConcMsk
  loc_AC534A: FStAdFunc var_E4
  loc_AC534D: FLdPr var_E4
  loc_AC5350: LateIdSt
  loc_AC5355: FFreeAd var_88 = ""
  loc_AC535C: FFree1Var var_98 = ""
  loc_AC535F: FLdRfVar var_E0
  loc_AC5362: FLdRfVar var_88
  loc_AC5365: ImpAdLdRf MemVar_D94354
  loc_AC5368: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC536B: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC5370: FLdPr var_88
  loc_AC5373: from_stack_1 = clsconcepto.DetaConc
  loc_AC5378: ILdRf var_E0
  loc_AC537B: FLdPr Me
  loc_AC537E: VCallAd Control_ID_DetaConcLbl
  loc_AC5381: FStAdFunc var_E4
  loc_AC5384: FLdPr var_E4
  loc_AC5387: Me.Caption = from_stack_1
  loc_AC538C: FFree1Str var_E0
  loc_AC538F: FFreeAd var_88 = ""
  loc_AC5396: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CF15C
  'Data Table: 4EEFEC
  loc_9CF144: ILdRf Me
  loc_9CF147: CastAd
  loc_9CF14A: FStAdFunc var_88
  loc_9CF14D: FLdRfVar var_88
  loc_9CF150: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CF155: FFree1Ad var_88
  loc_9CF158: ExitProcHresult
End Sub

Private Sub ConceptoOpt_Click() 'A7BA3C
  'Data Table: 4EEFEC
  loc_A7B9B8: FLdRfVar var_8A
  loc_A7B9BB: FLdPr Me
  loc_A7B9BE: VCallAd Control_ID_ConceptoOpt
  loc_A7B9C1: FStAdFunc var_88
  loc_A7B9C4: FLdPr var_88
  loc_A7B9C7:  = Me.Value
  loc_A7B9CC: FLdI2 var_8A
  loc_A7B9CF: LitI2_Byte &HFF
  loc_A7B9D1: EqI2
  loc_A7B9D2: FFree1Ad var_88
  loc_A7B9D5: BranchF loc_A7BA3A
  loc_A7B9D8: LitVar_TRUE var_9C
  loc_A7B9DB: PopAdLdVar
  loc_A7B9DC: FLdPr Me
  loc_A7B9DF: VCallAd Control_ID_CodiConcMsk
  loc_A7B9E2: FStAdFunc var_88
  loc_A7B9E5: FLdPr var_88
  loc_A7B9E8: LateIdSt
  loc_A7B9ED: FFree1Ad var_88
  loc_A7B9F0: LitVar_FALSE
  loc_A7B9F4: PopAdLdVar
  loc_A7B9F5: FLdPr Me
  loc_A7B9F8: VCallAd Control_ID_ActiConcMsk
  loc_A7B9FB: FStAdFunc var_88
  loc_A7B9FE: FLdPr var_88
  loc_A7BA01: LateIdSt
  loc_A7BA06: FFree1Ad var_88
  loc_A7BA09: LitVarStr var_9C, vbNullString
  loc_A7BA0E: PopAdLdVar
  loc_A7BA0F: FLdPr Me
  loc_A7BA12: VCallAd Control_ID_ActiConcMsk
  loc_A7BA15: FStAdFunc var_88
  loc_A7BA18: FLdPr var_88
  loc_A7BA1B: LateIdSt
  loc_A7BA20: FFree1Ad var_88
  loc_A7BA23: LitStr vbNullString
  loc_A7BA26: FLdPr Me
  loc_A7BA29: VCallAd Control_ID_DetaActiLbl
  loc_A7BA2C: FStAdFunc var_88
  loc_A7BA2F: FLdPr var_88
  loc_A7BA32: Me.Caption = from_stack_1
  loc_A7BA37: FFree1Ad var_88
  loc_A7BA3A: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CEDCC
  'Data Table: 4EEFEC
  loc_9CEDB4: LitI2_Byte 0
  loc_9CEDB6: ILdRf Me
  loc_9CEDB9: CastAd
  loc_9CEDBC: FStAdFunc var_88
  loc_9CEDBF: FLdRfVar var_88
  loc_9CEDC2: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CEDC7: FFree1Ad var_88
  loc_9CEDCA: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4F05CC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F05DB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'ADC7B0
  'Data Table: 4EEFEC
  loc_ADC680: LitI4 0
  loc_ADC685: LitI4 7
  loc_ADC68A: FLdRfVar var_88
  loc_ADC68D: Redim
  loc_ADC697: FLdPr Me
  loc_ADC69A: VCallAd Control_ID_DesdeMsk
  loc_ADC69D: CVarAd
  loc_ADC6A1: ParmAry1St
  loc_ADC6A7: FLdPr Me
  loc_ADC6AA: VCallAd Control_ID_DesdeFechaCmd
  loc_ADC6AD: CVarAd
  loc_ADC6B1: ParmAry1St
  loc_ADC6B7: FLdPr Me
  loc_ADC6BA: VCallAd Control_ID_HastaMsk
  loc_ADC6BD: CVarAd
  loc_ADC6C1: ParmAry1St
  loc_ADC6C7: FLdPr Me
  loc_ADC6CA: VCallAd Control_ID_HastaFechaCmd
  loc_ADC6CD: CVarAd
  loc_ADC6D1: ParmAry1St
  loc_ADC6D7: FLdPr Me
  loc_ADC6DA: VCallAd Control_ID_CuentaOpt
  loc_ADC6DD: CVarAd
  loc_ADC6E1: ParmAry1St
  loc_ADC6E7: FLdPr Me
  loc_ADC6EA: VCallAd Control_ID_NombreOpt
  loc_ADC6ED: CVarAd
  loc_ADC6F1: ParmAry1St
  loc_ADC6F7: FLdPr Me
  loc_ADC6FA: VCallAd Control_ID_CuentaContableOpt
  loc_ADC6FD: CVarAd
  loc_ADC701: ParmAry1St
  loc_ADC707: FLdPr Me
  loc_ADC70A: VCallAd Control_ID_ConceptoOpt
  loc_ADC70D: CVarAd
  loc_ADC711: ParmAry1St
  loc_ADC717: FLdRfVar var_88
  loc_ADC71A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC71F: FLdRfVar var_88
  loc_ADC722: Erase
  loc_ADC723: FLdRfVar var_10E
  loc_ADC726: FLdPr Me
  loc_ADC729: VCallAd Control_ID_CuentaContableOpt
  loc_ADC72C: FStAdFunc var_10C
  loc_ADC72F: FLdPr var_10C
  loc_ADC732:  = Me.Value
  loc_ADC737: FLdI2 var_10E
  loc_ADC73A: LitI2_Byte &HFF
  loc_ADC73C: EqI2
  loc_ADC73D: FFree1Ad var_10C
  loc_ADC740: BranchF loc_ADC779
  loc_ADC743: LitI4 0
  loc_ADC748: LitI4 0
  loc_ADC74D: FLdRfVar var_88
  loc_ADC750: Redim
  loc_ADC75A: FLdPr Me
  loc_ADC75D: VCallAd Control_ID_ActiConcMsk
  loc_ADC760: CVarAd
  loc_ADC764: ParmAry1St
  loc_ADC76A: FLdRfVar var_88
  loc_ADC76D: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC772: FLdRfVar var_88
  loc_ADC775: Erase
  loc_ADC776: Branch loc_ADC7AC
  loc_ADC779: LitI4 0
  loc_ADC77E: LitI4 0
  loc_ADC783: FLdRfVar var_88
  loc_ADC786: Redim
  loc_ADC790: FLdPr Me
  loc_ADC793: VCallAd Control_ID_CodiConcMsk
  loc_ADC796: CVarAd
  loc_ADC79A: ParmAry1St
  loc_ADC7A0: FLdRfVar var_88
  loc_ADC7A3: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC7A8: FLdRfVar var_88
  loc_ADC7AB: Erase
  loc_ADC7AC: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C13974
  'Data Table: 4EEFEC
  loc_C12FE8: LitI2_Byte 0
  loc_C12FEA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C12FEF: FStFPR8 var_98
  loc_C12FF2: FLdPr Me
  loc_C12FF5: MemLdI2 bGenerado
  loc_C12FF8: BranchF loc_C12FFC
  loc_C12FFB: ExitProcHresult
  loc_C12FFC: LitVarStr var_A8, "Generando reporte..."
  loc_C13001: PopAdLdVar
  loc_C13002: FLdPr Me
  loc_C13005: VCallAd Control_ID_statusBar
  loc_C13008: FStAdFunc var_BC
  loc_C1300B: FLdPr var_BC
  loc_C1300E: LateIdSt
  loc_C13013: FFree1Ad var_BC
  loc_C13016: LitI4 &HB
  loc_C1301B: CI2I4
  loc_C1301C: FLdPr Me
  loc_C1301F: Me.MousePointer = from_stack_1
  loc_C13024: LitStr "192.168.40.54"
  loc_C13027: LitStr "192.168.40.54"
  loc_C1302A: EqStr
  loc_C1302C: BranchF loc_C1307D
  loc_C1302F: ImpAdLdI4 MemVar_D9302C
  loc_C13032: LitStr "root"
  loc_C13035: NeStr
  loc_C13037: ImpAdLdI4 MemVar_D9302C
  loc_C1303A: LitStr "sonia"
  loc_C1303D: NeStr
  loc_C1303F: AndI4
  loc_C13040: ImpAdLdI4 MemVar_D9302C
  loc_C13043: LitStr "prueba"
  loc_C13046: NeStr
  loc_C13048: AndI4
  loc_C13049: BranchF loc_C1307D
  loc_C1304C: FLdRfVar var_98
  loc_C1304F: ImpAdCallI2 Proc_18_4_AAC868()
  loc_C13054: FStStrNoPop var_C0
  loc_C13057: FLdPr Me
  loc_C1305A: MemStStrCopy
  loc_C1305E: FFree1Str var_C0
  loc_C13061: FLdPr Me
  loc_C13064: MemLdStr global_112
  loc_C13067: LitStr vbNullString
  loc_C1306A: NeStr
  loc_C1306C: BranchF loc_C1307D
  loc_C1306F: FLdPr Me
  loc_C13072: MemLdStr global_112
  loc_C13075: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1307A: Branch loc_C13949
  loc_C1307D: LitI2_Byte 0
  loc_C1307F: PopTmpLdAd2 var_C2
  loc_C13082: Call DesdeMsk_UnknownEvent_8()
  loc_C13087: FLdPr Me
  loc_C1308A: MemLdStr global_112
  loc_C1308D: LitStr vbNullString
  loc_C13090: NeStr
  loc_C13092: BranchF loc_C13098
  loc_C13095: Branch loc_C13949
  loc_C13098: LitI2_Byte 0
  loc_C1309A: PopTmpLdAd2 var_C2
  loc_C1309D: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C130A2: FLdPr Me
  loc_C130A5: MemLdStr global_112
  loc_C130A8: LitStr vbNullString
  loc_C130AB: NeStr
  loc_C130AD: BranchF loc_C130B3
  loc_C130B0: Branch loc_C13949
  loc_C130B3: FLdRfVar var_C2
  loc_C130B6: FLdPr Me
  loc_C130B9: VCallAd Control_ID_CuentaContableOpt
  loc_C130BC: FStAdFunc var_BC
  loc_C130BF: FLdPr var_BC
  loc_C130C2:  = Me.Value
  loc_C130C7: FLdI2 var_C2
  loc_C130CA: LitI2_Byte &HFF
  loc_C130CC: EqI2
  loc_C130CD: FFree1Ad var_BC
  loc_C130D0: BranchF loc_C130EE
  loc_C130D3: LitI2_Byte 0
  loc_C130D5: PopTmpLdAd2 var_C2
  loc_C130D8: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_C130DD: FLdPr Me
  loc_C130E0: MemLdStr global_112
  loc_C130E3: LitStr vbNullString
  loc_C130E6: NeStr
  loc_C130E8: BranchF loc_C130EE
  loc_C130EB: Branch loc_C13949
  loc_C130EE: FLdRfVar var_C2
  loc_C130F1: FLdPr Me
  loc_C130F4: VCallAd Control_ID_ConceptoOpt
  loc_C130F7: FStAdFunc var_BC
  loc_C130FA: FLdPr var_BC
  loc_C130FD:  = Me.Value
  loc_C13102: FLdI2 var_C2
  loc_C13105: LitI2_Byte &HFF
  loc_C13107: EqI2
  loc_C13108: FFree1Ad var_BC
  loc_C1310B: BranchF loc_C13129
  loc_C1310E: LitI2_Byte 0
  loc_C13110: PopTmpLdAd2 var_C2
  loc_C13113: Call CodiConcMsk_UnknownEvent_8()
  loc_C13118: FLdPr Me
  loc_C1311B: MemLdStr global_112
  loc_C1311E: LitStr vbNullString
  loc_C13121: NeStr
  loc_C13123: BranchF loc_C13129
  loc_C13126: Branch loc_C13949
  loc_C13129: FLdPr Me
  loc_C1312C: VCallAd Control_ID_DesdeMsk
  loc_C1312F: FStAdFunc var_BC
  loc_C13132: FLdPr var_BC
  loc_C13135: LateIdLdVar var_D4 DispID_15 0
  loc_C1313C: PopAd
  loc_C1313E: LitI4 1
  loc_C13143: LitI4 1
  loc_C13148: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C1314D: FStVarCopyObj var_F4
  loc_C13150: FLdRfVar var_F4
  loc_C13153: FLdRfVar var_D4
  loc_C13156: CStrVarTmp
  loc_C13157: CVarStr var_E4
  loc_C1315A: ImpAdCallI2 Format$(, )
  loc_C1315F: FStStr var_88
  loc_C13162: FFree1Ad var_BC
  loc_C13165: FFreeVar var_D4 = "": var_E4 = ""
  loc_C1316E: FLdPr Me
  loc_C13171: VCallAd Control_ID_HastaMsk
  loc_C13174: FStAdFunc var_BC
  loc_C13177: FLdPr var_BC
  loc_C1317A: LateIdLdVar var_D4 DispID_15 0
  loc_C13181: PopAd
  loc_C13183: LitI4 1
  loc_C13188: LitI4 1
  loc_C1318D: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C13192: FStVarCopyObj var_F4
  loc_C13195: FLdRfVar var_F4
  loc_C13198: FLdRfVar var_D4
  loc_C1319B: CStrVarTmp
  loc_C1319C: CVarStr var_E4
  loc_C1319F: ImpAdCallI2 Format$(, )
  loc_C131A4: FStStr var_8C
  loc_C131A7: FFree1Ad var_BC
  loc_C131AA: FFreeVar var_D4 = "": var_E4 = ""
  loc_C131B3: FLdPr Me
  loc_C131B6: MemLdRfVar from_stack_1.global_92
  loc_C131B9: NewIfNullAd
  loc_C131BC: FStAd var_F8 
  loc_C131C0: FLdRfVar var_C2
  loc_C131C3: FLdPr Me
  loc_C131C6: VCallAd Control_ID_CuentaContableOpt
  loc_C131C9: FStAdFunc var_BC
  loc_C131CC: FLdPr var_BC
  loc_C131CF:  = Me.Value
  loc_C131D4: FLdI2 var_C2
  loc_C131D7: LitI2_Byte &HFF
  loc_C131D9: EqI2
  loc_C131DA: FFree1Ad var_BC
  loc_C131DD: BranchF loc_C131E0
  loc_C131E0: FLdRfVar var_C2
  loc_C131E3: FLdPr Me
  loc_C131E6: VCallAd Control_ID_ConceptoOpt
  loc_C131E9: FStAdFunc var_BC
  loc_C131EC: FLdPr var_BC
  loc_C131EF:  = Me.Value
  loc_C131F4: FLdI2 var_C2
  loc_C131F7: LitI2_Byte &HFF
  loc_C131F9: EqI2
  loc_C131FA: FFree1Ad var_BC
  loc_C131FD: BranchF loc_C13292
  loc_C13200: LitStr "CALL nReporteDeudores`('"
  loc_C13203: FLdPr Me
  loc_C13206: VCallAd Control_ID_CodiConcMsk
  loc_C13209: FStAdFunc var_BC
  loc_C1320C: FLdPr var_BC
  loc_C1320F: LateIdLdVar var_D4 DispID_22 0
  loc_C13216: CStrVarTmp
  loc_C13217: FStStrNoPop var_C0
  loc_C1321A: ConcatStr
  loc_C1321B: FStStrNoPop var_FC
  loc_C1321E: LitStr "', '"
  loc_C13221: ConcatStr
  loc_C13222: FStStrNoPop var_100
  loc_C13225: ILdRf var_88
  loc_C13228: ConcatStr
  loc_C13229: FStStrNoPop var_104
  loc_C1322C: LitStr "','"
  loc_C1322F: ConcatStr
  loc_C13230: FStStrNoPop var_108
  loc_C13233: ILdRf var_8C
  loc_C13236: ConcatStr
  loc_C13237: FStStrNoPop var_10C
  loc_C1323A: LitStr "','"
  loc_C1323D: ConcatStr
  loc_C1323E: FStStrNoPop var_110
  loc_C13241: FLdPr Me
  loc_C13244: MemLdUI1 global_120
  loc_C13248: CStrI2
  loc_C1324A: FStStrNoPop var_114
  loc_C1324D: ConcatStr
  loc_C1324E: FStStrNoPop var_118
  loc_C13251: LitStr "','"
  loc_C13254: ConcatStr
  loc_C13255: FStStrNoPop var_11C
  loc_C13258: FLdPr Me
  loc_C1325B: MemLdStr global_124
  loc_C1325E: ConcatStr
  loc_C1325F: FStStrNoPop var_120
  loc_C13262: LitStr "')"
  loc_C13265: ConcatStr
  loc_C13266: FStStrNoPop var_124
  loc_C13269: FLdPr var_F8
  loc_C1326C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C13271: FFreeStr var_C0 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C1328C: FFree1Ad var_BC
  loc_C1328F: FFree1Var var_D4 = ""
  loc_C13292: FLdRfVar var_128
  loc_C13295: FLdPr var_F8
  loc_C13298: from_stack_1 = clsctacte.RecordCount
  loc_C1329D: ILdRf var_128
  loc_C132A0: LitI4 0
  loc_C132A5: EqI4
  loc_C132A6: BranchF loc_C132B4
  loc_C132A9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C132AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C132B1: Branch loc_C13949
  loc_C132B4: LitI4 0
  loc_C132B9: LitI4 1
  loc_C132BE: FLdPr Me
  loc_C132C1: MemLdRfVar from_stack_1.global_108
  loc_C132C4: Redim
  loc_C132CE: LitI4 0
  loc_C132D3: FLdRfVar var_128
  loc_C132D6: FLdPr var_F8
  loc_C132D9: from_stack_1 = clsctacte.RecordCount
  loc_C132DE: ILdRf var_128
  loc_C132E1: FLdPr Me
  loc_C132E4: MemLdRfVar from_stack_1.global_100
  loc_C132E7: Redim
  loc_C132F1: FLdPr var_F8
  loc_C132F4: Call clsctacte.MoveFirst()
  loc_C132F9: FLdRfVar var_128
  loc_C132FC: FLdPr var_F8
  loc_C132FF: from_stack_1 = clsctacte.RecordCount
  loc_C13304: ILdRf var_128
  loc_C13307: CR8I4
  loc_C13308: CVarR4
  loc_C1330C: PopAdLdVar
  loc_C1330D: FLdPrThis
  loc_C1330E: VCallAd Control_ID_Pbar
  loc_C13311: FStAdFunc var_BC
  loc_C13314: FLdPr var_BC
  loc_C13317: LateIdSt
  loc_C1331C: FFree1Ad var_BC
  loc_C1331F: LitVar_TRUE var_A8
  loc_C13322: PopAdLdVar
  loc_C13323: FLdPrThis
  loc_C13324: VCallAd Control_ID_Pbar
  loc_C13327: FStAdFunc var_BC
  loc_C1332A: FLdPr var_BC
  loc_C1332D: LateIdSt
  loc_C13332: FFree1Ad var_BC
  loc_C13335: LitI4 1
  loc_C1333A: FLdPr Me
  loc_C1333D: MemLdRfVar from_stack_1.global_104
  loc_C13340: FLdPr Me
  loc_C13343: MemLdStr global_100
  loc_C13346: LitI2_Byte 1
  loc_C13348: FnUBound
  loc_C1334A: ForI4 var_130
  loc_C13350: FLdPr Me
  loc_C13353: MemLdStr global_104
  loc_C13356: CR8I4
  loc_C13357: CVarR4
  loc_C1335B: PopAdLdVar
  loc_C1335C: FLdPrThis
  loc_C1335D: VCallAd Control_ID_Pbar
  loc_C13360: FStAdFunc var_BC
  loc_C13363: FLdPr var_BC
  loc_C13366: LateIdSt
  loc_C1336B: FFree1Ad var_BC
  loc_C1336E: FLdRfVar var_C0
  loc_C13371: FLdPr var_F8
  loc_C13374: from_stack_1 = clsctacte.CodiConc
  loc_C13379: LitI2_Byte 0
  loc_C1337B: LitVar_Missing var_E4
  loc_C1337E: LitI2_Byte 0
  loc_C13380: FLdZeroAd var_C0
  loc_C13383: CVarStr var_D4
  loc_C13386: PopAdLdVar
  loc_C13387: FLdPr Me
  loc_C1338A: MemLdStr global_104
  loc_C1338D: FLdPr Me
  loc_C13390: MemLdStr global_100
  loc_C13393: AryLock
  loc_C13396: Ary1LdPr
  loc_C13397: MemLdRfVar from_stack_1.global_0
  loc_C1339A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1339F: AryUnlock
  loc_C133A2: FFreeVar var_D4 = ""
  loc_C133A9: FLdRfVar var_C0
  loc_C133AC: FLdPr var_F8
  loc_C133AF: from_stack_1 = clsctacte.CuenCtct
  loc_C133B4: LitI2_Byte 0
  loc_C133B6: LitVar_Missing var_E4
  loc_C133B9: LitI2_Byte 0
  loc_C133BB: FLdZeroAd var_C0
  loc_C133BE: CVarStr var_D4
  loc_C133C1: PopAdLdVar
  loc_C133C2: FLdPr Me
  loc_C133C5: MemLdStr global_104
  loc_C133C8: FLdPr Me
  loc_C133CB: MemLdStr global_100
  loc_C133CE: AryLock
  loc_C133D1: Ary1LdPr
  loc_C133D2: MemLdRfVar from_stack_1.global_4
  loc_C133D5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C133DA: AryUnlock
  loc_C133DD: FFreeVar var_D4 = ""
  loc_C133E4: FLdRfVar var_D4
  loc_C133E7: FLdPr var_F8
  loc_C133EA: from_stack_1 = clsctacte.CucuPers
  loc_C133EF: LitI2_Byte 0
  loc_C133F1: LitVar_Missing var_E4
  loc_C133F4: LitI2_Byte 0
  loc_C133F6: FLdVar var_D4
  loc_C133FA: FLdPr Me
  loc_C133FD: MemLdStr global_104
  loc_C13400: FLdPr Me
  loc_C13403: MemLdStr global_100
  loc_C13406: AryLock
  loc_C13409: Ary1LdPr
  loc_C1340A: MemLdRfVar from_stack_1.global_8
  loc_C1340D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C13412: AryUnlock
  loc_C13415: FFreeVar var_D4 = ""
  loc_C1341C: FLdRfVar var_D4
  loc_C1341F: FLdPr var_F8
  loc_C13422: from_stack_1 = clsctacte.DetaPers
  loc_C13427: LitI2_Byte 0
  loc_C13429: LitVar_Missing var_E4
  loc_C1342C: LitI2_Byte 0
  loc_C1342E: FLdVar var_D4
  loc_C13432: FLdPr Me
  loc_C13435: MemLdStr global_104
  loc_C13438: FLdPr Me
  loc_C1343B: MemLdStr global_100
  loc_C1343E: AryLock
  loc_C13441: Ary1LdPr
  loc_C13442: MemLdRfVar from_stack_1.global_12
  loc_C13445: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1344A: AryUnlock
  loc_C1344D: FFreeVar var_D4 = ""
  loc_C13454: FLdRfVar var_D4
  loc_C13457: FLdPr var_F8
  loc_C1345A: from_stack_1 = clsctacte.SainCtct
  loc_C1345F: LitI2_Byte 0
  loc_C13461: LitI4 1
  loc_C13466: FLdPr Me
  loc_C13469: MemLdStr global_108
  loc_C1346C: AryLock
  loc_C1346F: Ary1LdPr
  loc_C13470: MemLdRfVar from_stack_1.global_0
  loc_C13473: CVarRef
  loc_C13478: LitI2_Byte &HFF
  loc_C1347A: FLdVar var_D4
  loc_C1347E: FLdPr Me
  loc_C13481: MemLdStr global_104
  loc_C13484: FLdPr Me
  loc_C13487: MemLdStr global_100
  loc_C1348A: AryLock
  loc_C1348D: Ary1LdPr
  loc_C1348E: MemLdRfVar from_stack_1.global_16
  loc_C13491: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C13496: AryUnlock
  loc_C13499: AryUnlock
  loc_C1349C: FFree1Var var_D4 = ""
  loc_C1349F: FLdRfVar var_D4
  loc_C134A2: FLdPr var_F8
  loc_C134A5: from_stack_1 = clsctacte.AforCtct
  loc_C134AA: LitI2_Byte 0
  loc_C134AC: LitI4 1
  loc_C134B1: FLdPr Me
  loc_C134B4: MemLdStr global_108
  loc_C134B7: AryLock
  loc_C134BA: Ary1LdPr
  loc_C134BB: MemLdRfVar from_stack_1.global_4
  loc_C134BE: CVarRef
  loc_C134C3: LitI2_Byte &HFF
  loc_C134C5: FLdVar var_D4
  loc_C134C9: FLdPr Me
  loc_C134CC: MemLdStr global_104
  loc_C134CF: FLdPr Me
  loc_C134D2: MemLdStr global_100
  loc_C134D5: AryLock
  loc_C134D8: Ary1LdPr
  loc_C134D9: MemLdRfVar from_stack_1.global_20
  loc_C134DC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C134E1: AryUnlock
  loc_C134E4: AryUnlock
  loc_C134E7: FFree1Var var_D4 = ""
  loc_C134EA: FLdRfVar var_140
  loc_C134ED: FLdPr var_F8
  loc_C134F0: from_stack_1 = clsctacte.DebeCtct
  loc_C134F5: LitI2_Byte 0
  loc_C134F7: LitI4 1
  loc_C134FC: FLdPr Me
  loc_C134FF: MemLdStr global_108
  loc_C13502: AryLock
  loc_C13505: Ary1LdPr
  loc_C13506: MemLdRfVar from_stack_1.global_8
  loc_C13509: CVarRef
  loc_C1350E: LitI2_Byte &HFF
  loc_C13510: FLdFPR8 var_140
  loc_C13513: CVarR8
  loc_C13517: PopAdLdVar
  loc_C13518: FLdPr Me
  loc_C1351B: MemLdStr global_104
  loc_C1351E: FLdPr Me
  loc_C13521: MemLdStr global_100
  loc_C13524: AryLock
  loc_C13527: Ary1LdPr
  loc_C13528: MemLdRfVar from_stack_1.global_24
  loc_C1352B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C13530: AryUnlock
  loc_C13533: AryUnlock
  loc_C13536: FLdRfVar var_140
  loc_C13539: FLdPr var_F8
  loc_C1353C: from_stack_1 = clsctacte.CredCtct
  loc_C13541: LitI2_Byte 0
  loc_C13543: LitI4 1
  loc_C13548: FLdPr Me
  loc_C1354B: MemLdStr global_108
  loc_C1354E: AryLock
  loc_C13551: Ary1LdPr
  loc_C13552: MemLdRfVar from_stack_1.global_12
  loc_C13555: CVarRef
  loc_C1355A: LitI2_Byte &HFF
  loc_C1355C: FLdFPR8 var_140
  loc_C1355F: CVarR8
  loc_C13563: PopAdLdVar
  loc_C13564: FLdPr Me
  loc_C13567: MemLdStr global_104
  loc_C1356A: FLdPr Me
  loc_C1356D: MemLdStr global_100
  loc_C13570: AryLock
  loc_C13573: Ary1LdPr
  loc_C13574: MemLdRfVar from_stack_1.global_28
  loc_C13577: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1357C: AryUnlock
  loc_C1357F: AryUnlock
  loc_C13582: FLdRfVar var_D4
  loc_C13585: FLdPr var_F8
  loc_C13588: from_stack_1 = clsctacte.PresCtct
  loc_C1358D: LitI2_Byte 0
  loc_C1358F: LitI4 1
  loc_C13594: FLdPr Me
  loc_C13597: MemLdStr global_108
  loc_C1359A: AryLock
  loc_C1359D: Ary1LdPr
  loc_C1359E: MemLdRfVar from_stack_1.global_16
  loc_C135A1: CVarRef
  loc_C135A6: LitI2_Byte &HFF
  loc_C135A8: FLdVar var_D4
  loc_C135AC: FLdPr Me
  loc_C135AF: MemLdStr global_104
  loc_C135B2: FLdPr Me
  loc_C135B5: MemLdStr global_100
  loc_C135B8: AryLock
  loc_C135BB: Ary1LdPr
  loc_C135BC: MemLdRfVar from_stack_1.global_32
  loc_C135BF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C135C4: AryUnlock
  loc_C135C7: AryUnlock
  loc_C135CA: FFree1Var var_D4 = ""
  loc_C135CD: FLdRfVar var_D4
  loc_C135D0: FLdPr var_F8
  loc_C135D3: from_stack_1 = clsctacte.CondCtct
  loc_C135D8: LitI2_Byte 0
  loc_C135DA: LitI4 1
  loc_C135DF: FLdPr Me
  loc_C135E2: MemLdStr global_108
  loc_C135E5: AryLock
  loc_C135E8: Ary1LdPr
  loc_C135E9: MemLdRfVar from_stack_1.global_20
  loc_C135EC: CVarRef
  loc_C135F1: LitI2_Byte &HFF
  loc_C135F3: FLdVar var_D4
  loc_C135F7: FLdPr Me
  loc_C135FA: MemLdStr global_104
  loc_C135FD: FLdPr Me
  loc_C13600: MemLdStr global_100
  loc_C13603: AryLock
  loc_C13606: Ary1LdPr
  loc_C13607: MemLdRfVar from_stack_1.global_36
  loc_C1360A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1360F: AryUnlock
  loc_C13612: AryUnlock
  loc_C13615: FFree1Var var_D4 = ""
  loc_C13618: FLdRfVar var_D4
  loc_C1361B: FLdPr var_F8
  loc_C1361E: from_stack_1 = clsctacte.ExenCtct
  loc_C13623: LitI2_Byte 0
  loc_C13625: LitI4 1
  loc_C1362A: FLdPr Me
  loc_C1362D: MemLdStr global_108
  loc_C13630: AryLock
  loc_C13633: Ary1LdPr
  loc_C13634: MemLdRfVar from_stack_1.global_24
  loc_C13637: CVarRef
  loc_C1363C: LitI2_Byte &HFF
  loc_C1363E: FLdVar var_D4
  loc_C13642: FLdPr Me
  loc_C13645: MemLdStr global_104
  loc_C13648: FLdPr Me
  loc_C1364B: MemLdStr global_100
  loc_C1364E: AryLock
  loc_C13651: Ary1LdPr
  loc_C13652: MemLdRfVar from_stack_1.global_40
  loc_C13655: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1365A: AryUnlock
  loc_C1365D: AryUnlock
  loc_C13660: FFree1Var var_D4 = ""
  loc_C13663: FLdRfVar var_D4
  loc_C13666: FLdPr var_F8
  loc_C13669: from_stack_1 = clsctacte.DescCtct
  loc_C1366E: LitI2_Byte 0
  loc_C13670: LitI4 1
  loc_C13675: FLdPr Me
  loc_C13678: MemLdStr global_108
  loc_C1367B: AryLock
  loc_C1367E: Ary1LdPr
  loc_C1367F: MemLdRfVar from_stack_1.global_28
  loc_C13682: CVarRef
  loc_C13687: LitI2_Byte &HFF
  loc_C13689: FLdVar var_D4
  loc_C1368D: FLdPr Me
  loc_C13690: MemLdStr global_104
  loc_C13693: FLdPr Me
  loc_C13696: MemLdStr global_100
  loc_C13699: AryLock
  loc_C1369C: Ary1LdPr
  loc_C1369D: MemLdRfVar from_stack_1.global_44
  loc_C136A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C136A5: AryUnlock
  loc_C136A8: AryUnlock
  loc_C136AB: FFree1Var var_D4 = ""
  loc_C136AE: FLdRfVar var_D4
  loc_C136B1: FLdPr var_F8
  loc_C136B4: from_stack_1 = clsctacte.CobrCtct
  loc_C136B9: LitI2_Byte 0
  loc_C136BB: LitI4 1
  loc_C136C0: FLdPr Me
  loc_C136C3: MemLdStr global_108
  loc_C136C6: AryLock
  loc_C136C9: Ary1LdPr
  loc_C136CA: MemLdRfVar from_stack_1.global_32
  loc_C136CD: CVarRef
  loc_C136D2: LitI2_Byte &HFF
  loc_C136D4: FLdVar var_D4
  loc_C136D8: FLdPr Me
  loc_C136DB: MemLdStr global_104
  loc_C136DE: FLdPr Me
  loc_C136E1: MemLdStr global_100
  loc_C136E4: AryLock
  loc_C136E7: Ary1LdPr
  loc_C136E8: MemLdRfVar from_stack_1.global_48
  loc_C136EB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C136F0: AryUnlock
  loc_C136F3: AryUnlock
  loc_C136F6: FFree1Var var_D4 = ""
  loc_C136F9: FLdRfVar var_D4
  loc_C136FC: FLdPr var_F8
  loc_C136FF: from_stack_1 = clsctacte.SafiCtct
  loc_C13704: LitI2_Byte 0
  loc_C13706: LitI4 1
  loc_C1370B: FLdPr Me
  loc_C1370E: MemLdStr global_108
  loc_C13711: AryLock
  loc_C13714: Ary1LdPr
  loc_C13715: MemLdRfVar from_stack_1.global_36
  loc_C13718: CVarRef
  loc_C1371D: LitI2_Byte &HFF
  loc_C1371F: FLdVar var_D4
  loc_C13723: FLdPr Me
  loc_C13726: MemLdStr global_104
  loc_C13729: FLdPr Me
  loc_C1372C: MemLdStr global_100
  loc_C1372F: AryLock
  loc_C13732: Ary1LdPr
  loc_C13733: MemLdRfVar from_stack_1.bGenerado
  loc_C13736: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1373B: AryUnlock
  loc_C1373E: AryUnlock
  loc_C13741: FFree1Var var_D4 = ""
  loc_C13744: FLdRfVar var_148
  loc_C13747: LitVarStr var_A8, "NormCtct"
  loc_C1374C: PopAdLdVar
  loc_C1374D: FLdRfVar var_144
  loc_C13750: FLdRfVar var_BC
  loc_C13753: FLdPr var_F8
  loc_C13756: from_stack_1v = clsctacte.RsFrmGet()
  loc_C1375B: FLdPr var_BC
  loc_C1375E:  = Me.Fields
  loc_C13763: FLdPr var_144
  loc_C13766: from_stack_2 = Me.Item(from_stack_1)
  loc_C1376B: LitI2_Byte 0
  loc_C1376D: LitI4 1
  loc_C13772: FLdPr Me
  loc_C13775: MemLdStr global_108
  loc_C13778: AryLock
  loc_C1377B: Ary1LdPr
  loc_C1377C: MemLdRfVar from_stack_1.global_40
  loc_C1377F: CVarRef
  loc_C13784: LitI2_Byte &HFF
  loc_C13786: FLdZeroAd var_148
  loc_C13789: CVarAd
  loc_C1378D: PopAdLdVar
  loc_C1378E: FLdPr Me
  loc_C13791: MemLdStr global_104
  loc_C13794: FLdPr Me
  loc_C13797: MemLdStr global_100
  loc_C1379A: AryLock
  loc_C1379D: Ary1LdPr
  loc_C1379E: MemLdRfVar from_stack_1.global_56
  loc_C137A1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C137A6: AryUnlock
  loc_C137A9: AryUnlock
  loc_C137AC: FFreeAd var_BC = ""
  loc_C137B3: FFree1Var var_D4 = ""
  loc_C137B6: FLdRfVar var_148
  loc_C137B9: LitVarStr var_A8, "VencCtct"
  loc_C137BE: PopAdLdVar
  loc_C137BF: FLdRfVar var_144
  loc_C137C2: FLdRfVar var_BC
  loc_C137C5: FLdPr var_F8
  loc_C137C8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C137CD: FLdPr var_BC
  loc_C137D0:  = Me.Fields
  loc_C137D5: FLdPr var_144
  loc_C137D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C137DD: LitI2_Byte 0
  loc_C137DF: LitI4 1
  loc_C137E4: FLdPr Me
  loc_C137E7: MemLdStr global_108
  loc_C137EA: AryLock
  loc_C137ED: Ary1LdPr
  loc_C137EE: MemLdRfVar from_stack_1.global_44
  loc_C137F1: CVarRef
  loc_C137F6: LitI2_Byte &HFF
  loc_C137F8: FLdZeroAd var_148
  loc_C137FB: CVarAd
  loc_C137FF: PopAdLdVar
  loc_C13800: FLdPr Me
  loc_C13803: MemLdStr global_104
  loc_C13806: FLdPr Me
  loc_C13809: MemLdStr global_100
  loc_C1380C: AryLock
  loc_C1380F: Ary1LdPr
  loc_C13810: MemLdRfVar from_stack_1.global_60
  loc_C13813: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C13818: AryUnlock
  loc_C1381B: AryUnlock
  loc_C1381E: FFreeAd var_BC = ""
  loc_C13825: FFree1Var var_D4 = ""
  loc_C13828: FLdRfVar var_148
  loc_C1382B: LitVarStr var_A8, "ApreCtct"
  loc_C13830: PopAdLdVar
  loc_C13831: FLdRfVar var_144
  loc_C13834: FLdRfVar var_BC
  loc_C13837: FLdPr var_F8
  loc_C1383A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C1383F: FLdPr var_BC
  loc_C13842:  = Me.Fields
  loc_C13847: FLdPr var_144
  loc_C1384A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1384F: LitI2_Byte 0
  loc_C13851: LitI4 1
  loc_C13856: FLdPr Me
  loc_C13859: MemLdStr global_108
  loc_C1385C: AryLock
  loc_C1385F: Ary1LdPr
  loc_C13860: MemLdRfVar from_stack_1.global_48
  loc_C13863: CVarRef
  loc_C13868: LitI2_Byte &HFF
  loc_C1386A: FLdZeroAd var_148
  loc_C1386D: CVarAd
  loc_C13871: PopAdLdVar
  loc_C13872: FLdPr Me
  loc_C13875: MemLdStr global_104
  loc_C13878: FLdPr Me
  loc_C1387B: MemLdStr global_100
  loc_C1387E: AryLock
  loc_C13881: Ary1LdPr
  loc_C13882: MemLdRfVar from_stack_1.global_64
  loc_C13885: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1388A: AryUnlock
  loc_C1388D: AryUnlock
  loc_C13890: FFreeAd var_BC = ""
  loc_C13897: FFree1Var var_D4 = ""
  loc_C1389A: FLdRfVar var_148
  loc_C1389D: LitVarStr var_A8, "JudiCtct"
  loc_C138A2: PopAdLdVar
  loc_C138A3: FLdRfVar var_144
  loc_C138A6: FLdRfVar var_BC
  loc_C138A9: FLdPr var_F8
  loc_C138AC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C138B1: FLdPr var_BC
  loc_C138B4:  = Me.Fields
  loc_C138B9: FLdPr var_144
  loc_C138BC: from_stack_2 = Me.Item(from_stack_1)
  loc_C138C1: LitI2_Byte 0
  loc_C138C3: LitI4 1
  loc_C138C8: FLdPr Me
  loc_C138CB: MemLdStr global_108
  loc_C138CE: AryLock
  loc_C138D1: Ary1LdPr
  loc_C138D2: MemLdRfVar from_stack_1.bGenerado
  loc_C138D5: CVarRef
  loc_C138DA: LitI2_Byte &HFF
  loc_C138DC: FLdZeroAd var_148
  loc_C138DF: CVarAd
  loc_C138E3: PopAdLdVar
  loc_C138E4: FLdPr Me
  loc_C138E7: MemLdStr global_104
  loc_C138EA: FLdPr Me
  loc_C138ED: MemLdStr global_100
  loc_C138F0: AryLock
  loc_C138F3: Ary1LdPr
  loc_C138F4: MemLdRfVar from_stack_1.global_68
  loc_C138F7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C138FC: AryUnlock
  loc_C138FF: AryUnlock
  loc_C13902: FFreeAd var_BC = ""
  loc_C13909: FFree1Var var_D4 = ""
  loc_C1390C: LitI2_Byte 1
  loc_C1390E: PopTmpLdAd2 var_C2
  loc_C13911: FLdPr var_F8
  loc_C13914: Call clsctacte.Move(from_stack_1v)
  loc_C13919: FLdPr Me
  loc_C1391C: MemLdRfVar from_stack_1.global_104
  loc_C1391F: NextI4 var_130, loc_C13350
  loc_C13924: LitVar_FALSE
  loc_C13928: PopAdLdVar
  loc_C13929: FLdPrThis
  loc_C1392A: VCallAd Control_ID_Pbar
  loc_C1392D: FStAdFunc var_BC
  loc_C13930: FLdPr var_BC
  loc_C13933: LateIdSt
  loc_C13938: FFree1Ad var_BC
  loc_C1393B: LitNothing
  loc_C1393D: FStAd var_F8 
  loc_C13941: LitI2_Byte &HFF
  loc_C13943: FLdPr Me
  loc_C13946: MemStI2 bGenerado
  loc_C13949: LitI4 0
  loc_C1394E: CI2I4
  loc_C1394F: FLdPr Me
  loc_C13952: Me.MousePointer = from_stack_1
  loc_C13957: LitVarStr var_A8, vbNullString
  loc_C1395C: PopAdLdVar
  loc_C1395D: FLdPr Me
  loc_C13960: VCallAd Control_ID_statusBar
  loc_C13963: FStAdFunc var_BC
  loc_C13966: FLdPr var_BC
  loc_C13969: LateIdSt
  loc_C1396E: FFree1Ad var_BC
  loc_C13971: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'BC6D68
  'Data Table: 4EEFEC
  loc_BC6700: LitStr "	"
  loc_BC6703: FStStrCopy var_8C
  loc_BC6706: FLdRfVar var_92
  loc_BC6709: FLdPr Me
  loc_BC670C: VCallAd Control_ID_EstadodeDeudaChk
  loc_BC670F: FStAdFunc var_90
  loc_BC6712: FLdPr var_90
  loc_BC6715:  = Me.Value
  loc_BC671A: FLdI2 var_92
  loc_BC671D: LitI2_Byte 0
  loc_BC671F: EqI2
  loc_BC6720: FFree1Ad var_90
  loc_BC6723: BranchF loc_BC69EB
  loc_BC6726: FLdRfVar var_90
  loc_BC6729: LitI2_Byte 0
  loc_BC672B: LitI2_Byte &HFF
  loc_BC672D: ImpAdLdI4 MemVar_D93030
  loc_BC6730: FLdPr Me
  loc_BC6733: MemLdRfVar from_stack_1.global_56
  loc_BC6736: NewIfNullPr IFileSystem3
  loc_BC6739: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BC673E: ILdRf var_90
  loc_BC6741: FLdPr Me
  loc_BC6744: MemStVarAd
  loc_BC6748: FFree1Ad var_90
  loc_BC674B: LitStr "Concepto"
  loc_BC674E: ILdRf var_8C
  loc_BC6751: ConcatStr
  loc_BC6752: FStStrNoPop var_98
  loc_BC6755: LitStr "Cuenta"
  loc_BC6758: ConcatStr
  loc_BC6759: FStStrNoPop var_9C
  loc_BC675C: ILdRf var_8C
  loc_BC675F: ConcatStr
  loc_BC6760: FStStrNoPop var_A0
  loc_BC6763: LitStr "C.U.I.L."
  loc_BC6766: ConcatStr
  loc_BC6767: FStStrNoPop var_A4
  loc_BC676A: ILdRf var_8C
  loc_BC676D: ConcatStr
  loc_BC676E: FStStrNoPop var_A8
  loc_BC6771: LitStr "Apellido y Nombre"
  loc_BC6774: ConcatStr
  loc_BC6775: FStStrNoPop var_AC
  loc_BC6778: ILdRf var_8C
  loc_BC677B: ConcatStr
  loc_BC677C: FStStrNoPop var_B0
  loc_BC677F: LitStr "Saldo Inicial"
  loc_BC6782: ConcatStr
  loc_BC6783: FStStrNoPop var_B4
  loc_BC6786: ILdRf var_8C
  loc_BC6789: ConcatStr
  loc_BC678A: FStStrNoPop var_B8
  loc_BC678D: LitStr "Aforos"
  loc_BC6790: ConcatStr
  loc_BC6791: FStStrNoPop var_BC
  loc_BC6794: ILdRf var_8C
  loc_BC6797: ConcatStr
  loc_BC6798: FStStrNoPop var_C0
  loc_BC679B: LitStr "Débitos"
  loc_BC679E: ConcatStr
  loc_BC679F: FStStrNoPop var_C4
  loc_BC67A2: ILdRf var_8C
  loc_BC67A5: ConcatStr
  loc_BC67A6: FStStrNoPop var_C8
  loc_BC67A9: LitStr "Créditos"
  loc_BC67AC: ConcatStr
  loc_BC67AD: FStStrNoPop var_CC
  loc_BC67B0: ILdRf var_8C
  loc_BC67B3: ConcatStr
  loc_BC67B4: FStStrNoPop var_D0
  loc_BC67B7: LitStr "Pres."
  loc_BC67BA: ConcatStr
  loc_BC67BB: FStStrNoPop var_D4
  loc_BC67BE: ILdRf var_8C
  loc_BC67C1: ConcatStr
  loc_BC67C2: FStStrNoPop var_D8
  loc_BC67C5: LitStr "Condo."
  loc_BC67C8: ConcatStr
  loc_BC67C9: FStStrNoPop var_DC
  loc_BC67CC: ILdRf var_8C
  loc_BC67CF: ConcatStr
  loc_BC67D0: FStStrNoPop var_E0
  loc_BC67D3: LitStr "Exenc."
  loc_BC67D6: ConcatStr
  loc_BC67D7: FStStrNoPop var_E4
  loc_BC67DA: ILdRf var_8C
  loc_BC67DD: ConcatStr
  loc_BC67DE: FStStrNoPop var_E8
  loc_BC67E1: LitStr "Desc."
  loc_BC67E4: ConcatStr
  loc_BC67E5: FStStrNoPop var_EC
  loc_BC67E8: ILdRf var_8C
  loc_BC67EB: ConcatStr
  loc_BC67EC: FStStrNoPop var_F0
  loc_BC67EF: LitStr "Cobrado"
  loc_BC67F2: ConcatStr
  loc_BC67F3: FStStrNoPop var_F4
  loc_BC67F6: ILdRf var_8C
  loc_BC67F9: ConcatStr
  loc_BC67FA: FStStrNoPop var_F8
  loc_BC67FD: LitStr "Saldo Final"
  loc_BC6800: ConcatStr
  loc_BC6801: CVarStr var_108
  loc_BC6804: PopAdLdVar
  loc_BC6805: FLdPr Me
  loc_BC6808: MemLdRfVar from_stack_1.global_76
  loc_BC680B: LdPrVar
  loc_BC680D: LateMemCall
  loc_BC6813: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BC6848: FFree1Var var_108 = ""
  loc_BC684B: LitI4 1
  loc_BC6850: FLdPr Me
  loc_BC6853: MemLdRfVar from_stack_1.global_104
  loc_BC6856: FLdPr Me
  loc_BC6859: MemLdStr global_100
  loc_BC685C: LitI2_Byte 1
  loc_BC685E: FnUBound
  loc_BC6860: ForI4 var_120
  loc_BC6866: FLdPr Me
  loc_BC6869: MemLdStr global_104
  loc_BC686C: FLdPr Me
  loc_BC686F: MemLdStr global_100
  loc_BC6872: AryLock
  loc_BC6875: Ary1LdPr
  loc_BC6876: MemLdRfVar from_stack_1.global_16
  loc_BC6879: FStR4 var_128
  loc_BC687C: FLdPr Me
  loc_BC687F: MemLdStr global_104
  loc_BC6882: FLdPr Me
  loc_BC6885: MemLdStr global_100
  loc_BC6888: Ary1LdPr
  loc_BC6889: MemLdStr global_0
  loc_BC688C: ILdRf var_8C
  loc_BC688F: ConcatStr
  loc_BC6890: FStStrNoPop var_98
  loc_BC6893: FLdPr Me
  loc_BC6896: MemLdStr global_104
  loc_BC6899: FLdPr Me
  loc_BC689C: MemLdStr global_100
  loc_BC689F: Ary1LdPr
  loc_BC68A0: MemLdStr global_4
  loc_BC68A3: ConcatStr
  loc_BC68A4: FStStrNoPop var_9C
  loc_BC68A7: ILdRf var_8C
  loc_BC68AA: ConcatStr
  loc_BC68AB: FStStrNoPop var_A0
  loc_BC68AE: FLdPr Me
  loc_BC68B1: MemLdStr global_104
  loc_BC68B4: FLdPr Me
  loc_BC68B7: MemLdStr global_100
  loc_BC68BA: Ary1LdPr
  loc_BC68BB: MemLdStr global_8
  loc_BC68BE: ConcatStr
  loc_BC68BF: FStStrNoPop var_A4
  loc_BC68C2: ILdRf var_8C
  loc_BC68C5: ConcatStr
  loc_BC68C6: FStStrNoPop var_A8
  loc_BC68C9: FLdPr Me
  loc_BC68CC: MemLdStr global_104
  loc_BC68CF: FLdPr Me
  loc_BC68D2: MemLdStr global_100
  loc_BC68D5: Ary1LdPr
  loc_BC68D6: MemLdStr global_12
  loc_BC68D9: ConcatStr
  loc_BC68DA: FStStrNoPop var_AC
  loc_BC68DD: ILdRf var_8C
  loc_BC68E0: ConcatStr
  loc_BC68E1: FStStrNoPop var_B0
  loc_BC68E4: FMemLdR4 var_128(0)
  loc_BC68E9: ConcatStr
  loc_BC68EA: FStStrNoPop var_B4
  loc_BC68ED: ILdRf var_8C
  loc_BC68F0: ConcatStr
  loc_BC68F1: FStStrNoPop var_B8
  loc_BC68F4: FMemLdR4 var_128(4)
  loc_BC68F9: ConcatStr
  loc_BC68FA: FStStrNoPop var_BC
  loc_BC68FD: ILdRf var_8C
  loc_BC6900: ConcatStr
  loc_BC6901: FStStrNoPop var_C0
  loc_BC6904: FMemLdR4 var_128(8)
  loc_BC6909: ConcatStr
  loc_BC690A: FStStrNoPop var_C4
  loc_BC690D: ILdRf var_8C
  loc_BC6910: ConcatStr
  loc_BC6911: FStStrNoPop var_C8
  loc_BC6914: FMemLdR4 var_128(12)
  loc_BC6919: ConcatStr
  loc_BC691A: FStStrNoPop var_CC
  loc_BC691D: ILdRf var_8C
  loc_BC6920: ConcatStr
  loc_BC6921: FStStrNoPop var_D0
  loc_BC6924: FMemLdR4 var_128(16)
  loc_BC6929: ConcatStr
  loc_BC692A: FStStrNoPop var_D4
  loc_BC692D: ILdRf var_8C
  loc_BC6930: ConcatStr
  loc_BC6931: FStStrNoPop var_D8
  loc_BC6934: FMemLdR4 var_128(20)
  loc_BC6939: ConcatStr
  loc_BC693A: FStStrNoPop var_DC
  loc_BC693D: ILdRf var_8C
  loc_BC6940: ConcatStr
  loc_BC6941: FStStrNoPop var_E0
  loc_BC6944: FMemLdR4 var_128(24)
  loc_BC6949: ConcatStr
  loc_BC694A: FStStrNoPop var_E4
  loc_BC694D: ILdRf var_8C
  loc_BC6950: ConcatStr
  loc_BC6951: FStStrNoPop var_E8
  loc_BC6954: FMemLdR4 var_128(28)
  loc_BC6959: ConcatStr
  loc_BC695A: FStStrNoPop var_EC
  loc_BC695D: ILdRf var_8C
  loc_BC6960: ConcatStr
  loc_BC6961: FStStrNoPop var_F0
  loc_BC6964: FMemLdR4 var_128(32)
  loc_BC6969: ConcatStr
  loc_BC696A: FStStrNoPop var_F4
  loc_BC696D: ILdRf var_8C
  loc_BC6970: ConcatStr
  loc_BC6971: FStStrNoPop var_F8
  loc_BC6974: FMemLdR4 var_128(36)
  loc_BC6979: ConcatStr
  loc_BC697A: CVarStr var_108
  loc_BC697D: PopAdLdVar
  loc_BC697E: FLdPr Me
  loc_BC6981: MemLdRfVar from_stack_1.global_76
  loc_BC6984: LdPrVar
  loc_BC6986: LateMemCall
  loc_BC698C: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BC69C1: FFree1Var var_108 = ""
  loc_BC69C4: LitI4 0
  loc_BC69C9: FStR4 var_128
  loc_BC69CC: AryUnlock
  loc_BC69CF: FLdPr Me
  loc_BC69D2: MemLdRfVar from_stack_1.global_104
  loc_BC69D5: NextI4 var_120, loc_BC6866
  loc_BC69DA: FLdPr Me
  loc_BC69DD: MemLdRfVar from_stack_1.global_76
  loc_BC69E0: LdPrVar
  loc_BC69E2: LateMemCall
  loc_BC69E8: Branch loc_BC6D65
  loc_BC69EB: FLdRfVar var_92
  loc_BC69EE: FLdPr Me
  loc_BC69F1: VCallAd Control_ID_EstadodeDeudaChk
  loc_BC69F4: FStAdFunc var_90
  loc_BC69F7: FLdPr var_90
  loc_BC69FA:  = Me.Value
  loc_BC69FF: FLdI2 var_92
  loc_BC6A02: LitI2_Byte 1
  loc_BC6A04: EqI2
  loc_BC6A05: FFree1Ad var_90
  loc_BC6A08: BranchF loc_BC6D65
  loc_BC6A0B: FLdRfVar var_90
  loc_BC6A0E: LitI2_Byte 0
  loc_BC6A10: LitI2_Byte &HFF
  loc_BC6A12: ImpAdLdI4 MemVar_D93030
  loc_BC6A15: FLdPr Me
  loc_BC6A18: MemLdRfVar from_stack_1.global_56
  loc_BC6A1B: NewIfNullPr IFileSystem3
  loc_BC6A1E: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BC6A23: ILdRf var_90
  loc_BC6A26: FLdPr Me
  loc_BC6A29: MemStVarAd
  loc_BC6A2D: FFree1Ad var_90
  loc_BC6A30: LitStr "Concepto"
  loc_BC6A33: ILdRf var_8C
  loc_BC6A36: ConcatStr
  loc_BC6A37: FStStrNoPop var_98
  loc_BC6A3A: LitStr "Cuenta"
  loc_BC6A3D: ConcatStr
  loc_BC6A3E: FStStrNoPop var_9C
  loc_BC6A41: ILdRf var_8C
  loc_BC6A44: ConcatStr
  loc_BC6A45: FStStrNoPop var_A0
  loc_BC6A48: LitStr "C.U.I.L."
  loc_BC6A4B: ConcatStr
  loc_BC6A4C: FStStrNoPop var_A4
  loc_BC6A4F: ILdRf var_8C
  loc_BC6A52: ConcatStr
  loc_BC6A53: FStStrNoPop var_A8
  loc_BC6A56: LitStr "Apellido y Nombre"
  loc_BC6A59: ConcatStr
  loc_BC6A5A: FStStrNoPop var_AC
  loc_BC6A5D: ILdRf var_8C
  loc_BC6A60: ConcatStr
  loc_BC6A61: FStStrNoPop var_B0
  loc_BC6A64: LitStr "Saldo Inicial"
  loc_BC6A67: ConcatStr
  loc_BC6A68: FStStrNoPop var_B4
  loc_BC6A6B: ILdRf var_8C
  loc_BC6A6E: ConcatStr
  loc_BC6A6F: FStStrNoPop var_B8
  loc_BC6A72: LitStr "Aforos"
  loc_BC6A75: ConcatStr
  loc_BC6A76: FStStrNoPop var_BC
  loc_BC6A79: ILdRf var_8C
  loc_BC6A7C: ConcatStr
  loc_BC6A7D: FStStrNoPop var_C0
  loc_BC6A80: LitStr "Débitos"
  loc_BC6A83: ConcatStr
  loc_BC6A84: FStStrNoPop var_C4
  loc_BC6A87: ILdRf var_8C
  loc_BC6A8A: ConcatStr
  loc_BC6A8B: FStStrNoPop var_C8
  loc_BC6A8E: LitStr "Créditos"
  loc_BC6A91: ConcatStr
  loc_BC6A92: FStStrNoPop var_CC
  loc_BC6A95: ILdRf var_8C
  loc_BC6A98: ConcatStr
  loc_BC6A99: FStStrNoPop var_D0
  loc_BC6A9C: LitStr "Pres."
  loc_BC6A9F: ConcatStr
  loc_BC6AA0: FStStrNoPop var_D4
  loc_BC6AA3: ILdRf var_8C
  loc_BC6AA6: ConcatStr
  loc_BC6AA7: FStStrNoPop var_D8
  loc_BC6AAA: LitStr "Condo."
  loc_BC6AAD: ConcatStr
  loc_BC6AAE: FStStrNoPop var_DC
  loc_BC6AB1: ILdRf var_8C
  loc_BC6AB4: ConcatStr
  loc_BC6AB5: FStStrNoPop var_E0
  loc_BC6AB8: LitStr "Exenc."
  loc_BC6ABB: ConcatStr
  loc_BC6ABC: FStStrNoPop var_E4
  loc_BC6ABF: ILdRf var_8C
  loc_BC6AC2: ConcatStr
  loc_BC6AC3: FStStrNoPop var_E8
  loc_BC6AC6: LitStr "Desc."
  loc_BC6AC9: ConcatStr
  loc_BC6ACA: FStStrNoPop var_EC
  loc_BC6ACD: ILdRf var_8C
  loc_BC6AD0: ConcatStr
  loc_BC6AD1: FStStrNoPop var_F0
  loc_BC6AD4: LitStr "Cobrado"
  loc_BC6AD7: ConcatStr
  loc_BC6AD8: FStStrNoPop var_F4
  loc_BC6ADB: ILdRf var_8C
  loc_BC6ADE: ConcatStr
  loc_BC6ADF: FStStrNoPop var_F8
  loc_BC6AE2: LitStr "Saldo Final"
  loc_BC6AE5: ConcatStr
  loc_BC6AE6: FStStrNoPop var_12C
  loc_BC6AE9: ILdRf var_8C
  loc_BC6AEC: ConcatStr
  loc_BC6AED: FStStrNoPop var_130
  loc_BC6AF0: LitStr "Normal"
  loc_BC6AF3: ConcatStr
  loc_BC6AF4: FStStrNoPop var_134
  loc_BC6AF7: ILdRf var_8C
  loc_BC6AFA: ConcatStr
  loc_BC6AFB: FStStrNoPop var_138
  loc_BC6AFE: LitStr "Vencida"
  loc_BC6B01: ConcatStr
  loc_BC6B02: FStStrNoPop var_13C
  loc_BC6B05: ILdRf var_8C
  loc_BC6B08: ConcatStr
  loc_BC6B09: FStStrNoPop var_140
  loc_BC6B0C: LitStr "Apremio"
  loc_BC6B0F: ConcatStr
  loc_BC6B10: FStStrNoPop var_144
  loc_BC6B13: ILdRf var_8C
  loc_BC6B16: ConcatStr
  loc_BC6B17: FStStrNoPop var_148
  loc_BC6B1A: LitStr "Judicial"
  loc_BC6B1D: ConcatStr
  loc_BC6B1E: CVarStr var_108
  loc_BC6B21: PopAdLdVar
  loc_BC6B22: FLdPr Me
  loc_BC6B25: MemLdRfVar from_stack_1.global_76
  loc_BC6B28: LdPrVar
  loc_BC6B2A: LateMemCall
  loc_BC6B30: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_BC6B75: FFree1Var var_108 = ""
  loc_BC6B78: LitI4 1
  loc_BC6B7D: FLdPr Me
  loc_BC6B80: MemLdRfVar from_stack_1.global_104
  loc_BC6B83: FLdPr Me
  loc_BC6B86: MemLdStr global_100
  loc_BC6B89: LitI2_Byte 1
  loc_BC6B8B: FnUBound
  loc_BC6B8D: ForI4 var_150
  loc_BC6B93: FLdPr Me
  loc_BC6B96: MemLdStr global_104
  loc_BC6B99: FLdPr Me
  loc_BC6B9C: MemLdStr global_100
  loc_BC6B9F: AryLock
  loc_BC6BA2: Ary1LdPr
  loc_BC6BA3: MemLdRfVar from_stack_1.global_16
  loc_BC6BA6: FStR4 var_158
  loc_BC6BA9: FLdPr Me
  loc_BC6BAC: MemLdStr global_104
  loc_BC6BAF: FLdPr Me
  loc_BC6BB2: MemLdStr global_100
  loc_BC6BB5: Ary1LdPr
  loc_BC6BB6: MemLdStr global_0
  loc_BC6BB9: ILdRf var_8C
  loc_BC6BBC: ConcatStr
  loc_BC6BBD: FStStrNoPop var_98
  loc_BC6BC0: FLdPr Me
  loc_BC6BC3: MemLdStr global_104
  loc_BC6BC6: FLdPr Me
  loc_BC6BC9: MemLdStr global_100
  loc_BC6BCC: Ary1LdPr
  loc_BC6BCD: MemLdStr global_4
  loc_BC6BD0: ConcatStr
  loc_BC6BD1: FStStrNoPop var_9C
  loc_BC6BD4: ILdRf var_8C
  loc_BC6BD7: ConcatStr
  loc_BC6BD8: FStStrNoPop var_A0
  loc_BC6BDB: FLdPr Me
  loc_BC6BDE: MemLdStr global_104
  loc_BC6BE1: FLdPr Me
  loc_BC6BE4: MemLdStr global_100
  loc_BC6BE7: Ary1LdPr
  loc_BC6BE8: MemLdStr global_8
  loc_BC6BEB: ConcatStr
  loc_BC6BEC: FStStrNoPop var_A4
  loc_BC6BEF: ILdRf var_8C
  loc_BC6BF2: ConcatStr
  loc_BC6BF3: FStStrNoPop var_A8
  loc_BC6BF6: FLdPr Me
  loc_BC6BF9: MemLdStr global_104
  loc_BC6BFC: FLdPr Me
  loc_BC6BFF: MemLdStr global_100
  loc_BC6C02: Ary1LdPr
  loc_BC6C03: MemLdStr global_12
  loc_BC6C06: ConcatStr
  loc_BC6C07: FStStrNoPop var_AC
  loc_BC6C0A: ILdRf var_8C
  loc_BC6C0D: ConcatStr
  loc_BC6C0E: FStStrNoPop var_B0
  loc_BC6C11: FMemLdR4 var_158(0)
  loc_BC6C16: ConcatStr
  loc_BC6C17: FStStrNoPop var_B4
  loc_BC6C1A: ILdRf var_8C
  loc_BC6C1D: ConcatStr
  loc_BC6C1E: FStStrNoPop var_B8
  loc_BC6C21: FMemLdR4 var_158(4)
  loc_BC6C26: ConcatStr
  loc_BC6C27: FStStrNoPop var_BC
  loc_BC6C2A: ILdRf var_8C
  loc_BC6C2D: ConcatStr
  loc_BC6C2E: FStStrNoPop var_C0
  loc_BC6C31: FMemLdR4 var_158(8)
  loc_BC6C36: ConcatStr
  loc_BC6C37: FStStrNoPop var_C4
  loc_BC6C3A: ILdRf var_8C
  loc_BC6C3D: ConcatStr
  loc_BC6C3E: FStStrNoPop var_C8
  loc_BC6C41: FMemLdR4 var_158(12)
  loc_BC6C46: ConcatStr
  loc_BC6C47: FStStrNoPop var_CC
  loc_BC6C4A: ILdRf var_8C
  loc_BC6C4D: ConcatStr
  loc_BC6C4E: FStStrNoPop var_D0
  loc_BC6C51: FMemLdR4 var_158(16)
  loc_BC6C56: ConcatStr
  loc_BC6C57: FStStrNoPop var_D4
  loc_BC6C5A: ILdRf var_8C
  loc_BC6C5D: ConcatStr
  loc_BC6C5E: FStStrNoPop var_D8
  loc_BC6C61: FMemLdR4 var_158(20)
  loc_BC6C66: ConcatStr
  loc_BC6C67: FStStrNoPop var_DC
  loc_BC6C6A: ILdRf var_8C
  loc_BC6C6D: ConcatStr
  loc_BC6C6E: FStStrNoPop var_E0
  loc_BC6C71: FMemLdR4 var_158(24)
  loc_BC6C76: ConcatStr
  loc_BC6C77: FStStrNoPop var_E4
  loc_BC6C7A: ILdRf var_8C
  loc_BC6C7D: ConcatStr
  loc_BC6C7E: FStStrNoPop var_E8
  loc_BC6C81: FMemLdR4 var_158(28)
  loc_BC6C86: ConcatStr
  loc_BC6C87: FStStrNoPop var_EC
  loc_BC6C8A: ILdRf var_8C
  loc_BC6C8D: ConcatStr
  loc_BC6C8E: FStStrNoPop var_F0
  loc_BC6C91: FMemLdR4 var_158(32)
  loc_BC6C96: ConcatStr
  loc_BC6C97: FStStrNoPop var_F4
  loc_BC6C9A: ILdRf var_8C
  loc_BC6C9D: ConcatStr
  loc_BC6C9E: FStStrNoPop var_F8
  loc_BC6CA1: FMemLdR4 var_158(36)
  loc_BC6CA6: ConcatStr
  loc_BC6CA7: FStStrNoPop var_12C
  loc_BC6CAA: ILdRf var_8C
  loc_BC6CAD: ConcatStr
  loc_BC6CAE: FStStrNoPop var_130
  loc_BC6CB1: FMemLdR4 var_158(40)
  loc_BC6CB6: ConcatStr
  loc_BC6CB7: FStStrNoPop var_134
  loc_BC6CBA: ILdRf var_8C
  loc_BC6CBD: ConcatStr
  loc_BC6CBE: FStStrNoPop var_138
  loc_BC6CC1: FMemLdR4 var_158(44)
  loc_BC6CC6: ConcatStr
  loc_BC6CC7: FStStrNoPop var_13C
  loc_BC6CCA: ILdRf var_8C
  loc_BC6CCD: ConcatStr
  loc_BC6CCE: FStStrNoPop var_140
  loc_BC6CD1: FMemLdR4 var_158(48)
  loc_BC6CD6: ConcatStr
  loc_BC6CD7: FStStrNoPop var_144
  loc_BC6CDA: ILdRf var_8C
  loc_BC6CDD: ConcatStr
  loc_BC6CDE: FStStrNoPop var_148
  loc_BC6CE1: FMemLdR4 var_158(52)
  loc_BC6CE6: ConcatStr
  loc_BC6CE7: CVarStr var_108
  loc_BC6CEA: PopAdLdVar
  loc_BC6CEB: FLdPr Me
  loc_BC6CEE: MemLdRfVar from_stack_1.global_76
  loc_BC6CF1: LdPrVar
  loc_BC6CF3: LateMemCall
  loc_BC6CF9: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_BC6D3E: FFree1Var var_108 = ""
  loc_BC6D41: LitI4 0
  loc_BC6D46: FStR4 var_158
  loc_BC6D49: AryUnlock
  loc_BC6D4C: FLdPr Me
  loc_BC6D4F: MemLdRfVar from_stack_1.global_104
  loc_BC6D52: NextI4 var_150, loc_BC6B93
  loc_BC6D57: FLdPr Me
  loc_BC6D5A: MemLdRfVar from_stack_1.global_76
  loc_BC6D5D: LdPrVar
  loc_BC6D5F: LateMemCall
  loc_BC6D65: ExitProcHresult
  loc_BC6D66: AryLock
End Sub

Public Sub GeneraXLS(arg_20) 'C64034
  'Data Table: 4EEFEC
  loc_C6301C: ImpAdLdI4 MemVar_D93030
  loc_C6301F: FStStrCopy var_88
  loc_C63022: LitI4 0
  loc_C63027: LitStr "Excel.Application"
  loc_C6302A: FLdRfVar var_B4
  loc_C6302D: ImpAdCallFPR4  = CreateObject(, )
  loc_C63032: FLdRfVar var_B4
  loc_C63035: FLdRfVar var_98
  loc_C63038: SetVarVarFunc
  loc_C6303A: FLdRfVar var_98
  loc_C6303D: VarLateMemLdVar var_B4, .Workbooks
  loc_C63043: CastAdVar Me
  loc_C63047: FStAdFunc var_9C
  loc_C6304A: FFree1Var var_B4 = ""
  loc_C6304D: FLdRfVar var_E0
  loc_C63050: LitVarI2 var_DC, 1
  loc_C63055: PopAdLdVar
  loc_C63056: FLdRfVar var_CC
  loc_C63059: FLdRfVar var_C8
  loc_C6305C: LitI4 &H409
  loc_C63061: LitVar_Missing var_C4
  loc_C63064: PopAdLdVar
  loc_C63065: FLdPr var_9C
  loc_C63068:  = Forms
  loc_C6306D: FLdPr var_C8
  loc_C63070: Call 0.Method_arg_20C ()
  loc_C63075: FLdPr var_CC
  loc_C63078: Me.BackColor = from_stack_1
  loc_C6307D: ILdRf var_E0
  loc_C63080: CastAd
  loc_C63083: FStAdFunc var_A0
  loc_C63086: FFreeAd var_C8 = "": var_CC = ""
  loc_C6308F: LitVar_TRUE var_C4
  loc_C63092: PopAdLdVar
  loc_C63093: FLdRfVar var_98
  loc_C63096: VarLateMemSt .Visible
  loc_C6309A: LitVarI2 var_C4, 1
  loc_C6309F: PopAdLdVar
  loc_C630A0: LitVarI2 var_F0, 1
  loc_C630A5: PopAdLdVar
  loc_C630A6: LitVarStr var_110, "Concepto"
  loc_C630AB: PopAdLdVar
  loc_C630AC: FLdRfVar var_C8
  loc_C630AF: FLdPr var_A0
  loc_C630B2:  = Me.FontUnderline
  loc_C630B7: FLdPr var_C8
  loc_C630BA: LateIdCallSt
  loc_C630C2: FFree1Ad var_C8
  loc_C630C5: LitVarI2 var_C4, 1
  loc_C630CA: PopAdLdVar
  loc_C630CB: LitVarI2 var_F0, 2
  loc_C630D0: PopAdLdVar
  loc_C630D1: LitVarStr var_110, "Cuenta"
  loc_C630D6: PopAdLdVar
  loc_C630D7: FLdRfVar var_C8
  loc_C630DA: FLdPr var_A0
  loc_C630DD:  = Me.FontUnderline
  loc_C630E2: FLdPr var_C8
  loc_C630E5: LateIdCallSt
  loc_C630ED: FFree1Ad var_C8
  loc_C630F0: LitVarI2 var_C4, 1
  loc_C630F5: PopAdLdVar
  loc_C630F6: LitVarI2 var_F0, 3
  loc_C630FB: PopAdLdVar
  loc_C630FC: LitVarStr var_110, "C.U.I.L."
  loc_C63101: PopAdLdVar
  loc_C63102: FLdRfVar var_C8
  loc_C63105: FLdPr var_A0
  loc_C63108:  = Me.FontUnderline
  loc_C6310D: FLdPr var_C8
  loc_C63110: LateIdCallSt
  loc_C63118: FFree1Ad var_C8
  loc_C6311B: LitVarI2 var_C4, 1
  loc_C63120: PopAdLdVar
  loc_C63121: LitVarI2 var_F0, 4
  loc_C63126: PopAdLdVar
  loc_C63127: LitVarStr var_110, "Apellido y Nombre"
  loc_C6312C: PopAdLdVar
  loc_C6312D: FLdRfVar var_C8
  loc_C63130: FLdPr var_A0
  loc_C63133:  = Me.FontUnderline
  loc_C63138: FLdPr var_C8
  loc_C6313B: LateIdCallSt
  loc_C63143: FFree1Ad var_C8
  loc_C63146: LitVarI2 var_C4, 1
  loc_C6314B: PopAdLdVar
  loc_C6314C: LitVarI2 var_F0, 5
  loc_C63151: PopAdLdVar
  loc_C63152: LitVarStr var_110, "Saldo Inicial"
  loc_C63157: PopAdLdVar
  loc_C63158: FLdRfVar var_C8
  loc_C6315B: FLdPr var_A0
  loc_C6315E:  = Me.FontUnderline
  loc_C63163: FLdPr var_C8
  loc_C63166: LateIdCallSt
  loc_C6316E: FFree1Ad var_C8
  loc_C63171: LitVarI2 var_C4, 1
  loc_C63176: PopAdLdVar
  loc_C63177: LitVarI2 var_F0, 6
  loc_C6317C: PopAdLdVar
  loc_C6317D: LitVarStr var_110, "Aforos"
  loc_C63182: PopAdLdVar
  loc_C63183: FLdRfVar var_C8
  loc_C63186: FLdPr var_A0
  loc_C63189:  = Me.FontUnderline
  loc_C6318E: FLdPr var_C8
  loc_C63191: LateIdCallSt
  loc_C63199: FFree1Ad var_C8
  loc_C6319C: LitVarI2 var_C4, 1
  loc_C631A1: PopAdLdVar
  loc_C631A2: LitVarI2 var_F0, 7
  loc_C631A7: PopAdLdVar
  loc_C631A8: LitVarStr var_110, "Débitos"
  loc_C631AD: PopAdLdVar
  loc_C631AE: FLdRfVar var_C8
  loc_C631B1: FLdPr var_A0
  loc_C631B4:  = Me.FontUnderline
  loc_C631B9: FLdPr var_C8
  loc_C631BC: LateIdCallSt
  loc_C631C4: FFree1Ad var_C8
  loc_C631C7: LitVarI2 var_C4, 1
  loc_C631CC: PopAdLdVar
  loc_C631CD: LitVarI2 var_F0, 8
  loc_C631D2: PopAdLdVar
  loc_C631D3: LitVarStr var_110, "Créditos"
  loc_C631D8: PopAdLdVar
  loc_C631D9: FLdRfVar var_C8
  loc_C631DC: FLdPr var_A0
  loc_C631DF:  = Me.FontUnderline
  loc_C631E4: FLdPr var_C8
  loc_C631E7: LateIdCallSt
  loc_C631EF: FFree1Ad var_C8
  loc_C631F2: LitVarI2 var_C4, 1
  loc_C631F7: PopAdLdVar
  loc_C631F8: LitVarI2 var_F0, 9
  loc_C631FD: PopAdLdVar
  loc_C631FE: LitVarStr var_110, "Pres."
  loc_C63203: PopAdLdVar
  loc_C63204: FLdRfVar var_C8
  loc_C63207: FLdPr var_A0
  loc_C6320A:  = Me.FontUnderline
  loc_C6320F: FLdPr var_C8
  loc_C63212: LateIdCallSt
  loc_C6321A: FFree1Ad var_C8
  loc_C6321D: LitVarI2 var_C4, 1
  loc_C63222: PopAdLdVar
  loc_C63223: LitVarI2 var_F0, 10
  loc_C63228: PopAdLdVar
  loc_C63229: LitVarStr var_110, "Condo."
  loc_C6322E: PopAdLdVar
  loc_C6322F: FLdRfVar var_C8
  loc_C63232: FLdPr var_A0
  loc_C63235:  = Me.FontUnderline
  loc_C6323A: FLdPr var_C8
  loc_C6323D: LateIdCallSt
  loc_C63245: FFree1Ad var_C8
  loc_C63248: LitVarI2 var_C4, 1
  loc_C6324D: PopAdLdVar
  loc_C6324E: LitVarI2 var_F0, 11
  loc_C63253: PopAdLdVar
  loc_C63254: LitVarStr var_110, "Exenc."
  loc_C63259: PopAdLdVar
  loc_C6325A: FLdRfVar var_C8
  loc_C6325D: FLdPr var_A0
  loc_C63260:  = Me.FontUnderline
  loc_C63265: FLdPr var_C8
  loc_C63268: LateIdCallSt
  loc_C63270: FFree1Ad var_C8
  loc_C63273: LitVarI2 var_C4, 1
  loc_C63278: PopAdLdVar
  loc_C63279: LitVarI2 var_F0, 12
  loc_C6327E: PopAdLdVar
  loc_C6327F: LitVarStr var_110, "Desc."
  loc_C63284: PopAdLdVar
  loc_C63285: FLdRfVar var_C8
  loc_C63288: FLdPr var_A0
  loc_C6328B:  = Me.FontUnderline
  loc_C63290: FLdPr var_C8
  loc_C63293: LateIdCallSt
  loc_C6329B: FFree1Ad var_C8
  loc_C6329E: LitVarI2 var_C4, 1
  loc_C632A3: PopAdLdVar
  loc_C632A4: LitVarI2 var_F0, 13
  loc_C632A9: PopAdLdVar
  loc_C632AA: LitVarStr var_110, "Cobrado"
  loc_C632AF: PopAdLdVar
  loc_C632B0: FLdRfVar var_C8
  loc_C632B3: FLdPr var_A0
  loc_C632B6:  = Me.FontUnderline
  loc_C632BB: FLdPr var_C8
  loc_C632BE: LateIdCallSt
  loc_C632C6: FFree1Ad var_C8
  loc_C632C9: LitVarI2 var_C4, 1
  loc_C632CE: PopAdLdVar
  loc_C632CF: LitVarI2 var_F0, 14
  loc_C632D4: PopAdLdVar
  loc_C632D5: LitVarStr var_110, "Saldo Final"
  loc_C632DA: PopAdLdVar
  loc_C632DB: FLdRfVar var_C8
  loc_C632DE: FLdPr var_A0
  loc_C632E1:  = Me.FontUnderline
  loc_C632E6: FLdPr var_C8
  loc_C632E9: LateIdCallSt
  loc_C632F1: FFree1Ad var_C8
  loc_C632F4: FLdRfVar var_122
  loc_C632F7: FLdPr Me
  loc_C632FA: VCallAd Control_ID_EstadodeDeudaChk
  loc_C632FD: FStAdFunc var_C8
  loc_C63300: FLdPr var_C8
  loc_C63303:  = Me.Value
  loc_C63308: FLdI2 var_122
  loc_C6330B: LitI2_Byte 1
  loc_C6330D: EqI2
  loc_C6330E: FFree1Ad var_C8
  loc_C63311: BranchF loc_C633C0
  loc_C63314: LitVarI2 var_C4, 1
  loc_C63319: PopAdLdVar
  loc_C6331A: LitVarI2 var_F0, 15
  loc_C6331F: PopAdLdVar
  loc_C63320: LitVarStr var_110, "Normal"
  loc_C63325: PopAdLdVar
  loc_C63326: FLdRfVar var_C8
  loc_C63329: FLdPr var_A0
  loc_C6332C:  = Me.FontUnderline
  loc_C63331: FLdPr var_C8
  loc_C63334: LateIdCallSt
  loc_C6333C: FFree1Ad var_C8
  loc_C6333F: LitVarI2 var_C4, 1
  loc_C63344: PopAdLdVar
  loc_C63345: LitVarI2 var_F0, 16
  loc_C6334A: PopAdLdVar
  loc_C6334B: LitVarStr var_110, "Vencida"
  loc_C63350: PopAdLdVar
  loc_C63351: FLdRfVar var_C8
  loc_C63354: FLdPr var_A0
  loc_C63357:  = Me.FontUnderline
  loc_C6335C: FLdPr var_C8
  loc_C6335F: LateIdCallSt
  loc_C63367: FFree1Ad var_C8
  loc_C6336A: LitVarI2 var_C4, 1
  loc_C6336F: PopAdLdVar
  loc_C63370: LitVarI2 var_F0, 17
  loc_C63375: PopAdLdVar
  loc_C63376: LitVarStr var_110, "Apremio"
  loc_C6337B: PopAdLdVar
  loc_C6337C: FLdRfVar var_C8
  loc_C6337F: FLdPr var_A0
  loc_C63382:  = Me.FontUnderline
  loc_C63387: FLdPr var_C8
  loc_C6338A: LateIdCallSt
  loc_C63392: FFree1Ad var_C8
  loc_C63395: LitVarI2 var_C4, 1
  loc_C6339A: PopAdLdVar
  loc_C6339B: LitVarI2 var_F0, 18
  loc_C633A0: PopAdLdVar
  loc_C633A1: LitVarStr var_110, "Judicial"
  loc_C633A6: PopAdLdVar
  loc_C633A7: FLdRfVar var_C8
  loc_C633AA: FLdPr var_A0
  loc_C633AD:  = Me.FontUnderline
  loc_C633B2: FLdPr var_C8
  loc_C633B5: LateIdCallSt
  loc_C633BD: FFree1Ad var_C8
  loc_C633C0: LitI2_Byte 1
  loc_C633C2: FStI2 var_A2
  loc_C633C5: LitI4 1
  loc_C633CA: FLdPr Me
  loc_C633CD: MemLdRfVar from_stack_1.global_104
  loc_C633D0: FLdPr Me
  loc_C633D3: MemLdStr global_100
  loc_C633D6: LitI2_Byte 1
  loc_C633D8: FnUBound
  loc_C633DA: ForI4 var_12C
  loc_C633E0: FLdPr Me
  loc_C633E3: MemLdStr global_104
  loc_C633E6: FLdPr Me
  loc_C633E9: MemLdStr global_100
  loc_C633EC: AryLock
  loc_C633EF: Ary1LdPr
  loc_C633F0: MemLdRfVar from_stack_1.global_16
  loc_C633F3: FStR4 var_134
  loc_C633F6: FLdI2 var_A2
  loc_C633F9: CI4UI1
  loc_C633FA: FLdPr Me
  loc_C633FD: MemLdStr global_104
  loc_C63400: AddI4
  loc_C63401: CVarI4
  loc_C63405: PopAdLdVar
  loc_C63406: LitVarI2 var_F0, 1
  loc_C6340B: PopAdLdVar
  loc_C6340C: FLdPr Me
  loc_C6340F: MemLdStr global_104
  loc_C63412: FLdPr Me
  loc_C63415: MemLdStr global_100
  loc_C63418: Ary1LdPr
  loc_C63419: MemLdStr global_0
  loc_C6341C: CVarStr var_110
  loc_C6341F: PopAdLdVar
  loc_C63420: FLdRfVar var_C8
  loc_C63423: FLdPr var_A0
  loc_C63426:  = Me.FontUnderline
  loc_C6342B: FLdPr var_C8
  loc_C6342E: LateIdCallSt
  loc_C63436: FFree1Ad var_C8
  loc_C63439: FLdI2 var_A2
  loc_C6343C: CI4UI1
  loc_C6343D: FLdPr Me
  loc_C63440: MemLdStr global_104
  loc_C63443: AddI4
  loc_C63444: CVarI4
  loc_C63448: PopAdLdVar
  loc_C63449: LitVarI2 var_F0, 2
  loc_C6344E: PopAdLdVar
  loc_C6344F: FLdPr Me
  loc_C63452: MemLdStr global_104
  loc_C63455: FLdPr Me
  loc_C63458: MemLdStr global_100
  loc_C6345B: Ary1LdPr
  loc_C6345C: MemLdStr global_4
  loc_C6345F: CVarStr var_110
  loc_C63462: PopAdLdVar
  loc_C63463: FLdRfVar var_C8
  loc_C63466: FLdPr var_A0
  loc_C63469:  = Me.FontUnderline
  loc_C6346E: FLdPr var_C8
  loc_C63471: LateIdCallSt
  loc_C63479: FFree1Ad var_C8
  loc_C6347C: FLdI2 var_A2
  loc_C6347F: CI4UI1
  loc_C63480: FLdPr Me
  loc_C63483: MemLdStr global_104
  loc_C63486: AddI4
  loc_C63487: CVarI4
  loc_C6348B: PopAdLdVar
  loc_C6348C: LitVarI2 var_F0, 3
  loc_C63491: PopAdLdVar
  loc_C63492: FLdPr Me
  loc_C63495: MemLdStr global_104
  loc_C63498: FLdPr Me
  loc_C6349B: MemLdStr global_100
  loc_C6349E: Ary1LdPr
  loc_C6349F: MemLdStr global_8
  loc_C634A2: CVarStr var_110
  loc_C634A5: PopAdLdVar
  loc_C634A6: FLdRfVar var_C8
  loc_C634A9: FLdPr var_A0
  loc_C634AC:  = Me.FontUnderline
  loc_C634B1: FLdPr var_C8
  loc_C634B4: LateIdCallSt
  loc_C634BC: FFree1Ad var_C8
  loc_C634BF: FLdI2 var_A2
  loc_C634C2: CI4UI1
  loc_C634C3: FLdPr Me
  loc_C634C6: MemLdStr global_104
  loc_C634C9: AddI4
  loc_C634CA: CVarI4
  loc_C634CE: PopAdLdVar
  loc_C634CF: LitVarI2 var_F0, 4
  loc_C634D4: PopAdLdVar
  loc_C634D5: FLdPr Me
  loc_C634D8: MemLdStr global_104
  loc_C634DB: FLdPr Me
  loc_C634DE: MemLdStr global_100
  loc_C634E1: Ary1LdPr
  loc_C634E2: MemLdStr global_12
  loc_C634E5: CVarStr var_110
  loc_C634E8: PopAdLdVar
  loc_C634E9: FLdRfVar var_C8
  loc_C634EC: FLdPr var_A0
  loc_C634EF:  = Me.FontUnderline
  loc_C634F4: FLdPr var_C8
  loc_C634F7: LateIdCallSt
  loc_C634FF: FFree1Ad var_C8
  loc_C63502: FLdI2 var_A2
  loc_C63505: CI4UI1
  loc_C63506: FLdPr Me
  loc_C63509: MemLdStr global_104
  loc_C6350C: AddI4
  loc_C6350D: CVarI4
  loc_C63511: PopAdLdVar
  loc_C63512: LitVarI2 var_F0, 5
  loc_C63517: PopAdLdVar
  loc_C63518: FMemLdR4 var_134(0)
  loc_C6351D: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63522: CVarR8
  loc_C63526: PopAdLdVar
  loc_C63527: FLdRfVar var_C8
  loc_C6352A: FLdPr var_A0
  loc_C6352D:  = Me.FontUnderline
  loc_C63532: FLdPr var_C8
  loc_C63535: LateIdCallSt
  loc_C6353D: FFree1Ad var_C8
  loc_C63540: FLdI2 var_A2
  loc_C63543: CI4UI1
  loc_C63544: FLdPr Me
  loc_C63547: MemLdStr global_104
  loc_C6354A: AddI4
  loc_C6354B: CVarI4
  loc_C6354F: PopAdLdVar
  loc_C63550: LitVarI2 var_F0, 6
  loc_C63555: PopAdLdVar
  loc_C63556: FMemLdR4 var_134(4)
  loc_C6355B: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63560: CVarR8
  loc_C63564: PopAdLdVar
  loc_C63565: FLdRfVar var_C8
  loc_C63568: FLdPr var_A0
  loc_C6356B:  = Me.FontUnderline
  loc_C63570: FLdPr var_C8
  loc_C63573: LateIdCallSt
  loc_C6357B: FFree1Ad var_C8
  loc_C6357E: FLdI2 var_A2
  loc_C63581: CI4UI1
  loc_C63582: FLdPr Me
  loc_C63585: MemLdStr global_104
  loc_C63588: AddI4
  loc_C63589: CVarI4
  loc_C6358D: PopAdLdVar
  loc_C6358E: LitVarI2 var_F0, 7
  loc_C63593: PopAdLdVar
  loc_C63594: FMemLdR4 var_134(8)
  loc_C63599: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C6359E: CVarR8
  loc_C635A2: PopAdLdVar
  loc_C635A3: FLdRfVar var_C8
  loc_C635A6: FLdPr var_A0
  loc_C635A9:  = Me.FontUnderline
  loc_C635AE: FLdPr var_C8
  loc_C635B1: LateIdCallSt
  loc_C635B9: FFree1Ad var_C8
  loc_C635BC: FLdI2 var_A2
  loc_C635BF: CI4UI1
  loc_C635C0: FLdPr Me
  loc_C635C3: MemLdStr global_104
  loc_C635C6: AddI4
  loc_C635C7: CVarI4
  loc_C635CB: PopAdLdVar
  loc_C635CC: LitVarI2 var_F0, 8
  loc_C635D1: PopAdLdVar
  loc_C635D2: FMemLdR4 var_134(12)
  loc_C635D7: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C635DC: CVarR8
  loc_C635E0: PopAdLdVar
  loc_C635E1: FLdRfVar var_C8
  loc_C635E4: FLdPr var_A0
  loc_C635E7:  = Me.FontUnderline
  loc_C635EC: FLdPr var_C8
  loc_C635EF: LateIdCallSt
  loc_C635F7: FFree1Ad var_C8
  loc_C635FA: FLdI2 var_A2
  loc_C635FD: CI4UI1
  loc_C635FE: FLdPr Me
  loc_C63601: MemLdStr global_104
  loc_C63604: AddI4
  loc_C63605: CVarI4
  loc_C63609: PopAdLdVar
  loc_C6360A: LitVarI2 var_F0, 9
  loc_C6360F: PopAdLdVar
  loc_C63610: FMemLdR4 var_134(16)
  loc_C63615: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C6361A: CVarR8
  loc_C6361E: PopAdLdVar
  loc_C6361F: FLdRfVar var_C8
  loc_C63622: FLdPr var_A0
  loc_C63625:  = Me.FontUnderline
  loc_C6362A: FLdPr var_C8
  loc_C6362D: LateIdCallSt
  loc_C63635: FFree1Ad var_C8
  loc_C63638: FLdI2 var_A2
  loc_C6363B: CI4UI1
  loc_C6363C: FLdPr Me
  loc_C6363F: MemLdStr global_104
  loc_C63642: AddI4
  loc_C63643: CVarI4
  loc_C63647: PopAdLdVar
  loc_C63648: LitVarI2 var_F0, 10
  loc_C6364D: PopAdLdVar
  loc_C6364E: FMemLdR4 var_134(20)
  loc_C63653: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63658: CVarR8
  loc_C6365C: PopAdLdVar
  loc_C6365D: FLdRfVar var_C8
  loc_C63660: FLdPr var_A0
  loc_C63663:  = Me.FontUnderline
  loc_C63668: FLdPr var_C8
  loc_C6366B: LateIdCallSt
  loc_C63673: FFree1Ad var_C8
  loc_C63676: FLdI2 var_A2
  loc_C63679: CI4UI1
  loc_C6367A: FLdPr Me
  loc_C6367D: MemLdStr global_104
  loc_C63680: AddI4
  loc_C63681: CVarI4
  loc_C63685: PopAdLdVar
  loc_C63686: LitVarI2 var_F0, 11
  loc_C6368B: PopAdLdVar
  loc_C6368C: FMemLdR4 var_134(24)
  loc_C63691: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63696: CVarR8
  loc_C6369A: PopAdLdVar
  loc_C6369B: FLdRfVar var_C8
  loc_C6369E: FLdPr var_A0
  loc_C636A1:  = Me.FontUnderline
  loc_C636A6: FLdPr var_C8
  loc_C636A9: LateIdCallSt
  loc_C636B1: FFree1Ad var_C8
  loc_C636B4: FLdI2 var_A2
  loc_C636B7: CI4UI1
  loc_C636B8: FLdPr Me
  loc_C636BB: MemLdStr global_104
  loc_C636BE: AddI4
  loc_C636BF: CVarI4
  loc_C636C3: PopAdLdVar
  loc_C636C4: LitVarI2 var_F0, 12
  loc_C636C9: PopAdLdVar
  loc_C636CA: FMemLdR4 var_134(28)
  loc_C636CF: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C636D4: CVarR8
  loc_C636D8: PopAdLdVar
  loc_C636D9: FLdRfVar var_C8
  loc_C636DC: FLdPr var_A0
  loc_C636DF:  = Me.FontUnderline
  loc_C636E4: FLdPr var_C8
  loc_C636E7: LateIdCallSt
  loc_C636EF: FFree1Ad var_C8
  loc_C636F2: FLdI2 var_A2
  loc_C636F5: CI4UI1
  loc_C636F6: FLdPr Me
  loc_C636F9: MemLdStr global_104
  loc_C636FC: AddI4
  loc_C636FD: CVarI4
  loc_C63701: PopAdLdVar
  loc_C63702: LitVarI2 var_F0, 13
  loc_C63707: PopAdLdVar
  loc_C63708: FMemLdR4 var_134(32)
  loc_C6370D: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63712: CVarR8
  loc_C63716: PopAdLdVar
  loc_C63717: FLdRfVar var_C8
  loc_C6371A: FLdPr var_A0
  loc_C6371D:  = Me.FontUnderline
  loc_C63722: FLdPr var_C8
  loc_C63725: LateIdCallSt
  loc_C6372D: FFree1Ad var_C8
  loc_C63730: FLdI2 var_A2
  loc_C63733: CI4UI1
  loc_C63734: FLdPr Me
  loc_C63737: MemLdStr global_104
  loc_C6373A: AddI4
  loc_C6373B: CVarI4
  loc_C6373F: PopAdLdVar
  loc_C63740: LitVarI2 var_F0, 14
  loc_C63745: PopAdLdVar
  loc_C63746: FMemLdR4 var_134(36)
  loc_C6374B: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63750: CVarR8
  loc_C63754: PopAdLdVar
  loc_C63755: FLdRfVar var_C8
  loc_C63758: FLdPr var_A0
  loc_C6375B:  = Me.FontUnderline
  loc_C63760: FLdPr var_C8
  loc_C63763: LateIdCallSt
  loc_C6376B: FFree1Ad var_C8
  loc_C6376E: FLdRfVar var_122
  loc_C63771: FLdPr Me
  loc_C63774: VCallAd Control_ID_EstadodeDeudaChk
  loc_C63777: FStAdFunc var_C8
  loc_C6377A: FLdPr var_C8
  loc_C6377D:  = Me.Value
  loc_C63782: FLdI2 var_122
  loc_C63785: LitI2_Byte 1
  loc_C63787: EqI2
  loc_C63788: FFree1Ad var_C8
  loc_C6378B: BranchF loc_C63886
  loc_C6378E: FLdI2 var_A2
  loc_C63791: CI4UI1
  loc_C63792: FLdPr Me
  loc_C63795: MemLdStr global_104
  loc_C63798: AddI4
  loc_C63799: CVarI4
  loc_C6379D: PopAdLdVar
  loc_C6379E: LitVarI2 var_F0, 15
  loc_C637A3: PopAdLdVar
  loc_C637A4: FMemLdR4 var_134(40)
  loc_C637A9: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C637AE: CVarR8
  loc_C637B2: PopAdLdVar
  loc_C637B3: FLdRfVar var_C8
  loc_C637B6: FLdPr var_A0
  loc_C637B9:  = Me.FontUnderline
  loc_C637BE: FLdPr var_C8
  loc_C637C1: LateIdCallSt
  loc_C637C9: FFree1Ad var_C8
  loc_C637CC: FLdI2 var_A2
  loc_C637CF: CI4UI1
  loc_C637D0: FLdPr Me
  loc_C637D3: MemLdStr global_104
  loc_C637D6: AddI4
  loc_C637D7: CVarI4
  loc_C637DB: PopAdLdVar
  loc_C637DC: LitVarI2 var_F0, 16
  loc_C637E1: PopAdLdVar
  loc_C637E2: FMemLdR4 var_134(44)
  loc_C637E7: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C637EC: CVarR8
  loc_C637F0: PopAdLdVar
  loc_C637F1: FLdRfVar var_C8
  loc_C637F4: FLdPr var_A0
  loc_C637F7:  = Me.FontUnderline
  loc_C637FC: FLdPr var_C8
  loc_C637FF: LateIdCallSt
  loc_C63807: FFree1Ad var_C8
  loc_C6380A: FLdI2 var_A2
  loc_C6380D: CI4UI1
  loc_C6380E: FLdPr Me
  loc_C63811: MemLdStr global_104
  loc_C63814: AddI4
  loc_C63815: CVarI4
  loc_C63819: PopAdLdVar
  loc_C6381A: LitVarI2 var_F0, 17
  loc_C6381F: PopAdLdVar
  loc_C63820: FMemLdR4 var_134(48)
  loc_C63825: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C6382A: CVarR8
  loc_C6382E: PopAdLdVar
  loc_C6382F: FLdRfVar var_C8
  loc_C63832: FLdPr var_A0
  loc_C63835:  = Me.FontUnderline
  loc_C6383A: FLdPr var_C8
  loc_C6383D: LateIdCallSt
  loc_C63845: FFree1Ad var_C8
  loc_C63848: FLdI2 var_A2
  loc_C6384B: CI4UI1
  loc_C6384C: FLdPr Me
  loc_C6384F: MemLdStr global_104
  loc_C63852: AddI4
  loc_C63853: CVarI4
  loc_C63857: PopAdLdVar
  loc_C63858: LitVarI2 var_F0, 18
  loc_C6385D: PopAdLdVar
  loc_C6385E: FMemLdR4 var_134(52)
  loc_C63863: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C63868: CVarR8
  loc_C6386C: PopAdLdVar
  loc_C6386D: FLdRfVar var_C8
  loc_C63870: FLdPr var_A0
  loc_C63873:  = Me.FontUnderline
  loc_C63878: FLdPr var_C8
  loc_C6387B: LateIdCallSt
  loc_C63883: FFree1Ad var_C8
  loc_C63886: LitI4 0
  loc_C6388B: FStR4 var_134
  loc_C6388E: AryUnlock
  loc_C63891: FLdPr Me
  loc_C63894: MemLdRfVar from_stack_1.global_104
  loc_C63897: NextI4 var_12C, loc_C633E0
  loc_C6389C: FLdI2 var_A2
  loc_C6389F: CI4UI1
  loc_C638A0: FLdPr Me
  loc_C638A3: MemLdStr global_104
  loc_C638A6: AddI4
  loc_C638A7: CVarI4
  loc_C638AB: PopAdLdVar
  loc_C638AC: LitVarI2 var_F0, 4
  loc_C638B1: PopAdLdVar
  loc_C638B2: LitVarStr var_110, "TOTALES"
  loc_C638B7: PopAdLdVar
  loc_C638B8: FLdRfVar var_C8
  loc_C638BB: FLdPr var_A0
  loc_C638BE:  = Me.FontUnderline
  loc_C638C3: FLdPr var_C8
  loc_C638C6: LateIdCallSt
  loc_C638CE: FFree1Ad var_C8
  loc_C638D1: FLdI2 var_A2
  loc_C638D4: CI4UI1
  loc_C638D5: FLdPr Me
  loc_C638D8: MemLdStr global_104
  loc_C638DB: AddI4
  loc_C638DC: CVarI4
  loc_C638E0: PopAdLdVar
  loc_C638E1: LitVarI2 var_F0, 5
  loc_C638E6: PopAdLdVar
  loc_C638E7: LitStr "=SUM(R[-"
  loc_C638EA: FLdPr Me
  loc_C638ED: MemLdStr global_100
  loc_C638F0: LitI2_Byte 1
  loc_C638F2: FnUBound
  loc_C638F4: CStrI4
  loc_C638F6: FStStrNoPop var_138
  loc_C638F9: ConcatStr
  loc_C638FA: FStStrNoPop var_13C
  loc_C638FD: LitStr "]C:R[-1]C)"
  loc_C63900: ConcatStr
  loc_C63901: CVarStr var_B4
  loc_C63904: PopAdLdVar
  loc_C63905: FLdRfVar var_C8
  loc_C63908: FLdPr var_A0
  loc_C6390B:  = Me.FontUnderline
  loc_C63910: FLdPr var_C8
  loc_C63913: LateIdCallSt
  loc_C6391B: FFreeStr var_138 = ""
  loc_C63922: FFree1Ad var_C8
  loc_C63925: FFree1Var var_B4 = ""
  loc_C63928: FLdI2 var_A2
  loc_C6392B: CI4UI1
  loc_C6392C: FLdPr Me
  loc_C6392F: MemLdStr global_104
  loc_C63932: AddI4
  loc_C63933: CVarI4
  loc_C63937: PopAdLdVar
  loc_C63938: LitVarI2 var_F0, 6
  loc_C6393D: PopAdLdVar
  loc_C6393E: LitStr "=SUM(R[-"
  loc_C63941: FLdPr Me
  loc_C63944: MemLdStr global_100
  loc_C63947: LitI2_Byte 1
  loc_C63949: FnUBound
  loc_C6394B: CStrI4
  loc_C6394D: FStStrNoPop var_138
  loc_C63950: ConcatStr
  loc_C63951: FStStrNoPop var_13C
  loc_C63954: LitStr "]C:R[-1]C)"
  loc_C63957: ConcatStr
  loc_C63958: CVarStr var_B4
  loc_C6395B: PopAdLdVar
  loc_C6395C: FLdRfVar var_C8
  loc_C6395F: FLdPr var_A0
  loc_C63962:  = Me.FontUnderline
  loc_C63967: FLdPr var_C8
  loc_C6396A: LateIdCallSt
  loc_C63972: FFreeStr var_138 = ""
  loc_C63979: FFree1Ad var_C8
  loc_C6397C: FFree1Var var_B4 = ""
  loc_C6397F: FLdI2 var_A2
  loc_C63982: CI4UI1
  loc_C63983: FLdPr Me
  loc_C63986: MemLdStr global_104
  loc_C63989: AddI4
  loc_C6398A: CVarI4
  loc_C6398E: PopAdLdVar
  loc_C6398F: LitVarI2 var_F0, 7
  loc_C63994: PopAdLdVar
  loc_C63995: LitStr "=SUM(R[-"
  loc_C63998: FLdPr Me
  loc_C6399B: MemLdStr global_100
  loc_C6399E: LitI2_Byte 1
  loc_C639A0: FnUBound
  loc_C639A2: CStrI4
  loc_C639A4: FStStrNoPop var_138
  loc_C639A7: ConcatStr
  loc_C639A8: FStStrNoPop var_13C
  loc_C639AB: LitStr "]C:R[-1]C)"
  loc_C639AE: ConcatStr
  loc_C639AF: CVarStr var_B4
  loc_C639B2: PopAdLdVar
  loc_C639B3: FLdRfVar var_C8
  loc_C639B6: FLdPr var_A0
  loc_C639B9:  = Me.FontUnderline
  loc_C639BE: FLdPr var_C8
  loc_C639C1: LateIdCallSt
  loc_C639C9: FFreeStr var_138 = ""
  loc_C639D0: FFree1Ad var_C8
  loc_C639D3: FFree1Var var_B4 = ""
  loc_C639D6: FLdI2 var_A2
  loc_C639D9: CI4UI1
  loc_C639DA: FLdPr Me
  loc_C639DD: MemLdStr global_104
  loc_C639E0: AddI4
  loc_C639E1: CVarI4
  loc_C639E5: PopAdLdVar
  loc_C639E6: LitVarI2 var_F0, 8
  loc_C639EB: PopAdLdVar
  loc_C639EC: LitStr "=SUM(R[-"
  loc_C639EF: FLdPr Me
  loc_C639F2: MemLdStr global_100
  loc_C639F5: LitI2_Byte 1
  loc_C639F7: FnUBound
  loc_C639F9: CStrI4
  loc_C639FB: FStStrNoPop var_138
  loc_C639FE: ConcatStr
  loc_C639FF: FStStrNoPop var_13C
  loc_C63A02: LitStr "]C:R[-1]C)"
  loc_C63A05: ConcatStr
  loc_C63A06: CVarStr var_B4
  loc_C63A09: PopAdLdVar
  loc_C63A0A: FLdRfVar var_C8
  loc_C63A0D: FLdPr var_A0
  loc_C63A10:  = Me.FontUnderline
  loc_C63A15: FLdPr var_C8
  loc_C63A18: LateIdCallSt
  loc_C63A20: FFreeStr var_138 = ""
  loc_C63A27: FFree1Ad var_C8
  loc_C63A2A: FFree1Var var_B4 = ""
  loc_C63A2D: FLdI2 var_A2
  loc_C63A30: CI4UI1
  loc_C63A31: FLdPr Me
  loc_C63A34: MemLdStr global_104
  loc_C63A37: AddI4
  loc_C63A38: CVarI4
  loc_C63A3C: PopAdLdVar
  loc_C63A3D: LitVarI2 var_F0, 9
  loc_C63A42: PopAdLdVar
  loc_C63A43: LitStr "=SUM(R[-"
  loc_C63A46: FLdPr Me
  loc_C63A49: MemLdStr global_100
  loc_C63A4C: LitI2_Byte 1
  loc_C63A4E: FnUBound
  loc_C63A50: CStrI4
  loc_C63A52: FStStrNoPop var_138
  loc_C63A55: ConcatStr
  loc_C63A56: FStStrNoPop var_13C
  loc_C63A59: LitStr "]C:R[-1]C)"
  loc_C63A5C: ConcatStr
  loc_C63A5D: CVarStr var_B4
  loc_C63A60: PopAdLdVar
  loc_C63A61: FLdRfVar var_C8
  loc_C63A64: FLdPr var_A0
  loc_C63A67:  = Me.FontUnderline
  loc_C63A6C: FLdPr var_C8
  loc_C63A6F: LateIdCallSt
  loc_C63A77: FFreeStr var_138 = ""
  loc_C63A7E: FFree1Ad var_C8
  loc_C63A81: FFree1Var var_B4 = ""
  loc_C63A84: FLdI2 var_A2
  loc_C63A87: CI4UI1
  loc_C63A88: FLdPr Me
  loc_C63A8B: MemLdStr global_104
  loc_C63A8E: AddI4
  loc_C63A8F: CVarI4
  loc_C63A93: PopAdLdVar
  loc_C63A94: LitVarI2 var_F0, 10
  loc_C63A99: PopAdLdVar
  loc_C63A9A: LitStr "=SUM(R[-"
  loc_C63A9D: FLdPr Me
  loc_C63AA0: MemLdStr global_100
  loc_C63AA3: LitI2_Byte 1
  loc_C63AA5: FnUBound
  loc_C63AA7: CStrI4
  loc_C63AA9: FStStrNoPop var_138
  loc_C63AAC: ConcatStr
  loc_C63AAD: FStStrNoPop var_13C
  loc_C63AB0: LitStr "]C:R[-1]C)"
  loc_C63AB3: ConcatStr
  loc_C63AB4: CVarStr var_B4
  loc_C63AB7: PopAdLdVar
  loc_C63AB8: FLdRfVar var_C8
  loc_C63ABB: FLdPr var_A0
  loc_C63ABE:  = Me.FontUnderline
  loc_C63AC3: FLdPr var_C8
  loc_C63AC6: LateIdCallSt
  loc_C63ACE: FFreeStr var_138 = ""
  loc_C63AD5: FFree1Ad var_C8
  loc_C63AD8: FFree1Var var_B4 = ""
  loc_C63ADB: FLdI2 var_A2
  loc_C63ADE: CI4UI1
  loc_C63ADF: FLdPr Me
  loc_C63AE2: MemLdStr global_104
  loc_C63AE5: AddI4
  loc_C63AE6: CVarI4
  loc_C63AEA: PopAdLdVar
  loc_C63AEB: LitVarI2 var_F0, 11
  loc_C63AF0: PopAdLdVar
  loc_C63AF1: LitStr "=SUM(R[-"
  loc_C63AF4: FLdPr Me
  loc_C63AF7: MemLdStr global_100
  loc_C63AFA: LitI2_Byte 1
  loc_C63AFC: FnUBound
  loc_C63AFE: CStrI4
  loc_C63B00: FStStrNoPop var_138
  loc_C63B03: ConcatStr
  loc_C63B04: FStStrNoPop var_13C
  loc_C63B07: LitStr "]C:R[-1]C)"
  loc_C63B0A: ConcatStr
  loc_C63B0B: CVarStr var_B4
  loc_C63B0E: PopAdLdVar
  loc_C63B0F: FLdRfVar var_C8
  loc_C63B12: FLdPr var_A0
  loc_C63B15:  = Me.FontUnderline
  loc_C63B1A: FLdPr var_C8
  loc_C63B1D: LateIdCallSt
  loc_C63B25: FFreeStr var_138 = ""
  loc_C63B2C: FFree1Ad var_C8
  loc_C63B2F: FFree1Var var_B4 = ""
  loc_C63B32: FLdI2 var_A2
  loc_C63B35: CI4UI1
  loc_C63B36: FLdPr Me
  loc_C63B39: MemLdStr global_104
  loc_C63B3C: AddI4
  loc_C63B3D: CVarI4
  loc_C63B41: PopAdLdVar
  loc_C63B42: LitVarI2 var_F0, 12
  loc_C63B47: PopAdLdVar
  loc_C63B48: LitStr "=SUM(R[-"
  loc_C63B4B: FLdPr Me
  loc_C63B4E: MemLdStr global_100
  loc_C63B51: LitI2_Byte 1
  loc_C63B53: FnUBound
  loc_C63B55: CStrI4
  loc_C63B57: FStStrNoPop var_138
  loc_C63B5A: ConcatStr
  loc_C63B5B: FStStrNoPop var_13C
  loc_C63B5E: LitStr "]C:R[-1]C)"
  loc_C63B61: ConcatStr
  loc_C63B62: CVarStr var_B4
  loc_C63B65: PopAdLdVar
  loc_C63B66: FLdRfVar var_C8
  loc_C63B69: FLdPr var_A0
  loc_C63B6C:  = Me.FontUnderline
  loc_C63B71: FLdPr var_C8
  loc_C63B74: LateIdCallSt
  loc_C63B7C: FFreeStr var_138 = ""
  loc_C63B83: FFree1Ad var_C8
  loc_C63B86: FFree1Var var_B4 = ""
  loc_C63B89: FLdI2 var_A2
  loc_C63B8C: CI4UI1
  loc_C63B8D: FLdPr Me
  loc_C63B90: MemLdStr global_104
  loc_C63B93: AddI4
  loc_C63B94: CVarI4
  loc_C63B98: PopAdLdVar
  loc_C63B99: LitVarI2 var_F0, 13
  loc_C63B9E: PopAdLdVar
  loc_C63B9F: LitStr "=SUM(R[-"
  loc_C63BA2: FLdPr Me
  loc_C63BA5: MemLdStr global_100
  loc_C63BA8: LitI2_Byte 1
  loc_C63BAA: FnUBound
  loc_C63BAC: CStrI4
  loc_C63BAE: FStStrNoPop var_138
  loc_C63BB1: ConcatStr
  loc_C63BB2: FStStrNoPop var_13C
  loc_C63BB5: LitStr "]C:R[-1]C)"
  loc_C63BB8: ConcatStr
  loc_C63BB9: CVarStr var_B4
  loc_C63BBC: PopAdLdVar
  loc_C63BBD: FLdRfVar var_C8
  loc_C63BC0: FLdPr var_A0
  loc_C63BC3:  = Me.FontUnderline
  loc_C63BC8: FLdPr var_C8
  loc_C63BCB: LateIdCallSt
  loc_C63BD3: FFreeStr var_138 = ""
  loc_C63BDA: FFree1Ad var_C8
  loc_C63BDD: FFree1Var var_B4 = ""
  loc_C63BE0: FLdI2 var_A2
  loc_C63BE3: CI4UI1
  loc_C63BE4: FLdPr Me
  loc_C63BE7: MemLdStr global_104
  loc_C63BEA: AddI4
  loc_C63BEB: CVarI4
  loc_C63BEF: PopAdLdVar
  loc_C63BF0: LitVarI2 var_F0, 14
  loc_C63BF5: PopAdLdVar
  loc_C63BF6: LitStr "=SUM(R[-"
  loc_C63BF9: FLdPr Me
  loc_C63BFC: MemLdStr global_100
  loc_C63BFF: LitI2_Byte 1
  loc_C63C01: FnUBound
  loc_C63C03: CStrI4
  loc_C63C05: FStStrNoPop var_138
  loc_C63C08: ConcatStr
  loc_C63C09: FStStrNoPop var_13C
  loc_C63C0C: LitStr "]C:R[-1]C)"
  loc_C63C0F: ConcatStr
  loc_C63C10: CVarStr var_B4
  loc_C63C13: PopAdLdVar
  loc_C63C14: FLdRfVar var_C8
  loc_C63C17: FLdPr var_A0
  loc_C63C1A:  = Me.FontUnderline
  loc_C63C1F: FLdPr var_C8
  loc_C63C22: LateIdCallSt
  loc_C63C2A: FFreeStr var_138 = ""
  loc_C63C31: FFree1Ad var_C8
  loc_C63C34: FFree1Var var_B4 = ""
  loc_C63C37: FLdRfVar var_122
  loc_C63C3A: FLdPr Me
  loc_C63C3D: VCallAd Control_ID_EstadodeDeudaChk
  loc_C63C40: FStAdFunc var_C8
  loc_C63C43: FLdPr var_C8
  loc_C63C46:  = Me.Value
  loc_C63C4B: FLdI2 var_122
  loc_C63C4E: LitI2_Byte 1
  loc_C63C50: EqI2
  loc_C63C51: FFree1Ad var_C8
  loc_C63C54: BranchF loc_C63DB3
  loc_C63C57: FLdI2 var_A2
  loc_C63C5A: CI4UI1
  loc_C63C5B: FLdPr Me
  loc_C63C5E: MemLdStr global_104
  loc_C63C61: AddI4
  loc_C63C62: CVarI4
  loc_C63C66: PopAdLdVar
  loc_C63C67: LitVarI2 var_F0, 15
  loc_C63C6C: PopAdLdVar
  loc_C63C6D: LitStr "=SUM(R[-"
  loc_C63C70: FLdPr Me
  loc_C63C73: MemLdStr global_100
  loc_C63C76: LitI2_Byte 1
  loc_C63C78: FnUBound
  loc_C63C7A: CStrI4
  loc_C63C7C: FStStrNoPop var_138
  loc_C63C7F: ConcatStr
  loc_C63C80: FStStrNoPop var_13C
  loc_C63C83: LitStr "]C:R[-1]C)"
  loc_C63C86: ConcatStr
  loc_C63C87: CVarStr var_B4
  loc_C63C8A: PopAdLdVar
  loc_C63C8B: FLdRfVar var_C8
  loc_C63C8E: FLdPr var_A0
  loc_C63C91:  = Me.FontUnderline
  loc_C63C96: FLdPr var_C8
  loc_C63C99: LateIdCallSt
  loc_C63CA1: FFreeStr var_138 = ""
  loc_C63CA8: FFree1Ad var_C8
  loc_C63CAB: FFree1Var var_B4 = ""
  loc_C63CAE: FLdI2 var_A2
  loc_C63CB1: CI4UI1
  loc_C63CB2: FLdPr Me
  loc_C63CB5: MemLdStr global_104
  loc_C63CB8: AddI4
  loc_C63CB9: CVarI4
  loc_C63CBD: PopAdLdVar
  loc_C63CBE: LitVarI2 var_F0, 16
  loc_C63CC3: PopAdLdVar
  loc_C63CC4: LitStr "=SUM(R[-"
  loc_C63CC7: FLdPr Me
  loc_C63CCA: MemLdStr global_100
  loc_C63CCD: LitI2_Byte 1
  loc_C63CCF: FnUBound
  loc_C63CD1: CStrI4
  loc_C63CD3: FStStrNoPop var_138
  loc_C63CD6: ConcatStr
  loc_C63CD7: FStStrNoPop var_13C
  loc_C63CDA: LitStr "]C:R[-1]C)"
  loc_C63CDD: ConcatStr
  loc_C63CDE: CVarStr var_B4
  loc_C63CE1: PopAdLdVar
  loc_C63CE2: FLdRfVar var_C8
  loc_C63CE5: FLdPr var_A0
  loc_C63CE8:  = Me.FontUnderline
  loc_C63CED: FLdPr var_C8
  loc_C63CF0: LateIdCallSt
  loc_C63CF8: FFreeStr var_138 = ""
  loc_C63CFF: FFree1Ad var_C8
  loc_C63D02: FFree1Var var_B4 = ""
  loc_C63D05: FLdI2 var_A2
  loc_C63D08: CI4UI1
  loc_C63D09: FLdPr Me
  loc_C63D0C: MemLdStr global_104
  loc_C63D0F: AddI4
  loc_C63D10: CVarI4
  loc_C63D14: PopAdLdVar
  loc_C63D15: LitVarI2 var_F0, 17
  loc_C63D1A: PopAdLdVar
  loc_C63D1B: LitStr "=SUM(R[-"
  loc_C63D1E: FLdPr Me
  loc_C63D21: MemLdStr global_100
  loc_C63D24: LitI2_Byte 1
  loc_C63D26: FnUBound
  loc_C63D28: CStrI4
  loc_C63D2A: FStStrNoPop var_138
  loc_C63D2D: ConcatStr
  loc_C63D2E: FStStrNoPop var_13C
  loc_C63D31: LitStr "]C:R[-1]C)"
  loc_C63D34: ConcatStr
  loc_C63D35: CVarStr var_B4
  loc_C63D38: PopAdLdVar
  loc_C63D39: FLdRfVar var_C8
  loc_C63D3C: FLdPr var_A0
  loc_C63D3F:  = Me.FontUnderline
  loc_C63D44: FLdPr var_C8
  loc_C63D47: LateIdCallSt
  loc_C63D4F: FFreeStr var_138 = ""
  loc_C63D56: FFree1Ad var_C8
  loc_C63D59: FFree1Var var_B4 = ""
  loc_C63D5C: FLdI2 var_A2
  loc_C63D5F: CI4UI1
  loc_C63D60: FLdPr Me
  loc_C63D63: MemLdStr global_104
  loc_C63D66: AddI4
  loc_C63D67: CVarI4
  loc_C63D6B: PopAdLdVar
  loc_C63D6C: LitVarI2 var_F0, 18
  loc_C63D71: PopAdLdVar
  loc_C63D72: LitStr "=SUM(R[-"
  loc_C63D75: FLdPr Me
  loc_C63D78: MemLdStr global_100
  loc_C63D7B: LitI2_Byte 1
  loc_C63D7D: FnUBound
  loc_C63D7F: CStrI4
  loc_C63D81: FStStrNoPop var_138
  loc_C63D84: ConcatStr
  loc_C63D85: FStStrNoPop var_13C
  loc_C63D88: LitStr "]C:R[-1]C)"
  loc_C63D8B: ConcatStr
  loc_C63D8C: CVarStr var_B4
  loc_C63D8F: PopAdLdVar
  loc_C63D90: FLdRfVar var_C8
  loc_C63D93: FLdPr var_A0
  loc_C63D96:  = Me.FontUnderline
  loc_C63D9B: FLdPr var_C8
  loc_C63D9E: LateIdCallSt
  loc_C63DA6: FFreeStr var_138 = ""
  loc_C63DAD: FFree1Ad var_C8
  loc_C63DB0: FFree1Var var_B4 = ""
  loc_C63DB3: FLdRfVar var_122
  loc_C63DB6: FLdPr Me
  loc_C63DB9: VCallAd Control_ID_EstadodeDeudaChk
  loc_C63DBC: FStAdFunc var_C8
  loc_C63DBF: FLdPr var_C8
  loc_C63DC2:  = Me.Value
  loc_C63DC7: FLdI2 var_122
  loc_C63DCA: LitI2_Byte 1
  loc_C63DCC: EqI2
  loc_C63DCD: FFree1Ad var_C8
  loc_C63DD0: BranchF loc_C63EE6
  loc_C63DD3: LitVar_TRUE var_F0
  loc_C63DD6: PopAdLdVar
  loc_C63DD7: FLdRfVar var_C8
  loc_C63DDA: LitVar_Missing var_DC
  loc_C63DDD: PopAdLdVar
  loc_C63DDE: LitVarStr var_C4, "A1:R1"
  loc_C63DE3: PopAdLdVar
  loc_C63DE4: FLdPr var_A0
  loc_C63DE7:  = Me.Image
  loc_C63DEC: FLdPr var_C8
  loc_C63DEF: LateIdLdVar var_B4 DispID_146 0
  loc_C63DF6: CastAdVar Me
  loc_C63DFA: FStAdFunc var_CC
  loc_C63DFD: FLdPr var_CC
  loc_C63E00: LateIdSt
  loc_C63E05: FFreeAd var_C8 = ""
  loc_C63E0C: FFree1Var var_B4 = ""
  loc_C63E0F: LitVar_TRUE var_DC
  loc_C63E12: PopAdLdVar
  loc_C63E13: FLdRfVar var_C8
  loc_C63E16: LitVar_Missing var_C4
  loc_C63E19: PopAdLdVar
  loc_C63E1A: LitStr "B"
  loc_C63E1D: FLdPr Me
  loc_C63E20: MemLdStr global_104
  loc_C63E23: LitI4 1
  loc_C63E28: AddI4
  loc_C63E29: CStrI4
  loc_C63E2B: FStStrNoPop var_138
  loc_C63E2E: ConcatStr
  loc_C63E2F: FStStrNoPop var_13C
  loc_C63E32: LitStr ":R"
  loc_C63E35: ConcatStr
  loc_C63E36: FStStrNoPop var_140
  loc_C63E39: FLdPr Me
  loc_C63E3C: MemLdStr global_104
  loc_C63E3F: LitI4 1
  loc_C63E44: AddI4
  loc_C63E45: CStrI4
  loc_C63E47: FStStrNoPop var_144
  loc_C63E4A: ConcatStr
  loc_C63E4B: CVarStr var_B4
  loc_C63E4E: PopAdLdVar
  loc_C63E4F: FLdPr var_A0
  loc_C63E52:  = Me.Image
  loc_C63E57: FLdPr var_C8
  loc_C63E5A: LateIdLdVar var_154 DispID_146 0
  loc_C63E61: CastAdVar Me
  loc_C63E65: FStAdFunc var_CC
  loc_C63E68: FLdPr var_CC
  loc_C63E6B: LateIdSt
  loc_C63E70: FFreeStr var_138 = "": var_13C = "": var_140 = ""
  loc_C63E7B: FFreeAd var_C8 = ""
  loc_C63E82: FFreeVar var_B4 = ""
  loc_C63E89: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_C63E8E: PopAdLdVar
  loc_C63E8F: LitVarStr var_C4, "E:R"
  loc_C63E94: PopAdLdVar
  loc_C63E95: FLdRfVar var_C8
  loc_C63E98: FLdPr var_A0
  loc_C63E9B:  = Me.CurrentY
  loc_C63EA0: FLdPr var_C8
  loc_C63EA3: LateIdCallLdVar
  loc_C63EAD: VarLateMemSt .NumberFormat
  loc_C63EB1: FFree1Ad var_C8
  loc_C63EB4: FFree1Var var_B4 = ""
  loc_C63EB7: LitVarStr var_C4, "A:R"
  loc_C63EBC: PopAdLdVar
  loc_C63EBD: FLdRfVar var_C8
  loc_C63EC0: FLdPr var_A0
  loc_C63EC3:  = Me.CurrentY
  loc_C63EC8: FLdPr var_C8
  loc_C63ECB: LateIdCallLdVar
  loc_C63ED5: LdPrVar
  loc_C63ED7: LateMemCall
  loc_C63EDD: FFree1Ad var_C8
  loc_C63EE0: FFree1Var var_154 = ""
  loc_C63EE3: Branch loc_C63FF6
  loc_C63EE6: LitVar_TRUE var_F0
  loc_C63EE9: PopAdLdVar
  loc_C63EEA: FLdRfVar var_C8
  loc_C63EED: LitVar_Missing var_DC
  loc_C63EF0: PopAdLdVar
  loc_C63EF1: LitVarStr var_C4, "A1:N1"
  loc_C63EF6: PopAdLdVar
  loc_C63EF7: FLdPr var_A0
  loc_C63EFA:  = Me.Image
  loc_C63EFF: FLdPr var_C8
  loc_C63F02: LateIdLdVar var_B4 DispID_146 0
  loc_C63F09: CastAdVar Me
  loc_C63F0D: FStAdFunc var_CC
  loc_C63F10: FLdPr var_CC
  loc_C63F13: LateIdSt
  loc_C63F18: FFreeAd var_C8 = ""
  loc_C63F1F: FFree1Var var_B4 = ""
  loc_C63F22: LitVar_TRUE var_DC
  loc_C63F25: PopAdLdVar
  loc_C63F26: FLdRfVar var_C8
  loc_C63F29: LitVar_Missing var_C4
  loc_C63F2C: PopAdLdVar
  loc_C63F2D: LitStr "B"
  loc_C63F30: FLdPr Me
  loc_C63F33: MemLdStr global_104
  loc_C63F36: LitI4 1
  loc_C63F3B: AddI4
  loc_C63F3C: CStrI4
  loc_C63F3E: FStStrNoPop var_138
  loc_C63F41: ConcatStr
  loc_C63F42: FStStrNoPop var_13C
  loc_C63F45: LitStr ":M"
  loc_C63F48: ConcatStr
  loc_C63F49: FStStrNoPop var_140
  loc_C63F4C: FLdPr Me
  loc_C63F4F: MemLdStr global_104
  loc_C63F52: LitI4 1
  loc_C63F57: AddI4
  loc_C63F58: CStrI4
  loc_C63F5A: FStStrNoPop var_144
  loc_C63F5D: ConcatStr
  loc_C63F5E: CVarStr var_B4
  loc_C63F61: PopAdLdVar
  loc_C63F62: FLdPr var_A0
  loc_C63F65:  = Me.Image
  loc_C63F6A: FLdPr var_C8
  loc_C63F6D: LateIdLdVar var_154 DispID_146 0
  loc_C63F74: CastAdVar Me
  loc_C63F78: FStAdFunc var_CC
  loc_C63F7B: FLdPr var_CC
  loc_C63F7E: LateIdSt
  loc_C63F83: FFreeStr var_138 = "": var_13C = "": var_140 = ""
  loc_C63F8E: FFreeAd var_C8 = ""
  loc_C63F95: FFreeVar var_B4 = ""
  loc_C63F9C: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_C63FA1: PopAdLdVar
  loc_C63FA2: LitVarStr var_C4, "E:N"
  loc_C63FA7: PopAdLdVar
  loc_C63FA8: FLdRfVar var_C8
  loc_C63FAB: FLdPr var_A0
  loc_C63FAE:  = Me.CurrentY
  loc_C63FB3: FLdPr var_C8
  loc_C63FB6: LateIdCallLdVar
  loc_C63FC0: VarLateMemSt .NumberFormat
  loc_C63FC4: FFree1Ad var_C8
  loc_C63FC7: FFree1Var var_B4 = ""
  loc_C63FCA: LitVarStr var_C4, "A:N"
  loc_C63FCF: PopAdLdVar
  loc_C63FD0: FLdRfVar var_C8
  loc_C63FD3: FLdPr var_A0
  loc_C63FD6:  = Me.CurrentY
  loc_C63FDB: FLdPr var_C8
  loc_C63FDE: LateIdCallLdVar
  loc_C63FE8: LdPrVar
  loc_C63FEA: LateMemCall
  loc_C63FF0: FFree1Ad var_C8
  loc_C63FF3: FFree1Var var_154 = ""
  loc_C63FF6: LitVar_Missing var_184
  loc_C63FF9: PopAdLdVar
  loc_C63FFA: LitVar_Missing var_174
  loc_C63FFD: PopAdLdVar
  loc_C63FFE: LitVar_Missing var_164
  loc_C64001: PopAdLdVar
  loc_C64002: LitVar_Missing var_120
  loc_C64005: PopAdLdVar
  loc_C64006: LitVar_Missing var_110
  loc_C64009: PopAdLdVar
  loc_C6400A: LitVar_Missing var_100
  loc_C6400D: PopAdLdVar
  loc_C6400E: LitVar_Missing var_F0
  loc_C64011: PopAdLdVar
  loc_C64012: LitVar_Missing var_DC
  loc_C64015: PopAdLdVar
  loc_C64016: LitVar_Missing var_C4
  loc_C64019: PopAdLdVar
  loc_C6401A: ILdRf var_88
  loc_C6401D: FLdPr var_A0
  loc_C64020: Me.MouseIcon = from_stack_1
  loc_C64025: LitI4 &H409
  loc_C6402A: FLdPr var_9C
  loc_C64032: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BBE020
  'Data Table: 4EEFEC
  loc_BBD960: FLdRfVar var_88
  loc_BBD963: LitI2_Byte 0
  loc_BBD965: LitI2_Byte &HFF
  loc_BBD967: ImpAdLdI4 MemVar_D93C84
  loc_BBD96A: FLdPr Me
  loc_BBD96D: MemLdRfVar from_stack_1.global_56
  loc_BBD970: NewIfNullPr IFileSystem3
  loc_BBD973: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BBD978: ILdRf var_88
  loc_BBD97B: FLdPr Me
  loc_BBD97E: MemStVarAd
  loc_BBD982: FFree1Ad var_88
  loc_BBD985: LitI2_Byte &HFF
  loc_BBD987: ImpAdStI2 MemVar_D93C8A
  loc_BBD98A: Call Proc_321_31_BFD2D0()
  loc_BBD98F: LitI4 1
  loc_BBD994: FLdPr Me
  loc_BBD997: MemLdRfVar from_stack_1.global_104
  loc_BBD99A: FLdPr Me
  loc_BBD99D: MemLdStr global_100
  loc_BBD9A0: LitI2_Byte 1
  loc_BBD9A2: FnUBound
  loc_BBD9A4: ForI4 var_90
  loc_BBD9AA: FLdPr Me
  loc_BBD9AD: MemLdStr global_104
  loc_BBD9B0: FLdPr Me
  loc_BBD9B3: MemLdStr global_100
  loc_BBD9B6: AryLock
  loc_BBD9B9: Ary1LdRf
  loc_BBD9BA: FStR4 var_98
  loc_BBD9BD: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BBD9C2: PopAdLdVar
  loc_BBD9C3: FLdPr Me
  loc_BBD9C6: MemLdRfVar from_stack_1.global_60
  loc_BBD9C9: LdPrVar
  loc_BBD9CB: LateMemCall
  loc_BBD9D1: LitStr vbNullString
  loc_BBD9D4: LitI2_Byte 0
  loc_BBD9D6: LitI2_Byte 0
  loc_BBD9D8: LitI2_Byte 0
  loc_BBD9DA: LitStr "right"
  loc_BBD9DD: FMemLdR4 var_98(0)
  loc_BBD9E2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBD9E7: CVarStr var_C8
  loc_BBD9EA: PopAdLdVar
  loc_BBD9EB: FLdPr Me
  loc_BBD9EE: MemLdRfVar from_stack_1.global_60
  loc_BBD9F1: LdPrVar
  loc_BBD9F3: LateMemCall
  loc_BBD9F9: FFree1Var var_C8 = ""
  loc_BBD9FC: LitStr vbNullString
  loc_BBD9FF: LitI2_Byte 0
  loc_BBDA01: LitI2_Byte 0
  loc_BBDA03: LitI2_Byte 0
  loc_BBDA05: LitStr "right"
  loc_BBDA08: FMemLdR4 var_98(4)
  loc_BBDA0D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDA12: CVarStr var_C8
  loc_BBDA15: PopAdLdVar
  loc_BBDA16: FLdPr Me
  loc_BBDA19: MemLdRfVar from_stack_1.global_60
  loc_BBDA1C: LdPrVar
  loc_BBDA1E: LateMemCall
  loc_BBDA24: FFree1Var var_C8 = ""
  loc_BBDA27: LitStr vbNullString
  loc_BBDA2A: LitI2_Byte 0
  loc_BBDA2C: LitI2_Byte 0
  loc_BBDA2E: LitI2_Byte 0
  loc_BBDA30: LitStr "left"
  loc_BBDA33: FMemLdR4 var_98(8)
  loc_BBDA38: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDA3D: CVarStr var_C8
  loc_BBDA40: PopAdLdVar
  loc_BBDA41: FLdPr Me
  loc_BBDA44: MemLdRfVar from_stack_1.global_60
  loc_BBDA47: LdPrVar
  loc_BBDA49: LateMemCall
  loc_BBDA4F: FFree1Var var_C8 = ""
  loc_BBDA52: LitStr vbNullString
  loc_BBDA55: LitI2_Byte 0
  loc_BBDA57: LitI2_Byte 0
  loc_BBDA59: LitI2_Byte 0
  loc_BBDA5B: LitStr "left"
  loc_BBDA5E: FMemLdR4 var_98(12)
  loc_BBDA63: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDA68: CVarStr var_C8
  loc_BBDA6B: PopAdLdVar
  loc_BBDA6C: FLdPr Me
  loc_BBDA6F: MemLdRfVar from_stack_1.global_60
  loc_BBDA72: LdPrVar
  loc_BBDA74: LateMemCall
  loc_BBDA7A: FFree1Var var_C8 = ""
  loc_BBDA7D: FMemLdRf unk_4EEF55
  loc_BBDA82: FStR4 var_CC
  loc_BBDA85: LitStr vbNullString
  loc_BBDA88: LitI2_Byte 0
  loc_BBDA8A: LitI2_Byte 0
  loc_BBDA8C: LitI2_Byte 0
  loc_BBDA8E: LitStr "right"
  loc_BBDA91: FMemLdR4 var_CC(0)
  loc_BBDA96: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDA9B: CVarStr var_C8
  loc_BBDA9E: PopAdLdVar
  loc_BBDA9F: FLdPr Me
  loc_BBDAA2: MemLdRfVar from_stack_1.global_60
  loc_BBDAA5: LdPrVar
  loc_BBDAA7: LateMemCall
  loc_BBDAAD: FFree1Var var_C8 = ""
  loc_BBDAB0: LitStr vbNullString
  loc_BBDAB3: LitI2_Byte 0
  loc_BBDAB5: LitI2_Byte 0
  loc_BBDAB7: LitI2_Byte 0
  loc_BBDAB9: LitStr "right"
  loc_BBDABC: FMemLdR4 var_CC(4)
  loc_BBDAC1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDAC6: CVarStr var_C8
  loc_BBDAC9: PopAdLdVar
  loc_BBDACA: FLdPr Me
  loc_BBDACD: MemLdRfVar from_stack_1.global_60
  loc_BBDAD0: LdPrVar
  loc_BBDAD2: LateMemCall
  loc_BBDAD8: FFree1Var var_C8 = ""
  loc_BBDADB: LitStr vbNullString
  loc_BBDADE: LitI2_Byte 0
  loc_BBDAE0: LitI2_Byte 0
  loc_BBDAE2: LitI2_Byte 0
  loc_BBDAE4: LitStr "right"
  loc_BBDAE7: FMemLdR4 var_CC(8)
  loc_BBDAEC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDAF1: CVarStr var_C8
  loc_BBDAF4: PopAdLdVar
  loc_BBDAF5: FLdPr Me
  loc_BBDAF8: MemLdRfVar from_stack_1.global_60
  loc_BBDAFB: LdPrVar
  loc_BBDAFD: LateMemCall
  loc_BBDB03: FFree1Var var_C8 = ""
  loc_BBDB06: LitStr vbNullString
  loc_BBDB09: LitI2_Byte 0
  loc_BBDB0B: LitI2_Byte 0
  loc_BBDB0D: LitI2_Byte 0
  loc_BBDB0F: LitStr "right"
  loc_BBDB12: FMemLdR4 var_CC(12)
  loc_BBDB17: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDB1C: CVarStr var_C8
  loc_BBDB1F: PopAdLdVar
  loc_BBDB20: FLdPr Me
  loc_BBDB23: MemLdRfVar from_stack_1.global_60
  loc_BBDB26: LdPrVar
  loc_BBDB28: LateMemCall
  loc_BBDB2E: FFree1Var var_C8 = ""
  loc_BBDB31: LitStr vbNullString
  loc_BBDB34: LitI2_Byte 0
  loc_BBDB36: LitI2_Byte 0
  loc_BBDB38: LitI2_Byte 0
  loc_BBDB3A: LitStr "right"
  loc_BBDB3D: FMemLdR4 var_CC(16)
  loc_BBDB42: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDB47: CVarStr var_C8
  loc_BBDB4A: PopAdLdVar
  loc_BBDB4B: FLdPr Me
  loc_BBDB4E: MemLdRfVar from_stack_1.global_60
  loc_BBDB51: LdPrVar
  loc_BBDB53: LateMemCall
  loc_BBDB59: FFree1Var var_C8 = ""
  loc_BBDB5C: LitStr vbNullString
  loc_BBDB5F: LitI2_Byte 0
  loc_BBDB61: LitI2_Byte 0
  loc_BBDB63: LitI2_Byte 0
  loc_BBDB65: LitStr "right"
  loc_BBDB68: FMemLdR4 var_CC(20)
  loc_BBDB6D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDB72: CVarStr var_C8
  loc_BBDB75: PopAdLdVar
  loc_BBDB76: FLdPr Me
  loc_BBDB79: MemLdRfVar from_stack_1.global_60
  loc_BBDB7C: LdPrVar
  loc_BBDB7E: LateMemCall
  loc_BBDB84: FFree1Var var_C8 = ""
  loc_BBDB87: LitStr vbNullString
  loc_BBDB8A: LitI2_Byte 0
  loc_BBDB8C: LitI2_Byte 0
  loc_BBDB8E: LitI2_Byte 0
  loc_BBDB90: LitStr "right"
  loc_BBDB93: FMemLdR4 var_CC(24)
  loc_BBDB98: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDB9D: CVarStr var_C8
  loc_BBDBA0: PopAdLdVar
  loc_BBDBA1: FLdPr Me
  loc_BBDBA4: MemLdRfVar from_stack_1.global_60
  loc_BBDBA7: LdPrVar
  loc_BBDBA9: LateMemCall
  loc_BBDBAF: FFree1Var var_C8 = ""
  loc_BBDBB2: LitStr vbNullString
  loc_BBDBB5: LitI2_Byte 0
  loc_BBDBB7: LitI2_Byte 0
  loc_BBDBB9: LitI2_Byte 0
  loc_BBDBBB: LitStr "right"
  loc_BBDBBE: FMemLdR4 var_CC(28)
  loc_BBDBC3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDBC8: CVarStr var_C8
  loc_BBDBCB: PopAdLdVar
  loc_BBDBCC: FLdPr Me
  loc_BBDBCF: MemLdRfVar from_stack_1.global_60
  loc_BBDBD2: LdPrVar
  loc_BBDBD4: LateMemCall
  loc_BBDBDA: FFree1Var var_C8 = ""
  loc_BBDBDD: LitStr vbNullString
  loc_BBDBE0: LitI2_Byte 0
  loc_BBDBE2: LitI2_Byte 0
  loc_BBDBE4: LitI2_Byte 0
  loc_BBDBE6: LitStr "right"
  loc_BBDBE9: FMemLdR4 var_CC(32)
  loc_BBDBEE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDBF3: CVarStr var_C8
  loc_BBDBF6: PopAdLdVar
  loc_BBDBF7: FLdPr Me
  loc_BBDBFA: MemLdRfVar from_stack_1.global_60
  loc_BBDBFD: LdPrVar
  loc_BBDBFF: LateMemCall
  loc_BBDC05: FFree1Var var_C8 = ""
  loc_BBDC08: LitStr vbNullString
  loc_BBDC0B: LitI2_Byte 0
  loc_BBDC0D: LitI2_Byte 0
  loc_BBDC0F: LitI2_Byte 0
  loc_BBDC11: LitStr "right"
  loc_BBDC14: FMemLdR4 var_CC(36)
  loc_BBDC19: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDC1E: CVarStr var_C8
  loc_BBDC21: PopAdLdVar
  loc_BBDC22: FLdPr Me
  loc_BBDC25: MemLdRfVar from_stack_1.global_60
  loc_BBDC28: LdPrVar
  loc_BBDC2A: LateMemCall
  loc_BBDC30: FFree1Var var_C8 = ""
  loc_BBDC33: FLdRfVar var_CE
  loc_BBDC36: FLdPr Me
  loc_BBDC39: VCallAd Control_ID_EstadodeDeudaChk
  loc_BBDC3C: FStAdFunc var_88
  loc_BBDC3F: FLdPr var_88
  loc_BBDC42:  = Me.Value
  loc_BBDC47: FLdI2 var_CE
  loc_BBDC4A: LitI2_Byte 1
  loc_BBDC4C: EqI2
  loc_BBDC4D: FFree1Ad var_88
  loc_BBDC50: BranchF loc_BBDCFF
  loc_BBDC53: LitStr vbNullString
  loc_BBDC56: LitI2_Byte 0
  loc_BBDC58: LitI2_Byte 0
  loc_BBDC5A: LitI2_Byte 0
  loc_BBDC5C: LitStr "right"
  loc_BBDC5F: FMemLdR4 var_CC(40)
  loc_BBDC64: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDC69: CVarStr var_C8
  loc_BBDC6C: PopAdLdVar
  loc_BBDC6D: FLdPr Me
  loc_BBDC70: MemLdRfVar from_stack_1.global_60
  loc_BBDC73: LdPrVar
  loc_BBDC75: LateMemCall
  loc_BBDC7B: FFree1Var var_C8 = ""
  loc_BBDC7E: LitStr vbNullString
  loc_BBDC81: LitI2_Byte 0
  loc_BBDC83: LitI2_Byte 0
  loc_BBDC85: LitI2_Byte 0
  loc_BBDC87: LitStr "right"
  loc_BBDC8A: FMemLdR4 var_CC(44)
  loc_BBDC8F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDC94: CVarStr var_C8
  loc_BBDC97: PopAdLdVar
  loc_BBDC98: FLdPr Me
  loc_BBDC9B: MemLdRfVar from_stack_1.global_60
  loc_BBDC9E: LdPrVar
  loc_BBDCA0: LateMemCall
  loc_BBDCA6: FFree1Var var_C8 = ""
  loc_BBDCA9: LitStr vbNullString
  loc_BBDCAC: LitI2_Byte 0
  loc_BBDCAE: LitI2_Byte 0
  loc_BBDCB0: LitI2_Byte 0
  loc_BBDCB2: LitStr "right"
  loc_BBDCB5: FMemLdR4 var_CC(48)
  loc_BBDCBA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDCBF: CVarStr var_C8
  loc_BBDCC2: PopAdLdVar
  loc_BBDCC3: FLdPr Me
  loc_BBDCC6: MemLdRfVar from_stack_1.global_60
  loc_BBDCC9: LdPrVar
  loc_BBDCCB: LateMemCall
  loc_BBDCD1: FFree1Var var_C8 = ""
  loc_BBDCD4: LitStr vbNullString
  loc_BBDCD7: LitI2_Byte 0
  loc_BBDCD9: LitI2_Byte 0
  loc_BBDCDB: LitI2_Byte 0
  loc_BBDCDD: LitStr "right"
  loc_BBDCE0: FMemLdR4 var_CC(52)
  loc_BBDCE5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDCEA: CVarStr var_C8
  loc_BBDCED: PopAdLdVar
  loc_BBDCEE: FLdPr Me
  loc_BBDCF1: MemLdRfVar from_stack_1.global_60
  loc_BBDCF4: LdPrVar
  loc_BBDCF6: LateMemCall
  loc_BBDCFC: FFree1Var var_C8 = ""
  loc_BBDCFF: LitI4 0
  loc_BBDD04: FStR4 var_CC
  loc_BBDD07: LitVarStr var_A8, "     </tr>"
  loc_BBDD0C: PopAdLdVar
  loc_BBDD0D: FLdPr Me
  loc_BBDD10: MemLdRfVar from_stack_1.global_60
  loc_BBDD13: LdPrVar
  loc_BBDD15: LateMemCall
  loc_BBDD1B: LitI4 0
  loc_BBDD20: FStR4 var_98
  loc_BBDD23: AryUnlock
  loc_BBDD26: FLdPr Me
  loc_BBDD29: MemLdRfVar from_stack_1.global_104
  loc_BBDD2C: NextI4 var_90, loc_BBD9AA
  loc_BBDD31: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_BBDD36: PopAdLdVar
  loc_BBDD37: FLdPr Me
  loc_BBDD3A: MemLdRfVar from_stack_1.global_60
  loc_BBDD3D: LdPrVar
  loc_BBDD3F: LateMemCall
  loc_BBDD45: LitVarStr var_A8, "    <td colspan=""4"" align=""right"">Totales</td>"
  loc_BBDD4A: PopAdLdVar
  loc_BBDD4B: FLdPr Me
  loc_BBDD4E: MemLdRfVar from_stack_1.global_60
  loc_BBDD51: LdPrVar
  loc_BBDD53: LateMemCall
  loc_BBDD59: LitI4 1
  loc_BBDD5E: FLdPr Me
  loc_BBDD61: MemLdStr global_108
  loc_BBDD64: AryLock
  loc_BBDD67: Ary1LdRf
  loc_BBDD68: FStR4 var_D8
  loc_BBDD6B: LitStr vbNullString
  loc_BBDD6E: LitI2_Byte 0
  loc_BBDD70: LitI2_Byte 0
  loc_BBDD72: LitI2_Byte 0
  loc_BBDD74: LitStr "right"
  loc_BBDD77: FMemLdR4 var_D8(0)
  loc_BBDD7C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDD81: CVarStr var_C8
  loc_BBDD84: PopAdLdVar
  loc_BBDD85: FLdPr Me
  loc_BBDD88: MemLdRfVar from_stack_1.global_60
  loc_BBDD8B: LdPrVar
  loc_BBDD8D: LateMemCall
  loc_BBDD93: FFree1Var var_C8 = ""
  loc_BBDD96: LitStr vbNullString
  loc_BBDD99: LitI2_Byte 0
  loc_BBDD9B: LitI2_Byte 0
  loc_BBDD9D: LitI2_Byte 0
  loc_BBDD9F: LitStr "right"
  loc_BBDDA2: FMemLdR4 var_D8(4)
  loc_BBDDA7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDDAC: CVarStr var_C8
  loc_BBDDAF: PopAdLdVar
  loc_BBDDB0: FLdPr Me
  loc_BBDDB3: MemLdRfVar from_stack_1.global_60
  loc_BBDDB6: LdPrVar
  loc_BBDDB8: LateMemCall
  loc_BBDDBE: FFree1Var var_C8 = ""
  loc_BBDDC1: LitStr vbNullString
  loc_BBDDC4: LitI2_Byte 0
  loc_BBDDC6: LitI2_Byte 0
  loc_BBDDC8: LitI2_Byte 0
  loc_BBDDCA: LitStr "right"
  loc_BBDDCD: FMemLdR4 var_D8(8)
  loc_BBDDD2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDDD7: CVarStr var_C8
  loc_BBDDDA: PopAdLdVar
  loc_BBDDDB: FLdPr Me
  loc_BBDDDE: MemLdRfVar from_stack_1.global_60
  loc_BBDDE1: LdPrVar
  loc_BBDDE3: LateMemCall
  loc_BBDDE9: FFree1Var var_C8 = ""
  loc_BBDDEC: LitStr vbNullString
  loc_BBDDEF: LitI2_Byte 0
  loc_BBDDF1: LitI2_Byte 0
  loc_BBDDF3: LitI2_Byte 0
  loc_BBDDF5: LitStr "right"
  loc_BBDDF8: FMemLdR4 var_D8(12)
  loc_BBDDFD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDE02: CVarStr var_C8
  loc_BBDE05: PopAdLdVar
  loc_BBDE06: FLdPr Me
  loc_BBDE09: MemLdRfVar from_stack_1.global_60
  loc_BBDE0C: LdPrVar
  loc_BBDE0E: LateMemCall
  loc_BBDE14: FFree1Var var_C8 = ""
  loc_BBDE17: LitStr vbNullString
  loc_BBDE1A: LitI2_Byte 0
  loc_BBDE1C: LitI2_Byte 0
  loc_BBDE1E: LitI2_Byte 0
  loc_BBDE20: LitStr "right"
  loc_BBDE23: FMemLdR4 var_D8(16)
  loc_BBDE28: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDE2D: CVarStr var_C8
  loc_BBDE30: PopAdLdVar
  loc_BBDE31: FLdPr Me
  loc_BBDE34: MemLdRfVar from_stack_1.global_60
  loc_BBDE37: LdPrVar
  loc_BBDE39: LateMemCall
  loc_BBDE3F: FFree1Var var_C8 = ""
  loc_BBDE42: LitStr vbNullString
  loc_BBDE45: LitI2_Byte 0
  loc_BBDE47: LitI2_Byte 0
  loc_BBDE49: LitI2_Byte 0
  loc_BBDE4B: LitStr "right"
  loc_BBDE4E: FMemLdR4 var_D8(20)
  loc_BBDE53: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDE58: CVarStr var_C8
  loc_BBDE5B: PopAdLdVar
  loc_BBDE5C: FLdPr Me
  loc_BBDE5F: MemLdRfVar from_stack_1.global_60
  loc_BBDE62: LdPrVar
  loc_BBDE64: LateMemCall
  loc_BBDE6A: FFree1Var var_C8 = ""
  loc_BBDE6D: LitStr vbNullString
  loc_BBDE70: LitI2_Byte 0
  loc_BBDE72: LitI2_Byte 0
  loc_BBDE74: LitI2_Byte 0
  loc_BBDE76: LitStr "right"
  loc_BBDE79: FMemLdR4 var_D8(24)
  loc_BBDE7E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDE83: CVarStr var_C8
  loc_BBDE86: PopAdLdVar
  loc_BBDE87: FLdPr Me
  loc_BBDE8A: MemLdRfVar from_stack_1.global_60
  loc_BBDE8D: LdPrVar
  loc_BBDE8F: LateMemCall
  loc_BBDE95: FFree1Var var_C8 = ""
  loc_BBDE98: LitStr vbNullString
  loc_BBDE9B: LitI2_Byte 0
  loc_BBDE9D: LitI2_Byte 0
  loc_BBDE9F: LitI2_Byte 0
  loc_BBDEA1: LitStr "right"
  loc_BBDEA4: FMemLdR4 var_D8(28)
  loc_BBDEA9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDEAE: CVarStr var_C8
  loc_BBDEB1: PopAdLdVar
  loc_BBDEB2: FLdPr Me
  loc_BBDEB5: MemLdRfVar from_stack_1.global_60
  loc_BBDEB8: LdPrVar
  loc_BBDEBA: LateMemCall
  loc_BBDEC0: FFree1Var var_C8 = ""
  loc_BBDEC3: LitStr vbNullString
  loc_BBDEC6: LitI2_Byte 0
  loc_BBDEC8: LitI2_Byte 0
  loc_BBDECA: LitI2_Byte 0
  loc_BBDECC: LitStr "right"
  loc_BBDECF: FMemLdR4 var_D8(32)
  loc_BBDED4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDED9: CVarStr var_C8
  loc_BBDEDC: PopAdLdVar
  loc_BBDEDD: FLdPr Me
  loc_BBDEE0: MemLdRfVar from_stack_1.global_60
  loc_BBDEE3: LdPrVar
  loc_BBDEE5: LateMemCall
  loc_BBDEEB: FFree1Var var_C8 = ""
  loc_BBDEEE: LitStr vbNullString
  loc_BBDEF1: LitI2_Byte 0
  loc_BBDEF3: LitI2_Byte 0
  loc_BBDEF5: LitI2_Byte 0
  loc_BBDEF7: LitStr "right"
  loc_BBDEFA: FMemLdR4 var_D8(36)
  loc_BBDEFF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDF04: CVarStr var_C8
  loc_BBDF07: PopAdLdVar
  loc_BBDF08: FLdPr Me
  loc_BBDF0B: MemLdRfVar from_stack_1.global_60
  loc_BBDF0E: LdPrVar
  loc_BBDF10: LateMemCall
  loc_BBDF16: FFree1Var var_C8 = ""
  loc_BBDF19: FLdRfVar var_CE
  loc_BBDF1C: FLdPr Me
  loc_BBDF1F: VCallAd Control_ID_EstadodeDeudaChk
  loc_BBDF22: FStAdFunc var_88
  loc_BBDF25: FLdPr var_88
  loc_BBDF28:  = Me.Value
  loc_BBDF2D: FLdI2 var_CE
  loc_BBDF30: LitI2_Byte 1
  loc_BBDF32: EqI2
  loc_BBDF33: FFree1Ad var_88
  loc_BBDF36: BranchF loc_BBDFE5
  loc_BBDF39: LitStr vbNullString
  loc_BBDF3C: LitI2_Byte 0
  loc_BBDF3E: LitI2_Byte 0
  loc_BBDF40: LitI2_Byte 0
  loc_BBDF42: LitStr "right"
  loc_BBDF45: FMemLdR4 var_D8(40)
  loc_BBDF4A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDF4F: CVarStr var_C8
  loc_BBDF52: PopAdLdVar
  loc_BBDF53: FLdPr Me
  loc_BBDF56: MemLdRfVar from_stack_1.global_60
  loc_BBDF59: LdPrVar
  loc_BBDF5B: LateMemCall
  loc_BBDF61: FFree1Var var_C8 = ""
  loc_BBDF64: LitStr vbNullString
  loc_BBDF67: LitI2_Byte 0
  loc_BBDF69: LitI2_Byte 0
  loc_BBDF6B: LitI2_Byte 0
  loc_BBDF6D: LitStr "right"
  loc_BBDF70: FMemLdR4 var_D8(44)
  loc_BBDF75: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDF7A: CVarStr var_C8
  loc_BBDF7D: PopAdLdVar
  loc_BBDF7E: FLdPr Me
  loc_BBDF81: MemLdRfVar from_stack_1.global_60
  loc_BBDF84: LdPrVar
  loc_BBDF86: LateMemCall
  loc_BBDF8C: FFree1Var var_C8 = ""
  loc_BBDF8F: LitStr vbNullString
  loc_BBDF92: LitI2_Byte 0
  loc_BBDF94: LitI2_Byte 0
  loc_BBDF96: LitI2_Byte 0
  loc_BBDF98: LitStr "right"
  loc_BBDF9B: FMemLdR4 var_D8(48)
  loc_BBDFA0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDFA5: CVarStr var_C8
  loc_BBDFA8: PopAdLdVar
  loc_BBDFA9: FLdPr Me
  loc_BBDFAC: MemLdRfVar from_stack_1.global_60
  loc_BBDFAF: LdPrVar
  loc_BBDFB1: LateMemCall
  loc_BBDFB7: FFree1Var var_C8 = ""
  loc_BBDFBA: LitStr vbNullString
  loc_BBDFBD: LitI2_Byte 0
  loc_BBDFBF: LitI2_Byte 0
  loc_BBDFC1: LitI2_Byte 0
  loc_BBDFC3: LitStr "right"
  loc_BBDFC6: FMemLdR4 var_D8(52)
  loc_BBDFCB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BBDFD0: CVarStr var_C8
  loc_BBDFD3: PopAdLdVar
  loc_BBDFD4: FLdPr Me
  loc_BBDFD7: MemLdRfVar from_stack_1.global_60
  loc_BBDFDA: LdPrVar
  loc_BBDFDC: LateMemCall
  loc_BBDFE2: FFree1Var var_C8 = ""
  loc_BBDFE5: LitI4 0
  loc_BBDFEA: FStR4 var_D8
  loc_BBDFED: AryUnlock
  loc_BBDFF0: LitVarStr var_A8, "     </tr>"
  loc_BBDFF5: PopAdLdVar
  loc_BBDFF6: FLdPr Me
  loc_BBDFF9: MemLdRfVar from_stack_1.global_60
  loc_BBDFFC: LdPrVar
  loc_BBDFFE: LateMemCall
  loc_BBE004: Call Proc_321_32_A0E588()
  loc_BBE009: FLdPr Me
  loc_BBE00C: MemLdRfVar from_stack_1.global_60
  loc_BBE00F: LdPrVar
  loc_BBE011: LateMemCall
  loc_BBE017: LitStr vbNullString
  loc_BBE01A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BBE01F: ExitProcHresult
End Sub

Private Function Proc_321_31_BFD2D0() 'BFD2D0
  'Data Table: 4EEFEC
  loc_BFC9FC: LitVarStr var_98, "<html>"
  loc_BFCA01: PopAdLdVar
  loc_BFCA02: FLdPr Me
  loc_BFCA05: MemLdRfVar from_stack_1.global_60
  loc_BFCA08: LdPrVar
  loc_BFCA0A: LateMemCall
  loc_BFCA10: LitVarStr var_98, "<head>"
  loc_BFCA15: PopAdLdVar
  loc_BFCA16: FLdPr Me
  loc_BFCA19: MemLdRfVar from_stack_1.global_60
  loc_BFCA1C: LdPrVar
  loc_BFCA1E: LateMemCall
  loc_BFCA24: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BFCA29: PopAdLdVar
  loc_BFCA2A: FLdPr Me
  loc_BFCA2D: MemLdRfVar from_stack_1.global_60
  loc_BFCA30: LdPrVar
  loc_BFCA32: LateMemCall
  loc_BFCA38: LitStr "<title>"
  loc_BFCA3B: FLdRfVar var_AC
  loc_BFCA3E: FLdPr Me
  loc_BFCA41:  = Me.Caption
  loc_BFCA46: ILdRf var_AC
  loc_BFCA49: ConcatStr
  loc_BFCA4A: FStStrNoPop var_B0
  loc_BFCA4D: LitStr "</title>"
  loc_BFCA50: ConcatStr
  loc_BFCA51: CVarStr var_C0
  loc_BFCA54: PopAdLdVar
  loc_BFCA55: FLdPr Me
  loc_BFCA58: MemLdRfVar from_stack_1.global_60
  loc_BFCA5B: LdPrVar
  loc_BFCA5D: LateMemCall
  loc_BFCA63: FFreeStr var_AC = ""
  loc_BFCA6A: FFree1Var var_C0 = ""
  loc_BFCA6D: LitVarStr var_98, "<style type=""text/css"">"
  loc_BFCA72: PopAdLdVar
  loc_BFCA73: FLdPr Me
  loc_BFCA76: MemLdRfVar from_stack_1.global_60
  loc_BFCA79: LdPrVar
  loc_BFCA7B: LateMemCall
  loc_BFCA81: LitVarStr var_98, ".Titulo1 {"
  loc_BFCA86: PopAdLdVar
  loc_BFCA87: FLdPr Me
  loc_BFCA8A: MemLdRfVar from_stack_1.global_60
  loc_BFCA8D: LdPrVar
  loc_BFCA8F: LateMemCall
  loc_BFCA95: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFCA9A: PopAdLdVar
  loc_BFCA9B: FLdPr Me
  loc_BFCA9E: MemLdRfVar from_stack_1.global_60
  loc_BFCAA1: LdPrVar
  loc_BFCAA3: LateMemCall
  loc_BFCAA9: LitVarStr var_98, " font-size: 18px;"
  loc_BFCAAE: PopAdLdVar
  loc_BFCAAF: FLdPr Me
  loc_BFCAB2: MemLdRfVar from_stack_1.global_60
  loc_BFCAB5: LdPrVar
  loc_BFCAB7: LateMemCall
  loc_BFCABD: LitVarStr var_98, " font-weight: bold;"
  loc_BFCAC2: PopAdLdVar
  loc_BFCAC3: FLdPr Me
  loc_BFCAC6: MemLdRfVar from_stack_1.global_60
  loc_BFCAC9: LdPrVar
  loc_BFCACB: LateMemCall
  loc_BFCAD1: LitVarStr var_98, "}"
  loc_BFCAD6: PopAdLdVar
  loc_BFCAD7: FLdPr Me
  loc_BFCADA: MemLdRfVar from_stack_1.global_60
  loc_BFCADD: LdPrVar
  loc_BFCADF: LateMemCall
  loc_BFCAE5: LitVarStr var_98, ".Titulo2 {"
  loc_BFCAEA: PopAdLdVar
  loc_BFCAEB: FLdPr Me
  loc_BFCAEE: MemLdRfVar from_stack_1.global_60
  loc_BFCAF1: LdPrVar
  loc_BFCAF3: LateMemCall
  loc_BFCAF9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFCAFE: PopAdLdVar
  loc_BFCAFF: FLdPr Me
  loc_BFCB02: MemLdRfVar from_stack_1.global_60
  loc_BFCB05: LdPrVar
  loc_BFCB07: LateMemCall
  loc_BFCB0D: LitVarStr var_98, " font-size: 14px;"
  loc_BFCB12: PopAdLdVar
  loc_BFCB13: FLdPr Me
  loc_BFCB16: MemLdRfVar from_stack_1.global_60
  loc_BFCB19: LdPrVar
  loc_BFCB1B: LateMemCall
  loc_BFCB21: LitVarStr var_98, " font-weight: bold;"
  loc_BFCB26: PopAdLdVar
  loc_BFCB27: FLdPr Me
  loc_BFCB2A: MemLdRfVar from_stack_1.global_60
  loc_BFCB2D: LdPrVar
  loc_BFCB2F: LateMemCall
  loc_BFCB35: LitVarStr var_98, "}"
  loc_BFCB3A: PopAdLdVar
  loc_BFCB3B: FLdPr Me
  loc_BFCB3E: MemLdRfVar from_stack_1.global_60
  loc_BFCB41: LdPrVar
  loc_BFCB43: LateMemCall
  loc_BFCB49: LitVarStr var_98, ".Normal {"
  loc_BFCB4E: PopAdLdVar
  loc_BFCB4F: FLdPr Me
  loc_BFCB52: MemLdRfVar from_stack_1.global_60
  loc_BFCB55: LdPrVar
  loc_BFCB57: LateMemCall
  loc_BFCB5D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFCB62: PopAdLdVar
  loc_BFCB63: FLdPr Me
  loc_BFCB66: MemLdRfVar from_stack_1.global_60
  loc_BFCB69: LdPrVar
  loc_BFCB6B: LateMemCall
  loc_BFCB71: LitVarStr var_98, " font-size: 12px;"
  loc_BFCB76: PopAdLdVar
  loc_BFCB77: FLdPr Me
  loc_BFCB7A: MemLdRfVar from_stack_1.global_60
  loc_BFCB7D: LdPrVar
  loc_BFCB7F: LateMemCall
  loc_BFCB85: LitVarStr var_98, " font-style: normal;"
  loc_BFCB8A: PopAdLdVar
  loc_BFCB8B: FLdPr Me
  loc_BFCB8E: MemLdRfVar from_stack_1.global_60
  loc_BFCB91: LdPrVar
  loc_BFCB93: LateMemCall
  loc_BFCB99: LitVarStr var_98, " font-weight: normal;"
  loc_BFCB9E: PopAdLdVar
  loc_BFCB9F: FLdPr Me
  loc_BFCBA2: MemLdRfVar from_stack_1.global_60
  loc_BFCBA5: LdPrVar
  loc_BFCBA7: LateMemCall
  loc_BFCBAD: LitVarStr var_98, " font-variant: normal;"
  loc_BFCBB2: PopAdLdVar
  loc_BFCBB3: FLdPr Me
  loc_BFCBB6: MemLdRfVar from_stack_1.global_60
  loc_BFCBB9: LdPrVar
  loc_BFCBBB: LateMemCall
  loc_BFCBC1: LitVarStr var_98, "}"
  loc_BFCBC6: PopAdLdVar
  loc_BFCBC7: FLdPr Me
  loc_BFCBCA: MemLdRfVar from_stack_1.global_60
  loc_BFCBCD: LdPrVar
  loc_BFCBCF: LateMemCall
  loc_BFCBD5: LitVarStr var_98, ".Encabezado {"
  loc_BFCBDA: PopAdLdVar
  loc_BFCBDB: FLdPr Me
  loc_BFCBDE: MemLdRfVar from_stack_1.global_60
  loc_BFCBE1: LdPrVar
  loc_BFCBE3: LateMemCall
  loc_BFCBE9: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BFCBEE: PopAdLdVar
  loc_BFCBEF: FLdPr Me
  loc_BFCBF2: MemLdRfVar from_stack_1.global_60
  loc_BFCBF5: LdPrVar
  loc_BFCBF7: LateMemCall
  loc_BFCBFD: LitVarStr var_98, " font-size: 11px;"
  loc_BFCC02: PopAdLdVar
  loc_BFCC03: FLdPr Me
  loc_BFCC06: MemLdRfVar from_stack_1.global_60
  loc_BFCC09: LdPrVar
  loc_BFCC0B: LateMemCall
  loc_BFCC11: LitVarStr var_98, " font-weight: bold;"
  loc_BFCC16: PopAdLdVar
  loc_BFCC17: FLdPr Me
  loc_BFCC1A: MemLdRfVar from_stack_1.global_60
  loc_BFCC1D: LdPrVar
  loc_BFCC1F: LateMemCall
  loc_BFCC25: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BFCC2A: PopAdLdVar
  loc_BFCC2B: FLdPr Me
  loc_BFCC2E: MemLdRfVar from_stack_1.global_60
  loc_BFCC31: LdPrVar
  loc_BFCC33: LateMemCall
  loc_BFCC39: LitVarStr var_98, "}"
  loc_BFCC3E: PopAdLdVar
  loc_BFCC3F: FLdPr Me
  loc_BFCC42: MemLdRfVar from_stack_1.global_60
  loc_BFCC45: LdPrVar
  loc_BFCC47: LateMemCall
  loc_BFCC4D: LitVarStr var_98, ".LineaDato {"
  loc_BFCC52: PopAdLdVar
  loc_BFCC53: FLdPr Me
  loc_BFCC56: MemLdRfVar from_stack_1.global_60
  loc_BFCC59: LdPrVar
  loc_BFCC5B: LateMemCall
  loc_BFCC61: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BFCC66: PopAdLdVar
  loc_BFCC67: FLdPr Me
  loc_BFCC6A: MemLdRfVar from_stack_1.global_60
  loc_BFCC6D: LdPrVar
  loc_BFCC6F: LateMemCall
  loc_BFCC75: LitVarStr var_98, " font-size: 10px;"
  loc_BFCC7A: PopAdLdVar
  loc_BFCC7B: FLdPr Me
  loc_BFCC7E: MemLdRfVar from_stack_1.global_60
  loc_BFCC81: LdPrVar
  loc_BFCC83: LateMemCall
  loc_BFCC89: LitVarStr var_98, "}"
  loc_BFCC8E: PopAdLdVar
  loc_BFCC8F: FLdPr Me
  loc_BFCC92: MemLdRfVar from_stack_1.global_60
  loc_BFCC95: LdPrVar
  loc_BFCC97: LateMemCall
  loc_BFCC9D: LitVarStr var_98, ".Totales {"
  loc_BFCCA2: PopAdLdVar
  loc_BFCCA3: FLdPr Me
  loc_BFCCA6: MemLdRfVar from_stack_1.global_60
  loc_BFCCA9: LdPrVar
  loc_BFCCAB: LateMemCall
  loc_BFCCB1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BFCCB6: PopAdLdVar
  loc_BFCCB7: FLdPr Me
  loc_BFCCBA: MemLdRfVar from_stack_1.global_60
  loc_BFCCBD: LdPrVar
  loc_BFCCBF: LateMemCall
  loc_BFCCC5: LitVarStr var_98, " font-size: 12px;"
  loc_BFCCCA: PopAdLdVar
  loc_BFCCCB: FLdPr Me
  loc_BFCCCE: MemLdRfVar from_stack_1.global_60
  loc_BFCCD1: LdPrVar
  loc_BFCCD3: LateMemCall
  loc_BFCCD9: LitVarStr var_98, " font-weight: bold;"
  loc_BFCCDE: PopAdLdVar
  loc_BFCCDF: FLdPr Me
  loc_BFCCE2: MemLdRfVar from_stack_1.global_60
  loc_BFCCE5: LdPrVar
  loc_BFCCE7: LateMemCall
  loc_BFCCED: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BFCCF2: PopAdLdVar
  loc_BFCCF3: FLdPr Me
  loc_BFCCF6: MemLdRfVar from_stack_1.global_60
  loc_BFCCF9: LdPrVar
  loc_BFCCFB: LateMemCall
  loc_BFCD01: LitVarStr var_98, "}"
  loc_BFCD06: PopAdLdVar
  loc_BFCD07: FLdPr Me
  loc_BFCD0A: MemLdRfVar from_stack_1.global_60
  loc_BFCD0D: LdPrVar
  loc_BFCD0F: LateMemCall
  loc_BFCD15: LitVarStr var_98, ".SubTotales {"
  loc_BFCD1A: PopAdLdVar
  loc_BFCD1B: FLdPr Me
  loc_BFCD1E: MemLdRfVar from_stack_1.global_60
  loc_BFCD21: LdPrVar
  loc_BFCD23: LateMemCall
  loc_BFCD29: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BFCD2E: PopAdLdVar
  loc_BFCD2F: FLdPr Me
  loc_BFCD32: MemLdRfVar from_stack_1.global_60
  loc_BFCD35: LdPrVar
  loc_BFCD37: LateMemCall
  loc_BFCD3D: LitVarStr var_98, " font-size: 10px;"
  loc_BFCD42: PopAdLdVar
  loc_BFCD43: FLdPr Me
  loc_BFCD46: MemLdRfVar from_stack_1.global_60
  loc_BFCD49: LdPrVar
  loc_BFCD4B: LateMemCall
  loc_BFCD51: LitVarStr var_98, " font-weight: bold;"
  loc_BFCD56: PopAdLdVar
  loc_BFCD57: FLdPr Me
  loc_BFCD5A: MemLdRfVar from_stack_1.global_60
  loc_BFCD5D: LdPrVar
  loc_BFCD5F: LateMemCall
  loc_BFCD65: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BFCD6A: PopAdLdVar
  loc_BFCD6B: FLdPr Me
  loc_BFCD6E: MemLdRfVar from_stack_1.global_60
  loc_BFCD71: LdPrVar
  loc_BFCD73: LateMemCall
  loc_BFCD79: LitVarStr var_98, "}"
  loc_BFCD7E: PopAdLdVar
  loc_BFCD7F: FLdPr Me
  loc_BFCD82: MemLdRfVar from_stack_1.global_60
  loc_BFCD85: LdPrVar
  loc_BFCD87: LateMemCall
  loc_BFCD8D: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BFCD92: PopAdLdVar
  loc_BFCD93: FLdPr Me
  loc_BFCD96: MemLdRfVar from_stack_1.global_60
  loc_BFCD99: LdPrVar
  loc_BFCD9B: LateMemCall
  loc_BFCDA1: LitVarStr var_98, "</style>"
  loc_BFCDA6: PopAdLdVar
  loc_BFCDA7: FLdPr Me
  loc_BFCDAA: MemLdRfVar from_stack_1.global_60
  loc_BFCDAD: LdPrVar
  loc_BFCDAF: LateMemCall
  loc_BFCDB5: LitI4 0
  loc_BFCDBA: FStStrCopy var_B0
  loc_BFCDBD: FLdRfVar var_B0
  loc_BFCDC0: LitI4 0
  loc_BFCDC5: FStStrCopy var_AC
  loc_BFCDC8: FLdRfVar var_AC
  loc_BFCDCB: LitI2_Byte &HFF
  loc_BFCDCD: PopTmpLdAd2 var_C2
  loc_BFCDD0: FLdPr Me
  loc_BFCDD3: MemLdRfVar from_stack_1.global_60
  loc_BFCDD6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BFCDDB: FFreeStr var_AC = ""
  loc_BFCDE2: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BFCDE7: PopAdLdVar
  loc_BFCDE8: FLdPr Me
  loc_BFCDEB: MemLdRfVar from_stack_1.global_60
  loc_BFCDEE: LdPrVar
  loc_BFCDF0: LateMemCall
  loc_BFCDF6: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BFCDFB: PopAdLdVar
  loc_BFCDFC: FLdPr Me
  loc_BFCDFF: MemLdRfVar from_stack_1.global_60
  loc_BFCE02: LdPrVar
  loc_BFCE04: LateMemCall
  loc_BFCE0A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BFCE0D: LitI2_Byte &H5F
  loc_BFCE0F: CStrUI1
  loc_BFCE11: FStStrNoPop var_AC
  loc_BFCE14: ConcatStr
  loc_BFCE15: FStStrNoPop var_B0
  loc_BFCE18: LitStr """ height="""
  loc_BFCE1B: ConcatStr
  loc_BFCE1C: FStStrNoPop var_C8
  loc_BFCE1F: LitI2_Byte &H3C
  loc_BFCE21: CStrUI1
  loc_BFCE23: FStStrNoPop var_CC
  loc_BFCE26: ConcatStr
  loc_BFCE27: FStStrNoPop var_D0
  loc_BFCE2A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BFCE2D: ConcatStr
  loc_BFCE2E: FStStrNoPop var_D4
  loc_BFCE31: LitStr "Municipalidad de Guaymallén"
  loc_BFCE34: ConcatStr
  loc_BFCE35: FStStrNoPop var_D8
  loc_BFCE38: LitStr "</p>"
  loc_BFCE3B: ConcatStr
  loc_BFCE3C: CVarStr var_C0
  loc_BFCE3F: PopAdLdVar
  loc_BFCE40: FLdPr Me
  loc_BFCE43: MemLdRfVar from_stack_1.global_60
  loc_BFCE46: LdPrVar
  loc_BFCE48: LateMemCall
  loc_BFCE4E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BFCE5F: FFree1Var var_C0 = ""
  loc_BFCE62: LitStr "    <p>"
  loc_BFCE65: FLdRfVar var_AC
  loc_BFCE68: FLdPr Me
  loc_BFCE6B:  = Me.Caption
  loc_BFCE70: ILdRf var_AC
  loc_BFCE73: ConcatStr
  loc_BFCE74: FStStrNoPop var_B0
  loc_BFCE77: LitStr "</p></th>"
  loc_BFCE7A: ConcatStr
  loc_BFCE7B: CVarStr var_C0
  loc_BFCE7E: PopAdLdVar
  loc_BFCE7F: FLdPr Me
  loc_BFCE82: MemLdRfVar from_stack_1.global_60
  loc_BFCE85: LdPrVar
  loc_BFCE87: LateMemCall
  loc_BFCE8D: FFreeStr var_AC = ""
  loc_BFCE94: FFree1Var var_C0 = ""
  loc_BFCE97: LitVarStr var_98, "  </tr>"
  loc_BFCE9C: PopAdLdVar
  loc_BFCE9D: FLdPr Me
  loc_BFCEA0: MemLdRfVar from_stack_1.global_60
  loc_BFCEA3: LdPrVar
  loc_BFCEA5: LateMemCall
  loc_BFCEAB: LitVarStr var_98, "  <tr>"
  loc_BFCEB0: PopAdLdVar
  loc_BFCEB1: FLdPr Me
  loc_BFCEB4: MemLdRfVar from_stack_1.global_60
  loc_BFCEB7: LdPrVar
  loc_BFCEB9: LateMemCall
  loc_BFCEBF: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BFCEC4: PopAdLdVar
  loc_BFCEC5: FLdPr Me
  loc_BFCEC8: MemLdRfVar from_stack_1.global_60
  loc_BFCECB: LdPrVar
  loc_BFCECD: LateMemCall
  loc_BFCED3: LitVarStr var_98, "  </tr>"
  loc_BFCED8: PopAdLdVar
  loc_BFCED9: FLdPr Me
  loc_BFCEDC: MemLdRfVar from_stack_1.global_60
  loc_BFCEDF: LdPrVar
  loc_BFCEE1: LateMemCall
  loc_BFCEE7: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BFCEEC: PopAdLdVar
  loc_BFCEED: FLdPr Me
  loc_BFCEF0: MemLdRfVar from_stack_1.global_60
  loc_BFCEF3: LdPrVar
  loc_BFCEF5: LateMemCall
  loc_BFCEFB: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BFCEFE: FLdPr Me
  loc_BFCF01: VCallAd Control_ID_DesdeMsk
  loc_BFCF04: FStAdFunc var_DC
  loc_BFCF07: FLdPr var_DC
  loc_BFCF0A: LateIdLdVar var_C0 DispID_15 0
  loc_BFCF11: CStrVarTmp
  loc_BFCF12: FStStrNoPop var_AC
  loc_BFCF15: ConcatStr
  loc_BFCF16: FStStrNoPop var_B0
  loc_BFCF19: LitStr "</td>"
  loc_BFCF1C: ConcatStr
  loc_BFCF1D: CVarStr var_EC
  loc_BFCF20: PopAdLdVar
  loc_BFCF21: FLdPr Me
  loc_BFCF24: MemLdRfVar from_stack_1.global_60
  loc_BFCF27: LdPrVar
  loc_BFCF29: LateMemCall
  loc_BFCF2F: FFreeStr var_AC = ""
  loc_BFCF36: FFree1Ad var_DC
  loc_BFCF39: FFreeVar var_C0 = ""
  loc_BFCF40: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BFCF43: FLdPr Me
  loc_BFCF46: VCallAd Control_ID_HastaMsk
  loc_BFCF49: FStAdFunc var_DC
  loc_BFCF4C: FLdPr var_DC
  loc_BFCF4F: LateIdLdVar var_C0 DispID_15 0
  loc_BFCF56: CStrVarTmp
  loc_BFCF57: FStStrNoPop var_AC
  loc_BFCF5A: ConcatStr
  loc_BFCF5B: FStStrNoPop var_B0
  loc_BFCF5E: LitStr "</td>"
  loc_BFCF61: ConcatStr
  loc_BFCF62: CVarStr var_EC
  loc_BFCF65: PopAdLdVar
  loc_BFCF66: FLdPr Me
  loc_BFCF69: MemLdRfVar from_stack_1.global_60
  loc_BFCF6C: LdPrVar
  loc_BFCF6E: LateMemCall
  loc_BFCF74: FFreeStr var_AC = ""
  loc_BFCF7B: FFree1Ad var_DC
  loc_BFCF7E: FFreeVar var_C0 = ""
  loc_BFCF85: LitVarStr var_98, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BFCF8A: PopAdLdVar
  loc_BFCF8B: FLdPr Me
  loc_BFCF8E: MemLdRfVar from_stack_1.global_60
  loc_BFCF91: LdPrVar
  loc_BFCF93: LateMemCall
  loc_BFCF99: LitVarStr var_98, "  </tr>"
  loc_BFCF9E: PopAdLdVar
  loc_BFCF9F: FLdPr Me
  loc_BFCFA2: MemLdRfVar from_stack_1.global_60
  loc_BFCFA5: LdPrVar
  loc_BFCFA7: LateMemCall
  loc_BFCFAD: LitVarStr var_98, "</table>"
  loc_BFCFB2: PopAdLdVar
  loc_BFCFB3: FLdPr Me
  loc_BFCFB6: MemLdRfVar from_stack_1.global_60
  loc_BFCFB9: LdPrVar
  loc_BFCFBB: LateMemCall
  loc_BFCFC1: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BFCFC6: PopAdLdVar
  loc_BFCFC7: FLdPr Me
  loc_BFCFCA: MemLdRfVar from_stack_1.global_60
  loc_BFCFCD: LdPrVar
  loc_BFCFCF: LateMemCall
  loc_BFCFD5: LitVarStr var_98, "  <thead>"
  loc_BFCFDA: PopAdLdVar
  loc_BFCFDB: FLdPr Me
  loc_BFCFDE: MemLdRfVar from_stack_1.global_60
  loc_BFCFE1: LdPrVar
  loc_BFCFE3: LateMemCall
  loc_BFCFE9: FLdRfVar var_C2
  loc_BFCFEC: FLdPr Me
  loc_BFCFEF: VCallAd Control_ID_CuentaContableOpt
  loc_BFCFF2: FStAdFunc var_DC
  loc_BFCFF5: FLdPr var_DC
  loc_BFCFF8:  = Me.Value
  loc_BFCFFD: FLdI2 var_C2
  loc_BFD000: LitI2_Byte &HFF
  loc_BFD002: EqI2
  loc_BFD003: FFree1Ad var_DC
  loc_BFD006: BranchF loc_BFD07A
  loc_BFD009: LitStr "  <tr><th colspan=""16"" align=""center"" class=""Encabezado"">Cuenta Contable: "
  loc_BFD00C: FLdPr Me
  loc_BFD00F: VCallAd Control_ID_ActiConcMsk
  loc_BFD012: FStAdFunc var_DC
  loc_BFD015: FLdPr var_DC
  loc_BFD018: LateIdLdVar var_C0 DispID_22 0
  loc_BFD01F: CStrVarTmp
  loc_BFD020: FStStrNoPop var_AC
  loc_BFD023: ConcatStr
  loc_BFD024: FStStrNoPop var_B0
  loc_BFD027: LitStr " - "
  loc_BFD02A: ConcatStr
  loc_BFD02B: FStStrNoPop var_CC
  loc_BFD02E: FLdRfVar var_C8
  loc_BFD031: FLdPr Me
  loc_BFD034: VCallAd Control_ID_DetaActiLbl
  loc_BFD037: FStAdFunc var_F0
  loc_BFD03A: FLdPr var_F0
  loc_BFD03D:  = Me.Caption
  loc_BFD042: ILdRf var_C8
  loc_BFD045: ConcatStr
  loc_BFD046: FStStrNoPop var_D0
  loc_BFD049: LitStr "</th></tr>"
  loc_BFD04C: ConcatStr
  loc_BFD04D: CVarStr var_EC
  loc_BFD050: PopAdLdVar
  loc_BFD051: FLdPr Me
  loc_BFD054: MemLdRfVar from_stack_1.global_60
  loc_BFD057: LdPrVar
  loc_BFD059: LateMemCall
  loc_BFD05F: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_BFD06C: FFreeAd var_DC = ""
  loc_BFD073: FFreeVar var_C0 = ""
  loc_BFD07A: FLdRfVar var_C2
  loc_BFD07D: FLdPr Me
  loc_BFD080: VCallAd Control_ID_ConceptoOpt
  loc_BFD083: FStAdFunc var_DC
  loc_BFD086: FLdPr var_DC
  loc_BFD089:  = Me.Value
  loc_BFD08E: FLdI2 var_C2
  loc_BFD091: LitI2_Byte &HFF
  loc_BFD093: EqI2
  loc_BFD094: FFree1Ad var_DC
  loc_BFD097: BranchF loc_BFD10B
  loc_BFD09A: LitStr "  <tr><th colspan=""16"" align=""center"" class=""Encabezado"">Concepto: "
  loc_BFD09D: FLdPr Me
  loc_BFD0A0: VCallAd Control_ID_CodiConcMsk
  loc_BFD0A3: FStAdFunc var_DC
  loc_BFD0A6: FLdPr var_DC
  loc_BFD0A9: LateIdLdVar var_C0 DispID_22 0
  loc_BFD0B0: CStrVarTmp
  loc_BFD0B1: FStStrNoPop var_AC
  loc_BFD0B4: ConcatStr
  loc_BFD0B5: FStStrNoPop var_B0
  loc_BFD0B8: LitStr " - "
  loc_BFD0BB: ConcatStr
  loc_BFD0BC: FStStrNoPop var_CC
  loc_BFD0BF: FLdRfVar var_C8
  loc_BFD0C2: FLdPr Me
  loc_BFD0C5: VCallAd Control_ID_DetaConcLbl
  loc_BFD0C8: FStAdFunc var_F0
  loc_BFD0CB: FLdPr var_F0
  loc_BFD0CE:  = Me.Caption
  loc_BFD0D3: ILdRf var_C8
  loc_BFD0D6: ConcatStr
  loc_BFD0D7: FStStrNoPop var_D0
  loc_BFD0DA: LitStr "</th></tr>"
  loc_BFD0DD: ConcatStr
  loc_BFD0DE: CVarStr var_EC
  loc_BFD0E1: PopAdLdVar
  loc_BFD0E2: FLdPr Me
  loc_BFD0E5: MemLdRfVar from_stack_1.global_60
  loc_BFD0E8: LdPrVar
  loc_BFD0EA: LateMemCall
  loc_BFD0F0: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_BFD0FD: FFreeAd var_DC = ""
  loc_BFD104: FFreeVar var_C0 = ""
  loc_BFD10B: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BFD110: PopAdLdVar
  loc_BFD111: FLdPr Me
  loc_BFD114: MemLdRfVar from_stack_1.global_60
  loc_BFD117: LdPrVar
  loc_BFD119: LateMemCall
  loc_BFD11F: LitVarStr var_98, "    <th>Concepto</th>"
  loc_BFD124: PopAdLdVar
  loc_BFD125: FLdPr Me
  loc_BFD128: MemLdRfVar from_stack_1.global_60
  loc_BFD12B: LdPrVar
  loc_BFD12D: LateMemCall
  loc_BFD133: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BFD138: PopAdLdVar
  loc_BFD139: FLdPr Me
  loc_BFD13C: MemLdRfVar from_stack_1.global_60
  loc_BFD13F: LdPrVar
  loc_BFD141: LateMemCall
  loc_BFD147: LitVarStr var_98, "    <th>C.U.I.L.</th>"
  loc_BFD14C: PopAdLdVar
  loc_BFD14D: FLdPr Me
  loc_BFD150: MemLdRfVar from_stack_1.global_60
  loc_BFD153: LdPrVar
  loc_BFD155: LateMemCall
  loc_BFD15B: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BFD160: PopAdLdVar
  loc_BFD161: FLdPr Me
  loc_BFD164: MemLdRfVar from_stack_1.global_60
  loc_BFD167: LdPrVar
  loc_BFD169: LateMemCall
  loc_BFD16F: LitVarStr var_98, "    <th>S. Inicial</th>"
  loc_BFD174: PopAdLdVar
  loc_BFD175: FLdPr Me
  loc_BFD178: MemLdRfVar from_stack_1.global_60
  loc_BFD17B: LdPrVar
  loc_BFD17D: LateMemCall
  loc_BFD183: LitVarStr var_98, "    <th>Aforos</th>"
  loc_BFD188: PopAdLdVar
  loc_BFD189: FLdPr Me
  loc_BFD18C: MemLdRfVar from_stack_1.global_60
  loc_BFD18F: LdPrVar
  loc_BFD191: LateMemCall
  loc_BFD197: LitVarStr var_98, "    <th>Débitos</th>"
  loc_BFD19C: PopAdLdVar
  loc_BFD19D: FLdPr Me
  loc_BFD1A0: MemLdRfVar from_stack_1.global_60
  loc_BFD1A3: LdPrVar
  loc_BFD1A5: LateMemCall
  loc_BFD1AB: LitVarStr var_98, "    <th>Créditos</th>"
  loc_BFD1B0: PopAdLdVar
  loc_BFD1B1: FLdPr Me
  loc_BFD1B4: MemLdRfVar from_stack_1.global_60
  loc_BFD1B7: LdPrVar
  loc_BFD1B9: LateMemCall
  loc_BFD1BF: LitVarStr var_98, "    <th>Pres.</th>"
  loc_BFD1C4: PopAdLdVar
  loc_BFD1C5: FLdPr Me
  loc_BFD1C8: MemLdRfVar from_stack_1.global_60
  loc_BFD1CB: LdPrVar
  loc_BFD1CD: LateMemCall
  loc_BFD1D3: LitVarStr var_98, "    <th>Condo.</th>"
  loc_BFD1D8: PopAdLdVar
  loc_BFD1D9: FLdPr Me
  loc_BFD1DC: MemLdRfVar from_stack_1.global_60
  loc_BFD1DF: LdPrVar
  loc_BFD1E1: LateMemCall
  loc_BFD1E7: LitVarStr var_98, "    <th>Exenc.</th>"
  loc_BFD1EC: PopAdLdVar
  loc_BFD1ED: FLdPr Me
  loc_BFD1F0: MemLdRfVar from_stack_1.global_60
  loc_BFD1F3: LdPrVar
  loc_BFD1F5: LateMemCall
  loc_BFD1FB: LitVarStr var_98, "    <th>Desc.</th>"
  loc_BFD200: PopAdLdVar
  loc_BFD201: FLdPr Me
  loc_BFD204: MemLdRfVar from_stack_1.global_60
  loc_BFD207: LdPrVar
  loc_BFD209: LateMemCall
  loc_BFD20F: LitVarStr var_98, "    <th>Cobrado</th>"
  loc_BFD214: PopAdLdVar
  loc_BFD215: FLdPr Me
  loc_BFD218: MemLdRfVar from_stack_1.global_60
  loc_BFD21B: LdPrVar
  loc_BFD21D: LateMemCall
  loc_BFD223: LitVarStr var_98, "    <th>S. Final</th>"
  loc_BFD228: PopAdLdVar
  loc_BFD229: FLdPr Me
  loc_BFD22C: MemLdRfVar from_stack_1.global_60
  loc_BFD22F: LdPrVar
  loc_BFD231: LateMemCall
  loc_BFD237: FLdRfVar var_C2
  loc_BFD23A: FLdPr Me
  loc_BFD23D: VCallAd Control_ID_EstadodeDeudaChk
  loc_BFD240: FStAdFunc var_DC
  loc_BFD243: FLdPr var_DC
  loc_BFD246:  = Me.Value
  loc_BFD24B: FLdI2 var_C2
  loc_BFD24E: LitI2_Byte 1
  loc_BFD250: EqI2
  loc_BFD251: FFree1Ad var_DC
  loc_BFD254: BranchF loc_BFD2A7
  loc_BFD257: LitVarStr var_98, "    <th>Normal</th>"
  loc_BFD25C: PopAdLdVar
  loc_BFD25D: FLdPr Me
  loc_BFD260: MemLdRfVar from_stack_1.global_60
  loc_BFD263: LdPrVar
  loc_BFD265: LateMemCall
  loc_BFD26B: LitVarStr var_98, "    <th>Vencida</th>"
  loc_BFD270: PopAdLdVar
  loc_BFD271: FLdPr Me
  loc_BFD274: MemLdRfVar from_stack_1.global_60
  loc_BFD277: LdPrVar
  loc_BFD279: LateMemCall
  loc_BFD27F: LitVarStr var_98, "    <th>Apremio</th>"
  loc_BFD284: PopAdLdVar
  loc_BFD285: FLdPr Me
  loc_BFD288: MemLdRfVar from_stack_1.global_60
  loc_BFD28B: LdPrVar
  loc_BFD28D: LateMemCall
  loc_BFD293: LitVarStr var_98, "    <th>Judicial</th>"
  loc_BFD298: PopAdLdVar
  loc_BFD299: FLdPr Me
  loc_BFD29C: MemLdRfVar from_stack_1.global_60
  loc_BFD29F: LdPrVar
  loc_BFD2A1: LateMemCall
  loc_BFD2A7: LitVarStr var_98, "  </tr>"
  loc_BFD2AC: PopAdLdVar
  loc_BFD2AD: FLdPr Me
  loc_BFD2B0: MemLdRfVar from_stack_1.global_60
  loc_BFD2B3: LdPrVar
  loc_BFD2B5: LateMemCall
  loc_BFD2BB: LitVarStr var_98, "  </thead>"
  loc_BFD2C0: PopAdLdVar
  loc_BFD2C1: FLdPr Me
  loc_BFD2C4: MemLdRfVar from_stack_1.global_60
  loc_BFD2C7: LdPrVar
  loc_BFD2C9: LateMemCall
  loc_BFD2CF: ExitProcHresult
End Function

Private Function Proc_321_32_A0E588() 'A0E588
  'Data Table: 4EEFEC
  loc_A0E548: LitVarStr var_94, "</table>"
  loc_A0E54D: PopAdLdVar
  loc_A0E54E: FLdPr Me
  loc_A0E551: MemLdRfVar from_stack_1.global_60
  loc_A0E554: LdPrVar
  loc_A0E556: LateMemCall
  loc_A0E55C: LitVarStr var_94, "</body>"
  loc_A0E561: PopAdLdVar
  loc_A0E562: FLdPr Me
  loc_A0E565: MemLdRfVar from_stack_1.global_60
  loc_A0E568: LdPrVar
  loc_A0E56A: LateMemCall
  loc_A0E570: LitVarStr var_94, "</html>"
  loc_A0E575: PopAdLdVar
  loc_A0E576: FLdPr Me
  loc_A0E579: MemLdRfVar from_stack_1.global_60
  loc_A0E57C: LdPrVar
  loc_A0E57E: LateMemCall
  loc_A0E584: ExitProcHresult
  loc_A0E585: FLdPr var_7600
End Function
