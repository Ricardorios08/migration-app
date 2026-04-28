VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscProveedor
  Caption = "Buscar Proveedor por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscProveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 12630
  ClientHeight = 5895
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
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscProveedor.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 12375
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscProveedor.frx":092A
  End
End

Attribute VB_Name = "bscProveedor"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9E7128
  'Data Table: 41D89C
  loc_9E6FFC: LitVarStr var_94, vbNullString
  loc_9E7001: PopAdLdVar
  loc_9E7002: FLdPr Me
  loc_9E7005: VCallAd Control_ID_FiltroMsk
  loc_9E7008: FStAdFunc var_A8
  loc_9E700B: FLdPr var_A8
  loc_9E700E: LateIdSt
  loc_9E7013: FFree1Ad var_A8
  loc_9E7016: FLdRfVar var_AA
  loc_9E7019: FLdPr Me
  loc_9E701C: VCallAd Control_ID_FiltroCbo
  loc_9E701F: FStAdFunc var_A8
  loc_9E7022: FLdPr var_A8
  loc_9E7025:  = Me.ListIndex
  loc_9E702A: FLdI2 var_AA
  loc_9E702D: FStI2 var_AC
  loc_9E7030: FFree1Ad var_A8
  loc_9E7033: FLdI2 var_AC
  loc_9E7036: LitI2_Byte 0
  loc_9E7038: EqI2
  loc_9E7039: BranchF loc_9E7073
  loc_9E703C: LitVarStr var_94, "###########"
  loc_9E7041: PopAdLdVar
  loc_9E7042: FLdPr Me
  loc_9E7045: VCallAd Control_ID_FiltroMsk
  loc_9E7048: FStAdFunc var_A8
  loc_9E704B: FLdPr var_A8
  loc_9E704E: LateIdSt
  loc_9E7053: FFree1Ad var_A8
  loc_9E7056: LitStr "CucuPers"
  loc_9E7059: FStStrCopy var_B0
  loc_9E705C: FLdRfVar var_B0
  loc_9E705F: FLdPr Me
  loc_9E7062: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E7065: NewIfNullPr clsbase
  loc_9E7068: Call clsbase.Sort(from_stack_1v)
  loc_9E706D: FFree1Str var_B0
  loc_9E7070: Branch loc_9E7124
  loc_9E7073: FLdI2 var_AC
  loc_9E7076: LitI2_Byte 1
  loc_9E7078: EqI2
  loc_9E7079: BranchF loc_9E70CD
  loc_9E707C: LitVarStr var_94, "&"
  loc_9E7081: PopAdLdVar
  loc_9E7082: FLdPr Me
  loc_9E7085: VCallAd Control_ID_FiltroMsk
  loc_9E7088: FStAdFunc var_A8
  loc_9E708B: FLdPr var_A8
  loc_9E708E: LateIdSt
  loc_9E7093: FFree1Ad var_A8
  loc_9E7096: LitVarStr var_94, vbNullString
  loc_9E709B: PopAdLdVar
  loc_9E709C: FLdPr Me
  loc_9E709F: VCallAd Control_ID_FiltroMsk
  loc_9E70A2: FStAdFunc var_A8
  loc_9E70A5: FLdPr var_A8
  loc_9E70A8: LateIdSt
  loc_9E70AD: FFree1Ad var_A8
  loc_9E70B0: LitStr "DetaProv"
  loc_9E70B3: FStStrCopy var_B0
  loc_9E70B6: FLdRfVar var_B0
  loc_9E70B9: FLdPr Me
  loc_9E70BC: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E70BF: NewIfNullPr clsbase
  loc_9E70C2: Call clsbase.Sort(from_stack_1v)
  loc_9E70C7: FFree1Str var_B0
  loc_9E70CA: Branch loc_9E7124
  loc_9E70CD: FLdI2 var_AC
  loc_9E70D0: LitI2_Byte 2
  loc_9E70D2: EqI2
  loc_9E70D3: BranchF loc_9E7124
  loc_9E70D6: LitVarStr var_94, "&"
  loc_9E70DB: PopAdLdVar
  loc_9E70DC: FLdPr Me
  loc_9E70DF: VCallAd Control_ID_FiltroMsk
  loc_9E70E2: FStAdFunc var_A8
  loc_9E70E5: FLdPr var_A8
  loc_9E70E8: LateIdSt
  loc_9E70ED: FFree1Ad var_A8
  loc_9E70F0: LitVarStr var_94, vbNullString
  loc_9E70F5: PopAdLdVar
  loc_9E70F6: FLdPr Me
  loc_9E70F9: VCallAd Control_ID_FiltroMsk
  loc_9E70FC: FStAdFunc var_A8
  loc_9E70FF: FLdPr var_A8
  loc_9E7102: LateIdSt
  loc_9E7107: FFree1Ad var_A8
  loc_9E710A: LitStr "FantProv"
  loc_9E710D: FStStrCopy var_B0
  loc_9E7110: FLdRfVar var_B0
  loc_9E7113: FLdPr Me
  loc_9E7116: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E7119: NewIfNullPr clsbase
  loc_9E711C: Call clsbase.Sort(from_stack_1v)
  loc_9E7121: FFree1Str var_B0
  loc_9E7124: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950460
  'Data Table: 41D89C
  loc_95044C: FLdPr Me
  loc_95044F: VCallAd Control_ID_FiltroMsk
  loc_950452: CVarAd
  loc_950456: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95045B: FFree1Var var_94 = ""
  loc_95045E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A71D3C
  'Data Table: 41D89C
  loc_A719A0: ILdRf Me
  loc_A719A3: CastAd
  loc_A719A6: FStAdFunc var_88
  loc_A719A9: FLdRfVar var_88
  loc_A719AC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A719B1: FFree1Ad var_88
  loc_A719B4: FLdPr Me
  loc_A719B7: VCallAd Control_ID_FiltroMsk
  loc_A719BA: FStAdFunc var_88
  loc_A719BD: FLdPr var_88
  loc_A719C0: LateIdLdVar var_98 DispID_22 0
  loc_A719C7: CStrVarTmp
  loc_A719C8: FStStrNoPop var_9C
  loc_A719CB: ImpAdCallI2 Trim$()
  loc_A719D0: FStStrNoPop var_A0
  loc_A719D3: LitStr vbNullString
  loc_A719D6: NeStr
  loc_A719D8: FFreeStr var_9C = ""
  loc_A719DF: FFree1Ad var_88
  loc_A719E2: FFree1Var var_98 = ""
  loc_A719E5: BranchF loc_A71C17
  loc_A719E8: FLdRfVar var_A2
  loc_A719EB: FLdPr Me
  loc_A719EE: VCallAd Control_ID_FiltroCbo
  loc_A719F1: FStAdFunc var_88
  loc_A719F4: FLdPr var_88
  loc_A719F7:  = Me.ListIndex
  loc_A719FC: FLdI2 var_A2
  loc_A719FF: LitI2_Byte 0
  loc_A71A01: EqI2
  loc_A71A02: FFree1Ad var_88
  loc_A71A05: BranchF loc_A71AD5
  loc_A71A08: FLdPr Me
  loc_A71A0B: VCallAd Control_ID_FiltroMsk
  loc_A71A0E: FStAdFunc var_A8
  loc_A71A11: FLdPr var_A8
  loc_A71A14: LateIdLdVar var_B8 DispID_22 0
  loc_A71A1B: PopAd
  loc_A71A1D: LitStr "CucuPers >= '"
  loc_A71A20: FLdPr Me
  loc_A71A23: VCallAd Control_ID_FiltroMsk
  loc_A71A26: FStAdFunc var_88
  loc_A71A29: FLdPr var_88
  loc_A71A2C: LateIdLdVar var_98 DispID_22 0
  loc_A71A33: CStrVarTmp
  loc_A71A34: FStStrNoPop var_9C
  loc_A71A37: ConcatStr
  loc_A71A38: CVarStr var_F8
  loc_A71A3B: LitVarStr var_C8, "0"
  loc_A71A40: FStVarCopyObj var_D8
  loc_A71A43: FLdRfVar var_D8
  loc_A71A46: LitI4 &HB
  loc_A71A4B: FLdRfVar var_B8
  loc_A71A4E: CStrVarTmp
  loc_A71A4F: FStStrNoPop var_A0
  loc_A71A52: FnLenStr
  loc_A71A53: SubI4
  loc_A71A54: FLdRfVar var_E8
  loc_A71A57: ImpAdCallFPR4  = String(, )
  loc_A71A5C: FLdRfVar var_E8
  loc_A71A5F: ConcatVar var_108
  loc_A71A63: LitVarStr var_118, "'"
  loc_A71A68: ConcatVar var_128
  loc_A71A6C: CStrVarTmp
  loc_A71A6D: PopTmpLdAdStr
  loc_A71A71: FLdPr Me
  loc_A71A74: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71A77: NewIfNullPr clsbase
  loc_A71A7A: Call clsbase.Filter(from_stack_1v)
  loc_A71A7F: FFreeStr var_9C = "": var_A0 = ""
  loc_A71A88: FFreeAd var_88 = ""
  loc_A71A8F: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = ""
  loc_A71AA0: LitStr "CUIT-CUIL que comience con "
  loc_A71AA3: FLdPr Me
  loc_A71AA6: VCallAd Control_ID_FiltroMsk
  loc_A71AA9: FStAdFunc var_88
  loc_A71AAC: FLdPr var_88
  loc_A71AAF: LateIdLdVar var_98 DispID_22 0
  loc_A71AB6: CStrVarTmp
  loc_A71AB7: FStStrNoPop var_9C
  loc_A71ABA: ConcatStr
  loc_A71ABB: FStStrNoPop var_A0
  loc_A71ABE: FLdPr Me
  loc_A71AC1: MemStStrCopy
  loc_A71AC5: FFreeStr var_9C = ""
  loc_A71ACC: FFree1Ad var_88
  loc_A71ACF: FFree1Var var_98 = ""
  loc_A71AD2: Branch loc_A71C14
  loc_A71AD5: FLdRfVar var_A2
  loc_A71AD8: FLdPr Me
  loc_A71ADB: VCallAd Control_ID_FiltroCbo
  loc_A71ADE: FStAdFunc var_88
  loc_A71AE1: FLdPr var_88
  loc_A71AE4:  = Me.ListIndex
  loc_A71AE9: FLdI2 var_A2
  loc_A71AEC: LitI2_Byte 1
  loc_A71AEE: EqI2
  loc_A71AEF: FFree1Ad var_88
  loc_A71AF2: BranchF loc_A71B76
  loc_A71AF5: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A71AF8: FLdPr Me
  loc_A71AFB: VCallAd Control_ID_FiltroMsk
  loc_A71AFE: FStAdFunc var_88
  loc_A71B01: FLdPr var_88
  loc_A71B04: LateIdLdVar var_98 DispID_22 0
  loc_A71B0B: CStrVarTmp
  loc_A71B0C: FStStrNoPop var_9C
  loc_A71B0F: ConcatStr
  loc_A71B10: FStStrNoPop var_A0
  loc_A71B13: LitStr Chr(37) & "'"
  loc_A71B16: ConcatStr
  loc_A71B17: PopTmpLdAdStr
  loc_A71B1B: FLdPr Me
  loc_A71B1E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71B21: NewIfNullPr clsbase
  loc_A71B24: Call clsbase.Filter(from_stack_1v)
  loc_A71B29: FFreeStr var_9C = "": var_A0 = ""
  loc_A71B32: FFree1Ad var_88
  loc_A71B35: FFree1Var var_98 = ""
  loc_A71B38: LitStr "detalle que contiene "
  loc_A71B3B: FLdPr Me
  loc_A71B3E: VCallAd Control_ID_FiltroMsk
  loc_A71B41: FStAdFunc var_88
  loc_A71B44: FLdPr var_88
  loc_A71B47: LateIdLdVar var_98 DispID_22 0
  loc_A71B4E: CStrVarTmp
  loc_A71B4F: FStStrNoPop var_9C
  loc_A71B52: ConcatStr
  loc_A71B53: FStStrNoPop var_A0
  loc_A71B56: LitStr vbNullString
  loc_A71B59: ConcatStr
  loc_A71B5A: FStStrNoPop var_12C
  loc_A71B5D: FLdPr Me
  loc_A71B60: MemStStrCopy
  loc_A71B64: FFreeStr var_9C = "": var_A0 = ""
  loc_A71B6D: FFree1Ad var_88
  loc_A71B70: FFree1Var var_98 = ""
  loc_A71B73: Branch loc_A71C14
  loc_A71B76: FLdRfVar var_A2
  loc_A71B79: FLdPr Me
  loc_A71B7C: VCallAd Control_ID_FiltroCbo
  loc_A71B7F: FStAdFunc var_88
  loc_A71B82: FLdPr var_88
  loc_A71B85:  = Me.ListIndex
  loc_A71B8A: FLdI2 var_A2
  loc_A71B8D: LitI2_Byte 2
  loc_A71B8F: EqI2
  loc_A71B90: FFree1Ad var_88
  loc_A71B93: BranchF loc_A71C14
  loc_A71B96: LitStr "FantProv LIKE '" & Chr(37)
  loc_A71B99: FLdPr Me
  loc_A71B9C: VCallAd Control_ID_FiltroMsk
  loc_A71B9F: FStAdFunc var_88
  loc_A71BA2: FLdPr var_88
  loc_A71BA5: LateIdLdVar var_98 DispID_22 0
  loc_A71BAC: CStrVarTmp
  loc_A71BAD: FStStrNoPop var_9C
  loc_A71BB0: ConcatStr
  loc_A71BB1: FStStrNoPop var_A0
  loc_A71BB4: LitStr Chr(37) & "'"
  loc_A71BB7: ConcatStr
  loc_A71BB8: PopTmpLdAdStr
  loc_A71BBC: FLdPr Me
  loc_A71BBF: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71BC2: NewIfNullPr clsbase
  loc_A71BC5: Call clsbase.Filter(from_stack_1v)
  loc_A71BCA: FFreeStr var_9C = "": var_A0 = ""
  loc_A71BD3: FFree1Ad var_88
  loc_A71BD6: FFree1Var var_98 = ""
  loc_A71BD9: LitStr "fantasía que contiene "
  loc_A71BDC: FLdPr Me
  loc_A71BDF: VCallAd Control_ID_FiltroMsk
  loc_A71BE2: FStAdFunc var_88
  loc_A71BE5: FLdPr var_88
  loc_A71BE8: LateIdLdVar var_98 DispID_22 0
  loc_A71BEF: CStrVarTmp
  loc_A71BF0: FStStrNoPop var_9C
  loc_A71BF3: ConcatStr
  loc_A71BF4: FStStrNoPop var_A0
  loc_A71BF7: LitStr vbNullString
  loc_A71BFA: ConcatStr
  loc_A71BFB: FStStrNoPop var_12C
  loc_A71BFE: FLdPr Me
  loc_A71C01: MemStStrCopy
  loc_A71C05: FFreeStr var_9C = "": var_A0 = ""
  loc_A71C0E: FFree1Ad var_88
  loc_A71C11: FFree1Var var_98 = ""
  loc_A71C14: Branch loc_A71C3B
  loc_A71C17: LitStr vbNullString
  loc_A71C1A: FStStrCopy var_9C
  loc_A71C1D: FLdRfVar var_9C
  loc_A71C20: FLdPr Me
  loc_A71C23: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71C26: NewIfNullPr clsbase
  loc_A71C29: Call clsbase.Filter(from_stack_1v)
  loc_A71C2E: FFree1Str var_9C
  loc_A71C31: LitStr vbNullString
  loc_A71C34: FLdPr Me
  loc_A71C37: MemStStrCopy
  loc_A71C3B: FLdRfVar var_130
  loc_A71C3E: FLdPr Me
  loc_A71C41: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71C44: NewIfNullPr clsbase
  loc_A71C47: from_stack_1 = clsbase.RecordCount
  loc_A71C4C: ILdRf var_130
  loc_A71C4F: LitI4 0
  loc_A71C54: GtI4
  loc_A71C55: BranchF loc_A71CF3
  loc_A71C58: FLdPr Me
  loc_A71C5B: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71C5E: NewIfNullAd
  loc_A71C61: FStAd var_A8 
  loc_A71C65: FLdRfVar var_A8
  loc_A71C68: CVarRef
  loc_A71C6D: ILdRf Me
  loc_A71C70: CastAd
  loc_A71C73: FStAdFunc var_88
  loc_A71C76: FLdRfVar var_88
  loc_A71C79: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A71C7E: ILdRf var_A8
  loc_A71C81: CastAd
  loc_A71C84: FLdPr Me
  loc_A71C87: MemStAdFunc
  loc_A71C8B: FFreeAd var_88 = ""
  loc_A71C92: LitI4 0
  loc_A71C97: LitI4 1
  loc_A71C9C: FLdRfVar var_134
  loc_A71C9F: Redim
  loc_A71CA9: FLdPr Me
  loc_A71CAC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71CAF: NewIfNullAd
  loc_A71CB2: FStAd var_88 
  loc_A71CB6: FLdRfVar var_88
  loc_A71CB9: CVarRef
  loc_A71CBE: ParmAry1St
  loc_A71CC4: FLdPr Me
  loc_A71CC7: VCallAd Control_ID_dgdABMS
  loc_A71CCA: CVarAd
  loc_A71CCE: ParmAry1St
  loc_A71CD4: FLdRfVar var_134
  loc_A71CD7: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A71CDC: ILdRf var_88
  loc_A71CDF: CastAd
  loc_A71CE2: FLdPr Me
  loc_A71CE5: MemStAdFunc
  loc_A71CE9: FLdRfVar var_134
  loc_A71CEC: Erase
  loc_A71CED: FFree1Ad var_88
  loc_A71CF0: Branch loc_A71D07
  loc_A71CF3: ILdRf Me
  loc_A71CF6: CastAd
  loc_A71CF9: FStAdFunc var_88
  loc_A71CFC: FLdRfVar var_88
  loc_A71CFF: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A71D04: FFree1Ad var_88
  loc_A71D07: FLdPr Me
  loc_A71D0A: VCallAd Control_ID_dgdABMS
  loc_A71D0D: FStAdFunc var_A8
  loc_A71D10: LitI4 0
  loc_A71D15: FStStrCopy var_9C
  loc_A71D18: FLdRfVar var_9C
  loc_A71D1B: FLdPr Me
  loc_A71D1E: MemLdStr sFiltro
  loc_A71D21: FLdZeroAd var_A8
  loc_A71D24: FStAdFunc var_88
  loc_A71D27: FLdRfVar var_88
  loc_A71D2A: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A71D2F: FFree1Str var_9C
  loc_A71D32: FFreeAd var_88 = ""
  loc_A71D39: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997EE4
  'Data Table: 41D89C
  loc_997E80: ILdI2 KeyAscii
  loc_997E83: LitI2_Byte &H27
  loc_997E85: EqI2
  loc_997E86: BranchF loc_997E8E
  loc_997E89: LitI2_Byte 0
  loc_997E8B: IStI2 KeyAscii
  loc_997E8E: FLdRfVar var_88
  loc_997E91: FLdPr Me
  loc_997E94: MemLdRfVar from_stack_1.BuscarCLS
  loc_997E97: NewIfNullPr clsbase
  loc_997E9A: from_stack_1 = clsbase.RecordCount
  loc_997E9F: ILdRf var_88
  loc_997EA2: LitI4 0
  loc_997EA7: EqI4
  loc_997EA8: ILdI2 KeyAscii
  loc_997EAB: CI4UI1
  loc_997EAC: LitI4 8
  loc_997EB1: NeI4
  loc_997EB2: AndI4
  loc_997EB3: FLdPr Me
  loc_997EB6: VCallAd Control_ID_FiltroMsk
  loc_997EB9: FStAdFunc var_8C
  loc_997EBC: FLdPr var_8C
  loc_997EBF: LateIdLdVar var_9C DispID_16 0
  loc_997EC6: CStrVarTmp
  loc_997EC7: FStStrNoPop var_A0
  loc_997ECA: LitStr vbNullString
  loc_997ECD: EqStr
  loc_997ECF: AndI4
  loc_997ED0: FFree1Str var_A0
  loc_997ED3: FFree1Ad var_8C
  loc_997ED6: FFree1Var var_9C = ""
  loc_997ED9: BranchF loc_997EE1
  loc_997EDC: LitI2_Byte 0
  loc_997EDE: IStI2 KeyAscii
  loc_997EE1: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955150
  'Data Table: 41D89C
  loc_955138: FLdPr Me
  loc_95513B: VCallAd Control_ID_dgdABMS
  loc_95513E: FStAdFunc var_88
  loc_955141: FLdRfVar var_88
  loc_955144: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955149: FFree1Ad var_88
  loc_95514C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '959ECC
  'Data Table: 41D89C
  loc_959EB4: FLdPr Me
  loc_959EB7: VCallAd Control_ID_dgdABMS
  loc_959EBA: FStAdFunc var_88
  loc_959EBD: FLdRfVar var_88
  loc_959EC0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_959EC5: FFree1Ad var_88
  loc_959EC8: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '95519C
  'Data Table: 41D89C
  loc_955184: ILdRf Me
  loc_955187: FStAdNoPop
  loc_95518B: ImpAdLdRf MemVar_C44F9C
  loc_95518E: NewIfNullPr Me
  loc_955191: Me.Global.Unload from_stack_1
  loc_955196: FFree1Ad var_88
  loc_955199: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999748
  'Data Table: 41D89C
  loc_9996EC: FLdRfVar var_B4
  loc_9996EF: FLdRfVar var_B0
  loc_9996F2: FLdI2 ColIndex
  loc_9996F5: CVarI2 var_A8
  loc_9996F8: PopAdLdVar
  loc_9996F9: FLdPr Me
  loc_9996FC: VCallAd Control_ID_dgdABMS
  loc_9996FF: FStAdFunc var_88
  loc_999702: FLdPr var_88
  loc_999705: LateIdLdVar var_98 DispID_105 0
  loc_99970C: CastAdVar Me
  loc_999710: FStAdFunc var_AC
  loc_999713: FLdPr var_AC
  loc_999716: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99971B: FLdPr var_B0
  loc_99971E:  = Me.DataField
  loc_999723: FLdZeroAd var_B4
  loc_999726: PopTmpLdAdStr
  loc_99972A: FLdPr Me
  loc_99972D: MemLdRfVar from_stack_1.BuscarCLS
  loc_999730: NewIfNullPr clsbase
  loc_999733: Call clsbase.Sort(from_stack_1v)
  loc_999738: FFree1Str var_B8
  loc_99973B: FFreeAd var_88 = "": var_AC = ""
  loc_999744: FFree1Var var_98 = ""
  loc_999747: ExitProcHresult
End Sub

Private Sub OKButton_Click() '954F88
  'Data Table: 41D89C
  loc_954F70: ILdRf Me
  loc_954F73: FStAdNoPop
  loc_954F77: ImpAdLdRf MemVar_C44F9C
  loc_954F7A: NewIfNullPr Me
  loc_954F7D: Me.Global.Unload from_stack_1
  loc_954F82: FFree1Ad var_88
  loc_954F85: ExitProcHresult
End Sub

Private Sub Form_Load() 'A17904
  'Data Table: 41D89C
  loc_A1779C: FLdRfVar var_88
  loc_A1779F: FLdPr Me
  loc_A177A2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A177A5: NewIfNullPr clsbase
  loc_A177A8: from_stack_1v = clsbase.RsFrmGet()
  loc_A177AD: ILdRf var_88
  loc_A177B0: LitNothing
  loc_A177B2: Is
  loc_A177B4: FFree1Ad var_88
  loc_A177B7: BranchF loc_A17835
  loc_A177BA: LitStr "SELECT proveedor.*, DecrPers, TelePers, CeluPers, MailPers"
  loc_A177BD: LitStr " FROM proveedor"
  loc_A177C0: ConcatStr
  loc_A177C1: FStStrNoPop var_8C
  loc_A177C4: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_A177C7: ConcatStr
  loc_A177C8: FStStrNoPop var_90
  loc_A177CB: LitStr " WHERE TRUE "
  loc_A177CE: ConcatStr
  loc_A177CF: CVarStr var_100
  loc_A177D2: LitVarStr var_D0, " AND proveedor.BajaFeho Is Null "
  loc_A177D7: FStVarCopyObj var_E0
  loc_A177DA: FLdRfVar var_E0
  loc_A177DD: LitVarStr var_B0, vbNullString
  loc_A177E2: FStVarCopyObj var_C0
  loc_A177E5: FLdRfVar var_C0
  loc_A177E8: FLdPr Me
  loc_A177EB: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A177EE: CVarRef
  loc_A177F3: FLdRfVar var_F0
  loc_A177F6: ImpAdCallFPR4  = IIf(, , )
  loc_A177FB: FLdRfVar var_F0
  loc_A177FE: ConcatVar var_110
  loc_A17802: LitVarStr var_120, " ORDER BY TRUE;"
  loc_A17807: ConcatVar var_130
  loc_A1780B: CStrVarVal var_134
  loc_A1780F: FLdPr Me
  loc_A17812: MemLdRfVar from_stack_1.BuscarCLS
  loc_A17815: NewIfNullPr clsbase
  loc_A17818: Call clsbase.RedefineRS(from_stack_1v)
  loc_A1781D: FFreeStr var_8C = "": var_90 = ""
  loc_A17826: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_A17835: LitVarI2 var_A0, 0
  loc_A1783A: PopAdLdVar
  loc_A1783B: LitStr "CUIT-CUIL"
  loc_A1783E: FLdPr Me
  loc_A17841: VCallAd Control_ID_FiltroCbo
  loc_A17844: FStAdFunc var_88
  loc_A17847: FLdPr var_88
  loc_A1784A: Me.AddItem from_stack_1, from_stack_2
  loc_A1784F: FFree1Ad var_88
  loc_A17852: LitVarI2 var_A0, 1
  loc_A17857: PopAdLdVar
  loc_A17858: LitStr "Proveedor (Detalle)"
  loc_A1785B: FLdPr Me
  loc_A1785E: VCallAd Control_ID_FiltroCbo
  loc_A17861: FStAdFunc var_88
  loc_A17864: FLdPr var_88
  loc_A17867: Me.AddItem from_stack_1, from_stack_2
  loc_A1786C: FFree1Ad var_88
  loc_A1786F: LitVarI2 var_A0, 2
  loc_A17874: PopAdLdVar
  loc_A17875: LitStr "Proveedor (Fantasía)"
  loc_A17878: FLdPr Me
  loc_A1787B: VCallAd Control_ID_FiltroCbo
  loc_A1787E: FStAdFunc var_88
  loc_A17881: FLdPr var_88
  loc_A17884: Me.AddItem from_stack_1, from_stack_2
  loc_A17889: FFree1Ad var_88
  loc_A1788C: LitI2_Byte 1
  loc_A1788E: FLdPr Me
  loc_A17891: VCallAd Control_ID_FiltroCbo
  loc_A17894: FStAdFunc var_88
  loc_A17897: FLdPr var_88
  loc_A1789A: Me.ListIndex = from_stack_1
  loc_A1789F: FFree1Ad var_88
  loc_A178A2: LitI4 0
  loc_A178A7: LitI4 1
  loc_A178AC: FLdRfVar var_138
  loc_A178AF: Redim
  loc_A178B9: FLdPr Me
  loc_A178BC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A178BF: NewIfNullAd
  loc_A178C2: FStAd var_88 
  loc_A178C6: FLdRfVar var_88
  loc_A178C9: CVarRef
  loc_A178CE: ParmAry1St
  loc_A178D4: FLdPr Me
  loc_A178D7: VCallAd Control_ID_dgdABMS
  loc_A178DA: CVarAd
  loc_A178DE: ParmAry1St
  loc_A178E4: FLdRfVar var_138
  loc_A178E7: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A178EC: ILdRf var_88
  loc_A178EF: CastAd
  loc_A178F2: FLdPr Me
  loc_A178F5: MemStAdFunc
  loc_A178F9: FLdRfVar var_138
  loc_A178FC: Erase
  loc_A178FD: FFree1Ad var_88
  loc_A17900: ExitProcHresult
  loc_A17901: FnStrComp3Var
End Sub

Private Sub Form_Unload(Cancel As Integer) '96C958
  'Data Table: 41D89C
  loc_96C938: LitI2_Byte 0
  loc_96C93A: FLdPr Me
  loc_96C93D: MemStI2 MuestroAnulados
  loc_96C940: ILdRf Me
  loc_96C943: FStAdNoPop
  loc_96C947: ImpAdLdRf MemVar_C44F9C
  loc_96C94A: NewIfNullPr Me
  loc_96C94D: Me.Global.Unload from_stack_1
  loc_96C952: FFree1Ad var_88
  loc_96C955: ExitProcHresult
  loc_96C956: GtI4
End Sub

Private Sub Form_Activate() '952B78
  'Data Table: 41D89C
  loc_952B64: FLdPr Me
  loc_952B67: VCallAd Control_ID_FiltroMsk
  loc_952B6A: CVarAd
  loc_952B6E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_952B73: FFree1Var var_94 = ""
  loc_952B76: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A550
  'Data Table: 41D89C
  loc_96A534: On Error Resume Next
  loc_96A539: ILdI2 KeyAscii
  loc_96A53C: CI4UI1
  loc_96A53D: LitI4 &HD
  loc_96A542: EqI4
  loc_96A543: BranchF loc_96A54D
  loc_96A548: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A54F: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41DD94
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41DDA3
  MuestroAnulados = Value
End Sub

Public Function global_4315292Get() '41DDB2
  global_4315292Get = global_4315292
End Function

Public Sub global_4315292Put(Value) '41DDCC
  global_4315292 = Value
End Sub

Public Sub global_4315292Set(Value) '41DDE6
  global_4315292 = Value
End Sub

Public Function sFiltroGet() '41DE00
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41DE0F
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) '9ACDAC
  'Data Table: 41D89C
  loc_9ACD28: ILdRf sWhere
  loc_9ACD2B: FStStrCopy var_88
  loc_9ACD2E: LitStr "SELECT proveedor.*, DecrPers, TelePers, CeluPers, MailPers"
  loc_9ACD31: LitStr " FROM proveedor"
  loc_9ACD34: ConcatStr
  loc_9ACD35: FStStrNoPop var_8C
  loc_9ACD38: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_9ACD3B: ConcatStr
  loc_9ACD3C: FStStrNoPop var_90
  loc_9ACD3F: LitStr " WHERE TRUE "
  loc_9ACD42: ConcatStr
  loc_9ACD43: CVarStr var_100
  loc_9ACD46: LitVarStr var_D0, " AND proveedor.BajaFeho Is Null "
  loc_9ACD4B: FStVarCopyObj var_E0
  loc_9ACD4E: FLdRfVar var_E0
  loc_9ACD51: LitVarStr var_B0, vbNullString
  loc_9ACD56: FStVarCopyObj var_C0
  loc_9ACD59: FLdRfVar var_C0
  loc_9ACD5C: FLdPr Me
  loc_9ACD5F: MemLdRfVar from_stack_1.MuestroAnulados
  loc_9ACD62: CVarRef
  loc_9ACD67: FLdRfVar var_F0
  loc_9ACD6A: ImpAdCallFPR4  = IIf(, , )
  loc_9ACD6F: FLdRfVar var_F0
  loc_9ACD72: ConcatVar var_110
  loc_9ACD76: ILdRf var_88
  loc_9ACD79: CVarStr var_120
  loc_9ACD7C: ConcatVar var_130
  loc_9ACD80: CStrVarVal var_134
  loc_9ACD84: FLdPr Me
  loc_9ACD87: MemLdRfVar from_stack_1.BuscarCLS
  loc_9ACD8A: NewIfNullPr clsbase
  loc_9ACD8D: Call clsbase.RedefineRS(from_stack_1v)
  loc_9ACD92: FFreeStr var_8C = "": var_90 = ""
  loc_9ACD9B: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_9ACDAA: ExitProcHresult
End Sub
