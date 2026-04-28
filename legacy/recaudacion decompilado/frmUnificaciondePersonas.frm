VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmUnificaciondePersonas
  Caption = "Unificación de Personas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15252
  ClientHeight = 10152
  Begin VB.CommandButton BuscarPersonasCmd
    Caption = "Buscar Personas"
    Left = 4440
    Top = 480
    Width = 2775
    Height = 495
    TabIndex = 0
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
  Begin VB.TextBox CucuPersNuevoTxt
    ForeColor = &HFF0000&
    Left = 4800
    Top = 5880
    Width = 1900
    Height = 360
    TabIndex = 3
    MaxLength = 11
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
  Begin VB.CommandButton ConfirmarCmd
    Caption = "Guardar Cambios"
    Left = 4680
    Top = 6600
    Width = 2175
    Height = 525
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
  Begin VB.CommandButton SalirCmd
    Left = 11400
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 6
    Picture = "frmUnificaciondePersonas.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid PersonaFlex
    Left = 360
    Top = 1320
    Width = 13455
    Height = 4215
    TabIndex = 1
    OleObjectBlob = "frmUnificaciondePersonas.frx":0252
    Appearance = 0 'Flat
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 5880
    Width = 5295
    Height = 360
    TabIndex = 4
    BorderStyle = 1 'Fixed Single
    DataField = "DetaPers"
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
    Caption = "CUIT/CUIL del Nuevo Contribuyente:"
    Left = 360
    Top = 5880
    Width = 4410
    Height = 300
    TabIndex = 2
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmUnificaciondePersonas"


Private Sub SalirCmd_Click() '9D6784
  'Data Table: 412C9C
  loc_9D676C: ILdRf Me
  loc_9D676F: FStAdNoPop
  loc_9D6773: ImpAdLdRf MemVar_D9C5D8
  loc_9D6776: NewIfNullPr Global
  loc_9D6779: Global.Unload from_stack_1
  loc_9D677E: FFree1Ad var_88
  loc_9D6781: ExitProcHresult
  loc_9D6782: NeI4
End Sub

Private Sub BuscarPersonasCmd_Click() '9D66A4
  'Data Table: 412C9C
  loc_9D6688: LitVar_Missing var_A4
  loc_9D668B: PopAdLdVar
  loc_9D668C: LitVarI4
  loc_9D6694: PopAdLdVar
  loc_9D6695: ImpAdLdRf MemVar_D942C8
  loc_9D6698: NewIfNullPr dlgBuscarPersonaUnificacion
  loc_9D669B: dlgBuscarPersonaUnificacion.Show from_stack_1, from_stack_2
  loc_9D66A0: ExitProcHresult
End Sub

Private Sub Form_Load() 'AD9510
  'Data Table: 412C9C
  loc_AD93C0: FLdPr Me
  loc_AD93C3: VCallAd Control_ID_PersonaFlex
  loc_AD93C6: FStAdFunc var_88
  loc_AD93C9: LitVarI4
  loc_AD93D1: PopAdLdVar
  loc_AD93D2: LitVarI4
  loc_AD93DA: PopAdLdVar
  loc_AD93DB: FLdPr var_88
  loc_AD93DE: LateIdCallSt
  loc_AD93E6: LitVarI4
  loc_AD93EE: PopAdLdVar
  loc_AD93EF: LitVarI4
  loc_AD93F7: PopAdLdVar
  loc_AD93F8: FLdPr var_88
  loc_AD93FB: LateIdCallSt
  loc_AD9403: LitVarI4
  loc_AD940B: PopAdLdVar
  loc_AD940C: LitVarI4
  loc_AD9414: PopAdLdVar
  loc_AD9415: FLdPr var_88
  loc_AD9418: LateIdCallSt
  loc_AD9420: LitVarI4
  loc_AD9428: PopAdLdVar
  loc_AD9429: LitVarI4
  loc_AD9431: PopAdLdVar
  loc_AD9432: FLdPr var_88
  loc_AD9435: LateIdCallSt
  loc_AD943D: LitVarI4
  loc_AD9445: PopAdLdVar
  loc_AD9446: LitVarI4
  loc_AD944E: PopAdLdVar
  loc_AD944F: FLdPr var_88
  loc_AD9452: LateIdCallSt
  loc_AD945A: LitVarI4
  loc_AD9462: PopAdLdVar
  loc_AD9463: LitVarI4
  loc_AD946B: PopAdLdVar
  loc_AD946C: LitVarStr var_D8, "C.U.I.L."
  loc_AD9471: PopAdLdVar
  loc_AD9472: FLdPr var_88
  loc_AD9475: LateIdCallSt
  loc_AD947D: LitVarI4
  loc_AD9485: PopAdLdVar
  loc_AD9486: LitVarI4
  loc_AD948E: PopAdLdVar
  loc_AD948F: LitVarStr var_D8, "Oficina"
  loc_AD9494: PopAdLdVar
  loc_AD9495: FLdPr var_88
  loc_AD9498: LateIdCallSt
  loc_AD94A0: LitVarI4
  loc_AD94A8: PopAdLdVar
  loc_AD94A9: LitVarI4
  loc_AD94B1: PopAdLdVar
  loc_AD94B2: LitVarStr var_D8, "Cuenta"
  loc_AD94B7: PopAdLdVar
  loc_AD94B8: FLdPr var_88
  loc_AD94BB: LateIdCallSt
  loc_AD94C3: LitVarI4
  loc_AD94CB: PopAdLdVar
  loc_AD94CC: LitVarI4
  loc_AD94D4: PopAdLdVar
  loc_AD94D5: LitVarStr var_D8, "Apellido y Nommbre"
  loc_AD94DA: PopAdLdVar
  loc_AD94DB: FLdPr var_88
  loc_AD94DE: LateIdCallSt
  loc_AD94E6: LitVarI4
  loc_AD94EE: PopAdLdVar
  loc_AD94EF: LitVarI4
  loc_AD94F7: PopAdLdVar
  loc_AD94F8: LitVarStr var_D8, "Relación"
  loc_AD94FD: PopAdLdVar
  loc_AD94FE: FLdPr var_88
  loc_AD9501: LateIdCallSt
  loc_AD9509: LitNothing
  loc_AD950B: FStAd var_88 
  loc_AD950F: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B8C54
  'Data Table: 412C9C
  loc_9B8C40: ILdI2 KeyCode
  loc_9B8C43: CI4UI1
  loc_9B8C44: LitI4 &H78
  loc_9B8C49: EqI4
  loc_9B8C4A: BranchF loc_9B8C52
  loc_9B8C4D: Call SalirCmd_Click()
  loc_9B8C52: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B0E0BC
  'Data Table: 412C9C
  loc_B0DE8C: FLdPr Me
  loc_B0DE8F: VCallAd Control_ID_PersonaFlex
  loc_B0DE92: FStAdFunc var_88
  loc_B0DE95: FLdPr var_88
  loc_B0DE98: LateIdLdVar var_98 DispID_4 0
  loc_B0DE9F: CI4Var
  loc_B0DEA1: LitI4 1
  loc_B0DEA6: LeI4
  loc_B0DEA7: FFree1Ad var_88
  loc_B0DEAA: FFree1Var var_98 = ""
  loc_B0DEAD: BranchF loc_B0DEE2
  loc_B0DEB0: LitVar_Missing var_108
  loc_B0DEB3: LitVar_Missing var_E8
  loc_B0DEB6: LitVarStr var_B8, "InfoGov"
  loc_B0DEBB: FStVarCopyObj var_C8
  loc_B0DEBE: FLdRfVar var_C8
  loc_B0DEC1: LitI4 &H30
  loc_B0DEC6: LitVarStr var_A8, "No existe ninguna persona o cuenta para realizar la unificación"
  loc_B0DECB: FStVarCopyObj var_98
  loc_B0DECE: FLdRfVar var_98
  loc_B0DED1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B0DED6: FFreeVar var_98 = "": var_C8 = "": var_E8 = ""
  loc_B0DEE1: ExitProcHresult
  loc_B0DEE2: LitI2_Byte 0
  loc_B0DEE4: PopTmpLdAd2 var_10A
  loc_B0DEE7: Call CucuPersNuevoTxt_Validate(from_stack_1v)
  loc_B0DEEC: FLdPr Me
  loc_B0DEEF: MemLdStr global_56
  loc_B0DEF2: LitStr vbNullString
  loc_B0DEF5: NeStr
  loc_B0DEF7: BranchF loc_B0DEFB
  loc_B0DEFA: ExitProcHresult
  loc_B0DEFB: LitVar_Missing var_108
  loc_B0DEFE: LitVar_Missing var_E8
  loc_B0DF01: LitVarStr var_B8, "InfoGov"
  loc_B0DF06: FStVarCopyObj var_C8
  loc_B0DF09: FLdRfVar var_C8
  loc_B0DF0C: LitI4 4
  loc_B0DF11: LitVarStr var_A8, "¿Esta seguro que desea unificar todas las personas seleccionadas?"
  loc_B0DF16: FStVarCopyObj var_98
  loc_B0DF19: FLdRfVar var_98
  loc_B0DF1C: ImpAdCallI2 MsgBox(, , , , )
  loc_B0DF21: LitI4 6
  loc_B0DF26: EqI4
  loc_B0DF27: FFreeVar var_98 = "": var_C8 = "": var_E8 = ""
  loc_B0DF32: BranchF loc_B0E0B8
  loc_B0DF35: LitI2_Byte &HB
  loc_B0DF37: FLdPr Me
  loc_B0DF3A: Me.MousePointer = from_stack_1
  loc_B0DF3F: FLdRfVar var_110
  loc_B0DF42: FLdPr Me
  loc_B0DF45: VCallAd Control_ID_CucuPersNuevoTxt
  loc_B0DF48: FStAdFunc var_88
  loc_B0DF4B: FLdPr var_88
  loc_B0DF4E:  = Me.Text
  loc_B0DF53: ILdRf var_110
  loc_B0DF56: FLdPr Me
  loc_B0DF59: MemLdRfVar from_stack_1.global_52
  loc_B0DF5C: NewIfNullPr clspersonas
  loc_B0DF5F: Call clspersonas.UnificaciondePersonas(from_stack_1v)
  loc_B0DF64: FFree1Str var_110
  loc_B0DF67: FFree1Ad var_88
  loc_B0DF6A: LitI2_Byte 0
  loc_B0DF6C: FLdPr Me
  loc_B0DF6F: Me.MousePointer = from_stack_1
  loc_B0DF74: LitVar_Missing var_108
  loc_B0DF77: LitVar_Missing var_E8
  loc_B0DF7A: LitVarStr var_B8, "InfoGov"
  loc_B0DF7F: FStVarCopyObj var_C8
  loc_B0DF82: FLdRfVar var_C8
  loc_B0DF85: LitI4 &H30
  loc_B0DF8A: LitVarStr var_A8, "Proceso terminado. Por favor revise la información generada."
  loc_B0DF8F: FStVarCopyObj var_98
  loc_B0DF92: FLdRfVar var_98
  loc_B0DF95: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B0DF9A: FFreeVar var_98 = "": var_C8 = "": var_E8 = ""
  loc_B0DFA5: FLdPr Me
  loc_B0DFA8: VCallAd Control_ID_PersonaFlex
  loc_B0DFAB: FStAdFunc var_114
  loc_B0DFAE: FLdPr var_114
  loc_B0DFB1: LateIdCall
  loc_B0DFB9: LitVarI4
  loc_B0DFC1: PopAdLdVar
  loc_B0DFC2: FLdPr var_114
  loc_B0DFC5: LateIdSt
  loc_B0DFCA: LitVarI4
  loc_B0DFD2: PopAdLdVar
  loc_B0DFD3: LitVarI4
  loc_B0DFDB: PopAdLdVar
  loc_B0DFDC: LitVarStr var_124, "C.U.I.L."
  loc_B0DFE1: PopAdLdVar
  loc_B0DFE2: FLdPr var_114
  loc_B0DFE5: LateIdCallSt
  loc_B0DFED: LitVarI4
  loc_B0DFF5: PopAdLdVar
  loc_B0DFF6: LitVarI4
  loc_B0DFFE: PopAdLdVar
  loc_B0DFFF: LitVarStr var_124, "Oficina"
  loc_B0E004: PopAdLdVar
  loc_B0E005: FLdPr var_114
  loc_B0E008: LateIdCallSt
  loc_B0E010: LitVarI4
  loc_B0E018: PopAdLdVar
  loc_B0E019: LitVarI4
  loc_B0E021: PopAdLdVar
  loc_B0E022: LitVarStr var_124, "Cuenta"
  loc_B0E027: PopAdLdVar
  loc_B0E028: FLdPr var_114
  loc_B0E02B: LateIdCallSt
  loc_B0E033: LitVarI4
  loc_B0E03B: PopAdLdVar
  loc_B0E03C: LitVarI4
  loc_B0E044: PopAdLdVar
  loc_B0E045: LitVarStr var_124, "Apellido y Nommbre"
  loc_B0E04A: PopAdLdVar
  loc_B0E04B: FLdPr var_114
  loc_B0E04E: LateIdCallSt
  loc_B0E056: LitVarI4
  loc_B0E05E: PopAdLdVar
  loc_B0E05F: LitVarI4
  loc_B0E067: PopAdLdVar
  loc_B0E068: LitVarStr var_124, "Relación"
  loc_B0E06D: PopAdLdVar
  loc_B0E06E: FLdPr var_114
  loc_B0E071: LateIdCallSt
  loc_B0E079: FLdPr var_114
  loc_B0E07C: LateIdCall
  loc_B0E084: LitNothing
  loc_B0E086: FStAd var_114 
  loc_B0E08A: LitStr vbNullString
  loc_B0E08D: FLdPr Me
  loc_B0E090: VCallAd Control_ID_CucuPersNuevoTxt
  loc_B0E093: FStAdFunc var_88
  loc_B0E096: FLdPr var_88
  loc_B0E099: Me.Text = from_stack_1
  loc_B0E09E: FFree1Ad var_88
  loc_B0E0A1: LitStr vbNullString
  loc_B0E0A4: FLdPr Me
  loc_B0E0A7: VCallAd Control_ID_DetaPersLbl
  loc_B0E0AA: FStAdFunc var_88
  loc_B0E0AD: FLdPr var_88
  loc_B0E0B0: Me.Caption = from_stack_1
  loc_B0E0B5: FFree1Ad var_88
  loc_B0E0B8: ExitProcHresult
End Sub

Private Sub CucuPersNuevoTxt_GotFocus() '9C4BB0
  'Data Table: 412C9C
  loc_9C4B9C: FLdPr Me
  loc_9C4B9F: VCallAd Control_ID_CucuPersNuevoTxt
  loc_9C4BA2: CVarAd
  loc_9C4BA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4BAB: FFree1Var var_94 = ""
  loc_9C4BAE: ExitProcHresult
End Sub

Private Sub CucuPersNuevoTxt_KeyPress(KeyAscii As Integer) 'A98CC0
  'Data Table: 412C9C
  loc_A98C08: LitStr "1234567890 "
  loc_A98C0B: FStStrCopy var_88
  loc_A98C0E: FLdRfVar var_88
  loc_A98C11: ILdRf KeyAscii
  loc_A98C14: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A98C19: IStI2 KeyAscii
  loc_A98C1C: FFree1Str var_88
  loc_A98C1F: ILdI2 KeyAscii
  loc_A98C22: LitI2_Byte &H20
  loc_A98C24: EqI2
  loc_A98C25: BranchF loc_A98CBF
  loc_A98C28: LitI2_Byte 0
  loc_A98C2A: IStI2 KeyAscii
  loc_A98C2D: LitVar_Missing var_A8
  loc_A98C30: PopAdLdVar
  loc_A98C31: LitVarI4
  loc_A98C39: PopAdLdVar
  loc_A98C3A: ImpAdLdRf MemVar_D940AC
  loc_A98C3D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98C40: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A98C45: FLdRfVar var_88
  loc_A98C48: ImpAdLdRf MemVar_D940AC
  loc_A98C4B: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98C4E: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A98C53: ILdRf var_88
  loc_A98C56: LitStr vbNullString
  loc_A98C59: NeStr
  loc_A98C5B: FFree1Str var_88
  loc_A98C5E: BranchF loc_A98CBF
  loc_A98C61: FLdRfVar var_88
  loc_A98C64: ImpAdLdRf MemVar_D940AC
  loc_A98C67: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98C6A: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A98C6F: ILdRf var_88
  loc_A98C72: FLdPr Me
  loc_A98C75: VCallAd Control_ID_Campo3Txt
  loc_A98C78: FStAdFunc var_AC
  loc_A98C7B: FLdPr var_AC
  loc_A98C7E: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A98C83: FFree1Str var_88
  loc_A98C86: FFree1Ad var_AC
  loc_A98C89: LitStr vbNullString
  loc_A98C8C: ImpAdLdRf MemVar_D940AC
  loc_A98C8F: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98C92: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A98C97: FLdRfVar var_88
  loc_A98C9A: ImpAdLdRf MemVar_D940AC
  loc_A98C9D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98CA0: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A98CA5: ILdRf var_88
  loc_A98CA8: FLdPr Me
  loc_A98CAB: VCallAd Control_ID_OKButton
  loc_A98CAE: FStAdFunc var_AC
  loc_A98CB1: FLdPr var_AC
  loc_A98CB4: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A98CB9: FFree1Str var_88
  loc_A98CBC: FFree1Ad var_AC
  loc_A98CBF: ExitProcHresult
End Sub

Private Sub CucuPersNuevoTxt_Validate(Cancel As Boolean) 'AEEA78
  'Data Table: 412C9C
  loc_AEE8E4: FLdRfVar var_8A
  loc_AEE8E7: FLdPr Me
  loc_AEE8EA: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEE8ED: FStAdFunc var_88
  loc_AEE8F0: FLdPr var_88
  loc_AEE8F3:  = Me.Enabled
  loc_AEE8F8: FLdI2 var_8A
  loc_AEE8FB: FFree1Ad var_88
  loc_AEE8FE: BranchF loc_AEEA76
  loc_AEE901: FLdRfVar var_90
  loc_AEE904: FLdPr Me
  loc_AEE907: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEE90A: FStAdFunc var_88
  loc_AEE90D: FLdPr var_88
  loc_AEE910:  = Me.Text
  loc_AEE915: ILdRf var_90
  loc_AEE918: ImpAdCallI2 Proc_18_66_A532F4()
  loc_AEE91D: FStStrNoPop var_94
  loc_AEE920: FLdPr Me
  loc_AEE923: MemStStrCopy
  loc_AEE927: FFreeStr var_90 = ""
  loc_AEE92E: FFree1Ad var_88
  loc_AEE931: FLdPr Me
  loc_AEE934: MemLdStr global_56
  loc_AEE937: LitStr vbNullString
  loc_AEE93A: NeStr
  loc_AEE93C: BranchF loc_AEE962
  loc_AEE93F: FLdPr Me
  loc_AEE942: MemLdStr global_56
  loc_AEE945: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEE94A: FLdPr Me
  loc_AEE94D: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEE950: CVarAd
  loc_AEE954: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEE959: FFree1Var var_A4 = ""
  loc_AEE95C: LitI2_Byte &HFF
  loc_AEE95E: IStI2 Cancel
  loc_AEE961: ExitProcHresult
  loc_AEE962: LitI2_Byte 1
  loc_AEE964: FLdPr Me
  loc_AEE967: MemLdRfVar from_stack_1.global_60
  loc_AEE96A: FLdPr Me
  loc_AEE96D: VCallAd Control_ID_PersonaFlex
  loc_AEE970: FStAdFunc var_88
  loc_AEE973: FLdPr var_88
  loc_AEE976: LateIdLdVar var_A4 DispID_4 0
  loc_AEE97D: CI4Var
  loc_AEE97F: LitI4 1
  loc_AEE984: SubI4
  loc_AEE985: CI2I4
  loc_AEE986: FFree1Ad var_88
  loc_AEE989: FFree1Var var_A4 = ""
  loc_AEE98C: ForI2 var_A8
  loc_AEE992: FLdRfVar var_90
  loc_AEE995: FLdPr Me
  loc_AEE998: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEE99B: FStAdFunc var_88
  loc_AEE99E: FLdPr var_88
  loc_AEE9A1:  = Me.Text
  loc_AEE9A6: ILdRf var_90
  loc_AEE9A9: FLdPr Me
  loc_AEE9AC: MemLdI2 global_60
  loc_AEE9AF: CI4UI1
  loc_AEE9B0: CVarI4
  loc_AEE9B4: PopAdLdVar
  loc_AEE9B5: LitVarI4
  loc_AEE9BD: PopAdLdVar
  loc_AEE9BE: FLdPr Me
  loc_AEE9C1: VCallAd Control_ID_PersonaFlex
  loc_AEE9C4: FStAdFunc var_EC
  loc_AEE9C7: FLdPr var_EC
  loc_AEE9CA: LateIdCallLdVar
  loc_AEE9D4: CStrVarTmp
  loc_AEE9D5: FStStrNoPop var_94
  loc_AEE9D8: EqStr
  loc_AEE9DA: FFreeStr var_90 = ""
  loc_AEE9E1: FFreeAd var_88 = ""
  loc_AEE9E8: FFree1Var var_A4 = ""
  loc_AEE9EB: BranchF loc_AEEA2D
  loc_AEE9EE: LitStr "El CUIL de la fila numero: "
  loc_AEE9F1: FLdPr Me
  loc_AEE9F4: MemLdI2 global_60
  loc_AEE9F7: CStrUI1
  loc_AEE9F9: FStStrNoPop var_90
  loc_AEE9FC: ConcatStr
  loc_AEE9FD: FStStrNoPop var_94
  loc_AEEA00: LitStr " es igual al CUIL del nuevo contribuyente. Esto no es valido."
  loc_AEEA03: ConcatStr
  loc_AEEA04: FStStrNoPop var_F0
  loc_AEEA07: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEEA0C: FFreeStr var_90 = "": var_94 = ""
  loc_AEEA15: FLdPr Me
  loc_AEEA18: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEEA1B: CVarAd
  loc_AEEA1F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEEA24: FFree1Var var_A4 = ""
  loc_AEEA27: LitI2_Byte &HFF
  loc_AEEA29: IStI2 Cancel
  loc_AEEA2C: ExitProcHresult
  loc_AEEA2D: FLdPr Me
  loc_AEEA30: MemLdRfVar from_stack_1.global_60
  loc_AEEA33: NextI2 var_A8, loc_AEE992
  loc_AEEA38: FLdRfVar var_90
  loc_AEEA3B: FLdPr Me
  loc_AEEA3E: VCallAd Control_ID_CucuPersNuevoTxt
  loc_AEEA41: FStAdFunc var_88
  loc_AEEA44: FLdPr var_88
  loc_AEEA47:  = Me.Text
  loc_AEEA4C: ILdRf var_90
  loc_AEEA4F: ImpAdCallI2 Proc_270_75_A80810()
  loc_AEEA54: FStStrNoPop var_94
  loc_AEEA57: FLdPr Me
  loc_AEEA5A: VCallAd Control_ID_DetaPersLbl
  loc_AEEA5D: FStAdFunc var_EC
  loc_AEEA60: FLdPr var_EC
  loc_AEEA63: Me.Caption = from_stack_1
  loc_AEEA68: FFreeStr var_90 = ""
  loc_AEEA6F: FFreeAd var_88 = ""
  loc_AEEA76: ExitProcHresult
End Sub
