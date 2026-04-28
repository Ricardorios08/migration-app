VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsorganigrama"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '410190
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '41019F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4101AE
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96F204
  'Data Table: 40FF4C
  loc_96F1DC: FLdRfVar var_88
  loc_96F1DF: FLdPr Me
  loc_96F1E2: MemLdPr RsFrm
  loc_96F1E5:  = Me.RecordCount
  loc_96F1EA: ILdRf var_88
  loc_96F1ED: LitI4 0
  loc_96F1F2: GtI4
  loc_96F1F3: BranchF loc_96F201
  loc_96F1F6: FLdPr Me
  loc_96F1F9: MemLdPr RsFrm
  loc_96F1FC: Me.MoveFirst
  loc_96F201: ExitProcHresult
  loc_96F202: NewIfNullPr Me
End Sub

Public Sub MoveLast() '96F154
  'Data Table: 40FF4C
  loc_96F12C: FLdRfVar var_88
  loc_96F12F: FLdPr Me
  loc_96F132: MemLdPr RsFrm
  loc_96F135:  = Me.RecordCount
  loc_96F13A: ILdRf var_88
  loc_96F13D: LitI4 0
  loc_96F142: GtI4
  loc_96F143: BranchF loc_96F151
  loc_96F146: FLdPr Me
  loc_96F149: MemLdPr RsFrm
  loc_96F14C: Me.MoveLast
  loc_96F151: ExitProcHresult
End Sub

Public Sub MoveNext() '99FB60
  'Data Table: 40FF4C
  loc_99FAE8: FLdRfVar var_86
  loc_99FAEB: FLdPr Me
  loc_99FAEE: MemLdPr RsFrm
  loc_99FAF1:  = Me.EOF
  loc_99FAF6: FLdI2 var_86
  loc_99FAF9: NotI4
  loc_99FAFA: FLdRfVar var_8C
  loc_99FAFD: FLdPr Me
  loc_99FB00: MemLdPr RsFrm
  loc_99FB03:  = Me.RecordCount
  loc_99FB08: ILdRf var_8C
  loc_99FB0B: LitI4 0
  loc_99FB10: GtI4
  loc_99FB11: AndI4
  loc_99FB12: BranchF loc_99FB20
  loc_99FB15: FLdPr Me
  loc_99FB18: MemLdPr RsFrm
  loc_99FB1B: Me.MoveNext
  loc_99FB20: FLdRfVar var_86
  loc_99FB23: FLdPr Me
  loc_99FB26: MemLdPr RsFrm
  loc_99FB29:  = Me.EOF
  loc_99FB2E: FLdI2 var_86
  loc_99FB31: FLdRfVar var_8C
  loc_99FB34: FLdPr Me
  loc_99FB37: MemLdPr RsFrm
  loc_99FB3A:  = Me.RecordCount
  loc_99FB3F: ILdRf var_8C
  loc_99FB42: LitI4 0
  loc_99FB47: GtI4
  loc_99FB48: AndI4
  loc_99FB49: BranchF loc_99FB5C
  loc_99FB4C: ImpAdCallFPR4 Beep()
  loc_99FB51: FLdPr Me
  loc_99FB54: MemLdPr RsFrm
  loc_99FB57: Me.MoveLast
  loc_99FB5C: ExitProcHresult
  loc_99FB5D: FLdRfVar var_A8
End Sub

Public Sub MoveSiguiente() '942188
  'Data Table: 40FF4C
  loc_94217C: FLdPr Me
  loc_94217F: MemLdPr RsFrm
  loc_942182: Me.MoveNext
  loc_942187: ExitProcHresult
End Sub

Public Sub MovePrevious() '99FAB8
  'Data Table: 40FF4C
  loc_99FA40: FLdRfVar var_86
  loc_99FA43: FLdPr Me
  loc_99FA46: MemLdPr RsFrm
  loc_99FA49:  = Me.BOF
  loc_99FA4E: FLdI2 var_86
  loc_99FA51: NotI4
  loc_99FA52: FLdRfVar var_8C
  loc_99FA55: FLdPr Me
  loc_99FA58: MemLdPr RsFrm
  loc_99FA5B:  = Me.RecordCount
  loc_99FA60: ILdRf var_8C
  loc_99FA63: LitI4 0
  loc_99FA68: GtI4
  loc_99FA69: AndI4
  loc_99FA6A: BranchF loc_99FA78
  loc_99FA6D: FLdPr Me
  loc_99FA70: MemLdPr RsFrm
  loc_99FA73: Me.MovePrevious
  loc_99FA78: FLdRfVar var_86
  loc_99FA7B: FLdPr Me
  loc_99FA7E: MemLdPr RsFrm
  loc_99FA81:  = Me.BOF
  loc_99FA86: FLdI2 var_86
  loc_99FA89: FLdRfVar var_8C
  loc_99FA8C: FLdPr Me
  loc_99FA8F: MemLdPr RsFrm
  loc_99FA92:  = Me.RecordCount
  loc_99FA97: ILdRf var_8C
  loc_99FA9A: LitI4 0
  loc_99FA9F: GtI4
  loc_99FAA0: AndI4
  loc_99FAA1: BranchF loc_99FAB4
  loc_99FAA4: ImpAdCallFPR4 Beep()
  loc_99FAA9: FLdPr Me
  loc_99FAAC: MemLdPr RsFrm
  loc_99FAAF: Me.MoveFirst
  loc_99FAB4: ExitProcHresult
End Sub

Public Property Get EOF() '95A214
  'Data Table: 40FF4C
  loc_95A1F8: FLdRfVar var_88
  loc_95A1FB: FLdPr Me
  loc_95A1FE: MemLdPr RsFrm
  loc_95A201:  = Me.EOF
  loc_95A206: FLdI2 var_88
  loc_95A209: FStI2 var_86
  loc_95A20C: ExitProcCbHresult
  loc_95A212: NewIfNullAd
End Sub

Public Property Get BOF() '95A1C8
  'Data Table: 40FF4C
  loc_95A1AC: FLdRfVar var_88
  loc_95A1AF: FLdPr Me
  loc_95A1B2: MemLdPr RsFrm
  loc_95A1B5:  = Me.BOF
  loc_95A1BA: FLdI2 var_88
  loc_95A1BD: FStI2 var_86
  loc_95A1C0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946844
  'Data Table: 40FF4C
  loc_946834: ILdI4 sOrden
  loc_946837: FLdPr Me
  loc_94683A: MemLdPr RsFrm
  loc_94683D: Me.Sort = from_stack_1
  loc_946842: ExitProcHresult
End Sub

Public Sub Find(sFind) '969060
  'Data Table: 40FF4C
  loc_969040: LitVar_Missing var_94
  loc_969043: PopAdLdVar
  loc_969044: LitI4 1
  loc_969049: LitI4 0
  loc_96904E: ILdI4 sFind
  loc_969051: FLdPr Me
  loc_969054: MemLdPr RsFrm
  loc_969057: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96905C: ExitProcHresult
  loc_96905D: FStFPR8 var_301
End Sub

Public Sub Filter(sCriterio) '948D64
  'Data Table: 40FF4C
  loc_948D50: ILdI4 sCriterio
  loc_948D53: CVarStr var_94
  loc_948D56: PopAdLdVar
  loc_948D57: FLdPr Me
  loc_948D5A: MemLdPr RsFrm
  loc_948D5D: Me.Filter = from_stack_1
  loc_948D62: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95A0E4
  'Data Table: 40FF4C
  loc_95A0C8: FLdRfVar var_8C
  loc_95A0CB: FLdPr Me
  loc_95A0CE: MemLdPr RsFrm
  loc_95A0D1:  = Me.AbsolutePosition
  loc_95A0D6: ILdRf var_8C
  loc_95A0D9: FStR4 var_88
  loc_95A0DC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95A098
  'Data Table: 40FF4C
  loc_95A07C: FLdRfVar var_8C
  loc_95A07F: FLdPr Me
  loc_95A082: MemLdPr RsFrm
  loc_95A085:  = Me.RecordCount
  loc_95A08A: ILdRf var_8C
  loc_95A08D: FStR4 var_88
  loc_95A090: ExitProcCbHresult
End Sub

Public Function AddNew(PeriInfo, CodiOrga, DetaOrga, CucuPers, CredOrga, CoesOrga, MailOrga) 'A16A70
  'Data Table: 40FF4C
  loc_A1693C: ILdRf CodiOrga
  loc_A1693F: FStStrCopy var_8C
  loc_A16942: ILdRf DetaOrga
  loc_A16945: FStStrCopy var_90
  loc_A16948: ILdRf CucuPers
  loc_A1694B: FStStrCopy AddNew
  loc_A1694E: ILdRf CredOrga
  loc_A16951: FStStrCopy var_98
  loc_A16954: ILdRf CoesOrga
  loc_A16957: FStStrCopy var_9C
  loc_A1695A: ILdRf MailOrga
  loc_A1695D: FStStrCopy var_A0
  loc_A16960: ZeroRetVal
  loc_A16962: OnErrorGoto loc_A16A59
  loc_A16965: FLdRfVar var_A8
  loc_A16968: ILdRf var_8C
  loc_A1696B: FLdI2 PeriInfo
  loc_A1696E: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A16973: FLdZeroAd var_A8
  loc_A16976: FStStr var_A4
  loc_A16979: ILdRf var_A4
  loc_A1697C: LitStr vbNullString
  loc_A1697F: NeStr
  loc_A16981: BranchF loc_A1698D
  loc_A16984: ILdRf var_A4
  loc_A16987: FStStrCopy var_88
  loc_A1698A: Branch loc_A16A53
  loc_A1698D: LitStr "START TRANSACTION;"
  loc_A16990: Call EjecutarRsCls(from_stack_1v)
  loc_A16995: LitStr "INSERT INTO infogov.organigrama (PeriInfo,CodiOrga,DetaOrga,CucuPers,CredOrga,CoesOrga,MailOrga,AltaUsua)"
  loc_A16998: LitStr " VALUES ("
  loc_A1699B: ConcatStr
  loc_A1699C: FStStrNoPop var_A8
  loc_A1699F: FLdI2 PeriInfo
  loc_A169A2: CStrUI1
  loc_A169A4: FStStrNoPop var_AC
  loc_A169A7: ConcatStr
  loc_A169A8: FStStrNoPop var_B0
  loc_A169AB: LitStr ",'"
  loc_A169AE: ConcatStr
  loc_A169AF: FStStrNoPop var_B4
  loc_A169B2: ILdRf var_8C
  loc_A169B5: ConcatStr
  loc_A169B6: FStStrNoPop var_B8
  loc_A169B9: LitStr "','"
  loc_A169BC: ConcatStr
  loc_A169BD: FStStrNoPop var_BC
  loc_A169C0: ILdRf var_90
  loc_A169C3: ConcatStr
  loc_A169C4: FStStrNoPop var_C0
  loc_A169C7: LitStr "','"
  loc_A169CA: ConcatStr
  loc_A169CB: FStStrNoPop var_C4
  loc_A169CE: ILdRf AddNew
  loc_A169D1: ConcatStr
  loc_A169D2: FStStrNoPop var_C8
  loc_A169D5: LitStr "','"
  loc_A169D8: ConcatStr
  loc_A169D9: FStStrNoPop var_CC
  loc_A169DC: ILdRf var_98
  loc_A169DF: ConcatStr
  loc_A169E0: FStStrNoPop var_D0
  loc_A169E3: LitStr "','"
  loc_A169E6: ConcatStr
  loc_A169E7: FStStrNoPop var_D4
  loc_A169EA: ILdRf var_9C
  loc_A169ED: ConcatStr
  loc_A169EE: FStStrNoPop var_D8
  loc_A169F1: LitStr "','"
  loc_A169F4: ConcatStr
  loc_A169F5: FStStrNoPop var_DC
  loc_A169F8: ILdRf var_A0
  loc_A169FB: ConcatStr
  loc_A169FC: FStStrNoPop var_E0
  loc_A169FF: LitStr "','"
  loc_A16A02: ConcatStr
  loc_A16A03: FStStrNoPop var_E4
  loc_A16A06: ImpAdLdI4 MemVar_C3D03C
  loc_A16A09: ConcatStr
  loc_A16A0A: FStStrNoPop var_E8
  loc_A16A0D: LitStr "');"
  loc_A16A10: ConcatStr
  loc_A16A11: FStStrNoPop var_EC
  loc_A16A14: Call EjecutarRsCls(from_stack_1v)
  loc_A16A19: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A16A40: LitStr "COMMIT;"
  loc_A16A43: Call EjecutarRsCls(from_stack_1v)
  loc_A16A48: ILdRf var_8C
  loc_A16A4B: FLdI2 PeriInfo
  loc_A16A4E: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A16A53: ExitProcCbHresult
  loc_A16A59: LitStr "ROLLBACK;"
  loc_A16A5C: Call EjecutarRsCls(from_stack_1v)
  loc_A16A61: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A16A64: FStStrCopy var_88
  loc_A16A67: ExitProcCbHresult
End Function

Public Sub Modificar(DetaOrga, CucuPers, CredOrga, CredOrgaG, CoesOrga, MailOrga) 'A40D78
  'Data Table: 40FF4C
  loc_A40B90: ILdRf DetaOrga
  loc_A40B93: FStStrCopy var_88
  loc_A40B96: ILdRf CucuPers
  loc_A40B99: FStStrCopy var_8C
  loc_A40B9C: ILdRf CredOrga
  loc_A40B9F: FStStrCopy var_90
  loc_A40BA2: ILdRf CredOrgaG
  loc_A40BA5: FStStrCopy var_94
  loc_A40BA8: ILdRf CoesOrga
  loc_A40BAB: FStStrCopy var_98
  loc_A40BAE: ILdRf MailOrga
  loc_A40BB1: FStStrCopy var_9C
  loc_A40BB4: OnErrorGoto loc_A40D60
  loc_A40BB7: LitStr "UPDATE infogov.organigrama"
  loc_A40BBA: LitStr " SET DetaOrga='"
  loc_A40BBD: ConcatStr
  loc_A40BBE: FStStrNoPop var_A0
  loc_A40BC1: ILdRf var_88
  loc_A40BC4: ConcatStr
  loc_A40BC5: FStStrNoPop var_A4
  loc_A40BC8: LitStr "', CucuPers='"
  loc_A40BCB: ConcatStr
  loc_A40BCC: FStStrNoPop var_A8
  loc_A40BCF: ILdRf var_8C
  loc_A40BD2: ConcatStr
  loc_A40BD3: FStStrNoPop var_AC
  loc_A40BD6: LitStr "', CredOrga='"
  loc_A40BD9: ConcatStr
  loc_A40BDA: FStStrNoPop var_B0
  loc_A40BDD: ILdRf var_90
  loc_A40BE0: ConcatStr
  loc_A40BE1: FStStrNoPop var_B4
  loc_A40BE4: LitStr "', CredOrgaG='"
  loc_A40BE7: ConcatStr
  loc_A40BE8: FStStrNoPop var_B8
  loc_A40BEB: ILdRf var_94
  loc_A40BEE: ConcatStr
  loc_A40BEF: FStStrNoPop var_BC
  loc_A40BF2: LitStr "', CoesOrga='"
  loc_A40BF5: ConcatStr
  loc_A40BF6: FStStrNoPop var_C0
  loc_A40BF9: ILdRf var_98
  loc_A40BFC: ConcatStr
  loc_A40BFD: FStStrNoPop var_C4
  loc_A40C00: LitStr "', MailOrga='"
  loc_A40C03: ConcatStr
  loc_A40C04: FStStrNoPop var_C8
  loc_A40C07: ILdRf var_9C
  loc_A40C0A: ConcatStr
  loc_A40C0B: FStStrNoPop var_CC
  loc_A40C0E: LitStr "', ModiUsua='"
  loc_A40C11: ConcatStr
  loc_A40C12: FStStrNoPop var_D0
  loc_A40C15: ImpAdLdI4 MemVar_C3D03C
  loc_A40C18: ConcatStr
  loc_A40C19: FStStrNoPop var_D4
  loc_A40C1C: LitStr "', ModiFeho=Now()"
  loc_A40C1F: ConcatStr
  loc_A40C20: FStStrNoPop var_D8
  loc_A40C23: LitStr " WHERE PeriInfo = "
  loc_A40C26: ConcatStr
  loc_A40C27: CVarStr var_110
  loc_A40C2A: FLdRfVar var_100
  loc_A40C2D: FLdRfVar var_F0
  loc_A40C30: LitVarStr var_EC, "PeriInfo"
  loc_A40C35: PopAdLdVar
  loc_A40C36: FLdRfVar var_DC
  loc_A40C39: FLdPr Me
  loc_A40C3C: MemLdPr RsFrm
  loc_A40C3F:  = Me.Fields
  loc_A40C44: FLdPr var_DC
  loc_A40C47: from_stack_2 = Me.Item(from_stack_1)
  loc_A40C4C: FLdPr var_F0
  loc_A40C4F:  = Me.Value
  loc_A40C54: FLdRfVar var_100
  loc_A40C57: ConcatVar var_120
  loc_A40C5B: LitVarStr var_130, " AND CodiOrga = '"
  loc_A40C60: ConcatVar var_140
  loc_A40C64: FLdRfVar var_168
  loc_A40C67: FLdRfVar var_158
  loc_A40C6A: LitVarStr var_154, "CodiOrga"
  loc_A40C6F: PopAdLdVar
  loc_A40C70: FLdRfVar var_144
  loc_A40C73: FLdPr Me
  loc_A40C76: MemLdPr RsFrm
  loc_A40C79:  = Me.Fields
  loc_A40C7E: FLdPr var_144
  loc_A40C81: from_stack_2 = Me.Item(from_stack_1)
  loc_A40C86: FLdPr var_158
  loc_A40C89:  = Me.Value
  loc_A40C8E: FLdRfVar var_168
  loc_A40C91: ConcatVar var_178
  loc_A40C95: LitVarStr var_188, "';"
  loc_A40C9A: ConcatVar var_198
  loc_A40C9E: CStrVarVal var_19C
  loc_A40CA2: Call EjecutarRsCls(from_stack_1v)
  loc_A40CA7: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A40CCA: FFreeAd var_DC = "": var_F0 = "": var_144 = ""
  loc_A40CD5: FFreeVar var_110 = "": var_100 = "": var_120 = "": var_140 = "": var_168 = "": var_178 = ""
  loc_A40CE6: FLdRfVar var_100
  loc_A40CE9: FLdRfVar var_F0
  loc_A40CEC: LitVarStr var_EC, "PeriInfo"
  loc_A40CF1: PopAdLdVar
  loc_A40CF2: FLdRfVar var_DC
  loc_A40CF5: FLdPr Me
  loc_A40CF8: MemLdPr RsFrm
  loc_A40CFB:  = Me.Fields
  loc_A40D00: FLdPr var_DC
  loc_A40D03: from_stack_2 = Me.Item(from_stack_1)
  loc_A40D08: FLdPr var_F0
  loc_A40D0B:  = Me.Value
  loc_A40D10: FLdRfVar var_110
  loc_A40D13: FLdRfVar var_158
  loc_A40D16: LitVarStr var_130, "CodiOrga"
  loc_A40D1B: PopAdLdVar
  loc_A40D1C: FLdRfVar var_144
  loc_A40D1F: FLdPr Me
  loc_A40D22: MemLdPr RsFrm
  loc_A40D25:  = Me.Fields
  loc_A40D2A: FLdPr var_144
  loc_A40D2D: from_stack_2 = Me.Item(from_stack_1)
  loc_A40D32: FLdPr var_158
  loc_A40D35:  = Me.Value
  loc_A40D3A: FLdRfVar var_110
  loc_A40D3D: CStrVarTmp
  loc_A40D3E: FStStrNoPop var_A0
  loc_A40D41: FLdRfVar var_100
  loc_A40D44: CI2Var
  loc_A40D45: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A40D4A: FFree1Str var_A0
  loc_A40D4D: FFreeAd var_DC = "": var_144 = "": var_F0 = ""
  loc_A40D58: FFreeVar var_100 = ""
  loc_A40D5F: ExitProcHresult
  loc_A40D60: LitStr "ROLLBACK;"
  loc_A40D63: Call EjecutarRsCls(from_stack_1v)
  loc_A40D68: LitI4 0
  loc_A40D6D: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A40D70: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A40D75: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiOrga) '9EA0D0
  'Data Table: 40FF4C
  loc_9E9FB2: ILdRf CodiOrga
  loc_9E9FB5: FStStrCopy var_88
  loc_9E9FBA: On Error Resume Next
  loc_9E9FBF: FLdI2 PeriInfo
  loc_9E9FC2: LitI2_Byte 0
  loc_9E9FC4: EqI2
  loc_9E9FC5: ILdRf var_88
  loc_9E9FC8: LitStr vbNullString
  loc_9E9FCB: EqStr
  loc_9E9FCD: AndI4
  loc_9E9FCE: FLdRfVar var_8C
  loc_9E9FD1: FLdPr Me
  loc_9E9FD4: MemLdPr RsFrm
  loc_9E9FD7:  = Me.RecordCount
  loc_9E9FDC: ILdRf var_8C
  loc_9E9FDF: LitI4 0
  loc_9E9FE4: GtI4
  loc_9E9FE5: AndI4
  loc_9E9FE6: FLdRfVar var_90
  loc_9E9FE9: FLdPr Me
  loc_9E9FEC: MemLdPr RsFrm
  loc_9E9FEF:  = Me.AbsolutePosition
  loc_9E9FF4: ILdRf var_90
  loc_9E9FF7: LitI4 -3
  loc_9E9FFC: NeI4
  loc_9E9FFD: AndI4
  loc_9E9FFE: BranchF loc_9EA07B
  loc_9EA003: FLdRfVar var_B8
  loc_9EA006: FLdRfVar var_A8
  loc_9EA009: LitVarStr var_A4, "PeriInfo"
  loc_9EA00E: PopAdLdVar
  loc_9EA00F: FLdRfVar var_94
  loc_9EA012: FLdPr Me
  loc_9EA015: MemLdPr RsFrm
  loc_9EA018:  = Me.Fields
  loc_9EA01D: FLdPr var_94
  loc_9EA020: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA025: FLdPr var_A8
  loc_9EA028:  = Me.Value
  loc_9EA02D: FLdRfVar var_B8
  loc_9EA030: CI2Var
  loc_9EA031: FStI2 PeriInfo
  loc_9EA034: FFreeAd var_94 = ""
  loc_9EA03B: FFree1Var var_B8 = ""
  loc_9EA040: FLdRfVar var_B8
  loc_9EA043: FLdRfVar var_A8
  loc_9EA046: LitVarStr var_A4, "CodiOrga"
  loc_9EA04B: PopAdLdVar
  loc_9EA04C: FLdRfVar var_94
  loc_9EA04F: FLdPr Me
  loc_9EA052: MemLdPr RsFrm
  loc_9EA055:  = Me.Fields
  loc_9EA05A: FLdPr var_94
  loc_9EA05D: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA062: FLdPr var_A8
  loc_9EA065:  = Me.Value
  loc_9EA06A: FLdRfVar var_B8
  loc_9EA06D: CStrVarTmp
  loc_9EA06E: FStStr var_88
  loc_9EA071: FFreeAd var_94 = ""
  loc_9EA078: FFree1Var var_B8 = ""
  loc_9EA07F: Call Requery()
  loc_9EA086: LitStr "PeriInfo = '"
  loc_9EA089: FLdI2 PeriInfo
  loc_9EA08C: CStrUI1
  loc_9EA08E: FStStrNoPop var_BC
  loc_9EA091: ConcatStr
  loc_9EA092: FStStrNoPop var_C0
  loc_9EA095: LitStr "'"
  loc_9EA098: ConcatStr
  loc_9EA099: PopTmpLdAdStr
  loc_9EA09D: Call Find(from_stack_1v)
  loc_9EA0A2: FFreeStr var_BC = "": var_C0 = ""
  loc_9EA0AD: LitStr "CodiOrga = '"
  loc_9EA0B0: ILdRf var_88
  loc_9EA0B3: ConcatStr
  loc_9EA0B4: FStStrNoPop var_BC
  loc_9EA0B7: LitStr "'"
  loc_9EA0BA: ConcatStr
  loc_9EA0BB: PopTmpLdAdStr
  loc_9EA0BF: Call Find(from_stack_1v)
  loc_9EA0C4: FFreeStr var_BC = ""
  loc_9EA0CD: ExitProcHresult
  loc_9EA0CE: FStStrNoPop var_2B24
End Sub

Public Sub Eliminar() '9F7BE0
  'Data Table: 40FF4C
  loc_9F7AB8: OnErrorGoto loc_9F7BC7
  loc_9F7ABB: LitStr "START TRANSACTION;"
  loc_9F7ABE: Call EjecutarRsCls(from_stack_1v)
  loc_9F7AC3: LitVarStr var_BC, "DELETE FROM infogov.organigrama WHERE PeriInfo = "
  loc_9F7AC8: FLdRfVar var_AC
  loc_9F7ACB: FLdRfVar var_9C
  loc_9F7ACE: LitVarStr var_98, "PeriInfo"
  loc_9F7AD3: PopAdLdVar
  loc_9F7AD4: FLdRfVar var_88
  loc_9F7AD7: FLdPr Me
  loc_9F7ADA: MemLdPr RsFrm
  loc_9F7ADD:  = Me.Fields
  loc_9F7AE2: FLdPr var_88
  loc_9F7AE5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7AEA: FLdPr var_9C
  loc_9F7AED:  = Me.Value
  loc_9F7AF2: FLdRfVar var_AC
  loc_9F7AF5: ConcatVar var_CC
  loc_9F7AF9: LitVarStr var_DC, " AND CodiOrga = '"
  loc_9F7AFE: ConcatVar var_EC
  loc_9F7B02: FLdRfVar var_114
  loc_9F7B05: FLdRfVar var_104
  loc_9F7B08: LitVarStr var_100, "CodiOrga"
  loc_9F7B0D: PopAdLdVar
  loc_9F7B0E: FLdRfVar var_F0
  loc_9F7B11: FLdPr Me
  loc_9F7B14: MemLdPr RsFrm
  loc_9F7B17:  = Me.Fields
  loc_9F7B1C: FLdPr var_F0
  loc_9F7B1F: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7B24: FLdPr var_104
  loc_9F7B27:  = Me.Value
  loc_9F7B2C: FLdRfVar var_114
  loc_9F7B2F: ConcatVar var_124
  loc_9F7B33: LitVarStr var_134, "';"
  loc_9F7B38: ConcatVar var_144
  loc_9F7B3C: CStrVarVal var_148
  loc_9F7B40: Call EjecutarRsCls(from_stack_1v)
  loc_9F7B45: FFree1Str var_148
  loc_9F7B48: FFreeAd var_88 = "": var_9C = "": var_F0 = ""
  loc_9F7B53: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_114 = "": var_124 = ""
  loc_9F7B62: LitStr "COMMIT"
  loc_9F7B65: Call EjecutarRsCls(from_stack_1v)
  loc_9F7B6A: FLdRfVar var_150
  loc_9F7B6D: FLdPr Me
  loc_9F7B70: MemLdPr RsFrm
  loc_9F7B73:  = Me.AbsolutePosition
  loc_9F7B78: ILdRf var_150
  loc_9F7B7B: FStR4 var_14C
  loc_9F7B7E: Call Requery()
  loc_9F7B83: FLdRfVar var_150
  loc_9F7B86: FLdPr Me
  loc_9F7B89: MemLdPr RsFrm
  loc_9F7B8C:  = Me.RecordCount
  loc_9F7B91: ILdRf var_150
  loc_9F7B94: LitI4 0
  loc_9F7B99: GtI4
  loc_9F7B9A: BranchF loc_9F7BC6
  loc_9F7B9D: Call MoveFirst()
  loc_9F7BA2: ILdRf var_14C
  loc_9F7BA5: LitI4 1
  loc_9F7BAA: GtI4
  loc_9F7BAB: BranchF loc_9F7BC6
  loc_9F7BAE: LitVar_Missing var_98
  loc_9F7BB1: PopAdLdVar
  loc_9F7BB2: ILdRf var_14C
  loc_9F7BB5: LitI4 2
  loc_9F7BBA: SubI4
  loc_9F7BBB: FLdPr Me
  loc_9F7BBE: MemLdPr RsFrm
  loc_9F7BC1: Me.Move from_stack_1, from_stack_2
  loc_9F7BC6: ExitProcHresult
  loc_9F7BC7: LitStr "ROLLBACK;"
  loc_9F7BCA: Call EjecutarRsCls(from_stack_1v)
  loc_9F7BCF: LitI4 0
  loc_9F7BD4: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_9F7BD7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9F7BDC: ExitProcHresult
  loc_9F7BDD: Ary1LdPr
  loc_9F7BDE: MemLdRfVar from_stack_1.global_-11156
End Sub

Public Sub RedefineRS(sSelect) '973AB4
  'Data Table: 40FF4C
  loc_973A8C: ILdRf sSelect
  loc_973A8F: FStStrCopy var_88
  loc_973A92: FLdPr Me
  loc_973A95: MemLdRfVar from_stack_1.RsFrm
  loc_973A98: ILdRf var_88
  loc_973A9B: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973AA0: LitVarStr var_98, "Primary"
  loc_973AA5: PopAdLdVar
  loc_973AA6: FLdPr Me
  loc_973AA9: LateIdCall
  loc_973AB1: ExitProcHresult
  loc_973AB2: CI4Str
End Sub

Public Sub EjecutarRsCls(sSelect) '959FB0
  'Data Table: 40FF4C
  loc_959F98: ILdRf sSelect
  loc_959F9B: FStStrCopy var_88
  loc_959F9E: FLdPr Me
  loc_959FA1: MemLdRfVar from_stack_1.global_56
  loc_959FA4: ILdRf var_88
  loc_959FA7: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_959FAC: ExitProcHresult
  loc_959FAD: CI2I4
End Sub

Public Sub Requery() '969100
  'Data Table: 40FF4C
  loc_9690E0: FLdPr Me
  loc_9690E3: MemLdRfVar from_stack_1.RsFrm
  loc_9690E6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9690EB: LitVarStr var_94, "Primary"
  loc_9690F0: PopAdLdVar
  loc_9690F1: FLdPr Me
  loc_9690F4: LateIdCall
  loc_9690FC: ExitProcHresult
  loc_9690FD: PopAdLdVar
  loc_9690FE: FLdPr var_2BF8
End Sub

Public Property Get DataSource() '973D90
  'Data Table: 40FF4C
  loc_973D6C: ZeroRetVal
  loc_973D6E: FLdRfVar var_8C
  loc_973D71: FLdPr Me
  loc_973D74: MemLdPr RsFrm
  loc_973D77:  = Me.DataSource
  loc_973D7C: ILdRf var_8C
  loc_973D7F: CastAd
  loc_973D82: FStAdFunc var_88
  loc_973D85: FFree1Ad var_8C
  loc_973D88: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiOrga) '9A1C7C
  'Data Table: 40FF4C
  loc_9A1C18: ILdRf CodiOrga
  loc_9A1C1B: FStStrCopy var_8C
  loc_9A1C1E: ZeroRetVal
  loc_9A1C20: LitStr "SELECT CodiOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_9A1C23: FLdI2 PeriInfo
  loc_9A1C26: CStrUI1
  loc_9A1C28: FStStrNoPop var_90
  loc_9A1C2B: ConcatStr
  loc_9A1C2C: FStStrNoPop ValidaClave
  loc_9A1C2F: LitStr " AND CodiOrga = '"
  loc_9A1C32: ConcatStr
  loc_9A1C33: FStStrNoPop var_98
  loc_9A1C36: ILdRf var_8C
  loc_9A1C39: ConcatStr
  loc_9A1C3A: FStStrNoPop var_9C
  loc_9A1C3D: LitStr "'"
  loc_9A1C40: ConcatStr
  loc_9A1C41: FStStrNoPop var_A0
  loc_9A1C44: Call EjecutarRsCls(from_stack_1v)
  loc_9A1C49: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_9A1C56: FLdRfVar var_A4
  loc_9A1C59: FLdPr Me
  loc_9A1C5C: MemLdPr global_56
  loc_9A1C5F:  = Me.RecordCount
  loc_9A1C64: ILdRf var_A4
  loc_9A1C67: LitI4 0
  loc_9A1C6C: GtI4
  loc_9A1C6D: BranchF loc_9A1C76
  loc_9A1C70: LitStr "El Organigrama YA EXISTE. Reintente..."
  loc_9A1C73: FStStrCopy var_88
  loc_9A1C76: ExitProcCbHresult
End Function

Public Function ValidaEliminar() 'A7F118
  'Data Table: 40FF4C
  loc_A7ED34: ZeroRetVal
  loc_A7ED36: LitVarStr var_C0, "SELECT CodiOrga FROM autorizado WHERE PeriInfo = "
  loc_A7ED3B: FLdRfVar var_B0
  loc_A7ED3E: FLdRfVar var_A0
  loc_A7ED41: LitVarStr var_9C, "PeriInfo"
  loc_A7ED46: PopAdLdVar
  loc_A7ED47: FLdRfVar var_8C
  loc_A7ED4A: FLdPr Me
  loc_A7ED4D: MemLdPr RsFrm
  loc_A7ED50:  = Me.Fields
  loc_A7ED55: FLdPr var_8C
  loc_A7ED58: from_stack_2 = Me.Item(from_stack_1)
  loc_A7ED5D: FLdPr var_A0
  loc_A7ED60:  = Me.Value
  loc_A7ED65: FLdRfVar var_B0
  loc_A7ED68: ConcatVar var_D0
  loc_A7ED6C: LitVarStr var_E0, " AND CodiOrga = '"
  loc_A7ED71: ConcatVar var_F0
  loc_A7ED75: FLdRfVar var_118
  loc_A7ED78: FLdRfVar var_108
  loc_A7ED7B: LitVarStr var_104, "CodiOrga"
  loc_A7ED80: PopAdLdVar
  loc_A7ED81: FLdRfVar var_F4
  loc_A7ED84: FLdPr Me
  loc_A7ED87: MemLdPr RsFrm
  loc_A7ED8A:  = Me.Fields
  loc_A7ED8F: FLdPr var_F4
  loc_A7ED92: from_stack_2 = Me.Item(from_stack_1)
  loc_A7ED97: FLdPr var_108
  loc_A7ED9A:  = Me.Value
  loc_A7ED9F: FLdRfVar var_118
  loc_A7EDA2: ConcatVar var_128
  loc_A7EDA6: LitVarStr var_138, "' LIMIT 1"
  loc_A7EDAB: ConcatVar var_148
  loc_A7EDAF: CStrVarVal var_14C
  loc_A7EDB3: Call EjecutarRsCls(from_stack_1v)
  loc_A7EDB8: FFree1Str var_14C
  loc_A7EDBB: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A7EDC6: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A7EDD5: FLdRfVar var_150
  loc_A7EDD8: FLdPr Me
  loc_A7EDDB: MemLdPr global_56
  loc_A7EDDE:  = Me.RecordCount
  loc_A7EDE3: ILdRf var_150
  loc_A7EDE6: LitI4 0
  loc_A7EDEB: GtI4
  loc_A7EDEC: BranchF loc_A7EDFB
  loc_A7EDEF: LitStr "EL Organigrama está incluido en un Autorizado y NO puede ELIMINARSE. Verifique..."
  loc_A7EDF2: FStStrCopy var_88
  loc_A7EDF5: ExitProcCbHresult
  loc_A7EDFB: LitVarStr var_C0, "SELECT CodiOrga FROM imputacion WHERE PeriInfo = "
  loc_A7EE00: FLdRfVar var_B0
  loc_A7EE03: FLdRfVar var_A0
  loc_A7EE06: LitVarStr var_9C, "PeriInfo"
  loc_A7EE0B: PopAdLdVar
  loc_A7EE0C: FLdRfVar var_8C
  loc_A7EE0F: FLdPr Me
  loc_A7EE12: MemLdPr RsFrm
  loc_A7EE15:  = Me.Fields
  loc_A7EE1A: FLdPr var_8C
  loc_A7EE1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EE22: FLdPr var_A0
  loc_A7EE25:  = Me.Value
  loc_A7EE2A: FLdRfVar var_B0
  loc_A7EE2D: ConcatVar var_D0
  loc_A7EE31: LitVarStr var_E0, " AND CodiOrga = '"
  loc_A7EE36: ConcatVar var_F0
  loc_A7EE3A: FLdRfVar var_118
  loc_A7EE3D: FLdRfVar var_108
  loc_A7EE40: LitVarStr var_104, "CodiOrga"
  loc_A7EE45: PopAdLdVar
  loc_A7EE46: FLdRfVar var_F4
  loc_A7EE49: FLdPr Me
  loc_A7EE4C: MemLdPr RsFrm
  loc_A7EE4F:  = Me.Fields
  loc_A7EE54: FLdPr var_F4
  loc_A7EE57: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EE5C: FLdPr var_108
  loc_A7EE5F:  = Me.Value
  loc_A7EE64: FLdRfVar var_118
  loc_A7EE67: ConcatVar var_128
  loc_A7EE6B: LitVarStr var_138, "' LIMIT 1"
  loc_A7EE70: ConcatVar var_148
  loc_A7EE74: CStrVarVal var_14C
  loc_A7EE78: Call EjecutarRsCls(from_stack_1v)
  loc_A7EE7D: FFree1Str var_14C
  loc_A7EE80: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A7EE8B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A7EE9A: FLdRfVar var_150
  loc_A7EE9D: FLdPr Me
  loc_A7EEA0: MemLdPr global_56
  loc_A7EEA3:  = Me.RecordCount
  loc_A7EEA8: ILdRf var_150
  loc_A7EEAB: LitI4 0
  loc_A7EEB0: GtI4
  loc_A7EEB1: BranchF loc_A7EEC0
  loc_A7EEB4: LitStr "EL Organigrama está incluido en una Imputación y NO puede ELIMINARSE. Verifique..."
  loc_A7EEB7: FStStrCopy var_88
  loc_A7EEBA: ExitProcCbHresult
  loc_A7EEC0: LitVarStr var_C0, "SELECT CodiOrga FROM itemnota WHERE PeriInfo = "
  loc_A7EEC5: FLdRfVar var_B0
  loc_A7EEC8: FLdRfVar var_A0
  loc_A7EECB: LitVarStr var_9C, "PeriInfo"
  loc_A7EED0: PopAdLdVar
  loc_A7EED1: FLdRfVar var_8C
  loc_A7EED4: FLdPr Me
  loc_A7EED7: MemLdPr RsFrm
  loc_A7EEDA:  = Me.Fields
  loc_A7EEDF: FLdPr var_8C
  loc_A7EEE2: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EEE7: FLdPr var_A0
  loc_A7EEEA:  = Me.Value
  loc_A7EEEF: FLdRfVar var_B0
  loc_A7EEF2: ConcatVar var_D0
  loc_A7EEF6: LitVarStr var_E0, " AND CodiOrga = '"
  loc_A7EEFB: ConcatVar var_F0
  loc_A7EEFF: FLdRfVar var_118
  loc_A7EF02: FLdRfVar var_108
  loc_A7EF05: LitVarStr var_104, "CodiOrga"
  loc_A7EF0A: PopAdLdVar
  loc_A7EF0B: FLdRfVar var_F4
  loc_A7EF0E: FLdPr Me
  loc_A7EF11: MemLdPr RsFrm
  loc_A7EF14:  = Me.Fields
  loc_A7EF19: FLdPr var_F4
  loc_A7EF1C: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EF21: FLdPr var_108
  loc_A7EF24:  = Me.Value
  loc_A7EF29: FLdRfVar var_118
  loc_A7EF2C: ConcatVar var_128
  loc_A7EF30: LitVarStr var_138, "' LIMIT 1"
  loc_A7EF35: ConcatVar var_148
  loc_A7EF39: CStrVarVal var_14C
  loc_A7EF3D: Call EjecutarRsCls(from_stack_1v)
  loc_A7EF42: FFree1Str var_14C
  loc_A7EF45: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A7EF50: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A7EF5F: FLdRfVar var_150
  loc_A7EF62: FLdPr Me
  loc_A7EF65: MemLdPr global_56
  loc_A7EF68:  = Me.RecordCount
  loc_A7EF6D: ILdRf var_150
  loc_A7EF70: LitI4 0
  loc_A7EF75: GtI4
  loc_A7EF76: BranchF loc_A7EF85
  loc_A7EF79: LitStr "EL Organigrama está incluido en un Item de Nota de Pedido y NO puede ELIMINARSE. Verifique..."
  loc_A7EF7C: FStStrCopy var_88
  loc_A7EF7F: ExitProcCbHresult
  loc_A7EF85: LitVarStr var_C0, "SELECT CodiOrga FROM notapedido WHERE PeriInfo = "
  loc_A7EF8A: FLdRfVar var_B0
  loc_A7EF8D: FLdRfVar var_A0
  loc_A7EF90: LitVarStr var_9C, "PeriInfo"
  loc_A7EF95: PopAdLdVar
  loc_A7EF96: FLdRfVar var_8C
  loc_A7EF99: FLdPr Me
  loc_A7EF9C: MemLdPr RsFrm
  loc_A7EF9F:  = Me.Fields
  loc_A7EFA4: FLdPr var_8C
  loc_A7EFA7: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EFAC: FLdPr var_A0
  loc_A7EFAF:  = Me.Value
  loc_A7EFB4: FLdRfVar var_B0
  loc_A7EFB7: ConcatVar var_D0
  loc_A7EFBB: LitVarStr var_E0, " AND CodiOrga = '"
  loc_A7EFC0: ConcatVar var_F0
  loc_A7EFC4: FLdRfVar var_118
  loc_A7EFC7: FLdRfVar var_108
  loc_A7EFCA: LitVarStr var_104, "CodiOrga"
  loc_A7EFCF: PopAdLdVar
  loc_A7EFD0: FLdRfVar var_F4
  loc_A7EFD3: FLdPr Me
  loc_A7EFD6: MemLdPr RsFrm
  loc_A7EFD9:  = Me.Fields
  loc_A7EFDE: FLdPr var_F4
  loc_A7EFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A7EFE6: FLdPr var_108
  loc_A7EFE9:  = Me.Value
  loc_A7EFEE: FLdRfVar var_118
  loc_A7EFF1: ConcatVar var_128
  loc_A7EFF5: LitVarStr var_138, "' LIMIT 1"
  loc_A7EFFA: ConcatVar var_148
  loc_A7EFFE: CStrVarVal var_14C
  loc_A7F002: Call EjecutarRsCls(from_stack_1v)
  loc_A7F007: FFree1Str var_14C
  loc_A7F00A: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A7F015: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A7F024: FLdRfVar var_150
  loc_A7F027: FLdPr Me
  loc_A7F02A: MemLdPr global_56
  loc_A7F02D:  = Me.RecordCount
  loc_A7F032: ILdRf var_150
  loc_A7F035: LitI4 0
  loc_A7F03A: GtI4
  loc_A7F03B: BranchF loc_A7F04A
  loc_A7F03E: LitStr "EL Organigrama está incluido en una Nota de Pedido y NO puede ELIMINARSE. Verifique..."
  loc_A7F041: FStStrCopy var_88
  loc_A7F044: ExitProcCbHresult
  loc_A7F04A: LitVarStr var_C0, "SELECT CodiOrga FROM ugperiodo WHERE PeriInfo = "
  loc_A7F04F: FLdRfVar var_B0
  loc_A7F052: FLdRfVar var_A0
  loc_A7F055: LitVarStr var_9C, "PeriInfo"
  loc_A7F05A: PopAdLdVar
  loc_A7F05B: FLdRfVar var_8C
  loc_A7F05E: FLdPr Me
  loc_A7F061: MemLdPr RsFrm
  loc_A7F064:  = Me.Fields
  loc_A7F069: FLdPr var_8C
  loc_A7F06C: from_stack_2 = Me.Item(from_stack_1)
  loc_A7F071: FLdPr var_A0
  loc_A7F074:  = Me.Value
  loc_A7F079: FLdRfVar var_B0
  loc_A7F07C: ConcatVar var_D0
  loc_A7F080: LitVarStr var_E0, " AND CodiOrga = '"
  loc_A7F085: ConcatVar var_F0
  loc_A7F089: FLdRfVar var_118
  loc_A7F08C: FLdRfVar var_108
  loc_A7F08F: LitVarStr var_104, "CodiOrga"
  loc_A7F094: PopAdLdVar
  loc_A7F095: FLdRfVar var_F4
  loc_A7F098: FLdPr Me
  loc_A7F09B: MemLdPr RsFrm
  loc_A7F09E:  = Me.Fields
  loc_A7F0A3: FLdPr var_F4
  loc_A7F0A6: from_stack_2 = Me.Item(from_stack_1)
  loc_A7F0AB: FLdPr var_108
  loc_A7F0AE:  = Me.Value
  loc_A7F0B3: FLdRfVar var_118
  loc_A7F0B6: ConcatVar var_128
  loc_A7F0BA: LitVarStr var_138, "' AND CodiUnga > 1 LIMIT 1"
  loc_A7F0BF: ConcatVar var_148
  loc_A7F0C3: CStrVarVal var_14C
  loc_A7F0C7: Call EjecutarRsCls(from_stack_1v)
  loc_A7F0CC: FFree1Str var_14C
  loc_A7F0CF: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A7F0DA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A7F0E9: FLdRfVar var_150
  loc_A7F0EC: FLdPr Me
  loc_A7F0EF: MemLdPr global_56
  loc_A7F0F2:  = Me.RecordCount
  loc_A7F0F7: ILdRf var_150
  loc_A7F0FA: LitI4 0
  loc_A7F0FF: GtI4
  loc_A7F100: BranchF loc_A7F10F
  loc_A7F103: LitStr "EL Organigrama está incluido en una Unidad de Gasto y NO puede ELIMINARSE. Verifique..."
  loc_A7F106: FStStrCopy var_88
  loc_A7F109: ExitProcCbHresult
  loc_A7F10F: ExitProcCbHresult
End Function

Public Function nivelOrganigrama(Organigrama) 'B85910
  'Data Table: 40FF4C
  loc_B84B84: ILdRf Organigrama
  loc_B84B87: FStStrCopy var_8C
  loc_B84B8A: LitI2_Byte 0
  loc_B84B8C: FStI2 var_86
  loc_B84B8F: LitStr "Municipalidad de Guaymallén"
  loc_B84B92: LitStr "Municipalidad de Rivadavia"
  loc_B84B95: EqStr
  loc_B84B97: BranchF loc_B84EF1
  loc_B84B9A: LitVarI2 var_AC, 2
  loc_B84B9F: LitI4 6
  loc_B84BA4: ILdRf var_8C
  loc_B84BA7: ImpAdCallI2 Mid$(, , )
  loc_B84BAC: FStStrNoPop var_B0
  loc_B84BAF: LitStr "00"
  loc_B84BB2: NeStr
  loc_B84BB4: LitVarI2 var_D0, 2
  loc_B84BB9: LitI4 4
  loc_B84BBE: ILdRf var_8C
  loc_B84BC1: ImpAdCallI2 Mid$(, , )
  loc_B84BC6: FStStrNoPop var_D4
  loc_B84BC9: LitStr "0"
  loc_B84BCC: NeStr
  loc_B84BCE: AndI4
  loc_B84BCF: LitVarI2 var_F4, 1
  loc_B84BD4: LitI4 3
  loc_B84BD9: ILdRf var_8C
  loc_B84BDC: ImpAdCallI2 Mid$(, , )
  loc_B84BE1: FStStrNoPop var_F8
  loc_B84BE4: LitStr "0"
  loc_B84BE7: NeStr
  loc_B84BE9: AndI4
  loc_B84BEA: LitVarI2 var_118, 1
  loc_B84BEF: LitI4 2
  loc_B84BF4: ILdRf var_8C
  loc_B84BF7: ImpAdCallI2 Mid$(, , )
  loc_B84BFC: FStStrNoPop var_11C
  loc_B84BFF: LitStr "0"
  loc_B84C02: NeStr
  loc_B84C04: AndI4
  loc_B84C05: LitVarI2 var_13C, 1
  loc_B84C0A: LitI4 1
  loc_B84C0F: ILdRf var_8C
  loc_B84C12: ImpAdCallI2 Mid$(, , )
  loc_B84C17: FStStrNoPop var_140
  loc_B84C1A: LitStr "0"
  loc_B84C1D: NeStr
  loc_B84C1F: AndI4
  loc_B84C20: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84C2D: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84C3A: BranchF loc_B84C45
  loc_B84C3D: LitI2_Byte 5
  loc_B84C3F: FStI2 var_86
  loc_B84C42: Branch loc_B84EEE
  loc_B84C45: LitVarI2 var_AC, 2
  loc_B84C4A: LitI4 4
  loc_B84C4F: ILdRf var_8C
  loc_B84C52: ImpAdCallI2 Mid$(, , )
  loc_B84C57: FStStrNoPop var_B0
  loc_B84C5A: LitStr "00"
  loc_B84C5D: NeStr
  loc_B84C5F: LitVarI2 var_D0, 2
  loc_B84C64: LitI4 6
  loc_B84C69: ILdRf var_8C
  loc_B84C6C: ImpAdCallI2 Mid$(, , )
  loc_B84C71: FStStrNoPop var_D4
  loc_B84C74: LitStr "00"
  loc_B84C77: EqStr
  loc_B84C79: AndI4
  loc_B84C7A: LitVarI2 var_F4, 1
  loc_B84C7F: LitI4 3
  loc_B84C84: ILdRf var_8C
  loc_B84C87: ImpAdCallI2 Mid$(, , )
  loc_B84C8C: FStStrNoPop var_F8
  loc_B84C8F: LitStr "0"
  loc_B84C92: NeStr
  loc_B84C94: AndI4
  loc_B84C95: LitVarI2 var_118, 1
  loc_B84C9A: LitI4 2
  loc_B84C9F: ILdRf var_8C
  loc_B84CA2: ImpAdCallI2 Mid$(, , )
  loc_B84CA7: FStStrNoPop var_11C
  loc_B84CAA: LitStr "0"
  loc_B84CAD: NeStr
  loc_B84CAF: AndI4
  loc_B84CB0: LitVarI2 var_13C, 1
  loc_B84CB5: LitI4 1
  loc_B84CBA: ILdRf var_8C
  loc_B84CBD: ImpAdCallI2 Mid$(, , )
  loc_B84CC2: FStStrNoPop var_140
  loc_B84CC5: LitStr "0"
  loc_B84CC8: NeStr
  loc_B84CCA: AndI4
  loc_B84CCB: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84CD8: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84CE5: BranchF loc_B84CF0
  loc_B84CE8: LitI2_Byte 4
  loc_B84CEA: FStI2 var_86
  loc_B84CED: Branch loc_B84EEE
  loc_B84CF0: LitVarI2 var_AC, 1
  loc_B84CF5: LitI4 3
  loc_B84CFA: ILdRf var_8C
  loc_B84CFD: ImpAdCallI2 Mid$(, , )
  loc_B84D02: FStStrNoPop var_B0
  loc_B84D05: LitStr "0"
  loc_B84D08: NeStr
  loc_B84D0A: LitVarI2 var_D0, 2
  loc_B84D0F: LitI4 6
  loc_B84D14: ILdRf var_8C
  loc_B84D17: ImpAdCallI2 Mid$(, , )
  loc_B84D1C: FStStrNoPop var_D4
  loc_B84D1F: LitStr "00"
  loc_B84D22: EqStr
  loc_B84D24: AndI4
  loc_B84D25: LitVarI2 var_F4, 2
  loc_B84D2A: LitI4 4
  loc_B84D2F: ILdRf var_8C
  loc_B84D32: ImpAdCallI2 Mid$(, , )
  loc_B84D37: FStStrNoPop var_F8
  loc_B84D3A: LitStr "00"
  loc_B84D3D: EqStr
  loc_B84D3F: AndI4
  loc_B84D40: LitVarI2 var_118, 1
  loc_B84D45: LitI4 2
  loc_B84D4A: ILdRf var_8C
  loc_B84D4D: ImpAdCallI2 Mid$(, , )
  loc_B84D52: FStStrNoPop var_11C
  loc_B84D55: LitStr "0"
  loc_B84D58: NeStr
  loc_B84D5A: AndI4
  loc_B84D5B: LitVarI2 var_13C, 1
  loc_B84D60: LitI4 1
  loc_B84D65: ILdRf var_8C
  loc_B84D68: ImpAdCallI2 Mid$(, , )
  loc_B84D6D: FStStrNoPop var_140
  loc_B84D70: LitStr "0"
  loc_B84D73: NeStr
  loc_B84D75: AndI4
  loc_B84D76: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84D83: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84D90: BranchF loc_B84D9B
  loc_B84D93: LitI2_Byte 3
  loc_B84D95: FStI2 var_86
  loc_B84D98: Branch loc_B84EEE
  loc_B84D9B: LitVarI2 var_AC, 1
  loc_B84DA0: LitI4 2
  loc_B84DA5: ILdRf var_8C
  loc_B84DA8: ImpAdCallI2 Mid$(, , )
  loc_B84DAD: FStStrNoPop var_B0
  loc_B84DB0: LitStr "0"
  loc_B84DB3: NeStr
  loc_B84DB5: LitVarI2 var_D0, 2
  loc_B84DBA: LitI4 6
  loc_B84DBF: ILdRf var_8C
  loc_B84DC2: ImpAdCallI2 Mid$(, , )
  loc_B84DC7: FStStrNoPop var_D4
  loc_B84DCA: LitStr "00"
  loc_B84DCD: EqStr
  loc_B84DCF: AndI4
  loc_B84DD0: LitVarI2 var_F4, 2
  loc_B84DD5: LitI4 4
  loc_B84DDA: ILdRf var_8C
  loc_B84DDD: ImpAdCallI2 Mid$(, , )
  loc_B84DE2: FStStrNoPop var_F8
  loc_B84DE5: LitStr "00"
  loc_B84DE8: EqStr
  loc_B84DEA: AndI4
  loc_B84DEB: LitVarI2 var_118, 1
  loc_B84DF0: LitI4 3
  loc_B84DF5: ILdRf var_8C
  loc_B84DF8: ImpAdCallI2 Mid$(, , )
  loc_B84DFD: FStStrNoPop var_11C
  loc_B84E00: LitStr "0"
  loc_B84E03: EqStr
  loc_B84E05: AndI4
  loc_B84E06: LitVarI2 var_13C, 1
  loc_B84E0B: LitI4 1
  loc_B84E10: ILdRf var_8C
  loc_B84E13: ImpAdCallI2 Mid$(, , )
  loc_B84E18: FStStrNoPop var_140
  loc_B84E1B: LitStr "0"
  loc_B84E1E: NeStr
  loc_B84E20: AndI4
  loc_B84E21: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84E2E: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84E3B: BranchF loc_B84E46
  loc_B84E3E: LitI2_Byte 2
  loc_B84E40: FStI2 var_86
  loc_B84E43: Branch loc_B84EEE
  loc_B84E46: LitVarI2 var_AC, 1
  loc_B84E4B: LitI4 1
  loc_B84E50: ILdRf var_8C
  loc_B84E53: ImpAdCallI2 Mid$(, , )
  loc_B84E58: FStStrNoPop var_B0
  loc_B84E5B: LitStr "0"
  loc_B84E5E: NeStr
  loc_B84E60: LitVarI2 var_D0, 2
  loc_B84E65: LitI4 6
  loc_B84E6A: ILdRf var_8C
  loc_B84E6D: ImpAdCallI2 Mid$(, , )
  loc_B84E72: FStStrNoPop var_D4
  loc_B84E75: LitStr "00"
  loc_B84E78: EqStr
  loc_B84E7A: AndI4
  loc_B84E7B: LitVarI2 var_F4, 2
  loc_B84E80: LitI4 4
  loc_B84E85: ILdRf var_8C
  loc_B84E88: ImpAdCallI2 Mid$(, , )
  loc_B84E8D: FStStrNoPop var_F8
  loc_B84E90: LitStr "00"
  loc_B84E93: EqStr
  loc_B84E95: AndI4
  loc_B84E96: LitVarI2 var_118, 1
  loc_B84E9B: LitI4 3
  loc_B84EA0: ILdRf var_8C
  loc_B84EA3: ImpAdCallI2 Mid$(, , )
  loc_B84EA8: FStStrNoPop var_11C
  loc_B84EAB: LitStr "0"
  loc_B84EAE: EqStr
  loc_B84EB0: AndI4
  loc_B84EB1: LitVarI2 var_13C, 1
  loc_B84EB6: LitI4 2
  loc_B84EBB: ILdRf var_8C
  loc_B84EBE: ImpAdCallI2 Mid$(, , )
  loc_B84EC3: FStStrNoPop var_140
  loc_B84EC6: LitStr "0"
  loc_B84EC9: EqStr
  loc_B84ECB: AndI4
  loc_B84ECC: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84ED9: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84EE6: BranchF loc_B84EEE
  loc_B84EE9: LitI2_Byte 1
  loc_B84EEB: FStI2 var_86
  loc_B84EEE: Branch loc_B85909
  loc_B84EF1: LitStr "Municipalidad de Guaymallén"
  loc_B84EF4: LitStr "Municipalidad de General Alvear"
  loc_B84EF7: EqStr
  loc_B84EF9: BranchF loc_B85253
  loc_B84EFC: LitVarI2 var_AC, 1
  loc_B84F01: LitI4 7
  loc_B84F06: ILdRf var_8C
  loc_B84F09: ImpAdCallI2 Mid$(, , )
  loc_B84F0E: FStStrNoPop var_B0
  loc_B84F11: LitStr "0"
  loc_B84F14: NeStr
  loc_B84F16: LitVarI2 var_D0, 2
  loc_B84F1B: LitI4 5
  loc_B84F20: ILdRf var_8C
  loc_B84F23: ImpAdCallI2 Mid$(, , )
  loc_B84F28: FStStrNoPop var_D4
  loc_B84F2B: LitStr "00"
  loc_B84F2E: NeStr
  loc_B84F30: AndI4
  loc_B84F31: LitVarI2 var_F4, 2
  loc_B84F36: LitI4 3
  loc_B84F3B: ILdRf var_8C
  loc_B84F3E: ImpAdCallI2 Mid$(, , )
  loc_B84F43: FStStrNoPop var_F8
  loc_B84F46: LitStr "00"
  loc_B84F49: NeStr
  loc_B84F4B: AndI4
  loc_B84F4C: LitVarI2 var_118, 1
  loc_B84F51: LitI4 2
  loc_B84F56: ILdRf var_8C
  loc_B84F59: ImpAdCallI2 Mid$(, , )
  loc_B84F5E: FStStrNoPop var_11C
  loc_B84F61: LitStr "0"
  loc_B84F64: NeStr
  loc_B84F66: AndI4
  loc_B84F67: LitVarI2 var_13C, 1
  loc_B84F6C: LitI4 1
  loc_B84F71: ILdRf var_8C
  loc_B84F74: ImpAdCallI2 Mid$(, , )
  loc_B84F79: FStStrNoPop var_140
  loc_B84F7C: LitStr "0"
  loc_B84F7F: NeStr
  loc_B84F81: AndI4
  loc_B84F82: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B84F8F: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B84F9C: BranchF loc_B84FA7
  loc_B84F9F: LitI2_Byte 5
  loc_B84FA1: FStI2 var_86
  loc_B84FA4: Branch loc_B85250
  loc_B84FA7: LitVarI2 var_AC, 1
  loc_B84FAC: LitI4 7
  loc_B84FB1: ILdRf var_8C
  loc_B84FB4: ImpAdCallI2 Mid$(, , )
  loc_B84FB9: FStStrNoPop var_B0
  loc_B84FBC: LitStr "0"
  loc_B84FBF: EqStr
  loc_B84FC1: LitVarI2 var_D0, 2
  loc_B84FC6: LitI4 5
  loc_B84FCB: ILdRf var_8C
  loc_B84FCE: ImpAdCallI2 Mid$(, , )
  loc_B84FD3: FStStrNoPop var_D4
  loc_B84FD6: LitStr "00"
  loc_B84FD9: NeStr
  loc_B84FDB: AndI4
  loc_B84FDC: LitVarI2 var_F4, 2
  loc_B84FE1: LitI4 3
  loc_B84FE6: ILdRf var_8C
  loc_B84FE9: ImpAdCallI2 Mid$(, , )
  loc_B84FEE: FStStrNoPop var_F8
  loc_B84FF1: LitStr "00"
  loc_B84FF4: NeStr
  loc_B84FF6: AndI4
  loc_B84FF7: LitVarI2 var_118, 1
  loc_B84FFC: LitI4 2
  loc_B85001: ILdRf var_8C
  loc_B85004: ImpAdCallI2 Mid$(, , )
  loc_B85009: FStStrNoPop var_11C
  loc_B8500C: LitStr "0"
  loc_B8500F: NeStr
  loc_B85011: AndI4
  loc_B85012: LitVarI2 var_13C, 1
  loc_B85017: LitI4 1
  loc_B8501C: ILdRf var_8C
  loc_B8501F: ImpAdCallI2 Mid$(, , )
  loc_B85024: FStStrNoPop var_140
  loc_B85027: LitStr "0"
  loc_B8502A: NeStr
  loc_B8502C: AndI4
  loc_B8502D: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B8503A: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85047: BranchF loc_B85052
  loc_B8504A: LitI2_Byte 4
  loc_B8504C: FStI2 var_86
  loc_B8504F: Branch loc_B85250
  loc_B85052: LitVarI2 var_AC, 1
  loc_B85057: LitI4 7
  loc_B8505C: ILdRf var_8C
  loc_B8505F: ImpAdCallI2 Mid$(, , )
  loc_B85064: FStStrNoPop var_B0
  loc_B85067: LitStr "0"
  loc_B8506A: EqStr
  loc_B8506C: LitVarI2 var_D0, 2
  loc_B85071: LitI4 5
  loc_B85076: ILdRf var_8C
  loc_B85079: ImpAdCallI2 Mid$(, , )
  loc_B8507E: FStStrNoPop var_D4
  loc_B85081: LitStr "00"
  loc_B85084: EqStr
  loc_B85086: AndI4
  loc_B85087: LitVarI2 var_F4, 2
  loc_B8508C: LitI4 3
  loc_B85091: ILdRf var_8C
  loc_B85094: ImpAdCallI2 Mid$(, , )
  loc_B85099: FStStrNoPop var_F8
  loc_B8509C: LitStr "00"
  loc_B8509F: NeStr
  loc_B850A1: AndI4
  loc_B850A2: LitVarI2 var_118, 1
  loc_B850A7: LitI4 2
  loc_B850AC: ILdRf var_8C
  loc_B850AF: ImpAdCallI2 Mid$(, , )
  loc_B850B4: FStStrNoPop var_11C
  loc_B850B7: LitStr "0"
  loc_B850BA: NeStr
  loc_B850BC: AndI4
  loc_B850BD: LitVarI2 var_13C, 1
  loc_B850C2: LitI4 1
  loc_B850C7: ILdRf var_8C
  loc_B850CA: ImpAdCallI2 Mid$(, , )
  loc_B850CF: FStStrNoPop var_140
  loc_B850D2: LitStr "0"
  loc_B850D5: NeStr
  loc_B850D7: AndI4
  loc_B850D8: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B850E5: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B850F2: BranchF loc_B850FD
  loc_B850F5: LitI2_Byte 3
  loc_B850F7: FStI2 var_86
  loc_B850FA: Branch loc_B85250
  loc_B850FD: LitVarI2 var_AC, 1
  loc_B85102: LitI4 7
  loc_B85107: ILdRf var_8C
  loc_B8510A: ImpAdCallI2 Mid$(, , )
  loc_B8510F: FStStrNoPop var_B0
  loc_B85112: LitStr "0"
  loc_B85115: EqStr
  loc_B85117: LitVarI2 var_D0, 2
  loc_B8511C: LitI4 5
  loc_B85121: ILdRf var_8C
  loc_B85124: ImpAdCallI2 Mid$(, , )
  loc_B85129: FStStrNoPop var_D4
  loc_B8512C: LitStr "00"
  loc_B8512F: EqStr
  loc_B85131: AndI4
  loc_B85132: LitVarI2 var_F4, 2
  loc_B85137: LitI4 3
  loc_B8513C: ILdRf var_8C
  loc_B8513F: ImpAdCallI2 Mid$(, , )
  loc_B85144: FStStrNoPop var_F8
  loc_B85147: LitStr "00"
  loc_B8514A: EqStr
  loc_B8514C: AndI4
  loc_B8514D: LitVarI2 var_118, 1
  loc_B85152: LitI4 2
  loc_B85157: ILdRf var_8C
  loc_B8515A: ImpAdCallI2 Mid$(, , )
  loc_B8515F: FStStrNoPop var_11C
  loc_B85162: LitStr "0"
  loc_B85165: NeStr
  loc_B85167: AndI4
  loc_B85168: LitVarI2 var_13C, 1
  loc_B8516D: LitI4 1
  loc_B85172: ILdRf var_8C
  loc_B85175: ImpAdCallI2 Mid$(, , )
  loc_B8517A: FStStrNoPop var_140
  loc_B8517D: LitStr "0"
  loc_B85180: NeStr
  loc_B85182: AndI4
  loc_B85183: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B85190: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B8519D: BranchF loc_B851A8
  loc_B851A0: LitI2_Byte 2
  loc_B851A2: FStI2 var_86
  loc_B851A5: Branch loc_B85250
  loc_B851A8: LitVarI2 var_AC, 1
  loc_B851AD: LitI4 7
  loc_B851B2: ILdRf var_8C
  loc_B851B5: ImpAdCallI2 Mid$(, , )
  loc_B851BA: FStStrNoPop var_B0
  loc_B851BD: LitStr "0"
  loc_B851C0: EqStr
  loc_B851C2: LitVarI2 var_D0, 2
  loc_B851C7: LitI4 5
  loc_B851CC: ILdRf var_8C
  loc_B851CF: ImpAdCallI2 Mid$(, , )
  loc_B851D4: FStStrNoPop var_D4
  loc_B851D7: LitStr "00"
  loc_B851DA: EqStr
  loc_B851DC: AndI4
  loc_B851DD: LitVarI2 var_F4, 2
  loc_B851E2: LitI4 3
  loc_B851E7: ILdRf var_8C
  loc_B851EA: ImpAdCallI2 Mid$(, , )
  loc_B851EF: FStStrNoPop var_F8
  loc_B851F2: LitStr "00"
  loc_B851F5: EqStr
  loc_B851F7: AndI4
  loc_B851F8: LitVarI2 var_118, 1
  loc_B851FD: LitI4 2
  loc_B85202: ILdRf var_8C
  loc_B85205: ImpAdCallI2 Mid$(, , )
  loc_B8520A: FStStrNoPop var_11C
  loc_B8520D: LitStr "0"
  loc_B85210: EqStr
  loc_B85212: AndI4
  loc_B85213: LitVarI2 var_13C, 1
  loc_B85218: LitI4 1
  loc_B8521D: ILdRf var_8C
  loc_B85220: ImpAdCallI2 Mid$(, , )
  loc_B85225: FStStrNoPop var_140
  loc_B85228: LitStr "0"
  loc_B8522B: NeStr
  loc_B8522D: AndI4
  loc_B8522E: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B8523B: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85248: BranchF loc_B85250
  loc_B8524B: LitI2_Byte 1
  loc_B8524D: FStI2 var_86
  loc_B85250: Branch loc_B85909
  loc_B85253: LitStr "Municipalidad de Guaymallén"
  loc_B85256: LitStr "Municipalidad de Tupungato"
  loc_B85259: EqStr
  loc_B8525B: BranchF loc_B855B5
  loc_B8525E: LitVarI2 var_AC, 1
  loc_B85263: LitI4 7
  loc_B85268: ILdRf var_8C
  loc_B8526B: ImpAdCallI2 Mid$(, , )
  loc_B85270: FStStrNoPop var_B0
  loc_B85273: LitStr "0"
  loc_B85276: NeStr
  loc_B85278: LitVarI2 var_D0, 2
  loc_B8527D: LitI4 5
  loc_B85282: ILdRf var_8C
  loc_B85285: ImpAdCallI2 Mid$(, , )
  loc_B8528A: FStStrNoPop var_D4
  loc_B8528D: LitStr "00"
  loc_B85290: NeStr
  loc_B85292: AndI4
  loc_B85293: LitVarI2 var_F4, 2
  loc_B85298: LitI4 3
  loc_B8529D: ILdRf var_8C
  loc_B852A0: ImpAdCallI2 Mid$(, , )
  loc_B852A5: FStStrNoPop var_F8
  loc_B852A8: LitStr "00"
  loc_B852AB: NeStr
  loc_B852AD: AndI4
  loc_B852AE: LitVarI2 var_118, 1
  loc_B852B3: LitI4 2
  loc_B852B8: ILdRf var_8C
  loc_B852BB: ImpAdCallI2 Mid$(, , )
  loc_B852C0: FStStrNoPop var_11C
  loc_B852C3: LitStr "0"
  loc_B852C6: NeStr
  loc_B852C8: AndI4
  loc_B852C9: LitVarI2 var_13C, 1
  loc_B852CE: LitI4 1
  loc_B852D3: ILdRf var_8C
  loc_B852D6: ImpAdCallI2 Mid$(, , )
  loc_B852DB: FStStrNoPop var_140
  loc_B852DE: LitStr "0"
  loc_B852E1: NeStr
  loc_B852E3: AndI4
  loc_B852E4: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B852F1: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B852FE: BranchF loc_B85309
  loc_B85301: LitI2_Byte 5
  loc_B85303: FStI2 var_86
  loc_B85306: Branch loc_B855B2
  loc_B85309: LitVarI2 var_AC, 1
  loc_B8530E: LitI4 7
  loc_B85313: ILdRf var_8C
  loc_B85316: ImpAdCallI2 Mid$(, , )
  loc_B8531B: FStStrNoPop var_B0
  loc_B8531E: LitStr "0"
  loc_B85321: EqStr
  loc_B85323: LitVarI2 var_D0, 2
  loc_B85328: LitI4 5
  loc_B8532D: ILdRf var_8C
  loc_B85330: ImpAdCallI2 Mid$(, , )
  loc_B85335: FStStrNoPop var_D4
  loc_B85338: LitStr "00"
  loc_B8533B: NeStr
  loc_B8533D: AndI4
  loc_B8533E: LitVarI2 var_F4, 2
  loc_B85343: LitI4 3
  loc_B85348: ILdRf var_8C
  loc_B8534B: ImpAdCallI2 Mid$(, , )
  loc_B85350: FStStrNoPop var_F8
  loc_B85353: LitStr "00"
  loc_B85356: NeStr
  loc_B85358: AndI4
  loc_B85359: LitVarI2 var_118, 1
  loc_B8535E: LitI4 2
  loc_B85363: ILdRf var_8C
  loc_B85366: ImpAdCallI2 Mid$(, , )
  loc_B8536B: FStStrNoPop var_11C
  loc_B8536E: LitStr "0"
  loc_B85371: NeStr
  loc_B85373: AndI4
  loc_B85374: LitVarI2 var_13C, 1
  loc_B85379: LitI4 1
  loc_B8537E: ILdRf var_8C
  loc_B85381: ImpAdCallI2 Mid$(, , )
  loc_B85386: FStStrNoPop var_140
  loc_B85389: LitStr "0"
  loc_B8538C: NeStr
  loc_B8538E: AndI4
  loc_B8538F: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B8539C: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B853A9: BranchF loc_B853B4
  loc_B853AC: LitI2_Byte 4
  loc_B853AE: FStI2 var_86
  loc_B853B1: Branch loc_B855B2
  loc_B853B4: LitVarI2 var_AC, 1
  loc_B853B9: LitI4 7
  loc_B853BE: ILdRf var_8C
  loc_B853C1: ImpAdCallI2 Mid$(, , )
  loc_B853C6: FStStrNoPop var_B0
  loc_B853C9: LitStr "0"
  loc_B853CC: EqStr
  loc_B853CE: LitVarI2 var_D0, 2
  loc_B853D3: LitI4 5
  loc_B853D8: ILdRf var_8C
  loc_B853DB: ImpAdCallI2 Mid$(, , )
  loc_B853E0: FStStrNoPop var_D4
  loc_B853E3: LitStr "00"
  loc_B853E6: EqStr
  loc_B853E8: AndI4
  loc_B853E9: LitVarI2 var_F4, 2
  loc_B853EE: LitI4 3
  loc_B853F3: ILdRf var_8C
  loc_B853F6: ImpAdCallI2 Mid$(, , )
  loc_B853FB: FStStrNoPop var_F8
  loc_B853FE: LitStr "00"
  loc_B85401: NeStr
  loc_B85403: AndI4
  loc_B85404: LitVarI2 var_118, 1
  loc_B85409: LitI4 2
  loc_B8540E: ILdRf var_8C
  loc_B85411: ImpAdCallI2 Mid$(, , )
  loc_B85416: FStStrNoPop var_11C
  loc_B85419: LitStr "0"
  loc_B8541C: NeStr
  loc_B8541E: AndI4
  loc_B8541F: LitVarI2 var_13C, 1
  loc_B85424: LitI4 1
  loc_B85429: ILdRf var_8C
  loc_B8542C: ImpAdCallI2 Mid$(, , )
  loc_B85431: FStStrNoPop var_140
  loc_B85434: LitStr "0"
  loc_B85437: NeStr
  loc_B85439: AndI4
  loc_B8543A: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B85447: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85454: BranchF loc_B8545F
  loc_B85457: LitI2_Byte 3
  loc_B85459: FStI2 var_86
  loc_B8545C: Branch loc_B855B2
  loc_B8545F: LitVarI2 var_AC, 1
  loc_B85464: LitI4 7
  loc_B85469: ILdRf var_8C
  loc_B8546C: ImpAdCallI2 Mid$(, , )
  loc_B85471: FStStrNoPop var_B0
  loc_B85474: LitStr "0"
  loc_B85477: EqStr
  loc_B85479: LitVarI2 var_D0, 2
  loc_B8547E: LitI4 5
  loc_B85483: ILdRf var_8C
  loc_B85486: ImpAdCallI2 Mid$(, , )
  loc_B8548B: FStStrNoPop var_D4
  loc_B8548E: LitStr "00"
  loc_B85491: EqStr
  loc_B85493: AndI4
  loc_B85494: LitVarI2 var_F4, 2
  loc_B85499: LitI4 3
  loc_B8549E: ILdRf var_8C
  loc_B854A1: ImpAdCallI2 Mid$(, , )
  loc_B854A6: FStStrNoPop var_F8
  loc_B854A9: LitStr "00"
  loc_B854AC: EqStr
  loc_B854AE: AndI4
  loc_B854AF: LitVarI2 var_118, 1
  loc_B854B4: LitI4 2
  loc_B854B9: ILdRf var_8C
  loc_B854BC: ImpAdCallI2 Mid$(, , )
  loc_B854C1: FStStrNoPop var_11C
  loc_B854C4: LitStr "0"
  loc_B854C7: NeStr
  loc_B854C9: AndI4
  loc_B854CA: LitVarI2 var_13C, 1
  loc_B854CF: LitI4 1
  loc_B854D4: ILdRf var_8C
  loc_B854D7: ImpAdCallI2 Mid$(, , )
  loc_B854DC: FStStrNoPop var_140
  loc_B854DF: LitStr "0"
  loc_B854E2: NeStr
  loc_B854E4: AndI4
  loc_B854E5: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B854F2: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B854FF: BranchF loc_B8550A
  loc_B85502: LitI2_Byte 2
  loc_B85504: FStI2 var_86
  loc_B85507: Branch loc_B855B2
  loc_B8550A: LitVarI2 var_AC, 1
  loc_B8550F: LitI4 7
  loc_B85514: ILdRf var_8C
  loc_B85517: ImpAdCallI2 Mid$(, , )
  loc_B8551C: FStStrNoPop var_B0
  loc_B8551F: LitStr "0"
  loc_B85522: EqStr
  loc_B85524: LitVarI2 var_D0, 2
  loc_B85529: LitI4 5
  loc_B8552E: ILdRf var_8C
  loc_B85531: ImpAdCallI2 Mid$(, , )
  loc_B85536: FStStrNoPop var_D4
  loc_B85539: LitStr "00"
  loc_B8553C: EqStr
  loc_B8553E: AndI4
  loc_B8553F: LitVarI2 var_F4, 2
  loc_B85544: LitI4 3
  loc_B85549: ILdRf var_8C
  loc_B8554C: ImpAdCallI2 Mid$(, , )
  loc_B85551: FStStrNoPop var_F8
  loc_B85554: LitStr "00"
  loc_B85557: EqStr
  loc_B85559: AndI4
  loc_B8555A: LitVarI2 var_118, 1
  loc_B8555F: LitI4 2
  loc_B85564: ILdRf var_8C
  loc_B85567: ImpAdCallI2 Mid$(, , )
  loc_B8556C: FStStrNoPop var_11C
  loc_B8556F: LitStr "0"
  loc_B85572: EqStr
  loc_B85574: AndI4
  loc_B85575: LitVarI2 var_13C, 1
  loc_B8557A: LitI4 1
  loc_B8557F: ILdRf var_8C
  loc_B85582: ImpAdCallI2 Mid$(, , )
  loc_B85587: FStStrNoPop var_140
  loc_B8558A: LitStr "0"
  loc_B8558D: NeStr
  loc_B8558F: AndI4
  loc_B85590: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B8559D: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B855AA: BranchF loc_B855B2
  loc_B855AD: LitI2_Byte 1
  loc_B855AF: FStI2 var_86
  loc_B855B2: Branch loc_B85909
  loc_B855B5: LitVarI2 var_AC, 2
  loc_B855BA: LitI4 5
  loc_B855BF: ILdRf var_8C
  loc_B855C2: ImpAdCallI2 Mid$(, , )
  loc_B855C7: FStStrNoPop var_B0
  loc_B855CA: LitStr "00"
  loc_B855CD: NeStr
  loc_B855CF: LitVarI2 var_D0, 1
  loc_B855D4: LitI4 4
  loc_B855D9: ILdRf var_8C
  loc_B855DC: ImpAdCallI2 Mid$(, , )
  loc_B855E1: FStStrNoPop var_D4
  loc_B855E4: LitStr "0"
  loc_B855E7: NeStr
  loc_B855E9: AndI4
  loc_B855EA: LitVarI2 var_F4, 1
  loc_B855EF: LitI4 3
  loc_B855F4: ILdRf var_8C
  loc_B855F7: ImpAdCallI2 Mid$(, , )
  loc_B855FC: FStStrNoPop var_F8
  loc_B855FF: LitStr "0"
  loc_B85602: NeStr
  loc_B85604: AndI4
  loc_B85605: LitVarI2 var_118, 1
  loc_B8560A: LitI4 2
  loc_B8560F: ILdRf var_8C
  loc_B85612: ImpAdCallI2 Mid$(, , )
  loc_B85617: FStStrNoPop var_11C
  loc_B8561A: LitStr "0"
  loc_B8561D: NeStr
  loc_B8561F: AndI4
  loc_B85620: LitVarI2 var_13C, 1
  loc_B85625: LitI4 1
  loc_B8562A: ILdRf var_8C
  loc_B8562D: ImpAdCallI2 Mid$(, , )
  loc_B85632: FStStrNoPop var_140
  loc_B85635: LitStr "0"
  loc_B85638: NeStr
  loc_B8563A: AndI4
  loc_B8563B: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B85648: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85655: BranchF loc_B85660
  loc_B85658: LitI2_Byte 5
  loc_B8565A: FStI2 var_86
  loc_B8565D: Branch loc_B85909
  loc_B85660: LitVarI2 var_AC, 1
  loc_B85665: LitI4 4
  loc_B8566A: ILdRf var_8C
  loc_B8566D: ImpAdCallI2 Mid$(, , )
  loc_B85672: FStStrNoPop var_B0
  loc_B85675: LitStr "0"
  loc_B85678: NeStr
  loc_B8567A: LitVarI2 var_D0, 2
  loc_B8567F: LitI4 5
  loc_B85684: ILdRf var_8C
  loc_B85687: ImpAdCallI2 Mid$(, , )
  loc_B8568C: FStStrNoPop var_D4
  loc_B8568F: LitStr "00"
  loc_B85692: EqStr
  loc_B85694: AndI4
  loc_B85695: LitVarI2 var_F4, 1
  loc_B8569A: LitI4 3
  loc_B8569F: ILdRf var_8C
  loc_B856A2: ImpAdCallI2 Mid$(, , )
  loc_B856A7: FStStrNoPop var_F8
  loc_B856AA: LitStr "0"
  loc_B856AD: NeStr
  loc_B856AF: AndI4
  loc_B856B0: LitVarI2 var_118, 1
  loc_B856B5: LitI4 2
  loc_B856BA: ILdRf var_8C
  loc_B856BD: ImpAdCallI2 Mid$(, , )
  loc_B856C2: FStStrNoPop var_11C
  loc_B856C5: LitStr "0"
  loc_B856C8: NeStr
  loc_B856CA: AndI4
  loc_B856CB: LitVarI2 var_13C, 1
  loc_B856D0: LitI4 1
  loc_B856D5: ILdRf var_8C
  loc_B856D8: ImpAdCallI2 Mid$(, , )
  loc_B856DD: FStStrNoPop var_140
  loc_B856E0: LitStr "0"
  loc_B856E3: NeStr
  loc_B856E5: AndI4
  loc_B856E6: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B856F3: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85700: BranchF loc_B8570B
  loc_B85703: LitI2_Byte 4
  loc_B85705: FStI2 var_86
  loc_B85708: Branch loc_B85909
  loc_B8570B: LitVarI2 var_AC, 1
  loc_B85710: LitI4 3
  loc_B85715: ILdRf var_8C
  loc_B85718: ImpAdCallI2 Mid$(, , )
  loc_B8571D: FStStrNoPop var_B0
  loc_B85720: LitStr "0"
  loc_B85723: NeStr
  loc_B85725: LitVarI2 var_D0, 2
  loc_B8572A: LitI4 5
  loc_B8572F: ILdRf var_8C
  loc_B85732: ImpAdCallI2 Mid$(, , )
  loc_B85737: FStStrNoPop var_D4
  loc_B8573A: LitStr "00"
  loc_B8573D: EqStr
  loc_B8573F: AndI4
  loc_B85740: LitVarI2 var_F4, 1
  loc_B85745: LitI4 4
  loc_B8574A: ILdRf var_8C
  loc_B8574D: ImpAdCallI2 Mid$(, , )
  loc_B85752: FStStrNoPop var_F8
  loc_B85755: LitStr "0"
  loc_B85758: EqStr
  loc_B8575A: AndI4
  loc_B8575B: LitVarI2 var_118, 1
  loc_B85760: LitI4 2
  loc_B85765: ILdRf var_8C
  loc_B85768: ImpAdCallI2 Mid$(, , )
  loc_B8576D: FStStrNoPop var_11C
  loc_B85770: LitStr "0"
  loc_B85773: NeStr
  loc_B85775: AndI4
  loc_B85776: LitVarI2 var_13C, 1
  loc_B8577B: LitI4 1
  loc_B85780: ILdRf var_8C
  loc_B85783: ImpAdCallI2 Mid$(, , )
  loc_B85788: FStStrNoPop var_140
  loc_B8578B: LitStr "0"
  loc_B8578E: NeStr
  loc_B85790: AndI4
  loc_B85791: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B8579E: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B857AB: BranchF loc_B857B6
  loc_B857AE: LitI2_Byte 3
  loc_B857B0: FStI2 var_86
  loc_B857B3: Branch loc_B85909
  loc_B857B6: LitVarI2 var_AC, 1
  loc_B857BB: LitI4 2
  loc_B857C0: ILdRf var_8C
  loc_B857C3: ImpAdCallI2 Mid$(, , )
  loc_B857C8: FStStrNoPop var_B0
  loc_B857CB: LitStr "0"
  loc_B857CE: NeStr
  loc_B857D0: LitVarI2 var_D0, 2
  loc_B857D5: LitI4 5
  loc_B857DA: ILdRf var_8C
  loc_B857DD: ImpAdCallI2 Mid$(, , )
  loc_B857E2: FStStrNoPop var_D4
  loc_B857E5: LitStr "00"
  loc_B857E8: EqStr
  loc_B857EA: AndI4
  loc_B857EB: LitVarI2 var_F4, 1
  loc_B857F0: LitI4 4
  loc_B857F5: ILdRf var_8C
  loc_B857F8: ImpAdCallI2 Mid$(, , )
  loc_B857FD: FStStrNoPop var_F8
  loc_B85800: LitStr "0"
  loc_B85803: EqStr
  loc_B85805: AndI4
  loc_B85806: LitVarI2 var_118, 1
  loc_B8580B: LitI4 3
  loc_B85810: ILdRf var_8C
  loc_B85813: ImpAdCallI2 Mid$(, , )
  loc_B85818: FStStrNoPop var_11C
  loc_B8581B: LitStr "0"
  loc_B8581E: EqStr
  loc_B85820: AndI4
  loc_B85821: LitVarI2 var_13C, 1
  loc_B85826: LitI4 1
  loc_B8582B: ILdRf var_8C
  loc_B8582E: ImpAdCallI2 Mid$(, , )
  loc_B85833: FStStrNoPop var_140
  loc_B85836: LitStr "0"
  loc_B85839: NeStr
  loc_B8583B: AndI4
  loc_B8583C: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B85849: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85856: BranchF loc_B85861
  loc_B85859: LitI2_Byte 2
  loc_B8585B: FStI2 var_86
  loc_B8585E: Branch loc_B85909
  loc_B85861: LitVarI2 var_AC, 1
  loc_B85866: LitI4 1
  loc_B8586B: ILdRf var_8C
  loc_B8586E: ImpAdCallI2 Mid$(, , )
  loc_B85873: FStStrNoPop var_B0
  loc_B85876: LitStr "0"
  loc_B85879: NeStr
  loc_B8587B: LitVarI2 var_D0, 2
  loc_B85880: LitI4 5
  loc_B85885: ILdRf var_8C
  loc_B85888: ImpAdCallI2 Mid$(, , )
  loc_B8588D: FStStrNoPop var_D4
  loc_B85890: LitStr "00"
  loc_B85893: EqStr
  loc_B85895: AndI4
  loc_B85896: LitVarI2 var_F4, 1
  loc_B8589B: LitI4 4
  loc_B858A0: ILdRf var_8C
  loc_B858A3: ImpAdCallI2 Mid$(, , )
  loc_B858A8: FStStrNoPop var_F8
  loc_B858AB: LitStr "0"
  loc_B858AE: EqStr
  loc_B858B0: AndI4
  loc_B858B1: LitVarI2 var_118, 1
  loc_B858B6: LitI4 3
  loc_B858BB: ILdRf var_8C
  loc_B858BE: ImpAdCallI2 Mid$(, , )
  loc_B858C3: FStStrNoPop var_11C
  loc_B858C6: LitStr "0"
  loc_B858C9: EqStr
  loc_B858CB: AndI4
  loc_B858CC: LitVarI2 var_13C, 1
  loc_B858D1: LitI4 2
  loc_B858D6: ILdRf var_8C
  loc_B858D9: ImpAdCallI2 Mid$(, , )
  loc_B858DE: FStStrNoPop var_140
  loc_B858E1: LitStr "0"
  loc_B858E4: EqStr
  loc_B858E6: AndI4
  loc_B858E7: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = ""
  loc_B858F4: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = ""
  loc_B85901: BranchF loc_B85909
  loc_B85904: LitI2_Byte 1
  loc_B85906: FStI2 var_86
  loc_B85909: ExitProcCbHresult
End Function

Public Function organigramaNivelSuperior(Organigrama, iNivel) 'A30E10
  'Data Table: 40FF4C
  loc_A30C10: ILdRf Organigrama
  loc_A30C13: FStStrCopy var_8C
  loc_A30C16: ZeroRetVal
  loc_A30C18: LitStr "Municipalidad de Guaymallén"
  loc_A30C1B: LitStr "Municipalidad de Rivadavia"
  loc_A30C1E: EqStr
  loc_A30C20: BranchF loc_A30C91
  loc_A30C23: ILdI2 iNivel
  loc_A30C26: FStI2 var_96
  loc_A30C29: FLdI2 var_96
  loc_A30C2C: LitI2_Byte 2
  loc_A30C2E: EqI2
  loc_A30C2F: BranchF loc_A30C43
  loc_A30C32: LitI2_Byte 1
  loc_A30C34: CUI1I2
  loc_A30C36: FStUI1 var_8E
  loc_A30C3A: LitStr "000000"
  loc_A30C3D: FStStrCopy organigramaNivelSuperior
  loc_A30C40: Branch loc_A30C8E
  loc_A30C43: FLdI2 var_96
  loc_A30C46: LitI2_Byte 3
  loc_A30C48: EqI2
  loc_A30C49: BranchF loc_A30C5D
  loc_A30C4C: LitI2_Byte 2
  loc_A30C4E: CUI1I2
  loc_A30C50: FStUI1 var_8E
  loc_A30C54: LitStr "00000"
  loc_A30C57: FStStrCopy organigramaNivelSuperior
  loc_A30C5A: Branch loc_A30C8E
  loc_A30C5D: FLdI2 var_96
  loc_A30C60: LitI2_Byte 4
  loc_A30C62: EqI2
  loc_A30C63: BranchF loc_A30C77
  loc_A30C66: LitI2_Byte 3
  loc_A30C68: CUI1I2
  loc_A30C6A: FStUI1 var_8E
  loc_A30C6E: LitStr "0000"
  loc_A30C71: FStStrCopy organigramaNivelSuperior
  loc_A30C74: Branch loc_A30C8E
  loc_A30C77: FLdI2 var_96
  loc_A30C7A: LitI2_Byte 5
  loc_A30C7C: EqI2
  loc_A30C7D: BranchF loc_A30C8E
  loc_A30C80: LitI2_Byte 5
  loc_A30C82: CUI1I2
  loc_A30C84: FStUI1 var_8E
  loc_A30C88: LitStr "00"
  loc_A30C8B: FStStrCopy organigramaNivelSuperior
  loc_A30C8E: Branch loc_A30DEE
  loc_A30C91: LitStr "Municipalidad de Guaymallén"
  loc_A30C94: LitStr "Municipalidad de General Alvear"
  loc_A30C97: EqStr
  loc_A30C99: BranchF loc_A30D0A
  loc_A30C9C: ILdI2 iNivel
  loc_A30C9F: FStI2 var_98
  loc_A30CA2: FLdI2 var_98
  loc_A30CA5: LitI2_Byte 2
  loc_A30CA7: EqI2
  loc_A30CA8: BranchF loc_A30CBC
  loc_A30CAB: LitI2_Byte 1
  loc_A30CAD: CUI1I2
  loc_A30CAF: FStUI1 var_8E
  loc_A30CB3: LitStr "000000"
  loc_A30CB6: FStStrCopy organigramaNivelSuperior
  loc_A30CB9: Branch loc_A30D07
  loc_A30CBC: FLdI2 var_98
  loc_A30CBF: LitI2_Byte 3
  loc_A30CC1: EqI2
  loc_A30CC2: BranchF loc_A30CD6
  loc_A30CC5: LitI2_Byte 2
  loc_A30CC7: CUI1I2
  loc_A30CC9: FStUI1 var_8E
  loc_A30CCD: LitStr "00000"
  loc_A30CD0: FStStrCopy organigramaNivelSuperior
  loc_A30CD3: Branch loc_A30D07
  loc_A30CD6: FLdI2 var_98
  loc_A30CD9: LitI2_Byte 4
  loc_A30CDB: EqI2
  loc_A30CDC: BranchF loc_A30CF0
  loc_A30CDF: LitI2_Byte 4
  loc_A30CE1: CUI1I2
  loc_A30CE3: FStUI1 var_8E
  loc_A30CE7: LitStr "000"
  loc_A30CEA: FStStrCopy organigramaNivelSuperior
  loc_A30CED: Branch loc_A30D07
  loc_A30CF0: FLdI2 var_98
  loc_A30CF3: LitI2_Byte 5
  loc_A30CF5: EqI2
  loc_A30CF6: BranchF loc_A30D07
  loc_A30CF9: LitI2_Byte 6
  loc_A30CFB: CUI1I2
  loc_A30CFD: FStUI1 var_8E
  loc_A30D01: LitStr "0"
  loc_A30D04: FStStrCopy organigramaNivelSuperior
  loc_A30D07: Branch loc_A30DEE
  loc_A30D0A: LitStr "Municipalidad de Guaymallén"
  loc_A30D0D: LitStr "Municipalidad de Tupungato"
  loc_A30D10: EqStr
  loc_A30D12: BranchF loc_A30D83
  loc_A30D15: ILdI2 iNivel
  loc_A30D18: FStI2 var_9A
  loc_A30D1B: FLdI2 var_9A
  loc_A30D1E: LitI2_Byte 2
  loc_A30D20: EqI2
  loc_A30D21: BranchF loc_A30D35
  loc_A30D24: LitI2_Byte 1
  loc_A30D26: CUI1I2
  loc_A30D28: FStUI1 var_8E
  loc_A30D2C: LitStr "000000"
  loc_A30D2F: FStStrCopy organigramaNivelSuperior
  loc_A30D32: Branch loc_A30D80
  loc_A30D35: FLdI2 var_9A
  loc_A30D38: LitI2_Byte 3
  loc_A30D3A: EqI2
  loc_A30D3B: BranchF loc_A30D4F
  loc_A30D3E: LitI2_Byte 2
  loc_A30D40: CUI1I2
  loc_A30D42: FStUI1 var_8E
  loc_A30D46: LitStr "00000"
  loc_A30D49: FStStrCopy organigramaNivelSuperior
  loc_A30D4C: Branch loc_A30D80
  loc_A30D4F: FLdI2 var_9A
  loc_A30D52: LitI2_Byte 4
  loc_A30D54: EqI2
  loc_A30D55: BranchF loc_A30D69
  loc_A30D58: LitI2_Byte 4
  loc_A30D5A: CUI1I2
  loc_A30D5C: FStUI1 var_8E
  loc_A30D60: LitStr "000"
  loc_A30D63: FStStrCopy organigramaNivelSuperior
  loc_A30D66: Branch loc_A30D80
  loc_A30D69: FLdI2 var_9A
  loc_A30D6C: LitI2_Byte 5
  loc_A30D6E: EqI2
  loc_A30D6F: BranchF loc_A30D80
  loc_A30D72: LitI2_Byte 6
  loc_A30D74: CUI1I2
  loc_A30D76: FStUI1 var_8E
  loc_A30D7A: LitStr "0"
  loc_A30D7D: FStStrCopy organigramaNivelSuperior
  loc_A30D80: Branch loc_A30DEE
  loc_A30D83: ILdI2 iNivel
  loc_A30D86: FStI2 var_9C
  loc_A30D89: FLdI2 var_9C
  loc_A30D8C: LitI2_Byte 2
  loc_A30D8E: EqI2
  loc_A30D8F: BranchF loc_A30DA3
  loc_A30D92: LitI2_Byte 1
  loc_A30D94: CUI1I2
  loc_A30D96: FStUI1 var_8E
  loc_A30D9A: LitStr "00000"
  loc_A30D9D: FStStrCopy organigramaNivelSuperior
  loc_A30DA0: Branch loc_A30DEE
  loc_A30DA3: FLdI2 var_9C
  loc_A30DA6: LitI2_Byte 3
  loc_A30DA8: EqI2
  loc_A30DA9: BranchF loc_A30DBD
  loc_A30DAC: LitI2_Byte 2
  loc_A30DAE: CUI1I2
  loc_A30DB0: FStUI1 var_8E
  loc_A30DB4: LitStr "0000"
  loc_A30DB7: FStStrCopy organigramaNivelSuperior
  loc_A30DBA: Branch loc_A30DEE
  loc_A30DBD: FLdI2 var_9C
  loc_A30DC0: LitI2_Byte 4
  loc_A30DC2: EqI2
  loc_A30DC3: BranchF loc_A30DD7
  loc_A30DC6: LitI2_Byte 3
  loc_A30DC8: CUI1I2
  loc_A30DCA: FStUI1 var_8E
  loc_A30DCE: LitStr "000"
  loc_A30DD1: FStStrCopy organigramaNivelSuperior
  loc_A30DD4: Branch loc_A30DEE
  loc_A30DD7: FLdI2 var_9C
  loc_A30DDA: LitI2_Byte 5
  loc_A30DDC: EqI2
  loc_A30DDD: BranchF loc_A30DEE
  loc_A30DE0: LitI2_Byte 4
  loc_A30DE2: CUI1I2
  loc_A30DE4: FStUI1 var_8E
  loc_A30DE8: LitStr "00"
  loc_A30DEB: FStStrCopy organigramaNivelSuperior
  loc_A30DEE: FLdUI1
  loc_A30DF2: CI4UI1
  loc_A30DF3: ILdRf var_8C
  loc_A30DF6: ImpAdCallI2 Left$(, )
  loc_A30DFB: FStStrNoPop var_A0
  loc_A30DFE: ILdRf organigramaNivelSuperior
  loc_A30E01: ConcatStr
  loc_A30E02: FStStr var_88
  loc_A30E05: FFree1Str var_A0
  loc_A30E08: ExitProcCbHresult
  loc_A30E0E: DOC
End Function

Private Function Proc_23_27_973A54() '973A54
  'Data Table: 40FF4C
  loc_973A30: LitStr "Primary"
  loc_973A33: FLdPr Me
  loc_973A36: LateIdLdVar var_94 DispID_4 0
  loc_973A3D: CastAdVar Me
  loc_973A41: FStAdFunc var_98
  loc_973A44: FLdPr var_98
  loc_973A4C: FFree1Ad var_98
  loc_973A4F: FFree1Var var_94 = ""
  loc_973A52: ExitProcHresult
End Function

Private Function Proc_23_28_9504F4(arg_C) '9504F4
  'Data Table: 40FF4C
  loc_9504DC: ILdI4 arg_C
  loc_9504DF: LitStr "Primary"
  loc_9504E2: EqStr
  loc_9504E4: BranchF loc_9504F1
  loc_9504E7: FLdPr Me
  loc_9504EA: MemLdStr RsFrm
  loc_9504ED: IStAd
  loc_9504F1: ExitProcHresult
  loc_9504F2: FLdPr var_2BF8
End Function
