VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmParametrosGeneralesABM
  Caption = "Parametros Generales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosGeneralesABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 9144
  Begin VB.TextBox DiprPageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 3240
    Width = 9615
    Height = 345
    TabIndex = 15
    MaxLength = 100
    DataField = "DiprPage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox LepaPageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 6480
    Width = 9645
    Height = 1800
    TabIndex = 19
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 500
    DataField = "LepaPage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Observaciones del Inmueble"
  End
  Begin VB.TextBox UntrPageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 720
    Width = 975
    Height = 345
    TabIndex = 3
    MaxLength = 6
    DataField = "UntrPage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.ListBox ImpresorasLst
    Left = 5040
    Top = 3720
    Width = 9615
    Height = 2448
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
  Begin VB.TextBox DicaPageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 2760
    Width = 9615
    Height = 345
    TabIndex = 13
    MaxLength = 100
    DataField = "DicaPage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton AceptarCmd
    Left = 5160
    Top = 8520
    Width = 1815
    Height = 495
    TabIndex = 20
    Picture = "frmParametrosGeneralesABM.frx":324A
    Style = 1
  End
  Begin VB.ComboBox FosePageCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 5040
    Top = 2160
    Width = 735
    Height = 420
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
    DataField = "FosePage"
  End
  Begin VB.TextBox DerePageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 1680
    Width = 975
    Height = 345
    TabIndex = 8
    MaxLength = 6
    DataField = "DerePage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton SalirCmd
    Left = 11400
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 21
    Picture = "frmParametrosGeneralesABM.frx":3578
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox DecaPageTxt
    ForeColor = &HFF0000&
    Left = 5040
    Top = 1200
    Width = 975
    Height = 345
    TabIndex = 5
    MaxLength = 6
    DataField = "DecaPage"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin MSMask.MaskEdBox PeriOrdeMsk
    Left = 5040
    Top = 240
    Width = 735
    Height = 375
    TabIndex = 1
    OleObjectBlob = "frmParametrosGeneralesABM.frx":37CA
    DataField = "PeriOrde"
  End
  Begin VB.Label Label10
    Caption = "Directorio donde se Copian los archivos:"
    Left = 720
    Top = 3240
    Width = 4230
    Height = 300
    TabIndex = 14
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
  Begin VB.Label Label9
    Caption = "Leyenda para todos los boletos:"
    Left = 1560
    Top = 6480
    Width = 3375
    Height = 300
    TabIndex = 18
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
  Begin VB.Label Label8
    Caption = "Periodo Vigente de la Ordenanza Tarifaría:"
    Left = 360
    Top = 240
    Width = 4485
    Height = 300
    TabIndex = 0
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
  Begin VB.Label Label7
    Caption = "Valor de la Unidad Tributaria Municipal:"
    Left = 840
    Top = 720
    Width = 4110
    Height = 300
    TabIndex = 2
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
    Caption = "Impresora de Boletos (para esta PC):"
    Left = 1020
    Top = 3720
    Width = 3930
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
  Begin VB.Label Label5
    Caption = "Directorio de Captura de Archivos de pago:"
    Left = 405
    Top = 2760
    Width = 4545
    Height = 300
    TabIndex = 12
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
  Begin VB.Label Label4
    Caption = "Selecciona Deuda en Forma Consecutiva:"
    Left = 495
    Top = 2160
    Width = 4455
    Height = 300
    TabIndex = 10
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
  Begin VB.Label Label3
    Caption = "%"
    Left = 6120
    Top = 1680
    Width = 210
    Height = 300
    TabIndex = 9
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
  Begin VB.Label Label2
    Caption = "%"
    Left = 6120
    Top = 1200
    Width = 210
    Height = 300
    TabIndex = 6
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
  Begin VB.Label Label1
    Caption = "Descuento de Recargo:"
    Left = 2415
    Top = 1680
    Width = 2535
    Height = 300
    TabIndex = 7
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
  Begin VB.Label Label12
    Caption = "Descuento de Capital:"
    Left = 2595
    Top = 1200
    Width = 2355
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
End

Attribute VB_Name = "frmParametrosGeneralesABM"


Private Sub Form_Load() 'B0FE7C
  'Data Table: 48AC70
  loc_B0FC70: LitI2_Byte 0
  loc_B0FC72: CR8I2
  loc_B0FC73: PopFPR4
  loc_B0FC74: FLdPr Me
  loc_B0FC77: Me.Left = from_stack_1s
  loc_B0FC7C: LitI2_Byte 0
  loc_B0FC7E: CR8I2
  loc_B0FC7F: PopFPR4
  loc_B0FC80: FLdPr Me
  loc_B0FC83: Me.Top = from_stack_1s
  loc_B0FC88: LitStr "SELECT PeriOrde, DerePage, DecaPage, FosePage, DicaPage, DiprPage, UntrPage, LepaPage FROM paragene"
  loc_B0FC8B: FLdPr Me
  loc_B0FC8E: MemLdRfVar from_stack_1.global_52
  loc_B0FC91: NewIfNullPr clsparagene
  loc_B0FC94: Call clsparagene.RedefineRS(from_stack_1v)
  loc_B0FC99: LitI4 0
  loc_B0FC9E: LitI4 0
  loc_B0FCA3: FLdRfVar var_88
  loc_B0FCA6: Redim
  loc_B0FCB0: FLdPr Me
  loc_B0FCB3: MemLdRfVar from_stack_1.global_52
  loc_B0FCB6: NewIfNullAd
  loc_B0FCB9: FStAd var_8C 
  loc_B0FCBD: FLdRfVar var_8C
  loc_B0FCC0: CVarRef
  loc_B0FCC5: ParmAry1St
  loc_B0FCCB: FLdRfVar var_88
  loc_B0FCCE: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B0FCD3: ILdRf var_8C
  loc_B0FCD6: CastAd
  loc_B0FCD9: FLdPr Me
  loc_B0FCDC: MemStAdFunc
  loc_B0FCE0: FLdRfVar var_88
  loc_B0FCE3: Erase
  loc_B0FCE4: FFree1Ad var_8C
  loc_B0FCE7: FLdPr Me
  loc_B0FCEA: MemLdRfVar from_stack_1.global_52
  loc_B0FCED: NewIfNullAd
  loc_B0FCF0: FStAd var_A0 
  loc_B0FCF4: FLdRfVar var_A0
  loc_B0FCF7: CVarRef
  loc_B0FCFC: ILdRf Me
  loc_B0FCFF: CastAd
  loc_B0FD02: FStAdFunc var_8C
  loc_B0FD05: FLdRfVar var_8C
  loc_B0FD08: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_B0FD0D: ILdRf var_A0
  loc_B0FD10: CastAd
  loc_B0FD13: FLdPr Me
  loc_B0FD16: MemStAdFunc
  loc_B0FD1A: FFreeAd var_8C = ""
  loc_B0FD21: LitVar_Missing var_9C
  loc_B0FD24: PopAdLdVar
  loc_B0FD25: LitStr "Si"
  loc_B0FD28: FLdPr Me
  loc_B0FD2B: VCallAd Control_ID_FosePageCbo
  loc_B0FD2E: FStAdFunc var_8C
  loc_B0FD31: FLdPr var_8C
  loc_B0FD34: Me.AddItem from_stack_1, from_stack_2
  loc_B0FD39: FFree1Ad var_8C
  loc_B0FD3C: LitVar_Missing var_9C
  loc_B0FD3F: PopAdLdVar
  loc_B0FD40: LitStr "No"
  loc_B0FD43: FLdPr Me
  loc_B0FD46: VCallAd Control_ID_FosePageCbo
  loc_B0FD49: FStAdFunc var_8C
  loc_B0FD4C: FLdPr var_8C
  loc_B0FD4F: Me.AddItem from_stack_1, from_stack_2
  loc_B0FD54: FFree1Ad var_8C
  loc_B0FD57: FLdPr Me
  loc_B0FD5A: VCallAd Control_ID_ImpresorasLst
  loc_B0FD5D: FStAdFunc var_8C
  loc_B0FD60: FLdPr var_8C
  loc_B0FD63: Me.Clear
  loc_B0FD68: FFree1Ad var_8C
  loc_B0FD6B: FLdRfVar var_8C
  loc_B0FD6E: ImpAdLdRf MemVar_D9C5D8
  loc_B0FD71: NewIfNullPr Global
  loc_B0FD74:  = Global.Printers
  loc_B0FD79: FLdZeroAd var_8C
  loc_B0FD7C: FStAdFuncNoPop
  loc_B0FD7F: FLdRfVar var_A4
  loc_B0FD82: ForEachCollObj
  loc_B0FD8A: LitVar_Missing var_9C
  loc_B0FD8D: PopAdLdVar
  loc_B0FD8E: FLdPr var_A4
  loc_B0FD91: LateIdLdVar var_BC DispID_28 1
  loc_B0FD98: CStrVarTmp
  loc_B0FD99: FStStrNoPop var_C0
  loc_B0FD9C: FLdPr Me
  loc_B0FD9F: VCallAd Control_ID_ImpresorasLst
  loc_B0FDA2: FStAdFunc var_8C
  loc_B0FDA5: FLdPr var_8C
  loc_B0FDA8: Me.AddItem from_stack_1, from_stack_2
  loc_B0FDAD: FFree1Str var_C0
  loc_B0FDB0: FFree1Ad var_8C
  loc_B0FDB3: FFree1Var var_BC = ""
  loc_B0FDB6: FLdRfVar var_A4
  loc_B0FDB9: NextEachCollObj
  loc_B0FDC1: ImpAdLdI4 MemVar_D93CA4
  loc_B0FDC4: FLdPr Me
  loc_B0FDC7: VCallAd Control_ID_ImpresorasLst
  loc_B0FDCA: FStAdFunc var_8C
  loc_B0FDCD: FLdPr var_8C
  loc_B0FDD0: Me.Text = from_stack_1
  loc_B0FDD5: FFree1Ad var_8C
  loc_B0FDD8: LitI4 0
  loc_B0FDDD: LitI4 7
  loc_B0FDE2: FLdRfVar var_88
  loc_B0FDE5: Redim
  loc_B0FDEF: FLdPr Me
  loc_B0FDF2: VCallAd Control_ID_PeriOrdeMsk
  loc_B0FDF5: CVarAd
  loc_B0FDF9: ParmAry1St
  loc_B0FDFF: FLdPr Me
  loc_B0FE02: VCallAd Control_ID_UntrPageTxt
  loc_B0FE05: CVarAd
  loc_B0FE09: ParmAry1St
  loc_B0FE0F: FLdPr Me
  loc_B0FE12: VCallAd Control_ID_DecaPageTxt
  loc_B0FE15: CVarAd
  loc_B0FE19: ParmAry1St
  loc_B0FE1F: FLdPr Me
  loc_B0FE22: VCallAd Control_ID_DerePageTxt
  loc_B0FE25: CVarAd
  loc_B0FE29: ParmAry1St
  loc_B0FE2F: FLdPr Me
  loc_B0FE32: VCallAd Control_ID_FosePageCbo
  loc_B0FE35: CVarAd
  loc_B0FE39: ParmAry1St
  loc_B0FE3F: FLdPr Me
  loc_B0FE42: VCallAd Control_ID_DicaPageTxt
  loc_B0FE45: CVarAd
  loc_B0FE49: ParmAry1St
  loc_B0FE4F: FLdPr Me
  loc_B0FE52: VCallAd Control_ID_DiprPageTxt
  loc_B0FE55: CVarAd
  loc_B0FE59: ParmAry1St
  loc_B0FE5F: FLdPr Me
  loc_B0FE62: VCallAd Control_ID_LepaPageTxt
  loc_B0FE65: CVarAd
  loc_B0FE69: ParmAry1St
  loc_B0FE6F: FLdRfVar var_88
  loc_B0FE72: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B0FE77: FLdRfVar var_88
  loc_B0FE7A: Erase
  loc_B0FE7B: ExitProcHresult
End Sub

Private Sub Form_Activate() '9B2DF8
  'Data Table: 48AC70
  loc_9B2DE8: FLdPr Me
  loc_9B2DEB: MemLdRfVar from_stack_1.global_52
  loc_9B2DEE: NewIfNullPr clsparagene
  loc_9B2DF1: Call clsparagene.Requery()
  loc_9B2DF6: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9DD050
  'Data Table: 48AC70
  loc_9DD038: ILdRf Me
  loc_9DD03B: FStAdNoPop
  loc_9DD03F: ImpAdLdRf MemVar_D9C5D8
  loc_9DD042: NewIfNullPr Global
  loc_9DD045: Global.Unload from_stack_1
  loc_9DD04A: FFree1Ad var_88
  loc_9DD04D: ExitProcHresult
  loc_9DD04E: CI4Str
End Sub

Private Sub PeriOrdeMsk_UnknownEvent_0 '9C1B98
  'Data Table: 48AC70
  loc_9C1B84: FLdPr Me
  loc_9C1B87: VCallAd Control_ID_PeriOrdeMsk
  loc_9C1B8A: CVarAd
  loc_9C1B8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1B93: FFree1Var var_94 = ""
  loc_9C1B96: ExitProcHresult
End Sub

Private Function PeriOrdeMsk_UnknownEvent_8(arg_C) 'A87468
  'Data Table: 48AC70
  loc_A873D8: FLdPr Me
  loc_A873DB: VCallAd Control_ID_PeriOrdeMsk
  loc_A873DE: FStAdFunc var_88
  loc_A873E1: FLdPr var_88
  loc_A873E4: LateIdLdVar var_98 DispID_13 -32767
  loc_A873EB: CBoolVar
  loc_A873ED: FFree1Ad var_88
  loc_A873F0: FFree1Var var_98 = ""
  loc_A873F3: BranchF loc_A87466
  loc_A873F6: FLdPr Me
  loc_A873F9: VCallAd Control_ID_PeriOrdeMsk
  loc_A873FC: FStAdFunc var_88
  loc_A873FF: FLdPr var_88
  loc_A87402: LateIdLdVar var_98 DispID_22 0
  loc_A87409: PopAd
  loc_A8740B: LitI2_Byte &HFF
  loc_A8740D: LitI2_Byte 0
  loc_A8740F: FLdRfVar var_98
  loc_A87412: CStrVarTmp
  loc_A87413: FStStrNoPop var_9C
  loc_A87416: LitStr "Periodo de la ordenanza tarifaría"
  loc_A87419: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8741E: FStStrNoPop var_A0
  loc_A87421: FLdPr Me
  loc_A87424: MemStStrCopy
  loc_A87428: FFreeStr var_9C = ""
  loc_A8742F: FFree1Ad var_88
  loc_A87432: FFree1Var var_98 = ""
  loc_A87435: FLdPr Me
  loc_A87438: MemLdStr global_56
  loc_A8743B: LitStr vbNullString
  loc_A8743E: NeStr
  loc_A87440: BranchF loc_A87466
  loc_A87443: FLdPr Me
  loc_A87446: MemLdStr global_56
  loc_A87449: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8744E: FLdPr Me
  loc_A87451: VCallAd Control_ID_PeriOrdeMsk
  loc_A87454: CVarAd
  loc_A87458: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8745D: FFree1Var var_98 = ""
  loc_A87460: LitI2_Byte &HFF
  loc_A87462: IStI2 arg_C
  loc_A87465: ExitProcHresult
  loc_A87466: ExitProcHresult
End Function

Private Sub AceptarCmd_Click() 'AF4250
  'Data Table: 48AC70
  loc_AF40C8: LitStr vbNullString
  loc_AF40CB: FLdPr Me
  loc_AF40CE: MemStStrCopy
  loc_AF40D2: LitI2_Byte 0
  loc_AF40D4: PopTmpLdAd2 var_86
  loc_AF40D7: Call UntrPageTxt_Validate(from_stack_1v)
  loc_AF40DC: FLdPr Me
  loc_AF40DF: MemLdStr global_56
  loc_AF40E2: LitStr vbNullString
  loc_AF40E5: NeStr
  loc_AF40E7: BranchF loc_AF40EB
  loc_AF40EA: ExitProcHresult
  loc_AF40EB: FLdPr Me
  loc_AF40EE: VCallAd Control_ID_PeriOrdeMsk
  loc_AF40F1: FStAdFunc var_8C
  loc_AF40F4: FLdPr var_8C
  loc_AF40F7: LateIdLdVar var_9C DispID_22 0
  loc_AF40FE: PopAd
  loc_AF4100: FLdRfVar var_A4
  loc_AF4103: FLdPr Me
  loc_AF4106: VCallAd Control_ID_DecaPageTxt
  loc_AF4109: FStAdFunc var_A0
  loc_AF410C: FLdPr var_A0
  loc_AF410F:  = Me.Text
  loc_AF4114: FLdRfVar var_AC
  loc_AF4117: FLdPr Me
  loc_AF411A: VCallAd Control_ID_DerePageTxt
  loc_AF411D: FStAdFunc var_A8
  loc_AF4120: FLdPr var_A8
  loc_AF4123:  = Me.Text
  loc_AF4128: FLdRfVar var_B4
  loc_AF412B: FLdPr Me
  loc_AF412E: VCallAd Control_ID_FosePageCbo
  loc_AF4131: FStAdFunc var_B0
  loc_AF4134: FLdPr var_B0
  loc_AF4137:  = Me.Text
  loc_AF413C: FLdRfVar var_BC
  loc_AF413F: FLdPr Me
  loc_AF4142: VCallAd Control_ID_DicaPageTxt
  loc_AF4145: FStAdFunc var_B8
  loc_AF4148: FLdPr var_B8
  loc_AF414B:  = Me.Text
  loc_AF4150: FLdRfVar var_C4
  loc_AF4153: FLdPr Me
  loc_AF4156: VCallAd Control_ID_DiprPageTxt
  loc_AF4159: FStAdFunc var_C0
  loc_AF415C: FLdPr var_C0
  loc_AF415F:  = Me.Text
  loc_AF4164: FLdRfVar var_CC
  loc_AF4167: FLdPr Me
  loc_AF416A: VCallAd Control_ID_UntrPageTxt
  loc_AF416D: FStAdFunc var_C8
  loc_AF4170: FLdPr var_C8
  loc_AF4173:  = Me.Text
  loc_AF4178: FLdRfVar var_D8
  loc_AF417B: FLdPr Me
  loc_AF417E: VCallAd Control_ID_LepaPageTxt
  loc_AF4181: FStAdFunc var_D4
  loc_AF4184: FLdPr var_D4
  loc_AF4187:  = Me.Text
  loc_AF418C: LitCy 0
  loc_AF4195: ILdRf var_D8
  loc_AF4198: ILdRf var_CC
  loc_AF419B: ILdRf var_C4
  loc_AF419E: ILdRf var_BC
  loc_AF41A1: ILdRf var_B4
  loc_AF41A4: ILdRf var_AC
  loc_AF41A7: CR8Str
  loc_AF41A9: PopFPR8
  loc_AF41AA: ILdRf var_A4
  loc_AF41AD: CR8Str
  loc_AF41AF: PopFPR8
  loc_AF41B0: LitI2_Byte 1
  loc_AF41B2: CUI1I2
  loc_AF41B4: FLdRfVar var_9C
  loc_AF41B7: CStrVarTmp
  loc_AF41B8: FStStrNoPop var_D0
  loc_AF41BB: CI2Str
  loc_AF41BD: FLdPr Me
  loc_AF41C0: MemLdRfVar from_stack_1.global_52
  loc_AF41C3: NewIfNullPr clsparagene
  loc_AF41C6: Call clsparagene.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AF41CB: FFreeStr var_D0 = "": var_A4 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = ""
  loc_AF41DE: FFreeAd var_8C = "": var_A0 = "": var_A8 = "": var_B0 = "": var_B8 = "": var_C0 = "": var_C8 = ""
  loc_AF41F1: FFree1Var var_9C = ""
  loc_AF41F4: FLdPr Me
  loc_AF41F7: VCallAd Control_ID_PeriOrdeMsk
  loc_AF41FA: FStAdFunc var_8C
  loc_AF41FD: FLdPr var_8C
  loc_AF4200: LateIdLdVar var_9C DispID_22 0
  loc_AF4207: CStrVarTmp
  loc_AF4208: FStStrNoPop var_A4
  loc_AF420B: CI2Str
  loc_AF420D: ImpAdStI2 MemVar_D93036
  loc_AF4210: FFree1Str var_A4
  loc_AF4213: FFree1Ad var_8C
  loc_AF4216: FFree1Var var_9C = ""
  loc_AF4219: FLdRfVar var_A4
  loc_AF421C: FLdPr Me
  loc_AF421F: VCallAd Control_ID_ImpresorasLst
  loc_AF4222: FStAdFunc var_8C
  loc_AF4225: FLdPr var_8C
  loc_AF4228:  = Me.Text
  loc_AF422D: FLdZeroAd var_A4
  loc_AF4230: ImpAdStStr MemVar_D93CA4
  loc_AF4234: FFree1Ad var_8C
  loc_AF4237: ImpAdLdI4 MemVar_D93CA4
  loc_AF423A: LitStr "ImpresoraBoletos"
  loc_AF423D: LitStr "HKEY_CURRENT_USER\SOFTWARE\InfoGov\"
  loc_AF4240: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_AF4245: LitStr "Se modificaron los valores del parámetro general"
  loc_AF4248: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF424D: ExitProcHresult
End Sub

Private Sub DerePageTxt_GotFocus() '9C1CB8
  'Data Table: 48AC70
  loc_9C1CA4: FLdPr Me
  loc_9C1CA7: VCallAd Control_ID_DerePageTxt
  loc_9C1CAA: CVarAd
  loc_9C1CAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1CB3: FFree1Var var_94 = ""
  loc_9C1CB6: ExitProcHresult
End Sub

Private Sub DerePageTxt_KeyPress(KeyAscii As Integer) 'A085B8
  'Data Table: 48AC70
  loc_A08584: LitStr "1234567890,."
  loc_A08587: FStStrCopy var_88
  loc_A0858A: FLdRfVar var_88
  loc_A0858D: ILdRf KeyAscii
  loc_A08590: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08595: IStI2 KeyAscii
  loc_A08598: FFree1Str var_88
  loc_A0859B: ILdI2 KeyAscii
  loc_A0859E: LitStr "."
  loc_A085A1: ImpAdCallI2 Asc()
  loc_A085A6: EqI2
  loc_A085A7: BranchF loc_A085B5
  loc_A085AA: LitStr ","
  loc_A085AD: ImpAdCallI2 Asc()
  loc_A085B2: IStI2 KeyAscii
  loc_A085B5: ExitProcHresult
  loc_A085B6: FLdRfVar var_7AC
End Sub

Private Sub DerePageTxt_Validate(Cancel As Boolean) 'AAA1A8
  'Data Table: 48AC70
  loc_AAA0DC: FLdRfVar var_8A
  loc_AAA0DF: FLdPr Me
  loc_AAA0E2: VCallAd Control_ID_DerePageTxt
  loc_AAA0E5: FStAdFunc var_88
  loc_AAA0E8: FLdPr var_88
  loc_AAA0EB:  = Me.Enabled
  loc_AAA0F0: FLdI2 var_8A
  loc_AAA0F3: FFree1Ad var_88
  loc_AAA0F6: BranchF loc_AAA1A7
  loc_AAA0F9: FLdRfVar var_90
  loc_AAA0FC: FLdPr Me
  loc_AAA0FF: VCallAd Control_ID_DerePageTxt
  loc_AAA102: FStAdFunc var_88
  loc_AAA105: FLdPr var_88
  loc_AAA108:  = Me.Text
  loc_AAA10D: LitI2_Byte &HFF
  loc_AAA10F: LitI2_Byte 0
  loc_AAA111: ILdRf var_90
  loc_AAA114: LitStr "Descuento de Recargo"
  loc_AAA117: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AAA11C: FStStrNoPop var_94
  loc_AAA11F: FLdPr Me
  loc_AAA122: MemStStrCopy
  loc_AAA126: FFreeStr var_90 = ""
  loc_AAA12D: FFree1Ad var_88
  loc_AAA130: FLdPr Me
  loc_AAA133: MemLdStr global_56
  loc_AAA136: LitStr vbNullString
  loc_AAA139: NeStr
  loc_AAA13B: BranchF loc_AAA161
  loc_AAA13E: FLdPr Me
  loc_AAA141: MemLdStr global_56
  loc_AAA144: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA149: FLdPr Me
  loc_AAA14C: VCallAd Control_ID_DerePageTxt
  loc_AAA14F: CVarAd
  loc_AAA153: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA158: FFree1Var var_A4 = ""
  loc_AAA15B: LitI2_Byte &HFF
  loc_AAA15D: IStI2 Cancel
  loc_AAA160: ExitProcHresult
  loc_AAA161: FLdRfVar var_90
  loc_AAA164: FLdPr Me
  loc_AAA167: VCallAd Control_ID_DerePageTxt
  loc_AAA16A: FStAdFunc var_88
  loc_AAA16D: FLdPr var_88
  loc_AAA170:  = Me.Text
  loc_AAA175: ILdRf var_90
  loc_AAA178: CR8Str
  loc_AAA17A: LitI2_Byte &H64
  loc_AAA17C: CR8I2
  loc_AAA17D: GtR4
  loc_AAA17E: FFree1Str var_90
  loc_AAA181: FFree1Ad var_88
  loc_AAA184: BranchF loc_AAA1A7
  loc_AAA187: LitStr "El valor no puede ser mayor al 100 " & Chr(37)
  loc_AAA18A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA18F: FLdPr Me
  loc_AAA192: VCallAd Control_ID_DerePageTxt
  loc_AAA195: CVarAd
  loc_AAA199: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA19E: FFree1Var var_A4 = ""
  loc_AAA1A1: LitI2_Byte &HFF
  loc_AAA1A3: IStI2 Cancel
  loc_AAA1A6: ExitProcHresult
  loc_AAA1A7: ExitProcHresult
End Sub

Private Sub DecaPageTxt_GotFocus() '9C1E20
  'Data Table: 48AC70
  loc_9C1E0C: FLdPr Me
  loc_9C1E0F: VCallAd Control_ID_DecaPageTxt
  loc_9C1E12: CVarAd
  loc_9C1E16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1E1B: FFree1Var var_94 = ""
  loc_9C1E1E: ExitProcHresult
End Sub

Private Sub DecaPageTxt_KeyPress(KeyAscii As Integer) 'A08620
  'Data Table: 48AC70
  loc_A085EC: LitStr "1234567890,."
  loc_A085EF: FStStrCopy var_88
  loc_A085F2: FLdRfVar var_88
  loc_A085F5: ILdRf KeyAscii
  loc_A085F8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A085FD: IStI2 KeyAscii
  loc_A08600: FFree1Str var_88
  loc_A08603: ILdI2 KeyAscii
  loc_A08606: LitStr "."
  loc_A08609: ImpAdCallI2 Asc()
  loc_A0860E: EqI2
  loc_A0860F: BranchF loc_A0861D
  loc_A08612: LitStr ","
  loc_A08615: ImpAdCallI2 Asc()
  loc_A0861A: IStI2 KeyAscii
  loc_A0861D: ExitProcHresult
  loc_A0861E: ConcatStr
End Sub

Private Sub DecaPageTxt_LostFocus() 'A73A78
  'Data Table: 48AC70
  loc_A73A14: FLdRfVar var_8C
  loc_A73A17: FLdPr Me
  loc_A73A1A: VCallAd Control_ID_DecaPageTxt
  loc_A73A1D: FStAdFunc var_88
  loc_A73A20: FLdPr var_88
  loc_A73A23:  = Me.Text
  loc_A73A28: LitI4 1
  loc_A73A2D: LitI4 1
  loc_A73A32: LitVarStr var_AC, "0.00"
  loc_A73A37: FStVarCopyObj var_BC
  loc_A73A3A: FLdRfVar var_BC
  loc_A73A3D: FLdZeroAd var_8C
  loc_A73A40: CVarStr var_9C
  loc_A73A43: FLdRfVar var_CC
  loc_A73A46: ImpAdCallFPR4  = Format(, )
  loc_A73A4B: FLdRfVar var_CC
  loc_A73A4E: CStrVarVal var_D0
  loc_A73A52: FLdPr Me
  loc_A73A55: VCallAd Control_ID_DecaPageTxt
  loc_A73A58: FStAdFunc var_D4
  loc_A73A5B: FLdPr var_D4
  loc_A73A5E: Me.Text = from_stack_1
  loc_A73A63: FFree1Str var_D0
  loc_A73A66: FFreeAd var_88 = ""
  loc_A73A6D: FFreeVar var_9C = "": var_BC = ""
  loc_A73A76: ExitProcHresult
End Sub

Private Sub DecaPageTxt_Validate(Cancel As Boolean) 'AAC328
  'Data Table: 48AC70
  loc_AAC25C: FLdRfVar var_8A
  loc_AAC25F: FLdPr Me
  loc_AAC262: VCallAd Control_ID_DecaPageTxt
  loc_AAC265: FStAdFunc var_88
  loc_AAC268: FLdPr var_88
  loc_AAC26B:  = Me.Enabled
  loc_AAC270: FLdI2 var_8A
  loc_AAC273: FFree1Ad var_88
  loc_AAC276: BranchF loc_AAC327
  loc_AAC279: FLdRfVar var_90
  loc_AAC27C: FLdPr Me
  loc_AAC27F: VCallAd Control_ID_DecaPageTxt
  loc_AAC282: FStAdFunc var_88
  loc_AAC285: FLdPr var_88
  loc_AAC288:  = Me.Text
  loc_AAC28D: LitI2_Byte &HFF
  loc_AAC28F: LitI2_Byte 0
  loc_AAC291: ILdRf var_90
  loc_AAC294: LitStr "Descuento de Capítal"
  loc_AAC297: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AAC29C: FStStrNoPop var_94
  loc_AAC29F: FLdPr Me
  loc_AAC2A2: MemStStrCopy
  loc_AAC2A6: FFreeStr var_90 = ""
  loc_AAC2AD: FFree1Ad var_88
  loc_AAC2B0: FLdPr Me
  loc_AAC2B3: MemLdStr global_56
  loc_AAC2B6: LitStr vbNullString
  loc_AAC2B9: NeStr
  loc_AAC2BB: BranchF loc_AAC2E1
  loc_AAC2BE: FLdPr Me
  loc_AAC2C1: MemLdStr global_56
  loc_AAC2C4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAC2C9: FLdPr Me
  loc_AAC2CC: VCallAd Control_ID_DecaPageTxt
  loc_AAC2CF: CVarAd
  loc_AAC2D3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAC2D8: FFree1Var var_A4 = ""
  loc_AAC2DB: LitI2_Byte &HFF
  loc_AAC2DD: IStI2 Cancel
  loc_AAC2E0: ExitProcHresult
  loc_AAC2E1: FLdRfVar var_90
  loc_AAC2E4: FLdPr Me
  loc_AAC2E7: VCallAd Control_ID_DecaPageTxt
  loc_AAC2EA: FStAdFunc var_88
  loc_AAC2ED: FLdPr var_88
  loc_AAC2F0:  = Me.Text
  loc_AAC2F5: ILdRf var_90
  loc_AAC2F8: CR8Str
  loc_AAC2FA: LitI2_Byte &H64
  loc_AAC2FC: CR8I2
  loc_AAC2FD: GtR4
  loc_AAC2FE: FFree1Str var_90
  loc_AAC301: FFree1Ad var_88
  loc_AAC304: BranchF loc_AAC327
  loc_AAC307: LitStr "El valor no puede ser mayor al 100 " & Chr(37)
  loc_AAC30A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAC30F: FLdPr Me
  loc_AAC312: VCallAd Control_ID_DecaPageTxt
  loc_AAC315: CVarAd
  loc_AAC319: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAC31E: FFree1Var var_A4 = ""
  loc_AAC321: LitI2_Byte &HFF
  loc_AAC323: IStI2 Cancel
  loc_AAC326: ExitProcHresult
  loc_AAC327: ExitProcHresult
End Sub

Private Sub UntrPageTxt_GotFocus() '9C1AC0
  'Data Table: 48AC70
  loc_9C1AAC: FLdPr Me
  loc_9C1AAF: VCallAd Control_ID_UntrPageTxt
  loc_9C1AB2: CVarAd
  loc_9C1AB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1ABB: FFree1Var var_94 = ""
  loc_9C1ABE: ExitProcHresult
End Sub

Private Sub UntrPageTxt_KeyPress(KeyAscii As Integer) 'A08418
  'Data Table: 48AC70
  loc_A083E4: LitStr "1234567890,."
  loc_A083E7: FStStrCopy var_88
  loc_A083EA: FLdRfVar var_88
  loc_A083ED: ILdRf KeyAscii
  loc_A083F0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A083F5: IStI2 KeyAscii
  loc_A083F8: FFree1Str var_88
  loc_A083FB: ILdI2 KeyAscii
  loc_A083FE: LitStr "."
  loc_A08401: ImpAdCallI2 Asc()
  loc_A08406: EqI2
  loc_A08407: BranchF loc_A08415
  loc_A0840A: LitStr ","
  loc_A0840D: ImpAdCallI2 Asc()
  loc_A08412: IStI2 KeyAscii
  loc_A08415: ExitProcHresult
  loc_A08416: LeI2
End Sub

Private Sub UntrPageTxt_Validate(Cancel As Boolean) 'A81F64
  'Data Table: 48AC70
  loc_A81EDC: FLdRfVar var_8A
  loc_A81EDF: FLdPr Me
  loc_A81EE2: VCallAd Control_ID_DerePageTxt
  loc_A81EE5: FStAdFunc var_88
  loc_A81EE8: FLdPr var_88
  loc_A81EEB:  = Me.Enabled
  loc_A81EF0: FLdI2 var_8A
  loc_A81EF3: FFree1Ad var_88
  loc_A81EF6: BranchF loc_A81F61
  loc_A81EF9: FLdRfVar var_90
  loc_A81EFC: FLdPr Me
  loc_A81EFF: VCallAd Control_ID_UntrPageTxt
  loc_A81F02: FStAdFunc var_88
  loc_A81F05: FLdPr var_88
  loc_A81F08:  = Me.Text
  loc_A81F0D: LitI2_Byte 0
  loc_A81F0F: LitI2_Byte 0
  loc_A81F11: ILdRf var_90
  loc_A81F14: LitStr "Unidad Tributaria Municipal"
  loc_A81F17: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A81F1C: FStStrNoPop var_94
  loc_A81F1F: FLdPr Me
  loc_A81F22: MemStStrCopy
  loc_A81F26: FFreeStr var_90 = ""
  loc_A81F2D: FFree1Ad var_88
  loc_A81F30: FLdPr Me
  loc_A81F33: MemLdStr global_56
  loc_A81F36: LitStr vbNullString
  loc_A81F39: NeStr
  loc_A81F3B: BranchF loc_A81F61
  loc_A81F3E: FLdPr Me
  loc_A81F41: MemLdStr global_56
  loc_A81F44: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81F49: FLdPr Me
  loc_A81F4C: VCallAd Control_ID_UntrPageTxt
  loc_A81F4F: CVarAd
  loc_A81F53: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81F58: FFree1Var var_A4 = ""
  loc_A81F5B: LitI2_Byte &HFF
  loc_A81F5D: IStI2 Cancel
  loc_A81F60: ExitProcHresult
  loc_A81F61: ExitProcHresult
  loc_A81F62: CRec2Uni var_800
End Sub
