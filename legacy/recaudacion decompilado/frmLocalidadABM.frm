VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmLocalidadABM
  Caption = "Localidad"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmLocalidadABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12948
  ClientHeight = 7836
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 4560
    Width = 8280
    Height = 2280
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
    Begin VB.TextBox CodiPostTxt
      ForeColor = &HFF0000&
      Left = 1800
      Top = 1560
      Width = 2295
      Height = 360
      TabIndex = 3
      MaxLength = 15
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
    Begin VB.TextBox CodiLocaTxt
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1800
      Top = 360
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 3
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
    Begin VB.TextBox DetaLocaTxt
      ForeColor = &HFF0000&
      Left = 1800
      Top = 960
      Width = 6135
      Height = 360
      TabIndex = 2
      MaxLength = 40
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
      Caption = "Codigo Postal:"
      Left = 240
      Top = 1560
      Width = 1530
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
    Begin VB.Label Label3
      Caption = "Localidad:"
      Left = 720
      Top = 960
      Width = 1080
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
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 960
      Top = 360
      Width = 810
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 9945
    Height = 2955
    TabIndex = 0
    OleObjectBlob = "frmLocalidadABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmLocalidadABM.frx":34C6
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12948
    Height = 528
    TabIndex = 8
    OleObjectBlob = "frmLocalidadABM.frx":B044
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 9
      TabStop = 0   'False
      Picture = "frmLocalidadABM.frx":B5A0
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 11
    OleObjectBlob = "frmLocalidadABM.frx":BE6A
  End
End

Attribute VB_Name = "frmLocalidadABM"


Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68FB0
  'Data Table: 44EAE8
  loc_A68F54: FLdRfVar var_B4
  loc_A68F57: FLdRfVar var_B0
  loc_A68F5A: FLdI2 ColIndex
  loc_A68F5D: CVarI2 var_A8
  loc_A68F60: PopAdLdVar
  loc_A68F61: FLdPr Me
  loc_A68F64: VCallAd Control_ID_dgdABMS
  loc_A68F67: FStAdFunc var_88
  loc_A68F6A: FLdPr var_88
  loc_A68F6D: LateIdLdVar var_98 DispID_105 0
  loc_A68F74: CastAdVar Me
  loc_A68F78: FStAdFunc var_AC
  loc_A68F7B: FLdPr var_AC
  loc_A68F7E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68F83: FLdPr var_B0
  loc_A68F86:  = Me.DataField
  loc_A68F8B: FLdZeroAd var_B4
  loc_A68F8E: PopTmpLdAdStr
  loc_A68F92: FLdPr Me
  loc_A68F95: MemLdRfVar from_stack_1.global_52
  loc_A68F98: NewIfNullPr clslocalidad
  loc_A68F9B: Call clslocalidad.Sort(from_stack_1v)
  loc_A68FA0: FFree1Str var_B8
  loc_A68FA3: FFreeAd var_88 = "": var_AC = ""
  loc_A68FAC: FFree1Var var_98 = ""
  loc_A68FAF: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B9752C
  'Data Table: 44EAE8
  loc_B96FBC: ILdRf Button
  loc_B96FBF: FStAd var_88 
  loc_B96FC3: FLdRfVar var_90
  loc_B96FC6: FLdPr var_88
  loc_B96FC9:  = Me.Key
  loc_B96FCE: FLdZeroAd var_90
  loc_B96FD1: FStStr var_94
  loc_B96FD4: ILdRf var_94
  loc_B96FD7: LitStr "btnCrear"
  loc_B96FDA: EqStr
  loc_B96FDC: BranchF loc_B970FA
  loc_B96FDF: LitI2_Byte 1
  loc_B96FE1: FLdPr Me
  loc_B96FE4: MemStI2 global_56
  loc_B96FE7: ILdRf Me
  loc_B96FEA: CastAd
  loc_B96FED: FStAdFunc var_98
  loc_B96FF0: FLdRfVar var_98
  loc_B96FF3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B96FF8: FFree1Ad var_98
  loc_B96FFB: LitI4 0
  loc_B97000: LitI4 0
  loc_B97005: FLdRfVar var_9C
  loc_B97008: Redim
  loc_B97012: FLdPr Me
  loc_B97015: VCallAd Control_ID_dgdABMS
  loc_B97018: CVarAd
  loc_B9701C: ParmAry1St
  loc_B97022: FLdRfVar var_9C
  loc_B97025: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B9702A: FLdRfVar var_9C
  loc_B9702D: Erase
  loc_B9702E: ILdRf Me
  loc_B97031: CastAd
  loc_B97034: FStAdFunc var_98
  loc_B97037: FLdRfVar var_98
  loc_B9703A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B9703F: FFree1Ad var_98
  loc_B97042: ILdRf Me
  loc_B97045: CastAd
  loc_B97048: FStAdFunc var_98
  loc_B9704B: FLdRfVar var_98
  loc_B9704E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B97053: FFree1Ad var_98
  loc_B97056: FLdRfVar var_B0
  loc_B97059: FLdPr Me
  loc_B9705C: MemLdRfVar from_stack_1.global_52
  loc_B9705F: NewIfNullPr clslocalidad
  loc_B97062: from_stack_1v = clslocalidad.NuevoRegistro()
  loc_B97067: ILdRf var_B0
  loc_B9706A: CStrI4
  loc_B9706C: FStStrNoPop var_90
  loc_B9706F: FLdPr Me
  loc_B97072: VCallAd Control_ID_CodiLocaTxt
  loc_B97075: FStAdFunc var_98
  loc_B97078: FLdPr var_98
  loc_B9707B: Me.Text = from_stack_1
  loc_B97080: FFree1Str var_90
  loc_B97083: FFree1Ad var_98
  loc_B97086: LitI2_Byte 0
  loc_B97088: CStrUI1
  loc_B9708A: FStStrNoPop var_90
  loc_B9708D: FLdPr Me
  loc_B97090: VCallAd Control_ID_CodiPostTxt
  loc_B97093: FStAdFunc var_98
  loc_B97096: FLdPr var_98
  loc_B97099: Me.Text = from_stack_1
  loc_B9709E: FFree1Str var_90
  loc_B970A1: FFree1Ad var_98
  loc_B970A4: LitI4 0
  loc_B970A9: LitI4 2
  loc_B970AE: FLdRfVar var_9C
  loc_B970B1: Redim
  loc_B970BB: FLdPr Me
  loc_B970BE: VCallAd Control_ID_CodiLocaTxt
  loc_B970C1: CVarAd
  loc_B970C5: ParmAry1St
  loc_B970CB: FLdPr Me
  loc_B970CE: VCallAd Control_ID_DetaLocaTxt
  loc_B970D1: CVarAd
  loc_B970D5: ParmAry1St
  loc_B970DB: FLdPr Me
  loc_B970DE: VCallAd Control_ID_CodiPostTxt
  loc_B970E1: CVarAd
  loc_B970E5: ParmAry1St
  loc_B970EB: FLdRfVar var_9C
  loc_B970EE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B970F3: FLdRfVar var_9C
  loc_B970F6: Erase
  loc_B970F7: Branch loc_B97528
  loc_B970FA: ILdRf var_94
  loc_B970FD: LitStr "btnModificar"
  loc_B97100: EqStr
  loc_B97102: BranchF loc_B971CB
  loc_B97105: FLdRfVar var_B0
  loc_B97108: FLdPr Me
  loc_B9710B: MemLdRfVar from_stack_1.global_52
  loc_B9710E: NewIfNullPr clslocalidad
  loc_B97111: from_stack_1 = clslocalidad.RecordCount
  loc_B97116: ILdRf var_B0
  loc_B97119: LitI4 0
  loc_B9711E: GtI4
  loc_B9711F: BranchF loc_B971C8
  loc_B97122: LitI2_Byte 2
  loc_B97124: FLdPr Me
  loc_B97127: MemStI2 global_56
  loc_B9712A: ILdRf Me
  loc_B9712D: CastAd
  loc_B97130: FStAdFunc var_98
  loc_B97133: FLdRfVar var_98
  loc_B97136: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B9713B: FFree1Ad var_98
  loc_B9713E: LitI4 0
  loc_B97143: LitI4 0
  loc_B97148: FLdRfVar var_9C
  loc_B9714B: Redim
  loc_B97155: FLdPr Me
  loc_B97158: VCallAd Control_ID_dgdABMS
  loc_B9715B: CVarAd
  loc_B9715F: ParmAry1St
  loc_B97165: FLdRfVar var_9C
  loc_B97168: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B9716D: FLdRfVar var_9C
  loc_B97170: Erase
  loc_B97171: ILdRf Me
  loc_B97174: CastAd
  loc_B97177: FStAdFunc var_98
  loc_B9717A: FLdRfVar var_98
  loc_B9717D: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B97182: FFree1Ad var_98
  loc_B97185: LitI4 0
  loc_B9718A: LitI4 1
  loc_B9718F: FLdRfVar var_9C
  loc_B97192: Redim
  loc_B9719C: FLdPr Me
  loc_B9719F: VCallAd Control_ID_DetaLocaTxt
  loc_B971A2: CVarAd
  loc_B971A6: ParmAry1St
  loc_B971AC: FLdPr Me
  loc_B971AF: VCallAd Control_ID_CodiPostTxt
  loc_B971B2: CVarAd
  loc_B971B6: ParmAry1St
  loc_B971BC: FLdRfVar var_9C
  loc_B971BF: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B971C4: FLdRfVar var_9C
  loc_B971C7: Erase
  loc_B971C8: Branch loc_B97528
  loc_B971CB: ILdRf var_94
  loc_B971CE: LitStr "btnEliminar"
  loc_B971D1: EqStr
  loc_B971D3: BranchF loc_B972DA
  loc_B971D6: FLdRfVar var_B0
  loc_B971D9: FLdPr Me
  loc_B971DC: MemLdRfVar from_stack_1.global_52
  loc_B971DF: NewIfNullPr clslocalidad
  loc_B971E2: from_stack_1 = clslocalidad.RecordCount
  loc_B971E7: ILdRf var_B0
  loc_B971EA: LitI4 0
  loc_B971EF: GtI4
  loc_B971F0: BranchF loc_B972D7
  loc_B971F3: FLdRfVar var_90
  loc_B971F6: FLdRfVar var_D2
  loc_B971F9: FLdPr Me
  loc_B971FC: MemLdRfVar from_stack_1.global_52
  loc_B971FF: NewIfNullPr clslocalidad
  loc_B97202: from_stack_1 = clslocalidad.CodiLoca
  loc_B97207: FLdI2 var_D2
  loc_B9720A: FLdPr Me
  loc_B9720D: MemLdRfVar from_stack_1.global_52
  loc_B97210: NewIfNullPr clslocalidad
  loc_B97213: from_stack_2v = clslocalidad.ValidaEliminarInmueble(from_stack_1v)
  loc_B97218: ILdRf var_90
  loc_B9721B: FLdPr Me
  loc_B9721E: MemStStrCopy
  loc_B97222: FFree1Str var_90
  loc_B97225: FLdPr Me
  loc_B97228: MemLdStr global_60
  loc_B9722B: LitStr vbNullString
  loc_B9722E: NeStr
  loc_B97230: BranchF loc_B9723F
  loc_B97233: FLdPr Me
  loc_B97236: MemLdStr global_60
  loc_B97239: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9723E: ExitProcHresult
  loc_B9723F: FLdRfVar var_90
  loc_B97242: FLdRfVar var_D2
  loc_B97245: FLdPr Me
  loc_B97248: MemLdRfVar from_stack_1.global_52
  loc_B9724B: NewIfNullPr clslocalidad
  loc_B9724E: from_stack_1 = clslocalidad.CodiLoca
  loc_B97253: FLdI2 var_D2
  loc_B97256: FLdPr Me
  loc_B97259: MemLdRfVar from_stack_1.global_52
  loc_B9725C: NewIfNullPr clslocalidad
  loc_B9725F: from_stack_2v = clslocalidad.ValidaEliminarComercio(from_stack_1v)
  loc_B97264: ILdRf var_90
  loc_B97267: FLdPr Me
  loc_B9726A: MemStStrCopy
  loc_B9726E: FFree1Str var_90
  loc_B97271: FLdPr Me
  loc_B97274: MemLdStr global_60
  loc_B97277: LitStr vbNullString
  loc_B9727A: NeStr
  loc_B9727C: BranchF loc_B9728B
  loc_B9727F: FLdPr Me
  loc_B97282: MemLdStr global_60
  loc_B97285: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9728A: ExitProcHresult
  loc_B9728B: FLdRfVar var_90
  loc_B9728E: FLdRfVar var_D2
  loc_B97291: FLdPr Me
  loc_B97294: MemLdRfVar from_stack_1.global_52
  loc_B97297: NewIfNullPr clslocalidad
  loc_B9729A: from_stack_1 = clslocalidad.CodiLoca
  loc_B9729F: FLdI2 var_D2
  loc_B972A2: FLdPr Me
  loc_B972A5: MemLdRfVar from_stack_1.global_52
  loc_B972A8: NewIfNullPr clslocalidad
  loc_B972AB: from_stack_2v = clslocalidad.ValidaEliminarPersonas(from_stack_1v)
  loc_B972B0: ILdRf var_90
  loc_B972B3: FLdPr Me
  loc_B972B6: MemStStrCopy
  loc_B972BA: FFree1Str var_90
  loc_B972BD: FLdPr Me
  loc_B972C0: MemLdStr global_60
  loc_B972C3: LitStr vbNullString
  loc_B972C6: NeStr
  loc_B972C8: BranchF loc_B972D7
  loc_B972CB: FLdPr Me
  loc_B972CE: MemLdStr global_60
  loc_B972D1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B972D6: ExitProcHresult
  loc_B972D7: Branch loc_B97528
  loc_B972DA: ILdRf var_94
  loc_B972DD: LitStr "btnGuardar"
  loc_B972E0: EqStr
  loc_B972E2: BranchF loc_B97424
  loc_B972E5: LitI2_Byte 0
  loc_B972E7: PopTmpLdAd2 var_D2
  loc_B972EA: Call CodiLocaTxt_Validate(from_stack_1v)
  loc_B972EF: FLdPr Me
  loc_B972F2: MemLdStr global_60
  loc_B972F5: LitStr vbNullString
  loc_B972F8: NeStr
  loc_B972FA: BranchF loc_B972FE
  loc_B972FD: ExitProcHresult
  loc_B972FE: LitI2_Byte 0
  loc_B97300: PopTmpLdAd2 var_D2
  loc_B97303: Call CodiPostTxt_Validate(from_stack_1v)
  loc_B97308: FLdPr Me
  loc_B9730B: MemLdStr global_60
  loc_B9730E: LitStr vbNullString
  loc_B97311: NeStr
  loc_B97313: BranchF loc_B97317
  loc_B97316: ExitProcHresult
  loc_B97317: LitI2_Byte 0
  loc_B97319: PopTmpLdAd2 var_D2
  loc_B9731C: Call DetaLocaTxt_Validate(from_stack_1v)
  loc_B97321: FLdPr Me
  loc_B97324: MemLdStr global_60
  loc_B97327: LitStr vbNullString
  loc_B9732A: NeStr
  loc_B9732C: BranchF loc_B97330
  loc_B9732F: ExitProcHresult
  loc_B97330: FLdPr Me
  loc_B97333: MemLdI2 global_56
  loc_B97336: FStI2 var_D4
  loc_B97339: FLdI2 var_D4
  loc_B9733C: LitI2_Byte 1
  loc_B9733E: EqI2
  loc_B9733F: BranchF loc_B973AC
  loc_B97342: FLdRfVar var_90
  loc_B97345: FLdPr Me
  loc_B97348: VCallAd Control_ID_CodiLocaTxt
  loc_B9734B: FStAdFunc var_98
  loc_B9734E: FLdPr var_98
  loc_B97351:  = Me.Text
  loc_B97356: FLdRfVar var_DC
  loc_B97359: FLdPr Me
  loc_B9735C: VCallAd Control_ID_DetaLocaTxt
  loc_B9735F: FStAdFunc var_D8
  loc_B97362: FLdPr var_D8
  loc_B97365:  = Me.Text
  loc_B9736A: FLdRfVar var_E4
  loc_B9736D: FLdPr Me
  loc_B97370: VCallAd Control_ID_CodiPostTxt
  loc_B97373: FStAdFunc var_E0
  loc_B97376: FLdPr var_E0
  loc_B97379:  = Me.Text
  loc_B9737E: ILdRf var_E4
  loc_B97381: ILdRf var_DC
  loc_B97384: ILdRf var_90
  loc_B97387: CI2Str
  loc_B97389: FLdPr Me
  loc_B9738C: MemLdRfVar from_stack_1.global_52
  loc_B9738F: NewIfNullPr clslocalidad
  loc_B97392: Call clslocalidad.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B97397: FFreeStr var_90 = "": var_DC = ""
  loc_B973A0: FFreeAd var_98 = "": var_D8 = ""
  loc_B973A9: Branch loc_B9741C
  loc_B973AC: FLdI2 var_D4
  loc_B973AF: LitI2_Byte 2
  loc_B973B1: EqI2
  loc_B973B2: BranchF loc_B9741C
  loc_B973B5: FLdRfVar var_90
  loc_B973B8: FLdPr Me
  loc_B973BB: VCallAd Control_ID_CodiLocaTxt
  loc_B973BE: FStAdFunc var_98
  loc_B973C1: FLdPr var_98
  loc_B973C4:  = Me.Text
  loc_B973C9: FLdRfVar var_DC
  loc_B973CC: FLdPr Me
  loc_B973CF: VCallAd Control_ID_DetaLocaTxt
  loc_B973D2: FStAdFunc var_D8
  loc_B973D5: FLdPr var_D8
  loc_B973D8:  = Me.Text
  loc_B973DD: FLdRfVar var_E4
  loc_B973E0: FLdPr Me
  loc_B973E3: VCallAd Control_ID_CodiPostTxt
  loc_B973E6: FStAdFunc var_E0
  loc_B973E9: FLdPr var_E0
  loc_B973EC:  = Me.Text
  loc_B973F1: ILdRf var_E4
  loc_B973F4: ILdRf var_DC
  loc_B973F7: ILdRf var_90
  loc_B973FA: CI2Str
  loc_B973FC: FLdPr Me
  loc_B973FF: MemLdRfVar from_stack_1.global_52
  loc_B97402: NewIfNullPr clslocalidad
  loc_B97405: Call clslocalidad.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B9740A: FFreeStr var_90 = "": var_DC = ""
  loc_B97413: FFreeAd var_98 = "": var_D8 = ""
  loc_B9741C: Call cmdCancelar_Click()
  loc_B97421: Branch loc_B97528
  loc_B97424: ILdRf var_94
  loc_B97427: LitStr "btnCancelar"
  loc_B9742A: EqStr
  loc_B9742C: BranchF loc_B97437
  loc_B9742F: Call cmdCancelar_Click()
  loc_B97434: Branch loc_B97528
  loc_B97437: ILdRf var_94
  loc_B9743A: LitStr "btnPrimero"
  loc_B9743D: EqStr
  loc_B9743F: BranchF loc_B97453
  loc_B97442: FLdPr Me
  loc_B97445: MemLdRfVar from_stack_1.global_52
  loc_B97448: NewIfNullPr clslocalidad
  loc_B9744B: Call clslocalidad.MoveFirst()
  loc_B97450: Branch loc_B97528
  loc_B97453: ILdRf var_94
  loc_B97456: LitStr "btnAnterior"
  loc_B97459: EqStr
  loc_B9745B: BranchF loc_B9746F
  loc_B9745E: FLdPr Me
  loc_B97461: MemLdRfVar from_stack_1.global_52
  loc_B97464: NewIfNullPr clslocalidad
  loc_B97467: Call clslocalidad.MovePrevious()
  loc_B9746C: Branch loc_B97528
  loc_B9746F: ILdRf var_94
  loc_B97472: LitStr "btnSiguiente"
  loc_B97475: EqStr
  loc_B97477: BranchF loc_B9748B
  loc_B9747A: FLdPr Me
  loc_B9747D: MemLdRfVar from_stack_1.global_52
  loc_B97480: NewIfNullPr clslocalidad
  loc_B97483: Call clslocalidad.MoveNext()
  loc_B97488: Branch loc_B97528
  loc_B9748B: ILdRf var_94
  loc_B9748E: LitStr "btnUltimo"
  loc_B97491: EqStr
  loc_B97493: BranchF loc_B974A7
  loc_B97496: FLdPr Me
  loc_B97499: MemLdRfVar from_stack_1.global_52
  loc_B9749C: NewIfNullPr clslocalidad
  loc_B9749F: Call clslocalidad.MoveLast()
  loc_B974A4: Branch loc_B97528
  loc_B974A7: ILdRf var_94
  loc_B974AA: LitStr "btnFiltrar"
  loc_B974AD: EqStr
  loc_B974AF: BranchF loc_B974B5
  loc_B974B2: Branch loc_B97528
  loc_B974B5: ILdRf var_94
  loc_B974B8: LitStr "btnBuscar"
  loc_B974BB: EqStr
  loc_B974BD: BranchF loc_B974C3
  loc_B974C0: Branch loc_B97528
  loc_B974C3: ILdRf var_94
  loc_B974C6: LitStr "btnImprimir"
  loc_B974C9: EqStr
  loc_B974CB: BranchF loc_B974D1
  loc_B974CE: Branch loc_B97528
  loc_B974D1: ILdRf var_94
  loc_B974D4: LitStr "btnAyuda"
  loc_B974D7: EqStr
  loc_B974D9: BranchF loc_B97508
  loc_B974DC: LitVar_Missing var_134
  loc_B974DF: LitVar_Missing var_D0
  loc_B974E2: LitVar_Missing var_C0
  loc_B974E5: LitI4 0
  loc_B974EA: LitVarStr var_F4, "Opcion no disponible en esta version."
  loc_B974EF: FStVarCopyObj var_AC
  loc_B974F2: FLdRfVar var_AC
  loc_B974F5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B974FA: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_B97505: Branch loc_B97528
  loc_B97508: ILdRf var_94
  loc_B9750B: LitStr "btnSalir"
  loc_B9750E: EqStr
  loc_B97510: BranchF loc_B97528
  loc_B97513: ILdRf Me
  loc_B97516: FStAdNoPop
  loc_B9751A: ImpAdLdRf MemVar_D9C5D8
  loc_B9751D: NewIfNullPr Global
  loc_B97520: Global.Unload from_stack_1
  loc_B97525: FFree1Ad var_98
  loc_B97528: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEE314
  'Data Table: 44EAE8
  loc_AEE184: LitI2_Byte 0
  loc_AEE186: CR8I2
  loc_AEE187: PopFPR4
  loc_AEE188: FLdPr Me
  loc_AEE18B: Me.Left = from_stack_1s
  loc_AEE190: LitI2_Byte 0
  loc_AEE192: CR8I2
  loc_AEE193: PopFPR4
  loc_AEE194: FLdPr Me
  loc_AEE197: Me.Top = from_stack_1s
  loc_AEE19C: LitStr "SELECT * FROM infogov.localidad ORDER BY CodiLoca"
  loc_AEE19F: FLdPr Me
  loc_AEE1A2: MemLdRfVar from_stack_1.global_52
  loc_AEE1A5: NewIfNullPr clslocalidad
  loc_AEE1A8: Call clslocalidad.RedefineRS(from_stack_1v)
  loc_AEE1AD: LitStr "CodiLoca"
  loc_AEE1B0: FLdPr Me
  loc_AEE1B3: VCallAd Control_ID_CodiLocaTxt
  loc_AEE1B6: FStAdFunc var_88
  loc_AEE1B9: FLdPr var_88
  loc_AEE1BC: Me.DataField = from_stack_1
  loc_AEE1C1: FFree1Ad var_88
  loc_AEE1C4: LitStr "CodiPost"
  loc_AEE1C7: FLdPr Me
  loc_AEE1CA: VCallAd Control_ID_CodiPostTxt
  loc_AEE1CD: FStAdFunc var_88
  loc_AEE1D0: FLdPr var_88
  loc_AEE1D3: Me.DataField = from_stack_1
  loc_AEE1D8: FFree1Ad var_88
  loc_AEE1DB: LitStr "DetaLoca"
  loc_AEE1DE: FLdPr Me
  loc_AEE1E1: VCallAd Control_ID_DetaLocaTxt
  loc_AEE1E4: FStAdFunc var_88
  loc_AEE1E7: FLdPr var_88
  loc_AEE1EA: Me.DataField = from_stack_1
  loc_AEE1EF: FFree1Ad var_88
  loc_AEE1F2: LitI4 0
  loc_AEE1F7: LitI4 1
  loc_AEE1FC: FLdRfVar var_8C
  loc_AEE1FF: Redim
  loc_AEE209: FLdPr Me
  loc_AEE20C: MemLdRfVar from_stack_1.global_52
  loc_AEE20F: NewIfNullAd
  loc_AEE212: FStAd var_88 
  loc_AEE216: FLdRfVar var_88
  loc_AEE219: CVarRef
  loc_AEE21E: ParmAry1St
  loc_AEE224: FLdPr Me
  loc_AEE227: VCallAd Control_ID_dgdABMS
  loc_AEE22A: CVarAd
  loc_AEE22E: ParmAry1St
  loc_AEE234: FLdRfVar var_8C
  loc_AEE237: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AEE23C: ILdRf var_88
  loc_AEE23F: CastAd
  loc_AEE242: FLdPr Me
  loc_AEE245: MemStAdFunc
  loc_AEE249: FLdRfVar var_8C
  loc_AEE24C: Erase
  loc_AEE24D: FFree1Ad var_88
  loc_AEE250: Call EnlazaTodo()
  loc_AEE255: ILdRf Me
  loc_AEE258: CastAd
  loc_AEE25B: FStAdFunc var_88
  loc_AEE25E: FLdRfVar var_88
  loc_AEE261: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AEE266: FFree1Ad var_88
  loc_AEE269: LitI2_Byte 0
  loc_AEE26B: ILdRf Me
  loc_AEE26E: CastAd
  loc_AEE271: FStAdFunc var_88
  loc_AEE274: FLdRfVar var_88
  loc_AEE277: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AEE27C: FFree1Ad var_88
  loc_AEE27F: LitVarI2 var_9C, 0
  loc_AEE284: PopAdLdVar
  loc_AEE285: LitStr "Código"
  loc_AEE288: FLdPr Me
  loc_AEE28B: VCallAd Control_ID_FiltroCbo
  loc_AEE28E: FStAdFunc var_88
  loc_AEE291: FLdPr var_88
  loc_AEE294: Me.AddItem from_stack_1, from_stack_2
  loc_AEE299: FFree1Ad var_88
  loc_AEE29C: LitVarI2 var_9C, 1
  loc_AEE2A1: PopAdLdVar
  loc_AEE2A2: LitStr "Detalle de Localidad"
  loc_AEE2A5: FLdPr Me
  loc_AEE2A8: VCallAd Control_ID_FiltroCbo
  loc_AEE2AB: FStAdFunc var_88
  loc_AEE2AE: FLdPr var_88
  loc_AEE2B1: Me.AddItem from_stack_1, from_stack_2
  loc_AEE2B6: FFree1Ad var_88
  loc_AEE2B9: LitI2_Byte 0
  loc_AEE2BB: FLdPr Me
  loc_AEE2BE: VCallAd Control_ID_FiltroCbo
  loc_AEE2C1: FStAdFunc var_88
  loc_AEE2C4: FLdPr var_88
  loc_AEE2C7: Me.ListIndex = from_stack_1
  loc_AEE2CC: FFree1Ad var_88
  loc_AEE2CF: LitI4 0
  loc_AEE2D4: LitI4 1
  loc_AEE2D9: FLdRfVar var_8C
  loc_AEE2DC: Redim
  loc_AEE2E6: FLdPr Me
  loc_AEE2E9: VCallAd Control_ID_FiltroCbo
  loc_AEE2EC: CVarAd
  loc_AEE2F0: ParmAry1St
  loc_AEE2F6: FLdPr Me
  loc_AEE2F9: VCallAd Control_ID_FiltroMsk
  loc_AEE2FC: CVarAd
  loc_AEE300: ParmAry1St
  loc_AEE306: FLdRfVar var_8C
  loc_AEE309: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AEE30E: FLdRfVar var_8C
  loc_AEE311: Erase
  loc_AEE312: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A63CA0
  'Data Table: 44EAE8
  loc_A63C44: FLdRfVar var_C2
  loc_A63C47: FLdRfVar var_C0
  loc_A63C4A: LitVarI2 var_B8, 1
  loc_A63C4F: FLdPr Me
  loc_A63C52: VCallAd Control_ID_tlbABMS
  loc_A63C55: FStAdFunc var_88
  loc_A63C58: FLdPr var_88
  loc_A63C5B: LateIdLdVar var_98 DispID_3 0
  loc_A63C62: CastAdVar Me
  loc_A63C66: FStAdFunc var_BC
  loc_A63C69: FLdPr var_BC
  loc_A63C6C:  = Me.Buttons.ControlDefault
  loc_A63C71: FLdPr var_C0
  loc_A63C74:  = Me.Enabled
  loc_A63C79: FLdI2 var_C2
  loc_A63C7C: FFreeAd var_88 = "": var_BC = ""
  loc_A63C85: FFreeVar var_98 = ""
  loc_A63C8C: BranchF loc_A63C9D
  loc_A63C8F: FLdPr Me
  loc_A63C92: MemLdRfVar from_stack_1.global_52
  loc_A63C95: NewIfNullPr clslocalidad
  loc_A63C98: Call clslocalidad.Requery()
  loc_A63C9D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DD1CC
  'Data Table: 44EAE8
  loc_9DD1B4: ILdI2 KeyCode
  loc_9DD1B7: ILdRf Me
  loc_9DD1BA: CastAd
  loc_9DD1BD: FStAdFunc var_88
  loc_9DD1C0: FLdRfVar var_88
  loc_9DD1C3: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9DD1C8: FFree1Ad var_88
  loc_9DD1CB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AA2C0C
  'Data Table: 44EAE8
  loc_AA2B5C: LitI2_Byte 0
  loc_AA2B5E: FLdPr Me
  loc_AA2B61: MemStI2 global_56
  loc_AA2B64: LitI2_Byte 0
  loc_AA2B66: ILdRf Me
  loc_AA2B69: CastAd
  loc_AA2B6C: FStAdFunc var_88
  loc_AA2B6F: FLdRfVar var_88
  loc_AA2B72: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AA2B77: FFree1Ad var_88
  loc_AA2B7A: LitI4 0
  loc_AA2B7F: LitI4 0
  loc_AA2B84: FLdRfVar var_8C
  loc_AA2B87: Redim
  loc_AA2B91: FLdPr Me
  loc_AA2B94: VCallAd Control_ID_dgdABMS
  loc_AA2B97: CVarAd
  loc_AA2B9B: ParmAry1St
  loc_AA2BA1: FLdRfVar var_8C
  loc_AA2BA4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2BA9: FLdRfVar var_8C
  loc_AA2BAC: Erase
  loc_AA2BAD: Call EnlazaTodo()
  loc_AA2BB2: ILdRf Me
  loc_AA2BB5: CastAd
  loc_AA2BB8: FStAdFunc var_88
  loc_AA2BBB: FLdRfVar var_88
  loc_AA2BBE: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA2BC3: FFree1Ad var_88
  loc_AA2BC6: LitI4 0
  loc_AA2BCB: LitI4 1
  loc_AA2BD0: FLdRfVar var_8C
  loc_AA2BD3: Redim
  loc_AA2BDD: FLdPr Me
  loc_AA2BE0: VCallAd Control_ID_FiltroCbo
  loc_AA2BE3: CVarAd
  loc_AA2BE7: ParmAry1St
  loc_AA2BED: FLdPr Me
  loc_AA2BF0: VCallAd Control_ID_FiltroMsk
  loc_AA2BF3: CVarAd
  loc_AA2BF7: ParmAry1St
  loc_AA2BFD: FLdRfVar var_8C
  loc_AA2C00: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2C05: FLdRfVar var_8C
  loc_AA2C08: Erase
  loc_AA2C09: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_GotFocus() '9C2F00
  'Data Table: 44EAE8
  loc_9C2EEC: FLdPr Me
  loc_9C2EEF: VCallAd Control_ID_CodiLocaTxt
  loc_9C2EF2: CVarAd
  loc_9C2EF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2EFB: FFree1Var var_94 = ""
  loc_9C2EFE: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_KeyPress(KeyAscii As Integer) '9DD09C
  'Data Table: 44EAE8
  loc_9DD084: LitStr "0123456789"
  loc_9DD087: FStStrCopy var_88
  loc_9DD08A: FLdRfVar var_88
  loc_9DD08D: ILdRf KeyAscii
  loc_9DD090: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DD095: IStI2 KeyAscii
  loc_9DD098: FFree1Str var_88
  loc_9DD09B: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_Validate(Cancel As Boolean) 'ABE73C
  'Data Table: 44EAE8
  loc_ABE644: FLdRfVar var_8A
  loc_ABE647: FLdPr Me
  loc_ABE64A: VCallAd Control_ID_CodiLocaTxt
  loc_ABE64D: FStAdFunc var_88
  loc_ABE650: FLdPr var_88
  loc_ABE653:  = Me.Enabled
  loc_ABE658: FLdI2 var_8A
  loc_ABE65B: LitI2_Byte &HFF
  loc_ABE65D: EqI2
  loc_ABE65E: FFree1Ad var_88
  loc_ABE661: BranchF loc_ABE73B
  loc_ABE664: FLdRfVar var_90
  loc_ABE667: FLdPr Me
  loc_ABE66A: VCallAd Control_ID_CodiLocaTxt
  loc_ABE66D: FStAdFunc var_88
  loc_ABE670: FLdPr var_88
  loc_ABE673:  = Me.Text
  loc_ABE678: LitI2_Byte 0
  loc_ABE67A: LitI2_Byte 0
  loc_ABE67C: ILdRf var_90
  loc_ABE67F: LitStr "codigo"
  loc_ABE682: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABE687: FStStrNoPop var_94
  loc_ABE68A: FLdPr Me
  loc_ABE68D: MemStStrCopy
  loc_ABE691: FFreeStr var_90 = ""
  loc_ABE698: FFree1Ad var_88
  loc_ABE69B: FLdPr Me
  loc_ABE69E: MemLdStr global_60
  loc_ABE6A1: LitStr vbNullString
  loc_ABE6A4: NeStr
  loc_ABE6A6: BranchF loc_ABE6CC
  loc_ABE6A9: FLdPr Me
  loc_ABE6AC: MemLdStr global_60
  loc_ABE6AF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE6B4: FLdPr Me
  loc_ABE6B7: VCallAd Control_ID_CodiLocaTxt
  loc_ABE6BA: CVarAd
  loc_ABE6BE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE6C3: FFree1Var var_A4 = ""
  loc_ABE6C6: LitI2_Byte &HFF
  loc_ABE6C8: IStI2 Cancel
  loc_ABE6CB: ExitProcHresult
  loc_ABE6CC: FLdRfVar var_94
  loc_ABE6CF: FLdRfVar var_90
  loc_ABE6D2: FLdPr Me
  loc_ABE6D5: VCallAd Control_ID_CodiLocaTxt
  loc_ABE6D8: FStAdFunc var_88
  loc_ABE6DB: FLdPr var_88
  loc_ABE6DE:  = Me.Text
  loc_ABE6E3: ILdRf var_90
  loc_ABE6E6: CI2Str
  loc_ABE6E8: FLdPr Me
  loc_ABE6EB: MemLdRfVar from_stack_1.global_52
  loc_ABE6EE: NewIfNullPr clslocalidad
  loc_ABE6F1: from_stack_2v = clslocalidad.ValidaClave(from_stack_1v)
  loc_ABE6F6: ILdRf var_94
  loc_ABE6F9: FLdPr Me
  loc_ABE6FC: MemStStrCopy
  loc_ABE700: FFreeStr var_90 = ""
  loc_ABE707: FFree1Ad var_88
  loc_ABE70A: FLdPr Me
  loc_ABE70D: MemLdStr global_60
  loc_ABE710: LitStr vbNullString
  loc_ABE713: NeStr
  loc_ABE715: BranchF loc_ABE73B
  loc_ABE718: FLdPr Me
  loc_ABE71B: MemLdStr global_60
  loc_ABE71E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE723: FLdPr Me
  loc_ABE726: VCallAd Control_ID_CodiLocaTxt
  loc_ABE729: CVarAd
  loc_ABE72D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE732: FFree1Var var_A4 = ""
  loc_ABE735: LitI2_Byte &HFF
  loc_ABE737: IStI2 Cancel
  loc_ABE73A: ExitProcHresult
  loc_ABE73B: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA7654
  'Data Table: 44EAE8
  loc_AA7584: LitVarStr var_94, vbNullString
  loc_AA7589: PopAdLdVar
  loc_AA758A: FLdPr Me
  loc_AA758D: VCallAd Control_ID_FiltroMsk
  loc_AA7590: FStAdFunc var_A8
  loc_AA7593: FLdPr var_A8
  loc_AA7596: LateIdSt
  loc_AA759B: FFree1Ad var_A8
  loc_AA759E: LitVarStr var_94, vbNullString
  loc_AA75A3: PopAdLdVar
  loc_AA75A4: FLdPr Me
  loc_AA75A7: VCallAd Control_ID_FiltroMsk
  loc_AA75AA: FStAdFunc var_A8
  loc_AA75AD: FLdPr var_A8
  loc_AA75B0: LateIdSt
  loc_AA75B5: FFree1Ad var_A8
  loc_AA75B8: FLdRfVar var_AA
  loc_AA75BB: FLdPr Me
  loc_AA75BE: VCallAd Control_ID_FiltroCbo
  loc_AA75C1: FStAdFunc var_A8
  loc_AA75C4: FLdPr var_A8
  loc_AA75C7:  = Me.ListIndex
  loc_AA75CC: FLdI2 var_AA
  loc_AA75CF: FStI2 var_AC
  loc_AA75D2: FFree1Ad var_A8
  loc_AA75D5: FLdI2 var_AC
  loc_AA75D8: LitI2_Byte 0
  loc_AA75DA: EqI2
  loc_AA75DB: BranchF loc_AA7615
  loc_AA75DE: LitVarStr var_94, "###"
  loc_AA75E3: PopAdLdVar
  loc_AA75E4: FLdPr Me
  loc_AA75E7: VCallAd Control_ID_FiltroMsk
  loc_AA75EA: FStAdFunc var_A8
  loc_AA75ED: FLdPr var_A8
  loc_AA75F0: LateIdSt
  loc_AA75F5: FFree1Ad var_A8
  loc_AA75F8: LitStr "CodiLoca"
  loc_AA75FB: FStStrCopy var_B0
  loc_AA75FE: FLdRfVar var_B0
  loc_AA7601: FLdPr Me
  loc_AA7604: MemLdRfVar from_stack_1.global_52
  loc_AA7607: NewIfNullPr clslocalidad
  loc_AA760A: Call clslocalidad.Sort(from_stack_1v)
  loc_AA760F: FFree1Str var_B0
  loc_AA7612: Branch loc_AA7652
  loc_AA7615: FLdI2 var_AC
  loc_AA7618: LitI2_Byte 1
  loc_AA761A: EqI2
  loc_AA761B: BranchF loc_AA7652
  loc_AA761E: LitVarStr var_94, vbNullString
  loc_AA7623: PopAdLdVar
  loc_AA7624: FLdPr Me
  loc_AA7627: VCallAd Control_ID_FiltroMsk
  loc_AA762A: FStAdFunc var_A8
  loc_AA762D: FLdPr var_A8
  loc_AA7630: LateIdSt
  loc_AA7635: FFree1Ad var_A8
  loc_AA7638: LitStr "DetaLoca"
  loc_AA763B: FStStrCopy var_B0
  loc_AA763E: FLdRfVar var_B0
  loc_AA7641: FLdPr Me
  loc_AA7644: MemLdRfVar from_stack_1.global_52
  loc_AA7647: NewIfNullPr clslocalidad
  loc_AA764A: Call clslocalidad.Sort(from_stack_1v)
  loc_AA764F: FFree1Str var_B0
  loc_AA7652: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C3020
  'Data Table: 44EAE8
  loc_9C300C: FLdPr Me
  loc_9C300F: VCallAd Control_ID_FiltroMsk
  loc_9C3012: CVarAd
  loc_9C3016: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C301B: FFree1Var var_94 = ""
  loc_9C301E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B0BE2C
  'Data Table: 44EAE8
  loc_B0BC0C: ILdRf Me
  loc_B0BC0F: CastAd
  loc_B0BC12: FStAdFunc var_88
  loc_B0BC15: FLdRfVar var_88
  loc_B0BC18: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B0BC1D: FFree1Ad var_88
  loc_B0BC20: FLdPr Me
  loc_B0BC23: VCallAd Control_ID_FiltroMsk
  loc_B0BC26: FStAdFunc var_88
  loc_B0BC29: FLdPr var_88
  loc_B0BC2C: LateIdLdVar var_98 DispID_20 0
  loc_B0BC33: CStrVarTmp
  loc_B0BC34: CVarStr var_A8
  loc_B0BC37: FLdRfVar var_B8
  loc_B0BC3A: ImpAdCallFPR4  = Trim()
  loc_B0BC3F: FLdRfVar var_B8
  loc_B0BC42: LitVarStr var_C8, vbNullString
  loc_B0BC47: HardType
  loc_B0BC48: NeVarBool
  loc_B0BC4A: FFree1Ad var_88
  loc_B0BC4D: FFreeVar var_98 = "": var_A8 = ""
  loc_B0BC56: BranchF loc_B0BDAA
  loc_B0BC59: FLdRfVar var_DA
  loc_B0BC5C: FLdPr Me
  loc_B0BC5F: VCallAd Control_ID_FiltroCbo
  loc_B0BC62: FStAdFunc var_88
  loc_B0BC65: FLdPr var_88
  loc_B0BC68:  = Me.ListIndex
  loc_B0BC6D: FLdI2 var_DA
  loc_B0BC70: LitI2_Byte 0
  loc_B0BC72: EqI2
  loc_B0BC73: FFree1Ad var_88
  loc_B0BC76: BranchF loc_B0BCFD
  loc_B0BC79: LitStr "CodiLoca >= "
  loc_B0BC7C: FLdPr Me
  loc_B0BC7F: VCallAd Control_ID_FiltroMsk
  loc_B0BC82: FStAdFunc var_88
  loc_B0BC85: FLdPr var_88
  loc_B0BC88: LateIdLdVar var_98 DispID_22 0
  loc_B0BC8F: CStrVarTmp
  loc_B0BC90: FStStrNoPop var_E0
  loc_B0BC93: ConcatStr
  loc_B0BC94: PopTmpLdAdStr
  loc_B0BC98: FLdPr Me
  loc_B0BC9B: MemLdRfVar from_stack_1.global_52
  loc_B0BC9E: NewIfNullPr clslocalidad
  loc_B0BCA1: Call clslocalidad.Filter(from_stack_1v)
  loc_B0BCA6: FFreeStr var_E0 = ""
  loc_B0BCAD: FFree1Ad var_88
  loc_B0BCB0: FFree1Var var_98 = ""
  loc_B0BCB3: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B0BCB8: FLdPr Me
  loc_B0BCBB: VCallAd Control_ID_FiltroMsk
  loc_B0BCBE: FStAdFunc var_88
  loc_B0BCC1: FLdPr var_88
  loc_B0BCC4: LateIdLdVar var_98 DispID_22 0
  loc_B0BCCB: CStrVarTmp
  loc_B0BCCC: CVarStr var_A8
  loc_B0BCCF: FLdRfVar var_B8
  loc_B0BCD2: ImpAdCallFPR4  = Trim()
  loc_B0BCD7: FLdRfVar var_B8
  loc_B0BCDA: ConcatVar var_D8
  loc_B0BCDE: CStrVarTmp
  loc_B0BCDF: FStStrNoPop var_E0
  loc_B0BCE2: FLdPr Me
  loc_B0BCE5: MemStStrCopy
  loc_B0BCE9: FFree1Str var_E0
  loc_B0BCEC: FFree1Ad var_88
  loc_B0BCEF: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0BCFA: Branch loc_B0BDA7
  loc_B0BCFD: FLdRfVar var_DA
  loc_B0BD00: FLdPr Me
  loc_B0BD03: VCallAd Control_ID_FiltroCbo
  loc_B0BD06: FStAdFunc var_88
  loc_B0BD09: FLdPr var_88
  loc_B0BD0C:  = Me.ListIndex
  loc_B0BD11: FLdI2 var_DA
  loc_B0BD14: LitI2_Byte 1
  loc_B0BD16: EqI2
  loc_B0BD17: FFree1Ad var_88
  loc_B0BD1A: BranchF loc_B0BDA7
  loc_B0BD1D: LitStr "DetaLoca LIKE '" & Chr(37)
  loc_B0BD20: FLdPr Me
  loc_B0BD23: VCallAd Control_ID_FiltroMsk
  loc_B0BD26: FStAdFunc var_88
  loc_B0BD29: FLdPr var_88
  loc_B0BD2C: LateIdLdVar var_98 DispID_22 0
  loc_B0BD33: CStrVarTmp
  loc_B0BD34: FStStrNoPop var_E0
  loc_B0BD37: ConcatStr
  loc_B0BD38: FStStrNoPop var_E4
  loc_B0BD3B: LitStr Chr(37) & "'"
  loc_B0BD3E: ConcatStr
  loc_B0BD3F: PopTmpLdAdStr
  loc_B0BD43: FLdPr Me
  loc_B0BD46: MemLdRfVar from_stack_1.global_52
  loc_B0BD49: NewIfNullPr clslocalidad
  loc_B0BD4C: Call clslocalidad.Filter(from_stack_1v)
  loc_B0BD51: FFreeStr var_E0 = "": var_E4 = ""
  loc_B0BD5A: FFree1Ad var_88
  loc_B0BD5D: FFree1Var var_98 = ""
  loc_B0BD60: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B0BD65: FLdPr Me
  loc_B0BD68: VCallAd Control_ID_FiltroMsk
  loc_B0BD6B: FStAdFunc var_88
  loc_B0BD6E: FLdPr var_88
  loc_B0BD71: LateIdLdVar var_98 DispID_22 0
  loc_B0BD78: CStrVarTmp
  loc_B0BD79: CVarStr var_A8
  loc_B0BD7C: FLdRfVar var_B8
  loc_B0BD7F: ImpAdCallFPR4  = Trim()
  loc_B0BD84: FLdRfVar var_B8
  loc_B0BD87: ConcatVar var_D8
  loc_B0BD8B: CStrVarTmp
  loc_B0BD8C: FStStrNoPop var_E0
  loc_B0BD8F: FLdPr Me
  loc_B0BD92: MemStStrCopy
  loc_B0BD96: FFree1Str var_E0
  loc_B0BD99: FFree1Ad var_88
  loc_B0BD9C: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0BDA7: Branch loc_B0BDCE
  loc_B0BDAA: LitStr vbNullString
  loc_B0BDAD: FStStrCopy var_E0
  loc_B0BDB0: FLdRfVar var_E0
  loc_B0BDB3: FLdPr Me
  loc_B0BDB6: MemLdRfVar from_stack_1.global_52
  loc_B0BDB9: NewIfNullPr clslocalidad
  loc_B0BDBC: Call clslocalidad.Filter(from_stack_1v)
  loc_B0BDC1: FFree1Str var_E0
  loc_B0BDC4: LitStr vbNullString
  loc_B0BDC7: FLdPr Me
  loc_B0BDCA: MemStStrCopy
  loc_B0BDCE: FLdRfVar var_EC
  loc_B0BDD1: FLdPr Me
  loc_B0BDD4: MemLdRfVar from_stack_1.global_52
  loc_B0BDD7: NewIfNullPr clslocalidad
  loc_B0BDDA: from_stack_1 = clslocalidad.RecordCount
  loc_B0BDDF: ILdRf var_EC
  loc_B0BDE2: LitI4 0
  loc_B0BDE7: GtI4
  loc_B0BDE8: BranchF loc_B0BDF3
  loc_B0BDEB: Call EnlazaTodo()
  loc_B0BDF0: Branch loc_B0BE07
  loc_B0BDF3: ILdRf Me
  loc_B0BDF6: CastAd
  loc_B0BDF9: FStAdFunc var_88
  loc_B0BDFC: FLdRfVar var_88
  loc_B0BDFF: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B0BE04: FFree1Ad var_88
  loc_B0BE07: FLdPr Me
  loc_B0BE0A: VCallAd Control_ID_dgdABMS
  loc_B0BE0D: FStAdFunc var_F0
  loc_B0BE10: FLdPr Me
  loc_B0BE13: MemLdStr global_64
  loc_B0BE16: FLdZeroAd var_F0
  loc_B0BE19: FStAdFunc var_88
  loc_B0BE1C: FLdRfVar var_88
  loc_B0BE1F: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B0BE24: FFreeAd var_88 = ""
  loc_B0BE2B: ExitProcHresult
End Sub

Private Sub CodiPostTxt_GotFocus() '9C2D08
  'Data Table: 44EAE8
  loc_9C2CF4: FLdPr Me
  loc_9C2CF7: VCallAd Control_ID_CodiPostTxt
  loc_9C2CFA: CVarAd
  loc_9C2CFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2D03: FFree1Var var_94 = ""
  loc_9C2D06: ExitProcHresult
End Sub

Private Sub CodiPostTxt_Validate(Cancel As Boolean) 'A901A4
  'Data Table: 44EAE8
  loc_A90104: FLdRfVar var_8A
  loc_A90107: FLdPr Me
  loc_A9010A: VCallAd Control_ID_cmdCancelar
  loc_A9010D: FStAdFunc var_88
  loc_A90110: FLdPr var_88
  loc_A90113:  = Me.Value
  loc_A90118: FLdI2 var_8A
  loc_A9011B: NotI4
  loc_A9011C: FLdRfVar var_92
  loc_A9011F: FLdPr Me
  loc_A90122: VCallAd Control_ID_CodiPostTxt
  loc_A90125: FStAdFunc var_90
  loc_A90128: FLdPr var_90
  loc_A9012B:  = Me.Enabled
  loc_A90130: FLdI2 var_92
  loc_A90133: AndI4
  loc_A90134: FFreeAd var_88 = ""
  loc_A9013B: BranchF loc_A901A1
  loc_A9013E: FLdRfVar var_98
  loc_A90141: FLdPr Me
  loc_A90144: VCallAd Control_ID_CodiPostTxt
  loc_A90147: FStAdFunc var_88
  loc_A9014A: FLdPr var_88
  loc_A9014D:  = Me.Text
  loc_A90152: ILdRf var_98
  loc_A90155: LitStr "Código Postal"
  loc_A90158: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A9015D: FStStrNoPop var_9C
  loc_A90160: FLdPr Me
  loc_A90163: MemStStrCopy
  loc_A90167: FFreeStr var_98 = ""
  loc_A9016E: FFree1Ad var_88
  loc_A90171: FLdPr Me
  loc_A90174: MemLdStr global_60
  loc_A90177: LitStr vbNullString
  loc_A9017A: NeStr
  loc_A9017C: BranchF loc_A901A1
  loc_A9017F: FLdPr Me
  loc_A90182: MemLdStr global_60
  loc_A90185: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9018A: FLdPr Me
  loc_A9018D: VCallAd Control_ID_CodiPostTxt
  loc_A90190: CVarAd
  loc_A90194: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90199: FFree1Var var_AC = ""
  loc_A9019C: LitI2_Byte &HFF
  loc_A9019E: IStI2 Cancel
  loc_A901A1: ExitProcHresult
End Sub

Private Sub DetaLocaTxt_GotFocus() '9C29A8
  'Data Table: 44EAE8
  loc_9C2994: FLdPr Me
  loc_9C2997: VCallAd Control_ID_DetaLocaTxt
  loc_9C299A: CVarAd
  loc_9C299E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C29A3: FFree1Var var_94 = ""
  loc_9C29A6: ExitProcHresult
End Sub

Private Sub DetaLocaTxt_Validate(Cancel As Boolean) 'A90288
  'Data Table: 44EAE8
  loc_A901E8: FLdRfVar var_8A
  loc_A901EB: FLdPr Me
  loc_A901EE: VCallAd Control_ID_cmdCancelar
  loc_A901F1: FStAdFunc var_88
  loc_A901F4: FLdPr var_88
  loc_A901F7:  = Me.Value
  loc_A901FC: FLdI2 var_8A
  loc_A901FF: NotI4
  loc_A90200: FLdRfVar var_92
  loc_A90203: FLdPr Me
  loc_A90206: VCallAd Control_ID_DetaLocaTxt
  loc_A90209: FStAdFunc var_90
  loc_A9020C: FLdPr var_90
  loc_A9020F:  = Me.Enabled
  loc_A90214: FLdI2 var_92
  loc_A90217: AndI4
  loc_A90218: FFreeAd var_88 = ""
  loc_A9021F: BranchF loc_A90285
  loc_A90222: FLdRfVar var_98
  loc_A90225: FLdPr Me
  loc_A90228: VCallAd Control_ID_DetaLocaTxt
  loc_A9022B: FStAdFunc var_88
  loc_A9022E: FLdPr var_88
  loc_A90231:  = Me.Text
  loc_A90236: ILdRf var_98
  loc_A90239: LitStr "La Localidad"
  loc_A9023C: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90241: FStStrNoPop var_9C
  loc_A90244: FLdPr Me
  loc_A90247: MemStStrCopy
  loc_A9024B: FFreeStr var_98 = ""
  loc_A90252: FFree1Ad var_88
  loc_A90255: FLdPr Me
  loc_A90258: MemLdStr global_60
  loc_A9025B: LitStr vbNullString
  loc_A9025E: NeStr
  loc_A90260: BranchF loc_A90285
  loc_A90263: FLdPr Me
  loc_A90266: MemLdStr global_60
  loc_A90269: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9026E: FLdPr Me
  loc_A90271: VCallAd Control_ID_DetaLocaTxt
  loc_A90274: CVarAd
  loc_A90278: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9027D: FFree1Var var_AC = ""
  loc_A90280: LitI2_Byte &HFF
  loc_A90282: IStI2 Cancel
  loc_A90285: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A8599C
  'Data Table: 44EAE8
  loc_A8591C: LitI4 0
  loc_A85921: LitI4 3
  loc_A85926: FLdRfVar var_88
  loc_A85929: Redim
  loc_A85933: FLdPr Me
  loc_A85936: MemLdRfVar from_stack_1.global_52
  loc_A85939: NewIfNullAd
  loc_A8593C: FStAd var_8C 
  loc_A85940: FLdRfVar var_8C
  loc_A85943: CVarRef
  loc_A85948: ParmAry1St
  loc_A8594E: FLdPr Me
  loc_A85951: VCallAd Control_ID_CodiLocaTxt
  loc_A85954: CVarAd
  loc_A85958: ParmAry1St
  loc_A8595E: FLdPr Me
  loc_A85961: VCallAd Control_ID_CodiPostTxt
  loc_A85964: CVarAd
  loc_A85968: ParmAry1St
  loc_A8596E: FLdPr Me
  loc_A85971: VCallAd Control_ID_DetaLocaTxt
  loc_A85974: CVarAd
  loc_A85978: ParmAry1St
  loc_A8597E: FLdRfVar var_88
  loc_A85981: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A85986: ILdRf var_8C
  loc_A85989: CastAd
  loc_A8598C: FLdPr Me
  loc_A8598F: MemStAdFunc
  loc_A85993: FLdRfVar var_88
  loc_A85996: Erase
  loc_A85997: FFree1Ad var_8C
  loc_A8599A: ExitProcHresult
End Sub
