VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmContracargos
  Caption = "Contracargos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 10704
  ClientHeight = 6264
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 2880
    Width = 2292
    Height = 345
    TabIndex = 9
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
  Begin VB.CommandButton ProcesarCmd
    Caption = "Procesar"
    Left = 3600
    Top = 4800
    Width = 1812
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
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 720
    Width = 975
    Height = 855
    TabIndex = 14
    Picture = "frmContracargos.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox PeriBoleMsk
    Left = 3480
    Top = 960
    Width = 732
    Height = 360
    TabIndex = 1
    OleObjectBlob = "frmContracargos.frx":0252
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 480
    Top = 4080
    Width = 8772
    Height = 492
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "frmContracargos.frx":02E2
  End
  Begin MSMask.MaskEdBox NumeBoleMsk
    Left = 3480
    Top = 1440
    Width = 1212
    Height = 360
    TabIndex = 3
    OleObjectBlob = "frmContracargos.frx":034A
  End
  Begin MSMask.MaskEdBox IdEpagosTxt
    Left = 3480
    Top = 2400
    Width = 1452
    Height = 360
    TabIndex = 7
    OleObjectBlob = "frmContracargos.frx":03E2
  End
  Begin MSMask.MaskEdBox NumeContTxt
    Left = 3480
    Top = 3480
    Width = 1212
    Height = 360
    TabIndex = 11
    OleObjectBlob = "frmContracargos.frx":047C
  End
  Begin VB.Label Label6
    Caption = "Ente Recaudador:"
    Left = 1440
    Top = 1920
    Width = 1956
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
  Begin VB.Label DetaEnreLbl
    Left = 3480
    Top = 1920
    Width = 4452
    Height = 348
    TabIndex = 5
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
    Caption = "Nro de Contracargo:"
    Left = 1320
    Top = 3480
    Width = 2124
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
  Begin VB.Label Label4
    Caption = "Id:"
    Left = 3120
    Top = 2400
    Width = 264
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
  Begin VB.Label Label3
    Caption = "Boleto Nº:"
    Left = 2280
    Top = 1440
    Width = 1068
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
  Begin VB.Label Label1
    Caption = "Expediente:"
    Left = 2160
    Top = 2880
    Width = 1248
    Height = 300
    TabIndex = 8
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
    Caption = "Periodo:"
    Left = 2520
    Top = 960
    Width = 876
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
End

Attribute VB_Name = "frmContracargos"


Private Sub NumeContTxt_UnknownEvent_0 '9BD740
  'Data Table: 453A5C
  loc_9BD72C: FLdPr Me
  loc_9BD72F: VCallAd Control_ID_NumeContTxt
  loc_9BD732: CVarAd
  loc_9BD736: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD73B: FFree1Var var_94 = ""
  loc_9BD73E: ExitProcHresult
End Sub

Private Sub NumeContTxt_UnknownEvent_8 'A68A90
  'Data Table: 453A5C
  loc_A68A34: FLdPr Me
  loc_A68A37: VCallAd Control_ID_NumeContTxt
  loc_A68A3A: FStAdFunc var_88
  loc_A68A3D: FLdPr var_88
  loc_A68A40: LateIdLdVar var_98 DispID_22 0
  loc_A68A47: CStrVarTmp
  loc_A68A48: FStStrNoPop var_9C
  loc_A68A4B: CI4Str
  loc_A68A4C: ImpAdCallI2 Proc_18_128_A64B08()
  loc_A68A51: CVarStr var_BC
  loc_A68A54: FStVar var_AC
  loc_A68A58: FFree1Str var_9C
  loc_A68A5B: FFree1Ad var_88
  loc_A68A5E: FFree1Var var_98 = ""
  loc_A68A61: FLdPr Me
  loc_A68A64: VCallAd Control_ID_NumeContTxt
  loc_A68A67: FStAdFuncNoPop
  loc_A68A6A: CastAd
  loc_A68A6D: FStAdFunc var_C0
  loc_A68A70: FLdRfVar var_C0
  loc_A68A73: FLdRfVar var_AC
  loc_A68A76: CStrVarVal var_9C
  loc_A68A7A: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A68A7F: IStI2 Cancel
  loc_A68A82: FFree1Str var_9C
  loc_A68A85: FFreeAd var_88 = ""
  loc_A68A8C: ExitProcHresult
End Sub

Private Sub IdEpagosTxt_UnknownEvent_0 '9BD6B0
  'Data Table: 453A5C
  loc_9BD69C: FLdPr Me
  loc_9BD69F: VCallAd Control_ID_IdEpagosTxt
  loc_9BD6A2: CVarAd
  loc_9BD6A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD6AB: FFree1Var var_94 = ""
  loc_9BD6AE: ExitProcHresult
End Sub

Private Sub IdEpagosTxt_UnknownEvent_8 'A684CC
  'Data Table: 453A5C
  loc_A68470: FLdPr Me
  loc_A68473: VCallAd Control_ID_IdEpagosTxt
  loc_A68476: FStAdFunc var_88
  loc_A68479: FLdPr var_88
  loc_A6847C: LateIdLdVar var_98 DispID_22 0
  loc_A68483: CStrVarTmp
  loc_A68484: FStStrNoPop var_9C
  loc_A68487: LitStr "ID E-pagos"
  loc_A6848A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A6848F: CVarStr var_BC
  loc_A68492: FStVar var_AC
  loc_A68496: FFree1Str var_9C
  loc_A68499: FFree1Ad var_88
  loc_A6849C: FFree1Var var_98 = ""
  loc_A6849F: FLdPr Me
  loc_A684A2: VCallAd Control_ID_IdEpagosTxt
  loc_A684A5: FStAdFuncNoPop
  loc_A684A8: CastAd
  loc_A684AB: FStAdFunc var_C0
  loc_A684AE: FLdRfVar var_C0
  loc_A684B1: FLdRfVar var_AC
  loc_A684B4: CStrVarVal var_9C
  loc_A684B8: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A684BD: IStI2 Cancel
  loc_A684C0: FFree1Str var_9C
  loc_A684C3: FFreeAd var_88 = ""
  loc_A684CA: ExitProcHresult
End Sub

Private Sub ProcesarCmd_Click() 'B87954
  'Data Table: 453A5C
  loc_B87454: LitI2_Byte 0
  loc_B87456: PopTmpLdAd2 var_86
  loc_B87459: Call NumeBoleMsk_UnknownEvent_8()
  loc_B8745E: FLdRfVar var_98
  loc_B87461: LitVarStr var_A8, vbNullString
  loc_B87466: HardType
  loc_B87467: NeVarBool
  loc_B87469: BranchF loc_B8746D
  loc_B8746C: ExitProcHresult
  loc_B8746D: LitI2_Byte 0
  loc_B8746F: PopTmpLdAd2 var_86
  loc_B87472: Call PeriBoleMsk_UnknownEvent_8()
  loc_B87477: FLdRfVar var_98
  loc_B8747A: LitVarStr var_A8, vbNullString
  loc_B8747F: HardType
  loc_B87480: NeVarBool
  loc_B87482: BranchF loc_B87486
  loc_B87485: ExitProcHresult
  loc_B87486: LitI2_Byte 0
  loc_B87488: PopTmpLdAd2 var_86
  loc_B8748B: Call ExpeCtctTxt_Validate(from_stack_1v)
  loc_B87490: FLdRfVar var_98
  loc_B87493: LitVarStr var_A8, vbNullString
  loc_B87498: HardType
  loc_B87499: NeVarBool
  loc_B8749B: BranchF loc_B8749F
  loc_B8749E: ExitProcHresult
  loc_B8749F: LitI2_Byte 0
  loc_B874A1: PopTmpLdAd2 var_86
  loc_B874A4: Call IdEpagosTxt_UnknownEvent_8()
  loc_B874A9: FLdRfVar var_98
  loc_B874AC: LitVarStr var_A8, vbNullString
  loc_B874B1: HardType
  loc_B874B2: NeVarBool
  loc_B874B4: BranchF loc_B874B8
  loc_B874B7: ExitProcHresult
  loc_B874B8: LitI2_Byte 0
  loc_B874BA: PopTmpLdAd2 var_86
  loc_B874BD: Call NumeContTxt_UnknownEvent_8()
  loc_B874C2: FLdRfVar var_98
  loc_B874C5: LitVarStr var_A8, vbNullString
  loc_B874CA: HardType
  loc_B874CB: NeVarBool
  loc_B874CD: BranchF loc_B874D1
  loc_B874D0: ExitProcHresult
  loc_B874D1: LitI2_Byte &HB
  loc_B874D3: FLdPr Me
  loc_B874D6: Me.MousePointer = from_stack_1
  loc_B874DB: LitI4 0
  loc_B874E0: LitI4 6
  loc_B874E5: FLdRfVar var_BC
  loc_B874E8: Redim
  loc_B874F2: FLdPr Me
  loc_B874F5: VCallAd Control_ID_cmdSalir
  loc_B874F8: CVarAd
  loc_B874FC: ParmAry1St
  loc_B87502: FLdPr Me
  loc_B87505: VCallAd Control_ID_PeriBoleMsk
  loc_B87508: CVarAd
  loc_B8750C: ParmAry1St
  loc_B87512: FLdPr Me
  loc_B87515: VCallAd Control_ID_NumeBoleMsk
  loc_B87518: CVarAd
  loc_B8751C: ParmAry1St
  loc_B87522: FLdPr Me
  loc_B87525: VCallAd Control_ID_ExpeCtctTxt
  loc_B87528: CVarAd
  loc_B8752C: ParmAry1St
  loc_B87532: FLdPr Me
  loc_B87535: VCallAd Control_ID_IdEpagosTxt
  loc_B87538: CVarAd
  loc_B8753C: ParmAry1St
  loc_B87542: FLdPr Me
  loc_B87545: VCallAd Control_ID_NumeContTxt
  loc_B87548: CVarAd
  loc_B8754C: ParmAry1St
  loc_B87552: FLdPr Me
  loc_B87555: VCallAd Control_ID_ProcesarCmd
  loc_B87558: CVarAd
  loc_B8755C: ParmAry1St
  loc_B87562: FLdRfVar var_BC
  loc_B87565: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8756A: FLdRfVar var_BC
  loc_B8756D: Erase
  loc_B8756E: LitStr "SELECT * FROM boleto WHERE PeriBole = "
  loc_B87571: FLdPr Me
  loc_B87574: VCallAd Control_ID_PeriBoleMsk
  loc_B87577: FStAdFunc var_120
  loc_B8757A: FLdPr var_120
  loc_B8757D: LateIdLdVar var_B8 DispID_22 0
  loc_B87584: CStrVarTmp
  loc_B87585: FStStrNoPop var_124
  loc_B87588: ConcatStr
  loc_B87589: FStStrNoPop var_128
  loc_B8758C: LitStr " AND NumeBole = "
  loc_B8758F: ConcatStr
  loc_B87590: FStStrNoPop var_130
  loc_B87593: FLdPr Me
  loc_B87596: VCallAd Control_ID_NumeBoleMsk
  loc_B87599: FStAdFunc var_12C
  loc_B8759C: FLdPr var_12C
  loc_B8759F: LateIdLdVar var_CC DispID_22 0
  loc_B875A6: CStrVarTmp
  loc_B875A7: FStStrNoPop var_134
  loc_B875AA: ConcatStr
  loc_B875AB: FStStrNoPop var_138
  loc_B875AE: FLdPr Me
  loc_B875B1: MemLdRfVar from_stack_1.global_52
  loc_B875B4: NewIfNullPr clsejecutarprocesos
  loc_B875B7: Call clsejecutarprocesos.RedefineRS(from_stack_1v)
  loc_B875BC: FFreeStr var_124 = "": var_128 = "": var_130 = "": var_134 = ""
  loc_B875C9: FFreeAd var_120 = ""
  loc_B875D0: FFreeVar var_B8 = ""
  loc_B875D7: FLdRfVar var_13C
  loc_B875DA: FLdRfVar var_120
  loc_B875DD: FLdPr Me
  loc_B875E0: MemLdRfVar from_stack_1.global_52
  loc_B875E3: NewIfNullPr clsejecutarprocesos
  loc_B875E6: from_stack_1v = clsejecutarprocesos.RsFrmGet()
  loc_B875EB: FLdPr var_120
  loc_B875EE:  = Me.RecordCount
  loc_B875F3: ILdRf var_13C
  loc_B875F6: LitI4 0
  loc_B875FB: GtI4
  loc_B875FC: FFree1Ad var_120
  loc_B875FF: BranchF loc_B87889
  loc_B87602: FLdRfVar var_B8
  loc_B87605: FLdRfVar var_140
  loc_B87608: LitVarStr var_A8, "EstaBole"
  loc_B8760D: PopAdLdVar
  loc_B8760E: FLdRfVar var_12C
  loc_B87611: FLdRfVar var_120
  loc_B87614: FLdPr Me
  loc_B87617: MemLdRfVar from_stack_1.global_52
  loc_B8761A: NewIfNullPr clsejecutarprocesos
  loc_B8761D: from_stack_1v = clsejecutarprocesos.RsFrmGet()
  loc_B87622: FLdPr var_120
  loc_B87625:  = Me.Fields
  loc_B8762A: FLdPr var_12C
  loc_B8762D: from_stack_2 = Me.Item(from_stack_1)
  loc_B87632: FLdPr var_140
  loc_B87635:  = Me.Value
  loc_B8763A: FLdRfVar var_B8
  loc_B8763D: LitVarStr var_150, "Actualizado"
  loc_B87642: HardType
  loc_B87643: EqVarBool
  loc_B87645: FFreeAd var_120 = "": var_12C = ""
  loc_B8764E: FFree1Var var_B8 = ""
  loc_B87651: BranchF loc_B8786E
  loc_B87654: LitStr "SELECT * FROM contracargo WHERE PeriBole = "
  loc_B87657: FLdPr Me
  loc_B8765A: VCallAd Control_ID_PeriBoleMsk
  loc_B8765D: FStAdFunc var_120
  loc_B87660: FLdPr var_120
  loc_B87663: LateIdLdVar var_B8 DispID_22 0
  loc_B8766A: CStrVarTmp
  loc_B8766B: FStStrNoPop var_124
  loc_B8766E: ConcatStr
  loc_B8766F: FStStrNoPop var_128
  loc_B87672: LitStr " AND NumeBole = "
  loc_B87675: ConcatStr
  loc_B87676: FStStrNoPop var_130
  loc_B87679: FLdPr Me
  loc_B8767C: VCallAd Control_ID_NumeBoleMsk
  loc_B8767F: FStAdFunc var_12C
  loc_B87682: FLdPr var_12C
  loc_B87685: LateIdLdVar var_CC DispID_22 0
  loc_B8768C: CStrVarTmp
  loc_B8768D: FStStrNoPop var_134
  loc_B87690: ConcatStr
  loc_B87691: FStStrNoPop var_138
  loc_B87694: FLdPr Me
  loc_B87697: MemLdRfVar from_stack_1.global_52
  loc_B8769A: NewIfNullPr clsejecutarprocesos
  loc_B8769D: Call clsejecutarprocesos.RedefineRS(from_stack_1v)
  loc_B876A2: FFreeStr var_124 = "": var_128 = "": var_130 = "": var_134 = ""
  loc_B876AF: FFreeAd var_120 = ""
  loc_B876B6: FFreeVar var_B8 = ""
  loc_B876BD: FLdRfVar var_13C
  loc_B876C0: FLdRfVar var_120
  loc_B876C3: FLdPr Me
  loc_B876C6: MemLdRfVar from_stack_1.global_52
  loc_B876C9: NewIfNullPr clsejecutarprocesos
  loc_B876CC: from_stack_1v = clsejecutarprocesos.RsFrmGet()
  loc_B876D1: FLdPr var_120
  loc_B876D4:  = Me.RecordCount
  loc_B876D9: ILdRf var_13C
  loc_B876DC: LitI4 0
  loc_B876E1: EqI4
  loc_B876E2: FFree1Ad var_120
  loc_B876E5: BranchF loc_B87853
  loc_B876E8: FLdPr Me
  loc_B876EB: VCallAd Control_ID_PeriBoleMsk
  loc_B876EE: FStAdFunc var_120
  loc_B876F1: FLdPr var_120
  loc_B876F4: LateIdLdVar var_B8 DispID_22 0
  loc_B876FB: PopAd
  loc_B876FD: FLdPr Me
  loc_B87700: VCallAd Control_ID_NumeBoleMsk
  loc_B87703: FStAdFunc var_12C
  loc_B87706: FLdPr var_12C
  loc_B87709: LateIdLdVar var_CC DispID_22 0
  loc_B87710: PopAd
  loc_B87712: FLdRfVar var_124
  loc_B87715: FLdPr Me
  loc_B87718: VCallAd Control_ID_ExpeCtctTxt
  loc_B8771B: FStAdFunc var_140
  loc_B8771E: FLdPr var_140
  loc_B87721:  = Me.Text
  loc_B87726: FLdPr Me
  loc_B87729: VCallAd Control_ID_IdEpagosTxt
  loc_B8772C: FStAdFunc var_154
  loc_B8772F: FLdPr var_154
  loc_B87732: LateIdLdVar var_DC DispID_0 0
  loc_B87739: PopAd
  loc_B8773B: FLdPr Me
  loc_B8773E: VCallAd Control_ID_NumeContTxt
  loc_B87741: FStAdFunc var_158
  loc_B87744: FLdPr var_158
  loc_B87747: LateIdLdVar var_EC DispID_0 0
  loc_B8774E: CStrVarTmp
  loc_B8774F: FStStrNoPop var_138
  loc_B87752: CI4Str
  loc_B87753: FLdRfVar var_DC
  loc_B87756: CStrVarTmp
  loc_B87757: FStStrNoPop var_134
  loc_B8775A: CI4Str
  loc_B8775B: ILdRf var_124
  loc_B8775E: FLdRfVar var_CC
  loc_B87761: CStrVarTmp
  loc_B87762: FStStrNoPop var_130
  loc_B87765: CI4Str
  loc_B87766: FLdRfVar var_B8
  loc_B87769: CStrVarTmp
  loc_B8776A: FStStrNoPop var_128
  loc_B8776D: CI2Str
  loc_B8776F: FLdPr Me
  loc_B87772: MemLdRfVar from_stack_1.global_52
  loc_B87775: NewIfNullPr clsejecutarprocesos
  loc_B87778: Call clsejecutarprocesos.ContracargosRevertirBoleto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B8777D: FFreeStr var_128 = "": var_130 = "": var_124 = "": var_134 = ""
  loc_B8778A: FFreeAd var_120 = "": var_12C = "": var_140 = "": var_154 = ""
  loc_B87797: FFreeVar var_B8 = "": var_CC = "": var_DC = ""
  loc_B877A2: LitI2_Byte 0
  loc_B877A4: FLdPr Me
  loc_B877A7: Me.MousePointer = from_stack_1
  loc_B877AC: LitVar_FALSE
  loc_B877B0: PopAdLdVar
  loc_B877B1: FLdPr Me
  loc_B877B4: VCallAd Control_ID_ProgressBar
  loc_B877B7: FStAdFunc var_120
  loc_B877BA: FLdPr var_120
  loc_B877BD: LateIdSt
  loc_B877C2: FFree1Ad var_120
  loc_B877C5: LitVarStr var_A8, "Proceso Terminado"
  loc_B877CA: FStVarCopy
  loc_B877CE: FLdRfVar var_98
  loc_B877D1: CStrVarVal var_124
  loc_B877D5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B877DA: FFree1Str var_124
  loc_B877DD: LitI4 0
  loc_B877E2: LitI4 4
  loc_B877E7: FLdRfVar var_BC
  loc_B877EA: Redim
  loc_B877F4: FLdPr Me
  loc_B877F7: VCallAd Control_ID_cmdSalir
  loc_B877FA: CVarAd
  loc_B877FE: ParmAry1St
  loc_B87804: FLdPr Me
  loc_B87807: VCallAd Control_ID_PeriBoleMsk
  loc_B8780A: CVarAd
  loc_B8780E: ParmAry1St
  loc_B87814: FLdPr Me
  loc_B87817: VCallAd Control_ID_NumeBoleMsk
  loc_B8781A: CVarAd
  loc_B8781E: ParmAry1St
  loc_B87824: FLdPr Me
  loc_B87827: VCallAd Control_ID_ExpeCtctTxt
  loc_B8782A: CVarAd
  loc_B8782E: ParmAry1St
  loc_B87834: FLdPr Me
  loc_B87837: VCallAd Control_ID_ProcesarCmd
  loc_B8783A: CVarAd
  loc_B8783E: ParmAry1St
  loc_B87844: FLdRfVar var_BC
  loc_B87847: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8784C: FLdRfVar var_BC
  loc_B8784F: Erase
  loc_B87850: Branch loc_B8786B
  loc_B87853: LitVarStr var_A8, "El boleto ingresado YA FUE PROCESADO como contracargo.....Verifique"
  loc_B87858: FStVarCopy
  loc_B8785C: FLdRfVar var_98
  loc_B8785F: CStrVarVal var_124
  loc_B87863: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B87868: FFree1Str var_124
  loc_B8786B: Branch loc_B87886
  loc_B8786E: LitVarStr var_A8, "El boleto NO esta actualizado en la ctacte..."
  loc_B87873: FStVarCopy
  loc_B87877: FLdRfVar var_98
  loc_B8787A: CStrVarVal var_124
  loc_B8787E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B87883: FFree1Str var_124
  loc_B87886: Branch loc_B878A1
  loc_B87889: LitVarStr var_A8, "No existe el boleto, verifique..."
  loc_B8788E: FStVarCopy
  loc_B87892: FLdRfVar var_98
  loc_B87895: CStrVarVal var_124
  loc_B87899: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8789E: FFree1Str var_124
  loc_B878A1: LitI2_Byte 0
  loc_B878A3: FLdPr Me
  loc_B878A6: Me.MousePointer = from_stack_1
  loc_B878AB: LitI4 0
  loc_B878B0: LitI4 6
  loc_B878B5: FLdRfVar var_BC
  loc_B878B8: Redim
  loc_B878C2: FLdPr Me
  loc_B878C5: VCallAd Control_ID_cmdSalir
  loc_B878C8: CVarAd
  loc_B878CC: ParmAry1St
  loc_B878D2: FLdPr Me
  loc_B878D5: VCallAd Control_ID_PeriBoleMsk
  loc_B878D8: CVarAd
  loc_B878DC: ParmAry1St
  loc_B878E2: FLdPr Me
  loc_B878E5: VCallAd Control_ID_NumeBoleMsk
  loc_B878E8: CVarAd
  loc_B878EC: ParmAry1St
  loc_B878F2: FLdPr Me
  loc_B878F5: VCallAd Control_ID_ExpeCtctTxt
  loc_B878F8: CVarAd
  loc_B878FC: ParmAry1St
  loc_B87902: FLdPr Me
  loc_B87905: VCallAd Control_ID_IdEpagosTxt
  loc_B87908: CVarAd
  loc_B8790C: ParmAry1St
  loc_B87912: FLdPr Me
  loc_B87915: VCallAd Control_ID_NumeContTxt
  loc_B87918: CVarAd
  loc_B8791C: ParmAry1St
  loc_B87922: FLdPr Me
  loc_B87925: VCallAd Control_ID_ProcesarCmd
  loc_B87928: CVarAd
  loc_B8792C: ParmAry1St
  loc_B87932: FLdRfVar var_BC
  loc_B87935: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8793A: FLdRfVar var_BC
  loc_B8793D: Erase
  loc_B8793E: FLdPr Me
  loc_B87941: VCallAd Control_ID_PeriBoleMsk
  loc_B87944: CVarAd
  loc_B87948: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B8794D: FFree1Var var_B8 = ""
  loc_B87950: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9BD788
  'Data Table: 453A5C
  loc_9BD774: FLdPr Me
  loc_9BD777: VCallAd Control_ID_PeriBoleMsk
  loc_9BD77A: CVarAd
  loc_9BD77E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD783: FFree1Var var_94 = ""
  loc_9BD786: ExitProcHresult
End Sub

Private Function PeriBoleMsk_UnknownEvent_8(arg_C) 'A70CB0
  'Data Table: 453A5C
  loc_A70C4C: FLdPr Me
  loc_A70C4F: VCallAd Control_ID_PeriBoleMsk
  loc_A70C52: FStAdFunc var_88
  loc_A70C55: FLdPr var_88
  loc_A70C58: LateIdLdVar var_98 DispID_22 0
  loc_A70C5F: PopAd
  loc_A70C61: LitI2_Byte 0
  loc_A70C63: FLdRfVar var_98
  loc_A70C66: CStrVarTmp
  loc_A70C67: FStStrNoPop var_9C
  loc_A70C6A: LitStr "Periodo"
  loc_A70C6D: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A70C72: CVarStr var_BC
  loc_A70C75: FStVar var_AC
  loc_A70C79: FFree1Str var_9C
  loc_A70C7C: FFree1Ad var_88
  loc_A70C7F: FFree1Var var_98 = ""
  loc_A70C82: FLdPr Me
  loc_A70C85: VCallAd Control_ID_PeriBoleMsk
  loc_A70C88: FStAdFuncNoPop
  loc_A70C8B: CastAd
  loc_A70C8E: FStAdFunc var_C0
  loc_A70C91: FLdRfVar var_C0
  loc_A70C94: FLdRfVar var_AC
  loc_A70C97: CStrVarVal var_9C
  loc_A70C9B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A70CA0: IStI2 arg_C
  loc_A70CA3: FFree1Str var_9C
  loc_A70CA6: FFreeAd var_88 = ""
  loc_A70CAD: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '9CC69C
  'Data Table: 453A5C
  loc_9CC684: ILdRf Me
  loc_9CC687: FStAdNoPop
  loc_9CC68B: ImpAdLdRf MemVar_D9C5D8
  loc_9CC68E: NewIfNullPr Global
  loc_9CC691: Global.Unload from_stack_1
  loc_9CC696: FFree1Ad var_88
  loc_9CC699: ExitProcHresult
End Sub

Private Sub ExpeCtctTxt_GotFocus() '9BD668
  'Data Table: 453A5C
  loc_9BD654: FLdPr Me
  loc_9BD657: VCallAd Control_ID_ExpeCtctTxt
  loc_9BD65A: CVarAd
  loc_9BD65E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD663: FFree1Var var_94 = ""
  loc_9BD666: ExitProcHresult
End Sub

Private Sub ExpeCtctTxt_Validate(Cancel As Boolean) 'A5C9B8
  'Data Table: 453A5C
  loc_A5C960: FLdRfVar var_8C
  loc_A5C963: FLdPr Me
  loc_A5C966: VCallAd Control_ID_ExpeCtctTxt
  loc_A5C969: FStAdFunc var_88
  loc_A5C96C: FLdPr var_88
  loc_A5C96F:  = Me.Text
  loc_A5C974: ILdRf var_8C
  loc_A5C977: LitStr "Expediente"
  loc_A5C97A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A5C97F: CVarStr var_AC
  loc_A5C982: FStVar var_9C
  loc_A5C986: FFree1Str var_8C
  loc_A5C989: FFree1Ad var_88
  loc_A5C98C: FLdPr Me
  loc_A5C98F: VCallAd Control_ID_ExpeCtctTxt
  loc_A5C992: FStAdFuncNoPop
  loc_A5C995: CastAd
  loc_A5C998: FStAdFunc var_B0
  loc_A5C99B: FLdRfVar var_B0
  loc_A5C99E: FLdRfVar var_9C
  loc_A5C9A1: CStrVarVal var_8C
  loc_A5C9A5: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A5C9AA: IStI2 Cancel
  loc_A5C9AD: FFree1Str var_8C
  loc_A5C9B0: FFreeAd var_88 = ""
  loc_A5C9B7: ExitProcHresult
End Sub

Private Sub Form_Load() 'A91F14
  'Data Table: 453A5C
  loc_A91E68: ILdRf Me
  loc_A91E6B: CastAd
  loc_A91E6E: FStAdFunc var_88
  loc_A91E71: FLdRfVar var_88
  loc_A91E74: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A91E79: FFree1Ad var_88
  loc_A91E7C: ImpAdLdI2 MemVar_D93034
  loc_A91E7F: CStrUI1
  loc_A91E81: CVarStr var_98
  loc_A91E84: PopAdLdVar
  loc_A91E85: FLdPr Me
  loc_A91E88: VCallAd Control_ID_PeriBoleMsk
  loc_A91E8B: FStAdFunc var_88
  loc_A91E8E: FLdPr var_88
  loc_A91E91: LateIdSt
  loc_A91E96: FFree1Ad var_88
  loc_A91E99: FFree1Var var_98 = ""
  loc_A91E9C: LitI2_Byte 0
  loc_A91E9E: CStrUI1
  loc_A91EA0: CVarStr var_98
  loc_A91EA3: PopAdLdVar
  loc_A91EA4: FLdPr Me
  loc_A91EA7: VCallAd Control_ID_NumeBoleMsk
  loc_A91EAA: FStAdFunc var_88
  loc_A91EAD: FLdPr var_88
  loc_A91EB0: LateIdSt
  loc_A91EB5: FFree1Ad var_88
  loc_A91EB8: FFree1Var var_98 = ""
  loc_A91EBB: LitStr vbNullString
  loc_A91EBE: FLdPr Me
  loc_A91EC1: VCallAd Control_ID_ExpeCtctTxt
  loc_A91EC4: FStAdFunc var_88
  loc_A91EC7: FLdPr var_88
  loc_A91ECA: Me.Text = from_stack_1
  loc_A91ECF: FFree1Ad var_88
  loc_A91ED2: LitI2_Byte 0
  loc_A91ED4: CStrUI1
  loc_A91ED6: CVarStr var_98
  loc_A91ED9: PopAdLdVar
  loc_A91EDA: FLdPr Me
  loc_A91EDD: VCallAd Control_ID_IdEpagosTxt
  loc_A91EE0: FStAdFunc var_88
  loc_A91EE3: FLdPr var_88
  loc_A91EE6: LateIdSt
  loc_A91EEB: FFree1Ad var_88
  loc_A91EEE: FFree1Var var_98 = ""
  loc_A91EF1: LitI2_Byte 0
  loc_A91EF3: CStrUI1
  loc_A91EF5: CVarStr var_98
  loc_A91EF8: PopAdLdVar
  loc_A91EF9: FLdPr Me
  loc_A91EFC: VCallAd Control_ID_NumeContTxt
  loc_A91EFF: FStAdFunc var_88
  loc_A91F02: FLdPr var_88
  loc_A91F05: LateIdSt
  loc_A91F0A: FFree1Ad var_88
  loc_A91F0D: FFree1Var var_98 = ""
  loc_A91F10: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_0 '9C0440
  'Data Table: 453A5C
  loc_9C042C: FLdPr Me
  loc_9C042F: VCallAd Control_ID_NumeBoleMsk
  loc_9C0432: CVarAd
  loc_9C0436: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C043B: FFree1Var var_94 = ""
  loc_9C043E: ExitProcHresult
End Sub

Private Function NumeBoleMsk_UnknownEvent_8(arg_C) 'AFCCA0
  'Data Table: 453A5C
  loc_AFCAF4: FLdPr Me
  loc_AFCAF7: VCallAd Control_ID_NumeBoleMsk
  loc_AFCAFA: FStAdFunc var_88
  loc_AFCAFD: FLdPr var_88
  loc_AFCB00: LateIdLdVar var_98 DispID_22 0
  loc_AFCB07: PopAd
  loc_AFCB09: LitI2_Byte 0
  loc_AFCB0B: LitI2_Byte 0
  loc_AFCB0D: FLdRfVar var_98
  loc_AFCB10: CStrVarTmp
  loc_AFCB11: FStStrNoPop var_9C
  loc_AFCB14: LitStr "Número de Boleto"
  loc_AFCB17: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AFCB1C: CVarStr var_BC
  loc_AFCB1F: FStVar var_AC
  loc_AFCB23: FFree1Str var_9C
  loc_AFCB26: FFree1Ad var_88
  loc_AFCB29: FFree1Var var_98 = ""
  loc_AFCB2C: FLdPr Me
  loc_AFCB2F: VCallAd Control_ID_NumeBoleMsk
  loc_AFCB32: FStAdFuncNoPop
  loc_AFCB35: CastAd
  loc_AFCB38: FStAdFunc var_C0
  loc_AFCB3B: FLdRfVar var_C0
  loc_AFCB3E: FLdRfVar var_AC
  loc_AFCB41: CStrVarVal var_9C
  loc_AFCB45: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AFCB4A: IStI2 arg_C
  loc_AFCB4D: FFree1Str var_9C
  loc_AFCB50: FFreeAd var_88 = ""
  loc_AFCB57: LitStr "SELECT infogov.entereca.DetaEnre FROM boleto"
  loc_AFCB5A: LitStr " INNER JOIN pago ON  pago.PeriBole = boleto.PeriBole"
  loc_AFCB5D: ConcatStr
  loc_AFCB5E: FStStrNoPop var_9C
  loc_AFCB61: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_AFCB64: ConcatStr
  loc_AFCB65: FStStrNoPop var_C4
  loc_AFCB68: LitStr " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa"
  loc_AFCB6B: ConcatStr
  loc_AFCB6C: FStStrNoPop var_C8
  loc_AFCB6F: LitStr " AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_AFCB72: ConcatStr
  loc_AFCB73: FStStrNoPop var_CC
  loc_AFCB76: LitStr " INNER JOIN infogov.entereca ON infogov.entereca.CodiEnre = acrepago.CodiEnre"
  loc_AFCB79: ConcatStr
  loc_AFCB7A: FStStrNoPop var_D0
  loc_AFCB7D: LitStr " WHERE boleto.PeriBole = "
  loc_AFCB80: ConcatStr
  loc_AFCB81: FStStrNoPop var_D4
  loc_AFCB84: FLdPr Me
  loc_AFCB87: VCallAd Control_ID_PeriBoleMsk
  loc_AFCB8A: FStAdFunc var_88
  loc_AFCB8D: FLdPr var_88
  loc_AFCB90: LateIdLdVar var_98 DispID_22 0
  loc_AFCB97: CStrVarTmp
  loc_AFCB98: FStStrNoPop var_D8
  loc_AFCB9B: ConcatStr
  loc_AFCB9C: FStStrNoPop var_DC
  loc_AFCB9F: LitStr " AND boleto.numebole = "
  loc_AFCBA2: ConcatStr
  loc_AFCBA3: FStStrNoPop var_E0
  loc_AFCBA6: FLdPr Me
  loc_AFCBA9: VCallAd Control_ID_NumeBoleMsk
  loc_AFCBAC: FStAdFunc var_C0
  loc_AFCBAF: FLdPr var_C0
  loc_AFCBB2: LateIdLdVar var_BC DispID_22 0
  loc_AFCBB9: CStrVarTmp
  loc_AFCBBA: FStStrNoPop var_E4
  loc_AFCBBD: ConcatStr
  loc_AFCBBE: FStStrNoPop var_E8
  loc_AFCBC1: FLdPr Me
  loc_AFCBC4: MemLdRfVar from_stack_1.global_52
  loc_AFCBC7: NewIfNullPr clsejecutarprocesos
  loc_AFCBCA: Call clsejecutarprocesos.RedefineRS(from_stack_1v)
  loc_AFCBCF: FFreeStr var_9C = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_AFCBE8: FFreeAd var_88 = ""
  loc_AFCBEF: FFreeVar var_98 = ""
  loc_AFCBF6: FLdRfVar var_EC
  loc_AFCBF9: FLdRfVar var_88
  loc_AFCBFC: FLdPr Me
  loc_AFCBFF: MemLdRfVar from_stack_1.global_52
  loc_AFCC02: NewIfNullPr clsejecutarprocesos
  loc_AFCC05: from_stack_1v = clsejecutarprocesos.RsFrmGet()
  loc_AFCC0A: FLdPr var_88
  loc_AFCC0D:  = Me.RecordCount
  loc_AFCC12: ILdRf var_EC
  loc_AFCC15: LitI4 0
  loc_AFCC1A: GtI4
  loc_AFCC1B: FFree1Ad var_88
  loc_AFCC1E: BranchF loc_AFCC85
  loc_AFCC21: FLdRfVar var_98
  loc_AFCC24: FLdRfVar var_100
  loc_AFCC27: LitVarStr var_FC, "DetaEnre"
  loc_AFCC2C: PopAdLdVar
  loc_AFCC2D: FLdRfVar var_C0
  loc_AFCC30: FLdRfVar var_88
  loc_AFCC33: FLdPr Me
  loc_AFCC36: MemLdRfVar from_stack_1.global_52
  loc_AFCC39: NewIfNullPr clsejecutarprocesos
  loc_AFCC3C: from_stack_1v = clsejecutarprocesos.RsFrmGet()
  loc_AFCC41: FLdPr var_88
  loc_AFCC44:  = Me.Fields
  loc_AFCC49: FLdPr var_C0
  loc_AFCC4C: from_stack_2 = Me.Item(from_stack_1)
  loc_AFCC51: FLdPr var_100
  loc_AFCC54:  = Me.Value
  loc_AFCC59: FLdRfVar var_98
  loc_AFCC5C: CStrVarTmp
  loc_AFCC5D: FStStrNoPop var_9C
  loc_AFCC60: FLdPr Me
  loc_AFCC63: VCallAd Control_ID_DetaEnreLbl
  loc_AFCC66: FStAdFunc var_104
  loc_AFCC69: FLdPr var_104
  loc_AFCC6C: Me.Caption = from_stack_1
  loc_AFCC71: FFree1Str var_9C
  loc_AFCC74: FFreeAd var_88 = "": var_C0 = "": var_100 = ""
  loc_AFCC7F: FFree1Var var_98 = ""
  loc_AFCC82: Branch loc_AFCC9C
  loc_AFCC85: LitStr vbNullString
  loc_AFCC88: FLdPr Me
  loc_AFCC8B: VCallAd Control_ID_DetaEnreLbl
  loc_AFCC8E: FStAdFunc var_88
  loc_AFCC91: FLdPr var_88
  loc_AFCC94: Me.Caption = from_stack_1
  loc_AFCC99: FFree1Ad var_88
  loc_AFCC9C: ExitProcHresult
End Function
