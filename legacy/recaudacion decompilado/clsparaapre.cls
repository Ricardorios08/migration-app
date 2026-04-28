VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsparaapre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '40C0D0
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40C0DF
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40C0EE
  RsFrm = Value
End Sub

Public Function RsClsGet() '40C0FD
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '40C10C
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '40C11B
  RsCls = Value
End Sub

Public Sub Move(iValor) '9B9B34
  'Data Table: 40BEB0
  loc_9B9B20: LitVar_Missing var_94
  loc_9B9B23: PopAdLdVar
  loc_9B9B24: ILdI2 iValor
  loc_9B9B27: CI4UI1
  loc_9B9B28: FLdPr Me
  loc_9B9B2B: MemLdPr RsFrm
  loc_9B9B2E: Me.Move from_stack_1, from_stack_2
  loc_9B9B33: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EFA8C
  'Data Table: 40BEB0
  loc_9EFA64: FLdRfVar var_88
  loc_9EFA67: FLdPr Me
  loc_9EFA6A: MemLdPr RsFrm
  loc_9EFA6D:  = Me.RecordCount
  loc_9EFA72: ILdRf var_88
  loc_9EFA75: LitI4 0
  loc_9EFA7A: GtI4
  loc_9EFA7B: BranchF loc_9EFA89
  loc_9EFA7E: FLdPr Me
  loc_9EFA81: MemLdPr RsFrm
  loc_9EFA84: Me.MoveFirst
  loc_9EFA89: ExitProcHresult
End Sub

Public Sub MoveLast() '9EED24
  'Data Table: 40BEB0
  loc_9EECFC: FLdRfVar var_88
  loc_9EECFF: FLdPr Me
  loc_9EED02: MemLdPr RsFrm
  loc_9EED05:  = Me.RecordCount
  loc_9EED0A: ILdRf var_88
  loc_9EED0D: LitI4 0
  loc_9EED12: GtI4
  loc_9EED13: BranchF loc_9EED21
  loc_9EED16: FLdPr Me
  loc_9EED19: MemLdPr RsFrm
  loc_9EED1C: Me.MoveLast
  loc_9EED21: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6BF08
  'Data Table: 40BEB0
  loc_A6BE90: FLdRfVar var_86
  loc_A6BE93: FLdPr Me
  loc_A6BE96: MemLdPr RsFrm
  loc_A6BE99:  = Me.EOF
  loc_A6BE9E: FLdI2 var_86
  loc_A6BEA1: NotI4
  loc_A6BEA2: FLdRfVar var_8C
  loc_A6BEA5: FLdPr Me
  loc_A6BEA8: MemLdPr RsFrm
  loc_A6BEAB:  = Me.RecordCount
  loc_A6BEB0: ILdRf var_8C
  loc_A6BEB3: LitI4 0
  loc_A6BEB8: GtI4
  loc_A6BEB9: AndI4
  loc_A6BEBA: BranchF loc_A6BEC8
  loc_A6BEBD: FLdPr Me
  loc_A6BEC0: MemLdPr RsFrm
  loc_A6BEC3: Me.MoveNext
  loc_A6BEC8: FLdRfVar var_86
  loc_A6BECB: FLdPr Me
  loc_A6BECE: MemLdPr RsFrm
  loc_A6BED1:  = Me.EOF
  loc_A6BED6: FLdI2 var_86
  loc_A6BED9: FLdRfVar var_8C
  loc_A6BEDC: FLdPr Me
  loc_A6BEDF: MemLdPr RsFrm
  loc_A6BEE2:  = Me.RecordCount
  loc_A6BEE7: ILdRf var_8C
  loc_A6BEEA: LitI4 0
  loc_A6BEEF: GtI4
  loc_A6BEF0: AndI4
  loc_A6BEF1: BranchF loc_A6BF04
  loc_A6BEF4: ImpAdCallFPR4 Beep()
  loc_A6BEF9: FLdPr Me
  loc_A6BEFC: MemLdPr RsFrm
  loc_A6BEFF: Me.MoveLast
  loc_A6BF04: ExitProcHresult
  loc_A6BF05: FnLBound
End Sub

Public Sub MoveSiguiente() '9B0AD4
  'Data Table: 40BEB0
  loc_9B0AC8: FLdPr Me
  loc_9B0ACB: MemLdPr RsFrm
  loc_9B0ACE: Me.MoveNext
  loc_9B0AD3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6DF30
  'Data Table: 40BEB0
  loc_A6DEB8: FLdRfVar var_86
  loc_A6DEBB: FLdPr Me
  loc_A6DEBE: MemLdPr RsFrm
  loc_A6DEC1:  = Me.BOF
  loc_A6DEC6: FLdI2 var_86
  loc_A6DEC9: NotI4
  loc_A6DECA: FLdRfVar var_8C
  loc_A6DECD: FLdPr Me
  loc_A6DED0: MemLdPr RsFrm
  loc_A6DED3:  = Me.RecordCount
  loc_A6DED8: ILdRf var_8C
  loc_A6DEDB: LitI4 0
  loc_A6DEE0: GtI4
  loc_A6DEE1: AndI4
  loc_A6DEE2: BranchF loc_A6DEF0
  loc_A6DEE5: FLdPr Me
  loc_A6DEE8: MemLdPr RsFrm
  loc_A6DEEB: Me.MovePrevious
  loc_A6DEF0: FLdRfVar var_86
  loc_A6DEF3: FLdPr Me
  loc_A6DEF6: MemLdPr RsFrm
  loc_A6DEF9:  = Me.BOF
  loc_A6DEFE: FLdI2 var_86
  loc_A6DF01: FLdRfVar var_8C
  loc_A6DF04: FLdPr Me
  loc_A6DF07: MemLdPr RsFrm
  loc_A6DF0A:  = Me.RecordCount
  loc_A6DF0F: ILdRf var_8C
  loc_A6DF12: LitI4 0
  loc_A6DF17: GtI4
  loc_A6DF18: AndI4
  loc_A6DF19: BranchF loc_A6DF2C
  loc_A6DF1C: ImpAdCallFPR4 Beep()
  loc_A6DF21: FLdPr Me
  loc_A6DF24: MemLdPr RsFrm
  loc_A6DF27: Me.MoveFirst
  loc_A6DF2C: ExitProcHresult
End Sub

Public Property Get EOF() '9CF2DC
  'Data Table: 40BEB0
  loc_9CF2C0: FLdRfVar var_88
  loc_9CF2C3: FLdPr Me
  loc_9CF2C6: MemLdPr RsFrm
  loc_9CF2C9:  = Me.EOF
  loc_9CF2CE: FLdI2 var_88
  loc_9CF2D1: FStI2 var_86
  loc_9CF2D4: ExitProcCbHresult
End Sub

Public Property Get BOF() '9CF620
  'Data Table: 40BEB0
  loc_9CF604: FLdRfVar var_88
  loc_9CF607: FLdPr Me
  loc_9CF60A: MemLdPr RsFrm
  loc_9CF60D:  = Me.BOF
  loc_9CF612: FLdI2 var_88
  loc_9CF615: FStI2 var_86
  loc_9CF618: ExitProcCbHresult
  loc_9CF61E: FLdFPR8 arg_3800
End Sub

Public Sub Sort(sOrden) '9B4838
  'Data Table: 40BEB0
  loc_9B4828: ILdI4 sOrden
  loc_9B482B: FLdPr Me
  loc_9B482E: MemLdPr RsFrm
  loc_9B4831: Me.Sort = from_stack_1
  loc_9B4836: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD5E0
  'Data Table: 40BEB0
  loc_9DD5C0: LitVar_Missing var_94
  loc_9DD5C3: PopAdLdVar
  loc_9DD5C4: LitI4 1
  loc_9DD5C9: LitI4 0
  loc_9DD5CE: ILdI4 sFind
  loc_9DD5D1: FLdPr Me
  loc_9DD5D4: MemLdPr RsFrm
  loc_9DD5D7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD5DC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CF9B0
  'Data Table: 40BEB0
  loc_9CF994: FLdRfVar var_8C
  loc_9CF997: FLdPr Me
  loc_9CF99A: MemLdPr RsFrm
  loc_9CF99D:  = Me.AbsolutePosition
  loc_9CF9A2: ILdRf var_8C
  loc_9CF9A5: FStR4 var_88
  loc_9CF9A8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CFB78
  'Data Table: 40BEB0
  loc_9CFB5C: FLdRfVar var_8C
  loc_9CFB5F: FLdPr Me
  loc_9CFB62: MemLdPr RsFrm
  loc_9CFB65:  = Me.RecordCount
  loc_9CFB6A: ILdRf var_8C
  loc_9CFB6D: FStR4 var_88
  loc_9CFB70: ExitProcCbHresult
End Sub

Public Sub Modificar(CodiPaap, CamiPaap, CamaPaap, AplePaap, DefiPaap, TajuPaap, PeriPaap, HrmiPaap, HrmaPaap, LeyePaap, FetoPaap) 'B41ED8
  'Data Table: 40BEB0
  loc_B41C34: ILdRf arg_50
  loc_B41C37: FStStrCopy var_88
  loc_B41C3A: ILdRf arg_54
  loc_B41C3D: FStStrCopy var_8C
  loc_B41C40: FLdRfVar var_90
  loc_B41C43: FLdI2 CodiPaap
  loc_B41C46: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B41C4B: ILdRf var_90
  loc_B41C4E: LitStr vbNullString
  loc_B41C51: EqStr
  loc_B41C53: FFree1Str var_90
  loc_B41C56: BranchF loc_B41C64
  loc_B41C59: LitStr "El Código del PARAMETRO DE APREMIO NO EXISTE. Reintente..."
  loc_B41C5C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B41C61: Branch loc_B41ED5
  loc_B41C64: FLdRfVar var_8C
  loc_B41C67: CVarRef
  loc_B41C6C: ImpAdCallI2 IsDate()
  loc_B41C71: FStI2 var_24A
  loc_B41C74: LitI4 1
  loc_B41C79: LitI4 1
  loc_B41C7E: LitVarStr var_13C, "yyyy-mm-dd"
  loc_B41C83: FStVarCopyObj var_14C
  loc_B41C86: FLdRfVar var_14C
  loc_B41C89: FLdRfVar var_8C
  loc_B41C8C: CVarRef
  loc_B41C91: ImpAdCallI2 Format$(, )
  loc_B41C96: FStStr var_250
  loc_B41C99: LitStr " UPDATE paraapre SET CamiPaap = "
  loc_B41C9C: LitI4 0
  loc_B41CA1: LitI4 -1
  loc_B41CA6: LitI4 1
  loc_B41CAB: LitStr "."
  loc_B41CAE: LitStr ","
  loc_B41CB1: FLdFPR8 CamiPaap
  loc_B41CB4: CStrR8
  loc_B41CB6: FStStrNoPop var_90
  loc_B41CB9: ImpAdCallI2 Replace(, , , , , )
  loc_B41CBE: FStStrNoPop var_94
  loc_B41CC1: ConcatStr
  loc_B41CC2: FStStrNoPop var_98
  loc_B41CC5: LitStr ", CamaPaap = "
  loc_B41CC8: ConcatStr
  loc_B41CC9: FStStrNoPop var_A0
  loc_B41CCC: LitI4 0
  loc_B41CD1: LitI4 -1
  loc_B41CD6: LitI4 1
  loc_B41CDB: LitStr "."
  loc_B41CDE: LitStr ","
  loc_B41CE1: FLdFPR8 AplePaap
  loc_B41CE4: CStrR8
  loc_B41CE6: FStStrNoPop var_9C
  loc_B41CE9: ImpAdCallI2 Replace(, , , , , )
  loc_B41CEE: FStStrNoPop var_A4
  loc_B41CF1: ConcatStr
  loc_B41CF2: FStStrNoPop var_A8
  loc_B41CF5: LitStr ", AplePaap = "
  loc_B41CF8: ConcatStr
  loc_B41CF9: FStStrNoPop var_B0
  loc_B41CFC: LitI4 0
  loc_B41D01: LitI4 -1
  loc_B41D06: LitI4 1
  loc_B41D0B: LitStr "."
  loc_B41D0E: LitStr ","
  loc_B41D11: FLdFPR8 TajuPaap
  loc_B41D14: CStrR8
  loc_B41D16: FStStrNoPop var_AC
  loc_B41D19: ImpAdCallI2 Replace(, , , , , )
  loc_B41D1E: FStStrNoPop var_B4
  loc_B41D21: ConcatStr
  loc_B41D22: FStStrNoPop var_B8
  loc_B41D25: LitStr ", DefiPaap = "
  loc_B41D28: ConcatStr
  loc_B41D29: FStStrNoPop var_C0
  loc_B41D2C: LitI4 0
  loc_B41D31: LitI4 -1
  loc_B41D36: LitI4 1
  loc_B41D3B: LitStr "."
  loc_B41D3E: LitStr ","
  loc_B41D41: FLdFPR8 HrmiPaap
  loc_B41D44: CStrR8
  loc_B41D46: FStStrNoPop var_BC
  loc_B41D49: ImpAdCallI2 Replace(, , , , , )
  loc_B41D4E: FStStrNoPop var_C4
  loc_B41D51: ConcatStr
  loc_B41D52: FStStrNoPop var_C8
  loc_B41D55: LitStr ", TajuPaap = "
  loc_B41D58: ConcatStr
  loc_B41D59: FStStrNoPop var_D0
  loc_B41D5C: LitI4 0
  loc_B41D61: LitI4 -1
  loc_B41D66: LitI4 1
  loc_B41D6B: LitStr "."
  loc_B41D6E: LitStr ","
  loc_B41D71: FLdFPR8 LeyePaap
  loc_B41D74: CStrR8
  loc_B41D76: FStStrNoPop var_CC
  loc_B41D79: ImpAdCallI2 Replace(, , , , , )
  loc_B41D7E: FStStrNoPop var_D4
  loc_B41D81: ConcatStr
  loc_B41D82: FStStrNoPop var_D8
  loc_B41D85: LitStr ", PeriPaap = "
  loc_B41D88: ConcatStr
  loc_B41D89: FStStrNoPop var_DC
  loc_B41D8C: FLdFPR8 arg_38
  loc_B41D8F: CStrR8
  loc_B41D91: FStStrNoPop var_E0
  loc_B41D94: ConcatStr
  loc_B41D95: FStStrNoPop var_E4
  loc_B41D98: LitStr ", HrmiPaap = "
  loc_B41D9B: ConcatStr
  loc_B41D9C: FStStrNoPop var_EC
  loc_B41D9F: LitI4 0
  loc_B41DA4: LitI4 -1
  loc_B41DA9: LitI4 1
  loc_B41DAE: LitStr "."
  loc_B41DB1: LitStr ","
  loc_B41DB4: FLdFPR8 Modificar0
  loc_B41DB7: CStrR8
  loc_B41DB9: FStStrNoPop var_E8
  loc_B41DBC: ImpAdCallI2 Replace(, , , , , )
  loc_B41DC1: FStStrNoPop var_F0
  loc_B41DC4: ConcatStr
  loc_B41DC5: FStStrNoPop var_F4
  loc_B41DC8: LitStr ", HrmaPaap = "
  loc_B41DCB: ConcatStr
  loc_B41DCC: FStStrNoPop var_FC
  loc_B41DCF: LitI4 0
  loc_B41DD4: LitI4 -1
  loc_B41DD9: LitI4 1
  loc_B41DDE: LitStr "."
  loc_B41DE1: LitStr ","
  loc_B41DE4: FLdFPR8 Modificar8
  loc_B41DE7: CStrR8
  loc_B41DE9: FStStrNoPop var_F8
  loc_B41DEC: ImpAdCallI2 Replace(, , , , , )
  loc_B41DF1: FStStrNoPop var_100
  loc_B41DF4: ConcatStr
  loc_B41DF5: FStStrNoPop var_104
  loc_B41DF8: LitStr ", LeyePaap = '"
  loc_B41DFB: ConcatStr
  loc_B41DFC: FStStrNoPop var_108
  loc_B41DFF: ILdRf var_88
  loc_B41E02: ConcatStr
  loc_B41E03: FStStrNoPop var_10C
  loc_B41E06: LitStr "', FetoPaap = "
  loc_B41E09: ConcatStr
  loc_B41E0A: CVarStr var_1B4
  loc_B41E0D: LitVarStr var_184, "Null"
  loc_B41E12: FStVarCopyObj var_194
  loc_B41E15: FLdRfVar var_194
  loc_B41E18: LitStr "'"
  loc_B41E1B: FLdZeroAd var_250
  loc_B41E1E: FStStrNoPop var_150
  loc_B41E21: ConcatStr
  loc_B41E22: FStStrNoPop var_154
  loc_B41E25: LitStr "'"
  loc_B41E28: ConcatStr
  loc_B41E29: CVarStr var_174
  loc_B41E2C: FLdI2 var_24A
  loc_B41E2F: CVarBoolI2 var_164
  loc_B41E33: FLdRfVar var_1A4
  loc_B41E36: ImpAdCallFPR4  = IIf(, , )
  loc_B41E3B: FLdRfVar var_1A4
  loc_B41E3E: ConcatVar var_1C4
  loc_B41E42: LitVarStr var_1D4, ", ModiUsua = '"
  loc_B41E47: ConcatVar var_1E4
  loc_B41E4B: ImpAdLdI4 MemVar_D9302C
  loc_B41E4E: CVarStr var_1F4
  loc_B41E51: ConcatVar var_204
  loc_B41E55: LitVarStr var_214, "', ModiFeho = now() WHERE CodiPaap = "
  loc_B41E5A: ConcatVar var_224
  loc_B41E5E: FLdI2 CodiPaap
  loc_B41E61: CVarI2 var_234
  loc_B41E64: ConcatVar var_244
  loc_B41E68: CStrVarVal var_248
  loc_B41E6C: Call EjecutarRsCls(from_stack_1v)
  loc_B41E71: FFreeStr var_108 = "": var_10C = "": var_150 = "": var_154 = "": var_248 = "": var_250 = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B41EBC: FFreeVar var_14C = "": var_164 = "": var_174 = "": var_194 = "": var_1B4 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_B41ED5: ExitProcHresult
End Sub

Public Sub Requery() '9E8334
  'Data Table: 40BEB0
  loc_9E8310: LitI4 -1
  loc_9E8315: FLdPr Me
  loc_9E8318: MemLdPr RsFrm
  loc_9E831B: Me.Requery from_stack_1
  loc_9E8320: LitVarStr var_94, "Primary"
  loc_9E8325: PopAdLdVar
  loc_9E8326: FLdPr Me
  loc_9E8329: LateIdCall
  loc_9E8331: ExitProcHresult
  loc_9E8332: ModI2
End Sub

Public Sub RedefineRS(sSelect) 'A5CEA4
  'Data Table: 40BEB0
  loc_A5CE40: ILdRf sSelect
  loc_A5CE43: FStStrCopy var_88
  loc_A5CE46: LitNothing
  loc_A5CE48: CastAd
  loc_A5CE4B: FStAdFuncNoPop
  loc_A5CE4E: FLdPr Me
  loc_A5CE51: MemStAd
  loc_A5CE55: FFree1Ad var_8C
  loc_A5CE58: New Recordset
  loc_A5CE5C: FStAdFuncNoPop
  loc_A5CE5F: FLdPr Me
  loc_A5CE62: MemStAd
  loc_A5CE66: FFree1Ad var_8C
  loc_A5CE69: LitI4 -1
  loc_A5CE6E: LitI4 3
  loc_A5CE73: LitI4 3
  loc_A5CE78: ImpAdLdI4 MemVar_D9301C
  loc_A5CE7B: CVarAd
  loc_A5CE7F: PopAdLdVar
  loc_A5CE80: ILdRf var_88
  loc_A5CE83: CVarStr var_9C
  loc_A5CE86: PopAdLdVar
  loc_A5CE87: FLdPr Me
  loc_A5CE8A: MemLdPr RsFrm
  loc_A5CE8D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CE92: LitVarStr var_9C, "Primary"
  loc_A5CE97: PopAdLdVar
  loc_A5CE98: FLdPr Me
  loc_A5CE9B: LateIdCall
  loc_A5CEA3: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A48578
  'Data Table: 40BEB0
  loc_A48524: ILdRf sSelect
  loc_A48527: FStStrCopy var_88
  loc_A4852A: LitNothing
  loc_A4852C: CastAd
  loc_A4852F: FStAdFuncNoPop
  loc_A48532: FLdPr Me
  loc_A48535: MemStAd
  loc_A48539: FFree1Ad var_8C
  loc_A4853C: New Recordset
  loc_A48540: FStAdFuncNoPop
  loc_A48543: FLdPr Me
  loc_A48546: MemStAd
  loc_A4854A: FFree1Ad var_8C
  loc_A4854D: LitI4 -1
  loc_A48552: LitI4 3
  loc_A48557: LitI4 3
  loc_A4855C: ImpAdLdI4 MemVar_D9301C
  loc_A4855F: CVarAd
  loc_A48563: PopAdLdVar
  loc_A48564: ILdRf var_88
  loc_A48567: CVarStr var_9C
  loc_A4856A: PopAdLdVar
  loc_A4856B: FLdPr Me
  loc_A4856E: MemLdPr RsCls
  loc_A48571: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A48576: ExitProcHresult
End Sub

Public Property Get DataSource() '9F95BC
  'Data Table: 40BEB0
  loc_9F9598: ZeroRetVal
  loc_9F959A: FLdRfVar var_8C
  loc_9F959D: FLdPr Me
  loc_9F95A0: MemLdPr RsFrm
  loc_9F95A3:  = Me.DataSource
  loc_9F95A8: ILdRf var_8C
  loc_9F95AB: CastAd
  loc_9F95AE: FStAdFunc var_88
  loc_9F95B1: FFree1Ad var_8C
  loc_9F95B4: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D0330
  'Data Table: 40BEB0
  loc_9D0314: FLdRfVar var_8C
  loc_9D0317: FLdPr Me
  loc_9D031A: MemLdPr RsFrm
  loc_9D031D:  = Me.EditMode
  loc_9D0322: ILdRf var_8C
  loc_9D0325: FStR4 var_88
  loc_9D0328: ExitProcCbHresult
End Sub

Public Property Get CodiPaap() 'A2D3A4
  'Data Table: 40BEB0
  loc_A2D360: FLdRfVar var_B0
  loc_A2D363: FLdRfVar var_A0
  loc_A2D366: LitVarStr var_9C, "CodiPaap"
  loc_A2D36B: PopAdLdVar
  loc_A2D36C: FLdRfVar var_8C
  loc_A2D36F: FLdPr Me
  loc_A2D372: MemLdPr RsFrm
  loc_A2D375:  = Me.Fields
  loc_A2D37A: FLdPr var_8C
  loc_A2D37D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D382: FLdPr var_A0
  loc_A2D385:  = Me.Value
  loc_A2D38A: FLdRfVar var_B0
  loc_A2D38D: CI2Var
  loc_A2D38E: FStI2 var_86
  loc_A2D391: FFreeAd var_8C = ""
  loc_A2D398: FFree1Var var_B0 = ""
  loc_A2D39B: ExitProcCbHresult
  loc_A2D3A1: CStrVar
End Sub

Public Property Let CodiPaap(vDato) '9D04AC
  'Data Table: 40BEB0
  loc_9D0490: FLdI2 vDato
  loc_9D0493: CVarI2 var_A4
  loc_9D0496: PopAdLdVar
  loc_9D0497: LitVarStr var_94, "CodiPaap"
  loc_9D049C: PopAdLdVar
  loc_9D049D: FLdPr Me
  loc_9D04A0: MemLdPr RsFrm
  loc_9D04A3: Me.Collect = from_stack_1
  loc_9D04A8: ExitProcHresult
End Sub

Public Property Get CamiPaap() 'A2CFA4
  'Data Table: 40BEB0
  loc_A2CF60: FLdRfVar var_B4
  loc_A2CF63: FLdRfVar var_A4
  loc_A2CF66: LitVarStr var_A0, "CamiPaap"
  loc_A2CF6B: PopAdLdVar
  loc_A2CF6C: FLdRfVar var_90
  loc_A2CF6F: FLdPr Me
  loc_A2CF72: MemLdPr RsFrm
  loc_A2CF75:  = Me.Fields
  loc_A2CF7A: FLdPr var_90
  loc_A2CF7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2CF82: FLdPr var_A4
  loc_A2CF85:  = Me.Value
  loc_A2CF8A: FLdRfVar var_B4
  loc_A2CF8D: CR4Var
  loc_A2CF8E: FStFPR8 var_8C
  loc_A2CF91: FFreeAd var_90 = ""
  loc_A2CF98: FFree1Var var_B4 = ""
  loc_A2CF9B: ExitProcCbHresult
End Sub

Public Property Let CamiPaap(vDato) '9D0628
  'Data Table: 40BEB0
  loc_9D060C: FLdFPR8 vDato
  loc_9D060F: CVarR8
  loc_9D0613: PopAdLdVar
  loc_9D0614: LitVarStr var_94, "CamiPaap"
  loc_9D0619: PopAdLdVar
  loc_9D061A: FLdPr Me
  loc_9D061D: MemLdPr RsFrm
  loc_9D0620: Me.Collect = from_stack_1
  loc_9D0625: ExitProcHresult
End Sub

Public Property Get CamaPaap() 'A2D024
  'Data Table: 40BEB0
  loc_A2CFE0: FLdRfVar var_B4
  loc_A2CFE3: FLdRfVar var_A4
  loc_A2CFE6: LitVarStr var_A0, "CamaPaap"
  loc_A2CFEB: PopAdLdVar
  loc_A2CFEC: FLdRfVar var_90
  loc_A2CFEF: FLdPr Me
  loc_A2CFF2: MemLdPr RsFrm
  loc_A2CFF5:  = Me.Fields
  loc_A2CFFA: FLdPr var_90
  loc_A2CFFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D002: FLdPr var_A4
  loc_A2D005:  = Me.Value
  loc_A2D00A: FLdRfVar var_B4
  loc_A2D00D: CR4Var
  loc_A2D00E: FStFPR8 var_8C
  loc_A2D011: FFreeAd var_90 = ""
  loc_A2D018: FFree1Var var_B4 = ""
  loc_A2D01B: ExitProcCbHresult
End Sub

Public Property Let CamaPaap(vDato) '9D0A04
  'Data Table: 40BEB0
  loc_9D09E8: FLdFPR8 vDato
  loc_9D09EB: CVarR8
  loc_9D09EF: PopAdLdVar
  loc_9D09F0: LitVarStr var_94, "CamaPaap"
  loc_9D09F5: PopAdLdVar
  loc_9D09F6: FLdPr Me
  loc_9D09F9: MemLdPr RsFrm
  loc_9D09FC: Me.Collect = from_stack_1
  loc_9D0A01: ExitProcHresult
End Sub

Public Property Get AplePaap() 'A32C24
  'Data Table: 40BEB0
  loc_A32BE0: FLdRfVar var_B4
  loc_A32BE3: FLdRfVar var_A4
  loc_A32BE6: LitVarStr var_A0, "AplePaap"
  loc_A32BEB: PopAdLdVar
  loc_A32BEC: FLdRfVar var_90
  loc_A32BEF: FLdPr Me
  loc_A32BF2: MemLdPr RsFrm
  loc_A32BF5:  = Me.Fields
  loc_A32BFA: FLdPr var_90
  loc_A32BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32C02: FLdPr var_A4
  loc_A32C05:  = Me.Value
  loc_A32C0A: FLdRfVar var_B4
  loc_A32C0D: CR4Var
  loc_A32C0E: FStFPR8 var_8C
  loc_A32C11: FFreeAd var_90 = ""
  loc_A32C18: FFree1Var var_B4 = ""
  loc_A32C1B: ExitProcCbHresult
End Sub

Public Property Let AplePaap(vDato) '9D0C18
  'Data Table: 40BEB0
  loc_9D0BFC: FLdFPR8 vDato
  loc_9D0BFF: CVarR8
  loc_9D0C03: PopAdLdVar
  loc_9D0C04: LitVarStr var_94, "AplePaap"
  loc_9D0C09: PopAdLdVar
  loc_9D0C0A: FLdPr Me
  loc_9D0C0D: MemLdPr RsFrm
  loc_9D0C10: Me.Collect = from_stack_1
  loc_9D0C15: ExitProcHresult
End Sub

Public Property Get DefiPaap() 'A2D424
  'Data Table: 40BEB0
  loc_A2D3E0: FLdRfVar var_B4
  loc_A2D3E3: FLdRfVar var_A4
  loc_A2D3E6: LitVarStr var_A0, "DefiPaap"
  loc_A2D3EB: PopAdLdVar
  loc_A2D3EC: FLdRfVar var_90
  loc_A2D3EF: FLdPr Me
  loc_A2D3F2: MemLdPr RsFrm
  loc_A2D3F5:  = Me.Fields
  loc_A2D3FA: FLdPr var_90
  loc_A2D3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D402: FLdPr var_A4
  loc_A2D405:  = Me.Value
  loc_A2D40A: FLdRfVar var_B4
  loc_A2D40D: CR4Var
  loc_A2D40E: FStFPR8 var_8C
  loc_A2D411: FFreeAd var_90 = ""
  loc_A2D418: FFree1Var var_B4 = ""
  loc_A2D41B: ExitProcCbHresult
End Sub

Public Property Get PeriPaap() 'A2D524
  'Data Table: 40BEB0
  loc_A2D4E0: FLdRfVar var_B0
  loc_A2D4E3: FLdRfVar var_A0
  loc_A2D4E6: LitVarStr var_9C, "PeriPaap"
  loc_A2D4EB: PopAdLdVar
  loc_A2D4EC: FLdRfVar var_8C
  loc_A2D4EF: FLdPr Me
  loc_A2D4F2: MemLdPr RsFrm
  loc_A2D4F5:  = Me.Fields
  loc_A2D4FA: FLdPr var_8C
  loc_A2D4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D502: FLdPr var_A0
  loc_A2D505:  = Me.Value
  loc_A2D50A: FLdRfVar var_B0
  loc_A2D50D: CI2Var
  loc_A2D50E: FStI2 var_86
  loc_A2D511: FFreeAd var_8C = ""
  loc_A2D518: FFree1Var var_B0 = ""
  loc_A2D51B: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiPaap) 'A32B24
  'Data Table: 40BEB0
  loc_A32AE0: ZeroRetVal
  loc_A32AE2: LitStr "SELECT CodiPaap FROM paraapre WHERE CodiPaap = "
  loc_A32AE5: FLdI2 CodiPaap
  loc_A32AE8: CStrUI1
  loc_A32AEA: FStStrNoPop var_8C
  loc_A32AED: ConcatStr
  loc_A32AEE: FStStrNoPop var_90
  loc_A32AF1: Call EjecutarRsCls(from_stack_1v)
  loc_A32AF6: FFreeStr var_8C = ""
  loc_A32AFD: FLdRfVar ValidaClave
  loc_A32B00: FLdPr Me
  loc_A32B03: MemLdPr RsCls
  loc_A32B06:  = Me.RecordCount
  loc_A32B0B: ILdRf ValidaClave
  loc_A32B0E: LitI4 0
  loc_A32B13: GtI4
  loc_A32B14: BranchF loc_A32B1D
  loc_A32B17: LitStr "EL CODIGO del PARAMETRO DE APREMIO YA EXISTE, verifique..."
  loc_A32B1A: FStStrCopy var_88
  loc_A32B1D: ExitProcCbHresult
  loc_A32B23: ExitProcR4
End Function

Public Sub Encontrar(iPeriInfo, sCodiPart) '9B0B0C
  'Data Table: 40BEB0
  loc_9B0B04: FDupVar
  loc_9B0B0A: ExitProcHresult
End Sub

Private Function Proc_4_36_9F9338() '9F9338
  'Data Table: 40BEB0
  loc_9F9314: LitStr "Primary"
  loc_9F9317: FLdPr Me
  loc_9F931A: LateIdLdVar var_94 DispID_4 0
  loc_9F9321: CastAdVar Me
  loc_9F9325: FStAdFunc var_98
  loc_9F9328: FLdPr var_98
  loc_9F9330: FFree1Ad var_98
  loc_9F9333: FFree1Var var_94 = ""
  loc_9F9336: ExitProcHresult
End Function

Private Function Proc_4_37_9DE48C(arg_C) '9DE48C
  'Data Table: 40BEB0
  loc_9DE470: ILdI4 arg_C
  loc_9DE473: FStStrCopy var_88
  loc_9DE476: ILdRf var_88
  loc_9DE479: LitStr "Primary"
  loc_9DE47C: EqStr
  loc_9DE47E: BranchF loc_9DE48B
  loc_9DE481: FLdPr Me
  loc_9DE484: MemLdStr RsFrm
  loc_9DE487: IStAd
  loc_9DE48B: ExitProcHresult
End Function
