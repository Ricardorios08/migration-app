VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeAforoTribunal
  Caption = "Detalle de la Facturación Artículo 27"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeAforoTribunal.frx":0000
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
    OleObjectBlob = "rptListadodeAforoTribunal.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6084
    Width = 11052
    Height = 252
    TabIndex = 29
    OleObjectBlob = "rptListadodeAforoTribunal.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 5040
    Width = 855
    Height = 735
    TabIndex = 27
    Cancel = -1  'True
    Picture = "rptListadodeAforoTribunal.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeAforoTribunal.frx":0C04
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
      Picture = "rptListadodeAforoTribunal.frx":0C68
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeFechaCmd
      Left = 3600
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptListadodeAforoTribunal.frx":11AA
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
      OleObjectBlob = "rptListadodeAforoTribunal.frx":16EC
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 6
      OleObjectBlob = "rptListadodeAforoTribunal.frx":179C
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 3600
      Width = 1215
      Height = 360
      TabIndex = 17
      OleObjectBlob = "rptListadodeAforoTribunal.frx":184C
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 2160
      Width = 1575
      Height = 360
      TabIndex = 13
      OleObjectBlob = "rptListadodeAforoTribunal.frx":18E4
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
    OleObjectBlob = "rptListadodeAforoTribunal.frx":1982
  End
End

Attribute VB_Name = "rptListadodeAforoTribunal"

Public bGenerado As Boolean

Private Type UDT_1_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005643C4
  bStruc(16) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() 'A09034
  'Data Table: 4E8E30
  loc_A08FFC: LitI2_Byte 0
  loc_A08FFE: FLdPr Me
  loc_A09001: MemStI2 bGenerado
  loc_A09004: LitI2_Byte 0
  loc_A09006: ILdRf Me
  loc_A09009: CastAd
  loc_A0900C: FStAdFunc var_88
  loc_A0900F: FLdRfVar var_88
  loc_A09012: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A09017: FFree1Ad var_88
  loc_A0901A: Call HabilitarCriterio()
  loc_A0901F: ILdRf Me
  loc_A09022: CastAd
  loc_A09025: FStAdFunc var_88
  loc_A09028: FLdRfVar var_88
  loc_A0902B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A09030: FFree1Ad var_88
  loc_A09033: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C3920
  'Data Table: 4E8E30
  loc_9C390C: FLdPr Me
  loc_9C390F: VCallAd Control_ID_HastaMsk
  loc_9C3912: CVarAd
  loc_9C3916: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C391B: FFree1Var var_94 = ""
  loc_9C391E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA6E04
  'Data Table: 4E8E30
  loc_AA6D54: FLdPr Me
  loc_AA6D57: VCallAd Control_ID_HastaMsk
  loc_AA6D5A: FStAdFunc var_88
  loc_AA6D5D: FLdPr var_88
  loc_AA6D60: LateIdLdVar var_98 DispID_15 0
  loc_AA6D67: CStrVarTmp
  loc_AA6D68: CVarStr var_A8
  loc_AA6D6B: ImpAdCallI2 IsDate()
  loc_AA6D70: FFree1Ad var_88
  loc_AA6D73: FFreeVar var_98 = ""
  loc_AA6D7A: BranchF loc_AA6E00
  loc_AA6D7D: FLdPr Me
  loc_AA6D80: VCallAd Control_ID_HastaMsk
  loc_AA6D83: FStAdFunc var_88
  loc_AA6D86: FLdPr var_88
  loc_AA6D89: LateIdLdVar var_98 DispID_15 0
  loc_AA6D90: CStrVarTmp
  loc_AA6D91: CVarStr var_A8
  loc_AA6D94: FLdRfVar var_B8
  loc_AA6D97: ImpAdCallFPR4  = Year()
  loc_AA6D9C: FLdRfVar var_B8
  loc_AA6D9F: FLdPr Me
  loc_AA6DA2: VCallAd Control_ID_DesdeMsk
  loc_AA6DA5: FStAdFunc var_BC
  loc_AA6DA8: FLdPr var_BC
  loc_AA6DAB: LateIdLdVar var_CC DispID_15 0
  loc_AA6DB2: CStrVarTmp
  loc_AA6DB3: CVarStr var_DC
  loc_AA6DB6: FLdRfVar var_EC
  loc_AA6DB9: ImpAdCallFPR4  = Year()
  loc_AA6DBE: FLdRfVar var_EC
  loc_AA6DC1: NeVarBool
  loc_AA6DC3: FFreeAd var_88 = ""
  loc_AA6DCA: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA6DD9: BranchF loc_AA6E00
  loc_AA6DDC: FLdPr Me
  loc_AA6DDF: VCallAd Control_ID_HastaMsk
  loc_AA6DE2: FStAdFuncNoPop
  loc_AA6DE5: CastAd
  loc_AA6DE8: FStAdFunc var_BC
  loc_AA6DEB: FLdRfVar var_BC
  loc_AA6DEE: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA6DF1: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA6DF6: IStI2 arg_C
  loc_AA6DF9: FFreeAd var_88 = ""
  loc_AA6E00: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1C678
  'Data Table: 4E8E30
  loc_A1C640: FLdPr Me
  loc_A1C643: VCallAd Control_ID_statusBar
  loc_A1C646: FStAdFunc var_88
  loc_A1C649: FLdPr var_88
  loc_A1C64C: LateIdLdVar var_98 DispID_1 0
  loc_A1C653: CStrVarTmp
  loc_A1C654: CVarStr var_A8
  loc_A1C657: PopAdLdVar
  loc_A1C658: FLdPr Me
  loc_A1C65B: VCallAd Control_ID_statusBar
  loc_A1C65E: FStAdFunc var_BC
  loc_A1C661: FLdPr var_BC
  loc_A1C664: LateIdSt
  loc_A1C669: FFreeAd var_88 = ""
  loc_A1C670: FFreeVar var_98 = ""
  loc_A1C677: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0CA64
  'Data Table: 4E8E30
  loc_A0CA28: LitVar_Missing var_A4
  loc_A0CA2B: PopAdLdVar
  loc_A0CA2C: LitVarI4
  loc_A0CA34: PopAdLdVar
  loc_A0CA35: ImpAdLdRf MemVar_D930A4
  loc_A0CA38: NewIfNullPr frmCalendario
  loc_A0CA3B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CA40: ImpAdLdRf MemVar_D93028
  loc_A0CA43: CDargRef
  loc_A0CA47: FLdPr Me
  loc_A0CA4A: VCallAd Control_ID_DesdeMsk
  loc_A0CA4D: FStAdFunc var_A8
  loc_A0CA50: FLdPr var_A8
  loc_A0CA53: LateIdSt
  loc_A0CA58: FFree1Ad var_A8
  loc_A0CA5B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CA60: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0C594
  'Data Table: 4E8E30
  loc_A0C558: LitVar_Missing var_A4
  loc_A0C55B: PopAdLdVar
  loc_A0C55C: LitVarI4
  loc_A0C564: PopAdLdVar
  loc_A0C565: ImpAdLdRf MemVar_D930A4
  loc_A0C568: NewIfNullPr frmCalendario
  loc_A0C56B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0C570: ImpAdLdRf MemVar_D93028
  loc_A0C573: CDargRef
  loc_A0C577: FLdPr Me
  loc_A0C57A: VCallAd Control_ID_HastaMsk
  loc_A0C57D: FStAdFunc var_A8
  loc_A0C580: FLdPr var_A8
  loc_A0C583: LateIdSt
  loc_A0C588: FFree1Ad var_A8
  loc_A0C58B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0C590: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A00498
  'Data Table: 4E8E30
  loc_A00468: LitVarStr var_94, "Cerrando..."
  loc_A0046D: PopAdLdVar
  loc_A0046E: FLdPr Me
  loc_A00471: VCallAd Control_ID_statusBar
  loc_A00474: FStAdFunc var_A8
  loc_A00477: FLdPr var_A8
  loc_A0047A: LateIdSt
  loc_A0047F: FFree1Ad var_A8
  loc_A00482: ILdRf Me
  loc_A00485: FStAdNoPop
  loc_A00489: ImpAdLdRf MemVar_D9C5D8
  loc_A0048C: NewIfNullPr Global
  loc_A0048F: Global.Unload from_stack_1
  loc_A00494: FFree1Ad var_A8
  loc_A00497: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E01EC
  'Data Table: 4E8E30
  loc_9E01D0: LitI2_Byte 0
  loc_9E01D2: LitI2_Byte 0
  loc_9E01D4: ILdRf Me
  loc_9E01D7: CastAd
  loc_9E01DA: FStAdFunc var_88
  loc_9E01DD: FLdRfVar var_88
  loc_9E01E0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E01E5: FFree1Ad var_88
  loc_9E01E8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CF408
  'Data Table: 4E8E30
  loc_9CF3F0: ILdRf Me
  loc_9CF3F3: CastAd
  loc_9CF3F6: FStAdFunc var_88
  loc_9CF3F9: FLdRfVar var_88
  loc_9CF3FC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CF401: FFree1Ad var_88
  loc_9CF404: ExitProcHresult
  loc_9CF405: MemLdStr global_1771
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C3890
  'Data Table: 4E8E30
  loc_9C387C: FLdPr Me
  loc_9C387F: VCallAd Control_ID_DesdeMsk
  loc_9C3882: CVarAd
  loc_9C3886: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C388B: FFree1Var var_94 = ""
  loc_9C388E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A61720
  'Data Table: 4E8E30
  loc_A616C4: FLdPr Me
  loc_A616C7: VCallAd Control_ID_DesdeMsk
  loc_A616CA: FStAdFunc var_88
  loc_A616CD: FLdPr var_88
  loc_A616D0: LateIdLdVar var_98 DispID_15 0
  loc_A616D7: CStrVarTmp
  loc_A616D8: FStStrNoPop var_9C
  loc_A616DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A616E0: FStStrNoPop var_A0
  loc_A616E3: FLdPr Me
  loc_A616E6: MemStStrCopy
  loc_A616EA: FFreeStr var_9C = ""
  loc_A616F1: FFree1Ad var_88
  loc_A616F4: FFree1Var var_98 = ""
  loc_A616F7: FLdPr Me
  loc_A616FA: VCallAd Control_ID_DesdeMsk
  loc_A616FD: FStAdFuncNoPop
  loc_A61700: CastAd
  loc_A61703: FStAdFunc var_A4
  loc_A61706: FLdRfVar var_A4
  loc_A61709: FLdPr Me
  loc_A6170C: MemLdStr global_116
  loc_A6170F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61714: IStI2 arg_C
  loc_A61717: FFreeAd var_88 = ""
  loc_A6171E: ExitProcHresult
End Function

Private Sub ActiConcMsk_UnknownEvent_0 '9C3848
  'Data Table: 4E8E30
  loc_9C3834: FLdPr Me
  loc_9C3837: VCallAd Control_ID_ActiConcMsk
  loc_9C383A: CVarAd
  loc_9C383E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3843: FFree1Var var_94 = ""
  loc_9C3846: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AFA464
  'Data Table: 4E8E30
  loc_AFA2AC: FLdRfVar var_8A
  loc_AFA2AF: FLdPr Me
  loc_AFA2B2: VCallAd Control_ID_CuentaContableOpt
  loc_AFA2B5: FStAdFunc var_88
  loc_AFA2B8: FLdPr var_88
  loc_AFA2BB:  = Me.Value
  loc_AFA2C0: FLdI2 var_8A
  loc_AFA2C3: LitI2_Byte &HFF
  loc_AFA2C5: EqI2
  loc_AFA2C6: FFree1Ad var_88
  loc_AFA2C9: BranchF loc_AFA461
  loc_AFA2CC: FLdPr Me
  loc_AFA2CF: VCallAd Control_ID_DesdeMsk
  loc_AFA2D2: FStAdFunc var_88
  loc_AFA2D5: FLdPr var_88
  loc_AFA2D8: LateIdLdVar var_9C DispID_15 0
  loc_AFA2DF: CStrVarTmp
  loc_AFA2E0: CVarStr var_AC
  loc_AFA2E3: FLdRfVar var_BC
  loc_AFA2E6: ImpAdCallFPR4  = Year()
  loc_AFA2EB: FLdPr Me
  loc_AFA2EE: VCallAd Control_ID_ActiConcMsk
  loc_AFA2F1: FStAdFunc var_C0
  loc_AFA2F4: FLdPr var_C0
  loc_AFA2F7: LateIdLdVar var_D0 DispID_22 0
  loc_AFA2FE: PopAd
  loc_AFA300: LitI4 0
  loc_AFA305: LitI4 0
  loc_AFA30A: FLdRfVar var_DC
  loc_AFA30D: Redim
  loc_AFA317: LitVarStr var_EC, "1"
  loc_AFA31C: LitI4 0
  loc_AFA321: ILdRf var_DC
  loc_AFA324: Ary1StVarCopy
  loc_AFA326: FLdRfVar var_DC
  loc_AFA329: FLdRfVar var_D0
  loc_AFA32C: CStrVarTmp
  loc_AFA32D: FStStrNoPop var_D8
  loc_AFA330: FLdRfVar var_BC
  loc_AFA333: CStrVarVal var_D4
  loc_AFA337: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AFA33C: FStStr var_F0
  loc_AFA33F: FLdRfVar var_DC
  loc_AFA342: Erase
  loc_AFA343: ILdRf var_F0
  loc_AFA346: FLdPr Me
  loc_AFA349: MemStStrCopy
  loc_AFA34D: FFreeStr var_D4 = "": var_D8 = ""
  loc_AFA356: FFreeAd var_88 = ""
  loc_AFA35D: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AFA368: FLdPr Me
  loc_AFA36B: VCallAd Control_ID_ActiConcMsk
  loc_AFA36E: FStAdFuncNoPop
  loc_AFA371: CastAd
  loc_AFA374: FStAdFunc var_C0
  loc_AFA377: FLdRfVar var_C0
  loc_AFA37A: FLdPr Me
  loc_AFA37D: MemLdStr global_116
  loc_AFA380: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AFA385: IStI2 arg_C
  loc_AFA388: FFreeAd var_88 = ""
  loc_AFA38F: ILdI2 arg_C
  loc_AFA392: NotI4
  loc_AFA393: BranchF loc_AFA44D
  loc_AFA396: FLdPr Me
  loc_AFA399: VCallAd Control_ID_DesdeMsk
  loc_AFA39C: FStAdFunc var_88
  loc_AFA39F: FLdPr var_88
  loc_AFA3A2: LateIdLdVar var_9C DispID_15 0
  loc_AFA3A9: CStrVarTmp
  loc_AFA3AA: CVarStr var_AC
  loc_AFA3AD: FLdRfVar var_BC
  loc_AFA3B0: ImpAdCallFPR4  = Year()
  loc_AFA3B5: FLdPr Me
  loc_AFA3B8: VCallAd Control_ID_ActiConcMsk
  loc_AFA3BB: FStAdFunc var_C0
  loc_AFA3BE: FLdPr var_C0
  loc_AFA3C1: LateIdLdVar var_D0 DispID_22 0
  loc_AFA3C8: CStrVarTmp
  loc_AFA3C9: FStStrNoPop var_D4
  loc_AFA3CC: FLdRfVar var_BC
  loc_AFA3CF: CI2Var
  loc_AFA3D0: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AFA3D5: FStStrNoPop var_D8
  loc_AFA3D8: FLdPr Me
  loc_AFA3DB: VCallAd Control_ID_DetaActiLbl
  loc_AFA3DE: FStAdFunc var_F4
  loc_AFA3E1: FLdPr var_F4
  loc_AFA3E4: Me.Caption = from_stack_1
  loc_AFA3E9: FFreeStr var_D4 = ""
  loc_AFA3F0: FFreeAd var_88 = "": var_C0 = ""
  loc_AFA3F9: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AFA404: LitVarStr var_EC, "Detalle de la Facturación Art. 27"
  loc_AFA409: LitVarStr var_104, " - "
  loc_AFA40E: ConcatVar var_9C
  loc_AFA412: FLdPr Me
  loc_AFA415: VCallAd Control_ID_ActiConcMsk
  loc_AFA418: FStAdFunc var_88
  loc_AFA41B: FLdPr var_88
  loc_AFA41E: LateIdLdVar var_AC DispID_22 0
  loc_AFA425: CStrVarTmp
  loc_AFA426: CVarStr var_BC
  loc_AFA429: ConcatVar var_D0
  loc_AFA42D: CStrVarVal var_D4
  loc_AFA431: FLdPr Me
  loc_AFA434: Me.Caption = from_stack_1
  loc_AFA439: FFree1Str var_D4
  loc_AFA43C: FFree1Ad var_88
  loc_AFA43F: FFreeVar var_AC = "": var_9C = "": var_BC = ""
  loc_AFA44A: Branch loc_AFA461
  loc_AFA44D: LitVarStr var_EC, "Detalle de la Facturación Art. 27"
  loc_AFA452: CStrVarVal var_D4
  loc_AFA456: FLdPr Me
  loc_AFA459: Me.Caption = from_stack_1
  loc_AFA45E: FFree1Str var_D4
  loc_AFA461: ExitProcHresult
End Function

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AE69C4
  'Data Table: 4E8E30
  loc_AE6864: ILdI2 KeyAscii
  loc_AE6867: LitI2_Byte &H20
  loc_AE6869: EqI2
  loc_AE686A: BranchF loc_AE69C0
  loc_AE686D: LitI2_Byte 0
  loc_AE686F: IStI2 KeyAscii
  loc_AE6872: ImpAdLdRf MemVar_D9468C
  loc_AE6875: NewIfNullAd
  loc_AE6878: FStAd var_88 
  loc_AE687C: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AE687F: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AE6882: ConcatStr
  loc_AE6883: FStStrNoPop var_8C
  loc_AE6886: LitStr " WHERE co.PeriInfo = "
  loc_AE6889: ConcatStr
  loc_AE688A: CVarStr var_D0
  loc_AE688D: FLdPr Me
  loc_AE6890: VCallAd Control_ID_DesdeMsk
  loc_AE6893: FStAdFunc var_90
  loc_AE6896: FLdPr var_90
  loc_AE6899: LateIdLdVar var_A0 DispID_15 0
  loc_AE68A0: CStrVarTmp
  loc_AE68A1: CVarStr var_B0
  loc_AE68A4: FLdRfVar var_C0
  loc_AE68A7: ImpAdCallFPR4  = Year()
  loc_AE68AC: FLdRfVar var_C0
  loc_AE68AF: ConcatVar var_E0
  loc_AE68B3: LitVarStr var_F0, " ORDER BY co.ActiConc"
  loc_AE68B8: ConcatVar var_100
  loc_AE68BC: CStrVarVal var_104
  loc_AE68C0: FLdPr var_88
  loc_AE68C3: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AE68C8: FFreeStr var_8C = ""
  loc_AE68CF: FFree1Ad var_90
  loc_AE68D2: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AE68E1: LitVar_Missing var_114
  loc_AE68E4: PopAdLdVar
  loc_AE68E5: LitVarI4
  loc_AE68ED: PopAdLdVar
  loc_AE68EE: FLdPr var_88
  loc_AE68F1: Me.Show from_stack_1, from_stack_2
  loc_AE68F6: FLdRfVar var_8C
  loc_AE68F9: FLdPr var_88
  loc_AE68FC: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE6901: FLdZeroAd var_8C
  loc_AE6904: CVarStr var_A0
  loc_AE6907: PopAdLdVar
  loc_AE6908: FLdPr Me
  loc_AE690B: VCallAd Control_ID_ActiConcMsk
  loc_AE690E: FStAdFunc var_90
  loc_AE6911: FLdPr var_90
  loc_AE6914: LateIdSt
  loc_AE6919: FFree1Ad var_90
  loc_AE691C: FFree1Var var_A0 = ""
  loc_AE691F: LitStr vbNullString
  loc_AE6922: FLdPr var_88
  loc_AE6925: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AE692A: FLdRfVar var_8C
  loc_AE692D: FLdPr var_88
  loc_AE6930: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AE6935: ILdRf var_8C
  loc_AE6938: FLdPr Me
  loc_AE693B: VCallAd Control_ID_DetaActiLbl
  loc_AE693E: FStAdFunc var_90
  loc_AE6941: FLdPr var_90
  loc_AE6944: Me.Caption = from_stack_1
  loc_AE6949: FFree1Str var_8C
  loc_AE694C: FFree1Ad var_90
  loc_AE694F: FLdRfVar var_8C
  loc_AE6952: FLdPr var_88
  loc_AE6955: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE695A: ILdRf var_8C
  loc_AE695D: LitStr vbNullString
  loc_AE6960: NeStr
  loc_AE6962: FFree1Str var_8C
  loc_AE6965: BranchF loc_AE69A6
  loc_AE6968: LitVarStr var_F0, "Detalle de la Facturación Art. 27"
  loc_AE696D: FLdPr Me
  loc_AE6970: VCallAd Control_ID_ActiConcMsk
  loc_AE6973: FStAdFunc var_90
  loc_AE6976: FLdPr var_90
  loc_AE6979: LateIdLdVar var_A0 DispID_22 0
  loc_AE6980: CStrVarTmp
  loc_AE6981: CVarStr var_B0
  loc_AE6984: ConcatVar var_C0
  loc_AE6988: CStrVarVal var_8C
  loc_AE698C: FLdPr Me
  loc_AE698F: Me.Caption = from_stack_1
  loc_AE6994: FFree1Str var_8C
  loc_AE6997: FFree1Ad var_90
  loc_AE699A: FFreeVar var_A0 = "": var_B0 = ""
  loc_AE69A3: Branch loc_AE69BA
  loc_AE69A6: LitVarStr var_F0, "Detalle de la Facturación Art. 27"
  loc_AE69AB: CStrVarVal var_8C
  loc_AE69AF: FLdPr Me
  loc_AE69B2: Me.Caption = from_stack_1
  loc_AE69B7: FFree1Str var_8C
  loc_AE69BA: LitNothing
  loc_AE69BC: FStAd var_88 
  loc_AE69C0: ExitProcHresult
  loc_AE69C1: CopyBytes
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C3530
  'Data Table: 4E8E30
  loc_9C351C: FLdPr Me
  loc_9C351F: VCallAd Control_ID_CodiConcMsk
  loc_9C3522: CVarAd
  loc_9C3526: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C352B: FFree1Var var_94 = ""
  loc_9C352E: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'B29E7C
  'Data Table: 4E8E30
  loc_B29BB4: FLdRfVar var_8A
  loc_B29BB7: FLdPr Me
  loc_B29BBA: VCallAd Control_ID_ConceptoOpt
  loc_B29BBD: FStAdFunc var_88
  loc_B29BC0: FLdPr var_88
  loc_B29BC3:  = Me.Value
  loc_B29BC8: FLdI2 var_8A
  loc_B29BCB: LitI2_Byte &HFF
  loc_B29BCD: EqI2
  loc_B29BCE: FFree1Ad var_88
  loc_B29BD1: BranchF loc_B29E79
  loc_B29BD4: FLdPr Me
  loc_B29BD7: VCallAd Control_ID_DesdeMsk
  loc_B29BDA: FStAdFunc var_88
  loc_B29BDD: FLdPr var_88
  loc_B29BE0: LateIdLdVar var_9C DispID_15 0
  loc_B29BE7: CStrVarTmp
  loc_B29BE8: CVarStr var_AC
  loc_B29BEB: FLdRfVar var_BC
  loc_B29BEE: ImpAdCallFPR4  = Year()
  loc_B29BF3: FLdPr Me
  loc_B29BF6: VCallAd Control_ID_CodiConcMsk
  loc_B29BF9: FStAdFunc var_C0
  loc_B29BFC: FLdPr var_C0
  loc_B29BFF: LateIdLdVar var_D0 DispID_22 0
  loc_B29C06: PopAd
  loc_B29C08: LitI2_Byte 0
  loc_B29C0A: LitI2_Byte 0
  loc_B29C0C: LitI2_Byte 0
  loc_B29C0E: LitI2_Byte 0
  loc_B29C10: LitI2_Byte 0
  loc_B29C12: LitI2_Byte 0
  loc_B29C14: LitI2_Byte 0
  loc_B29C16: LitI2_Byte 0
  loc_B29C18: LitI2_Byte 0
  loc_B29C1A: FLdRfVar var_D0
  loc_B29C1D: CStrVarTmp
  loc_B29C1E: FStStrNoPop var_D4
  loc_B29C21: FLdRfVar var_BC
  loc_B29C24: CI2Var
  loc_B29C25: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_B29C2A: FStStrNoPop var_D8
  loc_B29C2D: FLdPr Me
  loc_B29C30: MemStStrCopy
  loc_B29C34: FFreeStr var_D4 = ""
  loc_B29C3B: FFreeAd var_88 = ""
  loc_B29C42: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B29C4D: FLdPr Me
  loc_B29C50: VCallAd Control_ID_CodiConcMsk
  loc_B29C53: FStAdFuncNoPop
  loc_B29C56: CastAd
  loc_B29C59: FStAdFunc var_C0
  loc_B29C5C: FLdRfVar var_C0
  loc_B29C5F: FLdPr Me
  loc_B29C62: MemLdStr global_116
  loc_B29C65: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B29C6A: IStI2 KeyAscii
  loc_B29C6D: FFreeAd var_88 = ""
  loc_B29C74: ILdI2 KeyAscii
  loc_B29C77: NotI4
  loc_B29C78: BranchF loc_B29E65
  loc_B29C7B: LitStr "Municipalidad de Guaymallén"
  loc_B29C7E: LitStr "Municipalidad de Guaymallén"
  loc_B29C81: EqStr
  loc_B29C83: BranchF loc_B29D80
  loc_B29C86: FLdPr Me
  loc_B29C89: VCallAd Control_ID_DesdeMsk
  loc_B29C8C: FStAdFunc var_88
  loc_B29C8F: FLdPr var_88
  loc_B29C92: LateIdLdVar var_9C DispID_15 0
  loc_B29C99: CStrVarTmp
  loc_B29C9A: CVarStr var_AC
  loc_B29C9D: FLdRfVar var_BC
  loc_B29CA0: ImpAdCallFPR4  = Year()
  loc_B29CA5: FLdPr Me
  loc_B29CA8: VCallAd Control_ID_CodiConcMsk
  loc_B29CAB: FStAdFunc var_C0
  loc_B29CAE: FLdPr var_C0
  loc_B29CB1: LateIdLdVar var_D0 DispID_22 0
  loc_B29CB8: PopAd
  loc_B29CBA: FLdPr Me
  loc_B29CBD: MemLdRfVar from_stack_1.global_108
  loc_B29CC0: NewIfNullRf
  loc_B29CC4: FLdRfVar var_D0
  loc_B29CC7: CStrVarTmp
  loc_B29CC8: FStStrNoPop var_D4
  loc_B29CCB: FLdRfVar var_BC
  loc_B29CCE: CI2Var
  loc_B29CCF: ImpAdCallI2 Proc_270_10_AFACE0(, , )
  loc_B29CD4: FFree1Str var_D4
  loc_B29CD7: FFreeAd var_88 = ""
  loc_B29CDE: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B29CE9: BranchF loc_B29D7D
  loc_B29CEC: FLdRfVar var_D4
  loc_B29CEF: FLdPr Me
  loc_B29CF2: MemLdRfVar from_stack_1.global_108
  loc_B29CF5: NewIfNullPr tblConcepto
  loc_B29CF8: from_stack_1v = tblConcepto.DetaConcGet()
  loc_B29CFD: ILdRf var_D4
  loc_B29D00: FLdPr Me
  loc_B29D03: VCallAd Control_ID_DetaConcLbl
  loc_B29D06: FStAdFunc var_88
  loc_B29D09: FLdPr var_88
  loc_B29D0C: Me.Caption = from_stack_1
  loc_B29D11: FFree1Str var_D4
  loc_B29D14: FFree1Ad var_88
  loc_B29D17: FLdRfVar var_D4
  loc_B29D1A: FLdPr Me
  loc_B29D1D: MemLdRfVar from_stack_1.global_108
  loc_B29D20: NewIfNullPr tblConcepto
  loc_B29D23: from_stack_1v = tblConcepto.SacuConcGet()
  loc_B29D28: ILdRf var_D4
  loc_B29D2B: CUI1Str
  loc_B29D2D: FLdPr Me
  loc_B29D30: MemStUI1
  loc_B29D34: FFree1Str var_D4
  loc_B29D37: LitVarStr var_E8, "Detalle de la Facturación Art. 27"
  loc_B29D3C: LitVarStr var_F8, " - "
  loc_B29D41: ConcatVar var_9C
  loc_B29D45: FLdPr Me
  loc_B29D48: VCallAd Control_ID_CodiConcMsk
  loc_B29D4B: FStAdFunc var_88
  loc_B29D4E: FLdPr var_88
  loc_B29D51: LateIdLdVar var_AC DispID_22 0
  loc_B29D58: CStrVarTmp
  loc_B29D59: CVarStr var_BC
  loc_B29D5C: ConcatVar var_D0
  loc_B29D60: CStrVarVal var_D4
  loc_B29D64: FLdPr Me
  loc_B29D67: Me.Caption = from_stack_1
  loc_B29D6C: FFree1Str var_D4
  loc_B29D6F: FFree1Ad var_88
  loc_B29D72: FFreeVar var_AC = "": var_9C = "": var_BC = ""
  loc_B29D7D: Branch loc_B29E62
  loc_B29D80: FLdPr Me
  loc_B29D83: VCallAd Control_ID_DesdeMsk
  loc_B29D86: FStAdFunc var_88
  loc_B29D89: FLdPr var_88
  loc_B29D8C: LateIdLdVar var_9C DispID_15 0
  loc_B29D93: CStrVarTmp
  loc_B29D94: CVarStr var_AC
  loc_B29D97: FLdRfVar var_BC
  loc_B29D9A: ImpAdCallFPR4  = Year()
  loc_B29D9F: FLdPr Me
  loc_B29DA2: VCallAd Control_ID_CodiConcMsk
  loc_B29DA5: FStAdFunc var_C0
  loc_B29DA8: FLdPr var_C0
  loc_B29DAB: LateIdLdVar var_D0 DispID_22 0
  loc_B29DB2: PopAd
  loc_B29DB4: FLdPr Me
  loc_B29DB7: MemLdRfVar from_stack_1.global_108
  loc_B29DBA: NewIfNullRf
  loc_B29DBE: FLdRfVar var_D0
  loc_B29DC1: CStrVarTmp
  loc_B29DC2: FStStrNoPop var_D4
  loc_B29DC5: FLdRfVar var_BC
  loc_B29DC8: CI2Var
  loc_B29DC9: ImpAdCallI2 Proc_270_11_AFA68C(, , )
  loc_B29DCE: FFree1Str var_D4
  loc_B29DD1: FFreeAd var_88 = ""
  loc_B29DD8: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_B29DE3: BranchF loc_B29E62
  loc_B29DE6: FLdRfVar var_D4
  loc_B29DE9: FLdPr Me
  loc_B29DEC: MemLdRfVar from_stack_1.global_108
  loc_B29DEF: NewIfNullPr tblConcepto
  loc_B29DF2: from_stack_1v = tblConcepto.DetaConcGet()
  loc_B29DF7: ILdRf var_D4
  loc_B29DFA: FLdPr Me
  loc_B29DFD: VCallAd Control_ID_DetaConcLbl
  loc_B29E00: FStAdFunc var_88
  loc_B29E03: FLdPr var_88
  loc_B29E06: Me.Caption = from_stack_1
  loc_B29E0B: FFree1Str var_D4
  loc_B29E0E: FFree1Ad var_88
  loc_B29E11: LitI2_Byte 0
  loc_B29E13: CUI1I2
  loc_B29E15: FLdPr Me
  loc_B29E18: MemStUI1
  loc_B29E1C: LitVarStr var_E8, "Detalle de la Facturación Art. 27"
  loc_B29E21: LitVarStr var_F8, " - "
  loc_B29E26: ConcatVar var_9C
  loc_B29E2A: FLdPr Me
  loc_B29E2D: VCallAd Control_ID_CodiConcMsk
  loc_B29E30: FStAdFunc var_88
  loc_B29E33: FLdPr var_88
  loc_B29E36: LateIdLdVar var_AC DispID_22 0
  loc_B29E3D: CStrVarTmp
  loc_B29E3E: CVarStr var_BC
  loc_B29E41: ConcatVar var_D0
  loc_B29E45: CStrVarVal var_D4
  loc_B29E49: FLdPr Me
  loc_B29E4C: Me.Caption = from_stack_1
  loc_B29E51: FFree1Str var_D4
  loc_B29E54: FFree1Ad var_88
  loc_B29E57: FFreeVar var_AC = "": var_9C = "": var_BC = ""
  loc_B29E62: Branch loc_B29E79
  loc_B29E65: LitVarStr var_E8, "Detalle de la Facturación Art. 27"
  loc_B29E6A: CStrVarVal var_D4
  loc_B29E6E: FLdPr Me
  loc_B29E71: Me.Caption = from_stack_1
  loc_B29E76: FFree1Str var_D4
  loc_B29E79: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AC4ABC
  'Data Table: 4E8E30
  loc_AC49C0: ILdI2 KeyAscii
  loc_AC49C3: LitI2_Byte &H20
  loc_AC49C5: EqI2
  loc_AC49C6: BranchF loc_AC4ABA
  loc_AC49C9: LitI2_Byte 0
  loc_AC49CB: IStI2 KeyAscii
  loc_AC49CE: FLdPr Me
  loc_AC49D1: VCallAd Control_ID_DesdeMsk
  loc_AC49D4: FStAdFunc var_88
  loc_AC49D7: FLdPr var_88
  loc_AC49DA: LateIdLdVar var_98 DispID_15 0
  loc_AC49E1: CStrVarTmp
  loc_AC49E2: CVarStr var_A8
  loc_AC49E5: FLdRfVar var_B8
  loc_AC49E8: ImpAdCallFPR4  = Year()
  loc_AC49ED: FLdRfVar var_B8
  loc_AC49F0: CI2Var
  loc_AC49F1: ImpAdLdRf MemVar_D94354
  loc_AC49F4: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC49F7: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC49FC: FFree1Ad var_88
  loc_AC49FF: FFreeVar var_98 = "": var_A8 = ""
  loc_AC4A08: LitVar_Missing var_D8
  loc_AC4A0B: PopAdLdVar
  loc_AC4A0C: LitVarI4
  loc_AC4A14: PopAdLdVar
  loc_AC4A15: ImpAdLdRf MemVar_D94354
  loc_AC4A18: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4A1B: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC4A20: FLdRfVar var_DC
  loc_AC4A23: FLdRfVar var_88
  loc_AC4A26: ImpAdLdRf MemVar_D94354
  loc_AC4A29: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4A2C: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4A31: FLdPr var_88
  loc_AC4A34: from_stack_1 = clsconcepto.RecordCount
  loc_AC4A39: ILdRf var_DC
  loc_AC4A3C: LitI4 0
  loc_AC4A41: GtI4
  loc_AC4A42: FFree1Ad var_88
  loc_AC4A45: BranchF loc_AC4ABA
  loc_AC4A48: FLdRfVar var_E0
  loc_AC4A4B: FLdRfVar var_88
  loc_AC4A4E: ImpAdLdRf MemVar_D94354
  loc_AC4A51: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4A54: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4A59: FLdPr var_88
  loc_AC4A5C: from_stack_1 = clsconcepto.CodiConc
  loc_AC4A61: FLdZeroAd var_E0
  loc_AC4A64: CVarStr var_98
  loc_AC4A67: PopAdLdVar
  loc_AC4A68: FLdPr Me
  loc_AC4A6B: VCallAd Control_ID_CodiConcMsk
  loc_AC4A6E: FStAdFunc var_E4
  loc_AC4A71: FLdPr var_E4
  loc_AC4A74: LateIdSt
  loc_AC4A79: FFreeAd var_88 = ""
  loc_AC4A80: FFree1Var var_98 = ""
  loc_AC4A83: FLdRfVar var_E0
  loc_AC4A86: FLdRfVar var_88
  loc_AC4A89: ImpAdLdRf MemVar_D94354
  loc_AC4A8C: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4A8F: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4A94: FLdPr var_88
  loc_AC4A97: from_stack_1 = clsconcepto.DetaConc
  loc_AC4A9C: ILdRf var_E0
  loc_AC4A9F: FLdPr Me
  loc_AC4AA2: VCallAd Control_ID_DetaConcLbl
  loc_AC4AA5: FStAdFunc var_E4
  loc_AC4AA8: FLdPr var_E4
  loc_AC4AAB: Me.Caption = from_stack_1
  loc_AC4AB0: FFree1Str var_E0
  loc_AC4AB3: FFreeAd var_88 = ""
  loc_AC4ABA: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CE90C
  'Data Table: 4E8E30
  loc_9CE8F4: LitI2_Byte 0
  loc_9CE8F6: ILdRf Me
  loc_9CE8F9: CastAd
  loc_9CE8FC: FStAdFunc var_88
  loc_9CE8FF: FLdRfVar var_88
  loc_9CE902: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CE907: FFree1Ad var_88
  loc_9CE90A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE98C
  'Data Table: 4E8E30
  loc_9DE970: LitI2_Byte 0
  loc_9DE972: PopTmpLdAd2 var_8A
  loc_9DE975: ILdRf Me
  loc_9DE978: CastAd
  loc_9DE97B: FStAdFunc var_88
  loc_9DE97E: FLdRfVar var_88
  loc_9DE981: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE986: FFree1Ad var_88
  loc_9DE989: ExitProcHresult
End Sub

Private Sub ConceptoOpt_Click() 'A79D7C
  'Data Table: 4E8E30
  loc_A79CF8: FLdRfVar var_8A
  loc_A79CFB: FLdPr Me
  loc_A79CFE: VCallAd Control_ID_ConceptoOpt
  loc_A79D01: FStAdFunc var_88
  loc_A79D04: FLdPr var_88
  loc_A79D07:  = Me.Value
  loc_A79D0C: FLdI2 var_8A
  loc_A79D0F: LitI2_Byte &HFF
  loc_A79D11: EqI2
  loc_A79D12: FFree1Ad var_88
  loc_A79D15: BranchF loc_A79D7A
  loc_A79D18: LitVar_TRUE var_9C
  loc_A79D1B: PopAdLdVar
  loc_A79D1C: FLdPr Me
  loc_A79D1F: VCallAd Control_ID_CodiConcMsk
  loc_A79D22: FStAdFunc var_88
  loc_A79D25: FLdPr var_88
  loc_A79D28: LateIdSt
  loc_A79D2D: FFree1Ad var_88
  loc_A79D30: LitVar_FALSE
  loc_A79D34: PopAdLdVar
  loc_A79D35: FLdPr Me
  loc_A79D38: VCallAd Control_ID_ActiConcMsk
  loc_A79D3B: FStAdFunc var_88
  loc_A79D3E: FLdPr var_88
  loc_A79D41: LateIdSt
  loc_A79D46: FFree1Ad var_88
  loc_A79D49: LitVarStr var_9C, vbNullString
  loc_A79D4E: PopAdLdVar
  loc_A79D4F: FLdPr Me
  loc_A79D52: VCallAd Control_ID_ActiConcMsk
  loc_A79D55: FStAdFunc var_88
  loc_A79D58: FLdPr var_88
  loc_A79D5B: LateIdSt
  loc_A79D60: FFree1Ad var_88
  loc_A79D63: LitStr vbNullString
  loc_A79D66: FLdPr Me
  loc_A79D69: VCallAd Control_ID_DetaActiLbl
  loc_A79D6C: FStAdFunc var_88
  loc_A79D6F: FLdPr var_88
  loc_A79D72: Me.Caption = from_stack_1
  loc_A79D77: FFree1Ad var_88
  loc_A79D7A: ExitProcHresult
End Sub

Private Sub CuentaContableOpt_Click() 'A79704
  'Data Table: 4E8E30
  loc_A79680: FLdRfVar var_8A
  loc_A79683: FLdPr Me
  loc_A79686: VCallAd Control_ID_CuentaContableOpt
  loc_A79689: FStAdFunc var_88
  loc_A7968C: FLdPr var_88
  loc_A7968F:  = Me.Value
  loc_A79694: FLdI2 var_8A
  loc_A79697: LitI2_Byte &HFF
  loc_A79699: EqI2
  loc_A7969A: FFree1Ad var_88
  loc_A7969D: BranchF loc_A79702
  loc_A796A0: LitVar_TRUE var_9C
  loc_A796A3: PopAdLdVar
  loc_A796A4: FLdPr Me
  loc_A796A7: VCallAd Control_ID_ActiConcMsk
  loc_A796AA: FStAdFunc var_88
  loc_A796AD: FLdPr var_88
  loc_A796B0: LateIdSt
  loc_A796B5: FFree1Ad var_88
  loc_A796B8: LitVar_FALSE
  loc_A796BC: PopAdLdVar
  loc_A796BD: FLdPr Me
  loc_A796C0: VCallAd Control_ID_CodiConcMsk
  loc_A796C3: FStAdFunc var_88
  loc_A796C6: FLdPr var_88
  loc_A796C9: LateIdSt
  loc_A796CE: FFree1Ad var_88
  loc_A796D1: LitVarStr var_9C, vbNullString
  loc_A796D6: PopAdLdVar
  loc_A796D7: FLdPr Me
  loc_A796DA: VCallAd Control_ID_CodiConcMsk
  loc_A796DD: FStAdFunc var_88
  loc_A796E0: FLdPr var_88
  loc_A796E3: LateIdSt
  loc_A796E8: FFree1Ad var_88
  loc_A796EB: LitStr vbNullString
  loc_A796EE: FLdPr Me
  loc_A796F1: VCallAd Control_ID_DetaConcLbl
  loc_A796F4: FStAdFunc var_88
  loc_A796F7: FLdPr var_88
  loc_A796FA: Me.Caption = from_stack_1
  loc_A796FF: FFree1Ad var_88
  loc_A79702: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CF28C
  'Data Table: 4E8E30
  loc_9CF274: LitI2_Byte 0
  loc_9CF276: ILdRf Me
  loc_9CF279: CastAd
  loc_9CF27C: FStAdFunc var_88
  loc_9CF27F: FLdRfVar var_88
  loc_9CF282: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CF287: FFree1Ad var_88
  loc_9CF28A: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF4060
  'Data Table: 4E8E30
  loc_AF3ED0: ILdRf Me
  loc_AF3ED3: CastAd
  loc_AF3ED6: FStAdFunc var_88
  loc_AF3ED9: FLdRfVar var_88
  loc_AF3EDC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AF3EE1: FFree1Ad var_88
  loc_AF3EE4: LitVarStr var_98, "Detalle de la Facturación Art. 27"
  loc_AF3EE9: CStrVarVal var_9C
  loc_AF3EED: FLdPr Me
  loc_AF3EF0: Me.Caption = from_stack_1
  loc_AF3EF5: FFree1Str var_9C
  loc_AF3EF8: Call cmdNueva_Click()
  loc_AF3EFD: LitVarStr var_98, vbNullString
  loc_AF3F02: PopAdLdVar
  loc_AF3F03: FLdPr Me
  loc_AF3F06: VCallAd Control_ID_ActiConcMsk
  loc_AF3F09: FStAdFunc var_88
  loc_AF3F0C: FLdPr var_88
  loc_AF3F0F: LateIdSt
  loc_AF3F14: FFree1Ad var_88
  loc_AF3F17: LitStr vbNullString
  loc_AF3F1A: FLdPr Me
  loc_AF3F1D: VCallAd Control_ID_DetaActiLbl
  loc_AF3F20: FStAdFunc var_88
  loc_AF3F23: FLdPr var_88
  loc_AF3F26: Me.Caption = from_stack_1
  loc_AF3F2B: FFree1Ad var_88
  loc_AF3F2E: LitI2_Byte 0
  loc_AF3F30: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF3F35: CVarDate var_BC
  loc_AF3F39: FLdRfVar var_CC
  loc_AF3F3C: ImpAdCallFPR4  = Year()
  loc_AF3F41: LitI2_Byte 0
  loc_AF3F43: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF3F48: CVarDate var_DC
  loc_AF3F4C: FLdRfVar var_EC
  loc_AF3F4F: ImpAdCallFPR4  = Month()
  loc_AF3F54: LitI2_Byte 1
  loc_AF3F56: FLdRfVar var_EC
  loc_AF3F59: LitVarI2 var_FC, 1
  loc_AF3F5E: SubVar var_10C
  loc_AF3F62: CI2Var
  loc_AF3F63: FLdRfVar var_CC
  loc_AF3F66: CI2Var
  loc_AF3F67: FLdRfVar var_11C
  loc_AF3F6A: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF3F6F: FLdRfVar var_11C
  loc_AF3F72: CStrVarTmp
  loc_AF3F73: CVarStr var_12C
  loc_AF3F76: PopAdLdVar
  loc_AF3F77: FLdPr Me
  loc_AF3F7A: VCallAd Control_ID_DesdeMsk
  loc_AF3F7D: FStAdFunc var_88
  loc_AF3F80: FLdPr var_88
  loc_AF3F83: LateIdSt
  loc_AF3F88: FFree1Ad var_88
  loc_AF3F8B: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_CC = "": var_11C = ""
  loc_AF3F9A: FLdPr Me
  loc_AF3F9D: VCallAd Control_ID_DesdeMsk
  loc_AF3FA0: FStAdFunc var_88
  loc_AF3FA3: FLdPr var_88
  loc_AF3FA6: LateIdLdVar var_BC DispID_15 0
  loc_AF3FAD: CStrVarTmp
  loc_AF3FAE: CVarStr var_CC
  loc_AF3FB1: FLdRfVar var_DC
  loc_AF3FB4: ImpAdCallFPR4  = Year()
  loc_AF3FB9: FLdPr Me
  loc_AF3FBC: VCallAd Control_ID_DesdeMsk
  loc_AF3FBF: FStAdFunc var_140
  loc_AF3FC2: FLdPr var_140
  loc_AF3FC5: LateIdLdVar var_EC DispID_15 0
  loc_AF3FCC: CStrVarTmp
  loc_AF3FCD: CVarStr var_10C
  loc_AF3FD0: FLdRfVar var_11C
  loc_AF3FD3: ImpAdCallFPR4  = Month()
  loc_AF3FD8: LitI2_Byte 1
  loc_AF3FDA: FLdRfVar var_11C
  loc_AF3FDD: LitVarI2 var_98, 1
  loc_AF3FE2: AddVar var_12C
  loc_AF3FE6: CI2Var
  loc_AF3FE7: FLdRfVar var_DC
  loc_AF3FEA: CI2Var
  loc_AF3FEB: FLdRfVar var_150
  loc_AF3FEE: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF3FF3: FLdRfVar var_150
  loc_AF3FF6: LitVarI2 var_AC, 1
  loc_AF3FFB: SubVar var_160
  loc_AF3FFF: CStrVarTmp
  loc_AF4000: CVarStr var_170
  loc_AF4003: PopAdLdVar
  loc_AF4004: FLdPr Me
  loc_AF4007: VCallAd Control_ID_HastaMsk
  loc_AF400A: FStAdFunc var_174
  loc_AF400D: FLdPr var_174
  loc_AF4010: LateIdSt
  loc_AF4015: FFreeAd var_88 = "": var_140 = ""
  loc_AF401E: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AF4033: LitI2_Byte &HFF
  loc_AF4035: FLdPr Me
  loc_AF4038: VCallAd Control_ID_CuentaOpt
  loc_AF403B: FStAdFunc var_88
  loc_AF403E: FLdPr var_88
  loc_AF4041: Me.Value = from_stack_1b
  loc_AF4046: FFree1Ad var_88
  loc_AF4049: LitI2_Byte &HFF
  loc_AF404B: FLdPr Me
  loc_AF404E: VCallAd Control_ID_CuentaContableOpt
  loc_AF4051: FStAdFunc var_88
  loc_AF4054: FLdPr var_88
  loc_AF4057: Me.Value = from_stack_1b
  loc_AF405C: FFree1Ad var_88
  loc_AF405F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD9E8
  'Data Table: 4E8E30
  loc_9CD9D0: FLdPr Me
  loc_9CD9D3: VCallAd Control_ID_wbbReporte
  loc_9CD9D6: FStAdFunc var_88
  loc_9CD9D9: FLdRfVar var_88
  loc_9CD9DC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD9E1: FFree1Ad var_88
  loc_9CD9E4: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4EA358
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4EA367
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'ADC940
  'Data Table: 4E8E30
  loc_ADC810: LitI4 0
  loc_ADC815: LitI4 7
  loc_ADC81A: FLdRfVar var_88
  loc_ADC81D: Redim
  loc_ADC827: FLdPr Me
  loc_ADC82A: VCallAd Control_ID_DesdeMsk
  loc_ADC82D: CVarAd
  loc_ADC831: ParmAry1St
  loc_ADC837: FLdPr Me
  loc_ADC83A: VCallAd Control_ID_DesdeFechaCmd
  loc_ADC83D: CVarAd
  loc_ADC841: ParmAry1St
  loc_ADC847: FLdPr Me
  loc_ADC84A: VCallAd Control_ID_HastaMsk
  loc_ADC84D: CVarAd
  loc_ADC851: ParmAry1St
  loc_ADC857: FLdPr Me
  loc_ADC85A: VCallAd Control_ID_HastaFechaCmd
  loc_ADC85D: CVarAd
  loc_ADC861: ParmAry1St
  loc_ADC867: FLdPr Me
  loc_ADC86A: VCallAd Control_ID_CuentaOpt
  loc_ADC86D: CVarAd
  loc_ADC871: ParmAry1St
  loc_ADC877: FLdPr Me
  loc_ADC87A: VCallAd Control_ID_NombreOpt
  loc_ADC87D: CVarAd
  loc_ADC881: ParmAry1St
  loc_ADC887: FLdPr Me
  loc_ADC88A: VCallAd Control_ID_CuentaContableOpt
  loc_ADC88D: CVarAd
  loc_ADC891: ParmAry1St
  loc_ADC897: FLdPr Me
  loc_ADC89A: VCallAd Control_ID_ConceptoOpt
  loc_ADC89D: CVarAd
  loc_ADC8A1: ParmAry1St
  loc_ADC8A7: FLdRfVar var_88
  loc_ADC8AA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC8AF: FLdRfVar var_88
  loc_ADC8B2: Erase
  loc_ADC8B3: FLdRfVar var_10E
  loc_ADC8B6: FLdPr Me
  loc_ADC8B9: VCallAd Control_ID_CuentaContableOpt
  loc_ADC8BC: FStAdFunc var_10C
  loc_ADC8BF: FLdPr var_10C
  loc_ADC8C2:  = Me.Value
  loc_ADC8C7: FLdI2 var_10E
  loc_ADC8CA: LitI2_Byte &HFF
  loc_ADC8CC: EqI2
  loc_ADC8CD: FFree1Ad var_10C
  loc_ADC8D0: BranchF loc_ADC909
  loc_ADC8D3: LitI4 0
  loc_ADC8D8: LitI4 0
  loc_ADC8DD: FLdRfVar var_88
  loc_ADC8E0: Redim
  loc_ADC8EA: FLdPr Me
  loc_ADC8ED: VCallAd Control_ID_ActiConcMsk
  loc_ADC8F0: CVarAd
  loc_ADC8F4: ParmAry1St
  loc_ADC8FA: FLdRfVar var_88
  loc_ADC8FD: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC902: FLdRfVar var_88
  loc_ADC905: Erase
  loc_ADC906: Branch loc_ADC93C
  loc_ADC909: LitI4 0
  loc_ADC90E: LitI4 0
  loc_ADC913: FLdRfVar var_88
  loc_ADC916: Redim
  loc_ADC920: FLdPr Me
  loc_ADC923: VCallAd Control_ID_CodiConcMsk
  loc_ADC926: CVarAd
  loc_ADC92A: ParmAry1St
  loc_ADC930: FLdRfVar var_88
  loc_ADC933: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADC938: FLdRfVar var_88
  loc_ADC93B: Erase
  loc_ADC93C: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BFC010
  'Data Table: 4E8E30
  loc_BFB7A8: FLdPr Me
  loc_BFB7AB: MemLdI2 bGenerado
  loc_BFB7AE: BranchF loc_BFB7B2
  loc_BFB7B1: ExitProcHresult
  loc_BFB7B2: LitVarStr var_9C, "Generando reporte..."
  loc_BFB7B7: PopAdLdVar
  loc_BFB7B8: FLdPr Me
  loc_BFB7BB: VCallAd Control_ID_statusBar
  loc_BFB7BE: FStAdFunc var_B0
  loc_BFB7C1: FLdPr var_B0
  loc_BFB7C4: LateIdSt
  loc_BFB7C9: FFree1Ad var_B0
  loc_BFB7CC: LitI4 &HB
  loc_BFB7D1: CI2I4
  loc_BFB7D2: FLdPr Me
  loc_BFB7D5: Me.MousePointer = from_stack_1
  loc_BFB7DA: LitI2_Byte 0
  loc_BFB7DC: PopTmpLdAd2 var_B2
  loc_BFB7DF: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BFB7E4: FLdPr Me
  loc_BFB7E7: MemLdStr global_116
  loc_BFB7EA: LitStr vbNullString
  loc_BFB7ED: NeStr
  loc_BFB7EF: BranchF loc_BFB7F5
  loc_BFB7F2: Branch loc_BFBFE4
  loc_BFB7F5: LitI2_Byte 0
  loc_BFB7F7: PopTmpLdAd2 var_B2
  loc_BFB7FA: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BFB7FF: FLdPr Me
  loc_BFB802: MemLdStr global_116
  loc_BFB805: LitStr vbNullString
  loc_BFB808: NeStr
  loc_BFB80A: BranchF loc_BFB810
  loc_BFB80D: Branch loc_BFBFE4
  loc_BFB810: FLdRfVar var_B2
  loc_BFB813: FLdPr Me
  loc_BFB816: VCallAd Control_ID_CuentaContableOpt
  loc_BFB819: FStAdFunc var_B0
  loc_BFB81C: FLdPr var_B0
  loc_BFB81F:  = Me.Value
  loc_BFB824: FLdI2 var_B2
  loc_BFB827: LitI2_Byte &HFF
  loc_BFB829: EqI2
  loc_BFB82A: FFree1Ad var_B0
  loc_BFB82D: BranchF loc_BFB84B
  loc_BFB830: LitI2_Byte 0
  loc_BFB832: PopTmpLdAd2 var_B2
  loc_BFB835: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_BFB83A: FLdPr Me
  loc_BFB83D: MemLdStr global_116
  loc_BFB840: LitStr vbNullString
  loc_BFB843: NeStr
  loc_BFB845: BranchF loc_BFB84B
  loc_BFB848: Branch loc_BFBFE4
  loc_BFB84B: FLdRfVar var_B2
  loc_BFB84E: FLdPr Me
  loc_BFB851: VCallAd Control_ID_ConceptoOpt
  loc_BFB854: FStAdFunc var_B0
  loc_BFB857: FLdPr var_B0
  loc_BFB85A:  = Me.Value
  loc_BFB85F: FLdI2 var_B2
  loc_BFB862: LitI2_Byte &HFF
  loc_BFB864: EqI2
  loc_BFB865: FFree1Ad var_B0
  loc_BFB868: BranchF loc_BFB886
  loc_BFB86B: LitI2_Byte 0
  loc_BFB86D: PopTmpLdAd2 var_B2
  loc_BFB870: Call CodiConcMsk_UnknownEvent_8()
  loc_BFB875: FLdPr Me
  loc_BFB878: MemLdStr global_116
  loc_BFB87B: LitStr vbNullString
  loc_BFB87E: NeStr
  loc_BFB880: BranchF loc_BFB886
  loc_BFB883: Branch loc_BFBFE4
  loc_BFB886: FLdPr Me
  loc_BFB889: VCallAd Control_ID_DesdeMsk
  loc_BFB88C: FStAdFunc var_B0
  loc_BFB88F: FLdPr var_B0
  loc_BFB892: LateIdLdVar var_C4 DispID_15 0
  loc_BFB899: PopAd
  loc_BFB89B: LitI4 1
  loc_BFB8A0: LitI4 1
  loc_BFB8A5: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BFB8AA: FStVarCopyObj var_E4
  loc_BFB8AD: FLdRfVar var_E4
  loc_BFB8B0: FLdRfVar var_C4
  loc_BFB8B3: CStrVarTmp
  loc_BFB8B4: CVarStr var_D4
  loc_BFB8B7: ImpAdCallI2 Format$(, )
  loc_BFB8BC: FStStr var_88
  loc_BFB8BF: FFree1Ad var_B0
  loc_BFB8C2: FFreeVar var_C4 = "": var_D4 = ""
  loc_BFB8CB: FLdPr Me
  loc_BFB8CE: VCallAd Control_ID_HastaMsk
  loc_BFB8D1: FStAdFunc var_B0
  loc_BFB8D4: FLdPr var_B0
  loc_BFB8D7: LateIdLdVar var_C4 DispID_15 0
  loc_BFB8DE: PopAd
  loc_BFB8E0: LitI4 1
  loc_BFB8E5: LitI4 1
  loc_BFB8EA: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BFB8EF: FStVarCopyObj var_E4
  loc_BFB8F2: FLdRfVar var_E4
  loc_BFB8F5: FLdRfVar var_C4
  loc_BFB8F8: CStrVarTmp
  loc_BFB8F9: CVarStr var_D4
  loc_BFB8FC: ImpAdCallI2 Format$(, )
  loc_BFB901: FStStr var_8C
  loc_BFB904: FFree1Ad var_B0
  loc_BFB907: FFreeVar var_C4 = "": var_D4 = ""
  loc_BFB910: FLdPr Me
  loc_BFB913: MemLdRfVar from_stack_1.global_92
  loc_BFB916: NewIfNullAd
  loc_BFB919: FStAd var_E8 
  loc_BFB91D: FLdRfVar var_B2
  loc_BFB920: FLdPr Me
  loc_BFB923: VCallAd Control_ID_CuentaContableOpt
  loc_BFB926: FStAdFunc var_B0
  loc_BFB929: FLdPr var_B0
  loc_BFB92C:  = Me.Value
  loc_BFB931: FLdI2 var_B2
  loc_BFB934: LitI2_Byte &HFF
  loc_BFB936: EqI2
  loc_BFB937: FFree1Ad var_B0
  loc_BFB93A: BranchF loc_BFBB49
  loc_BFB93D: LitStr "Municipalidad de Guaymallén"
  loc_BFB940: LitStr "Municipalidad de Guaymallén"
  loc_BFB943: EqStr
  loc_BFB945: BranchF loc_BFBA53
  loc_BFB948: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BFB94B: LitStr " SELECT ctacte.CuenCtct, CodiOfic, sum(if(CodiTimo IN (1,3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as AforCtct,"
  loc_BFB94E: ConcatStr
  loc_BFB94F: FStStrNoPop var_EC
  loc_BFB952: LitStr " sum(if(CodiTimo IN (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68,12,14,15),CredCtct,000000000.00)) as CredCtct"
  loc_BFB955: ConcatStr
  loc_BFB956: FStStrNoPop var_F0
  loc_BFB959: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BFB95C: ConcatStr
  loc_BFB95D: CVarStr var_D4
  loc_BFB960: FLdRfVar var_88
  loc_BFB963: CVarRef
  loc_BFB968: FLdRfVar var_C4
  loc_BFB96B: ImpAdCallFPR4  = Year()
  loc_BFB970: FLdRfVar var_C4
  loc_BFB973: ConcatVar var_E4
  loc_BFB977: LitVarStr var_AC, " AND concepto.ActiConc = '"
  loc_BFB97C: ConcatVar var_100
  loc_BFB980: FLdPr Me
  loc_BFB983: VCallAd Control_ID_ActiConcMsk
  loc_BFB986: FStAdFunc var_B0
  loc_BFB989: FLdPr var_B0
  loc_BFB98C: LateIdLdVar var_110 DispID_22 0
  loc_BFB993: CStrVarTmp
  loc_BFB994: CVarStr var_120
  loc_BFB997: ConcatVar var_130
  loc_BFB99B: LitVarStr var_140, "'"
  loc_BFB9A0: ConcatVar var_150
  loc_BFB9A4: LitVarStr var_160, " WHERE ctacte.FealCtct BETWEEN '"
  loc_BFB9A9: ConcatVar var_170
  loc_BFB9AD: ILdRf var_88
  loc_BFB9B0: CVarStr var_180
  loc_BFB9B3: ConcatVar var_190
  loc_BFB9B7: LitVarStr var_1A0, "' AND '"
  loc_BFB9BC: ConcatVar var_1B0
  loc_BFB9C0: ILdRf var_8C
  loc_BFB9C3: CVarStr var_1C0
  loc_BFB9C6: ConcatVar var_1D0
  loc_BFB9CA: LitVarStr var_1E0, "'"
  loc_BFB9CF: ConcatVar var_1F0
  loc_BFB9D3: LitVarStr var_200, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct;"
  loc_BFB9D8: ConcatVar var_210
  loc_BFB9DC: LitVarStr var_220, " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_BFB9E1: ConcatVar var_230
  loc_BFB9E5: CStrVarVal var_234
  loc_BFB9E9: FLdPr var_E8
  loc_BFB9EC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFB9F1: FFreeStr var_EC = "": var_F0 = ""
  loc_BFB9FA: FFree1Ad var_B0
  loc_BFB9FD: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_110 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_210 = ""
  loc_BFBA1E: LitStr "SELECT tribu.*, if(persona.DetaPers is null, if(titulargis.DetaPers is null,'', titulargis.DetaPers),persona.DetaPers) DetaPers FROM tribu"
  loc_BFBA21: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_BFBA24: ConcatStr
  loc_BFBA25: FStStrNoPop var_EC
  loc_BFBA28: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFBA2B: ConcatStr
  loc_BFBA2C: FStStrNoPop var_F0
  loc_BFBA2F: LitStr " LEFT JOIN titulargis ON titulargis.CodiOfic = tribu.CodiOfic"
  loc_BFBA32: ConcatStr
  loc_BFBA33: FStStrNoPop var_234
  loc_BFBA36: LitStr " AND titulargis.CuenCtct = tribu.CuenCtct"
  loc_BFBA39: ConcatStr
  loc_BFBA3A: FStStrNoPop var_238
  loc_BFBA3D: FLdPr var_E8
  loc_BFBA40: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBA45: FFreeStr var_EC = "": var_F0 = "": var_234 = ""
  loc_BFBA50: Branch loc_BFBB49
  loc_BFBA53: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BFBA56: LitStr " SELECT ctacte.CuenCtct, CodiOfic, sum(if(CodiTimo IN (1,3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as AforCtct,"
  loc_BFBA59: ConcatStr
  loc_BFBA5A: FStStrNoPop var_EC
  loc_BFBA5D: LitStr " sum(if(CodiTimo IN (11,20,23,12,14,15),CredCtct,000000000.00)) as CredCtct"
  loc_BFBA60: ConcatStr
  loc_BFBA61: FStStrNoPop var_F0
  loc_BFBA64: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BFBA67: ConcatStr
  loc_BFBA68: CVarStr var_D4
  loc_BFBA6B: FLdRfVar var_88
  loc_BFBA6E: CVarRef
  loc_BFBA73: FLdRfVar var_C4
  loc_BFBA76: ImpAdCallFPR4  = Year()
  loc_BFBA7B: FLdRfVar var_C4
  loc_BFBA7E: ConcatVar var_E4
  loc_BFBA82: LitVarStr var_AC, " AND concepto.ActiConc = '"
  loc_BFBA87: ConcatVar var_100
  loc_BFBA8B: FLdPr Me
  loc_BFBA8E: VCallAd Control_ID_ActiConcMsk
  loc_BFBA91: FStAdFunc var_B0
  loc_BFBA94: FLdPr var_B0
  loc_BFBA97: LateIdLdVar var_110 DispID_22 0
  loc_BFBA9E: CStrVarTmp
  loc_BFBA9F: CVarStr var_120
  loc_BFBAA2: ConcatVar var_130
  loc_BFBAA6: LitVarStr var_140, "'"
  loc_BFBAAB: ConcatVar var_150
  loc_BFBAAF: LitVarStr var_160, " WHERE ctacte.FealCtct BETWEEN '"
  loc_BFBAB4: ConcatVar var_170
  loc_BFBAB8: ILdRf var_88
  loc_BFBABB: CVarStr var_180
  loc_BFBABE: ConcatVar var_190
  loc_BFBAC2: LitVarStr var_1A0, "' AND '"
  loc_BFBAC7: ConcatVar var_1B0
  loc_BFBACB: ILdRf var_8C
  loc_BFBACE: CVarStr var_1C0
  loc_BFBAD1: ConcatVar var_1D0
  loc_BFBAD5: LitVarStr var_1E0, "'"
  loc_BFBADA: ConcatVar var_1F0
  loc_BFBADE: LitVarStr var_200, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct;"
  loc_BFBAE3: ConcatVar var_210
  loc_BFBAE7: LitVarStr var_220, " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_BFBAEC: ConcatVar var_230
  loc_BFBAF0: CStrVarVal var_234
  loc_BFBAF4: FLdPr var_E8
  loc_BFBAF7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBAFC: FFreeStr var_EC = "": var_F0 = ""
  loc_BFBB05: FFree1Ad var_B0
  loc_BFBB08: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_110 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_210 = ""
  loc_BFBB29: LitStr "SELECT tribu.*, DetaPers FROM tribu"
  loc_BFBB2C: LitStr " INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_BFBB2F: ConcatStr
  loc_BFBB30: FStStrNoPop var_EC
  loc_BFBB33: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFBB36: ConcatStr
  loc_BFBB37: FStStrNoPop var_F0
  loc_BFBB3A: FLdPr var_E8
  loc_BFBB3D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBB42: FFreeStr var_EC = ""
  loc_BFBB49: FLdRfVar var_B2
  loc_BFBB4C: FLdPr Me
  loc_BFBB4F: VCallAd Control_ID_ConceptoOpt
  loc_BFBB52: FStAdFunc var_B0
  loc_BFBB55: FLdPr var_B0
  loc_BFBB58:  = Me.Value
  loc_BFBB5D: FLdI2 var_B2
  loc_BFBB60: LitI2_Byte &HFF
  loc_BFBB62: EqI2
  loc_BFBB63: FFree1Ad var_B0
  loc_BFBB66: BranchF loc_BFBDC1
  loc_BFBB69: LitStr "Municipalidad de Guaymallén"
  loc_BFBB6C: LitStr "Municipalidad de Guaymallén"
  loc_BFBB6F: EqStr
  loc_BFBB71: BranchF loc_BFBD02
  loc_BFBB74: FLdPr Me
  loc_BFBB77: MemLdUI1 global_112
  loc_BFBB7B: CI2UI1
  loc_BFBB7D: LitI2_Byte 0
  loc_BFBB7F: EqI2
  loc_BFBB80: BranchF loc_BFBC25
  loc_BFBB83: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BFBB86: LitStr " SELECT ctacte.CuenCtct, CodiOfic, sum(if(CodiTimo IN (1,3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as AforCtct,"
  loc_BFBB89: ConcatStr
  loc_BFBB8A: FStStrNoPop var_EC
  loc_BFBB8D: LitStr " sum(if(CodiTimo IN (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68,12,14,15),CredCtct,000000000.00)) as CredCtct"
  loc_BFBB90: ConcatStr
  loc_BFBB91: FStStrNoPop var_F0
  loc_BFBB94: LitStr " FROM ctacte "
  loc_BFBB97: ConcatStr
  loc_BFBB98: FStStrNoPop var_234
  loc_BFBB9B: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_BFBB9E: ConcatStr
  loc_BFBB9F: FStStrNoPop var_238
  loc_BFBBA2: ILdRf var_88
  loc_BFBBA5: ConcatStr
  loc_BFBBA6: FStStrNoPop var_23C
  loc_BFBBA9: LitStr "' AND '"
  loc_BFBBAC: ConcatStr
  loc_BFBBAD: FStStrNoPop var_240
  loc_BFBBB0: ILdRf var_8C
  loc_BFBBB3: ConcatStr
  loc_BFBBB4: FStStrNoPop var_244
  loc_BFBBB7: LitStr "'"
  loc_BFBBBA: ConcatStr
  loc_BFBBBB: FStStrNoPop var_248
  loc_BFBBBE: LitStr " AND CodiConc = '"
  loc_BFBBC1: ConcatStr
  loc_BFBBC2: FStStrNoPop var_24C
  loc_BFBBC5: FLdPr Me
  loc_BFBBC8: VCallAd Control_ID_CodiConcMsk
  loc_BFBBCB: FStAdFunc var_B0
  loc_BFBBCE: FLdPr var_B0
  loc_BFBBD1: LateIdLdVar var_C4 DispID_22 0
  loc_BFBBD8: CStrVarTmp
  loc_BFBBD9: FStStrNoPop var_250
  loc_BFBBDC: ConcatStr
  loc_BFBBDD: FStStrNoPop var_254
  loc_BFBBE0: LitStr "'"
  loc_BFBBE3: ConcatStr
  loc_BFBBE4: FStStrNoPop var_258
  loc_BFBBE7: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct;"
  loc_BFBBEA: ConcatStr
  loc_BFBBEB: FStStrNoPop var_25C
  loc_BFBBEE: LitStr " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_BFBBF1: ConcatStr
  loc_BFBBF2: FStStrNoPop var_260
  loc_BFBBF5: FLdPr var_E8
  loc_BFBBF8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBBFD: FFreeStr var_EC = "": var_F0 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = ""
  loc_BFBC1C: FFree1Ad var_B0
  loc_BFBC1F: FFree1Var var_C4 = ""
  loc_BFBC22: Branch loc_BFBCC4
  loc_BFBC25: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BFBC28: LitStr " SELECT ctacte.CuenCtct, CodiOfic, sum(if(CodiTimo IN (3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as AforCtct,"
  loc_BFBC2B: ConcatStr
  loc_BFBC2C: FStStrNoPop var_EC
  loc_BFBC2F: LitStr " sum(if(CodiTimo IN (11,20,23,50,51,55,58,61,62,59,64,71,63,57,68,12,14,15),CredCtct,000000000.00)) as CredCtct"
  loc_BFBC32: ConcatStr
  loc_BFBC33: FStStrNoPop var_F0
  loc_BFBC36: LitStr " FROM ctacte "
  loc_BFBC39: ConcatStr
  loc_BFBC3A: FStStrNoPop var_234
  loc_BFBC3D: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_BFBC40: ConcatStr
  loc_BFBC41: FStStrNoPop var_238
  loc_BFBC44: ILdRf var_88
  loc_BFBC47: ConcatStr
  loc_BFBC48: FStStrNoPop var_23C
  loc_BFBC4B: LitStr "' AND '"
  loc_BFBC4E: ConcatStr
  loc_BFBC4F: FStStrNoPop var_240
  loc_BFBC52: ILdRf var_8C
  loc_BFBC55: ConcatStr
  loc_BFBC56: FStStrNoPop var_244
  loc_BFBC59: LitStr "'"
  loc_BFBC5C: ConcatStr
  loc_BFBC5D: FStStrNoPop var_248
  loc_BFBC60: LitStr " AND CodiConc = '"
  loc_BFBC63: ConcatStr
  loc_BFBC64: FStStrNoPop var_24C
  loc_BFBC67: FLdPr Me
  loc_BFBC6A: VCallAd Control_ID_CodiConcMsk
  loc_BFBC6D: FStAdFunc var_B0
  loc_BFBC70: FLdPr var_B0
  loc_BFBC73: LateIdLdVar var_C4 DispID_22 0
  loc_BFBC7A: CStrVarTmp
  loc_BFBC7B: FStStrNoPop var_250
  loc_BFBC7E: ConcatStr
  loc_BFBC7F: FStStrNoPop var_254
  loc_BFBC82: LitStr "'"
  loc_BFBC85: ConcatStr
  loc_BFBC86: FStStrNoPop var_258
  loc_BFBC89: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct;"
  loc_BFBC8C: ConcatStr
  loc_BFBC8D: FStStrNoPop var_25C
  loc_BFBC90: LitStr " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_BFBC93: ConcatStr
  loc_BFBC94: FStStrNoPop var_260
  loc_BFBC97: FLdPr var_E8
  loc_BFBC9A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBC9F: FFreeStr var_EC = "": var_F0 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = ""
  loc_BFBCBE: FFree1Ad var_B0
  loc_BFBCC1: FFree1Var var_C4 = ""
  loc_BFBCC4: LitStr "SELECT tribu.*, if(persona.DetaPers is null, if(vpadrones_persona.denominacion is null,'', vpadrones_persona.denominacion),persona.DetaPers) DetaPers FROM tribu"
  loc_BFBCC7: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_BFBCCA: ConcatStr
  loc_BFBCCB: FStStrNoPop var_EC
  loc_BFBCCE: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFBCD1: ConcatStr
  loc_BFBCD2: FStStrNoPop var_F0
  loc_BFBCD5: LitStr " LEFT JOIN vpadrones_persona ON vpadrones_persona.nro_padron = tribu.CuenCtct"
  loc_BFBCD8: ConcatStr
  loc_BFBCD9: FStStrNoPop var_234
  loc_BFBCDC: LitStr " AND principal = 'Si'"
  loc_BFBCDF: ConcatStr
  loc_BFBCE0: FStStrNoPop var_238
  loc_BFBCE3: LitStr " AND estado = 'Activo'"
  loc_BFBCE6: ConcatStr
  loc_BFBCE7: FStStrNoPop var_23C
  loc_BFBCEA: FLdPr var_E8
  loc_BFBCED: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBCF2: FFreeStr var_EC = "": var_F0 = "": var_234 = "": var_238 = ""
  loc_BFBCFF: Branch loc_BFBDC1
  loc_BFBD02: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BFBD05: LitStr " SELECT ctacte.CuenCtct, CodiOfic, sum(if(CodiTimo IN (1,3,8,10,19,22,24,27,28),DebeCtct,000000000.00)) as AforCtct,"
  loc_BFBD08: ConcatStr
  loc_BFBD09: FStStrNoPop var_EC
  loc_BFBD0C: LitStr " sum(if(CodiTimo IN (11,20,23,12,14,15),CredCtct,000000000.00)) as CredCtct"
  loc_BFBD0F: ConcatStr
  loc_BFBD10: FStStrNoPop var_F0
  loc_BFBD13: LitStr " FROM ctacte "
  loc_BFBD16: ConcatStr
  loc_BFBD17: FStStrNoPop var_234
  loc_BFBD1A: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_BFBD1D: ConcatStr
  loc_BFBD1E: FStStrNoPop var_238
  loc_BFBD21: ILdRf var_88
  loc_BFBD24: ConcatStr
  loc_BFBD25: FStStrNoPop var_23C
  loc_BFBD28: LitStr "' AND '"
  loc_BFBD2B: ConcatStr
  loc_BFBD2C: FStStrNoPop var_240
  loc_BFBD2F: ILdRf var_8C
  loc_BFBD32: ConcatStr
  loc_BFBD33: FStStrNoPop var_244
  loc_BFBD36: LitStr "'"
  loc_BFBD39: ConcatStr
  loc_BFBD3A: FStStrNoPop var_248
  loc_BFBD3D: LitStr " AND CodiConc = '"
  loc_BFBD40: ConcatStr
  loc_BFBD41: FStStrNoPop var_24C
  loc_BFBD44: FLdPr Me
  loc_BFBD47: VCallAd Control_ID_CodiConcMsk
  loc_BFBD4A: FStAdFunc var_B0
  loc_BFBD4D: FLdPr var_B0
  loc_BFBD50: LateIdLdVar var_C4 DispID_22 0
  loc_BFBD57: CStrVarTmp
  loc_BFBD58: FStStrNoPop var_250
  loc_BFBD5B: ConcatStr
  loc_BFBD5C: FStStrNoPop var_254
  loc_BFBD5F: LitStr "'"
  loc_BFBD62: ConcatStr
  loc_BFBD63: FStStrNoPop var_258
  loc_BFBD66: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct;"
  loc_BFBD69: ConcatStr
  loc_BFBD6A: FStStrNoPop var_25C
  loc_BFBD6D: LitStr " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic);"
  loc_BFBD70: ConcatStr
  loc_BFBD71: FStStrNoPop var_260
  loc_BFBD74: FLdPr var_E8
  loc_BFBD77: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBD7C: FFreeStr var_EC = "": var_F0 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = ""
  loc_BFBD9B: FFree1Ad var_B0
  loc_BFBD9E: FFree1Var var_C4 = ""
  loc_BFBDA1: LitStr "SELECT tribu.*, DetaPers FROM tribu"
  loc_BFBDA4: LitStr " INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_BFBDA7: ConcatStr
  loc_BFBDA8: FStStrNoPop var_EC
  loc_BFBDAB: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFBDAE: ConcatStr
  loc_BFBDAF: FStStrNoPop var_F0
  loc_BFBDB2: FLdPr var_E8
  loc_BFBDB5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFBDBA: FFreeStr var_EC = ""
  loc_BFBDC1: FLdRfVar var_264
  loc_BFBDC4: FLdPr var_E8
  loc_BFBDC7: from_stack_1 = clsctacte.RecordCount
  loc_BFBDCC: ILdRf var_264
  loc_BFBDCF: LitI4 0
  loc_BFBDD4: EqI4
  loc_BFBDD5: BranchF loc_BFBDE3
  loc_BFBDD8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BFBDDB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BFBDE0: Branch loc_BFBFE4
  loc_BFBDE3: LitI4 0
  loc_BFBDE8: LitI4 1
  loc_BFBDED: FLdPr Me
  loc_BFBDF0: MemLdRfVar from_stack_1.global_104
  loc_BFBDF3: Redim
  loc_BFBDFD: LitI4 0
  loc_BFBE02: FLdRfVar var_264
  loc_BFBE05: FLdPr var_E8
  loc_BFBE08: from_stack_1 = clsctacte.RecordCount
  loc_BFBE0D: ILdRf var_264
  loc_BFBE10: FLdPr Me
  loc_BFBE13: MemLdRfVar from_stack_1.global_96
  loc_BFBE16: Redim
  loc_BFBE20: FLdPr var_E8
  loc_BFBE23: Call clsctacte.MoveFirst()
  loc_BFBE28: FLdRfVar var_264
  loc_BFBE2B: FLdPr var_E8
  loc_BFBE2E: from_stack_1 = clsctacte.RecordCount
  loc_BFBE33: ILdRf var_264
  loc_BFBE36: CR8I4
  loc_BFBE37: CVarR4
  loc_BFBE3B: PopAdLdVar
  loc_BFBE3C: FLdPrThis
  loc_BFBE3D: VCallAd Control_ID_Pbar
  loc_BFBE40: FStAdFunc var_B0
  loc_BFBE43: FLdPr var_B0
  loc_BFBE46: LateIdSt
  loc_BFBE4B: FFree1Ad var_B0
  loc_BFBE4E: LitVar_TRUE var_9C
  loc_BFBE51: PopAdLdVar
  loc_BFBE52: FLdPrThis
  loc_BFBE53: VCallAd Control_ID_Pbar
  loc_BFBE56: FStAdFunc var_B0
  loc_BFBE59: FLdPr var_B0
  loc_BFBE5C: LateIdSt
  loc_BFBE61: FFree1Ad var_B0
  loc_BFBE64: LitI4 1
  loc_BFBE69: FLdPr Me
  loc_BFBE6C: MemLdRfVar from_stack_1.global_100
  loc_BFBE6F: FLdPr Me
  loc_BFBE72: MemLdStr global_96
  loc_BFBE75: LitI2_Byte 1
  loc_BFBE77: FnUBound
  loc_BFBE79: ForI4 var_26C
  loc_BFBE7F: FLdPr Me
  loc_BFBE82: MemLdStr global_100
  loc_BFBE85: CR8I4
  loc_BFBE86: CVarR4
  loc_BFBE8A: PopAdLdVar
  loc_BFBE8B: FLdPrThis
  loc_BFBE8C: VCallAd Control_ID_Pbar
  loc_BFBE8F: FStAdFunc var_B0
  loc_BFBE92: FLdPr var_B0
  loc_BFBE95: LateIdSt
  loc_BFBE9A: FFree1Ad var_B0
  loc_BFBE9D: FLdRfVar var_EC
  loc_BFBEA0: FLdPr var_E8
  loc_BFBEA3: from_stack_1 = clsctacte.CuenCtct
  loc_BFBEA8: LitI2_Byte 0
  loc_BFBEAA: LitVar_Missing var_D4
  loc_BFBEAD: LitI2_Byte 0
  loc_BFBEAF: FLdZeroAd var_EC
  loc_BFBEB2: CVarStr var_C4
  loc_BFBEB5: PopAdLdVar
  loc_BFBEB6: FLdPr Me
  loc_BFBEB9: MemLdStr global_100
  loc_BFBEBC: FLdPr Me
  loc_BFBEBF: MemLdStr global_96
  loc_BFBEC2: AryLock
  loc_BFBEC5: Ary1LdPr
  loc_BFBEC6: MemLdRfVar from_stack_1.global_0
  loc_BFBEC9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFBECE: AryUnlock
  loc_BFBED1: FFreeVar var_C4 = ""
  loc_BFBED8: FLdRfVar var_C4
  loc_BFBEDB: FLdPr var_E8
  loc_BFBEDE: from_stack_1 = clsctacte.DetaPers
  loc_BFBEE3: LitI2_Byte 0
  loc_BFBEE5: LitVar_Missing var_D4
  loc_BFBEE8: LitI2_Byte 0
  loc_BFBEEA: FLdVar var_C4
  loc_BFBEEE: FLdPr Me
  loc_BFBEF1: MemLdStr global_100
  loc_BFBEF4: FLdPr Me
  loc_BFBEF7: MemLdStr global_96
  loc_BFBEFA: AryLock
  loc_BFBEFD: Ary1LdPr
  loc_BFBEFE: MemLdRfVar from_stack_1.global_4
  loc_BFBF01: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFBF06: AryUnlock
  loc_BFBF09: FFreeVar var_C4 = ""
  loc_BFBF10: FLdRfVar var_C4
  loc_BFBF13: FLdPr var_E8
  loc_BFBF16: from_stack_1 = clsctacte.AforCtct
  loc_BFBF1B: LitI2_Byte 0
  loc_BFBF1D: LitI4 1
  loc_BFBF22: FLdPr Me
  loc_BFBF25: MemLdStr global_104
  loc_BFBF28: AryLock
  loc_BFBF2B: Ary1LdPr
  loc_BFBF2C: MemLdRfVar from_stack_1.global_0
  loc_BFBF2F: CVarRef
  loc_BFBF34: LitI2_Byte &HFF
  loc_BFBF36: FLdVar var_C4
  loc_BFBF3A: FLdPr Me
  loc_BFBF3D: MemLdStr global_100
  loc_BFBF40: FLdPr Me
  loc_BFBF43: MemLdStr global_96
  loc_BFBF46: AryLock
  loc_BFBF49: Ary1LdPr
  loc_BFBF4A: MemLdRfVar from_stack_1.global_8
  loc_BFBF4D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFBF52: AryUnlock
  loc_BFBF55: AryUnlock
  loc_BFBF58: FFree1Var var_C4 = ""
  loc_BFBF5B: FLdRfVar var_27C
  loc_BFBF5E: FLdPr var_E8
  loc_BFBF61: from_stack_1 = clsctacte.CredCtct
  loc_BFBF66: LitI2_Byte 0
  loc_BFBF68: LitI4 1
  loc_BFBF6D: FLdPr Me
  loc_BFBF70: MemLdStr global_104
  loc_BFBF73: AryLock
  loc_BFBF76: Ary1LdPr
  loc_BFBF77: MemLdRfVar from_stack_1.global_4
  loc_BFBF7A: CVarRef
  loc_BFBF7F: LitI2_Byte &HFF
  loc_BFBF81: FLdFPR8 var_27C
  loc_BFBF84: CVarR8
  loc_BFBF88: PopAdLdVar
  loc_BFBF89: FLdPr Me
  loc_BFBF8C: MemLdStr global_100
  loc_BFBF8F: FLdPr Me
  loc_BFBF92: MemLdStr global_96
  loc_BFBF95: AryLock
  loc_BFBF98: Ary1LdPr
  loc_BFBF99: MemLdRfVar from_stack_1.global_12
  loc_BFBF9C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFBFA1: AryUnlock
  loc_BFBFA4: AryUnlock
  loc_BFBFA7: LitI2_Byte 1
  loc_BFBFA9: PopTmpLdAd2 var_B2
  loc_BFBFAC: FLdPr var_E8
  loc_BFBFAF: Call clsctacte.Move(from_stack_1v)
  loc_BFBFB4: FLdPr Me
  loc_BFBFB7: MemLdRfVar from_stack_1.global_100
  loc_BFBFBA: NextI4 var_26C, loc_BFBE7F
  loc_BFBFBF: LitVar_FALSE
  loc_BFBFC3: PopAdLdVar
  loc_BFBFC4: FLdPrThis
  loc_BFBFC5: VCallAd Control_ID_Pbar
  loc_BFBFC8: FStAdFunc var_B0
  loc_BFBFCB: FLdPr var_B0
  loc_BFBFCE: LateIdSt
  loc_BFBFD3: FFree1Ad var_B0
  loc_BFBFD6: LitNothing
  loc_BFBFD8: FStAd var_E8 
  loc_BFBFDC: LitI2_Byte &HFF
  loc_BFBFDE: FLdPr Me
  loc_BFBFE1: MemStI2 bGenerado
  loc_BFBFE4: LitI4 0
  loc_BFBFE9: CI2I4
  loc_BFBFEA: FLdPr Me
  loc_BFBFED: Me.MousePointer = from_stack_1
  loc_BFBFF2: LitVarStr var_9C, vbNullString
  loc_BFBFF7: PopAdLdVar
  loc_BFBFF8: FLdPr Me
  loc_BFBFFB: VCallAd Control_ID_statusBar
  loc_BFBFFE: FStAdFunc var_B0
  loc_BFC001: FLdPr var_B0
  loc_BFC004: LateIdSt
  loc_BFC009: FFree1Ad var_B0
  loc_BFC00C: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B65398
  'Data Table: 4E8E30
  loc_B64F70: OnErrorGoto loc_B6531B
  loc_B64F73: LitStr "	"
  loc_B64F76: FStStrCopy var_88
  loc_B64F79: FLdRfVar var_8C
  loc_B64F7C: LitI2_Byte 0
  loc_B64F7E: LitI2_Byte &HFF
  loc_B64F80: ImpAdLdI4 MemVar_D93030
  loc_B64F83: FLdPr Me
  loc_B64F86: MemLdRfVar from_stack_1.global_56
  loc_B64F89: NewIfNullPr IFileSystem3
  loc_B64F8C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B64F91: ILdRf var_8C
  loc_B64F94: FLdPr Me
  loc_B64F97: MemStVarAd
  loc_B64F9B: FFree1Ad var_8C
  loc_B64F9E: FLdPr Me
  loc_B64FA1: MemLdStr global_96
  loc_B64FA4: LitI2_Byte 1
  loc_B64FA6: FnUBound
  loc_B64FA8: LitI4 0
  loc_B64FAD: EqI4
  loc_B64FAE: BranchF loc_B65010
  loc_B64FB1: LitI4 0
  loc_B64FB6: LitI4 1
  loc_B64FBB: FLdRfVar var_90
  loc_B64FBE: Redim
  loc_B64FC8: LitVarStr var_A0, "|"
  loc_B64FCD: LitI4 0
  loc_B64FD2: ILdRf var_90
  loc_B64FD5: Ary1StVarCopy
  loc_B64FD7: LitVarStr var_B0, "SIN MOVIMIENTO"
  loc_B64FDC: LitI4 1
  loc_B64FE1: ILdRf var_90
  loc_B64FE4: Ary1StVarCopy
  loc_B64FE6: FLdRfVar var_90
  loc_B64FE9: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B64FEE: FStStr var_B4
  loc_B64FF1: FLdRfVar var_90
  loc_B64FF4: Erase
  loc_B64FF5: FLdZeroAd var_B4
  loc_B64FF8: CVarStr var_C4
  loc_B64FFB: PopAdLdVar
  loc_B64FFC: FLdPr Me
  loc_B64FFF: MemLdRfVar from_stack_1.global_76
  loc_B65002: LdPrVar
  loc_B65004: LateMemCall
  loc_B6500A: FFree1Var var_C4 = ""
  loc_B6500D: Branch loc_B65309
  loc_B65010: LitStr "Municipalidad de Guaymallén"
  loc_B65013: LitStr "Municipalidad de Guaymallén"
  loc_B65016: NeStr
  loc_B65018: BranchF loc_B651AA
  loc_B6501B: LitI4 0
  loc_B65020: LitI4 4
  loc_B65025: FLdRfVar var_90
  loc_B65028: Redim
  loc_B65032: LitVarStr var_A0, "|"
  loc_B65037: LitI4 0
  loc_B6503C: ILdRf var_90
  loc_B6503F: Ary1StVarCopy
  loc_B65041: LitVarStr var_B0, "Cuenta"
  loc_B65046: LitI4 1
  loc_B6504B: ILdRf var_90
  loc_B6504E: Ary1StVarCopy
  loc_B65050: LitVarStr var_D4, "Apellido y Nombre"
  loc_B65055: LitI4 2
  loc_B6505A: ILdRf var_90
  loc_B6505D: Ary1StVarCopy
  loc_B6505F: LitVarStr var_E4, "Aforos"
  loc_B65064: LitI4 3
  loc_B65069: ILdRf var_90
  loc_B6506C: Ary1StVarCopy
  loc_B6506E: LitVarStr var_F4, "Ajustes"
  loc_B65073: LitI4 4
  loc_B65078: ILdRf var_90
  loc_B6507B: Ary1StVarCopy
  loc_B6507D: FLdRfVar var_90
  loc_B65080: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B65085: FStStr var_B4
  loc_B65088: FLdRfVar var_90
  loc_B6508B: Erase
  loc_B6508C: FLdZeroAd var_B4
  loc_B6508F: CVarStr var_C4
  loc_B65092: PopAdLdVar
  loc_B65093: FLdPr Me
  loc_B65096: MemLdRfVar from_stack_1.global_76
  loc_B65099: LdPrVar
  loc_B6509B: LateMemCall
  loc_B650A1: FFree1Var var_C4 = ""
  loc_B650A4: LitI4 1
  loc_B650A9: FLdPr Me
  loc_B650AC: MemLdRfVar from_stack_1.global_100
  loc_B650AF: FLdPr Me
  loc_B650B2: MemLdStr global_96
  loc_B650B5: LitI2_Byte 1
  loc_B650B7: FnUBound
  loc_B650B9: ForI4 var_10C
  loc_B650BF: FLdPr Me
  loc_B650C2: MemLdStr global_100
  loc_B650C5: FLdPr Me
  loc_B650C8: MemLdStr global_96
  loc_B650CB: AryLock
  loc_B650CE: Ary1LdRf
  loc_B650CF: FStR4 var_114
  loc_B650D2: LitI4 0
  loc_B650D7: LitI4 4
  loc_B650DC: FLdRfVar var_90
  loc_B650DF: Redim
  loc_B650E9: LitVarStr var_A0, "|"
  loc_B650EE: LitI4 0
  loc_B650F3: ILdRf var_90
  loc_B650F6: Ary1StVarCopy
  loc_B650F8: FLdPr Me
  loc_B650FB: MemLdStr global_100
  loc_B650FE: FLdPr Me
  loc_B65101: MemLdStr global_96
  loc_B65104: Ary1LdPr
  loc_B65105: MemLdRfVar from_stack_1.global_0
  loc_B65108: CVarRef
  loc_B6510D: ParmAry1St
  loc_B65113: FLdPr Me
  loc_B65116: MemLdStr global_100
  loc_B65119: FLdPr Me
  loc_B6511C: MemLdStr global_96
  loc_B6511F: Ary1LdPr
  loc_B65120: MemLdRfVar from_stack_1.global_4
  loc_B65123: CVarRef
  loc_B65128: ParmAry1St
  loc_B6512E: FLdPr Me
  loc_B65131: MemLdStr global_100
  loc_B65134: FLdPr Me
  loc_B65137: MemLdStr global_96
  loc_B6513A: Ary1LdPr
  loc_B6513B: MemLdStr global_8
  loc_B6513E: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B65143: CVarStr var_C4
  loc_B65146: ParmAry1St
  loc_B6514C: FLdPr Me
  loc_B6514F: MemLdStr global_100
  loc_B65152: FLdPr Me
  loc_B65155: MemLdStr global_96
  loc_B65158: Ary1LdPr
  loc_B65159: MemLdStr global_12
  loc_B6515C: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B65161: CVarStr var_124
  loc_B65164: ParmAry1St
  loc_B6516A: FLdRfVar var_90
  loc_B6516D: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B65172: FStStr var_B4
  loc_B65175: FLdRfVar var_90
  loc_B65178: Erase
  loc_B65179: FLdZeroAd var_B4
  loc_B6517C: CVarStr var_134
  loc_B6517F: PopAdLdVar
  loc_B65180: FLdPr Me
  loc_B65183: MemLdRfVar from_stack_1.global_76
  loc_B65186: LdPrVar
  loc_B65188: LateMemCall
  loc_B6518E: FFree1Var var_134 = ""
  loc_B65191: LitI4 0
  loc_B65196: FStR4 var_114
  loc_B65199: AryUnlock
  loc_B6519C: FLdPr Me
  loc_B6519F: MemLdRfVar from_stack_1.global_100
  loc_B651A2: NextI4 var_10C, loc_B650BF
  loc_B651A7: Branch loc_B65309
  loc_B651AA: LitI4 0
  loc_B651AF: LitI4 3
  loc_B651B4: FLdRfVar var_90
  loc_B651B7: Redim
  loc_B651C1: LitVarStr var_A0, "|"
  loc_B651C6: LitI4 0
  loc_B651CB: ILdRf var_90
  loc_B651CE: Ary1StVarCopy
  loc_B651D0: LitVarStr var_B0, "Cuenta"
  loc_B651D5: LitI4 1
  loc_B651DA: ILdRf var_90
  loc_B651DD: Ary1StVarCopy
  loc_B651DF: LitVarStr var_D4, "Apellido y Nombre"
  loc_B651E4: LitI4 2
  loc_B651E9: ILdRf var_90
  loc_B651EC: Ary1StVarCopy
  loc_B651EE: LitVarStr var_E4, "Aforos"
  loc_B651F3: LitI4 3
  loc_B651F8: ILdRf var_90
  loc_B651FB: Ary1StVarCopy
  loc_B651FD: FLdRfVar var_90
  loc_B65200: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B65205: FStStr var_B4
  loc_B65208: FLdRfVar var_90
  loc_B6520B: Erase
  loc_B6520C: FLdZeroAd var_B4
  loc_B6520F: CVarStr var_C4
  loc_B65212: PopAdLdVar
  loc_B65213: FLdPr Me
  loc_B65216: MemLdRfVar from_stack_1.global_76
  loc_B65219: LdPrVar
  loc_B6521B: LateMemCall
  loc_B65221: FFree1Var var_C4 = ""
  loc_B65224: LitI4 1
  loc_B65229: FLdPr Me
  loc_B6522C: MemLdRfVar from_stack_1.global_100
  loc_B6522F: FLdPr Me
  loc_B65232: MemLdStr global_96
  loc_B65235: LitI2_Byte 1
  loc_B65237: FnUBound
  loc_B65239: ForI4 var_13C
  loc_B6523F: FLdPr Me
  loc_B65242: MemLdStr global_100
  loc_B65245: FLdPr Me
  loc_B65248: MemLdStr global_96
  loc_B6524B: AryLock
  loc_B6524E: Ary1LdRf
  loc_B6524F: FStR4 var_144
  loc_B65252: LitI4 0
  loc_B65257: LitI4 3
  loc_B6525C: FLdRfVar var_90
  loc_B6525F: Redim
  loc_B65269: LitVarStr var_A0, "|"
  loc_B6526E: LitI4 0
  loc_B65273: ILdRf var_90
  loc_B65276: Ary1StVarCopy
  loc_B65278: FLdPr Me
  loc_B6527B: MemLdStr global_100
  loc_B6527E: FLdPr Me
  loc_B65281: MemLdStr global_96
  loc_B65284: Ary1LdPr
  loc_B65285: MemLdRfVar from_stack_1.global_0
  loc_B65288: CVarRef
  loc_B6528D: ParmAry1St
  loc_B65293: FLdPr Me
  loc_B65296: MemLdStr global_100
  loc_B65299: FLdPr Me
  loc_B6529C: MemLdStr global_96
  loc_B6529F: Ary1LdPr
  loc_B652A0: MemLdRfVar from_stack_1.global_4
  loc_B652A3: CVarRef
  loc_B652A8: ParmAry1St
  loc_B652AE: FLdPr Me
  loc_B652B1: MemLdStr global_100
  loc_B652B4: FLdPr Me
  loc_B652B7: MemLdStr global_96
  loc_B652BA: Ary1LdPr
  loc_B652BB: MemLdStr global_8
  loc_B652BE: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B652C3: CVarStr var_C4
  loc_B652C6: ParmAry1St
  loc_B652CC: FLdRfVar var_90
  loc_B652CF: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B652D4: FStStr var_B4
  loc_B652D7: FLdRfVar var_90
  loc_B652DA: Erase
  loc_B652DB: FLdZeroAd var_B4
  loc_B652DE: CVarStr var_124
  loc_B652E1: PopAdLdVar
  loc_B652E2: FLdPr Me
  loc_B652E5: MemLdRfVar from_stack_1.global_76
  loc_B652E8: LdPrVar
  loc_B652EA: LateMemCall
  loc_B652F0: FFree1Var var_124 = ""
  loc_B652F3: LitI4 0
  loc_B652F8: FStR4 var_144
  loc_B652FB: AryUnlock
  loc_B652FE: FLdPr Me
  loc_B65301: MemLdRfVar from_stack_1.global_100
  loc_B65304: NextI4 var_13C, loc_B6523F
  loc_B65309: FLdPr Me
  loc_B6530C: MemLdRfVar from_stack_1.global_76
  loc_B6530F: LdPrVar
  loc_B65311: LateMemCall
  loc_B65317: On Error GoTo 0
  loc_B6531A: ExitProcHresult
  loc_B6531B: LitVar_Missing var_16C
  loc_B6531E: LitVar_Missing var_134
  loc_B65321: LitVar_Missing var_124
  loc_B65324: LitI4 0
  loc_B65329: LitStr "Error "
  loc_B6532C: FLdRfVar var_148
  loc_B6532F: ImpAdCallI2 Err 'rtcErrObj
  loc_B65334: FStAdFunc var_8C
  loc_B65337: FLdPr var_8C
  loc_B6533A:  = Err.Number
  loc_B6533F: ILdRf var_148
  loc_B65342: CStrI4
  loc_B65344: FStStrNoPop var_B4
  loc_B65347: ConcatStr
  loc_B65348: FStStrNoPop var_14C
  loc_B6534B: LitStr " ("
  loc_B6534E: ConcatStr
  loc_B6534F: FStStrNoPop var_158
  loc_B65352: FLdRfVar var_154
  loc_B65355: ImpAdCallI2 Err 'rtcErrObj
  loc_B6535A: FStAdFunc var_150
  loc_B6535D: FLdPr var_150
  loc_B65360:  = Err.Description
  loc_B65365: ILdRf var_154
  loc_B65368: ConcatStr
  loc_B65369: FStStrNoPop var_15C
  loc_B6536C: LitStr ") in procedure GeneraTXT of Formulario Detalle de la Facturación Artículo 27"
  loc_B6536F: ConcatStr
  loc_B65370: CVarStr var_C4
  loc_B65373: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B65378: FFreeStr var_B4 = "": var_14C = "": var_158 = "": var_154 = ""
  loc_B65385: FFreeAd var_8C = ""
  loc_B6538C: FFreeVar var_C4 = "": var_124 = "": var_134 = ""
  loc_B65397: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'BF5E00
  'Data Table: 4E8E30
  loc_BF55B0: ImpAdLdI4 MemVar_D93030
  loc_BF55B3: FStStrCopy var_88
  loc_BF55B6: LitI4 0
  loc_BF55BB: LitStr "Excel.Application"
  loc_BF55BE: FLdRfVar var_B4
  loc_BF55C1: ImpAdCallFPR4  = CreateObject(, )
  loc_BF55C6: FLdRfVar var_B4
  loc_BF55C9: FLdRfVar var_98
  loc_BF55CC: SetVarVarFunc
  loc_BF55CE: FLdRfVar var_98
  loc_BF55D1: VarLateMemLdVar var_B4, .Workbooks
  loc_BF55D7: CastAdVar Me
  loc_BF55DB: FStAdFunc var_9C
  loc_BF55DE: FFree1Var var_B4 = ""
  loc_BF55E1: FLdRfVar var_E0
  loc_BF55E4: LitVarI2 var_DC, 1
  loc_BF55E9: PopAdLdVar
  loc_BF55EA: FLdRfVar var_CC
  loc_BF55ED: FLdRfVar var_C8
  loc_BF55F0: LitI4 &H409
  loc_BF55F5: LitVar_Missing var_C4
  loc_BF55F8: PopAdLdVar
  loc_BF55F9: FLdPr var_9C
  loc_BF55FC:  = Forms
  loc_BF5601: FLdPr var_C8
  loc_BF5604: Call 0.Method_arg_20C ()
  loc_BF5609: FLdPr var_CC
  loc_BF560C: Me.BackColor = from_stack_1
  loc_BF5611: ILdRf var_E0
  loc_BF5614: CastAd
  loc_BF5617: FStAdFunc var_A0
  loc_BF561A: FFreeAd var_C8 = "": var_CC = ""
  loc_BF5623: LitVar_TRUE var_C4
  loc_BF5626: PopAdLdVar
  loc_BF5627: FLdRfVar var_98
  loc_BF562A: VarLateMemSt .Visible
  loc_BF562E: LitStr "Municipalidad de Guaymallén"
  loc_BF5631: LitStr "Municipalidad de Guaymallén"
  loc_BF5634: NeStr
  loc_BF5636: BranchF loc_BF5A93
  loc_BF5639: LitVarI2 var_C4, 1
  loc_BF563E: PopAdLdVar
  loc_BF563F: LitVarI2 var_F0, 1
  loc_BF5644: PopAdLdVar
  loc_BF5645: LitVarStr var_110, "Cuenta"
  loc_BF564A: PopAdLdVar
  loc_BF564B: FLdRfVar var_C8
  loc_BF564E: FLdPr var_A0
  loc_BF5651:  = Me.FontUnderline
  loc_BF5656: FLdPr var_C8
  loc_BF5659: LateIdCallSt
  loc_BF5661: FFree1Ad var_C8
  loc_BF5664: LitVarI2 var_C4, 1
  loc_BF5669: PopAdLdVar
  loc_BF566A: LitVarI2 var_F0, 2
  loc_BF566F: PopAdLdVar
  loc_BF5670: LitVarStr var_110, "Apellido y Nombre"
  loc_BF5675: PopAdLdVar
  loc_BF5676: FLdRfVar var_C8
  loc_BF5679: FLdPr var_A0
  loc_BF567C:  = Me.FontUnderline
  loc_BF5681: FLdPr var_C8
  loc_BF5684: LateIdCallSt
  loc_BF568C: FFree1Ad var_C8
  loc_BF568F: LitVarI2 var_C4, 1
  loc_BF5694: PopAdLdVar
  loc_BF5695: LitVarI2 var_F0, 3
  loc_BF569A: PopAdLdVar
  loc_BF569B: LitVarStr var_110, "Aforos"
  loc_BF56A0: PopAdLdVar
  loc_BF56A1: FLdRfVar var_C8
  loc_BF56A4: FLdPr var_A0
  loc_BF56A7:  = Me.FontUnderline
  loc_BF56AC: FLdPr var_C8
  loc_BF56AF: LateIdCallSt
  loc_BF56B7: FFree1Ad var_C8
  loc_BF56BA: LitVarI2 var_C4, 1
  loc_BF56BF: PopAdLdVar
  loc_BF56C0: LitVarI2 var_F0, 4
  loc_BF56C5: PopAdLdVar
  loc_BF56C6: LitVarStr var_110, "Ajustes"
  loc_BF56CB: PopAdLdVar
  loc_BF56CC: FLdRfVar var_C8
  loc_BF56CF: FLdPr var_A0
  loc_BF56D2:  = Me.FontUnderline
  loc_BF56D7: FLdPr var_C8
  loc_BF56DA: LateIdCallSt
  loc_BF56E2: FFree1Ad var_C8
  loc_BF56E5: LitI2_Byte 1
  loc_BF56E7: FStI2 var_A2
  loc_BF56EA: LitI4 1
  loc_BF56EF: FLdPr Me
  loc_BF56F2: MemLdRfVar from_stack_1.global_100
  loc_BF56F5: FLdPr Me
  loc_BF56F8: MemLdStr global_96
  loc_BF56FB: LitI2_Byte 1
  loc_BF56FD: FnUBound
  loc_BF56FF: ForI4 var_128
  loc_BF5705: FLdPr Me
  loc_BF5708: MemLdStr global_100
  loc_BF570B: FLdPr Me
  loc_BF570E: MemLdStr global_96
  loc_BF5711: AryLock
  loc_BF5714: Ary1LdPr
  loc_BF5715: MemLdRfVar from_stack_1.global_8
  loc_BF5718: FStR4 var_130
  loc_BF571B: FLdI2 var_A2
  loc_BF571E: CI4UI1
  loc_BF571F: FLdPr Me
  loc_BF5722: MemLdStr global_100
  loc_BF5725: AddI4
  loc_BF5726: CVarI4
  loc_BF572A: PopAdLdVar
  loc_BF572B: LitVarI2 var_F0, 1
  loc_BF5730: PopAdLdVar
  loc_BF5731: FLdPr Me
  loc_BF5734: MemLdStr global_100
  loc_BF5737: FLdPr Me
  loc_BF573A: MemLdStr global_96
  loc_BF573D: Ary1LdPr
  loc_BF573E: MemLdStr global_0
  loc_BF5741: CVarStr var_110
  loc_BF5744: PopAdLdVar
  loc_BF5745: FLdRfVar var_C8
  loc_BF5748: FLdPr var_A0
  loc_BF574B:  = Me.FontUnderline
  loc_BF5750: FLdPr var_C8
  loc_BF5753: LateIdCallSt
  loc_BF575B: FFree1Ad var_C8
  loc_BF575E: FLdI2 var_A2
  loc_BF5761: CI4UI1
  loc_BF5762: FLdPr Me
  loc_BF5765: MemLdStr global_100
  loc_BF5768: AddI4
  loc_BF5769: CVarI4
  loc_BF576D: PopAdLdVar
  loc_BF576E: LitVarI2 var_F0, 2
  loc_BF5773: PopAdLdVar
  loc_BF5774: FLdPr Me
  loc_BF5777: MemLdStr global_100
  loc_BF577A: FLdPr Me
  loc_BF577D: MemLdStr global_96
  loc_BF5780: Ary1LdPr
  loc_BF5781: MemLdStr global_4
  loc_BF5784: CVarStr var_110
  loc_BF5787: PopAdLdVar
  loc_BF5788: FLdRfVar var_C8
  loc_BF578B: FLdPr var_A0
  loc_BF578E:  = Me.FontUnderline
  loc_BF5793: FLdPr var_C8
  loc_BF5796: LateIdCallSt
  loc_BF579E: FFree1Ad var_C8
  loc_BF57A1: FLdI2 var_A2
  loc_BF57A4: CI4UI1
  loc_BF57A5: FLdPr Me
  loc_BF57A8: MemLdStr global_100
  loc_BF57AB: AddI4
  loc_BF57AC: CVarI4
  loc_BF57B0: PopAdLdVar
  loc_BF57B1: LitVarI2 var_F0, 3
  loc_BF57B6: PopAdLdVar
  loc_BF57B7: FMemLdR4 var_130(0)
  loc_BF57BC: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BF57C1: CVarR8
  loc_BF57C5: PopAdLdVar
  loc_BF57C6: FLdRfVar var_C8
  loc_BF57C9: FLdPr var_A0
  loc_BF57CC:  = Me.FontUnderline
  loc_BF57D1: FLdPr var_C8
  loc_BF57D4: LateIdCallSt
  loc_BF57DC: FFree1Ad var_C8
  loc_BF57DF: FLdI2 var_A2
  loc_BF57E2: CI4UI1
  loc_BF57E3: FLdPr Me
  loc_BF57E6: MemLdStr global_100
  loc_BF57E9: AddI4
  loc_BF57EA: CVarI4
  loc_BF57EE: PopAdLdVar
  loc_BF57EF: LitVarI2 var_F0, 4
  loc_BF57F4: PopAdLdVar
  loc_BF57F5: FMemLdR4 var_130(4)
  loc_BF57FA: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BF57FF: CVarR8
  loc_BF5803: PopAdLdVar
  loc_BF5804: FLdRfVar var_C8
  loc_BF5807: FLdPr var_A0
  loc_BF580A:  = Me.FontUnderline
  loc_BF580F: FLdPr var_C8
  loc_BF5812: LateIdCallSt
  loc_BF581A: FFree1Ad var_C8
  loc_BF581D: LitI4 0
  loc_BF5822: FStR4 var_130
  loc_BF5825: AryUnlock
  loc_BF5828: FLdPr Me
  loc_BF582B: MemLdRfVar from_stack_1.global_100
  loc_BF582E: NextI4 var_128, loc_BF5705
  loc_BF5833: FLdI2 var_A2
  loc_BF5836: CI4UI1
  loc_BF5837: FLdPr Me
  loc_BF583A: MemLdStr global_100
  loc_BF583D: AddI4
  loc_BF583E: CVarI4
  loc_BF5842: PopAdLdVar
  loc_BF5843: LitVarI2 var_F0, 2
  loc_BF5848: PopAdLdVar
  loc_BF5849: LitVarStr var_110, "TOTALES"
  loc_BF584E: PopAdLdVar
  loc_BF584F: FLdRfVar var_C8
  loc_BF5852: FLdPr var_A0
  loc_BF5855:  = Me.FontUnderline
  loc_BF585A: FLdPr var_C8
  loc_BF585D: LateIdCallSt
  loc_BF5865: FFree1Ad var_C8
  loc_BF5868: FLdI2 var_A2
  loc_BF586B: CI4UI1
  loc_BF586C: FLdPr Me
  loc_BF586F: MemLdStr global_100
  loc_BF5872: AddI4
  loc_BF5873: CVarI4
  loc_BF5877: PopAdLdVar
  loc_BF5878: LitVarI2 var_F0, 3
  loc_BF587D: PopAdLdVar
  loc_BF587E: LitStr "=SUM(R[-"
  loc_BF5881: FLdPr Me
  loc_BF5884: MemLdStr global_96
  loc_BF5887: LitI2_Byte 1
  loc_BF5889: FnUBound
  loc_BF588B: CStrI4
  loc_BF588D: FStStrNoPop var_134
  loc_BF5890: ConcatStr
  loc_BF5891: FStStrNoPop var_138
  loc_BF5894: LitStr "]C:R[-1]C)"
  loc_BF5897: ConcatStr
  loc_BF5898: CVarStr var_B4
  loc_BF589B: PopAdLdVar
  loc_BF589C: FLdRfVar var_C8
  loc_BF589F: FLdPr var_A0
  loc_BF58A2:  = Me.FontUnderline
  loc_BF58A7: FLdPr var_C8
  loc_BF58AA: LateIdCallSt
  loc_BF58B2: FFreeStr var_134 = ""
  loc_BF58B9: FFree1Ad var_C8
  loc_BF58BC: FFree1Var var_B4 = ""
  loc_BF58BF: FLdI2 var_A2
  loc_BF58C2: CI4UI1
  loc_BF58C3: FLdPr Me
  loc_BF58C6: MemLdStr global_100
  loc_BF58C9: AddI4
  loc_BF58CA: CVarI4
  loc_BF58CE: PopAdLdVar
  loc_BF58CF: LitVarI2 var_F0, 4
  loc_BF58D4: PopAdLdVar
  loc_BF58D5: LitStr "=SUM(R[-"
  loc_BF58D8: FLdPr Me
  loc_BF58DB: MemLdStr global_96
  loc_BF58DE: LitI2_Byte 1
  loc_BF58E0: FnUBound
  loc_BF58E2: CStrI4
  loc_BF58E4: FStStrNoPop var_134
  loc_BF58E7: ConcatStr
  loc_BF58E8: FStStrNoPop var_138
  loc_BF58EB: LitStr "]C:R[-1]C)"
  loc_BF58EE: ConcatStr
  loc_BF58EF: CVarStr var_B4
  loc_BF58F2: PopAdLdVar
  loc_BF58F3: FLdRfVar var_C8
  loc_BF58F6: FLdPr var_A0
  loc_BF58F9:  = Me.FontUnderline
  loc_BF58FE: FLdPr var_C8
  loc_BF5901: LateIdCallSt
  loc_BF5909: FFreeStr var_134 = ""
  loc_BF5910: FFree1Ad var_C8
  loc_BF5913: FFree1Var var_B4 = ""
  loc_BF5916: LitVar_TRUE var_F0
  loc_BF5919: PopAdLdVar
  loc_BF591A: FLdRfVar var_C8
  loc_BF591D: LitVar_Missing var_DC
  loc_BF5920: PopAdLdVar
  loc_BF5921: LitVarStr var_C4, "A1:P1"
  loc_BF5926: PopAdLdVar
  loc_BF5927: FLdPr var_A0
  loc_BF592A:  = Me.Image
  loc_BF592F: FLdPr var_C8
  loc_BF5932: LateIdLdVar var_B4 DispID_146 0
  loc_BF5939: CastAdVar Me
  loc_BF593D: FStAdFunc var_CC
  loc_BF5940: FLdPr var_CC
  loc_BF5943: LateIdSt
  loc_BF5948: FFreeAd var_C8 = ""
  loc_BF594F: FFree1Var var_B4 = ""
  loc_BF5952: LitVar_TRUE var_DC
  loc_BF5955: PopAdLdVar
  loc_BF5956: FLdRfVar var_C8
  loc_BF5959: LitVar_Missing var_C4
  loc_BF595C: PopAdLdVar
  loc_BF595D: LitStr "B"
  loc_BF5960: FLdPr Me
  loc_BF5963: MemLdStr global_100
  loc_BF5966: LitI4 1
  loc_BF596B: AddI4
  loc_BF596C: CStrI4
  loc_BF596E: FStStrNoPop var_134
  loc_BF5971: ConcatStr
  loc_BF5972: FStStrNoPop var_138
  loc_BF5975: LitStr ":P"
  loc_BF5978: ConcatStr
  loc_BF5979: FStStrNoPop var_13C
  loc_BF597C: FLdPr Me
  loc_BF597F: MemLdStr global_100
  loc_BF5982: LitI4 1
  loc_BF5987: AddI4
  loc_BF5988: CStrI4
  loc_BF598A: FStStrNoPop var_140
  loc_BF598D: ConcatStr
  loc_BF598E: CVarStr var_B4
  loc_BF5991: PopAdLdVar
  loc_BF5992: FLdPr var_A0
  loc_BF5995:  = Me.Image
  loc_BF599A: FLdPr var_C8
  loc_BF599D: LateIdLdVar var_150 DispID_146 0
  loc_BF59A4: CastAdVar Me
  loc_BF59A8: FStAdFunc var_CC
  loc_BF59AB: FLdPr var_CC
  loc_BF59AE: LateIdSt
  loc_BF59B3: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BF59BE: FFreeAd var_C8 = ""
  loc_BF59C5: FFreeVar var_B4 = ""
  loc_BF59CC: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_BF59D1: PopAdLdVar
  loc_BF59D2: LitVarStr var_C4, "C"
  loc_BF59D7: PopAdLdVar
  loc_BF59D8: FLdRfVar var_C8
  loc_BF59DB: FLdPr var_A0
  loc_BF59DE:  = Me.CurrentY
  loc_BF59E3: FLdPr var_C8
  loc_BF59E6: LateIdCallLdVar
  loc_BF59F0: VarLateMemSt .NumberFormat
  loc_BF59F4: FFree1Ad var_C8
  loc_BF59F7: FFree1Var var_B4 = ""
  loc_BF59FA: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_BF59FF: PopAdLdVar
  loc_BF5A00: LitVarStr var_C4, "D"
  loc_BF5A05: PopAdLdVar
  loc_BF5A06: FLdRfVar var_C8
  loc_BF5A09: FLdPr var_A0
  loc_BF5A0C:  = Me.CurrentY
  loc_BF5A11: FLdPr var_C8
  loc_BF5A14: LateIdCallLdVar
  loc_BF5A1E: VarLateMemSt .NumberFormat
  loc_BF5A22: FFree1Ad var_C8
  loc_BF5A25: FFree1Var var_B4 = ""
  loc_BF5A28: LitVarStr var_C4, "A:D"
  loc_BF5A2D: PopAdLdVar
  loc_BF5A2E: FLdRfVar var_C8
  loc_BF5A31: FLdPr var_A0
  loc_BF5A34:  = Me.CurrentY
  loc_BF5A39: FLdPr var_C8
  loc_BF5A3C: LateIdCallLdVar
  loc_BF5A46: LdPrVar
  loc_BF5A48: LateMemCall
  loc_BF5A4E: FFree1Ad var_C8
  loc_BF5A51: FFree1Var var_150 = ""
  loc_BF5A54: LitVar_Missing var_180
  loc_BF5A57: PopAdLdVar
  loc_BF5A58: LitVar_Missing var_170
  loc_BF5A5B: PopAdLdVar
  loc_BF5A5C: LitVar_Missing var_160
  loc_BF5A5F: PopAdLdVar
  loc_BF5A60: LitVar_Missing var_120
  loc_BF5A63: PopAdLdVar
  loc_BF5A64: LitVar_Missing var_110
  loc_BF5A67: PopAdLdVar
  loc_BF5A68: LitVar_Missing var_100
  loc_BF5A6B: PopAdLdVar
  loc_BF5A6C: LitVar_Missing var_F0
  loc_BF5A6F: PopAdLdVar
  loc_BF5A70: LitVar_Missing var_DC
  loc_BF5A73: PopAdLdVar
  loc_BF5A74: LitVar_Missing var_C4
  loc_BF5A77: PopAdLdVar
  loc_BF5A78: ILdRf var_88
  loc_BF5A7B: FLdPr var_A0
  loc_BF5A7E: Me.MouseIcon = from_stack_1
  loc_BF5A83: LitI4 &H409
  loc_BF5A88: FLdPr var_9C
  loc_BF5A90: Branch loc_BF5DFC
  loc_BF5A93: LitVarI2 var_C4, 1
  loc_BF5A98: PopAdLdVar
  loc_BF5A99: LitVarI2 var_F0, 1
  loc_BF5A9E: PopAdLdVar
  loc_BF5A9F: LitVarStr var_110, "Cuenta"
  loc_BF5AA4: PopAdLdVar
  loc_BF5AA5: FLdRfVar var_C8
  loc_BF5AA8: FLdPr var_A0
  loc_BF5AAB:  = Me.FontUnderline
  loc_BF5AB0: FLdPr var_C8
  loc_BF5AB3: LateIdCallSt
  loc_BF5ABB: FFree1Ad var_C8
  loc_BF5ABE: LitVarI2 var_C4, 1
  loc_BF5AC3: PopAdLdVar
  loc_BF5AC4: LitVarI2 var_F0, 2
  loc_BF5AC9: PopAdLdVar
  loc_BF5ACA: LitVarStr var_110, "Apellido y Nombre"
  loc_BF5ACF: PopAdLdVar
  loc_BF5AD0: FLdRfVar var_C8
  loc_BF5AD3: FLdPr var_A0
  loc_BF5AD6:  = Me.FontUnderline
  loc_BF5ADB: FLdPr var_C8
  loc_BF5ADE: LateIdCallSt
  loc_BF5AE6: FFree1Ad var_C8
  loc_BF5AE9: LitVarI2 var_C4, 1
  loc_BF5AEE: PopAdLdVar
  loc_BF5AEF: LitVarI2 var_F0, 3
  loc_BF5AF4: PopAdLdVar
  loc_BF5AF5: LitVarStr var_110, "Aforos"
  loc_BF5AFA: PopAdLdVar
  loc_BF5AFB: FLdRfVar var_C8
  loc_BF5AFE: FLdPr var_A0
  loc_BF5B01:  = Me.FontUnderline
  loc_BF5B06: FLdPr var_C8
  loc_BF5B09: LateIdCallSt
  loc_BF5B11: FFree1Ad var_C8
  loc_BF5B14: LitI2_Byte 1
  loc_BF5B16: FStI2 var_A2
  loc_BF5B19: LitI4 1
  loc_BF5B1E: FLdPr Me
  loc_BF5B21: MemLdRfVar from_stack_1.global_100
  loc_BF5B24: FLdPr Me
  loc_BF5B27: MemLdStr global_96
  loc_BF5B2A: LitI2_Byte 1
  loc_BF5B2C: FnUBound
  loc_BF5B2E: ForI4 var_188
  loc_BF5B34: FLdPr Me
  loc_BF5B37: MemLdStr global_100
  loc_BF5B3A: FLdPr Me
  loc_BF5B3D: MemLdStr global_96
  loc_BF5B40: AryLock
  loc_BF5B43: Ary1LdPr
  loc_BF5B44: MemLdRfVar from_stack_1.global_8
  loc_BF5B47: FStR4 var_190
  loc_BF5B4A: FLdI2 var_A2
  loc_BF5B4D: CI4UI1
  loc_BF5B4E: FLdPr Me
  loc_BF5B51: MemLdStr global_100
  loc_BF5B54: AddI4
  loc_BF5B55: CVarI4
  loc_BF5B59: PopAdLdVar
  loc_BF5B5A: LitVarI2 var_F0, 1
  loc_BF5B5F: PopAdLdVar
  loc_BF5B60: FLdPr Me
  loc_BF5B63: MemLdStr global_100
  loc_BF5B66: FLdPr Me
  loc_BF5B69: MemLdStr global_96
  loc_BF5B6C: Ary1LdPr
  loc_BF5B6D: MemLdStr global_0
  loc_BF5B70: CVarStr var_110
  loc_BF5B73: PopAdLdVar
  loc_BF5B74: FLdRfVar var_C8
  loc_BF5B77: FLdPr var_A0
  loc_BF5B7A:  = Me.FontUnderline
  loc_BF5B7F: FLdPr var_C8
  loc_BF5B82: LateIdCallSt
  loc_BF5B8A: FFree1Ad var_C8
  loc_BF5B8D: FLdI2 var_A2
  loc_BF5B90: CI4UI1
  loc_BF5B91: FLdPr Me
  loc_BF5B94: MemLdStr global_100
  loc_BF5B97: AddI4
  loc_BF5B98: CVarI4
  loc_BF5B9C: PopAdLdVar
  loc_BF5B9D: LitVarI2 var_F0, 2
  loc_BF5BA2: PopAdLdVar
  loc_BF5BA3: FLdPr Me
  loc_BF5BA6: MemLdStr global_100
  loc_BF5BA9: FLdPr Me
  loc_BF5BAC: MemLdStr global_96
  loc_BF5BAF: Ary1LdPr
  loc_BF5BB0: MemLdStr global_4
  loc_BF5BB3: CVarStr var_110
  loc_BF5BB6: PopAdLdVar
  loc_BF5BB7: FLdRfVar var_C8
  loc_BF5BBA: FLdPr var_A0
  loc_BF5BBD:  = Me.FontUnderline
  loc_BF5BC2: FLdPr var_C8
  loc_BF5BC5: LateIdCallSt
  loc_BF5BCD: FFree1Ad var_C8
  loc_BF5BD0: FLdI2 var_A2
  loc_BF5BD3: CI4UI1
  loc_BF5BD4: FLdPr Me
  loc_BF5BD7: MemLdStr global_100
  loc_BF5BDA: AddI4
  loc_BF5BDB: CVarI4
  loc_BF5BDF: PopAdLdVar
  loc_BF5BE0: LitVarI2 var_F0, 3
  loc_BF5BE5: PopAdLdVar
  loc_BF5BE6: FMemLdR4 var_190(0)
  loc_BF5BEB: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_BF5BF0: CVarR8
  loc_BF5BF4: PopAdLdVar
  loc_BF5BF5: FLdRfVar var_C8
  loc_BF5BF8: FLdPr var_A0
  loc_BF5BFB:  = Me.FontUnderline
  loc_BF5C00: FLdPr var_C8
  loc_BF5C03: LateIdCallSt
  loc_BF5C0B: FFree1Ad var_C8
  loc_BF5C0E: LitI4 0
  loc_BF5C13: FStR4 var_190
  loc_BF5C16: AryUnlock
  loc_BF5C19: FLdPr Me
  loc_BF5C1C: MemLdRfVar from_stack_1.global_100
  loc_BF5C1F: NextI4 var_188, loc_BF5B34
  loc_BF5C24: FLdI2 var_A2
  loc_BF5C27: CI4UI1
  loc_BF5C28: FLdPr Me
  loc_BF5C2B: MemLdStr global_100
  loc_BF5C2E: AddI4
  loc_BF5C2F: CVarI4
  loc_BF5C33: PopAdLdVar
  loc_BF5C34: LitVarI2 var_F0, 2
  loc_BF5C39: PopAdLdVar
  loc_BF5C3A: LitVarStr var_110, "TOTALES"
  loc_BF5C3F: PopAdLdVar
  loc_BF5C40: FLdRfVar var_C8
  loc_BF5C43: FLdPr var_A0
  loc_BF5C46:  = Me.FontUnderline
  loc_BF5C4B: FLdPr var_C8
  loc_BF5C4E: LateIdCallSt
  loc_BF5C56: FFree1Ad var_C8
  loc_BF5C59: FLdI2 var_A2
  loc_BF5C5C: CI4UI1
  loc_BF5C5D: FLdPr Me
  loc_BF5C60: MemLdStr global_100
  loc_BF5C63: AddI4
  loc_BF5C64: CVarI4
  loc_BF5C68: PopAdLdVar
  loc_BF5C69: LitVarI2 var_F0, 3
  loc_BF5C6E: PopAdLdVar
  loc_BF5C6F: LitStr "=SUM(R[-"
  loc_BF5C72: FLdPr Me
  loc_BF5C75: MemLdStr global_96
  loc_BF5C78: LitI2_Byte 1
  loc_BF5C7A: FnUBound
  loc_BF5C7C: CStrI4
  loc_BF5C7E: FStStrNoPop var_134
  loc_BF5C81: ConcatStr
  loc_BF5C82: FStStrNoPop var_138
  loc_BF5C85: LitStr "]C:R[-1]C)"
  loc_BF5C88: ConcatStr
  loc_BF5C89: CVarStr var_B4
  loc_BF5C8C: PopAdLdVar
  loc_BF5C8D: FLdRfVar var_C8
  loc_BF5C90: FLdPr var_A0
  loc_BF5C93:  = Me.FontUnderline
  loc_BF5C98: FLdPr var_C8
  loc_BF5C9B: LateIdCallSt
  loc_BF5CA3: FFreeStr var_134 = ""
  loc_BF5CAA: FFree1Ad var_C8
  loc_BF5CAD: FFree1Var var_B4 = ""
  loc_BF5CB0: LitVar_TRUE var_F0
  loc_BF5CB3: PopAdLdVar
  loc_BF5CB4: FLdRfVar var_C8
  loc_BF5CB7: LitVar_Missing var_DC
  loc_BF5CBA: PopAdLdVar
  loc_BF5CBB: LitVarStr var_C4, "A1:P1"
  loc_BF5CC0: PopAdLdVar
  loc_BF5CC1: FLdPr var_A0
  loc_BF5CC4:  = Me.Image
  loc_BF5CC9: FLdPr var_C8
  loc_BF5CCC: LateIdLdVar var_B4 DispID_146 0
  loc_BF5CD3: CastAdVar Me
  loc_BF5CD7: FStAdFunc var_CC
  loc_BF5CDA: FLdPr var_CC
  loc_BF5CDD: LateIdSt
  loc_BF5CE2: FFreeAd var_C8 = ""
  loc_BF5CE9: FFree1Var var_B4 = ""
  loc_BF5CEC: LitVar_TRUE var_DC
  loc_BF5CEF: PopAdLdVar
  loc_BF5CF0: FLdRfVar var_C8
  loc_BF5CF3: LitVar_Missing var_C4
  loc_BF5CF6: PopAdLdVar
  loc_BF5CF7: LitStr "B"
  loc_BF5CFA: FLdPr Me
  loc_BF5CFD: MemLdStr global_100
  loc_BF5D00: LitI4 1
  loc_BF5D05: AddI4
  loc_BF5D06: CStrI4
  loc_BF5D08: FStStrNoPop var_134
  loc_BF5D0B: ConcatStr
  loc_BF5D0C: FStStrNoPop var_138
  loc_BF5D0F: LitStr ":P"
  loc_BF5D12: ConcatStr
  loc_BF5D13: FStStrNoPop var_13C
  loc_BF5D16: FLdPr Me
  loc_BF5D19: MemLdStr global_100
  loc_BF5D1C: LitI4 1
  loc_BF5D21: AddI4
  loc_BF5D22: CStrI4
  loc_BF5D24: FStStrNoPop var_140
  loc_BF5D27: ConcatStr
  loc_BF5D28: CVarStr var_B4
  loc_BF5D2B: PopAdLdVar
  loc_BF5D2C: FLdPr var_A0
  loc_BF5D2F:  = Me.Image
  loc_BF5D34: FLdPr var_C8
  loc_BF5D37: LateIdLdVar var_150 DispID_146 0
  loc_BF5D3E: CastAdVar Me
  loc_BF5D42: FStAdFunc var_CC
  loc_BF5D45: FLdPr var_CC
  loc_BF5D48: LateIdSt
  loc_BF5D4D: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BF5D58: FFreeAd var_C8 = ""
  loc_BF5D5F: FFreeVar var_B4 = ""
  loc_BF5D66: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_BF5D6B: PopAdLdVar
  loc_BF5D6C: LitVarStr var_C4, "C"
  loc_BF5D71: PopAdLdVar
  loc_BF5D72: FLdRfVar var_C8
  loc_BF5D75: FLdPr var_A0
  loc_BF5D78:  = Me.CurrentY
  loc_BF5D7D: FLdPr var_C8
  loc_BF5D80: LateIdCallLdVar
  loc_BF5D8A: VarLateMemSt .NumberFormat
  loc_BF5D8E: FFree1Ad var_C8
  loc_BF5D91: FFree1Var var_B4 = ""
  loc_BF5D94: LitVarStr var_C4, "A:C"
  loc_BF5D99: PopAdLdVar
  loc_BF5D9A: FLdRfVar var_C8
  loc_BF5D9D: FLdPr var_A0
  loc_BF5DA0:  = Me.CurrentY
  loc_BF5DA5: FLdPr var_C8
  loc_BF5DA8: LateIdCallLdVar
  loc_BF5DB2: LdPrVar
  loc_BF5DB4: LateMemCall
  loc_BF5DBA: FFree1Ad var_C8
  loc_BF5DBD: FFree1Var var_150 = ""
  loc_BF5DC0: LitVar_Missing var_180
  loc_BF5DC3: PopAdLdVar
  loc_BF5DC4: LitVar_Missing var_170
  loc_BF5DC7: PopAdLdVar
  loc_BF5DC8: LitVar_Missing var_160
  loc_BF5DCB: PopAdLdVar
  loc_BF5DCC: LitVar_Missing var_120
  loc_BF5DCF: PopAdLdVar
  loc_BF5DD0: LitVar_Missing var_110
  loc_BF5DD3: PopAdLdVar
  loc_BF5DD4: LitVar_Missing var_100
  loc_BF5DD7: PopAdLdVar
  loc_BF5DD8: LitVar_Missing var_F0
  loc_BF5DDB: PopAdLdVar
  loc_BF5DDC: LitVar_Missing var_DC
  loc_BF5DDF: PopAdLdVar
  loc_BF5DE0: LitVar_Missing var_C4
  loc_BF5DE3: PopAdLdVar
  loc_BF5DE4: ILdRf var_88
  loc_BF5DE7: FLdPr var_A0
  loc_BF5DEA: Me.MouseIcon = from_stack_1
  loc_BF5DEF: LitI4 &H409
  loc_BF5DF4: FLdPr var_9C
  loc_BF5DFC: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B0CF70
  'Data Table: 4E8E30
  loc_B0CD38: FLdRfVar var_88
  loc_B0CD3B: LitI2_Byte 0
  loc_B0CD3D: LitI2_Byte &HFF
  loc_B0CD3F: ImpAdLdI4 MemVar_D93C84
  loc_B0CD42: FLdPr Me
  loc_B0CD45: MemLdRfVar from_stack_1.global_56
  loc_B0CD48: NewIfNullPr IFileSystem3
  loc_B0CD4B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B0CD50: ILdRf var_88
  loc_B0CD53: FLdPr Me
  loc_B0CD56: MemStVarAd
  loc_B0CD5A: FFree1Ad var_88
  loc_B0CD5D: LitI2_Byte &HFF
  loc_B0CD5F: ImpAdStI2 MemVar_D93C8A
  loc_B0CD62: Call Proc_243_31_BE1EF0()
  loc_B0CD67: LitI4 1
  loc_B0CD6C: FLdPr Me
  loc_B0CD6F: MemLdRfVar from_stack_1.global_100
  loc_B0CD72: FLdPr Me
  loc_B0CD75: MemLdStr global_96
  loc_B0CD78: LitI2_Byte 1
  loc_B0CD7A: FnUBound
  loc_B0CD7C: ForI4 var_90
  loc_B0CD82: FLdPr Me
  loc_B0CD85: MemLdStr global_100
  loc_B0CD88: FLdPr Me
  loc_B0CD8B: MemLdStr global_96
  loc_B0CD8E: AryLock
  loc_B0CD91: Ary1LdRf
  loc_B0CD92: FStR4 var_98
  loc_B0CD95: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0CD9A: PopAdLdVar
  loc_B0CD9B: FLdPr Me
  loc_B0CD9E: MemLdRfVar from_stack_1.global_60
  loc_B0CDA1: LdPrVar
  loc_B0CDA3: LateMemCall
  loc_B0CDA9: LitStr vbNullString
  loc_B0CDAC: LitI2_Byte 0
  loc_B0CDAE: LitI2_Byte 0
  loc_B0CDB0: LitI2_Byte 0
  loc_B0CDB2: LitStr "right"
  loc_B0CDB5: FMemLdR4 var_98(0)
  loc_B0CDBA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CDBF: CVarStr var_C8
  loc_B0CDC2: PopAdLdVar
  loc_B0CDC3: FLdPr Me
  loc_B0CDC6: MemLdRfVar from_stack_1.global_60
  loc_B0CDC9: LdPrVar
  loc_B0CDCB: LateMemCall
  loc_B0CDD1: FFree1Var var_C8 = ""
  loc_B0CDD4: LitStr vbNullString
  loc_B0CDD7: LitI2_Byte 0
  loc_B0CDD9: LitI2_Byte 0
  loc_B0CDDB: LitI2_Byte 0
  loc_B0CDDD: LitStr "left"
  loc_B0CDE0: FMemLdR4 var_98(4)
  loc_B0CDE5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CDEA: CVarStr var_C8
  loc_B0CDED: PopAdLdVar
  loc_B0CDEE: FLdPr Me
  loc_B0CDF1: MemLdRfVar from_stack_1.global_60
  loc_B0CDF4: LdPrVar
  loc_B0CDF6: LateMemCall
  loc_B0CDFC: FFree1Var var_C8 = ""
  loc_B0CDFF: FMemLdRf 0
  loc_B0CE04: FStR4 var_CC
  loc_B0CE07: LitStr vbNullString
  loc_B0CE0A: LitI2_Byte 0
  loc_B0CE0C: LitI2_Byte 0
  loc_B0CE0E: LitI2_Byte 0
  loc_B0CE10: LitStr "right"
  loc_B0CE13: FMemLdR4 var_CC(0)
  loc_B0CE18: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CE1D: CVarStr var_C8
  loc_B0CE20: PopAdLdVar
  loc_B0CE21: FLdPr Me
  loc_B0CE24: MemLdRfVar from_stack_1.global_60
  loc_B0CE27: LdPrVar
  loc_B0CE29: LateMemCall
  loc_B0CE2F: FFree1Var var_C8 = ""
  loc_B0CE32: LitStr "Municipalidad de Guaymallén"
  loc_B0CE35: LitStr "Municipalidad de Guaymallén"
  loc_B0CE38: NeStr
  loc_B0CE3A: BranchF loc_B0CE68
  loc_B0CE3D: LitStr vbNullString
  loc_B0CE40: LitI2_Byte 0
  loc_B0CE42: LitI2_Byte 0
  loc_B0CE44: LitI2_Byte 0
  loc_B0CE46: LitStr "right"
  loc_B0CE49: FMemLdR4 var_CC(4)
  loc_B0CE4E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CE53: CVarStr var_C8
  loc_B0CE56: PopAdLdVar
  loc_B0CE57: FLdPr Me
  loc_B0CE5A: MemLdRfVar from_stack_1.global_60
  loc_B0CE5D: LdPrVar
  loc_B0CE5F: LateMemCall
  loc_B0CE65: FFree1Var var_C8 = ""
  loc_B0CE68: LitI4 0
  loc_B0CE6D: FStR4 var_CC
  loc_B0CE70: LitVarStr var_A8, "     </tr>"
  loc_B0CE75: PopAdLdVar
  loc_B0CE76: FLdPr Me
  loc_B0CE79: MemLdRfVar from_stack_1.global_60
  loc_B0CE7C: LdPrVar
  loc_B0CE7E: LateMemCall
  loc_B0CE84: LitI4 0
  loc_B0CE89: FStR4 var_98
  loc_B0CE8C: AryUnlock
  loc_B0CE8F: FLdPr Me
  loc_B0CE92: MemLdRfVar from_stack_1.global_100
  loc_B0CE95: NextI4 var_90, loc_B0CD82
  loc_B0CE9A: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B0CE9F: PopAdLdVar
  loc_B0CEA0: FLdPr Me
  loc_B0CEA3: MemLdRfVar from_stack_1.global_60
  loc_B0CEA6: LdPrVar
  loc_B0CEA8: LateMemCall
  loc_B0CEAE: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B0CEB3: PopAdLdVar
  loc_B0CEB4: FLdPr Me
  loc_B0CEB7: MemLdRfVar from_stack_1.global_60
  loc_B0CEBA: LdPrVar
  loc_B0CEBC: LateMemCall
  loc_B0CEC2: LitI4 1
  loc_B0CEC7: FLdPr Me
  loc_B0CECA: MemLdStr global_104
  loc_B0CECD: AryLock
  loc_B0CED0: Ary1LdRf
  loc_B0CED1: FStR4 var_D4
  loc_B0CED4: LitStr vbNullString
  loc_B0CED7: LitI2_Byte 0
  loc_B0CED9: LitI2_Byte 0
  loc_B0CEDB: LitI2_Byte 0
  loc_B0CEDD: LitStr "right"
  loc_B0CEE0: FMemLdR4 var_D4(0)
  loc_B0CEE5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CEEA: CVarStr var_C8
  loc_B0CEED: PopAdLdVar
  loc_B0CEEE: FLdPr Me
  loc_B0CEF1: MemLdRfVar from_stack_1.global_60
  loc_B0CEF4: LdPrVar
  loc_B0CEF6: LateMemCall
  loc_B0CEFC: FFree1Var var_C8 = ""
  loc_B0CEFF: LitStr "Municipalidad de Guaymallén"
  loc_B0CF02: LitStr "Municipalidad de Guaymallén"
  loc_B0CF05: NeStr
  loc_B0CF07: BranchF loc_B0CF35
  loc_B0CF0A: LitStr vbNullString
  loc_B0CF0D: LitI2_Byte 0
  loc_B0CF0F: LitI2_Byte 0
  loc_B0CF11: LitI2_Byte 0
  loc_B0CF13: LitStr "right"
  loc_B0CF16: FMemLdR4 var_D4(4)
  loc_B0CF1B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0CF20: CVarStr var_C8
  loc_B0CF23: PopAdLdVar
  loc_B0CF24: FLdPr Me
  loc_B0CF27: MemLdRfVar from_stack_1.global_60
  loc_B0CF2A: LdPrVar
  loc_B0CF2C: LateMemCall
  loc_B0CF32: FFree1Var var_C8 = ""
  loc_B0CF35: LitI4 0
  loc_B0CF3A: FStR4 var_D4
  loc_B0CF3D: AryUnlock
  loc_B0CF40: LitVarStr var_A8, "     </tr>"
  loc_B0CF45: PopAdLdVar
  loc_B0CF46: FLdPr Me
  loc_B0CF49: MemLdRfVar from_stack_1.global_60
  loc_B0CF4C: LdPrVar
  loc_B0CF4E: LateMemCall
  loc_B0CF54: Call Proc_243_32_A0C4B8()
  loc_B0CF59: FLdPr Me
  loc_B0CF5C: MemLdRfVar from_stack_1.global_60
  loc_B0CF5F: LdPrVar
  loc_B0CF61: LateMemCall
  loc_B0CF67: LitStr vbNullString
  loc_B0CF6A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B0CF6F: ExitProcHresult
End Sub

Private Function Proc_243_31_BE1EF0() 'BE1EF0
  'Data Table: 4E8E30
  loc_BE1748: LitVarStr var_98, "<html>"
  loc_BE174D: PopAdLdVar
  loc_BE174E: FLdPr Me
  loc_BE1751: MemLdRfVar from_stack_1.global_60
  loc_BE1754: LdPrVar
  loc_BE1756: LateMemCall
  loc_BE175C: LitVarStr var_98, "<head>"
  loc_BE1761: PopAdLdVar
  loc_BE1762: FLdPr Me
  loc_BE1765: MemLdRfVar from_stack_1.global_60
  loc_BE1768: LdPrVar
  loc_BE176A: LateMemCall
  loc_BE1770: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE1775: PopAdLdVar
  loc_BE1776: FLdPr Me
  loc_BE1779: MemLdRfVar from_stack_1.global_60
  loc_BE177C: LdPrVar
  loc_BE177E: LateMemCall
  loc_BE1784: LitStr "<title>"
  loc_BE1787: FLdRfVar var_AC
  loc_BE178A: FLdPr Me
  loc_BE178D:  = Me.Caption
  loc_BE1792: ILdRf var_AC
  loc_BE1795: ConcatStr
  loc_BE1796: FStStrNoPop var_B0
  loc_BE1799: LitStr "</title>"
  loc_BE179C: ConcatStr
  loc_BE179D: CVarStr var_C0
  loc_BE17A0: PopAdLdVar
  loc_BE17A1: FLdPr Me
  loc_BE17A4: MemLdRfVar from_stack_1.global_60
  loc_BE17A7: LdPrVar
  loc_BE17A9: LateMemCall
  loc_BE17AF: FFreeStr var_AC = ""
  loc_BE17B6: FFree1Var var_C0 = ""
  loc_BE17B9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BE17BE: PopAdLdVar
  loc_BE17BF: FLdPr Me
  loc_BE17C2: MemLdRfVar from_stack_1.global_60
  loc_BE17C5: LdPrVar
  loc_BE17C7: LateMemCall
  loc_BE17CD: LitVarStr var_98, ".Titulo1 {"
  loc_BE17D2: PopAdLdVar
  loc_BE17D3: FLdPr Me
  loc_BE17D6: MemLdRfVar from_stack_1.global_60
  loc_BE17D9: LdPrVar
  loc_BE17DB: LateMemCall
  loc_BE17E1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE17E6: PopAdLdVar
  loc_BE17E7: FLdPr Me
  loc_BE17EA: MemLdRfVar from_stack_1.global_60
  loc_BE17ED: LdPrVar
  loc_BE17EF: LateMemCall
  loc_BE17F5: LitVarStr var_98, " font-size: 18px;"
  loc_BE17FA: PopAdLdVar
  loc_BE17FB: FLdPr Me
  loc_BE17FE: MemLdRfVar from_stack_1.global_60
  loc_BE1801: LdPrVar
  loc_BE1803: LateMemCall
  loc_BE1809: LitVarStr var_98, " font-weight: bold;"
  loc_BE180E: PopAdLdVar
  loc_BE180F: FLdPr Me
  loc_BE1812: MemLdRfVar from_stack_1.global_60
  loc_BE1815: LdPrVar
  loc_BE1817: LateMemCall
  loc_BE181D: LitVarStr var_98, "}"
  loc_BE1822: PopAdLdVar
  loc_BE1823: FLdPr Me
  loc_BE1826: MemLdRfVar from_stack_1.global_60
  loc_BE1829: LdPrVar
  loc_BE182B: LateMemCall
  loc_BE1831: LitVarStr var_98, ".Titulo2 {"
  loc_BE1836: PopAdLdVar
  loc_BE1837: FLdPr Me
  loc_BE183A: MemLdRfVar from_stack_1.global_60
  loc_BE183D: LdPrVar
  loc_BE183F: LateMemCall
  loc_BE1845: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE184A: PopAdLdVar
  loc_BE184B: FLdPr Me
  loc_BE184E: MemLdRfVar from_stack_1.global_60
  loc_BE1851: LdPrVar
  loc_BE1853: LateMemCall
  loc_BE1859: LitVarStr var_98, " font-size: 14px;"
  loc_BE185E: PopAdLdVar
  loc_BE185F: FLdPr Me
  loc_BE1862: MemLdRfVar from_stack_1.global_60
  loc_BE1865: LdPrVar
  loc_BE1867: LateMemCall
  loc_BE186D: LitVarStr var_98, " font-weight: bold;"
  loc_BE1872: PopAdLdVar
  loc_BE1873: FLdPr Me
  loc_BE1876: MemLdRfVar from_stack_1.global_60
  loc_BE1879: LdPrVar
  loc_BE187B: LateMemCall
  loc_BE1881: LitVarStr var_98, "}"
  loc_BE1886: PopAdLdVar
  loc_BE1887: FLdPr Me
  loc_BE188A: MemLdRfVar from_stack_1.global_60
  loc_BE188D: LdPrVar
  loc_BE188F: LateMemCall
  loc_BE1895: LitVarStr var_98, ".Normal {"
  loc_BE189A: PopAdLdVar
  loc_BE189B: FLdPr Me
  loc_BE189E: MemLdRfVar from_stack_1.global_60
  loc_BE18A1: LdPrVar
  loc_BE18A3: LateMemCall
  loc_BE18A9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE18AE: PopAdLdVar
  loc_BE18AF: FLdPr Me
  loc_BE18B2: MemLdRfVar from_stack_1.global_60
  loc_BE18B5: LdPrVar
  loc_BE18B7: LateMemCall
  loc_BE18BD: LitVarStr var_98, " font-size: 12px;"
  loc_BE18C2: PopAdLdVar
  loc_BE18C3: FLdPr Me
  loc_BE18C6: MemLdRfVar from_stack_1.global_60
  loc_BE18C9: LdPrVar
  loc_BE18CB: LateMemCall
  loc_BE18D1: LitVarStr var_98, " font-style: normal;"
  loc_BE18D6: PopAdLdVar
  loc_BE18D7: FLdPr Me
  loc_BE18DA: MemLdRfVar from_stack_1.global_60
  loc_BE18DD: LdPrVar
  loc_BE18DF: LateMemCall
  loc_BE18E5: LitVarStr var_98, " font-weight: normal;"
  loc_BE18EA: PopAdLdVar
  loc_BE18EB: FLdPr Me
  loc_BE18EE: MemLdRfVar from_stack_1.global_60
  loc_BE18F1: LdPrVar
  loc_BE18F3: LateMemCall
  loc_BE18F9: LitVarStr var_98, " font-variant: normal;"
  loc_BE18FE: PopAdLdVar
  loc_BE18FF: FLdPr Me
  loc_BE1902: MemLdRfVar from_stack_1.global_60
  loc_BE1905: LdPrVar
  loc_BE1907: LateMemCall
  loc_BE190D: LitVarStr var_98, "}"
  loc_BE1912: PopAdLdVar
  loc_BE1913: FLdPr Me
  loc_BE1916: MemLdRfVar from_stack_1.global_60
  loc_BE1919: LdPrVar
  loc_BE191B: LateMemCall
  loc_BE1921: LitVarStr var_98, ".Encabezado {"
  loc_BE1926: PopAdLdVar
  loc_BE1927: FLdPr Me
  loc_BE192A: MemLdRfVar from_stack_1.global_60
  loc_BE192D: LdPrVar
  loc_BE192F: LateMemCall
  loc_BE1935: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE193A: PopAdLdVar
  loc_BE193B: FLdPr Me
  loc_BE193E: MemLdRfVar from_stack_1.global_60
  loc_BE1941: LdPrVar
  loc_BE1943: LateMemCall
  loc_BE1949: LitVarStr var_98, " font-size: 11px;"
  loc_BE194E: PopAdLdVar
  loc_BE194F: FLdPr Me
  loc_BE1952: MemLdRfVar from_stack_1.global_60
  loc_BE1955: LdPrVar
  loc_BE1957: LateMemCall
  loc_BE195D: LitVarStr var_98, " font-weight: bold;"
  loc_BE1962: PopAdLdVar
  loc_BE1963: FLdPr Me
  loc_BE1966: MemLdRfVar from_stack_1.global_60
  loc_BE1969: LdPrVar
  loc_BE196B: LateMemCall
  loc_BE1971: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BE1976: PopAdLdVar
  loc_BE1977: FLdPr Me
  loc_BE197A: MemLdRfVar from_stack_1.global_60
  loc_BE197D: LdPrVar
  loc_BE197F: LateMemCall
  loc_BE1985: LitVarStr var_98, "}"
  loc_BE198A: PopAdLdVar
  loc_BE198B: FLdPr Me
  loc_BE198E: MemLdRfVar from_stack_1.global_60
  loc_BE1991: LdPrVar
  loc_BE1993: LateMemCall
  loc_BE1999: LitVarStr var_98, ".LineaDato {"
  loc_BE199E: PopAdLdVar
  loc_BE199F: FLdPr Me
  loc_BE19A2: MemLdRfVar from_stack_1.global_60
  loc_BE19A5: LdPrVar
  loc_BE19A7: LateMemCall
  loc_BE19AD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE19B2: PopAdLdVar
  loc_BE19B3: FLdPr Me
  loc_BE19B6: MemLdRfVar from_stack_1.global_60
  loc_BE19B9: LdPrVar
  loc_BE19BB: LateMemCall
  loc_BE19C1: LitVarStr var_98, " font-size: 10px;"
  loc_BE19C6: PopAdLdVar
  loc_BE19C7: FLdPr Me
  loc_BE19CA: MemLdRfVar from_stack_1.global_60
  loc_BE19CD: LdPrVar
  loc_BE19CF: LateMemCall
  loc_BE19D5: LitVarStr var_98, "}"
  loc_BE19DA: PopAdLdVar
  loc_BE19DB: FLdPr Me
  loc_BE19DE: MemLdRfVar from_stack_1.global_60
  loc_BE19E1: LdPrVar
  loc_BE19E3: LateMemCall
  loc_BE19E9: LitVarStr var_98, ".Totales {"
  loc_BE19EE: PopAdLdVar
  loc_BE19EF: FLdPr Me
  loc_BE19F2: MemLdRfVar from_stack_1.global_60
  loc_BE19F5: LdPrVar
  loc_BE19F7: LateMemCall
  loc_BE19FD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE1A02: PopAdLdVar
  loc_BE1A03: FLdPr Me
  loc_BE1A06: MemLdRfVar from_stack_1.global_60
  loc_BE1A09: LdPrVar
  loc_BE1A0B: LateMemCall
  loc_BE1A11: LitVarStr var_98, " font-size: 12px;"
  loc_BE1A16: PopAdLdVar
  loc_BE1A17: FLdPr Me
  loc_BE1A1A: MemLdRfVar from_stack_1.global_60
  loc_BE1A1D: LdPrVar
  loc_BE1A1F: LateMemCall
  loc_BE1A25: LitVarStr var_98, " font-weight: bold;"
  loc_BE1A2A: PopAdLdVar
  loc_BE1A2B: FLdPr Me
  loc_BE1A2E: MemLdRfVar from_stack_1.global_60
  loc_BE1A31: LdPrVar
  loc_BE1A33: LateMemCall
  loc_BE1A39: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BE1A3E: PopAdLdVar
  loc_BE1A3F: FLdPr Me
  loc_BE1A42: MemLdRfVar from_stack_1.global_60
  loc_BE1A45: LdPrVar
  loc_BE1A47: LateMemCall
  loc_BE1A4D: LitVarStr var_98, "}"
  loc_BE1A52: PopAdLdVar
  loc_BE1A53: FLdPr Me
  loc_BE1A56: MemLdRfVar from_stack_1.global_60
  loc_BE1A59: LdPrVar
  loc_BE1A5B: LateMemCall
  loc_BE1A61: LitVarStr var_98, ".SubTotales {"
  loc_BE1A66: PopAdLdVar
  loc_BE1A67: FLdPr Me
  loc_BE1A6A: MemLdRfVar from_stack_1.global_60
  loc_BE1A6D: LdPrVar
  loc_BE1A6F: LateMemCall
  loc_BE1A75: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE1A7A: PopAdLdVar
  loc_BE1A7B: FLdPr Me
  loc_BE1A7E: MemLdRfVar from_stack_1.global_60
  loc_BE1A81: LdPrVar
  loc_BE1A83: LateMemCall
  loc_BE1A89: LitVarStr var_98, " font-size: 10px;"
  loc_BE1A8E: PopAdLdVar
  loc_BE1A8F: FLdPr Me
  loc_BE1A92: MemLdRfVar from_stack_1.global_60
  loc_BE1A95: LdPrVar
  loc_BE1A97: LateMemCall
  loc_BE1A9D: LitVarStr var_98, " font-weight: bold;"
  loc_BE1AA2: PopAdLdVar
  loc_BE1AA3: FLdPr Me
  loc_BE1AA6: MemLdRfVar from_stack_1.global_60
  loc_BE1AA9: LdPrVar
  loc_BE1AAB: LateMemCall
  loc_BE1AB1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BE1AB6: PopAdLdVar
  loc_BE1AB7: FLdPr Me
  loc_BE1ABA: MemLdRfVar from_stack_1.global_60
  loc_BE1ABD: LdPrVar
  loc_BE1ABF: LateMemCall
  loc_BE1AC5: LitVarStr var_98, "}"
  loc_BE1ACA: PopAdLdVar
  loc_BE1ACB: FLdPr Me
  loc_BE1ACE: MemLdRfVar from_stack_1.global_60
  loc_BE1AD1: LdPrVar
  loc_BE1AD3: LateMemCall
  loc_BE1AD9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BE1ADE: PopAdLdVar
  loc_BE1ADF: FLdPr Me
  loc_BE1AE2: MemLdRfVar from_stack_1.global_60
  loc_BE1AE5: LdPrVar
  loc_BE1AE7: LateMemCall
  loc_BE1AED: LitVarStr var_98, "</style>"
  loc_BE1AF2: PopAdLdVar
  loc_BE1AF3: FLdPr Me
  loc_BE1AF6: MemLdRfVar from_stack_1.global_60
  loc_BE1AF9: LdPrVar
  loc_BE1AFB: LateMemCall
  loc_BE1B01: LitI4 0
  loc_BE1B06: FStStrCopy var_B0
  loc_BE1B09: FLdRfVar var_B0
  loc_BE1B0C: LitI4 0
  loc_BE1B11: FStStrCopy var_AC
  loc_BE1B14: FLdRfVar var_AC
  loc_BE1B17: LitI2_Byte &HFF
  loc_BE1B19: PopTmpLdAd2 var_C2
  loc_BE1B1C: FLdPr Me
  loc_BE1B1F: MemLdRfVar from_stack_1.global_60
  loc_BE1B22: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE1B27: FFreeStr var_AC = ""
  loc_BE1B2E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE1B33: PopAdLdVar
  loc_BE1B34: FLdPr Me
  loc_BE1B37: MemLdRfVar from_stack_1.global_60
  loc_BE1B3A: LdPrVar
  loc_BE1B3C: LateMemCall
  loc_BE1B42: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BE1B47: PopAdLdVar
  loc_BE1B48: FLdPr Me
  loc_BE1B4B: MemLdRfVar from_stack_1.global_60
  loc_BE1B4E: LdPrVar
  loc_BE1B50: LateMemCall
  loc_BE1B56: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE1B59: LitI2_Byte &H5F
  loc_BE1B5B: CStrUI1
  loc_BE1B5D: FStStrNoPop var_AC
  loc_BE1B60: ConcatStr
  loc_BE1B61: FStStrNoPop var_B0
  loc_BE1B64: LitStr """ height="""
  loc_BE1B67: ConcatStr
  loc_BE1B68: FStStrNoPop var_C8
  loc_BE1B6B: LitI2_Byte &H3C
  loc_BE1B6D: CStrUI1
  loc_BE1B6F: FStStrNoPop var_CC
  loc_BE1B72: ConcatStr
  loc_BE1B73: FStStrNoPop var_D0
  loc_BE1B76: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BE1B79: ConcatStr
  loc_BE1B7A: FStStrNoPop var_D4
  loc_BE1B7D: LitStr "Municipalidad de Guaymallén"
  loc_BE1B80: ConcatStr
  loc_BE1B81: FStStrNoPop var_D8
  loc_BE1B84: LitStr "</p>"
  loc_BE1B87: ConcatStr
  loc_BE1B88: CVarStr var_C0
  loc_BE1B8B: PopAdLdVar
  loc_BE1B8C: FLdPr Me
  loc_BE1B8F: MemLdRfVar from_stack_1.global_60
  loc_BE1B92: LdPrVar
  loc_BE1B94: LateMemCall
  loc_BE1B9A: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BE1BAB: FFree1Var var_C0 = ""
  loc_BE1BAE: LitStr "    <p>"
  loc_BE1BB1: FLdRfVar var_AC
  loc_BE1BB4: FLdPr Me
  loc_BE1BB7:  = Me.Caption
  loc_BE1BBC: ILdRf var_AC
  loc_BE1BBF: ConcatStr
  loc_BE1BC0: FStStrNoPop var_B0
  loc_BE1BC3: LitStr "</p></th>"
  loc_BE1BC6: ConcatStr
  loc_BE1BC7: CVarStr var_C0
  loc_BE1BCA: PopAdLdVar
  loc_BE1BCB: FLdPr Me
  loc_BE1BCE: MemLdRfVar from_stack_1.global_60
  loc_BE1BD1: LdPrVar
  loc_BE1BD3: LateMemCall
  loc_BE1BD9: FFreeStr var_AC = ""
  loc_BE1BE0: FFree1Var var_C0 = ""
  loc_BE1BE3: LitVarStr var_98, "  </tr>"
  loc_BE1BE8: PopAdLdVar
  loc_BE1BE9: FLdPr Me
  loc_BE1BEC: MemLdRfVar from_stack_1.global_60
  loc_BE1BEF: LdPrVar
  loc_BE1BF1: LateMemCall
  loc_BE1BF7: LitVarStr var_98, "  <tr>"
  loc_BE1BFC: PopAdLdVar
  loc_BE1BFD: FLdPr Me
  loc_BE1C00: MemLdRfVar from_stack_1.global_60
  loc_BE1C03: LdPrVar
  loc_BE1C05: LateMemCall
  loc_BE1C0B: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BE1C10: PopAdLdVar
  loc_BE1C11: FLdPr Me
  loc_BE1C14: MemLdRfVar from_stack_1.global_60
  loc_BE1C17: LdPrVar
  loc_BE1C19: LateMemCall
  loc_BE1C1F: LitVarStr var_98, "  </tr>"
  loc_BE1C24: PopAdLdVar
  loc_BE1C25: FLdPr Me
  loc_BE1C28: MemLdRfVar from_stack_1.global_60
  loc_BE1C2B: LdPrVar
  loc_BE1C2D: LateMemCall
  loc_BE1C33: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BE1C38: PopAdLdVar
  loc_BE1C39: FLdPr Me
  loc_BE1C3C: MemLdRfVar from_stack_1.global_60
  loc_BE1C3F: LdPrVar
  loc_BE1C41: LateMemCall
  loc_BE1C47: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BE1C4A: FLdPr Me
  loc_BE1C4D: VCallAd Control_ID_DesdeMsk
  loc_BE1C50: FStAdFunc var_DC
  loc_BE1C53: FLdPr var_DC
  loc_BE1C56: LateIdLdVar var_C0 DispID_15 0
  loc_BE1C5D: CStrVarTmp
  loc_BE1C5E: FStStrNoPop var_AC
  loc_BE1C61: ConcatStr
  loc_BE1C62: FStStrNoPop var_B0
  loc_BE1C65: LitStr "</td>"
  loc_BE1C68: ConcatStr
  loc_BE1C69: CVarStr var_EC
  loc_BE1C6C: PopAdLdVar
  loc_BE1C6D: FLdPr Me
  loc_BE1C70: MemLdRfVar from_stack_1.global_60
  loc_BE1C73: LdPrVar
  loc_BE1C75: LateMemCall
  loc_BE1C7B: FFreeStr var_AC = ""
  loc_BE1C82: FFree1Ad var_DC
  loc_BE1C85: FFreeVar var_C0 = ""
  loc_BE1C8C: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BE1C8F: FLdPr Me
  loc_BE1C92: VCallAd Control_ID_HastaMsk
  loc_BE1C95: FStAdFunc var_DC
  loc_BE1C98: FLdPr var_DC
  loc_BE1C9B: LateIdLdVar var_C0 DispID_15 0
  loc_BE1CA2: CStrVarTmp
  loc_BE1CA3: FStStrNoPop var_AC
  loc_BE1CA6: ConcatStr
  loc_BE1CA7: FStStrNoPop var_B0
  loc_BE1CAA: LitStr "</td>"
  loc_BE1CAD: ConcatStr
  loc_BE1CAE: CVarStr var_EC
  loc_BE1CB1: PopAdLdVar
  loc_BE1CB2: FLdPr Me
  loc_BE1CB5: MemLdRfVar from_stack_1.global_60
  loc_BE1CB8: LdPrVar
  loc_BE1CBA: LateMemCall
  loc_BE1CC0: FFreeStr var_AC = ""
  loc_BE1CC7: FFree1Ad var_DC
  loc_BE1CCA: FFreeVar var_C0 = ""
  loc_BE1CD1: LitVarStr var_98, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BE1CD6: PopAdLdVar
  loc_BE1CD7: FLdPr Me
  loc_BE1CDA: MemLdRfVar from_stack_1.global_60
  loc_BE1CDD: LdPrVar
  loc_BE1CDF: LateMemCall
  loc_BE1CE5: LitVarStr var_98, "  </tr>"
  loc_BE1CEA: PopAdLdVar
  loc_BE1CEB: FLdPr Me
  loc_BE1CEE: MemLdRfVar from_stack_1.global_60
  loc_BE1CF1: LdPrVar
  loc_BE1CF3: LateMemCall
  loc_BE1CF9: LitVarStr var_98, "</table>"
  loc_BE1CFE: PopAdLdVar
  loc_BE1CFF: FLdPr Me
  loc_BE1D02: MemLdRfVar from_stack_1.global_60
  loc_BE1D05: LdPrVar
  loc_BE1D07: LateMemCall
  loc_BE1D0D: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE1D12: PopAdLdVar
  loc_BE1D13: FLdPr Me
  loc_BE1D16: MemLdRfVar from_stack_1.global_60
  loc_BE1D19: LdPrVar
  loc_BE1D1B: LateMemCall
  loc_BE1D21: LitVarStr var_98, "  <thead>"
  loc_BE1D26: PopAdLdVar
  loc_BE1D27: FLdPr Me
  loc_BE1D2A: MemLdRfVar from_stack_1.global_60
  loc_BE1D2D: LdPrVar
  loc_BE1D2F: LateMemCall
  loc_BE1D35: FLdRfVar var_C2
  loc_BE1D38: FLdPr Me
  loc_BE1D3B: VCallAd Control_ID_CuentaContableOpt
  loc_BE1D3E: FStAdFunc var_DC
  loc_BE1D41: FLdPr var_DC
  loc_BE1D44:  = Me.Value
  loc_BE1D49: FLdI2 var_C2
  loc_BE1D4C: LitI2_Byte &HFF
  loc_BE1D4E: EqI2
  loc_BE1D4F: FFree1Ad var_DC
  loc_BE1D52: BranchF loc_BE1DC6
  loc_BE1D55: LitStr "  <tr><th colspan=""16"" align=""center"" class=""Encabezado"">Cuenta Contable: "
  loc_BE1D58: FLdPr Me
  loc_BE1D5B: VCallAd Control_ID_ActiConcMsk
  loc_BE1D5E: FStAdFunc var_DC
  loc_BE1D61: FLdPr var_DC
  loc_BE1D64: LateIdLdVar var_C0 DispID_22 0
  loc_BE1D6B: CStrVarTmp
  loc_BE1D6C: FStStrNoPop var_AC
  loc_BE1D6F: ConcatStr
  loc_BE1D70: FStStrNoPop var_B0
  loc_BE1D73: LitStr " - "
  loc_BE1D76: ConcatStr
  loc_BE1D77: FStStrNoPop var_CC
  loc_BE1D7A: FLdRfVar var_C8
  loc_BE1D7D: FLdPr Me
  loc_BE1D80: VCallAd Control_ID_DetaActiLbl
  loc_BE1D83: FStAdFunc var_F0
  loc_BE1D86: FLdPr var_F0
  loc_BE1D89:  = Me.Caption
  loc_BE1D8E: ILdRf var_C8
  loc_BE1D91: ConcatStr
  loc_BE1D92: FStStrNoPop var_D0
  loc_BE1D95: LitStr "</th></tr>"
  loc_BE1D98: ConcatStr
  loc_BE1D99: CVarStr var_EC
  loc_BE1D9C: PopAdLdVar
  loc_BE1D9D: FLdPr Me
  loc_BE1DA0: MemLdRfVar from_stack_1.global_60
  loc_BE1DA3: LdPrVar
  loc_BE1DA5: LateMemCall
  loc_BE1DAB: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_BE1DB8: FFreeAd var_DC = ""
  loc_BE1DBF: FFreeVar var_C0 = ""
  loc_BE1DC6: FLdRfVar var_C2
  loc_BE1DC9: FLdPr Me
  loc_BE1DCC: VCallAd Control_ID_ConceptoOpt
  loc_BE1DCF: FStAdFunc var_DC
  loc_BE1DD2: FLdPr var_DC
  loc_BE1DD5:  = Me.Value
  loc_BE1DDA: FLdI2 var_C2
  loc_BE1DDD: LitI2_Byte &HFF
  loc_BE1DDF: EqI2
  loc_BE1DE0: FFree1Ad var_DC
  loc_BE1DE3: BranchF loc_BE1E57
  loc_BE1DE6: LitStr "  <tr><th colspan=""16"" align=""center"" class=""Encabezado"">Concepto: "
  loc_BE1DE9: FLdPr Me
  loc_BE1DEC: VCallAd Control_ID_CodiConcMsk
  loc_BE1DEF: FStAdFunc var_DC
  loc_BE1DF2: FLdPr var_DC
  loc_BE1DF5: LateIdLdVar var_C0 DispID_22 0
  loc_BE1DFC: CStrVarTmp
  loc_BE1DFD: FStStrNoPop var_AC
  loc_BE1E00: ConcatStr
  loc_BE1E01: FStStrNoPop var_B0
  loc_BE1E04: LitStr " - "
  loc_BE1E07: ConcatStr
  loc_BE1E08: FStStrNoPop var_CC
  loc_BE1E0B: FLdRfVar var_C8
  loc_BE1E0E: FLdPr Me
  loc_BE1E11: VCallAd Control_ID_DetaConcLbl
  loc_BE1E14: FStAdFunc var_F0
  loc_BE1E17: FLdPr var_F0
  loc_BE1E1A:  = Me.Caption
  loc_BE1E1F: ILdRf var_C8
  loc_BE1E22: ConcatStr
  loc_BE1E23: FStStrNoPop var_D0
  loc_BE1E26: LitStr "</th></tr>"
  loc_BE1E29: ConcatStr
  loc_BE1E2A: CVarStr var_EC
  loc_BE1E2D: PopAdLdVar
  loc_BE1E2E: FLdPr Me
  loc_BE1E31: MemLdRfVar from_stack_1.global_60
  loc_BE1E34: LdPrVar
  loc_BE1E36: LateMemCall
  loc_BE1E3C: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_BE1E49: FFreeAd var_DC = ""
  loc_BE1E50: FFreeVar var_C0 = ""
  loc_BE1E57: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE1E5C: PopAdLdVar
  loc_BE1E5D: FLdPr Me
  loc_BE1E60: MemLdRfVar from_stack_1.global_60
  loc_BE1E63: LdPrVar
  loc_BE1E65: LateMemCall
  loc_BE1E6B: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BE1E70: PopAdLdVar
  loc_BE1E71: FLdPr Me
  loc_BE1E74: MemLdRfVar from_stack_1.global_60
  loc_BE1E77: LdPrVar
  loc_BE1E79: LateMemCall
  loc_BE1E7F: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BE1E84: PopAdLdVar
  loc_BE1E85: FLdPr Me
  loc_BE1E88: MemLdRfVar from_stack_1.global_60
  loc_BE1E8B: LdPrVar
  loc_BE1E8D: LateMemCall
  loc_BE1E93: LitVarStr var_98, "    <th>Aforos</th>"
  loc_BE1E98: PopAdLdVar
  loc_BE1E99: FLdPr Me
  loc_BE1E9C: MemLdRfVar from_stack_1.global_60
  loc_BE1E9F: LdPrVar
  loc_BE1EA1: LateMemCall
  loc_BE1EA7: LitStr "Municipalidad de Guaymallén"
  loc_BE1EAA: LitStr "Municipalidad de Guaymallén"
  loc_BE1EAD: NeStr
  loc_BE1EAF: BranchF loc_BE1EC6
  loc_BE1EB2: LitVarStr var_98, "    <th>Ajustes</th>"
  loc_BE1EB7: PopAdLdVar
  loc_BE1EB8: FLdPr Me
  loc_BE1EBB: MemLdRfVar from_stack_1.global_60
  loc_BE1EBE: LdPrVar
  loc_BE1EC0: LateMemCall
  loc_BE1EC6: LitVarStr var_98, "  </tr>"
  loc_BE1ECB: PopAdLdVar
  loc_BE1ECC: FLdPr Me
  loc_BE1ECF: MemLdRfVar from_stack_1.global_60
  loc_BE1ED2: LdPrVar
  loc_BE1ED4: LateMemCall
  loc_BE1EDA: LitVarStr var_98, "  </thead>"
  loc_BE1EDF: PopAdLdVar
  loc_BE1EE0: FLdPr Me
  loc_BE1EE3: MemLdRfVar from_stack_1.global_60
  loc_BE1EE6: LdPrVar
  loc_BE1EE8: LateMemCall
  loc_BE1EEE: ExitProcHresult
End Function

Private Function Proc_243_32_A0C4B8() 'A0C4B8
  'Data Table: 4E8E30
  loc_A0C478: LitVarStr var_94, "</table>"
  loc_A0C47D: PopAdLdVar
  loc_A0C47E: FLdPr Me
  loc_A0C481: MemLdRfVar from_stack_1.global_60
  loc_A0C484: LdPrVar
  loc_A0C486: LateMemCall
  loc_A0C48C: LitVarStr var_94, "</body>"
  loc_A0C491: PopAdLdVar
  loc_A0C492: FLdPr Me
  loc_A0C495: MemLdRfVar from_stack_1.global_60
  loc_A0C498: LdPrVar
  loc_A0C49A: LateMemCall
  loc_A0C4A0: LitVarStr var_94, "</html>"
  loc_A0C4A5: PopAdLdVar
  loc_A0C4A6: FLdPr Me
  loc_A0C4A9: MemLdRfVar from_stack_1.global_60
  loc_A0C4AC: LdPrVar
  loc_A0C4AE: LateMemCall
  loc_A0C4B4: ExitProcHresult
End Function
