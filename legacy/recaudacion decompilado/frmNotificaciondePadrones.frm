VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmNotificaciondePadrones
  Caption = "Notificación de Padrones Municipales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmNotificaciondePadrones.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13908
  ClientHeight = 8628
  Begin VB.CommandButton SalirCmd
    Left = 12240
    Top = 840
    Width = 735
    Height = 615
    TabIndex = 9
    Picture = "frmNotificaciondePadrones.frx":324A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox OrdeObreTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 2520
    Width = 1455
    Height = 345
    TabIndex = 3
    MaxLength = 15
    DataField = "OrdeObre"
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
  Begin VB.CommandButton FenoObinCmd
    Left = 4200
    Top = 960
    Width = 495
    Height = 345
    TabIndex = 1
    Picture = "frmNotificaciondePadrones.frx":349C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton CodiInmuCmd
    Left = 4200
    Top = 3000
    Width = 450
    Height = 360
    TabIndex = 6
    Picture = "frmNotificaciondePadrones.frx":39DE
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton AgregarCmd
    Left = 4800
    Top = 3000
    Width = 1650
    Height = 465
    TabIndex = 7
    Picture = "frmNotificaciondePadrones.frx":3AD8
    Style = 1
  End
  Begin VB.TextBox CodiInmuTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 3000
    Width = 1455
    Height = 360
    TabIndex = 5
    MaxLength = 8
    DataField = "CodiInmu"
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
  Begin VB.CommandButton OrdeObreCmd
    Left = 4200
    Top = 2520
    Width = 450
    Height = 360
    TabIndex = 4
    Picture = "frmNotificaciondePadrones.frx":3E06
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox ObseObinTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1440
    Width = 9285
    Height = 915
    TabIndex = 2
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 500
    DataField = "ObseObin"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "NOTA"
  End
  Begin MSMask.MaskEdBox FenoObinMsk
    Left = 2640
    Top = 960
    Width = 1455
    Height = 345
    TabIndex = 0
    OleObjectBlob = "frmNotificaciondePadrones.frx":3F00
    DataField = "FenoObin"
  End
  Begin MSDataGridLib.DataGrid dgdABMS2
    Left = 240
    Top = 3840
    Width = 12720
    Height = 2355
    TabIndex = 8
    OleObjectBlob = "frmNotificaciondePadrones.frx":3FB0
  End
  Begin VB.Label Label4
    Caption = "Padrón:"
    Left = 1680
    Top = 3000
    Width = 825
    Height = 300
    TabIndex = 13
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
    Caption = "Fecha de Notificación:"
    Left = 240
    Top = 960
    Width = 2355
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
  Begin VB.Label Label1
    Caption = "Obra reembolzable:"
    Left = 525
    Top = 2520
    Width = 2070
    Height = 300
    TabIndex = 11
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
    Caption = "Observación:"
    Left = 1080
    Top = 1440
    Width = 1380
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
End

Attribute VB_Name = "frmNotificaciondePadrones"


Private Sub AgregarCmd_Click() 'B980E4
  'Data Table: 45692C
  loc_B97B80: LitI2_Byte 0
  loc_B97B82: PopTmpLdAd2 var_86
  loc_B97B85: Call FenoObinMsk_UnknownEvent_8()
  loc_B97B8A: FLdPr Me
  loc_B97B8D: MemLdStr global_60
  loc_B97B90: LitStr vbNullString
  loc_B97B93: NeStr
  loc_B97B95: BranchF loc_B97B99
  loc_B97B98: ExitProcHresult
  loc_B97B99: LitI2_Byte 0
  loc_B97B9B: PopTmpLdAd2 var_86
  loc_B97B9E: Call OrdeObreTxt_Validate(from_stack_1v)
  loc_B97BA3: FLdPr Me
  loc_B97BA6: MemLdStr global_60
  loc_B97BA9: LitStr vbNullString
  loc_B97BAC: NeStr
  loc_B97BAE: BranchF loc_B97BB2
  loc_B97BB1: ExitProcHresult
  loc_B97BB2: LitI2_Byte 0
  loc_B97BB4: PopTmpLdAd2 var_86
  loc_B97BB7: Call CodiInmuTxt_Validate(from_stack_1v)
  loc_B97BBC: FLdPr Me
  loc_B97BBF: MemLdStr global_60
  loc_B97BC2: LitStr vbNullString
  loc_B97BC5: NeStr
  loc_B97BC7: BranchF loc_B97BCB
  loc_B97BCA: ExitProcHresult
  loc_B97BCB: LitI2_Byte 0
  loc_B97BCD: PopTmpLdAd2 var_86
  loc_B97BD0: Call ObseObinTxt_Validate(from_stack_1v)
  loc_B97BD5: FLdPr Me
  loc_B97BD8: MemLdStr global_60
  loc_B97BDB: LitStr vbNullString
  loc_B97BDE: NeStr
  loc_B97BE0: BranchF loc_B97BE4
  loc_B97BE3: ExitProcHresult
  loc_B97BE4: LitStr "SELECT * FROM obreinmu WHERE OrdeObre = '"
  loc_B97BE7: FLdRfVar var_90
  loc_B97BEA: FLdPr Me
  loc_B97BED: VCallAd Control_ID_OrdeObreTxt
  loc_B97BF0: FStAdFunc var_8C
  loc_B97BF3: FLdPr var_8C
  loc_B97BF6:  = Me.Text
  loc_B97BFB: ILdRf var_90
  loc_B97BFE: ConcatStr
  loc_B97BFF: FStStrNoPop var_94
  loc_B97C02: LitStr "' AND CodiInmu = "
  loc_B97C05: ConcatStr
  loc_B97C06: FStStrNoPop var_A0
  loc_B97C09: FLdRfVar var_9C
  loc_B97C0C: FLdPr Me
  loc_B97C0F: VCallAd Control_ID_CodiInmuTxt
  loc_B97C12: FStAdFunc var_98
  loc_B97C15: FLdPr var_98
  loc_B97C18:  = Me.Text
  loc_B97C1D: ILdRf var_9C
  loc_B97C20: ConcatStr
  loc_B97C21: FStStrNoPop var_A4
  loc_B97C24: LitStr " ORDER BY OrdeObre, CodiInmu"
  loc_B97C27: ConcatStr
  loc_B97C28: FStStrNoPop var_A8
  loc_B97C2B: FLdPr Me
  loc_B97C2E: MemLdRfVar from_stack_1.global_52
  loc_B97C31: NewIfNullPr clsobreinmu
  loc_B97C34: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_B97C39: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_B97C48: FFreeAd var_8C = ""
  loc_B97C4F: FLdRfVar var_AC
  loc_B97C52: FLdPr Me
  loc_B97C55: MemLdRfVar from_stack_1.global_52
  loc_B97C58: NewIfNullPr clsobreinmu
  loc_B97C5B: from_stack_1 = clsobreinmu.RecordCount
  loc_B97C60: ILdRf var_AC
  loc_B97C63: LitI4 0
  loc_B97C68: GtI4
  loc_B97C69: BranchF loc_B980CF
  loc_B97C6C: FLdRfVar var_BC
  loc_B97C6F: FLdPr Me
  loc_B97C72: MemLdRfVar from_stack_1.global_52
  loc_B97C75: NewIfNullPr clsobreinmu
  loc_B97C78: from_stack_1 = clsobreinmu.FenoObin
  loc_B97C7D: FLdRfVar var_BC
  loc_B97C80: ImpAdCallI2 IsNull()
  loc_B97C85: FFree1Var var_BC = ""
  loc_B97C88: BranchF loc_B97E90
  loc_B97C8B: FLdRfVar var_90
  loc_B97C8E: FLdPr Me
  loc_B97C91: VCallAd Control_ID_OrdeObreTxt
  loc_B97C94: FStAdFunc var_8C
  loc_B97C97: FLdPr var_8C
  loc_B97C9A:  = Me.Text
  loc_B97C9F: FLdRfVar var_94
  loc_B97CA2: FLdPr Me
  loc_B97CA5: VCallAd Control_ID_CodiInmuTxt
  loc_B97CA8: FStAdFunc var_98
  loc_B97CAB: FLdPr var_98
  loc_B97CAE:  = Me.Text
  loc_B97CB3: FLdPr Me
  loc_B97CB6: VCallAd Control_ID_FenoObinMsk
  loc_B97CB9: FStAdFunc var_C0
  loc_B97CBC: FLdPr var_C0
  loc_B97CBF: LateIdLdVar var_BC DispID_15 0
  loc_B97CC6: PopAd
  loc_B97CC8: FLdRfVar var_9C
  loc_B97CCB: FLdPr Me
  loc_B97CCE: VCallAd Control_ID_ObseObinTxt
  loc_B97CD1: FStAdFunc var_C4
  loc_B97CD4: FLdPr var_C4
  loc_B97CD7:  = Me.Text
  loc_B97CDC: ILdRf var_9C
  loc_B97CDF: FLdRfVar var_BC
  loc_B97CE2: CStrVarTmp
  loc_B97CE3: FStStrNoPop var_A0
  loc_B97CE6: ILdRf var_94
  loc_B97CE9: CI4Str
  loc_B97CEA: ILdRf var_90
  loc_B97CED: FLdPr Me
  loc_B97CF0: MemLdRfVar from_stack_1.global_52
  loc_B97CF3: NewIfNullPr clsobreinmu
  loc_B97CF6: Call clsobreinmu.ModificarFenoObin(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B97CFB: FFreeStr var_90 = "": var_94 = "": var_A0 = ""
  loc_B97D06: FFreeAd var_8C = "": var_98 = "": var_C0 = ""
  loc_B97D11: FFree1Var var_BC = ""
  loc_B97D14: FLdPr Me
  loc_B97D17: VCallAd Control_ID_FenoObinMsk
  loc_B97D1A: FStAdFunc var_98
  loc_B97D1D: FLdPr var_98
  loc_B97D20: LateIdLdVar var_BC DispID_15 0
  loc_B97D27: PopAd
  loc_B97D29: LitStr " SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, FealObin, FenoObin, ObseObin FROM obreinmu "
  loc_B97D2C: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_B97D2F: ConcatStr
  loc_B97D30: FStStrNoPop var_90
  loc_B97D33: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_B97D36: ConcatStr
  loc_B97D37: FStStrNoPop var_94
  loc_B97D3A: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_B97D3D: ConcatStr
  loc_B97D3E: FStStrNoPop var_A0
  loc_B97D41: FLdRfVar var_9C
  loc_B97D44: FLdPr Me
  loc_B97D47: VCallAd Control_ID_OrdeObreTxt
  loc_B97D4A: FStAdFunc var_8C
  loc_B97D4D: FLdPr var_8C
  loc_B97D50:  = Me.Text
  loc_B97D55: ILdRf var_9C
  loc_B97D58: ConcatStr
  loc_B97D59: FStStrNoPop var_A4
  loc_B97D5C: LitStr "'"
  loc_B97D5F: ConcatStr
  loc_B97D60: FStStrNoPop var_A8
  loc_B97D63: LitStr " AND obreinmu.FenoObin = '"
  loc_B97D66: ConcatStr
  loc_B97D67: CVarStr var_114
  loc_B97D6A: LitI4 1
  loc_B97D6F: LitI4 1
  loc_B97D74: LitVarStr var_E4, "yyyy-mm-dd"
  loc_B97D79: FStVarCopyObj var_F4
  loc_B97D7C: FLdRfVar var_F4
  loc_B97D7F: FLdRfVar var_BC
  loc_B97D82: CStrVarTmp
  loc_B97D83: CVarStr var_D4
  loc_B97D86: FLdRfVar var_104
  loc_B97D89: ImpAdCallFPR4  = Format(, )
  loc_B97D8E: FLdRfVar var_104
  loc_B97D91: ConcatVar var_124
  loc_B97D95: LitVarStr var_134, "'"
  loc_B97D9A: ConcatVar var_144
  loc_B97D9E: LitVarStr var_154, " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_B97DA3: ConcatVar var_164
  loc_B97DA7: CStrVarVal var_168
  loc_B97DAB: FLdPr Me
  loc_B97DAE: MemLdRfVar from_stack_1.global_56
  loc_B97DB1: NewIfNullPr clsobreinmu
  loc_B97DB4: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_B97DB9: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = "": var_A8 = ""
  loc_B97DCA: FFreeAd var_8C = ""
  loc_B97DD1: FFreeVar var_BC = "": var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_124 = "": var_144 = ""
  loc_B97DE4: LitI4 0
  loc_B97DE9: LitI4 1
  loc_B97DEE: FLdRfVar var_16C
  loc_B97DF1: Redim
  loc_B97DFB: FLdPr Me
  loc_B97DFE: MemLdRfVar from_stack_1.global_56
  loc_B97E01: NewIfNullAd
  loc_B97E04: FStAd var_8C 
  loc_B97E08: FLdRfVar var_8C
  loc_B97E0B: CVarRef
  loc_B97E10: ParmAry1St
  loc_B97E16: FLdPr Me
  loc_B97E19: VCallAd Control_ID_dgdABMS2
  loc_B97E1C: CVarAd
  loc_B97E20: ParmAry1St
  loc_B97E26: FLdRfVar var_16C
  loc_B97E29: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B97E2E: ILdRf var_8C
  loc_B97E31: CastAd
  loc_B97E34: FLdPr Me
  loc_B97E37: MemStAdFunc
  loc_B97E3B: FLdRfVar var_16C
  loc_B97E3E: Erase
  loc_B97E3F: FFree1Ad var_8C
  loc_B97E42: FLdRfVar var_90
  loc_B97E45: FLdPr Me
  loc_B97E48: VCallAd Control_ID_OrdeObreTxt
  loc_B97E4B: FStAdFunc var_8C
  loc_B97E4E: FLdPr var_8C
  loc_B97E51:  = Me.Text
  loc_B97E56: FLdRfVar var_94
  loc_B97E59: FLdPr Me
  loc_B97E5C: VCallAd Control_ID_CodiInmuTxt
  loc_B97E5F: FStAdFunc var_98
  loc_B97E62: FLdPr var_98
  loc_B97E65:  = Me.Text
  loc_B97E6A: ILdRf var_94
  loc_B97E6D: CI4Str
  loc_B97E6E: ILdRf var_90
  loc_B97E71: FLdPr Me
  loc_B97E74: MemLdRfVar from_stack_1.global_56
  loc_B97E77: NewIfNullPr clsobreinmu
  loc_B97E7A: Call clsobreinmu.Encontrar(from_stack_1v, from_stack_2v)
  loc_B97E7F: FFreeStr var_90 = ""
  loc_B97E86: FFreeAd var_8C = ""
  loc_B97E8D: Branch loc_B980CF
  loc_B97E90: LitVar_Missing var_104
  loc_B97E93: LitVar_Missing var_F4
  loc_B97E96: LitVar_Missing var_D4
  loc_B97E99: LitI4 4
  loc_B97E9E: LitVarStr var_E4, "¿El inmueble ya esta notificado para esta obra, desea modificar?"
  loc_B97EA3: FStVarCopyObj var_BC
  loc_B97EA6: FLdRfVar var_BC
  loc_B97EA9: ImpAdCallI2 MsgBox(, , , , )
  loc_B97EAE: LitI4 6
  loc_B97EB3: EqI4
  loc_B97EB4: FFreeVar var_BC = "": var_D4 = "": var_F4 = ""
  loc_B97EBF: BranchF loc_B980C7
  loc_B97EC2: FLdRfVar var_90
  loc_B97EC5: FLdPr Me
  loc_B97EC8: VCallAd Control_ID_OrdeObreTxt
  loc_B97ECB: FStAdFunc var_8C
  loc_B97ECE: FLdPr var_8C
  loc_B97ED1:  = Me.Text
  loc_B97ED6: FLdRfVar var_94
  loc_B97ED9: FLdPr Me
  loc_B97EDC: VCallAd Control_ID_CodiInmuTxt
  loc_B97EDF: FStAdFunc var_98
  loc_B97EE2: FLdPr var_98
  loc_B97EE5:  = Me.Text
  loc_B97EEA: FLdPr Me
  loc_B97EED: VCallAd Control_ID_FenoObinMsk
  loc_B97EF0: FStAdFunc var_C0
  loc_B97EF3: FLdPr var_C0
  loc_B97EF6: LateIdLdVar var_BC DispID_15 0
  loc_B97EFD: PopAd
  loc_B97EFF: FLdRfVar var_9C
  loc_B97F02: FLdPr Me
  loc_B97F05: VCallAd Control_ID_ObseObinTxt
  loc_B97F08: FStAdFunc var_C4
  loc_B97F0B: FLdPr var_C4
  loc_B97F0E:  = Me.Text
  loc_B97F13: ILdRf var_9C
  loc_B97F16: FLdRfVar var_BC
  loc_B97F19: CStrVarTmp
  loc_B97F1A: FStStrNoPop var_A0
  loc_B97F1D: ILdRf var_94
  loc_B97F20: CI4Str
  loc_B97F21: ILdRf var_90
  loc_B97F24: FLdPr Me
  loc_B97F27: MemLdRfVar from_stack_1.global_52
  loc_B97F2A: NewIfNullPr clsobreinmu
  loc_B97F2D: Call clsobreinmu.ModificarFenoObin(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B97F32: FFreeStr var_90 = "": var_94 = "": var_A0 = ""
  loc_B97F3D: FFreeAd var_8C = "": var_98 = "": var_C0 = ""
  loc_B97F48: FFree1Var var_BC = ""
  loc_B97F4B: FLdPr Me
  loc_B97F4E: VCallAd Control_ID_FenoObinMsk
  loc_B97F51: FStAdFunc var_98
  loc_B97F54: FLdPr var_98
  loc_B97F57: LateIdLdVar var_BC DispID_15 0
  loc_B97F5E: PopAd
  loc_B97F60: LitStr "SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, FealObin, FenoObin, ObseObin FROM obreinmu "
  loc_B97F63: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_B97F66: ConcatStr
  loc_B97F67: FStStrNoPop var_90
  loc_B97F6A: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_B97F6D: ConcatStr
  loc_B97F6E: FStStrNoPop var_94
  loc_B97F71: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_B97F74: ConcatStr
  loc_B97F75: FStStrNoPop var_A0
  loc_B97F78: FLdRfVar var_9C
  loc_B97F7B: FLdPr Me
  loc_B97F7E: VCallAd Control_ID_OrdeObreTxt
  loc_B97F81: FStAdFunc var_8C
  loc_B97F84: FLdPr var_8C
  loc_B97F87:  = Me.Text
  loc_B97F8C: ILdRf var_9C
  loc_B97F8F: ConcatStr
  loc_B97F90: FStStrNoPop var_A4
  loc_B97F93: LitStr "'"
  loc_B97F96: ConcatStr
  loc_B97F97: FStStrNoPop var_A8
  loc_B97F9A: LitStr " AND obreinmu.FenoObin = '"
  loc_B97F9D: ConcatStr
  loc_B97F9E: CVarStr var_114
  loc_B97FA1: LitI4 1
  loc_B97FA6: LitI4 1
  loc_B97FAB: LitVarStr var_E4, "yyyy-mm-dd"
  loc_B97FB0: FStVarCopyObj var_F4
  loc_B97FB3: FLdRfVar var_F4
  loc_B97FB6: FLdRfVar var_BC
  loc_B97FB9: CStrVarTmp
  loc_B97FBA: CVarStr var_D4
  loc_B97FBD: FLdRfVar var_104
  loc_B97FC0: ImpAdCallFPR4  = Format(, )
  loc_B97FC5: FLdRfVar var_104
  loc_B97FC8: ConcatVar var_124
  loc_B97FCC: LitVarStr var_134, "'"
  loc_B97FD1: ConcatVar var_144
  loc_B97FD5: LitVarStr var_154, " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_B97FDA: ConcatVar var_164
  loc_B97FDE: CStrVarVal var_168
  loc_B97FE2: FLdPr Me
  loc_B97FE5: MemLdRfVar from_stack_1.global_56
  loc_B97FE8: NewIfNullPr clsobreinmu
  loc_B97FEB: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_B97FF0: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = "": var_A8 = ""
  loc_B98001: FFreeAd var_8C = ""
  loc_B98008: FFreeVar var_BC = "": var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_124 = "": var_144 = ""
  loc_B9801B: LitI4 0
  loc_B98020: LitI4 1
  loc_B98025: FLdRfVar var_16C
  loc_B98028: Redim
  loc_B98032: FLdPr Me
  loc_B98035: MemLdRfVar from_stack_1.global_56
  loc_B98038: NewIfNullAd
  loc_B9803B: FStAd var_8C 
  loc_B9803F: FLdRfVar var_8C
  loc_B98042: CVarRef
  loc_B98047: ParmAry1St
  loc_B9804D: FLdPr Me
  loc_B98050: VCallAd Control_ID_dgdABMS2
  loc_B98053: CVarAd
  loc_B98057: ParmAry1St
  loc_B9805D: FLdRfVar var_16C
  loc_B98060: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B98065: ILdRf var_8C
  loc_B98068: CastAd
  loc_B9806B: FLdPr Me
  loc_B9806E: MemStAdFunc
  loc_B98072: FLdRfVar var_16C
  loc_B98075: Erase
  loc_B98076: FFree1Ad var_8C
  loc_B98079: FLdRfVar var_90
  loc_B9807C: FLdPr Me
  loc_B9807F: VCallAd Control_ID_OrdeObreTxt
  loc_B98082: FStAdFunc var_8C
  loc_B98085: FLdPr var_8C
  loc_B98088:  = Me.Text
  loc_B9808D: FLdRfVar var_94
  loc_B98090: FLdPr Me
  loc_B98093: VCallAd Control_ID_CodiInmuTxt
  loc_B98096: FStAdFunc var_98
  loc_B98099: FLdPr var_98
  loc_B9809C:  = Me.Text
  loc_B980A1: ILdRf var_94
  loc_B980A4: CI4Str
  loc_B980A5: ILdRf var_90
  loc_B980A8: FLdPr Me
  loc_B980AB: MemLdRfVar from_stack_1.global_56
  loc_B980AE: NewIfNullPr clsobreinmu
  loc_B980B1: Call clsobreinmu.Encontrar(from_stack_1v, from_stack_2v)
  loc_B980B6: FFreeStr var_90 = ""
  loc_B980BD: FFreeAd var_8C = ""
  loc_B980C4: Branch loc_B980CF
  loc_B980C7: LitStr "El registro no fue modificado"
  loc_B980CA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B980CF: FLdPr Me
  loc_B980D2: VCallAd Control_ID_CodiInmuTxt
  loc_B980D5: CVarAd
  loc_B980D9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B980DE: FFree1Var var_BC = ""
  loc_B980E1: ExitProcHresult
End Sub

Private Sub CodiInmuCmd_Click() 'AA1E84
  'Data Table: 45692C
  loc_AA1DCC: FLdRfVar var_8C
  loc_AA1DCF: FLdPr Me
  loc_AA1DD2: VCallAd Control_ID_OrdeObreTxt
  loc_AA1DD5: FStAdFunc var_88
  loc_AA1DD8: FLdPr var_88
  loc_AA1DDB:  = Me.Text
  loc_AA1DE0: ILdRf var_8C
  loc_AA1DE3: ImpAdLdRf MemVar_D94510
  loc_AA1DE6: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA1DE9: Call dlgBuscarPadronObraReem.sOrdeObrePut(from_stack_1v)
  loc_AA1DEE: FFree1Str var_8C
  loc_AA1DF1: FFree1Ad var_88
  loc_AA1DF4: LitVar_Missing var_AC
  loc_AA1DF7: PopAdLdVar
  loc_AA1DF8: LitVarI4
  loc_AA1E00: PopAdLdVar
  loc_AA1E01: ImpAdLdRf MemVar_D94510
  loc_AA1E04: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA1E07: dlgBuscarPadronObraReem.Show from_stack_1, from_stack_2
  loc_AA1E0C: FLdRfVar var_B0
  loc_AA1E0F: FLdRfVar var_88
  loc_AA1E12: ImpAdLdRf MemVar_D94510
  loc_AA1E15: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA1E18: from_stack_1v = dlgBuscarPadronObraReem.global_4315816Get()
  loc_AA1E1D: FLdPr var_88
  loc_AA1E20: from_stack_1 = clsobreinmu.RecordCount
  loc_AA1E25: ILdRf var_B0
  loc_AA1E28: LitI4 0
  loc_AA1E2D: GtI4
  loc_AA1E2E: FFree1Ad var_88
  loc_AA1E31: BranchF loc_AA1E70
  loc_AA1E34: FLdRfVar var_B0
  loc_AA1E37: FLdRfVar var_88
  loc_AA1E3A: ImpAdLdRf MemVar_D94510
  loc_AA1E3D: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA1E40: from_stack_1v = dlgBuscarPadronObraReem.global_4315816Get()
  loc_AA1E45: FLdPr var_88
  loc_AA1E48: from_stack_1 = clsobreinmu.CodiInmu
  loc_AA1E4D: ILdRf var_B0
  loc_AA1E50: CStrI4
  loc_AA1E52: FStStrNoPop var_8C
  loc_AA1E55: FLdPr Me
  loc_AA1E58: VCallAd Control_ID_CodiInmuTxt
  loc_AA1E5B: FStAdFunc var_B4
  loc_AA1E5E: FLdPr var_B4
  loc_AA1E61: Me.Text = from_stack_1
  loc_AA1E66: FFree1Str var_8C
  loc_AA1E69: FFreeAd var_88 = ""
  loc_AA1E70: FLdPr Me
  loc_AA1E73: VCallAd Control_ID_CodiInmuTxt
  loc_AA1E76: CVarAd
  loc_AA1E7A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA1E7F: FFree1Var var_C4 = ""
  loc_AA1E82: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CF960
  'Data Table: 45692C
  loc_9CF948: ILdRf Me
  loc_9CF94B: FStAdNoPop
  loc_9CF94F: ImpAdLdRf MemVar_D9C5D8
  loc_9CF952: NewIfNullPr Global
  loc_9CF955: Global.Unload from_stack_1
  loc_9CF95A: FFree1Ad var_88
  loc_9CF95D: ExitProcHresult
  loc_9CF95E: FLdPr var_4BFD
End Sub

Private Sub FenoObinCmd_Click() 'A5019C
  'Data Table: 45692C
  loc_A50148: LitVar_Missing var_A4
  loc_A5014B: PopAdLdVar
  loc_A5014C: LitVarI4
  loc_A50154: PopAdLdVar
  loc_A50155: ImpAdLdRf MemVar_D930A4
  loc_A50158: NewIfNullPr frmCalendario
  loc_A5015B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A50160: ImpAdLdI4 MemVar_D93028
  loc_A50163: LitStr vbNullString
  loc_A50166: NeStr
  loc_A50168: BranchF loc_A50186
  loc_A5016B: ImpAdLdRf MemVar_D93028
  loc_A5016E: CDargRef
  loc_A50172: FLdPr Me
  loc_A50175: VCallAd Control_ID_FenoObinMsk
  loc_A50178: FStAdFunc var_A8
  loc_A5017B: FLdPr var_A8
  loc_A5017E: LateIdSt
  loc_A50183: FFree1Ad var_A8
  loc_A50186: FLdPr Me
  loc_A50189: VCallAd Control_ID_FenoObinMsk
  loc_A5018C: CVarAd
  loc_A50190: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A50195: FFree1Var var_B8 = ""
  loc_A50198: ExitProcHresult
End Sub

Private Sub OrdeObreTxt_GotFocus() '9C3380
  'Data Table: 45692C
  loc_9C336C: FLdPr Me
  loc_9C336F: VCallAd Control_ID_OrdeObreTxt
  loc_9C3372: CVarAd
  loc_9C3376: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C337B: FFree1Var var_94 = ""
  loc_9C337E: ExitProcHresult
End Sub

Private Sub OrdeObreTxt_Validate(Cancel As Boolean) 'A8DCC4
  'Data Table: 45692C
  loc_A8DC24: FLdRfVar var_8A
  loc_A8DC27: FLdPr Me
  loc_A8DC2A: VCallAd Control_ID_OrdeObreTxt
  loc_A8DC2D: FStAdFunc var_88
  loc_A8DC30: FLdPr var_88
  loc_A8DC33:  = Me.Enabled
  loc_A8DC38: FLdI2 var_8A
  loc_A8DC3B: LitI2_Byte &HFF
  loc_A8DC3D: EqI2
  loc_A8DC3E: FFree1Ad var_88
  loc_A8DC41: BranchF loc_A8DCC2
  loc_A8DC44: FLdRfVar var_8A
  loc_A8DC47: FLdPr Me
  loc_A8DC4A: VCallAd Control_ID_OrdeObreTxt
  loc_A8DC4D: FStAdFunc var_88
  loc_A8DC50: FLdPr var_88
  loc_A8DC53:  = Me.Enabled
  loc_A8DC58: FLdI2 var_8A
  loc_A8DC5B: FFree1Ad var_88
  loc_A8DC5E: BranchF loc_A8DCC2
  loc_A8DC61: FLdRfVar var_90
  loc_A8DC64: FLdPr Me
  loc_A8DC67: VCallAd Control_ID_OrdeObreTxt
  loc_A8DC6A: FStAdFunc var_88
  loc_A8DC6D: FLdPr var_88
  loc_A8DC70:  = Me.Text
  loc_A8DC75: ILdRf var_90
  loc_A8DC78: ImpAdCallI2 Proc_18_54_A64EC4()
  loc_A8DC7D: FStStrNoPop var_94
  loc_A8DC80: FLdPr Me
  loc_A8DC83: MemStStrCopy
  loc_A8DC87: FFreeStr var_90 = ""
  loc_A8DC8E: FFree1Ad var_88
  loc_A8DC91: FLdPr Me
  loc_A8DC94: MemLdStr global_60
  loc_A8DC97: LitStr vbNullString
  loc_A8DC9A: NeStr
  loc_A8DC9C: BranchF loc_A8DCC2
  loc_A8DC9F: FLdPr Me
  loc_A8DCA2: MemLdStr global_60
  loc_A8DCA5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8DCAA: FLdPr Me
  loc_A8DCAD: VCallAd Control_ID_OrdeObreTxt
  loc_A8DCB0: CVarAd
  loc_A8DCB4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8DCB9: FFree1Var var_A4 = ""
  loc_A8DCBC: LitI2_Byte &HFF
  loc_A8DCBE: IStI2 Cancel
  loc_A8DCC1: ExitProcHresult
  loc_A8DCC2: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_GotFocus() '9C32A8
  'Data Table: 45692C
  loc_9C3294: FLdPr Me
  loc_9C3297: VCallAd Control_ID_CodiInmuTxt
  loc_9C329A: CVarAd
  loc_9C329E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C32A3: FFree1Var var_94 = ""
  loc_9C32A6: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_KeyPress(KeyAscii As Integer) '9CF8C8
  'Data Table: 45692C
  loc_9CF8B0: LitStr "0123456789"
  loc_9CF8B3: FStStrCopy var_88
  loc_9CF8B6: FLdRfVar var_88
  loc_9CF8B9: ILdRf KeyAscii
  loc_9CF8BC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF8C1: IStI2 KeyAscii
  loc_9CF8C4: FFree1Str var_88
  loc_9CF8C7: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_Validate(Cancel As Boolean) 'A93588
  'Data Table: 45692C
  loc_A934E8: FLdRfVar var_8A
  loc_A934EB: FLdPr Me
  loc_A934EE: VCallAd Control_ID_CodiInmuTxt
  loc_A934F1: FStAdFunc var_88
  loc_A934F4: FLdPr var_88
  loc_A934F7:  = Me.Enabled
  loc_A934FC: FLdI2 var_8A
  loc_A934FF: LitI2_Byte &HFF
  loc_A93501: EqI2
  loc_A93502: FFree1Ad var_88
  loc_A93505: BranchF loc_A93586
  loc_A93508: FLdRfVar var_90
  loc_A9350B: FLdPr Me
  loc_A9350E: VCallAd Control_ID_OrdeObreTxt
  loc_A93511: FStAdFunc var_88
  loc_A93514: FLdPr var_88
  loc_A93517:  = Me.Text
  loc_A9351C: FLdRfVar var_98
  loc_A9351F: FLdPr Me
  loc_A93522: VCallAd Control_ID_CodiInmuTxt
  loc_A93525: FStAdFunc var_94
  loc_A93528: FLdPr var_94
  loc_A9352B:  = Me.Text
  loc_A93530: ILdRf var_98
  loc_A93533: ILdRf var_90
  loc_A93536: ImpAdCallI2 Proc_18_55_A7B240(, )
  loc_A9353B: FStStrNoPop var_9C
  loc_A9353E: FLdPr Me
  loc_A93541: MemStStrCopy
  loc_A93545: FFreeStr var_90 = "": var_98 = ""
  loc_A9354E: FFreeAd var_88 = ""
  loc_A93555: FLdPr Me
  loc_A93558: MemLdStr global_60
  loc_A9355B: LitStr vbNullString
  loc_A9355E: NeStr
  loc_A93560: BranchF loc_A93586
  loc_A93563: FLdPr Me
  loc_A93566: MemLdStr global_60
  loc_A93569: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9356E: FLdPr Me
  loc_A93571: VCallAd Control_ID_CodiInmuTxt
  loc_A93574: CVarAd
  loc_A93578: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9357D: FFree1Var var_AC = ""
  loc_A93580: LitI2_Byte &HFF
  loc_A93582: IStI2 Cancel
  loc_A93585: ExitProcHresult
  loc_A93586: ExitProcHresult
End Sub

Private Sub Form_Load() 'AED08C
  'Data Table: 45692C
  loc_AECF38: LitI2_Byte 0
  loc_AECF3A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AECF3F: CStrDate
  loc_AECF41: CVarStr var_94
  loc_AECF44: PopAdLdVar
  loc_AECF45: FLdPr Me
  loc_AECF48: VCallAd Control_ID_FenoObinMsk
  loc_AECF4B: FStAdFunc var_A8
  loc_AECF4E: FLdPr var_A8
  loc_AECF51: LateIdSt
  loc_AECF56: FFree1Ad var_A8
  loc_AECF59: FFree1Var var_94 = ""
  loc_AECF5C: FLdPr Me
  loc_AECF5F: VCallAd Control_ID_FenoObinMsk
  loc_AECF62: FStAdFunc var_C4
  loc_AECF65: FLdPr var_C4
  loc_AECF68: LateIdLdVar var_94 DispID_15 0
  loc_AECF6F: PopAd
  loc_AECF71: LitStr "SELECT obreinmu.OrdeObre, obreinmu.CodiInmu, DetaPers, FealObin, FenoObin, ObseObin FROM obreinmu "
  loc_AECF74: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_AECF77: ConcatStr
  loc_AECF78: FStStrNoPop var_AC
  loc_AECF7B: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_AECF7E: ConcatStr
  loc_AECF7F: FStStrNoPop var_B0
  loc_AECF82: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_AECF85: ConcatStr
  loc_AECF86: FStStrNoPop var_B8
  loc_AECF89: FLdRfVar var_B4
  loc_AECF8C: FLdPr Me
  loc_AECF8F: VCallAd Control_ID_OrdeObreTxt
  loc_AECF92: FStAdFunc var_A8
  loc_AECF95: FLdPr var_A8
  loc_AECF98:  = Me.Text
  loc_AECF9D: ILdRf var_B4
  loc_AECFA0: ConcatStr
  loc_AECFA1: FStStrNoPop var_BC
  loc_AECFA4: LitStr "'"
  loc_AECFA7: ConcatStr
  loc_AECFA8: FStStrNoPop var_C0
  loc_AECFAB: LitStr " AND obreinmu.FenoObin = '"
  loc_AECFAE: ConcatStr
  loc_AECFAF: CVarStr var_104
  loc_AECFB2: LitI4 1
  loc_AECFB7: LitI4 1
  loc_AECFBC: LitVarStr var_A4, "yyyy-mm-dd"
  loc_AECFC1: FStVarCopyObj var_E4
  loc_AECFC4: FLdRfVar var_E4
  loc_AECFC7: FLdRfVar var_94
  loc_AECFCA: CStrVarTmp
  loc_AECFCB: CVarStr var_D4
  loc_AECFCE: FLdRfVar var_F4
  loc_AECFD1: ImpAdCallFPR4  = Format(, )
  loc_AECFD6: FLdRfVar var_F4
  loc_AECFD9: ConcatVar var_114
  loc_AECFDD: LitVarStr var_124, "'"
  loc_AECFE2: ConcatVar var_134
  loc_AECFE6: LitVarStr var_144, " ORDER BY obreinmu.OrdeObre, CodiInmu"
  loc_AECFEB: ConcatVar var_154
  loc_AECFEF: CStrVarVal var_158
  loc_AECFF3: FLdPr Me
  loc_AECFF6: MemLdRfVar from_stack_1.global_56
  loc_AECFF9: NewIfNullPr clsobreinmu
  loc_AECFFC: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_AED001: FFreeStr var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C0 = ""
  loc_AED012: FFreeAd var_A8 = ""
  loc_AED019: FFreeVar var_94 = "": var_D4 = "": var_E4 = "": var_104 = "": var_F4 = "": var_114 = "": var_134 = ""
  loc_AED02C: LitI4 0
  loc_AED031: LitI4 1
  loc_AED036: FLdRfVar var_15C
  loc_AED039: Redim
  loc_AED043: FLdPr Me
  loc_AED046: MemLdRfVar from_stack_1.global_56
  loc_AED049: NewIfNullAd
  loc_AED04C: FStAd var_A8 
  loc_AED050: FLdRfVar var_A8
  loc_AED053: CVarRef
  loc_AED058: ParmAry1St
  loc_AED05E: FLdPr Me
  loc_AED061: VCallAd Control_ID_dgdABMS2
  loc_AED064: CVarAd
  loc_AED068: ParmAry1St
  loc_AED06E: FLdRfVar var_15C
  loc_AED071: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AED076: ILdRf var_A8
  loc_AED079: CastAd
  loc_AED07C: FLdPr Me
  loc_AED07F: MemStAdFunc
  loc_AED083: FLdRfVar var_15C
  loc_AED086: Erase
  loc_AED087: FFree1Ad var_A8
  loc_AED08A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B8EFC
  'Data Table: 45692C
  loc_9B8EE8: ILdI2 KeyCode
  loc_9B8EEB: CI4UI1
  loc_9B8EEC: LitI4 &H78
  loc_9B8EF1: EqI4
  loc_9B8EF2: BranchF loc_9B8EFA
  loc_9B8EF5: Call SalirCmd_Click()
  loc_9B8EFA: ExitProcHresult
End Sub

Private Sub FenoObinMsk_UnknownEvent_0 '9C3410
  'Data Table: 45692C
  loc_9C33FC: FLdPr Me
  loc_9C33FF: VCallAd Control_ID_FenoObinMsk
  loc_9C3402: CVarAd
  loc_9C3406: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C340B: FFree1Var var_94 = ""
  loc_9C340E: ExitProcHresult
End Sub

Private Sub FenoObinMsk_UnknownEvent_8 'ABEC1C
  'Data Table: 45692C
  loc_ABEB24: FLdPr Me
  loc_ABEB27: VCallAd Control_ID_FenoObinMsk
  loc_ABEB2A: FStAdFunc var_88
  loc_ABEB2D: FLdPr var_88
  loc_ABEB30: LateIdLdVar var_98 DispID_13 -32767
  loc_ABEB37: CBoolVar
  loc_ABEB39: LitI2_Byte &HFF
  loc_ABEB3B: EqI2
  loc_ABEB3C: FFree1Ad var_88
  loc_ABEB3F: FFree1Var var_98 = ""
  loc_ABEB42: BranchF loc_ABEC1A
  loc_ABEB45: LitVarStr var_A8, vbNullString
  loc_ABEB4A: PopAdLdVar
  loc_ABEB4B: FLdPr Me
  loc_ABEB4E: VCallAd Control_ID_FenoObinMsk
  loc_ABEB51: FStAdFunc var_88
  loc_ABEB54: FLdPr var_88
  loc_ABEB57: LateIdSt
  loc_ABEB5C: FFree1Ad var_88
  loc_ABEB5F: FLdPr Me
  loc_ABEB62: VCallAd Control_ID_FenoObinMsk
  loc_ABEB65: FStAdFunc var_88
  loc_ABEB68: FLdPr var_88
  loc_ABEB6B: LateIdLdVar var_98 DispID_22 0
  loc_ABEB72: CStrVarTmp
  loc_ABEB73: FStStrNoPop var_BC
  loc_ABEB76: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABEB7B: FStStrNoPop var_C0
  loc_ABEB7E: FLdPr Me
  loc_ABEB81: MemStStrCopy
  loc_ABEB85: FFreeStr var_BC = ""
  loc_ABEB8C: FFree1Ad var_88
  loc_ABEB8F: FFree1Var var_98 = ""
  loc_ABEB92: LitVarStr var_A8, "##/##/####"
  loc_ABEB97: PopAdLdVar
  loc_ABEB98: FLdPr Me
  loc_ABEB9B: VCallAd Control_ID_FenoObinMsk
  loc_ABEB9E: FStAdFunc var_88
  loc_ABEBA1: FLdPr var_88
  loc_ABEBA4: LateIdSt
  loc_ABEBA9: FFree1Ad var_88
  loc_ABEBAC: LitVarI2 var_A8, 10
  loc_ABEBB1: PopAdLdVar
  loc_ABEBB2: FLdPr Me
  loc_ABEBB5: VCallAd Control_ID_FenoObinMsk
  loc_ABEBB8: FStAdFunc var_88
  loc_ABEBBB: FLdPr var_88
  loc_ABEBBE: LateIdSt
  loc_ABEBC3: FFree1Ad var_88
  loc_ABEBC6: FLdPr Me
  loc_ABEBC9: MemLdStr global_60
  loc_ABEBCC: LitStr vbNullString
  loc_ABEBCF: NeStr
  loc_ABEBD1: BranchF loc_ABEC1A
  loc_ABEBD4: FLdPr Me
  loc_ABEBD7: MemLdStr global_60
  loc_ABEBDA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABEBDF: LitI2_Byte 0
  loc_ABEBE1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABEBE6: CStrDate
  loc_ABEBE8: CVarStr var_98
  loc_ABEBEB: PopAdLdVar
  loc_ABEBEC: FLdPr Me
  loc_ABEBEF: VCallAd Control_ID_FenoObinMsk
  loc_ABEBF2: FStAdFunc var_88
  loc_ABEBF5: FLdPr var_88
  loc_ABEBF8: LateIdSt
  loc_ABEBFD: FFree1Ad var_88
  loc_ABEC00: FFree1Var var_98 = ""
  loc_ABEC03: FLdPr Me
  loc_ABEC06: VCallAd Control_ID_FenoObinMsk
  loc_ABEC09: CVarAd
  loc_ABEC0D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABEC12: FFree1Var var_98 = ""
  loc_ABEC15: LitI2_Byte &HFF
  loc_ABEC17: IStI2 KeyCode
  loc_ABEC1A: ExitProcHresult
End Sub

Private Sub ObseObinTxt_GotFocus() '9C33C8
  'Data Table: 45692C
  loc_9C33B4: FLdPr Me
  loc_9C33B7: VCallAd Control_ID_ObseObinTxt
  loc_9C33BA: CVarAd
  loc_9C33BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C33C3: FFree1Var var_94 = ""
  loc_9C33C6: ExitProcHresult
End Sub

Private Sub ObseObinTxt_Validate(Cancel As Boolean) 'A93108
  'Data Table: 45692C
  loc_A93060: FLdRfVar var_8C
  loc_A93063: FLdPr Me
  loc_A93066: VCallAd Control_ID_ObseObinTxt
  loc_A93069: FStAdFunc var_88
  loc_A9306C: FLdPr var_88
  loc_A9306F:  = Me.Text
  loc_A93074: ILdRf var_8C
  loc_A93077: LitStr vbNullString
  loc_A9307A: NeStr
  loc_A9307C: FFree1Str var_8C
  loc_A9307F: FFree1Ad var_88
  loc_A93082: BranchF loc_A93105
  loc_A93085: FLdRfVar var_8E
  loc_A93088: FLdPr Me
  loc_A9308B: VCallAd Control_ID_ObseObinTxt
  loc_A9308E: FStAdFunc var_88
  loc_A93091: FLdPr var_88
  loc_A93094:  = Me.Enabled
  loc_A93099: FLdI2 var_8E
  loc_A9309C: FFree1Ad var_88
  loc_A9309F: BranchF loc_A93105
  loc_A930A2: FLdRfVar var_8C
  loc_A930A5: FLdPr Me
  loc_A930A8: VCallAd Control_ID_ObseObinTxt
  loc_A930AB: FStAdFunc var_88
  loc_A930AE: FLdPr var_88
  loc_A930B1:  = Me.Text
  loc_A930B6: ILdRf var_8C
  loc_A930B9: LitStr "Observación"
  loc_A930BC: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A930C1: FStStrNoPop var_94
  loc_A930C4: FLdPr Me
  loc_A930C7: MemStStrCopy
  loc_A930CB: FFreeStr var_8C = ""
  loc_A930D2: FFree1Ad var_88
  loc_A930D5: FLdPr Me
  loc_A930D8: MemLdStr global_60
  loc_A930DB: LitStr vbNullString
  loc_A930DE: NeStr
  loc_A930E0: BranchF loc_A93105
  loc_A930E3: FLdPr Me
  loc_A930E6: MemLdStr global_60
  loc_A930E9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A930EE: FLdPr Me
  loc_A930F1: VCallAd Control_ID_ObseObinTxt
  loc_A930F4: CVarAd
  loc_A930F8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A930FD: FFree1Var var_A4 = ""
  loc_A93100: LitI2_Byte &HFF
  loc_A93102: IStI2 Cancel
  loc_A93105: ExitProcHresult
End Sub

Private Sub OrdeObreCmd_Click() 'A90E20
  'Data Table: 45692C
  loc_A90D7C: LitVar_Missing var_A4
  loc_A90D7F: PopAdLdVar
  loc_A90D80: LitVarI4
  loc_A90D88: PopAdLdVar
  loc_A90D89: ImpAdLdRf MemVar_D94524
  loc_A90D8C: NewIfNullPr dlgBuscarObraReem
  loc_A90D8F: dlgBuscarObraReem.Show from_stack_1, from_stack_2
  loc_A90D94: FLdRfVar var_AC
  loc_A90D97: FLdRfVar var_A8
  loc_A90D9A: ImpAdLdRf MemVar_D94524
  loc_A90D9D: NewIfNullPr dlgBuscarObraReem
  loc_A90DA0: from_stack_1v = dlgBuscarObraReem.global_4297336Get()
  loc_A90DA5: FLdPr var_A8
  loc_A90DA8: from_stack_1 = clsobrareem.RecordCount
  loc_A90DAD: ILdRf var_AC
  loc_A90DB0: LitI4 0
  loc_A90DB5: GtI4
  loc_A90DB6: FFree1Ad var_A8
  loc_A90DB9: BranchF loc_A90E0A
  loc_A90DBC: FLdRfVar var_B0
  loc_A90DBF: FLdRfVar var_A8
  loc_A90DC2: ImpAdLdRf MemVar_D94524
  loc_A90DC5: NewIfNullPr dlgBuscarObraReem
  loc_A90DC8: from_stack_1v = dlgBuscarObraReem.global_4297336Get()
  loc_A90DCD: FLdPr var_A8
  loc_A90DD0: from_stack_1 = clsobrareem.OrdeObre
  loc_A90DD5: ILdRf var_B0
  loc_A90DD8: FLdPr Me
  loc_A90DDB: VCallAd Control_ID_OrdeObreTxt
  loc_A90DDE: FStAdFunc var_B4
  loc_A90DE1: FLdPr var_B4
  loc_A90DE4: Me.Text = from_stack_1
  loc_A90DE9: FFree1Str var_B0
  loc_A90DEC: FFreeAd var_A8 = ""
  loc_A90DF3: LitStr vbNullString
  loc_A90DF6: FLdPr Me
  loc_A90DF9: VCallAd Control_ID_CodiInmuTxt
  loc_A90DFC: FStAdFunc var_A8
  loc_A90DFF: FLdPr var_A8
  loc_A90E02: Me.Text = from_stack_1
  loc_A90E07: FFree1Ad var_A8
  loc_A90E0A: FLdPr Me
  loc_A90E0D: VCallAd Control_ID_OrdeObreTxt
  loc_A90E10: CVarAd
  loc_A90E14: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90E19: FFree1Var var_C4 = ""
  loc_A90E1C: ExitProcHresult
  loc_A90E1D: FLdPr arg_5800
End Sub
